import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C008
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C027
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C002
import Seq.B003.C000
import Seq.B004.C000
import Seq.B005.C000
import Seq.B006.C000
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
import Seq.Opaque.C007
import Seq.Opaque.C010
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A025900: Expansion of 1/((1-x^6)*(1-x^7)*(1-x^11)).

The programs for A025900, the canonical program `A025900.P14606088347926284092` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025900 has offset 0).

The definition of A025900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025900.P14606088347926284092

`A025848(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A025900

/-- `A025848(n)-a(n-3)` -/
def P14606088347926284092.Spec : Prop :=
  ∀ n, P14606088347926284092.a n = A025900 n

theorem P14606088347926284092.correct : P14606088347926284092.Spec := by
  intro n
  simp only [A025900]

end A025900

/-! ## A025900.P14807907883851137539

`Δ[A029108(n)-A029420(n)]`
-/

namespace A025900.P14807907883851137539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029108 n - A029420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025900.P14807907883851137539

namespace A025900

/-- `Δ[A029108(n)-A029420(n)]` -/
def P14807907883851137539.Spec : Prop :=
  ∀ n, P14807907883851137539.a n = A025900 n

end A025900

/-! ## A025900.P12939714623740888779

`Δ[∑[A025899(n)]-A029420(n)]`
-/

namespace A025900.P12939714623740888779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025899 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025900.P12939714623740888779

namespace A025900

/-- `Δ[∑[A025899(n)]-A029420(n)]` -/
def P12939714623740888779.Spec : Prop :=
  ∀ n, P12939714623740888779.a n = A025900 n

end A025900

/-! ## A025900.P10290754878168358613

`A025899(n+1)-Δ[A029420(n)]`
-/

namespace A025900.P10290754878168358613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025899 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025900.P10290754878168358613

namespace A025900

/-- `A025899(n+1)-Δ[A029420(n)]` -/
def P10290754878168358613.Spec : Prop :=
  ∀ n, P10290754878168358613.a n = A025900 n

end A025900

/-! ## A025900.P17732110589413467508

`A025870(n+2)+A029350(n)-A029350(n+2)`
-/

namespace A025900.P17732110589413467508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025870 (n + 2) + (A029350 n - A029350 (n + 2))

end

end A025900.P17732110589413467508

namespace A025900

/-- `A025870(n+2)+A029350(n)-A029350(n+2)` -/
def P17732110589413467508.Spec : Prop :=
  ∀ n, P17732110589413467508.a n = A025900 n

end A025900

/-! ## A025900.P9252746423147318954

`A025899(n+1)+A025899(n+6)-A025885(n+6)`
-/

namespace A025900.P9252746423147318954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025899 (n + 1) + (A025899 (n + 6) - A025885 (n + 6))

end

end A025900.P9252746423147318954

namespace A025900

/-- `A025899(n+1)+A025899(n+6)-A025885(n+6)` -/
def P9252746423147318954.Spec : Prop :=
  ∀ n, P9252746423147318954.a n = A025900 n

end A025900

/-! ## A025900.P2796778028644063141

`A029217(n)-A029437(2*n+3)`
-/

namespace A025900.P2796778028644063141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029217 n - A029437 (2 * n + 3)

end

end A025900.P2796778028644063141

namespace A025900

/-- `A029217(n)-A029437(2*n+3)` -/
def P2796778028644063141.Spec : Prop :=
  ∀ n, P2796778028644063141.a n = A025900 n

end A025900

/-! ## A025900.P5482195582358158461

`A025819(n)-Δ[A029235(2*n+1)]`
-/

namespace A025900.P5482195582358158461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029235 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025819 n - (f1 (n + 1) - f1 n)

end

end A025900.P5482195582358158461

namespace A025900

/-- `A025819(n)-Δ[A029235(2*n+1)]` -/
def P5482195582358158461.Spec : Prop :=
  ∀ n, P5482195582358158461.a n = A025900 n

end A025900

/-! ## A025900.P10891877919525099997

`A029437(2*n+7)-A029437(2*n+3)`
-/

namespace A025900.P10891877919525099997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029437 (2 * n + 7) - A029437 (2 * n + 3)

end

end A025900.P10891877919525099997

namespace A025900

/-- `A029437(2*n+7)-A029437(2*n+3)` -/
def P10891877919525099997.Spec : Prop :=
  ∀ n, P10891877919525099997.a n = A025900 n

end A025900

/-! ## A025900.P2777595889086784517

`Δ[A029437(2*n+3)+A029437(2*n+5)]`
-/

namespace A025900.P2777595889086784517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029437 (2 * n + 3) + A029437 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025900.P2777595889086784517

namespace A025900

/-- `Δ[A029437(2*n+3)+A029437(2*n+5)]` -/
def P2777595889086784517.Spec : Prop :=
  ∀ n, P2777595889086784517.a n = A025900 n

end A025900

/-!
# A025901: Expansion of 1/((1-x^6)*(1-x^7)*(1-x^12)).

The programs for A025901, the canonical program `A025901.P7759662539472406863` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025901 has offset 0).

The definition of A025901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025901.P7759662539472406863

`A025849(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A025901

/-- `A025849(n)-a(n-3)` -/
def P7759662539472406863.Spec : Prop :=
  ∀ n, P7759662539472406863.a n = A025901 n

theorem P7759662539472406863.correct : P7759662539472406863.Spec := by
  intro n
  simp only [A025901]

end A025901

/-! ## A025901.P14906796408434946258

`Δ[A029095(n)-A029382(n)]`
-/

namespace A025901.P14906796408434946258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029095 n - A029382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025901.P14906796408434946258

namespace A025901

/-- `Δ[A029095(n)-A029382(n)]` -/
def P14906796408434946258.Spec : Prop :=
  ∀ n, P14906796408434946258.a n = A025901 n

end A025901

/-! ## A025901.P13930624011514802683

`Δ[∑[A025886(n)]-A029382(n)]`
-/

namespace A025901.P13930624011514802683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025886 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025901.P13930624011514802683

namespace A025901

/-- `Δ[∑[A025886(n)]-A029382(n)]` -/
def P13930624011514802683.Spec : Prop :=
  ∀ n, P13930624011514802683.a n = A025901 n

end A025901

/-! ## A025901.P3236742359640023252

`Δ[∑[A025900(n)]-A029422(n)]`
-/

namespace A025901.P3236742359640023252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025900 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025901.P3236742359640023252

namespace A025901

/-- `Δ[∑[A025900(n)]-A029422(n)]` -/
def P3236742359640023252.Spec : Prop :=
  ∀ n, P3236742359640023252.a n = A025901 n

end A025901

/-! ## A025901.P16405169257785789709

`A025886(n+1)-Δ[A029382(n)]`
-/

namespace A025901.P16405169257785789709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025886 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025901.P16405169257785789709

namespace A025901

/-- `A025886(n+1)-Δ[A029382(n)]` -/
def P16405169257785789709.Spec : Prop :=
  ∀ n, P16405169257785789709.a n = A025901 n

end A025901

/-! ## A025901.P6491707842905512110

`A025900(n+1)-Δ[A029422(n)]`
-/

namespace A025901.P6491707842905512110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025900 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025901.P6491707842905512110

namespace A025901

/-- `A025900(n+1)-Δ[A029422(n)]` -/
def P6491707842905512110.Spec : Prop :=
  ∀ n, P6491707842905512110.a n = A025901 n

end A025901

/-! ## A025901.P16391782994530739906

`A025867(A017353(n)%record[A116966(n)])`
-/

namespace A025901.P16391782994530739906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025867 (Int.tmod (A017353 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A025901.P16391782994530739906

namespace A025901

/-- `A025867(A017353(n)%record[A116966(n)])` -/
def P16391782994530739906.Spec : Prop :=
  ∀ n, P16391782994530739906.a n = A025901 n

end A025901

/-!
# A025902: Expansion of 1/((1-x^6)*(1-x^8)*(1-x^9)).

The programs for A025902, the canonical program `A025902.P4948105290104538966` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025902 has offset 0).

The definition of A025902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025902.P4948105290104538966

`A025850(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A025902

/-- `A025850(n)-a(n-3)` -/
def P4948105290104538966.Spec : Prop :=
  ∀ n, P4948105290104538966.a n = A025902 n

theorem P4948105290104538966.correct : P4948105290104538966.Spec := by
  intro n
  simp only [A025902]

end A025902

/-! ## A025902.P7844588671040458464

`A025898(n+1)+A025898(n)-A025897(n+1)`
-/

namespace A025902.P7844588671040458464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025898 (n + 1) + (A025898 n - A025897 (n + 1))

end

end A025902.P7844588671040458464

namespace A025902

/-- `A025898(n+1)+A025898(n)-A025897(n+1)` -/
def P7844588671040458464.Spec : Prop :=
  ∀ n, P7844588671040458464.a n = A025902 n

end A025902

/-! ## A025902.P5536611151958326705

`A029054(n+3)-A029071(n+3)`
-/

namespace A025902.P5536611151958326705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029054 (n + 3) - A029071 (n + 3)

end

end A025902.P5536611151958326705

namespace A025902

/-- `A029054(n+3)-A029071(n+3)` -/
def P5536611151958326705.Spec : Prop :=
  ∀ n, P5536611151958326705.a n = A025902 n

end A025902

/-! ## A025902.P315683651686938201

`A339823(3^A029425(n))`
-/

namespace A025902.P315683651686938201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339823 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A029425 n : ℤ))).toNat

end

end A025902.P315683651686938201

namespace A025902

/-- `A339823(3^A029425(n))` -/
def P315683651686938201.Spec : Prop :=
  ∀ n, P315683651686938201.a n = A025902 n

end A025902

/-! ## A025902.P10150479126858140343

`A196563(4^A029425(n))`
-/

namespace A025902.P10150479126858140343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A029425 n : ℤ))).toNat

end

end A025902.P10150479126858140343

namespace A025902

/-- `A196563(4^A029425(n))` -/
def P10150479126858140343.Spec : Prop :=
  ∀ n, P10150479126858140343.a n = A025902 n

end A025902

/-!
# A025903: Expansion of 1/((1-x^6)*(1-x^8)*(1-x^11)).

The programs for A025903, the canonical program `A025903.P4620717236917863113` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025903 has offset 0).

The definition of A025903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025903.P17019426566369738079

`A025852(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025903.P17019426566369738079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025852 n - a (n - 3)

end

end A025903.P17019426566369738079

namespace A025903

/-- `A025852(n)-a(n-3)` -/
def P17019426566369738079.Spec : Prop :=
  ∀ n, P17019426566369738079.a n = A025903 n

end A025903

/-! ## A025903.P4620717236917863113

`Δ[A029112(n-a(2%n))]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A025903

/-- `Δ[A029112(n-a(2%n))]` -/
def P4620717236917863113.Spec : Prop :=
  ∀ n, P4620717236917863113.a n = A025903 n

theorem P4620717236917863113.correct : P4620717236917863113.Spec := by
  intro n
  simp only [A025903]

end A025903

/-! ## A025903.P8957239845675802544

`A025852(n)+A029072(n)-A029056(n)`
-/

namespace A025903.P8957239845675802544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025852 n + (A029072 n - A029056 n)

end

end A025903.P8957239845675802544

namespace A025903

/-- `A025852(n)+A029072(n)-A029056(n)` -/
def P8957239845675802544.Spec : Prop :=
  ∀ n, P8957239845675802544.a n = A025903 n

end A025903

/-! ## A025903.P15228911223654252242

`A029072(n)+A029163(n)-A029026(n)`
-/

namespace A025903.P15228911223654252242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029072 n + (A029163 n - A029026 n)

end

end A025903.P15228911223654252242

namespace A025903

/-- `A029072(n)+A029163(n)-A029026(n)` -/
def P15228911223654252242.Spec : Prop :=
  ∀ n, P15228911223654252242.a n = A025903 n

end A025903

/-! ## A025903.P73788024954177465

`A029112(n+1)-A029163(n+1)`
-/

namespace A025903.P73788024954177465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029112 (n + 1) - A029163 (n + 1)

end

end A025903.P73788024954177465

namespace A025903

/-- `A029112(n+1)-A029163(n+1)` -/
def P73788024954177465.Spec : Prop :=
  ∀ n, P73788024954177465.a n = A025903 n

end A025903

/-! ## A025903.P2092514950648592386

`A025822(n+2)-A025866(n+2)`
-/

namespace A025903.P2092514950648592386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025822 (n + 2) - A025866 (n + 2)

end

end A025903.P2092514950648592386

namespace A025903

/-- `A025822(n+2)-A025866(n+2)` -/
def P2092514950648592386.Spec : Prop :=
  ∀ n, P2092514950648592386.a n = A025903 n

end A025903

/-! ## A025903.P3623108150140763636

`A025925(A168197(n+1))`
-/

namespace A025903.P3623108150140763636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025925 (A168197 (n + 1)).toNat

end

end A025903.P3623108150140763636

namespace A025903

/-- `A025925(A168197(n+1))` -/
def P3623108150140763636.Spec : Prop :=
  ∀ n, P3623108150140763636.a n = A025903 n

end A025903

/-! ## A025903.P18206541977054081222

`A025925(A175887(n+1)-A016921(n))`
-/

namespace A025903.P18206541977054081222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025925 (A175887 (n + 1) - A016921 n).toNat

end

end A025903.P18206541977054081222

namespace A025903

/-- `A025925(A175887(n+1)-A016921(n))` -/
def P18206541977054081222.Spec : Prop :=
  ∀ n, P18206541977054081222.a n = A025903 n

end A025903

/-!
# A025904: Expansion of 1/((1-x^6)*(1-x^9)*(1-x^10)).

The programs for A025904, the canonical program `A025904.P10160128310211328802` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025904 has offset 0).

The definition of A025904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025904.P1396044321685693161

`A025854(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025904.P1396044321685693161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025854 n - a (n - 3)

end

end A025904.P1396044321685693161

namespace A025904

/-- `A025854(n)-a(n-3)` -/
def P1396044321685693161.Spec : Prop :=
  ∀ n, P1396044321685693161.a n = A025904 n

end A025904

/-! ## A025904.P10160128310211328802

`A025924(abs(6-n))+A025924(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A025904

/-- `A025924(abs(6-n))+A025924(n)` -/
def P10160128310211328802.Spec : Prop :=
  ∀ n, P10160128310211328802.a n = A025904 n

theorem P10160128310211328802.correct : P10160128310211328802.Spec := by
  intro n
  simp only [A025904]

end A025904

/-! ## A025904.P14524341039025396331

`A025865(n)+A025891(n)-A025862(n)`
-/

namespace A025904.P14524341039025396331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025865 n + (A025891 n - A025862 n)

end

end A025904.P14524341039025396331

namespace A025904

/-- `A025865(n)+A025891(n)-A025862(n)` -/
def P14524341039025396331.Spec : Prop :=
  ∀ n, P14524341039025396331.a n = A025904 n

end A025904

/-! ## A025904.P12772466653680074339

`A029221(n)+A029354(n)-A029188(n)`
-/

namespace A025904.P12772466653680074339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029221 n + (A029354 n - A029188 n)

end

end A025904.P12772466653680074339

namespace A025904

/-- `A029221(n)+A029354(n)-A029188(n)` -/
def P12772466653680074339.Spec : Prop :=
  ∀ n, P12772466653680074339.a n = A025904 n

end A025904

/-! ## A025904.P9899027691773050748

`Δ[A029080(n)-A029328(n)]`
-/

namespace A025904.P9899027691773050748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029080 n - A029328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025904.P9899027691773050748

namespace A025904

/-- `Δ[A029080(n)-A029328(n)]` -/
def P9899027691773050748.Spec : Prop :=
  ∀ n, P9899027691773050748.a n = A025904 n

end A025904

/-! ## A025904.P16615585329099087578

`A048766(A029429(n)²)`
-/

namespace A025904.P16615585329099087578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A029429 n ^ 2).toNat

end

end A025904.P16615585329099087578

namespace A025904

/-- `A048766(A029429(n)²)` -/
def P16615585329099087578.Spec : Prop :=
  ∀ n, P16615585329099087578.a n = A025904 n

end A025904

/-! ## A025904.P9168494013553334311

`A048766(A029429(n)*A029429(n))`
-/

namespace A025904.P9168494013553334311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A029429 n * A029429 n).toNat

end

end A025904.P9168494013553334311

namespace A025904

/-- `A048766(A029429(n)*A029429(n))` -/
def P9168494013553334311.Spec : Prop :=
  ∀ n, P9168494013553334311.a n = A025904 n

end A025904

/-!
# A025905: Expansion of 1/((1-x^6)*(1-x^9)*(1-x^11)).

The programs for A025905, the canonical program `A025905.P16596384045298763806` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025905 has offset 0).

The definition of A025905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025905.P16596384045298763806

`A025855(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A025905

/-- `A025855(n)-a(n-3)` -/
def P16596384045298763806.Spec : Prop :=
  ∀ n, P16596384045298763806.a n = A025905 n

theorem P16596384045298763806.correct : P16596384045298763806.Spec := by
  intro n
  simp only [A025905]

end A025905

/-! ## A025905.P14789676173895335076

`A029114(n)+A029428(n)-A029113(n)`
-/

namespace A025905.P14789676173895335076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029114 n + (A029428 n - A029113 n)

end

end A025905.P14789676173895335076

namespace A025905

/-- `A029114(n)+A029428(n)-A029113(n)` -/
def P14789676173895335076.Spec : Prop :=
  ∀ n, P14789676173895335076.a n = A025905 n

end A025905

/-! ## A025905.P17848748967463654881

`Δ[A029113(n)-A029428(n)]`
-/

namespace A025905.P17848748967463654881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029113 n - A029428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025905.P17848748967463654881

namespace A025905

/-- `Δ[A029113(n)-A029428(n)]` -/
def P17848748967463654881.Spec : Prop :=
  ∀ n, P17848748967463654881.a n = A025905 n

end A025905

/-! ## A025905.P8430388334696185956

`Δ[∑[A025904(n)]-A029428(n)]`
-/

namespace A025905.P8430388334696185956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025904 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025905.P8430388334696185956

namespace A025905

/-- `Δ[∑[A025904(n)]-A029428(n)]` -/
def P8430388334696185956.Spec : Prop :=
  ∀ n, P8430388334696185956.a n = A025905 n

end A025905

/-! ## A025905.P8936459224692567848

`A025904(n+1)-Δ[A029428(n)]`
-/

namespace A025905.P8936459224692567848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025904 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025905.P8936459224692567848

namespace A025905

/-- `A025904(n+1)-Δ[A029428(n)]` -/
def P8936459224692567848.Spec : Prop :=
  ∀ n, P8936459224692567848.a n = A025905 n

end A025905

/-! ## A025905.P17578732812153884034

`Δ[A029376(A020742(n))]`
-/

namespace A025905.P17578732812153884034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029376 (A020742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025905.P17578732812153884034

namespace A025905

/-- `Δ[A029376(A020742(n))]` -/
def P17578732812153884034.Spec : Prop :=
  ∀ n, P17578732812153884034.a n = A025905 n

end A025905

/-! ## A025905.P6815192115560464197

`Δ[A029376(A005408(n+3))]`
-/

namespace A025905.P6815192115560464197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029376 (A005408 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025905.P6815192115560464197

namespace A025905

/-- `Δ[A029376(A005408(n+3))]` -/
def P6815192115560464197.Spec : Prop :=
  ∀ n, P6815192115560464197.a n = A025905 n

end A025905

/-! ## A025905.P13279360840287497349

`A029302(n)-A029302(A025581(A005893(n)))`
-/

namespace A025905.P13279360840287497349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029302 n - A029302 (A025581 (A005893 n).toNat).toNat

end

end A025905.P13279360840287497349

namespace A025905

/-- `A029302(n)-A029302(A025581(A005893(n)))` -/
def P13279360840287497349.Spec : Prop :=
  ∀ n, P13279360840287497349.a n = A025905 n

end A025905

/-!
# A025906: Expansion of 1/((1-x^6)*(1-x^10)*(1-x^11)).

The programs for A025906, the canonical program `A025906.P10640818763905870063` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025906 has offset 0).

The definition of A025906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025906.P11657492032312038402

`A025856(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025906.P11657492032312038402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025856 n - a (n - 3)

end

end A025906.P11657492032312038402

namespace A025906

/-- `A025856(n)-a(n-3)` -/
def P11657492032312038402.Spec : Prop :=
  ∀ n, P11657492032312038402.a n = A025906 n

end A025906

/-! ## A025906.P10640818763905870063

`A025926(abs(6-n))+A025926(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A025906

/-- `A025926(abs(6-n))+A025926(n)` -/
def P10640818763905870063.Spec : Prop :=
  ∀ n, P10640818763905870063.a n = A025906 n

theorem P10640818763905870063.correct : P10640818763905870063.Spec := by
  intro n
  simp only [A025906]

end A025906

/-! ## A025906.P6070400713906164208

`A029115(n)+A029428(n)-A029114(n)`
-/

namespace A025906.P6070400713906164208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029115 n + (A029428 n - A029114 n)

end

end A025906.P6070400713906164208

namespace A025906

/-- `A029115(n)+A029428(n)-A029114(n)` -/
def P6070400713906164208.Spec : Prop :=
  ∀ n, P6070400713906164208.a n = A025906 n

end A025906

/-! ## A025906.P8208437954112634286

`Δ[A029103(n)-A029390(n)]`
-/

namespace A025906.P8208437954112634286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029103 n - A029390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025906.P8208437954112634286

namespace A025906

/-- `Δ[A029103(n)-A029390(n)]` -/
def P8208437954112634286.Spec : Prop :=
  ∀ n, P8208437954112634286.a n = A025906 n

end A025906

/-! ## A025906.P18411504636313454687

`Δ[A029114(n)-A029428(n)]`
-/

namespace A025906.P18411504636313454687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029114 n - A029428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025906.P18411504636313454687

namespace A025906

/-- `Δ[A029114(n)-A029428(n)]` -/
def P18411504636313454687.Spec : Prop :=
  ∀ n, P18411504636313454687.a n = A025906 n

end A025906

/-! ## A025906.P17018214511701681018

`Δ[∑[A025905(n)]-A029428(n)]`
-/

namespace A025906.P17018214511701681018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025905 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025906.P17018214511701681018

namespace A025906

/-- `Δ[∑[A025905(n)]-A029428(n)]` -/
def P17018214511701681018.Spec : Prop :=
  ∀ n, P17018214511701681018.a n = A025906 n

end A025906

/-! ## A025906.P10579210217602421947

`A025905(n+1)-Δ[A029428(n)]`
-/

namespace A025906.P10579210217602421947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025905 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025906.P10579210217602421947

namespace A025906

/-- `A025905(n+1)-Δ[A029428(n)]` -/
def P10579210217602421947.Spec : Prop :=
  ∀ n, P10579210217602421947.a n = A025906 n

end A025906

/-! ## A025906.P12402664945502857143

`A025905(n+1)+A025905(n)-A025904(n+1)`
-/

namespace A025906.P12402664945502857143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025905 (n + 1) + (A025905 n - A025904 (n + 1))

end

end A025906.P12402664945502857143

namespace A025906

/-- `A025905(n+1)+A025905(n)-A025904(n+1)` -/
def P12402664945502857143.Spec : Prop :=
  ∀ n, P12402664945502857143.a n = A025906 n

end A025906

/-! ## A025906.P327751896623735978

`A029103(n+5)-A029115(n+5)+A029115(n)-A029103(n)`
-/

namespace A025906.P327751896623735978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029103 (n + 5) - A029115 (n + 5) + (A029115 n - A029103 n)

end

end A025906.P327751896623735978

namespace A025906

/-- `A029103(n+5)-A029115(n+5)+A029115(n)-A029103(n)` -/
def P327751896623735978.Spec : Prop :=
  ∀ n, P327751896623735978.a n = A025906 n

end A025906

/-! ## A025906.P11053294488214640088

`Δ[A029103(n)-(A029103(n+5)-A029115(n+5))]`
-/

namespace A025906.P11053294488214640088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029103 n - (A029103 (n + 5) - A029115 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025906.P11053294488214640088

namespace A025906

/-- `Δ[A029103(n)-(A029103(n+5)-A029115(n+5))]` -/
def P11053294488214640088.Spec : Prop :=
  ∀ n, P11053294488214640088.a n = A025906 n

end A025906

/-!
# A025907: Expansion of 1/((1-x^6)*(1-x^11)*(1-x^12)).

The programs for A025907, the canonical program `A025907.P12793639154697755668` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025907 has offset 0).

The definition of A025907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025907.P8297942731583186805

`A025858(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025907.P8297942731583186805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025858 n - a (n - 3)

end

end A025907.P8297942731583186805

namespace A025907

/-- `A025858(n)-a(n-3)` -/
def P8297942731583186805.Spec : Prop :=
  ∀ n, P8297942731583186805.a n = A025907 n

end A025907

/-! ## A025907.P12793639154697755668

`A025783(n)+A025881(n)-A025781(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A025907

/-- `A025783(n)+A025881(n)-A025781(n)` -/
def P12793639154697755668.Spec : Prop :=
  ∀ n, P12793639154697755668.a n = A025907 n

theorem P12793639154697755668.correct : P12793639154697755668.Spec := by
  intro n
  simp only [A025907]

end A025907

/-! ## A025907.P9580405549768645942

`A025881(n)+A025917(n)-A025885(n)`
-/

namespace A025907.P9580405549768645942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 n + (A025917 n - A025885 n)

end

end A025907.P9580405549768645942

namespace A025907

/-- `A025881(n)+A025917(n)-A025885(n)` -/
def P9580405549768645942.Spec : Prop :=
  ∀ n, P9580405549768645942.a n = A025907 n

end A025907

/-! ## A025907.P9665192612631759616

`A029225(n)+A029431(n)-A029224(n)`
-/

namespace A025907.P9665192612631759616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029225 n + (A029431 n - A029224 n)

end

end A025907.P9665192612631759616

namespace A025907

/-- `A029225(n)+A029431(n)-A029224(n)` -/
def P9665192612631759616.Spec : Prop :=
  ∀ n, P9665192612631759616.a n = A025907 n

end A025907

/-! ## A025907.P6258286128174657723

`A029116(n+1)-A029170(n+1)`
-/

namespace A025907.P6258286128174657723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029116 (n + 1) - A029170 (n + 1)

end

end A025907.P6258286128174657723

namespace A025907

/-- `A029116(n+1)-A029170(n+1)` -/
def P6258286128174657723.Spec : Prop :=
  ∀ n, P6258286128174657723.a n = A025907 n

end A025907

/-! ## A025907.P1016433748967306916

`A025906(n+2)+A029431(n)-A029431(n+2)`
-/

namespace A025907.P1016433748967306916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025906 (n + 2) + (A029431 n - A029431 (n + 2))

end

end A025907.P1016433748967306916

namespace A025907

/-- `A025906(n+2)+A029431(n)-A029431(n+2)` -/
def P1016433748967306916.Spec : Prop :=
  ∀ n, P1016433748967306916.a n = A025907 n

end A025907

/-!
# A025908: Expansion of 1/((1-x^7)*(1-x^8)*(1-x^9)).

The programs for A025908, the canonical program `A025908.P14471496361676503405` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025908 has offset 0).

The definition of A025908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025908.P14471496361676503405

`A025868(n)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A025908

/-- `A025868(n)-a(n-4)` -/
def P14471496361676503405.Spec : Prop :=
  ∀ n, P14471496361676503405.a n = A025908 n

theorem P14471496361676503405.correct : P14471496361676503405.Spec := by
  intro n
  simp only [A025908]

end A025908

/-! ## A025908.P732249263671212484

`A029020(n)+A029413(n)-A029018(n)`
-/

namespace A025908.P732249263671212484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029020 n + (A029413 n - A029018 n)

end

end A025908.P732249263671212484

namespace A025908

/-- `A029020(n)+A029413(n)-A029018(n)` -/
def P732249263671212484.Spec : Prop :=
  ∀ n, P732249263671212484.a n = A025908 n

end A025908

/-! ## A025908.P17980783516684433848

`A029306(n)+A029413(n)-A029292(n)`
-/

namespace A025908.P17980783516684433848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029306 n + (A029413 n - A029292 n)

end

end A025908.P17980783516684433848

namespace A025908

/-- `A029306(n)+A029413(n)-A029292(n)` -/
def P17980783516684433848.Spec : Prop :=
  ∀ n, P17980783516684433848.a n = A025908 n

end A025908

/-! ## A025908.P5288162176478327823

`A025902(n+1)+A025898(n)-A025897(n+1)`
-/

namespace A025908.P5288162176478327823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025902 (n + 1) + (A025898 n - A025897 (n + 1))

end

end A025908.P5288162176478327823

namespace A025908

/-- `A025902(n+1)+A025898(n)-A025897(n+1)` -/
def P5288162176478327823.Spec : Prop :=
  ∀ n, P5288162176478327823.a n = A025908 n

end A025908

/-! ## A025908.P13839052797700110908

`A025902(n+1)+A025902(n)-A025898(n+1)`
-/

namespace A025908.P13839052797700110908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025902 (n + 1) + (A025902 n - A025898 (n + 1))

end

end A025908.P13839052797700110908

namespace A025908

/-- `A025902(n+1)+A025902(n)-A025898(n+1)` -/
def P13839052797700110908.Spec : Prop :=
  ∀ n, P13839052797700110908.a n = A025908 n

end A025908

/-! ## A025908.P15811085772708036321

`A025868(n+4)+A029359(n)-A029359(n+4)`
-/

namespace A025908.P15811085772708036321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025868 (n + 4) + (A029359 n - A029359 (n + 4))

end

end A025908.P15811085772708036321

namespace A025908

/-- `A025868(n+4)+A029359(n)-A029359(n+4)` -/
def P15811085772708036321.Spec : Prop :=
  ∀ n, P15811085772708036321.a n = A025908 n

end A025908

/-! ## A025908.P12393113481453944059

`A025923(∩[A088476(n+1)+1, A088476(n+1)])`
-/

namespace A025908.P12393113481453944059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088476 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088476 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025923 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A025908.P12393113481453944059

namespace A025908

/-- `A025923(∩[A088476(n+1)+1, A088476(n+1)])` -/
def P12393113481453944059.Spec : Prop :=
  ∀ n, P12393113481453944059.a n = A025908 n

end A025908

/-!
# A025909: Expansion of 1/((1-x^7)*(1-x^8)*(1-x^10)).

The programs for A025909, the canonical program `A025909.P2062600259352315993` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025909 has offset 0).

The definition of A025909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025909.P2062600259352315993

`A025882(n)-a(n-5)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A025909

/-- `A025882(n)-a(n-5)` -/
def P2062600259352315993.Spec : Prop :=
  ∀ n, P2062600259352315993.a n = A025909 n

theorem P2062600259352315993.correct : P2062600259352315993.Spec := by
  intro n
  simp only [A025909]

end A025909

/-! ## A025909.P10421840503434802307

`A025808(n)+A025845(n)-A025799(n)`
-/

namespace A025909.P10421840503434802307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025808 n + (A025845 n - A025799 n)

end

end A025909.P10421840503434802307

namespace A025909

/-- `A025808(n)+A025845(n)-A025799(n)` -/
def P10421840503434802307.Spec : Prop :=
  ∀ n, P10421840503434802307.a n = A025909 n

end A025909

/-! ## A025909.P530563951547437903

`A025845(n)+A025888(n)-A025838(n)`
-/

namespace A025909.P530563951547437903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025845 n + (A025888 n - A025838 n)

end

end A025909.P530563951547437903

namespace A025909

/-- `A025845(n)+A025888(n)-A025838(n)` -/
def P530563951547437903.Spec : Prop :=
  ∀ n, P530563951547437903.a n = A025909 n

end A025909

/-! ## A025909.P4164755914036031000

`A029360(n)+A029414(n)-A029347(n)`
-/

namespace A025909.P4164755914036031000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029360 n + (A029414 n - A029347 n)

end

end A025909.P4164755914036031000

namespace A025909

/-- `A029360(n)+A029414(n)-A029347(n)` -/
def P4164755914036031000.Spec : Prop :=
  ∀ n, P4164755914036031000.a n = A025909 n

end A025909

/-! ## A025909.P1029356664409059119

`A025902(n+1)+A025904(n)-A025899(n+1)`
-/

namespace A025909.P1029356664409059119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025902 (n + 1) + (A025904 n - A025899 (n + 1))

end

end A025909.P1029356664409059119

namespace A025909

/-- `A025902(n+1)+A025904(n)-A025899(n+1)` -/
def P1029356664409059119.Spec : Prop :=
  ∀ n, P1029356664409059119.a n = A025909 n

end A025909

/-! ## A025909.P17405334670495311494

`A025845(n)-A025893(A001651(n+1))`
-/

namespace A025909.P17405334670495311494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025845 n - A025893 (A001651 (n + 1)).toNat

end

end A025909.P17405334670495311494

namespace A025909

/-- `A025845(n)-A025893(A001651(n+1))` -/
def P17405334670495311494.Spec : Prop :=
  ∀ n, P17405334670495311494.a n = A025909 n

end A025909

/-!
# A025910: Expansion of 1/((1-x^7)*(1-x^8)*(1-x^11)).

The programs for A025910, the canonical program `A025910.P2987843429361271316` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025910 has offset 0).

The definition of A025910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025910.P2401747543318798839

`A029119(n)+A029415(n)-A029112(n)`
-/

namespace A025910.P2401747543318798839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029119 n + (A029415 n - A029112 n)

end

end A025910.P2401747543318798839

namespace A025910

/-- `A029119(n)+A029415(n)-A029112(n)` -/
def P2401747543318798839.Spec : Prop :=
  ∀ n, P2401747543318798839.a n = A025910 n

end A025910

/-! ## A025910.P2987843429361271316

`A029395(n)+A029415(n)-A029378(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A025910

/-- `A029395(n)+A029415(n)-A029378(n)` -/
def P2987843429361271316.Spec : Prop :=
  ∀ n, P2987843429361271316.a n = A025910 n

theorem P2987843429361271316.correct : P2987843429361271316.Spec := by
  intro n
  simp only [A025910]

end A025910

/-! ## A025910.P16670408907931187840

`Δ[A029112(n)-A029415(n)]`
-/

namespace A025910.P16670408907931187840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029112 n - A029415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025910.P16670408907931187840

namespace A025910

/-- `Δ[A029112(n)-A029415(n)]` -/
def P16670408907931187840.Spec : Prop :=
  ∀ n, P16670408907931187840.a n = A025910 n

end A025910

/-! ## A025910.P8225190352333043347

`A025903(n+1)+A025903(n)-A025900(n+1)`
-/

namespace A025910.P8225190352333043347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025903 (n + 1) + (A025903 n - A025900 (n + 1))

end

end A025910.P8225190352333043347

namespace A025910

/-- `A025903(n+1)+A025903(n)-A025900(n+1)` -/
def P8225190352333043347.Spec : Prop :=
  ∀ n, P8225190352333043347.a n = A025910 n

end A025910

/-! ## A025910.P14098757324321157083

`A029228(n+2)+A029228(n)-A029184(n+2)`
-/

namespace A025910.P14098757324321157083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029228 (n + 2) + (A029228 n - A029184 (n + 2))

end

end A025910.P14098757324321157083

namespace A025910

/-- `A029228(n+2)+A029228(n)-A029184(n+2)` -/
def P14098757324321157083.Spec : Prop :=
  ∀ n, P14098757324321157083.a n = A025910 n

end A025910

/-! ## A025910.P873422627126102925

`A029119(n+8)-(A168201(n+8)+A029119(n+7))`
-/

namespace A025910.P873422627126102925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029119 (n + 8) - (A168201 (n + 8) + A029119 (n + 7))

end

end A025910.P873422627126102925

namespace A025910

/-- `A029119(n+8)-(A168201(n+8)+A029119(n+7))` -/
def P873422627126102925.Spec : Prop :=
  ∀ n, P873422627126102925.a n = A025910 n

end A025910

/-!
# A025911: Expansion of 1/((1-x^7)*(1-x^8)*(1-x^12)).

The programs for A025911, the canonical program `A025911.P17129638192487173258` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025911 has offset 0).

The definition of A025911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025911.P17129638192487173258

`A008622(A056000(n)%(A008619(n)+3))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A025911

/-- `A008622(A056000(n)%(A008619(n)+3))` -/
def P17129638192487173258.Spec : Prop :=
  ∀ n, P17129638192487173258.a n = A025911 n

theorem P17129638192487173258.correct : P17129638192487173258.Spec := by
  intro n
  simp only [A025911]

end A025911

/-! ## A025911.P12842797475651674521

`A025853(n)+A025882(n)-A025840(n)`
-/

namespace A025911.P12842797475651674521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025853 n + (A025882 n - A025840 n)

end

end A025911.P12842797475651674521

namespace A025911

/-- `A025853(n)+A025882(n)-A025840(n)` -/
def P12842797475651674521.Spec : Prop :=
  ∀ n, P12842797475651674521.a n = A025911 n

end A025911

/-! ## A025911.P938782849804578419

`A025871(n)+A029214(n)-A029185(n)`
-/

namespace A025911.P938782849804578419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025871 n + (A029214 n - A029185 n)

end

end A025911.P938782849804578419

namespace A025911

/-- `A025871(n)+A029214(n)-A029185(n)` -/
def P938782849804578419.Spec : Prop :=
  ∀ n, P938782849804578419.a n = A025911 n

end A025911

/-! ## A025911.P9185634020037921826

`A029229(n+2)-A029347(n+2)`
-/

namespace A025911.P9185634020037921826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 (n + 2) - A029347 (n + 2)

end

end A025911.P9185634020037921826

namespace A025911

/-- `A029229(n+2)-A029347(n+2)` -/
def P9185634020037921826.Spec : Prop :=
  ∀ n, P9185634020037921826.a n = A025911 n

end A025911

/-! ## A025911.P17026830521331781411

`A029120(n+3)+A029120(n)-A029077(n+3)`
-/

namespace A025911.P17026830521331781411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029120 (n + 3) + (A029120 n - A029077 (n + 3))

end

end A025911.P17026830521331781411

namespace A025911

/-- `A029120(n+3)+A029120(n)-A029077(n+3)` -/
def P17026830521331781411.Spec : Prop :=
  ∀ n, P17026830521331781411.a n = A025911 n

end A025911

/-! ## A025911.P15767812304807665548

`Δ[A029077(n+3)-A029120(n+3)]`
-/

namespace A025911.P15767812304807665548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029077 (n + 3) - A029120 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025911.P15767812304807665548

namespace A025911

/-- `Δ[A029077(n+3)-A029120(n+3)]` -/
def P15767812304807665548.Spec : Prop :=
  ∀ n, P15767812304807665548.a n = A025911 n

end A025911

/-!
# A025912: Expansion of 1/((1-x^7)*(1-x^9)*(1-x^10)).

The programs for A025912, the canonical program `A025912.P8134843104660562179` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025912 has offset 0).

The definition of A025912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025912.P8134843104660562179

`A025883(n)-a(n-5)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A025912

/-- `A025883(n)-a(n-5)` -/
def P8134843104660562179.Spec : Prop :=
  ∀ n, P8134843104660562179.a n = A025912 n

theorem P8134843104660562179.correct : P8134843104660562179.Spec := by
  intro n
  simp only [A025912]

end A025912

/-! ## A025912.P36905649138945823

`A025909(n+1)+A025909(n)-A025908(n+1)`
-/

namespace A025912.P36905649138945823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025909 (n + 1) + (A025909 n - A025908 (n + 1))

end

end A025912.P36905649138945823

namespace A025912

/-- `A025909(n+1)+A025909(n)-A025908(n+1)` -/
def P36905649138945823.Spec : Prop :=
  ∀ n, P36905649138945823.a n = A025912 n

end A025912

/-! ## A025912.P8521896266290465814

`and(A025921(A004777(n+1)), A177695(n+1))`
-/

namespace A025912.P8521896266290465814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025921 (A004777 (n + 1)).toNat) (A177695 (n + 1))

end

end A025912.P8521896266290465814

namespace A025912

/-- `and(A025921(A004777(n+1)), A177695(n+1))` -/
def P8521896266290465814.Spec : Prop :=
  ∀ n, P8521896266290465814.a n = A025912 n

end A025912

/-! ## A025912.P6627142362068778720

`A025925(A037475(n)%A061949(n+1))`
-/

namespace A025912.P6627142362068778720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025925 (Int.tmod (A037475 n) (A061949 (n + 1))).toNat

end

end A025912.P6627142362068778720

namespace A025912

/-- `A025925(A037475(n)%A061949(n+1))` -/
def P6627142362068778720.Spec : Prop :=
  ∀ n, P6627142362068778720.a n = A025912 n

end A025912

/-! ## A025912.P15143206662367280297

`A025921(A004777(n+1)%A061949(n+1))`
-/

namespace A025912.P15143206662367280297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025921 (Int.tmod (A004777 (n + 1)) (A061949 (n + 1))).toNat

end

end A025912.P15143206662367280297

namespace A025912

/-- `A025921(A004777(n+1)%A061949(n+1))` -/
def P15143206662367280297.Spec : Prop :=
  ∀ n, P15143206662367280297.a n = A025912 n

end A025912

/-!
# A025913: Expansion of 1/((1-x^7)*(1-x^9)*(1-x^11)).

The programs for A025913, the canonical program `A025913.P13843869417188277868` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025913 has offset 0).

The definition of A025913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025913.P13843869417188277868

`A025868(n)+A025892(n)-A025863(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A025913

/-- `A025868(n)+A025892(n)-A025863(n)` -/
def P13843869417188277868.Spec : Prop :=
  ∀ n, P13843869417188277868.a n = A025913 n

theorem P13843869417188277868.correct : P13843869417188277868.Spec := by
  intro n
  simp only [A025913]

end A025913

/-! ## A025913.P2528342812554696090

`A025817(n)+A168201(n)-A025819(n)`
-/

namespace A025913.P2528342812554696090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025817 n + (A168201 n - A025819 n)

end

end A025913.P2528342812554696090

namespace A025913

/-- `A025817(n)+A168201(n)-A025819(n)` -/
def P2528342812554696090.Spec : Prop :=
  ∀ n, P2528342812554696090.a n = A025913 n

end A025913

/-! ## A025913.P14260998183827195261

`Δ[∑[A025912(n)]-A029438(n)]`
-/

namespace A025913.P14260998183827195261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025912 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025913.P14260998183827195261

namespace A025913

/-- `Δ[∑[A025912(n)]-A029438(n)]` -/
def P14260998183827195261.Spec : Prop :=
  ∀ n, P14260998183827195261.a n = A025913 n

end A025913

/-! ## A025913.P16695202551572775801

`A025912(n+1)-Δ[A029438(n)]`
-/

namespace A025913.P16695202551572775801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025912 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025913.P16695202551572775801

namespace A025913

/-- `A025912(n+1)-Δ[A029438(n)]` -/
def P16695202551572775801.Spec : Prop :=
  ∀ n, P16695202551572775801.a n = A025913 n

end A025913

/-! ## A025913.P18226156297481958291

`A025817(n)-Δ[A029228(2*n+1)]`
-/

namespace A025913.P18226156297481958291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029228 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025817 n - (f1 (n + 1) - f1 n)

end

end A025913.P18226156297481958291

namespace A025913

/-- `A025817(n)-Δ[A029228(2*n+1)]` -/
def P18226156297481958291.Spec : Prop :=
  ∀ n, P18226156297481958291.a n = A025913 n

end A025913

/-!
# A025914: Expansion of 1/((1-x^7)*(1-x^9)*(1-x^12)).

The programs for A025914, the canonical program `A025914.P2858219896592706963` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025914 has offset 0).

The definition of A025914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025914.P2858219896592706963

`A025874(n)+A025883(n)-A025864(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A025914

/-- `A025874(n)+A025883(n)-A025864(n)` -/
def P2858219896592706963.Spec : Prop :=
  ∀ n, P2858219896592706963.a n = A025914 n

theorem P2858219896592706963.correct : P2858219896592706963.Spec := by
  intro n
  simp only [A025914]

end A025914

/-! ## A025914.P12939978900474701397

`Δ[∑[A025913(n)]-A029440(n)]`
-/

namespace A025914.P12939978900474701397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025913 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025914.P12939978900474701397

namespace A025914

/-- `Δ[∑[A025913(n)]-A029440(n)]` -/
def P12939978900474701397.Spec : Prop :=
  ∀ n, P12939978900474701397.a n = A025914 n

end A025914

/-! ## A025914.P9193182169788582531

`A025913(n+1)-Δ[A029440(n)]`
-/

namespace A025914.P9193182169788582531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025913 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025914.P9193182169788582531

namespace A025914

/-- `A025913(n+1)-Δ[A029440(n)]` -/
def P9193182169788582531.Spec : Prop :=
  ∀ n, P9193182169788582531.a n = A025914 n

end A025914

/-! ## A025914.P2030534644241431207

`A250120(n)%A091090(A080540(n))`
-/

namespace A025914.P2030534644241431207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250120 n) (A091090 (A080540 n).toNat)

end

end A025914.P2030534644241431207

namespace A025914

/-- `A250120(n)%A091090(A080540(n))` -/
def P2030534644241431207.Spec : Prop :=
  ∀ n, P2030534644241431207.a n = A025914 n

end A025914

/-! ## A025914.P14868940387080409955

`A086017(A045778(n+1)+A003459(n+1))`
-/

namespace A025914.P14868940387080409955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086017 (A045778 (n + 1) + A003459 (n + 1)).toNat

end

end A025914.P14868940387080409955

namespace A025914

/-- `A086017(A045778(n+1)+A003459(n+1))` -/
def P14868940387080409955.Spec : Prop :=
  ∀ n, P14868940387080409955.a n = A025914 n

end A025914

/-!
# A025915: Expansion of 1/((1-x^7)*(1-x^10)*(1-x^11)).

The programs for A025915, the canonical program `A025915.P13800332074688964784` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025915 has offset 0).

The definition of A025915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025915.P13800332074688964784

`A029400(n)+A029420(n)-A029380(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A025915

/-- `A029400(n)+A029420(n)-A029380(n)` -/
def P13800332074688964784.Spec : Prop :=
  ∀ n, P13800332074688964784.a n = A025915 n

theorem P13800332074688964784.correct : P13800332074688964784.Spec := by
  intro n
  simp only [A025915]

end A025915

/-! ## A025915.P16219082137111257874

`Δ[∑[A025913(n)]-A029438(n)]`
-/

namespace A025915.P16219082137111257874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025913 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025915.P16219082137111257874

namespace A025915

/-- `Δ[∑[A025913(n)]-A029438(n)]` -/
def P16219082137111257874.Spec : Prop :=
  ∀ n, P16219082137111257874.a n = A025915 n

end A025915

/-! ## A025915.P1448303374291817109

`A025913(n+1)-Δ[A029438(n)]`
-/

namespace A025915.P1448303374291817109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025913 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025915.P1448303374291817109

namespace A025915

/-- `A025913(n+1)-Δ[A029438(n)]` -/
def P1448303374291817109.Spec : Prop :=
  ∀ n, P1448303374291817109.a n = A025915 n

end A025915

/-! ## A025915.P6701833277571123126

`A025913(n+1)+A025913(n)-A025912(n+1)`
-/

namespace A025915.P6701833277571123126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025913 (n + 1) + (A025913 n - A025912 (n + 1))

end

end A025915.P6701833277571123126

namespace A025915

/-- `A025913(n+1)+A025913(n)-A025912(n+1)` -/
def P6701833277571123126.Spec : Prop :=
  ∀ n, P6701833277571123126.a n = A025915 n

end A025915

/-! ## A025915.P6206211716556168954

`A025913(n+1)+Δ[A029438(n)]/A153881(n+2)`
-/

namespace A025915.P6206211716556168954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029438 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025913 (n + 1) : ℚ) + (f1 (n + 1) - f1 n : ℚ) / (A153881 (n + 2) : ℚ)

end

end A025915.P6206211716556168954

namespace A025915

/-- `A025913(n+1)+Δ[A029438(n)]/A153881(n+2)` -/
def P6206211716556168954.Spec : Prop :=
  ∀ n, P6206211716556168954.a n = (A025915 n : ℚ)

end A025915

/-!
# A025916: Expansion of 1/((1-x^7)*(1-x^10)*(1-x^12)).

The programs for A025916, the canonical program `A025916.P2083996258895106641` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025916 has offset 0).

The definition of A025916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025916.P13418004676990167710

`A025886(n)+A029108(n)-A029095(n)`
-/

namespace A025916.P13418004676990167710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025886 n + (A029108 n - A029095 n)

end

end A025916.P13418004676990167710

namespace A025916

/-- `A025886(n)+A029108(n)-A029095(n)` -/
def P13418004676990167710.Spec : Prop :=
  ∀ n, P13418004676990167710.a n = A025916 n

end A025916

/-! ## A025916.P2083996258895106641

`A029234(n)+A029401(n)-A029212(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A025916

/-- `A029234(n)+A029401(n)-A029212(n)` -/
def P2083996258895106641.Spec : Prop :=
  ∀ n, P2083996258895106641.a n = A025916 n

theorem P2083996258895106641.correct : P2083996258895106641.Spec := by
  intro n
  simp only [A025916]

end A025916

/-! ## A025916.P12378628784140667899

`A029402(n)+A029420(n)-A029381(n)`
-/

namespace A025916.P12378628784140667899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029402 n + (A029420 n - A029381 n)

end

end A025916.P12378628784140667899

namespace A025916

/-- `A029402(n)+A029420(n)-A029381(n)` -/
def P12378628784140667899.Spec : Prop :=
  ∀ n, P12378628784140667899.a n = A025916 n

end A025916

/-! ## A025916.P10564565914221813263

`Δ[∑[A025915(n)]-A029441(n)]`
-/

namespace A025916.P10564565914221813263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025915 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025916.P10564565914221813263

namespace A025916

/-- `Δ[∑[A025915(n)]-A029441(n)]` -/
def P10564565914221813263.Spec : Prop :=
  ∀ n, P10564565914221813263.a n = A025916 n

end A025916

/-! ## A025916.P4097178146336924458

`A025915(n+1)-Δ[A029441(n)]`
-/

namespace A025916.P4097178146336924458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025915 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025916.P4097178146336924458

namespace A025916

/-- `A025915(n+1)-Δ[A029441(n)]` -/
def P4097178146336924458.Spec : Prop :=
  ∀ n, P4097178146336924458.a n = A025916 n

end A025916

/-! ## A025916.P6326284522689316948

`A029234(n+4)+A029234(n)-A029216(n+4)`
-/

namespace A025916.P6326284522689316948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029234 (n + 4) + (A029234 n - A029216 (n + 4))

end

end A025916.P6326284522689316948

namespace A025916

/-- `A029234(n+4)+A029234(n)-A029216(n+4)` -/
def P6326284522689316948.Spec : Prop :=
  ∀ n, P6326284522689316948.a n = A025916 n

end A025916

/-!
# A025917: Expansion of 1/((1-x^7)*(1-x^11)*(1-x^12)).

The programs for A025917, the canonical program `A025917.P17801303751830098508` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025917 has offset 0).

The definition of A025917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025917.P2015383506645424007

`A025783(n)+A025885(n)-A025781(n)`
-/

namespace A025917.P2015383506645424007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025783 n + (A025885 n - A025781 n)

end

end A025917.P2015383506645424007

namespace A025917

/-- `A025783(n)+A025885(n)-A025781(n)` -/
def P2015383506645424007.Spec : Prop :=
  ∀ n, P2015383506645424007.a n = A025917 n

end A025917

/-! ## A025917.P15381944228956982493

`A025885(n)+A025907(n)-A025881(n)`
-/

namespace A025917.P15381944228956982493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025885 n + (A025907 n - A025881 n)

end

end A025917.P15381944228956982493

namespace A025917

/-- `A025885(n)+A025907(n)-A025881(n)` -/
def P15381944228956982493.Spec : Prop :=
  ∀ n, P15381944228956982493.a n = A025917 n

end A025917

/-! ## A025917.P17801303751830098508

`A029402(n)+A029422(n)-A029382(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A025917

/-- `A029402(n)+A029422(n)-A029382(n)` -/
def P17801303751830098508.Spec : Prop :=
  ∀ n, P17801303751830098508.a n = A025917 n

theorem P17801303751830098508.correct : P17801303751830098508.Spec := by
  intro n
  simp only [A025917]

end A025917

/-! ## A025917.P6036150013378618520

`Δ[∑[A025907(n)]-A029422(n)]`
-/

namespace A025917.P6036150013378618520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025917.P6036150013378618520

namespace A025917

/-- `Δ[∑[A025907(n)]-A029422(n)]` -/
def P6036150013378618520.Spec : Prop :=
  ∀ n, P6036150013378618520.a n = A025917 n

end A025917

/-! ## A025917.P7077835987966788972

`A025907(n+1)-Δ[A029422(n)]`
-/

namespace A025917.P7077835987966788972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025917.P7077835987966788972

namespace A025917

/-- `A025907(n+1)-Δ[A029422(n)]` -/
def P7077835987966788972.Spec : Prop :=
  ∀ n, P7077835987966788972.a n = A025917 n

end A025917

/-! ## A025917.P11029531867365294646

`A025885(n+7)-A025896(n+7)`
-/

namespace A025917.P11029531867365294646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025885 (n + 7) - A025896 (n + 7)

end

end A025917.P11029531867365294646

namespace A025917

/-- `A025885(n+7)-A025896(n+7)` -/
def P11029531867365294646.Spec : Prop :=
  ∀ n, P11029531867365294646.a n = A025917 n

end A025917

/-!
# A025918: Expansion of 1/((1-x^8)*(1-x^9)*(1-x^10)).

The programs for A025918, the canonical program `A025918.P16543580143826744957` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025918 has offset 0).

The definition of A025918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025918.P16543580143826744957

`A029236(n)+A029423(n)-A029221(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A025918

/-- `A029236(n)+A029423(n)-A029221(n)` -/
def P16543580143826744957.Spec : Prop :=
  ∀ n, P16543580143826744957.a n = A025918 n

theorem P16543580143826744957.correct : P16543580143826744957.Spec := by
  intro n
  simp only [A025918]

end A025918

/-! ## A025918.P8358659206398548382

`A025912(n+1)+A025909(n)-A025908(n+1)`
-/

namespace A025918.P8358659206398548382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025912 (n + 1) + (A025909 n - A025908 (n + 1))

end

end A025918.P8358659206398548382

namespace A025918

/-- `A025912(n+1)+A025909(n)-A025908(n+1)` -/
def P8358659206398548382.Spec : Prop :=
  ∀ n, P8358659206398548382.a n = A025918 n

end A025918

/-! ## A025918.P5067622185879313831

`A025912(n+1)+A025912(n)-A025909(n+1)`
-/

namespace A025918.P5067622185879313831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025912 (n + 1) + (A025912 n - A025909 (n + 1))

end

end A025918.P5067622185879313831

namespace A025918

/-- `A025912(n+1)+A025912(n)-A025909(n+1)` -/
def P5067622185879313831.Spec : Prop :=
  ∀ n, P5067622185879313831.a n = A025918 n

end A025918

/-! ## A025918.P8033626441198736797

`A029236(n+2)+A029236(n)-A029188(n+2)`
-/

namespace A025918.P8033626441198736797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029236 (n + 2) + (A029236 n - A029188 (n + 2))

end

end A025918.P8033626441198736797

namespace A025918

/-- `A029236(n+2)+A029236(n)-A029188(n+2)` -/
def P8033626441198736797.Spec : Prop :=
  ∀ n, P8033626441198736797.a n = A025918 n

end A025918

/-! ## A025918.P10738862907188286551

`A025926(lt[A262087(n+1), A118759(n)])`
-/

namespace A025918.P10738862907188286551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A025918.P10738862907188286551

namespace A025918

/-- `A025926(lt[A262087(n+1), A118759(n)])` -/
def P10738862907188286551.Spec : Prop :=
  ∀ n, P10738862907188286551.a n = A025918 n

end A025918

/-!
# A025919: Expansion of 1/((1-x^8)*(1-x^9)*(1-x^11)).

The programs for A025919, the canonical program `A025919.P13838455602614178062` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025919 has offset 0).

The definition of A025919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025919.P13838455602614178062

`A029404(n)+A029424(n)-A029383(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A025919

/-- `A029404(n)+A029424(n)-A029383(n)` -/
def P13838455602614178062.Spec : Prop :=
  ∀ n, P13838455602614178062.a n = A025919 n

theorem P13838455602614178062.correct : P13838455602614178062.Spec := by
  intro n
  simp only [A025919]

end A025919

/-! ## A025919.P8439574659681598734

`Δ[∑[A025913(n)]-A029433(n)]`
-/

namespace A025919.P8439574659681598734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025913 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025919.P8439574659681598734

namespace A025919

/-- `Δ[∑[A025913(n)]-A029433(n)]` -/
def P8439574659681598734.Spec : Prop :=
  ∀ n, P8439574659681598734.a n = A025919 n

end A025919

/-! ## A025919.P14156727023666198072

`Δ[∑[A025918(n)]-A029442(n)]`
-/

namespace A025919.P14156727023666198072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025918 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025919.P14156727023666198072

namespace A025919

/-- `Δ[∑[A025918(n)]-A029442(n)]` -/
def P14156727023666198072.Spec : Prop :=
  ∀ n, P14156727023666198072.a n = A025919 n

end A025919

/-! ## A025919.P12640631032436873227

`A025913(n+1)-Δ[A029433(n)]`
-/

namespace A025919.P12640631032436873227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025913 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025919.P12640631032436873227

namespace A025919

/-- `A025913(n+1)-Δ[A029433(n)]` -/
def P12640631032436873227.Spec : Prop :=
  ∀ n, P12640631032436873227.a n = A025919 n

end A025919

/-! ## A025919.P2108164336446653805

`A025918(n+1)-Δ[A029442(n)]`
-/

namespace A025919.P2108164336446653805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025918 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025919.P2108164336446653805

namespace A025919

/-- `A025918(n+1)-Δ[A029442(n)]` -/
def P2108164336446653805.Spec : Prop :=
  ∀ n, P2108164336446653805.a n = A025919 n

end A025919

/-! ## A025919.P4713951613932574278

`A025913(n+1)+A025913(n)-A025910(n+1)`
-/

namespace A025919.P4713951613932574278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025913 (n + 1) + (A025913 n - A025910 (n + 1))

end

end A025919.P4713951613932574278

namespace A025919

/-- `A025913(n+1)+A025913(n)-A025910(n+1)` -/
def P4713951613932574278.Spec : Prop :=
  ∀ n, P4713951613932574278.a n = A025919 n

end A025919

/-!
# A025920: Expansion of 1/((1-x^8)*(1-x^9)*(1-x^12)).

The programs for A025920, the canonical program `A025920.P15830034220356691648` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025920 has offset 0).

The definition of A025920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025920.P15830034220356691648

`A025865(A014682(n)%A052938(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A025920

/-- `A025865(A014682(n)%A052938(n))` -/
def P15830034220356691648.Spec : Prop :=
  ∀ n, P15830034220356691648.a n = A025920 n

theorem P15830034220356691648.correct : P15830034220356691648.Spec := by
  intro n
  simp only [A025920]

end A025920

/-! ## A025920.P11999787783179228339

`A025850(n)+A025890(n)-A025840(n)`
-/

namespace A025920.P11999787783179228339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025850 n + (A025890 n - A025840 n)

end

end A025920.P11999787783179228339

namespace A025920

/-- `A025850(n)+A025890(n)-A025840(n)` -/
def P11999787783179228339.Spec : Prop :=
  ∀ n, P11999787783179228339.a n = A025920 n

end A025920

/-! ## A025920.P17760515904463340064

`A025872(n)+A025893(n)-A025864(n)`
-/

namespace A025920.P17760515904463340064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025872 n + (A025893 n - A025864 n)

end

end A025920.P17760515904463340064

namespace A025920

/-- `A025872(n)+A025893(n)-A025864(n)` -/
def P17760515904463340064.Spec : Prop :=
  ∀ n, P17760515904463340064.a n = A025920 n

end A025920

/-! ## A025920.P2107792946477725371

`A025874(n)+A029219(n)-A029190(n)`
-/

namespace A025920.P2107792946477725371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025874 n + (A029219 n - A029190 n)

end

end A025920.P2107792946477725371

namespace A025920

/-- `A025874(n)+A029219(n)-A029190(n)` -/
def P2107792946477725371.Spec : Prop :=
  ∀ n, P2107792946477725371.a n = A025920 n

end A025920

/-! ## A025920.P13079819027603820165

`A029238(n)+A029425(n)-A029223(n)`
-/

namespace A025920.P13079819027603820165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 n + (A029425 n - A029223 n)

end

end A025920.P13079819027603820165

namespace A025920

/-- `A029238(n)+A029425(n)-A029223(n)` -/
def P13079819027603820165.Spec : Prop :=
  ∀ n, P13079819027603820165.a n = A025920 n

end A025920

/-! ## A025920.P5299511034197558530

`A029238(n+2)-A029352(n+2)`
-/

namespace A025920.P5299511034197558530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (n + 2) - A029352 (n + 2)

end

end A025920.P5299511034197558530

namespace A025920

/-- `A029238(n+2)-A029352(n+2)` -/
def P5299511034197558530.Spec : Prop :=
  ∀ n, P5299511034197558530.a n = A025920 n

end A025920

/-!
# A025921: Expansion of 1/((1-x^8)*(1-x^10)*(1-x^11)).

The programs for A025921, the canonical program `A025921.P13448151223671208141` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025921 has offset 0).

The definition of A025921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025921.P13448151223671208141

`A029130(n)+A029435(n)-A029124(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A025921

/-- `A029130(n)+A029435(n)-A029124(n)` -/
def P13448151223671208141.Spec : Prop :=
  ∀ n, P13448151223671208141.a n = A025921 n

theorem P13448151223671208141.correct : P13448151223671208141.Spec := by
  intro n
  simp only [A025921]

end A025921

/-! ## A025921.P11105726289034721105

`Δ[A029124(n)-A029435(n)]`
-/

namespace A025921.P11105726289034721105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029124 n - A029435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025921.P11105726289034721105

namespace A025921

/-- `Δ[A029124(n)-A029435(n)]` -/
def P11105726289034721105.Spec : Prop :=
  ∀ n, P11105726289034721105.a n = A025921 n

end A025921

/-! ## A025921.P8922332540111943605

`Δ[A029128(n)-A029442(n)]`
-/

namespace A025921.P8922332540111943605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029128 n - A029442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025921.P8922332540111943605

namespace A025921

/-- `Δ[A029128(n)-A029442(n)]` -/
def P8922332540111943605.Spec : Prop :=
  ∀ n, P8922332540111943605.a n = A025921 n

end A025921

/-! ## A025921.P17633567241422582983

`Δ[∑[A025915(n)]-A029435(n)]`
-/

namespace A025921.P17633567241422582983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025915 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025921.P17633567241422582983

namespace A025921

/-- `Δ[∑[A025915(n)]-A029435(n)]` -/
def P17633567241422582983.Spec : Prop :=
  ∀ n, P17633567241422582983.a n = A025921 n

end A025921

/-! ## A025921.P11466014688138190991

`A025915(n+1)-Δ[A029435(n)]`
-/

namespace A025921.P11466014688138190991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025915 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025921.P11466014688138190991

namespace A025921

/-- `A025915(n+1)-Δ[A029435(n)]` -/
def P11466014688138190991.Spec : Prop :=
  ∀ n, P11466014688138190991.a n = A025921 n

end A025921

/-! ## A025921.P5917322749630469486

`A025919(n+1)+A025919(n)-A025918(n+1)`
-/

namespace A025921.P5917322749630469486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025919 (n + 1) + (A025919 n - A025918 (n + 1))

end

end A025921.P5917322749630469486

namespace A025921

/-- `A025919(n+1)+A025919(n)-A025918(n+1)` -/
def P5917322749630469486.Spec : Prop :=
  ∀ n, P5917322749630469486.a n = A025921 n

end A025921

/-!
# A025922: Expansion of 1/((1-x^8)*(1-x^11)*(1-x^12)).

The programs for A025922, the canonical program `A025922.P6708222772634296198` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025922 has offset 0).

The definition of A025922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025922.P6708222772634296198

`A029240(n)+A029427(n)-A029225(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A025922

/-- `A029240(n)+A029427(n)-A029225(n)` -/
def P6708222772634296198.Spec : Prop :=
  ∀ n, P6708222772634296198.a n = A025922 n

theorem P6708222772634296198.correct : P6708222772634296198.Spec := by
  intro n
  simp only [A025922]

end A025922

/-! ## A025922.P7182653628820928857

`A029240(n)+A029444(n)-A029238(n)`
-/

namespace A025922.P7182653628820928857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 n + (A029444 n - A029238 n)

end

end A025922.P7182653628820928857

namespace A025922

/-- `A029240(n)+A029444(n)-A029238(n)` -/
def P7182653628820928857.Spec : Prop :=
  ∀ n, P7182653628820928857.a n = A025922 n

end A025922

/-! ## A025922.P5486356644758672938

`A029408(n)+A029427(n)-A029386(n)`
-/

namespace A025922.P5486356644758672938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029408 n + (A029427 n - A029386 n)

end

end A025922.P5486356644758672938

namespace A025922

/-- `A029408(n)+A029427(n)-A029386(n)` -/
def P5486356644758672938.Spec : Prop :=
  ∀ n, P5486356644758672938.a n = A025922 n

end A025922

/-! ## A025922.P4820976671964001398

`A029408(n)+A029437(n)-A029395(n)`
-/

namespace A025922.P4820976671964001398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029408 n + (A029437 n - A029395 n)

end

end A025922.P4820976671964001398

namespace A025922

/-- `A029408(n)+A029437(n)-A029395(n)` -/
def P4820976671964001398.Spec : Prop :=
  ∀ n, P4820976671964001398.a n = A025922 n

end A025922

/-! ## A025922.P11969540845291668002

`A029240(n+2)-A029353(n+2)`
-/

namespace A025922.P11969540845291668002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 (n + 2) - A029353 (n + 2)

end

end A025922.P11969540845291668002

namespace A025922

/-- `A029240(n+2)-A029353(n+2)` -/
def P11969540845291668002.Spec : Prop :=
  ∀ n, P11969540845291668002.a n = A025922 n

end A025922

/-!
# A025923: Expansion of 1/((1-x^9)*(1-x^10)*(1-x^11)).

The programs for A025923, the canonical program `A025923.P9423752685854138239` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025923 has offset 0).

The definition of A025923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025923.P9423752685854138239

`Δ[A029130(n)-A029442(n)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A025923

/-- `Δ[A029130(n)-A029442(n)]` -/
def P9423752685854138239.Spec : Prop :=
  ∀ n, P9423752685854138239.a n = A025923 n

theorem P9423752685854138239.correct : P9423752685854138239.Spec := by
  intro n
  simp only [A025923]

end A025923

/-! ## A025923.P13258159203329041825

`A025921(n+1)-Δ[A029442(n)]`
-/

namespace A025923.P13258159203329041825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025921 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025923.P13258159203329041825

namespace A025923

/-- `A025921(n+1)-Δ[A029442(n)]` -/
def P13258159203329041825.Spec : Prop :=
  ∀ n, P13258159203329041825.a n = A025923 n

end A025923

/-! ## A025923.P1581496529358785353

`A025921(n)+Δ[A029130(n)-A029128(n)]`
-/

namespace A025923.P1581496529358785353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029130 n - A029128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025921 n + (f1 (n + 1) - f1 n)

end

end A025923.P1581496529358785353

namespace A025923

/-- `A025921(n)+Δ[A029130(n)-A029128(n)]` -/
def P1581496529358785353.Spec : Prop :=
  ∀ n, P1581496529358785353.a n = A025923 n

end A025923

/-! ## A025923.P10157476865594785528

`Δ[A029124(n+1)-A029435(n+1)-A029442(n)]`
-/

namespace A025923.P10157476865594785528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029124 (n + 1) - A029435 (n + 1) - A029442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025923.P10157476865594785528

namespace A025923

/-- `Δ[A029124(n+1)-A029435(n+1)-A029442(n)]` -/
def P10157476865594785528.Spec : Prop :=
  ∀ n, P10157476865594785528.a n = A025923 n

end A025923

/-! ## A025923.P5968757199203436864

`Δ[A029128(n+1)-A029442(n+1)-A029442(n)]`
-/

namespace A025923.P5968757199203436864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029128 (n + 1) - A029442 (n + 1) - A029442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025923.P5968757199203436864

namespace A025923

/-- `Δ[A029128(n+1)-A029442(n+1)-A029442(n)]` -/
def P5968757199203436864.Spec : Prop :=
  ∀ n, P5968757199203436864.a n = A025923 n

end A025923

/-! ## A025923.P2211514867631480028

`A025926(A007095(n))%A086531(n+1)`
-/

namespace A025923.P2211514867631480028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025926 (A007095 n).toNat) (A086531 (n + 1))

end

end A025923.P2211514867631480028

namespace A025923

/-- `A025926(A007095(n))%A086531(n+1)` -/
def P2211514867631480028.Spec : Prop :=
  ∀ n, P2211514867631480028.a n = A025923 n

end A025923

/-! ## A025923.P16981316849639959707

`A025926(A007095(n))*A172339(A057944(n))`
-/

namespace A025923.P16981316849639959707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 (A007095 n).toNat * A172339 (A057944 n).toNat

end

end A025923.P16981316849639959707

namespace A025923

/-- `A025926(A007095(n))*A172339(A057944(n))` -/
def P16981316849639959707.Spec : Prop :=
  ∀ n, P16981316849639959707.a n = A025923 n

end A025923

/-! ## A025923.P4025103168451446443

`A059841(A129748(n+1))+A025926(A007095(n))`
-/

namespace A025923.P4025103168451446443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A129748 (n + 1)).toNat + A025926 (A007095 n).toNat

end

end A025923.P4025103168451446443

namespace A025923

/-- `A059841(A129748(n+1))+A025926(A007095(n))` -/
def P4025103168451446443.Spec : Prop :=
  ∀ n, P4025103168451446443.a n = A025923 n

end A025923

/-!
# A025924: Expansion of 1/((1-x^9)*(1-x^10)*(1-x^12)).

The programs for A025924, the canonical program `A025924.P6419062361051786323` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025924 has offset 0).

The definition of A025924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025924.P6419062361051786323

`A025823(n)-A005044(A194960(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A025924

/-- `A025823(n)-A005044(A194960(n+1))` -/
def P6419062361051786323.Spec : Prop :=
  ∀ n, P6419062361051786323.a n = A025924 n

theorem P6419062361051786323.correct : P6419062361051786323.Spec := by
  intro n
  simp only [A025924]

end A025924

/-! ## A025924.P4859042196192749153

`A025893(n)+A029113(n)-A029102(n)`
-/

namespace A025924.P4859042196192749153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 n + (A029113 n - A029102 n)

end

end A025924.P4859042196192749153

namespace A025924

/-- `A025893(n)+A029113(n)-A029102(n)` -/
def P4859042196192749153.Spec : Prop :=
  ∀ n, P4859042196192749153.a n = A025924 n

end A025924

/-! ## A025924.P14231646766763481984

`A029411(n)+A029428(n)-A029388(n)`
-/

namespace A025924.P14231646766763481984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029411 n + (A029428 n - A029388 n)

end

end A025924.P14231646766763481984

namespace A025924

/-- `A029411(n)+A029428(n)-A029388(n)` -/
def P14231646766763481984.Spec : Prop :=
  ∀ n, P14231646766763481984.a n = A025924 n

end A025924

/-! ## A025924.P12060861347057131621

`A029080(n+1)-A029174(n+1)-A005044(A194960(n+1))`
-/

namespace A025924.P12060861347057131621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029080 (n + 1) - A029174 (n + 1) - A005044 (A194960 (n + 1)).toNat

end

end A025924.P12060861347057131621

namespace A025924

/-- `A029080(n+1)-A029174(n+1)-A005044(A194960(n+1))` -/
def P12060861347057131621.Spec : Prop :=
  ∀ n, P12060861347057131621.a n = A025924 n

end A025924

/-! ## A025924.P4887529098842675122

`Δ[A029102(n+4)-A029133(n+4)]`
-/

namespace A025924.P4887529098842675122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029102 (n + 4) - A029133 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025924.P4887529098842675122

namespace A025924

/-- `Δ[A029102(n+4)-A029133(n+4)]` -/
def P4887529098842675122.Spec : Prop :=
  ∀ n, P4887529098842675122.a n = A025924 n

end A025924

/-!
# A025925: Expansion of 1/((1-x^9)*(1-x^11)*(1-x^12)).

The programs for A025925, the canonical program `A025925.P1140353279712905302` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025925 has offset 0).

The definition of A025925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025925.P1140353279712905302

`A029114(n)+A029411(n)-A029102(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A025925

/-- `A029114(n)+A029411(n)-A029102(n)` -/
def P1140353279712905302.Spec : Prop :=
  ∀ n, P1140353279712905302.a n = A025925 n

theorem P1140353279712905302.correct : P1140353279712905302.Spec := by
  intro n
  simp only [A025925]

end A025925

/-! ## A025925.P16627473267886421054

`A029376(n)+A029411(n)-A029346(n)`
-/

namespace A025925.P16627473267886421054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029376 n + (A029411 n - A029346 n)

end

end A025925.P16627473267886421054

namespace A025925

/-- `A029376(n)+A029411(n)-A029346(n)` -/
def P16627473267886421054.Spec : Prop :=
  ∀ n, P16627473267886421054.a n = A025925 n

end A025925

/-! ## A025925.P6125563112553342727

`Δ[A029133(n)-A029446(n)]`
-/

namespace A025925.P6125563112553342727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029133 n - A029446 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025925.P6125563112553342727

namespace A025925

/-- `Δ[A029133(n)-A029446(n)]` -/
def P6125563112553342727.Spec : Prop :=
  ∀ n, P6125563112553342727.a n = A025925 n

end A025925

/-! ## A025925.P1915065278233852033

`A025922(n+1)-Δ[A029444(n)]`
-/

namespace A025925.P1915065278233852033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025922 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025925.P1915065278233852033

namespace A025925

/-- `A025922(n+1)-Δ[A029444(n)]` -/
def P1915065278233852033.Spec : Prop :=
  ∀ n, P1915065278233852033.a n = A025925 n

end A025925

/-! ## A025925.P10822295994193078863

`A025922(n)+Δ[A029240(n)-A029238(n)]`
-/

namespace A025925.P10822295994193078863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 n - A029238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025922 n + (f1 (n + 1) - f1 n)

end

end A025925.P10822295994193078863

namespace A025925

/-- `A025922(n)+Δ[A029240(n)-A029238(n)]` -/
def P10822295994193078863.Spec : Prop :=
  ∀ n, P10822295994193078863.a n = A025925 n

end A025925

/-!
# A025926: Expansion of 1/((1-x^10)*(1-x^11)*(1-x^12)).

The programs for A025926, the canonical program `A025926.P18037225688025791001` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025926 has offset 0).

The definition of A025926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025926.P18037225688025791001

`A029115(n)+A029412(n)-A029104(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A025926

/-- `A029115(n)+A029412(n)-A029104(n)` -/
def P18037225688025791001.Spec : Prop :=
  ∀ n, P18037225688025791001.a n = A025926 n

theorem P18037225688025791001.correct : P18037225688025791001.Spec := by
  intro n
  simp only [A025926]

end A025926

/-! ## A025926.P7484607080664785681

`A029224(n)+A029377(n)-A029192(n)`
-/

namespace A025926.P7484607080664785681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029224 n + (A029377 n - A029192 n)

end

end A025926.P7484607080664785681

namespace A025926

/-- `A029224(n)+A029377(n)-A029192(n)` -/
def P7484607080664785681.Spec : Prop :=
  ∀ n, P7484607080664785681.a n = A025926 n

end A025926

/-! ## A025926.P2809519174295841324

`A029244(n)+A029445(n)-A029240(n)`
-/

namespace A025926.P2809519174295841324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029244 n + (A029445 n - A029240 n)

end

end A025926.P2809519174295841324

namespace A025926

/-- `A029244(n)+A029445(n)-A029240(n)` -/
def P2809519174295841324.Spec : Prop :=
  ∀ n, P2809519174295841324.a n = A025926 n

end A025926

/-! ## A025926.P5553395577965345496

`A029377(n)+A029445(n)-A029372(n)`
-/

namespace A025926.P5553395577965345496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029377 n + (A029445 n - A029372 n)

end

end A025926.P5553395577965345496

namespace A025926

/-- `A029377(n)+A029445(n)-A029372(n)` -/
def P5553395577965345496.Spec : Prop :=
  ∀ n, P5553395577965345496.a n = A025926 n

end A025926

/-! ## A025926.P9974401776214358395

`A029412(n)+A029431(n)-A029391(n)`
-/

namespace A025926.P9974401776214358395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029412 n + (A029431 n - A029391 n)

end

end A025926.P9974401776214358395

namespace A025926

/-- `A029412(n)+A029431(n)-A029391(n)` -/
def P9974401776214358395.Spec : Prop :=
  ∀ n, P9974401776214358395.a n = A025926 n

end A025926

/-!
# A025927: Expansion of 1/((1-2*x)*(1-3*x)*(1-4*x)*(1-10*x)).

The programs for A025927, the canonical program `A025927.P1460186755607351330` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025927 has offset 0).

The definition of A025927 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025927.P1460186755607351330

`3^(n+1)-2^(n+1)+14*a(n-1)-40*a(n-2)` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A025927

/-- `3^(n+1)-2^(n+1)+14*a(n-1)-40*a(n-2)` -/
def P1460186755607351330.Spec : Prop :=
  ∀ n, P1460186755607351330.a n = A025927 n

theorem P1460186755607351330.correct : P1460186755607351330.Spec := by
  intro n
  simp only [A025927]

end A025927

/-! ## A025927.P12290051997484371245

`(10^(n+3)-7*4^(n+4)+16*3^(n+4)-21*2^(n+3))/336`
-/

namespace A025927.P12290051997484371245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (n + 3) : ℤ) - (7 * 4 ^ (n + 4) : ℤ) + (16 * 3 ^ (n + 4) : ℤ) - (21 * 2 ^ (n + 3) : ℤ) : ℚ) / 336

end

end A025927.P12290051997484371245

namespace A025927

/-- `(10^(n+3)-7*4^(n+4)+16*3^(n+4)-21*2^(n+3))/336` -/
def P12290051997484371245.Spec : Prop :=
  ∀ n, P12290051997484371245.a n = (A025927 n : ℚ)

theorem P12290051997484371245.correct : P12290051997484371245.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A025927, Nat.add_sub_cancel, A025927.P12290051997484371245.a, A025927.P1460186755607351330.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A025927, Nat.add_sub_cancel, A025927.P12290051997484371245.a, A025927.P1460186755607351330.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A025927

/-! ## A025927.P3675857818618576593

`∑[A027650(n)]+10*a(n-1)` with `a(0)=1`
-/

namespace A025927.P3675857818618576593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027650 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 10 * a (n - 1)

end

end A025927.P3675857818618576593

namespace A025927

/-- `∑[A027650(n)]+10*a(n-1)` -/
def P3675857818618576593.Spec : Prop :=
  ∀ n, P3675857818618576593.a n = A025927 n

end A025927

/-! ## A025927.P8480086035365427357

`a(n-1)+A016981(n)+a(n-1)` with `a(0)=1`
-/

namespace A025927.P8480086035365427357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016981 n + a (n - 1))

end

end A025927.P8480086035365427357

namespace A025927

/-- `a(n-1)+A016981(n)+a(n-1)` -/
def P8480086035365427357.Spec : Prop :=
  ∀ n, P8480086035365427357.a n = A025927 n

end A025927

/-! ## A025927.P4952668205701227336

`2*A025934(n)-A025962(n)`
-/

namespace A025927.P4952668205701227336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025934 n - A025962 n

end

end A025927.P4952668205701227336

namespace A025927

/-- `2*A025934(n)-A025962(n)` -/
def P4952668205701227336.Spec : Prop :=
  ∀ n, P4952668205701227336.a n = A025927 n

end A025927

/-! ## A025927.P8379489005123797780

`A016205(n)+A016215(n)-A016208(n)`
-/

namespace A025927.P8379489005123797780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016205 n + (A016215 n - A016208 n)

end

end A025927.P8379489005123797780

namespace A025927

/-- `A016205(n)+A016215(n)-A016208(n)` -/
def P8379489005123797780.Spec : Prop :=
  ∀ n, P8379489005123797780.a n = A025927 n

end A025927

/-! ## A025927.P9146309743932839859

`A025938(n)+A025949(n)-A028035(n)`
-/

namespace A025927.P9146309743932839859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025938 n + (A025949 n - A028035 n)

end

end A025927.P9146309743932839859

namespace A025927

/-- `A025938(n)+A025949(n)-A028035(n)` -/
def P9146309743932839859.Spec : Prop :=
  ∀ n, P9146309743932839859.a n = A025927 n

end A025927

/-! ## A025927.P2303730419604140045

`Δ[A021092(n)-A021049(n)]`
-/

namespace A025927.P2303730419604140045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021092 n - A021049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025927.P2303730419604140045

namespace A025927

/-- `Δ[A021092(n)-A021049(n)]` -/
def P2303730419604140045.Spec : Prop :=
  ∀ n, P2303730419604140045.a n = A025927 n

end A025927

/-! ## A025927.P11537396797530980287

`A016292(n+1)-A016279(n+1)`
-/

namespace A025927.P11537396797530980287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016292 (n + 1) - A016279 (n + 1)

end

end A025927.P11537396797530980287

namespace A025927

/-- `A016292(n+1)-A016279(n+1)` -/
def P11537396797530980287.Spec : Prop :=
  ∀ n, P11537396797530980287.a n = A025927 n

end A025927

/-!
# A025928: Expansion of 1/((1-2*x)*(1-3*x)*(1-4*x)*(1-11*x)).

The programs for A025928, the canonical program `A025928.P9633945233441492197` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025928 has offset 0).

The definition of A025928 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025928.P9633945233441492197

`3^(n+1)-2^(n+1)+15*a(n-1)-44*a(n-2)` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A025928

/-- `3^(n+1)-2^(n+1)+15*a(n-1)-44*a(n-2)` -/
def P9633945233441492197.Spec : Prop :=
  ∀ n, P9633945233441492197.a n = A025928 n

theorem P9633945233441492197.correct : P9633945233441492197.Spec := by
  intro n
  simp only [A025928]

end A025928

/-! ## A025928.P1677446359394642158

`(11^(n+3)-9*4^(n+4)+7*3^(n+5)-7*2^(n+5))/504`
-/

namespace A025928.P1677446359394642158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 3) : ℤ) - (9 * 4 ^ (n + 4) : ℤ) + (7 * 3 ^ (n + 5) : ℤ) - (7 * 2 ^ (n + 5) : ℤ) : ℚ) / 504

end

end A025928.P1677446359394642158

namespace A025928

/-- `(11^(n+3)-9*4^(n+4)+7*3^(n+5)-7*2^(n+5))/504` -/
def P1677446359394642158.Spec : Prop :=
  ∀ n, P1677446359394642158.a n = (A025928 n : ℚ)

theorem P1677446359394642158.correct : P1677446359394642158.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A025928, Nat.add_sub_cancel, A025928.P1677446359394642158.a, A025928.P9633945233441492197.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A025928, Nat.add_sub_cancel, A025928.P1677446359394642158.a, A025928.P9633945233441492197.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A025928

/-! ## A025928.P7757496489000523001

`A017065(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A025928.P7757496489000523001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017065 n + 2 * a (n - 1)

end

end A025928.P7757496489000523001

namespace A025928

/-- `A017065(n)+2*a(n-1)` -/
def P7757496489000523001.Spec : Prop :=
  ∀ n, P7757496489000523001.a n = A025928 n

end A025928

/-! ## A025928.P12821441267715602264

`A016293(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A025928.P12821441267715602264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016293 n + 3 * a (n - 1)

end

end A025928.P12821441267715602264

namespace A025928

/-- `A016293(n)+3*a(n-1)` -/
def P12821441267715602264.Spec : Prop :=
  ∀ n, P12821441267715602264.a n = A025928 n

end A025928

/-! ## A025928.P12161004612106709680

`∑[A027650(n)+11*a(n-1)]` with `a(0)=1`
-/

namespace A025928.P12161004612106709680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A027650 n + 11 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025928.P12161004612106709680

namespace A025928

/-- `∑[A027650(n)+11*a(n-1)]` -/
def P12161004612106709680.Spec : Prop :=
  ∀ n, P12161004612106709680.a n = A025928 n

end A025928

/-! ## A025928.P12030499824643382145

`2*A021394(n)-A021094(n)`
-/

namespace A025928.P12030499824643382145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021394 n - A021094 n

end

end A025928.P12030499824643382145

namespace A025928

/-- `2*A021394(n)-A021094(n)` -/
def P12030499824643382145.Spec : Prop :=
  ∀ n, P12030499824643382145.a n = A025928 n

end A025928

/-! ## A025928.P15190970210922308336

`2*A025935(n)-A025963(n)`
-/

namespace A025928.P15190970210922308336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025935 n - A025963 n

end

end A025928.P15190970210922308336

namespace A025928

/-- `2*A025935(n)-A025963(n)` -/
def P15190970210922308336.Spec : Prop :=
  ∀ n, P15190970210922308336.a n = A025928 n

end A025928

/-! ## A025928.P9866981041263570056

`2*A025941(n)-A028036(n)`
-/

namespace A025928.P9866981041263570056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025941 n - A028036 n

end

end A025928.P9866981041263570056

namespace A025928

/-- `2*A025941(n)-A028036(n)` -/
def P9866981041263570056.Spec : Prop :=
  ∀ n, P9866981041263570056.a n = A025928 n

end A025928

/-! ## A025928.P18282730586130946330

`A025935(n)+A025963(n)-A028030(n)`
-/

namespace A025928.P18282730586130946330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025935 n + (A025963 n - A028030 n)

end

end A025928.P18282730586130946330

namespace A025928

/-- `A025935(n)+A025963(n)-A028030(n)` -/
def P18282730586130946330.Spec : Prop :=
  ∀ n, P18282730586130946330.a n = A025928 n

end A025928

/-! ## A025928.P10158673193881384011

`Δ[A021094(n)-A021054(n)]`
-/

namespace A025928.P10158673193881384011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021094 n - A021054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025928.P10158673193881384011

namespace A025928

/-- `Δ[A021094(n)-A021054(n)]` -/
def P10158673193881384011.Spec : Prop :=
  ∀ n, P10158673193881384011.a n = A025928 n

end A025928

/-!
# A025929: Expansion of 1/((1-2x)(1-3x)(1-4x)(1-12x)).

The programs for A025929, the canonical program `A025929.P1589597059844114418` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025929 has offset 0).

The definition of A025929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025929.P1589597059844114418

`16*a(n-1)-48*a(n-2)+3^(n+1)-2^(n+1)` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A025929

/-- `16*a(n-1)-48*a(n-2)+3^(n+1)-2^(n+1)` -/
def P1589597059844114418.Spec : Prop :=
  ∀ n, P1589597059844114418.a n = A025929 n

theorem P1589597059844114418.correct : P1589597059844114418.Spec := by
  intro n
  simp only [A025929]

end A025929

/-! ## A025929.P9257664931157921472

`A017161(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A025929.P9257664931157921472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017161 n + 2 * a (n - 1)

end

end A025929.P9257664931157921472

namespace A025929

/-- `A017161(n)+2*a(n-1)` -/
def P9257664931157921472.Spec : Prop :=
  ∀ n, P9257664931157921472.a n = A025929 n

end A025929

/-! ## A025929.P12869995815461898612

`A016269(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A025929.P12869995815461898612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016269 n + 12 * a (n - 1)

end

end A025929.P12869995815461898612

namespace A025929

/-- `A016269(n)+12*a(n-1)` -/
def P12869995815461898612.Spec : Prop :=
  ∀ n, P12869995815461898612.a n = A025929 n

end A025929

/-! ## A025929.P13103733557344272374

`A025936(n)+A025936(n)-A025964(n)`
-/

namespace A025929.P13103733557344272374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025936 n + (A025936 n - A025964 n)

end

end A025929.P13103733557344272374

namespace A025929

/-- `A025936(n)+A025936(n)-A025964(n)` -/
def P13103733557344272374.Spec : Prop :=
  ∀ n, P13103733557344272374.a n = A025929 n

end A025929

/-! ## A025929.P16890362335371522405

`A025936(n)-(A028031(n)-A025964(n))`
-/

namespace A025929.P16890362335371522405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025936 n - (A028031 n - A025964 n)

end

end A025929.P16890362335371522405

namespace A025929

/-- `A025936(n)-(A028031(n)-A025964(n))` -/
def P16890362335371522405.Spec : Prop :=
  ∀ n, P16890362335371522405.a n = A025929 n

end A025929

/-! ## A025929.P4970508316251271291

`Δ[A021104(n)-A021064(n)]`
-/

namespace A025929.P4970508316251271291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021104 n - A021064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025929.P4970508316251271291

namespace A025929

/-- `Δ[A021104(n)-A021064(n)]` -/
def P4970508316251271291.Spec : Prop :=
  ∀ n, P4970508316251271291.a n = A025929 n

end A025929

/-! ## A025929.P7833468013331319714

`2*A025936(n)-A025964(n)`
-/

namespace A025929.P7833468013331319714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025936 n - A025964 n

end

end A025929.P7833468013331319714

namespace A025929

/-- `2*A025936(n)-A025964(n)` -/
def P7833468013331319714.Spec : Prop :=
  ∀ n, P7833468013331319714.a n = A025929 n

end A025929

/-!
# A025930: Expansion of 1/((1-2*x)*(1-3*x)*(1-5*x)*(1-6*x)).

The programs for A025930, the canonical program `A025930.P4010185525275200180` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025930 has offset 0).

The definition of A025930 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025930.P4010185525275200180

`3^(n+1)-2^(n+1)+11*a(n-1)-30*a(n-2)` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A025930

/-- `3^(n+1)-2^(n+1)+11*a(n-1)-30*a(n-2)` -/
def P4010185525275200180.Spec : Prop :=
  ∀ n, P4010185525275200180.a n = A025930 n

theorem P4010185525275200180.correct : P4010185525275200180.Spec := by
  intro n
  simp only [A025930]

end A025930

/-! ## A025930.P5177850584662027206

`A016295(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A025930.P5177850584662027206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016295 n + 3 * a (n - 1)

end

end A025930.P5177850584662027206

namespace A025930

/-- `A016295(n)+3*a(n-1)` -/
def P5177850584662027206.Spec : Prop :=
  ∀ n, P5177850584662027206.a n = A025930 n

end A025930

/-! ## A025930.P6009845502733175232

`A001240(n+1)+5*a(n-1)` with `a(0)=1`
-/

namespace A025930.P6009845502733175232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001240 (n + 1) + 5 * a (n - 1)

end

end A025930.P6009845502733175232

namespace A025930

/-- `A001240(n+1)+5*a(n-1)` -/
def P6009845502733175232.Spec : Prop :=
  ∀ n, P6009845502733175232.a n = A025930 n

end A025930

/-! ## A025930.P11555887557205435502

`a(n-1)+A017269(n)+a(n-1)` with `a(0)=1`
-/

namespace A025930.P11555887557205435502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A017269 n + a (n - 1))

end

end A025930.P11555887557205435502

namespace A025930

/-- `a(n-1)+A017269(n)+a(n-1)` -/
def P11555887557205435502.Spec : Prop :=
  ∀ n, P11555887557205435502.a n = A025930 n

end A025930

/-! ## A025930.P15361600184828597248

`Δ[A021029(n)-A021024(n)]`
-/

namespace A025930.P15361600184828597248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021029 n - A021024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025930.P15361600184828597248

namespace A025930

/-- `Δ[A021029(n)-A021024(n)]` -/
def P15361600184828597248.Spec : Prop :=
  ∀ n, P15361600184828597248.a n = A025930 n

end A025930

/-! ## A025930.P9211148635756944717

`2*A025931(n)-A025937(n)`
-/

namespace A025930.P9211148635756944717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025931 n - A025937 n

end

end A025930.P9211148635756944717

namespace A025930

/-- `2*A025931(n)-A025937(n)` -/
def P9211148635756944717.Spec : Prop :=
  ∀ n, P9211148635756944717.a n = A025930 n

end A025930

/-! ## A025930.P14757359268081125481

`Δ[A025933(n)-A021194(n)]`
-/

namespace A025930.P14757359268081125481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025933 n - A021194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025930.P14757359268081125481

namespace A025930

/-- `Δ[A025933(n)-A021194(n)]` -/
def P14757359268081125481.Spec : Prop :=
  ∀ n, P14757359268081125481.a n = A025930 n

end A025930

/-! ## A025930.P4708683684814776697

`2*A025933(n)-A025988(n)`
-/

namespace A025930.P4708683684814776697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025933 n - A025988 n

end

end A025930.P4708683684814776697

namespace A025930

/-- `2*A025933(n)-A025988(n)` -/
def P4708683684814776697.Spec : Prop :=
  ∀ n, P4708683684814776697.a n = A025930 n

end A025930

/-! ## A025930.P6987563292636544264

`A028143(n)/2^n`
-/

namespace A025930.P6987563292636544264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028143 n : ℚ) / (2 ^ n : ℚ)

end

end A025930.P6987563292636544264

namespace A025930

/-- `A028143(n)/2^n` -/
def P6987563292636544264.Spec : Prop :=
  ∀ n, P6987563292636544264.a n = (A025930 n : ℚ)

end A025930

/-!
# A025931: Expansion of 1/((1-2x)(1-3x)(1-5x)(1-7x)).

The programs for A025931, the canonical program `A025931.P11962682644410642077` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025931 has offset 0).

The definition of A025931 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025931.P11962682644410642077

`12*a(n-1)-35*a(n-2)+3^(n+1)-2^(n+1)` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A025931

/-- `12*a(n-1)-35*a(n-2)+3^(n+1)-2^(n+1)` -/
def P11962682644410642077.Spec : Prop :=
  ∀ n, P11962682644410642077.a n = A025931 n

theorem P11962682644410642077.correct : P11962682644410642077.Spec := by
  intro n
  simp only [A025931]

end A025931

/-! ## A025931.P11567265810543759493

`a(n-1)+A017389(n)+a(n-1)` with `a(0)=1`
-/

namespace A025931.P11567265810543759493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A017389 n + a (n - 1))

end

end A025931.P11567265810543759493

namespace A025931

/-- `a(n-1)+A017389(n)+a(n-1)` -/
def P11567265810543759493.Spec : Prop :=
  ∀ n, P11567265810543759493.a n = A025931 n

end A025931

/-! ## A025931.P7395485328306958415

`(A025937(n)+A025930(n))/2`
-/

namespace A025931.P7395485328306958415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025937 n + A025930 n : ℚ) / 2

end

end A025931.P7395485328306958415

namespace A025931

/-- `(A025937(n)+A025930(n))/2` -/
def P7395485328306958415.Spec : Prop :=
  ∀ n, P7395485328306958415.a n = (A025931 n : ℚ)

end A025931

/-! ## A025931.P11961054111987110645

`(A016276(n+1)-A016273(n+1))/2`
-/

namespace A025931.P11961054111987110645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016276 (n + 1) - A016273 (n + 1) : ℚ) / 2

end

end A025931.P11961054111987110645

namespace A025931

/-- `(A016276(n+1)-A016273(n+1))/2` -/
def P11961054111987110645.Spec : Prop :=
  ∀ n, P11961054111987110645.a n = (A025931 n : ℚ)

end A025931

/-! ## A025931.P5417769373755362441

`2*A025933(n)-A025944(n)`
-/

namespace A025931.P5417769373755362441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025933 n - A025944 n

end

end A025931.P5417769373755362441

namespace A025931

/-- `2*A025933(n)-A025944(n)` -/
def P5417769373755362441.Spec : Prop :=
  ∀ n, P5417769373755362441.a n = A025931 n

end A025931

/-! ## A025931.P14537943241667835248

`2*A025935(n)-A025995(n)`
-/

namespace A025931.P14537943241667835248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025935 n - A025995 n

end

end A025931.P14537943241667835248

namespace A025931

/-- `2*A025935(n)-A025995(n)` -/
def P14537943241667835248.Spec : Prop :=
  ∀ n, P14537943241667835248.a n = A025931 n

end A025931

/-! ## A025931.P18063745677517544367

`A124960(A055999(n)+10)`
-/

namespace A025931.P18063745677517544367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124960 (A055999 n + 10).toNat

end

end A025931.P18063745677517544367

namespace A025931

/-- `A124960(A055999(n)+10)` -/
def P18063745677517544367.Spec : Prop :=
  ∀ n, P18063745677517544367.a n = A025931 n

end A025931

/-! ## A025931.P13657232163949846215

`A124960(A167614(n+2)+1)`
-/

namespace A025931.P13657232163949846215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124960 (A167614 (n + 2) + 1).toNat

end

end A025931.P13657232163949846215

namespace A025931

/-- `A124960(A167614(n+2)+1)` -/
def P13657232163949846215.Spec : Prop :=
  ∀ n, P13657232163949846215.a n = A025931 n

end A025931

/-! ## A025931.P16862561649081987685

`record[A343751(A052905(n))]`
-/

namespace A025931.P16862561649081987685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343751 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025931.P16862561649081987685

namespace A025931

/-- `record[A343751(A052905(n))]` -/
def P16862561649081987685.Spec : Prop :=
  ∀ n, P16862561649081987685.a n = A025931 n

end A025931

/-! ## A025931.P17633772081934309352

`A343751(A052905(n+2))`
-/

namespace A025931.P17633772081934309352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343751 (A052905 (n + 2)).toNat

end

end A025931.P17633772081934309352

namespace A025931

/-- `A343751(A052905(n+2))` -/
def P17633772081934309352.Spec : Prop :=
  ∀ n, P17633772081934309352.a n = A025931 n

end A025931

/-!
# A025932: Expansion of 1/((1-2*x)*(1-3*x)*(1-5*x)*(1-8*x)).

The programs for A025932, the canonical program `A025932.P1785981771769670932` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025932 has offset 0).

The definition of A025932 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025932.P1785981771769670932

`3^(n+1)-2^(n+1)+13*a(n-1)-40*a(n-2)` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A025932

/-- `3^(n+1)-2^(n+1)+13*a(n-1)-40*a(n-2)` -/
def P1785981771769670932.Spec : Prop :=
  ∀ n, P1785981771769670932.a n = A025932 n

theorem P1785981771769670932.correct : P1785981771769670932.Spec := by
  intro n
  simp only [A025932]

end A025932

/-! ## A025932.P8622591715358239679

`a(n-1)+A017521(n)+a(n-1)` with `a(0)=1`
-/

namespace A025932.P8622591715358239679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A017521 n + a (n - 1))

end

end A025932.P8622591715358239679

namespace A025932

/-- `a(n-1)+A017521(n)+a(n-1)` -/
def P8622591715358239679.Spec : Prop :=
  ∀ n, P8622591715358239679.a n = A025932 n

end A025932

/-! ## A025932.P12296642787722747880

`2*A021129(n)-A021044(n)`
-/

namespace A025932.P12296642787722747880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021129 n - A021044 n

end

end A025932.P12296642787722747880

namespace A025932

/-- `2*A021129(n)-A021044(n)` -/
def P12296642787722747880.Spec : Prop :=
  ∀ n, P12296642787722747880.a n = A025932 n

end A025932

/-! ## A025932.P11579255195496249102

`A025934(n)+A025949(n)-A025998(n)`
-/

namespace A025932.P11579255195496249102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025934 n + (A025949 n - A025998 n)

end

end A025932.P11579255195496249102

namespace A025932

/-- `A025934(n)+A025949(n)-A025998(n)` -/
def P11579255195496249102.Spec : Prop :=
  ∀ n, P11579255195496249102.a n = A025932 n

end A025932

/-! ## A025932.P6858215321289289738

`2*A025935(n)-A025950(n)`
-/

namespace A025932.P6858215321289289738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025935 n - A025950 n

end

end A025932.P6858215321289289738

namespace A025932

/-- `2*A025935(n)-A025950(n)` -/
def P6858215321289289738.Spec : Prop :=
  ∀ n, P6858215321289289738.a n = A025932 n

end A025932

/-! ## A025932.P18271078055073351061

`A025935(n)-(A028066(n)-A025950(n))`
-/

namespace A025932.P18271078055073351061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025935 n - (A028066 n - A025950 n)

end

end A025932.P18271078055073351061

namespace A025932

/-- `A025935(n)-(A028066(n)-A025950(n))` -/
def P18271078055073351061.Spec : Prop :=
  ∀ n, P18271078055073351061.a n = A025932 n

end A025932

/-!
# A025933: Expansion of 1/((1-2*x)*(1-3*x)*(1-5*x)*(1-9*x)).

The programs for A025933, the canonical program `A025933.P531526044728121233` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025933 has offset 0).

The definition of A025933 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025933.P531526044728121233

`3^(n+1)-2^(n+1)+14*a(n-1)-45*a(n-2)` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A025933

/-- `3^(n+1)-2^(n+1)+14*a(n-1)-45*a(n-2)` -/
def P531526044728121233.Spec : Prop :=
  ∀ n, P531526044728121233.a n = A025933 n

theorem P531526044728121233.correct : P531526044728121233.Spec := by
  intro n
  simp only [A025933]

end A025933

/-! ## A025933.P2737992040799316321

`(9^(n+3)-7*5^(n+3)+14*3^(n+3)-8*2^(n+3))/168`
-/

namespace A025933.P2737992040799316321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ (n + 3) : ℤ) - (7 * 5 ^ (n + 3) : ℤ) + (14 * 3 ^ (n + 3) : ℤ) - (8 * 2 ^ (n + 3) : ℤ) : ℚ) / 168

end

end A025933.P2737992040799316321

namespace A025933

/-- `(9^(n+3)-7*5^(n+3)+14*3^(n+3)-8*2^(n+3))/168` -/
def P2737992040799316321.Spec : Prop :=
  ∀ n, P2737992040799316321.a n = (A025933 n : ℚ)

theorem P2737992040799316321.correct : P2737992040799316321.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A025933, Nat.add_sub_cancel, A025933.P2737992040799316321.a, A025933.P531526044728121233.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A025933, Nat.add_sub_cancel, A025933.P2737992040799316321.a, A025933.P531526044728121233.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A025933

/-! ## A025933.P6470061855104981909

`A016298(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A025933.P6470061855104981909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016298 n + 3 * a (n - 1)

end

end A025933.P6470061855104981909

namespace A025933

/-- `A016298(n)+3*a(n-1)` -/
def P6470061855104981909.Spec : Prop :=
  ∀ n, P6470061855104981909.a n = A025933 n

end A025933

/-! ## A025933.P10683564046933657694

`A016278(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A025933.P10683564046933657694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016278 n + 5 * a (n - 1)

end

end A025933.P10683564046933657694

namespace A025933

/-- `A016278(n)+5*a(n-1)` -/
def P10683564046933657694.Spec : Prop :=
  ∀ n, P10683564046933657694.a n = A025933 n

end A025933

/-! ## A025933.P13265959591607132602

`a(n-1)+A017897(n)+a(n-1)` with `a(0)=1`
-/

namespace A025933.P13265959591607132602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A017897 n + a (n - 1))

end

end A025933.P13265959591607132602

namespace A025933

/-- `a(n-1)+A017897(n)+a(n-1)` -/
def P13265959591607132602.Spec : Prop :=
  ∀ n, P13265959591607132602.a n = A025933 n

end A025933

/-! ## A025933.P17806671564193803717

`2*A021048(n)-A021024(n)`
-/

namespace A025933.P17806671564193803717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021048 n - A021024 n

end

end A025933.P17806671564193803717

namespace A025933

/-- `2*A021048(n)-A021024(n)` -/
def P17806671564193803717.Spec : Prop :=
  ∀ n, P17806671564193803717.a n = A025933 n

end A025933

/-! ## A025933.P9230789155972663803

`2*A025944(n)-A025993(n)`
-/

namespace A025933.P9230789155972663803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025944 n - A025993 n

end

end A025933.P9230789155972663803

namespace A025933

/-- `2*A025944(n)-A025993(n)` -/
def P9230789155972663803.Spec : Prop :=
  ∀ n, P9230789155972663803.a n = A025933 n

end A025933

/-! ## A025933.P6697797044136780559

`A025937(n)+A025993(n)-A025988(n)`
-/

namespace A025933.P6697797044136780559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025937 n + (A025993 n - A025988 n)

end

end A025933.P6697797044136780559

namespace A025933

/-- `A025937(n)+A025993(n)-A025988(n)` -/
def P6697797044136780559.Spec : Prop :=
  ∀ n, P6697797044136780559.a n = A025933 n

end A025933

/-!
# A025934: Expansion of 1/((1-2*x)*(1-3*x)*(1-5*x)*(1-10*x)).

The programs for A025934, the canonical program `A025934.P80961721417612360` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025934 has offset 0).

The definition of A025934 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025934.P80961721417612360

`3^(n+1)-2^(n+1)+15*a(n-1)-50*a(n-2)` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A025934

/-- `3^(n+1)-2^(n+1)+15*a(n-1)-50*a(n-2)` -/
def P80961721417612360.Spec : Prop :=
  ∀ n, P80961721417612360.a n = A025934 n

theorem P80961721417612360.correct : P80961721417612360.Spec := by
  intro n
  simp only [A025934]

end A025934

/-! ## A025934.P7126587167476574933

`A016273(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A025934.P7126587167476574933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016273 n + 10 * a (n - 1)

end

end A025934.P7126587167476574933

namespace A025934

/-- `A016273(n)+10*a(n-1)` -/
def P7126587167476574933.Spec : Prop :=
  ∀ n, P7126587167476574933.a n = A025934 n

end A025934

/-! ## A025934.P14860705907799317665

`a(n-1)+A017916(n)+a(n-1)` with `a(0)=1`
-/

namespace A025934.P14860705907799317665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A017916 n + a (n - 1))

end

end A025934.P14860705907799317665

namespace A025934

/-- `a(n-1)+A017916(n)+a(n-1)` -/
def P14860705907799317665.Spec : Prop :=
  ∀ n, P14860705907799317665.a n = A025934 n

end A025934

/-! ## A025934.P16851152268467588529

`2*A016279(n)-A016273(n)`
-/

namespace A025934.P16851152268467588529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016279 n - A016273 n

end

end A025934.P16851152268467588529

namespace A025934

/-- `2*A016279(n)-A016273(n)` -/
def P16851152268467588529.Spec : Prop :=
  ∀ n, P16851152268467588529.a n = A025934 n

end A025934

/-! ## A025934.P11693579533956375841

`2*A021144(n)-A021049(n)`
-/

namespace A025934.P11693579533956375841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021144 n - A021049 n

end

end A025934.P11693579533956375841

namespace A025934

/-- `2*A021144(n)-A021049(n)` -/
def P11693579533956375841.Spec : Prop :=
  ∀ n, P11693579533956375841.a n = A025934 n

end A025934

/-! ## A025934.P7753159860097793648

`2*A021464(n)-A021144(n)`
-/

namespace A025934.P7753159860097793648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021464 n - A021144 n

end

end A025934.P7753159860097793648

namespace A025934

/-- `2*A021464(n)-A021144(n)` -/
def P7753159860097793648.Spec : Prop :=
  ∀ n, P7753159860097793648.a n = A025934 n

end A025934

/-! ## A025934.P6865410846790494367

`Δ[A021464(n)-A021144(n)]`
-/

namespace A025934.P6865410846790494367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021464 n - A021144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025934.P6865410846790494367

namespace A025934

/-- `Δ[A021464(n)-A021144(n)]` -/
def P6865410846790494367.Spec : Prop :=
  ∀ n, P6865410846790494367.a n = A025934 n

end A025934

/-! ## A025934.P17799157542419452671

`A025932(n)+A025998(n)-A025949(n)`
-/

namespace A025934.P17799157542419452671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025932 n + (A025998 n - A025949 n)

end

end A025934.P17799157542419452671

namespace A025934

/-- `A025932(n)+A025998(n)-A025949(n)` -/
def P17799157542419452671.Spec : Prop :=
  ∀ n, P17799157542419452671.a n = A025934 n

end A025934

/-! ## A025934.P6487786975743469604

`A025936(n)+A025956(n)-A026241(n)`
-/

namespace A025934.P6487786975743469604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025936 n + (A025956 n - A026241 n)

end

end A025934.P6487786975743469604

namespace A025934

/-- `A025936(n)+A025956(n)-A026241(n)` -/
def P6487786975743469604.Spec : Prop :=
  ∀ n, P6487786975743469604.a n = A025934 n

end A025934

/-!
# A025935: Expansion of 1/((1-2*x)*(1-3*x)*(1-5*x)*(1-11*x)).

The programs for A025935, the canonical program `A025935.P13333816258714506073` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025935 has offset 0).

The definition of A025935 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025935.P13333816258714506073

`3^(n+1)-2^(n+1)+16*a(n-1)-55*a(n-2)` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A025935

/-- `3^(n+1)-2^(n+1)+16*a(n-1)-55*a(n-2)` -/
def P13333816258714506073.Spec : Prop :=
  ∀ n, P13333816258714506073.a n = A025935 n

theorem P13333816258714506073.correct : P13333816258714506073.Spec := by
  intro n
  simp only [A025935]

end A025935

/-! ## A025935.P5755203550499045658

`a(n-1)+A017917(n)+a(n-1)` with `a(0)=1`
-/

namespace A025935.P5755203550499045658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A017917 n + a (n - 1))

end

end A025935.P5755203550499045658

namespace A025935

/-- `a(n-1)+A017917(n)+a(n-1)` -/
def P5755203550499045658.Spec : Prop :=
  ∀ n, P5755203550499045658.a n = A025935 n

end A025935

/-! ## A025935.P8101268849393077568

`2*A021154(n)-A021054(n)`
-/

namespace A025935.P8101268849393077568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021154 n - A021054 n

end

end A025935.P8101268849393077568

namespace A025935

/-- `2*A021154(n)-A021054(n)` -/
def P8101268849393077568.Spec : Prop :=
  ∀ n, P8101268849393077568.a n = A025935 n

end A025935

/-! ## A025935.P9713336548855022338

`(A025950(n)+A025932(n))/2`
-/

namespace A025935.P9713336548855022338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025950 n + A025932 n : ℚ) / 2

end

end A025935.P9713336548855022338

namespace A025935

/-- `(A025950(n)+A025932(n))/2` -/
def P9713336548855022338.Spec : Prop :=
  ∀ n, P9713336548855022338.a n = (A025935 n : ℚ)

end A025935

/-! ## A025935.P12298669325874582837

`(A025963(n)+A025928(n))/2`
-/

namespace A025935.P12298669325874582837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025963 n + A025928 n : ℚ) / 2

end

end A025935.P12298669325874582837

namespace A025935

/-- `(A025963(n)+A025928(n))/2` -/
def P12298669325874582837.Spec : Prop :=
  ∀ n, P12298669325874582837.a n = (A025935 n : ℚ)

end A025935

/-! ## A025935.P17457725628086911299

`(A025995(n)+A025931(n))/2`
-/

namespace A025935.P17457725628086911299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025995 n + A025931 n : ℚ) / 2

end

end A025935.P17457725628086911299

namespace A025935

/-- `(A025995(n)+A025931(n))/2` -/
def P17457725628086911299.Spec : Prop :=
  ∀ n, P17457725628086911299.a n = (A025935 n : ℚ)

end A025935

/-! ## A025935.P1106723873760383974

`2*A025946(n)-A025995(n)`
-/

namespace A025935.P1106723873760383974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025946 n - A025995 n

end

end A025935.P1106723873760383974

namespace A025935

/-- `2*A025946(n)-A025995(n)` -/
def P1106723873760383974.Spec : Prop :=
  ∀ n, P1106723873760383974.a n = A025935 n

end A025935

/-! ## A025935.P6270893755877416885

`2*A025963(n)-A028030(n)`
-/

namespace A025935.P6270893755877416885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025963 n - A028030 n

end

end A025935.P6270893755877416885

namespace A025935

/-- `2*A025963(n)-A028030(n)` -/
def P6270893755877416885.Spec : Prop :=
  ∀ n, P6270893755877416885.a n = A025935 n

end A025935

/-! ## A025935.P16301600560337705415

`A025928(n)+A028030(n)-A025963(n)`
-/

namespace A025935.P16301600560337705415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025928 n + (A028030 n - A025963 n)

end

end A025935.P16301600560337705415

namespace A025935

/-- `A025928(n)+A028030(n)-A025963(n)` -/
def P16301600560337705415.Spec : Prop :=
  ∀ n, P16301600560337705415.a n = A025935 n

end A025935

/-! ## A025935.P14859874847951067692

`A025932(n)+A028066(n)-A025950(n)`
-/

namespace A025935.P14859874847951067692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025932 n + (A028066 n - A025950 n)

end

end A025935.P14859874847951067692

namespace A025935

/-- `A025932(n)+A028066(n)-A025950(n)` -/
def P14859874847951067692.Spec : Prop :=
  ∀ n, P14859874847951067692.a n = A025935 n

end A025935

/-!
# A025936: Expansion of g.f. 1/((1-2*x)*(1-3*x)*(1-5*x)*(1-12*x)).

The programs for A025936, the canonical program `A025936.P14480381255101287396` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025936 has offset 0).

The definition of A025936 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025936.P14480381255101287396

`3^(n+1)-2^(n+1)+17*a(n-1)-60*a(n-2)` with `a(0)=1, a(1)=22`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A025936

/-- `3^(n+1)-2^(n+1)+17*a(n-1)-60*a(n-2)` -/
def P14480381255101287396.Spec : Prop :=
  ∀ n, P14480381255101287396.a n = A025936 n

theorem P14480381255101287396.correct : P14480381255101287396.Spec := by
  intro n
  simp only [A025936]

end A025936

/-! ## A025936.P2456909813118795349

`a(n-1)+A017918(n)+a(n-1)` with `a(0)=1`
-/

namespace A025936.P2456909813118795349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A017918 n + a (n - 1))

end

end A025936.P2456909813118795349

namespace A025936

/-- `a(n-1)+A017918(n)+a(n-1)` -/
def P2456909813118795349.Spec : Prop :=
  ∀ n, P2456909813118795349.a n = A025936 n

end A025936

/-! ## A025936.P11604600494093871930

`2*A021164(n)-A021064(n)`
-/

namespace A025936.P11604600494093871930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021164 n - A021064 n

end

end A025936.P11604600494093871930

namespace A025936

/-- `2*A021164(n)-A021064(n)` -/
def P11604600494093871930.Spec : Prop :=
  ∀ n, P11604600494093871930.a n = A025936 n

end A025936

/-! ## A025936.P3825905135259929926

`A025964(n)+A025964(n)-A028031(n)`
-/

namespace A025936.P3825905135259929926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025964 n + (A025964 n - A028031 n)

end

end A025936.P3825905135259929926

namespace A025936

/-- `A025964(n)+A025964(n)-A028031(n)` -/
def P3825905135259929926.Spec : Prop :=
  ∀ n, P3825905135259929926.a n = A025936 n

end A025936

/-! ## A025936.P9326164131272762852

`(A025964(n)+A025929(n))/2`
-/

namespace A025936.P9326164131272762852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025964 n + A025929 n : ℚ) / 2

end

end A025936.P9326164131272762852

namespace A025936

/-- `(A025964(n)+A025929(n))/2` -/
def P9326164131272762852.Spec : Prop :=
  ∀ n, P9326164131272762852.a n = (A025936 n : ℚ)

end A025936

/-! ## A025936.P8249260809973510014

`2*A025964(n)-A028031(n)`
-/

namespace A025936.P8249260809973510014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025964 n - A028031 n

end

end A025936.P8249260809973510014

namespace A025936

/-- `2*A025964(n)-A028031(n)` -/
def P8249260809973510014.Spec : Prop :=
  ∀ n, P8249260809973510014.a n = A025936 n

end A025936

/-! ## A025936.P5350987646050626552

`(A028063(n)+A025931(n))/2`
-/

namespace A025936.P5350987646050626552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028063 n + A025931 n : ℚ) / 2

end

end A025936.P5350987646050626552

namespace A025936

/-- `(A028063(n)+A025931(n))/2` -/
def P5350987646050626552.Spec : Prop :=
  ∀ n, P5350987646050626552.a n = (A025936 n : ℚ)

end A025936

/-! ## A025936.P3899959822014495938

`2*A025951(n)-A028067(n)`
-/

namespace A025936.P3899959822014495938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025951 n - A028067 n

end

end A025936.P3899959822014495938

namespace A025936

/-- `2*A025951(n)-A028067(n)` -/
def P3899959822014495938.Spec : Prop :=
  ∀ n, P3899959822014495938.a n = A025936 n

end A025936

/-!
# A025937: Expansion of 1/((1-2*x)*(1-3*x)*(1-6*x)*(1-7*x)).

The programs for A025937, the canonical program `A025937.P10421305209714180165` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025937 has offset 0).

The definition of A025937 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025937.P10421305209714180165

`3^(n+1)-2^(n+1)+13*a(n-1)-42*a(n-2)` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A025937

/-- `3^(n+1)-2^(n+1)+13*a(n-1)-42*a(n-2)` -/
def P10421305209714180165.Spec : Prop :=
  ∀ n, P10421305209714180165.a n = A025937 n

theorem P10421305209714180165.correct : P10421305209714180165.Spec := by
  intro n
  simp only [A025937]

end A025937

/-! ## A025937.P5445552336311247065

`A016304(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A025937.P5445552336311247065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016304 n + 3 * a (n - 1)

end

end A025937.P5445552336311247065

namespace A025937

/-- `A016304(n)+3*a(n-1)` -/
def P5445552336311247065.Spec : Prop :=
  ∀ n, P5445552336311247065.a n = A025937 n

end A025937

/-! ## A025937.P2091802305417062336

`a(n-1)+A017931(n)+a(n-1)` with `a(0)=1`
-/

namespace A025937.P2091802305417062336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A017931 n + a (n - 1))

end

end A025937.P2091802305417062336

namespace A025937

/-- `a(n-1)+A017931(n)+a(n-1)` -/
def P2091802305417062336.Spec : Prop :=
  ∀ n, P2091802305417062336.a n = A025937 n

end A025937

/-! ## A025937.P5257295265950414130

`Δ[A021034(n)-A021029(n)]`
-/

namespace A025937.P5257295265950414130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021034 n - A021029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025937.P5257295265950414130

namespace A025937

/-- `Δ[A021034(n)-A021029(n)]` -/
def P5257295265950414130.Spec : Prop :=
  ∀ n, P5257295265950414130.a n = A025937 n

end A025937

/-! ## A025937.P14817577307565314769

`2*A016304(n)-A016276(n)`
-/

namespace A025937.P14817577307565314769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016304 n - A016276 n

end

end A025937.P14817577307565314769

namespace A025937

/-- `2*A016304(n)-A016276(n)` -/
def P14817577307565314769.Spec : Prop :=
  ∀ n, P14817577307565314769.a n = A025937 n

end A025937

/-! ## A025937.P2817319765421017604

`2*A025931(n)-A025930(n)`
-/

namespace A025937.P2817319765421017604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025931 n - A025930 n

end

end A025937.P2817319765421017604

namespace A025937

/-- `2*A025931(n)-A025930(n)` -/
def P2817319765421017604.Spec : Prop :=
  ∀ n, P2817319765421017604.a n = A025937 n

end A025937

/-! ## A025937.P13290212199646102068

`2*A025965(n)-A028032(n)`
-/

namespace A025937.P13290212199646102068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025965 n - A028032 n

end

end A025937.P13290212199646102068

namespace A025937

/-- `2*A025965(n)-A028032(n)` -/
def P13290212199646102068.Spec : Prop :=
  ∀ n, P13290212199646102068.a n = A025937 n

end A025937

/-! ## A025937.P10449053365193997655

`2*A025938(n)-A025943(n)`
-/

namespace A025937.P10449053365193997655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025938 n - A025943 n

end

end A025937.P10449053365193997655

namespace A025937

/-- `2*A025938(n)-A025943(n)` -/
def P10449053365193997655.Spec : Prop :=
  ∀ n, P10449053365193997655.a n = A025937 n

end A025937

/-!
# A025938: Expansion of 1/((1-2*x)*(1-3*x)*(1-6*x)*(1-8*x)).

The programs for A025938, the canonical program `A025938.P7080698501870569930` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025938 has offset 0).

The definition of A025938 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025938.P7080698501870569930

`3^(n+1)-2^(n+1)+14*a(n-1)-48*a(n-2)` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A025938

/-- `3^(n+1)-2^(n+1)+14*a(n-1)-48*a(n-2)` -/
def P7080698501870569930.Spec : Prop :=
  ∀ n, P7080698501870569930.a n = A025938 n

theorem P7080698501870569930.correct : P7080698501870569930.Spec := by
  intro n
  simp only [A025938]

end A025938

/-! ## A025938.P5238012112875072856

`A017932(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A025938.P5238012112875072856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017932 n + 2 * a (n - 1)

end

end A025938.P5238012112875072856

namespace A025938

/-- `A017932(n)+2*a(n-1)` -/
def P5238012112875072856.Spec : Prop :=
  ∀ n, P5238012112875072856.a n = A025938 n

end A025938

/-! ## A025938.P9374253084315520544

`A016277(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A025938.P9374253084315520544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016277 n + 6 * a (n - 1)

end

end A025938.P9374253084315520544

namespace A025938

/-- `A016277(n)+6*a(n-1)` -/
def P9374253084315520544.Spec : Prop :=
  ∀ n, P9374253084315520544.a n = A025938 n

end A025938

/-! ## A025938.P13192839341395099624

`(A025943(n)+A025937(n))/2`
-/

namespace A025938.P13192839341395099624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025943 n + A025937 n : ℚ) / 2

end

end A025938.P13192839341395099624

namespace A025938

/-- `(A025943(n)+A025937(n))/2` -/
def P13192839341395099624.Spec : Prop :=
  ∀ n, P13192839341395099624.a n = (A025938 n : ℚ)

end A025938

/-! ## A025938.P16159718889842638930

`2*A025940(n)-A025949(n)`
-/

namespace A025938.P16159718889842638930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025940 n - A025949 n

end

end A025938.P16159718889842638930

namespace A025938

/-- `2*A025940(n)-A025949(n)` -/
def P16159718889842638930.Spec : Prop :=
  ∀ n, P16159718889842638930.a n = A025938 n

end A025938

/-! ## A025938.P11587583843273030443

`2*A025949(n)-A028080(n)`
-/

namespace A025938.P11587583843273030443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025949 n - A028080 n

end

end A025938.P11587583843273030443

namespace A025938

/-- `2*A025949(n)-A028080(n)` -/
def P11587583843273030443.Spec : Prop :=
  ∀ n, P11587583843273030443.a n = A025938 n

end A025938

/-! ## A025938.P5041013785733345446

`A025948(n)+A025952(n)-A028080(n)`
-/

namespace A025938.P5041013785733345446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025948 n + (A025952 n - A028080 n)

end

end A025938.P5041013785733345446

namespace A025938

/-- `A025948(n)+A025952(n)-A028080(n)` -/
def P5041013785733345446.Spec : Prop :=
  ∀ n, P5041013785733345446.a n = A025938 n

end A025938

/-!
# A025939: Expansion of 1/((1-2*x)*(1-3*x)*(1-6*x)*(1-9*x)).

The programs for A025939, the canonical program `A025939.P1742151839048862043` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025939 has offset 0).

The definition of A025939 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025939.P1742151839048862043

`3^(n+1)-2^(n+1)+15*a(n-1)-54*a(n-2)` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A025939

/-- `3^(n+1)-2^(n+1)+15*a(n-1)-54*a(n-2)` -/
def P1742151839048862043.Spec : Prop :=
  ∀ n, P1742151839048862043.a n = A025939 n

theorem P1742151839048862043.correct : P1742151839048862043.Spec := by
  intro n
  simp only [A025939]

end A025939

/-! ## A025939.P4834542274269157834

`A017933(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A025939.P4834542274269157834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017933 n + 2 * a (n - 1)

end

end A025939.P4834542274269157834

namespace A025939

/-- `A017933(n)+2*a(n-1)` -/
def P4834542274269157834.Spec : Prop :=
  ∀ n, P4834542274269157834.a n = A025939 n

end A025939

/-! ## A025939.P17239589147808035702

`A084874(n+1)+A016133(n)`
-/

namespace A025939.P17239589147808035702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084874 (n + 1) + A016133 n

end

end A025939.P17239589147808035702

namespace A025939

/-- `A084874(n+1)+A016133(n)` -/
def P17239589147808035702.Spec : Prop :=
  ∀ n, P17239589147808035702.a n = A025939 n

end A025939

/-! ## A025939.P17179258135515707663

`2*a(n-1)+A000244(n)*A000392(n+3)` with `a(0)=1`
-/

namespace A025939.P17179258135515707663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A000244 n * A000392 (n + 3)

end

end A025939.P17179258135515707663

namespace A025939

/-- `2*a(n-1)+A000244(n)*A000392(n+3)` -/
def P17179258135515707663.Spec : Prop :=
  ∀ n, P17179258135515707663.a n = A025939 n

end A025939

/-! ## A025939.P1173410489164910280

`2*A025952(n)-A028083(n)`
-/

namespace A025939.P1173410489164910280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025952 n - A028083 n

end

end A025939.P1173410489164910280

namespace A025939

/-- `2*A025952(n)-A028083(n)` -/
def P1173410489164910280.Spec : Prop :=
  ∀ n, P1173410489164910280.a n = A025939 n

end A025939

/-! ## A025939.P14281720273845104361

`2*A025942(n)-A025954(n)`
-/

namespace A025939.P14281720273845104361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025942 n - A025954 n

end

end A025939.P14281720273845104361

namespace A025939

/-- `2*A025942(n)-A025954(n)` -/
def P14281720273845104361.Spec : Prop :=
  ∀ n, P14281720273845104361.a n = A025939 n

end A025939

/-!
# A025940: Expansion of 1/((1-2x)(1-3x)(1-6x)(1-10x)).

The programs for A025940, the canonical program `A025940.P11243219932794800172` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025940 has offset 0).

The definition of A025940 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025940.P11243219932794800172

`A001240(n+1)+10*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025940

/-- `A001240(n+1)+10*a(n-1)` -/
def P11243219932794800172.Spec : Prop :=
  ∀ n, P11243219932794800172.a n = A025940 n

theorem P11243219932794800172.correct : P11243219932794800172.Spec := by
  intro n
  simp only [A025940]

end A025940

/-! ## A025940.P8399843138403606928

`a(n-1)+A017952(n)+a(n-1)` with `a(0)=1`
-/

namespace A025940.P8399843138403606928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A017952 n + a (n - 1))

end

end A025940.P8399843138403606928

namespace A025940

/-- `a(n-1)+A017952(n)+a(n-1)` -/
def P8399843138403606928.Spec : Prop :=
  ∀ n, P8399843138403606928.a n = A025940 n

end A025940

/-! ## A025940.P6201359713315508308

`2*A021514(n)-A021202(n)`
-/

namespace A025940.P6201359713315508308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021514 n - A021202 n

end

end A025940.P6201359713315508308

namespace A025940

/-- `2*A021514(n)-A021202(n)` -/
def P6201359713315508308.Spec : Prop :=
  ∀ n, P6201359713315508308.a n = A025940 n

end A025940

/-! ## A025940.P16510866718790811328

`(A025949(n)+A025938(n))/2`
-/

namespace A025940.P16510866718790811328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025949 n + A025938 n : ℚ) / 2

end

end A025940.P16510866718790811328

namespace A025940

/-- `(A025949(n)+A025938(n))/2` -/
def P16510866718790811328.Spec : Prop :=
  ∀ n, P16510866718790811328.a n = (A025940 n : ℚ)

end A025940

/-! ## A025940.P461930235164431322

`3*a(n-1)+A000079(n)*A016209(n)` with `a(0)=1`
-/

namespace A025940.P461930235164431322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + A000079 n * A016209 n

end

end A025940.P461930235164431322

namespace A025940

/-- `3*a(n-1)+A000079(n)*A016209(n)` -/
def P461930235164431322.Spec : Prop :=
  ∀ n, P461930235164431322.a n = A025940 n

end A025940

/-! ## A025940.P5997293011575249548

`(A025949(n)+(A025943(n)+A025937(n))/2)/2`
-/

namespace A025940.P5997293011575249548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A025949 n : ℚ) + (A025943 n + A025937 n : ℚ) / 2) / 2

end

end A025940.P5997293011575249548

namespace A025940

/-- `(A025949(n)+(A025943(n)+A025937(n))/2)/2` -/
def P5997293011575249548.Spec : Prop :=
  ∀ n, P5997293011575249548.a n = (A025940 n : ℚ)

end A025940

/-! ## A025940.P6715675887176671012

`Δ[A021514(n)-A021202(n)]`
-/

namespace A025940.P6715675887176671012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021514 n - A021202 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025940.P6715675887176671012

namespace A025940

/-- `Δ[A021514(n)-A021202(n)]` -/
def P6715675887176671012.Spec : Prop :=
  ∀ n, P6715675887176671012.a n = A025940 n

end A025940

/-!
# A025941: Expansion of 1/((1-2*x)*(1-3*x)*(1-6*x)*(1-11*x)).

The programs for A025941, the canonical program `A025941.P13230524929069646317` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025941 has offset 0).

The definition of A025941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025941.P13230524929069646317

`3^(n+1)-2^(n+1)+17*a(n-1)-66*a(n-2)` with `a(0)=1, a(1)=22`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A025941

/-- `3^(n+1)-2^(n+1)+17*a(n-1)-66*a(n-2)` -/
def P13230524929069646317.Spec : Prop :=
  ∀ n, P13230524929069646317.a n = A025941 n

theorem P13230524929069646317.correct : P13230524929069646317.Spec := by
  intro n
  simp only [A025941]

end A025941

/-! ## A025941.P9152115166388958912

`a(n-1)+A017953(n)+a(n-1)` with `a(0)=1`
-/

namespace A025941.P9152115166388958912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A017953 n + a (n - 1))

end

end A025941.P9152115166388958912

namespace A025941

/-- `a(n-1)+A017953(n)+a(n-1)` -/
def P9152115166388958912.Spec : Prop :=
  ∀ n, P9152115166388958912.a n = A025941 n

end A025941

/-! ## A025941.P2661567457933368254

`2*A021054(n)-A021029(n)`
-/

namespace A025941.P2661567457933368254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021054 n - A021029 n

end

end A025941.P2661567457933368254

namespace A025941

/-- `2*A021054(n)-A021029(n)` -/
def P2661567457933368254.Spec : Prop :=
  ∀ n, P2661567457933368254.a n = A025941 n

end A025941

/-! ## A025941.P7077130006285566184

`2*A021524(n)-A021204(n)`
-/

namespace A025941.P7077130006285566184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021524 n - A021204 n

end

end A025941.P7077130006285566184

namespace A025941

/-- `2*A021524(n)-A021204(n)` -/
def P7077130006285566184.Spec : Prop :=
  ∀ n, P7077130006285566184.a n = A025941 n

end A025941

/-! ## A025941.P640634695328355508

`(A028036(n)+A025928(n))/2`
-/

namespace A025941.P640634695328355508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028036 n + A025928 n : ℚ) / 2

end

end A025941.P640634695328355508

namespace A025941

/-- `(A028036(n)+A025928(n))/2` -/
def P640634695328355508.Spec : Prop :=
  ∀ n, P640634695328355508.a n = (A025941 n : ℚ)

end A025941

/-! ## A025941.P7230588271055395118

`2*A025969(n)-A028036(n)`
-/

namespace A025941.P7230588271055395118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025969 n - A028036 n

end

end A025941.P7230588271055395118

namespace A025941

/-- `2*A025969(n)-A028036(n)` -/
def P7230588271055395118.Spec : Prop :=
  ∀ n, P7230588271055395118.a n = A025941 n

end A025941

/-! ## A025941.P13960063831451528320

`2*A025953(n)-A028000(n)`
-/

namespace A025941.P13960063831451528320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025953 n - A028000 n

end

end A025941.P13960063831451528320

namespace A025941

/-- `2*A025953(n)-A028000(n)` -/
def P13960063831451528320.Spec : Prop :=
  ∀ n, P13960063831451528320.a n = A025941 n

end A025941

/-! ## A025941.P15932188126722138995

`A025952(n)+A025955(n)-A028000(n)`
-/

namespace A025941.P15932188126722138995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025952 n + (A025955 n - A028000 n)

end

end A025941.P15932188126722138995

namespace A025941

/-- `A025952(n)+A025955(n)-A028000(n)` -/
def P15932188126722138995.Spec : Prop :=
  ∀ n, P15932188126722138995.a n = A025941 n

end A025941

/-!
# A025942: Expansion of 1/((1-2*x)*(1-3*x)*(1-6*x)*(1-12*x)).

The programs for A025942, the canonical program `A025942.P9607198866429691530` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025942 has offset 0).

The definition of A025942 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025942.P9607198866429691530

`3^(n+1)-2^(n+1)+18*a(n-1)-72*a(n-2)` with `a(0)=1, a(1)=23`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A025942

/-- `3^(n+1)-2^(n+1)+18*a(n-1)-72*a(n-2)` -/
def P9607198866429691530.Spec : Prop :=
  ∀ n, P9607198866429691530.a n = A025942 n

theorem P9607198866429691530.correct : P9607198866429691530.Spec := by
  intro n
  simp only [A025942]

end A025942

/-! ## A025942.P6868579901471286620

`a(n-1)+A017954(n)+a(n-1)` with `a(0)=1`
-/

namespace A025942.P6868579901471286620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A017954 n + a (n - 1))

end

end A025942.P6868579901471286620

namespace A025942

/-- `a(n-1)+A017954(n)+a(n-1)` -/
def P6868579901471286620.Spec : Prop :=
  ∀ n, P6868579901471286620.a n = A025942 n

end A025942

/-! ## A025942.P10672171963813620141

`2*A016309(n)-A016281(n)`
-/

namespace A025942.P10672171963813620141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016309 n - A016281 n

end

end A025942.P10672171963813620141

namespace A025942

/-- `2*A016309(n)-A016281(n)` -/
def P10672171963813620141.Spec : Prop :=
  ∀ n, P10672171963813620141.a n = A025942 n

end A025942

/-! ## A025942.P16914128427253408749

`2*a(n-1)+∑[A171476(n)]*A000244(n)` with `a(0)=1`
-/

namespace A025942.P16914128427253408749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171476 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n

end

end A025942.P16914128427253408749

namespace A025942

/-- `2*a(n-1)+∑[A171476(n)]*A000244(n)` -/
def P16914128427253408749.Spec : Prop :=
  ∀ n, P16914128427253408749.a n = A025942 n

end A025942

/-! ## A025942.P12073460361657154717

`(A025954(n)+A025939(n))/2`
-/

namespace A025942.P12073460361657154717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025954 n + A025939 n : ℚ) / 2

end

end A025942.P12073460361657154717

namespace A025942

/-- `(A025954(n)+A025939(n))/2` -/
def P12073460361657154717.Spec : Prop :=
  ∀ n, P12073460361657154717.a n = (A025942 n : ℚ)

end A025942

/-!
# A025943: Expansion of 1/((1-2*x)*(1-3*x)*(1-7*x)*(1-8*x)).

The programs for A025943, the canonical program `A025943.P15123329424000216871` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025943 has offset 0).

The definition of A025943 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025943.P15123329424000216871

`3^(n+1)-2^(n+1)+15*a(n-1)-56*a(n-2)` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A025943

/-- `3^(n+1)-2^(n+1)+15*a(n-1)-56*a(n-2)` -/
def P15123329424000216871.Spec : Prop :=
  ∀ n, P15123329424000216871.a n = A025943 n

theorem P15123329424000216871.correct : P15123329424000216871.Spec := by
  intro n
  simp only [A025943]

end A025943

/-! ## A025943.P167166993137938529

`A017997(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A025943.P167166993137938529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017997 n + 2 * a (n - 1)

end

end A025943.P167166993137938529

namespace A025943

/-- `A017997(n)+2*a(n-1)` -/
def P167166993137938529.Spec : Prop :=
  ∀ n, P167166993137938529.a n = A025943 n

end A025943

/-! ## A025943.P7015555830727350412

`A016311(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A025943.P7015555830727350412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016311 n + 3 * a (n - 1)

end

end A025943.P7015555830727350412

namespace A025943

/-- `A016311(n)+3*a(n-1)` -/
def P7015555830727350412.Spec : Prop :=
  ∀ n, P7015555830727350412.a n = A025943 n

end A025943

/-! ## A025943.P4254899584327694356

`Δ[A021044(n)-A021034(n)]`
-/

namespace A025943.P4254899584327694356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021044 n - A021034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025943.P4254899584327694356

namespace A025943

/-- `Δ[A021044(n)-A021034(n)]` -/
def P4254899584327694356.Spec : Prop :=
  ∀ n, P4254899584327694356.a n = A025943 n

end A025943

/-! ## A025943.P7419261037157051159

`Δ[∑[A016277(n)]-A021034(n)]`
-/

namespace A025943.P7419261037157051159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016277 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A021034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025943.P7419261037157051159

namespace A025943

/-- `Δ[∑[A016277(n)]-A021034(n)]` -/
def P7419261037157051159.Spec : Prop :=
  ∀ n, P7419261037157051159.a n = A025943 n

end A025943

/-! ## A025943.P9357717536857792687

`A016277(n+1)-Δ[A021034(n)]`
-/

namespace A025943.P9357717536857792687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016277 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025943.P9357717536857792687

namespace A025943

/-- `A016277(n+1)-Δ[A021034(n)]` -/
def P9357717536857792687.Spec : Prop :=
  ∀ n, P9357717536857792687.a n = A025943 n

end A025943

/-! ## A025943.P17497248461703407294

`A016277(n+1)-A016276(n+1)`
-/

namespace A025943.P17497248461703407294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016277 (n + 1) - A016276 (n + 1)

end

end A025943.P17497248461703407294

namespace A025943

/-- `A016277(n+1)-A016276(n+1)` -/
def P17497248461703407294.Spec : Prop :=
  ∀ n, P17497248461703407294.a n = A025943 n

end A025943

/-! ## A025943.P2919351922859098407

`2*A025944(n)-A025948(n)`
-/

namespace A025943.P2919351922859098407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025944 n - A025948 n

end

end A025943.P2919351922859098407

namespace A025943

/-- `2*A025944(n)-A025948(n)` -/
def P2919351922859098407.Spec : Prop :=
  ∀ n, P2919351922859098407.a n = A025943 n

end A025943

/-!
# A025944: Expansion of 1/((1-2*x)*(1-3*x)*(1-7*x)*(1-9*x)).

The programs for A025944, the canonical program `A025944.P166838020895912603` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025944 has offset 0).

The definition of A025944 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025944.P166838020895912603

`3^(n+1)-2^(n+1)+16*a(n-1)-63*a(n-2)` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A025944

/-- `3^(n+1)-2^(n+1)+16*a(n-1)-63*a(n-2)` -/
def P166838020895912603.Spec : Prop :=
  ∀ n, P166838020895912603.a n = A025944 n

theorem P166838020895912603.correct : P166838020895912603.Spec := by
  intro n
  simp only [A025944]

end A025944

/-! ## A025944.P16529551085943320062

`a(n-1)+A017998(n)+a(n-1)` with `a(0)=1`
-/

namespace A025944.P16529551085943320062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A017998 n + a (n - 1))

end

end A025944.P16529551085943320062

namespace A025944

/-- `a(n-1)+A017998(n)+a(n-1)` -/
def P16529551085943320062.Spec : Prop :=
  ∀ n, P16529551085943320062.a n = A025944 n

end A025944

/-! ## A025944.P13499526006072308431

`2*A025933(n)-A025931(n)`
-/

namespace A025944.P13499526006072308431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025933 n - A025931 n

end

end A025944.P13499526006072308431

namespace A025944

/-- `2*A025933(n)-A025931(n)` -/
def P13499526006072308431.Spec : Prop :=
  ∀ n, P13499526006072308431.a n = A025944 n

end A025944

/-! ## A025944.P8546292628294059906

`(A025993(n)+A025933(n))/2`
-/

namespace A025944.P8546292628294059906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025993 n + A025933 n : ℚ) / 2

end

end A025944.P8546292628294059906

namespace A025944

/-- `(A025993(n)+A025933(n))/2` -/
def P8546292628294059906.Spec : Prop :=
  ∀ n, P8546292628294059906.a n = (A025944 n : ℚ)

end A025944

/-! ## A025944.P1815380545502813635

`A025930(n)+A025988(n)-A025931(n)`
-/

namespace A025944.P1815380545502813635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025930 n + (A025988 n - A025931 n)

end

end A025944.P1815380545502813635

namespace A025944

/-- `A025930(n)+A025988(n)-A025931(n)` -/
def P1815380545502813635.Spec : Prop :=
  ∀ n, P1815380545502813635.a n = A025944 n

end A025944

/-! ## A025944.P6649605182718761351

`A025931(n)+A025988(n)-A025937(n)`
-/

namespace A025944.P6649605182718761351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025931 n + (A025988 n - A025937 n)

end

end A025944.P6649605182718761351

namespace A025944

/-- `A025931(n)+A025988(n)-A025937(n)` -/
def P6649605182718761351.Spec : Prop :=
  ∀ n, P6649605182718761351.a n = A025944 n

end A025944

/-! ## A025944.P3866723704178143917

`2*A025946(n)-A025953(n)`
-/

namespace A025944.P3866723704178143917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025946 n - A025953 n

end

end A025944.P3866723704178143917

namespace A025944

/-- `2*A025946(n)-A025953(n)` -/
def P3866723704178143917.Spec : Prop :=
  ∀ n, P3866723704178143917.a n = A025944 n

end A025944

/-! ## A025944.P1890914735594607206

`2*A025953(n)-A028010(n)`
-/

namespace A025944.P1890914735594607206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025953 n - A028010 n

end

end A025944.P1890914735594607206

namespace A025944

/-- `2*A025953(n)-A028010(n)` -/
def P1890914735594607206.Spec : Prop :=
  ∀ n, P1890914735594607206.a n = A025944 n

end A025944

/-!
# A025945: Expansion of 1/((1-2*x)*(1-3*x)*(1-7*x)*(1-10*x)).

The programs for A025945, the canonical program `A025945.P16621393838525392867` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025945 has offset 0).

The definition of A025945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025945.P16621393838525392867

`3^(n+1)-2^(n+1)+17*a(n-1)-70*a(n-2)` with `a(0)=1, a(1)=22`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A025945

/-- `3^(n+1)-2^(n+1)+17*a(n-1)-70*a(n-2)` -/
def P16621393838525392867.Spec : Prop :=
  ∀ n, P16621393838525392867.a n = A025945 n

theorem P16621393838525392867.correct : P16621393838525392867.Spec := by
  intro n
  simp only [A025945]

end A025945

/-! ## A025945.P10528442560893900155

`a(n-1)+A017999(n)+a(n-1)` with `a(0)=1`
-/

namespace A025945.P10528442560893900155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A017999 n + a (n - 1))

end

end A025945.P10528442560893900155

namespace A025945

/-- `a(n-1)+A017999(n)+a(n-1)` -/
def P10528442560893900155.Spec : Prop :=
  ∀ n, P10528442560893900155.a n = A025945 n

end A025945

/-! ## A025945.P5070176938494702485

`A021144(n)+A021464(n)-A021124(n)`
-/

namespace A025945.P5070176938494702485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021144 n + (A021464 n - A021124 n)

end

end A025945.P5070176938494702485

namespace A025945

/-- `A021144(n)+A021464(n)-A021124(n)` -/
def P5070176938494702485.Spec : Prop :=
  ∀ n, P5070176938494702485.a n = A025945 n

end A025945

/-! ## A025945.P1271199725396819687

`A021604(n)+A021604(n)-A021234(n)`
-/

namespace A025945.P1271199725396819687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021604 n + (A021604 n - A021234 n)

end

end A025945.P1271199725396819687

namespace A025945

/-- `A021604(n)+A021604(n)-A021234(n)` -/
def P1271199725396819687.Spec : Prop :=
  ∀ n, P1271199725396819687.a n = A025945 n

end A025945

/-! ## A025945.P6915699681939662575

`A025973(n)+A025973(n)-A028040(n)`
-/

namespace A025945.P6915699681939662575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025973 n + (A025973 n - A028040 n)

end

end A025945.P6915699681939662575

namespace A025945

/-- `A025973(n)+A025973(n)-A028040(n)` -/
def P6915699681939662575.Spec : Prop :=
  ∀ n, P6915699681939662575.a n = A025945 n

end A025945

/-! ## A025945.P3835784457931258484

`A025965(n)+A028035(n)-A028032(n)`
-/

namespace A025945.P3835784457931258484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025965 n + (A028035 n - A028032 n)

end

end A025945.P3835784457931258484

namespace A025945

/-- `A025965(n)+A028035(n)-A028032(n)` -/
def P3835784457931258484.Spec : Prop :=
  ∀ n, P3835784457931258484.a n = A025945 n

end A025945

/-! ## A025945.P15845774626894473118

`Δ[A021604(n)-A021234(n)]`
-/

namespace A025945.P15845774626894473118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021604 n - A021234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025945.P15845774626894473118

namespace A025945

/-- `Δ[A021604(n)-A021234(n)]` -/
def P15845774626894473118.Spec : Prop :=
  ∀ n, P15845774626894473118.a n = A025945 n

end A025945

/-! ## A025945.P14143942090148515721

`(A025994(n)+A025934(n))/2`
-/

namespace A025945.P14143942090148515721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025994 n + A025934 n : ℚ) / 2

end

end A025945.P14143942090148515721

namespace A025945

/-- `(A025994(n)+A025934(n))/2` -/
def P14143942090148515721.Spec : Prop :=
  ∀ n, P14143942090148515721.a n = (A025945 n : ℚ)

end A025945

/-! ## A025945.P6370630441057895057

`2*A025973(n)-A028040(n)`
-/

namespace A025945.P6370630441057895057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025973 n - A028040 n

end

end A025945.P6370630441057895057

namespace A025945

/-- `2*A025973(n)-A028040(n)` -/
def P6370630441057895057.Spec : Prop :=
  ∀ n, P6370630441057895057.a n = A025945 n

end A025945

/-!
# A025946: Expansion of 1/((1-2*x)*(1-3*x)*(1-7*x)*(1-11*x)).

The programs for A025946, the canonical program `A025946.P17974883537867634094` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025946 has offset 0).

The definition of A025946 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025946.P17974883537867634094

`3^(n+1)-2^(n+1)+18*a(n-1)-77*a(n-2)` with `a(0)=1, a(1)=23`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A025946

/-- `3^(n+1)-2^(n+1)+18*a(n-1)-77*a(n-2)` -/
def P17974883537867634094.Spec : Prop :=
  ∀ n, P17974883537867634094.a n = A025946 n

theorem P17974883537867634094.correct : P17974883537867634094.Spec := by
  intro n
  simp only [A025946]

end A025946

/-! ## A025946.P15236044089951460468

`a(n-1)+A018054(n)+a(n-1)` with `a(0)=1`
-/

namespace A025946.P15236044089951460468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A018054 n + a (n - 1))

end

end A025946.P15236044089951460468

namespace A025946

/-- `a(n-1)+A018054(n)+a(n-1)` -/
def P15236044089951460468.Spec : Prop :=
  ∀ n, P15236044089951460468.a n = A025946 n

end A025946

/-! ## A025946.P8437637059012558295

`(A025953(n)+A025944(n))/2`
-/

namespace A025946.P8437637059012558295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025953 n + A025944 n : ℚ) / 2

end

end A025946.P8437637059012558295

namespace A025946

/-- `(A025953(n)+A025944(n))/2` -/
def P8437637059012558295.Spec : Prop :=
  ∀ n, P8437637059012558295.a n = (A025946 n : ℚ)

end A025946

/-! ## A025946.P18016378164908404064

`(A025995(n)+A025935(n))/2`
-/

namespace A025946.P18016378164908404064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025995 n + A025935 n : ℚ) / 2

end

end A025946.P18016378164908404064

namespace A025946

/-- `(A025995(n)+A025935(n))/2` -/
def P18016378164908404064.Spec : Prop :=
  ∀ n, P18016378164908404064.a n = (A025946 n : ℚ)

end A025946

/-! ## A025946.P16763761428792137033

`2*A025974(n)-A028041(n)`
-/

namespace A025946.P16763761428792137033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025974 n - A028041 n

end

end A025946.P16763761428792137033

namespace A025946

/-- `2*A025974(n)-A028041(n)` -/
def P16763761428792137033.Spec : Prop :=
  ∀ n, P16763761428792137033.a n = A025946 n

end A025946

/-! ## A025946.P14248754864546438316

`A025972(n)+A025981(n)-A028041(n)`
-/

namespace A025946.P14248754864546438316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025972 n + (A025981 n - A028041 n)

end

end A025946.P14248754864546438316

namespace A025946

/-- `A025972(n)+A025981(n)-A028041(n)` -/
def P14248754864546438316.Spec : Prop :=
  ∀ n, P14248754864546438316.a n = A025946 n

end A025946

/-! ## A025946.P14165730528106040997

`2*A025974(n)-(2*A021614(n)-A021394(n))`
-/

namespace A025946.P14165730528106040997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025974 n - (2 * A021614 n - A021394 n)

end

end A025946.P14165730528106040997

namespace A025946

/-- `2*A025974(n)-(2*A021614(n)-A021394(n))` -/
def P14165730528106040997.Spec : Prop :=
  ∀ n, P14165730528106040997.a n = A025946 n

end A025946

/-! ## A025946.P1937104666398144713

`2*A025974(n)-(A021594(n)+A021694(n)-A021394(n))`
-/

namespace A025946.P1937104666398144713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025974 n - (A021594 n + (A021694 n - A021394 n))

end

end A025946.P1937104666398144713

namespace A025946

/-- `2*A025974(n)-(A021594(n)+A021694(n)-A021394(n))` -/
def P1937104666398144713.Spec : Prop :=
  ∀ n, P1937104666398144713.a n = A025946 n

end A025946

/-! ## A025946.P7204867149114801692

`Δ[(A021054(n)-A021034(n))/4]`
-/

namespace A025946.P7204867149114801692
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021054 n - A021034 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025946.P7204867149114801692

namespace A025946

/-- `Δ[(A021054(n)-A021034(n))/4]` -/
def P7204867149114801692.Spec : Prop :=
  ∀ n, P7204867149114801692.a n = (A025946 n : ℚ)

end A025946

/-!
# A025947: Expansion of 1/((1-2*x)*(1-3*x)*(1-7*x)*(1-12*x)).

The programs for A025947, the canonical program `A025947.P8254070226024237642` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025947 has offset 0).

The definition of A025947 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025947.P8254070226024237642

`3^(n+1)-2^(n+1)+19*a(n-1)-84*a(n-2)` with `a(0)=1, a(1)=24`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A025947

/-- `3^(n+1)-2^(n+1)+19*a(n-1)-84*a(n-2)` -/
def P8254070226024237642.Spec : Prop :=
  ∀ n, P8254070226024237642.a n = A025947 n

theorem P8254070226024237642.correct : P8254070226024237642.Spec := by
  intro n
  simp only [A025947]

end A025947

/-! ## A025947.P13888286630640687581

`A016315(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A025947.P13888286630640687581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016315 n + 3 * a (n - 1)

end

end A025947.P13888286630640687581

namespace A025947

/-- `A016315(n)+3*a(n-1)` -/
def P13888286630640687581.Spec : Prop :=
  ∀ n, P13888286630640687581.a n = A025947 n

end A025947

/-! ## A025947.P5631428949229927222

`A016281(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A025947.P5631428949229927222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016281 n + 7 * a (n - 1)

end

end A025947.P5631428949229927222

namespace A025947

/-- `A016281(n)+7*a(n-1)` -/
def P5631428949229927222.Spec : Prop :=
  ∀ n, P5631428949229927222.a n = A025947 n

end A025947

/-! ## A025947.P16259027509341779573

`A016276(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A025947.P16259027509341779573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016276 n + 12 * a (n - 1)

end

end A025947.P16259027509341779573

namespace A025947

/-- `A016276(n)+12*a(n-1)` -/
def P16259027509341779573.Spec : Prop :=
  ∀ n, P16259027509341779573.a n = A025947 n

end A025947

/-! ## A025947.P2112685622558681225

`a(n-1)+A018055(n)+a(n-1)` with `a(0)=1`
-/

namespace A025947.P2112685622558681225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A018055 n + a (n - 1))

end

end A025947.P2112685622558681225

namespace A025947

/-- `a(n-1)+A018055(n)+a(n-1)` -/
def P2112685622558681225.Spec : Prop :=
  ∀ n, P2112685622558681225.a n = A025947 n

end A025947

/-!
# A025948: Expansion of 1/((1-2*x)*(1-3*x)*(1-8*x)*(1-9*x)).

The programs for A025948, the canonical program `A025948.P3441698919851631226` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025948 has offset 0).

The definition of A025948 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025948.P3441698919851631226

`3^(n+1)-2^(n+1)+17*a(n-1)-72*a(n-2)` with `a(0)=1, a(1)=22`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A025948

/-- `3^(n+1)-2^(n+1)+17*a(n-1)-72*a(n-2)` -/
def P3441698919851631226.Spec : Prop :=
  ∀ n, P3441698919851631226.a n = A025948 n

theorem P3441698919851631226.correct : P3441698919851631226.Spec := by
  intro n
  simp only [A025948]

end A025948

/-! ## A025948.P17412730827754948564

`A016316(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A025948.P17412730827754948564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016316 n + 3 * a (n - 1)

end

end A025948.P17412730827754948564

namespace A025948

/-- `A016316(n)+3*a(n-1)` -/
def P17412730827754948564.Spec : Prop :=
  ∀ n, P17412730827754948564.a n = A025948 n

end A025948

/-! ## A025948.P7662885527361325856

`a(n-1)+A018056(n)+a(n-1)` with `a(0)=1`
-/

namespace A025948.P7662885527361325856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A018056 n + a (n - 1))

end

end A025948.P7662885527361325856

namespace A025948

/-- `a(n-1)+A018056(n)+a(n-1)` -/
def P7662885527361325856.Spec : Prop :=
  ∀ n, P7662885527361325856.a n = A025948 n

end A025948

/-! ## A025948.P250925956794208286

`Δ[A021048(n)-A021044(n)]`
-/

namespace A025948.P250925956794208286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021048 n - A021044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025948.P250925956794208286

namespace A025948

/-- `Δ[A021048(n)-A021044(n)]` -/
def P250925956794208286.Spec : Prop :=
  ∀ n, P250925956794208286.a n = A025948 n

end A025948

/-! ## A025948.P8256970108562880274

`2*A021634(n)-A021264(n)`
-/

namespace A025948.P8256970108562880274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021634 n - A021264 n

end

end A025948.P8256970108562880274

namespace A025948

/-- `2*A021634(n)-A021264(n)` -/
def P8256970108562880274.Spec : Prop :=
  ∀ n, P8256970108562880274.a n = A025948 n

end A025948

/-! ## A025948.P6655992904210274975

`2*A025944(n)-A025943(n)`
-/

namespace A025948.P6655992904210274975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025944 n - A025943 n

end

end A025948.P6655992904210274975

namespace A025948

/-- `2*A025944(n)-A025943(n)` -/
def P6655992904210274975.Spec : Prop :=
  ∀ n, P6655992904210274975.a n = A025948 n

end A025948

/-! ## A025948.P10349797816713969074

`A016278(n+1)-A016277(n+1)`
-/

namespace A025948.P10349797816713969074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016278 (n + 1) - A016277 (n + 1)

end

end A025948.P10349797816713969074

namespace A025948

/-- `A016278(n+1)-A016277(n+1)` -/
def P10349797816713969074.Spec : Prop :=
  ∀ n, P10349797816713969074.a n = A025948 n

end A025948

/-! ## A025948.P14762569163133393650

`Δ[A021634(n)-A021264(n)]`
-/

namespace A025948.P14762569163133393650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021634 n - A021264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025948.P14762569163133393650

namespace A025948

/-- `Δ[A021634(n)-A021264(n)]` -/
def P14762569163133393650.Spec : Prop :=
  ∀ n, P14762569163133393650.a n = A025948 n

end A025948

/-! ## A025948.P6189491010592880906

`2*A025949(n)-A025952(n)`
-/

namespace A025948.P6189491010592880906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025949 n - A025952 n

end

end A025948.P6189491010592880906

namespace A025948

/-- `2*A025949(n)-A025952(n)` -/
def P6189491010592880906.Spec : Prop :=
  ∀ n, P6189491010592880906.a n = A025948 n

end A025948

/-!
# A025949: Expansion of 1/((1-2*x)*(1-3*x)*(1-8*x)*(1-10*x)).

The programs for A025949, the canonical program `A025949.P17700594514889615468` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025949 has offset 0).

The definition of A025949 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025949.P17700594514889615468

`3^(n+1)-2^(n+1)+18*a(n-1)-80*a(n-2)` with `a(0)=1, a(1)=23`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A025949

/-- `3^(n+1)-2^(n+1)+18*a(n-1)-80*a(n-2)` -/
def P17700594514889615468.Spec : Prop :=
  ∀ n, P17700594514889615468.a n = A025949 n

theorem P17700594514889615468.correct : P17700594514889615468.Spec := by
  intro n
  simp only [A025949]

end A025949

/-! ## A025949.P5433648346271327076

`A018069(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A025949.P5433648346271327076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018069 n + 2 * a (n - 1)

end

end A025949.P5433648346271327076

namespace A025949

/-- `A018069(n)+2*a(n-1)` -/
def P5433648346271327076.Spec : Prop :=
  ∀ n, P5433648346271327076.a n = A025949 n

end A025949

/-! ## A025949.P14592256496555410972

`2*A025940(n)-A025938(n)`
-/

namespace A025949.P14592256496555410972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025940 n - A025938 n

end

end A025949.P14592256496555410972

namespace A025949

/-- `2*A025940(n)-A025938(n)` -/
def P14592256496555410972.Spec : Prop :=
  ∀ n, P14592256496555410972.a n = A025949 n

end A025949

/-! ## A025949.P11016101849590315416

`(A025952(n)+A025948(n))/2`
-/

namespace A025949.P11016101849590315416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025952 n + A025948 n : ℚ) / 2

end

end A025949.P11016101849590315416

namespace A025949

/-- `(A025952(n)+A025948(n))/2` -/
def P11016101849590315416.Spec : Prop :=
  ∀ n, P11016101849590315416.a n = (A025949 n : ℚ)

end A025949

/-! ## A025949.P11061210277977428862

`(A028080(n)+A025938(n))/2`
-/

namespace A025949.P11061210277977428862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028080 n + A025938 n : ℚ) / 2

end

end A025949.P11061210277977428862

namespace A025949

/-- `(A028080(n)+A025938(n))/2` -/
def P11061210277977428862.Spec : Prop :=
  ∀ n, P11061210277977428862.a n = (A025949 n : ℚ)

end A025949

/-! ## A025949.P390695627462948938

`A025932(n)+A025998(n)-A025934(n)`
-/

namespace A025949.P390695627462948938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025932 n + (A025998 n - A025934 n)

end

end A025949.P390695627462948938

namespace A025949

/-- `A025932(n)+A025998(n)-A025934(n)` -/
def P390695627462948938.Spec : Prop :=
  ∀ n, P390695627462948938.a n = A025949 n

end A025949

/-!
# A025950: Expansion of 1/((1-2*x)*(1-3*x)*(1-8*x)*(1-11*x)).

The programs for A025950, the canonical program `A025950.P5012519885792714119` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025950 has offset 0).

The definition of A025950 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025950.P5012519885792714119

`3^(n+1)-2^(n+1)+19*a(n-1)-88*a(n-2)` with `a(0)=1, a(1)=24`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025950

/-- `3^(n+1)-2^(n+1)+19*a(n-1)-88*a(n-2)` -/
def P5012519885792714119.Spec : Prop :=
  ∀ n, P5012519885792714119.a n = A025950 n

theorem P5012519885792714119.correct : P5012519885792714119.Spec := by
  intro n
  simp only [A025950]

end A025950

/-! ## A025950.P11296205763805812109

`A016318(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A025950.P11296205763805812109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016318 n + 3 * a (n - 1)

end

end A025950.P11296205763805812109

namespace A025950

/-- `A016318(n)+3*a(n-1)` -/
def P11296205763805812109.Spec : Prop :=
  ∀ n, P11296205763805812109.a n = A025950 n

end A025950

/-! ## A025950.P2107525656391274249

`a(n-1)+A018070(n)+a(n-1)` with `a(0)=1`
-/

namespace A025950.P2107525656391274249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A018070 n + a (n - 1))

end

end A025950.P2107525656391274249

namespace A025950

/-- `a(n-1)+A018070(n)+a(n-1)` -/
def P2107525656391274249.Spec : Prop :=
  ∀ n, P2107525656391274249.a n = A025950 n

end A025950

/-! ## A025950.P15734882650004057021

`2*A025935(n)-A025932(n)`
-/

namespace A025950.P15734882650004057021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025935 n - A025932 n

end

end A025950.P15734882650004057021

namespace A025950

/-- `2*A025935(n)-A025932(n)` -/
def P15734882650004057021.Spec : Prop :=
  ∀ n, P15734882650004057021.a n = A025950 n

end A025950

/-! ## A025950.P6762764417359481556

`A025931(n)+A025995(n)-A025932(n)`
-/

namespace A025950.P6762764417359481556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025931 n + (A025995 n - A025932 n)

end

end A025950.P6762764417359481556

namespace A025950

/-- `A025931(n)+A025995(n)-A025932(n)` -/
def P6762764417359481556.Spec : Prop :=
  ∀ n, P6762764417359481556.a n = A025950 n

end A025950

/-! ## A025950.P7627736300776956826

`A025932(n)-(A025935(n)-A028066(n))`
-/

namespace A025950.P7627736300776956826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025932 n - (A025935 n - A028066 n)

end

end A025950.P7627736300776956826

namespace A025950

/-- `A025932(n)-(A025935(n)-A028066(n))` -/
def P7627736300776956826.Spec : Prop :=
  ∀ n, P7627736300776956826.a n = A025950 n

end A025950

/-! ## A025950.P3470404381289379771

`(A028066(n)+A025935(n))/2`
-/

namespace A025950.P3470404381289379771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028066 n + A025935 n : ℚ) / 2

end

end A025950.P3470404381289379771

namespace A025950

/-- `(A028066(n)+A025935(n))/2` -/
def P3470404381289379771.Spec : Prop :=
  ∀ n, P3470404381289379771.a n = (A025950 n : ℚ)

end A025950

/-!
# A025951: Expansion of 1/((1-2*x)*(1-3*x)*(1-8*x)*(1-12*x)).

The programs for A025951, the canonical program `A025951.P5042589742400181646` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025951 has offset 0).

The definition of A025951 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025951.P5042589742400181646

`3^(n+1)-2^(n+1)+20*a(n-1)-96*a(n-2)` with `a(0)=1, a(1)=25`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025951

/-- `3^(n+1)-2^(n+1)+20*a(n-1)-96*a(n-2)` -/
def P5042589742400181646.Spec : Prop :=
  ∀ n, P5042589742400181646.a n = A025951 n

theorem P5042589742400181646.correct : P5042589742400181646.Spec := by
  intro n
  simp only [A025951]

end A025951

/-! ## A025951.P6313849966027221256

`a(n-1)+A018071(n)+a(n-1)` with `a(0)=1`
-/

namespace A025951.P6313849966027221256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A018071 n + a (n - 1))

end

end A025951.P6313849966027221256

namespace A025951

/-- `a(n-1)+A018071(n)+a(n-1)` -/
def P6313849966027221256.Spec : Prop :=
  ∀ n, P6313849966027221256.a n = A025951 n

end A025951

/-! ## A025951.P4114148330249271378

`3*a(n-1)+Δ[A000918(n)]*A016222(n)` with `a(0)=1`
-/

namespace A025951.P4114148330249271378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + (f1 (n + 1) - f1 n) * A016222 n

end

end A025951.P4114148330249271378

namespace A025951

/-- `3*a(n-1)+Δ[A000918(n)]*A016222(n)` -/
def P4114148330249271378.Spec : Prop :=
  ∀ n, P4114148330249271378.a n = A025951 n

end A025951

/-! ## A025951.P13000129326896519557

`3*a(n-1)+A016222(n)*A017912(2*n)` with `a(0)=1`
-/

namespace A025951.P13000129326896519557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + A016222 n * A017912 (2 * n)

end

end A025951.P13000129326896519557

namespace A025951

/-- `3*a(n-1)+A016222(n)*A017912(2*n)` -/
def P13000129326896519557.Spec : Prop :=
  ∀ n, P13000129326896519557.a n = A025951 n

end A025951

/-! ## A025951.P18005252803207057206

`A021674(n)+A021674(n)-A021279(n)`
-/

namespace A025951.P18005252803207057206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021674 n + (A021674 n - A021279 n)

end

end A025951.P18005252803207057206

namespace A025951

/-- `A021674(n)+A021674(n)-A021279(n)` -/
def P18005252803207057206.Spec : Prop :=
  ∀ n, P18005252803207057206.a n = A025951 n

end A025951

/-! ## A025951.P4739133001148287712

`Δ[A021674(n)-A021279(n)]`
-/

namespace A025951.P4739133001148287712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021674 n - A021279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025951.P4739133001148287712

namespace A025951

/-- `Δ[A021674(n)-A021279(n)]` -/
def P4739133001148287712.Spec : Prop :=
  ∀ n, P4739133001148287712.a n = A025951 n

end A025951

/-! ## A025951.P93575899351571562

`(A025956(n)+A025949(n))/2`
-/

namespace A025951.P93575899351571562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025956 n + A025949 n : ℚ) / 2

end

end A025951.P93575899351571562

namespace A025951

/-- `(A025956(n)+A025949(n))/2` -/
def P93575899351571562.Spec : Prop :=
  ∀ n, P93575899351571562.a n = (A025951 n : ℚ)

end A025951

/-! ## A025951.P10013832329924490904

`(A028067(n)+A025936(n))/2`
-/

namespace A025951.P10013832329924490904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028067 n + A025936 n : ℚ) / 2

end

end A025951.P10013832329924490904

namespace A025951

/-- `(A028067(n)+A025936(n))/2` -/
def P10013832329924490904.Spec : Prop :=
  ∀ n, P10013832329924490904.a n = (A025951 n : ℚ)

end A025951

/-!
# A025952: Expansion of 1/((1-2*x)*(1-3*x)*(1-9*x)*(1-10*x)).

The programs for A025952, the canonical program `A025952.P10437461634339574888` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025952 has offset 0).

The definition of A025952 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025952.P10437461634339574888

`3^(n+1)-2^(n+1)+19*a(n-1)-90*a(n-2)` with `a(0)=1, a(1)=24`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025952

/-- `3^(n+1)-2^(n+1)+19*a(n-1)-90*a(n-2)` -/
def P10437461634339574888.Spec : Prop :=
  ∀ n, P10437461634339574888.a n = A025952 n

theorem P10437461634339574888.correct : P10437461634339574888.Spec := by
  intro n
  simp only [A025952]

end A025952

/-! ## A025952.P16972757205198216138

`a(n-1)+A018090(n)+a(n-1)` with `a(0)=1`
-/

namespace A025952.P16972757205198216138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A018090 n + a (n - 1))

end

end A025952.P16972757205198216138

namespace A025952

/-- `a(n-1)+A018090(n)+a(n-1)` -/
def P16972757205198216138.Spec : Prop :=
  ∀ n, P16972757205198216138.a n = A025952 n

end A025952

/-! ## A025952.P3787946863330491868

`Δ[A021049(n)-A021048(n)]`
-/

namespace A025952.P3787946863330491868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021049 n - A021048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025952.P3787946863330491868

namespace A025952

/-- `Δ[A021049(n)-A021048(n)]` -/
def P3787946863330491868.Spec : Prop :=
  ∀ n, P3787946863330491868.a n = A025952 n

end A025952

/-! ## A025952.P9634198146048130357

`2*A025949(n)-A025948(n)`
-/

namespace A025952.P9634198146048130357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025949 n - A025948 n

end

end A025952.P9634198146048130357

namespace A025952

/-- `2*A025949(n)-A025948(n)` -/
def P9634198146048130357.Spec : Prop :=
  ∀ n, P9634198146048130357.a n = A025952 n

end A025952

/-! ## A025952.P64997344975415544

`A016279(n+1)-Δ[A021048(n)]`
-/

namespace A025952.P64997344975415544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016279 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025952.P64997344975415544

namespace A025952

/-- `A016279(n+1)-Δ[A021048(n)]` -/
def P64997344975415544.Spec : Prop :=
  ∀ n, P64997344975415544.a n = A025952 n

end A025952

/-! ## A025952.P8723680911708279727

`A016279(n+1)-A016278(n+1)`
-/

namespace A025952.P8723680911708279727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016279 (n + 1) - A016278 (n + 1)

end

end A025952.P8723680911708279727

namespace A025952

/-- `A016279(n+1)-A016278(n+1)` -/
def P8723680911708279727.Spec : Prop :=
  ∀ n, P8723680911708279727.a n = A025952 n

end A025952

/-! ## A025952.P9891760444926351697

`2*A025953(n)-A025955(n)`
-/

namespace A025952.P9891760444926351697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025953 n - A025955 n

end

end A025952.P9891760444926351697

namespace A025952

/-- `2*A025953(n)-A025955(n)` -/
def P9891760444926351697.Spec : Prop :=
  ∀ n, P9891760444926351697.a n = A025952 n

end A025952

/-!
# A025953: Expansion of g.f. 1/((1-2*x)*(1-3*x)*(1-9*x)*(1-11*x)).

The programs for A025953, the canonical program `A025953.P1185659471064173016` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025953 has offset 0).

The definition of A025953 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025953.P1185659471064173016

`3^(n+1)-2^(n+1)+20*a(n-1)-99*a(n-2)` with `a(0)=1, a(1)=25`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025953

/-- `3^(n+1)-2^(n+1)+20*a(n-1)-99*a(n-2)` -/
def P1185659471064173016.Spec : Prop :=
  ∀ n, P1185659471064173016.a n = A025953 n

theorem P1185659471064173016.correct : P1185659471064173016.Spec := by
  intro n
  simp only [A025953]

end A025953

/-! ## A025953.P12388548289509754722

`A016278(n)+11*a(n-1)` with `a(0)=1`
-/

namespace A025953.P12388548289509754722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016278 n + 11 * a (n - 1)

end

end A025953.P12388548289509754722

namespace A025953

/-- `A016278(n)+11*a(n-1)` -/
def P12388548289509754722.Spec : Prop :=
  ∀ n, P12388548289509754722.a n = A025953 n

end A025953

/-! ## A025953.P1509535826170372169

`a(n-1)+A018091(n)+a(n-1)` with `a(0)=1`
-/

namespace A025953.P1509535826170372169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A018091 n + a (n - 1))

end

end A025953.P1509535826170372169

namespace A025953

/-- `a(n-1)+A018091(n)+a(n-1)` -/
def P1509535826170372169.Spec : Prop :=
  ∀ n, P1509535826170372169.a n = A025953 n

end A025953

/-! ## A025953.P13303770915105422268

`2*A025946(n)-A025944(n)`
-/

namespace A025953.P13303770915105422268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025946 n - A025944 n

end

end A025953.P13303770915105422268

namespace A025953

/-- `2*A025946(n)-A025944(n)` -/
def P13303770915105422268.Spec : Prop :=
  ∀ n, P13303770915105422268.a n = A025953 n

end A025953

/-! ## A025953.P7416491878452890763

`A025935(n)+A025995(n)-A025944(n)`
-/

namespace A025953.P7416491878452890763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025935 n + (A025995 n - A025944 n)

end

end A025953.P7416491878452890763

namespace A025953

/-- `A025935(n)+A025995(n)-A025944(n)` -/
def P7416491878452890763.Spec : Prop :=
  ∀ n, P7416491878452890763.a n = A025953 n

end A025953

/-! ## A025953.P11365546880558093822

`(A025955(n)+A025952(n))/2`
-/

namespace A025953.P11365546880558093822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025955 n + A025952 n : ℚ) / 2

end

end A025953.P11365546880558093822

namespace A025953

/-- `(A025955(n)+A025952(n))/2` -/
def P11365546880558093822.Spec : Prop :=
  ∀ n, P11365546880558093822.a n = (A025953 n : ℚ)

end A025953

/-! ## A025953.P14929724767709298628

`(A028000(n)+A025941(n))/2`
-/

namespace A025953.P14929724767709298628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028000 n + A025941 n : ℚ) / 2

end

end A025953.P14929724767709298628

namespace A025953

/-- `(A028000(n)+A025941(n))/2` -/
def P14929724767709298628.Spec : Prop :=
  ∀ n, P14929724767709298628.a n = (A025953 n : ℚ)

end A025953

/-!
# A025954: Expansion of 1/((1-2*x)*(1-3*x)*(1-9*x)*(1-12*x)).

The programs for A025954, the canonical program `A025954.P1828921231372844443` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025954 has offset 0).

The definition of A025954 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025954.P1828921231372844443

`3^(n+1)-2^(n+1)+21*a(n-1)-108*a(n-2)` with `a(0)=1, a(1)=26`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025954

/-- `3^(n+1)-2^(n+1)+21*a(n-1)-108*a(n-2)` -/
def P1828921231372844443.Spec : Prop :=
  ∀ n, P1828921231372844443.a n = A025954 n

theorem P1828921231372844443.correct : P1828921231372844443.Spec := by
  intro n
  simp only [A025954]

end A025954

/-! ## A025954.P87577315951262828

`2*a(n-1)+3^n*∑[4^(n+1)-3^(n+1)]` with `a(0)=1`
-/

namespace A025954.P87577315951262828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) : ℤ) - (3 ^ (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (3 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025954.P87577315951262828

namespace A025954

/-- `2*a(n-1)+3^n*∑[4^(n+1)-3^(n+1)]` -/
def P87577315951262828.Spec : Prop :=
  ∀ n, P87577315951262828.a n = A025954 n

end A025954

/-! ## A025954.P7826298487049551890

`A018092(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A025954.P7826298487049551890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018092 n + 2 * a (n - 1)

end

end A025954.P7826298487049551890

namespace A025954

/-- `A018092(n)+2*a(n-1)` -/
def P7826298487049551890.Spec : Prop :=
  ∀ n, P7826298487049551890.a n = A025954 n

end A025954

/-! ## A025954.P9486701248583653242

`A016324(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A025954.P9486701248583653242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016324 n + 3 * a (n - 1)

end

end A025954.P9486701248583653242

namespace A025954

/-- `A016324(n)+3*a(n-1)` -/
def P9486701248583653242.Spec : Prop :=
  ∀ n, P9486701248583653242.a n = A025954 n

end A025954

/-! ## A025954.P287465099652936465

`2*A025942(n)-A025939(n)`
-/

namespace A025954.P287465099652936465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025942 n - A025939 n

end

end A025954.P287465099652936465

namespace A025954

/-- `2*A025942(n)-A025939(n)` -/
def P287465099652936465.Spec : Prop :=
  ∀ n, P287465099652936465.a n = A025954 n

end A025954

/-! ## A025954.P17162319412515384137

`2*(2*A016309(n)-A016281(n))-A025939(n)`
-/

namespace A025954.P17162319412515384137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A016309 n - A016281 n) - A025939 n

end

end A025954.P17162319412515384137

namespace A025954

/-- `2*(2*A016309(n)-A016281(n))-A025939(n)` -/
def P17162319412515384137.Spec : Prop :=
  ∀ n, P17162319412515384137.a n = A025954 n

end A025954

/-!
# A025955: Expansion of 1/((1-2*x)*(1-3*x)*(1-10*x)*(1-11*x)).

The programs for A025955, the canonical program `A025955.P6657897226413708940` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025955 has offset 0).

The definition of A025955 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025955.P6657897226413708940

`3^(n+1)-2^(n+1)+21*a(n-1)-110*a(n-2)` with `a(0)=1, a(1)=26`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025955

/-- `3^(n+1)-2^(n+1)+21*a(n-1)-110*a(n-2)` -/
def P6657897226413708940.Spec : Prop :=
  ∀ n, P6657897226413708940.a n = A025955 n

theorem P6657897226413708940.correct : P6657897226413708940.Spec := by
  intro n
  simp only [A025955]

end A025955

/-! ## A025955.P4108058792362657451

`A018206(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A025955.P4108058792362657451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018206 n + 2 * a (n - 1)

end

end A025955.P4108058792362657451

namespace A025955

/-- `A018206(n)+2*a(n-1)` -/
def P4108058792362657451.Spec : Prop :=
  ∀ n, P4108058792362657451.a n = A025955 n

end A025955

/-! ## A025955.P17437531413886821985

`Δ[A021054(n)-A021049(n)]`
-/

namespace A025955.P17437531413886821985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021054 n - A021049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025955.P17437531413886821985

namespace A025955

/-- `Δ[A021054(n)-A021049(n)]` -/
def P17437531413886821985.Spec : Prop :=
  ∀ n, P17437531413886821985.a n = A025955 n

end A025955

/-! ## A025955.P5296952712891910252

`2*A025953(n)-A025952(n)`
-/

namespace A025955.P5296952712891910252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025953 n - A025952 n

end

end A025955.P5296952712891910252

namespace A025955

/-- `2*A025953(n)-A025952(n)` -/
def P5296952712891910252.Spec : Prop :=
  ∀ n, P5296952712891910252.a n = A025955 n

end A025955

/-! ## A025955.P1984488856390832585

`Δ[A021054(n)]-A016279(n+1)`
-/

namespace A025955.P1984488856390832585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A016279 (n + 1)

end

end A025955.P1984488856390832585

namespace A025955

/-- `Δ[A021054(n)]-A016279(n+1)` -/
def P1984488856390832585.Spec : Prop :=
  ∀ n, P1984488856390832585.a n = A025955 n

end A025955

/-! ## A025955.P4764094538793430237

`A016280(n+1)-A016279(n+1)`
-/

namespace A025955.P4764094538793430237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016280 (n + 1) - A016279 (n + 1)

end

end A025955.P4764094538793430237

namespace A025955

/-- `A016280(n+1)-A016279(n+1)` -/
def P4764094538793430237.Spec : Prop :=
  ∀ n, P4764094538793430237.a n = A025955 n

end A025955

/-! ## A025955.P16145890575579552999

`Δ[A021054(n)-A016279(n)]-A016279(n)`
-/

namespace A025955.P16145890575579552999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021054 n - A016279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A016279 n

end

end A025955.P16145890575579552999

namespace A025955

/-- `Δ[A021054(n)-A016279(n)]-A016279(n)` -/
def P16145890575579552999.Spec : Prop :=
  ∀ n, P16145890575579552999.a n = A025955 n

end A025955

/-! ## A025955.P9604685338203163876

`2*A025956(n)-A025957(n)`
-/

namespace A025955.P9604685338203163876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025956 n - A025957 n

end

end A025955.P9604685338203163876

namespace A025955

/-- `2*A025956(n)-A025957(n)` -/
def P9604685338203163876.Spec : Prop :=
  ∀ n, P9604685338203163876.a n = A025955 n

end A025955

/-!
# A025956: Expansion of 1/((1-2*x)*(1-3*x)*(1-10*x)*(1-12*x)).

The programs for A025956, the canonical program `A025956.P9298458522915286962` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025956 has offset 0).

The definition of A025956 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025956.P9298458522915286962

`3^(n+1)-2^(n+1)+22*a(n-1)-120*a(n-2)` with `a(0)=1, a(1)=27`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025956

/-- `3^(n+1)-2^(n+1)+22*a(n-1)-120*a(n-2)` -/
def P9298458522915286962.Spec : Prop :=
  ∀ n, P9298458522915286962.a n = A025956 n

theorem P9298458522915286962.correct : P9298458522915286962.Spec := by
  intro n
  simp only [A025956]

end A025956

/-! ## A025956.P17886759741601384963

`A018207(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A025956.P17886759741601384963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018207 n + 2 * a (n - 1)

end

end A025956.P17886759741601384963

namespace A025956

/-- `A018207(n)+2*a(n-1)` -/
def P17886759741601384963.Spec : Prop :=
  ∀ n, P17886759741601384963.a n = A025956 n

end A025956

/-! ## A025956.P6629722299177592265

`A016326(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A025956.P6629722299177592265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016326 n + 3 * a (n - 1)

end

end A025956.P6629722299177592265

namespace A025956

/-- `A016326(n)+3*a(n-1)` -/
def P6629722299177592265.Spec : Prop :=
  ∀ n, P6629722299177592265.a n = A025956 n

end A025956

/-! ## A025956.P14690664788514764193

`2*A025951(n)-A025949(n)`
-/

namespace A025956.P14690664788514764193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025951 n - A025949 n

end

end A025956.P14690664788514764193

namespace A025956

/-- `2*A025951(n)-A025949(n)` -/
def P14690664788514764193.Spec : Prop :=
  ∀ n, P14690664788514764193.a n = A025956 n

end A025956

/-! ## A025956.P5400337154182585607

`(A025957(n)+A025955(n))/2`
-/

namespace A025956.P5400337154182585607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025957 n + A025955 n : ℚ) / 2

end

end A025956.P5400337154182585607

namespace A025956

/-- `(A025957(n)+A025955(n))/2` -/
def P5400337154182585607.Spec : Prop :=
  ∀ n, P5400337154182585607.a n = (A025956 n : ℚ)

end A025956

/-! ## A025956.P7964478180997195040

`A025934(n)+A026241(n)-A025936(n)`
-/

namespace A025956.P7964478180997195040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025934 n + (A026241 n - A025936 n)

end

end A025956.P7964478180997195040

namespace A025956

/-- `A025934(n)+A026241(n)-A025936(n)` -/
def P7964478180997195040.Spec : Prop :=
  ∀ n, P7964478180997195040.a n = A025956 n

end A025956

/-!
# A025957: Expansion of 1/((1-2*x)*(1-3*x)*(1-11*x)*(1-12*x)).

The programs for A025957, the canonical program `A025957.P12170874232360999063` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025957 has offset 0).

The definition of A025957 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025957.P12170874232360999063

`3^(n+1)-2^(n+1)+23*a(n-1)-132*a(n-2)` with `a(0)=1, a(1)=28`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025957

/-- `3^(n+1)-2^(n+1)+23*a(n-1)-132*a(n-2)` -/
def P12170874232360999063.Spec : Prop :=
  ∀ n, P12170874232360999063.a n = A025957 n

theorem P12170874232360999063.correct : P12170874232360999063.Spec := by
  intro n
  simp only [A025957]

end A025957

/-! ## A025957.P7618107881587093194

`A016633(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A025957.P7618107881587093194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016633 n + 3 * a (n - 1)

end

end A025957.P7618107881587093194

namespace A025957

/-- `A016633(n)+3*a(n-1)` -/
def P7618107881587093194.Spec : Prop :=
  ∀ n, P7618107881587093194.a n = A025957 n

end A025957

/-! ## A025957.P11827387569711142447

`a(n-1)+A018208(n)+a(n-1)` with `a(0)=1`
-/

namespace A025957.P11827387569711142447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A018208 n + a (n - 1))

end

end A025957.P11827387569711142447

namespace A025957

/-- `a(n-1)+A018208(n)+a(n-1)` -/
def P11827387569711142447.Spec : Prop :=
  ∀ n, P11827387569711142447.a n = A025957 n

end A025957

/-! ## A025957.P2214037956769580379

`Δ[A021064(n)-A021054(n)]`
-/

namespace A025957.P2214037956769580379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021064 n - A021054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025957.P2214037956769580379

namespace A025957

/-- `Δ[A021064(n)-A021054(n)]` -/
def P2214037956769580379.Spec : Prop :=
  ∀ n, P2214037956769580379.a n = A025957 n

end A025957

/-! ## A025957.P14567352848568100975

`2*A021734(n)-A021334(n)`
-/

namespace A025957.P14567352848568100975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021734 n - A021334 n

end

end A025957.P14567352848568100975

namespace A025957

/-- `2*A021734(n)-A021334(n)` -/
def P14567352848568100975.Spec : Prop :=
  ∀ n, P14567352848568100975.a n = A025957 n

end A025957

/-! ## A025957.P11554158691407276682

`2*A025956(n)-A025955(n)`
-/

namespace A025957.P11554158691407276682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025956 n - A025955 n

end

end A025957.P11554158691407276682

namespace A025957

/-- `2*A025956(n)-A025955(n)` -/
def P11554158691407276682.Spec : Prop :=
  ∀ n, P11554158691407276682.a n = A025957 n

end A025957

/-! ## A025957.P9968382293464051140

`A016281(n+1)-A016280(n+1)`
-/

namespace A025957.P9968382293464051140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016281 (n + 1) - A016280 (n + 1)

end

end A025957.P9968382293464051140

namespace A025957

/-- `A016281(n+1)-A016280(n+1)` -/
def P9968382293464051140.Spec : Prop :=
  ∀ n, P9968382293464051140.a n = A025957 n

end A025957

/-! ## A025957.P17962625031134375177

`Δ[A021734(n)-A021334(n)]`
-/

namespace A025957.P17962625031134375177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021734 n - A021334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025957.P17962625031134375177

namespace A025957

/-- `Δ[A021734(n)-A021334(n)]` -/
def P17962625031134375177.Spec : Prop :=
  ∀ n, P17962625031134375177.a n = A025957 n

end A025957

/-!
# A025958: Expansion of 1/((1-2*x)*(1-4*x)*(1-5*x)*(1-6*x)).

The programs for A025958, the canonical program `A025958.P356461763715047819` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025958 has offset 0).

The definition of A025958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025958.P356461763715047819

`(4^(n+1)-2^(n+1))/2+11*a(n-1)-30*a(n-2)` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025958

/-- `(4^(n+1)-2^(n+1))/2+11*a(n-1)-30*a(n-2)` -/
def P356461763715047819.Spec : Prop :=
  ∀ n, P356461763715047819.a n = (A025958 n : ℚ)

end A025958

/-! ## A025958.P8376747636657346538

`A016103(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A025958.P8376747636657346538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016103 n + 2 * a (n - 1)

end

end A025958.P8376747636657346538

namespace A025958

/-- `A016103(n)+2*a(n-1)` -/
def P8376747636657346538.Spec : Prop :=
  ∀ n, P8376747636657346538.a n = A025958 n

end A025958

/-! ## A025958.P434948561458227844

`A016295(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A025958.P434948561458227844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016295 n + 4 * a (n - 1)

end

end A025958.P434948561458227844

namespace A025958

/-- `A016295(n)+4*a(n-1)` -/
def P434948561458227844.Spec : Prop :=
  ∀ n, P434948561458227844.a n = A025958 n

end A025958

/-! ## A025958.P9040417360297295343

`Δ[A021076(n)-A021074(n)]`
-/

namespace A025958.P9040417360297295343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021076 n - A021074 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025958.P9040417360297295343

namespace A025958

/-- `Δ[A021076(n)-A021074(n)]` -/
def P9040417360297295343.Spec : Prop :=
  ∀ n, P9040417360297295343.a n = A025958 n

end A025958

/-! ## A025958.P9983426957634422340

`Δ[A021114(n)-A021076(n)]`
-/

namespace A025958.P9983426957634422340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021114 n - A021076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025958.P9983426957634422340

namespace A025958

/-- `Δ[A021114(n)-A021076(n)]` -/
def P9983426957634422340.Spec : Prop :=
  ∀ n, P9983426957634422340.a n = A025958 n

end A025958

/-! ## A025958.P11591935864649951427

`Δ[(A021114(n)-A021074(n))/2]`
-/

namespace A025958.P11591935864649951427
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021114 n - A021074 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025958.P11591935864649951427

namespace A025958

/-- `Δ[(A021114(n)-A021074(n))/2]` -/
def P11591935864649951427.Spec : Prop :=
  ∀ n, P11591935864649951427.a n = (A025958 n : ℚ)

end A025958

/-! ## A025958.P1966712999551156478

`(A016295(n+1)-A016282(n+1))/2`
-/

namespace A025958.P1966712999551156478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016295 (n + 1) - A016282 (n + 1) : ℚ) / 2

end

end A025958.P1966712999551156478

namespace A025958

/-- `(A016295(n+1)-A016282(n+1))/2` -/
def P1966712999551156478.Spec : Prop :=
  ∀ n, P1966712999551156478.a n = (A025958 n : ℚ)

end A025958

/-! ## A025958.P15410965952710491434

`∑[A016103(n)/A000079(n)]*A000079(n)`
-/

namespace A025958.P15410965952710491434
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016103 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A025958.P15410965952710491434

namespace A025958

/-- `∑[A016103(n)/A000079(n)]*A000079(n)` -/
def P15410965952710491434.Spec : Prop :=
  ∀ n, P15410965952710491434.a n = (A025958 n : ℚ)

end A025958

/-! ## A025958.P17427419674760856318

`2*A025959(n)-A025965(n)`
-/

namespace A025958.P17427419674760856318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025959 n - A025965 n

end

end A025958.P17427419674760856318

namespace A025958

/-- `2*A025959(n)-A025965(n)` -/
def P17427419674760856318.Spec : Prop :=
  ∀ n, P17427419674760856318.a n = A025958 n

end A025958

/-! ## A025958.P16083416933020877731

`2*A025960(n)-A025987(n)`
-/

namespace A025958.P16083416933020877731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025960 n - A025987 n

end

end A025958.P16083416933020877731

namespace A025958

/-- `2*A025960(n)-A025987(n)` -/
def P16083416933020877731.Spec : Prop :=
  ∀ n, P16083416933020877731.a n = A025958 n

end A025958

/-!
# A025959: Expansion of 1/((1-2*x)*(1-4*x)*(1-5*x)*(1-7*x)).

The programs for A025959, the canonical program `A025959.P1313783626749430714` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025959 has offset 0).

The definition of A025959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025959.P1313783626749430714

`(4^(n+1)-2^(n+1))/2+12*a(n-1)-35*a(n-2)` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025959

/-- `(4^(n+1)-2^(n+1))/2+12*a(n-1)-35*a(n-2)` -/
def P1313783626749430714.Spec : Prop :=
  ∀ n, P1313783626749430714.a n = (A025959 n : ℚ)

end A025959

/-! ## A025959.P13652877075368662069

`A016296(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A025959.P13652877075368662069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016296 n + 4 * a (n - 1)

end

end A025959.P13652877075368662069

namespace A025959

/-- `A016296(n)+4*a(n-1)` -/
def P13652877075368662069.Spec : Prop :=
  ∀ n, P13652877075368662069.a n = A025959 n

end A025959

/-! ## A025959.P10164422434558960585

`A016285(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A025959.P10164422434558960585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016285 n + 5 * a (n - 1)

end

end A025959.P10164422434558960585

namespace A025959

/-- `A016285(n)+5*a(n-1)` -/
def P10164422434558960585.Spec : Prop :=
  ∀ n, P10164422434558960585.a n = A025959 n

end A025959

/-! ## A025959.P12251164865329539553

`a(n-1)+A018209(n)+a(n-1)` with `a(0)=1`
-/

namespace A025959.P12251164865329539553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A018209 n + a (n - 1))

end

end A025959.P12251164865329539553

namespace A025959

/-- `a(n-1)+A018209(n)+a(n-1)` -/
def P12251164865329539553.Spec : Prop :=
  ∀ n, P12251164865329539553.a n = A025959 n

end A025959

/-! ## A025959.P13227994701873228715

`2*A021124(n)-A021074(n)`
-/

namespace A025959.P13227994701873228715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021124 n - A021074 n

end

end A025959.P13227994701873228715

namespace A025959

/-- `2*A021124(n)-A021074(n)` -/
def P13227994701873228715.Spec : Prop :=
  ∀ n, P13227994701873228715.a n = A025959 n

end A025959

/-! ## A025959.P14753008502155546488

`Δ[A021124(n)-A021079(n)]`
-/

namespace A025959.P14753008502155546488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021124 n - A021079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025959.P14753008502155546488

namespace A025959

/-- `Δ[A021124(n)-A021079(n)]` -/
def P14753008502155546488.Spec : Prop :=
  ∀ n, P14753008502155546488.a n = A025959 n

end A025959

/-! ## A025959.P7017844742194042616

`(A025965(n)+A025958(n))/2`
-/

namespace A025959.P7017844742194042616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025965 n + A025958 n : ℚ) / 2

end

end A025959.P7017844742194042616

namespace A025959

/-- `(A025965(n)+A025958(n))/2` -/
def P7017844742194042616.Spec : Prop :=
  ∀ n, P7017844742194042616.a n = (A025959 n : ℚ)

end A025959

/-! ## A025959.P6964123477395617934

`2*A025965(n)-A025986(n)`
-/

namespace A025959.P6964123477395617934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025965 n - A025986 n

end

end A025959.P6964123477395617934

namespace A025959

/-- `2*A025965(n)-A025986(n)` -/
def P6964123477395617934.Spec : Prop :=
  ∀ n, P6964123477395617934.a n = A025959 n

end A025959

/-! ## A025959.P3354302592070017602

`A021744(n)+A022111(n)-A021224(n)`
-/

namespace A025959.P3354302592070017602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021744 n + (A022111 n - A021224 n)

end

end A025959.P3354302592070017602

namespace A025959

/-- `A021744(n)+A022111(n)-A021224(n)` -/
def P3354302592070017602.Spec : Prop :=
  ∀ n, P3354302592070017602.a n = A025959 n

end A025959

/-!
# A025960: Expansion of 1/((1-2*x)*(1-4*x)*(1-5*x)*(1-8*x)).

The programs for A025960, the canonical program `A025960.P13524474515365845194` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025960 has offset 0).

The definition of A025960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025960.P13524474515365845194

`(4^(n+1)-2^(n+1))/2+13*a(n-1)-40*a(n-2)` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025960

/-- `(4^(n+1)-2^(n+1))/2+13*a(n-1)-40*a(n-2)` -/
def P13524474515365845194.Spec : Prop :=
  ∀ n, P13524474515365845194.a n = (A025960 n : ℚ)

end A025960

/-! ## A025960.P2743936715157769490

`(8^(n+3)-8*5^(n+3)+9*4^(n+3)-2^(n+4))/72`
-/

namespace A025960.P2743936715157769490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ (n + 3) : ℤ) - (8 * 5 ^ (n + 3) : ℤ) + (9 * 4 ^ (n + 3) : ℤ) - (2 ^ (n + 4) : ℤ) : ℚ) / 72

end

end A025960.P2743936715157769490

namespace A025960

/-- `(8^(n+3)-8*5^(n+3)+9*4^(n+3)-2^(n+4))/72` -/
def P2743936715157769490.Spec : Prop :=
  ∀ n, P2743936715157769490.a n = (A025960 n : ℚ)

end A025960

/-! ## A025960.P12662162110308826319

`A016290(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A025960.P12662162110308826319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016290 n + 5 * a (n - 1)

end

end A025960.P12662162110308826319

namespace A025960

/-- `A016290(n)+5*a(n-1)` -/
def P12662162110308826319.Spec : Prop :=
  ∀ n, P12662162110308826319.a n = A025960 n

end A025960

/-! ## A025960.P12316498261115942769

`a(n-1)+A018250(n)+a(n-1)` with `a(0)=1`
-/

namespace A025960.P12316498261115942769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A018250 n + a (n - 1))

end

end A025960.P12316498261115942769

namespace A025960

/-- `a(n-1)+A018250(n)+a(n-1)` -/
def P12316498261115942769.Spec : Prop :=
  ∀ n, P12316498261115942769.a n = A025960 n

end A025960

/-! ## A025960.P1764876948512426208

`2*A016297(n)-A016282(n)`
-/

namespace A025960.P1764876948512426208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016297 n - A016282 n

end

end A025960.P1764876948512426208

namespace A025960

/-- `2*A016297(n)-A016282(n)` -/
def P1764876948512426208.Spec : Prop :=
  ∀ n, P1764876948512426208.a n = A025960 n

end A025960

/-! ## A025960.P12696807105329824763

`2*A025966(n)-A025987(n)`
-/

namespace A025960.P12696807105329824763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025966 n - A025987 n

end

end A025960.P12696807105329824763

namespace A025960

/-- `2*A025966(n)-A025987(n)` -/
def P12696807105329824763.Spec : Prop :=
  ∀ n, P12696807105329824763.a n = A025960 n

end A025960

/-! ## A025960.P9493164221226747948

`A016297(n+1)-A016290(n+1)`
-/

namespace A025960.P9493164221226747948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016297 (n + 1) - A016290 (n + 1)

end

end A025960.P9493164221226747948

namespace A025960

/-- `A016297(n+1)-A016290(n+1)` -/
def P9493164221226747948.Spec : Prop :=
  ∀ n, P9493164221226747948.a n = A025960 n

end A025960

/-! ## A025960.P8329442257358486002

`A025965(n)+A025971(n)-A025987(n)`
-/

namespace A025960.P8329442257358486002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025965 n + (A025971 n - A025987 n)

end

end A025960.P8329442257358486002

namespace A025960

/-- `A025965(n)+A025971(n)-A025987(n)` -/
def P8329442257358486002.Spec : Prop :=
  ∀ n, P8329442257358486002.a n = A025960 n

end A025960

/-!
# A025961: Expansion of 1/((1-2*x)*(1-4*x)*(1-5*x)*(1-9*x)).

The programs for A025961, the canonical program `A025961.P14833435218161651429` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025961 has offset 0).

The definition of A025961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025961.P14833435218161651429

`(4^(n+1)-2^(n+1))/2+14*a(n-1)-45*a(n-2)` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025961

/-- `(4^(n+1)-2^(n+1))/2+14*a(n-1)-45*a(n-2)` -/
def P14833435218161651429.Spec : Prop :=
  ∀ n, P14833435218161651429.a n = (A025961 n : ℚ)

end A025961

/-! ## A025961.P12171103926382203916

`A016298(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A025961.P12171103926382203916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016298 n + 4 * a (n - 1)

end

end A025961.P12171103926382203916

namespace A025961

/-- `A016298(n)+4*a(n-1)` -/
def P12171103926382203916.Spec : Prop :=
  ∀ n, P12171103926382203916.a n = A025961 n

end A025961

/-! ## A025961.P15800861075192764590

`a(n-1)+A018911(n)+a(n-1)` with `a(0)=1`
-/

namespace A025961.P15800861075192764590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A018911 n + a (n - 1))

end

end A025961.P15800861075192764590

namespace A025961

/-- `a(n-1)+A018911(n)+a(n-1)` -/
def P15800861075192764590.Spec : Prop :=
  ∀ n, P15800861075192764590.a n = A025961 n

end A025961

/-! ## A025961.P6430835278300956624

`2*A021084(n)-A021074(n)`
-/

namespace A025961.P6430835278300956624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021084 n - A021074 n

end

end A025961.P6430835278300956624

namespace A025961

/-- `2*A021084(n)-A021074(n)` -/
def P6430835278300956624.Spec : Prop :=
  ∀ n, P6430835278300956624.a n = A025961 n

end A025961

/-! ## A025961.P9869551952961114955

`A016291(n)+A016298(n)-A016282(n)`
-/

namespace A025961.P9869551952961114955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016291 n + (A016298 n - A016282 n)

end

end A025961.P9869551952961114955

namespace A025961

/-- `A016291(n)+A016298(n)-A016282(n)` -/
def P9869551952961114955.Spec : Prop :=
  ∀ n, P9869551952961114955.a n = A025961 n

end A025961

/-! ## A025961.P13546942332709492179

`Δ[A021134(n)-A021084(n)]`
-/

namespace A025961.P13546942332709492179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021134 n - A021084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025961.P13546942332709492179

namespace A025961

/-- `Δ[A021134(n)-A021084(n)]` -/
def P13546942332709492179.Spec : Prop :=
  ∀ n, P13546942332709492179.a n = A025961 n

end A025961

/-! ## A025961.P9759156159221053320

`(A025972(n)+A025959(n))/2`
-/

namespace A025961.P9759156159221053320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025972 n + A025959 n : ℚ) / 2

end

end A025961.P9759156159221053320

namespace A025961

/-- `(A025972(n)+A025959(n))/2` -/
def P9759156159221053320.Spec : Prop :=
  ∀ n, P9759156159221053320.a n = (A025961 n : ℚ)

end A025961

/-! ## A025961.P7364654493699545034

`2*A025967(n)-A025988(n)`
-/

namespace A025961.P7364654493699545034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025967 n - A025988 n

end

end A025961.P7364654493699545034

namespace A025961

/-- `2*A025967(n)-A025988(n)` -/
def P7364654493699545034.Spec : Prop :=
  ∀ n, P7364654493699545034.a n = A025961 n

end A025961

/-! ## A025961.P11478173440508200329

`A016298(n+1)-A016291(n+1)`
-/

namespace A025961.P11478173440508200329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016298 (n + 1) - A016291 (n + 1)

end

end A025961.P11478173440508200329

namespace A025961

/-- `A016298(n+1)-A016291(n+1)` -/
def P11478173440508200329.Spec : Prop :=
  ∀ n, P11478173440508200329.a n = A025961 n

end A025961

/-!
# A025962: Expansion of 1/((1-2*x)*(1-4*x)*(1-5*x)*(1-10*x)).

The programs for A025962, the canonical program `A025962.P673891558584350945` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025962 has offset 0).

The definition of A025962 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025962.P673891558584350945

`(4^(n+1)-2^(n+1))/2+15*a(n-1)-50*a(n-2)` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025962

/-- `(4^(n+1)-2^(n+1))/2+15*a(n-1)-50*a(n-2)` -/
def P673891558584350945.Spec : Prop :=
  ∀ n, P673891558584350945.a n = (A025962 n : ℚ)

end A025962

/-! ## A025962.P7110996607719225675

`a(n-1)+A018912(n)+a(n-1)` with `a(0)=1`
-/

namespace A025962.P7110996607719225675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A018912 n + a (n - 1))

end

end A025962.P7110996607719225675

namespace A025962

/-- `a(n-1)+A018912(n)+a(n-1)` -/
def P7110996607719225675.Spec : Prop :=
  ∀ n, P7110996607719225675.a n = A025962 n

end A025962

/-! ## A025962.P13431993449247960342

`2*A016292(n)-A016282(n)`
-/

namespace A025962.P13431993449247960342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016292 n - A016282 n

end

end A025962.P13431993449247960342

namespace A025962

/-- `2*A016292(n)-A016282(n)` -/
def P13431993449247960342.Spec : Prop :=
  ∀ n, P13431993449247960342.a n = A025962 n

end A025962

/-! ## A025962.P7662355287367230462

`Δ[A021144(n)-A021092(n)]`
-/

namespace A025962.P7662355287367230462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021144 n - A021092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025962.P7662355287367230462

namespace A025962

/-- `Δ[A021144(n)-A021092(n)]` -/
def P7662355287367230462.Spec : Prop :=
  ∀ n, P7662355287367230462.a n = A025962 n

end A025962

/-! ## A025962.P15656160594846602646

`A016299(n+1)-Δ[A021092(n)]`
-/

namespace A025962.P15656160594846602646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016299 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025962.P15656160594846602646

namespace A025962

/-- `A016299(n+1)-Δ[A021092(n)]` -/
def P15656160594846602646.Spec : Prop :=
  ∀ n, P15656160594846602646.a n = A025962 n

end A025962

/-! ## A025962.P7968086464091796227

`Δ[(A021144(n)-A021074(n))/6]`
-/

namespace A025962.P7968086464091796227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021144 n - A021074 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025962.P7968086464091796227

namespace A025962

/-- `Δ[(A021144(n)-A021074(n))/6]` -/
def P7968086464091796227.Spec : Prop :=
  ∀ n, P7968086464091796227.a n = (A025962 n : ℚ)

end A025962

/-! ## A025962.P5518965115979125271

`A016299(n+1)-A016292(n+1)`
-/

namespace A025962.P5518965115979125271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016299 (n + 1) - A016292 (n + 1)

end

end A025962.P5518965115979125271

namespace A025962

/-- `A016299(n+1)-A016292(n+1)` -/
def P5518965115979125271.Spec : Prop :=
  ∀ n, P5518965115979125271.a n = A025962 n

end A025962

/-!
# A025963: Expansion of 1/((1-2*x)*(1-4*x)*(1-5*x)*(1-11*x)).

The programs for A025963, the canonical program `A025963.P14252806072357969360` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025963 has offset 0).

The definition of A025963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025963.P14252806072357969360

`(4^(n+1)-2^(n+1))/2+16*a(n-1)-55*a(n-2)` with `a(0)=1, a(1)=22`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025963

/-- `(4^(n+1)-2^(n+1))/2+16*a(n-1)-55*a(n-2)` -/
def P14252806072357969360.Spec : Prop :=
  ∀ n, P14252806072357969360.a n = (A025963 n : ℚ)

end A025963

/-! ## A025963.P8922969115167366660

`A019040(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A025963.P8922969115167366660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019040 n + 2 * a (n - 1)

end

end A025963.P8922969115167366660

namespace A025963

/-- `A019040(n)+2*a(n-1)` -/
def P8922969115167366660.Spec : Prop :=
  ∀ n, P8922969115167366660.a n = A025963 n

end A025963

/-! ## A025963.P8747862537087952112

`A016282(n)+11*a(n-1)` with `a(0)=1`
-/

namespace A025963.P8747862537087952112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016282 n + 11 * a (n - 1)

end

end A025963.P8747862537087952112

namespace A025963

/-- `A016282(n)+11*a(n-1)` -/
def P8747862537087952112.Spec : Prop :=
  ∀ n, P8747862537087952112.a n = A025963 n

end A025963

/-! ## A025963.P5070382721641905173

`2*A025935(n)-A025928(n)`
-/

namespace A025963.P5070382721641905173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025935 n - A025928 n

end

end A025963.P5070382721641905173

namespace A025963

/-- `2*A025935(n)-A025928(n)` -/
def P5070382721641905173.Spec : Prop :=
  ∀ n, P5070382721641905173.a n = A025963 n

end A025963

/-! ## A025963.P16101847561491370955

`2*A025969(n)-A025990(n)`
-/

namespace A025963.P16101847561491370955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025969 n - A025990 n

end

end A025963.P16101847561491370955

namespace A025963

/-- `2*A025969(n)-A025990(n)` -/
def P16101847561491370955.Spec : Prop :=
  ∀ n, P16101847561491370955.a n = A025963 n

end A025963

/-! ## A025963.P7457421389057908218

`(A028030(n)+A025935(n))/2`
-/

namespace A025963.P7457421389057908218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028030 n + A025935 n : ℚ) / 2

end

end A025963.P7457421389057908218

namespace A025963

/-- `(A028030(n)+A025935(n))/2` -/
def P7457421389057908218.Spec : Prop :=
  ∀ n, P7457421389057908218.a n = (A025963 n : ℚ)

end A025963

/-! ## A025963.P13555056499365532487

`4*a(n-1)+(A016318(n)+A016297(n))/2` with `a(0)=1`
-/

namespace A025963.P13555056499365532487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + (A016318 n + A016297 n : ℚ) / 2

end

end A025963.P13555056499365532487

namespace A025963

/-- `4*a(n-1)+(A016318(n)+A016297(n))/2` -/
def P13555056499365532487.Spec : Prop :=
  ∀ n, P13555056499365532487.a n = (A025963 n : ℚ)

end A025963

/-! ## A025963.P12029757345848462110

`A025928(n)+A028030(n)-A025935(n)`
-/

namespace A025963.P12029757345848462110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025928 n + (A028030 n - A025935 n)

end

end A025963.P12029757345848462110

namespace A025963

/-- `A025928(n)+A028030(n)-A025935(n)` -/
def P12029757345848462110.Spec : Prop :=
  ∀ n, P12029757345848462110.a n = A025963 n

end A025963

/-! ## A025963.P2505539815344060987

`A016301(n+1)-A016293(n+1)`
-/

namespace A025963.P2505539815344060987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016301 (n + 1) - A016293 (n + 1)

end

end A025963.P2505539815344060987

namespace A025963

/-- `A016301(n+1)-A016293(n+1)` -/
def P2505539815344060987.Spec : Prop :=
  ∀ n, P2505539815344060987.a n = A025963 n

end A025963

/-!
# A025964: Expansion of 1/((1-2*x)*(1-4*x)*(1-5*x)*(1-12*x)).

The programs for A025964, the canonical program `A025964.P1167515720369815326` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025964 has offset 0).

The definition of A025964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025964.P1167515720369815326

`(4^(n+1)-2^(n+1))/2+17*a(n-1)-60*a(n-2)` with `a(0)=1, a(1)=23`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025964

/-- `(4^(n+1)-2^(n+1))/2+17*a(n-1)-60*a(n-2)` -/
def P1167515720369815326.Spec : Prop :=
  ∀ n, P1167515720369815326.a n = (A025964 n : ℚ)

end A025964

/-! ## A025964.P10636606301740019368

`A019041(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A025964.P10636606301740019368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019041 n + 2 * a (n - 1)

end

end A025964.P10636606301740019368

namespace A025964

/-- `A019041(n)+2*a(n-1)` -/
def P10636606301740019368.Spec : Prop :=
  ∀ n, P10636606301740019368.a n = A025964 n

end A025964

/-! ## A025964.P13476671730338939468

`A016294(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A025964.P13476671730338939468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016294 n + 5 * a (n - 1)

end

end A025964.P13476671730338939468

namespace A025964

/-- `A016294(n)+5*a(n-1)` -/
def P13476671730338939468.Spec : Prop :=
  ∀ n, P13476671730338939468.a n = A025964 n

end A025964

/-! ## A025964.P6721936131322581223

`A025936(n)+A025936(n)-A025929(n)`
-/

namespace A025964.P6721936131322581223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025936 n + (A025936 n - A025929 n)

end

end A025964.P6721936131322581223

namespace A025964

/-- `A025936(n)+A025936(n)-A025929(n)` -/
def P6721936131322581223.Spec : Prop :=
  ∀ n, P6721936131322581223.a n = A025964 n

end A025964

/-! ## A025964.P14168957198703124253

`A025970(n)+A025970(n)-A025991(n)`
-/

namespace A025964.P14168957198703124253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025970 n + (A025970 n - A025991 n)

end

end A025964.P14168957198703124253

namespace A025964

/-- `A025970(n)+A025970(n)-A025991(n)` -/
def P14168957198703124253.Spec : Prop :=
  ∀ n, P14168957198703124253.a n = A025964 n

end A025964

/-! ## A025964.P14518726436807636662

`Δ[A021164(n)-A021104(n)]`
-/

namespace A025964.P14518726436807636662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021164 n - A021104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025964.P14518726436807636662

namespace A025964

/-- `Δ[A021164(n)-A021104(n)]` -/
def P14518726436807636662.Spec : Prop :=
  ∀ n, P14518726436807636662.a n = A025964 n

end A025964

/-! ## A025964.P9625508186670006034

`2*A025936(n)-A025929(n)`
-/

namespace A025964.P9625508186670006034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025936 n - A025929 n

end

end A025964.P9625508186670006034

namespace A025964

/-- `2*A025936(n)-A025929(n)` -/
def P9625508186670006034.Spec : Prop :=
  ∀ n, P9625508186670006034.a n = A025964 n

end A025964

/-! ## A025964.P12410941761830850115

`2*A025970(n)-A025991(n)`
-/

namespace A025964.P12410941761830850115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025970 n - A025991 n

end

end A025964.P12410941761830850115

namespace A025964

/-- `2*A025970(n)-A025991(n)` -/
def P12410941761830850115.Spec : Prop :=
  ∀ n, P12410941761830850115.a n = A025964 n

end A025964

/-! ## A025964.P12768514486869524020

`(A028031(n)+A025936(n))/2`
-/

namespace A025964.P12768514486869524020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028031 n + A025936 n : ℚ) / 2

end

end A025964.P12768514486869524020

namespace A025964

/-- `(A028031(n)+A025936(n))/2` -/
def P12768514486869524020.Spec : Prop :=
  ∀ n, P12768514486869524020.a n = (A025964 n : ℚ)

end A025964

/-!
# A025965: Expansion of 1/((1-2*x)*(1-4*x)*(1-6*x)*(1-7*x)).

The programs for A025965, the canonical program `A025965.P767480334165670183` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025965 has offset 0).

The definition of A025965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025965.P767480334165670183

`(4^(n+1)-2^(n+1))/2+13*a(n-1)-42*a(n-2)` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025965

/-- `(4^(n+1)-2^(n+1))/2+13*a(n-1)-42*a(n-2)` -/
def P767480334165670183.Spec : Prop :=
  ∀ n, P767480334165670183.a n = (A025965 n : ℚ)

end A025965

/-! ## A025965.P11183877145280558326

`A016304(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A025965.P11183877145280558326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016304 n + 4 * a (n - 1)

end

end A025965.P11183877145280558326

namespace A025965

/-- `A016304(n)+4*a(n-1)` -/
def P11183877145280558326.Spec : Prop :=
  ∀ n, P11183877145280558326.a n = A025965 n

end A025965

/-! ## A025965.P1887924004984524041

`a(n-1)+A019316(n)+a(n-1)` with `a(0)=1`
-/

namespace A025965.P1887924004984524041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A019316 n + a (n - 1))

end

end A025965.P1887924004984524041

namespace A025965

/-- `a(n-1)+A019316(n)+a(n-1)` -/
def P1887924004984524041.Spec : Prop :=
  ∀ n, P1887924004984524041.a n = A025965 n

end A025965

/-! ## A025965.P917350854395451283

`Δ[A021079(n)-A021076(n)]`
-/

namespace A025965.P917350854395451283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021079 n - A021076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025965.P917350854395451283

namespace A025965

/-- `Δ[A021079(n)-A021076(n)]` -/
def P917350854395451283.Spec : Prop :=
  ∀ n, P917350854395451283.a n = A025965 n

end A025965

/-! ## A025965.P6096699250560580401

`2*A021174(n)-A021076(n)`
-/

namespace A025965.P6096699250560580401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021174 n - A021076 n

end

end A025965.P6096699250560580401

namespace A025965

/-- `2*A021174(n)-A021076(n)` -/
def P6096699250560580401.Spec : Prop :=
  ∀ n, P6096699250560580401.a n = A025965 n

end A025965

/-! ## A025965.P905122479151338077

`(A016304(n+1)-A016285(n+1))/2`
-/

namespace A025965.P905122479151338077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016304 (n + 1) - A016285 (n + 1) : ℚ) / 2

end

end A025965.P905122479151338077

namespace A025965

/-- `(A016304(n+1)-A016285(n+1))/2` -/
def P905122479151338077.Spec : Prop :=
  ∀ n, P905122479151338077.a n = (A025965 n : ℚ)

end A025965

/-! ## A025965.P3113234647578288632

`2*A025966(n)-A025971(n)`
-/

namespace A025965.P3113234647578288632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025966 n - A025971 n

end

end A025965.P3113234647578288632

namespace A025965

/-- `2*A025966(n)-A025971(n)` -/
def P3113234647578288632.Spec : Prop :=
  ∀ n, P3113234647578288632.a n = A025965 n

end A025965

/-! ## A025965.P9012728070214934359

`A025960(n)+A025987(n)-A025971(n)`
-/

namespace A025965.P9012728070214934359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025960 n + (A025987 n - A025971 n)

end

end A025965.P9012728070214934359

namespace A025965

/-- `A025960(n)+A025987(n)-A025971(n)` -/
def P9012728070214934359.Spec : Prop :=
  ∀ n, P9012728070214934359.a n = A025965 n

end A025965

/-! ## A025965.P11764249046739850583

`A021804(n)+A021829(n)-A021234(n)`
-/

namespace A025965.P11764249046739850583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021804 n + (A021829 n - A021234 n)

end

end A025965.P11764249046739850583

namespace A025965

/-- `A021804(n)+A021829(n)-A021234(n)` -/
def P11764249046739850583.Spec : Prop :=
  ∀ n, P11764249046739850583.a n = A025965 n

end A025965

/-! ## A025965.P16863473709956765797

`Δ[A021829(n)-A021234(n)]`
-/

namespace A025965.P16863473709956765797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021829 n - A021234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025965.P16863473709956765797

namespace A025965

/-- `Δ[A021829(n)-A021234(n)]` -/
def P16863473709956765797.Spec : Prop :=
  ∀ n, P16863473709956765797.a n = A025965 n

end A025965

/-!
# A025966: Expansion of 1/((1-2*x)*(1-4*x)*(1-6*x)*(1-8*x)).

The programs for A025966, the canonical program `A025966.P11950232371108803263` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025966 has offset 0).

The definition of A025966 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025966.P11950232371108803263

`(4^(n+1)-2^(n+1))/2+14*a(n-1)-48*a(n-2)` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025966

/-- `(4^(n+1)-2^(n+1))/2+14*a(n-1)-48*a(n-2)` -/
def P11950232371108803263.Spec : Prop :=
  ∀ n, P11950232371108803263.a n = (A025966 n : ℚ)

end A025966

/-! ## A025966.P16598522949239209801

`2^n*∑[A016269(n)]`
-/

namespace A025966.P16598522949239209801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025966.P16598522949239209801

namespace A025966

/-- `2^n*∑[A016269(n)]` -/
def P16598522949239209801.Spec : Prop :=
  ∀ n, P16598522949239209801.a n = A025966 n

end A025966

/-! ## A025966.P16788696339807768837

`2^n*A000453(n+4)`
-/

namespace A025966.P16788696339807768837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000453 (n + 4)

end

end A025966.P16788696339807768837

namespace A025966

/-- `2^n*A000453(n+4)` -/
def P16788696339807768837.Spec : Prop :=
  ∀ n, P16788696339807768837.a n = A025966 n

end A025966

/-! ## A025966.P17504808740884870141

`2^n*∑[∑[A027650(n)]]`
-/

namespace A025966.P17504808740884870141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027650 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025966.P17504808740884870141

namespace A025966

/-- `2^n*∑[∑[A027650(n)]]` -/
def P17504808740884870141.Spec : Prop :=
  ∀ n, P17504808740884870141.a n = A025966 n

end A025966

/-! ## A025966.P6017757457444780888

`A016305(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A025966.P6017757457444780888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016305 n + 4 * a (n - 1)

end

end A025966.P6017757457444780888

namespace A025966

/-- `A016305(n)+4*a(n-1)` -/
def P6017757457444780888.Spec : Prop :=
  ∀ n, P6017757457444780888.a n = A025966 n

end A025966

/-! ## A025966.P18283953767164714539

`A016290(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A025966.P18283953767164714539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016290 n + 6 * a (n - 1)

end

end A025966.P18283953767164714539

namespace A025966

/-- `A016290(n)+6*a(n-1)` -/
def P18283953767164714539.Spec : Prop :=
  ∀ n, P18283953767164714539.a n = A025966 n

end A025966

/-! ## A025966.P17972194311486332825

`a(n-1)+A019333(n)+a(n-1)` with `a(0)=1`
-/

namespace A025966.P17972194311486332825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A019333 n + a (n - 1))

end

end A025966.P17972194311486332825

namespace A025966

/-- `a(n-1)+A019333(n)+a(n-1)` -/
def P17972194311486332825.Spec : Prop :=
  ∀ n, P17972194311486332825.a n = A025966 n

end A025966

/-! ## A025966.P1992966306109231938

`∑[A016269(n)]*A000079(n)`
-/

namespace A025966.P1992966306109231938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A025966.P1992966306109231938

namespace A025966

/-- `∑[A016269(n)]*A000079(n)` -/
def P1992966306109231938.Spec : Prop :=
  ∀ n, P1992966306109231938.a n = A025966 n

end A025966

/-! ## A025966.P14697169075843983108

`(A025971(n)+A025965(n))/2`
-/

namespace A025966.P14697169075843983108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025971 n + A025965 n : ℚ) / 2

end

end A025966.P14697169075843983108

namespace A025966

/-- `(A025971(n)+A025965(n))/2` -/
def P14697169075843983108.Spec : Prop :=
  ∀ n, P14697169075843983108.a n = (A025966 n : ℚ)

end A025966

/-! ## A025966.P10105905637791226904

`(A025987(n)+A025960(n))/2`
-/

namespace A025966.P10105905637791226904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025987 n + A025960 n : ℚ) / 2

end

end A025966.P10105905637791226904

namespace A025966

/-- `(A025987(n)+A025960(n))/2` -/
def P10105905637791226904.Spec : Prop :=
  ∀ n, P10105905637791226904.a n = (A025966 n : ℚ)

end A025966

/-! ## A025966.P15063117856565216208

`lcm(A000453(n+4), A056450(n))`
-/

namespace A025966.P15063117856565216208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000453 (n + 4)) (A056450 n)

end

end A025966.P15063117856565216208

namespace A025966

/-- `lcm(A000453(n+4), A056450(n))` -/
def P15063117856565216208.Spec : Prop :=
  ∀ n, (P15063117856565216208.a n : ℤ) = A025966 n

end A025966

/-! ## A025966.P17747876507326438294

`∑[∑[A027650(n)]]*A000079(n)`
-/

namespace A025966.P17747876507326438294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027650 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A025966.P17747876507326438294

namespace A025966

/-- `∑[∑[A027650(n)]]*A000079(n)` -/
def P17747876507326438294.Spec : Prop :=
  ∀ n, P17747876507326438294.a n = A025966 n

end A025966

/-! ## A025966.P3678268022782365138

`∑[A016269(n)]*A077957(2*n)`
-/

namespace A025966.P3678268022782365138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A077957 (2 * n)

end

end A025966.P3678268022782365138

namespace A025966

/-- `∑[A016269(n)]*A077957(2*n)` -/
def P3678268022782365138.Spec : Prop :=
  ∀ n, P3678268022782365138.a n = A025966 n

end A025966

/-! ## A025966.P8380467144310121184

`A000453(n+4)*A131577(n+1)`
-/

namespace A025966.P8380467144310121184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000453 (n + 4) * A131577 (n + 1)

end

end A025966.P8380467144310121184

namespace A025966

/-- `A000453(n+4)*A131577(n+1)` -/
def P8380467144310121184.Spec : Prop :=
  ∀ n, P8380467144310121184.a n = A025966 n

end A025966

/-! ## A025966.P5351362328300015274

`∑[A038721(n+1)/2]*A000079(n)`
-/

namespace A025966.P5351362328300015274
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038721 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A025966.P5351362328300015274

namespace A025966

/-- `∑[A038721(n+1)/2]*A000079(n)` -/
def P5351362328300015274.Spec : Prop :=
  ∀ n, P5351362328300015274.a n = (A025966 n : ℚ)

end A025966

/-! ## A025966.P9860953380541482135

`A000453(n+4)*A013620(A000096(n)-n)`
-/

namespace A025966.P9860953380541482135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000453 (n + 4) * A013620 (A000096 n - (n : ℤ)).toNat

end

end A025966.P9860953380541482135

namespace A025966

/-- `A000453(n+4)*A013620(A000096(n)-n)` -/
def P9860953380541482135.Spec : Prop :=
  ∀ n, P9860953380541482135.a n = A025966 n

end A025966

/-! ## A025966.P7922446943869926520

`∑[A126718(n+1)-A126643(n+1)]*A000079(n)`
-/

namespace A025966.P7922446943869926520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126718 (n + 1) - A126643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A025966.P7922446943869926520

namespace A025966

/-- `∑[A126718(n+1)-A126643(n+1)]*A000079(n)` -/
def P7922446943869926520.Spec : Prop :=
  ∀ n, P7922446943869926520.a n = A025966 n

end A025966

/-! ## A025966.P15475216837211752925

`A228700(n+3)/8`
-/

namespace A025966.P15475216837211752925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228700 (n + 3) : ℚ) / 8

end

end A025966.P15475216837211752925

namespace A025966

/-- `A228700(n+3)/8` -/
def P15475216837211752925.Spec : Prop :=
  ∀ n, P15475216837211752925.a n = (A025966 n : ℚ)

end A025966

/-!
# A025967: Expansion of 1/((1-2*x)*(1-4*x)*(1-6*x)*(1-9*x)).

The programs for A025967, the canonical program `A025967.P824098161076972388` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025967 has offset 0).

The definition of A025967 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025967.P824098161076972388

`(4^(n+1)-2^(n+1))/2+15*a(n-1)-54*a(n-2)` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025967

/-- `(4^(n+1)-2^(n+1))/2+15*a(n-1)-54*a(n-2)` -/
def P824098161076972388.Spec : Prop :=
  ∀ n, P824098161076972388.a n = (A025967 n : ℚ)

end A025967

/-! ## A025967.P17693916319915516101

`a(n-1)+A019443(n)+a(n-1)` with `a(0)=1`
-/

namespace A025967.P17693916319915516101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A019443 n + a (n - 1))

end

end A025967.P17693916319915516101

namespace A025967

/-- `a(n-1)+A019443(n)+a(n-1)` -/
def P17693916319915516101.Spec : Prop :=
  ∀ n, P17693916319915516101.a n = A025967 n

end A025967

/-! ## A025967.P16282871812634382556

`2*A019443(n)-A016306(n)`
-/

namespace A025967.P16282871812634382556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019443 n - A016306 n

end

end A025967.P16282871812634382556

namespace A025967

/-- `2*A019443(n)-A016306(n)` -/
def P16282871812634382556.Spec : Prop :=
  ∀ n, P16282871812634382556.a n = A025967 n

end A025967

/-! ## A025967.P12102840119150542757

`(A016306(n+1)-A016291(n+1))/2`
-/

namespace A025967.P12102840119150542757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016306 (n + 1) - A016291 (n + 1) : ℚ) / 2

end

end A025967.P12102840119150542757

namespace A025967

/-- `(A016306(n+1)-A016291(n+1))/2` -/
def P12102840119150542757.Spec : Prop :=
  ∀ n, P12102840119150542757.a n = (A025967 n : ℚ)

end A025967

/-! ## A025967.P15744541830646879079

`(A019443(n+1)-A016306(n+1))/2`
-/

namespace A025967.P15744541830646879079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019443 (n + 1) - A016306 (n + 1) : ℚ) / 2

end

end A025967.P15744541830646879079

namespace A025967

/-- `(A019443(n+1)-A016306(n+1))/2` -/
def P15744541830646879079.Spec : Prop :=
  ∀ n, P15744541830646879079.a n = (A025967 n : ℚ)

end A025967

/-! ## A025967.P16376889763891730675

`A016306(n)+A019443(n)-A016291(n)`
-/

namespace A025967.P16376889763891730675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016306 n + (A019443 n - A016291 n)

end

end A025967.P16376889763891730675

namespace A025967

/-- `A016306(n)+A019443(n)-A016291(n)` -/
def P16376889763891730675.Spec : Prop :=
  ∀ n, P16376889763891730675.a n = A025967 n

end A025967

/-! ## A025967.P6793773292639124819

`A021084(n)+A021194(n)-A021076(n)`
-/

namespace A025967.P6793773292639124819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021084 n + (A021194 n - A021076 n)

end

end A025967.P6793773292639124819

namespace A025967

/-- `A021084(n)+A021194(n)-A021076(n)` -/
def P6793773292639124819.Spec : Prop :=
  ∀ n, P6793773292639124819.a n = A025967 n

end A025967

/-! ## A025967.P9061506223867663349

`2*A001047(n+1)/5*A001047(n+2)-A016306(n)`
-/

namespace A025967.P9061506223867663349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A001047 (n + 1) : ℚ) / 5 * (A001047 (n + 2) : ℚ)) - (A016306 n : ℚ)

end

end A025967.P9061506223867663349

namespace A025967

/-- `2*A001047(n+1)/5*A001047(n+2)-A016306(n)` -/
def P9061506223867663349.Spec : Prop :=
  ∀ n, P9061506223867663349.a n = (A025967 n : ℚ)

end A025967

/-!
# A025968: Expansion of 1/((1-2*x)*(1-4*x)*(1-6*x)*(1-10*x)).

The programs for A025968, the canonical program `A025968.P11223149668699470435` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025968 has offset 0).

The definition of A025968 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025968.P11223149668699470435

`(4^(n+1)-2^(n+1))/2+16*a(n-1)-60*a(n-2)` with `a(0)=1, a(1)=22`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025968

/-- `(4^(n+1)-2^(n+1))/2+16*a(n-1)-60*a(n-2)` -/
def P11223149668699470435.Spec : Prop :=
  ∀ n, P11223149668699470435.a n = (A025968 n : ℚ)

end A025968

/-! ## A025968.P3621309779411702582

`2^n*A021024(n)`
-/

namespace A025968.P3621309779411702582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A021024 n

end

end A025968.P3621309779411702582

namespace A025968

/-- `2^n*A021024(n)` -/
def P3621309779411702582.Spec : Prop :=
  ∀ n, P3621309779411702582.a n = A025968 n

end A025968

/-! ## A025968.P16415186811698364705

`2^n*∑[A016273(n)]`
-/

namespace A025968.P16415186811698364705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025968.P16415186811698364705

namespace A025968

/-- `2^n*∑[A016273(n)]` -/
def P16415186811698364705.Spec : Prop :=
  ∀ n, P16415186811698364705.a n = A025968 n

end A025968

/-! ## A025968.P1252305223229125649

`a(n-1)+A019483(n)+a(n-1)` with `a(0)=1`
-/

namespace A025968.P1252305223229125649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A019483 n + a (n - 1))

end

end A025968.P1252305223229125649

namespace A025968

/-- `a(n-1)+A019483(n)+a(n-1)` -/
def P1252305223229125649.Spec : Prop :=
  ∀ n, P1252305223229125649.a n = A025968 n

end A025968

/-! ## A025968.P390831925329248897

`∑[A016273(n)]*A000079(n)`
-/

namespace A025968.P390831925329248897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A025968.P390831925329248897

namespace A025968

/-- `∑[A016273(n)]*A000079(n)` -/
def P390831925329248897.Spec : Prop :=
  ∀ n, P390831925329248897.a n = A025968 n

end A025968

/-! ## A025968.P18218194252786385554

`∑[A019483(n)/2^n]*A000079(n)`
-/

namespace A025968.P18218194252786385554
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019483 n : ℚ) / (2 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A025968.P18218194252786385554

namespace A025968

/-- `∑[A019483(n)/2^n]*A000079(n)` -/
def P18218194252786385554.Spec : Prop :=
  ∀ n, P18218194252786385554.a n = (A025968 n : ℚ)

end A025968

/-! ## A025968.P16343275555034654322

`(A056272(n+4)-A124302(n+4))*2^n`
-/

namespace A025968.P16343275555034654322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056272 (n + 4) - A124302 (n + 4)) * (2 ^ n : ℤ)

end

end A025968.P16343275555034654322

namespace A025968

/-- `(A056272(n+4)-A124302(n+4))*2^n` -/
def P16343275555034654322.Spec : Prop :=
  ∀ n, P16343275555034654322.a n = A025968 n

end A025968

/-! ## A025968.P8685498367107785154

`(A025977(n)+A025966(n))/2`
-/

namespace A025968.P8685498367107785154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025977 n + A025966 n : ℚ) / 2

end

end A025968.P8685498367107785154

namespace A025968

/-- `(A025977(n)+A025966(n))/2` -/
def P8685498367107785154.Spec : Prop :=
  ∀ n, P8685498367107785154.a n = (A025968 n : ℚ)

end A025968

/-! ## A025968.P7392175150926246690

`∑[A124960(A167614(n+1))]*A000079(n)`
-/

namespace A025968.P7392175150926246690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124960 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A025968.P7392175150926246690

namespace A025968

/-- `∑[A124960(A167614(n+1))]*A000079(n)` -/
def P7392175150926246690.Spec : Prop :=
  ∀ n, P7392175150926246690.a n = A025968 n

end A025968

/-!
# A025969: Expansion of 1/((1-2*x)*(1-4*x)*(1-6*x)*(1-11*x)).

The programs for A025969, the canonical program `A025969.P12380021020363509694` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025969 has offset 0).

The definition of A025969 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025969.P12380021020363509694

`(4^(n+1)-2^(n+1))/2+17*a(n-1)-66*a(n-2)` with `a(0)=1, a(1)=23`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025969

/-- `(4^(n+1)-2^(n+1))/2+17*a(n-1)-66*a(n-2)` -/
def P12380021020363509694.Spec : Prop :=
  ∀ n, P12380021020363509694.a n = (A025969 n : ℚ)

end A025969

/-! ## A025969.P16360179068779436588

`A019488(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A025969.P16360179068779436588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019488 n + 2 * a (n - 1)

end

end A025969.P16360179068779436588

namespace A025969

/-- `A019488(n)+2*a(n-1)` -/
def P16360179068779436588.Spec : Prop :=
  ∀ n, P16360179068779436588.a n = A025969 n

end A025969

/-! ## A025969.P4220634687125303856

`2*A021094(n)-A021076(n)`
-/

namespace A025969.P4220634687125303856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021094 n - A021076 n

end

end A025969.P4220634687125303856

namespace A025969

/-- `2*A021094(n)-A021076(n)` -/
def P4220634687125303856.Spec : Prop :=
  ∀ n, P4220634687125303856.a n = A025969 n

end A025969

/-! ## A025969.P9301982848137755618

`(A025990(n)+A025963(n))/2`
-/

namespace A025969.P9301982848137755618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025990 n + A025963 n : ℚ) / 2

end

end A025969.P9301982848137755618

namespace A025969

/-- `(A025990(n)+A025963(n))/2` -/
def P9301982848137755618.Spec : Prop :=
  ∀ n, P9301982848137755618.a n = (A025969 n : ℚ)

end A025969

/-! ## A025969.P15683274112962329550

`(A028036(n)+A025941(n))/2`
-/

namespace A025969.P15683274112962329550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028036 n + A025941 n : ℚ) / 2

end

end A025969.P15683274112962329550

namespace A025969

/-- `(A028036(n)+A025941(n))/2` -/
def P15683274112962329550.Spec : Prop :=
  ∀ n, P15683274112962329550.a n = (A025969 n : ℚ)

end A025969

/-! ## A025969.P3481272285083855774

`A025965(n)+A028133(n)-A025974(n)`
-/

namespace A025969.P3481272285083855774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025965 n + (A028133 n - A025974 n)

end

end A025969.P3481272285083855774

namespace A025969

/-- `A025965(n)+A028133(n)-A025974(n)` -/
def P3481272285083855774.Spec : Prop :=
  ∀ n, P3481272285083855774.a n = A025969 n

end A025969

/-! ## A025969.P2205534074379998676

`(A016308(n+1)-A016293(n+1))/2`
-/

namespace A025969.P2205534074379998676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016308 (n + 1) - A016293 (n + 1) : ℚ) / 2

end

end A025969.P2205534074379998676

namespace A025969

/-- `(A016308(n+1)-A016293(n+1))/2` -/
def P2205534074379998676.Spec : Prop :=
  ∀ n, P2205534074379998676.a n = (A025969 n : ℚ)

end A025969

/-!
# A025970: Expansion of 1/((1-2*x)*(1-4*x)*(1-6*x)*(1-12*x)).

The programs for A025970, the canonical program `A025970.P15784883130347197121` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025970 has offset 0).

The definition of A025970 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025970.P15784883130347197121

`(4^(n+1)-2^(n+1))/2+18*a(n-1)-72*a(n-2)` with `a(0)=1, a(1)=24`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025970

/-- `(4^(n+1)-2^(n+1))/2+18*a(n-1)-72*a(n-2)` -/
def P15784883130347197121.Spec : Prop :=
  ∀ n, P15784883130347197121.a n = (A025970 n : ℚ)

end A025970

/-! ## A025970.P3566392278877726979

`2^n*A021029(n)`
-/

namespace A025970.P3566392278877726979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A021029 n

end

end A025970.P3566392278877726979

namespace A025970

/-- `2^n*A021029(n)` -/
def P3566392278877726979.Spec : Prop :=
  ∀ n, P3566392278877726979.a n = A025970 n

end A025970

/-! ## A025970.P15450512824020477789

`2^n*∑[A001240(n+1)]`
-/

namespace A025970.P15450512824020477789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025970.P15450512824020477789

namespace A025970

/-- `2^n*∑[A001240(n+1)]` -/
def P15450512824020477789.Spec : Prop :=
  ∀ n, P15450512824020477789.a n = A025970 n

end A025970

/-! ## A025970.P5663417587247685053

`a(n-1)+A019490(n)+a(n-1)` with `a(0)=1`
-/

namespace A025970.P5663417587247685053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A019490 n + a (n - 1))

end

end A025970.P5663417587247685053

namespace A025970

/-- `a(n-1)+A019490(n)+a(n-1)` -/
def P5663417587247685053.Spec : Prop :=
  ∀ n, P5663417587247685053.a n = A025970 n

end A025970

/-! ## A025970.P14961794598970878744

`∑[A001240(n+1)]*A000079(n)`
-/

namespace A025970.P14961794598970878744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A025970.P14961794598970878744

namespace A025970

/-- `∑[A001240(n+1)]*A000079(n)` -/
def P14961794598970878744.Spec : Prop :=
  ∀ n, P14961794598970878744.a n = A025970 n

end A025970

/-! ## A025970.P8061925925068171470

`A021029(n)*A164073(2*n+1)`
-/

namespace A025970.P8061925925068171470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021029 n * A164073 (2 * n + 1)

end

end A025970.P8061925925068171470

namespace A025970

/-- `A021029(n)*A164073(2*n+1)` -/
def P8061925925068171470.Spec : Prop :=
  ∀ n, P8061925925068171470.a n = A025970 n

end A025970

/-! ## A025970.P4783753680854216940

`∑[A001240(n+1)]*Δ[A000225(n)]`
-/

namespace A025970.P4783753680854216940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A025970.P4783753680854216940

namespace A025970

/-- `∑[A001240(n+1)]*Δ[A000225(n)]` -/
def P4783753680854216940.Spec : Prop :=
  ∀ n, P4783753680854216940.a n = A025970 n

end A025970

/-! ## A025970.P113344602549066282

`A021029(n)+A000225(n)*A021029(n)`
-/

namespace A025970.P113344602549066282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021029 n + A000225 n * A021029 n

end

end A025970.P113344602549066282

namespace A025970

/-- `A021029(n)+A000225(n)*A021029(n)` -/
def P113344602549066282.Spec : Prop :=
  ∀ n, P113344602549066282.a n = A025970 n

end A025970

/-! ## A025970.P8082659749655370642

`A000051(n)*A021029(n)-A021029(n)`
-/

namespace A025970.P8082659749655370642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A021029 n - A021029 n

end

end A025970.P8082659749655370642

namespace A025970

/-- `A000051(n)*A021029(n)-A021029(n)` -/
def P8082659749655370642.Spec : Prop :=
  ∀ n, P8082659749655370642.a n = A025970 n

end A025970

/-! ## A025970.P12998696915228850506

`∑[A019490(n)/A000079(n)]*A000079(n)`
-/

namespace A025970.P12998696915228850506
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019490 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A025970.P12998696915228850506

namespace A025970

/-- `∑[A019490(n)/A000079(n)]*A000079(n)` -/
def P12998696915228850506.Spec : Prop :=
  ∀ n, P12998696915228850506.a n = (A025970 n : ℚ)

end A025970

/-!
# A025971: Expansion of 1/((1-2*x)*(1-4*x)*(1-7*x)*(1-8*x)).

The programs for A025971, the canonical program `A025971.P4364182827464322040` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025971 has offset 0).

The definition of A025971 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025971.P4364182827464322040

`(4^(n+1)-2^(n+1))/2+15*a(n-1)-56*a(n-2)` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025971

/-- `(4^(n+1)-2^(n+1))/2+15*a(n-1)-56*a(n-2)` -/
def P4364182827464322040.Spec : Prop :=
  ∀ n, P4364182827464322040.a n = (A025971 n : ℚ)

end A025971

/-! ## A025971.P5912049062039141621

`(5*8^(n+2)-7^(n+3)+10*4^(n+1)-2^(n+1))/15`
-/

namespace A025971.P5912049062039141621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 8 ^ (n + 2) : ℤ) - (7 ^ (n + 3) : ℤ) + (10 * 4 ^ (n + 1) : ℤ) - (2 ^ (n + 1) : ℤ) : ℚ) / 15

end

end A025971.P5912049062039141621

namespace A025971

/-- `(5*8^(n+2)-7^(n+3)+10*4^(n+1)-2^(n+1))/15` -/
def P5912049062039141621.Spec : Prop :=
  ∀ n, P5912049062039141621.a n = (A025971 n : ℚ)

end A025971

/-! ## A025971.P3374142656965574172

`a(n-1)+A019512(n)+a(n-1)` with `a(0)=1`
-/

namespace A025971.P3374142656965574172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A019512 n + a (n - 1))

end

end A025971.P3374142656965574172

namespace A025971

/-- `a(n-1)+A019512(n)+a(n-1)` -/
def P3374142656965574172.Spec : Prop :=
  ∀ n, P3374142656965574172.a n = A025971 n

end A025971

/-! ## A025971.P5208331853719307113

`2*A016311(n)-A016285(n)`
-/

namespace A025971.P5208331853719307113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016311 n - A016285 n

end

end A025971.P5208331853719307113

namespace A025971

/-- `2*A016311(n)-A016285(n)` -/
def P5208331853719307113.Spec : Prop :=
  ∀ n, P5208331853719307113.a n = A025971 n

end A025971

/-! ## A025971.P360825080626527995

`2*A025966(n)-A025965(n)`
-/

namespace A025971.P360825080626527995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025966 n - A025965 n

end

end A025971.P360825080626527995

namespace A025971

/-- `2*A025966(n)-A025965(n)` -/
def P360825080626527995.Spec : Prop :=
  ∀ n, P360825080626527995.a n = A025971 n

end A025971

/-! ## A025971.P15890415188768211530

`A016290(n+1)-A016285(n+1)`
-/

namespace A025971.P15890415188768211530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016290 (n + 1) - A016285 (n + 1)

end

end A025971.P15890415188768211530

namespace A025971

/-- `A016290(n+1)-A016285(n+1)` -/
def P15890415188768211530.Spec : Prop :=
  ∀ n, P15890415188768211530.a n = A025971 n

end A025971

/-! ## A025971.P14895292247803381419

`A025960(n)+A025987(n)-A025965(n)`
-/

namespace A025971.P14895292247803381419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025960 n + (A025987 n - A025965 n)

end

end A025971.P14895292247803381419

namespace A025971

/-- `A025960(n)+A025987(n)-A025965(n)` -/
def P14895292247803381419.Spec : Prop :=
  ∀ n, P14895292247803381419.a n = A025971 n

end A025971

/-! ## A025971.P12873878687111388603

`2*A025977(n)-A028006(n)`
-/

namespace A025971.P12873878687111388603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025977 n - A028006 n

end

end A025971.P12873878687111388603

namespace A025971

/-- `2*A025977(n)-A028006(n)` -/
def P12873878687111388603.Spec : Prop :=
  ∀ n, P12873878687111388603.a n = A025971 n

end A025971

/-!
# A025972: Expansion of 1/((1-2*x)*(1-4*x)*(1-7*x)*(1-9*x)).

The programs for A025972, the canonical program `A025972.P2133141715032311993` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025972 has offset 0).

The definition of A025972 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025972.P2133141715032311993

`(4^(n+1)-2^(n+1))/2+16*a(n-1)-63*a(n-2)` with `a(0)=1, a(1)=22`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025972

/-- `(4^(n+1)-2^(n+1))/2+16*a(n-1)-63*a(n-2)` -/
def P2133141715032311993.Spec : Prop :=
  ∀ n, P2133141715032311993.a n = (A025972 n : ℚ)

end A025972

/-! ## A025972.P8970034348670392148

`A019613(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A025972.P8970034348670392148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019613 n + 2 * a (n - 1)

end

end A025972.P8970034348670392148

namespace A025972

/-- `A019613(n)+2*a(n-1)` -/
def P8970034348670392148.Spec : Prop :=
  ∀ n, P8970034348670392148.a n = A025972 n

end A025972

/-! ## A025972.P9976833616660641632

`2*A021229(n)-A021084(n)`
-/

namespace A025972.P9976833616660641632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021229 n - A021084 n

end

end A025972.P9976833616660641632

namespace A025972

/-- `2*A021229(n)-A021084(n)` -/
def P9976833616660641632.Spec : Prop :=
  ∀ n, P9976833616660641632.a n = A025972 n

end A025972

/-! ## A025972.P11386068433284739090

`2*A025961(n)-A025959(n)`
-/

namespace A025972.P11386068433284739090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025961 n - A025959 n

end

end A025972.P11386068433284739090

namespace A025972

/-- `2*A025961(n)-A025959(n)` -/
def P11386068433284739090.Spec : Prop :=
  ∀ n, P11386068433284739090.a n = A025972 n

end A025972

/-! ## A025972.P15089131202569713667

`(A025976(n)+A025971(n))/2`
-/

namespace A025972.P15089131202569713667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025976 n + A025971 n : ℚ) / 2

end

end A025972.P15089131202569713667

namespace A025972

/-- `(A025976(n)+A025971(n))/2` -/
def P15089131202569713667.Spec : Prop :=
  ∀ n, P15089131202569713667.a n = (A025972 n : ℚ)

end A025972

/-! ## A025972.P11750463659562144285

`(A016291(n+1)-A016285(n+1))/2`
-/

namespace A025972.P11750463659562144285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016291 (n + 1) - A016285 (n + 1) : ℚ) / 2

end

end A025972.P11750463659562144285

namespace A025972

/-- `(A016291(n+1)-A016285(n+1))/2` -/
def P11750463659562144285.Spec : Prop :=
  ∀ n, P11750463659562144285.a n = (A025972 n : ℚ)

end A025972

/-! ## A025972.P9844317838001051397

`2*A025974(n)-A025981(n)`
-/

namespace A025972.P9844317838001051397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025974 n - A025981 n

end

end A025972.P9844317838001051397

namespace A025972

/-- `2*A025974(n)-A025981(n)` -/
def P9844317838001051397.Spec : Prop :=
  ∀ n, P9844317838001051397.a n = A025972 n

end A025972

/-!
# A025973: Expansion of 1/((1-2*x)*(1-4*x)*(1-7*x)*(1-10*x)).

The programs for A025973, the canonical program `A025973.P16327038614990069528` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025973 has offset 0).

The definition of A025973 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025973.P16327038614990069528

`(4^(n+1)-2^(n+1))/2+17*a(n-1)-70*a(n-2)` with `a(0)=1, a(1)=23`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025973

/-- `(4^(n+1)-2^(n+1))/2+17*a(n-1)-70*a(n-2)` -/
def P16327038614990069528.Spec : Prop :=
  ∀ n, P16327038614990069528.a n = (A025973 n : ℚ)

end A025973

/-! ## A025973.P11749621094350866506

`A019618(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A025973.P11749621094350866506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019618 n + 2 * a (n - 1)

end

end A025973.P11749621094350866506

namespace A025973

/-- `A019618(n)+2*a(n-1)` -/
def P11749621094350866506.Spec : Prop :=
  ∀ n, P11749621094350866506.a n = A025973 n

end A025973

/-! ## A025973.P7230637189288097508

`A016285(n)+11*a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A025973.P7230637189288097508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016285 n + 11 * a (n - 1) - a (n - 1)

end

end A025973.P7230637189288097508

namespace A025973

/-- `A016285(n)+11*a(n-1)-a(n-1)` -/
def P7230637189288097508.Spec : Prop :=
  ∀ n, P7230637189288097508.a n = A025973 n

end A025973

/-! ## A025973.P15069431621342355075

`2*A021234(n)-A021092(n)`
-/

namespace A025973.P15069431621342355075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021234 n - A021092 n

end

end A025973.P15069431621342355075

namespace A025973

/-- `2*A021234(n)-A021092(n)` -/
def P15069431621342355075.Spec : Prop :=
  ∀ n, P15069431621342355075.a n = A025973 n

end A025973

/-! ## A025973.P6371261134618735966

`A021092(n)+A021234(n)-A021079(n)`
-/

namespace A025973.P6371261134618735966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021092 n + (A021234 n - A021079 n)

end

end A025973.P6371261134618735966

namespace A025973

/-- `A021092(n)+A021234(n)-A021079(n)` -/
def P6371261134618735966.Spec : Prop :=
  ∀ n, P6371261134618735966.a n = A025973 n

end A025973

/-! ## A025973.P17574742350683515867

`A021268(n)+A021854(n)-A021224(n)`
-/

namespace A025973.P17574742350683515867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021268 n + (A021854 n - A021224 n)

end

end A025973.P17574742350683515867

namespace A025973

/-- `A021268(n)+A021854(n)-A021224(n)` -/
def P17574742350683515867.Spec : Prop :=
  ∀ n, P17574742350683515867.a n = A025973 n

end A025973

/-! ## A025973.P18053429236610517486

`(A028040(n)+A025945(n))/2`
-/

namespace A025973.P18053429236610517486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028040 n + A025945 n : ℚ) / 2

end

end A025973.P18053429236610517486

namespace A025973

/-- `(A028040(n)+A025945(n))/2` -/
def P18053429236610517486.Spec : Prop :=
  ∀ n, P18053429236610517486.a n = (A025973 n : ℚ)

end A025973

/-! ## A025973.P5565608416590331249

`2*A021894(n)-A021324(n)`
-/

namespace A025973.P5565608416590331249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021894 n - A021324 n

end

end A025973.P5565608416590331249

namespace A025973

/-- `2*A021894(n)-A021324(n)` -/
def P5565608416590331249.Spec : Prop :=
  ∀ n, P5565608416590331249.a n = A025973 n

end A025973

/-! ## A025973.P5449699927134367326

`A021854(n)+A024440(n)-A021324(n)`
-/

namespace A025973.P5449699927134367326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021854 n + (A024440 n - A021324 n)

end

end A025973.P5449699927134367326

namespace A025973

/-- `A021854(n)+A024440(n)-A021324(n)` -/
def P5449699927134367326.Spec : Prop :=
  ∀ n, P5449699927134367326.a n = A025973 n

end A025973

/-!
# A025974: Expansion of 1/((1-2*x)*(1-4*x)*(1-7*x)*(1-11*x)).

The programs for A025974, the canonical program `A025974.P8953226084861857999` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025974 has offset 0).

The definition of A025974 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025974.P8953226084861857999

`(4^(n+1)-2^(n+1))/2+18*a(n-1)-77*a(n-2)` with `a(0)=1, a(1)=24`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025974

/-- `(4^(n+1)-2^(n+1))/2+18*a(n-1)-77*a(n-2)` -/
def P8953226084861857999.Spec : Prop :=
  ∀ n, P8953226084861857999.a n = (A025974 n : ℚ)

end A025974

/-! ## A025974.P18167515997229356240

`A016285(n)+11*a(n-1)` with `a(0)=1`
-/

namespace A025974.P18167515997229356240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016285 n + 11 * a (n - 1)

end

end A025974.P18167515997229356240

namespace A025974

/-- `A016285(n)+11*a(n-1)` -/
def P18167515997229356240.Spec : Prop :=
  ∀ n, P18167515997229356240.a n = A025974 n

end A025974

/-! ## A025974.P6998449231174034527

`a(n-1)+A019623(n)+a(n-1)` with `a(0)=1`
-/

namespace A025974.P6998449231174034527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A019623 n + a (n - 1))

end

end A025974.P6998449231174034527

namespace A025974

/-- `a(n-1)+A019623(n)+a(n-1)` -/
def P6998449231174034527.Spec : Prop :=
  ∀ n, P6998449231174034527.a n = A025974 n

end A025974

/-! ## A025974.P8066133906083847106

`2*A021244(n)-A021094(n)`
-/

namespace A025974.P8066133906083847106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021244 n - A021094 n

end

end A025974.P8066133906083847106

namespace A025974

/-- `2*A021244(n)-A021094(n)` -/
def P8066133906083847106.Spec : Prop :=
  ∀ n, P8066133906083847106.a n = A025974 n

end A025974

/-! ## A025974.P1330916565689540799

`(A025981(n)+A025972(n))/2`
-/

namespace A025974.P1330916565689540799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025981 n + A025972 n : ℚ) / 2

end

end A025974.P1330916565689540799

namespace A025974

/-- `(A025981(n)+A025972(n))/2` -/
def P1330916565689540799.Spec : Prop :=
  ∀ n, P1330916565689540799.a n = (A025974 n : ℚ)

end A025974

/-! ## A025974.P1576873276476788207

`(A028041(n)+A025946(n))/2`
-/

namespace A025974.P1576873276476788207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028041 n + A025946 n : ℚ) / 2

end

end A025974.P1576873276476788207

namespace A025974

/-- `(A028041(n)+A025946(n))/2` -/
def P1576873276476788207.Spec : Prop :=
  ∀ n, P1576873276476788207.a n = (A025974 n : ℚ)

end A025974

/-! ## A025974.P7496910769856469954

`A025965(n)+A028133(n)-A025969(n)`
-/

namespace A025974.P7496910769856469954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025965 n + (A028133 n - A025969 n)

end

end A025974.P7496910769856469954

namespace A025974

/-- `A025965(n)+A028133(n)-A025969(n)` -/
def P7496910769856469954.Spec : Prop :=
  ∀ n, P7496910769856469954.a n = A025974 n

end A025974

/-!
# A025975: Expansion of 1/((1-2*x)*(1-4*x)*(1-7*x)*(1-12*x)).

The programs for A025975, the canonical program `A025975.P6731233389770924861` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025975 has offset 0).

The definition of A025975 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025975.P6731233389770924861

`(4^(n+1)-2^(n+1))/2+19*a(n-1)-84*a(n-2)` with `a(0)=1, a(1)=25`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025975

/-- `(4^(n+1)-2^(n+1))/2+19*a(n-1)-84*a(n-2)` -/
def P6731233389770924861.Spec : Prop :=
  ∀ n, P6731233389770924861.a n = (A025975 n : ℚ)

end A025975

/-! ## A025975.P12205893047964161687

`A019628(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A025975.P12205893047964161687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019628 n + 2 * a (n - 1)

end

end A025975.P12205893047964161687

namespace A025975

/-- `A019628(n)+2*a(n-1)` -/
def P12205893047964161687.Spec : Prop :=
  ∀ n, P12205893047964161687.a n = A025975 n

end A025975

/-! ## A025975.P17074400817564056589

`A016315(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A025975.P17074400817564056589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016315 n + 4 * a (n - 1)

end

end A025975.P17074400817564056589

namespace A025975

/-- `A016315(n)+4*a(n-1)` -/
def P17074400817564056589.Spec : Prop :=
  ∀ n, P17074400817564056589.a n = A025975 n

end A025975

/-! ## A025975.P5883571212505178720

`a(n-1)+A016285(n)+11*a(n-1)` with `a(0)=1`
-/

namespace A025975.P5883571212505178720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016285 n + 11 * a (n - 1))

end

end A025975.P5883571212505178720

namespace A025975

/-- `a(n-1)+A016285(n)+11*a(n-1)` -/
def P5883571212505178720.Spec : Prop :=
  ∀ n, P5883571212505178720.a n = A025975 n

end A025975

/-! ## A025975.P2706275672324980258

`7*a(n-1)+∑[A016129(n)]*A000079(n)` with `a(0)=1`
-/

namespace A025975.P2706275672324980258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016129 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A025975.P2706275672324980258

namespace A025975

/-- `7*a(n-1)+∑[A016129(n)]*A000079(n)` -/
def P2706275672324980258.Spec : Prop :=
  ∀ n, P2706275672324980258.a n = A025975 n

end A025975

/-! ## A025975.P16813467941771993146

`A021254(n)+A021254(n)-A021104(n)`
-/

namespace A025975.P16813467941771993146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021254 n + (A021254 n - A021104 n)

end

end A025975.P16813467941771993146

namespace A025975

/-- `A021254(n)+A021254(n)-A021104(n)` -/
def P16813467941771993146.Spec : Prop :=
  ∀ n, P16813467941771993146.a n = A025975 n

end A025975

/-! ## A025975.P7032564187078373765

`2*A021254(n)-A021104(n)`
-/

namespace A025975.P7032564187078373765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021254 n - A021104 n

end

end A025975.P7032564187078373765

namespace A025975

/-- `2*A021254(n)-A021104(n)` -/
def P7032564187078373765.Spec : Prop :=
  ∀ n, P7032564187078373765.a n = A025975 n

end A025975

/-!
# A025976: Expansion of 1/((1-2*x)*(1-4*x)*(1-8*x)*(1-9*x)).

The programs for A025976, the canonical program `A025976.P13751861816127513646` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025976 has offset 0).

The definition of A025976 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025976.P13751861816127513646

`(4^(n+1)-2^(n+1))/2+17*a(n-1)-72*a(n-2)` with `a(0)=1, a(1)=23`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025976

/-- `(4^(n+1)-2^(n+1))/2+17*a(n-1)-72*a(n-2)` -/
def P13751861816127513646.Spec : Prop :=
  ∀ n, P13751861816127513646.a n = (A025976 n : ℚ)

end A025976

/-! ## A025976.P6340620133028228148

`A019664(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A025976.P6340620133028228148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019664 n + 2 * a (n - 1)

end

end A025976.P6340620133028228148

namespace A025976

/-- `A019664(n)+2*a(n-1)` -/
def P6340620133028228148.Spec : Prop :=
  ∀ n, P6340620133028228148.a n = A025976 n

end A025976

/-! ## A025976.P10585802200571748431

`2*A016316(n)-A016291(n)`
-/

namespace A025976.P10585802200571748431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016316 n - A016291 n

end

end A025976.P10585802200571748431

namespace A025976

/-- `2*A016316(n)-A016291(n)` -/
def P10585802200571748431.Spec : Prop :=
  ∀ n, P10585802200571748431.a n = A025976 n

end A025976

/-! ## A025976.P17197874464571531651

`2*A025972(n)-A025971(n)`
-/

namespace A025976.P17197874464571531651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025972 n - A025971 n

end

end A025976.P17197874464571531651

namespace A025976

/-- `2*A025972(n)-A025971(n)` -/
def P17197874464571531651.Spec : Prop :=
  ∀ n, P17197874464571531651.a n = A025976 n

end A025976

/-! ## A025976.P5655029237066444868

`A016291(n+1)-A016290(n+1)`
-/

namespace A025976.P5655029237066444868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016291 (n + 1) - A016290 (n + 1)

end

end A025976.P5655029237066444868

namespace A025976

/-- `A016291(n+1)-A016290(n+1)` -/
def P5655029237066444868.Spec : Prop :=
  ∀ n, P5655029237066444868.a n = A025976 n

end A025976

/-! ## A025976.P2846958174121820005

`2*A025977(n)-A025980(n)`
-/

namespace A025976.P2846958174121820005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025977 n - A025980 n

end

end A025976.P2846958174121820005

namespace A025976

/-- `2*A025977(n)-A025980(n)` -/
def P2846958174121820005.Spec : Prop :=
  ∀ n, P2846958174121820005.a n = A025976 n

end A025976

/-!
# A025977: Expansion of 1/((1-2x)(1-4x)(1-8x)(1-10x)).

The programs for A025977, the canonical program `A025977.P5474107670172781368` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025977 has offset 0).

The definition of A025977 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025977.P5474107670172781368

`(125*10^n-128*8^n+16*4^n-2^n)/12`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025977

/-- `(125*10^n-128*8^n+16*4^n-2^n)/12` -/
def P5474107670172781368.Spec : Prop :=
  ∀ n, P5474107670172781368.a n = (A025977 n : ℚ)

end A025977

/-! ## A025977.P1396972182871791537

`2^n*∑[C(2^(n+1), 2)+5*a(n-1)]` with `a(0)=1`
-/

namespace A025977.P1396972182871791537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose (2 ^ (n + 1)) 2 + 5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025977.P1396972182871791537

namespace A025977

/-- `2^n*∑[C(2^(n+1), 2)+5*a(n-1)]` -/
def P1396972182871791537.Spec : Prop :=
  ∀ n, (P1396972182871791537.a n : ℤ) = A025977 n

end A025977

/-! ## A025977.P14483867823610248858

`2^n*A021074(n)`
-/

namespace A025977.P14483867823610248858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A021074 n

end

end A025977.P14483867823610248858

namespace A025977

/-- `2^n*A021074(n)` -/
def P14483867823610248858.Spec : Prop :=
  ∀ n, P14483867823610248858.a n = A025977 n

end A025977

/-! ## A025977.P15831085324016848047

`2^n*∑[A016282(n)]`
-/

namespace A025977.P15831085324016848047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025977.P15831085324016848047

namespace A025977

/-- `2^n*∑[A016282(n)]` -/
def P15831085324016848047.Spec : Prop :=
  ∀ n, P15831085324016848047.a n = A025977 n

end A025977

/-! ## A025977.P5503453694693924242

`2^n*A304975(2*n+5)`
-/

namespace A025977.P5503453694693924242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A304975 (2 * n + 5)

end

end A025977.P5503453694693924242

namespace A025977

/-- `2^n*A304975(2*n+5)` -/
def P5503453694693924242.Spec : Prop :=
  ∀ n, P5503453694693924242.a n = A025977 n

end A025977

/-! ## A025977.P4546397036625661766

`2^n*∑[A019671(n)/2^n]`
-/

namespace A025977.P4546397036625661766
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019671 n : ℚ) / (2 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025977.P4546397036625661766

namespace A025977

/-- `2^n*∑[A019671(n)/2^n]` -/
def P4546397036625661766.Spec : Prop :=
  ∀ n, P4546397036625661766.a n = (A025977 n : ℚ)

end A025977

/-! ## A025977.P670674921886745711

`∑[A016282(n)]*A000079(n)`
-/

namespace A025977.P670674921886745711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A025977.P670674921886745711

namespace A025977

/-- `∑[A016282(n)]*A000079(n)` -/
def P670674921886745711.Spec : Prop :=
  ∀ n, P670674921886745711.a n = A025977 n

end A025977

/-! ## A025977.P16245625842870901502

`2^n*record[A304975(A026741(n))^(n%2)]`
-/

namespace A025977.P16245625842870901502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304975 (A026741 n).toNat ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025977.P16245625842870901502

namespace A025977

/-- `2^n*record[A304975(A026741(n))^(n%2)]` -/
def P16245625842870901502.Spec : Prop :=
  ∀ n, P16245625842870901502.a n = A025977 n

end A025977

/-!
# A025978: Expansion of 1/((1-2x)(1-4x)(1-8x)(1-11x)).

The programs for A025978, there is no canonical definition to state claims against.
-/

/-! ## A025978.P13408881196141603094

`A016318(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A025978.P13408881196141603094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016318 n + 4 * a (n - 1)

end

end A025978.P13408881196141603094

/-! ## A025978.P17192535413546713041

`a(n-1)+A019672(n)+a(n-1)` with `a(0)=1`
-/

namespace A025978.P17192535413546713041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A019672 n + a (n - 1))

end

end A025978.P17192535413546713041

/-! ## A025978.P8022371856516126085

`2*A025963(n)-A025960(n)`
-/

namespace A025978.P8022371856516126085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025963 n - A025960 n

end

end A025978.P8022371856516126085

/-! ## A025978.P13286265613021494164

`(A028122(n)+A025963(n))/2`
-/

namespace A025978.P13286265613021494164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028122 n + A025963 n : ℚ) / 2

end

end A025978.P13286265613021494164

/-! ## A025978.P17800120658898778313

`A025971(n)+A028007(n)-A025974(n)`
-/

namespace A025978.P17800120658898778313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025971 n + (A028007 n - A025974 n)

end

end A025978.P17800120658898778313

/-!
# A025979: Expansion of 1/((1-2*x)*(1-4*x)*(1-8*x)*(1-12*x)).

The programs for A025979, the canonical program `A025979.P11671755057854515840` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025979 has offset 0).

The definition of A025979 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025979.P11671755057854515840

`(4^(n+1)-2^(n+1))/2+20*a(n-1)-96*a(n-2)` with `a(0)=1, a(1)=26`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025979

/-- `(4^(n+1)-2^(n+1))/2+20*a(n-1)-96*a(n-2)` -/
def P11671755057854515840.Spec : Prop :=
  ∀ n, P11671755057854515840.a n = (A025979 n : ℚ)

end A025979

/-! ## A025979.P13078216585912191530

`2^n*A021076(n)`
-/

namespace A025979.P13078216585912191530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A021076 n

end

end A025979.P13078216585912191530

namespace A025979

/-- `2^n*A021076(n)` -/
def P13078216585912191530.Spec : Prop :=
  ∀ n, P13078216585912191530.a n = A025979 n

end A025979

/-! ## A025979.P5153711684758288760

`a(n-1)+A019677(n)+a(n-1)` with `a(0)=1`
-/

namespace A025979.P5153711684758288760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A019677 n + a (n - 1))

end

end A025979.P5153711684758288760

namespace A025979

/-- `a(n-1)+A019677(n)+a(n-1)` -/
def P5153711684758288760.Spec : Prop :=
  ∀ n, P5153711684758288760.a n = A025979 n

end A025979

/-! ## A025979.P1066045521467202127

`record[A077957(n)*A274869(n+5)]`
-/

namespace A025979.P1066045521467202127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n * A274869 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025979.P1066045521467202127

namespace A025979

/-- `record[A077957(n)*A274869(n+5)]` -/
def P1066045521467202127.Spec : Prop :=
  ∀ n, P1066045521467202127.a n = A025979 n

end A025979

/-! ## A025979.P5972958659844175598

`record[lcm(A077966(n), A274869(n+5))]`
-/

namespace A025979.P5972958659844175598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A077966 n) (A274869 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025979.P5972958659844175598

namespace A025979

/-- `record[lcm(A077966(n), A274869(n+5))]` -/
def P5972958659844175598.Spec : Prop :=
  ∀ n, (P5972958659844175598.a n : ℤ) = A025979 n

end A025979

/-! ## A025979.P18314488763785256238

`A000079(n)*A274869(2*n+5)`
-/

namespace A025979.P18314488763785256238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A274869 (2 * n + 5)

end

end A025979.P18314488763785256238

namespace A025979

/-- `A000079(n)*A274869(2*n+5)` -/
def P18314488763785256238.Spec : Prop :=
  ∀ n, P18314488763785256238.a n = A025979 n

end A025979

/-! ## A025979.P15124212789350260997

`A077957(2*n)*A274869(2*n+5)`
-/

namespace A025979.P15124212789350260997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (2 * n) * A274869 (2 * n + 5)

end

end A025979.P15124212789350260997

namespace A025979

/-- `A077957(2*n)*A274869(2*n+5)` -/
def P15124212789350260997.Spec : Prop :=
  ∀ n, P15124212789350260997.a n = A025979 n

end A025979

/-! ## A025979.P7288918177614142580

`lcm(A077966(2*n), A274869(2*n+5))`
-/

namespace A025979.P7288918177614142580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A077966 (2 * n)) (A274869 (2 * n + 5))

end

end A025979.P7288918177614142580

namespace A025979

/-- `lcm(A077966(2*n), A274869(2*n+5))` -/
def P7288918177614142580.Spec : Prop :=
  ∀ n, (P7288918177614142580.a n : ℤ) = A025979 n

end A025979

/-! ## A025979.P14451170230845843630

`∑[A075497(A167614(n+1))]*A000079(n)`
-/

namespace A025979.P14451170230845843630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075497 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A025979.P14451170230845843630

namespace A025979

/-- `∑[A075497(A167614(n+1))]*A000079(n)` -/
def P14451170230845843630.Spec : Prop :=
  ∀ n, P14451170230845843630.a n = A025979 n

end A025979

/-!
# A025980: Expansion of 1/((1-2*x)*(1-4*x)*(1-9*x)*(1-10*x)).

The programs for A025980, the canonical program `A025980.P2830819005283627864` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025980 has offset 0).

The definition of A025980 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025980.P2830819005283627864

`(4^(n+1)-2^(n+1))/2+19*a(n-1)-90*a(n-2)` with `a(0)=1, a(1)=25`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025980

/-- `(4^(n+1)-2^(n+1))/2+19*a(n-1)-90*a(n-2)` -/
def P2830819005283627864.Spec : Prop :=
  ∀ n, P2830819005283627864.a n = (A025980 n : ℚ)

end A025980

/-! ## A025980.P7942874378914427152

`A019682(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A025980.P7942874378914427152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019682 n + 2 * a (n - 1)

end

end A025980.P7942874378914427152

namespace A025980

/-- `A019682(n)+2*a(n-1)` -/
def P7942874378914427152.Spec : Prop :=
  ∀ n, P7942874378914427152.a n = A025980 n

end A025980

/-! ## A025980.P4485639342840148957

`Δ[A021092(n)-A021084(n)]`
-/

namespace A025980.P4485639342840148957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021092 n - A021084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025980.P4485639342840148957

namespace A025980

/-- `Δ[A021092(n)-A021084(n)]` -/
def P4485639342840148957.Spec : Prop :=
  ∀ n, P4485639342840148957.a n = A025980 n

end A025980

/-! ## A025980.P14325351104067244943

`2*A025977(n)-A025976(n)`
-/

namespace A025980.P14325351104067244943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025977 n - A025976 n

end

end A025980.P14325351104067244943

namespace A025980

/-- `2*A025977(n)-A025976(n)` -/
def P14325351104067244943.Spec : Prop :=
  ∀ n, P14325351104067244943.a n = A025980 n

end A025980

/-! ## A025980.P17358141939795378232

`A016292(n+1)-A016291(n+1)`
-/

namespace A025980.P17358141939795378232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016292 (n + 1) - A016291 (n + 1)

end

end A025980.P17358141939795378232

namespace A025980

/-- `A016292(n+1)-A016291(n+1)` -/
def P17358141939795378232.Spec : Prop :=
  ∀ n, P17358141939795378232.a n = A025980 n

end A025980

/-! ## A025980.P13960034827248378113

`2*A025981(n)-A025983(n)`
-/

namespace A025980.P13960034827248378113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025981 n - A025983 n

end

end A025980.P13960034827248378113

namespace A025980

/-- `2*A025981(n)-A025983(n)` -/
def P13960034827248378113.Spec : Prop :=
  ∀ n, P13960034827248378113.a n = A025980 n

end A025980

/-!
# A025981: Expansion of 1/((1-2*x)*(1-4*x)*(1-9*x)*(1-11*x)).

The programs for A025981, the canonical program `A025981.P14074309263148290612` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025981 has offset 0).

The definition of A025981 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025981.P14074309263148290612

`(4^(n+1)-2^(n+1))/2+20*a(n-1)-99*a(n-2)` with `a(0)=1, a(1)=26`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025981

/-- `(4^(n+1)-2^(n+1))/2+20*a(n-1)-99*a(n-2)` -/
def P14074309263148290612.Spec : Prop :=
  ∀ n, P14074309263148290612.a n = (A025981 n : ℚ)

end A025981

/-! ## A025981.P5729237084914164731

`A019687(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A025981.P5729237084914164731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019687 n + 2 * a (n - 1)

end

end A025981.P5729237084914164731

namespace A025981

/-- `A019687(n)+2*a(n-1)` -/
def P5729237084914164731.Spec : Prop :=
  ∀ n, P5729237084914164731.a n = A025981 n

end A025981

/-! ## A025981.P12254187692033581393

`2*A025974(n)-A025972(n)`
-/

namespace A025981.P12254187692033581393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025974 n - A025972 n

end

end A025981.P12254187692033581393

namespace A025981

/-- `2*A025974(n)-A025972(n)` -/
def P12254187692033581393.Spec : Prop :=
  ∀ n, P12254187692033581393.a n = A025981 n

end A025981

/-! ## A025981.P2690739479647309834

`A025946(n)+A028041(n)-A025972(n)`
-/

namespace A025981.P2690739479647309834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025946 n + (A028041 n - A025972 n)

end

end A025981.P2690739479647309834

namespace A025981

/-- `A025946(n)+A028041(n)-A025972(n)` -/
def P2690739479647309834.Spec : Prop :=
  ∀ n, P2690739479647309834.a n = A025981 n

end A025981

/-! ## A025981.P17795325448828221172

`2*A025974(n)-(2*A021229(n)-A021084(n))`
-/

namespace A025981.P17795325448828221172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025974 n - (2 * A021229 n - A021084 n)

end

end A025981.P17795325448828221172

namespace A025981

/-- `2*A025974(n)-(2*A021229(n)-A021084(n))` -/
def P17795325448828221172.Spec : Prop :=
  ∀ n, P17795325448828221172.a n = A025981 n

end A025981

/-! ## A025981.P9216311167619904822

`(A025983(n)+A025980(n))/2`
-/

namespace A025981.P9216311167619904822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025983 n + A025980 n : ℚ) / 2

end

end A025981.P9216311167619904822

namespace A025981

/-- `(A025983(n)+A025980(n))/2` -/
def P9216311167619904822.Spec : Prop :=
  ∀ n, P9216311167619904822.a n = (A025981 n : ℚ)

end A025981

/-!
# A025982: Expansion of 1/((1-2*x)*(1-4*x)*(1-9*x)*(1-12*x)).

The programs for A025982, the canonical program `A025982.P11444580989345645010` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025982 has offset 0).

The definition of A025982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025982.P11444580989345645010

`(4^(n+1)-2^(n+1))/2+21*a(n-1)-108*a(n-2)` with `a(0)=1, a(1)=27`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025982

/-- `(4^(n+1)-2^(n+1))/2+21*a(n-1)-108*a(n-2)` -/
def P11444580989345645010.Spec : Prop :=
  ∀ n, P11444580989345645010.a n = (A025982 n : ℚ)

end A025982

/-! ## A025982.P10586482904283012489

`A019722(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A025982.P10586482904283012489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019722 n + 2 * a (n - 1)

end

end A025982.P10586482904283012489

namespace A025982

/-- `A019722(n)+2*a(n-1)` -/
def P10586482904283012489.Spec : Prop :=
  ∀ n, P10586482904283012489.a n = A025982 n

end A025982

/-! ## A025982.P5349097632207984227

`4*a(n-1)+A016324(n)` with `a(0)=1`
-/

namespace A025982.P5349097632207984227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + A016324 n

end

end A025982.P5349097632207984227

namespace A025982

/-- `4*a(n-1)+A016324(n)` -/
def P5349097632207984227.Spec : Prop :=
  ∀ n, P5349097632207984227.a n = A025982 n

end A025982

/-! ## A025982.P6239893584882454189

`2*A025970(n)-A025967(n)`
-/

namespace A025982.P6239893584882454189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025970 n - A025967 n

end

end A025982.P6239893584882454189

namespace A025982

/-- `2*A025970(n)-A025967(n)` -/
def P6239893584882454189.Spec : Prop :=
  ∀ n, P6239893584882454189.a n = A025982 n

end A025982

/-! ## A025982.P12764284556110680605

`A021104(n)+A021304(n)-A021084(n)`
-/

namespace A025982.P12764284556110680605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021104 n + (A021304 n - A021084 n)

end

end A025982.P12764284556110680605

namespace A025982

/-- `A021104(n)+A021304(n)-A021084(n)` -/
def P12764284556110680605.Spec : Prop :=
  ∀ n, P12764284556110680605.a n = A025982 n

end A025982

/-!
# A025983: Expansion of 1/((1-2*x)*(1-4*x)*(1-10*x)*(1-11*x)).

The programs for A025983, the canonical program `A025983.P6642206428376713893` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025983 has offset 0).

The definition of A025983 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025983.P6642206428376713893

`(4^(n+1)-2^(n+1))/2+21*a(n-1)-110*a(n-2)` with `a(0)=1, a(1)=27`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025983

/-- `(4^(n+1)-2^(n+1))/2+21*a(n-1)-110*a(n-2)` -/
def P6642206428376713893.Spec : Prop :=
  ∀ n, P6642206428376713893.a n = (A025983 n : ℚ)

end A025983

/-! ## A025983.P16525386172861264062

`2^n*∑[2^n*∑[(5/2)^n]]+11*a(n-1)` with `a(0)=1`
-/

namespace A025983.P16525386172861264062
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 : ℚ) / 2) ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) + 11 * a (n - 1)

end

end A025983.P16525386172861264062

namespace A025983

/-- `2^n*∑[2^n*∑[(5/2)^n]]+11*a(n-1)` -/
def P16525386172861264062.Spec : Prop :=
  ∀ n, P16525386172861264062.a n = (A025983 n : ℚ)

end A025983

/-! ## A025983.P2517160289856612231

`Δ[A021094(n)-A021092(n)]`
-/

namespace A025983.P2517160289856612231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021094 n - A021092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025983.P2517160289856612231

namespace A025983

/-- `Δ[A021094(n)-A021092(n)]` -/
def P2517160289856612231.Spec : Prop :=
  ∀ n, P2517160289856612231.a n = A025983 n

end A025983

/-! ## A025983.P3699381536123193741

`2*A025981(n)-A025980(n)`
-/

namespace A025983.P3699381536123193741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025981 n - A025980 n

end

end A025983.P3699381536123193741

namespace A025983

/-- `2*A025981(n)-A025980(n)` -/
def P3699381536123193741.Spec : Prop :=
  ∀ n, P3699381536123193741.a n = A025983 n

end A025983

/-! ## A025983.P14160342382233564489

`Δ[∑[A016293(n)]-A021092(n)]`
-/

namespace A025983.P14160342382233564489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016293 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A021092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025983.P14160342382233564489

namespace A025983

/-- `Δ[∑[A016293(n)]-A021092(n)]` -/
def P14160342382233564489.Spec : Prop :=
  ∀ n, P14160342382233564489.a n = A025983 n

end A025983

/-! ## A025983.P17874610504819178289

`A016293(n+1)-Δ[A021092(n)]`
-/

namespace A025983.P17874610504819178289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016293 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025983.P17874610504819178289

namespace A025983

/-- `A016293(n+1)-Δ[A021092(n)]` -/
def P17874610504819178289.Spec : Prop :=
  ∀ n, P17874610504819178289.a n = A025983 n

end A025983

/-! ## A025983.P7096030312074815565

`A016293(n+1)-A016292(n+1)`
-/

namespace A025983.P7096030312074815565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016293 (n + 1) - A016292 (n + 1)

end

end A025983.P7096030312074815565

namespace A025983

/-- `A016293(n+1)-A016292(n+1)` -/
def P7096030312074815565.Spec : Prop :=
  ∀ n, P7096030312074815565.a n = A025983 n

end A025983

/-!
# A025984: Expansion of 1/((1-2*x)*(1-4*x)*(1-10*x)*(1-12*x)).

The programs for A025984, the canonical program `A025984.P11144361347994645314` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025984 has offset 0).

The definition of A025984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025984.P11144361347994645314

`(4^(n+1)-2^(n+1))/2+22*a(n-1)-120*a(n-2)` with `a(0)=1, a(1)=28`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025984

/-- `(4^(n+1)-2^(n+1))/2+22*a(n-1)-120*a(n-2)` -/
def P11144361347994645314.Spec : Prop :=
  ∀ n, P11144361347994645314.a n = (A025984 n : ℚ)

end A025984

/-! ## A025984.P11300949996407573217

`2^n*A021114(n)`
-/

namespace A025984.P11300949996407573217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A021114 n

end

end A025984.P11300949996407573217

namespace A025984

/-- `2^n*A021114(n)` -/
def P11300949996407573217.Spec : Prop :=
  ∀ n, P11300949996407573217.a n = A025984 n

end A025984

/-! ## A025984.P8318958258127969281

`2^n*∑[A016295(n)]`
-/

namespace A025984.P8318958258127969281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025984.P8318958258127969281

namespace A025984

/-- `2^n*∑[A016295(n)]` -/
def P8318958258127969281.Spec : Prop :=
  ∀ n, P8318958258127969281.a n = A025984 n

end A025984

/-! ## A025984.P16019523971966670954

`a(n-1)+A019747(n)+a(n-1)` with `a(0)=1`
-/

namespace A025984.P16019523971966670954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A019747 n + a (n - 1))

end

end A025984.P16019523971966670954

namespace A025984

/-- `a(n-1)+A019747(n)+a(n-1)` -/
def P16019523971966670954.Spec : Prop :=
  ∀ n, P16019523971966670954.a n = A025984 n

end A025984

/-! ## A025984.P12663010665437931275

`∑[A016295(n)]*A000079(n)`
-/

namespace A025984.P12663010665437931275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A025984.P12663010665437931275

namespace A025984

/-- `∑[A016295(n)]*A000079(n)` -/
def P12663010665437931275.Spec : Prop :=
  ∀ n, P12663010665437931275.a n = A025984 n

end A025984

/-! ## A025984.P15286579356605933336

`(A025985(n)+A025983(n))/2`
-/

namespace A025984.P15286579356605933336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025985 n + A025983 n : ℚ) / 2

end

end A025984.P15286579356605933336

namespace A025984

/-- `(A025985(n)+A025983(n))/2` -/
def P15286579356605933336.Spec : Prop :=
  ∀ n, P15286579356605933336.a n = (A025984 n : ℚ)

end A025984

/-! ## A025984.P4414130877164982690

`∑[A016295(n)]*A117303(2*n+1)`
-/

namespace A025984.P4414130877164982690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A117303 (2 * n + 1)

end

end A025984.P4414130877164982690

namespace A025984

/-- `∑[A016295(n)]*A117303(2*n+1)` -/
def P4414130877164982690.Spec : Prop :=
  ∀ n, P4414130877164982690.a n = A025984 n

end A025984

/-! ## A025984.P4806007132446095117

`2^n*∑[A019747(n)/A000079(n)]`
-/

namespace A025984.P4806007132446095117
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019747 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025984.P4806007132446095117

namespace A025984

/-- `2^n*∑[A019747(n)/A000079(n)]` -/
def P4806007132446095117.Spec : Prop :=
  ∀ n, P4806007132446095117.a n = (A025984 n : ℚ)

end A025984

/-! ## A025984.P7218978302060356646

`∑[A019747(n)/A000079(n)]*A000079(n)`
-/

namespace A025984.P7218978302060356646
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019747 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A025984.P7218978302060356646

namespace A025984

/-- `∑[A019747(n)/A000079(n)]*A000079(n)` -/
def P7218978302060356646.Spec : Prop :=
  ∀ n, P7218978302060356646.a n = (A025984 n : ℚ)

end A025984

/-!
# A025985: Expansion of 1/((1-2*x)*(1-4*x)*(1-11*x)*(1-12*x)).

The programs for A025985, the canonical program `A025985.P628499439506094218` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025985 has offset 0).

The definition of A025985 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025985.P628499439506094218

`(4^(n+1)-2^(n+1))/2+23*a(n-1)-132*a(n-2)` with `a(0)=1, a(1)=29`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025985

/-- `(4^(n+1)-2^(n+1))/2+23*a(n-1)-132*a(n-2)` -/
def P628499439506094218.Spec : Prop :=
  ∀ n, P628499439506094218.a n = (A025985 n : ℚ)

end A025985

/-! ## A025985.P8783267123995642192

`A019752(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A025985.P8783267123995642192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019752 n + 2 * a (n - 1)

end

end A025985.P8783267123995642192

namespace A025985

/-- `A019752(n)+2*a(n-1)` -/
def P8783267123995642192.Spec : Prop :=
  ∀ n, P8783267123995642192.a n = A025985 n

end A025985

/-! ## A025985.P17994526511652136520

`a(n-1)+A016633(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A025985.P17994526511652136520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016633 n + 3 * a (n - 1))

end

end A025985.P17994526511652136520

namespace A025985

/-- `a(n-1)+A016633(n)+3*a(n-1)` -/
def P17994526511652136520.Spec : Prop :=
  ∀ n, P17994526511652136520.a n = A025985 n

end A025985

/-! ## A025985.P13646001822854526048

`Δ[A021104(n)-A021094(n)]`
-/

namespace A025985.P13646001822854526048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021104 n - A021094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025985.P13646001822854526048

namespace A025985

/-- `Δ[A021104(n)-A021094(n)]` -/
def P13646001822854526048.Spec : Prop :=
  ∀ n, P13646001822854526048.a n = A025985 n

end A025985

/-! ## A025985.P8883929696820576926

`2*A025984(n)-A025983(n)`
-/

namespace A025985.P8883929696820576926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025984 n - A025983 n

end

end A025985.P8883929696820576926

namespace A025985

/-- `2*A025984(n)-A025983(n)` -/
def P8883929696820576926.Spec : Prop :=
  ∀ n, P8883929696820576926.a n = A025985 n

end A025985

/-! ## A025985.P10137831761291387724

`A016294(n+1)-A016293(n+1)`
-/

namespace A025985.P10137831761291387724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016294 (n + 1) - A016293 (n + 1)

end

end A025985.P10137831761291387724

namespace A025985

/-- `A016294(n+1)-A016293(n+1)` -/
def P10137831761291387724.Spec : Prop :=
  ∀ n, P10137831761291387724.a n = A025985 n

end A025985

/-!
# A025986: Expansion of 1/((1-2*x)*(1-5*x)*(1-6*x)*(1-7*x)).

The programs for A025986, the canonical program `A025986.P4181438989118383994` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025986 has offset 0).

The definition of A025986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025986.P4181438989118383994

`(5^(n+1)-2^(n+1))/3+13*a(n-1)-42*a(n-2)` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025986

/-- `(5^(n+1)-2^(n+1))/3+13*a(n-1)-42*a(n-2)` -/
def P4181438989118383994.Spec : Prop :=
  ∀ n, P4181438989118383994.a n = (A025986 n : ℚ)

end A025986

/-! ## A025986.P13109448136522954698

`a(n-1)+A019757(n)+a(n-1)` with `a(0)=1`
-/

namespace A025986.P13109448136522954698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A019757 n + a (n - 1))

end

end A025986.P13109448136522954698

namespace A025986

/-- `a(n-1)+A019757(n)+a(n-1)` -/
def P13109448136522954698.Spec : Prop :=
  ∀ n, P13109448136522954698.a n = A025986 n

end A025986

/-! ## A025986.P2121021454963752500

`Δ[A021124(n)-A021114(n)]`
-/

namespace A025986.P2121021454963752500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021124 n - A021114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025986.P2121021454963752500

namespace A025986

/-- `Δ[A021124(n)-A021114(n)]` -/
def P2121021454963752500.Spec : Prop :=
  ∀ n, P2121021454963752500.a n = A025986 n

end A025986

/-! ## A025986.P5602046038425049322

`Δ[A021174(n)-A021124(n)]`
-/

namespace A025986.P5602046038425049322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021174 n - A021124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025986.P5602046038425049322

namespace A025986

/-- `Δ[A021174(n)-A021124(n)]` -/
def P5602046038425049322.Spec : Prop :=
  ∀ n, P5602046038425049322.a n = A025986 n

end A025986

/-! ## A025986.P13440148967359947398

`2*A025937(n)-A025930(n)`
-/

namespace A025986.P13440148967359947398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025937 n - A025930 n

end

end A025986.P13440148967359947398

namespace A025986

/-- `2*A025937(n)-A025930(n)` -/
def P13440148967359947398.Spec : Prop :=
  ∀ n, P13440148967359947398.a n = A025986 n

end A025986

/-! ## A025986.P12018816725775124926

`2*A025965(n)-A025959(n)`
-/

namespace A025986.P12018816725775124926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025965 n - A025959 n

end

end A025986.P12018816725775124926

namespace A025986

/-- `2*A025965(n)-A025959(n)` -/
def P12018816725775124926.Spec : Prop :=
  ∀ n, P12018816725775124926.a n = A025986 n

end A025986

/-! ## A025986.P12137610145497352463

`A016304(n+1)-A016296(n+1)`
-/

namespace A025986.P12137610145497352463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016304 (n + 1) - A016296 (n + 1)

end

end A025986.P12137610145497352463

namespace A025986

/-- `A016304(n+1)-A016296(n+1)` -/
def P12137610145497352463.Spec : Prop :=
  ∀ n, P12137610145497352463.a n = A025986 n

end A025986

/-! ## A025986.P14053461642417947141

`(A016304(n+1)-A016295(n+1))/2`
-/

namespace A025986.P14053461642417947141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016304 (n + 1) - A016295 (n + 1) : ℚ) / 2

end

end A025986.P14053461642417947141

namespace A025986

/-- `(A016304(n+1)-A016295(n+1))/2` -/
def P14053461642417947141.Spec : Prop :=
  ∀ n, P14053461642417947141.a n = (A025986 n : ℚ)

end A025986

/-! ## A025986.P6302109232495318244

`2*A025987(n)-A025992(n)`
-/

namespace A025986.P6302109232495318244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025987 n - A025992 n

end

end A025986.P6302109232495318244

namespace A025986

/-- `2*A025987(n)-A025992(n)` -/
def P6302109232495318244.Spec : Prop :=
  ∀ n, P6302109232495318244.a n = A025986 n

end A025986

/-!
# A025987: Expansion of 1/((1-2*x)*(1-5*x)*(1-6*x)*(1-8*x)).

The programs for A025987, the canonical program `A025987.P15186525142375050096` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025987 has offset 0).

The definition of A025987 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025987.P15186525142375050096

`(5^(n+1)-2^(n+1))/3+14*a(n-1)-48*a(n-2)` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025987

/-- `(5^(n+1)-2^(n+1))/3+14*a(n-1)-48*a(n-2)` -/
def P15186525142375050096.Spec : Prop :=
  ∀ n, P15186525142375050096.a n = (A025987 n : ℚ)

end A025987

/-! ## A025987.P17981104913581012394

`(2*8^(n+3)-9*6^(n+3)+8*5^(n+3)-2^(n+3))/72`
-/

namespace A025987.P17981104913581012394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 8 ^ (n + 3) : ℤ) - (9 * 6 ^ (n + 3) : ℤ) + (8 * 5 ^ (n + 3) : ℤ) - (2 ^ (n + 3) : ℤ) : ℚ) / 72

end

end A025987.P17981104913581012394

namespace A025987

/-- `(2*8^(n+3)-9*6^(n+3)+8*5^(n+3)-2^(n+3))/72` -/
def P17981104913581012394.Spec : Prop :=
  ∀ n, P17981104913581012394.a n = (A025987 n : ℚ)

end A025987

/-! ## A025987.P5832374017304196704

`a(n-1)+A019783(n)+a(n-1)` with `a(0)=1`
-/

namespace A025987.P5832374017304196704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A019783 n + a (n - 1))

end

end A025987.P5832374017304196704

namespace A025987

/-- `a(n-1)+A019783(n)+a(n-1)` -/
def P5832374017304196704.Spec : Prop :=
  ∀ n, P5832374017304196704.a n = A025987 n

end A025987

/-! ## A025987.P3429732608384191083

`2*A025966(n)-A025960(n)`
-/

namespace A025987.P3429732608384191083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025966 n - A025960 n

end

end A025987.P3429732608384191083

namespace A025987

/-- `2*A025966(n)-A025960(n)` -/
def P3429732608384191083.Spec : Prop :=
  ∀ n, P3429732608384191083.a n = A025987 n

end A025987

/-! ## A025987.P10894521209735499585

`A025932(n)+A025938(n)-A025930(n)`
-/

namespace A025987.P10894521209735499585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025932 n + (A025938 n - A025930 n)

end

end A025987.P10894521209735499585

namespace A025987

/-- `A025932(n)+A025938(n)-A025930(n)` -/
def P10894521209735499585.Spec : Prop :=
  ∀ n, P10894521209735499585.a n = A025987 n

end A025987

/-! ## A025987.P9772945294015741447

`A025965(n)+A025971(n)-A025960(n)`
-/

namespace A025987.P9772945294015741447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025965 n + (A025971 n - A025960 n)

end

end A025987.P9772945294015741447

namespace A025987

/-- `A025965(n)+A025971(n)-A025960(n)` -/
def P9772945294015741447.Spec : Prop :=
  ∀ n, P9772945294015741447.a n = A025987 n

end A025987

/-! ## A025987.P17524881038089719394

`Δ[A021184(n)-A021129(n)]`
-/

namespace A025987.P17524881038089719394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021184 n - A021129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025987.P17524881038089719394

namespace A025987

/-- `Δ[A021184(n)-A021129(n)]` -/
def P17524881038089719394.Spec : Prop :=
  ∀ n, P17524881038089719394.a n = A025987 n

end A025987

/-! ## A025987.P15723132851726884104

`2*A025989(n)-A025998(n)`
-/

namespace A025987.P15723132851726884104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025989 n - A025998 n

end

end A025987.P15723132851726884104

namespace A025987

/-- `2*A025989(n)-A025998(n)` -/
def P15723132851726884104.Spec : Prop :=
  ∀ n, P15723132851726884104.a n = A025987 n

end A025987

/-!
# A025988: Expansion of 1/((1-2*x)*(1-5*x)*(1-6*x)*(1-9*x)).

The programs for A025988, the canonical program `A025988.P12728075600538791125` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025988 has offset 0).

The definition of A025988 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025988.P12728075600538791125

`(5^(n+1)-2^(n+1))/3+15*a(n-1)-54*a(n-2)` with `a(0)=1, a(1)=22`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025988

/-- `(5^(n+1)-2^(n+1))/3+15*a(n-1)-54*a(n-2)` -/
def P12728075600538791125.Spec : Prop :=
  ∀ n, P12728075600538791125.a n = (A025988 n : ℚ)

end A025988

/-! ## A025988.P15497746792124040212

`a(n-1)+A019793(n)+a(n-1)` with `a(0)=1`
-/

namespace A025988.P15497746792124040212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A019793 n + a (n - 1))

end

end A025988.P15497746792124040212

namespace A025988

/-- `a(n-1)+A019793(n)+a(n-1)` -/
def P15497746792124040212.Spec : Prop :=
  ∀ n, P15497746792124040212.a n = A025988 n

end A025988

/-! ## A025988.P9235316641062369785

`Δ[A021194(n)-A021134(n)]`
-/

namespace A025988.P9235316641062369785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021194 n - A021134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025988.P9235316641062369785

namespace A025988

/-- `Δ[A021194(n)-A021134(n)]` -/
def P9235316641062369785.Spec : Prop :=
  ∀ n, P9235316641062369785.a n = A025988 n

end A025988

/-! ## A025988.P8619000329179811499

`2*A025933(n)-A025930(n)`
-/

namespace A025988.P8619000329179811499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025933 n - A025930 n

end

end A025988.P8619000329179811499

namespace A025988

/-- `2*A025933(n)-A025930(n)` -/
def P8619000329179811499.Spec : Prop :=
  ∀ n, P8619000329179811499.a n = A025988 n

end A025988

/-! ## A025988.P16249119763731759120

`A016306(n+1)-A016298(n+1)`
-/

namespace A025988.P16249119763731759120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016306 (n + 1) - A016298 (n + 1)

end

end A025988.P16249119763731759120

namespace A025988

/-- `A016306(n+1)-A016298(n+1)` -/
def P16249119763731759120.Spec : Prop :=
  ∀ n, P16249119763731759120.a n = A025988 n

end A025988

/-! ## A025988.P4491842002783921401

`A025931(n)+A025944(n)-A025930(n)`
-/

namespace A025988.P4491842002783921401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025931 n + (A025944 n - A025930 n)

end

end A025988.P4491842002783921401

namespace A025988

/-- `A025931(n)+A025944(n)-A025930(n)` -/
def P4491842002783921401.Spec : Prop :=
  ∀ n, P4491842002783921401.a n = A025988 n

end A025988

/-! ## A025988.P1986844571252178211

`A025937(n)+A025944(n)-A025931(n)`
-/

namespace A025988.P1986844571252178211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025937 n + (A025944 n - A025931 n)

end

end A025988.P1986844571252178211

namespace A025988

/-- `A025937(n)+A025944(n)-A025931(n)` -/
def P1986844571252178211.Spec : Prop :=
  ∀ n, P1986844571252178211.a n = A025988 n

end A025988

/-! ## A025988.P8269065995042823040

`A025937(n)+A025993(n)-A025933(n)`
-/

namespace A025988.P8269065995042823040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025937 n + (A025993 n - A025933 n)

end

end A025988.P8269065995042823040

namespace A025988

/-- `A025937(n)+A025993(n)-A025933(n)` -/
def P8269065995042823040.Spec : Prop :=
  ∀ n, P8269065995042823040.a n = A025988 n

end A025988

/-!
# A025989: Expansion of 1/((1-2*x)*(1-5*x)*(1-6*x)*(1-10*x)).

The programs for A025989, the canonical program `A025989.P11266495294056891567` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025989 has offset 0).

The definition of A025989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025989.P11266495294056891567

`(5^(n+1)-2^(n+1))/3+16*a(n-1)-60*a(n-2)` with `a(0)=1, a(1)=23`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025989

/-- `(5^(n+1)-2^(n+1))/3+16*a(n-1)-60*a(n-2)` -/
def P11266495294056891567.Spec : Prop :=
  ∀ n, P11266495294056891567.a n = (A025989 n : ℚ)

end A025989

/-! ## A025989.P16865678704893791682

`A019839(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A025989.P16865678704893791682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019839 n + 2 * a (n - 1)

end

end A025989.P16865678704893791682

namespace A025989

/-- `A019839(n)+2*a(n-1)` -/
def P16865678704893791682.Spec : Prop :=
  ∀ n, P16865678704893791682.a n = A025989 n

end A025989

/-! ## A025989.P6329149812792590406

`2*A016307(n)-A016295(n)`
-/

namespace A025989.P6329149812792590406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016307 n - A016295 n

end

end A025989.P6329149812792590406

namespace A025989

/-- `2*A016307(n)-A016295(n)` -/
def P6329149812792590406.Spec : Prop :=
  ∀ n, P6329149812792590406.a n = A025989 n

end A025989

/-! ## A025989.P16199518805364362321

`A025968(n)+A025968(n)-A025962(n)`
-/

namespace A025989.P16199518805364362321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025968 n + (A025968 n - A025962 n)

end

end A025989.P16199518805364362321

namespace A025989

/-- `A025968(n)+A025968(n)-A025962(n)` -/
def P16199518805364362321.Spec : Prop :=
  ∀ n, P16199518805364362321.a n = A025989 n

end A025989

/-! ## A025989.P10626452098168389765

`∑[A016299(n)/A000400(n)]*A000400(n)`
-/

namespace A025989.P10626452098168389765
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016299 n : ℚ) / (A000400 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000400 n : ℚ)

end

end A025989.P10626452098168389765

namespace A025989

/-- `∑[A016299(n)/A000400(n)]*A000400(n)` -/
def P10626452098168389765.Spec : Prop :=
  ∀ n, P10626452098168389765.a n = (A025989 n : ℚ)

end A025989

/-! ## A025989.P6803767792610756657

`Δ[A021202(n)-A021144(n)]`
-/

namespace A025989.P6803767792610756657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021202 n - A021144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025989.P6803767792610756657

namespace A025989

/-- `Δ[A021202(n)-A021144(n)]` -/
def P6803767792610756657.Spec : Prop :=
  ∀ n, P6803767792610756657.a n = A025989 n

end A025989

/-! ## A025989.P11197434299841231742

`2*A025968(n)-A025962(n)`
-/

namespace A025989.P11197434299841231742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025968 n - A025962 n

end

end A025989.P11197434299841231742

namespace A025989

/-- `2*A025968(n)-A025962(n)` -/
def P11197434299841231742.Spec : Prop :=
  ∀ n, P11197434299841231742.a n = A025989 n

end A025989

/-! ## A025989.P8576065748871508817

`(A025998(n)+A025987(n))/2`
-/

namespace A025989.P8576065748871508817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025998 n + A025987 n : ℚ) / 2

end

end A025989.P8576065748871508817

namespace A025989

/-- `(A025998(n)+A025987(n))/2` -/
def P8576065748871508817.Spec : Prop :=
  ∀ n, P8576065748871508817.a n = (A025989 n : ℚ)

end A025989

/-! ## A025989.P9873958878144101217

`2*A025994(n)-A026391(n)`
-/

namespace A025989.P9873958878144101217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025994 n - A026391 n

end

end A025989.P9873958878144101217

namespace A025989

/-- `2*A025994(n)-A026391(n)` -/
def P9873958878144101217.Spec : Prop :=
  ∀ n, P9873958878144101217.a n = A025989 n

end A025989

/-! ## A025989.P1777883052349320962

`A025966(n)+A025977(n)-A025962(n)`
-/

namespace A025989.P1777883052349320962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025966 n + (A025977 n - A025962 n)

end

end A025989.P1777883052349320962

namespace A025989

/-- `A025966(n)+A025977(n)-A025962(n)` -/
def P1777883052349320962.Spec : Prop :=
  ∀ n, P1777883052349320962.a n = A025989 n

end A025989

/-!
# A025990: Expansion of 1/((1-2x)(1-5x)(1-6x)(1-11x)).

The programs for A025990, there is no canonical definition to state claims against.
-/

/-! ## A025990.P16151963390676815452

`a(n-1)+A019854(n)+a(n-1)` with `a(0)=1`
-/

namespace A025990.P16151963390676815452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A019854 n + a (n - 1))

end

end A025990.P16151963390676815452

/-! ## A025990.P16836933769936791882

`2*A021154(n)-A021114(n)`
-/

namespace A025990.P16836933769936791882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021154 n - A021114 n

end

end A025990.P16836933769936791882

/-! ## A025990.P8932524719021078903

`2*A025969(n)-A025963(n)`
-/

namespace A025990.P8932524719021078903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025969 n - A025963 n

end

end A025990.P8932524719021078903

/-! ## A025990.P11018916265902654583

`A016301(n)+A016308(n)-A016295(n)`
-/

namespace A025990.P11018916265902654583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016301 n + (A016308 n - A016295 n)

end

end A025990.P11018916265902654583

/-! ## A025990.P17666356152889608731

`A021129(n)+A021274(n)-A021114(n)`
-/

namespace A025990.P17666356152889608731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021129 n + (A021274 n - A021114 n)

end

end A025990.P17666356152889608731

/-! ## A025990.P13910368450767446851

`Δ[A021204(n)-A021154(n)]`
-/

namespace A025990.P13910368450767446851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021204 n - A021154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025990.P13910368450767446851

/-! ## A025990.P1830028636578940186

`A016308(n+1)-A016301(n+1)`
-/

namespace A025990.P1830028636578940186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016308 (n + 1) - A016301 (n + 1)

end

end A025990.P1830028636578940186

/-!
# A025991: Expansion of 1/((1-2*x)*(1-5*x)*(1-6*x)*(1-12*x)).

The programs for A025991, the canonical program `A025991.P16560509148977468223` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025991 has offset 0).

The definition of A025991 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025991.P16560509148977468223

`(5^(n+1)-2^(n+1))/3+18*a(n-1)-72*a(n-2)` with `a(0)=1, a(1)=25`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025991

/-- `(5^(n+1)-2^(n+1))/3+18*a(n-1)-72*a(n-2)` -/
def P16560509148977468223.Spec : Prop :=
  ∀ n, P16560509148977468223.a n = (A025991 n : ℚ)

end A025991

/-! ## A025991.P7360598141455786013

`A019869(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A025991.P7360598141455786013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019869 n + 2 * a (n - 1)

end

end A025991.P7360598141455786013

namespace A025991

/-- `A019869(n)+2*a(n-1)` -/
def P7360598141455786013.Spec : Prop :=
  ∀ n, P7360598141455786013.a n = A025991 n

end A025991

/-! ## A025991.P9566958605628594951

`A016295(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A025991.P9566958605628594951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016295 n + 12 * a (n - 1)

end

end A025991.P9566958605628594951

namespace A025991

/-- `A016295(n)+12*a(n-1)` -/
def P9566958605628594951.Spec : Prop :=
  ∀ n, P9566958605628594951.a n = A025991 n

end A025991

/-! ## A025991.P4787005643079439178

`2*A016302(n)-A016295(n)`
-/

namespace A025991.P4787005643079439178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016302 n - A016295 n

end

end A025991.P4787005643079439178

namespace A025991

/-- `2*A016302(n)-A016295(n)` -/
def P4787005643079439178.Spec : Prop :=
  ∀ n, P4787005643079439178.a n = A025991 n

end A025991

/-! ## A025991.P15359022432802582470

`A025970(n)+A025970(n)-A025964(n)`
-/

namespace A025991.P15359022432802582470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025970 n + (A025970 n - A025964 n)

end

end A025991.P15359022432802582470

namespace A025991

/-- `A025970(n)+A025970(n)-A025964(n)` -/
def P15359022432802582470.Spec : Prop :=
  ∀ n, P15359022432802582470.a n = A025991 n

end A025991

/-! ## A025991.P10229344082768978251

`Δ[A021214(n)-A021164(n)]`
-/

namespace A025991.P10229344082768978251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021214 n - A021164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025991.P10229344082768978251

namespace A025991

/-- `Δ[A021214(n)-A021164(n)]` -/
def P10229344082768978251.Spec : Prop :=
  ∀ n, P10229344082768978251.a n = A025991 n

end A025991

/-! ## A025991.P2016670576511434875

`2*A025970(n)-A025964(n)`
-/

namespace A025991.P2016670576511434875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025970 n - A025964 n

end

end A025991.P2016670576511434875

namespace A025991

/-- `2*A025970(n)-A025964(n)` -/
def P2016670576511434875.Spec : Prop :=
  ∀ n, P2016670576511434875.a n = A025991 n

end A025991

/-! ## A025991.P11261352888838374841

`(A028114(n)+A025964(n))/2`
-/

namespace A025991.P11261352888838374841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028114 n + A025964 n : ℚ) / 2

end

end A025991.P11261352888838374841

namespace A025991

/-- `(A028114(n)+A025964(n))/2` -/
def P11261352888838374841.Spec : Prop :=
  ∀ n, P11261352888838374841.a n = (A025991 n : ℚ)

end A025991

/-!
# A025992: Expansion of 1/((1-2*x)*(1-5*x)*(1-7*x)*(1-8*x)).

The programs for A025992, the canonical program `A025992.P791304405854903833` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025992 has offset 0).

The definition of A025992 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025992.P791304405854903833

`(5*8^(n+3)-9*7^(n+3)+5^(n+4)-2^(n+3))/90`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025992

/-- `(5*8^(n+3)-9*7^(n+3)+5^(n+4)-2^(n+3))/90` -/
def P791304405854903833.Spec : Prop :=
  ∀ n, P791304405854903833.a n = (A025992 n : ℚ)

end A025992

/-! ## A025992.P9850682406105734367

`a(n-1)+A019928(n)+a(n-1)` with `a(0)=1`
-/

namespace A025992.P9850682406105734367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A019928 n + a (n - 1))

end

end A025992.P9850682406105734367

namespace A025992

/-- `a(n-1)+A019928(n)+a(n-1)` -/
def P9850682406105734367.Spec : Prop :=
  ∀ n, P9850682406105734367.a n = A025992 n

end A025992

/-! ## A025992.P16734346776357601338

`Δ[A021129(n)-A021124(n)]`
-/

namespace A025992.P16734346776357601338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021129 n - A021124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025992.P16734346776357601338

namespace A025992

/-- `Δ[A021129(n)-A021124(n)]` -/
def P16734346776357601338.Spec : Prop :=
  ∀ n, P16734346776357601338.a n = A025992 n

end A025992

/-! ## A025992.P1606967716400880925

`2*A025943(n)-A025932(n)`
-/

namespace A025992.P1606967716400880925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025943 n - A025932 n

end

end A025992.P1606967716400880925

namespace A025992

/-- `2*A025943(n)-A025932(n)` -/
def P1606967716400880925.Spec : Prop :=
  ∀ n, P1606967716400880925.a n = A025992 n

end A025992

/-! ## A025992.P18198976674746332880

`2*A025987(n)-A025986(n)`
-/

namespace A025992.P18198976674746332880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025987 n - A025986 n

end

end A025992.P18198976674746332880

namespace A025992

/-- `2*A025987(n)-A025986(n)` -/
def P18198976674746332880.Spec : Prop :=
  ∀ n, P18198976674746332880.a n = A025992 n

end A025992

/-! ## A025992.P3465643533260135631

`A016297(n+1)-A016296(n+1)`
-/

namespace A025992.P3465643533260135631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016297 (n + 1) - A016296 (n + 1)

end

end A025992.P3465643533260135631

namespace A025992

/-- `A016297(n+1)-A016296(n+1)` -/
def P3465643533260135631.Spec : Prop :=
  ∀ n, P3465643533260135631.a n = A025992 n

end A025992

/-! ## A025992.P13949991718361391240

`2*A025993(n)-A025997(n)`
-/

namespace A025992.P13949991718361391240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025993 n - A025997 n

end

end A025992.P13949991718361391240

namespace A025992

/-- `2*A025993(n)-A025997(n)` -/
def P13949991718361391240.Spec : Prop :=
  ∀ n, P13949991718361391240.a n = A025992 n

end A025992

/-! ## A025992.P12452706941081065146

`2*A025995(n)-A028007(n)`
-/

namespace A025992.P12452706941081065146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025995 n - A028007 n

end

end A025992.P12452706941081065146

namespace A025992

/-- `2*A025995(n)-A028007(n)` -/
def P12452706941081065146.Spec : Prop :=
  ∀ n, P12452706941081065146.a n = A025992 n

end A025992

/-!
# A025993: Expansion of 1/((1-2*x)*(1-5*x)*(1-7*x)*(1-9*x)).

The programs for A025993, the canonical program `A025993.P558647285130040744` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025993 has offset 0).

The definition of A025993 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025993.P558647285130040744

`(5^(n+1)-2^(n+1))/3+16*a(n-1)-63*a(n-2)` with `a(0)=1, a(1)=23`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025993

/-- `(5^(n+1)-2^(n+1))/3+16*a(n-1)-63*a(n-2)` -/
def P558647285130040744.Spec : Prop :=
  ∀ n, P558647285130040744.a n = (A025993 n : ℚ)

end A025993

/-! ## A025993.P15155185953094358751

`a(n-1)+A019943(n)+a(n-1)` with `a(0)=1`
-/

namespace A025993.P15155185953094358751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A019943 n + a (n - 1))

end

end A025993.P15155185953094358751

namespace A025993

/-- `a(n-1)+A019943(n)+a(n-1)` -/
def P15155185953094358751.Spec : Prop :=
  ∀ n, P15155185953094358751.a n = A025993 n

end A025993

/-! ## A025993.P2001639002292906388

`2*A021229(n)-A021124(n)`
-/

namespace A025993.P2001639002292906388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021229 n - A021124 n

end

end A025993.P2001639002292906388

namespace A025993

/-- `2*A021229(n)-A021124(n)` -/
def P2001639002292906388.Spec : Prop :=
  ∀ n, P2001639002292906388.a n = A025993 n

end A025993

/-! ## A025993.P7728419039587973171

`2*A025944(n)-A025933(n)`
-/

namespace A025993.P7728419039587973171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025944 n - A025933 n

end

end A025993.P7728419039587973171

namespace A025993

/-- `2*A025944(n)-A025933(n)` -/
def P7728419039587973171.Spec : Prop :=
  ∀ n, P7728419039587973171.a n = A025993 n

end A025993

/-! ## A025993.P4393935386601889890

`(A025997(n)+A025992(n))/2`
-/

namespace A025993.P4393935386601889890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025997 n + A025992 n : ℚ) / 2

end

end A025993.P4393935386601889890

namespace A025993

/-- `(A025997(n)+A025992(n))/2` -/
def P4393935386601889890.Spec : Prop :=
  ∀ n, P4393935386601889890.a n = (A025993 n : ℚ)

end A025993

/-! ## A025993.P14907921221374869763

`∑[2*A016312(n)-A016296(n)]`
-/

namespace A025993.P14907921221374869763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016312 n - A016296 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025993.P14907921221374869763

namespace A025993

/-- `∑[2*A016312(n)-A016296(n)]` -/
def P14907921221374869763.Spec : Prop :=
  ∀ n, P14907921221374869763.a n = A025993 n

end A025993

/-! ## A025993.P16962401657102463410

`(A016298(n+1)-A016296(n+1))/2`
-/

namespace A025993.P16962401657102463410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016298 (n + 1) - A016296 (n + 1) : ℚ) / 2

end

end A025993.P16962401657102463410

namespace A025993

/-- `(A016298(n+1)-A016296(n+1))/2` -/
def P16962401657102463410.Spec : Prop :=
  ∀ n, P16962401657102463410.a n = (A025993 n : ℚ)

end A025993

/-! ## A025993.P998947509879921834

`A021224(n)+A021264(n)-A021124(n)`
-/

namespace A025993.P998947509879921834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021224 n + (A021264 n - A021124 n)

end

end A025993.P998947509879921834

namespace A025993

/-- `A021224(n)+A021264(n)-A021124(n)` -/
def P998947509879921834.Spec : Prop :=
  ∀ n, P998947509879921834.a n = A025993 n

end A025993

/-! ## A025993.P3694811808024080824

`A025933(n)+A025988(n)-A025937(n)`
-/

namespace A025993.P3694811808024080824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025933 n + (A025988 n - A025937 n)

end

end A025993.P3694811808024080824

namespace A025993

/-- `A025933(n)+A025988(n)-A025937(n)` -/
def P3694811808024080824.Spec : Prop :=
  ∀ n, P3694811808024080824.a n = A025993 n

end A025993

/-! ## A025993.P12032015254903545489

`2*A025995(n)-A026028(n)`
-/

namespace A025993.P12032015254903545489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025995 n - A026028 n

end

end A025993.P12032015254903545489

namespace A025993

/-- `2*A025995(n)-A026028(n)` -/
def P12032015254903545489.Spec : Prop :=
  ∀ n, P12032015254903545489.a n = A025993 n

end A025993

/-!
# A025994: Expansion of 1/((1-2*x)*(1-5*x)*(1-7*x)*(1-10*x)).

The programs for A025994, the canonical program `A025994.P4820431556971117889` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025994 has offset 0).

The definition of A025994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025994.P4820431556971117889

`(5^(n+1)-2^(n+1))/3+17*a(n-1)-70*a(n-2)` with `a(0)=1, a(1)=24`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025994

/-- `(5^(n+1)-2^(n+1))/3+17*a(n-1)-70*a(n-2)` -/
def P4820431556971117889.Spec : Prop :=
  ∀ n, P4820431556971117889.a n = (A025994 n : ℚ)

end A025994

/-! ## A025994.P14877678079235735597

`a(n-1)+A019958(n)+a(n-1)` with `a(0)=1`
-/

namespace A025994.P14877678079235735597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A019958 n + a (n - 1))

end

end A025994.P14877678079235735597

namespace A025994

/-- `a(n-1)+A019958(n)+a(n-1)` -/
def P14877678079235735597.Spec : Prop :=
  ∀ n, P14877678079235735597.a n = A025994 n

end A025994

/-! ## A025994.P4114195397769929382

`2*A016313(n)-A016296(n)`
-/

namespace A025994.P4114195397769929382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016313 n - A016296 n

end

end A025994.P4114195397769929382

namespace A025994

/-- `2*A016313(n)-A016296(n)` -/
def P4114195397769929382.Spec : Prop :=
  ∀ n, P4114195397769929382.a n = A025994 n

end A025994

/-! ## A025994.P12891074199104411966

`2*A025962(n)-A025959(n)`
-/

namespace A025994.P12891074199104411966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025962 n - A025959 n

end

end A025994.P12891074199104411966

namespace A025994

/-- `2*A025962(n)-A025959(n)` -/
def P12891074199104411966.Spec : Prop :=
  ∀ n, P12891074199104411966.a n = A025994 n

end A025994

/-! ## A025994.P4887400252127511271

`A025945(n)+A025945(n)-A025934(n)`
-/

namespace A025994.P4887400252127511271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025945 n + (A025945 n - A025934 n)

end

end A025994.P4887400252127511271

namespace A025994

/-- `A025945(n)+A025945(n)-A025934(n)` -/
def P4887400252127511271.Spec : Prop :=
  ∀ n, P4887400252127511271.a n = A025994 n

end A025994

/-! ## A025994.P16469682764518322324

`2*A025945(n)-A025934(n)`
-/

namespace A025994.P16469682764518322324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025945 n - A025934 n

end

end A025994.P16469682764518322324

namespace A025994

/-- `2*A025945(n)-A025934(n)` -/
def P16469682764518322324.Spec : Prop :=
  ∀ n, P16469682764518322324.a n = A025994 n

end A025994

/-! ## A025994.P16073078321139372523

`Δ[(A021234(n)-A021124(n))/5]`
-/

namespace A025994.P16073078321139372523
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021234 n - A021124 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025994.P16073078321139372523

namespace A025994

/-- `Δ[(A021234(n)-A021124(n))/5]` -/
def P16073078321139372523.Spec : Prop :=
  ∀ n, P16073078321139372523.a n = (A025994 n : ℚ)

end A025994

/-! ## A025994.P237876710754359592

`(A016313(n+1)-A016299(n+1))/2`
-/

namespace A025994.P237876710754359592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016313 (n + 1) - A016299 (n + 1) : ℚ) / 2

end

end A025994.P237876710754359592

namespace A025994

/-- `(A016313(n+1)-A016299(n+1))/2` -/
def P237876710754359592.Spec : Prop :=
  ∀ n, P237876710754359592.a n = (A025994 n : ℚ)

end A025994

/-! ## A025994.P17811390121091351647

`A025992(n)+A028006(n)-A025998(n)`
-/

namespace A025994.P17811390121091351647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025992 n + (A028006 n - A025998 n)

end

end A025994.P17811390121091351647

namespace A025994

/-- `A025992(n)+A028006(n)-A025998(n)` -/
def P17811390121091351647.Spec : Prop :=
  ∀ n, P17811390121091351647.a n = A025994 n

end A025994

/-!
# A025995: Expansion of 1/((1-2x)(1-5x)(1-7x)(1-11x)).

The programs for A025995, there is no canonical definition to state claims against.
-/

/-! ## A025995.P10831346127661706097

`a(n-1)+A020000(n)+a(n-1)` with `a(0)=1`
-/

namespace A025995.P10831346127661706097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020000 n + a (n - 1))

end

end A025995.P10831346127661706097

/-! ## A025995.P14702060536278965214

`2*A025935(n)-A025931(n)`
-/

namespace A025995.P14702060536278965214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025935 n - A025931 n

end

end A025995.P14702060536278965214

/-! ## A025995.P5711757914706157697

`2*A025946(n)-A025935(n)`
-/

namespace A025995.P5711757914706157697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025946 n - A025935 n

end

end A025995.P5711757914706157697

/-! ## A025995.P14060688257024110440

`A021154(n)+A021244(n)-A021124(n)`
-/

namespace A025995.P14060688257024110440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021154 n + (A021244 n - A021124 n)

end

end A025995.P14060688257024110440

/-! ## A025995.P6458281385708313843

`A025932(n)+A025950(n)-A025931(n)`
-/

namespace A025995.P6458281385708313843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025932 n + (A025950 n - A025931 n)

end

end A025995.P6458281385708313843

/-! ## A025995.P13534445099587299018

`A025944(n)+A025953(n)-A025935(n)`
-/

namespace A025995.P13534445099587299018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025944 n + (A025953 n - A025935 n)

end

end A025995.P13534445099587299018

/-!
# A025996: Expansion of 1/((1-2*x)*(1-5*x)*(1-7*x)*(1-12*x)).

The programs for A025996, there is no canonical definition to state claims against.
-/

/-! ## A025996.P5431571487100450228

`A016315(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A025996.P5431571487100450228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016315 n + 5 * a (n - 1)

end

end A025996.P5431571487100450228

/-! ## A025996.P3094672820731465392

`a(n-1)+A020341(n)+a(n-1)` with `a(0)=1`
-/

namespace A025996.P3094672820731465392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020341 n + a (n - 1))

end

end A025996.P3094672820731465392

/-! ## A025996.P778790665058043290

`A016302(n)+A016315(n)-A016296(n)`
-/

namespace A025996.P778790665058043290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016302 n + (A016315 n - A016296 n)

end

end A025996.P778790665058043290

/-! ## A025996.P18405239964178925053

`A025947(n)+A025947(n)-A025936(n)`
-/

namespace A025996.P18405239964178925053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025947 n + (A025947 n - A025936 n)

end

end A025996.P18405239964178925053

/-! ## A025996.P1140392134599559274

`2*A025947(n)-A025936(n)`
-/

namespace A025996.P1140392134599559274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025947 n - A025936 n

end

end A025996.P1140392134599559274

/-! ## A025996.P8760739009375144416

`(A016315(n+1)-A016302(n+1))/2`
-/

namespace A025996.P8760739009375144416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016315 (n + 1) - A016302 (n + 1) : ℚ) / 2

end

end A025996.P8760739009375144416

/-!
# A025997: Expansion of 1/((1-2*x)*(1-5*x)*(1-8*x)*(1-9*x)).

The programs for A025997, the canonical program `A025997.P14700812991296914922` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025997 has offset 0).

The definition of A025997 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025997.P14700812991296914922

`(5^(n+1)-2^(n+1))/3+17*a(n-1)-72*a(n-2)` with `a(0)=1, a(1)=24`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025997

/-- `(5^(n+1)-2^(n+1))/3+17*a(n-1)-72*a(n-2)` -/
def P14700812991296914922.Spec : Prop :=
  ∀ n, P14700812991296914922.a n = (A025997 n : ℚ)

end A025997

/-! ## A025997.P5841455575809525002

`a(n-1)+A020343(n)+a(n-1)` with `a(0)=1`
-/

namespace A025997.P5841455575809525002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020343 n + a (n - 1))

end

end A025997.P5841455575809525002

namespace A025997

/-- `a(n-1)+A020343(n)+a(n-1)` -/
def P5841455575809525002.Spec : Prop :=
  ∀ n, P5841455575809525002.a n = A025997 n

end A025997

/-! ## A025997.P8830675216888518549

`Δ[A021134(n)-A021129(n)]`
-/

namespace A025997.P8830675216888518549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021134 n - A021129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025997.P8830675216888518549

namespace A025997

/-- `Δ[A021134(n)-A021129(n)]` -/
def P8830675216888518549.Spec : Prop :=
  ∀ n, P8830675216888518549.a n = A025997 n

end A025997

/-! ## A025997.P13096900010581932323

`2*A021264(n)-A021129(n)`
-/

namespace A025997.P13096900010581932323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021264 n - A021129 n

end

end A025997.P13096900010581932323

namespace A025997

/-- `2*A021264(n)-A021129(n)` -/
def P13096900010581932323.Spec : Prop :=
  ∀ n, P13096900010581932323.a n = A025997 n

end A025997

/-! ## A025997.P16818871790518458662

`2*A025993(n)-A025992(n)`
-/

namespace A025997.P16818871790518458662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025993 n - A025992 n

end

end A025997.P16818871790518458662

namespace A025997

/-- `2*A025993(n)-A025992(n)` -/
def P16818871790518458662.Spec : Prop :=
  ∀ n, P16818871790518458662.a n = A025997 n

end A025997

/-! ## A025997.P2405954861138477873

`Δ[A021134(n)]-A016297(n+1)`
-/

namespace A025997.P2405954861138477873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A016297 (n + 1)

end

end A025997.P2405954861138477873

namespace A025997

/-- `Δ[A021134(n)]-A016297(n+1)` -/
def P2405954861138477873.Spec : Prop :=
  ∀ n, P2405954861138477873.a n = A025997 n

end A025997

/-! ## A025997.P17883221636140718714

`A016298(n+1)-A016297(n+1)`
-/

namespace A025997.P17883221636140718714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016298 (n + 1) - A016297 (n + 1)

end

end A025997.P17883221636140718714

namespace A025997

/-- `A016298(n+1)-A016297(n+1)` -/
def P17883221636140718714.Spec : Prop :=
  ∀ n, P17883221636140718714.a n = A025997 n

end A025997

/-! ## A025997.P18397868878649485240

`Δ[A021134(n)-A016297(n)]-A016297(n)`
-/

namespace A025997.P18397868878649485240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021134 n - A016297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A016297 n

end

end A025997.P18397868878649485240

namespace A025997

/-- `Δ[A021134(n)-A016297(n)]-A016297(n)` -/
def P18397868878649485240.Spec : Prop :=
  ∀ n, P18397868878649485240.a n = A025997 n

end A025997

/-! ## A025997.P2579126547096242519

`A025995(n)+A028007(n)-A028010(n)`
-/

namespace A025997.P2579126547096242519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025995 n + (A028007 n - A028010 n)

end

end A025997.P2579126547096242519

namespace A025997

/-- `A025995(n)+A028007(n)-A028010(n)` -/
def P2579126547096242519.Spec : Prop :=
  ∀ n, P2579126547096242519.a n = A025997 n

end A025997

/-!
# A025998: Expansion of 1/((1-2*x)*(1-5*x)*(1-8*x)*(1-10*x)).

The programs for A025998, the canonical program `A025998.P8737998090361348427` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025998 has offset 0).

The definition of A025998 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025998.P8737998090361348427

`(5^(n+1)-2^(n+1))/3+18*a(n-1)-80*a(n-2)` with `a(0)=1, a(1)=25`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025998

/-- `(5^(n+1)-2^(n+1))/3+18*a(n-1)-80*a(n-2)` -/
def P8737998090361348427.Spec : Prop :=
  ∀ n, P8737998090361348427.a n = (A025998 n : ℚ)

end A025998

/-! ## A025998.P5953995749831219150

`A020346(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A025998.P5953995749831219150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020346 n + 2 * a (n - 1)

end

end A025998.P5953995749831219150

namespace A025998

/-- `A020346(n)+2*a(n-1)` -/
def P5953995749831219150.Spec : Prop :=
  ∀ n, P5953995749831219150.a n = A025998 n

end A025998

/-! ## A025998.P10481882927097059050

`2*A016317(n)-A016297(n)`
-/

namespace A025998.P10481882927097059050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016317 n - A016297 n

end

end A025998.P10481882927097059050

namespace A025998

/-- `2*A016317(n)-A016297(n)` -/
def P10481882927097059050.Spec : Prop :=
  ∀ n, P10481882927097059050.a n = A025998 n

end A025998

/-! ## A025998.P8532849660350304059

`2*A025989(n)-A025987(n)`
-/

namespace A025998.P8532849660350304059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025989 n - A025987 n

end

end A025998.P8532849660350304059

namespace A025998

/-- `2*A025989(n)-A025987(n)` -/
def P8532849660350304059.Spec : Prop :=
  ∀ n, P8532849660350304059.a n = A025998 n

end A025998

/-! ## A025998.P912401862591729508

`A025934(n)+A025949(n)-A025932(n)`
-/

namespace A025998.P912401862591729508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025934 n + (A025949 n - A025932 n)

end

end A025998.P912401862591729508

namespace A025998

/-- `A025934(n)+A025949(n)-A025932(n)` -/
def P912401862591729508.Spec : Prop :=
  ∀ n, P912401862591729508.a n = A025998 n

end A025998

/-! ## A025998.P9421804184030720625

`A025992(n)+A028006(n)-A025994(n)`
-/

namespace A025998.P9421804184030720625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025992 n + (A028006 n - A025994 n)

end

end A025998.P9421804184030720625

namespace A025998

/-- `A025992(n)+A028006(n)-A025994(n)` -/
def P9421804184030720625.Spec : Prop :=
  ∀ n, P9421804184030720625.a n = A025998 n

end A025998

/-!
# A025999: Expansion of g.f. 1/((1-2*x)*(1-5*x)*(1-8*x)*(1-11*x)).

The programs for A025999, the canonical program `A025999.P6701326036239924971` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025999 has offset 0).

The definition of A025999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025999.P6701326036239924971

`(5^(n+1)-2^(n+1))/3+19*a(n-1)-88*a(n-2)` with `a(0)=1, a(1)=26`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025999

/-- `(5^(n+1)-2^(n+1))/3+19*a(n-1)-88*a(n-2)` -/
def P6701326036239924971.Spec : Prop :=
  ∀ n, P6701326036239924971.a n = (A025999 n : ℚ)

end A025999

/-! ## A025999.P10573566878539003176

`a(n-1)+A020447(n)+a(n-1)` with `a(0)=1`
-/

namespace A025999.P10573566878539003176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020447 n + a (n - 1))

end

end A025999.P10573566878539003176

namespace A025999

/-- `a(n-1)+A020447(n)+a(n-1)` -/
def P10573566878539003176.Spec : Prop :=
  ∀ n, P10573566878539003176.a n = A025999 n

end A025999

/-! ## A025999.P12103938454290940695

`A225468(A167614(n+2))`
-/

namespace A025999.P12103938454290940695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225468 (A167614 (n + 2)).toNat

end

end A025999.P12103938454290940695

namespace A025999

/-- `A225468(A167614(n+2))` -/
def P12103938454290940695.Spec : Prop :=
  ∀ n, P12103938454290940695.a n = A025999 n

end A025999

/-! ## A025999.P1793460112873218837

`A225468(A052905(n)+8)`
-/

namespace A025999.P1793460112873218837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225468 (A052905 n + 8).toNat

end

end A025999.P1793460112873218837

namespace A025999

/-- `A225468(A052905(n)+8)` -/
def P1793460112873218837.Spec : Prop :=
  ∀ n, P1793460112873218837.a n = A025999 n

end A025999

/-! ## A025999.P9970112217770834314

`A225468(A055999(n)+9)`
-/

namespace A025999.P9970112217770834314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225468 (A055999 n + 9).toNat

end

end A025999.P9970112217770834314

namespace A025999

/-- `A225468(A055999(n)+9)` -/
def P9970112217770834314.Spec : Prop :=
  ∀ n, P9970112217770834314.a n = A025999 n

end A025999

/-! ## A025999.P5835435489772227154

`A225468(eq[3, A002262(n)])`
-/

namespace A025999.P5835435489772227154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A025999.P5835435489772227154

namespace A025999

/-- `A225468(eq[3, A002262(n)])` -/
def P5835435489772227154.Spec : Prop :=
  ∀ n, P5835435489772227154.a n = A025999 n

end A025999

/-! ## A025999.P3786237055372770123

`A225468(eq[8, A059268(n)])`
-/

namespace A025999.P3786237055372770123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225468 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A025999.P3786237055372770123

namespace A025999

/-- `A225468(eq[8, A059268(n)])` -/
def P3786237055372770123.Spec : Prop :=
  ∀ n, P3786237055372770123.a n = A025999 n

end A025999

/-! ## A025999.P7302124193260799533

`A225468(A000217(n+4)-(n+1))`
-/

namespace A025999.P7302124193260799533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225468 (A000217 (n + 4) - (n + 1 : ℤ)).toNat

end

end A025999.P7302124193260799533

namespace A025999

/-- `A225468(A000217(n+4)-(n+1))` -/
def P7302124193260799533.Spec : Prop :=
  ∀ n, P7302124193260799533.a n = A025999 n

end A025999

