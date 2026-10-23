import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A130300: A007318 * A130296.

The programs for A130300, the canonical program `A130300.P17282070162645378256` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130300 has offset 1).

The definition of A130300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130300.P17282070162645378256

`round(A131033(n+1)/2*A055248(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A130300

/-- `round(A131033(n+1)/2*A055248(n))` -/
def P17282070162645378256.Spec : Prop :=
  ∀ n, P17282070162645378256.a n = A130300 (n + 1)

theorem P17282070162645378256.correct : P17282070162645378256.Spec := by
  intro n
  simp only [A130300, Nat.add_sub_cancel]

end A130300

/-! ## A130300.P11224899692268882178

`A097067(A130296(n+1))+A055248(n)`
-/

namespace A130300.P11224899692268882178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 (A130296 (n + 1)).toNat + A055248 n

end

end A130300.P11224899692268882178

namespace A130300

/-- `A097067(A130296(n+1))+A055248(n)` -/
def P11224899692268882178.Spec : Prop :=
  ∀ n, P11224899692268882178.a n = A130300 (n + 1)

end A130300

/-! ## A130300.P11566332337503460525

`A139756(A130296(n+1))+abs(A103316(n))`
-/

namespace A130300.P11566332337503460525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (A130296 (n + 1)).toNat + |A103316 n|

end

end A130300.P11566332337503460525

namespace A130300

/-- `A139756(A130296(n+1))+abs(A103316(n))` -/
def P11566332337503460525.Spec : Prop :=
  ∀ n, P11566332337503460525.a n = A130300 (n + 1)

end A130300

/-! ## A130300.P11496502890579973819

`A004525(A055248(n)*A131033(n+1))`
-/

namespace A130300.P11496502890579973819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A055248 n * A131033 (n + 1)).toNat

end

end A130300.P11496502890579973819

namespace A130300

/-- `A004525(A055248(n)*A131033(n+1))` -/
def P11496502890579973819.Spec : Prop :=
  ∀ n, P11496502890579973819.a n = A130300 (n + 1)

end A130300

/-! ## A130300.P12908899228056901081

`A026741(A055248(n)*A131033(n+1))`
-/

namespace A130300.P12908899228056901081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A055248 n * A131033 (n + 1)).toNat

end

end A130300.P12908899228056901081

namespace A130300

/-- `A026741(A055248(n)*A131033(n+1))` -/
def P12908899228056901081.Spec : Prop :=
  ∀ n, P12908899228056901081.a n = A130300 (n + 1)

end A130300

/-! ## A130300.P2474494999961541760

`A110654(A055248(n)*A131033(n+1))`
-/

namespace A130300.P2474494999961541760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A055248 n * A131033 (n + 1)).toNat

end

end A130300.P2474494999961541760

namespace A130300

/-- `A110654(A055248(n)*A131033(n+1))` -/
def P2474494999961541760.Spec : Prop :=
  ∀ n, P2474494999961541760.a n = A130300 (n + 1)

end A130300

/-!
# A130301: Triangle read by rows: A130296 * A007318, as infinite lower triangular matrices.

The programs for A130301, the canonical program `A130301.P9351493198226008090` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130301 has offset 1).

The definition of A130301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130301.P9397744285040954357

`A130296(n+1)+A135278(n)-1`
-/

namespace A130301.P9397744285040954357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1) + (A135278 n - 1)

end

end A130301.P9397744285040954357

namespace A130301

/-- `A130296(n+1)+A135278(n)-1` -/
def P9397744285040954357.Spec : Prop :=
  ∀ n, P9397744285040954357.a n = A130301 (n + 1)

end A130301

/-! ## A130301.P3180493076283589648

`ceil(ratio[A340804(n+1)]/2)-(1-A135278(n))`
-/

namespace A130301.P3180493076283589648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ) / 2⌉ - (1 - A135278 n)

end

end A130301.P3180493076283589648

namespace A130301

/-- `ceil(ratio[A340804(n+1)]/2)-(1-A135278(n))` -/
def P3180493076283589648.Spec : Prop :=
  ∀ n, P3180493076283589648.a n = A130301 (n + 1)

end A130301

/-! ## A130301.P8189601556333784502

`or(A007318(A080036(n)), A198954(n))`
-/

namespace A130301.P8189601556333784502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007318 (A080036 n).toNat) (A198954 n)

end

end A130301.P8189601556333784502

namespace A130301

/-- `or(A007318(A080036(n)), A198954(n))` -/
def P8189601556333784502.Spec : Prop :=
  ∀ n, P8189601556333784502.a n = A130301 (n + 1)

end A130301

/-! ## A130301.P9351493198226008090

`A074909(n+1)+A003056(n*A010054(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A130301

/-- `A074909(n+1)+A003056(n*A010054(n))` -/
def P9351493198226008090.Spec : Prop :=
  ∀ n, P9351493198226008090.a n = A130301 (n + 1)

theorem P9351493198226008090.correct : P9351493198226008090.Spec := by
  intro n
  simp only [A130301, Nat.add_sub_cancel]

end A130301

/-! ## A130301.P6013041456333972316

`A074909(n+1)+A051933(n*A010054(n))`
-/

namespace A130301.P6013041456333972316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) + A051933 ((n : ℤ) * A010054 n).toNat

end

end A130301.P6013041456333972316

namespace A130301

/-- `A074909(n+1)+A051933(n*A010054(n))` -/
def P6013041456333972316.Spec : Prop :=
  ∀ n, P6013041456333972316.a n = A130301 (n + 1)

end A130301

/-! ## A130301.P2398199229683867193

`A001263(n+1)*A143956(n+1)/A124927(n)`
-/

namespace A130301.P2398199229683867193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) * A143956 (n + 1) : ℚ) / (A124927 n : ℚ)

end

end A130301.P2398199229683867193

namespace A130301

/-- `A001263(n+1)*A143956(n+1)/A124927(n)` -/
def P2398199229683867193.Spec : Prop :=
  ∀ n, P2398199229683867193.a n = (A130301 (n + 1) : ℚ)

end A130301

/-! ## A130301.P3649217229355110438

`A074909(n+1)+n-A352520(n)`
-/

namespace A130301.P3649217229355110438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) + ((n : ℤ) - A352520 n)

end

end A130301.P3649217229355110438

namespace A130301

/-- `A074909(n+1)+n-A352520(n)` -/
def P3649217229355110438.Spec : Prop :=
  ∀ n, P3649217229355110438.a n = A130301 (n + 1)

end A130301

/-!
# A130302: A000012 * A130296.

The programs for A130302, the canonical program `A130302.P1457114923218138745` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130302 has offset 1).

The definition of A130302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130302.P5373326177169688338

`C(A123578(n)+2, 2)%comp[∑[n]]`
-/

namespace A130302.P5373326177169688338
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A123578 n + 2).toNat 2 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A130302.P5373326177169688338

namespace A130302

/-- `C(A123578(n)+2, 2)%comp[∑[n]]` -/
def P5373326177169688338.Spec : Prop :=
  ∀ n, (P5373326177169688338.a n : ℤ) = A130302 (n + 1)

end A130302

/-! ## A130302.P9075972217779106047

`A004736(n+1)+n*char[∑[n]]`
-/

namespace A130302.P9075972217779106047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + ((n * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A130302.P9075972217779106047

namespace A130302

/-- `A004736(n+1)+n*char[∑[n]]` -/
def P9075972217779106047.Spec : Prop :=
  ∀ n, P9075972217779106047.a n = A130302 (n + 1)

end A130302

/-! ## A130302.P15293657237188056709

`n*char[∑[n]]+A025581(n)+1`
-/

namespace A130302.P15293657237188056709
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ) + A025581 n + 1

end

end A130302.P15293657237188056709

namespace A130302

/-- `n*char[∑[n]]+A025581(n)+1` -/
def P15293657237188056709.Spec : Prop :=
  ∀ n, P15293657237188056709.a n = A130302 (n + 1)

end A130302

/-! ## A130302.P16213676876961370299

`n*A010054(n)+C(comp[∑[n]]-n, 2)-n`
-/

namespace A130302.P16213676876961370299
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010054 n + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A130302.P16213676876961370299

namespace A130302

/-- `n*A010054(n)+C(comp[∑[n]]-n, 2)-n` -/
def P16213676876961370299.Spec : Prop :=
  ∀ n, P16213676876961370299.a n = A130302 (n + 1)

end A130302

/-! ## A130302.P17907851120697123181

`A158823(n+1)/A144328(n+1)`
-/

namespace A130302.P17907851120697123181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158823 (n + 1) : ℚ) / (A144328 (n + 1) : ℚ)

end

end A130302.P17907851120697123181

namespace A130302

/-- `A158823(n+1)/A144328(n+1)` -/
def P17907851120697123181.Spec : Prop :=
  ∀ n, P17907851120697123181.a n = (A130302 (n + 1) : ℚ)

end A130302

/-! ## A130302.P1457114923218138745

`C(A144257(n+1)+1, A025581(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A130302

/-- `C(A144257(n+1)+1, A025581(n))` -/
def P1457114923218138745.Spec : Prop :=
  ∀ n, (P1457114923218138745.a n : ℤ) = A130302 (n + 1)

theorem P1457114923218138745.correct : P1457114923218138745.Spec := by
  intro n
  simp only [A130302, Nat.add_sub_cancel]

end A130302

/-! ## A130302.P2728113962894864757

`A131414(n+1)+1-A130303(n+1)`
-/

namespace A130302.P2728113962894864757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131414 (n + 1) + (1 - A130303 (n + 1))

end

end A130302.P2728113962894864757

namespace A130302

/-- `A131414(n+1)+1-A130303(n+1)` -/
def P2728113962894864757.Spec : Prop :=
  ∀ n, P2728113962894864757.a n = A130302 (n + 1)

end A130302

/-! ## A130302.P2928598027457078587

`A130296(n+1)+A131414(n+1)-A158860(n+1)`
-/

namespace A130302.P2928598027457078587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1) + (A131414 (n + 1) - A158860 (n + 1))

end

end A130302.P2928598027457078587

namespace A130302

/-- `A130296(n+1)+A131414(n+1)-A158860(n+1)` -/
def P2928598027457078587.Spec : Prop :=
  ∀ n, P2928598027457078587.a n = A130302 (n + 1)

end A130302

/-! ## A130302.P5054017854918450483

`C(A144257(A014132(n+1)), A025581(n))`
-/

namespace A130302.P5054017854918450483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A144257 (A014132 (n + 1)).toNat).toNat (A025581 n).toNat

end

end A130302.P5054017854918450483

namespace A130302

/-- `C(A144257(A014132(n+1)), A025581(n))` -/
def P5054017854918450483.Spec : Prop :=
  ∀ n, (P5054017854918450483.a n : ℤ) = A130302 (n + 1)

end A130302

/-! ## A130302.P14620560330652870168

`A000005(A130321(n))+n*char[∑[n]]`
-/

namespace A130302.P14620560330652870168
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat + ((n * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A130302.P14620560330652870168

namespace A130302

/-- `A000005(A130321(n))+n*char[∑[n]]` -/
def P14620560330652870168.Spec : Prop :=
  ∀ n, P14620560330652870168.a n = A130302 (n + 1)

end A130302

/-!
# A130303: A130296 * A000012.

The programs for A130303, the canonical program `A130303.P17992843340813991066` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130303 has offset 1).

The definition of A130303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130303.P4363366579646981348

`∑[char[∑[n]]]²-comp[C(comp[∑[n]]-n, 2)+1+n]`
-/

namespace A130303.P4363366579646981348
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + 1 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ)

end

end A130303.P4363366579646981348

namespace A130303

/-- `∑[char[∑[n]]]²-comp[C(comp[∑[n]]-n, 2)+1+n]` -/
def P4363366579646981348.Spec : Prop :=
  ∀ n, P4363366579646981348.a n = A130303 (n + 1)

end A130303

/-! ## A130303.P11942488360525585197

`abs(C(comp[∑[n]]-n, 2)-(n+1))+round(sqrt(2*n))*char[∑[n]]+1`
-/

namespace A130303.P11942488360525585197
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)| + (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) + 1)

end

end A130303.P11942488360525585197

namespace A130303

/-- `abs(C(comp[∑[n]]-n, 2)-(n+1))+round(sqrt(2*n))*char[∑[n]]+1` -/
def P11942488360525585197.Spec : Prop :=
  ∀ n, P11942488360525585197.a n = A130303 (n + 1)

end A130303

/-! ## A130303.P13611677179022443874

`round(sqrt(2*n))*char[∑[n]]+1-∑[1-round(sqrt(2*(n+1)))*char[∑[n]]]`
-/

namespace A130303.P13611677179022443874
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) * ((if ∃ j, f4 j = n then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1 - ∑ j ∈ Finset.range (n + 1), f3 j

end

end A130303.P13611677179022443874

namespace A130303

/-- `round(sqrt(2*n))*char[∑[n]]+1-∑[1-round(sqrt(2*(n+1)))*char[∑[n]]]` -/
def P13611677179022443874.Spec : Prop :=
  ∀ n, P13611677179022443874.a n = A130303 (n + 1)

end A130303

/-! ## A130303.P14677118820072504545

`lcm(2, A143956(n+1))/2`
-/

namespace A130303.P14677118820072504545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A143956 (n + 1)) : ℚ) / 2

end

end A130303.P14677118820072504545

namespace A130303

/-- `lcm(2, A143956(n+1))/2` -/
def P14677118820072504545.Spec : Prop :=
  ∀ n, P14677118820072504545.a n = (A130303 (n + 1) : ℚ)

end A130303

/-! ## A130303.P16619320204102806292

`lcm(4, A143593(n+1))/4`
-/

namespace A130303.P16619320204102806292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (A143593 (n + 1)) : ℚ) / 4

end

end A130303.P16619320204102806292

namespace A130303

/-- `lcm(4, A143593(n+1))/4` -/
def P16619320204102806292.Spec : Prop :=
  ∀ n, P16619320204102806292.a n = (A130303 (n + 1) : ℚ)

end A130303

/-! ## A130303.P5078581093309926855

`ceil(A099375(n)/(2-char[∑[n]]))`
-/

namespace A130303.P5078581093309926855
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099375 n : ℚ) / (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ)⌉

end

end A130303.P5078581093309926855

namespace A130303

/-- `ceil(A099375(n)/(2-char[∑[n]]))` -/
def P5078581093309926855.Spec : Prop :=
  ∀ n, P5078581093309926855.a n = A130303 (n + 1)

end A130303

/-! ## A130303.P7589403589070513996

`A026741(A143956(n+1))`
-/

namespace A130303.P7589403589070513996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A143956 (n + 1)).toNat

end

end A130303.P7589403589070513996

namespace A130303

/-- `A026741(A143956(n+1))` -/
def P7589403589070513996.Spec : Prop :=
  ∀ n, P7589403589070513996.a n = A130303 (n + 1)

end A130303

/-! ## A130303.P2064481082577350508

`A060819(A143593(n+1))`
-/

namespace A130303.P2064481082577350508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A143593 (n + 1)).toNat

end

end A130303.P2064481082577350508

namespace A130303

/-- `A060819(A143593(n+1))` -/
def P2064481082577350508.Spec : Prop :=
  ∀ n, P2064481082577350508.a n = A130303 (n + 1)

end A130303

/-! ## A130303.P6297292711694533232

`A029579(A185782(n+1))`
-/

namespace A130303.P6297292711694533232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A185782 (n + 1)).toNat

end

end A130303.P6297292711694533232

namespace A130303

/-- `A029579(A185782(n+1))` -/
def P6297292711694533232.Spec : Prop :=
  ∀ n, P6297292711694533232.a n = A130303 (n + 1)

end A130303

/-! ## A130303.P15426082123991376623

`A143956(n+1)/A238303(n)`
-/

namespace A130303.P15426082123991376623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143956 (n + 1) : ℚ) / (A238303 n : ℚ)

end

end A130303.P15426082123991376623

namespace A130303

/-- `A143956(n+1)/A238303(n)` -/
def P15426082123991376623.Spec : Prop :=
  ∀ n, P15426082123991376623.a n = (A130303 (n + 1) : ℚ)

end A130303

/-! ## A130303.P11218806764851691248

`gcd(A101493(n), A143593(n+1))`
-/

namespace A130303.P11218806764851691248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101493 n) (A143593 (n + 1))

end

end A130303.P11218806764851691248

namespace A130303

/-- `gcd(A101493(n), A143593(n+1))` -/
def P11218806764851691248.Spec : Prop :=
  ∀ n, (P11218806764851691248.a n : ℤ) = A130303 (n + 1)

end A130303

/-! ## A130303.P7395131780661331352

`gcd(A103217(n), A143956(n+1))`
-/

namespace A130303.P7395131780661331352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103217 n) (A143956 (n + 1))

end

end A130303.P7395131780661331352

namespace A130303

/-- `gcd(A103217(n), A143956(n+1))` -/
def P7395131780661331352.Spec : Prop :=
  ∀ n, (P7395131780661331352.a n : ℤ) = A130303 (n + 1)

end A130303

/-! ## A130303.P17753549261283547399

`A143593(n+1)/A238303(n)²`
-/

namespace A130303.P17753549261283547399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143593 (n + 1) : ℚ) / (A238303 n ^ 2 : ℚ)

end

end A130303.P17753549261283547399

namespace A130303

/-- `A143593(n+1)/A238303(n)²` -/
def P17753549261283547399.Spec : Prop :=
  ∀ n, P17753549261283547399.a n = (A130303 (n + 1) : ℚ)

end A130303

/-! ## A130303.P17992843340813991066

`floor(A004736(n+1)+A025581(n)/a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A130303

/-- `floor(A004736(n+1)+A025581(n)/a(n-1))` -/
def P17992843340813991066.Spec : Prop :=
  ∀ n, P17992843340813991066.a n = A130303 (n + 1)

theorem P17992843340813991066.correct : P17992843340813991066.Spec := by
  intro n
  simp only [A130303, Nat.add_sub_cancel]

end A130303

/-! ## A130303.P10924215541239568480

`A001263(n+1)/A133200(n+1)*A143956(n+1)`
-/

namespace A130303.P10924215541239568480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A133200 (n + 1) : ℚ) * (A143956 (n + 1) : ℚ)

end

end A130303.P10924215541239568480

namespace A130303

/-- `A001263(n+1)/A133200(n+1)*A143956(n+1)` -/
def P10924215541239568480.Spec : Prop :=
  ∀ n, P10924215541239568480.a n = (A130303 (n + 1) : ℚ)

end A130303

/-! ## A130303.P3322000835934384874

`gcd(A002262(A038722(n+1)), A198954(n))`
-/

namespace A130303.P3322000835934384874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (A038722 (n + 1)).toNat) (A198954 n)

end

end A130303.P3322000835934384874

namespace A130303

/-- `gcd(A002262(A038722(n+1)), A198954(n))` -/
def P3322000835934384874.Spec : Prop :=
  ∀ n, (P3322000835934384874.a n : ℤ) = A130303 (n + 1)

end A130303

/-! ## A130303.P13731328386161617560

`A135841(A185868(n+1))`
-/

namespace A130303.P13731328386161617560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135841 (A185868 (n + 1)).toNat

end

end A130303.P13731328386161617560

namespace A130303

/-- `A135841(A185868(n+1))` -/
def P13731328386161617560.Spec : Prop :=
  ∀ n, P13731328386161617560.a n = A130303 (n + 1)

end A130303

/-!
# A130304: Triangle, (1,1,0,0,1,1,0,0,...) in every column.

The programs for A130304, the canonical program `A130304.P3347931568843992111` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130304 has offset 1).

The definition of A130304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130304.P15337949940859411238

`ceil((C(comp[∑[n]]-n, 2)-n)/2)%2`
-/

namespace A130304.P15337949940859411238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) / 2⌉ 2

end

end A130304.P15337949940859411238

namespace A130304

/-- `ceil((C(comp[∑[n]]-n, 2)-n)/2)%2` -/
def P15337949940859411238.Spec : Prop :=
  ∀ n, P15337949940859411238.a n = A130304 (n + 1)

end A130304

/-! ## A130304.P5374407954122411925

`and(1, ceil((C(comp[∑[n]]-n, 2)-n)/2))`
-/

namespace A130304.P5374407954122411925
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) / 2⌉

end

end A130304.P5374407954122411925

namespace A130304

/-- `and(1, ceil((C(comp[∑[n]]-n, 2)-n)/2))` -/
def P5374407954122411925.Spec : Prop :=
  ∀ n, P5374407954122411925.a n = A130304 (n + 1)

end A130304

/-! ## A130304.P3347931568843992111

`A104568(n)%2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A130304

/-- `A104568(n)%2` -/
def P3347931568843992111.Spec : Prop :=
  ∀ n, P3347931568843992111.a n = A130304 (n + 1)

theorem P3347931568843992111.correct : P3347931568843992111.Spec := by
  intro n
  simp only [A130304, Nat.add_sub_cancel]

end A130304

/-! ## A130304.P12605742356610144261

`A104587(n)%2`
-/

namespace A130304.P12605742356610144261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104587 n) 2

end

end A130304.P12605742356610144261

namespace A130304

/-- `A104587(n)%2` -/
def P12605742356610144261.Spec : Prop :=
  ∀ n, P12605742356610144261.a n = A130304 (n + 1)

end A130304

/-! ## A130304.P287613591594738179

`A154948(n)%2`
-/

namespace A130304.P287613591594738179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154948 n) 2

end

end A130304.P287613591594738179

namespace A130304

/-- `A154948(n)%2` -/
def P287613591594738179.Spec : Prop :=
  ∀ n, P287613591594738179.a n = A130304 (n + 1)

end A130304

/-! ## A130304.P5154576547592633260

`and(1, A122432(n))`
-/

namespace A130304.P5154576547592633260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A122432 n)

end

end A130304.P5154576547592633260

namespace A130304

/-- `and(1, A122432(n))` -/
def P5154576547592633260.Spec : Prop :=
  ∀ n, P5154576547592633260.a n = A130304 (n + 1)

end A130304

/-! ## A130304.P2965622195683710411

`A104572(n+1)%2`
-/

namespace A130304.P2965622195683710411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104572 (n + 1)) 2

end

end A130304.P2965622195683710411

namespace A130304

/-- `A104572(n+1)%2` -/
def P2965622195683710411.Spec : Prop :=
  ∀ n, P2965622195683710411.a n = A130304 (n + 1)

end A130304

/-! ## A130304.P16707130561487111825

`A104715(n+1)%2`
-/

namespace A130304.P16707130561487111825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104715 (n + 1)) 2

end

end A130304.P16707130561487111825

namespace A130304

/-- `A104715(n+1)%2` -/
def P16707130561487111825.Spec : Prop :=
  ∀ n, P16707130561487111825.a n = A130304 (n + 1)

end A130304

/-! ## A130304.P2243680798625443877

`A104716(n+1)%2`
-/

namespace A130304.P2243680798625443877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104716 (n + 1)) 2

end

end A130304.P2243680798625443877

namespace A130304

/-- `A104716(n+1)%2` -/
def P2243680798625443877.Spec : Prop :=
  ∀ n, P2243680798625443877.a n = A130304 (n + 1)

end A130304

/-! ## A130304.P13730088838795688828

`A104792(n+1)%2`
-/

namespace A130304.P13730088838795688828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104792 (n + 1)) 2

end

end A130304.P13730088838795688828

namespace A130304

/-- `A104792(n+1)%2` -/
def P13730088838795688828.Spec : Prop :=
  ∀ n, P13730088838795688828.a n = A130304 (n + 1)

end A130304

/-! ## A130304.P2970500114952307840

`A115514(n+1)%2`
-/

namespace A130304.P2970500114952307840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115514 (n + 1)) 2

end

end A130304.P2970500114952307840

namespace A130304

/-- `A115514(n+1)%2` -/
def P2970500114952307840.Spec : Prop :=
  ∀ n, P2970500114952307840.a n = A130304 (n + 1)

end A130304

/-! ## A130304.P9640587314897243904

`A213571(n+1)%2`
-/

namespace A130304.P9640587314897243904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213571 (n + 1)) 2

end

end A130304.P9640587314897243904

namespace A130304

/-- `A213571(n+1)%2` -/
def P9640587314897243904.Spec : Prop :=
  ∀ n, P9640587314897243904.a n = A130304 (n + 1)

end A130304

/-! ## A130304.P16153222725666242906

`A213750(n+1)%2`
-/

namespace A130304.P16153222725666242906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213750 (n + 1)) 2

end

end A130304.P16153222725666242906

namespace A130304

/-- `A213750(n+1)%2` -/
def P16153222725666242906.Spec : Prop :=
  ∀ n, P16153222725666242906.a n = A130304 (n + 1)

end A130304

/-! ## A130304.P13134215148481553234

`A213833(n+1)%2`
-/

namespace A130304.P13134215148481553234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213833 (n + 1)) 2

end

end A130304.P13134215148481553234

namespace A130304

/-- `A213833(n+1)%2` -/
def P13134215148481553234.Spec : Prop :=
  ∀ n, P13134215148481553234.a n = A130304 (n + 1)

end A130304

/-! ## A130304.P15516042715502990526

`A213835(n+1)%2`
-/

namespace A130304.P15516042715502990526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213835 (n + 1)) 2

end

end A130304.P15516042715502990526

namespace A130304

/-- `A213835(n+1)%2` -/
def P15516042715502990526.Spec : Prop :=
  ∀ n, P15516042715502990526.a n = A130304 (n + 1)

end A130304

/-! ## A130304.P474963893590698104

`A000035(A104568(n))`
-/

namespace A130304.P474963893590698104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A104568 n).toNat

end

end A130304.P474963893590698104

namespace A130304

/-- `A000035(A104568(n))` -/
def P474963893590698104.Spec : Prop :=
  ∀ n, P474963893590698104.a n = A130304 (n + 1)

end A130304

/-! ## A130304.P10097171032947706753

`A133872(A025581(n))`
-/

namespace A130304.P10097171032947706753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A025581 n).toNat

end

end A130304.P10097171032947706753

namespace A130304

/-- `A133872(A025581(n))` -/
def P10097171032947706753.Spec : Prop :=
  ∀ n, P10097171032947706753.a n = A130304 (n + 1)

end A130304

/-! ## A130304.P9492266279869918171

`A021913(2*A104568(n))`
-/

namespace A130304.P9492266279869918171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (2 * A104568 n).toNat

end

end A130304.P9492266279869918171

namespace A130304

/-- `A021913(2*A104568(n))` -/
def P9492266279869918171.Spec : Prop :=
  ∀ n, P9492266279869918171.a n = A130304 (n + 1)

end A130304

/-! ## A130304.P13128481210299536425

`and(1, A065033(A004736(n+1)))`
-/

namespace A130304.P13128481210299536425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A065033 (A004736 (n + 1)).toNat)

end

end A130304.P13128481210299536425

namespace A130304

/-- `and(1, A065033(A004736(n+1)))` -/
def P13128481210299536425.Spec : Prop :=
  ∀ n, P13128481210299536425.a n = A130304 (n + 1)

end A130304

/-! ## A130304.P18068364490453505021

`A132380(A004736(n+1)+1)²`
-/

namespace A130304.P18068364490453505021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132380 (A004736 (n + 1) + 1).toNat ^ 2

end

end A130304.P18068364490453505021

namespace A130304

/-- `A132380(A004736(n+1)+1)²` -/
def P18068364490453505021.Spec : Prop :=
  ∀ n, P18068364490453505021.a n = A130304 (n + 1)

end A130304

/-!
# A130305: Triangle read by rows: A007318 * A130304 as infinite lower triangular matrices.

The programs for A130305, there is no canonical definition to state claims against.
-/

/-! ## A130305.P7268251698852950580

`A285548(n+2)*A288627(A285548(A285548(2*n+9)))`
-/

namespace A130305.P7268251698852950580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285548 (n + 2) * A288627 (A285548 (A285548 (2 * n + 9)).toNat).toNat

end

end A130305.P7268251698852950580

/-! ## A130305.P6554793502240367560

`A285548(A187829(n+1)+1)`
-/

namespace A130305.P6554793502240367560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285548 (A187829 (n + 1) + 1).toNat

end

end A130305.P6554793502240367560

/-! ## A130305.P8242495395161621119

`A285548(n+2)%A123287(n)`
-/

namespace A130305.P8242495395161621119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285548 (n + 2)) (A123287 (n + 31))

end

end A130305.P8242495395161621119

/-! ## A130305.P9185681998465897847

`A285548((n+2)^A008835(n+1))`
-/

namespace A130305.P9185681998465897847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285548 (SequenceMachineLib.roundAway ((n + 2 : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A130305.P9185681998465897847

/-!
# A130306: Degree of the scheme of n X n complex matrices that square to zero.

The programs for A130306, there is no canonical definition to state claims against.
-/

/-! ## A130306.P7289105262112720895

`A060546(n)*A130294(n)`
-/

namespace A130306.P7289105262112720895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n * A130294 n

end

end A130306.P7289105262112720895

/-! ## A130306.P10407612050187905448

`Δ[A027383(n)]*A130294(n)`
-/

namespace A130306.P10407612050187905448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A130294 n

end

end A130306.P10407612050187905448

/-! ## A130306.P11419066993940015036

`∏[A000034(n)]*A130294(n)`
-/

namespace A130306.P11419066993940015036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A130294 n

end

end A130306.P11419066993940015036

/-! ## A130306.P3921334979246414

`A016116(n+1)*A130294(n)`
-/

namespace A130306.P3921334979246414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) * A130294 n

end

end A130306.P3921334979246414

/-! ## A130306.P6865677174508890832

`A000079(n)/A016116(n)*A130294(n)`
-/

namespace A130306.P6865677174508890832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A016116 n : ℚ) * (A130294 n : ℚ)

end

end A130306.P6865677174508890832

/-!
# A130307: A051731 * A130296.

The programs for A130307, there is no canonical definition to state claims against.
-/

/-! ## A130307.P15303819770364571136

`gcd(A000203(A212796(n+1)), A333213(n))`
-/

namespace A130307.P15303819770364571136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (A212796 (n + 1)).toNat) (A333213 n)

end

end A130307.P15303819770364571136

/-! ## A130307.P10089078485503691908

`A127057(n+1)-A122840(A002992(n))`
-/

namespace A130307.P10089078485503691908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (n + 1) - A122840 (A002992 n).toNat

end

end A130307.P10089078485503691908

/-! ## A130307.P17151796400320590312

`A127057(n+1)-A063524(A137747(n))`
-/

namespace A130307.P17151796400320590312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (n + 1) - A063524 (A137747 n).toNat

end

end A130307.P17151796400320590312

/-! ## A130307.P5530440024455523939

`A127057(n+1)-A122840(A033860(n+1))`
-/

namespace A130307.P5530440024455523939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (n + 1) - A122840 (A033860 (n + 1)).toNat

end

end A130307.P5530440024455523939

/-! ## A130307.P1115475076947046803

`A334466(n+1)-A285125(A145515(3*(n+1)))`
-/

namespace A130307.P1115475076947046803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334466 (n + 1) - A285125 (A145515 (3 * (n + 1))).toNat

end

end A130307.P1115475076947046803

/-!
# A130310: Minimal (or "greedy") Lucas representation of n, in which L(0) = 2 and L(2) = 3 are not allowed in the same representation (hence the correct representation of the integer 5 is 1010 rather than 101). A binary system of integers with Lucas numbers (A000032) as a base.

The programs for A130310, there is no canonical definition to state claims against.
-/

/-! ## A130310.P10032124909841059115

`A112867(A004396(n)*A262066(n))`
-/

namespace A130310.P10032124909841059115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112867 (A004396 n * A262066 n).toNat

end

end A130310.P10032124909841059115

/-! ## A130310.P8458921482991436820

`A112867(and(A126646(n), A230742(n)))`
-/

namespace A130310.P8458921482991436820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112867 (Int.land (A126646 n) (A230742 n)).toNat

end

end A130310.P8458921482991436820

/-!
# A130311: Maximal (or "lazy") Lucas representation of n. Binary system for representing integers using Lucas numbers (A000032) as a base.

The programs for A130311, there is no canonical definition to state claims against.
-/

/-! ## A130311.P14591656996629337422

`A103181(record[A162288(n)+A118349(2*n+1)])`
-/

namespace A130311.P14591656996629337422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162288 n + A118349 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A130311.P14591656996629337422

/-! ## A130311.P81495877229653435

`A276379(A296368(n)^A033630(n))`
-/

namespace A130311.P81495877229653435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276379 (SequenceMachineLib.roundAway ((A296368 n : ℚ) ^ (A033630 n : ℤ))).toNat

end

end A130311.P81495877229653435

/-!
# A130312: Each Fibonacci number F(n) appears F(n) times.

The programs for A130312, the canonical program `A130312.P4153789337100935269` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130312 has offset 1).

The definition of A130312 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072649, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A130312.P4153789337100935269

`A000045(A072649(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A130312

/-- `A000045(A072649(n+1))` -/
def P4153789337100935269.Spec : Prop :=
  ∀ n, P4153789337100935269.a n = A130312 (n + 1)

theorem P4153789337100935269.correct : P4153789337100935269.Spec := by
  intro n
  simp only [A130312, Nat.add_sub_cancel]

end A130312

/-! ## A130312.P11605457732491981564

`eq[1, round(a(floor(n/ϕ)))]-n` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0, a(4)=1, a(5)=1`

`round` is left out, it is the identity on integers.
-/

namespace A130312.P11605457732491981564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 0, 1, 1] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (n : ℤ)

end

end A130312.P11605457732491981564

namespace A130312

/-- `eq[1, round(a(floor(n/ϕ)))]-n` -/
def P11605457732491981564.Spec : Prop :=
  ∀ n, P11605457732491981564.a n = A130312 (n + 1)

end A130312

/-! ## A130312.P3480075263847697270

`round(A087172(n+1)/ϕ)`
-/

namespace A130312.P3480075263847697270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A087172 (n + 1) : ℝ) / Real.goldenRatio)

end

end A130312.P3480075263847697270

namespace A130312

/-- `round(A087172(n+1)/ϕ)` -/
def P3480075263847697270.Spec : Prop :=
  ∀ n, P3480075263847697270.a n = A130312 (n + 1)

end A130312

/-! ## A130312.P12693760840382845991

`1-A357589(n+1)+n`
-/

namespace A130312.P12693760840382845991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A357589 (n + 1) + (n : ℤ)

end

end A130312.P12693760840382845991

namespace A130312

/-- `1-A357589(n+1)+n` -/
def P12693760840382845991.Spec : Prop :=
  ∀ n, P12693760840382845991.a n = A130312 (n + 1)

end A130312

/-! ## A130312.P15809763783307927443

`A087172(A005378(n))`
-/

namespace A130312.P15809763783307927443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (A005378 n).toNat

end

end A130312.P15809763783307927443

namespace A130312

/-- `A087172(A005378(n))` -/
def P15809763783307927443.Spec : Prop :=
  ∀ n, P15809763783307927443.a n = A130312 (n + 1)

end A130312

/-! ## A130312.P12271843385349028909

`A000045(∑[A192687(n)])`
-/

namespace A130312.P12271843385349028909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A130312.P12271843385349028909

namespace A130312

/-- `A000045(∑[A192687(n)])` -/
def P12271843385349028909.Spec : Prop :=
  ∀ n, P12271843385349028909.a n = A130312 (n + 1)

end A130312

/-! ## A130312.P8290907071975303725

`A005206(A087172(n+1))`
-/

namespace A130312.P8290907071975303725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A087172 (n + 1)).toNat

end

end A130312.P8290907071975303725

namespace A130312

/-- `A005206(A087172(n+1))` -/
def P8290907071975303725.Spec : Prop :=
  ∀ n, P8290907071975303725.a n = A130312 (n + 1)

end A130312

/-! ## A130312.P12585551876492579692

`A000045(A095791(n)+1)`
-/

namespace A130312.P12585551876492579692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A095791 n + 1).toNat

end

end A130312.P12585551876492579692

namespace A130312

/-- `A000045(A095791(n)+1)` -/
def P12585551876492579692.Spec : Prop :=
  ∀ n, P12585551876492579692.a n = A130312 (n + 1)

end A130312

/-! ## A130312.P16160882836096297803

`A212804(A130233(n+1))`
-/

namespace A130312.P16160882836096297803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A130233 (n + 1)).toNat

end

end A130312.P16160882836096297803

namespace A130312

/-- `A212804(A130233(n+1))` -/
def P16160882836096297803.Spec : Prop :=
  ∀ n, P16160882836096297803.a n = A130312 (n + 1)

end A130312

/-! ## A130312.P1119692844813429004

`A000045(∑[A010056(n+1)])`
-/

namespace A130312.P1119692844813429004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A130312.P1119692844813429004

namespace A130312

/-- `A000045(∑[A010056(n+1)])` -/
def P1119692844813429004.Spec : Prop :=
  ∀ n, P1119692844813429004.a n = A130312 (n + 1)

end A130312

/-! ## A130312.P10837183061963022282

`A000045(A130233(n+1)-1)`
-/

namespace A130312.P10837183061963022282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A130233 (n + 1) - 1).toNat

end

end A130312.P10837183061963022282

namespace A130312

/-- `A000045(A130233(n+1)-1)` -/
def P10837183061963022282.Spec : Prop :=
  ∀ n, P10837183061963022282.a n = A130312 (n + 1)

end A130312

/-! ## A130312.P5892764016647152418

`A000045(A108852(n+1)-2)`
-/

namespace A130312.P5892764016647152418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A108852 (n + 1) - 2).toNat

end

end A130312.P5892764016647152418

namespace A130312

/-- `A000045(A108852(n+1)-2)` -/
def P5892764016647152418.Spec : Prop :=
  ∀ n, P5892764016647152418.a n = A130312 (n + 1)

end A130312

/-! ## A130312.P12739621428230333879

`A194029(A361989(n)+n+1)`
-/

namespace A130312.P12739621428230333879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194029 (A361989 n + (n + 1 : ℤ)).toNat

end

end A130312.P12739621428230333879

namespace A130312

/-- `A194029(A361989(n)+n+1)` -/
def P12739621428230333879.Spec : Prop :=
  ∀ n, P12739621428230333879.a n = A130312 (n + 1)

end A130312

/-! ## A130312.P15087557054932438408

`A246104(n)-A087172(n+1)`
-/

namespace A130312.P15087557054932438408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 n - A087172 (n + 1)

end

end A130312.P15087557054932438408

namespace A130312

/-- `A246104(n)-A087172(n+1)` -/
def P15087557054932438408.Spec : Prop :=
  ∀ n, P15087557054932438408.a n = A130312 (n + 1)

end A130312

/-! ## A130312.P2677029593729332833

`A087172(A101803(n+1))`
-/

namespace A130312.P2677029593729332833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (A101803 (n + 1)).toNat

end

end A130312.P2677029593729332833

namespace A130312

/-- `A087172(A101803(n+1))` -/
def P2677029593729332833.Spec : Prop :=
  ∀ n, P2677029593729332833.a n = A130312 (n + 1)

end A130312

/-! ## A130312.P3520348032415464480

`A256654(A005350(n+2))`
-/

namespace A130312.P3520348032415464480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (A005350 (n + 2)).toNat

end

end A130312.P3520348032415464480

namespace A130312

/-- `A256654(A005350(n+2))` -/
def P3520348032415464480.Spec : Prop :=
  ∀ n, P3520348032415464480.a n = A130312 (n + 1)

end A130312

/-! ## A130312.P7329041793839722460

`A000045(A131234(n+2)-1)`
-/

namespace A130312.P7329041793839722460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A131234 (n + 2) - 1).toNat

end

end A130312.P7329041793839722460

namespace A130312

/-- `A000045(A131234(n+2)-1)` -/
def P7329041793839722460.Spec : Prop :=
  ∀ n, P7329041793839722460.a n = A130312 (n + 1)

end A130312

/-! ## A130312.P429363401974477200

`A082524(A082524(n+2)-1)`
-/

namespace A130312.P429363401974477200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082524 (A082524 (n + 2) - 1).toNat

end

end A130312.P429363401974477200

namespace A130312

/-- `A082524(A082524(n+2)-1)` -/
def P429363401974477200.Spec : Prop :=
  ∀ n, P429363401974477200.a n = A130312 (n + 1)

end A130312

/-! ## A130312.P16801196000068922813

`A194029(A256654(n+2)-1)`
-/

namespace A130312.P16801196000068922813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194029 (A256654 (n + 2) - 1).toNat

end

end A130312.P16801196000068922813

namespace A130312

/-- `A194029(A256654(n+2)-1)` -/
def P16801196000068922813.Spec : Prop :=
  ∀ n, P16801196000068922813.a n = A130312 (n + 1)

end A130312

/-! ## A130312.P15491352691737565798

`A256654(n+2)-A087172(n+1)`
-/

namespace A130312.P15491352691737565798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (n + 2) - A087172 (n + 1)

end

end A130312.P15491352691737565798

namespace A130312

/-- `A256654(n+2)-A087172(n+1)` -/
def P15491352691737565798.Spec : Prop :=
  ∀ n, P15491352691737565798.a n = A130312 (n + 1)

end A130312

/-!
# A130313: A000012 * A054523.

The programs for A130313, the canonical program `A130313.P12971682947885630253` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130313 has offset 1).

The definition of A130313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130313.P12971682947885630253

`ceil(A242114(n+1)/2)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A130313

/-- `ceil(A242114(n+1)/2)` -/
def P12971682947885630253.Spec : Prop :=
  ∀ n, P12971682947885630253.a n = A130313 (n + 1)

theorem P12971682947885630253.correct : P12971682947885630253.Spec := by
  intro n
  simp only [A130313, Nat.add_sub_cancel]

end A130313

/-! ## A130313.P5123536150678049277

`round(A242114(Δ[n²]-n)/2)`
-/

namespace A130313.P5123536150678049277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A242114 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2)

end

end A130313.P5123536150678049277

namespace A130313

/-- `round(A242114(Δ[n²]-n)/2)` -/
def P5123536150678049277.Spec : Prop :=
  ∀ n, P5123536150678049277.a n = A130313 (n + 1)

end A130313

/-! ## A130313.P17139671503000055095

`(A242114(2*n-n+1)+1)/2`
-/

namespace A130313.P17139671503000055095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242114 ((2 * n : ℤ) - (n : ℤ) + 1).toNat + 1 : ℚ) / 2

end

end A130313.P17139671503000055095

namespace A130313

/-- `(A242114(2*n-n+1)+1)/2` -/
def P17139671503000055095.Spec : Prop :=
  ∀ n, P17139671503000055095.a n = (A130313 (n + 1) : ℚ)

end A130313

/-! ## A130313.P16534489332364686120

`A002088(A010766(n+1))`
-/

namespace A130313.P16534489332364686120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (A010766 (n + 1)).toNat

end

end A130313.P16534489332364686120

namespace A130313

/-- `A002088(A010766(n+1))` -/
def P16534489332364686120.Spec : Prop :=
  ∀ n, P16534489332364686120.a n = A130313 (n + 1)

end A130313

/-! ## A130313.P8853973781974577322

`A002088(A050206(n+2)-1)`
-/

namespace A130313.P8853973781974577322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (A050206 (n + 2) - 1).toNat

end

end A130313.P8853973781974577322

namespace A130313

/-- `A002088(A050206(n+2)-1)` -/
def P8853973781974577322.Spec : Prop :=
  ∀ n, P8853973781974577322.a n = A130313 (n + 1)

end A130313

/-! ## A130313.P2739378642129825412

`round(A242114(n+1)/2)%A000040(n+1)`
-/

namespace A130313.P2739378642129825412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A242114 (n + 1) : ℚ) / 2)) (A000040 (n + 1))

end

end A130313.P2739378642129825412

namespace A130313

/-- `round(A242114(n+1)/2)%A000040(n+1)` -/
def P2739378642129825412.Spec : Prop :=
  ∀ n, P2739378642129825412.a n = A130313 (n + 1)

end A130313

/-! ## A130313.P11045403274936135285

`floor((A242114(n+1)+2)/2)%A000040(n+2)`
-/

namespace A130313.P11045403274936135285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A242114 (n + 1) + 2 : ℚ) / 2⌋ (A000040 (n + 2))

end

end A130313.P11045403274936135285

namespace A130313

/-- `floor((A242114(n+1)+2)/2)%A000040(n+2)` -/
def P11045403274936135285.Spec : Prop :=
  ∀ n, P11045403274936135285.a n = A130313 (n + 1)

end A130313

/-! ## A130313.P12660479739221497180

`A372606(A128489(n+1))`
-/

namespace A130313.P12660479739221497180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372606 (A128489 (n + 1)).toNat

end

end A130313.P12660479739221497180

namespace A130313

/-- `A372606(A128489(n+1))` -/
def P12660479739221497180.Spec : Prop :=
  ∀ n, P12660479739221497180.a n = A130313 (n + 1)

end A130313

/-! ## A130313.P5687231930197026400

`A000463(A242114(n+1))`
-/

namespace A130313.P5687231930197026400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A242114 (n + 1)).toNat

end

end A130313.P5687231930197026400

namespace A130313

/-- `A000463(A242114(n+1))` -/
def P5687231930197026400.Spec : Prop :=
  ∀ n, P5687231930197026400.a n = A130313 (n + 1)

end A130313

/-! ## A130313.P5803100005383222935

`A008621(2*A242114(n+1))`
-/

namespace A130313.P5803100005383222935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * A242114 (n + 1)).toNat

end

end A130313.P5803100005383222935

namespace A130313

/-- `A008621(2*A242114(n+1))` -/
def P5803100005383222935.Spec : Prop :=
  ∀ n, P5803100005383222935.a n = A130313 (n + 1)

end A130313

/-! ## A130313.P5307440704469172068

`A008621(A242114(n+1)+A242114(n+1))`
-/

namespace A130313.P5307440704469172068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A242114 (n + 1) + A242114 (n + 1)).toNat

end

end A130313.P5307440704469172068

namespace A130313

/-- `A008621(A242114(n+1)+A242114(n+1))` -/
def P5307440704469172068.Spec : Prop :=
  ∀ n, P5307440704469172068.a n = A130313 (n + 1)

end A130313

/-! ## A130313.P14226713993168066763

`round(A242114(n+1)/2*A007318(∑[n]))`
-/

namespace A130313.P14226713993168066763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A242114 (n + 1) : ℚ) / 2 * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))

end

end A130313.P14226713993168066763

namespace A130313

/-- `round(A242114(n+1)/2*A007318(∑[n]))` -/
def P14226713993168066763.Spec : Prop :=
  ∀ n, P14226713993168066763.a n = A130313 (n + 1)

end A130313

/-!
# A130314: A051731 * A126705.

The programs for A130314, there is no canonical definition to state claims against.
-/

/-! ## A130314.P14226039132600293042

`xor(A059841(A072479(n)), A130307(n))`
-/

namespace A130314.P14226039132600293042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059841 (A072479 n).toNat) (A130307 n)

end

end A130314.P14226039132600293042

/-! ## A130314.P16244453451798178768

`gcd(dr(A093077(n+1)), A132393(n))`
-/

namespace A130314.P16244453451798178768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.digitalRoot (A093077 (n + 1)) : ℤ) (A132393 n)

end

end A130314.P16244453451798178768

/-! ## A130314.P14902249056351426976

`or(A070950(A001654(n)), A130307(n))`
-/

namespace A130314.P14902249056351426976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070950 (A001654 n).toNat) (A130307 n)

end

end A130314.P14902249056351426976

/-! ## A130314.P3173799231731790307

`or(A087049(A015518(n)), A130307(n))`
-/

namespace A130314.P3173799231731790307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087049 (A015518 n).toNat) (A130307 n)

end

end A130314.P3173799231731790307

/-!
# A130315: Number of nontrivial (girth >=5) snarks on 2n nodes.

The programs for A130315, there is no canonical definition to state claims against.
-/

/-! ## A130315.P1713368530738928573

`A218884(n+1)+A218883(A005496(n))`
-/

namespace A130315.P1713368530738928573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218884 (n + 1) + A218883 (A005496 n).toNat

end

end A130315.P1713368530738928573

/-! ## A130315.P14209744660905567975

`A218884(A032950(n+1))+A218883(n+1)`
-/

namespace A130315.P14209744660905567975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218884 (A032950 (n + 1)).toNat + A218883 (n + 1)

end

end A130315.P14209744660905567975

/-! ## A130315.P4168456262324490776

`A218884(A043320(n+1))+A218883(n+1)`
-/

namespace A130315.P4168456262324490776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218884 (A043320 (n + 1)).toNat + A218883 (n + 1)

end

end A130315.P4168456262324490776

/-! ## A130315.P4507164109146170508

`A218884(A187829(n+1))+A218883(n+1)`
-/

namespace A130315.P4507164109146170508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218884 (A187829 (n + 1)).toNat + A218883 (n + 1)

end

end A130315.P4507164109146170508

/-! ## A130315.P3062285433826513761

`A218884(n+1)+A218883(A309127(n+1))`
-/

namespace A130315.P3062285433826513761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218884 (n + 1) + A218883 (A309127 (n + 1)).toNat

end

end A130315.P3062285433826513761

/-!
# A130317: Smallest number having exactly n triangular divisors.

The programs for A130317, there is no canonical definition to state claims against.
-/

/-! ## A130317.P1785091514737820634

`ceil(A088726(n)/2)`
-/

namespace A130317.P1785091514737820634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A088726 n : ℚ) / 2⌉

end

end A130317.P1785091514737820634

/-! ## A130317.P12410481551851433128

`A088726(n)/A000122(n²)`
-/

namespace A130317.P12410481551851433128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088726 n : ℚ) / (A000122 (n ^ 2) : ℚ)

end

end A130317.P12410481551851433128

/-! ## A130317.P2723670228960540114

`A088726(n)/A036452(n+1)`
-/

namespace A130317.P2723670228960540114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088726 n : ℚ) / (A036452 (n + 1) : ℚ)

end

end A130317.P2723670228960540114

/-! ## A130317.P15592766966390953959

`A088726(n)/A036453(n+1)`
-/

namespace A130317.P15592766966390953959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088726 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A130317.P15592766966390953959

/-! ## A130317.P3796492524284615287

`A088726(n)/gcd(2, A000010(n+2))`
-/

namespace A130317.P3796492524284615287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088726 n : ℚ) / (Int.gcd 2 (A000010 (n + 2)) : ℚ)

end

end A130317.P3796492524284615287

/-! ## A130317.P11377326754550677409

`A088726(n)/A000032(C(2, n+2))`
-/

namespace A130317.P11377326754550677409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088726 n : ℚ) / (A000032 (Nat.choose 2 (n + 2)) : ℚ)

end

end A130317.P11377326754550677409

/-! ## A130317.P3004566709376321612

`A088726(n)/A020639(A000040(n+1)-1)`
-/

namespace A130317.P3004566709376321612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088726 n : ℚ) / (A020639 (A000040 (n + 1) - 1).toNat : ℚ)

end

end A130317.P3004566709376321612

/-! ## A130317.P4412143923953732930

`A088726(n)/A001222(2*A006530(n+1))`
-/

namespace A130317.P4412143923953732930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088726 n : ℚ) / (A001222 (2 * A006530 (n + 1)).toNat : ℚ)

end

end A130317.P4412143923953732930

/-! ## A130317.P13559435360530732634

`sqrt(A088726(n)/2)^A001222(A006530(n+1)²)`
-/

namespace A130317.P13559435360530732634
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A088726 n : ℚ) / 2 : ℝ) ^ (A001222 (A006530 (n + 1) ^ 2).toNat : ℤ)

end

end A130317.P13559435360530732634

/-!
# A130318: Integer values of k!!/S(k), where S(k) is the sum of all odd numbers less than or equal to k, if k is odd, or the sum of all even numbers less than or equal to k, if k is even.

The programs for A130318, there is no canonical definition to state claims against.
-/

/-! ## A130318.P7349026289787456470

`A003973(floor((sqrt(3)+2)²*a(n-1))+3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A130318.P7349026289787456470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A003973 (⌊(Real.sqrt (3 : ℝ) + 2) ^ 2 * (a (n - 1) : ℝ)⌋ + 3).toNat

end

end A130318.P7349026289787456470

/-!
# A130319: Numbers k for which k!!/S(k) is an integer, where S(k) is the sum of all odd numbers less than or equal to k, if k is odd, or the sum of all even numbers less than or equal to k, if k is even.

The programs for A130319, the canonical program `A130319.P11129835434070302658` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130319 has offset 0).

The definition of A130319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130319.P11129835434070302658

`record[A191558(A080513(n))+A004524(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A130319

/-- `record[A191558(A080513(n))+A004524(n)]` -/
def P11129835434070302658.Spec : Prop :=
  ∀ n, P11129835434070302658.a n = A130319 n

theorem P11129835434070302658.correct : P11129835434070302658.Spec := by
  intro n
  simp only [A130319]

end A130319

/-!
# A130320: Given n numbers n>(n-1)>(n-2)>...>2>1, adding the first and last numbers leads to the identity n+1 = (n-1)+2 = (n-2)+3 = ... In case if some positive x_1, x_2, ... are added to n, (n-1) etc, the strict inequality could be retained. This could be repeated finitely many times till it ends in inequality of form M > N where M-N is minimal. This sequence gives the value of M for different n.

The programs for A130320, there is no canonical definition to state claims against.
-/

/-! ## A130320.P4683482335500304322

`record[A001223(A099477((n+1)²))]`
-/

namespace A130320.P4683482335500304322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A099477 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130320.P4683482335500304322

/-! ## A130320.P3609704522909619259

`record[A046930(A046935(n)-A046926(n+1))]`
-/

namespace A130320.P3609704522909619259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (A046935 n - A046926 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130320.P3609704522909619259

/-! ## A130320.P8431299495715982819

`eq[A036378(A298667(n+5)), A304527(n+1)]`
-/

namespace A130320.P8431299495715982819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (A298667 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304527 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A130320.P8431299495715982819

/-! ## A130320.P12558623651645614794

`A352745(A177710(n+2))`
-/

namespace A130320.P12558623651645614794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352745 (A177710 (n + 2)).toNat

end

end A130320.P12558623651645614794

/-! ## A130320.P10814460716443655138

`∑[A057820(A374548(n+1))]`
-/

namespace A130320.P10814460716443655138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (A374548 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130320.P10814460716443655138

/-!
# A130321: Triangle, (2^0, 2^1, 2^2, ...) in every column.

The programs for A130321, the canonical program `A130321.P6740187654358347306` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130321 has offset 0).

The definition of A130321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130321.P16849073779621899994

`2^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A130321.P16849073779621899994
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A130321.P16849073779621899994

namespace A130321

/-- `2^(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P16849073779621899994.Spec : Prop :=
  ∀ n, P16849073779621899994.a n = (A130321 n : ℚ)

end A130321

/-! ## A130321.P3271326728351913569

`sqrt(A262616(n))`
-/

namespace A130321.P3271326728351913569
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ)

end

end A130321.P3271326728351913569

namespace A130321

/-- `sqrt(A262616(n))` -/
def P3271326728351913569.Spec : Prop :=
  ∀ n, P3271326728351913569.a n = (A130321 n : ℝ)

end A130321

/-! ## A130321.P10905299192094721672

`2^A025581(n)`
-/

namespace A130321.P10905299192094721672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025581 n : ℤ)

end

end A130321.P10905299192094721672

namespace A130321

/-- `2^A025581(n)` -/
def P10905299192094721672.Spec : Prop :=
  ∀ n, P10905299192094721672.a n = (A130321 n : ℚ)

end A130321

/-! ## A130321.P6813025105055285473

`ceil(A130330(n)/2)`
-/

namespace A130321.P6813025105055285473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130330 n : ℚ) / 2⌉

end

end A130321.P6813025105055285473

namespace A130321

/-- `ceil(A130330(n)/2)` -/
def P6813025105055285473.Spec : Prop :=
  ∀ n, P6813025105055285473.a n = A130321 n

end A130321

/-! ## A130321.P4761229050798816171

`A090988(n+1)/2`
-/

namespace A130321.P4761229050798816171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090988 (n + 1) : ℚ) / 2

end

end A130321.P4761229050798816171

namespace A130321

/-- `A090988(n+1)/2` -/
def P4761229050798816171.Spec : Prop :=
  ∀ n, P4761229050798816171.a n = (A130321 n : ℚ)

end A130321

/-! ## A130321.P10512896305539907213

`2^sqrt(A095831(n+1))`
-/

namespace A130321.P10512896305539907213
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.sqrt (A095831 (n + 1) : ℝ))

end

end A130321.P10512896305539907213

namespace A130321

/-- `2^sqrt(A095831(n+1))` -/
def P10512896305539907213.Spec : Prop :=
  ∀ n, P10512896305539907213.a n = (A130321 n : ℝ)

end A130321

/-! ## A130321.P7408115105696073412

`2^(A004736(n+1)-1)`
-/

namespace A130321.P7408115105696073412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004736 (n + 1) - 1 : ℤ)

end

end A130321.P7408115105696073412

namespace A130321

/-- `2^(A004736(n+1)-1)` -/
def P7408115105696073412.Spec : Prop :=
  ∀ n, P7408115105696073412.a n = (A130321 n : ℚ)

end A130321

/-! ## A130321.P10215934885119231102

`2^A057554(2*(n+1))`
-/

namespace A130321.P10215934885119231102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A057554 (2 * (n + 1)) : ℤ)

end

end A130321.P10215934885119231102

namespace A130321

/-- `2^A057554(2*(n+1))` -/
def P10215934885119231102.Spec : Prop :=
  ∀ n, P10215934885119231102.a n = (A130321 n : ℚ)

end A130321

/-! ## A130321.P9781034717736437944

`2^(A127739(n+1)-(n+1))`
-/

namespace A130321.P9781034717736437944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A127739 (n + 1) - (n + 1 : ℤ) : ℤ)

end

end A130321.P9781034717736437944

namespace A130321

/-- `2^(A127739(n+1)-(n+1))` -/
def P9781034717736437944.Spec : Prop :=
  ∀ n, P9781034717736437944.a n = (A130321 n : ℚ)

end A130321

/-! ## A130321.P6745913153295799758

`2^(A004202(n+1)%(n+1))`
-/

namespace A130321.P6745913153295799758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod (A004202 (n + 1)) (n + 1 : ℤ) : ℤ)

end

end A130321.P6745913153295799758

namespace A130321

/-- `2^(A004202(n+1)%(n+1))` -/
def P6745913153295799758.Spec : Prop :=
  ∀ n, P6745913153295799758.a n = (A130321 n : ℚ)

end A130321

/-! ## A130321.P15090708651357213941

`2^(A000217(round(sqrt(2*n+1)))-(n+1))`
-/

namespace A130321.P15090708651357213941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000217 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat - (n + 1 : ℤ) : ℤ)

end

end A130321.P15090708651357213941

namespace A130321

/-- `2^(A000217(round(sqrt(2*n+1)))-(n+1))` -/
def P15090708651357213941.Spec : Prop :=
  ∀ n, P15090708651357213941.a n = (A130321 n : ℚ)

end A130321

/-! ## A130321.P5029511754251478229

`2^(round(sqrt(2*n+1))-A002260(n+1))`
-/

namespace A130321.P5029511754251478229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) - A002260 (n + 1) : ℤ)

end

end A130321.P5029511754251478229

namespace A130321

/-- `2^(round(sqrt(2*n+1))-A002260(n+1))` -/
def P5029511754251478229.Spec : Prop :=
  ∀ n, P5029511754251478229.a n = (A130321 n : ℚ)

end A130321

/-! ## A130321.P6740187654358347306

`A000079(A025581(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A130321

/-- `A000079(A025581(n))` -/
def P6740187654358347306.Spec : Prop :=
  ∀ n, P6740187654358347306.a n = A130321 n

theorem P6740187654358347306.correct : P6740187654358347306.Spec := by
  intro n
  simp only [A130321]

end A130321

/-! ## A130321.P12564246916663039849

`A016116(A099375(n))`
-/

namespace A130321.P12564246916663039849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A099375 n).toNat

end

end A130321.P12564246916663039849

namespace A130321

/-- `A016116(A099375(n))` -/
def P12564246916663039849.Spec : Prop :=
  ∀ n, P12564246916663039849.a n = A130321 n

end A130321

/-! ## A130321.P10891984961232155560

`A059268(A061579(n))`
-/

namespace A130321.P10891984961232155560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A061579 n).toNat

end

end A130321.P10891984961232155560

namespace A130321

/-- `A059268(A061579(n))` -/
def P10891984961232155560.Spec : Prop :=
  ∀ n, P10891984961232155560.a n = A130321 n

end A130321

/-! ## A130321.P11474239017702538543

`A082693(A063656(n))`
-/

namespace A130321.P11474239017702538543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082693 (A063656 n).toNat

end

end A130321.P11474239017702538543

namespace A130321

/-- `A082693(A063656(n))` -/
def P11474239017702538543.Spec : Prop :=
  ∀ n, P11474239017702538543.a n = A130321 n

end A130321

/-! ## A130321.P5959682686411065122

`A117575(A104571(n))`
-/

namespace A130321.P5959682686411065122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 (A104571 n).toNat

end

end A130321.P5959682686411065122

namespace A130321

/-- `A117575(A104571(n))` -/
def P5959682686411065122.Spec : Prop :=
  ∀ n, P5959682686411065122.a n = A130321 n

end A130321

/-! ## A130321.P10358388671928106702

`A137824(A104568(n))`
-/

namespace A130321.P10358388671928106702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137824 (A104568 n).toNat

end

end A130321.P10358388671928106702

namespace A130321

/-- `A137824(A104568(n))` -/
def P10358388671928106702.Spec : Prop :=
  ∀ n, P10358388671928106702.a n = A130321 n

end A130321

/-! ## A130321.P9680099283112017749

`A011782(A004736(n+1))`
-/

namespace A130321.P9680099283112017749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A004736 (n + 1)).toNat

end

end A130321.P9680099283112017749

namespace A130321

/-- `A011782(A004736(n+1))` -/
def P9680099283112017749.Spec : Prop :=
  ∀ n, P9680099283112017749.a n = A130321 n

end A130321

/-! ## A130321.P15895004916626564977

`A011782(A025581(n)+1)`
-/

namespace A130321.P15895004916626564977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A025581 n + 1).toNat

end

end A130321.P15895004916626564977

namespace A130321

/-- `A011782(A025581(n)+1)` -/
def P15895004916626564977.Spec : Prop :=
  ∀ n, P15895004916626564977.a n = A130321 n

end A130321

/-!
# A130322: A130321^2.

The programs for A130322, the canonical program `A130322.P15441670076918703928` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130322 has offset 0).

The definition of A130322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130322.P15278182042054015572

`A001787(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A130322.P15278182042054015572
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A130322.P15278182042054015572

namespace A130322

/-- `A001787(C(comp[∑[n]]-n, 2)-n)` -/
def P15278182042054015572.Spec : Prop :=
  ∀ n, P15278182042054015572.a n = A130322 n

end A130322

/-! ## A130322.P14796223561539550569

`A097067(C(comp[∑[n]]-n, 2)-n+1)`
-/

namespace A130322.P14796223561539550569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) + 1).toNat

end

end A130322.P14796223561539550569

namespace A130322

/-- `A097067(C(comp[∑[n]]-n, 2)-n+1)` -/
def P14796223561539550569.Spec : Prop :=
  ∀ n, P14796223561539550569.a n = A130322 n

end A130322

/-! ## A130322.P17410412055392899744

`A139756(C(comp[∑[n]]-n, 2)-n+1)`
-/

namespace A130322.P17410412055392899744
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) + 1).toNat

end

end A130322.P17410412055392899744

namespace A130322

/-- `A139756(C(comp[∑[n]]-n, 2)-n+1)` -/
def P17410412055392899744.Spec : Prop :=
  ∀ n, P17410412055392899744.a n = A130322 n

end A130322

/-! ## A130322.P2473312442157094346

`A005183(C(comp[∑[n]]-n, 2)-n)-1`
-/

namespace A130322.P2473312442157094346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) - 1

end

end A130322.P2473312442157094346

namespace A130322

/-- `A005183(C(comp[∑[n]]-n, 2)-n)-1` -/
def P2473312442157094346.Spec : Prop :=
  ∀ n, P2473312442157094346.a n = A130322 n

end A130322

/-! ## A130322.P17158136032323715126

`A036289(C(comp[∑[n]]-n, 2)-n)/2`
-/

namespace A130322.P17158136032323715126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036289 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) : ℚ) / 2

end

end A130322.P17158136032323715126

namespace A130322

/-- `A036289(C(comp[∑[n]]-n, 2)-n)/2` -/
def P17158136032323715126.Spec : Prop :=
  ∀ n, P17158136032323715126.a n = (A130322 n : ℚ)

end A130322

/-! ## A130322.P15441670076918703928

`A171647(A099375(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A130322

/-- `A171647(A099375(n))` -/
def P15441670076918703928.Spec : Prop :=
  ∀ n, P15441670076918703928.a n = A130322 n

theorem P15441670076918703928.correct : P15441670076918703928.Spec := by
  intro n
  simp only [A130322]

end A130322

/-! ## A130322.P2827082314385436647

`A001787(A004736(n+1))`
-/

namespace A130322.P2827082314385436647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A004736 (n + 1)).toNat

end

end A130322.P2827082314385436647

namespace A130322

/-- `A001787(A004736(n+1))` -/
def P2827082314385436647.Spec : Prop :=
  ∀ n, P2827082314385436647.a n = A130322 n

end A130322

/-! ## A130322.P16649340310045840346

`A001787(A025581(n)+1)`
-/

namespace A130322.P16649340310045840346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A025581 n + 1).toNat

end

end A130322.P16649340310045840346

namespace A130322

/-- `A001787(A025581(n)+1)` -/
def P16649340310045840346.Spec : Prop :=
  ∀ n, P16649340310045840346.a n = A130322 n

end A130322

/-! ## A130322.P6613968608740899191

`A329033(A104887(n+1))`
-/

namespace A130322.P6613968608740899191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329033 (A104887 (n + 1)).toNat

end

end A130322.P6613968608740899191

namespace A130322

/-- `A329033(A104887(n+1))` -/
def P6613968608740899191.Spec : Prop :=
  ∀ n, P6613968608740899191.a n = A130322 n

end A130322

/-! ## A130322.P15225706358379013627

`A097067(A004736(n+1)+1)`
-/

namespace A130322.P15225706358379013627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 (A004736 (n + 1) + 1).toNat

end

end A130322.P15225706358379013627

namespace A130322

/-- `A097067(A004736(n+1)+1)` -/
def P15225706358379013627.Spec : Prop :=
  ∀ n, P15225706358379013627.a n = A130322 n

end A130322

/-! ## A130322.P12752316290620541888

`A004736(n+1)*A130321(n)`
-/

namespace A130322.P12752316290620541888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A130321 n

end

end A130322.P12752316290620541888

namespace A130322

/-- `A004736(n+1)*A130321(n)` -/
def P12752316290620541888.Spec : Prop :=
  ∀ n, P12752316290620541888.a n = A130322 n

end A130322

/-! ## A130322.P9584372661383949889

`(A025581(n)+1)*A130321(n)`
-/

namespace A130322.P9584372661383949889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A130321 n

end

end A130322.P9584372661383949889

namespace A130322

/-- `(A025581(n)+1)*A130321(n)` -/
def P9584372661383949889.Spec : Prop :=
  ∀ n, P9584372661383949889.a n = A130322 n

end A130322

/-! ## A130322.P1712291810050766930

`2*A053219(n+1)-A054582(n)`
-/

namespace A130322.P1712291810050766930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053219 (n + 1) - A054582 n

end

end A130322.P1712291810050766930

namespace A130322

/-- `2*A053219(n+1)-A054582(n)` -/
def P1712291810050766930.Spec : Prop :=
  ∀ n, P1712291810050766930.a n = A130322 n

end A130322

/-! ## A130322.P4487412912884914078

`(A127739(n+1)-n)*A130321(n)`
-/

namespace A130322.P4487412912884914078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127739 (n + 1) - (n : ℤ)) * A130321 n

end

end A130322.P4487412912884914078

namespace A130322

/-- `(A127739(n+1)-n)*A130321(n)` -/
def P4487412912884914078.Spec : Prop :=
  ∀ n, P4487412912884914078.a n = A130322 n

end A130322

/-! ## A130322.P275107681466176421

`A001787(A002024(n+1)-A002262(n))`
-/

namespace A130322.P275107681466176421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A002024 (n + 1) - A002262 n).toNat

end

end A130322.P275107681466176421

namespace A130322

/-- `A001787(A002024(n+1)-A002262(n))` -/
def P275107681466176421.Spec : Prop :=
  ∀ n, P275107681466176421.a n = A130322 n

end A130322

/-! ## A130322.P11117374097001413201

`A001787(A003057(n+2)-A002260(n+1))`
-/

namespace A130322.P11117374097001413201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A003057 (n + 2) - A002260 (n + 1)).toNat

end

end A130322.P11117374097001413201

namespace A130322

/-- `A001787(A003057(n+2)-A002260(n+1))` -/
def P11117374097001413201.Spec : Prop :=
  ∀ n, P11117374097001413201.a n = A130322 n

end A130322

/-! ## A130322.P6688216124620635009

`A001787(A171631(n+1)/A003506(n+1))`
-/

namespace A130322.P6688216124620635009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (SequenceMachineLib.roundAway ((A171631 (n + 1) : ℚ) / (A003506 (n + 1) : ℚ))).toNat

end

end A130322.P6688216124620635009

namespace A130322

/-- `A001787(A171631(n+1)/A003506(n+1))` -/
def P6688216124620635009.Spec : Prop :=
  ∀ n, P6688216124620635009.a n = A130322 n

end A130322

/-! ## A130322.P16008254451159997926

`A001787(A057555(2*(n+1)))`
-/

namespace A130322.P16008254451159997926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A057555 (2 * (n + 1))).toNat

end

end A130322.P16008254451159997926

namespace A130322

/-- `A001787(A057555(2*(n+1)))` -/
def P16008254451159997926.Spec : Prop :=
  ∀ n, P16008254451159997926.a n = A130322 n

end A130322

/-! ## A130322.P12610228947725588938

`A057555(2*(n+1))*A130321(n)`
-/

namespace A130322.P12610228947725588938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * (n + 1)) * A130321 n

end

end A130322.P12610228947725588938

namespace A130322

/-- `A057555(2*(n+1))*A130321(n)` -/
def P12610228947725588938.Spec : Prop :=
  ∀ n, P12610228947725588938.a n = A130322 n

end A130322

/-! ## A130322.P15812872501298506005

`A128099(A131782(n+1))`
-/

namespace A130322.P15812872501298506005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128099 (A131782 (n + 1)).toNat

end

end A130322.P15812872501298506005

namespace A130322

/-- `A128099(A131782(n+1))` -/
def P15812872501298506005.Spec : Prop :=
  ∀ n, P15812872501298506005.a n = A130322 n

end A130322

/-!
# A130323: A007318^(-1) * A130322.

The programs for A130323, there is no canonical definition to state claims against.
-/

/-! ## A130323.P3010550622856180979

`A099375(n)-A001221(A156950(n))`
-/

namespace A130323.P3010550622856180979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n - A001221 (A156950 n).toNat

end

end A130323.P3010550622856180979

/-! ## A130323.P15488325640622562954

`A099375(n)-A138033(A080416(n))`
-/

namespace A130323.P15488325640622562954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n - A138033 (A080416 n).toNat

end

end A130323.P15488325640622562954

/-! ## A130323.P14577186425889511920

`A099375(n)-A080345(A176200(n))`
-/

namespace A130323.P14577186425889511920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n - A080345 (A176200 n).toNat

end

end A130323.P14577186425889511920

/-! ## A130323.P1425531319901919638

`A099375(n)-A352513(A022166(n))`
-/

namespace A130323.P1425531319901919638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n - A352513 (A022166 n).toNat

end

end A130323.P1425531319901919638

/-! ## A130323.P17307415761686982024

`A000005(A223202(n+1))%(A099375(n)+1)`
-/

namespace A130323.P17307415761686982024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A223202 (n + 1)).toNat) (A099375 n + 1)

end

end A130323.P17307415761686982024

/-!
# A130324: A059268^2.

The programs for A130324, the canonical program `A130324.P11583610858760618975` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130324 has offset 0).

The definition of A130324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130324.P12974241460445590610

`2^(n-C(∑[char[∑[n]]], 2))*A130328(n)`
-/

namespace A130324.P12974241460445590610
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A130328 n : ℚ)

end

end A130324.P12974241460445590610

namespace A130324

/-- `2^(n-C(∑[char[∑[n]]], 2))*A130328(n)` -/
def P12974241460445590610.Spec : Prop :=
  ∀ n, P12974241460445590610.a n = (A130324 n : ℚ)

end A130324

/-! ## A130324.P1566981520455523795

`(2^(n-C(∑[char[∑[n]]], 2)))²*A130330(n)`
-/

namespace A130324.P1566981520455523795
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ)) ^ 2 * (A130330 n : ℚ)

end

end A130324.P1566981520455523795

namespace A130324

/-- `(2^(n-C(∑[char[∑[n]]], 2)))²*A130330(n)` -/
def P1566981520455523795.Spec : Prop :=
  ∀ n, P1566981520455523795.a n = (A130324 n : ℚ)

end A130324

/-! ## A130324.P7495634979973821811

`(2^(C(comp[∑[n]]-n, 2)-n)-1)*A059268(n)²`
-/

namespace A130324.P7495634979973821811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ) - 1) * (A059268 n ^ 2 : ℚ)

end

end A130324.P7495634979973821811

namespace A130324

/-- `(2^(C(comp[∑[n]]-n, 2)-n)-1)*A059268(n)²` -/
def P7495634979973821811.Spec : Prop :=
  ∀ n, P7495634979973821811.a n = (A130324 n : ℚ)

end A130324

/-! ## A130324.P15545589124348535024

`(2^(C(comp[∑[n]]-n, 2)-n)-1)*4^A002262(n)`
-/

namespace A130324.P15545589124348535024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ) - 1) * (4 : ℚ) ^ (A002262 n : ℤ)

end

end A130324.P15545589124348535024

namespace A130324

/-- `(2^(C(comp[∑[n]]-n, 2)-n)-1)*4^A002262(n)` -/
def P15545589124348535024.Spec : Prop :=
  ∀ n, P15545589124348535024.a n = (A130324 n : ℚ)

end A130324

/-! ## A130324.P2539663748271082145

`A059268(n)*A130328(n)`
-/

namespace A130324.P2539663748271082145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A130328 n

end

end A130324.P2539663748271082145

namespace A130324

/-- `A059268(n)*A130328(n)` -/
def P2539663748271082145.Spec : Prop :=
  ∀ n, P2539663748271082145.a n = A130324 n

end A130324

/-! ## A130324.P1632813361221288669

`A059268(n)²*A130330(n)`
-/

namespace A130324.P1632813361221288669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A130330 n

end

end A130324.P1632813361221288669

namespace A130324

/-- `A059268(n)²*A130330(n)` -/
def P1632813361221288669.Spec : Prop :=
  ∀ n, P1632813361221288669.a n = A130324 n

end A130324

/-! ## A130324.P8295105191916271476

`A137688(n)²-A173787(n)²`
-/

namespace A130324.P8295105191916271476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n ^ 2 - A173787 n ^ 2

end

end A130324.P8295105191916271476

namespace A130324

/-- `A137688(n)²-A173787(n)²` -/
def P8295105191916271476.Spec : Prop :=
  ∀ n, P8295105191916271476.a n = A130324 n

end A130324

/-! ## A130324.P11583610858760618975

`(A140513(n)-A059268(n))*A059268(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A130324

/-- `(A140513(n)-A059268(n))*A059268(n)` -/
def P11583610858760618975.Spec : Prop :=
  ∀ n, P11583610858760618975.a n = A130324 n

theorem P11583610858760618975.correct : P11583610858760618975.Spec := by
  intro n
  simp only [A130324]

end A130324

/-! ## A130324.P9258914599333955833

`(A140513(n)-A130328(n))*A130328(n)`
-/

namespace A130324.P9258914599333955833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A140513 n - A130328 n) * A130328 n

end

end A130324.P9258914599333955833

namespace A130324

/-- `(A140513(n)-A130328(n))*A130328(n)` -/
def P9258914599333955833.Spec : Prop :=
  ∀ n, P9258914599333955833.a n = A130324 n

end A130324

/-! ## A130324.P6611669997071527758

`A000079(A094727(n+1))-A059268(n)²`
-/

namespace A130324.P6611669997071527758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A094727 (n + 1)).toNat - A059268 n ^ 2

end

end A130324.P6611669997071527758

namespace A130324

/-- `A000079(A094727(n+1))-A059268(n)²` -/
def P6611669997071527758.Spec : Prop :=
  ∀ n, P6611669997071527758.a n = A130324 n

end A130324

/-! ## A130324.P10454321006542207711

`2^(n-C(∑[char[∑[n]]], 2))*A173787(comp[∑[n-1]])`
-/

namespace A130324.P10454321006542207711
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A173787 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n) : ℚ)

end

end A130324.P10454321006542207711

namespace A130324

/-- `2^(n-C(∑[char[∑[n]]], 2))*A173787(comp[∑[n-1]])` -/
def P10454321006542207711.Spec : Prop :=
  ∀ n, P10454321006542207711.a n = (A130324 n : ℚ)

end A130324

/-! ## A130324.P17089692972938278876

`A004070(A245300(n))*A130328(n)`
-/

namespace A130324.P17089692972938278876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (A245300 n).toNat * A130328 n

end

end A130324.P17089692972938278876

namespace A130324

/-- `A004070(A245300(n))*A130328(n)` -/
def P17089692972938278876.Spec : Prop :=
  ∀ n, P17089692972938278876.a n = A130324 n

end A130324

/-! ## A130324.P18383799048239609433

`A059268(n)²*A000203(A130321(n))`
-/

namespace A130324.P18383799048239609433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A000203 (A130321 n).toNat

end

end A130324.P18383799048239609433

namespace A130324

/-- `A059268(n)²*A000203(A130321(n))` -/
def P18383799048239609433.Spec : Prop :=
  ∀ n, P18383799048239609433.a n = A130324 n

end A130324

/-!
# A130328: Triangle of differences between powers of 2, read by rows.

The programs for A130328, the canonical program `A130328.P3058334534294594902` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130328 has offset 0).

The definition of A130328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130328.P8309384185368695131

`A204985(n+1)/2`
-/

namespace A130328.P8309384185368695131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204985 (n + 1) : ℚ) / 2

end

end A130328.P8309384185368695131

namespace A130328

/-- `A204985(n+1)/2` -/
def P8309384185368695131.Spec : Prop :=
  ∀ n, P8309384185368695131.a n = (A130328 n : ℚ)

end A130328

/-! ## A130328.P7992241555490415630

`A233757(n+1)%∏[char[∑[n]]+1]`
-/

namespace A130328.P7992241555490415630
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233757 (n + 1)) ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A130328.P7992241555490415630

namespace A130328

/-- `A233757(n+1)%∏[char[∑[n]]+1]` -/
def P7992241555490415630.Spec : Prop :=
  ∀ n, P7992241555490415630.a n = A130328 n

end A130328

/-! ## A130328.P8501662446048053840

`A173787(n)+A137688(n)`
-/

namespace A130328.P8501662446048053840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 n + A137688 n

end

end A130328.P8501662446048053840

namespace A130328

/-- `A173787(n)+A137688(n)` -/
def P8501662446048053840.Spec : Prop :=
  ∀ n, P8501662446048053840.a n = A130328 n

end A130328

/-! ## A130328.P3058334534294594902

`A140513(n)-A059268(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A130328

/-- `A140513(n)-A059268(n)` -/
def P3058334534294594902.Spec : Prop :=
  ∀ n, P3058334534294594902.a n = A130328 n

theorem P3058334534294594902.correct : P3058334534294594902.Spec := by
  intro n
  simp only [A130328]

end A130328

/-! ## A130328.P6579226583456400482

`A059268(n)*A130330(n)`
-/

namespace A130328.P6579226583456400482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A130330 n

end

end A130328.P6579226583456400482

namespace A130328

/-- `A059268(n)*A130330(n)` -/
def P6579226583456400482.Spec : Prop :=
  ∀ n, P6579226583456400482.a n = A130328 n

end A130328

/-! ## A130328.P8588068320578585325

`A130324(n)/A059268(n)`
-/

namespace A130328.P8588068320578585325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130324 n : ℚ) / (A059268 n : ℚ)

end

end A130328.P8588068320578585325

namespace A130328

/-- `A130324(n)/A059268(n)` -/
def P8588068320578585325.Spec : Prop :=
  ∀ n, P8588068320578585325.a n = (A130328 n : ℚ)

end A130328

/-! ## A130328.P14832383394615522955

`A264802(n+1)-A176224(n)`
-/

namespace A130328.P14832383394615522955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264802 (n + 1) - A176224 n

end

end A130328.P14832383394615522955

namespace A130328

/-- `A264802(n+1)-A176224(n)` -/
def P14832383394615522955.Spec : Prop :=
  ∀ n, P14832383394615522955.a n = A130328 n

end A130328

/-! ## A130328.P4634675276581056793

`A059268(n)+2*A173787(n)`
-/

namespace A130328.P4634675276581056793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + 2 * A173787 n

end

end A130328.P4634675276581056793

namespace A130328

/-- `A059268(n)+2*A173787(n)` -/
def P4634675276581056793.Spec : Prop :=
  ∀ n, P4634675276581056793.a n = A130328 n

end A130328

/-! ## A130328.P7118660763891587508

`A327318(n+1)/A074909(n)`
-/

namespace A130328.P7118660763891587508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327318 (n + 1) : ℚ) / (A074909 n : ℚ)

end

end A130328.P7118660763891587508

namespace A130328

/-- `A327318(n+1)/A074909(n)` -/
def P7118660763891587508.Spec : Prop :=
  ∀ n, P7118660763891587508.a n = (A130328 n : ℚ)

end A130328

/-! ## A130328.P17188493628284837575

`2*A137688(n)-A059268(n)`
-/

namespace A130328.P17188493628284837575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137688 n - A059268 n

end

end A130328.P17188493628284837575

namespace A130328

/-- `2*A137688(n)-A059268(n)` -/
def P17188493628284837575.Spec : Prop :=
  ∀ n, P17188493628284837575.a n = A130328 n

end A130328

/-! ## A130328.P15644610280738279330

`(A143088(n)+A130330(n))/2`
-/

namespace A130328.P15644610280738279330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143088 n + A130330 n : ℚ) / 2

end

end A130328.P15644610280738279330

namespace A130328

/-- `(A143088(n)+A130330(n))/2` -/
def P15644610280738279330.Spec : Prop :=
  ∀ n, P15644610280738279330.a n = (A130328 n : ℚ)

end A130328

/-! ## A130328.P1324428932504292744

`A173787(n)+A140513(n)/2`
-/

namespace A130328.P1324428932504292744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173787 n : ℚ) + (A140513 n : ℚ) / 2

end

end A130328.P1324428932504292744

namespace A130328

/-- `A173787(n)+A140513(n)/2` -/
def P1324428932504292744.Spec : Prop :=
  ∀ n, P1324428932504292744.a n = (A130328 n : ℚ)

end A130328

/-! ## A130328.P16143941928941569162

`∏[A010054(n)+1]-A059268(n)`
-/

namespace A130328.P16143941928941569162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A059268 n

end

end A130328.P16143941928941569162

namespace A130328

/-- `∏[A010054(n)+1]-A059268(n)` -/
def P16143941928941569162.Spec : Prop :=
  ∀ n, P16143941928941569162.a n = A130328 n

end A130328

/-! ## A130328.P3013612964000713937

`A098354(n+1)-A018900(n+1)`
-/

namespace A130328.P3013612964000713937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098354 (n + 1) - A018900 (n + 1)

end

end A130328.P3013612964000713937

namespace A130328

/-- `A098354(n+1)-A018900(n+1)` -/
def P3013612964000713937.Spec : Prop :=
  ∀ n, P3013612964000713937.a n = A130328 n

end A130328

/-! ## A130328.P14865743898367118271

`(A090988(n+1)-1)*A059268(n)`
-/

namespace A130328.P14865743898367118271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090988 (n + 1) - 1) * A059268 n

end

end A130328.P14865743898367118271

namespace A130328

/-- `(A090988(n+1)-1)*A059268(n)` -/
def P14865743898367118271.Spec : Prop :=
  ∀ n, P14865743898367118271.a n = A130328 n

end A130328

/-! ## A130328.P13556528386434396067

`A018900(n+1)-2*A059268(n)`
-/

namespace A130328.P13556528386434396067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) - 2 * A059268 n

end

end A130328.P13556528386434396067

namespace A130328

/-- `A018900(n+1)-2*A059268(n)` -/
def P13556528386434396067.Spec : Prop :=
  ∀ n, P13556528386434396067.a n = A130328 n

end A130328

/-! ## A130328.P17339672464909653716

`2*A140513(n)-A018900(n+1)`
-/

namespace A130328.P17339672464909653716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140513 n - A018900 (n + 1)

end

end A130328.P17339672464909653716

namespace A130328

/-- `2*A140513(n)-A018900(n+1)` -/
def P17339672464909653716.Spec : Prop :=
  ∀ n, P17339672464909653716.a n = A130328 n

end A130328

/-! ## A130328.P2157843917314682754

`A098354(n+1)/2-A059268(n)`
-/

namespace A130328.P2157843917314682754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098354 (n + 1) : ℚ) / 2 - (A059268 n : ℚ)

end

end A130328.P2157843917314682754

namespace A130328

/-- `A098354(n+1)/2-A059268(n)` -/
def P2157843917314682754.Spec : Prop :=
  ∀ n, P2157843917314682754.a n = (A130328 n : ℚ)

end A130328

/-! ## A130328.P6718311336719464700

`xor(A018900(n+1), A204985(n+1))`
-/

namespace A130328.P6718311336719464700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A018900 (n + 1)) (A204985 (n + 1))

end

end A130328.P6718311336719464700

namespace A130328

/-- `xor(A018900(n+1), A204985(n+1))` -/
def P6718311336719464700.Spec : Prop :=
  ∀ n, P6718311336719464700.a n = A130328 n

end A130328

/-! ## A130328.P4728881474246373480

`A000079(round(sqrt(2*(n+1))))-A059268(n)`
-/

namespace A130328.P4728881474246373480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat - A059268 n

end

end A130328.P4728881474246373480

namespace A130328

/-- `A000079(round(sqrt(2*(n+1))))-A059268(n)` -/
def P4728881474246373480.Spec : Prop :=
  ∀ n, P4728881474246373480.a n = A130328 n

end A130328

/-!
# A130329: A059268 * A130321.

The programs for A130329, the canonical program `A130329.P9894356119202970907` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130329 has offset 0).

The definition of A130329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130329.P9894356119202970907

`2^(n-C(∑[char[∑[n]]], 2))*A002450(C(comp[∑[n]]-n, 2)-n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130329

/-- `2^(n-C(∑[char[∑[n]]], 2))*A002450(C(comp[∑[n]]-n, 2)-n)` -/
def P9894356119202970907.Spec : Prop :=
  ∀ n, P9894356119202970907.a n = (A130329 n : ℚ)

end A130329

/-! ## A130329.P8073975705194005320

`(A084468(n+1)-1)/2*A130330(n)/3`
-/

namespace A130329.P8073975705194005320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084468 (n + 1) - 1 : ℚ) / 2 * ((A130330 n : ℚ) / 3)

end

end A130329.P8073975705194005320

namespace A130329

/-- `(A084468(n+1)-1)/2*A130330(n)/3` -/
def P8073975705194005320.Spec : Prop :=
  ∀ n, P8073975705194005320.a n = (A130329 n : ℚ)

end A130329

/-! ## A130329.P14915491458428403539

`A002450(C(comp[∑[n]]-n, 2)-n)*A059268(n)`
-/

namespace A130329.P14915491458428403539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) * A059268 n

end

end A130329.P14915491458428403539

namespace A130329

/-- `A002450(C(comp[∑[n]]-n, 2)-n)*A059268(n)` -/
def P14915491458428403539.Spec : Prop :=
  ∀ n, P14915491458428403539.a n = A130329 n

end A130329

/-! ## A130329.P8015369259725155300

`A193900(comp[∑[n]])`
-/

namespace A130329.P8015369259725155300
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193900 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A130329.P8015369259725155300

namespace A130329

/-- `A193900(comp[∑[n]])` -/
def P8015369259725155300.Spec : Prop :=
  ∀ n, P8015369259725155300.a n = A130329 n

end A130329

/-! ## A130329.P11806240478452462673

`A327317(n+1)/A074909(n)`
-/

namespace A130329.P11806240478452462673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327317 (n + 1) : ℚ) / (A074909 n : ℚ)

end

end A130329.P11806240478452462673

namespace A130329

/-- `A327317(n+1)/A074909(n)` -/
def P11806240478452462673.Spec : Prop :=
  ∀ n, P11806240478452462673.a n = (A130329 n : ℚ)

end A130329

/-! ## A130329.P1104714986814885504

`A181666(A082156(n+1))`
-/

namespace A130329.P1104714986814885504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181666 (A082156 (n + 1)).toNat

end

end A130329.P1104714986814885504

namespace A130329

/-- `A181666(A082156(n+1))` -/
def P1104714986814885504.Spec : Prop :=
  ∀ n, P1104714986814885504.a n = A130329 n

end A130329

/-! ## A130329.P7086414922881971251

`A001157(A130321(n))*A059268(n)`
-/

namespace A130329.P7086414922881971251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A130321 n).toNat * A059268 n

end

end A130329.P7086414922881971251

namespace A130329

/-- `A001157(A130321(n))*A059268(n)` -/
def P7086414922881971251.Spec : Prop :=
  ∀ n, P7086414922881971251.a n = A130329 n

end A130329

/-! ## A130329.P14673225383794645779

`A048678(A130328(n))`
-/

namespace A130329.P14673225383794645779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (A130328 n).toNat

end

end A130329.P14673225383794645779

namespace A130329

/-- `A048678(A130328(n))` -/
def P14673225383794645779.Spec : Prop :=
  ∀ n, P14673225383794645779.a n = A130329 n

end A130329

/-! ## A130329.P8035729743143166977

`A048678(A204985(n+1)/2)`
-/

namespace A130329.P8035729743143166977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (SequenceMachineLib.roundAway ((A204985 (n + 1) : ℚ) / 2)).toNat

end

end A130329.P8035729743143166977

namespace A130329

/-- `A048678(A204985(n+1)/2)` -/
def P8035729743143166977.Spec : Prop :=
  ∀ n, P8035729743143166977.a n = A130329 n

end A130329

/-! ## A130329.P1384646768531802428

`A048678(A173787(comp[∑[n-1]]))`
-/

namespace A130329.P1384646768531802428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (A173787 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A130329.P1384646768531802428

namespace A130329

/-- `A048678(A173787(comp[∑[n-1]]))` -/
def P1384646768531802428.Spec : Prop :=
  ∀ n, P1384646768531802428.a n = A130329 n

end A130329

/-!
# A130330: Triangle read by rows, the matrix product A130321 * A000012, both taken as infinite lower triangular matrices.

The programs for A130330, the canonical program `A130330.P178834876588586868` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130330 has offset 0).

The definition of A130330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130330.P7303848874420707337

`2^(C(comp[∑[n]]-n, 2)-n)-1`
-/

namespace A130330.P7303848874420707337
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ) - 1

end

end A130330.P7303848874420707337

namespace A130330

/-- `2^(C(comp[∑[n]]-n, 2)-n)-1` -/
def P7303848874420707337.Spec : Prop :=
  ∀ n, P7303848874420707337.a n = (A130330 n : ℚ)

end A130330

/-! ## A130330.P178834876588586868

`A090988(n+1)-1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A130330

/-- `A090988(n+1)-1` -/
def P178834876588586868.Spec : Prop :=
  ∀ n, P178834876588586868.a n = A130330 n

theorem P178834876588586868.correct : P178834876588586868.Spec := by
  intro n
  simp only [A130330]

end A130330

/-! ## A130330.P13683385122800825494

`2*A130321(n)-1`
-/

namespace A130330.P13683385122800825494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130321 n - 1

end

end A130330.P13683385122800825494

namespace A130330

/-- `2*A130321(n)-1` -/
def P13683385122800825494.Spec : Prop :=
  ∀ n, P13683385122800825494.a n = A130330 n

end A130330

/-! ## A130330.P12738946781010542745

`2*sqrt(A262616(n))-1`
-/

namespace A130330.P12738946781010542745
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A262616 n : ℝ) - 1

end

end A130330.P12738946781010542745

namespace A130330

/-- `2*sqrt(A262616(n))-1` -/
def P12738946781010542745.Spec : Prop :=
  ∀ n, P12738946781010542745.a n = (A130330 n : ℝ)

end A130330

/-! ## A130330.P7371989451530371489

`2^A004736(n+1)-1`
-/

namespace A130330.P7371989451530371489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004736 (n + 1) : ℤ) - 1

end

end A130330.P7371989451530371489

namespace A130330

/-- `2^A004736(n+1)-1` -/
def P7371989451530371489.Spec : Prop :=
  ∀ n, P7371989451530371489.a n = (A130330 n : ℚ)

end A130330

/-! ## A130330.P8340645330823925296

`2^(A025581(n)+1)-1`
-/

namespace A130330.P8340645330823925296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025581 n + 1 : ℤ) - 1

end

end A130330.P8340645330823925296

namespace A130330

/-- `2^(A025581(n)+1)-1` -/
def P8340645330823925296.Spec : Prop :=
  ∀ n, P8340645330823925296.a n = (A130330 n : ℚ)

end A130330

/-! ## A130330.P11948690122076185568

`A052551(A099375(n))`
-/

namespace A130330.P11948690122076185568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (A099375 n).toNat

end

end A130330.P11948690122076185568

namespace A130330

/-- `A052551(A099375(n))` -/
def P11948690122076185568.Spec : Prop :=
  ∀ n, P11948690122076185568.a n = A130330 n

end A130330

/-! ## A130330.P16311232734482525277

`A126646(A025581(n))`
-/

namespace A130330.P16311232734482525277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A025581 n).toNat

end

end A130330.P16311232734482525277

namespace A130330

/-- `A126646(A025581(n))` -/
def P16311232734482525277.Spec : Prop :=
  ∀ n, P16311232734482525277.a n = A130330 n

end A130330

/-! ## A130330.P13649541122760301993

`A088163(A104568(n))`
-/

namespace A130330.P13649541122760301993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088163 (A104568 n).toNat

end

end A130330.P13649541122760301993

namespace A130330

/-- `A088163(A104568(n))` -/
def P13649541122760301993.Spec : Prop :=
  ∀ n, P13649541122760301993.a n = A130330 n

end A130330

/-! ## A130330.P9045089371622281568

`A000225(A004736(n+1))`
-/

namespace A130330.P9045089371622281568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A004736 (n + 1)).toNat

end

end A130330.P9045089371622281568

namespace A130330

/-- `A000225(A004736(n+1))` -/
def P9045089371622281568.Spec : Prop :=
  ∀ n, P9045089371622281568.a n = A130330 n

end A130330

/-! ## A130330.P11706126591279888356

`A000225(A025581(n)+1)`
-/

namespace A130330.P11706126591279888356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A025581 n + 1).toNat

end

end A130330.P11706126591279888356

namespace A130330

/-- `A000225(A025581(n)+1)` -/
def P11706126591279888356.Spec : Prop :=
  ∀ n, P11706126591279888356.a n = A130330 n

end A130330

/-! ## A130330.P3475024552156154931

`A056508(A099375(n)+2)`
-/

namespace A130330.P3475024552156154931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056508 (A099375 n + 2).toNat

end

end A130330.P3475024552156154931

namespace A130330

/-- `A056508(A099375(n)+2)` -/
def P3475024552156154931.Spec : Prop :=
  ∀ n, P3475024552156154931.a n = A130330 n

end A130330

/-! ## A130330.P11629590769782758335

`A060546(A104571(n))-1`
-/

namespace A130330.P11629590769782758335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (A104571 n).toNat - 1

end

end A130330.P11629590769782758335

namespace A130330

/-- `A060546(A104571(n))-1` -/
def P11629590769782758335.Spec : Prop :=
  ∀ n, P11629590769782758335.a n = A130330 n

end A130330

/-! ## A130330.P2746467847825646909

`A052955(2*A025581(n))`
-/

namespace A130330.P2746467847825646909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (2 * A025581 n).toNat

end

end A130330.P2746467847825646909

namespace A130330

/-- `A052955(2*A025581(n))` -/
def P2746467847825646909.Spec : Prop :=
  ∀ n, P2746467847825646909.a n = A130330 n

end A130330

/-! ## A130330.P1013975558046597825

`A130328(n)/A059268(n)`
-/

namespace A130330.P1013975558046597825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130328 n : ℚ) / (A059268 n : ℚ)

end

end A130330.P1013975558046597825

namespace A130330

/-- `A130328(n)/A059268(n)` -/
def P1013975558046597825.Spec : Prop :=
  ∀ n, P1013975558046597825.a n = (A130330 n : ℚ)

end A130330

/-! ## A130330.P3921514221880105727

`gcd(A130324(n), A143088(n))`
-/

namespace A130330.P3921514221880105727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130324 n) (A143088 n)

end

end A130330.P3921514221880105727

namespace A130330

/-- `gcd(A130324(n), A143088(n))` -/
def P3921514221880105727.Spec : Prop :=
  ∀ n, (P3921514221880105727.a n : ℤ) = A130330 n

end A130330

/-! ## A130330.P10992620659445976087

`xor(A054582(n), A075300(n))`
-/

namespace A130330.P10992620659445976087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054582 n) (A075300 n)

end

end A130330.P10992620659445976087

namespace A130330

/-- `xor(A054582(n), A075300(n))` -/
def P10992620659445976087.Spec : Prop :=
  ∀ n, P10992620659445976087.a n = A130330 n

end A130330

/-! ## A130330.P8761339926583158634

`xor(A036561(n), A230445(n))`
-/

namespace A130330.P8761339926583158634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036561 n) (A230445 n)

end

end A130330.P8761339926583158634

namespace A130330

/-- `xor(A036561(n), A230445(n))` -/
def P8761339926583158634.Spec : Prop :=
  ∀ n, P8761339926583158634.a n = A130330 n

end A130330

/-! ## A130330.P6066994061009538077

`A130324(n)/A059268(n)²`
-/

namespace A130330.P6066994061009538077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130324 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A130330.P6066994061009538077

namespace A130330

/-- `A130324(n)/A059268(n)²` -/
def P6066994061009538077.Spec : Prop :=
  ∀ n, P6066994061009538077.a n = (A130330 n : ℚ)

end A130330

/-! ## A130330.P329001332066050591

`gcd(A143088(n)², A130328(n))`
-/

namespace A130330.P329001332066050591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143088 n ^ 2) (A130328 n)

end

end A130330.P329001332066050591

namespace A130330

/-- `gcd(A143088(n)², A130328(n))` -/
def P329001332066050591.Spec : Prop :=
  ∀ n, (P329001332066050591.a n : ℤ) = A130330 n

end A130330

/-!
# A130331: Number of divisors of A123240(n).

The programs for A130331, the canonical program `A130331.P15759110468226618183` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130331 has offset 1).

The definition of A130331 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A123240, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A130331.P15759110468226618183

`A000005(A123240(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A130331

/-- `A000005(A123240(n+1))` -/
def P15759110468226618183.Spec : Prop :=
  ∀ n, P15759110468226618183.a n = A130331 (n + 1)

theorem P15759110468226618183.correct : P15759110468226618183.Spec := by
  intro n
  simp only [A130331, Nat.add_sub_cancel]

end A130331

/-! ## A130331.P7807812134818504879

`A320111(2*A123240(n+1))`
-/

namespace A130331.P7807812134818504879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A123240 (n + 1)).toNat

end

end A130331.P7807812134818504879

namespace A130331

/-- `A320111(2*A123240(n+1))` -/
def P7807812134818504879.Spec : Prop :=
  ∀ n, P7807812134818504879.a n = A130331 (n + 1)

end A130331

/-! ## A130331.P1190208733504627749

`A000005(eq[0, A122895(n+1)]+1)`
-/

namespace A130331.P1190208733504627749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A130331.P1190208733504627749

namespace A130331

/-- `A000005(eq[0, A122895(n+1)]+1)` -/
def P1190208733504627749.Spec : Prop :=
  ∀ n, P1190208733504627749.a n = A130331 (n + 1)

end A130331

/-! ## A130331.P7403724312044768401

`A000005(lt[A122895(n+1), 1]+1)`
-/

namespace A130331.P7403724312044768401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122895 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A130331.P7403724312044768401

namespace A130331

/-- `A000005(lt[A122895(n+1), 1]+1)` -/
def P7403724312044768401.Spec : Prop :=
  ∀ n, P7403724312044768401.a n = A130331 (n + 1)

end A130331

/-! ## A130331.P13791971466352631242

`∑{d}[A123240(n+1), A057427(#)]`
-/

namespace A130331.P13791971466352631242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A130331.P13791971466352631242

namespace A130331

/-- `∑{d}[A123240(n+1), A057427(#)]` -/
def P13791971466352631242.Spec : Prop :=
  ∀ n, P13791971466352631242.a n = A130331 (n + 1)

end A130331

/-! ## A130331.P12221677873788745284

`A183063(2*A123240(n+1))`
-/

namespace A130331.P12221677873788745284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A123240 (n + 1)).toNat

end

end A130331.P12221677873788745284

namespace A130331

/-- `A183063(2*A123240(n+1))` -/
def P12221677873788745284.Spec : Prop :=
  ∀ n, P12221677873788745284.a n = A130331 (n + 1)

end A130331

/-! ## A130331.P6211878473100813025

`∑{d}[A131181(n+1), A054977(#²)]`
-/

namespace A130331.P6211878473100813025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054977 (d ^ 2)

end

end A130331.P6211878473100813025

namespace A130331

/-- `∑{d}[A131181(n+1), A054977(#²)]` -/
def P6211878473100813025.Spec : Prop :=
  ∀ n, P6211878473100813025.a n = A130331 (n + 1)

end A130331

/-! ## A130331.P8805170912035793941

`∑{d}[A131181(n+1), A057427(#²)]`
-/

namespace A130331.P8805170912035793941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 (d ^ 2)

end

end A130331.P8805170912035793941

namespace A130331

/-- `∑{d}[A131181(n+1), A057427(#²)]` -/
def P8805170912035793941.Spec : Prop :=
  ∀ n, P8805170912035793941.a n = A130331 (n + 1)

end A130331

/-!
# A130333: Numbers k >= 1 for which k!!/Sum_{i=1..k} k is an integer.

The programs for A130333, the canonical program `A130333.P18154623364760753136` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130333 has offset 0).

The definition of A130333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130333.P18154623364760753136

`∪[A186193(n+1), A016813(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A130333

/-- `∪[A186193(n+1), A016813(n)]` -/
def P18154623364760753136.Spec : Prop :=
  ∀ n, (P18154623364760753136.a n : ℤ) = A130333 n

theorem P18154623364760753136.correct : P18154623364760753136.Spec := by
  intro n
  simp only [A130333]

end A130333

/-! ## A130333.P2997853361714809957

`lt[A210067(n)+1, A045763(n+1)]`
-/

namespace A130333.P2997853361714809957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210067 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A130333.P2997853361714809957

namespace A130333

/-- `lt[A210067(n)+1, A045763(n+1)]` -/
def P2997853361714809957.Spec : Prop :=
  ∀ n, (P2997853361714809957.a n : ℤ) = A130333 n

end A130333

/-! ## A130333.P5526846405171913897

`eq[A001511(n+1), A301316(A141310(n))]`
-/

namespace A130333.P5526846405171913897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301316 (A141310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A130333.P5526846405171913897

namespace A130333

/-- `eq[A001511(n+1), A301316(A141310(n))]` -/
def P5526846405171913897.Spec : Prop :=
  ∀ n, (P5526846405171913897.a n : ℤ) = A130333 n

end A130333

/-! ## A130333.P13608881688329471437

`eq[A003484(n+1), A301316(A141310(n))]`
-/

namespace A130333.P13608881688329471437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301316 (A141310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A130333.P13608881688329471437

namespace A130333

/-- `eq[A003484(n+1), A301316(A141310(n))]` -/
def P13608881688329471437.Spec : Prop :=
  ∀ n, (P13608881688329471437.a n : ℤ) = A130333 n

end A130333

/-! ## A130333.P6046788385000353354

`eq[A006519(n+1), A301316(A141310(n))]`
-/

namespace A130333.P6046788385000353354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301316 (A141310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A130333.P6046788385000353354

namespace A130333

/-- `eq[A006519(n+1), A301316(A141310(n))]` -/
def P6046788385000353354.Spec : Prop :=
  ∀ n, (P6046788385000353354.a n : ℤ) = A130333 n

end A130333

/-! ## A130333.P18030557409368589459

`lt[A266437(A019303(n)), A093803(n+1)]`
-/

namespace A130333.P18030557409368589459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 (A019303 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A130333.P18030557409368589459

namespace A130333

/-- `lt[A266437(A019303(n)), A093803(n+1)]` -/
def P18030557409368589459.Spec : Prop :=
  ∀ n, (P18030557409368589459.a n : ℤ) = A130333 n

end A130333

/-! ## A130333.P10271775106271913215

`lt[A347634(A039649(n+1)+2), A347634(n+1)]`
-/

namespace A130333.P10271775106271913215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347634 (A039649 (n + 1) + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347634 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A130333.P10271775106271913215

namespace A130333

/-- `lt[A347634(A039649(n+1)+2), A347634(n+1)]` -/
def P10271775106271913215.Spec : Prop :=
  ∀ n, (P10271775106271913215.a n : ℤ) = A130333 n

end A130333

/-! ## A130333.P6917095560658208086

`eq[A339597(n)+A301316(A141310(n)), 2*(n+1)]`
-/

namespace A130333.P6917095560658208086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339597 n + A301316 (A141310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A130333.P6917095560658208086

namespace A130333

/-- `eq[A339597(n)+A301316(A141310(n)), 2*(n+1)]` -/
def P6917095560658208086.Spec : Prop :=
  ∀ n, (P6917095560658208086.a n : ℤ) = A130333 n

end A130333

/-! ## A130333.P1926906648067536739

`lt[A077883(A032742(n+1)), A000034(n)]`
-/

namespace A130333.P1926906648067536739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077883 (A032742 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A130333.P1926906648067536739

namespace A130333

/-- `lt[A077883(A032742(n+1)), A000034(n)]` -/
def P1926906648067536739.Spec : Prop :=
  ∀ n, (P1926906648067536739.a n : ℤ) = A130333 n

end A130333

/-!
# A130334: Smallest m>n such that the m-th and n-th triangular numbers are coprime.

The programs for A130334, there is no canonical definition to state claims against.
-/

/-! ## A130334.P13955554432353352274

`n+1+A130335(n+1)`
-/

namespace A130334.P13955554432353352274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A130335 (n + 1)

end

end A130334.P13955554432353352274

/-! ## A130334.P11443386934132803839

`A020725(A130335(n+1))+n`
-/

namespace A130334.P11443386934132803839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A130335 (n + 1)).toNat + (n : ℤ)

end

end A130334.P11443386934132803839

/-! ## A130334.P8085753253022771787

`A130335(A077168(n))+A077168(n)`
-/

namespace A130334.P8085753253022771787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130335 (A077168 n).toNat + A077168 n

end

end A130334.P8085753253022771787

/-!
# A130335: Smallest k > 0 such that gcd(n*(n+1)/2, (n+k)*(n+k+1)/2) = 1.

The programs for A130335, there is no canonical definition to state claims against.
-/

/-! ## A130335.P56825791028181758

`A130334(n+1)-(n+1)`
-/

namespace A130335.P56825791028181758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130334 (n + 1) - (n + 1 : ℤ)

end

end A130335.P56825791028181758

/-! ## A130335.P17609802596949993460

`A023443(A130334(n+1)-n)`
-/

namespace A130335.P17609802596949993460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A130334 (n + 1) - (n : ℤ)).toNat

end

end A130335.P17609802596949993460

/-! ## A130335.P5447349415254120682

`A130509(A130334(n+1)-n)`
-/

namespace A130335.P5447349415254120682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130509 (A130334 (n + 1) - (n : ℤ)).toNat

end

end A130335.P5447349415254120682

/-! ## A130335.P16601004147097836148

`(A130334(n+1)+A000217(n+1))%A000096(n+1)`
-/

namespace A130335.P16601004147097836148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130334 (n + 1) + A000217 (n + 1)) (A000096 (n + 1))

end

end A130335.P16601004147097836148

/-! ## A130335.P3458537153884494081

`A023443(A130334(n+1))+A001489(n)`
-/

namespace A130335.P3458537153884494081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A130334 (n + 1)).toNat + A001489 n

end

end A130335.P3458537153884494081

/-!
# A130336: Record values in A130335.

The programs for A130336, there is no canonical definition to state claims against.
-/

/-! ## A130336.P2141923033089391166

`A130335(A130337(n+1))`
-/

namespace A130336.P2141923033089391166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130335 (A130337 (n + 1)).toNat

end

end A130336.P2141923033089391166

/-! ## A130336.P7840979415535766910

`record[A130335(n+1)]`
-/

namespace A130336.P7840979415535766910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130336.P7840979415535766910

/-! ## A130336.P11007412701831454595

`A130334(A130337(n+1))-A130337(A032907(n+1))`
-/

namespace A130336.P11007412701831454595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130334 (A130337 (n + 1)).toNat - A130337 (A032907 (n + 1)).toNat

end

end A130336.P11007412701831454595

/-!
# A130337: Where record values occur in A130335.

The programs for A130337, there is no canonical definition to state claims against.
-/

/-! ## A130337.P15428681053580331423

`A030040(n)*A061775(A061778(n+1))`
-/

namespace A130337.P15428681053580331423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030040 n * A061775 (A061778 (n + 1)).toNat

end

end A130337.P15428681053580331423

/-! ## A130337.P2569057712533147559

`A273873(n+2)*A300649(A300436(n+1)²)`
-/

namespace A130337.P2569057712533147559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273873 (n + 2) * A300649 (A300436 (n + 1) ^ 2).toNat

end

end A130337.P2569057712533147559

/-!
# A130338: Primes p with no solution x to x=p*digitsum(x).

The programs for A130338, there is no canonical definition to state claims against.
-/

/-! ## A130338.P16912725363637141900

`p?[A003635(n+1)]`
-/

namespace A130338.P16912725363637141900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130338.P16912725363637141900

/-! ## A130338.P16331904010652318411

`∩[A003635(n+1), A061345(n)]`
-/

namespace A130338.P16331904010652318411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130338.P16331904010652318411

/-! ## A130338.P11451096270891199306

`∩[A000040(n+1), A003635(n+1)]`
-/

namespace A130338.P11451096270891199306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130338.P11451096270891199306

/-! ## A130338.P12756498720945083534

`∩[A000430(n+1), A003635(n+1)]`
-/

namespace A130338.P12756498720945083534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130338.P12756498720945083534

/-! ## A130338.P289960599308661268

`∩[A003635(n+1), A004139(n+1)]`
-/

namespace A130338.P289960599308661268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130338.P289960599308661268

/-! ## A130338.P5220260647323514265

`∩[A003635(n+1), A006005(n+1)]`
-/

namespace A130338.P5220260647323514265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130338.P5220260647323514265

/-! ## A130338.P14171180180232235649

`∩[A003635(n+1), A008578(n+1)]`
-/

namespace A130338.P14171180180232235649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130338.P14171180180232235649

/-! ## A130338.P7149436859418311543

`∩[A003635(n+1), A009087(n+1)]`
-/

namespace A130338.P7149436859418311543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130338.P7149436859418311543

/-! ## A130338.P336860782815124012

`∩[A003635(n+1), A033946(n+1)]`
-/

namespace A130338.P336860782815124012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130338.P336860782815124012

/-! ## A130338.P14509248836481206745

`∩[A003635(n+1), A045319(n+1)]`
-/

namespace A130338.P14509248836481206745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130338.P14509248836481206745

/-! ## A130338.P5512733777709401704

`∩[A003635(n+1), A045344(n+1)]`
-/

namespace A130338.P5512733777709401704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130338.P5512733777709401704

/-! ## A130338.P16905258004674094851

`∩[A003635(n+1), A046022(n+1)]`
-/

namespace A130338.P16905258004674094851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130338.P16905258004674094851

/-! ## A130338.P12558993857822201765

`∩[A003635(n+1), A050150(n+1)]`
-/

namespace A130338.P12558993857822201765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130338.P12558993857822201765

/-! ## A130338.P15601338788925817353

`∩[A003635(n+1), A348283(n+1)]`
-/

namespace A130338.P15601338788925817353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130338.P15601338788925817353

/-! ## A130338.P17141540368072046585

`filter[A003635(n+1), A010051(#)]`
-/

namespace A130338.P17141540368072046585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A130338.P17141540368072046585

/-! ## A130338.P6342023244475754005

`filter[A003635(n+1), A302777(#)]`
-/

namespace A130338.P6342023244475754005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A130338.P6342023244475754005

/-! ## A130338.P11656592406057058182

`filter[A003635(n+1), A323152(#)]`
-/

namespace A130338.P11656592406057058182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A130338.P11656592406057058182

/-! ## A130338.P9420825220240935096

`filter[A003635(n+1), A323153(#)]`
-/

namespace A130338.P9420825220240935096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A130338.P9420825220240935096

/-! ## A130338.P920196887036559533

`filter[A003635(n+1), A345950(#)]`
-/

namespace A130338.P920196887036559533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A130338.P920196887036559533

/-! ## A130338.P7079837969206116562

`filter[A003635(n+1), A355937(#)]`
-/

namespace A130338.P7079837969206116562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A130338.P7079837969206116562

/-!
# A130339: Signature permutation of a Catalan automorphism: swap the two rightmost subtrees of general trees, if the root degree (A057515(n)) is even.

The programs for A130339, there is no canonical definition to state claims against.
-/

/-! ## A130339.P13979306719718728052

`A057164(A130340(A057164(n)))`
-/

namespace A130339.P13979306719718728052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A130340 (A057164 n).toNat).toNat

end

end A130339.P13979306719718728052

/-! ## A130339.P15932822013423288192

`A057508(A130340(A057508(n)))`
-/

namespace A130339.P15932822013423288192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A130340 (A057508 n).toNat).toNat

end

end A130339.P15932822013423288192

/-! ## A130339.P5794635986210557082

`A127286(A127286(A057509(n)))`
-/

namespace A130339.P5794635986210557082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127286 (A127286 (A057509 n).toNat).toNat

end

end A130339.P5794635986210557082

/-! ## A130339.P16244682521083976058

`A130340(n)-A154269(A110554(n+1))`
-/

namespace A130339.P16244682521083976058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130340 n - A154269 (A110554 (n + 1)).toNat

end

end A130339.P16244682521083976058

/-! ## A130339.P16628058920131784967

`A154269(2*A110554(n+1))+A130340(n)`
-/

namespace A130339.P16628058920131784967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (2 * A110554 (n + 1)).toNat + A130340 n

end

end A130339.P16628058920131784967

/-!
# A130340: Signature permutation of a Catalan automorphism: swap the two leftmost subtrees of general trees, if the root degree (A057515(n)) is even.

The programs for A130340, there is no canonical definition to state claims against.
-/

/-! ## A130340.P845741069461732056

`A057164(A130339(A057164(n)))`
-/

namespace A130340.P845741069461732056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A130339 (A057164 n).toNat).toNat

end

end A130340.P845741069461732056

/-! ## A130340.P4802327920471315394

`A057508(A130339(A057508(n)))`
-/

namespace A130340.P4802327920471315394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A130339 (A057508 n).toNat).toNat

end

end A130340.P4802327920471315394

/-!
# A130341: Row 3 of A122203.

The programs for A130341, there is no canonical definition to state claims against.
-/

/-! ## A130341.P4179015213086956293

`A069767(A069770(n))`
-/

namespace A130341.P4179015213086956293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A069770 n).toNat

end

end A130341.P4179015213086956293

/-! ## A130341.P10538301474147301976

`A073290(A073287(n))`
-/

namespace A130341.P10538301474147301976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073290 (A073287 n).toNat

end

end A130341.P10538301474147301976

/-! ## A130341.P6725341074013373852

`A057510(A130347(n))`
-/

namespace A130341.P6725341074013373852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057510 (A130347 n).toNat

end

end A130341.P6725341074013373852

/-! ## A130341.P337719678114445498

`A073290(n)+n-A073286(n)`
-/

namespace A130341.P337719678114445498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073290 n + ((n : ℤ) - A073286 n)

end

end A130341.P337719678114445498

/-! ## A130341.P12715090899229873599

`A069767(A057510(A057501(n)))`
-/

namespace A130341.P12715090899229873599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A057510 (A057501 n).toNat).toNat

end

end A130341.P12715090899229873599

/-! ## A130341.P10830134951045593917

`A073287(A069767(A069767(n)))`
-/

namespace A130341.P10830134951045593917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073287 (A069767 (A069767 n).toNat).toNat

end

end A130341.P10830134951045593917

/-! ## A130341.P2713242325167221055

`A082346(A073286(A082345(n)))`
-/

namespace A130341.P2713242325167221055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082346 (A073286 (A082345 n).toNat).toNat

end

end A130341.P2713242325167221055

/-! ## A130341.P11532556834227135433

`A082348(A073286(A082347(n)))`
-/

namespace A130341.P11532556834227135433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082348 (A073286 (A082347 n).toNat).toNat

end

end A130341.P11532556834227135433

/-! ## A130341.P13845120118543408514

`A069767(A154126(A154125(n)))`
-/

namespace A130341.P13845120118543408514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A154126 (A154125 n).toNat).toNat

end

end A130341.P13845120118543408514

/-! ## A130341.P11483574655722286202

`A130981(A130342(A130981(n)))`
-/

namespace A130341.P11483574655722286202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130981 (A130342 (A130981 n).toNat).toNat

end

end A130341.P11483574655722286202

/-! ## A130341.P11424074881759204282

`A057163(A069768(A069770(A057163(n))))`
-/

namespace A130341.P11424074881759204282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A069768 (A069770 (A057163 n).toNat).toNat).toNat

end

end A130341.P11424074881759204282

/-! ## A130341.P9810750650520226298

`A069770(A073286(A073286(A069768(n))))`
-/

namespace A130341.P9810750650520226298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A073286 (A073286 (A069768 n).toNat).toNat).toNat

end

end A130341.P9810750650520226298

/-! ## A130341.P11069901329377389400

`A072796(A069767(A074679(A072796(n))))`
-/

namespace A130341.P11069901329377389400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A069767 (A074679 (A072796 n).toNat).toNat).toNat

end

end A130341.P11069901329377389400

/-! ## A130341.P4135503168430016431

`A073282(A069768(A074680(A073283(n))))`
-/

namespace A130341.P4135503168430016431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073282 (A069768 (A074680 (A073283 n).toNat).toNat).toNat

end

end A130341.P4135503168430016431

/-! ## A130341.P13837206717947586484

`A069768(A073286(A073286(A069768(A073286(n)))))`
-/

namespace A130341.P13837206717947586484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A073286 (A073286 (A069768 (A073286 n).toNat).toNat).toNat).toNat

end

end A130341.P13837206717947586484

/-! ## A130341.P4398333955266081467

`A082348(A082346(A082346(A073286(A082348(n)))))`
-/

namespace A130341.P4398333955266081467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082348 (A082346 (A082346 (A073286 (A082348 n).toNat).toNat).toNat).toNat

end

end A130341.P4398333955266081467

/-! ## A130341.P4622496118508633922

`A069770(A073286(A073286(A069770(A130342(n)))))`
-/

namespace A130341.P4622496118508633922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A073286 (A073286 (A069770 (A130342 n).toNat).toNat).toNat).toNat

end

end A130341.P4622496118508633922

/-!
# A130342: Row 3 of A122204.

The programs for A130342, there is no canonical definition to state claims against.
-/

/-! ## A130342.P2383253547607946828

`A069770(A069768(n))`
-/

namespace A130342.P2383253547607946828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A069768 n).toNat

end

end A130342.P2383253547607946828

/-! ## A130342.P3157242331351340225

`A073291(A073286(n))`
-/

namespace A130342.P3157242331351340225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073291 (A073286 n).toNat

end

end A130342.P3157242331351340225

/-! ## A130342.P3165450148587585432

`A130348(A057509(n))`
-/

namespace A130342.P3165450148587585432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130348 (A057509 n).toNat

end

end A130342.P3165450148587585432

/-! ## A130342.P14341269811292351012

`A073291(n)+n-A073287(n)`
-/

namespace A130342.P14341269811292351012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073291 n + ((n : ℤ) - A073287 n)

end

end A130342.P14341269811292351012

/-! ## A130342.P18273330471054007105

`A069770(A057162(A057508(n)))`
-/

namespace A130342.P18273330471054007105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A057162 (A057508 n).toNat).toNat

end

end A130342.P18273330471054007105

/-! ## A130342.P439889018320253449

`A057163(A073286(A057163(n)))`
-/

namespace A130342.P439889018320253449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A073286 (A057163 n).toNat).toNat

end

end A130342.P439889018320253449

/-! ## A130342.P15410092007494624584

`A069770(A073287(A069770(n)))`
-/

namespace A130342.P15410092007494624584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A073287 (A069770 n).toNat).toNat

end

end A130342.P15410092007494624584

/-! ## A130342.P9547929384751776579

`A082348(A073287(A082347(n)))`
-/

namespace A130342.P9547929384751776579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082348 (A073287 (A082347 n).toNat).toNat

end

end A130342.P9547929384751776579

/-! ## A130342.P626375080675344607

`A069770(A154456(A154449(n)))`
-/

namespace A130342.P626375080675344607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A154456 (A154449 n).toNat).toNat

end

end A130342.P626375080675344607

/-! ## A130342.P9058411510826886475

`A069770(A154454(A154451(n)))`
-/

namespace A130342.P9058411510826886475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A154454 (A154451 n).toNat).toNat

end

end A130342.P9058411510826886475

/-! ## A130342.P14069211603222246815

`A130981(A130341(A130981(n)))`
-/

namespace A130342.P14069211603222246815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130981 (A130341 (A130981 n).toNat).toNat

end

end A130342.P14069211603222246815

/-! ## A130342.P1706282995656881288

`A072796(A074680(A069768(A072796(n))))`
-/

namespace A130342.P1706282995656881288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (A074680 (A069768 (A072796 n).toNat).toNat).toNat

end

end A130342.P1706282995656881288

/-! ## A130342.P10314995755748038015

`A073287(A069767(A073287(A073287(A069767(n)))))`
-/

namespace A130342.P10314995755748038015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073287 (A069767 (A073287 (A073287 (A069767 n).toNat).toNat).toNat).toNat

end

end A130342.P10314995755748038015

/-! ## A130342.P11557464891736518029

`A082346(A082348(A082348(A073287(A082346(n)))))`
-/

namespace A130342.P11557464891736518029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082346 (A082348 (A082348 (A073287 (A082346 n).toNat).toNat).toNat).toNat

end

end A130342.P11557464891736518029

/-! ## A130342.P1002555809947544240

`A069768(A130341(A073287(A069768(A130341(n)))))`
-/

namespace A130342.P1002555809947544240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A130341 (A073287 (A069768 (A130341 n).toNat).toNat).toNat).toNat

end

end A130342.P1002555809947544240

/-!
# A130343: Row 4 of A122203.

The programs for A130343, there is no canonical definition to state claims against.
-/

/-! ## A130343.P707501051486551668

`A130365(A069770(n))`
-/

namespace A130343.P707501051486551668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130365 (A069770 n).toNat

end

end A130343.P707501051486551668

/-! ## A130343.P6422599857385690368

`A130365(A073269(A072796(n)))`
-/

namespace A130343.P6422599857385690368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130365 (A073269 (A072796 n).toNat).toNat

end

end A130343.P6422599857385690368

/-! ## A130343.P11208659613491914537

`A130365(A072796(A073270(n)))`
-/

namespace A130343.P11208659613491914537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130365 (A072796 (A073270 n).toNat).toNat

end

end A130343.P11208659613491914537

/-! ## A130343.P4323450661737962010

`A130983(A130348(A130984(n)))`
-/

namespace A130343.P4323450661737962010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130983 (A130348 (A130984 n).toNat).toNat

end

end A130343.P4323450661737962010

/-! ## A130343.P1938105723095688634

`A130365(A073270(A089856(n)))`
-/

namespace A130343.P1938105723095688634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130365 (A073270 (A089856 n).toNat).toNat

end

end A130343.P1938105723095688634

/-! ## A130343.P9963643773178788608

`A130365(A089856(A073269(n)))`
-/

namespace A130343.P9963643773178788608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130365 (A089856 (A073269 n).toNat).toNat

end

end A130343.P9963643773178788608

/-!
# A130344: Row 6 of A122204.

The programs for A130344, there is no canonical definition to state claims against.
-/

/-! ## A130344.P3320904592939117237

`A069770(A130366(n))`
-/

namespace A130344.P3320904592939117237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A130366 n).toNat

end

end A130344.P3320904592939117237

/-! ## A130344.P16111513109799584595

`A130983(A130347(A130984(n)))`
-/

namespace A130344.P16111513109799584595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130983 (A130347 (A130984 n).toNat).toNat

end

end A130344.P16111513109799584595

/-! ## A130344.P5755173735265845473

`A131008(A130367(A131007(A069768(n))))`
-/

namespace A130344.P5755173735265845473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131008 (A130367 (A131007 (A069768 n).toNat).toNat).toNat

end

end A130344.P5755173735265845473

/-! ## A130344.P16922217525810021341

`A122330(A122301(n)%A122227(n))`
-/

namespace A130344.P16922217525810021341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122330 (Int.tmod (A122301 n) (A122227 n)).toNat

end

end A130344.P16922217525810021341

/-! ## A130344.P5031297534799966725

`A122330(A122301(n))+A000007(A122227(n)+1)`
-/

namespace A130344.P5031297534799966725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122330 (A122301 n).toNat + A000007 (A122227 n + 1).toNat

end

end A130344.P5031297534799966725

/-! ## A130344.P4108162603105121261

`A122330(A122301(n))+A000007(A225635(n+1))`
-/

namespace A130344.P4108162603105121261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122330 (A122301 n).toNat + A000007 (A225635 (n + 1)).toNat

end

end A130344.P4108162603105121261

/-!
# A130345: Row 5 of A122203.

The programs for A130345, there is no canonical definition to state claims against.
-/

/-! ## A130345.P1580070929043684696

`A130367(A069770(n))`
-/

namespace A130345.P1580070929043684696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130367 (A069770 n).toNat

end

end A130345.P1580070929043684696

/-! ## A130345.P7501972995875163061

`A130367(A073269(A072796(n)))`
-/

namespace A130345.P7501972995875163061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130367 (A073269 (A072796 n).toNat).toNat

end

end A130345.P7501972995875163061

/-! ## A130345.P3934388490589539351

`A130367(A072796(A073270(n)))`
-/

namespace A130345.P3934388490589539351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130367 (A072796 (A073270 n).toNat).toNat

end

end A130345.P3934388490589539351

/-! ## A130345.P5961335638412563557

`A130982(A130346(A130982(n)))`
-/

namespace A130345.P5961335638412563557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130982 (A130346 (A130982 n).toNat).toNat

end

end A130345.P5961335638412563557

/-! ## A130345.P104088012016141995

`A122308(A130346(A122308(n)))`
-/

namespace A130345.P104088012016141995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122308 (A130346 (A122308 n).toNat).toNat

end

end A130345.P104088012016141995

/-! ## A130345.P15511319026775307584

`A130367(A089860(A089853(n)))`
-/

namespace A130345.P15511319026775307584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130367 (A089860 (A089853 n).toNat).toNat

end

end A130345.P15511319026775307584

/-! ## A130345.P63666491851600316

`A130367(A074679(A089862(A074679(n))))`
-/

namespace A130345.P63666491851600316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130367 (A074679 (A089862 (A074679 n).toNat).toNat).toNat

end

end A130345.P63666491851600316

/-! ## A130345.P17779037212936048873

`A130367(A089853(A089853(A089862(n))))`
-/

namespace A130345.P17779037212936048873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130367 (A089853 (A089853 (A089862 n).toNat).toNat).toNat

end

end A130345.P17779037212936048873

/-! ## A130345.P11017218781924836251

`A122302(A122323(n))%A122227(n)`
-/

namespace A130345.P11017218781924836251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122302 (A122323 n).toNat) (A122227 n)

end

end A130345.P11017218781924836251

/-!
# A130346: Row 5 of A122204.

The programs for A130346, there is no canonical definition to state claims against.
-/

/-! ## A130346.P13058031999847487669

`A069770(A130368(n))`
-/

namespace A130346.P13058031999847487669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A130368 n).toNat

end

end A130346.P13058031999847487669

/-! ## A130346.P2681295907522627282

`A130982(A130345(A130982(n)))`
-/

namespace A130346.P2681295907522627282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130982 (A130345 (A130982 n).toNat).toNat

end

end A130346.P2681295907522627282

/-! ## A130346.P10167937077645973075

`A131004(A130363(A131003(A069768(n))))`
-/

namespace A130346.P10167937077645973075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131004 (A130363 (A131003 (A069768 n).toNat).toNat).toNat

end

end A130346.P10167937077645973075

/-! ## A130346.P14273365472125549925

`A122307(A130345(A122307(n)))`
-/

namespace A130346.P14273365472125549925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122307 (A130345 (A122307 n).toNat).toNat

end

end A130346.P14273365472125549925

/-! ## A130346.P17854558698530898437

`A122324(A122301(n)%A122227(n))`
-/

namespace A130346.P17854558698530898437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122324 (Int.tmod (A122301 n) (A122227 n)).toNat

end

end A130346.P17854558698530898437

/-! ## A130346.P14664685057915526090

`A122324(A122301(n))%A122237(n)`
-/

namespace A130346.P14664685057915526090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122324 (A122301 n).toNat) (A122237 n)

end

end A130346.P14664685057915526090

/-! ## A130346.P14222187665184871497

`A001511(A124114(n+1))*A122324(A122301(n))`
-/

namespace A130346.P14222187665184871497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A124114 (n + 1)).toNat * A122324 (A122301 n).toNat

end

end A130346.P14222187665184871497

/-!
# A130347: Row 6 of A122203.

The programs for A130347, there is no canonical definition to state claims against.
-/

/-! ## A130347.P2645925801790649585

`A069767(A069773(n))`
-/

namespace A130347.P2645925801790649585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A069773 n).toNat

end

end A130347.P2645925801790649585

/-! ## A130347.P5228566923562604382

`A057509(A130341(n))`
-/

namespace A130347.P5228566923562604382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 (A130341 n).toNat

end

end A130347.P5228566923562604382

/-! ## A130347.P16397276013109745186

`A130363(A069770(n))`
-/

namespace A130347.P16397276013109745186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130363 (A069770 n).toNat

end

end A130347.P16397276013109745186

/-! ## A130347.P11802768832277978291

`A130984(A130344(A130983(n)))`
-/

namespace A130347.P11802768832277978291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130984 (A130344 (A130983 n).toNat).toNat

end

end A130347.P11802768832277978291

/-! ## A130347.P9548083994604277205

`A069767(A057163(A057501(A057163(n))))`
-/

namespace A130347.P9548083994604277205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A057163 (A057501 (A057163 n).toNat).toNat).toNat

end

end A130347.P9548083994604277205

/-! ## A130347.P8509001093261721631

`A057509(A069767(A057510(A057501(n))))`
-/

namespace A130347.P8509001093261721631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 (A069767 (A057510 (A057501 n).toNat).toNat).toNat

end

end A130347.P8509001093261721631

/-! ## A130347.P10668370959374777542

`A057509(A069767(A154126(A154125(n))))`
-/

namespace A130347.P10668370959374777542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 (A069767 (A154126 (A154125 n).toNat).toNat).toNat

end

end A130347.P10668370959374777542

/-! ## A130347.P7182744810573458156

`A130363(A089861(A072797(n)))`
-/

namespace A130347.P7182744810573458156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130363 (A089861 (A072797 n).toNat).toNat

end

end A130347.P7182744810573458156

/-!
# A130348: Row 4 of A122204.

The programs for A130348, there is no canonical definition to state claims against.
-/

/-! ## A130348.P16573298303310260129

`A069774(A069768(n))`
-/

namespace A130348.P16573298303310260129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069774 (A069768 n).toNat

end

end A130348.P16573298303310260129

/-! ## A130348.P2437345189685470951

`A130342(A057510(n))`
-/

namespace A130348.P2437345189685470951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130342 (A057510 n).toNat

end

end A130348.P2437345189685470951

/-! ## A130348.P15431926891806017003

`A069770(A130364(n))`
-/

namespace A130348.P15431926891806017003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A130364 n).toNat

end

end A130348.P15431926891806017003

/-! ## A130348.P763839889741855947

`A069774(A069769(A057162(n)))`
-/

namespace A130348.P763839889741855947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069774 (A069769 (A057162 n).toNat).toNat

end

end A130348.P763839889741855947

/-! ## A130348.P7430245250723145229

`A130342(A069770(A057502(n)))`
-/

namespace A130348.P7430245250723145229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130342 (A069770 (A057502 n).toNat).toNat

end

end A130348.P7430245250723145229

/-! ## A130348.P17406175036516639993

`A130984(A130343(A130983(n)))`
-/

namespace A130348.P17406175036516639993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130984 (A130343 (A130983 n).toNat).toNat

end

end A130348.P17406175036516639993

/-! ## A130348.P15898645542407379348

`A069770(A057162(A057509(A057508(n))))`
-/

namespace A130348.P15898645542407379348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A057162 (A057509 (A057508 n).toNat).toNat).toNat

end

end A130348.P15898645542407379348

/-! ## A130348.P15264781401151366239

`A069770(A057163(A057510(A069767(A057163(n)))))`
-/

namespace A130348.P15264781401151366239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A057163 (A057510 (A069767 (A057163 n).toNat).toNat).toNat).toNat

end

end A130348.P15264781401151366239

/-!
# A130349: Row 9 of A122203.

The programs for A130349, there is no canonical definition to state claims against.
-/

/-! ## A130349.P12952981745652924306

`A069767(A074689(n))`
-/

namespace A130349.P12952981745652924306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A074689 n).toNat

end

end A130349.P12952981745652924306

/-! ## A130349.P2478160229368731723

`A122282(A130351(n))`
-/

namespace A130349.P2478160229368731723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (A130351 n).toNat

end

end A130349.P2478160229368731723

/-! ## A130349.P5183788370077059965

`A130353(A130353(n))%A016741(n+1)`
-/

namespace A130349.P5183788370077059965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130353 (A130353 n).toNat) (A016741 (n + 1))

end

end A130349.P5183788370077059965

/-! ## A130349.P15346109148931547660

`A130354(n)%(A186871(n+1)+1)`
-/

namespace A130349.P15346109148931547660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130354 n) (A186871 (n + 1) + 1)

end

end A130349.P15346109148931547660

/-! ## A130349.P10894642029581183902

`A130354(n)/A352031(A127592(n+1))`
-/

namespace A130349.P10894642029581183902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130354 n : ℚ) / (A352031 (A127592 (n + 1)).toNat : ℚ)

end

end A130349.P10894642029581183902

/-!
# A130350: Row 11 of A122204.

The programs for A130350, there is no canonical definition to state claims against.
-/

/-! ## A130350.P12115249192635750360

`A074690(A069768(n))`
-/

namespace A130350.P12115249192635750360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074690 (A069768 n).toNat

end

end A130350.P12115249192635750360

/-! ## A130350.P16515096824213741957

`A130352(A130349(A130352(n)))`
-/

namespace A130350.P16515096824213741957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130352 (A130349 (A130352 n).toNat).toNat

end

end A130350.P16515096824213741957

/-! ## A130350.P4560332862979882210

`A130352(A122282(n))`
-/

namespace A130350.P4560332862979882210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130352 (A122282 n).toNat

end

end A130350.P4560332862979882210

/-! ## A130350.P11876039793094771787

`A122332(A122301(n))%A346635(n+1)`
-/

namespace A130350.P11876039793094771787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122332 (A122301 n).toNat) (A346635 (n + 1))

end

end A130350.P11876039793094771787

/-! ## A130350.P15294533401705462518

`A122334(A122335(n))%A346635(n+1)`
-/

namespace A130350.P15294533401705462518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122334 (A122335 n).toNat) (A346635 (n + 1))

end

end A130350.P15294533401705462518

/-! ## A130350.P5512331764370570294

`A122332(A122301(n)*A323022(n+1))`
-/

namespace A130350.P5512331764370570294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122332 (A122301 n * A323022 (n + 1)).toNat

end

end A130350.P5512331764370570294

/-!
# A130351: Row 10 of A122203.

The programs for A130351, there is no canonical definition to state claims against.
-/

/-! ## A130351.P16800827092174670798

`A130359(A074689(n))`
-/

namespace A130351.P16800827092174670798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130359 (A074689 n).toNat

end

end A130351.P16800827092174670798

/-! ## A130351.P2286166686216447804

`A130349(A130352(A130349(n)))`
-/

namespace A130351.P2286166686216447804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130349 (A130352 (A130349 n).toNat).toNat

end

end A130351.P2286166686216447804

/-! ## A130351.P142330183481478821

`A089856(n)+A130352(A089856(n))-n`
-/

namespace A130351.P142330183481478821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089856 n + (A130352 (A089856 n).toNat - (n : ℤ))

end

end A130351.P142330183481478821

/-! ## A130351.P7190440868866032544

`A122292(A130352(A122292(n)))`
-/

namespace A130351.P7190440868866032544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122292 (A130352 (A122292 n).toNat).toNat

end

end A130351.P7190440868866032544

/-! ## A130351.P17426630603836114585

`A122282(A130349(n))`
-/

namespace A130351.P17426630603836114585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (A130349 n).toNat

end

end A130351.P17426630603836114585

/-! ## A130351.P6939816606603411355

`A089856(A130352(A089856(n)))`
-/

namespace A130351.P6939816606603411355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089856 (A130352 (A089856 n).toNat).toNat

end

end A130351.P6939816606603411355

/-!
# A130352: Row 10 of A122204.

The programs for A130352, there is no canonical definition to state claims against.
-/

/-! ## A130352.P971482312876921124

`A074690(A130360(n))`
-/

namespace A130352.P971482312876921124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074690 (A130360 n).toNat

end

end A130352.P971482312876921124

/-! ## A130352.P13621634997364407808

`A130350(A130351(A130350(n)))`
-/

namespace A130352.P13621634997364407808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130350 (A130351 (A130350 n).toNat).toNat

end

end A130352.P13621634997364407808

/-! ## A130352.P13104755651100946781

`A089856(n)+A130351(A089856(n))-n`
-/

namespace A130352.P13104755651100946781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089856 n + (A130351 (A089856 n).toNat - (n : ℤ))

end

end A130352.P13104755651100946781

/-! ## A130352.P13290702093949471596

`A130350(A122282(n))`
-/

namespace A130352.P13290702093949471596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130350 (A122282 n).toNat

end

end A130352.P13290702093949471596

/-! ## A130352.P5180557579534471972

`A122291(A130351(A122291(n)))`
-/

namespace A130352.P5180557579534471972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122291 (A130351 (A122291 n).toNat).toNat

end

end A130352.P5180557579534471972

/-! ## A130352.P17076788170159496598

`A089856(A130351(A089856(n)))`
-/

namespace A130352.P17076788170159496598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089856 (A130351 (A089856 n).toNat).toNat

end

end A130352.P17076788170159496598

/-!
# A130353: Row 11 of A122203.

The programs for A130353, there is no canonical definition to state claims against.
-/

/-! ## A130353.P3294438268806392750

`A122282(A082339(n))`
-/

namespace A130353.P3294438268806392750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (A082339 n).toNat

end

end A130353.P3294438268806392750

/-! ## A130353.P18100641738796895597

`A122338(A122331(n)*A323022(n+1))`
-/

namespace A130353.P18100641738796895597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122338 (A122331 n * A323022 (n + 1)).toNat

end

end A130353.P18100641738796895597

/-! ## A130353.P5116784649096801319

`A122340(A122333(n)*A323022(n+1))`
-/

namespace A130353.P5116784649096801319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122340 (A122333 n * A323022 (n + 1)).toNat

end

end A130353.P5116784649096801319

/-! ## A130353.P6018605291687228226

`A122340(lcm(A122333(n), A323022(n+1)))`
-/

namespace A130353.P6018605291687228226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122340 (Int.lcm (A122333 n) (A323022 (n + 1)))

end

end A130353.P6018605291687228226

/-!
# A130354: Row 9 of A122204.

The programs for A130354, there is no canonical definition to state claims against.
-/

/-! ## A130354.P10182870065700947177

`A082340(A122282(n))`
-/

namespace A130354.P10182870065700947177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082340 (A122282 n).toNat

end

end A130354.P10182870065700947177

/-! ## A130354.P2917439405241154132

`A122338(A122301(n))^A327656(A138882(n+1))`
-/

namespace A130354.P2917439405241154132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122338 (A122301 n).toNat : ℚ) ^ (A327656 (A138882 (n + 1)).toNat : ℤ)

end

end A130354.P2917439405241154132

/-! ## A130354.P16591562350813164288

`A122338(A122301(n)%A007865(2*n+1))`
-/

namespace A130354.P16591562350813164288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122338 (Int.tmod (A122301 n) (A007865 (2 * n + 1))).toNat

end

end A130354.P16591562350813164288

/-!
# A130355: Row 13 of A122203.

The programs for A130355, there is no canonical definition to state claims against.
-/

/-! ## A130355.P12298619363815223027

`A074685(A130356(A074685(n)))`
-/

namespace A130355.P12298619363815223027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074685 (A130356 (A074685 n).toNat).toNat

end

end A130355.P12298619363815223027

/-! ## A130355.P5995064497357095971

`A122282(A074685(n))`
-/

namespace A130355.P5995064497357095971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (A074685 n).toNat

end

end A130355.P5995064497357095971

/-! ## A130355.P11921468625335802486

`A130359(A122309(n))%record[A183380(n+1)]`
-/

namespace A130355.P11921468625335802486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130359 (A122309 n).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A130355.P11921468625335802486

/-! ## A130355.P13789624876574484266

`A130359(A122309(n))+A014063(A233543(n))`
-/

namespace A130355.P13789624876574484266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130359 (A122309 n).toNat + A014063 (A233543 n).toNat

end

end A130355.P13789624876574484266

/-! ## A130355.P9048070668443689460

`A130359(A122309(n)%A131194(n+1))`
-/

namespace A130355.P9048070668443689460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130359 (Int.tmod (A122309 n) (A131194 (n + 1))).toNat

end

end A130355.P9048070668443689460

/-!
# A130356: Row 18 of A122204.

The programs for A130356, there is no canonical definition to state claims against.
-/

/-! ## A130356.P17527367672701356181

`A074686(A130355(A074686(n)))`
-/

namespace A130356.P17527367672701356181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074686 (A130355 (A074686 n).toNat).toNat

end

end A130356.P17527367672701356181

/-! ## A130356.P15217196181176272436

`A074686(A122282(n))`
-/

namespace A130356.P15217196181176272436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074686 (A122282 n).toNat

end

end A130356.P15217196181176272436

/-! ## A130356.P9205895487936313670

`A122308(A069768(n)%A122227(n))`
-/

namespace A130356.P9205895487936313670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122308 (Int.tmod (A069768 n) (A122227 n)).toNat

end

end A130356.P9205895487936313670

/-! ## A130356.P14306399905398172016

`A122306(A130358(n)%A122227(n))`
-/

namespace A130356.P14306399905398172016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122306 (Int.tmod (A130358 n) (A122227 n)).toNat

end

end A130356.P14306399905398172016

/-! ## A130356.P15998408980742202662

`A120705(A122349(n)^A071625(2*n+3))`
-/

namespace A130356.P15998408980742202662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120705 (SequenceMachineLib.roundAway ((A122349 n : ℚ) ^ (A071625 (2 * n + 3) : ℤ))).toNat

end

end A130356.P15998408980742202662

/-!
# A130357: Row 14 of A122203.

The programs for A130357, there is no canonical definition to state claims against.
-/

/-! ## A130357.P16874344726671565261

`A130361(A130358(A130361(n)))`
-/

namespace A130357.P16874344726671565261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130361 (A130358 (A130361 n).toNat).toNat

end

end A130357.P16874344726671565261

/-! ## A130357.P4616154945440003459

`A069767(A057163(A082339(A057163(n))))`
-/

namespace A130357.P4616154945440003459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A057163 (A082339 (A057163 n).toNat).toNat).toNat

end

end A130357.P4616154945440003459

/-! ## A130357.P16110444439388024139

`A089869(A122336(n))`
-/

namespace A130357.P16110444439388024139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (A122336 n).toNat

end

end A130357.P16110444439388024139

/-! ## A130357.P12418557386779974806

`A122282(A130361(n))`
-/

namespace A130357.P12418557386779974806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (A130361 n).toNat

end

end A130357.P12418557386779974806

/-! ## A130357.P5941366852432801506

`A122349(A122338(n)%A146556(n+1))`
-/

namespace A130357.P5941366852432801506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122349 (Int.tmod (A122338 n) (A146556 (n + 1))).toNat

end

end A130357.P5941366852432801506

/-!
# A130358: Row 19 of A122204.

The programs for A130358, there is no canonical definition to state claims against.
-/

/-! ## A130358.P9709159852249217418

`A130362(A130357(A130362(n)))`
-/

namespace A130358.P9709159852249217418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130362 (A130357 (A130362 n).toNat).toNat

end

end A130358.P9709159852249217418

/-! ## A130358.P5036117424052847079

`A130362(A122282(n))`
-/

namespace A130358.P5036117424052847079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130362 (A122282 n).toNat

end

end A130358.P5036117424052847079

/-! ## A130358.P8591812374637484310

`A122335(A089870(n))`
-/

namespace A130358.P8591812374637484310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122335 (A089870 n).toNat

end

end A130358.P8591812374637484310

/-! ## A130358.P8292326355933994880

`A122300(A069768(n))%A115897(∑{d}[n+1, #²])`
-/

namespace A130358.P8292326355933994880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122300 (A069768 n).toNat) (A115897 (∑ d ∈ Nat.divisors (f1 n), d ^ 2))

end

end A130358.P8292326355933994880

/-! ## A130358.P645493556111878571

`A122300(A069768(n))+A000038(A212114(n))`
-/

namespace A130358.P645493556111878571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122300 (A069768 n).toNat + A000038 (A212114 (n + 10)).toNat

end

end A130358.P645493556111878571

/-! ## A130358.P15175804760762876088

`A122303(A074686(n)%A122227(n))`
-/

namespace A130358.P15175804760762876088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122303 (Int.tmod (A074686 n) (A122227 n)).toNat

end

end A130358.P15175804760762876088

/-!
# A130359: Row 15 of A122203.

The programs for A130359, there is no canonical definition to state claims against.
-/

/-! ## A130359.P16592486270353677628

`A130351(A074690(n))`
-/

namespace A130359.P16592486270353677628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130351 (A074690 n).toNat

end

end A130359.P16592486270353677628

/-! ## A130359.P4124553770563701984

`A057161(A130360(A057161(n)))`
-/

namespace A130359.P4124553770563701984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057161 (A130360 (A057161 n).toNat).toNat

end

end A130359.P4124553770563701984

/-! ## A130359.P16516809067730081725

`A057163(A130360(A057163(n)))`
-/

namespace A130359.P16516809067730081725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130360 (A057163 n).toNat).toNat

end

end A130359.P16516809067730081725

/-! ## A130359.P1582805281234571370

`A069767(A130360(A069767(n)))`
-/

namespace A130359.P1582805281234571370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A130360 (A069767 n).toNat).toNat

end

end A130359.P1582805281234571370

/-! ## A130359.P11587961239854278598

`A122282(A069767(n))`
-/

namespace A130359.P11587961239854278598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (A069767 n).toNat

end

end A130359.P11587961239854278598

/-! ## A130359.P3265546918594243630

`A122282(A069770(A073286(n)))`
-/

namespace A130359.P3265546918594243630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (A069770 (A073286 n).toNat).toNat

end

end A130359.P3265546918594243630

/-! ## A130359.P7960959247668898397

`A089863(A130360(A089863(n)))`
-/

namespace A130359.P7960959247668898397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089863 (A130360 (A089863 n).toNat).toNat

end

end A130359.P7960959247668898397

/-! ## A130359.P12321531213778931063

`A122282(A154452(A154453(n)))`
-/

namespace A130359.P12321531213778931063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (A154452 (A154453 n).toNat).toNat

end

end A130359.P12321531213778931063

/-! ## A130359.P3364467067979025558

`A122282(A127387(A069768(A127387(n))))`
-/

namespace A130359.P3364467067979025558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (A127387 (A069768 (A127387 n).toNat).toNat).toNat

end

end A130359.P3364467067979025558

/-! ## A130359.P9627737434648461613

`A089854(A122312(A122301(A122312(n))))`
-/

namespace A130359.P9627737434648461613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (A122312 (A122301 (A122312 n).toNat).toNat).toNat

end

end A130359.P9627737434648461613

/-!
# A130360: Row 21 of A122204.

The programs for A130360, there is no canonical definition to state claims against.
-/

/-! ## A130360.P6466211002004613162

`A074689(A130352(n))`
-/

namespace A130360.P6466211002004613162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074689 (A130352 n).toNat

end

end A130360.P6466211002004613162

/-! ## A130360.P15928424538815175861

`A057162(A130359(A057162(n)))`
-/

namespace A130360.P15928424538815175861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057162 (A130359 (A057162 n).toNat).toNat

end

end A130360.P15928424538815175861

/-! ## A130360.P1199705633873877997

`A057163(A130359(A057163(n)))`
-/

namespace A130360.P1199705633873877997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130359 (A057163 n).toNat).toNat

end

end A130360.P1199705633873877997

/-! ## A130360.P4862161733337151933

`A069768(A130359(A069768(n)))`
-/

namespace A130360.P4862161733337151933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A130359 (A069768 n).toNat).toNat

end

end A130360.P4862161733337151933

/-! ## A130360.P1719085649573051311

`A073280(A130999(n)%A125750(n+1))`
-/

namespace A130360.P1719085649573051311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073280 (Int.tmod (A130999 n) (A125750 (n + 1))).toNat

end

end A130360.P1719085649573051311

/-! ## A130360.P2821049554630101395

`A069768(A122282(n))`
-/

namespace A130360.P2821049554630101395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A122282 n).toNat

end

end A130360.P2821049554630101395

/-! ## A130360.P15318081956291100772

`A069768(A154454(A069770(A122328(n))))`
-/

namespace A130360.P15318081956291100772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A154454 (A069770 (A122328 n).toNat).toNat).toNat

end

end A130360.P15318081956291100772

/-! ## A130360.P13588378128841232730

`A089859(A130359(A089859(n)))`
-/

namespace A130360.P13588378128841232730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089859 (A130359 (A089859 n).toNat).toNat

end

end A130360.P13588378128841232730

/-!
# A130361: Row 16 of A122203.

The programs for A130361, there is no canonical definition to state claims against.
-/

/-! ## A130361.P7042826278218454972

`A130357(A130362(A130357(n)))`
-/

namespace A130361.P7042826278218454972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130357 (A130362 (A130357 n).toNat).toNat

end

end A130361.P7042826278218454972

/-! ## A130361.P4246505803789544109

`A122282(A130357(n))`
-/

namespace A130361.P4246505803789544109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (A130357 n).toNat

end

end A130361.P4246505803789544109

/-! ## A130361.P1559468653486813229

`A074685(A122306(n)%A335297(n+1))`
-/

namespace A130361.P1559468653486813229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074685 (Int.tmod (A122306 n) (A335297 (n + 1))).toNat

end

end A130361.P1559468653486813229

/-! ## A130361.P1968142984811497947

`A122350(A122336(n)%A146556(n+1))`
-/

namespace A130361.P1968142984811497947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122350 (Int.tmod (A122336 n) (A146556 (n + 1))).toNat

end

end A130361.P1968142984811497947

/-! ## A130361.P6689991852205590530

`A122338(A055645(n))`
-/

namespace A130361.P6689991852205590530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122338 (A055645 n).toNat

end

end A130361.P6689991852205590530

/-!
# A130362: Row 20 of A122204.

The programs for A130362, there is no canonical definition to state claims against.
-/

/-! ## A130362.P15230199847277913742

`A130358(A130361(A130358(n)))`
-/

namespace A130362.P15230199847277913742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130358 (A130361 (A130358 n).toNat).toNat

end

end A130362.P15230199847277913742

/-! ## A130362.P18139657721472112228

`A130358(A122282(n))`
-/

namespace A130362.P18139657721472112228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130358 (A122282 n).toNat

end

end A130362.P18139657721472112228

/-! ## A130362.P14503706752964872366

`A122306(A069768(n)%A122227(n))`
-/

namespace A130362.P14503706752964872366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122306 (Int.tmod (A069768 n) (A122227 n)).toNat

end

end A130362.P14503706752964872366

/-! ## A130362.P654539040864027779

`A122308(A130358(n)%A122227(n))`
-/

namespace A130362.P654539040864027779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122308 (Int.tmod (A130358 n) (A122227 n)).toNat

end

end A130362.P654539040864027779

/-! ## A130362.P14779408803030360215

`A131163(n)%A054681(n+1)`
-/

namespace A130362.P14779408803030360215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131163 n) (A054681 (n + 1))

end

end A130362.P14779408803030360215

/-!
# A130363: Row 18 of A122203.

The programs for A130363, there is no canonical definition to state claims against.
-/

/-! ## A130363.P13477582912831094405

`A057509(A069767(n))`
-/

namespace A130363.P13477582912831094405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 (A069767 n).toNat

end

end A130363.P13477582912831094405

/-! ## A130363.P11338375214109650020

`A057501(A073286(n))`
-/

namespace A130363.P11338375214109650020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A073286 n).toNat

end

end A130363.P11338375214109650020

/-! ## A130363.P10009222654876349266

`A069767(A069775(n))`
-/

namespace A130363.P10009222654876349266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A069775 n).toNat

end

end A130363.P10009222654876349266

/-! ## A130363.P6961948650391309077

`A130347(A069770(n))`
-/

namespace A130363.P6961948650391309077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130347 (A069770 n).toNat

end

end A130363.P6961948650391309077

/-! ## A130363.P10305200360860883575

`A057509(A057508(A057161(n)))`
-/

namespace A130363.P10305200360860883575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 (A057508 (A057161 n).toNat).toNat

end

end A130363.P10305200360860883575

/-! ## A130363.P9713367077880395000

`A130347(A073269(A072796(n)))`
-/

namespace A130363.P9713367077880395000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130347 (A073269 (A072796 n).toNat).toNat

end

end A130363.P9713367077880395000

/-! ## A130363.P2724569586506488558

`A057508(A057510(A069767(A069769(n))))`
-/

namespace A130363.P2724569586506488558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A057510 (A069767 (A069769 n).toNat).toNat).toNat

end

end A130363.P2724569586506488558

/-! ## A130363.P167062961480078834

`A057508(A057510(A057163(A057162(A057163(n)))))`
-/

namespace A130363.P167062961480078834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A057510 (A057163 (A057162 (A057163 n).toNat).toNat).toNat).toNat

end

end A130363.P167062961480078834

/-! ## A130363.P10930527398712944797

`A122282(A057509(A130359(n)))`
-/

namespace A130363.P10930527398712944797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (A057509 (A130359 n).toNat).toNat

end

end A130363.P10930527398712944797

/-!
# A130364: Row 13 of A122204.

The programs for A130364, there is no canonical definition to state claims against.
-/

/-! ## A130364.P7848172663149015137

`A069768(A057510(n))`
-/

namespace A130364.P7848172663149015137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A057510 n).toNat

end

end A130364.P7848172663149015137

/-! ## A130364.P6790937095109918815

`A073287(A057502(n))`
-/

namespace A130364.P6790937095109918815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073287 (A057502 n).toNat

end

end A130364.P6790937095109918815

/-! ## A130364.P612844527808174671

`A069776(A069768(n))`
-/

namespace A130364.P612844527808174671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069776 (A069768 n).toNat

end

end A130364.P612844527808174671

/-! ## A130364.P7464919108118451824

`A069770(A130348(n))`
-/

namespace A130364.P7464919108118451824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A130348 n).toNat

end

end A130364.P7464919108118451824

/-! ## A130364.P12171440392615446229

`A057162(A057509(A057508(n)))`
-/

namespace A130364.P12171440392615446229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057162 (A057509 (A057508 n).toNat).toNat

end

end A130364.P12171440392615446229

/-! ## A130364.P8013234007297764719

`A057162(A130363(A057162(n)))`
-/

namespace A130364.P8013234007297764719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057162 (A130363 (A057162 n).toNat).toNat

end

end A130364.P8013234007297764719

/-! ## A130364.P15896347372803268737

`A057163(A057510(A069767(A057163(n))))`
-/

namespace A130364.P15896347372803268737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057510 (A069767 (A057163 n).toNat).toNat).toNat

end

end A130364.P15896347372803268737

/-! ## A130364.P12889275133082323573

`A057162(A057508(A057510(A057164(A057164(n)))))`
-/

namespace A130364.P12889275133082323573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057162 (A057508 (A057510 (A057164 (A057164 n).toNat).toNat).toNat).toNat

end

end A130364.P12889275133082323573

/-! ## A130364.P15331046321518132098

`A069776(A057162(A057508(A069770(A069770(n)))))`
-/

namespace A130364.P15331046321518132098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069776 (A057162 (A057508 (A069770 (A069770 n).toNat).toNat).toNat).toNat

end

end A130364.P15331046321518132098

/-! ## A130364.P12030926020964606325

`A089860(A089853(A130348(A089853(A089851(n)))))`
-/

namespace A130364.P12030926020964606325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089860 (A089853 (A130348 (A089853 (A089851 n).toNat).toNat).toNat).toNat

end

end A130364.P12030926020964606325

/-!
# A130365: Row 19 of A122203.

The programs for A130365, there is no canonical definition to state claims against.
-/

/-! ## A130365.P5079800734498353199

`A130343(A069770(n))`
-/

namespace A130365.P5079800734498353199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130343 (A069770 n).toNat

end

end A130365.P5079800734498353199

/-! ## A130365.P17850297515133673604

`A130343(A073269(A072796(n)))`
-/

namespace A130365.P17850297515133673604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130343 (A073269 (A072796 n).toNat).toNat

end

end A130365.P17850297515133673604

/-! ## A130365.P6871851005538348348

`A130343(A072796(A073270(n)))`
-/

namespace A130365.P6871851005538348348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130343 (A072796 (A073270 n).toNat).toNat

end

end A130365.P6871851005538348348

/-! ## A130365.P7927210189892505142

`A072089(A062513(n+1)*A130966(n))`
-/

namespace A130365.P7927210189892505142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (A062513 (n + 1) * A130966 n).toNat

end

end A130365.P7927210189892505142

/-! ## A130365.P13510846097337902187

`A130933(n)-A023531(A327714(2*(n+2)))`
-/

namespace A130365.P13510846097337902187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130933 n - A023531 (A327714 (2 * (n + 2))).toNat

end

end A130365.P13510846097337902187

/-!
# A130366: Row 14 of A122204.

The programs for A130366, there is no canonical definition to state claims against.
-/

/-! ## A130366.P1734812389808790834

`A069770(A130344(n))`
-/

namespace A130366.P1734812389808790834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A130344 n).toNat

end

end A130366.P1734812389808790834

/-! ## A130366.P6465702883417868175

`A122318(A069768(n))%A137723(A008619(n))`
-/

namespace A130366.P6465702883417868175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122318 (A069768 n).toNat) (A137723 (A008619 n).toNat)

end

end A130366.P6465702883417868175

/-! ## A130366.P14800175554396937784

`A122318(A069768(n))+A061853(A142534(n+1))`
-/

namespace A130366.P14800175554396937784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122318 (A069768 n).toNat + A061853 (A142534 (n + 1)).toNat

end

end A130366.P14800175554396937784

/-! ## A130366.P11959132247278671104

`A122318(A069768(n))+A061853(A142535(n+1))`
-/

namespace A130366.P11959132247278671104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122318 (A069768 n).toNat + A061853 (A142535 (n + 1)).toNat

end

end A130366.P11959132247278671104

/-! ## A130366.P17169014435202993892

`A122318(A069768(n))+A061853(A142550(n+1))`
-/

namespace A130366.P17169014435202993892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122318 (A069768 n).toNat + A061853 (A142550 (n + 1)).toNat

end

end A130366.P17169014435202993892

/-! ## A130366.P7221074282896256149

`A122318(A069768(n)+A016378(2*n+1))`
-/

namespace A130366.P7221074282896256149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122318 (A069768 n + A016378 (2 * n + 1)).toNat

end

end A130366.P7221074282896256149

/-! ## A130366.P944928978824513608

`A122318(A069768(n))+A016378(A005408(n))`
-/

namespace A130366.P944928978824513608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122318 (A069768 n).toNat + A016378 (A005408 n).toNat

end

end A130366.P944928978824513608

/-! ## A130366.P2249169707173871557

`(A191924(n+1)+A122318(A069768(n)))%A191924(n+1)`
-/

namespace A130366.P2249169707173871557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191924 (n + 1) + A122318 (A069768 n).toNat) (A191924 (n + 1))

end

end A130366.P2249169707173871557

/-!
# A130367: Row 20 of A122203.

The programs for A130367, there is no canonical definition to state claims against.
-/

/-! ## A130367.P9633309519723236675

`A130345(A069770(n))`
-/

namespace A130367.P9633309519723236675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130345 (A069770 n).toNat

end

end A130367.P9633309519723236675

/-! ## A130367.P11355508973868006657

`A130345(A073269(A072796(n)))`
-/

namespace A130367.P11355508973868006657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130345 (A073269 (A072796 n).toNat).toNat

end

end A130367.P11355508973868006657

/-! ## A130367.P3886334265250927055

`A130345(A072796(A073270(n)))`
-/

namespace A130367.P3886334265250927055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130345 (A072796 (A073270 n).toNat).toNat

end

end A130367.P3886334265250927055

/-! ## A130367.P15265217368608292529

`A130345(A130368(A130345(n)))`
-/

namespace A130367.P15265217368608292529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130345 (A130368 (A130345 n).toNat).toNat

end

end A130367.P15265217368608292529

/-! ## A130367.P1357116303047103452

`A130982(A130368(A130982(n)))`
-/

namespace A130367.P1357116303047103452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130982 (A130368 (A130982 n).toNat).toNat

end

end A130367.P1357116303047103452

/-! ## A130367.P13583830282966028229

`A130345(A089863(A089854(n)))`
-/

namespace A130367.P13583830282966028229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130345 (A089863 (A089854 n).toNat).toNat

end

end A130367.P13583830282966028229

/-! ## A130367.P8650715522745520015

`A130345(A089858(A089852(n)))`
-/

namespace A130367.P8650715522745520015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130345 (A089858 (A089852 n).toNat).toNat

end

end A130367.P8650715522745520015

/-! ## A130367.P16377057775104552581

`A122308(A130346(A122308(A089852(A089861(n)))))`
-/

namespace A130367.P16377057775104552581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122308 (A130346 (A122308 (A089852 (A089861 n).toNat).toNat).toNat).toNat

end

end A130367.P16377057775104552581

/-!
# A130368: Row 16 of A122204.

The programs for A130368, there is no canonical definition to state claims against.
-/

/-! ## A130368.P17473121787524439472

`A069770(A130346(n))`
-/

namespace A130368.P17473121787524439472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A130346 n).toNat

end

end A130368.P17473121787524439472

/-! ## A130368.P14204224702205431010

`A130982(A130367(A130982(n)))`
-/

namespace A130368.P14204224702205431010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130982 (A130367 (A130982 n).toNat).toNat

end

end A130368.P14204224702205431010

/-! ## A130368.P2485540005067910520

`A122320(A069768(n))%p?[A099627(n)]`
-/

namespace A130368.P2485540005067910520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122320 (A069768 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A130368.P2485540005067910520

/-! ## A130368.P14768296533521860435

`A322452(A142120(n+1))+A122320(A069768(n))`
-/

namespace A130368.P14768296533521860435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322452 (A142120 (n + 1)).toNat + A122320 (A069768 n).toNat

end

end A130368.P14768296533521860435

/-! ## A130368.P15475274462649726835

`A122320(A069768(n))+A000038(A303024(n+1))`
-/

namespace A130368.P15475274462649726835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122320 (A069768 n).toNat + A000038 (A303024 (n + 1)).toNat

end

end A130368.P15475274462649726835

/-! ## A130368.P4915346146679006308

`A002487(n-A274462(n+1))!*A122320(A069768(n))`
-/

namespace A130368.P4915346146679006308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002487 ((n : ℤ) - A274462 (n + 1)).toNat).toNat : ℤ) * A122320 (A069768 n).toNat

end

end A130368.P4915346146679006308

/-!
# A130369: Signature permutation of a Catalan automorphism: apply *A074679 to the root and recurse down the cdr-spine (the right-hand side edge of a binary tree) as long as the binary tree rotation is possible and if the top-level length (A057515(n)) is odd, then apply *A069770 to the last branch-point.

The programs for A130369, there is no canonical definition to state claims against.
-/

/-! ## A130369.P9755430939229833258

`A130376(A074685(n))`
-/

namespace A130369.P9755430939229833258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130376 (A074685 n).toNat

end

end A130369.P9755430939229833258

/-! ## A130369.P6111524251116905577

`A074685(A130372(n))`
-/

namespace A130369.P6111524251116905577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074685 (A130372 n).toNat

end

end A130369.P6111524251116905577

/-! ## A130369.P5989818319414092122

`A074206(A243896(n))*A131151(A069768(n))`
-/

namespace A130369.P5989818319414092122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A243896 n).toNat * A131151 (A069768 n).toNat

end

end A130369.P5989818319414092122

/-! ## A130369.P17940567577946038186

`A074687(n)%A111441(n+1)`
-/

namespace A130369.P17940567577946038186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074687 n) (A111441 (n + 1))

end

end A130369.P17940567577946038186

/-! ## A130369.P5039854735478404784

`A072091(n)*A160198(A007283(n))`
-/

namespace A130369.P5039854735478404784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072091 n * A160198 (A007283 n).toNat

end

end A130369.P5039854735478404784

/-!
# A130370: Signature permutation of a Catalan automorphism: inverse of *A130369.

The programs for A130370, there is no canonical definition to state claims against.
-/

/-! ## A130370.P2243849033415923347

`A130371(A074686(n))`
-/

namespace A130370.P2243849033415923347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130371 (A074686 n).toNat

end

end A130370.P2243849033415923347

/-! ## A130370.P12441701535739510495

`A074686(A130375(n))`
-/

namespace A130370.P12441701535739510495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074686 (A130375 n).toNat

end

end A130370.P12441701535739510495

/-! ## A130370.P9549326649387980601

`A069767(A089856(n)%A232929(3*(n+2)))`
-/

namespace A130370.P9549326649387980601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (Int.tmod (A089856 n) (A232929 (3 * (n + 2)))).toNat

end

end A130370.P9549326649387980601

/-! ## A130370.P7940082383743349722

`A154452(A123713(n)%A232929(3*(n+2)))`
-/

namespace A130370.P7940082383743349722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154452 (Int.tmod (A123713 n) (A232929 (3 * (n + 2)))).toNat

end

end A130370.P7940082383743349722

/-! ## A130370.P12144579914376323880

`A072090(n)%A061978(n+1)`
-/

namespace A130370.P12144579914376323880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072090 n) (A061978 (n + 1))

end

end A130370.P12144579914376323880

/-!
# A130371: Signature permutation of a Catalan automorphism: apply *A074685 to the last subtree, if the root degree (A057515(n)) is odd.

The programs for A130371, there is no canonical definition to state claims against.
-/

/-! ## A130371.P17409498860633157280

`A130370(A074685(n))`
-/

namespace A130371.P17409498860633157280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130370 (A074685 n).toNat

end

end A130371.P17409498860633157280

/-! ## A130371.P16044110101565100084

`A130370(A130375(A130369(n)))`
-/

namespace A130371.P16044110101565100084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130370 (A130375 (A130369 n).toNat).toNat

end

end A130371.P16044110101565100084

/-! ## A130371.P2081370495136085751

`A074686(A130375(A074685(A074685(A074686(n)))))`
-/

namespace A130371.P2081370495136085751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074686 (A130375 (A074685 (A074685 (A074686 n).toNat).toNat).toNat).toNat

end

end A130371.P2081370495136085751

/-! ## A130371.P8412734596434249333

`A057501(A131171(n)%A080315(n))`
-/

namespace A130371.P8412734596434249333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (Int.tmod (A131171 n) (A080315 n)).toNat

end

end A130371.P8412734596434249333

/-!
# A130372: Signature permutation of a Catalan automorphism: apply *A074686 to the last subtree, if the root degree (A057515(n)) is odd.

The programs for A130372, there is no canonical definition to state claims against.
-/

/-! ## A130372.P2051345704185987129

`A074686(A130369(n))`
-/

namespace A130372.P2051345704185987129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074686 (A130369 n).toNat

end

end A130372.P2051345704185987129

/-! ## A130372.P12095657996960468194

`A074686(A130376(A074685(n)))`
-/

namespace A130372.P12095657996960468194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074686 (A130376 (A074685 n).toNat).toNat

end

end A130372.P12095657996960468194

/-! ## A130372.P10149231869835070700

`A130370(A130376(A130369(A130369(A130370(n)))))`
-/

namespace A130372.P10149231869835070700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130370 (A130376 (A130369 (A130369 (A130370 n).toNat).toNat).toNat).toNat

end

end A130372.P10149231869835070700

/-! ## A130372.P15422024997883378323

`A131172(A057502(n)%A128383(n+1))`
-/

namespace A130372.P15422024997883378323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131172 (Int.tmod (A057502 n) (A128383 (n + 1))).toNat

end

end A130372.P15422024997883378323

/-!
# A130373: Signature permutation of a Catalan automorphism: flip the positions of even- and odd-indexed elements at the top level of the list, leaving the first element in place if the length (A057515(n)) is odd.

The programs for A130373, there is no canonical definition to state claims against.
-/

/-! ## A130373.P1653318119179002408

`A057164(A130374(A057164(n)))`
-/

namespace A130373.P1653318119179002408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A130374 (A057164 n).toNat).toNat

end

end A130373.P1653318119179002408

/-! ## A130373.P1143829078216587990

`A057508(A130374(A057508(n)))`
-/

namespace A130373.P1143829078216587990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A130374 (A057508 n).toNat).toNat

end

end A130373.P1143829078216587990

/-! ## A130373.P4600168316817484109

`A127292(A127289(A130374(A127292(A127289(n)))))`
-/

namespace A130373.P4600168316817484109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127292 (A127289 (A130374 (A127292 (A127289 n).toNat).toNat).toNat).toNat

end

end A130373.P4600168316817484109

/-! ## A130373.P10813586709506499074

`A057509(A057509(A127288(A127285(n))))`
-/

namespace A130373.P10813586709506499074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 (A057509 (A127288 (A127285 n).toNat).toNat).toNat

end

end A130373.P10813586709506499074

/-! ## A130373.P4296549908313338021

`A057509(A057509(A127286(A127287(n))))`
-/

namespace A130373.P4296549908313338021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057509 (A057509 (A127286 (A127287 n).toNat).toNat).toNat

end

end A130373.P4296549908313338021

/-!
# A130374: Signature permutation of a Catalan automorphism: flip the positions of even- and odd-indexed elements at the top level of the list, leaving the last element in place if the length (A057515(n)) is odd.

The programs for A130374, there is no canonical definition to state claims against.
-/

/-! ## A130374.P12925603089500696994

`A057164(A130373(A057164(n)))`
-/

namespace A130374.P12925603089500696994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A130373 (A057164 n).toNat).toNat

end

end A130374.P12925603089500696994

/-! ## A130374.P15121074677343685188

`A057508(A130373(A057508(n)))`
-/

namespace A130374.P15121074677343685188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A130373 (A057508 n).toNat).toNat

end

end A130374.P15121074677343685188

/-! ## A130374.P9929408024784829527

`A127287(A127286(n))`
-/

namespace A130374.P9929408024784829527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (A127286 n).toNat

end

end A130374.P9929408024784829527

/-! ## A130374.P5962195663127491541

`A127285(A127288(n))`
-/

namespace A130374.P5962195663127491541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127285 (A127288 n).toNat

end

end A130374.P5962195663127491541

/-! ## A130374.P5732774821833432609

`A127286(A127286(A057508(A127285(A127285(n)))))`
-/

namespace A130374.P5732774821833432609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127286 (A127286 (A057508 (A127285 (A127285 n).toNat).toNat).toNat).toNat

end

end A130374.P5732774821833432609

/-! ## A130374.P3244565331649142521

`A127287(A057508(A127288(A127288(A127287(n)))))`
-/

namespace A130374.P3244565331649142521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (A057508 (A127288 (A127288 (A127287 n).toNat).toNat).toNat).toNat

end

end A130374.P3244565331649142521

/-! ## A130374.P12767065979209296254

`A129606(A127287(n)%A243497(n))`
-/

namespace A130374.P12767065979209296254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129606 (Int.tmod (A127287 n) (A243497 n)).toNat

end

end A130374.P12767065979209296254

/-!
# A130375: Signature permutation of a Catalan automorphism: apply *A074685 after the first nil on the top-level of list, if any present, otherwise leave the structure intact.

The programs for A130375, there is no canonical definition to state claims against.
-/

/-! ## A130375.P8901110820709058562

`A074685(A130370(n))`
-/

namespace A130375.P8901110820709058562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074685 (A130370 n).toNat

end

end A130375.P8901110820709058562

/-! ## A130375.P17700503308537670257

`A074685(A130371(A074686(n)))`
-/

namespace A130375.P17700503308537670257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074685 (A130371 (A074686 n).toNat).toNat

end

end A130375.P17700503308537670257

/-! ## A130375.P5281908336499206405

`A130369(A130371(A130370(A130370(A130369(n)))))`
-/

namespace A130375.P5281908336499206405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130369 (A130371 (A130370 (A130370 (A130369 n).toNat).toNat).toNat).toNat

end

end A130375.P5281908336499206405

/-! ## A130375.P15376869803346259085

`A131171(A057501(n))%A141214(n)`
-/

namespace A130375.P15376869803346259085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131171 (A057501 n).toNat) (A141214 n)

end

end A130375.P15376869803346259085

/-!
# A130376: Signature permutation of a Catalan automorphism: apply *A074686 after the first nil on the top-level of list, if any present, otherwise leave the structure intact.

The programs for A130376, there is no canonical definition to state claims against.
-/

/-! ## A130376.P816538514964437325

`A130369(A074686(n))`
-/

namespace A130376.P816538514964437325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130369 (A074686 n).toNat

end

end A130376.P816538514964437325

/-! ## A130376.P14745759733333337712

`A130369(A130372(A130370(n)))`
-/

namespace A130376.P14745759733333337712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130369 (A130372 (A130370 n).toNat).toNat

end

end A130376.P14745759733333337712

/-! ## A130376.P14788528566479107132

`A074685(A130372(A074686(A074686(A074685(n)))))`
-/

namespace A130376.P14788528566479107132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074685 (A130372 (A074686 (A074686 (A074685 n).toNat).toNat).toNat).toNat

end

end A130376.P14788528566479107132

/-! ## A130376.P8479263335399210826

`A074679(A122331(n)%A215731(n+2))`
-/

namespace A130376.P8479263335399210826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (Int.tmod (A122331 n) (A215731 (n + 2))).toNat

end

end A130376.P8479263335399210826

/-!
# A130378: Maximum cycle size in range [A014137(n-1)..A014138(n-1)] of permutation A130369/A130370.

The programs for A130378, there is no canonical definition to state claims against.
-/

/-! ## A130378.P2611634236690672686

`A180348(A088356(n))`
-/

namespace A130378.P2611634236690672686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180348 (A088356 n).toNat

end

end A130378.P2611634236690672686

/-! ## A130378.P17233771521711046673

`A245327(A105859(n!))`
-/

namespace A130378.P17233771521711046673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (A105859 (Nat.factorial n)).toNat

end

end A130378.P17233771521711046673

/-! ## A130378.P11422671155919710491

`A096765(∑[dr(A075060(n+1))])`
-/

namespace A130378.P11422671155919710491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A075060 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130378.P11422671155919710491

/-!
# A130380: Catalan numbers halved and rounded to the next integer.

The programs for A130380, the canonical program `A130380.P12199744557882978766` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130380 has offset 0).

The definition of A130380 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130380.P12199744557882978766

`ceil(A000108(n)/2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130380

/-- `ceil(A000108(n)/2)` -/
def P12199744557882978766.Spec : Prop :=
  ∀ n, P12199744557882978766.a n = A130380 n

theorem P12199744557882978766.correct : P12199744557882978766.Spec := by
  intro n
  simp only [A130380]

end A130380

/-! ## A130380.P11533657721407031816

`(A000108(n)+A036987(n))/2`
-/

namespace A130380.P11533657721407031816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n + A036987 n : ℚ) / 2

end

end A130380.P11533657721407031816

namespace A130380

/-- `(A000108(n)+A036987(n))/2` -/
def P11533657721407031816.Spec : Prop :=
  ∀ n, P11533657721407031816.a n = (A130380 n : ℚ)

end A130380

/-! ## A130380.P16827604975959176844

`ceil(abs(A168491(n)/2))`
-/

namespace A130380.P16827604975959176844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(A168491 n : ℚ) / 2|⌉

end

end A130380.P16827604975959176844

namespace A130380

/-- `ceil(abs(A168491(n)/2))` -/
def P16827604975959176844.Spec : Prop :=
  ∀ n, P16827604975959176844.a n = A130380 n

end A130380

/-! ## A130380.P1581071354687457010

`ceil(A120304(n)/2)+1`
-/

namespace A130380.P1581071354687457010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A120304 n : ℚ) / 2⌉ + 1

end

end A130380.P1581071354687457010

namespace A130380

/-- `ceil(A120304(n)/2)+1` -/
def P1581071354687457010.Spec : Prop :=
  ∀ n, P1581071354687457010.a n = A130380 n

end A130380

/-! ## A130380.P12869358176599117860

`ceil(A120588(n+1)/2)`
-/

namespace A130380.P12869358176599117860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A120588 (n + 1) : ℚ) / 2⌉

end

end A130380.P12869358176599117860

namespace A130380

/-- `ceil(A120588(n+1)/2)` -/
def P12869358176599117860.Spec : Prop :=
  ∀ n, P12869358176599117860.a n = A130380 n

end A130380

/-! ## A130380.P2708682682762607844

`ceil(A028303(2*n)/2)`
-/

namespace A130380.P2708682682762607844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028303 (2 * n) : ℚ) / 2⌉

end

end A130380.P2708682682762607844

namespace A130380

/-- `ceil(A028303(2*n)/2)` -/
def P2708682682762607844.Spec : Prop :=
  ∀ n, P2708682682762607844.a n = A130380 n

end A130380

/-! ## A130380.P11043802401231123963

`ceil(A028304(2*n)/2)`
-/

namespace A130380.P11043802401231123963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028304 (2 * n) : ℚ) / 2⌉

end

end A130380.P11043802401231123963

namespace A130380

/-- `ceil(A028304(2*n)/2)` -/
def P11043802401231123963.Spec : Prop :=
  ∀ n, P11043802401231123963.a n = A130380 n

end A130380

/-! ## A130380.P8742374326175989892

`ceil(A126120(2*n)/2)`
-/

namespace A130380.P8742374326175989892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A126120 (2 * n) : ℚ) / 2⌉

end

end A130380.P8742374326175989892

namespace A130380

/-- `ceil(A126120(2*n)/2)` -/
def P8742374326175989892.Spec : Prop :=
  ∀ n, P8742374326175989892.a n = A130380 n

end A130380

/-! ## A130380.P896336342932073949

`ceil(A126324(2*n)/2)`
-/

namespace A130380.P896336342932073949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A126324 (2 * n) : ℚ) / 2⌉

end

end A130380.P896336342932073949

namespace A130380

/-- `ceil(A126324(2*n)/2)` -/
def P896336342932073949.Spec : Prop :=
  ∀ n, P896336342932073949.a n = A130380 n

end A130380

/-! ## A130380.P6617263507245631773

`ceil(A208355(2*n)/2)`
-/

namespace A130380.P6617263507245631773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A208355 (2 * n) : ℚ) / 2⌉

end

end A130380.P6617263507245631773

namespace A130380

/-- `ceil(A208355(2*n)/2)` -/
def P6617263507245631773.Spec : Prop :=
  ∀ n, P6617263507245631773.a n = A130380 n

end A130380

/-! ## A130380.P10913395577444036962

`round((A246604(n)+n)/2)`
-/

namespace A130380.P10913395577444036962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A246604 n + (n : ℤ) : ℚ) / 2)

end

end A130380.P10913395577444036962

namespace A130380

/-- `round((A246604(n)+n)/2)` -/
def P10913395577444036962.Spec : Prop :=
  ∀ n, P10913395577444036962.a n = A130380 n

end A130380

/-! ## A130380.P882111242420610320

`abs(floor(A115140(n+1)/2))`
-/

namespace A130380.P882111242420610320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(A115140 (n + 1) : ℚ) / 2⌋|

end

end A130380.P882111242420610320

namespace A130380

/-- `abs(floor(A115140(n+1)/2))` -/
def P882111242420610320.Spec : Prop :=
  ∀ n, P882111242420610320.a n = A130380 n

end A130380

/-! ## A130380.P8672925641974853223

`round(A000108(char[1]+n)/2)`
-/

namespace A130380.P8672925641974853223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000108 ((if ∃ j, f1 j = n then 1 else 0) + n) : ℚ) / 2)

end

end A130380.P8672925641974853223

namespace A130380

/-- `round(A000108(char[1]+n)/2)` -/
def P8672925641974853223.Spec : Prop :=
  ∀ n, P8672925641974853223.a n = A130380 n

end A130380

/-! ## A130380.P1252843754292293972

`ceil(A089408(2*n+1)/2)`
-/

namespace A130380.P1252843754292293972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A089408 (2 * n + 1) : ℚ) / 2⌉

end

end A130380.P1252843754292293972

namespace A130380

/-- `ceil(A089408(2*n+1)/2)` -/
def P1252843754292293972.Spec : Prop :=
  ∀ n, P1252843754292293972.a n = A130380 n

end A130380

/-! ## A130380.P17702609651118697730

`ceil(A097331(2*n+1)/2)`
-/

namespace A130380.P17702609651118697730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A097331 (2 * n + 1) : ℚ) / 2⌉

end

end A130380.P17702609651118697730

namespace A130380

/-- `ceil(A097331(2*n+1)/2)` -/
def P17702609651118697730.Spec : Prop :=
  ∀ n, P17702609651118697730.a n = A130380 n

end A130380

/-! ## A130380.P10096829252004879950

`floor((A000108(round(acot(n)+n))+1)/2)`
-/

namespace A130380.P10096829252004879950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000108 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + 1 : ℚ) / 2⌋

end

end A130380.P10096829252004879950

namespace A130380

/-- `floor((A000108(round(acot(n)+n))+1)/2)` -/
def P10096829252004879950.Spec : Prop :=
  ∀ n, P10096829252004879950.a n = A130380 n

end A130380

/-! ## A130380.P1907425786537555645

`floor((A000108(abs(1-n)+1)+1)/2)`
-/

namespace A130380.P1907425786537555645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000108 (|1 - (n : ℤ)| + 1).toNat + 1 : ℚ) / 2⌋

end

end A130380.P1907425786537555645

namespace A130380

/-- `floor((A000108(abs(1-n)+1)+1)/2)` -/
def P1907425786537555645.Spec : Prop :=
  ∀ n, P1907425786537555645.a n = A130380 n

end A130380

/-! ## A130380.P1560196416430603231

`A028304(A004273(n))`
-/

namespace A130380.P1560196416430603231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (A004273 n).toNat

end

end A130380.P1560196416430603231

namespace A130380

/-- `A028304(A004273(n))` -/
def P1560196416430603231.Spec : Prop :=
  ∀ n, P1560196416430603231.a n = A130380 n

end A130380

/-! ## A130380.P14912215091459847940

`A028304(A163985(n))`
-/

namespace A130380.P14912215091459847940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (A163985 n).toNat

end

end A130380.P14912215091459847940

namespace A130380

/-- `A028304(A163985(n))` -/
def P14912215091459847940.Spec : Prop :=
  ∀ n, P14912215091459847940.a n = A130380 n

end A130380

/-! ## A130380.P8200188579936836898

`A028304(A004274(n+1))`
-/

namespace A130380.P8200188579936836898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (A004274 (n + 1)).toNat

end

end A130380.P8200188579936836898

namespace A130380

/-- `A028304(A004274(n+1))` -/
def P8200188579936836898.Spec : Prop :=
  ∀ n, P8200188579936836898.a n = A130380 n

end A130380

/-!
# A130381: Signature permutation of a Catalan automorphism: row 4 of A130400.

The programs for A130381, there is no canonical definition to state claims against.
-/

/-! ## A130381.P14807193409733661866

`A057163(A130388(A057163(n)))`
-/

namespace A130381.P14807193409733661866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130388 (A057163 n).toNat).toNat

end

end A130381.P14807193409733661866

/-! ## A130381.P4752041335477392028

`A130948(n)%A370053(n+1)`
-/

namespace A130381.P4752041335477392028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130948 n) (A370053 (n + 1))

end

end A130381.P4752041335477392028

/-! ## A130381.P11801841903236979443

`gcd(2, A131303(n+1))*A130948(n)`
-/

namespace A130381.P11801841903236979443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A131303 (n + 1)) : ℤ) * A130948 n

end

end A130381.P11801841903236979443

/-! ## A130381.P327288557891232979

`and(A086827(2*n+1), A130948(n))`
-/

namespace A130381.P327288557891232979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (2 * n + 1)) (A130948 n)

end

end A130381.P327288557891232979

/-! ## A130381.P16191494870149923850

`A130948(n)+A000038(A052816(n))`
-/

namespace A130381.P16191494870149923850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130948 n + A000038 (A052816 n).toNat

end

end A130381.P16191494870149923850

/-! ## A130381.P7160378262178133583

`A014963(A102308(n+1))*A130948(n)`
-/

namespace A130381.P7160378262178133583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A102308 (n + 1)).toNat * A130948 n

end

end A130381.P7160378262178133583

/-!
# A130382: Signature permutation of a Catalan automorphism: row 6 of A130401.

The programs for A130382, there is no canonical definition to state claims against.
-/

/-! ## A130382.P10861481897720499805

`A057163(A130387(A057163(n)))`
-/

namespace A130382.P10861481897720499805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130387 (A057163 n).toNat).toNat

end

end A130382.P10861481897720499805

/-! ## A130382.P9895802966769307724

`A122306(A122309(A122309(A122344(n))))`
-/

namespace A130382.P9895802966769307724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122306 (A122309 (A122309 (A122344 n).toNat).toNat).toNat

end

end A130382.P9895802966769307724

/-! ## A130382.P6427142214874083199

`A130947(A335520(A027082(n))+n)`
-/

namespace A130382.P6427142214874083199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130947 (A335520 (A027082 n).toNat + (n : ℤ)).toNat

end

end A130382.P6427142214874083199

/-! ## A130382.P11584218486450655087

`A130947(n)-A335520(A027082(n))`
-/

namespace A130382.P11584218486450655087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130947 n - A335520 (A027082 n).toNat

end

end A130382.P11584218486450655087

/-! ## A130382.P8714572100126083

`A130947(n)%A080132(∑[n])`
-/

namespace A130382.P8714572100126083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130947 n) (A080132 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A130382.P8714572100126083

/-!
# A130383: Signature permutation of a Catalan automorphism: row 5 of A130400.

The programs for A130383, there is no canonical definition to state claims against.
-/

/-! ## A130383.P12505859755029562900

`A057163(A130390(A057163(n)))`
-/

namespace A130383.P12505859755029562900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130390 (A057163 n).toNat).toNat

end

end A130383.P12505859755029562900

/-! ## A130383.P11622479980956244712

`A122345(A122307(A122307(n)))`
-/

namespace A130383.P11622479980956244712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122345 (A122307 (A122307 n).toNat).toNat

end

end A130383.P11622479980956244712

/-! ## A130383.P11604964248589712217

`A122345(A122308(A122308(n)))`
-/

namespace A130383.P11604964248589712217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122345 (A122308 (A122308 n).toNat).toNat

end

end A130383.P11604964248589712217

/-! ## A130383.P966428414375961246

`A130384(A089852(A130384(A130384(A089852(n)))))`
-/

namespace A130383.P966428414375961246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130384 (A089852 (A130384 (A130384 (A089852 n).toNat).toNat).toNat).toNat

end

end A130383.P966428414375961246

/-! ## A130383.P15257671492898433022

`A122308(A130346(A130384(A122308(A130346(n)))))`
-/

namespace A130383.P15257671492898433022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122308 (A130346 (A130384 (A122308 (A130346 n).toNat).toNat).toNat).toNat

end

end A130383.P15257671492898433022

/-! ## A130383.P9627819108221723731

`A130950(n)%∑[A131305(n)]`
-/

namespace A130383.P9627819108221723731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130950 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130383.P9627819108221723731

/-! ## A130383.P63995515821573811

`A001222(A130903(n+2))*A130950(n)`
-/

namespace A130383.P63995515821573811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A130903 (n + 2)).toNat * A130950 n

end

end A130383.P63995515821573811

/-!
# A130384: Signature permutation of a Catalan automorphism: row 5 of A130401.

The programs for A130384, there is no canonical definition to state claims against.
-/

/-! ## A130384.P4958206820524908904

`A057163(A130389(A057163(n)))`
-/

namespace A130384.P4958206820524908904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130389 (A057163 n).toNat).toNat

end

end A130384.P4958206820524908904

/-! ## A130384.P12226768601295625088

`A122308(A122345(A122307(n)))`
-/

namespace A130384.P12226768601295625088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122308 (A122345 (A122307 n).toNat).toNat

end

end A130384.P12226768601295625088

/-! ## A130384.P5024956912760822473

`A122307(A122307(A122346(n)))`
-/

namespace A130384.P5024956912760822473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122307 (A122307 (A122346 n).toNat).toNat

end

end A130384.P5024956912760822473

/-! ## A130384.P15636540614648782177

`A130383(A089852(A130383(A130383(A089852(n)))))`
-/

namespace A130384.P15636540614648782177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130383 (A089852 (A130383 (A130383 (A089852 n).toNat).toNat).toNat).toNat

end

end A130384.P15636540614648782177

/-! ## A130384.P7647268876959654131

`and(A130949(n), A387410(n+1))`
-/

namespace A130384.P7647268876959654131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130949 n) (A387410 (n + 1))

end

end A130384.P7647268876959654131

/-!
# A130385: Signature permutation of a Catalan automorphism: row 6 of A130400.

The programs for A130385, there is no canonical definition to state claims against.
-/

/-! ## A130385.P4815167143821284491

`A057163(A130392(A057163(n)))`
-/

namespace A130385.P4815167143821284491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130392 (A057163 n).toNat).toNat

end

end A130385.P4815167143821284491

/-! ## A130385.P15692321225841221963

`A130952(n)%A299930(n+1)`
-/

namespace A130385.P15692321225841221963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130952 n) (A299930 (n + 1))

end

end A130385.P15692321225841221963

/-! ## A130385.P16746571974504721429

`A130952(round(acot(A337460(n+1))+n))`
-/

namespace A130385.P16746571974504721429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130952 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (A337460 (n + 1) : ℝ) + (n : ℝ))).toNat

end

end A130385.P16746571974504721429

/-! ## A130385.P1005880076636228663

`∑{e}[A155702(3*n+1), #]*A130952(n)`
-/

namespace A130385.P1005880076636228663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155702 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A130952 n

end

end A130385.P1005880076636228663

/-! ## A130385.P2235620261101933697

`A130952(n)+A000038(A081581(n))`
-/

namespace A130385.P2235620261101933697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130952 n + A000038 (A081581 n).toNat

end

end A130385.P2235620261101933697

/-!
# A130386: Signature permutation of a Catalan automorphism: row 4 of A130401.

The programs for A130386, there is no canonical definition to state claims against.
-/

/-! ## A130386.P10826832501549198306

`A057163(A130391(A057163(n)))`
-/

namespace A130386.P10826832501549198306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130391 (A057163 n).toNat).toNat

end

end A130386.P10826832501549198306

/-! ## A130386.P15227336856348278450

`A130951(n)%A230428(n+1)`
-/

namespace A130386.P15227336856348278450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130951 n) (A230428 (n + 1))

end

end A130386.P15227336856348278450

/-! ## A130386.P16719047552693963794

`and(A130951(n), A387410(n+1))`
-/

namespace A130386.P16719047552693963794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130951 n) (A387410 (n + 1))

end

end A130386.P16719047552693963794

/-! ## A130386.P333762157869260451

`A130951(n)%A002808(A008778(n))`
-/

namespace A130386.P333762157869260451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130951 n) (A002808 (A008778 n).toNat)

end

end A130386.P333762157869260451

/-! ## A130386.P11788319246086844848

`A001222(A087878(n+1))*A130951(n)`
-/

namespace A130386.P11788319246086844848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A087878 (n + 1)).toNat * A130951 n

end

end A130386.P11788319246086844848

/-!
# A130387: Signature permutation of a Catalan automorphism: row 9 of A130400.

The programs for A130387, there is no canonical definition to state claims against.
-/

/-! ## A130387.P16908691164001671372

`A057163(A130382(A057163(n)))`
-/

namespace A130387.P16908691164001671372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130382 (A057163 n).toNat).toNat

end

end A130387.P16908691164001671372

/-! ## A130387.P14536674590689235353

`A130938(n)+A000038(A008277(n+1))`
-/

namespace A130387.P14536674590689235353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130938 n + A000038 (A008277 (n + 1)).toNat

end

end A130387.P14536674590689235353

/-! ## A130387.P512443049953661517

`A130938(n)+A000122(A069676(n+1))`
-/

namespace A130387.P512443049953661517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130938 n + A000122 (A069676 (n + 1)).toNat

end

end A130387.P512443049953661517

/-! ## A130387.P9457807799668625600

`A341619(A078852(n+1))+A130938(n)`
-/

namespace A130387.P9457807799668625600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341619 (A078852 (n + 1)).toNat + A130938 n

end

end A130387.P9457807799668625600

/-!
# A130388: Signature permutation of a Catalan automorphism: row 11 of A130401.

The programs for A130388, there is no canonical definition to state claims against.
-/

/-! ## A130388.P4822462804737877836

`A057163(A130381(A057163(n)))`
-/

namespace A130388.P4822462804737877836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130381 (A057163 n).toNat).toNat

end

end A130388.P4822462804737877836

/-! ## A130388.P10331765347269414170

`A130937(n)%A087830(n)`
-/

namespace A130388.P10331765347269414170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130937 n) (A087830 n)

end

end A130388.P10331765347269414170

/-! ## A130388.P16182471695657501617

`A130937(n)+A000007(A006501(n))`
-/

namespace A130388.P16182471695657501617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130937 n + A000007 (A006501 n).toNat

end

end A130388.P16182471695657501617

/-! ## A130388.P11897471968777793853

`A130937(n)+A000007(A001136(n+1))`
-/

namespace A130388.P11897471968777793853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130937 n + A000007 (A001136 (n + 1)).toNat

end

end A130388.P11897471968777793853

/-! ## A130388.P2580804826815056933

`A130937(n)+A000007(A209085(n+1))`
-/

namespace A130388.P2580804826815056933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130937 n + A000007 (A209085 (n + 1)).toNat

end

end A130388.P2580804826815056933

/-! ## A130388.P7510669432562533690

`A001222(A180496(n+1))*A130937(n)`
-/

namespace A130388.P7510669432562533690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A180496 (n + 1)).toNat * A130937 n

end

end A130388.P7510669432562533690

/-! ## A130388.P13661113671779568736

`A130937(A028310(n))%A130972(n+1)`
-/

namespace A130388.P13661113671779568736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130937 (A028310 n).toNat) (A130972 (n + 1))

end

end A130388.P13661113671779568736

/-! ## A130388.P7740244375258236283

`A001222(A133277(n+1))*A130937(n)`
-/

namespace A130388.P7740244375258236283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A133277 (n + 1)).toNat * A130937 n

end

end A130388.P7740244375258236283

/-!
# A130389: Signature permutation of a Catalan automorphism: row 10 of A130400.

The programs for A130389, there is no canonical definition to state claims against.
-/

/-! ## A130389.P2749787070976908958

`A057163(A130384(A057163(n)))`
-/

namespace A130389.P2749787070976908958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130384 (A057163 n).toNat).toNat

end

end A130389.P2749787070976908958

/-! ## A130389.P12677351672550588832

`A122292(A130390(A122292(n)))`
-/

namespace A130389.P12677351672550588832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122292 (A130390 (A122292 n).toNat).toNat

end

end A130389.P12677351672550588832

/-! ## A130389.P9504191876725335370

`A122318(A130390(A122318(n)))`
-/

namespace A130389.P9504191876725335370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122318 (A130390 (A122318 n).toNat).toNat

end

end A130389.P9504191876725335370

/-! ## A130389.P10389399018362293359

`A130352(A122291(A130351(n)))`
-/

namespace A130389.P10389399018362293359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130352 (A122291 (A130351 n).toNat).toNat

end

end A130389.P10389399018362293359

/-! ## A130389.P12178412651262314826

`A130940(n)%A138981(n)`
-/

namespace A130389.P12178412651262314826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130940 n) (A138981 n)

end

end A130389.P12178412651262314826

/-!
# A130390: Signature permutation of a Catalan automorphism: row 10 of A130401.

The programs for A130390, there is no canonical definition to state claims against.
-/

/-! ## A130390.P9955763194860038133

`A057163(A130383(A057163(n)))`
-/

namespace A130390.P9955763194860038133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130383 (A057163 n).toNat).toNat

end

end A130390.P9955763194860038133

/-! ## A130390.P949971013054255292

`A122291(A130351(A130351(n)))`
-/

namespace A130390.P949971013054255292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122291 (A130351 (A130351 n).toNat).toNat

end

end A130390.P949971013054255292

/-! ## A130390.P7579018717215228925

`A122291(A130352(A130352(n)))`
-/

namespace A130390.P7579018717215228925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122291 (A130352 (A130352 n).toNat).toNat

end

end A130390.P7579018717215228925

/-! ## A130390.P282119160106587783

`A130939(n^A032548(n+1))`
-/

namespace A130390.P282119160106587783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130939 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A032548 (n + 1) : ℤ))).toNat

end

end A130390.P282119160106587783

/-! ## A130390.P1638181614687381572

`A130939(n)%A119715(n+3)`
-/

namespace A130390.P1638181614687381572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130939 n) (A119715 (n + 3))

end

end A130390.P1638181614687381572

/-!
# A130391: Signature permutation of a Catalan automorphism: row 11 of A130400.

The programs for A130391, there is no canonical definition to state claims against.
-/

/-! ## A130391.P14689847341203324072

`A057163(A130386(A057163(n)))`
-/

namespace A130391.P14689847341203324072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130386 (A057163 n).toNat).toNat

end

end A130391.P14689847341203324072

/-! ## A130391.P5488504698960382050

`A130942(n)%A326117(n)`
-/

namespace A130391.P5488504698960382050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130942 n) (A326117 n)

end

end A130391.P5488504698960382050

/-! ## A130391.P6358732972367132464

`A185284(A131324(n))+A130942(n)`
-/

namespace A130391.P6358732972367132464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A131324 n).toNat + A130942 n

end

end A130391.P6358732972367132464

/-! ## A130391.P3514308348398166788

`A193095(A051967(n+1))+A130942(n)`
-/

namespace A130391.P3514308348398166788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193095 (A051967 (n + 1)).toNat + A130942 n

end

end A130391.P3514308348398166788

/-! ## A130391.P7882394157787582299

`A274719(A166581(n+1))+A130942(n)`
-/

namespace A130391.P7882394157787582299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274719 (A166581 (n + 1)).toNat + A130942 n

end

end A130391.P7882394157787582299

/-!
# A130393: Signature permutation of a Catalan automorphism: row 13 of A130400.

The programs for A130393, there is no canonical definition to state claims against.
-/

/-! ## A130393.P804894207817761483

`A057163(A130396(A057163(n)))`
-/

namespace A130393.P804894207817761483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130396 (A057163 n).toNat).toNat

end

end A130393.P804894207817761483

/-! ## A130393.P14274934327040023220

`A130960(A122303(n))-A249832(A193845(n))`
-/

namespace A130393.P14274934327040023220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130960 (A122303 n).toNat - A249832 (A193845 n).toNat

end

end A130393.P14274934327040023220

/-! ## A130393.P3254851581469069115

`A130960(A122303(n))%A137169(n)`
-/

namespace A130393.P3254851581469069115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130960 (A122303 n).toNat) (A137169 n)

end

end A130393.P3254851581469069115

/-! ## A130393.P13771997264206563296

`A130960(A122303(n))+A000007(A341448(n+1))`
-/

namespace A130393.P13771997264206563296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130960 (A122303 n).toNat + A000007 (A341448 (n + 1)).toNat

end

end A130393.P13771997264206563296

/-! ## A130393.P17367647981276603743

`A001221(A157173(n+1))*A130960(A122303(n))`
-/

namespace A130393.P17367647981276603743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A157173 (n + 1)).toNat * A130960 (A122303 n).toNat

end

end A130393.P17367647981276603743

/-!
# A130394: Signature permutation of a Catalan automorphism: row 18 of A130401.

The programs for A130394, there is no canonical definition to state claims against.
-/

/-! ## A130394.P12189271873497387908

`A057163(A130395(A057163(n)))`
-/

namespace A130394.P12189271873497387908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130395 (A057163 n).toNat).toNat

end

end A130394.P12189271873497387908

/-! ## A130394.P15507175017887996822

`A089867(A121657(n+1)*A130955(n))`
-/

namespace A130394.P15507175017887996822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A121657 (n + 1) * A130955 n).toNat

end

end A130394.P15507175017887996822

/-! ## A130394.P423126012276133477

`A089868(A121657(n+1)*A130955(n))`
-/

namespace A130394.P423126012276133477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A121657 (n + 1) * A130955 n).toNat

end

end A130394.P423126012276133477

/-!
# A130395: Signature permutation of a Catalan automorphism: row 14 of A130400.

The programs for A130395, there is no canonical definition to state claims against.
-/

/-! ## A130395.P6266688390868854517

`A057163(A130394(A057163(n)))`
-/

namespace A130395.P6266688390868854517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130394 (A057163 n).toNat).toNat

end

end A130395.P6266688390868854517

/-! ## A130395.P4123412556497030049

`A130954(lcm(A089867(n), A089868(n)))`
-/

namespace A130395.P4123412556497030049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130954 (Int.lcm (A089867 n) (A089868 n))

end

end A130395.P4123412556497030049

/-! ## A130395.P18040205391478988271

`A130954(A089867(n)%A157846(n+1))`
-/

namespace A130395.P18040205391478988271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130954 (Int.tmod (A089867 n) (A157846 (n + 1))).toNat

end

end A130395.P18040205391478988271

/-! ## A130395.P836253067139105779

`A130954(A089868(n)%A157846(n+1))`
-/

namespace A130395.P836253067139105779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130954 (Int.tmod (A089868 n) (A157846 (n + 1))).toNat

end

end A130395.P836253067139105779

/-! ## A130395.P2878976026916396206

`A130954(A089868(n)%A284323(n))`
-/

namespace A130395.P2878976026916396206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130954 (Int.tmod (A089868 n) (A284323 n)).toNat

end

end A130395.P2878976026916396206

/-!
# A130396: Signature permutation of a Catalan automorphism: row 19 of A130401.

The programs for A130396, there is no canonical definition to state claims against.
-/

/-! ## A130396.P2675076137359307230

`A057163(A130393(A057163(n)))`
-/

namespace A130396.P2675076137359307230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130393 (A057163 n).toNat).toNat

end

end A130396.P2675076137359307230

/-! ## A130396.P5990477811997655992

`A089869(A130953(n)*A133233(∑[n]))`
-/

namespace A130396.P5990477811997655992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (A130953 n * A133233 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A130396.P5990477811997655992

/-! ## A130396.P12361273190739788716

`A089869(A130953(n)/A133233(∑[n]))`
-/

namespace A130396.P12361273190739788716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (SequenceMachineLib.roundAway ((A130953 n : ℚ) / (A133233 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))).toNat

end

end A130396.P12361273190739788716

/-! ## A130396.P4170058097119949279

`A089869(A130953(n))%∑[A102369(n)]`
-/

namespace A130396.P4170058097119949279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089869 (A130953 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130396.P4170058097119949279

/-! ## A130396.P4559617951782152684

`A124762(A304479(2*(n+2)))+A057501(n)`
-/

namespace A130396.P4559617951782152684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A304479 (2 * (n + 2))).toNat + A057501 n

end

end A130396.P4559617951782152684

/-!
# A130397: Signature permutation of a Catalan automorphism: row 15 of A130400.

The programs for A130397, there is no canonical definition to state claims against.
-/

/-! ## A130397.P923686390892124752

`A130398(A073280(n))`
-/

namespace A130397.P923686390892124752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130398 (A073280 n).toNat

end

end A130397.P923686390892124752

/-! ## A130397.P291955024073791691

`A057163(A130398(A057163(n)))`
-/

namespace A130397.P291955024073791691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130398 (A057163 n).toNat).toNat

end

end A130397.P291955024073791691

/-! ## A130397.P12452714727620435100

`A069770(A130398(A069770(n)))`
-/

namespace A130397.P12452714727620435100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A130398 (A069770 n).toNat).toNat

end

end A130397.P12452714727620435100

/-! ## A130397.P17497800301037070812

`A130398(A130398(A130398(n)))`
-/

namespace A130397.P17497800301037070812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130398 (A130398 (A130398 n).toNat).toNat

end

end A130397.P17497800301037070812

/-! ## A130397.P4444431996754927258

`A122301(A089863(A122302(A089863(A089863(n)))))`
-/

namespace A130397.P4444431996754927258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122301 (A089863 (A122302 (A089863 (A089863 n).toNat).toNat).toNat).toNat

end

end A130397.P4444431996754927258

/-! ## A130397.P5943968557691506556

`A089863(A089863(A122353(A089863(A122354(n)))))`
-/

namespace A130397.P5943968557691506556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089863 (A089863 (A122353 (A089863 (A122354 n).toNat).toNat).toNat).toNat

end

end A130397.P5943968557691506556

/-! ## A130397.P949932051665445671

`A130359(A089854(n)%A122227(n))`
-/

namespace A130397.P949932051665445671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130359 (Int.tmod (A089854 n) (A122227 n)).toNat

end

end A130397.P949932051665445671

/-!
# A130398: Signature permutation of a Catalan automorphism: row 21 of A130401.

The programs for A130398, there is no canonical definition to state claims against.
-/

/-! ## A130398.P12814248031141795061

`A130397(A073280(n))`
-/

namespace A130398.P12814248031141795061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130397 (A073280 n).toNat

end

end A130398.P12814248031141795061

/-! ## A130398.P1235506173842261497

`A057163(A130397(A057163(n)))`
-/

namespace A130398.P1235506173842261497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A130397 (A057163 n).toNat).toNat

end

end A130398.P1235506173842261497

/-! ## A130398.P12972365404537733172

`A069770(A130397(A069770(n)))`
-/

namespace A130398.P12972365404537733172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A130397 (A069770 n).toNat).toNat

end

end A130398.P12972365404537733172

/-! ## A130398.P5262760405155762456

`A130397(A130397(A130397(n)))`
-/

namespace A130398.P5262760405155762456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130397 (A130397 (A130397 n).toNat).toNat

end

end A130398.P5262760405155762456

/-! ## A130398.P17723209599102217647

`A122301(A089859(A122302(A089859(A089859(n)))))`
-/

namespace A130398.P17723209599102217647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122301 (A089859 (A122302 (A089859 (A089859 n).toNat).toNat).toNat).toNat

end

end A130398.P17723209599102217647

/-! ## A130398.P13886725320523173094

`A089859(A089859(A122353(A089859(A122354(n)))))`
-/

namespace A130398.P13886725320523173094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089859 (A089859 (A122353 (A089859 (A122354 n).toNat).toNat).toNat).toNat

end

end A130398.P13886725320523173094

/-! ## A130398.P2398359016766254646

`A122339(A122339(A130360(A122301(A130360(n)))))`
-/

namespace A130398.P2398359016766254646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122339 (A122339 (A130360 (A122301 (A130360 n).toNat).toNat).toNat).toNat

end

end A130398.P2398359016766254646

/-! ## A130398.P16125254222510358357

`A122328(A154450(A122327(A089863(A154450(n)))))`
-/

namespace A130398.P16125254222510358357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122328 (A154450 (A122327 (A089863 (A154450 n).toNat).toNat).toNat).toNat

end

end A130398.P16125254222510358357

/-! ## A130398.P14544907780828100100

`A154450(A131000(n)%A157695(n+1))`
-/

namespace A130398.P14544907780828100100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154450 (Int.tmod (A131000 n) (A157695 (n + 1))).toNat

end

end A130398.P14544907780828100100

