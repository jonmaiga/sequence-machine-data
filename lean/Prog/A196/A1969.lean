import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
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
import SequenceMachineLib.Triangle

/-!
# A196900: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,1,0,2 for x=0,1,2,3,4.

The programs for A196900, there is no canonical definition to state claims against.
-/

/-! ## A196900.P15770616623013196199

`A196904(A374004(n+1))`
-/

namespace A196900.P15770616623013196199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (A374004 (n + 1)).toNat

end

end A196900.P15770616623013196199

/-! ## A196900.P3282840098192717836

`A196904(A141214(n+1))`
-/

namespace A196900.P3282840098192717836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (A141214 (n + 1)).toNat

end

end A196900.P3282840098192717836

/-!
# A196901: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,1,0,2 for x=0,1,2,3,4.

The programs for A196901, there is no canonical definition to state claims against.
-/

/-! ## A196901.P10989957911876798519

`A196904(A374005(n+1))`
-/

namespace A196901.P10989957911876798519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (A374005 (n + 1)).toNat

end

end A196901.P10989957911876798519

/-!
# A196902: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,1,0,2 for x=0,1,2,3,4.

The programs for A196902, there is no canonical definition to state claims against.
-/

/-! ## A196902.P18187557273093988098

`A196904(A374007(n+1))`
-/

namespace A196902.P18187557273093988098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (A374007 (n + 1)).toNat

end

end A196902.P18187557273093988098

/-!
# A196903: Number of n X 7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,1,0,2 for x=0,1,2,3,4.

The programs for A196903, there is no canonical definition to state claims against.
-/

/-! ## A196903.P12819375865839588089

`A196904(A374008(n+1))`
-/

namespace A196903.P12819375865839588089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (A374008 (n + 1)).toNat

end

end A196903.P12819375865839588089

/-!
# A196905: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,1,2,0,4 for x=0,1,2,3,4.

The programs for A196905, there is no canonical definition to state claims against.
-/

/-! ## A196905.P11481724172478398870

`A196912(∑[4*n]+1)`
-/

namespace A196905.P11481724172478398870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196905.P11481724172478398870

/-! ## A196905.P2963625771676338670

`record[A196912(A330613(n+1))]`
-/

namespace A196905.P2963625771676338670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196905.P2963625771676338670

/-! ## A196905.P10154941001341484874

`record[A003982(n)*A196912(n+1)]`
-/

namespace A196905.P10154941001341484874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A196912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196905.P10154941001341484874

/-! ## A196905.P1112370911481740389

`record[gcd(A008482(n), A196912(n+1))]`
-/

namespace A196905.P1112370911481740389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A196912 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196905.P1112370911481740389

/-!
# A196906: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,2,0,4 for x=0,1,2,3,4.

The programs for A196906, the canonical program `A196906.P2619089245217451129` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196906 has offset 1).

The definition of A196906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 257 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196906.P6736857029341838365

`ogf((2+4x+3x^2+3x^3-x^4-x^5)/(1-x-2x^2-3x^3-2x^4+x^6))`
-/

namespace A196906.P6736857029341838365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, 3, 3, -1, -1] [1, -1, -2, -3, -2, 0, 1] n

end

end A196906.P6736857029341838365

namespace A196906

/-- `ogf((2+4x+3x^2+3x^3-x^4-x^5)/(1-x-2x^2-3x^3-2x^4+x^6))` -/
def P6736857029341838365.Spec : Prop :=
  ∀ n, P6736857029341838365.a n = A196906 (n + 1)

end A196906

/-! ## A196906.P2619089245217451129

`a(n-1)+2*a(n-2)+3*a(n-3)+2*a(n-4)-a(n-6)` with `a(0)=2, a(1)=6, a(2)=13, a(3)=34, a(4)=81, a(5)=199`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196906

/-- `a(n-1)+2*a(n-2)+3*a(n-3)+2*a(n-4)-a(n-6)` -/
def P2619089245217451129.Spec : Prop :=
  ∀ n, P2619089245217451129.a n = A196906 (n + 1)

theorem P2619089245217451129.correct : P2619089245217451129.Spec := by
  intro n
  simp only [A196906, Nat.add_sub_cancel]

end A196906

/-! ## A196906.P13246946102338884591

`A196912(∑[n+1]+2)`
-/

namespace A196906.P13246946102338884591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196906.P13246946102338884591

namespace A196906

/-- `A196912(∑[n+1]+2)` -/
def P13246946102338884591.Spec : Prop :=
  ∀ n, P13246946102338884591.a n = A196906 (n + 1)

end A196906

/-! ## A196906.P10268581524006368718

`A197079(∑[n+1]+2)`
-/

namespace A196906.P10268581524006368718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196906.P10268581524006368718

namespace A196906

/-- `A197079(∑[n+1]+2)` -/
def P10268581524006368718.Spec : Prop :=
  ∀ n, P10268581524006368718.a n = A196906 (n + 1)

end A196906

/-!
# A196907: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,2,0,4 for x=0,1,2,3,4.

The programs for A196907, there is no canonical definition to state claims against.
-/

/-! ## A196907.P7077571711825112221

`A196912(∑[n+2]+4)`
-/

namespace A196907.P7077571711825112221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196907.P7077571711825112221

/-!
# A196908: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,2,0,4 for x=0,1,2,3,4.

The programs for A196908, there is no canonical definition to state claims against.
-/

/-! ## A196908.P15669689277636522085

`A196912(A374004(n+1))`
-/

namespace A196908.P15669689277636522085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (A374004 (n + 1)).toNat

end

end A196908.P15669689277636522085

/-! ## A196908.P13690063069005869142

`A196912(A141214(n+1))`
-/

namespace A196908.P13690063069005869142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (A141214 (n + 1)).toNat

end

end A196908.P13690063069005869142

/-!
# A196909: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,2,0,4 for x=0,1,2,3,4.

The programs for A196909, there is no canonical definition to state claims against.
-/

/-! ## A196909.P7584702393054699399

`A196912(A374005(n+1))`
-/

namespace A196909.P7584702393054699399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (A374005 (n + 1)).toNat

end

end A196909.P7584702393054699399

/-!
# A196910: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,2,0,4 for x=0,1,2,3,4.

The programs for A196910, there is no canonical definition to state claims against.
-/

/-! ## A196910.P8322838070713740398

`A196912(A374007(n+1))`
-/

namespace A196910.P8322838070713740398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (A374007 (n + 1)).toNat

end

end A196910.P8322838070713740398

/-!
# A196911: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,2,0,4 for x=0,1,2,3,4.

The programs for A196911, there is no canonical definition to state claims against.
-/

/-! ## A196911.P13325502526663479932

`A196912(A374008(n+1))`
-/

namespace A196911.P13325502526663479932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (A374008 (n + 1)).toNat

end

end A196911.P13325502526663479932

/-!
# A196912: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,1,2,0,4 for x=0,1,2,3,4.

The programs for A196912, there is no canonical definition to state claims against.
-/

/-! ## A196912.P8990660600817456822

`A197079(n+1)-A321936(A174116(n))`
-/

namespace A196912.P8990660600817456822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (n + 1) - A321936 (A174116 n).toNat

end

end A196912.P8990660600817456822

/-! ## A196912.P16712803787711097685

`A197079(n+1)+A016389(A022166(n))`
-/

namespace A196912.P16712803787711097685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (n + 1) + A016389 (A022166 n).toNat

end

end A196912.P16712803787711097685

/-! ## A196912.P14640824908788267196

`A197079(n+1)-A025465(A023105(n))`
-/

namespace A196912.P14640824908788267196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (n + 1) - A025465 (A023105 n).toNat

end

end A196912.P14640824908788267196

/-! ## A196912.P9284391547582520598

`A197079(n+1)-A044940(A014437(n))`
-/

namespace A196912.P9284391547582520598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (n + 1) - A044940 (A014437 n).toNat

end

end A196912.P9284391547582520598

/-! ## A196912.P5433742720429773345

`A197079(n+1)+A178798(A008292(n+1))`
-/

namespace A196912.P5433742720429773345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (n + 1) + A178798 (A008292 (n + 1)).toNat

end

end A196912.P5433742720429773345

/-!
# A196916: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 1,3,2,4,0 for x=0,1,2,3,4.

The programs for A196916, there is no canonical definition to state claims against.
-/

/-! ## A196916.P13621188857351219714

`A196922(∑[4*n]+1)`
-/

namespace A196916.P13621188857351219714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196916.P13621188857351219714

/-!
# A196917: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,2,4,0 for x=0,1,2,3,4.

The programs for A196917, the canonical program `A196917.P11673929828572863917` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196917 has offset 1).

The definition of A196917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196917.P18370138532061591839

`ogf((1+x+x^2-3x^3+x^4)/(1-2x-x^3+x^4))`
-/

namespace A196917.P18370138532061591839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, -3, 1] [1, -2, 0, -1, 1] n

end

end A196917.P18370138532061591839

namespace A196917

/-- `ogf((1+x+x^2-3x^3+x^4)/(1-2x-x^3+x^4))` -/
def P18370138532061591839.Spec : Prop :=
  ∀ n, P18370138532061591839.a n = A196917 (n + 1)

end A196917

/-! ## A196917.P11673929828572863917

`2*a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=12, a(4)=27`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196917

/-- `2*a(n-1)+a(n-3)-a(n-4)` -/
def P11673929828572863917.Spec : Prop :=
  ∀ n, P11673929828572863917.a n = A196917 (n + 1)

theorem P11673929828572863917.correct : P11673929828572863917.Spec := by
  intro n
  simp only [A196917, Nat.add_sub_cancel]

end A196917

/-! ## A196917.P14858772745969794011

`A196922(∑[n+2]+4)`
-/

namespace A196917.P14858772745969794011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196917.P14858772745969794011

namespace A196917

/-- `A196922(∑[n+2]+4)` -/
def P14858772745969794011.Spec : Prop :=
  ∀ n, P14858772745969794011.a n = A196917 (n + 1)

end A196917

/-!
# A196918: Number of n X 4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,2,4,0 for x=0,1,2,3,4.

The programs for A196918, the canonical program `A196918.P14689411077939579128` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196918 has offset 1).

The definition of A196918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196918.P14689411077939579128

`ogf((1-x^2-x^4-17x^5-11x^6+7x^7+6x^8)/(1-4x+3x^2-x^3+x^4+x^5+5x^6+8x^7+3x^8))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196918

/-- `ogf((1-x^2-x^4-17x^5-11x^6+7x^7+6x^8)/(1-4x+3x^2-x^3+x^4+x^5+5x^6+8x^7+3x^8))` -/
def P14689411077939579128.Spec : Prop :=
  ∀ n, P14689411077939579128.a n = A196918 (n + 1)

theorem P14689411077939579128.correct : P14689411077939579128.Spec := by
  intro n
  simp only [A196918, Nat.add_sub_cancel]

end A196918

/-! ## A196918.P5576719859106603396

`A196922(A374004(n+1))`
-/

namespace A196918.P5576719859106603396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (A374004 (n + 1)).toNat

end

end A196918.P5576719859106603396

namespace A196918

/-- `A196922(A374004(n+1))` -/
def P5576719859106603396.Spec : Prop :=
  ∀ n, P5576719859106603396.a n = A196918 (n + 1)

end A196918

/-! ## A196918.P14109352809579123257

`A196922(A141214(n+1))`
-/

namespace A196918.P14109352809579123257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (A141214 (n + 1)).toNat

end

end A196918.P14109352809579123257

namespace A196918

/-- `A196922(A141214(n+1))` -/
def P14109352809579123257.Spec : Prop :=
  ∀ n, P14109352809579123257.a n = A196918 (n + 1)

end A196918

/-!
# A196919: Number of n X 5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,2,4,0 for x=0,1,2,3,4.

The programs for A196919, there is no canonical definition to state claims against.
-/

/-! ## A196919.P16441026580450147548

`A196922(A374005(n+1))`
-/

namespace A196919.P16441026580450147548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (A374005 (n + 1)).toNat

end

end A196919.P16441026580450147548

/-!
# A196920: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,2,4,0 for x=0,1,2,3,4.

The programs for A196920, there is no canonical definition to state claims against.
-/

/-! ## A196920.P4113824688954143310

`A196922(A374007(n+1))`
-/

namespace A196920.P4113824688954143310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (A374007 (n + 1)).toNat

end

end A196920.P4113824688954143310

/-!
# A196921: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,2,4,0 for x=0,1,2,3,4.

The programs for A196921, there is no canonical definition to state claims against.
-/

/-! ## A196921.P1106820458240295943

`A196922(A374008(n+1))`
-/

namespace A196921.P1106820458240295943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (A374008 (n + 1)).toNat

end

end A196921.P1106820458240295943

/-!
# A196922: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 1,3,2,4,0 for x=0,1,2,3,4.

The programs for A196922, there is no canonical definition to state claims against.
-/

/-! ## A196922.P10239724682728373087

`A341024(A196863(n+1))+A196863(n+1)`
-/

namespace A196922.P10239724682728373087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341024 ((A196863 (n + 1)).toNat + 84) + A196863 (n + 1)

end

end A196922.P10239724682728373087

/-! ## A196922.P14254106603861377479

`A180493(A196863(n+1))`
-/

namespace A196922.P14254106603861377479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180493 (A196863 (n + 1)).toNat

end

end A196922.P14254106603861377479

/-!
# A196923: Values of fundamental discriminant -d where number of ideal classes Q(sqrt(-d)) is at most two.

The programs for A196923, there is no canonical definition to state claims against.
-/

/-! ## A196923.P16518393360831858768

`∪[A014602(n+1), A014603(n+1)]`
-/

namespace A196923.P16518393360831858768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A196923.P16518393360831858768

/-! ## A196923.P18187822222618039641

`record[A003644(n+1)%A299791(n+4)]`
-/

namespace A196923.P18187822222618039641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003644 (n + 1)) (A299791 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196923.P18187822222618039641

/-! ## A196923.P7485739114566734846

`∩[A003644(n+1), A328335(n+1)]`
-/

namespace A196923.P7485739114566734846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196923.P7485739114566734846

/-! ## A196923.P6826743106386950824

`∩[A003644(n+1), A331682(n+1)]`
-/

namespace A196923.P6826743106386950824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196923.P6826743106386950824

/-!
# A196925: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 1,4,3,2,0 for x=0,1,2,3,4.

The programs for A196925, there is no canonical definition to state claims against.
-/

/-! ## A196925.P17566998022115754525

`A196929(∑[4*n]+1)`
-/

namespace A196925.P17566998022115754525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196929 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196925.P17566998022115754525

/-!
# A196926: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,4,3,2,0 for x=0,1,2,3,4.

The programs for A196926, there is no canonical definition to state claims against.
-/

/-! ## A196926.P16904916968200249395

`A196929(A374005(n+1))`
-/

namespace A196926.P16904916968200249395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196929 (A374005 (n + 1)).toNat

end

end A196926.P16904916968200249395

/-! ## A196926.P3925165006326803924

`A260124(A291613(n+2))`
-/

namespace A196926.P3925165006326803924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260124 (A291613 (n + 2)).toNat

end

end A196926.P3925165006326803924

/-!
# A196927: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,4,3,2,0 for x=0,1,2,3,4.

The programs for A196927, there is no canonical definition to state claims against.
-/

/-! ## A196927.P17472005470744920365

`A196929(A374007(n+1))`
-/

namespace A196927.P17472005470744920365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196929 (A374007 (n + 1)).toNat

end

end A196927.P17472005470744920365

/-!
# A196928: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,4,3,2,0 for x=0,1,2,3,4.

The programs for A196928, there is no canonical definition to state claims against.
-/

/-! ## A196928.P15256335018440920725

`A196929(A374008(n+1))`
-/

namespace A196928.P15256335018440920725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196929 (A374008 (n + 1)).toNat

end

end A196928.P15256335018440920725

/-!
# A196929: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 1,4,3,2,0 for x=0,1,2,3,4.

The programs for A196929, there is no canonical definition to state claims against.
-/

/-! ## A196929.P5467222108002729485

`A108582(A260340(n))`
-/

namespace A196929.P5467222108002729485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108582 (A260340 n).toNat

end

end A196929.P5467222108002729485

/-! ## A196929.P7067079778158954044

`A161358(A334549(n))`
-/

namespace A196929.P7067079778158954044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161358 (A334549 n).toNat

end

end A196929.P7067079778158954044

/-! ## A196929.P6869732049831540881

`A174981(A333901(n))`
-/

namespace A196929.P6869732049831540881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174981 (A333901 n).toNat

end

end A196929.P6869732049831540881

/-! ## A196929.P12659441104168259748

`A185679(A347618(n))`
-/

namespace A196929.P12659441104168259748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185679 (A347618 n).toNat

end

end A196929.P12659441104168259748

/-! ## A196929.P11826203988692753252

`A226029(A347618(n)+1)`
-/

namespace A196929.P11826203988692753252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226029 (A347618 n + 1).toNat

end

end A196929.P11826203988692753252

/-!
# A196930: Triangle read by rows in which row n lists in nondecreasing order the smallest part of every partition of n that do not contain 1 as a part, with a(1) = 1.

The programs for A196930, there is no canonical definition to state claims against.
-/

/-! ## A196930.P6734051567211934203

`A196931(lt[round((n+1)/(n+4)), A196931(n)])`
-/

namespace A196930.P6734051567211934203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (n + 4 : ℚ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196931 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196930.P6734051567211934203

/-! ## A196930.P2450354445136680942

`A090996(A194602(n))+1`
-/

namespace A196930.P2450354445136680942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A194602 n).toNat + 1

end

end A196930.P2450354445136680942

/-! ## A196930.P6389862196915445532

`A342241(2*A194602(n))`
-/

namespace A196930.P6389862196915445532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342241 (2 * A194602 n).toNat

end

end A196930.P6389862196915445532

/-! ## A196930.P10009605959821373745

`A210941(∑[A194548(n+1)]+1)`
-/

namespace A196930.P10009605959821373745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210941 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A196930.P10009605959821373745

/-! ## A196930.P18330807468999203839

`A001511(A143035(n+1)-A006995(n+1))`
-/

namespace A196930.P18330807468999203839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A143035 (n + 1) - A006995 (n + 1)).toNat

end

end A196930.P18330807468999203839

/-!
# A196931: Triangle read by rows in which row n lists in nondecreasing order the smallest part of every partition of n.

The programs for A196931, there is no canonical definition to state claims against.
-/

/-! ## A196931.P8566180730193407927

`A055396(A334437(n))`
-/

namespace A196931.P8566180730193407927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A334437 n).toNat

end

end A196931.P8566180730193407927

/-! ## A196931.P162850181353395985

`A090996(A037014(n+1))`
-/

namespace A196931.P162850181353395985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A037014 (n + 1)).toNat

end

end A196931.P162850181353395985

/-! ## A196931.P13803659449372537672

`A061395(A020639(A334437(n))²)`
-/

namespace A196931.P13803659449372537672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A020639 (A334437 n).toNat ^ 2).toNat

end

end A196931.P13803659449372537672

/-! ## A196931.P7197551951493588170

`A090996(record[A361479(n)])`
-/

namespace A196931.P7197551951493588170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A196931.P7197551951493588170

/-! ## A196931.P2757578164151900783

`A286471(2*A334437(n))`
-/

namespace A196931.P2757578164151900783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286471 (2 * A334437 n).toNat

end

end A196931.P2757578164151900783

/-!
# A196933: Column 9 of array A195825. Also column 1 of triangle A195843. Also 1 together with the row sums of triangle A195843.

The programs for A196933, there is no canonical definition to state claims against.
-/

/-! ## A196933.P3065178941086077404

`A210964(lt[A039991(3*n+2), A327997(n+1)])`
-/

namespace A196933.P3065178941086077404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210964 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196933.P3065178941086077404

/-! ## A196933.P17412998517134755247

`A210964(A007095(n)%A164288(n+1))`
-/

namespace A196933.P17412998517134755247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210964 (Int.tmod (A007095 n) (A164288 (n + 1))).toNat

end

end A196933.P17412998517134755247

/-! ## A196933.P1027114053821622326

`A210964(comp[A117817(3*n+5)])`
-/

namespace A196933.P1027114053821622326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117817 (3 * n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210964 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A196933.P1027114053821622326

/-!
# A196934: a(n) is the first occurrence of n in sequence A078498.

The programs for A196934, there is no canonical definition to state claims against.
-/

/-! ## A196934.P673331398396656637

`A000720(A139602(1+n))`
-/

namespace A196934.P673331398396656637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A139602 (1 + n)).toNat

end

end A196934.P673331398396656637

/-! ## A196934.P10380586936896466305

`A061395(2*A139602(n+1))`
-/

namespace A196934.P10380586936896466305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A139602 (n + 1)).toNat

end

end A196934.P10380586936896466305

/-! ## A196934.P9495362228958986974

`A326846(or(1, A139602(n+1)))`
-/

namespace A196934.P9495362228958986974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326846 (Int.lor 1 (A139602 (n + 1))).toNat

end

end A196934.P9495362228958986974

/-! ## A196934.P6143957257094521358

`∑{d}[A139602(n+1), A061395(#)]`
-/

namespace A196934.P6143957257094521358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A196934.P6143957257094521358

/-! ## A196934.P16644763812353795909

`A326846(2*A139602(n+1))/2`
-/

namespace A196934.P16644763812353795909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326846 (2 * A139602 (n + 1)).toNat : ℚ) / 2

end

end A196934.P16644763812353795909

/-!
# A196935: a(n) is the number of arithmetic progressions prime chains in the form of p(n)-6k, p(n), p(n)+6k, while k > 0 and p(n) > 6k.

The programs for A196935, there is no canonical definition to state claims against.
-/

/-! ## A196935.P2193046196728951647

`A171611(A240710(3+n))-1`
-/

namespace A196935.P2193046196728951647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171611 (A240710 (3 + n)).toNat - 1

end

end A196935.P2193046196728951647

/-! ## A196935.P13938227437882893827

`A171611(A065091(4+n))-1`
-/

namespace A196935.P13938227437882893827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171611 (A065091 (4 + n)).toNat - 1

end

end A196935.P13938227437882893827

/-! ## A196935.P4150014648216206379

`A171611(A000040(5+n))-1`
-/

namespace A196935.P4150014648216206379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171611 (A000040 (5 + n)).toNat - 1

end

end A196935.P4150014648216206379

/-! ## A196935.P9869583013648875322

`A171611(A006005(n+5))-1`
-/

namespace A196935.P9869583013648875322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171611 (A006005 (n + 5)).toNat - 1

end

end A196935.P9869583013648875322

/-!
# A196936: a(n) is the first occurrence of n in sequence A196935.

The programs for A196936, there is no canonical definition to state claims against.
-/

/-! ## A196936.P14645136540959082878

`A065091(n+1)+A049837(A001680(n))`
-/

namespace A196936.P14645136540959082878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A049837 (A001680 n).toNat

end

end A196936.P14645136540959082878

/-! ## A196936.P13212228782158202705

`A049837(A001680(n))+A000040(n+2)`
-/

namespace A196936.P13212228782158202705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049837 (A001680 n).toNat + A000040 (n + 2)

end

end A196936.P13212228782158202705

/-!
# A196938: a(n) is the prime number that is the center element (3rd) of a 5-terms arithmetic progression prime chain.

The programs for A196938, there is no canonical definition to state claims against.
-/

/-! ## A196938.P17936891615507489292

`A000040(A196939(1+n))`
-/

namespace A196938.P17936891615507489292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A196939 (1 + n)).toNat

end

end A196938.P17936891615507489292

/-! ## A196938.P11842671327183227041

`A008578(1+A196939(1+n))`
-/

namespace A196938.P11842671327183227041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (1 + A196939 (1 + n)).toNat

end

end A196938.P11842671327183227041

/-! ## A196938.P11525115329750921422

`A045344(A196939(n+1)-1)`
-/

namespace A196938.P11525115329750921422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A196939 (n + 1) - 1).toNat

end

end A196938.P11525115329750921422

/-! ## A196938.P5750913711336265931

`A065091(A196939(n+1)-1)`
-/

namespace A196938.P5750913711336265931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A196939 (n + 1) - 1).toNat

end

end A196938.P5750913711336265931

/-! ## A196938.P9325256115124796484

`A004139(A196939(n+1)-2)`
-/

namespace A196938.P9325256115124796484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A196939 (n + 1) - 2).toNat

end

end A196938.P9325256115124796484

/-! ## A196938.P1749521186786599228

`A082500(2*A196939(n+1))`
-/

namespace A196938.P1749521186786599228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A196939 (n + 1)).toNat

end

end A196938.P1749521186786599228

/-!
# A196939: a(n) is the prime order number of A196938.

The programs for A196939, there is no canonical definition to state claims against.
-/

/-! ## A196939.P6381711168560546093

`A000720(A196938(1+n))`
-/

namespace A196939.P6381711168560546093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A196938 (1 + n)).toNat

end

end A196939.P6381711168560546093

/-! ## A196939.P4594512933107091054

`A003963(2*A196938(n+1))`
-/

namespace A196939.P4594512933107091054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A196938 (n + 1)).toNat

end

end A196939.P4594512933107091054

/-!
# A196940: Primes of the form 15*2^k - 1.

The programs for A196940, there is no canonical definition to state claims against.
-/

/-! ## A196940.P11854506163602325031

`A196305(A002237(n+1))`
-/

namespace A196940.P11854506163602325031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196305 (A002237 (n + 1)).toNat

end

end A196940.P11854506163602325031

/-! ## A196940.P2384482616502766936

`∩[A165255(n+1), A196305(n)]`
-/

namespace A196940.P2384482616502766936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196940.P2384482616502766936

/-! ## A196940.P13490773839714446476

`∩[A095078(n+1), A196305(n)]`
-/

namespace A196940.P13490773839714446476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196940.P13490773839714446476

/-! ## A196940.P3498882205182504974

`∩[A181741(n+1), A196305(n)]`
-/

namespace A196940.P3498882205182504974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196305 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196940.P3498882205182504974

/-! ## A196940.P11662035049540616636

`∩[A196305(n), A293425(n+1)]`
-/

namespace A196940.P11662035049540616636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196305 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196940.P11662035049540616636

/-!
# A196941: a(n) is the minimum prime (or 1) needed to write integer n into the form n = a + b such that all prime factors of a and b are smaller or equal to a(n).

The programs for A196941, there is no canonical definition to state claims against.
-/

/-! ## A196941.P11860431291763373249

`ceil(ϕ^A196942(n+2))`
-/

namespace A196941.P11860431291763373249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ (A196942 (n + 2) : ℤ)⌉

end

end A196941.P11860431291763373249

/-! ## A196941.P3044678174112623516

`floor(A057427(n)+ϕ^A196942(n+2))`
-/

namespace A196941.P3044678174112623516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 n : ℝ) + Real.goldenRatio ^ (A196942 (n + 2) : ℤ)⌋

end

end A196941.P3044678174112623516

/-! ## A196941.P6752338926824579479

`A008578(A196942(n+2)+gcd(n, n+1))`
-/

namespace A196941.P6752338926824579479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A196942 (n + 2) + (Nat.gcd n (n + 1) : ℤ)).toNat

end

end A196941.P6752338926824579479

/-! ## A196941.P7335989493291590289

`A000041(A196942(n+2)+ceil(1/(n+1)))`
-/

namespace A196941.P7335989493291590289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A196942 (n + 2) + ⌈1 / (n + 1 : ℚ)⌉).toNat

end

end A196941.P7335989493291590289

/-! ## A196941.P939811696659169752

`A005728(A178334(n)*A196942(n+2))`
-/

namespace A196941.P939811696659169752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (A178334 n * A196942 (n + 2)).toNat

end

end A196941.P939811696659169752

/-! ## A196941.P9474076176579662927

`A052955(A178334(n)*A196942(n+2))`
-/

namespace A196941.P9474076176579662927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A178334 n * A196942 (n + 2)).toNat

end

end A196941.P9474076176579662927

/-!
# A196942: a(n) is the prime order of sequence A196941.

The programs for A196942, there is no canonical definition to state claims against.
-/

/-! ## A196942.P3005590004477983735

`53%A196941(n+2)`
-/

namespace A196942.P3005590004477983735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 53 (A196941 (n + 2))

end

end A196942.P3005590004477983735

/-! ## A196942.P6709292708583375987

`A000720(A196941(2+n))`
-/

namespace A196942.P6709292708583375987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A196941 (2 + n)).toNat

end

end A196942.P6709292708583375987

/-! ## A196942.P6883697960176201373

`A000193(A196941(n+2)²)`
-/

namespace A196942.P6883697960176201373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (A196941 (n + 2) ^ 2).toNat

end

end A196942.P6883697960176201373

/-! ## A196942.P4932058355519577928

`A055396(A196941(n+2)²)`
-/

namespace A196942.P4932058355519577928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A196941 (n + 2) ^ 2).toNat

end

end A196942.P4932058355519577928

/-! ## A196942.P16805841442874751960

`A056811(A196941(n+2)²)`
-/

namespace A196942.P16805841442874751960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A196941 (n + 2) ^ 2).toNat

end

end A196942.P16805841442874751960

/-! ## A196942.P5122907858338974607

`A061395(A196941(n+2)²)`
-/

namespace A196942.P5122907858338974607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A196941 (n + 2) ^ 2).toNat

end

end A196942.P5122907858338974607

/-! ## A196942.P18320486310786722180

`A334107(A196941(n+2)²)`
-/

namespace A196942.P18320486310786722180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334107 (A196941 (n + 2) ^ 2).toNat

end

end A196942.P18320486310786722180

/-! ## A196942.P13840640417681415001

`A001221(A196941(n+2)!)`
-/

namespace A196942.P13840640417681415001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A196941 (n + 2)).toNat)

end

end A196942.P13840640417681415001

/-! ## A196942.P5456643039914123093

`A056943(A196941(n+2)+1)`
-/

namespace A196942.P5456643039914123093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056943 (A196941 (n + 2) + 1).toNat

end

end A196942.P5456643039914123093

/-!
# A196944: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,1,0,2,3 for x=0,1,2,3,4.

The programs for A196944, there is no canonical definition to state claims against.
-/

/-! ## A196944.P15878383341954265783

`A196950(∑[4*n]+1)`
-/

namespace A196944.P15878383341954265783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196944.P15878383341954265783

/-! ## A196944.P2736919978836259723

`∑{digits}[n, A196950(A001844(#))]`
-/

namespace A196944.P2736919978836259723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A196950 (A001844 x).toNat).sum

end

end A196944.P2736919978836259723

/-! ## A196944.P4334847585411985307

`record[A196950(A272267(n+1))]`
-/

namespace A196944.P4334847585411985307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196944.P4334847585411985307

/-! ## A196944.P17532805438600298647

`record[A196950(A330613(n+1))]`
-/

namespace A196944.P17532805438600298647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196944.P17532805438600298647

/-!
# A196945: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,0,2,3 for x=0,1,2,3,4.

The programs for A196945, there is no canonical definition to state claims against.
-/

/-! ## A196945.P13619583136917552848

`A196950(∑[n+2]+4)`
-/

namespace A196945.P13619583136917552848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196945.P13619583136917552848

/-!
# A196946: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,0,2,3 for x=0,1,2,3,4.

The programs for A196946, there is no canonical definition to state claims against.
-/

/-! ## A196946.P2957465191618656550

`A196950(A374004(n+1))`
-/

namespace A196946.P2957465191618656550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (A374004 (n + 1)).toNat

end

end A196946.P2957465191618656550

/-! ## A196946.P11937719625850390777

`A196950(A141214(n+1))`
-/

namespace A196946.P11937719625850390777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (A141214 (n + 1)).toNat

end

end A196946.P11937719625850390777

/-!
# A196947: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,0,2,3 for x=0,1,2,3,4.

The programs for A196947, there is no canonical definition to state claims against.
-/

/-! ## A196947.P9711489523027634792

`A196950(A374005(n+1))`
-/

namespace A196947.P9711489523027634792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (A374005 (n + 1)).toNat

end

end A196947.P9711489523027634792

/-!
# A196948: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,0,2,3 for x=0,1,2,3,4.

The programs for A196948, there is no canonical definition to state claims against.
-/

/-! ## A196948.P3809503085376881206

`A196950(A374007(n+1))`
-/

namespace A196948.P3809503085376881206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (A374007 (n + 1)).toNat

end

end A196948.P3809503085376881206

/-!
# A196949: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,0,2,3 for x=0,1,2,3,4.

The programs for A196949, there is no canonical definition to state claims against.
-/

/-! ## A196949.P3823473599373406075

`A196950(eq[2*col(n), 12]+1)`
-/

namespace A196949.P3823473599373406075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.triCol n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A196949.P3823473599373406075

/-!
# A196950: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,1,0,2,3 for x=0,1,2,3,4.

The programs for A196950, there is no canonical definition to state claims against.
-/

/-! ## A196950.P17331528239374973623

`xor(A196856(n+1), A334045(A022166(n)))`
-/

namespace A196950.P17331528239374973623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A196856 (n + 1)) (A334045 (A022166 n).toNat)

end

end A196950.P17331528239374973623

/-! ## A196950.P9356580629006697958

`A334045(A304894(n+1))+A196856(n+1)`
-/

namespace A196950.P9356580629006697958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334045 (A304894 (n + 1)).toNat + A196856 (n + 1)

end

end A196950.P9356580629006697958

/-! ## A196950.P4035497974702883574

`A196707(n+1)+A090037(n+1)%A249026(n)`
-/

namespace A196950.P4035497974702883574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (n + 1) + Int.tmod (A090037 (n + 1)) (A249026 n)

end

end A196950.P4035497974702883574

/-! ## A196950.P11047491313017705577

`A196856(A043320(n+1))+A105570(A081134(n+1))`
-/

namespace A196950.P11047491313017705577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (A043320 (n + 1)).toNat + A105570 (A081134 (n + 1)).toNat

end

end A196950.P11047491313017705577

/-!
# A196951: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,1,3,4,0 for x=0,1,2,3,4.

The programs for A196951, there is no canonical definition to state claims against.
-/

/-! ## A196951.P15658910455702087290

`A196957(∑[4*n]+1)`
-/

namespace A196951.P15658910455702087290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196951.P15658910455702087290

/-! ## A196951.P5237627617872538657

`record[A196957(Δ[A235355(n)])]`
-/

namespace A196951.P5237627617872538657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196951.P5237627617872538657

/-! ## A196951.P9786032877163348078

`record[A196957(A330613(n+1))]`
-/

namespace A196951.P9786032877163348078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196951.P9786032877163348078

/-! ## A196951.P2096310523784493059

`record[gcd(A003987(n), A196957(n+1))]`
-/

namespace A196951.P2096310523784493059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A196957 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196951.P2096310523784493059

/-!
# A196952: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,3,4,0 for x=0,1,2,3,4.

The programs for A196952, the canonical program `A196952.P8065118278272603140` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196952 has offset 1).

The definition of A196952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196952.P8065118278272603140

`ogf((3+6x+5x^2+x^3-11x^4-12x^5+2x^6+6x^7+2x^8-x^9)/(1-x-4x^2-8x^3-10x^4-x^5+9x^6+6x^7-x^9))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196952

/-- `ogf((3+6x+5x^2+x^3-11x^4-12x^5+2x^6+6x^7+2x^8-x^9)/(1-x-4x^2-8x^3-10x^4-x^5+9x^6+6x^7-x^9))` -/
def P8065118278272603140.Spec : Prop :=
  ∀ n, P8065118278272603140.a n = A196952 (n + 1)

theorem P8065118278272603140.correct : P8065118278272603140.Spec := by
  intro n
  simp only [A196952, Nat.add_sub_cancel]

end A196952

/-! ## A196952.P10441426543600693578

`A196957(∑[n+2]+4)`
-/

namespace A196952.P10441426543600693578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196952.P10441426543600693578

namespace A196952

/-- `A196957(∑[n+2]+4)` -/
def P10441426543600693578.Spec : Prop :=
  ∀ n, P10441426543600693578.a n = A196952 (n + 1)

end A196952

/-!
# A196953: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,3,4,0 for x=0,1,2,3,4.

The programs for A196953, there is no canonical definition to state claims against.
-/

/-! ## A196953.P14956033761582185318

`A196957(A374004(n+1))`
-/

namespace A196953.P14956033761582185318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (A374004 (n + 1)).toNat

end

end A196953.P14956033761582185318

/-! ## A196953.P7589883113240280096

`A196957(A141214(n+1))`
-/

namespace A196953.P7589883113240280096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (A141214 (n + 1)).toNat

end

end A196953.P7589883113240280096

/-!
# A196954: Number of n X 5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,3,4,0 for x=0,1,2,3,4.

The programs for A196954, there is no canonical definition to state claims against.
-/

/-! ## A196954.P5120792954016319995

`A196957(A374005(n+1))`
-/

namespace A196954.P5120792954016319995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (A374005 (n + 1)).toNat

end

end A196954.P5120792954016319995

/-! ## A196954.P10572413123487215219

`A196957(Δ[A264443(n)])`
-/

namespace A196954.P10572413123487215219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (f1 (n + 1) - f1 n).toNat

end

end A196954.P10572413123487215219

/-!
# A196955: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,3,4,0 for x=0,1,2,3,4.

The programs for A196955, there is no canonical definition to state claims against.
-/

/-! ## A196955.P3332967379738847888

`A196957(A374007(n+1))`
-/

namespace A196955.P3332967379738847888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (A374007 (n + 1)).toNat

end

end A196955.P3332967379738847888

/-!
# A196956: Number of n X 7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,3,4,0 for x=0,1,2,3,4.

The programs for A196956, there is no canonical definition to state claims against.
-/

/-! ## A196956.P4275663091931557962

`A196957(A374008(n+1))`
-/

namespace A196956.P4275663091931557962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196957 (A374008 (n + 1)).toNat

end

end A196956.P4275663091931557962

/-!
# A196957: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,1,3,4,0 for x=0,1,2,3,4.

The programs for A196957, there is no canonical definition to state claims against.
-/

/-! ## A196957.P2712202004530577049

`A321936(A174116(n))+A196436(n+1)`
-/

namespace A196957.P2712202004530577049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (A174116 n).toNat + A196436 (n + 1)

end

end A196957.P2712202004530577049

/-! ## A196957.P11012448738573172166

`A321936(A174116(n))+A197199(n+1)`
-/

namespace A196957.P11012448738573172166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (A174116 n).toNat + A197199 (n + 1)

end

end A196957.P11012448738573172166

/-! ## A196957.P13637934522750239615

`A295120(n+1)+A051765(A098446(n))`
-/

namespace A196957.P13637934522750239615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295120 (n + 1) + A051765 (A098446 n).toNat

end

end A196957.P13637934522750239615

/-! ## A196957.P6431381388994004947

`A342591(A196436(n+1))`
-/

namespace A196957.P6431381388994004947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342591 (A196436 (n + 1)).toNat

end

end A196957.P6431381388994004947

/-!
# A196958: E.g.f. satisfies: A(x) = Sum_{n>=0} 1/n! * Sum_{k=0..n} (-1)^(n-k) * C(n,k) * (1 + x/A(x)^k)^k.

The programs for A196958, there is no canonical definition to state claims against.
-/

/-! ## A196958.P14104062229725585004

`or(A046817(A131293(n)), A361097(n))`
-/

namespace A196958.P14104062229725585004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046817 (A131293 n).toNat) (A361097 n)

end

end A196958.P14104062229725585004

/-!
# A196959: E.g.f. satisfies: A(x) = Sum_{n>=0} 1/n! * Sum_{k=0..n} (-1)^(n-k) * C(n,k) * (1 + x*A(x)^(2*k))^k.

The programs for A196959, there is no canonical definition to state claims against.
-/

/-! ## A196959.P2560966990766479049

`A189887(A001333(∑[n]))`
-/

namespace A196959.P2560966990766479049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189887 (A001333 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A196959.P2560966990766479049

/-!
# A196960: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,1,2,0,3 for x=0,1,2,3,4.

The programs for A196960, there is no canonical definition to state claims against.
-/

/-! ## A196960.P11888508252701247028

`A196967(∑[4*n]+1)`
-/

namespace A196960.P11888508252701247028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196960.P11888508252701247028

/-! ## A196960.P324932528483968257

`record[A196967(A330613(n+1))]`
-/

namespace A196960.P324932528483968257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196960.P324932528483968257

/-! ## A196960.P11811424567771827901

`record[A196967(or(1, A227041(n+1)))]`
-/

namespace A196960.P11811424567771827901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (Int.lor 1 (A227041 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196960.P11811424567771827901

/-!
# A196961: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,2,0,3 for x=0,1,2,3,4.

The programs for A196961, the canonical program `A196961.P6766236495465359988` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196961 has offset 1).

The definition of A196961 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196961.P6766236495465359988

`ogf((2+2x-3x^2-4x^3-8x^4-5x^5+4x^6)/(1-2x-3x^2-2x^3+5x^5+3x^6-2x^7))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196961

/-- `ogf((2+2x-3x^2-4x^3-8x^4-5x^5+4x^6)/(1-2x-3x^2-2x^3+5x^5+3x^6-2x^7))` -/
def P6766236495465359988.Spec : Prop :=
  ∀ n, P6766236495465359988.a n = A196961 (n + 1)

theorem P6766236495465359988.correct : P6766236495465359988.Spec := by
  intro n
  simp only [A196961, Nat.add_sub_cancel]

end A196961

/-! ## A196961.P7742864533751117667

`A196967(∑[n+1]+2)`
-/

namespace A196961.P7742864533751117667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196961.P7742864533751117667

namespace A196961

/-- `A196967(∑[n+1]+2)` -/
def P7742864533751117667.Spec : Prop :=
  ∀ n, P7742864533751117667.a n = A196961 (n + 1)

end A196961

/-! ## A196961.P5811898179563724967

`record[A196967(A114091(n+1)+1)]`
-/

namespace A196961.P5811898179563724967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196961.P5811898179563724967

namespace A196961

/-- `record[A196967(A114091(n+1)+1)]` -/
def P5811898179563724967.Spec : Prop :=
  ∀ n, P5811898179563724967.a n = A196961 (n + 1)

end A196961

/-! ## A196961.P16554951359403399360

`record[A010054(n)*A196967(n+2)]`
-/

namespace A196961.P16554951359403399360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A196967 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196961.P16554951359403399360

namespace A196961

/-- `record[A010054(n)*A196967(n+2)]` -/
def P16554951359403399360.Spec : Prop :=
  ∀ n, P16554951359403399360.a n = A196961 (n + 1)

end A196961

/-!
# A196962: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,2,0,3 for x=0,1,2,3,4.

The programs for A196962, there is no canonical definition to state claims against.
-/

/-! ## A196962.P3222633895421770717

`A196967(∑[n+2]+4)`
-/

namespace A196962.P3222633895421770717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196962.P3222633895421770717

/-!
# A196963: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,2,0,3 for x=0,1,2,3,4.

The programs for A196963, there is no canonical definition to state claims against.
-/

/-! ## A196963.P3422332589736863727

`A196967(A374004(n+1))`
-/

namespace A196963.P3422332589736863727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (A374004 (n + 1)).toNat

end

end A196963.P3422332589736863727

/-! ## A196963.P440696696439095026

`A196967(A141214(n+1))`
-/

namespace A196963.P440696696439095026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (A141214 (n + 1)).toNat

end

end A196963.P440696696439095026

/-!
# A196964: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,2,0,3 for x=0,1,2,3,4.

The programs for A196964, there is no canonical definition to state claims against.
-/

/-! ## A196964.P12565217725267191896

`A196967(A374005(n+1))`
-/

namespace A196964.P12565217725267191896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (A374005 (n + 1)).toNat

end

end A196964.P12565217725267191896

/-! ## A196964.P14722000763311683449

`A196967(Δ[A264443(n)])`
-/

namespace A196964.P14722000763311683449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (f1 (n + 1) - f1 n).toNat

end

end A196964.P14722000763311683449

/-!
# A196965: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,2,0,3 for x=0,1,2,3,4.

The programs for A196965, there is no canonical definition to state claims against.
-/

/-! ## A196965.P16505920566759654852

`A196967(A374007(n+1))`
-/

namespace A196965.P16505920566759654852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (A374007 (n + 1)).toNat

end

end A196965.P16505920566759654852

/-!
# A196966: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,2,0,3 for x=0,1,2,3,4.

The programs for A196966, there is no canonical definition to state claims against.
-/

/-! ## A196966.P56747621800412613

`A196967(A374008(n+1))`
-/

namespace A196966.P56747621800412613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196967 (A374008 (n + 1)).toNat

end

end A196966.P56747621800412613

/-!
# A196967: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,1,2,0,3 for x=0,1,2,3,4.

The programs for A196967, there is no canonical definition to state claims against.
-/

/-! ## A196967.P7449293207661487818

`A168134(A183474(n+1))`
-/

namespace A196967.P7449293207661487818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168134 (A183474 (n + 1)).toNat

end

end A196967.P7449293207661487818

/-! ## A196967.P16110413357009787293

`A283738(A220602(n+1))+A055376(n)`
-/

namespace A196967.P16110413357009787293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283738 (A220602 (n + 1)).toNat + A055376 n

end

end A196967.P16110413357009787293

/-!
# A196968: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,3,0,2,1 for x=0,1,2,3,4.

The programs for A196968, there is no canonical definition to state claims against.
-/

/-! ## A196968.P11248205535244758548

`A196974(∑[4*n]+1)`
-/

namespace A196968.P11248205535244758548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196968.P11248205535244758548

/-! ## A196968.P13265159119595445421

`record[A196974(Δ[A235355(n)])]`
-/

namespace A196968.P13265159119595445421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196968.P13265159119595445421

/-! ## A196968.P6432564104325348594

`record[A196974(A330613(n+1))]`
-/

namespace A196968.P6432564104325348594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196968.P6432564104325348594

/-! ## A196968.P14412487754099273232

`record[A196974(abs(A069480(n+1)))]`
-/

namespace A196968.P14412487754099273232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 |A069480 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196968.P14412487754099273232

/-!
# A196969: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,0,2,1 for x=0,1,2,3,4.

The programs for A196969, there is no canonical definition to state claims against.
-/

/-! ## A196969.P13883080834872490997

`A196974(∑[n+2]+4)`
-/

namespace A196969.P13883080834872490997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196969.P13883080834872490997

/-!
# A196970: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,0,2,1 for x=0,1,2,3,4.

The programs for A196970, there is no canonical definition to state claims against.
-/

/-! ## A196970.P2429303422842715772

`A196974(A374004(n+1))`
-/

namespace A196970.P2429303422842715772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (A374004 (n + 1)).toNat

end

end A196970.P2429303422842715772

/-! ## A196970.P11029797359147260420

`A196974(A141214(n+1))`
-/

namespace A196970.P11029797359147260420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (A141214 (n + 1)).toNat

end

end A196970.P11029797359147260420

/-!
# A196971: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,0,2,1 for x=0,1,2,3,4.

The programs for A196971, there is no canonical definition to state claims against.
-/

/-! ## A196971.P14586325628433317457

`A196974(eq[5, 1+col(n)]+1)`
-/

namespace A196971.P14586325628433317457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A196971.P14586325628433317457

/-!
# A196972: Number of n X 6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,0,2,1 for x=0,1,2,3,4.

The programs for A196972, there is no canonical definition to state claims against.
-/

/-! ## A196972.P6568352143371176018

`A196974(∑[n+5]+16)`
-/

namespace A196972.P6568352143371176018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A196972.P6568352143371176018

/-! ## A196972.P16040169165165657783

`A196974(eq[7, A131818(n+1)])*A278657(n)`
-/

namespace A196972.P16040169165165657783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) * A278657 n

end

end A196972.P16040169165165657783

/-!
# A196973: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,0,2,1 for x=0,1,2,3,4.

The programs for A196973, there is no canonical definition to state claims against.
-/

/-! ## A196973.P4712660272600181768

`A196974(A374008(n+1))`
-/

namespace A196973.P4712660272600181768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196974 (A374008 (n + 1)).toNat

end

end A196973.P4712660272600181768

/-!
# A196974: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,3,0,2,1 for x=0,1,2,3,4.

The programs for A196974, there is no canonical definition to state claims against.
-/

/-! ## A196974.P17771452159595473282

`A197561(n+1)-A186034(A022167(n))`
-/

namespace A196974.P17771452159595473282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (n + 1) - A186034 (A022167 n).toNat

end

end A196974.P17771452159595473282

/-! ## A196974.P7599822525288802381

`A197561(n+1)-A033264(A176791(n))`
-/

namespace A196974.P7599822525288802381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (n + 1) - A033264 (A176791 n).toNat

end

end A196974.P7599822525288802381

/-! ## A196974.P11334677172739164524

`A197561(n+1)-A124763(A099594(n))`
-/

namespace A196974.P11334677172739164524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (n + 1) - A124763 (A099594 n).toNat

end

end A196974.P11334677172739164524

/-! ## A196974.P3189976709842231462

`A197561(n+1)-A124763(A174545(n))`
-/

namespace A196974.P3189976709842231462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (n + 1) - A124763 (A174545 n).toNat

end

end A196974.P3189976709842231462

/-! ## A196974.P12639045432349348377

`A197561(n+1)-A163510(A157273(n))`
-/

namespace A196974.P12639045432349348377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197561 (n + 1) - A163510 (A157273 n).toNat

end

end A196974.P12639045432349348377

/-!
# A196975: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,2,1,0,4 for x=0,1,2,3,4.

The programs for A196975, there is no canonical definition to state claims against.
-/

/-! ## A196975.P16275496036704846083

`A196982(∑[4*n]+1)`
-/

namespace A196975.P16275496036704846083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196975.P16275496036704846083

/-!
# A196976: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,1,0,4 for x=0,1,2,3,4.

The programs for A196976, the canonical program `A196976.P16543112779948657909` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196976 has offset 1).

The definition of A196976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196976.P13496785693780383838

`ogf((1+3x+3x^2-2x^4-x^5)/(1-2x-x^2-4x^3+2x^4+x^6))`
-/

namespace A196976.P13496785693780383838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3, 0, -2, -1] [1, -2, -1, -4, 2, 0, 1] n

end

end A196976.P13496785693780383838

namespace A196976

/-- `ogf((1+3x+3x^2-2x^4-x^5)/(1-2x-x^2-4x^3+2x^4+x^6))` -/
def P13496785693780383838.Spec : Prop :=
  ∀ n, P13496785693780383838.a n = A196976 (n + 1)

end A196976

/-! ## A196976.P16543112779948657909

`2*a(n-1)+a(n-2)+4*a(n-3)-2*a(n-4)-a(n-6)` with `a(0)=1, a(1)=5, a(2)=14, a(3)=37, a(4)=104, a(5)=290`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196976

/-- `2*a(n-1)+a(n-2)+4*a(n-3)-2*a(n-4)-a(n-6)` -/
def P16543112779948657909.Spec : Prop :=
  ∀ n, P16543112779948657909.a n = A196976 (n + 1)

theorem P16543112779948657909.correct : P16543112779948657909.Spec := by
  intro n
  simp only [A196976, Nat.add_sub_cancel]

end A196976

/-! ## A196976.P13973191163677940591

`A196982(∑[n+1]+2)`
-/

namespace A196976.P13973191163677940591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196976.P13973191163677940591

namespace A196976

/-- `A196982(∑[n+1]+2)` -/
def P13973191163677940591.Spec : Prop :=
  ∀ n, P13973191163677940591.a n = A196976 (n + 1)

end A196976

/-! ## A196976.P13073910656395765501

`A197167(∑[n+1]+2)`
-/

namespace A196976.P13073910656395765501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196976.P13073910656395765501

namespace A196976

/-- `A197167(∑[n+1]+2)` -/
def P13073910656395765501.Spec : Prop :=
  ∀ n, P13073910656395765501.a n = A196976 (n + 1)

end A196976

/-! ## A196976.P10353546877445092194

`record[A010054(n)*A197167(n+2)]`
-/

namespace A196976.P10353546877445092194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A197167 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196976.P10353546877445092194

namespace A196976

/-- `record[A010054(n)*A197167(n+2)]` -/
def P10353546877445092194.Spec : Prop :=
  ∀ n, P10353546877445092194.a n = A196976 (n + 1)

end A196976

/-!
# A196977: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,1,0,4 for x=0,1,2,3,4.

The programs for A196977, there is no canonical definition to state claims against.
-/

/-! ## A196977.P565901275814795340

`A196982(∑[n+2]+4)`
-/

namespace A196977.P565901275814795340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196977.P565901275814795340

/-!
# A196978: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,1,0,4 for x=0,1,2,3,4.

The programs for A196978, there is no canonical definition to state claims against.
-/

/-! ## A196978.P13813387328291975736

`A196982(A374004(n+1))`
-/

namespace A196978.P13813387328291975736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (A374004 (n + 1)).toNat

end

end A196978.P13813387328291975736

/-! ## A196978.P17145815259297427651

`A196982(A141214(n+1))`
-/

namespace A196978.P17145815259297427651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (A141214 (n + 1)).toNat

end

end A196978.P17145815259297427651

/-!
# A196979: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,1,0,4 for x=0,1,2,3,4.

The programs for A196979, there is no canonical definition to state claims against.
-/

/-! ## A196979.P15269973382742210710

`A196982(A374005(n+1))`
-/

namespace A196979.P15269973382742210710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (A374005 (n + 1)).toNat

end

end A196979.P15269973382742210710

/-!
# A196980: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,1,0,4 for x=0,1,2,3,4.

The programs for A196980, there is no canonical definition to state claims against.
-/

/-! ## A196980.P7806872212859844647

`A196982(A374007(n+1))`
-/

namespace A196980.P7806872212859844647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (A374007 (n + 1)).toNat

end

end A196980.P7806872212859844647

/-!
# A196981: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,1,0,4 for x=0,1,2,3,4.

The programs for A196981, there is no canonical definition to state claims against.
-/

/-! ## A196981.P16391870847500866306

`A196982(A374008(n+1))`
-/

namespace A196981.P16391870847500866306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196982 (A374008 (n + 1)).toNat

end

end A196981.P16391870847500866306

/-!
# A196982: T(n,k) = Number of n X k 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,2,1,0,4 for x=0,1,2,3,4.

The programs for A196982, there is no canonical definition to state claims against.
-/

/-! ## A196982.P9628180874410088774

`A197167(n+1)+A016389(A022166(n))`
-/

namespace A196982.P9628180874410088774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (n + 1) + A016389 (A022166 n).toNat

end

end A196982.P9628180874410088774

/-! ## A196982.P10027165484930986170

`A197167(n+1)+A016389(A176561(n))`
-/

namespace A196982.P10027165484930986170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (n + 1) + A016389 (A176561 n).toNat

end

end A196982.P10027165484930986170

/-! ## A196982.P4136104050889832821

`A197167(n+1)-A007814(A157156(n))`
-/

namespace A196982.P4136104050889832821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (n + 1) - A007814 (A157156 n).toNat

end

end A196982.P4136104050889832821

/-! ## A196982.P6103433266270432162

`A197167(n+1)-A178798(A039756(n))`
-/

namespace A196982.P6103433266270432162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (n + 1) - A178798 (A039756 n).toNat

end

end A196982.P6103433266270432162

/-! ## A196982.P12807539546103107581

`A197167(n+1)-A212619(A046937(n))`
-/

namespace A196982.P12807539546103107581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197167 (n + 1) - A212619 (A046937 n).toNat

end

end A196982.P12807539546103107581

/-!
# A196983: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,3,4,1,0 for x=0,1,2,3,4.

The programs for A196983, there is no canonical definition to state claims against.
-/

/-! ## A196983.P9594837196987722724

`A196989(∑[4*n]+1)`
-/

namespace A196983.P9594837196987722724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196983.P9594837196987722724

/-!
# A196984: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,3,4,1,0 for x=0,1,2,3,4.

The programs for A196984, the canonical program `A196984.P12298764667074421899` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196984 has offset 1).

The definition of A196984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196984.P12298764667074421899

`ogf((1+2x+5x^2+3x^3+7x^4+4x^5-3x^6-5x^7-2x^8)/(1-x-2x^2-6x^3-11x^4-14x^5-4x^6+4x^7+4x^8+x^9))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196984

/-- `ogf((1+2x+5x^2+3x^3+7x^4+4x^5-3x^6-5x^7-2x^8)/(1-x-2x^2-6x^3-11x^4-14x^5-4x^6+4x^7+4x^8+x^9))` -/
def P12298764667074421899.Spec : Prop :=
  ∀ n, P12298764667074421899.a n = A196984 (n + 1)

theorem P12298764667074421899.correct : P12298764667074421899.Spec := by
  intro n
  simp only [A196984, Nat.add_sub_cancel]

end A196984

/-! ## A196984.P5137924267297415708

`A196989(∑[n+2]+4)`
-/

namespace A196984.P5137924267297415708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196984.P5137924267297415708

namespace A196984

/-- `A196989(∑[n+2]+4)` -/
def P5137924267297415708.Spec : Prop :=
  ∀ n, P5137924267297415708.a n = A196984 (n + 1)

end A196984

/-!
# A196985: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,3,4,1,0 for x=0,1,2,3,4.

The programs for A196985, there is no canonical definition to state claims against.
-/

/-! ## A196985.P784613038068496791

`A196989(A374004(n+1))`
-/

namespace A196985.P784613038068496791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (A374004 (n + 1)).toNat

end

end A196985.P784613038068496791

/-! ## A196985.P7307101793309170499

`A196989(A141214(n+1))`
-/

namespace A196985.P7307101793309170499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (A141214 (n + 1)).toNat

end

end A196985.P7307101793309170499

/-!
# A196986: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,3,4,1,0 for x=0,1,2,3,4.

The programs for A196986, there is no canonical definition to state claims against.
-/

/-! ## A196986.P1148317590383672528

`A196989(A374005(n+1))`
-/

namespace A196986.P1148317590383672528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (A374005 (n + 1)).toNat

end

end A196986.P1148317590383672528

/-! ## A196986.P14650110973776303407

`record[A196989(A077169(A028242(n)))]`
-/

namespace A196986.P14650110973776303407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (A077169 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196986.P14650110973776303407

/-! ## A196986.P5008303833893572274

`record[A196989(A077169(A028920(n)))]`
-/

namespace A196986.P5008303833893572274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (A077169 (A028920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196986.P5008303833893572274

/-!
# A196987: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,3,4,1,0 for x=0,1,2,3,4.

The programs for A196987, there is no canonical definition to state claims against.
-/

/-! ## A196987.P14876624078597501829

`A196989(A374007(n+1))`
-/

namespace A196987.P14876624078597501829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (A374007 (n + 1)).toNat

end

end A196987.P14876624078597501829

/-!
# A196988: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,3,4,1,0 for x=0,1,2,3,4.

The programs for A196988, there is no canonical definition to state claims against.
-/

/-! ## A196988.P8087780233204058838

`A196989(A374008(n+1))`
-/

namespace A196988.P8087780233204058838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196989 (A374008 (n + 1)).toNat

end

end A196988.P8087780233204058838

/-!
# A196989: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,3,4,1,0 for x=0,1,2,3,4.

The programs for A196989, there is no canonical definition to state claims against.
-/

/-! ## A196989.P9767904539615569296

`A112649(A010048(n))`
-/

namespace A196989.P9767904539615569296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112649 (A010048 n).toNat

end

end A196989.P9767904539615569296

/-! ## A196989.P12345636406356716332

`A196493(n+1)+A186034(A022167(n))`
-/

namespace A196989.P12345636406356716332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196493 (n + 1) + A186034 (A022167 n).toNat

end

end A196989.P12345636406356716332

/-! ## A196989.P6064624704129800425

`A196493(n+1)+A037800(A176791(n))`
-/

namespace A196989.P6064624704129800425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196493 (n + 1) + A037800 (A176791 n).toNat

end

end A196989.P6064624704129800425

/-! ## A196989.P1929611727646510793

`A196493(n+1)+A124763(A099594(n))`
-/

namespace A196989.P1929611727646510793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196493 (n + 1) + A124763 (A099594 n).toNat

end

end A196989.P1929611727646510793

/-! ## A196989.P10653929469999728768

`A186034(A022167(n))+A112649(A135966(n))`
-/

namespace A196989.P10653929469999728768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186034 (A022167 n).toNat + A112649 (A135966 n).toNat

end

end A196989.P10653929469999728768

/-!
# A196990: Numbers that are not the sum of two powers of 3.

The programs for A196990, the canonical program `A196990.P18258906891497550304` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196990 has offset 1).

The definition of A196990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196990.P18258906891497550304

`lt[(-1)^n, a(floor(n/3))+n%3]` with `a(0)=-1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A196990

/-- `lt[(-1)^n, a(floor(n/3))+n%3]` -/
def P18258906891497550304.Spec : Prop :=
  ∀ n, (P18258906891497550304.a n : ℤ) = A196990 (n + 1)

theorem P18258906891497550304.correct : P18258906891497550304.Spec := by
  intro n
  simp only [A196990, Nat.add_sub_cancel]

end A196990

/-! ## A196990.P3093722835363041716

`comp[eq[1, a(n-1)+1-val(n², 3)]]` with `a(0)=1, a(1)=0`
-/

namespace A196990.P3093722835363041716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f3 =>
  f3 (n - 1) + (1 - (SequenceMachineLib.valuation (n ^ 2) 3 : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A196990.P3093722835363041716

namespace A196990

/-- `comp[eq[1, a(n-1)+1-val(n², 3)]]` -/
def P3093722835363041716.Spec : Prop :=
  ∀ n, (P3093722835363041716.a n : ℤ) = A196990 (n + 1)

end A196990

/-! ## A196990.P16335872580056276976

`lt[a(n-1)+val(n, 3), lcm(2, n+2)/2]` with `a(0)=2`
-/

namespace A196990.P16335872580056276976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 2) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A196990.P16335872580056276976

namespace A196990

/-- `lt[a(n-1)+val(n, 3), lcm(2, n+2)/2]` -/
def P16335872580056276976.Spec : Prop :=
  ∀ n, (P16335872580056276976.a n : ℤ) = A196990 (n + 1)

end A196990

/-! ## A196990.P9399115035641874437

`lt[a(n-1)+val(n, 3), (n+2)*(xor(n, n+1)+1)/4]` with `a(0)=2`
-/

namespace A196990.P9399115035641874437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (Nat.xor n (n + 1) + 1) : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A196990.P9399115035641874437

namespace A196990

/-- `lt[a(n-1)+val(n, 3), (n+2)*(xor(n, n+1)+1)/4]` -/
def P9399115035641874437.Spec : Prop :=
  ∀ n, (P9399115035641874437.a n : ℤ) = A196990 (n + 1)

end A196990

/-! ## A196990.P6145789392397840175

`lt[(n+2)*(1-gcd(n+3, n-1)/2), a(n-1)+1-val(n, 3)]` with `a(0)=0`
-/

namespace A196990.P6145789392397840175
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (1 - (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 1) : ℚ) / 2)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + (1 - (SequenceMachineLib.valuation n 3 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A196990.P6145789392397840175

namespace A196990

/-- `lt[(n+2)*(1-gcd(n+3, n-1)/2), a(n-1)+1-val(n, 3)]` -/
def P6145789392397840175.Spec : Prop :=
  ∀ n, (P6145789392397840175.a n : ℤ) = A196990 (n + 1)

end A196990

/-! ## A196990.P15926398963837528777

`lt[2, or(2, A053735(n))]`
-/

namespace A196990.P15926398963837528777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A053735 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A196990.P15926398963837528777

namespace A196990

/-- `lt[2, or(2, A053735(n))]` -/
def P15926398963837528777.Spec : Prop :=
  ∀ n, (P15926398963837528777.a n : ℤ) = A196990 (n + 1)

end A196990

/-! ## A196990.P4881776422528374506

`lt[2, or(2, A119994(n))]`
-/

namespace A196990.P4881776422528374506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A119994 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A196990.P4881776422528374506

namespace A196990

/-- `lt[2, or(2, A119994(n))]` -/
def P4881776422528374506.Spec : Prop :=
  ∀ n, (P4881776422528374506.a n : ℤ) = A196990 (n + 1)

end A196990

/-!
# A196991: Number of fixed polycairos with n cells.

The programs for A196991, there is no canonical definition to state claims against.
-/

/-! ## A196991.P8424568581788415589

`2*A249025(∑{#}[n, C(n+#, #)])`
-/

namespace A196991.P8424568581788415589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A249025 (∑ k ∈ Finset.range (f1 n + 1), Nat.choose (n + k) k)

end

end A196991.P8424568581788415589

/-!
# A196992: Number of fixed polykites with n cells.

The programs for A196992, there is no canonical definition to state claims against.
-/

/-! ## A196992.P7195083163596726900

`A113318(A097538(n+1))+4`
-/

namespace A196992.P7195083163596726900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113318 (A097538 (n + 1)).toNat + 4

end

end A196992.P7195083163596726900

/-!
# A196993: Number of fixed polypons with n cells (division into triangles is significant).

The programs for A196993, there is no canonical definition to state claims against.
-/

/-! ## A196993.P9966513649851298465

`A000006(∑[(4-6/(n+1))*a(n-1)])` with `a(0)=12`
-/

namespace A196993.P9966513649851298465
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [12] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A196993.P9966513649851298465

/-! ## A196993.P2269824231296345426

`A191838(A123916(n+1))+A123916(n+4)`
-/

namespace A196993.P2269824231296345426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191838 (A123916 (n + 1)).toNat + A123916 (n + 4)

end

end A196993.P2269824231296345426

/-! ## A196993.P1876464943088788655

`A046693(A295691(n+4))+A016116(2*(n+1))`
-/

namespace A196993.P1876464943088788655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046693 (A295691 (n + 4)).toNat + A016116 (2 * (n + 1))

end

end A196993.P1876464943088788655

