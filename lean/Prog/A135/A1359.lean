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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A135900: Triangle, read by rows equal to the matrix product R^-1*Q, where Q = A135885 and R = A135894; R^-1*Q equals triangle R shifted down one row.

The programs for A135900, there is no canonical definition to state claims against.
-/

/-! ## A135900.P6858837310895240256

`A135894(∑[char[A007401(n+2)]])`
-/

namespace A135900.P6858837310895240256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135894 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135900.P6858837310895240256

/-! ## A135900.P13126370345029410115

`A135894(∑[-(-1%A277919(n))])`
-/

namespace A135900.P13126370345029410115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-1) (A277919 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135894 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A135900.P13126370345029410115

/-! ## A135900.P1835567651210579504

`A135894(A083920(n*A023532(n)))`
-/

namespace A135900.P1835567651210579504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135894 (A083920 ((n : ℤ) * A023532 n).toNat).toNat

end

end A135900.P1835567651210579504

/-! ## A135900.P10731643591606052241

`A135894(A083920(n)%A001497(n))`
-/

namespace A135900.P10731643591606052241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135894 (Int.tmod (A083920 n) (A001497 n)).toNat

end

end A135900.P10731643591606052241

/-! ## A135900.P12110593155288716028

`A135894(A083920(gcd(n, A131431(n))))`
-/

namespace A135900.P12110593155288716028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135894 (A083920 (Int.gcd (n : ℤ) (A131431 n))).toNat

end

end A135900.P12110593155288716028

/-! ## A135900.P465359922098635849

`A135894(A083920(n%A101494(n)²))`
-/

namespace A135900.P465359922098635849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135894 (A083920 (Int.tmod (n : ℤ) (A101494 n ^ 2)).toNat).toNat

end

end A135900.P465359922098635849

/-! ## A135900.P3138280284430270020

`A135894(∑[A023532(n)]-A158388(n))`
-/

namespace A135900.P3138280284430270020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135894 (∑ j ∈ Finset.range (n + 1), f1 j - A158388 n).toNat

end

end A135900.P3138280284430270020

/-! ## A135900.P3887466940077126109

`A135894(∑[A023532(n)]-A178489(n))`
-/

namespace A135900.P3887466940077126109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135894 (∑ j ∈ Finset.range (n + 1), f1 j - A178489 n).toNat

end

end A135900.P3887466940077126109

/-! ## A135900.P4148381271019166802

`A135894(A083920(n*Δ[A083920(n)]))`
-/

namespace A135900.P4148381271019166802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135894 (A083920 ((n : ℤ) * (f1 (n + 1) - f1 n)).toNat).toNat

end

end A135900.P4148381271019166802

/-! ## A135900.P6729406157891600887

`A135894(A083920(n)^Δ[A083920(n)])`
-/

namespace A135900.P6729406157891600887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135894 (SequenceMachineLib.roundAway ((A083920 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A135900.P6729406157891600887

/-!
# A135901: Number of terms in row n of irregular triangle A135879 for n>=0.

The programs for A135901, there is no canonical definition to state claims against.
-/

/-! ## A135901.P1714213363551340014

`ceil((sqrt(a(n-1))+1)²)-2` with `a(0)=1`
-/

namespace A135901.P1714213363551340014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(Real.sqrt (a (n - 1) : ℝ) + 1) ^ 2⌉ - 2

end

end A135901.P1714213363551340014

/-! ## A135901.P3417015725685556509

`ceil(2*sqrt(a(n-1))+a(n-1)-1)` with `a(0)=1`
-/

namespace A135901.P3417015725685556509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈2 * Real.sqrt (a (n - 1) : ℝ) + (a (n - 1) - 1 : ℝ)⌉

end

end A135901.P3417015725685556509

/-! ## A135901.P10681759911664746392

`ceil(2*sqrt(a(n-1))-(1-a(n-1)))` with `a(0)=1`
-/

namespace A135901.P10681759911664746392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈2 * Real.sqrt (a (n - 1) : ℝ) - (1 - a (n - 1) : ℝ)⌉

end

end A135901.P10681759911664746392

/-! ## A135901.P5365862755264650466

`floor(a(n-1)+sqrt(4*a(n-1)-1))` with `a(0)=1`
-/

namespace A135901.P5365862755264650466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) + Real.sqrt (4 * a (n - 1) - 1 : ℝ)⌋

end

end A135901.P5365862755264650466

/-! ## A135901.P2727278494087107031

`2*a(n-1)-floor((1-sqrt(a(n-1)))²)` with `a(0)=1`
-/

namespace A135901.P2727278494087107031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - ⌊(1 - Real.sqrt (a (n - 1) : ℝ)) ^ 2⌋

end

end A135901.P2727278494087107031

/-! ## A135901.P13901995508890865102

`a(n-1)+a(n-1)-floor((1-sqrt(a(n-1)))²)` with `a(0)=1`
-/

namespace A135901.P13901995508890865102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - ⌊(1 - Real.sqrt (a (n - 1) : ℝ)) ^ 2⌋)

end

end A135901.P13901995508890865102

/-! ## A135901.P14625486143195462655

`floor(a(n-1)+sqrt(a(n-1)-1)+sqrt(a(n-1)))` with `a(0)=1`
-/

namespace A135901.P14625486143195462655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) + (Real.sqrt (a (n - 1) - 1 : ℝ) + Real.sqrt (a (n - 1) : ℝ))⌋

end

end A135901.P14625486143195462655

/-! ## A135901.P7665527393569105588

`a(n-1)-floor((1-sqrt(a(n-1)))²-a(n-1))` with `a(0)=1`
-/

namespace A135901.P7665527393569105588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ⌊(1 - Real.sqrt (a (n - 1) : ℝ)) ^ 2 - (a (n - 1) : ℝ)⌋

end

end A135901.P7665527393569105588

/-! ## A135901.P17405534074882886739

`A183569(a(n-1))` with `a(0)=1`
-/

namespace A135901.P17405534074882886739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A183569 (a (n - 1)).toNat

end

end A135901.P17405534074882886739

/-! ## A135901.P14651260564984057886

`A049068(a(n-1))-1` with `a(0)=1`
-/

namespace A135901.P14651260564984057886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A049068 (a (n - 1)).toNat - 1

end

end A135901.P14651260564984057886

/-!
# A135902: Triangle T, read by rows, where column k of T = column 0 of T^(k+1) for k>0, with column 0 of T = column 0 of T^3 shift right.

The programs for A135902, there is no canonical definition to state claims against.
-/

/-! ## A135902.P4645159737181454223

`2*A135876(n)-A011776(29*A135876(n))`
-/

namespace A135902.P4645159737181454223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135876 n - A011776 (29 * A135876 n).toNat

end

end A135902.P4645159737181454223

/-!
# A135903: Column 0 of triangle A135902; also equals column 2 of triangle A135902 (shift right).

The programs for A135903, there is no canonical definition to state claims against.
-/

/-! ## A135903.P50038305326990752

`A135902(∑[n])`
-/

namespace A135903.P50038305326990752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135902 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135903.P50038305326990752

/-! ## A135903.P10875415978512748669

`and(-1, A135902(A000217(n)))`
-/

namespace A135903.P10875415978512748669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A135902 (A000217 n).toNat)

end

end A135903.P10875415978512748669

/-! ## A135903.P11085130317260143689

`and(-1, A135902(A179865(n+1)))`
-/

namespace A135903.P11085130317260143689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A135902 (A179865 (n + 1)).toNat)

end

end A135903.P11085130317260143689

/-! ## A135903.P8101108281041490909

`A135902(A161680(n+1))+char[12]`
-/

namespace A135903.P8101108281041490909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135902 (A161680 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A135903.P8101108281041490909

/-! ## A135903.P11853423115595904923

`gcd(floor(1/(n+1)), A135902(A077368(n+1)))`
-/

namespace A135903.P11853423115595904923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A135902 (A077368 (n + 1)).toNat)

end

end A135903.P11853423115595904923

/-!
# A135904: Column 1 of triangle A135902.

The programs for A135904, there is no canonical definition to state claims against.
-/

/-! ## A135904.P12601743417272330460

`record[A135902(comp[∑[n]])]`
-/

namespace A135904.P12601743417272330460
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135902 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135904.P12601743417272330460

/-! ## A135904.P11544154938258931029

`A135902(∑[n+1]+1)`
-/

namespace A135904.P11544154938258931029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135902 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A135904.P11544154938258931029

/-! ## A135904.P14572971375518583749

`record[A135902(n)*A325592(n)]`
-/

namespace A135904.P14572971375518583749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135902 n * A325592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135904.P14572971375518583749

/-! ## A135904.P13526799021567670968

`record[gcd(A010816(n), A135902(n))]`
-/

namespace A135904.P13526799021567670968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n) (A135902 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135904.P13526799021567670968

/-! ## A135904.P5551293549086866296

`record[and(A108299(n), A135902(n))]`
-/

namespace A135904.P5551293549086866296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108299 n) (A135902 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135904.P5551293549086866296

/-!
# A135905: Column 3 of triangle A135902.

The programs for A135905, there is no canonical definition to state claims against.
-/

/-! ## A135905.P14671707044075615905

`A135902(A167614(n+2))`
-/

namespace A135905.P14671707044075615905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135902 (A167614 (n + 2)).toNat

end

end A135905.P14671707044075615905

/-! ## A135905.P4688701080045162160

`A135902(A141214(n)+6)`
-/

namespace A135905.P4688701080045162160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135902 (A141214 n + 6).toNat

end

end A135905.P4688701080045162160

/-! ## A135905.P18167075099079653503

`A135902(A052905(n)+8)`
-/

namespace A135905.P18167075099079653503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135902 (A052905 n + 8).toNat

end

end A135905.P18167075099079653503

/-!
# A135907: Independence number of commuting graph of alternating group A_n.

The programs for A135907, there is no canonical definition to state claims against.
-/

/-! ## A135907.P10435264308314023686

`A064292(A177205(n))`
-/

namespace A135907.P10435264308314023686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064292 (A177205 n).toNat

end

end A135907.P10435264308314023686

/-! ## A135907.P152603589427251243

`A308117(A100139(n))`
-/

namespace A135907.P152603589427251243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308117 (A100139 n).toNat

end

end A135907.P152603589427251243

/-! ## A135907.P1618912406857586794

`A064292(∑[A241089(n)])`
-/

namespace A135907.P1618912406857586794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064292 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A135907.P1618912406857586794

/-! ## A135907.P7620858503253694084

`A029168(A393181(n+1))`
-/

namespace A135907.P7620858503253694084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029168 (A393181 (n + 1)).toNat

end

end A135907.P7620858503253694084

/-! ## A135907.P17344480271886641674

`A064292(A380371(n+1))`
-/

namespace A135907.P17344480271886641674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064292 (A380371 (n + 1)).toNat

end

end A135907.P17344480271886641674

/-!
# A135908: Clique number of commuting graph of symmetric group S_n.

The programs for A135908, the canonical program `A135908.P10742750767115336838` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135908 has offset 0).

The definition of A135908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135908.P10742750767115336838

`A000792(n)-(char[2]+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135908

/-- `A000792(n)-(char[2]+1)` -/
def P10742750767115336838.Spec : Prop :=
  ∀ n, P10742750767115336838.a n = A135908 n

theorem P10742750767115336838.correct : P10742750767115336838.Spec := by
  intro n
  simp only [A135908]

end A135908

/-! ## A135908.P9749244572582651574

`abs(A000792(n)-A329684(n))`
-/

namespace A135908.P9749244572582651574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000792 n - A329684 n|

end

end A135908.P9749244572582651574

namespace A135908

/-- `abs(A000792(n)-A329684(n))` -/
def P9749244572582651574.Spec : Prop :=
  ∀ n, P9749244572582651574.a n = A135908 n

end A135908

/-! ## A135908.P12126004261172160678

`A300547(A003172(n+2))+A000792(n)`
-/

namespace A135908.P12126004261172160678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300547 (A003172 (n + 2)).toNat + A000792 n

end

end A135908.P12126004261172160678

namespace A135908

/-- `A300547(A003172(n+2))+A000792(n)` -/
def P12126004261172160678.Spec : Prop :=
  ∀ n, P12126004261172160678.a n = A135908 n

end A135908

/-! ## A135908.P4518039427378029865

`a(n-1)+3*a(n-3)-3*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2, a(4)=3, a(5)=5, a(6)=8`
-/

namespace A135908.P4518039427378029865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 2, 3, 5, 8] fun n a =>
  a (n - 1) + 3 * a (n - 3) - 3 * a (n - 4)

end

end A135908.P4518039427378029865

namespace A135908

/-- `a(n-1)+3*a(n-3)-3*a(n-4)` -/
def P4518039427378029865.Spec : Prop :=
  ∀ n, P4518039427378029865.a n = A135908 n

end A135908

/-! ## A135908.P17063215796765057469

`record[A155118(n)]+C(2, n+2)-A329684(n)`
-/

namespace A135908.P17063215796765057469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (Nat.choose 2 (n + 2) : ℤ) - A329684 n

end

end A135908.P17063215796765057469

namespace A135908

/-- `record[A155118(n)]+C(2, n+2)-A329684(n)` -/
def P17063215796765057469.Spec : Prop :=
  ∀ n, P17063215796765057469.a n = A135908 n

end A135908

/-! ## A135908.P13052262533206137115

`A000007(n)+record[A155118(n)]-A329684(n)`
-/

namespace A135908.P13052262533206137115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A329684 n

end

end A135908.P13052262533206137115

namespace A135908

/-- `A000007(n)+record[A155118(n)]-A329684(n)` -/
def P13052262533206137115.Spec : Prop :=
  ∀ n, P13052262533206137115.a n = A135908 n

end A135908

/-! ## A135908.P8548859252101736357

`A192490(2*(n+1))+record[A155118(n)]-A329684(n)`
-/

namespace A135908.P8548859252101736357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192490 (2 * (n + 1)) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A329684 n

end

end A135908.P8548859252101736357

namespace A135908

/-- `A192490(2*(n+1))+record[A155118(n)]-A329684(n)` -/
def P8548859252101736357.Spec : Prop :=
  ∀ n, P8548859252101736357.a n = A135908 n

end A135908

/-! ## A135908.P14060656520130219270

`(A000792(n)-1)%A048522(n)`
-/

namespace A135908.P14060656520130219270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000792 n - 1) (A048522 n)

end

end A135908.P14060656520130219270

namespace A135908

/-- `(A000792(n)-1)%A048522(n)` -/
def P14060656520130219270.Spec : Prop :=
  ∀ n, P14060656520130219270.a n = A135908 n

end A135908

/-! ## A135908.P889863432848102212

`A064364(A034891(n))-A329684(n)`
-/

namespace A135908.P889863432848102212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064364 (A034891 n).toNat - A329684 n

end

end A135908.P889863432848102212

namespace A135908

/-- `A064364(A034891(n))-A329684(n)` -/
def P889863432848102212.Spec : Prop :=
  ∀ n, P889863432848102212.a n = A135908 n

end A135908

/-!
# A135909: Clique number of commuting graph of alternating group A_n.

The programs for A135909, the canonical program `A135909.P14090623346291890360` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135909 has offset 0).

The definition of A135909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 628 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135909.P14090623346291890360

`a(n-1)+3*a(n-3)-3*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2, a(4)=3, a(5)=4, a(6)=8, a(7)=11, a(8)=15, a(9)=26`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135909

/-- `a(n-1)+3*a(n-3)-3*a(n-4)` -/
def P14090623346291890360.Spec : Prop :=
  ∀ n, P14090623346291890360.a n = A135909 n

theorem P14090623346291890360.correct : P14090623346291890360.Spec := by
  intro n
  simp only [A135909]

end A135909

/-! ## A135909.P17794723528143883775

`A100054(∑[A025428(∑[n+1])])`
-/

namespace A135909.P17794723528143883775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100054 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A135909.P17794723528143883775

namespace A135909

/-- `A100054(∑[A025428(∑[n+1])])` -/
def P17794723528143883775.Spec : Prop :=
  ∀ n, P17794723528143883775.a n = A135909 n

end A135909

/-! ## A135909.P6267079333771351112

`A219055(A054423(n))+A211536(n)`
-/

namespace A135909.P6267079333771351112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219055 (A054423 n).toNat + A211536 n

end

end A135909.P6267079333771351112

namespace A135909

/-- `A219055(A054423(n))+A211536(n)` -/
def P6267079333771351112.Spec : Prop :=
  ∀ n, P6267079333771351112.a n = A135909 n

end A135909

/-! ## A135909.P16567633067568618233

`A000792(n)-A067029(A031129(n))`
-/

namespace A135909.P16567633067568618233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 n - A067029 (A031129 n).toNat

end

end A135909.P16567633067568618233

namespace A135909

/-- `A000792(n)-A067029(A031129(n))` -/
def P16567633067568618233.Spec : Prop :=
  ∀ n, P16567633067568618233.a n = A135909 n

end A135909

/-!
# A135913: a(n) = 2+4*2^n-3^n.

The programs for A135913, the canonical program `A135913.P14936903886076007514` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135913 has offset 0).

The definition of A135913 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2+4*2^n-3^n` (program `A135913.P14936903886076007514`, by `A135913.P14936903886076007514.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135913.P14936903886076007514

`2+4*2^n-3^n`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135913

/-- `2+4*2^n-3^n` -/
def P14936903886076007514.Spec : Prop :=
  ∀ n, P14936903886076007514.a n = A135913 n

theorem P14936903886076007514.correct : P14936903886076007514.Spec := by
  intro n
  simp only [A135913]

end A135913

/-! ## A135913.P8367919773542506796

`∑[3*a(n-1)-2^n]` with `a(0)=5, a(1)=2`
-/

namespace A135913.P8367919773542506796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 2] fun n f1 =>
  3 * f1 (n - 1) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135913.P8367919773542506796

namespace A135913

/-- `∑[3*a(n-1)-2^n]` -/
def P8367919773542506796.Spec : Prop :=
  ∀ n, P8367919773542506796.a n = A135913 n

end A135913

/-! ## A135913.P8261760069235484710

`or(1, 1-A214091(n))`
-/

namespace A135913.P8261760069235484710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (1 - A214091 n)

end

end A135913.P8261760069235484710

namespace A135913

/-- `or(1, 1-A214091(n))` -/
def P8261760069235484710.Spec : Prop :=
  ∀ n, P8261760069235484710.a n = A135913 n

end A135913

/-! ## A135913.P6158634802265604829

`or(1, A020737(n)-A000244(n))`
-/

namespace A135913.P6158634802265604829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A020737 n - A000244 n)

end

end A135913.P6158634802265604829

namespace A135913

/-- `or(1, A020737(n)-A000244(n))` -/
def P6158634802265604829.Spec : Prop :=
  ∀ n, P6158634802265604829.a n = A135913 n

end A135913

/-! ## A135913.P4075372274232132106

`Δ[2*n-(A115098(n)-A020737(n))]`
-/

namespace A135913.P4075372274232132106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (A115098 n - A020737 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135913.P4075372274232132106

namespace A135913

/-- `Δ[2*n-(A115098(n)-A020737(n))]` -/
def P4075372274232132106.Spec : Prop :=
  ∀ n, P4075372274232132106.a n = A135913 n

end A135913

/-! ## A135913.P7680622909322000812

`Δ[2*n-(A099754(n)-A153894(n))]`
-/

namespace A135913.P7680622909322000812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (A099754 n - A153894 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135913.P7680622909322000812

namespace A135913

/-- `Δ[2*n-(A099754(n)-A153894(n))]` -/
def P7680622909322000812.Spec : Prop :=
  ∀ n, P7680622909322000812.a n = A135913 n

end A135913

/-! ## A135913.P7333475622525562561

`Δ[2*n+1-(A115098(n)-A020707(n))]`
-/

namespace A135913.P7333475622525562561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (A115098 n - A020707 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135913.P7333475622525562561

namespace A135913

/-- `Δ[2*n+1-(A115098(n)-A020707(n))]` -/
def P7333475622525562561.Spec : Prop :=
  ∀ n, P7333475622525562561.a n = A135913 n

end A135913

/-! ## A135913.P5845422919996327036

`(2-A214091(n))%A020737(n)²`
-/

namespace A135913.P5845422919996327036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - A214091 n) (A020737 n ^ 2)

end

end A135913.P5845422919996327036

namespace A135913

/-- `(2-A214091(n))%A020737(n)²` -/
def P5845422919996327036.Spec : Prop :=
  ∀ n, P5845422919996327036.a n = A135913 n

end A135913

/-!
# A135914: a(n) = 4*3^n - 2*2^n - 1.

The programs for A135914, the canonical program `A135914.P12331733538673637656` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135914 has offset 0).

The definition of A135914 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*3^n-2*2^n-1` (program `A135914.P12331733538673637656`, by `A135914.P12331733538673637656.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135914.P12331733538673637656

`4*3^n-2*2^n-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135914

/-- `4*3^n-2*2^n-1` -/
def P12331733538673637656.Spec : Prop :=
  ∀ n, P12331733538673637656.a n = A135914 n

theorem P12331733538673637656.correct : P12331733538673637656.Spec := by
  intro n
  simp only [A135914]

end A135914

/-! ## A135914.P2533082954424307544

`∑[ogf((1+x-4x^2)/(1-5x+6x^2))]`
-/

namespace A135914.P2533082954424307544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -4] [1, -5, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135914.P2533082954424307544

namespace A135914

/-- `∑[ogf((1+x-4x^2)/(1-5x+6x^2))]` -/
def P2533082954424307544.Spec : Prop :=
  ∀ n, P2533082954424307544.a n = A135914 n

end A135914

/-! ## A135914.P1144676677049513432

`∑[A036453(n+1)*A053581(n)]`
-/

namespace A135914.P1144676677049513432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A053581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135914.P1144676677049513432

namespace A135914

/-- `∑[A036453(n+1)*A053581(n)]` -/
def P1144676677049513432.Spec : Prop :=
  ∀ n, P1144676677049513432.a n = A135914 n

end A135914

/-! ## A135914.P11108409806942108924

`∑[2*A003946(n)-A000079(n)]`
-/

namespace A135914.P11108409806942108924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003946 n - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135914.P11108409806942108924

namespace A135914

/-- `∑[2*A003946(n)-A000079(n)]` -/
def P11108409806942108924.Spec : Prop :=
  ∀ n, P11108409806942108924.a n = A135914 n

end A135914

/-! ## A135914.P5356891687557078535

`∑[A000032(C(2, n+2))*A053581(n)]`
-/

namespace A135914.P5356891687557078535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A053581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135914.P5356891687557078535

namespace A135914

/-- `∑[A000032(C(2, n+2))*A053581(n)]` -/
def P5356891687557078535.Spec : Prop :=
  ∀ n, P5356891687557078535.a n = A135914 n

end A135914

/-! ## A135914.P10227908649506195623

`Δ[A002783(n)-n]`
-/

namespace A135914.P10227908649506195623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002783 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135914.P10227908649506195623

namespace A135914

/-- `Δ[A002783(n)-n]` -/
def P10227908649506195623.Spec : Prop :=
  ∀ n, P10227908649506195623.a n = A135914 n

end A135914

/-! ## A135914.P931933645401177254

`Δ[A056182(n)-n]`
-/

namespace A135914.P931933645401177254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056182 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135914.P931933645401177254

namespace A135914

/-- `Δ[A056182(n)-n]` -/
def P931933645401177254.Spec : Prop :=
  ∀ n, P931933645401177254.a n = A135914 n

end A135914

/-! ## A135914.P6913409645027561225

`Δ[2*A001047(n)-n]`
-/

namespace A135914.P6913409645027561225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001047 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135914.P6913409645027561225

namespace A135914

/-- `Δ[2*A001047(n)-n]` -/
def P6913409645027561225.Spec : Prop :=
  ∀ n, P6913409645027561225.a n = A135914 n

end A135914

/-! ## A135914.P17518589085116666347

`Δ[A024000(n)+A002783(n)]`
-/

namespace A135914.P17518589085116666347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + A002783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135914.P17518589085116666347

namespace A135914

/-- `Δ[A024000(n)+A002783(n)]` -/
def P17518589085116666347.Spec : Prop :=
  ∀ n, P17518589085116666347.a n = A135914 n

end A135914

/-! ## A135914.P9703932601064138164

`Δ[A027649(n)-A052944(n)]`
-/

namespace A135914.P9703932601064138164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027649 n - A052944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135914.P9703932601064138164

namespace A135914

/-- `Δ[A027649(n)-A052944(n)]` -/
def P9703932601064138164.Spec : Prop :=
  ∀ n, P9703932601064138164.a n = A135914 n

end A135914

/-! ## A135914.P11723489795634885589

`Δ[A132308(n)-A000079(n+1)]`
-/

namespace A135914.P11723489795634885589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132308 n - A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135914.P11723489795634885589

namespace A135914

/-- `Δ[A132308(n)-A000079(n+1)]` -/
def P11723489795634885589.Spec : Prop :=
  ∀ n, P11723489795634885589.a n = A135914 n

end A135914

/-! ## A135914.P13841422761649064730

`Δ[A132308(n)-2*A000079(n)]`
-/

namespace A135914.P13841422761649064730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132308 n - 2 * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135914.P13841422761649064730

namespace A135914

/-- `Δ[A132308(n)-2*A000079(n)]` -/
def P13841422761649064730.Spec : Prop :=
  ∀ n, P13841422761649064730.a n = A135914 n

end A135914

/-! ## A135914.P16562011646721023146

`Δ[abs(n-2*(A024023(n)-A000225(n)))]`
-/

namespace A135914.P16562011646721023146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - 2 * (A024023 n - A000225 n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135914.P16562011646721023146

namespace A135914

/-- `Δ[abs(n-2*(A024023(n)-A000225(n)))]` -/
def P16562011646721023146.Spec : Prop :=
  ∀ n, P16562011646721023146.a n = A135914 n

end A135914

/-!
# A135916: a(n) = (n^4 - 10*n^2 + 15*n - 6)/2.

The programs for A135916, the canonical program `A135916.P10363915097451602324` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135916 has offset 1).

The definition of A135916 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^4-10*(n+1)²+15*(n+1)-6)/2` (program `A135916.P9313129752644534029`, by `A135916.P9313129752644534029.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135916.P9313129752644534029

`((n+1)^4-10*(n+1)²+15*(n+1)-6)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135916.P9313129752644534029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 4 : ℤ) - (10 * (n + 1) ^ 2 : ℤ) + (15 * (n + 1) : ℤ) - 6 : ℚ) / 2

end

end A135916.P9313129752644534029

namespace A135916

/-- `((n+1)^4-10*(n+1)²+15*(n+1)-6)/2` -/
def P9313129752644534029.Spec : Prop :=
  ∀ n, P9313129752644534029.a n = (A135916 (n + 1) : ℚ)

theorem P9313129752644534029.correct : P9313129752644534029.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A135916, Nat.add_sub_cancel, A135916.P9313129752644534029.a, A135916.P10363915097451602324.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A135916, Nat.add_sub_cancel, A135916.P9313129752644534029.a, A135916.P10363915097451602324.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A135916

/-! ## A135916.P10363915097451602324

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=15, a(3)=75, a(4)=222`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135916

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P10363915097451602324.Spec : Prop :=
  ∀ n, P10363915097451602324.a n = A135916 (n + 1)

theorem P10363915097451602324.correct : P10363915097451602324.Spec := by
  intro n
  simp only [A135916, Nat.add_sub_cancel]

end A135916

/-! ## A135916.P6388174157997558744

`(n*(n+5)+1)*C(n, 2)`
-/

namespace A135916.P6388174157997558744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * (n + 5) + 1) * Nat.choose n 2

end

end A135916.P6388174157997558744

namespace A135916

/-- `(n*(n+5)+1)*C(n, 2)` -/
def P6388174157997558744.Spec : Prop :=
  ∀ n, (P6388174157997558744.a n : ℤ) = A135916 (n + 1)

end A135916

/-! ## A135916.P3267085056928214169

`∑[(n*(n+2)-3)*A004273(n)]`
-/

namespace A135916.P3267085056928214169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (n + 2) : ℤ) - 3) * A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135916.P3267085056928214169

namespace A135916

/-- `∑[(n*(n+2)-3)*A004273(n)]` -/
def P3267085056928214169.Spec : Prop :=
  ∀ n, P3267085056928214169.a n = A135916 (n + 1)

end A135916

/-! ## A135916.P997408412553607302

`∑[∑[6*n²]]-A000217(3*n)`
-/

namespace A135916.P997408412553607302
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000217 (3 * n)

end

end A135916.P997408412553607302

namespace A135916

/-- `∑[∑[6*n²]]-A000217(3*n)` -/
def P997408412553607302.Spec : Prop :=
  ∀ n, P997408412553607302.a n = A135916 (n + 1)

end A135916

/-! ## A135916.P12183763111100005017

`A171129(n)+A006597(n)`
-/

namespace A135916.P12183763111100005017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171129 n + A006597 n

end

end A135916.P12183763111100005017

namespace A135916

/-- `A171129(n)+A006597(n)` -/
def P12183763111100005017.Spec : Prop :=
  ∀ n, P12183763111100005017.a n = A135916 (n + 1)

end A135916

/-! ## A135916.P14110606568053695395

`A302710(n)-A329523(n)`
-/

namespace A135916.P14110606568053695395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302710 n - A329523 n

end

end A135916.P14110606568053695395

namespace A135916

/-- `A302710(n)-A329523(n)` -/
def P14110606568053695395.Spec : Prop :=
  ∀ n, P14110606568053695395.a n = A135916 (n + 1)

end A135916

/-! ## A135916.P18293165290853713877

`A015237(n)+∑[A015238(n)]`
-/

namespace A135916.P18293165290853713877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015237 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135916.P18293165290853713877

namespace A135916

/-- `A015237(n)+∑[A015238(n)]` -/
def P18293165290853713877.Spec : Prop :=
  ∀ n, P18293165290853713877.a n = A135916 (n + 1)

end A135916

/-! ## A135916.P4079959277757002835

`A058310(n)-A079273(n+1)`
-/

namespace A135916.P4079959277757002835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058310 n - A079273 (n + 1)

end

end A135916.P4079959277757002835

namespace A135916

/-- `A058310(n)-A079273(n+1)` -/
def P4079959277757002835.Spec : Prop :=
  ∀ n, P4079959277757002835.a n = A135916 (n + 1)

end A135916

/-! ## A135916.P6068133884416335551

`A083374(n+1)-A081266(n)`
-/

namespace A135916.P6068133884416335551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083374 (n + 1) - A081266 n

end

end A135916.P6068133884416335551

namespace A135916

/-- `A083374(n+1)-A081266(n)` -/
def P6068133884416335551.Spec : Prop :=
  ∀ n, P6068133884416335551.a n = A135916 (n + 1)

end A135916

/-! ## A135916.P15767991242947696327

`A172225(n+1)-A005476(n)`
-/

namespace A135916.P15767991242947696327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172225 (n + 1) - A005476 n

end

end A135916.P15767991242947696327

namespace A135916

/-- `A172225(n+1)-A005476(n)` -/
def P15767991242947696327.Spec : Prop :=
  ∀ n, P15767991242947696327.a n = A135916 (n + 1)

end A135916

/-! ## A135916.P23978727364873835

`A172132(n+1)-A056115(n)`
-/

namespace A135916.P23978727364873835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172132 (n + 1) - A056115 n

end

end A135916.P23978727364873835

namespace A135916

/-- `A172132(n+1)-A056115(n)` -/
def P23978727364873835.Spec : Prop :=
  ∀ n, P23978727364873835.a n = A135916 (n + 1)

end A135916

/-! ## A135916.P14212742797972255181

`A201243(n+1)-A147875(n)`
-/

namespace A135916.P14212742797972255181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201243 (n + 1) - A147875 n

end

end A135916.P14212742797972255181

namespace A135916

/-- `A201243(n+1)-A147875(n)` -/
def P14212742797972255181.Spec : Prop :=
  ∀ n, P14212742797972255181.a n = A135916 (n + 1)

end A135916

/-! ## A135916.P11882089713157390558

`A188667(n+1)+A188667(n)-A045943(n)`
-/

namespace A135916.P11882089713157390558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188667 (n + 1) + (A188667 n - A045943 n)

end

end A135916.P11882089713157390558

namespace A135916

/-- `A188667(n+1)+A188667(n)-A045943(n)` -/
def P11882089713157390558.Spec : Prop :=
  ∀ n, P11882089713157390558.a n = A135916 (n + 1)

end A135916

/-! ## A135916.P5559970707453249662

`A050534(2*n+1)-A045943(n²)`
-/

namespace A135916.P5559970707453249662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 (2 * n + 1) - A045943 (n ^ 2)

end

end A135916.P5559970707453249662

namespace A135916

/-- `A050534(2*n+1)-A045943(n²)` -/
def P5559970707453249662.Spec : Prop :=
  ∀ n, P5559970707453249662.a n = A135916 (n + 1)

end A135916

/-!
# A135917: a(n) = (n^6 - 30*n^4 + 45*n^3 + 206*n^2 - 576*n + 384)/6.

The programs for A135917, the canonical program `A135917.P3249757232128085178` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135917 has offset 2).

The definition of A135917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135917.P3249757232128085178

`((n+2)^6-30*(n+2)^4+45*(n+2)^3+206*(n+2)²-576*(n+2)+384)/6`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135917

/-- `((n+2)^6-30*(n+2)^4+45*(n+2)^3+206*(n+2)²-576*(n+2)+384)/6` -/
def P3249757232128085178.Spec : Prop :=
  ∀ n, P3249757232128085178.a n = (A135917 (n + 2) : ℚ)

end A135917

/-!
# A135918: Genus of stage-n Menger sponge.

The programs for A135918, the canonical program `A135918.P4491563837841267411` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135918 has offset 0).

The definition of A135918 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135918.P4491563837841267411

`29*a(n-1)-188*a(n-2)+160*a(n-3)` with `a(0)=0, a(1)=5, a(2)=81`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135918

/-- `29*a(n-1)-188*a(n-2)+160*a(n-3)` -/
def P4491563837841267411.Spec : Prop :=
  ∀ n, P4491563837841267411.a n = A135918 n

theorem P4491563837841267411.correct : P4491563837841267411.Spec := by
  intro n
  simp only [A135918]

end A135918

/-! ## A135918.P14174553235490354135

`(21*20^n+38*8^n-59)/133`
-/

namespace A135918.P14174553235490354135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((21 * 20 ^ n + 38 * 8 ^ n : ℤ) - 59 : ℚ) / 133

end

end A135918.P14174553235490354135

namespace A135918

/-- `(21*20^n+38*8^n-59)/133` -/
def P14174553235490354135.Spec : Prop :=
  ∀ n, P14174553235490354135.a n = (A135918 n : ℚ)

theorem P14174553235490354135.correct : P14174553235490354135.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A135918, Nat.add_sub_cancel, A135918.P14174553235490354135.a, A135918.P4491563837841267411.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A135918, Nat.add_sub_cancel, A135918.P14174553235490354135.a, A135918.P4491563837841267411.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A135918

/-!
# A135919: Chromatic number of stage-n Menger sponge.

The programs for A135919, the canonical program `A135919.P16183802242739094190` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135919 has offset 0).

The definition of A135919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135919.P16183802242739094190

`floor((7+sqrt(1+48*(21*20^n+38*8^n-59)/133))/2)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135919

/-- `floor((7+sqrt(1+48*(21*20^n+38*8^n-59)/133))/2)` -/
def P16183802242739094190.Spec : Prop :=
  ∀ n, P16183802242739094190.a n = A135919 n

theorem P16183802242739094190.correct : P16183802242739094190.Spec := by
  intro n
  simp only [A135919]

end A135919

/-!
# A135920: O.g.f.: A(x) = Sum_{n>=0} x^n / Product_{k=0..n} (1 - k^2*x).

The programs for A135920, there is no canonical definition to state claims against.
-/

/-! ## A135920.P8651877778136343366

`A395022(A004273(n))`
-/

namespace A135920.P8651877778136343366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395022 (A004273 n).toNat

end

end A135920.P8651877778136343366

/-! ## A135920.P4540338381961364153

`A395022(A163985(n))`
-/

namespace A135920.P4540338381961364153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395022 (A163985 n).toNat

end

end A135920.P4540338381961364153

/-! ## A135920.P10756821429579236942

`A352279(2*n)/A000302(n)`
-/

namespace A135920.P10756821429579236942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352279 (2 * n) : ℚ) / (A000302 n : ℚ)

end

end A135920.P10756821429579236942

/-! ## A135920.P6993416272347435067

`A369527(A212342(n))`
-/

namespace A135920.P6993416272347435067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369527 (A212342 n).toNat

end

end A135920.P6993416272347435067

/-! ## A135920.P10253125075337837860

`A369595(eq[1, A037027(n)])`
-/

namespace A135920.P10253125075337837860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A135920.P10253125075337837860

/-!
# A135921: O.g.f.: A(x) = Sum_{n>=0} x^n / Product_{k=0..n} (1 - k*(k+1)*x).

The programs for A135921, there is no canonical definition to state claims against.
-/

/-! ## A135921.P9244460602890357935

`A130497(A143889(n))`
-/

namespace A135921.P9244460602890357935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 (A143889 n).toNat

end

end A135921.P9244460602890357935

/-! ## A135921.P1517501842112311636

`A345439(A072597(n))`
-/

namespace A135921.P1517501842112311636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345439 (A072597 n).toNat

end

end A135921.P1517501842112311636

/-!
# A135922: Inverse binomial transform of A006116, which is the sum of Gaussian binomial coefficients [n,k] for q=2.

The programs for A135922, there is no canonical definition to state claims against.
-/

/-! ## A135922.P12835102403417252357

`A329154(∑[n])`
-/

namespace A135922.P12835102403417252357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329154 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135922.P12835102403417252357

/-! ## A135922.P10134923169090318489

`A329154(A000217(n))+char[10]`
-/

namespace A135922.P10134923169090318489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329154 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A135922.P10134923169090318489

/-! ## A135922.P11121580386845599767

`A329154(record[C(n, 2)-n]-n)+A070105(n+1)`
-/

namespace A135922.P11121580386845599767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329154 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat + A070105 (n + 1)

end

end A135922.P11121580386845599767

/-! ## A135922.P9847872958747235358

`A329154(A000217(n))*A334549(n)`
-/

namespace A135922.P9847872958747235358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329154 (A000217 n).toNat * A334549 n

end

end A135922.P9847872958747235358

/-! ## A135922.P11597990005263034870

`A329154(A000217(n))*A355588(n)`
-/

namespace A135922.P11597990005263034870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329154 (A000217 n).toNat * A355588 n

end

end A135922.P11597990005263034870

/-!
# A135925: G.f.: (x^2+x-1)*(1+2*x+S)*(1-5*x+2*x^2+(3*x-1)*S)^2*(-1+3*x+2*x^2+(1-x)*S), where S=sqrt(1-4*x).

The programs for A135925, there is no canonical definition to state claims against.
-/

/-! ## A135925.P17570140888174156626

`A263444(or(4, A148494(n)))`
-/

namespace A135925.P17570140888174156626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263444 (Int.lor 4 (A148494 n)).toNat

end

end A135925.P17570140888174156626

/-! ## A135925.P7349821069191059522

`16*A193403(A151972(3*n+2))`
-/

namespace A135925.P7349821069191059522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A193403 (A151972 (3 * n + 2)).toNat

end

end A135925.P7349821069191059522

/-! ## A135925.P2319668909420418617

`A166589(∑{d}[A138082(2*n+1), #])`
-/

namespace A135925.P2319668909420418617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138082 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166589 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A135925.P2319668909420418617

/-! ## A135925.P14036509325642369155

`A025442(A000110(n))*A077966(n)`
-/

namespace A135925.P14036509325642369155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (A000110 n).toNat * A077966 n

end

end A135925.P14036509325642369155

/-! ## A135925.P8561845461260195930

`A339707(n+1)*A392370(A335548(n))`
-/

namespace A135925.P8561845461260195930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339707 (n + 1) * A392370 (A335548 n).toNat

end

end A135925.P8561845461260195930

/-!
# A135926: G.f.: C_{2,o}(y) - see p. 158 of Fan reference.

The programs for A135926, there is no canonical definition to state claims against.
-/

/-! ## A135926.P7468824824607978688

`A248813(A057588(n+1))+A074547(n)`
-/

namespace A135926.P7468824824607978688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248813 (A057588 (n + 1)).toNat + A074547 n

end

end A135926.P7468824824607978688

/-!
# A135927: a(n) = a(n-1)^2 - 2 with a(1) = 10.

The programs for A135927, the canonical program `A135927.P15823967670944172979` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135927 has offset 1).

The definition of A135927 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-2` (program `A135927.P15823967670944172979`, by `A135927.P15823967670944172979.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135927.P15823967670944172979

`a(n-1)²-2` with `a(0)=10`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135927

/-- `a(n-1)²-2` -/
def P15823967670944172979.Spec : Prop :=
  ∀ n, P15823967670944172979.a n = A135927 (n + 1)

theorem P15823967670944172979.correct : P15823967670944172979.Spec := by
  intro n
  simp only [A135927, Nat.add_sub_cancel]

end A135927

/-! ## A135927.P7147789620975494665

`root(a(n-1), 1/2)-2` with `a(0)=10`
-/

namespace A135927.P7147789620975494665
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [10] fun n a =>
  a (n - 1) ^ (1 / ((1 : ℚ) / 2 : ℝ)) - 2

end

end A135927.P7147789620975494665

namespace A135927

/-- `root(a(n-1), 1/2)-2` -/
def P7147789620975494665.Spec : Prop :=
  ∀ n, P7147789620975494665.a n = (A135927 (n + 1) : ℝ)

end A135927

/-! ## A135927.P3043517989530811430

`2*A084765(n+1)`
-/

namespace A135927.P3043517989530811430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084765 (n + 1)

end

end A135927.P3043517989530811430

namespace A135927

/-- `2*A084765(n+1)` -/
def P3043517989530811430.Spec : Prop :=
  ∀ n, P3043517989530811430.a n = A135927 (n + 1)

end A135927

/-!
# A135928: Digital roots of the Mersenne primes.

The programs for A135928, there is no canonical definition to state claims against.
-/

/-! ## A135928.P2209153835306169390

`dr(A066538(n+1))`
-/

namespace A135928.P2209153835306169390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A066538 (n + 1))

end

end A135928.P2209153835306169390

/-! ## A135928.P9363590190386969760

`A066538(C(n+1, n))%9`
-/

namespace A135928.P9363590190386969760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066538 (Nat.choose (n + 1) n)) 9

end

end A135928.P9363590190386969760

/-! ## A135928.P9857353145540803733

`A066538(Δ[n²]-n)%9`
-/

namespace A135928.P9857353145540803733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066538 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat) 9

end

end A135928.P9857353145540803733

/-! ## A135928.P3946943305108952131

`dr(A000225(A126058(n+1)))`
-/

namespace A135928.P3946943305108952131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000225 (A126058 (n + 1)).toNat)

end

end A135928.P3946943305108952131

/-! ## A135928.P17996112895636805861

`dr(A000225(A233008(n+1)))`
-/

namespace A135928.P17996112895636805861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000225 (A233008 (n + 1)).toNat)

end

end A135928.P17996112895636805861

/-!
# A135929: Triangle read by rows: row n gives coefficients of polynomial P_n(x)= U_{n}(x,1) + 3 * U_{n-2}(x,1) where U is the Chebyshev polynomial of the second kind, in order of decreasing exponents.

The programs for A135929, there is no canonical definition to state claims against.
-/

/-! ## A135929.P17075751478082083447

`A137276(∑[2*n]%A080036(n))`
-/

namespace A135929.P17075751478082083447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137276 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A080036 n)).toNat

end

end A135929.P17075751478082083447

/-! ## A135929.P11897279708083403274

`A137276(A061579(n))`
-/

namespace A135929.P11897279708083403274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137276 (A061579 n).toNat

end

end A135929.P11897279708083403274

/-! ## A135929.P11346382671273820348

`A192011(A028310(n))-A053119(n)`
-/

namespace A135929.P11346382671273820348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192011 (A028310 n).toNat - A053119 n

end

end A135929.P11346382671273820348

/-! ## A135929.P13410541475056273112

`A192011(A000007(n)+n)-A053119(n)`
-/

namespace A135929.P13410541475056273112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192011 (A000007 n + (n : ℤ)).toNat - A053119 n

end

end A135929.P13410541475056273112

/-! ## A135929.P16163150675217334102

`A192011(A028310(n))-A049310(A061579(n))`
-/

namespace A135929.P16163150675217334102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192011 (A028310 n).toNat - A049310 (A061579 n).toNat

end

end A135929.P16163150675217334102

/-! ## A135929.P6359597399316280980

`A192011(A028310(n))-A259875(A004202(n+1))`
-/

namespace A135929.P6359597399316280980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192011 (A028310 n).toNat - A259875 (A004202 (n + 1)).toNat

end

end A135929.P6359597399316280980

/-! ## A135929.P1147032008227249348

`A192011(A066182(n+1))-A053119(n)`
-/

namespace A135929.P1147032008227249348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192011 (A066182 (n + 1)).toNat - A053119 n

end

end A135929.P1147032008227249348

/-! ## A135929.P18249202711132966183

`A192011(A066182(n+1))-A049310(A061579(n))`
-/

namespace A135929.P18249202711132966183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192011 (A066182 (n + 1)).toNat - A049310 (A061579 n).toNat

end

end A135929.P18249202711132966183

/-! ## A135929.P6203252833827620884

`A192011(A066182(n+1))-A259875(A004202(n+1))`
-/

namespace A135929.P6203252833827620884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192011 (A066182 (n + 1)).toNat - A259875 (A004202 (n + 1)).toNat

end

end A135929.P6203252833827620884

/-! ## A135929.P7822874447477862963

`A194084(n)-A192011(n)`
-/

namespace A135929.P7822874447477862963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194084 n - A192011 n

end

end A135929.P7822874447477862963

/-!
# A135930: Primes whose integer square root is also prime.

The programs for A135930, the canonical program `A135930.P11046025906780650624` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135930 has offset 1).

The definition of A135930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1849 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135930.P15066805487305001036

`p?[A267016(n+4)]`
-/

namespace A135930.P15066805487305001036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267016 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135930.P15066805487305001036

namespace A135930

/-- `p?[A267016(n+4)]` -/
def P15066805487305001036.Spec : Prop :=
  ∀ n, P15066805487305001036.a n = A135930 (n + 1)

end A135930

/-! ## A135930.P1612973395033694269

`∩[A215848(n+1), A267016(n+1)]`
-/

namespace A135930.P1612973395033694269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135930.P1612973395033694269

namespace A135930

/-- `∩[A215848(n+1), A267016(n+1)]` -/
def P1612973395033694269.Spec : Prop :=
  ∀ n, (P1612973395033694269.a n : ℤ) = A135930 (n + 1)

end A135930

/-! ## A135930.P11046025906780650624

`p?[A000040(n+1)*A010051(A000006(n+1))]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A135930

/-- `p?[A000040(n+1)*A010051(A000006(n+1))]` -/
def P11046025906780650624.Spec : Prop :=
  ∀ n, P11046025906780650624.a n = A135930 (n + 1)

theorem P11046025906780650624.correct : P11046025906780650624.Spec := by
  intro n
  simp only [A135930, Nat.add_sub_cancel]

end A135930

/-! ## A135930.P3618763262880313350

`p?[(n+1)*A001222(floor(sqrt(n+1)))]`
-/

namespace A135930.P3618763262880313350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (Nat.sqrt (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135930.P3618763262880313350

namespace A135930

/-- `p?[(n+1)*A001222(floor(sqrt(n+1)))]` -/
def P3618763262880313350.Spec : Prop :=
  ∀ n, P3618763262880313350.a n = A135930 (n + 1)

end A135930

/-! ## A135930.P8332782804221908118

`filter[A267016(n+1), A171387(#)]`
-/

namespace A135930.P8332782804221908118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A135930.P8332782804221908118

namespace A135930

/-- `filter[A267016(n+1), A171387(#)]` -/
def P8332782804221908118.Spec : Prop :=
  ∀ n, P8332782804221908118.a n = A135930 (n + 1)

end A135930

/-! ## A135930.P11639027301297451042

`p?[n*(A032741(A048760(n))-1)]`
-/

namespace A135930.P11639027301297451042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A032741 (A048760 n).toNat - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135930.P11639027301297451042

namespace A135930

/-- `p?[n*(A032741(A048760(n))-1)]` -/
def P11639027301297451042.Spec : Prop :=
  ∀ n, P11639027301297451042.a n = A135930 (n + 1)

end A135930

/-! ## A135930.P1406510844866038211

`p?[lcm(n+1, A001222(A000196(n+1)))]`
-/

namespace A135930.P1406510844866038211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A001222 (A000196 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A135930.P1406510844866038211

namespace A135930

/-- `p?[lcm(n+1, A001222(A000196(n+1)))]` -/
def P1406510844866038211.Spec : Prop :=
  ∀ n, (P1406510844866038211.a n : ℤ) = A135930 (n + 1)

end A135930

/-! ## A135930.P10747396399490827578

`eq[2, A032741(A000196(n))+A032741(n)]`
-/

namespace A135930.P10747396399490827578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A000196 n).toNat + A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A135930.P10747396399490827578

namespace A135930

/-- `eq[2, A032741(A000196(n))+A032741(n)]` -/
def P10747396399490827578.Spec : Prop :=
  ∀ n, (P10747396399490827578.a n : ℤ) = A135930 (n + 1)

end A135930

/-! ## A135930.P11312556024900694698

`eq[1, A032741(A000196(n)*A032741(n))]`
-/

namespace A135930.P11312556024900694698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A000196 n * A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A135930.P11312556024900694698

namespace A135930

/-- `eq[1, A032741(A000196(n)*A032741(n))]` -/
def P11312556024900694698.Spec : Prop :=
  ∀ n, (P11312556024900694698.a n : ℤ) = A135930 (n + 1)

end A135930

/-!
# A135931: Primes whose integer square root is not a prime.

The programs for A135931, the canonical program `A135931.P1083306340031313068` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135931 has offset 1).

The definition of A135931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135931.P1083306340031313068

`p?[A010051(A000006(n+1))+A000040(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A135931

/-- `p?[A010051(A000006(n+1))+A000040(n+1)]` -/
def P1083306340031313068.Spec : Prop :=
  ∀ n, P1083306340031313068.a n = A135931 (n + 1)

theorem P1083306340031313068.correct : P1083306340031313068.Spec := by
  intro n
  simp only [A135931, Nat.add_sub_cancel]

end A135931

/-! ## A135931.P4446976596780978761

`p?[(n+1)*A005171(A000196(n+1))]`
-/

namespace A135931.P4446976596780978761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005171 (A000196 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135931.P4446976596780978761

namespace A135931

/-- `p?[(n+1)*A005171(A000196(n+1))]` -/
def P4446976596780978761.Spec : Prop :=
  ∀ n, P4446976596780978761.a n = A135931 (n + 1)

end A135931

/-! ## A135931.P8563751512677262647

`record[A008472(n+2)-A055671(A000196(n+1))]`
-/

namespace A135931.P8563751512677262647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 2) - A055671 (A000196 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135931.P8563751512677262647

namespace A135931

/-- `record[A008472(n+2)-A055671(A000196(n+1))]` -/
def P8563751512677262647.Spec : Prop :=
  ∀ n, P8563751512677262647.a n = A135931 (n + 1)

end A135931

/-! ## A135931.P3925649117336074450

`record[A006530(n+2)*A005171(A000196(n+1))]`
-/

namespace A135931.P3925649117336074450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) * A005171 (A000196 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135931.P3925649117336074450

namespace A135931

/-- `record[A006530(n+2)*A005171(A000196(n+1))]` -/
def P3925649117336074450.Spec : Prop :=
  ∀ n, P3925649117336074450.a n = A135931 (n + 1)

end A135931

/-! ## A135931.P8898737822409059727

`record[A005171(A000196(n+1))*A014963(n+2)]`
-/

namespace A135931.P8898737822409059727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A000196 (n + 1)).toNat * A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135931.P8898737822409059727

namespace A135931

/-- `record[A005171(A000196(n+1))*A014963(n+2)]` -/
def P8898737822409059727.Spec : Prop :=
  ∀ n, P8898737822409059727.a n = A135931 (n + 1)

end A135931

/-! ## A135931.P16795084465975523467

`p?[n+1-A055671(A094683(n))]`
-/

namespace A135931.P16795084465975523467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A055671 (A094683 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135931.P16795084465975523467

namespace A135931

/-- `p?[n+1-A055671(A094683(n))]` -/
def P16795084465975523467.Spec : Prop :=
  ∀ n, P16795084465975523467.a n = A135931 (n + 1)

end A135931

/-!
# A135932: Primes whose integer square root remainder is also prime.

The programs for A135932, the canonical program `A135932.P7824624221458301450` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135932 has offset 1).

The definition of A135932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1027 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135932.P7824624221458301450

`p?[A176864(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A135932

/-- `p?[A176864(n+1)]` -/
def P7824624221458301450.Spec : Prop :=
  ∀ n, P7824624221458301450.a n = A135932 (n + 1)

theorem P7824624221458301450.correct : P7824624221458301450.Spec := by
  intro n
  simp only [A135932, Nat.add_sub_cancel]

end A135932

/-! ## A135932.P3164774482730515312

`record[A006530(A176864(n+2))]`
-/

namespace A135932.P3164774482730515312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A176864 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135932.P3164774482730515312

namespace A135932

/-- `record[A006530(A176864(n+2))]` -/
def P3164774482730515312.Spec : Prop :=
  ∀ n, P3164774482730515312.a n = A135932 (n + 1)

end A135932

/-! ## A135932.P1394029184562124830

`filter[A176864(n+1), A010051(#)]`
-/

namespace A135932.P1394029184562124830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A135932.P1394029184562124830

namespace A135932

/-- `filter[A176864(n+1), A010051(#)]` -/
def P1394029184562124830.Spec : Prop :=
  ∀ n, P1394029184562124830.a n = A135932 (n + 1)

end A135932

/-! ## A135932.P10950712205575890991

`filter[A176864(n+1), A302777(#)]`
-/

namespace A135932.P10950712205575890991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A135932.P10950712205575890991

namespace A135932

/-- `filter[A176864(n+1), A302777(#)]` -/
def P10950712205575890991.Spec : Prop :=
  ∀ n, P10950712205575890991.a n = A135932 (n + 1)

end A135932

/-! ## A135932.P11315578167868970799

`filter[A176864(n+1), A355937(#)]`
-/

namespace A135932.P11315578167868970799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A135932.P11315578167868970799

namespace A135932

/-- `filter[A176864(n+1), A355937(#)]` -/
def P11315578167868970799.Spec : Prop :=
  ∀ n, P11315578167868970799.a n = A135932 (n + 1)

end A135932

/-! ## A135932.P7614799609181232680

`record[A020639(A176864(root(n+1, 2)²))]`
-/

namespace A135932.P7614799609181232680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A176864 (SequenceMachineLib.roundAway (((n + 1 : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135932.P7614799609181232680

namespace A135932

/-- `record[A020639(A176864(root(n+1, 2)²))]` -/
def P7614799609181232680.Spec : Prop :=
  ∀ n, P7614799609181232680.a n = A135932 (n + 1)

end A135932

/-! ## A135932.P7149061851985855643

`∩[A000040(n+1), A176864(n+1)]`
-/

namespace A135932.P7149061851985855643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135932.P7149061851985855643

namespace A135932

/-- `∩[A000040(n+1), A176864(n+1)]` -/
def P7149061851985855643.Spec : Prop :=
  ∀ n, (P7149061851985855643.a n : ℤ) = A135932 (n + 1)

end A135932

/-! ## A135932.P7737828638699994015

`∩[A000430(n+1), A176864(n+1)]`
-/

namespace A135932.P7737828638699994015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135932.P7737828638699994015

namespace A135932

/-- `∩[A000430(n+1), A176864(n+1)]` -/
def P7737828638699994015.Spec : Prop :=
  ∀ n, (P7737828638699994015.a n : ℤ) = A135932 (n + 1)

end A135932

/-! ## A135932.P6364217658395261136

`∩[A004139(n+1), A176864(n+1)]`
-/

namespace A135932.P6364217658395261136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135932.P6364217658395261136

namespace A135932

/-- `∩[A004139(n+1), A176864(n+1)]` -/
def P6364217658395261136.Spec : Prop :=
  ∀ n, (P6364217658395261136.a n : ℤ) = A135932 (n + 1)

end A135932

/-! ## A135932.P4998137288268241580

`∩[A006005(n+1), A176864(n+1)]`
-/

namespace A135932.P4998137288268241580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135932.P4998137288268241580

namespace A135932

/-- `∩[A006005(n+1), A176864(n+1)]` -/
def P4998137288268241580.Spec : Prop :=
  ∀ n, (P4998137288268241580.a n : ℤ) = A135932 (n + 1)

end A135932

/-! ## A135932.P10425169623828027329

`∩[A008578(n+1), A176864(n+1)]`
-/

namespace A135932.P10425169623828027329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135932.P10425169623828027329

namespace A135932

/-- `∩[A008578(n+1), A176864(n+1)]` -/
def P10425169623828027329.Spec : Prop :=
  ∀ n, (P10425169623828027329.a n : ℤ) = A135932 (n + 1)

end A135932

/-! ## A135932.P17605467614190331105

`∩[A009087(n+1), A176864(n+1)]`
-/

namespace A135932.P17605467614190331105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135932.P17605467614190331105

namespace A135932

/-- `∩[A009087(n+1), A176864(n+1)]` -/
def P17605467614190331105.Spec : Prop :=
  ∀ n, (P17605467614190331105.a n : ℤ) = A135932 (n + 1)

end A135932

/-! ## A135932.P4893385815160180879

`∩[A033946(n+1), A176864(n+1)]`
-/

namespace A135932.P4893385815160180879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135932.P4893385815160180879

namespace A135932

/-- `∩[A033946(n+1), A176864(n+1)]` -/
def P4893385815160180879.Spec : Prop :=
  ∀ n, (P4893385815160180879.a n : ℤ) = A135932 (n + 1)

end A135932

/-! ## A135932.P3686772834003147142

`∩[A045319(n+1), A176864(n+1)]`
-/

namespace A135932.P3686772834003147142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135932.P3686772834003147142

namespace A135932

/-- `∩[A045319(n+1), A176864(n+1)]` -/
def P3686772834003147142.Spec : Prop :=
  ∀ n, (P3686772834003147142.a n : ℤ) = A135932 (n + 1)

end A135932

/-! ## A135932.P15678171316454011281

`∩[A046022(n+1), A176864(n+1)]`
-/

namespace A135932.P15678171316454011281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135932.P15678171316454011281

namespace A135932

/-- `∩[A046022(n+1), A176864(n+1)]` -/
def P15678171316454011281.Spec : Prop :=
  ∀ n, (P15678171316454011281.a n : ℤ) = A135932 (n + 1)

end A135932

/-! ## A135932.P5194002885916502587

`∩[A050150(n+1), A176864(n+1)]`
-/

namespace A135932.P5194002885916502587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135932.P5194002885916502587

namespace A135932

/-- `∩[A050150(n+1), A176864(n+1)]` -/
def P5194002885916502587.Spec : Prop :=
  ∀ n, (P5194002885916502587.a n : ℤ) = A135932 (n + 1)

end A135932

/-! ## A135932.P15443171293137757020

`∩[A050376(n+1), A176864(n+1)]`
-/

namespace A135932.P15443171293137757020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135932.P15443171293137757020

namespace A135932

/-- `∩[A050376(n+1), A176864(n+1)]` -/
def P15443171293137757020.Spec : Prop :=
  ∀ n, (P15443171293137757020.a n : ℤ) = A135932 (n + 1)

end A135932

/-! ## A135932.P5023842304372243207

`∩[A062090(n+1), A176864(n+1)]`
-/

namespace A135932.P5023842304372243207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135932.P5023842304372243207

namespace A135932

/-- `∩[A062090(n+1), A176864(n+1)]` -/
def P5023842304372243207.Spec : Prop :=
  ∀ n, (P5023842304372243207.a n : ℤ) = A135932 (n + 1)

end A135932

/-! ## A135932.P13900223563411755996

`∩[A065091(n+1), A176864(n+1)]`
-/

namespace A135932.P13900223563411755996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135932.P13900223563411755996

namespace A135932

/-- `∩[A065091(n+1), A176864(n+1)]` -/
def P13900223563411755996.Spec : Prop :=
  ∀ n, (P13900223563411755996.a n : ℤ) = A135932 (n + 1)

end A135932

/-! ## A135932.P11298503622351979788

`∩[A065376(n+1), A176864(n+1)]`
-/

namespace A135932.P11298503622351979788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135932.P11298503622351979788

namespace A135932

/-- `∩[A065376(n+1), A176864(n+1)]` -/
def P11298503622351979788.Spec : Prop :=
  ∀ n, (P11298503622351979788.a n : ℤ) = A135932 (n + 1)

end A135932

/-!
# A135933: Primes whose integer square root remainder is not a prime.

The programs for A135933, the canonical program `A135933.P13627273315557700751` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135933 has offset 1).

The definition of A135933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1182 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135933.P13627273315557700751

`p?[comp[A176864(n+1)]]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A135933

/-- `p?[comp[A176864(n+1)]]` -/
def P13627273315557700751.Spec : Prop :=
  ∀ n, (P13627273315557700751.a n : ℤ) = A135933 (n + 1)

theorem P13627273315557700751.correct : P13627273315557700751.Spec := by
  intro n
  simp only [A135933, Nat.add_sub_cancel]

end A135933

/-! ## A135933.P1566238161475802168

`∩[A000040(n+1), comp[A176864(n+1)]]`
-/

namespace A135933.P1566238161475802168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A135933.P1566238161475802168

namespace A135933

/-- `∩[A000040(n+1), comp[A176864(n+1)]]` -/
def P1566238161475802168.Spec : Prop :=
  ∀ n, (P1566238161475802168.a n : ℤ) = A135933 (n + 1)

end A135933

/-! ## A135933.P1470155518368554711

`eq[A007920(n), A055671(A053186(n))]`
-/

namespace A135933.P1470155518368554711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A053186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135933.P1470155518368554711

namespace A135933

/-- `eq[A007920(n), A055671(A053186(n))]` -/
def P1470155518368554711.Spec : Prop :=
  ∀ n, (P1470155518368554711.a n : ℤ) = A135933 (n + 1)

end A135933

/-! ## A135933.P3787968367109084436

`eq[A051699(n), A055671(A053186(n))]`
-/

namespace A135933.P3787968367109084436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A053186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135933.P3787968367109084436

namespace A135933

/-- `eq[A051699(n), A055671(A053186(n))]` -/
def P3787968367109084436.Spec : Prop :=
  ∀ n, (P3787968367109084436.a n : ℤ) = A135933 (n + 1)

end A135933

/-! ## A135933.P733175908949030519

`eq[A040081(n+1), A055671(A053186(n))]`
-/

namespace A135933.P733175908949030519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A053186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135933.P733175908949030519

namespace A135933

/-- `eq[A040081(n+1), A055671(A053186(n))]` -/
def P733175908949030519.Spec : Prop :=
  ∀ n, (P733175908949030519.a n : ℤ) = A135933 (n + 1)

end A135933

/-!
# A135934: O.g.f.: A(x) = Sum_{n>=0} x^n / Product_{k=0..n} (1 - Fibonacci(k)*x).

The programs for A135934, there is no canonical definition to state claims against.
-/

/-! ## A135934.P7161760182789512408

`A358025(A199935(n+3))`
-/

namespace A135934.P7161760182789512408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358025 (A199935 (n + 3)).toNat

end

end A135934.P7161760182789512408

/-! ## A135934.P2967241626714955421

`A330018(A255541(n))+A131351(n)`
-/

namespace A135934.P2967241626714955421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330018 (A255541 n).toNat + A131351 n

end

end A135934.P2967241626714955421

/-! ## A135934.P7798618100854644594

`A064458(A166922(n))+A006648(n+2)`
-/

namespace A135934.P7798618100854644594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 (A166922 n).toNat + A006648 (n + 2)

end

end A135934.P7798618100854644594

/-! ## A135934.P13128720098878070251

`A008616(A238112(n)+A000079(n+2))`
-/

namespace A135934.P13128720098878070251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A238112 n + A000079 (n + 2)).toNat

end

end A135934.P13128720098878070251

/-!
# A135936: Irregular triangle read by rows: row n gives coefficients of Boubaker polynomial B_n(x) in order of decreasing exponents (another version).

The programs for A135936, there is no canonical definition to state claims against.
-/

/-! ## A135936.P16430048651682890957

`A135929(2*n-floor(sqrt(n)))`
-/

namespace A135936.P16430048651682890957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135929 (2 * n - Nat.sqrt n)

end

end A135936.P16430048651682890957

/-!
# A135937: 

The programs for A135937, there is no canonical definition to state claims against.
-/

/-! ## A135937.P16893757094351056144

`A020696(a(n-1))` with `a(0)=1`
-/

namespace A135937.P16893757094351056144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020696 (a (n - 1)).toNat

end

end A135937.P16893757094351056144

/-!
# A135939: Highest exponent occurring in the prime factorization of Fibonacci(n).

The programs for A135939, the canonical program `A135939.P3015941767531322662` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135939 has offset 3).

The definition of A135939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1420 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135939.P3015941767531322662

`val(A278245(n+3), 2)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A135939

/-- `val(A278245(n+3), 2)` -/
def P3015941767531322662.Spec : Prop :=
  ∀ n, (P3015941767531322662.a n : ℤ) = A135939 (n + 3)

theorem P3015941767531322662.correct : P3015941767531322662.Spec := by
  intro n
  simp only [A135939, Nat.add_sub_cancel]

end A135939

/-! ## A135939.P4397626453088133401

`log2(gcd(A000079(n+1), A278245(n+3)))`
-/

namespace A135939.P4397626453088133401
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A000079 (n + 1)) (A278245 (n + 3)) : ℝ)

end

end A135939.P4397626453088133401

namespace A135939

/-- `log2(gcd(A000079(n+1), A278245(n+3)))` -/
def P4397626453088133401.Spec : Prop :=
  ∀ n, P4397626453088133401.a n = (A135939 (n + 3) : ℝ)

end A135939

/-! ## A135939.P6493743987370284652

`val(A020695(n), p?[A060383(n+1)])`
-/

namespace A135939.P6493743987370284652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060383 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020695 n).toNat (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135939.P6493743987370284652

namespace A135939

/-- `val(A020695(n), p?[A060383(n+1)])` -/
def P6493743987370284652.Spec : Prop :=
  ∀ n, (P6493743987370284652.a n : ℤ) = A135939 (n + 3)

end A135939

/-! ## A135939.P4250254225093320569

`val(A020695(n), p?[A139044(n+1)])`
-/

namespace A135939.P4250254225093320569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139044 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020695 n).toNat (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135939.P4250254225093320569

namespace A135939

/-- `val(A020695(n), p?[A139044(n+1)])` -/
def P4250254225093320569.Spec : Prop :=
  ∀ n, (P4250254225093320569.a n : ℤ) = A135939 (n + 3)

end A135939

/-! ## A135939.P7012812682371458651

`A051903(A278245(n+3))`
-/

namespace A135939.P7012812682371458651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A278245 (n + 3)).toNat

end

end A135939.P7012812682371458651

namespace A135939

/-- `A051903(A278245(n+3))` -/
def P7012812682371458651.Spec : Prop :=
  ∀ n, P7012812682371458651.a n = A135939 (n + 3)

end A135939

/-!
# A135941: a(n) = floor(n/S2(n)), where S2(n) is the binary weight of n.

The programs for A135941, the canonical program `A135941.P6187496771370470552` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135941 has offset 1).

The definition of A135941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135941.P6187496771370470552

`floor((n+1)/A000120(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A135941

/-- `floor((n+1)/A000120(n+1))` -/
def P6187496771370470552.Spec : Prop :=
  ∀ n, P6187496771370470552.a n = A135941 (n + 1)

theorem P6187496771370470552.correct : P6187496771370470552.Spec := by
  intro n
  simp only [A135941, Nat.add_sub_cancel]

end A135941

/-! ## A135941.P14020096749751063059

`floor((n+1)/∑[1-val(n+1, 2)])`
-/

namespace A135941.P14020096749751063059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A135941.P14020096749751063059

namespace A135941

/-- `floor((n+1)/∑[1-val(n+1, 2)])` -/
def P14020096749751063059.Spec : Prop :=
  ∀ n, P14020096749751063059.a n = A135941 (n + 1)

end A135941

/-! ## A135941.P13827561402329987298

`floor((n+1)/∑[2-log2(xor(n, n+1)+1)])`
-/

namespace A135941.P13827561402329987298
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 - Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A135941.P13827561402329987298

namespace A135941

/-- `floor((n+1)/∑[2-log2(xor(n, n+1)+1)])` -/
def P13827561402329987298.Spec : Prop :=
  ∀ n, P13827561402329987298.a n = A135941 (n + 1)

end A135941

/-! ## A135941.P6207656055941172598

`floor((n+1)/∑[2-∏{e}[xor(n, n+1)+1, #]])`
-/

namespace A135941.P6207656055941172598
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A135941.P6207656055941172598

namespace A135941

/-- `floor((n+1)/∑[2-∏{e}[xor(n, n+1)+1, #]])` -/
def P6207656055941172598.Spec : Prop :=
  ∀ n, P6207656055941172598.a n = A135941 (n + 1)

end A135941

/-! ## A135941.P754266747677564174

`floor((n+1)/Δ[A000788(n)])`
-/

namespace A135941.P754266747677564174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A135941.P754266747677564174

namespace A135941

/-- `floor((n+1)/Δ[A000788(n)])` -/
def P754266747677564174.Spec : Prop :=
  ∀ n, P754266747677564174.a n = A135941 (n + 1)

end A135941

/-! ## A135941.P5105587154936709393

`floor((n+1)/∑[2-A001222(xor(n, n+1)+1)])`
-/

namespace A135941.P5105587154936709393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001222 (Nat.xor n (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A135941.P5105587154936709393

namespace A135941

/-- `floor((n+1)/∑[2-A001222(xor(n, n+1)+1)])` -/
def P5105587154936709393.Spec : Prop :=
  ∀ n, P5105587154936709393.a n = A135941 (n + 1)

end A135941

/-! ## A135941.P14807252459172763108

`floor((n+1)/∑[2-A000005(or(n, n+1)-n)])`
-/

namespace A135941.P14807252459172763108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000005 (Nat.lor n (n + 1) - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A135941.P14807252459172763108

namespace A135941

/-- `floor((n+1)/∑[2-A000005(or(n, n+1)-n)])` -/
def P14807252459172763108.Spec : Prop :=
  ∀ n, P14807252459172763108.a n = A135941 (n + 1)

end A135941

/-! ## A135941.P15721725333415782613

`floor((n+1)/∑[2-A000005(1-and(n, n+1)+n)])`
-/

namespace A135941.P15721725333415782613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000005 (1 - (Nat.land n (n + 1) : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A135941.P15721725333415782613

namespace A135941

/-- `floor((n+1)/∑[2-A000005(1-and(n, n+1)+n)])` -/
def P15721725333415782613.Spec : Prop :=
  ∀ n, P15721725333415782613.a n = A135941 (n + 1)

end A135941

/-! ## A135941.P13482557022869852866

`floor((n+1)/A000005(A048896(n)))`
-/

namespace A135941.P13482557022869852866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A000005 (A048896 n).toNat : ℚ)⌋

end

end A135941.P13482557022869852866

namespace A135941

/-- `floor((n+1)/A000005(A048896(n)))` -/
def P13482557022869852866.Spec : Prop :=
  ∀ n, P13482557022869852866.a n = A135941 (n + 1)

end A135941

/-! ## A135941.P3258596756102297323

`A161764(n+1)/A000120(n+1)`
-/

namespace A135941.P3258596756102297323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161764 (n + 1) : ℚ) / (A000120 (n + 1) : ℚ)

end

end A135941.P3258596756102297323

namespace A135941

/-- `A161764(n+1)/A000120(n+1)` -/
def P3258596756102297323.Spec : Prop :=
  ∀ n, P3258596756102297323.a n = (A135941 (n + 1) : ℚ)

end A135941

/-!
# A135942: Number of n-celled polyominoes with perimeter < 2n+2.

The programs for A135942, there is no canonical definition to state claims against.
-/

/-! ## A135942.P16245969768283246048

`A000105(n+1)-A131482(n+1)`
-/

namespace A135942.P16245969768283246048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (n + 1) - A131482 (n + 1)

end

end A135942.P16245969768283246048

/-! ## A135942.P4354708195031255856

`Δ[A173271(n)]-A131482(n+1)`
-/

namespace A135942.P4354708195031255856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A131482 (n + 1)

end

end A135942.P4354708195031255856

/-! ## A135942.P18149995022656999181

`Δ[A173271(n)]-A342243(∑[n+1])`
-/

namespace A135942.P18149995022656999181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A342243 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A135942.P18149995022656999181

/-! ## A135942.P606889602169509022

`A000105(n+1)-A342243(∑[n+1])`
-/

namespace A135942.P606889602169509022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (n + 1) - A342243 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135942.P606889602169509022

/-! ## A135942.P15826968764050627446

`A006765(n+1)+1-A131482(n+1)`
-/

namespace A135942.P15826968764050627446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006765 (n + 1) + (1 - A131482 (n + 1))

end

end A135942.P15826968764050627446

/-!
# A135943: Numbers with a digit-sum which is a multiple of 3 and with sorted digits forming an arithmetic progression.

The programs for A135943, there is no canonical definition to state claims against.
-/

/-! ## A135943.P5050210436110448541

`A008486(lt[A275001(n), A008619(n)])`
-/

namespace A135943.P5050210436110448541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A135943.P5050210436110448541

/-! ## A135943.P7732885614490267786

`A008585(lt[A275001(n), A008619(n)])`
-/

namespace A135943.P7732885614490267786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A135943.P7732885614490267786

/-! ## A135943.P1122476588600008699

`∑[A007425(A076303(n+4))]`
-/

namespace A135943.P1122476588600008699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A076303 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135943.P1122476588600008699

/-! ## A135943.P13872387903569604258

`∑[A319642(p?[A180938(n+1)])]`
-/

namespace A135943.P13872387903569604258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180938 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319642 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135943.P13872387903569604258

/-! ## A135943.P10729483692375194535

`∑[3*(A282530(A007318(n))+1)]`
-/

namespace A135943.P10729483692375194535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A282530 (A007318 n).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135943.P10729483692375194535

/-!
# A135944: Number of n-digit primes whose digits are all primes.

The programs for A135944, there is no canonical definition to state claims against.
-/

/-! ## A135944.P17659765968754371765

`A077070(9*n^n)`
-/

namespace A135944.P17659765968754371765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077070 (9 * n ^ n)

end

end A135944.P17659765968754371765

/-!
# A135947: a(n)=(floor(3*S2(n)/2)) mod 2, where S2(n) is the binary weight of n.

The programs for A135947, the canonical program `A135947.P15235029237482762943` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135947 has offset 0).

The definition of A135947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135947.P15235029237482762943

`∑{e}[and(3, a(and(n, n-1))+1), #]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135947

/-- `∑{e}[and(3, a(and(n, n-1))+1), #]` -/
def P15235029237482762943.Spec : Prop :=
  ∀ n, (P15235029237482762943.a n : ℤ) = A135947 n

theorem P15235029237482762943.correct : P15235029237482762943.Spec := by
  intro n
  simp only [A135947]

end A135947

/-! ## A135947.P10510139787541975138

`ceil(∑[∑{e}[xor(n, -n), 2-#]]/2)%2`
-/

namespace A135947.P10510139787541975138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉ 2

end

end A135947.P10510139787541975138

namespace A135947

/-- `ceil(∑[∑{e}[xor(n, -n), 2-#]]/2)%2` -/
def P10510139787541975138.Spec : Prop :=
  ∀ n, P10510139787541975138.a n = A135947 n

end A135947

/-! ## A135947.P15749683217695945794

`round(∑[∑{e}[xor(n, -n), 2-#]]/2)%2`
-/

namespace A135947.P15749683217695945794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2)) 2

end

end A135947.P15749683217695945794

namespace A135947

/-- `round(∑[∑{e}[xor(n, -n), 2-#]]/2)%2` -/
def P15749683217695945794.Spec : Prop :=
  ∀ n, P15749683217695945794.a n = A135947 n

end A135947

/-! ## A135947.P17303298788647896024

`and(2, 3*∑[∑{e}[xor(n, -n), 2-#]])/2`
-/

namespace A135947.P17303298788647896024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (3 * (∑ j ∈ Finset.range (n + 1), f1 j)) : ℚ) / 2

end

end A135947.P17303298788647896024

namespace A135947

/-- `and(2, 3*∑[∑{e}[xor(n, -n), 2-#]])/2` -/
def P17303298788647896024.Spec : Prop :=
  ∀ n, P17303298788647896024.a n = (A135947 n : ℚ)

end A135947

/-! ## A135947.P2809826900768512665

`C(3*∑[∑{e}[xor(n, -n), 2-#]], 2)%2`
-/

namespace A135947.P2809826900768512665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 2 % 2

end

end A135947.P2809826900768512665

namespace A135947

/-- `C(3*∑[∑{e}[xor(n, -n), 2-#]], 2)%2` -/
def P2809826900768512665.Spec : Prop :=
  ∀ n, (P2809826900768512665.a n : ℤ) = A135947 n

end A135947

/-! ## A135947.P1927790621176498353

`and(2, 32-∑[∑{e}[xor(n, -n), 2-#]])/2`
-/

namespace A135947.P1927790621176498353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (32 - ∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A135947.P1927790621176498353

namespace A135947

/-- `and(2, 32-∑[∑{e}[xor(n, -n), 2-#]])/2` -/
def P1927790621176498353.Spec : Prop :=
  ∀ n, P1927790621176498353.a n = (A135947 n : ℚ)

end A135947

/-! ## A135947.P1433195551784089415

`∑{e}[2*a(and(n, n-1)), 2-and(2, #)!]` with `a(0)=8`
-/

namespace A135947.P1433195551784089415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (2 - (Nat.factorial (Nat.land 2 (Nat.factorization (f1 n) p)) : ℤ))

end

end A135947.P1433195551784089415

namespace A135947

/-- `∑{e}[2*a(and(n, n-1)), 2-and(2, #)!]` -/
def P1433195551784089415.Spec : Prop :=
  ∀ n, P1433195551784089415.a n = A135947 n

end A135947

/-! ## A135947.P17247170643808676761

`floor(log(A106147(n)))`
-/

namespace A135947.P17247170643808676761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A106147 n : ℝ)⌋

end

end A135947.P17247170643808676761

namespace A135947

/-- `floor(log(A106147(n)))` -/
def P17247170643808676761.Spec : Prop :=
  ∀ n, P17247170643808676761.a n = A135947 n

end A135947

/-! ## A135947.P17803619477111910205

`and(2, A120738(n))/2`
-/

namespace A135947.P17803619477111910205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A120738 n) : ℚ) / 2

end

end A135947.P17803619477111910205

namespace A135947

/-- `and(2, A120738(n))/2` -/
def P17803619477111910205.Spec : Prop :=
  ∀ n, P17803619477111910205.a n = (A135947 n : ℚ)

end A135947

/-! ## A135947.P6107414710942488696

`and(2, A131762(n))/2`
-/

namespace A135947.P6107414710942488696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A131762 n) : ℚ) / 2

end

end A135947.P6107414710942488696

namespace A135947

/-- `and(2, A131762(n))/2` -/
def P6107414710942488696.Spec : Prop :=
  ∀ n, P6107414710942488696.a n = (A135947 n : ℚ)

end A135947

/-! ## A135947.P11246153192333008190

`and(2, A063787(n+1))/2`
-/

namespace A135947.P11246153192333008190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A063787 (n + 1)) : ℚ) / 2

end

end A135947.P11246153192333008190

namespace A135947

/-- `and(2, A063787(n+1))/2` -/
def P11246153192333008190.Spec : Prop :=
  ∀ n, P11246153192333008190.a n = (A135947 n : ℚ)

end A135947

/-! ## A135947.P765488447081001043

`A010060(A102396(n))`
-/

namespace A135947.P765488447081001043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A102396 n).toNat

end

end A135947.P765488447081001043

namespace A135947

/-- `A010060(A102396(n))` -/
def P765488447081001043.Spec : Prop :=
  ∀ n, P765488447081001043.a n = A135947 n

end A135947

/-! ## A135947.P13317935980071696558

`A082446(A038573(n))`
-/

namespace A135947.P13317935980071696558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082446 (A038573 n).toNat

end

end A135947.P13317935980071696558

namespace A135947

/-- `A082446(A038573(n))` -/
def P13317935980071696558.Spec : Prop :=
  ∀ n, P13317935980071696558.a n = A135947 n

end A135947

/-! ## A135947.P2672155104686427844

`A021913(A000120(n)+1)`
-/

namespace A135947.P2672155104686427844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A000120 n + 1).toNat

end

end A135947.P2672155104686427844

namespace A135947

/-- `A021913(A000120(n)+1)` -/
def P2672155104686427844.Spec : Prop :=
  ∀ n, P2672155104686427844.a n = A135947 n

end A135947

/-! ## A135947.P14653963856975380974

`A010060(xor(n, A135136(n)))`
-/

namespace A135947.P14653963856975380974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.xor (n : ℤ) (A135136 n)).toNat

end

end A135947.P14653963856975380974

namespace A135947

/-- `A010060(xor(n, A135136(n)))` -/
def P14653963856975380974.Spec : Prop :=
  ∀ n, P14653963856975380974.a n = A135947 n

end A135947

/-! ## A135947.P15448842261121926974

`1-A010059(A265263(n))`
-/

namespace A135947.P15448842261121926974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010059 (A265263 n).toNat

end

end A135947.P15448842261121926974

namespace A135947

/-- `1-A010059(A265263(n))` -/
def P15448842261121926974.Spec : Prop :=
  ∀ n, P15448842261121926974.a n = A135947 n

end A135947

/-! ## A135947.P8752655761120429554

`and(2, A324467(n))/2`
-/

namespace A135947.P8752655761120429554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A324467 n) : ℚ) / 2

end

end A135947.P8752655761120429554

namespace A135947

/-- `and(2, A324467(n))/2` -/
def P8752655761120429554.Spec : Prop :=
  ∀ n, P8752655761120429554.a n = (A135947 n : ℚ)

end A135947

/-! ## A135947.P408477601011646608

`A268411(A006068(n))`
-/

namespace A135947.P408477601011646608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268411 (A006068 n).toNat

end

end A135947.P408477601011646608

namespace A135947

/-- `A268411(A006068(n))` -/
def P408477601011646608.Spec : Prop :=
  ∀ n, P408477601011646608.a n = A135947 n

end A135947

/-! ## A135947.P976104691146559316

`A021913(A324467(n))`
-/

namespace A135947.P976104691146559316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A324467 n).toNat

end

end A135947.P976104691146559316

namespace A135947

/-- `A021913(A324467(n))` -/
def P976104691146559316.Spec : Prop :=
  ∀ n, P976104691146559316.a n = A135947 n

end A135947

/-! ## A135947.P15047267176960138133

`A010060(A065620(n)+n)`
-/

namespace A135947.P15047267176960138133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A065620 n + (n : ℤ)).toNat

end

end A135947.P15047267176960138133

namespace A135947

/-- `A010060(A065620(n)+n)` -/
def P15047267176960138133.Spec : Prop :=
  ∀ n, P15047267176960138133.a n = A135947 n

end A135947

/-!
# A135948: Ordered set of primes in the first known optimal solution to the Tetractys Puzzle.

The programs for A135948, there is no canonical definition to state claims against.
-/

/-! ## A135948.P11243307990478328789

`lt[A040127(A062584(n)), A040123(n+1)]`
-/

namespace A135948.P11243307990478328789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040127 (A062584 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040123 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A135948.P11243307990478328789

/-! ## A135948.P8272048311308868056

`p?[∑[A336937(A010008(n))]]`
-/

namespace A135948.P8272048311308868056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336937 (A010008 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135948.P8272048311308868056

/-! ## A135948.P13566217428853704234

`record[A006530(∑[A112085(2*(n+1))])]`
-/

namespace A135948.P13566217428853704234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112085 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135948.P13566217428853704234

/-! ## A135948.P4038946397032609264

`A000040(∑[A220694(A027423(n))])`
-/

namespace A135948.P4038946397032609264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220694 (A027423 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A135948.P4038946397032609264

/-! ## A135948.P3629689147939839278

`A000040(lt[val(A291442(3*n+4), 4), 1])`
-/

namespace A135948.P3629689147939839278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A291442 (3 * n + 4)).toNat 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A135948.P3629689147939839278

/-!
# A135949: a(n) = 5*a(n-2) + 2*a(n-3).

The programs for A135949, the canonical program `A135949.P16881117309001630605` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135949 has offset 0).

The definition of A135949 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-2)+2*a(n-3)` (program `A135949.P16881117309001630605`, by `A135949.P16881117309001630605.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135949.P16881117309001630605

`5*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=-1, a(2)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135949

/-- `5*a(n-2)+2*a(n-3)` -/
def P16881117309001630605.Spec : Prop :=
  ∀ n, P16881117309001630605.a n = A135949 n

theorem P16881117309001630605.correct : P16881117309001630605.Spec := by
  intro n
  simp only [A135949]

end A135949

/-! ## A135949.P5211443200162669754

`ogf((-1+x+4x^2)/(-1+5x^2+2x^3))`
-/

namespace A135949.P5211443200162669754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -4] [1, 0, -5, -2] n

end

end A135949.P5211443200162669754

namespace A135949

/-- `ogf((-1+x+4x^2)/(-1+5x^2+2x^3))` -/
def P5211443200162669754.Spec : Prop :=
  ∀ n, P5211443200162669754.a n = A135949 n

end A135949

/-! ## A135949.P16191572722309718704

`abs(A176981(n))-A135138(n+1)`
-/

namespace A135949.P16191572722309718704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176981 n| - A135138 (n + 1)

end

end A135949.P16191572722309718704

namespace A135949

/-- `abs(A176981(n))-A135138(n+1)` -/
def P16191572722309718704.Spec : Prop :=
  ∀ n, P16191572722309718704.a n = A135949 n

end A135949

/-! ## A135949.P14217580372066823995

`A112685(n)-(A135138(n+1)+A135138(n+1))`
-/

namespace A135949.P14217580372066823995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112685 n - (A135138 (n + 1) + A135138 (n + 1))

end

end A135949.P14217580372066823995

namespace A135949

/-- `A112685(n)-(A135138(n+1)+A135138(n+1))` -/
def P14217580372066823995.Spec : Prop :=
  ∀ n, P14217580372066823995.a n = A135949 n

end A135949

/-! ## A135949.P13337658871467823902

`A135139(n+1)-A048655(n)`
-/

namespace A135949.P13337658871467823902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135139 (n + 1) - A048655 n

end

end A135949.P13337658871467823902

namespace A135949

/-- `A135139(n+1)-A048655(n)` -/
def P13337658871467823902.Spec : Prop :=
  ∀ n, P13337658871467823902.a n = A135949 n

end A135949

/-! ## A135949.P9195508156460850953

`A135139(n+1)-A266505(2*n+1)`
-/

namespace A135949.P9195508156460850953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135139 (n + 1) - A266505 (2 * n + 1)

end

end A135949.P9195508156460850953

namespace A135949

/-- `A135139(n+1)-A266505(2*n+1)` -/
def P9195508156460850953.Spec : Prop :=
  ∀ n, P9195508156460850953.a n = A135949 n

end A135949

/-! ## A135949.P5898763442609669155

`A135139(n+1)-(A078343(n+1)+A078343(n))`
-/

namespace A135949.P5898763442609669155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135139 (n + 1) - (A078343 (n + 1) + A078343 n)

end

end A135949.P5898763442609669155

namespace A135949

/-- `A135139(n+1)-(A078343(n+1)+A078343(n))` -/
def P5898763442609669155.Spec : Prop :=
  ∀ n, P5898763442609669155.a n = A135949 n

end A135949

/-! ## A135949.P15320197856804828182

`A135139(n+1)-(A111955(n+1)+A111955(n))`
-/

namespace A135949.P15320197856804828182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135139 (n + 1) - (A111955 (n + 1) + A111955 n)

end

end A135949.P15320197856804828182

namespace A135949

/-- `A135139(n+1)-(A111955(n+1)+A111955(n))` -/
def P15320197856804828182.Spec : Prop :=
  ∀ n, P15320197856804828182.a n = A135949 n

end A135949

/-!
# A135950: Matrix inverse of triangle A022166.

The programs for A135950, there is no canonical definition to state claims against.
-/

/-! ## A135950.P848481101456337169

`A158474(A061579(n))`
-/

namespace A135950.P848481101456337169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158474 (A061579 n).toNat

end

end A135950.P848481101456337169

/-! ## A135950.P233124796533800978

`A158474(A038722(n+1)-1)`
-/

namespace A135950.P233124796533800978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158474 (A038722 (n + 1) - 1).toNat

end

end A135950.P233124796533800978

/-! ## A135950.P3030664736715114768

`A158474(A168038(n+1)-(n+1))`
-/

namespace A135950.P3030664736715114768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158474 (A168038 (n + 1) - (n + 1 : ℤ)).toNat

end

end A135950.P3030664736715114768

/-! ## A135950.P4916873502629078277

`A158474(A053187(2*(n+1))-(n+1))`
-/

namespace A135950.P4916873502629078277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158474 (A053187 (2 * (n + 1)) - (n + 1 : ℤ)).toNat

end

end A135950.P4916873502629078277

/-! ## A135950.P10572995781141895769

`A016155(A003056(n))*A157963(n)`
-/

namespace A135950.P10572995781141895769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016155 (A003056 n).toNat * A157963 n

end

end A135950.P10572995781141895769

/-! ## A135950.P561711394440477786

`A157963(n)*A165326(A002024(n+1))`
-/

namespace A135950.P561711394440477786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157963 n * A165326 (A002024 (n + 1)).toNat

end

end A135950.P561711394440477786

/-! ## A135950.P9210927253458275290

`A033999(A003057(n+2))*A157963(n)`
-/

namespace A135950.P9210927253458275290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A003057 (n + 2)).toNat * A157963 n

end

end A135950.P9210927253458275290

/-! ## A135950.P14876377476902259225

`A157963(A025581(n)+n)*A157963(n)`
-/

namespace A135950.P14876377476902259225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157963 (A025581 n + (n : ℤ)).toNat * A157963 n

end

end A135950.P14876377476902259225

/-! ## A135950.P14791513808109444410

`-(A157963(n)/A130595(A127739(n+1)))`
-/

namespace A135950.P14791513808109444410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A157963 n : ℚ) / (A130595 (A127739 (n + 1)).toNat : ℚ))

end

end A135950.P14791513808109444410

/-! ## A135950.P6137283031190241109

`A157963(A127739(n+1)-1)*A157963(n)`
-/

namespace A135950.P6137283031190241109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157963 (A127739 (n + 1) - 1).toNat * A157963 n

end

end A135950.P6137283031190241109

/-! ## A135950.P9435121861422693716

`A158474(A038722(n+2))`
-/

namespace A135950.P9435121861422693716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158474 (A038722 (n + 2)).toNat

end

end A135950.P9435121861422693716

/-!
# A135951: Central terms of triangle A135950, the matrix inverse of triangle A022166.

The programs for A135951, there is no canonical definition to state claims against.
-/

/-! ## A135951.P17320679141815057470

`A127850(n+1)*A136097(n)`
-/

namespace A135951.P17320679141815057470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127850 (n + 1) * A136097 n

end

end A135951.P17320679141815057470

/-! ## A135951.P13974809422464837916

`A135950(∑[4*n])`
-/

namespace A135951.P13974809422464837916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135950 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135951.P13974809422464837916

/-! ## A135951.P6709720068270435736

`A157963(∑[4*n])`
-/

namespace A135951.P6709720068270435736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157963 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135951.P6709720068270435736

/-! ## A135951.P16435813941921733656

`A158474((n+1)*2*n)`
-/

namespace A135951.P16435813941921733656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158474 ((n + 1) * (2 * n))

end

end A135951.P16435813941921733656

/-!
# A135952: Prime factors of composite Fibonacci numbers with prime indices (cf. A050937).

The programs for A135952, there is no canonical definition to state claims against.
-/

/-! ## A135952.P15387836579342676357

`∩[A092395(n+1), A147956(n+1)]`
-/

namespace A135952.P15387836579342676357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135952.P15387836579342676357

/-! ## A135952.P30763681501637977

`∩[A065105(n+1), A233281(n+1)]`
-/

namespace A135952.P30763681501637977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135952.P30763681501637977

/-!
# A135953: (Nonprime Fibonacci numbers with prime indices) that have exactly 2 prime factors.

The programs for A135953, there is no canonical definition to state claims against.
-/

/-! ## A135953.P9025297060320733128

`A000045(p?[A072381(n+1)])`
-/

namespace A135953.P9025297060320733128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135953.P9025297060320733128

/-! ## A135953.P1020450845982332342

`A000045(p?[A114842(n+1)])`
-/

namespace A135953.P1020450845982332342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135953.P1020450845982332342

/-! ## A135953.P9127818470875748885

`A000045(p?[eq[2, A038575(n)]])`
-/

namespace A135953.P9127818470875748885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A135953.P9127818470875748885

/-! ## A135953.P2030721511015514164

`A000045(eq[A038575(n), A225244(n)])`
-/

namespace A135953.P2030721511015514164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A135953.P2030721511015514164

/-!
# A135955: 

The programs for A135955, there is no canonical definition to state claims against.
-/

/-! ## A135955.P2356966262510546255

`A000045(p?[A114813(n+1)])`
-/

namespace A135955.P2356966262510546255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135955.P2356966262510546255

/-!
# A135957: a(n) = smallest k such that Fibonacci(prime(k)) has exactly n prime factors.

The programs for A135957, there is no canonical definition to state claims against.
-/

/-! ## A135957.P3336341053087067339

`A000720(A135958(n))`
-/

namespace A135957.P3336341053087067339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A135958 n).toNat

end

end A135957.P3336341053087067339

/-! ## A135957.P6571816513660201209

`A003963(p?[A135958(n)])`
-/

namespace A135957.P6571816513660201209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135957.P6571816513660201209

/-! ## A135957.P4493481099662872663

`A026233(p?[A135958(n)])`
-/

namespace A135957.P4493481099662872663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135957.P4493481099662872663

/-! ## A135957.P9416223462996288316

`A049084(p?[A135958(n)])`
-/

namespace A135957.P9416223462996288316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135957.P9416223462996288316

/-! ## A135957.P8250051297148619357

`A055396(p?[A135958(n)])`
-/

namespace A135957.P8250051297148619357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135957.P8250051297148619357

/-!
# A135958: a(n) = smallest prime p such that Fibonacci(p) has exactly n prime factors.

The programs for A135958, there is no canonical definition to state claims against.
-/

/-! ## A135958.P12211422328031157622

`A000040(A135957(n))`
-/

namespace A135958.P12211422328031157622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A135957 n).toNat

end

end A135958.P12211422328031157622

/-! ## A135958.P8220545108388533869

`A008578(A135957(n)+1)`
-/

namespace A135958.P8220545108388533869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A135957 n + 1).toNat

end

end A135958.P8220545108388533869

/-! ## A135958.P14257560750670586726

`A182986(A135957(n)+1)`
-/

namespace A135958.P14257560750670586726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A135957 n + 1).toNat

end

end A135958.P14257560750670586726

/-! ## A135958.P2046278298348563748

`A158611(A135957(n)+2)`
-/

namespace A135958.P2046278298348563748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A135957 n + 2).toNat

end

end A135958.P2046278298348563748

/-! ## A135958.P6622600286631850051

`A006005(A135957(n))+A000007(n)`
-/

namespace A135958.P6622600286631850051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A135957 n).toNat + A000007 n

end

end A135958.P6622600286631850051

/-!
# A135959: 

The programs for A135959, there is no canonical definition to state claims against.
-/

/-! ## A135959.P4476536967495687729

`A000045(A135958(n))`
-/

namespace A135959.P4476536967495687729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A135958 n).toNat

end

end A135959.P4476536967495687729

/-!
# A135960: Indices where records occur in A134852.

The programs for A135960, there is no canonical definition to state claims against.
-/

/-! ## A135960.P17194881812504395813

`A147655(n+1)-A145501(A004212(n))`
-/

namespace A135960.P17194881812504395813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147655 (n + 1) - A145501 (A004212 n).toNat

end

end A135960.P17194881812504395813

/-!
# A135962: a(n) = binomial(floor(n*(sqrt(5)+1)/2), n) for n>=0.

The programs for A135962, the canonical program `A135962.P12710484142955915844` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135962 has offset 0).

The definition of A135962 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(floor(n*(sqrt(5)+1)/2), n)` (program `A135962.P12710484142955915844`, by `A135962.P12710484142955915844.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135962.P12710484142955915844

`C(floor(n*(sqrt(5)+1)/2), n)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135962

/-- `C(floor(n*(sqrt(5)+1)/2), n)` -/
def P12710484142955915844.Spec : Prop :=
  ∀ n, (P12710484142955915844.a n : ℤ) = A135962 n

theorem P12710484142955915844.correct : P12710484142955915844.Spec := by
  intro n
  simp only [A135962]

end A135962

/-! ## A135962.P13104073000164135470

`A059481(A026351(n)+A000217(n))`
-/

namespace A135962.P13104073000164135470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 (A026351 n + A000217 n).toNat

end

end A135962.P13104073000164135470

namespace A135962

/-- `A059481(A026351(n)+A000217(n))` -/
def P13104073000164135470.Spec : Prop :=
  ∀ n, P13104073000164135470.a n = A135962 n

end A135962

/-! ## A135962.P12301775294230222715

`A007318(C(ceil(n*ϕ²)-n, 2)+n)`
-/

namespace A135962.P12301775294230222715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (⌈(n : ℝ) * Real.goldenRatio ^ 2⌉ - (n : ℤ)).toNat 2 + n)

end

end A135962.P12301775294230222715

namespace A135962

/-- `A007318(C(ceil(n*ϕ²)-n, 2)+n)` -/
def P12301775294230222715.Spec : Prop :=
  ∀ n, P12301775294230222715.a n = A135962 n

end A135962

/-! ## A135962.P14915501522157595156

`A007318(A000217(floor(ϕ*n))+n)`
-/

namespace A135962.P14915501522157595156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 ⌊Real.goldenRatio * (n : ℝ)⌋.toNat + (n : ℤ)).toNat

end

end A135962.P14915501522157595156

namespace A135962

/-- `A007318(A000217(floor(ϕ*n))+n)` -/
def P14915501522157595156.Spec : Prop :=
  ∀ n, P14915501522157595156.a n = A135962 n

end A135962

/-! ## A135962.P11574862974609311355

`A007318(A000096(floor(ϕ*n))-n)`
-/

namespace A135962.P11574862974609311355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 ⌊Real.goldenRatio * (n : ℝ)⌋.toNat - (n : ℤ)).toNat

end

end A135962.P11574862974609311355

namespace A135962

/-- `A007318(A000096(floor(ϕ*n))-n)` -/
def P11574862974609311355.Spec : Prop :=
  ∀ n, P11574862974609311355.a n = A135962 n

end A135962

/-!
# A135963: a(n) = binomial(floor(n*(sqrt(5)+3)/2), n) for n>=0.

The programs for A135963, the canonical program `A135963.P3320332180718214394` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135963 has offset 0).

The definition of A135963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135963.P3320332180718214394

`C(floor(n*ϕ²), floor(n*ϕ))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135963

/-- `C(floor(n*ϕ²), floor(n*ϕ))` -/
def P3320332180718214394.Spec : Prop :=
  ∀ n, (P3320332180718214394.a n : ℤ) = A135963 n

theorem P3320332180718214394.correct : P3320332180718214394.Spec := by
  intro n
  simp only [A135963]

end A135963

/-! ## A135963.P7822981756801609760

`C(floor(n*(sqrt(5)+3)/2), n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135963.P7822981756801609760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n : ℝ) * (Real.sqrt (5 : ℝ) + 3) / 2⌋.toNat n

end

end A135963.P7822981756801609760

namespace A135963

/-- `C(floor(n*(sqrt(5)+3)/2), n)` -/
def P7822981756801609760.Spec : Prop :=
  ∀ n, (P7822981756801609760.a n : ℤ) = A135963 n

end A135963

/-! ## A135963.P2917629016424667102

`A073028(floor(n*ϕ²)+n)`
-/

namespace A135963.P2917629016424667102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073028 (⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ + (n : ℤ)).toNat

end

end A135963.P2917629016424667102

namespace A135963

/-- `A073028(floor(n*ϕ²)+n)` -/
def P2917629016424667102.Spec : Prop :=
  ∀ n, P2917629016424667102.a n = A135963 n

end A135963

/-! ## A135963.P18140921658935550123

`record[C(Δ[n*floor(n/ϕ)], n)]`
-/

namespace A135963.P18140921658935550123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f2 (n + 1) - f2 n).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135963.P18140921658935550123

namespace A135963

/-- `record[C(Δ[n*floor(n/ϕ)], n)]` -/
def P18140921658935550123.Spec : Prop :=
  ∀ n, (P18140921658935550123.a n : ℤ) = A135963 n

end A135963

/-! ## A135963.P3046460579206383676

`A074909(C(comp[ceil(ϕ*n)], 2)-n)`
-/

namespace A135963.P3046460579206383676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 2 - n)

end

end A135963.P3046460579206383676

namespace A135963

/-- `A074909(C(comp[ceil(ϕ*n)], 2)-n)` -/
def P3046460579206383676.Spec : Prop :=
  ∀ n, P3046460579206383676.a n = A135963 n

end A135963

/-! ## A135963.P13818363112316695073

`A007318(C(A026352(n), 2)+n)`
-/

namespace A135963.P13818363112316695073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (A026352 n).toNat 2 + n)

end

end A135963.P13818363112316695073

namespace A135963

/-- `A007318(C(A026352(n), 2)+n)` -/
def P13818363112316695073.Spec : Prop :=
  ∀ n, P13818363112316695073.a n = A135963 n

end A135963

/-!
# A135964: a(n) = binomial(floor(n*sqrt(2)),n) for n>=0.

The programs for A135964, the canonical program `A135964.P12848496117168659038` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135964 has offset 0).

The definition of A135964 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(floor(n*sqrt(2)), n)` (program `A135964.P12848496117168659038`, by `A135964.P12848496117168659038.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135964.P12848496117168659038

`C(floor(n*sqrt(2)), n)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135964

/-- `C(floor(n*sqrt(2)), n)` -/
def P12848496117168659038.Spec : Prop :=
  ∀ n, (P12848496117168659038.a n : ℤ) = A135964 n

theorem P12848496117168659038.correct : P12848496117168659038.Spec := by
  intro n
  simp only [A135964]

end A135964

/-! ## A135964.P4480604958509869389

`A046899(A097508(n)+A000217(n))`
-/

namespace A135964.P4480604958509869389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A097508 n + A000217 n).toNat

end

end A135964.P4480604958509869389

namespace A135964

/-- `A046899(A097508(n)+A000217(n))` -/
def P4480604958509869389.Spec : Prop :=
  ∀ n, P4480604958509869389.a n = A135964 n

end A135964

/-! ## A135964.P15191226821360527009

`A046899(A000096(n)-A195119(n))`
-/

namespace A135964.P15191226821360527009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A000096 n - A195119 n).toNat

end

end A135964.P15191226821360527009

namespace A135964

/-- `A046899(A000096(n)-A195119(n))` -/
def P15191226821360527009.Spec : Prop :=
  ∀ n, P15191226821360527009.a n = A135964 n

end A135964

/-! ## A135964.P5569464556382551627

`A046899(A000096(n)+A097508(n)-n)`
-/

namespace A135964.P5569464556382551627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A000096 n + (A097508 n - (n : ℤ))).toNat

end

end A135964.P5569464556382551627

namespace A135964

/-- `A046899(A000096(n)+A097508(n)-n)` -/
def P5569464556382551627.Spec : Prop :=
  ∀ n, P5569464556382551627.a n = A135964 n

end A135964

/-! ## A135964.P7239359765983055702

`A046899(A000096(n)-(n-A097508(n)))`
-/

namespace A135964.P7239359765983055702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A000096 n - ((n : ℤ) - A097508 n)).toNat

end

end A135964.P7239359765983055702

namespace A135964

/-- `A046899(A000096(n)-(n-A097508(n)))` -/
def P7239359765983055702.Spec : Prop :=
  ∀ n, P7239359765983055702.a n = A135964 n

end A135964

/-! ## A135964.P5610289014610089836

`A007318(A000217(A001951(n))+n)`
-/

namespace A135964.P5610289014610089836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (A001951 n).toNat + (n : ℤ)).toNat

end

end A135964.P5610289014610089836

namespace A135964

/-- `A007318(A000217(A001951(n))+n)` -/
def P5610289014610089836.Spec : Prop :=
  ∀ n, P5610289014610089836.a n = A135964 n

end A135964

/-!
# A135965: a(n) = binomial(floor(n*(1+sqrt(2))),n) for n>=0.

The programs for A135965, the canonical program `A135965.P15526676484337930557` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135965 has offset 0).

The definition of A135965 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(floor(n*(1+sqrt(2))), n)` (program `A135965.P15526676484337930557`, by `A135965.P15526676484337930557.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135965.P15526676484337930557

`C(floor(n*(1+sqrt(2))), n)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135965

/-- `C(floor(n*(1+sqrt(2))), n)` -/
def P15526676484337930557.Spec : Prop :=
  ∀ n, (P15526676484337930557.a n : ℤ) = A135965 n

theorem P15526676484337930557.correct : P15526676484337930557.Spec := by
  intro n
  simp only [A135965]

end A135965

/-! ## A135965.P4441893064852484730

`record[C(A187968(n+1), A026741(n+1))]`
-/

namespace A135965.P4441893064852484730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A187968 (n + 1)).toNat (A026741 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135965.P4441893064852484730

namespace A135965

/-- `record[C(A187968(n+1), A026741(n+1))]` -/
def P4441893064852484730.Spec : Prop :=
  ∀ n, (P4441893064852484730.a n : ℤ) = A135965 n

end A135965

/-! ## A135965.P16793785053772792292

`record[A074909(gcd(n, A195071(n+1)))]`
-/

namespace A135965.P16793785053772792292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (Int.gcd (n : ℤ) (A195071 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135965.P16793785053772792292

namespace A135965

/-- `record[A074909(gcd(n, A195071(n+1)))]` -/
def P16793785053772792292.Spec : Prop :=
  ∀ n, P16793785053772792292.a n = A135965 n

end A135965

/-! ## A135965.P3094152815988250807

`A074909(eq[A028310(n), A195071(n+1)])`
-/

namespace A135965.P3094152815988250807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A135965.P3094152815988250807

namespace A135965

/-- `A074909(eq[A028310(n), A195071(n+1)])` -/
def P3094152815988250807.Spec : Prop :=
  ∀ n, P3094152815988250807.a n = A135965 n

end A135965

/-! ## A135965.P1665287192976588621

`A074909(eq[A144328(n+1), A194921(n+1)])`
-/

namespace A135965.P1665287192976588621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A135965.P1665287192976588621

namespace A135965

/-- `A074909(eq[A144328(n+1), A194921(n+1)])` -/
def P1665287192976588621.Spec : Prop :=
  ∀ n, P1665287192976588621.a n = A135965 n

end A135965

/-!
# A135966: Triangle, read by rows, where T(n,k) = fibonacci(k(n-k) + 1) for n>=k>=0.

The programs for A135966, the canonical program `A135966.P10430547944224165443` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135966 has offset 0).

The definition of A135966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1010 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135966.P10430547944224165443

`A000045(A077028(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A135966

/-- `A000045(A077028(n))` -/
def P10430547944224165443.Spec : Prop :=
  ∀ n, P10430547944224165443.a n = A135966 n

theorem P10430547944224165443.correct : P10430547944224165443.Spec := by
  intro n
  simp only [A135966]

end A135966

/-! ## A135966.P17010528734735943879

`A327035(A296180(n))`
-/

namespace A135966.P17010528734735943879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327035 (A296180 n).toNat

end

end A135966.P17010528734735943879

namespace A135966

/-- `A327035(A296180(n))` -/
def P17010528734735943879.Spec : Prop :=
  ∀ n, P17010528734735943879.a n = A135966 n

end A135966

/-! ## A135966.P17989007125982533626

`A000045(sqrt(A082043(n)))`
-/

namespace A135966.P17989007125982533626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.sqrt (A082043 n : ℝ))).toNat

end

end A135966.P17989007125982533626

namespace A135966

/-- `A000045(sqrt(A082043(n)))` -/
def P17989007125982533626.Spec : Prop :=
  ∀ n, P17989007125982533626.a n = A135966 n

end A135966

/-! ## A135966.P8473485226457827201

`A000045(A004247(n)+1)`
-/

namespace A135966.P8473485226457827201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004247 n + 1).toNat

end

end A135966.P8473485226457827201

namespace A135966

/-- `A000045(A004247(n)+1)` -/
def P8473485226457827201.Spec : Prop :=
  ∀ n, P8473485226457827201.a n = A135966 n

end A135966

/-! ## A135966.P8852402206841083780

`A000045(A086460(n)+1)`
-/

namespace A135966.P8852402206841083780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A086460 n + 1).toNat

end

end A135966.P8852402206841083780

namespace A135966

/-- `A000045(A086460(n)+1)` -/
def P8852402206841083780.Spec : Prop :=
  ∀ n, P8852402206841083780.a n = A135966 n

end A135966

/-! ## A135966.P11555585344214265480

`A123231(A130154(n+1))`
-/

namespace A135966.P11555585344214265480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (A130154 (n + 1)).toNat

end

end A135966.P11555585344214265480

namespace A135966

/-- `A123231(A130154(n+1))` -/
def P11555585344214265480.Spec : Prop :=
  ∀ n, P11555585344214265480.a n = A135966 n

end A135966

/-! ## A135966.P15429330018331030725

`A016095(A285192(n))`
-/

namespace A135966.P15429330018331030725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016095 (A285192 n).toNat

end

end A135966.P15429330018331030725

namespace A135966

/-- `A016095(A285192(n))` -/
def P15429330018331030725.Spec : Prop :=
  ∀ n, P15429330018331030725.a n = A135966 n

end A135966

/-! ## A135966.P13838197223586665003

`A027926(A082046(n))`
-/

namespace A135966.P13838197223586665003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (A082046 n).toNat

end

end A135966.P13838197223586665003

namespace A135966

/-- `A027926(A082046(n))` -/
def P13838197223586665003.Spec : Prop :=
  ∀ n, P13838197223586665003.a n = A135966 n

end A135966

/-! ## A135966.P11390530454318484912

`A094102(A082039(n))`
-/

namespace A135966.P11390530454318484912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094102 (A082039 n).toNat

end

end A135966.P11390530454318484912

namespace A135966

/-- `A094102(A082039(n))` -/
def P11390530454318484912.Spec : Prop :=
  ∀ n, P11390530454318484912.a n = A135966 n

end A135966

/-! ## A135966.P16114962662593179942

`A115338(A082043(n))`
-/

namespace A135966.P16114962662593179942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115338 (A082043 n).toNat

end

end A135966.P16114962662593179942

namespace A135966

/-- `A115338(A082043(n))` -/
def P16114962662593179942.Spec : Prop :=
  ∀ n, P16114962662593179942.a n = A135966 n

end A135966

/-! ## A135966.P4356149519033838279

`A115338(A082105(n))`
-/

namespace A135966.P4356149519033838279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115338 (A082105 n).toNat

end

end A135966.P4356149519033838279

namespace A135966

/-- `A115338(A082105(n))` -/
def P4356149519033838279.Spec : Prop :=
  ∀ n, P4356149519033838279.a n = A135966 n

end A135966

/-!
# A135967: Row sums of triangle A135966.

The programs for A135967, there is no canonical definition to state claims against.
-/

/-! ## A135967.P9193562622523039347

`A007306(a(n-1)²)+and(1, n)` with `a(0)=1`
-/

namespace A135967.P9193562622523039347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007306 (a (n - 1) ^ 2).toNat + (Nat.land 1 n : ℤ)

end

end A135967.P9193562622523039347

/-! ## A135967.P2128710697936385206

`A361978(A096746(n))`
-/

namespace A135967.P2128710697936385206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361978 (A096746 n).toNat

end

end A135967.P2128710697936385206

/-! ## A135967.P5375917341825316325

`∑[A156689(A000608(n))]`
-/

namespace A135967.P5375917341825316325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (A000608 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135967.P5375917341825316325

/-!
# A135968: Sum of the distinct prime factors of the Fibonacci number A050937(n).

The programs for A135968, there is no canonical definition to state claims against.
-/

/-! ## A135968.P7635317650604076155

`A064725(A090819(n+1))`
-/

namespace A135968.P7635317650604076155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064725 (A090819 (n + 1)).toNat

end

end A135968.P7635317650604076155

/-! ## A135968.P17149934682814945441

`A080648(p?[A090819(n+1)])`
-/

namespace A135968.P17149934682814945441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080648 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135968.P17149934682814945441

/-! ## A135968.P13887291721498540134

`A064725(p?[A261312(n+1)])`
-/

namespace A135968.P13887291721498540134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064725 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135968.P13887291721498540134

/-! ## A135968.P2858069912989608717

`A080648(p?[A261312(n+1)])`
-/

namespace A135968.P2858069912989608717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080648 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135968.P2858069912989608717

/-! ## A135968.P11056125789895562215

`∑{d}[A000040(A134787(n+1)), A064725(#)]`
-/

namespace A135968.P11056125789895562215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A134787 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A064725 d

end

end A135968.P11056125789895562215

/-!
# A135969: Sum of the prime factors of A135953(n).

The programs for A135969, there is no canonical definition to state claims against.
-/

/-! ## A135969.P9493423365357843790

`A064725(p?[A072381(n+1)])`
-/

namespace A135969.P9493423365357843790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064725 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135969.P9493423365357843790

/-! ## A135969.P5571339723144132843

`A080648(p?[A072381(n+1)])`
-/

namespace A135969.P5571339723144132843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080648 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135969.P5571339723144132843

/-! ## A135969.P3564708773894468098

`A064725(p?[A114842(n+1)])`
-/

namespace A135969.P3564708773894468098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064725 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135969.P3564708773894468098

/-! ## A135969.P2358522345349758439

`A080648(p?[A114842(n+1)])`
-/

namespace A135969.P2358522345349758439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080648 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135969.P2358522345349758439

/-! ## A135969.P4748831538898551712

`A064725(eq[A022307(n), A225244(n)])`
-/

namespace A135969.P4748831538898551712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A135969.P4748831538898551712

/-!
# A135971: Ceiling(4*Pi*n^2).

The programs for A135971, the canonical program `A135971.P4869799781099835602` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135971 has offset 1).

The definition of A135971 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(4*π*(n+1)²)` (program `A135971.P4869799781099835602`, by `A135971.P4869799781099835602.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135971.P4869799781099835602

`ceil(4*π*(n+1)²)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135971

/-- `ceil(4*π*(n+1)²)` -/
def P4869799781099835602.Spec : Prop :=
  ∀ n, P4869799781099835602.a n = A135971 (n + 1)

theorem P4869799781099835602.correct : P4869799781099835602.Spec := by
  intro n
  simp only [A135971, Nat.add_sub_cancel]

end A135971

/-! ## A135971.P15699162591660261751

`abs(xor(floor(π*(2*(n+1))²), -1))`
-/

namespace A135971.P15699162591660261751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ⌊Real.pi * ((2 * (n + 1)) ^ 2 : ℝ)⌋ (-1)|

end

end A135971.P15699162591660261751

namespace A135971

/-- `abs(xor(floor(π*(2*(n+1))²), -1))` -/
def P15699162591660261751.Spec : Prop :=
  ∀ n, P15699162591660261751.a n = A135971 (n + 1)

end A135971

/-! ## A135971.P10479471933002622007

`floor(π*(2*(n+1))²)+(1-and(2, n))²`
-/

namespace A135971.P10479471933002622007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * ((2 * (n + 1)) ^ 2 : ℝ)⌋ + (1 - (Nat.land 2 n : ℤ)) ^ 2

end

end A135971.P10479471933002622007

namespace A135971

/-- `floor(π*(2*(n+1))²)+(1-and(2, n))²` -/
def P10479471933002622007.Spec : Prop :=
  ∀ n, P10479471933002622007.a n = A135971 (n + 1)

end A135971

/-! ## A135971.P2795866325672705917

`floor(π*(2*(n+1))²)+abs(or(1, -n)%2)`
-/

namespace A135971.P2795866325672705917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * ((2 * (n + 1)) ^ 2 : ℝ)⌋ + |Int.tmod (Int.lor 1 (-(n : ℤ))) 2|

end

end A135971.P2795866325672705917

namespace A135971

/-- `floor(π*(2*(n+1))²)+abs(or(1, -n)%2)` -/
def P2795866325672705917.Spec : Prop :=
  ∀ n, P2795866325672705917.a n = A135971 (n + 1)

end A135971

/-! ## A135971.P12795980404646224516

`A066644(n+1)+1`
-/

namespace A135971.P12795980404646224516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066644 (n + 1) + 1

end

end A135971.P12795980404646224516

namespace A135971

/-- `A066644(n+1)+1` -/
def P12795980404646224516.Spec : Prop :=
  ∀ n, P12795980404646224516.a n = A135971 (n + 1)

end A135971

/-! ## A135971.P17521147333781775836

`A001221(A006530(2*n+5))+floor(π*(2*(n+1))²)`
-/

namespace A135971.P17521147333781775836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006530 (2 * n + 5)).toNat + ⌊Real.pi * ((2 * (n + 1)) ^ 2 : ℝ)⌋

end

end A135971.P17521147333781775836

namespace A135971

/-- `A001221(A006530(2*n+5))+floor(π*(2*(n+1))²)` -/
def P17521147333781775836.Spec : Prop :=
  ∀ n, P17521147333781775836.a n = A135971 (n + 1)

end A135971

/-! ## A135971.P6868883315121922405

`A001221(A050376(n+1))+floor(π*(2*(n+1))²)`
-/

namespace A135971.P6868883315121922405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A050376 (n + 1)).toNat + ⌊Real.pi * ((2 * (n + 1)) ^ 2 : ℝ)⌋

end

end A135971.P6868883315121922405

namespace A135971

/-- `A001221(A050376(n+1))+floor(π*(2*(n+1))²)` -/
def P6868883315121922405.Spec : Prop :=
  ∀ n, P6868883315121922405.a n = A135971 (n + 1)

end A135971

/-! ## A135971.P14602506219234924969

`A001221(A216495(n+1))+floor(π*(2*(n+1))²)`
-/

namespace A135971.P14602506219234924969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A216495 (n + 1)).toNat + ⌊Real.pi * ((2 * (n + 1)) ^ 2 : ℝ)⌋

end

end A135971.P14602506219234924969

namespace A135971

/-- `A001221(A216495(n+1))+floor(π*(2*(n+1))²)` -/
def P14602506219234924969.Spec : Prop :=
  ∀ n, P14602506219234924969.a n = A135971 (n + 1)

end A135971

/-! ## A135971.P16285948067509274753

`A001221(A007703(n+1))+floor(π*(2*(n+1))²)`
-/

namespace A135971.P16285948067509274753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007703 (n + 1)).toNat + ⌊Real.pi * ((2 * (n + 1)) ^ 2 : ℝ)⌋

end

end A135971.P16285948067509274753

namespace A135971

/-- `A001221(A007703(n+1))+floor(π*(2*(n+1))²)` -/
def P16285948067509274753.Spec : Prop :=
  ∀ n, P16285948067509274753.a n = A135971 (n + 1)

end A135971

/-! ## A135971.P14926930276756866193

`floor(π*(2*(n+1))²)-A008683(A007703(n+3))`
-/

namespace A135971.P14926930276756866193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * ((2 * (n + 1)) ^ 2 : ℝ)⌋ - A008683 (A007703 (n + 3)).toNat

end

end A135971.P14926930276756866193

namespace A135971

/-- `floor(π*(2*(n+1))²)-A008683(A007703(n+3))` -/
def P14926930276756866193.Spec : Prop :=
  ∀ n, P14926930276756866193.a n = A135971 (n + 1)

end A135971

/-! ## A135971.P916935503180873093

`A338020(2*(n+1))+A135039(2*n+1)`
-/

namespace A135971.P916935503180873093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338020 (2 * (n + 1)) + A135039 (2 * n + 1)

end

end A135971.P916935503180873093

namespace A135971

/-- `A338020(2*(n+1))+A135039(2*n+1)` -/
def P916935503180873093.Spec : Prop :=
  ∀ n, P916935503180873093.a n = A135971 (n + 1)

end A135971

/-! ## A135971.P9761488901595034865

`∑[A338020(2*n+1)+A338020(2*(n+1))]+1`
-/

namespace A135971.P9761488901595034865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338020 (2 * n + 1) + A338020 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A135971.P9761488901595034865

namespace A135971

/-- `∑[A338020(2*n+1)+A338020(2*(n+1))]+1` -/
def P9761488901595034865.Spec : Prop :=
  ∀ n, P9761488901595034865.a n = A135971 (n + 1)

end A135971

/-! ## A135971.P7361608051839277934

`A135039(2*(n+1))`
-/

namespace A135971.P7361608051839277934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135039 (2 * (n + 1))

end

end A135971.P7361608051839277934

namespace A135971

/-- `A135039(2*(n+1))` -/
def P7361608051839277934.Spec : Prop :=
  ∀ n, P7361608051839277934.a n = A135971 (n + 1)

end A135971

/-! ## A135971.P8866662861881825968

`A066643(2*(n+1))+1`
-/

namespace A135971.P8866662861881825968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 (2 * (n + 1)) + 1

end

end A135971.P8866662861881825968

namespace A135971

/-- `A066643(2*(n+1))+1` -/
def P8866662861881825968.Spec : Prop :=
  ∀ n, P8866662861881825968.a n = A135971 (n + 1)

end A135971

/-! ## A135971.P5522273953997478788

`record[A135039(A014681(n+1))]`
-/

namespace A135971.P5522273953997478788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135039 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135971.P5522273953997478788

namespace A135971

/-- `record[A135039(A014681(n+1))]` -/
def P5522273953997478788.Spec : Prop :=
  ∀ n, P5522273953997478788.a n = A135971 (n + 1)

end A135971

/-!
# A135972: Nonprime numbers of the form 2^n - 1.

The programs for A135972, the canonical program `A135972.P1109629650079835443` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135972 has offset 1).

The definition of A135972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135972.P7333084865684345539

`2^A045762(n+1)-1`
-/

namespace A135972.P7333084865684345539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A045762 (n + 1) : ℤ) - 1

end

end A135972.P7333084865684345539

namespace A135972

/-- `2^A045762(n+1)-1` -/
def P7333084865684345539.Spec : Prop :=
  ∀ n, P7333084865684345539.a n = (A135972 (n + 1) : ℚ)

end A135972

/-! ## A135972.P15601397576187428108

`A000225(A045762(n+1))`
-/

namespace A135972.P15601397576187428108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A045762 (n + 1)).toNat

end

end A135972.P15601397576187428108

namespace A135972

/-- `A000225(A045762(n+1))` -/
def P15601397576187428108.Spec : Prop :=
  ∀ n, P15601397576187428108.a n = A135972 (n + 1)

end A135972

/-! ## A135972.P12121907124591147329

`A000225(lt[0, A127587(n)])`
-/

namespace A135972.P12121907124591147329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A135972.P12121907124591147329

namespace A135972

/-- `A000225(lt[0, A127587(n)])` -/
def P12121907124591147329.Spec : Prop :=
  ∀ n, P12121907124591147329.a n = A135972 (n + 1)

end A135972

/-! ## A135972.P5070435383623736507

`A000225(lt[1, A126717(n)])`
-/

namespace A135972.P5070435383623736507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A135972.P5070435383623736507

namespace A135972

/-- `A000225(lt[1, A126717(n)])` -/
def P5070435383623736507.Spec : Prop :=
  ∀ n, P5070435383623736507.a n = A135972 (n + 1)

end A135972

/-! ## A135972.P8831110221841778873

`A000225(comp[A000043(n+1)])`
-/

namespace A135972.P8831110221841778873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A135972.P8831110221841778873

namespace A135972

/-- `A000225(comp[A000043(n+1)])` -/
def P8831110221841778873.Spec : Prop :=
  ∀ n, P8831110221841778873.a n = A135972 (n + 1)

end A135972

/-! ## A135972.P5172088572749556315

`A000225(comp[eq[0, A127587(n)]])`
-/

namespace A135972.P5172088572749556315
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127587 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A135972.P5172088572749556315

namespace A135972

/-- `A000225(comp[eq[0, A127587(n)]])` -/
def P5172088572749556315.Spec : Prop :=
  ∀ n, P5172088572749556315.a n = A135972 (n + 1)

end A135972

/-! ## A135972.P13183484470648111948

`A000225(comp[eq[1, A046800(n)]])`
-/

namespace A135972.P13183484470648111948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A135972.P13183484470648111948

namespace A135972

/-- `A000225(comp[eq[1, A046800(n)]])` -/
def P13183484470648111948.Spec : Prop :=
  ∀ n, P13183484470648111948.a n = A135972 (n + 1)

end A135972

/-! ## A135972.P17045327644561731481

`A000225(comp[eq[1, A126717(n)]])`
-/

namespace A135972.P17045327644561731481
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126717 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A135972.P17045327644561731481

namespace A135972

/-- `A000225(comp[eq[1, A126717(n)]])` -/
def P17045327644561731481.Spec : Prop :=
  ∀ n, P17045327644561731481.a n = A135972 (n + 1)

end A135972

/-! ## A135972.P1109629650079835443

`A000225(comp[p?[A072226(n+1)]])`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A135972

/-- `A000225(comp[p?[A072226(n+1)]])` -/
def P1109629650079835443.Spec : Prop :=
  ∀ n, P1109629650079835443.a n = A135972 (n + 1)

theorem P1109629650079835443.correct : P1109629650079835443.Spec := by
  intro n
  simp only [A135972, Nat.add_sub_cancel]

end A135972

/-! ## A135972.P12214331319952536877

`A000079(comp[A000043(n+1)])-1`
-/

namespace A135972.P12214331319952536877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - 1

end

end A135972.P12214331319952536877

namespace A135972

/-- `A000079(comp[A000043(n+1)])-1` -/
def P12214331319952536877.Spec : Prop :=
  ∀ n, P12214331319952536877.a n = A135972 (n + 1)

end A135972

/-! ## A135972.P12444716022730159453

`A000225(comp[A153798(n+1)+2])`
-/

namespace A135972.P12444716022730159453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153798 (n + 1) + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A135972.P12444716022730159453

namespace A135972

/-- `A000225(comp[A153798(n+1)+2])` -/
def P12444716022730159453.Spec : Prop :=
  ∀ n, P12444716022730159453.a n = A135972 (n + 1)

end A135972

/-! ## A135972.P7587559468555874752

`A000225(eq[1, char[A000043(n+1)]+1])`
-/

namespace A135972.P7587559468555874752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A135972.P7587559468555874752

namespace A135972

/-- `A000225(eq[1, char[A000043(n+1)]+1])` -/
def P7587559468555874752.Spec : Prop :=
  ∀ n, P7587559468555874752.a n = A135972 (n + 1)

end A135972

/-! ## A135972.P15523109239191178030

`lcm(A000079(A045762(n+1)), A000079(n))-1`
-/

namespace A135972.P15523109239191178030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000079 (A045762 (n + 1)).toNat) (A000079 n) : ℤ) - 1

end

end A135972.P15523109239191178030

namespace A135972

/-- `lcm(A000079(A045762(n+1)), A000079(n))-1` -/
def P15523109239191178030.Spec : Prop :=
  ∀ n, P15523109239191178030.a n = A135972 (n + 1)

end A135972

/-! ## A135972.P13213290489864210608

`A000225(comp[A139117(n+1)-A139116(n+1)])`
-/

namespace A135972.P13213290489864210608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139117 (n + 1) - A139116 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A135972.P13213290489864210608

namespace A135972

/-- `A000225(comp[A139117(n+1)-A139116(n+1)])` -/
def P13213290489864210608.Spec : Prop :=
  ∀ n, P13213290489864210608.a n = A135972 (n + 1)

end A135972

/-! ## A135972.P8721268661449525371

`record[A000225(n)%A087522(n)]`
-/

namespace A135972.P8721268661449525371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 n) (A087522 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135972.P8721268661449525371

namespace A135972

/-- `record[A000225(n)%A087522(n)]` -/
def P8721268661449525371.Spec : Prop :=
  ∀ n, P8721268661449525371.a n = A135972 (n + 1)

end A135972

/-!
# A135973: Ceiling(4/3*Pi*n^3).

The programs for A135973, the canonical program `A135973.P10091918630332169255` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135973 has offset 0).

The definition of A135973 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(4/3*π*n^3)` (program `A135973.P10091918630332169255`, by `A135973.P10091918630332169255.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135973.P10091918630332169255

`ceil(4/3*π*n^3)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135973

/-- `ceil(4/3*π*n^3)` -/
def P10091918630332169255.Spec : Prop :=
  ∀ n, P10091918630332169255.a n = A135973 n

theorem P10091918630332169255.correct : P10091918630332169255.Spec := by
  intro n
  simp only [A135973]

end A135973

/-! ## A135973.P4285315424816824839

`A066645(n)+A057427(n)`
-/

namespace A135973.P4285315424816824839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066645 n + A057427 n

end

end A135973.P4285315424816824839

namespace A135973

/-- `A066645(n)+A057427(n)` -/
def P4285315424816824839.Spec : Prop :=
  ∀ n, P4285315424816824839.a n = A135973 n

end A135973

/-! ## A135973.P7720835514599472511

`A066645(n)-A057428(n)`
-/

namespace A135973.P7720835514599472511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066645 n - A057428 n

end

end A135973.P7720835514599472511

namespace A135973

/-- `A066645(n)-A057428(n)` -/
def P7720835514599472511.Spec : Prop :=
  ∀ n, P7720835514599472511.a n = A135973 n

end A135973

/-! ## A135973.P2781982558637210

`A066645(n)+(n-A014681(n))²`
-/

namespace A135973.P2781982558637210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066645 n + ((n : ℤ) - A014681 n) ^ 2

end

end A135973.P2781982558637210

namespace A135973

/-- `A066645(n)+(n-A014681(n))²` -/
def P2781982558637210.Spec : Prop :=
  ∀ n, P2781982558637210.a n = A135973 n

end A135973

/-! ## A135973.P5135277872969039128

`A066645(n)+A171054(n+1)%2`
-/

namespace A135973.P5135277872969039128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066645 n + Int.tmod (A171054 (n + 1)) 2

end

end A135973.P5135277872969039128

namespace A135973

/-- `A066645(n)+A171054(n+1)%2` -/
def P5135277872969039128.Spec : Prop :=
  ∀ n, P5135277872969039128.a n = A135973 n

end A135973

/-! ## A135973.P17083707874519252060

`(A066645(n)+1)%A000578(n+1)²`
-/

namespace A135973.P17083707874519252060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066645 n + 1) (A000578 (n + 1) ^ 2)

end

end A135973.P17083707874519252060

namespace A135973

/-- `(A066645(n)+1)%A000578(n+1)²` -/
def P17083707874519252060.Spec : Prop :=
  ∀ n, P17083707874519252060.a n = A135973 n

end A135973

/-! ## A135973.P6957397207207641283

`A066645(n)+A000217(n²%(n+1))`
-/

namespace A135973.P6957397207207641283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066645 n + A000217 (n ^ 2 % (n + 1))

end

end A135973.P6957397207207641283

namespace A135973

/-- `A066645(n)+A000217(n²%(n+1))` -/
def P6957397207207641283.Spec : Prop :=
  ∀ n, P6957397207207641283.a n = A135973 n

end A135973

/-! ## A135973.P18369305543879643724

`A066645(n)+A135039(n)-A066643(n)`
-/

namespace A135973.P18369305543879643724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066645 n + (A135039 n - A066643 n)

end

end A135973.P18369305543879643724

namespace A135973

/-- `A066645(n)+A135039(n)-A066643(n)` -/
def P18369305543879643724.Spec : Prop :=
  ∀ n, P18369305543879643724.a n = A135973 n

end A135973

/-! ## A135973.P2227367842454446069

`A066645(n)+char[A057506(n+1)]`
-/

namespace A135973.P2227367842454446069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066645 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A135973.P2227367842454446069

namespace A135973

/-- `A066645(n)+char[A057506(n+1)]` -/
def P2227367842454446069.Spec : Prop :=
  ∀ n, P2227367842454446069.a n = A135973 n

end A135973

/-! ## A135973.P8909808786895857307

`A066645(n)+A335366(n+1)%2`
-/

namespace A135973.P8909808786895857307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066645 n + Int.tmod (A335366 (n + 1)) 2

end

end A135973.P8909808786895857307

namespace A135973

/-- `A066645(n)+A335366(n+1)%2` -/
def P8909808786895857307.Spec : Prop :=
  ∀ n, P8909808786895857307.a n = A135973 n

end A135973

/-! ## A135973.P8938949404757697783

`A066645(n)+A000051(n)%2`
-/

namespace A135973.P8938949404757697783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066645 n + Int.tmod (A000051 n) 2

end

end A135973.P8938949404757697783

namespace A135973

/-- `A066645(n)+A000051(n)%2` -/
def P8938949404757697783.Spec : Prop :=
  ∀ n, P8938949404757697783.a n = A135973 n

end A135973

/-!
# A135974: a(n) = the smallest integer m > n such that d(m) > d(n), where d(n) = number of divisors of n.

The programs for A135974, there is no canonical definition to state claims against.
-/

/-! ## A135974.P15790723875627279503

`A048266(A153494(n+1))`
-/

namespace A135974.P15790723875627279503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A153494 (n + 1)).toNat

end

end A135974.P15790723875627279503

/-! ## A135974.P6123638940403911264

`A153494(A331509(n)!+n)`
-/

namespace A135974.P6123638940403911264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153494 (Nat.factorial (A331509 n).toNat + n)

end

end A135974.P6123638940403911264

/-! ## A135974.P2121875398410066804

`A031285(A153494(n+1)-1)`
-/

namespace A135974.P2121875398410066804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A153494 (n + 1) - 1).toNat

end

end A135974.P2121875398410066804

/-! ## A135974.P13987964389416721011

`A340008(2*A153494(n+1))`
-/

namespace A135974.P13987964389416721011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340008 (2 * A153494 (n + 1)).toNat

end

end A135974.P13987964389416721011

/-! ## A135974.P16062501209901813993

`A153494(n+1)%A159629(A159629(n+1))`
-/

namespace A135974.P16062501209901813993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153494 (n + 1)) (A159629 (A159629 (n + 1)).toNat)

end

end A135974.P16062501209901813993

/-!
# A135975: Number of prime factors (without multiplicity) in Mersenne composites A065341.

The programs for A135975, the canonical program `A135975.P5624904314558492887` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135975 has offset 1).

The definition of A135975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 183 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135975.P6175362458336060156

`A046051(A054723(n+1))`
-/

namespace A135975.P6175362458336060156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (A054723 (n + 1)).toNat

end

end A135975.P6175362458336060156

namespace A135975

/-- `A046051(A054723(n+1))` -/
def P6175362458336060156.Spec : Prop :=
  ∀ n, P6175362458336060156.a n = A135975 (n + 1)

end A135975

/-! ## A135975.P699184261943258123

`A088863(A135980(n+1))`
-/

namespace A135975.P699184261943258123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088863 (A135980 (n + 1)).toNat

end

end A135975.P699184261943258123

namespace A135975

/-- `A088863(A135980(n+1))` -/
def P699184261943258123.Spec : Prop :=
  ∀ n, P699184261943258123.a n = A135975 (n + 1)

end A135975

/-! ## A135975.P11410850816070571597

`A046051(p?[A045762(n+1)])`
-/

namespace A135975.P11410850816070571597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135975.P11410850816070571597

namespace A135975

/-- `A046051(p?[A045762(n+1)])` -/
def P11410850816070571597.Spec : Prop :=
  ∀ n, P11410850816070571597.a n = A135975 (n + 1)

end A135975

/-! ## A135975.P8068144868868572376

`A046800(p?[A045762(n+1)])`
-/

namespace A135975.P8068144868868572376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135975.P8068144868868572376

namespace A135975

/-- `A046800(p?[A045762(n+1)])` -/
def P8068144868868572376.Spec : Prop :=
  ∀ n, P8068144868868572376.a n = A135975 (n + 1)

end A135975

/-! ## A135975.P10609947258242353943

`A046800(p?[A054723(n+1)])`
-/

namespace A135975.P10609947258242353943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135975.P10609947258242353943

namespace A135975

/-- `A046800(p?[A054723(n+1)])` -/
def P10609947258242353943.Spec : Prop :=
  ∀ n, P10609947258242353943.a n = A135975 (n + 1)

end A135975

/-! ## A135975.P6560883836737754930

`A046800(or(1, A054723(n+1)))`
-/

namespace A135975.P6560883836737754930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (Int.lor 1 (A054723 (n + 1))).toNat

end

end A135975.P6560883836737754930

namespace A135975

/-- `A046800(or(1, A054723(n+1)))` -/
def P6560883836737754930.Spec : Prop :=
  ∀ n, P6560883836737754930.a n = A135975 (n + 1)

end A135975

/-! ## A135975.P4001065988800229382

`A086251(or(1, A054723(n+1)))`
-/

namespace A135975.P4001065988800229382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086251 (Int.lor 1 (A054723 (n + 1))).toNat

end

end A135975.P4001065988800229382

namespace A135975

/-- `A086251(or(1, A054723(n+1)))` -/
def P4001065988800229382.Spec : Prop :=
  ∀ n, P4001065988800229382.a n = A135975 (n + 1)

end A135975

/-! ## A135975.P6372767361041697544

`∑{d}[A054723(n+1), A046800(#)]`
-/

namespace A135975.P6372767361041697544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A046800 d

end

end A135975.P6372767361041697544

namespace A135975

/-- `∑{d}[A054723(n+1), A046800(#)]` -/
def P6372767361041697544.Spec : Prop :=
  ∀ n, P6372767361041697544.a n = A135975 (n + 1)

end A135975

/-! ## A135975.P12763969774899127576

`A046800(∏{d}[A054723(n+1), #])`
-/

namespace A135975.P12763969774899127576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A135975.P12763969774899127576

namespace A135975

/-- `A046800(∏{d}[A054723(n+1), #])` -/
def P12763969774899127576.Spec : Prop :=
  ∀ n, P12763969774899127576.a n = A135975 (n + 1)

end A135975

/-! ## A135975.P3020204877769442653

`A086251(∏{d}[A054723(n+1), #])`
-/

namespace A135975.P3020204877769442653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086251 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A135975.P3020204877769442653

namespace A135975

/-- `A086251(∏{d}[A054723(n+1), #])` -/
def P3020204877769442653.Spec : Prop :=
  ∀ n, P3020204877769442653.a n = A135975 (n + 1)

end A135975

/-! ## A135975.P15470855459386411651

`A046800(∑{p}[A054723(n+1), #])`
-/

namespace A135975.P15470855459386411651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A135975.P15470855459386411651

namespace A135975

/-- `A046800(∑{p}[A054723(n+1), #])` -/
def P15470855459386411651.Spec : Prop :=
  ∀ n, P15470855459386411651.a n = A135975 (n + 1)

end A135975

/-! ## A135975.P5624904314558492887

`A088863(lt[1, A088863(n+1)]+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A135975

/-- `A088863(lt[1, A088863(n+1)]+1)` -/
def P5624904314558492887.Spec : Prop :=
  ∀ n, P5624904314558492887.a n = A135975 (n + 1)

theorem P5624904314558492887.correct : P5624904314558492887.Spec := by
  intro n
  simp only [A135975, Nat.add_sub_cancel]

end A135975

/-! ## A135975.P9820494416273861366

`A046800(A054723(A000027(n+1)))`
-/

namespace A135975.P9820494416273861366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (A054723 (A000027 (n + 1)).toNat).toNat

end

end A135975.P9820494416273861366

namespace A135975

/-- `A046800(A054723(A000027(n+1)))` -/
def P9820494416273861366.Spec : Prop :=
  ∀ n, P9820494416273861366.a n = A135975 (n + 1)

end A135975

/-! ## A135975.P10052557081159842204

`A086251(A054723(n+1))%A002515(n+1)`
-/

namespace A135975.P10052557081159842204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086251 (A054723 (n + 1)).toNat) (A002515 (n + 1))

end

end A135975.P10052557081159842204

namespace A135975

/-- `A086251(A054723(n+1))%A002515(n+1)` -/
def P10052557081159842204.Spec : Prop :=
  ∀ n, P10052557081159842204.a n = A135975 (n + 1)

end A135975

/-! ## A135975.P6282569132944869955

`A046800(2*A054723(n+1)-A054723(n+1))`
-/

namespace A135975.P6282569132944869955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (2 * A054723 (n + 1) - A054723 (n + 1)).toNat

end

end A135975.P6282569132944869955

namespace A135975

/-- `A046800(2*A054723(n+1)-A054723(n+1))` -/
def P6282569132944869955.Spec : Prop :=
  ∀ n, P6282569132944869955.a n = A135975 (n + 1)

end A135975

/-! ## A135975.P16941419899990634827

`A086251(2*A054723(n+1)-A054723(n+1))`
-/

namespace A135975.P16941419899990634827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086251 (2 * A054723 (n + 1) - A054723 (n + 1)).toNat

end

end A135975.P16941419899990634827

namespace A135975

/-- `A086251(2*A054723(n+1)-A054723(n+1))` -/
def P16941419899990634827.Spec : Prop :=
  ∀ n, P16941419899990634827.a n = A135975 (n + 1)

end A135975

/-! ## A135975.P17254365646343764302

`A086251(A054723(n+1)%(A054723(n+1)+1))`
-/

namespace A135975.P17254365646343764302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086251 (Int.tmod (A054723 (n + 1)) (A054723 (n + 1) + 1)).toNat

end

end A135975.P17254365646343764302

namespace A135975

/-- `A086251(A054723(n+1)%(A054723(n+1)+1))` -/
def P17254365646343764302.Spec : Prop :=
  ∀ n, P17254365646343764302.a n = A135975 (n + 1)

end A135975

/-! ## A135975.P16538638590766267768

`A086251(p?[A143584(n+1)])`
-/

namespace A135975.P16538638590766267768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086251 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135975.P16538638590766267768

namespace A135975

/-- `A086251(p?[A143584(n+1)])` -/
def P16538638590766267768.Spec : Prop :=
  ∀ n, P16538638590766267768.a n = A135975 (n + 1)

end A135975

/-!
# A135976: 

The programs for A135976, there is no canonical definition to state claims against.
-/

/-! ## A135976.P1413891254607683003

`A000225(p?[eq[2, A046800(n)]])`
-/

namespace A135976.P1413891254607683003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A135976.P1413891254607683003

/-! ## A135976.P16171822408809511309

`record[A086250(p?[A298365(n+1)])]`
-/

namespace A135976.P16171822408809511309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298365 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086250 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135976.P16171822408809511309

/-!
# A135977: 

The programs for A135977, there is no canonical definition to state claims against.
-/

/-! ## A135977.P11663067252003283363

`A000225(p?[A294729(n+1)])`
-/

namespace A135977.P11663067252003283363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135977.P11663067252003283363

/-!
# A135978: Primes p such that 2^p-1 has exactly 2 prime factors.

The programs for A135978, there is no canonical definition to state claims against.
-/

/-! ## A135978.P8057744167503829252

`p?[A085724(n+1)]`
-/

namespace A135978.P8057744167503829252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135978.P8057744167503829252

/-! ## A135978.P3705340103563207926

`p?[eq[2, A046800(n)]]`
-/

namespace A135978.P3705340103563207926
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A135978.P3705340103563207926

/-! ## A135978.P11346256113636151410

`A000040(A135979(n+1))`
-/

namespace A135978.P11346256113636151410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A135979 (n + 1)).toNat

end

end A135978.P11346256113636151410

/-! ## A135978.P5542296816810416701

`eq[A046800(n), A092976(n)]`
-/

namespace A135978.P5542296816810416701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135978.P5542296816810416701

/-! ## A135978.P17473726798654175337

`eq[A046800(n), A217670(n)]`
-/

namespace A135978.P17473726798654175337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217670 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135978.P17473726798654175337

/-!
# A135979: Indices n such that 2^prime(n)-1 has exactly 2 distinct prime factors.

The programs for A135979, there is no canonical definition to state claims against.
-/

/-! ## A135979.P10705409932560866119

`A049084(A135978(n+1))`
-/

namespace A135979.P10705409932560866119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A135978 (n + 1)).toNat

end

end A135979.P10705409932560866119

/-! ## A135979.P4453458092585508721

`eq[2, A088863(n+1)]+1`
-/

namespace A135979.P4453458092585508721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088863 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A135979.P4453458092585508721

/-! ## A135979.P15339500690060261125

`eq[2, A088863(A028310(n))]`
-/

namespace A135979.P15339500690060261125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088863 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A135979.P15339500690060261125

/-! ## A135979.P10092363134388590132

`A000720(p?[A085724(n+1)])`
-/

namespace A135979.P10092363134388590132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135979.P10092363134388590132

/-! ## A135979.P14422296414228937319

`A055396(p?[A085724(n+1)])`
-/

namespace A135979.P14422296414228937319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A135979.P14422296414228937319

/-!
# A135980: Numbers k such that the Mersenne number 2^prime(k)-1 is composite.

The programs for A135980, there is no canonical definition to state claims against.
-/

/-! ## A135980.P9352370006919798712

`eq[0, A239681(n+1)]+1`
-/

namespace A135980.P9352370006919798712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239681 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A135980.P9352370006919798712

/-! ## A135980.P2150485174944039982

`A000720(A054723(n+1))`
-/

namespace A135980.P2150485174944039982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A054723 (n + 1)).toNat

end

end A135980.P2150485174944039982

/-! ## A135980.P13174701494493281520

`lt[1, A276121(n+1)]+1`
-/

namespace A135980.P13174701494493281520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276121 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A135980.P13174701494493281520

/-! ## A135980.P5263169125730531336

`A304818(A054723(n+1)%A017439(n))`
-/

namespace A135980.P5263169125730531336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (Int.tmod (A054723 (n + 1)) (A017439 n)).toNat

end

end A135980.P5263169125730531336

/-! ## A135980.P721565536116554330

`comp[A316524(A000043(n+1))-1]+1`
-/

namespace A135980.P721565536116554330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (A000043 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A135980.P721565536116554330

/-! ## A135980.P16526745531418082912

`A065864(A054723(n+1)+1)`
-/

namespace A135980.P16526745531418082912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065864 (A054723 (n + 1) + 1).toNat

end

end A135980.P16526745531418082912

/-! ## A135980.P7746023528529915959

`A204892(A054723(n+1)-2)`
-/

namespace A135980.P7746023528529915959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A054723 (n + 1) - 2).toNat

end

end A135980.P7746023528529915959

/-! ## A135980.P10749062089678289818

`A056239(∩[A000040(n+1), A054723(n+1)])`
-/

namespace A135980.P10749062089678289818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A135980.P10749062089678289818

/-! ## A135980.P10597249940419869419

`A003963(2*A054723(n+1))`
-/

namespace A135980.P10597249940419869419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A054723 (n + 1)).toNat

end

end A135980.P10597249940419869419

/-! ## A135980.P1914332808508882339

`A325224(3*A054723(n+1))`
-/

namespace A135980.P1914332808508882339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325224 (3 * A054723 (n + 1)).toNat

end

end A135980.P1914332808508882339

/-! ## A135980.P11172565733836199580

`lt[2, A066180(n+1)]+1`
-/

namespace A135980.P11172565733836199580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066180 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A135980.P11172565733836199580

/-! ## A135980.P16183895653005784018

`lt[2, A123487(n+1)]+1`
-/

namespace A135980.P16183895653005784018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123487 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A135980.P16183895653005784018

/-! ## A135980.P18388106293603100219

`lt[1, A088863(n+1)]+1`
-/

namespace A135980.P18388106293603100219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088863 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A135980.P18388106293603100219

/-! ## A135980.P14905401955547270594

`lt[1, A046800(A008578(n+1))]`
-/

namespace A135980.P14905401955547270594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A135980.P14905401955547270594

/-! ## A135980.P6169891218472630162

`lt[1, A046051(A000040(n+1))]+1`
-/

namespace A135980.P6169891218472630162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A135980.P6169891218472630162

/-! ## A135980.P14091460114933334428

`lt[1, A046800(A001747(n+1)/2)]`
-/

namespace A135980.P14091460114933334428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (SequenceMachineLib.roundAway ((A001747 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A135980.P14091460114933334428

/-! ## A135980.P11157903695377329569

`lt[1, A222119(n+1)]+1`
-/

namespace A135980.P11157903695377329569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222119 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A135980.P11157903695377329569

/-!
# A135981: Number of distinct prime factors of A135972(n).

The programs for A135981, there is no canonical definition to state claims against.
-/

/-! ## A135981.P1966904419703779482

`A046800(A045762(n+2))`
-/

namespace A135981.P1966904419703779482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (A045762 (n + 2)).toNat

end

end A135981.P1966904419703779482

/-! ## A135981.P10944226069450065379

`A046800(lt[A106821(n+1), n])`
-/

namespace A135981.P10944226069450065379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106821 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A135981.P10944226069450065379

/-! ## A135981.P6109690243046185147

`A046800(lt[1, A046800(n)+A000038(n)])`
-/

namespace A135981.P6109690243046185147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n + A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A135981.P6109690243046185147

/-! ## A135981.P15758261963312165319

`A046800(lt[1-A000038(n), A046800(n)])`
-/

namespace A135981.P15758261963312165319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A135981.P15758261963312165319

/-! ## A135981.P9831573710974204685

`A046800(lt[A000038(n), A127587(n)])`
-/

namespace A135981.P9831573710974204685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A135981.P9831573710974204685

/-! ## A135981.P15929899937012538118

`A046800(lt[A036987(n), A127587(n)])`
-/

namespace A135981.P15929899937012538118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A135981.P15929899937012538118

/-! ## A135981.P16712692728528577887

`A046800(lt[A019590(n+1), A127587(n)])`
-/

namespace A135981.P16712692728528577887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A135981.P16712692728528577887

/-! ## A135981.P15479123826336952571

`A046800(lt[1, A127587(n)+A046800(n)])`
-/

namespace A135981.P15479123826336952571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127587 n + A046800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A135981.P15479123826336952571

/-! ## A135981.P2439013504381376404

`A046800(lt[1-A046800(n), A127587(n)])`
-/

namespace A135981.P2439013504381376404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A046800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A135981.P2439013504381376404

/-! ## A135981.P16287249696875075078

`A046800(lt[A046800(n), n*A127587(n)])`
-/

namespace A135981.P16287249696875075078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A127587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A135981.P16287249696875075078

/-!
# A135982: 

The programs for A135982, there is no canonical definition to state claims against.
-/

/-! ## A135982.P4078656972063630870

`A241955(6*n+1)`
-/

namespace A135982.P4078656972063630870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241955 (6 * n + 1)

end

end A135982.P4078656972063630870

/-! ## A135982.P18208133342530027081

`2^A135659(n)-1`
-/

namespace A135982.P18208133342530027081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A135659 n : ℤ) - 1

end

end A135982.P18208133342530027081

/-! ## A135982.P14056421590923644829

`A000225(4*6*n+7)`
-/

namespace A135982.P14056421590923644829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (4 * (6 * n) + 7)

end

end A135982.P14056421590923644829

/-! ## A135982.P11833448934890490185

`floor(A175824(3*n+1)/2)`
-/

namespace A135982.P11833448934890490185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A175824 (3 * n + 1) : ℚ) / 2⌋

end

end A135982.P11833448934890490185

/-! ## A135982.P12271847143678027221

`A266380(A017533(n)+2)`
-/

namespace A135982.P12271847143678027221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266380 (A017533 n + 2).toNat

end

end A135982.P12271847143678027221

/-!
# A135984: a(n) = 24(prime(n))+7.

The programs for A135984, the canonical program `A135984.P11973225380063024695` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135984 has offset 1).

The definition of A135984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135984.P11973225380063024695

`24*A000040(n+1)+7`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135984

/-- `24*A000040(n+1)+7` -/
def P11973225380063024695.Spec : Prop :=
  ∀ n, P11973225380063024695.a n = A135984 (n + 1)

theorem P11973225380063024695.correct : P11973225380063024695.Spec := by
  intro n
  simp only [A135984, Nat.add_sub_cancel]

end A135984

/-! ## A135984.P12055551604858241966

`24*record[A006530(n+2)]+7`
-/

namespace A135984.P12055551604858241966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 7

end

end A135984.P12055551604858241966

namespace A135984

/-- `24*record[A006530(n+2)]+7` -/
def P12055551604858241966.Spec : Prop :=
  ∀ n, P12055551604858241966.a n = A135984 (n + 1)

end A135984

/-! ## A135984.P12631373602310735109

`24*record[A020639(n+2)]+7`
-/

namespace A135984.P12631373602310735109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 7

end

end A135984.P12631373602310735109

namespace A135984

/-- `24*record[A020639(n+2)]+7` -/
def P12631373602310735109.Spec : Prop :=
  ∀ n, P12631373602310735109.a n = A135984 (n + 1)

end A135984

/-! ## A135984.P2211165845389053332

`record[24*A000010(n+1)+31]`
-/

namespace A135984.P2211165845389053332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A000010 (n + 1) + 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135984.P2211165845389053332

namespace A135984

/-- `record[24*A000010(n+1)+31]` -/
def P2211165845389053332.Spec : Prop :=
  ∀ n, P2211165845389053332.a n = A135984 (n + 1)

end A135984

/-! ## A135984.P16557960977294333111

`24*record[A014963(n+2)]+7`
-/

namespace A135984.P16557960977294333111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 7

end

end A135984.P16557960977294333111

namespace A135984

/-- `24*record[A014963(n+2)]+7` -/
def P16557960977294333111.Spec : Prop :=
  ∀ n, P16557960977294333111.a n = A135984 (n + 1)

end A135984

/-! ## A135984.P2380509759008134329

`A135659(A000040(n+1))`
-/

namespace A135984.P2380509759008134329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 (A000040 (n + 1)).toNat

end

end A135984.P2380509759008134329

namespace A135984

/-- `A135659(A000040(n+1))` -/
def P2380509759008134329.Spec : Prop :=
  ∀ n, P2380509759008134329.a n = A135984 (n + 1)

end A135984

/-! ## A135984.P11186809383165478696

`A135659(A008578(n+2))`
-/

namespace A135984.P11186809383165478696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 (A008578 (n + 2)).toNat

end

end A135984.P11186809383165478696

namespace A135984

/-- `A135659(A008578(n+2))` -/
def P11186809383165478696.Spec : Prop :=
  ∀ n, P11186809383165478696.a n = A135984 (n + 1)

end A135984

/-! ## A135984.P11483501899736172495

`A135659(A182986(n+2))`
-/

namespace A135984.P11483501899736172495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 (A182986 (n + 2)).toNat

end

end A135984.P11483501899736172495

namespace A135984

/-- `A135659(A182986(n+2))` -/
def P11483501899736172495.Spec : Prop :=
  ∀ n, P11483501899736172495.a n = A135984 (n + 1)

end A135984

/-! ## A135984.P14354716145789431540

`A135659(record[A006530(n+2)])`
-/

namespace A135984.P14354716145789431540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A135984.P14354716145789431540

namespace A135984

/-- `A135659(record[A006530(n+2)])` -/
def P14354716145789431540.Spec : Prop :=
  ∀ n, P14354716145789431540.a n = A135984 (n + 1)

end A135984

/-! ## A135984.P7606088819205264469

`A135659(record[A014963(n+2)])`
-/

namespace A135984.P7606088819205264469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A135984.P7606088819205264469

namespace A135984

/-- `A135659(record[A014963(n+2)])` -/
def P7606088819205264469.Spec : Prop :=
  ∀ n, P7606088819205264469.a n = A135984 (n + 1)

end A135984

/-! ## A135984.P12087992580447575961

`A135659(record[A020639(n+2)])`
-/

namespace A135984.P12087992580447575961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135659 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A135984.P12087992580447575961

namespace A135984

/-- `A135659(record[A020639(n+2)])` -/
def P12087992580447575961.Spec : Prop :=
  ∀ n, P12087992580447575961.a n = A135984 (n + 1)

end A135984

/-! ## A135984.P9298820362763343826

`A017605(A100484(n+1))`
-/

namespace A135984.P9298820362763343826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (A100484 (n + 1)).toNat

end

end A135984.P9298820362763343826

namespace A135984

/-- `A017605(A100484(n+1))` -/
def P9298820362763343826.Spec : Prop :=
  ∀ n, P9298820362763343826.a n = A135984 (n + 1)

end A135984

/-! ## A135984.P7761136122973848765

`A140716(A072055(n+1))`
-/

namespace A135984.P7761136122973848765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140716 (A072055 (n + 1)).toNat

end

end A135984.P7761136122973848765

namespace A135984

/-- `A140716(A072055(n+1))` -/
def P7761136122973848765.Spec : Prop :=
  ∀ n, P7761136122973848765.a n = A135984 (n + 1)

end A135984

/-! ## A135984.P14738108050218878337

`A017605(A001747(n+2))`
-/

namespace A135984.P14738108050218878337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (A001747 (n + 2)).toNat

end

end A135984.P14738108050218878337

namespace A135984

/-- `A017605(A001747(n+2))` -/
def P14738108050218878337.Spec : Prop :=
  ∀ n, P14738108050218878337.a n = A135984 (n + 1)

end A135984

/-! ## A135984.P14602094976030410546

`A017605(2*A000040(n+1))`
-/

namespace A135984.P14602094976030410546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * A000040 (n + 1)).toNat

end

end A135984.P14602094976030410546

namespace A135984

/-- `A017605(2*A000040(n+1))` -/
def P14602094976030410546.Spec : Prop :=
  ∀ n, P14602094976030410546.a n = A135984 (n + 1)

end A135984

/-! ## A135984.P10551983223698467350

`A017605(2*A008578(n+2))`
-/

namespace A135984.P10551983223698467350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * A008578 (n + 2)).toNat

end

end A135984.P10551983223698467350

namespace A135984

/-- `A017605(2*A008578(n+2))` -/
def P10551983223698467350.Spec : Prop :=
  ∀ n, P10551983223698467350.a n = A135984 (n + 1)

end A135984

/-! ## A135984.P10784815673710404463

`A017605(2*A067747(2*n+1))`
-/

namespace A135984.P10784815673710404463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (2 * A067747 (2 * n + 1)).toNat

end

end A135984.P10784815673710404463

namespace A135984

/-- `A017605(2*A067747(2*n+1))` -/
def P10784815673710404463.Spec : Prop :=
  ∀ n, P10784815673710404463.a n = A135984 (n + 1)

end A135984

/-! ## A135984.P9985741696617088486

`A140716(A000040(n+1)+A000040(n+1)+1)`
-/

namespace A135984.P9985741696617088486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140716 (A000040 (n + 1) + (A000040 (n + 1) + 1)).toNat

end

end A135984.P9985741696617088486

namespace A135984

/-- `A140716(A000040(n+1)+A000040(n+1)+1)` -/
def P9985741696617088486.Spec : Prop :=
  ∀ n, P9985741696617088486.a n = A135984 (n + 1)

end A135984

/-! ## A135984.P14771777934329820842

`A004771(A001748(n+1))`
-/

namespace A135984.P14771777934329820842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (A001748 (n + 1)).toNat

end

end A135984.P14771777934329820842

namespace A135984

/-- `A004771(A001748(n+1))` -/
def P14771777934329820842.Spec : Prop :=
  ∀ n, P14771777934329820842.a n = A135984 (n + 1)

end A135984

/-! ## A135984.P4573244463640747308

`A004771(A112773(n+2))`
-/

namespace A135984.P4573244463640747308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (A112773 (n + 2)).toNat

end

end A135984.P4573244463640747308

namespace A135984

/-- `A004771(A112773(n+2))` -/
def P4573244463640747308.Spec : Prop :=
  ∀ n, P4573244463640747308.a n = A135984 (n + 1)

end A135984

/-!
# A135985: Prime numbers of the form 24*p + 7 where p is prime.

The programs for A135985, the canonical program `A135985.P16089115117049076937` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135985 has offset 1).

The definition of A135985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2078 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135985.P16089115117049076937

`∩[A135984(n+1), A142408(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A135985

/-- `∩[A135984(n+1), A142408(n+1)]` -/
def P16089115117049076937.Spec : Prop :=
  ∀ n, (P16089115117049076937.a n : ℤ) = A135985 (n + 1)

theorem P16089115117049076937.correct : P16089115117049076937.Spec := by
  intro n
  simp only [A135985, Nat.add_sub_cancel]

end A135985

/-! ## A135985.P5889790128382411445

`∩[A107006(n+1), A135984(n+1)]`
-/

namespace A135985.P5889790128382411445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135985.P5889790128382411445

namespace A135985

/-- `∩[A107006(n+1), A135984(n+1)]` -/
def P5889790128382411445.Spec : Prop :=
  ∀ n, (P5889790128382411445.a n : ℤ) = A135985 (n + 1)

end A135985

/-! ## A135985.P3635794401075643465

`∩[A127576(n+1), A135984(n+1)]`
-/

namespace A135985.P3635794401075643465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135985.P3635794401075643465

namespace A135985

/-- `∩[A127576(n+1), A135984(n+1)]` -/
def P3635794401075643465.Spec : Prop :=
  ∀ n, (P3635794401075643465.a n : ℤ) = A135985 (n + 1)

end A135985

/-! ## A135985.P10769649796706721740

`p?[3*(8*p?[2*n+1]+2)+1]`
-/

namespace A135985.P10769649796706721740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (8 * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A135985.P10769649796706721740

namespace A135985

/-- `p?[3*(8*p?[2*n+1]+2)+1]` -/
def P10769649796706721740.Spec : Prop :=
  ∀ n, (P10769649796706721740.a n : ℤ) = A135985 (n + 1)

end A135985

/-! ## A135985.P15857162686036824476

`p?[A135984(n+1)]`
-/

namespace A135985.P15857162686036824476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135985.P15857162686036824476

namespace A135985

/-- `p?[A135984(n+1)]` -/
def P15857162686036824476.Spec : Prop :=
  ∀ n, P15857162686036824476.a n = A135985 (n + 1)

end A135985

/-! ## A135985.P13847107177802000933

`p?[24*A000040(n+1)+7]`
-/

namespace A135985.P13847107177802000933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A000040 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A135985.P13847107177802000933

namespace A135985

/-- `p?[24*A000040(n+1)+7]` -/
def P13847107177802000933.Spec : Prop :=
  ∀ n, P13847107177802000933.a n = A135985 (n + 1)

end A135985

/-! ## A135985.P17154532409530104672

`∩[A033199(n+1), A135984(n+1)]`
-/

namespace A135985.P17154532409530104672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135985.P17154532409530104672

namespace A135985

/-- `∩[A033199(n+1), A135984(n+1)]` -/
def P17154532409530104672.Spec : Prop :=
  ∀ n, (P17154532409530104672.a n : ℤ) = A135985 (n + 1)

end A135985

/-! ## A135985.P6216478062818312198

`∩[A135984(n+1), A290402(n+1)]`
-/

namespace A135985.P6216478062818312198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135985.P6216478062818312198

namespace A135985

/-- `∩[A135984(n+1), A290402(n+1)]` -/
def P6216478062818312198.Spec : Prop :=
  ∀ n, (P6216478062818312198.a n : ℤ) = A135985 (n + 1)

end A135985

/-! ## A135985.P4545137183773193229

`∩[A007522(n+1), A135984(n+1)]`
-/

namespace A135985.P4545137183773193229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135985.P4545137183773193229

namespace A135985

/-- `∩[A007522(n+1), A135984(n+1)]` -/
def P4545137183773193229.Spec : Prop :=
  ∀ n, (P4545137183773193229.a n : ℤ) = A135985 (n + 1)

end A135985

/-! ## A135985.P16488799626897098830

`∩[A045382(n+1), A135984(n+1)]`
-/

namespace A135985.P16488799626897098830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135985.P16488799626897098830

namespace A135985

/-- `∩[A045382(n+1), A135984(n+1)]` -/
def P16488799626897098830.Spec : Prop :=
  ∀ n, (P16488799626897098830.a n : ℤ) = A135985 (n + 1)

end A135985

/-! ## A135985.P9055939936112188652

`∩[A068229(n+1), A135984(n+1)]`
-/

namespace A135985.P9055939936112188652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135985.P9055939936112188652

namespace A135985

/-- `∩[A068229(n+1), A135984(n+1)]` -/
def P9055939936112188652.Spec : Prop :=
  ∀ n, (P9055939936112188652.a n : ℤ) = A135985 (n + 1)

end A135985

/-! ## A135985.P15192699929582525150

`∩[A094712(n+1), A135984(n+1)]`
-/

namespace A135985.P15192699929582525150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135985.P15192699929582525150

namespace A135985

/-- `∩[A094712(n+1), A135984(n+1)]` -/
def P15192699929582525150.Spec : Prop :=
  ∀ n, (P15192699929582525150.a n : ℤ) = A135985 (n + 1)

end A135985

/-! ## A135985.P13524277414124646919

`∩[A089199(n+1), A135984(n+1)]`
-/

namespace A135985.P13524277414124646919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135985.P13524277414124646919

namespace A135985

/-- `∩[A089199(n+1), A135984(n+1)]` -/
def P13524277414124646919.Spec : Prop :=
  ∀ n, (P13524277414124646919.a n : ℤ) = A135985 (n + 1)

end A135985

/-! ## A135985.P2734958512737733501

`∩[A014663(n+1), A135984(n+1)]`
-/

namespace A135985.P2734958512737733501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135985.P2734958512737733501

namespace A135985

/-- `∩[A014663(n+1), A135984(n+1)]` -/
def P2734958512737733501.Spec : Prop :=
  ∀ n, (P2734958512737733501.a n : ℤ) = A135985 (n + 1)

end A135985

/-! ## A135985.P11605951685731922495

`∩[A135984(n+1), A385223(n+1)]`
-/

namespace A135985.P11605951685731922495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135985.P11605951685731922495

namespace A135985

/-- `∩[A135984(n+1), A385223(n+1)]` -/
def P11605951685731922495.Spec : Prop :=
  ∀ n, (P11605951685731922495.a n : ℤ) = A135985 (n + 1)

end A135985

/-! ## A135985.P4308362374377186082

`∩[A040098(n+1), A135984(n+1)]`
-/

namespace A135985.P4308362374377186082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135985.P4308362374377186082

namespace A135985

/-- `∩[A040098(n+1), A135984(n+1)]` -/
def P4308362374377186082.Spec : Prop :=
  ∀ n, (P4308362374377186082.a n : ℤ) = A135985 (n + 1)

end A135985

/-! ## A135985.P247138853556084963

`∩[A135984(n+1), A225185(n+1)]`
-/

namespace A135985.P247138853556084963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135985.P247138853556084963

namespace A135985

/-- `∩[A135984(n+1), A225185(n+1)]` -/
def P247138853556084963.Spec : Prop :=
  ∀ n, (P247138853556084963.a n : ℤ) = A135985 (n + 1)

end A135985

/-! ## A135985.P228106212519225

`∩[A135984(n+1), A332514(n+1)]`
-/

namespace A135985.P228106212519225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135985.P228106212519225

namespace A135985

/-- `∩[A135984(n+1), A332514(n+1)]` -/
def P228106212519225.Spec : Prop :=
  ∀ n, (P228106212519225.a n : ℤ) = A135985 (n + 1)

end A135985

/-! ## A135985.P16010549330288758984

`∩[A040141(n+1), A135984(n+1)]`
-/

namespace A135985.P16010549330288758984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135985.P16010549330288758984

namespace A135985

/-- `∩[A040141(n+1), A135984(n+1)]` -/
def P16010549330288758984.Spec : Prop :=
  ∀ n, (P16010549330288758984.a n : ℤ) = A135985 (n + 1)

end A135985

/-!
# A135986: a(1)=1; a(n) = a(n-1) + d(n) if d(n) > d(n-1); a(n) = a(n-1) - d(n) if d(n) < d(n-1); a(n) = a(n-1) if d(n) = d(n-1), where d = A000005.

The programs for A135986, there is no canonical definition to state claims against.
-/

/-! ## A135986.P15684219726057657169

`A307704(n+1)+A000005(A128159(3*n+5))`
-/

namespace A135986.P15684219726057657169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307704 (n + 1) + A000005 (A128159 (3 * n + 5)).toNat

end

end A135986.P15684219726057657169

/-! ## A135986.P12022924660811779536

`∑{d}[n+1, ceil(1/#)]+A059851(n)%A160922(n+1)`
-/

namespace A135986.P12022924660811779536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉ + Int.tmod (A059851 n) (A160922 (n + 1))

end

end A135986.P12022924660811779536

/-! ## A135986.P5059674077607586157

`A073812(A073815(n+1))+A059851(n)`
-/

namespace A135986.P5059674077607586157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073812 (A073815 (n + 1)).toNat + A059851 n

end

end A135986.P5059674077607586157

/-! ## A135986.P3703321207894151029

`A000005(n+1)+A059851(n)%A119382(A008860(n))`
-/

namespace A135986.P3703321207894151029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + Int.tmod (A059851 n) (A119382 (A008860 n).toNat)

end

end A135986.P3703321207894151029

/-!
# A135987: Records in A064844.

The programs for A135987, there is no canonical definition to state claims against.
-/

/-! ## A135987.P3043311293664910222

`A064844(A135988(n+1))`
-/

namespace A135987.P3043311293664910222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064844 (A135988 (n + 1)).toNat

end

end A135987.P3043311293664910222

/-! ## A135987.P15192565480752669194

`eq[A321763(n+1), A321894(A093641(n+1))]`
-/

namespace A135987.P15192565480752669194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321894 (A093641 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A135987.P15192565480752669194

/-!
# A135989: a(n) = 6*n + 3 + 90*floor((6*n+3)/10).

The programs for A135989, the canonical program `A135989.P9282618967246232188` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135989 has offset 0).

The definition of A135989 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n+3+90*floor((6*n+3)/10)` (program `A135989.P9282618967246232188`, by `A135989.P9282618967246232188.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135989.P9282618967246232188

`6*n+3+90*floor((6*n+3)/10)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135989

/-- `6*n+3+90*floor((6*n+3)/10)` -/
def P9282618967246232188.Spec : Prop :=
  ∀ n, P9282618967246232188.a n = A135989 n

theorem P9282618967246232188.correct : P9282618967246232188.Spec := by
  intro n
  simp only [A135989]

end A135989

/-! ## A135989.P16834111161310437547

`eq[n, A235451(A039723(n))]`
-/

namespace A135989.P16834111161310437547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235451 (A039723 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A135989.P16834111161310437547

namespace A135989

/-- `eq[n, A235451(A039723(n))]` -/
def P16834111161310437547.Spec : Prop :=
  ∀ n, (P16834111161310437547.a n : ℤ) = A135989 n

end A135989

/-! ## A135989.P5840386472173623444

`A028310(A051022(6*n+3))`
-/

namespace A135989.P5840386472173623444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A051022 (6 * n + 3)).toNat

end

end A135989.P5840386472173623444

namespace A135989

/-- `A028310(A051022(6*n+3))` -/
def P5840386472173623444.Spec : Prop :=
  ∀ n, P5840386472173623444.a n = A135989 n

end A135989

/-! ## A135989.P13512505822766144110

`filter[A051022(3*n), A000035(#)]`
-/

namespace A135989.P13512505822766144110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A135989.P13512505822766144110

namespace A135989

/-- `filter[A051022(3*n), A000035(#)]` -/
def P13512505822766144110.Spec : Prop :=
  ∀ n, P13512505822766144110.a n = A135989 n

end A135989

/-!
# A135990: Expansion of x^3*(x-1)*(x+1) / (x^5-2*x^4+x^2-1).

The programs for A135990, the canonical program `A135990.P16156997884111782161` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135990 has offset 1).

The definition of A135990 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x^2-x^4)/(1-x^2+2x^4-x^5))` (program `A135990.P16156997884111782161`, by `A135990.P16156997884111782161.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135990.P16156997884111782161

`ogf((x^2-x^4)/(1-x^2+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135990

/-- `ogf((x^2-x^4)/(1-x^2+2x^4-x^5))` -/
def P16156997884111782161.Spec : Prop :=
  ∀ n, P16156997884111782161.a n = A135990 (n + 1)

theorem P16156997884111782161.correct : P16156997884111782161.Spec := by
  intro n
  simp only [A135990, Nat.add_sub_cancel]

end A135990

/-!
# A135991: Expansion of x^3*(x-1)^2*(x+1) / (x^6-3*x^5+3*x^4-x+1).

The programs for A135991, the canonical program `A135991.P2766483300926171684` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135991 has offset 1).

The definition of A135991 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x^2-x^3-x^4+x^5)/(1-x+3x^4-3x^5+x^6))` (program `A135991.P2766483300926171684`, by `A135991.P2766483300926171684.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135991.P2766483300926171684

`ogf((x^2-x^3-x^4+x^5)/(1-x+3x^4-3x^5+x^6))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135991

/-- `ogf((x^2-x^3-x^4+x^5)/(1-x+3x^4-3x^5+x^6))` -/
def P2766483300926171684.Spec : Prop :=
  ∀ n, P2766483300926171684.a n = A135991 (n + 1)

theorem P2766483300926171684.correct : P2766483300926171684.Spec := by
  intro n
  simp only [A135991, Nat.add_sub_cancel]

end A135991

/-!
# A135992: Positive Fibonacci numbers swapped in pairs.

The programs for A135992, the canonical program `A135992.P8622314835539076635` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135992 has offset 1).

The definition of A135992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135992.P17996953366323368789

`ogf((1+x-x^3)/(1-3x^2+x^4))`
-/

namespace A135992.P17996953366323368789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, -1] [1, 0, -3, 0, 1] n

end

end A135992.P17996953366323368789

namespace A135992

/-- `ogf((1+x-x^3)/(1-3x^2+x^4))` -/
def P17996953366323368789.Spec : Prop :=
  ∀ n, P17996953366323368789.a n = A135992 (n + 1)

end A135992

/-! ## A135992.P8622314835539076635

`A098054(2*(n+2))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A135992

/-- `A098054(2*(n+2))` -/
def P8622314835539076635.Spec : Prop :=
  ∀ n, P8622314835539076635.a n = A135992 (n + 1)

theorem P8622314835539076635.correct : P8622314835539076635.Spec := by
  intro n
  simp only [A135992, Nat.add_sub_cancel]

end A135992

/-! ## A135992.P1780179045853889073

`A000045(xor(1, n)+1)`
-/

namespace A135992.P1780179045853889073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.xor 1 n + 1)

end

end A135992.P1780179045853889073

namespace A135992

/-- `A000045(xor(1, n)+1)` -/
def P1780179045853889073.Spec : Prop :=
  ∀ n, P1780179045853889073.a n = A135992 (n + 1)

end A135992

/-! ## A135992.P9679439420332575652

`A212804(xor(1, n+2))`
-/

namespace A135992.P9679439420332575652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (Nat.xor 1 (n + 2))

end

end A135992.P9679439420332575652

namespace A135992

/-- `A212804(xor(1, n+2))` -/
def P9679439420332575652.Spec : Prop :=
  ∀ n, P9679439420332575652.a n = A135992 (n + 1)

end A135992

/-! ## A135992.P5279952618031836017

`A324969(xor(1, n+2))`
-/

namespace A135992.P5279952618031836017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (Nat.xor 1 (n + 2))

end

end A135992.P5279952618031836017

namespace A135992

/-- `A324969(xor(1, n+2))` -/
def P5279952618031836017.Spec : Prop :=
  ∀ n, P5279952618031836017.a n = A135992 (n + 1)

end A135992

/-! ## A135992.P13666423665499629547

`A079977(2*xor(1, n))`
-/

namespace A135992.P13666423665499629547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (2 * Nat.xor 1 n)

end

end A135992.P13666423665499629547

namespace A135992

/-- `A079977(2*xor(1, n))` -/
def P13666423665499629547.Spec : Prop :=
  ∀ n, P13666423665499629547.a n = A135992 (n + 1)

end A135992

/-! ## A135992.P13145993800440632223

`A174619(xor(3, 2*n))`
-/

namespace A135992.P13145993800440632223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174619 (Nat.xor 3 (2 * n))

end

end A135992.P13145993800440632223

namespace A135992

/-- `A174619(xor(3, 2*n))` -/
def P13145993800440632223.Spec : Prop :=
  ∀ n, P13145993800440632223.a n = A135992 (n + 1)

end A135992

/-! ## A135992.P2209740681857433007

`A272912(xor(3, 2*n))`
-/

namespace A135992.P2209740681857433007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272912 (Nat.xor 3 (2 * n))

end

end A135992.P2209740681857433007

namespace A135992

/-- `A272912(xor(3, 2*n))` -/
def P2209740681857433007.Spec : Prop :=
  ∀ n, P2209740681857433007.a n = A135992 (n + 1)

end A135992

/-! ## A135992.P8695665289991176071

`A053602(or(1, n)+n)`
-/

namespace A135992.P8695665289991176071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (Nat.lor 1 n + n)

end

end A135992.P8695665289991176071

namespace A135992

/-- `A053602(or(1, n)+n)` -/
def P8695665289991176071.Spec : Prop :=
  ∀ n, P8695665289991176071.a n = A135992 (n + 1)

end A135992

/-! ## A135992.P11352652874692137764

`A000045(abs(xor(n, -2)))`
-/

namespace A135992.P11352652874692137764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |Int.xor (n : ℤ) (-2)|.toNat

end

end A135992.P11352652874692137764

namespace A135992

/-- `A000045(abs(xor(n, -2)))` -/
def P11352652874692137764.Spec : Prop :=
  ∀ n, P11352652874692137764.a n = A135992 (n + 1)

end A135992

/-! ## A135992.P2760428765895655473

`A000045(-xor(n, -2))`
-/

namespace A135992.P2760428765895655473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (-Int.xor (n : ℤ) (-2)).toNat

end

end A135992.P2760428765895655473

namespace A135992

/-- `A000045(-xor(n, -2))` -/
def P2760428765895655473.Spec : Prop :=
  ∀ n, P2760428765895655473.a n = A135992 (n + 1)

end A135992

/-! ## A135992.P13708621950679462730

`A000045(2-xor(1, 1-n))`
-/

namespace A135992.P13708621950679462730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 - Int.xor 1 (1 - (n : ℤ))).toNat

end

end A135992.P13708621950679462730

namespace A135992

/-- `A000045(2-xor(1, 1-n))` -/
def P13708621950679462730.Spec : Prop :=
  ∀ n, P13708621950679462730.a n = A135992 (n + 1)

end A135992

/-! ## A135992.P991704361619701784

`A000045(2*or(1, n)-n)`
-/

namespace A135992.P991704361619701784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * Nat.lor 1 n - n)

end

end A135992.P991704361619701784

namespace A135992

/-- `A000045(2*or(1, n)-n)` -/
def P991704361619701784.Spec : Prop :=
  ∀ n, P991704361619701784.a n = A135992 (n + 1)

end A135992

/-! ## A135992.P6116248909457934950

`A000045(and(2, gcd(2, n))+n)`
-/

namespace A135992.P6116248909457934950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.land 2 (Nat.gcd 2 n) + n)

end

end A135992.P6116248909457934950

namespace A135992

/-- `A000045(and(2, gcd(2, n))+n)` -/
def P6116248909457934950.Spec : Prop :=
  ∀ n, P6116248909457934950.a n = A135992 (n + 1)

end A135992

/-! ## A135992.P8622663074670970557

`A108362(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A135992.P8622663074670970557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A108362 n + a (n - 2)

end

end A135992.P8622663074670970557

namespace A135992

/-- `A108362(n)+a(n-2)` -/
def P8622663074670970557.Spec : Prop :=
  ∀ n, P8622663074670970557.a n = A135992 (n + 1)

end A135992

/-! ## A135992.P9267717014493054651

`A000045((-1)^n+n+1)`
-/

namespace A135992.P9267717014493054651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A135992.P9267717014493054651

namespace A135992

/-- `A000045((-1)^n+n+1)` -/
def P9267717014493054651.Spec : Prop :=
  ∀ n, P9267717014493054651.a n = A135992 (n + 1)

end A135992

/-! ## A135992.P1105369579910683934

`A327035(A136320(n))`
-/

namespace A135992.P1105369579910683934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327035 (A136320 n).toNat

end

end A135992.P1105369579910683934

namespace A135992

/-- `A327035(A136320(n))` -/
def P1105369579910683934.Spec : Prop :=
  ∀ n, P1105369579910683934.a n = A135992 (n + 1)

end A135992

/-! ## A135992.P14621397380655336619

`A053602(A042963(n+1))`
-/

namespace A135992.P14621397380655336619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A042963 (n + 1)).toNat

end

end A135992.P14621397380655336619

namespace A135992

/-- `A053602(A042963(n+1))` -/
def P14621397380655336619.Spec : Prop :=
  ∀ n, P14621397380655336619.a n = A135992 (n + 1)

end A135992

/-! ## A135992.P15191827403742024790

`A103609(A086970(n+1))`
-/

namespace A135992.P15191827403742024790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A086970 (n + 1)).toNat

end

end A135992.P15191827403742024790

namespace A135992

/-- `A103609(A086970(n+1))` -/
def P15191827403742024790.Spec : Prop :=
  ∀ n, P15191827403742024790.a n = A135992 (n + 1)

end A135992

/-! ## A135992.P7532995099364344933

`A103609(A166519(n)+1)`
-/

namespace A135992.P7532995099364344933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A166519 n + 1).toNat

end

end A135992.P7532995099364344933

namespace A135992

/-- `A103609(A166519(n)+1)` -/
def P7532995099364344933.Spec : Prop :=
  ∀ n, P7532995099364344933.a n = A135992 (n + 1)

end A135992

/-!
# A135993: a(0) = 0; a(n) = (floor(n/S2(n))) mod 2 for n >= 1, where S2(n) is the binary weight of n.

The programs for A135993, the canonical program `A135993.P10611808160087165424` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135993 has offset 0).

The definition of A135993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135993.P10611808160087165424

`a(A135941(n)%2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A135993

/-- `a(A135941(n)%2)` -/
def P10611808160087165424.Spec : Prop :=
  ∀ n, (P10611808160087165424.a n : ℤ) = A135993 n

theorem P10611808160087165424.correct : P10611808160087165424.Spec := by
  intro n
  simp only [A135993]

end A135993

/-! ## A135993.P17703544414824847664

`A135941(abs(1-n)+1)%2`
-/

namespace A135993.P17703544414824847664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135941 (|1 - (n : ℤ)| + 1).toNat) 2

end

end A135993.P17703544414824847664

namespace A135993

/-- `A135941(abs(1-n)+1)%2` -/
def P17703544414824847664.Spec : Prop :=
  ∀ n, P17703544414824847664.a n = A135993 n

end A135993

/-! ## A135993.P812127606257007409

`floor(n/A028310(A000120(n)))%2`
-/

namespace A135993.P812127606257007409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n : ℚ) / (A028310 (A000120 n).toNat : ℚ)⌋ 2

end

end A135993.P812127606257007409

namespace A135993

/-- `floor(n/A028310(A000120(n)))%2` -/
def P812127606257007409.Spec : Prop :=
  ∀ n, P812127606257007409.a n = A135993 n

end A135993

/-! ## A135993.P9013468946298137490

`and(1, A135941(n)^(A035614(a(n-1))+2))` with `a(0)=0`
-/

namespace A135993.P9013468946298137490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land 1 (SequenceMachineLib.roundAway ((A135941 n : ℚ) ^ (A035614 (a (n - 1)).toNat + 2 : ℤ)))

end

end A135993.P9013468946298137490

namespace A135993

/-- `and(1, A135941(n)^(A035614(a(n-1))+2))` -/
def P9013468946298137490.Spec : Prop :=
  ∀ n, P9013468946298137490.a n = A135993 n

end A135993

/-! ## A135993.P6840321930731975483

`and(A054977(n), A135941(A028310(n)))`
-/

namespace A135993.P6840321930731975483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A135941 (A028310 n).toNat)

end

end A135993.P6840321930731975483

namespace A135993

/-- `and(A054977(n), A135941(A028310(n)))` -/
def P6840321930731975483.Spec : Prop :=
  ∀ n, P6840321930731975483.a n = A135993 n

end A135993

/-! ## A135993.P7033555823883831597

`and(A057427(n), A135941(A028310(n)))`
-/

namespace A135993.P7033555823883831597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A135941 (A028310 n).toNat)

end

end A135993.P7033555823883831597

namespace A135993

/-- `and(A057427(n), A135941(A028310(n)))` -/
def P7033555823883831597.Spec : Prop :=
  ∀ n, P7033555823883831597.a n = A135993 n

end A135993

/-! ## A135993.P197929363854044718

`and(-A003817(n), A135941(A028310(n)))`
-/

namespace A135993.P197929363854044718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A003817 n) (A135941 (A028310 n).toNat)

end

end A135993.P197929363854044718

namespace A135993

/-- `and(-A003817(n), A135941(A028310(n)))` -/
def P197929363854044718.Spec : Prop :=
  ∀ n, P197929363854044718.a n = A135993 n

end A135993

/-! ## A135993.P8211824488124459300

`floor(n/A000120(A065033(2*n)))%2`
-/

namespace A135993.P8211824488124459300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n : ℚ) / (A000120 (A065033 (2 * n)).toNat : ℚ)⌋ 2

end

end A135993.P8211824488124459300

namespace A135993

/-- `floor(n/A000120(A065033(2*n)))%2` -/
def P8211824488124459300.Spec : Prop :=
  ∀ n, P8211824488124459300.a n = A135993 n

end A135993

/-!
# A135994: First differences of A135992.

The programs for A135994, the canonical program `A135994.P14363201686144935693` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135994 has offset 0).

The definition of A135994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135994.P14363201686144935693

`3*a(n-2)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=-1, a(3)=6`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135994

/-- `3*a(n-2)-a(n-4)` -/
def P14363201686144935693.Spec : Prop :=
  ∀ n, P14363201686144935693.a n = A135994 n

theorem P14363201686144935693.correct : P14363201686144935693.Spec := by
  intro n
  simp only [A135994]

end A135994

/-! ## A135994.P9537614564667991644

`ogf((2x-x^2)/(1-3x^2+x^4))`
-/

namespace A135994.P9537614564667991644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1] [1, 0, -3, 0, 1] n

end

end A135994.P9537614564667991644

namespace A135994

/-- `ogf((2x-x^2)/(1-3x^2+x^4))` -/
def P9537614564667991644.Spec : Prop :=
  ∀ n, P9537614564667991644.a n = A135994 n

end A135994

/-! ## A135994.P9407225402318479487

`Δ[A135992(n+1)]`
-/

namespace A135994.P9407225402318479487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135994.P9407225402318479487

namespace A135994

/-- `Δ[A135992(n+1)]` -/
def P9407225402318479487.Spec : Prop :=
  ∀ n, P9407225402318479487.a n = A135994 n

end A135994

/-! ## A135994.P17414764046592927919

`Δ[Δ[A133586(n+1)]]`
-/

namespace A135994.P17414764046592927919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133586 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135994.P17414764046592927919

namespace A135994

/-- `Δ[Δ[A133586(n+1)]]` -/
def P17414764046592927919.Spec : Prop :=
  ∀ n, P17414764046592927919.a n = A135994 n

end A135994

/-! ## A135994.P6441279749487092381

`Δ[A000045(xor(1, n)+1)]`
-/

namespace A135994.P6441279749487092381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135994.P6441279749487092381

namespace A135994

/-- `Δ[A000045(xor(1, n)+1)]` -/
def P6441279749487092381.Spec : Prop :=
  ∀ n, P6441279749487092381.a n = A135994 n

end A135994

/-! ## A135994.P16506572649912201380

`Δ[A000071(xor(1, n)+1)]`
-/

namespace A135994.P16506572649912201380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135994.P16506572649912201380

namespace A135994

/-- `Δ[A000071(xor(1, n)+1)]` -/
def P16506572649912201380.Spec : Prop :=
  ∀ n, P16506572649912201380.a n = A135994 n

end A135994

/-! ## A135994.P6718347872990779341

`Δ[A001611(xor(1, n)+1)]`
-/

namespace A135994.P6718347872990779341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135994.P6718347872990779341

namespace A135994

/-- `Δ[A001611(xor(1, n)+1)]` -/
def P6718347872990779341.Spec : Prop :=
  ∀ n, P6718347872990779341.a n = A135994 n

end A135994

/-! ## A135994.P2754222455769067374

`Δ[A000045(abs(xor(n, -2)))]`
-/

namespace A135994.P2754222455769067374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |Int.xor (n : ℤ) (-2)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135994.P2754222455769067374

namespace A135994

/-- `Δ[A000045(abs(xor(n, -2)))]` -/
def P2754222455769067374.Spec : Prop :=
  ∀ n, P2754222455769067374.a n = A135994 n

end A135994

/-! ## A135994.P9857693732683375418

`Δ[A000045(-xor(n, -2))]`
-/

namespace A135994.P9857693732683375418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (-Int.xor (n : ℤ) (-2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135994.P9857693732683375418

namespace A135994

/-- `Δ[A000045(-xor(n, -2))]` -/
def P9857693732683375418.Spec : Prop :=
  ∀ n, P9857693732683375418.a n = A135994 n

end A135994

/-! ## A135994.P2604227470484893015

`Δ[A000045(2-xor(1, 1-n))]`
-/

namespace A135994.P2604227470484893015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 - Int.xor 1 (1 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135994.P2604227470484893015

namespace A135994

/-- `Δ[A000045(2-xor(1, 1-n))]` -/
def P2604227470484893015.Spec : Prop :=
  ∀ n, P2604227470484893015.a n = A135994 n

end A135994

/-! ## A135994.P5108024323431064247

`Δ[A000045(2*or(1, n)-n)]`
-/

namespace A135994.P5108024323431064247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * Nat.lor 1 n - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135994.P5108024323431064247

namespace A135994

/-- `Δ[A000045(2*or(1, n)-n)]` -/
def P5108024323431064247.Spec : Prop :=
  ∀ n, P5108024323431064247.a n = A135994 n

end A135994

/-! ## A135994.P3807883860835838072

`A108362(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A135994.P3807883860835838072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A108362 (n + 1) - a (n - 1)

end

end A135994.P3807883860835838072

namespace A135994

/-- `A108362(n+1)-a(n-1)` -/
def P3807883860835838072.Spec : Prop :=
  ∀ n, P3807883860835838072.a n = A135994 n

end A135994

/-! ## A135994.P9132495504056028471

`Δ[A000045((-1)^n+n+1)]`
-/

namespace A135994.P9132495504056028471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((-1) ^ n + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135994.P9132495504056028471

namespace A135994

/-- `Δ[A000045((-1)^n+n+1)]` -/
def P9132495504056028471.Spec : Prop :=
  ∀ n, P9132495504056028471.a n = A135994 n

end A135994

/-! ## A135994.P5823187108695539475

`Δ[A000071(and(2, 2*(n+1))+n)]`
-/

namespace A135994.P5823187108695539475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (Nat.land 2 (2 * (n + 1)) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135994.P5823187108695539475

namespace A135994

/-- `Δ[A000071(and(2, 2*(n+1))+n)]` -/
def P5823187108695539475.Spec : Prop :=
  ∀ n, P5823187108695539475.a n = A135994 n

end A135994

/-! ## A135994.P12270053261492507659

`Δ[A001611(2*n-xor(1, n-1))]`
-/

namespace A135994.P12270053261492507659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 ((2 * n : ℤ) - Int.xor 1 ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135994.P12270053261492507659

namespace A135994

/-- `Δ[A001611(2*n-xor(1, n-1))]` -/
def P12270053261492507659.Spec : Prop :=
  ∀ n, P12270053261492507659.a n = A135994 n

end A135994

/-! ## A135994.P4844289810768649568

`A000032(n-1)+a(n-2)-a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A135994.P4844289810768649568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A000032 (n - 1) + (a (n - 2) - a (n - 1))

end

end A135994.P4844289810768649568

namespace A135994

/-- `A000032(n-1)+a(n-2)-a(n-1)` -/
def P4844289810768649568.Spec : Prop :=
  ∀ n, P4844289810768649568.a n = A135994 n

end A135994

/-! ## A135994.P1158736668145237588

`Δ[A001595(A004442(n))/2]`
-/

namespace A135994.P1158736668145237588
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001595 (A004442 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135994.P1158736668145237588

namespace A135994

/-- `Δ[A001595(A004442(n))/2]` -/
def P1158736668145237588.Spec : Prop :=
  ∀ n, P1158736668145237588.a n = (A135994 n : ℚ)

end A135994

/-! ## A135994.P12518318555654209756

`A147600(n+1)-A000045(n)`
-/

namespace A135994.P12518318555654209756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147600 (n + 1) - A000045 n

end

end A135994.P12518318555654209756

namespace A135994

/-- `A147600(n+1)-A000045(n)` -/
def P12518318555654209756.Spec : Prop :=
  ∀ n, P12518318555654209756.a n = A135994 n

end A135994

/-! ## A135994.P1808741423872217480

`Δ[A212804(Δ[A176222(n+3)])]`
-/

namespace A135994.P1808741423872217480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176222 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135994.P1808741423872217480

namespace A135994

/-- `Δ[A212804(Δ[A176222(n+3)])]` -/
def P1808741423872217480.Spec : Prop :=
  ∀ n, P1808741423872217480.a n = A135994 n

end A135994

/-! ## A135994.P4988293035908816714

`Δ[A000045(n)+Δ[A094966(n)]]`
-/

namespace A135994.P4988293035908816714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135994.P4988293035908816714

namespace A135994

/-- `Δ[A000045(n)+Δ[A094966(n)]]` -/
def P4988293035908816714.Spec : Prop :=
  ∀ n, P4988293035908816714.a n = A135994 n

end A135994

/-!
# A135996: Difference between 2^n and the largest factorial <= 2^n.

The programs for A135996, the canonical program `A135996.P8145447889010572868` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135996 has offset 0).

The definition of A135996 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048764, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A135996.P8145447889010572868

`2^n-A048764(2^n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A135996

/-- `2^n-A048764(2^n)` -/
def P8145447889010572868.Spec : Prop :=
  ∀ n, P8145447889010572868.a n = A135996 n

theorem P8145447889010572868.correct : P8145447889010572868.Spec := by
  intro n
  simp only [A135996]

end A135996

/-! ## A135996.P17595325121224014136

`2^n-∑[char[A003070(n)]]!`
-/

namespace A135996.P17595325121224014136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003070 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A135996.P17595325121224014136

namespace A135996

/-- `2^n-∑[char[A003070(n)]]!` -/
def P17595325121224014136.Spec : Prop :=
  ∀ n, P17595325121224014136.a n = A135996 n

end A135996

/-! ## A135996.P13855625034657982343

`A275987(2^n)-A165906(n+1)!`
-/

namespace A135996.P13855625034657982343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275987 (2 ^ n) - (Nat.factorial (A165906 (n + 1)).toNat : ℤ)

end

end A135996.P13855625034657982343

namespace A135996

/-- `A275987(2^n)-A165906(n+1)!` -/
def P13855625034657982343.Spec : Prop :=
  ∀ n, P13855625034657982343.a n = A135996 n

end A135996

/-! ## A135996.P4976483899780817409

`A212598(2^n)`
-/

namespace A135996.P4976483899780817409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212598 (2 ^ n)

end

end A135996.P4976483899780817409

namespace A135996

/-- `A212598(2^n)` -/
def P4976483899780817409.Spec : Prop :=
  ∀ n, P4976483899780817409.a n = A135996 n

end A135996

/-! ## A135996.P18162592934418666472

`lcm(2, A212598(A000079(n)))`
-/

namespace A135996.P18162592934418666472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A212598 (A000079 n).toNat)

end

end A135996.P18162592934418666472

namespace A135996

/-- `lcm(2, A212598(A000079(n)))` -/
def P18162592934418666472.Spec : Prop :=
  ∀ n, (P18162592934418666472.a n : ℤ) = A135996 n

end A135996

/-!
# A135997: Table of triples T(k,m) = k (m=1), 2-k (m=2) and 1-k (m=3).

The programs for A135997, the canonical program `A135997.P10684566026888681696` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135997 has offset 0).

The definition of A135997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135997.P10684566026888681696

`gcd(3, n)+a(n-3)-2` with `a(0)=0, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A135997

/-- `gcd(3, n)+a(n-3)-2` -/
def P10684566026888681696.Spec : Prop :=
  ∀ n, P10684566026888681696.a n = A135997 n

theorem P10684566026888681696.correct : P10684566026888681696.Spec := by
  intro n
  simp only [A135997]

end A135997

/-! ## A135997.P1267855748993827332

`a(n-3)-(-1)^(a(n-3)+n)` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A135997.P1267855748993827332
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  a (n - 3) - (-1 : ℝ) ^ (a (n - 3) + (n : ℝ))

end

end A135997.P1267855748993827332

namespace A135997

/-- `a(n-3)-(-1)^(a(n-3)+n)` -/
def P1267855748993827332.Spec : Prop :=
  ∀ n, P1267855748993827332.a n = (A135997 n : ℝ)

end A135997

/-! ## A135997.P9556193419827225454

`a(n-3)-(-1)^(n-a(n-3))` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A135997.P9556193419827225454
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  a (n - 3) - (-1 : ℝ) ^ ((n : ℝ) - a (n - 3))

end

end A135997.P9556193419827225454

namespace A135997

/-- `a(n-3)-(-1)^(n-a(n-3))` -/
def P9556193419827225454.Spec : Prop :=
  ∀ n, P9556193419827225454.a n = (A135997 n : ℝ)

end A135997

/-! ## A135997.P4082841908418455381

`n+1-xor(1, A006369(n))`
-/

namespace A135997.P4082841908418455381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.xor 1 (A006369 n)

end

end A135997.P4082841908418455381

namespace A135997

/-- `n+1-xor(1, A006369(n))` -/
def P4082841908418455381.Spec : Prop :=
  ∀ n, P4082841908418455381.a n = A135997 n

end A135997

/-! ## A135997.P10071626352689416524

`A302402(n)-A260316(n)`
-/

namespace A135997.P10071626352689416524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302402 n - A260316 n

end

end A135997.P10071626352689416524

namespace A135997

/-- `A302402(n)-A260316(n)` -/
def P10071626352689416524.Spec : Prop :=
  ∀ n, P10071626352689416524.a n = A135997 n

end A135997

/-! ## A135997.P5554832795370415582

`A011655(n)+A088439(n)-A186731(n)`
-/

namespace A135997.P5554832795370415582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n + (A088439 n - A186731 n)

end

end A135997.P5554832795370415582

namespace A135997

/-- `A011655(n)+A088439(n)-A186731(n)` -/
def P5554832795370415582.Spec : Prop :=
  ∀ n, P5554832795370415582.a n = A135997 n

end A135997

/-! ## A135997.P8781745252942444647

`A005843(gcd(n, A002264(n+1)))-A002264(n+1)`
-/

namespace A135997.P8781745252942444647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.gcd (n : ℤ) (A002264 (n + 1))) - A002264 (n + 1)

end

end A135997.P8781745252942444647

namespace A135997

/-- `A005843(gcd(n, A002264(n+1)))-A002264(n+1)` -/
def P8781745252942444647.Spec : Prop :=
  ∀ n, P8781745252942444647.a n = A135997 n

end A135997

/-! ## A135997.P12326896951120327253

`xor(1, 2-A265667(n+1))+n`
-/

namespace A135997.P12326896951120327253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 - A265667 (n + 1)) + (n : ℤ)

end

end A135997.P12326896951120327253

namespace A135997

/-- `xor(1, 2-A265667(n+1))+n` -/
def P12326896951120327253.Spec : Prop :=
  ∀ n, P12326896951120327253.a n = A135997 n

end A135997

/-! ## A135997.P10344321336198041626

`A330396(n+2)-A059029(A004396(n))`
-/

namespace A135997.P10344321336198041626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330396 (n + 2) - A059029 (A004396 n).toNat

end

end A135997.P10344321336198041626

namespace A135997

/-- `A330396(n+2)-A059029(A004396(n))` -/
def P10344321336198041626.Spec : Prop :=
  ∀ n, P10344321336198041626.a n = A135997 n

end A135997

/-! ## A135997.P17918995013960467910

`1-A004442(A006369(n))+n`
-/

namespace A135997.P17918995013960467910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A004442 (A006369 n).toNat + (n : ℤ)

end

end A135997.P17918995013960467910

namespace A135997

/-- `1-A004442(A006369(n))+n` -/
def P17918995013960467910.Spec : Prop :=
  ∀ n, P17918995013960467910.a n = A135997 n

end A135997

/-! ## A135997.P9925095784033018089

`A008611(2*n+1)-A260316(n)`
-/

namespace A135997.P9925095784033018089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (2 * n + 1) - A260316 n

end

end A135997.P9925095784033018089

namespace A135997

/-- `A008611(2*n+1)-A260316(n)` -/
def P9925095784033018089.Spec : Prop :=
  ∀ n, P9925095784033018089.a n = A135997 n

end A135997

/-! ## A135997.P12643532665410210371

`A005131(n+1)+1-A008612(2*n)`
-/

namespace A135997.P12643532665410210371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 (n + 1) + (1 - A008612 (2 * n))

end

end A135997.P12643532665410210371

namespace A135997

/-- `A005131(n+1)+1-A008612(2*n)` -/
def P12643532665410210371.Spec : Prop :=
  ∀ n, P12643532665410210371.a n = A135997 n

end A135997

/-! ## A135997.P18358194710362475864

`A141310(A002264(2*n+1))-A008612(2*n)`
-/

namespace A135997.P18358194710362475864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A002264 (2 * n + 1)).toNat - A008612 (2 * n)

end

end A135997.P18358194710362475864

namespace A135997

/-- `A141310(A002264(2*n+1))-A008612(2*n)` -/
def P18358194710362475864.Spec : Prop :=
  ∀ n, P18358194710362475864.a n = A135997 n

end A135997

/-! ## A135997.P3874606386812790287

`1-A329116(A322042(n+2)²+n)`
-/

namespace A135997.P3874606386812790287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A329116 (A322042 (n + 2) ^ 2 + (n : ℤ)).toNat

end

end A135997.P3874606386812790287

namespace A135997

/-- `1-A329116(A322042(n+2)²+n)` -/
def P3874606386812790287.Spec : Prop :=
  ∀ n, P3874606386812790287.a n = A135997 n

end A135997

/-!
# A135999: Numbers that are both triangular numbers A000217 and triangle-shaped numbers A134999.

The programs for A135999, there is no canonical definition to state claims against.
-/

/-! ## A135999.P10579203836065336987

`record[A000217(n+14)%A114738(n+9)]`
-/

namespace A135999.P10579203836065336987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (n + 14)) (A114738 (n + 9))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135999.P10579203836065336987

/-! ## A135999.P9436507531205761650

`A000217(A145397(n+11))%A075947(n)`
-/

namespace A135999.P9436507531205761650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A145397 (n + 11)).toNat) (A075947 n)

end

end A135999.P9436507531205761650

/-! ## A135999.P15460259512183824639

`A000217(A145397(n+11))*A056926(A022103(n))`
-/

namespace A135999.P15460259512183824639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A145397 (n + 11)).toNat * A056926 (A022103 n).toNat

end

end A135999.P15460259512183824639

/-! ## A135999.P9691662260129844041

`A000217(A145397(n+11))*A056926(A022326(n))`
-/

namespace A135999.P9691662260129844041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A145397 (n + 11)).toNat * A056926 (A022326 n).toNat

end

end A135999.P9691662260129844041

/-! ## A135999.P3278473533718255453

`A000217(A145397(n+11))*A085731(A002385(n+1))`
-/

namespace A135999.P3278473533718255453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A145397 (n + 11)).toNat * A085731 (A002385 (n + 1)).toNat

end

end A135999.P3278473533718255453

