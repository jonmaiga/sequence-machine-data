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
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
# A188300: a(n) = [n*r] - [k*r] - [n*r-k*r], where r=1/sqrt(2), k=3, [ ]=floor.

The programs for A188300, the canonical program `A188300.P13558209889286680429` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188300 has offset 1).

The definition of A188300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188300.P14864490155695125129

`char[A188302(n+1)-1]`
-/

namespace A188300.P14864490155695125129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188302 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188300.P14864490155695125129

namespace A188300

/-- `char[A188302(n+1)-1]` -/
def P14864490155695125129.Spec : Prop :=
  ∀ n, (P14864490155695125129.a n : ℤ) = A188300 (n + 1)

end A188300

/-! ## A188300.P756994087225952511

`char[A188383(n+1)+2]`
-/

namespace A188300.P756994087225952511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188383 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188300.P756994087225952511

namespace A188300

/-- `char[A188383(n+1)+2]` -/
def P756994087225952511.Spec : Prop :=
  ∀ n, (P756994087225952511.a n : ℤ) = A188300 (n + 1)

end A188300

/-! ## A188300.P2421468423709041641

`char[A188043(2*(n+1))-1]`
-/

namespace A188300.P2421468423709041641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188043 (2 * (n + 1)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188300.P2421468423709041641

namespace A188300

/-- `char[A188043(2*(n+1))-1]` -/
def P2421468423709041641.Spec : Prop :=
  ∀ n, (P2421468423709041641.a n : ℤ) = A188300 (n + 1)

end A188300

/-! ## A188300.P18100311788791237792

`char[A188373(2*(n+1))-1]`
-/

namespace A188300.P18100311788791237792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188373 (2 * (n + 1)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188300.P18100311788791237792

namespace A188300

/-- `char[A188373(2*(n+1))-1]` -/
def P18100311788791237792.Spec : Prop :=
  ∀ n, (P18100311788791237792.a n : ℤ) = A188300 (n + 1)

end A188300

/-! ## A188300.P5216458537387200569

`A286996(A097950(n)+1)`
-/

namespace A188300.P5216458537387200569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286996 (A097950 n + 1).toNat

end

end A188300.P5216458537387200569

namespace A188300

/-- `A286996(A097950(n)+1)` -/
def P5216458537387200569.Spec : Prop :=
  ∀ n, P5216458537387200569.a n = A188300 (n + 1)

end A188300

/-! ## A188300.P13558209889286680429

`A188297(A083035(n+1)+n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A188300

/-- `A188297(A083035(n+1)+n)` -/
def P13558209889286680429.Spec : Prop :=
  ∀ n, P13558209889286680429.a n = A188300 (n + 1)

theorem P13558209889286680429.correct : P13558209889286680429.Spec := by
  intro n
  simp only [A188300, Nat.add_sub_cancel]

end A188300

/-! ## A188300.P5435512980962637602

`A188297(A188398(n+1)+n)`
-/

namespace A188300.P5435512980962637602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188297 (A188398 (n + 1) + (n : ℤ)).toNat

end

end A188300.P5435512980962637602

namespace A188300

/-- `A188297(A188398(n+1)+n)` -/
def P5435512980962637602.Spec : Prop :=
  ∀ n, P5435512980962637602.a n = A188300 (n + 1)

end A188300

/-! ## A188300.P6842200901453446027

`and(A001953(n), A188041(n+1))`
-/

namespace A188300.P6842200901453446027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001953 n) (A188041 (n + 1))

end

end A188300.P6842200901453446027

namespace A188300

/-- `and(A001953(n), A188041(n+1))` -/
def P6842200901453446027.Spec : Prop :=
  ∀ n, P6842200901453446027.a n = A188300 (n + 1)

end A188300

/-! ## A188300.P15214968760337293129

`and(A022846(n), A188041(n+1))`
-/

namespace A188300.P15214968760337293129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022846 n) (A188041 (n + 1))

end

end A188300.P15214968760337293129

namespace A188300

/-- `and(A022846(n), A188041(n+1))` -/
def P15214968760337293129.Spec : Prop :=
  ∀ n, P15214968760337293129.a n = A188300 (n + 1)

end A188300

/-! ## A188300.P8151490047802113756

`char[A003151(A080755(2*(n+1)))]`
-/

namespace A188300.P8151490047802113756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A080755 (2 * (n + 1))).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188300.P8151490047802113756

namespace A188300

/-- `char[A003151(A080755(2*(n+1)))]` -/
def P8151490047802113756.Spec : Prop :=
  ∀ n, (P8151490047802113756.a n : ℤ) = A188300 (n + 1)

end A188300

/-! ## A188300.P7557957522335641284

`A188297(n+1-A188297(n+1))`
-/

namespace A188300.P7557957522335641284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188297 ((n + 1 : ℤ) - A188297 (n + 1)).toNat

end

end A188300.P7557957522335641284

namespace A188300

/-- `A188297(n+1-A188297(n+1))` -/
def P7557957522335641284.Spec : Prop :=
  ∀ n, P7557957522335641284.a n = A188300 (n + 1)

end A188300

/-! ## A188300.P476128081525928788

`A171588(n+1-A289035(n+1))`
-/

namespace A188300.P476128081525928788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 ((n + 1 : ℤ) - A289035 (n + 1)).toNat

end

end A188300.P476128081525928788

namespace A188300

/-- `A171588(n+1-A289035(n+1))` -/
def P476128081525928788.Spec : Prop :=
  ∀ n, P476128081525928788.a n = A188300 (n + 1)

end A188300

/-! ## A188300.P11306293843803778995

`A171588(n+1)*A188041(n+1)`
-/

namespace A188300.P11306293843803778995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (n + 1) * A188041 (n + 1)

end

end A188300.P11306293843803778995

namespace A188300

/-- `A171588(n+1)*A188041(n+1)` -/
def P11306293843803778995.Spec : Prop :=
  ∀ n, P11306293843803778995.a n = A188300 (n + 1)

end A188300

/-! ## A188300.P2309238593735371224

`A188041(n+1)*A188297(n+1)`
-/

namespace A188300.P2309238593735371224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188041 (n + 1) * A188297 (n + 1)

end

end A188300.P2309238593735371224

namespace A188300

/-- `A188041(n+1)*A188297(n+1)` -/
def P2309238593735371224.Spec : Prop :=
  ∀ n, P2309238593735371224.a n = A188300 (n + 1)

end A188300

/-! ## A188300.P7951757098877030054

`A188041(n+1)*A188371(n+1)`
-/

namespace A188300.P7951757098877030054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188041 (n + 1) * A188371 (n + 1)

end

end A188300.P7951757098877030054

namespace A188300

/-- `A188041(n+1)*A188371(n+1)` -/
def P7951757098877030054.Spec : Prop :=
  ∀ n, P7951757098877030054.a n = A188300 (n + 1)

end A188300

/-! ## A188300.P3756888725945526845

`A188041(n+1)*A288213(n+1)`
-/

namespace A188300.P3756888725945526845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188041 (n + 1) * A288213 (n + 1)

end

end A188300.P3756888725945526845

namespace A188300

/-- `A188041(n+1)*A288213(n+1)` -/
def P3756888725945526845.Spec : Prop :=
  ∀ n, P3756888725945526845.a n = A188300 (n + 1)

end A188300

/-! ## A188300.P8402935851210294145

`A188041(n+1)*A288997(n+1)`
-/

namespace A188300.P8402935851210294145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188041 (n + 1) * A288997 (n + 1)

end

end A188300.P8402935851210294145

namespace A188300

/-- `A188041(n+1)*A288997(n+1)` -/
def P8402935851210294145.Spec : Prop :=
  ∀ n, P8402935851210294145.a n = A188300 (n + 1)

end A188300

/-! ## A188300.P9764730546658370311

`(1-A190766(n+1))*A188041(n+1)`
-/

namespace A188300.P9764730546658370311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A190766 (n + 1)) * A188041 (n + 1)

end

end A188300.P9764730546658370311

namespace A188300

/-- `(1-A190766(n+1))*A188041(n+1)` -/
def P9764730546658370311.Spec : Prop :=
  ∀ n, P9764730546658370311.a n = A188300 (n + 1)

end A188300

/-! ## A188300.P8281908120706734228

`A183140(n+1-A083051(A183138(n+1)))`
-/

namespace A188300.P8281908120706734228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183140 ((n + 1 : ℤ) - A083051 (A183138 (n + 1)).toNat).toNat

end

end A188300.P8281908120706734228

namespace A188300

/-- `A183140(n+1-A083051(A183138(n+1)))` -/
def P8281908120706734228.Spec : Prop :=
  ∀ n, P8281908120706734228.a n = A188300 (n + 1)

end A188300

/-! ## A188300.P3174862900532103405

`A188297(n+1)*A188321(n+3)`
-/

namespace A188300.P3174862900532103405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188297 (n + 1) * A188321 (n + 3)

end

end A188300.P3174862900532103405

namespace A188300

/-- `A188297(n+1)*A188321(n+3)` -/
def P3174862900532103405.Spec : Prop :=
  ∀ n, P3174862900532103405.a n = A188300 (n + 1)

end A188300

/-!
# A188301: Positions of 0 in A188300; complement of A188302.

The programs for A188301, the canonical program `A188301.P7448140245845181984` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188301 has offset 1).

The definition of A188301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188301.P10744750503203737783

`floor(∑[2^(char[3*(n+1)]/2)])`
-/

namespace A188301.P10744750503203737783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℚ) / 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A188301.P10744750503203737783

namespace A188301

/-- `floor(∑[2^(char[3*(n+1)]/2)])` -/
def P10744750503203737783.Spec : Prop :=
  ∀ n, P10744750503203737783.a n = A188301 (n + 1)

end A188301

/-! ## A188301.P2499511103785625087

`A097508(∑[char[3*(n+1)]])+n+1`
-/

namespace A188301.P2499511103785625087
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A188301.P2499511103785625087

namespace A188301

/-- `A097508(∑[char[3*(n+1)]])+n+1` -/
def P2499511103785625087.Spec : Prop :=
  ∀ n, P2499511103785625087.a n = A188301 (n + 1)

end A188301

/-! ## A188301.P7448140245845181984

`A097508(A002264(n))+1+n`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A188301

/-- `A097508(A002264(n))+1+n` -/
def P7448140245845181984.Spec : Prop :=
  ∀ n, P7448140245845181984.a n = A188301 (n + 1)

theorem P7448140245845181984.correct : P7448140245845181984.Spec := by
  intro n
  simp only [A188301, Nat.add_sub_cancel]

end A188301

/-! ## A188301.P15420105056332472792

`∪[A188042(n+1), A001954(n)]`
-/

namespace A188301.P15420105056332472792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188301.P15420105056332472792

namespace A188301

/-- `∪[A188042(n+1), A001954(n)]` -/
def P15420105056332472792.Spec : Prop :=
  ∀ n, (P15420105056332472792.a n : ℤ) = A188301 (n + 1)

end A188301

/-! ## A188301.P3618907111459116345

`∪[A188042(n+1), A258833(n)]`
-/

namespace A188301.P3618907111459116345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258833 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188301.P3618907111459116345

namespace A188301

/-- `∪[A188042(n+1), A258833(n)]` -/
def P3618907111459116345.Spec : Prop :=
  ∀ n, (P3618907111459116345.a n : ℤ) = A188301 (n + 1)

end A188301

/-! ## A188301.P6284678203159081554

`∪[A188042(n+1), A190773(n+1)]`
-/

namespace A188301.P6284678203159081554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188301.P6284678203159081554

namespace A188301

/-- `∪[A188042(n+1), A190773(n+1)]` -/
def P6284678203159081554.Spec : Prop :=
  ∀ n, (P6284678203159081554.a n : ℤ) = A188301 (n + 1)

end A188301

/-! ## A188301.P6922508642356564240

`comp[A188037(n+1)*A288999(n+1)]`
-/

namespace A188301.P6922508642356564240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (n + 1) * A288999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188301.P6922508642356564240

namespace A188301

/-- `comp[A188037(n+1)*A288999(n+1)]` -/
def P6922508642356564240.Spec : Prop :=
  ∀ n, (P6922508642356564240.a n : ℤ) = A188301 (n + 1)

end A188301

/-! ## A188301.P16892634579244664337

`comp[A001952(n+1)*A285076(n+2)]`
-/

namespace A188301.P16892634579244664337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) * A285076 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188301.P16892634579244664337

namespace A188301

/-- `comp[A001952(n+1)*A285076(n+2)]` -/
def P16892634579244664337.Spec : Prop :=
  ∀ n, (P16892634579244664337.a n : ℤ) = A188301 (n + 1)

end A188301

/-! ## A188301.P1443154921275604183

`comp[A285076(n+2)*A288999(n+1)]`
-/

namespace A188301.P1443154921275604183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285076 (n + 2) * A288999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188301.P1443154921275604183

namespace A188301

/-- `comp[A285076(n+2)*A288999(n+1)]` -/
def P1443154921275604183.Spec : Prop :=
  ∀ n, (P1443154921275604183.a n : ℤ) = A188301 (n + 1)

end A188301

/-! ## A188301.P4217281952388452684

`∪[A187974(n+1), A188298(n+1)+1]`
-/

namespace A188301.P4217281952388452684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188298 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188301.P4217281952388452684

namespace A188301

/-- `∪[A187974(n+1), A188298(n+1)+1]` -/
def P4217281952388452684.Spec : Prop :=
  ∀ n, (P4217281952388452684.a n : ℤ) = A188301 (n + 1)

end A188301

/-! ## A188301.P15125742108247062252

`∪[A188042(n+1), A286666(n+1)-n]`
-/

namespace A188301.P15125742108247062252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188301.P15125742108247062252

namespace A188301

/-- `∪[A188042(n+1), A286666(n+1)-n]` -/
def P15125742108247062252.Spec : Prop :=
  ∀ n, (P15125742108247062252.a n : ℤ) = A188301 (n + 1)

end A188301

/-! ## A188301.P12027202735490663371

`comp[A003151(n+1)+A003151(A003151(n+1)+1)]+1`
-/

namespace A188301.P12027202735490663371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1) + A003151 (A003151 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188301.P12027202735490663371

namespace A188301

/-- `comp[A003151(n+1)+A003151(A003151(n+1)+1)]+1` -/
def P12027202735490663371.Spec : Prop :=
  ∀ n, (P12027202735490663371.a n : ℤ) = A188301 (n + 1)

end A188301

/-! ## A188301.P1481489624772959828

`a(n-1)+A188300(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A188301.P1481489624772959828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A188300 (a (n - 1) + 1).toNat + 1)

end

end A188301.P1481489624772959828

namespace A188301

/-- `a(n-1)+A188300(a(n-1)+1)+1` -/
def P1481489624772959828.Spec : Prop :=
  ∀ n, P1481489624772959828.a n = A188301 (n + 1)

end A188301

/-! ## A188301.P17721830925198529528

`comp[A081477(2*(n+2))*A159684(n)]`
-/

namespace A188301.P17721830925198529528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (2 * (n + 2)) * A159684 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188301.P17721830925198529528

namespace A188301

/-- `comp[A081477(2*(n+2))*A159684(n)]` -/
def P17721830925198529528.Spec : Prop :=
  ∀ n, (P17721830925198529528.a n : ℤ) = A188301 (n + 1)

end A188301

/-! ## A188301.P3078842330144131252

`comp[A001952(n+2)*A188374(2*(n+1))]`
-/

namespace A188301.P3078842330144131252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 2) * A188374 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188301.P3078842330144131252

namespace A188301

/-- `comp[A001952(n+2)*A188374(2*(n+1))]` -/
def P3078842330144131252.Spec : Prop :=
  ∀ n, (P3078842330144131252.a n : ℤ) = A188301 (n + 1)

end A188301

/-! ## A188301.P3557987147670734250

`comp[A188297(2*(n+1))*A285074(2*(n+1))]`
-/

namespace A188301.P3557987147670734250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188297 (2 * (n + 1)) * A285074 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188301.P3557987147670734250

namespace A188301

/-- `comp[A188297(2*(n+1))*A285074(2*(n+1))]` -/
def P3557987147670734250.Spec : Prop :=
  ∀ n, (P3557987147670734250.a n : ℤ) = A188301 (n + 1)

end A188301

/-! ## A188301.P1246634553988640526

`comp[A188297(2*(n+1))*A285077(2*(n+1))]`
-/

namespace A188301.P1246634553988640526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188297 (2 * (n + 1)) * A285077 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188301.P1246634553988640526

namespace A188301

/-- `comp[A188297(2*(n+1))*A285077(2*(n+1))]` -/
def P1246634553988640526.Spec : Prop :=
  ∀ n, (P1246634553988640526.a n : ℤ) = A188301 (n + 1)

end A188301

/-!
# A188302: Positions of 1 in A188300; complement of A188301.

The programs for A188302, the canonical program `A188302.P6415183017477871457` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188302 has offset 1).

The definition of A188302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188302.P15510260834437243685

`∑[3*Δ[floor(n*sqrt(2))]+4]+3`
-/

namespace A188302.P15510260834437243685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f2 (n + 1) - f2 n) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A188302.P15510260834437243685

namespace A188302

/-- `∑[3*Δ[floor(n*sqrt(2))]+4]+3` -/
def P15510260834437243685.Spec : Prop :=
  ∀ n, P15510260834437243685.a n = A188302 (n + 1)

end A188302

/-! ## A188302.P1430172063859767202

`∑[3*A097509(n)+1]`
-/

namespace A188302.P1430172063859767202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A097509 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188302.P1430172063859767202

namespace A188302

/-- `∑[3*A097509(n)+1]` -/
def P1430172063859767202.Spec : Prop :=
  ∀ n, P1430172063859767202.a n = A188302 (n + 1)

end A188302

/-! ## A188302.P6415183017477871457

`A000027(A188383(n+1)+3)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A188302

/-- `A000027(A188383(n+1)+3)` -/
def P6415183017477871457.Spec : Prop :=
  ∀ n, P6415183017477871457.a n = A188302 (n + 1)

theorem P6415183017477871457.correct : P6415183017477871457.Spec := by
  intro n
  simp only [A188302, Nat.add_sub_cancel]

end A188302

/-! ## A188302.P3736039197554263113

`A188396(A087057(n+1))`
-/

namespace A188302.P3736039197554263113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188396 (A087057 (n + 1)).toNat

end

end A188302.P3736039197554263113

namespace A188302

/-- `A188396(A087057(n+1))` -/
def P3736039197554263113.Spec : Prop :=
  ∀ n, P3736039197554263113.a n = A188302 (n + 1)

end A188302

/-! ## A188302.P16436183546913035732

`A188396(A001951(n+1)+1)`
-/

namespace A188302.P16436183546913035732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188396 (A001951 (n + 1) + 1).toNat

end

end A188302.P16436183546913035732

namespace A188302

/-- `A188396(A001951(n+1)+1)` -/
def P16436183546913035732.Spec : Prop :=
  ∀ n, P16436183546913035732.a n = A188302 (n + 1)

end A188302

/-! ## A188302.P16905306295000371180

`A188396(A003151(n+1)-n)`
-/

namespace A188302.P16905306295000371180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188396 (A003151 (n + 1) - (n : ℤ)).toNat

end

end A188302.P16905306295000371180

namespace A188302

/-- `A188396(A003151(n+1)-n)` -/
def P16905306295000371180.Spec : Prop :=
  ∀ n, P16905306295000371180.a n = A188302 (n + 1)

end A188302

/-! ## A188302.P10923561452334243974

`A188396(A184922(n+1)-2*n)`
-/

namespace A188302.P10923561452334243974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188396 (A184922 (n + 1) - (2 * n : ℤ)).toNat

end

end A188302.P10923561452334243974

namespace A188302

/-- `A188396(A184922(n+1)-2*n)` -/
def P10923561452334243974.Spec : Prop :=
  ∀ n, P10923561452334243974.a n = A188302 (n + 1)

end A188302

/-! ## A188302.P10121505424782499993

`A188043(2*(n+1))`
-/

namespace A188302.P10121505424782499993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188043 (2 * (n + 1))

end

end A188302.P10121505424782499993

namespace A188302

/-- `A188043(2*(n+1))` -/
def P10121505424782499993.Spec : Prop :=
  ∀ n, P10121505424782499993.a n = A188302 (n + 1)

end A188302

/-! ## A188302.P14684363968605562208

`A188373(2*(n+1))`
-/

namespace A188302.P14684363968605562208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188373 (2 * (n + 1))

end

end A188302.P14684363968605562208

namespace A188302

/-- `A188373(2*(n+1))` -/
def P14684363968605562208.Spec : Prop :=
  ∀ n, P14684363968605562208.a n = A188302 (n + 1)

end A188302

/-! ## A188302.P17805165501224754404

`∩[A188043(n+1), A188373(n+1)]`
-/

namespace A188302.P17805165501224754404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188302.P17805165501224754404

namespace A188302

/-- `∩[A188043(n+1), A188373(n+1)]` -/
def P17805165501224754404.Spec : Prop :=
  ∀ n, (P17805165501224754404.a n : ℤ) = A188302 (n + 1)

end A188302

/-! ## A188302.P3506191097366687806

`∩[A188043(n+1), A188396(n+1)]`
-/

namespace A188302.P3506191097366687806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188302.P3506191097366687806

namespace A188302

/-- `∩[A188043(n+1), A188396(n+1)]` -/
def P3506191097366687806.Spec : Prop :=
  ∀ n, (P3506191097366687806.a n : ℤ) = A188302 (n + 1)

end A188302

/-! ## A188302.P7086200270008209102

`∩[A188043(n+1), A190763(n+1)]`
-/

namespace A188302.P7086200270008209102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188302.P7086200270008209102

namespace A188302

/-- `∩[A188043(n+1), A190763(n+1)]` -/
def P7086200270008209102.Spec : Prop :=
  ∀ n, (P7086200270008209102.a n : ℤ) = A188302 (n + 1)

end A188302

/-! ## A188302.P15423211572594534863

`∩[A188043(n+1), A190776(n+1)]`
-/

namespace A188302.P15423211572594534863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188302.P15423211572594534863

namespace A188302

/-- `∩[A188043(n+1), A190776(n+1)]` -/
def P15423211572594534863.Spec : Prop :=
  ∀ n, (P15423211572594534863.a n : ℤ) = A188302 (n + 1)

end A188302

/-! ## A188302.P12080504928666909255

`A001952(∑[A097509(n)])`
-/

namespace A188302.P12080504928666909255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A188302.P12080504928666909255

namespace A188302

/-- `A001952(∑[A097509(n)])` -/
def P12080504928666909255.Spec : Prop :=
  ∀ n, P12080504928666909255.a n = A188302 (n + 1)

end A188302

/-! ## A188302.P6934554093140717390

`A001952(A080754(n+1))`
-/

namespace A188302.P6934554093140717390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (A080754 (n + 1)).toNat

end

end A188302.P6934554093140717390

namespace A188302

/-- `A001952(A080754(n+1))` -/
def P6934554093140717390.Spec : Prop :=
  ∀ n, P6934554093140717390.a n = A188302 (n + 1)

end A188302

/-! ## A188302.P5190576622286293290

`A288999(comp[A001951(n)]-n)`
-/

namespace A188302.P5190576622286293290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288999 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n)

end

end A188302.P5190576622286293290

namespace A188302

/-- `A288999(comp[A001951(n)]-n)` -/
def P5190576622286293290.Spec : Prop :=
  ∀ n, P5190576622286293290.a n = A188302 (n + 1)

end A188302

/-! ## A188302.P15373056570389991404

`A001952(A003151(n+1)+1)`
-/

namespace A188302.P15373056570389991404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (A003151 (n + 1) + 1).toNat

end

end A188302.P15373056570389991404

namespace A188302

/-- `A001952(A003151(n+1)+1)` -/
def P15373056570389991404.Spec : Prop :=
  ∀ n, P15373056570389991404.a n = A188302 (n + 1)

end A188302

/-! ## A188302.P8073140323525764030

`A001952(A285075(n+2)-1)`
-/

namespace A188302.P8073140323525764030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (A285075 (n + 2) - 1).toNat

end

end A188302.P8073140323525764030

namespace A188302

/-- `A001952(A285075(n+2)-1)` -/
def P8073140323525764030.Spec : Prop :=
  ∀ n, P8073140323525764030.a n = A188302 (n + 1)

end A188302

/-! ## A188302.P4245464004026013150

`A001952(A285078(n+2)-1)`
-/

namespace A188302.P4245464004026013150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (A285078 (n + 2) - 1).toNat

end

end A188302.P4245464004026013150

namespace A188302

/-- `A001952(A285078(n+2)-1)` -/
def P4245464004026013150.Spec : Prop :=
  ∀ n, P4245464004026013150.a n = A188302 (n + 1)

end A188302

/-! ## A188302.P6832581278219129584

`A001952(A188040(2*(n+1)))`
-/

namespace A188302.P6832581278219129584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (A188040 (2 * (n + 1))).toNat

end

end A188302.P6832581278219129584

namespace A188302

/-- `A001952(A188040(2*(n+1)))` -/
def P6832581278219129584.Spec : Prop :=
  ∀ n, P6832581278219129584.a n = A188302 (n + 1)

end A188302

/-!
# A188303: Number of (n+1)X(n+1) binary arrays with every 2X2 subblock sum equal to exactly one or two horizontal and vertical neighbor 2X2 subblock sums.

The programs for A188303, there is no canonical definition to state claims against.
-/

/-! ## A188303.P14469507954728461765

`A188311(∑[4*n]+1)`
-/

namespace A188303.P14469507954728461765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188311 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188303.P14469507954728461765

/-!
# A188304: Number of (n+1)X3 binary arrays with every 2X2 subblock sum equal to exactly one or two horizontal and vertical neighbor 2X2 subblock sums.

The programs for A188304, there is no canonical definition to state claims against.
-/

/-! ## A188304.P7775333806004261110

`A188311(∑[n+1]+2)`
-/

namespace A188304.P7775333806004261110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188311 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A188304.P7775333806004261110

/-! ## A188304.P6681201479300276627

`record[A010054(n)*A188311(n+2)]`
-/

namespace A188304.P6681201479300276627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A188311 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188304.P6681201479300276627

/-! ## A188304.P11845945602264323084

`record[A188311(A133263(val(n+1, 2)+1))]`
-/

namespace A188304.P11845945602264323084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188311 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188304.P11845945602264323084

/-! ## A188304.P15760239697884829659

`A188311(A133263(n+1))%A188306(n+1)`
-/

namespace A188304.P15760239697884829659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188311 (A133263 (n + 1)).toNat) (A188306 (n + 1))

end

end A188304.P15760239697884829659

/-! ## A188304.P14025593674201476029

`record[A188311(abs(A201163(n)))]`
-/

namespace A188304.P14025593674201476029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188311 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188304.P14025593674201476029

/-!
# A188305: Number of (n+1)X4 binary arrays with every 2X2 subblock sum equal to exactly one or two horizontal and vertical neighbor 2X2 subblock sums.

The programs for A188305, there is no canonical definition to state claims against.
-/

/-! ## A188305.P12039328448596946864

`A188311(∑[n+2]+4)`
-/

namespace A188305.P12039328448596946864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188311 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188305.P12039328448596946864

/-! ## A188305.P14073496157417813723

`lcm(2, A188311(A167614(n+1)))`
-/

namespace A188305.P14073496157417813723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A188311 (A167614 (n + 1)).toNat)

end

end A188305.P14073496157417813723

/-! ## A188305.P10269351307371233715

`record[gcd(A025581(n), A188311(n+4))]`
-/

namespace A188305.P10269351307371233715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A188311 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188305.P10269351307371233715

/-! ## A188305.P7441880698818469732

`record[A188311(A167614(val(n+1, 2)+1))]`
-/

namespace A188305.P7441880698818469732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188311 (A167614 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188305.P7441880698818469732

/-! ## A188305.P4787227621700816083

`A188311(A167614(n+1))+A025443(n)`
-/

namespace A188305.P4787227621700816083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188311 (A167614 (n + 1)).toNat + A025443 n

end

end A188305.P4787227621700816083

/-!
# A188306: Number of (n+1)X5 binary arrays with every 2X2 subblock sum equal to exactly one or two horizontal and vertical neighbor 2X2 subblock sums.

The programs for A188306, there is no canonical definition to state claims against.
-/

/-! ## A188306.P16856719939446935509

`A188311(∑[n+3]+7)`
-/

namespace A188306.P16856719939446935509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188311 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A188306.P16856719939446935509

/-!
# A188307: Number of (n+1)X6 binary arrays with every 2X2 subblock sum equal to exactly one or two horizontal and vertical neighbor 2X2 subblock sums.

The programs for A188307, there is no canonical definition to state claims against.
-/

/-! ## A188307.P12902871634322854598

`A188311(C(n+6, 2)-n)`
-/

namespace A188307.P12902871634322854598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188311 (Nat.choose (n + 6) 2 - n)

end

end A188307.P12902871634322854598

/-! ## A188307.P13823438191027415598

`A188311(A374005(n+1))`
-/

namespace A188307.P13823438191027415598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188311 (A374005 (n + 1)).toNat

end

end A188307.P13823438191027415598

/-! ## A188307.P17252557263733367157

`A188311(A155212(n)+13)`
-/

namespace A188307.P17252557263733367157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188311 (A155212 n + 13).toNat

end

end A188307.P17252557263733367157

/-! ## A188307.P7981762174214321211

`A188311(A056000(n)+15)`
-/

namespace A188307.P7981762174214321211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188311 (A056000 n + 15).toNat

end

end A188307.P7981762174214321211

/-! ## A188307.P6686040841857748359

`A188311(eq[7, A066657(n)])`
-/

namespace A188307.P6686040841857748359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188307.P6686040841857748359

/-!
# A188308: Number of (n+1)X7 binary arrays with every 2X2 subblock sum equal to exactly one or two horizontal and vertical neighbor 2X2 subblock sums.

The programs for A188308, there is no canonical definition to state claims against.
-/

/-! ## A188308.P14689680766850453354

`A188311(C(n+7, 2)-5)`
-/

namespace A188308.P14689680766850453354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188311 (Nat.choose (n + 7) 2 - 5)

end

end A188308.P14689680766850453354

/-! ## A188308.P11936514911839999896

`A188311(A374007(n+1))`
-/

namespace A188308.P11936514911839999896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188311 (A374007 (n + 1)).toNat

end

end A188308.P11936514911839999896

/-! ## A188308.P9679765039671891597

`A188311(A052905(n+3))`
-/

namespace A188308.P9679765039671891597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188311 (A052905 (n + 3)).toNat

end

end A188308.P9679765039671891597

/-!
# A188309: Number of (n+1)X8 binary arrays with every 2X2 subblock sum equal to exactly one or two horizontal and vertical neighbor 2X2 subblock sums.

The programs for A188309, there is no canonical definition to state claims against.
-/

/-! ## A188309.P11774312130134516371

`A188311(∑[n+6]+22)`
-/

namespace A188309.P11774312130134516371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188311 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A188309.P11774312130134516371

/-!
# A188310: Number of (n+1)X9 binary arrays with every 2X2 subblock sum equal to exactly one or two horizontal and vertical neighbor 2X2 subblock sums.

The programs for A188310, there is no canonical definition to state claims against.
-/

/-! ## A188310.P14796445608423200462

`A188311(A374009(n+1))`
-/

namespace A188310.P14796445608423200462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188311 (A374009 (n + 1)).toNat

end

end A188310.P14796445608423200462

/-!
# A188311: T(n,k)=Number of (n+1)X(k+1) binary arrays with every 2X2 subblock sum equal to exactly one or two horizontal and vertical neighbor 2X2 subblock sums.

The programs for A188311, there is no canonical definition to state claims against.
-/

/-! ## A188311.P10043483318407484914

`A185497(n+1)-A094537(A185354(n))`
-/

namespace A188311.P10043483318407484914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185497 (n + 1) - A094537 (A185354 n).toNat

end

end A188311.P10043483318407484914

/-!
# A188312: Expansion of (1/(1-x^2))*c(x/((1-x)*(1-x^2))) where c(x) is the g.f. of A000108.

The programs for A188312, there is no canonical definition to state claims against.
-/

/-! ## A188312.P4928158377200531936

`A188314(n)-a(n-1)` with `a(0)=1`
-/

namespace A188312.P4928158377200531936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188314 n - a (n - 1)

end

end A188312.P4928158377200531936

/-! ## A188312.P12258259278108605782

`A256502(A150164(n))`
-/

namespace A188312.P12258259278108605782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A150164 n).toNat

end

end A188312.P12258259278108605782

/-! ## A188312.P10516838363599418669

`A194509(round(sqrt(A058864(n+3))))`
-/

namespace A188312.P10516838363599418669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194509 (SequenceMachineLib.roundAway (Real.sqrt (A058864 (n + 3) : ℝ))).toNat

end

end A188312.P10516838363599418669

/-!
# A188313: A (25,-29) Somos-4 sequence.

The programs for A188313, the canonical program `A188313.P10006628751118383133` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188313 has offset 0).

The definition of A188313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188313.P10006628751118383133

`(25*a(n-1)*a(n-3)-29*a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=3, a(2)=23, a(3)=314`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188313

/-- `(25*a(n-1)*a(n-3)-29*a(n-2)²)/a(n-4)` -/
def P10006628751118383133.Spec : Prop :=
  ∀ n, P10006628751118383133.a n = (A188313 n : ℚ)

end A188313

/-! ## A188313.P9340486617531017906

`A006720(2*n+3)`
-/

namespace A188313.P9340486617531017906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006720 (2 * n + 3)

end

end A188313.P9340486617531017906

namespace A188313

/-- `A006720(2*n+3)` -/
def P9340486617531017906.Spec : Prop :=
  ∀ n, P9340486617531017906.a n = A188313 n

end A188313

/-! ## A188313.P17420103422146637958

`record[lcm((-(n%2))^∑[n], A006720(n))]`
-/

namespace A188313.P17420103422146637958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-((n % 2 : ℕ) : ℤ)) ^ (∑ j ∈ Finset.range (n + 1), f2 j)) (A006720 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188313.P17420103422146637958

namespace A188313

/-- `record[lcm((-(n%2))^∑[n], A006720(n))]` -/
def P17420103422146637958.Spec : Prop :=
  ∀ n, (P17420103422146637958.a n : ℤ) = A188313 n

end A188313

/-! ## A188313.P12759067208217177401

`abs(A006769(A004767(n)))`
-/

namespace A188313.P12759067208217177401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006769 (A004767 n).toNat|

end

end A188313.P12759067208217177401

namespace A188313

/-- `abs(A006769(A004767(n)))` -/
def P12759067208217177401.Spec : Prop :=
  ∀ n, P12759067208217177401.a n = A188313 n

end A188313

/-! ## A188313.P14738255926894317321

`record[A006720(A004442(n))]`
-/

namespace A188313.P14738255926894317321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006720 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188313.P14738255926894317321

namespace A188313

/-- `record[A006720(A004442(n))]` -/
def P14738255926894317321.Spec : Prop :=
  ∀ n, P14738255926894317321.a n = A188313 n

end A188313

/-!
# A188314: Expansion of (1/(1-x))*c(x/((1-x)*(1-x^2))) where c(x) is the g.f. of A000108.

The programs for A188314, there is no canonical definition to state claims against.
-/

/-! ## A188314.P1416935077626093426

`A102548(A150856(n))`
-/

namespace A188314.P1416935077626093426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102548 (A150856 n).toNat

end

end A188314.P1416935077626093426

/-! ## A188314.P16115485262402075123

`A008620(A151055(n)+A055887(n))`
-/

namespace A188314.P16115485262402075123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A151055 n + A055887 n).toNat

end

end A188314.P16115485262402075123

/-! ## A188314.P7003879876276484070

`A149978(n)-A307597(A052735(n))`
-/

namespace A188314.P7003879876276484070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149978 n - A307597 (A052735 n).toNat

end

end A188314.P7003879876276484070

/-!
# A188315: A (25,-29) Somos-4 sequence.

The programs for A188315, there is no canonical definition to state claims against.
-/

/-! ## A188315.P4483865752980554342

`(-1)^n*A157101(comp[2*(n+1)])`
-/

namespace A188315.P4483865752980554342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A157101 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A188315.P4483865752980554342

/-! ## A188315.P13026028254167291697

`A033999(n)*A051138(2*n+1)`
-/

namespace A188315.P13026028254167291697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A051138 (2 * n + 1)

end

end A188315.P13026028254167291697

/-! ## A188315.P7312908724716179369

`A051138(2*n+1)*A062157(n+1)`
-/

namespace A188315.P7312908724716179369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051138 (2 * n + 1) * A062157 (n + 1)

end

end A188315.P7312908724716179369

/-! ## A188315.P9679389080307522909

`A051138(2*n+1)*A117569(2*n+1)`
-/

namespace A188315.P9679389080307522909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051138 (2 * n + 1) * A117569 (2 * n + 1)

end

end A188315.P9679389080307522909

/-! ## A188315.P7420946464976840163

`A006769(A016825(n))*A033999(n)`
-/

namespace A188315.P7420946464976840163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006769 (A016825 n).toNat * A033999 n

end

end A188315.P7420946464976840163

/-!
# A188316: Riordan array (1/(1-x^2), x/((1-x)*(1-x^2))).

The programs for A188316, there is no canonical definition to state claims against.
-/

/-! ## A188316.P1164050041579844832

`A059594(n)-A060086(n+1)`
-/

namespace A188316.P1164050041579844832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059594 n - A060086 (n + 1)

end

end A188316.P1164050041579844832

/-! ## A188316.P5779778276775100979

`A059594(n)-A060086(n)-Δ[A060086(n)]`
-/

namespace A188316.P5779778276775100979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059594 n - A060086 n - (f1 (n + 1) - f1 n)

end

end A188316.P5779778276775100979

/-! ## A188316.P5195882016246605394

`A060086(comp[∑[n]])-A060086(n+1)`
-/

namespace A188316.P5195882016246605394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A060086 (n + 1)

end

end A188316.P5195882016246605394

/-! ## A188316.P16380197187560085117

`A059594(n)+A001057(2*A060086(n+1))`
-/

namespace A188316.P16380197187560085117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059594 n + A001057 (2 * A060086 (n + 1)).toNat

end

end A188316.P16380197187560085117

/-! ## A188316.P17775440108112138489

`A134520(n)%Δ[A173878(n+1)]`
-/

namespace A188316.P17775440108112138489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134520 n) (f1 (n + 1) - f1 n)

end

end A188316.P17775440108112138489

/-!
# A188318: a(n) = [n*r] - [k*r] - [n*r-k*r], where r=1/sqrt(2), k=4, [ ]=floor.

The programs for A188318, the canonical program `A188318.P11824684918398518309` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188318 has offset 1).

The definition of A188318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188318.P10308640941035714703

`char[A188320(n+1)-1]`
-/

namespace A188318.P10308640941035714703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188320 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188318.P10308640941035714703

namespace A188318

/-- `char[A188320(n+1)-1]` -/
def P10308640941035714703.Spec : Prop :=
  ∀ n, (P10308640941035714703.a n : ℤ) = A188318 (n + 1)

end A188318

/-! ## A188318.P11824684918398518309

`A188321(A083035(n+1)+n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A188318

/-- `A188321(A083035(n+1)+n+1)` -/
def P11824684918398518309.Spec : Prop :=
  ∀ n, P11824684918398518309.a n = A188318 (n + 1)

theorem P11824684918398518309.correct : P11824684918398518309.Spec := by
  intro n
  simp only [A188318, Nat.add_sub_cancel]

end A188318

/-! ## A188318.P17259921617613331492

`char[∪[A184117(n+1), A188046(n+1)]-1]`
-/

namespace A188318.P17259921617613331492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184117 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188046 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188318.P17259921617613331492

namespace A188318

/-- `char[∪[A184117(n+1), A188046(n+1)]-1]` -/
def P17259921617613331492.Spec : Prop :=
  ∀ n, (P17259921617613331492.a n : ℤ) = A188318 (n + 1)

end A188318

/-! ## A188318.P671539477600615902

`A188321(A188321(n+2)+n+1)`
-/

namespace A188318.P671539477600615902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188321 (A188321 (n + 2) + (n + 1 : ℤ)).toNat

end

end A188318.P671539477600615902

namespace A188318

/-- `A188321(A188321(n+2)+n+1)` -/
def P671539477600615902.Spec : Prop :=
  ∀ n, P671539477600615902.a n = A188318 (n + 1)

end A188318

/-! ## A188318.P11711474851631415968

`A080764(A188044(n+1)+A098021(n+1))`
-/

namespace A188318.P11711474851631415968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 (A188044 (n + 1) + A098021 (n + 1)).toNat

end

end A188318.P11711474851631415968

namespace A188318

/-- `A080764(A188044(n+1)+A098021(n+1))` -/
def P11711474851631415968.Spec : Prop :=
  ∀ n, P11711474851631415968.a n = A188318 (n + 1)

end A188318

/-!
# A188319: Positions of 0 in A188318; complement of A188320.

The programs for A188319, the canonical program `A188319.P16536555272822625560` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188319 has offset 1).

The definition of A188319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188319.P16536555272822625560

`4*floor(n/sqrt(2)+n+1)-n`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188319

/-- `4*floor(n/sqrt(2)+n+1)-n` -/
def P16536555272822625560.Spec : Prop :=
  ∀ n, P16536555272822625560.a n = A188319 (n + 1)

theorem P16536555272822625560.correct : P16536555272822625560.Spec := by
  intro n
  simp only [A188319, Nat.add_sub_cancel]

end A188319

/-! ## A188319.P16140885761906208643

`A083051(A083088(n))`
-/

namespace A188319.P16140885761906208643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083051 (A083088 n).toNat

end

end A188319.P16140885761906208643

namespace A188319

/-- `A083051(A083088(n))` -/
def P16140885761906208643.Spec : Prop :=
  ∀ n, P16140885761906208643.a n = A188319 (n + 1)

end A188319

/-! ## A188319.P14133406402239086024

`A083051(A049472(n)+n+1)`
-/

namespace A188319.P14133406402239086024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083051 (A049472 n + (n + 1 : ℤ)).toNat

end

end A188319.P14133406402239086024

namespace A188319

/-- `A083051(A049472(n)+n+1)` -/
def P14133406402239086024.Spec : Prop :=
  ∀ n, P14133406402239086024.a n = A188319 (n + 1)

end A188319

/-! ## A188319.P133346139940111613

`A184118(A049472(n)+1+n)`
-/

namespace A188319.P133346139940111613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184118 (A049472 n + 1 + (n : ℤ)).toNat

end

end A188319.P133346139940111613

namespace A188319

/-- `A184118(A049472(n)+1+n)` -/
def P133346139940111613.Spec : Prop :=
  ∀ n, P133346139940111613.a n = A188319 (n + 1)

end A188319

/-! ## A188319.P6528348748504946239

`A184581(A049472(n)+1+n)`
-/

namespace A188319.P6528348748504946239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184581 (A049472 n + 1 + (n : ℤ)).toNat

end

end A188319.P6528348748504946239

namespace A188319

/-- `A184581(A049472(n)+1+n)` -/
def P6528348748504946239.Spec : Prop :=
  ∀ n, P6528348748504946239.a n = A188319 (n + 1)

end A188319

/-! ## A188319.P12678448976519149967

`A184623(A049472(n)+1+n)`
-/

namespace A188319.P12678448976519149967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (A049472 n + 1 + (n : ℤ)).toNat

end

end A188319.P12678448976519149967

namespace A188319

/-- `A184623(A049472(n)+1+n)` -/
def P12678448976519149967.Spec : Prop :=
  ∀ n, P12678448976519149967.a n = A188319 (n + 1)

end A188319

/-! ## A188319.P8794239463588839584

`A184625(A049472(n)+1+n)`
-/

namespace A188319.P8794239463588839584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184625 (A049472 n + 1 + (n : ℤ)).toNat

end

end A188319.P8794239463588839584

namespace A188319

/-- `A184625(A049472(n)+1+n)` -/
def P8794239463588839584.Spec : Prop :=
  ∀ n, P8794239463588839584.a n = A188319 (n + 1)

end A188319

/-! ## A188319.P16461066021959740591

`∩[A188045(n+1), A083051(n)]`
-/

namespace A188319.P16461066021959740591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083051 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188319.P16461066021959740591

namespace A188319

/-- `∩[A188045(n+1), A083051(n)]` -/
def P16461066021959740591.Spec : Prop :=
  ∀ n, (P16461066021959740591.a n : ℤ) = A188319 (n + 1)

end A188319

/-! ## A188319.P14786418057173306498

`∩[A184118(n+1), A188045(n+1)]`
-/

namespace A188319.P14786418057173306498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188319.P14786418057173306498

namespace A188319

/-- `∩[A184118(n+1), A188045(n+1)]` -/
def P14786418057173306498.Spec : Prop :=
  ∀ n, (P14786418057173306498.a n : ℤ) = A188319 (n + 1)

end A188319

/-! ## A188319.P2524214799956500192

`∩[A184581(n+1), A188045(n+1)]`
-/

namespace A188319.P2524214799956500192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188319.P2524214799956500192

namespace A188319

/-- `∩[A184581(n+1), A188045(n+1)]` -/
def P2524214799956500192.Spec : Prop :=
  ∀ n, (P2524214799956500192.a n : ℤ) = A188319 (n + 1)

end A188319

/-! ## A188319.P2177119792244960971

`∩[A184623(n+1), A188045(n+1)]`
-/

namespace A188319.P2177119792244960971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188319.P2177119792244960971

namespace A188319

/-- `∩[A184623(n+1), A188045(n+1)]` -/
def P2177119792244960971.Spec : Prop :=
  ∀ n, (P2177119792244960971.a n : ℤ) = A188319 (n + 1)

end A188319

/-! ## A188319.P9136897423346104252

`∩[A184625(n+1), A188045(n+1)]`
-/

namespace A188319.P9136897423346104252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188319.P9136897423346104252

namespace A188319

/-- `∩[A184625(n+1), A188045(n+1)]` -/
def P9136897423346104252.Spec : Prop :=
  ∀ n, (P9136897423346104252.a n : ℤ) = A188319 (n + 1)

end A188319

/-! ## A188319.P17049288163289681501

`∩[A188045(n+1), A190769(n+1)]`
-/

namespace A188319.P17049288163289681501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188319.P17049288163289681501

namespace A188319

/-- `∩[A188045(n+1), A190769(n+1)]` -/
def P17049288163289681501.Spec : Prop :=
  ∀ n, (P17049288163289681501.a n : ℤ) = A188319 (n + 1)

end A188319

/-! ## A188319.P16081772151197277365

`∩[A188045(n+1), A190774(n+1)]`
-/

namespace A188319.P16081772151197277365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188319.P16081772151197277365

namespace A188319

/-- `∩[A188045(n+1), A190774(n+1)]` -/
def P16081772151197277365.Spec : Prop :=
  ∀ n, (P16081772151197277365.a n : ℤ) = A188319 (n + 1)

end A188319

/-! ## A188319.P12115878023772437206

`∩[A188045(n+1), A190765(n+1)]`
-/

namespace A188319.P12115878023772437206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188319.P12115878023772437206

namespace A188319

/-- `∩[A188045(n+1), A190765(n+1)]` -/
def P12115878023772437206.Spec : Prop :=
  ∀ n, (P12115878023772437206.a n : ℤ) = A188319 (n + 1)

end A188319

/-! ## A188319.P14658496092711787165

`A003151(or(1, A001951(n))+n+1)`
-/

namespace A188319.P14658496092711787165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (Int.lor 1 (A001951 n) + (n + 1 : ℤ)).toNat

end

end A188319.P14658496092711787165

namespace A188319

/-- `A003151(or(1, A001951(n))+n+1)` -/
def P14658496092711787165.Spec : Prop :=
  ∀ n, P14658496092711787165.a n = A188319 (n + 1)

end A188319

/-! ## A188319.P14405274779035831783

`∩[A137362(n+1), A188045(n+1)]`
-/

namespace A188319.P14405274779035831783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188319.P14405274779035831783

namespace A188319

/-- `∩[A137362(n+1), A188045(n+1)]` -/
def P14405274779035831783.Spec : Prop :=
  ∀ n, (P14405274779035831783.a n : ℤ) = A188319 (n + 1)

end A188319

/-! ## A188319.P16315341470765915147

`∩[A188045(n+1), A188376(n+1)]`
-/

namespace A188319.P16315341470765915147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188319.P16315341470765915147

namespace A188319

/-- `∩[A188045(n+1), A188376(n+1)]` -/
def P16315341470765915147.Spec : Prop :=
  ∀ n, (P16315341470765915147.a n : ℤ) = A188319 (n + 1)

end A188319

/-! ## A188319.P12309663731411771096

`A188376(A285077(n+1)+A049472(n))`
-/

namespace A188319.P12309663731411771096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (A285077 (n + 1) + A049472 n).toNat

end

end A188319.P12309663731411771096

namespace A188319

/-- `A188376(A285077(n+1)+A049472(n))` -/
def P12309663731411771096.Spec : Prop :=
  ∀ n, P12309663731411771096.a n = A188319 (n + 1)

end A188319

/-! ## A188319.P8301882413755914476

`A003151(A001951(A049472(n)+n)+2)`
-/

namespace A188319.P8301882413755914476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A001951 (A049472 n + (n : ℤ)).toNat + 2).toNat

end

end A188319.P8301882413755914476

namespace A188319

/-- `A003151(A001951(A049472(n)+n)+2)` -/
def P8301882413755914476.Spec : Prop :=
  ∀ n, P8301882413755914476.a n = A188319 (n + 1)

end A188319

/-!
# A188320: Positions of 1 in A188318; complement of A188319.

The programs for A188320, the canonical program `A188320.P11160732355693375776` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188320 has offset 1).

The definition of A188320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188320.P11228456760546976631

`∪[A087057(n+1), A188046(n+1)]`
-/

namespace A188320.P11228456760546976631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188320.P11228456760546976631

namespace A188320

/-- `∪[A087057(n+1), A188046(n+1)]` -/
def P11228456760546976631.Spec : Prop :=
  ∀ n, (P11228456760546976631.a n : ℤ) = A188320 (n + 1)

end A188320

/-! ## A188320.P7492565688272755247

`∪[A120752(n+1), A188046(n+1)]`
-/

namespace A188320.P7492565688272755247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188320.P7492565688272755247

namespace A188320

/-- `∪[A120752(n+1), A188046(n+1)]` -/
def P7492565688272755247.Spec : Prop :=
  ∀ n, (P7492565688272755247.a n : ℤ) = A188320 (n + 1)

end A188320

/-! ## A188320.P15965925880085077835

`∪[A184117(n+1), A188046(n+1)]`
-/

namespace A188320.P15965925880085077835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188320.P15965925880085077835

namespace A188320

/-- `∪[A184117(n+1), A188046(n+1)]` -/
def P15965925880085077835.Spec : Prop :=
  ∀ n, (P15965925880085077835.a n : ℤ) = A188320 (n + 1)

end A188320

/-! ## A188320.P1418989600043278799

`∪[A184119(n+1), A188046(n+1)]`
-/

namespace A188320.P1418989600043278799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188320.P1418989600043278799

namespace A188320

/-- `∪[A184119(n+1), A188046(n+1)]` -/
def P1418989600043278799.Spec : Prop :=
  ∀ n, (P1418989600043278799.a n : ℤ) = A188320 (n + 1)

end A188320

/-! ## A188320.P17703547045853698483

`∪[A184580(n+1), A188046(n+1)]`
-/

namespace A188320.P17703547045853698483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188320.P17703547045853698483

namespace A188320

/-- `∪[A184580(n+1), A188046(n+1)]` -/
def P17703547045853698483.Spec : Prop :=
  ∀ n, (P17703547045853698483.a n : ℤ) = A188320 (n + 1)

end A188320

/-! ## A188320.P2132699758321105969

`∪[A184619(n+1), A188046(n+1)]`
-/

namespace A188320.P2132699758321105969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188320.P2132699758321105969

namespace A188320

/-- `∪[A184619(n+1), A188046(n+1)]` -/
def P2132699758321105969.Spec : Prop :=
  ∀ n, (P2132699758321105969.a n : ℤ) = A188320 (n + 1)

end A188320

/-! ## A188320.P11160732355693375776

`∪[A188323(n+1)-1, A188323(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A188320

/-- `∪[A188323(n+1)-1, A188323(n+1)]` -/
def P11160732355693375776.Spec : Prop :=
  ∀ n, (P11160732355693375776.a n : ℤ) = A188320 (n + 1)

theorem P11160732355693375776.correct : P11160732355693375776.Spec := by
  intro n
  simp only [A188320, Nat.add_sub_cancel]

end A188320

/-! ## A188320.P3135282478394294534

`comp[A289037(floor((A289037(n+1)-1)/2))]+1`
-/

namespace A188320.P3135282478394294534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289037 ⌊(A289037 (n + 1) - 1 : ℚ) / 2⌋.toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188320.P3135282478394294534

namespace A188320

/-- `comp[A289037(floor((A289037(n+1)-1)/2))]+1` -/
def P3135282478394294534.Spec : Prop :=
  ∀ n, (P3135282478394294534.a n : ℤ) = A188320 (n + 1)

end A188320

/-! ## A188320.P14255663942926305798

`filter[n+1, A188318(#)]`
-/

namespace A188320.P14255663942926305798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188318 (f1 j) = 1) n)

end

end A188320.P14255663942926305798

namespace A188320

/-- `filter[n+1, A188318(#)]` -/
def P14255663942926305798.Spec : Prop :=
  ∀ n, (P14255663942926305798.a n : ℤ) = A188320 (n + 1)

end A188320

/-! ## A188320.P5121359680395341828

`record[(n+1)*A188318(n+1)]`
-/

namespace A188320.P5121359680395341828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A188318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188320.P5121359680395341828

namespace A188320

/-- `record[(n+1)*A188318(n+1)]` -/
def P5121359680395341828.Spec : Prop :=
  ∀ n, P5121359680395341828.a n = A188320 (n + 1)

end A188320

/-! ## A188320.P11963073522720914563

`a(n-1)+2-A188318(a(n-1)+1)` with `a(0)=1`
-/

namespace A188320.P11963073522720914563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 - A188318 (a (n - 1) + 1).toNat

end

end A188320.P11963073522720914563

namespace A188320

/-- `a(n-1)+2-A188318(a(n-1)+1)` -/
def P11963073522720914563.Spec : Prop :=
  ∀ n, P11963073522720914563.a n = A188320 (n + 1)

end A188320

/-! ## A188320.P9138373684861444625

`record[(n+1)*A188321(A188321(n+2)+n+1)]`
-/

namespace A188320.P9138373684861444625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A188321 (A188321 (n + 2) + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188320.P9138373684861444625

namespace A188320

/-- `record[(n+1)*A188321(A188321(n+2)+n+1)]` -/
def P9138373684861444625.Spec : Prop :=
  ∀ n, P9138373684861444625.a n = A188320 (n + 1)

end A188320

/-! ## A188320.P4170217947232734087

`eq[A188038(A099188(n)/2+n+1), A188321(n+1)]`
-/

namespace A188320.P4170217947232734087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188038 (SequenceMachineLib.roundAway ((A099188 n : ℚ) / 2 + (n + 1 : ℚ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188321 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188320.P4170217947232734087

namespace A188320

/-- `eq[A188038(A099188(n)/2+n+1), A188321(n+1)]` -/
def P4170217947232734087.Spec : Prop :=
  ∀ n, (P4170217947232734087.a n : ℤ) = A188320 (n + 1)

end A188320

/-!
# A188321: a(n) = [n*r] - [k*r] - [n*r-k*r], where r=1/sqrt(2), k=5, [ ]=floor.

The programs for A188321, the canonical program `A188321.P12163037436350599352` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188321 has offset 1).

The definition of A188321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188321.P12163037436350599352

`char[A188323(n+1)-1]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A188321

/-- `char[A188323(n+1)-1]` -/
def P12163037436350599352.Spec : Prop :=
  ∀ n, (P12163037436350599352.a n : ℤ) = A188321 (n + 1)

theorem P12163037436350599352.correct : P12163037436350599352.Spec := by
  intro n
  simp only [A188321, Nat.add_sub_cancel]

end A188321

/-! ## A188321.P2721831312679480372

`char[A188320(n+1)]*A188295(n+1)`
-/

namespace A188321.P2721831312679480372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188320 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A188295 (n + 1)

end

end A188321.P2721831312679480372

namespace A188321

/-- `char[A188320(n+1)]*A188295(n+1)` -/
def P2721831312679480372.Spec : Prop :=
  ∀ n, P2721831312679480372.a n = A188321 (n + 1)

end A188321

/-! ## A188321.P14797411915897579699

`C(A032742(A065721(n+1)), A190775(n+1))`
-/

namespace A188321.P14797411915897579699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A032742 (A065721 (n + 1)).toNat).toNat (A190775 (n + 1)).toNat

end

end A188321.P14797411915897579699

namespace A188321

/-- `C(A032742(A065721(n+1)), A190775(n+1))` -/
def P14797411915897579699.Spec : Prop :=
  ∀ n, (P14797411915897579699.a n : ℤ) = A188321 (n + 1)

end A188321

/-! ## A188321.P10928977940383481383

`A121373(A190775(n+1)^A000005(3*n+2))`
-/

namespace A188321.P10928977940383481383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (SequenceMachineLib.roundAway ((A190775 (n + 1) : ℚ) ^ (A000005 (3 * n + 2) : ℤ))).toNat

end

end A188321.P10928977940383481383

namespace A188321

/-- `A121373(A190775(n+1)^A000005(3*n+2))` -/
def P10928977940383481383.Spec : Prop :=
  ∀ n, P10928977940383481383.a n = A188321 (n + 1)

end A188321

/-! ## A188321.P15156218053985249518

`C(A040929(A002061(n)), A190775(n+1))`
-/

namespace A188321.P15156218053985249518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A040929 (A002061 n).toNat).toNat (A190775 (n + 1)).toNat

end

end A188321.P15156218053985249518

namespace A188321

/-- `C(A040929(A002061(n)), A190775(n+1))` -/
def P15156218053985249518.Spec : Prop :=
  ∀ n, (P15156218053985249518.a n : ℤ) = A188321 (n + 1)

end A188321

/-! ## A188321.P1959291110731707549

`C(A032742(A006450(2*n+5)), A190775(n+1))`
-/

namespace A188321.P1959291110731707549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A032742 (A006450 (2 * n + 5)).toNat).toNat (A190775 (n + 1)).toNat

end

end A188321.P1959291110731707549

namespace A188321

/-- `C(A032742(A006450(2*n+5)), A190775(n+1))` -/
def P1959291110731707549.Spec : Prop :=
  ∀ n, (P1959291110731707549.a n : ℤ) = A188321 (n + 1)

end A188321

/-! ## A188321.P1912834024770460267

`C(A046951(A323504(n)), A190775(n+1))`
-/

namespace A188321.P1912834024770460267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A046951 (A323504 n).toNat).toNat (A190775 (n + 1)).toNat

end

end A188321.P1912834024770460267

namespace A188321

/-- `C(A046951(A323504(n)), A190775(n+1))` -/
def P1912834024770460267.Spec : Prop :=
  ∀ n, (P1912834024770460267.a n : ℤ) = A188321 (n + 1)

end A188321

/-! ## A188321.P3827119713311172510

`C(A032742(A070849(n+2)), A190775(n+1))`
-/

namespace A188321.P3827119713311172510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A032742 (A070849 (n + 2)).toNat).toNat (A190775 (n + 1)).toNat

end

end A188321.P3827119713311172510

namespace A188321

/-- `C(A032742(A070849(n+2)), A190775(n+1))` -/
def P3827119713311172510.Spec : Prop :=
  ∀ n, (P3827119713311172510.a n : ℤ) = A188321 (n + 1)

end A188321

/-! ## A188321.P589910818369059020

`C(A001055(A139827(2*n+5)), A190775(n+1))`
-/

namespace A188321.P589910818369059020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001055 (A139827 (2 * n + 5)).toNat).toNat (A190775 (n + 1)).toNat

end

end A188321.P589910818369059020

namespace A188321

/-- `C(A001055(A139827(2*n+5)), A190775(n+1))` -/
def P589910818369059020.Spec : Prop :=
  ∀ n, (P589910818369059020.a n : ℤ) = A188321 (n + 1)

end A188321

/-! ## A188321.P4038938615839741370

`A267358(A000384(n)+2*n+7)`
-/

namespace A188321.P4038938615839741370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267358 (A000384 n + (2 * n + 7 : ℤ)).toNat

end

end A188321.P4038938615839741370

namespace A188321

/-- `A267358(A000384(n)+2*n+7)` -/
def P4038938615839741370.Spec : Prop :=
  ∀ n, P4038938615839741370.a n = A188321 (n + 1)

end A188321

/-!
# A188322: Positions of 0 in A188321; complement of A188323.

The programs for A188322, the canonical program `A188322.P2194308858124452839` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188322 has offset 1).

The definition of A188322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4645 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188322.P2194308858124452839

`record[n+1-A188321(n+1)-A188321(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A188322

/-- `record[n+1-A188321(n+1)-A188321(n+1)]` -/
def P2194308858124452839.Spec : Prop :=
  ∀ n, P2194308858124452839.a n = A188322 (n + 1)

theorem P2194308858124452839.correct : P2194308858124452839.Spec := by
  intro n
  simp only [A188322, Nat.add_sub_cancel]

end A188322

/-! ## A188322.P11676774733408251946

`record[and(A188321(n+1)+A055580(n), n+1)]`
-/

namespace A188322.P11676774733408251946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A188321 (n + 1) + A055580 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188322.P11676774733408251946

namespace A188322

/-- `record[and(A188321(n+1)+A055580(n), n+1)]` -/
def P11676774733408251946.Spec : Prop :=
  ∀ n, P11676774733408251946.a n = A188322 (n + 1)

end A188322

/-! ## A188322.P5303151211741375902

`record[and(A188321(n+1)+A107954(n), n+1)]`
-/

namespace A188322.P5303151211741375902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A188321 (n + 1) + A107954 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188322.P5303151211741375902

namespace A188322

/-- `record[and(A188321(n+1)+A107954(n), n+1)]` -/
def P5303151211741375902.Spec : Prop :=
  ∀ n, P5303151211741375902.a n = A188322 (n + 1)

end A188322

/-! ## A188322.P13409505293468149460

`lt[A079866(n+5), A103919(A114949(2*n+3))]`
-/

namespace A188322.P13409505293468149460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079866 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 (A114949 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188322.P13409505293468149460

namespace A188322

/-- `lt[A079866(n+5), A103919(A114949(2*n+3))]` -/
def P13409505293468149460.Spec : Prop :=
  ∀ n, (P13409505293468149460.a n : ℤ) = A188322 (n + 1)

end A188322

/-!
# A188323: Positions of 1 in A188321; complement of A188322.

The programs for A188323, the canonical program `A188323.P13904417183950677068` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188323 has offset 1).

The definition of A188323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5355 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188323.P10981173200981373197

`filter[n+1, A188321(#)]`
-/

namespace A188323.P10981173200981373197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188321 (f1 j) = 1) n)

end

end A188323.P10981173200981373197

namespace A188323

/-- `filter[n+1, A188321(#)]` -/
def P10981173200981373197.Spec : Prop :=
  ∀ n, (P10981173200981373197.a n : ℤ) = A188323 (n + 1)

end A188323

/-! ## A188323.P2541182721504669081

`record[2*A188321(n+2)+n]`
-/

namespace A188323.P2541182721504669081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188321 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188323.P2541182721504669081

namespace A188323

/-- `record[2*A188321(n+2)+n]` -/
def P2541182721504669081.Spec : Prop :=
  ∀ n, P2541182721504669081.a n = A188323 (n + 1)

end A188323

/-! ## A188323.P10457090316124356836

`eq[n+1, (n+1)*A188321(n+1)]+1`
-/

namespace A188323.P10457090316124356836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A188321 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A188323.P10457090316124356836

namespace A188323

/-- `eq[n+1, (n+1)*A188321(n+1)]+1` -/
def P10457090316124356836.Spec : Prop :=
  ∀ n, (P10457090316124356836.a n : ℤ) = A188323 (n + 1)

end A188323

/-! ## A188323.P13904417183950677068

`record[A087057(n+1)*A188044(A136119(n+1))]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A188323

/-- `record[A087057(n+1)*A188044(A136119(n+1))]` -/
def P13904417183950677068.Spec : Prop :=
  ∀ n, P13904417183950677068.a n = A188323 (n + 1)

theorem P13904417183950677068.correct : P13904417183950677068.Spec := by
  intro n
  simp only [A188323, Nat.add_sub_cancel]

end A188323

/-! ## A188323.P474576487796441040

`eq[A087057(n+1)-A099188(n), A188371(n+1)]`
-/

namespace A188323.P474576487796441040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (n + 1) - A099188 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188371 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188323.P474576487796441040

namespace A188323

/-- `eq[A087057(n+1)-A099188(n), A188371(n+1)]` -/
def P474576487796441040.Spec : Prop :=
  ∀ n, (P474576487796441040.a n : ℤ) = A188323 (n + 1)

end A188323

/-! ## A188323.P16103177174296906116

`eq[A144611(A285074(n+1)), A188371(n+1)]`
-/

namespace A188323.P16103177174296906116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 (A285074 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188371 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188323.P16103177174296906116

namespace A188323

/-- `eq[A144611(A285074(n+1)), A188371(n+1)]` -/
def P16103177174296906116.Spec : Prop :=
  ∀ n, (P16103177174296906116.a n : ℤ) = A188323 (n + 1)

end A188323

/-! ## A188323.P6042406995090575571

`eq[A188371(n+1), A285073(A080755(n+1))]`
-/

namespace A188323.P6042406995090575571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285073 (A080755 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188323.P6042406995090575571

namespace A188323

/-- `eq[A188371(n+1), A285073(A080755(n+1))]` -/
def P6042406995090575571.Spec : Prop :=
  ∀ n, (P6042406995090575571.a n : ℤ) = A188323 (n + 1)

end A188323

/-!
# A188324: Number of nondecreasing arrangements of n nonzero numbers in -(2n-2)..(2n-2) with sum zero.

The programs for A188324, there is no canonical definition to state claims against.
-/

/-! ## A188324.P2110583404947939467

`A188204(n+1)-A204461(n)`
-/

namespace A188324.P2110583404947939467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188204 (n + 1) - A204461 n

end

end A188324.P2110583404947939467

/-! ## A188324.P10819462091142549543

`A188204(n+1)-A204459(C(n+7, 2)-n-1)`
-/

namespace A188324.P10819462091142549543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188204 (n + 1) - A204459 ((Nat.choose (n + 7) 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A188324.P10819462091142549543

/-! ## A188324.P4010858798010632326

`A188204(n+1)-A204459(A000124(n+5)+4)`
-/

namespace A188324.P4010858798010632326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188204 (n + 1) - A204459 (A000124 (n + 5) + 4).toNat

end

end A188324.P4010858798010632326

/-! ## A188324.P11276741604044217977

`A188204(n+1)-A204459(A000096(n+4)+6)`
-/

namespace A188324.P11276741604044217977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188204 (n + 1) - A204459 (A000096 (n + 4) + 6).toNat

end

end A188324.P11276741604044217977

/-! ## A188324.P11999648123325603171

`A188204(n+1)-A204459(A000217(n+5)+5)`
-/

namespace A188324.P11999648123325603171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188204 (n + 1) - A204459 (A000217 (n + 5) + 5).toNat

end

end A188324.P11999648123325603171

/-!
# A188325: Number of nondecreasing arrangements of n nonzero numbers in -(n-1)..(n-1) with sum zero.

The programs for A188325, there is no canonical definition to state claims against.
-/

/-! ## A188325.P3884068510520765006

`A039744(n+1)-A109655(n)`
-/

namespace A188325.P3884068510520765006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039744 (n + 1) - A109655 n

end

end A188325.P3884068510520765006

/-! ## A188325.P5654361227068848185

`A188333(∑[n+1])`
-/

namespace A188325.P5654361227068848185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A188325.P5654361227068848185

/-! ## A188325.P16408718050226138673

`record[Δ[-A188333(n+1)]]`
-/

namespace A188325.P16408718050226138673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A188333 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188325.P16408718050226138673

/-! ## A188325.P1269638281857223764

`record[A188333(A130270(n+1))]`
-/

namespace A188325.P1269638281857223764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A130270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188325.P1269638281857223764

/-! ## A188325.P3692994373309988008

`record[A188333(A276956(n+1))]`
-/

namespace A188325.P3692994373309988008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A276956 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188325.P3692994373309988008

/-!
# A188326: Number of nondecreasing arrangements of n nonzero numbers in -n..n with sum zero.

The programs for A188326, there is no canonical definition to state claims against.
-/

/-! ## A188326.P8045945498886437608

`A188333(∑[n+2])`
-/

namespace A188326.P8045945498886437608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A188326.P8045945498886437608

/-! ## A188326.P8291586700484007001

`record[A188333(A061579(n+1))]`
-/

namespace A188326.P8291586700484007001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A061579 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188326.P8291586700484007001

/-! ## A188326.P855397529331847152

`record[A188333(A276956(n+2)-1)]`
-/

namespace A188326.P855397529331847152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A276956 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188326.P855397529331847152

/-! ## A188326.P15212128451647792245

`record[A188333(A000096(A133310(n)))]`
-/

namespace A188326.P15212128451647792245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A000096 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188326.P15212128451647792245

/-! ## A188326.P7623535497134803941

`record[A188333(A000096(A002260(n+1)))]`
-/

namespace A188326.P7623535497134803941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188326.P7623535497134803941

/-!
# A188327: Number of nondecreasing arrangements of n nonzero numbers in -(n+1)..(n+1) with sum zero.

The programs for A188327, there is no canonical definition to state claims against.
-/

/-! ## A188327.P240227838621880814

`2*A188205(n+1)-A039744(n+2)`
-/

namespace A188327.P240227838621880814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188205 (n + 1) - A039744 (n + 2)

end

end A188327.P240227838621880814

/-! ## A188327.P15168736129745669571

`A188205(n+1)-A188206(A028310(n))`
-/

namespace A188327.P15168736129745669571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188205 (n + 1) - A188206 (A028310 n).toNat

end

end A188327.P15168736129745669571

/-! ## A188327.P9934339624464171336

`A188333(∑[n+3]+1)`
-/

namespace A188327.P9934339624464171336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188327.P9934339624464171336

/-! ## A188327.P5707223630809240220

`A188205(n+1)-A183917(A080476(2*n+1))`
-/

namespace A188327.P5707223630809240220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188205 (n + 1) - A183917 (A080476 (2 * n + 1)).toNat

end

end A188327.P5707223630809240220

/-! ## A188327.P65426349860297649

`A183917(2*(n+1)²)-A183917(A080476(2*n+1))`
-/

namespace A188327.P65426349860297649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 (2 * (n + 1) ^ 2) - A183917 (A080476 (2 * n + 1)).toNat

end

end A188327.P65426349860297649

/-!
# A188328: Number of nondecreasing arrangements of n nonzero numbers in -(n+2)..(n+2) with sum zero.

The programs for A188328, there is no canonical definition to state claims against.
-/

/-! ## A188328.P13952637243286663384

`A188333(A141214(n+1))`
-/

namespace A188328.P13952637243286663384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A141214 (n + 1)).toNat

end

end A188328.P13952637243286663384

/-! ## A188328.P6162736852669231939

`A188333(A027379(n+2))`
-/

namespace A188328.P6162736852669231939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A027379 (n + 2)).toNat

end

end A188328.P6162736852669231939

/-! ## A188328.P7343887307606877625

`A188333(eq[4, A140997(n)])`
-/

namespace A188328.P7343887307606877625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188328.P7343887307606877625

/-! ## A188328.P12452874861868437182

`A188333(A052905(n+1)+2)`
-/

namespace A188328.P12452874861868437182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A052905 (n + 1) + 2).toNat

end

end A188328.P12452874861868437182

/-! ## A188328.P4297714058206939536

`A188333(eq[4, A057728(n+1)])`
-/

namespace A188328.P4297714058206939536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188328.P4297714058206939536

/-!
# A188329: Number of nondecreasing arrangements of n nonzero numbers in -(n+3)..(n+3) with sum zero.

The programs for A188329, there is no canonical definition to state claims against.
-/

/-! ## A188329.P2096151875460964199

`A188333(A046691(n+3))`
-/

namespace A188329.P2096151875460964199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A046691 (n + 3)).toNat

end

end A188329.P2096151875460964199

/-! ## A188329.P3827682692458577674

`A188333(Δ[A023545(n+1)])`
-/

namespace A188329.P3827682692458577674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (f1 (n + 1) - f1 n).toNat

end

end A188329.P3827682692458577674

/-! ## A188329.P13364977408790141111

`A188333(A000217(n+5)-4)`
-/

namespace A188329.P13364977408790141111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A000217 (n + 5) - 4).toNat

end

end A188329.P13364977408790141111

/-! ## A188329.P18097400864606838133

`A188207(n+1)-A188208(A028310(n))`
-/

namespace A188329.P18097400864606838133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188207 (n + 1) - A188208 (A028310 n).toNat

end

end A188329.P18097400864606838133

/-! ## A188329.P13091478131406209519

`A188333(A016789(n+2)+A000217(n+2))`
-/

namespace A188329.P13091478131406209519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A016789 (n + 2) + A000217 (n + 2)).toNat

end

end A188329.P13091478131406209519

/-!
# A188330: Number of nondecreasing arrangements of n nonzero numbers in -(n+4)..(n+4) with sum zero.

The programs for A188330, there is no canonical definition to state claims against.
-/

/-! ## A188330.P4989150068013442474

`A188333(A052905(n+3))`
-/

namespace A188330.P4989150068013442474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A052905 (n + 3)).toNat

end

end A188330.P4989150068013442474

/-! ## A188330.P10693681559669910905

`A188333(A046691(n+4)-1)`
-/

namespace A188330.P10693681559669910905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A046691 (n + 4) - 1).toNat

end

end A188330.P10693681559669910905

/-! ## A188330.P14235857185686621267

`A188333(A000217(n+6)-5)`
-/

namespace A188330.P14235857185686621267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A000217 (n + 6) - 5).toNat

end

end A188330.P14235857185686621267

/-! ## A188330.P1260693750835705638

`A188333(A133263(n+6)-7)`
-/

namespace A188330.P1260693750835705638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A133263 (n + 6) - 7).toNat

end

end A188330.P1260693750835705638

/-! ## A188330.P9440893969782152782

`A188333(Δ[A023545(n+2)]-1)`
-/

namespace A188330.P9440893969782152782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (f1 (n + 1) - f1 n - 1).toNat

end

end A188330.P9440893969782152782

/-!
# A188331: Number of nondecreasing arrangements of n nonzero numbers in -(n+5)..(n+5) with sum zero.

The programs for A188331, there is no canonical definition to state claims against.
-/

/-! ## A188331.P11772393557953135358

`A188209(n+1)-A188210(A028310(n))`
-/

namespace A188331.P11772393557953135358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188209 (n + 1) - A188210 (A028310 n).toNat

end

end A188331.P11772393557953135358

/-! ## A188331.P4035425900665249697

`A188333(A055999(n+4))`
-/

namespace A188331.P4035425900665249697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A055999 (n + 4)).toNat

end

end A188331.P4035425900665249697

/-! ## A188331.P7101903620411873618

`A188333(A000217(n+7)-6)`
-/

namespace A188331.P7101903620411873618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A000217 (n + 7) - 6).toNat

end

end A188331.P7101903620411873618

/-! ## A188331.P2290918452467182844

`A188333(A000124(n+7)-7)`
-/

namespace A188331.P2290918452467182844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A000124 (n + 7) - 7).toNat

end

end A188331.P2290918452467182844

/-! ## A188331.P3703775216262241893

`A188333(A133263(n+6)+n-1)`
-/

namespace A188331.P3703775216262241893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A133263 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A188331.P3703775216262241893

/-!
# A188332: Number of nondecreasing arrangements of n nonzero numbers in -(n+6)..(n+6) with sum zero.

The programs for A188332, there is no canonical definition to state claims against.
-/

/-! ## A188332.P10225112314939866554

`A188333(A000124(n+8)-8)`
-/

namespace A188332.P10225112314939866554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A000124 (n + 8) - 8).toNat

end

end A188332.P10225112314939866554

/-! ## A188332.P10500063478285360665

`A188333(eq[15, A099375(n)]+1)`
-/

namespace A188332.P10500063478285360665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A188332.P10500063478285360665

/-! ## A188332.P13929541345183429797

`A188333(A005408(n)+A167499(n+5)+2)`
-/

namespace A188332.P13929541345183429797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A005408 n + (A167499 (n + 5) + 2)).toNat

end

end A188332.P13929541345183429797

/-! ## A188332.P1037885893183540721

`A188333(A005408(n)+A152947(n+8)+6)`
-/

namespace A188332.P1037885893183540721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A005408 n + (A152947 (n + 8) + 6)).toNat

end

end A188332.P1037885893183540721

/-! ## A188332.P7725064540866387220

`A188333(A005408(n)+A161680(n+7)+7)`
-/

namespace A188332.P7725064540866387220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A005408 n + (A161680 (n + 7) + 7)).toNat

end

end A188332.P7725064540866387220

/-!
# A188333: T(n,k)=Number of nondecreasing arrangements of n nonzero numbers in -(n+k-2)..(n+k-2) with sum zero.

The programs for A188333, there is no canonical definition to state claims against.
-/

/-! ## A188333.P8987670804848810723

`Δ[A188211(A028310(n))]%A188211(n+1)`
-/

namespace A188333.P8987670804848810723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188211 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A188211 (n + 1))

end

end A188333.P8987670804848810723

/-! ## A188333.P11709821679031644182

`A265648(A156953(n))+A205341(n+1)`
-/

namespace A188333.P11709821679031644182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265648 (A156953 n).toNat + A205341 (n + 1)

end

end A188333.P11709821679031644182

/-! ## A188333.P15801409337518890644

`A334361(A108767(n+1))+A265648(A156953(n))`
-/

namespace A188333.P15801409337518890644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334361 (A108767 (n + 1)).toNat + A265648 (A156953 n).toNat

end

end A188333.P15801409337518890644

/-! ## A188333.P5972414916839435203

`A346705(A166350(n+1))+A334361(A108767(n+1))`
-/

namespace A188333.P5972414916839435203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346705 (A166350 (n + 1)).toNat + A334361 (A108767 (n + 1)).toNat

end

end A188333.P5972414916839435203

/-! ## A188333.P5160153827484288791

`A124736(A294811(n))*A172236(n+1)`
-/

namespace A188333.P5160153827484288791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124736 (A294811 n).toNat * A172236 (n + 1)

end

end A188333.P5160153827484288791

/-!
# A188334: Number of nondecreasing arrangements of 4 nonzero numbers in -(n+2)..(n+2) with sum zero.

The programs for A188334, the canonical program `A188334.P22450946842164204` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188334 has offset 1).

The definition of A188334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188334.P22450946842164204

`round(floor((2*n+7)^3/3)/12)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188334

/-- `round(floor((2*n+7)^3/3)/12)` -/
def P22450946842164204.Spec : Prop :=
  ∀ n, P22450946842164204.a n = A188334 (n + 1)

theorem P22450946842164204.correct : P22450946842164204.Spec := by
  intro n
  simp only [A188334, Nat.add_sub_cancel]

end A188334

/-! ## A188334.P14655072941094469952

`2*a(n-1)-a(n-3)-a(n-4)+2*a(n-6)-a(n-7)` with `a(0)=10, a(1)=20, a(2)=37, a(3)=61, a(4)=94, a(5)=136, a(6)=191`
-/

namespace A188334.P14655072941094469952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 20, 37, 61, 94, 136, 191] fun n a =>
  2 * a (n - 1) - a (n - 3) - a (n - 4) + 2 * a (n - 6) - a (n - 7)

end

end A188334.P14655072941094469952

namespace A188334

/-- `2*a(n-1)-a(n-3)-a(n-4)+2*a(n-6)-a(n-7)` -/
def P14655072941094469952.Spec : Prop :=
  ∀ n, P14655072941094469952.a n = A188334 (n + 1)

end A188334

/-! ## A188334.P5295077806222326972

`A092498(n+2)-Δ[A014126(n)]`
-/

namespace A188334.P5295077806222326972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092498 (n + 2) - (f1 (n + 1) - f1 n)

end

end A188334.P5295077806222326972

namespace A188334

/-- `A092498(n+2)-Δ[A014126(n)]` -/
def P5295077806222326972.Spec : Prop :=
  ∀ n, P5295077806222326972.a n = A188334 (n + 1)

end A188334

/-! ## A188334.P3216136561773139616

`A092498(n+2)-A156040(n+1)`
-/

namespace A188334.P3216136561773139616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092498 (n + 2) - A156040 (n + 1)

end

end A188334.P3216136561773139616

namespace A188334

/-- `A092498(n+2)-A156040(n+1)` -/
def P3216136561773139616.Spec : Prop :=
  ∀ n, P3216136561773139616.a n = A188334 (n + 1)

end A188334

/-! ## A188334.P2621424398927132605

`A188182(n+1)+A000982(n+3)`
-/

namespace A188334.P2621424398927132605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188182 (n + 1) + A000982 (n + 3)

end

end A188334.P2621424398927132605

namespace A188334

/-- `A188182(n+1)+A000982(n+3)` -/
def P2621424398927132605.Spec : Prop :=
  ∀ n, P2621424398927132605.a n = A188334 (n + 1)

end A188334

/-! ## A188334.P12690993542736496872

`A188212(n+1)-A000982(n+4)`
-/

namespace A188334.P12690993542736496872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188212 (n + 1) - A000982 (n + 4)

end

end A188334.P12690993542736496872

namespace A188334

/-- `A188212(n+1)-A000982(n+4)` -/
def P12690993542736496872.Spec : Prop :=
  ∀ n, P12690993542736496872.a n = A188334 (n + 1)

end A188334

/-! ## A188334.P14897986435649813118

`A001973(2*n+3)+A000982(n+3)`
-/

namespace A188334.P14897986435649813118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001973 (2 * n + 3) + A000982 (n + 3)

end

end A188334.P14897986435649813118

namespace A188334

/-- `A001973(2*n+3)+A000982(n+3)` -/
def P14897986435649813118.Spec : Prop :=
  ∀ n, P14897986435649813118.a n = A188334 (n + 1)

end A188334

/-! ## A188334.P11045674778974605014

`A309712(4*n+13)`
-/

namespace A188334.P11045674778974605014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309712 (4 * n + 13)

end

end A188334.P11045674778974605014

namespace A188334

/-- `A309712(4*n+13)` -/
def P11045674778974605014.Spec : Prop :=
  ∀ n, P11045674778974605014.a n = A188334 (n + 1)

end A188334

/-! ## A188334.P7448822366538118094

`A026928(4*(n+3)+1)`
-/

namespace A188334.P7448822366538118094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026928 (4 * (n + 3) + 1)

end

end A188334.P7448822366538118094

namespace A188334

/-- `A026928(4*(n+3)+1)` -/
def P7448822366538118094.Spec : Prop :=
  ∀ n, P7448822366538118094.a n = A188334 (n + 1)

end A188334

/-!
# A188335: Number of nondecreasing arrangements of 5 nonzero numbers in -(n+3)..(n+3) with sum zero.

The programs for A188335, there is no canonical definition to state claims against.
-/

/-! ## A188335.P15907585808032836797

`A188238(n+1)-A188212(n+1)`
-/

namespace A188335.P15907585808032836797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188238 (n + 1) - A188212 (n + 1)

end

end A188335.P15907585808032836797

/-! ## A188335.P12044878316551291872

`A188183(n+3)-A188212(n+2)`
-/

namespace A188335.P12044878316551291872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188183 (n + 3) - A188212 (n + 2)

end

end A188335.P12044878316551291872

/-! ## A188335.P5492625571358537262

`A188238(n+1)-A001973(Δ[A028557(n)])`
-/

namespace A188335.P5492625571358537262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188238 (n + 1) - A001973 (f1 (n + 1) - f1 n).toNat

end

end A188335.P5492625571358537262

/-! ## A188335.P4807846263639291248

`A188238(n+1)-A001973(Δ[A082111(n)])`
-/

namespace A188335.P4807846263639291248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188238 (n + 1) - A001973 (f1 (n + 1) - f1 n).toNat

end

end A188335.P4807846263639291248

/-! ## A188335.P8699989626142053773

`A188238(n+1)-A001973(A103517(n+2))`
-/

namespace A188335.P8699989626142053773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188238 (n + 1) - A001973 (A103517 (n + 2)).toNat

end

end A188335.P8699989626142053773

/-! ## A188335.P11031878973084034253

`A001975(2*(n+4))-A001973(2*(n+4))`
-/

namespace A188335.P11031878973084034253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001975 (2 * (n + 4)) - A001973 (2 * (n + 4))

end

end A188335.P11031878973084034253

/-!
# A188336: Number of nondecreasing arrangements of 6 nonzero numbers in -(n+4)..(n+4) with sum zero.

The programs for A188336, there is no canonical definition to state claims against.
-/

/-! ## A188336.P11928799988795366266

`A188213(n+1)-A188183(n+4)`
-/

namespace A188336.P11928799988795366266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188213 (n + 1) - A188183 (n + 4)

end

end A188336.P11928799988795366266

/-! ## A188336.P8753428168368089876

`record[A001977(n+10)-A201501(n+10)]`
-/

namespace A188336.P8753428168368089876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001977 (n + 10) - A201501 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188336.P8753428168368089876

/-! ## A188336.P11933116023593541498

`A188333(A167499(n+4)+1)`
-/

namespace A188336.P11933116023593541498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A167499 (n + 4) + 1).toNat

end

end A188336.P11933116023593541498

/-! ## A188336.P13615080439385986094

`A188333(A000217(n+5)+6)`
-/

namespace A188336.P13615080439385986094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A000217 (n + 5) + 6).toNat

end

end A188336.P13615080439385986094

/-! ## A188336.P11040533319185746985

`A188333(A046691(n+3)+10)`
-/

namespace A188336.P11040533319185746985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A046691 (n + 3) + 10).toNat

end

end A188336.P11040533319185746985

/-!
# A188337: Number of nondecreasing arrangements of 7 nonzero numbers in -(n+5)..(n+5) with sum zero.

The programs for A188337, there is no canonical definition to state claims against.
-/

/-! ## A188337.P187540968997045562

`A188333(A133263(n+6)+5)`
-/

namespace A188337.P187540968997045562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A133263 (n + 6) + 5).toNat

end

end A188337.P187540968997045562

/-! ## A188337.P10248254048916274209

`A188333(A000217(n+6)+7)`
-/

namespace A188337.P10248254048916274209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A000217 (n + 6) + 7).toNat

end

end A188337.P10248254048916274209

/-! ## A188337.P6202113926502224975

`A188333(A161680(n+7)+7)`
-/

namespace A188337.P6202113926502224975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A161680 (n + 7) + 7).toNat

end

end A188337.P6202113926502224975

/-! ## A188337.P1709031174366885809

`A188333(A052905(n+3)+12)`
-/

namespace A188337.P1709031174366885809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A052905 (n + 3) + 12).toNat

end

end A188337.P1709031174366885809

/-! ## A188337.P17951502106491470884

`A188333(A000124(n+7)-(n+1))`
-/

namespace A188337.P17951502106491470884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A188337.P17951502106491470884

/-!
# A188338: Number of nondecreasing arrangements of 8 nonzero numbers in -(n+6)..(n+6) with sum zero.

The programs for A188338, there is no canonical definition to state claims against.
-/

/-! ## A188338.P10414524580322934283

`A188214(n+1)-A188185(n+5)`
-/

namespace A188338.P10414524580322934283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188214 (n + 1) - A188185 (n + 5)

end

end A188338.P10414524580322934283

/-! ## A188338.P12988729307502573598

`A188333(A167499(n+6)+3)`
-/

namespace A188338.P12988729307502573598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A167499 (n + 6) + 3).toNat

end

end A188338.P12988729307502573598

/-! ## A188338.P11660047711984598121

`A188333(A000124(n+7)+7)`
-/

namespace A188338.P11660047711984598121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A000124 (n + 7) + 7).toNat

end

end A188338.P11660047711984598121

/-! ## A188338.P16243455862460493210

`A188333(A000217(n+7)+8)`
-/

namespace A188338.P16243455862460493210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A000217 (n + 7) + 8).toNat

end

end A188338.P16243455862460493210

/-! ## A188338.P7551997164418839620

`A188333(A161680(n+8)+8)`
-/

namespace A188338.P7551997164418839620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (A161680 (n + 8) + 8).toNat

end

end A188338.P7551997164418839620

/-!
# A188339: Primes p such that 2^p mod p^2 is prime.

The programs for A188339, there is no canonical definition to state claims against.
-/

/-! ## A188339.P2608105031605518409

`p?[A219219(n+1)]`
-/

namespace A188339.P2608105031605518409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188339.P2608105031605518409

/-! ## A188339.P3108330395456864024

`∩[A219219(n+1), A380468(n+1)]`
-/

namespace A188339.P3108330395456864024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188339.P3108330395456864024

/-! ## A188339.P14176033497548946966

`∩[A000040(n+1), A219219(n+1)]`
-/

namespace A188339.P14176033497548946966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188339.P14176033497548946966

/-! ## A188339.P13741109116948657703

`∩[A006005(n+1), A219219(n+1)]`
-/

namespace A188339.P13741109116948657703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188339.P13741109116948657703

/-! ## A188339.P11074774446751450637

`∩[A008578(n+1), A219219(n+1)]`
-/

namespace A188339.P11074774446751450637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188339.P11074774446751450637

/-! ## A188339.P7444950011320937827

`∩[A033946(n+1), A219219(n+1)]`
-/

namespace A188339.P7444950011320937827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188339.P7444950011320937827

/-! ## A188339.P1566111806740496901

`∩[A045344(n+1), A219219(n+1)]`
-/

namespace A188339.P1566111806740496901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188339.P1566111806740496901

/-! ## A188339.P9831511971582238227

`∩[A046022(n+1), A219219(n+1)]`
-/

namespace A188339.P9831511971582238227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188339.P9831511971582238227

/-! ## A188339.P9418832244102261520

`∩[A051948(n+1), A219219(n+1)]`
-/

namespace A188339.P9418832244102261520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188339.P9418832244102261520

/-! ## A188339.P17933252180315417255

`∩[A053813(n+1), A219219(n+1)]`
-/

namespace A188339.P17933252180315417255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188339.P17933252180315417255

/-! ## A188339.P4405415967100151323

`∩[A062972(n+1), A219219(n+1)]`
-/

namespace A188339.P4405415967100151323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188339.P4405415967100151323

/-! ## A188339.P6056040880854027042

`∩[A064728(n+1), A219219(n+1)]`
-/

namespace A188339.P6056040880854027042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188339.P6056040880854027042

/-! ## A188339.P18436137364779777006

`∩[A065091(n+1), A219219(n+1)]`
-/

namespace A188339.P18436137364779777006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188339.P18436137364779777006

/-! ## A188339.P8050747717491891352

`∩[A066050(n+1), A219219(n+1)]`
-/

namespace A188339.P8050747717491891352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188339.P8050747717491891352

/-! ## A188339.P10846936549117529543

`∩[A067126(n+1), A219219(n+1)]`
-/

namespace A188339.P10846936549117529543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188339.P10846936549117529543

/-! ## A188339.P15155611826938385720

`∩[A083249(n+1), A219219(n+1)]`
-/

namespace A188339.P15155611826938385720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188339.P15155611826938385720

/-! ## A188339.P13140953505145446715

`∩[A093515(n+1), A219219(n+1)]`
-/

namespace A188339.P13140953505145446715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188339.P13140953505145446715

/-! ## A188339.P510717343036711017

`∩[A108719(n+1), A219219(n+1)]`
-/

namespace A188339.P510717343036711017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188339.P510717343036711017

/-! ## A188339.P2731042174464564526

`∩[A138837(n+1), A219219(n+1)]`
-/

namespace A188339.P2731042174464564526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188339.P2731042174464564526

/-! ## A188339.P18023604925064023794

`∩[A140826(n+1), A219219(n+1)]`
-/

namespace A188339.P18023604925064023794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188339.P18023604925064023794

/-!
# A188340: Decimal expansion of 1 - 1/Pi.

The programs for A188340, there is no canonical definition to state claims against.
-/

/-! ## A188340.P3403605377073192842

`9-A049541(n)`
-/

namespace A188340.P3403605377073192842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A049541 n

end

end A188340.P3403605377073192842

/-! ## A188340.P10189930842579537661

`A049541(n)*A062157(2*(n+1))+9`
-/

namespace A188340.P10189930842579537661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049541 n * A062157 (2 * (n + 1)) + 9

end

end A188340.P10189930842579537661

/-! ## A188340.P6803513143661787873

`9-A095710(∑[n+1]+1)`
-/

namespace A188340.P6803513143661787873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A095710 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188340.P6803513143661787873

/-!
# A188341: Numbers having no 0's and not more than one 1 in their representation in base 3.

The programs for A188341, the canonical program `A188341.P7441460803417477000` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188341 has offset 1).

The definition of A188341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188341.P12930407691636242249

`∪[A044966(n+1), A103453(n)]`
-/

namespace A188341.P12930407691636242249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103453 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188341.P12930407691636242249

namespace A188341

/-- `∪[A044966(n+1), A103453(n)]` -/
def P12930407691636242249.Spec : Prop :=
  ∀ n, (P12930407691636242249.a n : ℤ) = A188341 (n + 1)

end A188341

/-! ## A188341.P7441460803417477000

`floor(A044966(n+2)/3)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A188341

/-- `floor(A044966(n+2)/3)` -/
def P7441460803417477000.Spec : Prop :=
  ∀ n, P7441460803417477000.a n = A188341 (n + 1)

theorem P7441460803417477000.correct : P7441460803417477000.Spec := by
  intro n
  simp only [A188341, Nat.add_sub_cancel]

end A188341

/-! ## A188341.P17469543194686106809

`A032924(∑[A155038(n+2)])`
-/

namespace A188341.P17469543194686106809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155038 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A188341.P17469543194686106809

namespace A188341

/-- `A032924(∑[A155038(n+2)])` -/
def P17469543194686106809.Spec : Prop :=
  ∀ n, P17469543194686106809.a n = A188341 (n + 1)

end A188341

/-! ## A188341.P8389886663078327147

`A032924(∑[A057728(n+3)])`
-/

namespace A188341.P8389886663078327147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A188341.P8389886663078327147

namespace A188341

/-- `A032924(∑[A057728(n+3)])` -/
def P8389886663078327147.Spec : Prop :=
  ∀ n, P8389886663078327147.a n = A188341 (n + 1)

end A188341

/-! ## A188341.P1284740039173579505

`record[A032924(n+1)/A069010(n+3)]`
-/

namespace A188341.P1284740039173579505
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032924 (n + 1) : ℚ) / (A069010 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188341.P1284740039173579505

namespace A188341

/-- `record[A032924(n+1)/A069010(n+3)]` -/
def P1284740039173579505.Spec : Prop :=
  ∀ n, P1284740039173579505.a n = (A188341 (n + 1) : ℚ)

end A188341

/-! ## A188341.P6540047061061419999

`∑[A004396(Δ[A309758(n+1)])]`
-/

namespace A188341.P6540047061061419999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309758 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188341.P6540047061061419999

namespace A188341

/-- `∑[A004396(Δ[A309758(n+1)])]` -/
def P6540047061061419999.Spec : Prop :=
  ∀ n, P6540047061061419999.a n = A188341 (n + 1)

end A188341

/-!
# A188342: Smallest odd primitive abundant number (A006038) having n distinct prime factors.

The programs for A188342, there is no canonical definition to state claims against.
-/

/-! ## A188342.P11353138675393676832

`A083873(A191659(n)+5)`
-/

namespace A188342.P11353138675393676832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083873 (A191659 n + 5).toNat

end

end A188342.P11353138675393676832

/-!
# A188343: Number of "ON" cells at n-th stage in simple 2-dimensional cellular automaton (see Comments for precise definition).

The programs for A188343, there is no canonical definition to state claims against.
-/

/-! ## A188343.P3554953213067493355

`or(A160118(n), A202523(A212804(n)))`
-/

namespace A188343.P3554953213067493355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A160118 n) (A202523 ((A212804 n).toNat + 31))

end

end A188343.P3554953213067493355

/-! ## A188343.P17868184964011762665

`or(A151756(A131768(2*n+3)), A160118(n))`
-/

namespace A188343.P17868184964011762665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151756 (A131768 (2 * n + 3)).toNat) (A160118 n)

end

end A188343.P17868184964011762665

/-!
# A188347: Central element of a series of 7 successive nonsquarefree numbers.

The programs for A188347, there is no canonical definition to state claims against.
-/

/-! ## A188347.P13119287431319056971

`A077640(n+1)+3`
-/

namespace A188347.P13119287431319056971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077640 (n + 1) + 3

end

end A188347.P13119287431319056971

/-!
# A188348: Distance between n and the next number with the same number of distinct prime factors.

The programs for A188348, there is no canonical definition to state claims against.
-/

/-! ## A188348.P3857052151364835550

`A165713(n+2)-(n+2)`
-/

namespace A188348.P3857052151364835550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165713 (n + 2) - (n + 2 : ℤ)

end

end A188348.P3857052151364835550

/-! ## A188348.P16157956544504727154

`A289207(A165713(n+2)-n)`
-/

namespace A188348.P16157956544504727154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A165713 (n + 2) - (n : ℤ)).toNat

end

end A188348.P16157956544504727154

/-! ## A188348.P4946950468861453133

`A165713(n+2)%A020725(n+1)`
-/

namespace A188348.P4946950468861453133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165713 (n + 2)) (A020725 (n + 1))

end

end A188348.P4946950468861453133

/-! ## A188348.P4142630565992875842

`(A165713(n+2)+n)%A080513(A016813(n))`
-/

namespace A188348.P4142630565992875842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165713 (n + 2) + (n : ℤ)) (A080513 (A016813 n).toNat)

end

end A188348.P4142630565992875842

/-! ## A188348.P370986072152531739

`A002260(A165713(n+2)+∑[n+1])`
-/

namespace A188348.P370986072152531739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A165713 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A188348.P370986072152531739

/-! ## A188348.P7143465790021859522

`A141539(A165713(n+2)+A000096(n))`
-/

namespace A188348.P7143465790021859522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141539 (A165713 (n + 2) + A000096 n).toNat

end

end A188348.P7143465790021859522

/-! ## A188348.P10095662628008835839

`A002262(A165713(n+2)+A142463(n))`
-/

namespace A188348.P10095662628008835839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A165713 (n + 2) + A142463 n).toNat

end

end A188348.P10095662628008835839

/-!
# A188349: Number of arrangements of n+1 numbers x(i) in -n..n with the sum of x(i)*x(i+1) equal to zero.

The programs for A188349, there is no canonical definition to state claims against.
-/

/-! ## A188349.P15262093077961277506

`A188358(∑[4*n]+1)`
-/

namespace A188349.P15262093077961277506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188349.P15262093077961277506

/-! ## A188349.P4801989806517365756

`or(1, A188358(A001844(n)))`
-/

namespace A188349.P4801989806517365756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A188358 (A001844 n).toNat)

end

end A188349.P4801989806517365756

/-! ## A188349.P89900400060711434

`record[A188358(Δ[A235355(n)])]`
-/

namespace A188349.P89900400060711434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188349.P89900400060711434

/-! ## A188349.P2006668978137404724

`record[A188358(A330613(n+1))]`
-/

namespace A188349.P2006668978137404724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188349.P2006668978137404724

/-! ## A188349.P12578696520910012217

`record[A003982(n)*A188358(n+1)]`
-/

namespace A188349.P12578696520910012217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A188358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188349.P12578696520910012217

/-!
# A188350: Number of arrangements of n+1 numbers x(i) in -1..1 with the sum of x(i)*x(i+1) equal to zero.

The programs for A188350, there is no canonical definition to state claims against.
-/

/-! ## A188350.P16733729073423837421

`A188358(∑[n+1])`
-/

namespace A188350.P16733729073423837421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A188350.P16733729073423837421

/-! ## A188350.P9103160570088847168

`or(1, A188358(A025747(n)))`
-/

namespace A188350.P9103160570088847168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A188358 (A025747 n).toNat)

end

end A188350.P9103160570088847168

/-! ## A188350.P14532477945533258585

`record[A188358(A115017(n+1))]`
-/

namespace A188350.P14532477945533258585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A115017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188350.P14532477945533258585

/-! ## A188350.P10946872723751401629

`record[A188358(A130270(n+1))]`
-/

namespace A188350.P10946872723751401629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A130270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188350.P10946872723751401629

/-! ## A188350.P16542480622115549691

`record[A188358(A158823(n+1))]`
-/

namespace A188350.P16542480622115549691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A158823 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188350.P16542480622115549691

/-!
# A188351: Number of arrangements of n+1 numbers x(i) in -2..2 with the sum of x(i)*x(i+1) equal to zero.

The programs for A188351, there is no canonical definition to state claims against.
-/

/-! ## A188351.P7157098792315743269

`A188358(∑[n+2])`
-/

namespace A188351.P7157098792315743269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A188351.P7157098792315743269

/-! ## A188351.P1464707584196154994

`record[A188358(abs(A201163(n)))]`
-/

namespace A188351.P1464707584196154994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188351.P1464707584196154994

/-! ## A188351.P3029749096655999887

`record[A188358(A198455(n+1))]`
-/

namespace A188351.P3029749096655999887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188351.P3029749096655999887

/-! ## A188351.P6293935629669927141

`or(1, A188358(A000096(n+1)))`
-/

namespace A188351.P6293935629669927141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A188358 (A000096 (n + 1)).toNat)

end

end A188351.P6293935629669927141

/-! ## A188351.P3640617151433690108

`A007318(C(3, n))*A188358(A000096(n+1))`
-/

namespace A188351.P3640617151433690108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A188358 (A000096 (n + 1)).toNat

end

end A188351.P3640617151433690108

/-!
# A188352: Number of arrangements of n+1 numbers x(i) in -3..3 with the sum of x(i)*x(i+1) equal to zero.

The programs for A188352, there is no canonical definition to state claims against.
-/

/-! ## A188352.P10558066513133748527

`A188358(∑[n+3]+1)`
-/

namespace A188352.P10558066513133748527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188352.P10558066513133748527

/-! ## A188352.P637820386985911996

`record[A188358(A198464(n+1))]`
-/

namespace A188352.P637820386985911996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188352.P637820386985911996

/-! ## A188352.P13479712456855253689

`or(1, A188358(A141214(n)+1))`
-/

namespace A188352.P13479712456855253689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A188358 (A141214 n + 1).toNat)

end

end A188352.P13479712456855253689

/-! ## A188352.P17992441748681400967

`or(1, A188358(A034856(n+2)))`
-/

namespace A188352.P17992441748681400967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A188358 (A034856 (n + 2)).toNat)

end

end A188352.P17992441748681400967

/-! ## A188352.P2787753811120736362

`A188358(A000124(n+3)-3)+char[17]`
-/

namespace A188352.P2787753811120736362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A000124 (n + 3) - 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A188352.P2787753811120736362

/-!
# A188353: Number of arrangements of n+1 numbers x(i) in -4..4 with the sum of x(i)*x(i+1) equal to zero.

The programs for A188353, there is no canonical definition to state claims against.
-/

/-! ## A188353.P14026229091795018240

`A188358(∑[n+4]+3)`
-/

namespace A188353.P14026229091795018240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A188353.P14026229091795018240

/-! ## A188353.P15976729397639174395

`record[A188358(A141214(abs(1-n)))]`
-/

namespace A188353.P15976729397639174395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A141214 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188353.P15976729397639174395

/-! ## A188353.P8323118107086655729

`A188358(eq[3, A193592(n)])%A188356(n+1)`
-/

namespace A188353.P8323118107086655729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A188356 (n + 1))

end

end A188353.P8323118107086655729

/-! ## A188353.P15549363445154196931

`A188358(eq[4, A185782(n+1)])%A188356(n+1)`
-/

namespace A188353.P15549363445154196931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A188356 (n + 1))

end

end A188353.P15549363445154196931

/-! ## A188353.P3447402250996137043

`A188358(eq[4, A200370(n+1)])%A188356(n+1)`
-/

namespace A188353.P3447402250996137043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A188356 (n + 1))

end

end A188353.P3447402250996137043

/-!
# A188354: Number of arrangements of n+1 numbers x(i) in -5..5 with the sum of x(i)*x(i+1) equal to zero.

The programs for A188354, there is no canonical definition to state claims against.
-/

/-! ## A188354.P808212761215400103

`A188358(∑[n+5]+6)`
-/

namespace A188354.P808212761215400103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A188354.P808212761215400103

/-! ## A188354.P12838761745057074925

`A359546(n+1)+A188358(A046691(n+3))`
-/

namespace A188354.P12838761745057074925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359546 (n + 1) + A188358 (A046691 (n + 3)).toNat

end

end A188354.P12838761745057074925

/-! ## A188354.P10604522782355345625

`A188358(A046691(n+3))%A002110(n+4)`
-/

namespace A188354.P10604522782355345625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188358 (A046691 (n + 3)).toNat) (A002110 (n + 4))

end

end A188354.P10604522782355345625

/-! ## A188354.P16706623029663284802

`A188358(eq[4, A193592(n)])%A188356(n+1)`
-/

namespace A188354.P16706623029663284802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A188356 (n + 1))

end

end A188354.P16706623029663284802

/-! ## A188354.P9115056434316503796

`A188358(eq[6, A185782(n+1)])%A188356(n+1)`
-/

namespace A188354.P9115056434316503796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A188356 (n + 1))

end

end A188354.P9115056434316503796

/-!
# A188355: Number of arrangements of n+1 numbers x(i) in -6..6 with the sum of x(i)*x(i+1) equal to zero.

The programs for A188355, there is no canonical definition to state claims against.
-/

/-! ## A188355.P16346695137635474627

`A188358(A052905(n+3))`
-/

namespace A188355.P16346695137635474627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A052905 (n + 3)).toNat

end

end A188355.P16346695137635474627

/-! ## A188355.P5198854151953844498

`A188358(eq[3, A219347(n)])`
-/

namespace A188355.P5198854151953844498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188355.P5198854151953844498

/-! ## A188355.P6414250677532225861

`A188358(eq[5, A193592(n)])`
-/

namespace A188355.P6414250677532225861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188355.P6414250677532225861

/-! ## A188355.P1492674823485411595

`A188358(eq[8, A258709(n)])`
-/

namespace A188355.P1492674823485411595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188355.P1492674823485411595

/-! ## A188355.P10153874142560837312

`A188358(A055999(n+3)+1)`
-/

namespace A188355.P10153874142560837312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A055999 (n + 3) + 1).toNat

end

end A188355.P10153874142560837312

/-!
# A188356: Number of arrangements of n+1 numbers x(i) in -7..7 with the sum of x(i)*x(i+1) equal to zero.

The programs for A188356, there is no canonical definition to state claims against.
-/

/-! ## A188356.P13240220560747526900

`A188358(A055999(n+4))`
-/

namespace A188356.P13240220560747526900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A055999 (n + 4)).toNat

end

end A188356.P13240220560747526900

/-! ## A188356.P7354104799549713850

`A188358(eq[4, A219347(n)])`
-/

namespace A188356.P7354104799549713850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188356.P7354104799549713850

/-! ## A188356.P17122922194914360361

`A188358(eq[6, A193592(n)])`
-/

namespace A188356.P17122922194914360361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188356.P17122922194914360361

/-! ## A188356.P483645609591130552

`A188358(eq[7, A200370(n+1)])`
-/

namespace A188356.P483645609591130552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188356.P483645609591130552

/-! ## A188356.P859491651348635025

`A188358(eq[10, A185782(n+1)])`
-/

namespace A188356.P859491651348635025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188356.P859491651348635025

/-!
# A188357: Number of arrangements of n+1 numbers x(i) in -8..8 with the sum of x(i)*x(i+1) equal to zero.

The programs for A188357, there is no canonical definition to state claims against.
-/

/-! ## A188357.P14529284110606079937

`A188358(eq[5, A219347(n)])`
-/

namespace A188357.P14529284110606079937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188357.P14529284110606079937

/-! ## A188357.P14408336555672730580

`A188358(eq[7, A193592(n)])`
-/

namespace A188357.P14408336555672730580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188357.P14408336555672730580

/-! ## A188357.P1332392129760452271

`A188358(A155212(n+4)+1)`
-/

namespace A188357.P1332392129760452271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A155212 (n + 4) + 1).toNat

end

end A188357.P1332392129760452271

/-! ## A188357.P5936920556267404711

`A188358(A056000(n+4)+3)`
-/

namespace A188357.P5936920556267404711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A056000 (n + 4) + 3).toNat

end

end A188357.P5936920556267404711

/-! ## A188357.P17511308611310472891

`A188358(eq[12, A185782(n+1)])`
-/

namespace A188357.P17511308611310472891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188357.P17511308611310472891

/-!
# A188359: Number of arrangements of 4 numbers x(i) in -n..n with the sum of x(i)*x(i+1) equal to zero.

The programs for A188359, there is no canonical definition to state claims against.
-/

/-! ## A188359.P12378168535882960139

`A188358(∑[n+2]+4)`
-/

namespace A188359.P12378168535882960139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188359.P12378168535882960139

/-! ## A188359.P11144519139241976420

`or(1, A188358(A167614(n+1)))`
-/

namespace A188359.P11144519139241976420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A188358 (A167614 (n + 1)).toNat)

end

end A188359.P11144519139241976420

/-! ## A188359.P103273315909608326

`A188358(A167614(n+1))+A025439(n)`
-/

namespace A188359.P103273315909608326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A167614 (n + 1)).toNat + A025439 n

end

end A188359.P103273315909608326

/-! ## A188359.P6844284169178160555

`A188358(A167614(n+1))+A185264(n)`
-/

namespace A188359.P6844284169178160555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A167614 (n + 1)).toNat + A185264 n

end

end A188359.P6844284169178160555

/-! ## A188359.P17505121015947791646

`lcm(A158388(n), A188358(A167614(n+1)))`
-/

namespace A188359.P17505121015947791646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A188358 (A167614 (n + 1)).toNat)

end

end A188359.P17505121015947791646

/-!
# A188360: Number of arrangements of 5 numbers x(i) in -n..n with the sum of x(i)*x(i+1) equal to zero.

The programs for A188360, there is no canonical definition to state claims against.
-/

/-! ## A188360.P3756344095952399300

`A188358(∑[n+3]+7)`
-/

namespace A188360.P3756344095952399300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A188360.P3756344095952399300

/-! ## A188360.P4069503399238531243

`or(1, A188358(A055999(n)+10))`
-/

namespace A188360.P4069503399238531243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A188358 (A055999 n + 10).toNat)

end

end A188360.P4069503399238531243

/-! ## A188360.P13360608116798108490

`or(1, A188358(A167499(n+2)-1))`
-/

namespace A188360.P13360608116798108490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A188358 (A167499 (n + 2) - 1).toNat)

end

end A188360.P13360608116798108490

/-! ## A188360.P10084174246869654871

`A007318(C(2, n))*A188358(A055999(n)+10)`
-/

namespace A188360.P10084174246869654871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A188358 (A055999 n + 10).toNat

end

end A188360.P10084174246869654871

/-! ## A188360.P3376536723451986933

`A007318(C(2, n))*A188358(A167499(n+2)-1)`
-/

namespace A188360.P3376536723451986933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A188358 (A167499 (n + 2) - 1).toNat

end

end A188360.P3376536723451986933

/-!
# A188361: Number of arrangements of 6 numbers x(i) in -n..n with the sum of x(i)*x(i+1) equal to zero.

The programs for A188361, there is no canonical definition to state claims against.
-/

/-! ## A188361.P2885059125689256631

`A188358(A167499(n+3))`
-/

namespace A188361.P2885059125689256631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A167499 (n + 3)).toNat

end

end A188361.P2885059125689256631

/-! ## A188361.P12785656690193898925

`A188358(A155212(n)+13)`
-/

namespace A188361.P12785656690193898925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A155212 n + 13).toNat

end

end A188361.P12785656690193898925

/-! ## A188361.P12537426006081708385

`A188358(A056000(n)+15)`
-/

namespace A188361.P12537426006081708385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A056000 n + 15).toNat

end

end A188361.P12537426006081708385

/-! ## A188361.P18274585406552056639

`A188358(eq[7, A066657(n)])`
-/

namespace A188361.P18274585406552056639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188361.P18274585406552056639

/-! ## A188361.P8075366336680488016

`A188358(A167614(n+3)+2)`
-/

namespace A188361.P8075366336680488016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A167614 (n + 3) + 2).toNat

end

end A188361.P8075366336680488016

/-!
# A188362: Number of arrangements of 7 numbers x(i) in -n..n with the sum of x(i)*x(i+1) equal to zero.

The programs for A188362, there is no canonical definition to state claims against.
-/

/-! ## A188362.P12205022707392722618

`A188358(A166136(n+4))`
-/

namespace A188362.P12205022707392722618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A166136 (n + 4)).toNat

end

end A188362.P12205022707392722618

/-! ## A188362.P4302623912005777626

`A188358(A167499(n+4)+1)`
-/

namespace A188362.P4302623912005777626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A167499 (n + 4) + 1).toNat

end

end A188362.P4302623912005777626

/-! ## A188362.P9415005418678011724

`A188358(A167487(n+4)-1)`
-/

namespace A188362.P9415005418678011724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A167487 (n + 4) - 1).toNat

end

end A188362.P9415005418678011724

/-! ## A188362.P11629317448137784117

`A188358(A167614(n+4)+3)`
-/

namespace A188362.P11629317448137784117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A167614 (n + 4) + 3).toNat

end

end A188362.P11629317448137784117

/-! ## A188362.P539792449202559808

`A188358(A000124(n+5)+5)`
-/

namespace A188362.P539792449202559808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A000124 (n + 5) + 5).toNat

end

end A188362.P539792449202559808

/-!
# A188363: Number of arrangements of 8 numbers x(i) in -n..n with the sum of x(i)*x(i+1) equal to zero.

The programs for A188363, there is no canonical definition to state claims against.
-/

/-! ## A188363.P13322051572510868995

`A188358(C(n+8, 2)-n)`
-/

namespace A188363.P13322051572510868995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (Nat.choose (n + 8) 2 - n)

end

end A188363.P13322051572510868995

/-! ## A188363.P5207007910123309870

`A188358(eq[11, A066657(n)])`
-/

namespace A188363.P5207007910123309870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188363.P5207007910123309870

/-! ## A188363.P7999320506371975668

`A188358(A166136(n+5)+1)`
-/

namespace A188363.P7999320506371975668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A166136 (n + 5) + 1).toNat

end

end A188363.P7999320506371975668

/-! ## A188363.P1976777848007759693

`A188358(A167614(n+5)+4)`
-/

namespace A188363.P1976777848007759693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A167614 (n + 5) + 4).toNat

end

end A188363.P1976777848007759693

/-! ## A188363.P13998522750245654657

`A188358(A133263(n+6)+5)`
-/

namespace A188363.P13998522750245654657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A133263 (n + 6) + 5).toNat

end

end A188363.P13998522750245654657

/-!
# A188364: Number of arrangements of 9 numbers x(i) in -n..n with the sum of x(i)*x(i+1) equal to zero.

The programs for A188364, there is no canonical definition to state claims against.
-/

/-! ## A188364.P9370425252044283099

`A188358(eq[13, A066657(n)])`
-/

namespace A188364.P9370425252044283099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188364.P9370425252044283099

/-! ## A188364.P12723254587115757362

`A188358(A167487(n+6)+1)`
-/

namespace A188364.P12723254587115757362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A167487 (n + 6) + 1).toNat

end

end A188364.P12723254587115757362

/-! ## A188364.P5166433818359767962

`A188358(A000124(n+7)+7)`
-/

namespace A188364.P5166433818359767962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A000124 (n + 7) + 7).toNat

end

end A188364.P5166433818359767962

/-! ## A188364.P4061203139830772065

`A188358(eq[9, A131818(n+1)])`
-/

namespace A188364.P4061203139830772065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188364.P4061203139830772065

/-! ## A188364.P18068144029163367211

`A188358(A000217(n+8)-n)`
-/

namespace A188364.P18068144029163367211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188358 (A000217 (n + 8) - (n : ℤ)).toNat

end

end A188364.P18068144029163367211

/-!
# A188365: a(n) = n! * [x^n] exp((1 - 2*x)/(1 - 3*x + x^2) - 1).

The programs for A188365, there is no canonical definition to state claims against.
-/

/-! ## A188365.P11424970912006853650

`A191275(A191275(n*a(n-1)+1)+1)` with `a(0)=1`
-/

namespace A188365.P11424970912006853650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A191275 (A191275 ((n : ℤ) * a (n - 1) + 1).toNat + 1).toNat

end

end A188365.P11424970912006853650

/-! ## A188365.P17230423632673029852

`or(A143415(n), A341131(A000166(n)))`
-/

namespace A188365.P17230423632673029852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A143415 n) (A341131 ((A000166 n).toNat + 10))

end

end A188365.P17230423632673029852

/-!
# A188367: Values of b such that (c+9b)*prime(n)#-1 is the least prime such that (c+kb)*prime(n)#-1 are all primes for 0 <= k <= 9, or 0 if there is no solution with c+9b < prime(n)#.

The programs for A188367, there is no canonical definition to state claims against.
-/

/-! ## A188367.P11834113592292601999

`A180395(∑{d}[n+1, #]+1)%A180391(n+1)`
-/

namespace A188367.P11834113592292601999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180395 (∑ d ∈ Nat.divisors (f1 n), d + 1)) (A180391 (n + 1))

end

end A188367.P11834113592292601999

/-! ## A188367.P2634256107145014261

`A003378(2*n+1)%A151706(A052721(n))`
-/

namespace A188367.P2634256107145014261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003378 (2 * n + 1)) (A151706 (A052721 n).toNat)

end

end A188367.P2634256107145014261

/-!
# A188368: Number of (n+1) X 3 0..3 arrays with every 2 X 2 subblock sum equal to exactly one or two horizontal and vertical neighbor 2 X 2 subblock sums.

The programs for A188368, there is no canonical definition to state claims against.
-/

/-! ## A188368.P1318518864667815432

`A188370(∑[n+1]+2)`
-/

namespace A188368.P1318518864667815432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188370 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A188368.P1318518864667815432

/-! ## A188368.P751987620419826068

`record[A188370(3*n+2)]`
-/

namespace A188368.P751987620419826068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188370 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188368.P751987620419826068

/-!
# A188369: Number of (n+1) X 4 0..3 arrays with every 2 X 2 subblock sum equal to exactly one or two horizontal and vertical neighbor 2 X 2 subblock sums.

The programs for A188369, there is no canonical definition to state claims against.
-/

/-! ## A188369.P1917933768815392068

`A188370(∑[∑{e}[2*(n+5), #]+2])`
-/

namespace A188369.P1917933768815392068
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188370 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A188369.P1917933768815392068

/-!
# A188371: a(n) = [n*r] - [k*r] - [n*r-k*r], where r=1/sqrt(2), k=6, [ ]=floor.

The programs for A188371, the canonical program `A188371.P14841229343104294779` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188371 has offset 1).

The definition of A188371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188371.P12413614437539120337

`char[A188373(n+1)-1]`
-/

namespace A188371.P12413614437539120337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188373 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188371.P12413614437539120337

namespace A188371

/-- `char[A188373(n+1)-1]` -/
def P12413614437539120337.Spec : Prop :=
  ∀ n, (P12413614437539120337.a n : ℤ) = A188371 (n + 1)

end A188371

/-! ## A188371.P14841229343104294779

`A188321(A188374(n+1)+n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A188371

/-- `A188321(A188374(n+1)+n)` -/
def P14841229343104294779.Spec : Prop :=
  ∀ n, P14841229343104294779.a n = A188371 (n + 1)

theorem P14841229343104294779.correct : P14841229343104294779.Spec := by
  intro n
  simp only [A188371, Nat.add_sub_cancel]

end A188371

/-! ## A188371.P961940088353139025

`A188321(n+1-A188321(n+1))`
-/

namespace A188371.P961940088353139025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188321 ((n + 1 : ℤ) - A188321 (n + 1)).toNat

end

end A188371.P961940088353139025

namespace A188371

/-- `A188321(n+1-A188321(n+1))` -/
def P961940088353139025.Spec : Prop :=
  ∀ n, P961940088353139025.a n = A188371 (n + 1)

end A188371

/-! ## A188371.P10359020082587371420

`char[A001952(n+1)*A188038(n+1)-1]`
-/

namespace A188371.P10359020082587371420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) * A188038 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188371.P10359020082587371420

namespace A188371

/-- `char[A001952(n+1)*A188038(n+1)-1]` -/
def P10359020082587371420.Spec : Prop :=
  ∀ n, (P10359020082587371420.a n : ℤ) = A188371 (n + 1)

end A188371

/-! ## A188371.P2936758961417229042

`A188321(A188321(n+3)+n)`
-/

namespace A188371.P2936758961417229042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188321 (A188321 (n + 3) + (n : ℤ)).toNat

end

end A188371.P2936758961417229042

namespace A188371

/-- `A188321(A188321(n+3)+n)` -/
def P2936758961417229042.Spec : Prop :=
  ∀ n, P2936758961417229042.a n = A188371 (n + 1)

end A188371

/-! ## A188371.P11696908818780909444

`A171588(A184920(A184921(A188376(n+1))))`
-/

namespace A188371.P11696908818780909444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (A184920 (A184921 (A188376 (n + 1)).toNat).toNat).toNat

end

end A188371.P11696908818780909444

namespace A188371

/-- `A171588(A184920(A184921(A188376(n+1))))` -/
def P11696908818780909444.Spec : Prop :=
  ∀ n, P11696908818780909444.a n = A188371 (n + 1)

end A188371

/-! ## A188371.P10762087266034068304

`1-A266282(2*(n+1)²)`
-/

namespace A188371.P10762087266034068304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A266282 (2 * (n + 1) ^ 2)

end

end A188371.P10762087266034068304

namespace A188371

/-- `1-A266282(2*(n+1)²)` -/
def P10762087266034068304.Spec : Prop :=
  ∀ n, P10762087266034068304.a n = A188371 (n + 1)

end A188371

/-! ## A188371.P11789085276121035231

`A144604(A140681(n))`
-/

namespace A188371.P11789085276121035231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144604 (A140681 n).toNat

end

end A188371.P11789085276121035231

namespace A188371

/-- `A144604(A140681(n))` -/
def P11789085276121035231.Spec : Prop :=
  ∀ n, P11789085276121035231.a n = A188371 (n + 1)

end A188371

/-! ## A188371.P16987209920269302369

`A349297(A078370(n+1))`
-/

namespace A188371.P16987209920269302369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349297 (A078370 (n + 1)).toNat

end

end A188371.P16987209920269302369

namespace A188371

/-- `A349297(A078370(n+1))` -/
def P16987209920269302369.Spec : Prop :=
  ∀ n, P16987209920269302369.a n = A188371 (n + 1)

end A188371

/-! ## A188371.P5622864560786936343

`A304571(A111693(n+2))`
-/

namespace A188371.P5622864560786936343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304571 (A111693 (n + 2)).toNat

end

end A188371.P5622864560786936343

namespace A188371

/-- `A304571(A111693(n+2))` -/
def P5622864560786936343.Spec : Prop :=
  ∀ n, P5622864560786936343.a n = A188371 (n + 1)

end A188371

/-!
# A188372: Positions of 0 in A188371; complement of A188373.

The programs for A188372, the canonical program `A188372.P2678500880219119319` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188372 has offset 1).

The definition of A188372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188372.P2678500880219119319

`comp[A001952(n+1)*A188038(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A188372

/-- `comp[A001952(n+1)*A188038(n+1)]` -/
def P2678500880219119319.Spec : Prop :=
  ∀ n, (P2678500880219119319.a n : ℤ) = A188372 (n + 1)

theorem P2678500880219119319.correct : P2678500880219119319.Spec := by
  intro n
  simp only [A188372, Nat.add_sub_cancel]

end A188372

/-! ## A188372.P451154634826227587

`∪[A188322(n+1)+1, A188322(n+1)]`
-/

namespace A188372.P451154634826227587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188322 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188372.P451154634826227587

namespace A188372

/-- `∪[A188322(n+1)+1, A188322(n+1)]` -/
def P451154634826227587.Spec : Prop :=
  ∀ n, (P451154634826227587.a n : ℤ) = A188372 (n + 1)

end A188372

/-! ## A188372.P7623307579663968851

`a(n-1)+A188371(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A188372.P7623307579663968851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A188371 (a (n - 1) + 1).toNat + 1)

end

end A188372.P7623307579663968851

namespace A188372

/-- `a(n-1)+A188371(a(n-1)+1)+1` -/
def P7623307579663968851.Spec : Prop :=
  ∀ n, P7623307579663968851.a n = A188372 (n + 1)

end A188372

/-! ## A188372.P2432474209309541883

`record[A319709(n+1)+A188371(A319709(n+1))]`
-/

namespace A188372.P2432474209309541883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319709 (n + 1) + A188371 (A319709 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188372.P2432474209309541883

namespace A188372

/-- `record[A319709(n+1)+A188371(A319709(n+1))]` -/
def P2432474209309541883.Spec : Prop :=
  ∀ n, P2432474209309541883.a n = A188372 (n + 1)

end A188372

/-! ## A188372.P12922578996448387422

`record[A038722(A038722(n+1)-A188371(n+1))]`
-/

namespace A188372.P12922578996448387422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A038722 (n + 1) - A188371 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188372.P12922578996448387422

namespace A188372

/-- `record[A038722(A038722(n+1)-A188371(n+1))]` -/
def P12922578996448387422.Spec : Prop :=
  ∀ n, P12922578996448387422.a n = A188372 (n + 1)

end A188372

/-! ## A188372.P16510620373395094837

`record[A188371(A026242(n+1))+A026242(n+1)]`
-/

namespace A188372.P16510620373395094837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188371 (A026242 (n + 1)).toNat + A026242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188372.P16510620373395094837

namespace A188372

/-- `record[A188371(A026242(n+1))+A026242(n+1)]` -/
def P16510620373395094837.Spec : Prop :=
  ∀ n, P16510620373395094837.a n = A188372 (n + 1)

end A188372

/-! ## A188372.P18274237294726303371

`record[A188371(A056538(n+1))+A056538(n+1)]`
-/

namespace A188372.P18274237294726303371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188371 (A056538 (n + 1)).toNat + A056538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188372.P18274237294726303371

namespace A188372

/-- `record[A188371(A056538(n+1))+A056538(n+1)]` -/
def P18274237294726303371.Spec : Prop :=
  ∀ n, P18274237294726303371.a n = A188372 (n + 1)

end A188372

/-! ## A188372.P17892233252477768778

`record[(n+1)*A266282(2*(n+1)²)]`
-/

namespace A188372.P17892233252477768778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A266282 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188372.P17892233252477768778

namespace A188372

/-- `record[(n+1)*A266282(2*(n+1)²)]` -/
def P17892233252477768778.Spec : Prop :=
  ∀ n, P17892233252477768778.a n = A188372 (n + 1)

end A188372

/-!
# A188373: Positions of 1 in A188371; complement of A188372.

The programs for A188373, the canonical program `A188373.P2149775903743235880` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188373 has offset 1).

The definition of A188373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188373.P2149775903743235880

`A110654(n)+3*A188040(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A188373

/-- `A110654(n)+3*A188040(n+1)` -/
def P2149775903743235880.Spec : Prop :=
  ∀ n, P2149775903743235880.a n = A188373 (n + 1)

theorem P2149775903743235880.correct : P2149775903743235880.Spec := by
  intro n
  simp only [A188373, Nat.add_sub_cancel]

end A188373

/-! ## A188373.P1243520107994503403

`A001952(A188040(n+1))`
-/

namespace A188373.P1243520107994503403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (A188040 (n + 1)).toNat

end

end A188373.P1243520107994503403

namespace A188373

/-- `A001952(A188040(n+1))` -/
def P1243520107994503403.Spec : Prop :=
  ∀ n, P1243520107994503403.a n = A188373 (n + 1)

end A188373

/-! ## A188373.P11404215935918147805

`record[A001952(n+1)*A188038(n+1)]`
-/

namespace A188373.P11404215935918147805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) * A188038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188373.P11404215935918147805

namespace A188373

/-- `record[A001952(n+1)*A188038(n+1)]` -/
def P11404215935918147805.Spec : Prop :=
  ∀ n, P11404215935918147805.a n = A188373 (n + 1)

end A188373

/-! ## A188373.P17228398751821181509

`A289037(A188040(n+1))+A000035(n)`
-/

namespace A188373.P17228398751821181509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289037 (A188040 (n + 1)).toNat + A000035 n

end

end A188373.P17228398751821181509

namespace A188373

/-- `A289037(A188040(n+1))+A000035(n)` -/
def P17228398751821181509.Spec : Prop :=
  ∀ n, P17228398751821181509.a n = A188373 (n + 1)

end A188373

/-! ## A188373.P347335322082394373

`A001952(A049474(A049474(n)+1+n))`
-/

namespace A188373.P347335322082394373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (A049474 (A049474 n + 1 + (n : ℤ)).toNat).toNat

end

end A188373.P347335322082394373

namespace A188373

/-- `A001952(A049474(A049474(n)+1+n))` -/
def P347335322082394373.Spec : Prop :=
  ∀ n, P347335322082394373.a n = A188373 (n + 1)

end A188373

/-! ## A188373.P6550369895628635506

`A188323(A188040(n+1)+1+n)`
-/

namespace A188373.P6550369895628635506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188323 (A188040 (n + 1) + 1 + (n : ℤ)).toNat

end

end A188373.P6550369895628635506

namespace A188373

/-- `A188323(A188040(n+1)+1+n)` -/
def P6550369895628635506.Spec : Prop :=
  ∀ n, P6550369895628635506.a n = A188373 (n + 1)

end A188373

/-! ## A188373.P4282884077647133673

`∩[A188323(n+1)+1, A188323(n+1)]`
-/

namespace A188373.P4282884077647133673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188323 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188373.P4282884077647133673

namespace A188373

/-- `∩[A188323(n+1)+1, A188323(n+1)]` -/
def P4282884077647133673.Spec : Prop :=
  ∀ n, (P4282884077647133673.a n : ℤ) = A188373 (n + 1)

end A188373

/-! ## A188373.P10725647398904549286

`A003152(2*A188040(n+1))`
-/

namespace A188373.P10725647398904549286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (2 * A188040 (n + 1)).toNat

end

end A188373.P10725647398904549286

namespace A188373

/-- `A003152(2*A188040(n+1))` -/
def P10725647398904549286.Spec : Prop :=
  ∀ n, P10725647398904549286.a n = A188373 (n + 1)

end A188373

/-! ## A188373.P3327525065944297756

`A003152(2*∪[A003152(n+1), A285078(n+1)])`
-/

namespace A188373.P3327525065944297756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A188373.P3327525065944297756

namespace A188373

/-- `A003152(2*∪[A003152(n+1), A285078(n+1)])` -/
def P3327525065944297756.Spec : Prop :=
  ∀ n, P3327525065944297756.a n = A188373 (n + 1)

end A188373

/-! ## A188373.P16717956110781040861

`∩[A188046(n+1)+2, A188299(n+1)]`
-/

namespace A188373.P16717956110781040861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188046 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188373.P16717956110781040861

namespace A188373

/-- `∩[A188046(n+1)+2, A188299(n+1)]` -/
def P16717956110781040861.Spec : Prop :=
  ∀ n, (P16717956110781040861.a n : ℤ) = A188373 (n + 1)

end A188373

/-! ## A188373.P901958070732892137

`filter[n+1, A188371(#)]`
-/

namespace A188373.P901958070732892137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188371 (f1 j) = 1) n)

end

end A188373.P901958070732892137

namespace A188373

/-- `filter[n+1, A188371(#)]` -/
def P901958070732892137.Spec : Prop :=
  ∀ n, (P901958070732892137.a n : ℤ) = A188373 (n + 1)

end A188373

/-! ## A188373.P7736831565091959907

`eq[n+1, (n+1)*A188371(n+1)]+1`
-/

namespace A188373.P7736831565091959907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A188371 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A188373.P7736831565091959907

namespace A188373

/-- `eq[n+1, (n+1)*A188371(n+1)]+1` -/
def P7736831565091959907.Spec : Prop :=
  ∀ n, (P7736831565091959907.a n : ℤ) = A188373 (n + 1)

end A188373

/-!
# A188374: [nr+kr]-[nr]-[kr], where r=1/sqrt(2), k=2, [ ]=floor.

The programs for A188374, the canonical program `A188374.P8612799017787756249` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188374 has offset 1).

The definition of A188374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188374.P14573321967226988765

`char[A188376(n+1)-1]`
-/

namespace A188374.P14573321967226988765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188374.P14573321967226988765

namespace A188374

/-- `char[A188376(n+1)-1]` -/
def P14573321967226988765.Spec : Prop :=
  ∀ n, (P14573321967226988765.a n : ℤ) = A188374 (n + 1)

end A188374

/-! ## A188374.P8612799017787756249

`A080764(a(n-1)+n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A188374

/-- `A080764(a(n-1)+n)` -/
def P8612799017787756249.Spec : Prop :=
  ∀ n, P8612799017787756249.a n = A188374 (n + 1)

theorem P8612799017787756249.correct : P8612799017787756249.Spec := by
  intro n
  simp only [A188374, Nat.add_sub_cancel]

end A188374

/-! ## A188374.P9416147882744267224

`A080764(A080764(n)+n)`
-/

namespace A188374.P9416147882744267224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 (A080764 n + (n : ℤ)).toNat

end

end A188374.P9416147882744267224

namespace A188374

/-- `A080764(A080764(n)+n)` -/
def P9416147882744267224.Spec : Prop :=
  ∀ n, P9416147882744267224.a n = A188374 (n + 1)

end A188374

/-! ## A188374.P15783781289692494747

`2-A006337(∑[A080764(n)])`
-/

namespace A188374.P15783781289692494747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A006337 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A188374.P15783781289692494747

namespace A188374

/-- `2-A006337(∑[A080764(n)])` -/
def P15783781289692494747.Spec : Prop :=
  ∀ n, P15783781289692494747.a n = A188374 (n + 1)

end A188374

/-! ## A188374.P20585532390525217

`and(A187967(n+1), A258833(n))`
-/

namespace A188374.P20585532390525217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A187967 (n + 1)) (A258833 n)

end

end A188374.P20585532390525217

namespace A188374

/-- `and(A187967(n+1), A258833(n))` -/
def P20585532390525217.Spec : Prop :=
  ∀ n, P20585532390525217.a n = A188374 (n + 1)

end A188374

/-! ## A188374.P13108963317045618869

`char[A001951(n)-Δ[A001951(n)]]`
-/

namespace A188374.P13108963317045618869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n - (f2 (n + 1) - f2 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188374.P13108963317045618869

namespace A188374

/-- `char[A001951(n)-Δ[A001951(n)]]` -/
def P13108963317045618869.Spec : Prop :=
  ∀ n, (P13108963317045618869.a n : ℤ) = A188374 (n + 1)

end A188374

/-! ## A188374.P8543538839678990925

`A083035(n+1)*A187967(n+1)`
-/

namespace A188374.P8543538839678990925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (n + 1) * A187967 (n + 1)

end

end A188374.P8543538839678990925

namespace A188374

/-- `A083035(n+1)*A187967(n+1)` -/
def P8543538839678990925.Spec : Prop :=
  ∀ n, P8543538839678990925.a n = A188374 (n + 1)

end A188374

/-! ## A188374.P14202288832235393221

`and(A007071(n+1), A083035(n+1))`
-/

namespace A188374.P14202288832235393221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007071 (n + 1)) (A083035 (n + 1))

end

end A188374.P14202288832235393221

namespace A188374

/-- `and(A007071(n+1), A083035(n+1))` -/
def P14202288832235393221.Spec : Prop :=
  ∀ n, P14202288832235393221.a n = A188374 (n + 1)

end A188374

/-! ## A188374.P7423250620540432784

`and(A001952(n+1), A187967(n+1))`
-/

namespace A188374.P7423250620540432784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001952 (n + 1)) (A187967 (n + 1))

end

end A188374.P7423250620540432784

namespace A188374

/-- `and(A001952(n+1), A187967(n+1))` -/
def P7423250620540432784.Spec : Prop :=
  ∀ n, P7423250620540432784.a n = A188374 (n + 1)

end A188374

/-! ## A188374.P8796131879703620516

`and(A007071(n+1), A188398(n+1))`
-/

namespace A188374.P8796131879703620516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007071 (n + 1)) (A188398 (n + 1))

end

end A188374.P8796131879703620516

namespace A188374

/-- `and(A007071(n+1), A188398(n+1))` -/
def P8796131879703620516.Spec : Prop :=
  ∀ n, P8796131879703620516.a n = A188374 (n + 1)

end A188374

/-! ## A188374.P15503623904504478946

`and(A087055(n+1), A187967(n+1))`
-/

namespace A188374.P15503623904504478946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087055 (n + 1)) (A187967 (n + 1))

end

end A188374.P15503623904504478946

namespace A188374

/-- `and(A087055(n+1), A187967(n+1))` -/
def P15503623904504478946.Spec : Prop :=
  ∀ n, P15503623904504478946.a n = A188374 (n + 1)

end A188374

/-! ## A188374.P460337960334335849

`and(A087056(n+1), A187967(n+1))`
-/

namespace A188374.P460337960334335849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087056 (n + 1)) (A187967 (n + 1))

end

end A188374.P460337960334335849

namespace A188374

/-- `and(A087056(n+1), A187967(n+1))` -/
def P460337960334335849.Spec : Prop :=
  ∀ n, P460337960334335849.a n = A188374 (n + 1)

end A188374

/-! ## A188374.P456049432501020007

`and(A083035(n+1), A286803(n+1))`
-/

namespace A188374.P456049432501020007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083035 (n + 1)) (A286803 (n + 1))

end

end A188374.P456049432501020007

namespace A188374

/-- `and(A083035(n+1), A286803(n+1))` -/
def P456049432501020007.Spec : Prop :=
  ∀ n, P456049432501020007.a n = A188374 (n + 1)

end A188374

/-! ## A188374.P14018257478047279551

`and(A083035(n+1), A288998(n+1))`
-/

namespace A188374.P14018257478047279551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083035 (n + 1)) (A288998 (n + 1))

end

end A188374.P14018257478047279551

namespace A188374

/-- `and(A083035(n+1), A288998(n+1))` -/
def P14018257478047279551.Spec : Prop :=
  ∀ n, P14018257478047279551.a n = A188374 (n + 1)

end A188374

/-! ## A188374.P6127121924411282692

`and(A187967(n+1), A188383(n+1))`
-/

namespace A188374.P6127121924411282692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A187967 (n + 1)) (A188383 (n + 1))

end

end A188374.P6127121924411282692

namespace A188374

/-- `and(A187967(n+1), A188383(n+1))` -/
def P6127121924411282692.Spec : Prop :=
  ∀ n, P6127121924411282692.a n = A188374 (n + 1)

end A188374

/-! ## A188374.P15570513014405963269

`and(A187967(n+1), A286803(n+1))`
-/

namespace A188374.P15570513014405963269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A187967 (n + 1)) (A286803 (n + 1))

end

end A188374.P15570513014405963269

namespace A188374

/-- `and(A187967(n+1), A286803(n+1))` -/
def P15570513014405963269.Spec : Prop :=
  ∀ n, P15570513014405963269.a n = A188374 (n + 1)

end A188374

/-! ## A188374.P14483993167055212596

`val(Δ[A286686(n+1)], 2)`
-/

namespace A188374.P14483993167055212596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286686 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A188374.P14483993167055212596

namespace A188374

/-- `val(Δ[A286686(n+1)], 2)` -/
def P14483993167055212596.Spec : Prop :=
  ∀ n, (P14483993167055212596.a n : ℤ) = A188374 (n + 1)

end A188374

/-! ## A188374.P17109085153608296163

`A144611(A049472(n+2))`
-/

namespace A188374.P17109085153608296163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 (A049472 (n + 2)).toNat

end

end A188374.P17109085153608296163

namespace A188374

/-- `A144611(A049472(n+2))` -/
def P17109085153608296163.Spec : Prop :=
  ∀ n, P17109085153608296163.a n = A188374 (n + 1)

end A188374

/-! ## A188374.P14946791179642458139

`A219200(Δ[A286687(n+1)]²)`
-/

namespace A188374.P14946791179642458139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219200 (((f1 (n + 1) - f1 n) ^ 2).toNat + 41)

end

end A188374.P14946791179642458139

namespace A188374

/-- `A219200(Δ[A286687(n+1)]²)` -/
def P14946791179642458139.Spec : Prop :=
  ∀ n, P14946791179642458139.a n = A188374 (n + 1)

end A188374

/-! ## A188374.P11647741684206782784

`A219200(Δ[A286687(n+1)]+2)`
-/

namespace A188374.P11647741684206782784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219200 ((f1 (n + 1) - f1 n + 2).toNat + 41)

end

end A188374.P11647741684206782784

namespace A188374

/-- `A219200(Δ[A286687(n+1)]+2)` -/
def P11647741684206782784.Spec : Prop :=
  ∀ n, P11647741684206782784.a n = A188374 (n + 1)

end A188374

/-!
# A188375: Positions of 0 in A188374; complement of A188376.

The programs for A188375, the canonical program `A188375.P6173527389077920320` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188375 has offset 1).

The definition of A188375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188375.P17094657694656361328

`floor(∑[sqrt(2*(n+1)%2)+1])`
-/

namespace A188375.P17094657694656361328
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((2 * ((n + 1) % 2) : ℕ) : ℝ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A188375.P17094657694656361328

namespace A188375

/-- `floor(∑[sqrt(2*(n+1)%2)+1])` -/
def P17094657694656361328.Spec : Prop :=
  ∀ n, P17094657694656361328.a n = A188375 (n + 1)

end A188375

/-! ## A188375.P13834574437603303402

`ceil((floor(n/2)+1)*sqrt(2)+n)`
-/

namespace A188375.P13834574437603303402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊(n : ℚ) / 2⌋ + 1 : ℝ) * Real.sqrt (2 : ℝ) + (n : ℝ)⌉

end

end A188375.P13834574437603303402

namespace A188375

/-- `ceil((floor(n/2)+1)*sqrt(2)+n)` -/
def P13834574437603303402.Spec : Prop :=
  ∀ n, P13834574437603303402.a n = A188375 (n + 1)

end A188375

/-! ## A188375.P15737626458891853767

`comp[2*A049472(n)+n]`
-/

namespace A188375.P15737626458891853767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049472 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188375.P15737626458891853767

namespace A188375

/-- `comp[2*A049472(n)+n]` -/
def P15737626458891853767.Spec : Prop :=
  ∀ n, (P15737626458891853767.a n : ℤ) = A188375 (n + 1)

end A188375

/-! ## A188375.P2800748525551091888

`comp[A188376(n+1)-1]+1`
-/

namespace A188375.P2800748525551091888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188375.P2800748525551091888

namespace A188375

/-- `comp[A188376(n+1)-1]+1` -/
def P2800748525551091888.Spec : Prop :=
  ∀ n, (P2800748525551091888.a n : ℤ) = A188375 (n + 1)

end A188375

/-! ## A188375.P6173527389077920320

`A087057(floor(n/2)+1)+n`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A188375

/-- `A087057(floor(n/2)+1)+n` -/
def P6173527389077920320.Spec : Prop :=
  ∀ n, P6173527389077920320.a n = A188375 (n + 1)

theorem P6173527389077920320.correct : P6173527389077920320.Spec := by
  intro n
  simp only [A188375, Nat.add_sub_cancel]

end A188375

/-! ## A188375.P1532312098173253941

`A001951(∑[(n+1)%2])+1+n`
-/

namespace A188375.P1532312098173253941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 + (n : ℤ)

end

end A188375.P1532312098173253941

namespace A188375

/-- `A001951(∑[(n+1)%2])+1+n` -/
def P1532312098173253941.Spec : Prop :=
  ∀ n, P1532312098173253941.a n = A188375 (n + 1)

end A188375

/-! ## A188375.P17416768621295973024

`A001951(∑[gcd(2, n)-1])+n+1`
-/

namespace A188375.P17416768621295973024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n + 1 : ℤ)

end

end A188375.P17416768621295973024

namespace A188375

/-- `A001951(∑[gcd(2, n)-1])+n+1` -/
def P17416768621295973024.Spec : Prop :=
  ∀ n, P17416768621295973024.a n = A188375 (n + 1)

end A188375

/-! ## A188375.P6501328390936872908

`A001951(∑[and(1, n+1)])+n+1`
-/

namespace A188375.P6501328390936872908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A188375.P6501328390936872908

namespace A188375

/-- `A001951(∑[and(1, n+1)])+n+1` -/
def P6501328390936872908.Spec : Prop :=
  ∀ n, P6501328390936872908.a n = A188375 (n + 1)

end A188375

/-! ## A188375.P9431660460121465784

`A001951(A008619(n))+n+1`
-/

namespace A188375.P9431660460121465784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A008619 n).toNat + (n + 1 : ℤ)

end

end A188375.P9431660460121465784

namespace A188375

/-- `A001951(A008619(n))+n+1` -/
def P9431660460121465784.Spec : Prop :=
  ∀ n, P9431660460121465784.a n = A188375 (n + 1)

end A188375

/-! ## A188375.P4651779171689007895

`A187968(n+1)+A008619(n)`
-/

namespace A188375.P4651779171689007895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187968 (n + 1) + A008619 n

end

end A188375.P4651779171689007895

namespace A188375

/-- `A187968(n+1)+A008619(n)` -/
def P4651779171689007895.Spec : Prop :=
  ∀ n, P4651779171689007895.a n = A188375 (n + 1)

end A188375

/-! ## A188375.P9081201736764977027

`A286904(n+1)-A008619(n)`
-/

namespace A188375.P9081201736764977027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286904 (n + 1) - A008619 n

end

end A188375.P9081201736764977027

namespace A188375

/-- `A286904(n+1)-A008619(n)` -/
def P9081201736764977027.Spec : Prop :=
  ∀ n, P9081201736764977027.a n = A188375 (n + 1)

end A188375

/-! ## A188375.P10067077402571732585

`A049474(2*A008619(n))+n`
-/

namespace A188375.P10067077402571732585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (2 * A008619 n).toNat + (n : ℤ)

end

end A188375.P10067077402571732585

namespace A188375

/-- `A049474(2*A008619(n))+n` -/
def P10067077402571732585.Spec : Prop :=
  ∀ n, P10067077402571732585.a n = A188375 (n + 1)

end A188375

/-! ## A188375.P8457025632417558189

`A001951(A004526(n)+1)+n+1`
-/

namespace A188375.P8457025632417558189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A004526 n + 1).toNat + (n + 1 : ℤ)

end

end A188375.P8457025632417558189

namespace A188375

/-- `A001951(A004526(n)+1)+n+1` -/
def P8457025632417558189.Spec : Prop :=
  ∀ n, P8457025632417558189.a n = A188375 (n + 1)

end A188375

/-! ## A188375.P7739879284207486289

`A187973(n+1)-A187968(n+1)`
-/

namespace A188375.P7739879284207486289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187973 (n + 1) - A187968 (n + 1)

end

end A188375.P7739879284207486289

namespace A188375

/-- `A187973(n+1)-A187968(n+1)` -/
def P7739879284207486289.Spec : Prop :=
  ∀ n, P7739879284207486289.a n = A188375 (n + 1)

end A188375

/-! ## A188375.P14272809201571827499

`∪[A001952(n+1), A184922(n+1)]`
-/

namespace A188375.P14272809201571827499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188375.P14272809201571827499

namespace A188375

/-- `∪[A001952(n+1), A184922(n+1)]` -/
def P14272809201571827499.Spec : Prop :=
  ∀ n, (P14272809201571827499.a n : ℤ) = A188375 (n + 1)

end A188375

/-! ## A188375.P9749897804928255197

`∪[A098021(n+1), A120752(n+1)]`
-/

namespace A188375.P9749897804928255197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188375.P9749897804928255197

namespace A188375

/-- `∪[A098021(n+1), A120752(n+1)]` -/
def P9749897804928255197.Spec : Prop :=
  ∀ n, (P9749897804928255197.a n : ℤ) = A188375 (n + 1)

end A188375

/-! ## A188375.P2528975641004504139

`∪[A098021(n+1), A188323(n+1)]`
-/

namespace A188375.P2528975641004504139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188375.P2528975641004504139

namespace A188375

/-- `∪[A098021(n+1), A188323(n+1)]` -/
def P2528975641004504139.Spec : Prop :=
  ∀ n, (P2528975641004504139.a n : ℤ) = A188375 (n + 1)

end A188375

/-! ## A188375.P4300511628392188915

`∪[A120752(n+1), A184922(n+1)]`
-/

namespace A188375.P4300511628392188915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188375.P4300511628392188915

namespace A188375

/-- `∪[A120752(n+1), A184922(n+1)]` -/
def P4300511628392188915.Spec : Prop :=
  ∀ n, (P4300511628392188915.a n : ℤ) = A188375 (n + 1)

end A188375

/-! ## A188375.P18119967779246569705

`∪[A184922(n+1), A188299(n+1)]`
-/

namespace A188375.P18119967779246569705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188375.P18119967779246569705

namespace A188375

/-- `∪[A184922(n+1), A188299(n+1)]` -/
def P18119967779246569705.Spec : Prop :=
  ∀ n, (P18119967779246569705.a n : ℤ) = A188375 (n + 1)

end A188375

/-!
# A188376: Positions of 1 in A188374; complement of A188375.

The programs for A188376, the canonical program `A188376.P12766285462065699500` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188376 has offset 1).

The definition of A188376 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188376.P12766285462065699500

`2*floor((n+1)*1/sqrt(2))+n+1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188376

/-- `2*floor((n+1)*1/sqrt(2))+n+1` -/
def P12766285462065699500.Spec : Prop :=
  ∀ n, P12766285462065699500.a n = A188376 (n + 1)

theorem P12766285462065699500.correct : P12766285462065699500.Spec := by
  intro n
  simp only [A188376, Nat.add_sub_cancel]

end A188376

/-! ## A188376.P13681187768923618946

`floor(sqrt(2)*A003152(n+1))`
-/

namespace A188376.P13681187768923618946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (A003152 (n + 1) : ℝ)⌋

end

end A188376.P13681187768923618946

namespace A188376

/-- `floor(sqrt(2)*A003152(n+1))` -/
def P13681187768923618946.Spec : Prop :=
  ∀ n, P13681187768923618946.a n = A188376 (n + 1)

end A188376

/-! ## A188376.P2633465677108544712

`floor((A188396(n+1)-n)/2)`
-/

namespace A188376.P2633465677108544712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A188396 (n + 1) - (n : ℤ) : ℚ) / 2⌋

end

end A188376.P2633465677108544712

namespace A188376

/-- `floor((A188396(n+1)-n)/2)` -/
def P2633465677108544712.Spec : Prop :=
  ∀ n, P2633465677108544712.a n = A188376 (n + 1)

end A188376

/-! ## A188376.P3341168853541396622

`filter[A120753(n+1), A187967(#)]`
-/

namespace A188376.P3341168853541396622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187967 (f1 j).toNat = 1) n)

end

end A188376.P3341168853541396622

namespace A188376

/-- `filter[A120753(n+1), A187967(#)]` -/
def P3341168853541396622.Spec : Prop :=
  ∀ n, P3341168853541396622.a n = A188376 (n + 1)

end A188376

/-! ## A188376.P17795990468642524535

`filter[A188322(n+1), A187967(#)]`
-/

namespace A188376.P17795990468642524535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187967 (f1 j).toNat = 1) n)

end

end A188376.P17795990468642524535

namespace A188376

/-- `filter[A188322(n+1), A187967(#)]` -/
def P17795990468642524535.Spec : Prop :=
  ∀ n, P17795990468642524535.a n = A188376 (n + 1)

end A188376

/-! ## A188376.P15205743362378790569

`A188265(A286924(n+1))`
-/

namespace A188376.P15205743362378790569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188265 (A286924 (n + 1)).toNat

end

end A188376.P15205743362378790569

namespace A188376

/-- `A188265(A286924(n+1))` -/
def P15205743362378790569.Spec : Prop :=
  ∀ n, P15205743362378790569.a n = A188376 (n + 1)

end A188376

/-! ## A188376.P1138417523076893176

`A001951(A003152(n+1))`
-/

namespace A188376.P1138417523076893176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A003152 (n + 1)).toNat

end

end A188376.P1138417523076893176

namespace A188376

/-- `A001951(A003152(n+1))` -/
def P1138417523076893176.Spec : Prop :=
  ∀ n, P1138417523076893176.a n = A188376 (n + 1)

end A188376

/-! ## A188376.P5512423857703505765

`A001951(A285074(n+2)-2)`
-/

namespace A188376.P5512423857703505765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A285074 (n + 2) - 2).toNat

end

end A188376.P5512423857703505765

namespace A188376

/-- `A001951(A285074(n+2)-2)` -/
def P5512423857703505765.Spec : Prop :=
  ∀ n, P5512423857703505765.a n = A188376 (n + 1)

end A188376

/-! ## A188376.P10912294049306962121

`A001951(A285077(n+2)-2)`
-/

namespace A188376.P10912294049306962121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A285077 (n + 2) - 2).toNat

end

end A188376.P10912294049306962121

namespace A188376

/-- `A001951(A285077(n+2)-2)` -/
def P10912294049306962121.Spec : Prop :=
  ∀ n, P10912294049306962121.a n = A188376 (n + 1)

end A188376

/-! ## A188376.P5735658578375694924

`A001951(A049472(n+1)+n+1)`
-/

namespace A188376.P5735658578375694924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A049472 (n + 1) + (n + 1 : ℤ)).toNat

end

end A188376.P5735658578375694924

namespace A188376

/-- `A001951(A049472(n+1)+n+1)` -/
def P5735658578375694924.Spec : Prop :=
  ∀ n, P5735658578375694924.a n = A188376 (n + 1)

end A188376

/-! ## A188376.P13032391219146806233

`A001951(A190329(n+1)-A001951(n+1))`
-/

namespace A188376.P13032391219146806233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A190329 (n + 1) - A001951 (n + 1)).toNat

end

end A188376.P13032391219146806233

namespace A188376

/-- `A001951(A190329(n+1)-A001951(n+1))` -/
def P13032391219146806233.Spec : Prop :=
  ∀ n, P13032391219146806233.a n = A188376 (n + 1)

end A188376

/-! ## A188376.P15334597939459568540

`A395101(A080755(n+1))`
-/

namespace A188376.P15334597939459568540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395101 (A080755 (n + 1)).toNat

end

end A188376.P15334597939459568540

namespace A188376

/-- `A395101(A080755(n+1))` -/
def P15334597939459568540.Spec : Prop :=
  ∀ n, P15334597939459568540.a n = A188376 (n + 1)

end A188376

/-! ## A188376.P13332293210022836937

`A395101(A083088(n+1))`
-/

namespace A188376.P13332293210022836937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395101 (A083088 (n + 1)).toNat

end

end A188376.P13332293210022836937

namespace A188376

/-- `A395101(A083088(n+1))` -/
def P13332293210022836937.Spec : Prop :=
  ∀ n, P13332293210022836937.a n = A188376 (n + 1)

end A188376

/-! ## A188376.P626861212200237782

`∩[A120753(n+1), A395101(n+1)]`
-/

namespace A188376.P626861212200237782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188376.P626861212200237782

namespace A188376

/-- `∩[A120753(n+1), A395101(n+1)]` -/
def P626861212200237782.Spec : Prop :=
  ∀ n, (P626861212200237782.a n : ℤ) = A188376 (n + 1)

end A188376

/-! ## A188376.P3212801540262747762

`∩[A188265(n+1), A395101(n+1)]`
-/

namespace A188376.P3212801540262747762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188376.P3212801540262747762

namespace A188376

/-- `∩[A188265(n+1), A395101(n+1)]` -/
def P3212801540262747762.Spec : Prop :=
  ∀ n, (P3212801540262747762.a n : ℤ) = A188376 (n + 1)

end A188376

/-! ## A188376.P17047706590436048650

`∩[A188298(n+1), A395101(n+1)]`
-/

namespace A188376.P17047706590436048650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188376.P17047706590436048650

namespace A188376

/-- `∩[A188298(n+1), A395101(n+1)]` -/
def P17047706590436048650.Spec : Prop :=
  ∀ n, (P17047706590436048650.a n : ℤ) = A188376 (n + 1)

end A188376

/-! ## A188376.P15547444461269249212

`∩[A188322(n+1), A395101(n+1)]`
-/

namespace A188376.P15547444461269249212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188376.P15547444461269249212

namespace A188376

/-- `∩[A188322(n+1), A395101(n+1)]` -/
def P15547444461269249212.Spec : Prop :=
  ∀ n, (P15547444461269249212.a n : ℤ) = A188376 (n + 1)

end A188376

/-! ## A188376.P10283491315367903774

`A188397(A286686(n+1))`
-/

namespace A188376.P10283491315367903774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188397 (A286686 (n + 1)).toNat

end

end A188376.P10283491315367903774

namespace A188376

/-- `A188397(A286686(n+1))` -/
def P10283491315367903774.Spec : Prop :=
  ∀ n, P10283491315367903774.a n = A188376 (n + 1)

end A188376

/-! ## A188376.P7172729527373051741

`∩[A120753(n+1), A187968(n+1)]`
-/

namespace A188376.P7172729527373051741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188376.P7172729527373051741

namespace A188376

/-- `∩[A120753(n+1), A187968(n+1)]` -/
def P7172729527373051741.Spec : Prop :=
  ∀ n, (P7172729527373051741.a n : ℤ) = A188376 (n + 1)

end A188376

/-! ## A188376.P11642151932241682976

`∩[A187968(n+1), A188322(n+1)]`
-/

namespace A188376.P11642151932241682976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188376.P11642151932241682976

namespace A188376

/-- `∩[A187968(n+1), A188322(n+1)]` -/
def P11642151932241682976.Spec : Prop :=
  ∀ n, (P11642151932241682976.a n : ℤ) = A188376 (n + 1)

end A188376

/-!
# A188377: a(n) = n^3 - 4*n^2 + 6*n - 2.

The programs for A188377, the canonical program `A188377.P10696713444741551039` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188377 has offset 3).

The definition of A188377 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+3)^3-4*(n+3)²+6*(n+3)-2` (program `A188377.P10696713444741551039`, by `A188377.P10696713444741551039.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A188377.P10696713444741551039

`(n+3)^3-4*(n+3)²+6*(n+3)-2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188377

/-- `(n+3)^3-4*(n+3)²+6*(n+3)-2` -/
def P10696713444741551039.Spec : Prop :=
  ∀ n, P10696713444741551039.a n = A188377 (n + 3)

theorem P10696713444741551039.correct : P10696713444741551039.Spec := by
  intro n
  simp only [A188377, Nat.add_sub_cancel]

end A188377

/-! ## A188377.P13304133026613444737

`ceil((n+2)/Δ[atan(n+1)])`
-/

namespace A188377.P13304133026613444737
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) / (f1 (n + 1) - f1 n)⌉

end

end A188377.P13304133026613444737

namespace A188377

/-- `ceil((n+2)/Δ[atan(n+1)])` -/
def P13304133026613444737.Spec : Prop :=
  ∀ n, P13304133026613444737.a n = A188377 (n + 3)

end A188377

/-! ## A188377.P4964711554417598881

`floor(lcm(n+1, (n+2)²)+ϕ+n+2)`
-/

namespace A188377.P4964711554417598881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm (n + 1) ((n + 2) ^ 2) : ℝ) + Real.goldenRatio + (n + 2 : ℝ)⌋

end

end A188377.P4964711554417598881

namespace A188377

/-- `floor(lcm(n+1, (n+2)²)+ϕ+n+2)` -/
def P4964711554417598881.Spec : Prop :=
  ∀ n, P4964711554417598881.a n = A188377 (n + 3)

end A188377

/-! ## A188377.P1238181969422715378

`abs(A261893(n+1)-n)`
-/

namespace A188377.P1238181969422715378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A261893 (n + 1) - (n : ℤ)|

end

end A188377.P1238181969422715378

namespace A188377

/-- `abs(A261893(n+1)-n)` -/
def P1238181969422715378.Spec : Prop :=
  ∀ n, P1238181969422715378.a n = A188377 (n + 3)

end A188377

/-! ## A188377.P15393924766354560883

`(A082986(n+1)+n+1)/(n+1)`
-/

namespace A188377.P15393924766354560883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082986 (n + 1) + (n + 1 : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A188377.P15393924766354560883

namespace A188377

/-- `(A082986(n+1)+n+1)/(n+1)` -/
def P15393924766354560883.Spec : Prop :=
  ∀ n, P15393924766354560883.a n = (A188377 (n + 3) : ℚ)

end A188377

/-! ## A188377.P8031317246798206252

`xor(A010684(n), A069778(n+1))`
-/

namespace A188377.P8031317246798206252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010684 n) (A069778 (n + 1))

end

end A188377.P8031317246798206252

namespace A188377

/-- `xor(A010684(n), A069778(n+1))` -/
def P8031317246798206252.Spec : Prop :=
  ∀ n, P8031317246798206252.a n = A188377 (n + 3)

end A188377

/-! ## A188377.P14264657817085072090

`record[A069778(A286579(n+1))+1]`
-/

namespace A188377.P14264657817085072090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069778 (A286579 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188377.P14264657817085072090

namespace A188377

/-- `record[A069778(A286579(n+1))+1]` -/
def P14264657817085072090.Spec : Prop :=
  ∀ n, P14264657817085072090.a n = A188377 (n + 3)

end A188377

/-! ## A188377.P14135029980222300343

`(A069778(n+1)+1)%A069760(n+1)`
-/

namespace A188377.P14135029980222300343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069778 (n + 1) + 1) (A069760 (n + 1))

end

end A188377.P14135029980222300343

namespace A188377

/-- `(A069778(n+1)+1)%A069760(n+1)` -/
def P14135029980222300343.Spec : Prop :=
  ∀ n, P14135029980222300343.a n = A188377 (n + 3)

end A188377

/-! ## A188377.P13314640018751774032

`(A053700(n+1)+A002061(n+1))/A002061(n+1)`
-/

namespace A188377.P13314640018751774032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053700 (n + 1) + A002061 (n + 1) : ℚ) / (A002061 (n + 1) : ℚ)

end

end A188377.P13314640018751774032

namespace A188377

/-- `(A053700(n+1)+A002061(n+1))/A002061(n+1)` -/
def P13314640018751774032.Spec : Prop :=
  ∀ n, P13314640018751774032.a n = (A188377 (n + 3) : ℚ)

end A188377

/-! ## A188377.P16746479161186743251

`(A128091(n+2)-1)/(n+1)`
-/

namespace A188377.P16746479161186743251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128091 (n + 2) - 1 : ℚ) / (n + 1 : ℚ)

end

end A188377.P16746479161186743251

namespace A188377

/-- `(A128091(n+2)-1)/(n+1)` -/
def P16746479161186743251.Spec : Prop :=
  ∀ n, P16746479161186743251.a n = (A188377 (n + 3) : ℚ)

end A188377

/-! ## A188377.P12518726507180668397

`Δ[A055998(n)+A052149(n+1)]`
-/

namespace A188377.P12518726507180668397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n + A052149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188377.P12518726507180668397

namespace A188377

/-- `Δ[A055998(n)+A052149(n+1)]` -/
def P12518726507180668397.Spec : Prop :=
  ∀ n, P12518726507180668397.a n = A188377 (n + 3)

end A188377

/-! ## A188377.P10130217648113190791

`Δ[A052149(n+1)+A000217(n+2)]`
-/

namespace A188377.P10130217648113190791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052149 (n + 1) + A000217 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188377.P10130217648113190791

namespace A188377

/-- `Δ[A052149(n+1)+A000217(n+2)]` -/
def P10130217648113190791.Spec : Prop :=
  ∀ n, P10130217648113190791.a n = A188377 (n + 3)

end A188377

/-! ## A188377.P858910366739570712

`abs(A062158(n+2)+2)`
-/

namespace A188377.P858910366739570712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062158 (n + 2) + 2|

end

end A188377.P858910366739570712

namespace A188377

/-- `abs(A062158(n+2)+2)` -/
def P858910366739570712.Spec : Prop :=
  ∀ n, P858910366739570712.a n = A188377 (n + 3)

end A188377

/-! ## A188377.P11997902786729785747

`(A185065(n+2)+1)/(n+3)`
-/

namespace A188377.P11997902786729785747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185065 (n + 2) + 1 : ℚ) / (n + 3 : ℚ)

end

end A188377.P11997902786729785747

namespace A188377

/-- `(A185065(n+2)+1)/(n+3)` -/
def P11997902786729785747.Spec : Prop :=
  ∀ n, P11997902786729785747.a n = (A188377 (n + 3) : ℚ)

theorem P11997902786729785747.correct : P11997902786729785747.Spec := by
  intro n
  simp only [A188377, Nat.add_sub_cancel, A188377.P11997902786729785747.a, A188377.P10696713444741551039.a, A185065, A185065.P13419024490524670823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188377

/-! ## A188377.P7125886761000676206

`2/(n+2)*A100855(n+2)`
-/

namespace A188377.P7125886761000676206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A100855 (n + 2) : ℚ)

end

end A188377.P7125886761000676206

namespace A188377

/-- `2/(n+2)*A100855(n+2)` -/
def P7125886761000676206.Spec : Prop :=
  ∀ n, P7125886761000676206.a n = (A188377 (n + 3) : ℚ)

end A188377

/-! ## A188377.P9979696301664401355

`record[A069778(A120385(n+1))+1]`
-/

namespace A188377.P9979696301664401355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069778 (A120385 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188377.P9979696301664401355

namespace A188377

/-- `record[A069778(A120385(n+1))+1]` -/
def P9979696301664401355.Spec : Prop :=
  ∀ n, P9979696301664401355.a n = A188377 (n + 3)

end A188377

/-! ## A188377.P2971527822410587162

`record[(A002260(n+1)+1)^3-(2*n+1)]`
-/

namespace A188377.P2971527822410587162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) + 1) ^ 3 - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188377.P2971527822410587162

namespace A188377

/-- `record[(A002260(n+1)+1)^3-(2*n+1)]` -/
def P2971527822410587162.Spec : Prop :=
  ∀ n, P2971527822410587162.a n = A188377 (n + 3)

end A188377

/-! ## A188377.P3108941710620488825

`record[A213831(n+2)-n]`
-/

namespace A188377.P3108941710620488825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213831 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188377.P3108941710620488825

namespace A188377

/-- `record[A213831(n+2)-n]` -/
def P3108941710620488825.Spec : Prop :=
  ∀ n, P3108941710620488825.a n = A188377 (n + 3)

end A188377

/-! ## A188377.P14033145548310050910

`record[A213833(n+2)-n]`
-/

namespace A188377.P14033145548310050910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213833 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188377.P14033145548310050910

namespace A188377

/-- `record[A213833(n+2)-n]` -/
def P14033145548310050910.Spec : Prop :=
  ∀ n, P14033145548310050910.a n = A188377 (n + 3)

end A188377

/-! ## A188377.P12903983644075785575

`∑[A086822((n+1)²)+n+1]`
-/

namespace A188377.P12903983644075785575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086822 ((n + 1) ^ 2) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188377.P12903983644075785575

namespace A188377

/-- `∑[A086822((n+1)²)+n+1]` -/
def P12903983644075785575.Spec : Prop :=
  ∀ n, P12903983644075785575.a n = A188377 (n + 3)

end A188377

/-!
# A188378: Partial sums of A005248.

The programs for A188378, the canonical program `A188378.P151460169206964493` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188378 has offset 0).

The definition of A188378 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188378.P151460169206964493

`A002878(n)+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A188378

/-- `A002878(n)+1` -/
def P151460169206964493.Spec : Prop :=
  ∀ n, P151460169206964493.a n = A188378 n

theorem P151460169206964493.correct : P151460169206964493.Spec := by
  intro n
  simp only [A188378]

end A188378

/-! ## A188378.P2108194765620609552

`A000032(2*n+1)+1`
-/

namespace A188378.P2108194765620609552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n + 1) + 1

end

end A188378.P2108194765620609552

namespace A188378

/-- `A000032(2*n+1)+1` -/
def P2108194765620609552.Spec : Prop :=
  ∀ n, P2108194765620609552.a n = A188378 n

end A188378

/-! ## A188378.P16868652097466836114

`5*A001654(n)+1+(-1)^n`
-/

namespace A188378.P16868652097466836114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A001654 n + 1 + (-1) ^ n

end

end A188378.P16868652097466836114

namespace A188378

/-- `5*A001654(n)+1+(-1)^n` -/
def P16868652097466836114.Spec : Prop :=
  ∀ n, P16868652097466836114.a n = A188378 n

end A188378

/-! ## A188378.P3105517051363440012

`2*A027941(n+1)-3*A027941(n)`
-/

namespace A188378.P3105517051363440012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027941 (n + 1) - 3 * A027941 n

end

end A188378.P3105517051363440012

namespace A188378

/-- `2*A027941(n+1)-3*A027941(n)` -/
def P3105517051363440012.Spec : Prop :=
  ∀ n, P3105517051363440012.a n = A188378 n

end A188378

/-! ## A188378.P5488843311067175406

`∑[floor((ϕ^n)²)+1]`
-/

namespace A188378.P5488843311067175406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio ^ n) ^ 2⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188378.P5488843311067175406

namespace A188378

/-- `∑[floor((ϕ^n)²)+1]` -/
def P5488843311067175406.Spec : Prop :=
  ∀ n, P5488843311067175406.a n = A188378 n

end A188378

/-! ## A188378.P2246107578887219232

`ogf((2-3x)/(1-4x+4x^2-x^3))`
-/

namespace A188378.P2246107578887219232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3] [1, -4, 4, -1] n

end

end A188378.P2246107578887219232

namespace A188378

/-- `ogf((2-3x)/(1-4x+4x^2-x^3))` -/
def P2246107578887219232.Spec : Prop :=
  ∀ n, P2246107578887219232.a n = A188378 n

end A188378

/-! ## A188378.P9660870285224306190

`ceil(∑[record[(-ϕ)^n]])+1`
-/

namespace A188378.P9660870285224306190
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-Real.goldenRatio) ^ n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ + 1

end

end A188378.P9660870285224306190

namespace A188378

/-- `ceil(∑[record[(-ϕ)^n]])+1` -/
def P9660870285224306190.Spec : Prop :=
  ∀ n, P9660870285224306190.a n = A188378 n

end A188378

/-! ## A188378.P9159146180549538239

`round(sin(1)+ϕ^(2*n+1))`
-/

namespace A188378.P9159146180549538239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (1 : ℝ) + Real.goldenRatio ^ (2 * n + 1))

end

end A188378.P9159146180549538239

namespace A188378

/-- `round(sin(1)+ϕ^(2*n+1))` -/
def P9159146180549538239.Spec : Prop :=
  ∀ n, P9159146180549538239.a n = A188378 n

end A188378

/-! ## A188378.P10425650641759986870

`round(atan(1)+ϕ^(2*n+1))`
-/

namespace A188378.P10425650641759986870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (1 : ℝ) + Real.goldenRatio ^ (2 * n + 1))

end

end A188378.P10425650641759986870

namespace A188378

/-- `round(atan(1)+ϕ^(2*n+1))` -/
def P10425650641759986870.Spec : Prop :=
  ∀ n, P10425650641759986870.a n = A188378 n

end A188378

/-! ## A188378.P15046288073654222782

`floor(sinh(1)+ϕ^(2*n+1))`
-/

namespace A188378.P15046288073654222782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (1 : ℝ) + Real.goldenRatio ^ (2 * n + 1)⌋

end

end A188378.P15046288073654222782

namespace A188378

/-- `floor(sinh(1)+ϕ^(2*n+1))` -/
def P15046288073654222782.Spec : Prop :=
  ∀ n, P15046288073654222782.a n = A188378 n

end A188378

/-! ## A188378.P8274627541724469007

`floor(atan(4)+ϕ^(2*n+1))`
-/

namespace A188378.P8274627541724469007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (4 : ℝ) + Real.goldenRatio ^ (2 * n + 1)⌋

end

end A188378.P8274627541724469007

namespace A188378

/-- `floor(atan(4)+ϕ^(2*n+1))` -/
def P8274627541724469007.Spec : Prop :=
  ∀ n, P8274627541724469007.a n = A188378 n

end A188378

/-! ## A188378.P9887532496117681894

`round(tanh(1)+ϕ^(2*n+1))`
-/

namespace A188378.P9887532496117681894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (1 : ℝ) + Real.goldenRatio ^ (2 * n + 1))

end

end A188378.P9887532496117681894

namespace A188378

/-- `round(tanh(1)+ϕ^(2*n+1))` -/
def P9887532496117681894.Spec : Prop :=
  ∀ n, P9887532496117681894.a n = A188378 n

end A188378

/-! ## A188378.P6988471034770109209

`round(tan(7)+ϕ^(2*n+1))`
-/

namespace A188378.P6988471034770109209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (7 : ℝ) + Real.goldenRatio ^ (2 * n + 1))

end

end A188378.P6988471034770109209

namespace A188378

/-- `round(tan(7)+ϕ^(2*n+1))` -/
def P6988471034770109209.Spec : Prop :=
  ∀ n, P6988471034770109209.a n = A188378 n

end A188378

/-! ## A188378.P3643290448436574861

`round(acot(1)+ϕ^(2*n+1))`
-/

namespace A188378.P3643290448436574861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (1 : ℝ) + Real.goldenRatio ^ (2 * n + 1))

end

end A188378.P3643290448436574861

namespace A188378

/-- `round(acot(1)+ϕ^(2*n+1))` -/
def P3643290448436574861.Spec : Prop :=
  ∀ n, P3643290448436574861.a n = A188378 n

end A188378

/-! ## A188378.P10628111762453397687

`round(ϕ^(2*n+1)-cos(10))`
-/

namespace A188378.P10628111762453397687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (2 * n + 1) - Real.cos (10 : ℝ))

end

end A188378.P10628111762453397687

namespace A188378

/-- `round(ϕ^(2*n+1)-cos(10))` -/
def P10628111762453397687.Spec : Prop :=
  ∀ n, P10628111762453397687.a n = A188378 n

end A188378

/-! ## A188378.P5852407503069096812

`round(cot(4)+ϕ^(2*n+1))`
-/

namespace A188378.P5852407503069096812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (4 : ℝ) + Real.goldenRatio ^ (2 * n + 1))

end

end A188378.P5852407503069096812

namespace A188378

/-- `round(cot(4)+ϕ^(2*n+1))` -/
def P5852407503069096812.Spec : Prop :=
  ∀ n, P5852407503069096812.a n = A188378 n

end A188378

/-! ## A188378.P17599449731048577721

`ceil(a(n-1)+(ϕ^n)²)` with `a(0)=2`
-/

namespace A188378.P17599449731048577721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈(a (n - 1) : ℝ) + (Real.goldenRatio ^ n) ^ 2⌉

end

end A188378.P17599449731048577721

namespace A188378

/-- `ceil(a(n-1)+(ϕ^n)²)` -/
def P17599449731048577721.Spec : Prop :=
  ∀ n, P17599449731048577721.a n = A188378 n

end A188378

/-! ## A188378.P11746403791694786446

`round(a(n-1)+(ϕ^n)²)` with `a(0)=2`
-/

namespace A188378.P11746403791694786446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + (Real.goldenRatio ^ n) ^ 2)

end

end A188378.P11746403791694786446

namespace A188378

/-- `round(a(n-1)+(ϕ^n)²)` -/
def P11746403791694786446.Spec : Prop :=
  ∀ n, P11746403791694786446.a n = A188378 n

end A188378

/-! ## A188378.P3158654784009567989

`a(n-1)+round(ϕ^(2*n))` with `a(0)=2`
-/

namespace A188378.P3158654784009567989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + SequenceMachineLib.roundAway (Real.goldenRatio ^ (2 * n))

end

end A188378.P3158654784009567989

namespace A188378

/-- `a(n-1)+round(ϕ^(2*n))` -/
def P3158654784009567989.Spec : Prop :=
  ∀ n, P3158654784009567989.a n = A188378 n

end A188378

/-! ## A188378.P1432492857159296027

`3*a(n-1)-(a(n-2)+1)` with `a(0)=2, a(1)=5`
-/

namespace A188378.P1432492857159296027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  3 * a (n - 1) - (a (n - 2) + 1)

end

end A188378.P1432492857159296027

namespace A188378

/-- `3*a(n-1)-(a(n-2)+1)` -/
def P1432492857159296027.Spec : Prop :=
  ∀ n, P1432492857159296027.a n = A188378 n

end A188378

/-!
# A188379: a(n) = A002526(n+1) - A002527(n+1).

The programs for A188379, there is no canonical definition to state claims against.
-/

/-! ## A188379.P3375895311775397548

`A002526(n+1)-A002527(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A188379.P3375895311775397548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002526 (n + 1) - A002527 (n + 1)

end

end A188379.P3375895311775397548

/-! ## A188379.P16746449176857736427

`A188494(n+2)%A002527(n+1)`
-/

namespace A188379.P16746449176857736427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188494 (n + 2)) (A002527 (n + 1))

end

end A188379.P16746449176857736427

/-! ## A188379.P10567208713879165385

`A002526(round(sqrt(n²+1))+1)%A002527(n+1)`
-/

namespace A188379.P10567208713879165385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002526 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat) (A002527 (n + 1))

end

end A188379.P10567208713879165385

/-! ## A188379.P18257425801362092817

`Δ[A002526(n)]-A002527(n)-A002529(n)`
-/

namespace A188379.P18257425801362092817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002527 n - A002529 n

end

end A188379.P18257425801362092817

/-! ## A188379.P8501319560473719755

`A002526(n+1)-(A188494(n+1)+A002529(n))`
-/

namespace A188379.P8501319560473719755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002526 (n + 1) - (A188494 (n + 1) + A002529 n)

end

end A188379.P8501319560473719755

/-!
# A188381: Negabinary Keith numbers.

The programs for A188381, there is no canonical definition to state claims against.
-/

/-! ## A188381.P7082060005137517388

`A237593(A048192(n+1))+A001301(2*n)`
-/

namespace A188381.P7082060005137517388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (A048192 (n + 1)).toNat + A001301 (2 * n)

end

end A188381.P7082060005137517388

/-!
# A188382: Primes of the form 8*n^2 + 2*n + 1.

The programs for A188382, the canonical program `A188382.P3659492333739796096` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188382 has offset 1).

The definition of A188382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188382.P3659492333739796096

`A306362(n+2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A188382

/-- `A306362(n+2)` -/
def P3659492333739796096.Spec : Prop :=
  ∀ n, P3659492333739796096.a n = A188382 (n + 1)

theorem P3659492333739796096.correct : P3659492333739796096.Spec := by
  intro n
  simp only [A188382, Nat.add_sub_cancel]

end A188382

/-! ## A188382.P17873993875457250748

`∩[A055469(n+1), A188135(n)]`
-/

namespace A188382.P17873993875457250748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188135 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188382.P17873993875457250748

namespace A188382

/-- `∩[A055469(n+1), A188135(n)]` -/
def P17873993875457250748.Spec : Prop :=
  ∀ n, (P17873993875457250748.a n : ℤ) = A188382 (n + 1)

end A188382

/-! ## A188382.P14950333035602482709

`∩[A055469(n+1), A084849(n)]`
-/

namespace A188382.P14950333035602482709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084849 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188382.P14950333035602482709

namespace A188382

/-- `∩[A055469(n+1), A084849(n)]` -/
def P14950333035602482709.Spec : Prop :=
  ∀ n, (P14950333035602482709.a n : ℤ) = A188382 (n + 1)

end A188382

/-! ## A188382.P1624799818954189290

`∩[A055469(n+1), A317298(n)]`
-/

namespace A188382.P1624799818954189290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317298 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188382.P1624799818954189290

namespace A188382

/-- `∩[A055469(n+1), A317298(n)]` -/
def P1624799818954189290.Spec : Prop :=
  ∀ n, (P1624799818954189290.a n : ℤ) = A188382 (n + 1)

end A188382

/-! ## A188382.P11291397099601775347

`∩[A055469(n+1), A001105(n)+1+n]`
-/

namespace A188382.P11291397099601775347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188382.P11291397099601775347

namespace A188382

/-- `∩[A055469(n+1), A001105(n)+1+n]` -/
def P11291397099601775347.Spec : Prop :=
  ∀ n, (P11291397099601775347.a n : ℤ) = A188382 (n + 1)

end A188382

/-! ## A188382.P5173665435341498374

`record[A118680(4*(n+1))]`
-/

namespace A188382.P5173665435341498374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118680 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188382.P5173665435341498374

namespace A188382

/-- `record[A118680(4*(n+1))]` -/
def P5173665435341498374.Spec : Prop :=
  ∀ n, P5173665435341498374.a n = A188382 (n + 1)

end A188382

/-! ## A188382.P7490942348616044429

`∩[A055469(n+1), A131179(n)]`
-/

namespace A188382.P7490942348616044429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131179 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188382.P7490942348616044429

namespace A188382

/-- `∩[A055469(n+1), A131179(n)]` -/
def P7490942348616044429.Spec : Prop :=
  ∀ n, (P7490942348616044429.a n : ℤ) = A188382 (n + 1)

end A188382

/-! ## A188382.P2706421149808822887

`∩[A055469(n+1), A236453(n)]`
-/

namespace A188382.P2706421149808822887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236453 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188382.P2706421149808822887

namespace A188382

/-- `∩[A055469(n+1), A236453(n)]` -/
def P2706421149808822887.Spec : Prop :=
  ∀ n, (P2706421149808822887.a n : ℤ) = A188382 (n + 1)

end A188382

/-! ## A188382.P12714729038263761124

`∩[A055469(n+1), A266252(n)]`
-/

namespace A188382.P12714729038263761124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266252 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188382.P12714729038263761124

namespace A188382

/-- `∩[A055469(n+1), A266252(n)]` -/
def P12714729038263761124.Spec : Prop :=
  ∀ n, (P12714729038263761124.a n : ℤ) = A188382 (n + 1)

end A188382

/-! ## A188382.P2028938133406715661

`∩[A055469(n+1), A329279(n+1)]`
-/

namespace A188382.P2028938133406715661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188382.P2028938133406715661

namespace A188382

/-- `∩[A055469(n+1), A329279(n+1)]` -/
def P2028938133406715661.Spec : Prop :=
  ∀ n, (P2028938133406715661.a n : ℤ) = A188382 (n + 1)

end A188382

/-! ## A188382.P8807431751304482697

`∩[A055469(n+1), A365892(n+1)]`
-/

namespace A188382.P8807431751304482697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188382.P8807431751304482697

namespace A188382

/-- `∩[A055469(n+1), A365892(n+1)]` -/
def P8807431751304482697.Spec : Prop :=
  ∀ n, (P8807431751304482697.a n : ℤ) = A188382 (n + 1)

end A188382

/-! ## A188382.P2941560953952965000

`∩[A055469(n+1), A266259(n)-n]`
-/

namespace A188382.P2941560953952965000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266259 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188382.P2941560953952965000

namespace A188382

/-- `∩[A055469(n+1), A266259(n)-n]` -/
def P2941560953952965000.Spec : Prop :=
  ∀ n, (P2941560953952965000.a n : ℤ) = A188382 (n + 1)

end A188382

/-! ## A188382.P13277511526024146106

`∩[A055469(n+2), A114113(n+2)+1]`
-/

namespace A188382.P13277511526024146106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055469 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114113 (n + 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188382.P13277511526024146106

namespace A188382

/-- `∩[A055469(n+2), A114113(n+2)+1]` -/
def P13277511526024146106.Spec : Prop :=
  ∀ n, (P13277511526024146106.a n : ℤ) = A188382 (n + 1)

end A188382

/-! ## A188382.P4998219948851912602

`∩[A077128(n+1), A084849(n)]`
-/

namespace A188382.P4998219948851912602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084849 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188382.P4998219948851912602

namespace A188382

/-- `∩[A077128(n+1), A084849(n)]` -/
def P4998219948851912602.Spec : Prop :=
  ∀ n, (P4998219948851912602.a n : ℤ) = A188382 (n + 1)

end A188382

/-! ## A188382.P13140036008258308640

`∩[A077128(n+1), A131179(n)]`
-/

namespace A188382.P13140036008258308640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131179 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188382.P13140036008258308640

namespace A188382

/-- `∩[A077128(n+1), A131179(n)]` -/
def P13140036008258308640.Spec : Prop :=
  ∀ n, (P13140036008258308640.a n : ℤ) = A188382 (n + 1)

end A188382

/-! ## A188382.P8790814234630607938

`∩[A077128(n+1), A188135(n)]`
-/

namespace A188382.P8790814234630607938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188135 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188382.P8790814234630607938

namespace A188382

/-- `∩[A077128(n+1), A188135(n)]` -/
def P8790814234630607938.Spec : Prop :=
  ∀ n, (P8790814234630607938.a n : ℤ) = A188382 (n + 1)

end A188382

/-! ## A188382.P5841888181787100258

`∩[A077128(n+1), A266252(n)]`
-/

namespace A188382.P5841888181787100258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266252 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188382.P5841888181787100258

namespace A188382

/-- `∩[A077128(n+1), A266252(n)]` -/
def P5841888181787100258.Spec : Prop :=
  ∀ n, (P5841888181787100258.a n : ℤ) = A188382 (n + 1)

end A188382

/-! ## A188382.P14471439790583119271

`∩[A077128(n+1), A317298(n)]`
-/

namespace A188382.P14471439790583119271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317298 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188382.P14471439790583119271

namespace A188382

/-- `∩[A077128(n+1), A317298(n)]` -/
def P14471439790583119271.Spec : Prop :=
  ∀ n, (P14471439790583119271.a n : ℤ) = A188382 (n + 1)

end A188382

/-! ## A188382.P3340470741875094911

`∩[A077128(n+1), A329279(n+1)]`
-/

namespace A188382.P3340470741875094911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188382.P3340470741875094911

namespace A188382

/-- `∩[A077128(n+1), A329279(n+1)]` -/
def P3340470741875094911.Spec : Prop :=
  ∀ n, (P3340470741875094911.a n : ℤ) = A188382 (n + 1)

end A188382

/-! ## A188382.P9603668459858512465

`∩[A077128(n+1), A365892(n+1)]`
-/

namespace A188382.P9603668459858512465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188382.P9603668459858512465

namespace A188382

/-- `∩[A077128(n+1), A365892(n+1)]` -/
def P9603668459858512465.Spec : Prop :=
  ∀ n, (P9603668459858512465.a n : ℤ) = A188382 (n + 1)

end A188382

/-!
# A188383: Positions of 1 in the zero-one sequence [nr+3r]-[nr]-[3r], where r=1/sqrt(2).

The programs for A188383, the canonical program `A188383.P4134087850535835169` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188383 has offset 1).

The definition of A188383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188383.P15361289865447296943

`∑[3*Δ[floor(n*sqrt(2))]+4]`
-/

namespace A188383.P15361289865447296943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f2 (n + 1) - f2 n) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188383.P15361289865447296943

namespace A188383

/-- `∑[3*Δ[floor(n*sqrt(2))]+4]` -/
def P15361289865447296943.Spec : Prop :=
  ∀ n, P15361289865447296943.a n = A188383 (n + 1)

end A188383

/-! ## A188383.P1635658515542775562

`A359351(n+1)+1`
-/

namespace A188383.P1635658515542775562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359351 (n + 1) + 1

end

end A188383.P1635658515542775562

namespace A188383

/-- `A359351(n+1)+1` -/
def P1635658515542775562.Spec : Prop :=
  ∀ n, P1635658515542775562.a n = A188383 (n + 1)

end A188383

/-! ## A188383.P8300677728925834388

`A188302(n+1)-3`
-/

namespace A188383.P8300677728925834388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188302 (n + 1) - 3

end

end A188383.P8300677728925834388

namespace A188383

/-- `A188302(n+1)-3` -/
def P8300677728925834388.Spec : Prop :=
  ∀ n, P8300677728925834388.a n = A188383 (n + 1)

end A188383

/-! ## A188383.P4134087850535835169

`3*A003151(n+1)+n+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A188383

/-- `3*A003151(n+1)+n+1` -/
def P4134087850535835169.Spec : Prop :=
  ∀ n, P4134087850535835169.a n = A188383 (n + 1)

theorem P4134087850535835169.correct : P4134087850535835169.Spec := by
  intro n
  simp only [A188383, Nat.add_sub_cancel]

end A188383

/-! ## A188383.P18346035656204616159

`3*A080754(n+1)+n-2`
-/

namespace A188383.P18346035656204616159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A080754 (n + 1) + ((n : ℤ) - 2)

end

end A188383.P18346035656204616159

namespace A188383

/-- `3*A080754(n+1)+n-2` -/
def P18346035656204616159.Spec : Prop :=
  ∀ n, P18346035656204616159.a n = A188383 (n + 1)

end A188383

/-! ## A188383.P5261322983358702274

`A140868(n+1)+comp[floor(n*sqrt(2))]-n`
-/

namespace A188383.P5261322983358702274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140868 (n + 1) + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))

end

end A188383.P5261322983358702274

namespace A188383

/-- `A140868(n+1)+comp[floor(n*sqrt(2))]-n` -/
def P5261322983358702274.Spec : Prop :=
  ∀ n, P5261322983358702274.a n = A188383 (n + 1)

end A188383

/-! ## A188383.P696230160011824994

`A001952(n+1)+2*comp[floor(n/sqrt(2))+n]`
-/

namespace A188383.P696230160011824994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋ + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) + (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A188383.P696230160011824994

namespace A188383

/-- `A001952(n+1)+2*comp[floor(n/sqrt(2))+n]` -/
def P696230160011824994.Spec : Prop :=
  ∀ n, P696230160011824994.a n = A188383 (n + 1)

end A188383

/-! ## A188383.P13384717729206767096

`A022804(n+1)+A001952(n+1)`
-/

namespace A188383.P13384717729206767096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022804 (n + 1) + A001952 (n + 1)

end

end A188383.P13384717729206767096

namespace A188383

/-- `A022804(n+1)+A001952(n+1)` -/
def P13384717729206767096.Spec : Prop :=
  ∀ n, P13384717729206767096.a n = A188383 (n + 1)

end A188383

/-! ## A188383.P13577760845487161529

`A098021(n+1)+A003151(n+1)`
-/

namespace A188383.P13577760845487161529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098021 (n + 1) + A003151 (n + 1)

end

end A188383.P13577760845487161529

namespace A188383

/-- `A098021(n+1)+A003151(n+1)` -/
def P13577760845487161529.Spec : Prop :=
  ∀ n, P13577760845487161529.a n = A188383 (n + 1)

end A188383

/-! ## A188383.P15293180778336552426

`A286927(n+1)+A001951(n+1)`
-/

namespace A188383.P15293180778336552426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286927 (n + 1) + A001951 (n + 1)

end

end A188383.P15293180778336552426

namespace A188383

/-- `A286927(n+1)+A001951(n+1)` -/
def P15293180778336552426.Spec : Prop :=
  ∀ n, P15293180778336552426.a n = A188383 (n + 1)

end A188383

/-! ## A188383.P8970302027288082250

`A286690(n+1)+A087057(n+1)`
-/

namespace A188383.P8970302027288082250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286690 (n + 1) + A087057 (n + 1)

end

end A188383.P8970302027288082250

namespace A188383

/-- `A286690(n+1)+A087057(n+1)` -/
def P8970302027288082250.Spec : Prop :=
  ∀ n, P8970302027288082250.a n = A188383 (n + 1)

end A188383

/-! ## A188383.P14640492781941588883

`A189380(n+1)+A187338(n+1)`
-/

namespace A188383.P14640492781941588883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189380 (n + 1) + A187338 (n + 1)

end

end A188383.P14640492781941588883

namespace A188383

/-- `A189380(n+1)+A187338(n+1)` -/
def P14640492781941588883.Spec : Prop :=
  ∀ n, P14640492781941588883.a n = A188383 (n + 1)

end A188383

/-! ## A188383.P16818079151523897503

`A187975(n+1)-A098021(n+1)`
-/

namespace A188383.P16818079151523897503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187975 (n + 1) - A098021 (n + 1)

end

end A188383.P16818079151523897503

namespace A188383

/-- `A187975(n+1)-A098021(n+1)` -/
def P16818079151523897503.Spec : Prop :=
  ∀ n, P16818079151523897503.a n = A188383 (n + 1)

theorem P16818079151523897503.correct : P16818079151523897503.Spec := by
  intro n
  simp only [A188383, Nat.add_sub_cancel, A188383.P16818079151523897503.a, A188383.P4134087850535835169.a, A003151, A003151.P5230567170801236160.a, A098021, A098021.P1655931677534323428.a, A187975, A187975.P2328125019044732713.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A188383

/-! ## A188383.P7675210252038524275

`A087057(n+1)+A098021(n+1)+n`
-/

namespace A188383.P7675210252038524275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (n + 1) + (A098021 (n + 1) + (n : ℤ))

end

end A188383.P7675210252038524275

namespace A188383

/-- `A087057(n+1)+A098021(n+1)+n` -/
def P7675210252038524275.Spec : Prop :=
  ∀ n, P7675210252038524275.a n = A188383 (n + 1)

end A188383

/-! ## A188383.P18136140236522913949

`A188319(A087057(n+1))`
-/

namespace A188383.P18136140236522913949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188319 (A087057 (n + 1)).toNat

end

end A188383.P18136140236522913949

namespace A188383

/-- `A188319(A087057(n+1))` -/
def P18136140236522913949.Spec : Prop :=
  ∀ n, P18136140236522913949.a n = A188383 (n + 1)

end A188383

/-! ## A188383.P13412590310605095481

`A188319(A080754(n+1)-(n+1))`
-/

namespace A188383.P13412590310605095481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188319 (A080754 (n + 1) - (n + 1 : ℤ)).toNat

end

end A188383.P13412590310605095481

namespace A188383

/-- `A188319(A080754(n+1)-(n+1))` -/
def P13412590310605095481.Spec : Prop :=
  ∀ n, P13412590310605095481.a n = A188383 (n + 1)

end A188383

/-! ## A188383.P14789807708441435890

`A341249(A081477(n+1))+1`
-/

namespace A188383.P14789807708441435890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341249 (A081477 (n + 1)).toNat + 1

end

end A188383.P14789807708441435890

namespace A188383

/-- `A341249(A081477(n+1))+1` -/
def P14789807708441435890.Spec : Prop :=
  ∀ n, P14789807708441435890.a n = A188383 (n + 1)

end A188383

/-! ## A188383.P11108484453408453310

`A187971(2*(n+1))`
-/

namespace A188383.P11108484453408453310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187971 (2 * (n + 1))

end

end A188383.P11108484453408453310

namespace A188383

/-- `A187971(2*(n+1))` -/
def P11108484453408453310.Spec : Prop :=
  ∀ n, P11108484453408453310.a n = A188383 (n + 1)

end A188383

/-! ## A188383.P15784563221711900050

`A188043(2*(n+1))-3`
-/

namespace A188383.P15784563221711900050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188043 (2 * (n + 1)) - 3

end

end A188383.P15784563221711900050

namespace A188383

/-- `A188043(2*(n+1))-3` -/
def P15784563221711900050.Spec : Prop :=
  ∀ n, P15784563221711900050.a n = A188383 (n + 1)

end A188383

/-! ## A188383.P17774720064671359226

`A188373(2*(n+1))-3`
-/

namespace A188383.P17774720064671359226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188373 (2 * (n + 1)) - 3

end

end A188383.P17774720064671359226

namespace A188383

/-- `A188373(2*(n+1))-3` -/
def P17774720064671359226.Spec : Prop :=
  ∀ n, P17774720064671359226.a n = A188383 (n + 1)

end A188383

/-!
# A188384: Primes for which there are not three consecutive nonzero quintic residues.

The programs for A188384, there is no canonical definition to state claims against.
-/

/-! ## A188384.P4498656549029135820

`A327346(∑[A027828(n)²])`
-/

namespace A188384.P4498656549029135820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027828 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327346 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A188384.P4498656549029135820

/-! ## A188384.P13095969719030473915

`A327346(∑[A309863(n)²])`
-/

namespace A188384.P13095969719030473915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309863 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327346 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A188384.P13095969719030473915

/-! ## A188384.P17932518842685007942

`p?[A197652(∑[A186728(n)])]`
-/

namespace A188384.P17932518842685007942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188384.P17932518842685007942

/-! ## A188384.P2398261973935110505

`p?[Δ[A051624(A029108(n))]]`
-/

namespace A188384.P2398261973935110505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051624 (A029108 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A188384.P2398261973935110505

/-! ## A188384.P4237296793995001749

`record[p?[A016861(A166493(n))]]`
-/

namespace A188384.P4237296793995001749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A166493 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188384.P4237296793995001749

/-!
# A188385: Highest exponent in the prime factorization of n^n.

The programs for A188385, the canonical program `A188385.P13993310545779248869` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188385 has offset 1).

The definition of A188385 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A188385.P13993310545779248869

`(n+1)*A051903(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A188385

/-- `(n+1)*A051903(n+1)` -/
def P13993310545779248869.Spec : Prop :=
  ∀ n, P13993310545779248869.a n = A188385 (n + 1)

theorem P13993310545779248869.correct : P13993310545779248869.Spec := by
  intro n
  simp only [A188385, Nat.add_sub_cancel]

end A188385

/-! ## A188385.P8802520682517816842

`(n+1)*(A067132(n+1)-1)`
-/

namespace A188385.P8802520682517816842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A067132 (n + 1) - 1)

end

end A188385.P8802520682517816842

namespace A188385

/-- `(n+1)*(A067132(n+1)-1)` -/
def P8802520682517816842.Spec : Prop :=
  ∀ n, P8802520682517816842.a n = A188385 (n + 1)

theorem P8802520682517816842.correct : P8802520682517816842.Spec := by
  intro n
  simp only [A188385, Nat.add_sub_cancel, A188385.P8802520682517816842.a, A188385.P13993310545779248869.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A067132, A067132.P2149404699775634079.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188385

/-! ## A188385.P13372519948354311693

`(n+1)*val(A046523(n+1), 2)`
-/

namespace A188385.P13372519948354311693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.valuation (A046523 (n + 1)).toNat 2

end

end A188385.P13372519948354311693

namespace A188385

/-- `(n+1)*val(A046523(n+1), 2)` -/
def P13372519948354311693.Spec : Prop :=
  ∀ n, (P13372519948354311693.a n : ℤ) = A188385 (n + 1)

end A188385

/-! ## A188385.P15581225909331986804

`(n+1)*val(A328400(n+1), 2)`
-/

namespace A188385.P15581225909331986804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.valuation (A328400 (n + 1)).toNat 2

end

end A188385.P15581225909331986804

namespace A188385

/-- `(n+1)*val(A328400(n+1), 2)` -/
def P15581225909331986804.Spec : Prop :=
  ∀ n, (P15581225909331986804.a n : ℤ) = A188385 (n + 1)

end A188385

/-! ## A188385.P228659501676664727

`(n+1)*val(A278254(n+1), 4)`
-/

namespace A188385.P228659501676664727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.valuation (A278254 (n + 1)).toNat 4

end

end A188385.P228659501676664727

namespace A188385

/-- `(n+1)*val(A278254(n+1), 4)` -/
def P228659501676664727.Spec : Prop :=
  ∀ n, (P228659501676664727.a n : ℤ) = A188385 (n + 1)

end A188385

/-! ## A188385.P1876977949040828623

`(n+1)*A007814(A046523(n+1))`
-/

namespace A188385.P1876977949040828623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007814 (A046523 (n + 1)).toNat

end

end A188385.P1876977949040828623

namespace A188385

/-- `(n+1)*A007814(A046523(n+1))` -/
def P1876977949040828623.Spec : Prop :=
  ∀ n, P1876977949040828623.a n = A188385 (n + 1)

end A188385

/-! ## A188385.P14729543502383342619

`(n+1)*A023443(A067132(n+1))`
-/

namespace A188385.P14729543502383342619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A023443 (A067132 (n + 1)).toNat

end

end A188385.P14729543502383342619

namespace A188385

/-- `(n+1)*A023443(A067132(n+1))` -/
def P14729543502383342619.Spec : Prop :=
  ∀ n, P14729543502383342619.a n = A188385 (n + 1)

end A188385

/-! ## A188385.P2302288638145677417

`(n+1)*A051282(A101296(n+1))`
-/

namespace A188385.P2302288638145677417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A051282 (A101296 (n + 1)).toNat

end

end A188385.P2302288638145677417

namespace A188385

/-- `(n+1)*A051282(A101296(n+1))` -/
def P2302288638145677417.Spec : Prop :=
  ∀ n, P2302288638145677417.a n = A188385 (n + 1)

end A188385

/-! ## A188385.P12192889907202437289

`(n+1)*A067029(A089247(n+1))`
-/

namespace A188385.P12192889907202437289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A067029 (A089247 (n + 1)).toNat

end

end A188385.P12192889907202437289

namespace A188385

/-- `(n+1)*A067029(A089247(n+1))` -/
def P12192889907202437289.Spec : Prop :=
  ∀ n, P12192889907202437289.a n = A188385 (n + 1)

end A188385

/-! ## A188385.P2226152341948756078

`(n+1)*A001222(A238745(n+1))`
-/

namespace A188385.P2226152341948756078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (A238745 (n + 1)).toNat

end

end A188385.P2226152341948756078

namespace A188385

/-- `(n+1)*A001222(A238745(n+1))` -/
def P2226152341948756078.Spec : Prop :=
  ∀ n, P2226152341948756078.a n = A188385 (n + 1)

end A188385

/-! ## A188385.P3040998246923135584

`(n+1)*A061395(A181819(n+1))`
-/

namespace A188385.P3040998246923135584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A061395 (A181819 (n + 1)).toNat

end

end A188385.P3040998246923135584

namespace A188385

/-- `(n+1)*A061395(A181819(n+1))` -/
def P3040998246923135584.Spec : Prop :=
  ∀ n, P3040998246923135584.a n = A188385 (n + 1)

end A188385

/-! ## A188385.P9023871818892615674

`(n+1)*A007814(A328400(n+1))`
-/

namespace A188385.P9023871818892615674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007814 (A328400 (n + 1)).toNat

end

end A188385.P9023871818892615674

namespace A188385

/-- `(n+1)*A007814(A328400(n+1))` -/
def P9023871818892615674.Spec : Prop :=
  ∀ n, P9023871818892615674.a n = A188385 (n + 1)

end A188385

/-! ## A188385.P1143884522367875871

`(n+1)*A061395(A329601(n+1))`
-/

namespace A188385.P1143884522367875871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A061395 (A329601 (n + 1)).toNat

end

end A188385.P1143884522367875871

namespace A188385

/-- `(n+1)*A061395(A329601(n+1))` -/
def P1143884522367875871.Spec : Prop :=
  ∀ n, P1143884522367875871.a n = A188385 (n + 1)

end A188385

/-! ## A188385.P8997373043446625163

`(n+1)*A001222(A304180(n+1))`
-/

namespace A188385.P8997373043446625163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (A304180 (n + 1)).toNat

end

end A188385.P8997373043446625163

namespace A188385

/-- `(n+1)*A001222(A304180(n+1))` -/
def P8997373043446625163.Spec : Prop :=
  ∀ n, P8997373043446625163.a n = A188385 (n + 1)

end A188385

/-! ## A188385.P1268399885319554391

`(n+1)*A051904(A066638(n+1))`
-/

namespace A188385.P1268399885319554391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A051904 (A066638 (n + 1)).toNat

end

end A188385.P1268399885319554391

namespace A188385

/-- `(n+1)*A051904(A066638(n+1))` -/
def P1268399885319554391.Spec : Prop :=
  ∀ n, P1268399885319554391.a n = A188385 (n + 1)

end A188385

/-! ## A188385.P9471529140062811598

`(n+1)*A071178(A085079(n+1))`
-/

namespace A188385.P9471529140062811598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A071178 (A085079 (n + 1)).toNat

end

end A188385.P9471529140062811598

namespace A188385

/-- `(n+1)*A071178(A085079(n+1))` -/
def P9471529140062811598.Spec : Prop :=
  ∀ n, P9471529140062811598.a n = A188385 (n + 1)

end A188385

/-! ## A188385.P15127429712518660106

`(n+1)*A061395(A293514(n+1))`
-/

namespace A188385.P15127429712518660106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A061395 (A293514 (n + 1)).toNat

end

end A188385.P15127429712518660106

namespace A188385

/-- `(n+1)*A061395(A293514(n+1))` -/
def P15127429712518660106.Spec : Prop :=
  ∀ n, P15127429712518660106.a n = A188385 (n + 1)

end A188385

/-! ## A188385.P4746083017257356559

`(n+1)*A001221(A124859(n+1))`
-/

namespace A188385.P4746083017257356559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001221 (A124859 (n + 1)).toNat

end

end A188385.P4746083017257356559

namespace A188385

/-- `(n+1)*A001221(A124859(n+1))` -/
def P4746083017257356559.Spec : Prop :=
  ∀ n, P4746083017257356559.a n = A188385 (n + 1)

end A188385

/-! ## A188385.P5863345026860123771

`(n+1)*A375359((n+1)²)`
-/

namespace A188385.P5863345026860123771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A375359 ((n + 1) ^ 2)

end

end A188385.P5863345026860123771

namespace A188385

/-- `(n+1)*A375359((n+1)²)` -/
def P5863345026860123771.Spec : Prop :=
  ∀ n, P5863345026860123771.a n = A188385 (n + 1)

end A188385

/-! ## A188385.P10901632778438201875

`(n+1)*A392276((n+1)²)`
-/

namespace A188385.P10901632778438201875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A392276 ((n + 1) ^ 2)

end

end A188385.P10901632778438201875

namespace A188385

/-- `(n+1)*A392276((n+1)²)` -/
def P10901632778438201875.Spec : Prop :=
  ∀ n, P10901632778438201875.a n = A188385 (n + 1)

end A188385

/-!
# A188386: a(n) = numerator(H(n+2)-H(n-1)), where H(n) = Sum_{k=1..n} 1/k is the n-th harmonic number.

The programs for A188386, the canonical program `A188386.P10311135604803051739` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188386 has offset 1).

The definition of A188386 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188386.P10311135604803051739

`(3-(-1)^(n+1))*(3*(n+1)²+6*(n+1)+2)/4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A188386

/-- `(3-(-1)^(n+1))*(3*(n+1)²+6*(n+1)+2)/4` -/
def P10311135604803051739.Spec : Prop :=
  ∀ n, P10311135604803051739.a n = (A188386 (n + 1) : ℚ)

end A188386

/-! ## A188386.P8827838525092299534

`lcm(2, ∑[A007310(n+2)])+1`
-/

namespace A188386.P8827838525092299534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A188386.P8827838525092299534

namespace A188386

/-- `lcm(2, ∑[A007310(n+2)])+1` -/
def P8827838525092299534.Spec : Prop :=
  ∀ n, (P8827838525092299534.a n : ℤ) = A188386 (n + 1)

end A188386

/-! ## A188386.P6280478276175105761

`A000265(A080663(n+2))`
-/

namespace A188386.P6280478276175105761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A080663 (n + 2)).toNat

end

end A188386.P6280478276175105761

namespace A188386

/-- `A000265(A080663(n+2))` -/
def P6280478276175105761.Spec : Prop :=
  ∀ n, P6280478276175105761.a n = A188386 (n + 1)

end A188386

/-! ## A188386.P15875535544077111106

`A000265(A033428(n+2)-1)`
-/

namespace A188386.P15875535544077111106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A033428 (n + 2) - 1).toNat

end

end A188386.P15875535544077111106

namespace A188386

/-- `A000265(A033428(n+2)-1)` -/
def P15875535544077111106.Spec : Prop :=
  ∀ n, P15875535544077111106.a n = A188386 (n + 1)

end A188386

/-! ## A188386.P4552353511582373677

`A000265(A056106(n+2)+n)`
-/

namespace A188386.P4552353511582373677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A056106 (n + 2) + (n : ℤ)).toNat

end

end A188386.P4552353511582373677

namespace A188386

/-- `A000265(A056106(n+2)+n)` -/
def P4552353511582373677.Spec : Prop :=
  ∀ n, P4552353511582373677.a n = A188386 (n + 1)

end A188386

/-! ## A188386.P2883994019456921813

`A213998(∑[n+3]+5)`
-/

namespace A188386.P2883994019456921813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213998 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A188386.P2883994019456921813

namespace A188386

/-- `A213998(∑[n+3]+5)` -/
def P2883994019456921813.Spec : Prop :=
  ∀ n, P2883994019456921813.a n = A188386 (n + 1)

end A188386

/-! ## A188386.P11078864188847973552

`A000265(A033569(n+2)+n+1)`
-/

namespace A188386.P11078864188847973552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A033569 (n + 2) + (n + 1 : ℤ)).toNat

end

end A188386.P11078864188847973552

namespace A188386

/-- `A000265(A033569(n+2)+n+1)` -/
def P11078864188847973552.Spec : Prop :=
  ∀ n, P11078864188847973552.a n = A188386 (n + 1)

end A188386

/-! ## A188386.P5825627504119947124

`A093411(A067725(n+1)+2)`
-/

namespace A188386.P5825627504119947124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A067725 (n + 1) + 2).toNat

end

end A188386.P5825627504119947124

namespace A188386

/-- `A093411(A067725(n+1)+2)` -/
def P5825627504119947124.Spec : Prop :=
  ∀ n, P5825627504119947124.a n = A188386 (n + 1)

end A188386

/-! ## A188386.P9047407942278141653

`A276283(lcm(n+1, n+3))`
-/

namespace A188386.P9047407942278141653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276283 (Nat.lcm (n + 1) (n + 3))

end

end A188386.P9047407942278141653

namespace A188386

/-- `A276283(lcm(n+1, n+3))` -/
def P9047407942278141653.Spec : Prop :=
  ∀ n, P9047407942278141653.a n = A188386 (n + 1)

end A188386

/-! ## A188386.P10624570236994286523

`A276283(A066830(n+2))`
-/

namespace A188386.P10624570236994286523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276283 (A066830 (n + 2)).toNat

end

end A188386.P10624570236994286523

namespace A188386

/-- `A276283(A066830(n+2))` -/
def P10624570236994286523.Spec : Prop :=
  ∀ n, P10624570236994286523.a n = A188386 (n + 1)

end A188386

/-!
# A188387: Central coefficient in (1 + (2^n+1)*x + 2^n*x^2)^n for n>=0.

The programs for A188387, there is no canonical definition to state claims against.
-/

/-! ## A188387.P14620259648571021404

`A307883(eq[A025581(n), A059268(n)])`
-/

namespace A188387.P14620259648571021404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307883 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A188387.P14620259648571021404

/-!
# A188388: Number of (n^2) X n binary arrays with rows in nonincreasing order and n ones in every column.

The programs for A188388, there is no canonical definition to state claims against.
-/

/-! ## A188388.P14007965781628813710

`A188392(2*(n+1)²-2*(n+1)+1)`
-/

namespace A188388.P14007965781628813710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188392 ((2 * (n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) + 1).toNat

end

end A188388.P14007965781628813710

/-!
# A188389: Number of (5*n) X 5 binary arrays with rows in nonincreasing order and n ones in every column.

The programs for A188389, there is no canonical definition to state claims against.
-/

/-! ## A188389.P4419985292901523337

`A188392(Δ[A264443(n)])`
-/

namespace A188389.P4419985292901523337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188392 (f1 (n + 1) - f1 n).toNat

end

end A188389.P4419985292901523337

/-! ## A188389.P3360755004684632393

`A188392(A046691(n+3))`
-/

namespace A188389.P3360755004684632393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188392 (A046691 (n + 3)).toNat

end

end A188389.P3360755004684632393

/-! ## A188389.P8097711809189078869

`A188392(eq[2, A092921(n)])`
-/

namespace A188389.P8097711809189078869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188392 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188389.P8097711809189078869

/-! ## A188389.P5065834791200571662

`A188392(eq[4, A193592(n)])`
-/

namespace A188389.P5065834791200571662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188392 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188389.P5065834791200571662

/-! ## A188389.P9496941599458111858

`A188392(eq[5, A239144(n)])`
-/

namespace A188389.P9496941599458111858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188392 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188389.P9496941599458111858

/-!
# A188390: Number of (6*n) X 6 binary arrays with rows in nonincreasing order and n ones in every column.

The programs for A188390, there is no canonical definition to state claims against.
-/

/-! ## A188390.P8113421346787291328

`A188392(A052905(n+3))`
-/

namespace A188390.P8113421346787291328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188392 (A052905 (n + 3)).toNat

end

end A188390.P8113421346787291328

/-! ## A188390.P7800962460875987774

`A188392(eq[3, A219347(n)])`
-/

namespace A188390.P7800962460875987774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188392 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188390.P7800962460875987774

/-! ## A188390.P4069952279642293754

`A188392(eq[5, A193592(n)])`
-/

namespace A188390.P4069952279642293754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188392 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188390.P4069952279642293754

/-! ## A188390.P839905026518161632

`A188392(eq[8, A258709(n)])`
-/

namespace A188390.P839905026518161632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188392 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188390.P839905026518161632

/-! ## A188390.P3913505136714231769

`A188392(eq[5, A025581(n)]+1)`
-/

namespace A188390.P3913505136714231769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188392 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A188390.P3913505136714231769

/-!
# A188391: Number of (7*n) X 7 binary arrays with rows in nonincreasing order and n ones in every column.

The programs for A188391, there is no canonical definition to state claims against.
-/

/-! ## A188391.P14108427745863468799

`A188392(eq[6, A193592(n)])`
-/

namespace A188391.P14108427745863468799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188392 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188391.P14108427745863468799

/-! ## A188391.P3035881802627931087

`A188392(eq[2, A219347(n)-2])`
-/

namespace A188391.P3035881802627931087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188392 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188391.P3035881802627931087

/-!
# A188392: T(n,k) = number of (n*k) X k binary arrays with rows in nonincreasing order and n ones in every column.

The programs for A188392, there is no canonical definition to state claims against.
-/

/-! ## A188392.P5401700204105048775

`A318360(A182944(n+1))`
-/

namespace A188392.P5401700204105048775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318360 (A182944 (n + 1)).toNat

end

end A188392.P5401700204105048775

/-! ## A188392.P3134681882764915494

`A318360(A037126(n+1)^A004736(n+1))`
-/

namespace A188392.P3134681882764915494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318360 (SequenceMachineLib.roundAway ((A037126 (n + 1) : ℚ) ^ (A004736 (n + 1) : ℤ))).toNat

end

end A188392.P3134681882764915494

/-! ## A188392.P10613302769460655337

`A306202(A349934(n+1))`
-/

namespace A188392.P10613302769460655337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306202 (A349934 (n + 1)).toNat

end

end A188392.P10613302769460655337

/-! ## A188392.P15808318288072495158

`A308557(A142589(n))+A283424(n)`
-/

namespace A188392.P15808318288072495158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308557 (A142589 n).toNat + A283424 n

end

end A188392.P15808318288072495158

/-! ## A188392.P17022116971128029704

`A326245(A330964(n))+A160185(n)`
-/

namespace A188392.P17022116971128029704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326245 (A330964 n).toNat + A160185 n

end

end A188392.P17022116971128029704

/-!
# A188393: Number of (7*n) X n binary arrays with rows in nonincreasing order and 7 ones in every column.

The programs for A188393, there is no canonical definition to state claims against.
-/

/-! ## A188393.P6728648472531259995

`A188392(eq[8, A131818(n+1)])`
-/

namespace A188393.P6728648472531259995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188392 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188393.P6728648472531259995

/-!
# A188395: a(n) = [n*r +k*r]-[n*r]-[k*r], where r=1/sqrt(2), k=4, [ ]=floor.

The programs for A188395, the canonical program `A188395.P9222550659096500199` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188395 has offset 1).

The definition of A188395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188395.P9441266433062450941

`char[A188397(n+1)-1]`
-/

namespace A188395.P9441266433062450941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188397 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188395.P9441266433062450941

namespace A188395

/-- `char[A188397(n+1)-1]` -/
def P9441266433062450941.Spec : Prop :=
  ∀ n, (P9441266433062450941.a n : ℤ) = A188395 (n + 1)

end A188395

/-! ## A188395.P7564725455443746941

`A188398(A083035(n+1)+n)`
-/

namespace A188395.P7564725455443746941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188398 (A083035 (n + 1) + (n : ℤ)).toNat

end

end A188395.P7564725455443746941

namespace A188395

/-- `A188398(A083035(n+1)+n)` -/
def P7564725455443746941.Spec : Prop :=
  ∀ n, P7564725455443746941.a n = A188395 (n + 1)

end A188395

/-! ## A188395.P4860889373311032324

`A188398(A188398(n+1)+n)`
-/

namespace A188395.P4860889373311032324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188398 (A188398 (n + 1) + (n : ℤ)).toNat

end

end A188395.P4860889373311032324

namespace A188395

/-- `A188398(A188398(n+1)+n)` -/
def P4860889373311032324.Spec : Prop :=
  ∀ n, P4860889373311032324.a n = A188395 (n + 1)

end A188395

/-! ## A188395.P9222550659096500199

`A080764(n*A288997(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A188395

/-- `A080764(n*A288997(n+1))` -/
def P9222550659096500199.Spec : Prop :=
  ∀ n, P9222550659096500199.a n = A188395 (n + 1)

theorem P9222550659096500199.correct : P9222550659096500199.Spec := by
  intro n
  simp only [A188395, Nat.add_sub_cancel]

end A188395

/-! ## A188395.P4949719937083345467

`1-A171588(n+1)*A288997(n+1)`
-/

namespace A188395.P4949719937083345467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A171588 (n + 1) * A288997 (n + 1)

end

end A188395.P4949719937083345467

namespace A188395

/-- `1-A171588(n+1)*A288997(n+1)` -/
def P4949719937083345467.Spec : Prop :=
  ∀ n, P4949719937083345467.a n = A188395 (n + 1)

end A188395

/-! ## A188395.P14960581680706433769

`A080764(A286996(n+2)+n)`
-/

namespace A188395.P14960581680706433769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 (A286996 (n + 2) + (n : ℤ)).toNat

end

end A188395.P14960581680706433769

namespace A188395

/-- `A080764(A286996(n+2)+n)` -/
def P14960581680706433769.Spec : Prop :=
  ∀ n, P14960581680706433769.a n = A188395 (n + 1)

end A188395

/-! ## A188395.P7715127614370076883

`A080764(n-A288997(n+2))`
-/

namespace A188395.P7715127614370076883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 ((n : ℤ) - A288997 (n + 2)).toNat

end

end A188395.P7715127614370076883

namespace A188395

/-- `A080764(n-A288997(n+2))` -/
def P7715127614370076883.Spec : Prop :=
  ∀ n, P7715127614370076883.a n = A188395 (n + 1)

end A188395

/-! ## A188395.P10762328716122255727

`A188295(A286996(n+2)+n+2)`
-/

namespace A188395.P10762328716122255727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (A286996 (n + 2) + (n + 2 : ℤ)).toNat

end

end A188395.P10762328716122255727

namespace A188395

/-- `A188295(A286996(n+2)+n+2)` -/
def P10762328716122255727.Spec : Prop :=
  ∀ n, P10762328716122255727.a n = A188395 (n + 1)

end A188395

/-! ## A188395.P18431701544109770015

`A080764(n*A080764(A097508(n+1)))`
-/

namespace A188395.P18431701544109770015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 ((n : ℤ) * A080764 (A097508 (n + 1)).toNat).toNat

end

end A188395.P18431701544109770015

namespace A188395

/-- `A080764(n*A080764(A097508(n+1)))` -/
def P18431701544109770015.Spec : Prop :=
  ∀ n, P18431701544109770015.a n = A188395 (n + 1)

end A188395

/-! ## A188395.P12069699659140388180

`A188374(n+1)+A188374(n+3)`
-/

namespace A188395.P12069699659140388180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188374 (n + 1) + A188374 (n + 3)

end

end A188395.P12069699659140388180

namespace A188395

/-- `A188374(n+1)+A188374(n+3)` -/
def P12069699659140388180.Spec : Prop :=
  ∀ n, P12069699659140388180.a n = A188395 (n + 1)

end A188395

/-! ## A188395.P12484273092727278941

`A188318(n+5)`
-/

namespace A188395.P12484273092727278941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188318 (n + 5)

end

end A188395.P12484273092727278941

namespace A188395

/-- `A188318(n+5)` -/
def P12484273092727278941.Spec : Prop :=
  ∀ n, P12484273092727278941.a n = A188395 (n + 1)

end A188395

/-! ## A188395.P6828359488181207174

`A187976(A080755(n+1))`
-/

namespace A188395.P6828359488181207174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187976 (A080755 (n + 1)).toNat

end

end A188395.P6828359488181207174

namespace A188395

/-- `A187976(A080755(n+1))` -/
def P6828359488181207174.Spec : Prop :=
  ∀ n, P6828359488181207174.a n = A188395 (n + 1)

end A188395

/-! ## A188395.P4768768292901370076

`A187976(A083088(n+1))`
-/

namespace A188395.P4768768292901370076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187976 (A083088 (n + 1)).toNat

end

end A188395.P4768768292901370076

namespace A188395

/-- `A187976(A083088(n+1))` -/
def P4768768292901370076.Spec : Prop :=
  ∀ n, P4768768292901370076.a n = A188395 (n + 1)

end A188395

/-! ## A188395.P16063195073376835049

`A187976(A003152(n+1)+1)`
-/

namespace A188395.P16063195073376835049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187976 (A003152 (n + 1) + 1).toNat

end

end A188395.P16063195073376835049

namespace A188395

/-- `A187976(A003152(n+1)+1)` -/
def P16063195073376835049.Spec : Prop :=
  ∀ n, P16063195073376835049.a n = A188395 (n + 1)

end A188395

/-! ## A188395.P1528687920533848266

`A080764(A294180(n+1)+n)`
-/

namespace A188395.P1528687920533848266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 (A294180 (n + 1) + (n : ℤ)).toNat

end

end A188395.P1528687920533848266

namespace A188395

/-- `A080764(A294180(n+1)+n)` -/
def P1528687920533848266.Spec : Prop :=
  ∀ n, P1528687920533848266.a n = A188395 (n + 1)

end A188395

/-! ## A188395.P2286998986373983450

`A188295(A294180(n+1)+n+2)`
-/

namespace A188395.P2286998986373983450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (A294180 (n + 1) + (n + 2 : ℤ)).toNat

end

end A188395.P2286998986373983450

namespace A188395

/-- `A188295(A294180(n+1)+n+2)` -/
def P2286998986373983450.Spec : Prop :=
  ∀ n, P2286998986373983450.a n = A188395 (n + 1)

end A188395

/-!
# A188396: Positions of 0 in A188395; complement of A188397.

The programs for A188396, the canonical program `A188396.P9231887301551428425` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188396 has offset 1).

The definition of A188396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188396.P9231887301551428425

`∑[4*A188295(n+1)+3]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A188396

/-- `∑[4*A188295(n+1)+3]` -/
def P9231887301551428425.Spec : Prop :=
  ∀ n, P9231887301551428425.a n = A188396 (n + 1)

theorem P9231887301551428425.correct : P9231887301551428425.Spec := by
  intro n
  simp only [A188396, Nat.add_sub_cancel]

end A188396

/-! ## A188396.P8004279978515267342

`2*A188376(n+1)+n+1`
-/

namespace A188396.P8004279978515267342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188376 (n + 1) + (n + 1 : ℤ)

end

end A188396.P8004279978515267342

namespace A188396

/-- `2*A188376(n+1)+n+1` -/
def P8004279978515267342.Spec : Prop :=
  ∀ n, P8004279978515267342.a n = A188396 (n + 1)

end A188396

/-! ## A188396.P9890810749685101375

`4*A003152(n+1)-(n+1)`
-/

namespace A188396.P9890810749685101375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A003152 (n + 1) - (n + 1 : ℤ)

end

end A188396.P9890810749685101375

namespace A188396

/-- `4*A003152(n+1)-(n+1)` -/
def P9890810749685101375.Spec : Prop :=
  ∀ n, P9890810749685101375.a n = A188396 (n + 1)

end A188396

/-! ## A188396.P15032443686575747236

`∑[A001844(Δ[A049472(n)])+2]`
-/

namespace A188396.P15032443686575747236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (f2 (n + 1) - f2 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188396.P15032443686575747236

namespace A188396

/-- `∑[A001844(Δ[A049472(n)])+2]` -/
def P15032443686575747236.Spec : Prop :=
  ∀ n, P15032443686575747236.a n = A188396 (n + 1)

end A188396

/-! ## A188396.P2137977382585216444

`A187971(n+1)+A003152(n+1)`
-/

namespace A188396.P2137977382585216444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187971 (n + 1) + A003152 (n + 1)

end

end A188396.P2137977382585216444

namespace A188396

/-- `A187971(n+1)+A003152(n+1)` -/
def P2137977382585216444.Spec : Prop :=
  ∀ n, P2137977382585216444.a n = A188396 (n + 1)

end A188396

/-! ## A188396.P13732428007474629140

`A003152(n+1)+A188376(n+1)+A003152(n+1)`
-/

namespace A188396.P13732428007474629140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1) + (A188376 (n + 1) + A003152 (n + 1))

end

end A188396.P13732428007474629140

namespace A188396

/-- `A003152(n+1)+A188376(n+1)+A003152(n+1)` -/
def P13732428007474629140.Spec : Prop :=
  ∀ n, P13732428007474629140.a n = A188396 (n + 1)

end A188396

/-! ## A188396.P18274352942080475212

`A188319(n+2)-4`
-/

namespace A188396.P18274352942080475212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188319 (n + 2) - 4

end

end A188396.P18274352942080475212

namespace A188396

/-- `A188319(n+2)-4` -/
def P18274352942080475212.Spec : Prop :=
  ∀ n, P18274352942080475212.a n = A188396 (n + 1)

end A188396

/-! ## A188396.P16651456407905720911

`∑[A000040(Δ[2*A285077(n+1)])]`
-/

namespace A188396.P16651456407905720911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285077 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188396.P16651456407905720911

namespace A188396

/-- `∑[A000040(Δ[2*A285077(n+1)])]` -/
def P16651456407905720911.Spec : Prop :=
  ∀ n, P16651456407905720911.a n = A188396 (n + 1)

end A188396

/-! ## A188396.P5997770488927251597

`A001954(A003152(n+1)-1)+2`
-/

namespace A188396.P5997770488927251597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 (A003152 (n + 1) - 1).toNat + 2

end

end A188396.P5997770488927251597

namespace A188396

/-- `A001954(A003152(n+1)-1)+2` -/
def P5997770488927251597.Spec : Prop :=
  ∀ n, P5997770488927251597.a n = A188396 (n + 1)

end A188396

/-! ## A188396.P5039981675513667420

`A001954(A080755(n+1)-2)+2`
-/

namespace A188396.P5039981675513667420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 (A080755 (n + 1) - 2).toNat + 2

end

end A188396.P5039981675513667420

namespace A188396

/-- `A001954(A080755(n+1)-2)+2` -/
def P5039981675513667420.Spec : Prop :=
  ∀ n, P5039981675513667420.a n = A188396 (n + 1)

end A188396

/-! ## A188396.P6579562060862226647

`A001952(A003152(n+1))`
-/

namespace A188396.P6579562060862226647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (A003152 (n + 1)).toNat

end

end A188396.P6579562060862226647

namespace A188396

/-- `A001952(A003152(n+1))` -/
def P6579562060862226647.Spec : Prop :=
  ∀ n, P6579562060862226647.a n = A188396 (n + 1)

end A188396

/-! ## A188396.P9457289240928951089

`A288999(comp[A001951(n)+n])`
-/

namespace A188396.P9457289240928951089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288999 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A188396.P9457289240928951089

namespace A188396

/-- `A288999(comp[A001951(n)+n])` -/
def P9457289240928951089.Spec : Prop :=
  ∀ n, P9457289240928951089.a n = A188396 (n + 1)

end A188396

/-! ## A188396.P12035094791333748792

`A001952(A080755(n+1)-1)`
-/

namespace A188396.P12035094791333748792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (A080755 (n + 1) - 1).toNat

end

end A188396.P12035094791333748792

namespace A188396

/-- `A001952(A080755(n+1)-1)` -/
def P12035094791333748792.Spec : Prop :=
  ∀ n, P12035094791333748792.a n = A188396 (n + 1)

end A188396

/-! ## A188396.P1279332110311995450

`A001952(A285074(n+2)-2)`
-/

namespace A188396.P1279332110311995450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (A285074 (n + 2) - 2).toNat

end

end A188396.P1279332110311995450

namespace A188396

/-- `A001952(A285074(n+2)-2)` -/
def P1279332110311995450.Spec : Prop :=
  ∀ n, P1279332110311995450.a n = A188396 (n + 1)

end A188396

/-! ## A188396.P16222331065979820817

`A001952(A285077(n+2)-2)`
-/

namespace A188396.P16222331065979820817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (A285077 (n + 2) - 2).toNat

end

end A188396.P16222331065979820817

namespace A188396

/-- `A001952(A285077(n+2)-2)` -/
def P16222331065979820817.Spec : Prop :=
  ∀ n, P16222331065979820817.a n = A188396 (n + 1)

end A188396

/-! ## A188396.P1920909263775494481

`A184621(eq[1, A144611(n)])+1`
-/

namespace A188396.P1920909263775494481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184621 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A188396.P1920909263775494481

namespace A188396

/-- `A184621(eq[1, A144611(n)])+1` -/
def P1920909263775494481.Spec : Prop :=
  ∀ n, P1920909263775494481.a n = A188396 (n + 1)

end A188396

/-! ## A188396.P15182430937699254073

`A001952(A049474(n+1)+n)`
-/

namespace A188396.P15182430937699254073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (A049474 (n + 1) + (n : ℤ)).toNat

end

end A188396.P15182430937699254073

namespace A188396

/-- `A001952(A049474(n+1)+n)` -/
def P15182430937699254073.Spec : Prop :=
  ∀ n, P15182430937699254073.a n = A188396 (n + 1)

end A188396

/-! ## A188396.P16623090332505774216

`A258834(A049474(n+1)+n)`
-/

namespace A188396.P16623090332505774216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258834 (A049474 (n + 1) + (n : ℤ)).toNat

end

end A188396.P16623090332505774216

namespace A188396

/-- `A258834(A049474(n+1)+n)` -/
def P16623090332505774216.Spec : Prop :=
  ∀ n, P16623090332505774216.a n = A188396 (n + 1)

end A188396

/-! ## A188396.P7059739324620168528

`A001952(floor(A001952(n+1)/2))`
-/

namespace A188396.P7059739324620168528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 ⌊(A001952 (n + 1) : ℚ) / 2⌋.toNat

end

end A188396.P7059739324620168528

namespace A188396

/-- `A001952(floor(A001952(n+1)/2))` -/
def P7059739324620168528.Spec : Prop :=
  ∀ n, P7059739324620168528.a n = A188396 (n + 1)

end A188396

/-! ## A188396.P12356919752349475817

`A001952(∑[A188295(n+1)+1])`
-/

namespace A188396.P12356919752349475817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A188396.P12356919752349475817

namespace A188396

/-- `A001952(∑[A188295(n+1)+1])` -/
def P12356919752349475817.Spec : Prop :=
  ∀ n, P12356919752349475817.a n = A188396 (n + 1)

end A188396

/-!
# A188397: Positions of 1 in A188395; complement of A188396.

The programs for A188397, the canonical program `A188397.P1006503134452683607` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188397 has offset 1).

The definition of A188397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188397.P1006503134452683607

`comp[A188396(n+1)-1]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A188397

/-- `comp[A188396(n+1)-1]+1` -/
def P1006503134452683607.Spec : Prop :=
  ∀ n, (P1006503134452683607.a n : ℤ) = A188397 (n + 1)

theorem P1006503134452683607.correct : P1006503134452683607.Spec := by
  intro n
  simp only [A188397, Nat.add_sub_cancel]

end A188397

/-! ## A188397.P7837784678601466428

`∑[char[2*A188376(n+1)]+1]`
-/

namespace A188397.P7837784678601466428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188376 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188397.P7837784678601466428

namespace A188397

/-- `∑[char[2*A188376(n+1)]+1]` -/
def P7837784678601466428.Spec : Prop :=
  ∀ n, (P7837784678601466428.a n : ℤ) = A188397 (n + 1)

end A188397

/-! ## A188397.P10828456915566821744

`∑[char[∑[4*A188295(n+1)+2]]+1]`
-/

namespace A188397.P10828456915566821744
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A188295 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188397.P10828456915566821744

namespace A188397

/-- `∑[char[∑[4*A188295(n+1)+2]]+1]` -/
def P10828456915566821744.Spec : Prop :=
  ∀ n, (P10828456915566821744.a n : ℤ) = A188397 (n + 1)

end A188397

/-! ## A188397.P12097281233751503284

`∑[char[record[(2*n+1)*A188374(n+1)+1]]+1]`
-/

namespace A188397.P12097281233751503284
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A188374 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188397.P12097281233751503284

namespace A188397

/-- `∑[char[record[(2*n+1)*A188374(n+1)+1]]+1]` -/
def P12097281233751503284.Spec : Prop :=
  ∀ n, (P12097281233751503284.a n : ℤ) = A188397 (n + 1)

end A188397

/-! ## A188397.P1439963438790179208

`∪[A187974(n+1), A001954(n)]`
-/

namespace A188397.P1439963438790179208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188397.P1439963438790179208

namespace A188397

/-- `∪[A187974(n+1), A001954(n)]` -/
def P1439963438790179208.Spec : Prop :=
  ∀ n, (P1439963438790179208.a n : ℤ) = A188397 (n + 1)

end A188397

/-! ## A188397.P342211734423575957

`∪[A288998(n+1), A083051(n)]`
-/

namespace A188397.P342211734423575957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083051 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188397.P342211734423575957

namespace A188397

/-- `∪[A288998(n+1), A083051(n)]` -/
def P342211734423575957.Spec : Prop :=
  ∀ n, (P342211734423575957.a n : ℤ) = A188397 (n + 1)

end A188397

/-! ## A188397.P8894119059190574109

`∪[A288998(n+1), A083088(n)]`
-/

namespace A188397.P8894119059190574109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188397.P8894119059190574109

namespace A188397

/-- `∪[A288998(n+1), A083088(n)]` -/
def P8894119059190574109.Spec : Prop :=
  ∀ n, (P8894119059190574109.a n : ℤ) = A188397 (n + 1)

end A188397

/-! ## A188397.P721296321032165214

`∪[A187974(n+1), A258833(n)]`
-/

namespace A188397.P721296321032165214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258833 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188397.P721296321032165214

namespace A188397

/-- `∪[A187974(n+1), A258833(n)]` -/
def P721296321032165214.Spec : Prop :=
  ∀ n, (P721296321032165214.a n : ℤ) = A188397 (n + 1)

end A188397

/-! ## A188397.P7910508066264700597

`comp[A184119(A003152(n+1))]+1`
-/

namespace A188397.P7910508066264700597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184119 (A003152 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188397.P7910508066264700597

namespace A188397

/-- `comp[A184119(A003152(n+1))]+1` -/
def P7910508066264700597.Spec : Prop :=
  ∀ n, (P7910508066264700597.a n : ℤ) = A188397 (n + 1)

end A188397

/-! ## A188397.P1834908433998327237

`∪[A003151(n+1), A288998(n+1)]`
-/

namespace A188397.P1834908433998327237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188397.P1834908433998327237

namespace A188397

/-- `∪[A003151(n+1), A288998(n+1)]` -/
def P1834908433998327237.Spec : Prop :=
  ∀ n, (P1834908433998327237.a n : ℤ) = A188397 (n + 1)

end A188397

/-! ## A188397.P3578221602717464009

`∪[A120753(n+1), A187974(n+1)]`
-/

namespace A188397.P3578221602717464009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188397.P3578221602717464009

namespace A188397

/-- `∪[A120753(n+1), A187974(n+1)]` -/
def P3578221602717464009.Spec : Prop :=
  ∀ n, (P3578221602717464009.a n : ℤ) = A188397 (n + 1)

end A188397

/-! ## A188397.P5825129105333318372

`∪[A059649(n+1), A288998(n+1)]`
-/

namespace A188397.P5825129105333318372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188397.P5825129105333318372

namespace A188397

/-- `∪[A059649(n+1), A288998(n+1)]` -/
def P5825129105333318372.Spec : Prop :=
  ∀ n, (P5825129105333318372.a n : ℤ) = A188397 (n + 1)

end A188397

/-! ## A188397.P5610269753477521241

`∪[A080755(n+1), A288998(n+1)]`
-/

namespace A188397.P5610269753477521241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188397.P5610269753477521241

namespace A188397

/-- `∪[A080755(n+1), A288998(n+1)]` -/
def P5610269753477521241.Spec : Prop :=
  ∀ n, (P5610269753477521241.a n : ℤ) = A188397 (n + 1)

end A188397

/-! ## A188397.P4848009041777794167

`∪[A187974(n+1), A188265(n+1)]`
-/

namespace A188397.P4848009041777794167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188397.P4848009041777794167

namespace A188397

/-- `∪[A187974(n+1), A188265(n+1)]` -/
def P4848009041777794167.Spec : Prop :=
  ∀ n, (P4848009041777794167.a n : ℤ) = A188397 (n + 1)

end A188397

/-! ## A188397.P5851574046013112120

`∪[A187974(n+1), A188298(n+1)]`
-/

namespace A188397.P5851574046013112120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188397.P5851574046013112120

namespace A188397

/-- `∪[A187974(n+1), A188298(n+1)]` -/
def P5851574046013112120.Spec : Prop :=
  ∀ n, (P5851574046013112120.a n : ℤ) = A188397 (n + 1)

end A188397

/-! ## A188397.P5882124439963923635

`∪[A187974(n+1), A188372(n+1)]`
-/

namespace A188397.P5882124439963923635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188397.P5882124439963923635

namespace A188397

/-- `∪[A187974(n+1), A188372(n+1)]` -/
def P5882124439963923635.Spec : Prop :=
  ∀ n, (P5882124439963923635.a n : ℤ) = A188397 (n + 1)

end A188397

/-! ## A188397.P13156990493761973811

`∪[A187974(n+1), A190773(n+1)]`
-/

namespace A188397.P13156990493761973811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188397.P13156990493761973811

namespace A188397

/-- `∪[A187974(n+1), A190773(n+1)]` -/
def P13156990493761973811.Spec : Prop :=
  ∀ n, (P13156990493761973811.a n : ℤ) = A188397 (n + 1)

end A188397

/-! ## A188397.P14280967241651934547

`∪[A187971(n+1), A288998(n+1)]`
-/

namespace A188397.P14280967241651934547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188397.P14280967241651934547

namespace A188397

/-- `∪[A187971(n+1), A288998(n+1)]` -/
def P14280967241651934547.Spec : Prop :=
  ∀ n, (P14280967241651934547.a n : ℤ) = A188397 (n + 1)

end A188397

/-! ## A188397.P10519406683736072574

`∪[A188045(n+1), A288998(n+1)]`
-/

namespace A188397.P10519406683736072574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188397.P10519406683736072574

namespace A188397

/-- `∪[A188045(n+1), A288998(n+1)]` -/
def P10519406683736072574.Spec : Prop :=
  ∀ n, (P10519406683736072574.a n : ℤ) = A188397 (n + 1)

end A188397

/-! ## A188397.P6286749035191811376

`∪[A188376(n+1), A288998(n+1)]`
-/

namespace A188397.P6286749035191811376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188397.P6286749035191811376

namespace A188397

/-- `∪[A188376(n+1), A288998(n+1)]` -/
def P6286749035191811376.Spec : Prop :=
  ∀ n, (P6286749035191811376.a n : ℤ) = A188397 (n + 1)

end A188397

/-!
# A188398: a(n) = [n*r+k*r] - [n*r] - [k*r], where r=1/sqrt(2), k=5, [ ]=floor.

The programs for A188398, the canonical program `A188398.P6758079681677817296` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188398 has offset 1).

The definition of A188398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188398.P6758079681677817296

`char[A188265(n+1)-1]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A188398

/-- `char[A188265(n+1)-1]` -/
def P6758079681677817296.Spec : Prop :=
  ∀ n, (P6758079681677817296.a n : ℤ) = A188398 (n + 1)

theorem P6758079681677817296.correct : P6758079681677817296.Spec := by
  intro n
  simp only [A188398, Nat.add_sub_cancel]

end A188398

/-! ## A188398.P9600091949992970264

`A080764(n+4)*A080764(n)`
-/

namespace A188398.P9600091949992970264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 (n + 4) * A080764 n

end

end A188398.P9600091949992970264

namespace A188398

/-- `A080764(n+4)*A080764(n)` -/
def P9600091949992970264.Spec : Prop :=
  ∀ n, P9600091949992970264.a n = A188398 (n + 1)

end A188398

/-! ## A188398.P17913756159091173188

`A188321(n+6)`
-/

namespace A188398.P17913756159091173188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188321 (n + 6)

end

end A188398.P17913756159091173188

namespace A188398

/-- `A188321(n+6)` -/
def P17913756159091173188.Spec : Prop :=
  ∀ n, P17913756159091173188.a n = A188398 (n + 1)

end A188398

/-! ## A188398.P4936764961995233220

`A187976(A080755(n+1)+2)`
-/

namespace A188398.P4936764961995233220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187976 (A080755 (n + 1) + 2).toNat

end

end A188398.P4936764961995233220

namespace A188398

/-- `A187976(A080755(n+1)+2)` -/
def P4936764961995233220.Spec : Prop :=
  ∀ n, P4936764961995233220.a n = A188398 (n + 1)

end A188398

/-! ## A188398.P4411692941326827905

`A187976(A083088(n+1)+2)`
-/

namespace A188398.P4411692941326827905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187976 (A083088 (n + 1) + 2).toNat

end

end A188398.P4411692941326827905

namespace A188398

/-- `A187976(A083088(n+1)+2)` -/
def P4411692941326827905.Spec : Prop :=
  ∀ n, P4411692941326827905.a n = A188398 (n + 1)

end A188398

/-! ## A188398.P12179047824155857049

`A188374(n+1)+A171588(n+2)*A307247(n+1)`
-/

namespace A188398.P12179047824155857049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188374 (n + 1) + A171588 (n + 2) * A307247 (n + 1)

end

end A188398.P12179047824155857049

namespace A188398

/-- `A188374(n+1)+A171588(n+2)*A307247(n+1)` -/
def P12179047824155857049.Spec : Prop :=
  ∀ n, P12179047824155857049.a n = A188398 (n + 1)

end A188398

/-!
# A188399: Positions of 0 in A188398; complement of A188265.

The programs for A188399, the canonical program `A188399.P12920571066288009354` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188399 has offset 1).

The definition of A188399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188399.P12920571066288009354

`A188322(n+4)-5`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A188399

/-- `A188322(n+4)-5` -/
def P12920571066288009354.Spec : Prop :=
  ∀ n, P12920571066288009354.a n = A188399 (n + 1)

theorem P12920571066288009354.correct : P12920571066288009354.Spec := by
  intro n
  simp only [A188399, Nat.add_sub_cancel]

end A188399

/-! ## A188399.P1725778753167902097

`∑[A274641(Δ[A188322(n+3)])]`
-/

namespace A188399.P1725778753167902097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188322 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188399.P1725778753167902097

namespace A188399

/-- `∑[A274641(Δ[A188322(n+3)])]` -/
def P1725778753167902097.Spec : Prop :=
  ∀ n, P1725778753167902097.a n = A188399 (n + 1)

end A188399

/-! ## A188399.P11760563028932507445

`A258833(A187974(n+1)-1)+1`
-/

namespace A188399.P11760563028932507445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258833 (A187974 (n + 1) - 1).toNat + 1

end

end A188399.P11760563028932507445

namespace A188399

/-- `A258833(A187974(n+1)-1)+1` -/
def P11760563028932507445.Spec : Prop :=
  ∀ n, P11760563028932507445.a n = A188399 (n + 1)

end A188399

/-! ## A188399.P17589459257856957010

`A001953(A187974(n+1))`
-/

namespace A188399.P17589459257856957010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 (A187974 (n + 1)).toNat

end

end A188399.P17589459257856957010

namespace A188399

/-- `A001953(A187974(n+1))` -/
def P17589459257856957010.Spec : Prop :=
  ∀ n, P17589459257856957010.a n = A188399 (n + 1)

end A188399

/-! ## A188399.P1919872426745238703

`A049474(2*A187974(n+1))`
-/

namespace A188399.P1919872426745238703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (2 * A187974 (n + 1)).toNat

end

end A188399.P1919872426745238703

namespace A188399

/-- `A049474(2*A187974(n+1))` -/
def P1919872426745238703.Spec : Prop :=
  ∀ n, P1919872426745238703.a n = A188399 (n + 1)

end A188399

/-! ## A188399.P10143810253914318286

`A049474(A187974(n+1)+A187974(n+1))`
-/

namespace A188399.P10143810253914318286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (A187974 (n + 1) + A187974 (n + 1)).toNat

end

end A188399.P10143810253914318286

namespace A188399

/-- `A049474(A187974(n+1)+A187974(n+1))` -/
def P10143810253914318286.Spec : Prop :=
  ∀ n, P10143810253914318286.a n = A188399 (n + 1)

end A188399

/-! ## A188399.P15262655296824204440

`lt[A294180(n+5), A294180(A028310(n))]`
-/

namespace A188399.P15262655296824204440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294180 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294180 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188399.P15262655296824204440

namespace A188399

/-- `lt[A294180(n+5), A294180(A028310(n))]` -/
def P15262655296824204440.Spec : Prop :=
  ∀ n, (P15262655296824204440.a n : ℤ) = A188399 (n + 1)

end A188399

/-! ## A188399.P14861882305868078856

`lt[A294180(n+5), A020639(A036694(n+1))]`
-/

namespace A188399.P14861882305868078856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294180 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A036694 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188399.P14861882305868078856

namespace A188399

/-- `lt[A294180(n+5), A020639(A036694(n+1))]` -/
def P14861882305868078856.Spec : Prop :=
  ∀ n, (P14861882305868078856.a n : ℤ) = A188399 (n + 1)

end A188399

