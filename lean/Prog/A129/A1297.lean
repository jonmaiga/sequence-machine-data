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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C047
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A129701: Difference between successive primes cubed: a(n) = prime(n+1)^3 - prime(n)^3.

The programs for A129701, the canonical program `A129701.P1653237727856646442` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129701 has offset 1).

The definition of A129701 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+2)^3-A000040(n+1)^3` (program `A129701.P1653237727856646442`, by `A129701.P1653237727856646442.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129701.P1906448276996329677

`A030078(n+2)-A030078(n+1)`
-/

namespace A129701.P1906448276996329677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 2) - A030078 (n + 1)

end

end A129701.P1906448276996329677

namespace A129701

/-- `A030078(n+2)-A030078(n+1)` -/
def P1906448276996329677.Spec : Prop :=
  ∀ n, P1906448276996329677.a n = A129701 (n + 1)

end A129701

/-! ## A129701.P1653237727856646442

`A000040(n+2)^3-A000040(n+1)^3`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A129701

/-- `A000040(n+2)^3-A000040(n+1)^3` -/
def P1653237727856646442.Spec : Prop :=
  ∀ n, P1653237727856646442.a n = A129701 (n + 1)

theorem P1653237727856646442.correct : P1653237727856646442.Spec := by
  intro n
  simp only [A129701, Nat.add_sub_cancel]

end A129701

/-! ## A129701.P14600710001714956661

`A133534(n+1)-A172190(n+1)`
-/

namespace A129701.P14600710001714956661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133534 (n + 1) - A172190 (n + 1)

end

end A129701.P14600710001714956661

namespace A129701

/-- `A133534(n+1)-A172190(n+1)` -/
def P14600710001714956661.Spec : Prop :=
  ∀ n, P14600710001714956661.a n = A129701 (n + 1)

theorem P14600710001714956661.correct : P14600710001714956661.Spec := by
  intro n
  simp only [A129701, Nat.add_sub_cancel, A129701.P14600710001714956661.a, A129701.P1653237727856646442.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A133534, A133534.P8927698302002784896.a, A172190, A172190.P9019848423872375971.a, A030078, A030078.P13819432151207990454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129701

/-! ## A129701.P12740037761554883296

`Δ[A030078(n+1)]`
-/

namespace A129701.P12740037761554883296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129701.P12740037761554883296

namespace A129701

/-- `Δ[A030078(n+1)]` -/
def P12740037761554883296.Spec : Prop :=
  ∀ n, P12740037761554883296.a n = A129701 (n + 1)

theorem P12740037761554883296.correct : P12740037761554883296.Spec := by
  intro n
  simp only [A129701, Nat.add_sub_cancel, A129701.P12740037761554883296.f1, A129701.P12740037761554883296.a, A129701.P1653237727856646442.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030078, A030078.P13819432151207990454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129701

/-! ## A129701.P9429000714699812853

`Δ[A153481(n+1)]`
-/

namespace A129701.P9429000714699812853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129701.P9429000714699812853

namespace A129701

/-- `Δ[A153481(n+1)]` -/
def P9429000714699812853.Spec : Prop :=
  ∀ n, P9429000714699812853.a n = A129701 (n + 1)

theorem P9429000714699812853.correct : P9429000714699812853.Spec := by
  intro n
  simp only [A129701, Nat.add_sub_cancel, A129701.P9429000714699812853.f1, A129701.P9429000714699812853.a, A129701.P1653237727856646442.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A153481, A153481.P8415490273972627534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129701

/-! ## A129701.P855511352935229989

`Δ[abs(Δ[A242188(n)])]`
-/

namespace A129701.P855511352935229989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242188 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129701.P855511352935229989

namespace A129701

/-- `Δ[abs(Δ[A242188(n)])]` -/
def P855511352935229989.Spec : Prop :=
  ∀ n, P855511352935229989.a n = A129701 (n + 1)

end A129701

/-! ## A129701.P9495060319791907646

`Δ[sqrt(A030516(n+1))]`
-/

namespace A129701.P9495060319791907646
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030516 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129701.P9495060319791907646

namespace A129701

/-- `Δ[sqrt(A030516(n+1))]` -/
def P9495060319791907646.Spec : Prop :=
  ∀ n, P9495060319791907646.a n = (A129701 (n + 1) : ℝ)

end A129701

/-! ## A129701.P16932078785317077013

`Δ[A172190(n+1)/2]`
-/

namespace A129701.P16932078785317077013
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172190 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129701.P16932078785317077013

namespace A129701

/-- `Δ[A172190(n+1)/2]` -/
def P16932078785317077013.Spec : Prop :=
  ∀ n, P16932078785317077013.a n = (A129701 (n + 1) : ℚ)

theorem P16932078785317077013.correct : P16932078785317077013.Spec := by
  intro n
  simp only [A129701, Nat.add_sub_cancel, A129701.P16932078785317077013.f1, A129701.P16932078785317077013.a, A129701.P1653237727856646442.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A172190, A172190.P9019848423872375971.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129701

/-! ## A129701.P14672507728860104588

`Δ[A000040(n+1)^3]`
-/

namespace A129701.P14672507728860104588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129701.P14672507728860104588

namespace A129701

/-- `Δ[A000040(n+1)^3]` -/
def P14672507728860104588.Spec : Prop :=
  ∀ n, P14672507728860104588.a n = A129701 (n + 1)

theorem P14672507728860104588.correct : P14672507728860104588.Spec := by
  intro n
  simp only [A129701, Nat.add_sub_cancel, A129701.P14672507728860104588.f1, A129701.P14672507728860104588.a, A129701.P1653237727856646442.a, SequenceMachineLib.memo_apply]

end A129701

/-! ## A129701.P7611228197794885977

`A153481(n+2)-A153481(n+1)`
-/

namespace A129701.P7611228197794885977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153481 (n + 2) - A153481 (n + 1)

end

end A129701.P7611228197794885977

namespace A129701

/-- `A153481(n+2)-A153481(n+1)` -/
def P7611228197794885977.Spec : Prop :=
  ∀ n, P7611228197794885977.a n = A129701 (n + 1)

theorem P7611228197794885977.correct : P7611228197794885977.Spec := by
  intro n
  simp only [A129701, Nat.add_sub_cancel, A129701.P7611228197794885977.a, A129701.P1653237727856646442.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A153481, A153481.P8415490273972627534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129701

/-! ## A129701.P5354935597675608736

`Δ[Δ[A007504(n)]*A001248(n+1)]`
-/

namespace A129701.P5354935597675608736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129701.P5354935597675608736

namespace A129701

/-- `Δ[Δ[A007504(n)]*A001248(n+1)]` -/
def P5354935597675608736.Spec : Prop :=
  ∀ n, P5354935597675608736.a n = A129701 (n + 1)

end A129701

/-! ## A129701.P4128397244655992258

`Δ[A000040(n+1)*A001248(n+1)]`
-/

namespace A129701.P4128397244655992258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129701.P4128397244655992258

namespace A129701

/-- `Δ[A000040(n+1)*A001248(n+1)]` -/
def P4128397244655992258.Spec : Prop :=
  ∀ n, P4128397244655992258.a n = A129701 (n + 1)

theorem P4128397244655992258.correct : P4128397244655992258.Spec := by
  intro n
  simp only [A129701, Nat.add_sub_cancel, A129701.P4128397244655992258.f1, A129701.P4128397244655992258.a, A129701.P1653237727856646442.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129701

/-! ## A129701.P501141227515477936

`(A048851(n+2)+A006094(n+1))*A001223(n+1)`
-/

namespace A129701.P501141227515477936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048851 (n + 2) + A006094 (n + 1)) * A001223 (n + 1)

end

end A129701.P501141227515477936

namespace A129701

/-- `(A048851(n+2)+A006094(n+1))*A001223(n+1)` -/
def P501141227515477936.Spec : Prop :=
  ∀ n, P501141227515477936.a n = A129701 (n + 1)

end A129701

/-! ## A129701.P4648479236902647276

`Δ[A008578(n+2)^3]`
-/

namespace A129701.P4648479236902647276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129701.P4648479236902647276

namespace A129701

/-- `Δ[A008578(n+2)^3]` -/
def P4648479236902647276.Spec : Prop :=
  ∀ n, P4648479236902647276.a n = A129701 (n + 1)

end A129701

/-! ## A129701.P12669637512013914124

`Δ[Δ[A024525(n)]*A000040(n+1)]`
-/

namespace A129701.P12669637512013914124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024525 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129701.P12669637512013914124

namespace A129701

/-- `Δ[Δ[A024525(n)]*A000040(n+1)]` -/
def P12669637512013914124.Spec : Prop :=
  ∀ n, P12669637512013914124.a n = A129701 (n + 1)

end A129701

/-! ## A129701.P15316510330824213840

`Δ[A158611(n+3)^3]`
-/

namespace A129701.P15316510330824213840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 3) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129701.P15316510330824213840

namespace A129701

/-- `Δ[A158611(n+3)^3]` -/
def P15316510330824213840.Spec : Prop :=
  ∀ n, P15316510330824213840.a n = A129701 (n + 1)

end A129701

/-! ## A129701.P1572958990478781135

`Δ[record[A006530(n+2)^3]]`
-/

namespace A129701.P1572958990478781135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129701.P1572958990478781135

namespace A129701

/-- `Δ[record[A006530(n+2)^3]]` -/
def P1572958990478781135.Spec : Prop :=
  ∀ n, P1572958990478781135.a n = A129701 (n + 1)

end A129701

/-! ## A129701.P16411402337754355049

`Δ[record[A020639(n+2)^3]]`
-/

namespace A129701.P16411402337754355049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129701.P16411402337754355049

namespace A129701

/-- `Δ[record[A020639(n+2)^3]]` -/
def P16411402337754355049.Spec : Prop :=
  ∀ n, P16411402337754355049.a n = A129701 (n + 1)

end A129701

/-! ## A129701.P12426141620442434213

`Δ[A033477(3*n)]`
-/

namespace A129701.P12426141620442434213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033477 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129701.P12426141620442434213

namespace A129701

/-- `Δ[A033477(3*n)]` -/
def P12426141620442434213.Spec : Prop :=
  ∀ n, P12426141620442434213.a n = A129701 (n + 1)

end A129701

/-! ## A129701.P5073585487129470390

`Δ[record[A005064(n+2)]]`
-/

namespace A129701.P5073585487129470390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129701.P5073585487129470390

namespace A129701

/-- `Δ[record[A005064(n+2)]]` -/
def P5073585487129470390.Spec : Prop :=
  ∀ n, P5073585487129470390.a n = A129701 (n + 1)

end A129701

/-!
# A129703: Number of different walks generated by n steps that can only go in {east, southeast, southwest} directions on the 300-degree wedge in a 60-degree equilateral triangular lattice.

The programs for A129703, the canonical program `A129703.P4207746341817496301` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129703 has offset 0).

The definition of A129703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129703.P8302495041166654359

`∑[A025566(n+1)+char[1]]`
-/

namespace A129703.P8302495041166654359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129703.P8302495041166654359

namespace A129703

/-- `∑[A025566(n+1)+char[1]]` -/
def P8302495041166654359.Spec : Prop :=
  ∀ n, P8302495041166654359.a n = A129703 n

end A129703

/-! ## A129703.P15949665641434287694

`A005773(n+1)+ceil(abs(sin(n)))`
-/

namespace A129703.P15949665641434287694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) + ⌈|Real.sin (n : ℝ)|⌉

end

end A129703.P15949665641434287694

namespace A129703

/-- `A005773(n+1)+ceil(abs(sin(n)))` -/
def P15949665641434287694.Spec : Prop :=
  ∀ n, P15949665641434287694.a n = A129703 n

end A129703

/-! ## A129703.P11977568204239929692

`Δ[A307789(n+1)]+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A129703.P11977568204239929692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1)

end

end A129703.P11977568204239929692

namespace A129703

/-- `Δ[A307789(n+1)]+a(n-1)` -/
def P11977568204239929692.Spec : Prop :=
  ∀ n, P11977568204239929692.a n = A129703 n

end A129703

/-! ## A129703.P4207746341817496301

`A057427(n)+A005773(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A129703

/-- `A057427(n)+A005773(n+1)` -/
def P4207746341817496301.Spec : Prop :=
  ∀ n, P4207746341817496301.a n = A129703 n

theorem P4207746341817496301.correct : P4207746341817496301.Spec := by
  intro n
  simp only [A129703]

end A129703

/-! ## A129703.P2499363807183697475

`A005773(n+1)-A057428(n)`
-/

namespace A129703.P2499363807183697475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) - A057428 n

end

end A129703.P2499363807183697475

namespace A129703

/-- `A005773(n+1)-A057428(n)` -/
def P2499363807183697475.Spec : Prop :=
  ∀ n, P2499363807183697475.a n = A129703 n

end A129703

/-! ## A129703.P13035537816598292041

`Δ[A005773(n)]+∑[A025566(n)]`
-/

namespace A129703.P13035537816598292041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A129703.P13035537816598292041

namespace A129703

/-- `Δ[A005773(n)]+∑[A025566(n)]` -/
def P13035537816598292041.Spec : Prop :=
  ∀ n, P13035537816598292041.a n = A129703 n

end A129703

/-! ## A129703.P2368394450477944994

`A005773(n+1)+A011630(n)²`
-/

namespace A129703.P2368394450477944994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) + A011630 n ^ 2

end

end A129703.P2368394450477944994

namespace A129703

/-- `A005773(n+1)+A011630(n)²` -/
def P2368394450477944994.Spec : Prop :=
  ∀ n, P2368394450477944994.a n = A129703 n

end A129703

/-! ## A129703.P1405901249396179168

`A005773(n+1)+A062157(n)²`
-/

namespace A129703.P1405901249396179168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) + A062157 n ^ 2

end

end A129703.P1405901249396179168

namespace A129703

/-- `A005773(n+1)+A062157(n)²` -/
def P1405901249396179168.Spec : Prop :=
  ∀ n, P1405901249396179168.a n = A129703 n

end A129703

/-! ## A129703.P9899335379545302009

`A057427(n)+∑[A025566(n+1)]`
-/

namespace A129703.P9899335379545302009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129703.P9899335379545302009

namespace A129703

/-- `A057427(n)+∑[A025566(n+1)]` -/
def P9899335379545302009.Spec : Prop :=
  ∀ n, P9899335379545302009.a n = A129703 n

end A129703

/-! ## A129703.P1187746111591490524

`A005773(n+1)+1-A000007(n)`
-/

namespace A129703.P1187746111591490524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) + (1 - A000007 n)

end

end A129703.P1187746111591490524

namespace A129703

/-- `A005773(n+1)+1-A000007(n)` -/
def P1187746111591490524.Spec : Prop :=
  ∀ n, P1187746111591490524.a n = A129703 n

end A129703

/-! ## A129703.P5350615628797020509

`A005773(n+1)-A062157(2*n)`
-/

namespace A129703.P5350615628797020509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) - A062157 (2 * n)

end

end A129703.P5350615628797020509

namespace A129703

/-- `A005773(n+1)-A062157(2*n)` -/
def P5350615628797020509.Spec : Prop :=
  ∀ n, P5350615628797020509.a n = A129703 n

end A129703

/-! ## A129703.P4255230021707567980

`A005773(n+1)+a(A000038(n))` with `a(0)=1`
-/

namespace A129703.P4255230021707567980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005773 (n + 1) + a (A000038 n).toNat

end

end A129703.P4255230021707567980

namespace A129703

/-- `A005773(n+1)+a(A000038(n))` -/
def P4255230021707567980.Spec : Prop :=
  ∀ n, P4255230021707567980.a n = A129703 n

end A129703

/-! ## A129703.P8115842129732757059

`A036453(n+1)+A005773(n+1)-1`
-/

namespace A129703.P8115842129732757059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) + (A005773 (n + 1) - 1)

end

end A129703.P8115842129732757059

namespace A129703

/-- `A036453(n+1)+A005773(n+1)-1` -/
def P8115842129732757059.Spec : Prop :=
  ∀ n, P8115842129732757059.a n = A129703 n

end A129703

/-! ## A129703.P11541068125998254616

`A280560(2*n)+A005773(n+1)-1`
-/

namespace A129703.P11541068125998254616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (2 * n) + (A005773 (n + 1) - 1)

end

end A129703.P11541068125998254616

namespace A129703

/-- `A280560(2*n)+A005773(n+1)-1` -/
def P11541068125998254616.Spec : Prop :=
  ∀ n, P11541068125998254616.a n = A129703 n

end A129703

/-! ## A129703.P4733097393905477948

`A105812(n+1)²+∑[A025566(n+1)]`
-/

namespace A129703.P4733097393905477948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (n + 1) ^ 2 + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129703.P4733097393905477948

namespace A129703

/-- `A105812(n+1)²+∑[A025566(n+1)]` -/
def P4733097393905477948.Spec : Prop :=
  ∀ n, P4733097393905477948.a n = A129703 n

end A129703

/-! ## A129703.P10587569675283457592

`A105812(2*n+1)+∑[A025566(n+1)]`
-/

namespace A129703.P10587569675283457592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129703.P10587569675283457592

namespace A129703

/-- `A105812(2*n+1)+∑[A025566(n+1)]` -/
def P10587569675283457592.Spec : Prop :=
  ∀ n, P10587569675283457592.a n = A129703 n

end A129703

/-! ## A129703.P15653654728125969519

`A103457(n)-A330796(n)`
-/

namespace A129703.P15653654728125969519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103457 n - A330796 n

end

end A129703.P15653654728125969519

namespace A129703

/-- `A103457(n)-A330796(n)` -/
def P15653654728125969519.Spec : Prop :=
  ∀ n, P15653654728125969519.a n = A129703 n

end A129703

/-! ## A129703.P5507934801365337287

`A005773(n+1)+A025247(n+2)/A152225(n)`
-/

namespace A129703.P5507934801365337287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005773 (n + 1) : ℚ) + (A025247 (n + 2) : ℚ) / (A152225 n : ℚ)

end

end A129703.P5507934801365337287

namespace A129703

/-- `A005773(n+1)+A025247(n+2)/A152225(n)` -/
def P5507934801365337287.Spec : Prop :=
  ∀ n, P5507934801365337287.a n = (A129703 n : ℚ)

end A129703

/-! ## A129703.P12162830465937705858

`A005773(n+1)+A025265(n+2)/A152225(n)`
-/

namespace A129703.P12162830465937705858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005773 (n + 1) : ℚ) + (A025265 (n + 2) : ℚ) / (A152225 n : ℚ)

end

end A129703.P12162830465937705858

namespace A129703

/-- `A005773(n+1)+A025265(n+2)/A152225(n)` -/
def P12162830465937705858.Spec : Prop :=
  ∀ n, P12162830465937705858.a n = (A129703 n : ℚ)

end A129703

/-!
# A129704: Expansion of 1/(x^5 - 2*x^4 + x^3 - 2*x^2 + x - 1).

The programs for A129704, the canonical program `A129704.P12613283919414509364` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129704 has offset 0).

The definition of A129704 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(-1/(1-x+2x^2-x^3+2x^4-x^5))` (program `A129704.P12613283919414509364`, by `A129704.P12613283919414509364.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129704.P12613283919414509364

`ogf(-1/(1-x+2x^2-x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129704

/-- `ogf(-1/(1-x+2x^2-x^3+2x^4-x^5))` -/
def P12613283919414509364.Spec : Prop :=
  ∀ n, P12613283919414509364.a n = A129704 n

theorem P12613283919414509364.correct : P12613283919414509364.Spec := by
  intro n
  simp only [A129704]

end A129704

/-! ## A129704.P9024700291421447973

`Δ[A122582(n+5)/2]`
-/

namespace A129704.P9024700291421447973
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122582 (n + 5) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129704.P9024700291421447973

namespace A129704

/-- `Δ[A122582(n+5)/2]` -/
def P9024700291421447973.Spec : Prop :=
  ∀ n, P9024700291421447973.a n = (A129704 n : ℚ)

end A129704

/-! ## A129704.P1658281985170232901

`(A122582(n+6)-A122582(n+5))/2`
-/

namespace A129704.P1658281985170232901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122582 (n + 6) - A122582 (n + 5) : ℚ) / 2

end

end A129704.P1658281985170232901

namespace A129704

/-- `(A122582(n+6)-A122582(n+5))/2` -/
def P1658281985170232901.Spec : Prop :=
  ∀ n, P1658281985170232901.a n = (A129704 n : ℚ)

end A129704

/-!
# A129705: Triangle T(n,m) = A000071(n+2)-m*(m+1)/2 read by rows.

The programs for A129705, the canonical program `A129705.P9060228378975808743` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129705 has offset 0).

The definition of A129705 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129705.P9060228378975808743

`A000071(row(n)+2)-col(n)*(col(n)+1)/2`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A129705

/-- `A000071(row(n)+2)-col(n)*(col(n)+1)/2` -/
def P9060228378975808743.Spec : Prop :=
  ∀ n, P9060228378975808743.a n = (A129705 n : ℚ)

end A129705

/-! ## A129705.P12170431542286856736

`A108035(n+1)-(A112367(n)+1)`
-/

namespace A129705.P12170431542286856736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108035 (n + 1) - (A112367 n + 1)

end

end A129705.P12170431542286856736

namespace A129705

/-- `A108035(n+1)-(A112367(n)+1)` -/
def P12170431542286856736.Spec : Prop :=
  ∀ n, P12170431542286856736.a n = A129705 n

end A129705

/-! ## A129705.P9854790085846614630

`A108035(n+1)-(C(A002262(n)+1, 2)+1)`
-/

namespace A129705.P9854790085846614630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108035 (n + 1) - (Nat.choose (A002262 n + 1).toNat 2 + 1 : ℤ)

end

end A129705.P9854790085846614630

namespace A129705

/-- `A108035(n+1)-(C(A002262(n)+1, 2)+1)` -/
def P9854790085846614630.Spec : Prop :=
  ∀ n, P9854790085846614630.a n = A129705 n

end A129705

/-! ## A129705.P16334942571896505273

`A108035(n+1)-A000124(A002262(n))`
-/

namespace A129705.P16334942571896505273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108035 (n + 1) - A000124 (A002262 n).toNat

end

end A129705.P16334942571896505273

namespace A129705

/-- `A108035(n+1)-A000124(A002262(n))` -/
def P16334942571896505273.Spec : Prop :=
  ∀ n, P16334942571896505273.a n = A129705 n

end A129705

/-! ## A129705.P13136787651077321449

`A000071(A003057(n+2))-A112367(n)`
-/

namespace A129705.P13136787651077321449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A003057 (n + 2)).toNat - A112367 n

end

end A129705.P13136787651077321449

namespace A129705

/-- `A000071(A003057(n+2))-A112367(n)` -/
def P13136787651077321449.Spec : Prop :=
  ∀ n, P13136787651077321449.a n = A129705 n

end A129705

/-! ## A129705.P17535264143395904460

`A048680(A137688(n))-A000124(A002262(n))`
-/

namespace A129705.P17535264143395904460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A137688 n).toNat - A000124 (A002262 n).toNat

end

end A129705.P17535264143395904460

namespace A129705

/-- `A048680(A137688(n))-A000124(A002262(n))` -/
def P17535264143395904460.Spec : Prop :=
  ∀ n, P17535264143395904460.a n = A129705 n

end A129705

/-! ## A129705.P3322683483889250307

`A131410(A014132(n+1))-A000124(A002262(n))`
-/

namespace A129705.P3322683483889250307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131410 (A014132 (n + 1)).toNat - A000124 (A002262 n).toNat

end

end A129705.P3322683483889250307

namespace A129705

/-- `A131410(A014132(n+1))-A000124(A002262(n))` -/
def P3322683483889250307.Spec : Prop :=
  ∀ n, P3322683483889250307.a n = A129705 n

end A129705

/-! ## A129705.P12039138908387597463

`A092565(A093995(n+1))-A000124(A002262(n))`
-/

namespace A129705.P12039138908387597463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092565 (A093995 (n + 1)).toNat - A000124 (A002262 n).toNat

end

end A129705.P12039138908387597463

namespace A129705

/-- `A092565(A093995(n+1))-A000124(A002262(n))` -/
def P12039138908387597463.Spec : Prop :=
  ∀ n, P12039138908387597463.a n = A129705 n

end A129705

/-! ## A129705.P14500587523721737480

`A000045(A003056(n)+2)-A000124(A002262(n))`
-/

namespace A129705.P14500587523721737480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A003056 n + 2).toNat - A000124 (A002262 n).toNat

end

end A129705.P14500587523721737480

namespace A129705

/-- `A000045(A003056(n)+2)-A000124(A002262(n))` -/
def P14500587523721737480.Spec : Prop :=
  ∀ n, P14500587523721737480.a n = A129705 n

end A129705

/-! ## A129705.P826451724131185221

`A000045(A003057(n+2))-A000124(A002262(n))`
-/

namespace A129705.P826451724131185221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A003057 (n + 2)).toNat - A000124 (A002262 n).toNat

end

end A129705.P826451724131185221

namespace A129705

/-- `A000045(A003057(n+2))-A000124(A002262(n))` -/
def P826451724131185221.Spec : Prop :=
  ∀ n, P826451724131185221.a n = A129705 n

end A129705

/-!
# A129706: Triangle read by rows: T(n,k) is the number of Fibonacci binary words of length n and having k inversions (n>=0, 0<=k<=floor(n(n+1)/6)). A Fibonacci binary word is a binary word having no 00 subword.

The programs for A129706, there is no canonical definition to state claims against.
-/

/-! ## A129706.P15681723786071315554

`A340675(A218017(n)+A019430(n))`
-/

namespace A129706.P15681723786071315554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340675 (A218017 n + A019430 n).toNat

end

end A129706.P15681723786071315554

/-! ## A129706.P17674416913135962752

`A204456(A067127(n+1)+1)`
-/

namespace A129706.P17674416913135962752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204456 (A067127 (n + 1) + 1).toNat

end

end A129706.P17674416913135962752

/-! ## A129706.P8385879584713228260

`A035218(A002024((n+2)^3))`
-/

namespace A129706.P8385879584713228260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (A002024 ((n + 2) ^ 3)).toNat

end

end A129706.P8385879584713228260

/-! ## A129706.P15335484285368824103

`A056624(A006257(A163628(n+1))²)`
-/

namespace A129706.P15335484285368824103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056624 (A006257 (A163628 (n + 1)).toNat ^ 2).toNat

end

end A129706.P15335484285368824103

/-! ## A129706.P14078473283091116378

`A204456(A249400(n+1)+A249368(n+1))`
-/

namespace A129706.P14078473283091116378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204456 (A249400 (n + 1) + A249368 (n + 1)).toNat

end

end A129706.P14078473283091116378

/-!
# A129707: Number of inversions in all Fibonacci binary words of length n.

The programs for A129707, the canonical program `A129707.P9133317447932434858` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129707 has offset 0).

The definition of A129707 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129707.P9133317447932434858

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)+A000045(n)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A129707

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)+A000045(n)` -/
def P9133317447932434858.Spec : Prop :=
  ∀ n, P9133317447932434858.a n = A129707 n

theorem P9133317447932434858.correct : P9133317447932434858.Spec := by
  intro n
  simp only [A129707]

end A129707

/-! ## A129707.P6133548190219452692

`A245961(n+1)+A224227(n+1)`
-/

namespace A129707.P6133548190219452692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245961 (n + 1) + A224227 (n + 1)

end

end A129707.P6133548190219452692

namespace A129707

/-- `A245961(n+1)+A224227(n+1)` -/
def P6133548190219452692.Spec : Prop :=
  ∀ n, P6133548190219452692.a n = A129707 n

end A129707

/-! ## A129707.P6691558522275818141

`A010049(n+1)+A055243(n+1)-A023610(n+1)`
-/

namespace A129707.P6691558522275818141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 1) + (A055243 (n + 1) - A023610 (n + 1))

end

end A129707.P6691558522275818141

namespace A129707

/-- `A010049(n+1)+A055243(n+1)-A023610(n+1)` -/
def P6691558522275818141.Spec : Prop :=
  ∀ n, P6691558522275818141.a n = A129707 n

end A129707

/-! ## A129707.P17499667483259439216

`A002940(n+1)+A054455(n+1)-A002940(n+2)`
-/

namespace A129707.P17499667483259439216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002940 (n + 1) + (A054455 (n + 1) - A002940 (n + 2))

end

end A129707.P17499667483259439216

namespace A129707

/-- `A002940(n+1)+A054455(n+1)-A002940(n+2)` -/
def P17499667483259439216.Spec : Prop :=
  ∀ n, P17499667483259439216.a n = A129707 n

end A129707

/-! ## A129707.P14343516953048597854

`A370304(n)-A055243(n)`
-/

namespace A129707.P14343516953048597854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370304 n - A055243 n

end

end A129707.P14343516953048597854

namespace A129707

/-- `A370304(n)-A055243(n)` -/
def P14343516953048597854.Spec : Prop :=
  ∀ n, P14343516953048597854.a n = A129707 n

end A129707

/-! ## A129707.P17723765294927766351

`∑[A055243(n)-A010049(n)]-A055243(n)`
-/

namespace A129707.P17723765294927766351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055243 n - A010049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A055243 n

end

end A129707.P17723765294927766351

namespace A129707

/-- `∑[A055243(n)-A010049(n)]-A055243(n)` -/
def P17723765294927766351.Spec : Prop :=
  ∀ n, P17723765294927766351.a n = A129707 n

end A129707

/-! ## A129707.P15932105344877929141

`A001628(n)-(A055243(n)+A001629(n+1))`
-/

namespace A129707.P15932105344877929141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 n - (A055243 n + A001629 (n + 1))

end

end A129707.P15932105344877929141

namespace A129707

/-- `A001628(n)-(A055243(n)+A001629(n+1))` -/
def P15932105344877929141.Spec : Prop :=
  ∀ n, P15932105344877929141.a n = A129707 n

end A129707

/-! ## A129707.P7919361230978326765

`A152881(n+2)-A261055(n)`
-/

namespace A129707.P7919361230978326765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152881 (n + 2) - A261055 n

end

end A129707.P7919361230978326765

namespace A129707

/-- `A152881(n+2)-A261055(n)` -/
def P7919361230978326765.Spec : Prop :=
  ∀ n, P7919361230978326765.a n = A129707 n

end A129707

/-! ## A129707.P7491692524733916408

`A055830(∑[n+1]+2)%(2^(n+1))`
-/

namespace A129707.P7491692524733916408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055830 (∑ j ∈ Finset.range (n + 1), f1 j + 2)) (2 ^ (n + 1) : ℤ)

end

end A129707.P7491692524733916408

namespace A129707

/-- `A055830(∑[n+1]+2)%(2^(n+1))` -/
def P7491692524733916408.Spec : Prop :=
  ∀ n, P7491692524733916408.a n = A129707 n

end A129707

/-! ## A129707.P10834014375009103646

`A055830(A253145(n)+2)`
-/

namespace A129707.P10834014375009103646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 (A253145 n + 2).toNat

end

end A129707.P10834014375009103646

namespace A129707

/-- `A055830(A253145(n)+2)` -/
def P10834014375009103646.Spec : Prop :=
  ∀ n, P10834014375009103646.a n = A129707 n

end A129707

/-! ## A129707.P17520744613061697387

`A055830(A134869(n+1)+1)`
-/

namespace A129707.P17520744613061697387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 (A134869 (n + 1) + 1).toNat

end

end A129707.P17520744613061697387

namespace A129707

/-- `A055830(A134869(n+1)+1)` -/
def P17520744613061697387.Spec : Prop :=
  ∀ n, P17520744613061697387.a n = A129707 n

end A129707

/-! ## A129707.P15314904064205866854

`A055830(A133263(n)+1+n)`
-/

namespace A129707.P15314904064205866854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 (A133263 n + 1 + (n : ℤ)).toNat

end

end A129707.P15314904064205866854

namespace A129707

/-- `A055830(A133263(n)+1+n)` -/
def P15314904064205866854.Spec : Prop :=
  ∀ n, P15314904064205866854.a n = A129707 n

end A129707

/-! ## A129707.P864532651220477981

`A055830(A133263(n)-xor(n, -1))`
-/

namespace A129707.P864532651220477981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 (A133263 n - Int.xor (n : ℤ) (-1)).toNat

end

end A129707.P864532651220477981

namespace A129707

/-- `A055830(A133263(n)-xor(n, -1))` -/
def P864532651220477981.Spec : Prop :=
  ∀ n, P864532651220477981.a n = A129707 n

end A129707

/-! ## A129707.P17714442130987915878

`A055830(∑[n+3]-A004277(n))`
-/

namespace A129707.P17714442130987915878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A004277 n).toNat

end

end A129707.P17714442130987915878

namespace A129707

/-- `A055830(∑[n+3]-A004277(n))` -/
def P17714442130987915878.Spec : Prop :=
  ∀ n, P17714442130987915878.a n = A129707 n

end A129707

/-! ## A129707.P16431561371804095692

`A055830(A036453(n+1)+∑[n+1])`
-/

namespace A129707.P16431561371804095692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 (A036453 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A129707.P16431561371804095692

namespace A129707

/-- `A055830(A036453(n+1)+∑[n+1])` -/
def P16431561371804095692.Spec : Prop :=
  ∀ n, P16431561371804095692.a n = A129707 n

end A129707

/-! ## A129707.P16257368476714905010

`A209599(∑[n+2]+3)`
-/

namespace A129707.P16257368476714905010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A129707.P16257368476714905010

namespace A129707

/-- `A209599(∑[n+2]+3)` -/
def P16257368476714905010.Spec : Prop :=
  ∀ n, P16257368476714905010.a n = A129707 n

end A129707

/-! ## A129707.P9046423223810061752

`A236076(∑[n+3])`
-/

namespace A129707.P9046423223810061752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236076 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129707.P9046423223810061752

namespace A129707

/-- `A236076(∑[n+3])` -/
def P9046423223810061752.Spec : Prop :=
  ∀ n, P9046423223810061752.a n = A129707 n

end A129707

/-!
# A129710: Triangle read by rows: T(n,k) is the number of Fibonacci binary words of length n and having k 01 subwords (0 <= k <= floor(n/2)). A Fibonacci binary word is a binary word having no 00 subword.

The programs for A129710, the canonical program `A129710.P7540357634890969964` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129710 has offset 0).

The definition of A129710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129710.P16316012317933185649

`3*A011973(n)-A034807(n)`
-/

namespace A129710.P16316012317933185649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A011973 n - A034807 n

end

end A129710.P16316012317933185649

namespace A129710

/-- `3*A011973(n)-A034807(n)` -/
def P16316012317933185649.Spec : Prop :=
  ∀ n, P16316012317933185649.a n = A129710 n

end A129710

/-! ## A129710.P11940574943303244273

`A103631(∑[A169695(n)])+A011973(n)`
-/

namespace A129710.P11940574943303244273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A011973 n

end

end A129710.P11940574943303244273

namespace A129710

/-- `A103631(∑[A169695(n)])+A011973(n)` -/
def P11940574943303244273.Spec : Prop :=
  ∀ n, P11940574943303244273.a n = A129710 n

end A129710

/-! ## A129710.P7540357634890969964

`A029653(A091018(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A129710

/-- `A029653(A091018(n))` -/
def P7540357634890969964.Spec : Prop :=
  ∀ n, P7540357634890969964.a n = A129710 n

theorem P7540357634890969964.correct : P7540357634890969964.Spec := by
  intro n
  simp only [A129710]

end A129710

/-! ## A129710.P12058890310024410172

`A029653(A056536(n+1)-1)`
-/

namespace A129710.P12058890310024410172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (A056536 (n + 1) - 1).toNat

end

end A129710.P12058890310024410172

namespace A129710

/-- `A029653(A056536(n+1)-1)` -/
def P12058890310024410172.Spec : Prop :=
  ∀ n, P12058890310024410172.a n = A129710 n

end A129710

/-! ## A129710.P5975297913163026859

`A034807(n)-A112467(A091018(n))`
-/

namespace A129710.P5975297913163026859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034807 n - A112467 (A091018 n).toNat

end

end A129710.P5975297913163026859

namespace A129710

/-- `A034807(n)-A112467(A091018(n))` -/
def P5975297913163026859.Spec : Prop :=
  ∀ n, P5975297913163026859.a n = A129710 n

end A129710

/-! ## A129710.P7813513069429556167

`A097805(A056536(n+1))+A011973(n)`
-/

namespace A129710.P7813513069429556167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A056536 (n + 1)).toNat + A011973 n

end

end A129710.P7813513069429556167

namespace A129710

/-- `A097805(A056536(n+1))+A011973(n)` -/
def P7813513069429556167.Spec : Prop :=
  ∀ n, P7813513069429556167.a n = A129710 n

end A129710

/-! ## A129710.P10014814025006030679

`A008486(A011973(n))-A034807(n)`
-/

namespace A129710.P10014814025006030679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A011973 n).toNat - A034807 n

end

end A129710.P10014814025006030679

namespace A129710

/-- `A008486(A011973(n))-A034807(n)` -/
def P10014814025006030679.Spec : Prop :=
  ∀ n, P10014814025006030679.a n = A129710 n

end A129710

/-!
# A129711: Triangle read by rows: T(n,k) is the number of Fibonacci binary words of length n and starting with exactly k 01's (0<=k<=floor(n/2)). A Fibonacci binary word is a binary word having no 00 subword.

The programs for A129711, there is no canonical definition to state claims against.
-/

/-! ## A129711.P12221968528177701858

`A062557(n)*A173284(n)`
-/

namespace A129711.P12221968528177701858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062557 n * A173284 n

end

end A129711.P12221968528177701858

/-! ## A129711.P16566403010061217433

`A000045(A348776(A122196(n+1)))`
-/

namespace A129711.P16566403010061217433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A348776 (A122196 (n + 1)).toNat).toNat

end

end A129711.P16566403010061217433

/-! ## A129711.P7980285672576286010

`A000045(A001222(A119440(n))+2)`
-/

namespace A129711.P7980285672576286010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001222 (A119440 n).toNat + 2).toNat

end

end A129711.P7980285672576286010

/-! ## A129711.P9723999802708478496

`A000045(A082375(n)+A062557(n))`
-/

namespace A129711.P9723999802708478496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A082375 n + A062557 n).toNat

end

end A129711.P9723999802708478496

/-! ## A129711.P1817816250568377550

`abs(A236191(A082375(n)+A062557(n)))`
-/

namespace A129711.P1817816250568377550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 (A082375 n + A062557 n).toNat|

end

end A129711.P1817816250568377550

/-! ## A129711.P16674272778427881419

`A000045(A122196(n+1))*A062557(n)`
-/

namespace A129711.P16674272778427881419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A122196 (n + 1)).toNat * A062557 n

end

end A129711.P16674272778427881419

/-! ## A129711.P7363502621113217797

`A000045(A082375(n)+Δ[A000037(n+1)])`
-/

namespace A129711.P7363502621113217797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A082375 n + (f1 (n + 1) - f1 n)).toNat

end

end A129711.P7363502621113217797

/-! ## A129711.P93041640486602911

`A000045(A122196(n+1)+Δ[A000267(n)])`
-/

namespace A129711.P93041640486602911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A122196 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A129711.P93041640486602911

/-! ## A129711.P10226258161840743076

`A000045(A082375(n)+Δ[A183299(n+1)])`
-/

namespace A129711.P10226258161840743076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A082375 n + (f1 (n + 1) - f1 n)).toNat

end

end A129711.P10226258161840743076

/-!
# A129712: Triangle read by rows: T(n,k) is the number of Fibonacci binary words of length n and starting with exactly k 10's (0<=k<=floor(n/2)). A Fibonacci binary word is a binary word having no 00 subword.

The programs for A129712, there is no canonical definition to state claims against.
-/

/-! ## A129712.P4162718344717889050

`A280913(gcd(A218491(n+1), A218529(n)))`
-/

namespace A129712.P4162718344717889050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280913 (Int.gcd (A218491 (n + 1)) (A218529 n))

end

end A129712.P4162718344717889050

/-! ## A129712.P12944656383552672462

`A331854(A055105(2*n+1))+A288318(A137502(n+1))`
-/

namespace A129712.P12944656383552672462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331854 (A055105 (2 * n + 1)).toNat + A288318 (A137502 (n + 1)).toNat

end

end A129712.P12944656383552672462

/-!
# A129713: Triangle read by rows: T(n,k) is the number of Fibonacci binary words of length n and starting with exactly k 1's (0<=k<=n). A Fibonacci binary word is a binary word having no 00 subword.

The programs for A129713, the canonical program `A129713.P11436903838473325982` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129713 has offset 0).

The definition of A129713 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007298, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A129713.P11436903838473325982

`A007298(n+4)-A007298(n+3)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A129713

/-- `A007298(n+4)-A007298(n+3)` -/
def P11436903838473325982.Spec : Prop :=
  ∀ n, P11436903838473325982.a n = A129713 n

theorem P11436903838473325982.correct : P11436903838473325982.Spec := by
  intro n
  simp only [A129713]

end A129713

/-! ## A129713.P12419460393584511305

`A324969(A004736(n+1))`
-/

namespace A129713.P12419460393584511305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (A004736 (n + 1)).toNat

end

end A129713.P12419460393584511305

namespace A129713

/-- `A324969(A004736(n+1))` -/
def P12419460393584511305.Spec : Prop :=
  ∀ n, P12419460393584511305.a n = A129713 n

end A129713

/-! ## A129713.P2373406428666806394

`A272912(A099375(n)+1)`
-/

namespace A129713.P2373406428666806394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272912 (A099375 n + 1).toNat

end

end A129713.P2373406428666806394

namespace A129713

/-- `A272912(A099375(n)+1)` -/
def P2373406428666806394.Spec : Prop :=
  ∀ n, P2373406428666806394.a n = A129713 n

end A129713

/-! ## A129713.P9348428371739605633

`A324969((A099375(n)+1)/2)`
-/

namespace A129713.P9348428371739605633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (SequenceMachineLib.roundAway ((A099375 n + 1 : ℚ) / 2)).toNat

end

end A129713.P9348428371739605633

namespace A129713

/-- `A324969((A099375(n)+1)/2)` -/
def P9348428371739605633.Spec : Prop :=
  ∀ n, P9348428371739605633.a n = A129713 n

end A129713

/-! ## A129713.P15967807542110396245

`gcd(A121461(n+1), A180663(n))`
-/

namespace A129713.P15967807542110396245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121461 (n + 1)) (A180663 n)

end

end A129713.P15967807542110396245

namespace A129713

/-- `gcd(A121461(n+1), A180663(n))` -/
def P15967807542110396245.Spec : Prop :=
  ∀ n, (P15967807542110396245.a n : ℤ) = A129713 n

end A129713

/-! ## A129713.P15476218138945536973

`A054450(n+1-A141419(n+1))`
-/

namespace A129713.P15476218138945536973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 ((n + 1 : ℤ) - A141419 (n + 1)).toNat

end

end A129713.P15476218138945536973

namespace A129713

/-- `A054450(n+1-A141419(n+1))` -/
def P15476218138945536973.Spec : Prop :=
  ∀ n, P15476218138945536973.a n = A129713 n

end A129713

/-! ## A129713.P12576027335405701403

`A000045(abs(2-A004736(n+1))+1)`
-/

namespace A129713.P12576027335405701403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (|2 - A004736 (n + 1)| + 1).toNat

end

end A129713.P12576027335405701403

namespace A129713

/-- `A000045(abs(2-A004736(n+1))+1)` -/
def P12576027335405701403.Spec : Prop :=
  ∀ n, P12576027335405701403.a n = A129713 n

end A129713

/-! ## A129713.P10542794260920469102

`A000045(A004736(n+1)-(1-char[C(n, 2)-1]))`
-/

namespace A129713.P10542794260920469102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004736 (n + 1) - (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))).toNat

end

end A129713.P10542794260920469102

namespace A129713

/-- `A000045(A004736(n+1)-(1-char[C(n, 2)-1]))` -/
def P10542794260920469102.Spec : Prop :=
  ∀ n, P10542794260920469102.a n = A129713 n

end A129713

/-! ## A129713.P12456765811909805935

`A000045(A004736(n+1)-(char[∑[n-1]]+1)%2)`
-/

namespace A129713.P12456765811909805935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004736 (n + 1) - ((((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1) % 2 : ℕ) : ℤ)).toNat

end

end A129713.P12456765811909805935

namespace A129713

/-- `A000045(A004736(n+1)-(char[∑[n-1]]+1)%2)` -/
def P12456765811909805935.Spec : Prop :=
  ∀ n, P12456765811909805935.a n = A129713 n

end A129713

/-! ## A129713.P13747417546504538663

`A000045(A004736(n+1)-((∑{d}[8*n+9, #]+1)%2)²²)`
-/

namespace A129713.P13747417546504538663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004736 (n + 1) - (((((∑ d ∈ Nat.divisors (f1 n), d + 1) % 2) ^ 2) ^ 2 : ℕ) : ℤ)).toNat

end

end A129713.P13747417546504538663

namespace A129713

/-- `A000045(A004736(n+1)-((∑{d}[8*n+9, #]+1)%2)²²)` -/
def P13747417546504538663.Spec : Prop :=
  ∀ n, P13747417546504538663.a n = A129713 n

end A129713

/-! ## A129713.P17452420258768385488

`A000045(A003056(n+1)-A002262(n))`
-/

namespace A129713.P17452420258768385488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A003056 (n + 1) - A002262 n).toNat

end

end A129713.P17452420258768385488

namespace A129713

/-- `A000045(A003056(n+1)-A002262(n))` -/
def P17452420258768385488.Spec : Prop :=
  ∀ n, P17452420258768385488.a n = A129713 n

end A129713

/-! ## A129713.P16074236599348904146

`A000045(A004736(n+1)-(1-A010054(n+1)))`
-/

namespace A129713.P16074236599348904146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004736 (n + 1) - (1 - A010054 (n + 1))).toNat

end

end A129713.P16074236599348904146

namespace A129713

/-- `A000045(A004736(n+1)-(1-A010054(n+1)))` -/
def P16074236599348904146.Spec : Prop :=
  ∀ n, P16074236599348904146.a n = A129713 n

end A129713

/-! ## A129713.P11991199535895134616

`A000045(A003056(n+1)-A057554(2*n+1))`
-/

namespace A129713.P11991199535895134616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A003056 (n + 1) - A057554 (2 * n + 1)).toNat

end

end A129713.P11991199535895134616

namespace A129713

/-- `A000045(A003056(n+1)-A057554(2*n+1))` -/
def P11991199535895134616.Spec : Prop :=
  ∀ n, P11991199535895134616.a n = A129713 n

end A129713

/-! ## A129713.P8628110421975668623

`A127647(n+1)+A143061(n+2)-A143061(n+1)`
-/

namespace A129713.P8628110421975668623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127647 (n + 1) + (A143061 (n + 2) - A143061 (n + 1))

end

end A129713.P8628110421975668623

namespace A129713

/-- `A127647(n+1)+A143061(n+2)-A143061(n+1)` -/
def P8628110421975668623.Spec : Prop :=
  ∀ n, P8628110421975668623.a n = A129713 n

end A129713

/-! ## A129713.P8909768991128376809

`Δ[record[A171729(n+3)]]`
-/

namespace A129713.P8909768991128376809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171729 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129713.P8909768991128376809

namespace A129713

/-- `Δ[record[A171729(n+3)]]` -/
def P8909768991128376809.Spec : Prop :=
  ∀ n, P8909768991128376809.a n = A129713 n

end A129713

/-! ## A129713.P15791926935832861612

`A000045(A193592(n+1))`
-/

namespace A129713.P15791926935832861612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A193592 (n + 1)).toNat

end

end A129713.P15791926935832861612

namespace A129713

/-- `A000045(A193592(n+1))` -/
def P15791926935832861612.Spec : Prop :=
  ∀ n, P15791926935832861612.a n = A129713 n

end A129713

/-! ## A129713.P1743192503017266907

`A058071(n+1)/A193588(n)`
-/

namespace A129713.P1743192503017266907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058071 (n + 1) : ℚ) / (A193588 n : ℚ)

end

end A129713.P1743192503017266907

namespace A129713

/-- `A058071(n+1)/A193588(n)` -/
def P1743192503017266907.Spec : Prop :=
  ∀ n, P1743192503017266907.a n = (A129713 n : ℚ)

end A129713

/-! ## A129713.P4908443644968768978

`A000045(log2(Δ[A224195(n+1)]))`
-/

namespace A129713.P4908443644968768978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.logb 2 (f1 (n + 1) - f1 n : ℝ))).toNat

end

end A129713.P4908443644968768978

namespace A129713

/-- `A000045(log2(Δ[A224195(n+1)]))` -/
def P4908443644968768978.Spec : Prop :=
  ∀ n, P4908443644968768978.a n = A129713 n

end A129713

/-! ## A129713.P4371712987695548450

`A000045(A004736(n+2)-A127648(n))`
-/

namespace A129713.P4371712987695548450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004736 (n + 2) - A127648 n).toNat

end

end A129713.P4371712987695548450

namespace A129713

/-- `A000045(A004736(n+2)-A127648(n))` -/
def P4371712987695548450.Spec : Prop :=
  ∀ n, P4371712987695548450.a n = A129713 n

end A129713

/-! ## A129713.P11517628088262709345

`Δ[A007298(n+3)]`
-/

namespace A129713.P11517628088262709345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007298 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129713.P11517628088262709345

namespace A129713

/-- `Δ[A007298(n+3)]` -/
def P11517628088262709345.Spec : Prop :=
  ∀ n, P11517628088262709345.a n = A129713 n

theorem P11517628088262709345.correct : P11517628088262709345.Spec := by
  intro n
  simp only [A129713, Nat.add_sub_cancel, A129713.P11517628088262709345.f1, A129713.P11517628088262709345.a, A129713.P11436903838473325982.a, SequenceMachineLib.memo_apply]

end A129713

/-!
# A129714: Triangle read by rows: T(n,k) is the number of Fibonacci binary words of length n and having k runs (0<=k<=n). A Fibonacci binary word is a binary word having no 00 subword. A run is a maximal sequence of consecutive identical letters.

The programs for A129714, there is no canonical definition to state claims against.
-/

/-! ## A129714.P12521140598719730815

`A065941(n)-Δ[A103631(A028310(n))]`
-/

namespace A129714.P12521140598719730815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n - (f1 (n + 1) - f1 n)

end

end A129714.P12521140598719730815

/-! ## A129714.P2310210356399537673

`A083856(n)+A057427(A320606(n+1))`
-/

namespace A129714.P2310210356399537673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083856 n + A057427 (A320606 (n + 1)).toNat

end

end A129714.P2310210356399537673

/-! ## A129714.P11057442793382938209

`A083856(n)-A057428(A212163(n+1))`
-/

namespace A129714.P11057442793382938209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083856 n - A057428 (A212163 (n + 1)).toNat

end

end A129714.P11057442793382938209

/-! ## A129714.P12861960052062516363

`A060959(A038722(n+2))%(3*n+1)-A057428(A212163(n+1))`
-/

namespace A129714.P12861960052062516363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060959 (A038722 (n + 2)).toNat) (3 * n + 1 : ℤ) - A057428 (A212163 (n + 1)).toNat

end

end A129714.P12861960052062516363

/-! ## A129714.P12957970393104594300

`A326702(A244657(n+1)+A212195(n+1))`
-/

namespace A129714.P12957970393104594300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 (A244657 (n + 1) + A212195 (n + 1)).toNat

end

end A129714.P12957970393104594300

/-!
# A129715: Number of runs in all Fibonacci binary words of length n. A Fibonacci binary word is a binary word having no 00 subword. A run is a maximal sequence of consecutive identical letters.

The programs for A129715, the canonical program `A129715.P14207180931259025517` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129715 has offset 0).

The definition of A129715 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129715.P14207180931259025517

`a(n-1)+a(n-2)+2*A000045(n)` with `a(0)=0, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A129715

/-- `a(n-1)+a(n-2)+2*A000045(n)` -/
def P14207180931259025517.Spec : Prop :=
  ∀ n, P14207180931259025517.a n = A129715 n

theorem P14207180931259025517.correct : P14207180931259025517.Spec := by
  intro n
  simp only [A129715]

end A129715

/-! ## A129715.P6795302577652451548

`A131913(n)-A324969(n+1)`
-/

namespace A129715.P6795302577652451548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131913 n - A324969 (n + 1)

end

end A129715.P6795302577652451548

namespace A129715

/-- `A131913(n)-A324969(n+1)` -/
def P6795302577652451548.Spec : Prop :=
  ∀ n, P6795302577652451548.a n = A129715 n

end A129715

/-! ## A129715.P9130381007623836916

`A320947(n+1)-Δ[A020695(n)]`
-/

namespace A129715.P9130381007623836916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320947 (n + 1) - (f1 (n + 1) - f1 n)

end

end A129715.P9130381007623836916

namespace A129715

/-- `A320947(n+1)-Δ[A020695(n)]` -/
def P9130381007623836916.Spec : Prop :=
  ∀ n, P9130381007623836916.a n = A129715 n

end A129715

/-! ## A129715.P16801962859199382450

`A320947(n+1)-record[A212804(n)]`
-/

namespace A129715.P16801962859199382450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320947 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129715.P16801962859199382450

namespace A129715

/-- `A320947(n+1)-record[A212804(n)]` -/
def P16801962859199382450.Spec : Prop :=
  ∀ n, P16801962859199382450.a n = A129715 n

end A129715

/-! ## A129715.P17295518078098015042

`A320947(n+1)-A000045(n+2)`
-/

namespace A129715.P17295518078098015042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320947 (n + 1) - A000045 (n + 2)

end

end A129715.P17295518078098015042

namespace A129715

/-- `A320947(n+1)-A000045(n+2)` -/
def P17295518078098015042.Spec : Prop :=
  ∀ n, P17295518078098015042.a n = A129715 n

end A129715

/-! ## A129715.P4857236342978825453

`A320947(n+1)-(A000071(n+2)+1)`
-/

namespace A129715.P4857236342978825453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320947 (n + 1) - (A000071 (n + 2) + 1)

end

end A129715.P4857236342978825453

namespace A129715

/-- `A320947(n+1)-(A000071(n+2)+1)` -/
def P4857236342978825453.Spec : Prop :=
  ∀ n, P4857236342978825453.a n = A129715 n

end A129715

/-! ## A129715.P12301345928644613816

`(A023610(n)-A029907(n))%A023610(n)`
-/

namespace A129715.P12301345928644613816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023610 n - A029907 n) (A023610 n)

end

end A129715.P12301345928644613816

namespace A129715

/-- `(A023610(n)-A029907(n))%A023610(n)` -/
def P12301345928644613816.Spec : Prop :=
  ∀ n, P12301345928644613816.a n = A129715 n

end A129715

/-! ## A129715.P13341161197489063305

`A067331(n)%A088209(n)`
-/

namespace A129715.P13341161197489063305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067331 n) (A088209 n)

end

end A129715.P13341161197489063305

namespace A129715

/-- `A067331(n)%A088209(n)` -/
def P13341161197489063305.Spec : Prop :=
  ∀ n, P13341161197489063305.a n = A129715 n

end A129715

/-!
# A129716: n! times partial sum of the sequence (1,Bernoulli numbers).

The programs for A129716, there is no canonical definition to state claims against.
-/

/-! ## A129716.P9400307177725668313

`A057355(A221167(n)+A073591(n))`
-/

namespace A129716.P9400307177725668313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (A221167 n + A073591 n).toNat

end

end A129716.P9400307177725668313

/-! ## A129716.P8002308100751801523

`A057355(A288699(n)+A073591(n))`
-/

namespace A129716.P8002308100751801523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (A288699 n + A073591 n).toNat

end

end A129716.P8002308100751801523

/-!
# A129719: Triangle read by rows: T(n,k) is the number of Fibonacci binary words of length n and having k 0's in odd positions (0 <= k <= ceiling(n/2)). A Fibonacci binary word is a binary word having no 00 subword.

The programs for A129719, there is no canonical definition to state claims against.
-/

/-! ## A129719.P17427550704578291895

`A089641(A124498(n+1))`
-/

namespace A129719.P17427550704578291895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089641 (A124498 (n + 1)).toNat

end

end A129719.P17427550704578291895

/-! ## A129719.P8924496475873124452

`A268341(A028330(n+1))`
-/

namespace A129719.P8924496475873124452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268341 (A028330 (n + 1)).toNat

end

end A129719.P8924496475873124452

/-! ## A129719.P16107218387594629894

`A122922(A400429(n+3))`
-/

namespace A129719.P16107218387594629894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122922 (A400429 (n + 3)).toNat

end

end A129719.P16107218387594629894

/-! ## A129719.P7867581347044047619

`A176298(A187829(n+1)+A130571(n))`
-/

namespace A129719.P7867581347044047619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176298 (A187829 (n + 1) + A130571 n).toNat

end

end A129719.P7867581347044047619

/-! ## A129719.P9617642051802920124

`A267263(A257695(2*(n+2))^n)`
-/

namespace A129719.P9617642051802920124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (A257695 (2 * (n + 2)) ^ n).toNat

end

end A129719.P9617642051802920124

/-!
# A129720: Number of 0's in odd position in all Fibonacci binary words of length n. A Fibonacci binary word is a binary word having no 00 subword.

The programs for A129720, the canonical program `A129720.P8695700237349023739` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129720 has offset 0).

The definition of A129720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 470 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129720.P9347476506036503984

`A129722(n)+Δ[A094967(n)]`
-/

namespace A129720.P9347476506036503984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 n + (f1 (n + 1) - f1 n)

end

end A129720.P9347476506036503984

namespace A129720

/-- `A129722(n)+Δ[A094967(n)]` -/
def P9347476506036503984.Spec : Prop :=
  ∀ n, P9347476506036503984.a n = A129720 n

end A129720

/-! ## A129720.P8695700237349023739

`A291241(n)-A000045(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A129720

/-- `A291241(n)-A000045(n+1)` -/
def P8695700237349023739.Spec : Prop :=
  ∀ n, P8695700237349023739.a n = A129720 n

theorem P8695700237349023739.correct : P8695700237349023739.Spec := by
  intro n
  simp only [A129720]

end A129720

/-! ## A129720.P13047418445646249965

`∑[A010049(n)]-A129722(n)`
-/

namespace A129720.P13047418445646249965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A129722 n

end

end A129720.P13047418445646249965

namespace A129720

/-- `∑[A010049(n)]-A129722(n)` -/
def P13047418445646249965.Spec : Prop :=
  ∀ n, P13047418445646249965.a n = A129720 n

end A129720

/-! ## A129720.P16426784541130180653

`A001629(n+1)-A129722(n)`
-/

namespace A129720.P16426784541130180653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 1) - A129722 n

end

end A129720.P16426784541130180653

namespace A129720

/-- `A001629(n+1)-A129722(n)` -/
def P16426784541130180653.Spec : Prop :=
  ∀ n, P16426784541130180653.a n = A129720 n

end A129720

/-! ## A129720.P14813309371821527654

`A029907(n+1)-A134512(n)`
-/

namespace A129720.P14813309371821527654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (n + 1) - A134512 n

end

end A129720.P14813309371821527654

namespace A129720

/-- `A029907(n+1)-A134512(n)` -/
def P14813309371821527654.Spec : Prop :=
  ∀ n, P14813309371821527654.a n = A129720 n

end A129720

/-! ## A129720.P1914504770391350500

`A001629(n+2)-A128620(n)`
-/

namespace A129720.P1914504770391350500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 2) - A128620 n

end

end A129720.P1914504770391350500

namespace A129720

/-- `A001629(n+2)-A128620(n)` -/
def P1914504770391350500.Spec : Prop :=
  ∀ n, P1914504770391350500.a n = A129720 n

end A129720

/-! ## A129720.P5656302789017315778

`A134512(n)-A134511(A000217(n))`
-/

namespace A129720.P5656302789017315778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 n - A134511 (A000217 n).toNat

end

end A129720.P5656302789017315778

namespace A129720

/-- `A134512(n)-A134511(A000217(n))` -/
def P5656302789017315778.Spec : Prop :=
  ∀ n, P5656302789017315778.a n = A129720 n

end A129720

/-!
# A129721: Triangle read by rows: T(n,k) is the number of Fibonacci binary words of length n and having k 0's in even positions (0<=k<=floor(n/2)). A Fibonacci binary word is a binary word having no 00 subword.

The programs for A129721, there is no canonical definition to state claims against.
-/

/-! ## A129721.P10059932676932013318

`gcd(A163892(A163892(n)), A305040(n+1))`
-/

namespace A129721.P10059932676932013318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A163892 (A163892 n).toNat) (A305040 (n + 1))

end

end A129721.P10059932676932013318

/-!
# A129722: Number of 0's in even position in all Fibonacci binary words of length n. A Fibonacci binary word is a binary word having no 00 subword.

The programs for A129722, the canonical program `A129722.P5450223636338859995` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129722 has offset 0).

The definition of A129722 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129722.P5450223636338859995

`A000045(n)*(n+1)/5+A000045(n+1)*(2*n-5+5*(-1)^n)/20`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A129722

/-- `A000045(n)*(n+1)/5+A000045(n+1)*(2*n-5+5*(-1)^n)/20` -/
def P5450223636338859995.Spec : Prop :=
  ∀ n, P5450223636338859995.a n = (A129722 n : ℚ)

end A129722

/-! ## A129722.P13881993047894024016

`A134512(n)-∑[A212804(n)]`
-/

namespace A129722.P13881993047894024016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129722.P13881993047894024016

namespace A129722

/-- `A134512(n)-∑[A212804(n)]` -/
def P13881993047894024016.Spec : Prop :=
  ∀ n, P13881993047894024016.a n = A129722 n

end A129722

/-! ## A129722.P5240756946330612450

`A134512(n)-A000045(n+1)`
-/

namespace A129722.P5240756946330612450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 n - A000045 (n + 1)

end

end A129722.P5240756946330612450

namespace A129722

/-- `A134512(n)-A000045(n+1)` -/
def P5240756946330612450.Spec : Prop :=
  ∀ n, P5240756946330612450.a n = A129722 n

end A129722

/-! ## A129722.P3262278931329404168

`A134512(n)-A212804(n+2)`
-/

namespace A129722.P3262278931329404168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 n - A212804 (n + 2)

end

end A129722.P3262278931329404168

namespace A129722

/-- `A134512(n)-A212804(n+2)` -/
def P3262278931329404168.Spec : Prop :=
  ∀ n, P3262278931329404168.a n = A129722 n

end A129722

/-! ## A129722.P17883490419698000889

`A134512(n)-(A000071(n+1)+1)`
-/

namespace A129722.P17883490419698000889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 n - (A000071 (n + 1) + 1)

end

end A129722.P17883490419698000889

namespace A129722

/-- `A134512(n)-(A000071(n+1)+1)` -/
def P17883490419698000889.Spec : Prop :=
  ∀ n, P17883490419698000889.a n = A129722 n

end A129722

/-! ## A129722.P3973945531726867271

`∑[A208354(n)]-A291241(n)`
-/

namespace A129722.P3973945531726867271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A291241 n

end

end A129722.P3973945531726867271

namespace A129722

/-- `∑[A208354(n)]-A291241(n)` -/
def P3973945531726867271.Spec : Prop :=
  ∀ n, P3973945531726867271.a n = A129722 n

end A129722

/-! ## A129722.P9451990140304546550

`A001629(n+1)-A129720(n)`
-/

namespace A129722.P9451990140304546550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 1) - A129720 n

end

end A129722.P9451990140304546550

namespace A129722

/-- `A001629(n+1)-A129720(n)` -/
def P9451990140304546550.Spec : Prop :=
  ∀ n, P9451990140304546550.a n = A129722 n

end A129722

/-! ## A129722.P11309238920626889198

`A029907(n+1)-A291241(n)`
-/

namespace A129722.P11309238920626889198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (n + 1) - A291241 n

end

end A129722.P11309238920626889198

namespace A129722

/-- `A029907(n+1)-A291241(n)` -/
def P11309238920626889198.Spec : Prop :=
  ∀ n, P11309238920626889198.a n = A129722 n

end A129722

/-! ## A129722.P8308237249771182782

`A134512(n)-A123603(A000217(n))`
-/

namespace A129722.P8308237249771182782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 n - A123603 (A000217 n).toNat

end

end A129722.P8308237249771182782

namespace A129722

/-- `A134512(n)-A123603(A000217(n))` -/
def P8308237249771182782.Spec : Prop :=
  ∀ n, P8308237249771182782.a n = A129722 n

end A129722

/-! ## A129722.P11311697084210271625

`A134512(n)-A131410(A000124(n))`
-/

namespace A129722.P11311697084210271625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 n - A131410 (A000124 n).toNat

end

end A129722.P11311697084210271625

namespace A129722

/-- `A134512(n)-A131410(A000124(n))` -/
def P11311697084210271625.Spec : Prop :=
  ∀ n, P11311697084210271625.a n = A129722 n

end A129722

/-!
# A129723: Number of distinct coefficients among the Littlewood-Richardson coefficients for Schubert polynomials for symmetric groups S4, S5, S6, S7, S8.

The programs for A129723, there is no canonical definition to state claims against.
-/

/-! ## A129723.P7990843582822920442

`A378961(3*n+5)+A220621(A052017(n+1))`
-/

namespace A129723.P7990843582822920442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378961 (3 * n + 5) + A220621 (A052017 (n + 1)).toNat

end

end A129723.P7990843582822920442

/-!
# A129724: a(0) = 1; then a(n) = n!*(1 - (-1)^n*Bernoulli(n-1)).

The programs for A129724, there is no canonical definition to state claims against.
-/

/-! ## A129724.P8287954507633058680

`A129825(n)+A000142(n)`
-/

namespace A129724.P8287954507633058680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129825 n + A000142 n

end

end A129724.P8287954507633058680

/-! ## A129724.P10382753386455277755

`A129825(n)+A080779(A000096(n))`
-/

namespace A129724.P10382753386455277755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129825 n + A080779 (A000096 n).toNat

end

end A129724.P10382753386455277755

/-! ## A129724.P11407782792594980270

`A129825(n)+A112486(A000217(n))`
-/

namespace A129724.P11407782792594980270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129825 n + A112486 (A000217 n).toNat

end

end A129724.P11407782792594980270

/-! ## A129724.P10846677895792697925

`n!+A080779(C(n, 2))%A035117(n+1)`
-/

namespace A129724.P10846677895792697925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + Int.tmod (A080779 (Nat.choose n 2)) (A035117 (n + 1))

end

end A129724.P10846677895792697925

/-! ## A129724.P9564348674921926407

`n!+A080779(∑[n]-n)%A035117(n+1)`
-/

namespace A129724.P9564348674921926407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + Int.tmod (A080779 (∑ j ∈ Finset.range (n + 1), f1 j - n)) (A035117 (n + 1))

end

end A129724.P9564348674921926407

/-!
# A129725: Nonnegative values x of solutions (x, y) to the Diophantine equation x^2+(x+521)^2 = y^2.

The programs for A129725, there is no canonical definition to state claims against.
-/

/-! ## A129725.P10096754800279936803

`A101152(n+1)+A118674(n+1)-A118676(n+1)`
-/

namespace A129725.P10096754800279936803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101152 (n + 1) + (A118674 (n + 1) - A118676 (n + 1))

end

end A129725.P10096754800279936803

/-!
# A129726: a(n) = a(n-1) + prime(n) - prime(n-1) + 2; a(1) = 2.

The programs for A129726, the canonical program `A129726.P7729858231334220937` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129726 has offset 1).

The definition of A129726 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A000040(n+1)-A000040(n)+2` (program `A129726.P7729858231334220937`, by `A129726.P7729858231334220937.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129726.P2053911701492274268

`A000040(n+1)+2*n`
-/

namespace A129726.P2053911701492274268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (2 * n : ℤ)

end

end A129726.P2053911701492274268

namespace A129726

/-- `A000040(n+1)+2*n` -/
def P2053911701492274268.Spec : Prop :=
  ∀ n, P2053911701492274268.a n = A129726 (n + 1)

end A129726

/-! ## A129726.P12068691350247961614

`a(n-1)+A001223(n)+2` with `a(0)=2`
-/

namespace A129726.P12068691350247961614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A001223 n + 2

end

end A129726.P12068691350247961614

namespace A129726

/-- `a(n-1)+A001223(n)+2` -/
def P12068691350247961614.Spec : Prop :=
  ∀ n, P12068691350247961614.a n = A129726 (n + 1)

end A129726

/-! ## A129726.P17998856546921731904

`2+a(n-1)+A000040(n+1)-A000040(n)` with `a(0)=2`
-/

namespace A129726.P17998856546921731904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 + (a (n - 1) + A000040 (n + 1) - A000040 n)

end

end A129726.P17998856546921731904

namespace A129726

/-- `2+a(n-1)+A000040(n+1)-A000040(n)` -/
def P17998856546921731904.Spec : Prop :=
  ∀ n, P17998856546921731904.a n = A129726 (n + 1)

theorem P17998856546921731904.correct : P17998856546921731904.Spec := by
  intro n
  simp only [A129726, Nat.add_sub_cancel, A129726.P17998856546921731904.a, A129726.P7729858231334220937.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A129726

/-! ## A129726.P7729858231334220937

`a(n-1)+A000040(n+1)-A000040(n)+2` with `a(0)=2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A129726

/-- `a(n-1)+A000040(n+1)-A000040(n)+2` -/
def P7729858231334220937.Spec : Prop :=
  ∀ n, P7729858231334220937.a n = A129726 (n + 1)

theorem P7729858231334220937.correct : P7729858231334220937.Spec := by
  intro n
  simp only [A129726, Nat.add_sub_cancel]

end A129726

/-! ## A129726.P11444487845916311678

`A078916(n+1)-2`
-/

namespace A129726.P11444487845916311678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078916 (n + 1) - 2

end

end A129726.P11444487845916311678

namespace A129726

/-- `A078916(n+1)-2` -/
def P11444487845916311678.Spec : Prop :=
  ∀ n, P11444487845916311678.a n = A129726 (n + 1)

end A129726

/-! ## A129726.P2086265001175887821

`A095116(n+1)+n`
-/

namespace A129726.P2086265001175887821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) + (n : ℤ)

end

end A129726.P2086265001175887821

namespace A129726

/-- `A095116(n+1)+n` -/
def P2086265001175887821.Spec : Prop :=
  ∀ n, P2086265001175887821.a n = A129726 (n + 1)

end A129726

/-! ## A129726.P6646995690340005163

`∑[A076368(n+1)+1]`
-/

namespace A129726.P6646995690340005163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129726.P6646995690340005163

namespace A129726

/-- `∑[A076368(n+1)+1]` -/
def P6646995690340005163.Spec : Prop :=
  ∀ n, P6646995690340005163.a n = A129726 (n + 1)

end A129726

/-! ## A129726.P2094801336197077976

`∑[A230846(n+1)]+n`
-/

namespace A129726.P2094801336197077976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A129726.P2094801336197077976

namespace A129726

/-- `∑[A230846(n+1)]+n` -/
def P2094801336197077976.Spec : Prop :=
  ∀ n, P2094801336197077976.a n = A129726 (n + 1)

end A129726

/-! ## A129726.P10531038109882592855

`xor(1, A174008(n+1))-1`
-/

namespace A129726.P10531038109882592855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A174008 (n + 1)) - 1

end

end A129726.P10531038109882592855

namespace A129726

/-- `xor(1, A174008(n+1))-1` -/
def P10531038109882592855.Spec : Prop :=
  ∀ n, P10531038109882592855.a n = A129726 (n + 1)

end A129726

/-! ## A129726.P12592693917980294205

`A014688(n+1)-1+n`
-/

namespace A129726.P12592693917980294205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - 1 + (n : ℤ)

end

end A129726.P12592693917980294205

namespace A129726

/-- `A014688(n+1)-1+n` -/
def P12592693917980294205.Spec : Prop :=
  ∀ n, P12592693917980294205.a n = A129726 (n + 1)

end A129726

/-! ## A129726.P12905402342717528099

`2*n+A000040(n+1)`
-/

namespace A129726.P12905402342717528099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A000040 (n + 1)

end

end A129726.P12905402342717528099

namespace A129726

/-- `2*n+A000040(n+1)` -/
def P12905402342717528099.Spec : Prop :=
  ∀ n, P12905402342717528099.a n = A129726 (n + 1)

end A129726

/-! ## A129726.P2916943981651169108

`A014692(n+1)+3*n`
-/

namespace A129726.P2916943981651169108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) + (3 * n : ℤ)

end

end A129726.P2916943981651169108

namespace A129726

/-- `A014692(n+1)+3*n` -/
def P2916943981651169108.Spec : Prop :=
  ∀ n, P2916943981651169108.a n = A129726 (n + 1)

end A129726

/-! ## A129726.P11416019233255678317

`A006093(n+1)+Δ[n²]`
-/

namespace A129726.P11416019233255678317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A129726.P11416019233255678317

namespace A129726

/-- `A006093(n+1)+Δ[n²]` -/
def P11416019233255678317.Spec : Prop :=
  ∀ n, P11416019233255678317.a n = A129726 (n + 1)

end A129726

/-! ## A129726.P11900745429728522299

`A005843(n)+Δ[A007504(n)]`
-/

namespace A129726.P11900745429728522299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (f1 (n + 1) - f1 n)

end

end A129726.P11900745429728522299

namespace A129726

/-- `A005843(n)+Δ[A007504(n)]` -/
def P11900745429728522299.Spec : Prop :=
  ∀ n, P11900745429728522299.a n = A129726 (n + 1)

end A129726

/-! ## A129726.P9812887541623683493

`A006005(n+1)+A004277(n)`
-/

namespace A129726.P9812887541623683493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) + A004277 n

end

end A129726.P9812887541623683493

namespace A129726

/-- `A006005(n+1)+A004277(n)` -/
def P9812887541623683493.Spec : Prop :=
  ∀ n, P9812887541623683493.a n = A129726 (n + 1)

end A129726

/-! ## A129726.P14181466920451486525

`A016777(n)+A014689(n+1)`
-/

namespace A129726.P14181466920451486525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + A014689 (n + 1)

end

end A129726.P14181466920451486525

namespace A129726

/-- `A016777(n)+A014689(n+1)` -/
def P14181466920451486525.Spec : Prop :=
  ∀ n, P14181466920451486525.a n = A129726 (n + 1)

end A129726

/-! ## A129726.P1522123381835749586

`A023443(n)+A014688(n+1)`
-/

namespace A129726.P1522123381835749586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n + A014688 (n + 1)

end

end A129726.P1522123381835749586

namespace A129726

/-- `A023443(n)+A014688(n+1)` -/
def P1522123381835749586.Spec : Prop :=
  ∀ n, P1522123381835749586.a n = A129726 (n + 1)

end A129726

/-! ## A129726.P14169914698077855733

`A060747(n)+A008864(n+1)`
-/

namespace A129726.P14169914698077855733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n + A008864 (n + 1)

end

end A129726.P14169914698077855733

namespace A129726

/-- `A060747(n)+A008864(n+1)` -/
def P14169914698077855733.Spec : Prop :=
  ∀ n, P14169914698077855733.a n = A129726 (n + 1)

end A129726

/-! ## A129726.P7619908063396666788

`A065890(n+1)+A016789(n)`
-/

namespace A129726.P7619908063396666788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 1) + A016789 n

end

end A129726.P7619908063396666788

namespace A129726

/-- `A065890(n+1)+A016789(n)` -/
def P7619908063396666788.Spec : Prop :=
  ∀ n, P7619908063396666788.a n = A129726 (n + 1)

end A129726

/-! ## A129726.P9837323529832030957

`A131733(n+1)+A016813(n)`
-/

namespace A129726.P9837323529832030957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 1) + A016813 n

end

end A129726.P9837323529832030957

namespace A129726

/-- `A131733(n+1)+A016813(n)` -/
def P9837323529832030957.Spec : Prop :=
  ∀ n, P9837323529832030957.a n = A129726 (n + 1)

end A129726

/-! ## A129726.P2816261753431330550

`record[∏{p}[2*n+1, #-1]]+2*n+1`
-/

namespace A129726.P2816261753431330550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (2 * n + 1 : ℤ)

end

end A129726.P2816261753431330550

namespace A129726

/-- `record[∏{p}[2*n+1, #-1]]+2*n+1` -/
def P2816261753431330550.Spec : Prop :=
  ∀ n, P2816261753431330550.a n = A129726 (n + 1)

end A129726

/-!
# A129727: Primes p for which the period length of 1/p is a semiprime.

The programs for A129727, there is no canonical definition to state claims against.
-/

/-! ## A129727.P12376930168757301041

`A000040(A122183(n+1))`
-/

namespace A129727.P12376930168757301041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A122183 (n + 1)).toNat

end

end A129727.P12376930168757301041

/-! ## A129727.P1925706680139219333

`A008578(A122183(n+1)+1)`
-/

namespace A129727.P1925706680139219333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A122183 (n + 1) + 1).toNat

end

end A129727.P1925706680139219333

/-! ## A129727.P10668329824260768581

`A045319(A122183(n+1)-1)`
-/

namespace A129727.P10668329824260768581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A122183 (n + 1) - 1).toNat

end

end A129727.P10668329824260768581

/-! ## A129727.P17146818639280939756

`A045344(A122183(n+1)-1)`
-/

namespace A129727.P17146818639280939756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A122183 (n + 1) - 1).toNat

end

end A129727.P17146818639280939756

/-! ## A129727.P9275574483137745064

`A046022(A122183(n+1)+2)`
-/

namespace A129727.P9275574483137745064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A122183 (n + 1) + 2).toNat

end

end A129727.P9275574483137745064

/-! ## A129727.P1095380974648197776

`A065091(A122183(n+1)-1)`
-/

namespace A129727.P1095380974648197776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A122183 (n + 1) - 1).toNat

end

end A129727.P1095380974648197776

/-! ## A129727.P13294912038281334377

`A158611(A122183(n+1)+2)`
-/

namespace A129727.P13294912038281334377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A122183 (n + 1) + 2).toNat

end

end A129727.P13294912038281334377

/-! ## A129727.P11648780644618061656

`A181901(A122183(n+1)-1)`
-/

namespace A129727.P11648780644618061656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181901 (A122183 (n + 1) - 1).toNat

end

end A129727.P11648780644618061656

/-! ## A129727.P14853273119410425925

`A004139(A122183(n+1)-2)`
-/

namespace A129727.P14853273119410425925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A122183 (n + 1) - 2).toNat

end

end A129727.P14853273119410425925

/-!
# A129728: a(n) = 2*(n-1) + Fibonacci(n).

The programs for A129728, the canonical program `A129728.P8023727234725793937` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129728 has offset 1).

The definition of A129728 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n+A000045(n+1)` (program `A129728.P8023727234725793937`, by `A129728.P8023727234725793937.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129728.P12863395938183959456

`ogf((1-x^2-2x^3)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A129728.P12863395938183959456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, -2] [1, -3, 2, 1, -1] n

end

end A129728.P12863395938183959456

namespace A129728

/-- `ogf((1-x^2-2x^3)/(1-3x+2x^2+x^3-x^4))` -/
def P12863395938183959456.Spec : Prop :=
  ∀ n, P12863395938183959456.a n = A129728 (n + 1)

end A129728

/-! ## A129728.P8023727234725793937

`2*n+A000045(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A129728

/-- `2*n+A000045(n+1)` -/
def P8023727234725793937.Spec : Prop :=
  ∀ n, P8023727234725793937.a n = A129728 (n + 1)

theorem P8023727234725793937.correct : P8023727234725793937.Spec := by
  intro n
  simp only [A129728, Nat.add_sub_cancel]

end A129728

/-! ## A129728.P7080663545877503911

`a(n-1)+A000045(n-1)+2` with `a(0)=1`
-/

namespace A129728.P7080663545877503911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000045 (n - 1) + 2

end

end A129728.P7080663545877503911

namespace A129728

/-- `a(n-1)+A000045(n-1)+2` -/
def P7080663545877503911.Spec : Prop :=
  ∀ n, P7080663545877503911.a n = A129728 (n + 1)

end A129728

/-! ## A129728.P12716870705995004149

`∑[a(n-1)+a(n-2)-2]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A129728.P12716870705995004149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129728.P12716870705995004149

namespace A129728

/-- `∑[a(n-1)+a(n-2)-2]` -/
def P12716870705995004149.Spec : Prop :=
  ∀ n, P12716870705995004149.a n = A129728 (n + 1)

end A129728

/-! ## A129728.P651667902046021943

`∑[a(n-1)-(2-a(n-2))]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A129728.P651667902046021943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129728.P651667902046021943

namespace A129728

/-- `∑[a(n-1)-(2-a(n-2))]` -/
def P651667902046021943.Spec : Prop :=
  ∀ n, P651667902046021943.a n = A129728 (n + 1)

end A129728

/-! ## A129728.P18383175453447939604

`2*(3-n)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A129728.P18383175453447939604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * (3 - (n : ℤ)) + (a (n - 1) + a (n - 2))

end

end A129728.P18383175453447939604

namespace A129728

/-- `2*(3-n)+a(n-1)+a(n-2)` -/
def P18383175453447939604.Spec : Prop :=
  ∀ n, P18383175453447939604.a n = A129728 (n + 1)

end A129728

/-! ## A129728.P11420938347228146

`a(n-1)-(2*(n-3)-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A129728.P11420938347228146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - (2 * ((n : ℤ) - 3) - a (n - 2))

end

end A129728.P11420938347228146

namespace A129728

/-- `a(n-1)-(2*(n-3)-a(n-2))` -/
def P11420938347228146.Spec : Prop :=
  ∀ n, P11420938347228146.a n = A129728 (n + 1)

end A129728

/-! ## A129728.P13910841749392339835

`A089061(n)-4`
-/

namespace A129728.P13910841749392339835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089061 n - 4

end

end A129728.P13910841749392339835

namespace A129728

/-- `A089061(n)-4` -/
def P13910841749392339835.Spec : Prop :=
  ∀ n, P13910841749392339835.a n = A129728 (n + 1)

end A129728

/-! ## A129728.P15469573326748490702

`A081659(n)+n`
-/

namespace A129728.P15469573326748490702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081659 n + (n : ℤ)

end

end A129728.P15469573326748490702

namespace A129728

/-- `A081659(n)+n` -/
def P15469573326748490702.Spec : Prop :=
  ∀ n, P15469573326748490702.a n = A129728 (n + 1)

theorem P15469573326748490702.correct : P15469573326748490702.Spec := by
  intro n
  simp only [A129728, Nat.add_sub_cancel, A129728.P15469573326748490702.a, A129728.P8023727234725793937.a, A000045, A000045.P11838749114346432762.a, A081659, A081659.P2520138309410164665.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129728

/-! ## A129728.P9546302231003031353

`record[A079977(n)+n]`
-/

namespace A129728.P9546302231003031353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129728.P9546302231003031353

namespace A129728

/-- `record[A079977(n)+n]` -/
def P9546302231003031353.Spec : Prop :=
  ∀ n, P9546302231003031353.a n = A129728 (n + 1)

end A129728

/-! ## A129728.P8436908133253265530

`∑[A212804(n)+2]-2`
-/

namespace A129728.P8436908133253265530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A129728.P8436908133253265530

namespace A129728

/-- `∑[A212804(n)+2]-2` -/
def P8436908133253265530.Spec : Prop :=
  ∀ n, P8436908133253265530.a n = A129728 (n + 1)

end A129728

/-! ## A129728.P4964860023348867562

`A002062(n+1)-1+n`
-/

namespace A129728.P4964860023348867562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 (n + 1) - 1 + (n : ℤ)

end

end A129728.P4964860023348867562

namespace A129728

/-- `A002062(n+1)-1+n` -/
def P4964860023348867562.Spec : Prop :=
  ∀ n, P4964860023348867562.a n = A129728 (n + 1)

theorem P4964860023348867562.correct : P4964860023348867562.Spec := by
  intro n
  simp only [A129728, Nat.add_sub_cancel, A129728.P4964860023348867562.a, A129728.P8023727234725793937.a, A000045, A000045.P11838749114346432762.a, A002062, A002062.P4072436808255348786.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129728

/-! ## A129728.P13910820106866801625

`A212804(n+2)+2*n`
-/

namespace A129728.P13910820106866801625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) + (2 * n : ℤ)

end

end A129728.P13910820106866801625

namespace A129728

/-- `A212804(n+2)+2*n` -/
def P13910820106866801625.Spec : Prop :=
  ∀ n, P13910820106866801625.a n = A129728 (n + 1)

end A129728

/-! ## A129728.P5122054543245794832

`A324969(n+2)+2*n`
-/

namespace A129728.P5122054543245794832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 2) + (2 * n : ℤ)

end

end A129728.P5122054543245794832

namespace A129728

/-- `A324969(n+2)+2*n` -/
def P5122054543245794832.Spec : Prop :=
  ∀ n, P5122054543245794832.a n = A129728 (n + 1)

end A129728

/-! ## A129728.P4216621932703467098

`A079977(2*n)+2*n`
-/

namespace A129728.P4216621932703467098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (2 * n) + (2 * n : ℤ)

end

end A129728.P4216621932703467098

namespace A129728

/-- `A079977(2*n)+2*n` -/
def P4216621932703467098.Spec : Prop :=
  ∀ n, P4216621932703467098.a n = A129728 (n + 1)

end A129728

/-! ## A129728.P10621689388464338370

`2*n-A152163(n+3)`
-/

namespace A129728.P10621689388464338370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A152163 (n + 3)

end

end A129728.P10621689388464338370

namespace A129728

/-- `2*n-A152163(n+3)` -/
def P10621689388464338370.Spec : Prop :=
  ∀ n, P10621689388464338370.a n = A129728 (n + 1)

end A129728

/-! ## A129728.P12061323387467664987

`∑[Δ[A000045(n)]+2]-2`
-/

namespace A129728.P12061323387467664987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A129728.P12061323387467664987

namespace A129728

/-- `∑[Δ[A000045(n)]+2]-2` -/
def P12061323387467664987.Spec : Prop :=
  ∀ n, P12061323387467664987.a n = A129728 (n + 1)

end A129728

/-! ## A129728.P1531821505532538398

`A000071(n+1)+Δ[n²]`
-/

namespace A129728.P1531821505532538398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A129728.P1531821505532538398

namespace A129728

/-- `A000071(n+1)+Δ[n²]` -/
def P1531821505532538398.Spec : Prop :=
  ∀ n, P1531821505532538398.a n = A129728 (n + 1)

theorem P1531821505532538398.correct : P1531821505532538398.Spec := by
  intro n
  simp only [A129728, Nat.add_sub_cancel, A129728.P1531821505532538398.f1, A129728.P1531821505532538398.a, A129728.P8023727234725793937.a, A000045, A000045.P11838749114346432762.a, A000071, A000071.P17543778731970887199.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129728

/-! ## A129728.P6237193287987643533

`A174619(2*n+1)+2*n`
-/

namespace A129728.P6237193287987643533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174619 (2 * n + 1) + (2 * n : ℤ)

end

end A129728.P6237193287987643533

namespace A129728

/-- `A174619(2*n+1)+2*n` -/
def P6237193287987643533.Spec : Prop :=
  ∀ n, P6237193287987643533.a n = A129728 (n + 1)

end A129728

/-! ## A129728.P9391969809340608886

`A226649(2*n)+2*n+1`
-/

namespace A129728.P9391969809340608886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226649 (2 * n) + (2 * n + 1 : ℤ)

end

end A129728.P9391969809340608886

namespace A129728

/-- `A226649(2*n)+2*n+1` -/
def P9391969809340608886.Spec : Prop :=
  ∀ n, P9391969809340608886.a n = A129728 (n + 1)

end A129728

/-!
# A129730: Upper limit palindromic complexity sequence involving Fibonacci numbers.

The programs for A129730, the canonical program `A129730.P14004170458512786255` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129730 has offset 1).

The definition of A129730 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129730.P14004170458512786255

`ceil(16*A000045(n+2+floor((n+2)/4))/(n+2))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A129730

/-- `ceil(16*A000045(n+2+floor((n+2)/4))/(n+2))` -/
def P14004170458512786255.Spec : Prop :=
  ∀ n, P14004170458512786255.a n = A129730 (n + 1)

theorem P14004170458512786255.correct : P14004170458512786255.Spec := by
  intro n
  simp only [A129730, Nat.add_sub_cancel]

end A129730

/-!
# A129732: Number of main classes of Graeco-Latin squares of order n. That is, species of pairs of orthogonal Latin squares.

The programs for A129732, there is no canonical definition to state claims against.
-/

/-! ## A129732.P16742842770043832352

`A053632(A066383(n))-A025485(n)`
-/

namespace A129732.P16742842770043832352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053632 (A066383 n).toNat - A025485 n

end

end A129732.P16742842770043832352

/-! ## A129732.P13731531458552697099

`A089588(A000105(n))-A106244(n)`
-/

namespace A129732.P13731531458552697099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089588 (A000105 n).toNat - A106244 n

end

end A129732.P13731531458552697099

/-!
# A129733: List of primitive prime divisors of the numbers (3^k-1)/2 (A003462) for k>=2, in order of their occurrence.

The programs for A129733, there is no canonical definition to state claims against.
-/

/-! ## A129733.P6691170714758426338

`p?[A212906(n+1)%A052218(n+1)]`
-/

namespace A129733.P6691170714758426338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212906 (n + 1)) (A052218 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129733.P6691170714758426338

/-! ## A129733.P16436447601253554041

`p?[A212906(n+1)%A000735(n)]`
-/

namespace A129733.P16436447601253554041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212906 (n + 1)) (A000735 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129733.P16436447601253554041

/-! ## A129733.P7542734496913001650

`p?[A212906(A080782(n+1))]`
-/

namespace A129733.P7542734496913001650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212906 (A080782 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129733.P7542734496913001650

/-! ## A129733.P18052369112740863481

`p?[A212906(A188568(n+1))]`
-/

namespace A129733.P18052369112740863481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212906 (A188568 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129733.P18052369112740863481

/-! ## A129733.P16934186915949947717

`p?[A212737(A000096((-1)^n+n+2))]`
-/

namespace A129733.P16934186915949947717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (A000096 ((-1) ^ n + (n + 2 : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129733.P16934186915949947717

/-!
# A129735: List of primitive prime divisors of the numbers (4^n-1)/3 (A002450) in their order of occurrence.

The programs for A129735, there is no canonical definition to state claims against.
-/

/-! ## A129735.P12558673205786315864

`p?[A006083(A059912(n+1))]`
-/

namespace A129735.P12558673205786315864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006083 (A059912 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129735.P12558673205786315864

/-! ## A129735.P8099576093840010609

`A006530(∪[A028403(2*(n+2)), A028399(2*(n+3))])`
-/

namespace A129735.P8099576093840010609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028403 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028399 (2 * (n + 3))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A129735.P8099576093840010609

/-!
# A129736: 

The programs for A129736, there is no canonical definition to state claims against.
-/

/-! ## A129736.P5976984598145707548

`A005061(∪[A059801(n+1), A062592(n+1)])`
-/

namespace A129736.P5976984598145707548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062592 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A129736.P5976984598145707548

/-!
# A129738: List of primitive prime divisors of the Jacobsthal numbers A001045 in their order of occurrence.

The programs for A129738, there is no canonical definition to state claims against.
-/

/-! ## A129738.P11273344000627010576

`A271314(A242474(n+1)+2)`
-/

namespace A129738.P11273344000627010576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271314 (A242474 (n + 1) + 2).toNat

end

end A129738.P11273344000627010576

/-! ## A129738.P4128729406500755874

`A072189(n)!*A271314(n+3)`
-/

namespace A129738.P4128729406500755874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A072189 n).toNat : ℤ) * A271314 (n + 3)

end

end A129738.P4128729406500755874

/-! ## A129738.P11848464520530176918

`A271314(n+3)%A177813(2*(n+1))`
-/

namespace A129738.P11848464520530176918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271314 (n + 3)) (A177813 (2 * (n + 1)))

end

end A129738.P11848464520530176918

/-! ## A129738.P17284757350033323272

`A271314(n+3)+A000007(A018147(n))`
-/

namespace A129738.P17284757350033323272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271314 (n + 3) + A000007 (A018147 n).toNat

end

end A129738.P17284757350033323272

/-! ## A129738.P2931445386589479795

`A271314(n+3)+A091225(A000749(n))`
-/

namespace A129738.P2931445386589479795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271314 (n + 3) + A091225 (A000749 n).toNat

end

end A129738.P2931445386589479795

/-!
# A129739: Primes in Somos-4 sequence (A006720).

The programs for A129739, there is no canonical definition to state claims against.
-/

/-! ## A129739.P2029139144009802602

`A006720(A129740(n+1))`
-/

namespace A129739.P2029139144009802602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006720 (A129740 (n + 1)).toNat

end

end A129739.P2029139144009802602

/-! ## A129739.P7463458497021104333

`∩[record[A129741(n+1)], A006720(n+3)]`
-/

namespace A129739.P7463458497021104333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129741 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006720 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A129739.P7463458497021104333

/-! ## A129739.P4488310901349539071

`p?[A006720(n)]`
-/

namespace A129739.P4488310901349539071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129739.P4488310901349539071

/-!
# A129740: Indices of primes in Somos-4 sequence (A006720).

The programs for A129740, there is no canonical definition to state claims against.
-/

/-! ## A129740.P10952361403331578040

`A272074(n+4)+A096815(A325545(n))`
-/

namespace A129740.P10952361403331578040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272074 (n + 4) + A096815 (A325545 n).toNat

end

end A129740.P10952361403331578040

/-!
# A129741: List of primitive prime divisors of the Somos-4 sequence (A006720) in their order of occurrence.

The programs for A129741, there is no canonical definition to state claims against.
-/

/-! ## A129741.P6908366508636774122

`A325100(2^(n+1)-n)`
-/

namespace A129741.P6908366508636774122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325100 (2 ^ (n + 1) - n)

end

end A129741.P6908366508636774122

/-! ## A129741.P2707727191833326786

`A216437(A013326(n))`
-/

namespace A129741.P2707727191833326786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216437 (A013326 n).toNat

end

end A129741.P2707727191833326786

/-!
# A129742: Numbers of the form: a(n)=((Prime[n] - 1)! - (Prime[n] - 1))/(2*Prime[n]).

The programs for A129742, the canonical program `A129742.P11459007568309688321` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129742 has offset 1).

The definition of A129742 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129742.P11459007568309688321

`((A000040(n+1)-1)!-(A000040(n+1)-1))/(2*A000040(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A129742

/-- `((A000040(n+1)-1)!-(A000040(n+1)-1))/(2*A000040(n+1))` -/
def P11459007568309688321.Spec : Prop :=
  ∀ n, P11459007568309688321.a n = (A129742 (n + 1) : ℚ)

end A129742

/-! ## A129742.P12187119786874764636

`A091330(n+1)/2`
-/

namespace A129742.P12187119786874764636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091330 (n + 1) : ℚ) / 2

end

end A129742.P12187119786874764636

namespace A129742

/-- `A091330(n+1)/2` -/
def P12187119786874764636.Spec : Prop :=
  ∀ n, P12187119786874764636.a n = (A129742 (n + 1) : ℚ)

end A129742

/-! ## A129742.P10890662295112534932

`floor(A007619(n+1)/2)`
-/

namespace A129742.P10890662295112534932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007619 (n + 1) : ℚ) / 2⌋

end

end A129742.P10890662295112534932

namespace A129742

/-- `floor(A007619(n+1)/2)` -/
def P10890662295112534932.Spec : Prop :=
  ∀ n, P10890662295112534932.a n = A129742 (n + 1)

end A129742

/-! ## A129742.P45094759913345465

`floor(A157249(p?[comp[n²]])/2)`
-/

namespace A129742.P45094759913345465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157249 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2⌋

end

end A129742.P45094759913345465

namespace A129742

/-- `floor(A157249(p?[comp[n²]])/2)` -/
def P45094759913345465.Spec : Prop :=
  ∀ n, P45094759913345465.a n = A129742 (n + 1)

end A129742

/-! ## A129742.P6303604991547075257

`A324513(A000040(n+1))`
-/

namespace A129742.P6303604991547075257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324513 (A000040 (n + 1)).toNat

end

end A129742.P6303604991547075257

namespace A129742

/-- `A324513(A000040(n+1))` -/
def P6303604991547075257.Spec : Prop :=
  ∀ n, P6303604991547075257.a n = A129742 (n + 1)

end A129742

/-!
# A129743: a(n) = -(u^n-1)*(v^n-1) with u = 2+sqrt(3), v = 2-sqrt(3).

The programs for A129743, the canonical program `A129743.P12636303317327473621` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129743 has offset 1).

The definition of A129743 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129743.P5761974791749086576

`ogf((2+2x)/(1-5x+5x^2-x^3))`
-/

namespace A129743.P5761974791749086576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2] [1, -5, 5, -1] n

end

end A129743.P5761974791749086576

namespace A129743

/-- `ogf((2+2x)/(1-5x+5x^2-x^3))` -/
def P5761974791749086576.Spec : Prop :=
  ∀ n, P5761974791749086576.a n = A129743 (n + 1)

end A129743

/-! ## A129743.P12636303317327473621

`5*a(n-1)-5*a(n-2)+a(n-3)` with `a(0)=2, a(1)=12, a(2)=50`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129743

/-- `5*a(n-1)-5*a(n-2)+a(n-3)` -/
def P12636303317327473621.Spec : Prop :=
  ∀ n, P12636303317327473621.a n = A129743 (n + 1)

theorem P12636303317327473621.correct : P12636303317327473621.Spec := by
  intro n
  simp only [A129743, Nat.add_sub_cancel]

end A129743

/-! ## A129743.P14947795176935181434

`2*A092184(n+1)`
-/

namespace A129743.P14947795176935181434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092184 (n + 1)

end

end A129743.P14947795176935181434

namespace A129743

/-- `2*A092184(n+1)` -/
def P14947795176935181434.Spec : Prop :=
  ∀ n, P14947795176935181434.a n = A129743 (n + 1)

end A129743

/-! ## A129743.P1611779101325799247

`∑[ogf((2+2x)/(1-4x+x^2))]`
-/

namespace A129743.P1611779101325799247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2] [1, -4, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129743.P1611779101325799247

namespace A129743

/-- `∑[ogf((2+2x)/(1-4x+x^2))]` -/
def P1611779101325799247.Spec : Prop :=
  ∀ n, P1611779101325799247.a n = A129743 (n + 1)

end A129743

/-! ## A129743.P13468141791546490622

`floor((sqrt(3)+2)^(n+1))-1`
-/

namespace A129743.P13468141791546490622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (3 : ℝ) + 2) ^ (n + 1)⌋ - 1

end

end A129743.P13468141791546490622

namespace A129743

/-- `floor((sqrt(3)+2)^(n+1))-1` -/
def P13468141791546490622.Spec : Prop :=
  ∀ n, P13468141791546490622.a n = A129743 (n + 1)

end A129743

/-! ## A129743.P6478200085371051190

`xor(1, floor((sqrt(3)+2)^(n+1)))`
-/

namespace A129743.P6478200085371051190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌊(Real.sqrt (3 : ℝ) + 2) ^ (n + 1)⌋

end

end A129743.P6478200085371051190

namespace A129743

/-- `xor(1, floor((sqrt(3)+2)^(n+1)))` -/
def P6478200085371051190.Spec : Prop :=
  ∀ n, P6478200085371051190.a n = A129743 (n + 1)

end A129743

/-! ## A129743.P12616014069115624601

`∑[ceil((sqrt(3)+2)*a(n-1))]` with `a(0)=2, a(1)=10`
-/

namespace A129743.P12616014069115624601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 10] fun n f1 =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129743.P12616014069115624601

namespace A129743

/-- `∑[ceil((sqrt(3)+2)*a(n-1))]` -/
def P12616014069115624601.Spec : Prop :=
  ∀ n, P12616014069115624601.a n = A129743 (n + 1)

end A129743

/-! ## A129743.P5894361291209514174

`∑[4*a(n-1)-a(n-2)]` with `a(0)=2, a(1)=10`
-/

namespace A129743.P5894361291209514174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 10] fun n f1 =>
  4 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129743.P5894361291209514174

namespace A129743

/-- `∑[4*a(n-1)-a(n-2)]` -/
def P5894361291209514174.Spec : Prop :=
  ∀ n, P5894361291209514174.a n = A129743 (n + 1)

end A129743

/-! ## A129743.P5710899398745340303

`∑[2*A001834(n)]`
-/

namespace A129743.P5710899398745340303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129743.P5710899398745340303

namespace A129743

/-- `∑[2*A001834(n)]` -/
def P5710899398745340303.Spec : Prop :=
  ∀ n, P5710899398745340303.a n = A129743 (n + 1)

end A129743

/-! ## A129743.P18402203945153925707

`record[A174500(n+2)]`
-/

namespace A129743.P18402203945153925707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174500 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129743.P18402203945153925707

namespace A129743

/-- `record[A174500(n+2)]` -/
def P18402203945153925707.Spec : Prop :=
  ∀ n, P18402203945153925707.a n = A129743 (n + 1)

end A129743

/-! ## A129743.P13383310632974675454

`∑[abs(Δ[A003500(n)])]`
-/

namespace A129743.P13383310632974675454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003500 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129743.P13383310632974675454

namespace A129743

/-- `∑[abs(Δ[A003500(n)])]` -/
def P13383310632974675454.Spec : Prop :=
  ∀ n, P13383310632974675454.a n = A129743 (n + 1)

end A129743

/-! ## A129743.P4709196237829333227

`∑[abs(Δ[A016064(n)])]`
-/

namespace A129743.P4709196237829333227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016064 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129743.P4709196237829333227

namespace A129743

/-- `∑[abs(Δ[A016064(n)])]` -/
def P4709196237829333227.Spec : Prop :=
  ∀ n, P4709196237829333227.a n = A129743 (n + 1)

end A129743

/-! ## A129743.P5772151356279272439

`A174500(2*(n+1))`
-/

namespace A129743.P5772151356279272439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174500 (2 * (n + 1))

end

end A129743.P5772151356279272439

namespace A129743

/-- `A174500(2*(n+1))` -/
def P5772151356279272439.Spec : Prop :=
  ∀ n, P5772151356279272439.a n = A129743 (n + 1)

end A129743

/-! ## A129743.P17912302618140252559

`2*(A102206(n)-2)`
-/

namespace A129743.P17912302618140252559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A102206 n - 2)

end

end A129743.P17912302618140252559

namespace A129743

/-- `2*(A102206(n)-2)` -/
def P17912302618140252559.Spec : Prop :=
  ∀ n, P17912302618140252559.a n = A129743 (n + 1)

end A129743

/-! ## A129743.P13297105402200062597

`∑[2*Δ[A001075(n)]]`
-/

namespace A129743.P13297105402200062597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129743.P13297105402200062597

namespace A129743

/-- `∑[2*Δ[A001075(n)]]` -/
def P13297105402200062597.Spec : Prop :=
  ∀ n, P13297105402200062597.a n = A129743 (n + 1)

end A129743

/-! ## A129743.P13700926022453287515

`∑[2*Δ[A121401(n)]]`
-/

namespace A129743.P13700926022453287515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121401 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129743.P13700926022453287515

namespace A129743

/-- `∑[2*Δ[A121401(n)]]` -/
def P13700926022453287515.Spec : Prop :=
  ∀ n, P13700926022453287515.a n = A129743 (n + 1)

end A129743

/-! ## A129743.P7636320238569215423

`∑[A321119(2*n+1)]`
-/

namespace A129743.P7636320238569215423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321119 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129743.P7636320238569215423

namespace A129743

/-- `∑[A321119(2*n+1)]` -/
def P7636320238569215423.Spec : Prop :=
  ∀ n, P7636320238569215423.a n = A129743 (n + 1)

end A129743

/-! ## A129743.P6594729448419028171

`∑[A351635(2*n+1)]`
-/

namespace A129743.P6594729448419028171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351635 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129743.P6594729448419028171

namespace A129743

/-- `∑[A351635(2*n+1)]` -/
def P6594729448419028171.Spec : Prop :=
  ∀ n, P6594729448419028171.a n = A129743 (n + 1)

end A129743

/-! ## A129743.P5665893907848871882

`2*(Δ[A001571(n)]-1)`
-/

namespace A129743.P5665893907848871882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - 1)

end

end A129743.P5665893907848871882

namespace A129743

/-- `2*(Δ[A001571(n)]-1)` -/
def P5665893907848871882.Spec : Prop :=
  ∀ n, P5665893907848871882.a n = A129743 (n + 1)

end A129743

/-! ## A129743.P8435428069218881468

`2*(Δ[A082840(n)]-1)`
-/

namespace A129743.P8435428069218881468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - 1)

end

end A129743.P8435428069218881468

namespace A129743

/-- `2*(Δ[A082840(n)]-1)` -/
def P8435428069218881468.Spec : Prop :=
  ∀ n, P8435428069218881468.a n = A129743 (n + 1)

end A129743

/-!
# A129744: a(n) = -(u^n-1)*(v^n-1) with u = 1+sqrt(2), v = 1-sqrt(2).

The programs for A129744, the canonical program `A129744.P3191332359840827283` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129744 has offset 1).

The definition of A129744 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129744.P12779947638730140308

`ogf((2+2x^2)/(1-2x-2x^2+2x^3+x^4))`
-/

namespace A129744.P12779947638730140308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 2] [1, -2, -2, 2, 1] n

end

end A129744.P12779947638730140308

namespace A129744

/-- `ogf((2+2x^2)/(1-2x-2x^2+2x^3+x^4))` -/
def P12779947638730140308.Spec : Prop :=
  ∀ n, P12779947638730140308.a n = A129744 (n + 1)

end A129744

/-! ## A129744.P3191332359840827283

`2*a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=2, a(1)=4, a(2)=14, a(3)=32`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129744

/-- `2*a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)` -/
def P3191332359840827283.Spec : Prop :=
  ∀ n, P3191332359840827283.a n = A129744 (n + 1)

theorem P3191332359840827283.correct : P3191332359840827283.Spec := by
  intro n
  simp only [A129744, Nat.add_sub_cancel]

end A129744

/-! ## A129744.P504632052039501813

`2*A113224(n)`
-/

namespace A129744.P504632052039501813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113224 n

end

end A129744.P504632052039501813

namespace A129744

/-- `2*A113224(n)` -/
def P504632052039501813.Spec : Prop :=
  ∀ n, P504632052039501813.a n = A129744 (n + 1)

end A129744

/-! ## A129744.P9581328919572262746

`a(n-2)+2*(a(n-1)+a(n-2)%4)` with `a(0)=2, a(1)=4`
-/

namespace A129744.P9581328919572262746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 2) + 2 * (a (n - 1) + a (n - 2) % 4)

end

end A129744.P9581328919572262746

namespace A129744

/-- `a(n-2)+2*(a(n-1)+a(n-2)%4)` -/
def P9581328919572262746.Spec : Prop :=
  ∀ n, (P9581328919572262746.a n : ℤ) = A129744 (n + 1)

end A129744

/-! ## A129744.P9564991874174430547

`A182143(n+1)-1`
-/

namespace A129744.P9564991874174430547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182143 (n + 1) - 1

end

end A129744.P9564991874174430547

namespace A129744

/-- `A182143(n+1)-1` -/
def P9564991874174430547.Spec : Prop :=
  ∀ n, P9564991874174430547.a n = A129744 (n + 1)

end A129744

/-! ## A129744.P263062785609285489

`A162485(n+1)-2`
-/

namespace A129744.P263062785609285489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162485 (n + 1) - 2

end

end A129744.P263062785609285489

namespace A129744

/-- `A162485(n+1)-2` -/
def P263062785609285489.Spec : Prop :=
  ∀ n, P263062785609285489.a n = A129744 (n + 1)

end A129744

/-! ## A129744.P8826689209132496722

`xor(3, A051927(n+1))`
-/

namespace A129744.P8826689209132496722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A051927 (n + 1))

end

end A129744.P8826689209132496722

namespace A129744

/-- `xor(3, A051927(n+1))` -/
def P8826689209132496722.Spec : Prop :=
  ∀ n, P8826689209132496722.a n = A129744 (n + 1)

end A129744

/-! ## A129744.P17946258233115932741

`∑[2*A137199(n+1)]`
-/

namespace A129744.P17946258233115932741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129744.P17946258233115932741

namespace A129744

/-- `∑[2*A137199(n+1)]` -/
def P17946258233115932741.Spec : Prop :=
  ∀ n, P17946258233115932741.a n = A129744 (n + 1)

end A129744

/-! ## A129744.P796405303019147585

`or(1, A080039(n+1))-1`
-/

namespace A129744.P796405303019147585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A080039 (n + 1)) - 1

end

end A129744.P796405303019147585

namespace A129744

/-- `or(1, A080039(n+1))-1` -/
def P796405303019147585.Spec : Prop :=
  ∀ n, P796405303019147585.a n = A129744 (n + 1)

end A129744

/-! ## A129744.P14930372054749859912

`A002203(n+1)-2*n%2`
-/

namespace A129744.P14930372054749859912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (n + 1) - ((2 * (n % 2) : ℕ) : ℤ)

end

end A129744.P14930372054749859912

namespace A129744

/-- `A002203(n+1)-2*n%2` -/
def P14930372054749859912.Spec : Prop :=
  ∀ n, P14930372054749859912.a n = A129744 (n + 1)

end A129744

/-! ## A129744.P12709748758387479361

`2*(A078057(n)-val(n²+1, 2))`
-/

namespace A129744.P12709748758387479361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A078057 n - (SequenceMachineLib.valuation (n ^ 2 + 1) 2 : ℤ))

end

end A129744.P12709748758387479361

namespace A129744

/-- `2*(A078057(n)-val(n²+1, 2))` -/
def P12709748758387479361.Spec : Prop :=
  ∀ n, P12709748758387479361.a n = A129744 (n + 1)

end A129744

/-! ## A129744.P1312072924161860161

`A175658(n)+A099430(n)`
-/

namespace A129744.P1312072924161860161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175658 n + A099430 n

end

end A129744.P1312072924161860161

namespace A129744

/-- `A175658(n)+A099430(n)` -/
def P1312072924161860161.Spec : Prop :=
  ∀ n, P1312072924161860161.a n = A129744 (n + 1)

end A129744

/-! ## A129744.P16727262103229916642

`A002203(n+1)-A010673(n)`
-/

namespace A129744.P16727262103229916642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (n + 1) - A010673 n

end

end A129744.P16727262103229916642

namespace A129744

/-- `A002203(n+1)-A010673(n)` -/
def P16727262103229916642.Spec : Prop :=
  ∀ n, P16727262103229916642.a n = A129744 (n + 1)

end A129744

/-! ## A129744.P2849042905679840173

`A080039(n+1)-A000035(n)`
-/

namespace A129744.P2849042905679840173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080039 (n + 1) - A000035 n

end

end A129744.P2849042905679840173

namespace A129744

/-- `A080039(n+1)-A000035(n)` -/
def P2849042905679840173.Spec : Prop :=
  ∀ n, P2849042905679840173.a n = A129744 (n + 1)

end A129744

/-! ## A129744.P15866139450666287742

`A111954(n)+A005409(n+2)`
-/

namespace A129744.P15866139450666287742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111954 n + A005409 (n + 2)

end

end A129744.P15866139450666287742

namespace A129744

/-- `A111954(n)+A005409(n+2)` -/
def P15866139450666287742.Spec : Prop :=
  ∀ n, P15866139450666287742.a n = A129744 (n + 1)

end A129744

/-! ## A129744.P4242321204015185759

`A162484(n+1)-A010675(n)`
-/

namespace A129744.P4242321204015185759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162484 (n + 1) - A010675 n

end

end A129744.P4242321204015185759

namespace A129744

/-- `A162484(n+1)-A010675(n)` -/
def P4242321204015185759.Spec : Prop :=
  ∀ n, P4242321204015185759.a n = A129744 (n + 1)

end A129744

/-! ## A129744.P14493072362863941494

`A048654(n)+A114647(n)-2`
-/

namespace A129744.P14493072362863941494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n + (A114647 n - 2)

end

end A129744.P14493072362863941494

namespace A129744

/-- `A048654(n)+A114647(n)-2` -/
def P14493072362863941494.Spec : Prop :=
  ∀ n, P14493072362863941494.a n = A129744 (n + 1)

end A129744

/-! ## A129744.P12620678611118595605

`2*(A078057(n)-A000035(n))`
-/

namespace A129744.P12620678611118595605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A078057 n - A000035 n)

end

end A129744.P12620678611118595605

namespace A129744

/-- `2*(A078057(n)-A000035(n))` -/
def P12620678611118595605.Spec : Prop :=
  ∀ n, P12620678611118595605.a n = A129744 (n + 1)

end A129744

/-! ## A129744.P2175640511628481011

`2*(A100828(n)-A010673(n))`
-/

namespace A129744.P2175640511628481011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A100828 n - A010673 n)

end

end A129744.P2175640511628481011

namespace A129744

/-- `2*(A100828(n)-A010673(n))` -/
def P2175640511628481011.Spec : Prop :=
  ∀ n, P2175640511628481011.a n = A129744 (n + 1)

end A129744

/-! ## A129744.P15736551422234179650

`2*(A048739(n)-A097076(n))`
-/

namespace A129744.P15736551422234179650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A048739 n - A097076 n)

end

end A129744.P15736551422234179650

namespace A129744

/-- `2*(A048739(n)-A097076(n))` -/
def P15736551422234179650.Spec : Prop :=
  ∀ n, P15736551422234179650.a n = A129744 (n + 1)

end A129744

/-!
# A129745: Numbers k such that Lucas(4k)/7 is prime.

The programs for A129745, there is no canonical definition to state claims against.
-/

/-! ## A129745.P13869059668038136816

`record[p?[A007913(A061445(n+1))]]`
-/

namespace A129745.P13869059668038136816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A061445 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129745.P13869059668038136816

/-! ## A129745.P10353618713892016560

`p?[A292144(A061445(n+1))]`
-/

namespace A129745.P10353618713892016560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292144 (A061445 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129745.P10353618713892016560

/-!
# A129746: Numbers k such that the sum of the first k primes with the final digit 3 is prime.

The programs for A129746, there is no canonical definition to state claims against.
-/

/-! ## A129746.P3429045564954733347

`(13^n)%A172462(∑[ceil(atan(n))^n])`
-/

namespace A129746.P3429045564954733347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n : ℝ)⌉ ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (13 ^ n : ℤ) (A172462 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A129746.P3429045564954733347

/-!
# A129747: Numbers n such that the sum of the first n primes with the final digit 7 is prime.

The programs for A129747, there is no canonical definition to state claims against.
-/

/-! ## A129747.P17829024580928884115

`record[A321904(∑[A290479(n+1)])]`
-/

namespace A129747.P17829024580928884115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290479 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321904 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129747.P17829024580928884115

/-!
# A129749: Numbers k that divide the sum of the first k nonprimes.

The programs for A129749, there is no canonical definition to state claims against.
-/

/-! ## A129749.P8319221582292338023

`A164280(n+1)/A160758(n+1)`
-/

namespace A129749.P8319221582292338023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164280 (n + 1) : ℚ) / (A160758 (n + 1) : ℚ)

end

end A129749.P8319221582292338023

/-!
# A129750: Absolute difference of final digits of consecutive primes.

The programs for A129750, the canonical program `A129750.P3455793186176669524` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129750 has offset 1).

The definition of A129750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129750.P3455793186176669524

`abs(A000040(n+2)%10-A000040(n+1)%10)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A129750

/-- `abs(A000040(n+2)%10-A000040(n+1)%10)` -/
def P3455793186176669524.Spec : Prop :=
  ∀ n, P3455793186176669524.a n = A129750 (n + 1)

theorem P3455793186176669524.correct : P3455793186176669524.Spec := by
  intro n
  simp only [A129750, Nat.add_sub_cancel]

end A129750

/-! ## A129750.P10984416320503325251

`abs(Δ[A007652(n+1)])`
-/

namespace A129750.P10984416320503325251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A129750.P10984416320503325251

namespace A129750

/-- `abs(Δ[A007652(n+1)])` -/
def P10984416320503325251.Spec : Prop :=
  ∀ n, P10984416320503325251.a n = A129750 (n + 1)

end A129750

/-! ## A129750.P6771741552477199108

`abs(Δ[A072003(n+1)])`
-/

namespace A129750.P6771741552477199108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A129750.P6771741552477199108

namespace A129750

/-- `abs(Δ[A072003(n+1)])` -/
def P6771741552477199108.Spec : Prop :=
  ∀ n, P6771741552477199108.a n = A129750 (n + 1)

end A129750

/-! ## A129750.P3962716953412360307

`abs(Δ[A277097(n+1)])`
-/

namespace A129750.P3962716953412360307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A129750.P3962716953412360307

namespace A129750

/-- `abs(Δ[A277097(n+1)])` -/
def P3962716953412360307.Spec : Prop :=
  ∀ n, P3962716953412360307.a n = A129750 (n + 1)

end A129750

/-! ## A129750.P8074913027178896893

`abs(Δ[A000040(n+1)%10])`
-/

namespace A129750.P8074913027178896893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A129750.P8074913027178896893

namespace A129750

/-- `abs(Δ[A000040(n+1)%10])` -/
def P8074913027178896893.Spec : Prop :=
  ∀ n, P8074913027178896893.a n = A129750 (n + 1)

theorem P8074913027178896893.correct : P8074913027178896893.Spec := by
  intro n
  simp only [A129750, Nat.add_sub_cancel, A129750.P8074913027178896893.f1, A129750.P8074913027178896893.a, A129750.P3455793186176669524.a, SequenceMachineLib.memo_apply]

end A129750

/-! ## A129750.P2743271974559139283

`abs(Δ[A006093(n+1)%10])`
-/

namespace A129750.P2743271974559139283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A129750.P2743271974559139283

namespace A129750

/-- `abs(Δ[A006093(n+1)%10])` -/
def P2743271974559139283.Spec : Prop :=
  ∀ n, P2743271974559139283.a n = A129750 (n + 1)

end A129750

/-! ## A129750.P9611695426604333387

`abs(Δ[dr(A000040(2*n-(n-1))%10)])`
-/

namespace A129750.P9611695426604333387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A129750.P9611695426604333387

namespace A129750

/-- `abs(Δ[dr(A000040(2*n-(n-1))%10)])` -/
def P9611695426604333387.Spec : Prop :=
  ∀ n, P9611695426604333387.a n = A129750 (n + 1)

end A129750

/-! ## A129750.P2080209178635920658

`∑{d}[Δ[A007652(n+1)], A000010(#)]`
-/

namespace A129750.P2080209178635920658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A129750.P2080209178635920658

namespace A129750

/-- `∑{d}[Δ[A007652(n+1)], A000010(#)]` -/
def P2080209178635920658.Spec : Prop :=
  ∀ n, P2080209178635920658.a n = A129750 (n + 1)

end A129750

/-! ## A129750.P9471214223820727692

`abs(A007652(n+1)-A007652(n+2))`
-/

namespace A129750.P9471214223820727692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007652 (n + 1) - A007652 (n + 2)|

end

end A129750.P9471214223820727692

namespace A129750

/-- `abs(A007652(n+1)-A007652(n+2))` -/
def P9471214223820727692.Spec : Prop :=
  ∀ n, P9471214223820727692.a n = A129750 (n + 1)

end A129750

/-! ## A129750.P15230675673247564232

`gcd(A008683(4*(n+1)), Δ[A007652(n+1)])`
-/

namespace A129750.P15230675673247564232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (4 * (n + 1))) (f1 (n + 1) - f1 n)

end

end A129750.P15230675673247564232

namespace A129750

/-- `gcd(A008683(4*(n+1)), Δ[A007652(n+1)])` -/
def P15230675673247564232.Spec : Prop :=
  ∀ n, (P15230675673247564232.a n : ℤ) = A129750 (n + 1)

end A129750

/-! ## A129750.P14536198931808777974

`abs(Δ[record[A000010(n+1)]%10])`
-/

namespace A129750.P14536198931808777974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A129750.P14536198931808777974

namespace A129750

/-- `abs(Δ[record[A000010(n+1)]%10])` -/
def P14536198931808777974.Spec : Prop :=
  ∀ n, P14536198931808777974.a n = A129750 (n + 1)

end A129750

/-! ## A129750.P2964301158337121430

`abs(Δ[A228355(A068670(n))])`
-/

namespace A129750.P2964301158337121430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228355 (A068670 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A129750.P2964301158337121430

namespace A129750

/-- `abs(Δ[A228355(A068670(n))])` -/
def P2964301158337121430.Spec : Prop :=
  ∀ n, P2964301158337121430.a n = A129750 (n + 1)

end A129750

/-! ## A129750.P11932972211840813218

`abs(Δ[p?[comp[A018252(n+1)]]%10])`
-/

namespace A129750.P11932972211840813218
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) % 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A129750.P11932972211840813218

namespace A129750

/-- `abs(Δ[p?[comp[A018252(n+1)]]%10])` -/
def P11932972211840813218.Spec : Prop :=
  ∀ n, P11932972211840813218.a n = A129750 (n + 1)

end A129750

/-! ## A129750.P3410596196209352976

`abs(Δ[A000030(A004087(n+1))])`
-/

namespace A129750.P3410596196209352976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A004087 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A129750.P3410596196209352976

namespace A129750

/-- `abs(Δ[A000030(A004087(n+1))])` -/
def P3410596196209352976.Spec : Prop :=
  ∀ n, P3410596196209352976.a n = A129750 (n + 1)

end A129750

/-! ## A129750.P7123845720533194215

`abs(Δ[A010879(A000040(n+1))])`
-/

namespace A129750.P7123845720533194215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A129750.P7123845720533194215

namespace A129750

/-- `abs(Δ[A010879(A000040(n+1))])` -/
def P7123845720533194215.Spec : Prop :=
  ∀ n, P7123845720533194215.a n = A129750 (n + 1)

end A129750

/-! ## A129750.P10155687271234583393

`abs(Δ[A010879(A006093(n+1))])`
-/

namespace A129750.P10155687271234583393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A129750.P10155687271234583393

namespace A129750

/-- `abs(Δ[A010879(A006093(n+1))])` -/
def P10155687271234583393.Spec : Prop :=
  ∀ n, P10155687271234583393.a n = A129750 (n + 1)

end A129750

/-!
# A129752: Triangular numbers t which are average of two consecutive primes p and p+4.

The programs for A129752, there is no canonical definition to state claims against.
-/

/-! ## A129752.P775770395152183887

`∩[A171569(n+1), A171570(n+1)]`
-/

namespace A129752.P775770395152183887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129752.P775770395152183887

/-! ## A129752.P13721348085673790054

`∩[A171570(n+1), A000217(A181902(n+2))]`
-/

namespace A129752.P13721348085673790054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A181902 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129752.P13721348085673790054

/-! ## A129752.P6462204019732394715

`∩[A130178(n+1), A171569(n+1)]`
-/

namespace A129752.P6462204019732394715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129752.P6462204019732394715

/-! ## A129752.P8607795868371259172

`∩[A130178(n+1), A171570(n+1)]`
-/

namespace A129752.P8607795868371259172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129752.P8607795868371259172

/-! ## A129752.P17439811236428798930

`∩[A055472(n+1)-2, A130178(n+1)]`
-/

namespace A129752.P17439811236428798930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055472 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129752.P17439811236428798930

/-! ## A129752.P12591656630203852999

`∩[A130178(n+1), A154634(n+1)+2]`
-/

namespace A129752.P12591656630203852999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154634 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129752.P12591656630203852999

/-! ## A129752.P12483182744329484478

`∩[A171570(n+1), A161680(A181902(n+2)+1)]`
-/

namespace A129752.P12483182744329484478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A181902 (n + 2) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129752.P12483182744329484478

/-! ## A129752.P4472108036145231642

`∩[A029708(n+1), A000217(n)]`
-/

namespace A129752.P4472108036145231642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129752.P4472108036145231642

/-! ## A129752.P12286071531994262608

`∩[A029708(n+1), A001972(n)]`
-/

namespace A129752.P12286071531994262608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129752.P12286071531994262608

/-!
# A129753: Floor(prime(n)/nonprime(n)).

The programs for A129753, the canonical program `A129753.P16090277469071103604` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129753 has offset 1).

The definition of A129753 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A129753.P16090277469071103604

`floor(A000040(n+1)/A018252(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A129753

/-- `floor(A000040(n+1)/A018252(n+1))` -/
def P16090277469071103604.Spec : Prop :=
  ∀ n, P16090277469071103604.a n = A129753 (n + 1)

theorem P16090277469071103604.correct : P16090277469071103604.Spec := by
  intro n
  simp only [A129753, Nat.add_sub_cancel]

end A129753

/-! ## A129753.P9134484020282647288

`floor(Δ[A007504(n)]/A018252(n+1))`
-/

namespace A129753.P9134484020282647288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (A018252 (n + 1) : ℚ)⌋

end

end A129753.P9134484020282647288

namespace A129753

/-- `floor(Δ[A007504(n)]/A018252(n+1))` -/
def P9134484020282647288.Spec : Prop :=
  ∀ n, P9134484020282647288.a n = A129753 (n + 1)

end A129753

/-! ## A129753.P5464755862721894882

`floor(A000040(n+1)/Δ[A051349(n)])`
-/

namespace A129753.P5464755862721894882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A129753.P5464755862721894882

namespace A129753

/-- `floor(A000040(n+1)/Δ[A051349(n)])` -/
def P5464755862721894882.Spec : Prop :=
  ∀ n, P5464755862721894882.a n = A129753 (n + 1)

end A129753

/-! ## A129753.P6862765020965231505

`floor(p?[A259153(n)]/A018252(n+1))`
-/

namespace A129753.P6862765020965231505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A018252 (n + 1) : ℚ)⌋

end

end A129753.P6862765020965231505

namespace A129753

/-- `floor(p?[A259153(n)]/A018252(n+1))` -/
def P6862765020965231505.Spec : Prop :=
  ∀ n, P6862765020965231505.a n = A129753 (n + 1)

end A129753

/-! ## A129753.P11177575243783094448

`floor(A073846(2*(n+1))/A073846(2*n+1))`
-/

namespace A129753.P11177575243783094448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073846 (2 * (n + 1)) : ℚ) / (A073846 (2 * n + 1) : ℚ)⌋

end

end A129753.P11177575243783094448

namespace A129753

/-- `floor(A073846(2*(n+1))/A073846(2*n+1))` -/
def P11177575243783094448.Spec : Prop :=
  ∀ n, P11177575243783094448.a n = A129753 (n + 1)

end A129753

/-! ## A129753.P14751502621894512422

`(A000040(n+1)-A179650(n+1))/A018252(n+1)`
-/

namespace A129753.P14751502621894512422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - A179650 (n + 1) : ℚ) / (A018252 (n + 1) : ℚ)

end

end A129753.P14751502621894512422

namespace A129753

/-- `(A000040(n+1)-A179650(n+1))/A018252(n+1)` -/
def P14751502621894512422.Spec : Prop :=
  ∀ n, P14751502621894512422.a n = (A129753 (n + 1) : ℚ)

end A129753

/-!
# A129755: Triangular numbers t such that t+10 is a prime.

The programs for A129755, the canonical program `A129755.P8340561702617959048` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129755 has offset 1).

The definition of A129755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129755.P8340561702617959048

`p?[C(n, 2)+10]-10`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129755

/-- `p?[C(n, 2)+10]-10` -/
def P8340561702617959048.Spec : Prop :=
  ∀ n, P8340561702617959048.a n = A129755 (n + 1)

theorem P8340561702617959048.correct : P8340561702617959048.Spec := by
  intro n
  simp only [A129755, Nat.add_sub_cancel]

end A129755

/-! ## A129755.P9044285591702117666

`abs(10-p?[∑[n]+10])`
-/

namespace A129755.P9044285591702117666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |10 - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)|

end

end A129755.P9044285591702117666

namespace A129755

/-- `abs(10-p?[∑[n]+10])` -/
def P9044285591702117666.Spec : Prop :=
  ∀ n, P9044285591702117666.a n = A129755 (n + 1)

end A129755

/-! ## A129755.P1988685793138331316

`p?[a(n-1)+n]-10` with `a(0)=10`
-/

namespace A129755.P1988685793138331316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 10

end

end A129755.P1988685793138331316

namespace A129755

/-- `p?[a(n-1)+n]-10` -/
def P1988685793138331316.Spec : Prop :=
  ∀ n, P1988685793138331316.a n = A129755 (n + 1)

end A129755

/-! ## A129755.P874330850463748214

`abs(p?[A000217(n)+10]-10)`
-/

namespace A129755.P874330850463748214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 10|

end

end A129755.P874330850463748214

namespace A129755

/-- `abs(p?[A000217(n)+10]-10)` -/
def P874330850463748214.Spec : Prop :=
  ∀ n, P874330850463748214.a n = A129755 (n + 1)

end A129755

/-! ## A129755.P2693163626069481528

`∩[A172407(n+1), A000217(n)]`
-/

namespace A129755.P2693163626069481528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129755.P2693163626069481528

namespace A129755

/-- `∩[A172407(n+1), A000217(n)]` -/
def P2693163626069481528.Spec : Prop :=
  ∀ n, (P2693163626069481528.a n : ℤ) = A129755 (n + 1)

end A129755

/-! ## A129755.P17842309484680632509

`∩[A172407(n+1), A001972(n)]`
-/

namespace A129755.P17842309484680632509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129755.P17842309484680632509

namespace A129755

/-- `∩[A172407(n+1), A001972(n)]` -/
def P17842309484680632509.Spec : Prop :=
  ∀ n, (P17842309484680632509.a n : ℤ) = A129755 (n + 1)

end A129755

/-! ## A129755.P14283006074156323658

`∩[A014493(n+1), A172407(n+1)]`
-/

namespace A129755.P14283006074156323658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129755.P14283006074156323658

namespace A129755

/-- `∩[A014493(n+1), A172407(n+1)]` -/
def P14283006074156323658.Spec : Prop :=
  ∀ n, (P14283006074156323658.a n : ℤ) = A129755 (n + 1)

end A129755

/-! ## A129755.P18061520514491259455

`∩[A074314(n+1), A172407(n+1)]`
-/

namespace A129755.P18061520514491259455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129755.P18061520514491259455

namespace A129755

/-- `∩[A074314(n+1), A172407(n+1)]` -/
def P18061520514491259455.Spec : Prop :=
  ∀ n, (P18061520514491259455.a n : ℤ) = A129755 (n + 1)

end A129755

/-! ## A129755.P11406357737896472088

`∩[A082667(n+1), A172407(n+1)]`
-/

namespace A129755.P11406357737896472088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129755.P11406357737896472088

namespace A129755

/-- `∩[A082667(n+1), A172407(n+1)]` -/
def P11406357737896472088.Spec : Prop :=
  ∀ n, (P11406357737896472088.a n : ℤ) = A129755 (n + 1)

end A129755

/-!
# A129756: Repetitions of odd numbers four times.

The programs for A129756, the canonical program `A129756.P177371408475453503` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129756 has offset 0).

The definition of A129756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129756.P177371408475453503

`1+2*floor(n/4)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129756

/-- `1+2*floor(n/4)` -/
def P177371408475453503.Spec : Prop :=
  ∀ n, P177371408475453503.a n = A129756 n

theorem P177371408475453503.correct : P177371408475453503.Spec := by
  intro n
  simp only [A129756]

end A129756

/-! ## A129756.P3198732042673564424

`ogf((1+x^4)/(1-x-x^4+x^5))`
-/

namespace A129756.P3198732042673564424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, 1] [1, -1, 0, 0, -1, 1] n

end

end A129756.P3198732042673564424

namespace A129756

/-- `ogf((1+x^4)/(1-x-x^4+x^5))` -/
def P3198732042673564424.Spec : Prop :=
  ∀ n, P3198732042673564424.a n = A129756 n

end A129756

/-! ## A129756.P13664137777628068152

`(2*n+1+2*cos(n*π/2)+cos(n*π)+2*sin(n*π/2))/4`
-/

namespace A129756.P13664137777628068152
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℝ) + 2 * Real.cos ((n : ℝ) * Real.pi / 2) + Real.cos ((n : ℝ) * Real.pi) + 2 * Real.sin ((n : ℝ) * Real.pi / 2)) / 4

end

end A129756.P13664137777628068152

namespace A129756

/-- `(2*n+1+2*cos(n*π/2)+cos(n*π)+2*sin(n*π/2))/4` -/
def P13664137777628068152.Spec : Prop :=
  ∀ n, P13664137777628068152.a n = (A129756 n : ℝ)

end A129756

/-! ## A129756.P6171363280007967364

`or(1, floor(n/2))`
-/

namespace A129756.P6171363280007967364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(n : ℚ) / 2⌋

end

end A129756.P6171363280007967364

namespace A129756

/-- `or(1, floor(n/2))` -/
def P6171363280007967364.Spec : Prop :=
  ∀ n, P6171363280007967364.a n = A129756 n

end A129756

/-! ## A129756.P5803628161539658875

`floor(cosh(log(or(2, n))))`
-/

namespace A129756.P5803628161539658875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (Nat.lor 2 n : ℝ))⌋

end

end A129756.P5803628161539658875

namespace A129756

/-- `floor(cosh(log(or(2, n))))` -/
def P5803628161539658875.Spec : Prop :=
  ∀ n, P5803628161539658875.a n = A129756 n

end A129756

/-! ## A129756.P12924144439945845024

`floor(sinh(log(or(3, n))))`
-/

namespace A129756.P12924144439945845024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (Nat.lor 3 n : ℝ))⌋

end

end A129756.P12924144439945845024

namespace A129756

/-- `floor(sinh(log(or(3, n))))` -/
def P12924144439945845024.Spec : Prop :=
  ∀ n, P12924144439945845024.a n = A129756 n

end A129756

/-! ## A129756.P10621102460453182324

`round(sinh(log(or(2, n))))`
-/

namespace A129756.P10621102460453182324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log (Nat.lor 2 n : ℝ)))

end

end A129756.P10621102460453182324

namespace A129756

/-- `round(sinh(log(or(2, n))))` -/
def P10621102460453182324.Spec : Prop :=
  ∀ n, P10621102460453182324.a n = A129756 n

end A129756

/-! ## A129756.P18050927919044139809

`(or(3, n)-1)/2`
-/

namespace A129756.P18050927919044139809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 3 n : ℤ) - 1 : ℚ) / 2

end

end A129756.P18050927919044139809

namespace A129756

/-- `(or(3, n)-1)/2` -/
def P18050927919044139809.Spec : Prop :=
  ∀ n, P18050927919044139809.a n = (A129756 n : ℚ)

end A129756

/-! ## A129756.P1076016044666715507

`xor(1, or(3, n))/2`
-/

namespace A129756.P1076016044666715507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (Nat.lor 3 n) : ℚ) / 2

end

end A129756.P1076016044666715507

namespace A129756

/-- `xor(1, or(3, n))/2` -/
def P1076016044666715507.Spec : Prop :=
  ∀ n, P1076016044666715507.a n = (A129756 n : ℚ)

end A129756

/-! ## A129756.P14442971663372084048

`and(n, -4)/2+1`
-/

namespace A129756.P14442971663372084048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-4) : ℚ) / 2 + 1

end

end A129756.P14442971663372084048

namespace A129756

/-- `and(n, -4)/2+1` -/
def P14442971663372084048.Spec : Prop :=
  ∀ n, P14442971663372084048.a n = (A129756 n : ℚ)

end A129756

/-! ## A129756.P8349380986066619206

`or(2, and(n, -2))/2`
-/

namespace A129756.P8349380986066619206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 2 (Int.land (n : ℤ) (-2)) : ℚ) / 2

end

end A129756.P8349380986066619206

namespace A129756

/-- `or(2, and(n, -2))/2` -/
def P8349380986066619206.Spec : Prop :=
  ∀ n, P8349380986066619206.a n = (A129756 n : ℚ)

end A129756

/-! ## A129756.P7529888673796780267

`xor(1, and(n, -4)/2)`
-/

namespace A129756.P7529888673796780267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-4) : ℚ) / 2))

end

end A129756.P7529888673796780267

namespace A129756

/-- `xor(1, and(n, -4)/2)` -/
def P7529888673796780267.Spec : Prop :=
  ∀ n, P7529888673796780267.a n = A129756 n

end A129756

/-! ## A129756.P539909951287524212

`xor(1, 2*floor(n/4))`
-/

namespace A129756.P539909951287524212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * ⌊(n : ℚ) / 4⌋)

end

end A129756.P539909951287524212

namespace A129756

/-- `xor(1, 2*floor(n/4))` -/
def P539909951287524212.Spec : Prop :=
  ∀ n, P539909951287524212.a n = A129756 n

end A129756

/-! ## A129756.P4773780756834334173

`(n-xor(n, -4))/4`
-/

namespace A129756.P4773780756834334173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - Int.xor (n : ℤ) (-4) : ℚ) / 4

end

end A129756.P4773780756834334173

namespace A129756

/-- `(n-xor(n, -4))/4` -/
def P4773780756834334173.Spec : Prop :=
  ∀ n, P4773780756834334173.a n = (A129756 n : ℚ)

end A129756

/-! ## A129756.P17281137380157695562

`ceil((xor(2, n)+n)/4)`
-/

namespace A129756.P17281137380157695562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 2 n + n : ℚ) / 4⌉

end

end A129756.P17281137380157695562

namespace A129756

/-- `ceil((xor(2, n)+n)/4)` -/
def P17281137380157695562.Spec : Prop :=
  ∀ n, P17281137380157695562.a n = A129756 n

end A129756

/-! ## A129756.P6999717698265875209

`(2-n%4+n)/2`
-/

namespace A129756.P6999717698265875209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - ((n % 4 : ℕ) : ℤ) + (n : ℤ) : ℚ) / 2

end

end A129756.P6999717698265875209

namespace A129756

/-- `(2-n%4+n)/2` -/
def P6999717698265875209.Spec : Prop :=
  ∀ n, P6999717698265875209.a n = (A129756 n : ℚ)

end A129756

/-! ## A129756.P5743372428220772684

`(n+2-and(3, n))/2`
-/

namespace A129756.P5743372428220772684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) - (Nat.land 3 n : ℤ) : ℚ) / 2

end

end A129756.P5743372428220772684

namespace A129756

/-- `(n+2-and(3, n))/2` -/
def P5743372428220772684.Spec : Prop :=
  ∀ n, P5743372428220772684.a n = (A129756 n : ℚ)

end A129756

/-! ## A129756.P8404176197739254796

`abs(a(n-4)+2)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A129756.P8404176197739254796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 4) + 2

end

end A129756.P8404176197739254796

namespace A129756

/-- `abs(a(n-4)+2)` -/
def P8404176197739254796.Spec : Prop :=
  ∀ n, (P8404176197739254796.a n : ℤ) = A129756 n

end A129756

/-! ## A129756.P11743006842527106224

`∑[abs(a(n-4))]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=2`
-/

namespace A129756.P11743006842527106224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129756.P11743006842527106224

namespace A129756

/-- `∑[abs(a(n-4))]` -/
def P11743006842527106224.Spec : Prop :=
  ∀ n, (P11743006842527106224.a n : ℤ) = A129756 n

end A129756

/-! ## A129756.P7193012208385501950

`∑[lcm(2, a(n-4))]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A129756.P7193012208385501950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0] fun n f1 =>
  Nat.lcm 2 (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129756.P7193012208385501950

namespace A129756

/-- `∑[lcm(2, a(n-4))]` -/
def P7193012208385501950.Spec : Prop :=
  ∀ n, (P7193012208385501950.a n : ℤ) = A129756 n

end A129756

/-!
# A129757: a(n) = ceiling((2^n + 1 - 2*floor(2^(n/2)))/2).

The programs for A129757, the canonical program `A129757.P2167394274768752537` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129757 has offset 1).

The definition of A129757 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((2^(n+1)+1-2*floor(2^((n+1)/2)))/2)` (program `A129757.P2167394274768752537`, by `A129757.P2167394274768752537.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129757.P2167394274768752537

`ceil((2^(n+1)+1-2*floor(2^((n+1)/2)))/2)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129757

/-- `ceil((2^(n+1)+1-2*floor(2^((n+1)/2)))/2)` -/
def P2167394274768752537.Spec : Prop :=
  ∀ n, P2167394274768752537.a n = A129757 (n + 1)

theorem P2167394274768752537.correct : P2167394274768752537.Spec := by
  intro n
  simp only [A129757, Nat.add_sub_cancel]

end A129757

/-! ## A129757.P5712778777277875800

`A000051(n)-floor(2^((n+1)/2))`
-/

namespace A129757.P5712778777277875800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - ⌊(2 : ℝ) ^ ((n + 1 : ℚ) / 2 : ℝ)⌋

end

end A129757.P5712778777277875800

namespace A129757

/-- `A000051(n)-floor(2^((n+1)/2))` -/
def P5712778777277875800.Spec : Prop :=
  ∀ n, P5712778777277875800.a n = A129757 (n + 1)

end A129757

/-! ## A129757.P15694722943426044572

`A000079(n)+1-A017910(n+1)`
-/

namespace A129757.P15694722943426044572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + 1 - A017910 (n + 1)

end

end A129757.P15694722943426044572

namespace A129757

/-- `A000079(n)+1-A017910(n+1)` -/
def P15694722943426044572.Spec : Prop :=
  ∀ n, P15694722943426044572.a n = A129757 (n + 1)

end A129757

/-! ## A129757.P12956208028460879749

`A000079(n)+2-A136417(n+1)`
-/

namespace A129757.P12956208028460879749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + 2 - A136417 (n + 1)

end

end A129757.P12956208028460879749

namespace A129757

/-- `A000079(n)+2-A136417(n+1)` -/
def P12956208028460879749.Spec : Prop :=
  ∀ n, P12956208028460879749.a n = A129757 (n + 1)

end A129757

/-! ## A129757.P11301775778372927804

`A136417(2*n)-A017910(n+1)`
-/

namespace A129757.P11301775778372927804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136417 (2 * n) - A017910 (n + 1)

end

end A129757.P11301775778372927804

namespace A129757

/-- `A136417(2*n)-A017910(n+1)` -/
def P11301775778372927804.Spec : Prop :=
  ∀ n, P11301775778372927804.a n = A129757 (n + 1)

end A129757

/-! ## A129757.P5796303803996487396

`∑[A011782(n)]+2-A136417(n+1)`
-/

namespace A129757.P5796303803996487396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 - A136417 (n + 1)

end

end A129757.P5796303803996487396

namespace A129757

/-- `∑[A011782(n)]+2-A136417(n+1)` -/
def P5796303803996487396.Spec : Prop :=
  ∀ n, P5796303803996487396.a n = A129757 (n + 1)

end A129757

/-! ## A129757.P10632613893766383845

`A011782(n+1)+2-A136417(n+1)`
-/

namespace A129757.P10632613893766383845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) + (2 - A136417 (n + 1))

end

end A129757.P10632613893766383845

namespace A129757

/-- `A011782(n+1)+2-A136417(n+1)` -/
def P10632613893766383845.Spec : Prop :=
  ∀ n, P10632613893766383845.a n = A129757 (n + 1)

end A129757

/-! ## A129757.P682919334488556403

`A017910(2*n)+1-A017910(n+1)`
-/

namespace A129757.P682919334488556403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (2 * n) + (1 - A017910 (n + 1))

end

end A129757.P682919334488556403

namespace A129757

/-- `A017910(2*n)+1-A017910(n+1)` -/
def P682919334488556403.Spec : Prop :=
  ∀ n, P682919334488556403.a n = A129757 (n + 1)

end A129757

/-! ## A129757.P13437766191759083884

`A136417(2*n)+1-A136417(n+1)`
-/

namespace A129757.P13437766191759083884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136417 (2 * n) + (1 - A136417 (n + 1))

end

end A129757.P13437766191759083884

namespace A129757

/-- `A136417(2*n)+1-A136417(n+1)` -/
def P13437766191759083884.Spec : Prop :=
  ∀ n, P13437766191759083884.a n = A129757 (n + 1)

end A129757

/-!
# A129758: Smallest prime p such that there are primes q and r with the property that p, q and r form an arithmetic progression and their sum is the same as three times the n-th prime number.

The programs for A129758, there is no canonical definition to state claims against.
-/

/-! ## A129758.P6504633896058098005

`A000040(n+3)-A078611(n+3)`
-/

namespace A129758.P6504633896058098005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) - A078611 (n + 3)

end

end A129758.P6504633896058098005

/-! ## A129758.P7076007128406706485

`A215848(n+1)-A078611(n+3)`
-/

namespace A129758.P7076007128406706485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - A078611 (n + 3)

end

end A129758.P7076007128406706485

/-! ## A129758.P10993780133201913665

`A078497(n+3)-A078611(n+3)-A078611(n+3)`
-/

namespace A129758.P10993780133201913665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078497 (n + 3) - A078611 (n + 3) - A078611 (n + 3)

end

end A129758.P10993780133201913665

/-! ## A129758.P1065208248745403819

`A078587(p?[2*n+5])`
-/

namespace A129758.P1065208248745403819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078587 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A129758.P1065208248745403819

/-! ## A129758.P15914438505085894750

`A078587(A215848(n+1))`
-/

namespace A129758.P15914438505085894750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078587 (A215848 (n + 1)).toNat

end

end A129758.P15914438505085894750

/-! ## A129758.P18383714435268477205

`A078587(A045344(n+2))`
-/

namespace A129758.P18383714435268477205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078587 (A045344 (n + 2)).toNat

end

end A129758.P18383714435268477205

/-! ## A129758.P17636889184506659580

`A078587(A065091(n+2))`
-/

namespace A129758.P17636889184506659580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078587 (A065091 (n + 2)).toNat

end

end A129758.P17636889184506659580

/-! ## A129758.P17054332055569774393

`A078587(A140475(n+2))`
-/

namespace A129758.P17054332055569774393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078587 (A140475 (n + 2)).toNat

end

end A129758.P17054332055569774393

/-! ## A129758.P1400972754302806799

`p?[2*n+5]-A082467(p?[2*n+5])`
-/

namespace A129758.P1400972754302806799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - A082467 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

end

end A129758.P1400972754302806799

/-! ## A129758.P14105178316225729808

`A241686(A004139(n+1))`
-/

namespace A129758.P14105178316225729808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241686 (A004139 (n + 1)).toNat

end

end A129758.P14105178316225729808

/-! ## A129758.P13854048176380743821

`A241686(A045319(n+2))`
-/

namespace A129758.P13854048176380743821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241686 (A045319 (n + 2)).toNat

end

end A129758.P13854048176380743821

/-!
# A129759: For the Landau function L(n), A000793, this sequence gives the largest prime which is a factor of L(n).

The programs for A129759, there is no canonical definition to state claims against.
-/

/-! ## A129759.P2523331656641295950

`A006530(A000793(n+1))`
-/

namespace A129759.P2523331656641295950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000793 (n + 1)).toNat

end

end A129759.P2523331656641295950

/-! ## A129759.P5856591936215125632

`A034699(∏{p}[A000793(n+1), #])`
-/

namespace A129759.P5856591936215125632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A129759.P5856591936215125632

/-! ## A129759.P12404150564857733687

`A088387(∏{p}[A000793(n+1), #])`
-/

namespace A129759.P12404150564857733687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A129759.P12404150564857733687

/-! ## A129759.P13773153847996406788

`A006530(A074103(n+1))`
-/

namespace A129759.P13773153847996406788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A074103 (n + 1)).toNat

end

end A129759.P13773153847996406788

/-!
# A129760: Bitwise AND of binary representation of n-1 and n.

The programs for A129760, the canonical program `A129760.P2320931579254019860` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129760 has offset 1).

The definition of A129760 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129760.P2320931579254019860

`and(n+1, n)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129760

/-- `and(n+1, n)` -/
def P2320931579254019860.Spec : Prop :=
  ∀ n, (P2320931579254019860.a n : ℤ) = A129760 (n + 1)

theorem P2320931579254019860.correct : P2320931579254019860.Spec := by
  intro n
  simp only [A129760, Nat.add_sub_cancel]

end A129760

/-! ## A129760.P2541237808610243545

`n+1-2^val(n+1, 2)`
-/

namespace A129760.P2541237808610243545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A129760.P2541237808610243545

namespace A129760

/-- `n+1-2^val(n+1, 2)` -/
def P2541237808610243545.Spec : Prop :=
  ∀ n, P2541237808610243545.a n = A129760 (n + 1)

end A129760

/-! ## A129760.P8604671699538189975

`n+1-A006519(n+1)`
-/

namespace A129760.P8604671699538189975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006519 (n + 1)

end

end A129760.P8604671699538189975

namespace A129760

/-- `n+1-A006519(n+1)` -/
def P8604671699538189975.Spec : Prop :=
  ∀ n, P8604671699538189975.a n = A129760 (n + 1)

end A129760

/-! ## A129760.P12917830646215382431

`Δ[n²]-or(n, n+1)`
-/

namespace A129760.P12917830646215382431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (Nat.lor n (n + 1) : ℤ)

end

end A129760.P12917830646215382431

namespace A129760

/-- `Δ[n²]-or(n, n+1)` -/
def P12917830646215382431.Spec : Prop :=
  ∀ n, P12917830646215382431.a n = A129760 (n + 1)

end A129760

/-! ## A129760.P15258826426270415314

`Δ[n²]%or(n, n+1)`
-/

namespace A129760.P15258826426270415314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (Nat.lor n (n + 1) : ℤ)

end

end A129760.P15258826426270415314

namespace A129760

/-- `Δ[n²]%or(n, n+1)` -/
def P15258826426270415314.Spec : Prop :=
  ∀ n, P15258826426270415314.a n = A129760 (n + 1)

end A129760

/-! ## A129760.P4212703108603575688

`lcm(2, and(n, Δ[n²]-n))`
-/

namespace A129760.P4212703108603575688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (Int.land (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)))

end

end A129760.P4212703108603575688

namespace A129760

/-- `lcm(2, and(n, Δ[n²]-n))` -/
def P4212703108603575688.Spec : Prop :=
  ∀ n, (P4212703108603575688.a n : ℤ) = A129760 (n + 1)

end A129760

/-! ## A129760.P311813949964727597

`or(n, -(n+2))+2+n`
-/

namespace A129760.P311813949964727597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n + 2 : ℤ)) + 2 + (n : ℤ)

end

end A129760.P311813949964727597

namespace A129760

/-- `or(n, -(n+2))+2+n` -/
def P311813949964727597.Spec : Prop :=
  ∀ n, P311813949964727597.a n = A129760 (n + 1)

end A129760

/-! ## A129760.P13361250067833251711

`n-floor(xor(n, n+1)/2)`
-/

namespace A129760.P13361250067833251711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(Nat.xor n (n + 1) : ℚ) / 2⌋

end

end A129760.P13361250067833251711

namespace A129760

/-- `n-floor(xor(n, n+1)/2)` -/
def P13361250067833251711.Spec : Prop :=
  ∀ n, P13361250067833251711.a n = A129760 (n + 1)

end A129760

/-! ## A129760.P755863992657421662

`ceil(n-xor(n, n+1)/2)`
-/

namespace A129760.P755863992657421662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) - (Nat.xor n (n + 1) : ℚ) / 2⌉

end

end A129760.P755863992657421662

namespace A129760

/-- `ceil(n-xor(n, n+1)/2)` -/
def P755863992657421662.Spec : Prop :=
  ∀ n, P755863992657421662.a n = A129760 (n + 1)

end A129760

/-! ## A129760.P8822627671413482100

`xor(n, floor(xor(n, n+1)/2))`
-/

namespace A129760.P8822627671413482100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(Nat.xor n (n + 1) : ℚ) / 2⌋

end

end A129760.P8822627671413482100

namespace A129760

/-- `xor(n, floor(xor(n, n+1)/2))` -/
def P8822627671413482100.Spec : Prop :=
  ∀ n, P8822627671413482100.a n = A129760 (n + 1)

end A129760

/-! ## A129760.P3036096466521550185

`xor(n+1, 2^val(n+1, 2))`
-/

namespace A129760.P3036096466521550185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A129760.P3036096466521550185

namespace A129760

/-- `xor(n+1, 2^val(n+1, 2))` -/
def P3036096466521550185.Spec : Prop :=
  ∀ n, (P3036096466521550185.a n : ℤ) = A129760 (n + 1)

end A129760

/-! ## A129760.P1667618486968879342

`2*n+1-or(n, n+1)`
-/

namespace A129760.P1667618486968879342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (1 - (Nat.lor n (n + 1) : ℤ))

end

end A129760.P1667618486968879342

namespace A129760

/-- `2*n+1-or(n, n+1)` -/
def P1667618486968879342.Spec : Prop :=
  ∀ n, P1667618486968879342.a n = A129760 (n + 1)

end A129760

/-! ## A129760.P6955125727875997306

`and(2*n, ∑[and(2, n)²])/2`
-/

namespace A129760.P6955125727875997306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land (2 * n) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A129760.P6955125727875997306

namespace A129760

/-- `and(2*n, ∑[and(2, n)²])/2` -/
def P6955125727875997306.Spec : Prop :=
  ∀ n, P6955125727875997306.a n = (A129760 (n + 1) : ℚ)

end A129760

/-! ## A129760.P10102760479064872609

`∑[2*Δ[and(n, n-1)/2]]`
-/

namespace A129760.P10102760479064872609
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) ((n : ℤ) - 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129760.P10102760479064872609

namespace A129760

/-- `∑[2*Δ[and(n, n-1)/2]]` -/
def P10102760479064872609.Spec : Prop :=
  ∀ n, P10102760479064872609.a n = (A129760 (n + 1) : ℚ)

end A129760

/-! ## A129760.P3271910421448033387

`n+1-or(n, n+1)+n`
-/

namespace A129760.P3271910421448033387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.lor n (n + 1) : ℤ) + (n : ℤ)

end

end A129760.P3271910421448033387

namespace A129760

/-- `n+1-or(n, n+1)+n` -/
def P3271910421448033387.Spec : Prop :=
  ∀ n, P3271910421448033387.a n = A129760 (n + 1)

end A129760

/-! ## A129760.P16803985768528610898

`n-and(n, n-2*n-2)`
-/

namespace A129760.P16803985768528610898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) ((n : ℤ) - (2 * n : ℤ) - 2)

end

end A129760.P16803985768528610898

namespace A129760

/-- `n-and(n, n-2*n-2)` -/
def P16803985768528610898.Spec : Prop :=
  ∀ n, P16803985768528610898.a n = A129760 (n + 1)

end A129760

/-! ## A129760.P10492109710369779050

`xor(n, or(n, n+1)%(n+1))`
-/

namespace A129760.P10492109710369779050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.lor n (n + 1) % (n + 1))

end

end A129760.P10492109710369779050

namespace A129760

/-- `xor(n, or(n, n+1)%(n+1))` -/
def P10492109710369779050.Spec : Prop :=
  ∀ n, (P10492109710369779050.a n : ℤ) = A129760 (n + 1)

end A129760

/-! ## A129760.P6217143217301905222

`xor(n+1, xor(n, or(n, n+1)))`
-/

namespace A129760.P6217143217301905222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (Nat.xor n (Nat.lor n (n + 1)))

end

end A129760.P6217143217301905222

namespace A129760

/-- `xor(n+1, xor(n, or(n, n+1)))` -/
def P6217143217301905222.Spec : Prop :=
  ∀ n, (P6217143217301905222.a n : ℤ) = A129760 (n + 1)

end A129760

/-! ## A129760.P3217362349312753603

`∑[1-Δ[n-and(n, n-1)]]`
-/

namespace A129760.P3217362349312753603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129760.P3217362349312753603

namespace A129760

/-- `∑[1-Δ[n-and(n, n-1)]]` -/
def P3217362349312753603.Spec : Prop :=
  ∀ n, P3217362349312753603.a n = A129760 (n + 1)

end A129760

/-! ## A129760.P16470665121436640952

`xor(n, -(n+2))/2+n+1`
-/

namespace A129760.P16470665121436640952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (n : ℤ) (-(n + 2 : ℤ)) : ℚ) / 2 + (n + 1 : ℚ)

end

end A129760.P16470665121436640952

namespace A129760

/-- `xor(n, -(n+2))/2+n+1` -/
def P16470665121436640952.Spec : Prop :=
  ∀ n, P16470665121436640952.a n = (A129760 (n + 1) : ℚ)

end A129760

/-!
# A129761: First differences of Fibbinary numbers (A003714).

The programs for A129761, the canonical program `A129761.P10344994158848013744` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129761 has offset 0).

The definition of A129761 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035614, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A129761.P10344994158848013744

`A005578(A035614(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A129761

/-- `A005578(A035614(n))` -/
def P10344994158848013744.Spec : Prop :=
  ∀ n, P10344994158848013744.a n = A129761 n

theorem P10344994158848013744.correct : P10344994158848013744.Spec := by
  intro n
  simp only [A129761]

end A129761

/-! ## A129761.P9572204408581754418

`A003714(n+1)-A003714(n)`
-/

namespace A129761.P9572204408581754418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (n + 1) - A003714 n

end

end A129761.P9572204408581754418

namespace A129761

/-- `A003714(n+1)-A003714(n)` -/
def P9572204408581754418.Spec : Prop :=
  ∀ n, P9572204408581754418.a n = A129761 n

end A129761

/-! ## A129761.P1450560604193320328

`Δ[A022340(n)/2]`
-/

namespace A129761.P1450560604193320328
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022340 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129761.P1450560604193320328

namespace A129761

/-- `Δ[A022340(n)/2]` -/
def P1450560604193320328.Spec : Prop :=
  ∀ n, P1450560604193320328.a n = (A129761 n : ℚ)

end A129761

/-! ## A129761.P14992731722890972231

`Δ[A277335(n)/3]`
-/

namespace A129761.P14992731722890972231
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277335 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129761.P14992731722890972231

namespace A129761

/-- `Δ[A277335(n)/3]` -/
def P14992731722890972231.Spec : Prop :=
  ∀ n, P14992731722890972231.a n = (A129761 n : ℚ)

end A129761

/-! ## A129761.P8995334755797066215

`Δ[A022341(n)/4]`
-/

namespace A129761.P8995334755797066215
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022341 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129761.P8995334755797066215

namespace A129761

/-- `Δ[A022341(n)/4]` -/
def P8995334755797066215.Spec : Prop :=
  ∀ n, P8995334755797066215.a n = (A129761 n : ℚ)

end A129761

/-! ## A129761.P11761978214333057927

`ceil(A319432(n+1)/4)`
-/

namespace A129761.P11761978214333057927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A319432 (n + 1) : ℚ) / 4⌉

end

end A129761.P11761978214333057927

namespace A129761

/-- `ceil(A319432(n+1)/4)` -/
def P11761978214333057927.Spec : Prop :=
  ∀ n, P11761978214333057927.a n = A129761 n

end A129761

/-! ## A129761.P10685003924431708933

`(A085407(n+1)+1)/2`
-/

namespace A129761.P10685003924431708933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085407 (n + 1) + 1 : ℚ) / 2

end

end A129761.P10685003924431708933

namespace A129761

/-- `(A085407(n+1)+1)/2` -/
def P10685003924431708933.Spec : Prop :=
  ∀ n, P10685003924431708933.a n = (A129761 n : ℚ)

end A129761

/-! ## A129761.P4485331763980700364

`A005578(A035612(n+1)-1)`
-/

namespace A129761.P4485331763980700364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (A035612 (n + 1) - 1).toNat

end

end A129761.P4485331763980700364

namespace A129761

/-- `A005578(A035612(n+1)-1)` -/
def P4485331763980700364.Spec : Prop :=
  ∀ n, P4485331763980700364.a n = A129761 n

end A129761

/-! ## A129761.P12123588099275278600

`A003754(A001611(A035612(n+1)))`
-/

namespace A129761.P12123588099275278600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (A001611 (A035612 (n + 1)).toNat).toNat

end

end A129761.P12123588099275278600

namespace A129761

/-- `A003754(A001611(A035612(n+1)))` -/
def P12123588099275278600.Spec : Prop :=
  ∀ n, P12123588099275278600.a n = A129761 n

end A129761

/-! ## A129761.P15393860072671876192

`A003754(A000045(A035612(n+1))+1)`
-/

namespace A129761.P15393860072671876192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (A000045 (A035612 (n + 1)).toNat + 1).toNat

end

end A129761.P15393860072671876192

namespace A129761

/-- `A003754(A000045(A035612(n+1))+1)` -/
def P15393860072671876192.Spec : Prop :=
  ∀ n, P15393860072671876192.a n = A129761 n

end A129761

/-! ## A129761.P10900956209145472261

`Δ[A003714(n)]`
-/

namespace A129761.P10900956209145472261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129761.P10900956209145472261

namespace A129761

/-- `Δ[A003714(n)]` -/
def P10900956209145472261.Spec : Prop :=
  ∀ n, P10900956209145472261.a n = A129761 n

end A129761

/-! ## A129761.P8003338955696470932

`Δ[A118113(n)/2]`
-/

namespace A129761.P8003338955696470932
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118113 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129761.P8003338955696470932

namespace A129761

/-- `Δ[A118113(n)/2]` -/
def P8003338955696470932.Spec : Prop :=
  ∀ n, P8003338955696470932.a n = (A129761 n : ℚ)

end A129761

/-! ## A129761.P6635601380506490746

`Δ[A048297(n)/3]`
-/

namespace A129761.P6635601380506490746
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048297 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129761.P6635601380506490746

namespace A129761

/-- `Δ[A048297(n)/3]` -/
def P6635601380506490746.Spec : Prop :=
  ∀ n, P6635601380506490746.a n = (A129761 n : ℚ)

end A129761

/-! ## A129761.P15828598846389197045

`Δ[record[n-and(n, 2*n)]]`
-/

namespace A129761.P15828598846389197045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land n (2 * n) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129761.P15828598846389197045

namespace A129761

/-- `Δ[record[n-and(n, 2*n)]]` -/
def P15828598846389197045.Spec : Prop :=
  ∀ n, P15828598846389197045.a n = A129761 n

end A129761

/-! ## A129761.P13682615722670864098

`Δ[record[and(n, -(2*n+1))]]`
-/

namespace A129761.P13682615722670864098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(2 * n + 1 : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129761.P13682615722670864098

namespace A129761

/-- `Δ[record[and(n, -(2*n+1))]]` -/
def P13682615722670864098.Spec : Prop :=
  ∀ n, P13682615722670864098.a n = A129761 n

end A129761

/-! ## A129761.P16122765751942903434

`Δ[record[n-A344180(n)]]`
-/

namespace A129761.P16122765751942903434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A344180 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129761.P16122765751942903434

namespace A129761

/-- `Δ[record[n-A344180(n)]]` -/
def P16122765751942903434.Spec : Prop :=
  ∀ n, P16122765751942903434.a n = A129761 n

end A129761

/-! ## A129761.P4915139274594025078

`Δ[eq[0, and(n, 2*n)]]`
-/

namespace A129761.P4915139274594025078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A129761.P4915139274594025078

namespace A129761

/-- `Δ[eq[0, and(n, 2*n)]]` -/
def P4915139274594025078.Spec : Prop :=
  ∀ n, P4915139274594025078.a n = A129761 n

end A129761

/-!
# A129762: Sum of all elements of n X n X n cubic array M[i,j,k] = Fibonacci[i+j+k-2].

The programs for A129762, the canonical program `A129762.P16030983256813214926` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129762 has offset 1).

The definition of A129762 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129762.P7420304945699832545

`ogf((1+4x+13x^2-7x^3+x^5)/(1-9x+26x^2-24x^3-6x^4+14x^5-x^6-x^7))`
-/

namespace A129762.P7420304945699832545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 13, -7, 0, 1] [1, -9, 26, -24, -6, 14, -1, -1] n

end

end A129762.P7420304945699832545

namespace A129762

/-- `ogf((1+4x+13x^2-7x^3+x^5)/(1-9x+26x^2-24x^3-6x^4+14x^5-x^6-x^7))` -/
def P7420304945699832545.Spec : Prop :=
  ∀ n, P7420304945699832545.a n = A129762 (n + 1)

end A129762

/-! ## A129762.P16030983256813214926

`A000045(3*(n+1)+4)-3*A000045(2*(n+1)+4)+3*A000045(n+5)-3`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A129762

/-- `A000045(3*(n+1)+4)-3*A000045(2*(n+1)+4)+3*A000045(n+5)-3` -/
def P16030983256813214926.Spec : Prop :=
  ∀ n, P16030983256813214926.a n = A129762 (n + 1)

theorem P16030983256813214926.correct : P16030983256813214926.Spec := by
  intro n
  simp only [A129762, Nat.add_sub_cancel]

end A129762

/-!
# A129763: a(n) = Sum_{k=1..n} binomial(n+k-1, n)^2 / n.

The programs for A129763, the canonical program `A129763.P486106142611647367` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129763 has offset 1).

The definition of A129763 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129763.P486106142611647367

`∑{#}[n, C(n+1+#+1-1, n+1)²/(n+1)]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129763

/-- `∑{#}[n, C(n+1+#+1-1, n+1)²/(n+1)]` -/
def P486106142611647367.Spec : Prop :=
  ∀ n, P486106142611647367.a n = (A129763 (n + 1) : ℚ)

end A129763

/-!
# A129765: Triangle, (1, 1, 2, 2, 2, ...) in every column.

The programs for A129765, the canonical program `A129765.P12083585102544052263` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129765 has offset 1).

The definition of A129765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129765.P5208876346368324294

`Δ[∪[Δ[n²], n²+n]]`
-/

namespace A129765.P5208876346368324294
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f4 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A129765.P5208876346368324294

namespace A129765

/-- `Δ[∪[Δ[n²], n²+n]]` -/
def P5208876346368324294.Spec : Prop :=
  ∀ n, P5208876346368324294.a n = A129765 (n + 1)

end A129765

/-! ## A129765.P12299387384976847682

`(T(n-1,k-1)-2)*T(n-1,k-1)+2` with `a(0)=1, a(1)=1`
-/

namespace A129765.P12299387384976847682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (SequenceMachineLib.triUpLeft a n - 2) * SequenceMachineLib.triUpLeft a n + 2

end

end A129765.P12299387384976847682

namespace A129765

/-- `(T(n-1,k-1)-2)*T(n-1,k-1)+2` -/
def P12299387384976847682.Spec : Prop :=
  ∀ n, P12299387384976847682.a n = A129765 (n + 1)

end A129765

/-! ## A129765.P8303878734569519399

`2-(2-T(n-1,k-1))*T(n-1,k-1)` with `a(0)=1, a(1)=1`
-/

namespace A129765.P8303878734569519399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 - (2 - SequenceMachineLib.triUpLeft a n) * SequenceMachineLib.triUpLeft a n

end

end A129765.P8303878734569519399

namespace A129765

/-- `2-(2-T(n-1,k-1))*T(n-1,k-1)` -/
def P8303878734569519399.Spec : Prop :=
  ∀ n, P8303878734569519399.a n = A129765 (n + 1)

end A129765

/-! ## A129765.P12100088270398228500

`T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A129765.P12100088270398228500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2Left a n

end

end A129765.P12100088270398228500

namespace A129765

/-- `T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)` -/
def P12100088270398228500.Spec : Prop :=
  ∀ n, P12100088270398228500.a n = A129765 (n + 1)

end A129765

/-! ## A129765.P15594153452363366068

`Δ[∪[∑[2*n], Δ[n²]]]!`
-/

namespace A129765.P15594153452363366068
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f5 (n + 1) : ℤ) - (f5 n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A129765.P15594153452363366068

namespace A129765

/-- `Δ[∪[∑[2*n], Δ[n²]]]!` -/
def P15594153452363366068.Spec : Prop :=
  ∀ n, (P15594153452363366068.a n : ℤ) = A129765 (n + 1)

end A129765

/-! ## A129765.P6701878376827316250

`(2%(col(n)-(row(n)+1)))!`
-/

namespace A129765.P6701878376827316250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod 2 ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n + 1 : ℤ))).toNat

end

end A129765.P6701878376827316250

namespace A129765

/-- `(2%(col(n)-(row(n)+1)))!` -/
def P6701878376827316250.Spec : Prop :=
  ∀ n, (P6701878376827316250.a n : ℤ) = A129765 (n + 1)

end A129765

/-! ## A129765.P3580682412268980968

`2-char[C(ceil(n/2), 2)+n]`
-/

namespace A129765.P3580682412268980968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A129765.P3580682412268980968

namespace A129765

/-- `2-char[C(ceil(n/2), 2)+n]` -/
def P3580682412268980968.Spec : Prop :=
  ∀ n, P3580682412268980968.a n = A129765 (n + 1)

end A129765

/-! ## A129765.P14282779347047888940

`2-C(2, 2*(row(n)-col(n)))`
-/

namespace A129765.P14282779347047888940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose 2 (2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat : ℤ)

end

end A129765.P14282779347047888940

namespace A129765

/-- `2-C(2, 2*(row(n)-col(n)))` -/
def P14282779347047888940.Spec : Prop :=
  ∀ n, P14282779347047888940.a n = A129765 (n + 1)

end A129765

/-! ## A129765.P15570437828763852598

`(1-T(n-1,k+1))*(T(n-2,k-1)-T(n,k-1))+2` with `a(0)=1, a(1)=1`
-/

namespace A129765.P15570437828763852598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (1 - SequenceMachineLib.triUpRight a n) * (SequenceMachineLib.triUp2Left a n - SequenceMachineLib.triLeft a n) + 2

end

end A129765.P15570437828763852598

namespace A129765

/-- `(1-T(n-1,k+1))*(T(n-2,k-1)-T(n,k-1))+2` -/
def P15570437828763852598.Spec : Prop :=
  ∀ n, P15570437828763852598.a n = A129765 (n + 1)

end A129765

/-! ## A129765.P11465395657002815967

`2-(1-T(n-1,k+1))*(T(n,k-1)-T(n-2,k-1))` with `a(0)=1, a(1)=1`
-/

namespace A129765.P11465395657002815967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 - (1 - SequenceMachineLib.triUpRight a n) * (SequenceMachineLib.triLeft a n - SequenceMachineLib.triUp2Left a n)

end

end A129765.P11465395657002815967

namespace A129765

/-- `2-(1-T(n-1,k+1))*(T(n,k-1)-T(n-2,k-1))` -/
def P11465395657002815967.Spec : Prop :=
  ∀ n, P11465395657002815967.a n = A129765 (n + 1)

end A129765

/-! ## A129765.P11924429533368176544

`(1-T(n-2,k))*(T(n-2,k-1)-T(n,k-1))+2` with `a(0)=1, a(1)=1`
-/

namespace A129765.P11924429533368176544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (1 - SequenceMachineLib.triUp2 a n) * (SequenceMachineLib.triUp2Left a n - SequenceMachineLib.triLeft a n) + 2

end

end A129765.P11924429533368176544

namespace A129765

/-- `(1-T(n-2,k))*(T(n-2,k-1)-T(n,k-1))+2` -/
def P11924429533368176544.Spec : Prop :=
  ∀ n, P11924429533368176544.a n = A129765 (n + 1)

end A129765

/-! ## A129765.P16791295896436550072

`2-(1-T(n-2,k))*(T(n,k-1)-T(n-2,k-1))` with `a(0)=1, a(1)=1`
-/

namespace A129765.P16791295896436550072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 - (1 - SequenceMachineLib.triUp2 a n) * (SequenceMachineLib.triLeft a n - SequenceMachineLib.triUp2Left a n)

end

end A129765.P16791295896436550072

namespace A129765

/-- `2-(1-T(n-2,k))*(T(n,k-1)-T(n-2,k-1))` -/
def P16791295896436550072.Spec : Prop :=
  ∀ n, P16791295896436550072.a n = A129765 (n + 1)

end A129765

/-! ## A129765.P3785955102465944569

`a(n-round(sqrt(2*n)))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A129765.P3785955102465944569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  a ((n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

end

end A129765.P3785955102465944569

namespace A129765

/-- `a(n-round(sqrt(2*n)))` -/
def P3785955102465944569.Spec : Prop :=
  ∀ n, (P3785955102465944569.a n : ℤ) = A129765 (n + 1)

end A129765

/-! ## A129765.P11501075349754902915

`2-char[∑[∑[n]%(n+1)-1]]`
-/

namespace A129765.P11501075349754902915
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1) : ℕ) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A129765.P11501075349754902915

namespace A129765

/-- `2-char[∑[∑[n]%(n+1)-1]]` -/
def P11501075349754902915.Spec : Prop :=
  ∀ n, P11501075349754902915.a n = A129765 (n + 1)

end A129765

/-! ## A129765.P18386619291191189570

`abs(Δ[∪[2*n+1, ∑[2*n]]])`
-/

namespace A129765.P18386619291191189570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A129765.P18386619291191189570

namespace A129765

/-- `abs(Δ[∪[2*n+1, ∑[2*n]]])` -/
def P18386619291191189570.Spec : Prop :=
  ∀ n, P18386619291191189570.a n = A129765 (n + 1)

end A129765

/-! ## A129765.P18192693889465009865

`dr(Δ[∪[2*n+1, ∑[2*n]]])`
-/

namespace A129765.P18192693889465009865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A129765.P18192693889465009865

namespace A129765

/-- `dr(Δ[∪[2*n+1, ∑[2*n]]])` -/
def P18192693889465009865.Spec : Prop :=
  ∀ n, (P18192693889465009865.a n : ℤ) = A129765 (n + 1)

end A129765

/-! ## A129765.P7306562576340417443

`ceil(C(comp[∑[n]]-n, 2)/(n+2))`
-/

namespace A129765.P7306562576340417443
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℚ) / (n + 2 : ℚ)⌉

end

end A129765.P7306562576340417443

namespace A129765

/-- `ceil(C(comp[∑[n]]-n, 2)/(n+2))` -/
def P7306562576340417443.Spec : Prop :=
  ∀ n, P7306562576340417443.a n = A129765 (n + 1)

end A129765

/-! ## A129765.P14257782632298077813

`-Δ[-∪[2*n+1, n*(n+1)]]`
-/

namespace A129765.P14257782632298077813
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A129765.P14257782632298077813

namespace A129765

/-- `-Δ[-∪[2*n+1, n*(n+1)]]` -/
def P14257782632298077813.Spec : Prop :=
  ∀ n, P14257782632298077813.a n = A129765 (n + 1)

end A129765

/-! ## A129765.P10072119153043956510

`Δ[∪[2*n+1, n*(n+1)]]!!`
-/

namespace A129765.P10072119153043956510
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A129765.P10072119153043956510

namespace A129765

/-- `Δ[∪[2*n+1, n*(n+1)]]!!` -/
def P10072119153043956510.Spec : Prop :=
  ∀ n, (P10072119153043956510.a n : ℤ) = A129765 (n + 1)

end A129765

/-! ## A129765.P12083585102544052263

`2-A097806(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A129765

/-- `2-A097806(n)` -/
def P12083585102544052263.Spec : Prop :=
  ∀ n, P12083585102544052263.a n = A129765 (n + 1)

theorem P12083585102544052263.correct : P12083585102544052263.Spec := by
  intro n
  simp only [A129765, Nat.add_sub_cancel]

end A129765

/-!
# A129766: Triangular array read by rows, made up of traditional exceptional groups plus A1: as A1,G2,F4,E6,E7,E8 as m(i) exponents as in A005556, A005763, A005776.

The programs for A129766, there is no canonical definition to state claims against.
-/

/-! ## A129766.P4000458868443074578

`A129769(∑[A028234(A129769(n+1)²)])`
-/

namespace A129766.P4000458868443074578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A129769 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129769 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A129766.P4000458868443074578

/-! ## A129766.P6404015224255733988

`A129769(∑[A295657(A146418(n+1))])`
-/

namespace A129766.P6404015224255733988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (A146418 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129769 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A129766.P6404015224255733988

/-! ## A129766.P7306015724857928926

`or(A055641(A200748(n)), A129769(n+1))`
-/

namespace A129766.P7306015724857928926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 (A200748 n).toNat) (A129769 (n + 1))

end

end A129766.P7306015724857928926

/-! ## A129766.P13634747075153651765

`or(A129769(n+1), A297199(A038258(n)))`
-/

namespace A129766.P13634747075153651765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A129769 (n + 1)) (A297199 (A038258 n).toNat)

end

end A129766.P13634747075153651765

/-! ## A129766.P1748751089680220211

`A129769(n+1)%A197224(2*(n+2))²`
-/

namespace A129766.P1748751089680220211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129769 (n + 1)) (A197224 (2 * (n + 2)) ^ 2)

end

end A129766.P1748751089680220211

/-!
# A129767: Interleaved primes and semiprimes.

The programs for A129767, there is no canonical definition to state claims against.
-/

/-! ## A129767.P11396259783754251809

`A207790(lcm(2, n)+(n+1)%2+1)`
-/

namespace A129767.P11396259783754251809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (Nat.lcm 2 n + (n + 1) % 2 + 1)

end

end A129767.P11396259783754251809

/-! ## A129767.P17551485291708496463

`A207790(gcd(n, 1-gcd(2, n))+n+1)`
-/

namespace A129767.P17551485291708496463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (Int.gcd (n : ℤ) (1 - (Nat.gcd 2 n : ℤ)) + n + 1)

end

end A129767.P17551485291708496463

/-! ## A129767.P3968132231506938733

`A207790(A321220(n))`
-/

namespace A129767.P3968132231506938733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (A321220 n).toNat

end

end A129767.P3968132231506938733

/-! ## A129767.P1277091548210939436

`A207790(A043547(n+1)+1)`
-/

namespace A129767.P1277091548210939436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (A043547 (n + 1) + 1).toNat

end

end A129767.P1277091548210939436

/-! ## A129767.P14859534351114564965

`A207790(A065171(2*n+1)+1)`
-/

namespace A129767.P14859534351114564965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (A065171 (2 * n + 1) + 1).toNat

end

end A129767.P14859534351114564965

/-!
# A129768: Number of odd nonprime numbers less than the n-th prime.

The programs for A129768, the canonical program `A129768.P17975627728056424353` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129768 has offset 1).

The definition of A129768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129768.P17975627728056424353

`A111333(n+1)-n`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A129768

/-- `A111333(n+1)-n` -/
def P17975627728056424353.Spec : Prop :=
  ∀ n, P17975627728056424353.a n = A129768 (n + 1)

theorem P17975627728056424353.correct : P17975627728056424353.Spec := by
  intro n
  simp only [A129768, Nat.add_sub_cancel]

end A129768

/-! ## A129768.P2050641100990529336

`ceil(A173072(n+1)/2)`
-/

namespace A129768.P2050641100990529336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A173072 (n + 1) : ℚ) / 2⌉

end

end A129768.P2050641100990529336

namespace A129768

/-- `ceil(A173072(n+1)/2)` -/
def P2050641100990529336.Spec : Prop :=
  ∀ n, P2050641100990529336.a n = A129768 (n + 1)

end A129768

/-! ## A129768.P17125446004312921902

`A102781(n+1)+1-n`
-/

namespace A129768.P17125446004312921902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1) + (1 - (n : ℤ))

end

end A129768.P17125446004312921902

namespace A129768

/-- `A102781(n+1)+1-n` -/
def P17125446004312921902.Spec : Prop :=
  ∀ n, P17125446004312921902.a n = A129768 (n + 1)

end A129768

/-! ## A129768.P9035078454893694389

`A124678(n+1)-(n+2)`
-/

namespace A129768.P9035078454893694389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124678 (n + 1) - (n + 2 : ℤ)

end

end A129768.P9035078454893694389

namespace A129768

/-- `A124678(n+1)-(n+2)` -/
def P9035078454893694389.Spec : Prop :=
  ∀ n, P9035078454893694389.a n = A129768 (n + 1)

theorem P9035078454893694389.correct : P9035078454893694389.Spec := by
  intro n
  simp only [A129768, Nat.add_sub_cancel, A129768.P9035078454893694389.a, A129768.P17975627728056424353.a, A111333, A111333.P16384259974901065454.a, A124678, A124678.P3388856193918197942.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129768

/-! ## A129768.P2858411201778216987

`A100820(n)+a(n-1)` with `a(0)=1`
-/

namespace A129768.P2858411201778216987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A100820 n + a (n - 1)

end

end A129768.P2858411201778216987

namespace A129768

/-- `A100820(n)+a(n-1)` -/
def P2858411201778216987.Spec : Prop :=
  ∀ n, P2858411201778216987.a n = A129768 (n + 1)

end A129768

/-! ## A129768.P2849237345111732034

`floor(A131733(n+1)/2)+1`
-/

namespace A129768.P2849237345111732034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131733 (n + 1) : ℚ) / 2⌋ + 1

end

end A129768.P2849237345111732034

namespace A129768

/-- `floor(A131733(n+1)/2)+1` -/
def P2849237345111732034.Spec : Prop :=
  ∀ n, P2849237345111732034.a n = A129768 (n + 1)

end A129768

/-! ## A129768.P7315536467469177827

`floor(A008864(n+1)/2-n)`
-/

namespace A129768.P7315536467469177827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008864 (n + 1) : ℚ) / 2 - (n : ℚ)⌋

end

end A129768.P7315536467469177827

namespace A129768

/-- `floor(A008864(n+1)/2-n)` -/
def P7315536467469177827.Spec : Prop :=
  ∀ n, P7315536467469177827.a n = A129768 (n + 1)

end A129768

/-! ## A129768.P8166621007206829182

`ceil(A000040(n+1)/2-n)`
-/

namespace A129768.P8166621007206829182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000040 (n + 1) : ℚ) / 2 - (n : ℚ)⌉

end

end A129768.P8166621007206829182

namespace A129768

/-- `ceil(A000040(n+1)/2-n)` -/
def P8166621007206829182.Spec : Prop :=
  ∀ n, P8166621007206829182.a n = A129768 (n + 1)

end A129768

/-! ## A129768.P5611281768219988555

`round(A006005(n+1)/2-n)`
-/

namespace A129768.P5611281768219988555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006005 (n + 1) : ℚ) / 2 - (n : ℚ))

end

end A129768.P5611281768219988555

namespace A129768

/-- `round(A006005(n+1)/2-n)` -/
def P5611281768219988555.Spec : Prop :=
  ∀ n, P5611281768219988555.a n = A129768 (n + 1)

end A129768

/-! ## A129768.P12130878159792308747

`round(A055670(n+1)/2-n)`
-/

namespace A129768.P12130878159792308747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A055670 (n + 1) : ℚ) / 2 - (n : ℚ))

end

end A129768.P12130878159792308747

namespace A129768

/-- `round(A055670(n+1)/2-n)` -/
def P12130878159792308747.Spec : Prop :=
  ∀ n, P12130878159792308747.a n = A129768 (n + 1)

end A129768

/-! ## A129768.P12449091011695017432

`A130291(n+1)-A028310(n)`
-/

namespace A129768.P12449091011695017432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130291 (n + 1) - A028310 n

end

end A129768.P12449091011695017432

namespace A129768

/-- `A130291(n+1)-A028310(n)` -/
def P12449091011695017432.Spec : Prop :=
  ∀ n, P12449091011695017432.a n = A129768 (n + 1)

end A129768

/-! ## A129768.P16006696768104858306

`A014692(n+1)-A130290(n+1)`
-/

namespace A129768.P16006696768104858306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) - A130290 (n + 1)

end

end A129768.P16006696768104858306

namespace A129768

/-- `A014692(n+1)-A130290(n+1)` -/
def P16006696768104858306.Spec : Prop :=
  ∀ n, P16006696768104858306.a n = A129768 (n + 1)

end A129768

/-! ## A129768.P554464620117738456

`(A000040(n+1)-A004273(n))/2`
-/

namespace A129768.P554464620117738456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - A004273 n : ℚ) / 2

end

end A129768.P554464620117738456

namespace A129768

/-- `(A000040(n+1)-A004273(n))/2` -/
def P554464620117738456.Spec : Prop :=
  ∀ n, P554464620117738456.a n = (A129768 (n + 1) : ℚ)

end A129768

/-! ## A129768.P3206875102599341116

`A182174(n+1)%A130291(n+1)`
-/

namespace A129768.P3206875102599341116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182174 (n + 1)) (A130291 (n + 1))

end

end A129768.P3206875102599341116

namespace A129768

/-- `A182174(n+1)%A130291(n+1)` -/
def P3206875102599341116.Spec : Prop :=
  ∀ n, P3206875102599341116.a n = A129768 (n + 1)

end A129768

/-! ## A129768.P11364009626328379931

`A065091(n+1)-(A163057(n+1)+A100820(n+1))`
-/

namespace A129768.P11364009626328379931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - (A163057 (n + 1) + A100820 (n + 1))

end

end A129768.P11364009626328379931

namespace A129768

/-- `A065091(n+1)-(A163057(n+1)+A100820(n+1))` -/
def P11364009626328379931.Spec : Prop :=
  ∀ n, P11364009626328379931.a n = A129768 (n + 1)

end A129768

/-! ## A129768.P1500799907604600764

`A093515(2*n+1)/2-n`
-/

namespace A129768.P1500799907604600764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093515 (2 * n + 1) : ℚ) / 2 - (n : ℚ)

end

end A129768.P1500799907604600764

namespace A129768

/-- `A093515(2*n+1)/2-n` -/
def P1500799907604600764.Spec : Prop :=
  ∀ n, P1500799907604600764.a n = (A129768 (n + 1) : ℚ)

end A129768

/-! ## A129768.P555133899452908677

`A000040(n+2)-(A163057(n+1)+A100820(n+1))`
-/

namespace A129768.P555133899452908677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - (A163057 (n + 1) + A100820 (n + 1))

end

end A129768.P555133899452908677

namespace A129768

/-- `A000040(n+2)-(A163057(n+1)+A100820(n+1))` -/
def P555133899452908677.Spec : Prop :=
  ∀ n, P555133899452908677.a n = A129768 (n + 1)

end A129768

/-! ## A129768.P16786662646442733797

`record[ceil(A006530(n+1)/2)]-n`
-/

namespace A129768.P16786662646442733797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006530 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A129768.P16786662646442733797

namespace A129768

/-- `record[ceil(A006530(n+1)/2)]-n` -/
def P16786662646442733797.Spec : Prop :=
  ∀ n, P16786662646442733797.a n = A129768 (n + 1)

end A129768

/-! ## A129768.P13221915364587132177

`record[ceil(A020639(n+1)/2)]-n`
-/

namespace A129768.P13221915364587132177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020639 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A129768.P13221915364587132177

namespace A129768

/-- `record[ceil(A020639(n+1)/2)]-n` -/
def P13221915364587132177.Spec : Prop :=
  ∀ n, P13221915364587132177.a n = A129768 (n + 1)

end A129768

/-! ## A129768.P6167044006743719770

`record[round(A006530(n+2)/2)]-n`
-/

namespace A129768.P6167044006743719770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006530 (n + 2) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A129768.P6167044006743719770

namespace A129768

/-- `record[round(A006530(n+2)/2)]-n` -/
def P6167044006743719770.Spec : Prop :=
  ∀ n, P6167044006743719770.a n = A129768 (n + 1)

end A129768

/-! ## A129768.P17058172578336707251

`lt[∑{e}[2*n+1, #], 2]-(n-1)`
-/

namespace A129768.P17058172578336707251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f3 j) n : ℤ) - ((n : ℤ) - 1)

end

end A129768.P17058172578336707251

namespace A129768

/-- `lt[∑{e}[2*n+1, #], 2]-(n-1)` -/
def P17058172578336707251.Spec : Prop :=
  ∀ n, P17058172578336707251.a n = A129768 (n + 1)

end A129768

/-!
# A129770: a(0) = 0, a(1) = 1; for n>0, a(2*n) = 3*a(2*n-1), a(2*n+1) = 3*a(2*n) - 2*a(n-1).

The programs for A129770, there is no canonical definition to state claims against.
-/

/-! ## A129770.P5305820882852917491

`A039721(n+2)/2-A102877(n)`
-/

namespace A129770.P5305820882852917491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039721 (n + 2) : ℚ) / 2 - (A102877 n : ℚ)

end

end A129770.P5305820882852917491

/-! ## A129770.P11658531523970496777

`A129772(n)-A102877(n)`
-/

namespace A129770.P11658531523970496777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129772 n - A102877 n

end

end A129770.P11658531523970496777

/-! ## A129770.P333721538747665795

`A129772(n)-A111017(2*n+3)%A111017(2*(n+1))`
-/

namespace A129770.P333721538747665795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129772 n - Int.tmod (A111017 (2 * n + 3)) (A111017 (2 * (n + 1)))

end

end A129770.P333721538747665795

/-! ## A129770.P3902570662633507221

`A014682(A039721(n+2))-A102877(n)`
-/

namespace A129770.P3902570662633507221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A039721 (n + 2)).toNat - A102877 n

end

end A129770.P3902570662633507221

/-! ## A129770.P11646373636810968721

`A093347(A129772(n))`
-/

namespace A129770.P11646373636810968721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093347 (A129772 n).toNat

end

end A129770.P11646373636810968721

/-!
# A129771: Evil odd numbers.

The programs for A129771, the canonical program `A129771.P17660305195438038504` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129771 has offset 1).

The definition of A129771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129771.P17660305195438038504

`A128309(n+1)+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A129771

/-- `A128309(n+1)+1` -/
def P17660305195438038504.Spec : Prop :=
  ∀ n, P17660305195438038504.a n = A129771 (n + 1)

theorem P17660305195438038504.correct : P17660305195438038504.Spec := by
  intro n
  simp only [A129771, Nat.add_sub_cancel]

end A129771

/-! ## A129771.P15928689700001980396

`2*A000069(n+1)+1`
-/

namespace A129771.P15928689700001980396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000069 (n + 1) + 1

end

end A129771.P15928689700001980396

namespace A129771

/-- `2*A000069(n+1)+1` -/
def P15928689700001980396.Spec : Prop :=
  ∀ n, P15928689700001980396.a n = A129771 (n + 1)

end A129771

/-! ## A129771.P113245184762553343

`A001969(1+A000069(n+1))`
-/

namespace A129771.P113245184762553343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (1 + A000069 (n + 1)).toNat

end

end A129771.P113245184762553343

namespace A129771

/-- `A001969(1+A000069(n+1))` -/
def P113245184762553343.Spec : Prop :=
  ∀ n, P113245184762553343.a n = A129771 (n + 1)

end A129771

/-! ## A129771.P15836196510886354499

`A277902(A277823(n+1))`
-/

namespace A129771.P15836196510886354499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277902 (A277823 (n + 1)).toNat

end

end A129771.P15836196510886354499

namespace A129771

/-- `A277902(A277823(n+1))` -/
def P15836196510886354499.Spec : Prop :=
  ∀ n, P15836196510886354499.a n = A129771 (n + 1)

end A129771

/-! ## A129771.P15056879559227165828

`2*comp[xor(n, 2*n)]+1`
-/

namespace A129771.P15056879559227165828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A129771.P15056879559227165828

namespace A129771

/-- `2*comp[xor(n, 2*n)]+1` -/
def P15056879559227165828.Spec : Prop :=
  ∀ n, (P15056879559227165828.a n : ℤ) = A129771 (n + 1)

end A129771

/-! ## A129771.P8345775190977857087

`or(1, 2*comp[xor(n, 2*n)])`
-/

namespace A129771.P8345775190977857087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A129771.P8345775190977857087

namespace A129771

/-- `or(1, 2*comp[xor(n, 2*n)])` -/
def P8345775190977857087.Spec : Prop :=
  ∀ n, (P8345775190977857087.a n : ℤ) = A129771 (n + 1)

end A129771

/-! ## A129771.P11451203103247008666

`xor(1, 2*comp[xor(n, 2*n)])`
-/

namespace A129771.P11451203103247008666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A129771.P11451203103247008666

namespace A129771

/-- `xor(1, 2*comp[xor(n, 2*n)])` -/
def P11451203103247008666.Spec : Prop :=
  ∀ n, (P11451203103247008666.a n : ℤ) = A129771 (n + 1)

end A129771

/-! ## A129771.P17977419708240239293

`eq[-a(and(n, n-1)), n%2]` with `a(0)=1`
-/

namespace A129771.P17977419708240239293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A129771.P17977419708240239293

namespace A129771

/-- `eq[-a(and(n, n-1)), n%2]` -/
def P17977419708240239293.Spec : Prop :=
  ∀ n, (P17977419708240239293.a n : ℤ) = A129771 (n + 1)

end A129771

/-! ## A129771.P3581283035814832586

`lt[(-1)^n, -a(and(n, n-1))]` with `a(0)=1`
-/

namespace A129771.P3581283035814832586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  -f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129771.P3581283035814832586

namespace A129771

/-- `lt[(-1)^n, -a(and(n, n-1))]` -/
def P3581283035814832586.Spec : Prop :=
  ∀ n, (P3581283035814832586.a n : ℤ) = A129771 (n + 1)

end A129771

/-! ## A129771.P11614968407860118251

`xor(2, A092246(n+1))`
-/

namespace A129771.P11614968407860118251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A092246 (n + 1))

end

end A129771.P11614968407860118251

namespace A129771

/-- `xor(2, A092246(n+1))` -/
def P11614968407860118251.Spec : Prop :=
  ∀ n, P11614968407860118251.a n = A129771 (n + 1)

end A129771

/-! ## A129771.P3153849580423427003

`xor(3, A125592(n+1))`
-/

namespace A129771.P3153849580423427003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A125592 (n + 1))

end

end A129771.P3153849580423427003

namespace A129771

/-- `xor(3, A125592(n+1))` -/
def P3153849580423427003.Spec : Prop :=
  ∀ n, P3153849580423427003.a n = A129771 (n + 1)

end A129771

/-! ## A129771.P16543449751296281382

`eq[1, A254379(n)]+1`
-/

namespace A129771.P16543449751296281382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A129771.P16543449751296281382

namespace A129771

/-- `eq[1, A254379(n)]+1` -/
def P16543449751296281382.Spec : Prop :=
  ∀ n, (P16543449751296281382.a n : ℤ) = A129771 (n + 1)

end A129771

/-! ## A129771.P14895553093471235967

`eq[1, A316828(n)]+1`
-/

namespace A129771.P14895553093471235967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A129771.P14895553093471235967

namespace A129771

/-- `eq[1, A316828(n)]+1` -/
def P14895553093471235967.Spec : Prop :=
  ∀ n, (P14895553093471235967.a n : ℤ) = A129771 (n + 1)

end A129771

/-! ## A129771.P18426486601396770080

`eq[1, A316828(xor(1, n))]`
-/

namespace A129771.P18426486601396770080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (Nat.xor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129771.P18426486601396770080

namespace A129771

/-- `eq[1, A316828(xor(1, n))]` -/
def P18426486601396770080.Spec : Prop :=
  ∀ n, (P18426486601396770080.a n : ℤ) = A129771 (n + 1)

end A129771

/-! ## A129771.P10635934349131422070

`A286728(n+1)+n`
-/

namespace A129771.P10635934349131422070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286728 (n + 1) + (n : ℤ)

end

end A129771.P10635934349131422070

namespace A129771

/-- `A286728(n+1)+n` -/
def P10635934349131422070.Spec : Prop :=
  ∀ n, P10635934349131422070.a n = A129771 (n + 1)

end A129771

/-! ## A129771.P5220289033811580449

`2*A181155(n+1)-1`
-/

namespace A129771.P5220289033811580449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181155 (n + 1) - 1

end

end A129771.P5220289033811580449

namespace A129771

/-- `2*A181155(n+1)-1` -/
def P5220289033811580449.Spec : Prop :=
  ∀ n, P5220289033811580449.a n = A129771 (n + 1)

theorem P5220289033811580449.correct : P5220289033811580449.Spec := by
  intro n
  simp only [A129771, Nat.add_sub_cancel, A129771.P5220289033811580449.a, A129771.P17660305195438038504.a, A128309, A128309.P14442768980274460626.a, A181155, A181155.P6532656100866929133.a, A000069, A000069.P3917626109476666468.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129771

/-! ## A129771.P7703155723155253958

`∑[A254655(2*n+1)+1]`
-/

namespace A129771.P7703155723155253958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254655 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129771.P7703155723155253958

namespace A129771

/-- `∑[A254655(2*n+1)+1]` -/
def P7703155723155253958.Spec : Prop :=
  ∀ n, P7703155723155253958.a n = A129771 (n + 1)

end A129771

/-! ## A129771.P17780213216849658351

`A106400(n)+A016825(n)`
-/

namespace A129771.P17780213216849658351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n + A016825 n

end

end A129771.P17780213216849658351

namespace A129771

/-- `A106400(n)+A016825(n)` -/
def P17780213216849658351.Spec : Prop :=
  ∀ n, P17780213216849658351.a n = A129771 (n + 1)

end A129771

/-! ## A129771.P302092103191841869

`xor(A016825(n), A268676(n))`
-/

namespace A129771.P302092103191841869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A016825 n) (A268676 n)

end

end A129771.P302092103191841869

namespace A129771

/-- `xor(A016825(n), A268676(n))` -/
def P302092103191841869.Spec : Prop :=
  ∀ n, P302092103191841869.a n = A129771 (n + 1)

end A129771

/-!
# A129772: a(0) = 1, a(1) = 2; for n > 0, a(2n) = 3a(2n-1), a(2n+1) = 3a(2n) - 2a(n-1).

The programs for A129772, there is no canonical definition to state claims against.
-/

/-! ## A129772.P17172214475929764156

`A039721(n+2)/2`
-/

namespace A129772.P17172214475929764156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039721 (n + 2) : ℚ) / 2

end

end A129772.P17172214475929764156

/-! ## A129772.P7001081694857538655

`A129770(n)+A102877(n)`
-/

namespace A129772.P7001081694857538655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129770 n + A102877 n

end

end A129772.P7001081694857538655

/-! ## A129772.P5609706504237138085

`A129770(n)+A111017(2*n+3)%A111017(2*(n+1))`
-/

namespace A129772.P5609706504237138085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129770 n + Int.tmod (A111017 (2 * n + 3)) (A111017 (2 * (n + 1)))

end

end A129772.P5609706504237138085

/-! ## A129772.P10536709436699285252

`A014682(A039721(n+2))`
-/

namespace A129772.P10536709436699285252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A039721 (n + 2)).toNat

end

end A129772.P10536709436699285252

/-!
# A129775: Number of maximally clustered permutations in S_n; the maximally clustered permutations are those that avoid 3421, 4312 and 4321.

The programs for A129775, there is no canonical definition to state claims against.
-/

/-! ## A129775.P18245648443261396200

`A184955(A004273(n))+A129776(n)`
-/

namespace A129775.P18245648443261396200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A004273 n).toNat + A129776 n

end

end A129775.P18245648443261396200

/-! ## A129775.P7007551463040911313

`A184955(A163985(n))+A129776(n)`
-/

namespace A129775.P7007551463040911313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A163985 n).toNat + A129776 n

end

end A129775.P7007551463040911313

/-! ## A129775.P12997188254073556093

`A198318(A238979(n))+A129776(n)`
-/

namespace A129775.P12997188254073556093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198318 (A238979 n).toNat + A129776 n

end

end A129775.P12997188254073556093

/-! ## A129775.P4702906787871520109

`A184955(A319794(n))+A129776(n)`
-/

namespace A129775.P4702906787871520109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A319794 n).toNat + A129776 n

end

end A129775.P4702906787871520109

/-! ## A129775.P13711433604682927393

`A341024(A184313(n))+A129776(n)`
-/

namespace A129775.P13711433604682927393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341024 ((A184313 n).toNat + 84) + A129776 n

end

end A129775.P13711433604682927393

/-!
# A129776: Number of maximally-clustered hexagon-avoiding permutations in S_n; the maximally-clustered hexagon-avoiding permutations are those that avoid 3421, 4312, 4321, 46718235, 46781235, 56718234, 56781234.

The programs for A129776, the canonical program `A129776.P7601342111782885716` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129776 has offset 0).

The definition of A129776 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129776.P7601342111782885716

`ogf((1-6x+10x^2-7x^3+3x^4+5x^5)/(1-7x+15x^2-14x^3+8x^4+4x^5-3x^6))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129776

/-- `ogf((1-6x+10x^2-7x^3+3x^4+5x^5)/(1-7x+15x^2-14x^3+8x^4+4x^5-3x^6))` -/
def P7601342111782885716.Spec : Prop :=
  ∀ n, P7601342111782885716.a n = A129776 n

theorem P7601342111782885716.correct : P7601342111782885716.Spec := by
  intro n
  simp only [A129776]

end A129776

/-!
# A129777: Number of freely-braided hexagon-avoiding permutations in S_n; the freely-braided hexagon-avoiding permutations are those that avoid 3421, 4231, 4312, 4321, 46718235, 46781235, 56718234 and 56781234.

The programs for A129777, the canonical program `A129777.P14371300053834289470` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129777 has offset 0).

The definition of A129777 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129777.P14371300053834289470

`ogf((1-5x+5x^2-2x^4+6x^5+3x^6)/(1-6x+9x^2-3x^3-x^4+8x^5+x^6-x^7))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129777

/-- `ogf((1-5x+5x^2-2x^4+6x^5+3x^6)/(1-6x+9x^2-3x^3-x^4+8x^5+x^6-x^7))` -/
def P14371300053834289470.Spec : Prop :=
  ∀ n, P14371300053834289470.a n = A129777 n

theorem P14371300053834289470.correct : P14371300053834289470.Spec := by
  intro n
  simp only [A129777]

end A129777

/-!
# A129778: Number of Deodhar elements in the finite Weyl group D_n.

The programs for A129778, there is no canonical definition to state claims against.
-/

/-! ## A129778.P18147705414406015889

`A276796(A145027(2*(n+1))+A061084(2*n))`
-/

namespace A129778.P18147705414406015889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (A145027 (2 * (n + 1)) + A061084 (2 * n)).toNat

end

end A129778.P18147705414406015889

/-! ## A129778.P5964382488800109189

`A099307(A353018(n))+A002057(n)`
-/

namespace A129778.P5964382488800109189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099307 (A353018 n).toNat + A002057 n

end

end A129778.P5964382488800109189

/-!
# A129779: a(1) = 1, a(2) = -1, a(3) = 2; for n > 3, a(n) = -(2*n-5)*a(n-1).

The programs for A129779, the canonical program `A129779.P7684763424080942234` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129779 has offset 1).

The definition of A129779 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-(2*(n+1)-5)*a(n-1)` (program `A129779.P7684763424080942234`, by `A129779.P7684763424080942234.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129779.P7684763424080942234

`-(2*(n+1)-5)*a(n-1)` with `a(0)=1, a(1)=-1, a(2)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129779

/-- `-(2*(n+1)-5)*a(n-1)` -/
def P7684763424080942234.Spec : Prop :=
  ∀ n, P7684763424080942234.a n = A129779 (n + 1)

theorem P7684763424080942234.correct : P7684763424080942234.Spec := by
  intro n
  simp only [A129779, Nat.add_sub_cancel]

end A129779

/-! ## A129779.P13651796009504270835

`∏[floor(acot(n))-comp[2*(n+2)]]`
-/

namespace A129779.P13651796009504270835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129779.P13651796009504270835

namespace A129779

/-- `∏[floor(acot(n))-comp[2*(n+2)]]` -/
def P13651796009504270835.Spec : Prop :=
  ∀ n, P13651796009504270835.a n = A129779 (n + 1)

end A129779

/-! ## A129779.P1932614600892725577

`∏[ceil(acot(n))-(comp[2*(n+2)]+1)]`
-/

namespace A129779.P1932614600892725577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129779.P1932614600892725577

namespace A129779

/-- `∏[ceil(acot(n))-(comp[2*(n+2)]+1)]` -/
def P1932614600892725577.Spec : Prop :=
  ∀ n, P1932614600892725577.a n = A129779 (n + 1)

end A129779

/-! ## A129779.P10699210894443188370

`∏[1-∪[2*n, (n+3)^(n+1)]]`
-/

namespace A129779.P10699210894443188370
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129779.P10699210894443188370

namespace A129779

/-- `∏[1-∪[2*n, (n+3)^(n+1)]]` -/
def P10699210894443188370.Spec : Prop :=
  ∀ n, P10699210894443188370.a n = A129779 (n + 1)

end A129779

/-! ## A129779.P865567459739200967

`((3-n)%a(n-1)-n)*a(n-1)` with `a(0)=1`
-/

namespace A129779.P865567459739200967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.tmod (3 - (n : ℤ)) (a (n - 1)) - (n : ℤ)) * a (n - 1)

end

end A129779.P865567459739200967

namespace A129779

/-- `((3-n)%a(n-1)-n)*a(n-1)` -/
def P865567459739200967.Spec : Prop :=
  ∀ n, P865567459739200967.a n = A129779 (n + 1)

end A129779

/-! ## A129779.P5431881337715790650

`∏[A000007(n)-A004274(n)]`
-/

namespace A129779.P5431881337715790650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A004274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129779.P5431881337715790650

namespace A129779

/-- `∏[A000007(n)-A004274(n)]` -/
def P5431881337715790650.Spec : Prop :=
  ∀ n, P5431881337715790650.a n = A129779 (n + 1)

end A129779

/-! ## A129779.P8856702886535900847

`∏[A112316(n)-A004274(n)]`
-/

namespace A129779.P8856702886535900847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 n - A004274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129779.P8856702886535900847

namespace A129779

/-- `∏[A112316(n)-A004274(n)]` -/
def P8856702886535900847.Spec : Prop :=
  ∀ n, P8856702886535900847.a n = A129779 (n + 1)

end A129779

/-! ## A129779.P8551138604666238424

`∏[A151878(n)-A004274(n)]`
-/

namespace A129779.P8551138604666238424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n - A004274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129779.P8551138604666238424

namespace A129779

/-- `∏[A151878(n)-A004274(n)]` -/
def P8551138604666238424.Spec : Prop :=
  ∀ n, P8551138604666238424.a n = A129779 (n + 1)

end A129779

/-! ## A129779.P16109518836405663560

`∏[A151933(n)-A004274(n)]`
-/

namespace A129779.P16109518836405663560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n - A004274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129779.P16109518836405663560

namespace A129779

/-- `∏[A151933(n)-A004274(n)]` -/
def P16109518836405663560.Spec : Prop :=
  ∀ n, P16109518836405663560.a n = A129779 (n + 1)

end A129779

/-! ## A129779.P9624271758634554129

`∏[A267873(n)-A130824(n)]`
-/

namespace A129779.P9624271758634554129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 n - A130824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129779.P9624271758634554129

namespace A129779

/-- `∏[A267873(n)-A130824(n)]` -/
def P9624271758634554129.Spec : Prop :=
  ∀ n, P9624271758634554129.a n = A129779 (n + 1)

end A129779

/-!
# A129780: The prime(n)-th lower twin prime.

The programs for A129780, the canonical program `A129780.P84992319018896243` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129780 has offset 1).

The definition of A129780 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A129780.P84992319018896243

`A001359(A000040(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A129780

/-- `A001359(A000040(n+1))` -/
def P84992319018896243.Spec : Prop :=
  ∀ n, P84992319018896243.a n = A129780 (n + 1)

theorem P84992319018896243.correct : P84992319018896243.Spec := by
  intro n
  simp only [A129780, Nat.add_sub_cancel]

end A129780

/-! ## A129780.P216897998108323833

`A001359(p?[comp[n²]])`
-/

namespace A129780.P216897998108323833
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A129780.P216897998108323833

namespace A129780

/-- `A001359(p?[comp[n²]])` -/
def P216897998108323833.Spec : Prop :=
  ∀ n, P216897998108323833.a n = A129780 (n + 1)

end A129780

/-! ## A129780.P1562575147848975584

`A129781(n+1)-2`
-/

namespace A129780.P1562575147848975584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129781 (n + 1) - 2

end

end A129780.P1562575147848975584

namespace A129780

/-- `A129781(n+1)-2` -/
def P1562575147848975584.Spec : Prop :=
  ∀ n, P1562575147848975584.a n = A129780 (n + 1)

theorem P1562575147848975584.correct : P1562575147848975584.Spec := by
  intro n
  simp only [A129780, Nat.add_sub_cancel, A129780.P1562575147848975584.a, A129780.P84992319018896243.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001359, A001359.P8865495035699438537.a, A129781, A129781.P14667007780721229883.a, A006512, A006512.P8157243218962949380.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129780

/-! ## A129780.P17614040764665112295

`A001097(A037168(n+1))`
-/

namespace A129780.P17614040764665112295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (A037168 (n + 1)).toNat

end

end A129780.P17614040764665112295

namespace A129780

/-- `A001097(A037168(n+1))` -/
def P17614040764665112295.Spec : Prop :=
  ∀ n, P17614040764665112295.a n = A129780 (n + 1)

end A129780

/-! ## A129780.P678226848132873363

`A001359(A077359(n+1))`
-/

namespace A129780.P678226848132873363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (A077359 (n + 1)).toNat

end

end A129780.P678226848132873363

namespace A129780

/-- `A001359(A077359(n+1))` -/
def P678226848132873363.Spec : Prop :=
  ∀ n, P678226848132873363.a n = A129780 (n + 1)

end A129780

/-!
# A129781: The prime(n)-th upper twin prime.

The programs for A129781, the canonical program `A129781.P14667007780721229883` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129781 has offset 1).

The definition of A129781 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006512, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A129781.P14667007780721229883

`A006512(A000040(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A129781

/-- `A006512(A000040(n+1))` -/
def P14667007780721229883.Spec : Prop :=
  ∀ n, P14667007780721229883.a n = A129781 (n + 1)

theorem P14667007780721229883.correct : P14667007780721229883.Spec := by
  intro n
  simp only [A129781, Nat.add_sub_cancel]

end A129781

/-! ## A129781.P15822214238008550637

`A006512(p?[comp[n²]])`
-/

namespace A129781.P15822214238008550637
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A129781.P15822214238008550637

namespace A129781

/-- `A006512(p?[comp[n²]])` -/
def P15822214238008550637.Spec : Prop :=
  ∀ n, P15822214238008550637.a n = A129781 (n + 1)

end A129781

/-! ## A129781.P16161078060778962680

`A129780(n+1)+2`
-/

namespace A129781.P16161078060778962680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129780 (n + 1) + 2

end

end A129781.P16161078060778962680

namespace A129781

/-- `A129780(n+1)+2` -/
def P16161078060778962680.Spec : Prop :=
  ∀ n, P16161078060778962680.a n = A129781 (n + 1)

theorem P16161078060778962680.correct : P16161078060778962680.Spec := by
  intro n
  simp only [A129781, Nat.add_sub_cancel, A129781.P16161078060778962680.a, A129781.P14667007780721229883.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006512, A006512.P8157243218962949380.a, A129780, A129780.P84992319018896243.a, A001359, A001359.P8865495035699438537.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A129781

/-! ## A129781.P18423421294458683397

`A067829(A008864(n+1))`
-/

namespace A129781.P18423421294458683397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (A008864 (n + 1)).toNat

end

end A129781.P18423421294458683397

namespace A129781

/-- `A067829(A008864(n+1))` -/
def P18423421294458683397.Spec : Prop :=
  ∀ n, P18423421294458683397.a n = A129781 (n + 1)

end A129781

/-! ## A129781.P17923997399654882965

`A006512(A077359(n+1))`
-/

namespace A129781.P17923997399654882965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (A077359 (n + 1)).toNat

end

end A129781.P17923997399654882965

namespace A129781

/-- `A006512(A077359(n+1))` -/
def P17923997399654882965.Spec : Prop :=
  ∀ n, P17923997399654882965.a n = A129781 (n + 1)

end A129781

/-!
# A129782: The upper twin prime whose lower member has a prime index.

The programs for A129782, the canonical program `A129782.P7810012710438629702` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129782 has offset 1).

The definition of A129782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129782.P7810012710438629702

`A096479(n+1)+2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A129782

/-- `A096479(n+1)+2` -/
def P7810012710438629702.Spec : Prop :=
  ∀ n, P7810012710438629702.a n = A129782 (n + 1)

theorem P7810012710438629702.correct : P7810012710438629702.Spec := by
  intro n
  simp only [A129782, Nat.add_sub_cancel]

end A129782

/-! ## A129782.P1044565831488769547

`A072677(A096477(n+1))`
-/

namespace A129782.P1044565831488769547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072677 (A096477 (n + 1)).toNat

end

end A129782.P1044565831488769547

namespace A129782

/-- `A072677(A096477(n+1))` -/
def P1044565831488769547.Spec : Prop :=
  ∀ n, P1044565831488769547.a n = A129782 (n + 1)

end A129782

/-! ## A129782.P10798813821874477784

`∩[A001359(n+1), A006450(n+1)]+2`
-/

namespace A129782.P10798813821874477784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A129782.P10798813821874477784

namespace A129782

/-- `∩[A001359(n+1), A006450(n+1)]+2` -/
def P10798813821874477784.Spec : Prop :=
  ∀ n, (P10798813821874477784.a n : ℤ) = A129782 (n + 1)

end A129782

/-! ## A129782.P11550792143634832556

`∩[A001359(n+1), A175247(n+1)]+2`
-/

namespace A129782.P11550792143634832556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A129782.P11550792143634832556

namespace A129782

/-- `∩[A001359(n+1), A175247(n+1)]+2` -/
def P11550792143634832556.Spec : Prop :=
  ∀ n, (P11550792143634832556.a n : ℤ) = A129782 (n + 1)

end A129782

/-! ## A129782.P6034810118139553113

`∩[A001359(n+1), A302592(n+1)]+2`
-/

namespace A129782.P6034810118139553113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A129782.P6034810118139553113

namespace A129782

/-- `∩[A001359(n+1), A302592(n+1)]+2` -/
def P6034810118139553113.Spec : Prop :=
  ∀ n, (P6034810118139553113.a n : ℤ) = A129782 (n + 1)

end A129782

/-! ## A129782.P15281621391029119672

`∩[A001359(n+1), A302596(n+1)]+2`
-/

namespace A129782.P15281621391029119672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A129782.P15281621391029119672

namespace A129782

/-- `∩[A001359(n+1), A302596(n+1)]+2` -/
def P15281621391029119672.Spec : Prop :=
  ∀ n, (P15281621391029119672.a n : ℤ) = A129782 (n + 1)

end A129782

/-! ## A129782.P14878048704208380133

`∩[A006450(n+1), A378983(n+1)]+2`
-/

namespace A129782.P14878048704208380133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A129782.P14878048704208380133

namespace A129782

/-- `∩[A006450(n+1), A378983(n+1)]+2` -/
def P14878048704208380133.Spec : Prop :=
  ∀ n, (P14878048704208380133.a n : ℤ) = A129782 (n + 1)

end A129782

/-! ## A129782.P7509143291897923827

`∩[A006512(n+1), A072677(n+1)]`
-/

namespace A129782.P7509143291897923827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129782.P7509143291897923827

namespace A129782

/-- `∩[A006512(n+1), A072677(n+1)]` -/
def P7509143291897923827.Spec : Prop :=
  ∀ n, (P7509143291897923827.a n : ℤ) = A129782 (n + 1)

end A129782

/-! ## A129782.P2368187627079289072

`∩[A067829(n+1), A072677(n+1)]`
-/

namespace A129782.P2368187627079289072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129782.P2368187627079289072

namespace A129782

/-- `∩[A067829(n+1), A072677(n+1)]` -/
def P2368187627079289072.Spec : Prop :=
  ∀ n, (P2368187627079289072.a n : ℤ) = A129782 (n + 1)

end A129782

/-! ## A129782.P7761213036103497378

`∩[A006450(n+1), A054799(n+1)]+2`
-/

namespace A129782.P7761213036103497378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A129782.P7761213036103497378

namespace A129782

/-- `∩[A006450(n+1), A054799(n+1)]+2` -/
def P7761213036103497378.Spec : Prop :=
  ∀ n, (P7761213036103497378.a n : ℤ) = A129782 (n + 1)

end A129782

/-! ## A129782.P4294133179106527506

`∩[A006450(n+1), A063700(n+1)]+2`
-/

namespace A129782.P4294133179106527506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A129782.P4294133179106527506

namespace A129782

/-- `∩[A006450(n+1), A063700(n+1)]+2` -/
def P4294133179106527506.Spec : Prop :=
  ∀ n, (P4294133179106527506.a n : ℤ) = A129782 (n + 1)

end A129782

/-! ## A129782.P10637116550172217975

`∩[A006450(n+1), A124588(n+1)]+2`
-/

namespace A129782.P10637116550172217975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A129782.P10637116550172217975

namespace A129782

/-- `∩[A006450(n+1), A124588(n+1)]+2` -/
def P10637116550172217975.Spec : Prop :=
  ∀ n, (P10637116550172217975.a n : ℤ) = A129782 (n + 1)

end A129782

/-! ## A129782.P5897803972080273964

`∩[A006450(n+1), A181747(n+1)]+2`
-/

namespace A129782.P5897803972080273964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A129782.P5897803972080273964

namespace A129782

/-- `∩[A006450(n+1), A181747(n+1)]+2` -/
def P5897803972080273964.Spec : Prop :=
  ∀ n, (P5897803972080273964.a n : ℤ) = A129782 (n + 1)

end A129782

/-! ## A129782.P16118519886585057458

`∩[A054799(n+1), A175247(n+1)]+2`
-/

namespace A129782.P16118519886585057458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A129782.P16118519886585057458

namespace A129782

/-- `∩[A054799(n+1), A175247(n+1)]+2` -/
def P16118519886585057458.Spec : Prop :=
  ∀ n, (P16118519886585057458.a n : ℤ) = A129782 (n + 1)

end A129782

/-! ## A129782.P17355517812203354772

`∩[A063700(n+1), A175247(n+1)]+2`
-/

namespace A129782.P17355517812203354772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A129782.P17355517812203354772

namespace A129782

/-- `∩[A063700(n+1), A175247(n+1)]+2` -/
def P17355517812203354772.Spec : Prop :=
  ∀ n, (P17355517812203354772.a n : ℤ) = A129782 (n + 1)

end A129782

/-! ## A129782.P12060253185436942756

`∩[A006450(n+1), A238528(n+1)]+2`
-/

namespace A129782.P12060253185436942756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A129782.P12060253185436942756

namespace A129782

/-- `∩[A006450(n+1), A238528(n+1)]+2` -/
def P12060253185436942756.Spec : Prop :=
  ∀ n, (P12060253185436942756.a n : ℤ) = A129782 (n + 1)

end A129782

/-! ## A129782.P1327338152500291264

`∩[A175247(n+1), A181747(n+1)]+2`
-/

namespace A129782.P1327338152500291264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A129782.P1327338152500291264

namespace A129782

/-- `∩[A175247(n+1), A181747(n+1)]+2` -/
def P1327338152500291264.Spec : Prop :=
  ∀ n, (P1327338152500291264.a n : ℤ) = A129782 (n + 1)

end A129782

/-! ## A129782.P17455243759760619013

`∩[A054799(n+1), A302592(n+1)]+2`
-/

namespace A129782.P17455243759760619013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A129782.P17455243759760619013

namespace A129782

/-- `∩[A054799(n+1), A302592(n+1)]+2` -/
def P17455243759760619013.Spec : Prop :=
  ∀ n, (P17455243759760619013.a n : ℤ) = A129782 (n + 1)

end A129782

/-! ## A129782.P1515225771732619580

`∩[A054799(n+1), A302596(n+1)]+2`
-/

namespace A129782.P1515225771732619580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A129782.P1515225771732619580

namespace A129782

/-- `∩[A054799(n+1), A302596(n+1)]+2` -/
def P1515225771732619580.Spec : Prop :=
  ∀ n, (P1515225771732619580.a n : ℤ) = A129782 (n + 1)

end A129782

/-! ## A129782.P17684490218888185475

`∩[A063700(n+1), A302592(n+1)]+2`
-/

namespace A129782.P17684490218888185475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A129782.P17684490218888185475

namespace A129782

/-- `∩[A063700(n+1), A302592(n+1)]+2` -/
def P17684490218888185475.Spec : Prop :=
  ∀ n, (P17684490218888185475.a n : ℤ) = A129782 (n + 1)

end A129782

/-!
# A129784: a(n) = floor(log_10(2^(2^n))).

The programs for A129784, there is no canonical definition to state claims against.
-/

/-! ## A129784.P17613613806920275242

`∑[round(2^n/log2(10))]`
-/

namespace A129784.P17613613806920275242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℝ) / Real.logb 2 (10 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129784.P17613613806920275242

/-! ## A129784.P11071917937351991083

`Δ[ceil(2^n/log2(10))]+a(n-1)` with `a(0)=0`
-/

namespace A129784.P11071917937351991083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n : ℝ) / Real.logb 2 (10 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1)

end

end A129784.P11071917937351991083

/-! ## A129784.P1919842089414375714

`A057755(n+1)-1`
-/

namespace A129784.P1919842089414375714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057755 (n + 1) - 1

end

end A129784.P1919842089414375714

/-! ## A129784.P1405130049590335821

`Δ[∑[A057755(n)]-n]`
-/

namespace A129784.P1405130049590335821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057755 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129784.P1405130049590335821

/-! ## A129784.P10065970320789036027

`floor(A000079(n+1)/log2(10))`
-/

namespace A129784.P10065970320789036027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000079 (n + 1) : ℝ) / Real.logb 2 (10 : ℝ)⌋

end

end A129784.P10065970320789036027

/-!
# A129785: a(n) = Product_{k=0..n-1} (1 + binomial(n,k)*a(k)), with a(0) = 1.

The programs for A129785, there is no canonical definition to state claims against.
-/

/-! ## A129785.P15187134490170399670

`A032958((a(n-1)+1)*a(n-1))` with `a(0)=1`
-/

namespace A129785.P15187134490170399670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A032958 ((a (n - 1) + 1) * a (n - 1)).toNat

end

end A129785.P15187134490170399670

/-!
# A129786: Least k such that 2^(2^n)+k is prime.

The programs for A129786, there is no canonical definition to state claims against.
-/

/-! ## A129786.P4056129293532727485

`A092131(2^n)`
-/

namespace A129786.P4056129293532727485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092131 (2 ^ n)

end

end A129786.P4056129293532727485

/-! ## A129786.P2511299750110236943

`A013597(2^n)%(3^n)`
-/

namespace A129786.P2511299750110236943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013597 (2 ^ n)) (3 ^ n : ℤ)

end

end A129786.P2511299750110236943

/-! ## A129786.P13269358390233844838

`Δ[∑{d}[ceil(2^(n-1)), A013597(#)]]`
-/

namespace A129786.P13269358390233844838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A013597 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129786.P13269358390233844838

/-! ## A129786.P16938461606490359705

`A092131(A000079(n))+char[17]`
-/

namespace A129786.P16938461606490359705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092131 (A000079 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A129786.P16938461606490359705

/-! ## A129786.P2601777831735331844

`A013597(2^n)-A000007(n)`
-/

namespace A129786.P2601777831735331844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 (2 ^ n) - A000007 n

end

end A129786.P2601777831735331844

/-!
# A129787: Ceiling(3^n/n).

The programs for A129787, the canonical program `A129787.P5308297862988413515` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129787 has offset 1).

The definition of A129787 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(3^(n+1)/(n+1))` (program `A129787.P5308297862988413515`, by `A129787.P5308297862988413515.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129787.P5308297862988413515

`ceil(3^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129787

/-- `ceil(3^(n+1)/(n+1))` -/
def P5308297862988413515.Spec : Prop :=
  ∀ n, P5308297862988413515.a n = A129787 (n + 1)

theorem P5308297862988413515.correct : P5308297862988413515.Spec := by
  intro n
  simp only [A129787, Nat.add_sub_cancel]

end A129787

/-! ## A129787.P978076925967460825

`A225585(n+1)+1`
-/

namespace A129787.P978076925967460825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225585 (n + 1) + 1

end

end A129787.P978076925967460825

namespace A129787

/-- `A225585(n+1)+1` -/
def P978076925967460825.Spec : Prop :=
  ∀ n, P978076925967460825.a n = A129787 (n + 1)

end A129787

/-! ## A129787.P14763568988567591034

`A092763(n+1)+A057427(A066601(n+1))`
-/

namespace A129787.P14763568988567591034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092763 (n + 1) + A057427 (A066601 (n + 1)).toNat

end

end A129787.P14763568988567591034

namespace A129787

/-- `A092763(n+1)+A057427(A066601(n+1))` -/
def P14763568988567591034.Spec : Prop :=
  ∀ n, P14763568988567591034.a n = A129787 (n + 1)

end A129787

/-! ## A129787.P11663050407173046464

`A092763(n+1)+1-A000007(A066440(n+1))`
-/

namespace A129787.P11663050407173046464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092763 (n + 1) + (1 - A000007 (A066440 (n + 1)).toNat)

end

end A129787.P11663050407173046464

namespace A129787

/-- `A092763(n+1)+1-A000007(A066440(n+1))` -/
def P11663050407173046464.Spec : Prop :=
  ∀ n, P11663050407173046464.a n = A129787 (n + 1)

end A129787

/-! ## A129787.P16427688835900262718

`floor(2*∑[3^n]/(n+1))+(floor(2^(n+1)/(n+1))%2)!`
-/

namespace A129787.P16427688835900262718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ))⌋ + (Nat.factorial (Int.tmod ⌊(2 ^ (n + 1) : ℚ) / (n + 1 : ℚ)⌋ 2).toNat : ℤ)

end

end A129787.P16427688835900262718

namespace A129787

/-- `floor(2*∑[3^n]/(n+1))+(floor(2^(n+1)/(n+1))%2)!` -/
def P16427688835900262718.Spec : Prop :=
  ∀ n, P16427688835900262718.a n = A129787 (n + 1)

end A129787

/-! ## A129787.P4453934573807452720

`floor(∑[3*a(n-1)]/(n+1))+1` with `a(0)=2`
-/

namespace A129787.P4453934573807452720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A129787.P4453934573807452720

namespace A129787

/-- `floor(∑[3*a(n-1)]/(n+1))+1` -/
def P4453934573807452720.Spec : Prop :=
  ∀ n, P4453934573807452720.a n = A129787 (n + 1)

end A129787

/-! ## A129787.P4610246694290297834

`floor(∑[A052919(n+1)]/(n+1))`
-/

namespace A129787.P4610246694290297834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A129787.P4610246694290297834

namespace A129787

/-- `floor(∑[A052919(n+1)]/(n+1))` -/
def P4610246694290297834.Spec : Prop :=
  ∀ n, P4610246694290297834.a n = A129787 (n + 1)

end A129787

/-! ## A129787.P4093908772601766051

`floor(A024023(n+1)/(n+1))+1`
-/

namespace A129787.P4093908772601766051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024023 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A129787.P4093908772601766051

namespace A129787

/-- `floor(A024023(n+1)/(n+1))+1` -/
def P4093908772601766051.Spec : Prop :=
  ∀ n, P4093908772601766051.a n = A129787 (n + 1)

end A129787

/-! ## A129787.P6699545893168708898

`floor((A000244(n+1)+n)/(n+1))`
-/

namespace A129787.P6699545893168708898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000244 (n + 1) + (n : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A129787.P6699545893168708898

namespace A129787

/-- `floor((A000244(n+1)+n)/(n+1))` -/
def P6699545893168708898.Spec : Prop :=
  ∀ n, P6699545893168708898.a n = A129787 (n + 1)

end A129787

/-! ## A129787.P17228931877702346384

`floor((3*sqrt(A001019(n))+n)/(n+1))`
-/

namespace A129787.P17228931877702346384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * Real.sqrt (A001019 n : ℝ) + (n : ℝ)) / (n + 1 : ℝ)⌋

end

end A129787.P17228931877702346384

namespace A129787

/-- `floor((3*sqrt(A001019(n))+n)/(n+1))` -/
def P17228931877702346384.Spec : Prop :=
  ∀ n, P17228931877702346384.a n = A129787 (n + 1)

end A129787

/-! ## A129787.P7891885885492425077

`floor((sqrt(A001019(n+1))+n)/(n+1))`
-/

namespace A129787.P7891885885492425077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (A001019 (n + 1) : ℝ) + (n : ℝ)) / (n + 1 : ℝ)⌋

end

end A129787.P7891885885492425077

namespace A129787

/-- `floor((sqrt(A001019(n+1))+n)/(n+1))` -/
def P7891885885492425077.Spec : Prop :=
  ∀ n, P7891885885492425077.a n = A129787 (n + 1)

end A129787

/-!
# A129788: a(n) = ceiling(4^n/n).

The programs for A129788, the canonical program `A129788.P4552230145838519227` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129788 has offset 1).

The definition of A129788 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(4^(n+1)/(n+1))` (program `A129788.P4552230145838519227`, by `A129788.P4552230145838519227.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129788.P4552230145838519227

`ceil(4^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129788

/-- `ceil(4^(n+1)/(n+1))` -/
def P4552230145838519227.Spec : Prop :=
  ∀ n, P4552230145838519227.a n = A129788 (n + 1)

theorem P4552230145838519227.correct : P4552230145838519227.Spec := by
  intro n
  simp only [A129788, Nat.add_sub_cancel]

end A129788

/-! ## A129788.P5850369976095377760

`A053639(2*(n+1))`
-/

namespace A129788.P5850369976095377760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053639 (2 * (n + 1))

end

end A129788.P5850369976095377760

namespace A129788

/-- `A053639(2*(n+1))` -/
def P5850369976095377760.Spec : Prop :=
  ∀ n, P5850369976095377760.a n = A129788 (n + 1)

end A129788

/-! ## A129788.P4558889519046091133

`A129794(n+1)+A043545(n)`
-/

namespace A129788.P4558889519046091133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129794 (n + 1) + A043545 n

end

end A129788.P4558889519046091133

namespace A129788

/-- `A129794(n+1)+A043545(n)` -/
def P4558889519046091133.Spec : Prop :=
  ∀ n, P4558889519046091133.a n = A129788 (n + 1)

end A129788

/-! ## A129788.P3229380621394028680

`record[A053639(A033999(n)+1+n)]`
-/

namespace A129788.P3229380621394028680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053639 (A033999 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129788.P3229380621394028680

namespace A129788

/-- `record[A053639(A033999(n)+1+n)]` -/
def P3229380621394028680.Spec : Prop :=
  ∀ n, P3229380621394028680.a n = A129788 (n + 1)

end A129788

/-! ## A129788.P6310077282332802923

`A281375(2*(n+1))+A043545(n)`
-/

namespace A129788.P6310077282332802923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281375 (2 * (n + 1)) + A043545 n

end

end A129788.P6310077282332802923

namespace A129788

/-- `A281375(2*(n+1))+A043545(n)` -/
def P6310077282332802923.Spec : Prop :=
  ∀ n, P6310077282332802923.a n = A129788 (n + 1)

end A129788

/-! ## A129788.P9162105886941918397

`A065482(2*(n+1))+A053638(2*(n+1))`
-/

namespace A129788.P9162105886941918397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065482 (2 * (n + 1)) + A053638 (2 * (n + 1))

end

end A129788.P9162105886941918397

namespace A129788

/-- `A065482(2*(n+1))+A053638(2*(n+1))` -/
def P9162105886941918397.Spec : Prop :=
  ∀ n, P9162105886941918397.a n = A129788 (n + 1)

end A129788

/-! ## A129788.P17938636095169251684

`A065482(2*(n+1))+A082482(2*(n+1))+1`
-/

namespace A129788.P17938636095169251684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065482 (2 * (n + 1)) + (A082482 (2 * (n + 1)) + 1)

end

end A129788.P17938636095169251684

namespace A129788

/-- `A065482(2*(n+1))+A082482(2*(n+1))+1` -/
def P17938636095169251684.Spec : Prop :=
  ∀ n, P17938636095169251684.a n = A129788 (n + 1)

end A129788

/-! ## A129788.P5637432784489682482

`A053638(n+1)+A129794(n+1)-A000799(n+1)`
-/

namespace A129788.P5637432784489682482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053638 (n + 1) + (A129794 (n + 1) - A000799 (n + 1))

end

end A129788.P5637432784489682482

namespace A129788

/-- `A053638(n+1)+A129794(n+1)-A000799(n+1)` -/
def P5637432784489682482.Spec : Prop :=
  ∀ n, P5637432784489682482.a n = A129788 (n + 1)

end A129788

/-! ## A129788.P2215069175649561263

`A053638(2*(n+1))+A281375(2*(n+1))-A000799(2*(n+1))`
-/

namespace A129788.P2215069175649561263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053638 (2 * (n + 1)) + (A281375 (2 * (n + 1)) - A000799 (2 * (n + 1)))

end

end A129788.P2215069175649561263

namespace A129788

/-- `A053638(2*(n+1))+A281375(2*(n+1))-A000799(2*(n+1))` -/
def P2215069175649561263.Spec : Prop :=
  ∀ n, P2215069175649561263.a n = A129788 (n + 1)

end A129788

/-! ## A129788.P1083271164217953081

`floor(or(n, 4^(n+1))/(n+1))`
-/

namespace A129788.P1083271164217953081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor n (4 ^ (n + 1)) : ℚ) / (n + 1 : ℚ)⌋

end

end A129788.P1083271164217953081

namespace A129788

/-- `floor(or(n, 4^(n+1))/(n+1))` -/
def P1083271164217953081.Spec : Prop :=
  ∀ n, P1083271164217953081.a n = A129788 (n + 1)

end A129788

/-! ## A129788.P18347911461933715701

`floor(xor(n, 4^(n+1))/(n+1))`
-/

namespace A129788.P18347911461933715701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor n (4 ^ (n + 1)) : ℚ) / (n + 1 : ℚ)⌋

end

end A129788.P18347911461933715701

namespace A129788

/-- `floor(xor(n, 4^(n+1))/(n+1))` -/
def P18347911461933715701.Spec : Prop :=
  ∀ n, P18347911461933715701.a n = A129788 (n + 1)

end A129788

/-! ## A129788.P2338478830712448562

`floor(∑[4*a(n-1)]/(n+1))+1` with `a(0)=3`
-/

namespace A129788.P2338478830712448562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A129788.P2338478830712448562

namespace A129788

/-- `floor(∑[4*a(n-1)]/(n+1))+1` -/
def P2338478830712448562.Spec : Prop :=
  ∀ n, P2338478830712448562.a n = A129788 (n + 1)

end A129788

/-! ## A129788.P3229724608850165200

`floor(A024036(n+1)/(n+1))+1`
-/

namespace A129788.P3229724608850165200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024036 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A129788.P3229724608850165200

namespace A129788

/-- `floor(A024036(n+1)/(n+1))+1` -/
def P3229724608850165200.Spec : Prop :=
  ∀ n, P3229724608850165200.a n = A129788 (n + 1)

end A129788

/-! ## A129788.P7565031358870635024

`floor((A000079(n+1)²+n)/(n+1))`
-/

namespace A129788.P7565031358870635024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000079 (n + 1) ^ 2 + (n : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A129788.P7565031358870635024

namespace A129788

/-- `floor((A000079(n+1)²+n)/(n+1))` -/
def P7565031358870635024.Spec : Prop :=
  ∀ n, P7565031358870635024.a n = A129788 (n + 1)

end A129788

/-!
# A129789: a(n) = ceiling(5^n/n).

The programs for A129789, the canonical program `A129789.P37992071667925043` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129789 has offset 1).

The definition of A129789 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(5^(n+1)/(n+1))` (program `A129789.P37992071667925043`, by `A129789.P37992071667925043.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129789.P37992071667925043

`ceil(5^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129789

/-- `ceil(5^(n+1)/(n+1))` -/
def P37992071667925043.Spec : Prop :=
  ∀ n, P37992071667925043.a n = A129789 (n + 1)

theorem P37992071667925043.correct : P37992071667925043.Spec := by
  intro n
  simp only [A129789, Nat.add_sub_cancel]

end A129789

/-! ## A129789.P2039645014473189798

`A225586(n+1)+1`
-/

namespace A129789.P2039645014473189798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225586 (n + 1) + 1

end

end A129789.P2039645014473189798

namespace A129789

/-- `A225586(n+1)+1` -/
def P2039645014473189798.Spec : Prop :=
  ∀ n, P2039645014473189798.a n = A129789 (n + 1)

end A129789

/-! ## A129789.P14044766955650653865

`A129795(n+1)+1-char[A024049(n)]`
-/

namespace A129789.P14044766955650653865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024049 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129795 (n + 1) + (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A129789.P14044766955650653865

namespace A129789

/-- `A129795(n+1)+1-char[A024049(n)]` -/
def P14044766955650653865.Spec : Prop :=
  ∀ n, P14044766955650653865.a n = A129789 (n + 1)

end A129789

/-! ## A129789.P8759977055661130656

`floor(∑[5*a(n-1)]/(n+1))+1` with `a(0)=4`
-/

namespace A129789.P8759977055661130656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A129789.P8759977055661130656

namespace A129789

/-- `floor(∑[5*a(n-1)]/(n+1))+1` -/
def P8759977055661130656.Spec : Prop :=
  ∀ n, P8759977055661130656.a n = A129789 (n + 1)

end A129789

/-! ## A129789.P12384632888095189548

`floor(∑[A199215(n)]/(n+1))`
-/

namespace A129789.P12384632888095189548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A129789.P12384632888095189548

namespace A129789

/-- `floor(∑[A199215(n)]/(n+1))` -/
def P12384632888095189548.Spec : Prop :=
  ∀ n, P12384632888095189548.a n = A129789 (n + 1)

end A129789

/-! ## A129789.P9940602685678016212

`floor((A000351(n+1)+n)/(n+1))`
-/

namespace A129789.P9940602685678016212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000351 (n + 1) + (n : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A129789.P9940602685678016212

namespace A129789

/-- `floor((A000351(n+1)+n)/(n+1))` -/
def P9940602685678016212.Spec : Prop :=
  ∀ n, P9940602685678016212.a n = A129789 (n + 1)

end A129789

/-!
# A129790: a(n) = ceiling(6^n/n).

The programs for A129790, the canonical program `A129790.P1408057438378079480` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129790 has offset 1).

The definition of A129790 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(6^(n+1)/(n+1))` (program `A129790.P1408057438378079480`, by `A129790.P1408057438378079480.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129790.P1408057438378079480

`ceil(6^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129790

/-- `ceil(6^(n+1)/(n+1))` -/
def P1408057438378079480.Spec : Prop :=
  ∀ n, P1408057438378079480.a n = A129790 (n + 1)

theorem P1408057438378079480.correct : P1408057438378079480.Spec := by
  intro n
  simp only [A129790, Nat.add_sub_cancel]

end A129790

/-! ## A129790.P16340549495994103881

`floor(or(n, 6^(n+1))/(n+1))`
-/

namespace A129790.P16340549495994103881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor n (6 ^ (n + 1)) : ℚ) / (n + 1 : ℚ)⌋

end

end A129790.P16340549495994103881

namespace A129790

/-- `floor(or(n, 6^(n+1))/(n+1))` -/
def P16340549495994103881.Spec : Prop :=
  ∀ n, P16340549495994103881.a n = A129790 (n + 1)

end A129790

/-! ## A129790.P3697928967527069576

`floor(∑[A199320(n)]/(n+1))`
-/

namespace A129790.P3697928967527069576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A129790.P3697928967527069576

namespace A129790

/-- `floor(∑[A199320(n)]/(n+1))` -/
def P3697928967527069576.Spec : Prop :=
  ∀ n, P3697928967527069576.a n = A129790 (n + 1)

end A129790

/-! ## A129790.P17988893097332393271

`floor((A052928(n)+6^(n+1))/(n+1))`
-/

namespace A129790.P17988893097332393271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052928 n + (6 ^ (n + 1) : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A129790.P17988893097332393271

namespace A129790

/-- `floor((A052928(n)+6^(n+1))/(n+1))` -/
def P17988893097332393271.Spec : Prop :=
  ∀ n, P17988893097332393271.a n = A129790 (n + 1)

end A129790

/-!
# A129791: a(n) = ceiling(7^n/n).

The programs for A129791, the canonical program `A129791.P3123711028734286476` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129791 has offset 1).

The definition of A129791 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(7^(n+1)/(n+1))` (program `A129791.P3123711028734286476`, by `A129791.P3123711028734286476.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129791.P3123711028734286476

`ceil(7^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129791

/-- `ceil(7^(n+1)/(n+1))` -/
def P3123711028734286476.Spec : Prop :=
  ∀ n, P3123711028734286476.a n = A129791 (n + 1)

theorem P3123711028734286476.correct : P3123711028734286476.Spec := by
  intro n
  simp only [A129791, Nat.add_sub_cancel]

end A129791

/-! ## A129791.P5721639736544473878

`floor(∑[A199483(n)]/(n+1))`
-/

namespace A129791.P5721639736544473878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A129791.P5721639736544473878

namespace A129791

/-- `floor(∑[A199483(n)]/(n+1))` -/
def P5721639736544473878.Spec : Prop :=
  ∀ n, P5721639736544473878.a n = A129791 (n + 1)

end A129791

/-! ## A129791.P15511760397255514849

`floor((A226199(n+1)-1)/(n+1))`
-/

namespace A129791.P15511760397255514849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A226199 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)⌋

end

end A129791.P15511760397255514849

namespace A129791

/-- `floor((A226199(n+1)-1)/(n+1))` -/
def P15511760397255514849.Spec : Prop :=
  ∀ n, P15511760397255514849.a n = A129791 (n + 1)

end A129791

/-! ## A129791.P674159167970465238

`floor(floor(A198647(n+1)/(n+1))/3)+1`
-/

namespace A129791.P674159167970465238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A198647 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ : ℚ) / 3⌋ + 1

end

end A129791.P674159167970465238

namespace A129791

/-- `floor(floor(A198647(n+1)/(n+1))/3)+1` -/
def P674159167970465238.Spec : Prop :=
  ∀ n, P674159167970465238.a n = A129791 (n + 1)

end A129791

/-! ## A129791.P6531287480677253587

`floor((A027466(∑[n+1])+n)/(n+1))`
-/

namespace A129791.P6531287480677253587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027466 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A129791.P6531287480677253587

namespace A129791

/-- `floor((A027466(∑[n+1])+n)/(n+1))` -/
def P6531287480677253587.Spec : Prop :=
  ∀ n, P6531287480677253587.a n = A129791 (n + 1)

end A129791

/-!
# A129792: a(n) = ceiling(8^n/n).

The programs for A129792, the canonical program `A129792.P5078376284481842959` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129792 has offset 1).

The definition of A129792 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(8^(n+1)/(n+1))` (program `A129792.P5078376284481842959`, by `A129792.P5078376284481842959.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129792.P5078376284481842959

`ceil(8^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129792

/-- `ceil(8^(n+1)/(n+1))` -/
def P5078376284481842959.Spec : Prop :=
  ∀ n, P5078376284481842959.a n = A129792 (n + 1)

theorem P5078376284481842959.correct : P5078376284481842959.Spec := by
  intro n
  simp only [A129792, Nat.add_sub_cancel]

end A129792

/-! ## A129792.P5110914794199871870

`A129798(n+1)+A043545(n)`
-/

namespace A129792.P5110914794199871870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129798 (n + 1) + A043545 n

end

end A129792.P5110914794199871870

namespace A129792

/-- `A129798(n+1)+A043545(n)` -/
def P5110914794199871870.Spec : Prop :=
  ∀ n, P5110914794199871870.a n = A129792 (n + 1)

end A129792

/-! ## A129792.P1693511343903966674

`A129798(n+1)+log2(A043529(n))`
-/

namespace A129792.P1693511343903966674
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A129798 (n + 1) : ℝ) + Real.logb 2 (A043529 n : ℝ)

end

end A129792.P1693511343903966674

namespace A129792

/-- `A129798(n+1)+log2(A043529(n))` -/
def P1693511343903966674.Spec : Prop :=
  ∀ n, P1693511343903966674.a n = (A129792 (n + 1) : ℝ)

end A129792

/-! ## A129792.P4181664245827673669

`A129798(n+1)+1-A036987(n)`
-/

namespace A129792.P4181664245827673669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129798 (n + 1) + (1 - A036987 n)

end

end A129792.P4181664245827673669

namespace A129792

/-- `A129798(n+1)+1-A036987(n)` -/
def P4181664245827673669.Spec : Prop :=
  ∀ n, P4181664245827673669.a n = A129792 (n + 1)

end A129792

/-! ## A129792.P2112708963676248246

`A129798(n+1)+A057979(A048896(n))`
-/

namespace A129792.P2112708963676248246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129798 (n + 1) + A057979 (A048896 n).toNat

end

end A129792.P2112708963676248246

namespace A129792

/-- `A129798(n+1)+A057979(A048896(n))` -/
def P2112708963676248246.Spec : Prop :=
  ∀ n, P2112708963676248246.a n = A129792 (n + 1)

end A129792

/-! ## A129792.P18171968486774468893

`A053638(n+1)+A129798(n+1)-A000799(n+1)`
-/

namespace A129792.P18171968486774468893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053638 (n + 1) + (A129798 (n + 1) - A000799 (n + 1))

end

end A129792.P18171968486774468893

namespace A129792

/-- `A053638(n+1)+A129798(n+1)-A000799(n+1)` -/
def P18171968486774468893.Spec : Prop :=
  ∀ n, P18171968486774468893.a n = A129792 (n + 1)

end A129792

/-! ## A129792.P14086102847118752268

`A053639(n+1)+A129798(n+1)-A281375(n+1)`
-/

namespace A129792.P14086102847118752268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053639 (n + 1) + (A129798 (n + 1) - A281375 (n + 1))

end

end A129792.P14086102847118752268

namespace A129792

/-- `A053639(n+1)+A129798(n+1)-A281375(n+1)` -/
def P14086102847118752268.Spec : Prop :=
  ∀ n, P14086102847118752268.a n = A129792 (n + 1)

end A129792

/-!
# A129793: a(n) = ceiling(9^n/n).

The programs for A129793, the canonical program `A129793.P11439747151113107344` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129793 has offset 1).

The definition of A129793 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(9^(n+1)/(n+1))` (program `A129793.P11439747151113107344`, by `A129793.P11439747151113107344.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129793.P11439747151113107344

`ceil(9^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129793

/-- `ceil(9^(n+1)/(n+1))` -/
def P11439747151113107344.Spec : Prop :=
  ∀ n, P11439747151113107344.a n = A129793 (n + 1)

theorem P11439747151113107344.correct : P11439747151113107344.Spec := by
  intro n
  simp only [A129793, Nat.add_sub_cancel]

end A129793

/-! ## A129793.P4158619300919547488

`A178334(A129810(n+1))+A129799(n+1)`
-/

namespace A129793.P4158619300919547488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A129810 (n + 1)).toNat + A129799 (n + 1)

end

end A129793.P4158619300919547488

namespace A129793

/-- `A178334(A129810(n+1))+A129799(n+1)` -/
def P4158619300919547488.Spec : Prop :=
  ∀ n, P4158619300919547488.a n = A129793 (n + 1)

end A129793

/-! ## A129793.P1896708744815236544

`A129799(n+1)-A057428(A066601(n+1))`
-/

namespace A129793.P1896708744815236544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129799 (n + 1) - A057428 (A066601 (n + 1)).toNat

end

end A129793.P1896708744815236544

namespace A129793

/-- `A129799(n+1)-A057428(A066601(n+1))` -/
def P1896708744815236544.Spec : Prop :=
  ∀ n, P1896708744815236544.a n = A129793 (n + 1)

end A129793

/-! ## A129793.P16604193399660398454

`A129799(n+1)-A057428(A233471(n+1))`
-/

namespace A129793.P16604193399660398454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129799 (n + 1) - A057428 (A233471 (n + 1)).toNat

end

end A129793.P16604193399660398454

namespace A129793

/-- `A129799(n+1)-A057428(A233471(n+1))` -/
def P16604193399660398454.Spec : Prop :=
  ∀ n, P16604193399660398454.a n = A129793 (n + 1)

end A129793

/-! ## A129793.P8824864807362061439

`A129787(n+1)+A129799(n+1)-A092763(n+1)`
-/

namespace A129793.P8824864807362061439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129787 (n + 1) + (A129799 (n + 1) - A092763 (n + 1))

end

end A129793.P8824864807362061439

namespace A129793

/-- `A129787(n+1)+A129799(n+1)-A092763(n+1)` -/
def P8824864807362061439.Spec : Prop :=
  ∀ n, P8824864807362061439.a n = A129793 (n + 1)

end A129793

/-! ## A129793.P12380078342550099396

`A129799(n+1)+A057428(A066601(n+1))*A057428(n)`
-/

namespace A129793.P12380078342550099396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129799 (n + 1) + A057428 (A066601 (n + 1)).toNat * A057428 n

end

end A129793.P12380078342550099396

namespace A129793

/-- `A129799(n+1)+A057428(A066601(n+1))*A057428(n)` -/
def P12380078342550099396.Spec : Prop :=
  ∀ n, P12380078342550099396.a n = A129793 (n + 1)

end A129793

/-! ## A129793.P2691481117316521193

`A129799(n+1)+A057428(A233471(n+1))*A057428(n)`
-/

namespace A129793.P2691481117316521193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129799 (n + 1) + A057428 (A233471 (n + 1)).toNat * A057428 n

end

end A129793.P2691481117316521193

namespace A129793

/-- `A129799(n+1)+A057428(A233471(n+1))*A057428(n)` -/
def P2691481117316521193.Spec : Prop :=
  ∀ n, P2691481117316521193.a n = A129793 (n + 1)

end A129793

/-!
# A129794: a(n) = floor(4^n/n).

The programs for A129794, the canonical program `A129794.P7530579155179396949` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129794 has offset 1).

The definition of A129794 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(4^(n+1)/(n+1))` (program `A129794.P7530579155179396949`, by `A129794.P7530579155179396949.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129794.P7530579155179396949

`floor(4^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129794

/-- `floor(4^(n+1)/(n+1))` -/
def P7530579155179396949.Spec : Prop :=
  ∀ n, P7530579155179396949.a n = A129794 (n + 1)

theorem P7530579155179396949.correct : P7530579155179396949.Spec := by
  intro n
  simp only [A129794, Nat.add_sub_cancel]

end A129794

/-! ## A129794.P16369943858537057041

`A281375(2*(n+1))`
-/

namespace A129794.P16369943858537057041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281375 (2 * (n + 1))

end

end A129794.P16369943858537057041

namespace A129794

/-- `A281375(2*(n+1))` -/
def P16369943858537057041.Spec : Prop :=
  ∀ n, P16369943858537057041.a n = A129794 (n + 1)

end A129794

/-! ## A129794.P10989589608734116046

`A129788(n+1)-A043545(n)`
-/

namespace A129794.P10989589608734116046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129788 (n + 1) - A043545 n

end

end A129794.P10989589608734116046

namespace A129794

/-- `A129788(n+1)-A043545(n)` -/
def P10989589608734116046.Spec : Prop :=
  ∀ n, P10989589608734116046.a n = A129794 (n + 1)

end A129794

/-! ## A129794.P14637943944469512067

`A053639(2*(n+1))-A043545(n)`
-/

namespace A129794.P14637943944469512067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053639 (2 * (n + 1)) - A043545 n

end

end A129794.P14637943944469512067

namespace A129794

/-- `A053639(2*(n+1))-A043545(n)` -/
def P14637943944469512067.Spec : Prop :=
  ∀ n, P14637943944469512067.a n = A129794 (n + 1)

end A129794

/-! ## A129794.P16217252608869796820

`A065482(2*(n+1))+A000799(2*(n+1))`
-/

namespace A129794.P16217252608869796820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065482 (2 * (n + 1)) + A000799 (2 * (n + 1))

end

end A129794.P16217252608869796820

namespace A129794

/-- `A065482(2*(n+1))+A000799(2*(n+1))` -/
def P16217252608869796820.Spec : Prop :=
  ∀ n, P16217252608869796820.a n = A129794 (n + 1)

end A129794

/-! ## A129794.P10547401645792255737

`A000799(n+1)+A129788(n+1)-A053638(n+1)`
-/

namespace A129794.P10547401645792255737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000799 (n + 1) + (A129788 (n + 1) - A053638 (n + 1))

end

end A129794.P10547401645792255737

namespace A129794

/-- `A000799(n+1)+A129788(n+1)-A053638(n+1)` -/
def P10547401645792255737.Spec : Prop :=
  ∀ n, P10547401645792255737.a n = A129794 (n + 1)

end A129794

/-! ## A129794.P6229700718527523060

`A000799(2*(n+1))+A053639(2*(n+1))-A053638(2*(n+1))`
-/

namespace A129794.P6229700718527523060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000799 (2 * (n + 1)) + (A053639 (2 * (n + 1)) - A053638 (2 * (n + 1)))

end

end A129794.P6229700718527523060

namespace A129794

/-- `A000799(2*(n+1))+A053639(2*(n+1))-A053638(2*(n+1))` -/
def P6229700718527523060.Spec : Prop :=
  ∀ n, P6229700718527523060.a n = A129794 (n + 1)

end A129794

/-! ## A129794.P4907185677209023209

`ceil((A000079(n+1)²-n)/(n+1))`
-/

namespace A129794.P4907185677209023209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000079 (n + 1) ^ 2 - (n : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A129794.P4907185677209023209

namespace A129794

/-- `ceil((A000079(n+1)²-n)/(n+1))` -/
def P4907185677209023209.Spec : Prop :=
  ∀ n, P4907185677209023209.a n = A129794 (n + 1)

end A129794

/-! ## A129794.P4033652813956986054

`A060155(A167614(n+2)+1)`
-/

namespace A129794.P4033652813956986054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060155 (A167614 (n + 2) + 1).toNat

end

end A129794.P4033652813956986054

namespace A129794

/-- `A060155(A167614(n+2)+1)` -/
def P4033652813956986054.Spec : Prop :=
  ∀ n, P4033652813956986054.a n = A129794 (n + 1)

end A129794

/-! ## A129794.P1659842819565690977

`A060155(A166136(n+2)-2)`
-/

namespace A129794.P1659842819565690977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060155 (A166136 (n + 2) - 2).toNat

end

end A129794.P1659842819565690977

namespace A129794

/-- `A060155(A166136(n+2)-2)` -/
def P1659842819565690977.Spec : Prop :=
  ∀ n, P1659842819565690977.a n = A129794 (n + 1)

end A129794

/-!
# A129795: a(n) = floor(5^n/n).

The programs for A129795, the canonical program `A129795.P6772561918587581241` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129795 has offset 1).

The definition of A129795 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5^(n+1)/(n+1))` (program `A129795.P6772561918587581241`, by `A129795.P6772561918587581241.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129795.P6772561918587581241

`floor(5^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129795

/-- `floor(5^(n+1)/(n+1))` -/
def P6772561918587581241.Spec : Prop :=
  ∀ n, P6772561918587581241.a n = A129795 (n + 1)

theorem P6772561918587581241.correct : P6772561918587581241.Spec := by
  intro n
  simp only [A129795, Nat.add_sub_cancel]

end A129795

/-! ## A129795.P15038629484675532976

`char[5^n-1]+1-4/2+A129789(n+1)`
-/

namespace A129795.P15038629484675532976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) + (1 - (4 : ℚ) / 2 + (A129789 (n + 1) : ℚ))

end

end A129795.P15038629484675532976

namespace A129795

/-- `char[5^n-1]+1-4/2+A129789(n+1)` -/
def P15038629484675532976.Spec : Prop :=
  ∀ n, P15038629484675532976.a n = (A129795 (n + 1) : ℚ)

end A129795

/-! ## A129795.P18352410274242122154

`A225586(n+1)+char[A024049(n)]`
-/

namespace A129795.P18352410274242122154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024049 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225586 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A129795.P18352410274242122154

namespace A129795

/-- `A225586(n+1)+char[A024049(n)]` -/
def P18352410274242122154.Spec : Prop :=
  ∀ n, P18352410274242122154.a n = A129795 (n + 1)

end A129795

/-! ## A129795.P10083223900847284169

`A225586(n+1)+char[A000351(n)-1]`
-/

namespace A129795.P10083223900847284169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225586 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A129795.P10083223900847284169

namespace A129795

/-- `A225586(n+1)+char[A000351(n)-1]` -/
def P10083223900847284169.Spec : Prop :=
  ∀ n, P10083223900847284169.a n = A129795 (n + 1)

end A129795

/-! ## A129795.P13269501995727230201

`A225586(n+1)+char[A023443(A000351(n))]`
-/

namespace A129795.P13269501995727230201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A000351 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225586 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A129795.P13269501995727230201

namespace A129795

/-- `A225586(n+1)+char[A023443(A000351(n))]` -/
def P13269501995727230201.Spec : Prop :=
  ∀ n, P13269501995727230201.a n = A129795 (n + 1)

end A129795

/-! ## A129795.P6801822163959220962

`ceil((A000351(n+1)-n)/(n+1))`
-/

namespace A129795.P6801822163959220962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000351 (n + 1) - (n : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A129795.P6801822163959220962

namespace A129795

/-- `ceil((A000351(n+1)-n)/(n+1))` -/
def P6801822163959220962.Spec : Prop :=
  ∀ n, P6801822163959220962.a n = A129795 (n + 1)

end A129795

/-!
# A129796: a(n) = floor(6^n/n).

The programs for A129796, the canonical program `A129796.P1111779762872494545` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129796 has offset 1).

The definition of A129796 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(6^(n+1)/(n+1))` (program `A129796.P1111779762872494545`, by `A129796.P1111779762872494545.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129796.P1111779762872494545

`floor(6^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129796

/-- `floor(6^(n+1)/(n+1))` -/
def P1111779762872494545.Spec : Prop :=
  ∀ n, P1111779762872494545.a n = A129796 (n + 1)

theorem P1111779762872494545.correct : P1111779762872494545.Spec := by
  intro n
  simp only [A129796, Nat.add_sub_cancel]

end A129796

/-! ## A129796.P5812980888954772301

`ceil((A000400(n+1)-n)/(n+1))`
-/

namespace A129796.P5812980888954772301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000400 (n + 1) - (n : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A129796.P5812980888954772301

namespace A129796

/-- `ceil((A000400(n+1)-n)/(n+1))` -/
def P5812980888954772301.Spec : Prop :=
  ∀ n, P5812980888954772301.a n = A129796 (n + 1)

end A129796

/-! ## A129796.P12865359370741629883

`A060155(A166136(n+4))`
-/

namespace A129796.P12865359370741629883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060155 (A166136 (n + 4)).toNat

end

end A129796.P12865359370741629883

namespace A129796

/-- `A060155(A166136(n+4))` -/
def P12865359370741629883.Spec : Prop :=
  ∀ n, P12865359370741629883.a n = A129796 (n + 1)

end A129796

/-! ## A129796.P9043511039109787184

`A060155(eq[16, A059268(n)]+n+7)`
-/

namespace A129796.P9043511039109787184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060155 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 7))

end

end A129796.P9043511039109787184

namespace A129796

/-- `A060155(eq[16, A059268(n)]+n+7)` -/
def P9043511039109787184.Spec : Prop :=
  ∀ n, P9043511039109787184.a n = A129796 (n + 1)

end A129796

/-!
# A129797: a(n) = floor(7^n/n).

The programs for A129797, the canonical program `A129797.P8250415135285530923` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129797 has offset 1).

The definition of A129797 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(7^(n+1)/(n+1))` (program `A129797.P8250415135285530923`, by `A129797.P8250415135285530923.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129797.P8250415135285530923

`floor(7^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129797

/-- `floor(7^(n+1)/(n+1))` -/
def P8250415135285530923.Spec : Prop :=
  ∀ n, P8250415135285530923.a n = A129797 (n + 1)

theorem P8250415135285530923.correct : P8250415135285530923.Spec := by
  intro n
  simp only [A129797, Nat.add_sub_cancel]

end A129797

/-! ## A129797.P14053964359113990070

`floor(A024076(n+1)/(n+1))+1`
-/

namespace A129797.P14053964359113990070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024076 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A129797.P14053964359113990070

namespace A129797

/-- `floor(A024076(n+1)/(n+1))+1` -/
def P14053964359113990070.Spec : Prop :=
  ∀ n, P14053964359113990070.a n = A129797 (n + 1)

end A129797

/-! ## A129797.P541048186058587291

`floor(A226199(n+1)/(n+1))-1`
-/

namespace A129797.P541048186058587291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A226199 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ - 1

end

end A129797.P541048186058587291

namespace A129797

/-- `floor(A226199(n+1)/(n+1))-1` -/
def P541048186058587291.Spec : Prop :=
  ∀ n, P541048186058587291.a n = A129797 (n + 1)

end A129797

/-! ## A129797.P5328816085510170950

`A057428(A085099(n+1))+floor(A226199(n+1)/(n+1))`
-/

namespace A129797.P5328816085510170950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A085099 (n + 1)).toNat + ⌊(A226199 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A129797.P5328816085510170950

namespace A129797

/-- `A057428(A085099(n+1))+floor(A226199(n+1)/(n+1))` -/
def P5328816085510170950.Spec : Prop :=
  ∀ n, P5328816085510170950.a n = A129797 (n + 1)

end A129797

/-!
# A129798: a(n) = floor(8^n/n).

The programs for A129798, the canonical program `A129798.P18151948902992811382` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129798 has offset 1).

The definition of A129798 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(8^(n+1)/(n+1))` (program `A129798.P18151948902992811382`, by `A129798.P18151948902992811382.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129798.P18151948902992811382

`floor(8^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129798

/-- `floor(8^(n+1)/(n+1))` -/
def P18151948902992811382.Spec : Prop :=
  ∀ n, P18151948902992811382.a n = A129798 (n + 1)

theorem P18151948902992811382.correct : P18151948902992811382.Spec := by
  intro n
  simp only [A129798, Nat.add_sub_cancel]

end A129798

/-! ## A129798.P14462432682627445837

`A129792(n+1)-A043545(n)`
-/

namespace A129798.P14462432682627445837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129792 (n + 1) - A043545 n

end

end A129798.P14462432682627445837

namespace A129798

/-- `A129792(n+1)-A043545(n)` -/
def P14462432682627445837.Spec : Prop :=
  ∀ n, P14462432682627445837.a n = A129798 (n + 1)

end A129798

/-! ## A129798.P2104205311311907141

`A129792(n+1)-log2(A043529(n))`
-/

namespace A129798.P2104205311311907141
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A129792 (n + 1) : ℝ) - Real.logb 2 (A043529 n : ℝ)

end

end A129798.P2104205311311907141

namespace A129798

/-- `A129792(n+1)-log2(A043529(n))` -/
def P2104205311311907141.Spec : Prop :=
  ∀ n, P2104205311311907141.a n = (A129798 (n + 1) : ℝ)

end A129798

/-! ## A129798.P9602539393546438530

`A129792(n+1)+A036987(n)-1`
-/

namespace A129798.P9602539393546438530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129792 (n + 1) + (A036987 n - 1)

end

end A129798.P9602539393546438530

namespace A129798

/-- `A129792(n+1)+A036987(n)-1` -/
def P9602539393546438530.Spec : Prop :=
  ∀ n, P9602539393546438530.a n = A129798 (n + 1)

end A129798

/-! ## A129798.P15483129261710326706

`A129792(n+1)-A071625(A023136(n+1))`
-/

namespace A129798.P15483129261710326706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129792 (n + 1) - A071625 (A023136 (n + 1)).toNat

end

end A129798.P15483129261710326706

namespace A129798

/-- `A129792(n+1)-A071625(A023136(n+1))` -/
def P15483129261710326706.Spec : Prop :=
  ∀ n, P15483129261710326706.a n = A129798 (n + 1)

end A129798

/-! ## A129798.P14964669736300523150

`A129792(n+1)-A080940(A302044(2*(n+1)))`
-/

namespace A129798.P14964669736300523150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129792 (n + 1) - A080940 (A302044 (2 * (n + 1))).toNat

end

end A129798.P14964669736300523150

namespace A129798

/-- `A129792(n+1)-A080940(A302044(2*(n+1)))` -/
def P14964669736300523150.Spec : Prop :=
  ∀ n, P14964669736300523150.a n = A129798 (n + 1)

end A129798

/-! ## A129798.P16677218986062571806

`A000799(n+1)+A129792(n+1)-A053638(n+1)`
-/

namespace A129798.P16677218986062571806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000799 (n + 1) + (A129792 (n + 1) - A053638 (n + 1))

end

end A129798.P16677218986062571806

namespace A129798

/-- `A000799(n+1)+A129792(n+1)-A053638(n+1)` -/
def P16677218986062571806.Spec : Prop :=
  ∀ n, P16677218986062571806.a n = A129798 (n + 1)

end A129798

/-! ## A129798.P6360983126076499328

`A129792(n+1)+A129794(n+1)-A129788(n+1)`
-/

namespace A129798.P6360983126076499328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129792 (n + 1) + (A129794 (n + 1) - A129788 (n + 1))

end

end A129798.P6360983126076499328

namespace A129798

/-- `A129792(n+1)+A129794(n+1)-A129788(n+1)` -/
def P6360983126076499328.Spec : Prop :=
  ∀ n, P6360983126076499328.a n = A129798 (n + 1)

end A129798

/-! ## A129798.P2746423033576366586

`A129792(n+1)+A281375(n+1)-A053639(n+1)`
-/

namespace A129798.P2746423033576366586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129792 (n + 1) + (A281375 (n + 1) - A053639 (n + 1))

end

end A129798.P2746423033576366586

namespace A129798

/-- `A129792(n+1)+A281375(n+1)-A053639(n+1)` -/
def P2746423033576366586.Spec : Prop :=
  ∀ n, P2746423033576366586.a n = A129798 (n + 1)

end A129798

/-!
# A129799: a(n) = floor(9^n/n).

The programs for A129799, the canonical program `A129799.P15903315580285515357` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129799 has offset 1).

The definition of A129799 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(9^(n+1)/(n+1))` (program `A129799.P15903315580285515357`, by `A129799.P15903315580285515357.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129799.P15903315580285515357

`floor(9^(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A129799

/-- `floor(9^(n+1)/(n+1))` -/
def P15903315580285515357.Spec : Prop :=
  ∀ n, P15903315580285515357.a n = A129799 (n + 1)

theorem P15903315580285515357.correct : P15903315580285515357.Spec := by
  intro n
  simp only [A129799, Nat.add_sub_cancel]

end A129799

/-! ## A129799.P17132035605539150972

`A129793(n+1)+A057428(A233471(n+1))`
-/

namespace A129799.P17132035605539150972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129793 (n + 1) + A057428 (A233471 (n + 1)).toNat

end

end A129799.P17132035605539150972

namespace A129799

/-- `A129793(n+1)+A057428(A233471(n+1))` -/
def P17132035605539150972.Spec : Prop :=
  ∀ n, P17132035605539150972.a n = A129799 (n + 1)

end A129799

/-! ## A129799.P18265950835093497166

`A129793(n+1)-A178334(A066601(n+1))`
-/

namespace A129799.P18265950835093497166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129793 (n + 1) - A178334 (A066601 (n + 1)).toNat

end

end A129799.P18265950835093497166

namespace A129799

/-- `A129793(n+1)-A178334(A066601(n+1))` -/
def P18265950835093497166.Spec : Prop :=
  ∀ n, P18265950835093497166.a n = A129799 (n + 1)

end A129799

/-! ## A129799.P10063138170719681613

`A129793(n+1)-A178334(A129810(n+1))`
-/

namespace A129799.P10063138170719681613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129793 (n + 1) - A178334 (A129810 (n + 1)).toNat

end

end A129799.P10063138170719681613

namespace A129799

/-- `A129793(n+1)-A178334(A129810(n+1))` -/
def P10063138170719681613.Spec : Prop :=
  ∀ n, P10063138170719681613.a n = A129799 (n + 1)

end A129799

