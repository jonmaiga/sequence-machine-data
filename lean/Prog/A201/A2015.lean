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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B008.C000
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

/-!
# A201500: Number of n X 3 0..1 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201500, the canonical program `A201500.P5532321174723072215` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201500 has offset 1).

The definition of A201500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201500.P5532321174723072215

`round(lcm(2, (n+3)²)/8)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A201500

/-- `round(lcm(2, (n+3)²)/8)` -/
def P5532321174723072215.Spec : Prop :=
  ∀ n, P5532321174723072215.a n = A201500 (n + 1)

theorem P5532321174723072215.correct : P5532321174723072215.Spec := by
  intro n
  simp only [A201500, Nat.add_sub_cancel]

end A201500

/-! ## A201500.P3179398168076294852

`gcd(2, n)*round((n+3)²/8)`
-/

namespace A201500.P3179398168076294852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 8)

end

end A201500.P3179398168076294852

namespace A201500

/-- `gcd(2, n)*round((n+3)²/8)` -/
def P3179398168076294852.Spec : Prop :=
  ∀ n, P3179398168076294852.a n = A201500 (n + 1)

end A201500

/-! ## A201500.P11553484304314778313

`Δ[Δ[floor((floor(((n+2)/2)²)/2)²)]]`
-/

namespace A201500.P11553484304314778313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((⌊((n + 2 : ℚ) / 2) ^ 2⌋ : ℚ) / 2) ^ 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A201500.P11553484304314778313

namespace A201500

/-- `Δ[Δ[floor((floor(((n+2)/2)²)/2)²)]]` -/
def P11553484304314778313.Spec : Prop :=
  ∀ n, P11553484304314778313.a n = A201500 (n + 1)

end A201500

/-! ## A201500.P9655421499644520183

`or(1, a(n-2))+gcd(n+1, ∑[n])` with `a(0)=2, a(1)=2`
-/

namespace A201500.P9655421499644520183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n a =>
  Nat.lor 1 (a (n - 2)) + Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201500.P9655421499644520183

namespace A201500

/-- `or(1, a(n-2))+gcd(n+1, ∑[n])` -/
def P9655421499644520183.Spec : Prop :=
  ∀ n, (P9655421499644520183.a n : ℤ) = A201500 (n + 1)

end A201500

/-! ## A201500.P1544369247211790926

`4*round((n+3)²/8)/Δ[or(1, 3*n+2)]`
-/

namespace A201500.P1544369247211790926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 8) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A201500.P1544369247211790926

namespace A201500

/-- `4*round((n+3)²/8)/Δ[or(1, 3*n+2)]` -/
def P1544369247211790926.Spec : Prop :=
  ∀ n, P1544369247211790926.a n = (A201500 (n + 1) : ℚ)

end A201500

/-! ## A201500.P6660456836287754890

`ogf((2+2x+2x^2+x^3-2x^5+x^7)/(1-2x^2+2x^6-x^8))`
-/

namespace A201500.P6660456836287754890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, 2, 1, 0, -2, 0, 1] [1, 0, -2, 0, 0, 0, 2, 0, -1] n

end

end A201500.P6660456836287754890

namespace A201500

/-- `ogf((2+2x+2x^2+x^3-2x^5+x^7)/(1-2x^2+2x^6-x^8))` -/
def P6660456836287754890.Spec : Prop :=
  ∀ n, P6660456836287754890.a n = A201500 (n + 1)

end A201500

/-! ## A201500.P7801042282859926779

`2*a(n-2)-2*a(n-6)+a(n-8)` with `a(0)=2, a(1)=2, a(2)=6, a(3)=5, a(4)=12, a(5)=8, a(6)=20, a(7)=13`
-/

namespace A201500.P7801042282859926779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 6, 5, 12, 8, 20, 13] fun n a =>
  2 * a (n - 2) - 2 * a (n - 6) + a (n - 8)

end

end A201500.P7801042282859926779

namespace A201500

/-- `2*a(n-2)-2*a(n-6)+a(n-8)` -/
def P7801042282859926779.Spec : Prop :=
  ∀ n, P7801042282859926779.a n = A201500 (n + 1)

end A201500

/-! ## A201500.P9501181746398929034

`floor(A055524(n+3)/2)`
-/

namespace A201500.P9501181746398929034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055524 (n + 3) : ℚ) / 2⌋

end

end A201500.P9501181746398929034

namespace A201500

/-- `floor(A055524(n+3)/2)` -/
def P9501181746398929034.Spec : Prop :=
  ∀ n, P9501181746398929034.a n = A201500 (n + 1)

end A201500

/-! ## A201500.P15787413311443888518

`round((n+3)²/A010713(n))`
-/

namespace A201500.P15787413311443888518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / (A010713 n : ℚ))

end

end A201500.P15787413311443888518

namespace A201500

/-- `round((n+3)²/A010713(n))` -/
def P15787413311443888518.Spec : Prop :=
  ∀ n, P15787413311443888518.a n = A201500 (n + 1)

end A201500

/-! ## A201500.P897318134636787358

`A026741(n+1)+or(1, a(n-2))` with `a(0)=2, a(1)=2`
-/

namespace A201500.P897318134636787358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A026741 (n + 1) + Int.lor 1 (a (n - 2))

end

end A201500.P897318134636787358

namespace A201500

/-- `A026741(n+1)+or(1, a(n-2))` -/
def P897318134636787358.Spec : Prop :=
  ∀ n, P897318134636787358.a n = A201500 (n + 1)

end A201500

/-! ## A201500.P6501893951713762131

`A033691(n+2)/A010694(n)`
-/

namespace A201500.P6501893951713762131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033691 (n + 2) : ℚ) / (A010694 n : ℚ)

end

end A201500.P6501893951713762131

namespace A201500

/-- `A033691(n+2)/A010694(n)` -/
def P6501893951713762131.Spec : Prop :=
  ∀ n, P6501893951713762131.a n = (A201500 (n + 1) : ℚ)

end A201500

/-! ## A201500.P17314118786972872495

`ceil(A241496(n+1)/2)`
-/

namespace A201500.P17314118786972872495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A241496 (n + 1) : ℚ) / 2⌉

end

end A201500.P17314118786972872495

namespace A201500

/-- `ceil(A241496(n+1)/2)` -/
def P17314118786972872495.Spec : Prop :=
  ∀ n, P17314118786972872495.a n = A201500 (n + 1)

end A201500

/-! ## A201500.P17175858377891269636

`ceil(Δ[A002623(n)]/A000034(n))`
-/

namespace A201500.P17175858377891269636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / (A000034 n : ℚ)⌉

end

end A201500.P17175858377891269636

namespace A201500

/-- `ceil(Δ[A002623(n)]/A000034(n))` -/
def P17175858377891269636.Spec : Prop :=
  ∀ n, P17175858377891269636.a n = A201500 (n + 1)

end A201500

/-! ## A201500.P6462301496673169337

`A033691(n+2)/Δ[A047235(n+1)]`
-/

namespace A201500.P6462301496673169337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047235 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033691 (n + 2) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A201500.P6462301496673169337

namespace A201500

/-- `A033691(n+2)/Δ[A047235(n+1)]` -/
def P6462301496673169337.Spec : Prop :=
  ∀ n, P6462301496673169337.a n = (A201500 (n + 1) : ℚ)

end A201500

/-! ## A201500.P14218951556802650182

`(∑[A008624(n+1)]+1)*A000034(n+1)`
-/

namespace A201500.P14218951556802650182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A000034 (n + 1)

end

end A201500.P14218951556802650182

namespace A201500

/-- `(∑[A008624(n+1)]+1)*A000034(n+1)` -/
def P14218951556802650182.Spec : Prop :=
  ∀ n, P14218951556802650182.a n = A201500 (n + 1)

end A201500

/-! ## A201500.P6940706417237538092

`A186423(n+2)-a(n-1)` with `a(0)=2`
-/

namespace A201500.P6940706417237538092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A186423 (n + 2) - a (n - 1)

end

end A201500.P6940706417237538092

namespace A201500

/-- `A186423(n+2)-a(n-1)` -/
def P6940706417237538092.Spec : Prop :=
  ∀ n, P6940706417237538092.a n = A201500 (n + 1)

end A201500

/-! ## A201500.P4246592565902309552

`round(A129194(n+3)/4)`
-/

namespace A201500.P4246592565902309552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A129194 (n + 3) : ℚ) / 4)

end

end A201500.P4246592565902309552

namespace A201500

/-- `round(A129194(n+3)/4)` -/
def P4246592565902309552.Spec : Prop :=
  ∀ n, P4246592565902309552.a n = A201500 (n + 1)

end A201500

/-! ## A201500.P9100802707698132425

`A001971(n+3)*A143025(2*(n+1))`
-/

namespace A201500.P9100802707698132425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (n + 3) * A143025 (2 * (n + 1))

end

end A201500.P9100802707698132425

namespace A201500

/-- `A001971(n+3)*A143025(2*(n+1))` -/
def P9100802707698132425.Spec : Prop :=
  ∀ n, P9100802707698132425.a n = A201500 (n + 1)

end A201500

/-! ## A201500.P259041361297816959

`A000034(n+1)*A008619(∑[A008619(n+1)])`
-/

namespace A201500.P259041361297816959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A201500.P259041361297816959

namespace A201500

/-- `A000034(n+1)*A008619(∑[A008619(n+1)])` -/
def P259041361297816959.Spec : Prop :=
  ∀ n, P259041361297816959.a n = A201500 (n + 1)

end A201500

/-! ## A201500.P16706493279640692467

`A004525(A241496(n+1))`
-/

namespace A201500.P16706493279640692467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A241496 (n + 1)).toNat

end

end A201500.P16706493279640692467

namespace A201500

/-- `A004525(A241496(n+1))` -/
def P16706493279640692467.Spec : Prop :=
  ∀ n, P16706493279640692467.a n = A201500 (n + 1)

end A201500

/-!
# A201501: Number of n X 5 0..1 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201501, there is no canonical definition to state claims against.
-/

/-! ## A201501.P3386713183288090041

`gcd(2, n)*A001975(n+1)`
-/

namespace A201501.P3386713183288090041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A001975 (n + 1)

end

end A201501.P3386713183288090041

/-! ## A201501.P13325158535180908457

`Δ[A007494(n)]*A001975(n+1)`
-/

namespace A201501.P13325158535180908457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001975 (n + 1)

end

end A201501.P13325158535180908457

/-! ## A201501.P10926331415882248106

`A000034(n+1)*A001975(n+1)`
-/

namespace A201501.P10926331415882248106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A001975 (n + 1)

end

end A201501.P10926331415882248106

/-! ## A201501.P16818112437145488527

`A001975(n+1)*A040001(n+2)`
-/

namespace A201501.P16818112437145488527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001975 (n + 1) * A040001 (n + 2)

end

end A201501.P16818112437145488527

/-! ## A201501.P11396774018894451000

`(Δ[A110654(n)]+1)*A001975(n+1)`
-/

namespace A201501.P11396774018894451000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A001975 (n + 1)

end

end A201501.P11396774018894451000

/-! ## A201501.P41281449102082912

`A000032(Δ[floor(n/2)])*A001975(n+1)`
-/

namespace A201501.P41281449102082912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n).toNat * A001975 (n + 1)

end

end A201501.P41281449102082912

/-! ## A201501.P16167831853515431044

`Δ[A265888(2*n+1)]*A001975(n+1)`
-/

namespace A201501.P16167831853515431044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265888 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001975 (n + 1)

end

end A201501.P16167831853515431044

/-! ## A201501.P14055452135051974437

`A001975(n+1)*A328580(A328580(n))`
-/

namespace A201501.P14055452135051974437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001975 (n + 1) * A328580 (A328580 n).toNat

end

end A201501.P14055452135051974437

/-! ## A201501.P4210201301230373605

`(A058026(A058026(n+2)+1)+1)*A001975(n+1)`
-/

namespace A201501.P4210201301230373605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A058026 (A058026 (n + 2) + 1).toNat + 1) * A001975 (n + 1)

end

end A201501.P4210201301230373605

/-! ## A201501.P16086183460471183330

`A000010(A266258(A266258(n+1)))*A001975(n+1)`
-/

namespace A201501.P16086183460471183330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A266258 (A266258 (n + 1)).toNat).toNat * A001975 (n + 1)

end

end A201501.P16086183460471183330

/-! ## A201501.P15091878261338861351

`A001975(n+1)*(A007814(n²+2)+1)`
-/

namespace A201501.P15091878261338861351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001975 (n + 1) * (A007814 (n ^ 2 + 2) + 1)

end

end A201501.P15091878261338861351

/-!
# A201502: Number of nX7 0..1 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201502, there is no canonical definition to state claims against.
-/

/-! ## A201502.P9137557489943049004

`gcd(2, n)*A001979(n+1)`
-/

namespace A201502.P9137557489943049004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A001979 (n + 1)

end

end A201502.P9137557489943049004

/-! ## A201502.P6452651379978268039

`Δ[A007494(n)]*A001979(n+1)`
-/

namespace A201502.P6452651379978268039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001979 (n + 1)

end

end A201502.P6452651379978268039

/-! ## A201502.P7213794616744987263

`A000034(n+1)*A001979(n+1)`
-/

namespace A201502.P7213794616744987263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A001979 (n + 1)

end

end A201502.P7213794616744987263

/-! ## A201502.P8942208613674675038

`A001979(n+1)*A134451(n+2)`
-/

namespace A201502.P8942208613674675038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001979 (n + 1) * A134451 (n + 2)

end

end A201502.P8942208613674675038

/-! ## A201502.P1574341245526502808

`(2-A000035(n))*A001979(n+1)`
-/

namespace A201502.P1574341245526502808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000035 n) * A001979 (n + 1)

end

end A201502.P1574341245526502808

/-! ## A201502.P17361070253332915457

`Δ[A001651(n+2)]*A001979(n+1)`
-/

namespace A201502.P17361070253332915457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001979 (n + 1)

end

end A201502.P17361070253332915457

/-! ## A201502.P4422544119142344601

`(2-char[A109613(n)])*A001979(n+1)`
-/

namespace A201502.P4422544119142344601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) * A001979 (n + 1)

end

end A201502.P4422544119142344601

/-! ## A201502.P7612779478217364676

`(A000035(n+1)+1)*A001979(n+1)`
-/

namespace A201502.P7612779478217364676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 (n + 1) + 1) * A001979 (n + 1)

end

end A201502.P7612779478217364676

/-! ## A201502.P503029218846279439

`A001979(n+1)*A014695(2*(n+1))`
-/

namespace A201502.P503029218846279439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001979 (n + 1) * A014695 (2 * (n + 1))

end

end A201502.P503029218846279439

/-! ## A201502.P3654244823371495060

`A000032(Δ[floor(n/2)])*A001979(n+1)`
-/

namespace A201502.P3654244823371495060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n).toNat * A001979 (n + 1)

end

end A201502.P3654244823371495060

/-! ## A201502.P1943021115143114498

`A000108(Δ[A109613(n+1)])*A001979(n+1)`
-/

namespace A201502.P1943021115143114498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (f1 (n + 1) - f1 n).toNat * A001979 (n + 1)

end

end A201502.P1943021115143114498

/-! ## A201502.P17879985432401127622

`A001979(n+1)*A094925(A020639(3*(n+1)))`
-/

namespace A201502.P17879985432401127622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001979 (n + 1) * A094925 (A020639 (3 * (n + 1))).toNat

end

end A201502.P17879985432401127622

/-!
# A201503: T(n,k)=Number of nXk 0..1 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201503, there is no canonical definition to state claims against.
-/

/-! ## A201503.P12918018858724179652

`A000034(A003990(n+1))*A067059(eq[0, A103451(n)])`
-/

namespace A201503.P12918018858724179652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A003990 (n + 1)).toNat * A067059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201503.P12918018858724179652

/-! ## A201503.P10792066001442972943

`A000034(A003990(n+1))*A067059(eq[0, A103452(n)])`
-/

namespace A201503.P10792066001442972943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A003990 (n + 1)).toNat * A067059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201503.P10792066001442972943

/-! ## A201503.P7119699393675725267

`A000034(A199408(n+1))*A067059(eq[0, A103451(n)])`
-/

namespace A201503.P7119699393675725267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A199408 (n + 1)).toNat * A067059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201503.P7119699393675725267

/-! ## A201503.P18065952775383764347

`A000034(A199408(n+1))*A067059(eq[0, A103452(n)])`
-/

namespace A201503.P18065952775383764347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A199408 (n + 1)).toNat * A067059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201503.P18065952775383764347

/-! ## A201503.P7440309170235549425

`A000034(A342905(n+1))*A067059(eq[0, A103451(n)])`
-/

namespace A201503.P7440309170235549425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A342905 (n + 1)).toNat * A067059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201503.P7440309170235549425

/-! ## A201503.P12564501164776038440

`A000034(A342905(n+1))*A067059(eq[0, A103452(n)])`
-/

namespace A201503.P12564501164776038440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A342905 (n + 1)).toNat * A067059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201503.P12564501164776038440

/-! ## A201503.P15270774886974489230

`A000034(A003990(n+1))*A067059(record[n%A007318(n)²])`
-/

namespace A201503.P15270774886974489230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A007318 n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A003990 (n + 1)).toNat * A067059 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A201503.P15270774886974489230

/-! ## A201503.P1795683750947136139

`A000034(A003990(n+1))*A180980(n+1)`
-/

namespace A201503.P1795683750947136139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A003990 (n + 1)).toNat * A180980 (n + 1)

end

end A201503.P1795683750947136139

/-! ## A201503.P10650752451702915670

`A000034(A003991(n+1))*A180980(n+1)`
-/

namespace A201503.P10650752451702915670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A003991 (n + 1)).toNat * A180980 (n + 1)

end

end A201503.P10650752451702915670

/-! ## A201503.P2661797854601699319

`A000034(A199408(n+1))*A180980(n+1)`
-/

namespace A201503.P2661797854601699319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A199408 (n + 1)).toNat * A180980 (n + 1)

end

end A201503.P2661797854601699319

/-! ## A201503.P10074050498705857291

`A000034(A342905(n+1))*A180980(n+1)`
-/

namespace A201503.P10074050498705857291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A342905 (n + 1)).toNat * A180980 (n + 1)

end

end A201503.P10074050498705857291

/-! ## A201503.P9878554994305147683

`A000034(A199408(n+1))*A067059(eq[0, floor(1/A304942(n))])`
-/

namespace A201503.P9878554994305147683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A304942 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A199408 (n + 1)).toNat * A067059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201503.P9878554994305147683

/-! ## A201503.P9567182157308250494

`A000034(A342905(n+1))*A067059(eq[0, floor(1/A304942(n))])`
-/

namespace A201503.P9567182157308250494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A304942 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A342905 (n + 1)).toNat * A067059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201503.P9567182157308250494

/-!
# A201507: Number of ways to place 7 nonattacking wazirs on an n X n board.

The programs for A201507, there is no canonical definition to state claims against.
-/

/-! ## A201507.P4377705528648905432

`floor(∑{d}[abs(A292935(n)^n), #-1]/(9-ϕ))`
-/

namespace A201507.P4377705528648905432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n ^ n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - 1) : ℤ) : ℝ) / (9 - Real.goldenRatio)⌋

end

end A201507.P4377705528648905432

/-!
# A201508: Number of ways to place 8 nonattacking wazirs on an n X n board.

The programs for A201508, there is no canonical definition to state claims against.
-/

/-! ## A201508.P4815631113113142831

`A008681(A064653(n!))`
-/

namespace A201508.P4815631113113142831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008681 (A064653 (Nat.factorial n)).toNat

end

end A201508.P4815631113113142831

/-!
# A201509: Irregular triangle read by rows: T(n,k) = 2*T(n-1,k) + T(n-2,k-1) with T(0,0) = 0, T(n,0) = T(1,1) = 1 and T(n,k) = 0 if k < 0 or if n < k.

The programs for A201509, there is no canonical definition to state claims against.
-/

/-! ## A201509.P7791318737109350540

`A201780(A091018(n+2))`
-/

namespace A201509.P7791318737109350540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201780 (A091018 (n + 2)).toNat

end

end A201509.P7791318737109350540

/-!
# A201511: Number of ways to place n nonattacking wazirs on an n X n board.

The programs for A201511, there is no canonical definition to state claims against.
-/

/-! ## A201511.P7341528097063250710

`A050977(∑{d}[∏{p}[n+1, #], (n+1)/#]^floor((n/2)²))`
-/

namespace A201511.P7341528097063250710
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050977 (SequenceMachineLib.roundAway ((∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ)) ^ (⌊((n : ℚ) / 2) ^ 2⌋ : ℤ))).toNat

end

end A201511.P7341528097063250710

/-!
# A201512: Smallest length of a linear code over GF(4) of dimension 5 and minimal distance n.

The programs for A201512, there is no canonical definition to state claims against.
-/

/-! ## A201512.P27814080326584396

`lt[2, A284273(A357581(n+4))]`
-/

namespace A201512.P27814080326584396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284273 (A357581 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A201512.P27814080326584396

/-! ## A201512.P18143961200281482397

`lt[A033715(A204658(n+1)), 1]`
-/

namespace A201512.P18143961200281482397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 (A204658 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A201512.P18143961200281482397

/-! ## A201512.P7146944889605463315

`lt[A284608(n+1), A051775(A284616(n+1))]`
-/

namespace A201512.P7146944889605463315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284608 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051775 (A284616 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A201512.P7146944889605463315

/-! ## A201512.P14060520351940483755

`lt[A019323(A116608(n+1)), A303588(n+2)]`
-/

namespace A201512.P14060520351940483755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019323 (A116608 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303588 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A201512.P14060520351940483755

/-! ## A201512.P4072265752995351770

`lt[2, A083417(A137320(n+3))]`
-/

namespace A201512.P4072265752995351770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083417 (A137320 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A201512.P4072265752995351770

/-!
# A201513: Number of ways to place n nonattacking kings on an n X n board.

The programs for A201513, there is no canonical definition to state claims against.
-/

/-! ## A201513.P7797340859254058050

`A098487(∑[n]+floor(acot(n)))`
-/

namespace A201513.P7797340859254058050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098487 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A201513.P7797340859254058050

/-! ## A201513.P11942668482905957145

`A098487(A179865(n+1))`
-/

namespace A201513.P11942668482905957145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098487 (A179865 (n + 1)).toNat

end

end A201513.P11942668482905957145

/-! ## A201513.P5612558862225391859

`A098487(A000007(n)+∑[n])`
-/

namespace A201513.P5612558862225391859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098487 (A000007 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A201513.P5612558862225391859

/-! ## A201513.P9304204259556536878

`A098487(gcd(∑[n], A014062(n)))`
-/

namespace A201513.P9304204259556536878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098487 (Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A014062 n))

end

end A201513.P9304204259556536878

/-! ## A201513.P7812665115394490484

`A098487(or(∑[n], A000007(n)))`
-/

namespace A201513.P7812665115394490484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098487 (Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000007 n)).toNat

end

end A201513.P7812665115394490484

/-!
# A201514: A list of 52 distinct numbers such that the sum of their reciprocals is 1 and each number is of the form p*q where p and q are distinct primes.

The programs for A201514, there is no canonical definition to state claims against.
-/

/-! ## A201514.P5951485833155633493

`A006881(lt[A096376(n), A063526(2*n)])`
-/

namespace A201514.P5951485833155633493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063526 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A201514.P5951485833155633493

/-! ## A201514.P4665837004101309087

`or(A063725(A058343(n+1)), A201650(n+1))`
-/

namespace A201514.P4665837004101309087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063725 (A058343 (n + 1)).toNat) (A201650 (n + 1))

end

end A201514.P4665837004101309087

/-! ## A201514.P9742269403963144617

`or(A063725(A184945(n+1)), A201650(n+1))`
-/

namespace A201514.P9742269403963144617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063725 (A184945 (n + 1)).toNat) (A201650 (n + 1))

end

end A201514.P9742269403963144617

/-! ## A201514.P14629810634646883648

`A201650(n+1)+A063725(A002260(A009963(n)))`
-/

namespace A201514.P14629810634646883648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201650 (n + 1) + A063725 (A002260 (A009963 n).toNat).toNat

end

end A201514.P14629810634646883648

/-!
# A201532: Number of n X n 0..2 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201532, there is no canonical definition to state claims against.
-/

/-! ## A201532.P6212272166156158463

`A201539(∑[4*n]+1)`
-/

namespace A201532.P6212272166156158463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201539 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201532.P6212272166156158463

/-! ## A201532.P462522056393187872

`record[A201539(Δ[A235355(n)])]`
-/

namespace A201532.P462522056393187872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201539 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201532.P462522056393187872

/-! ## A201532.P10286804435590402140

`record[A003982(n)*A201539(n+1)]`
-/

namespace A201532.P10286804435590402140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A201539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201532.P10286804435590402140

/-!
# A201533: Number of n X 2 0..2 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201533, there is no canonical definition to state claims against.
-/

/-! ## A201533.P12416225594115790319

`A201539(∑[n+1]+2)`
-/

namespace A201533.P12416225594115790319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201539 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201533.P12416225594115790319

/-! ## A201533.P15922955210022961177

`record[A010054(n)*A201539(n+2)]`
-/

namespace A201533.P15922955210022961177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A201539 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201533.P15922955210022961177

/-! ## A201533.P15277338951024847545

`record[gcd(A079904(n), A201539(n+2))]`
-/

namespace A201533.P15277338951024847545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079904 n) (A201539 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201533.P15277338951024847545

/-! ## A201533.P10152966917632983148

`record[A201539(n+3)/A075501(n+1)]`
-/

namespace A201533.P10152966917632983148
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201539 (n + 3) : ℚ) / (A075501 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201533.P10152966917632983148

/-! ## A201533.P11360791936677638944

`record[root(A201539(n+2), A201811(n+1))]`
-/

namespace A201533.P11360791936677638944
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A201539 (n + 2) : ℝ) ^ (1 / (A201811 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201533.P11360791936677638944

/-!
# A201534: Number of nX3 0..2 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201534, there is no canonical definition to state claims against.
-/

/-! ## A201534.P11436959471240327228

`A201539(∑[n+2]+4)`
-/

namespace A201534.P11436959471240327228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201539 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201534.P11436959471240327228

/-! ## A201534.P12924572331715467578

`and(-1, A201539(A167614(n+1)))`
-/

namespace A201534.P12924572331715467578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A201539 (A167614 (n + 1)).toNat)

end

end A201534.P12924572331715467578

/-! ## A201534.P2936133335311482256

`A201539(A152950(n+3))+char[13]`
-/

namespace A201534.P2936133335311482256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201539 (A152950 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A201534.P2936133335311482256

/-! ## A201534.P14586162825987797353

`A201539(A152949(n+4))+char[13]`
-/

namespace A201534.P14586162825987797353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201539 (A152949 (n + 4)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A201534.P14586162825987797353

/-! ## A201534.P13213508698977762605

`A201539(A016028(n+5))+char[13]`
-/

namespace A201534.P13213508698977762605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201539 (A016028 (n + 5)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A201534.P13213508698977762605

/-!
# A201535: Number of nX4 0..2 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201535, there is no canonical definition to state claims against.
-/

/-! ## A201535.P10442866624639626738

`A201539(∑[a(n-1)+1])` with `a(0)=10, a(1)=4`
-/

namespace A201535.P10442866624639626738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201539 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201535.P10442866624639626738

/-! ## A201535.P18426119035187178625

`A201539(A374004(n+1))`
-/

namespace A201535.P18426119035187178625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201539 (A374004 (n + 1)).toNat

end

end A201535.P18426119035187178625

/-! ## A201535.P10028655981533806241

`A201539(A141214(n)+7)`
-/

namespace A201535.P10028655981533806241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201539 (A141214 n + 7).toNat

end

end A201535.P10028655981533806241

/-! ## A201535.P6011001889478046587

`A201539(A052905(n)+9)`
-/

namespace A201535.P6011001889478046587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201539 (A052905 n + 9).toNat

end

end A201535.P6011001889478046587

/-! ## A201535.P7476186168704633034

`A201539(A055999(n)+10)`
-/

namespace A201535.P7476186168704633034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201539 (A055999 n + 10).toNat

end

end A201535.P7476186168704633034

/-!
# A201536: Number of nX5 0..2 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201536, there is no canonical definition to state claims against.
-/

/-! ## A201536.P13133166221672392036

`A201539(∑[a(n-1)+1])` with `a(0)=15, a(1)=5`
-/

namespace A201536.P13133166221672392036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15, 5] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201539 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201536.P13133166221672392036

/-! ## A201536.P15795983241588416515

`A201539(A374005(n+1))`
-/

namespace A201536.P15795983241588416515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201539 (A374005 (n + 1)).toNat

end

end A201536.P15795983241588416515

/-! ## A201536.P3024605287440560108

`A201539(A167499(n+3))`
-/

namespace A201536.P3024605287440560108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201539 (A167499 (n + 3)).toNat

end

end A201536.P3024605287440560108

/-! ## A201536.P17982636970841205539

`A201539(A155212(n)+13)`
-/

namespace A201536.P17982636970841205539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201539 (A155212 n + 13).toNat

end

end A201536.P17982636970841205539

/-! ## A201536.P6714774062470375782

`A201539(A056000(n)+15)`
-/

namespace A201536.P6714774062470375782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201539 (A056000 n + 15).toNat

end

end A201536.P6714774062470375782

/-!
# A201537: Number of nX6 0..2 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201537, there is no canonical definition to state claims against.
-/

/-! ## A201537.P6672283704943962001

`A201539(∑[a(n-1)+1])` with `a(0)=21, a(1)=6`
-/

namespace A201537.P6672283704943962001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [21, 6] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201539 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201537.P6672283704943962001

/-! ## A201537.P16233965014572166796

`A201539(A374007(n+1))`
-/

namespace A201537.P16233965014572166796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201539 (A374007 (n + 1)).toNat

end

end A201537.P16233965014572166796

/-! ## A201537.P6030839698005292209

`A201539(A166136(n+4))`
-/

namespace A201537.P6030839698005292209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201539 (A166136 (n + 4)).toNat

end

end A201537.P6030839698005292209

/-! ## A201537.P11463042322099955631

`A201539(A056115(n)+21)`
-/

namespace A201537.P11463042322099955631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201539 (A056115 n + 21).toNat

end

end A201537.P11463042322099955631

/-! ## A201537.P13532051871508687990

`A201539(A167614(n+4)+3)`
-/

namespace A201537.P13532051871508687990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201539 (A167614 (n + 4) + 3).toNat

end

end A201537.P13532051871508687990

/-!
# A201538: Number of nX7 0..2 arrays with rows and columns lexicographically nondecreasing and every element equal to at least one horizontal or vertical neighbor.

The programs for A201538, there is no canonical definition to state claims against.
-/

/-! ## A201538.P7230044206589945089

`A201539(∑[a(n-1)+1])` with `a(0)=28, a(1)=7`
-/

namespace A201538.P7230044206589945089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [28, 7] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201539 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201538.P7230044206589945089

/-! ## A201538.P11154101125029243337

`A201539(A374008(n+1))`
-/

namespace A201538.P11154101125029243337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201539 (A374008 (n + 1)).toNat

end

end A201538.P11154101125029243337

/-! ## A201538.P4391884859660149021

`A201539(eq[11, A066657(n)])`
-/

namespace A201538.P4391884859660149021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201539 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201538.P4391884859660149021

/-! ## A201538.P3555820828567391480

`A201539(A167614(n+5)+4)`
-/

namespace A201538.P3555820828567391480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201539 (A167614 (n + 5) + 4).toNat

end

end A201538.P3555820828567391480

/-! ## A201538.P10738607121424224053

`A201539(A155212(n+2)+15)`
-/

namespace A201538.P10738607121424224053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201539 (A155212 (n + 2) + 15).toNat

end

end A201538.P10738607121424224053

/-!
# A201540: Number of ways to place n nonattacking knights on an n X n board.

The programs for A201540, there is no canonical definition to state claims against.
-/

/-! ## A201540.P15437364106525204588

`A359675(A262442(n))`
-/

namespace A201540.P15437364106525204588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359675 (A262442 n).toNat

end

end A201540.P15437364106525204588

/-!
# A201541: Numbers n such that 12n+5 and 12n+7 are primes.

The programs for A201541, there is no canonical definition to state claims against.
-/

/-! ## A201541.P4576313400193673603

`(A123986(n+1)-1)/3`
-/

namespace A201541.P4576313400193673603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123986 (n + 1) - 1 : ℚ) / 3

end

end A201541.P4576313400193673603

/-! ## A201541.P11845530201824564360

`floor(A123986(1+n)/3)`
-/

namespace A201541.P11845530201824564360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A123986 (1 + n) : ℚ) / 3⌋

end

end A201541.P11845530201824564360

/-! ## A201541.P2631104145793491427

`floor(A071695(n+1)/12)`
-/

namespace A201541.P2631104145793491427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A071695 (n + 1) : ℚ) / 12⌋

end

end A201541.P2631104145793491427

/-! ## A201541.P10597125575168839573

`floor(A071696(n+1)/12)`
-/

namespace A201541.P10597125575168839573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A071696 (n + 1) : ℚ) / 12⌋

end

end A201541.P10597125575168839573

/-! ## A201541.P13163502094070560993

`floor(A122565(2*n+1)/12)`
-/

namespace A201541.P13163502094070560993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A122565 (2 * n + 1) : ℚ) / 12⌋

end

end A201541.P13163502094070560993

/-! ## A201541.P17792814104979367933

`∩[A167055(n+1), A167056(n+1)]`
-/

namespace A201541.P17792814104979367933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201541.P17792814104979367933

/-! ## A201541.P2222207523064182403

`floor(p?[xor(2, A002476(n+1))]/12)`
-/

namespace A201541.P2222207523064182403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A002476 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 12⌋

end

end A201541.P2222207523064182403

/-! ## A201541.P13478947459934958210

`floor(p?[A045326(n+1)-2]/12)`
-/

namespace A201541.P13478947459934958210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 12⌋

end

end A201541.P13478947459934958210

/-! ## A201541.P18272311806493347649

`record[A153196(n+1)-A014682(A153196(n+1))]`
-/

namespace A201541.P18272311806493347649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153196 (n + 1) - A014682 (A153196 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201541.P18272311806493347649

/-! ## A201541.P10255444230585089158

`eq[2, A166597(A017581(n))]`
-/

namespace A201541.P10255444230585089158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A017581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201541.P10255444230585089158

/-! ## A201541.P5909341487964639670

`eq[0, A384102(2*n+1)]`
-/

namespace A201541.P5909341487964639670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384102 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201541.P5909341487964639670

/-! ## A201541.P8130503532152152125

`eq[0, A384103(2*n+1)]`
-/

namespace A201541.P8130503532152152125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384103 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201541.P8130503532152152125

/-! ## A201541.P5190601066087697938

`eq[1, A100923(2*n+1)]`
-/

namespace A201541.P5190601066087697938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100923 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201541.P5190601066087697938

/-! ## A201541.P11714374213353502733

`eq[1, A172155(2*n+1)]`
-/

namespace A201541.P11714374213353502733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172155 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201541.P11714374213353502733

/-! ## A201541.P13752938194090066632

`eq[1, A182481(2*n+1)]`
-/

namespace A201541.P13752938194090066632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201541.P13752938194090066632

/-! ## A201541.P15830418873662388421

`eq[2, A145193(2*n+1)]`
-/

namespace A201541.P15830418873662388421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145193 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201541.P15830418873662388421

/-! ## A201541.P8787317789354356123

`eq[3, A248579(2*n+1)]`
-/

namespace A201541.P8787317789354356123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248579 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A201541.P8787317789354356123

/-! ## A201541.P1198070400616040986

`record[A025480(A153196(n+1))]`
-/

namespace A201541.P1198070400616040986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A153196 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201541.P1198070400616040986

/-! ## A201541.P10144153894390530845

`record[A025480(A002822(n+1)-1)]`
-/

namespace A201541.P10144153894390530845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A002822 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201541.P10144153894390530845

/-! ## A201541.P15530972234191611569

`A001617(A071695(n+1))`
-/

namespace A201541.P15530972234191611569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (A071695 (n + 1)).toNat

end

end A201541.P15530972234191611569

/-!
# A201542: Integer nearest f(2^n), where f(x) = Sum of ( mu(k) * H(k)/k^(3/2) * Integral Log(x^(1/k)) ) for k = 1 to infinity, where H(k) is the harmonic number Sum_{i=1..k} 1/i.

The programs for A201542, there is no canonical definition to state claims against.
-/

/-! ## A201542.P16295423802532031498

`A024417(A344257(n)+A293325(n))`
-/

namespace A201542.P16295423802532031498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A344257 (n + 40) + A293325 n).toNat

end

end A201542.P16295423802532031498

/-! ## A201542.P14773842821125559652

`A121856(A014335(n))+2`
-/

namespace A201542.P14773842821125559652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121856 (A014335 n).toNat + 2

end

end A201542.P14773842821125559652

/-! ## A201542.P17562713600847815976

`A123916(n+1)+A003003(A123916(n+1))`
-/

namespace A201542.P17562713600847815976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123916 (n + 1) + A003003 (A123916 (n + 1)).toNat

end

end A201542.P17562713600847815976

/-! ## A201542.P17503997285688705806

`A285421(A303480(n+1))+A233268(n+1)`
-/

namespace A201542.P17503997285688705806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285421 (A303480 (n + 1)).toNat + A233268 (n + 1)

end

end A201542.P17503997285688705806

/-! ## A201542.P11224414638477749504

`A233268(n+1)+A145140(A346426(2*(n+1)))`
-/

namespace A201542.P11224414638477749504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233268 (n + 1) + A145140 (A346426 (2 * (n + 1))).toNat

end

end A201542.P11224414638477749504

/-!
# A201544: Odd numbers of the form x^2 + 2*y^2 with positive integers x and y.

The programs for A201544, there is no canonical definition to state claims against.
-/

/-! ## A201544.P2310784040612454353

`lt[2, -A133692(n)]`
-/

namespace A201544.P2310784040612454353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A133692 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A201544.P2310784040612454353

/-! ## A201544.P1821560111503252395

`lt[1, A133693(n+1)]+1`
-/

namespace A201544.P1821560111503252395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133693 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A201544.P1821560111503252395

/-! ## A201544.P3318140052650255760

`2*lt[1, A113411(n)]+1`
-/

namespace A201544.P3318140052650255760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113411 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A201544.P3318140052650255760

/-! ## A201544.P16483815637705816541

`record[lcm(2, A154777(n+1))/2]`
-/

namespace A201544.P16483815637705816541
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A154777 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201544.P16483815637705816541

/-! ## A201544.P2745310052887798689

`lt[1, A129134(2*(n+1))]+1`
-/

namespace A201544.P2745310052887798689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129134 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A201544.P2745310052887798689

/-! ## A201544.P988100344531976176

`lt[1, A255258(2*(n+1))]+1`
-/

namespace A201544.P988100344531976176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255258 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A201544.P988100344531976176

/-! ## A201544.P10619521677232358999

`A005408(lt[1, A113411(n)])`
-/

namespace A201544.P10619521677232358999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A201544.P10619521677232358999

/-! ## A201544.P6274845837138811556

`lt[1, A129134(A004277(n))]`
-/

namespace A201544.P6274845837138811556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129134 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A201544.P6274845837138811556

/-! ## A201544.P4391764853128451159

`lt[1, A133693(A028310(n))]`
-/

namespace A201544.P4391764853128451159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133693 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A201544.P4391764853128451159

/-! ## A201544.P5685854079483719514

`record[A000265(A154777(n+1))]`
-/

namespace A201544.P5685854079483719514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A154777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201544.P5685854079483719514

/-!
# A201546: The number of permutations of {1,2,...,2n} that contain a cycle of length greater than n.

The programs for A201546, there is no canonical definition to state claims against.
-/

/-! ## A201546.P4839530645292310808

`record[-((n+1)!+(n+2)*a(n-1))]` with `a(0)=1`
-/

namespace A201546.P4839530645292310808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -((Nat.factorial (n + 1) : ℤ) + (n + 2 : ℤ) * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201546.P4839530645292310808

/-! ## A201546.P8036986273367538098

`A109792(Δ[n²])`
-/

namespace A201546.P8036986273367538098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109792 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A201546.P8036986273367538098

/-! ## A201546.P14642079154183645002

`A024167(2*(n+1))`
-/

namespace A201546.P14642079154183645002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024167 (2 * (n + 1))

end

end A201546.P14642079154183645002

/-! ## A201546.P11264101730488772546

`A080958(2*(n+1))`
-/

namespace A201546.P11264101730488772546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080958 (2 * (n + 1))

end

end A201546.P11264101730488772546

/-! ## A201546.P5893562797366179342

`∏[n+1]*A098118(n+1)`
-/

namespace A201546.P5893562797366179342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A098118 (n + 1)

end

end A201546.P5893562797366179342

/-!
# A201548: Number of ways to place 10 nonattacking wazirs on an n X n toroidal board.

The programs for A201548, there is no canonical definition to state claims against.
-/

/-! ## A201548.P16135298931725316562

`A000654(n+1)%A000700(A000699(n))`
-/

namespace A201548.P16135298931725316562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000654 (n + 1)) (A000700 (A000699 n).toNat)

end

end A201548.P16135298931725316562

/-!
# A201549: Number of arrays of n integers in -5..5 with sum zero.

The programs for A201549, there is no canonical definition to state claims against.
-/

/-! ## A201549.P547191204338908488

`A201552(A167499(n)+A008486(n))`
-/

namespace A201549.P547191204338908488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A167499 n + A008486 n).toNat

end

end A201549.P547191204338908488

/-! ## A201549.P353630572464046127

`A201552(A167614(n+1)+A004277(n))`
-/

namespace A201549.P353630572464046127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A167614 (n + 1) + A004277 n).toNat

end

end A201549.P353630572464046127

/-! ## A201549.P10803907979107105248

`A201552(A056000(n)+7-A057427(n))`
-/

namespace A201549.P10803907979107105248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A056000 n + 7 - A057427 n).toNat

end

end A201549.P10803907979107105248

/-! ## A201549.P552653940456325548

`A201552(A004277(n)+A167499(n)+n)`
-/

namespace A201549.P552653940456325548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A004277 n + (A167499 n + (n : ℤ))).toNat

end

end A201549.P552653940456325548

/-! ## A201549.P2436101035594244747

`A201552(A167614(n+1)+record[A124625(n)])`
-/

namespace A201549.P2436101035594244747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A167614 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A201549.P2436101035594244747

/-! ## A201549.P753527289522453417

`A201552(A000096(n+2)+A054977(n)+n)`
-/

namespace A201549.P753527289522453417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A000096 (n + 2) + (A054977 n + (n : ℤ))).toNat

end

end A201549.P753527289522453417

/-!
# A201550: Number of arrays of n integers in -6..6 with sum zero.

The programs for A201550, there is no canonical definition to state claims against.
-/

/-! ## A201550.P9558550649190249180

`A201552(A052905(n+2)+A000007(n))`
-/

namespace A201550.P9558550649190249180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A052905 (n + 2) + A000007 n).toNat

end

end A201550.P9558550649190249180

/-! ## A201550.P4177350829975910488

`A201552(A057428(n)+A046691(n+3))`
-/

namespace A201550.P4177350829975910488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A057428 n + A046691 (n + 3)).toNat

end

end A201550.P4177350829975910488

/-! ## A201550.P11616650607730356107

`A201552(A000267(n²)+A055999(n)+10)`
-/

namespace A201550.P11616650607730356107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A000267 (n ^ 2) + (A055999 n + 10)).toNat

end

end A201550.P11616650607730356107

/-! ## A201550.P6847026111916948472

`A201552(A052905(n+2)^A019428(2*n))`
-/

namespace A201550.P6847026111916948472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (SequenceMachineLib.roundAway ((A052905 (n + 2) : ℚ) ^ (A019428 (2 * n) : ℤ))).toNat

end

end A201550.P6847026111916948472

/-! ## A201550.P7397337018841240452

`A201552(A052905(n+2)%A062291(n+1))`
-/

namespace A201550.P7397337018841240452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (Int.tmod (A052905 (n + 2)) (A062291 (n + 1))).toNat

end

end A201550.P7397337018841240452

/-!
# A201551: Number of arrays of n integers in -7..7 with sum zero.

The programs for A201551, there is no canonical definition to state claims against.
-/

/-! ## A201551.P8194977935207435693

`A201552(A055999(n+3)+A000007(n))`
-/

namespace A201551.P8194977935207435693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A055999 (n + 3) + A000007 n).toNat

end

end A201551.P8194977935207435693

/-! ## A201551.P15589268430363480996

`A201552(A057428(n)+A052905(n+3))`
-/

namespace A201551.P15589268430363480996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A057428 n + A052905 (n + 3)).toNat

end

end A201551.P15589268430363480996

/-! ## A201551.P2234996080306783898

`A201552(A167499(n+3)+A004277(n))`
-/

namespace A201551.P2234996080306783898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A167499 (n + 3) + A004277 n).toNat

end

end A201551.P2234996080306783898

/-! ## A201551.P2682349120614529391

`A201552(A052905(n+3)-A178334(n))`
-/

namespace A201551.P2682349120614529391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A052905 (n + 3) - A178334 n).toNat

end

end A201551.P2682349120614529391

/-! ## A201551.P3259967505839205768

`A201552(A028310(n)+A000217(n+5))`
-/

namespace A201551.P3259967505839205768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A028310 n + A000217 (n + 5)).toNat

end

end A201551.P3259967505839205768

/-! ## A201551.P3389844719431343627

`A201552(A055999(n+3)^A178334(n))`
-/

namespace A201551.P3389844719431343627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (SequenceMachineLib.roundAway ((A055999 (n + 3) : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A201551.P3389844719431343627

/-! ## A201551.P14700030324262633734

`A201552(A004277(n)+A155212(n)+13)`
-/

namespace A201551.P14700030324262633734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A004277 n + (A155212 n + 13)).toNat

end

end A201551.P14700030324262633734

/-! ## A201551.P16505096507215960221

`A201552(A052905(n+3)-A019428(2*n))`
-/

namespace A201551.P16505096507215960221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A052905 (n + 3) - A019428 (2 * n)).toNat

end

end A201551.P16505096507215960221

/-! ## A201551.P12854461727705934187

`A201552(A004277(n)+A000217(n+4)+5)`
-/

namespace A201551.P12854461727705934187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (A004277 n + (A000217 (n + 4) + 5)).toNat

end

end A201551.P12854461727705934187

/-! ## A201551.P9389370902316703168

`A201552((A000217(n+6)-6)%A201605(n+1))`
-/

namespace A201551.P9389370902316703168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201552 (Int.tmod (A000217 (n + 6) - 6) (A201605 (n + 1))).toNat

end

end A201551.P9389370902316703168

/-!
# A201552: Square array read by diagonals: T(n,k) = number of arrays of n integers in -k..k with sum equal to 0.

The programs for A201552, there is no canonical definition to state claims against.
-/

/-! ## A201552.P9082607639303240018

`A083544(A013610(n))`
-/

namespace A201552.P9082607639303240018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083544 (A013610 n).toNat

end

end A201552.P9082607639303240018

/-! ## A201552.P13981679383216191701

`A156724(A013610(n)+2)`
-/

namespace A201552.P13981679383216191701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156724 (A013610 n + 2).toNat

end

end A201552.P13981679383216191701

/-! ## A201552.P11541479991633776297

`A156724(A182042(n)+2)`
-/

namespace A201552.P11541479991633776297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156724 (A182042 n + 2).toNat

end

end A201552.P11541479991633776297

/-! ## A201552.P4253988035783142168

`A156251(2*A013610(n))`
-/

namespace A201552.P4253988035783142168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156251 (2 * A013610 n).toNat

end

end A201552.P4253988035783142168

/-!
# A201553: Number of arrays of 6 integers in -n..n with sum zero.

The programs for A201553, the canonical program `A201553.P13851924418768866556` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201553 has offset 0).

The definition of A201553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201553.P13851924418768866556

`(2*n+1)*(44*n^4+88*n^3+71*n²+27*n+5)/5`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A201553

/-- `(2*n+1)*(44*n^4+88*n^3+71*n²+27*n+5)/5` -/
def P13851924418768866556.Spec : Prop :=
  ∀ n, P13851924418768866556.a n = (A201553 n : ℚ)

end A201553

/-! ## A201553.P10469558098021086183

`A071816(Δ[n²])`
-/

namespace A201553.P10469558098021086183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071816 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A201553.P10469558098021086183

namespace A201553

/-- `A071816(Δ[n²])` -/
def P10469558098021086183.Spec : Prop :=
  ∀ n, P10469558098021086183.a n = A201553 n

end A201553

/-! ## A201553.P8738571142343169061

`record[A071816(A000265(n+1))]`
-/

namespace A201553.P8738571142343169061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071816 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201553.P8738571142343169061

namespace A201553

/-- `record[A071816(A000265(n+1))]` -/
def P8738571142343169061.Spec : Prop :=
  ∀ n, P8738571142343169061.a n = A201553 n

end A201553

/-! ## A201553.P18119970605195653321

`or(A071816(2*n+1), A209229(n))`
-/

namespace A201553.P18119970605195653321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A071816 (2 * n + 1)) (A209229 n)

end

end A201553.P18119970605195653321

namespace A201553

/-- `or(A071816(2*n+1), A209229(n))` -/
def P18119970605195653321.Spec : Prop :=
  ∀ n, P18119970605195653321.a n = A201553 n

end A201553

/-! ## A201553.P1495986573288068713

`A071816(2*n+1)+A000007(n+1)`
-/

namespace A201553.P1495986573288068713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071816 (2 * n + 1) + A000007 (n + 1)

end

end A201553.P1495986573288068713

namespace A201553

/-- `A071816(2*n+1)+A000007(n+1)` -/
def P1495986573288068713.Spec : Prop :=
  ∀ n, P1495986573288068713.a n = A201553 n

end A201553

/-! ## A201553.P12162739106441519506

`A071816(2*(n+1))-A070302(2*(n+1))`
-/

namespace A201553.P12162739106441519506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071816 (2 * (n + 1)) - A070302 (2 * (n + 1))

end

end A201553.P12162739106441519506

namespace A201553

/-- `A071816(2*(n+1))-A070302(2*(n+1))` -/
def P12162739106441519506.Spec : Prop :=
  ∀ n, P12162739106441519506.a n = A201553 n

end A201553

/-! ## A201553.P6417822580601304747

`A071816(A000265(2*n+1))²/A071816(2*n+1)`
-/

namespace A201553.P6417822580601304747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071816 (A000265 (2 * n + 1)).toNat ^ 2 : ℚ) / (A071816 (2 * n + 1) : ℚ)

end

end A201553.P6417822580601304747

namespace A201553

/-- `A071816(A000265(2*n+1))²/A071816(2*n+1)` -/
def P6417822580601304747.Spec : Prop :=
  ∀ n, P6417822580601304747.a n = (A201553 n : ℚ)

end A201553

/-! ## A201553.P11425210126958875506

`record[A071816(A028234(n+1))]`
-/

namespace A201553.P11425210126958875506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071816 (A028234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201553.P11425210126958875506

namespace A201553

/-- `record[A071816(A028234(n+1))]` -/
def P11425210126958875506.Spec : Prop :=
  ∀ n, P11425210126958875506.a n = A201553 n

end A201553

/-! ## A201553.P7030832457821966852

`A071816(n+1+n)/A055491((n+1)²)`
-/

namespace A201553.P7030832457821966852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071816 (n + 1 + n) : ℚ) / (A055491 ((n + 1) ^ 2) : ℚ)

end

end A201553.P7030832457821966852

namespace A201553

/-- `A071816(n+1+n)/A055491((n+1)²)` -/
def P7030832457821966852.Spec : Prop :=
  ∀ n, P7030832457821966852.a n = (A201553 n : ℚ)

end A201553

/-!
# A201554: Number of arrays of 7 integers in -n..n with sum zero.

The programs for A201554, there is no canonical definition to state claims against.
-/

/-! ## A201554.P605390453020069956

`A133458(Δ[n²])`
-/

namespace A201554.P605390453020069956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133458 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A201554.P605390453020069956

/-! ## A201554.P15812350198798003614

`or(1, A133458(2*n+1))`
-/

namespace A201554.P15812350198798003614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A133458 (2 * n + 1))

end

end A201554.P15812350198798003614

/-! ## A201554.P8812008746137332775

`A133458(2*n+1)^abs(A057428(n))`
-/

namespace A201554.P8812008746137332775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133458 (2 * n + 1) : ℚ) ^ (|A057428 n| : ℤ)

end

end A201554.P8812008746137332775

/-! ## A201554.P957002118952740780

`A054977(2*n+1)*A133458(2*n+1)`
-/

namespace A201554.P957002118952740780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (2 * n + 1) * A133458 (2 * n + 1)

end

end A201554.P957002118952740780

/-! ## A201554.P2674007117498699123

`A133458(n+1+n)/A001511(A005408(n))`
-/

namespace A201554.P2674007117498699123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133458 (n + 1 + n) : ℚ) / (A001511 (A005408 n).toNat : ℚ)

end

end A201554.P2674007117498699123

/-! ## A201554.P10849194293775823683

`A001511(A005408(n))*A133458(A005408(n))`
-/

namespace A201554.P10849194293775823683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A005408 n).toNat * A133458 (A005408 n).toNat

end

end A201554.P10849194293775823683

/-! ## A201554.P355374260081095681

`abs(A057428(3*n+1))*A133458(2*n+1)`
-/

namespace A201554.P355374260081095681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057428 (3 * n + 1)| * A133458 (2 * n + 1)

end

end A201554.P355374260081095681

/-! ## A201554.P9881211599710230099

`A133458(2*n+1)%A133458(A016777(n+1))`
-/

namespace A201554.P9881211599710230099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133458 (2 * n + 1)) (A133458 (A016777 (n + 1)).toNat)

end

end A201554.P9881211599710230099

/-! ## A201554.P7680826168277988726

`A133458(n+1+n)/A001511(A056912(n+1))`
-/

namespace A201554.P7680826168277988726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133458 (n + 1 + n) : ℚ) / (A001511 (A056912 (n + 1)).toNat : ℚ)

end

end A201554.P7680826168277988726

/-! ## A201554.P1938869489168847349

`A133458(n+1+n)/A014963(A056913(n+1))`
-/

namespace A201554.P1938869489168847349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133458 (n + 1 + n) : ℚ) / (A014963 (A056913 (n + 1)).toNat : ℚ)

end

end A201554.P1938869489168847349

/-! ## A201554.P2568618362304351190

`A133458(n+1+n)/A085099(A006093(n+1))`
-/

namespace A201554.P2568618362304351190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133458 (n + 1 + n) : ℚ) / (A085099 (A006093 (n + 1)).toNat : ℚ)

end

end A201554.P2568618362304351190

/-! ## A201554.P10977971104861895759

`A133458(2*n+1)^A001511(A000040(n+1)+2)`
-/

namespace A201554.P10977971104861895759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133458 (2 * n + 1) : ℚ) ^ (A001511 (A000040 (n + 1) + 2).toNat : ℤ)

end

end A201554.P10977971104861895759

/-! ## A201554.P1899198005539495652

`A133458(2*n+1)^A006519(A000040(n+1)+2)`
-/

namespace A201554.P1899198005539495652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133458 (2 * n + 1) : ℚ) ^ (A006519 (A000040 (n + 1) + 2).toNat : ℤ)

end

end A201554.P1899198005539495652

/-! ## A201554.P2452500271363419271

`A133458(n+1+n)/A007318(∑[n])`
-/

namespace A201554.P2452500271363419271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133458 (n + 1 + n) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A201554.P2452500271363419271

/-!
# A201555: a(n) = C(2*n^2,n^2) = A000984(n^2), where A000984 is the central binomial coefficients.

The programs for A201555, the canonical program `A201555.P7616371346376601089` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201555 has offset 0).

The definition of A201555 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000984(n²)` (program `A201555.P7616371346376601089`, by `A201555.P7616371346376601089.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A201555.P8941496965152584189

`∑{#}[n², C(n², #)²]`
-/

namespace A201555.P8941496965152584189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (n ^ 2) k ^ 2

end

end A201555.P8941496965152584189

namespace A201555

/-- `∑{#}[n², C(n², #)²]` -/
def P8941496965152584189.Spec : Prop :=
  ∀ n, (P8941496965152584189.a n : ℤ) = A201555 n

end A201555

/-! ## A201555.P7616371346376601089

`A000984(n²)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A201555

/-- `A000984(n²)` -/
def P7616371346376601089.Spec : Prop :=
  ∀ n, P7616371346376601089.a n = A201555 n

theorem P7616371346376601089.correct : P7616371346376601089.Spec := by
  intro n
  simp only [A201555]

end A201555

/-! ## A201555.P11627404867761538925

`C(2*n², n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A201555.P11627404867761538925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n ^ 2) (n ^ 2)

end

end A201555.P11627404867761538925

namespace A201555

/-- `C(2*n², n²)` -/
def P11627404867761538925.Spec : Prop :=
  ∀ n, (P11627404867761538925.a n : ℤ) = A201555 n

end A201555

/-! ## A201555.P1741656088992649491

`A001405(2*n²)`
-/

namespace A201555.P1741656088992649491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n ^ 2)

end

end A201555.P1741656088992649491

namespace A201555

/-- `A001405(2*n²)` -/
def P1741656088992649491.Spec : Prop :=
  ∀ n, P1741656088992649491.a n = A201555 n

end A201555

/-! ## A201555.P2709247858038861551

`A056040(2*n²)`
-/

namespace A201555.P2709247858038861551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (2 * n ^ 2)

end

end A201555.P2709247858038861551

namespace A201555

/-- `A056040(2*n²)` -/
def P2709247858038861551.Spec : Prop :=
  ∀ n, P2709247858038861551.a n = A201555 n

end A201555

/-!
# A201560: a(n) = (Sum(m^(n-1), m=1..n-1) + 1) modulo n.

The programs for A201560, there is no canonical definition to state claims against.
-/

/-! ## A201560.P1466593211981030718

`(A204187(n+1)+1)%(n+1)`
-/

namespace A201560.P1466593211981030718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204187 (n + 1) + 1) (n + 1 : ℤ)

end

end A201560.P1466593211981030718

/-! ## A201560.P1133831195567210578

`A204187(n+1)+1-C(A006530(n+1), n)`
-/

namespace A201560.P1133831195567210578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204187 (n + 1) + 1 - (Nat.choose (A006530 (n + 1)).toNat n : ℤ)

end

end A201560.P1133831195567210578

/-! ## A201560.P12573130048202247753

`(A204187(n+1)+1)*A001222(A085392(n+1))`
-/

namespace A201560.P12573130048202247753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A204187 (n + 1) + 1) * A001222 (A085392 (n + 1)).toNat

end

end A201560.P12573130048202247753

/-! ## A201560.P8483386939297360047

`(A204187(n+1)+1)*A001222(A217581(n+1))`
-/

namespace A201560.P8483386939297360047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A204187 (n + 1) + 1) * A001222 (A217581 (n + 1)).toNat

end

end A201560.P8483386939297360047

/-! ## A201560.P17549145257485893760

`A002262(A204187(n+1)+A000124(n))`
-/

namespace A201560.P17549145257485893760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A204187 (n + 1) + A000124 n).toNat

end

end A201560.P17549145257485893760

/-! ## A201560.P13608869962462243043

`A120490(n+1)%(n+1)`
-/

namespace A201560.P13608869962462243043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120490 (n + 1)) (n + 1 : ℤ)

end

end A201560.P13608869962462243043

/-!
# A201592: Least value of x arising in A154777(n).

The programs for A201592, there is no canonical definition to state claims against.
-/

/-! ## A201592.P17957503436828224605

`A131295(floor(π*(n+1)^3))-A000002(n+1)`
-/

namespace A201592.P17957503436828224605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131295 ⌊Real.pi * ((n + 1) ^ 3 : ℝ)⌋.toNat - A000002 (n + 1)

end

end A201592.P17957503436828224605

/-! ## A201592.P5494232659313677302

`A001222(A246563(n)+A003238(n+3))`
-/

namespace A201592.P5494232659313677302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A246563 n + A003238 (n + 3)).toNat

end

end A201592.P5494232659313677302

/-! ## A201592.P11851135936362016751

`A327500(A327474(n)+A091523(2*(n+1)))`
-/

namespace A201592.P11851135936362016751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327500 (A327474 n + A091523 (2 * (n + 1))).toNat

end

end A201592.P11851135936362016751

/-! ## A201592.P15227475965494640126

`A002260(∑[A208059(n)+A079944(2*(n+2))]+1)`
-/

namespace A201592.P15227475965494640126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208059 n + A079944 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A201592.P15227475965494640126

/-! ## A201592.P9981501167101723278

`A091222(A032750(n+1))`
-/

namespace A201592.P9981501167101723278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091222 (A032750 (n + 1)).toNat

end

end A201592.P9981501167101723278

/-!
# A201593: Largest value of y arising in A154777(n).

The programs for A201593, there is no canonical definition to state claims against.
-/

/-! ## A201593.P6260764249863497903

`A303536(A318263(n+1)+A055672(n))`
-/

namespace A201593.P6260764249863497903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303536 (A318263 (n + 1) + A055672 n).toNat

end

end A201593.P6260764249863497903

/-! ## A201593.P162990694915134145

`A043562(lcm(A097207(n), A245282(n+1)))`
-/

namespace A201593.P162990694915134145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (Int.lcm (A097207 n) (A245282 (n + 1)))

end

end A201593.P162990694915134145

/-! ## A201593.P13072207973008985920

`A055642(A138142(n+5)*A368514(2*n+3))`
-/

namespace A201593.P13072207973008985920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A138142 (n + 5) * A368514 (2 * n + 3)).toNat

end

end A201593.P13072207973008985920

/-! ## A201593.P10688320618286343666

`A196563(A036689(A112886(n+1)))`
-/

namespace A201593.P10688320618286343666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A036689 (A112886 (n + 1)).toNat).toNat

end

end A201593.P10688320618286343666

/-! ## A201593.P15095791062294043916

`A001221(A266857(n)+A098859(n+2))`
-/

namespace A201593.P15095791062294043916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A266857 n + A098859 (n + 2)).toNat

end

end A201593.P15095791062294043916

/-!
# A201594: E.g.f. satisfies: A(x) = 1/(1 - tan( x*A(x) )).

The programs for A201594, there is no canonical definition to state claims against.
-/

/-! ## A201594.P15437192687780626837

`A214224(n+1)/(n+1)`
-/

namespace A201594.P15437192687780626837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214224 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A201594.P15437192687780626837

/-! ## A201594.P2575175715280149504

`A244161(A186633(n)-floor(2*n/5))`
-/

namespace A201594.P2575175715280149504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244161 (A186633 n - ⌊2 * ((n : ℚ) / 5)⌋).toNat

end

end A201594.P2575175715280149504

/-!
# A201595: E.g.f. satisfies A(x) = exp(x*A(x)) * cosh(x*A(x)).

The programs for A201595, the canonical program `A201595.P9018327074524688287` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201595 has offset 0).

The definition of A201595 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201595.P9018327074524688287

`1/2*∑{#}[n+1, C(n+1, #)*#^n/(n+1)]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A201595

/-- `1/2*∑{#}[n+1, C(n+1, #)*#^n/(n+1)]` -/
def P9018327074524688287.Spec : Prop :=
  ∀ n, P9018327074524688287.a n = (A201595 n : ℚ)

end A201595

/-! ## A201595.P10763092858108206062

`A214225(n+1)/(n+1)`
-/

namespace A201595.P10763092858108206062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214225 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A201595.P10763092858108206062

namespace A201595

/-- `A214225(n+1)/(n+1)` -/
def P10763092858108206062.Spec : Prop :=
  ∀ n, P10763092858108206062.a n = (A201595 n : ℚ)

end A201595

/-! ## A201595.P2034567026762642118

`ceil(A349562(n)/2)`
-/

namespace A201595.P2034567026762642118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A349562 n : ℚ) / 2⌉

end

end A201595.P2034567026762642118

namespace A201595

/-- `ceil(A349562(n)/2)` -/
def P2034567026762642118.Spec : Prop :=
  ∀ n, P2034567026762642118.a n = A201595 n

end A201595

/-! ## A201595.P3392154450595589946

`A349562(A028310(n))/2`
-/

namespace A201595.P3392154450595589946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349562 (A028310 n).toNat : ℚ) / 2

end

end A201595.P3392154450595589946

namespace A201595

/-- `A349562(A028310(n))/2` -/
def P3392154450595589946.Spec : Prop :=
  ∀ n, P3392154450595589946.a n = (A201595 n : ℚ)

end A201595

/-! ## A201595.P11396453774543183018

`A007889(n)*A011782(n)`
-/

namespace A201595.P11396453774543183018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007889 n * A011782 n

end

end A201595.P11396453774543183018

namespace A201595

/-- `A007889(n)*A011782(n)` -/
def P11396453774543183018.Spec : Prop :=
  ∀ n, P11396453774543183018.a n = A201595 n

end A201595

/-! ## A201595.P9462372931378582875

`A349562(n)/A040000(n)`
-/

namespace A201595.P9462372931378582875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349562 n : ℚ) / (A040000 n : ℚ)

end

end A201595.P9462372931378582875

namespace A201595

/-- `A349562(n)/A040000(n)` -/
def P9462372931378582875.Spec : Prop :=
  ∀ n, P9462372931378582875.a n = (A201595 n : ℚ)

end A201595

/-! ## A201595.P1196765603266987283

`A007889(n)*A118800(∑[n])`
-/

namespace A201595.P1196765603266987283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007889 n * A118800 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201595.P1196765603266987283

namespace A201595

/-- `A007889(n)*A118800(∑[n])` -/
def P1196765603266987283.Spec : Prop :=
  ∀ n, P1196765603266987283.a n = A201595 n

end A201595

/-! ## A201595.P9826057126825174176

`A349562(n)/A036453(n+1)`
-/

namespace A201595.P9826057126825174176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349562 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A201595.P9826057126825174176

namespace A201595

/-- `A349562(n)/A036453(n+1)` -/
def P9826057126825174176.Spec : Prop :=
  ∀ n, P9826057126825174176.a n = (A201595 n : ℚ)

end A201595

/-! ## A201595.P8632212385661365638

`A349562(A000007(n)+n)/2`
-/

namespace A201595.P8632212385661365638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349562 (A000007 n + (n : ℤ)).toNat : ℚ) / 2

end

end A201595.P8632212385661365638

namespace A201595

/-- `A349562(A000007(n)+n)/2` -/
def P8632212385661365638.Spec : Prop :=
  ∀ n, P8632212385661365638.a n = (A201595 n : ℚ)

end A201595

/-! ## A201595.P16590051403073938467

`A349562(A151935(n)+n)/2`
-/

namespace A201595.P16590051403073938467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349562 (A151935 n + (n : ℤ)).toNat : ℚ) / 2

end

end A201595.P16590051403073938467

namespace A201595

/-- `A349562(A151935(n)+n)/2` -/
def P16590051403073938467.Spec : Prop :=
  ∀ n, P16590051403073938467.a n = (A201595 n : ℚ)

end A201595

/-!
# A201596: Record (maximal) gaps between prime triples (p, p+4, p+6).

The programs for A201596, there is no canonical definition to state claims against.
-/

/-! ## A201596.P15903521740378850895

`A233435(n+1)-A201597(n+1)`
-/

namespace A201596.P15903521740378850895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233435 (n + 1) - A201597 (n + 1)

end

end A201596.P15903521740378850895

/-! ## A201596.P8809889710119986342

`record[Δ[A022005(n+1)]]`
-/

namespace A201596.P8809889710119986342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201596.P8809889710119986342

/-! ## A201596.P2638389769165089040

`record[Δ[A073649(n+1)]]`
-/

namespace A201596.P2638389769165089040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073649 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201596.P2638389769165089040

/-! ## A201596.P15876250165819383559

`record[Δ[A098413(n+1)]]`
-/

namespace A201596.P15876250165819383559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098413 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201596.P15876250165819383559

/-! ## A201596.P2359238624957352181

`record[Δ[A144840(n+1)]]`
-/

namespace A201596.P2359238624957352181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144840 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201596.P2359238624957352181

/-!
# A201597: Initial prime in prime triples (p, p+4, p+6) preceding the maximal gaps in A201596.

The programs for A201597, there is no canonical definition to state claims against.
-/

/-! ## A201597.P4502233650394262382

`A233435(n+1)-A201596(n+1)`
-/

namespace A201597.P4502233650394262382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233435 (n + 1) - A201596 (n + 1)

end

end A201597.P4502233650394262382

/-! ## A201597.P15915181912105080862

`A233435(n+1)+A188510(A004771(n))*A201596(n+1)`
-/

namespace A201597.P15915181912105080862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233435 (n + 1) + A188510 (A004771 n).toNat * A201596 (n + 1)

end

end A201597.P15915181912105080862

/-! ## A201597.P7468034193464928171

`A233435(n+1)-record[Δ[A022005(n+1)]]`
-/

namespace A201597.P7468034193464928171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233435 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201597.P7468034193464928171

/-! ## A201597.P10452592806318330780

`A233435(n+1)-record[Δ[A073649(n+1)]]`
-/

namespace A201597.P10452592806318330780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073649 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233435 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201597.P10452592806318330780

/-! ## A201597.P15748555332662223256

`A233435(n+1)-record[Δ[A144840(n+1)]]`
-/

namespace A201597.P15748555332662223256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144840 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233435 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201597.P15748555332662223256

/-!
# A201598: Record (maximal) gaps between prime triples (p, p+2, p+6).

The programs for A201598, there is no canonical definition to state claims against.
-/

/-! ## A201598.P10521201881979151034

`A233434(n+1)-A201599(n+1)`
-/

namespace A201598.P10521201881979151034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233434 (n + 1) - A201599 (n + 1)

end

end A201598.P10521201881979151034

/-! ## A201598.P8588356599143945261

`record[Δ[A022004(n+1)]]`
-/

namespace A201598.P8588356599143945261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201598.P8588356599143945261

/-! ## A201598.P10181709194346412862

`record[Δ[A073648(n+1)]]`
-/

namespace A201598.P10181709194346412862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073648 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201598.P10181709194346412862

/-! ## A201598.P15139808092836527238

`record[Δ[A098412(n+1)]]`
-/

namespace A201598.P15139808092836527238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098412 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201598.P15139808092836527238

/-! ## A201598.P2683170953792605789

`record[A022004(n+2)-A022004(n+1)]`
-/

namespace A201598.P2683170953792605789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 2) - A022004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201598.P2683170953792605789

/-!
# A201599: Initial primes in prime triples (p, p+2, p+6) preceding the maximal gaps in A201598.

The programs for A201599, there is no canonical definition to state claims against.
-/

/-! ## A201599.P18295826887022529588

`A233434(n+1)-A201598(n+1)`
-/

namespace A201599.P18295826887022529588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233434 (n + 1) - A201598 (n + 1)

end

end A201599.P18295826887022529588

/-! ## A201599.P10815034113280775527

`A233434(n+1)-record[Δ[A022004(n+1)]]`
-/

namespace A201599.P10815034113280775527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233434 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201599.P10815034113280775527

/-! ## A201599.P17506538639301673866

`A233434(n+1)-record[Δ[A073648(n+1)]]`
-/

namespace A201599.P17506538639301673866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073648 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233434 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201599.P17506538639301673866

/-! ## A201599.P8041484954150220971

`A233434(n+1)-record[Δ[A098412(n+1)]]`
-/

namespace A201599.P8041484954150220971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098412 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233434 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201599.P8041484954150220971

/-! ## A201599.P7775680218663398746

`A233434(n+1)-record[A022004(n+2)-A022004(n+1)]`
-/

namespace A201599.P7775680218663398746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 2) - A022004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233434 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201599.P7775680218663398746

