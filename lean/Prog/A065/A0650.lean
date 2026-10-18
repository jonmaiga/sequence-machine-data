import SequenceMachineLib
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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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

/-!
# A065003: Not McNugget numbers.

The programs for A065003, there is no canonical definition to state claims against.
-/

/-! ## A065003.P4837457994503384278

`eq[0, A214772(n)]`
-/

namespace A065003.P4837457994503384278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214772 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065003.P4837457994503384278

/-! ## A065003.P11840477888111512580

`lt[A214772(n+1), 1]+1`
-/

namespace A065003.P11840477888111512580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214772 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A065003.P11840477888111512580

/-! ## A065003.P245824468514976265

`eq[0, A025895(A080412(n))]`
-/

namespace A065003.P245824468514976265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025895 (A080412 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065003.P245824468514976265

/-! ## A065003.P17551569970021714045

`A000027(lt[A214772(n), 1])`
-/

namespace A065003.P17551569970021714045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214772 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A065003.P17551569970021714045

/-! ## A065003.P12426335662910988313

`comp[A214777(A018851(n+1))]`
-/

namespace A065003.P12426335662910988313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214777 (A018851 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A065003.P12426335662910988313

/-!
# A065005: Integers for which the periodic part of the continued fraction for the square root of n begins with 2.

The programs for A065005, the canonical program `A065005.P15636327632005820464` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065005 has offset 1).

The definition of A065005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065005.P8767781891419228186

`A063656(eq[0, A106351(n+1)])`
-/

namespace A065005.P8767781891419228186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065005.P8767781891419228186

namespace A065005

/-- `A063656(eq[0, A106351(n+1)])` -/
def P8767781891419228186.Spec : Prop :=
  ∀ n, P8767781891419228186.a n = A065005 (n + 1)

end A065005

/-! ## A065005.P9378838828115053470

`A063656(lt[A106351(n+1), 1])`
-/

namespace A065005.P9378838828115053470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A065005.P9378838828115053470

namespace A065005

/-- `A063656(lt[A106351(n+1), 1])` -/
def P9378838828115053470.Spec : Prop :=
  ∀ n, P9378838828115053470.a n = A065005 (n + 1)

end A065005

/-! ## A065005.P16621637119966159748

`A063656(eq[0, A082601(n)])`
-/

namespace A065005.P16621637119966159748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065005.P16621637119966159748

namespace A065005

/-- `A063656(eq[0, A082601(n)])` -/
def P16621637119966159748.Spec : Prop :=
  ∀ n, P16621637119966159748.a n = A065005 (n + 1)

end A065005

/-! ## A065005.P5052458271376538670

`A063656(lt[A082601(n), 1])`
-/

namespace A065005.P5052458271376538670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082601 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A065005.P5052458271376538670

namespace A065005

/-- `A063656(lt[A082601(n), 1])` -/
def P5052458271376538670.Spec : Prop :=
  ∀ n, P5052458271376538670.a n = A065005 (n + 1)

end A065005

/-! ## A065005.P15636327632005820464

`A063656(lt[1, A004199(n+1)])`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A065005

/-- `A063656(lt[1, A004199(n+1)])` -/
def P15636327632005820464.Spec : Prop :=
  ∀ n, P15636327632005820464.a n = A065005 (n + 1)

theorem P15636327632005820464.correct : P15636327632005820464.Spec := by
  intro n
  simp only [A065005, Nat.add_sub_cancel]

end A065005

/-! ## A065005.P6556263585700234318

`A063656(lt[A262616(n), A059268(n)])`
-/

namespace A065005.P6556263585700234318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262616 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A065005.P6556263585700234318

namespace A065005

/-- `A063656(lt[A262616(n), A059268(n)])` -/
def P6556263585700234318.Spec : Prop :=
  ∀ n, P6556263585700234318.a n = A065005 (n + 1)

end A065005

/-! ## A065005.P10742262772014103081

`eq[2, A091453(n)]`
-/

namespace A065005.P10742262772014103081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065005.P10742262772014103081

namespace A065005

/-- `eq[2, A091453(n)]` -/
def P10742262772014103081.Spec : Prop :=
  ∀ n, (P10742262772014103081.a n : ℤ) = A065005 (n + 1)

end A065005

/-! ## A065005.P16491076874591960885

`eq[2, ceil(A259992(n)/A259992(n+1))]`
-/

namespace A065005.P16491076874591960885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A259992 n : ℚ) / (A259992 (n + 1) : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065005.P16491076874591960885

namespace A065005

/-- `eq[2, ceil(A259992(n)/A259992(n+1))]` -/
def P16491076874591960885.Spec : Prop :=
  ∀ n, (P16491076874591960885.a n : ℤ) = A065005 (n + 1)

end A065005

/-! ## A065005.P6783964395064599574

`eq[A001650(n+1), A293137(A094765(n))]`
-/

namespace A065005.P6783964395064599574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A094765 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A065005.P6783964395064599574

namespace A065005

/-- `eq[A001650(n+1), A293137(A094765(n))]` -/
def P6783964395064599574.Spec : Prop :=
  ∀ n, (P6783964395064599574.a n : ℤ) = A065005 (n + 1)

end A065005

/-!
# A065006: Integers for which the periodic part of the continued fraction for the square root of n begins with 3.

The programs for A065006, the canonical program `A065006.P13856800642416821077` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065006 has offset 1).

The definition of A065006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065006.P13856800642416821077

`A300154(n+1)+A033638(A135711(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065006

/-- `A300154(n+1)+A033638(A135711(n+1))` -/
def P13856800642416821077.Spec : Prop :=
  ∀ n, P13856800642416821077.a n = A065006 (n + 1)

theorem P13856800642416821077.correct : P13856800642416821077.Spec := by
  intro n
  simp only [A065006, Nat.add_sub_cancel]

end A065006

/-! ## A065006.P18011250088590073327

`eq[3, ceil(1/(sqrt(n)+1-ceil(sqrt(n))))-1]`
-/

namespace A065006.P18011250088590073327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (Real.sqrt (n : ℝ) + (1 - ⌈Real.sqrt (n : ℝ)⌉ : ℝ))⌉ - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065006.P18011250088590073327

namespace A065006

/-- `eq[3, ceil(1/(sqrt(n)+1-ceil(sqrt(n))))-1]` -/
def P18011250088590073327.Spec : Prop :=
  ∀ n, (P18011250088590073327.a n : ℤ) = A065006 (n + 1)

end A065006

/-! ## A065006.P3048927768517392107

`A028310(eq[3, A091453(n)])`
-/

namespace A065006.P3048927768517392107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065006.P3048927768517392107

namespace A065006

/-- `A028310(eq[3, A091453(n)])` -/
def P3048927768517392107.Spec : Prop :=
  ∀ n, P3048927768517392107.a n = A065006 (n + 1)

end A065006

/-! ## A065006.P5383607212222076389

`A184985(eq[3, A091453(n)])`
-/

namespace A065006.P5383607212222076389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065006.P5383607212222076389

namespace A065006

/-- `A184985(eq[3, A091453(n)])` -/
def P5383607212222076389.Spec : Prop :=
  ∀ n, P5383607212222076389.a n = A065006 (n + 1)

end A065006

/-! ## A065006.P9599393030671023887

`lt[A053186(n), A196199(A094765(n))]`
-/

namespace A065006.P9599393030671023887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A094765 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065006.P9599393030671023887

namespace A065006

/-- `lt[A053186(n), A196199(A094765(n))]` -/
def P9599393030671023887.Spec : Prop :=
  ∀ n, (P9599393030671023887.a n : ℤ) = A065006 (n + 1)

end A065006

/-!
# A065007: Integers for which the periodic part of the continued fraction for the square root of n begins with 4.

The programs for A065007, the canonical program `A065007.P26704653692681443` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065007 has offset 1).

The definition of A065007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2531 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065007.P26704653692681443

`eq[4, ceil(1/(sqrt(n)+1-ceil(sqrt(n))))-1]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A065007

/-- `eq[4, ceil(1/(sqrt(n)+1-ceil(sqrt(n))))-1]` -/
def P26704653692681443.Spec : Prop :=
  ∀ n, (P26704653692681443.a n : ℤ) = A065007 (n + 1)

theorem P26704653692681443.correct : P26704653692681443.Spec := by
  intro n
  simp only [A065007, Nat.add_sub_cancel]

end A065007

/-! ## A065007.P9017374220614521849

`∩[A034098(n+1), A128217(n+1)]`
-/

namespace A065007.P9017374220614521849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065007.P9017374220614521849

namespace A065007

/-- `∩[A034098(n+1), A128217(n+1)]` -/
def P9017374220614521849.Spec : Prop :=
  ∀ n, (P9017374220614521849.a n : ℤ) = A065007 (n + 1)

end A065007

/-! ## A065007.P13041346748890616326

`A000027(eq[4, A091453(n)])`
-/

namespace A065007.P13041346748890616326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065007.P13041346748890616326

namespace A065007

/-- `A000027(eq[4, A091453(n)])` -/
def P13041346748890616326.Spec : Prop :=
  ∀ n, P13041346748890616326.a n = A065007 (n + 1)

end A065007

/-! ## A065007.P1097551617990891925

`A028310(eq[4, A091453(n)])`
-/

namespace A065007.P1097551617990891925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065007.P1097551617990891925

namespace A065007

/-- `A028310(eq[4, A091453(n)])` -/
def P1097551617990891925.Spec : Prop :=
  ∀ n, P1097551617990891925.a n = A065007 (n + 1)

end A065007

/-! ## A065007.P271744620701977111

`A184985(eq[4, A091453(n)])`
-/

namespace A065007.P271744620701977111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065007.P271744620701977111

namespace A065007

/-- `A184985(eq[4, A091453(n)])` -/
def P271744620701977111.Spec : Prop :=
  ∀ n, P271744620701977111.a n = A065007 (n + 1)

end A065007

/-! ## A065007.P11450732450149376961

`A181440(eq[2, A091453(n)/2])`
-/

namespace A065007.P11450732450149376961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091453 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A065007.P11450732450149376961

namespace A065007

/-- `A181440(eq[2, A091453(n)/2])` -/
def P11450732450149376961.Spec : Prop :=
  ∀ n, P11450732450149376961.a n = A065007 (n + 1)

end A065007

/-!
# A065008: Integers for which the periodic part of the continued fraction for the square root of n begins with 5.

The programs for A065008, the canonical program `A065008.P17253712875511855506` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065008 has offset 1).

The definition of A065008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1650 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065008.P17253712875511855506

`eq[5, ceil(1/(sqrt(n)+1-ceil(sqrt(n))))-1]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A065008

/-- `eq[5, ceil(1/(sqrt(n)+1-ceil(sqrt(n))))-1]` -/
def P17253712875511855506.Spec : Prop :=
  ∀ n, (P17253712875511855506.a n : ℤ) = A065008 (n + 1)

theorem P17253712875511855506.correct : P17253712875511855506.Spec := by
  intro n
  simp only [A065008, Nat.add_sub_cancel]

end A065008

/-! ## A065008.P5226850398620236555

`eq[5, A091453(n+1)]+1`
-/

namespace A065008.P5226850398620236555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065008.P5226850398620236555

namespace A065008

/-- `eq[5, A091453(n+1)]+1` -/
def P5226850398620236555.Spec : Prop :=
  ∀ n, (P5226850398620236555.a n : ℤ) = A065008 (n + 1)

end A065008

/-! ## A065008.P4797325432914326313

`A000027(eq[5, A091453(n)])`
-/

namespace A065008.P4797325432914326313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065008.P4797325432914326313

namespace A065008

/-- `A000027(eq[5, A091453(n)])` -/
def P4797325432914326313.Spec : Prop :=
  ∀ n, P4797325432914326313.a n = A065008 (n + 1)

end A065008

/-! ## A065008.P9765982928201204344

`A028310(eq[5, A091453(n)])`
-/

namespace A065008.P9765982928201204344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065008.P9765982928201204344

namespace A065008

/-- `A028310(eq[5, A091453(n)])` -/
def P9765982928201204344.Spec : Prop :=
  ∀ n, P9765982928201204344.a n = A065008 (n + 1)

end A065008

/-! ## A065008.P14845527536050461647

`A184985(eq[5, A091453(n)])`
-/

namespace A065008.P14845527536050461647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065008.P14845527536050461647

namespace A065008

/-- `A184985(eq[5, A091453(n)])` -/
def P14845527536050461647.Spec : Prop :=
  ∀ n, P14845527536050461647.a n = A065008 (n + 1)

end A065008

/-!
# A065009: Integers for which the periodic part of the continued fraction for the square root of n begins with 6.

The programs for A065009, the canonical program `A065009.P56991429542663186` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065009 has offset 1).

The definition of A065009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065009.P56991429542663186

`eq[6, ceil(1/(sqrt(n)+1-ceil(sqrt(n))))-1]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A065009

/-- `eq[6, ceil(1/(sqrt(n)+1-ceil(sqrt(n))))-1]` -/
def P56991429542663186.Spec : Prop :=
  ∀ n, (P56991429542663186.a n : ℤ) = A065009 (n + 1)

theorem P56991429542663186.correct : P56991429542663186.Spec := by
  intro n
  simp only [A065009, Nat.add_sub_cancel]

end A065009

/-! ## A065009.P18230731635984230586

`A000027(eq[6, A091453(n)])`
-/

namespace A065009.P18230731635984230586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065009.P18230731635984230586

namespace A065009

/-- `A000027(eq[6, A091453(n)])` -/
def P18230731635984230586.Spec : Prop :=
  ∀ n, P18230731635984230586.a n = A065009 (n + 1)

end A065009

/-! ## A065009.P6249167918511785898

`A052410(eq[6, A091453(n)])`
-/

namespace A065009.P6249167918511785898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065009.P6249167918511785898

namespace A065009

/-- `A052410(eq[6, A091453(n)])` -/
def P6249167918511785898.Spec : Prop :=
  ∀ n, P6249167918511785898.a n = A065009 (n + 1)

end A065009

/-! ## A065009.P12125386841683260982

`A028310(eq[6, A091453(n)])`
-/

namespace A065009.P12125386841683260982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065009.P12125386841683260982

namespace A065009

/-- `A028310(eq[6, A091453(n)])` -/
def P12125386841683260982.Spec : Prop :=
  ∀ n, P12125386841683260982.a n = A065009 (n + 1)

end A065009

/-! ## A065009.P3596270974812359060

`A181440(eq[6, A091453(n)])`
-/

namespace A065009.P3596270974812359060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065009.P3596270974812359060

namespace A065009

/-- `A181440(eq[6, A091453(n)])` -/
def P3596270974812359060.Spec : Prop :=
  ∀ n, P3596270974812359060.a n = A065009 (n + 1)

end A065009

/-!
# A065010: Integers for which the periodic part of the continued fraction for the square root of n begins with 7.

The programs for A065010, the canonical program `A065010.P16498944840396974367` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065010 has offset 1).

The definition of A065010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065010.P16498944840396974367

`eq[7, A091453(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A065010

/-- `eq[7, A091453(n)]` -/
def P16498944840396974367.Spec : Prop :=
  ∀ n, (P16498944840396974367.a n : ℤ) = A065010 (n + 1)

theorem P16498944840396974367.correct : P16498944840396974367.Spec := by
  intro n
  simp only [A065010, Nat.add_sub_cancel]

end A065010

/-!
# A065011: Integers for which the periodic part of the continued fraction for the square root of n begins with 8.

The programs for A065011, the canonical program `A065011.P17167326907996405947` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065011 has offset 1).

The definition of A065011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065011.P17167326907996405947

`eq[8, A091453(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A065011

/-- `eq[8, A091453(n)]` -/
def P17167326907996405947.Spec : Prop :=
  ∀ n, (P17167326907996405947.a n : ℤ) = A065011 (n + 1)

theorem P17167326907996405947.correct : P17167326907996405947.Spec := by
  intro n
  simp only [A065011, Nat.add_sub_cancel]

end A065011

/-!
# A065012: Integers for which the periodic part of the continued fraction for the square root of n begins with 9.

The programs for A065012, the canonical program `A065012.P14673952544101312650` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065012 has offset 1).

The definition of A065012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065012.P14673952544101312650

`eq[9, A091453(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A065012

/-- `eq[9, A091453(n)]` -/
def P14673952544101312650.Spec : Prop :=
  ∀ n, (P14673952544101312650.a n : ℤ) = A065012 (n + 1)

theorem P14673952544101312650.correct : P14673952544101312650.Spec := by
  intro n
  simp only [A065012, Nat.add_sub_cancel]

end A065012

/-!
# A065013: Integers for which the periodic part of the continued fraction for the square root of n begins with 10.

The programs for A065013, there is no canonical definition to state claims against.
-/

/-! ## A065013.P13479488256589555098

`eq[10, A091453(n)]`
-/

namespace A065013.P13479488256589555098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065013.P13479488256589555098

/-!
# A065016: Working in base 2, replace n with the concatenation of its prime factors (without repetition).

The programs for A065016, there is no canonical definition to state claims against.
-/

/-! ## A065016.P3439048826106240908

`A064841(∏{p}[n+1, #])`
-/

namespace A065016.P3439048826106240908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064841 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A065016.P3439048826106240908

/-! ## A065016.P17691180454242740738

`A287874(∏{p}[n+1, #])`
-/

namespace A065016.P17691180454242740738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287874 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A065016.P17691180454242740738

/-! ## A065016.P15502889502566848488

`A064841(A007947(n+1))`
-/

namespace A065016.P15502889502566848488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064841 (A007947 (n + 1)).toNat

end

end A065016.P15502889502566848488

/-! ## A065016.P12549683912136752196

`A287874(A007947(n+1)%A046306(n+1))`
-/

namespace A065016.P12549683912136752196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287874 (Int.tmod (A007947 (n + 1)) (A046306 (n + 1))).toNat

end

end A065016.P12549683912136752196

/-! ## A065016.P8151895349362149921

`A097325(3*n+2)*A287874(A007947(n+1))`
-/

namespace A065016.P8151895349362149921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (3 * n + 2) * A287874 (A007947 (n + 1)).toNat

end

end A065016.P8151895349362149921

/-! ## A065016.P1871771448169998724

`A007088(A230625(∏{p}[n+1, #]))`
-/

namespace A065016.P1871771448169998724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A230625 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A065016.P1871771448169998724

/-! ## A065016.P2746787249972814312

`A287874(A007947((n+1)²))`
-/

namespace A065016.P2746787249972814312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287874 (A007947 ((n + 1) ^ 2)).toNat

end

end A065016.P2746787249972814312

/-!
# A065017: Primes of the form p*q + p + q, where (p, q=p+2) are twin primes.

The programs for A065017, there is no canonical definition to state claims against.
-/

/-! ## A065017.P18098540680630830880

`(A128550(n+1)+2)²-2`
-/

namespace A065017.P18098540680630830880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A128550 (n + 1) + 2) ^ 2 - 2

end

end A065017.P18098540680630830880

/-! ## A065017.P3068688449005332084

`p?[A126148(n+1)+2]²-2`
-/

namespace A065017.P3068688449005332084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126148 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - 2

end

end A065017.P3068688449005332084

/-! ## A065017.P13572293835146235852

`∩[A049002(n+1), A096342(n+1)]`
-/

namespace A065017.P13572293835146235852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065017.P13572293835146235852

/-! ## A065017.P8145635281589589893

`∩[A049002(n+1), A391078(n+1)]`
-/

namespace A065017.P8145635281589589893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065017.P8145635281589589893

/-! ## A065017.P4017112040304953443

`∩[A096342(n+1), A343495(n+1)]`
-/

namespace A065017.P4017112040304953443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065017.P4017112040304953443

/-! ## A065017.P17515647275078808413

`∩[A343495(n+1), A391078(n+1)]`
-/

namespace A065017.P17515647275078808413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065017.P17515647275078808413

/-! ## A065017.P17066459080847781761

`∩[A096342(n+1), A389431(n+1)]`
-/

namespace A065017.P17066459080847781761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065017.P17066459080847781761

/-! ## A065017.P1071909719462229782

`∩[A389431(n+1), A391078(n+1)]`
-/

namespace A065017.P1071909719462229782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065017.P1071909719462229782

/-! ## A065017.P11284006084212129975

`∩[A053705(n+1), A096342(n+1)]`
-/

namespace A065017.P11284006084212129975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065017.P11284006084212129975

/-! ## A065017.P14419096487574560340

`∩[A053705(n+1), A391078(n+1)]`
-/

namespace A065017.P14419096487574560340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065017.P14419096487574560340

/-! ## A065017.P1197893992748891823

`∩[A028871(n+1), A096342(n+1)]`
-/

namespace A065017.P1197893992748891823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065017.P1197893992748891823

/-! ## A065017.P17272899219898645799

`∩[A028871(n+1), A391078(n+1)]`
-/

namespace A065017.P17272899219898645799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065017.P17272899219898645799

/-! ## A065017.P9751389477208310961

`∩[A096342(n+1), A099228(n+1)]`
-/

namespace A065017.P9751389477208310961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065017.P9751389477208310961

/-! ## A065017.P5719672778322126017

`∩[A099228(n+1), A391078(n+1)]`
-/

namespace A065017.P5719672778322126017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065017.P5719672778322126017

/-! ## A065017.P10059887721232915980

`A049001(A340770(n+1))`
-/

namespace A065017.P10059887721232915980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (A340770 (n + 1)).toNat

end

end A065017.P10059887721232915980

/-! ## A065017.P3943391445184449588

`∩[A049001(n+1), A096342(n+1)]`
-/

namespace A065017.P3943391445184449588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065017.P3943391445184449588

/-! ## A065017.P7203209017288407226

`∩[A054270(n+1), A096342(n+1)]`
-/

namespace A065017.P7203209017288407226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065017.P7203209017288407226

/-! ## A065017.P4139174473818378301

`∩[A028871(n+1), A126199(n+1)]`
-/

namespace A065017.P4139174473818378301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065017.P4139174473818378301

/-! ## A065017.P940077177368192930

`∩[A049002(n+1), A126199(n+1)]`
-/

namespace A065017.P940077177368192930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065017.P940077177368192930

/-! ## A065017.P15498298933142979092

`∩[A053705(n+1), A126199(n+1)]`
-/

namespace A065017.P15498298933142979092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065017.P15498298933142979092

/-!
# A065018: a(n) = Sum_{d|n} sigma(d)^2.

The programs for A065018, the canonical program `A065018.P12289181754646712942` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065018 has offset 1).

The definition of A065018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065018.P12289181754646712942

`∑{d}[n+1, A072861(#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065018

/-- `∑{d}[n+1, A072861(#)]` -/
def P12289181754646712942.Spec : Prop :=
  ∀ n, P12289181754646712942.a n = A065018 (n + 1)

theorem P12289181754646712942.correct : P12289181754646712942.Spec := by
  intro n
  simp only [A065018, Nat.add_sub_cancel]

end A065018

/-! ## A065018.P5769675800788034226

`∑{d}[n+1, A000203(#)²]`
-/

namespace A065018.P5769675800788034226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d ^ 2

end

end A065018.P5769675800788034226

namespace A065018

/-- `∑{d}[n+1, A000203(#)²]` -/
def P5769675800788034226.Spec : Prop :=
  ∀ n, P5769675800788034226.a n = A065018 (n + 1)

end A065018

/-! ## A065018.P5827592622112900041

`∑{d}[n+1, A143348(#)²]`
-/

namespace A065018.P5827592622112900041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143348 d ^ 2

end

end A065018.P5827592622112900041

namespace A065018

/-- `∑{d}[n+1, A143348(#)²]` -/
def P5827592622112900041.Spec : Prop :=
  ∀ n, P5827592622112900041.a n = A065018 (n + 1)

end A065018

/-! ## A065018.P7757176780454154298

`∑{d}[n+1, A000203((n+1)/#)^2]`
-/

namespace A065018.P7757176780454154298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ 2

end

end A065018.P7757176780454154298

namespace A065018

/-- `∑{d}[n+1, A000203((n+1)/#)^2]` -/
def P7757176780454154298.Spec : Prop :=
  ∀ n, P7757176780454154298.a n = A065018 (n + 1)

end A065018

/-! ## A065018.P10989980986081256713

`∑{d}[n+1, A000082(#)*A007429((n+1)/#)]`
-/

namespace A065018.P10989980986081256713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000082 d * A007429 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065018.P10989980986081256713

namespace A065018

/-- `∑{d}[n+1, A000082(#)*A007429((n+1)/#)]` -/
def P10989980986081256713.Spec : Prop :=
  ∀ n, P10989980986081256713.a n = A065018 (n + 1)

end A065018

/-! ## A065018.P11013389456821483578

`∑{d}[n+1, A001001(#)*A048250((n+1)/#)]`
-/

namespace A065018.P11013389456821483578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001001 d * A048250 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065018.P11013389456821483578

namespace A065018

/-- `∑{d}[n+1, A001001(#)*A048250((n+1)/#)]` -/
def P11013389456821483578.Spec : Prop :=
  ∀ n, P11013389456821483578.a n = A065018 (n + 1)

end A065018

/-! ## A065018.P13756206891112258971

`∑{d}[n+1, A000203(#)*A065764((n+1)/#)]`
-/

namespace A065018.P13756206891112258971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A065764 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065018.P13756206891112258971

namespace A065018

/-- `∑{d}[n+1, A000203(#)*A065764((n+1)/#)]` -/
def P13756206891112258971.Spec : Prop :=
  ∀ n, P13756206891112258971.a n = A065018 (n + 1)

end A065018

/-! ## A065018.P15641012090079995477

`∑{d}[n+1, A034676(#)*A060640((n+1)/#)]`
-/

namespace A065018.P15641012090079995477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034676 d * A060640 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065018.P15641012090079995477

namespace A065018

/-- `∑{d}[n+1, A034676(#)*A060640((n+1)/#)]` -/
def P15641012090079995477.Spec : Prop :=
  ∀ n, P15641012090079995477.a n = A065018 (n + 1)

end A065018

/-! ## A065018.P4060029891539750964

`∑{d}[n+1, A057660(#)*A064950((n+1)/#)]`
-/

namespace A065018.P4060029891539750964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057660 d * A064950 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065018.P4060029891539750964

namespace A065018

/-- `∑{d}[n+1, A057660(#)*A064950((n+1)/#)]` -/
def P4060029891539750964.Spec : Prop :=
  ∀ n, P4060029891539750964.a n = A065018 (n + 1)

end A065018

/-! ## A065018.P17976883960037267337

`∑{d}[n+1, A007430(#)*A140697((n+1)/#)]`
-/

namespace A065018.P17976883960037267337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007430 d * A140697 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065018.P17976883960037267337

namespace A065018

/-- `∑{d}[n+1, A007430(#)*A140697((n+1)/#)]` -/
def P17976883960037267337.Spec : Prop :=
  ∀ n, P17976883960037267337.a n = A065018 (n + 1)

end A065018

/-! ## A065018.P3703458445692603663

`∑{d}[n+1, A065766(#)*A215947((n+1)/#)]`
-/

namespace A065018.P3703458445692603663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065766 d * A215947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065018.P3703458445692603663

namespace A065018

/-- `∑{d}[n+1, A065766(#)*A215947((n+1)/#)]` -/
def P3703458445692603663.Spec : Prop :=
  ∀ n, P3703458445692603663.a n = A065018 (n + 1)

end A065018

/-! ## A065018.P13204762975911464248

`∑{d}[n+1, A034761(#)*A254520((n+1)/#)]`
-/

namespace A065018.P13204762975911464248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034761 d * A254520 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065018.P13204762975911464248

namespace A065018

/-- `∑{d}[n+1, A034761(#)*A254520((n+1)/#)]` -/
def P13204762975911464248.Spec : Prop :=
  ∀ n, P13204762975911464248.a n = A065018 (n + 1)

end A065018

/-! ## A065018.P10999025716794057719

`∑{d}[n+1, A001157(#)*A357938((n+1)/#)]`
-/

namespace A065018.P10999025716794057719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A357938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065018.P10999025716794057719

namespace A065018

/-- `∑{d}[n+1, A001157(#)*A357938((n+1)/#)]` -/
def P10999025716794057719.Spec : Prop :=
  ∀ n, P10999025716794057719.a n = A065018 (n + 1)

end A065018

/-! ## A065018.P18004155242004114694

`∑{d}[n+1, A023900(#)*A344042((n+1)/#)]`
-/

namespace A065018.P18004155242004114694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A344042 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065018.P18004155242004114694

namespace A065018

/-- `∑{d}[n+1, A023900(#)*A344042((n+1)/#)]` -/
def P18004155242004114694.Spec : Prop :=
  ∀ n, P18004155242004114694.a n = A065018 (n + 1)

end A065018

/-! ## A065018.P14881610612556113547

`∑{d}[n+1, A064987(#)*A319132((n+1)/#)]`
-/

namespace A065018.P14881610612556113547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064987 d * A319132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065018.P14881610612556113547

namespace A065018

/-- `∑{d}[n+1, A064987(#)*A319132((n+1)/#)]` -/
def P14881610612556113547.Spec : Prop :=
  ∀ n, P14881610612556113547.a n = A065018 (n + 1)

end A065018

/-! ## A065018.P18391710936158095220

`∑{d}[n+1, A007425(#)*A390262((n+1)/#)]`
-/

namespace A065018.P18391710936158095220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A390262 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065018.P18391710936158095220

namespace A065018

/-- `∑{d}[n+1, A007425(#)*A390262((n+1)/#)]` -/
def P18391710936158095220.Spec : Prop :=
  ∀ n, P18391710936158095220.a n = A065018 (n + 1)

end A065018

/-! ## A065018.P899516233181607822

`∑{d}[n+1, A068984(#)*A340850((n+1)/#)]`
-/

namespace A065018.P899516233181607822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068984 d * A340850 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065018.P899516233181607822

namespace A065018

/-- `∑{d}[n+1, A068984(#)*A340850((n+1)/#)]` -/
def P899516233181607822.Spec : Prop :=
  ∀ n, P899516233181607822.a n = A065018 (n + 1)

end A065018

/-! ## A065018.P12899523501380823760

`∑{d}[n+1, A158949(#)*A332618((n+1)/#)]`
-/

namespace A065018.P12899523501380823760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158949 d * A332618 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065018.P12899523501380823760

namespace A065018

/-- `∑{d}[n+1, A158949(#)*A332618((n+1)/#)]` -/
def P12899523501380823760.Spec : Prop :=
  ∀ n, P12899523501380823760.a n = A065018 (n + 1)

end A065018

/-! ## A065018.P5535939233580154598

`∑{d}[n+1, A010684(#-1)*A382123((n+1)/#)]`
-/

namespace A065018.P5535939233580154598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010684 (d - 1) * A382123 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065018.P5535939233580154598

namespace A065018

/-- `∑{d}[n+1, A010684(#-1)*A382123((n+1)/#)]` -/
def P5535939233580154598.Spec : Prop :=
  ∀ n, P5535939233580154598.a n = A065018 (n + 1)

end A065018

/-!
# A065019: Let phi be the golden number {1+sqrt(5)}/2 (A001622), let phi(n) be the number phi written in base 10 but truncated to n decimal digits. Sequence gives number of 1's at the beginning of the continued fraction expansion of phi(n).

The programs for A065019, there is no canonical definition to state claims against.
-/

/-! ## A065019.P6789145369029771414

`or(A014963(A058169(2*n+1)), A047595(2*(n+1)))`
-/

namespace A065019.P6789145369029771414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014963 (A058169 (2 * n + 1)).toNat) (A047595 (2 * (n + 1)))

end

end A065019.P6789145369029771414

/-!
# A065020: Coefficients of irreducible polynomials over GF(3) listed in lexicographic order.

The programs for A065020, there is no canonical definition to state claims against.
-/

/-! ## A065020.P11215675460960235468

`A007089(eq[1, A347419(n+3)])`
-/

namespace A065020.P11215675460960235468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347419 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065020.P11215675460960235468

/-! ## A065020.P5900670863760536614

`∩[A347453(n+1), A007089(n)]`
-/

namespace A065020.P5900670863760536614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065020.P5900670863760536614

/-!
# A065022: Composite n such that the sums of the composite numbers up to n, +/ - 1, are twin primes.

The programs for A065022, there is no canonical definition to state claims against.
-/

/-! ## A065022.P18048090650123108437

`A002808(∩[A060697(n+1), A060698(n+1)])`
-/

namespace A065022.P18048090650123108437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060698 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A065022.P18048090650123108437

/-!
# A065024: Number of n-digit biquanimous numbers in base 10 allowing leading zeros.

The programs for A065024, there is no canonical definition to state claims against.
-/

/-! ## A065024.P14967791650127038451

`∑[A065086(n+1)]`
-/

namespace A065024.P14967791650127038451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065024.P14967791650127038451

/-! ## A065024.P8153169661591969292

`∑[record[A065086(A126759(n))]]`
-/

namespace A065024.P8153169661591969292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065086 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065024.P8153169661591969292

/-! ## A065024.P11664491270767436079

`∑[record[A065086(A158416(n))]]`
-/

namespace A065024.P11664491270767436079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065086 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065024.P11664491270767436079

/-! ## A065024.P678201961669724405

`∑[record[A065086(A193592(n))]]`
-/

namespace A065024.P678201961669724405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065086 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065024.P678201961669724405

/-! ## A065024.P8346684248518982451

`A288638(Δ[Δ[A264447(n)]])`
-/

namespace A065024.P8346684248518982451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264447 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (f1 (n + 1) - f1 n).toNat

end

end A065024.P8346684248518982451

/-!
# A065025: Consider biquanimous numbers that exclude 0's; sequence gives number of n-digit non-biquanimous numbers - number of n-digit biquanimous numbers.

The programs for A065025, there is no canonical definition to state claims against.
-/

/-! ## A065025.P15908290571001181489

`9^(n+1)-2*A288550(n+1)`
-/

namespace A065025.P15908290571001181489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ (n + 1) : ℤ) - 2 * A288550 (n + 1)

end

end A065025.P15908290571001181489

/-!
# A065027: a(n) is the smallest k > 0 such that n^k < k!.

The programs for A065027, there is no canonical definition to state claims against.
-/

/-! ## A065027.P6549595017828920491

`A086824(n)+char[1]`
-/

namespace A065027.P6549595017828920491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086824 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A065027.P6549595017828920491

/-! ## A065027.P12730363990939071851

`A086824(n)*A373565(n)`
-/

namespace A065027.P12730363990939071851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086824 n * A373565 n

end

end A065027.P12730363990939071851

/-! ## A065027.P5128318343983813466

`(A063524(n)+1)*A086824(n)`
-/

namespace A065027.P5128318343983813466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063524 n + 1) * A086824 n

end

end A065027.P5128318343983813466

/-! ## A065027.P17158466339344849214

`A209997(C(2, n))+A086824(n)`
-/

namespace A065027.P17158466339344849214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209997 (Nat.choose 2 n) + A086824 n

end

end A065027.P17158466339344849214

/-! ## A065027.P8624760225384713449

`A000041(C(2, n))*A086824(n)`
-/

namespace A065027.P8624760225384713449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 n) * A086824 n

end

end A065027.P8624760225384713449

/-! ## A065027.P11685048727078939146

`A011782(C(2, n))*A086824(n)`
-/

namespace A065027.P11685048727078939146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (Nat.choose 2 n) * A086824 n

end

end A065027.P11685048727078939146

/-! ## A065027.P5120818379441206449

`A086824(n)*A130321(C(2, n+1))`
-/

namespace A065027.P5120818379441206449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086824 n * A130321 (Nat.choose 2 (n + 1))

end

end A065027.P5120818379441206449

/-! ## A065027.P6179738633091889542

`A000034(A054541(n+1))*A086824(n)`
-/

namespace A065027.P6179738633091889542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A054541 (n + 1)).toNat * A086824 n

end

end A065027.P6179738633091889542

/-! ## A065027.P11291872401560325223

`A211487(A060968(n+4))+A086824(n)`
-/

namespace A065027.P11291872401560325223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211487 (A060968 (n + 4)).toNat + A086824 n

end

end A065027.P11291872401560325223

/-! ## A065027.P8244847629479537010

`A065067(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A065027.P8244847629479537010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065067 (n - 1) + a (n - 1)

end

end A065027.P8244847629479537010

/-! ## A065027.P14177538583025829704

`∑[A065067(A004273(n)-n)]`
-/

namespace A065027.P14177538583025829704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065067 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065027.P14177538583025829704

/-! ## A065027.P1202753898442458742

`∑[A065067(n-A019426(2*n))]`
-/

namespace A065027.P1202753898442458742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065067 ((n : ℤ) - A019426 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065027.P1202753898442458742

/-! ## A065027.P15643863677245227822

`∑[A065067(n)]+1-A065067(n)`
-/

namespace A065027.P15643863677245227822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A065067 n)

end

end A065027.P15643863677245227822

/-!
# A065029: Numbers k such that the period of the continued fraction for sqrt(2)*k (A064848) is 2.

The programs for A065029, there is no canonical definition to state claims against.
-/

/-! ## A065029.P10911860438647443716

`eq[2, A064848(n+1)]+1`
-/

namespace A065029.P10911860438647443716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064848 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065029.P10911860438647443716

/-! ## A065029.P14197421146769975048

`eq[2, A064848(A028310(n))]`
-/

namespace A065029.P14197421146769975048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064848 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065029.P14197421146769975048

/-! ## A065029.P8447115569558076203

`eq[2, A064848(A000007(n)+n)]`
-/

namespace A065029.P8447115569558076203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064848 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065029.P8447115569558076203

/-! ## A065029.P1795719112575685138

`eq[2, A064848(A065033(2*n))]`
-/

namespace A065029.P1795719112575685138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064848 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065029.P1795719112575685138

/-! ## A065029.P16282946616086081357

`eq[2, A064848(A123108(2*n))]`
-/

namespace A065029.P16282946616086081357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064848 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065029.P16282946616086081357

/-!
# A065030: Numbers k such that the period of the continued fraction for sqrt(5)*k is 2.

The programs for A065030, there is no canonical definition to state claims against.
-/

/-! ## A065030.P8747894440847794239

`eq[2, A064850(n+1)]+1`
-/

namespace A065030.P8747894440847794239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064850 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065030.P8747894440847794239

/-! ## A065030.P2891914350006302323

`eq[2, A064850(A028310(n))]`
-/

namespace A065030.P2891914350006302323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064850 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065030.P2891914350006302323

/-! ## A065030.P1959057571961686460

`A020725(eq[2, A064850(n+1)])`
-/

namespace A065030.P1959057571961686460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065030.P1959057571961686460

/-! ## A065030.P4227998556304444124

`eq[2, A290013(2*(n+1))]+1`
-/

namespace A065030.P4227998556304444124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290013 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065030.P4227998556304444124

/-! ## A065030.P7912982909487476859

`eq[2, A290013(A004277(n))]`
-/

namespace A065030.P7912982909487476859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290013 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065030.P7912982909487476859

/-!
# A065031: In the decimal expansion of n, replace each odd digit with 1 and each even digit with 2.

The programs for A065031, there is no canonical definition to state claims against.
-/

/-! ## A065031.P1388560233031370246

`A136400(A106746(n))+A103181(A048379(n))`
-/

namespace A065031.P1388560233031370246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (A106746 n).toNat + A103181 (A048379 n).toNat

end

end A065031.P1388560233031370246

/-! ## A065031.P2796155224072157147

`A136400(A106746(n))+A103181(A061601(n))`
-/

namespace A065031.P2796155224072157147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (A106746 n).toNat + A103181 (A061601 n).toNat

end

end A065031.P2796155224072157147

/-! ## A065031.P6950297614227577329

`A136400(A139337(n))+A103181(A048379(n))`
-/

namespace A065031.P6950297614227577329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (A139337 n).toNat + A103181 (A048379 n).toNat

end

end A065031.P6950297614227577329

/-! ## A065031.P1241413037806630643

`A136400(A139337(n))+A103181(A061601(n))`
-/

namespace A065031.P1241413037806630643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (A139337 n).toNat + A103181 (A061601 n).toNat

end

end A065031.P1241413037806630643

/-! ## A065031.P14195403594189154030

`A136400(A106746(n))+A103181(A306436(n))`
-/

namespace A065031.P14195403594189154030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (A106746 n).toNat + A103181 (A306436 n).toNat

end

end A065031.P14195403594189154030

/-! ## A065031.P9019605013221436081

`A136400(A139337(n))+A103181(A306436(n))`
-/

namespace A065031.P9019605013221436081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (A139337 n).toNat + A103181 (A306436 n).toNat

end

end A065031.P9019605013221436081

/-! ## A065031.P3563460449864268303

`A136400(A213217(n))+A103181(A048379(n))`
-/

namespace A065031.P3563460449864268303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (A213217 n).toNat + A103181 (A048379 n).toNat

end

end A065031.P3563460449864268303

/-! ## A065031.P17154464601848770793

`A136400(A213217(n))+A103181(A061601(n))`
-/

namespace A065031.P17154464601848770793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (A213217 n).toNat + A103181 (A061601 n).toNat

end

end A065031.P17154464601848770793

/-! ## A065031.P13807807132568222646

`A136400(A213217(n))+A103181(A306436(n))`
-/

namespace A065031.P13807807132568222646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (A213217 n).toNat + A103181 (A306436 n).toNat

end

end A065031.P13807807132568222646

/-! ## A065031.P17978516267810458292

`A167677(n)+A167678(n)-A167679(n)`
-/

namespace A065031.P17978516267810458292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167677 n + (A167678 n - A167679 n)

end

end A065031.P17978516267810458292

/-!
# A065033: 1 appears three times, other numbers twice.

The programs for A065033, the canonical program `A065033.P13150710762287634520` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065033 has offset 0).

The definition of A065033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065033.P13150710762287634520

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A065033

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P13150710762287634520.Spec : Prop :=
  ∀ n, P13150710762287634520.a n = A065033 n

theorem P13150710762287634520.correct : P13150710762287634520.Spec := by
  intro n
  simp only [A065033]

end A065033

/-! ## A065033.P13645431892751556381

`round(cosh(log(acot(n))))`
-/

namespace A065033.P13645431892751556381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (SequenceMachineLib.acot (n : ℝ))))

end

end A065033.P13645431892751556381

namespace A065033

/-- `round(cosh(log(acot(n))))` -/
def P13645431892751556381.Spec : Prop :=
  ∀ n, P13645431892751556381.a n = A065033 n

end A065033

/-! ## A065033.P10285365892782611556

`floor(cosh(log(n+1)))`
-/

namespace A065033.P10285365892782611556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (n + 1 : ℝ))⌋

end

end A065033.P10285365892782611556

namespace A065033

/-- `floor(cosh(log(n+1)))` -/
def P10285365892782611556.Spec : Prop :=
  ∀ n, P10285365892782611556.a n = A065033 n

end A065033

/-! ## A065033.P18311483958521005848

`round(cosh(log(n+γ)))`
-/

namespace A065033.P18311483958521005848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log ((n : ℝ) + Real.eulerMascheroniConstant)))

end

end A065033.P18311483958521005848

namespace A065033

/-- `round(cosh(log(n+γ)))` -/
def P18311483958521005848.Spec : Prop :=
  ∀ n, P18311483958521005848.a n = A065033 n

end A065033

/-! ## A065033.P10068524038040567039

`ceil(sinh(abs(log(acot(n)))))`
-/

namespace A065033.P10068524038040567039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh |Real.log (SequenceMachineLib.acot (n : ℝ))|⌉

end

end A065033.P10068524038040567039

namespace A065033

/-- `ceil(sinh(abs(log(acot(n)))))` -/
def P10068524038040567039.Spec : Prop :=
  ∀ n, P10068524038040567039.a n = A065033 n

end A065033

/-! ## A065033.P2740497305539640692

`round(1/acot(n/2))`
-/

namespace A065033.P2740497305539640692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot ((n : ℚ) / 2 : ℝ))

end

end A065033.P2740497305539640692

namespace A065033

/-- `round(1/acot(n/2))` -/
def P2740497305539640692.Spec : Prop :=
  ∀ n, P2740497305539640692.a n = A065033 n

end A065033

/-! ## A065033.P8191811479594663235

`n-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A065033.P8191811479594663235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) - a (n - 1)

end

end A065033.P8191811479594663235

namespace A065033

/-- `n-a(n-1)` -/
def P8191811479594663235.Spec : Prop :=
  ∀ n, P8191811479594663235.a n = A065033 n

end A065033

/-! ## A065033.P16999376665933500569

`round((1-n)/2)+n`
-/

namespace A065033.P16999376665933500569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 - (n : ℤ) : ℚ) / 2) + (n : ℤ)

end

end A065033.P16999376665933500569

namespace A065033

/-- `round((1-n)/2)+n` -/
def P16999376665933500569.Spec : Prop :=
  ∀ n, P16999376665933500569.a n = A065033 n

end A065033

/-! ## A065033.P4812147825617388575

`∑[char[record[xor(1, n+1)]]]`
-/

namespace A065033.P4812147825617388575
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065033.P4812147825617388575

namespace A065033

/-- `∑[char[record[xor(1, n+1)]]]` -/
def P4812147825617388575.Spec : Prop :=
  ∀ n, (P4812147825617388575.a n : ℤ) = A065033 n

end A065033

/-! ## A065033.P278570096074695832

`round(cot(sin(2/(n+1))))`
-/

namespace A065033.P278570096074695832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.sin (2 / (n + 1 : ℚ) : ℝ)))

end

end A065033.P278570096074695832

namespace A065033

/-- `round(cot(sin(2/(n+1))))` -/
def P278570096074695832.Spec : Prop :=
  ∀ n, P278570096074695832.a n = A065033 n

end A065033

/-! ## A065033.P15392966230902442051

`round((cos(n)²+n)/2)`
-/

namespace A065033.P15392966230902442051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.cos (n : ℝ) ^ 2 + (n : ℝ)) / 2)

end

end A065033.P15392966230902442051

namespace A065033

/-- `round((cos(n)²+n)/2)` -/
def P15392966230902442051.Spec : Prop :=
  ∀ n, P15392966230902442051.a n = A065033 n

end A065033

/-! ## A065033.P8476313708047877645

`ceil(cosh(log(n+3))-ϕ)`
-/

namespace A065033.P8476313708047877645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (n + 3 : ℝ)) - Real.goldenRatio⌉

end

end A065033.P8476313708047877645

namespace A065033

/-- `ceil(cosh(log(n+3))-ϕ)` -/
def P8476313708047877645.Spec : Prop :=
  ∀ n, P8476313708047877645.a n = A065033 n

end A065033

/-! ## A065033.P244752417844960214

`floor((∑[n]+1)*acot(n))`
-/

namespace A065033.P244752417844960214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℝ) * SequenceMachineLib.acot (n : ℝ)⌋

end

end A065033.P244752417844960214

namespace A065033

/-- `floor((∑[n]+1)*acot(n))` -/
def P244752417844960214.Spec : Prop :=
  ∀ n, P244752417844960214.a n = A065033 n

end A065033

/-! ## A065033.P9520375403167355626

`floor(1/sin(2/(n+1)))`
-/

namespace A065033.P9520375403167355626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / Real.sin (2 / (n + 1 : ℚ) : ℝ)⌋

end

end A065033.P9520375403167355626

namespace A065033

/-- `floor(1/sin(2/(n+1)))` -/
def P9520375403167355626.Spec : Prop :=
  ∀ n, P9520375403167355626.a n = A065033 n

end A065033

/-! ## A065033.P2792297416184787993

`floor(1/tanh(2/(n+1)))`
-/

namespace A065033.P2792297416184787993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / Real.tanh (2 / (n + 1 : ℚ) : ℝ)⌋

end

end A065033.P2792297416184787993

namespace A065033

/-- `floor(1/tanh(2/(n+1)))` -/
def P2792297416184787993.Spec : Prop :=
  ∀ n, P2792297416184787993.a n = A065033 n

end A065033

/-! ## A065033.P5805934058049861436

`floor(∑[or(1, n)]/(n+1))`
-/

namespace A065033.P5805934058049861436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)⌋

end

end A065033.P5805934058049861436

namespace A065033

/-- `floor(∑[or(1, n)]/(n+1))` -/
def P5805934058049861436.Spec : Prop :=
  ∀ n, P5805934058049861436.a n = A065033 n

end A065033

/-! ## A065033.P15004462011186192028

`round(or(1, ∑[n])/(n+1))`
-/

namespace A065033.P15004462011186192028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ))

end

end A065033.P15004462011186192028

namespace A065033

/-- `round(or(1, ∑[n])/(n+1))` -/
def P15004462011186192028.Spec : Prop :=
  ∀ n, P15004462011186192028.a n = A065033 n

end A065033

/-! ## A065033.P5892713396685657935

`round(∑[xor(1, n)]/(n+1))`
-/

namespace A065033.P5892713396685657935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ))

end

end A065033.P5892713396685657935

namespace A065033

/-- `round(∑[xor(1, n)]/(n+1))` -/
def P5892713396685657935.Spec : Prop :=
  ∀ n, P5892713396685657935.a n = A065033 n

end A065033

/-! ## A065033.P7678634129026420880

`ceil((n+1-atan(n))/2)`
-/

namespace A065033.P7678634129026420880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℝ) - Real.arctan (n : ℝ)) / 2⌉

end

end A065033.P7678634129026420880

namespace A065033

/-- `ceil((n+1-atan(n))/2)` -/
def P7678634129026420880.Spec : Prop :=
  ∀ n, P7678634129026420880.a n = A065033 n

end A065033

/-! ## A065033.P14918723480110007120

`floor((acot(n)+n+1)/2)`
-/

namespace A065033.P14918723480110007120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.acot (n : ℝ) + (n + 1 : ℝ)) / 2⌋

end

end A065033.P14918723480110007120

namespace A065033

/-- `floor((acot(n)+n+1)/2)` -/
def P14918723480110007120.Spec : Prop :=
  ∀ n, P14918723480110007120.a n = A065033 n

end A065033

/-!
# A065034: a(n) = Lucas(2*n) + 1.

The programs for A065034, the canonical program `A065034.P15700108238515394926` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065034 has offset 0).

The definition of A065034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065034.P15700108238515394926

`A005248(n)+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065034

/-- `A005248(n)+1` -/
def P15700108238515394926.Spec : Prop :=
  ∀ n, P15700108238515394926.a n = A065034 n

theorem P15700108238515394926.correct : P15700108238515394926.Spec := by
  intro n
  simp only [A065034]

end A065034

/-! ## A065034.P12187658388796067922

`4*a(n-1)-4*a(n-2)+a(n-3)` with `a(0)=3, a(1)=4, a(2)=8`
-/

namespace A065034.P12187658388796067922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 8] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2) + a (n - 3)

end

end A065034.P12187658388796067922

namespace A065034

/-- `4*a(n-1)-4*a(n-2)+a(n-3)` -/
def P12187658388796067922.Spec : Prop :=
  ∀ n, P12187658388796067922.a n = A065034 n

end A065034

/-! ## A065034.P686120258203369343

`floor((ϕ^n)²)+2`
-/

namespace A065034.P686120258203369343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio ^ n) ^ 2⌋ + 2

end

end A065034.P686120258203369343

namespace A065034

/-- `floor((ϕ^n)²)+2` -/
def P686120258203369343.Spec : Prop :=
  ∀ n, P686120258203369343.a n = A065034 n

end A065034

/-! ## A065034.P2460040598171736708

`floor(record[(-ϕ)^n+2])`
-/

namespace A065034.P2460040598171736708
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-Real.goldenRatio) ^ n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A065034.P2460040598171736708

namespace A065034

/-- `floor(record[(-ϕ)^n+2])` -/
def P2460040598171736708.Spec : Prop :=
  ∀ n, P2460040598171736708.a n = A065034 n

end A065034

/-! ## A065034.P1894899517504012839

`-xor(2, -floor(ϕ^(2*n)))`
-/

namespace A065034.P1894899517504012839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 2 (-⌊Real.goldenRatio ^ (2 * n)⌋)

end

end A065034.P1894899517504012839

namespace A065034

/-- `-xor(2, -floor(ϕ^(2*n)))` -/
def P1894899517504012839.Spec : Prop :=
  ∀ n, P1894899517504012839.a n = A065034 n

end A065034

/-! ## A065034.P4749819058809019755

`∑[ceil(ϕ²*a(n-1))]` with `a(0)=3, a(1)=1, a(2)=4`
-/

namespace A065034.P4749819058809019755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 4] fun n f1 =>
  ⌈Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065034.P4749819058809019755

namespace A065034

/-- `∑[ceil(ϕ²*a(n-1))]` -/
def P4749819058809019755.Spec : Prop :=
  ∀ n, P4749819058809019755.a n = A065034 n

end A065034

/-! ## A065034.P4918999315127234503

`ceil(acot(ceil(sin(n)²))+ϕ^(2*n))`
-/

namespace A065034.P4918999315127234503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (⌈Real.sin (n : ℝ) ^ 2⌉ : ℝ) + Real.goldenRatio ^ (2 * n)⌉

end

end A065034.P4918999315127234503

namespace A065034

/-- `ceil(acot(ceil(sin(n)²))+ϕ^(2*n))` -/
def P4918999315127234503.Spec : Prop :=
  ∀ n, P4918999315127234503.a n = A065034 n

end A065034

/-! ## A065034.P2712543376954706191

`record[a(n-2)+1-a(n-1)]` with `a(0)=3, a(1)=0`
-/

namespace A065034.P2712543376954706191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  f1 (n - 2) + (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065034.P2712543376954706191

namespace A065034

/-- `record[a(n-2)+1-a(n-1)]` -/
def P2712543376954706191.Spec : Prop :=
  ∀ n, P2712543376954706191.a n = A065034 n

end A065034

/-! ## A065034.P136255548427957182

`record[1-(a(n-1)-a(n-2))]` with `a(0)=3, a(1)=0`
-/

namespace A065034.P136255548427957182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  1 - (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065034.P136255548427957182

namespace A065034

/-- `record[1-(a(n-1)-a(n-2))]` -/
def P136255548427957182.Spec : Prop :=
  ∀ n, P136255548427957182.a n = A065034 n

end A065034

/-! ## A065034.P2856669322056459711

`A001612(2*n)`
-/

namespace A065034.P2856669322056459711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 (2 * n)

end

end A065034.P2856669322056459711

namespace A065034

/-- `A001612(2*n)` -/
def P2856669322056459711.Spec : Prop :=
  ∀ n, P2856669322056459711.a n = A065034 n

end A065034

/-! ## A065034.P9626855188230626568

`A099925(2*n)`
-/

namespace A065034.P9626855188230626568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099925 (2 * n)

end

end A065034.P9626855188230626568

namespace A065034

/-- `A099925(2*n)` -/
def P9626855188230626568.Spec : Prop :=
  ∀ n, P9626855188230626568.a n = A065034 n

end A065034

/-! ## A065034.P2919111594040547032

`record[A005247(n)+1]`
-/

namespace A065034.P2919111594040547032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065034.P2919111594040547032

namespace A065034

/-- `record[A005247(n)+1]` -/
def P2919111594040547032.Spec : Prop :=
  ∀ n, P2919111594040547032.a n = A065034 n

end A065034

/-! ## A065034.P4455946844128312266

`record[A061084(n+1)+1]`
-/

namespace A065034.P4455946844128312266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065034.P4455946844128312266

namespace A065034

/-- `record[A061084(n+1)+1]` -/
def P4455946844128312266.Spec : Prop :=
  ∀ n, P4455946844128312266.a n = A065034 n

end A065034

/-! ## A065034.P1786079136313702124

`record[A063726(n+1)+1]`
-/

namespace A065034.P1786079136313702124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063726 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065034.P1786079136313702124

namespace A065034

/-- `record[A063726(n+1)+1]` -/
def P1786079136313702124.Spec : Prop :=
  ∀ n, P1786079136313702124.a n = A065034 n

end A065034

/-! ## A065034.P15596561597186887010

`record[A000032(n%4+n)+1]`
-/

namespace A065034.P15596561597186887010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n % 4 + n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065034.P15596561597186887010

namespace A065034

/-- `record[A000032(n%4+n)+1]` -/
def P15596561597186887010.Spec : Prop :=
  ∀ n, P15596561597186887010.a n = A065034 n

end A065034

/-! ## A065034.P12738711768885745570

`Δ[Δ[A033550(n)]-A033550(n)]`
-/

namespace A065034.P12738711768885745570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033550 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A033550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065034.P12738711768885745570

namespace A065034

/-- `Δ[Δ[A033550(n)]-A033550(n)]` -/
def P12738711768885745570.Spec : Prop :=
  ∀ n, P12738711768885745570.a n = A065034 n

end A065034

/-! ## A065034.P747006451338970424

`(A020706(2*n+1)-A022310(2*n))/2`
-/

namespace A065034.P747006451338970424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020706 (2 * n + 1) - A022310 (2 * n) : ℚ) / 2

end

end A065034.P747006451338970424

namespace A065034

/-- `(A020706(2*n+1)-A022310(2*n))/2` -/
def P747006451338970424.Spec : Prop :=
  ∀ n, P747006451338970424.a n = (A065034 n : ℚ)

end A065034

/-! ## A065034.P3263102529307926826

`∑[(a(n-1)²-5)/a(n-2)]` with `a(0)=3, a(1)=1, a(2)=4`
-/

namespace A065034.P3263102529307926826
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 1, 4] fun n f1 =>
  (f1 (n - 1) ^ 2 - 5) / f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065034.P3263102529307926826

namespace A065034

/-- `∑[(a(n-1)²-5)/a(n-2)]` -/
def P3263102529307926826.Spec : Prop :=
  ∀ n, P3263102529307926826.a n = (A065034 n : ℚ)

end A065034

/-!
# A065035: a(n+1) = a(n)^2 + 3*a(n) + 1.

The programs for A065035, the canonical program `A065035.P13186703384493540882` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065035 has offset 0).

The definition of A065035 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065035.P13186703384493540882

`a(n-1)²+3*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A065035

/-- `a(n-1)²+3*a(n-1)+1` -/
def P13186703384493540882.Spec : Prop :=
  ∀ n, (P13186703384493540882.a n : ℤ) = A065035 n

theorem P13186703384493540882.correct : P13186703384493540882.Spec := by
  intro n
  simp only [A065035]

end A065035

/-! ## A065035.P6590740420555012994

`A007018(n)-1`
-/

namespace A065035.P6590740420555012994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007018 n - 1

end

end A065035.P6590740420555012994

namespace A065035

/-- `A007018(n)-1` -/
def P6590740420555012994.Spec : Prop :=
  ∀ n, P6590740420555012994.a n = A065035 n

end A065035

/-! ## A065035.P8800618051882756150

`A000058(n)-2`
-/

namespace A065035.P8800618051882756150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000058 n - 2

end

end A065035.P8800618051882756150

namespace A065035

/-- `A000058(n)-2` -/
def P8800618051882756150.Spec : Prop :=
  ∀ n, P8800618051882756150.a n = A065035 n

end A065035

/-!
# A065036: Product of the cube of a prime (A030078) and a different prime.

The programs for A065036, there is no canonical definition to state claims against.
-/

/-! ## A065036.P15610546535291597958

`sqrt(A189990(n+1))`
-/

namespace A065036.P15610546535291597958
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A189990 (n + 1) : ℝ)

end

end A065036.P15610546535291597958

/-! ## A065036.P12379659301228797533

`∩[A048109(n+1), A065127(n+1)]`
-/

namespace A065036.P12379659301228797533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065036.P12379659301228797533

/-! ## A065036.P8090131652781791086

`∩[A048109(n+1), A067341(n+1)]`
-/

namespace A065036.P8090131652781791086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065036.P8090131652781791086

/-! ## A065036.P6597808491310518543

`∩[A048109(n+1), A067801(n+1)]`
-/

namespace A065036.P6597808491310518543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065036.P6597808491310518543

/-! ## A065036.P14082324080151880558

`record[A052410(A297401(n+1))]`
-/

namespace A065036.P14082324080151880558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A297401 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065036.P14082324080151880558

/-! ## A065036.P14390318430317866777

`filter[A065127(n+1), A359472(#)]`
-/

namespace A065036.P14390318430317866777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A065036.P14390318430317866777

/-! ## A065036.P616537627843191222

`filter[A067341(n+1), A359472(#)]`
-/

namespace A065036.P616537627843191222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A065036.P616537627843191222

/-! ## A065036.P3482779142421160106

`filter[A067801(n+1), A359472(#)]`
-/

namespace A065036.P3482779142421160106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A065036.P3482779142421160106

/-! ## A065036.P17673246866939733332

`filter[A297401(n+1), A355447(#)]`
-/

namespace A065036.P17673246866939733332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A065036.P17673246866939733332

/-! ## A065036.P7467566458104435178

`filter[A297401(n+1), A359472(#)]`
-/

namespace A065036.P7467566458104435178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A065036.P7467566458104435178

/-! ## A065036.P12051747715101733025

`filter[A297401(n+1), A359764(#)]`
-/

namespace A065036.P12051747715101733025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A065036.P12051747715101733025

/-! ## A065036.P8848192725701867812

`filter[A297401(n+1), A359787(#)]`
-/

namespace A065036.P8848192725701867812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359787 (f1 j).toNat = 1) n)

end

end A065036.P8848192725701867812

/-! ## A065036.P1707442365863273318

`filter[A307682(n+1), A359466(#)]`
-/

namespace A065036.P1707442365863273318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A065036.P1707442365863273318

/-! ## A065036.P5515741802537010861

`filter[A307682(n+1), A359472(#)]`
-/

namespace A065036.P5515741802537010861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A065036.P5515741802537010861

/-! ## A065036.P15666157839614824157

`filter[A307682(n+1), A359473(#)]`
-/

namespace A065036.P15666157839614824157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A065036.P15666157839614824157

/-! ## A065036.P8558105563626358484

`filter[A307682(n+1), A359764(#)]`
-/

namespace A065036.P8558105563626358484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A065036.P8558105563626358484

/-! ## A065036.P8889071698278644264

`filter[A307682(n+1), A359824(#)]`
-/

namespace A065036.P8889071698278644264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A065036.P8889071698278644264

/-! ## A065036.P12825954056915237612

`filter[A320891(n+1), A359472(#)]`
-/

namespace A065036.P12825954056915237612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A065036.P12825954056915237612

/-! ## A065036.P8216614731549381703

`filter[A320894(n+1), A359472(#)]`
-/

namespace A065036.P8216614731549381703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A065036.P8216614731549381703

/-! ## A065036.P1325424440239289790

`filter[A391922(n+1), A359472(#)]`
-/

namespace A065036.P1325424440239289790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A065036.P1325424440239289790

/-!
# A065037: Inverse permutation to A036552.

The programs for A065037, the canonical program `A065037.P9608909519015091916` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065037 has offset 1).

The definition of A065037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065037.P9608909519015091916

`n+1+Δ[A161680(A068639(n))]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065037

/-- `n+1+Δ[A161680(A068639(n))]` -/
def P9608909519015091916.Spec : Prop :=
  ∀ n, P9608909519015091916.a n = A065037 (n + 1)

theorem P9608909519015091916.correct : P9608909519015091916.Spec := by
  intro n
  simp only [A065037, Nat.add_sub_cancel]

end A065037

/-! ## A065037.P8485256595772442911

`Δ[A161680(A068639(n))+A000217(n)]`
-/

namespace A065037.P8485256595772442911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A068639 n).toNat + A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065037.P8485256595772442911

namespace A065037

/-- `Δ[A161680(A068639(n))+A000217(n)]` -/
def P8485256595772442911.Spec : Prop :=
  ∀ n, P8485256595772442911.a n = A065037 (n + 1)

end A065037

/-! ## A065037.P13719052958777311658

`Δ[A161680(A068639(n))+A000124(n)]`
-/

namespace A065037.P13719052958777311658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A068639 n).toNat + A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065037.P13719052958777311658

namespace A065037

/-- `Δ[A161680(A068639(n))+A000124(n)]` -/
def P13719052958777311658.Spec : Prop :=
  ∀ n, P13719052958777311658.a n = A065037 (n + 1)

end A065037

/-! ## A065037.P17913093191963944

`2*A121701(n+1)-A035263(n+1)`
-/

namespace A065037.P17913093191963944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121701 (n + 1) - A035263 (n + 1)

end

end A065037.P17913093191963944

namespace A065037

/-- `2*A121701(n+1)-A035263(n+1)` -/
def P17913093191963944.Spec : Prop :=
  ∀ n, P17913093191963944.a n = A065037 (n + 1)

end A065037

/-! ## A065037.P10401436421155320602

`A096268(n)+A004273(A121701(n+1))`
-/

namespace A065037.P10401436421155320602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 n + A004273 (A121701 (n + 1)).toNat

end

end A065037.P10401436421155320602

namespace A065037

/-- `A096268(n)+A004273(A121701(n+1))` -/
def P10401436421155320602.Spec : Prop :=
  ∀ n, P10401436421155320602.a n = A065037 (n + 1)

end A065037

/-! ## A065037.P6940658159063392841

`A005843(A121701(n+1))-A035263(n+1)`
-/

namespace A065037.P6940658159063392841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A121701 (n + 1)).toNat - A035263 (n + 1)

end

end A065037.P6940658159063392841

namespace A065037

/-- `A005843(A121701(n+1))-A035263(n+1)` -/
def P6940658159063392841.Spec : Prop :=
  ∀ n, P6940658159063392841.a n = A065037 (n + 1)

end A065037

/-!
# A065038: Values of Recamán's sequence A005132 at start of n-th segment (see A064492).

The programs for A065038, there is no canonical definition to state claims against.
-/

/-! ## A065038.P1947261876515353449

`A005132(A064492(n+1))`
-/

namespace A065038.P1947261876515353449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (A064492 (n + 1)).toNat

end

end A065038.P1947261876515353449

/-! ## A065038.P15831727018514881020

`A005132(∑[A065053(n+1)]+1-A065053(n+1))`
-/

namespace A065038.P15831727018514881020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A065053 (n + 1))).toNat

end

end A065038.P15831727018514881020

/-! ## A065038.P5171205332052343749

`A209386(∑[A065053(n+1)]+1-A065053(n+1))/2`
-/

namespace A065038.P5171205332052343749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065053 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209386 (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A065053 (n + 1))).toNat : ℚ) / 2

end

end A065038.P5171205332052343749

/-!
# A065039: If n in base 10 is d_1 d_2 ... d_k then a(n) = d_1 + d_1d_2 + d_1d_2d_3 + ... + d_1...d_k.

The programs for A065039, the canonical program `A065039.P4788194488470715228` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065039 has offset 0).

The definition of A065039 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065039.P4788194488470715228

`n+A054899(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065039

/-- `n+A054899(n)` -/
def P4788194488470715228.Spec : Prop :=
  ∀ n, P4788194488470715228.a n = A065039 n

theorem P4788194488470715228.correct : P4788194488470715228.Spec := by
  intro n
  simp only [A065039]

end A065039

/-! ## A065039.P4132574815248095920

`a(floor(n/10))+n` with `a(0)=0`
-/

namespace A065039.P4132574815248095920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 10⌋.toNat + n

end

end A065039.P4132574815248095920

namespace A065039

/-- `a(floor(n/10))+n` -/
def P4132574815248095920.Spec : Prop :=
  ∀ n, (P4132574815248095920.a n : ℤ) = A065039 n

end A065039

/-! ## A065039.P17236342709038967700

`(n-∑{digits}[n, #])/9+n`
-/

namespace A065039.P17236342709038967700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) : ℚ) / 9 + (n : ℚ)

end

end A065039.P17236342709038967700

namespace A065039

/-- `(n-∑{digits}[n, #])/9+n` -/
def P17236342709038967700.Spec : Prop :=
  ∀ n, P17236342709038967700.a n = (A065039 n : ℚ)

end A065039

/-! ## A065039.P16552186234621808602

`record[val(n, 10)-a(n-1)]` with `a(0)=0`
-/

namespace A065039.P16552186234621808602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (SequenceMachineLib.valuation n 10 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065039.P16552186234621808602

namespace A065039

/-- `record[val(n, 10)-a(n-1)]` -/
def P16552186234621808602.Spec : Prop :=
  ∀ n, P16552186234621808602.a n = A065039 n

end A065039

/-! ## A065039.P12726778393140414681

`val(n, 10)+a(n-1)+1` with `a(0)=0`
-/

namespace A065039.P12726778393140414681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.valuation n 10 + (a (n - 1) + 1)

end

end A065039.P12726778393140414681

namespace A065039

/-- `val(n, 10)+a(n-1)+1` -/
def P12726778393140414681.Spec : Prop :=
  ∀ n, (P12726778393140414681.a n : ℤ) = A065039 n

end A065039

/-! ## A065039.P7333099489834867814

`∑[val(n+1, 10)+1]-(val(n+1, 10)+1)`
-/

namespace A065039.P7333099489834867814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 10 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 10 + 1 : ℤ)

end

end A065039.P7333099489834867814

namespace A065039

/-- `∑[val(n+1, 10)+1]-(val(n+1, 10)+1)` -/
def P7333099489834867814.Spec : Prop :=
  ∀ n, P7333099489834867814.a n = A065039 n

end A065039

/-! ## A065039.P1389806624996950697

`comp[A065438(n+1)]`
-/

namespace A065039.P1389806624996950697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A065039.P1389806624996950697

namespace A065039

/-- `comp[A065438(n+1)]` -/
def P1389806624996950697.Spec : Prop :=
  ∀ n, (P1389806624996950697.a n : ℤ) = A065039 n

end A065039

/-! ## A065039.P5717655197761550073

`A160094(n)+a(n-1)` with `a(0)=0`
-/

namespace A065039.P5717655197761550073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A160094 n + a (n - 1)

end

end A065039.P5717655197761550073

namespace A065039

/-- `A160094(n)+a(n-1)` -/
def P5717655197761550073.Spec : Prop :=
  ∀ n, P5717655197761550073.a n = A065039 n

end A065039

/-! ## A065039.P6872864847272280449

`A054899(n)-A001489(n)`
-/

namespace A065039.P6872864847272280449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 n - A001489 n

end

end A065039.P6872864847272280449

namespace A065039

/-- `A054899(n)-A001489(n)` -/
def P6872864847272280449.Spec : Prop :=
  ∀ n, P6872864847272280449.a n = A065039 n

end A065039

/-! ## A065039.P1067851979302181292

`∑[A160094(n+1)]-A160094(n+1)`
-/

namespace A065039.P1067851979302181292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A160094 (n + 1)

end

end A065039.P1067851979302181292

namespace A065039

/-- `∑[A160094(n+1)]-A160094(n+1)` -/
def P1067851979302181292.Spec : Prop :=
  ∀ n, P1067851979302181292.a n = A065039 n

end A065039

/-! ## A065039.P3877719201688448356

`A054899(10*n)`
-/

namespace A065039.P3877719201688448356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (10 * n)

end

end A065039.P3877719201688448356

namespace A065039

/-- `A054899(10*n)` -/
def P3877719201688448356.Spec : Prop :=
  ∀ n, P3877719201688448356.a n = A065039 n

end A065039

/-! ## A065039.P9099635402392411017

`record[A054899(n-A054899(n))]`
-/

namespace A065039.P9099635402392411017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 ((n : ℤ) - A054899 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065039.P9099635402392411017

namespace A065039

/-- `record[A054899(n-A054899(n))]` -/
def P9099635402392411017.Spec : Prop :=
  ∀ n, P9099635402392411017.a n = A065039 n

end A065039

/-!
# A065040: Triangle read by rows: T(m,k) = exponent of the highest power of 2 dividing the binomial coefficient binomial(m,k).

The programs for A065040, the canonical program `A065040.P314453470668768770` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065040 has offset 0).

The definition of A065040 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065040.P314453470668768770

`A007814(A007318(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A065040

/-- `A007814(A007318(n))` -/
def P314453470668768770.Spec : Prop :=
  ∀ n, P314453470668768770.a n = A065040 n

theorem P314453470668768770.correct : P314453470668768770.Spec := by
  intro n
  simp only [A065040]

end A065040

/-! ## A065040.P12226319569275093039

`log2(A082907(n))`
-/

namespace A065040.P12226319569275093039
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A082907 n : ℝ)

end

end A065040.P12226319569275093039

namespace A065040

/-- `log2(A082907(n))` -/
def P12226319569275093039.Spec : Prop :=
  ∀ n, P12226319569275093039.a n = (A065040 n : ℝ)

end A065040

/-! ## A065040.P16127470017507724963

`val(A013610(n), 2)`
-/

namespace A065040.P16127470017507724963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A013610 n).toNat 2

end

end A065040.P16127470017507724963

namespace A065040

/-- `val(A013610(n), 2)` -/
def P16127470017507724963.Spec : Prop :=
  ∀ n, (P16127470017507724963.a n : ℤ) = A065040 n

end A065040

/-! ## A065040.P6994885850059815498

`val(A027465(n), 2)`
-/

namespace A065040.P6994885850059815498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A027465 n).toNat 2

end

end A065040.P6994885850059815498

namespace A065040

/-- `val(A027465(n), 2)` -/
def P6994885850059815498.Spec : Prop :=
  ∀ n, (P6994885850059815498.a n : ℤ) = A065040 n

end A065040

/-! ## A065040.P15430458350474616721

`val(A086645(n), 2)`
-/

namespace A065040.P15430458350474616721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A086645 n).toNat 2

end

end A065040.P15430458350474616721

namespace A065040

/-- `val(A086645(n), 2)` -/
def P15430458350474616721.Spec : Prop :=
  ∀ n, (P15430458350474616721.a n : ℤ) = A065040 n

end A065040

/-! ## A065040.P5347057071638290376

`val(A091042(n), 2)`
-/

namespace A065040.P5347057071638290376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A091042 n).toNat 2

end

end A065040.P5347057071638290376

namespace A065040

/-- `val(A091042(n), 2)` -/
def P5347057071638290376.Spec : Prop :=
  ∀ n, (P5347057071638290376.a n : ℤ) = A065040 n

end A065040

/-! ## A065040.P16664091085675491901

`val(A109001(n), 2)`
-/

namespace A065040.P16664091085675491901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A109001 n).toNat 2

end

end A065040.P16664091085675491901

namespace A065040

/-- `val(A109001(n), 2)` -/
def P16664091085675491901.Spec : Prop :=
  ∀ n, (P16664091085675491901.a n : ℤ) = A065040 n

end A065040

/-! ## A065040.P7141818905154469802

`val(A124928(n), 2)`
-/

namespace A065040.P7141818905154469802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A124928 n).toNat 2

end

end A065040.P7141818905154469802

namespace A065040

/-- `val(A124928(n), 2)` -/
def P7141818905154469802.Spec : Prop :=
  ∀ n, (P7141818905154469802.a n : ℤ) = A065040 n

end A065040

/-! ## A065040.P12963289005973264274

`val(A134059(n), 2)`
-/

namespace A065040.P12963289005973264274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A134059 n).toNat 2

end

end A065040.P12963289005973264274

namespace A065040

/-- `val(A134059(n), 2)` -/
def P12963289005973264274.Spec : Prop :=
  ∀ n, (P12963289005973264274.a n : ℤ) = A065040 n

end A065040

/-! ## A065040.P8274169543241628302

`val(A135089(n), 2)`
-/

namespace A065040.P8274169543241628302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A135089 n).toNat 2

end

end A065040.P8274169543241628302

namespace A065040

/-- `val(A135089(n), 2)` -/
def P8274169543241628302.Spec : Prop :=
  ∀ n, (P8274169543241628302.a n : ℤ) = A065040 n

end A065040

/-! ## A065040.P4903250006458108640

`val(A008459(n), 4)`
-/

namespace A065040.P4903250006458108640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008459 n).toNat 4

end

end A065040.P4903250006458108640

namespace A065040

/-- `val(A008459(n), 4)` -/
def P4903250006458108640.Spec : Prop :=
  ∀ n, (P4903250006458108640.a n : ℤ) = A065040 n

end A065040

/-! ## A065040.P11308938194941101681

`val(abs(A108086(n)), 2)`
-/

namespace A065040.P11308938194941101681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation |A108086 n|.toNat 2

end

end A065040.P11308938194941101681

namespace A065040

/-- `val(abs(A108086(n)), 2)` -/
def P11308938194941101681.Spec : Prop :=
  ∀ n, (P11308938194941101681.a n : ℤ) = A065040 n

end A065040

/-! ## A065040.P14193527936111028726

`val(abs(A130595(n)), 2)`
-/

namespace A065040.P14193527936111028726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation |A130595 n|.toNat 2

end

end A065040.P14193527936111028726

namespace A065040

/-- `val(abs(A130595(n)), 2)` -/
def P14193527936111028726.Spec : Prop :=
  ∀ n, (P14193527936111028726.a n : ℤ) = A065040 n

end A065040

/-! ## A065040.P12009514720713730816

`val(A014473(n)+1, 2)`
-/

namespace A065040.P12009514720713730816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A014473 n + 1).toNat 2

end

end A065040.P12009514720713730816

namespace A065040

/-- `val(A014473(n)+1, 2)` -/
def P12009514720713730816.Spec : Prop :=
  ∀ n, (P12009514720713730816.a n : ℤ) = A065040 n

end A065040

/-! ## A065040.P10160565389339470152

`val(A028326(n), 2)-1`
-/

namespace A065040.P10160565389339470152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A028326 n).toNat 2 : ℤ) - 1

end

end A065040.P10160565389339470152

namespace A065040

/-- `val(A028326(n), 2)-1` -/
def P10160565389339470152.Spec : Prop :=
  ∀ n, P10160565389339470152.a n = A065040 n

end A065040

/-! ## A065040.P13541647075166005807

`val(A131060(n)+2, 2)`
-/

namespace A065040.P13541647075166005807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A131060 n + 2).toNat 2

end

end A065040.P13541647075166005807

namespace A065040

/-- `val(A131060(n)+2, 2)` -/
def P13541647075166005807.Spec : Prop :=
  ∀ n, (P13541647075166005807.a n : ℤ) = A065040 n

end A065040

/-! ## A065040.P8329433497838886221

`val(A028263(n)-A014410(n+2), 2)`
-/

namespace A065040.P8329433497838886221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028263 n - A014410 (n + 2)).toNat 2

end

end A065040.P8329433497838886221

namespace A065040

/-- `val(A028263(n)-A014410(n+2), 2)` -/
def P8329433497838886221.Spec : Prop :=
  ∀ n, (P8329433497838886221.a n : ℤ) = A065040 n

end A065040

/-! ## A065040.P3761940314306463287

`val(C(A003056(n), A004736(n+1)-1), 2)`
-/

namespace A065040.P3761940314306463287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.choose (A003056 n).toNat (A004736 (n + 1) - 1).toNat) 2

end

end A065040.P3761940314306463287

namespace A065040

/-- `val(C(A003056(n), A004736(n+1)-1), 2)` -/
def P3761940314306463287.Spec : Prop :=
  ∀ n, (P3761940314306463287.a n : ℤ) = A065040 n

end A065040

/-! ## A065040.P9193069854381830501

`val(A108916(n), 2)`
-/

namespace A065040.P9193069854381830501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A108916 n).toNat 2

end

end A065040.P9193069854381830501

namespace A065040

/-- `val(A108916(n), 2)` -/
def P9193069854381830501.Spec : Prop :=
  ∀ n, (P9193069854381830501.a n : ℤ) = A065040 n

end A065040

/-! ## A065040.P17800049053611665859

`val(A013612(n), 2)`
-/

namespace A065040.P17800049053611665859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A013612 n).toNat 2

end

end A065040.P17800049053611665859

namespace A065040

/-- `val(A013612(n), 2)` -/
def P17800049053611665859.Spec : Prop :=
  ∀ n, (P17800049053611665859.a n : ℤ) = A065040 n

end A065040

/-!
# A065042: Numbers k such that prime(k) + pi(k) is a prime.

The programs for A065042, the canonical program `A065042.P935287165084398329` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065042 has offset 1).

The definition of A065042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 932 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065042.P935287165084398329

`eq[1, A001222(A230980(n)+A008578(n+1))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A065042

/-- `eq[1, A001222(A230980(n)+A008578(n+1))]` -/
def P935287165084398329.Spec : Prop :=
  ∀ n, (P935287165084398329.a n : ℤ) = A065042 (n + 1)

theorem P935287165084398329.correct : P935287165084398329.Spec := by
  intro n
  simp only [A065042, Nat.add_sub_cancel]

end A065042

/-! ## A065042.P10252007064655809206

`eq[2, A000005(A230980(n)+A008578(n+1))]`
-/

namespace A065042.P10252007064655809206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A230980 n + A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065042.P10252007064655809206

namespace A065042

/-- `eq[2, A000005(A230980(n)+A008578(n+1))]` -/
def P10252007064655809206.Spec : Prop :=
  ∀ n, (P10252007064655809206.a n : ℤ) = A065042 (n + 1)

end A065042

/-! ## A065042.P15101379935925409167

`eq[1, A001222(A000720(n+1)+A000040(n+1))]+1`
-/

namespace A065042.P15101379935925409167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000720 (n + 1) + A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065042.P15101379935925409167

namespace A065042

/-- `eq[1, A001222(A000720(n+1)+A000040(n+1))]+1` -/
def P15101379935925409167.Spec : Prop :=
  ∀ n, (P15101379935925409167.a n : ℤ) = A065042 (n + 1)

end A065042

/-! ## A065042.P13392801621849416808

`eq[2, A000005(A000720(n+1)+A000040(n+1))]+1`
-/

namespace A065042.P13392801621849416808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000720 (n + 1) + A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065042.P13392801621849416808

namespace A065042

/-- `eq[2, A000005(A000720(n+1)+A000040(n+1))]+1` -/
def P13392801621849416808.Spec : Prop :=
  ∀ n, (P13392801621849416808.a n : ℤ) = A065042 (n + 1)

end A065042

/-! ## A065042.P1682934167739399236

`record[(n+1)%A014963(A100486(n+1))]`
-/

namespace A065042.P1682934167739399236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A014963 (A100486 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065042.P1682934167739399236

namespace A065042

/-- `record[(n+1)%A014963(A100486(n+1))]` -/
def P1682934167739399236.Spec : Prop :=
  ∀ n, P1682934167739399236.a n = A065042 (n + 1)

end A065042

/-!
# A065043: Characteristic function of the numbers with an even number of prime factors (counted with multiplicity): a(n) = 1 if n = A028260(k) for some k then 1 else 0.

The programs for A065043, the canonical program `A065043.P15027714353296076488` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065043 has offset 1).

The definition of A065043 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007421, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065043.P15027714353296076488

`A007421(n+1)-1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065043

/-- `A007421(n+1)-1` -/
def P15027714353296076488.Spec : Prop :=
  ∀ n, P15027714353296076488.a n = A065043 (n + 1)

theorem P15027714353296076488.correct : P15027714353296076488.Spec := by
  intro n
  simp only [A065043, Nat.add_sub_cancel]

end A065043

/-! ## A065043.P1022440002223316227

`1-A066829(n+1)`
-/

namespace A065043.P1022440002223316227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A066829 (n + 1)

end

end A065043.P1022440002223316227

namespace A065043

/-- `1-A066829(n+1)` -/
def P1022440002223316227.Spec : Prop :=
  ∀ n, P1022440002223316227.a n = A065043 (n + 1)

end A065043

/-! ## A065043.P11420860461927860115

`(A008836(n+1)+1)/2`
-/

namespace A065043.P11420860461927860115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008836 (n + 1) + 1 : ℚ) / 2

end

end A065043.P11420860461927860115

namespace A065043

/-- `(A008836(n+1)+1)/2` -/
def P11420860461927860115.Spec : Prop :=
  ∀ n, P11420860461927860115.a n = (A065043 (n + 1) : ℚ)

end A065043

/-! ## A065043.P4052085054899876799

`A010052(n+1)+A353669(n+1)`
-/

namespace A065043.P4052085054899876799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 1) + A353669 (n + 1)

end

end A065043.P4052085054899876799

namespace A065043

/-- `A010052(n+1)+A353669(n+1)` -/
def P4052085054899876799.Spec : Prop :=
  ∀ n, P4052085054899876799.a n = A065043 (n + 1)

end A065043

/-! ## A065043.P4235300799370915467

`A353555(n+1)+A353557(n+1)`
-/

namespace A065043.P4235300799370915467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353555 (n + 1) + A353557 (n + 1)

end

end A065043.P4235300799370915467

namespace A065043

/-- `A353555(n+1)+A353557(n+1)` -/
def P4235300799370915467.Spec : Prop :=
  ∀ n, P4235300799370915467.a n = A065043 (n + 1)

end A065043

/-! ## A065043.P14194401007423005389

`A353374(n+1)+A358775(n+1)`
-/

namespace A065043.P14194401007423005389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353374 (n + 1) + A358775 (n + 1)

end

end A065043.P14194401007423005389

namespace A065043

/-- `A353374(n+1)+A358775(n+1)` -/
def P14194401007423005389.Spec : Prop :=
  ∀ n, P14194401007423005389.a n = A065043 (n + 1)

end A065043

/-! ## A065043.P4384255585642996150

`A358750(n+1)+A358752(n+1)`
-/

namespace A065043.P4384255585642996150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358750 (n + 1) + A358752 (n + 1)

end

end A065043.P4384255585642996150

namespace A065043

/-- `A358750(n+1)+A358752(n+1)` -/
def P4384255585642996150.Spec : Prop :=
  ∀ n, P4384255585642996150.a n = A065043 (n + 1)

end A065043

/-! ## A065043.P18298074322552414777

`A000035(A356163(n+1)+A347102(n+1))`
-/

namespace A065043.P18298074322552414777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A356163 (n + 1) + A347102 (n + 1)).toNat

end

end A065043.P18298074322552414777

namespace A065043

/-- `A000035(A356163(n+1)+A347102(n+1))` -/
def P18298074322552414777.Spec : Prop :=
  ∀ n, P18298074322552414777.a n = A065043 (n + 1)

end A065043

/-! ## A065043.P8062925419156539482

`A356163(A003961(n+1))`
-/

namespace A065043.P8062925419156539482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356163 (A003961 (n + 1)).toNat

end

end A065043.P8062925419156539482

namespace A065043

/-- `A356163(A003961(n+1))` -/
def P8062925419156539482.Spec : Prop :=
  ∀ n, P8062925419156539482.a n = A065043 (n + 1)

end A065043

/-! ## A065043.P13494570110091300501

`log2(gcd(2, ∑{e}[n+1, #]))`
-/

namespace A065043.P13494570110091300501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℝ)

end

end A065043.P13494570110091300501

namespace A065043

/-- `log2(gcd(2, ∑{e}[n+1, #]))` -/
def P13494570110091300501.Spec : Prop :=
  ∀ n, P13494570110091300501.a n = (A065043 (n + 1) : ℝ)

end A065043

/-! ## A065043.P11856999336593752717

`(∑{e}[n+1, #]+1)%2`
-/

namespace A065043.P11856999336593752717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1) % 2

end

end A065043.P11856999336593752717

namespace A065043

/-- `(∑{e}[n+1, #]+1)%2` -/
def P11856999336593752717.Spec : Prop :=
  ∀ n, (P11856999336593752717.a n : ℤ) = A065043 (n + 1)

end A065043

/-! ## A065043.P76036781256967074

`and(1, ∑{e}[n+1, #]+1)`
-/

namespace A065043.P76036781256967074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1)

end

end A065043.P76036781256967074

namespace A065043

/-- `and(1, ∑{e}[n+1, #]+1)` -/
def P76036781256967074.Spec : Prop :=
  ∀ n, (P76036781256967074.a n : ℤ) = A065043 (n + 1)

end A065043

/-! ## A065043.P2128161758472809328

`val(∑{e}[n+1, #]²+2, 2)`
-/

namespace A065043.P2128161758472809328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) ^ 2 + 2) 2

end

end A065043.P2128161758472809328

namespace A065043

/-- `val(∑{e}[n+1, #]²+2, 2)` -/
def P2128161758472809328.Spec : Prop :=
  ∀ n, (P2128161758472809328.a n : ℤ) = A065043 (n + 1)

end A065043

/-! ## A065043.P8635465186521574999

`ceil((1-ϕ)^∑{e}[n+1, #])`
-/

namespace A065043.P8635465186521574999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 - Real.goldenRatio) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)⌉

end

end A065043.P8635465186521574999

namespace A065043

/-- `ceil((1-ϕ)^∑{e}[n+1, #])` -/
def P8635465186521574999.Spec : Prop :=
  ∀ n, P8635465186521574999.a n = A065043 (n + 1)

end A065043

/-! ## A065043.P15755992669350903656

`ceil(∏{e}[n+1, (1-ϕ)^#])`
-/

namespace A065043.P15755992669350903656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ p ∈ Nat.primeFactors (f1 n), (1 - Real.goldenRatio) ^ Nat.factorization (f1 n) p⌉

end

end A065043.P15755992669350903656

namespace A065043

/-- `ceil(∏{e}[n+1, (1-ϕ)^#])` -/
def P15755992669350903656.Spec : Prop :=
  ∀ n, P15755992669350903656.a n = A065043 (n + 1)

end A065043

/-! ## A065043.P16384027632598263358

`ceil((-2)^-∑{e}[n+1, #])`
-/

namespace A065043.P16384027632598263358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(-2 : ℚ) ^ (-((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) : ℤ)⌉

end

end A065043.P16384027632598263358

namespace A065043

/-- `ceil((-2)^-∑{e}[n+1, #])` -/
def P16384027632598263358.Spec : Prop :=
  ∀ n, P16384027632598263358.a n = A065043 (n + 1)

end A065043

/-! ## A065043.P15278133506993535681

`log2(A007421(n+1))`
-/

namespace A065043.P15278133506993535681
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A007421 (n + 1) : ℝ)

end

end A065043.P15278133506993535681

namespace A065043

/-- `log2(A007421(n+1))` -/
def P15278133506993535681.Spec : Prop :=
  ∀ n, P15278133506993535681.a n = (A065043 (n + 1) : ℝ)

end A065043

/-! ## A065043.P6978935839693125469

`A066829(2*(n+1))`
-/

namespace A065043.P6978935839693125469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (2 * (n + 1))

end

end A065043.P6978935839693125469

namespace A065043

/-- `A066829(2*(n+1))` -/
def P6978935839693125469.Spec : Prop :=
  ∀ n, P6978935839693125469.a n = A065043 (n + 1)

end A065043

/-! ## A065043.P12723158692352259533

`A353556(2*(n+1))`
-/

namespace A065043.P12723158692352259533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353556 (2 * (n + 1))

end

end A065043.P12723158692352259533

namespace A065043

/-- `A353556(2*(n+1))` -/
def P12723158692352259533.Spec : Prop :=
  ∀ n, P12723158692352259533.a n = A065043 (n + 1)

end A065043

/-! ## A065043.P4682377234575520191

`A359770(2*(n+1))`
-/

namespace A065043.P4682377234575520191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359770 (2 * (n + 1))

end

end A065043.P4682377234575520191

namespace A065043

/-- `A359770(2*(n+1))` -/
def P4682377234575520191.Spec : Prop :=
  ∀ n, P4682377234575520191.a n = A065043 (n + 1)

end A065043

/-!
# A065044: Start of the first run of exactly n consecutive primes, none of which are twin primes.

The programs for A065044, there is no canonical definition to state claims against.
-/

/-! ## A065044.P4070836510329637851

`A357852(A089637(n+1))%A240936(n+3)`
-/

namespace A065044.P4070836510329637851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357852 (A089637 (n + 1)).toNat) (A240936 (n + 3))

end

end A065044.P4070836510329637851

/-! ## A065044.P13521661920038264103

`A101300(A089637(n+1))%A120876(2*n+1)`
-/

namespace A065044.P13521661920038264103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101300 (A089637 (n + 1)).toNat) (A120876 (2 * n + 1))

end

end A065044.P13521661920038264103

/-!
# A065046: Numbers k such that prime(k) - pi(k) is a prime.

The programs for A065046, the canonical program `A065046.P11094620281102224198` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065046 has offset 1).

The definition of A065046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 934 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065046.P1166762993148106916

`eq[1, A001222(A111181(n+1))]+1`
-/

namespace A065046.P1166762993148106916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A111181 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065046.P1166762993148106916

namespace A065046

/-- `eq[1, A001222(A111181(n+1))]+1` -/
def P1166762993148106916.Spec : Prop :=
  ∀ n, (P1166762993148106916.a n : ℤ) = A065046 (n + 1)

end A065046

/-! ## A065046.P11094620281102224198

`eq[1, A001222(A008578(n+1)-A230980(n))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A065046

/-- `eq[1, A001222(A008578(n+1)-A230980(n))]` -/
def P11094620281102224198.Spec : Prop :=
  ∀ n, (P11094620281102224198.a n : ℤ) = A065046 (n + 1)

theorem P11094620281102224198.correct : P11094620281102224198.Spec := by
  intro n
  simp only [A065046, Nat.add_sub_cancel]

end A065046

/-! ## A065046.P682369932324986067

`eq[2, A000005(A008578(n+1)-A230980(n))]`
-/

namespace A065046.P682369932324986067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 1) - A230980 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065046.P682369932324986067

namespace A065046

/-- `eq[2, A000005(A008578(n+1)-A230980(n))]` -/
def P682369932324986067.Spec : Prop :=
  ∀ n, (P682369932324986067.a n : ℤ) = A065046 (n + 1)

end A065046

/-! ## A065046.P15968278131519640085

`lt[A000040(n+1)%A001222(A111181(n+1)), 1]+1`
-/

namespace A065046.P15968278131519640085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A001222 (A111181 (n + 1)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A065046.P15968278131519640085

namespace A065046

/-- `lt[A000040(n+1)%A001222(A111181(n+1)), 1]+1` -/
def P15968278131519640085.Spec : Prop :=
  ∀ n, (P15968278131519640085.a n : ℤ) = A065046 (n + 1)

end A065046

/-! ## A065046.P10634928007444056918

`lt[A053176(n+1)%A001222(A111181(n+1)), 1]+1`
-/

namespace A065046.P10634928007444056918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053176 (n + 1)) (A001222 (A111181 (n + 1)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A065046.P10634928007444056918

namespace A065046

/-- `lt[A053176(n+1)%A001222(A111181(n+1)), 1]+1` -/
def P10634928007444056918.Spec : Prop :=
  ∀ n, (P10634928007444056918.a n : ℤ) = A065046 (n + 1)

end A065046

/-!
# A065047: Primes which when written in base 2 and prepended with a 1 produce a prime.

The programs for A065047, the canonical program `A065047.P8604201146811212039` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065047 has offset 1).

The definition of A065047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 461 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065047.P8604201146811212039

`p?[A300725(A080166(n+1))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A065047

/-- `p?[A300725(A080166(n+1))]` -/
def P8604201146811212039.Spec : Prop :=
  ∀ n, P8604201146811212039.a n = A065047 (n + 1)

theorem P8604201146811212039.correct : P8604201146811212039.Spec := by
  intro n
  simp only [A065047, Nat.add_sub_cancel]

end A065047

/-! ## A065047.P7230708958971713357

`p?[A300725(A182624(n+1))]`
-/

namespace A065047.P7230708958971713357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300725 (A182624 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065047.P7230708958971713357

namespace A065047

/-- `p?[A300725(A182624(n+1))]` -/
def P7230708958971713357.Spec : Prop :=
  ∀ n, P7230708958971713357.a n = A065047 (n + 1)

end A065047

/-! ## A065047.P14047087216856881451

`p?[A065266(p?[2*n+1])]`
-/

namespace A065047.P14047087216856881451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065266 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065047.P14047087216856881451

namespace A065047

/-- `p?[A065266(p?[2*n+1])]` -/
def P14047087216856881451.Spec : Prop :=
  ∀ n, P14047087216856881451.a n = A065047 (n + 1)

end A065047

/-! ## A065047.P9606075313510908407

`p?[A065290(p?[2*n+1])]`
-/

namespace A065047.P9606075313510908407
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065290 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065047.P9606075313510908407

namespace A065047

/-- `p?[A065290(p?[2*n+1])]` -/
def P9606075313510908407.Spec : Prop :=
  ∀ n, P9606075313510908407.a n = A065047 (n + 1)

end A065047

/-! ## A065047.P12577574237379771009

`p?[A053645(A080166(n+2))]`
-/

namespace A065047.P12577574237379771009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A080166 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065047.P12577574237379771009

namespace A065047

/-- `p?[A053645(A080166(n+2))]` -/
def P12577574237379771009.Spec : Prop :=
  ∀ n, P12577574237379771009.a n = A065047 (n + 1)

end A065047

/-! ## A065047.P4390707958524236594

`p?[A053645(p?[A004755(n+1)])]`
-/

namespace A065047.P4390707958524236594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065047.P4390707958524236594

namespace A065047

/-- `p?[A053645(p?[A004755(n+1)])]` -/
def P4390707958524236594.Spec : Prop :=
  ∀ n, P4390707958524236594.a n = A065047 (n + 1)

end A065047

/-! ## A065047.P18066757202619623869

`p?[n-A003415(A004760(n+1))²]`
-/

namespace A065047.P18066757202619623869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A003415 (A004760 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065047.P18066757202619623869

namespace A065047

/-- `p?[n-A003415(A004760(n+1))²]` -/
def P18066757202619623869.Spec : Prop :=
  ∀ n, P18066757202619623869.a n = A065047 (n + 1)

end A065047

/-! ## A065047.P16947208257121000471

`p?[A097362(A139708(A006093(n+1)))]`
-/

namespace A065047.P16947208257121000471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097362 (A139708 (A006093 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065047.P16947208257121000471

namespace A065047

/-- `p?[A097362(A139708(A006093(n+1)))]` -/
def P16947208257121000471.Spec : Prop :=
  ∀ n, P16947208257121000471.a n = A065047 (n + 1)

end A065047

/-! ## A065047.P17752091799886573285

`p?[A215848(n+2)-A006165(A215848(n+2))]`
-/

namespace A065047.P17752091799886573285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 2) - A006165 (A215848 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065047.P17752091799886573285

namespace A065047

/-- `p?[A215848(n+2)-A006165(A215848(n+2))]` -/
def P17752091799886573285.Spec : Prop :=
  ∀ n, P17752091799886573285.a n = A065047 (n + 1)

end A065047

/-!
# A065048: Largest unsigned Stirling number of the first kind: max_k(s(n+1,k)); i.e., largest coefficient of polynomial x*(x+1)*(x+2)*(x+3)*...*(x+n).

The programs for A065048, there is no canonical definition to state claims against.
-/

/-! ## A065048.P6949898756892562229

`A372973(A085269(3*n+2)+∑[char[1]+n]+1)`
-/

namespace A065048.P6949898756892562229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372973 (A085269 (3 * n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)).toNat

end

end A065048.P6949898756892562229

/-! ## A065048.P8327770375948877381

`A132393(∩[A152125(n+1), A152125(n+3)])`
-/

namespace A065048.P8327770375948877381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152125 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A065048.P8327770375948877381

/-! ## A065048.P85777027203799223

`or(A000254(n), A087808(A356099(n)))`
-/

namespace A065048.P85777027203799223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000254 n) (A087808 (A356099 n).toNat)

end

end A065048.P85777027203799223

/-! ## A065048.P11074799618835656435

`or(A000254(n), A331509(A112986(n+4)))`
-/

namespace A065048.P11074799618835656435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000254 n) (A331509 (A112986 (n + 4)).toNat)

end

end A065048.P11074799618835656435

/-!
# A065049: Odd primes of incorrect parity: number of 1's in the binary representation of n (mod 2) == 1 - (n mod 3) (mod 2). Also called isolated primes.

The programs for A065049, the canonical program `A065049.P15235296619337629108` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065049 has offset 1).

The definition of A065049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1322 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065049.P15235296619337629108

`p?[A026498(n)²*A007310(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A065049

/-- `p?[A026498(n)²*A007310(n+1)]` -/
def P15235296619337629108.Spec : Prop :=
  ∀ n, P15235296619337629108.a n = A065049 (n + 1)

theorem P15235296619337629108.correct : P15235296619337629108.Spec := by
  intro n
  simp only [A065049, Nat.add_sub_cancel]

end A065049

/-! ## A065049.P11876618177964871373

`p?[A007310(n+2)*A026498(n+1)]`
-/

namespace A065049.P11876618177964871373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 2) * A026498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065049.P11876618177964871373

namespace A065049

/-- `p?[A007310(n+2)*A026498(n+1)]` -/
def P11876618177964871373.Spec : Prop :=
  ∀ n, P11876618177964871373.a n = A065049 (n + 1)

end A065049

/-! ## A065049.P7951633733350636117

`p?[A001969(n+1)+n²%3]`
-/

namespace A065049.P7951633733350636117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1) + ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065049.P7951633733350636117

namespace A065049

/-- `p?[A001969(n+1)+n²%3]` -/
def P7951633733350636117.Spec : Prop :=
  ∀ n, P7951633733350636117.a n = A065049 (n + 1)

end A065049

/-! ## A065049.P1965061594057693440

`p?[A001969(n+1)+and(1, A005590(n))]`
-/

namespace A065049.P1965061594057693440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1) + Int.land 1 (A005590 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065049.P1965061594057693440

namespace A065049

/-- `p?[A001969(n+1)+and(1, A005590(n))]` -/
def P1965061594057693440.Spec : Prop :=
  ∀ n, P1965061594057693440.a n = A065049 (n + 1)

end A065049

/-! ## A065049.P7529533140718086217

`p?[A143579(3*n+1)]`
-/

namespace A065049.P7529533140718086217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143579 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065049.P7529533140718086217

namespace A065049

/-- `p?[A143579(3*n+1)]` -/
def P7529533140718086217.Spec : Prop :=
  ∀ n, P7529533140718086217.a n = A065049 (n + 1)

end A065049

/-! ## A065049.P10083440364026211946

`p?[-A285779(3*n)]`
-/

namespace A065049.P10083440364026211946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A285779 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065049.P10083440364026211946

namespace A065049

/-- `p?[-A285779(3*n)]` -/
def P10083440364026211946.Spec : Prop :=
  ∀ n, P10083440364026211946.a n = A065049 (n + 1)

end A065049

/-! ## A065049.P16285416350634673904

`p?[A014707(A219529(n))+A001969(n+1)]`
-/

namespace A065049.P16285416350634673904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A219529 n).toNat + A001969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065049.P16285416350634673904

namespace A065049

/-- `p?[A014707(A219529(n))+A001969(n+1)]` -/
def P16285416350634673904.Spec : Prop :=
  ∀ n, P16285416350634673904.a n = A065049 (n + 1)

end A065049

/-! ## A065049.P11255398749898791680

`∩[A065079(n+1), A165741(n+1)]`
-/

namespace A065049.P11255398749898791680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065049.P11255398749898791680

namespace A065049

/-- `∩[A065079(n+1), A165741(n+1)]` -/
def P11255398749898791680.Spec : Prop :=
  ∀ n, (P11255398749898791680.a n : ℤ) = A065049 (n + 1)

end A065049

/-!
# A065050: Prime numbers in the triangle of Eulerian numbers.

The programs for A065050, there is no canonical definition to state claims against.
-/

/-! ## A065050.P1150364536595205221

`p?[A030196(n+1)]`
-/

namespace A065050.P1150364536595205221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065050.P1150364536595205221

/-! ## A065050.P12113059508955407278

`p?[record[A030196(A012257(n))]]`
-/

namespace A065050.P12113059508955407278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030196 (A012257 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065050.P12113059508955407278

/-!
# A065051: Let R(n) = n-th term of Recamán's sequence A005132; write R(n) = q*n + r with 0 <= r < n; sequence gives values of q.

The programs for A065051, there is no canonical definition to state claims against.
-/

/-! ## A065051.P14098253036879061939

`floor(Δ[A065056(n)]/(n+1))`
-/

namespace A065051.P14098253036879061939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)⌋

end

end A065051.P14098253036879061939

/-! ## A065051.P13459589208816772680

`floor(A005132(n+1)/(n+1))`
-/

namespace A065051.P13459589208816772680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005132 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A065051.P13459589208816772680

/-! ## A065051.P9194449582833402469

`floor(∑[A160356(n+1)]/(n+1))`
-/

namespace A065051.P9194449582833402469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A065051.P9194449582833402469

/-! ## A065051.P6291248378066881150

`floor(A209386(n+1)/(2*(n+1)))`
-/

namespace A065051.P6291248378066881150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A209386 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)⌋

end

end A065051.P6291248378066881150

/-! ## A065051.P13545116090957014207

`floor(A209387(n+1)/A005843(n+1))`
-/

namespace A065051.P13545116090957014207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A209387 (n + 1) : ℚ) / (A005843 (n + 1) : ℚ)⌋

end

end A065051.P13545116090957014207

/-! ## A065051.P12899544497438992418

`floor(A066201(∑[n+3])/(n+1))`
-/

namespace A065051.P12899544497438992418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066201 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)⌋

end

end A065051.P12899544497438992418

/-!
# A065052: Let R(n) = n-th term of Recamán's sequence A005132; write R(n) = q*n + r with 0 <= r < n; sequence gives values of r.

The programs for A065052, there is no canonical definition to state claims against.
-/

/-! ## A065052.P17517483600682974106

`A005132(n)%(n+1)`
-/

namespace A065052.P17517483600682974106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005132 n) (n + 1 : ℤ)

end

end A065052.P17517483600682974106

/-! ## A065052.P9524784954156198049

`Δ[A065056(n)]%(n+1)`
-/

namespace A065052.P9524784954156198049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A065052.P9524784954156198049

/-! ## A065052.P15803540467150541612

`(A209386(n)/2)%(n+1)`
-/

namespace A065052.P15803540467150541612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A209386 n : ℚ) / 2)) (n + 1 : ℤ)

end

end A065052.P15803540467150541612

/-! ## A065052.P9492529950026008048

`floor(A209387(n)/2)%(n+1)`
-/

namespace A065052.P9492529950026008048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A209387 n : ℚ) / 2⌋ (n + 1 : ℤ)

end

end A065052.P9492529950026008048

/-! ## A065052.P16491752722806525146

`∑[A160356(n+1)]%(n+1)`
-/

namespace A065052.P16491752722806525146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A065052.P16491752722806525146

/-! ## A065052.P5264694001851131738

`∑[n*A160357(n)]%(n+1)`
-/

namespace A065052.P5264694001851131738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A160357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A065052.P5264694001851131738

/-! ## A065052.P4109489980766241818

`(A063733(n+1)-1)%(n+1)`
-/

namespace A065052.P4109489980766241818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063733 (n + 1) - 1) (n + 1 : ℤ)

end

end A065052.P4109489980766241818

/-! ## A065052.P6580909006986194337

`abs(∑[-Δ[A063733(n)]]%(n+1))`
-/

namespace A065052.P6580909006986194337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)|

end

end A065052.P6580909006986194337

/-! ## A065052.P7879112858087301036

`A382128(2*n+1)%(n+1)`
-/

namespace A065052.P7879112858087301036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382128 (2 * n + 1)) (n + 1 : ℤ)

end

end A065052.P7879112858087301036

/-! ## A065052.P1626845983601087780

`A066201(A027379(n))%(n+1)`
-/

namespace A065052.P1626845983601087780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066201 (A027379 n).toNat) (n + 1 : ℤ)

end

end A065052.P1626845983601087780

/-!
# A065053: Lengths of intervals between special points in Recamán's sequence A005132.

The programs for A065053, there is no canonical definition to state claims against.
-/

/-! ## A065053.P18383601767404846114

`Δ[A064492(n+1)]`
-/

namespace A065053.P18383601767404846114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065053.P18383601767404846114

/-! ## A065053.P11349535263287855068

`abs(Δ[A064492(ϕ²-(ϕ-n))])`
-/

namespace A065053.P11349535263287855068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064492 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A065053.P11349535263287855068

/-! ## A065053.P14623987770728458668

`Δ[record[A064492(A028920(n))]]`
-/

namespace A065053.P14623987770728458668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064492 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065053.P14623987770728458668

/-! ## A065053.P5866487783045722166

`record[Δ[A064492(A080513(n))]]`
-/

namespace A065053.P5866487783045722166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064492 (A080513 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065053.P5866487783045722166

/-! ## A065053.P17044465784433343219

`record[Δ[A064492(A266977(n))]]`
-/

namespace A065053.P17044465784433343219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064492 (A266977 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065053.P17044465784433343219

/-! ## A065053.P15326265167685381740

`A064492(n+2)-A064492(n+1)`
-/

namespace A065053.P15326265167685381740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064492 (n + 2) - A064492 (n + 1)

end

end A065053.P15326265167685381740

/-!
# A065054: Value of remainder r (see A065052) at start of n-th interval between special points in Recamán's sequence A005132.

The programs for A065054, there is no canonical definition to state claims against.
-/

/-! ## A065054.P13592437833085887706

`A065038(n+1)%A064492(n+1)`
-/

namespace A065054.P13592437833085887706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065038 (n + 1)) (A064492 (n + 1))

end

end A065054.P13592437833085887706

/-! ## A065054.P9912749444237026953

`A065038(A028310(n+1))%∑[A065053(A028310(n))]`
-/

namespace A065054.P9912749444237026953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065053 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065038 (A028310 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065054.P9912749444237026953

/-! ## A065054.P16679101108749831093

`A065038(A008619(2*n))%∑[A065053(A028310(n))]`
-/

namespace A065054.P16679101108749831093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065053 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065038 (A008619 (2 * n)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065054.P16679101108749831093

/-! ## A065054.P12645989855591623837

`A065038(A080513(2*n))%∑[A065053(A028310(n))]`
-/

namespace A065054.P12645989855591623837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065053 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065038 (A080513 (2 * n)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065054.P12645989855591623837

/-! ## A065054.P15861005271356099255

`record[A005132(n)%(n+1)]`
-/

namespace A065054.P15861005271356099255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005132 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065054.P15861005271356099255

/-!
# A065055: Number of subtraction steps in n-th interval between special points in Recamán's sequence A005132.

The programs for A065055, there is no canonical definition to state claims against.
-/

/-! ## A065055.P15725022115756998689

`A002024(A148574(n))-A112739(n)`
-/

namespace A065055.P15725022115756998689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A148574 n).toNat - A112739 n

end

end A065055.P15725022115756998689

/-! ## A065055.P7706329450607371766

`A002024(A148574(n))-A193592(n)`
-/

namespace A065055.P7706329450607371766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A148574 n).toNat - A193592 n

end

end A065055.P7706329450607371766

/-! ## A065055.P11342961760754415521

`A209315(A309105(n+1))`
-/

namespace A065055.P11342961760754415521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209315 (A309105 (n + 1)).toNat

end

end A065055.P11342961760754415521

/-! ## A065055.P5698875841667665340

`round(A216366(A061419(n+1))/7)`
-/

namespace A065055.P5698875841667665340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A216366 (A061419 (n + 1)).toNat : ℚ) / 7)

end

end A065055.P5698875841667665340

/-! ## A065055.P7755785873975568982

`A001405(n)-A208234(A208223(n))`
-/

namespace A065055.P7755785873975568982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A208234 (A208223 n).toNat

end

end A065055.P7755785873975568982

/-!
# A065056: Partial sums of Recamán's sequence A005132.

The programs for A065056, there is no canonical definition to state claims against.
-/

/-! ## A065056.P5275665210603830801

`∑[A005132(n)]`
-/

namespace A065056.P5275665210603830801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065056.P5275665210603830801

/-! ## A065056.P14099059014085860643

`∑[A209386(n)/2]`
-/

namespace A065056.P14099059014085860643
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209386 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065056.P14099059014085860643

/-! ## A065056.P16881651707415422795

`∑[floor(A209387(n)/2)]`
-/

namespace A065056.P16881651707415422795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A209387 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065056.P16881651707415422795

/-! ## A065056.P6287839525284750154

`∑[∑[n*A160357(n)]]`
-/

namespace A065056.P6287839525284750154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A160357 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065056.P6287839525284750154

/-! ## A065056.P16240538349625846551

`∑[A063733(n+1)-1]`
-/

namespace A065056.P16240538349625846551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065056.P16240538349625846551

/-! ## A065056.P16975143860881333303

`∑[A334951(n+1)+n+1]`
-/

namespace A065056.P16975143860881333303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334951 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065056.P16975143860881333303

/-! ## A065056.P415205222167015003

`∑[∑[2*Δ[A063733(n)]]]/2`
-/

namespace A065056.P415205222167015003
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A065056.P415205222167015003

/-! ## A065056.P2046361407774698767

`∑[∑[A160356(n+1)]-A160356(n+1)]`
-/

namespace A065056.P2046361407774698767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160356 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A160356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065056.P2046361407774698767

/-! ## A065056.P7015253213077343852

`∑[A382128(2*n+1)]`
-/

namespace A065056.P7015253213077343852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382128 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065056.P7015253213077343852

/-! ## A065056.P4249681525503543049

`∑[A001281(A209386(n))]`
-/

namespace A065056.P4249681525503543049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A209386 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065056.P4249681525503543049

/-! ## A065056.P2318133908108550124

`∑[A004524(A209387(n))]`
-/

namespace A065056.P2318133908108550124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A209387 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065056.P2318133908108550124

/-!
# A065057: Partial sums of A064413.

The programs for A065057, there is no canonical definition to state claims against.
-/

/-! ## A065057.P8382059671316316419

`A064413(n)+a(n-1)` with `a(0)=0`
-/

namespace A065057.P8382059671316316419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A064413 n + a (n - 1)

end

end A065057.P8382059671316316419

/-! ## A065057.P14270128653604593800

`a(n-1)+sqrt(A104125(n))` with `a(0)=0`
-/

namespace A065057.P14270128653604593800
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Real.sqrt (A104125 n : ℝ)

end

end A065057.P14270128653604593800

/-! ## A065057.P6792025616344816586

`∑[A064413(abs(1-n)+1)]-2`
-/

namespace A065057.P6792025616344816586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A065057.P6792025616344816586

/-! ## A065057.P1664533212595200742

`a(n-1)+A065519(n)+n` with `a(0)=0`
-/

namespace A065057.P1664533212595200742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A065519 n + (n : ℤ))

end

end A065057.P1664533212595200742

/-! ## A065057.P9890043775060040006

`∑[A065519(n+1)+n]-A065519(n+1)`
-/

namespace A065057.P9890043775060040006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065519 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A065519 (n + 1)

end

end A065057.P9890043775060040006

/-! ## A065057.P7047862888851759594

`∑[A000040(n+1)%2*A064413(A028310(n))]`
-/

namespace A065057.P7047862888851759594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A064413 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065057.P7047862888851759594

/-! ## A065057.P9325770393498398581

`∑[A304753(a(n-1)+1)]` with `a(0)=0`
-/

namespace A065057.P9325770393498398581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A304753 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065057.P9325770393498398581

/-! ## A065057.P13147959711653291825

`∑[A304754(A064413(n+1))-1]`
-/

namespace A065057.P13147959711653291825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304754 (A064413 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065057.P13147959711653291825

/-! ## A065057.P13450545538118076208

`∑[A065519(A233583(n+1))+n]`
-/

namespace A065057.P13450545538118076208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065519 (A233583 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065057.P13450545538118076208

/-!
# A065058: Number of paths to T(n,n,n) with T(i,j,k)= 0 if j>i or k>j and T(i,j,k) = T(i-1,j,k) + T(i,j-1,k) + T(i,j,k-1) and T(i,j,0) = 1.

The programs for A065058, there is no canonical definition to state claims against.
-/

/-! ## A065058.P18366162270434751152

`A065078(∑[n]+n)`
-/

namespace A065058.P18366162270434751152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065078 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A065058.P18366162270434751152

/-! ## A065058.P11808438476738624371

`A065078(A000096(n))^A007318(C(2, n))`
-/

namespace A065058.P11808438476738624371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065078 (A000096 n).toNat : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A065058.P11808438476738624371

/-! ## A065058.P12273291907453214695

`A065078(A000096(n))+char[A205046(n+1)]`
-/

namespace A065058.P12273291907453214695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205046 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065078 (A000096 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A065058.P12273291907453214695

/-! ## A065058.P886975177172147287

`A065078(A000096(n))/A297325(A000217(n))`
-/

namespace A065058.P886975177172147287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065078 (A000096 n).toNat : ℚ) / (A297325 (A000217 n).toNat : ℚ)

end

end A065058.P886975177172147287

/-! ## A065058.P1090511905861586911

`A065078(A000096(n))%A217601(n+1)`
-/

namespace A065058.P1090511905861586911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065078 (A000096 n).toNat) (A217601 (n + 1))

end

end A065058.P1090511905861586911

/-!
# A065059: Primes p such that prime(p) + pi(p) is a prime.

The programs for A065059, the canonical program `A065059.P1473631309085740643` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065059 has offset 1).

The definition of A065059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 924 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065059.P1473631309085740643

`p?[A065042(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A065059

/-- `p?[A065042(n+1)]` -/
def P1473631309085740643.Spec : Prop :=
  ∀ n, P1473631309085740643.a n = A065059 (n + 1)

theorem P1473631309085740643.correct : P1473631309085740643.Spec := by
  intro n
  simp only [A065059, Nat.add_sub_cancel]

end A065059

/-! ## A065059.P14821461618522595714

`∩[A031215(n+1), A065042(n+1)]`
-/

namespace A065059.P14821461618522595714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065059.P14821461618522595714

namespace A065059

/-- `∩[A031215(n+1), A065042(n+1)]` -/
def P14821461618522595714.Spec : Prop :=
  ∀ n, (P14821461618522595714.a n : ℤ) = A065059 (n + 1)

end A065059

/-! ## A065059.P1390224920372310441

`∩[A065042(n+1), A336369(n+1)]`
-/

namespace A065059.P1390224920372310441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065059.P1390224920372310441

namespace A065059

/-- `∩[A065042(n+1), A336369(n+1)]` -/
def P1390224920372310441.Spec : Prop :=
  ∀ n, (P1390224920372310441.a n : ℤ) = A065059 (n + 1)

end A065059

/-! ## A065059.P11530348117181835466

`∩[A065042(n+1), A336377(n+1)]`
-/

namespace A065059.P11530348117181835466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065059.P11530348117181835466

namespace A065059

/-- `∩[A065042(n+1), A336377(n+1)]` -/
def P11530348117181835466.Spec : Prop :=
  ∀ n, (P11530348117181835466.a n : ℤ) = A065059 (n + 1)

end A065059

/-! ## A065059.P6616087330668398876

`∏{p}[p?[A065042(A008486(n)-2*n)], #]`
-/

namespace A065059.P6616087330668398876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065042 (A008486 n - (2 * n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A065059.P6616087330668398876

namespace A065059

/-- `∏{p}[p?[A065042(A008486(n)-2*n)], #]` -/
def P6616087330668398876.Spec : Prop :=
  ∀ n, (P6616087330668398876.a n : ℤ) = A065059 (n + 1)

end A065059

/-! ## A065059.P17401337990946557148

`∏{p}[p?[A065042(A008486(n)-n-n)], #]`
-/

namespace A065059.P17401337990946557148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065042 (A008486 n - (n : ℤ) - (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A065059.P17401337990946557148

namespace A065059

/-- `∏{p}[p?[A065042(A008486(n)-n-n)], #]` -/
def P17401337990946557148.Spec : Prop :=
  ∀ n, (P17401337990946557148.a n : ℤ) = A065059 (n + 1)

end A065059

/-! ## A065059.P67581604358846315

`∩[A000040(n+1), A065042(n+1)]`
-/

namespace A065059.P67581604358846315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065059.P67581604358846315

namespace A065059

/-- `∩[A000040(n+1), A065042(n+1)]` -/
def P67581604358846315.Spec : Prop :=
  ∀ n, (P67581604358846315.a n : ℤ) = A065059 (n + 1)

end A065059

/-! ## A065059.P11544769320473216805

`∩[A004139(n+1), A065042(n+1)]`
-/

namespace A065059.P11544769320473216805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065059.P11544769320473216805

namespace A065059

/-- `∩[A004139(n+1), A065042(n+1)]` -/
def P11544769320473216805.Spec : Prop :=
  ∀ n, (P11544769320473216805.a n : ℤ) = A065059 (n + 1)

end A065059

/-! ## A065059.P10483288227016246471

`∩[A045319(n+1), A065042(n+1)]`
-/

namespace A065059.P10483288227016246471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065059.P10483288227016246471

namespace A065059

/-- `∩[A045319(n+1), A065042(n+1)]` -/
def P10483288227016246471.Spec : Prop :=
  ∀ n, (P10483288227016246471.a n : ℤ) = A065059 (n + 1)

end A065059

/-! ## A065059.P10432265361346471939

`∩[A051948(n+1), A065042(n+1)]`
-/

namespace A065059.P10432265361346471939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065059.P10432265361346471939

namespace A065059

/-- `∩[A051948(n+1), A065042(n+1)]` -/
def P10432265361346471939.Spec : Prop :=
  ∀ n, (P10432265361346471939.a n : ℤ) = A065059 (n + 1)

end A065059

/-! ## A065059.P1629801289789579108

`∩[A053813(n+1), A065042(n+1)]`
-/

namespace A065059.P1629801289789579108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065059.P1629801289789579108

namespace A065059

/-- `∩[A053813(n+1), A065042(n+1)]` -/
def P1629801289789579108.Spec : Prop :=
  ∀ n, (P1629801289789579108.a n : ℤ) = A065059 (n + 1)

end A065059

/-! ## A065059.P421420874571812491

`∩[A065042(n+1), A065091(n+1)]`
-/

namespace A065059.P421420874571812491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065059.P421420874571812491

namespace A065059

/-- `∩[A065042(n+1), A065091(n+1)]` -/
def P421420874571812491.Spec : Prop :=
  ∀ n, (P421420874571812491.a n : ℤ) = A065059 (n + 1)

end A065059

/-! ## A065059.P18445830882000179028

`∩[A065042(n+1), A065396(n+1)]`
-/

namespace A065059.P18445830882000179028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065059.P18445830882000179028

namespace A065059

/-- `∩[A065042(n+1), A065396(n+1)]` -/
def P18445830882000179028.Spec : Prop :=
  ∀ n, (P18445830882000179028.a n : ℤ) = A065059 (n + 1)

end A065059

/-! ## A065059.P11631149953173979961

`∩[A065042(n+1), A106118(n+1)]`
-/

namespace A065059.P11631149953173979961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065059.P11631149953173979961

namespace A065059

/-- `∩[A065042(n+1), A106118(n+1)]` -/
def P11631149953173979961.Spec : Prop :=
  ∀ n, (P11631149953173979961.a n : ℤ) = A065059 (n + 1)

end A065059

/-! ## A065059.P8330770547542381599

`∩[A065042(n+1), A116974(n+1)]`
-/

namespace A065059.P8330770547542381599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065059.P8330770547542381599

namespace A065059

/-- `∩[A065042(n+1), A116974(n+1)]` -/
def P8330770547542381599.Spec : Prop :=
  ∀ n, (P8330770547542381599.a n : ℤ) = A065059 (n + 1)

end A065059

/-! ## A065059.P18321240128445286219

`∩[A065042(n+1), A161346(n+1)]`
-/

namespace A065059.P18321240128445286219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065059.P18321240128445286219

namespace A065059

/-- `∩[A065042(n+1), A161346(n+1)]` -/
def P18321240128445286219.Spec : Prop :=
  ∀ n, (P18321240128445286219.a n : ℤ) = A065059 (n + 1)

end A065059

/-! ## A065059.P10880122628481022094

`∩[A065042(n+1), A175787(n+1)]`
-/

namespace A065059.P10880122628481022094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065059.P10880122628481022094

namespace A065059

/-- `∩[A065042(n+1), A175787(n+1)]` -/
def P10880122628481022094.Spec : Prop :=
  ∀ n, (P10880122628481022094.a n : ℤ) = A065059 (n + 1)

end A065059

/-! ## A065059.P8100577327331176983

`∩[A065042(n+1), A182986(n+1)]`
-/

namespace A065059.P8100577327331176983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065059.P8100577327331176983

namespace A065059

/-- `∩[A065042(n+1), A182986(n+1)]` -/
def P8100577327331176983.Spec : Prop :=
  ∀ n, (P8100577327331176983.a n : ℤ) = A065059 (n + 1)

end A065059

/-! ## A065059.P454403633815279704

`∩[A348283(n+1), A065042(n+1)]`
-/

namespace A065059.P454403633815279704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065059.P454403633815279704

namespace A065059

/-- `∩[A348283(n+1), A065042(n+1)]` -/
def P454403633815279704.Spec : Prop :=
  ∀ n, (P454403633815279704.a n : ℤ) = A065059 (n + 1)

end A065059

/-! ## A065059.P12002400783805934221

`∩[A065042(n+1), A189710(n+1)]`
-/

namespace A065059.P12002400783805934221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065059.P12002400783805934221

namespace A065059

/-- `∩[A065042(n+1), A189710(n+1)]` -/
def P12002400783805934221.Spec : Prop :=
  ∀ n, (P12002400783805934221.a n : ℤ) = A065059 (n + 1)

end A065059

/-!
# A065060: Primes p such that prime(p) - pi(p) is a prime.

The programs for A065060, the canonical program `A065060.P16835916227254583194` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065060 has offset 1).

The definition of A065060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 931 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065060.P16835916227254583194

`p?[A065046(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A065060

/-- `p?[A065046(n+1)]` -/
def P16835916227254583194.Spec : Prop :=
  ∀ n, P16835916227254583194.a n = A065060 (n + 1)

theorem P16835916227254583194.correct : P16835916227254583194.Spec := by
  intro n
  simp only [A065060, Nat.add_sub_cancel]

end A065060

/-! ## A065060.P6606964540635311285

`p?[record[A065046(A324347(n))]]`
-/

namespace A065060.P6606964540635311285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065046 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065060.P6606964540635311285

namespace A065060

/-- `p?[record[A065046(A324347(n))]]` -/
def P6606964540635311285.Spec : Prop :=
  ∀ n, P6606964540635311285.a n = A065060 (n + 1)

end A065060

/-! ## A065060.P7542509793508742676

`∩[A065046(n+1), A333364(n+1)]`
-/

namespace A065060.P7542509793508742676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065060.P7542509793508742676

namespace A065060

/-- `∩[A065046(n+1), A333364(n+1)]` -/
def P7542509793508742676.Spec : Prop :=
  ∀ n, (P7542509793508742676.a n : ℤ) = A065060 (n + 1)

end A065060

/-! ## A065060.P2418628190743177102

`∩[A000040(n+1), A065046(n+1)]`
-/

namespace A065060.P2418628190743177102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065060.P2418628190743177102

namespace A065060

/-- `∩[A000040(n+1), A065046(n+1)]` -/
def P2418628190743177102.Spec : Prop :=
  ∀ n, (P2418628190743177102.a n : ℤ) = A065060 (n + 1)

end A065060

/-! ## A065060.P9363309923468550132

`∩[A045319(n+1), A065046(n+1)]`
-/

namespace A065060.P9363309923468550132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065060.P9363309923468550132

namespace A065060

/-- `∩[A045319(n+1), A065046(n+1)]` -/
def P9363309923468550132.Spec : Prop :=
  ∀ n, (P9363309923468550132.a n : ℤ) = A065060 (n + 1)

end A065060

/-! ## A065060.P11627715920798309796

`∩[A053813(n+1), A065046(n+1)]`
-/

namespace A065060.P11627715920798309796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065060.P11627715920798309796

namespace A065060

/-- `∩[A053813(n+1), A065046(n+1)]` -/
def P11627715920798309796.Spec : Prop :=
  ∀ n, (P11627715920798309796.a n : ℤ) = A065060 (n + 1)

end A065060

/-! ## A065060.P10445170610632029289

`∩[A065046(n+1), A116974(n+1)]`
-/

namespace A065060.P10445170610632029289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065060.P10445170610632029289

namespace A065060

/-- `∩[A065046(n+1), A116974(n+1)]` -/
def P10445170610632029289.Spec : Prop :=
  ∀ n, (P10445170610632029289.a n : ℤ) = A065060 (n + 1)

end A065060

/-! ## A065060.P10352523741836580021

`∩[A065046(n+1), A182986(n+1)]`
-/

namespace A065060.P10352523741836580021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065060.P10352523741836580021

namespace A065060

/-- `∩[A065046(n+1), A182986(n+1)]` -/
def P10352523741836580021.Spec : Prop :=
  ∀ n, (P10352523741836580021.a n : ℤ) = A065060 (n + 1)

end A065060

/-! ## A065060.P16086446560880719315

`∩[A065046(n+1), A197636(n+1)]`
-/

namespace A065060.P16086446560880719315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065060.P16086446560880719315

namespace A065060

/-- `∩[A065046(n+1), A197636(n+1)]` -/
def P16086446560880719315.Spec : Prop :=
  ∀ n, (P16086446560880719315.a n : ℤ) = A065060 (n + 1)

end A065060

/-! ## A065060.P5667541736796896636

`record[A006530(A065046(n+2))]`
-/

namespace A065060.P5667541736796896636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A065046 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065060.P5667541736796896636

namespace A065060

/-- `record[A006530(A065046(n+2))]` -/
def P5667541736796896636.Spec : Prop :=
  ∀ n, P5667541736796896636.a n = A065060 (n + 1)

end A065060

/-! ## A065060.P16795984398446039039

`filter[A065046(n+1), A010051(#)]`
-/

namespace A065060.P16795984398446039039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A065060.P16795984398446039039

namespace A065060

/-- `filter[A065046(n+1), A010051(#)]` -/
def P16795984398446039039.Spec : Prop :=
  ∀ n, P16795984398446039039.a n = A065060 (n + 1)

end A065060

/-! ## A065060.P13678141387382341123

`filter[A065046(n+1), A323153(#)]`
-/

namespace A065060.P13678141387382341123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A065060.P13678141387382341123

namespace A065060

/-- `filter[A065046(n+1), A323153(#)]` -/
def P13678141387382341123.Spec : Prop :=
  ∀ n, P13678141387382341123.a n = A065060 (n + 1)

end A065060

/-! ## A065060.P5205982150695658173

`filter[A065046(n+2), A323152(#)]`
-/

namespace A065060.P5205982150695658173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065046 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A065060.P5205982150695658173

namespace A065060

/-- `filter[A065046(n+2), A323152(#)]` -/
def P5205982150695658173.Spec : Prop :=
  ∀ n, P5205982150695658173.a n = A065060 (n + 1)

end A065060

/-! ## A065060.P13921637010268891135

`filter[A065046(n+2), A080339(#)]`
-/

namespace A065060.P13921637010268891135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065046 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A065060.P13921637010268891135

namespace A065060

/-- `filter[A065046(n+2), A080339(#)]` -/
def P13921637010268891135.Spec : Prop :=
  ∀ n, P13921637010268891135.a n = A065060 (n + 1)

end A065060

/-! ## A065060.P9985110456912012983

`∩[A065046(n+1), A230606(n+1)]`
-/

namespace A065060.P9985110456912012983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065060.P9985110456912012983

namespace A065060

/-- `∩[A065046(n+1), A230606(n+1)]` -/
def P9985110456912012983.Spec : Prop :=
  ∀ n, (P9985110456912012983.a n : ℤ) = A065060 (n + 1)

end A065060

/-!
# A065061: Numbers k such that sigma(k) - tau(k) is a prime.

The programs for A065061, there is no canonical definition to state claims against.
-/

/-! ## A065061.P7930427745035028705

`A092535((n+1)²^A299230(n+1)+1)`
-/

namespace A065061.P7930427745035028705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) ^ (A299230 (n + 1) : ℤ) + 1)).toNat

end

end A065061.P7930427745035028705

/-!
# A065063: Numbers k such that A065608(k) is a square.

The programs for A065063, there is no canonical definition to state claims against.
-/

/-! ## A065063.P5093460842725579164

`lt[A249307(A000203(n+1)-A000005(n+1)), 2]+1`
-/

namespace A065063.P5093460842725579164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249307 (A000203 (n + 1) - A000005 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A065063.P5093460842725579164

/-! ## A065063.P3805523816303875809

`lt[A053186(A065608(n+1)), 1]+1`
-/

namespace A065063.P3805523816303875809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A065608 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A065063.P3805523816303875809

/-!
# A065065: Number of noncrossing connected graphs with nodes on a circle having n edges.

The programs for A065065, there is no canonical definition to state claims against.
-/

/-! ## A065065.P11818220807445575560

`A267762(∏[p?[∑{e}[n+1, #]]])`
-/

namespace A065065.P11818220807445575560
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267762 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A065065.P11818220807445575560

/-!
# A065066: Triangle T(n,k) read by rows of partially ordered sets ("posets") with n unlabeled nodes and k maximal elements (0 <= k <= n).

The programs for A065066, there is no canonical definition to state claims against.
-/

/-! ## A065066.P13097290743572547176

`A124761(A086645(n))+A067347(n)`
-/

namespace A065066.P13097290743572547176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A086645 n).toNat + A067347 n

end

end A065066.P13097290743572547176

/-! ## A065066.P13221618295999903737

`A189233(n)+A058276(A085478(n))`
-/

namespace A065066.P13221618295999903737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 n + A058276 (A085478 n).toNat

end

end A065066.P13221618295999903737

/-! ## A065066.P6401592526595244678

`A250002(A142992(n))+A067347(n)`
-/

namespace A065066.P6401592526595244678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250002 (A142992 n).toNat + A067347 n

end

end A065066.P6401592526595244678

/-! ## A065066.P578471978420559472

`A333382(A229142(n))+A106566(n)`
-/

namespace A065066.P578471978420559472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A229142 n).toNat + A106566 n

end

end A065066.P578471978420559472

/-! ## A065066.P6013167935808716505

`A189233(n)+A121262(A207358(n+1))`
-/

namespace A065066.P6013167935808716505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 n + A121262 (A207358 (n + 1)).toNat

end

end A065066.P6013167935808716505

/-!
# A065067: First differences of A065027.

The programs for A065067, there is no canonical definition to state claims against.
-/

/-! ## A065067.P11084034580296832099

`A065027(n+1)-A065027(n)`
-/

namespace A065067.P11084034580296832099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065027 (n + 1) - A065027 n

end

end A065067.P11084034580296832099

/-! ## A065067.P11990126496207450407

`Δ[A065027(n)]`
-/

namespace A065067.P11990126496207450407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065067.P11990126496207450407

/-! ## A065067.P7957445824924773670

`Δ[A086824(n)+char[1]]`
-/

namespace A065067.P7957445824924773670
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086824 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065067.P7957445824924773670

/-! ## A065067.P17731565321423948429

`record[A065027(A123108(n))]-A065027(n)`
-/

namespace A065067.P17731565321423948429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065027 (A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A065027 n

end

end A065067.P17731565321423948429

/-! ## A065067.P460687009806055180

`Δ[A211487(A060968(n+4))+A086824(n)]`
-/

namespace A065067.P460687009806055180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211487 (A060968 (n + 4)).toNat + A086824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065067.P460687009806055180

/-! ## A065067.P4587989394312570582

`record[A065027(A137734(n))]-A065027(n)`
-/

namespace A065067.P4587989394312570582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065027 (A137734 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A065027 n

end

end A065067.P4587989394312570582

/-!
# A065068: Number of fixed polyominoes with n cells of which no four are equally spaced on a straight line.

The programs for A065068, there is no canonical definition to state claims against.
-/

/-! ## A065068.P7166617155537460208

`∑[A118244(∑[n])]-n`
-/

namespace A065068.P7166617155537460208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118244 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A065068.P7166617155537460208

/-! ## A065068.P5678586352068766822

`A239310(a(n-1))-3` with `a(0)=1, a(1)=2`
-/

namespace A065068.P5678586352068766822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A239310 (a (n - 1)).toNat - 3

end

end A065068.P5678586352068766822

/-!
# A065069: Numbers n such that Fibonacci(n) is not squarefree, but for all proper divisors k of n, Fibonacci(k) is squarefree.

The programs for A065069, there is no canonical definition to state claims against.
-/

/-! ## A065069.P12995821491753423977

`A065106(record[A125162(n+1)])`
-/

namespace A065069.P12995821491753423977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065106 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A065069.P12995821491753423977

/-! ## A065069.P9311512461301383373

`A065106(lt[A139337(n), A070168(n+1)])`
-/

namespace A065069.P9311512461301383373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065106 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A065069.P9311512461301383373

/-! ## A065069.P7747366062041435252

`∪[A065106(n+3), A065106(A355732(n+1))]`
-/

namespace A065069.P7747366062041435252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065106 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065106 (A355732 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A065069.P7747366062041435252

/-!
# A065070: Rank transform of sequence {pi(m)} = A000720.

The programs for A065070, there is no canonical definition to state claims against.
-/

/-! ## A065070.P15872480576816688515

`A367133(n+1)+A059448(A274741(n))`
-/

namespace A065070.P15872480576816688515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367133 (n + 1) + A059448 (A274741 n).toNat

end

end A065070.P15872480576816688515

/-! ## A065070.P1090619093404066979

`A136745(A023936(n))+A000010(n+1)`
-/

namespace A065070.P1090619093404066979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136745 (A023936 n).toNat + A000010 (n + 1)

end

end A065070.P1090619093404066979

/-! ## A065070.P13965162670778115322

`A039649(n+1)-A286576(A059376(n+1))`
-/

namespace A065070.P13965162670778115322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - A286576 (A059376 (n + 1)).toNat

end

end A065070.P13965162670778115322

/-! ## A065070.P12528005380802912727

`A228286(A048848(n+1))%A112822(n+1)`
-/

namespace A065070.P12528005380802912727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228286 (A048848 (n + 1)).toNat) (A112822 (n + 1))

end

end A065070.P12528005380802912727

/-! ## A065070.P15880999376439155792

`A000010(n+1)-A092220(A257614(n))`
-/

namespace A065070.P15880999376439155792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A092220 (A257614 n).toNat

end

end A065070.P15880999376439155792

/-!
# A065071: Minimum number of identical bricks of length 1 which, when stacked without mortar in the naive way, form a stack of length >=n.

The programs for A065071, the canonical program `A065071.P2618642326571619513` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065071 has offset 1).

The definition of A065071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065071.P12842531244882739008

`A002387(2*n)-ceil(acot(n))+2`
-/

namespace A065071.P12842531244882739008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 (2 * n) - ⌈SequenceMachineLib.acot (n : ℝ)⌉ + 2

end

end A065071.P12842531244882739008

namespace A065071

/-- `A002387(2*n)-ceil(acot(n))+2` -/
def P12842531244882739008.Spec : Prop :=
  ∀ n, P12842531244882739008.a n = A065071 (n + 1)

end A065071

/-! ## A065071.P2618642326571619513

`A057427(n)+A002387(2*n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065071

/-- `A057427(n)+A002387(2*n)` -/
def P2618642326571619513.Spec : Prop :=
  ∀ n, P2618642326571619513.a n = A065071 (n + 1)

theorem P2618642326571619513.correct : P2618642326571619513.Spec := by
  intro n
  simp only [A065071, Nat.add_sub_cancel]

end A065071

/-! ## A065071.P10473016354287000623

`A178334(n)+A002387(2*n)`
-/

namespace A065071.P10473016354287000623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A002387 (2 * n)

end

end A065071.P10473016354287000623

namespace A065071

/-- `A178334(n)+A002387(2*n)` -/
def P10473016354287000623.Spec : Prop :=
  ∀ n, P10473016354287000623.a n = A065071 (n + 1)

end A065071

/-! ## A065071.P6526508637005835770

`A002387(2*n)-A057428(n)`
-/

namespace A065071.P6526508637005835770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 (2 * n) - A057428 n

end

end A065071.P6526508637005835770

namespace A065071

/-- `A002387(2*n)-A057428(n)` -/
def P6526508637005835770.Spec : Prop :=
  ∀ n, P6526508637005835770.a n = A065071 (n + 1)

end A065071

/-! ## A065071.P7111862411290114156

`A157928(n+1)+A002387(2*n)`
-/

namespace A065071.P7111862411290114156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (n + 1) + A002387 (2 * n)

end

end A065071.P7111862411290114156

namespace A065071

/-- `A157928(n+1)+A002387(2*n)` -/
def P7111862411290114156.Spec : Prop :=
  ∀ n, P7111862411290114156.a n = A065071 (n + 1)

end A065071

/-! ## A065071.P17499888891921250284

`A002387(2*n)+A057428(2*n)²`
-/

namespace A065071.P17499888891921250284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 (2 * n) + A057428 (2 * n) ^ 2

end

end A065071.P17499888891921250284

namespace A065071

/-- `A002387(2*n)+A057428(2*n)²` -/
def P17499888891921250284.Spec : Prop :=
  ∀ n, P17499888891921250284.a n = A065071 (n + 1)

end A065071

/-! ## A065071.P8167910740306443044

`A002387(2*n)+1-A019590(n+2)`
-/

namespace A065071.P8167910740306443044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 (2 * n) + (1 - A019590 (n + 2))

end

end A065071.P8167910740306443044

namespace A065071

/-- `A002387(2*n)+1-A019590(n+2)` -/
def P8167910740306443044.Spec : Prop :=
  ∀ n, P8167910740306443044.a n = A065071 (n + 1)

end A065071

/-! ## A065071.P2399521919747905885

`A002387(2*n)+2-A141044(n+1)`
-/

namespace A065071.P2399521919747905885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 (2 * n) + (2 - A141044 (n + 1))

end

end A065071.P2399521919747905885

namespace A065071

/-- `A002387(2*n)+2-A141044(n+1)` -/
def P2399521919747905885.Spec : Prop :=
  ∀ n, P2399521919747905885.a n = A065071 (n + 1)

end A065071

/-! ## A065071.P18423874607387187295

`A005171(2*(n+1))+A002387(2*n)`
-/

namespace A065071.P18423874607387187295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (2 * (n + 1)) + A002387 (2 * n)

end

end A065071.P18423874607387187295

namespace A065071

/-- `A005171(2*(n+1))+A002387(2*n)` -/
def P18423874607387187295.Spec : Prop :=
  ∀ n, P18423874607387187295.a n = A065071 (n + 1)

end A065071

/-! ## A065071.P13048202738263835443

`A002387(2*n)+1-A169585(2*n)`
-/

namespace A065071.P13048202738263835443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 (2 * n) + (1 - A169585 (2 * n))

end

end A065071.P13048202738263835443

namespace A065071

/-- `A002387(2*n)+1-A169585(2*n)` -/
def P13048202738263835443.Spec : Prop :=
  ∀ n, P13048202738263835443.a n = A065071 (n + 1)

end A065071

/-! ## A065071.P4697736439090419625

`2-(A141044(2*n)-A002387(2*n))`
-/

namespace A065071.P4697736439090419625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A141044 (2 * n) - A002387 (2 * n))

end

end A065071.P4697736439090419625

namespace A065071

/-- `2-(A141044(2*n)-A002387(2*n))` -/
def P4697736439090419625.Spec : Prop :=
  ∀ n, P4697736439090419625.a n = A065071 (n + 1)

end A065071

/-! ## A065071.P7600330977997088625

`xor(A002387(2*n)+1, A169585(n+1))`
-/

namespace A065071.P7600330977997088625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002387 (2 * n) + 1) (A169585 (n + 1))

end

end A065071.P7600330977997088625

namespace A065071

/-- `xor(A002387(2*n)+1, A169585(n+1))` -/
def P7600330977997088625.Spec : Prop :=
  ∀ n, P7600330977997088625.a n = A065071 (n + 1)

end A065071

/-! ## A065071.P2710362252944256187

`A002387(2*n)+A199969(n+2)-n`
-/

namespace A065071.P2710362252944256187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 (2 * n) + (A199969 (n + 2) - (n : ℤ))

end

end A065071.P2710362252944256187

namespace A065071

/-- `A002387(2*n)+A199969(n+2)-n` -/
def P2710362252944256187.Spec : Prop :=
  ∀ n, P2710362252944256187.a n = A065071 (n + 1)

end A065071

/-! ## A065071.P16075017992330631577

`(A002387(2*n)+1)/A141044(2*n+1)`
-/

namespace A065071.P16075017992330631577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002387 (2 * n) + 1 : ℚ) / (A141044 (2 * n + 1) : ℚ)

end

end A065071.P16075017992330631577

namespace A065071

/-- `(A002387(2*n)+1)/A141044(2*n+1)` -/
def P16075017992330631577.Spec : Prop :=
  ∀ n, P16075017992330631577.a n = (A065071 (n + 1) : ℚ)

end A065071

/-! ## A065071.P514796991409830879

`A002387(A005843(n))+A178334(n)`
-/

namespace A065071.P514796991409830879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 (A005843 n).toNat + A178334 n

end

end A065071.P514796991409830879

namespace A065071

/-- `A002387(A005843(n))+A178334(n)` -/
def P514796991409830879.Spec : Prop :=
  ∀ n, P514796991409830879.a n = A065071 (n + 1)

end A065071

/-! ## A065071.P4717104002941738094

`A005811(A003817(n))+A002387(2*n)`
-/

namespace A065071.P4717104002941738094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A003817 n).toNat + A002387 (2 * n)

end

end A065071.P4717104002941738094

namespace A065071

/-- `A005811(A003817(n))+A002387(2*n)` -/
def P4717104002941738094.Spec : Prop :=
  ∀ n, P4717104002941738094.a n = A065071 (n + 1)

end A065071

/-! ## A065071.P1091847537377441246

`A002387(2*n)+A003817(2*n)/A003817(2*n+1)`
-/

namespace A065071.P1091847537377441246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002387 (2 * n) : ℚ) + (A003817 (2 * n) : ℚ) / (A003817 (2 * n + 1) : ℚ)

end

end A065071.P1091847537377441246

namespace A065071

/-- `A002387(2*n)+A003817(2*n)/A003817(2*n+1)` -/
def P1091847537377441246.Spec : Prop :=
  ∀ n, P1091847537377441246.a n = (A065071 (n + 1) : ℚ)

end A065071

/-!
# A065072: Number of ways to tile a square of side 2n by dominoes (rectangles of size 2 X 1 or 1 X 2) is 2^n * a(n)^2 (see A004003).

The programs for A065072, there is no canonical definition to state claims against.
-/

/-! ## A065072.P9135541938361721940

`sqrt(2^-n*A004003(n))`
-/

namespace A065072.P9135541938361721940
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((2 : ℚ) ^ (-(n : ℤ) : ℤ) * (A004003 n : ℚ) : ℝ)

end

end A065072.P9135541938361721940

/-! ## A065072.P17548383227519758982

`A340185(n)/A340052(n)`
-/

namespace A065072.P17548383227519758982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340185 n : ℚ) / (A340052 n : ℚ)

end

end A065072.P17548383227519758982

/-! ## A065072.P16933762559352286855

`sqrt(A004003(n)/A000079(n))`
-/

namespace A065072.P16933762559352286855
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A004003 n : ℚ) / (A000079 n : ℚ) : ℝ)

end

end A065072.P16933762559352286855

/-! ## A065072.P12805818704169797132

`sqrt(A189002(2*n)/A000079(n))`
-/

namespace A065072.P12805818704169797132
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A189002 (2 * n) : ℚ) / (A000079 n : ℚ) : ℝ)

end

end A065072.P12805818704169797132

/-! ## A065072.P14674854974854290256

`sqrt(A187617((n+1)*2*n)/A000079(n))`
-/

namespace A065072.P14674854974854290256
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A187617 ((n + 1) * (2 * n)) : ℚ) / (A000079 n : ℚ) : ℝ)

end

end A065072.P14674854974854290256

/-!
# A065073: a(n) = prime(n) + (sum of digits of prime(n)).

The programs for A065073, the canonical program `A065073.P8599182111085404624` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065073 has offset 1).

The definition of A065073 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065073.P8599182111085404624

`A062028(A000040(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A065073

/-- `A062028(A000040(n+1))` -/
def P8599182111085404624.Spec : Prop :=
  ∀ n, P8599182111085404624.a n = A065073 (n + 1)

theorem P8599182111085404624.correct : P8599182111085404624.Spec := by
  intro n
  simp only [A065073, Nat.add_sub_cancel]

end A065073

/-! ## A065073.P6461722868405623435

`A007605(n+1)+Δ[A007504(n)]`
-/

namespace A065073.P6461722868405623435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1) + (f1 (n + 1) - f1 n)

end

end A065073.P6461722868405623435

namespace A065073

/-- `A007605(n+1)+Δ[A007504(n)]` -/
def P6461722868405623435.Spec : Prop :=
  ∀ n, P6461722868405623435.a n = A065073 (n + 1)

end A065073

/-! ## A065073.P764054860991181088

`A007605(n+1)+A000040(n+1)`
-/

namespace A065073.P764054860991181088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1) + A000040 (n + 1)

end

end A065073.P764054860991181088

namespace A065073

/-- `A007605(n+1)+A000040(n+1)` -/
def P764054860991181088.Spec : Prop :=
  ∀ n, P764054860991181088.a n = A065073 (n + 1)

end A065073

/-! ## A065073.P13184689429818824937

`A100484(n+1)-A068395(n+1)`
-/

namespace A065073.P13184689429818824937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A068395 (n + 1)

end

end A065073.P13184689429818824937

namespace A065073

/-- `A100484(n+1)-A068395(n+1)` -/
def P13184689429818824937.Spec : Prop :=
  ∀ n, P13184689429818824937.a n = A065073 (n + 1)

end A065073

/-! ## A065073.P15985935401178684017

`A007605(n+1)+sqrt(A001248(n+1))`
-/

namespace A065073.P15985935401178684017
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A007605 (n + 1) : ℝ) + Real.sqrt (A001248 (n + 1) : ℝ)

end

end A065073.P15985935401178684017

namespace A065073

/-- `A007605(n+1)+sqrt(A001248(n+1))` -/
def P15985935401178684017.Spec : Prop :=
  ∀ n, P15985935401178684017.a n = (A065073 (n + 1) : ℝ)

end A065073

/-! ## A065073.P10418600829227320529

`A007605(n+1)+∑[A054541(n+1)]`
-/

namespace A065073.P10418600829227320529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065073.P10418600829227320529

namespace A065073

/-- `A007605(n+1)+∑[A054541(n+1)]` -/
def P10418600829227320529.Spec : Prop :=
  ∀ n, P10418600829227320529.a n = A065073 (n + 1)

end A065073

/-! ## A065073.P494509437049399062

`A006093(n+1)+A007605(n+1)+1`
-/

namespace A065073.P494509437049399062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A007605 (n + 1) + 1)

end

end A065073.P494509437049399062

namespace A065073

/-- `A006093(n+1)+A007605(n+1)+1` -/
def P494509437049399062.Spec : Prop :=
  ∀ n, P494509437049399062.a n = A065073 (n + 1)

end A065073

/-! ## A065073.P11894222831621923411

`A007605(n+1)+A086801(n+1)+3`
-/

namespace A065073.P11894222831621923411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1) + (A086801 (n + 1) + 3)

end

end A065073.P11894222831621923411

namespace A065073

/-- `A007605(n+1)+A086801(n+1)+3` -/
def P11894222831621923411.Spec : Prop :=
  ∀ n, P11894222831621923411.a n = A065073 (n + 1)

end A065073

/-! ## A065073.P5016475330551294110

`A068395(n+1)+2*A007605(n+1)`
-/

namespace A065073.P5016475330551294110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068395 (n + 1) + 2 * A007605 (n + 1)

end

end A065073.P5016475330551294110

namespace A065073

/-- `A068395(n+1)+2*A007605(n+1)` -/
def P5016475330551294110.Spec : Prop :=
  ∀ n, P5016475330551294110.a n = A065073 (n + 1)

end A065073

/-! ## A065073.P16612798882426718944

`2*A000040(n+1)-A068395(n+1)`
-/

namespace A065073.P16612798882426718944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A068395 (n + 1)

end

end A065073.P16612798882426718944

namespace A065073

/-- `2*A000040(n+1)-A068395(n+1)` -/
def P16612798882426718944.Spec : Prop :=
  ∀ n, P16612798882426718944.a n = A065073 (n + 1)

end A065073

/-! ## A065073.P10369091113386177034

`A000040(n+1)+A104251(n+1)+A104250(n+1)`
-/

namespace A065073.P10369091113386177034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A104251 (n + 1) + A104250 (n + 1))

end

end A065073.P10369091113386177034

namespace A065073

/-- `A000040(n+1)+A104251(n+1)+A104250(n+1)` -/
def P10369091113386177034.Spec : Prop :=
  ∀ n, P10369091113386177034.a n = A065073 (n + 1)

end A065073

/-! ## A065073.P8102358986645501105

`A000040(n+1)+A104261(n+1)+A104260(n+1)`
-/

namespace A065073.P8102358986645501105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A104261 (n + 1) + A104260 (n + 1))

end

end A065073.P8102358986645501105

namespace A065073

/-- `A000040(n+1)+A104261(n+1)+A104260(n+1)` -/
def P8102358986645501105.Spec : Prop :=
  ∀ n, P8102358986645501105.a n = A065073 (n + 1)

end A065073

/-! ## A065073.P13336505065898114438

`A007605(n+1)+A065091(n+1)-A001223(n+1)`
-/

namespace A065073.P13336505065898114438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1) + (A065091 (n + 1) - A001223 (n + 1))

end

end A065073.P13336505065898114438

namespace A065073

/-- `A007605(n+1)+A065091(n+1)-A001223(n+1)` -/
def P13336505065898114438.Spec : Prop :=
  ∀ n, P13336505065898114438.a n = A065073 (n + 1)

end A065073

/-! ## A065073.P13018092010368785099

`A000040(n+1)+A007953(n+1)-A090431(n+1)`
-/

namespace A065073.P13018092010368785099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A007953 (n + 1) - A090431 (n + 1))

end

end A065073.P13018092010368785099

namespace A065073

/-- `A000040(n+1)+A007953(n+1)-A090431(n+1)` -/
def P13018092010368785099.Spec : Prop :=
  ∀ n, P13018092010368785099.a n = A065073 (n + 1)

end A065073

/-! ## A065073.P7563887818657636695

`A000040(n+1)+A255005(n+1)-A053666(n+1)`
-/

namespace A065073.P7563887818657636695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A255005 (n + 1) - A053666 (n + 1))

end

end A065073.P7563887818657636695

namespace A065073

/-- `A000040(n+1)+A255005(n+1)-A053666(n+1)` -/
def P7563887818657636695.Spec : Prop :=
  ∀ n, P7563887818657636695.a n = A065073 (n + 1)

end A065073

/-! ## A065073.P5805585598199423262

`A000040(n+1)+Δ[A051351(n)]`
-/

namespace A065073.P5805585598199423262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (f1 (n + 1) - f1 n)

end

end A065073.P5805585598199423262

namespace A065073

/-- `A000040(n+1)+Δ[A051351(n)]` -/
def P5805585598199423262.Spec : Prop :=
  ∀ n, P5805585598199423262.a n = A065073 (n + 1)

end A065073

/-! ## A065073.P7010139890650048529

`A008578(n+2)+A007605(n+1)`
-/

namespace A065073.P7010139890650048529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + A007605 (n + 1)

end

end A065073.P7010139890650048529

namespace A065073

/-- `A008578(n+2)+A007605(n+1)` -/
def P7010139890650048529.Spec : Prop :=
  ∀ n, P7010139890650048529.a n = A065073 (n + 1)

end A065073

/-! ## A065073.P14849896677994569398

`A006093(n+1)+Δ[A051351(n)]+1`
-/

namespace A065073.P14849896677994569398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (f1 (n + 1) - f1 n + 1)

end

end A065073.P14849896677994569398

namespace A065073

/-- `A006093(n+1)+Δ[A051351(n)]+1` -/
def P14849896677994569398.Spec : Prop :=
  ∀ n, P14849896677994569398.a n = A065073 (n + 1)

end A065073

/-! ## A065073.P5720111680519804589

`A000040(n+1)+A051351(n+1)-A051351(n)`
-/

namespace A065073.P5720111680519804589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A051351 (n + 1) - A051351 n)

end

end A065073.P5720111680519804589

namespace A065073

/-- `A000040(n+1)+A051351(n+1)-A051351(n)` -/
def P5720111680519804589.Spec : Prop :=
  ∀ n, P5720111680519804589.a n = A065073 (n + 1)

end A065073

/-! ## A065073.P18410077666868388141

`A247797(A250553(n+1))+A007605(n+1)`
-/

namespace A065073.P18410077666868388141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247797 (A250553 (n + 1)).toNat + A007605 (n + 1)

end

end A065073.P18410077666868388141

namespace A065073

/-- `A247797(A250553(n+1))+A007605(n+1)` -/
def P18410077666868388141.Spec : Prop :=
  ∀ n, P18410077666868388141.a n = A065073 (n + 1)

end A065073

/-!
# A065074: Near-repunit primes that contain the digit 0.

The programs for A065074, there is no canonical definition to state claims against.
-/

/-! ## A065074.P12023314086569608321

`∩[A105992(n+1), A190619(n+1)]`
-/

namespace A065074.P12023314086569608321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065074.P12023314086569608321

/-! ## A065074.P15177560353484325370

`record[A077805(A190620(n+1))]`
-/

namespace A065074.P15177560353484325370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (A190620 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065074.P15177560353484325370

/-! ## A065074.P1349736482367135491

`∩[A105992(n+1), A104326(n)]`
-/

namespace A065074.P1349736482367135491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104326 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065074.P1349736482367135491

/-! ## A065074.P10438941569854265281

`∩[A164937(n+1), A104326(n)]`
-/

namespace A065074.P10438941569854265281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104326 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065074.P10438941569854265281

/-! ## A065074.P10995170368489897732

`∩[record[A077805(n+1)], A190619(n+1)]`
-/

namespace A065074.P10995170368489897732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A065074.P10995170368489897732

/-!
# A065075: Sum of digits of the sum of the preceding numbers.

The programs for A065075, the canonical program `A065075.P5743143580939958103` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065075 has offset 1).

The definition of A065075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065075.P5743143580939958103

`∑{digits}[A004207(n), #]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A065075

/-- `∑{digits}[A004207(n), #]` -/
def P5743143580939958103.Spec : Prop :=
  ∀ n, (P5743143580939958103.a n : ℤ) = A065075 (n + 1)

theorem P5743143580939958103.correct : P5743143580939958103.Spec := by
  intro n
  simp only [A065075, Nat.add_sub_cancel]

end A065075

/-! ## A065075.P1959018467146523461

`A028310(Δ[A004207(n)])`
-/

namespace A065075.P1959018467146523461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A065075.P1959018467146523461

namespace A065075

/-- `A028310(Δ[A004207(n)])` -/
def P1959018467146523461.Spec : Prop :=
  ∀ n, P1959018467146523461.a n = A065075 (n + 1)

end A065075

/-! ## A065075.P2566382449188774810

`∑{digits}[A219675(A028310(n)), #]`
-/

namespace A065075.P2566382449188774810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219675 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A065075.P2566382449188774810

namespace A065075

/-- `∑{digits}[A219675(A028310(n)), #]` -/
def P2566382449188774810.Spec : Prop :=
  ∀ n, (P2566382449188774810.a n : ℤ) = A065075 (n + 1)

end A065075

/-! ## A065075.P12226821310391671480

`A000007(n)+Δ[A004207(n)]`
-/

namespace A065075.P12226821310391671480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A065075.P12226821310391671480

namespace A065075

/-- `A000007(n)+Δ[A004207(n)]` -/
def P12226821310391671480.Spec : Prop :=
  ∀ n, P12226821310391671480.a n = A065075 (n + 1)

end A065075

/-! ## A065075.P1283115347770038352

`Δ[A004207(n)%A142463(n)]`
-/

namespace A065075.P1283115347770038352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004207 n) (A142463 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065075.P1283115347770038352

namespace A065075

/-- `Δ[A004207(n)%A142463(n)]` -/
def P1283115347770038352.Spec : Prop :=
  ∀ n, P1283115347770038352.a n = A065075 (n + 1)

end A065075

/-! ## A065075.P5908485270941453231

`A004207(n+1)-A219675(n)`
-/

namespace A065075.P5908485270941453231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004207 (n + 1) - A219675 n

end

end A065075.P5908485270941453231

namespace A065075

/-- `A004207(n+1)-A219675(n)` -/
def P5908485270941453231.Spec : Prop :=
  ∀ n, P5908485270941453231.a n = A065075 (n + 1)

end A065075

/-! ## A065075.P14912586181500757247

`A028310(A004207(n+1)-A004207(n))`
-/

namespace A065075.P14912586181500757247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A004207 (n + 1) - A004207 n).toNat

end

end A065075.P14912586181500757247

namespace A065075

/-- `A028310(A004207(n+1)-A004207(n))` -/
def P14912586181500757247.Spec : Prop :=
  ∀ n, P14912586181500757247.a n = A065075 (n + 1)

end A065075

/-! ## A065075.P3981368569295684619

`A004207(n+1)+A000007(n)-A004207(n)`
-/

namespace A065075.P3981368569295684619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004207 (n + 1) + (A000007 n - A004207 n)

end

end A065075.P3981368569295684619

namespace A065075

/-- `A004207(n+1)+A000007(n)-A004207(n)` -/
def P3981368569295684619.Spec : Prop :=
  ∀ n, P3981368569295684619.a n = A065075 (n + 1)

end A065075

/-! ## A065075.P9537132642868413361

`Δ[A219675(n)]`
-/

namespace A065075.P9537132642868413361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065075.P9537132642868413361

namespace A065075

/-- `Δ[A219675(n)]` -/
def P9537132642868413361.Spec : Prop :=
  ∀ n, P9537132642868413361.a n = A065075 (n + 1)

end A065075

/-! ## A065075.P16416769609419118433

`A219675(n+1)-A219675(n)`
-/

namespace A065075.P16416769609419118433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219675 (n + 1) - A219675 n

end

end A065075.P16416769609419118433

namespace A065075

/-- `A219675(n+1)-A219675(n)` -/
def P16416769609419118433.Spec : Prop :=
  ∀ n, P16416769609419118433.a n = A065075 (n + 1)

end A065075

/-! ## A065075.P7169911937713935221

`∑{digits}[A062028(a(n-1)), #]` with `a(0)=1, a(1)=1`
-/

namespace A065075.P7169911937713935221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A062028 (f1 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A065075.P7169911937713935221

namespace A065075

/-- `∑{digits}[A062028(a(n-1)), #]` -/
def P7169911937713935221.Spec : Prop :=
  ∀ n, (P7169911937713935221.a n : ℤ) = A065075 (n + 1)

end A065075

/-! ## A065075.P10327882805671666597

`Δ[A062028(a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A065075.P10327882805671666597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A062028 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065075.P10327882805671666597

namespace A065075

/-- `Δ[A062028(a(n-1))]` -/
def P10327882805671666597.Spec : Prop :=
  ∀ n, P10327882805671666597.a n = A065075 (n + 1)

end A065075

/-! ## A065075.P8188312407033270467

`A007953(A004207(n))`
-/

namespace A065075.P8188312407033270467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A004207 n).toNat

end

end A065075.P8188312407033270467

namespace A065075

/-- `A007953(A004207(n))` -/
def P8188312407033270467.Spec : Prop :=
  ∀ n, P8188312407033270467.a n = A065075 (n + 1)

end A065075

/-!
# A065076: a(0) = 0, a(1) = 1, a(n) = (sum of digits of a(n-1)) + a(n-2).

The programs for A065076, the canonical program `A065076.P12545874303154124249` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065076 has offset 0).

The definition of A065076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1179 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065076.P12545874303154124249

`A007953(a(n-1))+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065076

/-- `A007953(a(n-1))+a(n-2)` -/
def P12545874303154124249.Spec : Prop :=
  ∀ n, P12545874303154124249.a n = A065076 n

theorem P12545874303154124249.correct : P12545874303154124249.Spec := by
  intro n
  simp only [A065076]

end A065076

/-! ## A065076.P3670254249630313485

`a(n-2)+sqrt(A118881(a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A065076.P3670254249630313485
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + Real.sqrt (A118881 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℝ)

end

end A065076.P3670254249630313485

namespace A065076

/-- `a(n-2)+sqrt(A118881(a(n-1)))` -/
def P3670254249630313485.Spec : Prop :=
  ∀ n, P3670254249630313485.a n = (A065076 n : ℝ)

end A065076

/-!
# A065077: Triangle read by rows: T(n,m) = C[n,m,m] where C[i,j,k] is the 3-dimensional Catalan pyramid defined by C[0,0,0]=1 and C[i,j,k]=0 if j>i or k>j and C[i,j,k]=C[i-1,j,k]+C[i,j-1,k]+C[i,j,k-1].

The programs for A065077, there is no canonical definition to state claims against.
-/

/-! ## A065077.P2204552270476447081

`A290252(A081118(n+1)-A130321(n))`
-/

namespace A065077.P2204552270476447081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (A081118 (n + 1) - A130321 n).toNat

end

end A065077.P2204552270476447081

/-! ## A065077.P2677221080834278723

`A290252(xor(A081118(n+1), A130321(n)))`
-/

namespace A065077.P2677221080834278723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (Int.xor (A081118 (n + 1)) (A130321 n)).toNat

end

end A065077.P2677221080834278723

/-! ## A065077.P5250880192237461515

`A153452(A232646(n+1))`
-/

namespace A065077.P5250880192237461515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (A232646 (n + 1)).toNat

end

end A065077.P5250880192237461515

/-! ## A065077.P3097089961641641654

`A000119(A058254(n)-n)`
-/

namespace A065077.P3097089961641641654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (A058254 n - (n : ℤ)).toNat

end

end A065077.P3097089961641641654

/-! ## A065077.P12799661513662336907

`A025675(n+1)+A025581(A326308(n))`
-/

namespace A065077.P12799661513662336907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025675 (n + 1) + A025581 (A326308 n).toNat

end

end A065077.P12799661513662336907

/-!
# A065079: Primes > 3 for which the alternating bit sum (A065359) is not equal to 1 or 2.

The programs for A065079, the canonical program `A065079.P18023857822470704852` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065079 has offset 1).

The definition of A065079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5432 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065079.P17740096868073662156

`∪[A065049(n+1), A065123(n+1)]`
-/

namespace A065079.P17740096868073662156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A065079.P17740096868073662156

namespace A065079

/-- `∪[A065049(n+1), A065123(n+1)]` -/
def P17740096868073662156.Spec : Prop :=
  ∀ n, (P17740096868073662156.a n : ℤ) = A065079 (n + 1)

end A065079

/-! ## A065079.P18023857822470704852

`p?[(2*n+1)*A043545(A065359(n)²)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A065079

/-- `p?[(2*n+1)*A043545(A065359(n)²)]` -/
def P18023857822470704852.Spec : Prop :=
  ∀ n, P18023857822470704852.a n = A065079 (n + 1)

theorem P18023857822470704852.correct : P18023857822470704852.Spec := by
  intro n
  simp only [A065079, Nat.add_sub_cancel]

end A065079

/-! ## A065079.P8864285795417532371

`p?[A050321(n)+1]`
-/

namespace A065079.P8864285795417532371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050321 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065079.P8864285795417532371

namespace A065079

/-- `p?[A050321(n)+1]` -/
def P8864285795417532371.Spec : Prop :=
  ∀ n, P8864285795417532371.a n = A065079 (n + 1)

end A065079

/-! ## A065079.P17459611190601815091

`p?[A004442(A050321(n))]`
-/

namespace A065079.P17459611190601815091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A050321 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065079.P17459611190601815091

namespace A065079

/-- `p?[A004442(A050321(n))]` -/
def P17459611190601815091.Spec : Prop :=
  ∀ n, P17459611190601815091.a n = A065079 (n + 1)

end A065079

/-! ## A065079.P17485370480489387585

`record[A014963(A050321(n+1)+1)]`
-/

namespace A065079.P17485370480489387585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A050321 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A065079.P17485370480489387585

namespace A065079

/-- `record[A014963(A050321(n+1)+1)]` -/
def P17485370480489387585.Spec : Prop :=
  ∀ n, P17485370480489387585.a n = A065079 (n + 1)

end A065079

/-! ## A065079.P9296684922020695780

`p?[xor(A000034(4*n), A050321(n))]`
-/

namespace A065079.P9296684922020695780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000034 (4 * n)) (A050321 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065079.P9296684922020695780

namespace A065079

/-- `p?[xor(A000034(4*n), A050321(n))]` -/
def P9296684922020695780.Spec : Prop :=
  ∀ n, P9296684922020695780.a n = A065079 (n + 1)

end A065079

/-! ## A065079.P15213482832425207199

`p?[A008620(3*A050321(n))]`
-/

namespace A065079.P15213482832425207199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A050321 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A065079.P15213482832425207199

namespace A065079

/-- `p?[A008620(3*A050321(n))]` -/
def P15213482832425207199.Spec : Prop :=
  ∀ n, P15213482832425207199.a n = A065079 (n + 1)

end A065079

/-!
# A065080: Denominator of Sum_{k=1..n} d(k)/k, where d() = A000005().

The programs for A065080, there is no canonical definition to state claims against.
-/

/-! ## A065080.P11758139392919704023

`lcm(A000027(a(n-1)), A288868(n))` with `a(0)=1`
-/

namespace A065080.P11758139392919704023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (A000027 (a (n - 1))) (A288868 n)

end

end A065080.P11758139392919704023

/-! ## A065080.P9069093936415913210

`A000027(lcm(a(n-1), A137926(n+1)))` with `a(0)=1`
-/

namespace A065080.P9069093936415913210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (Int.lcm (a (n - 1)) (A137926 (n + 1)))

end

end A065080.P9069093936415913210

/-! ## A065080.P13764048288973643813

`∏[A137927(A137927(n+1)^n)]`
-/

namespace A065080.P13764048288973643813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137927 (A137927 (n + 1) ^ n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A065080.P13764048288973643813

/-! ## A065080.P14525315577243050035

`∏[A014973(n+1)]/A014973(A000079(n))`
-/

namespace A065080.P14525315577243050035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A014973 (A000079 n).toNat : ℚ)

end

end A065080.P14525315577243050035

/-! ## A065080.P5982828918593679844

`A055032(∏[ceil(∏{d}[n+1, #^(#-n)])])`
-/

namespace A065080.P5982828918593679844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ d ∈ Nat.divisors (f2 n), (d : ℚ) ^ ((d : ℤ) - (n : ℤ) : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055032 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A065080.P5982828918593679844

/-!
# A065081: Alternating bit sum (A065359) for n-th prime p: replace 2^k with (-1)^k in binary expansion of p.

The programs for A065081, the canonical program `A065081.P8743477589480820839` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065081 has offset 1).

The definition of A065081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065081.P3560811933287731595

`∑{digits}[A004678(n+1), A102283(#)]`
-/

namespace A065081.P3560811933287731595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A102283 x).sum

end

end A065081.P3560811933287731595

namespace A065081

/-- `∑{digits}[A004678(n+1), A102283(#)]` -/
def P3560811933287731595.Spec : Prop :=
  ∀ n, P3560811933287731595.a n = A065081 (n + 1)

end A065081

/-! ## A065081.P8743477589480820839

`A057427(n)-A065359(A130290(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A065081

/-- `A057427(n)-A065359(A130290(n+1))` -/
def P8743477589480820839.Spec : Prop :=
  ∀ n, P8743477589480820839.a n = A065081 (n + 1)

theorem P8743477589480820839.correct : P8743477589480820839.Spec := by
  intro n
  simp only [A065081, Nat.add_sub_cancel]

end A065081

/-! ## A065081.P7942324114671992390

`∑{digits}[A004678(n+1), A319047(A267515(#))]`
-/

namespace A065081.P7942324114671992390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A319047 (A267515 x).toNat).sum

end

end A065081.P7942324114671992390

namespace A065081

/-- `∑{digits}[A004678(n+1), A319047(A267515(#))]` -/
def P7942324114671992390.Spec : Prop :=
  ∀ n, P7942324114671992390.a n = A065081 (n + 1)

end A065081

/-! ## A065081.P751008803977162111

`A065359(Δ[A007504(n)])`
-/

namespace A065081.P751008803977162111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (f1 (n + 1) - f1 n).toNat

end

end A065081.P751008803977162111

namespace A065081

/-- `A065359(Δ[A007504(n)])` -/
def P751008803977162111.Spec : Prop :=
  ∀ n, P751008803977162111.a n = A065081 (n + 1)

end A065081

/-! ## A065081.P7649932435705780131

`A065359(A000040(n+1))`
-/

namespace A065081.P7649932435705780131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A000040 (n + 1)).toNat

end

end A065081.P7649932435705780131

namespace A065081

/-- `A065359(A000040(n+1))` -/
def P7649932435705780131.Spec : Prop :=
  ∀ n, P7649932435705780131.a n = A065081 (n + 1)

end A065081

/-! ## A065081.P12454886934873283860

`A065359(A008578(n+2))`
-/

namespace A065081.P12454886934873283860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A008578 (n + 2)).toNat

end

end A065081.P12454886934873283860

namespace A065081

/-- `A065359(A008578(n+2))` -/
def P12454886934873283860.Spec : Prop :=
  ∀ n, P12454886934873283860.a n = A065081 (n + 1)

end A065081

/-! ## A065081.P12419807598558441341

`A065359(A182986(n+2))`
-/

namespace A065081.P12419807598558441341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A182986 (n + 2)).toNat

end

end A065081.P12419807598558441341

namespace A065081

/-- `A065359(A182986(n+2))` -/
def P12419807598558441341.Spec : Prop :=
  ∀ n, P12419807598558441341.a n = A065081 (n + 1)

end A065081

/-! ## A065081.P13709864561491769745

`A065359(record[A006530(n+2)])`
-/

namespace A065081.P13709864561491769745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A065081.P13709864561491769745

namespace A065081

/-- `A065359(record[A006530(n+2)])` -/
def P13709864561491769745.Spec : Prop :=
  ∀ n, P13709864561491769745.a n = A065081 (n + 1)

end A065081

/-! ## A065081.P7979641684245945470

`A065359(record[A020639(n+2)])`
-/

namespace A065081.P7979641684245945470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A065081.P7979641684245945470

namespace A065081

/-- `A065359(record[A020639(n+2)])` -/
def P7979641684245945470.Spec : Prop :=
  ∀ n, P7979641684245945470.a n = A065081 (n + 1)

end A065081

/-! ## A065081.P15444939943413924581

`A065359(A052147(n+1)-2)`
-/

namespace A065081.P15444939943413924581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A052147 (n + 1) - 2).toNat

end

end A065081.P15444939943413924581

namespace A065081

/-- `A065359(A052147(n+1)-2)` -/
def P15444939943413924581.Spec : Prop :=
  ∀ n, P15444939943413924581.a n = A065081 (n + 1)

end A065081

/-! ## A065081.P1919378529477992872

`A065359(A007504(n+1)-A007504(n))`
-/

namespace A065081.P1919378529477992872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A007504 (n + 1) - A007504 n).toNat

end

end A065081.P1919378529477992872

namespace A065081

/-- `A065359(A007504(n+1)-A007504(n))` -/
def P1919378529477992872.Spec : Prop :=
  ∀ n, P1919378529477992872.a n = A065081 (n + 1)

end A065081

/-! ## A065081.P18094704615319850760

`A065359(2*A130290(n+1))+A057427(n)`
-/

namespace A065081.P18094704615319850760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (2 * A130290 (n + 1)).toNat + A057427 n

end

end A065081.P18094704615319850760

namespace A065081

/-- `A065359(2*A130290(n+1))+A057427(n)` -/
def P18094704615319850760.Spec : Prop :=
  ∀ n, P18094704615319850760.a n = A065081 (n + 1)

end A065081

/-! ## A065081.P12507206652540579977

`A065359(A130290(n+1)+A130290(n+1)+A057427(n))`
-/

namespace A065081.P12507206652540579977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A130290 (n + 1) + (A130290 (n + 1) + A057427 n)).toNat

end

end A065081.P12507206652540579977

namespace A065081

/-- `A065359(A130290(n+1)+A130290(n+1)+A057427(n))` -/
def P12507206652540579977.Spec : Prop :=
  ∀ n, P12507206652540579977.a n = A065081 (n + 1)

end A065081

/-! ## A065081.P15967783402213126738

`A065359(eq[1, A302055(n)])`
-/

namespace A065081.P15967783402213126738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065081.P15967783402213126738

namespace A065081

/-- `A065359(eq[1, A302055(n)])` -/
def P15967783402213126738.Spec : Prop :=
  ∀ n, P15967783402213126738.a n = A065081 (n + 1)

end A065081

/-! ## A065081.P8191596650510864900

`A065359(A001749(n+1))`
-/

namespace A065081.P8191596650510864900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A001749 (n + 1)).toNat

end

end A065081.P8191596650510864900

namespace A065081

/-- `A065359(A001749(n+1))` -/
def P8191596650510864900.Spec : Prop :=
  ∀ n, P8191596650510864900.a n = A065081 (n + 1)

end A065081

/-! ## A065081.P2934205427974929289

`A065359(A072900(n+1))`
-/

namespace A065081.P2934205427974929289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A072900 (n + 1)).toNat

end

end A065081.P2934205427974929289

namespace A065081

/-- `A065359(A072900(n+1))` -/
def P2934205427974929289.Spec : Prop :=
  ∀ n, P2934205427974929289.a n = A065081 (n + 1)

end A065081

/-! ## A065081.P1806573907520478628

`A065359(record[A051698(n)])`
-/

namespace A065081.P1806573907520478628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A065081.P1806573907520478628

namespace A065081

/-- `A065359(record[A051698(n)])` -/
def P1806573907520478628.Spec : Prop :=
  ∀ n, P1806573907520478628.a n = A065081 (n + 1)

end A065081

/-! ## A065081.P4579075671516939399

`A065359(eq[1, A003415(n)])`
-/

namespace A065081.P4579075671516939399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A065081.P4579075671516939399

namespace A065081

/-- `A065359(eq[1, A003415(n)])` -/
def P4579075671516939399.Spec : Prop :=
  ∀ n, P4579075671516939399.a n = A065081 (n + 1)

end A065081

/-! ## A065081.P12649275814031658347

`A065359(record[A014963(n+2)])`
-/

namespace A065081.P12649275814031658347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A065081.P12649275814031658347

namespace A065081

/-- `A065359(record[A014963(n+2)])` -/
def P12649275814031658347.Spec : Prop :=
  ∀ n, P12649275814031658347.a n = A065081 (n + 1)

end A065081

/-! ## A065081.P2709630647133120092

`A139351(A000040(n+1))-A139351(A100484(n+1))`
-/

namespace A065081.P2709630647133120092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A000040 (n + 1)).toNat - A139351 (A100484 (n + 1)).toNat

end

end A065081.P2709630647133120092

namespace A065081

/-- `A139351(A000040(n+1))-A139351(A100484(n+1))` -/
def P2709630647133120092.Spec : Prop :=
  ∀ n, P2709630647133120092.a n = A065081 (n + 1)

end A065081

/-!
# A065085: Smallest prime having alternating bit sum (A065359) equal to -n, or 0 if no such prime exists.

The programs for A065085, there is no canonical definition to state claims against.
-/

/-! ## A065085.P16549566244691635246

`A001045(2*n+3)%A077334(A151785(n+1))`
-/

namespace A065085.P16549566244691635246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001045 (2 * n + 3)) (A077334 (A151785 (n + 1)).toNat)

end

end A065085.P16549566244691635246

/-! ## A065085.P4688071096298286320

`A007583(n+1)%A348036(A163800(2*n+3))`
-/

namespace A065085.P4688071096298286320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007583 (n + 1)) (A348036 (A163800 (2 * n + 3)).toNat)

end

end A065085.P4688071096298286320

/-!
# A065086: Number of n-digit biquanimous numbers in base 10 not allowing leading zeros.

The programs for A065086, there is no canonical definition to state claims against.
-/

/-! ## A065086.P8841777838106908103

`A065024(n+1)-∑{e}[A000079(n), A065024(#)]`
-/

namespace A065086.P8841777838106908103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065024 (n + 1) - ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A065024 (Nat.factorization (f1 n).natAbs p)

end

end A065086.P8841777838106908103

/-! ## A065086.P3392506100860357912

`Δ[∑{e}[A000079(n), A065024(#)]]`
-/

namespace A065086.P3392506100860357912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A065024 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065086.P3392506100860357912

/-!
# A065087: a(n) = A000166(n)*binomial(n+1,2).

The programs for A065087, the canonical program `A065087.P13993334444845690264` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065087 has offset 0).

The definition of A065087 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065087.P14365086223953709045

`3*A000313(n+2)`
-/

namespace A065087.P14365086223953709045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000313 (n + 2)

end

end A065087.P14365086223953709045

namespace A065087

/-- `3*A000313(n+2)` -/
def P14365086223953709045.Spec : Prop :=
  ∀ n, P14365086223953709045.a n = A065087 n

end A065087

/-! ## A065087.P13993334444845690264

`n/2*A000240(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065087

/-- `n/2*A000240(n+1)` -/
def P13993334444845690264.Spec : Prop :=
  ∀ n, P13993334444845690264.a n = (A065087 n : ℚ)

end A065087

/-! ## A065087.P1706317498281742753

`floor((n!+1)/e)*∑[n]`
-/

namespace A065087.P1706317498281742753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial n + 1 : ℝ) / Real.exp 1⌋ * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A065087.P1706317498281742753

namespace A065087

/-- `floor((n!+1)/e)*∑[n]` -/
def P1706317498281742753.Spec : Prop :=
  ∀ n, P1706317498281742753.a n = A065087 n

end A065087

/-! ## A065087.P9254349649552675769

`∑[n]*A000166(n)`
-/

namespace A065087.P9254349649552675769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000166 n

end

end A065087.P9254349649552675769

namespace A065087

/-- `∑[n]*A000166(n)` -/
def P9254349649552675769.Spec : Prop :=
  ∀ n, P9254349649552675769.a n = A065087 n

end A065087

/-! ## A065087.P5605609669968948302

`3/2*A305730(n)`
-/

namespace A065087.P5605609669968948302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A305730 n : ℚ)

end

end A065087.P5605609669968948302

namespace A065087

/-- `3/2*A305730(n)` -/
def P5605609669968948302.Spec : Prop :=
  ∀ n, P5605609669968948302.a n = (A065087 n : ℚ)

end A065087

/-! ## A065087.P3994920197187438846

`abs(∑[n]*A182386(n))`
-/

namespace A065087.P3994920197187438846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A182386 n|

end

end A065087.P3994920197187438846

namespace A065087

/-- `abs(∑[n]*A182386(n))` -/
def P3994920197187438846.Spec : Prop :=
  ∀ n, P3994920197187438846.a n = A065087 n

end A065087

/-! ## A065087.P2041376565820636804

`∑[n]*A008290(∑[n])`
-/

namespace A065087.P2041376565820636804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A008290 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A065087.P2041376565820636804

namespace A065087

/-- `∑[n]*A008290(∑[n])` -/
def P2041376565820636804.Spec : Prop :=
  ∀ n, P2041376565820636804.a n = A065087 n

end A065087

/-! ## A065087.P9466058582345614165

`∑[n]*A068106(∑[n])`
-/

namespace A065087.P9466058582345614165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A068106 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A065087.P9466058582345614165

namespace A065087

/-- `∑[n]*A068106(∑[n])` -/
def P9466058582345614165.Spec : Prop :=
  ∀ n, P9466058582345614165.a n = A065087 n

end A065087

/-! ## A065087.P1017373994328733823

`∑[n]*A086764(∑[n])`
-/

namespace A065087.P1017373994328733823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A086764 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A065087.P1017373994328733823

namespace A065087

/-- `∑[n]*A086764(∑[n])` -/
def P1017373994328733823.Spec : Prop :=
  ∀ n, P1017373994328733823.a n = A065087 n

end A065087

/-! ## A065087.P286183560000976625

`(n+1)*A000274(n+1)`
-/

namespace A065087.P286183560000976625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000274 (n + 1)

end

end A065087.P286183560000976625

namespace A065087

/-- `(n+1)*A000274(n+1)` -/
def P286183560000976625.Spec : Prop :=
  ∀ n, P286183560000976625.a n = A065087 n

end A065087

/-!
# A065088: a(n) = A000166(n)*binomial(n,2).

The programs for A065088, the canonical program `A065088.P18194710171340571273` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065088 has offset 0).

The definition of A065088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A065088.P18194710171340571273

`A000166(n)*C(n, 2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065088

/-- `A000166(n)*C(n, 2)` -/
def P18194710171340571273.Spec : Prop :=
  ∀ n, P18194710171340571273.a n = A065088 n

theorem P18194710171340571273.correct : P18194710171340571273.Spec := by
  intro n
  simp only [A065088]

end A065088

/-! ## A065088.P14973622406353928203

`C(n, 2)*floor((n!+1)/e)`
-/

namespace A065088.P14973622406353928203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * ⌊(Nat.factorial n + 1 : ℝ) / Real.exp 1⌋

end

end A065088.P14973622406353928203

namespace A065088

/-- `C(n, 2)*floor((n!+1)/e)` -/
def P14973622406353928203.Spec : Prop :=
  ∀ n, P14973622406353928203.a n = A065088 n

end A065088

/-! ## A065088.P2629419785227956562

`(n-1)*floor((n!+1)/e)*∑[n]/(n+1)`
-/

namespace A065088.P2629419785227956562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) * ((⌊(Nat.factorial n + 1 : ℝ) / Real.exp 1⌋ * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / (n + 1 : ℚ))

end

end A065088.P2629419785227956562

namespace A065088

/-- `(n-1)*floor((n!+1)/e)*∑[n]/(n+1)` -/
def P2629419785227956562.Spec : Prop :=
  ∀ n, P2629419785227956562.a n = (A065088 n : ℚ)

end A065088

/-! ## A065088.P17187955328840604963

`abs(C(n, 2)*A182386(n))`
-/

namespace A065088.P17187955328840604963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose n 2 : ℤ) * A182386 n|

end

end A065088.P17187955328840604963

namespace A065088

/-- `abs(C(n, 2)*A182386(n))` -/
def P17187955328840604963.Spec : Prop :=
  ∀ n, P17187955328840604963.a n = A065088 n

end A065088

/-! ## A065088.P17905600183579337816

`(n-1)*A000274(n+1)`
-/

namespace A065088.P17905600183579337816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A000274 (n + 1)

end

end A065088.P17905600183579337816

namespace A065088

/-- `(n-1)*A000274(n+1)` -/
def P17905600183579337816.Spec : Prop :=
  ∀ n, P17905600183579337816.a n = A065088 n

end A065088

/-! ## A065088.P2314733878203149889

`A000166(n)*A161680(n)`
-/

namespace A065088.P2314733878203149889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n * A161680 n

end

end A065088.P2314733878203149889

namespace A065088

/-- `A000166(n)*A161680(n)` -/
def P2314733878203149889.Spec : Prop :=
  ∀ n, P2314733878203149889.a n = A065088 n

end A065088

/-! ## A065088.P9088727712299569791

`(A000217(n)-n)*A000166(n)`
-/

namespace A065088.P9088727712299569791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n - (n : ℤ)) * A000166 n

end

end A065088.P9088727712299569791

namespace A065088

/-- `(A000217(n)-n)*A000166(n)` -/
def P9088727712299569791.Spec : Prop :=
  ∀ n, P9088727712299569791.a n = A065088 n

end A065088

/-! ## A065088.P3877130210400965449

`A065087(n)-n*A000166(n)`
-/

namespace A065088.P3877130210400965449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065087 n - (n : ℤ) * A000166 n

end

end A065088.P3877130210400965449

namespace A065088

/-- `A065087(n)-n*A000166(n)` -/
def P3877130210400965449.Spec : Prop :=
  ∀ n, P3877130210400965449.a n = A065088 n

end A065088

/-! ## A065088.P18271377556040558465

`A000166(n)+A065087(n)-A000240(n+1)`
-/

namespace A065088.P18271377556040558465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n + (A065087 n - A000240 (n + 1))

end

end A065088.P18271377556040558465

namespace A065088

/-- `A000166(n)+A065087(n)-A000240(n+1)` -/
def P18271377556040558465.Spec : Prop :=
  ∀ n, P18271377556040558465.a n = A065088 n

end A065088

/-!
# A065089: Volume (multiplied by 3) of polyhedron formed by points (i,j,k) in Z^3 with i^2+j^2+k^2 = n^2.

The programs for A065089, there is no canonical definition to state claims against.
-/

/-! ## A065089.P16452723076224020529

`A065984(n²)`
-/

namespace A065089.P16452723076224020529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065984 (n ^ 2)

end

end A065089.P16452723076224020529

/-! ## A065089.P1995424783388329433

`∑{digits}[n, A065984(n*#)]`
-/

namespace A065089.P1995424783388329433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A065984 (n * x)).sum

end

end A065089.P1995424783388329433

/-! ## A065089.P18340055527829804223

`lcm(2, A065984(A000290(n)))`
-/

namespace A065089.P18340055527829804223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A065984 (A000290 n).toNat)

end

end A065089.P18340055527829804223

/-! ## A065089.P17892422589210831648

`A000040(n+1)%2*A065984(n^ceil(atan(n)))`
-/

namespace A065089.P17892422589210831648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A065984 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

end

end A065089.P17892422589210831648

/-!
# A065090: Natural numbers which are not odd primes: composites plus 1 and 2.

The programs for A065090, the canonical program `A065090.P2734464943258358199` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065090 has offset 1).

The definition of A065090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065090.P11284316639758718635

`comp[record[∑{p}[comp[2*n], #]]]`
-/

namespace A065090.P11284316639758718635
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A065090.P11284316639758718635

namespace A065090

/-- `comp[record[∑{p}[comp[2*n], #]]]` -/
def P11284316639758718635.Spec : Prop :=
  ∀ n, (P11284316639758718635.a n : ℤ) = A065090 (n + 1)

end A065090

/-! ## A065090.P3841683390368226392

`comp[∑{p}[2*n+1, C(#, 2*n)]]`
-/

namespace A065090.P3841683390368226392
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A065090.P3841683390368226392

namespace A065090

/-- `comp[∑{p}[2*n+1, C(#, 2*n)]]` -/
def P3841683390368226392.Spec : Prop :=
  ∀ n, (P3841683390368226392.a n : ℤ) = A065090 (n + 1)

end A065090

/-! ## A065090.P12144541281417192726

`comp[A071234(n)]`
-/

namespace A065090.P12144541281417192726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071234 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A065090.P12144541281417192726

namespace A065090

/-- `comp[A071234(n)]` -/
def P12144541281417192726.Spec : Prop :=
  ∀ n, (P12144541281417192726.a n : ℤ) = A065090 (n + 1)

end A065090

/-! ## A065090.P17328641014104444907

`comp[A085090(n+1)]`
-/

namespace A065090.P17328641014104444907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A065090.P17328641014104444907

namespace A065090

/-- `comp[A085090(n+1)]` -/
def P17328641014104444907.Spec : Prop :=
  ∀ n, (P17328641014104444907.a n : ℤ) = A065090 (n + 1)

end A065090

/-! ## A065090.P8709008801117282575

`comp[A085910(n+1)]`
-/

namespace A065090.P8709008801117282575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A065090.P8709008801117282575

namespace A065090

/-- `comp[A085910(n+1)]` -/
def P8709008801117282575.Spec : Prop :=
  ∀ n, (P8709008801117282575.a n : ℤ) = A065090 (n + 1)

end A065090

/-! ## A065090.P2331171383423067245

`comp[A351078(n+3)]`
-/

namespace A065090.P2331171383423067245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A065090.P2331171383423067245

namespace A065090

/-- `comp[A351078(n+3)]` -/
def P2331171383423067245.Spec : Prop :=
  ∀ n, (P2331171383423067245.a n : ℤ) = A065090 (n + 1)

end A065090

/-! ## A065090.P8642358504068044245

`comp[abs(A073579(n+1))]`
-/

namespace A065090.P8642358504068044245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A073579 (n + 1)|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A065090.P8642358504068044245

namespace A065090

/-- `comp[abs(A073579(n+1))]` -/
def P8642358504068044245.Spec : Prop :=
  ∀ n, (P8642358504068044245.a n : ℤ) = A065090 (n + 1)

end A065090

/-! ## A065090.P15459198541157415994

`comp[record[A008472(or(1, n))]]`
-/

namespace A065090.P15459198541157415994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (Nat.lor 1 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A065090.P15459198541157415994

namespace A065090

/-- `comp[record[A008472(or(1, n))]]` -/
def P15459198541157415994.Spec : Prop :=
  ∀ n, (P15459198541157415994.a n : ℤ) = A065090 (n + 1)

end A065090

/-! ## A065090.P10968876925044216266

`comp[record[A008472(Δ[n²])]]`
-/

namespace A065090.P10968876925044216266
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A065090.P10968876925044216266

namespace A065090

/-- `comp[record[A008472(Δ[n²])]]` -/
def P10968876925044216266.Spec : Prop :=
  ∀ n, (P10968876925044216266.a n : ℤ) = A065090 (n + 1)

end A065090

/-! ## A065090.P267774967026053184

`comp[A006093(n+2)]+1`
-/

namespace A065090.P267774967026053184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A065090.P267774967026053184

namespace A065090

/-- `comp[A006093(n+2)]+1` -/
def P267774967026053184.Spec : Prop :=
  ∀ n, (P267774967026053184.a n : ℤ) = A065090 (n + 1)

end A065090

/-! ## A065090.P5808609111614733217

`comp[A039915(n+2)]+1`
-/

namespace A065090.P5808609111614733217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039915 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A065090.P5808609111614733217

namespace A065090

/-- `comp[A039915(n+2)]+1` -/
def P5808609111614733217.Spec : Prop :=
  ∀ n, (P5808609111614733217.a n : ℤ) = A065090 (n + 1)

end A065090

/-! ## A065090.P6616852512856630937

`comp[record[A000010(n+3)]]+1`
-/

namespace A065090.P6616852512856630937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A065090.P6616852512856630937

namespace A065090

/-- `comp[record[A000010(n+3)]]+1` -/
def P6616852512856630937.Spec : Prop :=
  ∀ n, (P6616852512856630937.a n : ℤ) = A065090 (n + 1)

end A065090

/-! ## A065090.P13661870641652121241

`comp[∑{p}[A006530(comp[2*n]), #]]`
-/

namespace A065090.P13661870641652121241
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A065090.P13661870641652121241

namespace A065090

/-- `comp[∑{p}[A006530(comp[2*n]), #]]` -/
def P13661870641652121241.Spec : Prop :=
  ∀ n, (P13661870641652121241.a n : ℤ) = A065090 (n + 1)

end A065090

/-! ## A065090.P10040057100509382417

`comp[∑{p}[A020639(comp[2*n]), #]]`
-/

namespace A065090.P10040057100509382417
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A065090.P10040057100509382417

namespace A065090

/-- `comp[∑{p}[A020639(comp[2*n]), #]]` -/
def P10040057100509382417.Spec : Prop :=
  ∀ n, (P10040057100509382417.a n : ℤ) = A065090 (n + 1)

end A065090

/-! ## A065090.P2190908994772025216

`comp[xor(1, A000040(n+1)-1)]`
-/

namespace A065090.P2190908994772025216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000040 (n + 1) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A065090.P2190908994772025216

namespace A065090

/-- `comp[xor(1, A000040(n+1)-1)]` -/
def P2190908994772025216.Spec : Prop :=
  ∀ n, (P2190908994772025216.a n : ℤ) = A065090 (n + 1)

end A065090

/-! ## A065090.P11822281673675192812

`comp[xor(1, eq[1, A001222(n+1)])]`
-/

namespace A065090.P11822281673675192812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A065090.P11822281673675192812

namespace A065090

/-- `comp[xor(1, eq[1, A001222(n+1)])]` -/
def P11822281673675192812.Spec : Prop :=
  ∀ n, (P11822281673675192812.a n : ℤ) = A065090 (n + 1)

end A065090

/-! ## A065090.P17024229109350057547

`comp[xor(1, eq[2, A000005(n+1)])]`
-/

namespace A065090.P17024229109350057547
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A065090.P17024229109350057547

namespace A065090

/-- `comp[xor(1, eq[2, A000005(n+1)])]` -/
def P17024229109350057547.Spec : Prop :=
  ∀ n, (P17024229109350057547.a n : ℤ) = A065090 (n + 1)

end A065090

/-! ## A065090.P16071226012403355331

`comp[C(A006530(n+3), n+2)]`
-/

namespace A065090.P16071226012403355331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 3)).toNat (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A065090.P16071226012403355331

namespace A065090

/-- `comp[C(A006530(n+3), n+2)]` -/
def P16071226012403355331.Spec : Prop :=
  ∀ n, (P16071226012403355331.a n : ℤ) = A065090 (n + 1)

end A065090

/-! ## A065090.P14027471557916478835

`comp[C(A020639(n+3), n+2)]`
-/

namespace A065090.P14027471557916478835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 3)).toNat (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A065090.P14027471557916478835

namespace A065090

/-- `comp[C(A020639(n+3), n+2)]` -/
def P14027471557916478835.Spec : Prop :=
  ∀ n, (P14027471557916478835.a n : ℤ) = A065090 (n + 1)

end A065090

/-! ## A065090.P2734464943258358199

`A018252(n%a(n-1))` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A065090

/-- `A018252(n%a(n-1))` -/
def P2734464943258358199.Spec : Prop :=
  ∀ n, P2734464943258358199.a n = A065090 (n + 1)

theorem P2734464943258358199.correct : P2734464943258358199.Spec := by
  intro n
  simp only [A065090, Nat.add_sub_cancel]

end A065090

/-!
# A065091: Odd primes.

The programs for A065091, the canonical program `A065091.P6971844946592549357` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065091 has offset 1).

The definition of A065091 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A065091.P6971844946592549357

`A000040(n+2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A065091

/-- `A000040(n+2)` -/
def P6971844946592549357.Spec : Prop :=
  ∀ n, P6971844946592549357.a n = A065091 (n + 1)

theorem P6971844946592549357.correct : P6971844946592549357.Spec := by
  intro n
  simp only [A065091, Nat.add_sub_cancel]

end A065091

/-! ## A065091.P14176788922259882673

`p?[2*n+1]`
-/

namespace A065091.P14176788922259882673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A065091.P14176788922259882673

namespace A065091

/-- `p?[2*n+1]` -/
def P14176788922259882673.Spec : Prop :=
  ∀ n, (P14176788922259882673.a n : ℤ) = A065091 (n + 1)

end A065091

/-! ## A065091.P16380177777056404799

`or(1, p?[2*n-1])`
-/

namespace A065091.P16380177777056404799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A065091.P16380177777056404799

namespace A065091

/-- `or(1, p?[2*n-1])` -/
def P16380177777056404799.Spec : Prop :=
  ∀ n, P16380177777056404799.a n = A065091 (n + 1)

end A065091

/-! ## A065091.P7423247985963904050

`∏{d}[p?[2*n-1], #]`
-/

namespace A065091.P7423247985963904050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A065091.P7423247985963904050

namespace A065091

/-- `∏{d}[p?[2*n-1], #]` -/
def P7423247985963904050.Spec : Prop :=
  ∀ n, (P7423247985963904050.a n : ℤ) = A065091 (n + 1)

end A065091

/-! ## A065091.P8581765806214967533

`∑{p}[p?[2*n-1], #]`
-/

namespace A065091.P8581765806214967533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A065091.P8581765806214967533

namespace A065091

/-- `∑{p}[p?[2*n-1], #]` -/
def P8581765806214967533.Spec : Prop :=
  ∀ n, (P8581765806214967533.a n : ℤ) = A065091 (n + 1)

end A065091

/-! ## A065091.P11421268908728579426

`∏{p}[p?[2*n-1], #]`
-/

namespace A065091.P11421268908728579426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A065091.P11421268908728579426

namespace A065091

/-- `∏{p}[p?[2*n-1], #]` -/
def P11421268908728579426.Spec : Prop :=
  ∀ n, (P11421268908728579426.a n : ℤ) = A065091 (n + 1)

end A065091

/-! ## A065091.P11669824570713193094

`root(p?[n+1+n], 2)²`
-/

namespace A065091.P11669824570713193094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A065091.P11669824570713193094

namespace A065091

/-- `root(p?[n+1+n], 2)²` -/
def P11669824570713193094.Spec : Prop :=
  ∀ n, P11669824570713193094.a n = (A065091 (n + 1) : ℝ)

end A065091

/-! ## A065091.P17565659596584076833

`lcm(2, p?[n+1+n])/2`
-/

namespace A065091.P17565659596584076833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2

end

end A065091.P17565659596584076833

namespace A065091

/-- `lcm(2, p?[n+1+n])/2` -/
def P17565659596584076833.Spec : Prop :=
  ∀ n, P17565659596584076833.a n = (A065091 (n + 1) : ℚ)

end A065091

/-! ## A065091.P6153239953480118505

`or(1, p?[n+1+n]-1)`
-/

namespace A065091.P6153239953480118505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1)

end

end A065091.P6153239953480118505

namespace A065091

/-- `or(1, p?[n+1+n]-1)` -/
def P6153239953480118505.Spec : Prop :=
  ∀ n, P6153239953480118505.a n = A065091 (n + 1)

end A065091

/-! ## A065091.P4048482672450479366

`xor(1, p?[n+1+n])+1`
-/

namespace A065091.P4048482672450479366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 1

end

end A065091.P4048482672450479366

namespace A065091

/-- `xor(1, p?[n+1+n])+1` -/
def P4048482672450479366.Spec : Prop :=
  ∀ n, (P4048482672450479366.a n : ℤ) = A065091 (n + 1)

end A065091

/-! ## A065091.P16725170610385924254

`root(p?[n+1+n]^3, 3)`
-/

namespace A065091.P16725170610385924254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 3 : ℝ) ^ (1 / (3 : ℝ))

end

end A065091.P16725170610385924254

namespace A065091

/-- `root(p?[n+1+n]^3, 3)` -/
def P16725170610385924254.Spec : Prop :=
  ∀ n, P16725170610385924254.a n = (A065091 (n + 1) : ℝ)

end A065091

/-! ## A065091.P9518023325358300567

`or(1, or(1, p?[n+1+n]))`
-/

namespace A065091.P9518023325358300567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A065091.P9518023325358300567

namespace A065091

/-- `or(1, or(1, p?[n+1+n]))` -/
def P9518023325358300567.Spec : Prop :=
  ∀ n, (P9518023325358300567.a n : ℤ) = A065091 (n + 1)

end A065091

/-! ## A065091.P13224252179544458502

`∑{d}[p?[n+1+n], #]-1`
-/

namespace A065091.P13224252179544458502
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - 1

end

end A065091.P13224252179544458502

namespace A065091

/-- `∑{d}[p?[n+1+n], #]-1` -/
def P13224252179544458502.Spec : Prop :=
  ∀ n, P13224252179544458502.a n = A065091 (n + 1)

end A065091

/-! ## A065091.P17705864557150564477

`∏{d}[∏{d}[p?[n+1+n], #], #]`
-/

namespace A065091.P17705864557150564477
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A065091.P17705864557150564477

namespace A065091

/-- `∏{d}[∏{d}[p?[n+1+n], #], #]` -/
def P17705864557150564477.Spec : Prop :=
  ∀ n, (P17705864557150564477.a n : ℤ) = A065091 (n + 1)

end A065091

/-! ## A065091.P15406600320450337083

`∑{p}[∑{p}[p?[n+1+n], #], #]`
-/

namespace A065091.P15406600320450337083
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A065091.P15406600320450337083

namespace A065091

/-- `∑{p}[∑{p}[p?[n+1+n], #], #]` -/
def P15406600320450337083.Spec : Prop :=
  ∀ n, (P15406600320450337083.a n : ℤ) = A065091 (n + 1)

end A065091

/-! ## A065091.P503221302439591725

`∏{p}[∏{p}[p?[n+1+n], #], #]`
-/

namespace A065091.P503221302439591725
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A065091.P503221302439591725

namespace A065091

/-- `∏{p}[∏{p}[p?[n+1+n], #], #]` -/
def P503221302439591725.Spec : Prop :=
  ∀ n, (P503221302439591725.a n : ℤ) = A065091 (n + 1)

end A065091

/-! ## A065091.P8529436115042239780

`p?[n+1+n]/gcd(n, n+1)`
-/

namespace A065091.P8529436115042239780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A065091.P8529436115042239780

namespace A065091

/-- `p?[n+1+n]/gcd(n, n+1)` -/
def P8529436115042239780.Spec : Prop :=
  ∀ n, P8529436115042239780.a n = (A065091 (n + 1) : ℚ)

end A065091

/-! ## A065091.P10712169237741853088

`p?[n+1+n]+C(n, n+1)`
-/

namespace A065091.P10712169237741853088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + Nat.choose n (n + 1)

end

end A065091.P10712169237741853088

namespace A065091

/-- `p?[n+1+n]+C(n, n+1)` -/
def P10712169237741853088.Spec : Prop :=
  ∀ n, (P10712169237741853088.a n : ℤ) = A065091 (n + 1)

end A065091

/-! ## A065091.P7497346078626468258

`Δ[A007504(n+1)]`
-/

namespace A065091.P7497346078626468258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065091.P7497346078626468258

namespace A065091

/-- `Δ[A007504(n+1)]` -/
def P7497346078626468258.Spec : Prop :=
  ∀ n, P7497346078626468258.a n = A065091 (n + 1)

end A065091

/-! ## A065091.P17767650472675651754

`A001748(n+2)/3`
-/

namespace A065091.P17767650472675651754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 2) : ℚ) / 3

end

end A065091.P17767650472675651754

namespace A065091

/-- `A001748(n+2)/3` -/
def P17767650472675651754.Spec : Prop :=
  ∀ n, P17767650472675651754.a n = (A065091 (n + 1) : ℚ)

end A065091

/-!
# A065092: Primes with property that when written in base two complementing any single bit yields a composite number.

The programs for A065092, there is no canonical definition to state claims against.
-/

/-! ## A065092.P11022996118081031677

`A137985(comp[A004018((1-n)²+n)])`
-/

namespace A065092.P11022996118081031677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137985 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A065092.P11022996118081031677

/-! ## A065092.P13023519673770599947

`A137985(∑[A186995(3*n+4)%3])`
-/

namespace A065092.P13023519673770599947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186995 (3 * n + 4)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137985 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A065092.P13023519673770599947

/-! ## A065092.P11545193555253772950

`A137985(A061128(n+1)+A023705(n+1))`
-/

namespace A065092.P11545193555253772950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137985 (A061128 (n + 1) + A023705 (n + 1)).toNat

end

end A065092.P11545193555253772950

/-! ## A065092.P1076180944022924928

`A137985(lt[A031505(n+1), A283884(n+1)])`
-/

namespace A065092.P1076180944022924928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137985 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A065092.P1076180944022924928

/-! ## A065092.P5115535894745114530

`A137985(A098572(n+1))%A274345(2*n+3)`
-/

namespace A065092.P5115535894745114530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137985 (A098572 (n + 1)).toNat) (A274345 (2 * n + 3))

end

end A065092.P5115535894745114530

/-!
# A065093: Convolution of A000010 with itself.

The programs for A065093, there is no canonical definition to state claims against.
-/

/-! ## A065093.P4807789768948314685

`A340995(∑[n+2]+3)`
-/

namespace A065093.P4807789768948314685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340995 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A065093.P4807789768948314685

/-! ## A065093.P6596373420507088003

`and(A126646(n), A340995(A340266(n+1)))`
-/

namespace A065093.P6596373420507088003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A340995 (A340266 (n + 1)).toNat)

end

end A065093.P6596373420507088003

/-! ## A065093.P4110215181005392619

`A340995(A340266(n+1))+A000038(n+1)`
-/

namespace A065093.P4110215181005392619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340995 (A340266 (n + 1)).toNat + A000038 (n + 1)

end

end A065093.P4110215181005392619

/-! ## A065093.P11731969742822312153

`A340995(A340266(n+1))%A131887(n+1)`
-/

namespace A065093.P11731969742822312153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340995 (A340266 (n + 1)).toNat) (A131887 (n + 1))

end

end A065093.P11731969742822312153

/-! ## A065093.P8710369938646491972

`A001511(2*n+1)*A340995(A340266(n+1))`
-/

namespace A065093.P8710369938646491972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A340995 (A340266 (n + 1)).toNat

end

end A065093.P8710369938646491972

/-! ## A065093.P14750300476661520564

`A340995(A340266(n+1))+A008683(16*(n+1))`
-/

namespace A065093.P14750300476661520564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340995 (A340266 (n + 1)).toNat + A008683 (16 * (n + 1))

end

end A065093.P14750300476661520564

/-! ## A065093.P3406325192531086493

`A097325(A152947(n+1))*A340995(A340266(n+1))`
-/

namespace A065093.P3406325192531086493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (A152947 (n + 1)).toNat * A340995 (A340266 (n + 1)).toNat

end

end A065093.P3406325192531086493

/-!
# A065094: a(1) = 1, a(n+1) is the sum of a(n) and floor( arithmetic mean of a(1) ... a(n) ).

The programs for A065094, there is no canonical definition to state claims against.
-/

/-! ## A065094.P2565730987482510611

`A241772(n)+a(n-1)` with `a(0)=1`
-/

namespace A065094.P2565730987482510611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A241772 n + a (n - 1)

end

end A065094.P2565730987482510611

/-! ## A065094.P9497118873776936552

`∑[A241772(round(1/(n+1)+n))]`
-/

namespace A065094.P9497118873776936552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241772 (SequenceMachineLib.roundAway (1 / (n + 1 : ℚ) + (n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065094.P9497118873776936552

/-! ## A065094.P13969909122716615667

`∑[A241772(n+1)]+1-A241772(n+1)`
-/

namespace A065094.P13969909122716615667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A241772 (n + 1))

end

end A065094.P13969909122716615667

/-! ## A065094.P7515412373480397766

`∑[A241772(A028310(n))%A182361(n)²]`
-/

namespace A065094.P7515412373480397766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241772 (A028310 n).toNat) (A182361 n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065094.P7515412373480397766

/-! ## A065094.P7269198225902520721

`∑[A241772(A028310(n))%A000051(n)]`
-/

namespace A065094.P7269198225902520721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241772 (A028310 n).toNat) (A000051 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065094.P7269198225902520721

/-!
# A065095: a(1) = 1, a(n+1) is the sum of a(n) and ceiling( arithmetic mean of a(1) ... a(n) ).

The programs for A065095, there is no canonical definition to state claims against.
-/

/-! ## A065095.P4747560353274794476

`∑[A023894(A187829(n+1))+A023894(n)]`
-/

namespace A065095.P4747560353274794476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023894 (A187829 (n + 1)).toNat + A023894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065095.P4747560353274794476

/-! ## A065095.P13153528025253570518

`∑[A280949(A077168(n))]`
-/

namespace A065095.P13153528025253570518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280949 (A077168 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065095.P13153528025253570518

/-! ## A065095.P5803359127569900429

`A235963(A000716(n))`
-/

namespace A065095.P5803359127569900429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A000716 n).toNat

end

end A065095.P5803359127569900429

/-! ## A065095.P11870941200978693294

`A035936(A338223(n+2))-A000196(n)`
-/

namespace A065095.P11870941200978693294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 (A338223 (n + 2)).toNat - A000196 n

end

end A065095.P11870941200978693294

/-! ## A065095.P558398956469616497

`A171173(A094023(n)+A094023(n+1)²)`
-/

namespace A065095.P558398956469616497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171173 (A094023 n + A094023 (n + 1) ^ 2).toNat

end

end A065095.P558398956469616497

/-!
# A065096: Sums of lists produced by a variant of the iteration that produces the Catalan numbers: start with 0 and at each iteration replace each integer k with the list 0,1,...,k-1,k,k+1,k,k-1,...,1,0 and let a(n) be the sum of the resulting (flattened) list after n iterations.

The programs for A065096, the canonical program `A065096.P11135851872717810098` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A065096 has offset 0).

The definition of A065096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A065096.P13759543189893559780

`A057427(n)*A110440(A000124(n))`
-/

namespace A065096.P13759543189893559780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A110440 (A000124 n).toNat

end

end A065096.P13759543189893559780

namespace A065096

/-- `A057427(n)*A110440(A000124(n))` -/
def P13759543189893559780.Spec : Prop :=
  ∀ n, P13759543189893559780.a n = A065096 n

end A065096

/-! ## A065096.P8686610071961246290

`and(A057428(n), A110440(A000124(n)))`
-/

namespace A065096.P8686610071961246290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A110440 (A000124 n).toNat)

end

end A065096.P8686610071961246290

namespace A065096

/-- `and(A057428(n), A110440(A000124(n)))` -/
def P8686610071961246290.Spec : Prop :=
  ∀ n, P8686610071961246290.a n = A065096 n

end A065096

/-! ## A065096.P9836472625200488868

`A239204(n)-A001003(n+1)`
-/

namespace A065096.P9836472625200488868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239204 n - A001003 (n + 1)

end

end A065096.P9836472625200488868

namespace A065096

/-- `A239204(n)-A001003(n+1)` -/
def P9836472625200488868.Spec : Prop :=
  ∀ n, P9836472625200488868.a n = A065096 n

end A065096

/-! ## A065096.P3075678946369976960

`A010683(n+1)-A006318(n+1)`
-/

namespace A065096.P3075678946369976960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010683 (n + 1) - A006318 (n + 1)

end

end A065096.P3075678946369976960

namespace A065096

/-- `A010683(n+1)-A006318(n+1)` -/
def P3075678946369976960.Spec : Prop :=
  ∀ n, P3075678946369976960.a n = A065096 n

end A065096

/-! ## A065096.P11135851872717810098

`A010683(n+1)-A025240(n+2)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A065096

/-- `A010683(n+1)-A025240(n+2)` -/
def P11135851872717810098.Spec : Prop :=
  ∀ n, P11135851872717810098.a n = A065096 n

theorem P11135851872717810098.correct : P11135851872717810098.Spec := by
  intro n
  simp only [A065096]

end A065096

/-! ## A065096.P1242505149915534163

`A010683(n+1)-2*A001003(n+1)`
-/

namespace A065096.P1242505149915534163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010683 (n + 1) - 2 * A001003 (n + 1)

end

end A065096.P1242505149915534163

namespace A065096

/-- `A010683(n+1)-2*A001003(n+1)` -/
def P1242505149915534163.Spec : Prop :=
  ∀ n, P1242505149915534163.a n = A065096 n

end A065096

/-! ## A065096.P1197378212653102273

`A239204(n)+A239204(n)-A010683(n+1)`
-/

namespace A065096.P1197378212653102273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239204 n + (A239204 n - A010683 (n + 1))

end

end A065096.P1197378212653102273

namespace A065096

/-- `A239204(n)+A239204(n)-A010683(n+1)` -/
def P1197378212653102273.Spec : Prop :=
  ∀ n, P1197378212653102273.a n = A065096 n

end A065096

/-! ## A065096.P6371941219258722272

`A100299(n+4)-(A100300(n+3)+A001003(n+1))`
-/

namespace A065096.P6371941219258722272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100299 (n + 4) - (A100300 (n + 3) + A001003 (n + 1))

end

end A065096.P6371941219258722272

namespace A065096

/-- `A100299(n+4)-(A100300(n+3)+A001003(n+1))` -/
def P6371941219258722272.Spec : Prop :=
  ∀ n, P6371941219258722272.a n = A065096 n

end A065096

/-! ## A065096.P7337378725071444602

`A110440(A000124(n))%A001850(n)`
-/

namespace A065096.P7337378725071444602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110440 (A000124 n).toNat) (A001850 n)

end

end A065096.P7337378725071444602

namespace A065096

/-- `A110440(A000124(n))%A001850(n)` -/
def P7337378725071444602.Spec : Prop :=
  ∀ n, P7337378725071444602.a n = A065096 n

end A065096

/-!
# A065097: a(n) = ((2n+1) + (2n-1) - 1)!/((2n+1)!*(2n-1)!).

The programs for A065097, there is no canonical definition to state claims against.
-/

/-! ## A065097.P4864062943165985709

`abs(record[(6/(n+1)-4)*a(n-1)])` with `a(0)=-1, a(1)=1, a(2)=1`
-/

namespace A065097.P4864062943165985709
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [-1, 1, 1] fun n f1 =>
  (6 / (n + 1 : ℚ) - 4) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A065097.P4864062943165985709

/-! ## A065097.P3158487256172593246

`A130380(2*n)`
-/

namespace A065097.P3158487256172593246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130380 (2 * n)

end

end A065097.P3158487256172593246

/-! ## A065097.P12698053149435723471

`A358585(Δ[n²])`
-/

namespace A065097.P12698053149435723471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358585 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A065097.P12698053149435723471

/-! ## A065097.P14014095268663221

`A358586(Δ[n²])`
-/

namespace A065097.P14014095268663221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358586 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A065097.P14014095268663221

/-! ## A065097.P1631778588039291873

`ceil(A048990(n)/2)`
-/

namespace A065097.P1631778588039291873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048990 n : ℚ) / 2⌉

end

end A065097.P1631778588039291873

/-! ## A065097.P6722641712864199077

`A349740(∑[4*n])`
-/

namespace A065097.P6722641712864199077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349740 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065097.P6722641712864199077

/-! ## A065097.P16787628646628663994

`ceil(record[A090192(n)/2])`
-/

namespace A065097.P16787628646628663994
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090192 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A065097.P16787628646628663994

/-! ## A065097.P17741771165744898567

`A028304(abs(1-4*n))`
-/

namespace A065097.P17741771165744898567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 |1 - (4 * n : ℤ)|.toNat

end

end A065097.P17741771165744898567

/-! ## A065097.P7484713933956776614

`ceil(A000108(2*n)/2)`
-/

namespace A065097.P7484713933956776614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000108 (2 * n) : ℚ) / 2⌉

end

end A065097.P7484713933956776614

/-! ## A065097.P8885771695533386289

`ceil(A168491(2*n)/2)`
-/

namespace A065097.P8885771695533386289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A168491 (2 * n) : ℚ) / 2⌉

end

end A065097.P8885771695533386289

