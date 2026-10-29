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
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A232900: Number of (n+1)X(n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally.

The programs for A232900, there is no canonical definition to state claims against.
-/

/-! ## A232900.P3952538893934444361

`A232908((n+1)²+n²)`
-/

namespace A232900.P3952538893934444361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 ((n + 1) ^ 2 + n ^ 2)

end

end A232900.P3952538893934444361

/-! ## A232900.P15320375244122344263

`record[A232908(A003602((n+1)²))]`
-/

namespace A232900.P15320375244122344263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (A003602 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232900.P15320375244122344263

/-!
# A232901: Number of (n+1) X (1+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally.

The programs for A232901, the canonical program `A232901.P11271878534412643190` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232901 has offset 1).

The definition of A232901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232901.P3166164724578260299

`ogf(4x/(1-2x+x^2-4x^3))`
-/

namespace A232901.P3166164724578260299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -2, 1, -4] n

end

end A232901.P3166164724578260299

namespace A232901

/-- `ogf(4x/(1-2x+x^2-4x^3))` -/
def P3166164724578260299.Spec : Prop :=
  ∀ n, P3166164724578260299.a n = A232901 (n + 1)

end A232901

/-! ## A232901.P11271878534412643190

`2*a(n-1)-a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=4, a(2)=8`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232901

/-- `2*a(n-1)-a(n-2)+4*a(n-3)` -/
def P11271878534412643190.Spec : Prop :=
  ∀ n, P11271878534412643190.a n = A232901 (n + 1)

theorem P11271878534412643190.correct : P11271878534412643190.Spec := by
  intro n
  simp only [A232901, Nat.add_sub_cancel]

end A232901

/-! ## A232901.P5966680403856736900

`2*A052947(Δ[n²])`
-/

namespace A232901.P5966680403856736900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052947 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A232901.P5966680403856736900

namespace A232901

/-- `2*A052947(Δ[n²])` -/
def P5966680403856736900.Spec : Prop :=
  ∀ n, P5966680403856736900.a n = A232901 (n + 1)

end A232901

/-! ## A232901.P17945233243084125794

`∑[2*A107853(2*n)]`
-/

namespace A232901.P17945233243084125794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107853 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232901.P17945233243084125794

namespace A232901

/-- `∑[2*A107853(2*n)]` -/
def P17945233243084125794.Spec : Prop :=
  ∀ n, P17945233243084125794.a n = A232901 (n + 1)

end A232901

/-! ## A232901.P3764871604098806327

`2*A159287(2*n+3)`
-/

namespace A232901.P3764871604098806327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159287 (2 * n + 3)

end

end A232901.P3764871604098806327

namespace A232901

/-- `2*A159287(2*n+3)` -/
def P3764871604098806327.Spec : Prop :=
  ∀ n, P3764871604098806327.a n = A232901 (n + 1)

end A232901

/-! ## A232901.P1482807438993790316

`record[A159285(n)-A078028(n)]`
-/

namespace A232901.P1482807438993790316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159285 n - A078028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232901.P1482807438993790316

namespace A232901

/-- `record[A159285(n)-A078028(n)]` -/
def P1482807438993790316.Spec : Prop :=
  ∀ n, P1482807438993790316.a n = A232901 (n + 1)

end A232901

/-! ## A232901.P12062370768072991964

`record[A010673(n)*A159287(n)]`
-/

namespace A232901.P12062370768072991964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n * A159287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232901.P12062370768072991964

namespace A232901

/-- `record[A010673(n)*A159287(n)]` -/
def P12062370768072991964.Spec : Prop :=
  ∀ n, P12062370768072991964.a n = A232901 (n + 1)

end A232901

/-! ## A232901.P11589326669758428787

`A107853(2*n)+A107852(2*n)`
-/

namespace A232901.P11589326669758428787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107853 (2 * n) + A107852 (2 * n)

end

end A232901.P11589326669758428787

namespace A232901

/-- `A107853(2*n)+A107852(2*n)` -/
def P11589326669758428787.Spec : Prop :=
  ∀ n, P11589326669758428787.a n = A232901 (n + 1)

end A232901

/-! ## A232901.P7926844101771935707

`A107853(2*n)+2*A107854(2*n)`
-/

namespace A232901.P7926844101771935707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107853 (2 * n) + 2 * A107854 (2 * n)

end

end A232901.P7926844101771935707

namespace A232901

/-- `A107853(2*n)+2*A107854(2*n)` -/
def P7926844101771935707.Spec : Prop :=
  ∀ n, P7926844101771935707.a n = A232901 (n + 1)

end A232901

/-! ## A232901.P274632314887110481

`A052947(2*n+1)+A052947(2*n+1)`
-/

namespace A232901.P274632314887110481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 (2 * n + 1) + A052947 (2 * n + 1)

end

end A232901.P274632314887110481

namespace A232901

/-- `A052947(2*n+1)+A052947(2*n+1)` -/
def P274632314887110481.Spec : Prop :=
  ∀ n, P274632314887110481.a n = A232901 (n + 1)

end A232901

/-! ## A232901.P3583215505301631073

`A107853(2*n+3)-A091337(2*n+1)`
-/

namespace A232901.P3583215505301631073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107853 (2 * n + 3) - A091337 (2 * n + 1)

end

end A232901.P3583215505301631073

namespace A232901

/-- `A107853(2*n+3)-A091337(2*n+1)` -/
def P3583215505301631073.Spec : Prop :=
  ∀ n, P3583215505301631073.a n = A232901 (n + 1)

end A232901

/-! ## A232901.P5607076058854286101

`A118831(2*(n+2))+A107853(2*n+3)`
-/

namespace A232901.P5607076058854286101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118831 (2 * (n + 2)) + A107853 (2 * n + 3)

end

end A232901.P5607076058854286101

namespace A232901

/-- `A118831(2*(n+2))+A107853(2*n+3)` -/
def P5607076058854286101.Spec : Prop :=
  ∀ n, P5607076058854286101.a n = A232901 (n + 1)

end A232901

/-! ## A232901.P5956011091286536367

`Δ[A097117(n+1)]`
-/

namespace A232901.P5956011091286536367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232901.P5956011091286536367

namespace A232901

/-- `Δ[A097117(n+1)]` -/
def P5956011091286536367.Spec : Prop :=
  ∀ n, P5956011091286536367.a n = A232901 (n + 1)

end A232901

/-! ## A232901.P15412422525565968193

`Δ[A052947(2*(n+1))]`
-/

namespace A232901.P15412422525565968193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232901.P15412422525565968193

namespace A232901

/-- `Δ[A052947(2*(n+1))]` -/
def P15412422525565968193.Spec : Prop :=
  ∀ n, P15412422525565968193.a n = A232901 (n + 1)

end A232901

/-! ## A232901.P3044208763822129205

`Δ[A159287(2*(n+2))]`
-/

namespace A232901.P3044208763822129205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159287 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232901.P3044208763822129205

namespace A232901

/-- `Δ[A159287(2*(n+2))]` -/
def P3044208763822129205.Spec : Prop :=
  ∀ n, P3044208763822129205.a n = A232901 (n + 1)

end A232901

/-! ## A232901.P5606443779350797462

`A097117(n+2)-A097117(n+1)`
-/

namespace A232901.P5606443779350797462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097117 (n + 2) - A097117 (n + 1)

end

end A232901.P5606443779350797462

namespace A232901

/-- `A097117(n+2)-A097117(n+1)` -/
def P5606443779350797462.Spec : Prop :=
  ∀ n, P5606443779350797462.a n = A232901 (n + 1)

end A232901

/-! ## A232901.P7989205790237291537

`A167434(2*n)-A052947(2*(n+1))`
-/

namespace A232901.P7989205790237291537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167434 (2 * n) - A052947 (2 * (n + 1))

end

end A232901.P7989205790237291537

namespace A232901

/-- `A167434(2*n)-A052947(2*(n+1))` -/
def P7989205790237291537.Spec : Prop :=
  ∀ n, P7989205790237291537.a n = A232901 (n + 1)

end A232901

/-! ## A232901.P14825461106609254919

`A159285(2*(n+1))-A159284(2*n+3)`
-/

namespace A232901.P14825461106609254919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159285 (2 * (n + 1)) - A159284 (2 * n + 3)

end

end A232901.P14825461106609254919

namespace A232901

/-- `A159285(2*(n+1))-A159284(2*n+3)` -/
def P14825461106609254919.Spec : Prop :=
  ∀ n, P14825461106609254919.a n = A232901 (n + 1)

end A232901

/-! ## A232901.P7054210650420545809

`2*(A077884(2*n)-A077884(2*n+1))`
-/

namespace A232901.P7054210650420545809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A077884 (2 * n) - A077884 (2 * n + 1))

end

end A232901.P7054210650420545809

namespace A232901

/-- `2*(A077884(2*n)-A077884(2*n+1))` -/
def P7054210650420545809.Spec : Prop :=
  ∀ n, P7054210650420545809.a n = A232901 (n + 1)

end A232901

/-! ## A232901.P1247919746533179963

`record[A078028(n+1)+A078028(n)]`
-/

namespace A232901.P1247919746533179963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078028 (n + 1) + A078028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232901.P1247919746533179963

namespace A232901

/-- `record[A078028(n+1)+A078028(n)]` -/
def P1247919746533179963.Spec : Prop :=
  ∀ n, P1247919746533179963.a n = A232901 (n + 1)

end A232901

/-!
# A232902: Number of (n+1) X (2+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally.

The programs for A232902, the canonical program `A232902.P5349079834415941228` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232902 has offset 1).

The definition of A232902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232902.P5349079834415941228

`ogf((10-6x+68x^2+32x^3)/(1-4x+x^2-26x^3-16x^4))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232902

/-- `ogf((10-6x+68x^2+32x^3)/(1-4x+x^2-26x^3-16x^4))` -/
def P5349079834415941228.Spec : Prop :=
  ∀ n, P5349079834415941228.a n = A232902 (n + 1)

theorem P5349079834415941228.correct : P5349079834415941228.Spec := by
  intro n
  simp only [A232902, Nat.add_sub_cancel]

end A232902

/-! ## A232902.P6583449033403584368

`A232908(∑[n+2])`
-/

namespace A232902.P6583449033403584368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232902.P6583449033403584368

namespace A232902

/-- `A232908(∑[n+2])` -/
def P6583449033403584368.Spec : Prop :=
  ∀ n, P6583449033403584368.a n = A232902 (n + 1)

end A232902

/-! ## A232902.P9655830281322622878

`record[A232908(A072735(n+2))]`
-/

namespace A232902.P9655830281322622878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (A072735 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232902.P9655830281322622878

namespace A232902

/-- `record[A232908(A072735(n+2))]` -/
def P9655830281322622878.Spec : Prop :=
  ∀ n, P9655830281322622878.a n = A232902 (n + 1)

end A232902

/-! ## A232902.P16408163985623074884

`record[A232908(Δ[A003453(n+5)])]`
-/

namespace A232902.P16408163985623074884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232902.P16408163985623074884

namespace A232902

/-- `record[A232908(Δ[A003453(n+5)])]` -/
def P16408163985623074884.Spec : Prop :=
  ∀ n, P16408163985623074884.a n = A232902 (n + 1)

end A232902

/-!
# A232903: Number of (n+1)X(3+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally.

The programs for A232903, there is no canonical definition to state claims against.
-/

/-! ## A232903.P11673912706739257057

`A232908(∑[n+3]+1)`
-/

namespace A232903.P11673912706739257057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232903.P11673912706739257057

/-! ## A232903.P14217114757585912839

`record[A232908(A198464(n+1))]`
-/

namespace A232903.P14217114757585912839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232903.P14217114757585912839

/-! ## A232903.P16203348081230766776

`lcm(2, A232908(A034856(n+2)))`
-/

namespace A232903.P16203348081230766776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232908 (A034856 (n + 2)).toNat)

end

end A232903.P16203348081230766776

/-! ## A232903.P12291129018531761368

`A057077(A025581(n))²*A232908(A034856(n+2))`
-/

namespace A232903.P12291129018531761368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A025581 n).toNat ^ 2 * A232908 (A034856 (n + 2)).toNat

end

end A232903.P12291129018531761368

/-! ## A232903.P16079433475241256848

`A014963(A031540(n+1))*A232908(A034856(n+2))`
-/

namespace A232903.P16079433475241256848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A031540 (n + 1)).toNat * A232908 (A034856 (n + 2)).toNat

end

end A232903.P16079433475241256848

/-!
# A232904: Number of (n+1)X(4+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally.

The programs for A232904, there is no canonical definition to state claims against.
-/

/-! ## A232904.P13405019632521710575

`A232908(A141214(n+1))`
-/

namespace A232904.P13405019632521710575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (A141214 (n + 1)).toNat

end

end A232904.P13405019632521710575

/-! ## A232904.P17433477727850210811

`A232908(A055998(n+2))`
-/

namespace A232904.P17433477727850210811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (A055998 (n + 2)).toNat

end

end A232904.P17433477727850210811

/-! ## A232904.P16211430014856240887

`A232908(A056000(n)+7)`
-/

namespace A232904.P16211430014856240887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (A056000 n + 7).toNat

end

end A232904.P16211430014856240887

/-! ## A232904.P491200472055150938

`A232908(eq[3, A193592(n)])`
-/

namespace A232904.P491200472055150938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232904.P491200472055150938

/-! ## A232904.P13025870650391371634

`A232908(A052905(n+1)+2)`
-/

namespace A232904.P13025870650391371634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (A052905 (n + 1) + 2).toNat

end

end A232904.P13025870650391371634

/-!
# A232905: Number of (n+1)X(5+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally.

The programs for A232905, there is no canonical definition to state claims against.
-/

/-! ## A232905.P13346003631715372848

`A232908(Δ[A264443(n)])`
-/

namespace A232905.P13346003631715372848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (f1 (n + 1) - f1 n).toNat

end

end A232905.P13346003631715372848

/-! ## A232905.P1451613476369319080

`A232908(A046691(n+3))`
-/

namespace A232905.P1451613476369319080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (A046691 (n + 3)).toNat

end

end A232905.P1451613476369319080

/-! ## A232905.P13259533490705079041

`A232908(eq[4, A193592(n)])`
-/

namespace A232905.P13259533490705079041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232905.P13259533490705079041

/-! ## A232905.P13790355470957665975

`A232908(Δ[A023545(n+1)])`
-/

namespace A232905.P13790355470957665975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (f1 (n + 1) - f1 n).toNat

end

end A232905.P13790355470957665975

/-! ## A232905.P10429554928072192223

`A232908(eq[5, A200370(n+1)])`
-/

namespace A232905.P10429554928072192223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232905.P10429554928072192223

/-!
# A232906: Number of (n+1)X(6+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally.

The programs for A232906, there is no canonical definition to state claims against.
-/

/-! ## A232906.P8705881795655367443

`A232908(A052905(n+3))`
-/

namespace A232906.P8705881795655367443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (A052905 (n + 3)).toNat

end

end A232906.P8705881795655367443

/-! ## A232906.P12224685055309490396

`A232908(eq[6, A200370(n+1)])`
-/

namespace A232906.P12224685055309490396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232906.P12224685055309490396

/-! ## A232906.P13682154617852430411

`A232908(Δ[Δ[A006504(n+1)]])`
-/

namespace A232906.P13682154617852430411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (f1 (n + 1) - f1 n).toNat

end

end A232906.P13682154617852430411

/-! ## A232906.P1434894255952459097

`A232908(Δ[A264443(n+1)]-1)`
-/

namespace A232906.P1434894255952459097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (f1 (n + 1) - f1 n - 1).toNat

end

end A232906.P1434894255952459097

/-!
# A232907: Number of (n+1) X (7+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally.

The programs for A232907, there is no canonical definition to state claims against.
-/

/-! ## A232907.P11382117904988924284

`A232908(A055999(n+4))`
-/

namespace A232907.P11382117904988924284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (A055999 (n + 4)).toNat

end

end A232907.P11382117904988924284

/-! ## A232907.P17963065259654995512

`A232908(eq[7, A200370(n+1)])`
-/

namespace A232907.P17963065259654995512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232907.P17963065259654995512

/-!
# A232909: Number of (1+1) X (n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally.

The programs for A232909, there is no canonical definition to state claims against.
-/

/-! ## A232909.P13444637591963287130

`A232908(∑[n]+1)`
-/

namespace A232909.P13444637591963287130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232909.P13444637591963287130

/-! ## A232909.P14529983893723228793

`lcm(2, A232908(A000124(n)))`
-/

namespace A232909.P14529983893723228793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232908 (A000124 n).toNat)

end

end A232909.P14529983893723228793

/-! ## A232909.P12000769102401839319

`record[gcd(A002262(n), A232908(n+1))]`
-/

namespace A232909.P12000769102401839319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A232908 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232909.P12000769102401839319

/-! ## A232909.P5234344876674220678

`A232908(A000124(n))+A217149(n+1)`
-/

namespace A232909.P5234344876674220678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (A000124 n).toNat + A217149 (n + 1)

end

end A232909.P5234344876674220678

/-!
# A232910: Number of (2+1) X (n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally.

The programs for A232910, there is no canonical definition to state claims against.
-/

/-! ## A232910.P2010782170123314706

`A232908(∑[n+1]+2)`
-/

namespace A232910.P2010782170123314706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232910.P2010782170123314706

/-! ## A232910.P9514424988087870308

`record[gcd(A025581(n), A232908(n+3))]`
-/

namespace A232910.P9514424988087870308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A232908 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232910.P9514424988087870308

/-!
# A232911: Number of (3+1)X(n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally.

The programs for A232911, there is no canonical definition to state claims against.
-/

/-! ## A232911.P11875482110809536649

`A232908(∑[n+2]+4)`
-/

namespace A232911.P11875482110809536649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232911.P11875482110809536649

/-! ## A232911.P8336880451427684897

`lcm(2, A232908(A167614(n+1)))`
-/

namespace A232911.P8336880451427684897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232908 (A167614 (n + 1)).toNat)

end

end A232911.P8336880451427684897

/-! ## A232911.P15953401750223745712

`A232908(A167614(n+1))+A034441(n+1)`
-/

namespace A232911.P15953401750223745712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (A167614 (n + 1)).toNat + A034441 (n + 1)

end

end A232911.P15953401750223745712

/-! ## A232911.P364433407865258966

`A232908(A167614(n+1))+A141097(n+1)`
-/

namespace A232911.P364433407865258966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (A167614 (n + 1)).toNat + A141097 (n + 1)

end

end A232911.P364433407865258966

/-! ## A232911.P5576267174484667638

`A232908(A167614(n+1))+A212619(n+1)`
-/

namespace A232911.P5576267174484667638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (A167614 (n + 1)).toNat + A212619 (n + 1)

end

end A232911.P5576267174484667638

/-!
# A232912: Number of (4+1)X(n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally.

The programs for A232912, there is no canonical definition to state claims against.
-/

/-! ## A232912.P16961128652593382912

`A232908(A141214(n)+7)`
-/

namespace A232912.P16961128652593382912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (A141214 n + 7).toNat

end

end A232912.P16961128652593382912

/-! ## A232912.P5591295156611248374

`A232908(A052905(n)+9)`
-/

namespace A232912.P5591295156611248374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (A052905 n + 9).toNat

end

end A232912.P5591295156611248374

/-! ## A232912.P6150311250082688039

`A232908(A055999(n)+10)`
-/

namespace A232912.P6150311250082688039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (A055999 n + 10).toNat

end

end A232912.P6150311250082688039

/-! ## A232912.P4871106146169814858

`A232908(A167614(n+2)+1)`
-/

namespace A232912.P4871106146169814858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (A167614 (n + 2) + 1).toNat

end

end A232912.P4871106146169814858

/-! ## A232912.P12523017363070829568

`A232908(A166136(n+2)-2)`
-/

namespace A232912.P12523017363070829568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (A166136 (n + 2) - 2).toNat

end

end A232912.P12523017363070829568

/-!
# A232913: Number of (5+1)X(n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally.

The programs for A232913, there is no canonical definition to state claims against.
-/

/-! ## A232913.P7201602308497742914

`A232908(∑[n+4]+11)`
-/

namespace A232913.P7201602308497742914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A232913.P7201602308497742914

/-!
# A232914: Number of (6+1)X(n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally.

The programs for A232914, there is no canonical definition to state claims against.
-/

/-! ## A232914.P1768736213454747680

`A232908(A166136(n+4))`
-/

namespace A232914.P1768736213454747680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (A166136 (n + 4)).toNat

end

end A232914.P1768736213454747680

/-!
# A232915: Number of (7+1)X(n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally.

The programs for A232915, there is no canonical definition to state claims against.
-/

/-! ## A232915.P8496396594154289431

`A232908(A000217(n+6)+7)`
-/

namespace A232915.P8496396594154289431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232908 (A000217 (n + 6) + 7).toNat

end

end A232915.P8496396594154289431

/-!
# A232916: Number of n X n 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally, diagonally or antidiagonally.

The programs for A232916, there is no canonical definition to state claims against.
-/

/-! ## A232916.P16868361085169741622

`A232920(∑[4*n]+1)`
-/

namespace A232916.P16868361085169741622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232916.P16868361085169741622

/-! ## A232916.P7825902495052485361

`lcm(3, A232920(A001844(n)))`
-/

namespace A232916.P7825902495052485361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A232920 (A001844 n).toNat)

end

end A232916.P7825902495052485361

/-! ## A232916.P15715057634795192612

`record[A003982(n)*A232920(n+1)]`
-/

namespace A232916.P15715057634795192612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A232920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232916.P15715057634795192612

/-! ## A232916.P8888967212587025895

`record[gcd(A114327(n), A232920(n+1))]`
-/

namespace A232916.P8888967212587025895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A232920 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232916.P8888967212587025895

/-! ## A232916.P13134497685380045725

`A269046(n+1)-A269029(n+1)`
-/

namespace A232916.P13134497685380045725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269046 (n + 1) - A269029 (n + 1)

end

end A232916.P13134497685380045725

/-!
# A232917: Number of n X 5 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally, diagonally or antidiagonally.

The programs for A232917, there is no canonical definition to state claims against.
-/

/-! ## A232917.P7077028075852650032

`A269049(n+1)-A269032(n+1)`
-/

namespace A232917.P7077028075852650032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269049 (n + 1) - A269032 (n + 1)

end

end A232917.P7077028075852650032

/-! ## A232917.P6816125307414535508

`A232920(A046691(n+3))`
-/

namespace A232917.P6816125307414535508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (A046691 (n + 3)).toNat

end

end A232917.P6816125307414535508

/-! ## A232917.P17893269996317480951

`A232920(A056115(n)+11)`
-/

namespace A232917.P17893269996317480951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (A056115 n + 11).toNat

end

end A232917.P17893269996317480951

/-! ## A232917.P14662152616191454596

`A232920(eq[4, A193592(n)])`
-/

namespace A232917.P14662152616191454596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232917.P14662152616191454596

/-! ## A232917.P17985297667398931071

`A232920(Δ[A023545(n+1)])`
-/

namespace A232917.P17985297667398931071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (f1 (n + 1) - f1 n).toNat

end

end A232917.P17985297667398931071

/-!
# A232918: Number of nX6 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally, diagonally or antidiagonally.

The programs for A232918, there is no canonical definition to state claims against.
-/

/-! ## A232918.P9786931491120010930

`A269050(n+1)-A269033(n+1)`
-/

namespace A232918.P9786931491120010930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269050 (n + 1) - A269033 (n + 1)

end

end A232918.P9786931491120010930

/-! ## A232918.P16510754449207579731

`A232920(A052905(n+3))`
-/

namespace A232918.P16510754449207579731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (A052905 (n + 3)).toNat

end

end A232918.P16510754449207579731

/-! ## A232918.P5592442143676003565

`A232920(eq[3, A219347(n)])`
-/

namespace A232918.P5592442143676003565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232918.P5592442143676003565

/-! ## A232918.P14604501811667926764

`A232920(eq[5, A193592(n)])`
-/

namespace A232918.P14604501811667926764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232918.P14604501811667926764

/-! ## A232918.P4863212246926537839

`A232920(A000124(n+6)-6)`
-/

namespace A232918.P4863212246926537839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (A000124 (n + 6) - 6).toNat

end

end A232918.P4863212246926537839

/-!
# A232919: Number of nX7 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally, diagonally or antidiagonally.

The programs for A232919, there is no canonical definition to state claims against.
-/

/-! ## A232919.P11742034235752294863

`A269051(n+1)-A269034(n+1)`
-/

namespace A232919.P11742034235752294863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269051 (n + 1) - A269034 (n + 1)

end

end A232919.P11742034235752294863

/-! ## A232919.P2596534460575633923

`A269051(n+1)%record[A269034(A193592(n))]`
-/

namespace A232919.P2596534460575633923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269034 (A193592 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269051 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A232919.P2596534460575633923

/-! ## A232919.P1342726919929829284

`A232920(A055999(n+4))`
-/

namespace A232919.P1342726919929829284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (A055999 (n + 4)).toNat

end

end A232919.P1342726919929829284

/-! ## A232919.P3855398217910349535

`A232920(eq[4, A219347(n)])`
-/

namespace A232919.P3855398217910349535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232919.P3855398217910349535

/-! ## A232919.P5285364590357366996

`A232920(eq[6, A193592(n)])`
-/

namespace A232919.P5285364590357366996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232919.P5285364590357366996

/-!
# A232920: T(n,k)=Number of nXk 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally, diagonally or antidiagonally.

The programs for A232920, there is no canonical definition to state claims against.
-/

/-! ## A232920.P2400573819162149598

`A269052(n+1)-A269035(n+1)`
-/

namespace A232920.P2400573819162149598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (n + 1) - A269035 (n + 1)

end

end A232920.P2400573819162149598

/-! ## A232920.P15450986760916020856

`A269052(n+1)-A229534(n+1)*A267884(n)`
-/

namespace A232920.P15450986760916020856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (n + 1) - A229534 (n + 1) * A267884 n

end

end A232920.P15450986760916020856

/-! ## A232920.P4456015158838781865

`A269052(n+1)-A040006(A004526(n))*A229534(n+1)`
-/

namespace A232920.P4456015158838781865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (n + 1) - A040006 (A004526 n).toNat * A229534 (n + 1)

end

end A232920.P4456015158838781865

/-! ## A232920.P9623739120353094053

`A269052(n+1)-A040006(A008612(n))*A229534(n+1)`
-/

namespace A232920.P9623739120353094053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (n + 1) - A040006 (A008612 n).toNat * A229534 (n + 1)

end

end A232920.P9623739120353094053

/-! ## A232920.P8828867416298575693

`A269052(n+1)-A040006(A028242(n))*A229534(n+1)`
-/

namespace A232920.P8828867416298575693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (n + 1) - A040006 (A028242 n).toNat * A229534 (n + 1)

end

end A232920.P8828867416298575693

/-! ## A232920.P11124013673810437373

`A269052(n+1)-A040006(A294061(n+1))*A229534(n+1)`
-/

namespace A232920.P11124013673810437373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (n + 1) - A040006 (A294061 (n + 1)).toNat * A229534 (n + 1)

end

end A232920.P11124013673810437373

/-! ## A232920.P11073471235874175828

`A269052(n+1)-A040006(n-A010872(n))*A229534(n+1)`
-/

namespace A232920.P11073471235874175828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (n + 1) - A040006 ((n : ℤ) - A010872 n).toNat * A229534 (n + 1)

end

end A232920.P11073471235874175828

/-! ## A232920.P4044884947815636097

`A269052(n+1)-A229534(n+1)*A266251(A266249(2*n+1))`
-/

namespace A232920.P4044884947815636097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (n + 1) - A229534 (n + 1) * A266251 (A266249 (2 * n + 1)).toNat

end

end A232920.P4044884947815636097

/-! ## A232920.P11200660968197461429

`A269052(n+1)-gcd(6, A167667(n))*A229534(n+1)`
-/

namespace A232920.P11200660968197461429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (n + 1) - (Int.gcd 6 (A167667 n) : ℤ) * A229534 (n + 1)

end

end A232920.P11200660968197461429

/-! ## A232920.P3454146939369924366

`A269052(n+1)-A040006(A007590(n))*A229534(n+1)`
-/

namespace A232920.P3454146939369924366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (n + 1) - A040006 (A007590 n).toNat * A229534 (n + 1)

end

end A232920.P3454146939369924366

/-! ## A232920.P12250653005294084787

`A269052(n+1)-A040006(n²-n)*A229534(n+1)`
-/

namespace A232920.P12250653005294084787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269052 (n + 1) - A040006 (n ^ 2 - n) * A229534 (n + 1)

end

end A232920.P12250653005294084787

/-!
# A232921: Number of 2 X n 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally, diagonally or antidiagonally.

The programs for A232921, the canonical program `A232921.P5382062113630533139` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232921 has offset 1).

The definition of A232921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232921.P1646398558623906818

`ogf(9/(1-2x-2x^2))`
-/

namespace A232921.P1646398558623906818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9] [1, -2, -2] n

end

end A232921.P1646398558623906818

namespace A232921

/-- `ogf(9/(1-2x-2x^2))` -/
def P1646398558623906818.Spec : Prop :=
  ∀ n, P1646398558623906818.a n = A232921 (n + 1)

end A232921

/-! ## A232921.P5382062113630533139

`2*(a(n-1)+a(n-2))` with `a(0)=9, a(1)=18`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232921

/-- `2*(a(n-1)+a(n-2))` -/
def P5382062113630533139.Spec : Prop :=
  ∀ n, (P5382062113630533139.a n : ℤ) = A232921 (n + 1)

theorem P5382062113630533139.correct : P5382062113630533139.Spec := by
  intro n
  simp only [A232921, Nat.add_sub_cancel]

end A232921

/-! ## A232921.P14449757311357111124

`∑[2*(a(n-1)-ceil(-a(n-2)))]` with `a(0)=9, a(1)=9`

`ceil` is left out, it is the identity on integers.
-/

namespace A232921.P14449757311357111124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9, 9] fun n f1 =>
  2 * (f1 (n - 1) - (-f1 (n - 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232921.P14449757311357111124

namespace A232921

/-- `∑[2*(a(n-1)-ceil(-a(n-2)))]` -/
def P14449757311357111124.Spec : Prop :=
  ∀ n, P14449757311357111124.a n = A232921 (n + 1)

end A232921

/-! ## A232921.P2767618867934637599

`∑[9*A026150(n)]`
-/

namespace A232921.P2767618867934637599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A026150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232921.P2767618867934637599

namespace A232921

/-- `∑[9*A026150(n)]` -/
def P2767618867934637599.Spec : Prop :=
  ∀ n, P2767618867934637599.a n = A232921 (n + 1)

end A232921

/-! ## A232921.P1377409530887917184

`3*A083337(n+1)`
-/

namespace A232921.P1377409530887917184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A083337 (n + 1)

end

end A232921.P1377409530887917184

namespace A232921

/-- `3*A083337(n+1)` -/
def P1377409530887917184.Spec : Prop :=
  ∀ n, P1377409530887917184.a n = A232921 (n + 1)

end A232921

/-! ## A232921.P14433033211144247596

`9*A002605(n+1)`
-/

namespace A232921.P14433033211144247596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A002605 (n + 1)

end

end A232921.P14433033211144247596

namespace A232921

/-- `9*A002605(n+1)` -/
def P14433033211144247596.Spec : Prop :=
  ∀ n, P14433033211144247596.a n = A232921 (n + 1)

end A232921

/-! ## A232921.P1001563908100091098

`∑[9*Δ[A002605(n)]]`
-/

namespace A232921.P1001563908100091098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232921.P1001563908100091098

namespace A232921

/-- `∑[9*Δ[A002605(n)]]` -/
def P1001563908100091098.Spec : Prop :=
  ∀ n, P1001563908100091098.a n = A232921 (n + 1)

end A232921

/-! ## A232921.P10453321279683130550

`3*Δ[A026150(n+1)]`
-/

namespace A232921.P10453321279683130550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n)

end

end A232921.P10453321279683130550

namespace A232921

/-- `3*Δ[A026150(n+1)]` -/
def P10453321279683130550.Spec : Prop :=
  ∀ n, P10453321279683130550.a n = A232921 (n + 1)

end A232921

/-! ## A232921.P11120668666866938149

`3/2*A239171(n+1)`
-/

namespace A232921.P11120668666866938149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A239171 (n + 1) : ℚ)

end

end A232921.P11120668666866938149

namespace A232921

/-- `3/2*A239171(n+1)` -/
def P11120668666866938149.Spec : Prop :=
  ∀ n, P11120668666866938149.a n = (A232921 (n + 1) : ℚ)

end A232921

/-! ## A232921.P1884998591363737082

`A040072(n)*A155020(n)`
-/

namespace A232921.P1884998591363737082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040072 n * A155020 n

end

end A232921.P1884998591363737082

namespace A232921

/-- `A040072(n)*A155020(n)` -/
def P1884998591363737082.Spec : Prop :=
  ∀ n, P1884998591363737082.a n = A232921 (n + 1)

end A232921

/-! ## A232921.P4794649198799125567

`A162562(n)+A026150(n+2)`
-/

namespace A232921.P4794649198799125567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162562 n + A026150 (n + 2)

end

end A232921.P4794649198799125567

namespace A232921

/-- `A162562(n)+A026150(n+2)` -/
def P4794649198799125567.Spec : Prop :=
  ∀ n, P4794649198799125567.a n = A232921 (n + 1)

end A232921

/-! ## A232921.P12414070349441300325

`Δ[A026150(n+1)]+Δ[A080040(n+1)]`
-/

namespace A232921.P12414070349441300325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A232921.P12414070349441300325

namespace A232921

/-- `Δ[A026150(n+1)]+Δ[A080040(n+1)]` -/
def P12414070349441300325.Spec : Prop :=
  ∀ n, P12414070349441300325.a n = A232921 (n + 1)

end A232921

/-! ## A232921.P1812274654326716488

`A002605(n+1)+A116556(n+1)+A116556(n+1)`
-/

namespace A232921.P1812274654326716488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (n + 1) + (A116556 (n + 1) + A116556 (n + 1))

end

end A232921.P1812274654326716488

namespace A232921

/-- `A002605(n+1)+A116556(n+1)+A116556(n+1)` -/
def P1812274654326716488.Spec : Prop :=
  ∀ n, P1812274654326716488.a n = A232921 (n + 1)

end A232921

/-! ## A232921.P2985638198058475467

`Δ[3*A026150(n+1)]`
-/

namespace A232921.P2985638198058475467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A026150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232921.P2985638198058475467

namespace A232921

/-- `Δ[3*A026150(n+1)]` -/
def P2985638198058475467.Spec : Prop :=
  ∀ n, P2985638198058475467.a n = A232921 (n + 1)

end A232921

/-! ## A232921.P13456737569107467045

`Δ[A080040(n+2)-A162562(n)]`
-/

namespace A232921.P13456737569107467045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080040 (n + 2) - A162562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232921.P13456737569107467045

namespace A232921

/-- `Δ[A080040(n+2)-A162562(n)]` -/
def P13456737569107467045.Spec : Prop :=
  ∀ n, P13456737569107467045.a n = A232921 (n + 1)

end A232921

/-! ## A232921.P7429866091901050933

`Δ[A080040(n+1)+A026150(n+1)]`
-/

namespace A232921.P7429866091901050933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080040 (n + 1) + A026150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232921.P7429866091901050933

namespace A232921

/-- `Δ[A080040(n+1)+A026150(n+1)]` -/
def P7429866091901050933.Spec : Prop :=
  ∀ n, P7429866091901050933.a n = A232921 (n + 1)

end A232921

/-! ## A232921.P15930164183355625115

`Δ[Δ[A108898(n+1)+A002605(n+1)]]`
-/

namespace A232921.P15930164183355625115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108898 (n + 1) + A002605 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232921.P15930164183355625115

namespace A232921

/-- `Δ[Δ[A108898(n+1)+A002605(n+1)]]` -/
def P15930164183355625115.Spec : Prop :=
  ∀ n, P15930164183355625115.a n = A232921 (n + 1)

end A232921

/-! ## A232921.P5736454403509005435

`lcm(A083337(n+1), A116556(n+1))-A083337(n+1)`
-/

namespace A232921.P5736454403509005435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A083337 (n + 1)) (A116556 (n + 1)) : ℤ) - A083337 (n + 1)

end

end A232921.P5736454403509005435

namespace A232921

/-- `lcm(A083337(n+1), A116556(n+1))-A083337(n+1)` -/
def P5736454403509005435.Spec : Prop :=
  ∀ n, P5736454403509005435.a n = A232921 (n + 1)

end A232921

/-! ## A232921.P375877266474741116

`Δ[Δ[A162562(n)-A080040(n)]]`
-/

namespace A232921.P375877266474741116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162562 n - A080040 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232921.P375877266474741116

namespace A232921

/-- `Δ[Δ[A162562(n)-A080040(n)]]` -/
def P375877266474741116.Spec : Prop :=
  ∀ n, P375877266474741116.a n = A232921 (n + 1)

end A232921

/-! ## A232921.P16138676433404110855

`A269053(n+1)-A269036(n+1)`
-/

namespace A232921.P16138676433404110855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269053 (n + 1) - A269036 (n + 1)

end

end A232921.P16138676433404110855

namespace A232921

/-- `A269053(n+1)-A269036(n+1)` -/
def P16138676433404110855.Spec : Prop :=
  ∀ n, P16138676433404110855.a n = A232921 (n + 1)

end A232921

/-!
# A232922: Number of 3 X n 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally, diagonally or antidiagonally.

The programs for A232922, the canonical program `A232922.P12845057144083581427` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232922 has offset 1).

The definition of A232922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232922.P5355893791039660547

`ogf((27-27x-24x^2+12x^3)/(1-3x-4x^2+2x^3))`
-/

namespace A232922.P5355893791039660547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [27, -27, -24, 12] [1, -3, -4, 2] n

end

end A232922.P5355893791039660547

namespace A232922

/-- `ogf((27-27x-24x^2+12x^3)/(1-3x-4x^2+2x^3))` -/
def P5355893791039660547.Spec : Prop :=
  ∀ n, P5355893791039660547.a n = A232922 (n + 1)

end A232922

/-! ## A232922.P12845057144083581427

`3*a(n-1)+4*a(n-2)-2*a(n-3)` with `a(0)=27, a(1)=54, a(2)=246, a(3)=912`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232922

/-- `3*a(n-1)+4*a(n-2)-2*a(n-3)` -/
def P12845057144083581427.Spec : Prop :=
  ∀ n, P12845057144083581427.a n = A232922 (n + 1)

theorem P12845057144083581427.correct : P12845057144083581427.Spec := by
  intro n
  simp only [A232922, Nat.add_sub_cancel]

end A232922

/-! ## A232922.P4524539408893008536

`A269054(n+1)-A269037(n+1)`
-/

namespace A232922.P4524539408893008536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269054 (n + 1) - A269037 (n + 1)

end

end A232922.P4524539408893008536

namespace A232922

/-- `A269054(n+1)-A269037(n+1)` -/
def P4524539408893008536.Spec : Prop :=
  ∀ n, P4524539408893008536.a n = A232922 (n + 1)

theorem P4524539408893008536.correct : P4524539408893008536.Spec := by
  intro n
  simp only [A232922, Nat.add_sub_cancel, A232922.P4524539408893008536.a, A232922.P12845057144083581427.a, A269037, A269037.P9438472991931552230.a, A269054, A269054.P16165861731754942575.a, A229536, A229536.P5536841384269820772.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A232922

/-! ## A232922.P9333373952747374256

`A232920(∑[n+2]+4)`
-/

namespace A232922.P9333373952747374256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232922.P9333373952747374256

namespace A232922

/-- `A232920(∑[n+2]+4)` -/
def P9333373952747374256.Spec : Prop :=
  ∀ n, P9333373952747374256.a n = A232922 (n + 1)

end A232922

/-! ## A232922.P16539070186812232416

`lcm(3, A232920(A167614(n+1)))`
-/

namespace A232922.P16539070186812232416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A232920 (A167614 (n + 1)).toNat)

end

end A232922.P16539070186812232416

namespace A232922

/-- `lcm(3, A232920(A167614(n+1)))` -/
def P16539070186812232416.Spec : Prop :=
  ∀ n, (P16539070186812232416.a n : ℤ) = A232922 (n + 1)

end A232922

/-!
# A232923: Number of 4 X n 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally, diagonally or antidiagonally.

The programs for A232923, there is no canonical definition to state claims against.
-/

/-! ## A232923.P7075525864730930946

`A232920(A141214(n)+7)`
-/

namespace A232923.P7075525864730930946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (A141214 n + 7).toNat

end

end A232923.P7075525864730930946

/-! ## A232923.P1180357832007372965

`A232920(A052905(n)+9)`
-/

namespace A232923.P1180357832007372965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (A052905 n + 9).toNat

end

end A232923.P1180357832007372965

/-! ## A232923.P16544165358532214122

`A232920(A055999(n)+10)`
-/

namespace A232923.P16544165358532214122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (A055999 n + 10).toNat

end

end A232923.P16544165358532214122

/-! ## A232923.P3960989521169904135

`A232920(A167614(n+2)+1)`
-/

namespace A232923.P3960989521169904135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (A167614 (n + 2) + 1).toNat

end

end A232923.P3960989521169904135

/-! ## A232923.P18015759224910916536

`A232920(A000217(n+3)+4)`
-/

namespace A232923.P18015759224910916536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (A000217 (n + 3) + 4).toNat

end

end A232923.P18015759224910916536

/-!
# A232924: Number of 5Xn 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally, diagonally or antidiagonally.

The programs for A232924, there is no canonical definition to state claims against.
-/

/-! ## A232924.P1967944355095542453

`A269056(n+1)-A269039(n+1)`
-/

namespace A232924.P1967944355095542453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269056 (n + 1) - A269039 (n + 1)

end

end A232924.P1967944355095542453

/-! ## A232924.P5474368005680487871

`A232920(A167499(n+3))`
-/

namespace A232924.P5474368005680487871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (A167499 (n + 3)).toNat

end

end A232924.P5474368005680487871

/-! ## A232924.P12613096424262797547

`A232920(A155212(n)+13)`
-/

namespace A232924.P12613096424262797547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (A155212 n + 13).toNat

end

end A232924.P12613096424262797547

/-! ## A232924.P2635535036718898686

`A232920(A056000(n)+15)`
-/

namespace A232924.P2635535036718898686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (A056000 n + 15).toNat

end

end A232924.P2635535036718898686

/-! ## A232924.P10728350102199748383

`A232920(A000124(n+4)+4)`
-/

namespace A232924.P10728350102199748383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (A000124 (n + 4) + 4).toNat

end

end A232924.P10728350102199748383

/-!
# A232925: Number of 6Xn 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally, diagonally or antidiagonally.

The programs for A232925, there is no canonical definition to state claims against.
-/

/-! ## A232925.P17001650511364675332

`A269057(n+1)-A269040(n+1)`
-/

namespace A232925.P17001650511364675332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269057 (n + 1) - A269040 (n + 1)

end

end A232925.P17001650511364675332

/-! ## A232925.P6161768068389459756

`A269057(n+1)-6*A229539(n+1)`
-/

namespace A232925.P6161768068389459756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269057 (n + 1) - 6 * A229539 (n + 1)

end

end A232925.P6161768068389459756

/-! ## A232925.P2274298619072281003

`A232920(A056115(n)+21)`
-/

namespace A232925.P2274298619072281003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (A056115 n + 21).toNat

end

end A232925.P2274298619072281003

/-! ## A232925.P10994595968549369689

`A232920(eq[7, A131818(n+1)])`
-/

namespace A232925.P10994595968549369689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232925.P10994595968549369689

/-! ## A232925.P16965118606122310310

`A232920(Δ[A023545(n+1)]+10)`
-/

namespace A232925.P16965118606122310310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (f1 (n + 1) - f1 n + 10).toNat

end

end A232925.P16965118606122310310

/-!
# A232926: Number of 7Xn 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally, diagonally or antidiagonally.

The programs for A232926, there is no canonical definition to state claims against.
-/

/-! ## A232926.P17180342231788018842

`A269058(n+1)-A269041(n+1)`
-/

namespace A232926.P17180342231788018842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269058 (n + 1) - A269041 (n + 1)

end

end A232926.P17180342231788018842

/-! ## A232926.P1415209844647838616

`A269058(n+1)-6*A229540(n+1)`
-/

namespace A232926.P1415209844647838616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269058 (n + 1) - 6 * A229540 (n + 1)

end

end A232926.P1415209844647838616

/-! ## A232926.P5593059452944219759

`A232920(A167487(n+5))`
-/

namespace A232926.P5593059452944219759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (A167487 (n + 5)).toNat

end

end A232926.P5593059452944219759

/-! ## A232926.P7499445091790495018

`A232920(eq[11, A066657(n)])`
-/

namespace A232926.P7499445091790495018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232926.P7499445091790495018

/-! ## A232926.P3663918435613538720

`A232920(A000124(n+6)+6)`
-/

namespace A232926.P3663918435613538720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232920 (A000124 (n + 6) + 6).toNat

end

end A232926.P3663918435613538720

/-!
# A232927: a(n) is the smallest k such that the first k primes generate the multiplicative group modulo n.

The programs for A232927, there is no canonical definition to state claims against.
-/

/-! ## A232927.P7994669535012221357

`A000006(A232928(n+3))`
-/

namespace A232927.P7994669535012221357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A232928 (n + 3)).toNat

end

end A232927.P7994669535012221357

/-! ## A232927.P12677184709530775667

`A055396(A232928(n+3)²)`
-/

namespace A232927.P12677184709530775667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A232928 (n + 3) ^ 2).toNat

end

end A232927.P12677184709530775667

/-! ## A232927.P9307600522402663914

`A056811(A232928(n+3)²)`
-/

namespace A232927.P9307600522402663914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A232928 (n + 3) ^ 2).toNat

end

end A232927.P9307600522402663914

/-! ## A232927.P14882699370603389708

`A061395(A232928(n+3)²)`
-/

namespace A232927.P14882699370603389708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A232928 (n + 3) ^ 2).toNat

end

end A232927.P14882699370603389708

/-! ## A232927.P5200181741222620403

`A066328(A232928(n+3)²)`
-/

namespace A232927.P5200181741222620403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A232928 (n + 3) ^ 2).toNat

end

end A232927.P5200181741222620403

/-! ## A232927.P10251742342154838617

`A156061(A232928(n+3)²)`
-/

namespace A232927.P10251742342154838617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (A232928 (n + 3) ^ 2).toNat

end

end A232927.P10251742342154838617

/-! ## A232927.P13623885768560432871

`A289508(A232928(n+3)²)`
-/

namespace A232927.P13623885768560432871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A232928 (n + 3) ^ 2).toNat

end

end A232927.P13623885768560432871

/-! ## A232927.P155148125775638526

`A290103(A232928(n+3)²)`
-/

namespace A232927.P155148125775638526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A232928 (n + 3) ^ 2).toNat

end

end A232927.P155148125775638526

/-! ## A232927.P15033487096627930176

`A003963(2*A232928(n+3))`
-/

namespace A232927.P15033487096627930176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A232928 (n + 3)).toNat

end

end A232927.P15033487096627930176

/-! ## A232927.P4557110425581488120

`A061395(2*A232928(n+3))`
-/

namespace A232927.P4557110425581488120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A232928 (n + 3)).toNat

end

end A232927.P4557110425581488120

/-! ## A232927.P3966741790757395264

`A156061(2*A232928(n+3))`
-/

namespace A232927.P3966741790757395264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (2 * A232928 (n + 3)).toNat

end

end A232927.P3966741790757395264

/-! ## A232927.P2252675631681622429

`A290103(2*A232928(n+3))`
-/

namespace A232927.P2252675631681622429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (2 * A232928 (n + 3)).toNat

end

end A232927.P2252675631681622429

/-!
# A232928: a(n) is the smallest q such that the primes<=q generate the multiplicative group modulo n.

The programs for A232928, there is no canonical definition to state claims against.
-/

/-! ## A232928.P9644746495398948430

`A037126(A232927(n+3)+∑[n])`
-/

namespace A232928.P9644746495398948430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A232927 (n + 3) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A232928.P9644746495398948430

/-! ## A232928.P9981289589366321065

`A000040(or(C(2, n), A232927(n+3)))`
-/

namespace A232928.P9981289589366321065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.lor (Nat.choose 2 n : ℤ) (A232927 (n + 3))).toNat

end

end A232928.P9981289589366321065

/-! ## A232928.P1192092322396065407

`A000040(lcm((-1)^n, A232927(n+3)))`
-/

namespace A232928.P1192092322396065407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.lcm ((-1) ^ n) (A232927 (n + 3)))

end

end A232928.P1192092322396065407

/-! ## A232928.P2310185911253729911

`A000040(gcd(n, n+1)*A232927(n+3))`
-/

namespace A232928.P2310185911253729911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((Nat.gcd n (n + 1) : ℤ) * A232927 (n + 3)).toNat

end

end A232928.P2310185911253729911

/-! ## A232928.P43694539622214706

`A000040(ceil(1/(n+1))*A232927(n+3))`
-/

namespace A232928.P43694539622214706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (⌈1 / (n + 1 : ℚ)⌉ * A232927 (n + 3)).toNat

end

end A232928.P43694539622214706

/-! ## A232928.P6620153529691769356

`A000040(A232927(n+3)/ceil(1/(n+1)))`
-/

namespace A232928.P6620153529691769356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A232927 (n + 3) : ℚ) / (⌈1 / (n + 1 : ℚ)⌉ : ℚ))).toNat

end

end A232928.P6620153529691769356

/-! ## A232928.P9893260903678791425

`A000040(A232927(n+3)^A178334(n))`
-/

namespace A232928.P9893260903678791425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A232927 (n + 3) : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A232928.P9893260903678791425

/-! ## A232928.P17765105861499962692

`A000040(A232927(n+3)+A007814(12*n+1))`
-/

namespace A232928.P17765105861499962692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A232927 (n + 3) + A007814 (12 * n + 1)).toNat

end

end A232928.P17765105861499962692

/-! ## A232928.P13217077242182469437

`A000040(A232927(n+3)+C(2, A000040(n+2)))`
-/

namespace A232928.P13217077242182469437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A232927 (n + 3) + (Nat.choose 2 (A000040 (n + 2)).toNat : ℤ)).toNat

end

end A232928.P13217077242182469437

/-! ## A232928.P13356784707962989588

`A000040(A232927(n+3)*A260438(A008458(n)))`
-/

namespace A232928.P13356784707962989588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A232927 (n + 3) * A260438 (A008458 n).toNat).toNat

end

end A232928.P13356784707962989588

/-! ## A232928.P4979194628634601851

`A000040(A232927(n+3)^A183092(A080100(n)))`
-/

namespace A232928.P4979194628634601851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A232927 (n + 3) : ℚ) ^ (A183092 (A080100 n).toNat : ℤ))).toNat

end

end A232928.P4979194628634601851

/-! ## A232928.P2228455844371666176

`A000040(A232927(n+3)^A111588(A151800(n)))`
-/

namespace A232928.P2228455844371666176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A232927 (n + 3) : ℚ) ^ (A111588 (A151800 n).toNat : ℤ))).toNat

end

end A232928.P2228455844371666176

/-!
# A232931: The least positive integer k such that Kronecker(D/k) = -1 where D runs through all positive fundamental discriminants (A003658).

The programs for A232931, there is no canonical definition to state claims against.
-/

/-! ## A232931.P14740018601783760793

`A092419(A003658(n+2)-floor(sqrt(A003658(n+2))))`
-/

namespace A232931.P14740018601783760793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092419 (A003658 (n + 2) - Int.sqrt (A003658 (n + 2))).toNat

end

end A232931.P14740018601783760793

/-! ## A232931.P26265214309491641

`p?[A092419(n+1)*A290098(A000037(n+1))]`
-/

namespace A232931.P26265214309491641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092419 (n + 1) * A290098 (A000037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232931.P26265214309491641

/-! ## A232931.P4115287578342896964

`A373088(A391417(n+1))`
-/

namespace A232931.P4115287578342896964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373088 (A391417 (n + 1)).toNat

end

end A232931.P4115287578342896964

/-! ## A232931.P9541083628618886633

`A373088(A391422(n+1))`
-/

namespace A232931.P9541083628618886633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373088 (A391422 (n + 1)).toNat

end

end A232931.P9541083628618886633

/-! ## A232931.P1457985097611059079

`A373088(A003658(n+2))`
-/

namespace A232931.P1457985097611059079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373088 (A003658 (n + 2)).toNat

end

end A232931.P1457985097611059079

/-!
# A232932: The least positive integer k such that Kronecker(D/k) = -1 where D runs through all negative fundamental discriminants (-A003657).

The programs for A232932, there is no canonical definition to state claims against.
-/

/-! ## A232932.P14848623724950382638

`A306220(A003657(n+1))`
-/

namespace A232932.P14848623724950382638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306220 (A003657 (n + 1)).toNat

end

end A232932.P14848623724950382638

/-! ## A232932.P2551840357826550287

`A306220(∪[A039957(n+1), A191483(n+1)])`
-/

namespace A232932.P2551840357826550287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191483 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306220 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A232932.P2551840357826550287

/-! ## A232932.P3043687408105334127

`A306220(eq[A037449(n+1), A178182(n+1)]+1)`
-/

namespace A232932.P3043687408105334127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306220 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A232932.P3043687408105334127

/-! ## A232932.P11545449710500627978

`A306220(eq[A191410(n+1), A202084(n+1)]+1)`
-/

namespace A232932.P11545449710500627978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306220 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A232932.P11545449710500627978

/-! ## A232932.P3532909481340165357

`A306220(eq[A058305(n+2), A202084(n+2)]+2)`
-/

namespace A232932.P3532909481340165357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306220 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A232932.P3532909481340165357

/-!
# A232934: Number of n X n 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally, vertically or antidiagonally.

The programs for A232934, there is no canonical definition to state claims against.
-/

/-! ## A232934.P1034667146508941169

`A232941(∑[4*n]+1)`
-/

namespace A232934.P1034667146508941169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232941 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232934.P1034667146508941169

/-! ## A232934.P5958872343990185925

`record[A003982(n)*A232941(n+1)]`
-/

namespace A232934.P5958872343990185925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A232941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232934.P5958872343990185925

/-! ## A232934.P9472018490374187790

`record[root(A232941(n+1), A143182(n))]`
-/

namespace A232934.P9472018490374187790
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232941 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232934.P9472018490374187790

/-! ## A232934.P17729610148518062370

`record[gcd(A214292(n), A232941(n+1))]`
-/

namespace A232934.P17729610148518062370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A214292 n) (A232941 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232934.P17729610148518062370

/-! ## A232934.P8846467836650452795

`record[(2-A286157(n+1))*A232941(n+1)]`
-/

namespace A232934.P8846467836650452795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A286157 (n + 1)) * A232941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232934.P8846467836650452795

/-!
# A232935: Number of n X 2 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally, vertically or antidiagonally.

The programs for A232935, the canonical program `A232935.P8560694054302644186` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232935 has offset 1).

The definition of A232935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232935.P17265094457118241617

`ogf((6+6x+2x^2)/(1-x-2x^2-x^3))`
-/

namespace A232935.P17265094457118241617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 6, 2] [1, -1, -2, -1] n

end

end A232935.P17265094457118241617

namespace A232935

/-- `ogf((6+6x+2x^2)/(1-x-2x^2-x^3))` -/
def P17265094457118241617.Spec : Prop :=
  ∀ n, P17265094457118241617.a n = A232935 (n + 1)

end A232935

/-! ## A232935.P8560694054302644186

`a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=6, a(1)=12, a(2)=26`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232935

/-- `a(n-1)+2*a(n-2)+a(n-3)` -/
def P8560694054302644186.Spec : Prop :=
  ∀ n, (P8560694054302644186.a n : ℤ) = A232935 (n + 1)

theorem P8560694054302644186.correct : P8560694054302644186.Spec := by
  intro n
  simp only [A232935, Nat.add_sub_cancel]

end A232935

/-! ## A232935.P14532730748799423671

`A245989(2*(n+1))`
-/

namespace A232935.P14532730748799423671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245989 (2 * (n + 1))

end

end A232935.P14532730748799423671

namespace A232935

/-- `A245989(2*(n+1))` -/
def P14532730748799423671.Spec : Prop :=
  ∀ n, P14532730748799423671.a n = A232935 (n + 1)

end A232935

/-! ## A232935.P2314511384545606297

`2*A002478(n+2)`
-/

namespace A232935.P2314511384545606297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002478 (n + 2)

end

end A232935.P2314511384545606297

namespace A232935

/-- `2*A002478(n+2)` -/
def P2314511384545606297.Spec : Prop :=
  ∀ n, P2314511384545606297.a n = A232935 (n + 1)

end A232935

/-! ## A232935.P9325665080124481433

`abs(Δ[2*A078039(n)])`
-/

namespace A232935.P9325665080124481433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A232935.P9325665080124481433

namespace A232935

/-- `abs(Δ[2*A078039(n)])` -/
def P9325665080124481433.Spec : Prop :=
  ∀ n, P9325665080124481433.a n = A232935 (n + 1)

end A232935

/-! ## A232935.P5595423832645898958

`Δ[2*A077864(n+1)]`
-/

namespace A232935.P5595423832645898958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232935.P5595423832645898958

namespace A232935

/-- `Δ[2*A077864(n+1)]` -/
def P5595423832645898958.Spec : Prop :=
  ∀ n, P5595423832645898958.a n = A232935 (n + 1)

end A232935

/-! ## A232935.P17730287557492378279

`Δ[A306276(2*(n+3))]`
-/

namespace A232935.P17730287557492378279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306276 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232935.P17730287557492378279

namespace A232935

/-- `Δ[A306276(2*(n+3))]` -/
def P17730287557492378279.Spec : Prop :=
  ∀ n, P17730287557492378279.a n = A232935 (n + 1)

end A232935

/-! ## A232935.P4904034055662196511

`2*A000930(2*(n+2))`
-/

namespace A232935.P4904034055662196511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000930 (2 * (n + 2))

end

end A232935.P4904034055662196511

namespace A232935

/-- `2*A000930(2*(n+2))` -/
def P4904034055662196511.Spec : Prop :=
  ∀ n, P4904034055662196511.a n = A232935 (n + 1)

end A232935

/-! ## A232935.P639670653632939383

`2*A199804(2*(n+2))`
-/

namespace A232935.P639670653632939383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199804 (2 * (n + 2))

end

end A232935.P639670653632939383

namespace A232935

/-- `2*A199804(2*(n+2))` -/
def P639670653632939383.Spec : Prop :=
  ∀ n, P639670653632939383.a n = A232935 (n + 1)

end A232935

/-! ## A232935.P11068834884444889256

`2*A068921(2*n+3)`
-/

namespace A232935.P11068834884444889256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A068921 (2 * n + 3)

end

end A232935.P11068834884444889256

namespace A232935

/-- `2*A068921(2*n+3)` -/
def P11068834884444889256.Spec : Prop :=
  ∀ n, P11068834884444889256.a n = A232935 (n + 1)

end A232935

/-! ## A232935.P4538220218039000240

`2*A109532(3*(n+2))`
-/

namespace A232935.P4538220218039000240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109532 (3 * (n + 2))

end

end A232935.P4538220218039000240

namespace A232935

/-- `2*A109532(3*(n+2))` -/
def P4538220218039000240.Spec : Prop :=
  ∀ n, P4538220218039000240.a n = A232935 (n + 1)

end A232935

/-! ## A232935.P7756593204765242155

`2*A109531(3*(n+3))`
-/

namespace A232935.P7756593204765242155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109531 (3 * (n + 3))

end

end A232935.P7756593204765242155

namespace A232935

/-- `2*A109531(3*(n+3))` -/
def P7756593204765242155.Spec : Prop :=
  ∀ n, P7756593204765242155.a n = A232935 (n + 1)

end A232935

/-! ## A232935.P3961872219726050580

`2*A078012(2*n+7)`
-/

namespace A232935.P3961872219726050580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078012 (2 * n + 7)

end

end A232935.P3961872219726050580

namespace A232935

/-- `2*A078012(2*n+7)` -/
def P3961872219726050580.Spec : Prop :=
  ∀ n, P3961872219726050580.a n = A232935 (n + 1)

end A232935

/-! ## A232935.P8067145757347918870

`2*(A077868(2*n+1)+1)`
-/

namespace A232935.P8067145757347918870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A077868 (2 * n + 1) + 1)

end

end A232935.P8067145757347918870

namespace A232935

/-- `2*(A077868(2*n+1)+1)` -/
def P8067145757347918870.Spec : Prop :=
  ∀ n, P8067145757347918870.a n = A232935 (n + 1)

end A232935

/-! ## A232935.P4915691529887108257

`2*A108104(A020744(2*n))`
-/

namespace A232935.P4915691529887108257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108104 (A020744 (2 * n)).toNat

end

end A232935.P4915691529887108257

namespace A232935

/-- `2*A108104(A020744(2*n))` -/
def P4915691529887108257.Spec : Prop :=
  ∀ n, P4915691529887108257.a n = A232935 (n + 1)

end A232935

/-! ## A232935.P8362489477779132309

`A002478(n+3)-A141015(n)`
-/

namespace A232935.P8362489477779132309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002478 (n + 3) - A141015 n

end

end A232935.P8362489477779132309

namespace A232935

/-- `A002478(n+3)-A141015(n)` -/
def P8362489477779132309.Spec : Prop :=
  ∀ n, P8362489477779132309.a n = A232935 (n + 1)

end A232935

/-! ## A232935.P6403196181514503282

`A262735(n+1)+A077864(n+2)`
-/

namespace A232935.P6403196181514503282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262735 (n + 1) + A077864 (n + 2)

end

end A232935.P6403196181514503282

namespace A232935

/-- `A262735(n+1)+A077864(n+2)` -/
def P6403196181514503282.Spec : Prop :=
  ∀ n, P6403196181514503282.a n = A232935 (n + 1)

end A232935

/-! ## A232935.P6281270785424393030

`A218078(n+1)+A218078(n+2)`
-/

namespace A232935.P6281270785424393030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218078 (n + 1) + A218078 (n + 2)

end

end A232935.P6281270785424393030

namespace A232935

/-- `A218078(n+1)+A218078(n+2)` -/
def P6281270785424393030.Spec : Prop :=
  ∀ n, P6281270785424393030.a n = A232935 (n + 1)

end A232935

/-! ## A232935.P14588320244380304563

`A108122(n+3)+A101399(n+1)`
-/

namespace A232935.P14588320244380304563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108122 (n + 3) + A101399 (n + 1)

end

end A232935.P14588320244380304563

namespace A232935

/-- `A108122(n+3)+A101399(n+1)` -/
def P14588320244380304563.Spec : Prop :=
  ∀ n, P14588320244380304563.a n = A232935 (n + 1)

end A232935

/-! ## A232935.P3126243635717058690

`A077864(n+2)+A013979(2*n)`
-/

namespace A232935.P3126243635717058690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077864 (n + 2) + A013979 (2 * n)

end

end A232935.P3126243635717058690

namespace A232935

/-- `A077864(n+2)+A013979(2*n)` -/
def P3126243635717058690.Spec : Prop :=
  ∀ n, P3126243635717058690.a n = A232935 (n + 1)

end A232935

/-!
# A232936: Number of n X 3 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally, vertically or antidiagonally.

The programs for A232936, the canonical program `A232936.P13842253539662721403` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232936 has offset 1).

The definition of A232936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232936.P13842253539662721403

`ogf((12+14x-2x^2-10x^3-2x^4+2x^5)/(1-x-5x^2-4x^3+x^5))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232936

/-- `ogf((12+14x-2x^2-10x^3-2x^4+2x^5)/(1-x-5x^2-4x^3+x^5))` -/
def P13842253539662721403.Spec : Prop :=
  ∀ n, P13842253539662721403.a n = A232936 (n + 1)

theorem P13842253539662721403.correct : P13842253539662721403.Spec := by
  intro n
  simp only [A232936, Nat.add_sub_cancel]

end A232936

/-! ## A232936.P11286268265455320706

`A268804(n+1)-A268793(n+1)`
-/

namespace A232936.P11286268265455320706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268804 (n + 1) - A268793 (n + 1)

end

end A232936.P11286268265455320706

namespace A232936

/-- `A268804(n+1)-A268793(n+1)` -/
def P11286268265455320706.Spec : Prop :=
  ∀ n, P11286268265455320706.a n = A232936 (n + 1)

end A232936

/-! ## A232936.P946658319181086082

`A232941(∑[n+2]+4)`
-/

namespace A232936.P946658319181086082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232941 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232936.P946658319181086082

namespace A232936

/-- `A232941(∑[n+2]+4)` -/
def P946658319181086082.Spec : Prop :=
  ∀ n, P946658319181086082.a n = A232936 (n + 1)

end A232936

/-! ## A232936.P825588474179818726

`lcm(2, A232941(A167614(n+1)))`
-/

namespace A232936.P825588474179818726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232941 (A167614 (n + 1)).toNat)

end

end A232936.P825588474179818726

namespace A232936

/-- `lcm(2, A232941(A167614(n+1)))` -/
def P825588474179818726.Spec : Prop :=
  ∀ n, (P825588474179818726.a n : ℤ) = A232936 (n + 1)

end A232936

/-! ## A232936.P3797346062952509751

`record[A232941(A286157(n+1)+3)]`
-/

namespace A232936.P3797346062952509751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232941 (A286157 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232936.P3797346062952509751

namespace A232936

/-- `record[A232941(A286157(n+1)+3)]` -/
def P3797346062952509751.Spec : Prop :=
  ∀ n, P3797346062952509751.a n = A232936 (n + 1)

end A232936

/-!
# A232937: Number of n X 4 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally, vertically or antidiagonally.

The programs for A232937, there is no canonical definition to state claims against.
-/

/-! ## A232937.P1685813903836105340

`A268805(n+1)-A268794(n+1)`
-/

namespace A232937.P1685813903836105340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268805 (n + 1) - A268794 (n + 1)

end

end A232937.P1685813903836105340

/-! ## A232937.P6044354267811264325

`A232941(A374004(n+1))`
-/

namespace A232937.P6044354267811264325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232941 (A374004 (n + 1)).toNat

end

end A232937.P6044354267811264325

/-! ## A232937.P16852624884090459179

`A232941(A052905(n)+9)`
-/

namespace A232937.P16852624884090459179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232941 (A052905 n + 9).toNat

end

end A232937.P16852624884090459179

/-! ## A232937.P13253013622951234876

`A232941(A055999(n)+10)`
-/

namespace A232937.P13253013622951234876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232941 (A055999 n + 10).toNat

end

end A232937.P13253013622951234876

/-! ## A232937.P6615066720919362803

`A232941(A167614(n+2)+1)`
-/

namespace A232937.P6615066720919362803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232941 (A167614 (n + 2) + 1).toNat

end

end A232937.P6615066720919362803

/-!
# A232938: Number of nX5 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally, vertically or antidiagonally.

The programs for A232938, there is no canonical definition to state claims against.
-/

/-! ## A232938.P156904835334977270

`(floor(acot(n)²)+2)*A219738(n+1)`
-/

namespace A232938.P156904835334977270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ + 2) * A219738 (n + 1)

end

end A232938.P156904835334977270

/-! ## A232938.P5226378454125761582

`A268806(n+1)-A268795(n+1)`
-/

namespace A232938.P5226378454125761582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268806 (n + 1) - A268795 (n + 1)

end

end A232938.P5226378454125761582

/-! ## A232938.P7798695845003085614

`A268806(floor(acot(n))!+n)%A268795(n+1)`
-/

namespace A232938.P7798695845003085614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268806 (Nat.factorial ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat + n)) (A268795 (n + 1))

end

end A232938.P7798695845003085614

/-! ## A232938.P9916390186057929802

`A232941(A374005(n+1))`
-/

namespace A232938.P9916390186057929802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232941 (A374005 (n + 1)).toNat

end

end A232938.P9916390186057929802

/-! ## A232938.P5177167042636616165

`A232941(A167499(n+3))`
-/

namespace A232938.P5177167042636616165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232941 (A167499 (n + 3)).toNat

end

end A232938.P5177167042636616165

/-!
# A232939: Number of nX6 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally, vertically or antidiagonally.

The programs for A232939, there is no canonical definition to state claims against.
-/

/-! ## A232939.P6255445804416669476

`A268807(n+1)-A268796(n+1)`
-/

namespace A232939.P6255445804416669476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268807 (n + 1) - A268796 (n + 1)

end

end A232939.P6255445804416669476

/-! ## A232939.P571380709402365797

`A232941(A374007(n+1))`
-/

namespace A232939.P571380709402365797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232941 (A374007 (n + 1)).toNat

end

end A232939.P571380709402365797

/-! ## A232939.P5007275390469090059

`A232941(A167614(n+4)+3)`
-/

namespace A232939.P5007275390469090059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232941 (A167614 (n + 4) + 3).toNat

end

end A232939.P5007275390469090059

/-! ## A232939.P7946014161793976335

`A232941(A000096(n+4)+7)`
-/

namespace A232939.P7946014161793976335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232941 (A000096 (n + 4) + 7).toNat

end

end A232939.P7946014161793976335

/-! ## A232939.P16507020314812677329

`A232941(A000217(n+5)+6)`
-/

namespace A232939.P16507020314812677329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232941 (A000217 (n + 5) + 6).toNat

end

end A232939.P16507020314812677329

/-!
# A232940: Number of nX7 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally, vertically or antidiagonally.

The programs for A232940, there is no canonical definition to state claims against.
-/

/-! ## A232940.P6733228892562221786

`A268808(n+1)-A268797(n+1)`
-/

namespace A232940.P6733228892562221786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268808 (n + 1) - A268797 (n + 1)

end

end A232940.P6733228892562221786

/-! ## A232940.P9013337424522152085

`A232941(A374008(n+1))`
-/

namespace A232940.P9013337424522152085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232941 (A374008 (n + 1)).toNat

end

end A232940.P9013337424522152085

/-! ## A232940.P1742055742982463577

`A232941(eq[8, A131818(n+1)])`
-/

namespace A232940.P1742055742982463577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232940.P1742055742982463577

/-! ## A232940.P16993905680132997121

`A232941(A055999(n+4))`
-/

namespace A232940.P16993905680132997121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232941 (A055999 (n + 4)).toNat

end

end A232940.P16993905680132997121

/-! ## A232940.P17851099679552399884

`A232941(eq[4, A219347(n)])`
-/

namespace A232940.P17851099679552399884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232941 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232940.P17851099679552399884

/-!
# A232941: T(n,k)=Number of nXk 0..2 arrays with no element x(i,j) adjacent to value 2-x(i,j) horizontally, vertically or antidiagonally.

The programs for A232941, there is no canonical definition to state claims against.
-/

/-! ## A232941.P11599701301192982125

`A268809(n+1)-A268798(n+1)`
-/

namespace A232941.P11599701301192982125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268809 (n + 1) - A268798 (n + 1)

end

end A232941.P11599701301192982125

/-!
# A232942: Number of n X n 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, vertically or antidiagonally, and top left element zero.

The programs for A232942, there is no canonical definition to state claims against.
-/

/-! ## A232942.P16786256948218404123

`A232948(∑[4*n]+1)`
-/

namespace A232942.P16786256948218404123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232948 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232942.P16786256948218404123

/-! ## A232942.P14352742325260660019

`2*A233067(n+1)-1`
-/

namespace A232942.P14352742325260660019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233067 (n + 1) - 1

end

end A232942.P14352742325260660019

/-!
# A232943: Number of nX3 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, vertically or antidiagonally, and top left element zero.

The programs for A232943, there is no canonical definition to state claims against.
-/

/-! ## A232943.P7963566740502027402

`2*A233068(n+1)-1`
-/

namespace A232943.P7963566740502027402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233068 (n + 1) - 1

end

end A232943.P7963566740502027402

/-! ## A232943.P12255716679573752805

`A233068(n+1)+A233068(n+1)-A057427(A000113(n+1))`
-/

namespace A232943.P12255716679573752805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233068 (n + 1) + (A233068 (n + 1) - A057427 (A000113 (n + 1)).toNat)

end

end A232943.P12255716679573752805

/-! ## A232943.P2216486201267452877

`A232948(∑[n+2]+4)`
-/

namespace A232943.P2216486201267452877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232948 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232943.P2216486201267452877

/-! ## A232943.P16993864871045119107

`or(1, A232948(A167614(n+1)))`
-/

namespace A232943.P16993864871045119107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232948 (A167614 (n + 1)).toNat)

end

end A232943.P16993864871045119107

/-! ## A232943.P4612225039534518571

`A232948(A167614(n+1))%A232293(n+1)`
-/

namespace A232943.P4612225039534518571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232948 (A167614 (n + 1)).toNat) (A232293 (n + 1))

end

end A232943.P4612225039534518571

/-!
# A232944: Number of n X 4 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, vertically or antidiagonally, and top left element zero.

The programs for A232944, there is no canonical definition to state claims against.
-/

/-! ## A232944.P7831454589628089767

`2*A233069(n+1)-1`
-/

namespace A232944.P7831454589628089767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233069 (n + 1) - 1

end

end A232944.P7831454589628089767

/-! ## A232944.P18217594541131044350

`A232948(A374004(n+1))`
-/

namespace A232944.P18217594541131044350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232948 (A374004 (n + 1)).toNat

end

end A232944.P18217594541131044350

/-! ## A232944.P12314132712689973797

`A232948(A055999(n)+10)`
-/

namespace A232944.P12314132712689973797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232948 (A055999 n + 10).toNat

end

end A232944.P12314132712689973797

/-! ## A232944.P6680032009739880435

`A232948(A167614(n+2)+1)`
-/

namespace A232944.P6680032009739880435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232948 (A167614 (n + 2) + 1).toNat

end

end A232944.P6680032009739880435

/-! ## A232944.P2145227438860212337

`A232948(A166136(n+2)-2)`
-/

namespace A232944.P2145227438860212337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232948 (A166136 (n + 2) - 2).toNat

end

end A232944.P2145227438860212337

/-!
# A232945: Number of n X 5 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, vertically or antidiagonally, and top left element zero.

The programs for A232945, there is no canonical definition to state claims against.
-/

/-! ## A232945.P6020756791747772408

`2*A233070(n+1)-1`
-/

namespace A232945.P6020756791747772408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233070 (n + 1) - 1

end

end A232945.P6020756791747772408

/-! ## A232945.P17935143309183560238

`A232948(A374005(n+1))`
-/

namespace A232945.P17935143309183560238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232948 (A374005 (n + 1)).toNat

end

end A232945.P17935143309183560238

/-! ## A232945.P6883178724146271320

`A232948(A167499(n+3))`
-/

namespace A232945.P6883178724146271320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232948 (A167499 (n + 3)).toNat

end

end A232945.P6883178724146271320

/-! ## A232945.P8308073428870829350

`A232948(A056000(n)+15)`
-/

namespace A232945.P8308073428870829350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232948 (A056000 n + 15).toNat

end

end A232945.P8308073428870829350

/-!
# A232946: Number of nX6 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, vertically or antidiagonally, and top left element zero.

The programs for A232946, there is no canonical definition to state claims against.
-/

/-! ## A232946.P17614940120446045307

`2*A233071(n+1)-1`
-/

namespace A232946.P17614940120446045307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233071 (n + 1) - 1

end

end A232946.P17614940120446045307

/-! ## A232946.P8834965548231223705

`A232948(A374007(n+1))`
-/

namespace A232946.P8834965548231223705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232948 (A374007 (n + 1)).toNat

end

end A232946.P8834965548231223705

/-! ## A232946.P2421443686098005149

`A232948(A000217(n+5)+6)`
-/

namespace A232946.P2421443686098005149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232948 (A000217 (n + 5) + 6).toNat

end

end A232946.P2421443686098005149

/-! ## A232946.P17856212274900988649

`A232948(eq[7, A131818(n+1)])`
-/

namespace A232946.P17856212274900988649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232948 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232946.P17856212274900988649

/-! ## A232946.P14152356694222770296

`A232948(A000124(n+6)-(n+1))`
-/

namespace A232946.P14152356694222770296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232948 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A232946.P14152356694222770296

/-!
# A232947: Number of nX7 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, vertically or antidiagonally, and top left element zero.

The programs for A232947, there is no canonical definition to state claims against.
-/

/-! ## A232947.P14674348643652885033

`2*A233072(n+1)-1`
-/

namespace A232947.P14674348643652885033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233072 (n + 1) - 1

end

end A232947.P14674348643652885033

/-! ## A232947.P15463675076576824478

`A232948(A374008(n+1))`
-/

namespace A232947.P15463675076576824478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232948 (A374008 (n + 1)).toNat

end

end A232947.P15463675076576824478

/-! ## A232947.P17050431288250704461

`A232948(A166136(n+5)+(1/(-1)^n)^(n+1))`
-/

namespace A232947.P17050431288250704461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232948 (SequenceMachineLib.roundAway ((A166136 (n + 5) : ℚ) + (1 / ((-1) ^ n : ℚ)) ^ (n + 1))).toNat

end

end A232947.P17050431288250704461

/-! ## A232947.P10972351944938785644

`A232948(eq[6, A193592(n)])`
-/

namespace A232947.P10972351944938785644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232948 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232947.P10972351944938785644

/-! ## A232947.P2151503226495142264

`A232948(eq[6, A025581(n)]+1)`
-/

namespace A232947.P2151503226495142264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232948 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A232947.P2151503226495142264

/-!
# A232948: T(n,k)=Number of nXk 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, vertically or antidiagonally, and top left element zero.

The programs for A232948, there is no canonical definition to state claims against.
-/

/-! ## A232948.P9806573936322958293

`2*A233073(n+1)-1`
-/

namespace A232948.P9806573936322958293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233073 (n + 1) - 1

end

end A232948.P9806573936322958293

/-! ## A232948.P14466838159038159519

`A008683(A007918(n))+2*A233073(n+1)`
-/

namespace A232948.P14466838159038159519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007918 n).toNat + 2 * A233073 (n + 1)

end

end A232948.P14466838159038159519

/-! ## A232948.P5090353789106424816

`A008683(A001359(n+1))+2*A233073(n+1)`
-/

namespace A232948.P5090353789106424816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001359 (n + 1)).toNat + 2 * A233073 (n + 1)

end

end A232948.P5090353789106424816

/-! ## A232948.P12267421482960045030

`A008683(A006512(n+1))+2*A233073(n+1)`
-/

namespace A232948.P12267421482960045030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006512 (n + 1)).toNat + 2 * A233073 (n + 1)

end

end A232948.P12267421482960045030

/-! ## A232948.P8268209896013718848

`A008683(A065091(n+1))+2*A233073(n+1)`
-/

namespace A232948.P8268209896013718848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A065091 (n + 1)).toNat + 2 * A233073 (n + 1)

end

end A232948.P8268209896013718848

/-! ## A232948.P8461767427431497530

`(A269143(n+1)-A269152(n+1))/4`
-/

namespace A232948.P8461767427431497530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269143 (n + 1) - A269152 (n + 1) : ℚ) / 4

end

end A232948.P8461767427431497530

/-!
# A232949: Number of n X n 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, diagonally or antidiagonally, and top left element zero.

The programs for A232949, there is no canonical definition to state claims against.
-/

/-! ## A232949.P9861723434009757906

`2*A233092(n+1)-1`
-/

namespace A232949.P9861723434009757906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233092 (n + 1) - 1

end

end A232949.P9861723434009757906

/-! ## A232949.P6093707898115000628

`A232955(∑[4*n]+1)`
-/

namespace A232949.P6093707898115000628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232955 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232949.P6093707898115000628

/-!
# A232950: Number of n X 3 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, diagonally or antidiagonally, and top left element zero.

The programs for A232950, there is no canonical definition to state claims against.
-/

/-! ## A232950.P16568433512987974653

`ogf((9-6x)/(1-15x+6x^2))`
-/

namespace A232950.P16568433512987974653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, -6] [1, -15, 6] n

end

end A232950.P16568433512987974653

/-! ## A232950.P18266964500767490164

`15*a(n-1)-6*a(n-2)` with `a(0)=9, a(1)=129`
-/

namespace A232950.P18266964500767490164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 129] fun n a =>
  15 * a (n - 1) - 6 * a (n - 2)

end

end A232950.P18266964500767490164

/-! ## A232950.P5756905790766935563

`2*A233093(n+1)-1`
-/

namespace A232950.P5756905790766935563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233093 (n + 1) - 1

end

end A232950.P5756905790766935563

/-! ## A232950.P17510573136420891097

`(-1)^A033999(n)+2*A233093(n+1)`
-/

namespace A232950.P17510573136420891097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A033999 n : ℤ) + (2 * A233093 (n + 1) : ℚ)

end

end A232950.P17510573136420891097

/-! ## A232950.P18248535887155516829

`A008683(A020484(n))+2*A233093(n+1)`
-/

namespace A232950.P18248535887155516829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020484 n).toNat + 2 * A233093 (n + 1)

end

end A232950.P18248535887155516829

/-! ## A232950.P14251551714615580082

`A008683(Δ[A118482(n)])+2*A233093(n+1)`
-/

namespace A232950.P14251551714615580082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (n + 1) - f1 n).toNat + 2 * A233093 (n + 1)

end

end A232950.P14251551714615580082

/-! ## A232950.P3246747817812140137

`(-1)^A014963(A235687(n+1))+2*A233093(n+1)`
-/

namespace A232950.P3246747817812140137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A014963 (A235687 (n + 1)).toNat : ℤ) + (2 * A233093 (n + 1) : ℚ)

end

end A232950.P3246747817812140137

/-! ## A232950.P7494440479889187178

`A008683(root(A283092(n+1), 2))+2*A233093(n+1)`
-/

namespace A232950.P7494440479889187178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((A283092 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat + 2 * A233093 (n + 1)

end

end A232950.P7494440479889187178

/-!
# A232951: Number of n X 4 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, diagonally or antidiagonally, and top left element zero.

The programs for A232951, there is no canonical definition to state claims against.
-/

/-! ## A232951.P9325256539452284879

`ogf((27-66x+15x^2)/(1-31x+35x^2-5x^3))`
-/

namespace A232951.P9325256539452284879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [27, -66, 15] [1, -31, 35, -5] n

end

end A232951.P9325256539452284879

/-! ## A232951.P15099571040944090061

`2*A233094(n+1)-1`
-/

namespace A232951.P15099571040944090061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233094 (n + 1) - 1

end

end A232951.P15099571040944090061

/-! ## A232951.P12101344403363945208

`A232955(A141214(n+1))`
-/

namespace A232951.P12101344403363945208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232955 (A141214 (n + 1)).toNat

end

end A232951.P12101344403363945208

/-! ## A232951.P2963849098550454880

`A232955(A155212(n)+5)`
-/

namespace A232951.P2963849098550454880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232955 (A155212 n + 5).toNat

end

end A232951.P2963849098550454880

/-! ## A232951.P8440140856513046643

`A232955(eq[3, A193592(n)])`
-/

namespace A232951.P8440140856513046643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232955 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232951.P8440140856513046643

/-!
# A232952: Number of nX5 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, diagonally or antidiagonally, and top left element zero.

The programs for A232952, there is no canonical definition to state claims against.
-/

/-! ## A232952.P15597837750590404241

`2*A233095(n+1)-1`
-/

namespace A232952.P15597837750590404241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233095 (n + 1) - 1

end

end A232952.P15597837750590404241

/-! ## A232952.P14344568908924895726

`A118830(A000265(n+1))+2*A233095(n+1)`
-/

namespace A232952.P14344568908924895726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (A000265 (n + 1)).toNat + 2 * A233095 (n + 1)

end

end A232952.P14344568908924895726

/-! ## A232952.P16503714012586090936

`A118830(A339522(n+1))+2*A233095(n+1)`
-/

namespace A232952.P16503714012586090936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (A339522 (n + 1)).toNat + 2 * A233095 (n + 1)

end

end A232952.P16503714012586090936

/-! ## A232952.P10708289436880116495

`A232955(eq[4, A193592(n)])`
-/

namespace A232952.P10708289436880116495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232955 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232952.P10708289436880116495

/-! ## A232952.P6135882525728713005

`A232955(eq[8, A140996(n)])`
-/

namespace A232952.P6135882525728713005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232955 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232952.P6135882525728713005

/-!
# A232953: Number of nX6 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, diagonally or antidiagonally, and top left element zero.

The programs for A232953, there is no canonical definition to state claims against.
-/

/-! ## A232953.P1365741239158417053

`2*A233096(n+1)-1`
-/

namespace A232953.P1365741239158417053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233096 (n + 1) - 1

end

end A232953.P1365741239158417053

/-! ## A232953.P3042956677837462189

`A233096(n+1)+A233096(n+1)-A040001(A185935(n+1))`
-/

namespace A232953.P3042956677837462189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233096 (n + 1) + (A233096 (n + 1) - A040001 (A185935 (n + 1)).toNat)

end

end A232953.P3042956677837462189

/-! ## A232953.P13526002527117959334

`A232955(eq[3, A219347(n)])`
-/

namespace A232953.P13526002527117959334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232955 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232953.P13526002527117959334

/-! ## A232953.P10098843056958767474

`A232955(eq[5, A193592(n)])`
-/

namespace A232953.P10098843056958767474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232955 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232953.P10098843056958767474

/-! ## A232953.P16643372895036340282

`A232955(Δ[Δ[A006504(n+1)]])`
-/

namespace A232953.P16643372895036340282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232955 (f1 (n + 1) - f1 n).toNat

end

end A232953.P16643372895036340282

/-!
# A232954: Number of nX7 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, diagonally or antidiagonally, and top left element zero.

The programs for A232954, there is no canonical definition to state claims against.
-/

/-! ## A232954.P7086732224665726108

`2*A233097(n+1)-1`
-/

namespace A232954.P7086732224665726108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233097 (n + 1) - 1

end

end A232954.P7086732224665726108

/-! ## A232954.P13193720100522504594

`A232955(eq[4, A219347(n)])`
-/

namespace A232954.P13193720100522504594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232955 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232954.P13193720100522504594

/-!
# A232955: T(n,k)=Number of nXk 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, diagonally or antidiagonally, and top left element zero.

The programs for A232955, there is no canonical definition to state claims against.
-/

/-! ## A232955.P9366871337019166252

`(A269201(n+1)-A269214(n+1))/4`
-/

namespace A232955.P9366871337019166252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269201 (n + 1) - A269214 (n + 1) : ℚ) / 4

end

end A232955.P9366871337019166252

/-! ## A232955.P17304716049735061576

`A002265(A269201(n+1)-A269214(n+1))`
-/

namespace A232955.P17304716049735061576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A269201 (n + 1) - A269214 (n + 1)).toNat

end

end A232955.P17304716049735061576

/-! ## A232955.P4474034880864554641

`A054576(A269201(n+1)-A269214(n+1))`
-/

namespace A232955.P4474034880864554641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A269201 (n + 1) - A269214 (n + 1)).toNat

end

end A232955.P4474034880864554641

/-! ## A232955.P2864531375365539673

`A110651(A269201(n+1)-A269214(n+1))`
-/

namespace A232955.P2864531375365539673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110651 (A269201 (n + 1) - A269214 (n + 1)).toNat

end

end A232955.P2864531375365539673

/-! ## A232955.P16944366662143024735

`A110657(A269201(n+1)-A269214(n+1))`
-/

namespace A232955.P16944366662143024735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A269201 (n + 1) - A269214 (n + 1)).toNat

end

end A232955.P16944366662143024735

/-!
# A232956: Number of 2 X n 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, diagonally or antidiagonally, and top left element zero.

The programs for A232956, the canonical program `A232956.P4427344254962836584` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232956 has offset 1).

The definition of A232956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232956.P15681767262251401603

`ogf((4+x)/(1-5x-6x^2))`
-/

namespace A232956.P15681767262251401603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 1] [1, -5, -6] n

end

end A232956.P15681767262251401603

namespace A232956

/-- `ogf((4+x)/(1-5x-6x^2))` -/
def P15681767262251401603.Spec : Prop :=
  ∀ n, P15681767262251401603.a n = A232956 (n + 1)

end A232956

/-! ## A232956.P4427344254962836584

`3*((-1)^n+2*a(n-1))` with `a(0)=4`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232956

/-- `3*((-1)^n+2*a(n-1))` -/
def P4427344254962836584.Spec : Prop :=
  ∀ n, P4427344254962836584.a n = A232956 (n + 1)

theorem P4427344254962836584.correct : P4427344254962836584.Spec := by
  intro n
  simp only [A232956, Nat.add_sub_cancel]

end A232956

/-! ## A232956.P11405873809141333289

`3*(2*(a(n-1)-n%2)+1)` with `a(0)=4`
-/

namespace A232956.P11405873809141333289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  3 * (2 * (a (n - 1) - ((n % 2 : ℕ) : ℤ)) + 1)

end

end A232956.P11405873809141333289

namespace A232956

/-- `3*(2*(a(n-1)-n%2)+1)` -/
def P11405873809141333289.Spec : Prop :=
  ∀ n, P11405873809141333289.a n = A232956 (n + 1)

end A232956

/-! ## A232956.P15901975206797725155

`5*a(n-1)+6*a(n-2)` with `a(0)=4, a(1)=21`
-/

namespace A232956.P15901975206797725155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 21] fun n a =>
  5 * a (n - 1) + 6 * a (n - 2)

end

end A232956.P15901975206797725155

namespace A232956

/-- `5*a(n-1)+6*a(n-2)` -/
def P15901975206797725155.Spec : Prop :=
  ∀ n, (P15901975206797725155.a n : ℤ) = A232956 (n + 1)

end A232956

/-! ## A232956.P16148675827447390353

`lcm(3, a(n-1)+a(n-1)+(-1)^n)` with `a(0)=4`
-/

namespace A232956.P16148675827447390353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Int.lcm 3 ((a (n - 1) : ℤ) + ((a (n - 1) : ℤ) + (-1) ^ n))

end

end A232956.P16148675827447390353

namespace A232956

/-- `lcm(3, a(n-1)+a(n-1)+(-1)^n)` -/
def P16148675827447390353.Spec : Prop :=
  ∀ n, (P16148675827447390353.a n : ℤ) = A232956 (n + 1)

end A232956

/-! ## A232956.P17542000806675099712

`3*(a(n-1)-((-1)^(1-n)-a(n-1)))` with `a(0)=4`
-/

namespace A232956.P17542000806675099712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  3 * (a (n - 1) - ((-1 : ℚ) ^ (1 - (n : ℤ) : ℤ) - a (n - 1)))

end

end A232956.P17542000806675099712

namespace A232956

/-- `3*(a(n-1)-((-1)^(1-n)-a(n-1)))` -/
def P17542000806675099712.Spec : Prop :=
  ∀ n, P17542000806675099712.a n = (A232956 (n + 1) : ℚ)

end A232956

/-! ## A232956.P9024410588171966551

`A055846(n+1)-a(n-1)` with `a(0)=4`
-/

namespace A232956.P9024410588171966551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A055846 (n + 1) - a (n - 1)

end

end A232956.P9024410588171966551

namespace A232956

/-- `A055846(n+1)-a(n-1)` -/
def P9024410588171966551.Spec : Prop :=
  ∀ n, P9024410588171966551.a n = A232956 (n + 1)

end A232956

/-! ## A232956.P13680371464143431255

`Δ[A000034(n)+Δ[A015540(n)]]`
-/

namespace A232956.P13680371464143431255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015540 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232956.P13680371464143431255

namespace A232956

/-- `Δ[A000034(n)+Δ[A015540(n)]]` -/
def P13680371464143431255.Spec : Prop :=
  ∀ n, P13680371464143431255.a n = A232956 (n + 1)

end A232956

/-! ## A232956.P15502900012319953105

`Δ[A000035(n)+Δ[A015540(n)]]`
-/

namespace A232956.P15502900012319953105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015540 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232956.P15502900012319953105

namespace A232956

/-- `Δ[A000035(n)+Δ[A015540(n)]]` -/
def P15502900012319953105.Spec : Prop :=
  ∀ n, P15502900012319953105.a n = A232956 (n + 1)

end A232956

/-! ## A232956.P14971121908661324891

`Δ[Δ[A015540(n)+A004526(n)]]`
-/

namespace A232956.P14971121908661324891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015540 n + A004526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232956.P14971121908661324891

namespace A232956

/-- `Δ[Δ[A015540(n)+A004526(n)]]` -/
def P14971121908661324891.Spec : Prop :=
  ∀ n, P14971121908661324891.a n = A232956 (n + 1)

end A232956

/-! ## A232956.P5725893714558197859

`Δ[Δ[A015540(n)]-A059841(n)]`
-/

namespace A232956.P5725893714558197859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015540 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232956.P5725893714558197859

namespace A232956

/-- `Δ[Δ[A015540(n)]-A059841(n)]` -/
def P5725893714558197859.Spec : Prop :=
  ∀ n, P5725893714558197859.a n = A232956 (n + 1)

end A232956

/-!
# A232957: Number of 3 X n 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, diagonally or antidiagonally, and top left element zero.

The programs for A232957, there is no canonical definition to state claims against.
-/

/-! ## A232957.P10996468758421684166

`ogf((16-45x+5x^2+10x^3)/(1-12x-7x^2+40x^3-12x^4))`
-/

namespace A232957.P10996468758421684166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, -45, 5, 10] [1, -12, -7, 40, -12] n

end

end A232957.P10996468758421684166

/-! ## A232957.P2793610712993931554

`A232955(∑[n+2]+4)`
-/

namespace A232957.P2793610712993931554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232955 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232957.P2793610712993931554

/-! ## A232957.P5656687749467107945

`lcm((-1)^n, A232955(A167614(n+1)))`
-/

namespace A232957.P5656687749467107945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A232955 (A167614 (n + 1)).toNat)

end

end A232957.P5656687749467107945

/-! ## A232957.P5262952307900386126

`A232955(A167614(n+1))+A025466(n)`
-/

namespace A232957.P5262952307900386126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232955 (A167614 (n + 1)).toNat + A025466 n

end

end A232957.P5262952307900386126

/-! ## A232957.P6538194620209766283

`A177849(n)*A232955(A167614(n+1))`
-/

namespace A232957.P6538194620209766283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 n * A232955 (A167614 (n + 1)).toNat

end

end A232957.P6538194620209766283

/-!
# A232958: Number of 4Xn 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, diagonally or antidiagonally, and top left element zero.

The programs for A232958, there is no canonical definition to state claims against.
-/

/-! ## A232958.P7679848280967131157

`A232955(A141214(n)+7)`
-/

namespace A232958.P7679848280967131157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232955 (A141214 n + 7).toNat

end

end A232958.P7679848280967131157

/-! ## A232958.P4806008692612714583

`A232955(A055999(n)+10)`
-/

namespace A232958.P4806008692612714583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232955 (A055999 n + 10).toNat

end

end A232958.P4806008692612714583

/-! ## A232958.P2708039854178147350

`A232955(Δ[A005586(n)]+5)`
-/

namespace A232958.P2708039854178147350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232955 (f1 (n + 1) - f1 n + 5).toNat

end

end A232958.P2708039854178147350

/-! ## A232958.P12461588484955374804

`A232955(A167614(n+2)+1)`
-/

namespace A232958.P12461588484955374804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232955 (A167614 (n + 2) + 1).toNat

end

end A232958.P12461588484955374804

/-! ## A232958.P10127252558486722544

`A232955(eq[5, A131818(n+1)])`
-/

namespace A232958.P10127252558486722544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232955 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232958.P10127252558486722544

/-!
# A232959: Number of 5Xn 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, diagonally or antidiagonally, and top left element zero.

The programs for A232959, there is no canonical definition to state claims against.
-/

/-! ## A232959.P14980248409373418825

`A232955(A167499(n+3))`
-/

namespace A232959.P14980248409373418825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232955 (A167499 (n + 3)).toNat

end

end A232959.P14980248409373418825

/-! ## A232959.P12716030785049668759

`A232955(A056000(n)+15)`
-/

namespace A232959.P12716030785049668759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232955 (A056000 n + 15).toNat

end

end A232959.P12716030785049668759

/-! ## A232959.P12453904699559313141

`A232955(A141214(n+1)+8)`
-/

namespace A232959.P12453904699559313141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232955 (A141214 (n + 1) + 8).toNat

end

end A232959.P12453904699559313141

/-! ## A232959.P3774883535286065536

`A232955(A051936(n+4)+14)`
-/

namespace A232959.P3774883535286065536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232955 (A051936 (n + 4) + 14).toNat

end

end A232959.P3774883535286065536

/-! ## A232959.P5693799780898775210

`A232955(eq[6, A131818(n+1)])`
-/

namespace A232959.P5693799780898775210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232955 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232959.P5693799780898775210

/-!
# A232960: Number of 6Xn 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, diagonally or antidiagonally, and top left element zero.

The programs for A232960, there is no canonical definition to state claims against.
-/

/-! ## A232960.P13711874104125451560

`A232955(A056115(n)+21)`
-/

namespace A232960.P13711874104125451560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232955 (A056115 n + 21).toNat

end

end A232960.P13711874104125451560

/-! ## A232960.P9247159490631678415

`A232955(A167614(n+4)+3)`
-/

namespace A232960.P9247159490631678415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232955 (A167614 (n + 4) + 3).toNat

end

end A232960.P9247159490631678415

/-! ## A232960.P11089891539259587120

`A232955(A000217(n+5)+6)`
-/

namespace A232960.P11089891539259587120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232955 (A000217 (n + 5) + 6).toNat

end

end A232960.P11089891539259587120

/-! ## A232960.P5839373367842945981

`A232955(eq[5, A002262(n)]+1)`
-/

namespace A232960.P5839373367842945981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232955 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A232960.P5839373367842945981

/-! ## A232960.P10303720222578292538

`A232955(eq[7, A131818(n+1)])`
-/

namespace A232960.P10303720222578292538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232955 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232960.P10303720222578292538

/-!
# A232961: Number of 7Xn 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, diagonally or antidiagonally, and top left element zero.

The programs for A232961, there is no canonical definition to state claims against.
-/

/-! ## A232961.P12167954555422774033

`A232955(eq[8, A131818(n+1)])`
-/

namespace A232961.P12167954555422774033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232955 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232961.P12167954555422774033

/-!
# A232964: Numbers k such that k divides 1 + Sum_{j=1..k} prime(j)^9.

The programs for A232964, there is no canonical definition to state claims against.
-/

/-! ## A232964.P17102919635445750705

`A000720(A233042(n+1))`
-/

namespace A232964.P17102919635445750705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A233042 (n + 1)).toNat

end

end A232964.P17102919635445750705

/-!
# A232965: Number of circular n-bit strings that, when circularly shifted by 3 bits, do not have coincident 1's in any position.

The programs for A232965, the canonical program `A232965.P7853421985222852216` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232965 has offset 1).

The definition of A232965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232965.P7853421985222852216

`A000032((n+1)/gcd(n+1, 3))^gcd(n+1, 3)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A232965

/-- `A000032((n+1)/gcd(n+1, 3))^gcd(n+1, 3)` -/
def P7853421985222852216.Spec : Prop :=
  ∀ n, P7853421985222852216.a n = A232965 (n + 1)

theorem P7853421985222852216.correct : P7853421985222852216.Spec := by
  intro n
  simp only [A232965, Nat.add_sub_cancel]

end A232965

/-! ## A232965.P3390849041732823255

`ogf((1+2x-3x^2+4x^3+5x^4+6x^5-7x^6-8x^7)/(1-x-x^2+x^3-x^4-x^5-x^6+x^7+x^8))`
-/

namespace A232965.P3390849041732823255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -3, 4, 5, 6, -7, -8] [1, -1, -1, 1, -1, -1, -1, 1, 1] n

end

end A232965.P3390849041732823255

namespace A232965

/-- `ogf((1+2x-3x^2+4x^3+5x^4+6x^5-7x^6-8x^7)/(1-x-x^2+x^3-x^4-x^5-x^6+x^7+x^8))` -/
def P3390849041732823255.Spec : Prop :=
  ∀ n, P3390849041732823255.a n = A232965 (n + 1)

end A232965

/-! ## A232965.P2069084235875847880

`A000032(A051176(n+1))^A109007(n+1)`
-/

namespace A232965.P2069084235875847880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (A051176 (n + 1)).toNat : ℚ) ^ (A109007 (n + 1) : ℤ)

end

end A232965.P2069084235875847880

namespace A232965

/-- `A000032(A051176(n+1))^A109007(n+1)` -/
def P2069084235875847880.Spec : Prop :=
  ∀ n, P2069084235875847880.a n = (A232965 (n + 1) : ℚ)

end A232965

/-!
# A232966: Numbers k such that k divides 1 + Sum_{j=1..k} prime(j)^14.

The programs for A232966, there is no canonical definition to state claims against.
-/

/-! ## A232966.P14247357239250047216

`A000720(A233043(n+1))`
-/

namespace A232966.P14247357239250047216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A233043 (n + 1)).toNat

end

end A232966.P14247357239250047216

/-! ## A232966.P2286736844053200594

`∑{d}[A233043(n+1), A061395(#)]`
-/

namespace A232966.P2286736844053200594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A232966.P2286736844053200594

/-!
# A232969: The sequence S(n,n) that enumerates a certain class of lattice paths from (0,0) to (n,n).

The programs for A232969, there is no canonical definition to state claims against.
-/

/-! ## A232969.P11513667341236344829

`A232973(∑[n]+n)`
-/

namespace A232969.P11513667341236344829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232973 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A232969.P11513667341236344829

/-! ## A232969.P874210822731883800

`record[A232973(A061579(n))]`
-/

namespace A232969.P874210822731883800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232973 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232969.P874210822731883800

/-! ## A232969.P13016752507764772838

`record[A232973(n)/A127898(n)]`
-/

namespace A232969.P13016752507764772838
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232973 n : ℚ) / (A127898 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232969.P13016752507764772838

/-! ## A232969.P4740956700333153841

`A232973(A000096(n))%A299864(n+2)`
-/

namespace A232969.P4740956700333153841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232973 (A000096 n).toNat) (A299864 (n + 2))

end

end A232969.P4740956700333153841

/-! ## A232969.P13220966967402141856

`record[gcd(A054654(n), A232973(n))]`
-/

namespace A232969.P13220966967402141856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054654 n) (A232973 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232969.P13220966967402141856

/-!
# A232970: Expansion of (1-3*x)/(1-5*x+3*x^2+x^3).

The programs for A232970, the canonical program `A232970.P9293359131666483287` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232970 has offset 0).

The definition of A232970 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x)/(1-5x+3x^2+x^3))` (program `A232970.P9293359131666483287`, by `A232970.P9293359131666483287.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A232970.P9293359131666483287

`ogf((1-3x)/(1-5x+3x^2+x^3))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232970

/-- `ogf((1-3x)/(1-5x+3x^2+x^3))` -/
def P9293359131666483287.Spec : Prop :=
  ∀ n, P9293359131666483287.a n = A232970 n

theorem P9293359131666483287.correct : P9293359131666483287.Spec := by
  intro n
  simp only [A232970]

end A232970

/-! ## A232970.P17258768858211987401

`5*a(n-1)-3*a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A232970.P17258768858211987401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  5 * a (n - 1) - 3 * a (n - 2) - a (n - 3)

end

end A232970.P17258768858211987401

namespace A232970

/-- `5*a(n-1)-3*a(n-2)-a(n-3)` -/
def P17258768858211987401.Spec : Prop :=
  ∀ n, P17258768858211987401.a n = A232970 n

end A232970

/-! ## A232970.P4608166932280841716

`(A000045(3*n+1)+1)/2`
-/

namespace A232970.P4608166932280841716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (3 * n + 1) + 1 : ℚ) / 2

end

end A232970.P4608166932280841716

namespace A232970

/-- `(A000045(3*n+1)+1)/2` -/
def P4608166932280841716.Spec : Prop :=
  ∀ n, P4608166932280841716.a n = (A232970 n : ℚ)

end A232970

/-! ## A232970.P9529971678956111088

`floor(ϕ²*floor(ϕ*a(n-1)))` with `a(0)=1`
-/

namespace A232970.P9529971678956111088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.goldenRatio ^ 2 * (⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋ : ℝ)⌋

end

end A232970.P9529971678956111088

namespace A232970

/-- `floor(ϕ²*floor(ϕ*a(n-1)))` -/
def P9529971678956111088.Spec : Prop :=
  ∀ n, P9529971678956111088.a n = A232970 n

end A232970

/-! ## A232970.P7876176812432373785

`floor(ϕ^3*a(n-1))-1` with `a(0)=1, a(1)=2`
-/

namespace A232970.P7876176812432373785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊Real.goldenRatio ^ 3 * (a (n - 1) : ℝ)⌋ - 1

end

end A232970.P7876176812432373785

namespace A232970

/-- `floor(ϕ^3*a(n-1))-1` -/
def P7876176812432373785.Spec : Prop :=
  ∀ n, P7876176812432373785.a n = A232970 n

end A232970

/-! ## A232970.P7098781096961427220

`round(ϕ^3*a(n-1))-2` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A232970.P7098781096961427220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 3 * (a (n - 1) : ℝ)) - 2

end

end A232970.P7098781096961427220

namespace A232970

/-- `round(ϕ^3*a(n-1))-2` -/
def P7098781096961427220.Spec : Prop :=
  ∀ n, P7098781096961427220.a n = A232970 n

end A232970

/-! ## A232970.P1511018435906333091

`∑[a(n-2)+4*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A232970.P1511018435906333091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + 4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232970.P1511018435906333091

namespace A232970

/-- `∑[a(n-2)+4*a(n-1)]` -/
def P1511018435906333091.Spec : Prop :=
  ∀ n, (P1511018435906333091.a n : ℤ) = A232970 n

end A232970

/-! ## A232970.P18073711730079094501

`∑[a(n-2)+lcm(4, a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A232970.P18073711730079094501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + Nat.lcm 4 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232970.P18073711730079094501

namespace A232970

/-- `∑[a(n-2)+lcm(4, a(n-1))]` -/
def P18073711730079094501.Spec : Prop :=
  ∀ n, (P18073711730079094501.a n : ℤ) = A232970 n

end A232970

/-! ## A232970.P3244893464576289513

`4*a(n-1)+a(n-2)-2` with `a(0)=1, a(1)=2`
-/

namespace A232970.P3244893464576289513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * a (n - 1) + (a (n - 2) - 2)

end

end A232970.P3244893464576289513

namespace A232970

/-- `4*a(n-1)+a(n-2)-2` -/
def P3244893464576289513.Spec : Prop :=
  ∀ n, P3244893464576289513.a n = A232970 n

end A232970

/-! ## A232970.P5169551605432067754

`4*a(n-1)-(2-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A232970.P5169551605432067754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * a (n - 1) - (2 - a (n - 2))

end

end A232970.P5169551605432067754

namespace A232970

/-- `4*a(n-1)-(2-a(n-2))` -/
def P5169551605432067754.Spec : Prop :=
  ∀ n, P5169551605432067754.a n = A232970 n

end A232970

/-! ## A232970.P6645171165122457042

`∑[A015448(n)]`
-/

namespace A232970.P6645171165122457042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015448 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232970.P6645171165122457042

namespace A232970

/-- `∑[A015448(n)]` -/
def P6645171165122457042.Spec : Prop :=
  ∀ n, P6645171165122457042.a n = A232970 n

end A232970

/-! ## A232970.P11191426465848689372

`A049651(n)+1`
-/

namespace A232970.P11191426465848689372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049651 n + 1

end

end A232970.P11191426465848689372

namespace A232970

/-- `A049651(n)+1` -/
def P11191426465848689372.Spec : Prop :=
  ∀ n, P11191426465848689372.a n = A232970 n

end A232970

/-! ## A232970.P15802206547273313827

`A094686(3*n)`
-/

namespace A232970.P15802206547273313827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094686 (3 * n)

end

end A232970.P15802206547273313827

namespace A232970

/-- `A094686(3*n)` -/
def P15802206547273313827.Spec : Prop :=
  ∀ n, P15802206547273313827.a n = A232970 n

end A232970

/-! ## A232970.P7460852748070608161

`A107857(Δ[n²])`
-/

namespace A232970.P7460852748070608161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107857 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A232970.P7460852748070608161

namespace A232970

/-- `A107857(Δ[n²])` -/
def P7460852748070608161.Spec : Prop :=
  ∀ n, P7460852748070608161.a n = A232970 n

end A232970

/-! ## A232970.P12014423712964754983

`∑[A212804(3*n)]`
-/

namespace A232970.P12014423712964754983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232970.P12014423712964754983

namespace A232970

/-- `∑[A212804(3*n)]` -/
def P12014423712964754983.Spec : Prop :=
  ∀ n, P12014423712964754983.a n = A232970 n

end A232970

/-! ## A232970.P15571685853565529658

`A147997(3*n+1)`
-/

namespace A232970.P15571685853565529658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 (3 * n + 1)

end

end A232970.P15571685853565529658

namespace A232970

/-- `A147997(3*n+1)` -/
def P15571685853565529658.Spec : Prop :=
  ∀ n, P15571685853565529658.a n = A232970 n

end A232970

/-! ## A232970.P10728011725384437376

`A173173(3*n+1)`
-/

namespace A232970.P10728011725384437376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 (3 * n + 1)

end

end A232970.P10728011725384437376

namespace A232970

/-- `A173173(3*n+1)` -/
def P10728011725384437376.Spec : Prop :=
  ∀ n, P10728011725384437376.a n = A232970 n

end A232970

/-! ## A232970.P13974697517969120645

`A173433(3*n+1)`
-/

namespace A232970.P13974697517969120645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173433 (3 * n + 1)

end

end A232970.P13974697517969120645

namespace A232970

/-- `A173433(3*n+1)` -/
def P13974697517969120645.Spec : Prop :=
  ∀ n, P13974697517969120645.a n = A232970 n

end A232970

/-! ## A232970.P6828758728278601765

`A100887(3*n)+2`
-/

namespace A232970.P6828758728278601765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100887 (3 * n) + 2

end

end A232970.P6828758728278601765

namespace A232970

/-- `A100887(3*n)+2` -/
def P6828758728278601765.Spec : Prop :=
  ∀ n, P6828758728278601765.a n = A232970 n

end A232970

/-! ## A232970.P15724000513972974605

`A173673(6*n+3)`
-/

namespace A232970.P15724000513972974605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (6 * n + 3)

end

end A232970.P15724000513972974605

namespace A232970

/-- `A173673(6*n+3)` -/
def P15724000513972974605.Spec : Prop :=
  ∀ n, P15724000513972974605.a n = A232970 n

end A232970

/-!
# A232971: G.f.: (1-5*x+3*x^2+x^3)/(1-7*x+10*x^2+x^3-x^4).

The programs for A232971, there is no canonical definition to state claims against.
-/

/-! ## A232971.P8435299787913249912

`A255072(A052987(n)²)`
-/

namespace A232971.P8435299787913249912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A052987 n ^ 2).toNat

end

end A232971.P8435299787913249912

/-! ## A232971.P5521247012269186804

`A255072(A065161(n+1)²)`
-/

namespace A232971.P5521247012269186804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A065161 (n + 1) ^ 2).toNat

end

end A232971.P5521247012269186804

/-!
# A232972: Main diagonal of array P(i,j) mentioned in A064642.

The programs for A232972, there is no canonical definition to state claims against.
-/

/-! ## A232972.P5502963731842061207

`A064642(∑[4*n])`
-/

namespace A232972.P5502963731842061207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064642 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232972.P5502963731842061207

/-! ## A232972.P8910254142740777195

`record[A064642(A226725(n+1))]`
-/

namespace A232972.P8910254142740777195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064642 (A226725 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232972.P8910254142740777195

/-! ## A232972.P18345180723430161068

`A064642(A046092(n))+char[8]`
-/

namespace A232972.P18345180723430161068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064642 (A046092 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A232972.P18345180723430161068

/-! ## A232972.P8624775007433423533

`record[A003982(n)*A064642(n)]`
-/

namespace A232972.P8624775007433423533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A064642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232972.P8624775007433423533

/-!
# A232974: Number of irreducible packed words of length n.

The programs for A232974, there is no canonical definition to state claims against.
-/

/-! ## A232974.P5906412426003277367

`A110657(∑[A205811(n)])`
-/

namespace A232974.P5906412426003277367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A232974.P5906412426003277367

/-! ## A232974.P6817705113552499095

`A332086(xor(5, A113360(∑[n])))`
-/

namespace A232974.P6817705113552499095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (Int.xor 5 (A113360 (∑ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A232974.P6817705113552499095

/-!
# A232976: Numerators of coefficients in expansion of Product_{k>=1} 1/(1-x^k)^(k/2).

The programs for A232976, there is no canonical definition to state claims against.
-/

/-! ## A232976.P8629544575381061445

`A232977(n)/A001316(n)`
-/

namespace A232976.P8629544575381061445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232977 n : ℚ) / (A001316 n : ℚ)

end

end A232976.P8629544575381061445

/-! ## A232976.P12227321177400467173

`A232977(n)/A048896(2*n)`
-/

namespace A232976.P12227321177400467173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232977 n : ℚ) / (A048896 (2 * n) : ℚ)

end

end A232976.P12227321177400467173

/-! ## A232976.P15013916936017050191

`A232977(n)/A060632(2*n)`
-/

namespace A232976.P15013916936017050191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232977 n : ℚ) / (A060632 (2 * n) : ℚ)

end

end A232976.P15013916936017050191

/-! ## A232976.P9315767746660819353

`A232977(n)/A000079(A000120(n))`
-/

namespace A232976.P9315767746660819353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232977 n : ℚ) / (A000079 (A000120 n).toNat : ℚ)

end

end A232976.P9315767746660819353

/-! ## A232976.P15787494318234817846

`A232977(n)/A000005(A019565(n))`
-/

namespace A232976.P15787494318234817846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232977 n : ℚ) / (A000005 (A019565 n).toNat : ℚ)

end

end A232976.P15787494318234817846

/-!
# A232977: G.f.: Product_{k>=1} 1/(1-(4*x)^k)^(k/2).

The programs for A232977, there is no canonical definition to state claims against.
-/

/-! ## A232977.P2541870529413058763

`A001316(n)*A232976(n)`
-/

namespace A232977.P2541870529413058763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A232976 n

end

end A232977.P2541870529413058763

/-! ## A232977.P16947377622712990510

`(A038573(n)+1)*A232976(n)`
-/

namespace A232977.P16947377622712990510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038573 n + 1) * A232976 n

end

end A232977.P16947377622712990510

/-! ## A232977.P2351319007731505059

`A060632(2*n)*A232976(n)`
-/

namespace A232977.P2351319007731505059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (2 * n) * A232976 n

end

end A232977.P2351319007731505059

/-! ## A232977.P8418902324512006672

`lcm(A001316(A005843(n)), A232976(n))`
-/

namespace A232977.P8418902324512006672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 (A005843 n).toNat) (A232976 n)

end

end A232977.P8418902324512006672

/-! ## A232977.P4080399995988392344

`A000005(A019565(n))*A232976(n)`
-/

namespace A232977.P4080399995988392344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A019565 n).toNat * A232976 n

end

end A232977.P4080399995988392344

/-!
# A232980: The Gauss factorial n_3!.

The programs for A232980, there is no canonical definition to state claims against.
-/

/-! ## A232980.P8845877911526591981

`∏[n^(n²%3)]`
-/

namespace A232980.P8845877911526591981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n ^ 2 % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232980.P8845877911526591981

/-! ## A232980.P6288673606114490498

`∏[n^floor(sqrt(n%3))]`
-/

namespace A232980.P6288673606114490498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.sqrt (n % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232980.P6288673606114490498

/-! ## A232980.P8383936068396400680

`∏[gcd(n, Δ[ceil(n/3)])]`
-/

namespace A232980.P8383936068396400680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232980.P8383936068396400680

/-! ## A232980.P6888690511113134694

`∏[C(n, (n+3)²%3)]`
-/

namespace A232980.P6888690511113134694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ((n + 3) ^ 2 % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232980.P6888690511113134694

/-! ## A232980.P18368790145873112051

`n!/(3^floor(n/3)*floor(n/3)!)`
-/

namespace A232980.P18368790145873112051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / ((3 : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ) * (Nat.factorial ⌊(n : ℚ) / 3⌋.toNat : ℚ))

end

end A232980.P18368790145873112051

/-!
# A232981: The Gauss factorial n_5!.

The programs for A232981, the canonical program `A232981.P17788639917072990527` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232981 has offset 0).

The definition of A232981 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232981.P17788639917072990527

`n!/(5^floor(n/5)*floor(n/5)!)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232981

/-- `n!/(5^floor(n/5)*floor(n/5)!)` -/
def P17788639917072990527.Spec : Prop :=
  ∀ n, P17788639917072990527.a n = (A232981 n : ℚ)

end A232981

/-! ## A232981.P5618775001327973891

`∏[n^((n^4)%5)]`
-/

namespace A232981.P5618775001327973891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n ^ 4 % 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232981.P5618775001327973891

namespace A232981

/-- `∏[n^((n^4)%5)]` -/
def P5618775001327973891.Spec : Prop :=
  ∀ n, (P5618775001327973891.a n : ℤ) = A232981 n

end A232981

/-! ## A232981.P13288945095263573000

`∏[gcd(n, Δ[ceil(n/5)])]`
-/

namespace A232981.P13288945095263573000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 5⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232981.P13288945095263573000

namespace A232981

/-- `∏[gcd(n, Δ[ceil(n/5)])]` -/
def P13288945095263573000.Spec : Prop :=
  ∀ n, (P13288945095263573000.a n : ℤ) = A232981 n

end A232981

/-! ## A232981.P6119380873857386261

`n%(lcm(5, n)-1)*a(n-1)` with `a(0)=1`
-/

namespace A232981.P6119380873857386261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (n : ℤ) ((Nat.lcm 5 n : ℤ) - 1) * a (n - 1)

end

end A232981.P6119380873857386261

namespace A232981

/-- `n%(lcm(5, n)-1)*a(n-1)` -/
def P6119380873857386261.Spec : Prop :=
  ∀ n, P6119380873857386261.a n = A232981 n

end A232981

/-! ## A232981.P16676980654839534201

`∏[n^abs(A244895(n))]`
-/

namespace A232981.P16676980654839534201
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (|A244895 n| : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232981.P16676980654839534201

namespace A232981

/-- `∏[n^abs(A244895(n))]` -/
def P16676980654839534201.Spec : Prop :=
  ∀ n, P16676980654839534201.a n = (A232981 n : ℚ)

end A232981

/-! ## A232981.P10626673788451815919

`∏[n^A080891(n²)]`
-/

namespace A232981.P10626673788451815919
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A080891 (n ^ 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232981.P10626673788451815919

namespace A232981

/-- `∏[n^A080891(n²)]` -/
def P10626673788451815919.Spec : Prop :=
  ∀ n, P10626673788451815919.a n = (A232981 n : ℚ)

end A232981

/-! ## A232981.P14643824859093254965

`A356858(n-A002266(n))`
-/

namespace A232981.P14643824859093254965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356858 ((n : ℤ) - A002266 n).toNat

end

end A232981.P14643824859093254965

namespace A232981

/-- `A356858(n-A002266(n))` -/
def P14643824859093254965.Spec : Prop :=
  ∀ n, P14643824859093254965.a n = A232981 n

end A232981

/-! ## A232981.P5529678137488193028

`∏[A007318(A000124(A091703(n)))]`
-/

namespace A232981.P5529678137488193028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 (A091703 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232981.P5529678137488193028

namespace A232981

/-- `∏[A007318(A000124(A091703(n)))]` -/
def P5529678137488193028.Spec : Prop :=
  ∀ n, P5529678137488193028.a n = A232981 n

end A232981

/-! ## A232981.P13385982818215279846

`A216919(A167499(n+3))`
-/

namespace A232981.P13385982818215279846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216919 (A167499 (n + 3)).toNat

end

end A232981.P13385982818215279846

namespace A232981

/-- `A216919(A167499(n+3))` -/
def P13385982818215279846.Spec : Prop :=
  ∀ n, P13385982818215279846.a n = A232981 n

end A232981

/-!
# A232982: The Gauss factorial n_6!.

The programs for A232982, the canonical program `A232982.P8340224624005291114` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232982 has offset 0).

The definition of A232982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232982.P8340224624005291114

`∏[gcd(n, 7%gcd(6, n))]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232982

/-- `∏[gcd(n, 7%gcd(6, n))]` -/
def P8340224624005291114.Spec : Prop :=
  ∀ n, (P8340224624005291114.a n : ℤ) = A232982 n

theorem P8340224624005291114.correct : P8340224624005291114.Spec := by
  intro n
  simp only [A232982]

end A232982

/-! ## A232982.P16320022078479515245

`∏[n^val(n²+5, 6)]`
-/

namespace A232982.P16320022078479515245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.valuation (n ^ 2 + 5) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232982.P16320022078479515245

namespace A232982

/-- `∏[n^val(n²+5, 6)]` -/
def P16320022078479515245.Spec : Prop :=
  ∀ n, (P16320022078479515245.a n : ℤ) = A232982 n

end A232982

/-! ## A232982.P2818156721621433079

`∏[C(n, val(n²+5, 6))]`
-/

namespace A232982.P2818156721621433079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.valuation (n ^ 2 + 5) 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232982.P2818156721621433079

namespace A232982

/-- `∏[C(n, val(n²+5, 6))]` -/
def P2818156721621433079.Spec : Prop :=
  ∀ n, (P2818156721621433079.a n : ℤ) = A232982 n

end A232982

/-! ## A232982.P6465849136541397327

`∏[n^and(n, n²%3)]`
-/

namespace A232982.P6465849136541397327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.land n (n ^ 2 % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232982.P6465849136541397327

namespace A232982

/-- `∏[n^and(n, n²%3)]` -/
def P6465849136541397327.Spec : Prop :=
  ∀ n, (P6465849136541397327.a n : ℤ) = A232982 n

end A232982

/-! ## A232982.P817564340670524835

`∏[or(1, n*val(n²+5, 6))]`
-/

namespace A232982.P817564340670524835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * SequenceMachineLib.valuation (n ^ 2 + 5) 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232982.P817564340670524835

namespace A232982

/-- `∏[or(1, n*val(n²+5, 6))]` -/
def P817564340670524835.Spec : Prop :=
  ∀ n, (P817564340670524835.a n : ℤ) = A232982 n

end A232982

/-!
# A232983: The Gauss factorial n_7!.

The programs for A232983, there is no canonical definition to state claims against.
-/

/-! ## A232983.P12529694273271724845

`∏[n^((n^6)%7)]`
-/

namespace A232983.P12529694273271724845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n ^ 6 % 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232983.P12529694273271724845

/-! ## A232983.P8666683271820958885

`∏[gcd(n, Δ[ceil(n/7)])]`
-/

namespace A232983.P8666683271820958885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 7⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232983.P8666683271820958885

/-! ## A232983.P7831220185123364637

`∏[n^abs(A175629(n))]`
-/

namespace A232983.P7831220185123364637
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (|A175629 n| : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232983.P7831220185123364637

/-! ## A232983.P15915892970607112601

`((n-1)*A109720(n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A232983.P15915892970607112601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((n : ℤ) - 1) * A109720 n + 1) * a (n - 1)

end

end A232983.P15915892970607112601

/-! ## A232983.P12557405766697986767

`gcd(n*a(n-1), A060727(n))` with `a(0)=1`
-/

namespace A232983.P12557405766697986767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (n * a (n - 1) : ℤ) (A060727 n)

end

end A232983.P12557405766697986767

/-!
# A232984: The Gauss factorial n_10!.

The programs for A232984, the canonical program `A232984.P11722518998358208219` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232984 has offset 0).

The definition of A232984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232984.P11722518998358208219

`∏[gcd(n, 11%gcd(10, n))]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232984

/-- `∏[gcd(n, 11%gcd(10, n))]` -/
def P11722518998358208219.Spec : Prop :=
  ∀ n, (P11722518998358208219.a n : ℤ) = A232984 n

theorem P11722518998358208219.correct : P11722518998358208219.Spec := by
  intro n
  simp only [A232984]

end A232984

/-! ## A232984.P16595997098497278003

`∏[(n^(n%2))^((n^4)%5)]`
-/

namespace A232984.P16595997098497278003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ (n % 2)) ^ (n ^ 4 % 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232984.P16595997098497278003

namespace A232984

/-- `∏[(n^(n%2))^((n^4)%5)]` -/
def P16595997098497278003.Spec : Prop :=
  ∀ n, (P16595997098497278003.a n : ℤ) = A232984 n

end A232984

/-! ## A232984.P17480509969598594501

`∏[n^abs(A289741(n))]`
-/

namespace A232984.P17480509969598594501
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (|A289741 n| : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232984.P17480509969598594501

namespace A232984

/-- `∏[n^abs(A289741(n))]` -/
def P17480509969598594501.Spec : Prop :=
  ∀ n, P17480509969598594501.a n = (A232984 n : ℚ)

end A232984

/-! ## A232984.P7651305236209539654

`∏[n^(A040467(n)%2)]`
-/

namespace A232984.P7651305236209539654
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (Int.tmod (A040467 n) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232984.P7651305236209539654

namespace A232984

/-- `∏[n^(A040467(n)%2)]` -/
def P7651305236209539654.Spec : Prop :=
  ∀ n, P7651305236209539654.a n = (A232984 n : ℚ)

end A232984

/-! ## A232984.P17975037216654422349

`∏[gcd(n, A186436(n+1))]`
-/

namespace A232984.P17975037216654422349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A186436 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232984.P17975037216654422349

namespace A232984

/-- `∏[gcd(n, A186436(n+1))]` -/
def P17975037216654422349.Spec : Prop :=
  ∀ n, (P17975037216654422349.a n : ℤ) = A232984 n

end A232984

/-!
# A232985: The Gauss factorial n_11!.

The programs for A232985, there is no canonical definition to state claims against.
-/

/-! ## A232985.P13184789610613836918

`∏[gcd(n, A014856(n))]`
-/

namespace A232985.P13184789610613836918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A014856 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232985.P13184789610613836918

/-! ## A232985.P17119662135225513251

`∏[A028310(A320486(n))]`
-/

namespace A232985.P17119662135225513251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A320486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232985.P17119662135225513251

/-! ## A232985.P674114647465478959

`∏[A028310(A321801(n))]`
-/

namespace A232985.P674114647465478959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A321801 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232985.P674114647465478959

/-! ## A232985.P11941233853720766464

`∏[abs(A320485(A028310(n)))]`
-/

namespace A232985.P11941233853720766464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A320485 (A028310 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232985.P11941233853720766464

/-! ## A232985.P22076393076471366

`∏[gcd(n!, A320485(n))]`
-/

namespace A232985.P22076393076471366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial n : ℤ) (A320485 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232985.P22076393076471366

/-!
# A232989: Denominators associated with A232988.

The programs for A232989, there is no canonical definition to state claims against.
-/

/-! ## A232989.P8382249184835450041

`A034699(A065330(A004277(n)²))`
-/

namespace A232989.P8382249184835450041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A065330 (A004277 n ^ 2).toNat).toNat

end

end A232989.P8382249184835450041

/-! ## A232989.P9526627481925045694

`A319626(A284254(A004277(n)²))`
-/

namespace A232989.P9526627481925045694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A284254 (A004277 n ^ 2).toNat).toNat

end

end A232989.P9526627481925045694

/-! ## A232989.P5423672922706011650

`A343250(A343249(round(acot(n)+n))²)`
-/

namespace A232989.P5423672922706011650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343250 (A343249 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat ^ 2).toNat

end

end A232989.P5423672922706011650

/-! ## A232989.P6505766351688188464

`A343250(A343249(gcd(n, C(2, n))+n)²)`
-/

namespace A232989.P6505766351688188464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343250 (A343249 (Nat.gcd n (Nat.choose 2 n) + n) ^ 2).toNat

end

end A232989.P6505766351688188464

/-! ## A232989.P7671403823231814373

`A065330((A254667(3*n+1)-1)²)`
-/

namespace A232989.P7671403823231814373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 ((A254667 (3 * n + 1) - 1) ^ 2).toNat

end

end A232989.P7671403823231814373

/-!
# A232990: Period 5: repeat [1,0,0,1,0].

The programs for A232990, the canonical program `A232990.P12852465111012832507` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232990 has offset 0).

The definition of A232990 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A232990.anchor (n : ℕ) : A232990 n = (([1, 0, 0, 1, 0].getD (n % 5) 0 : ℕ) : ℤ)` in `Proof.A232.A232990`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A232990.P12852465111012832507

`(((n+1)%5)%3)%2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232990

/-- `(((n+1)%5)%3)%2` -/
def P12852465111012832507.Spec : Prop :=
  ∀ n, (P12852465111012832507.a n : ℤ) = A232990 n

theorem P12852465111012832507.correct : P12852465111012832507.Spec := by
  intro n
  simp only [A232990]

end A232990

/-!
# A232991: Period 6: repeat [1, 0, 0, 0, 1, 0].

The programs for A232991, the canonical program `A232991.P9120970127003175138` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232991 has offset 0).

The definition of A232991 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A232991.anchor (n : ℕ) : A232991 n = (([1, 0, 0, 0, 1, 0].getD (n % 6) 0 : ℕ) : ℤ)` in `Proof.A232.A232991`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A232991.P9120970127003175138

`(((n+3)%6)%5)%2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232991

/-- `(((n+3)%6)%5)%2` -/
def P9120970127003175138.Spec : Prop :=
  ∀ n, (P9120970127003175138.a n : ℤ) = A232991 n

theorem P9120970127003175138.correct : P9120970127003175138.Spec := by
  intro n
  simp only [A232991]

end A232991

/-!
# A232992: Let b(i) = A134204(i) and c(n) = A133242(n); a(n) is the number of primes p <= c(n) such that p is not in {b(0), b(1), ..., b(c(n)-1)}.

The programs for A232992, there is no canonical definition to state claims against.
-/

/-! ## A232992.P9685007360586808552

`A001222(∏{e}[A195547(n+1)+A028364(n), 2^#])`
-/

namespace A232992.P9685007360586808552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195547 (n + 1) + A028364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, 2 ^ Nat.factorization (f1 n).natAbs p)

end

end A232992.P9685007360586808552

/-! ## A232992.P6708386973260704731

`A136436(A221942(n+1)+1)`
-/

namespace A232992.P6708386973260704731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136436 (A221942 (n + 1) + 1).toNat

end

end A232992.P6708386973260704731

/-! ## A232992.P3971366636106759715

`A001222(A195547(n+1)+A028364(n))`
-/

namespace A232992.P3971366636106759715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A195547 (n + 1) + A028364 n).toNat

end

end A232992.P3971366636106759715

/-! ## A232992.P17006903490169131172

`A001222(A320355(n)+A183253(n+1))`
-/

namespace A232992.P17006903490169131172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A320355 n + A183253 (n + 1)).toNat

end

end A232992.P17006903490169131172

/-! ## A232992.P1257770541784192281

`A358525(A029635(3*n+2)+A000009(n))`
-/

namespace A232992.P1257770541784192281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358525 (A029635 (3 * n + 2) + A000009 n).toNat

end

end A232992.P1257770541784192281

/-!
# A232993: Norm of Mersenne prime M_{p,alpha}, where p runs through the rational primes and alpha = 2 + sqrt(2).

The programs for A232993, there is no canonical definition to state claims against.
-/

/-! ## A232993.P15143401151547191660

`p?[A056236(n)-1-2^n]`
-/

namespace A232993.P15143401151547191660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056236 n - 1 - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232993.P15143401151547191660

/-!
# A232994: a(n) = 6*(n - 3)*(n - 4)*2^(n-3)*n^(n-4).

The programs for A232994, the canonical program `A232994.P13105028873786130498` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232994 has offset 3).

The definition of A232994 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A232994.anchor (n : ℕ) : (A232994 (n + 3) : ℚ) = ((6 * n : ℤ) * ((n : ℤ) - 1) * (2 ^ n : ℤ) : ℚ) * (n + 3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)` in `Proof.A232.A232994`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A232994.P13105028873786130498

`6*n*(n-1)*2^n*(n+3)^(n-1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232994

/-- `6*n*(n-1)*2^n*(n+3)^(n-1)` -/
def P13105028873786130498.Spec : Prop :=
  ∀ n, P13105028873786130498.a n = (A232994 (n + 3) : ℚ)

end A232994

/-!
# A232995: a(n) = (n - 3)^2*(n - 4)*2^n*n^(n-5).

The programs for A232995, the canonical program `A232995.P3000754636628793413` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232995 has offset 3).

The definition of A232995 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A232995.anchor (n : ℕ) : (A232995 (n + 3) : ℚ) = ((n ^ 2 : ℤ) * ((n : ℤ) - 1) * (2 ^ (n + 3) : ℤ) : ℚ) * (n + 3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)` in `Proof.A232.A232995`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A232995.P3000754636628793413

`n²*(n-1)*2^(n+3)*(n+3)^(n-2)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232995

/-- `n²*(n-1)*2^(n+3)*(n+3)^(n-2)` -/
def P3000754636628793413.Spec : Prop :=
  ∀ n, P3000754636628793413.a n = (A232995 (n + 3) : ℚ)

end A232995

/-!
# A232997: Number of tilings of a fortress (or Penta-Aztec-Diamond) of order n.

The programs for A232997, the canonical program `A232997.P16565466702643851631` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232997 has offset 0).

The definition of A232997 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232997.P16565466702643851631

`5^floor(n²/4)*(floor((n+1)/4)-floor(n/4)+1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232997

/-- `5^floor(n²/4)*(floor((n+1)/4)-floor(n/4)+1)` -/
def P16565466702643851631.Spec : Prop :=
  ∀ n, P16565466702643851631.a n = (A232997 n : ℚ)

end A232997

/-! ## A232997.P6904360774878642097

`lcm(and(2, n^3)!, ∏[5^floor(n/2)])`
-/

namespace A232997.P6904360774878642097
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (Nat.land 2 (n ^ 3)) : ℤ) (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A232997.P6904360774878642097

namespace A232997

/-- `lcm(and(2, n^3)!, ∏[5^floor(n/2)])` -/
def P6904360774878642097.Spec : Prop :=
  ∀ n, (P6904360774878642097.a n : ℤ) = A232997 n

end A232997

/-! ## A232997.P9072540850783573013

`A026383(∑[∑[gcd(4, n)%4]]-n)`
-/

namespace A232997.P9072540850783573013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 n % 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026383 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A232997.P9072540850783573013

namespace A232997

/-- `A026383(∑[∑[gcd(4, n)%4]]-n)` -/
def P9072540850783573013.Spec : Prop :=
  ∀ n, P9072540850783573013.a n = A232997 n

end A232997

/-! ## A232997.P18243368800148719595

`A026383(A194274(n)-n)`
-/

namespace A232997.P18243368800148719595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026383 (A194274 n - (n : ℤ)).toNat

end

end A232997.P18243368800148719595

namespace A232997

/-- `A026383(A194274(n)-n)` -/
def P18243368800148719595.Spec : Prop :=
  ∀ n, P18243368800148719595.a n = A232997 n

end A232997

/-! ## A232997.P11180226263687998020

`A026383(A000217(n)-A004525(n))`
-/

namespace A232997.P11180226263687998020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026383 (A000217 n - A004525 n).toNat

end

end A232997.P11180226263687998020

namespace A232997

/-- `A026383(A000217(n)-A004525(n))` -/
def P11180226263687998020.Spec : Prop :=
  ∀ n, P11180226263687998020.a n = A232997 n

end A232997

/-!
# A232998: 

The programs for A232998, there is no canonical definition to state claims against.
-/

/-! ## A232998.P8125713764331434450

`∏[2*36^n]`
-/

namespace A232998.P8125713764331434450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 36 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232998.P8125713764331434450

/-! ## A232998.P13073553909989456686

`floor(∏[36*a(n-1)])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A232998.P13073553909989456686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  36 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232998.P13073553909989456686

/-! ## A232998.P350775943966325479

`ceil(∏[36*a(n-1)])` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A232998.P350775943966325479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  36 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232998.P350775943966325479

/-! ## A232998.P17420446697799477585

`2*a(n-1)*(6^n)²` with `a(0)=2`
-/

namespace A232998.P17420446697799477585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) * (6 ^ n) ^ 2

end

end A232998.P17420446697799477585

/-! ## A232998.P4476817347700226723

`∑[6*a(n-1)]^(n+1)` with `a(0)=2, a(1)=10`
-/

namespace A232998.P4476817347700226723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 10] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A232998.P4476817347700226723

/-!
# A232999: a(n) = 6 + 4*(-1)^n + (2+sqrt(3))^n + (2-sqrt(3))^n + 2*(1+sqrt(2))^n + 2*(1-sqrt(2))^n.

The programs for A232999, the canonical program `A232999.P4717226599771691550` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232999 has offset 0).

The definition of A232999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232999.P4717226599771691550

`ogf((16-86x+88x^2+64x^3-32x^4-2x^5)/(1-6x+7x^2+8x^3-9x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232999

/-- `ogf((16-86x+88x^2+64x^3-32x^4-2x^5)/(1-6x+7x^2+8x^3-9x^4-2x^5+x^6))` -/
def P4717226599771691550.Spec : Prop :=
  ∀ n, P4717226599771691550.a n = A232999 n

theorem P4717226599771691550.correct : P4717226599771691550.Spec := by
  intro n
  simp only [A232999]

end A232999

