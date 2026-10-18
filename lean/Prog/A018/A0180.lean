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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A018000: Powers of cube root of 9 rounded down.

The programs for A018000, the canonical program `A018000.P12566814103099478929` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018000 has offset 0).

The definition of A018000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018000.P11163216761927113055

`floor(9^(n/3))`
-/

namespace A018000.P11163216761927113055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(9 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋

end

end A018000.P11163216761927113055

namespace A018000

/-- `floor(9^(n/3))` -/
def P11163216761927113055.Spec : Prop :=
  ∀ n, P11163216761927113055.a n = A018000 n

end A018000

/-! ## A018000.P12566814103099478929

`A017982(2*n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018000

/-- `A017982(2*n)` -/
def P12566814103099478929.Spec : Prop :=
  ∀ n, P12566814103099478929.a n = A018000 n

theorem P12566814103099478929.correct : P12566814103099478929.Spec := by
  intro n
  simp only [A018000]

end A018000

/-! ## A018000.P16752455924970166165

`xor(1, xor(1, A017982(n+n)))`
-/

namespace A018000.P16752455924970166165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A017982 (n + n)))

end

end A018000.P16752455924970166165

namespace A018000

/-- `xor(1, xor(1, A017982(n+n)))` -/
def P16752455924970166165.Spec : Prop :=
  ∀ n, P16752455924970166165.a n = A018000 n

end A018000

/-! ## A018000.P15983534131676088777

`A018002(n)-A011655(n)`
-/

namespace A018000.P15983534131676088777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018002 n - A011655 n

end

end A018000.P15983534131676088777

namespace A018000

/-- `A018002(n)-A011655(n)` -/
def P15983534131676088777.Spec : Prop :=
  ∀ n, P15983534131676088777.a n = A018000 n

end A018000

/-! ## A018000.P3772309910694144771

`A018002(n)-abs(A102283(n))`
-/

namespace A018000.P3772309910694144771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018002 n - |A102283 n|

end

end A018000.P3772309910694144771

namespace A018000

/-- `A018002(n)-abs(A102283(n))` -/
def P3772309910694144771.Spec : Prop :=
  ∀ n, P3772309910694144771.a n = A018000 n

end A018000

/-! ## A018000.P17862328285554988244

`A018002(n)-Δ[A004523(n)]`
-/

namespace A018000.P17862328285554988244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018002 n - (f1 (n + 1) - f1 n)

end

end A018000.P17862328285554988244

namespace A018000

/-- `A018002(n)-Δ[A004523(n)]` -/
def P17862328285554988244.Spec : Prop :=
  ∀ n, P17862328285554988244.a n = A018000 n

end A018000

/-! ## A018000.P17345550752694352622

`A018002(n)-char[A166517(n)]`
-/

namespace A018000.P17345550752694352622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018002 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018000.P17345550752694352622

namespace A018000

/-- `A018002(n)-char[A166517(n)]` -/
def P17345550752694352622.Spec : Prop :=
  ∀ n, P17345550752694352622.a n = A018000 n

end A018000

/-! ## A018000.P7028678899258226160

`A017984(2*n)-A011655(n)`
-/

namespace A018000.P7028678899258226160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017984 (2 * n) - A011655 n

end

end A018000.P7028678899258226160

namespace A018000

/-- `A017984(2*n)-A011655(n)` -/
def P7028678899258226160.Spec : Prop :=
  ∀ n, P7028678899258226160.a n = A018000 n

end A018000

/-! ## A018000.P5264040871785713931

`A018002(n)-A097325(2*n)`
-/

namespace A018000.P5264040871785713931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018002 n - A097325 (2 * n)

end

end A018000.P5264040871785713931

namespace A018000

/-- `A018002(n)-A097325(2*n)` -/
def P5264040871785713931.Spec : Prop :=
  ∀ n, P5264040871785713931.a n = A018000 n

end A018000

/-! ## A018000.P7758411813510005215

`A018002(n)-char[A001651(n+1)]`
-/

namespace A018000.P7758411813510005215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018002 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018000.P7758411813510005215

namespace A018000

/-- `A018002(n)-char[A001651(n+1)]` -/
def P7758411813510005215.Spec : Prop :=
  ∀ n, P7758411813510005215.a n = A018000 n

end A018000

/-! ## A018000.P15568893293571951812

`A017984(2*n)-Δ[A002264(2*n)]`
-/

namespace A018000.P15568893293571951812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017984 (2 * n) - (f1 (n + 1) - f1 n)

end

end A018000.P15568893293571951812

namespace A018000

/-- `A017984(2*n)-Δ[A002264(2*n)]` -/
def P15568893293571951812.Spec : Prop :=
  ∀ n, P15568893293571951812.a n = A018000 n

end A018000

/-! ## A018000.P14533216541729671584

`A018002(n)-A000035(A002487(n))`
-/

namespace A018000.P14533216541729671584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018002 n - A000035 (A002487 n).toNat

end

end A018000.P14533216541729671584

namespace A018000

/-- `A018002(n)-A000035(A002487(n))` -/
def P14533216541729671584.Spec : Prop :=
  ∀ n, P14533216541729671584.a n = A018000 n

end A018000

/-! ## A018000.P12983215942488173257

`A018002(n)-A000035(A004396(n))`
-/

namespace A018000.P12983215942488173257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018002 n - A000035 (A004396 n).toNat

end

end A018000.P12983215942488173257

namespace A018000

/-- `A018002(n)-A000035(A004396(n))` -/
def P12983215942488173257.Spec : Prop :=
  ∀ n, P12983215942488173257.a n = A018000 n

end A018000

/-! ## A018000.P9343706218311778554

`A018002(n)-A000035(A092942(n))`
-/

namespace A018000.P9343706218311778554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018002 n - A000035 (A092942 n).toNat

end

end A018000.P9343706218311778554

namespace A018000

/-- `A018002(n)-A000035(A092942(n))` -/
def P9343706218311778554.Spec : Prop :=
  ∀ n, P9343706218311778554.a n = A018000 n

end A018000

/-! ## A018000.P4722180163048039618

`A018002(n)-A000035(A066481(n+3))`
-/

namespace A018000.P4722180163048039618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018002 n - A000035 (A066481 (n + 3)).toNat

end

end A018000.P4722180163048039618

namespace A018000

/-- `A018002(n)-A000035(A066481(n+3))` -/
def P4722180163048039618.Spec : Prop :=
  ∀ n, P4722180163048039618.a n = A018000 n

end A018000

/-! ## A018000.P12464527852392940746

`A017979(n)+A018002(n)-A017981(n)`
-/

namespace A018000.P12464527852392940746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 n + (A018002 n - A017981 n)

end

end A018000.P12464527852392940746

namespace A018000

/-- `A017979(n)+A018002(n)-A017981(n)` -/
def P12464527852392940746.Spec : Prop :=
  ∀ n, P12464527852392940746.a n = A018000 n

end A018000

/-! ## A018000.P1115600389574526927

`round((root(Δ[A034513(n)], 3)-1)/2)`
-/

namespace A018000.P1115600389574526927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((f1 (n + 1) - f1 n : ℝ) ^ (1 / (3 : ℝ)) - 1) / 2)

end

end A018000.P1115600389574526927

namespace A018000

/-- `round((root(Δ[A034513(n)], 3)-1)/2)` -/
def P1115600389574526927.Spec : Prop :=
  ∀ n, P1115600389574526927.a n = A018000 n

end A018000

/-! ## A018000.P12344913246608006891

`A018002(n)-A102283(n²)`
-/

namespace A018000.P12344913246608006891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018002 n - A102283 (n ^ 2)

end

end A018000.P12344913246608006891

namespace A018000

/-- `A018002(n)-A102283(n²)` -/
def P12344913246608006891.Spec : Prop :=
  ∀ n, P12344913246608006891.a n = A018000 n

end A018000

/-!
# A018001: Powers of cube root of 9 rounded to nearest integer.

The programs for A018001, the canonical program `A018001.P12620626073793832567` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018001 has offset 0).

The definition of A018001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018001.P9696907138853940061

`round(9^(n/3))`
-/

namespace A018001.P9696907138853940061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((9 : ℝ) ^ ((n : ℚ) / 3 : ℝ))

end

end A018001.P9696907138853940061

namespace A018001

/-- `round(9^(n/3))` -/
def P9696907138853940061.Spec : Prop :=
  ∀ n, P9696907138853940061.a n = A018001 n

end A018001

/-! ## A018001.P12620626073793832567

`A017983(2*n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018001

/-- `A017983(2*n)` -/
def P12620626073793832567.Spec : Prop :=
  ∀ n, P12620626073793832567.a n = A018001 n

theorem P12620626073793832567.correct : P12620626073793832567.Spec := by
  intro n
  simp only [A018001]

end A018001

/-! ## A018001.P9438365374387200705

`record[A017983(A014681(n))]`
-/

namespace A018001.P9438365374387200705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017983 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018001.P9438365374387200705

namespace A018001

/-- `record[A017983(A014681(n))]` -/
def P9438365374387200705.Spec : Prop :=
  ∀ n, P9438365374387200705.a n = A018001 n

end A018001

/-! ## A018001.P5283739255402710567

`A017983(n+n)^A162642(A020639(n+1))`
-/

namespace A018001.P5283739255402710567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017983 (n + n) : ℚ) ^ (A162642 (A020639 (n + 1)).toNat : ℤ)

end

end A018001.P5283739255402710567

namespace A018001

/-- `A017983(n+n)^A162642(A020639(n+1))` -/
def P5283739255402710567.Spec : Prop :=
  ∀ n, P5283739255402710567.a n = (A018001 n : ℚ)

end A018001

/-! ## A018001.P10979289490493491469

`A047330(A265722(n+n))+A017983(n+n)`
-/

namespace A018001.P10979289490493491469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047330 (A265722 (n + n)).toNat + A017983 (n + n)

end

end A018001.P10979289490493491469

namespace A018001

/-- `A047330(A265722(n+n))+A017983(n+n)` -/
def P10979289490493491469.Spec : Prop :=
  ∀ n, P10979289490493491469.a n = A018001 n

end A018001

/-! ## A018001.P3607635893761152983

`A017983(n+n)%A018004(n+1)`
-/

namespace A018001.P3607635893761152983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017983 (n + n)) (A018004 (n + 1))

end

end A018001.P3607635893761152983

namespace A018001

/-- `A017983(n+n)%A018004(n+1)` -/
def P3607635893761152983.Spec : Prop :=
  ∀ n, P3607635893761152983.a n = A018001 n

end A018001

/-! ## A018001.P13955224733232283883

`floor(A018000(2*n)/A018000(n))`
-/

namespace A018001.P13955224733232283883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018000 (2 * n) : ℚ) / (A018000 n : ℚ)⌋

end

end A018001.P13955224733232283883

namespace A018001

/-- `floor(A018000(2*n)/A018000(n))` -/
def P13955224733232283883.Spec : Prop :=
  ∀ n, P13955224733232283883.a n = A018001 n

end A018001

/-! ## A018001.P16687701937640625178

`ceil(A018002(2*n)/A018002(n))`
-/

namespace A018001.P16687701937640625178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018002 (2 * n) : ℚ) / (A018002 n : ℚ)⌉

end

end A018001.P16687701937640625178

namespace A018001

/-- `ceil(A018002(2*n)/A018002(n))` -/
def P16687701937640625178.Spec : Prop :=
  ∀ n, P16687701937640625178.a n = A018001 n

end A018001

/-! ## A018001.P9542554171457402898

`ceil(A018000(2*n)/A017984(2*n))`
-/

namespace A018001.P9542554171457402898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018000 (2 * n) : ℚ) / (A017984 (2 * n) : ℚ)⌉

end

end A018001.P9542554171457402898

namespace A018001

/-- `ceil(A018000(2*n)/A017984(2*n))` -/
def P9542554171457402898.Spec : Prop :=
  ∀ n, P9542554171457402898.a n = A018001 n

end A018001

/-! ## A018001.P17959975048148505058

`A017983(n+n)/A013610(∑[n])`
-/

namespace A018001.P17959975048148505058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017983 (n + n) : ℚ) / (A013610 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A018001.P17959975048148505058

namespace A018001

/-- `A017983(n+n)/A013610(∑[n])` -/
def P17959975048148505058.Spec : Prop :=
  ∀ n, P17959975048148505058.a n = (A018001 n : ℚ)

end A018001

/-!
# A018002: Powers of cube root of 9 rounded up.

The programs for A018002, the canonical program `A018002.P8127039911767979249` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018002 has offset 0).

The definition of A018002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018002.P9635545297861235514

`ceil(9^(n/3))`
-/

namespace A018002.P9635545297861235514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(9 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉

end

end A018002.P9635545297861235514

namespace A018002

/-- `ceil(9^(n/3))` -/
def P9635545297861235514.Spec : Prop :=
  ∀ n, P9635545297861235514.a n = A018002 n

end A018002

/-! ## A018002.P8127039911767979249

`A017984(2*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018002

/-- `A017984(2*n)` -/
def P8127039911767979249.Spec : Prop :=
  ∀ n, P8127039911767979249.a n = A018002 n

theorem P8127039911767979249.correct : P8127039911767979249.Spec := by
  intro n
  simp only [A018002]

end A018002

/-! ## A018002.P2233474835015518957

`A018000(n)+n²%3`
-/

namespace A018002.P2233474835015518957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018000 n + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A018002.P2233474835015518957

namespace A018002

/-- `A018000(n)+n²%3` -/
def P2233474835015518957.Spec : Prop :=
  ∀ n, P2233474835015518957.a n = A018002 n

end A018002

/-! ## A018002.P14035355900708823805

`record[A017984(and(n, n+1))]`
-/

namespace A018002.P14035355900708823805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017984 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018002.P14035355900708823805

namespace A018002

/-- `record[A017984(and(n, n+1))]` -/
def P14035355900708823805.Spec : Prop :=
  ∀ n, P14035355900708823805.a n = A018002 n

end A018002

/-! ## A018002.P4182678897340287952

`A018000(n)+A011655(n)`
-/

namespace A018002.P4182678897340287952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018000 n + A011655 n

end

end A018002.P4182678897340287952

namespace A018002

/-- `A018000(n)+A011655(n)` -/
def P4182678897340287952.Spec : Prop :=
  ∀ n, P4182678897340287952.a n = A018002 n

end A018002

/-! ## A018002.P16584425452398490727

`A018000(n)+A102283(n)²`
-/

namespace A018002.P16584425452398490727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018000 n + A102283 n ^ 2

end

end A018002.P16584425452398490727

namespace A018002

/-- `A018000(n)+A102283(n)²` -/
def P16584425452398490727.Spec : Prop :=
  ∀ n, P16584425452398490727.a n = A018002 n

end A018002

/-! ## A018002.P8682645339358544246

`A018000(n)+Δ[A004523(n)]`
-/

namespace A018002.P8682645339358544246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018000 n + (f1 (n + 1) - f1 n)

end

end A018002.P8682645339358544246

namespace A018002

/-- `A018000(n)+Δ[A004523(n)]` -/
def P8682645339358544246.Spec : Prop :=
  ∀ n, P8682645339358544246.a n = A018002 n

end A018002

/-! ## A018002.P2243761258498674092

`A018000(n)+char[A166517(n)]`
-/

namespace A018002.P2243761258498674092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018000 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018002.P2243761258498674092

namespace A018002

/-- `A018000(n)+char[A166517(n)]` -/
def P2243761258498674092.Spec : Prop :=
  ∀ n, P2243761258498674092.a n = A018002 n

end A018002

/-! ## A018002.P7308854107289062446

`A017982(2*n)+A011655(n)`
-/

namespace A018002.P7308854107289062446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017982 (2 * n) + A011655 n

end

end A018002.P7308854107289062446

namespace A018002

/-- `A017982(2*n)+A011655(n)` -/
def P7308854107289062446.Spec : Prop :=
  ∀ n, P7308854107289062446.a n = A018002 n

end A018002

/-! ## A018002.P16160460704122593228

`A097325(2*n)+A018000(n)`
-/

namespace A018002.P16160460704122593228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (2 * n) + A018000 n

end

end A018002.P16160460704122593228

namespace A018002

/-- `A097325(2*n)+A018000(n)` -/
def P16160460704122593228.Spec : Prop :=
  ∀ n, P16160460704122593228.a n = A018002 n

end A018002

/-! ## A018002.P8287693842944924786

`A017982(2*n)+Δ[A004523(n)]`
-/

namespace A018002.P8287693842944924786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017982 (2 * n) + (f1 (n + 1) - f1 n)

end

end A018002.P8287693842944924786

namespace A018002

/-- `A017982(2*n)+Δ[A004523(n)]` -/
def P8287693842944924786.Spec : Prop :=
  ∀ n, P8287693842944924786.a n = A018002 n

end A018002

/-! ## A018002.P8691814879317655344

`A017982(2*n)+char[A166517(n)]`
-/

namespace A018002.P8691814879317655344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017982 (2 * n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018002.P8691814879317655344

namespace A018002

/-- `A017982(2*n)+char[A166517(n)]` -/
def P8691814879317655344.Spec : Prop :=
  ∀ n, P8691814879317655344.a n = A018002 n

end A018002

/-! ## A018002.P10087776052200126632

`A097325(2*n)+A017982(2*n)`
-/

namespace A018002.P10087776052200126632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (2 * n) + A017982 (2 * n)

end

end A018002.P10087776052200126632

namespace A018002

/-- `A097325(2*n)+A017982(2*n)` -/
def P10087776052200126632.Spec : Prop :=
  ∀ n, P10087776052200126632.a n = A018002 n

end A018002

/-! ## A018002.P13306735521655936733

`A018000(n)+A000035(A002487(n))`
-/

namespace A018002.P13306735521655936733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018000 n + A000035 (A002487 n).toNat

end

end A018002.P13306735521655936733

namespace A018002

/-- `A018000(n)+A000035(A002487(n))` -/
def P13306735521655936733.Spec : Prop :=
  ∀ n, P13306735521655936733.a n = A018002 n

end A018002

/-! ## A018002.P3920873455185166842

`A018000(n)+A000035(A004396(n))`
-/

namespace A018002.P3920873455185166842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018000 n + A000035 (A004396 n).toNat

end

end A018002.P3920873455185166842

namespace A018002

/-- `A018000(n)+A000035(A004396(n))` -/
def P3920873455185166842.Spec : Prop :=
  ∀ n, P3920873455185166842.a n = A018002 n

end A018002

/-! ## A018002.P7527318998840181184

`A018000(n)+A000035(A092942(n))`
-/

namespace A018002.P7527318998840181184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018000 n + A000035 (A092942 n).toNat

end

end A018002.P7527318998840181184

namespace A018002

/-- `A018000(n)+A000035(A092942(n))` -/
def P7527318998840181184.Spec : Prop :=
  ∀ n, P7527318998840181184.a n = A018002 n

end A018002

/-! ## A018002.P1094846686462992220

`A017982(2*n)+A000035(A002487(n))`
-/

namespace A018002.P1094846686462992220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017982 (2 * n) + A000035 (A002487 n).toNat

end

end A018002.P1094846686462992220

namespace A018002

/-- `A017982(2*n)+A000035(A002487(n))` -/
def P1094846686462992220.Spec : Prop :=
  ∀ n, P1094846686462992220.a n = A018002 n

end A018002

/-! ## A018002.P10585673323152303997

`A017982(2*n)+A000035(A004396(n))`
-/

namespace A018002.P10585673323152303997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017982 (2 * n) + A000035 (A004396 n).toNat

end

end A018002.P10585673323152303997

namespace A018002

/-- `A017982(2*n)+A000035(A004396(n))` -/
def P10585673323152303997.Spec : Prop :=
  ∀ n, P10585673323152303997.a n = A018002 n

end A018002

/-! ## A018002.P12186880053242090460

`A017982(2*n)+A000035(A092942(n))`
-/

namespace A018002.P12186880053242090460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017982 (2 * n) + A000035 (A092942 n).toNat

end

end A018002.P12186880053242090460

namespace A018002

/-- `A017982(2*n)+A000035(A092942(n))` -/
def P12186880053242090460.Spec : Prop :=
  ∀ n, P12186880053242090460.a n = A018002 n

end A018002

/-!
# A018003: Powers of cube root of 10 rounded down.

The programs for A018003, the canonical program `A018003.P8392069369485400393` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018003 has offset 0).

The definition of A018003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018003.P8392069369485400393

`floor(10^(n/3))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018003

/-- `floor(10^(n/3))` -/
def P8392069369485400393.Spec : Prop :=
  ∀ n, P8392069369485400393.a n = A018003 n

theorem P8392069369485400393.correct : P8392069369485400393.Spec := by
  intro n
  simp only [A018003]

end A018003

/-! ## A018003.P9638754577250362986

`ceil(10^(n/3))-n²%3`
-/

namespace A018003.P9638754577250362986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉ - ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A018003.P9638754577250362986

namespace A018003

/-- `ceil(10^(n/3))-n²%3` -/
def P9638754577250362986.Spec : Prop :=
  ∀ n, P9638754577250362986.a n = A018003 n

end A018003

/-! ## A018003.P638308699035539063

`A018005(n+1)-A011655(n)`
-/

namespace A018003.P638308699035539063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (n + 1) - A011655 n

end

end A018003.P638308699035539063

namespace A018003

/-- `A018005(n+1)-A011655(n)` -/
def P638308699035539063.Spec : Prop :=
  ∀ n, P638308699035539063.a n = A018003 n

end A018003

/-! ## A018003.P4294996203017287808

`A018005(n+1)-Δ[A004523(n)]`
-/

namespace A018003.P4294996203017287808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (n + 1) - (f1 (n + 1) - f1 n)

end

end A018003.P4294996203017287808

namespace A018003

/-- `A018005(n+1)-Δ[A004523(n)]` -/
def P4294996203017287808.Spec : Prop :=
  ∀ n, P4294996203017287808.a n = A018003 n

end A018003

/-! ## A018003.P12411427433942300218

`A018005(n+1)-char[A166517(n)]`
-/

namespace A018003.P12411427433942300218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018003.P12411427433942300218

namespace A018003

/-- `A018005(n+1)-char[A166517(n)]` -/
def P12411427433942300218.Spec : Prop :=
  ∀ n, P12411427433942300218.a n = A018003 n

end A018003

/-! ## A018003.P13158751821644966011

`A018005(n+1)-A097325(2*n)`
-/

namespace A018003.P13158751821644966011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (n + 1) - A097325 (2 * n)

end

end A018003.P13158751821644966011

namespace A018003

/-- `A018005(n+1)-A097325(2*n)` -/
def P13158751821644966011.Spec : Prop :=
  ∀ n, P13158751821644966011.a n = A018003 n

end A018003

/-! ## A018003.P14777953787796152302

`A018005(n+1)-and(1, A000032(n))`
-/

namespace A018003.P14777953787796152302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (n + 1) - Int.land 1 (A000032 n)

end

end A018003.P14777953787796152302

namespace A018003

/-- `A018005(n+1)-and(1, A000032(n))` -/
def P14777953787796152302.Spec : Prop :=
  ∀ n, P14777953787796152302.a n = A018003 n

end A018003

/-! ## A018003.P16278877724022706613

`A018005(n+1)-and(1, A022086(n))`
-/

namespace A018003.P16278877724022706613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (n + 1) - Int.land 1 (A022086 n)

end

end A018003.P16278877724022706613

namespace A018003

/-- `A018005(n+1)-and(1, A022086(n))` -/
def P16278877724022706613.Spec : Prop :=
  ∀ n, P16278877724022706613.a n = A018003 n

end A018003

/-! ## A018003.P2387865318138753992

`A018005(n+1)-A000035(A002487(n))`
-/

namespace A018003.P2387865318138753992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (n + 1) - A000035 (A002487 n).toNat

end

end A018003.P2387865318138753992

namespace A018003

/-- `A018005(n+1)-A000035(A002487(n))` -/
def P2387865318138753992.Spec : Prop :=
  ∀ n, P2387865318138753992.a n = A018003 n

end A018003

/-! ## A018003.P5729949406613853725

`A018005(n+1)-A000035(A004396(n))`
-/

namespace A018003.P5729949406613853725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (n + 1) - A000035 (A004396 n).toNat

end

end A018003.P5729949406613853725

namespace A018003

/-- `A018005(n+1)-A000035(A004396(n))` -/
def P5729949406613853725.Spec : Prop :=
  ∀ n, P5729949406613853725.a n = A018003 n

end A018003

/-! ## A018003.P5419992127285804444

`A018005(n+1)-A000035(A092942(n))`
-/

namespace A018003.P5419992127285804444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (n + 1) - A000035 (A092942 n).toNat

end

end A018003.P5419992127285804444

namespace A018003

/-- `A018005(n+1)-A000035(A092942(n))` -/
def P5419992127285804444.Spec : Prop :=
  ∀ n, P5419992127285804444.a n = A018003 n

end A018003

/-! ## A018003.P17172227349779229549

`A018005(n+1)+A017979(n)-A017981(n)`
-/

namespace A018003.P17172227349779229549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (n + 1) + (A017979 n - A017981 n)

end

end A018003.P17172227349779229549

namespace A018003

/-- `A018005(n+1)+A017979(n)-A017981(n)` -/
def P17172227349779229549.Spec : Prop :=
  ∀ n, P17172227349779229549.a n = A018003 n

end A018003

/-!
# A018004: Powers of cube root of 10 rounded to nearest integer.

The programs for A018004, the canonical program `A018004.P16559126696998755901` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018004 has offset 0).

The definition of A018004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018004.P16559126696998755901

`round(10^(n/3))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018004

/-- `round(10^(n/3))` -/
def P16559126696998755901.Spec : Prop :=
  ∀ n, P16559126696998755901.a n = A018004 n

theorem P16559126696998755901.correct : P16559126696998755901.Spec := by
  intro n
  simp only [A018004]

end A018004

/-! ## A018004.P7415963279646801990

`floor(A018003(2*n)/A018003(n))`
-/

namespace A018004.P7415963279646801990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018003 (2 * n) : ℚ) / (A018003 n : ℚ)⌋

end

end A018004.P7415963279646801990

namespace A018004

/-- `floor(A018003(2*n)/A018003(n))` -/
def P7415963279646801990.Spec : Prop :=
  ∀ n, P7415963279646801990.a n = A018004 n

end A018004

/-! ## A018004.P10230832260765273498

`ceil(A018005(2*n+1)/A018005(n+1))`
-/

namespace A018004.P10230832260765273498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018005 (2 * n + 1) : ℚ) / (A018005 (n + 1) : ℚ)⌉

end

end A018004.P10230832260765273498

namespace A018004

/-- `ceil(A018005(2*n+1)/A018005(n+1))` -/
def P10230832260765273498.Spec : Prop :=
  ∀ n, P10230832260765273498.a n = A018004 n

end A018004

/-!
# A018005: Smallest number whose cube has n digits.

The programs for A018005, the canonical program `A018005.P1217500562103082431` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018005 has offset 1).

The definition of A018005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018005.P2277845744773208659

`ceil(10^(n/3))`
-/

namespace A018005.P2277845744773208659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉

end

end A018005.P2277845744773208659

namespace A018005

/-- `ceil(10^(n/3))` -/
def P2277845744773208659.Spec : Prop :=
  ∀ n, P2277845744773208659.a n = A018005 (n + 1)

end A018005

/-! ## A018005.P8160559166457021983

`A130080(Δ[n²])`
-/

namespace A018005.P8160559166457021983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130080 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A018005.P8160559166457021983

namespace A018005

/-- `A130080(Δ[n²])` -/
def P8160559166457021983.Spec : Prop :=
  ∀ n, P8160559166457021983.a n = A018005 (n + 1)

end A018005

/-! ## A018005.P17491181206726819987

`A130083(3*n+1)`
-/

namespace A018005.P17491181206726819987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130083 (3 * n + 1)

end

end A018005.P17491181206726819987

namespace A018005

/-- `A130083(3*n+1)` -/
def P17491181206726819987.Spec : Prop :=
  ∀ n, P17491181206726819987.a n = A018005 (n + 1)

end A018005

/-! ## A018005.P12825719302914258397

`A181354(n)+a(n-1)` with `a(0)=1`
-/

namespace A018005.P12825719302914258397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A181354 n + a (n - 1)

end

end A018005.P12825719302914258397

namespace A018005

/-- `A181354(n)+a(n-1)` -/
def P12825719302914258397.Spec : Prop :=
  ∀ n, P12825719302914258397.a n = A018005 (n + 1)

end A018005

/-! ## A018005.P10482703972046865762

`A062941(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A018005.P10482703972046865762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A062941 n + a (n - 1)

end

end A018005.P10482703972046865762

namespace A018005

/-- `A062941(n)+a(n-1)` -/
def P10482703972046865762.Spec : Prop :=
  ∀ n, P10482703972046865762.a n = A018005 (n + 1)

end A018005

/-! ## A018005.P1217500562103082431

`A018003(n)+A011655(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018005

/-- `A018003(n)+A011655(n)` -/
def P1217500562103082431.Spec : Prop :=
  ∀ n, P1217500562103082431.a n = A018005 (n + 1)

theorem P1217500562103082431.correct : P1217500562103082431.Spec := by
  intro n
  simp only [A018005, Nat.add_sub_cancel]

end A018005

/-! ## A018005.P12864579579783355163

`A130080(2*n+1)+A000007(n+1)`
-/

namespace A018005.P12864579579783355163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130080 (2 * n + 1) + A000007 (n + 1)

end

end A018005.P12864579579783355163

namespace A018005

/-- `A130080(2*n+1)+A000007(n+1)` -/
def P12864579579783355163.Spec : Prop :=
  ∀ n, P12864579579783355163.a n = A018005 (n + 1)

end A018005

/-! ## A018005.P8389205876159218363

`A057427(n+1)*A130080(2*n+1)`
-/

namespace A018005.P8389205876159218363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A130080 (2 * n + 1)

end

end A018005.P8389205876159218363

namespace A018005

/-- `A057427(n+1)*A130080(2*n+1)` -/
def P8389205876159218363.Spec : Prop :=
  ∀ n, P8389205876159218363.a n = A018005 (n + 1)

end A018005

/-! ## A018005.P3025278659842740381

`A057428(n+1)²*A130080(2*n+1)`
-/

namespace A018005.P3025278659842740381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) ^ 2 * A130080 (2 * n + 1)

end

end A018005.P3025278659842740381

namespace A018005

/-- `A057428(n+1)²*A130080(2*n+1)` -/
def P3025278659842740381.Spec : Prop :=
  ∀ n, P3025278659842740381.a n = A018005 (n + 1)

end A018005

/-! ## A018005.P6992462661159741461

`gcd(2, A119288(n+2))*A130080(2*n+1)`
-/

namespace A018005.P6992462661159741461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A119288 (n + 2)) : ℤ) * A130080 (2 * n + 1)

end

end A018005.P6992462661159741461

namespace A018005

/-- `gcd(2, A119288(n+2))*A130080(2*n+1)` -/
def P6992462661159741461.Spec : Prop :=
  ∀ n, P6992462661159741461.a n = A018005 (n + 1)

end A018005

/-! ## A018005.P4218191232902432388

`floor(A130080(2*n+1)+acot(A130080(n+2)))`
-/

namespace A018005.P4218191232902432388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A130080 (2 * n + 1) : ℝ) + SequenceMachineLib.acot (A130080 (n + 2) : ℝ)⌋

end

end A018005.P4218191232902432388

namespace A018005

/-- `floor(A130080(2*n+1)+acot(A130080(n+2)))` -/
def P4218191232902432388.Spec : Prop :=
  ∀ n, P4218191232902432388.a n = A018005 (n + 1)

end A018005

/-! ## A018005.P13610653103378939691

`A057428(2*n+1)+A130080(2*n+1)+1`
-/

namespace A018005.P13610653103378939691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (2 * n + 1) + (A130080 (2 * n + 1) + 1)

end

end A018005.P13610653103378939691

namespace A018005

/-- `A057428(2*n+1)+A130080(2*n+1)+1` -/
def P13610653103378939691.Spec : Prop :=
  ∀ n, P13610653103378939691.a n = A018005 (n + 1)

end A018005

/-! ## A018005.P3787019365206694485

`A119288(A119288(n+2))*A130080(2*n+1)`
-/

namespace A018005.P3787019365206694485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A119288 (n + 2)).toNat * A130080 (2 * n + 1)

end

end A018005.P3787019365206694485

namespace A018005

/-- `A119288(A119288(n+2))*A130080(2*n+1)` -/
def P3787019365206694485.Spec : Prop :=
  ∀ n, P3787019365206694485.a n = A018005 (n + 1)

end A018005

/-! ## A018005.P18442202599239314547

`A004737(A004737(n+2)²)*A130080(2*n+1)`
-/

namespace A018005.P18442202599239314547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (A004737 (n + 2) ^ 2).toNat * A130080 (2 * n + 1)

end

end A018005.P18442202599239314547

namespace A018005

/-- `A004737(A004737(n+2)²)*A130080(2*n+1)` -/
def P18442202599239314547.Spec : Prop :=
  ∀ n, P18442202599239314547.a n = A018005 (n + 1)

end A018005

/-! ## A018005.P17666838635675296684

`A130080(2*n+1)+A130130(2*n+1)-A130130(n+1)`
-/

namespace A018005.P17666838635675296684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130080 (2 * n + 1) + (A130130 (2 * n + 1) - A130130 (n + 1))

end

end A018005.P17666838635675296684

namespace A018005

/-- `A130080(2*n+1)+A130130(2*n+1)-A130130(n+1)` -/
def P17666838635675296684.Spec : Prop :=
  ∀ n, P17666838635675296684.a n = A018005 (n + 1)

end A018005

/-! ## A018005.P16716699539718670091

`A008619(2*n+1)*A130080(2*n+1)/(n+1)`
-/

namespace A018005.P16716699539718670091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n + 1) * A130080 (2 * n + 1) : ℚ) / (n + 1 : ℚ)

end

end A018005.P16716699539718670091

namespace A018005

/-- `A008619(2*n+1)*A130080(2*n+1)/(n+1)` -/
def P16716699539718670091.Spec : Prop :=
  ∀ n, P16716699539718670091.a n = (A018005 (n + 1) : ℚ)

end A018005

/-! ## A018005.P1502119543333010231

`root(A130080(2*n+1)², 2)`
-/

namespace A018005.P1502119543333010231
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A130080 (2 * n + 1) ^ 2 : ℝ) ^ (1 / (2 : ℝ))

end

end A018005.P1502119543333010231

namespace A018005

/-- `root(A130080(2*n+1)², 2)` -/
def P1502119543333010231.Spec : Prop :=
  ∀ n, P1502119543333010231.a n = (A018005 (n + 1) : ℝ)

end A018005

/-! ## A018005.P6402997521497217608

`A130080(2*n+1)²/A130080(A133259(2*n))`
-/

namespace A018005.P6402997521497217608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130080 (2 * n + 1) ^ 2 : ℚ) / (A130080 (A133259 (2 * n)).toNat : ℚ)

end

end A018005.P6402997521497217608

namespace A018005

/-- `A130080(2*n+1)²/A130080(A133259(2*n))` -/
def P6402997521497217608.Spec : Prop :=
  ∀ n, P6402997521497217608.a n = (A018005 (n + 1) : ℚ)

end A018005

/-!
# A018006: Powers of cube root of 11 rounded down.

The programs for A018006, the canonical program `A018006.P12550283863343103991` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018006 has offset 0).

The definition of A018006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018006.P12550283863343103991

`floor(11^(n/3))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018006

/-- `floor(11^(n/3))` -/
def P12550283863343103991.Spec : Prop :=
  ∀ n, P12550283863343103991.a n = A018006 n

theorem P12550283863343103991.correct : P12550283863343103991.Spec := by
  intro n
  simp only [A018006]

end A018006

/-! ## A018006.P11659670381808222561

`A018008(n)-A011655(n)`
-/

namespace A018006.P11659670381808222561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018008 n - A011655 n

end

end A018006.P11659670381808222561

namespace A018006

/-- `A018008(n)-A011655(n)` -/
def P11659670381808222561.Spec : Prop :=
  ∀ n, P11659670381808222561.a n = A018006 n

end A018006

/-! ## A018006.P5844940474955274621

`A018008(n)-abs(A092220(n))`
-/

namespace A018006.P5844940474955274621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018008 n - |A092220 n|

end

end A018006.P5844940474955274621

namespace A018006

/-- `A018008(n)-abs(A092220(n))` -/
def P5844940474955274621.Spec : Prop :=
  ∀ n, P5844940474955274621.a n = A018006 n

end A018006

/-! ## A018006.P9615126530062869646

`A018008(n)-A128834(n)²`
-/

namespace A018006.P9615126530062869646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018008 n - A128834 n ^ 2

end

end A018006.P9615126530062869646

namespace A018006

/-- `A018008(n)-A128834(n)²` -/
def P9615126530062869646.Spec : Prop :=
  ∀ n, P9615126530062869646.a n = A018006 n

end A018006

/-! ## A018006.P8300385874278423546

`A018008(n)-Δ[A004523(n)]`
-/

namespace A018006.P8300385874278423546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018008 n - (f1 (n + 1) - f1 n)

end

end A018006.P8300385874278423546

namespace A018006

/-- `A018008(n)-Δ[A004523(n)]` -/
def P8300385874278423546.Spec : Prop :=
  ∀ n, P8300385874278423546.a n = A018006 n

end A018006

/-! ## A018006.P21606808304040849

`A018008(n)-A204418(n+1)`
-/

namespace A018006.P21606808304040849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018008 n - A204418 (n + 1)

end

end A018006.P21606808304040849

namespace A018006

/-- `A018008(n)-A204418(n+1)` -/
def P21606808304040849.Spec : Prop :=
  ∀ n, P21606808304040849.a n = A018006 n

end A018006

/-! ## A018006.P14595894061239468392

`A092220(2*n)+A018008(n)`
-/

namespace A018006.P14595894061239468392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 (2 * n) + A018008 n

end

end A018006.P14595894061239468392

namespace A018006

/-- `A092220(2*n)+A018008(n)` -/
def P14595894061239468392.Spec : Prop :=
  ∀ n, P14595894061239468392.a n = A018006 n

end A018006

/-! ## A018006.P13104113900391258696

`A018008(n)-Δ[A002264(2*n)]`
-/

namespace A018006.P13104113900391258696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018008 n - (f1 (n + 1) - f1 n)

end

end A018006.P13104113900391258696

namespace A018006

/-- `A018008(n)-Δ[A002264(2*n)]` -/
def P13104113900391258696.Spec : Prop :=
  ∀ n, P13104113900391258696.a n = A018006 n

end A018006

/-! ## A018006.P11734317364271619255

`A018008(n)-A000035(A002487(n))`
-/

namespace A018006.P11734317364271619255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018008 n - A000035 (A002487 n).toNat

end

end A018006.P11734317364271619255

namespace A018006

/-- `A018008(n)-A000035(A002487(n))` -/
def P11734317364271619255.Spec : Prop :=
  ∀ n, P11734317364271619255.a n = A018006 n

end A018006

/-! ## A018006.P9949256428832505322

`A018008(n)+A018009(n)-A018011(n)`
-/

namespace A018006.P9949256428832505322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018008 n + (A018009 n - A018011 n)

end

end A018006.P9949256428832505322

namespace A018006

/-- `A018008(n)+A018009(n)-A018011(n)` -/
def P9949256428832505322.Spec : Prop :=
  ∀ n, P9949256428832505322.a n = A018006 n

end A018006

/-!
# A018007: Powers of cube root of 11 rounded to nearest integer.

The programs for A018007, the canonical program `A018007.P16703951481824979667` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018007 has offset 0).

The definition of A018007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018007.P16703951481824979667

`round(11^(n/3))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018007

/-- `round(11^(n/3))` -/
def P16703951481824979667.Spec : Prop :=
  ∀ n, P16703951481824979667.a n = A018007 n

theorem P16703951481824979667.correct : P16703951481824979667.Spec := by
  intro n
  simp only [A018007]

end A018007

/-! ## A018007.P6349207247936749749

`gcd(round(root(11, 3)^n), A000038(n))`
-/

namespace A018007.P6349207247936749749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (((11 : ℝ) ^ (1 / (3 : ℝ))) ^ n)) (A000038 n)

end

end A018007.P6349207247936749749

namespace A018007

/-- `gcd(round(root(11, 3)^n), A000038(n))` -/
def P6349207247936749749.Spec : Prop :=
  ∀ n, (P6349207247936749749.a n : ℤ) = A018007 n

end A018007

/-! ## A018007.P528259686141062423

`round(root(11, 3)^n)%A164549(n+1)`
-/

namespace A018007.P528259686141062423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((11 : ℝ) ^ (1 / (3 : ℝ))) ^ n)) (A164549 (n + 1))

end

end A018007.P528259686141062423

namespace A018007

/-- `round(root(11, 3)^n)%A164549(n+1)` -/
def P528259686141062423.Spec : Prop :=
  ∀ n, P528259686141062423.a n = A018007 n

end A018007

/-! ## A018007.P13909907532566612422

`ceil(A018008(2*n)/A018008(n))`
-/

namespace A018007.P13909907532566612422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018008 (2 * n) : ℚ) / (A018008 n : ℚ)⌉

end

end A018007.P13909907532566612422

namespace A018007

/-- `ceil(A018008(2*n)/A018008(n))` -/
def P13909907532566612422.Spec : Prop :=
  ∀ n, P13909907532566612422.a n = A018007 n

end A018007

/-! ## A018007.P15513037073395779740

`A216230(A059455(n+1))+round(root(11, 3)^n)`
-/

namespace A018007.P15513037073395779740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216230 (A059455 (n + 1)).toNat + SequenceMachineLib.roundAway (((11 : ℝ) ^ (1 / (3 : ℝ))) ^ n)

end

end A018007.P15513037073395779740

namespace A018007

/-- `A216230(A059455(n+1))+round(root(11, 3)^n)` -/
def P15513037073395779740.Spec : Prop :=
  ∀ n, P15513037073395779740.a n = A018007 n

end A018007

/-!
# A018008: Powers of cube root of 11 rounded up.

The programs for A018008, the canonical program `A018008.P15591260217316423838` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018008 has offset 0).

The definition of A018008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018008.P8939580883141185595

`ceil(11^(n/3))`
-/

namespace A018008.P8939580883141185595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(11 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉

end

end A018008.P8939580883141185595

namespace A018008

/-- `ceil(11^(n/3))` -/
def P8939580883141185595.Spec : Prop :=
  ∀ n, P8939580883141185595.a n = A018008 n

end A018008

/-! ## A018008.P15591260217316423838

`A018006(n)+n²%3`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018008

/-- `A018006(n)+n²%3` -/
def P15591260217316423838.Spec : Prop :=
  ∀ n, P15591260217316423838.a n = A018008 n

theorem P15591260217316423838.correct : P15591260217316423838.Spec := by
  intro n
  simp only [A018008]

end A018008

/-! ## A018008.P9610050724850153153

`A018006(n)+A011655(n)`
-/

namespace A018008.P9610050724850153153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018006 n + A011655 n

end

end A018008.P9610050724850153153

namespace A018008

/-- `A018006(n)+A011655(n)` -/
def P9610050724850153153.Spec : Prop :=
  ∀ n, P9610050724850153153.a n = A018008 n

end A018008

/-! ## A018008.P7360874547440238620

`A018006(n)+abs(A092220(n))`
-/

namespace A018008.P7360874547440238620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018006 n + |A092220 n|

end

end A018008.P7360874547440238620

namespace A018008

/-- `A018006(n)+abs(A092220(n))` -/
def P7360874547440238620.Spec : Prop :=
  ∀ n, P7360874547440238620.a n = A018008 n

end A018008

/-! ## A018008.P4042415060132684212

`A018006(n)+Δ[A004523(n)]`
-/

namespace A018008.P4042415060132684212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018006 n + (f1 (n + 1) - f1 n)

end

end A018008.P4042415060132684212

namespace A018008

/-- `A018006(n)+Δ[A004523(n)]` -/
def P4042415060132684212.Spec : Prop :=
  ∀ n, P4042415060132684212.a n = A018008 n

end A018008

/-! ## A018008.P10325953223367704410

`A018006(n)-A092220(2*n)`
-/

namespace A018008.P10325953223367704410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018006 n - A092220 (2 * n)

end

end A018008.P10325953223367704410

namespace A018008

/-- `A018006(n)-A092220(2*n)` -/
def P10325953223367704410.Spec : Prop :=
  ∀ n, P10325953223367704410.a n = A018008 n

end A018008

/-! ## A018008.P9469919482886455171

`A018006(n)+char[A038502(n+1)]`
-/

namespace A018008.P9469919482886455171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018006 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018008.P9469919482886455171

namespace A018008

/-- `A018006(n)+char[A038502(n+1)]` -/
def P9469919482886455171.Spec : Prop :=
  ∀ n, P9469919482886455171.a n = A018008 n

end A018008

/-!
# A018009: Powers of cube root of 12 rounded down.

The programs for A018009, the canonical program `A018009.P2824070679242072313` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018009 has offset 0).

The definition of A018009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018009.P6862554585593671505

`A018011(n)-A011655(n)`
-/

namespace A018009.P6862554585593671505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018011 n - A011655 n

end

end A018009.P6862554585593671505

namespace A018009

/-- `A018011(n)-A011655(n)` -/
def P6862554585593671505.Spec : Prop :=
  ∀ n, P6862554585593671505.a n = A018009 n

end A018009

/-! ## A018009.P16890107681074739581

`A018011(n)-Δ[A004523(n)]`
-/

namespace A018009.P16890107681074739581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018011 n - (f1 (n + 1) - f1 n)

end

end A018009.P16890107681074739581

namespace A018009

/-- `A018011(n)-Δ[A004523(n)]` -/
def P16890107681074739581.Spec : Prop :=
  ∀ n, P16890107681074739581.a n = A018009 n

end A018009

/-! ## A018009.P12042855430765496545

`A018011(n)-char[A166517(n)]`
-/

namespace A018009.P12042855430765496545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018011 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018009.P12042855430765496545

namespace A018009

/-- `A018011(n)-char[A166517(n)]` -/
def P12042855430765496545.Spec : Prop :=
  ∀ n, P12042855430765496545.a n = A018009 n

end A018009

/-! ## A018009.P12745071802438900170

`A018011(n)-A000035(A002487(n))`
-/

namespace A018009.P12745071802438900170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018011 n - A000035 (A002487 n).toNat

end

end A018009.P12745071802438900170

namespace A018009

/-- `A018011(n)-A000035(A002487(n))` -/
def P12745071802438900170.Spec : Prop :=
  ∀ n, P12745071802438900170.a n = A018009 n

end A018009

/-! ## A018009.P9569179299753192777

`A017979(n)+A018011(n)-A017981(n)`
-/

namespace A018009.P9569179299753192777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 n + (A018011 n - A017981 n)

end

end A018009.P9569179299753192777

namespace A018009

/-- `A017979(n)+A018011(n)-A017981(n)` -/
def P9569179299753192777.Spec : Prop :=
  ∀ n, P9569179299753192777.a n = A018009 n

end A018009

/-! ## A018009.P2824070679242072313

`floor(sqrt(A018010(2*n)))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018009

/-- `floor(sqrt(A018010(2*n)))` -/
def P2824070679242072313.Spec : Prop :=
  ∀ n, P2824070679242072313.a n = A018009 n

theorem P2824070679242072313.correct : P2824070679242072313.Spec := by
  intro n
  simp only [A018009]

end A018009

/-! ## A018009.P13581468924456546372

`floor(sqrt(A018011(2*n)))`
-/

namespace A018009.P13581468924456546372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018011 (2 * n))

end

end A018009.P13581468924456546372

namespace A018009

/-- `floor(sqrt(A018011(2*n)))` -/
def P13581468924456546372.Spec : Prop :=
  ∀ n, P13581468924456546372.a n = A018009 n

end A018009

/-! ## A018009.P729094728348255459

`floor(A018010(2*n)/A018010(n))`
-/

namespace A018009.P729094728348255459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018010 (2 * n) : ℚ) / (A018010 n : ℚ)⌋

end

end A018009.P729094728348255459

namespace A018009

/-- `floor(A018010(2*n)/A018010(n))` -/
def P729094728348255459.Spec : Prop :=
  ∀ n, P729094728348255459.a n = A018009 n

end A018009

/-!
# A018010: Powers of cube root of 12 rounded to nearest integer.

The programs for A018010, the canonical program `A018010.P3177161722198752500` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018010 has offset 0).

The definition of A018010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018010.P3177161722198752500

`round(12^(n/3))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018010

/-- `round(12^(n/3))` -/
def P3177161722198752500.Spec : Prop :=
  ∀ n, P3177161722198752500.a n = A018010 n

theorem P3177161722198752500.correct : P3177161722198752500.Spec := by
  intro n
  simp only [A018010]

end A018010

/-! ## A018010.P9049906199997588374

`round(sqrt(A018009(2*n)))%Δ[3^n]`
-/

namespace A018010.P9049906199997588374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A018009 (2 * n) : ℝ))) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A018010.P9049906199997588374

namespace A018010

/-- `round(sqrt(A018009(2*n)))%Δ[3^n]` -/
def P9049906199997588374.Spec : Prop :=
  ∀ n, P9049906199997588374.a n = A018010 n

end A018010

/-! ## A018010.P11965455637277839001

`floor(A018009(2*n)/A018009(n))`
-/

namespace A018010.P11965455637277839001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018009 (2 * n) : ℚ) / (A018009 n : ℚ)⌋

end

end A018010.P11965455637277839001

namespace A018010

/-- `floor(A018009(2*n)/A018009(n))` -/
def P11965455637277839001.Spec : Prop :=
  ∀ n, P11965455637277839001.a n = A018010 n

end A018010

/-! ## A018010.P12000439186651963110

`ceil(A018011(2*n)/A018011(n))`
-/

namespace A018010.P12000439186651963110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018011 (2 * n) : ℚ) / (A018011 n : ℚ)⌉

end

end A018010.P12000439186651963110

namespace A018010

/-- `ceil(A018011(2*n)/A018011(n))` -/
def P12000439186651963110.Spec : Prop :=
  ∀ n, P12000439186651963110.a n = A018010 n

end A018010

/-! ## A018010.P18231083448771993448

`A033999(n)²*round(sqrt(A018009(2*n)))`
-/

namespace A018010.P18231083448771993448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * SequenceMachineLib.roundAway (Real.sqrt (A018009 (2 * n) : ℝ))

end

end A018010.P18231083448771993448

namespace A018010

/-- `A033999(n)²*round(sqrt(A018009(2*n)))` -/
def P18231083448771993448.Spec : Prop :=
  ∀ n, P18231083448771993448.a n = A018010 n

end A018010

/-! ## A018010.P14159873279287061842

`A035363(2*n+1)+round(sqrt(A018009(2*n)))`
-/

namespace A018010.P14159873279287061842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n + 1) + SequenceMachineLib.roundAway (Real.sqrt (A018009 (2 * n) : ℝ))

end

end A018010.P14159873279287061842

namespace A018010

/-- `A035363(2*n+1)+round(sqrt(A018009(2*n)))` -/
def P14159873279287061842.Spec : Prop :=
  ∀ n, P14159873279287061842.a n = A018010 n

end A018010

/-!
# A018011: Powers of cube root of 12 rounded up.

The programs for A018011, the canonical program `A018011.P15676345644571657576` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018011 has offset 0).

The definition of A018011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018011.P15676345644571657576

`A018009(n)+A011655(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018011

/-- `A018009(n)+A011655(n)` -/
def P15676345644571657576.Spec : Prop :=
  ∀ n, P15676345644571657576.a n = A018011 n

theorem P15676345644571657576.correct : P15676345644571657576.Spec := by
  intro n
  simp only [A018011]

end A018011

/-! ## A018011.P12105117931103300084

`A018009(n)+Δ[A004523(n)]`
-/

namespace A018011.P12105117931103300084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018009 n + (f1 (n + 1) - f1 n)

end

end A018011.P12105117931103300084

namespace A018011

/-- `A018009(n)+Δ[A004523(n)]` -/
def P12105117931103300084.Spec : Prop :=
  ∀ n, P12105117931103300084.a n = A018011 n

end A018011

/-! ## A018011.P14782909269794246317

`A018009(n)+char[A166517(n)]`
-/

namespace A018011.P14782909269794246317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018009 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018011.P14782909269794246317

namespace A018011

/-- `A018009(n)+char[A166517(n)]` -/
def P14782909269794246317.Spec : Prop :=
  ∀ n, P14782909269794246317.a n = A018011 n

end A018011

/-! ## A018011.P6952861068926670376

`A097325(2*n)+A018009(n)`
-/

namespace A018011.P6952861068926670376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (2 * n) + A018009 n

end

end A018011.P6952861068926670376

namespace A018011

/-- `A097325(2*n)+A018009(n)` -/
def P6952861068926670376.Spec : Prop :=
  ∀ n, P6952861068926670376.a n = A018011 n

end A018011

/-! ## A018011.P9376870953818151152

`A018009(n)+and(1, A000045(n))`
-/

namespace A018011.P9376870953818151152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018009 n + Int.land 1 (A000045 n)

end

end A018011.P9376870953818151152

namespace A018011

/-- `A018009(n)+and(1, A000045(n))` -/
def P9376870953818151152.Spec : Prop :=
  ∀ n, P9376870953818151152.a n = A018011 n

end A018011

/-! ## A018011.P15941087379832507933

`A018009(n)+char[A001651(n+1)]`
-/

namespace A018011.P15941087379832507933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018009 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018011.P15941087379832507933

namespace A018011

/-- `A018009(n)+char[A001651(n+1)]` -/
def P15941087379832507933.Spec : Prop :=
  ∀ n, P15941087379832507933.a n = A018011 n

end A018011

/-! ## A018011.P9485530477906134149

`A018009(n)+A000035(A002487(n))`
-/

namespace A018011.P9485530477906134149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018009 n + A000035 (A002487 n).toNat

end

end A018011.P9485530477906134149

namespace A018011

/-- `A018009(n)+A000035(A002487(n))` -/
def P9485530477906134149.Spec : Prop :=
  ∀ n, P9485530477906134149.a n = A018011 n

end A018011

/-! ## A018011.P12233904486270343311

`A018009(n)+A000035(A004396(n))`
-/

namespace A018011.P12233904486270343311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018009 n + A000035 (A004396 n).toNat

end

end A018011.P12233904486270343311

namespace A018011

/-- `A018009(n)+A000035(A004396(n))` -/
def P12233904486270343311.Spec : Prop :=
  ∀ n, P12233904486270343311.a n = A018011 n

end A018011

/-! ## A018011.P4138253857228966611

`A018009(n)+A000035(A092942(n))`
-/

namespace A018011.P4138253857228966611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018009 n + A000035 (A092942 n).toNat

end

end A018011.P4138253857228966611

namespace A018011

/-- `A018009(n)+A000035(A092942(n))` -/
def P4138253857228966611.Spec : Prop :=
  ∀ n, P4138253857228966611.a n = A018011 n

end A018011

/-! ## A018011.P1492399393196912082

`A017981(n)+A018009(n)-A017979(n)`
-/

namespace A018011.P1492399393196912082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 n + (A018009 n - A017979 n)

end

end A018011.P1492399393196912082

namespace A018011

/-- `A017981(n)+A018009(n)-A017979(n)` -/
def P1492399393196912082.Spec : Prop :=
  ∀ n, P1492399393196912082.a n = A018011 n

end A018011

/-! ## A018011.P11474649189047610569

`ceil(sqrt(A018009(2*n)))`
-/

namespace A018011.P11474649189047610569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A018009 (2 * n) : ℝ)⌉

end

end A018011.P11474649189047610569

namespace A018011

/-- `ceil(sqrt(A018009(2*n)))` -/
def P11474649189047610569.Spec : Prop :=
  ∀ n, P11474649189047610569.a n = A018011 n

end A018011

/-! ## A018011.P12146111602202801482

`ceil(sqrt(A018010(2*n)))`
-/

namespace A018011.P12146111602202801482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A018010 (2 * n) : ℝ)⌉

end

end A018011.P12146111602202801482

namespace A018011

/-- `ceil(sqrt(A018010(2*n)))` -/
def P12146111602202801482.Spec : Prop :=
  ∀ n, P12146111602202801482.a n = A018011 n

end A018011

/-! ## A018011.P8309492702530508870

`ceil(A018010(2*n)/A018010(n))`
-/

namespace A018011.P8309492702530508870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018010 (2 * n) : ℚ) / (A018010 n : ℚ)⌉

end

end A018011.P8309492702530508870

namespace A018011

/-- `ceil(A018010(2*n)/A018010(n))` -/
def P8309492702530508870.Spec : Prop :=
  ∀ n, P8309492702530508870.a n = A018011 n

end A018011

/-!
# A018012: Powers of cube root of 13 rounded down.

The programs for A018012, the canonical program `A018012.P9595471481189244769` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018012 has offset 0).

The definition of A018012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018012.P6983092950639508684

`A018014(n)-A011655(n)`
-/

namespace A018012.P6983092950639508684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018014 n - A011655 n

end

end A018012.P6983092950639508684

namespace A018012

/-- `A018014(n)-A011655(n)` -/
def P6983092950639508684.Spec : Prop :=
  ∀ n, P6983092950639508684.a n = A018012 n

end A018012

/-! ## A018012.P4804512882786764326

`A018014(n)-abs(A102283(n))`
-/

namespace A018012.P4804512882786764326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018014 n - |A102283 n|

end

end A018012.P4804512882786764326

namespace A018012

/-- `A018014(n)-abs(A102283(n))` -/
def P4804512882786764326.Spec : Prop :=
  ∀ n, P4804512882786764326.a n = A018012 n

end A018012

/-! ## A018012.P8064314449242969117

`A018014(n)-Δ[A004523(n)]`
-/

namespace A018012.P8064314449242969117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018014 n - (f1 (n + 1) - f1 n)

end

end A018012.P8064314449242969117

namespace A018012

/-- `A018014(n)-Δ[A004523(n)]` -/
def P8064314449242969117.Spec : Prop :=
  ∀ n, P8064314449242969117.a n = A018012 n

end A018012

/-! ## A018012.P18434556832000878812

`A018014(n)-char[A166517(n)]`
-/

namespace A018012.P18434556832000878812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018014 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018012.P18434556832000878812

namespace A018012

/-- `A018014(n)-char[A166517(n)]` -/
def P18434556832000878812.Spec : Prop :=
  ∀ n, P18434556832000878812.a n = A018012 n

end A018012

/-! ## A018012.P12402200527393232265

`A018014(n)-A097325(2*n)`
-/

namespace A018012.P12402200527393232265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018014 n - A097325 (2 * n)

end

end A018012.P12402200527393232265

namespace A018012

/-- `A018014(n)-A097325(2*n)` -/
def P12402200527393232265.Spec : Prop :=
  ∀ n, P12402200527393232265.a n = A018012 n

end A018012

/-! ## A018012.P17050277283714678648

`A018014(n)-char[A001651(n+1)]`
-/

namespace A018012.P17050277283714678648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018014 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018012.P17050277283714678648

namespace A018012

/-- `A018014(n)-char[A001651(n+1)]` -/
def P17050277283714678648.Spec : Prop :=
  ∀ n, P17050277283714678648.a n = A018012 n

end A018012

/-! ## A018012.P13122426057004758251

`A018014(n)-A000035(A002487(n))`
-/

namespace A018012.P13122426057004758251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018014 n - A000035 (A002487 n).toNat

end

end A018012.P13122426057004758251

namespace A018012

/-- `A018014(n)-A000035(A002487(n))` -/
def P13122426057004758251.Spec : Prop :=
  ∀ n, P13122426057004758251.a n = A018012 n

end A018012

/-! ## A018012.P16726239758069209962

`A018014(n)-A000035(A004396(n))`
-/

namespace A018012.P16726239758069209962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018014 n - A000035 (A004396 n).toNat

end

end A018012.P16726239758069209962

namespace A018012

/-- `A018014(n)-A000035(A004396(n))` -/
def P16726239758069209962.Spec : Prop :=
  ∀ n, P16726239758069209962.a n = A018012 n

end A018012

/-! ## A018012.P14215300486711049028

`A018014(n)-A000035(A092942(n))`
-/

namespace A018012.P14215300486711049028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018014 n - A000035 (A092942 n).toNat

end

end A018012.P14215300486711049028

namespace A018012

/-- `A018014(n)-A000035(A092942(n))` -/
def P14215300486711049028.Spec : Prop :=
  ∀ n, P14215300486711049028.a n = A018012 n

end A018012

/-! ## A018012.P3048955250922730950

`A018014(n)-A000035(A066481(n+3))`
-/

namespace A018012.P3048955250922730950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018014 n - A000035 (A066481 (n + 3)).toNat

end

end A018012.P3048955250922730950

namespace A018012

/-- `A018014(n)-A000035(A066481(n+3))` -/
def P3048955250922730950.Spec : Prop :=
  ∀ n, P3048955250922730950.a n = A018012 n

end A018012

/-! ## A018012.P9595471481189244769

`floor(sqrt(A018013(2*n)))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018012

/-- `floor(sqrt(A018013(2*n)))` -/
def P9595471481189244769.Spec : Prop :=
  ∀ n, P9595471481189244769.a n = A018012 n

theorem P9595471481189244769.correct : P9595471481189244769.Spec := by
  intro n
  simp only [A018012]

end A018012

/-! ## A018012.P11746627083954470007

`floor(sqrt(A018014(2*n)))`
-/

namespace A018012.P11746627083954470007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018014 (2 * n))

end

end A018012.P11746627083954470007

namespace A018012

/-- `floor(sqrt(A018014(2*n)))` -/
def P11746627083954470007.Spec : Prop :=
  ∀ n, P11746627083954470007.a n = A018012 n

end A018012

/-! ## A018012.P3794707140624015656

`A018014(n)-A102283(n²)`
-/

namespace A018012.P3794707140624015656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018014 n - A102283 (n ^ 2)

end

end A018012.P3794707140624015656

namespace A018012

/-- `A018014(n)-A102283(n²)` -/
def P3794707140624015656.Spec : Prop :=
  ∀ n, P3794707140624015656.a n = A018012 n

end A018012

/-!
# A018013: Powers of cube root of 13 rounded to nearest integer.

The programs for A018013, the canonical program `A018013.P10968953885026456035` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018013 has offset 0).

The definition of A018013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018013.P10968953885026456035

`round(13^(n/3))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018013

/-- `round(13^(n/3))` -/
def P10968953885026456035.Spec : Prop :=
  ∀ n, P10968953885026456035.a n = A018013 n

theorem P10968953885026456035.correct : P10968953885026456035.Spec := by
  intro n
  simp only [A018013]

end A018013

/-! ## A018013.P16315559632692333329

`floor(A018012(2*n)/A018012(n))`
-/

namespace A018013.P16315559632692333329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018012 (2 * n) : ℚ) / (A018012 n : ℚ)⌋

end

end A018013.P16315559632692333329

namespace A018013

/-- `floor(A018012(2*n)/A018012(n))` -/
def P16315559632692333329.Spec : Prop :=
  ∀ n, P16315559632692333329.a n = A018013 n

end A018013

/-! ## A018013.P16152725483815603523

`ceil(A018014(2*n)/A018014(n))`
-/

namespace A018013.P16152725483815603523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018014 (2 * n) : ℚ) / (A018014 n : ℚ)⌉

end

end A018013.P16152725483815603523

namespace A018013

/-- `ceil(A018014(2*n)/A018014(n))` -/
def P16152725483815603523.Spec : Prop :=
  ∀ n, P16152725483815603523.a n = A018013 n

end A018013

/-! ## A018013.P357669625850610249

`A000007(n+1)+round(sqrt(A018014(2*n)))`
-/

namespace A018013.P357669625850610249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + SequenceMachineLib.roundAway (Real.sqrt (A018014 (2 * n) : ℝ))

end

end A018013.P357669625850610249

namespace A018013

/-- `A000007(n+1)+round(sqrt(A018014(2*n)))` -/
def P357669625850610249.Spec : Prop :=
  ∀ n, P357669625850610249.a n = A018013 n

end A018013

/-! ## A018013.P11849849198086304566

`round(sqrt(A018014(2*n)))*A014963(6*(n+1))`
-/

namespace A018013.P11849849198086304566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018014 (2 * n) : ℝ)) * A014963 (6 * (n + 1))

end

end A018013.P11849849198086304566

namespace A018013

/-- `round(sqrt(A018014(2*n)))*A014963(6*(n+1))` -/
def P11849849198086304566.Spec : Prop :=
  ∀ n, P11849849198086304566.a n = A018013 n

end A018013

/-!
# A018014: Powers of cube root of 13 rounded up.

The programs for A018014, the canonical program `A018014.P17107100277226627898` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018014 has offset 0).

The definition of A018014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018014.P17107100277226627898

`A018012(n)+n²%3`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018014

/-- `A018012(n)+n²%3` -/
def P17107100277226627898.Spec : Prop :=
  ∀ n, P17107100277226627898.a n = A018014 n

theorem P17107100277226627898.correct : P17107100277226627898.Spec := by
  intro n
  simp only [A018014]

end A018014

/-! ## A018014.P15421035665838512320

`A018012(n)+A011655(n)`
-/

namespace A018014.P15421035665838512320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018012 n + A011655 n

end

end A018014.P15421035665838512320

namespace A018014

/-- `A018012(n)+A011655(n)` -/
def P15421035665838512320.Spec : Prop :=
  ∀ n, P15421035665838512320.a n = A018014 n

end A018014

/-! ## A018014.P7424677866696015434

`A018012(n)+Δ[A004523(n)]`
-/

namespace A018014.P7424677866696015434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018012 n + (f1 (n + 1) - f1 n)

end

end A018014.P7424677866696015434

namespace A018014

/-- `A018012(n)+Δ[A004523(n)]` -/
def P7424677866696015434.Spec : Prop :=
  ∀ n, P7424677866696015434.a n = A018014 n

end A018014

/-! ## A018014.P11865211266737341414

`A018012(n)+char[A166517(n)]`
-/

namespace A018014.P11865211266737341414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018012 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018014.P11865211266737341414

namespace A018014

/-- `A018012(n)+char[A166517(n)]` -/
def P11865211266737341414.Spec : Prop :=
  ∀ n, P11865211266737341414.a n = A018014 n

end A018014

/-! ## A018014.P12170313178345728597

`A018012(n)+A000035(A002487(n))`
-/

namespace A018014.P12170313178345728597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018012 n + A000035 (A002487 n).toNat

end

end A018014.P12170313178345728597

namespace A018014

/-- `A018012(n)+A000035(A002487(n))` -/
def P12170313178345728597.Spec : Prop :=
  ∀ n, P12170313178345728597.a n = A018014 n

end A018014

/-! ## A018014.P5616598335035592205

`A018012(n)+A000035(A004396(n))`
-/

namespace A018014.P5616598335035592205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018012 n + A000035 (A004396 n).toNat

end

end A018014.P5616598335035592205

namespace A018014

/-- `A018012(n)+A000035(A004396(n))` -/
def P5616598335035592205.Spec : Prop :=
  ∀ n, P5616598335035592205.a n = A018014 n

end A018014

/-! ## A018014.P6990481758640347041

`A018012(n)+A000035(A092942(n))`
-/

namespace A018014.P6990481758640347041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018012 n + A000035 (A092942 n).toNat

end

end A018014.P6990481758640347041

namespace A018014

/-- `A018012(n)+A000035(A092942(n))` -/
def P6990481758640347041.Spec : Prop :=
  ∀ n, P6990481758640347041.a n = A018014 n

end A018014

/-! ## A018014.P1620100204578177221

`A017981(n)+A018012(n)-A017979(n)`
-/

namespace A018014.P1620100204578177221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 n + (A018012 n - A017979 n)

end

end A018014.P1620100204578177221

namespace A018014

/-- `A017981(n)+A018012(n)-A017979(n)` -/
def P1620100204578177221.Spec : Prop :=
  ∀ n, P1620100204578177221.a n = A018014 n

end A018014

/-! ## A018014.P14647854107717960903

`ceil(sqrt(A018012(2*n)))`
-/

namespace A018014.P14647854107717960903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A018012 (2 * n) : ℝ)⌉

end

end A018014.P14647854107717960903

namespace A018014

/-- `ceil(sqrt(A018012(2*n)))` -/
def P14647854107717960903.Spec : Prop :=
  ∀ n, P14647854107717960903.a n = A018014 n

end A018014

/-! ## A018014.P1348567194135674963

`ceil(sqrt(A018013(2*n)))`
-/

namespace A018014.P1348567194135674963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A018013 (2 * n) : ℝ)⌉

end

end A018014.P1348567194135674963

namespace A018014

/-- `ceil(sqrt(A018013(2*n)))` -/
def P1348567194135674963.Spec : Prop :=
  ∀ n, P1348567194135674963.a n = A018014 n

end A018014

/-! ## A018014.P17965173019950679396

`ceil(A018013(2*n)/A018013(n))`
-/

namespace A018014.P17965173019950679396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018013 (2 * n) : ℚ) / (A018013 n : ℚ)⌉

end

end A018014.P17965173019950679396

namespace A018014

/-- `ceil(A018013(2*n)/A018013(n))` -/
def P17965173019950679396.Spec : Prop :=
  ∀ n, P17965173019950679396.a n = A018014 n

end A018014

/-!
# A018015: Powers of cube root of 14 rounded down.

The programs for A018015, the canonical program `A018015.P13557129458488737064` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018015 has offset 0).

The definition of A018015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018015.P13557129458488737064

`floor(14^(n/3))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018015

/-- `floor(14^(n/3))` -/
def P13557129458488737064.Spec : Prop :=
  ∀ n, P13557129458488737064.a n = A018015 n

theorem P13557129458488737064.correct : P13557129458488737064.Spec := by
  intro n
  simp only [A018015]

end A018015

/-! ## A018015.P6798787924274942455

`A018017(n)-n²%3`
-/

namespace A018015.P6798787924274942455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018017 n - ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A018015.P6798787924274942455

namespace A018015

/-- `A018017(n)-n²%3` -/
def P6798787924274942455.Spec : Prop :=
  ∀ n, P6798787924274942455.a n = A018015 n

end A018015

/-! ## A018015.P16473525750275406256

`A018017(n)-A011655(n)`
-/

namespace A018015.P16473525750275406256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018017 n - A011655 n

end

end A018015.P16473525750275406256

namespace A018015

/-- `A018017(n)-A011655(n)` -/
def P16473525750275406256.Spec : Prop :=
  ∀ n, P16473525750275406256.a n = A018015 n

end A018015

/-! ## A018015.P9709811262730284369

`A018017(n)-Δ[A004523(n)]`
-/

namespace A018015.P9709811262730284369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018017 n - (f1 (n + 1) - f1 n)

end

end A018015.P9709811262730284369

namespace A018015

/-- `A018017(n)-Δ[A004523(n)]` -/
def P9709811262730284369.Spec : Prop :=
  ∀ n, P9709811262730284369.a n = A018015 n

end A018015

/-! ## A018015.P16220325920454049223

`A018017(n)-char[A166517(n)]`
-/

namespace A018015.P16220325920454049223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018017 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018015.P16220325920454049223

namespace A018015

/-- `A018017(n)-char[A166517(n)]` -/
def P16220325920454049223.Spec : Prop :=
  ∀ n, P16220325920454049223.a n = A018015 n

end A018015

/-! ## A018015.P2402780603207965733

`A018017(n)-A097325(2*n)`
-/

namespace A018015.P2402780603207965733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018017 n - A097325 (2 * n)

end

end A018015.P2402780603207965733

namespace A018015

/-- `A018017(n)-A097325(2*n)` -/
def P2402780603207965733.Spec : Prop :=
  ∀ n, P2402780603207965733.a n = A018015 n

end A018015

/-! ## A018015.P5126885178949844200

`A018017(n)-A000035(A002487(n))`
-/

namespace A018015.P5126885178949844200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018017 n - A000035 (A002487 n).toNat

end

end A018015.P5126885178949844200

namespace A018015

/-- `A018017(n)-A000035(A002487(n))` -/
def P5126885178949844200.Spec : Prop :=
  ∀ n, P5126885178949844200.a n = A018015 n

end A018015

/-! ## A018015.P4864893323278217701

`A018017(n)-A000035(A004396(n))`
-/

namespace A018015.P4864893323278217701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018017 n - A000035 (A004396 n).toNat

end

end A018015.P4864893323278217701

namespace A018015

/-- `A018017(n)-A000035(A004396(n))` -/
def P4864893323278217701.Spec : Prop :=
  ∀ n, P4864893323278217701.a n = A018015 n

end A018015

/-! ## A018015.P8087054558646053186

`A018017(n)-A000035(A092942(n))`
-/

namespace A018015.P8087054558646053186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018017 n - A000035 (A092942 n).toNat

end

end A018015.P8087054558646053186

namespace A018015

/-- `A018017(n)-A000035(A092942(n))` -/
def P8087054558646053186.Spec : Prop :=
  ∀ n, P8087054558646053186.a n = A018015 n

end A018015

/-! ## A018015.P17407020714031149720

`A018017(n)+A018024(n)-A018026(n)`
-/

namespace A018015.P17407020714031149720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018017 n + (A018024 n - A018026 n)

end

end A018015.P17407020714031149720

namespace A018015

/-- `A018017(n)+A018024(n)-A018026(n)` -/
def P17407020714031149720.Spec : Prop :=
  ∀ n, P17407020714031149720.a n = A018015 n

end A018015

/-!
# A018016: Powers of cube root of 14 rounded to nearest integer.

The programs for A018016, the canonical program `A018016.P16812204082695019236` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018016 has offset 0).

The definition of A018016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018016.P16812204082695019236

`round(14^(n/3))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018016

/-- `round(14^(n/3))` -/
def P16812204082695019236.Spec : Prop :=
  ∀ n, P16812204082695019236.a n = A018016 n

theorem P16812204082695019236.correct : P16812204082695019236.Spec := by
  intro n
  simp only [A018016]

end A018016

/-! ## A018016.P5591218668560324097

`floor(A018015(2*n)/A018015(n))`
-/

namespace A018016.P5591218668560324097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018015 (2 * n) : ℚ) / (A018015 n : ℚ)⌋

end

end A018016.P5591218668560324097

namespace A018016

/-- `floor(A018015(2*n)/A018015(n))` -/
def P5591218668560324097.Spec : Prop :=
  ∀ n, P5591218668560324097.a n = A018016 n

end A018016

/-! ## A018016.P6238634916337859149

`ceil(A018017(2*n)/A018017(n))`
-/

namespace A018016.P6238634916337859149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018017 (2 * n) : ℚ) / (A018017 n : ℚ)⌉

end

end A018016.P6238634916337859149

namespace A018016

/-- `ceil(A018017(2*n)/A018017(n))` -/
def P6238634916337859149.Spec : Prop :=
  ∀ n, P6238634916337859149.a n = A018016 n

end A018016

/-! ## A018016.P12617273969203436319

`A018015(n)+A010051(A002478(n))`
-/

namespace A018016.P12617273969203436319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018015 n + A010051 (A002478 n).toNat

end

end A018016.P12617273969203436319

namespace A018016

/-- `A018015(n)+A010051(A002478(n))` -/
def P12617273969203436319.Spec : Prop :=
  ∀ n, P12617273969203436319.a n = A018016 n

end A018016

/-! ## A018016.P937439774422739479

`A144602(A017992(n))+A018015(n)`
-/

namespace A018016.P937439774422739479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144602 (A017992 n).toNat + A018015 n

end

end A018016.P937439774422739479

namespace A018016

/-- `A144602(A017992(n))+A018015(n)` -/
def P937439774422739479.Spec : Prop :=
  ∀ n, P937439774422739479.a n = A018016 n

end A018016

/-!
# A018017: Powers of cube root of 14 rounded up.

The programs for A018017, the canonical program `A018017.P9867344629284296178` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018017 has offset 0).

The definition of A018017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018017.P6737578767758619006

`ceil(14^(n/3))`
-/

namespace A018017.P6737578767758619006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(14 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉

end

end A018017.P6737578767758619006

namespace A018017

/-- `ceil(14^(n/3))` -/
def P6737578767758619006.Spec : Prop :=
  ∀ n, P6737578767758619006.a n = A018017 n

end A018017

/-! ## A018017.P9867344629284296178

`A018015(n)+n²%3`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018017

/-- `A018015(n)+n²%3` -/
def P9867344629284296178.Spec : Prop :=
  ∀ n, P9867344629284296178.a n = A018017 n

theorem P9867344629284296178.correct : P9867344629284296178.Spec := by
  intro n
  simp only [A018017]

end A018017

/-! ## A018017.P121197558310786525

`A018015(n)+A011655(n)`
-/

namespace A018017.P121197558310786525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018015 n + A011655 n

end

end A018017.P121197558310786525

namespace A018017

/-- `A018015(n)+A011655(n)` -/
def P121197558310786525.Spec : Prop :=
  ∀ n, P121197558310786525.a n = A018017 n

end A018017

/-! ## A018017.P4235051215416487133

`A018015(n)+Δ[A004523(n)]`
-/

namespace A018017.P4235051215416487133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018015 n + (f1 (n + 1) - f1 n)

end

end A018017.P4235051215416487133

namespace A018017

/-- `A018015(n)+Δ[A004523(n)]` -/
def P4235051215416487133.Spec : Prop :=
  ∀ n, P4235051215416487133.a n = A018017 n

end A018017

/-! ## A018017.P5473117939613963242

`A018015(n)+char[A166517(n)]`
-/

namespace A018017.P5473117939613963242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018015 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018017.P5473117939613963242

namespace A018017

/-- `A018015(n)+char[A166517(n)]` -/
def P5473117939613963242.Spec : Prop :=
  ∀ n, P5473117939613963242.a n = A018017 n

end A018017

/-! ## A018017.P15528248036916295834

`A097325(2*n)+A018015(n)`
-/

namespace A018017.P15528248036916295834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (2 * n) + A018015 n

end

end A018017.P15528248036916295834

namespace A018017

/-- `A097325(2*n)+A018015(n)` -/
def P15528248036916295834.Spec : Prop :=
  ∀ n, P15528248036916295834.a n = A018017 n

end A018017

/-! ## A018017.P1910741018498841321

`A018015(n)+A000035(A002487(n))`
-/

namespace A018017.P1910741018498841321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018015 n + A000035 (A002487 n).toNat

end

end A018017.P1910741018498841321

namespace A018017

/-- `A018015(n)+A000035(A002487(n))` -/
def P1910741018498841321.Spec : Prop :=
  ∀ n, P1910741018498841321.a n = A018017 n

end A018017

/-! ## A018017.P16165031160962265378

`A018015(n)+A000035(A004396(n))`
-/

namespace A018017.P16165031160962265378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018015 n + A000035 (A004396 n).toNat

end

end A018017.P16165031160962265378

namespace A018017

/-- `A018015(n)+A000035(A004396(n))` -/
def P16165031160962265378.Spec : Prop :=
  ∀ n, P16165031160962265378.a n = A018017 n

end A018017

/-! ## A018017.P8969823067336200089

`A018015(n)+A000035(A092942(n))`
-/

namespace A018017.P8969823067336200089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018015 n + A000035 (A092942 n).toNat

end

end A018017.P8969823067336200089

namespace A018017

/-- `A018015(n)+A000035(A092942(n))` -/
def P8969823067336200089.Spec : Prop :=
  ∀ n, P8969823067336200089.a n = A018017 n

end A018017

/-! ## A018017.P15816539668256896989

`A017981(n)+A018015(n)-A017979(n)`
-/

namespace A018017.P15816539668256896989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 n + (A018015 n - A017979 n)

end

end A018017.P15816539668256896989

namespace A018017

/-- `A017981(n)+A018015(n)-A017979(n)` -/
def P15816539668256896989.Spec : Prop :=
  ∀ n, P15816539668256896989.a n = A018017 n

end A018017

/-!
# A018018: Powers of cube root of 15 rounded down.

The programs for A018018, the canonical program `A018018.P6699755399368029623` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018018 has offset 0).

The definition of A018018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018018.P6699755399368029623

`floor(15^(n/3))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018018

/-- `floor(15^(n/3))` -/
def P6699755399368029623.Spec : Prop :=
  ∀ n, P6699755399368029623.a n = A018018 n

theorem P6699755399368029623.correct : P6699755399368029623.Spec := by
  intro n
  simp only [A018018]

end A018018

/-! ## A018018.P12401209431734998492

`A018020(n)-A011655(n)`
-/

namespace A018018.P12401209431734998492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018020 n - A011655 n

end

end A018018.P12401209431734998492

namespace A018018

/-- `A018020(n)-A011655(n)` -/
def P12401209431734998492.Spec : Prop :=
  ∀ n, P12401209431734998492.a n = A018018 n

end A018018

/-! ## A018018.P1694897580181259191

`A018020(n)-A128834(n)²`
-/

namespace A018018.P1694897580181259191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018020 n - A128834 n ^ 2

end

end A018018.P1694897580181259191

namespace A018018

/-- `A018020(n)-A128834(n)²` -/
def P1694897580181259191.Spec : Prop :=
  ∀ n, P1694897580181259191.a n = A018018 n

end A018018

/-! ## A018018.P5205403765567848583

`A018020(n)-Δ[A004523(n)]`
-/

namespace A018018.P5205403765567848583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018020 n - (f1 (n + 1) - f1 n)

end

end A018018.P5205403765567848583

namespace A018018

/-- `A018020(n)-Δ[A004523(n)]` -/
def P5205403765567848583.Spec : Prop :=
  ∀ n, P5205403765567848583.a n = A018018 n

end A018018

/-! ## A018018.P13008762365938042404

`A018020(n)-char[A166517(n)]`
-/

namespace A018018.P13008762365938042404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018020 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018018.P13008762365938042404

namespace A018018

/-- `A018020(n)-char[A166517(n)]` -/
def P13008762365938042404.Spec : Prop :=
  ∀ n, P13008762365938042404.a n = A018018 n

end A018018

/-! ## A018018.P989349102897941033

`A018020(n)-and(1, A000045(n))`
-/

namespace A018018.P989349102897941033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018020 n - Int.land 1 (A000045 n)

end

end A018018.P989349102897941033

namespace A018018

/-- `A018020(n)-and(1, A000045(n))` -/
def P989349102897941033.Spec : Prop :=
  ∀ n, P989349102897941033.a n = A018018 n

end A018018

/-! ## A018018.P11596663224185768680

`A018020(n)-A000035(A004396(n))`
-/

namespace A018018.P11596663224185768680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018020 n - A000035 (A004396 n).toNat

end

end A018018.P11596663224185768680

namespace A018018

/-- `A018020(n)-A000035(A004396(n))` -/
def P11596663224185768680.Spec : Prop :=
  ∀ n, P11596663224185768680.a n = A018018 n

end A018018

/-! ## A018018.P2655961858337533152

`A018020(n)-A000035(A092942(n))`
-/

namespace A018018.P2655961858337533152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018020 n - A000035 (A092942 n).toNat

end

end A018018.P2655961858337533152

namespace A018018

/-- `A018020(n)-A000035(A092942(n))` -/
def P2655961858337533152.Spec : Prop :=
  ∀ n, P2655961858337533152.a n = A018018 n

end A018018

/-!
# A018019: Powers of cube root of 15 rounded to nearest integer.

The programs for A018019, the canonical program `A018019.P8371660953020754817` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018019 has offset 0).

The definition of A018019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018019.P8371660953020754817

`round(15^(n/3))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018019

/-- `round(15^(n/3))` -/
def P8371660953020754817.Spec : Prop :=
  ∀ n, P8371660953020754817.a n = A018019 n

theorem P8371660953020754817.correct : P8371660953020754817.Spec := by
  intro n
  simp only [A018019]

end A018019

/-! ## A018019.P875351987921246009

`ceil(A018018(2*n)/A018020(n))`
-/

namespace A018019.P875351987921246009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018018 (2 * n) : ℚ) / (A018020 n : ℚ)⌉

end

end A018019.P875351987921246009

namespace A018019

/-- `ceil(A018018(2*n)/A018020(n))` -/
def P875351987921246009.Spec : Prop :=
  ∀ n, P875351987921246009.a n = A018019 n

end A018019

/-! ## A018019.P13803512365813351715

`A079978(A134914(2^n))+A018018(n)`
-/

namespace A018019.P13803512365813351715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A134914 (2 ^ n)).toNat + A018018 n

end

end A018019.P13803512365813351715

namespace A018019

/-- `A079978(A134914(2^n))+A018018(n)` -/
def P13803512365813351715.Spec : Prop :=
  ∀ n, P13803512365813351715.a n = A018019 n

end A018019

/-! ## A018019.P13384569997790212592

`or(floor(15^(n/3)), A079978(floor(9^(n/3))))`
-/

namespace A018019.P13384569997790212592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(15 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋ (A079978 ⌊(9 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋.toNat)

end

end A018019.P13384569997790212592

namespace A018019

/-- `or(floor(15^(n/3)), A079978(floor(9^(n/3))))` -/
def P13384569997790212592.Spec : Prop :=
  ∀ n, P13384569997790212592.a n = A018019 n

end A018019

/-! ## A018019.P662258260029465414

`A144602(A018000(n))+A018018(n)`
-/

namespace A018019.P662258260029465414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144602 (A018000 n).toNat + A018018 n

end

end A018019.P662258260029465414

namespace A018019

/-- `A144602(A018000(n))+A018018(n)` -/
def P662258260029465414.Spec : Prop :=
  ∀ n, P662258260029465414.a n = A018019 n

end A018019

/-!
# A018020: Powers of cube root of 15 rounded up.

The programs for A018020, the canonical program `A018020.P4086690302044614733` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018020 has offset 0).

The definition of A018020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018020.P14027994481881703166

`ceil(15^(n/3))`
-/

namespace A018020.P14027994481881703166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(15 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉

end

end A018020.P14027994481881703166

namespace A018020

/-- `ceil(15^(n/3))` -/
def P14027994481881703166.Spec : Prop :=
  ∀ n, P14027994481881703166.a n = A018020 n

end A018020

/-! ## A018020.P4086690302044614733

`A018018(n)+n²%3`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018020

/-- `A018018(n)+n²%3` -/
def P4086690302044614733.Spec : Prop :=
  ∀ n, P4086690302044614733.a n = A018020 n

theorem P4086690302044614733.correct : P4086690302044614733.Spec := by
  intro n
  simp only [A018020]

end A018020

/-! ## A018020.P9510261026770109982

`A018018(n)+A011655(n)`
-/

namespace A018020.P9510261026770109982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018018 n + A011655 n

end

end A018020.P9510261026770109982

namespace A018020

/-- `A018018(n)+A011655(n)` -/
def P9510261026770109982.Spec : Prop :=
  ∀ n, P9510261026770109982.a n = A018020 n

end A018020

/-! ## A018020.P8193313370158591553

`A018018(n)+Δ[A004523(n)]`
-/

namespace A018020.P8193313370158591553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018018 n + (f1 (n + 1) - f1 n)

end

end A018020.P8193313370158591553

namespace A018020

/-- `A018018(n)+Δ[A004523(n)]` -/
def P8193313370158591553.Spec : Prop :=
  ∀ n, P8193313370158591553.a n = A018020 n

end A018020

/-! ## A018020.P1093880535114691434

`A018018(n)+char[A166517(n)]`
-/

namespace A018020.P1093880535114691434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018018 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018020.P1093880535114691434

namespace A018020

/-- `A018018(n)+char[A166517(n)]` -/
def P1093880535114691434.Spec : Prop :=
  ∀ n, P1093880535114691434.a n = A018020 n

end A018020

/-! ## A018020.P7629417457711576616

`A018018(n)+1-A079978(n)`
-/

namespace A018020.P7629417457711576616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018018 n + (1 - A079978 n)

end

end A018020.P7629417457711576616

namespace A018020

/-- `A018018(n)+1-A079978(n)` -/
def P7629417457711576616.Spec : Prop :=
  ∀ n, P7629417457711576616.a n = A018020 n

end A018020

/-! ## A018020.P15100865670519072225

`A097325(2*n)+A018018(n)`
-/

namespace A018020.P15100865670519072225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (2 * n) + A018018 n

end

end A018020.P15100865670519072225

namespace A018020

/-- `A097325(2*n)+A018018(n)` -/
def P15100865670519072225.Spec : Prop :=
  ∀ n, P15100865670519072225.a n = A018020 n

end A018020

/-! ## A018020.P13967203254788869344

`A018018(n)+A000035(A002487(n))`
-/

namespace A018020.P13967203254788869344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018018 n + A000035 (A002487 n).toNat

end

end A018020.P13967203254788869344

namespace A018020

/-- `A018018(n)+A000035(A002487(n))` -/
def P13967203254788869344.Spec : Prop :=
  ∀ n, P13967203254788869344.a n = A018020 n

end A018020

/-! ## A018020.P7609165836994527286

`A018018(n)+A000035(A004396(n))`
-/

namespace A018020.P7609165836994527286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018018 n + A000035 (A004396 n).toNat

end

end A018020.P7609165836994527286

namespace A018020

/-- `A018018(n)+A000035(A004396(n))` -/
def P7609165836994527286.Spec : Prop :=
  ∀ n, P7609165836994527286.a n = A018020 n

end A018020

/-! ## A018020.P17298011724416401182

`A018018(n)+A000035(A092942(n))`
-/

namespace A018020.P17298011724416401182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018018 n + A000035 (A092942 n).toNat

end

end A018020.P17298011724416401182

namespace A018020

/-- `A018018(n)+A000035(A092942(n))` -/
def P17298011724416401182.Spec : Prop :=
  ∀ n, P17298011724416401182.a n = A018020 n

end A018020

/-! ## A018020.P3066475174050346610

`A017981(n)+A018018(n)-A017979(n)`
-/

namespace A018020.P3066475174050346610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 n + (A018018 n - A017979 n)

end

end A018020.P3066475174050346610

namespace A018020

/-- `A017981(n)+A018018(n)-A017979(n)` -/
def P3066475174050346610.Spec : Prop :=
  ∀ n, P3066475174050346610.a n = A018020 n

end A018020

/-!
# A018021: Powers of cube root of 16 rounded down.

The programs for A018021, the canonical program `A018021.P7508653445478068740` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018021 has offset 0).

The definition of A018021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018021.P193528024668275048

`floor(16^(n/3))`
-/

namespace A018021.P193528024668275048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(16 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋

end

end A018021.P193528024668275048

namespace A018021

/-- `floor(16^(n/3))` -/
def P193528024668275048.Spec : Prop :=
  ∀ n, P193528024668275048.a n = A018021 n

end A018021

/-! ## A018021.P8419927873674318278

`ceil(16^(n/3))-n²%3`
-/

namespace A018021.P8419927873674318278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(16 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉ - ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A018021.P8419927873674318278

namespace A018021

/-- `ceil(16^(n/3))-n²%3` -/
def P8419927873674318278.Spec : Prop :=
  ∀ n, P8419927873674318278.a n = A018021 n

end A018021

/-! ## A018021.P7508653445478068740

`A017985(2*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018021

/-- `A017985(2*n)` -/
def P7508653445478068740.Spec : Prop :=
  ∀ n, P7508653445478068740.a n = A018021 n

theorem P7508653445478068740.correct : P7508653445478068740.Spec := by
  intro n
  simp only [A018021]

end A018021

/-! ## A018021.P12395949191984689339

`A017979(4*n)`
-/

namespace A018021.P12395949191984689339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 (4 * n)

end

end A018021.P12395949191984689339

namespace A018021

/-- `A017979(4*n)` -/
def P12395949191984689339.Spec : Prop :=
  ∀ n, P12395949191984689339.a n = A018021 n

end A018021

/-! ## A018021.P2261674435663849436

`record[A017985(n%4+n)]`
-/

namespace A018021.P2261674435663849436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017985 (n % 4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018021.P2261674435663849436

namespace A018021

/-- `record[A017985(n%4+n)]` -/
def P2261674435663849436.Spec : Prop :=
  ∀ n, P2261674435663849436.a n = A018021 n

end A018021

/-! ## A018021.P14646556989948709532

`A018023(n)-A011655(n)`
-/

namespace A018021.P14646556989948709532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018023 n - A011655 n

end

end A018021.P14646556989948709532

namespace A018021

/-- `A018023(n)-A011655(n)` -/
def P14646556989948709532.Spec : Prop :=
  ∀ n, P14646556989948709532.a n = A018021 n

end A018021

/-! ## A018021.P1549200638247677086

`A018023(n)-abs(A102283(n))`
-/

namespace A018021.P1549200638247677086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018023 n - |A102283 n|

end

end A018021.P1549200638247677086

namespace A018021

/-- `A018023(n)-abs(A102283(n))` -/
def P1549200638247677086.Spec : Prop :=
  ∀ n, P1549200638247677086.a n = A018021 n

end A018021

/-! ## A018021.P17827374244227870358

`A018023(n)-Δ[A004523(n)]`
-/

namespace A018021.P17827374244227870358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018023 n - (f1 (n + 1) - f1 n)

end

end A018021.P17827374244227870358

namespace A018021

/-- `A018023(n)-Δ[A004523(n)]` -/
def P17827374244227870358.Spec : Prop :=
  ∀ n, P17827374244227870358.a n = A018021 n

end A018021

/-! ## A018021.P9272713914904339301

`A018023(n)-char[A166517(n)]`
-/

namespace A018021.P9272713914904339301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018023 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018021.P9272713914904339301

namespace A018021

/-- `A018023(n)-char[A166517(n)]` -/
def P9272713914904339301.Spec : Prop :=
  ∀ n, P9272713914904339301.a n = A018021 n

end A018021

/-! ## A018021.P3966749514745342405

`A017987(2*n)-A011655(n)`
-/

namespace A018021.P3966749514745342405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017987 (2 * n) - A011655 n

end

end A018021.P3966749514745342405

namespace A018021

/-- `A017987(2*n)-A011655(n)` -/
def P3966749514745342405.Spec : Prop :=
  ∀ n, P3966749514745342405.a n = A018021 n

end A018021

/-! ## A018021.P8636073022815303234

`A018023(n)-A097325(2*n)`
-/

namespace A018021.P8636073022815303234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018023 n - A097325 (2 * n)

end

end A018021.P8636073022815303234

namespace A018021

/-- `A018023(n)-A097325(2*n)` -/
def P8636073022815303234.Spec : Prop :=
  ∀ n, P8636073022815303234.a n = A018021 n

end A018021

/-! ## A018021.P15510012480023708801

`A017987(2*n)-Δ[A004523(n)]`
-/

namespace A018021.P15510012480023708801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017987 (2 * n) - (f1 (n + 1) - f1 n)

end

end A018021.P15510012480023708801

namespace A018021

/-- `A017987(2*n)-Δ[A004523(n)]` -/
def P15510012480023708801.Spec : Prop :=
  ∀ n, P15510012480023708801.a n = A018021 n

end A018021

/-! ## A018021.P3490812632235410125

`A018023(n)-char[A001651(n+1)]`
-/

namespace A018021.P3490812632235410125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018023 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018021.P3490812632235410125

namespace A018021

/-- `A018023(n)-char[A001651(n+1)]` -/
def P3490812632235410125.Spec : Prop :=
  ∀ n, P3490812632235410125.a n = A018021 n

end A018021

/-! ## A018021.P12088985914312787407

`A017987(2*n)+A079978(n)-1`
-/

namespace A018021.P12088985914312787407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017987 (2 * n) + (A079978 n - 1)

end

end A018021.P12088985914312787407

namespace A018021

/-- `A017987(2*n)+A079978(n)-1` -/
def P12088985914312787407.Spec : Prop :=
  ∀ n, P12088985914312787407.a n = A018021 n

end A018021

/-! ## A018021.P8785702941342968458

`record[A017985(A335358(A008585(n)))]`
-/

namespace A018021.P8785702941342968458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017985 (A335358 (A008585 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018021.P8785702941342968458

namespace A018021

/-- `record[A017985(A335358(A008585(n)))]` -/
def P8785702941342968458.Spec : Prop :=
  ∀ n, P8785702941342968458.a n = A018021 n

end A018021

/-! ## A018021.P3458656046272945712

`A018023(n)-A000035(A002487(n))`
-/

namespace A018021.P3458656046272945712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018023 n - A000035 (A002487 n).toNat

end

end A018021.P3458656046272945712

namespace A018021

/-- `A018023(n)-A000035(A002487(n))` -/
def P3458656046272945712.Spec : Prop :=
  ∀ n, P3458656046272945712.a n = A018021 n

end A018021

/-! ## A018021.P8754914131143724563

`A018023(n)-A000035(A004396(n))`
-/

namespace A018021.P8754914131143724563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018023 n - A000035 (A004396 n).toNat

end

end A018021.P8754914131143724563

namespace A018021

/-- `A018023(n)-A000035(A004396(n))` -/
def P8754914131143724563.Spec : Prop :=
  ∀ n, P8754914131143724563.a n = A018021 n

end A018021

/-! ## A018021.P15214727169763333234

`A017981(A008586(n))-A011655(n)`
-/

namespace A018021.P15214727169763333234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 (A008586 n).toNat - A011655 n

end

end A018021.P15214727169763333234

namespace A018021

/-- `A017981(A008586(n))-A011655(n)` -/
def P15214727169763333234.Spec : Prop :=
  ∀ n, P15214727169763333234.a n = A018021 n

end A018021

/-! ## A018021.P9544509139536612802

`A018023(n)-A000035(A092942(n))`
-/

namespace A018021.P9544509139536612802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018023 n - A000035 (A092942 n).toNat

end

end A018021.P9544509139536612802

namespace A018021

/-- `A018023(n)-A000035(A092942(n))` -/
def P9544509139536612802.Spec : Prop :=
  ∀ n, P9544509139536612802.a n = A018021 n

end A018021

/-! ## A018021.P9284830679511687013

`A018023(n)-A102283(n²)`
-/

namespace A018021.P9284830679511687013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018023 n - A102283 (n ^ 2)

end

end A018021.P9284830679511687013

namespace A018021

/-- `A018023(n)-A102283(n²)` -/
def P9284830679511687013.Spec : Prop :=
  ∀ n, P9284830679511687013.a n = A018021 n

end A018021

/-!
# A018022: Powers of cube root of 16 rounded to nearest integer.

The programs for A018022, the canonical program `A018022.P11346396830169355532` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018022 has offset 0).

The definition of A018022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018022.P16509997459371040818

`round(16^(n/3))`
-/

namespace A018022.P16509997459371040818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((16 : ℝ) ^ ((n : ℚ) / 3 : ℝ))

end

end A018022.P16509997459371040818

namespace A018022

/-- `round(16^(n/3))` -/
def P16509997459371040818.Spec : Prop :=
  ∀ n, P16509997459371040818.a n = A018022 n

end A018022

/-! ## A018022.P11346396830169355532

`A017986(2*n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018022

/-- `A017986(2*n)` -/
def P11346396830169355532.Spec : Prop :=
  ∀ n, P11346396830169355532.a n = A018022 n

theorem P11346396830169355532.correct : P11346396830169355532.Spec := by
  intro n
  simp only [A018022]

end A018022

/-! ## A018022.P10877076638461446336

`A017980(4*n)`
-/

namespace A018022.P10877076638461446336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017980 (4 * n)

end

end A018022.P10877076638461446336

namespace A018022

/-- `A017980(4*n)` -/
def P10877076638461446336.Spec : Prop :=
  ∀ n, P10877076638461446336.a n = A018022 n

end A018022

/-! ## A018022.P16342616227380056324

`xor(1, xor(1, A017986(n+n)))`
-/

namespace A018022.P16342616227380056324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A017986 (n + n)))

end

end A018022.P16342616227380056324

namespace A018022

/-- `xor(1, xor(1, A017986(n+n)))` -/
def P16342616227380056324.Spec : Prop :=
  ∀ n, P16342616227380056324.a n = A018022 n

end A018022

/-! ## A018022.P8935412490324125184

`record[A017986(A014681(n))]`
-/

namespace A018022.P8935412490324125184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017986 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018022.P8935412490324125184

namespace A018022

/-- `record[A017986(A014681(n))]` -/
def P8935412490324125184.Spec : Prop :=
  ∀ n, P8935412490324125184.a n = A018022 n

end A018022

/-! ## A018022.P8810744354533929466

`A249832(A278234(n))+A017986(n+n)`
-/

namespace A018022.P8810744354533929466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A278234 n).toNat + A017986 (n + n)

end

end A018022.P8810744354533929466

namespace A018022

/-- `A249832(A278234(n))+A017986(n+n)` -/
def P8810744354533929466.Spec : Prop :=
  ∀ n, P8810744354533929466.a n = A018022 n

end A018022

/-! ## A018022.P3573795053174867304

`floor(A018021(2*n)/A018021(n))`
-/

namespace A018022.P3573795053174867304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018021 (2 * n) : ℚ) / (A018021 n : ℚ)⌋

end

end A018022.P3573795053174867304

namespace A018022

/-- `floor(A018021(2*n)/A018021(n))` -/
def P3573795053174867304.Spec : Prop :=
  ∀ n, P3573795053174867304.a n = A018022 n

end A018022

/-! ## A018022.P915390368920567172

`ceil(A018023(2*n)/A018023(n))`
-/

namespace A018022.P915390368920567172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018023 (2 * n) : ℚ) / (A018023 n : ℚ)⌉

end

end A018022.P915390368920567172

namespace A018022

/-- `ceil(A018023(2*n)/A018023(n))` -/
def P915390368920567172.Spec : Prop :=
  ∀ n, P915390368920567172.a n = A018022 n

end A018022

/-!
# A018023: Powers of cube root of 16 rounded up.

The programs for A018023, the canonical program `A018023.P2764851076062228804` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018023 has offset 0).

The definition of A018023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018023.P18130824084568468049

`ceil(16^(n/3))`
-/

namespace A018023.P18130824084568468049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(16 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉

end

end A018023.P18130824084568468049

namespace A018023

/-- `ceil(16^(n/3))` -/
def P18130824084568468049.Spec : Prop :=
  ∀ n, P18130824084568468049.a n = A018023 n

end A018023

/-! ## A018023.P17024777934651818658

`floor(16^(n/3))+n²%3`
-/

namespace A018023.P17024777934651818658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(16 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋ + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A018023.P17024777934651818658

namespace A018023

/-- `floor(16^(n/3))+n²%3` -/
def P17024777934651818658.Spec : Prop :=
  ∀ n, P17024777934651818658.a n = A018023 n

end A018023

/-! ## A018023.P2764851076062228804

`A017987(2*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018023

/-- `A017987(2*n)` -/
def P2764851076062228804.Spec : Prop :=
  ∀ n, P2764851076062228804.a n = A018023 n

theorem P2764851076062228804.correct : P2764851076062228804.Spec := by
  intro n
  simp only [A018023]

end A018023

/-! ## A018023.P14577558790932913553

`A017981(4*n)`
-/

namespace A018023.P14577558790932913553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017981 (4 * n)

end

end A018023.P14577558790932913553

namespace A018023

/-- `A017981(4*n)` -/
def P14577558790932913553.Spec : Prop :=
  ∀ n, P14577558790932913553.a n = A018023 n

end A018023

/-! ## A018023.P1310884047974695567

`A011655(n)+floor(16^(n/3))`
-/

namespace A018023.P1310884047974695567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n + ⌊(16 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋

end

end A018023.P1310884047974695567

namespace A018023

/-- `A011655(n)+floor(16^(n/3))` -/
def P1310884047974695567.Spec : Prop :=
  ∀ n, P1310884047974695567.a n = A018023 n

end A018023

/-! ## A018023.P14640501943613344665

`floor(16^(n/3))+abs(A102283(n))`
-/

namespace A018023.P14640501943613344665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(16 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋ + |A102283 n|

end

end A018023.P14640501943613344665

namespace A018023

/-- `floor(16^(n/3))+abs(A102283(n))` -/
def P14640501943613344665.Spec : Prop :=
  ∀ n, P14640501943613344665.a n = A018023 n

end A018023

/-! ## A018023.P17058369668438768349

`floor(16^(n/3))+abs(A128834(n))`
-/

namespace A018023.P17058369668438768349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(16 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋ + |A128834 n|

end

end A018023.P17058369668438768349

namespace A018023

/-- `floor(16^(n/3))+abs(A128834(n))` -/
def P17058369668438768349.Spec : Prop :=
  ∀ n, P17058369668438768349.a n = A018023 n

end A018023

/-! ## A018023.P16046043756286502303

`A018021(n)+A011655(n)`
-/

namespace A018023.P16046043756286502303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018021 n + A011655 n

end

end A018023.P16046043756286502303

namespace A018023

/-- `A018021(n)+A011655(n)` -/
def P16046043756286502303.Spec : Prop :=
  ∀ n, P16046043756286502303.a n = A018023 n

end A018023

/-! ## A018023.P12205722500425139047

`A018021(n)+Δ[A004523(n)]`
-/

namespace A018023.P12205722500425139047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018021 n + (f1 (n + 1) - f1 n)

end

end A018023.P12205722500425139047

namespace A018023

/-- `A018021(n)+Δ[A004523(n)]` -/
def P12205722500425139047.Spec : Prop :=
  ∀ n, P12205722500425139047.a n = A018023 n

end A018023

/-! ## A018023.P5180888569216733275

`A018021(n)+char[A166517(n)]`
-/

namespace A018023.P5180888569216733275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018021 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018023.P5180888569216733275

namespace A018023

/-- `A018021(n)+char[A166517(n)]` -/
def P5180888569216733275.Spec : Prop :=
  ∀ n, P5180888569216733275.a n = A018023 n

end A018023

/-! ## A018023.P18312336556429941400

`A017985(2*n)+A011655(n)`
-/

namespace A018023.P18312336556429941400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017985 (2 * n) + A011655 n

end

end A018023.P18312336556429941400

namespace A018023

/-- `A017985(2*n)+A011655(n)` -/
def P18312336556429941400.Spec : Prop :=
  ∀ n, P18312336556429941400.a n = A018023 n

end A018023

/-! ## A018023.P11392125060182807399

`A097325(2*n)+A018021(n)`
-/

namespace A018023.P11392125060182807399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (2 * n) + A018021 n

end

end A018023.P11392125060182807399

namespace A018023

/-- `A097325(2*n)+A018021(n)` -/
def P11392125060182807399.Spec : Prop :=
  ∀ n, P11392125060182807399.a n = A018023 n

end A018023

/-! ## A018023.P8025920222749105271

`A017985(2*n)+1-A079978(n)`
-/

namespace A018023.P8025920222749105271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017985 (2 * n) + (1 - A079978 n)

end

end A018023.P8025920222749105271

namespace A018023

/-- `A017985(2*n)+1-A079978(n)` -/
def P8025920222749105271.Spec : Prop :=
  ∀ n, P8025920222749105271.a n = A018023 n

end A018023

/-! ## A018023.P10879073241962715275

`record[A017981(A005843(n))/A006519(n+1)]`
-/

namespace A018023.P10879073241962715275
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017981 (A005843 n).toNat : ℚ) / (A006519 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018023.P10879073241962715275

namespace A018023

/-- `record[A017981(A005843(n))/A006519(n+1)]` -/
def P10879073241962715275.Spec : Prop :=
  ∀ n, P10879073241962715275.a n = (A018023 n : ℚ)

end A018023

/-! ## A018023.P4893635330632746166

`A079978(n+2)+A079978(n+1)+A017985(2*n)`
-/

namespace A018023.P4893635330632746166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (n + 2) + (A079978 (n + 1) + A017985 (2 * n))

end

end A018023.P4893635330632746166

namespace A018023

/-- `A079978(n+2)+A079978(n+1)+A017985(2*n)` -/
def P4893635330632746166.Spec : Prop :=
  ∀ n, P4893635330632746166.a n = A018023 n

end A018023

/-! ## A018023.P73931405176579850

`A017985(2*n)+A018026(2*n)-A018024(2*n)`
-/

namespace A018023.P73931405176579850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017985 (2 * n) + (A018026 (2 * n) - A018024 (2 * n))

end

end A018023.P73931405176579850

namespace A018023

/-- `A017985(2*n)+A018026(2*n)-A018024(2*n)` -/
def P73931405176579850.Spec : Prop :=
  ∀ n, P73931405176579850.a n = A018023 n

end A018023

/-!
# A018024: Powers of cube root of 17 rounded down.

The programs for A018024, the canonical program `A018024.P14954635159169993979` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018024 has offset 0).

The definition of A018024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018024.P14954635159169993979

`floor(17^(n/3))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018024

/-- `floor(17^(n/3))` -/
def P14954635159169993979.Spec : Prop :=
  ∀ n, P14954635159169993979.a n = A018024 n

theorem P14954635159169993979.correct : P14954635159169993979.Spec := by
  intro n
  simp only [A018024]

end A018024

/-! ## A018024.P2216368907861256446

`ceil(17^(n/3))-char[A166517(n)]`
-/

namespace A018024.P2216368907861256446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(17 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉ - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018024.P2216368907861256446

namespace A018024

/-- `ceil(17^(n/3))-char[A166517(n)]` -/
def P2216368907861256446.Spec : Prop :=
  ∀ n, P2216368907861256446.a n = A018024 n

end A018024

/-! ## A018024.P3759249361179221348

`ceil(17^(n/3))-char[A001651(n+1)]`
-/

namespace A018024.P3759249361179221348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(17 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉ - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018024.P3759249361179221348

namespace A018024

/-- `ceil(17^(n/3))-char[A001651(n+1)]` -/
def P3759249361179221348.Spec : Prop :=
  ∀ n, P3759249361179221348.a n = A018024 n

end A018024

/-! ## A018024.P9836620003863693024

`A018026(n)-A011655(n)`
-/

namespace A018024.P9836620003863693024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018026 n - A011655 n

end

end A018024.P9836620003863693024

namespace A018024

/-- `A018026(n)-A011655(n)` -/
def P9836620003863693024.Spec : Prop :=
  ∀ n, P9836620003863693024.a n = A018024 n

end A018024

/-! ## A018024.P1367536936555769846

`A018026(n)-abs(A102283(n))`
-/

namespace A018024.P1367536936555769846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018026 n - |A102283 n|

end

end A018024.P1367536936555769846

namespace A018024

/-- `A018026(n)-abs(A102283(n))` -/
def P1367536936555769846.Spec : Prop :=
  ∀ n, P1367536936555769846.a n = A018024 n

end A018024

/-! ## A018024.P7447337968060777484

`A018026(n)-abs(A128834(n))`
-/

namespace A018024.P7447337968060777484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018026 n - |A128834 n|

end

end A018024.P7447337968060777484

namespace A018024

/-- `A018026(n)-abs(A128834(n))` -/
def P7447337968060777484.Spec : Prop :=
  ∀ n, P7447337968060777484.a n = A018024 n

end A018024

/-! ## A018024.P16022597504540198843

`A018026(n)-A092220(n)²`
-/

namespace A018024.P16022597504540198843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018026 n - A092220 n ^ 2

end

end A018024.P16022597504540198843

namespace A018024

/-- `A018026(n)-A092220(n)²` -/
def P16022597504540198843.Spec : Prop :=
  ∀ n, P16022597504540198843.a n = A018024 n

end A018024

/-! ## A018024.P3152513953557069234

`A092220(2*n)+A018026(n)`
-/

namespace A018024.P3152513953557069234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 (2 * n) + A018026 n

end

end A018024.P3152513953557069234

namespace A018024

/-- `A092220(2*n)+A018026(n)` -/
def P3152513953557069234.Spec : Prop :=
  ∀ n, P3152513953557069234.a n = A018024 n

end A018024

/-! ## A018024.P353334304101600669

`A018026(n)-and(1, A000211(n))`
-/

namespace A018024.P353334304101600669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018026 n - Int.land 1 (A000211 n)

end

end A018024.P353334304101600669

namespace A018024

/-- `A018026(n)-and(1, A000211(n))` -/
def P353334304101600669.Spec : Prop :=
  ∀ n, P353334304101600669.a n = A018024 n

end A018024

/-! ## A018024.P6907675121900877329

`A018026(n)-and(1, A092942(n))`
-/

namespace A018024.P6907675121900877329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018026 n - Int.land 1 (A092942 n)

end

end A018024.P6907675121900877329

namespace A018024

/-- `A018026(n)-and(1, A092942(n))` -/
def P6907675121900877329.Spec : Prop :=
  ∀ n, P6907675121900877329.a n = A018024 n

end A018024

/-! ## A018024.P11768533874931224621

`A018026(n)-A000035(A004396(n))`
-/

namespace A018024.P11768533874931224621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018026 n - A000035 (A004396 n).toNat

end

end A018024.P11768533874931224621

namespace A018024

/-- `A018026(n)-A000035(A004396(n))` -/
def P11768533874931224621.Spec : Prop :=
  ∀ n, P11768533874931224621.a n = A018024 n

end A018024

/-! ## A018024.P11136368610233036389

`A018021(n)+A018026(n)-A018023(n)`
-/

namespace A018024.P11136368610233036389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018021 n + (A018026 n - A018023 n)

end

end A018024.P11136368610233036389

namespace A018024

/-- `A018021(n)+A018026(n)-A018023(n)` -/
def P11136368610233036389.Spec : Prop :=
  ∀ n, P11136368610233036389.a n = A018024 n

end A018024

/-! ## A018024.P7482608767259312423

`A018026(n)-A102283(n²)`
-/

namespace A018024.P7482608767259312423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018026 n - A102283 (n ^ 2)

end

end A018024.P7482608767259312423

namespace A018024

/-- `A018026(n)-A102283(n²)` -/
def P7482608767259312423.Spec : Prop :=
  ∀ n, P7482608767259312423.a n = A018024 n

end A018024

/-!
# A018025: Powers of cube root of 17 rounded to nearest integer.

The programs for A018025, the canonical program `A018025.P7099176975664744632` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018025 has offset 0).

The definition of A018025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018025.P7099176975664744632

`round(17^(n/3))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018025

/-- `round(17^(n/3))` -/
def P7099176975664744632.Spec : Prop :=
  ∀ n, P7099176975664744632.a n = A018025 n

theorem P7099176975664744632.correct : P7099176975664744632.Spec := by
  intro n
  simp only [A018025]

end A018025

/-! ## A018025.P4776905976933013895

`floor(A018026(2*n)/floor(17^(n/3)))`
-/

namespace A018025.P4776905976933013895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018026 (2 * n) : ℚ) / (⌊(17 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋ : ℚ)⌋

end

end A018025.P4776905976933013895

namespace A018025

/-- `floor(A018026(2*n)/floor(17^(n/3)))` -/
def P4776905976933013895.Spec : Prop :=
  ∀ n, P4776905976933013895.a n = A018025 n

end A018025

/-! ## A018025.P9578885696906571413

`floor(A018024(2*n)/A018024(n))`
-/

namespace A018025.P9578885696906571413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018024 (2 * n) : ℚ) / (A018024 n : ℚ)⌋

end

end A018025.P9578885696906571413

namespace A018025

/-- `floor(A018024(2*n)/A018024(n))` -/
def P9578885696906571413.Spec : Prop :=
  ∀ n, P9578885696906571413.a n = A018025 n

end A018025

/-! ## A018025.P18167216054795087914

`ceil(A018026(2*n)/A018026(n))`
-/

namespace A018025.P18167216054795087914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018026 (2 * n) : ℚ) / (A018026 n : ℚ)⌉

end

end A018025.P18167216054795087914

namespace A018025

/-- `ceil(A018026(2*n)/A018026(n))` -/
def P18167216054795087914.Spec : Prop :=
  ∀ n, P18167216054795087914.a n = A018025 n

end A018025

/-! ## A018025.P16058834314012918786

`A018026(n)-A064911(A018009(n))`
-/

namespace A018025.P16058834314012918786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018026 n - A064911 (A018009 n).toNat

end

end A018025.P16058834314012918786

namespace A018025

/-- `A018026(n)-A064911(A018009(n))` -/
def P16058834314012918786.Spec : Prop :=
  ∀ n, P16058834314012918786.a n = A018025 n

end A018025

/-!
# A018026: Powers of cube root of 17 rounded up.

The programs for A018026, the canonical program `A018026.P9406872516472099550` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018026 has offset 0).

The definition of A018026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018026.P16358435921794061590

`ceil(17^(n/3))`
-/

namespace A018026.P16358435921794061590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(17 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉

end

end A018026.P16358435921794061590

namespace A018026

/-- `ceil(17^(n/3))` -/
def P16358435921794061590.Spec : Prop :=
  ∀ n, P16358435921794061590.a n = A018026 n

end A018026

/-! ## A018026.P17675766970904139698

`A011655(n)+floor(17^(n/3))`
-/

namespace A018026.P17675766970904139698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n + ⌊(17 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋

end

end A018026.P17675766970904139698

namespace A018026

/-- `A011655(n)+floor(17^(n/3))` -/
def P17675766970904139698.Spec : Prop :=
  ∀ n, P17675766970904139698.a n = A018026 n

end A018026

/-! ## A018026.P8414504954055506464

`floor(17^(n/3))+abs(A102283(n))`
-/

namespace A018026.P8414504954055506464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(17 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋ + |A102283 n|

end

end A018026.P8414504954055506464

namespace A018026

/-- `floor(17^(n/3))+abs(A102283(n))` -/
def P8414504954055506464.Spec : Prop :=
  ∀ n, P8414504954055506464.a n = A018026 n

end A018026

/-! ## A018026.P9419167261493647561

`floor(17^(n/3))+abs(A128834(n))`
-/

namespace A018026.P9419167261493647561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(17 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋ + |A128834 n|

end

end A018026.P9419167261493647561

namespace A018026

/-- `floor(17^(n/3))+abs(A128834(n))` -/
def P9419167261493647561.Spec : Prop :=
  ∀ n, P9419167261493647561.a n = A018026 n

end A018026

/-! ## A018026.P9406872516472099550

`A018024(n)+A011655(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018026

/-- `A018024(n)+A011655(n)` -/
def P9406872516472099550.Spec : Prop :=
  ∀ n, P9406872516472099550.a n = A018026 n

theorem P9406872516472099550.correct : P9406872516472099550.Spec := by
  intro n
  simp only [A018026]

end A018026

/-! ## A018026.P4616501448499682137

`A018024(n)+Δ[A004523(n)]`
-/

namespace A018026.P4616501448499682137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018024 n + (f1 (n + 1) - f1 n)

end

end A018026.P4616501448499682137

namespace A018026

/-- `A018024(n)+Δ[A004523(n)]` -/
def P4616501448499682137.Spec : Prop :=
  ∀ n, P4616501448499682137.a n = A018026 n

end A018026

/-! ## A018026.P15789026955480963399

`A018024(n)+char[A166517(n)]`
-/

namespace A018026.P15789026955480963399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018024 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018026.P15789026955480963399

namespace A018026

/-- `A018024(n)+char[A166517(n)]` -/
def P15789026955480963399.Spec : Prop :=
  ∀ n, P15789026955480963399.a n = A018026 n

end A018026

/-! ## A018026.P12093983406354818677

`A097325(2*n)+A018024(n)`
-/

namespace A018026.P12093983406354818677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (2 * n) + A018024 n

end

end A018026.P12093983406354818677

namespace A018026

/-- `A097325(2*n)+A018024(n)` -/
def P12093983406354818677.Spec : Prop :=
  ∀ n, P12093983406354818677.a n = A018026 n

end A018026

/-! ## A018026.P12487436567769608617

`A018024(n)+and(1, A018910(n))`
-/

namespace A018026.P12487436567769608617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018024 n + Int.land 1 (A018910 n)

end

end A018026.P12487436567769608617

namespace A018026

/-- `A018024(n)+and(1, A018910(n))` -/
def P12487436567769608617.Spec : Prop :=
  ∀ n, P12487436567769608617.a n = A018026 n

end A018026

/-! ## A018026.P10845413641842636188

`A018024(n)+char[A001651(n+1)]`
-/

namespace A018026.P10845413641842636188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018024 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018026.P10845413641842636188

namespace A018026

/-- `A018024(n)+char[A001651(n+1)]` -/
def P10845413641842636188.Spec : Prop :=
  ∀ n, P10845413641842636188.a n = A018026 n

end A018026

/-! ## A018026.P254896323535204015

`A018024(n)+A000035(A002487(n))`
-/

namespace A018026.P254896323535204015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018024 n + A000035 (A002487 n).toNat

end

end A018026.P254896323535204015

namespace A018026

/-- `A018024(n)+A000035(A002487(n))` -/
def P254896323535204015.Spec : Prop :=
  ∀ n, P254896323535204015.a n = A018026 n

end A018026

/-! ## A018026.P3939666374318496143

`A018024(n)+A000035(A004396(n))`
-/

namespace A018026.P3939666374318496143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018024 n + A000035 (A004396 n).toNat

end

end A018026.P3939666374318496143

namespace A018026

/-- `A018024(n)+A000035(A004396(n))` -/
def P3939666374318496143.Spec : Prop :=
  ∀ n, P3939666374318496143.a n = A018026 n

end A018026

/-! ## A018026.P10883352857780546618

`A018024(n)+A000035(A092942(n))`
-/

namespace A018026.P10883352857780546618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018024 n + A000035 (A092942 n).toNat

end

end A018026.P10883352857780546618

namespace A018026

/-- `A018024(n)+A000035(A092942(n))` -/
def P10883352857780546618.Spec : Prop :=
  ∀ n, P10883352857780546618.a n = A018026 n

end A018026

/-!
# A018027: Powers of cube root of 18 rounded down.

The programs for A018027, the canonical program `A018027.P3102652915185541206` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018027 has offset 0).

The definition of A018027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018027.P3102652915185541206

`floor(18^(n/3))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018027

/-- `floor(18^(n/3))` -/
def P3102652915185541206.Spec : Prop :=
  ∀ n, P3102652915185541206.a n = A018027 n

theorem P3102652915185541206.correct : P3102652915185541206.Spec := by
  intro n
  simp only [A018027]

end A018027

/-! ## A018027.P11185266659536489998

`A018029(n)-n²%3`
-/

namespace A018027.P11185266659536489998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018029 n - ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A018027.P11185266659536489998

namespace A018027

/-- `A018029(n)-n²%3` -/
def P11185266659536489998.Spec : Prop :=
  ∀ n, P11185266659536489998.a n = A018027 n

end A018027

/-! ## A018027.P17691319078106654210

`A018029(n)-A011655(n)`
-/

namespace A018027.P17691319078106654210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018029 n - A011655 n

end

end A018027.P17691319078106654210

namespace A018027

/-- `A018029(n)-A011655(n)` -/
def P17691319078106654210.Spec : Prop :=
  ∀ n, P17691319078106654210.a n = A018027 n

end A018027

/-! ## A018027.P2247750020036789368

`A018029(n)-abs(A102283(n))`
-/

namespace A018027.P2247750020036789368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018029 n - |A102283 n|

end

end A018027.P2247750020036789368

namespace A018027

/-- `A018029(n)-abs(A102283(n))` -/
def P2247750020036789368.Spec : Prop :=
  ∀ n, P2247750020036789368.a n = A018027 n

end A018027

/-! ## A018027.P6647180787568101578

`A018029(n)-abs(A128834(n))`
-/

namespace A018027.P6647180787568101578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018029 n - |A128834 n|

end

end A018027.P6647180787568101578

namespace A018027

/-- `A018029(n)-abs(A128834(n))` -/
def P6647180787568101578.Spec : Prop :=
  ∀ n, P6647180787568101578.a n = A018027 n

end A018027

/-! ## A018027.P9862438896339875255

`A018029(n)-Δ[A004523(n)]`
-/

namespace A018027.P9862438896339875255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018029 n - (f1 (n + 1) - f1 n)

end

end A018027.P9862438896339875255

namespace A018027

/-- `A018029(n)-Δ[A004523(n)]` -/
def P9862438896339875255.Spec : Prop :=
  ∀ n, P9862438896339875255.a n = A018027 n

end A018027

/-! ## A018027.P15018959048233754794

`A018029(n)-char[A166517(n)]`
-/

namespace A018027.P15018959048233754794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018029 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018027.P15018959048233754794

namespace A018027

/-- `A018029(n)-char[A166517(n)]` -/
def P15018959048233754794.Spec : Prop :=
  ∀ n, P15018959048233754794.a n = A018027 n

end A018027

/-! ## A018027.P9231336204509214834

`A018029(n)-A097325(2*n)`
-/

namespace A018027.P9231336204509214834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018029 n - A097325 (2 * n)

end

end A018027.P9231336204509214834

namespace A018027

/-- `A018029(n)-A097325(2*n)` -/
def P9231336204509214834.Spec : Prop :=
  ∀ n, P9231336204509214834.a n = A018027 n

end A018027

/-! ## A018027.P1088846846100758438

`A018029(n)-Δ[A004396(n+1)]`
-/

namespace A018027.P1088846846100758438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018029 n - (f1 (n + 1) - f1 n)

end

end A018027.P1088846846100758438

namespace A018027

/-- `A018029(n)-Δ[A004396(n+1)]` -/
def P1088846846100758438.Spec : Prop :=
  ∀ n, P1088846846100758438.a n = A018027 n

end A018027

/-! ## A018027.P15062756967020318004

`A018029(n)-A000035(A002487(n))`
-/

namespace A018027.P15062756967020318004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018029 n - A000035 (A002487 n).toNat

end

end A018027.P15062756967020318004

namespace A018027

/-- `A018029(n)-A000035(A002487(n))` -/
def P15062756967020318004.Spec : Prop :=
  ∀ n, P15062756967020318004.a n = A018027 n

end A018027

/-! ## A018027.P6294904609561549308

`A018029(n)-A000035(A004396(n))`
-/

namespace A018027.P6294904609561549308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018029 n - A000035 (A004396 n).toNat

end

end A018027.P6294904609561549308

namespace A018027

/-- `A018029(n)-A000035(A004396(n))` -/
def P6294904609561549308.Spec : Prop :=
  ∀ n, P6294904609561549308.a n = A018027 n

end A018027

/-! ## A018027.P9492634579440847484

`A018029(n)-A000035(A092942(n))`
-/

namespace A018027.P9492634579440847484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018029 n - A000035 (A092942 n).toNat

end

end A018027.P9492634579440847484

namespace A018027

/-- `A018029(n)-A000035(A092942(n))` -/
def P9492634579440847484.Spec : Prop :=
  ∀ n, P9492634579440847484.a n = A018027 n

end A018027

/-! ## A018027.P12635650148778126373

`A018029(n)-A102283(n²)`
-/

namespace A018027.P12635650148778126373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018029 n - A102283 (n ^ 2)

end

end A018027.P12635650148778126373

namespace A018027

/-- `A018029(n)-A102283(n²)` -/
def P12635650148778126373.Spec : Prop :=
  ∀ n, P12635650148778126373.a n = A018027 n

end A018027

/-!
# A018028: Powers of cube root of 18 rounded to nearest integer.

The programs for A018028, the canonical program `A018028.P5830603224487268178` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018028 has offset 0).

The definition of A018028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018028.P5830603224487268178

`round(18^(n/3))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018028

/-- `round(18^(n/3))` -/
def P5830603224487268178.Spec : Prop :=
  ∀ n, P5830603224487268178.a n = A018028 n

theorem P5830603224487268178.correct : P5830603224487268178.Spec := by
  intro n
  simp only [A018028]

end A018028

/-! ## A018028.P967563288080872061

`floor(A018027(2*n)/A018027(n))`
-/

namespace A018028.P967563288080872061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018027 (2 * n) : ℚ) / (A018027 n : ℚ)⌋

end

end A018028.P967563288080872061

namespace A018028

/-- `floor(A018027(2*n)/A018027(n))` -/
def P967563288080872061.Spec : Prop :=
  ∀ n, P967563288080872061.a n = A018028 n

end A018028

/-! ## A018028.P4755856139235374632

`ceil(A018029(2*n)/A018029(n))`
-/

namespace A018028.P4755856139235374632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018029 (2 * n) : ℚ) / (A018029 n : ℚ)⌉

end

end A018028.P4755856139235374632

namespace A018028

/-- `ceil(A018029(2*n)/A018029(n))` -/
def P4755856139235374632.Spec : Prop :=
  ∀ n, P4755856139235374632.a n = A018028 n

end A018028

/-! ## A018028.P10350725188520269782

`A030308(A160119(n))+A018027(n)`
-/

namespace A018028.P10350725188520269782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A160119 n).toNat + A018027 n

end

end A018028.P10350725188520269782

namespace A018028

/-- `A030308(A160119(n))+A018027(n)` -/
def P10350725188520269782.Spec : Prop :=
  ∀ n, P10350725188520269782.a n = A018028 n

end A018028

/-! ## A018028.P612199804917301913

`A226464(A227679(2*n+1)+n)+A018027(n)`
-/

namespace A018028.P612199804917301913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226464 (A227679 (2 * n + 1) + (n : ℤ)).toNat + A018027 n

end

end A018028.P612199804917301913

namespace A018028

/-- `A226464(A227679(2*n+1)+n)+A018027(n)` -/
def P612199804917301913.Spec : Prop :=
  ∀ n, P612199804917301913.a n = A018028 n

end A018028

/-!
# A018029: Powers of cube root of 18 rounded up.

The programs for A018029, the canonical program `A018029.P1393310261986526519` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018029 has offset 0).

The definition of A018029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018029.P13900156324138288166

`ceil(18^(n/3))`
-/

namespace A018029.P13900156324138288166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(18 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉

end

end A018029.P13900156324138288166

namespace A018029

/-- `ceil(18^(n/3))` -/
def P13900156324138288166.Spec : Prop :=
  ∀ n, P13900156324138288166.a n = A018029 n

end A018029

/-! ## A018029.P1393310261986526519

`A018027(n)+n²%3`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018029

/-- `A018027(n)+n²%3` -/
def P1393310261986526519.Spec : Prop :=
  ∀ n, P1393310261986526519.a n = A018029 n

theorem P1393310261986526519.correct : P1393310261986526519.Spec := by
  intro n
  simp only [A018029]

end A018029

/-! ## A018029.P11081211904680229377

`A011655(n)+floor(18^(n/3))`
-/

namespace A018029.P11081211904680229377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n + ⌊(18 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋

end

end A018029.P11081211904680229377

namespace A018029

/-- `A011655(n)+floor(18^(n/3))` -/
def P11081211904680229377.Spec : Prop :=
  ∀ n, P11081211904680229377.a n = A018029 n

end A018029

/-! ## A018029.P9663428365718483040

`floor(18^(n/3))+abs(A102283(n))`
-/

namespace A018029.P9663428365718483040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(18 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋ + |A102283 n|

end

end A018029.P9663428365718483040

namespace A018029

/-- `floor(18^(n/3))+abs(A102283(n))` -/
def P9663428365718483040.Spec : Prop :=
  ∀ n, P9663428365718483040.a n = A018029 n

end A018029

/-! ## A018029.P6613434605729306605

`floor(18^(n/3))+abs(A128834(n))`
-/

namespace A018029.P6613434605729306605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(18 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋ + |A128834 n|

end

end A018029.P6613434605729306605

namespace A018029

/-- `floor(18^(n/3))+abs(A128834(n))` -/
def P6613434605729306605.Spec : Prop :=
  ∀ n, P6613434605729306605.a n = A018029 n

end A018029

/-! ## A018029.P8608283180002231888

`A018027(n)+A011655(n)`
-/

namespace A018029.P8608283180002231888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018027 n + A011655 n

end

end A018029.P8608283180002231888

namespace A018029

/-- `A018027(n)+A011655(n)` -/
def P8608283180002231888.Spec : Prop :=
  ∀ n, P8608283180002231888.a n = A018029 n

end A018029

/-! ## A018029.P9257371778061392197

`A018027(n)+Δ[A004523(n)]`
-/

namespace A018029.P9257371778061392197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018027 n + (f1 (n + 1) - f1 n)

end

end A018029.P9257371778061392197

namespace A018029

/-- `A018027(n)+Δ[A004523(n)]` -/
def P9257371778061392197.Spec : Prop :=
  ∀ n, P9257371778061392197.a n = A018029 n

end A018029

/-! ## A018029.P17459587111908878245

`A018027(n)+char[A166517(n)]`
-/

namespace A018029.P17459587111908878245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018027 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018029.P17459587111908878245

namespace A018029

/-- `A018027(n)+char[A166517(n)]` -/
def P17459587111908878245.Spec : Prop :=
  ∀ n, P17459587111908878245.a n = A018029 n

end A018029

/-! ## A018029.P12916130952535433403

`A097325(2*n)+A018027(n)`
-/

namespace A018029.P12916130952535433403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (2 * n) + A018027 n

end

end A018029.P12916130952535433403

namespace A018029

/-- `A097325(2*n)+A018027(n)` -/
def P12916130952535433403.Spec : Prop :=
  ∀ n, P12916130952535433403.a n = A018029 n

end A018029

/-! ## A018029.P7568042871235053241

`A018027(n)+and(1, A000032(n))`
-/

namespace A018029.P7568042871235053241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018027 n + Int.land 1 (A000032 n)

end

end A018029.P7568042871235053241

namespace A018029

/-- `A018027(n)+and(1, A000032(n))` -/
def P7568042871235053241.Spec : Prop :=
  ∀ n, P7568042871235053241.a n = A018029 n

end A018029

/-! ## A018029.P14592923030209809972

`A018027(n)+A000035(A002487(n))`
-/

namespace A018029.P14592923030209809972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018027 n + A000035 (A002487 n).toNat

end

end A018029.P14592923030209809972

namespace A018029

/-- `A018027(n)+A000035(A002487(n))` -/
def P14592923030209809972.Spec : Prop :=
  ∀ n, P14592923030209809972.a n = A018029 n

end A018029

/-! ## A018029.P3757365248755713066

`A018027(n)+A000035(A004396(n))`
-/

namespace A018029.P3757365248755713066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018027 n + A000035 (A004396 n).toNat

end

end A018029.P3757365248755713066

namespace A018029

/-- `A018027(n)+A000035(A004396(n))` -/
def P3757365248755713066.Spec : Prop :=
  ∀ n, P3757365248755713066.a n = A018029 n

end A018029

/-! ## A018029.P6367715146813131932

`A018027(n)+A000035(A092942(n))`
-/

namespace A018029.P6367715146813131932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018027 n + A000035 (A092942 n).toNat

end

end A018029.P6367715146813131932

namespace A018029

/-- `A018027(n)+A000035(A092942(n))` -/
def P6367715146813131932.Spec : Prop :=
  ∀ n, P6367715146813131932.a n = A018029 n

end A018029

/-!
# A018030: Powers of cube root of 19 rounded down.

The programs for A018030, the canonical program `A018030.P4560821027132420570` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018030 has offset 0).

The definition of A018030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018030.P4560821027132420570

`floor(19^(n/3))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018030

/-- `floor(19^(n/3))` -/
def P4560821027132420570.Spec : Prop :=
  ∀ n, P4560821027132420570.a n = A018030 n

theorem P4560821027132420570.correct : P4560821027132420570.Spec := by
  intro n
  simp only [A018030]

end A018030

/-! ## A018030.P9090369495473112129

`A018032(n)-n²%3`
-/

namespace A018030.P9090369495473112129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018032 n - ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A018030.P9090369495473112129

namespace A018030

/-- `A018032(n)-n²%3` -/
def P9090369495473112129.Spec : Prop :=
  ∀ n, P9090369495473112129.a n = A018030 n

end A018030

/-! ## A018030.P1622167605242799327

`A018032(n)-A011655(n)`
-/

namespace A018030.P1622167605242799327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018032 n - A011655 n

end

end A018030.P1622167605242799327

namespace A018030

/-- `A018032(n)-A011655(n)` -/
def P1622167605242799327.Spec : Prop :=
  ∀ n, P1622167605242799327.a n = A018030 n

end A018030

/-! ## A018030.P5218133219397113655

`A018032(n)-A128834(n)²`
-/

namespace A018030.P5218133219397113655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018032 n - A128834 n ^ 2

end

end A018030.P5218133219397113655

namespace A018030

/-- `A018032(n)-A128834(n)²` -/
def P5218133219397113655.Spec : Prop :=
  ∀ n, P5218133219397113655.a n = A018030 n

end A018030

/-! ## A018030.P14427360657518532180

`A018032(n)-Δ[A004523(n)]`
-/

namespace A018030.P14427360657518532180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018032 n - (f1 (n + 1) - f1 n)

end

end A018030.P14427360657518532180

namespace A018030

/-- `A018032(n)-Δ[A004523(n)]` -/
def P14427360657518532180.Spec : Prop :=
  ∀ n, P14427360657518532180.a n = A018030 n

end A018030

/-! ## A018030.P8534389064834942598

`A018032(n)-char[A166517(n)]`
-/

namespace A018030.P8534389064834942598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018032 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018030.P8534389064834942598

namespace A018030

/-- `A018032(n)-char[A166517(n)]` -/
def P8534389064834942598.Spec : Prop :=
  ∀ n, P8534389064834942598.a n = A018030 n

end A018030

/-! ## A018030.P10299289987369213578

`A018032(n)-A097325(2*n)`
-/

namespace A018030.P10299289987369213578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018032 n - A097325 (2 * n)

end

end A018030.P10299289987369213578

namespace A018030

/-- `A018032(n)-A097325(2*n)` -/
def P10299289987369213578.Spec : Prop :=
  ∀ n, P10299289987369213578.a n = A018030 n

end A018030

/-! ## A018030.P4245414035343567303

`A018032(n)-A000035(A002487(n))`
-/

namespace A018030.P4245414035343567303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018032 n - A000035 (A002487 n).toNat

end

end A018030.P4245414035343567303

namespace A018030

/-- `A018032(n)-A000035(A002487(n))` -/
def P4245414035343567303.Spec : Prop :=
  ∀ n, P4245414035343567303.a n = A018030 n

end A018030

/-! ## A018030.P15300370706600548889

`A018032(n)-A000035(A004396(n))`
-/

namespace A018030.P15300370706600548889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018032 n - A000035 (A004396 n).toNat

end

end A018030.P15300370706600548889

namespace A018030

/-- `A018032(n)-A000035(A004396(n))` -/
def P15300370706600548889.Spec : Prop :=
  ∀ n, P15300370706600548889.a n = A018030 n

end A018030

/-! ## A018030.P10972604135887384783

`A018032(n)-A000035(A092942(n))`
-/

namespace A018030.P10972604135887384783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018032 n - A000035 (A092942 n).toNat

end

end A018030.P10972604135887384783

namespace A018030

/-- `A018032(n)-A000035(A092942(n))` -/
def P10972604135887384783.Spec : Prop :=
  ∀ n, P10972604135887384783.a n = A018030 n

end A018030

/-!
# A018031: Powers of cube root of 19 rounded to nearest integer.

The programs for A018031, the canonical program `A018031.P16726517439334196273` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018031 has offset 0).

The definition of A018031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018031.P5065847697922848629

`round(19^(n/3))%A300765(n+1)`
-/

namespace A018031.P5065847697922848629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((19 : ℝ) ^ ((n : ℚ) / 3 : ℝ))) (A300765 (n + 1))

end

end A018031.P5065847697922848629

namespace A018031

/-- `round(19^(n/3))%A300765(n+1)` -/
def P5065847697922848629.Spec : Prop :=
  ∀ n, P5065847697922848629.a n = A018031 n

end A018031

/-! ## A018031.P9208585519595696270

`round(sqrt(A018030(2*n)))`
-/

namespace A018031.P9208585519595696270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018030 (2 * n) : ℝ))

end

end A018031.P9208585519595696270

namespace A018031

/-- `round(sqrt(A018030(2*n)))` -/
def P9208585519595696270.Spec : Prop :=
  ∀ n, P9208585519595696270.a n = A018031 n

end A018031

/-! ## A018031.P15634381768817508364

`round(sqrt(A018032(2*n)))`
-/

namespace A018031.P15634381768817508364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018032 (2 * n) : ℝ))

end

end A018031.P15634381768817508364

namespace A018031

/-- `round(sqrt(A018032(2*n)))` -/
def P15634381768817508364.Spec : Prop :=
  ∀ n, P15634381768817508364.a n = A018031 n

end A018031

/-! ## A018031.P16726517439334196273

`floor(A018030(2*n)/A018030(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018031

/-- `floor(A018030(2*n)/A018030(n))` -/
def P16726517439334196273.Spec : Prop :=
  ∀ n, P16726517439334196273.a n = A018031 n

theorem P16726517439334196273.correct : P16726517439334196273.Spec := by
  intro n
  simp only [A018031]

end A018031

/-! ## A018031.P17588301273422073387

`ceil(A018032(2*n)/A018032(n))`
-/

namespace A018031.P17588301273422073387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018032 (2 * n) : ℚ) / (A018032 n : ℚ)⌉

end

end A018031.P17588301273422073387

namespace A018031

/-- `ceil(A018032(2*n)/A018032(n))` -/
def P17588301273422073387.Spec : Prop :=
  ∀ n, P17588301273422073387.a n = A018031 n

end A018031

/-! ## A018031.P659126038492212770

`round(root(A182609(n), 3))`
-/

namespace A018031.P659126038492212770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A182609 n : ℝ) ^ (1 / (3 : ℝ)))

end

end A018031.P659126038492212770

namespace A018031

/-- `round(root(A182609(n), 3))` -/
def P659126038492212770.Spec : Prop :=
  ∀ n, P659126038492212770.a n = A018031 n

end A018031

/-!
# A018032: Powers of cube root of 19 rounded up.

The programs for A018032, the canonical program `A018032.P6828655559062813698` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018032 has offset 0).

The definition of A018032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018032.P1102027138409945391

`ceil(19^(n/3))`
-/

namespace A018032.P1102027138409945391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(19 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉

end

end A018032.P1102027138409945391

namespace A018032

/-- `ceil(19^(n/3))` -/
def P1102027138409945391.Spec : Prop :=
  ∀ n, P1102027138409945391.a n = A018032 n

end A018032

/-! ## A018032.P15626397568491508991

`floor(19^(n/3))+n²%3`
-/

namespace A018032.P15626397568491508991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(19 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋ + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A018032.P15626397568491508991

namespace A018032

/-- `floor(19^(n/3))+n²%3` -/
def P15626397568491508991.Spec : Prop :=
  ∀ n, P15626397568491508991.a n = A018032 n

end A018032

/-! ## A018032.P11907785965090321179

`A011655(n)+floor(19^(n/3))`
-/

namespace A018032.P11907785965090321179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n + ⌊(19 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋

end

end A018032.P11907785965090321179

namespace A018032

/-- `A011655(n)+floor(19^(n/3))` -/
def P11907785965090321179.Spec : Prop :=
  ∀ n, P11907785965090321179.a n = A018032 n

end A018032

/-! ## A018032.P595104852570767284

`floor(19^(n/3))+abs(A102283(n))`
-/

namespace A018032.P595104852570767284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(19 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋ + |A102283 n|

end

end A018032.P595104852570767284

namespace A018032

/-- `floor(19^(n/3))+abs(A102283(n))` -/
def P595104852570767284.Spec : Prop :=
  ∀ n, P595104852570767284.a n = A018032 n

end A018032

/-! ## A018032.P15927473852536566086

`floor(19^(n/3))+abs(A128834(n))`
-/

namespace A018032.P15927473852536566086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(19 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋ + |A128834 n|

end

end A018032.P15927473852536566086

namespace A018032

/-- `floor(19^(n/3))+abs(A128834(n))` -/
def P15927473852536566086.Spec : Prop :=
  ∀ n, P15927473852536566086.a n = A018032 n

end A018032

/-! ## A018032.P6828655559062813698

`A018030(n)+A011655(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018032

/-- `A018030(n)+A011655(n)` -/
def P6828655559062813698.Spec : Prop :=
  ∀ n, P6828655559062813698.a n = A018032 n

theorem P6828655559062813698.correct : P6828655559062813698.Spec := by
  intro n
  simp only [A018032]

end A018032

/-! ## A018032.P5841626168080028477

`A018030(n)+Δ[A004523(n)]`
-/

namespace A018032.P5841626168080028477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018030 n + (f1 (n + 1) - f1 n)

end

end A018032.P5841626168080028477

namespace A018032

/-- `A018030(n)+Δ[A004523(n)]` -/
def P5841626168080028477.Spec : Prop :=
  ∀ n, P5841626168080028477.a n = A018032 n

end A018032

/-! ## A018032.P6186611876005597584

`A018030(n)+char[A166517(n)]`
-/

namespace A018032.P6186611876005597584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018030 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018032.P6186611876005597584

namespace A018032

/-- `A018030(n)+char[A166517(n)]` -/
def P6186611876005597584.Spec : Prop :=
  ∀ n, P6186611876005597584.a n = A018032 n

end A018032

/-! ## A018032.P13587383066147831652

`A097325(2*n)+A018030(n)`
-/

namespace A018032.P13587383066147831652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (2 * n) + A018030 n

end

end A018032.P13587383066147831652

namespace A018032

/-- `A097325(2*n)+A018030(n)` -/
def P13587383066147831652.Spec : Prop :=
  ∀ n, P13587383066147831652.a n = A018032 n

end A018032

/-! ## A018032.P14278639342200174978

`A018030(n)+Δ[A002264(2*n)]`
-/

namespace A018032.P14278639342200174978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018030 n + (f1 (n + 1) - f1 n)

end

end A018032.P14278639342200174978

namespace A018032

/-- `A018030(n)+Δ[A002264(2*n)]` -/
def P14278639342200174978.Spec : Prop :=
  ∀ n, P14278639342200174978.a n = A018032 n

end A018032

/-! ## A018032.P14124132804552519418

`A018030(n)+char[A001651(n+1)]`
-/

namespace A018032.P14124132804552519418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018030 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018032.P14124132804552519418

namespace A018032

/-- `A018030(n)+char[A001651(n+1)]` -/
def P14124132804552519418.Spec : Prop :=
  ∀ n, P14124132804552519418.a n = A018032 n

end A018032

/-! ## A018032.P15504475475284245496

`A018030(n)+A000035(A002487(n))`
-/

namespace A018032.P15504475475284245496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018030 n + A000035 (A002487 n).toNat

end

end A018032.P15504475475284245496

namespace A018032

/-- `A018030(n)+A000035(A002487(n))` -/
def P15504475475284245496.Spec : Prop :=
  ∀ n, P15504475475284245496.a n = A018032 n

end A018032

/-! ## A018032.P6727840188976791184

`A018030(n)+A000035(A004396(n))`
-/

namespace A018032.P6727840188976791184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018030 n + A000035 (A004396 n).toNat

end

end A018032.P6727840188976791184

namespace A018032

/-- `A018030(n)+A000035(A004396(n))` -/
def P6727840188976791184.Spec : Prop :=
  ∀ n, P6727840188976791184.a n = A018032 n

end A018032

/-! ## A018032.P8487930090132260725

`A018030(n)+A000035(A092942(n))`
-/

namespace A018032.P8487930090132260725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018030 n + A000035 (A092942 n).toNat

end

end A018032.P8487930090132260725

namespace A018032

/-- `A018030(n)+A000035(A092942(n))` -/
def P8487930090132260725.Spec : Prop :=
  ∀ n, P8487930090132260725.a n = A018032 n

end A018032

/-!
# A018033: Powers of cube root of 20 rounded down.

The programs for A018033, the canonical program `A018033.P15720440222189732780` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018033 has offset 0).

The definition of A018033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018033.P15720440222189732780

`floor(20^(n/3))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018033

/-- `floor(20^(n/3))` -/
def P15720440222189732780.Spec : Prop :=
  ∀ n, P15720440222189732780.a n = A018033 n

theorem P15720440222189732780.correct : P15720440222189732780.Spec := by
  intro n
  simp only [A018033]

end A018033

/-! ## A018033.P11320186024947982273

`ceil(20^(n/3))-n²%3`
-/

namespace A018033.P11320186024947982273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(20 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉ - ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A018033.P11320186024947982273

namespace A018033

/-- `ceil(20^(n/3))-n²%3` -/
def P11320186024947982273.Spec : Prop :=
  ∀ n, P11320186024947982273.a n = A018033 n

end A018033

/-! ## A018033.P11632024893254183210

`A018035(n)-A011655(n)`
-/

namespace A018033.P11632024893254183210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018035 n - A011655 n

end

end A018033.P11632024893254183210

namespace A018033

/-- `A018035(n)-A011655(n)` -/
def P11632024893254183210.Spec : Prop :=
  ∀ n, P11632024893254183210.a n = A018033 n

end A018033

/-! ## A018033.P13101831916151645808

`A018035(n)-Δ[A004523(n)]`
-/

namespace A018033.P13101831916151645808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018035 n - (f1 (n + 1) - f1 n)

end

end A018033.P13101831916151645808

namespace A018033

/-- `A018035(n)-Δ[A004523(n)]` -/
def P13101831916151645808.Spec : Prop :=
  ∀ n, P13101831916151645808.a n = A018033 n

end A018033

/-! ## A018033.P9109465825878551836

`A018035(n)-char[A166517(n)]`
-/

namespace A018033.P9109465825878551836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018035 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018033.P9109465825878551836

namespace A018033

/-- `A018035(n)-char[A166517(n)]` -/
def P9109465825878551836.Spec : Prop :=
  ∀ n, P9109465825878551836.a n = A018033 n

end A018033

/-! ## A018033.P460493694892516624

`A018035(n)-A097325(2*n)`
-/

namespace A018033.P460493694892516624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018035 n - A097325 (2 * n)

end

end A018033.P460493694892516624

namespace A018033

/-- `A018035(n)-A097325(2*n)` -/
def P460493694892516624.Spec : Prop :=
  ∀ n, P460493694892516624.a n = A018033 n

end A018033

/-! ## A018033.P6247892456598692285

`A018035(n)-A000035(A002487(n))`
-/

namespace A018033.P6247892456598692285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018035 n - A000035 (A002487 n).toNat

end

end A018033.P6247892456598692285

namespace A018033

/-- `A018035(n)-A000035(A002487(n))` -/
def P6247892456598692285.Spec : Prop :=
  ∀ n, P6247892456598692285.a n = A018033 n

end A018033

/-! ## A018033.P12000583105290402359

`A018035(n)-A000035(A004396(n))`
-/

namespace A018033.P12000583105290402359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018035 n - A000035 (A004396 n).toNat

end

end A018033.P12000583105290402359

namespace A018033

/-- `A018035(n)-A000035(A004396(n))` -/
def P12000583105290402359.Spec : Prop :=
  ∀ n, P12000583105290402359.a n = A018033 n

end A018033

/-! ## A018033.P1958100536113195171

`A018035(n)-A000035(A092942(n))`
-/

namespace A018033.P1958100536113195171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018035 n - A000035 (A092942 n).toNat

end

end A018033.P1958100536113195171

namespace A018033

/-- `A018035(n)-A000035(A092942(n))` -/
def P1958100536113195171.Spec : Prop :=
  ∀ n, P1958100536113195171.a n = A018033 n

end A018033

/-!
# A018034: Powers of cube root of 20 rounded to nearest integer.

The programs for A018034, the canonical program `A018034.P5652497311994361569` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018034 has offset 0).

The definition of A018034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018034.P351934015245521545

`round(20^(n/3))%A137713(3*(n+1))`
-/

namespace A018034.P351934015245521545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((20 : ℝ) ^ ((n : ℚ) / 3 : ℝ))) (A137713 (3 * (n + 1)))

end

end A018034.P351934015245521545

namespace A018034

/-- `round(20^(n/3))%A137713(3*(n+1))` -/
def P351934015245521545.Spec : Prop :=
  ∀ n, P351934015245521545.a n = A018034 n

end A018034

/-! ## A018034.P13950188727328271421

`round(round(20^(n/2))^(2/3))`
-/

namespace A018034.P13950188727328271421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((20 : ℝ) ^ ((n : ℚ) / 2 : ℝ)) : ℝ) ^ ((2 : ℚ) / 3 : ℝ))

end

end A018034.P13950188727328271421

namespace A018034

/-- `round(round(20^(n/2))^(2/3))` -/
def P13950188727328271421.Spec : Prop :=
  ∀ n, P13950188727328271421.a n = A018034 n

end A018034

/-! ## A018034.P5652497311994361569

`floor(A018033(2*n)/A018033(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018034

/-- `floor(A018033(2*n)/A018033(n))` -/
def P5652497311994361569.Spec : Prop :=
  ∀ n, P5652497311994361569.a n = A018034 n

theorem P5652497311994361569.correct : P5652497311994361569.Spec := by
  intro n
  simp only [A018034]

end A018034

/-! ## A018034.P17079249861075978584

`ceil(A018035(2*n)/A018035(n))`
-/

namespace A018034.P17079249861075978584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018035 (2 * n) : ℚ) / (A018035 n : ℚ)⌉

end

end A018034.P17079249861075978584

namespace A018034

/-- `ceil(A018035(2*n)/A018035(n))` -/
def P17079249861075978584.Spec : Prop :=
  ∀ n, P17079249861075978584.a n = A018034 n

end A018034

/-! ## A018034.P5431003430636723171

`round(20^(n/3))^A022177(A353428(n))`
-/

namespace A018034.P5431003430636723171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((20 : ℝ) ^ ((n : ℚ) / 3 : ℝ)) : ℚ) ^ (A022177 (A353428 n).toNat : ℤ)

end

end A018034.P5431003430636723171

namespace A018034

/-- `round(20^(n/3))^A022177(A353428(n))` -/
def P5431003430636723171.Spec : Prop :=
  ∀ n, P5431003430636723171.a n = (A018034 n : ℚ)

end A018034

/-!
# A018035: Powers of cube root of 20 rounded up.

The programs for A018035, the canonical program `A018035.P9055610647671047137` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018035 has offset 0).

The definition of A018035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018035.P795665808551884664

`ceil(20^(n/3))`
-/

namespace A018035.P795665808551884664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(20 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉

end

end A018035.P795665808551884664

namespace A018035

/-- `ceil(20^(n/3))` -/
def P795665808551884664.Spec : Prop :=
  ∀ n, P795665808551884664.a n = A018035 n

end A018035

/-! ## A018035.P203771551195493474

`floor(20^(n/3))+n²%3`
-/

namespace A018035.P203771551195493474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(20 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋ + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A018035.P203771551195493474

namespace A018035

/-- `floor(20^(n/3))+n²%3` -/
def P203771551195493474.Spec : Prop :=
  ∀ n, P203771551195493474.a n = A018035 n

end A018035

/-! ## A018035.P9055610647671047137

`A018033(n)+A011655(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018035

/-- `A018033(n)+A011655(n)` -/
def P9055610647671047137.Spec : Prop :=
  ∀ n, P9055610647671047137.a n = A018035 n

theorem P9055610647671047137.correct : P9055610647671047137.Spec := by
  intro n
  simp only [A018035]

end A018035

/-! ## A018035.P13504205798968936415

`A018033(n)+A128834(n)²`
-/

namespace A018035.P13504205798968936415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018033 n + A128834 n ^ 2

end

end A018035.P13504205798968936415

namespace A018035

/-- `A018033(n)+A128834(n)²` -/
def P13504205798968936415.Spec : Prop :=
  ∀ n, P13504205798968936415.a n = A018035 n

end A018035

/-! ## A018035.P8852424364921513209

`A018033(n)+Δ[A004523(n)]`
-/

namespace A018035.P8852424364921513209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018033 n + (f1 (n + 1) - f1 n)

end

end A018035.P8852424364921513209

namespace A018035

/-- `A018033(n)+Δ[A004523(n)]` -/
def P8852424364921513209.Spec : Prop :=
  ∀ n, P8852424364921513209.a n = A018035 n

end A018035

/-! ## A018035.P575089650121668534

`A018033(n)+char[A166517(n)]`
-/

namespace A018035.P575089650121668534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018033 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018035.P575089650121668534

namespace A018035

/-- `A018033(n)+char[A166517(n)]` -/
def P575089650121668534.Spec : Prop :=
  ∀ n, P575089650121668534.a n = A018035 n

end A018035

/-! ## A018035.P11566420599872491276

`A097325(2*n)+A018033(n)`
-/

namespace A018035.P11566420599872491276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (2 * n) + A018033 n

end

end A018035.P11566420599872491276

namespace A018035

/-- `A097325(2*n)+A018033(n)` -/
def P11566420599872491276.Spec : Prop :=
  ∀ n, P11566420599872491276.a n = A018035 n

end A018035

/-! ## A018035.P16970432096408279627

`A018033(n)+A000035(A002487(n))`
-/

namespace A018035.P16970432096408279627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018033 n + A000035 (A002487 n).toNat

end

end A018035.P16970432096408279627

namespace A018035

/-- `A018033(n)+A000035(A002487(n))` -/
def P16970432096408279627.Spec : Prop :=
  ∀ n, P16970432096408279627.a n = A018035 n

end A018035

/-! ## A018035.P8152337939485051337

`A018033(n)+A000035(A004396(n))`
-/

namespace A018035.P8152337939485051337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018033 n + A000035 (A004396 n).toNat

end

end A018035.P8152337939485051337

namespace A018035

/-- `A018033(n)+A000035(A004396(n))` -/
def P8152337939485051337.Spec : Prop :=
  ∀ n, P8152337939485051337.a n = A018035 n

end A018035

/-! ## A018035.P3167658132358463045

`A018033(n)+A000035(A092942(n))`
-/

namespace A018035.P3167658132358463045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018033 n + A000035 (A092942 n).toNat

end

end A018035.P3167658132358463045

namespace A018035

/-- `A018033(n)+A000035(A092942(n))` -/
def P3167658132358463045.Spec : Prop :=
  ∀ n, P3167658132358463045.a n = A018035 n

end A018035

/-!
# A018036: Powers of cube root of 21 rounded down.

The programs for A018036, the canonical program `A018036.P15418198874529348123` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018036 has offset 0).

The definition of A018036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018036.P15418198874529348123

`floor(21^(n/3))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018036

/-- `floor(21^(n/3))` -/
def P15418198874529348123.Spec : Prop :=
  ∀ n, P15418198874529348123.a n = A018036 n

theorem P15418198874529348123.correct : P15418198874529348123.Spec := by
  intro n
  simp only [A018036]

end A018036

/-! ## A018036.P8661529446213314608

`A018038(n)-n²%3`
-/

namespace A018036.P8661529446213314608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018038 n - ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A018036.P8661529446213314608

namespace A018036

/-- `A018038(n)-n²%3` -/
def P8661529446213314608.Spec : Prop :=
  ∀ n, P8661529446213314608.a n = A018036 n

end A018036

/-! ## A018036.P3370956695854038799

`A018038(n)-A011655(n)`
-/

namespace A018036.P3370956695854038799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018038 n - A011655 n

end

end A018036.P3370956695854038799

namespace A018036

/-- `A018038(n)-A011655(n)` -/
def P3370956695854038799.Spec : Prop :=
  ∀ n, P3370956695854038799.a n = A018036 n

end A018036

/-! ## A018036.P3669880248846027070

`A018038(n)-A092220(n)²`
-/

namespace A018036.P3669880248846027070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018038 n - A092220 n ^ 2

end

end A018036.P3669880248846027070

namespace A018036

/-- `A018038(n)-A092220(n)²` -/
def P3669880248846027070.Spec : Prop :=
  ∀ n, P3669880248846027070.a n = A018036 n

end A018036

/-! ## A018036.P18254360999732797068

`A018038(n)-A102283(n)²`
-/

namespace A018036.P18254360999732797068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018038 n - A102283 n ^ 2

end

end A018036.P18254360999732797068

namespace A018036

/-- `A018038(n)-A102283(n)²` -/
def P18254360999732797068.Spec : Prop :=
  ∀ n, P18254360999732797068.a n = A018036 n

end A018036

/-! ## A018036.P884835819903889303

`A018038(n)-Δ[A004523(n)]`
-/

namespace A018036.P884835819903889303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018038 n - (f1 (n + 1) - f1 n)

end

end A018036.P884835819903889303

namespace A018036

/-- `A018038(n)-Δ[A004523(n)]` -/
def P884835819903889303.Spec : Prop :=
  ∀ n, P884835819903889303.a n = A018036 n

end A018036

/-! ## A018036.P5813251759004337283

`A018038(n)-char[A166517(n)]`
-/

namespace A018036.P5813251759004337283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018038 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018036.P5813251759004337283

namespace A018036

/-- `A018038(n)-char[A166517(n)]` -/
def P5813251759004337283.Spec : Prop :=
  ∀ n, P5813251759004337283.a n = A018036 n

end A018036

/-! ## A018036.P2811437983904895429

`A018038(n)-A097325(2*n)`
-/

namespace A018036.P2811437983904895429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018038 n - A097325 (2 * n)

end

end A018036.P2811437983904895429

namespace A018036

/-- `A018038(n)-A097325(2*n)` -/
def P2811437983904895429.Spec : Prop :=
  ∀ n, P2811437983904895429.a n = A018036 n

end A018036

/-! ## A018036.P890228514472075464

`A018038(n)-A000035(A002487(n))`
-/

namespace A018036.P890228514472075464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018038 n - A000035 (A002487 n).toNat

end

end A018036.P890228514472075464

namespace A018036

/-- `A018038(n)-A000035(A002487(n))` -/
def P890228514472075464.Spec : Prop :=
  ∀ n, P890228514472075464.a n = A018036 n

end A018036

/-! ## A018036.P7358976252745383788

`A018038(n)-A000035(A004396(n))`
-/

namespace A018036.P7358976252745383788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018038 n - A000035 (A004396 n).toNat

end

end A018036.P7358976252745383788

namespace A018036

/-- `A018038(n)-A000035(A004396(n))` -/
def P7358976252745383788.Spec : Prop :=
  ∀ n, P7358976252745383788.a n = A018036 n

end A018036

/-! ## A018036.P14460119720316010217

`A018038(n)-A000035(A092942(n))`
-/

namespace A018036.P14460119720316010217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018038 n - A000035 (A092942 n).toNat

end

end A018036.P14460119720316010217

namespace A018036

/-- `A018038(n)-A000035(A092942(n))` -/
def P14460119720316010217.Spec : Prop :=
  ∀ n, P14460119720316010217.a n = A018036 n

end A018036

/-! ## A018036.P6300633340148434142

`A018030(n)+A018038(n)-A018032(n)`
-/

namespace A018036.P6300633340148434142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018030 n + (A018038 n - A018032 n)

end

end A018036.P6300633340148434142

namespace A018036

/-- `A018030(n)+A018038(n)-A018032(n)` -/
def P6300633340148434142.Spec : Prop :=
  ∀ n, P6300633340148434142.a n = A018036 n

end A018036

/-!
# A018037: Powers of cube root of 21 rounded to nearest integer.

The programs for A018037, the canonical program `A018037.P11225067572236605742` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018037 has offset 0).

The definition of A018037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018037.P11225067572236605742

`round(21^(n/3))%A183712(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018037

/-- `round(21^(n/3))%A183712(n+1)` -/
def P11225067572236605742.Spec : Prop :=
  ∀ n, P11225067572236605742.a n = A018037 n

theorem P11225067572236605742.correct : P11225067572236605742.Spec := by
  intro n
  simp only [A018037]

end A018037

/-! ## A018037.P6848881976056521151

`round(sqrt(A018036(2*n)))`
-/

namespace A018037.P6848881976056521151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018036 (2 * n) : ℝ))

end

end A018037.P6848881976056521151

namespace A018037

/-- `round(sqrt(A018036(2*n)))` -/
def P6848881976056521151.Spec : Prop :=
  ∀ n, P6848881976056521151.a n = A018037 n

end A018037

/-! ## A018037.P5436540798607646608

`round(sqrt(A018038(2*n)))`
-/

namespace A018037.P5436540798607646608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018038 (2 * n) : ℝ))

end

end A018037.P5436540798607646608

namespace A018037

/-- `round(sqrt(A018038(2*n)))` -/
def P5436540798607646608.Spec : Prop :=
  ∀ n, P5436540798607646608.a n = A018037 n

end A018037

/-! ## A018037.P13640782452945944227

`floor(A018036(2*n)/A018036(n))`
-/

namespace A018037.P13640782452945944227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018036 (2 * n) : ℚ) / (A018036 n : ℚ)⌋

end

end A018037.P13640782452945944227

namespace A018037

/-- `floor(A018036(2*n)/A018036(n))` -/
def P13640782452945944227.Spec : Prop :=
  ∀ n, P13640782452945944227.a n = A018037 n

end A018037

/-! ## A018037.P13411667911353377943

`round(21^(n/3))%A001555(n)`
-/

namespace A018037.P13411667911353377943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((21 : ℝ) ^ ((n : ℚ) / 3 : ℝ))) (A001555 n)

end

end A018037.P13411667911353377943

namespace A018037

/-- `round(21^(n/3))%A001555(n)` -/
def P13411667911353377943.Spec : Prop :=
  ∀ n, P13411667911353377943.a n = A018037 n

end A018037

/-! ## A018037.P3016889684892835831

`round(root(A009965(n), 3))`
-/

namespace A018037.P3016889684892835831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A009965 n : ℝ) ^ (1 / (3 : ℝ)))

end

end A018037.P3016889684892835831

namespace A018037

/-- `round(root(A009965(n), 3))` -/
def P3016889684892835831.Spec : Prop :=
  ∀ n, P3016889684892835831.a n = A018037 n

end A018037

/-!
# A018038: Powers of cube root of 21 rounded up.

The programs for A018038, the canonical program `A018038.P14270364732823888752` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018038 has offset 0).

The definition of A018038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018038.P2368312947822398184

`ceil(21^(n/3))`
-/

namespace A018038.P2368312947822398184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(21 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉

end

end A018038.P2368312947822398184

namespace A018038

/-- `ceil(21^(n/3))` -/
def P2368312947822398184.Spec : Prop :=
  ∀ n, P2368312947822398184.a n = A018038 n

end A018038

/-! ## A018038.P14270364732823888752

`A018036(n)+A011655(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018038

/-- `A018036(n)+A011655(n)` -/
def P14270364732823888752.Spec : Prop :=
  ∀ n, P14270364732823888752.a n = A018038 n

theorem P14270364732823888752.correct : P14270364732823888752.Spec := by
  intro n
  simp only [A018038]

end A018038

/-! ## A018038.P1363360798181637113

`A018036(n)+abs(A128834(n))`
-/

namespace A018038.P1363360798181637113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018036 n + |A128834 n|

end

end A018038.P1363360798181637113

namespace A018038

/-- `A018036(n)+abs(A128834(n))` -/
def P1363360798181637113.Spec : Prop :=
  ∀ n, P1363360798181637113.a n = A018038 n

end A018038

/-! ## A018038.P7680165780783974070

`A204418(n+1)+A018036(n)`
-/

namespace A018038.P7680165780783974070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204418 (n + 1) + A018036 n

end

end A018038.P7680165780783974070

namespace A018038

/-- `A204418(n+1)+A018036(n)` -/
def P7680165780783974070.Spec : Prop :=
  ∀ n, P7680165780783974070.a n = A018038 n

end A018038

/-! ## A018038.P1625653779737527245

`A018036(n)+and(1, A000211(n))`
-/

namespace A018038.P1625653779737527245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018036 n + Int.land 1 (A000211 n)

end

end A018038.P1625653779737527245

namespace A018038

/-- `A018036(n)+and(1, A000211(n))` -/
def P1625653779737527245.Spec : Prop :=
  ∀ n, P1625653779737527245.a n = A018038 n

end A018038

/-! ## A018038.P2442533308836726819

`A018036(n)+and(1, A004396(n))`
-/

namespace A018038.P2442533308836726819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018036 n + Int.land 1 (A004396 n)

end

end A018038.P2442533308836726819

namespace A018038

/-- `A018036(n)+and(1, A004396(n))` -/
def P2442533308836726819.Spec : Prop :=
  ∀ n, P2442533308836726819.a n = A018038 n

end A018038

/-! ## A018038.P16112899641730168488

`A018036(n)+and(1, A092942(n))`
-/

namespace A018038.P16112899641730168488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018036 n + Int.land 1 (A092942 n)

end

end A018038.P16112899641730168488

namespace A018038

/-- `A018036(n)+and(1, A092942(n))` -/
def P16112899641730168488.Spec : Prop :=
  ∀ n, P16112899641730168488.a n = A018038 n

end A018038

/-! ## A018038.P16990154279967238477

`A018036(n)+char[A038502(n+1)]`
-/

namespace A018038.P16990154279967238477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018036 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018038.P16990154279967238477

namespace A018038

/-- `A018036(n)+char[A038502(n+1)]` -/
def P16990154279967238477.Spec : Prop :=
  ∀ n, P16990154279967238477.a n = A018038 n

end A018038

/-!
# A018039: Powers of cube root of 22 rounded down.

The programs for A018039, the canonical program `A018039.P10423894034091347797` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018039 has offset 0).

The definition of A018039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018039.P10423894034091347797

`floor(22^(n/3))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018039

/-- `floor(22^(n/3))` -/
def P10423894034091347797.Spec : Prop :=
  ∀ n, P10423894034091347797.a n = A018039 n

theorem P10423894034091347797.correct : P10423894034091347797.Spec := by
  intro n
  simp only [A018039]

end A018039

/-! ## A018039.P11416781449968461449

`A018041(n)-A011655(n)`
-/

namespace A018039.P11416781449968461449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018041 n - A011655 n

end

end A018039.P11416781449968461449

namespace A018039

/-- `A018041(n)-A011655(n)` -/
def P11416781449968461449.Spec : Prop :=
  ∀ n, P11416781449968461449.a n = A018039 n

end A018039

/-! ## A018039.P15551379122790039360

`A018041(n)-A092220(n)²`
-/

namespace A018039.P15551379122790039360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018041 n - A092220 n ^ 2

end

end A018039.P15551379122790039360

namespace A018039

/-- `A018041(n)-A092220(n)²` -/
def P15551379122790039360.Spec : Prop :=
  ∀ n, P15551379122790039360.a n = A018039 n

end A018039

/-! ## A018039.P9961664061159120002

`A018041(n)-A102283(n)²`
-/

namespace A018039.P9961664061159120002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018041 n - A102283 n ^ 2

end

end A018039.P9961664061159120002

namespace A018039

/-- `A018041(n)-A102283(n)²` -/
def P9961664061159120002.Spec : Prop :=
  ∀ n, P9961664061159120002.a n = A018039 n

end A018039

/-! ## A018039.P3940720889677477973

`A018041(n)-A128834(n)²`
-/

namespace A018039.P3940720889677477973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018041 n - A128834 n ^ 2

end

end A018039.P3940720889677477973

namespace A018039

/-- `A018041(n)-A128834(n)²` -/
def P3940720889677477973.Spec : Prop :=
  ∀ n, P3940720889677477973.a n = A018039 n

end A018039

/-! ## A018039.P14491304033977762973

`A018041(n)-Δ[A004523(n)]`
-/

namespace A018039.P14491304033977762973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018041 n - (f1 (n + 1) - f1 n)

end

end A018039.P14491304033977762973

namespace A018039

/-- `A018041(n)-Δ[A004523(n)]` -/
def P14491304033977762973.Spec : Prop :=
  ∀ n, P14491304033977762973.a n = A018039 n

end A018039

/-! ## A018039.P63321913848649553

`A092220(2*n)+A018041(n)`
-/

namespace A018039.P63321913848649553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 (2 * n) + A018041 n

end

end A018039.P63321913848649553

namespace A018039

/-- `A092220(2*n)+A018041(n)` -/
def P63321913848649553.Spec : Prop :=
  ∀ n, P63321913848649553.a n = A018039 n

end A018039

/-! ## A018039.P8543535688541584733

`A018041(n)-char[A001651(n+1)]`
-/

namespace A018039.P8543535688541584733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018041 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018039.P8543535688541584733

namespace A018039

/-- `A018041(n)-char[A001651(n+1)]` -/
def P8543535688541584733.Spec : Prop :=
  ∀ n, P8543535688541584733.a n = A018039 n

end A018039

/-!
# A018040: Powers of cube root of 22 rounded to nearest integer.

The programs for A018040, the canonical program `A018040.P12584903542677254656` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018040 has offset 0).

The definition of A018040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018040.P12584903542677254656

`round(22^(n/3))%A106257(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A018040

/-- `round(22^(n/3))%A106257(n+1)` -/
def P12584903542677254656.Spec : Prop :=
  ∀ n, P12584903542677254656.a n = A018040 n

theorem P12584903542677254656.correct : P12584903542677254656.Spec := by
  intro n
  simp only [A018040]

end A018040

/-! ## A018040.P14911402512243892213

`round(sqrt(A018039(2*n)))`
-/

namespace A018040.P14911402512243892213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018039 (2 * n) : ℝ))

end

end A018040.P14911402512243892213

namespace A018040

/-- `round(sqrt(A018039(2*n)))` -/
def P14911402512243892213.Spec : Prop :=
  ∀ n, P14911402512243892213.a n = A018040 n

end A018040

/-! ## A018040.P18024714029048160013

`round(sqrt(A018041(2*n)))`
-/

namespace A018040.P18024714029048160013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018041 (2 * n) : ℝ))

end

end A018040.P18024714029048160013

namespace A018040

/-- `round(sqrt(A018041(2*n)))` -/
def P18024714029048160013.Spec : Prop :=
  ∀ n, P18024714029048160013.a n = A018040 n

end A018040

/-! ## A018040.P11571122695325609512

`round(sqrt(22^(A005843(n)/3)))`
-/

namespace A018040.P11571122695325609512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((22 : ℝ) ^ ((A005843 n : ℚ) / 3 : ℝ)))

end

end A018040.P11571122695325609512

namespace A018040

/-- `round(sqrt(22^(A005843(n)/3)))` -/
def P11571122695325609512.Spec : Prop :=
  ∀ n, P11571122695325609512.a n = A018040 n

end A018040

/-! ## A018040.P7530210667363858858

`floor(A018039(2*n)/A018039(n))`
-/

namespace A018040.P7530210667363858858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018039 (2 * n) : ℚ) / (A018039 n : ℚ)⌋

end

end A018040.P7530210667363858858

namespace A018040

/-- `floor(A018039(2*n)/A018039(n))` -/
def P7530210667363858858.Spec : Prop :=
  ∀ n, P7530210667363858858.a n = A018040 n

end A018040

/-! ## A018040.P14476671301776093830

`ceil(A018041(2*n)/A018041(n))`
-/

namespace A018040.P14476671301776093830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018041 (2 * n) : ℚ) / (A018041 n : ℚ)⌉

end

end A018040.P14476671301776093830

namespace A018040

/-- `ceil(A018041(2*n)/A018041(n))` -/
def P14476671301776093830.Spec : Prop :=
  ∀ n, P14476671301776093830.a n = A018040 n

end A018040

/-!
# A018041: Powers of cube root of 22 rounded up.

The programs for A018041, the canonical program `A018041.P12813239236874280382` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018041 has offset 0).

The definition of A018041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018041.P14046142077598700433

`ceil(22^(n/3))`
-/

namespace A018041.P14046142077598700433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(22 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉

end

end A018041.P14046142077598700433

namespace A018041

/-- `ceil(22^(n/3))` -/
def P14046142077598700433.Spec : Prop :=
  ∀ n, P14046142077598700433.a n = A018041 n

end A018041

/-! ## A018041.P12813239236874280382

`A018039(n)+n²%3`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018041

/-- `A018039(n)+n²%3` -/
def P12813239236874280382.Spec : Prop :=
  ∀ n, P12813239236874280382.a n = A018041 n

theorem P12813239236874280382.correct : P12813239236874280382.Spec := by
  intro n
  simp only [A018041]

end A018041

/-! ## A018041.P6947224609300562228

`A011655(n)+floor(22^(n/3))`
-/

namespace A018041.P6947224609300562228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n + ⌊(22 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋

end

end A018041.P6947224609300562228

namespace A018041

/-- `A011655(n)+floor(22^(n/3))` -/
def P6947224609300562228.Spec : Prop :=
  ∀ n, P6947224609300562228.a n = A018041 n

end A018041

/-! ## A018041.P362089196823323180

`floor(22^(n/3))+abs(A102283(n))`
-/

namespace A018041.P362089196823323180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(22 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋ + |A102283 n|

end

end A018041.P362089196823323180

namespace A018041

/-- `floor(22^(n/3))+abs(A102283(n))` -/
def P362089196823323180.Spec : Prop :=
  ∀ n, P362089196823323180.a n = A018041 n

end A018041

/-! ## A018041.P548605128032929678

`floor(22^(n/3))+abs(A128834(n))`
-/

namespace A018041.P548605128032929678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(22 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋ + |A128834 n|

end

end A018041.P548605128032929678

namespace A018041

/-- `floor(22^(n/3))+abs(A128834(n))` -/
def P548605128032929678.Spec : Prop :=
  ∀ n, P548605128032929678.a n = A018041 n

end A018041

/-! ## A018041.P10988733472512097348

`A018039(n)+A011655(n)`
-/

namespace A018041.P10988733472512097348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018039 n + A011655 n

end

end A018041.P10988733472512097348

namespace A018041

/-- `A018039(n)+A011655(n)` -/
def P10988733472512097348.Spec : Prop :=
  ∀ n, P10988733472512097348.a n = A018041 n

end A018041

/-! ## A018041.P17844523187133139647

`A018039(n)+Δ[A004523(n)]`
-/

namespace A018041.P17844523187133139647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018039 n + (f1 (n + 1) - f1 n)

end

end A018041.P17844523187133139647

namespace A018041

/-- `A018039(n)+Δ[A004523(n)]` -/
def P17844523187133139647.Spec : Prop :=
  ∀ n, P17844523187133139647.a n = A018041 n

end A018041

/-! ## A018041.P6760631553328565625

`A018039(n)+char[A166517(n)]`
-/

namespace A018041.P6760631553328565625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018039 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018041.P6760631553328565625

namespace A018041

/-- `A018039(n)+char[A166517(n)]` -/
def P6760631553328565625.Spec : Prop :=
  ∀ n, P6760631553328565625.a n = A018041 n

end A018041

/-! ## A018041.P9359447342391549859

`A097325(2*n)+A018039(n)`
-/

namespace A018041.P9359447342391549859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (2 * n) + A018039 n

end

end A018041.P9359447342391549859

namespace A018041

/-- `A097325(2*n)+A018039(n)` -/
def P9359447342391549859.Spec : Prop :=
  ∀ n, P9359447342391549859.a n = A018041 n

end A018041

/-! ## A018041.P3260973049536618671

`A018039(n)+A000035(A002487(n))`
-/

namespace A018041.P3260973049536618671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018039 n + A000035 (A002487 n).toNat

end

end A018041.P3260973049536618671

namespace A018041

/-- `A018039(n)+A000035(A002487(n))` -/
def P3260973049536618671.Spec : Prop :=
  ∀ n, P3260973049536618671.a n = A018041 n

end A018041

/-! ## A018041.P16291404293348900752

`A018039(n)+A000035(A004396(n))`
-/

namespace A018041.P16291404293348900752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018039 n + A000035 (A004396 n).toNat

end

end A018041.P16291404293348900752

namespace A018041

/-- `A018039(n)+A000035(A004396(n))` -/
def P16291404293348900752.Spec : Prop :=
  ∀ n, P16291404293348900752.a n = A018041 n

end A018041

/-! ## A018041.P7981862261124818272

`A018039(n)+A000035(A092942(n))`
-/

namespace A018041.P7981862261124818272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018039 n + A000035 (A092942 n).toNat

end

end A018041.P7981862261124818272

namespace A018041

/-- `A018039(n)+A000035(A092942(n))` -/
def P7981862261124818272.Spec : Prop :=
  ∀ n, P7981862261124818272.a n = A018041 n

end A018041

/-!
# A018042: Powers of cube root of 23 rounded down.

The programs for A018042, the canonical program `A018042.P3459466618623817975` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018042 has offset 0).

The definition of A018042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018042.P3459466618623817975

`floor(23^(n/3))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018042

/-- `floor(23^(n/3))` -/
def P3459466618623817975.Spec : Prop :=
  ∀ n, P3459466618623817975.a n = A018042 n

theorem P3459466618623817975.correct : P3459466618623817975.Spec := by
  intro n
  simp only [A018042]

end A018042

/-! ## A018042.P8542488583113209137

`A018044(n)-n²%3`
-/

namespace A018042.P8542488583113209137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018044 n - ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A018042.P8542488583113209137

namespace A018042

/-- `A018044(n)-n²%3` -/
def P8542488583113209137.Spec : Prop :=
  ∀ n, P8542488583113209137.a n = A018042 n

end A018042

/-! ## A018042.P13803882497677246360

`A018044(n)-A011655(n)`
-/

namespace A018042.P13803882497677246360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018044 n - A011655 n

end

end A018042.P13803882497677246360

namespace A018042

/-- `A018044(n)-A011655(n)` -/
def P13803882497677246360.Spec : Prop :=
  ∀ n, P13803882497677246360.a n = A018042 n

end A018042

/-! ## A018042.P10365810529757188082

`A018044(n)-abs(A102283(n))`
-/

namespace A018042.P10365810529757188082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018044 n - |A102283 n|

end

end A018042.P10365810529757188082

namespace A018042

/-- `A018044(n)-abs(A102283(n))` -/
def P10365810529757188082.Spec : Prop :=
  ∀ n, P10365810529757188082.a n = A018042 n

end A018042

/-! ## A018042.P11346578479374075106

`A018044(n)-Δ[A004523(n)]`
-/

namespace A018042.P11346578479374075106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018044 n - (f1 (n + 1) - f1 n)

end

end A018042.P11346578479374075106

namespace A018042

/-- `A018044(n)-Δ[A004523(n)]` -/
def P11346578479374075106.Spec : Prop :=
  ∀ n, P11346578479374075106.a n = A018042 n

end A018042

/-! ## A018042.P8795170927487172413

`A018044(n)-char[A166517(n)]`
-/

namespace A018042.P8795170927487172413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018044 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018042.P8795170927487172413

namespace A018042

/-- `A018044(n)-char[A166517(n)]` -/
def P8795170927487172413.Spec : Prop :=
  ∀ n, P8795170927487172413.a n = A018042 n

end A018042

/-! ## A018042.P16070771884816777048

`A018044(n)-A097325(2*n)`
-/

namespace A018042.P16070771884816777048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018044 n - A097325 (2 * n)

end

end A018042.P16070771884816777048

namespace A018042

/-- `A018044(n)-A097325(2*n)` -/
def P16070771884816777048.Spec : Prop :=
  ∀ n, P16070771884816777048.a n = A018042 n

end A018042

/-! ## A018042.P5440137516006496590

`A018044(n)-char[A001651(n+1)]`
-/

namespace A018042.P5440137516006496590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018044 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018042.P5440137516006496590

namespace A018042

/-- `A018044(n)-char[A001651(n+1)]` -/
def P5440137516006496590.Spec : Prop :=
  ∀ n, P5440137516006496590.a n = A018042 n

end A018042

/-! ## A018042.P8960747248562758599

`A018044(n)-A000035(A002487(n))`
-/

namespace A018042.P8960747248562758599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018044 n - A000035 (A002487 n).toNat

end

end A018042.P8960747248562758599

namespace A018042

/-- `A018044(n)-A000035(A002487(n))` -/
def P8960747248562758599.Spec : Prop :=
  ∀ n, P8960747248562758599.a n = A018042 n

end A018042

/-! ## A018042.P6022194974708889161

`A018044(n)-A000035(A004396(n))`
-/

namespace A018042.P6022194974708889161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018044 n - A000035 (A004396 n).toNat

end

end A018042.P6022194974708889161

namespace A018042

/-- `A018044(n)-A000035(A004396(n))` -/
def P6022194974708889161.Spec : Prop :=
  ∀ n, P6022194974708889161.a n = A018042 n

end A018042

/-! ## A018042.P3568695586229495018

`A018044(n)-A000035(A092942(n))`
-/

namespace A018042.P3568695586229495018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018044 n - A000035 (A092942 n).toNat

end

end A018042.P3568695586229495018

namespace A018042

/-- `A018044(n)-A000035(A092942(n))` -/
def P3568695586229495018.Spec : Prop :=
  ∀ n, P3568695586229495018.a n = A018042 n

end A018042

/-! ## A018042.P18365073279416312069

`A018044(n)-A000035(A066481(n+3))`
-/

namespace A018042.P18365073279416312069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018044 n - A000035 (A066481 (n + 3)).toNat

end

end A018042.P18365073279416312069

namespace A018042

/-- `A018044(n)-A000035(A066481(n+3))` -/
def P18365073279416312069.Spec : Prop :=
  ∀ n, P18365073279416312069.a n = A018042 n

end A018042

/-! ## A018042.P1497453984636699556

`A018044(n)-A102283(n²)`
-/

namespace A018042.P1497453984636699556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018044 n - A102283 (n ^ 2)

end

end A018042.P1497453984636699556

namespace A018042

/-- `A018044(n)-A102283(n²)` -/
def P1497453984636699556.Spec : Prop :=
  ∀ n, P1497453984636699556.a n = A018042 n

end A018042

/-!
# A018043: Powers of cube root of 23 rounded to nearest integer.

The programs for A018043, the canonical program `A018043.P7123361039262672170` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018043 has offset 0).

The definition of A018043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018043.P7123361039262672170

`round(23^(n/3))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018043

/-- `round(23^(n/3))` -/
def P7123361039262672170.Spec : Prop :=
  ∀ n, P7123361039262672170.a n = A018043 n

theorem P7123361039262672170.correct : P7123361039262672170.Spec := by
  intro n
  simp only [A018043]

end A018043

/-! ## A018043.P1353042989784534510

`A033999(n)²*round(sqrt(A018042(2*n)))`
-/

namespace A018043.P1353042989784534510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * SequenceMachineLib.roundAway (Real.sqrt (A018042 (2 * n) : ℝ))

end

end A018043.P1353042989784534510

namespace A018043

/-- `A033999(n)²*round(sqrt(A018042(2*n)))` -/
def P1353042989784534510.Spec : Prop :=
  ∀ n, P1353042989784534510.a n = A018043 n

end A018043

/-! ## A018043.P8869869408571507236

`A178334(n)!*round(sqrt(A018042(2*n)))`
-/

namespace A018043.P8869869408571507236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A178334 n).toNat : ℤ) * SequenceMachineLib.roundAway (Real.sqrt (A018042 (2 * n) : ℝ))

end

end A018043.P8869869408571507236

namespace A018043

/-- `A178334(n)!*round(sqrt(A018042(2*n)))` -/
def P8869869408571507236.Spec : Prop :=
  ∀ n, P8869869408571507236.a n = A018043 n

end A018043

/-! ## A018043.P14176611073537803225

`round(sqrt(A018042(2*n)))*A033999(2*n)`
-/

namespace A018043.P14176611073537803225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018042 (2 * n) : ℝ)) * A033999 (2 * n)

end

end A018043.P14176611073537803225

namespace A018043

/-- `round(sqrt(A018042(2*n)))*A033999(2*n)` -/
def P14176611073537803225.Spec : Prop :=
  ∀ n, P14176611073537803225.a n = A018043 n

end A018043

/-! ## A018043.P13442132584631982275

`round(sqrt(A018042(2*n)))%A207124(n+1)`
-/

namespace A018043.P13442132584631982275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A018042 (2 * n) : ℝ))) (A207124 (n + 1))

end

end A018043.P13442132584631982275

namespace A018043

/-- `round(sqrt(A018042(2*n)))%A207124(n+1)` -/
def P13442132584631982275.Spec : Prop :=
  ∀ n, P13442132584631982275.a n = A018043 n

end A018043

/-! ## A018043.P11621166210469903853

`round(sqrt(A018042(2*n)))*A040790(2*n+1)`
-/

namespace A018043.P11621166210469903853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018042 (2 * n) : ℝ)) * A040790 (2 * n + 1)

end

end A018043.P11621166210469903853

namespace A018043

/-- `round(sqrt(A018042(2*n)))*A040790(2*n+1)` -/
def P11621166210469903853.Spec : Prop :=
  ∀ n, P11621166210469903853.a n = A018043 n

end A018043

/-! ## A018043.P4553758534187322562

`round(sqrt(A018042(2*n)))%A179477(n)`
-/

namespace A018043.P4553758534187322562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A018042 (2 * n) : ℝ))) (A179477 n)

end

end A018043.P4553758534187322562

namespace A018043

/-- `round(sqrt(A018042(2*n)))%A179477(n)` -/
def P4553758534187322562.Spec : Prop :=
  ∀ n, P4553758534187322562.a n = A018043 n

end A018043

/-!
# A018044: Powers of cube root of 23 rounded up.

The programs for A018044, the canonical program `A018044.P17736943157866595348` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018044 has offset 0).

The definition of A018044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018044.P8664565526155373546

`floor(23^(n/3))+n²%3`
-/

namespace A018044.P8664565526155373546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(23 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋ + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A018044.P8664565526155373546

namespace A018044

/-- `floor(23^(n/3))+n²%3` -/
def P8664565526155373546.Spec : Prop :=
  ∀ n, P8664565526155373546.a n = A018044 n

end A018044

/-! ## A018044.P17736943157866595348

`A018042(n)+A011655(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018044

/-- `A018042(n)+A011655(n)` -/
def P17736943157866595348.Spec : Prop :=
  ∀ n, P17736943157866595348.a n = A018044 n

theorem P17736943157866595348.correct : P17736943157866595348.Spec := by
  intro n
  simp only [A018044]

end A018044

/-! ## A018044.P18424592066830534184

`A018042(n)+abs(A102283(n))`
-/

namespace A018044.P18424592066830534184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018042 n + |A102283 n|

end

end A018044.P18424592066830534184

namespace A018044

/-- `A018042(n)+abs(A102283(n))` -/
def P18424592066830534184.Spec : Prop :=
  ∀ n, P18424592066830534184.a n = A018044 n

end A018044

/-! ## A018044.P15507089037825482203

`A018042(n)+Δ[A004523(n)]`
-/

namespace A018044.P15507089037825482203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018042 n + (f1 (n + 1) - f1 n)

end

end A018044.P15507089037825482203

namespace A018044

/-- `A018042(n)+Δ[A004523(n)]` -/
def P15507089037825482203.Spec : Prop :=
  ∀ n, P15507089037825482203.a n = A018044 n

end A018044

/-! ## A018044.P3822422033520645304

`A018042(n)+char[A166517(n)]`
-/

namespace A018044.P3822422033520645304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018042 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018044.P3822422033520645304

namespace A018044

/-- `A018042(n)+char[A166517(n)]` -/
def P3822422033520645304.Spec : Prop :=
  ∀ n, P3822422033520645304.a n = A018044 n

end A018044

/-! ## A018044.P8517061857263828751

`A097325(2*n)+A018042(n)`
-/

namespace A018044.P8517061857263828751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (2 * n) + A018042 n

end

end A018044.P8517061857263828751

namespace A018044

/-- `A097325(2*n)+A018042(n)` -/
def P8517061857263828751.Spec : Prop :=
  ∀ n, P8517061857263828751.a n = A018044 n

end A018044

/-! ## A018044.P12779430394057353722

`A018042(n)+char[A001651(n+1)]`
-/

namespace A018044.P12779430394057353722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018042 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018044.P12779430394057353722

namespace A018044

/-- `A018042(n)+char[A001651(n+1)]` -/
def P12779430394057353722.Spec : Prop :=
  ∀ n, P12779430394057353722.a n = A018044 n

end A018044

/-! ## A018044.P2552268283348241856

`A018042(n)+A000035(A002487(n))`
-/

namespace A018044.P2552268283348241856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018042 n + A000035 (A002487 n).toNat

end

end A018044.P2552268283348241856

namespace A018044

/-- `A018042(n)+A000035(A002487(n))` -/
def P2552268283348241856.Spec : Prop :=
  ∀ n, P2552268283348241856.a n = A018044 n

end A018044

/-! ## A018044.P16669085359788390611

`A018042(n)+A000035(A004396(n))`
-/

namespace A018044.P16669085359788390611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018042 n + A000035 (A004396 n).toNat

end

end A018044.P16669085359788390611

namespace A018044

/-- `A018042(n)+A000035(A004396(n))` -/
def P16669085359788390611.Spec : Prop :=
  ∀ n, P16669085359788390611.a n = A018044 n

end A018044

/-! ## A018044.P11376938157945568263

`A018042(n)+A000035(A092942(n))`
-/

namespace A018044.P11376938157945568263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018042 n + A000035 (A092942 n).toNat

end

end A018044.P11376938157945568263

namespace A018044

/-- `A018042(n)+A000035(A092942(n))` -/
def P11376938157945568263.Spec : Prop :=
  ∀ n, P11376938157945568263.a n = A018044 n

end A018044

/-! ## A018044.P2235020082271130487

`A018042(n)+A000035(A066481(n+3))`
-/

namespace A018044.P2235020082271130487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018042 n + A000035 (A066481 (n + 3)).toNat

end

end A018044.P2235020082271130487

namespace A018044

/-- `A018042(n)+A000035(A066481(n+3))` -/
def P2235020082271130487.Spec : Prop :=
  ∀ n, P2235020082271130487.a n = A018044 n

end A018044

/-! ## A018044.P11246340287169911190

`ceil(sqrt(A018042(2*n)))`
-/

namespace A018044.P11246340287169911190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A018042 (2 * n) : ℝ)⌉

end

end A018044.P11246340287169911190

namespace A018044

/-- `ceil(sqrt(A018042(2*n)))` -/
def P11246340287169911190.Spec : Prop :=
  ∀ n, P11246340287169911190.a n = A018044 n

end A018044

/-! ## A018044.P2093957336743844828

`ceil(sqrt(A018043(2*n)))`
-/

namespace A018044.P2093957336743844828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A018043 (2 * n) : ℝ)⌉

end

end A018044.P2093957336743844828

namespace A018044

/-- `ceil(sqrt(A018043(2*n)))` -/
def P2093957336743844828.Spec : Prop :=
  ∀ n, P2093957336743844828.a n = A018044 n

end A018044

/-! ## A018044.P8719878724287042822

`ceil(A018043(2*n)/A018043(n))`
-/

namespace A018044.P8719878724287042822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018043 (2 * n) : ℚ) / (A018043 n : ℚ)⌉

end

end A018044.P8719878724287042822

namespace A018044

/-- `ceil(A018043(2*n)/A018043(n))` -/
def P8719878724287042822.Spec : Prop :=
  ∀ n, P8719878724287042822.a n = A018044 n

end A018044

/-! ## A018044.P6976365864725925591

`A102283(n²)+A018042(n)`
-/

namespace A018044.P6976365864725925591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (n ^ 2) + A018042 n

end

end A018044.P6976365864725925591

namespace A018044

/-- `A102283(n²)+A018042(n)` -/
def P6976365864725925591.Spec : Prop :=
  ∀ n, P6976365864725925591.a n = A018044 n

end A018044

/-!
# A018045: Powers of cube root of 24 rounded down.

The programs for A018045, the canonical program `A018045.P11791116757497946798` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018045 has offset 0).

The definition of A018045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018045.P11791116757497946798

`floor(24^(n/3))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018045

/-- `floor(24^(n/3))` -/
def P11791116757497946798.Spec : Prop :=
  ∀ n, P11791116757497946798.a n = A018045 n

theorem P11791116757497946798.correct : P11791116757497946798.Spec := by
  intro n
  simp only [A018045]

end A018045

/-! ## A018045.P9029073364132313302

`ceil(24^(n/3))-n²%3`
-/

namespace A018045.P9029073364132313302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(24 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉ - ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A018045.P9029073364132313302

namespace A018045

/-- `ceil(24^(n/3))-n²%3` -/
def P9029073364132313302.Spec : Prop :=
  ∀ n, P9029073364132313302.a n = A018045 n

end A018045

/-! ## A018045.P7596769549797831861

`A018047(n)-A011655(n)`
-/

namespace A018045.P7596769549797831861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018047 n - A011655 n

end

end A018045.P7596769549797831861

namespace A018045

/-- `A018047(n)-A011655(n)` -/
def P7596769549797831861.Spec : Prop :=
  ∀ n, P7596769549797831861.a n = A018045 n

end A018045

/-! ## A018045.P3228154397537055908

`A018047(n)-abs(A092220(n))`
-/

namespace A018045.P3228154397537055908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018047 n - |A092220 n|

end

end A018045.P3228154397537055908

namespace A018045

/-- `A018047(n)-abs(A092220(n))` -/
def P3228154397537055908.Spec : Prop :=
  ∀ n, P3228154397537055908.a n = A018045 n

end A018045

/-! ## A018045.P17251833802130728503

`A018047(n)-abs(A102283(n))`
-/

namespace A018045.P17251833802130728503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018047 n - |A102283 n|

end

end A018045.P17251833802130728503

namespace A018045

/-- `A018047(n)-abs(A102283(n))` -/
def P17251833802130728503.Spec : Prop :=
  ∀ n, P17251833802130728503.a n = A018045 n

end A018045

/-! ## A018045.P14753221838401071116

`A018047(n)-abs(A128834(n))`
-/

namespace A018045.P14753221838401071116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018047 n - |A128834 n|

end

end A018045.P14753221838401071116

namespace A018045

/-- `A018047(n)-abs(A128834(n))` -/
def P14753221838401071116.Spec : Prop :=
  ∀ n, P14753221838401071116.a n = A018045 n

end A018045

/-! ## A018045.P8566805315097097118

`A018047(n)-Δ[A004523(n)]`
-/

namespace A018045.P8566805315097097118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018047 n - (f1 (n + 1) - f1 n)

end

end A018045.P8566805315097097118

namespace A018045

/-- `A018047(n)-Δ[A004523(n)]` -/
def P8566805315097097118.Spec : Prop :=
  ∀ n, P8566805315097097118.a n = A018045 n

end A018045

/-! ## A018045.P898343181802058331

`A018047(n)-A204418(n+1)`
-/

namespace A018045.P898343181802058331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018047 n - A204418 (n + 1)

end

end A018045.P898343181802058331

namespace A018045

/-- `A018047(n)-A204418(n+1)` -/
def P898343181802058331.Spec : Prop :=
  ∀ n, P898343181802058331.a n = A018045 n

end A018045

/-! ## A018045.P11261867234758372327

`A092220(2*n)+A018047(n)`
-/

namespace A018045.P11261867234758372327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 (2 * n) + A018047 n

end

end A018045.P11261867234758372327

namespace A018045

/-- `A092220(2*n)+A018047(n)` -/
def P11261867234758372327.Spec : Prop :=
  ∀ n, P11261867234758372327.a n = A018045 n

end A018045

/-! ## A018045.P15454078098942652499

`A018047(n)-Δ[A002264(2*n)]`
-/

namespace A018045.P15454078098942652499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018047 n - (f1 (n + 1) - f1 n)

end

end A018045.P15454078098942652499

namespace A018045

/-- `A018047(n)-Δ[A002264(2*n)]` -/
def P15454078098942652499.Spec : Prop :=
  ∀ n, P15454078098942652499.a n = A018045 n

end A018045

/-! ## A018045.P11155448753585145842

`A018039(n)+A018047(n)-A018041(n)`
-/

namespace A018045.P11155448753585145842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018039 n + (A018047 n - A018041 n)

end

end A018045.P11155448753585145842

namespace A018045

/-- `A018039(n)+A018047(n)-A018041(n)` -/
def P11155448753585145842.Spec : Prop :=
  ∀ n, P11155448753585145842.a n = A018045 n

end A018045

/-! ## A018045.P7784950726650876352

`A018047(n)-lcm(A054977(n), A128834(n))`
-/

namespace A018045.P7784950726650876352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018047 n - (Int.lcm (A054977 n) (A128834 n) : ℤ)

end

end A018045.P7784950726650876352

namespace A018045

/-- `A018047(n)-lcm(A054977(n), A128834(n))` -/
def P7784950726650876352.Spec : Prop :=
  ∀ n, P7784950726650876352.a n = A018045 n

end A018045

/-! ## A018045.P15151527093556897549

`A018047(n)-A102283(n²)`
-/

namespace A018045.P15151527093556897549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018047 n - A102283 (n ^ 2)

end

end A018045.P15151527093556897549

namespace A018045

/-- `A018047(n)-A102283(n²)` -/
def P15151527093556897549.Spec : Prop :=
  ∀ n, P15151527093556897549.a n = A018045 n

end A018045

/-!
# A018046: Powers of cube root of 24 rounded to nearest integer.

The programs for A018046, the canonical program `A018046.P4298966318019453348` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018046 has offset 0).

The definition of A018046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018046.P4298966318019453348

`round((2*root(3, 3))^n)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018046

/-- `round((2*root(3, 3))^n)` -/
def P4298966318019453348.Spec : Prop :=
  ∀ n, P4298966318019453348.a n = A018046 n

theorem P4298966318019453348.correct : P4298966318019453348.Spec := by
  intro n
  simp only [A018046]

end A018046

/-! ## A018046.P9504651476517761467

`round(24^(n/3))+A112556(n)%A033999(n)`
-/

namespace A018046.P9504651476517761467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((24 : ℝ) ^ ((n : ℚ) / 3 : ℝ)) + Int.tmod (A112556 n) (A033999 n)

end

end A018046.P9504651476517761467

namespace A018046

/-- `round(24^(n/3))+A112556(n)%A033999(n)` -/
def P9504651476517761467.Spec : Prop :=
  ∀ n, P9504651476517761467.a n = A018046 n

end A018046

/-! ## A018046.P13667325368198792060

`round(24^(n/3))%A254463(n)`
-/

namespace A018046.P13667325368198792060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((24 : ℝ) ^ ((n : ℚ) / 3 : ℝ))) (A254463 n)

end

end A018046.P13667325368198792060

namespace A018046

/-- `round(24^(n/3))%A254463(n)` -/
def P13667325368198792060.Spec : Prop :=
  ∀ n, P13667325368198792060.a n = A018046 n

end A018046

/-! ## A018046.P16369246027015096924

`ceil(A018047(2*n)/A018047(n))`
-/

namespace A018046.P16369246027015096924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018047 (2 * n) : ℚ) / (A018047 n : ℚ)⌉

end

end A018046.P16369246027015096924

namespace A018046

/-- `ceil(A018047(2*n)/A018047(n))` -/
def P16369246027015096924.Spec : Prop :=
  ∀ n, P16369246027015096924.a n = A018046 n

end A018046

/-! ## A018046.P5869406467059348445

`round(24^(n/3))+A150607(n)%A033999(n)`
-/

namespace A018046.P5869406467059348445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((24 : ℝ) ^ ((n : ℚ) / 3 : ℝ)) + Int.tmod (A150607 n) (A033999 n)

end

end A018046.P5869406467059348445

namespace A018046

/-- `round(24^(n/3))+A150607(n)%A033999(n)` -/
def P5869406467059348445.Spec : Prop :=
  ∀ n, P5869406467059348445.a n = A018046 n

end A018046

/-!
# A018047: Powers of cube root of 24 rounded up.

The programs for A018047, the canonical program `A018047.P6361301627475973376` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018047 has offset 0).

The definition of A018047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018047.P7881793917695945952

`ceil(24^(n/3))`
-/

namespace A018047.P7881793917695945952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(24 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉

end

end A018047.P7881793917695945952

namespace A018047

/-- `ceil(24^(n/3))` -/
def P7881793917695945952.Spec : Prop :=
  ∀ n, P7881793917695945952.a n = A018047 n

end A018047

/-! ## A018047.P11238848224281956548

`floor(24^(n/3))+n²%3`
-/

namespace A018047.P11238848224281956548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(24 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋ + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A018047.P11238848224281956548

namespace A018047

/-- `floor(24^(n/3))+n²%3` -/
def P11238848224281956548.Spec : Prop :=
  ∀ n, P11238848224281956548.a n = A018047 n

end A018047

/-! ## A018047.P17378395786288999987

`A011655(n)+floor(24^(n/3))`
-/

namespace A018047.P17378395786288999987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n + ⌊(24 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋

end

end A018047.P17378395786288999987

namespace A018047

/-- `A011655(n)+floor(24^(n/3))` -/
def P17378395786288999987.Spec : Prop :=
  ∀ n, P17378395786288999987.a n = A018047 n

end A018047

/-! ## A018047.P7209383825699046329

`floor(24^(n/3))+abs(A102283(n))`
-/

namespace A018047.P7209383825699046329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(24 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋ + |A102283 n|

end

end A018047.P7209383825699046329

namespace A018047

/-- `floor(24^(n/3))+abs(A102283(n))` -/
def P7209383825699046329.Spec : Prop :=
  ∀ n, P7209383825699046329.a n = A018047 n

end A018047

/-! ## A018047.P3168981408697375331

`floor(24^(n/3))+abs(A128834(n))`
-/

namespace A018047.P3168981408697375331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(24 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋ + |A128834 n|

end

end A018047.P3168981408697375331

namespace A018047

/-- `floor(24^(n/3))+abs(A128834(n))` -/
def P3168981408697375331.Spec : Prop :=
  ∀ n, P3168981408697375331.a n = A018047 n

end A018047

/-! ## A018047.P6361301627475973376

`A018045(n)+A011655(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018047

/-- `A018045(n)+A011655(n)` -/
def P6361301627475973376.Spec : Prop :=
  ∀ n, P6361301627475973376.a n = A018047 n

theorem P6361301627475973376.correct : P6361301627475973376.Spec := by
  intro n
  simp only [A018047]

end A018047

/-! ## A018047.P9136485691353984376

`A018045(n)+abs(A092220(n))`
-/

namespace A018047.P9136485691353984376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018045 n + |A092220 n|

end

end A018047.P9136485691353984376

namespace A018047

/-- `A018045(n)+abs(A092220(n))` -/
def P9136485691353984376.Spec : Prop :=
  ∀ n, P9136485691353984376.a n = A018047 n

end A018047

/-! ## A018047.P5749025981001412436

`A018045(n)+Δ[A004523(n)]`
-/

namespace A018047.P5749025981001412436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018045 n + (f1 (n + 1) - f1 n)

end

end A018047.P5749025981001412436

namespace A018047

/-- `A018045(n)+Δ[A004523(n)]` -/
def P5749025981001412436.Spec : Prop :=
  ∀ n, P5749025981001412436.a n = A018047 n

end A018047

/-! ## A018047.P8297147830587061267

`A018045(n)-A092220(2*n)`
-/

namespace A018047.P8297147830587061267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018045 n - A092220 (2 * n)

end

end A018047.P8297147830587061267

namespace A018047

/-- `A018045(n)-A092220(2*n)` -/
def P8297147830587061267.Spec : Prop :=
  ∀ n, P8297147830587061267.a n = A018047 n

end A018047

/-! ## A018047.P17322681172705409725

`A018045(n)+A000035(A002487(n))`
-/

namespace A018047.P17322681172705409725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018045 n + A000035 (A002487 n).toNat

end

end A018047.P17322681172705409725

namespace A018047

/-- `A018045(n)+A000035(A002487(n))` -/
def P17322681172705409725.Spec : Prop :=
  ∀ n, P17322681172705409725.a n = A018047 n

end A018047

/-! ## A018047.P17305858747019692696

`A018045(n)+A000035(A004396(n))`
-/

namespace A018047.P17305858747019692696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018045 n + A000035 (A004396 n).toNat

end

end A018047.P17305858747019692696

namespace A018047

/-- `A018045(n)+A000035(A004396(n))` -/
def P17305858747019692696.Spec : Prop :=
  ∀ n, P17305858747019692696.a n = A018047 n

end A018047

/-! ## A018047.P1447781611964003711

`A018026(n)+A018045(n)-A018024(n)`
-/

namespace A018047.P1447781611964003711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018026 n + (A018045 n - A018024 n)

end

end A018047.P1447781611964003711

namespace A018047

/-- `A018026(n)+A018045(n)-A018024(n)` -/
def P1447781611964003711.Spec : Prop :=
  ∀ n, P1447781611964003711.a n = A018047 n

end A018047

/-!
# A018048: Powers of fourth root of 2 rounded down.

The programs for A018048, the canonical program `A018048.P631130173082114317` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018048 has offset 0).

The definition of A018048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018048.P631130173082114317

`floor(2^(n/4))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018048

/-- `floor(2^(n/4))` -/
def P631130173082114317.Spec : Prop :=
  ∀ n, P631130173082114317.a n = A018048 n

theorem P631130173082114317.correct : P631130173082114317.Spec := by
  intro n
  simp only [A018048]

end A018048

/-! ## A018048.P13262553432153359733

`A018050(n)-A166486(n)`
-/

namespace A018048.P13262553432153359733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018050 n - A166486 n

end

end A018048.P13262553432153359733

namespace A018048

/-- `A018050(n)-A166486(n)` -/
def P13262553432153359733.Spec : Prop :=
  ∀ n, P13262553432153359733.a n = A018048 n

end A018048

/-! ## A018048.P13752504697274322058

`A018050(n)+A018066(n)-A018068(n)`
-/

namespace A018048.P13752504697274322058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018050 n + (A018066 n - A018068 n)

end

end A018048.P13752504697274322058

namespace A018048

/-- `A018050(n)+A018066(n)-A018068(n)` -/
def P13752504697274322058.Spec : Prop :=
  ∀ n, P13752504697274322058.a n = A018048 n

end A018048

/-! ## A018048.P17092117341775134513

`ceil(sqrt(sqrt(A000051(n))))-1`
-/

namespace A018048.P17092117341775134513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A000051 n : ℝ))⌉ - 1

end

end A018048.P17092117341775134513

namespace A018048

/-- `ceil(sqrt(sqrt(A000051(n))))-1` -/
def P17092117341775134513.Spec : Prop :=
  ∀ n, P17092117341775134513.a n = A018048 n

end A018048

/-! ## A018048.P9624061731463483364

`ceil(sqrt(sqrt(A052531(n))))-1`
-/

namespace A018048.P9624061731463483364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A052531 n : ℝ))⌉ - 1

end

end A018048.P9624061731463483364

namespace A018048

/-- `ceil(sqrt(sqrt(A052531(n))))-1` -/
def P9624061731463483364.Spec : Prop :=
  ∀ n, P9624061731463483364.a n = A018048 n

end A018048

/-! ## A018048.P18224856546150128838

`ceil(sqrt(sqrt(A052957(n))))-1`
-/

namespace A018048.P18224856546150128838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A052957 n : ℝ))⌉ - 1

end

end A018048.P18224856546150128838

namespace A018048

/-- `ceil(sqrt(sqrt(A052957(n))))-1` -/
def P18224856546150128838.Spec : Prop :=
  ∀ n, P18224856546150128838.a n = A018048 n

end A018048

/-! ## A018048.P15065839732761026898

`ceil(sqrt(sqrt(A357751(n))))-1`
-/

namespace A018048.P15065839732761026898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A357751 n : ℝ))⌉ - 1

end

end A018048.P15065839732761026898

namespace A018048

/-- `ceil(sqrt(sqrt(A357751(n))))-1` -/
def P15065839732761026898.Spec : Prop :=
  ∀ n, P15065839732761026898.a n = A018048 n

end A018048

/-! ## A018048.P10088541302069611587

`ceil(sqrt(sqrt(A185376(n+1))))-1`
-/

namespace A018048.P10088541302069611587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A185376 (n + 1) : ℝ))⌉ - 1

end

end A018048.P10088541302069611587

namespace A018048

/-- `ceil(sqrt(sqrt(A185376(n+1))))-1` -/
def P10088541302069611587.Spec : Prop :=
  ∀ n, P10088541302069611587.a n = A018048 n

end A018048

/-! ## A018048.P17806731213262457492

`abs(floor(root(A000225(n)+1, 4))-1)+1`
-/

namespace A018048.P17806731213262457492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(A000225 n + 1 : ℝ) ^ (1 / (4 : ℝ))⌋ - 1| + 1

end

end A018048.P17806731213262457492

namespace A018048

/-- `abs(floor(root(A000225(n)+1, 4))-1)+1` -/
def P17806731213262457492.Spec : Prop :=
  ∀ n, P17806731213262457492.a n = A018048 n

end A018048

/-! ## A018048.P14044438296358193933

`A000027(floor(sqrt(sqrt(2^n+1))))`
-/

namespace A018048.P14044438296358193933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌊Real.sqrt (Real.sqrt (2 ^ n + 1 : ℝ))⌋.toNat

end

end A018048.P14044438296358193933

namespace A018048

/-- `A000027(floor(sqrt(sqrt(2^n+1))))` -/
def P14044438296358193933.Spec : Prop :=
  ∀ n, P14044438296358193933.a n = A018048 n

end A018048

/-!
# A018049: Powers of fourth root of 2 rounded to nearest integer.

The programs for A018049, the canonical program `A018049.P9155946535238031673` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018049 has offset 0).

The definition of A018049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1285 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018049.P8469557073948390073

`round(2^(n/4))`
-/

namespace A018049.P8469557073948390073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℝ) ^ ((n : ℚ) / 4 : ℝ))

end

end A018049.P8469557073948390073

namespace A018049

/-- `round(2^(n/4))` -/
def P8469557073948390073.Spec : Prop :=
  ∀ n, P8469557073948390073.a n = A018049 n

end A018049

/-! ## A018049.P9155946535238031673

`A018048(A020705(n))-A018048(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018049

/-- `A018048(A020705(n))-A018048(n)` -/
def P9155946535238031673.Spec : Prop :=
  ∀ n, P9155946535238031673.a n = A018049 n

theorem P9155946535238031673.correct : P9155946535238031673.Spec := by
  intro n
  simp only [A018049]

end A018049

/-! ## A018049.P9464537428317608412

`ceil(A018050(2*n)/A018050(n))`
-/

namespace A018049.P9464537428317608412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018050 (2 * n) : ℚ) / (A018050 n : ℚ)⌉

end

end A018049.P9464537428317608412

namespace A018049

/-- `ceil(A018050(2*n)/A018050(n))` -/
def P9464537428317608412.Spec : Prop :=
  ∀ n, P9464537428317608412.a n = A018049 n

end A018049

/-! ## A018049.P2026166086955482370

`round(root(A000079(n), 4))%A000051(n)`
-/

namespace A018049.P2026166086955482370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000079 n : ℝ) ^ (1 / (4 : ℝ)))) (A000051 n)

end

end A018049.P2026166086955482370

namespace A018049

/-- `round(root(A000079(n), 4))%A000051(n)` -/
def P2026166086955482370.Spec : Prop :=
  ∀ n, P2026166086955482370.a n = A018049 n

end A018049

/-! ## A018049.P17594709483491277995

`A000035(2*n)+round(root(A000079(n), 4))`
-/

namespace A018049.P17594709483491277995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + SequenceMachineLib.roundAway ((A000079 n : ℝ) ^ (1 / (4 : ℝ)))

end

end A018049.P17594709483491277995

namespace A018049

/-- `A000035(2*n)+round(root(A000079(n), 4))` -/
def P17594709483491277995.Spec : Prop :=
  ∀ n, P17594709483491277995.a n = A018049 n

end A018049

/-! ## A018049.P16761749340297513209

`round(root(A000051(n), 4))%A000031(n+1)`
-/

namespace A018049.P16761749340297513209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000051 n : ℝ) ^ (1 / (4 : ℝ)))) (A000031 (n + 1))

end

end A018049.P16761749340297513209

namespace A018049

/-- `round(root(A000051(n), 4))%A000031(n+1)` -/
def P16761749340297513209.Spec : Prop :=
  ∀ n, P16761749340297513209.a n = A018049 n

end A018049

/-! ## A018049.P14051283132967652944

`A015549(2*n+1)+round(root(A000079(n), 4))`
-/

namespace A018049.P14051283132967652944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015549 (2 * n + 1) + SequenceMachineLib.roundAway ((A000079 n : ℝ) ^ (1 / (4 : ℝ)))

end

end A018049.P14051283132967652944

namespace A018049

/-- `A015549(2*n+1)+round(root(A000079(n), 4))` -/
def P14051283132967652944.Spec : Prop :=
  ∀ n, P14051283132967652944.a n = A018049 n

end A018049

/-! ## A018049.P1781356341009477096

`round(root(A000079(n), 4))*A001511(2*n+1)`
-/

namespace A018049.P1781356341009477096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000079 n : ℝ) ^ (1 / (4 : ℝ))) * A001511 (2 * n + 1)

end

end A018049.P1781356341009477096

namespace A018049

/-- `round(root(A000079(n), 4))*A001511(2*n+1)` -/
def P1781356341009477096.Spec : Prop :=
  ∀ n, P1781356341009477096.a n = A018049 n

end A018049

/-! ## A018049.P5623664030016636852

`A000027(round(sqrt(sqrt(2)^n)))`
-/

namespace A018049.P5623664030016636852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (2 : ℝ) ^ n))).toNat

end

end A018049.P5623664030016636852

namespace A018049

/-- `A000027(round(sqrt(sqrt(2)^n)))` -/
def P5623664030016636852.Spec : Prop :=
  ∀ n, P5623664030016636852.a n = A018049 n

end A018049

/-! ## A018049.P11196326457246433391

`A028310(round(sqrt(A017911(n))))`
-/

namespace A018049.P11196326457246433391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (Real.sqrt (A017911 n : ℝ))).toNat

end

end A018049.P11196326457246433391

namespace A018049

/-- `A028310(round(sqrt(A017911(n))))` -/
def P11196326457246433391.Spec : Prop :=
  ∀ n, P11196326457246433391.a n = A018049 n

end A018049

/-!
# A018050: Powers of fourth root of 2 rounded up.

The programs for A018050, the canonical program `A018050.P7202811115113250674` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018050 has offset 0).

The definition of A018050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018050.P487729746663801618

`ceil(2^(n/4))`
-/

namespace A018050.P487729746663801618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉

end

end A018050.P487729746663801618

namespace A018050

/-- `ceil(2^(n/4))` -/
def P487729746663801618.Spec : Prop :=
  ∀ n, P487729746663801618.a n = A018050 n

end A018050

/-! ## A018050.P7202811115113250674

`A166486(n)+A018048(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018050

/-- `A166486(n)+A018048(n)` -/
def P7202811115113250674.Spec : Prop :=
  ∀ n, P7202811115113250674.a n = A018050 n

theorem P7202811115113250674.correct : P7202811115113250674.Spec := by
  intro n
  simp only [A018050]

end A018050

/-! ## A018050.P1635326747527344691

`A018048(n)+A075553(n)²`
-/

namespace A018050.P1635326747527344691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018048 n + A075553 n ^ 2

end

end A018050.P1635326747527344691

namespace A018050

/-- `A018048(n)+A075553(n)²` -/
def P1635326747527344691.Spec : Prop :=
  ∀ n, P1635326747527344691.a n = A018050 n

end A018050

/-! ## A018050.P11173325650582330314

`A018048(n)+A032527(n)%2`
-/

namespace A018050.P11173325650582330314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018048 n + Int.tmod (A032527 n) 2

end

end A018050.P11173325650582330314

namespace A018050

/-- `A018048(n)+A032527(n)%2` -/
def P11173325650582330314.Spec : Prop :=
  ∀ n, P11173325650582330314.a n = A018050 n

end A018050

/-! ## A018050.P9658052329026157968

`floor(sqrt(sqrt(2^n-a(n-1))))+1` with `a(0)=1`
-/

namespace A018050.P9658052329026157968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.sqrt (Real.sqrt ((2 ^ n : ℤ) - a (n - 1) : ℝ))⌋ + 1

end

end A018050.P9658052329026157968

namespace A018050

/-- `floor(sqrt(sqrt(2^n-a(n-1))))+1` -/
def P9658052329026157968.Spec : Prop :=
  ∀ n, P9658052329026157968.a n = A018050 n

end A018050

/-! ## A018050.P8557659015717664376

`a(n-1)+ceil(sqrt(sqrt(2^n))-a(n-1))` with `a(0)=1`
-/

namespace A018050.P8557659015717664376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌈Real.sqrt (Real.sqrt (2 ^ n : ℝ)) - (a (n - 1) : ℝ)⌉

end

end A018050.P8557659015717664376

namespace A018050

/-- `a(n-1)+ceil(sqrt(sqrt(2^n))-a(n-1))` -/
def P8557659015717664376.Spec : Prop :=
  ∀ n, P8557659015717664376.a n = A018050 n

end A018050

/-! ## A018050.P687484391604654284

`a(n-1)-floor(a(n-1)-sqrt(sqrt(2^n)))` with `a(0)=1`
-/

namespace A018050.P687484391604654284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ⌊(a (n - 1) : ℝ) - Real.sqrt (Real.sqrt (2 ^ n : ℝ))⌋

end

end A018050.P687484391604654284

namespace A018050

/-- `a(n-1)-floor(a(n-1)-sqrt(sqrt(2^n)))` -/
def P687484391604654284.Spec : Prop :=
  ∀ n, P687484391604654284.a n = A018050 n

end A018050

/-! ## A018050.P5319960098338900082

`floor(sqrt(sqrt(A000225(n))))+1`
-/

namespace A018050.P5319960098338900082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A000225 n : ℝ))⌋ + 1

end

end A018050.P5319960098338900082

namespace A018050

/-- `floor(sqrt(sqrt(A000225(n))))+1` -/
def P5319960098338900082.Spec : Prop :=
  ∀ n, P5319960098338900082.a n = A018050 n

end A018050

/-! ## A018050.P12603664415383530074

`ceil(sqrt(sqrt(2^n)))%A000051(n)`
-/

namespace A018050.P12603664415383530074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (Real.sqrt (2 ^ n : ℝ))⌉ (A000051 n)

end

end A018050.P12603664415383530074

namespace A018050

/-- `ceil(sqrt(sqrt(2^n)))%A000051(n)` -/
def P12603664415383530074.Spec : Prop :=
  ∀ n, P12603664415383530074.a n = A018050 n

end A018050

/-!
# A018051: Powers of fourth root of 3 rounded down.

The programs for A018051, the canonical program `A018051.P9620246204428925504` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018051 has offset 0).

The definition of A018051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 839 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018051.P9620246204428925504

`floor(3^(n/4))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018051

/-- `floor(3^(n/4))` -/
def P9620246204428925504.Spec : Prop :=
  ∀ n, P9620246204428925504.a n = A018051 n

theorem P9620246204428925504.correct : P9620246204428925504.Spec := by
  intro n
  simp only [A018051]

end A018051

/-! ## A018051.P1815825439786830677

`A018053(n)-A166486(n)`
-/

namespace A018051.P1815825439786830677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018053 n - A166486 n

end

end A018051.P1815825439786830677

namespace A018051

/-- `A018053(n)-A166486(n)` -/
def P1815825439786830677.Spec : Prop :=
  ∀ n, P1815825439786830677.a n = A018051 n

end A018051

/-! ## A018051.P1384183673809034138

`A018053(n)-A059841(A008619(n)*A059841(n))`
-/

namespace A018051.P1384183673809034138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018053 n - A059841 (A008619 n * A059841 n).toNat

end

end A018051.P1384183673809034138

namespace A018051

/-- `A018053(n)-A059841(A008619(n)*A059841(n))` -/
def P1384183673809034138.Spec : Prop :=
  ∀ n, P1384183673809034138.a n = A018051 n

end A018051

/-! ## A018051.P62025885289603370

`A018053(n)+A018060(n)-A018062(n)`
-/

namespace A018051.P62025885289603370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018053 n + (A018060 n - A018062 n)

end

end A018051.P62025885289603370

namespace A018051

/-- `A018053(n)+A018060(n)-A018062(n)` -/
def P62025885289603370.Spec : Prop :=
  ∀ n, P62025885289603370.a n = A018051 n

end A018051

/-! ## A018051.P16188285652613457401

`A000007(n+1)+floor(sqrt(A017913(n)))`
-/

namespace A018051.P16188285652613457401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + Int.sqrt (A017913 n)

end

end A018051.P16188285652613457401

namespace A018051

/-- `A000007(n+1)+floor(sqrt(A017913(n)))` -/
def P16188285652613457401.Spec : Prop :=
  ∀ n, P16188285652613457401.a n = A018051 n

end A018051

/-! ## A018051.P7146564931705901639

`ceil(sqrt(sqrt(A102345(n))))-1`
-/

namespace A018051.P7146564931705901639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A102345 n : ℝ))⌉ - 1

end

end A018051.P7146564931705901639

namespace A018051

/-- `ceil(sqrt(sqrt(A102345(n))))-1` -/
def P7146564931705901639.Spec : Prop :=
  ∀ n, P7146564931705901639.a n = A018051 n

end A018051

/-! ## A018051.P14559709962571654994

`ceil(sqrt(sqrt(A318609(n+1))))-1`
-/

namespace A018051.P14559709962571654994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A318609 (n + 1) : ℝ))⌉ - 1

end

end A018051.P14559709962571654994

namespace A018051

/-- `ceil(sqrt(sqrt(A318609(n+1))))-1` -/
def P14559709962571654994.Spec : Prop :=
  ∀ n, P14559709962571654994.a n = A018051 n

end A018051

/-! ## A018051.P15067221237072011401

`A018053(n)-A059841(∑[A008619(n)])`
-/

namespace A018051.P15067221237072011401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018053 n - A059841 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A018051.P15067221237072011401

namespace A018051

/-- `A018053(n)-A059841(∑[A008619(n)])` -/
def P15067221237072011401.Spec : Prop :=
  ∀ n, P15067221237072011401.a n = A018051 n

end A018051

/-!
# A018052: Powers of fourth root of 3 rounded to nearest integer.

The programs for A018052, the canonical program `A018052.P5388622727807734156` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018052 has offset 0).

The definition of A018052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 839 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018052.P5388622727807734156

`round(3^(n/4))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018052

/-- `round(3^(n/4))` -/
def P5388622727807734156.Spec : Prop :=
  ∀ n, P5388622727807734156.a n = A018052 n

theorem P5388622727807734156.correct : P5388622727807734156.Spec := by
  intro n
  simp only [A018052]

end A018052

/-! ## A018052.P2737993888183041800

`lcm((-1)^n, round(sqrt(sqrt(3)^n)))`
-/

namespace A018052.P2737993888183041800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (3 : ℝ) ^ n)))

end

end A018052.P2737993888183041800

namespace A018052

/-- `lcm((-1)^n, round(sqrt(sqrt(3)^n)))` -/
def P2737993888183041800.Spec : Prop :=
  ∀ n, (P2737993888183041800.a n : ℤ) = A018052 n

end A018052

/-! ## A018052.P8117050496722477792

`cos(-π)²*round(sqrt(sqrt(3)^n))`
-/

namespace A018052.P8117050496722477792
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (-Real.pi) ^ 2 * (SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (3 : ℝ) ^ n)) : ℝ)

end

end A018052.P8117050496722477792

namespace A018052

/-- `cos(-π)²*round(sqrt(sqrt(3)^n))` -/
def P8117050496722477792.Spec : Prop :=
  ∀ n, P8117050496722477792.a n = (A018052 n : ℝ)

end A018052

/-! ## A018052.P16138216485527164952

`A033999(n)²*round(sqrt(sqrt(3)^n))`
-/

namespace A018052.P16138216485527164952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (3 : ℝ) ^ n))

end

end A018052.P16138216485527164952

namespace A018052

/-- `A033999(n)²*round(sqrt(sqrt(3)^n))` -/
def P16138216485527164952.Spec : Prop :=
  ∀ n, P16138216485527164952.a n = A018052 n

end A018052

/-! ## A018052.P222033915764391225

`round(sqrt(sqrt(3)^n))*A040055(6*n+7)`
-/

namespace A018052.P222033915764391225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (3 : ℝ) ^ n)) * A040055 (6 * n + 7)

end

end A018052.P222033915764391225

namespace A018052

/-- `round(sqrt(sqrt(3)^n))*A040055(6*n+7)` -/
def P222033915764391225.Spec : Prop :=
  ∀ n, P222033915764391225.a n = A018052 n

end A018052

/-! ## A018052.P3548097558231986504

`round(sqrt(sqrt(3)^n))%A059162(n)`
-/

namespace A018052.P3548097558231986504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (3 : ℝ) ^ n))) (A059162 n)

end

end A018052.P3548097558231986504

namespace A018052

/-- `round(sqrt(sqrt(3)^n))%A059162(n)` -/
def P3548097558231986504.Spec : Prop :=
  ∀ n, P3548097558231986504.a n = A018052 n

end A018052

/-! ## A018052.P16371502328609503799

`round(sqrt(sqrt(3)^n))*A014709((n+1)²)`
-/

namespace A018052.P16371502328609503799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (3 : ℝ) ^ n)) * A014709 ((n + 1) ^ 2)

end

end A018052.P16371502328609503799

namespace A018052

/-- `round(sqrt(sqrt(3)^n))*A014709((n+1)²)` -/
def P16371502328609503799.Spec : Prop :=
  ∀ n, P16371502328609503799.a n = A018052 n

end A018052

/-! ## A018052.P8449928570560264789

`round(sqrt(sqrt(3)^n))*A027907((n+1)²)`
-/

namespace A018052.P8449928570560264789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (3 : ℝ) ^ n)) * A027907 ((n + 1) ^ 2)

end

end A018052.P8449928570560264789

namespace A018052

/-- `round(sqrt(sqrt(3)^n))*A027907((n+1)²)` -/
def P8449928570560264789.Spec : Prop :=
  ∀ n, P8449928570560264789.a n = A018052 n

end A018052

/-!
# A018053: Powers of fourth root of 3 rounded up.

The programs for A018053, the canonical program `A018053.P10874141411522457307` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018053 has offset 0).

The definition of A018053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 839 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018053.P13696043756398534236

`ceil(3^(n/4))`
-/

namespace A018053.P13696043756398534236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉

end

end A018053.P13696043756398534236

namespace A018053

/-- `ceil(3^(n/4))` -/
def P13696043756398534236.Spec : Prop :=
  ∀ n, P13696043756398534236.a n = A018053 n

end A018053

/-! ## A018053.P10874141411522457307

`A166486(n)+A018051(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018053

/-- `A166486(n)+A018051(n)` -/
def P10874141411522457307.Spec : Prop :=
  ∀ n, P10874141411522457307.a n = A018053 n

theorem P10874141411522457307.correct : P10874141411522457307.Spec := by
  intro n
  simp only [A018053]

end A018053

/-! ## A018053.P17582270338902017599

`a(n-1)+ceil(sqrt(sqrt(3)^n)-a(n-1))` with `a(0)=1`
-/

namespace A018053.P17582270338902017599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌈Real.sqrt (Real.sqrt (3 : ℝ) ^ n) - (a (n - 1) : ℝ)⌉

end

end A018053.P17582270338902017599

namespace A018053

/-- `a(n-1)+ceil(sqrt(sqrt(3)^n)-a(n-1))` -/
def P17582270338902017599.Spec : Prop :=
  ∀ n, P17582270338902017599.a n = A018053 n

end A018053

/-! ## A018053.P3438186185422508070

`a(n-1)-floor(a(n-1)-sqrt(sqrt(3)^n))` with `a(0)=1`
-/

namespace A018053.P3438186185422508070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ⌊(a (n - 1) : ℝ) - Real.sqrt (Real.sqrt (3 : ℝ) ^ n)⌋

end

end A018053.P3438186185422508070

namespace A018053

/-- `a(n-1)-floor(a(n-1)-sqrt(sqrt(3)^n))` -/
def P3438186185422508070.Spec : Prop :=
  ∀ n, P3438186185422508070.a n = A018053 n

end A018053

/-! ## A018053.P4706518075759585961

`floor(A019425(2*n)+sqrt(sqrt(3)^n))`
-/

namespace A018053.P4706518075759585961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019425 (2 * n) : ℝ) + Real.sqrt (Real.sqrt (3 : ℝ) ^ n)⌋

end

end A018053.P4706518075759585961

namespace A018053

/-- `floor(A019425(2*n)+sqrt(sqrt(3)^n))` -/
def P4706518075759585961.Spec : Prop :=
  ∀ n, P4706518075759585961.a n = A018053 n

end A018053

/-! ## A018053.P4328970393595749124

`ceil(sqrt(sqrt(3)^n))*A000034(2*n)`
-/

namespace A018053.P4328970393595749124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (3 : ℝ) ^ n)⌉ * A000034 (2 * n)

end

end A018053.P4328970393595749124

namespace A018053

/-- `ceil(sqrt(sqrt(3)^n))*A000034(2*n)` -/
def P4328970393595749124.Spec : Prop :=
  ∀ n, P4328970393595749124.a n = A018053 n

end A018053

/-! ## A018053.P4675783185229827643

`floor(sqrt(sqrt(A024023(n))))+1`
-/

namespace A018053.P4675783185229827643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A024023 n : ℝ))⌋ + 1

end

end A018053.P4675783185229827643

namespace A018053

/-- `floor(sqrt(sqrt(A024023(n))))+1` -/
def P4675783185229827643.Spec : Prop :=
  ∀ n, P4675783185229827643.a n = A018053 n

end A018053

/-!
# A018054: Expansion of 1/((1-3*x)*(1-7*x)*(1-11*x)).

The programs for A018054, the canonical program `A018054.P5032301371897729527` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018054 has offset 0).

The definition of A018054 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018054.P5032301371897729527

`18*a(n-1)-77*a(n-2)+3^n` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018054

/-- `18*a(n-1)-77*a(n-2)+3^n` -/
def P5032301371897729527.Spec : Prop :=
  ∀ n, P5032301371897729527.a n = A018054 n

theorem P5032301371897729527.correct : P5032301371897729527.Spec := by
  intro n
  simp only [A018054]

end A018054

/-! ## A018054.P14066344583246387428

`(11^(n+2)-2*7^(n+2)+3^(n+2))/32`
-/

namespace A018054.P14066344583246387428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 2) : ℤ) - (2 * 7 ^ (n + 2) : ℤ) + (3 ^ (n + 2) : ℤ) : ℚ) / 32

end

end A018054.P14066344583246387428

namespace A018054

/-- `(11^(n+2)-2*7^(n+2)+3^(n+2))/32` -/
def P14066344583246387428.Spec : Prop :=
  ∀ n, P14066344583246387428.a n = (A018054 n : ℚ)

theorem P14066344583246387428.correct : P14066344583246387428.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A018054, Nat.add_sub_cancel, A018054.P14066344583246387428.a, A018054.P5032301371897729527.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A018054, Nat.add_sub_cancel, A018054.P14066344583246387428.a, A018054.P5032301371897729527.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A018054

/-! ## A018054.P5214148501249726224

`A016138(n)+12*a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A018054.P5214148501249726224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016138 n + 12 * a (n - 1) - a (n - 1)

end

end A018054.P5214148501249726224

namespace A018054

/-- `A016138(n)+12*a(n-1)-a(n-1)` -/
def P5214148501249726224.Spec : Prop :=
  ∀ n, P5214148501249726224.a n = A018054 n

end A018054

/-! ## A018054.P5921889339206846052

`A225469(∑[n+2]+3)`
-/

namespace A018054.P5921889339206846052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225469 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A018054.P5921889339206846052

namespace A018054

/-- `A225469(∑[n+2]+3)` -/
def P5921889339206846052.Spec : Prop :=
  ∀ n, P5921889339206846052.a n = A018054 n

end A018054

/-! ## A018054.P11151607451981003641

`A225469(A133263(n+2))+A000007(n+1)`
-/

namespace A018054.P11151607451981003641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225469 (A133263 (n + 2)).toNat + A000007 (n + 1)

end

end A018054.P11151607451981003641

namespace A018054

/-- `A225469(A133263(n+2))+A000007(n+1)` -/
def P11151607451981003641.Spec : Prop :=
  ∀ n, P11151607451981003641.a n = A018054 n

end A018054

/-!
# A018055: Expansion of 1/((1-3*x)*(1-7*x)*(1-12*x)).

The programs for A018055, the canonical program `A018055.P15742584883694483210` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018055 has offset 0).

The definition of A018055 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018055.P15742584883694483210

`19*a(n-1)-84*a(n-2)+3^n` with `a(0)=1, a(1)=22`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018055

/-- `19*a(n-1)-84*a(n-2)+3^n` -/
def P15742584883694483210.Spec : Prop :=
  ∀ n, P15742584883694483210.a n = A018055 n

theorem P15742584883694483210.correct : P15742584883694483210.Spec := by
  intro n
  simp only [A018055]

end A018055

/-! ## A018055.P18057597004940978833

`(4*12^(n+2)-9*7^(n+2)+5*3^(n+2))/180`
-/

namespace A018055.P18057597004940978833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * 12 ^ (n + 2) : ℤ) - (9 * 7 ^ (n + 2) : ℤ) + (5 * 3 ^ (n + 2) : ℤ) : ℚ) / 180

end

end A018055.P18057597004940978833

namespace A018055

/-- `(4*12^(n+2)-9*7^(n+2)+5*3^(n+2))/180` -/
def P18057597004940978833.Spec : Prop :=
  ∀ n, P18057597004940978833.a n = (A018055 n : ℚ)

theorem P18057597004940978833.correct : P18057597004940978833.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A018055, Nat.add_sub_cancel, A018055.P18057597004940978833.a, A018055.P15742584883694483210.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A018055, Nat.add_sub_cancel, A018055.P18057597004940978833.a, A018055.P15742584883694483210.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A018055

/-! ## A018055.P5438440967753381736

`A016184(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A018055.P5438440967753381736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016184 n + 3 * a (n - 1)

end

end A018055.P5438440967753381736

namespace A018055

/-- `A016184(n)+3*a(n-1)` -/
def P5438440967753381736.Spec : Prop :=
  ∀ n, P5438440967753381736.a n = A018055 n

end A018055

/-! ## A018055.P2407976507095955780

`A016147(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A018055.P2407976507095955780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016147 n + 7 * a (n - 1)

end

end A018055.P2407976507095955780

namespace A018055

/-- `A016147(n)+7*a(n-1)` -/
def P2407976507095955780.Spec : Prop :=
  ∀ n, P2407976507095955780.a n = A018055 n

end A018055

/-! ## A018055.P16541392517070038886

`A016138(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A018055.P16541392517070038886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016138 n + 12 * a (n - 1)

end

end A018055.P16541392517070038886

namespace A018055

/-- `A016138(n)+12*a(n-1)` -/
def P16541392517070038886.Spec : Prop :=
  ∀ n, P16541392517070038886.a n = A018055 n

end A018055

/-! ## A018055.P7561521227945720725

`2*A016281(n)-A016276(n)`
-/

namespace A018055.P7561521227945720725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016281 n - A016276 n

end

end A018055.P7561521227945720725

namespace A018055

/-- `2*A016281(n)-A016276(n)` -/
def P7561521227945720725.Spec : Prop :=
  ∀ n, P7561521227945720725.a n = A018055 n

end A018055

/-!
# A018056: Expansion of g.f. 1/((1-3*x)*(1-8*x)*(1-9*x)).

The programs for A018056, the canonical program `A018056.P10299247954942043490` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018056 has offset 0).

The definition of A018056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018056.P10299247954942043490

`17*a(n-1)-72*a(n-2)+3^n` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018056

/-- `17*a(n-1)-72*a(n-2)+3^n` -/
def P10299247954942043490.Spec : Prop :=
  ∀ n, P10299247954942043490.a n = A018056 n

theorem P10299247954942043490.correct : P10299247954942043490.Spec := by
  intro n
  simp only [A018056]

end A018056

/-! ## A018056.P7813634362262387102

`A016142(n+1)-A016140(n+1)`
-/

namespace A018056.P7813634362262387102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016142 (n + 1) - A016140 (n + 1)

end

end A018056.P7813634362262387102

namespace A018056

/-- `A016142(n+1)-A016140(n+1)` -/
def P7813634362262387102.Spec : Prop :=
  ∀ n, P7813634362262387102.a n = A018056 n

end A018056

/-! ## A018056.P7247002558643052252

`(5*9^(n+2)-6*8^(n+2)+3^(n+2))/30`
-/

namespace A018056.P7247002558643052252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 9 ^ (n + 2) : ℤ) - (6 * 8 ^ (n + 2) : ℤ) + (3 ^ (n + 2) : ℤ) : ℚ) / 30

end

end A018056.P7247002558643052252

namespace A018056

/-- `(5*9^(n+2)-6*8^(n+2)+3^(n+2))/30` -/
def P7247002558643052252.Spec : Prop :=
  ∀ n, P7247002558643052252.a n = (A018056 n : ℚ)

theorem P7247002558643052252.correct : P7247002558643052252.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A018056, Nat.add_sub_cancel, A018056.P7247002558643052252.a, A018056.P10299247954942043490.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A018056, Nat.add_sub_cancel, A018056.P7247002558643052252.a, A018056.P10299247954942043490.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A018056

/-! ## A018056.P13686603483170322047

`2*A017998(n)-A017997(n)`
-/

namespace A018056.P13686603483170322047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017998 n - A017997 n

end

end A018056.P13686603483170322047

namespace A018056

/-- `2*A017998(n)-A017997(n)` -/
def P13686603483170322047.Spec : Prop :=
  ∀ n, P13686603483170322047.a n = A018056 n

end A018056

/-! ## A018056.P2841605062334640977

`2*A018069(n)-A018090(n)`
-/

namespace A018056.P2841605062334640977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018069 n - A018090 n

end

end A018056.P2841605062334640977

namespace A018056

/-- `2*A018069(n)-A018090(n)` -/
def P2841605062334640977.Spec : Prop :=
  ∀ n, P2841605062334640977.a n = A018056 n

end A018056

/-!
# A018057: Powers of fourth root of 5 rounded down.

The programs for A018057, the canonical program `A018057.P3909655468605073223` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018057 has offset 0).

The definition of A018057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 573 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018057.P3909655468605073223

`floor(5^(n/4))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018057

/-- `floor(5^(n/4))` -/
def P3909655468605073223.Spec : Prop :=
  ∀ n, P3909655468605073223.a n = A018057 n

theorem P3909655468605073223.correct : P3909655468605073223.Spec := by
  intro n
  simp only [A018057]

end A018057

/-! ## A018057.P17915371545576946955

`A018059(n)-A166486(n)`
-/

namespace A018057.P17915371545576946955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018059 n - A166486 n

end

end A018057.P17915371545576946955

namespace A018057

/-- `A018059(n)-A166486(n)` -/
def P17915371545576946955.Spec : Prop :=
  ∀ n, P17915371545576946955.a n = A018057 n

end A018057

/-! ## A018057.P8607252842130299868

`A018059(n)-Δ[A057353(n)]`
-/

namespace A018057.P8607252842130299868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018059 n - (f1 (n + 1) - f1 n)

end

end A018057.P8607252842130299868

namespace A018057

/-- `A018059(n)-Δ[A057353(n)]` -/
def P8607252842130299868.Spec : Prop :=
  ∀ n, P8607252842130299868.a n = A018057 n

end A018057

/-! ## A018057.P14871781342863838465

`A018059(n)-char[A043547(n+1)]`
-/

namespace A018057.P14871781342863838465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043547 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018059 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018057.P14871781342863838465

namespace A018057

/-- `A018059(n)-char[A043547(n+1)]` -/
def P14871781342863838465.Spec : Prop :=
  ∀ n, P14871781342863838465.a n = A018057 n

end A018057

/-! ## A018057.P17032130669883509054

`A018051(n)+A018059(n)-A018053(n)`
-/

namespace A018057.P17032130669883509054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018051 n + (A018059 n - A018053 n)

end

end A018057.P17032130669883509054

namespace A018057

/-- `A018051(n)+A018059(n)-A018053(n)` -/
def P17032130669883509054.Spec : Prop :=
  ∀ n, P17032130669883509054.a n = A018057 n

end A018057

/-! ## A018057.P16622629203543969205

`A018059(n)+A018060(n)-A018062(n)`
-/

namespace A018057.P16622629203543969205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018059 n + (A018060 n - A018062 n)

end

end A018057.P16622629203543969205

namespace A018057

/-- `A018059(n)+A018060(n)-A018062(n)` -/
def P16622629203543969205.Spec : Prop :=
  ∀ n, P16622629203543969205.a n = A018057 n

end A018057

/-! ## A018057.P6031793973215944328

`A018059(n)+A018063(n)-A018065(n)`
-/

namespace A018057.P6031793973215944328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018059 n + (A018063 n - A018065 n)

end

end A018057.P6031793973215944328

namespace A018057

/-- `A018059(n)+A018063(n)-A018065(n)` -/
def P6031793973215944328.Spec : Prop :=
  ∀ n, P6031793973215944328.a n = A018057 n

end A018057

/-! ## A018057.P15391705019598306677

`A018059(n)+A018066(n)-A018068(n)`
-/

namespace A018057.P15391705019598306677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018059 n + (A018066 n - A018068 n)

end

end A018057.P15391705019598306677

namespace A018057

/-- `A018059(n)+A018066(n)-A018068(n)` -/
def P15391705019598306677.Spec : Prop :=
  ∀ n, P15391705019598306677.a n = A018057 n

end A018057

/-! ## A018057.P8705221393801156422

`A018059(n)+A018075(n)-A018077(n)`
-/

namespace A018057.P8705221393801156422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018059 n + (A018075 n - A018077 n)

end

end A018057.P8705221393801156422

namespace A018057

/-- `A018059(n)+A018075(n)-A018077(n)` -/
def P8705221393801156422.Spec : Prop :=
  ∀ n, P8705221393801156422.a n = A018057 n

end A018057

/-! ## A018057.P18216550003043579530

`A130713(n+5)+floor(sqrt(A017921(n)))`
-/

namespace A018057.P18216550003043579530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 (n + 5) + Int.sqrt (A017921 n)

end

end A018057.P18216550003043579530

namespace A018057

/-- `A130713(n+5)+floor(sqrt(A017921(n)))` -/
def P18216550003043579530.Spec : Prop :=
  ∀ n, P18216550003043579530.a n = A018057 n

end A018057

/-!
# A018058: Powers of fourth root of 5 rounded to nearest integer.

The programs for A018058, the canonical program `A018058.P5996780747590626093` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018058 has offset 0).

The definition of A018058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 573 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018058.P5996780747590626093

`round(5^(n/4))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018058

/-- `round(5^(n/4))` -/
def P5996780747590626093.Spec : Prop :=
  ∀ n, P5996780747590626093.a n = A018058 n

theorem P5996780747590626093.correct : P5996780747590626093.Spec := by
  intro n
  simp only [A018058]

end A018058

/-! ## A018058.P13417205834797028427

`floor(sqrt(A018057(n)+A017919(n)))`
-/

namespace A018058.P13417205834797028427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018057 n + A017919 n)

end

end A018058.P13417205834797028427

namespace A018058

/-- `floor(sqrt(A018057(n)+A017919(n)))` -/
def P13417205834797028427.Spec : Prop :=
  ∀ n, P13417205834797028427.a n = A018058 n

end A018058

/-! ## A018058.P6097782045097670184

`round(sqrt(A017919(n)))%A289004(n)`
-/

namespace A018058.P6097782045097670184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A017919 n : ℝ))) (A289004 n)

end

end A018058.P6097782045097670184

namespace A018058

/-- `round(sqrt(A017919(n)))%A289004(n)` -/
def P6097782045097670184.Spec : Prop :=
  ∀ n, P6097782045097670184.a n = A018058 n

end A018058

/-! ## A018058.P9338608683185184557

`A000038(n+1)+round(sqrt(A017919(n)))`
-/

namespace A018058.P9338608683185184557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + SequenceMachineLib.roundAway (Real.sqrt (A017919 n : ℝ))

end

end A018058.P9338608683185184557

namespace A018058

/-- `A000038(n+1)+round(sqrt(A017919(n)))` -/
def P9338608683185184557.Spec : Prop :=
  ∀ n, P9338608683185184557.a n = A018058 n

end A018058

/-! ## A018058.P11722188886120954973

`round(sqrt(A017919(n)))*A000034(2*n)`
-/

namespace A018058.P11722188886120954973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A017919 n : ℝ)) * A000034 (2 * n)

end

end A018058.P11722188886120954973

namespace A018058

/-- `round(sqrt(A017919(n)))*A000034(2*n)` -/
def P11722188886120954973.Spec : Prop :=
  ∀ n, P11722188886120954973.a n = A018058 n

end A018058

/-! ## A018058.P13624028966042314711

`round(sqrt(A017919(n)))^(2-A057427(n))`
-/

namespace A018058.P13624028966042314711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (A017919 n : ℝ)) : ℚ) ^ (2 - A057427 n : ℤ)

end

end A018058.P13624028966042314711

namespace A018058

/-- `round(sqrt(A017919(n)))^(2-A057427(n))` -/
def P13624028966042314711.Spec : Prop :=
  ∀ n, P13624028966042314711.a n = (A018058 n : ℚ)

end A018058

/-!
# A018059: Powers of fourth root of 5 rounded up.

The programs for A018059, the canonical program `A018059.P17236117683466257866` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018059 has offset 0).

The definition of A018059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 573 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018059.P15683115395285003840

`ceil(5^(n/4))`
-/

namespace A018059.P15683115395285003840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(5 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉

end

end A018059.P15683115395285003840

namespace A018059

/-- `ceil(5^(n/4))` -/
def P15683115395285003840.Spec : Prop :=
  ∀ n, P15683115395285003840.a n = A018059 n

end A018059

/-! ## A018059.P17236117683466257866

`A166486(n)+A018057(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018059

/-- `A166486(n)+A018057(n)` -/
def P17236117683466257866.Spec : Prop :=
  ∀ n, P17236117683466257866.a n = A018059 n

theorem P17236117683466257866.correct : P17236117683466257866.Spec := by
  intro n
  simp only [A018059]

end A018059

/-! ## A018059.P17399751057956628609

`A060576(A342410(n+1))+A018057(n)`
-/

namespace A018059.P17399751057956628609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A342410 (n + 1)).toNat + A018057 n

end

end A018059.P17399751057956628609

namespace A018059

/-- `A060576(A342410(n+1))+A018057(n)` -/
def P17399751057956628609.Spec : Prop :=
  ∀ n, P17399751057956628609.a n = A018059 n

end A018059

/-! ## A018059.P3507894916131712499

`A018057(n)+A018062(n)-A018060(n)`
-/

namespace A018059.P3507894916131712499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018057 n + (A018062 n - A018060 n)

end

end A018059.P3507894916131712499

namespace A018059

/-- `A018057(n)+A018062(n)-A018060(n)` -/
def P3507894916131712499.Spec : Prop :=
  ∀ n, P3507894916131712499.a n = A018059 n

end A018059

/-! ## A018059.P5781244988880077584

`A018057(n)+A018065(n)-A018063(n)`
-/

namespace A018059.P5781244988880077584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018057 n + (A018065 n - A018063 n)

end

end A018059.P5781244988880077584

namespace A018059

/-- `A018057(n)+A018065(n)-A018063(n)` -/
def P5781244988880077584.Spec : Prop :=
  ∀ n, P5781244988880077584.a n = A018059 n

end A018059

/-! ## A018059.P1705183899777498585

`A018057(n)+A018068(n)-A018066(n)`
-/

namespace A018059.P1705183899777498585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018057 n + (A018068 n - A018066 n)

end

end A018059.P1705183899777498585

namespace A018059

/-- `A018057(n)+A018068(n)-A018066(n)` -/
def P1705183899777498585.Spec : Prop :=
  ∀ n, P1705183899777498585.a n = A018059 n

end A018059

/-! ## A018059.P12254688541525029956

`lcm((-1)^n, ceil(sqrt(A017921(n))))`
-/

namespace A018059.P12254688541525029956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) ⌈Real.sqrt (A017921 n : ℝ)⌉

end

end A018059.P12254688541525029956

namespace A018059

/-- `lcm((-1)^n, ceil(sqrt(A017921(n))))` -/
def P12254688541525029956.Spec : Prop :=
  ∀ n, (P12254688541525029956.a n : ℤ) = A018059 n

end A018059

/-! ## A018059.P3676667793000734929

`ceil(sqrt(A017921(n)))%A000029(n+1)`
-/

namespace A018059.P3676667793000734929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (A017921 n : ℝ)⌉ (A000029 (n + 1))

end

end A018059.P3676667793000734929

namespace A018059

/-- `ceil(sqrt(A017921(n)))%A000029(n+1)` -/
def P3676667793000734929.Spec : Prop :=
  ∀ n, P3676667793000734929.a n = A018059 n

end A018059

/-! ## A018059.P2118794351736499412

`A010058(4*8*n)+ceil(sqrt(A017921(n)))`
-/

namespace A018059.P2118794351736499412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010058 (4 * (8 * n)) + ⌈Real.sqrt (A017921 n : ℝ)⌉

end

end A018059.P2118794351736499412

namespace A018059

/-- `A010058(4*8*n)+ceil(sqrt(A017921(n)))` -/
def P2118794351736499412.Spec : Prop :=
  ∀ n, P2118794351736499412.a n = A018059 n

end A018059

/-! ## A018059.P1269633801953641268

`floor(sqrt(sqrt(A024049(n))))+1`
-/

namespace A018059.P1269633801953641268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A024049 n : ℝ))⌋ + 1

end

end A018059.P1269633801953641268

namespace A018059

/-- `floor(sqrt(sqrt(A024049(n))))+1` -/
def P1269633801953641268.Spec : Prop :=
  ∀ n, P1269633801953641268.a n = A018059 n

end A018059

/-! ## A018059.P8425644192044528039

`A018057(n)+A000007(A035444(n))`
-/

namespace A018059.P8425644192044528039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018057 n + A000007 (A035444 n).toNat

end

end A018059.P8425644192044528039

namespace A018059

/-- `A018057(n)+A000007(A035444(n))` -/
def P8425644192044528039.Spec : Prop :=
  ∀ n, P8425644192044528039.a n = A018059 n

end A018059

/-!
# A018060: Powers of fourth root of 6 rounded down.

The programs for A018060, the canonical program `A018060.P7176242607218543114` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018060 has offset 0).

The definition of A018060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 515 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018060.P7176242607218543114

`floor(6^(n/4))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018060

/-- `floor(6^(n/4))` -/
def P7176242607218543114.Spec : Prop :=
  ∀ n, P7176242607218543114.a n = A018060 n

theorem P7176242607218543114.correct : P7176242607218543114.Spec := by
  intro n
  simp only [A018060]

end A018060

/-! ## A018060.P14279164641130237928

`A018062(n)-A166486(n)`
-/

namespace A018060.P14279164641130237928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018062 n - A166486 n

end

end A018060.P14279164641130237928

namespace A018060

/-- `A018062(n)-A166486(n)` -/
def P14279164641130237928.Spec : Prop :=
  ∀ n, P14279164641130237928.a n = A018060 n

end A018060

/-! ## A018060.P7508473790739297049

`A018062(n)-Δ[A057353(n)]`
-/

namespace A018060.P7508473790739297049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018062 n - (f1 (n + 1) - f1 n)

end

end A018060.P7508473790739297049

namespace A018060

/-- `A018062(n)-Δ[A057353(n)]` -/
def P7508473790739297049.Spec : Prop :=
  ∀ n, P7508473790739297049.a n = A018060 n

end A018060

/-! ## A018060.P9763002890812112551

`A018057(n)+A018062(n)-A018059(n)`
-/

namespace A018060.P9763002890812112551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018057 n + (A018062 n - A018059 n)

end

end A018060.P9763002890812112551

namespace A018060

/-- `A018057(n)+A018062(n)-A018059(n)` -/
def P9763002890812112551.Spec : Prop :=
  ∀ n, P9763002890812112551.a n = A018060 n

end A018060

/-! ## A018060.P5155998695809073064

`A018062(n)+A018066(n)-A018068(n)`
-/

namespace A018060.P5155998695809073064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018062 n + (A018066 n - A018068 n)

end

end A018060.P5155998695809073064

namespace A018060

/-- `A018062(n)+A018066(n)-A018068(n)` -/
def P5155998695809073064.Spec : Prop :=
  ∀ n, P5155998695809073064.a n = A018060 n

end A018060

/-! ## A018060.P9583371034340135724

`floor(sqrt(A017923(n)))%A052956(n)`
-/

namespace A018060.P9583371034340135724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A017923 n)) (A052956 n)

end

end A018060.P9583371034340135724

namespace A018060

/-- `floor(sqrt(A017923(n)))%A052956(n)` -/
def P9583371034340135724.Spec : Prop :=
  ∀ n, P9583371034340135724.a n = A018060 n

end A018060

/-! ## A018060.P13151369633012473255

`ceil(sqrt(sqrt(A026549(2*n))+1))-1`
-/

namespace A018060.P13151369633012473255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A026549 (2 * n) : ℝ) + 1)⌉ - 1

end

end A018060.P13151369633012473255

namespace A018060

/-- `ceil(sqrt(sqrt(A026549(2*n))+1))-1` -/
def P13151369633012473255.Spec : Prop :=
  ∀ n, P13151369633012473255.a n = A018060 n

end A018060

/-!
# A018061: Powers of fourth root of 6 rounded to nearest integer.

The programs for A018061, the canonical program `A018061.P6372660784948082056` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018061 has offset 0).

The definition of A018061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 515 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018061.P6372660784948082056

`round(6^(n/4))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018061

/-- `round(6^(n/4))` -/
def P6372660784948082056.Spec : Prop :=
  ∀ n, P6372660784948082056.a n = A018061 n

theorem P6372660784948082056.correct : P6372660784948082056.Spec := by
  intro n
  simp only [A018061]

end A018061

/-! ## A018061.P3845262110596847282

`ceil(A017924(n)/A018062(n))`
-/

namespace A018061.P3845262110596847282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017924 n : ℚ) / (A018062 n : ℚ)⌉

end

end A018061.P3845262110596847282

namespace A018061

/-- `ceil(A017924(n)/A018062(n))` -/
def P3845262110596847282.Spec : Prop :=
  ∀ n, P3845262110596847282.a n = A018061 n

end A018061

/-! ## A018061.P13807625346627190503

`round(sqrt(A017924(n)))%A182780(n)`
-/

namespace A018061.P13807625346627190503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A017924 n : ℝ))) (A182780 n)

end

end A018061.P13807625346627190503

namespace A018061

/-- `round(sqrt(A017924(n)))%A182780(n)` -/
def P13807625346627190503.Spec : Prop :=
  ∀ n, P13807625346627190503.a n = A018061 n

end A018061

/-! ## A018061.P5451173730614318500

`ceil(A018062(2*n)/A018062(n))`
-/

namespace A018061.P5451173730614318500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018062 (2 * n) : ℚ) / (A018062 n : ℚ)⌉

end

end A018061.P5451173730614318500

namespace A018061

/-- `ceil(A018062(2*n)/A018062(n))` -/
def P5451173730614318500.Spec : Prop :=
  ∀ n, P5451173730614318500.a n = A018061 n

end A018061

/-! ## A018061.P11161716180060729401

`A033999(n)²*round(sqrt(A017924(n)))`
-/

namespace A018061.P11161716180060729401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * SequenceMachineLib.roundAway (Real.sqrt (A017924 n : ℝ))

end

end A018061.P11161716180060729401

namespace A018061

/-- `A033999(n)²*round(sqrt(A017924(n)))` -/
def P11161716180060729401.Spec : Prop :=
  ∀ n, P11161716180060729401.a n = A018061 n

end A018061

/-! ## A018061.P3431432752632775015

`A007814(2*n+1)+round(sqrt(A017924(n)))`
-/

namespace A018061.P3431432752632775015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1) + SequenceMachineLib.roundAway (Real.sqrt (A017924 n : ℝ))

end

end A018061.P3431432752632775015

namespace A018061

/-- `A007814(2*n+1)+round(sqrt(A017924(n)))` -/
def P3431432752632775015.Spec : Prop :=
  ∀ n, P3431432752632775015.a n = A018061 n

end A018061

/-!
# A018062: Powers of fourth root of 6 rounded up.

The programs for A018062, the canonical program `A018062.P8777464907617138448` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018062 has offset 0).

The definition of A018062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 515 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018062.P10870387588998251921

`ceil(6^(n/4))`
-/

namespace A018062.P10870387588998251921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(6 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉

end

end A018062.P10870387588998251921

namespace A018062

/-- `ceil(6^(n/4))` -/
def P10870387588998251921.Spec : Prop :=
  ∀ n, P10870387588998251921.a n = A018062 n

end A018062

/-! ## A018062.P8777464907617138448

`A166486(n)+A018060(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018062

/-- `A166486(n)+A018060(n)` -/
def P8777464907617138448.Spec : Prop :=
  ∀ n, P8777464907617138448.a n = A018062 n

theorem P8777464907617138448.correct : P8777464907617138448.Spec := by
  intro n
  simp only [A018062]

end A018062

/-! ## A018062.P5572171786411046765

`A018060(n)+Δ[A057353(n)]`
-/

namespace A018062.P5572171786411046765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018060 n + (f1 (n + 1) - f1 n)

end

end A018062.P5572171786411046765

namespace A018062

/-- `A018060(n)+Δ[A057353(n)]` -/
def P5572171786411046765.Spec : Prop :=
  ∀ n, P5572171786411046765.a n = A018062 n

end A018062

/-! ## A018062.P17809169590249884341

`A018060(n)+A147685(n)%2`
-/

namespace A018062.P17809169590249884341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018060 n + Int.tmod (A147685 n) 2

end

end A018062.P17809169590249884341

namespace A018062

/-- `A018060(n)+A147685(n)%2` -/
def P17809169590249884341.Spec : Prop :=
  ∀ n, P17809169590249884341.a n = A018062 n

end A018062

/-! ## A018062.P12828908757952738540

`A018060(n)+A000035(A195140(n))`
-/

namespace A018062.P12828908757952738540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018060 n + A000035 (A195140 n).toNat

end

end A018062.P12828908757952738540

namespace A018062

/-- `A018060(n)+A000035(A195140(n))` -/
def P12828908757952738540.Spec : Prop :=
  ∀ n, P12828908757952738540.a n = A018062 n

end A018062

/-! ## A018062.P15519392085977099047

`A018060(n)+A000035(A047485(n+1))`
-/

namespace A018062.P15519392085977099047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018060 n + A000035 (A047485 (n + 1)).toNat

end

end A018062.P15519392085977099047

namespace A018062

/-- `A018060(n)+A000035(A047485(n+1))` -/
def P15519392085977099047.Spec : Prop :=
  ∀ n, P15519392085977099047.a n = A018062 n

end A018062

/-! ## A018062.P8806929275781330987

`A018053(n)+A018060(n)-A018051(n)`
-/

namespace A018062.P8806929275781330987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018053 n + (A018060 n - A018051 n)

end

end A018062.P8806929275781330987

namespace A018062

/-- `A018053(n)+A018060(n)-A018051(n)` -/
def P8806929275781330987.Spec : Prop :=
  ∀ n, P8806929275781330987.a n = A018062 n

end A018062

/-! ## A018062.P5336030397172543688

`A018059(n)+A018060(n)-A018057(n)`
-/

namespace A018062.P5336030397172543688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018059 n + (A018060 n - A018057 n)

end

end A018062.P5336030397172543688

namespace A018062

/-- `A018059(n)+A018060(n)-A018057(n)` -/
def P5336030397172543688.Spec : Prop :=
  ∀ n, P5336030397172543688.a n = A018062 n

end A018062

/-! ## A018062.P292287796718906426

`A018060(n)+A018068(n)-A018066(n)`
-/

namespace A018062.P292287796718906426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018060 n + (A018068 n - A018066 n)

end

end A018062.P292287796718906426

namespace A018062

/-- `A018060(n)+A018068(n)-A018066(n)` -/
def P292287796718906426.Spec : Prop :=
  ∀ n, P292287796718906426.a n = A018062 n

end A018062

/-! ## A018062.P1337251908801721462

`A018060(n)+A000035(A147685(n))`
-/

namespace A018062.P1337251908801721462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018060 n + A000035 (A147685 n).toNat

end

end A018062.P1337251908801721462

namespace A018062

/-- `A018060(n)+A000035(A147685(n))` -/
def P1337251908801721462.Spec : Prop :=
  ∀ n, P1337251908801721462.a n = A018062 n

end A018062

/-!
# A018063: Powers of fourth root of 7 rounded down.

The programs for A018063, the canonical program `A018063.P10331666004157670674` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018063 has offset 0).

The definition of A018063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018063.P10331666004157670674

`floor(7^(n/4))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018063

/-- `floor(7^(n/4))` -/
def P10331666004157670674.Spec : Prop :=
  ∀ n, P10331666004157670674.a n = A018063 n

theorem P10331666004157670674.correct : P10331666004157670674.Spec := by
  intro n
  simp only [A018063]

end A018063

/-! ## A018063.P2559960399489392189

`A018065(n)-A166486(n)`
-/

namespace A018063.P2559960399489392189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018065 n - A166486 n

end

end A018063.P2559960399489392189

namespace A018063

/-- `A018065(n)-A166486(n)` -/
def P2559960399489392189.Spec : Prop :=
  ∀ n, P2559960399489392189.a n = A018063 n

end A018063

/-! ## A018063.P15347056672964302395

`A018057(n)+A018065(n)-A018059(n)`
-/

namespace A018063.P15347056672964302395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018057 n + (A018065 n - A018059 n)

end

end A018063.P15347056672964302395

namespace A018063

/-- `A018057(n)+A018065(n)-A018059(n)` -/
def P15347056672964302395.Spec : Prop :=
  ∀ n, P15347056672964302395.a n = A018063 n

end A018063

/-! ## A018063.P16841648173857993317

`A018065(n)+A018066(n)-A018068(n)`
-/

namespace A018063.P16841648173857993317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018065 n + (A018066 n - A018068 n)

end

end A018063.P16841648173857993317

namespace A018063

/-- `A018065(n)+A018066(n)-A018068(n)` -/
def P16841648173857993317.Spec : Prop :=
  ∀ n, P16841648173857993317.a n = A018063 n

end A018063

/-! ## A018063.P351204205317647608

`A018065(n)+A018075(n)-A018077(n)`
-/

namespace A018063.P351204205317647608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018065 n + (A018075 n - A018077 n)

end

end A018063.P351204205317647608

namespace A018063

/-- `A018065(n)+A018075(n)-A018077(n)` -/
def P351204205317647608.Spec : Prop :=
  ∀ n, P351204205317647608.a n = A018063 n

end A018063

/-! ## A018063.P2578072555401976147

`floor(sqrt(A017927(n)))%A083683(n)`
-/

namespace A018063.P2578072555401976147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A017927 n)) (A083683 n)

end

end A018063.P2578072555401976147

namespace A018063

/-- `floor(sqrt(A017927(n)))%A083683(n)` -/
def P2578072555401976147.Spec : Prop :=
  ∀ n, P2578072555401976147.a n = A018063 n

end A018063

/-! ## A018063.P15375609640228397650

`A000038(n+1)+floor(sqrt(A017927(n)))`
-/

namespace A018063.P15375609640228397650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + Int.sqrt (A017927 n)

end

end A018063.P15375609640228397650

namespace A018063

/-- `A000038(n+1)+floor(sqrt(A017927(n)))` -/
def P15375609640228397650.Spec : Prop :=
  ∀ n, P15375609640228397650.a n = A018063 n

end A018063

/-! ## A018063.P14476436434081170104

`floor(sqrt(A017927(n)))*A000034(2*n)`
-/

namespace A018063.P14476436434081170104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A017927 n) * A000034 (2 * n)

end

end A018063.P14476436434081170104

namespace A018063

/-- `floor(sqrt(A017927(n)))*A000034(2*n)` -/
def P14476436434081170104.Spec : Prop :=
  ∀ n, P14476436434081170104.a n = A018063 n

end A018063

/-!
# A018064: Powers of fourth root of 7 rounded to nearest integer.

The programs for A018064, the canonical program `A018064.P4767528338658594735` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018064 has offset 0).

The definition of A018064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018064.P4767528338658594735

`round(7^(n/4))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018064

/-- `round(7^(n/4))` -/
def P4767528338658594735.Spec : Prop :=
  ∀ n, P4767528338658594735.a n = A018064 n

theorem P4767528338658594735.correct : P4767528338658594735.Spec := by
  intro n
  simp only [A018064]

end A018064

/-! ## A018064.P3261155229766560027

`(n%2)!*round(sqrt(A017927(n)))`
-/

namespace A018064.P3261155229766560027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) * SequenceMachineLib.roundAway (Real.sqrt (A017927 n : ℝ))

end

end A018064.P3261155229766560027

namespace A018064

/-- `(n%2)!*round(sqrt(A017927(n)))` -/
def P3261155229766560027.Spec : Prop :=
  ∀ n, P3261155229766560027.a n = A018064 n

end A018064

/-! ## A018064.P15414747335778869267

`floor(A017925(n)/A018063(n))`
-/

namespace A018064.P15414747335778869267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017925 n : ℚ) / (A018063 n : ℚ)⌋

end

end A018064.P15414747335778869267

namespace A018064

/-- `floor(A017925(n)/A018063(n))` -/
def P15414747335778869267.Spec : Prop :=
  ∀ n, P15414747335778869267.a n = A018064 n

end A018064

/-! ## A018064.P17375339912143152949

`floor(sqrt(A018063(n)+A017927(n)))`
-/

namespace A018064.P17375339912143152949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018063 n + A017927 n)

end

end A018064.P17375339912143152949

namespace A018064

/-- `floor(sqrt(A018063(n)+A017927(n)))` -/
def P17375339912143152949.Spec : Prop :=
  ∀ n, P17375339912143152949.a n = A018064 n

end A018064

/-! ## A018064.P14986311249126948666

`floor(sqrt(A018065(n)+A017927(n)))`
-/

namespace A018064.P14986311249126948666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018065 n + A017927 n)

end

end A018064.P14986311249126948666

namespace A018064

/-- `floor(sqrt(A018065(n)+A017927(n)))` -/
def P14986311249126948666.Spec : Prop :=
  ∀ n, P14986311249126948666.a n = A018064 n

end A018064

/-! ## A018064.P7504056156783152416

`floor(A018063(2*n)/A018063(n))`
-/

namespace A018064.P7504056156783152416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018063 (2 * n) : ℚ) / (A018063 n : ℚ)⌋

end

end A018064.P7504056156783152416

namespace A018064

/-- `floor(A018063(2*n)/A018063(n))` -/
def P7504056156783152416.Spec : Prop :=
  ∀ n, P7504056156783152416.a n = A018064 n

end A018064

/-! ## A018064.P16968821474149234407

`round(sqrt(A017927(n)))%A000129(n+2)`
-/

namespace A018064.P16968821474149234407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A017927 n : ℝ))) (A000129 (n + 2))

end

end A018064.P16968821474149234407

namespace A018064

/-- `round(sqrt(A017927(n)))%A000129(n+2)` -/
def P16968821474149234407.Spec : Prop :=
  ∀ n, P16968821474149234407.a n = A018064 n

end A018064

/-!
# A018065: Powers of fourth root of 7 rounded up.

The programs for A018065, the canonical program `A018065.P10127883038866742777` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018065 has offset 0).

The definition of A018065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018065.P48969371552209449

`ceil(7^(n/4))`
-/

namespace A018065.P48969371552209449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(7 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉

end

end A018065.P48969371552209449

namespace A018065

/-- `ceil(7^(n/4))` -/
def P48969371552209449.Spec : Prop :=
  ∀ n, P48969371552209449.a n = A018065 n

end A018065

/-! ## A018065.P10127883038866742777

`A166486(n)+A018063(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018065

/-- `A166486(n)+A018063(n)` -/
def P10127883038866742777.Spec : Prop :=
  ∀ n, P10127883038866742777.a n = A018065 n

theorem P10127883038866742777.correct : P10127883038866742777.Spec := by
  intro n
  simp only [A018065]

end A018065

/-! ## A018065.P18024923789175652900

`A018063(n)+Δ[A057353(n)]`
-/

namespace A018065.P18024923789175652900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018063 n + (f1 (n + 1) - f1 n)

end

end A018065.P18024923789175652900

namespace A018065

/-- `A018063(n)+Δ[A057353(n)]` -/
def P18024923789175652900.Spec : Prop :=
  ∀ n, P18024923789175652900.a n = A018065 n

end A018065

/-! ## A018065.P18071989294804740251

`A018063(n)+char[A065883(n+1)]`
-/

namespace A018065.P18071989294804740251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018063 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018065.P18071989294804740251

namespace A018065

/-- `A018063(n)+char[A065883(n+1)]` -/
def P18071989294804740251.Spec : Prop :=
  ∀ n, P18071989294804740251.a n = A018065 n

end A018065

/-! ## A018065.P15691549484996745054

`A018062(n)+A018063(n)-A018060(n)`
-/

namespace A018065.P15691549484996745054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018062 n + (A018063 n - A018060 n)

end

end A018065.P15691549484996745054

namespace A018065

/-- `A018062(n)+A018063(n)-A018060(n)` -/
def P15691549484996745054.Spec : Prop :=
  ∀ n, P15691549484996745054.a n = A018065 n

end A018065

/-! ## A018065.P6286823948776783383

`A018063(n)+A018068(n)-A018066(n)`
-/

namespace A018065.P6286823948776783383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018063 n + (A018068 n - A018066 n)

end

end A018065.P6286823948776783383

namespace A018065

/-- `A018063(n)+A018068(n)-A018066(n)` -/
def P6286823948776783383.Spec : Prop :=
  ∀ n, P6286823948776783383.a n = A018065 n

end A018065

/-! ## A018065.P6663088982049289573

`round(sqrt(A018064(n)+A017926(n)))`
-/

namespace A018065.P6663088982049289573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A018064 n + A017926 n : ℝ))

end

end A018065.P6663088982049289573

namespace A018065

/-- `round(sqrt(A018064(n)+A017926(n)))` -/
def P6663088982049289573.Spec : Prop :=
  ∀ n, P6663088982049289573.a n = A018065 n

end A018065

/-! ## A018065.P9235706522308990948

`ceil(sqrt(A017927(n)))%A000051(n)`
-/

namespace A018065.P9235706522308990948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (A017927 n : ℝ)⌉ (A000051 n)

end

end A018065.P9235706522308990948

namespace A018065

/-- `ceil(sqrt(A017927(n)))%A000051(n)` -/
def P9235706522308990948.Spec : Prop :=
  ∀ n, P9235706522308990948.a n = A018065 n

end A018065

/-! ## A018065.P17809211768957064047

`A000035(2*n)+ceil(sqrt(A017927(n)))`
-/

namespace A018065.P17809211768957064047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + ⌈Real.sqrt (A017927 n : ℝ)⌉

end

end A018065.P17809211768957064047

namespace A018065

/-- `A000035(2*n)+ceil(sqrt(A017927(n)))` -/
def P17809211768957064047.Spec : Prop :=
  ∀ n, P17809211768957064047.a n = A018065 n

end A018065

/-! ## A018065.P7322630969942934169

`ceil(sqrt(A017927(n)))^A070750(n+1)²`
-/

namespace A018065.P7322630969942934169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (A017927 n : ℝ)⌉ : ℚ) ^ (A070750 (n + 1) ^ 2 : ℤ)

end

end A018065.P7322630969942934169

namespace A018065

/-- `ceil(sqrt(A017927(n)))^A070750(n+1)²` -/
def P7322630969942934169.Spec : Prop :=
  ∀ n, P7322630969942934169.a n = (A018065 n : ℚ)

end A018065

/-! ## A018065.P6083352765214347219

`ceil(sqrt(A017927(n)))*A006519(2*n+1)`
-/

namespace A018065.P6083352765214347219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A017927 n : ℝ)⌉ * A006519 (2 * n + 1)

end

end A018065.P6083352765214347219

namespace A018065

/-- `ceil(sqrt(A017927(n)))*A006519(2*n+1)` -/
def P6083352765214347219.Spec : Prop :=
  ∀ n, P6083352765214347219.a n = A018065 n

end A018065

/-!
# A018066: Powers of fourth root of 8 rounded down.

The programs for A018066, the canonical program `A018066.P7812183996928124791` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018066 has offset 0).

The definition of A018066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 443 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018066.P5882686181016213537

`floor(8^(n/4))`
-/

namespace A018066.P5882686181016213537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(8 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋

end

end A018066.P5882686181016213537

namespace A018066

/-- `floor(8^(n/4))` -/
def P5882686181016213537.Spec : Prop :=
  ∀ n, P5882686181016213537.a n = A018066 n

end A018066

/-! ## A018066.P11851562319237886063

`A018048(3*n)`
-/

namespace A018066.P11851562319237886063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018048 (3 * n)

end

end A018066.P11851562319237886063

namespace A018066

/-- `A018048(3*n)` -/
def P11851562319237886063.Spec : Prop :=
  ∀ n, P11851562319237886063.a n = A018066 n

end A018066

/-! ## A018066.P7812183996928124791

`A018068(n)-A166486(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018066

/-- `A018068(n)-A166486(n)` -/
def P7812183996928124791.Spec : Prop :=
  ∀ n, P7812183996928124791.a n = A018066 n

theorem P7812183996928124791.correct : P7812183996928124791.Spec := by
  intro n
  simp only [A018066]

end A018066

/-! ## A018066.P10806688433725396420

`gcd(A000038(n), A018048(A008486(n)))`
-/

namespace A018066.P10806688433725396420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A018048 (A008486 n).toNat)

end

end A018066.P10806688433725396420

namespace A018066

/-- `gcd(A000038(n), A018048(A008486(n)))` -/
def P10806688433725396420.Spec : Prop :=
  ∀ n, (P10806688433725396420.a n : ℤ) = A018066 n

end A018066

/-! ## A018066.P18389621763685995012

`A018048(A008486(n))+A000038(n+1)`
-/

namespace A018066.P18389621763685995012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018048 (A008486 n).toNat + A000038 (n + 1)

end

end A018066.P18389621763685995012

namespace A018066

/-- `A018048(A008486(n))+A000038(n+1)` -/
def P18389621763685995012.Spec : Prop :=
  ∀ n, P18389621763685995012.a n = A018066 n

end A018066

/-! ## A018066.P15916940940562630161

`A018057(n)+A018068(n)-A018059(n)`
-/

namespace A018066.P15916940940562630161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018057 n + (A018068 n - A018059 n)

end

end A018066.P15916940940562630161

namespace A018066

/-- `A018057(n)+A018068(n)-A018059(n)` -/
def P15916940940562630161.Spec : Prop :=
  ∀ n, P15916940940562630161.a n = A018066 n

end A018066

/-! ## A018066.P13986484145607117736

`A018060(n)+A018068(n)-A018062(n)`
-/

namespace A018066.P13986484145607117736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018060 n + (A018068 n - A018062 n)

end

end A018066.P13986484145607117736

namespace A018066

/-- `A018060(n)+A018068(n)-A018062(n)` -/
def P13986484145607117736.Spec : Prop :=
  ∀ n, P13986484145607117736.a n = A018066 n

end A018066

/-! ## A018066.P8630839577486590621

`A018063(n)+A018068(n)-A018065(n)`
-/

namespace A018066.P8630839577486590621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018063 n + (A018068 n - A018065 n)

end

end A018066.P8630839577486590621

namespace A018066

/-- `A018063(n)+A018068(n)-A018065(n)` -/
def P8630839577486590621.Spec : Prop :=
  ∀ n, P8630839577486590621.a n = A018066 n

end A018066

/-! ## A018066.P17705954535703289653

`A018068(n)+A018072(n)-A018074(n)`
-/

namespace A018066.P17705954535703289653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018068 n + (A018072 n - A018074 n)

end

end A018066.P17705954535703289653

namespace A018066

/-- `A018068(n)+A018072(n)-A018074(n)` -/
def P17705954535703289653.Spec : Prop :=
  ∀ n, P17705954535703289653.a n = A018066 n

end A018066

/-! ## A018066.P8719929627421613913

`A018048(A008486(n))%A048578(n)`
-/

namespace A018066.P8719929627421613913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018048 (A008486 n).toNat) (A048578 n)

end

end A018066.P8719929627421613913

namespace A018066

/-- `A018048(A008486(n))%A048578(n)` -/
def P8719929627421613913.Spec : Prop :=
  ∀ n, P8719929627421613913.a n = A018066 n

end A018066

/-! ## A018066.P8226478788623971447

`A349433(A349420(n+1))+A018048(A008585(n))`
-/

namespace A018066.P8226478788623971447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349433 (A349420 (n + 1)).toNat + A018048 (A008585 n).toNat

end

end A018066.P8226478788623971447

namespace A018066

/-- `A349433(A349420(n+1))+A018048(A008585(n))` -/
def P8226478788623971447.Spec : Prop :=
  ∀ n, P8226478788623971447.a n = A018066 n

end A018066

/-! ## A018066.P9818352421784876215

`abs(floor(root(A074609(n), 4))-1)+1`
-/

namespace A018066.P9818352421784876215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(A074609 n : ℝ) ^ (1 / (4 : ℝ))⌋ - 1| + 1

end

end A018066.P9818352421784876215

namespace A018066

/-- `abs(floor(root(A074609(n), 4))-1)+1` -/
def P9818352421784876215.Spec : Prop :=
  ∀ n, P9818352421784876215.a n = A018066 n

end A018066

/-!
# A018067: Powers of fourth root of 8 rounded to nearest integer.

The programs for A018067, the canonical program `A018067.P17008007606671554914` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018067 has offset 0).

The definition of A018067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 443 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018067.P17008007606671554914

`round(8^(n/4))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018067

/-- `round(8^(n/4))` -/
def P17008007606671554914.Spec : Prop :=
  ∀ n, P17008007606671554914.a n = A018067 n

theorem P17008007606671554914.correct : P17008007606671554914.Spec := by
  intro n
  simp only [A018067]

end A018067

/-! ## A018067.P15034318261906673010

`A018049(3*n)`
-/

namespace A018067.P15034318261906673010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018049 (3 * n)

end

end A018067.P15034318261906673010

namespace A018067

/-- `A018049(3*n)` -/
def P15034318261906673010.Spec : Prop :=
  ∀ n, P15034318261906673010.a n = A018067 n

end A018067

/-! ## A018067.P11033893777295095654

`record[A018049(A080512(n+1))]`
-/

namespace A018067.P11033893777295095654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018049 (A080512 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018067.P11033893777295095654

namespace A018067

/-- `record[A018049(A080512(n+1))]` -/
def P11033893777295095654.Spec : Prop :=
  ∀ n, P11033893777295095654.a n = A018067 n

end A018067

/-! ## A018067.P18018195895625528475

`A018049(A008585(n))/A020985(n)²`
-/

namespace A018067.P18018195895625528475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018049 (A008585 n).toNat : ℚ) / (A020985 n ^ 2 : ℚ)

end

end A018067.P18018195895625528475

namespace A018067

/-- `A018049(A008585(n))/A020985(n)²` -/
def P18018195895625528475.Spec : Prop :=
  ∀ n, P18018195895625528475.a n = (A018067 n : ℚ)

end A018067

/-! ## A018067.P8076964602589087323

`A018049(A008585(n))/A001055(A000040(n+1))`
-/

namespace A018067.P8076964602589087323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018049 (A008585 n).toNat : ℚ) / (A001055 (A000040 (n + 1)).toNat : ℚ)

end

end A018067.P8076964602589087323

namespace A018067

/-- `A018049(A008585(n))/A001055(A000040(n+1))` -/
def P8076964602589087323.Spec : Prop :=
  ∀ n, P8076964602589087323.a n = (A018067 n : ℚ)

end A018067

/-! ## A018067.P4433549525302572149

`A018049(A008585(n))/A001222(A023257(n+1))`
-/

namespace A018067.P4433549525302572149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018049 (A008585 n).toNat : ℚ) / (A001222 (A023257 (n + 1)).toNat : ℚ)

end

end A018067.P4433549525302572149

namespace A018067

/-- `A018049(A008585(n))/A001222(A023257(n+1))` -/
def P4433549525302572149.Spec : Prop :=
  ∀ n, P4433549525302572149.a n = (A018067 n : ℚ)

end A018067

/-! ## A018067.P13087488702733714856

`A018049(A008585(n))/A152271(A006093(n+1))`
-/

namespace A018067.P13087488702733714856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018049 (A008585 n).toNat : ℚ) / (A152271 (A006093 (n + 1)).toNat : ℚ)

end

end A018067.P13087488702733714856

namespace A018067

/-- `A018049(A008585(n))/A152271(A006093(n+1))` -/
def P13087488702733714856.Spec : Prop :=
  ∀ n, P13087488702733714856.a n = (A018067 n : ℚ)

end A018067

/-! ## A018067.P10563508974472255027

`A018049(A008585(n))/A001222(A256267(n+1))`
-/

namespace A018067.P10563508974472255027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018049 (A008585 n).toNat : ℚ) / (A001222 (A256267 (n + 1)).toNat : ℚ)

end

end A018067.P10563508974472255027

namespace A018067

/-- `A018049(A008585(n))/A001222(A256267(n+1))` -/
def P10563508974472255027.Spec : Prop :=
  ∀ n, P10563508974472255027.a n = (A018067 n : ℚ)

end A018067

/-! ## A018067.P4550311561859229437

`A018049(A008585(n))^A007318(A000217(n))`
-/

namespace A018067.P4550311561859229437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018049 (A008585 n).toNat : ℚ) ^ (A007318 (A000217 n).toNat : ℤ)

end

end A018067.P4550311561859229437

namespace A018067

/-- `A018049(A008585(n))^A007318(A000217(n))` -/
def P4550311561859229437.Spec : Prop :=
  ∀ n, P4550311561859229437.a n = (A018067 n : ℚ)

end A018067

/-! ## A018067.P13811116009010718618

`A018049(A008585(n))^A014963(A000217(n+2))`
-/

namespace A018067.P13811116009010718618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018049 (A008585 n).toNat : ℚ) ^ (A014963 (A000217 (n + 2)).toNat : ℤ)

end

end A018067.P13811116009010718618

namespace A018067

/-- `A018049(A008585(n))^A014963(A000217(n+2))` -/
def P13811116009010718618.Spec : Prop :=
  ∀ n, P13811116009010718618.a n = (A018067 n : ℚ)

end A018067

/-! ## A018067.P11818765818332951987

`A037213(A071698(n+1))+A018049(A008585(n))`
-/

namespace A018067.P11818765818332951987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A071698 (n + 1)).toNat + A018049 (A008585 n).toNat

end

end A018067.P11818765818332951987

namespace A018067

/-- `A037213(A071698(n+1))+A018049(A008585(n))` -/
def P11818765818332951987.Spec : Prop :=
  ∀ n, P11818765818332951987.a n = A018067 n

end A018067

/-!
# A018068: Powers of fourth root of 8 rounded up.

The programs for A018068, the canonical program `A018068.P1534183736500244742` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018068 has offset 0).

The definition of A018068 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018068.P1534183736500244742

`ceil(8^(n/4))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018068

/-- `ceil(8^(n/4))` -/
def P1534183736500244742.Spec : Prop :=
  ∀ n, P1534183736500244742.a n = A018068 n

theorem P1534183736500244742.correct : P1534183736500244742.Spec := by
  intro n
  simp only [A018068]

end A018068

/-! ## A018068.P3297653010484868189

`A018050(3*n)`
-/

namespace A018068.P3297653010484868189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018050 (3 * n)

end

end A018068.P3297653010484868189

namespace A018068

/-- `A018050(3*n)` -/
def P3297653010484868189.Spec : Prop :=
  ∀ n, P3297653010484868189.a n = A018068 n

end A018068

/-! ## A018068.P5258706801444134129

`A166486(n)+A018066(n)`
-/

namespace A018068.P5258706801444134129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018066 n

end

end A018068.P5258706801444134129

namespace A018068

/-- `A166486(n)+A018066(n)` -/
def P5258706801444134129.Spec : Prop :=
  ∀ n, P5258706801444134129.a n = A018068 n

end A018068

/-! ## A018068.P6839814488151715002

`A018066(n)+A000035(A342698(n))`
-/

namespace A018068.P6839814488151715002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018066 n + A000035 (A342698 n).toNat

end

end A018068.P6839814488151715002

namespace A018068

/-- `A018066(n)+A000035(A342698(n))` -/
def P6839814488151715002.Spec : Prop :=
  ∀ n, P6839814488151715002.a n = A018068 n

end A018068

/-! ## A018068.P1193220817954833800

`A018059(n)+A018066(n)-A018057(n)`
-/

namespace A018068.P1193220817954833800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018059 n + (A018066 n - A018057 n)

end

end A018068.P1193220817954833800

namespace A018068

/-- `A018059(n)+A018066(n)-A018057(n)` -/
def P1193220817954833800.Spec : Prop :=
  ∀ n, P1193220817954833800.a n = A018068 n

end A018068

/-! ## A018068.P1878673279572241315

`A018065(n)+A018066(n)-A018063(n)`
-/

namespace A018068.P1878673279572241315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018065 n + (A018066 n - A018063 n)

end

end A018068.P1878673279572241315

namespace A018068

/-- `A018065(n)+A018066(n)-A018063(n)` -/
def P1878673279572241315.Spec : Prop :=
  ∀ n, P1878673279572241315.a n = A018068 n

end A018068

/-!
# A018069: Expansion of 1/((1-3*x)*(1-8*x)*(1-10*x)).

The programs for A018069, the canonical program `A018069.P7359042238384290821` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018069 has offset 0).

The definition of A018069 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018069.P7359042238384290821

`18*a(n-1)-80*a(n-2)+3^n` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018069

/-- `18*a(n-1)-80*a(n-2)+3^n` -/
def P7359042238384290821.Spec : Prop :=
  ∀ n, P7359042238384290821.a n = A018069 n

theorem P7359042238384290821.correct : P7359042238384290821.Spec := by
  intro n
  simp only [A018069]

end A018069

/-! ## A018069.P6191461455346709689

`(5*10^(n+2)-7*8^(n+2)+2*3^(n+2))/70`
-/

namespace A018069.P6191461455346709689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 10 ^ (n + 2) : ℤ) - (7 * 8 ^ (n + 2) : ℤ) + (2 * 3 ^ (n + 2) : ℤ) : ℚ) / 70

end

end A018069.P6191461455346709689

namespace A018069

/-- `(5*10^(n+2)-7*8^(n+2)+2*3^(n+2))/70` -/
def P6191461455346709689.Spec : Prop :=
  ∀ n, P6191461455346709689.a n = (A018069 n : ℚ)

theorem P6191461455346709689.correct : P6191461455346709689.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A018069, Nat.add_sub_cancel, A018069.P6191461455346709689.a, A018069.P7359042238384290821.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A018069, Nat.add_sub_cancel, A018069.P6191461455346709689.a, A018069.P7359042238384290821.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A018069

/-! ## A018069.P12099945937673444276

`A016186(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A018069.P12099945937673444276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016186 n + 3 * a (n - 1)

end

end A018069.P12099945937673444276

namespace A018069

/-- `A016186(n)+3*a(n-1)` -/
def P12099945937673444276.Spec : Prop :=
  ∀ n, P12099945937673444276.a n = A018069 n

end A018069

/-! ## A018069.P13063645667879954397

`A081203(n+1)+3*a(n-1)` with `a(0)=1`
-/

namespace A018069.P13063645667879954397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081203 (n + 1) + 3 * a (n - 1)

end

end A018069.P13063645667879954397

namespace A018069

/-- `A081203(n+1)+3*a(n-1)` -/
def P13063645667879954397.Spec : Prop :=
  ∀ n, P13063645667879954397.a n = A018069 n

end A018069

/-! ## A018069.P11456390750684274483

`A016140(n)+11*a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A018069.P11456390750684274483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016140 n + 11 * a (n - 1) - a (n - 1)

end

end A018069.P11456390750684274483

namespace A018069

/-- `A016140(n)+11*a(n-1)-a(n-1)` -/
def P11456390750684274483.Spec : Prop :=
  ∀ n, P11456390750684274483.a n = A018069 n

end A018069

/-! ## A018069.P4896110852705274518

`2*A017952(n)-A017932(n)`
-/

namespace A018069.P4896110852705274518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017952 n - A017932 n

end

end A018069.P4896110852705274518

namespace A018069

/-- `2*A017952(n)-A017932(n)` -/
def P4896110852705274518.Spec : Prop :=
  ∀ n, P4896110852705274518.a n = A018069 n

end A018069

/-!
# A018070: Expansion of 1/((1-3*x)*(1-8*x)*(1-11*x)).

The programs for A018070, the canonical program `A018070.P10301211138478499902` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018070 has offset 0).

The definition of A018070 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018070.P10301211138478499902

`19*a(n-1)-88*a(n-2)+3^n` with `a(0)=1, a(1)=22`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018070

/-- `19*a(n-1)-88*a(n-2)+3^n` -/
def P10301211138478499902.Spec : Prop :=
  ∀ n, P10301211138478499902.a n = A018070 n

theorem P10301211138478499902.correct : P10301211138478499902.Spec := by
  intro n
  simp only [A018070]

end A018070

/-! ## A018070.P15820195958810585797

`(5*11^(n+2)-8^(n+3)+3^(n+3))/120`
-/

namespace A018070.P15820195958810585797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 11 ^ (n + 2) : ℤ) - (8 ^ (n + 3) : ℤ) + (3 ^ (n + 3) : ℤ) : ℚ) / 120

end

end A018070.P15820195958810585797

namespace A018070

/-- `(5*11^(n+2)-8^(n+3)+3^(n+3))/120` -/
def P15820195958810585797.Spec : Prop :=
  ∀ n, P15820195958810585797.a n = (A018070 n : ℚ)

theorem P15820195958810585797.correct : P15820195958810585797.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A018070, Nat.add_sub_cancel, A018070.P15820195958810585797.a, A018070.P10301211138478499902.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A018070, Nat.add_sub_cancel, A018070.P15820195958810585797.a, A018070.P10301211138478499902.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A018070

/-! ## A018070.P15328955597903487732

`A016187(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A018070.P15328955597903487732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016187 n + 3 * a (n - 1)

end

end A018070.P15328955597903487732

namespace A018070

/-- `A016187(n)+3*a(n-1)` -/
def P15328955597903487732.Spec : Prop :=
  ∀ n, P15328955597903487732.a n = A018070 n

end A018070

/-! ## A018070.P4341511560784959485

`A016140(n)+11*a(n-1)` with `a(0)=1`
-/

namespace A018070.P4341511560784959485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016140 n + 11 * a (n - 1)

end

end A018070.P4341511560784959485

namespace A018070

/-- `A016140(n)+11*a(n-1)` -/
def P4341511560784959485.Spec : Prop :=
  ∀ n, P4341511560784959485.a n = A018070 n

end A018070

/-! ## A018070.P5875131606892945953

`3*a(n-1)+A139746(n+1)/3` with `a(0)=1`
-/

namespace A018070.P5875131606892945953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + (A139746 (n + 1) : ℚ) / 3

end

end A018070.P5875131606892945953

namespace A018070

/-- `3*a(n-1)+A139746(n+1)/3` -/
def P5875131606892945953.Spec : Prop :=
  ∀ n, P5875131606892945953.a n = (A018070 n : ℚ)

end A018070

/-!
# A018071: Expansion of 1/((1-3x)(1-8x)(1-12x)).

The programs for A018071, the canonical program `A018071.P15916146401560535248` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018071 has offset 0).

The definition of A018071 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018071.P15916146401560535248

`20*a(n-1)-96*a(n-2)+3^n` with `a(0)=1, a(1)=23`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018071

/-- `20*a(n-1)-96*a(n-2)+3^n` -/
def P15916146401560535248.Spec : Prop :=
  ∀ n, P15916146401560535248.a n = A018071 n

theorem P15916146401560535248.correct : P15916146401560535248.Spec := by
  intro n
  simp only [A018071]

end A018071

/-! ## A018071.P3135999094658251103

`(5*12^(n+2)-9*8^(n+2)+4*3^(n+2))/180`
-/

namespace A018071.P3135999094658251103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 12 ^ (n + 2) : ℤ) - (9 * 8 ^ (n + 2) : ℤ) + (4 * 3 ^ (n + 2) : ℤ) : ℚ) / 180

end

end A018071.P3135999094658251103

namespace A018071

/-- `(5*12^(n+2)-9*8^(n+2)+4*3^(n+2))/180` -/
def P3135999094658251103.Spec : Prop :=
  ∀ n, P3135999094658251103.a n = (A018071 n : ℚ)

theorem P3135999094658251103.correct : P3135999094658251103.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A018071, Nat.add_sub_cancel, A018071.P3135999094658251103.a, A018071.P15916146401560535248.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A018071, Nat.add_sub_cancel, A018071.P3135999094658251103.a, A018071.P15916146401560535248.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A018071

/-! ## A018071.P6805996733442717738

`A016188(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A018071.P6805996733442717738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016188 n + 3 * a (n - 1)

end

end A018071.P6805996733442717738

namespace A018071

/-- `A016188(n)+3*a(n-1)` -/
def P6805996733442717738.Spec : Prop :=
  ∀ n, P6805996733442717738.a n = A018071 n

end A018071

/-! ## A018071.P5417902195257972064

`A016147(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A018071.P5417902195257972064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016147 n + 8 * a (n - 1)

end

end A018071.P5417902195257972064

namespace A018071

/-- `A016147(n)+8*a(n-1)` -/
def P5417902195257972064.Spec : Prop :=
  ∀ n, P5417902195257972064.a n = A018071 n

end A018071

/-! ## A018071.P8790454996888814699

`A016140(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A018071.P8790454996888814699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016140 n + 12 * a (n - 1)

end

end A018071.P8790454996888814699

namespace A018071

/-- `A016140(n)+12*a(n-1)` -/
def P8790454996888814699.Spec : Prop :=
  ∀ n, P8790454996888814699.a n = A018071 n

end A018071

/-! ## A018071.P6535077421359148336

`3*a(n-1)+∑[A027649(n)]*A000302(n)` with `a(0)=1`
-/

namespace A018071.P6535077421359148336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j) * A000302 n

end

end A018071.P6535077421359148336

namespace A018071

/-- `3*a(n-1)+∑[A027649(n)]*A000302(n)` -/
def P6535077421359148336.Spec : Prop :=
  ∀ n, P6535077421359148336.a n = A018071 n

end A018071

/-!
# A018072: Powers of fourth root of 10 rounded down.

The programs for A018072, the canonical program `A018072.P17045503792565000917` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018072 has offset 0).

The definition of A018072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018072.P17045503792565000917

`floor(10^(n/4))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018072

/-- `floor(10^(n/4))` -/
def P17045503792565000917.Spec : Prop :=
  ∀ n, P17045503792565000917.a n = A018072 n

theorem P17045503792565000917.correct : P17045503792565000917.Spec := by
  intro n
  simp only [A018072]

end A018072

/-! ## A018072.P12598361418660124630

`A018074(n)-A166486(n)`
-/

namespace A018072.P12598361418660124630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018074 n - A166486 n

end

end A018072.P12598361418660124630

namespace A018072

/-- `A018074(n)-A166486(n)` -/
def P12598361418660124630.Spec : Prop :=
  ∀ n, P12598361418660124630.a n = A018072 n

end A018072

/-! ## A018072.P10378797430812494025

`A018074(n)-Δ[A057353(n)]`
-/

namespace A018072.P10378797430812494025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018074 n - (f1 (n + 1) - f1 n)

end

end A018072.P10378797430812494025

namespace A018072

/-- `A018074(n)-Δ[A057353(n)]` -/
def P10378797430812494025.Spec : Prop :=
  ∀ n, P10378797430812494025.a n = A018072 n

end A018072

/-! ## A018072.P16996626036390670934

`A018074(n)-A000035(A026741(n))`
-/

namespace A018072.P16996626036390670934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018074 n - A000035 (A026741 n).toNat

end

end A018072.P16996626036390670934

namespace A018072

/-- `A018074(n)-A000035(A026741(n))` -/
def P16996626036390670934.Spec : Prop :=
  ∀ n, P16996626036390670934.a n = A018072 n

end A018072

/-! ## A018072.P15581663220016194564

`A018063(n)+A018074(n)-A018065(n)`
-/

namespace A018072.P15581663220016194564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018063 n + (A018074 n - A018065 n)

end

end A018072.P15581663220016194564

namespace A018072

/-- `A018063(n)+A018074(n)-A018065(n)` -/
def P15581663220016194564.Spec : Prop :=
  ∀ n, P15581663220016194564.a n = A018072 n

end A018072

/-! ## A018072.P3807087322779668250

`A130082(Δ[n²])-A000035(A195140(n))`
-/

namespace A018072.P3807087322779668250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130082 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A000035 (A195140 n).toNat

end

end A018072.P3807087322779668250

namespace A018072

/-- `A130082(Δ[n²])-A000035(A195140(n))` -/
def P3807087322779668250.Spec : Prop :=
  ∀ n, P3807087322779668250.a n = A018072 n

end A018072

/-! ## A018072.P15668911482751623735

`floor(sqrt(A017935(n)))%(2^(n+1))`
-/

namespace A018072.P15668911482751623735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A017935 n)) (2 ^ (n + 1) : ℤ)

end

end A018072.P15668911482751623735

namespace A018072

/-- `floor(sqrt(A017935(n)))%(2^(n+1))` -/
def P15668911482751623735.Spec : Prop :=
  ∀ n, P15668911482751623735.a n = A018072 n

end A018072

/-! ## A018072.P16340103094476335927

`gcd(n, n+1)*floor(root(A017934(n), 2))`
-/

namespace A018072.P16340103094476335927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * ⌊(A017934 n : ℝ) ^ (1 / (2 : ℝ))⌋

end

end A018072.P16340103094476335927

namespace A018072

/-- `gcd(n, n+1)*floor(root(A017934(n), 2))` -/
def P16340103094476335927.Spec : Prop :=
  ∀ n, P16340103094476335927.a n = A018072 n

end A018072

/-! ## A018072.P5256574018864619423

`floor(sqrt(A017934(n)))%A000051(n)`
-/

namespace A018072.P5256574018864619423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A017934 n)) (A000051 n)

end

end A018072.P5256574018864619423

namespace A018072

/-- `floor(sqrt(A017934(n)))%A000051(n)` -/
def P5256574018864619423.Spec : Prop :=
  ∀ n, P5256574018864619423.a n = A018072 n

end A018072

/-! ## A018072.P15842449994704965692

`floor(root(A017934(n), 2))%A159695(n)`
-/

namespace A018072.P15842449994704965692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A017934 n : ℝ) ^ (1 / (2 : ℝ))⌋ (A159695 n)

end

end A018072.P15842449994704965692

namespace A018072

/-- `floor(root(A017934(n), 2))%A159695(n)` -/
def P15842449994704965692.Spec : Prop :=
  ∀ n, P15842449994704965692.a n = A018072 n

end A018072

/-! ## A018072.P11325706882651004337

`A000007(n+1)+floor(sqrt(A017934(n)))`
-/

namespace A018072.P11325706882651004337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + Int.sqrt (A017934 n)

end

end A018072.P11325706882651004337

namespace A018072

/-- `A000007(n+1)+floor(sqrt(A017934(n)))` -/
def P11325706882651004337.Spec : Prop :=
  ∀ n, P11325706882651004337.a n = A018072 n

end A018072

/-! ## A018072.P18144215315353907108

`floor(sqrt(A017934(n)))*A000034(2*n)`
-/

namespace A018072.P18144215315353907108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A017934 n) * A000034 (2 * n)

end

end A018072.P18144215315353907108

namespace A018072

/-- `floor(sqrt(A017934(n)))*A000034(2*n)` -/
def P18144215315353907108.Spec : Prop :=
  ∀ n, P18144215315353907108.a n = A018072 n

end A018072

/-! ## A018072.P5170956336778226356

`A000038(n+1)+floor(root(A017934(n), 2))`
-/

namespace A018072.P5170956336778226356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + ⌊(A017934 n : ℝ) ^ (1 / (2 : ℝ))⌋

end

end A018072.P5170956336778226356

namespace A018072

/-- `A000038(n+1)+floor(root(A017934(n), 2))` -/
def P5170956336778226356.Spec : Prop :=
  ∀ n, P5170956336778226356.a n = A018072 n

end A018072

/-! ## A018072.P15350899899417780968

`A000265(n²+1)%4*floor(sqrt(A017934(n)))`
-/

namespace A018072.P15350899899417780968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (n ^ 2 + 1)) 4 * Int.sqrt (A017934 n)

end

end A018072.P15350899899417780968

namespace A018072

/-- `A000265(n²+1)%4*floor(sqrt(A017934(n)))` -/
def P15350899899417780968.Spec : Prop :=
  ∀ n, P15350899899417780968.a n = A018072 n

end A018072

/-! ## A018072.P9302075749163333262

`ceil(sqrt(sqrt(A003617(n+1))))-1`
-/

namespace A018072.P9302075749163333262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A003617 (n + 1) : ℝ))⌉ - 1

end

end A018072.P9302075749163333262

namespace A018072

/-- `ceil(sqrt(sqrt(A003617(n+1))))-1` -/
def P9302075749163333262.Spec : Prop :=
  ∀ n, P9302075749163333262.a n = A018072 n

end A018072

/-!
# A018073: Powers of fourth root of 10 rounded to nearest integer.

The programs for A018073, the canonical program `A018073.P12688293634514484333` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018073 has offset 0).

The definition of A018073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018073.P12688293634514484333

`round(10^(n/4))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018073

/-- `round(10^(n/4))` -/
def P12688293634514484333.Spec : Prop :=
  ∀ n, P12688293634514484333.a n = A018073 n

theorem P12688293634514484333.correct : P12688293634514484333.Spec := by
  intro n
  simp only [A018073]

end A018073

/-! ## A018073.P12635043084205788198

`ceil(ceil(sqrt(10)^n)/A018074(n))`
-/

namespace A018073.P12635043084205788198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈Real.sqrt (10 : ℝ) ^ n⌉ : ℚ) / (A018074 n : ℚ)⌉

end

end A018073.P12635043084205788198

namespace A018073

/-- `ceil(ceil(sqrt(10)^n)/A018074(n))` -/
def P12635043084205788198.Spec : Prop :=
  ∀ n, P12635043084205788198.a n = A018073 n

end A018073

/-! ## A018073.P3680679765632054271

`ceil(A017936(n+1)/ceil(10^(n/4)))`
-/

namespace A018073.P3680679765632054271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017936 (n + 1) : ℚ) / (⌈(10 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉ : ℚ)⌉

end

end A018073.P3680679765632054271

namespace A018073

/-- `ceil(A017936(n+1)/ceil(10^(n/4)))` -/
def P3680679765632054271.Spec : Prop :=
  ∀ n, P3680679765632054271.a n = A018073 n

end A018073

/-! ## A018073.P7702151186305305474

`ceil((floor(10^(n/2))+n%2)/record[A130082(n+1)^((n+1)%2)])`
-/

namespace A018073.P7702151186305305474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130082 (n + 1) ^ ((n + 1) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊(10 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋ + ((n % 2 : ℕ) : ℤ) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌉

end

end A018073.P7702151186305305474

namespace A018073

/-- `ceil((floor(10^(n/2))+n%2)/record[A130082(n+1)^((n+1)%2)])` -/
def P7702151186305305474.Spec : Prop :=
  ∀ n, P7702151186305305474.a n = A018073 n

end A018073

/-! ## A018073.P7124157490212869447

`round(sqrt(A017934(n)))%A000244(n+1)`
-/

namespace A018073.P7124157490212869447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A017934 n : ℝ))) (A000244 (n + 1))

end

end A018073.P7124157490212869447

namespace A018073

/-- `round(sqrt(A017934(n)))%A000244(n+1)` -/
def P7124157490212869447.Spec : Prop :=
  ∀ n, P7124157490212869447.a n = A018073 n

end A018073

/-! ## A018073.P6472331763938970521

`round(sqrt(A017935(n)))^A226523(n+1)²`
-/

namespace A018073.P6472331763938970521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (A017935 n : ℝ)) : ℚ) ^ (A226523 (n + 1) ^ 2 : ℤ)

end

end A018073.P6472331763938970521

namespace A018073

/-- `round(sqrt(A017935(n)))^A226523(n+1)²` -/
def P6472331763938970521.Spec : Prop :=
  ∀ n, P6472331763938970521.a n = (A018073 n : ℚ)

end A018073

/-! ## A018073.P755216346186873413

`round(sqrt(A017935(n)))%A221004(n)`
-/

namespace A018073.P755216346186873413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A017935 n : ℝ))) (A221004 n)

end

end A018073.P755216346186873413

namespace A018073

/-- `round(sqrt(A017935(n)))%A221004(n)` -/
def P755216346186873413.Spec : Prop :=
  ∀ n, P755216346186873413.a n = A018073 n

end A018073

/-! ## A018073.P3734942263736296688

`round(root(A017934(n), 2))%A074606(n)`
-/

namespace A018073.P3734942263736296688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A017934 n : ℝ) ^ (1 / (2 : ℝ)))) (A074606 n)

end

end A018073.P3734942263736296688

namespace A018073

/-- `round(root(A017934(n), 2))%A074606(n)` -/
def P3734942263736296688.Spec : Prop :=
  ∀ n, P3734942263736296688.a n = A018073 n

end A018073

/-!
# A018074: Powers of fourth root of 10 rounded up.

The programs for A018074, the canonical program `A018074.P3627246100912372173` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018074 has offset 0).

The definition of A018074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018074.P6934300488251412177

`ceil(10^(n/4))`
-/

namespace A018074.P6934300488251412177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉

end

end A018074.P6934300488251412177

namespace A018074

/-- `ceil(10^(n/4))` -/
def P6934300488251412177.Spec : Prop :=
  ∀ n, P6934300488251412177.a n = A018074 n

end A018074

/-! ## A018074.P1591901135632975461

`A130082(Δ[n²])`
-/

namespace A018074.P1591901135632975461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130082 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A018074.P1591901135632975461

namespace A018074

/-- `A130082(Δ[n²])` -/
def P1591901135632975461.Spec : Prop :=
  ∀ n, P1591901135632975461.a n = A018074 n

end A018074

/-! ## A018074.P5814349550497877454

`A102831(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A018074.P5814349550497877454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A102831 n + a (n - 1)

end

end A018074.P5814349550497877454

namespace A018074

/-- `A102831(n)+a(n-1)` -/
def P5814349550497877454.Spec : Prop :=
  ∀ n, P5814349550497877454.a n = A018074 n

end A018074

/-! ## A018074.P1911588736014706632

`record[A130082(n+1)^((n+1)%2)]`
-/

namespace A018074.P1911588736014706632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130082 (n + 1) ^ ((n + 1) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018074.P1911588736014706632

namespace A018074

/-- `record[A130082(n+1)^((n+1)%2)]` -/
def P1911588736014706632.Spec : Prop :=
  ∀ n, P1911588736014706632.a n = A018074 n

end A018074

/-! ## A018074.P3627246100912372173

`A166486(n)+A018072(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018074

/-- `A166486(n)+A018072(n)` -/
def P3627246100912372173.Spec : Prop :=
  ∀ n, P3627246100912372173.a n = A018074 n

theorem P3627246100912372173.correct : P3627246100912372173.Spec := by
  intro n
  simp only [A018074]

end A018074

/-! ## A018074.P17646290002427544

`record[A130082(abs(A009001(n)))]`
-/

namespace A018074.P17646290002427544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130082 |A009001 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018074.P17646290002427544

namespace A018074

/-- `record[A130082(abs(A009001(n)))]` -/
def P17646290002427544.Spec : Prop :=
  ∀ n, P17646290002427544.a n = A018074 n

end A018074

/-! ## A018074.P12379819886740583432

`record[A130082(A026741(n+1))]`
-/

namespace A018074.P12379819886740583432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130082 (A026741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018074.P12379819886740583432

namespace A018074

/-- `record[A130082(A026741(n+1))]` -/
def P12379819886740583432.Spec : Prop :=
  ∀ n, P12379819886740583432.a n = A018074 n

end A018074

/-! ## A018074.P1172011317995931739

`record[A130082(n+1)/A000034(n)]`
-/

namespace A018074.P1172011317995931739
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130082 (n + 1) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018074.P1172011317995931739

namespace A018074

/-- `record[A130082(n+1)/A000034(n)]` -/
def P1172011317995931739.Spec : Prop :=
  ∀ n, P1172011317995931739.a n = (A018074 n : ℚ)

end A018074

/-! ## A018074.P18313094171850360490

`record[A130082(n+1)/A009001(n)²]`
-/

namespace A018074.P18313094171850360490
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130082 (n + 1) : ℚ) / (A009001 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018074.P18313094171850360490

namespace A018074

/-- `record[A130082(n+1)/A009001(n)²]` -/
def P18313094171850360490.Spec : Prop :=
  ∀ n, P18313094171850360490.a n = (A018074 n : ℚ)

end A018074

/-! ## A018074.P3717476130208142060

`A130082(A026741(2*n+1))²/A130082(2*n+1)`
-/

namespace A018074.P3717476130208142060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130082 (A026741 (2 * n + 1)).toNat ^ 2 : ℚ) / (A130082 (2 * n + 1) : ℚ)

end

end A018074.P3717476130208142060

namespace A018074

/-- `A130082(A026741(2*n+1))²/A130082(2*n+1)` -/
def P3717476130208142060.Spec : Prop :=
  ∀ n, P3717476130208142060.a n = (A018074 n : ℚ)

end A018074

/-! ## A018074.P3537787502884308266

`A130082(2*n+1)²/A130082(A195140(2*n+1))`
-/

namespace A018074.P3537787502884308266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130082 (2 * n + 1) ^ 2 : ℚ) / (A130082 (A195140 (2 * n + 1)).toNat : ℚ)

end

end A018074.P3537787502884308266

namespace A018074

/-- `A130082(2*n+1)²/A130082(A195140(2*n+1))` -/
def P3537787502884308266.Spec : Prop :=
  ∀ n, P3537787502884308266.a n = (A018074 n : ℚ)

end A018074

/-! ## A018074.P18305306989551796775

`sqrt(sqrt(A308467(n+1)))`
-/

namespace A018074.P18305306989551796775
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A308467 (n + 1) : ℝ))

end

end A018074.P18305306989551796775

namespace A018074

/-- `sqrt(sqrt(A308467(n+1)))` -/
def P18305306989551796775.Spec : Prop :=
  ∀ n, P18305306989551796775.a n = (A018074 n : ℝ)

end A018074

/-! ## A018074.P1550568172906669310

`floor(sqrt(sqrt(A002283(n))))+1`
-/

namespace A018074.P1550568172906669310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A002283 n : ℝ))⌋ + 1

end

end A018074.P1550568172906669310

namespace A018074

/-- `floor(sqrt(sqrt(A002283(n))))+1` -/
def P1550568172906669310.Spec : Prop :=
  ∀ n, P1550568172906669310.a n = A018074 n

end A018074

/-!
# A018075: Powers of fourth root of 11 rounded down.

The programs for A018075, the canonical program `A018075.P11047111669678635786` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018075 has offset 0).

The definition of A018075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018075.P11047111669678635786

`floor(11^(n/4))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018075

/-- `floor(11^(n/4))` -/
def P11047111669678635786.Spec : Prop :=
  ∀ n, P11047111669678635786.a n = A018075 n

theorem P11047111669678635786.correct : P11047111669678635786.Spec := by
  intro n
  simp only [A018075]

end A018075

/-! ## A018075.P2142124141995974037

`A018077(n)-A166486(n)`
-/

namespace A018075.P2142124141995974037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018077 n - A166486 n

end

end A018075.P2142124141995974037

namespace A018075

/-- `A018077(n)-A166486(n)` -/
def P2142124141995974037.Spec : Prop :=
  ∀ n, P2142124141995974037.a n = A018075 n

end A018075

/-! ## A018075.P6629006443593234855

`A018063(n)+A018077(n)-A018065(n)`
-/

namespace A018075.P6629006443593234855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018063 n + (A018077 n - A018065 n)

end

end A018075.P6629006443593234855

namespace A018075

/-- `A018063(n)+A018077(n)-A018065(n)` -/
def P6629006443593234855.Spec : Prop :=
  ∀ n, P6629006443593234855.a n = A018075 n

end A018075

/-! ## A018075.P299160959555573966

`A018072(n)+A018077(n)-A018074(n)`
-/

namespace A018075.P299160959555573966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018072 n + (A018077 n - A018074 n)

end

end A018075.P299160959555573966

namespace A018075

/-- `A018072(n)+A018077(n)-A018074(n)` -/
def P299160959555573966.Spec : Prop :=
  ∀ n, P299160959555573966.a n = A018075 n

end A018075

/-! ## A018075.P11259551487844474844

`A018077(n)+A018093(n)-A018095(n)`
-/

namespace A018075.P11259551487844474844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018077 n + (A018093 n - A018095 n)

end

end A018075.P11259551487844474844

namespace A018075

/-- `A018077(n)+A018093(n)-A018095(n)` -/
def P11259551487844474844.Spec : Prop :=
  ∀ n, P11259551487844474844.a n = A018075 n

end A018075

/-! ## A018075.P6251196459622728357

`floor(sqrt(A017938(n)))%A000302(n+1)`
-/

namespace A018075.P6251196459622728357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A017938 n)) (A000302 (n + 1))

end

end A018075.P6251196459622728357

namespace A018075

/-- `floor(sqrt(A017938(n)))%A000302(n+1)` -/
def P6251196459622728357.Spec : Prop :=
  ∀ n, P6251196459622728357.a n = A018075 n

end A018075

/-!
# A018076: Powers of fourth root of 11 rounded to nearest integer.

The programs for A018076, the canonical program `A018076.P10992735860476291149` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018076 has offset 0).

The definition of A018076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018076.P10992735860476291149

`round(11^(n/4))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018076

/-- `round(11^(n/4))` -/
def P10992735860476291149.Spec : Prop :=
  ∀ n, P10992735860476291149.a n = A018076 n

theorem P10992735860476291149.correct : P10992735860476291149.Spec := by
  intro n
  simp only [A018076]

end A018076

/-! ## A018076.P16500745066316424761

`root(round(sqrt(A017939(n))), 2)²`
-/

namespace A018076.P16500745066316424761
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.roundAway (Real.sqrt (A017939 n : ℝ)) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A018076.P16500745066316424761

namespace A018076

/-- `root(round(sqrt(A017939(n))), 2)²` -/
def P16500745066316424761.Spec : Prop :=
  ∀ n, P16500745066316424761.a n = (A018076 n : ℝ)

end A018076

/-! ## A018076.P281985901267252428

`ceil(A017939(n)/A018077(n))`
-/

namespace A018076.P281985901267252428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017939 n : ℚ) / (A018077 n : ℚ)⌉

end

end A018076.P281985901267252428

namespace A018076

/-- `ceil(A017939(n)/A018077(n))` -/
def P281985901267252428.Spec : Prop :=
  ∀ n, P281985901267252428.a n = A018076 n

end A018076

/-! ## A018076.P8300459090590080146

`ceil(A018077(2*n)/A018077(n))`
-/

namespace A018076.P8300459090590080146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018077 (2 * n) : ℚ) / (A018077 n : ℚ)⌉

end

end A018076.P8300459090590080146

namespace A018076

/-- `ceil(A018077(2*n)/A018077(n))` -/
def P8300459090590080146.Spec : Prop :=
  ∀ n, P8300459090590080146.a n = A018076 n

end A018076

/-! ## A018076.P15421770327233368094

`round(sqrt(A017939(n)))%A005578(n+2)`
-/

namespace A018076.P15421770327233368094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A017939 n : ℝ))) (A005578 (n + 2))

end

end A018076.P15421770327233368094

namespace A018076

/-- `round(sqrt(A017939(n)))%A005578(n+2)` -/
def P15421770327233368094.Spec : Prop :=
  ∀ n, P15421770327233368094.a n = A018076 n

end A018076

/-! ## A018076.P8036150715403490550

`A167295(6*(n+1))+round(sqrt(A017939(n)))`
-/

namespace A018076.P8036150715403490550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167295 (6 * (n + 1)) + SequenceMachineLib.roundAway (Real.sqrt (A017939 n : ℝ))

end

end A018076.P8036150715403490550

namespace A018076

/-- `A167295(6*(n+1))+round(sqrt(A017939(n)))` -/
def P8036150715403490550.Spec : Prop :=
  ∀ n, P8036150715403490550.a n = A018076 n

end A018076

/-! ## A018076.P14614950892452465440

`round(sqrt(A017939(n)))*A014963(6*(n+1))`
-/

namespace A018076.P14614950892452465440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A017939 n : ℝ)) * A014963 (6 * (n + 1))

end

end A018076.P14614950892452465440

namespace A018076

/-- `round(sqrt(A017939(n)))*A014963(6*(n+1))` -/
def P14614950892452465440.Spec : Prop :=
  ∀ n, P14614950892452465440.a n = A018076 n

end A018076

/-! ## A018076.P2145909181669197606

`round(sqrt(A017939(n)))%A228339(n)`
-/

namespace A018076.P2145909181669197606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A017939 n : ℝ))) (A228339 n)

end

end A018076.P2145909181669197606

namespace A018076

/-- `round(sqrt(A017939(n)))%A228339(n)` -/
def P2145909181669197606.Spec : Prop :=
  ∀ n, P2145909181669197606.a n = A018076 n

end A018076

/-!
# A018077: Powers of fourth root of 11 rounded up.

The programs for A018077, the canonical program `A018077.P10293243021085696785` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018077 has offset 0).

The definition of A018077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018077.P6282446466856081402

`ceil(11^(n/4))`
-/

namespace A018077.P6282446466856081402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(11 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉

end

end A018077.P6282446466856081402

namespace A018077

/-- `ceil(11^(n/4))` -/
def P6282446466856081402.Spec : Prop :=
  ∀ n, P6282446466856081402.a n = A018077 n

end A018077

/-! ## A018077.P10293243021085696785

`A166486(n)+A018075(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018077

/-- `A166486(n)+A018075(n)` -/
def P10293243021085696785.Spec : Prop :=
  ∀ n, P10293243021085696785.a n = A018077 n

theorem P10293243021085696785.correct : P10293243021085696785.Spec := by
  intro n
  simp only [A018077]

end A018077

/-! ## A018077.P18321542054542073049

`A018075(n)+Δ[A057353(n)]`
-/

namespace A018077.P18321542054542073049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018075 n + (f1 (n + 1) - f1 n)

end

end A018077.P18321542054542073049

namespace A018077

/-- `A018075(n)+Δ[A057353(n)]` -/
def P18321542054542073049.Spec : Prop :=
  ∀ n, P18321542054542073049.a n = A018077 n

end A018077

/-! ## A018077.P5393363638664379806

`A018065(n)+A018075(n)-A018063(n)`
-/

namespace A018077.P5393363638664379806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018065 n + (A018075 n - A018063 n)

end

end A018077.P5393363638664379806

namespace A018077

/-- `A018065(n)+A018075(n)-A018063(n)` -/
def P5393363638664379806.Spec : Prop :=
  ∀ n, P5393363638664379806.a n = A018077 n

end A018077

/-! ## A018077.P13962914587100917987

`A018068(n)+A018075(n)-A018066(n)`
-/

namespace A018077.P13962914587100917987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018068 n + (A018075 n - A018066 n)

end

end A018077.P13962914587100917987

namespace A018077

/-- `A018068(n)+A018075(n)-A018066(n)` -/
def P13962914587100917987.Spec : Prop :=
  ∀ n, P13962914587100917987.a n = A018077 n

end A018077

/-! ## A018077.P12315895068866469140

`A018074(n)+A018075(n)-A018072(n)`
-/

namespace A018077.P12315895068866469140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018074 n + (A018075 n - A018072 n)

end

end A018077.P12315895068866469140

namespace A018077

/-- `A018074(n)+A018075(n)-A018072(n)` -/
def P12315895068866469140.Spec : Prop :=
  ∀ n, P12315895068866469140.a n = A018077 n

end A018077

/-!
# A018078: Powers of fourth root of 12 rounded down.

The programs for A018078, the canonical program `A018078.P5495665511050030366` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018078 has offset 0).

The definition of A018078 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018078.P5495665511050030366

`floor(12^(n/4))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018078

/-- `floor(12^(n/4))` -/
def P5495665511050030366.Spec : Prop :=
  ∀ n, P5495665511050030366.a n = A018078 n

theorem P5495665511050030366.correct : P5495665511050030366.Spec := by
  intro n
  simp only [A018078]

end A018078

/-! ## A018078.P15561219094832584421

`A018080(n)-A166486(n)`
-/

namespace A018078.P15561219094832584421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018080 n - A166486 n

end

end A018078.P15561219094832584421

namespace A018078

/-- `A018080(n)-A166486(n)` -/
def P15561219094832584421.Spec : Prop :=
  ∀ n, P15561219094832584421.a n = A018078 n

end A018078

/-! ## A018078.P66982957223798481

`A018060(n)+A018080(n)-A018062(n)`
-/

namespace A018078.P66982957223798481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018060 n + (A018080 n - A018062 n)

end

end A018078.P66982957223798481

namespace A018078

/-- `A018060(n)+A018080(n)-A018062(n)` -/
def P66982957223798481.Spec : Prop :=
  ∀ n, P66982957223798481.a n = A018078 n

end A018078

/-! ## A018078.P613135032473019427

`A018063(n)+A018080(n)-A018065(n)`
-/

namespace A018078.P613135032473019427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018063 n + (A018080 n - A018065 n)

end

end A018078.P613135032473019427

namespace A018078

/-- `A018063(n)+A018080(n)-A018065(n)` -/
def P613135032473019427.Spec : Prop :=
  ∀ n, P613135032473019427.a n = A018078 n

end A018078

/-! ## A018078.P13008555898159597855

`A018075(n)+A018080(n)-A018077(n)`
-/

namespace A018078.P13008555898159597855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018075 n + (A018080 n - A018077 n)

end

end A018078.P13008555898159597855

namespace A018078

/-- `A018075(n)+A018080(n)-A018077(n)` -/
def P13008555898159597855.Spec : Prop :=
  ∀ n, P13008555898159597855.a n = A018078 n

end A018078

/-!
# A018079: Powers of fourth root of 12 rounded to nearest integer.

The programs for A018079, the canonical program `A018079.P14753023873512482232` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018079 has offset 0).

The definition of A018079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018079.P14753023873512482232

`round(12^(n/4))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018079

/-- `round(12^(n/4))` -/
def P14753023873512482232.Spec : Prop :=
  ∀ n, P14753023873512482232.a n = A018079 n

theorem P14753023873512482232.correct : P14753023873512482232.Spec := by
  intro n
  simp only [A018079]

end A018079

/-! ## A018079.P4475688163097845007

`lcm((-1)^n, round(sqrt(A017940(n))))`
-/

namespace A018079.P4475688163097845007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (SequenceMachineLib.roundAway (Real.sqrt (A017940 n : ℝ)))

end

end A018079.P4475688163097845007

namespace A018079

/-- `lcm((-1)^n, round(sqrt(A017940(n))))` -/
def P4475688163097845007.Spec : Prop :=
  ∀ n, (P4475688163097845007.a n : ℤ) = A018079 n

end A018079

/-! ## A018079.P5762403595386207942

`round(sqrt(A017940(n)))%A057775(n)`
-/

namespace A018079.P5762403595386207942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A017940 n : ℝ))) (A057775 n)

end

end A018079.P5762403595386207942

namespace A018079

/-- `round(sqrt(A017940(n)))%A057775(n)` -/
def P5762403595386207942.Spec : Prop :=
  ∀ n, P5762403595386207942.a n = A018079 n

end A018079

/-! ## A018079.P18248268223796229030

`A000007(n+1)+round(sqrt(A017940(n)))`
-/

namespace A018079.P18248268223796229030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + SequenceMachineLib.roundAway (Real.sqrt (A017940 n : ℝ))

end

end A018079.P18248268223796229030

namespace A018079

/-- `A000007(n+1)+round(sqrt(A017940(n)))` -/
def P18248268223796229030.Spec : Prop :=
  ∀ n, P18248268223796229030.a n = A018079 n

end A018079

/-! ## A018079.P1604521421429145993

`A059841(2*n+1)+round(sqrt(A017940(n)))`
-/

namespace A018079.P1604521421429145993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n + 1) + SequenceMachineLib.roundAway (Real.sqrt (A017940 n : ℝ))

end

end A018079.P1604521421429145993

namespace A018079

/-- `A059841(2*n+1)+round(sqrt(A017940(n)))` -/
def P1604521421429145993.Spec : Prop :=
  ∀ n, P1604521421429145993.a n = A018079 n

end A018079

/-! ## A018079.P3132896072331965996

`A079977(2*n+1)+round(sqrt(A017940(n)))`
-/

namespace A018079.P3132896072331965996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (2 * n + 1) + SequenceMachineLib.roundAway (Real.sqrt (A017940 n : ℝ))

end

end A018079.P3132896072331965996

namespace A018079

/-- `A079977(2*n+1)+round(sqrt(A017940(n)))` -/
def P3132896072331965996.Spec : Prop :=
  ∀ n, P3132896072331965996.a n = A018079 n

end A018079

/-!
# A018080: Powers of fourth root of 12 rounded up.

The programs for A018080, the canonical program `A018080.P3905317944633213150` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018080 has offset 0).

The definition of A018080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018080.P2758909850904457612

`ceil(12^(n/4))`
-/

namespace A018080.P2758909850904457612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(12 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉

end

end A018080.P2758909850904457612

namespace A018080

/-- `ceil(12^(n/4))` -/
def P2758909850904457612.Spec : Prop :=
  ∀ n, P2758909850904457612.a n = A018080 n

end A018080

/-! ## A018080.P3905317944633213150

`A166486(n)+A018078(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018080

/-- `A166486(n)+A018078(n)` -/
def P3905317944633213150.Spec : Prop :=
  ∀ n, P3905317944633213150.a n = A018080 n

theorem P3905317944633213150.correct : P3905317944633213150.Spec := by
  intro n
  simp only [A018080]

end A018080

/-! ## A018080.P6905045061743333948

`A018078(n)+A000035(A026741(n))`
-/

namespace A018080.P6905045061743333948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018078 n + A000035 (A026741 n).toNat

end

end A018080.P6905045061743333948

namespace A018080

/-- `A018078(n)+A000035(A026741(n))` -/
def P6905045061743333948.Spec : Prop :=
  ∀ n, P6905045061743333948.a n = A018080 n

end A018080

/-! ## A018080.P14069471456921247317

`A018065(n)+A018078(n)-A018063(n)`
-/

namespace A018080.P14069471456921247317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018065 n + (A018078 n - A018063 n)

end

end A018080.P14069471456921247317

namespace A018080

/-- `A018065(n)+A018078(n)-A018063(n)` -/
def P14069471456921247317.Spec : Prop :=
  ∀ n, P14069471456921247317.a n = A018080 n

end A018080

/-! ## A018080.P7299339966512512322

`A018068(n)+A018078(n)-A018066(n)`
-/

namespace A018080.P7299339966512512322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018068 n + (A018078 n - A018066 n)

end

end A018080.P7299339966512512322

namespace A018080

/-- `A018068(n)+A018078(n)-A018066(n)` -/
def P7299339966512512322.Spec : Prop :=
  ∀ n, P7299339966512512322.a n = A018080 n

end A018080

/-!
# A018081: Powers of fourth root of 13 rounded down.

The programs for A018081, the canonical program `A018081.P4755878940651221397` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018081 has offset 0).

The definition of A018081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018081.P4755878940651221397

`floor(13^(n/4))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018081

/-- `floor(13^(n/4))` -/
def P4755878940651221397.Spec : Prop :=
  ∀ n, P4755878940651221397.a n = A018081 n

theorem P4755878940651221397.correct : P4755878940651221397.Spec := by
  intro n
  simp only [A018081]

end A018081

/-! ## A018081.P12944014087709429735

`A018083(n)-A166486(n)`
-/

namespace A018081.P12944014087709429735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018083 n - A166486 n

end

end A018081.P12944014087709429735

namespace A018081

/-- `A018083(n)-A166486(n)` -/
def P12944014087709429735.Spec : Prop :=
  ∀ n, P12944014087709429735.a n = A018081 n

end A018081

/-! ## A018081.P6241831528371996740

`A018083(n)-A075553(n)²`
-/

namespace A018081.P6241831528371996740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018083 n - A075553 n ^ 2

end

end A018081.P6241831528371996740

namespace A018081

/-- `A018083(n)-A075553(n)²` -/
def P6241831528371996740.Spec : Prop :=
  ∀ n, P6241831528371996740.a n = A018081 n

end A018081

/-! ## A018081.P1008095432730166441

`A018083(n)-char[A098180(n)]`
-/

namespace A018081.P1008095432730166441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018083 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A018081.P1008095432730166441

namespace A018081

/-- `A018083(n)-char[A098180(n)]` -/
def P1008095432730166441.Spec : Prop :=
  ∀ n, P1008095432730166441.a n = A018081 n

end A018081

/-! ## A018081.P9025059548087097274

`A018063(n)+A018083(n)-A018065(n)`
-/

namespace A018081.P9025059548087097274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018063 n + (A018083 n - A018065 n)

end

end A018081.P9025059548087097274

namespace A018081

/-- `A018063(n)+A018083(n)-A018065(n)` -/
def P9025059548087097274.Spec : Prop :=
  ∀ n, P9025059548087097274.a n = A018081 n

end A018081

/-! ## A018081.P7562000971013846017

`A018083(n)+A018084(n)-A018086(n)`
-/

namespace A018081.P7562000971013846017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018083 n + (A018084 n - A018086 n)

end

end A018081.P7562000971013846017

namespace A018081

/-- `A018083(n)+A018084(n)-A018086(n)` -/
def P7562000971013846017.Spec : Prop :=
  ∀ n, P7562000971013846017.a n = A018081 n

end A018081

/-! ## A018081.P5533844092177808368

`ceil(sqrt(A017945(n))-A046978(n)²)`
-/

namespace A018081.P5533844092177808368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A017945 n : ℝ) - (A046978 n ^ 2 : ℝ)⌉

end

end A018081.P5533844092177808368

namespace A018081

/-- `ceil(sqrt(A017945(n))-A046978(n)²)` -/
def P5533844092177808368.Spec : Prop :=
  ∀ n, P5533844092177808368.a n = A018081 n

end A018081

/-! ## A018081.P3415829289810953691

`A018083(n)-A000035(A077043(n))`
-/

namespace A018081.P3415829289810953691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018083 n - A000035 (A077043 n).toNat

end

end A018081.P3415829289810953691

namespace A018081

/-- `A018083(n)-A000035(A077043(n))` -/
def P3415829289810953691.Spec : Prop :=
  ∀ n, P3415829289810953691.a n = A018081 n

end A018081

/-!
# A018082: Powers of fourth root of 13 rounded to nearest integer.

The programs for A018082, the canonical program `A018082.P16674709508726984476` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018082 has offset 0).

The definition of A018082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018082.P16674709508726984476

`round(13^(n/4))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018082

/-- `round(13^(n/4))` -/
def P16674709508726984476.Spec : Prop :=
  ∀ n, P16674709508726984476.a n = A018082 n

theorem P16674709508726984476.correct : P16674709508726984476.Spec := by
  intro n
  simp only [A018082]

end A018082

/-! ## A018082.P8547867410679372270

`ceil(A017943(n)/A018083(n))`
-/

namespace A018082.P8547867410679372270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017943 n : ℚ) / (A018083 n : ℚ)⌉

end

end A018082.P8547867410679372270

namespace A018082

/-- `ceil(A017943(n)/A018083(n))` -/
def P8547867410679372270.Spec : Prop :=
  ∀ n, P8547867410679372270.a n = A018082 n

end A018082

/-! ## A018082.P8720639152341607356

`ceil(A017945(n)/A018083(n))`
-/

namespace A018082.P8720639152341607356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017945 n : ℚ) / (A018083 n : ℚ)⌉

end

end A018082.P8720639152341607356

namespace A018082

/-- `ceil(A017945(n)/A018083(n))` -/
def P8720639152341607356.Spec : Prop :=
  ∀ n, P8720639152341607356.a n = A018082 n

end A018082

/-! ## A018082.P9925920128557414091

`ceil(A018083(2*n)/A018083(n))`
-/

namespace A018082.P9925920128557414091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018083 (2 * n) : ℚ) / (A018083 n : ℚ)⌉

end

end A018082.P9925920128557414091

namespace A018082

/-- `ceil(A018083(2*n)/A018083(n))` -/
def P9925920128557414091.Spec : Prop :=
  ∀ n, P9925920128557414091.a n = A018082 n

end A018082

/-! ## A018082.P4480633396061822725

`round(sqrt(A017945(n)))%A000032(2*n)`
-/

namespace A018082.P4480633396061822725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A017945 n : ℝ))) (A000032 (2 * n))

end

end A018082.P4480633396061822725

namespace A018082

/-- `round(sqrt(A017945(n)))%A000032(2*n)` -/
def P4480633396061822725.Spec : Prop :=
  ∀ n, P4480633396061822725.a n = A018082 n

end A018082

/-! ## A018082.P15004755765516062481

`A336931((n+1)²)+round(sqrt(A017945(n)))`
-/

namespace A018082.P15004755765516062481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336931 ((n + 1) ^ 2) + SequenceMachineLib.roundAway (Real.sqrt (A017945 n : ℝ))

end

end A018082.P15004755765516062481

namespace A018082

/-- `A336931((n+1)²)+round(sqrt(A017945(n)))` -/
def P15004755765516062481.Spec : Prop :=
  ∀ n, P15004755765516062481.a n = A018082 n

end A018082

/-!
# A018083: Powers of fourth root of 13 rounded up.

The programs for A018083, the canonical program `A018083.P16938260605876087660` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018083 has offset 0).

The definition of A018083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018083.P232082608403167917

`ceil(13^(n/4))`
-/

namespace A018083.P232082608403167917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(13 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉

end

end A018083.P232082608403167917

namespace A018083

/-- `ceil(13^(n/4))` -/
def P232082608403167917.Spec : Prop :=
  ∀ n, P232082608403167917.a n = A018083 n

end A018083

/-! ## A018083.P16938260605876087660

`A166486(n)+A018081(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018083

/-- `A166486(n)+A018081(n)` -/
def P16938260605876087660.Spec : Prop :=
  ∀ n, P16938260605876087660.a n = A018083 n

theorem P16938260605876087660.correct : P16938260605876087660.Spec := by
  intro n
  simp only [A018083]

end A018083

/-! ## A018083.P17371334355629541909

`A018065(n)+A018081(n)-A018063(n)`
-/

namespace A018083.P17371334355629541909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018065 n + (A018081 n - A018063 n)

end

end A018083.P17371334355629541909

namespace A018083

/-- `A018065(n)+A018081(n)-A018063(n)` -/
def P17371334355629541909.Spec : Prop :=
  ∀ n, P17371334355629541909.a n = A018083 n

end A018083

/-! ## A018083.P3191806770071446766

`A018081(n)+A018101(n)-A018099(n)`
-/

namespace A018083.P3191806770071446766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018081 n + (A018101 n - A018099 n)

end

end A018083.P3191806770071446766

namespace A018083

/-- `A018081(n)+A018101(n)-A018099(n)` -/
def P3191806770071446766.Spec : Prop :=
  ∀ n, P3191806770071446766.a n = A018083 n

end A018083

/-! ## A018083.P5529567887848815057

`A018081(n)+A000035(A077043(n))`
-/

namespace A018083.P5529567887848815057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018081 n + A000035 (A077043 n).toNat

end

end A018083.P5529567887848815057

namespace A018083

/-- `A018081(n)+A000035(A077043(n))` -/
def P5529567887848815057.Spec : Prop :=
  ∀ n, P5529567887848815057.a n = A018083 n

end A018083

/-!
# A018084: Powers of fourth root of 14 rounded down.

The programs for A018084, the canonical program `A018084.P17169660407450006236` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018084 has offset 0).

The definition of A018084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018084.P17169660407450006236

`floor(14^(n/4))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018084

/-- `floor(14^(n/4))` -/
def P17169660407450006236.Spec : Prop :=
  ∀ n, P17169660407450006236.a n = A018084 n

theorem P17169660407450006236.correct : P17169660407450006236.Spec := by
  intro n
  simp only [A018084]

end A018084

/-! ## A018084.P17564924949894458607

`A018086(n)-A166486(n)`
-/

namespace A018084.P17564924949894458607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018086 n - A166486 n

end

end A018084.P17564924949894458607

namespace A018084

/-- `A018086(n)-A166486(n)` -/
def P17564924949894458607.Spec : Prop :=
  ∀ n, P17564924949894458607.a n = A018084 n

end A018084

/-! ## A018084.P7735228249104201831

`A018063(n)+A018086(n)-A018065(n)`
-/

namespace A018084.P7735228249104201831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018063 n + (A018086 n - A018065 n)

end

end A018084.P7735228249104201831

namespace A018084

/-- `A018063(n)+A018086(n)-A018065(n)` -/
def P7735228249104201831.Spec : Prop :=
  ∀ n, P7735228249104201831.a n = A018084 n

end A018084

/-! ## A018084.P17450060190224292346

`A018072(n)+A018086(n)-A018074(n)`
-/

namespace A018084.P17450060190224292346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018072 n + (A018086 n - A018074 n)

end

end A018084.P17450060190224292346

namespace A018084

/-- `A018072(n)+A018086(n)-A018074(n)` -/
def P17450060190224292346.Spec : Prop :=
  ∀ n, P17450060190224292346.a n = A018084 n

end A018084

/-! ## A018084.P6851833846608732181

`A018075(n)+A018086(n)-A018077(n)`
-/

namespace A018084.P6851833846608732181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018075 n + (A018086 n - A018077 n)

end

end A018084.P6851833846608732181

namespace A018084

/-- `A018075(n)+A018086(n)-A018077(n)` -/
def P6851833846608732181.Spec : Prop :=
  ∀ n, P6851833846608732181.a n = A018084 n

end A018084

/-!
# A018085: Powers of fourth root of 14 rounded to nearest integer.

The programs for A018085, the canonical program `A018085.P14192843371343894989` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018085 has offset 0).

The definition of A018085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018085.P14192843371343894989

`round(14^(n/4))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018085

/-- `round(14^(n/4))` -/
def P14192843371343894989.Spec : Prop :=
  ∀ n, P14192843371343894989.a n = A018085 n

theorem P14192843371343894989.correct : P14192843371343894989.Spec := by
  intro n
  simp only [A018085]

end A018085

/-! ## A018085.P13984276937931705193

`ceil(A017946(n)/A018086(n))`
-/

namespace A018085.P13984276937931705193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017946 n : ℚ) / (A018086 n : ℚ)⌉

end

end A018085.P13984276937931705193

namespace A018085

/-- `ceil(A017946(n)/A018086(n))` -/
def P13984276937931705193.Spec : Prop :=
  ∀ n, P13984276937931705193.a n = A018085 n

end A018085

/-! ## A018085.P8046468242414312018

`ceil(A017948(n)/A018086(n))`
-/

namespace A018085.P8046468242414312018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017948 n : ℚ) / (A018086 n : ℚ)⌉

end

end A018085.P8046468242414312018

namespace A018085

/-- `ceil(A017948(n)/A018086(n))` -/
def P8046468242414312018.Spec : Prop :=
  ∀ n, P8046468242414312018.a n = A018085 n

end A018085

/-! ## A018085.P2728257045978246813

`ceil(A018086(2*n)/A018086(n))`
-/

namespace A018085.P2728257045978246813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018086 (2 * n) : ℚ) / (A018086 n : ℚ)⌉

end

end A018085.P2728257045978246813

namespace A018085

/-- `ceil(A018086(2*n)/A018086(n))` -/
def P2728257045978246813.Spec : Prop :=
  ∀ n, P2728257045978246813.a n = A018085 n

end A018085

/-! ## A018085.P5523999639972226590

`A008683(4*(n+1))+round(sqrt(A017948(n)))`
-/

namespace A018085.P5523999639972226590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + SequenceMachineLib.roundAway (Real.sqrt (A017948 n : ℝ))

end

end A018085.P5523999639972226590

namespace A018085

/-- `A008683(4*(n+1))+round(sqrt(A017948(n)))` -/
def P5523999639972226590.Spec : Prop :=
  ∀ n, P5523999639972226590.a n = A018085 n

end A018085

/-!
# A018086: Powers of fourth root of 14 rounded up.

The programs for A018086, the canonical program `A018086.P14049671221435333370` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018086 has offset 0).

The definition of A018086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018086.P1102486996229609505

`ceil(14^(n/4))`
-/

namespace A018086.P1102486996229609505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(14 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉

end

end A018086.P1102486996229609505

namespace A018086

/-- `ceil(14^(n/4))` -/
def P1102486996229609505.Spec : Prop :=
  ∀ n, P1102486996229609505.a n = A018086 n

end A018086

/-! ## A018086.P14049671221435333370

`A166486(n)+A018084(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018086

/-- `A166486(n)+A018084(n)` -/
def P14049671221435333370.Spec : Prop :=
  ∀ n, P14049671221435333370.a n = A018086 n

theorem P14049671221435333370.correct : P14049671221435333370.Spec := by
  intro n
  simp only [A018086]

end A018086

/-! ## A018086.P5412931620344556223

`A018084(n)+A004525(n)%2`
-/

namespace A018086.P5412931620344556223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018084 n + Int.tmod (A004525 n) 2

end

end A018086.P5412931620344556223

namespace A018086

/-- `A018084(n)+A004525(n)%2` -/
def P5412931620344556223.Spec : Prop :=
  ∀ n, P5412931620344556223.a n = A018086 n

end A018086

/-! ## A018086.P3796064329690647788

`A018065(n)+A018084(n)-A018063(n)`
-/

namespace A018086.P3796064329690647788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018065 n + (A018084 n - A018063 n)

end

end A018086.P3796064329690647788

namespace A018086

/-- `A018065(n)+A018084(n)-A018063(n)` -/
def P3796064329690647788.Spec : Prop :=
  ∀ n, P3796064329690647788.a n = A018086 n

end A018086

/-! ## A018086.P9568456112492902248

`A018084(n)+A018101(n)-A018099(n)`
-/

namespace A018086.P9568456112492902248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018084 n + (A018101 n - A018099 n)

end

end A018086.P9568456112492902248

namespace A018086

/-- `A018084(n)+A018101(n)-A018099(n)` -/
def P9568456112492902248.Spec : Prop :=
  ∀ n, P9568456112492902248.a n = A018086 n

end A018086

/-!
# A018087: Powers of fourth root of 15 rounded down.

The programs for A018087, the canonical program `A018087.P17454763579600374980` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018087 has offset 0).

The definition of A018087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018087.P17454763579600374980

`floor(15^(n/4))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018087

/-- `floor(15^(n/4))` -/
def P17454763579600374980.Spec : Prop :=
  ∀ n, P17454763579600374980.a n = A018087 n

theorem P17454763579600374980.correct : P17454763579600374980.Spec := by
  intro n
  simp only [A018087]

end A018087

/-! ## A018087.P2674919799849537791

`A018089(n)-A166486(n)`
-/

namespace A018087.P2674919799849537791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018089 n - A166486 n

end

end A018087.P2674919799849537791

namespace A018087

/-- `A018089(n)-A166486(n)` -/
def P2674919799849537791.Spec : Prop :=
  ∀ n, P2674919799849537791.a n = A018087 n

end A018087

/-! ## A018087.P15022973486821924773

`A018089(n)-A000035(A004525(n))`
-/

namespace A018087.P15022973486821924773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018089 n - A000035 (A004525 n).toNat

end

end A018087.P15022973486821924773

namespace A018087

/-- `A018089(n)-A000035(A004525(n))` -/
def P15022973486821924773.Spec : Prop :=
  ∀ n, P15022973486821924773.a n = A018087 n

end A018087

/-! ## A018087.P5201135645522238139

`A018089(n)-A000035(A026741(n))`
-/

namespace A018087.P5201135645522238139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018089 n - A000035 (A026741 n).toNat

end

end A018087.P5201135645522238139

namespace A018087

/-- `A018089(n)-A000035(A026741(n))` -/
def P5201135645522238139.Spec : Prop :=
  ∀ n, P5201135645522238139.a n = A018087 n

end A018087

/-! ## A018087.P11300368830961619547

`A018089(n)-A000035(A317313(n))`
-/

namespace A018087.P11300368830961619547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018089 n - A000035 (A317313 n).toNat

end

end A018087.P11300368830961619547

namespace A018087

/-- `A018089(n)-A000035(A317313(n))` -/
def P11300368830961619547.Spec : Prop :=
  ∀ n, P11300368830961619547.a n = A018087 n

end A018087

/-! ## A018087.P3008308998455609158

`A018063(n)+A018089(n)-A018065(n)`
-/

namespace A018087.P3008308998455609158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018063 n + (A018089 n - A018065 n)

end

end A018087.P3008308998455609158

namespace A018087

/-- `A018063(n)+A018089(n)-A018065(n)` -/
def P3008308998455609158.Spec : Prop :=
  ∀ n, P3008308998455609158.a n = A018087 n

end A018087

/-!
# A018088: Powers of fourth root of 15 rounded to nearest integer.

The programs for A018088, the canonical program `A018088.P18234037345618883268` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018088 has offset 0).

The definition of A018088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018088.P18234037345618883268

`round(15^(n/4))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018088

/-- `round(15^(n/4))` -/
def P18234037345618883268.Spec : Prop :=
  ∀ n, P18234037345618883268.a n = A018088 n

theorem P18234037345618883268.correct : P18234037345618883268.Spec := by
  intro n
  simp only [A018088]

end A018088

/-! ## A018088.P7849626879932975695

`ceil(A017951(n)/ceil(15^(n/4)))`
-/

namespace A018088.P7849626879932975695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017951 n : ℚ) / (⌈(15 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉ : ℚ)⌉

end

end A018088.P7849626879932975695

namespace A018088

/-- `ceil(A017951(n)/ceil(15^(n/4)))` -/
def P7849626879932975695.Spec : Prop :=
  ∀ n, P7849626879932975695.a n = A018088 n

end A018088

/-! ## A018088.P3739417948629715342

`ceil(A017949(n)/A018089(n))`
-/

namespace A018088.P3739417948629715342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017949 n : ℚ) / (A018089 n : ℚ)⌉

end

end A018088.P3739417948629715342

namespace A018088

/-- `ceil(A017949(n)/A018089(n))` -/
def P3739417948629715342.Spec : Prop :=
  ∀ n, P3739417948629715342.a n = A018088 n

end A018088

/-! ## A018088.P18165331398704966254

`floor(sqrt(A018087(n)+A017949(n)))`
-/

namespace A018088.P18165331398704966254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018087 n + A017949 n)

end

end A018088.P18165331398704966254

namespace A018088

/-- `floor(sqrt(A018087(n)+A017949(n)))` -/
def P18165331398704966254.Spec : Prop :=
  ∀ n, P18165331398704966254.a n = A018088 n

end A018088

/-! ## A018088.P1563539302364761266

`floor(sqrt(A018087(n)+A017951(n)))`
-/

namespace A018088.P1563539302364761266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A018087 n + A017951 n)

end

end A018088.P1563539302364761266

namespace A018088

/-- `floor(sqrt(A018087(n)+A017951(n)))` -/
def P1563539302364761266.Spec : Prop :=
  ∀ n, P1563539302364761266.a n = A018088 n

end A018088

/-! ## A018088.P14009393030099524959

`ceil(A018087(2*n)/A018089(n))`
-/

namespace A018088.P14009393030099524959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018087 (2 * n) : ℚ) / (A018089 n : ℚ)⌉

end

end A018088.P14009393030099524959

namespace A018088

/-- `ceil(A018087(2*n)/A018089(n))` -/
def P14009393030099524959.Spec : Prop :=
  ∀ n, P14009393030099524959.a n = A018088 n

end A018088

/-! ## A018088.P9055789419681291194

`ceil(A018089(2*n)/A018089(n))`
-/

namespace A018088.P9055789419681291194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018089 (2 * n) : ℚ) / (A018089 n : ℚ)⌉

end

end A018088.P9055789419681291194

namespace A018088

/-- `ceil(A018089(2*n)/A018089(n))` -/
def P9055789419681291194.Spec : Prop :=
  ∀ n, P9055789419681291194.a n = A018088 n

end A018088

/-!
# A018089: Powers of fourth root of 15 rounded up.

The programs for A018089, the canonical program `A018089.P13846765686959543665` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018089 has offset 0).

The definition of A018089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018089.P7154858902320548193

`ceil(15^(n/4))`
-/

namespace A018089.P7154858902320548193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(15 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉

end

end A018089.P7154858902320548193

namespace A018089

/-- `ceil(15^(n/4))` -/
def P7154858902320548193.Spec : Prop :=
  ∀ n, P7154858902320548193.a n = A018089 n

end A018089

/-! ## A018089.P13846765686959543665

`A166486(n)+A018087(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018089

/-- `A166486(n)+A018087(n)` -/
def P13846765686959543665.Spec : Prop :=
  ∀ n, P13846765686959543665.a n = A018089 n

theorem P13846765686959543665.correct : P13846765686959543665.Spec := by
  intro n
  simp only [A018089]

end A018089

/-! ## A018089.P2469045023260289477

`A018087(n)+A000035(A004525(n))`
-/

namespace A018089.P2469045023260289477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018087 n + A000035 (A004525 n).toNat

end

end A018089.P2469045023260289477

namespace A018089

/-- `A018087(n)+A000035(A004525(n))` -/
def P2469045023260289477.Spec : Prop :=
  ∀ n, P2469045023260289477.a n = A018089 n

end A018089

/-! ## A018089.P8107011453232963410

`A059841(A052938(n)*A059841(n))+A018087(n)`
-/

namespace A018089.P8107011453232963410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A052938 n * A059841 n).toNat + A018087 n

end

end A018089.P8107011453232963410

namespace A018089

/-- `A059841(A052938(n)*A059841(n))+A018087(n)` -/
def P8107011453232963410.Spec : Prop :=
  ∀ n, P8107011453232963410.a n = A018089 n

end A018089

/-! ## A018089.P12097131664341810319

`A018087(n)+A018101(n)-A018099(n)`
-/

namespace A018089.P12097131664341810319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018087 n + (A018101 n - A018099 n)

end

end A018089.P12097131664341810319

namespace A018089

/-- `A018087(n)+A018101(n)-A018099(n)` -/
def P12097131664341810319.Spec : Prop :=
  ∀ n, P12097131664341810319.a n = A018089 n

end A018089

/-! ## A018089.P16309459787220735150

`A059841(∑[A052938(n)])+A018087(n)`
-/

namespace A018089.P16309459787220735150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A018087 n

end

end A018089.P16309459787220735150

namespace A018089

/-- `A059841(∑[A052938(n)])+A018087(n)` -/
def P16309459787220735150.Spec : Prop :=
  ∀ n, P16309459787220735150.a n = A018089 n

end A018089

/-! ## A018089.P3775326535444528117

`A059841(A052938(A052938(n²)))+A018087(n)`
-/

namespace A018089.P3775326535444528117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A052938 (A052938 (n ^ 2)).toNat).toNat + A018087 n

end

end A018089.P3775326535444528117

namespace A018089

/-- `A059841(A052938(A052938(n²)))+A018087(n)` -/
def P3775326535444528117.Spec : Prop :=
  ∀ n, P3775326535444528117.a n = A018089 n

end A018089

/-!
# A018090: Expansion of 1/((1-3*x)*(1-9*x)*(1-10*x)).

The programs for A018090, the canonical program `A018090.P12180470080737213326` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018090 has offset 0).

The definition of A018090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018090.P12180470080737213326

`19*a(n-1)-90*a(n-2)+3^n` with `a(0)=1, a(1)=22`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018090

/-- `19*a(n-1)-90*a(n-2)+3^n` -/
def P12180470080737213326.Spec : Prop :=
  ∀ n, P12180470080737213326.a n = A018090 n

theorem P12180470080737213326.correct : P12180470080737213326.Spec := by
  intro n
  simp only [A018090]

end A018090

/-! ## A018090.P1326386976659097226

`(6*10^(n+2)-7*9^(n+2)+3^(n+2))/42`
-/

namespace A018090.P1326386976659097226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * 10 ^ (n + 2) : ℤ) - (7 * 9 ^ (n + 2) : ℤ) + (3 ^ (n + 2) : ℤ) : ℚ) / 42

end

end A018090.P1326386976659097226

namespace A018090

/-- `(6*10^(n+2)-7*9^(n+2)+3^(n+2))/42` -/
def P1326386976659097226.Spec : Prop :=
  ∀ n, P1326386976659097226.a n = (A018090 n : ℚ)

theorem P1326386976659097226.correct : P1326386976659097226.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A018090, Nat.add_sub_cancel, A018090.P1326386976659097226.a, A018090.P12180470080737213326.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A018090, Nat.add_sub_cancel, A018090.P1326386976659097226.a, A018090.P12180470080737213326.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A018090

/-! ## A018090.P18427125050668832506

`A016142(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A018090.P18427125050668832506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016142 n + 10 * a (n - 1)

end

end A018090.P18427125050668832506

namespace A018090

/-- `A016142(n)+10*a(n-1)` -/
def P18427125050668832506.Spec : Prop :=
  ∀ n, P18427125050668832506.a n = A018090 n

end A018090

/-! ## A018090.P4815925952800550454

`2*A018069(n)-A018056(n)`
-/

namespace A018090.P4815925952800550454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018069 n - A018056 n

end

end A018090.P4815925952800550454

namespace A018090

/-- `2*A018069(n)-A018056(n)` -/
def P4815925952800550454.Spec : Prop :=
  ∀ n, P4815925952800550454.a n = A018090 n

end A018090

/-! ## A018090.P6816081073272227794

`A016145(n+1)-A016142(n+1)`
-/

namespace A018090.P6816081073272227794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016145 (n + 1) - A016142 (n + 1)

end

end A018090.P6816081073272227794

namespace A018090

/-- `A016145(n+1)-A016142(n+1)` -/
def P6816081073272227794.Spec : Prop :=
  ∀ n, P6816081073272227794.a n = A018090 n

end A018090

/-!
# A018091: Expansion of 1/((1-3*x)*(1-9*x)*(1-11*x)).

The programs for A018091, the canonical program `A018091.P3203867766343799681` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018091 has offset 0).

The definition of A018091 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018091.P3203867766343799681

`20*a(n-1)-99*a(n-2)+3^n` with `a(0)=1, a(1)=23`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018091

/-- `20*a(n-1)-99*a(n-2)+3^n` -/
def P3203867766343799681.Spec : Prop :=
  ∀ n, P3203867766343799681.a n = A018091 n

theorem P3203867766343799681.correct : P3203867766343799681.Spec := by
  intro n
  simp only [A018091]

end A018091

/-! ## A018091.P3051611297241764910

`(3*11^(n+2)-4*9^(n+2)+3^(n+2))/48`
-/

namespace A018091.P3051611297241764910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 11 ^ (n + 2) : ℤ) - (4 * 9 ^ (n + 2) : ℤ) + (3 ^ (n + 2) : ℤ) : ℚ) / 48

end

end A018091.P3051611297241764910

namespace A018091

/-- `(3*11^(n+2)-4*9^(n+2)+3^(n+2))/48` -/
def P3051611297241764910.Spec : Prop :=
  ∀ n, P3051611297241764910.a n = (A018091 n : ℚ)

theorem P3051611297241764910.correct : P3051611297241764910.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A018091, Nat.add_sub_cancel, A018091.P3051611297241764910.a, A018091.P3203867766343799681.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A018091, Nat.add_sub_cancel, A018091.P3051611297241764910.a, A018091.P3203867766343799681.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A018091

/-! ## A018091.P5917139985195747798

`A016190(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A018091.P5917139985195747798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016190 n + 3 * a (n - 1)

end

end A018091.P5917139985195747798

namespace A018091

/-- `A016190(n)+3*a(n-1)` -/
def P5917139985195747798.Spec : Prop :=
  ∀ n, P5917139985195747798.a n = A018091 n

end A018091

/-! ## A018091.P11732970080022270675

`A016142(n)+12*a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A018091.P11732970080022270675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016142 n + 12 * a (n - 1) - a (n - 1)

end

end A018091.P11732970080022270675

namespace A018091

/-- `A016142(n)+12*a(n-1)-a(n-1)` -/
def P11732970080022270675.Spec : Prop :=
  ∀ n, P11732970080022270675.a n = A018091 n

end A018091

/-! ## A018091.P16572077456665744795

`a(n-1)+A161999(2*n+3)+2*a(n-1)` with `a(0)=1`
-/

namespace A018091.P16572077456665744795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A161999 (2 * n + 3) + 2 * a (n - 1))

end

end A018091.P16572077456665744795

namespace A018091

/-- `a(n-1)+A161999(2*n+3)+2*a(n-1)` -/
def P16572077456665744795.Spec : Prop :=
  ∀ n, P16572077456665744795.a n = A018091 n

end A018091

/-!
# A018092: Expansion of 1/((1-3*x)*(1-9*x)*(1-12*x)).

The programs for A018092, the canonical program `A018092.P16612837315512449844` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018092 has offset 0).

The definition of A018092 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018092.P18020260487620074051

`(32*4^n-27*3^n+1)*3^(n-1)/2`
-/

namespace A018092.P18020260487620074051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((32 * 4 ^ n : ℤ) - (27 * 3 ^ n : ℤ) + 1 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / 2

end

end A018092.P18020260487620074051

namespace A018092

/-- `(32*4^n-27*3^n+1)*3^(n-1)/2` -/
def P18020260487620074051.Spec : Prop :=
  ∀ n, P18020260487620074051.a n = (A018092 n : ℚ)

end A018092

/-! ## A018092.P16612837315512449844

`24*a(n-1)-171*a(n-2)+324*a(n-3)` with `a(0)=1, a(1)=24, a(2)=405`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018092

/-- `24*a(n-1)-171*a(n-2)+324*a(n-3)` -/
def P16612837315512449844.Spec : Prop :=
  ∀ n, P16612837315512449844.a n = A018092 n

theorem P16612837315512449844.correct : P16612837315512449844.Spec := by
  intro n
  simp only [A018092]

end A018092

/-! ## A018092.P9419573109236584316

`3^n*A016208(n)`
-/

namespace A018092.P9419573109236584316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A016208 n

end

end A018092.P9419573109236584316

namespace A018092

/-- `3^n*A016208(n)` -/
def P9419573109236584316.Spec : Prop :=
  ∀ n, P9419573109236584316.a n = A018092 n

end A018092

/-! ## A018092.P5906822340735533910

`A016142(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A018092.P5906822340735533910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016142 n + 12 * a (n - 1)

end

end A018092.P5906822340735533910

namespace A018092

/-- `A016142(n)+12*a(n-1)` -/
def P5906822340735533910.Spec : Prop :=
  ∀ n, P5906822340735533910.a n = A018092 n

end A018092

/-! ## A018092.P8688457745356540972

`floor(A000244(n)/acot(A016208(n)))`
-/

namespace A018092.P8688457745356540972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000244 n : ℝ) / SequenceMachineLib.acot (A016208 n : ℝ)⌋

end

end A018092.P8688457745356540972

namespace A018092

/-- `floor(A000244(n)/acot(A016208(n)))` -/
def P8688457745356540972.Spec : Prop :=
  ∀ n, P8688457745356540972.a n = A018092 n

end A018092

/-! ## A018092.P5458125313793383021

`3*a(n-1)+∑[A255463(n)]*A000244(n)` with `a(0)=1`
-/

namespace A018092.P5458125313793383021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255463 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n

end

end A018092.P5458125313793383021

namespace A018092

/-- `3*a(n-1)+∑[A255463(n)]*A000244(n)` -/
def P5458125313793383021.Spec : Prop :=
  ∀ n, P5458125313793383021.a n = A018092 n

end A018092

/-! ## A018092.P6436039247322583858

`A000244(n)*A016208(n)-A000007(n+1)`
-/

namespace A018092.P6436039247322583858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A016208 n - A000007 (n + 1)

end

end A018092.P6436039247322583858

namespace A018092

/-- `A000244(n)*A016208(n)-A000007(n+1)` -/
def P6436039247322583858.Spec : Prop :=
  ∀ n, P6436039247322583858.a n = A018092 n

end A018092

/-!
# A018093: Powers of fourth root of 17 rounded down.

The programs for A018093, the canonical program `A018093.P14036620867546097494` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018093 has offset 0).

The definition of A018093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018093.P14036620867546097494

`floor(17^(n/4))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018093

/-- `floor(17^(n/4))` -/
def P14036620867546097494.Spec : Prop :=
  ∀ n, P14036620867546097494.a n = A018093 n

theorem P14036620867546097494.correct : P14036620867546097494.Spec := by
  intro n
  simp only [A018093]

end A018093

/-! ## A018093.P15472393196977775912

`A018095(n)-A166486(n)`
-/

namespace A018093.P15472393196977775912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018095 n - A166486 n

end

end A018093.P15472393196977775912

namespace A018093

/-- `A018095(n)-A166486(n)` -/
def P15472393196977775912.Spec : Prop :=
  ∀ n, P15472393196977775912.a n = A018093 n

end A018093

/-! ## A018093.P9909026908668957831

`A018095(n)-Δ[A057353(n)]`
-/

namespace A018093.P9909026908668957831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018095 n - (f1 (n + 1) - f1 n)

end

end A018093.P9909026908668957831

namespace A018093

/-- `A018095(n)-Δ[A057353(n)]` -/
def P9909026908668957831.Spec : Prop :=
  ∀ n, P9909026908668957831.a n = A018093 n

end A018093

/-! ## A018093.P16480069778334257827

`A018075(n)+A018095(n)-A018077(n)`
-/

namespace A018093.P16480069778334257827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018075 n + (A018095 n - A018077 n)

end

end A018093.P16480069778334257827

namespace A018093

/-- `A018075(n)+A018095(n)-A018077(n)` -/
def P16480069778334257827.Spec : Prop :=
  ∀ n, P16480069778334257827.a n = A018093 n

end A018093

/-! ## A018093.P8255087481944201160

`A018078(n)+A018095(n)-A018080(n)`
-/

namespace A018093.P8255087481944201160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018078 n + (A018095 n - A018080 n)

end

end A018093.P8255087481944201160

namespace A018093

/-- `A018078(n)+A018095(n)-A018080(n)` -/
def P8255087481944201160.Spec : Prop :=
  ∀ n, P8255087481944201160.a n = A018093 n

end A018093

/-! ## A018093.P7844049558452434532

`A018095(n)+A018108(n)-A018110(n)`
-/

namespace A018093.P7844049558452434532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018095 n + (A018108 n - A018110 n)

end

end A018093.P7844049558452434532

namespace A018093

/-- `A018095(n)+A018108(n)-A018110(n)` -/
def P7844049558452434532.Spec : Prop :=
  ∀ n, P7844049558452434532.a n = A018093 n

end A018093

/-!
# A018094: Powers of fourth root of 17 rounded to nearest integer.

The programs for A018094, the canonical program `A018094.P7089206949465162185` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018094 has offset 0).

The definition of A018094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018094.P7089206949465162185

`round(17^(n/4))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018094

/-- `round(17^(n/4))` -/
def P7089206949465162185.Spec : Prop :=
  ∀ n, P7089206949465162185.a n = A018094 n

theorem P7089206949465162185.correct : P7089206949465162185.Spec := by
  intro n
  simp only [A018094]

end A018094

/-! ## A018094.P16222164722724208881

`round(sqrt(A017955(n)))+and(2, n²)`
-/

namespace A018094.P16222164722724208881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A017955 n : ℝ)) + (Nat.land 2 (n ^ 2) : ℤ)

end

end A018094.P16222164722724208881

namespace A018094

/-- `round(sqrt(A017955(n)))+and(2, n²)` -/
def P16222164722724208881.Spec : Prop :=
  ∀ n, P16222164722724208881.a n = A018094 n

end A018094

/-! ## A018094.P15650581992595730887

`floor(A017955(n)/A018093(n))`
-/

namespace A018094.P15650581992595730887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017955 n : ℚ) / (A018093 n : ℚ)⌋

end

end A018094.P15650581992595730887

namespace A018094

/-- `floor(A017955(n)/A018093(n))` -/
def P15650581992595730887.Spec : Prop :=
  ∀ n, P15650581992595730887.a n = A018094 n

end A018094

/-! ## A018094.P14046429808123616432

`floor(A017957(n)/A018093(n))`
-/

namespace A018094.P14046429808123616432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017957 n : ℚ) / (A018093 n : ℚ)⌋

end

end A018094.P14046429808123616432

namespace A018094

/-- `floor(A017957(n)/A018093(n))` -/
def P14046429808123616432.Spec : Prop :=
  ∀ n, P14046429808123616432.a n = A018094 n

end A018094

/-! ## A018094.P5156592251795599730

`floor(A018093(2*n)/A018093(n))`
-/

namespace A018094.P5156592251795599730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018093 (2 * n) : ℚ) / (A018093 n : ℚ)⌋

end

end A018094.P5156592251795599730

namespace A018094

/-- `floor(A018093(2*n)/A018093(n))` -/
def P5156592251795599730.Spec : Prop :=
  ∀ n, P5156592251795599730.a n = A018094 n

end A018094

/-! ## A018094.P8685905835019909959

`round(sqrt(A017955(n)))^A033999(n)²`
-/

namespace A018094.P8685905835019909959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (A017955 n : ℝ)) : ℚ) ^ (A033999 n ^ 2 : ℤ)

end

end A018094.P8685905835019909959

namespace A018094

/-- `round(sqrt(A017955(n)))^A033999(n)²` -/
def P8685905835019909959.Spec : Prop :=
  ∀ n, P8685905835019909959.a n = (A018094 n : ℚ)

end A018094

/-! ## A018094.P15240011512618137063

`A000007(n+1)+round(sqrt(A017955(n)))`
-/

namespace A018094.P15240011512618137063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + SequenceMachineLib.roundAway (Real.sqrt (A017955 n : ℝ))

end

end A018094.P15240011512618137063

namespace A018094

/-- `A000007(n+1)+round(sqrt(A017955(n)))` -/
def P15240011512618137063.Spec : Prop :=
  ∀ n, P15240011512618137063.a n = A018094 n

end A018094

/-! ## A018094.P18382159878635851654

`A008683(8*n+4)+round(sqrt(A017955(n)))`
-/

namespace A018094.P18382159878635851654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (8 * n + 4) + SequenceMachineLib.roundAway (Real.sqrt (A017955 n : ℝ))

end

end A018094.P18382159878635851654

namespace A018094

/-- `A008683(8*n+4)+round(sqrt(A017955(n)))` -/
def P18382159878635851654.Spec : Prop :=
  ∀ n, P18382159878635851654.a n = A018094 n

end A018094

/-! ## A018094.P6562555089087871250

`round(sqrt(A017955(n)))^A014963(6*(n+1))`
-/

namespace A018094.P6562555089087871250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (A017955 n : ℝ)) : ℚ) ^ (A014963 (6 * (n + 1)) : ℤ)

end

end A018094.P6562555089087871250

namespace A018094

/-- `round(sqrt(A017955(n)))^A014963(6*(n+1))` -/
def P6562555089087871250.Spec : Prop :=
  ∀ n, P6562555089087871250.a n = (A018094 n : ℚ)

end A018094

/-! ## A018094.P10355526366499088207

`round(sqrt(A017955(n)))^A062157(2*(n+1))²`
-/

namespace A018094.P10355526366499088207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (A017955 n : ℝ)) : ℚ) ^ (A062157 (2 * (n + 1)) ^ 2 : ℤ)

end

end A018094.P10355526366499088207

namespace A018094

/-- `round(sqrt(A017955(n)))^A062157(2*(n+1))²` -/
def P10355526366499088207.Spec : Prop :=
  ∀ n, P10355526366499088207.a n = (A018094 n : ℚ)

end A018094

/-!
# A018095: Powers of fourth root of 17 rounded up.

The programs for A018095, the canonical program `A018095.P14089529475957644628` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018095 has offset 0).

The definition of A018095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018095.P6720803758695594506

`ceil(17^(n/4))`
-/

namespace A018095.P6720803758695594506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(17 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉

end

end A018095.P6720803758695594506

namespace A018095

/-- `ceil(17^(n/4))` -/
def P6720803758695594506.Spec : Prop :=
  ∀ n, P6720803758695594506.a n = A018095 n

end A018095

/-! ## A018095.P4414908289127277391

`abs(floor(A008683(12*n+8)-17^(n/4)))`
-/

namespace A018095.P4414908289127277391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(A008683 (12 * n + 8) : ℝ) - (17 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋|

end

end A018095.P4414908289127277391

namespace A018095

/-- `abs(floor(A008683(12*n+8)-17^(n/4)))` -/
def P4414908289127277391.Spec : Prop :=
  ∀ n, P4414908289127277391.a n = A018095 n

end A018095

/-! ## A018095.P14089529475957644628

`A166486(n)+A018093(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018095

/-- `A166486(n)+A018093(n)` -/
def P14089529475957644628.Spec : Prop :=
  ∀ n, P14089529475957644628.a n = A018095 n

theorem P14089529475957644628.correct : P14089529475957644628.Spec := by
  intro n
  simp only [A018095]

end A018095

/-! ## A018095.P15088802851600095413

`A018093(n)+Δ[A057353(n)]`
-/

namespace A018095.P15088802851600095413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018093 n + (f1 (n + 1) - f1 n)

end

end A018095.P15088802851600095413

namespace A018095

/-- `A018093(n)+Δ[A057353(n)]` -/
def P15088802851600095413.Spec : Prop :=
  ∀ n, P15088802851600095413.a n = A018095 n

end A018095

/-! ## A018095.P13420154906215289427

`A018093(n)+A018101(n)-A018099(n)`
-/

namespace A018095.P13420154906215289427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018093 n + (A018101 n - A018099 n)

end

end A018095.P13420154906215289427

namespace A018095

/-- `A018093(n)+A018101(n)-A018099(n)` -/
def P13420154906215289427.Spec : Prop :=
  ∀ n, P13420154906215289427.a n = A018095 n

end A018095

/-! ## A018095.P4508104016768600221

`A018093(n)+A018110(n)-A018108(n)`
-/

namespace A018095.P4508104016768600221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018093 n + (A018110 n - A018108 n)

end

end A018095.P4508104016768600221

namespace A018095

/-- `A018093(n)+A018110(n)-A018108(n)` -/
def P4508104016768600221.Spec : Prop :=
  ∀ n, P4508104016768600221.a n = A018095 n

end A018095

/-!
# A018096: Powers of fourth root of 18 rounded down.

The programs for A018096, the canonical program `A018096.P153842857525541908` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018096 has offset 0).

The definition of A018096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018096.P153842857525541908

`floor(18^(n/4))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018096

/-- `floor(18^(n/4))` -/
def P153842857525541908.Spec : Prop :=
  ∀ n, P153842857525541908.a n = A018096 n

theorem P153842857525541908.correct : P153842857525541908.Spec := by
  intro n
  simp only [A018096]

end A018096

/-! ## A018096.P10780736845007659095

`A018098(n)-A166486(n)`
-/

namespace A018096.P10780736845007659095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018098 n - A166486 n

end

end A018096.P10780736845007659095

namespace A018096

/-- `A018098(n)-A166486(n)` -/
def P10780736845007659095.Spec : Prop :=
  ∀ n, P10780736845007659095.a n = A018096 n

end A018096

/-! ## A018096.P14637602250003959929

`A018098(n)-A000035(A004525(n))`
-/

namespace A018096.P14637602250003959929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018098 n - A000035 (A004525 n).toNat

end

end A018096.P14637602250003959929

namespace A018096

/-- `A018098(n)-A000035(A004525(n))` -/
def P14637602250003959929.Spec : Prop :=
  ∀ n, P14637602250003959929.a n = A018096 n

end A018096

/-! ## A018096.P13874410846378756672

`A018098(n)-A000035(A026741(n))`
-/

namespace A018096.P13874410846378756672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018098 n - A000035 (A026741 n).toNat

end

end A018096.P13874410846378756672

namespace A018096

/-- `A018098(n)-A000035(A026741(n))` -/
def P13874410846378756672.Spec : Prop :=
  ∀ n, P13874410846378756672.a n = A018096 n

end A018096

/-! ## A018096.P3629986081066794303

`A018098(n)+A018105(n)-A018107(n)`
-/

namespace A018096.P3629986081066794303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018098 n + (A018105 n - A018107 n)

end

end A018096.P3629986081066794303

namespace A018096

/-- `A018098(n)+A018105(n)-A018107(n)` -/
def P3629986081066794303.Spec : Prop :=
  ∀ n, P3629986081066794303.a n = A018096 n

end A018096

/-! ## A018096.P5537263174868516189

`floor(sqrt(A017959(n)))%A008776(n)`
-/

namespace A018096.P5537263174868516189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A017959 n)) (A008776 n)

end

end A018096.P5537263174868516189

namespace A018096

/-- `floor(sqrt(A017959(n)))%A008776(n)` -/
def P5537263174868516189.Spec : Prop :=
  ∀ n, P5537263174868516189.a n = A018096 n

end A018096

/-!
# A018097: Powers of fourth root of 18 rounded to nearest integer.

The programs for A018097, the canonical program `A018097.P8047196703899382887` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018097 has offset 0).

The definition of A018097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018097.P8047196703899382887

`round(18^(n/4))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018097

/-- `round(18^(n/4))` -/
def P8047196703899382887.Spec : Prop :=
  ∀ n, P8047196703899382887.a n = A018097 n

theorem P8047196703899382887.correct : P8047196703899382887.Spec := by
  intro n
  simp only [A018097]

end A018097

/-! ## A018097.P11922807464378787856

`ceil(ceil(18^(n/2))/A018098(n))`
-/

namespace A018097.P11922807464378787856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(18 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌉ : ℚ) / (A018098 n : ℚ)⌉

end

end A018097.P11922807464378787856

namespace A018097

/-- `ceil(ceil(18^(n/2))/A018098(n))` -/
def P11922807464378787856.Spec : Prop :=
  ∀ n, P11922807464378787856.a n = A018097 n

end A018097

/-! ## A018097.P13931290557111628405

`floor(A017958(n)/A018096(n))`
-/

namespace A018097.P13931290557111628405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017958 n : ℚ) / (A018096 n : ℚ)⌋

end

end A018097.P13931290557111628405

namespace A018097

/-- `floor(A017958(n)/A018096(n))` -/
def P13931290557111628405.Spec : Prop :=
  ∀ n, P13931290557111628405.a n = A018097 n

end A018097

/-! ## A018097.P1664285989655617177

`floor(A017960(n)/A018096(n))`
-/

namespace A018097.P1664285989655617177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017960 n : ℚ) / (A018096 n : ℚ)⌋

end

end A018097.P1664285989655617177

namespace A018097

/-- `floor(A017960(n)/A018096(n))` -/
def P1664285989655617177.Spec : Prop :=
  ∀ n, P1664285989655617177.a n = A018097 n

end A018097

/-! ## A018097.P8905666326801494876

`floor(A018096(2*n)/A018096(n))`
-/

namespace A018097.P8905666326801494876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018096 (2 * n) : ℚ) / (A018096 n : ℚ)⌋

end

end A018097.P8905666326801494876

namespace A018097

/-- `floor(A018096(2*n)/A018096(n))` -/
def P8905666326801494876.Spec : Prop :=
  ∀ n, P8905666326801494876.a n = A018097 n

end A018097

/-! ## A018097.P12887423188577877206

`round(sqrt(A017959(n)))%A094790(n+3)`
-/

namespace A018097.P12887423188577877206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A017959 n : ℝ))) (A094790 (n + 3))

end

end A018097.P12887423188577877206

namespace A018097

/-- `round(sqrt(A017959(n)))%A094790(n+3)` -/
def P12887423188577877206.Spec : Prop :=
  ∀ n, P12887423188577877206.a n = A018097 n

end A018097

/-!
# A018098: Powers of fourth root of 18 rounded up.

The programs for A018098, the canonical program `A018098.P6444872509897601762` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018098 has offset 0).

The definition of A018098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018098.P12009549579246880685

`ceil(18^(n/4))`
-/

namespace A018098.P12009549579246880685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(18 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉

end

end A018098.P12009549579246880685

namespace A018098

/-- `ceil(18^(n/4))` -/
def P12009549579246880685.Spec : Prop :=
  ∀ n, P12009549579246880685.a n = A018098 n

end A018098

/-! ## A018098.P6444872509897601762

`A166486(n)+A018096(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018098

/-- `A166486(n)+A018096(n)` -/
def P6444872509897601762.Spec : Prop :=
  ∀ n, P6444872509897601762.a n = A018098 n

theorem P6444872509897601762.correct : P6444872509897601762.Spec := by
  intro n
  simp only [A018098]

end A018098

/-! ## A018098.P7659486368290940848

`A018095(n)+A018096(n)-A018093(n)`
-/

namespace A018098.P7659486368290940848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018095 n + (A018096 n - A018093 n)

end

end A018098.P7659486368290940848

namespace A018098

/-- `A018095(n)+A018096(n)-A018093(n)` -/
def P7659486368290940848.Spec : Prop :=
  ∀ n, P7659486368290940848.a n = A018098 n

end A018098

/-! ## A018098.P6284090080819591249

`A018096(n)+A018110(n)-A018108(n)`
-/

namespace A018098.P6284090080819591249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018096 n + (A018110 n - A018108 n)

end

end A018098.P6284090080819591249

namespace A018098

/-- `A018096(n)+A018110(n)-A018108(n)` -/
def P6284090080819591249.Spec : Prop :=
  ∀ n, P6284090080819591249.a n = A018098 n

end A018098

/-! ## A018098.P673165955663771213

`A000007(n+1)+ceil(sqrt(A017960(n)))`
-/

namespace A018098.P673165955663771213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ⌈Real.sqrt (A017960 n : ℝ)⌉

end

end A018098.P673165955663771213

namespace A018098

/-- `A000007(n+1)+ceil(sqrt(A017960(n)))` -/
def P673165955663771213.Spec : Prop :=
  ∀ n, P673165955663771213.a n = A018098 n

end A018098

/-!
# A018099: Powers of fourth root of 19 rounded down.

The programs for A018099, the canonical program `A018099.P4236248226109878105` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018099 has offset 0).

The definition of A018099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018099.P4236248226109878105

`floor(19^(n/4))`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A018099

/-- `floor(19^(n/4))` -/
def P4236248226109878105.Spec : Prop :=
  ∀ n, P4236248226109878105.a n = A018099 n

theorem P4236248226109878105.correct : P4236248226109878105.Spec := by
  intro n
  simp only [A018099]

end A018099

/-! ## A018099.P12257306073491752852

`A018101(n)-A166486(n)`
-/

namespace A018099.P12257306073491752852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018101 n - A166486 n

end

end A018099.P12257306073491752852

namespace A018099

/-- `A018101(n)-A166486(n)` -/
def P12257306073491752852.Spec : Prop :=
  ∀ n, P12257306073491752852.a n = A018099 n

end A018099

/-! ## A018099.P13922417079460155219

`A018101(n)-A046978(n)²`
-/

namespace A018099.P13922417079460155219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018101 n - A046978 n ^ 2

end

end A018099.P13922417079460155219

namespace A018099

/-- `A018101(n)-A046978(n)²` -/
def P13922417079460155219.Spec : Prop :=
  ∀ n, P13922417079460155219.a n = A018099 n

end A018099

/-! ## A018099.P13744721281281586577

`A018101(n)-Δ[A057353(n)]`
-/

namespace A018099.P13744721281281586577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018101 n - (f1 (n + 1) - f1 n)

end

end A018099.P13744721281281586577

namespace A018099

/-- `A018101(n)-Δ[A057353(n)]` -/
def P13744721281281586577.Spec : Prop :=
  ∀ n, P13744721281281586577.a n = A018099 n

end A018099

/-! ## A018099.P2741282737037500173

`A018087(n)+A018101(n)-A018089(n)`
-/

namespace A018099.P2741282737037500173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018087 n + (A018101 n - A018089 n)

end

end A018099.P2741282737037500173

namespace A018099

/-- `A018087(n)+A018101(n)-A018089(n)` -/
def P2741282737037500173.Spec : Prop :=
  ∀ n, P2741282737037500173.a n = A018099 n

end A018099

/-! ## A018099.P4974880643537252043

`A018101(n)-A059841(A087811(n+1))`
-/

namespace A018099.P4974880643537252043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018101 n - A059841 (A087811 (n + 1)).toNat

end

end A018099.P4974880643537252043

namespace A018099

/-- `A018101(n)-A059841(A087811(n+1))` -/
def P4974880643537252043.Spec : Prop :=
  ∀ n, P4974880643537252043.a n = A018099 n

end A018099

