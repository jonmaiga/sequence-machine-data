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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A239800: First appearance of n in A016014, or 0 if n never occurs.

The programs for A239800, there is no canonical definition to state claims against.
-/

/-! ## A239800.P5657803421254304956

`floor(A342365(n+1)/(2*(n+1)))`
-/

namespace A239800.P5657803421254304956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A342365 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)⌋

end

end A239800.P5657803421254304956

/-! ## A239800.P2665399057976709650

`A028242((A342365(n+1)+n)/(n+1))`
-/

namespace A239800.P2665399057976709650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (SequenceMachineLib.roundAway ((A342365 (n + 1) + (n : ℤ) : ℚ) / (n + 1 : ℚ))).toNat

end

end A239800.P2665399057976709650

/-! ## A239800.P6280896553088846621

`A000010(A342365(n+1))/A004277(n+1)`
-/

namespace A239800.P6280896553088846621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A342365 (n + 1)).toNat : ℚ) / (A004277 (n + 1) : ℚ)

end

end A239800.P6280896553088846621

/-!
# A239802: Numbers k such that if x = k - phi(k) then k = sigma(x) - x, where phi(k) is the Euler totient function.

The programs for A239802, there is no canonical definition to state claims against.
-/

/-! ## A239802.P13832645004041308921

`A001065(A239801(n+1)^A082870(n))`
-/

namespace A239802.P13832645004041308921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.roundAway ((A239801 (n + 1) : ℚ) ^ (A082870 n : ℤ))).toNat

end

end A239802.P13832645004041308921

/-!
# A239811: Number of n X n 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it, modulo 4.

The programs for A239811, there is no canonical definition to state claims against.
-/

/-! ## A239811.P17215486038505561641

`A239819((n+1)²+n²)`
-/

namespace A239811.P17215486038505561641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 ((n + 1) ^ 2 + n ^ 2)

end

end A239811.P17215486038505561641

/-!
# A239812: Number of n X 1 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it, modulo 4.

The programs for A239812, the canonical program `A239812.P1965333349453505007` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239812 has offset 1).

The definition of A239812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 281 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239812.P1939329652786418679

`ogf((2+3x+2x^2)/(1-x-2x^2-2x^3))`
-/

namespace A239812.P1939329652786418679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 2] [1, -1, -2, -2] n

end

end A239812.P1939329652786418679

namespace A239812

/-- `ogf((2+3x+2x^2)/(1-x-2x^2-2x^3))` -/
def P1939329652786418679.Spec : Prop :=
  ∀ n, P1939329652786418679.a n = A239812 (n + 1)

end A239812

/-! ## A239812.P1965333349453505007

`a(n-1)+2*a(n-2)+2*a(n-3)` with `a(0)=2, a(1)=5, a(2)=11`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A239812

/-- `a(n-1)+2*a(n-2)+2*a(n-3)` -/
def P1965333349453505007.Spec : Prop :=
  ∀ n, (P1965333349453505007.a n : ℤ) = A239812 (n + 1)

theorem P1965333349453505007.correct : P1965333349453505007.Spec := by
  intro n
  simp only [A239812, Nat.add_sub_cancel]

end A239812

/-! ## A239812.P12254262506629988484

`A238768(n)+a(n-1)` with `a(0)=2`
-/

namespace A239812.P12254262506629988484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A238768 n + a (n - 1)

end

end A239812.P12254262506629988484

namespace A239812

/-- `A238768(n)+a(n-1)` -/
def P12254262506629988484.Spec : Prop :=
  ∀ n, P12254262506629988484.a n = A239812 (n + 1)

end A239812

/-! ## A239812.P8747149325095581641

`abs(Δ[Δ[A077900(n)/2]])`
-/

namespace A239812.P8747149325095581641
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077900 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A239812.P8747149325095581641

namespace A239812

/-- `abs(Δ[Δ[A077900(n)/2]])` -/
def P8747149325095581641.Spec : Prop :=
  ∀ n, P8747149325095581641.a n = (A239812 (n + 1) : ℚ)

end A239812

/-! ## A239812.P13357447833564692363

`abs(Δ[A077970(n+1)/2])`
-/

namespace A239812.P13357447833564692363
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077970 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A239812.P13357447833564692363

namespace A239812

/-- `abs(Δ[A077970(n+1)/2])` -/
def P13357447833564692363.Spec : Prop :=
  ∀ n, P13357447833564692363.a n = (A239812 (n + 1) : ℚ)

end A239812

/-! ## A239812.P9931881595164953108

`A238768(n+1)-A077946(n)`
-/

namespace A239812.P9931881595164953108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238768 (n + 1) - A077946 n

end

end A239812.P9931881595164953108

namespace A239812

/-- `A238768(n+1)-A077946(n)` -/
def P9931881595164953108.Spec : Prop :=
  ∀ n, P9931881595164953108.a n = A239812 (n + 1)

end A239812

/-! ## A239812.P2415097544529187565

`A077946(n+1)+abs(A078040(n))`
-/

namespace A239812.P2415097544529187565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077946 (n + 1) + |A078040 n|

end

end A239812.P2415097544529187565

namespace A239812

/-- `A077946(n+1)+abs(A078040(n))` -/
def P2415097544529187565.Spec : Prop :=
  ∀ n, P2415097544529187565.a n = A239812 (n + 1)

end A239812

/-! ## A239812.P2477053335638404220

`abs(A077970(n+1)-A078040(n))`
-/

namespace A239812.P2477053335638404220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077970 (n + 1) - A078040 n|

end

end A239812.P2477053335638404220

namespace A239812

/-- `abs(A077970(n+1)-A078040(n))` -/
def P2477053335638404220.Spec : Prop :=
  ∀ n, P2477053335638404220.a n = A239812 (n + 1)

end A239812

/-! ## A239812.P9681125592845072953

`A238768(n+1)-abs(A077970(n))`
-/

namespace A239812.P9681125592845072953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238768 (n + 1) - |A077970 n|

end

end A239812.P9681125592845072953

namespace A239812

/-- `A238768(n+1)-abs(A077970(n))` -/
def P9681125592845072953.Spec : Prop :=
  ∀ n, P9681125592845072953.a n = A239812 (n + 1)

end A239812

/-! ## A239812.P10660347746597005550

`A078006(n+4)/4`
-/

namespace A239812.P10660347746597005550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078006 (n + 4) : ℚ) / 4

end

end A239812.P10660347746597005550

namespace A239812

/-- `A078006(n+4)/4` -/
def P10660347746597005550.Spec : Prop :=
  ∀ n, P10660347746597005550.a n = (A239812 (n + 1) : ℚ)

end A239812

/-! ## A239812.P6641954480824980768

`abs(A077970(n)+Δ[A078040(n)])`
-/

namespace A239812.P6641954480824980768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077970 n + (f1 (n + 1) - f1 n)|

end

end A239812.P6641954480824980768

namespace A239812

/-- `abs(A077970(n)+Δ[A078040(n)])` -/
def P6641954480824980768.Spec : Prop :=
  ∀ n, P6641954480824980768.a n = A239812 (n + 1)

end A239812

/-! ## A239812.P10407631286675927799

`abs(Δ[A078040(n)])-A077946(n)`
-/

namespace A239812.P10407631286675927799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A077946 n

end

end A239812.P10407631286675927799

namespace A239812

/-- `abs(Δ[A078040(n)])-A077946(n)` -/
def P10407631286675927799.Spec : Prop :=
  ∀ n, P10407631286675927799.a n = A239812 (n + 1)

end A239812

/-! ## A239812.P5647004491254860142

`Δ[A077946(n+3)/4]`
-/

namespace A239812.P5647004491254860142
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077946 (n + 3) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239812.P5647004491254860142

namespace A239812

/-- `Δ[A077946(n+3)/4]` -/
def P5647004491254860142.Spec : Prop :=
  ∀ n, P5647004491254860142.a n = (A239812 (n + 1) : ℚ)

end A239812

/-! ## A239812.P516255134497200724

`A238768(n+5)%A238768(n+4)/4`
-/

namespace A239812.P516255134497200724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A238768 (n + 5)) (A238768 (n + 4)) : ℚ) / 4

end

end A239812.P516255134497200724

namespace A239812

/-- `A238768(n+5)%A238768(n+4)/4` -/
def P516255134497200724.Spec : Prop :=
  ∀ n, P516255134497200724.a n = (A239812 (n + 1) : ℚ)

end A239812

/-!
# A239813: Number of nX2 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it, modulo 4.

The programs for A239813, there is no canonical definition to state claims against.
-/

/-! ## A239813.P9560646543859979263

`A239819(∑[n+2])`
-/

namespace A239813.P9560646543859979263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A239813.P9560646543859979263

/-! ## A239813.P14653274936938996579

`record[A239819(abs(A201163(n)))]`
-/

namespace A239813.P14653274936938996579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239813.P14653274936938996579

/-!
# A239814: Number of nX3 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it, modulo 4.

The programs for A239814, there is no canonical definition to state claims against.
-/

/-! ## A239814.P1184769684804035938

`A239819(∑[n+3]+1)`
-/

namespace A239814.P1184769684804035938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A239814.P1184769684804035938

/-! ## A239814.P12061219171152686082

`record[A239819(A198464(n+1))]`
-/

namespace A239814.P12061219171152686082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239814.P12061219171152686082

/-! ## A239814.P3034242203694292632

`A239819(A034856(n+2))+A130507(n²)`
-/

namespace A239814.P3034242203694292632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (A034856 (n + 2)).toNat + A130507 (n ^ 2)

end

end A239814.P3034242203694292632

/-! ## A239814.P13409137960939976286

`A239819(A034856(n+2))%A048548(n+1)`
-/

namespace A239814.P13409137960939976286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239819 (A034856 (n + 2)).toNat) (A048548 (n + 1))

end

end A239814.P13409137960939976286

/-!
# A239815: Number of nX4 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it, modulo 4.

The programs for A239815, there is no canonical definition to state claims against.
-/

/-! ## A239815.P12107878604565769208

`A239819(A141214(n+1))`
-/

namespace A239815.P12107878604565769208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (A141214 (n + 1)).toNat

end

end A239815.P12107878604565769208

/-! ## A239815.P6994853642776985795

`A239819(A055998(n+2))`
-/

namespace A239815.P6994853642776985795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (A055998 (n + 2)).toNat

end

end A239815.P6994853642776985795

/-! ## A239815.P2851108188848975317

`A239819(A155212(n)+5)`
-/

namespace A239815.P2851108188848975317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (A155212 n + 5).toNat

end

end A239815.P2851108188848975317

/-! ## A239815.P7375570817915930717

`A239819(eq[3, A193592(n)])`
-/

namespace A239815.P7375570817915930717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239815.P7375570817915930717

/-! ## A239815.P12723723025357883387

`A239819(A052905(n+1)+2)`
-/

namespace A239815.P12723723025357883387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (A052905 (n + 1) + 2).toNat

end

end A239815.P12723723025357883387

/-!
# A239816: Number of nX5 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it, modulo 4.

The programs for A239816, there is no canonical definition to state claims against.
-/

/-! ## A239816.P10327763076151217289

`A239819(Δ[A264443(n)])`
-/

namespace A239816.P10327763076151217289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (f1 (n + 1) - f1 n).toNat

end

end A239816.P10327763076151217289

/-! ## A239816.P15179250001862946303

`A239819(A046691(n+3))`
-/

namespace A239816.P15179250001862946303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (A046691 (n + 3)).toNat

end

end A239816.P15179250001862946303

/-! ## A239816.P2031910060519778246

`A239819(A056115(n)+11)`
-/

namespace A239816.P2031910060519778246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (A056115 n + 11).toNat

end

end A239816.P2031910060519778246

/-! ## A239816.P8813547814930718826

`A239819(eq[4, A193592(n)])`
-/

namespace A239816.P8813547814930718826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239816.P8813547814930718826

/-! ## A239816.P9515225361265849960

`A239819(Δ[A023545(n+1)])`
-/

namespace A239816.P9515225361265849960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (f1 (n + 1) - f1 n).toNat

end

end A239816.P9515225361265849960

/-!
# A239817: Number of n X 6 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it, modulo 4.

The programs for A239817, there is no canonical definition to state claims against.
-/

/-! ## A239817.P5834337126008251528

`A239819(A052905(n+3))`
-/

namespace A239817.P5834337126008251528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (A052905 (n + 3)).toNat

end

end A239817.P5834337126008251528

/-! ## A239817.P4743594972753448229

`A239819(eq[3, A219347(n)])`
-/

namespace A239817.P4743594972753448229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239817.P4743594972753448229

/-! ## A239817.P16516996925583975598

`A239819(eq[5, A193592(n)])`
-/

namespace A239817.P16516996925583975598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239817.P16516996925583975598

/-! ## A239817.P2492319326256583462

`A239819(eq[8, A258709(n)])`
-/

namespace A239817.P2492319326256583462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239817.P2492319326256583462

/-! ## A239817.P14085765398972029974

`A239819(A055999(n+3)+1)`
-/

namespace A239817.P14085765398972029974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (A055999 (n + 3) + 1).toNat

end

end A239817.P14085765398972029974

/-!
# A239818: Number of nX7 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it, modulo 4.

The programs for A239818, there is no canonical definition to state claims against.
-/

/-! ## A239818.P1306309119411730847

`A239819(eq[6, A193592(n)])`
-/

namespace A239818.P1306309119411730847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239818.P1306309119411730847

/-! ## A239818.P2329954907115566597

`A239819(eq[2, A219347(n)-2])`
-/

namespace A239818.P2329954907115566597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239818.P2329954907115566597

/-! ## A239818.P9844240046764274835

`A239819(eq[10, A185782(n+1)])`
-/

namespace A239818.P9844240046764274835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239818.P9844240046764274835

/-!
# A239820: Number of 2Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it, modulo 4.

The programs for A239820, there is no canonical definition to state claims against.
-/

/-! ## A239820.P3442312102104736630

`A239819(∑[n+1]+2)`
-/

namespace A239820.P3442312102104736630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A239820.P3442312102104736630

/-! ## A239820.P11232603200729620531

`record[A239819(A133263(floor(n/(xor(n, n+1)+1))+1))]`
-/

namespace A239820.P11232603200729620531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (A133263 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239820.P11232603200729620531

/-! ## A239820.P15624477567818943355

`A000034(2*n)*A239819(A133263(n+1))`
-/

namespace A239820.P15624477567818943355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A239819 (A133263 (n + 1)).toNat

end

end A239820.P15624477567818943355

/-! ## A239820.P8045001235688853076

`A239819(A133263(n+1))%A005567(2*n)`
-/

namespace A239820.P8045001235688853076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239819 (A133263 (n + 1)).toNat) (A005567 (2 * n))

end

end A239820.P8045001235688853076

/-! ## A239820.P12115982432233854224

`A239819(A133263(n+1))+A035363(2*n+1)`
-/

namespace A239820.P12115982432233854224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (A133263 (n + 1)).toNat + A035363 (2 * n + 1)

end

end A239820.P12115982432233854224

/-!
# A239821: Number of 3Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it, modulo 4.

The programs for A239821, there is no canonical definition to state claims against.
-/

/-! ## A239821.P1265403105732547274

`A239819(∑[n+2]+4)`
-/

namespace A239821.P1265403105732547274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A239821.P1265403105732547274

/-! ## A239821.P15076249277991897823

`or(A000007(n), A239819(A167614(n+1)))`
-/

namespace A239821.P15076249277991897823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A239819 (A167614 (n + 1)).toNat)

end

end A239821.P15076249277991897823

/-! ## A239821.P11544946340199211220

`or(A000038(n), A239819(A167614(n+1)))`
-/

namespace A239821.P11544946340199211220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A239819 (A167614 (n + 1)).toNat)

end

end A239821.P11544946340199211220

/-! ## A239821.P16947036158984975949

`A239819(A167614(n+1))+A230571(n+1)`
-/

namespace A239821.P16947036158984975949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (A167614 (n + 1)).toNat + A230571 (n + 1)

end

end A239821.P16947036158984975949

/-! ## A239821.P2523711914488805418

`A239819(A167614(n+1))+A008683(A017617(n))`
-/

namespace A239821.P2523711914488805418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (A167614 (n + 1)).toNat + A008683 (A017617 n).toNat

end

end A239821.P2523711914488805418

/-!
# A239822: Number of 4Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it, modulo 4.

The programs for A239822, there is no canonical definition to state claims against.
-/

/-! ## A239822.P3078628660934638790

`A239819(∑[n+3]+7)`
-/

namespace A239822.P3078628660934638790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A239822.P3078628660934638790

/-! ## A239822.P7931414598851476120

`and(-1, A239819(A055999(n)+10))`
-/

namespace A239822.P7931414598851476120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A239819 (A055999 n + 10).toNat)

end

end A239822.P7931414598851476120

/-!
# A239823: Number of 5Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it, modulo 4.

The programs for A239823, there is no canonical definition to state claims against.
-/

/-! ## A239823.P15530212337527580189

`A239819(A155212(n)+13)`
-/

namespace A239823.P15530212337527580189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (A155212 n + 13).toNat

end

end A239823.P15530212337527580189

/-! ## A239823.P11667344678834757825

`A239819(A056000(n)+15)`
-/

namespace A239823.P11667344678834757825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (A056000 n + 15).toNat

end

end A239823.P11667344678834757825

/-! ## A239823.P11261494806073840321

`A239819(eq[7, A066657(n)])`
-/

namespace A239823.P11261494806073840321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239823.P11261494806073840321

/-! ## A239823.P4922362192497630668

`A239819(A166136(n+3)-1)`
-/

namespace A239823.P4922362192497630668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (A166136 (n + 3) - 1).toNat

end

end A239823.P4922362192497630668

/-! ## A239823.P18019306023932559475

`A239819(eq[6, A131818(n+1)])`
-/

namespace A239823.P18019306023932559475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239823.P18019306023932559475

/-!
# A239824: Number of 6Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it, modulo 4.

The programs for A239824, there is no canonical definition to state claims against.
-/

/-! ## A239824.P3127320530586507536

`A239819(A056115(n)+21)`
-/

namespace A239824.P3127320530586507536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (A056115 n + 21).toNat

end

end A239824.P3127320530586507536

/-! ## A239824.P13644797354678529922

`A239819(A141214(n+2)+9)`
-/

namespace A239824.P13644797354678529922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (A141214 (n + 2) + 9).toNat

end

end A239824.P13644797354678529922

/-! ## A239824.P7951300782352937146

`A239819(A161680(n+6)+6)`
-/

namespace A239824.P7951300782352937146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (A161680 (n + 6) + 6).toNat

end

end A239824.P7951300782352937146

/-! ## A239824.P14600010374435021027

`A239819(eq[7, A131818(n+1)])`
-/

namespace A239824.P14600010374435021027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239824.P14600010374435021027

/-! ## A239824.P1943403587363300808

`A239819(A000096(n+5)+1-n)`
-/

namespace A239824.P1943403587363300808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (A000096 (n + 5) + (1 - (n : ℤ))).toNat

end

end A239824.P1943403587363300808

/-!
# A239825: Number of 7Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it, modulo 4.

The programs for A239825, there is no canonical definition to state claims against.
-/

/-! ## A239825.P12828647133872293855

`A239819(eq[11, A066657(n)])`
-/

namespace A239825.P12828647133872293855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239825.P12828647133872293855

/-! ## A239825.P11059518278196121479

`A239819(eq[8, A131818(n+1)])`
-/

namespace A239825.P11059518278196121479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239819 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239825.P11059518278196121479

/-!
# A239826: Sum of divisors of n that are also suffixes of n in binary representation.

The programs for A239826, there is no canonical definition to state claims against.
-/

/-! ## A239826.P625538253924880519

`(A175371(n)+n)%(2^A001222(n+1))+char[A317784(n+4)]+n+1`
-/

namespace A239826.P625538253924880519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317784 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175371 n + (n : ℤ)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A001222 (n + 1) : ℤ))) + (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (n + 1) : ℕ) : ℤ)

end

end A239826.P625538253924880519

/-! ## A239826.P12037393092241126678

`A326066(n+1)+A302052(A000079(n))`
-/

namespace A239826.P12037393092241126678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326066 (n + 1) + A302052 (A000079 n).toNat

end

end A239826.P12037393092241126678

/-! ## A239826.P3052367725645278946

`A326066(n+1)+A000035(A033991(3*n+1))`
-/

namespace A239826.P3052367725645278946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326066 (n + 1) + A000035 (A033991 (3 * n + 1)).toNat

end

end A239826.P3052367725645278946

/-! ## A239826.P17506308419235382420

`A131577(A345221(n+1))+A000005(A000079(n))`
-/

namespace A239826.P17506308419235382420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A345221 (n + 1)).toNat + A000005 (A000079 n).toNat

end

end A239826.P17506308419235382420

/-! ## A239826.P15562313606181884931

`A326066(n+1)+A059841(A204094(n))`
-/

namespace A239826.P15562313606181884931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326066 (n + 1) + A059841 (A204094 n).toNat

end

end A239826.P15562313606181884931

/-!
# A239827: Cyclops numbers whose squares are cyclops numbers.

The programs for A239827, there is no canonical definition to state claims against.
-/

/-! ## A239827.P17587037039342679401

`sqrt(A239828(n+1))`
-/

namespace A239827.P17587037039342679401
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A239828 (n + 1) : ℝ)

end

end A239827.P17587037039342679401

/-! ## A239827.P5686182268262239520

`A239828(n+1)^(A076831(Δ[A004526(n)])/2)`
-/

namespace A239827.P5686182268262239520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A239828 (n + 1) : ℝ) ^ ((A076831 (f1 (n + 1) - f1 n).toNat : ℚ) / 2 : ℝ)

end

end A239827.P5686182268262239520

/-! ## A239827.P4869010652705696791

`A239828(n+1)^2^A309873(A016825(n))`
-/

namespace A239827.P4869010652705696791
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A239828 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A309873 (A016825 n).toNat : ℤ) : ℝ)

end

end A239827.P4869010652705696791

/-! ## A239827.P8251567274928309228

`A239828(n+1)^(1/A000005(A001359(n+1)))`
-/

namespace A239827.P8251567274928309228
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A239828 (n + 1) : ℝ) ^ (1 / (A000005 (A001359 (n + 1)).toNat : ℚ) : ℝ)

end

end A239827.P8251567274928309228

/-! ## A239827.P779587832503162107

`∩[A134808(n+1), A239589(n+1)]`
-/

namespace A239827.P779587832503162107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239827.P779587832503162107

/-! ## A239827.P6887918887697584755

`A239828(n+1)^(1/A178815(n+1))`
-/

namespace A239827.P6887918887697584755
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A239828 (n + 1) : ℝ) ^ (1 / (A178815 (n + 1) : ℚ) : ℝ)

end

end A239827.P6887918887697584755

/-!
# A239828: Cyclops numbers which are squares of cyclops numbers.

The programs for A239828, there is no canonical definition to state claims against.
-/

/-! ## A239828.P3911447280041529888

`A239827(n+1)²`
-/

namespace A239828.P3911447280041529888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239827 (n + 1) ^ 2

end

end A239828.P3911447280041529888

/-! ## A239828.P4204914924974817635

`A239827(n+1)^(2%A033241(n+1))`
-/

namespace A239828.P4204914924974817635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239827 (n + 1) : ℚ) ^ (Int.tmod 2 (A033241 (n + 1)) : ℤ)

end

end A239828.P4204914924974817635

/-! ## A239828.P5703807569137380524

`A239827(n+1)^A000040(gcd(n, n+1))`
-/

namespace A239828.P5703807569137380524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239827 (n + 1) : ℚ) ^ (A000040 (Nat.gcd n (n + 1)) : ℤ)

end

end A239828.P5703807569137380524

/-! ## A239828.P16579938839591468791

`A239827(n+1)%A017478(n)*A239827(n+1)`
-/

namespace A239828.P16579938839591468791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239827 (n + 1)) (A017478 n) * A239827 (n + 1)

end

end A239828.P16579938839591468791

/-! ## A239828.P14030771065157120975

`A239827(A052938(2*n))*A239827(n+1)`
-/

namespace A239828.P14030771065157120975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239827 (A052938 (2 * n)).toNat * A239827 (n + 1)

end

end A239828.P14030771065157120975

/-! ## A239828.P6995374635476273668

`A239827(n+1)^A055396(A016945(n))`
-/

namespace A239828.P6995374635476273668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239827 (n + 1) : ℚ) ^ (A055396 (A016945 n).toNat : ℤ)

end

end A239828.P6995374635476273668

/-! ## A239828.P10504946495512685181

`A239827(n+1)^A000005(A239879(n+1))`
-/

namespace A239828.P10504946495512685181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239827 (n + 1) : ℚ) ^ (A000005 (A239879 (n + 1)).toNat : ℤ)

end

end A239828.P10504946495512685181

/-! ## A239828.P4810577400649407074

`A239827(n+1)^p?[A239866(n+1)]`
-/

namespace A239828.P4810577400649407074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239866 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239827 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A239828.P4810577400649407074

/-! ## A239828.P11974258938420669087

`∩[A134808(n+1), A239589(n+1)]²`
-/

namespace A239828.P11974258938420669087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A239828.P11974258938420669087

/-!
# A239829: Triangular array: T(n,k) = number of partitions of 2n - 1 that have alternating sum 2k - 1.

The programs for A239829, there is no canonical definition to state claims against.
-/

/-! ## A239829.P18313449274515661108

`A103919(A185869(n+1))`
-/

namespace A239829.P18313449274515661108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 (A185869 (n + 1)).toNat

end

end A239829.P18313449274515661108

/-! ## A239829.P18427299170548092618

`A103919(A185870(n+1)-1)`
-/

namespace A239829.P18427299170548092618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 (A185870 (n + 1) - 1).toNat

end

end A239829.P18427299170548092618

/-! ## A239829.P17920431665855124136

`A103919(A061579(n)+A016789(n))`
-/

namespace A239829.P17920431665855124136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 (A061579 n + A016789 n).toNat

end

end A239829.P17920431665855124136

/-! ## A239829.P16057376713885930169

`A103919(A114327(n)+A016825(n))`
-/

namespace A239829.P16057376713885930169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 (A114327 n + A016825 n).toNat

end

end A239829.P16057376713885930169

/-! ## A239829.P6839509446426767054

`A103919(A038722(n+1)+A016777(n))`
-/

namespace A239829.P6839509446426767054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 (A038722 (n + 1) + A016777 n).toNat

end

end A239829.P6839509446426767054

/-!
# A239830: Triangular array: T(n,k) = number of partitions of 2n that have alternating sum 2k, with T(0,0) = 1 for convenience.

The programs for A239830, there is no canonical definition to state claims against.
-/

/-! ## A239830.P1579657657874606040

`A103919(∑[char[∑[n+1]]]²+n+n)`
-/

namespace A239830.P1579657657874606040
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + n + n)

end

end A239830.P1579657657874606040

/-! ## A239830.P7454165951445491737

`A344651(lt[(ceil(sqrt(n))²-n)², n]-1)`
-/

namespace A239830.P7454165951445491737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344651 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - 1)

end

end A239830.P7454165951445491737

/-! ## A239830.P10854131653966493568

`A344651(A061885(n))`
-/

namespace A239830.P10854131653966493568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344651 (A061885 n).toNat

end

end A239830.P10854131653966493568

/-! ## A239830.P626464380616420715

`A344651(A057944(n)+n)`
-/

namespace A239830.P626464380616420715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344651 (A057944 n + (n : ℤ)).toNat

end

end A239830.P626464380616420715

/-! ## A239830.P8080983417091419861

`A344651(comp[A064801(n+1)])`
-/

namespace A239830.P8080983417091419861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344651 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A239830.P8080983417091419861

/-!
# A239831: Floor(7n^2/2) + floor(5n/2) + floor(3n/7).

The programs for A239831, the canonical program `A239831.P8383803256722481991` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239831 has offset 1).

The definition of A239831 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(7*(n+1)²/2)+floor(5*(n+1)/2)+floor(3*(n+1)/7)` (program `A239831.P8383803256722481991`, by `A239831.P8383803256722481991.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A239831.P8383803256722481991

`floor(7*(n+1)²/2)+floor(5*(n+1)/2)+floor(3*(n+1)/7)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A239831

/-- `floor(7*(n+1)²/2)+floor(5*(n+1)/2)+floor(3*(n+1)/7)` -/
def P8383803256722481991.Spec : Prop :=
  ∀ n, P8383803256722481991.a n = A239831 (n + 1)

theorem P8383803256722481991.correct : P8383803256722481991.Spec := by
  intro n
  simp only [A239831, Nat.add_sub_cancel]

end A239831

/-! ## A239831.P8751149633476062781

`A131507(∑[∑[and(1, n)+2]]²)`
-/

namespace A239831.P8751149633476062781
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A239831.P8751149633476062781

namespace A239831

/-- `A131507(∑[∑[and(1, n)+2]]²)` -/
def P8751149633476062781.Spec : Prop :=
  ∀ n, P8751149633476062781.a n = A239831 (n + 1)

end A239831

/-! ## A239831.P12046550330609596471

`A241151(6*C(n+2, 2)²+2)`
-/

namespace A239831.P12046550330609596471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241151 (6 * Nat.choose (n + 2) 2 ^ 2 + 2)

end

end A239831.P12046550330609596471

namespace A239831

/-- `A241151(6*C(n+2, 2)²+2)` -/
def P12046550330609596471.Spec : Prop :=
  ∀ n, P12046550330609596471.a n = A239831 (n + 1)

end A239831

/-! ## A239831.P12048099870926061342

`A130271(A162673(n+2))`
-/

namespace A239831.P12048099870926061342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130271 (A162673 (n + 2)).toNat

end

end A239831.P12048099870926061342

namespace A239831

/-- `A130271(A162673(n+2))` -/
def P12048099870926061342.Spec : Prop :=
  ∀ n, P12048099870926061342.a n = A239831 (n + 1)

end A239831

/-!
# A239832: Number of partitions of n having 1 more even part than odd, so that there is an ordering of parts for which the even and odd parts alternate and the first and last terms are even.

The programs for A239832, there is no canonical definition to state claims against.
-/

/-! ## A239832.P8117897262051473618

`A239833(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A239832.P8117897262051473618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A239833 (n - 1) - a (n - 1)

end

end A239832.P8117897262051473618

/-! ## A239832.P9658159980671952201

`A108950(n+1)-A130780(n)`
-/

namespace A239832.P9658159980671952201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108950 (n + 1) - A130780 n

end

end A239832.P9658159980671952201

/-! ## A239832.P8177377437619543009

`Δ[A130780(n)]-A045931(n+1)`
-/

namespace A239832.P8177377437619543009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A045931 (n + 1)

end

end A239832.P8177377437619543009

/-! ## A239832.P1687215251358139356

`A240010(n+1)-Δ[A239833(n)]`
-/

namespace A239832.P1687215251358139356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240010 (n + 1) - (f1 (n + 1) - f1 n)

end

end A239832.P1687215251358139356

/-! ## A239832.P10498280278044064545

`A240009(A194073(n+1))-Δ[A239833(n)]`
-/

namespace A239832.P10498280278044064545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240009 (A194073 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A239832.P10498280278044064545

/-! ## A239832.P9568675760281346555

`Δ[A130780(n)-A045931(n)]-A045931(n)`
-/

namespace A239832.P9568675760281346555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130780 n - A045931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A045931 n

end

end A239832.P9568675760281346555

/-! ## A239832.P12834245509121608514

`A108950(n+1)+A108949(n)-A000041(n)`
-/

namespace A239832.P12834245509121608514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108950 (n + 1) + (A108949 n - A000041 n)

end

end A239832.P12834245509121608514

/-! ## A239832.P14138479245536107296

`A108950(n+1)-(A338860(n)+A171966(n))`
-/

namespace A239832.P14138479245536107296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108950 (n + 1) - (A338860 n + A171966 n)

end

end A239832.P14138479245536107296

/-! ## A239832.P4463439433290218218

`A000041(n+1)-(A171966(n+1)+A130780(n))`
-/

namespace A239832.P4463439433290218218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A171966 (n + 1) + A130780 n)

end

end A239832.P4463439433290218218

/-! ## A239832.P9475850672937879774

`A130780(n+1)-(A130780(n)+A045931(n+1))`
-/

namespace A239832.P9475850672937879774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130780 (n + 1) - (A130780 n + A045931 (n + 1))

end

end A239832.P9475850672937879774

/-!
# A239833: Number of partitions of n having an ordering of parts in which no parts of equal parity are adjacent and the first and last terms have the same parity.

The programs for A239833, there is no canonical definition to state claims against.
-/

/-! ## A239833.P819922656360659375

`A239832(n)+A239832(n+1)`
-/

namespace A239833.P819922656360659375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239832 n + A239832 (n + 1)

end

end A239833.P819922656360659375

/-! ## A239833.P9686543755989395049

`A239835(n)-A045931(n)`
-/

namespace A239833.P9686543755989395049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239835 n - A045931 n

end

end A239833.P9686543755989395049

/-! ## A239833.P12549320984442190641

`A171967(n)+A239835(n)-A000041(n)`
-/

namespace A239833.P12549320984442190641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171967 n + (A239835 n - A000041 n)

end

end A239833.P12549320984442190641

/-! ## A239833.P10443172639219053248

`A108949(n)+A239835(n)-A171966(n)`
-/

namespace A239833.P10443172639219053248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108949 n + (A239835 n - A171966 n)

end

end A239833.P10443172639219053248

/-! ## A239833.P10789570646635530776

`A108950(n+2)-(A130780(n)+A045931(n+1))`
-/

namespace A239833.P10789570646635530776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108950 (n + 2) - (A130780 n + A045931 (n + 1))

end

end A239833.P10789570646635530776

/-! ## A239833.P6567494502929762503

`A239835(A028310(n))-(A000041(n)-A171967(n))`
-/

namespace A239833.P6567494502929762503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239835 (A028310 n).toNat - (A000041 n - A171967 n)

end

end A239833.P6567494502929762503

/-! ## A239833.P12957535032945558291

`A239835(n)-(A130780(n)+A171966(n)-A000041(n))`
-/

namespace A239833.P12957535032945558291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239835 n - (A130780 n + (A171966 n - A000041 n))

end

end A239833.P12957535032945558291

/-!
# A239835: Number of partitions of n such that the absolute value of the difference between the number of odd parts and the number of even parts is <=1.

The programs for A239835, there is no canonical definition to state claims against.
-/

/-! ## A239835.P16476431246727598558

`A045931(n)+A239833(n)`
-/

namespace A239835.P16476431246727598558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045931 n + A239833 n

end

end A239835.P16476431246727598558

/-! ## A239835.P14307086192996880112

`A239833(n)+A000041(n)-A171967(n)`
-/

namespace A239835.P14307086192996880112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239833 n + (A000041 n - A171967 n)

end

end A239835.P14307086192996880112

/-! ## A239835.P9638536689987622369

`A239833(n)+∑[A002865(n)]-A171967(n)`
-/

namespace A239835.P9638536689987622369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239833 n + (∑ j ∈ Finset.range (n + 1), f1 j - A171967 n)

end

end A239835.P9638536689987622369

/-! ## A239835.P17867600906991202520

`A239833(n)+A130780(n)-(A338860(n)+A108949(n))`
-/

namespace A239835.P17867600906991202520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239833 n + (A130780 n - (A338860 n + A108949 n))

end

end A239835.P17867600906991202520

/-! ## A239835.P8613623548903484117

`A239832(n+1)+A239832(n)+A045931(n)`
-/

namespace A239835.P8613623548903484117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239832 (n + 1) + (A239832 n + A045931 n)

end

end A239835.P8613623548903484117

/-!
# A239836: Number of ordered pairs of permutation functions f,g on a size n set where f(g(g(x))) = g(f(f(x))).

The programs for A239836, there is no canonical definition to state claims against.
-/

/-! ## A239836.P10460603009791745409

`A255525(n)*n!`
-/

namespace A239836.P10460603009791745409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255525 n * (Nat.factorial n : ℤ)

end

end A239836.P10460603009791745409

/-! ## A239836.P4594092056630402246

`A000142(n)*A255525(n)`
-/

namespace A239836.P4594092056630402246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A255525 n

end

end A239836.P4594092056630402246

/-! ## A239836.P15722402378063578200

`A028421(∑[n])*A255525(n)`
-/

namespace A239836.P15722402378063578200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028421 (∑ j ∈ Finset.range (n + 1), f1 j) * A255525 n

end

end A239836.P15722402378063578200

/-! ## A239836.P5941244323175419413

`A047920(∑[n])*A255525(n)`
-/

namespace A239836.P5941244323175419413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (∑ j ∈ Finset.range (n + 1), f1 j) * A255525 n

end

end A239836.P5941244323175419413

/-! ## A239836.P10800876950680315074

`A000142(n)*A007895(A007097(n))`
-/

namespace A239836.P10800876950680315074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A007895 (A007097 n).toNat

end

end A239836.P10800876950680315074

/-!
# A239837: Number of ordered pairs of permutation functions on n elements satisfying f(f(x)) = g(f(g(x))).

The programs for A239837, there is no canonical definition to state claims against.
-/

/-! ## A239837.P2010503507556045121

`n!*A255515(n)`
-/

namespace A239837.P2010503507556045121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A255515 n

end

end A239837.P2010503507556045121

/-! ## A239837.P15715534326353292711

`A000142(n)*A255515(n)`
-/

namespace A239837.P15715534326353292711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A255515 n

end

end A239837.P15715534326353292711

/-! ## A239837.P9681604182768103836

`∏[A028310(n)]*A255515(n)`
-/

namespace A239837.P9681604182768103836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A255515 n

end

end A239837.P9681604182768103836

/-! ## A239837.P15859910257939041789

`∏[A065033(2*n)]*A255515(n)`
-/

namespace A239837.P15859910257939041789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A255515 n

end

end A239837.P15859910257939041789

/-! ## A239837.P576120159516036921

`A255515(n)*A273730(A000096(n))`
-/

namespace A239837.P576120159516036921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255515 n * A273730 (A000096 n).toNat

end

end A239837.P576120159516036921

/-!
# A239838: Number of ordered pairs of permutation functions on n elements where f(f(f(x))) = g(g(g(x))).

The programs for A239838, there is no canonical definition to state claims against.
-/

/-! ## A239838.P6425360946702409346

`n!*A232207(A028310(n))`
-/

namespace A239838.P6425360946702409346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A232207 (A028310 n).toNat

end

end A239838.P6425360946702409346

/-! ## A239838.P789978312428784406

`n!*A232207(A233583(n+1))`
-/

namespace A239838.P789978312428784406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A232207 (A233583 (n + 1)).toNat

end

end A239838.P789978312428784406

/-! ## A239838.P16652856082463013970

`A000142(n)*A232207(A028310(n))`
-/

namespace A239838.P16652856082463013970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A232207 (A028310 n).toNat

end

end A239838.P16652856082463013970

/-! ## A239838.P8195856196496185547

`Δ[A003422(n)]*A232207(A028310(n))`
-/

namespace A239838.P8195856196496185547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A232207 (A028310 n).toNat

end

end A239838.P8195856196496185547

/-! ## A239838.P2301201584641620962

`A000142(n)*A232207(A233583(n+1))`
-/

namespace A239838.P2301201584641620962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A232207 (A233583 (n + 1)).toNat

end

end A239838.P2301201584641620962

/-!
# A239839: Number of ordered pairs of permutation functions on n elements satisfying f(f(f(x))) = g(f(g(x))).

The programs for A239839, there is no canonical definition to state claims against.
-/

/-! ## A239839.P8738561417617754943

`n!*A255516(n)`
-/

namespace A239839.P8738561417617754943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A255516 n

end

end A239839.P8738561417617754943

/-! ## A239839.P11414326189207317443

`A000142(n)*A255516(n)`
-/

namespace A239839.P11414326189207317443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A255516 n

end

end A239839.P11414326189207317443

/-! ## A239839.P9936633548857268677

`Δ[A003422(n)]*A255516(n)`
-/

namespace A239839.P9936633548857268677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A255516 n

end

end A239839.P9936633548857268677

/-! ## A239839.P6816600359031060271

`∏[A028310(n)]*A255516(n)`
-/

namespace A239839.P6816600359031060271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A255516 n

end

end A239839.P6816600359031060271

/-!
# A239840: Number of ordered pairs of permutation functions (f,g) on n elements satisfying f(x) = f(g(g(x))).

The programs for A239840, the canonical program `A239840.P16672039693929608220` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239840 has offset 0).

The definition of A239840 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239840.P8233188474081657896

`n*a(n-1)+n*(n-1)²*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A239840.P8233188474081657896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * a (n - 1) + (n : ℤ) * ((n : ℤ) - 1) ^ 2 * a (n - 2)

end

end A239840.P8233188474081657896

namespace A239840

/-- `n*a(n-1)+n*(n-1)²*a(n-2)` -/
def P8233188474081657896.Spec : Prop :=
  ∀ n, P8233188474081657896.a n = A239840 n

end A239840

/-! ## A239840.P16672039693929608220

`n!*A000085(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A239840

/-- `n!*A000085(n)` -/
def P16672039693929608220.Spec : Prop :=
  ∀ n, P16672039693929608220.a n = A239840 n

theorem P16672039693929608220.correct : P16672039693929608220.Spec := by
  intro n
  simp only [A239840]

end A239840

/-! ## A239840.P4579108100022440349

`A000142(n)*A000085(n)`
-/

namespace A239840.P4579108100022440349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000085 n

end

end A239840.P4579108100022440349

namespace A239840

/-- `A000142(n)*A000085(n)` -/
def P4579108100022440349.Spec : Prop :=
  ∀ n, P4579108100022440349.a n = A239840 n

end A239840

/-! ## A239840.P5906935296052401194

`sqrt(A111883(n))*n!`
-/

namespace A239840.P5906935296052401194
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A111883 n : ℝ) * (Nat.factorial n : ℝ)

end

end A239840.P5906935296052401194

namespace A239840

/-- `sqrt(A111883(n))*n!` -/
def P5906935296052401194.Spec : Prop :=
  ∀ n, P5906935296052401194.a n = (A239840 n : ℝ)

end A239840

/-! ## A239840.P1410542829209975623

`n!*A099020(∑[n])`
-/

namespace A239840.P1410542829209975623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A099020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A239840.P1410542829209975623

namespace A239840

/-- `n!*A099020(∑[n])` -/
def P1410542829209975623.Spec : Prop :=
  ∀ n, P1410542829209975623.a n = A239840 n

end A239840

/-! ## A239840.P1970427829577241741

`n!*A182222(∑[n])`
-/

namespace A239840.P1970427829577241741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A182222 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A239840.P1970427829577241741

namespace A239840

/-- `n!*A182222(∑[n])` -/
def P1970427829577241741.Spec : Prop :=
  ∀ n, P1970427829577241741.a n = A239840 n

end A239840

/-! ## A239840.P9274468213305790795

`A013989(n)/(n+1)*n!`
-/

namespace A239840.P9274468213305790795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013989 n : ℚ) / (n + 1 : ℚ) * (Nat.factorial n : ℚ)

end

end A239840.P9274468213305790795

namespace A239840

/-- `A013989(n)/(n+1)*n!` -/
def P9274468213305790795.Spec : Prop :=
  ∀ n, P9274468213305790795.a n = (A239840 n : ℚ)

end A239840

/-! ## A239840.P11411498057229492475

`n!*A210860(∑[abs(1-n)])`
-/

namespace A239840.P11411498057229492475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A210860 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A239840.P11411498057229492475

namespace A239840

/-- `n!*A210860(∑[abs(1-n)])` -/
def P11411498057229492475.Spec : Prop :=
  ∀ n, P11411498057229492475.a n = A239840 n

end A239840

/-! ## A239840.P16085208791368351695

`Δ[A001189(n+1)]/(n+1)*n!`
-/

namespace A239840.P16085208791368351695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001189 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ) * (Nat.factorial n : ℚ)

end

end A239840.P16085208791368351695

namespace A239840

/-- `Δ[A001189(n+1)]/(n+1)*n!` -/
def P16085208791368351695.Spec : Prop :=
  ∀ n, P16085208791368351695.a n = (A239840 n : ℚ)

end A239840

/-!
# A239841: Ordered pairs of permutation functions on n elements where f(g(g(x))) = g(g(f(x))).

The programs for A239841, there is no canonical definition to state claims against.
-/

/-! ## A239841.P8909328896875067550

`A000142(n)*A082733(A028310(n))`
-/

namespace A239841.P8909328896875067550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A082733 (A028310 n).toNat

end

end A239841.P8909328896875067550

/-! ## A239841.P2428176867217538172

`A000142(n)*A082733(A004277(n)-n)`
-/

namespace A239841.P2428176867217538172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A082733 (A004277 n - (n : ℤ)).toNat

end

end A239841.P2428176867217538172

/-!
# A239842: Numbers k such that the Eisenstein integer ((1-ω)^k+1)/(2-ω) has prime norm, where ω = - 1/2 + sqrt(-3)/2.

The programs for A239842, there is no canonical definition to state claims against.
-/

/-! ## A239842.P12825125745531587545

`A000027(∪[A125743(n+1), A125744(n+1)])`
-/

namespace A239842.P12825125745531587545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125744 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A239842.P12825125745531587545

/-! ## A239842.P9023035373202496532

`A006530(∪[A125743(n+1), A125744(n+1)])`
-/

namespace A239842.P9023035373202496532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125744 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A239842.P9023035373202496532

/-! ## A239842.P10780861640108003446

`A020639(∪[A125743(n+1), A125744(n+1)])`
-/

namespace A239842.P10780861640108003446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125744 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A239842.P10780861640108003446

/-!
# A239843: Number of n X n 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239843, there is no canonical definition to state claims against.
-/

/-! ## A239843.P4418456233288797422

`A239849(∑[4*n]+1)`
-/

namespace A239843.P4418456233288797422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239849 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A239843.P4418456233288797422

/-! ## A239843.P9939685230514513829

`record[A239849(Δ[A235355(n)])]`
-/

namespace A239843.P9939685230514513829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239849 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239843.P9939685230514513829

/-! ## A239843.P17178897641774841249

`record[A239849(A330613(n+1))]`
-/

namespace A239843.P17178897641774841249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239849 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239843.P17178897641774841249

/-!
# A239844: Number of n X 2 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239844, the canonical program `A239844.P10332477586738375679` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239844 has offset 1).

The definition of A239844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239844.P10332477586738375679

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=3, a(1)=8, a(2)=17, a(3)=35, a(4)=64, a(5)=109, a(6)=176`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A239844

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P10332477586738375679.Spec : Prop :=
  ∀ n, P10332477586738375679.a n = A239844 (n + 1)

theorem P10332477586738375679.correct : P10332477586738375679.Spec := by
  intro n
  simp only [A239844, Nat.add_sub_cancel]

end A239844

/-! ## A239844.P9891530975667422007

`A139544(n+2)+record[A006522(n)]`
-/

namespace A239844.P9891530975667422007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139544 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239844.P9891530975667422007

namespace A239844

/-- `A139544(n+2)+record[A006522(n)]` -/
def P9891530975667422007.Spec : Prop :=
  ∀ n, P9891530975667422007.a n = A239844 (n + 1)

end A239844

/-! ## A239844.P10466347316779714286

`record[A006522(n)]+2*A004280(n+1)`
-/

namespace A239844.P10466347316779714286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2 * A004280 (n + 1)

end

end A239844.P10466347316779714286

namespace A239844

/-- `record[A006522(n)]+2*A004280(n+1)` -/
def P10466347316779714286.Spec : Prop :=
  ∀ n, P10466347316779714286.a n = A239844 (n + 1)

end A239844

/-! ## A239844.P14551571065811996571

`A005843(A004280(n+1))+record[A006522(n)]`
-/

namespace A239844.P14551571065811996571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A004280 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239844.P14551571065811996571

namespace A239844

/-- `A005843(A004280(n+1))+record[A006522(n)]` -/
def P14551571065811996571.Spec : Prop :=
  ∀ n, P14551571065811996571.a n = A239844 (n + 1)

end A239844

/-! ## A239844.P5575708045833686403

`A239849(∑[n+1]+2)`
-/

namespace A239844.P5575708045833686403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239849 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A239844.P5575708045833686403

namespace A239844

/-- `A239849(∑[n+1]+2)` -/
def P5575708045833686403.Spec : Prop :=
  ∀ n, P5575708045833686403.a n = A239844 (n + 1)

end A239844

/-!
# A239845: Number of nX3 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239845, there is no canonical definition to state claims against.
-/

/-! ## A239845.P864726477370517328

`A239849(∑[n+2]+4)`
-/

namespace A239845.P864726477370517328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239849 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A239845.P864726477370517328

/-! ## A239845.P14419069707799133308

`record[A239849(n+4)/A126331(n)]`
-/

namespace A239845.P14419069707799133308
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239849 (n + 4) : ℚ) / (A126331 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239845.P14419069707799133308

/-! ## A239845.P1279742443684682525

`A239849(A167614(n+1))/(2*C(n, 59))!`
-/

namespace A239845.P1279742443684682525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239849 (A167614 (n + 1)).toNat : ℚ) / (Nat.factorial (2 * Nat.choose n 59) : ℚ)

end

end A239845.P1279742443684682525

/-! ## A239845.P2832350867455134330

`A239849(A167614(n+1))+A011745(n)`
-/

namespace A239845.P2832350867455134330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239849 (A167614 (n + 1)).toNat + A011745 n

end

end A239845.P2832350867455134330

/-! ## A239845.P7726165090272720595

`A239849(A167614(n+1))+A025438(n)`
-/

namespace A239845.P7726165090272720595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239849 (A167614 (n + 1)).toNat + A025438 n

end

end A239845.P7726165090272720595

/-!
# A239846: Number of nX4 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239846, there is no canonical definition to state claims against.
-/

/-! ## A239846.P6549194792466080340

`A239849(A374004(n+1))`
-/

namespace A239846.P6549194792466080340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239849 (A374004 (n + 1)).toNat

end

end A239846.P6549194792466080340

/-! ## A239846.P16823602879874726220

`A239849(A141214(n)+7)`
-/

namespace A239846.P16823602879874726220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239849 (A141214 n + 7).toNat

end

end A239846.P16823602879874726220

/-! ## A239846.P16077546815776542724

`A239849(A052905(n)+9)`
-/

namespace A239846.P16077546815776542724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239849 (A052905 n + 9).toNat

end

end A239846.P16077546815776542724

/-! ## A239846.P12784262594425743007

`A239849(A055999(n)+10)`
-/

namespace A239846.P12784262594425743007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239849 (A055999 n + 10).toNat

end

end A239846.P12784262594425743007

/-! ## A239846.P17724698532613664677

`A239849(eq[5, A066657(n)])`
-/

namespace A239846.P17724698532613664677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239846.P17724698532613664677

/-!
# A239847: Number of nX5 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239847, there is no canonical definition to state claims against.
-/

/-! ## A239847.P1655745127645808447

`A239849(A374005(n+1))`
-/

namespace A239847.P1655745127645808447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239849 (A374005 (n + 1)).toNat

end

end A239847.P1655745127645808447

/-! ## A239847.P675339068100160320

`A239849(A167499(n+3))`
-/

namespace A239847.P675339068100160320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239849 (A167499 (n + 3)).toNat

end

end A239847.P675339068100160320

/-! ## A239847.P11953045471103164873

`A239849(A155212(n)+13)`
-/

namespace A239847.P11953045471103164873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239849 (A155212 n + 13).toNat

end

end A239847.P11953045471103164873

/-! ## A239847.P17968729976894121403

`A239849(A056000(n)+15)`
-/

namespace A239847.P17968729976894121403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239849 (A056000 n + 15).toNat

end

end A239847.P17968729976894121403

/-! ## A239847.P16389518571451615753

`A239849(eq[7, A066657(n)])`
-/

namespace A239847.P16389518571451615753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239849 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239847.P16389518571451615753

/-!
# A239848: Number of nX6 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239848, there is no canonical definition to state claims against.
-/

/-! ## A239848.P10323239158752898770

`A239849(∑[n+5]+16)`
-/

namespace A239848.P10323239158752898770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239849 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A239848.P10323239158752898770

/-!
# A239849: T(n,k) = Number of n X k 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A239849, there is no canonical definition to state claims against.
-/

/-! ## A239849.P4366216792069262312

`A160755(A227165(n+1))`
-/

namespace A239849.P4366216792069262312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A227165 (n + 1)).toNat

end

end A239849.P4366216792069262312

/-! ## A239849.P1803192113565402066

`A347644(A202560(n+1))`
-/

namespace A239849.P1803192113565402066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347644 (A202560 (n + 1)).toNat

end

end A239849.P1803192113565402066

/-! ## A239849.P13036237117849183063

`A014132(A157221(n)+n)-n`
-/

namespace A239849.P13036237117849183063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (A157221 n + (n : ℤ)).toNat - (n : ℤ)

end

end A239849.P13036237117849183063

/-! ## A239849.P13791551734629355632

`A226537(A156353(n+1)-1)+1`
-/

namespace A239849.P13791551734629355632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226537 (A156353 (n + 1) - 1).toNat + 1

end

end A239849.P13791551734629355632

/-! ## A239849.P5899059810723250069

`A003056(n)+A000037(A157221(n))`
-/

namespace A239849.P5899059810723250069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + A000037 (A157221 n).toNat

end

end A239849.P5899059810723250069

/-!
# A239850: Number of n X n 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A239850, there is no canonical definition to state claims against.
-/

/-! ## A239850.P3286121995442516131

`A239858(∑[4*n]+1)`
-/

namespace A239850.P3286121995442516131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A239850.P3286121995442516131

/-! ## A239850.P6335562397075781157

`gcd(30, (n+1)/gcd(n+1, ∏{p}[n+1, #]^3))²²*A239858(n²+(n+1)²)`
-/

namespace A239850.P6335562397075781157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Int.gcd 30 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd (n + 1) ((∏ p ∈ Nat.primeFactors (f1 n), p) ^ 3) : ℚ))) ^ 2) ^ 2 : ℤ) * A239858 (n ^ 2 + (n + 1) ^ 2)

end

end A239850.P6335562397075781157

/-! ## A239850.P3475759724178241894

`record[A239858(A330613(n+1))]`
-/

namespace A239850.P3475759724178241894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239850.P3475759724178241894

/-! ## A239850.P13143820188101030544

`or(char[1], A239858(A001844(n)))`
-/

namespace A239850.P13143820188101030544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A239858 (A001844 n).toNat)

end

end A239850.P13143820188101030544

/-!
# A239851: Number of n X 1 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A239851, the canonical program `A239851.P14996319206920637390` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239851 has offset 1).

The definition of A239851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 548 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239851.P18317621940561289716

`ogf((2+2x+2x^2)/(1-x^2-2x^3))`
-/

namespace A239851.P18317621940561289716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, 2] [1, 0, -1, -2] n

end

end A239851.P18317621940561289716

namespace A239851

/-- `ogf((2+2x+2x^2)/(1-x^2-2x^3))` -/
def P18317621940561289716.Spec : Prop :=
  ∀ n, P18317621940561289716.a n = A239851 (n + 1)

end A239851

/-! ## A239851.P14996319206920637390

`a(n-2)+2*a(n-3)` with `a(0)=2, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A239851

/-- `a(n-2)+2*a(n-3)` -/
def P14996319206920637390.Spec : Prop :=
  ∀ n, (P14996319206920637390.a n : ℤ) = A239851 (n + 1)

theorem P14996319206920637390.correct : P14996319206920637390.Spec := by
  intro n
  simp only [A239851, Nat.add_sub_cancel]

end A239851

/-! ## A239851.P10988679472410417878

`a(n-2)+a(n-3)+a(n-3)` with `a(0)=2, a(1)=2, a(2)=4`
-/

namespace A239851.P10988679472410417878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 4] fun n a =>
  a (n - 2) + (a (n - 3) + a (n - 3))

end

end A239851.P10988679472410417878

namespace A239851

/-- `a(n-2)+a(n-3)+a(n-3)` -/
def P10988679472410417878.Spec : Prop :=
  ∀ n, (P10988679472410417878.a n : ℤ) = A239851 (n + 1)

theorem P10988679472410417878.correct : P10988679472410417878.Spec := by
  intro n
  simp only [A239851, Nat.add_sub_cancel, A239851.P10988679472410417878.a, A239851.P14996319206920637390.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A239851

/-! ## A239851.P14536859905674281368

`abs(Δ[Δ[a(n-2)-2*a(n-3)]])` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A239851.P14536859905674281368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f2 =>
  f2 (n - 2) - 2 * f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A239851.P14536859905674281368

namespace A239851

/-- `abs(Δ[Δ[a(n-2)-2*a(n-3)]])` -/
def P14536859905674281368.Spec : Prop :=
  ∀ n, P14536859905674281368.a n = A239851 (n + 1)

end A239851

/-! ## A239851.P8199042965084038114

`3*a(n-3)-(a(n-3)-a(n-2))` with `a(0)=2, a(1)=2, a(2)=4`
-/

namespace A239851.P8199042965084038114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 4] fun n a =>
  3 * a (n - 3) - (a (n - 3) - a (n - 2))

end

end A239851.P8199042965084038114

namespace A239851

/-- `3*a(n-3)-(a(n-3)-a(n-2))` -/
def P8199042965084038114.Spec : Prop :=
  ∀ n, P8199042965084038114.a n = A239851 (n + 1)

end A239851

/-! ## A239851.P13092554057570947231

`2*A159288(n)`
-/

namespace A239851.P13092554057570947231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159288 n

end

end A239851.P13092554057570947231

namespace A239851

/-- `2*A159288(n)` -/
def P13092554057570947231.Spec : Prop :=
  ∀ n, P13092554057570947231.a n = A239851 (n + 1)

end A239851

/-! ## A239851.P4313856628248752532

`abs(Δ[A078028(n)])`
-/

namespace A239851.P4313856628248752532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A239851.P4313856628248752532

namespace A239851

/-- `abs(Δ[A078028(n)])` -/
def P4313856628248752532.Spec : Prop :=
  ∀ n, P4313856628248752532.a n = A239851 (n + 1)

end A239851

/-! ## A239851.P6628944966236064578

`A159288(n+1)+A052947(n)`
-/

namespace A239851.P6628944966236064578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159288 (n + 1) + A052947 n

end

end A239851.P6628944966236064578

namespace A239851

/-- `A159288(n+1)+A052947(n)` -/
def P6628944966236064578.Spec : Prop :=
  ∀ n, P6628944966236064578.a n = A239851 (n + 1)

end A239851

/-! ## A239851.P14978374951265672399

`A107853(n+2)+A107852(n)`
-/

namespace A239851.P14978374951265672399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107853 (n + 2) + A107852 n

end

end A239851.P14978374951265672399

namespace A239851

/-- `A107853(n+2)+A107852(n)` -/
def P14978374951265672399.Spec : Prop :=
  ∀ n, P14978374951265672399.a n = A239851 (n + 1)

end A239851

/-! ## A239851.P16173677274348618373

`A159285(n+1)-A078026(n)`
-/

namespace A239851.P16173677274348618373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159285 (n + 1) - A078026 n

end

end A239851.P16173677274348618373

namespace A239851

/-- `A159285(n+1)-A078026(n)` -/
def P16173677274348618373.Spec : Prop :=
  ∀ n, P16173677274348618373.a n = A239851 (n + 1)

end A239851

/-! ## A239851.P506193927141599318

`2*(A159284(n)+A052947(n))`
-/

namespace A239851.P506193927141599318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A159284 n + A052947 n)

end

end A239851.P506193927141599318

namespace A239851

/-- `2*(A159284(n)+A052947(n))` -/
def P506193927141599318.Spec : Prop :=
  ∀ n, P506193927141599318.a n = A239851 (n + 1)

end A239851

/-! ## A239851.P8954952565846694777

`abs(A078028(n+1)-A078028(n))`
-/

namespace A239851.P8954952565846694777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078028 (n + 1) - A078028 n|

end

end A239851.P8954952565846694777

namespace A239851

/-- `abs(A078028(n+1)-A078028(n))` -/
def P8954952565846694777.Spec : Prop :=
  ∀ n, P8954952565846694777.a n = A239851 (n + 1)

end A239851

/-! ## A239851.P11311321780515104933

`A159284(n+1)+A159284(n+2)`
-/

namespace A239851.P11311321780515104933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 (n + 1) + A159284 (n + 2)

end

end A239851.P11311321780515104933

namespace A239851

/-- `A159284(n+1)+A159284(n+2)` -/
def P11311321780515104933.Spec : Prop :=
  ∀ n, P11311321780515104933.a n = A239851 (n + 1)

end A239851

/-! ## A239851.P7975005426641478013

`A159288(n+1)+A159287(n+2)`
-/

namespace A239851.P7975005426641478013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159288 (n + 1) + A159287 (n + 2)

end

end A239851.P7975005426641478013

namespace A239851

/-- `A159288(n+1)+A159287(n+2)` -/
def P7975005426641478013.Spec : Prop :=
  ∀ n, P7975005426641478013.a n = A239851 (n + 1)

end A239851

/-! ## A239851.P17894050623624704091

`A159287(n+1)+A052947(n+3)`
-/

namespace A239851.P17894050623624704091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159287 (n + 1) + A052947 (n + 3)

end

end A239851.P17894050623624704091

namespace A239851

/-- `A159287(n+1)+A052947(n+3)` -/
def P17894050623624704091.Spec : Prop :=
  ∀ n, P17894050623624704091.a n = A239851 (n + 1)

end A239851

/-! ## A239851.P9670584793686656449

`A159284(n)+A159286(n)+A159285(n)`
-/

namespace A239851.P9670584793686656449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 n + (A159286 n + A159285 n)

end

end A239851.P9670584793686656449

namespace A239851

/-- `A159284(n)+A159286(n)+A159285(n)` -/
def P9670584793686656449.Spec : Prop :=
  ∀ n, P9670584793686656449.a n = A239851 (n + 1)

end A239851

/-! ## A239851.P8602063555298758842

`A077882(n+1)+A159288(n+1)-A077882(n)`
-/

namespace A239851.P8602063555298758842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077882 (n + 1) + (A159288 (n + 1) - A077882 n)

end

end A239851.P8602063555298758842

namespace A239851

/-- `A077882(n+1)+A159288(n+1)-A077882(n)` -/
def P8602063555298758842.Spec : Prop :=
  ∀ n, P8602063555298758842.a n = A239851 (n + 1)

end A239851

/-! ## A239851.P10256047693416871996

`2*Δ[record[Δ[A103626(n)]]]`
-/

namespace A239851.P10256047693416871996
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103626 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A239851.P10256047693416871996

namespace A239851

/-- `2*Δ[record[Δ[A103626(n)]]]` -/
def P10256047693416871996.Spec : Prop :=
  ∀ n, P10256047693416871996.a n = A239851 (n + 1)

end A239851

/-! ## A239851.P12666890583973409373

`Δ[A103626(4*(n+1)+2)]`
-/

namespace A239851.P12666890583973409373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103626 (4 * (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239851.P12666890583973409373

namespace A239851

/-- `Δ[A103626(4*(n+1)+2)]` -/
def P12666890583973409373.Spec : Prop :=
  ∀ n, P12666890583973409373.a n = A239851 (n + 1)

end A239851

/-! ## A239851.P15062572895409627544

`Δ[record[Δ[A103626(n+4+n)]]]`
-/

namespace A239851.P15062572895409627544
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103626 (n + 4 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A239851.P15062572895409627544

namespace A239851

/-- `Δ[record[Δ[A103626(n+4+n)]]]` -/
def P15062572895409627544.Spec : Prop :=
  ∀ n, P15062572895409627544.a n = A239851 (n + 1)

end A239851

/-!
# A239852: Number of n X 2 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A239852, the canonical program `A239852.P13610538161105056561` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239852 has offset 1).

The definition of A239852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1082 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239852.P13610538161105056561

`a(n-2)+a(n-5)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=4, a(4)=5, a(5)=5, a(6)=6, a(7)=10, a(8)=11`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A239852

/-- `a(n-2)+a(n-5)` -/
def P13610538161105056561.Spec : Prop :=
  ∀ n, (P13610538161105056561.a n : ℤ) = A239852 (n + 1)

theorem P13610538161105056561.correct : P13610538161105056561.Spec := by
  intro n
  simp only [A239852, Nat.add_sub_cancel]

end A239852

/-! ## A239852.P13079133626422278675

`A239858(∑[n+2])`
-/

namespace A239852.P13079133626422278675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A239852.P13079133626422278675

namespace A239852

/-- `A239858(∑[n+2])` -/
def P13079133626422278675.Spec : Prop :=
  ∀ n, P13079133626422278675.a n = A239852 (n + 1)

end A239852

/-! ## A239852.P10290586173046501818

`A239858(A000096(n+1))+A025469(n)`
-/

namespace A239852.P10290586173046501818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (A000096 (n + 1)).toNat + A025469 n

end

end A239852.P10290586173046501818

namespace A239852

/-- `A239858(A000096(n+1))+A025469(n)` -/
def P10290586173046501818.Spec : Prop :=
  ∀ n, P10290586173046501818.a n = A239852 (n + 1)

end A239852

/-! ## A239852.P15066697061376780198

`A239858(A000096(n+1))+A178798(n)`
-/

namespace A239852.P15066697061376780198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (A000096 (n + 1)).toNat + A178798 n

end

end A239852.P15066697061376780198

namespace A239852

/-- `A239858(A000096(n+1))+A178798(n)` -/
def P15066697061376780198.Spec : Prop :=
  ∀ n, P15066697061376780198.a n = A239852 (n + 1)

end A239852

/-!
# A239853: Number of nX3 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A239853, there is no canonical definition to state claims against.
-/

/-! ## A239853.P12099005366555477156

`A239858(∑[n+3]+1)`
-/

namespace A239853.P12099005366555477156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A239853.P12099005366555477156

/-! ## A239853.P12054496673744428167

`record[A239858(lt[A239858(n+1), n])]`
-/

namespace A239853.P12054496673744428167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239853.P12054496673744428167

/-! ## A239853.P14694898059689051446

`A239858(A141214(n)+1)%A239861(n+4)`
-/

namespace A239853.P14694898059689051446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239858 (A141214 n + 1).toNat) (A239861 (n + 4))

end

end A239853.P14694898059689051446

/-! ## A239853.P548117348442951932

`A239858(A052905(n)+3)%A239861(n+4)`
-/

namespace A239853.P548117348442951932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239858 (A052905 n + 3).toNat) (A239861 (n + 4))

end

end A239853.P548117348442951932

/-!
# A239854: Number of nX4 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A239854, there is no canonical definition to state claims against.
-/

/-! ## A239854.P10606693774403017893

`A239858(∑[n+4]+3)`
-/

namespace A239854.P10606693774403017893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A239854.P10606693774403017893

/-! ## A239854.P14253763658742834985

`record[A239858(A141214(∑[(-1)^(n%3)]))]`
-/

namespace A239854.P14253763658742834985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (A141214 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239854.P14253763658742834985

/-! ## A239854.P1627858724346291458

`A239858(A141214(n+1))%A266805(n)`
-/

namespace A239854.P1627858724346291458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239858 (A141214 (n + 1)).toNat) (A266805 n)

end

end A239854.P1627858724346291458

/-! ## A239854.P10862899571803798855

`A057427(n+1)*A239858(A141214(n+1))`
-/

namespace A239854.P10862899571803798855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A239858 (A141214 (n + 1)).toNat

end

end A239854.P10862899571803798855

/-!
# A239855: Number of nX5 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A239855, there is no canonical definition to state claims against.
-/

/-! ## A239855.P5854290730814616451

`A239858(∑[n+5]+6)`
-/

namespace A239855.P5854290730814616451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A239855.P5854290730814616451

/-!
# A239856: Number of nX6 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A239856, there is no canonical definition to state claims against.
-/

/-! ## A239856.P7277352248740314757

`A239858(A052905(n+3))`
-/

namespace A239856.P7277352248740314757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (A052905 (n + 3)).toNat

end

end A239856.P7277352248740314757

/-! ## A239856.P5625037991932311428

`A239858(A056119(n)+16)`
-/

namespace A239856.P5625037991932311428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (A056119 n + 16).toNat

end

end A239856.P5625037991932311428

/-! ## A239856.P15441534658230752417

`A239858(eq[3, A219347(n)])`
-/

namespace A239856.P15441534658230752417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239856.P15441534658230752417

/-! ## A239856.P5377062831320034771

`A239858(eq[5, A193592(n)])`
-/

namespace A239856.P5377062831320034771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239856.P5377062831320034771

/-! ## A239856.P7883749436956465199

`A239858(A055999(n+3)+1)`
-/

namespace A239856.P7883749436956465199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (A055999 (n + 3) + 1).toNat

end

end A239856.P7883749436956465199

/-!
# A239857: Number of nX7 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A239857, there is no canonical definition to state claims against.
-/

/-! ## A239857.P16019484731671607442

`A239858(A055999(n+4))`
-/

namespace A239857.P16019484731671607442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (A055999 (n + 4)).toNat

end

end A239857.P16019484731671607442

/-! ## A239857.P8278177550542250947

`A239858(eq[4, A219347(n)])`
-/

namespace A239857.P8278177550542250947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239857.P8278177550542250947

/-! ## A239857.P5737105827810980672

`A239858(eq[6, A193592(n)])`
-/

namespace A239857.P5737105827810980672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239857.P5737105827810980672

/-! ## A239857.P13594434250624525264

`A239858(Δ[A023551(n+2)])`
-/

namespace A239857.P13594434250624525264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (f1 (n + 1) - f1 n).toNat

end

end A239857.P13594434250624525264

/-! ## A239857.P11528344767091527166

`A239858(A155212(n+3)+2)`
-/

namespace A239857.P11528344767091527166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (A155212 (n + 3) + 2).toNat

end

end A239857.P11528344767091527166

/-!
# A239859: Number of 2 X n 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A239859, there is no canonical definition to state claims against.
-/

/-! ## A239859.P13211664311291265451

`A239858(∑[n+1]+2)`
-/

namespace A239859.P13211664311291265451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A239859.P13211664311291265451

/-! ## A239859.P5963427968089930668

`record[A010054(n)*A239858(n+2)]`
-/

namespace A239859.P5963427968089930668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A239858 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239859.P5963427968089930668

/-! ## A239859.P9852743648590793793

`record[A239858(n+1)/A036073(n)]`
-/

namespace A239859.P9852743648590793793
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239858 (n + 1) : ℚ) / (A036073 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239859.P9852743648590793793

/-! ## A239859.P15856729992667205355

`record[A239858(n+1)/A102405(n)]`
-/

namespace A239859.P15856729992667205355
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239858 (n + 1) : ℚ) / (A102405 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239859.P15856729992667205355

/-! ## A239859.P6992934929482415919

`record[gcd(A002262(n), A239858(n+2))]`
-/

namespace A239859.P6992934929482415919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A239858 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239859.P6992934929482415919

/-!
# A239860: Number of 3Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A239860, there is no canonical definition to state claims against.
-/

/-! ## A239860.P8153181593672367773

`A239858(∑[n+2]+4)`
-/

namespace A239860.P8153181593672367773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A239860.P8153181593672367773

/-! ## A239860.P11727342025685232454

`lcm((-1)^n, A239858(A167614(n+1)))`
-/

namespace A239860.P11727342025685232454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A239858 (A167614 (n + 1)).toNat)

end

end A239860.P11727342025685232454

/-! ## A239860.P4222563688446541890

`record[A239858(n+4)/A154990(n+1)]`
-/

namespace A239860.P4222563688446541890
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239858 (n + 4) : ℚ) / (A154990 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239860.P4222563688446541890

/-! ## A239860.P8890715329662635293

`record[A239858(A167614(floor(n/(n%2+2))+1))]`
-/

namespace A239860.P8890715329662635293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (A167614 (⌊(n : ℚ) / ((n % 2 + 2 : ℕ) : ℚ)⌋ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239860.P8890715329662635293

/-! ## A239860.P16024323720137346184

`A239858(A167614(n+1))+A025438(n)`
-/

namespace A239860.P16024323720137346184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (A167614 (n + 1)).toNat + A025438 n

end

end A239860.P16024323720137346184

/-!
# A239861: Number of 4Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A239861, there is no canonical definition to state claims against.
-/

/-! ## A239861.P14865096221218732114

`A239858(∑[n+3]+7)`
-/

namespace A239861.P14865096221218732114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A239861.P14865096221218732114

/-! ## A239861.P17642208059373175902

`A239858(A141214(n)+7)^A066657(A072233(n))`
-/

namespace A239861.P17642208059373175902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239858 (A141214 n + 7).toNat : ℚ) ^ (A066657 (A072233 n).toNat : ℤ)

end

end A239861.P17642208059373175902

/-! ## A239861.P7867931510126206407

`A239858(A141214(n)+7)^A336858(A066657(n))`
-/

namespace A239861.P7867931510126206407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239858 (A141214 n + 7).toNat : ℚ) ^ (A336858 (A066657 n).toNat : ℤ)

end

end A239861.P7867931510126206407

/-! ## A239861.P11940901583592110739

`A239858(A052905(n)+9)^A066657(A072233(n))`
-/

namespace A239861.P11940901583592110739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239858 (A052905 n + 9).toNat : ℚ) ^ (A066657 (A072233 n).toNat : ℤ)

end

end A239861.P11940901583592110739

/-! ## A239861.P9951509464592742037

`A239858(A052905(n)+9)^A336858(A066657(n))`
-/

namespace A239861.P9951509464592742037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239858 (A052905 n + 9).toNat : ℚ) ^ (A336858 (A066657 n).toNat : ℤ)

end

end A239861.P9951509464592742037

/-!
# A239862: Number of 5Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A239862, there is no canonical definition to state claims against.
-/

/-! ## A239862.P656433647616411515

`A239858(A167499(n+3))`
-/

namespace A239862.P656433647616411515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (A167499 (n + 3)).toNat

end

end A239862.P656433647616411515

/-! ## A239862.P17019826353521019492

`A239858(A155212(n)+13)`
-/

namespace A239862.P17019826353521019492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (A155212 n + 13).toNat

end

end A239862.P17019826353521019492

/-! ## A239862.P15428560785728258908

`A239858(A056000(n)+15)`
-/

namespace A239862.P15428560785728258908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (A056000 n + 15).toNat

end

end A239862.P15428560785728258908

/-! ## A239862.P16198053880557550682

`A239858(eq[7, A066657(n)])`
-/

namespace A239862.P16198053880557550682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239862.P16198053880557550682

/-! ## A239862.P2902793567371241520

`A239858(A167614(n+3)+2)`
-/

namespace A239862.P2902793567371241520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (A167614 (n + 3) + 2).toNat

end

end A239862.P2902793567371241520

/-!
# A239863: Number of 6Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A239863, there is no canonical definition to state claims against.
-/

/-! ## A239863.P12640133131958231034

`A239858(A166136(n+4))`
-/

namespace A239863.P12640133131958231034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (A166136 (n + 4)).toNat

end

end A239863.P12640133131958231034

/-! ## A239863.P1637294282461207576

`A239858(A056115(n)+21)`
-/

namespace A239863.P1637294282461207576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (A056115 n + 21).toNat

end

end A239863.P1637294282461207576

/-! ## A239863.P15380022204980292420

`A239858(A167499(n+4)+1)`
-/

namespace A239863.P15380022204980292420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (A167499 (n + 4) + 1).toNat

end

end A239863.P15380022204980292420

/-! ## A239863.P3215054513515761165

`A239858(A167614(n+4)+3)`
-/

namespace A239863.P3215054513515761165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (A167614 (n + 4) + 3).toNat

end

end A239863.P3215054513515761165

/-! ## A239863.P16742442161934260156

`A239858(A000096(n+4)+7)`
-/

namespace A239863.P16742442161934260156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239858 (A000096 (n + 4) + 7).toNat

end

end A239863.P16742442161934260156

/-!
# A239864: Starting from any prime p_i (with i = 1, 2, 3, ...) sequence lists the minimum number of consecutive primes that must be added to 1 to reach another prime.

The programs for A239864, there is no canonical definition to state claims against.
-/

/-! ## A239864.P7704851772947740712

`A362267(A008864(n+1))+1`
-/

namespace A239864.P7704851772947740712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362267 (A008864 (n + 1)).toNat + 1

end

end A239864.P7704851772947740712

/-! ## A239864.P13413983424589755079

`A362267(abs(Δ[A008348(n)])+1)+1`
-/

namespace A239864.P13413983424589755079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362267 (|f1 (n + 1) - f1 n| + 1).toNat + 1

end

end A239864.P13413983424589755079

/-! ## A239864.P32806454661626402

`A362267(∪[A042988(n), A042990(n)]+1)+1`
-/

namespace A239864.P32806454661626402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362267 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1) + 1

end

end A239864.P32806454661626402

/-!
# A239865: Where records occur in A239864.

The programs for A239865, there is no canonical definition to state claims against.
-/

/-! ## A239865.P923533385336459923

`A242313(A015905(n+1))`
-/

namespace A239865.P923533385336459923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242313 (A015905 (n + 1)).toNat

end

end A239865.P923533385336459923

/-!
# A239867: Where records occur in A239866.

The programs for A239867, there is no canonical definition to state claims against.
-/

/-! ## A239867.P12731591832442669952

`A062324(A250585(n+1))%A261361(n+1)`
-/

namespace A239867.P12731591832442669952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062324 (A250585 (n + 1)).toNat) (A261361 (n + 1))

end

end A239867.P12731591832442669952

/-!
# A239868: Sum of sigma(i) mod i for i from 1 to n.

The programs for A239868, the canonical program `A239868.P7086674952022585560` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239868 has offset 1).

The definition of A239868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239868.P7086674952022585560

`∑[∑{d}[n+1, #]%(n+1)]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A239868

/-- `∑[∑{d}[n+1, #]%(n+1)]` -/
def P7086674952022585560.Spec : Prop :=
  ∀ n, (P7086674952022585560.a n : ℤ) = A239868 (n + 1)

theorem P7086674952022585560.correct : P7086674952022585560.Spec := by
  intro n
  simp only [A239868, Nat.add_sub_cancel]

end A239868

/-! ## A239868.P358298491912846664

`∑[A054024(n+1)]`
-/

namespace A239868.P358298491912846664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239868.P358298491912846664

namespace A239868

/-- `∑[A054024(n+1)]` -/
def P358298491912846664.Spec : Prop :=
  ∀ n, P358298491912846664.a n = A239868 (n + 1)

end A239868

/-! ## A239868.P11611659719363842142

`∑[Δ[A160664(n)]%(n+1)]`
-/

namespace A239868.P11611659719363842142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239868.P11611659719363842142

namespace A239868

/-- `∑[Δ[A160664(n)]%(n+1)]` -/
def P11611659719363842142.Spec : Prop :=
  ∀ n, P11611659719363842142.a n = A239868 (n + 1)

end A239868

/-! ## A239868.P7103682926656780074

`∑[A000203(n+1)%(n+1)]`
-/

namespace A239868.P7103682926656780074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239868.P7103682926656780074

namespace A239868

/-- `∑[A000203(n+1)%(n+1)]` -/
def P7103682926656780074.Spec : Prop :=
  ∀ n, P7103682926656780074.a n = A239868 (n + 1)

end A239868

/-! ## A239868.P8974885854817689160

`∑[A001065(n+1)%(n+1)]`
-/

namespace A239868.P8974885854817689160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239868.P8974885854817689160

namespace A239868

/-- `∑[A001065(n+1)%(n+1)]` -/
def P8974885854817689160.Spec : Prop :=
  ∀ n, P8974885854817689160.a n = A239868 (n + 1)

end A239868

/-! ## A239868.P17127355531879088345

`∑[A152211(n+1)%(n+1)]`
-/

namespace A239868.P17127355531879088345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152211 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239868.P17127355531879088345

namespace A239868

/-- `∑[A152211(n+1)%(n+1)]` -/
def P17127355531879088345.Spec : Prop :=
  ∀ n, P17127355531879088345.a n = A239868 (n + 1)

end A239868

/-! ## A239868.P17087849563629228715

`∑[A155085(n+1)%(n+1)]`
-/

namespace A239868.P17087849563629228715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155085 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239868.P17087849563629228715

namespace A239868

/-- `∑[A155085(n+1)%(n+1)]` -/
def P17087849563629228715.Spec : Prop :=
  ∀ n, P17087849563629228715.a n = A239868 (n + 1)

end A239868

/-! ## A239868.P18420329644464411708

`∑[(A064987(n+1)/(n+1))%(n+1)]`
-/

namespace A239868.P18420329644464411708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239868.P18420329644464411708

namespace A239868

/-- `∑[(A064987(n+1)/(n+1))%(n+1)]` -/
def P18420329644464411708.Spec : Prop :=
  ∀ n, P18420329644464411708.a n = A239868 (n + 1)

end A239868

/-! ## A239868.P5974409573269758359

`∑[A229110(n+1)+A229087(n+1)]`
-/

namespace A239868.P5974409573269758359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229110 (n + 1) + A229087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239868.P5974409573269758359

namespace A239868

/-- `∑[A229110(n+1)+A229087(n+1)]` -/
def P5974409573269758359.Spec : Prop :=
  ∀ n, P5974409573269758359.a n = A239868 (n + 1)

end A239868

/-! ## A239868.P9259414421599512344

`∑[A009194(n+1)*A272008(n+1)]`
-/

namespace A239868.P9259414421599512344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (n + 1) * A272008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239868.P9259414421599512344

namespace A239868

/-- `∑[A009194(n+1)*A272008(n+1)]` -/
def P9259414421599512344.Spec : Prop :=
  ∀ n, P9259414421599512344.a n = A239868 (n + 1)

end A239868

/-! ## A239868.P5090681379218656946

`∑[A174428(∑[n+1])]`
-/

namespace A239868.P5090681379218656946
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174428 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239868.P5090681379218656946

namespace A239868

/-- `∑[A174428(∑[n+1])]` -/
def P5090681379218656946.Spec : Prop :=
  ∀ n, P5090681379218656946.a n = A239868 (n + 1)

end A239868

/-!
# A239870: Noncube perfect powers, excluding squares m^2, where m > 3 is a nonpower, such that the interval [(m-1)^2, m^2) contains exactly one perfect power that is not the square of a nonpower.

The programs for A239870, there is no canonical definition to state claims against.
-/

/-! ## A239870.P16199331638041925763

`A340585(lt[A161950(n+1), A092689(n+4)])`
-/

namespace A239870.P16199331638041925763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092689 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340585 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A239870.P16199331638041925763

/-! ## A239870.P9103815232357162941

`∩[A087815(n+1), A340585(n+1)]`
-/

namespace A239870.P9103815232357162941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239870.P9103815232357162941

/-! ## A239870.P1292908066580757029

`∩[A248807(n+1), A340585(n+1)]`
-/

namespace A239870.P1292908066580757029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239870.P1292908066580757029

/-! ## A239870.P8435128462129630868

`A340585(eq[A056926(n), A146615(n+1)])`
-/

namespace A239870.P8435128462129630868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340585 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A239870.P8435128462129630868

/-! ## A239870.P6679060468026433090

`A001597(A342222(2*n+3)-A020908(n))`
-/

namespace A239870.P6679060468026433090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A342222 (2 * n + 3) - A020908 n).toNat

end

end A239870.P6679060468026433090

/-!
# A239871: Number of strict partitions of n having 1 more even part than odd, so that there is at least one ordering of the parts in which the even and odd parts alternate, and the first and last terms are even.

The programs for A239871, there is no canonical definition to state claims against.
-/

/-! ## A239871.P5956414644301661306

`A239880(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A239871.P5956414644301661306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A239880 (n - 1) - a (n - 1)

end

end A239871.P5956414644301661306

/-! ## A239871.P9857249425699676639

`A102214(A237616(n))%(n+1)`
-/

namespace A239871.P9857249425699676639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102214 (A237616 n).toNat) (n + 1 : ℤ)

end

end A239871.P9857249425699676639

/-! ## A239871.P2719365383356193311

`A002620(n*A005475(n))%(n+1)`
-/

namespace A239871.P2719365383356193311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002620 ((n : ℤ) * A005475 n).toNat) (n + 1 : ℤ)

end

end A239871.P2719365383356193311

/-! ## A239871.P9321269172528381872

`A008642((n+1)*Δ[n^3])%∑[log2(gcd(2, n))]`
-/

namespace A239871.P9321269172528381872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008642 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat) (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A239871.P9321269172528381872

/-! ## A239871.P9843714261563273737

`A054991(xor(3, A097331(n)))`
-/

namespace A239871.P9843714261563273737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054991 (Int.xor 3 (A097331 n)).toNat

end

end A239871.P9843714261563273737

/-!
# A239872: Number of strict partitions of 2n having 1 more even part than odd, so that there is at least one ordering of the parts in which the even and odd parts alternate, and the first and last terms are even.

The programs for A239872, there is no canonical definition to state claims against.
-/

/-! ## A239872.P5524425883133082408

`A239871(2*n)`
-/

namespace A239872.P5524425883133082408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239871 (2 * n)

end

end A239872.P5524425883133082408

/-! ## A239872.P16246237287119478723

`xor(1, xor(1, A239871(n+n)))`
-/

namespace A239872.P16246237287119478723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A239871 (n + n)))

end

end A239872.P16246237287119478723

/-! ## A239872.P3665883398206700989

`and(A008683(A235266(n+1)), A239871(n+n))`
-/

namespace A239872.P3665883398206700989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (A235266 (n + 1)).toNat) (A239871 (n + n))

end

end A239872.P3665883398206700989

/-! ## A239872.P2371917736255669080

`A239880(2*n)-A239873(n)`
-/

namespace A239872.P2371917736255669080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239880 (2 * n) - A239873 n

end

end A239872.P2371917736255669080

/-! ## A239872.P7353387317063638280

`A239871(n+n)%A168674(n+1)`
-/

namespace A239872.P7353387317063638280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239871 (n + n)) (A168674 (n + 1))

end

end A239872.P7353387317063638280

/-! ## A239872.P3341967158986207349

`A239871(n+n)+A037213(A024783(n+1))`
-/

namespace A239872.P3341967158986207349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239871 (n + n) + A037213 (A024783 (n + 1)).toNat

end

end A239872.P3341967158986207349

/-!
# A239873: Number of strict partitions of 2n + 1 having 1 more even part than odd, so that there is at least one ordering of the parts in which the even and odd parts alternate, and the first and last terms are even.

The programs for A239873, there is no canonical definition to state claims against.
-/

/-! ## A239873.P11999471359955138010

`A239871(Δ[n²])`
-/

namespace A239873.P11999471359955138010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239871 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A239873.P11999471359955138010

/-! ## A239873.P3512323193688219868

`xor(1, xor(1, A239871(2*n+1)))`
-/

namespace A239873.P3512323193688219868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A239871 (2 * n + 1)))

end

end A239873.P3512323193688219868

/-! ## A239873.P2834789949685733684

`abs(A033999(n)*A239871(2*n+1))`
-/

namespace A239873.P2834789949685733684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A239871 (2 * n + 1)|

end

end A239873.P2834789949685733684

/-! ## A239873.P5104436485205860089

`A033999(2*n)*A239871(2*n+1)`
-/

namespace A239873.P5104436485205860089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A239871 (2 * n + 1)

end

end A239873.P5104436485205860089

/-! ## A239873.P14537799459383444097

`A239871(2*n+1)/and(1, A235266(2*(n+1)))`
-/

namespace A239873.P14537799459383444097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239871 (2 * n + 1) : ℚ) / (Int.land 1 (A235266 (2 * (n + 1))) : ℚ)

end

end A239873.P14537799459383444097

/-! ## A239873.P5299426153132610704

`A239871(2*n+1)+A037213(2*n+1)*A037213(2*n)`
-/

namespace A239873.P5299426153132610704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239871 (2 * n + 1) + A037213 (2 * n + 1) * A037213 (2 * n)

end

end A239873.P5299426153132610704

/-! ## A239873.P804755829671463977

`and(A008683(A235266(n+2)), A239871(2*n+1))`
-/

namespace A239873.P804755829671463977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (A235266 (n + 2)).toNat) (A239871 (2 * n + 1))

end

end A239873.P804755829671463977

/-! ## A239873.P9589114451154186784

`A239880(2*n)-A239872(n)`
-/

namespace A239873.P9589114451154186784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239880 (2 * n) - A239872 n

end

end A239873.P9589114451154186784

/-! ## A239873.P14599609497514311936

`A239880(2*n)-A239871(2*n)`
-/

namespace A239873.P14599609497514311936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239880 (2 * n) - A239871 (2 * n)

end

end A239873.P14599609497514311936

/-! ## A239873.P12562069460727435888

`A008683(A235266(2*n+1))²*A239871(2*n+1)`
-/

namespace A239873.P12562069460727435888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A235266 (2 * n + 1)).toNat ^ 2 * A239871 (2 * n + 1)

end

end A239873.P12562069460727435888

/-!
# A239874: Integers k such that 2*k^2 + 1 and 2*k^3 + 1 are prime.

The programs for A239874, there is no canonical definition to state claims against.
-/

/-! ## A239874.P1644262367963246749

`∩[A089001(n+1), A168550(n+1)]`
-/

namespace A239874.P1644262367963246749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239874.P1644262367963246749

/-! ## A239874.P3429848782685763461

`∩[eq[1, A101264(n²)], A168550(n+1)]`
-/

namespace A239874.P3429848782685763461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (n ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A239874.P3429848782685763461

/-! ## A239874.P5531378986132672844

`∩[eq[1, A001222(2*n²+1)], A168550(n+1)]`
-/

namespace A239874.P5531378986132672844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n ^ 2 + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A239874.P5531378986132672844

/-! ## A239874.P74895817177386475

`∩[eq[2, A000005(2*n²+1)], A168550(n+1)]`
-/

namespace A239874.P74895817177386475
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n ^ 2 + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A239874.P74895817177386475

/-!
# A239876: Partial sums of A229110, where A229110(n) = antisigma(n) mod n = A024816(n) mod n.

The programs for A239876, the canonical program `A239876.P14147958566961035666` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239876 has offset 1).

The definition of A239876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239876.P14147958566961035666

`∑[A229110(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A239876

/-- `∑[A229110(n+1)]` -/
def P14147958566961035666.Spec : Prop :=
  ∀ n, P14147958566961035666.a n = A239876 (n + 1)

theorem P14147958566961035666.correct : P14147958566961035666.Spec := by
  intro n
  simp only [A239876, Nat.add_sub_cancel]

end A239876

/-! ## A239876.P15247064216517536686

`∑[A024816(n+1)%(n+1)]`
-/

namespace A239876.P15247064216517536686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024816 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239876.P15247064216517536686

namespace A239876

/-- `∑[A024816(n+1)%(n+1)]` -/
def P15247064216517536686.Spec : Prop :=
  ∀ n, P15247064216517536686.a n = A239876 (n + 1)

end A239876

/-! ## A239876.P13406229796923979780

`∑[(A033879(n+1)+∑[n])%(n+1)]`
-/

namespace A239876.P13406229796923979780
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033879 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239876.P13406229796923979780

namespace A239876

/-- `∑[(A033879(n+1)+∑[n])%(n+1)]` -/
def P13406229796923979780.Spec : Prop :=
  ∀ n, P13406229796923979780.a n = A239876 (n + 1)

end A239876

/-! ## A239876.P15589452676120189123

`∑[(∑[n+1]-A000203(n+1))%(n+1)]`
-/

namespace A239876.P15589452676120189123
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A000203 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239876.P15589452676120189123

namespace A239876

/-- `∑[(∑[n+1]-A000203(n+1))%(n+1)]` -/
def P15589452676120189123.Spec : Prop :=
  ∀ n, P15589452676120189123.a n = A239876 (n + 1)

end A239876

/-! ## A239876.P11227657662412277053

`∑[(∑[25*n]-A155085(n+1))%(n+1)]`
-/

namespace A239876.P11227657662412277053
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A155085 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239876.P11227657662412277053

namespace A239876

/-- `∑[(∑[25*n]-A155085(n+1))%(n+1)]` -/
def P11227657662412277053.Spec : Prop :=
  ∀ n, P11227657662412277053.a n = A239876 (n + 1)

end A239876

/-! ## A239876.P14234698509297919575

`∑[(∑[n+1]-A064987(n+1)/(n+1))%(n+1)]`
-/

namespace A239876.P14234698509297919575
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) - (A064987 (n + 1) : ℚ) / (n + 1 : ℚ))) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239876.P14234698509297919575

namespace A239876

/-- `∑[(∑[n+1]-A064987(n+1)/(n+1))%(n+1)]` -/
def P14234698509297919575.Spec : Prop :=
  ∀ n, P14234698509297919575.a n = A239876 (n + 1)

end A239876

/-! ## A239876.P14352346899365598087

`∑[A054024(n+1)-A229087(n+1)]`
-/

namespace A239876.P14352346899365598087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1) - A229087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239876.P14352346899365598087

namespace A239876

/-- `∑[A054024(n+1)-A229087(n+1)]` -/
def P14352346899365598087.Spec : Prop :=
  ∀ n, P14352346899365598087.a n = A239876 (n + 1)

theorem P14352346899365598087.correct : P14352346899365598087.Spec := by
  intro n
  simp only [A239876, Nat.add_sub_cancel, A239876.P14352346899365598087.f1, A239876.P14352346899365598087.a, A239876.P14147958566961035666.f1, A239876.P14147958566961035666.a, A054024, A054024.P118057642486655144.a, A229087, A229087.P10345629012060209210.a, A229110, A229110.P15666445808549709516.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A239876

/-!
# A239878: Numbers k with digit_sum(k*k) + 1 = digit_sum((k+1)*(k+1)).

The programs for A239878, the canonical program `A239878.P11535011503669925246` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239878 has offset 1).

The definition of A239878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 425 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239878.P3728913681844624800

`eq[1, A240752(n+1)]`
-/

namespace A239878.P3728913681844624800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240752 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A239878.P3728913681844624800

namespace A239878

/-- `eq[1, A240752(n+1)]` -/
def P3728913681844624800.Spec : Prop :=
  ∀ n, (P3728913681844624800.a n : ℤ) = A239878 (n + 1)

end A239878

/-! ## A239878.P11535011503669925246

`eq[A004159(n+1)-A004159(n), 1]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A239878

/-- `eq[A004159(n+1)-A004159(n), 1]` -/
def P11535011503669925246.Spec : Prop :=
  ∀ n, (P11535011503669925246.a n : ℤ) = A239878 (n + 1)

theorem P11535011503669925246.correct : P11535011503669925246.Spec := by
  intro n
  simp only [A239878, Nat.add_sub_cancel]

end A239878

/-! ## A239878.P8886849569402722565

`lt[(1-A240752(n+1))², A054977(n)]`
-/

namespace A239878.P8886849569402722565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A240752 (n + 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239878.P8886849569402722565

namespace A239878

/-- `lt[(1-A240752(n+1))², A054977(n)]` -/
def P8886849569402722565.Spec : Prop :=
  ∀ n, (P8886849569402722565.a n : ℤ) = A239878 (n + 1)

end A239878

/-! ## A239878.P3806345774176902587

`lt[A240752(n+1)²+n, A004483(n)]`
-/

namespace A239878.P3806345774176902587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240752 (n + 1) ^ 2 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A239878.P3806345774176902587

namespace A239878

/-- `lt[A240752(n+1)²+n, A004483(n)]` -/
def P3806345774176902587.Spec : Prop :=
  ∀ n, (P3806345774176902587.a n : ℤ) = A239878 (n + 1)

end A239878

/-! ## A239878.P13331078827329237372

`eq[A004159(n), A023443(A004159(n+1))]`
-/

namespace A239878.P13331078827329237372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004159 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A239878.P13331078827329237372

namespace A239878

/-- `eq[A004159(n), A023443(A004159(n+1))]` -/
def P13331078827329237372.Spec : Prop :=
  ∀ n, (P13331078827329237372.a n : ℤ) = A239878 (n + 1)

end A239878

/-!
# A239879: Primes p such that either x divides y, or y divides x, where x = nextprime(p) - p, and y = p - prevprime(p).

The programs for A239879, the canonical program `A239879.P16824240110881883084` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239879 has offset 1).

The definition of A239879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239879.P16824240110881883084

`∪[A184247(n+1), A184248(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A239879

/-- `∪[A184247(n+1), A184248(n+1)]` -/
def P16824240110881883084.Spec : Prop :=
  ∀ n, (P16824240110881883084.a n : ℤ) = A239879 (n + 1)

theorem P16824240110881883084.correct : P16824240110881883084.Spec := by
  intro n
  simp only [A239879, Nat.add_sub_cancel]

end A239879

/-! ## A239879.P9846776148174565579

`p?[A245339(n)+A206718(n+1)]`
-/

namespace A239879.P9846776148174565579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245339 n + A206718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A239879.P9846776148174565579

namespace A239879

/-- `p?[A245339(n)+A206718(n+1)]` -/
def P9846776148174565579.Spec : Prop :=
  ∀ n, P9846776148174565579.a n = A239879 (n + 1)

end A239879

/-! ## A239879.P8974624189098714184

`p?[lt[A097608(n+3), n]]`
-/

namespace A239879.P8974624189098714184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097608 (n + 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A239879.P8974624189098714184

namespace A239879

/-- `p?[lt[A097608(n+3), n]]` -/
def P8974624189098714184.Spec : Prop :=
  ∀ n, (P8974624189098714184.a n : ℤ) = A239879 (n + 1)

end A239879

/-! ## A239879.P15787272934788842472

`A357126(A040067(n+1))`
-/

namespace A239879.P15787272934788842472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357126 (A040067 (n + 1)).toNat

end

end A239879.P15787272934788842472

namespace A239879

/-- `A357126(A040067(n+1))` -/
def P15787272934788842472.Spec : Prop :=
  ∀ n, P15787272934788842472.a n = A239879 (n + 1)

end A239879

/-! ## A239879.P2871870121670792281

`A000040(lt[A094525(3*n+4), ∑[n]])`
-/

namespace A239879.P2871870121670792281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094525 (3 * n + 4)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A239879.P2871870121670792281

namespace A239879

/-- `A000040(lt[A094525(3*n+4), ∑[n]])` -/
def P2871870121670792281.Spec : Prop :=
  ∀ n, P2871870121670792281.a n = A239879 (n + 1)

end A239879

/-!
# A239880: Number of strict partitions of n having an ordering in which no parts of equal parity are juxtaposed and the first and last terms have the same parity.

The programs for A239880, there is no canonical definition to state claims against.
-/

/-! ## A239880.P10480528529701772814

`A239881(n)-A239241(n)`
-/

namespace A239880.P10480528529701772814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239881 n - A239241 n

end

end A239880.P10480528529701772814

/-! ## A239880.P11565335872272058183

`A239871(n+1)+A239871(n)`
-/

namespace A239880.P11565335872272058183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239871 (n + 1) + A239871 n

end

end A239880.P11565335872272058183

/-! ## A239880.P9524863847733146065

`abs(Δ[A033999(n)*A239871(n)])`
-/

namespace A239880.P9524863847733146065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A239871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A239880.P9524863847733146065

/-! ## A239880.P3833313465188597512

`A239239(n)+A239881(n)-A239240(n)`
-/

namespace A239880.P3833313465188597512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239239 n + (A239881 n - A239240 n)

end

end A239880.P3833313465188597512

/-! ## A239880.P15082299518689069926

`A239242(n)+A239881(n)-A239243(n)`
-/

namespace A239880.P15082299518689069926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239242 n + (A239881 n - A239243 n)

end

end A239880.P15082299518689069926

/-!
# A239881: Number of strict partitions of n having an ordering in which no parts of equal parity are juxtaposed.

The programs for A239881, there is no canonical definition to state claims against.
-/

/-! ## A239881.P8060285592359084018

`A239880(n)+A239241(n)`
-/

namespace A239881.P8060285592359084018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239880 n + A239241 n

end

end A239881.P8060285592359084018

/-! ## A239881.P3477273262682525700

`A239240(n)+A239880(n)-A239239(n)`
-/

namespace A239881.P3477273262682525700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239240 n + (A239880 n - A239239 n)

end

end A239881.P3477273262682525700

/-! ## A239881.P1160744333285238963

`A239243(n)+A239880(n)-A239242(n)`
-/

namespace A239881.P1160744333285238963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239243 n + (A239880 n - A239242 n)

end

end A239881.P1160744333285238963

/-! ## A239881.P16214107239991132380

`A239871(n+1)+A239871(n)+A239241(n)`
-/

namespace A239881.P16214107239991132380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239871 (n + 1) + (A239871 n + A239241 n)

end

end A239881.P16214107239991132380

/-! ## A239881.P11492650305823563045

`A239880(n)+A000009(n)-(A239242(n)+A239239(n))`
-/

namespace A239881.P11492650305823563045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239880 n + (A000009 n - (A239242 n + A239239 n))

end

end A239881.P11492650305823563045

/-!
# A239882: Number of strict partitions of 2n having an ordering of the parts in which no two neighboring parts have the same parity.

The programs for A239882, there is no canonical definition to state claims against.
-/

/-! ## A239882.P10176436772965972446

`A239881(2*n)`
-/

namespace A239882.P10176436772965972446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239881 (2 * n)

end

end A239882.P10176436772965972446

/-! ## A239882.P11838375515487425372

`A239880(2*n)+A239241(2*n)`
-/

namespace A239882.P11838375515487425372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239880 (2 * n) + A239241 (2 * n)

end

end A239882.P11838375515487425372

/-! ## A239882.P8733046438763857977

`A239881(n+n)+A025460(A025460(n))`
-/

namespace A239882.P8733046438763857977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239881 (n + n) + A025460 (A025460 n).toNat

end

end A239882.P8733046438763857977

/-! ## A239882.P3674219353566620085

`A239240(2*n)+A239880(2*n)-A239239(2*n)`
-/

namespace A239882.P3674219353566620085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239240 (2 * n) + (A239880 (2 * n) - A239239 (2 * n))

end

end A239882.P3674219353566620085

/-! ## A239882.P16554314024454994199

`A239243(2*n)+A239880(2*n)-A239242(2*n)`
-/

namespace A239882.P16554314024454994199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239243 (2 * n) + (A239880 (2 * n) - A239242 (2 * n))

end

end A239882.P16554314024454994199

/-! ## A239882.P15258178627397095532

`A239871(2*n+1)+A239871(2*n)+A239241(2*n)`
-/

namespace A239882.P15258178627397095532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239871 (2 * n + 1) + (A239871 (2 * n) + A239241 (2 * n))

end

end A239882.P15258178627397095532

/-! ## A239882.P18312558900160411841

`A239881(n+n)/A001222(A182047(n))`
-/

namespace A239882.P18312558900160411841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239881 (n + n) : ℚ) / (A001222 (A182047 n).toNat : ℚ)

end

end A239882.P18312558900160411841

/-!
# A239883: Number of strict partitions of 2n + 1 having an ordering of the parts in which no two neighboring parts have the same parity.

The programs for A239883, there is no canonical definition to state claims against.
-/

/-! ## A239883.P13317970878156223462

`A239881(Δ[n²])`
-/

namespace A239883.P13317970878156223462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239881 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A239883.P13317970878156223462

/-! ## A239883.P467978871944081921

`A239880(2*n+1)+A239241(2*n+1)`
-/

namespace A239883.P467978871944081921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239880 (2 * n + 1) + A239241 (2 * n + 1)

end

end A239883.P467978871944081921

/-! ## A239883.P16206036775957688046

`A239881(n+1+n)+A025460(A025460(n))`
-/

namespace A239883.P16206036775957688046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239881 (n + 1 + n) + A025460 (A025460 n).toNat

end

end A239883.P16206036775957688046

/-! ## A239883.P13432454579304254335

`A001511(A006005(n+1))*A239881(2*n+1)`
-/

namespace A239883.P13432454579304254335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A006005 (n + 1)).toNat * A239881 (2 * n + 1)

end

end A239883.P13432454579304254335

/-! ## A239883.P5749242803102510907

`A001511(A001122(n+1))*A239881(2*n+1)`
-/

namespace A239883.P5749242803102510907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A001122 (n + 1)).toNat * A239881 (2 * n + 1)

end

end A239883.P5749242803102510907

/-! ## A239883.P8519100987465443793

`A239881(2*n+1)^A072345(A068773(n+1))`
-/

namespace A239883.P8519100987465443793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239881 (2 * n + 1) : ℚ) ^ (A072345 (A068773 (n + 1)).toNat : ℤ)

end

end A239883.P8519100987465443793

/-! ## A239883.P15912982114672447298

`A072345(A068773(n+2))*A239881(2*n+1)`
-/

namespace A239883.P15912982114672447298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072345 (A068773 (n + 2)).toNat * A239881 (2 * n + 1)

end

end A239883.P15912982114672447298

/-!
# A239885: a(n) = 2^(n-2) * prime(n).

The programs for A239885, the canonical program `A239885.P1896518761553761145` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239885 has offset 1).

The definition of A239885 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239885.P14470825366006000363

`2^(n-1)*A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A239885.P14470825366006000363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000040 (n + 1) : ℚ)

end

end A239885.P14470825366006000363

namespace A239885

/-- `2^(n-1)*A000040(n+1)` -/
def P14470825366006000363.Spec : Prop :=
  ∀ n, P14470825366006000363.a n = (A239885 (n + 1) : ℚ)

end A239885

/-! ## A239885.P1896518761553761145

`A110295(n+1)/2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A239885

/-- `A110295(n+1)/2` -/
def P1896518761553761145.Spec : Prop :=
  ∀ n, P1896518761553761145.a n = (A239885 (n + 1) : ℚ)

end A239885

/-! ## A239885.P10856907444614651172

`2^(n-1)*record[∑{p}[n+2, #]]`
-/

namespace A239885.P10856907444614651172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A239885.P10856907444614651172

namespace A239885

/-- `2^(n-1)*record[∑{p}[n+2, #]]` -/
def P10856907444614651172.Spec : Prop :=
  ∀ n, P10856907444614651172.a n = (A239885 (n + 1) : ℚ)

end A239885

/-! ## A239885.P10273465069899642738

`2^(n-1)*A008578(n+2)`
-/

namespace A239885.P10273465069899642738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A008578 (n + 2) : ℚ)

end

end A239885.P10273465069899642738

namespace A239885

/-- `2^(n-1)*A008578(n+2)` -/
def P10273465069899642738.Spec : Prop :=
  ∀ n, P10273465069899642738.a n = (A239885 (n + 1) : ℚ)

end A239885

/-! ## A239885.P2079454124039919466

`2^(n-2)*A100484(n+1)`
-/

namespace A239885.P2079454124039919466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A100484 (n + 1) : ℚ)

end

end A239885.P2079454124039919466

namespace A239885

/-- `2^(n-2)*A100484(n+1)` -/
def P2079454124039919466.Spec : Prop :=
  ∀ n, P2079454124039919466.a n = (A239885 (n + 1) : ℚ)

end A239885

/-! ## A239885.P25209616694082438

`2^(n-2)*A001747(n+2)`
-/

namespace A239885.P25209616694082438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A001747 (n + 2) : ℚ)

end

end A239885.P25209616694082438

namespace A239885

/-- `2^(n-2)*A001747(n+2)` -/
def P25209616694082438.Spec : Prop :=
  ∀ n, P25209616694082438.a n = (A239885 (n + 1) : ℚ)

end A239885

/-! ## A239885.P517967639916975715

`2^(n-1)*A158611(n+3)`
-/

namespace A239885.P517967639916975715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A158611 (n + 3) : ℚ)

end

end A239885.P517967639916975715

namespace A239885

/-- `2^(n-1)*A158611(n+3)` -/
def P517967639916975715.Spec : Prop :=
  ∀ n, P517967639916975715.a n = (A239885 (n + 1) : ℚ)

end A239885

/-! ## A239885.P7688483480760750060

`2^(n-1)*record[A051664(n+1)]`
-/

namespace A239885.P7688483480760750060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A239885.P7688483480760750060

namespace A239885

/-- `2^(n-1)*record[A051664(n+1)]` -/
def P7688483480760750060.Spec : Prop :=
  ∀ n, P7688483480760750060.a n = (A239885 (n + 1) : ℚ)

end A239885

/-! ## A239885.P16923030297758104397

`2^(n-1)*record[A006530(n+2)]`
-/

namespace A239885.P16923030297758104397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A239885.P16923030297758104397

namespace A239885

/-- `2^(n-1)*record[A006530(n+2)]` -/
def P16923030297758104397.Spec : Prop :=
  ∀ n, P16923030297758104397.a n = (A239885 (n + 1) : ℚ)

end A239885

/-! ## A239885.P18360535216117360816

`2^(n-1)*record[A020639(n+2)]`
-/

namespace A239885.P18360535216117360816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A239885.P18360535216117360816

namespace A239885

/-- `2^(n-1)*record[A020639(n+2)]` -/
def P18360535216117360816.Spec : Prop :=
  ∀ n, P18360535216117360816.a n = (A239885 (n + 1) : ℚ)

end A239885

/-! ## A239885.P4891965495066684586

`A006005(n+1)*A011782(n)`
-/

namespace A239885.P4891965495066684586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) * A011782 n

end

end A239885.P4891965495066684586

namespace A239885

/-- `A006005(n+1)*A011782(n)` -/
def P4891965495066684586.Spec : Prop :=
  ∀ n, P4891965495066684586.a n = A239885 (n + 1)

end A239885

/-! ## A239885.P11186698595272803002

`A000040(n+1)/2*A000079(n)`
-/

namespace A239885.P11186698595272803002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / 2 * (A000079 n : ℚ)

end

end A239885.P11186698595272803002

namespace A239885

/-- `A000040(n+1)/2*A000079(n)` -/
def P11186698595272803002.Spec : Prop :=
  ∀ n, P11186698595272803002.a n = (A239885 (n + 1) : ℚ)

end A239885

/-! ## A239885.P4858374172845651575

`record[record[A006530(n+1)]*A034008(n)]`
-/

namespace A239885.P4858374172845651575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239885.P4858374172845651575

namespace A239885

/-- `record[record[A006530(n+1)]*A034008(n)]` -/
def P4858374172845651575.Spec : Prop :=
  ∀ n, P4858374172845651575.a n = A239885 (n + 1)

end A239885

/-! ## A239885.P14026007046938963500

`record[record[A020639(n+1)]*A034008(n)]`
-/

namespace A239885.P14026007046938963500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239885.P14026007046938963500

namespace A239885

/-- `record[record[A020639(n+1)]*A034008(n)]` -/
def P14026007046938963500.Spec : Prop :=
  ∀ n, P14026007046938963500.a n = A239885 (n + 1)

end A239885

/-! ## A239885.P4141184076027710617

`A000040(n+1)/2*∑[A011782(n)]`
-/

namespace A239885.P4141184076027710617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A239885.P4141184076027710617

namespace A239885

/-- `A000040(n+1)/2*∑[A011782(n)]` -/
def P4141184076027710617.Spec : Prop :=
  ∀ n, P4141184076027710617.a n = (A239885 (n + 1) : ℚ)

end A239885

/-! ## A239885.P8226162112186375818

`A000040(n+1)/2*Δ[A000051(n)]`
-/

namespace A239885.P8226162112186375818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A239885.P8226162112186375818

namespace A239885

/-- `A000040(n+1)/2*Δ[A000051(n)]` -/
def P8226162112186375818.Spec : Prop :=
  ∀ n, P8226162112186375818.a n = (A239885 (n + 1) : ℚ)

end A239885

/-! ## A239885.P7721301949557083393

`A000040(n+1)/2*Δ[A000225(n)]`
-/

namespace A239885.P7721301949557083393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A239885.P7721301949557083393

namespace A239885

/-- `A000040(n+1)/2*Δ[A000225(n)]` -/
def P7721301949557083393.Spec : Prop :=
  ∀ n, P7721301949557083393.a n = (A239885 (n + 1) : ℚ)

end A239885

/-! ## A239885.P14431692822955431143

`record[A006530(2*n+1)]*A011782(n)`
-/

namespace A239885.P14431692822955431143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A011782 n

end

end A239885.P14431692822955431143

namespace A239885

/-- `record[A006530(2*n+1)]*A011782(n)` -/
def P14431692822955431143.Spec : Prop :=
  ∀ n, P14431692822955431143.a n = A239885 (n + 1)

end A239885

/-! ## A239885.P7782103720067932403

`record[A020639(2*n+1)]*A011782(n)`
-/

namespace A239885.P7782103720067932403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A011782 n

end

end A239885.P7782103720067932403

namespace A239885

/-- `record[A020639(2*n+1)]*A011782(n)` -/
def P7782103720067932403.Spec : Prop :=
  ∀ n, P7782103720067932403.a n = A239885 (n + 1)

end A239885

/-! ## A239885.P8957825578535746826

`A000040(n+1)/2*record[A072345(n)]`
-/

namespace A239885.P8957825578535746826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072345 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / 2 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A239885.P8957825578535746826

namespace A239885

/-- `A000040(n+1)/2*record[A072345(n)]` -/
def P8957825578535746826.Spec : Prop :=
  ∀ n, P8957825578535746826.a n = (A239885 (n + 1) : ℚ)

end A239885

/-!
# A239886: Composite numbers whose proper divisor balance is an integer.

The programs for A239886, there is no canonical definition to state claims against.
-/

/-! ## A239886.P14548370331825808114

`A070003(lt[A223747(n+1), A319053(n+4)])`
-/

namespace A239886.P14548370331825808114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319053 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A239886.P14548370331825808114

/-!
# A239888: From second moments of unfriendly seating arrangement problem around a circular table with n seats.

The programs for A239888, there is no canonical definition to state claims against.
-/

/-! ## A239888.P12821502937660204126

`A274401(3^floor(n-atan(n)))`
-/

namespace A239888.P12821502937660204126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274401 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A239888.P12821502937660204126

/-! ## A239888.P10047812266113754373

`A274401(A351342(n+1))`
-/

namespace A239888.P10047812266113754373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274401 (A351342 (n + 1)).toNat

end

end A239888.P10047812266113754373

/-!
# A239889: From unfriendly seating arrangement problem for fat men at a circular table with n seats.

The programs for A239889, there is no canonical definition to state claims against.
-/

/-! ## A239889.P59304225932868838

`A008810(n)*A140356(A001105(n))`
-/

namespace A239889.P59304225932868838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 n * A140356 (A001105 n).toNat

end

end A239889.P59304225932868838

/-! ## A239889.P428222503731131784

`A070939(A145086(n))*A104150(n)`
-/

namespace A239889.P428222503731131784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A145086 n).toNat * A104150 n

end

end A239889.P428222503731131784

/-! ## A239889.P17927343750309773512

`A104150(n)*A238845(A003168(n))`
-/

namespace A239889.P17927343750309773512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n * A238845 (A003168 n).toNat

end

end A239889.P17927343750309773512

/-!
# A239890: Number of terms in consolidated series for normal reflectance of a three-layer thin film system of path length n.

The programs for A239890, there is no canonical definition to state claims against.
-/

/-! ## A239890.P15466067805866169553

`round((n²+8)²/72)`
-/

namespace A239890.P15466067805866169553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n ^ 2 + 8) ^ 2 : ℚ) / 72)

end

end A239890.P15466067805866169553

/-! ## A239890.P2267292153386535158

`ceil((n²+8)²/72-n%2)`
-/

namespace A239890.P2267292153386535158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n ^ 2 + 8) ^ 2 : ℚ) / 72 - ((n % 2 : ℕ) : ℚ)⌉

end

end A239890.P2267292153386535158

/-! ## A239890.P3232303162019916488

`ceil((n²+8)²/72-and(1, n))`
-/

namespace A239890.P3232303162019916488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n ^ 2 + 8) ^ 2 : ℚ) / 72 - (Nat.land 1 n : ℚ)⌉

end

end A239890.P3232303162019916488

/-! ## A239890.P16838776464694846504

`A025774(n²+1)`
-/

namespace A239890.P16838776464694846504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025774 (n ^ 2 + 1)

end

end A239890.P16838776464694846504

/-! ## A239890.P17752608174966375566

`∑[A175812(abs(1-n))]`
-/

namespace A239890.P17752608174966375566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175812 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239890.P17752608174966375566

/-!
# A239891: List of orders of alternating groups which are unit groups of rings.

The programs for A239891, there is no canonical definition to state claims against.
-/

/-! ## A239891.P5240825343436138114

`ceil((floor(n/2)²+n)!/2)`
-/

namespace A239891.P5240825343436138114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial (⌊(n : ℚ) / 2⌋ ^ 2 + (n : ℤ)).toNat : ℚ) / 2⌉

end

end A239891.P5240825343436138114

/-!
# A239892: List of orders of finite simple groups which are unit groups of rings.

The programs for A239892, there is no canonical definition to state claims against.
-/

/-! ## A239892.P9765254402494788287

`∩[A068422(n+1), A275374(n+1)]`
-/

namespace A239892.P9765254402494788287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239892.P9765254402494788287

/-! ## A239892.P11816042535069217440

`eq[A323410(2*(n+1)), A344767(n+2)]+1`
-/

namespace A239892.P11816042535069217440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323410 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344767 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A239892.P11816042535069217440

/-! ## A239892.P10295787195204802161

`eq[A032741(n), A047391(A302034(n+1))]`
-/

namespace A239892.P10295787195204802161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047391 (A302034 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A239892.P10295787195204802161

/-!
# A239895: Triangle read by rows: T(n,k) (n >= 1, 1 <= k <= n) = number of alternating anagrams on n letters (of length 2n) which are decomposable into at most k components.

The programs for A239895, there is no canonical definition to state claims against.
-/

/-! ## A239895.P14434334069044937864

`A105599(n+1)+A097017(A097007(n+1))`
-/

namespace A239895.P14434334069044937864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105599 (n + 1) + A097017 (A097007 (n + 1)).toNat

end

end A239895.P14434334069044937864

/-! ## A239895.P8630907277866677528

`A205295(A038722(n+1))+A105599(n+1)`
-/

namespace A239895.P8630907277866677528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205295 (A038722 (n + 1)).toNat + A105599 (n + 1)

end

end A239895.P8630907277866677528

/-! ## A239895.P2755830979606609607

`A205295(A066182(n+1))+A105599(n+1)`
-/

namespace A239895.P2755830979606609607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205295 (A066182 (n + 1)).toNat + A105599 (n + 1)

end

end A239895.P2755830979606609607

/-! ## A239895.P4907352114135933684

`A268689(A330954(n+1))+A105599(n+1)`
-/

namespace A239895.P4907352114135933684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268689 (A330954 (n + 1)).toNat + A105599 (n + 1)

end

end A239895.P4907352114135933684

/-! ## A239895.P17501974153225703063

`A171933(A306860(n))+A105599(n+1)`
-/

namespace A239895.P17501974153225703063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171933 (A306860 n).toNat + A105599 (n + 1)

end

end A239895.P17501974153225703063

/-!
# A239896: Generalized ternary Thue-Morse sequence arising from junction numbers problem in base 10.

The programs for A239896, there is no canonical definition to state claims against.
-/

/-! ## A239896.P15175742523993357663

`A004092(A000523(n+1)%A102821(n))`
-/

namespace A239896.P15175742523993357663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (Int.tmod (A000523 (n + 1)) (A102821 n)).toNat

end

end A239896.P15175742523993357663

/-! ## A239896.P14671762983969645539

`A004093(A000523(n+1))%A128947(floor(n/2)+2)`
-/

namespace A239896.P14671762983969645539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004093 (A000523 (n + 1)).toNat) (A128947 (⌊(n : ℚ) / 2⌋ + 2).toNat)

end

end A239896.P14671762983969645539

/-! ## A239896.P17771660765233684218

`A004093(A000523(n+1))*A034947(A260897(n+1))`
-/

namespace A239896.P17771660765233684218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (A000523 (n + 1)).toNat * A034947 (A260897 (n + 1)).toNat

end

end A239896.P17771660765233684218

/-!
# A239897: Bisection of A055505.

The programs for A239897, there is no canonical definition to state claims against.
-/

/-! ## A239897.P15476045924419299382

`A055505(2*n)`
-/

namespace A239897.P15476045924419299382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055505 (2 * n)

end

end A239897.P15476045924419299382

/-!
# A239898: Bisection of A055535.

The programs for A239898, there is no canonical definition to state claims against.
-/

/-! ## A239898.P10508880415110774779

`A055535(2*n)`
-/

namespace A239898.P10508880415110774779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055535 (2 * n)

end

end A239898.P10508880415110774779

/-! ## A239898.P15595651799645389427

`∏{e}[A000302(n), A055535(#)]`
-/

namespace A239898.P15595651799645389427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A055535 (Nat.factorization (f1 n).natAbs p)

end

end A239898.P15595651799645389427

/-!
# A239899: a(0)=2, a(1)=5; thereafter a(n) = product of all preceding terms, minus 1.

The programs for A239899, the canonical program `A239899.P2510333977883141226` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239899 has offset 0).

The definition of A239899 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239899.P2510333977883141226

`(a(n-1)+1)*a(n-1)-1` with `a(0)=2, a(1)=5, a(2)=9`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A239899

/-- `(a(n-1)+1)*a(n-1)-1` -/
def P2510333977883141226.Spec : Prop :=
  ∀ n, P2510333977883141226.a n = A239899 n

theorem P2510333977883141226.correct : P2510333977883141226.Spec := by
  intro n
  simp only [A239899]

end A239899

/-! ## A239899.P13336996331923517824

`a(n-1)+a(n-1)²-1` with `a(0)=2, a(1)=5, a(2)=9`
-/

namespace A239899.P13336996331923517824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 9] fun n a =>
  a (n - 1) + (a (n - 1) ^ 2 - 1)

end

end A239899.P13336996331923517824

namespace A239899

/-- `a(n-1)+a(n-1)²-1` -/
def P13336996331923517824.Spec : Prop :=
  ∀ n, P13336996331923517824.a n = A239899 n

theorem P13336996331923517824.correct : P13336996331923517824.Spec := by
  intro n
  simp only [A239899, Nat.add_sub_cancel, A239899.P13336996331923517824.a, A239899.P2510333977883141226.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A239899

