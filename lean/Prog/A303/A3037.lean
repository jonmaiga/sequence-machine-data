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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A303700: Triangle read by rows in which row n gives coefficients of polynomial f_n(x)/(n+1) of degree less than n that satisfies Integral_{x=0..1} g(t - x) * f_n(x) dx = g(t) for any polynomial g(x) of degree less than n.

The programs for A303700, there is no canonical definition to state claims against.
-/

/-! ## A303700.P13310049539705477343

`A303699(n)/log2(A140513(n))`
-/

namespace A303700.P13310049539705477343
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A303699 n : ℝ) / Real.logb 2 (A140513 n : ℝ)

end

end A303700.P13310049539705477343

/-! ## A303700.P18268473006859074259

`A303699(n)/∑[A010054(n)]`
-/

namespace A303700.P18268473006859074259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303699 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A303700.P18268473006859074259

/-! ## A303700.P5740468281205743303

`A303699(n)/A002024(n+1)`
-/

namespace A303700.P5740468281205743303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303699 n : ℚ) / (A002024 (n + 1) : ℚ)

end

end A303700.P5740468281205743303

/-! ## A303700.P13879095105183440210

`A303699(n)/(A003056(n)+1)`
-/

namespace A303700.P13879095105183440210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303699 n : ℚ) / (A003056 n + 1 : ℚ)

end

end A303700.P13879095105183440210

/-! ## A303700.P16166513528855941637

`A303699(n)/sqrt(A093995(n+1))`
-/

namespace A303700.P16166513528855941637
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A303699 n : ℝ) / Real.sqrt (A093995 (n + 1) : ℝ)

end

end A303700.P16166513528855941637

/-! ## A303700.P3602951371260078222

`2/A111650(n+1)*A303699(n)`
-/

namespace A303700.P3602951371260078222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A111650 (n + 1) : ℚ) * (A303699 n : ℚ)

end

end A303700.P3602951371260078222

/-! ## A303700.P13725579855954527994

`A303699(n)/A014682(A111650(n+1))`
-/

namespace A303700.P13725579855954527994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303699 n : ℚ) / (A014682 (A111650 (n + 1)).toNat : ℚ)

end

end A303700.P13725579855954527994

/-! ## A303700.P4005235727551089077

`A165257(n+1)/A027555(n)*A123160(n)`
-/

namespace A303700.P4005235727551089077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165257 (n + 1) : ℚ) / (A027555 n : ℚ) * (A123160 n : ℚ)

end

end A303700.P4005235727551089077

/-!
# A303703: Positive numbers that are congruent mod k! to a divisor of k! for any k > 0.

The programs for A303703, there is no canonical definition to state claims against.
-/

/-! ## A303703.P14680157246330532018

`record[A121457(A225644(n)+n)]`
-/

namespace A303703.P14680157246330532018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121457 (A225644 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303703.P14680157246330532018

/-! ## A303703.P16829584339319460190

`eq[0, A303711(n+1)]+1`
-/

namespace A303703.P16829584339319460190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303711 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A303703.P16829584339319460190

/-! ## A303703.P13153024205391327761

`record[A121663(n)%A121682(n+2)]`
-/

namespace A303703.P13153024205391327761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121663 n) (A121682 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303703.P13153024205391327761

/-! ## A303703.P11092769958418357461

`record[A121663(A234344(n+1))]`
-/

namespace A303703.P11092769958418357461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121663 (A234344 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303703.P11092769958418357461

/-! ## A303703.P5189605273366415663

`record[A096111(∑[A357137(3*n)])]`
-/

namespace A303703.P5189605273366415663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357137 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096111 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303703.P5189605273366415663

/-!
# A303705: a(1) = 3; a(n) is the smallest prime such that gcd(a(i)-1, a(n)-1) = 2 holds for 1 <= i < n.

The programs for A303705, there is no canonical definition to state claims against.
-/

/-! ## A303705.P12699692832534497003

`p?[or(A119660(n+2), A273712(n))]`
-/

namespace A303705.P12699692832534497003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A119660 (n + 2)) (A273712 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A303705.P12699692832534497003

/-! ## A303705.P5369001190450203534

`A119660(A076084(n+2))`
-/

namespace A303705.P5369001190450203534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119660 (A076084 (n + 2)).toNat

end

end A303705.P5369001190450203534

/-! ## A303705.P17484937893322799268

`A119660(A151764(n+2))`
-/

namespace A303705.P17484937893322799268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119660 (A151764 (n + 2)).toNat

end

end A303705.P17484937893322799268

/-! ## A303705.P10575921976468208700

`∩[A119660(n+1), A138536(n+1)]`
-/

namespace A303705.P10575921976468208700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303705.P10575921976468208700

/-! ## A303705.P11022176376735506358

`∩[A119660(n+1), A223036(n+1)]`
-/

namespace A303705.P11022176376735506358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303705.P11022176376735506358

/-!
# A303706: a(n) is the number of lattice points in a Cartesian grid between an equilateral triangle and an inscribed circle of radius n; one of the side of triangle is perpendicular to the X-axis; the circle's center is at the origin.

The programs for A303706, there is no canonical definition to state claims against.
-/

/-! ## A303706.P13237546450007044388

`A241988(n)+A106400(A000142(n))`
-/

namespace A303706.P13237546450007044388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241988 n + A106400 (A000142 n).toNat

end

end A303706.P13237546450007044388

/-! ## A303706.P7163244046126248543

`A241988(n)-A020985(A242003(n))`
-/

namespace A303706.P7163244046126248543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241988 n - A020985 (A242003 n).toNat

end

end A303706.P7163244046126248543

/-!
# A303707: Number of factorizations of n using elements of A007916 (numbers that are not perfect powers).

The programs for A303707, there is no canonical definition to state claims against.
-/

/-! ## A303707.P4484578435567452838

`round((∏{e}[n+1, #+1]-∑{e}[n+1, #])*log(3))`
-/

namespace A303707.P4484578435567452838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ) : ℝ) * Real.log (3 : ℝ))

end

end A303707.P4484578435567452838

/-! ## A303707.P324509277382357621

`floor(3^log(∏{e}[n+1, #+1]-∑{e}[n+1, #]))`
-/

namespace A303707.P324509277382357621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℝ) ^ (Real.log (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ) : ℝ))⌋

end

end A303707.P324509277382357621

/-! ## A303707.P16629183987664321060

`round(log(3^(∏{e}[n+1, #+1]-∑{e}[n+1, #])))`
-/

namespace A303707.P16629183987664321060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log ((3 : ℚ) ^ (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ) : ℤ) : ℝ))

end

end A303707.P16629183987664321060

/-! ## A303707.P13408076511328246262

`floor((∏{e}[n+1, #+1]-∑{e}[n+1, #])/sin(1))`
-/

namespace A303707.P13408076511328246262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ) : ℝ) / Real.sin (1 : ℝ)⌋

end

end A303707.P13408076511328246262

/-! ## A303707.P14672408053738914307

`floor((∏{e}[n+1, #+1]-∑{e}[n+1, #])*sinh(1))`
-/

namespace A303707.P14672408053738914307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ) : ℝ) * Real.sinh (1 : ℝ)⌋

end

end A303707.P14672408053738914307

/-! ## A303707.P13952383741383125664

`floor((∏{e}[n+1, #+1]-∑{e}[n+1, #])^atan(2))`
-/

namespace A303707.P13952383741383125664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ) : ℝ) ^ (Real.arctan (2 : ℝ))⌋

end

end A303707.P13952383741383125664

/-! ## A303707.P8060408147167053966

`floor((∏{e}[n+1, #+1]-∑{e}[n+1, #])*cosh(γ))`
-/

namespace A303707.P8060408147167053966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ) : ℝ) * Real.cosh Real.eulerMascheroniConstant⌋

end

end A303707.P8060408147167053966

/-! ## A303707.P13871278076359310768

`round((∏{e}[n+1, #+1]-∑{e}[n+1, #])^acot(γ))`
-/

namespace A303707.P13871278076359310768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ) : ℝ) ^ (SequenceMachineLib.acot Real.eulerMascheroniConstant))

end

end A303707.P13871278076359310768

/-! ## A303707.P11124408670666428212

`A303709((n+1)²)`
-/

namespace A303707.P11124408670666428212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303709 ((n + 1) ^ 2)

end

end A303707.P11124408670666428212

/-! ## A303707.P11228289101977923987

`dr(A303709(∑[2*n+1]))`
-/

namespace A303707.P11228289101977923987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A303709 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A303707.P11228289101977923987

/-!
# A303708: Number of aperiodic factorizations of n using elements of A007916 (numbers that are not perfect powers).

The programs for A303708, there is no canonical definition to state claims against.
-/

/-! ## A303708.P14005604965725166304

`A303709((n+1)²)-A303709(n+1)`
-/

namespace A303708.P14005604965725166304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303709 ((n + 1) ^ 2) - A303709 (n + 1)

end

end A303708.P14005604965725166304

/-! ## A303708.P6610442304686876065

`dr(A303709(∑[2*n+1]))-A303709(n+1)`
-/

namespace A303708.P6610442304686876065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A303709 (∑ j ∈ Finset.range (n + 1), f1 j)) : ℤ) - A303709 (n + 1)

end

end A303708.P6610442304686876065

/-! ## A303708.P17144827414693540526

`floor(A081707(n+1)^atan(2))-A303709(n+1)`
-/

namespace A303708.P17144827414693540526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081707 (n + 1) : ℝ) ^ (Real.arctan (2 : ℝ))⌋ - A303709 (n + 1)

end

end A303708.P17144827414693540526

/-! ## A303708.P17508830554142321897

`ceil(A008480(n+1)^tan(7))-A303709(n+1)`
-/

namespace A303708.P17508830554142321897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008480 (n + 1) : ℝ) ^ (Real.tan (7 : ℝ))⌉ - A303709 (n + 1)

end

end A303708.P17508830554142321897

/-! ## A303708.P9665196363806137733

`A020658(∏{e}[n+1, #+1]-∑{e}[n+1, #])-A303709(n+1)`
-/

namespace A303708.P9665196363806137733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) - ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) - A303709 (n + 1)

end

end A303708.P9665196363806137733

/-! ## A303708.P17936695844879054829

`A000961(A000005(n+1)-∑{e}[n+1, #])-A303709(n+1)`
-/

namespace A303708.P17936695844879054829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A000005 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)).toNat - A303709 (n + 1)

end

end A303708.P17936695844879054829

/-! ## A303708.P11218630054043341018

`A014567(A000005(n+1)-∑{e}[n+1, #])-A303709(n+1)`
-/

namespace A303708.P11218630054043341018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (A000005 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)).toNat - A303709 (n + 1)

end

end A303708.P11218630054043341018

/-! ## A303708.P12843194106060088489

`A000961(A000005(n+1)-A001222(n+1))-A303709(n+1)`
-/

namespace A303708.P12843194106060088489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A000005 (n + 1) - A001222 (n + 1)).toNat - A303709 (n + 1)

end

end A303708.P12843194106060088489

/-! ## A303708.P11215191572201089295

`A005100(A000005(n+1)-A001222(n+1))-A303709(n+1)`
-/

namespace A303708.P11215191572201089295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (A000005 (n + 1) - A001222 (n + 1)).toNat - A303709 (n + 1)

end

end A303708.P11215191572201089295

/-! ## A303708.P15279662901417531566

`A037474(A000005(n+1)-A001222(n+1))-A303709(n+1)`
-/

namespace A303708.P15279662901417531566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A000005 (n + 1) - A001222 (n + 1)).toNat - A303709 (n + 1)

end

end A303708.P15279662901417531566

/-!
# A303709: Number of periodic factorizations of n using elements of A007916 (numbers that are not perfect powers).

The programs for A303709, there is no canonical definition to state claims against.
-/

/-! ## A303709.P6704542517994368143

`A303838(A175069(n+1)+A000038(n))`
-/

namespace A303709.P6704542517994368143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303838 (A175069 (n + 1) + A000038 n).toNat

end

end A303709.P6704542517994368143

/-! ## A303709.P7666398514067448468

`A168324(A175069(n+1))-A008683(A275725(n))`
-/

namespace A303709.P7666398514067448468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (A175069 (n + 1)).toNat - A008683 (A275725 n).toNat

end

end A303709.P7666398514067448468

/-! ## A303709.P15470537252845240006

`A168324(A175069(n+1))+A000005(n²+1)%2`
-/

namespace A303709.P15470537252845240006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (A175069 (n + 1)).toNat + Int.tmod (A000005 (n ^ 2 + 1)) 2

end

end A303709.P15470537252845240006

/-! ## A303709.P17480605500145745544

`A066882(A175069(n+1))^A052409(A066048(n+1))`
-/

namespace A303709.P17480605500145745544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066882 (A175069 (n + 1)).toNat : ℚ) ^ (A052409 (A066048 (n + 1)).toNat : ℤ)

end

end A303709.P17480605500145745544

/-! ## A303709.P14522719061485291356

`A075802(n+1)*A303707(A175069(n+1))`
-/

namespace A303709.P14522719061485291356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (n + 1) * A303707 (A175069 (n + 1)).toNat

end

end A303709.P14522719061485291356

/-! ## A303709.P929449204604014531

`A168324(A175069(n+1))^A266724(n)`
-/

namespace A303709.P929449204604014531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168324 (A175069 (n + 1)).toNat : ℚ) ^ (A266724 n : ℤ)

end

end A303709.P929449204604014531

/-! ## A303709.P683617661483327304

`A215887(A132349(n+1)^A183096(n+1))`
-/

namespace A303709.P683617661483327304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (SequenceMachineLib.roundAway ((A132349 (n + 1) : ℚ) ^ (A183096 (n + 1) : ℤ))).toNat

end

end A303709.P683617661483327304

/-! ## A303709.P12900422889191241191

`A124768(A075802(n+1)*A331599(n+1))`
-/

namespace A303709.P12900422889191241191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A075802 (n + 1) * A331599 (n + 1)).toNat

end

end A303709.P12900422889191241191

/-! ## A303709.P7991335456069523709

`A075802(n+1)*A087039(A295557(n+1))`
-/

namespace A303709.P7991335456069523709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (n + 1) * A087039 (A295557 (n + 1)).toNat

end

end A303709.P7991335456069523709

/-! ## A303709.P13343596094478935197

`A168324(A175069(n+1))^A001221(A137688(n))`
-/

namespace A303709.P13343596094478935197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168324 (A175069 (n + 1)).toNat : ℚ) ^ (A001221 (A137688 n).toNat : ℤ)

end

end A303709.P13343596094478935197

/-! ## A303709.P365002261293380040

`A075802(n+1)*A162520(A329607(n+1))`
-/

namespace A303709.P365002261293380040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (n + 1) * A162520 (A329607 (n + 1)).toNat

end

end A303709.P365002261293380040

/-! ## A303709.P7788290686337664198

`A231813((n+1)²*A075802(n+1))`
-/

namespace A303709.P7788290686337664198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 (((n + 1) ^ 2 : ℤ) * A075802 (n + 1)).toNat

end

end A303709.P7788290686337664198

/-! ## A303709.P10725216994416502533

`A075802(n+1)*A325837(A294897(n+1))`
-/

namespace A303709.P10725216994416502533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (n + 1) * A325837 (A294897 (n + 1)).toNat

end

end A303709.P10725216994416502533

/-! ## A303709.P3127957045341802395

`A200976(A288636(n+1)^A119842(n+1))`
-/

namespace A303709.P3127957045341802395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200976 (SequenceMachineLib.roundAway ((A288636 (n + 1) : ℚ) ^ (A119842 (n + 1) : ℤ))).toNat

end

end A303709.P3127957045341802395

/-! ## A303709.P18182584547082887742

`A178489(A303553(n+1)^A285572(n+1))`
-/

namespace A303709.P18182584547082887742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 (SequenceMachineLib.roundAway ((A303553 (n + 1) : ℚ) ^ (A285572 (n + 1) : ℤ))).toNat

end

end A303709.P18182584547082887742

/-! ## A303709.P14365065561770597063

`A264620(A281116(n+1)^A303553(n+1))`
-/

namespace A303709.P14365065561770597063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264620 (SequenceMachineLib.roundAway ((A281116 (n + 1) : ℚ) ^ (A303553 (n + 1) : ℤ))).toNat

end

end A303709.P14365065561770597063

/-! ## A303709.P13559449921946582660

`A303553(n+1)^A290353(A301830(n+1))`
-/

namespace A303709.P13559449921946582660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303553 (n + 1) : ℚ) ^ (A290353 (A301830 (n + 1)).toNat : ℤ)

end

end A303709.P13559449921946582660

/-! ## A303709.P16302954806215174030

`A075802(n+1)+A075802(A294897(n+1)+1)`
-/

namespace A303709.P16302954806215174030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (n + 1) + A075802 (A294897 (n + 1) + 1).toNat

end

end A303709.P16302954806215174030

/-! ## A303709.P9763525171761638907

`A075802(n+1)*A231813(A285109(n+1))`
-/

namespace A303709.P9763525171761638907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (n + 1) * A231813 (A285109 (n + 1)).toNat

end

end A303709.P9763525171761638907

/-! ## A303709.P17293441906617733773

`A075802(n+1)*A370256(A001597(n+1))`
-/

namespace A303709.P17293441906617733773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (n + 1) * A370256 (A001597 (n + 1)).toNat

end

end A303709.P17293441906617733773

/-!
# A303710: Number of factorizations of numbers that are not perfect powers using only numbers that are not perfect powers.

The programs for A303710, there is no canonical definition to state claims against.
-/

/-! ## A303710.P14884321232060615352

`A303709(A153158(n+1))`
-/

namespace A303710.P14884321232060615352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303709 (A153158 (n + 1)).toNat

end

end A303710.P14884321232060615352

/-! ## A303710.P5294282130876494893

`A303709(A007916(n+1)²)`
-/

namespace A303710.P5294282130876494893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303709 (A007916 (n + 1) ^ 2).toNat

end

end A303710.P5294282130876494893

/-! ## A303710.P11807684041134220414

`A303709(sqrt(A153157(n+1)))`
-/

namespace A303710.P11807684041134220414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303709 (SequenceMachineLib.roundAway (Real.sqrt (A153157 (n + 1) : ℝ))).toNat

end

end A303710.P11807684041134220414

/-! ## A303710.P11415302101689140206

`A303709(A037450(n+1)+1)`
-/

namespace A303710.P11415302101689140206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303709 (A037450 (n + 1) + 1).toNat

end

end A303710.P11415302101689140206

/-! ## A303710.P2068684438264354294

`A303709(A007916(n+1)^2)`
-/

namespace A303710.P2068684438264354294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303709 (A007916 (n + 1) ^ 2).toNat

end

end A303710.P2068684438264354294

/-! ## A303710.P891749075105989929

`A303709(record[A025478(n+2)²])`
-/

namespace A303710.P891749075105989929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025478 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303709 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A303710.P891749075105989929

/-! ## A303710.P715337304770402495

`A303709(record[A052410(n+2)²])`
-/

namespace A303710.P715337304770402495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303709 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A303710.P715337304770402495

/-! ## A303710.P13691930590491899513

`A303709(A007916(n+1)*A007916(n+1))`
-/

namespace A303710.P13691930590491899513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303709 (A007916 (n + 1) * A007916 (n + 1)).toNat

end

end A303710.P13691930590491899513

/-! ## A303710.P16652452272745204330

`A303708(A007916(n+1))`
-/

namespace A303710.P16652452272745204330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303708 (A007916 (n + 1)).toNat

end

end A303710.P16652452272745204330

/-! ## A303710.P12942256248586233377

`A303707(A007916(n+1))`
-/

namespace A303710.P12942256248586233377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303707 (A007916 (n + 1)).toNat

end

end A303710.P12942256248586233377

/-!
# A303711: For any n > 0 and f > 0, let d_f(n) be the distance from n to the nearest number congruent mod f! to some divisor of f!; a(n) = Sum_{i > 0} d_i(n).

The programs for A303711, there is no canonical definition to state claims against.
-/

/-! ## A303711.P9134576844500020234

`A239622(A196423(n+1))%A000010(n+1)`
-/

namespace A303711.P9134576844500020234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239622 (A196423 (n + 1)).toNat) (A000010 (n + 1))

end

end A303711.P9134576844500020234

/-!
# A303713: Number of n X n 0..1 arrays with every element unequal to 0, 1 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303713, there is no canonical definition to state claims against.
-/

/-! ## A303713.P10571887749927824047

`A303719(∑[4*n]+1)`
-/

namespace A303713.P10571887749927824047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303713.P10571887749927824047

/-! ## A303713.P2995569254034078329

`and(1, n)!*A303719(A001844(n))`
-/

namespace A303713.P2995569254034078329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 1 n) : ℤ) * A303719 (A001844 n).toNat

end

end A303713.P2995569254034078329

/-! ## A303713.P10745381614214306070

`A303719(A001844(n))%A007226(n)`
-/

namespace A303713.P10745381614214306070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303719 (A001844 n).toNat) (A007226 n)

end

end A303713.P10745381614214306070

/-! ## A303713.P10775495300949773854

`lcm(A020985(n), A303719(A001844(n)))`
-/

namespace A303713.P10775495300949773854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A303719 (A001844 n).toNat)

end

end A303713.P10775495300949773854

/-! ## A303713.P11374219637046263928

`or(A000007(n), A303719(A001844(n)))`
-/

namespace A303713.P11374219637046263928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A303719 (A001844 n).toNat)

end

end A303713.P11374219637046263928

/-! ## A303713.P3252616748723731267

`abs(A033999(n)*A303719(A001844(n)))`
-/

namespace A303713.P3252616748723731267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A303719 (A001844 n).toNat|

end

end A303713.P3252616748723731267

/-! ## A303713.P17008801843784811069

`A057077(n²)*A303719(A001844(n))`
-/

namespace A303713.P17008801843784811069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n ^ 2) * A303719 (A001844 n).toNat

end

end A303713.P17008801843784811069

/-! ## A303713.P11648714750881402834

`A007318(∏{e}[n+1, #!%2])*A303719(A001844(n))`
-/

namespace A303713.P11648714750881402834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) % 2) * A303719 (A001844 n).toNat

end

end A303713.P11648714750881402834

/-!
# A303714: Number of n X 3 0..1 arrays with every element unequal to 0, 1 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303714, the canonical program `A303714.P4639583480988663592` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303714 has offset 1).

The definition of A303714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 436 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303714.P9368750430580473219

`ogf((3+2x^2-3x^3)/(1-x-2x^3))`
-/

namespace A303714.P9368750430580473219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, 2, -3] [1, -1, 0, -2] n

end

end A303714.P9368750430580473219

namespace A303714

/-- `ogf((3+2x^2-3x^3)/(1-x-2x^3))` -/
def P9368750430580473219.Spec : Prop :=
  ∀ n, P9368750430580473219.a n = A303714 (n + 1)

end A303714

/-! ## A303714.P4639583480988663592

`a(n-1)+2*a(n-3)` with `a(0)=3, a(1)=3, a(2)=5, a(3)=8`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A303714

/-- `a(n-1)+2*a(n-3)` -/
def P4639583480988663592.Spec : Prop :=
  ∀ n, (P4639583480988663592.a n : ℤ) = A303714 (n + 1)

theorem P4639583480988663592.correct : P4639583480988663592.Spec := by
  intro n
  simp only [A303714, Nat.add_sub_cancel]

end A303714

/-! ## A303714.P3280542198002116283

`a(n-3)+a(n-1)+a(n-3)` with `a(0)=3, a(1)=3, a(2)=5, a(3)=8`
-/

namespace A303714.P3280542198002116283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 3, 5, 8] fun n a =>
  a (n - 3) + (a (n - 1) + a (n - 3))

end

end A303714.P3280542198002116283

namespace A303714

/-- `a(n-3)+a(n-1)+a(n-3)` -/
def P3280542198002116283.Spec : Prop :=
  ∀ n, (P3280542198002116283.a n : ℤ) = A303714 (n + 1)

end A303714

/-! ## A303714.P6558887256353876263

`lcm(2, A052537(n+5)+A052537(n))/2`
-/

namespace A303714.P6558887256353876263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A052537 (n + 5) + A052537 n) : ℚ) / 2

end

end A303714.P6558887256353876263

namespace A303714

/-- `lcm(2, A052537(n+5)+A052537(n))/2` -/
def P6558887256353876263.Spec : Prop :=
  ∀ n, P6558887256353876263.a n = (A303714 (n + 1) : ℚ)

end A303714

/-! ## A303714.P11203727994541291720

`A303719(∑[n+2]+4)`
-/

namespace A303714.P11203727994541291720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A303714.P11203727994541291720

namespace A303714

/-- `A303719(∑[n+2]+4)` -/
def P11203727994541291720.Spec : Prop :=
  ∀ n, P11203727994541291720.a n = A303714 (n + 1)

end A303714

/-! ## A303714.P1403804914329094202

`or(char[1], A303719(A167614(n+1)))`
-/

namespace A303714.P1403804914329094202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A303719 (A167614 (n + 1)).toNat)

end

end A303714.P1403804914329094202

namespace A303714

/-- `or(char[1], A303719(A167614(n+1)))` -/
def P1403804914329094202.Spec : Prop :=
  ∀ n, P1403804914329094202.a n = A303714 (n + 1)

end A303714

/-! ## A303714.P9552268714865721378

`A303719(A167614(n+1))%A303716(n+1)`
-/

namespace A303714.P9552268714865721378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303719 (A167614 (n + 1)).toNat) (A303716 (n + 1))

end

end A303714.P9552268714865721378

namespace A303714

/-- `A303719(A167614(n+1))%A303716(n+1)` -/
def P9552268714865721378.Spec : Prop :=
  ∀ n, P9552268714865721378.a n = A303714 (n + 1)

end A303714

/-!
# A303715: Number of nX4 0..1 arrays with every element unequal to 0, 1 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303715, the canonical program `A303715.P1400048967763459824` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303715 has offset 1).

The definition of A303715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303715.P1400048967763459824

`a(n-1)+a(n-2)+3*a(n-3)+a(n-4)-a(n-5)-a(n-6)` with `a(0)=5, a(1)=5, a(2)=8, a(3)=17, a(4)=36, a(5)=76`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A303715

/-- `a(n-1)+a(n-2)+3*a(n-3)+a(n-4)-a(n-5)-a(n-6)` -/
def P1400048967763459824.Spec : Prop :=
  ∀ n, P1400048967763459824.a n = A303715 (n + 1)

theorem P1400048967763459824.correct : P1400048967763459824.Spec := by
  intro n
  simp only [A303715, Nat.add_sub_cancel]

end A303715

/-! ## A303715.P3354841668601926242

`A303719(A374004(n+1))`
-/

namespace A303715.P3354841668601926242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (A374004 (n + 1)).toNat

end

end A303715.P3354841668601926242

namespace A303715

/-- `A303719(A374004(n+1))` -/
def P3354841668601926242.Spec : Prop :=
  ∀ n, P3354841668601926242.a n = A303715 (n + 1)

end A303715

/-! ## A303715.P8250040542864017393

`A303719(A055999(n)+10)`
-/

namespace A303715.P8250040542864017393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (A055999 n + 10).toNat

end

end A303715.P8250040542864017393

namespace A303715

/-- `A303719(A055999(n)+10)` -/
def P8250040542864017393.Spec : Prop :=
  ∀ n, P8250040542864017393.a n = A303715 (n + 1)

end A303715

/-! ## A303715.P14659582463423988261

`A303719(A167614(n+2)+1)`
-/

namespace A303715.P14659582463423988261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (A167614 (n + 2) + 1).toNat

end

end A303715.P14659582463423988261

namespace A303715

/-- `A303719(A167614(n+2)+1)` -/
def P14659582463423988261.Spec : Prop :=
  ∀ n, P14659582463423988261.a n = A303715 (n + 1)

end A303715

/-! ## A303715.P11599360736125009715

`A303719(A166136(n+2)-2)`
-/

namespace A303715.P11599360736125009715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (A166136 (n + 2) - 2).toNat

end

end A303715.P11599360736125009715

namespace A303715

/-- `A303719(A166136(n+2)-2)` -/
def P11599360736125009715.Spec : Prop :=
  ∀ n, P11599360736125009715.a n = A303715 (n + 1)

end A303715

/-! ## A303715.P7528210724919172175

`A303719(A166136(n+1)+1+n)`
-/

namespace A303715.P7528210724919172175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A303715.P7528210724919172175

namespace A303715

/-- `A303719(A166136(n+1)+1+n)` -/
def P7528210724919172175.Spec : Prop :=
  ∀ n, P7528210724919172175.a n = A303715 (n + 1)

end A303715

/-! ## A303715.P1527277539374498628

`and(-3, A303719(A000096(n+2)+5))`
-/

namespace A303715.P1527277539374498628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A303719 (A000096 (n + 2) + 5).toNat)

end

end A303715.P1527277539374498628

namespace A303715

/-- `and(-3, A303719(A000096(n+2)+5))` -/
def P1527277539374498628.Spec : Prop :=
  ∀ n, P1527277539374498628.a n = A303715 (n + 1)

end A303715

/-! ## A303715.P6771578560145641093

`A303719(A052905(n)+9)%A303716(n+1)`
-/

namespace A303715.P6771578560145641093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303719 (A052905 n + 9).toNat) (A303716 (n + 1))

end

end A303715.P6771578560145641093

namespace A303715

/-- `A303719(A052905(n)+9)%A303716(n+1)` -/
def P6771578560145641093.Spec : Prop :=
  ∀ n, P6771578560145641093.a n = A303715 (n + 1)

end A303715

/-! ## A303715.P18354965329136420234

`A303719(A000096(n+2)+5)%A041518(n+1)`
-/

namespace A303715.P18354965329136420234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303719 (A000096 (n + 2) + 5).toNat) (A041518 (n + 1))

end

end A303715.P18354965329136420234

namespace A303715

/-- `A303719(A000096(n+2)+5)%A041518(n+1)` -/
def P18354965329136420234.Spec : Prop :=
  ∀ n, P18354965329136420234.a n = A303715 (n + 1)

end A303715

/-! ## A303715.P2082423177739975610

`A303719(A000217(n+3)+4)+A000007(A003003(n+1))`
-/

namespace A303715.P2082423177739975610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (A000217 (n + 3) + 4).toNat + A000007 (A003003 (n + 1)).toNat

end

end A303715.P2082423177739975610

namespace A303715

/-- `A303719(A000217(n+3)+4)+A000007(A003003(n+1))` -/
def P2082423177739975610.Spec : Prop :=
  ∀ n, P2082423177739975610.a n = A303715 (n + 1)

end A303715

/-! ## A303715.P14835782232365269763

`A303719(∑[n+4]+3)`
-/

namespace A303715.P14835782232365269763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A303715.P14835782232365269763

namespace A303715

/-- `A303719(∑[n+4]+3)` -/
def P14835782232365269763.Spec : Prop :=
  ∀ n, P14835782232365269763.a n = A303715 (n + 1)

end A303715

/-! ## A303715.P13119669556486962426

`lcm(A033999(n), A303719(A027379(n+2)))`
-/

namespace A303715.P13119669556486962426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A303719 (A027379 (n + 2)).toNat)

end

end A303715.P13119669556486962426

namespace A303715

/-- `lcm(A033999(n), A303719(A027379(n+2)))` -/
def P13119669556486962426.Spec : Prop :=
  ∀ n, (P13119669556486962426.a n : ℤ) = A303715 (n + 1)

end A303715

/-! ## A303715.P3915052198829335987

`A303719(A027379(n+2))+A005369(2*n+1)`
-/

namespace A303715.P3915052198829335987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (A027379 (n + 2)).toNat + A005369 (2 * n + 1)

end

end A303715.P3915052198829335987

namespace A303715

/-- `A303719(A027379(n+2))+A005369(2*n+1)` -/
def P3915052198829335987.Spec : Prop :=
  ∀ n, P3915052198829335987.a n = A303715 (n + 1)

end A303715

/-!
# A303716: Number of nX5 0..1 arrays with every element unequal to 0, 1 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303716, there is no canonical definition to state claims against.
-/

/-! ## A303716.P15866409654246109151

`A303719(A374005(n+1))`
-/

namespace A303716.P15866409654246109151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (A374005 (n + 1)).toNat

end

end A303716.P15866409654246109151

/-! ## A303716.P16433875664576935082

`A303719(A167499(n+3))`
-/

namespace A303716.P16433875664576935082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (A167499 (n + 3)).toNat

end

end A303716.P16433875664576935082

/-! ## A303716.P11245414293973067967

`A303719(A167614(n+3)+2)`
-/

namespace A303716.P11245414293973067967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (A167614 (n + 3) + 2).toNat

end

end A303716.P11245414293973067967

/-! ## A303716.P17782718410729262307

`A303719(A000124(n+5)-(n+1))`
-/

namespace A303716.P17782718410729262307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A303716.P17782718410729262307

/-! ## A303716.P11099658321126900329

`A303719(Δ[A023551(n+1)]-2*n)`
-/

namespace A303716.P11099658321126900329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (f1 (n + 1) - f1 n - (2 * n : ℤ)).toNat

end

end A303716.P11099658321126900329

/-! ## A303716.P13144595998271044903

`A303719(A046691(n+3))`
-/

namespace A303716.P13144595998271044903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (A046691 (n + 3)).toNat

end

end A303716.P13144595998271044903

/-! ## A303716.P5940424434128028145

`A303719(Δ[A034857(n+2)]-1)`
-/

namespace A303716.P5940424434128028145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (f1 (n + 1) - f1 n - 1).toNat

end

end A303716.P5940424434128028145

/-!
# A303717: Number of nX6 0..1 arrays with every element unequal to 0, 1 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303717, there is no canonical definition to state claims against.
-/

/-! ## A303717.P15662385445237061639

`A303719(A374007(n+1))`
-/

namespace A303717.P15662385445237061639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (A374007 (n + 1)).toNat

end

end A303717.P15662385445237061639

/-! ## A303717.P17087561625593355718

`A303719(A166136(n+4))`
-/

namespace A303717.P17087561625593355718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (A166136 (n + 4)).toNat

end

end A303717.P17087561625593355718

/-! ## A303717.P16792346889134605187

`A303719(A000124(n+5)+5)`
-/

namespace A303717.P16792346889134605187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (A000124 (n + 5) + 5).toNat

end

end A303717.P16792346889134605187

/-! ## A303717.P9353061376566749076

`or(char[1], A303719(A055998(n+3)+9))`
-/

namespace A303717.P9353061376566749076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A303719 (A055998 (n + 3) + 9).toNat)

end

end A303717.P9353061376566749076

/-! ## A303717.P8239766174440343184

`A303719(A055998(n+3)+9)+char[A045113(n+1)]`
-/

namespace A303717.P8239766174440343184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045113 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (A055998 (n + 3) + 9).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A303717.P8239766174440343184

/-! ## A303717.P11310038611482011327

`A173675(A171821(n+1))*A303719(A055998(n+3)+9)`
-/

namespace A303717.P11310038611482011327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173675 (A171821 (n + 1)).toNat * A303719 (A055998 (n + 3) + 9).toNat

end

end A303717.P11310038611482011327

/-! ## A303717.P11220395163849548185

`A173675(A205708(n+1))*A303719(A055998(n+3)+9)`
-/

namespace A303717.P11220395163849548185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173675 (A205708 (n + 1)).toNat * A303719 (A055998 (n + 3) + 9).toNat

end

end A303717.P11220395163849548185

/-! ## A303717.P12258985614187515303

`A303719(∑[n+6]+10)`
-/

namespace A303717.P12258985614187515303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A303717.P12258985614187515303

/-!
# A303718: Number of n X 7 0..1 arrays with every element unequal to 0, 1 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303718, there is no canonical definition to state claims against.
-/

/-! ## A303718.P10807814509511760544

`A303719(A374008(n+1))`
-/

namespace A303718.P10807814509511760544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (A374008 (n + 1)).toNat

end

end A303718.P10807814509511760544

/-! ## A303718.P17468845189319517808

`A303719(A167499(n+5)+2)`
-/

namespace A303718.P17468845189319517808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (A167499 (n + 5) + 2).toNat

end

end A303718.P17468845189319517808

/-! ## A303718.P14208139517132741432

`A303719(A253145(n+5)+7)`
-/

namespace A303718.P14208139517132741432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (A253145 (n + 5) + 7).toNat

end

end A303718.P14208139517132741432

/-! ## A303718.P9235473138902402358

`A303719(A000217(n+6)+7)`
-/

namespace A303718.P9235473138902402358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (A000217 (n + 6) + 7).toNat

end

end A303718.P9235473138902402358

/-! ## A303718.P6114778540420606055

`A303719(A055999(n+4))`
-/

namespace A303718.P6114778540420606055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (A055999 (n + 4)).toNat

end

end A303718.P6114778540420606055

/-! ## A303718.P347487135743257320

`A303719(Δ[A023551(n+2)])`
-/

namespace A303718.P347487135743257320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (f1 (n + 1) - f1 n).toNat

end

end A303718.P347487135743257320

/-! ## A303718.P5149790366279684856

`A303719(A046691(n+5)-2)`
-/

namespace A303718.P5149790366279684856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (A046691 (n + 5) - 2).toNat

end

end A303718.P5149790366279684856

/-! ## A303718.P5892489415678032805

`A303719(A000124(n+7)-7)`
-/

namespace A303718.P5892489415678032805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303719 (A000124 (n + 7) - 7).toNat

end

end A303718.P5892489415678032805

/-!
# A303719: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1 or 5 king-move adjacent elements, with upper left element zero.

The programs for A303719, there is no canonical definition to state claims against.
-/

/-! ## A303719.P17841828796938257087

`A304270(n+1)-A163510(A157273(n))`
-/

namespace A303719.P17841828796938257087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (n + 1) - A163510 (A157273 n).toNat

end

end A303719.P17841828796938257087

/-! ## A303719.P15013522368819187410

`A304270(n+1)-A014081(A189111(n+1))`
-/

namespace A303719.P15013522368819187410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (n + 1) - A014081 (A189111 (n + 1)).toNat

end

end A303719.P15013522368819187410

/-! ## A303719.P7678056041015623308

`A304270(n+1)+A016389(A022166(n))`
-/

namespace A303719.P7678056041015623308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (n + 1) + A016389 (A022166 n).toNat

end

end A303719.P7678056041015623308

/-! ## A303719.P2485020464738351816

`A304270(n+1)+A016389(A027336(n))`
-/

namespace A303719.P2485020464738351816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (n + 1) + A016389 (A027336 n).toNat

end

end A303719.P2485020464738351816

/-! ## A303719.P14232513447081241475

`A304270(n+1)+A016389(A176561(n))`
-/

namespace A303719.P14232513447081241475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304270 (n + 1) + A016389 (A176561 n).toNat

end

end A303719.P14232513447081241475

/-!
# A303720: Number of n X n 0..1 arrays with every element unequal to 0, 1, 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A303720, there is no canonical definition to state claims against.
-/

/-! ## A303720.P985752690150843931

`A303727((n+1)²+n²)`
-/

namespace A303720.P985752690150843931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 ((n + 1) ^ 2 + n ^ 2)

end

end A303720.P985752690150843931

/-! ## A303720.P676113384431494373

`record[A303727(A057979(n²+2))]`
-/

namespace A303720.P676113384431494373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A057979 (n ^ 2 + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303720.P676113384431494373

/-! ## A303720.P1884447760043970012

`A303727(A001844(n))%A057819(n)`
-/

namespace A303720.P1884447760043970012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303727 (A001844 n).toNat) (A057819 n)

end

end A303720.P1884447760043970012

/-! ## A303720.P16260475535245208789

`A303727(A001844(n))+A189289(A189290(n+1))`
-/

namespace A303720.P16260475535245208789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A001844 n).toNat + A189289 (A189290 (n + 1)).toNat

end

end A303720.P16260475535245208789

/-! ## A303720.P17137964994129995267

`A303727(A001844(n))^A334369(A001223(n+1))`
-/

namespace A303720.P17137964994129995267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303727 (A001844 n).toNat : ℚ) ^ (A334369 (A001223 (n + 1)).toNat : ℤ)

end

end A303720.P17137964994129995267

/-!
# A303721: Number of nX2 0..1 arrays with every element unequal to 0, 1, 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A303721, the canonical program `A303721.P2409725540994655588` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303721 has offset 1).

The definition of A303721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303721.P2409725540994655588

`3*a(n-1)+a(n-2)-4*a(n-3)-4*a(n-4)` with `a(0)=2, a(1)=8, a(2)=21, a(3)=49, a(4)=120`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A303721

/-- `3*a(n-1)+a(n-2)-4*a(n-3)-4*a(n-4)` -/
def P2409725540994655588.Spec : Prop :=
  ∀ n, P2409725540994655588.a n = A303721 (n + 1)

theorem P2409725540994655588.correct : P2409725540994655588.Spec := by
  intro n
  simp only [A303721, Nat.add_sub_cancel]

end A303721

/-! ## A303721.P1170088697157530055

`A303727(A133263(n+1))`
-/

namespace A303721.P1170088697157530055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A133263 (n + 1)).toNat

end

end A303721.P1170088697157530055

namespace A303721

/-- `A303727(A133263(n+1))` -/
def P1170088697157530055.Spec : Prop :=
  ∀ n, P1170088697157530055.a n = A303721 (n + 1)

end A303721

/-! ## A303721.P5596214405295712564

`A303727(A374084(n+1))`
-/

namespace A303721.P5596214405295712564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A374084 (n + 1)).toNat

end

end A303721.P5596214405295712564

namespace A303721

/-- `A303727(A374084(n+1))` -/
def P5596214405295712564.Spec : Prop :=
  ∀ n, P5596214405295712564.a n = A303721 (n + 1)

end A303721

/-! ## A303721.P4946164123534810768

`A303727(A000096(n)+3)`
-/

namespace A303721.P4946164123534810768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A000096 n + 3).toNat

end

end A303721.P4946164123534810768

namespace A303721

/-- `A303727(A000096(n)+3)` -/
def P4946164123534810768.Spec : Prop :=
  ∀ n, P4946164123534810768.a n = A303721 (n + 1)

end A303721

/-! ## A303721.P15729884432367207118

`A303727(A167499(n)-3)`
-/

namespace A303721.P15729884432367207118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A167499 n - 3).toNat

end

end A303721.P15729884432367207118

namespace A303721

/-- `A303727(A167499(n)-3)` -/
def P15729884432367207118.Spec : Prop :=
  ∀ n, P15729884432367207118.a n = A303721 (n + 1)

end A303721

/-!
# A303722: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A303722, there is no canonical definition to state claims against.
-/

/-! ## A303722.P11893706695869574204

`A303727(A167614(n+1))`
-/

namespace A303722.P11893706695869574204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A167614 (n + 1)).toNat

end

end A303722.P11893706695869574204

/-! ## A303722.P7980574559500462444

`A303727(A055998(n)+6)`
-/

namespace A303722.P7980574559500462444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A055998 n + 6).toNat

end

end A303722.P7980574559500462444

/-! ## A303722.P7777783781552071060

`A303727(A046691(n)+7)`
-/

namespace A303722.P7777783781552071060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A046691 n + 7).toNat

end

end A303722.P7777783781552071060

/-! ## A303722.P10497030222207274247

`A303727(A167499(n)+n)`
-/

namespace A303722.P10497030222207274247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A167499 n + (n : ℤ)).toNat

end

end A303722.P10497030222207274247

/-! ## A303722.P10808959609354802740

`A303727(A167487(n+1)-4)`
-/

namespace A303722.P10808959609354802740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A167487 (n + 1) - 4).toNat

end

end A303722.P10808959609354802740

/-!
# A303723: Number of n X 4 0..1 arrays with every element unequal to 0, 1, 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A303723, the canonical program `A303723.P16940833519807401056` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303723 has offset 1).

The definition of A303723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303723.P16940833519807401056

`a(n-1)+a(n-2)+a(n-3)+a(n-4)-a(n-5)-2*a(n-6)` with `a(0)=8, a(1)=49, a(2)=46, a(3)=84, a(4)=133, a(5)=221, a(6)=406, a(7)=743`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A303723

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)-a(n-5)-2*a(n-6)` -/
def P16940833519807401056.Spec : Prop :=
  ∀ n, P16940833519807401056.a n = A303723 (n + 1)

theorem P16940833519807401056.correct : P16940833519807401056.Spec := by
  intro n
  simp only [A303723, Nat.add_sub_cancel]

end A303723

/-! ## A303723.P17842388873160764232

`A303727(A055999(n)+10)`
-/

namespace A303723.P17842388873160764232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A055999 n + 10).toNat

end

end A303723.P17842388873160764232

namespace A303723

/-- `A303727(A055999(n)+10)` -/
def P17842388873160764232.Spec : Prop :=
  ∀ n, P17842388873160764232.a n = A303723 (n + 1)

end A303723

/-! ## A303723.P8074281157704138973

`A303727(Δ[A006503(n)]+7)`
-/

namespace A303723.P8074281157704138973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (f1 (n + 1) - f1 n + 7).toNat

end

end A303723.P8074281157704138973

namespace A303723

/-- `A303727(Δ[A006503(n)]+7)` -/
def P8074281157704138973.Spec : Prop :=
  ∀ n, P8074281157704138973.a n = A303723 (n + 1)

end A303723

/-! ## A303723.P6616803362078573267

`A303727(A167614(n+2)+1)`
-/

namespace A303723.P6616803362078573267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A167614 (n + 2) + 1).toNat

end

end A303723.P6616803362078573267

namespace A303723

/-- `A303727(A167614(n+2)+1)` -/
def P6616803362078573267.Spec : Prop :=
  ∀ n, P6616803362078573267.a n = A303723 (n + 1)

end A303723

/-! ## A303723.P7947201143905928685

`A303727(A167499(n+2)-1)`
-/

namespace A303723.P7947201143905928685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A167499 (n + 2) - 1).toNat

end

end A303723.P7947201143905928685

namespace A303723

/-- `A303727(A167499(n+2)-1)` -/
def P7947201143905928685.Spec : Prop :=
  ∀ n, P7947201143905928685.a n = A303723 (n + 1)

end A303723

/-!
# A303724: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A303724, there is no canonical definition to state claims against.
-/

/-! ## A303724.P13146320764877217919

`A303727(A167499(n+3))`
-/

namespace A303724.P13146320764877217919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A167499 (n + 3)).toNat

end

end A303724.P13146320764877217919

/-! ## A303724.P3624646511825421242

`A303727(A000217(n+4)+5)`
-/

namespace A303724.P3624646511825421242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A000217 (n + 4) + 5).toNat

end

end A303724.P3624646511825421242

/-! ## A303724.P9228580003488528260

`A303727(A161680(n+5)+5)`
-/

namespace A303724.P9228580003488528260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A161680 (n + 5) + 5).toNat

end

end A303724.P9228580003488528260

/-! ## A303724.P14673953063760381463

`A303727(Δ[A264443(n)])`
-/

namespace A303724.P14673953063760381463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (f1 (n + 1) - f1 n).toNat

end

end A303724.P14673953063760381463

/-! ## A303724.P11685447778245520886

`A303727(A374005(n+1))`
-/

namespace A303724.P11685447778245520886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A374005 (n + 1)).toNat

end

end A303724.P11685447778245520886

/-!
# A303725: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A303725, there is no canonical definition to state claims against.
-/

/-! ## A303725.P2652788100613095451

`A303727(A166136(n+4))`
-/

namespace A303725.P2652788100613095451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A166136 (n + 4)).toNat

end

end A303725.P2652788100613095451

/-! ## A303725.P1098061771944749729

`A303727(Δ[A264443(n)]+10)`
-/

namespace A303725.P1098061771944749729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (f1 (n + 1) - f1 n + 10).toNat

end

end A303725.P1098061771944749729

/-! ## A303725.P18089301247382624216

`A303727(A167499(n+4)+1)`
-/

namespace A303725.P18089301247382624216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A167499 (n + 4) + 1).toNat

end

end A303725.P18089301247382624216

/-! ## A303725.P8964164234356460687

`A303727(A000217(n+5)+6)`
-/

namespace A303725.P8964164234356460687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A000217 (n + 5) + 6).toNat

end

end A303725.P8964164234356460687

/-! ## A303725.P18274696479241974340

`A303727(A374007(n+1))`
-/

namespace A303725.P18274696479241974340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A374007 (n + 1)).toNat

end

end A303725.P18274696479241974340

/-!
# A303726: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A303726, there is no canonical definition to state claims against.
-/

/-! ## A303726.P970225648856342250

`A303727(A167487(n+5))`
-/

namespace A303726.P970225648856342250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A167487 (n + 5)).toNat

end

end A303726.P970225648856342250

/-! ## A303726.P5431751626491379321

`A303727(A167499(n+5)+2)`
-/

namespace A303726.P5431751626491379321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A167499 (n + 5) + 2).toNat

end

end A303726.P5431751626491379321

/-! ## A303726.P15430719310663209879

`A303727(A000124(n+6)+6)`
-/

namespace A303726.P15430719310663209879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A000124 (n + 6) + 6).toNat

end

end A303726.P15430719310663209879

/-! ## A303726.P16320050252332087524

`A303727(A000217(n+6)+7)`
-/

namespace A303726.P16320050252332087524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A000217 (n + 6) + 7).toNat

end

end A303726.P16320050252332087524

/-! ## A303726.P13461251150925949596

`A303727(A055998(n+4)+10)`
-/

namespace A303726.P13461251150925949596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (A055998 (n + 4) + 10).toNat

end

end A303726.P13461251150925949596

/-!
# A303727: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2 or 3 king-move adjacent elements, with upper left element zero.

The programs for A303727, there is no canonical definition to state claims against.
-/

/-! ## A303727.P16189128761250071352

`A305230(n+1)-A186745(A306100(n))`
-/

namespace A303727.P16189128761250071352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305230 (n + 1) - A186745 (A306100 n).toNat

end

end A303727.P16189128761250071352

/-! ## A303727.P8590877641635940156

`A305230(n+1)+A016389(A022166(n))`
-/

namespace A303727.P8590877641635940156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305230 (n + 1) + A016389 (A022166 n).toNat

end

end A303727.P8590877641635940156

/-! ## A303727.P3445834826951618441

`A305230(n+1)+A016389(A027336(n))`
-/

namespace A303727.P3445834826951618441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305230 (n + 1) + A016389 (A027336 n).toNat

end

end A303727.P3445834826951618441

/-! ## A303727.P13634142854874835455

`A304775(n+1)+A112053(A022171(n))`
-/

namespace A303727.P13634142854874835455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304775 (n + 1) + A112053 (A022171 n).toNat

end

end A303727.P13634142854874835455

/-! ## A303727.P13946884789844166933

`A229998(A317230(n+1))`
-/

namespace A303727.P13946884789844166933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229998 (A317230 (n + 1)).toNat

end

end A303727.P13946884789844166933

/-!
# A303730: Number of noncrossing path sets on n nodes with each path having at least two nodes.

The programs for A303730, there is no canonical definition to state claims against.
-/

/-! ## A303730.P13352070148678657762

`A112689(A357399(n)+A014137(n))`
-/

namespace A303730.P13352070148678657762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A357399 n + A014137 n).toNat

end

end A303730.P13352070148678657762

/-! ## A303730.P15140664031334060935

`A071068(or(A001791(n), A054977(n)))`
-/

namespace A303730.P15140664031334060935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071068 (Int.lor (A001791 n) (A054977 n)).toNat

end

end A303730.P15140664031334060935

/-! ## A303730.P14377371790742521551

`A071068(or(A001791(n), A066827(n+1)))`
-/

namespace A303730.P14377371790742521551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071068 (Int.lor (A001791 n) (A066827 (n + 1))).toNat

end

end A303730.P14377371790742521551

/-! ## A303730.P14439885659976944574

`A073424(A002997(n+1))+A001678(2*n+1)`
-/

namespace A303730.P14439885659976944574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A002997 (n + 1)).toNat + A001678 (2 * n + 1)

end

end A303730.P14439885659976944574

/-!
# A303739: Numbers k such that 9*k^2 + 3*k + 1 (A082040) is prime.

The programs for A303739, there is no canonical definition to state claims against.
-/

/-! ## A303739.P9351438101342438262

`eq[1, A289356(3*n)]`
-/

namespace A303739.P9351438101342438262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A303739.P9351438101342438262

/-! ## A303739.P8911811615173939615

`lt[0, A108154(3*n+1)]`
-/

namespace A303739.P8911811615173939615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A303739.P8911811615173939615

/-! ## A303739.P7345981561833116860

`eq[1, A181953(3*n+1)]`
-/

namespace A303739.P7345981561833116860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181953 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A303739.P7345981561833116860

/-! ## A303739.P3794179276888837821

`eq[2, A278251(3*n+1)]`
-/

namespace A303739.P3794179276888837821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A303739.P3794179276888837821

/-! ## A303739.P536471458189304922

`eq[2, A278260(6*n+1)]`
-/

namespace A303739.P536471458189304922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278260 (6 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A303739.P536471458189304922

/-! ## A303739.P7865009829430950288

`record[gcd(floor((n+2)/3), A214059(n+1))]`
-/

namespace A303739.P7865009829430950288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(n + 2 : ℚ) / 3⌋ (A214059 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303739.P7865009829430950288

/-! ## A303739.P3200498316262867597

`record[A135997(A002384(n+2))]`
-/

namespace A303739.P3200498316262867597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A002384 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303739.P3200498316262867597

/-! ## A303739.P17389059621936371126

`lt[A289356(A016789(n)-2), 2]`
-/

namespace A303739.P17389059621936371126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 (A016789 n - 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A303739.P17389059621936371126

/-! ## A303739.P10407187031159978333

`lt[A289356(3*n)^6, A005117(n+1)]`
-/

namespace A303739.P10407187031159978333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 (3 * n) ^ 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A303739.P10407187031159978333

/-! ## A303739.P4147242683486148439

`lt[A051890(n), A081256(A016777(n))]`
-/

namespace A303739.P4147242683486148439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051890 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A016777 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A303739.P4147242683486148439

/-!
# A303740: Primes of the form 9*k^2 + 3*k + 1.

The programs for A303740, there is no canonical definition to state claims against.
-/

/-! ## A303740.P11115927871533014173

`A082040(A303739(n+1))`
-/

namespace A303740.P11115927871533014173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 (A303739 (n + 1)).toNat

end

end A303740.P11115927871533014173

/-! ## A303740.P15342590610434057497

`∩[A002383(n+1), A082040(n)]`
-/

namespace A303740.P15342590610434057497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303740.P15342590610434057497

/-! ## A303740.P15404565616807219145

`∩[A059055(n+1), A082040(n)]`
-/

namespace A303740.P15404565616807219145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303740.P15404565616807219145

/-! ## A303740.P6874669506195484788

`∩[A085104(n+1), A082040(n)]`
-/

namespace A303740.P6874669506195484788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303740.P6874669506195484788

/-! ## A303740.P10819809605633201173

`∩[A172979(n+1), A082040(n)]`
-/

namespace A303740.P10819809605633201173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303740.P10819809605633201173

/-! ## A303740.P5227001857267125438

`∩[A173295(n+1), A082040(n)]`
-/

namespace A303740.P5227001857267125438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303740.P5227001857267125438

/-! ## A303740.P13317066668297152856

`∩[A206864(n+1), A082040(n)]`
-/

namespace A303740.P13317066668297152856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303740.P13317066668297152856

/-! ## A303740.P7623370938905540857

`∩[A206946(n+1), A082040(n)]`
-/

namespace A303740.P7623370938905540857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303740.P7623370938905540857

/-! ## A303740.P13973956416525281807

`∩[A239710(n+1), A082040(n)]`
-/

namespace A303740.P13973956416525281807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303740.P13973956416525281807

/-! ## A303740.P446319045343557372

`∩[A346156(n+1), A082040(n)]`
-/

namespace A303740.P446319045343557372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303740.P446319045343557372

/-! ## A303740.P7693161187078425151

`record[A108154(3*n+4)]`
-/

namespace A303740.P7693161187078425151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303740.P7693161187078425151

/-! ## A303740.P13101337862874367118

`record[A081256(3*(n+1)+1)]`
-/

namespace A303740.P13101337862874367118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (3 * (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303740.P13101337862874367118

/-! ## A303740.P8732046124163432424

`∩[A082040(n), A182047(n)]`
-/

namespace A303740.P8732046124163432424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303740.P8732046124163432424

/-! ## A303740.P17756790972967943349

`A082040(eq[2, A278251(3*n+1)])`
-/

namespace A303740.P17756790972967943349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303740.P17756790972967943349

/-! ## A303740.P16783152235146408834

`A298027(2*eq[2, A278251(3*n+1)])`
-/

namespace A303740.P16783152235146408834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298027 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303740.P16783152235146408834

/-! ## A303740.P7124439617063816959

`A130770(3*eq[2, A278251(3*n+1)])`
-/

namespace A303740.P7124439617063816959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130770 (3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303740.P7124439617063816959

/-! ## A303740.P14297305133643011200

`A082040(eq[2, A278260(6*n+1)])`
-/

namespace A303740.P14297305133643011200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278260 (6 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303740.P14297305133643011200

/-! ## A303740.P5749885996430778520

`A298027(2*eq[2, A278260(6*n+1)])`
-/

namespace A303740.P5749885996430778520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278260 (6 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298027 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303740.P5749885996430778520

/-! ## A303740.P16945064444232368085

`A130770(3*eq[2, A278260(6*n+1)])`
-/

namespace A303740.P16945064444232368085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278260 (6 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130770 (3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303740.P16945064444232368085

/-! ## A303740.P362731403540072268

`∩[A152900(n+1), A082040(n)]`
-/

namespace A303740.P362731403540072268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A303740.P362731403540072268

/-! ## A303740.P10364122921163827322

`p?[ceil(((n+1)/2+n)²)]`
-/

namespace A303740.P10364122921163827322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℚ) / 2 + (n : ℚ)) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A303740.P10364122921163827322

/-!
# A303741: Numbers k such that A(k+1) = A(k) + 2, where A() = A005101() are the abundant numbers.

The programs for A303741, the canonical program `A303741.P16042547146136321047` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303741 has offset 1).

The definition of A303741 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091194, A231086, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A303741.P16042547146136321047

`A091194(A231086(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A303741

/-- `A091194(A231086(n+1))` -/
def P16042547146136321047.Spec : Prop :=
  ∀ n, P16042547146136321047.a n = A303741 (n + 1)

theorem P16042547146136321047.correct : P16042547146136321047.Spec := by
  intro n
  simp only [A303741, Nat.add_sub_cancel]

end A303741

/-! ## A303741.P18421139102226164772

`eq[2, A125115(n+1)]+1`
-/

namespace A303741.P18421139102226164772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A303741.P18421139102226164772

namespace A303741

/-- `eq[2, A125115(n+1)]+1` -/
def P18421139102226164772.Spec : Prop :=
  ∀ n, (P18421139102226164772.a n : ℤ) = A303741 (n + 1)

end A303741

/-! ## A303741.P4892016922573403885

`eq[2, A125115(A028310(n))]`
-/

namespace A303741.P4892016922573403885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A303741.P4892016922573403885

namespace A303741

/-- `eq[2, A125115(A028310(n))]` -/
def P4892016922573403885.Spec : Prop :=
  ∀ n, (P4892016922573403885.a n : ℤ) = A303741 (n + 1)

end A303741

/-! ## A303741.P522978695951147458

`A020725(eq[2, A125115(n+1)])`
-/

namespace A303741.P522978695951147458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303741.P522978695951147458

namespace A303741

/-- `A020725(eq[2, A125115(n+1)])` -/
def P522978695951147458.Spec : Prop :=
  ∀ n, P522978695951147458.a n = A303741 (n + 1)

end A303741

/-! ## A303741.P10927919992249489044

`eq[2, Δ[A005101(n+1)]]+1`
-/

namespace A303741.P10927919992249489044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A303741.P10927919992249489044

namespace A303741

/-- `eq[2, Δ[A005101(n+1)]]+1` -/
def P10927919992249489044.Spec : Prop :=
  ∀ n, (P10927919992249489044.a n : ℤ) = A303741 (n + 1)

end A303741

/-! ## A303741.P3334376442630247001

`lt[1, A038500(Δ[A005101(n+1)]+1)]+1`
-/

namespace A303741.P3334376442630247001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (f3 (n + 1) - f3 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A303741.P3334376442630247001

namespace A303741

/-- `lt[1, A038500(Δ[A005101(n+1)]+1)]+1` -/
def P3334376442630247001.Spec : Prop :=
  ∀ n, (P3334376442630247001.a n : ℤ) = A303741 (n + 1)

end A303741

/-! ## A303741.P10650839991374386387

`lt[A033879(lt[A033879(n+2), 0]), 0]`
-/

namespace A303741.P10650839991374386387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A303741.P10650839991374386387

namespace A303741

/-- `lt[A033879(lt[A033879(n+2), 0]), 0]` -/
def P10650839991374386387.Spec : Prop :=
  ∀ n, (P10650839991374386387.a n : ℤ) = A303741 (n + 1)

end A303741

/-! ## A303741.P10473084238679878540

`eq[2, A125115(A065033(2*n))]`
-/

namespace A303741.P10473084238679878540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A303741.P10473084238679878540

namespace A303741

/-- `eq[2, A125115(A065033(2*n))]` -/
def P10473084238679878540.Spec : Prop :=
  ∀ n, (P10473084238679878540.a n : ℤ) = A303741 (n + 1)

end A303741

/-! ## A303741.P17074462650926414208

`eq[2, A125115(A123108(2*n))]`
-/

namespace A303741.P17074462650926414208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A303741.P17074462650926414208

namespace A303741

/-- `eq[2, A125115(A123108(2*n))]` -/
def P17074462650926414208.Spec : Prop :=
  ∀ n, (P17074462650926414208.a n : ℤ) = A303741 (n + 1)

end A303741

/-! ## A303741.P9073353300910320706

`eq[A005101(n+2), A053814(A005101(n+1)+2)]+1`
-/

namespace A303741.P9073353300910320706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053814 (A005101 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A303741.P9073353300910320706

namespace A303741

/-- `eq[A005101(n+2), A053814(A005101(n+1)+2)]+1` -/
def P9073353300910320706.Spec : Prop :=
  ∀ n, (P9073353300910320706.a n : ℤ) = A303741 (n + 1)

end A303741

/-! ## A303741.P2267179800782334041

`lt[A005101(n+1), A001065(A005101(n+1)-2)]`
-/

namespace A303741.P2267179800782334041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A005101 (n + 1) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A303741.P2267179800782334041

namespace A303741

/-- `lt[A005101(n+1), A001065(A005101(n+1)-2)]` -/
def P2267179800782334041.Spec : Prop :=
  ∀ n, (P2267179800782334041.a n : ℤ) = A303741 (n + 1)

end A303741

/-!
# A303742: Number of unlabeled oriented edge-rooted 2-trees which have n triangles.

The programs for A303742, there is no canonical definition to state claims against.
-/

/-! ## A303742.P8175953450275141273

`A054581(n+2)+A054581(n+2)-A063687(n)`
-/

namespace A303742.P8175953450275141273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054581 (n + 2) + (A054581 (n + 2) - A063687 n)

end

end A303742.P8175953450275141273

/-! ## A303742.P11400546928874381938

`A340812(∑[n+2]-1)`
-/

namespace A303742.P11400546928874381938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340812 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A303742.P11400546928874381938

/-! ## A303742.P14255015723321703836

`or(char[1], A340812(A034856(n+1)))`
-/

namespace A303742.P14255015723321703836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A340812 (A034856 (n + 1)).toNat)

end

end A303742.P14255015723321703836

/-! ## A303742.P12999830240821885617

`lcm(A033999(n), A340812(A034856(n+1)))`
-/

namespace A303742.P12999830240821885617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A340812 (A034856 (n + 1)).toNat)

end

end A303742.P12999830240821885617

/-! ## A303742.P10354216244148367023

`A340812(A034856(n+1))%A196585(n+1)`
-/

namespace A303742.P10354216244148367023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340812 (A034856 (n + 1)).toNat) (A196585 (n + 1))

end

end A303742.P10354216244148367023

/-! ## A303742.P2910137204968695032

`A007318(2*gcd(n, n+1))*A340812(A034856(n+1))`
-/

namespace A303742.P2910137204968695032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 * Nat.gcd n (n + 1)) * A340812 (A034856 (n + 1)).toNat

end

end A303742.P2910137204968695032

/-!
# A303743: a(n) is a number of lattice points in 3D Cartesian grid between cube with edge length 2*n centered in origin and its inscribed sphere. Three pairs of the cube's faces are parallel to the planes XOY, XOZ, YOZ respectively.

The programs for A303743, there is no canonical definition to state claims against.
-/

/-! ## A303743.P5038120925906280161

`A351711(A279875(∑[n]))`
-/

namespace A303743.P5038120925906280161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351711 (A279875 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A303743.P5038120925906280161

/-!
# A303744: Numbers that are not a difference between same powers (greater than 1) of positive numbers.

The programs for A303744, there is no canonical definition to state claims against.
-/

/-! ## A303744.P2119626040988796637

`record[lcm(A043529(n), A175213(n))]`
-/

namespace A303744.P2119626040988796637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A043529 n) (A175213 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303744.P2119626040988796637

/-! ## A303744.P12537726755338832309

`record[A336898(n)+A266539(n+1)]`
-/

namespace A303744.P12537726755338832309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336898 n + A266539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303744.P12537726755338832309

/-! ## A303744.P6321957585284937794

`eq[abs(A118823(n+1)), A051904(n+1)]`
-/

namespace A303744.P6321957585284937794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118823 (n + 1)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A303744.P6321957585284937794

/-! ## A303744.P1346499835931232934

`record[A355662(n+2)+A226783(n+1)]`
-/

namespace A303744.P1346499835931232934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355662 (n + 2) + A226783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303744.P1346499835931232934

/-! ## A303744.P6055996585499467544

`∑[A335385(A370428(n+2))]`
-/

namespace A303744.P6055996585499467544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335385 (A370428 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303744.P6055996585499467544

/-!
# A303745: Totients t where gcd({x: phi(x)=t}) > 1.

The programs for A303745, there is no canonical definition to state claims against.
-/

/-! ## A303745.P17254270729435125879

`eq[1, A323514(n+1)]+1`
-/

namespace A303745.P17254270729435125879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323514 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A303745.P17254270729435125879

/-! ## A303745.P16466579693835200861

`filter[A002202(n+1), A323514(#)]`
-/

namespace A303745.P16466579693835200861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323514 (f1 j).toNat = 1) n)

end

end A303745.P16466579693835200861

/-! ## A303745.P9966095675680301144

`filter[A221178(n+2), A323514(#)]`
-/

namespace A303745.P9966095675680301144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221178 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323514 (f1 j).toNat = 1) n)

end

end A303745.P9966095675680301144

/-! ## A303745.P16028514230399808771

`filter[A177712(n+1), A323514(#)]`
-/

namespace A303745.P16028514230399808771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323514 (f1 j).toNat = 1) n)

end

end A303745.P16028514230399808771

/-! ## A303745.P9407345789201301728

`filter[A305980(n+1), A323514(#)]`
-/

namespace A303745.P9407345789201301728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323514 (f1 j).toNat = 1) n)

end

end A303745.P9407345789201301728

/-! ## A303745.P13373069066887089782

`filter[A326201(n+1), A323514(#)]`
-/

namespace A303745.P13373069066887089782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323514 (f1 j).toNat = 1) n)

end

end A303745.P13373069066887089782

/-! ## A303745.P6309666431128864737

`filter[A004277(n), A323514(#)]`
-/

namespace A303745.P6309666431128864737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323514 (f1 j).toNat = 1) n)

end

end A303745.P6309666431128864737

/-! ## A303745.P17015852742503928100

`filter[A020739(n), A323514(#)]`
-/

namespace A303745.P17015852742503928100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323514 (f1 j).toNat = 1) n)

end

end A303745.P17015852742503928100

/-! ## A303745.P8054084623057722616

`filter[A020744(n), A323514(#)]`
-/

namespace A303745.P8054084623057722616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323514 (f1 j).toNat = 1) n)

end

end A303745.P8054084623057722616

/-! ## A303745.P15451914636305669734

`filter[A057543(n), A323514(#)]`
-/

namespace A303745.P15451914636305669734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323514 (f1 j).toNat = 1) n)

end

end A303745.P15451914636305669734

/-! ## A303745.P3844847307498132453

`filter[A092486(n), A323514(#)]`
-/

namespace A303745.P3844847307498132453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323514 (f1 j).toNat = 1) n)

end

end A303745.P3844847307498132453

/-! ## A303745.P9860772782406004844

`filter[A092535(n), A323514(#)]`
-/

namespace A303745.P9860772782406004844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323514 (f1 j).toNat = 1) n)

end

end A303745.P9860772782406004844

/-! ## A303745.P9026762417901182703

`filter[A103517(n), A323514(#)]`
-/

namespace A303745.P9026762417901182703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323514 (f1 j).toNat = 1) n)

end

end A303745.P9026762417901182703

/-! ## A303745.P9042292819875044152

`filter[A004275(n+1), A323514(#)]`
-/

namespace A303745.P9042292819875044152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323514 (f1 j).toNat = 1) n)

end

end A303745.P9042292819875044152

/-! ## A303745.P2648921456864862195

`filter[A004278(n+1), A323514(#)]`
-/

namespace A303745.P2648921456864862195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323514 (f1 j).toNat = 1) n)

end

end A303745.P2648921456864862195

/-! ## A303745.P7142801775798798215

`filter[A005843(n+1), A323514(#)]`
-/

namespace A303745.P7142801775798798215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323514 (f1 j).toNat = 1) n)

end

end A303745.P7142801775798798215

/-! ## A303745.P18007280262484386873

`filter[A163300(n+2), A323514(#)]`
-/

namespace A303745.P18007280262484386873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323514 (f1 j).toNat = 1) n)

end

end A303745.P18007280262484386873

/-! ## A303745.P14245953940677175827

`filter[A163750(n+2), A323514(#)]`
-/

namespace A303745.P14245953940677175827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163750 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323514 (f1 j).toNat = 1) n)

end

end A303745.P14245953940677175827

/-! ## A303745.P2696105936352573557

`filter[A361871(n+2), A323514(#)]`
-/

namespace A303745.P2696105936352573557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361871 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323514 (f1 j).toNat = 1) n)

end

end A303745.P2696105936352573557

/-! ## A303745.P17501251500713859016

`filter[A051755(n+3), A323514(#)]`
-/

namespace A303745.P17501251500713859016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323514 (f1 j).toNat = 1) n)

end

end A303745.P17501251500713859016

/-!
# A303746: Totients t for which {x: phi(x)=t} share the same largest prime factor.

The programs for A303746, there is no canonical definition to state claims against.
-/

/-! ## A303746.P2176315829220873499

`lt[A164020(n), A323169(n+1)²]+1`
-/

namespace A303746.P2176315829220873499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A303746.P2176315829220873499

/-! ## A303746.P17239367621243702079

`A164020(lt[A164020(n), A323169(n+1)²])`
-/

namespace A303746.P17239367621243702079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A303746.P17239367621243702079

/-! ## A303746.P17358649793362883883

`A164020(lt[A001055(n+1), A323169(n+1)])`
-/

namespace A303746.P17358649793362883883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A303746.P17358649793362883883

/-! ## A303746.P3816683043651422009

`A164020(lt[A004736(n+1), A323169(n+1)])`
-/

namespace A303746.P3816683043651422009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A303746.P3816683043651422009

/-! ## A303746.P3445335296690356620

`lt[A233583(n+1), A323169(n+1)²]+1`
-/

namespace A303746.P3445335296690356620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A303746.P3445335296690356620

/-! ## A303746.P13710071479353737419

`lt[A001316(n), A323169(A233583(n+1))]`
-/

namespace A303746.P13710071479353737419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A303746.P13710071479353737419

/-! ## A303746.P12771815592541457456

`lt[A004736(n+1), A323169(A233583(n+1))]`
-/

namespace A303746.P12771815592541457456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A303746.P12771815592541457456

/-! ## A303746.P3367133832152663050

`lt[A066412(n+1), A323169(A233583(n+1))]`
-/

namespace A303746.P3367133832152663050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A303746.P3367133832152663050

/-! ## A303746.P15635653636416259203

`lt[A339738(n+1), A323169(n+1)]+1`
-/

namespace A303746.P15635653636416259203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A303746.P15635653636416259203

/-! ## A303746.P13522640299237154976

`A164020(lt[A339738(n+1), A323169(n+1)])`
-/

namespace A303746.P13522640299237154976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A303746.P13522640299237154976

/-!
# A303747: Totients t for which gcd({x: phi(x)=t}) equals the largest prime factor of each member of {x: phi(x)=t}.

The programs for A303747, there is no canonical definition to state claims against.
-/

/-! ## A303747.P12501415334170705195

`eq[A094404(n+1), A323514(n+1)]+1`
-/

namespace A303747.P12501415334170705195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323514 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A303747.P12501415334170705195

/-! ## A303747.P787516454692995605

`A014681(eq[A094404(n+1), A323514(n+1)])`
-/

namespace A303747.P787516454692995605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A303747.P787516454692995605

/-! ## A303747.P263218955061075355

`lt[(A328311(A205845(n+1))+1)!, A323169(n+1)]+1`
-/

namespace A303747.P263218955061075355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A328311 (A205845 (n + 1)).toNat + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A303747.P263218955061075355

/-! ## A303747.P5839194251739867179

`filter[A274204(n+1), A323514(#)]`
-/

namespace A303747.P5839194251739867179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323514 (f1 j).toNat = 1) n)

end

end A303747.P5839194251739867179

/-! ## A303747.P16437294230188662399

`filter[A347243(n+1), A323514(#)]`
-/

namespace A303747.P16437294230188662399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323514 (f1 j).toNat = 1) n)

end

end A303747.P16437294230188662399

/-!
# A303748: a(n) is the number of distinct terms of the form i^j where 0 <= i,j <= n.

The programs for A303748, there is no canonical definition to state claims against.
-/

/-! ## A303748.P14311568651815346570

`A126254(n)+a(A061358(A094743(n+1))-1)` with `a(0)=1`
-/

namespace A303748.P14311568651815346570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126254 n + a (A061358 (A094743 (n + 1)).toNat - 1).toNat

end

end A303748.P14311568651815346570

/-! ## A303748.P8891269330345643230

`A126254(A028310(n))+A000035(A094743(n+1))`
-/

namespace A303748.P8891269330345643230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126254 (A028310 n).toNat + A000035 (A094743 (n + 1)).toNat

end

end A303748.P8891269330345643230

/-! ## A303748.P6911938817073614672

`A126254(A065033(2*n))+A061358(A094743(n+1))`
-/

namespace A303748.P6911938817073614672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126254 (A065033 (2 * n)).toNat + A061358 (A094743 (n + 1)).toNat

end

end A303748.P6911938817073614672

/-! ## A303748.P15800608791499405493

`A126254(A000007(n)+n)+A000035(A094743(n+1))`
-/

namespace A303748.P15800608791499405493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126254 (A000007 n + (n : ℤ)).toNat + A000035 (A094743 (n + 1)).toNat

end

end A303748.P15800608791499405493

/-! ## A303748.P17021418936562924026

`A332992(A137688(n))+A126254(A065033(2*n))`
-/

namespace A303748.P17021418936562924026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332992 (A137688 n).toNat + A126254 (A065033 (2 * n)).toNat

end

end A303748.P17021418936562924026

/-! ## A303748.P13191722925266817742

`A126254(n)+a(A002262(∑[n]+1)-1)` with `a(0)=1`
-/

namespace A303748.P13191722925266817742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126254 n + a (A002262 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1).toNat

end

end A303748.P13191722925266817742

/-! ## A303748.P14645615864998560813

`A126254(A193739(∑[n]))-A057428(n)`
-/

namespace A303748.P14645615864998560813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126254 (A193739 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - A057428 n

end

end A303748.P14645615864998560813

/-! ## A303748.P12680805957160186084

`A126254(A028310(n))+A002262(∑[n]+1)`
-/

namespace A303748.P12680805957160186084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126254 (A028310 n).toNat + A002262 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303748.P12680805957160186084

/-! ## A303748.P4689894721562352531

`A126254(A065033(2*n))+A002262(∑[n]+1)`
-/

namespace A303748.P4689894721562352531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126254 (A065033 (2 * n)).toNat + A002262 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303748.P4689894721562352531

/-! ## A303748.P8924186071643607044

`A324903(A030130(n+2))+A126254(A065033(2*n))`
-/

namespace A303748.P8924186071643607044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324903 (A030130 (n + 2)).toNat + A126254 (A065033 (2 * n)).toNat

end

end A303748.P8924186071643607044

/-! ## A303748.P7012227310535262292

`A126254(A137735(n²))+A057427(n)`
-/

namespace A303748.P7012227310535262292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126254 (A137735 (n ^ 2)).toNat + A057427 n

end

end A303748.P7012227310535262292

/-!
# A303749: First differences of A302774; Number of terms in A303762 that have prime(n) as their largest prime factor (A006530).

The programs for A303749, there is no canonical definition to state claims against.
-/

/-! ## A303749.P9725121305153413118

`A302774(n+2)-A302774(n+1)`
-/

namespace A303749.P9725121305153413118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302774 (n + 2) - A302774 (n + 1)

end

end A303749.P9725121305153413118

/-! ## A303749.P9681912520043260355

`3*(or(1, a(n-2))-and(1, n))+1` with `a(0)=1, a(1)=2`
-/

namespace A303749.P9681912520043260355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * (Int.lor 1 (a (n - 2)) - (Nat.land 1 n : ℤ)) + 1

end

end A303749.P9681912520043260355

/-! ## A303749.P15860634176522964093

`1-3*(and(1, n)-or(1, a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A303749.P15860634176522964093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - 3 * ((Nat.land 1 n : ℤ) - Int.lor 1 (a (n - 2)))

end

end A303749.P15860634176522964093

/-! ## A303749.P15778103134684329426

`3*xor(n, or(1, xor(n, a(n-2))))+1` with `a(0)=1, a(1)=2`
-/

namespace A303749.P15778103134684329426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * Nat.xor n (Nat.lor 1 (Nat.xor n (a (n - 2)))) + 1

end

end A303749.P15778103134684329426

/-! ## A303749.P15092151450529258560

`Δ[A302774(n+1)]`
-/

namespace A303749.P15092151450529258560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A303749.P15092151450529258560

/-!
# A303750: Positions of odd terms in A303751.

The programs for A303750, there is no canonical definition to state claims against.
-/

/-! ## A303750.P5522717420614806696

`eq[1, A303751(n+1)%2]+1`
-/

namespace A303750.P5522717420614806696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303751 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A303750.P5522717420614806696

/-! ## A303750.P7076935365430631597

`eq[1, A303751(A000038(n)+n)%2]`
-/

namespace A303750.P7076935365430631597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303751 (A000038 n + (n : ℤ)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A303750.P7076935365430631597

/-! ## A303750.P3567274544435137943

`eq[1, A000035(A303751(n+1))]+1`
-/

namespace A303750.P3567274544435137943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A303751 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A303750.P3567274544435137943

/-! ## A303750.P12599128575091569738

`A304530(n+1)%A198534(n+1)`
-/

namespace A303750.P12599128575091569738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304530 (n + 1)) (A198534 (n + 1))

end

end A303750.P12599128575091569738

/-! ## A303750.P17868078843840709043

`A304530(A000005(∑[ceil(2^(n-1))]))`
-/

namespace A303750.P17868078843840709043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304530 (A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A303750.P17868078843840709043

/-!
# A303753: Ordinal transform of cototient (A051953).

The programs for A303753, there is no canonical definition to state claims against.
-/

/-! ## A303753.P4022071362851053452

`ceil(A285879(n+1)/A321893(n+1))`
-/

namespace A303753.P4022071362851053452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A285879 (n + 1) : ℚ) / (A321893 (n + 1) : ℚ)⌉

end

end A303753.P4022071362851053452

/-! ## A303753.P12138279544333268697

`gcd(A067004(n+1), A338569((n+1)²/∏{p}[n+1, #]))`
-/

namespace A303753.P12138279544333268697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067004 (n + 1)) (A338569 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat)

end

end A303753.P12138279544333268697

/-! ## A303753.P15908053965159491185

`gcd(A001462(n+1), A067004(A187829(n+1)))`
-/

namespace A303753.P15908053965159491185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001462 (n + 1)) (A067004 (A187829 (n + 1)).toNat)

end

end A303753.P15908053965159491185

/-! ## A303753.P2174709845401922826

`gcd(A026233(n+1), A061395(A063834(n+3)))`
-/

namespace A303753.P2174709845401922826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026233 (n + 1)) (A061395 (A063834 (n + 3)).toNat)

end

end A303753.P2174709845401922826

/-! ## A303753.P15377983256507440366

`A329359(A275592(n))`
-/

namespace A303753.P15377983256507440366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329359 (A275592 n).toNat

end

end A303753.P15377983256507440366

/-!
# A303754: a(1) = 1 and for n > 1, a(n) = number of values of k, 2 <= k <= n, with A303753(k) = A303753(n), where A303753 is ordinal transform of cototient, A051953.

The programs for A303754, there is no canonical definition to state claims against.
-/

/-! ## A303754.P13277400855995326205

`A325352(A065306(n+1)%A325387(3*n+5))`
-/

namespace A303754.P13277400855995326205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325352 (Int.tmod (A065306 (n + 1)) (A325387 (3 * n + 5))).toNat

end

end A303754.P13277400855995326205

/-! ## A303754.P1671995609877890381

`A325352(A065307(n+1)%A325387(3*n+5))`
-/

namespace A303754.P1671995609877890381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325352 (Int.tmod (A065307 (n + 1)) (A325387 (3 * n + 5))).toNat

end

end A303754.P1671995609877890381

/-! ## A303754.P12689577028900883909

`gcd(A343719(2*n+5), A343755(n+1))`
-/

namespace A303754.P12689577028900883909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A343719 (2 * n + 5)) (A343755 (n + 1))

end

end A303754.P12689577028900883909

/-! ## A303754.P10095147604063515475

`A178487(A032742(n+1)^A039706(n+1))`
-/

namespace A303754.P10095147604063515475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (SequenceMachineLib.roundAway ((A032742 (n + 1) : ℚ) ^ (A039706 (n + 1) : ℤ))).toNat

end

end A303754.P10095147604063515475

/-! ## A303754.P9053672036176486598

`A039637(A342617(n+1))`
-/

namespace A303754.P9053672036176486598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (A342617 (n + 1)).toNat

end

end A303754.P9053672036176486598

/-!
# A303755: Ordinal transform of A289625.

The programs for A303755, there is no canonical definition to state claims against.
-/

/-! ## A303755.P3292534324653739670

`A365632(A019565(n+2)*A067538(n+1))`
-/

namespace A303755.P3292534324653739670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365632 (A019565 (n + 2) * A067538 (n + 1)).toNat

end

end A303755.P3292534324653739670

/-! ## A303755.P18269441903267161076

`A360617(xor(12, n+63))`
-/

namespace A303755.P18269441903267161076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360617 (Nat.xor 12 (n + 63))

end

end A303755.P18269441903267161076

/-! ## A303755.P17673626759771707391

`A360617(63-xor(12, -n))`
-/

namespace A303755.P17673626759771707391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360617 (63 - Int.xor 12 (-(n : ℤ))).toNat

end

end A303755.P17673626759771707391

/-! ## A303755.P5320451679158714464

`A217626(A000043(n+10))`
-/

namespace A303755.P5320451679158714464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217626 (A000043 (n + 10)).toNat

end

end A303755.P5320451679158714464

/-! ## A303755.P16726711194932255782

`A360617(A016945(n)-A055090(n))`
-/

namespace A303755.P16726711194932255782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360617 (A016945 n - A055090 n).toNat

end

end A303755.P16726711194932255782

/-!
# A303756: Number of values of k, 1 <= k <= n, with A002322(k) = A002322(n), where A002322 is Carmichael lambda.

The programs for A303756, there is no canonical definition to state claims against.
-/

/-! ## A303756.P7371402507501459825

`A303758(n+1)+char[1]`
-/

namespace A303756.P7371402507501459825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303758 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303756.P7371402507501459825

/-! ## A303756.P12055688909954094973

`A303758(n+1)*A373565(n)`
-/

namespace A303756.P12055688909954094973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303758 (n + 1) * A373565 n

end

end A303756.P12055688909954094973

/-! ## A303756.P5045585831076306065

`(A063524(n)+1)*A303758(n+1)`
-/

namespace A303756.P5045585831076306065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063524 n + 1) * A303758 (n + 1)

end

end A303756.P5045585831076306065

/-! ## A303756.P18081033384140204046

`lcm(A303758(n+1), A352177(n+1))`
-/

namespace A303756.P18081033384140204046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A303758 (n + 1)) (A352177 (n + 1))

end

end A303756.P18081033384140204046

/-! ## A303756.P6802320936110268879

`A004525(a(A191265(n))+1)*A303758(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A303756.P6802320936110268879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A004525 (a (A191265 n).toNat + 1).toNat * A303758 (n + 1)

end

end A303756.P6802320936110268879

/-! ## A303756.P1035068547908670883

`A081373(n+1)+A303758(n+1)-A303757(n+1)`
-/

namespace A303756.P1035068547908670883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (n + 1) + (A303758 (n + 1) - A303757 (n + 1))

end

end A303756.P1035068547908670883

/-! ## A303756.P14643851597806271192

`A081373(A081373(n+1)/A303757(n+1))*A303758(n+1)`
-/

namespace A303756.P14643851597806271192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (SequenceMachineLib.roundAway ((A081373 (n + 1) : ℚ) / (A303757 (n + 1) : ℚ))).toNat * A303758 (n + 1)

end

end A303756.P14643851597806271192

/-! ## A303756.P4478840059109849736

`A081373(record[A006530(n+1)])*A303758(n+1)`
-/

namespace A303756.P4478840059109849736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A303758 (n + 1)

end

end A303756.P4478840059109849736

/-! ## A303756.P15555822217889218191

`A081373(A006530(n²+1))*A303758(n+1)`
-/

namespace A303756.P15555822217889218191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (A006530 (n ^ 2 + 1)).toNat * A303758 (n + 1)

end

end A303756.P15555822217889218191

/-! ## A303756.P15769583059486591208

`A006519(A325395(n+1))*A303758(n+1)`
-/

namespace A303756.P15769583059486591208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A325395 (n + 1)).toNat * A303758 (n + 1)

end

end A303756.P15769583059486591208

/-!
# A303757: a(1) = 1 and for n > 1, a(n) = number of values of k, 2 <= k <= n, with A000010(k) = A000010(n), where A000010 is Euler totient function phi.

The programs for A303757, there is no canonical definition to state claims against.
-/

/-! ## A303757.P18079667744544817129

`A319989(2*(n+1))`
-/

namespace A303757.P18079667744544817129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319989 (2 * (n + 1))

end

end A303757.P18079667744544817129

/-! ## A303757.P2164887927927726828

`A081373(char[1]+1+n)`
-/

namespace A303757.P2164887927927726828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)

end

end A303757.P2164887927927726828

/-! ## A303757.P6075854413145053312

`A159075(n)+A081373(n+1)`
-/

namespace A303757.P6075854413145053312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A081373 (n + 1)

end

end A303757.P6075854413145053312

/-! ## A303757.P16656565660324537392

`A081373(n+1)-A063524(n)`
-/

namespace A303757.P16656565660324537392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (n + 1) - A063524 n

end

end A303757.P16656565660324537392

/-! ## A303757.P11778629189475779302

`A081373(n+1)/A373565(n)`
-/

namespace A303757.P11778629189475779302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081373 (n + 1) : ℚ) / (A373565 n : ℚ)

end

end A303757.P11778629189475779302

/-! ## A303757.P13824272625207826541

`A081373(n+1)-A000035(A171462(n+1))`
-/

namespace A303757.P13824272625207826541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (n + 1) - A000035 (A171462 (n + 1)).toNat

end

end A303757.P13824272625207826541

/-! ## A303757.P8190155015486283870

`∏{e}[A006530(A000010(n+1)), A081373(n*#+1)]`
-/

namespace A303757.P8190155015486283870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A081373 (n * Nat.factorization (f1 n).natAbs p + 1)

end

end A303757.P8190155015486283870

/-! ## A303757.P18038003302507783986

`A081373(n+1)+A303758(n+1)-A303756(n+1)`
-/

namespace A303757.P18038003302507783986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (n + 1) + (A303758 (n + 1) - A303756 (n + 1))

end

end A303757.P18038003302507783986

/-! ## A303757.P10259525549067185729

`A081373(n+1)/A081373(A008578(n+1))`
-/

namespace A303757.P10259525549067185729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081373 (n + 1) : ℚ) / (A081373 (A008578 (n + 1)).toNat : ℚ)

end

end A303757.P10259525549067185729

/-! ## A303757.P451857143183143714

`A081373(n+1)/A081373(record[A006530(n+1)])`
-/

namespace A303757.P451857143183143714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081373 (n + 1) : ℚ) / (A081373 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ)

end

end A303757.P451857143183143714

/-! ## A303757.P13740765341978797097

`A081373(n+1)/A081373(A073582(n+1)/2)`
-/

namespace A303757.P13740765341978797097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081373 (n + 1) : ℚ) / (A081373 (SequenceMachineLib.roundAway ((A073582 (n + 1) : ℚ) / 2)).toNat : ℚ)

end

end A303757.P13740765341978797097

/-! ## A303757.P3165746672492313597

`A081373(n+1)/A331182(A000040(n+1))`
-/

namespace A303757.P3165746672492313597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081373 (n + 1) : ℚ) / (A331182 (A000040 (n + 1)).toNat : ℚ)

end

end A303757.P3165746672492313597

/-! ## A303757.P652410384456014573

`A081373(A028242(2*n))-char[1]`
-/

namespace A303757.P652410384456014573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (A028242 (2 * n)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303757.P652410384456014573

/-! ## A303757.P15703037916629370125

`A081373(n+1)/A014963(A073582(n+1))`
-/

namespace A303757.P15703037916629370125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081373 (n + 1) : ℚ) / (A014963 (A073582 (n + 1)).toNat : ℚ)

end

end A303757.P15703037916629370125

/-! ## A303757.P13660944511998382436

`gcd(A081373(n+1), A356547(n))`
-/

namespace A303757.P13660944511998382436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081373 (n + 1)) (A356547 n)

end

end A303757.P13660944511998382436

/-! ## A303757.P6704456271551579384

`A081373(n+1)/A081373(A006530(n²+1))`
-/

namespace A303757.P6704456271551579384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081373 (n + 1) : ℚ) / (A081373 (A006530 (n ^ 2 + 1)).toNat : ℚ)

end

end A303757.P6704456271551579384

/-! ## A303757.P18223785487843902945

`gcd(A073618(n), A081373(n+1))`
-/

namespace A303757.P18223785487843902945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073618 n) (A081373 (n + 1))

end

end A303757.P18223785487843902945

/-! ## A303757.P17247462156194274446

`gcd(A003418(n), A081373(n+1))`
-/

namespace A303757.P17247462156194274446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 n) (A081373 (n + 1))

end

end A303757.P17247462156194274446

/-!
# A303758: a(1) = 1 and for n > 1, a(n) = number of values of k, 2 <= k <= n, with A002322(k) = A002322(n), where A002322 is Carmichael lambda.

The programs for A303758, there is no canonical definition to state claims against.
-/

/-! ## A303758.P1162407106952504488

`A303756(n+1)-char[1]`
-/

namespace A303758.P1162407106952504488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303756 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303758.P1162407106952504488

/-! ## A303758.P3652310720924171942

`A303756(C(n, C(3, n)+1)+1)`
-/

namespace A303758.P3652310720924171942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303756 (Nat.choose n (Nat.choose 3 n + 1) + 1)

end

end A303758.P3652310720924171942

/-! ## A303758.P13257544666318652931

`A303756(A005451(n+1))`
-/

namespace A303758.P13257544666318652931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303756 (A005451 (n + 1)).toNat

end

end A303758.P13257544666318652931

/-! ## A303758.P956304693784640998

`A303756(A135684(n+1))`
-/

namespace A303758.P956304693784640998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303756 (A135684 (n + 1)).toNat

end

end A303758.P956304693784640998

/-! ## A303758.P18114699126547915763

`A303756(A171526(n+1))`
-/

namespace A303758.P18114699126547915763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303756 (A171526 (n + 1)).toNat

end

end A303758.P18114699126547915763

/-! ## A303758.P16234575926031882230

`A303756(A373565(n)+n)`
-/

namespace A303758.P16234575926031882230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303756 (A373565 n + (n : ℤ)).toNat

end

end A303758.P16234575926031882230

/-! ## A303758.P11947287538268733499

`A303756(A063524(n)+1+n)`
-/

namespace A303758.P11947287538268733499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303756 (A063524 n + 1 + (n : ℤ)).toNat

end

end A303758.P11947287538268733499

/-! ## A303758.P17613491506748338245

`A303756(A159075(n)+1+n)`
-/

namespace A303758.P17613491506748338245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303756 (A159075 n + 1 + (n : ℤ)).toNat

end

end A303758.P17613491506748338245

/-! ## A303758.P3191397801929091542

`A303756(1-(A063524(n)-n))`
-/

namespace A303758.P3191397801929091542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303756 (1 - (A063524 n - (n : ℤ))).toNat

end

end A303758.P3191397801929091542

/-! ## A303758.P11601686013159219766

`A303756(1-(A159075(n)-n))`
-/

namespace A303758.P11601686013159219766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303756 (1 - (A159075 n - (n : ℤ))).toNat

end

end A303758.P11601686013159219766

/-! ## A303758.P12014484107206436156

`A303756(A081373(n+1)/A303757(n+1)+n)`
-/

namespace A303758.P12014484107206436156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303756 (SequenceMachineLib.roundAway ((A081373 (n + 1) : ℚ) / (A303757 (n + 1) : ℚ) + (n : ℚ))).toNat

end

end A303758.P12014484107206436156

/-! ## A303758.P1199330936673795772

`∏{e}[A006530(A000010(n+1)), A303756(n*#+1)]`
-/

namespace A303758.P1199330936673795772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A303756 (n * Nat.factorization (f1 n).natAbs p + 1)

end

end A303758.P1199330936673795772

/-! ## A303758.P905880341625442311

`A303757(n+1)+A303756(n+1)-A081373(n+1)`
-/

namespace A303758.P905880341625442311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303757 (n + 1) + (A303756 (n + 1) - A081373 (n + 1))

end

end A303758.P905880341625442311

/-! ## A303758.P10652764900691940773

`A303756(A096457(n+1))`
-/

namespace A303758.P10652764900691940773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303756 (A096457 (n + 1)).toNat

end

end A303758.P10652764900691940773

/-! ## A303758.P238011258856007200

`A303756(A096458(n+1))`
-/

namespace A303758.P238011258856007200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303756 (A096458 (n + 1)).toNat

end

end A303758.P238011258856007200

/-! ## A303758.P1700031823641141813

`gcd(A051549(n), A303756(n+1))`
-/

namespace A303758.P1700031823641141813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051549 n) (A303756 (n + 1))

end

end A303758.P1700031823641141813

/-! ## A303758.P37503963636149141

`gcd(A003418(n), A303756(n+1))`
-/

namespace A303758.P37503963636149141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 n) (A303756 (n + 1))

end

end A303758.P37503963636149141

/-! ## A303758.P17585547508803773025

`A303756(A303757(A081375(n+1)))`
-/

namespace A303758.P17585547508803773025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303756 (A303757 (A081375 (n + 1)).toNat).toNat

end

end A303758.P17585547508803773025

/-!
# A303759: Number of times the largest prime power factor of n (A034699) is largest prime power factor for numbers <= n; a(1) = 1.

The programs for A303759, there is no canonical definition to state claims against.
-/

/-! ## A303759.P15571593554416971620

`A336816(n+1)+1-A336816(A034699(n+1))`
-/

namespace A303759.P15571593554416971620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336816 (n + 1) + (1 - A336816 (A034699 (n + 1)).toNat)

end

end A303759.P15571593554416971620

/-! ## A303759.P10211478332486104370

`ceil(A160755(n+1)/A000203(A034699(n+1)))`
-/

namespace A303759.P10211478332486104370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A160755 (n + 1) : ℚ) / (A000203 (A034699 (n + 1)).toNat : ℚ)⌉

end

end A303759.P10211478332486104370

/-! ## A303759.P10901320579672960183

`A178487(A324291(n+1)^3)`
-/

namespace A303759.P10901320579672960183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A324291 (n + 1) ^ 3).toNat

end

end A303759.P10901320579672960183

/-! ## A303759.P16309667353081209457

`A209082(A324291(n+1)+1)-1`
-/

namespace A303759.P16309667353081209457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209082 (A324291 (n + 1) + 1).toNat - 1

end

end A303759.P16309667353081209457

/-! ## A303759.P2823731785291846695

`A178487(A324291(n+1)²*A324291(n+1))`
-/

namespace A303759.P2823731785291846695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A324291 (n + 1) ^ 2 * A324291 (n + 1)).toNat

end

end A303759.P2823731785291846695

/-!
# A303760: Divisor-or-multiple permutation of squarefree numbers: a(0) = 1, and for n >= 1, a(n) is either the least divisor of a(n-1) not already present in the sequence, or (if all divisors already used), a(n-1) * {the least prime p such that p does not divide a(n-1) and p*a(n-1) is not already present}.

The programs for A303760, there is no canonical definition to state claims against.
-/

/-! ## A303760.P7881846110366238676

`A019565(A303767(n))`
-/

namespace A303760.P7881846110366238676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A303767 n).toNat

end

end A303760.P7881846110366238676

/-! ## A303760.P18200493242690067520

`A019565(A052331(A303771(n)))`
-/

namespace A303760.P18200493242690067520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A052331 (A303771 n).toNat).toNat

end

end A303760.P18200493242690067520

/-! ## A303760.P10101689884574841795

`A302033(A006068(A303767(n))%A283477(n))`
-/

namespace A303760.P10101689884574841795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302033 (Int.tmod (A006068 (A303767 n).toNat) (A283477 n)).toNat

end

end A303760.P10101689884574841795

/-! ## A303760.P17256922310584830754

`A332462(A366260(n))`
-/

namespace A303760.P17256922310584830754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332462 (A366260 n).toNat

end

end A303760.P17256922310584830754

/-! ## A303760.P17655063816798870310

`A304537(A304534(A303767(A304534(A304533(n)))))`
-/

namespace A303760.P17655063816798870310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 (A304534 (A303767 (A304534 (A304533 n).toNat).toNat).toNat).toNat

end

end A303760.P17655063816798870310

/-! ## A303760.P5159504842246773250

`A160102(A303771(n))`
-/

namespace A303760.P5159504842246773250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A303771 n).toNat

end

end A303760.P5159504842246773250

/-! ## A303760.P8016424149780578923

`A303778(A303776(A303767(A303774(A303773(n)))))`
-/

namespace A303760.P8016424149780578923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 (A303776 (A303767 (A303774 (A303773 n).toNat).toNat).toNat).toNat

end

end A303760.P8016424149780578923

/-! ## A303760.P14570259332683480555

`A303778(A303776(A303767(A303776(A303775(n)))))`
-/

namespace A303760.P14570259332683480555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 (A303776 (A303767 (A303776 (A303775 n).toNat).toNat).toNat).toNat

end

end A303760.P14570259332683480555

/-!
# A303761: Divisor-or-multiple permutation of squarefree numbers: a(0) = 1, and for n >= 1, a(n) is either the least divisor of a(n-1) not already present, or (if all divisors already used), a(n) is obtained by iterating the map x -> x*A053669(x), starting from x = a(n-1), until x is found which is not already present in the sequence.

The programs for A303761, there is no canonical definition to state claims against.
-/

/-! ## A303761.P9983797265251497529

`A019565(A303765(n))`
-/

namespace A303761.P9983797265251497529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A303765 n).toNat

end

end A303761.P9983797265251497529

/-! ## A303761.P7997225749913213211

`A303770(A303774(A303765(A303774(A303773(n)))))`
-/

namespace A303761.P7997225749913213211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 (A303774 (A303765 (A303774 (A303773 n).toNat).toNat).toNat).toNat

end

end A303761.P7997225749913213211

/-! ## A303761.P12385217775745517146

`A293442(2^A303765(n))`
-/

namespace A303761.P12385217775745517146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A303765 n : ℤ))).toNat

end

end A303761.P12385217775745517146

/-! ## A303761.P16810133816790576870

`A284003(A013939(n+1)%A090548(3*n+2))`
-/

namespace A303761.P16810133816790576870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284003 (Int.tmod (A013939 (n + 1)) (A090548 (3 * n + 2))).toNat

end

end A303761.P16810133816790576870

/-!
# A303762: a(0) = 1, and for n >= 1, a(n) is either the largest divisor of a(n-1) not already present in the sequence, or (if all divisors already used), a(n-1) * {the least prime p such that p does not divide a(n-1) and p*a(n-1) is not already present}.

The programs for A303762, there is no canonical definition to state claims against.
-/

/-! ## A303762.P14411795971927660016

`A019565(A303769(n))`
-/

namespace A303762.P14411795971927660016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A303769 n).toNat

end

end A303762.P14411795971927660016

/-! ## A303762.P4131971220554108928

`A054842(A304749(n))`
-/

namespace A303762.P4131971220554108928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (A304749 n).toNat

end

end A303762.P4131971220554108928

/-! ## A303762.P15301056791984489815

`A293442(2^A303769(n))`
-/

namespace A303762.P15301056791984489815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A303769 n : ℤ))).toNat

end

end A303762.P15301056791984489815

/-! ## A303762.P2784763130593524771

`A303778(n)%A234712(A002522(n))`
-/

namespace A303762.P2784763130593524771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303778 n) (A234712 (A002522 n).toNat)

end

end A303762.P2784763130593524771

/-! ## A303762.P13365725196338403880

`A303778(A062399(n))`
-/

namespace A303762.P13365725196338403880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 (A062399 n).toNat

end

end A303762.P13365725196338403880

/-!
# A303764: Inverse permutation to A303763.

The programs for A303764, there is no canonical definition to state claims against.
-/

/-! ## A303764.P8643713569770293536

`A217122(n+1)-A036987(A071333(n+1))`
-/

namespace A303764.P8643713569770293536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217122 (n + 1) - A036987 (A071333 (n + 1)).toNat

end

end A303764.P8643713569770293536

/-! ## A303764.P10280594832899730747

`A217122(A187829(n+1))-A015166(A006463(n))`
-/

namespace A303764.P10280594832899730747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217122 (A187829 (n + 1)).toNat - A015166 (A006463 n).toNat

end

end A303764.P10280594832899730747

/-! ## A303764.P10286337029528455348

`A217122(n+1)-A036987(A052403(n+1))`
-/

namespace A303764.P10286337029528455348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217122 (n + 1) - A036987 (A052403 (n + 1)).toNat

end

end A303764.P10286337029528455348

/-! ## A303764.P7172279559330752188

`A217122(n+1)-A000122(A217154(n+1))`
-/

namespace A303764.P7172279559330752188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217122 (n + 1) - A000122 (A217154 (n + 1)).toNat

end

end A303764.P7172279559330752188

/-!
# A303765: Permutation of nonnegative integers: a(n) = A048675(A303761(n)); see comments for an equivalent alternative description.

The programs for A303765, there is no canonical definition to state claims against.
-/

/-! ## A303765.P15604196349840269733

`A048675(A303761(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A303765.P15604196349840269733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A303761 n).toNat

end

end A303765.P15604196349840269733

/-! ## A303765.P2148745852812837426

`∑{p}[A303761(n), A048676(#)]`
-/

namespace A303765.P2148745852812837426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048676 p

end

end A303765.P2148745852812837426

/-! ## A303765.P2206010387007176075

`∑{p}[A303761(n), A087207(#)]`
-/

namespace A303765.P2206010387007176075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p

end

end A303765.P2206010387007176075

/-! ## A303765.P1904702290798851449

`∑{p}[A303761(n), A112479(#)]`
-/

namespace A303765.P1904702290798851449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A112479 p

end

end A303765.P1904702290798851449

/-! ## A303765.P13008431730746186749

`∑{p}[A303761(n), A156552(#)]`
-/

namespace A303765.P13008431730746186749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A303765.P13008431730746186749

/-!
# A303767: May code of n: a(0) = 0, and for n > 0, if n = 2^k, a(n) = n + a(n-1), otherwise, when n = 2^k + r (with 0 < r < 2^k), then a(n) = 2^k + a(r-1); see comments for equivalent alternative descriptions.

The programs for A303767, there is no canonical definition to state claims against.
-/

/-! ## A303767.P10540119972253815947

`A052331(A303771(n))`
-/

namespace A303767.P10540119972253815947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052331 (A303771 n).toNat

end

end A303767.P10540119972253815947

/-! ## A303767.P17795051625458804772

`A048675(A303760(n))`
-/

namespace A303767.P17795051625458804772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A303760 n).toNat

end

end A303767.P17795051625458804772

/-! ## A303767.P7854917882657257194

`A370790(A153151(n))`
-/

namespace A303767.P7854917882657257194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370790 (A153151 n).toNat

end

end A303767.P7854917882657257194

/-! ## A303767.P11837824607613625369

`∑{p}[A303760(n), A048676(#)]`
-/

namespace A303767.P11837824607613625369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048676 p

end

end A303767.P11837824607613625369

/-! ## A303767.P13617758666800056572

`∑{p}[A303760(n), A087207(#)]`
-/

namespace A303767.P13617758666800056572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p

end

end A303767.P13617758666800056572

/-! ## A303767.P15687584922288185562

`∑{p}[A303760(n), A112479(#)]`
-/

namespace A303767.P15687584922288185562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A112479 p

end

end A303767.P15687584922288185562

/-! ## A303767.P1696616516694216303

`∑{p}[A303760(n), A156552(#)]`
-/

namespace A303767.P1696616516694216303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A303767.P1696616516694216303

/-! ## A303767.P5373619888642290149

`∑{p}[A303760(n), A162474(#)]`
-/

namespace A303767.P5373619888642290149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A162474 p

end

end A303767.P5373619888642290149

/-! ## A303767.P13093186669746329140

`∑{p}[A303760(n), A233249(#)]`
-/

namespace A303767.P13093186669746329140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A233249 p

end

end A303767.P13093186669746329140

/-! ## A303767.P12435667138085042498

`∑{p}[A303760(n), A248663(#)]`
-/

namespace A303767.P12435667138085042498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A248663 p

end

end A303767.P12435667138085042498

/-! ## A303767.P17655122338198309118

`∑{p}[A303760(n), A252754(#)]`
-/

namespace A303767.P17655122338198309118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A252754 p

end

end A303767.P17655122338198309118

/-! ## A303767.P13524613393871918495

`∑{p}[A303760(n), A277333(#)]`
-/

namespace A303767.P13524613393871918495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A277333 p

end

end A303767.P13524613393871918495

/-! ## A303767.P2338226714362366764

`∑{p}[A303760(n), A285330(#)]`
-/

namespace A303767.P2338226714362366764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A285330 p

end

end A303767.P2338226714362366764

/-! ## A303767.P15962146235269125333

`∑{p}[A303760(n), A297108(#)]`
-/

namespace A303767.P15962146235269125333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A297108 p

end

end A303767.P15962146235269125333

/-! ## A303767.P18425345898775351686

`∑{p}[A303760(n), A331740(#)]`
-/

namespace A303767.P18425345898775351686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A331740 p

end

end A303767.P18425345898775351686

/-! ## A303767.P6320028617825437363

`∑{p}[A303760(n), A334871(#)]`
-/

namespace A303767.P6320028617825437363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A334871 p

end

end A303767.P6320028617825437363

/-!
# A303768: Inverse permutation to A303767.

The programs for A303768, the canonical program `A303768.P18072890022727355273` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303768 has offset 0).

The definition of A303768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303768.P18072890022727355273

`or(a(n%A053644(n))+1, A053644(n))` with `a(0)=0`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A303768

/-- `or(a(n%A053644(n))+1, A053644(n))` -/
def P18072890022727355273.Spec : Prop :=
  ∀ n, P18072890022727355273.a n = A303768 n

theorem P18072890022727355273.correct : P18072890022727355273.Spec := by
  intro n
  simp only [A303768]

end A303768

/-! ## A303768.P16295407165053017496

`A153152(A370791(n))`
-/

namespace A303768.P16295407165053017496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A370791 n).toNat

end

end A303768.P16295407165053017496

namespace A303768

/-- `A153152(A370791(n))` -/
def P16295407165053017496.Spec : Prop :=
  ∀ n, P16295407165053017496.a n = A303768 n

end A303768

/-! ## A303768.P12454788926844959005

`A303772(A052330(n))`
-/

namespace A303768.P12454788926844959005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303772 (A052330 n).toNat

end

end A303768.P12454788926844959005

namespace A303768

/-- `A303772(A052330(n))` -/
def P12454788926844959005.Spec : Prop :=
  ∀ n, P12454788926844959005.a n = A303768 n

end A303768

/-! ## A303768.P449487052481664876

`A303772(A059900(n))`
-/

namespace A303768.P449487052481664876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303772 (A059900 n).toNat

end

end A303768.P449487052481664876

namespace A303768

/-- `A303772(A059900(n))` -/
def P449487052481664876.Spec : Prop :=
  ∀ n, P449487052481664876.a n = A303768 n

end A303768

/-! ## A303768.P852325145345449281

`A303772(A121663(n))`
-/

namespace A303768.P852325145345449281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303772 (A121663 n).toNat

end

end A303768.P852325145345449281

namespace A303768

/-- `A303772(A121663(n))` -/
def P852325145345449281.Spec : Prop :=
  ∀ n, P852325145345449281.a n = A303768 n

end A303768

/-!
# A303769: a(0) = 0, a(n+1) is either the largest number obtained from a(n) by toggling a single 1-bit off (to 0) if no such number is yet in the sequence, otherwise the least number not yet in sequence that can be obtained from a(n) by toggling a single 0-bit on (to 1). In both cases the bit to be toggled is the rightmost possible that results yet an unencountered number.

The programs for A303769, there is no canonical definition to state claims against.
-/

/-! ## A303769.P10110149784099400124

`∑{p}[A303762(n), A048675(#)]`
-/

namespace A303769.P10110149784099400124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A303769.P10110149784099400124

/-! ## A303769.P12765841058619029625

`∑{p}[A303762(n), A048676(#)]`
-/

namespace A303769.P12765841058619029625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048676 p

end

end A303769.P12765841058619029625

/-! ## A303769.P5505128889161019065

`∑{p}[A303762(n), A087207(#)]`
-/

namespace A303769.P5505128889161019065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p

end

end A303769.P5505128889161019065

/-! ## A303769.P16806443046372160301

`∑{p}[A303762(n), A112479(#)]`
-/

namespace A303769.P16806443046372160301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A112479 p

end

end A303769.P16806443046372160301

/-! ## A303769.P9697993045219723411

`∑{p}[A303762(n), A156552(#)]`
-/

namespace A303769.P9697993045219723411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A303769.P9697993045219723411

/-! ## A303769.P984488111166622711

`∑{p}[A303762(n), A162474(#)]`
-/

namespace A303769.P984488111166622711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A162474 p

end

end A303769.P984488111166622711

/-! ## A303769.P4339352335547855548

`∑{p}[A303762(n), A233249(#)]`
-/

namespace A303769.P4339352335547855548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A233249 p

end

end A303769.P4339352335547855548

/-! ## A303769.P7404289539207396599

`∑{p}[A303762(n), A248663(#)]`
-/

namespace A303769.P7404289539207396599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A248663 p

end

end A303769.P7404289539207396599

/-! ## A303769.P18360947803841202444

`∑{p}[A303762(n), A252754(#)]`
-/

namespace A303769.P18360947803841202444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A252754 p

end

end A303769.P18360947803841202444

/-! ## A303769.P12840826420336979865

`∑{p}[A303762(n), A277333(#)]`
-/

namespace A303769.P12840826420336979865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A277333 p

end

end A303769.P12840826420336979865

/-! ## A303769.P13751104915630627319

`∑{p}[A303762(n), A285330(#)]`
-/

namespace A303769.P13751104915630627319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A285330 p

end

end A303769.P13751104915630627319

/-! ## A303769.P11554898546277700634

`∑{p}[A303762(n), A331740(#)]`
-/

namespace A303769.P11554898546277700634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A331740 p

end

end A303769.P11554898546277700634

/-! ## A303769.P4263406973973744435

`∑{p}[A303762(n), A334871(#)]`
-/

namespace A303769.P4263406973973744435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A334871 p

end

end A303769.P4263406973973744435

/-!
# A303770: Divisor-or-multiple permutation of squarefree numbers: a(n) = A019565(A303773(n)).

The programs for A303770, there is no canonical definition to state claims against.
-/

/-! ## A303770.P18040322910686537346

`A019565(A303773(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A303770.P18040322910686537346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A303773 n).toNat

end

end A303770.P18040322910686537346

/-! ## A303770.P13192064939626207542

`A293442(2^A303773(n))`
-/

namespace A303770.P13192064939626207542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A303773 n : ℤ))).toNat

end

end A303770.P13192064939626207542

/-! ## A303770.P3979038972038550710

`A330919(A134841(∑[n]))`
-/

namespace A303770.P3979038972038550710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330919 (A134841 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A303770.P3979038972038550710

/-! ## A303770.P13782243255144774511

`A330919(A062399(n+1))`
-/

namespace A303770.P13782243255144774511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330919 (A062399 (n + 1)).toNat

end

end A303770.P13782243255144774511

/-! ## A303770.P12186505990926214690

`A330919(A351870(n+1))`
-/

namespace A303770.P12186505990926214690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330919 (A351870 (n + 1)).toNat

end

end A303770.P12186505990926214690

/-!
# A303771: Divisor-or-multiple permutation of natural numbers, "Fermi-Dirac piano played with May code": a(n) = A052330(A303767(n)).

The programs for A303771, there is no canonical definition to state claims against.
-/

/-! ## A303771.P13970965942913304873

`A052330(A303767(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A303771.P13970965942913304873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (A303767 n).toNat

end

end A303771.P13970965942913304873

/-! ## A303771.P11312082683832722865

`A052330(A048675(A303760(n)))`
-/

namespace A303771.P11312082683832722865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (A048675 (A303760 n).toNat).toNat

end

end A303771.P11312082683832722865

/-! ## A303771.P2771703337058797363

`A302783(A003188(A303767(n))%A283477(n))`
-/

namespace A303771.P2771703337058797363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302783 (Int.tmod (A003188 (A303767 n).toNat) (A283477 n)).toNat

end

end A303771.P2771703337058797363

/-! ## A303771.P14225066879919724230

`A207901(A006068(A303767(n)%A283477(n)))`
-/

namespace A303771.P14225066879919724230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207901 (A006068 (Int.tmod (A303767 n) (A283477 n)).toNat).toNat

end

end A303771.P14225066879919724230

/-! ## A303771.P12088112579630584384

`A207901(A006068(A303767(A057300(A057300(n)))))`
-/

namespace A303771.P12088112579630584384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207901 (A006068 (A303767 (A057300 (A057300 n).toNat).toNat).toNat).toNat

end

end A303771.P12088112579630584384

/-! ## A303771.P12655862240274027676

`A207901(A006068(A303767(A300839(A300838(n)))))`
-/

namespace A303771.P12655862240274027676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207901 (A006068 (A303767 (A300839 (A300838 n).toNat).toNat).toNat).toNat

end

end A303771.P12655862240274027676

/-! ## A303771.P14167818413090982161

`A302023(A366260(n))`
-/

namespace A303771.P14167818413090982161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302023 (A366260 n).toNat

end

end A303771.P14167818413090982161

/-! ## A303771.P6373008170859761268

`∏{p}[A303760(n), A302023(#)]`
-/

namespace A303771.P6373008170859761268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A302023 p

end

end A303771.P6373008170859761268

/-!
# A303772: Inverse of A303771.

The programs for A303772, there is no canonical definition to state claims against.
-/

/-! ## A303772.P3222345656988633170

`A303768(A052331(n+1))`
-/

namespace A303772.P3222345656988633170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303768 (A052331 (n + 1)).toNat

end

end A303772.P3222345656988633170

/-! ## A303772.P11793251504507959789

`A303768(A064358(n+1)-1)`
-/

namespace A303772.P11793251504507959789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303768 (A064358 (n + 1) - 1).toNat

end

end A303772.P11793251504507959789

/-! ## A303772.P978434327451597505

`A303768(∑{d}[A160102(n+1), A297108(#)])`
-/

namespace A303772.P978434327451597505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303768 (∑ d ∈ Nat.divisors (f1 n).natAbs, A297108 d).toNat

end

end A303772.P978434327451597505

/-! ## A303772.P5120769078196963721

`A303768(∑{p}[A160102(n+1), A048675(#)])`
-/

namespace A303772.P5120769078196963721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303768 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p).toNat

end

end A303772.P5120769078196963721

/-! ## A303772.P14795230688699487662

`A303768(∑{p}[A160102(n+1), A087207(#)])`
-/

namespace A303772.P14795230688699487662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303768 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p).toNat

end

end A303772.P14795230688699487662

/-!
# A303773: Permutation of nonnegative integers constructed with a greedy algorithm producing either-subset-or-superset-mask type of walk in binary lattice (see comments for the exact definition).

The programs for A303773, there is no canonical definition to state claims against.
-/

/-! ## A303773.P3255249300999774978

`∑{p}[A303770(n), A048675(#)]`
-/

namespace A303773.P3255249300999774978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A303773.P3255249300999774978

/-! ## A303773.P9628286873327254659

`∑{p}[A303770(n), A048676(#)]`
-/

namespace A303773.P9628286873327254659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048676 p

end

end A303773.P9628286873327254659

/-! ## A303773.P8281877478224042731

`∑{p}[A303770(n), A087207(#)]`
-/

namespace A303773.P8281877478224042731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p

end

end A303773.P8281877478224042731

/-! ## A303773.P11253720693688176175

`∑{p}[A303770(n), A112479(#)]`
-/

namespace A303773.P11253720693688176175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A112479 p

end

end A303773.P11253720693688176175

/-! ## A303773.P5172030178355419234

`∑{p}[A303770(n), A156552(#)]`
-/

namespace A303773.P5172030178355419234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A303773.P5172030178355419234

/-! ## A303773.P7269717648443025488

`∑{p}[A303770(n), A162474(#)]`
-/

namespace A303773.P7269717648443025488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A162474 p

end

end A303773.P7269717648443025488

/-! ## A303773.P2092805957675477844

`∑{p}[A303770(n), A233249(#)]`
-/

namespace A303773.P2092805957675477844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A233249 p

end

end A303773.P2092805957675477844

/-! ## A303773.P13224669164121402034

`∑{p}[A303770(n), A248663(#)]`
-/

namespace A303773.P13224669164121402034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A248663 p

end

end A303773.P13224669164121402034

/-! ## A303773.P14764995730320507587

`∑{p}[A303770(n), A277333(#)]`
-/

namespace A303773.P14764995730320507587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A277333 p

end

end A303773.P14764995730320507587

/-! ## A303773.P510697265091023645

`∑{p}[A303770(n), A285330(#)]`
-/

namespace A303773.P510697265091023645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A285330 p

end

end A303773.P510697265091023645

/-! ## A303773.P2881507945446443878

`∑{p}[A303770(n), A297108(#)]`
-/

namespace A303773.P2881507945446443878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A297108 p

end

end A303773.P2881507945446443878

/-!
# A303775: Permutation of nonnegative integers: Minimal subset/superset bitmask transform of Blue code, A193231.

The programs for A303775, there is no canonical definition to state claims against.
-/

/-! ## A303775.P15314636541185704250

`∑{p}[A303778(n), A048675(#)]`
-/

namespace A303775.P15314636541185704250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A303775.P15314636541185704250

/-! ## A303775.P3450064345355367322

`∑{p}[A303778(n), A048676(#)]`
-/

namespace A303775.P3450064345355367322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048676 p

end

end A303775.P3450064345355367322

/-! ## A303775.P5045230743035158297

`∑{p}[A303778(n), A087207(#)]`
-/

namespace A303775.P5045230743035158297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p

end

end A303775.P5045230743035158297

/-! ## A303775.P4727564325723713643

`∑{p}[A303778(n), A112479(#)]`
-/

namespace A303775.P4727564325723713643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A112479 p

end

end A303775.P4727564325723713643

/-! ## A303775.P3249043579740226290

`∑{p}[A303778(n), A156552(#)]`
-/

namespace A303775.P3249043579740226290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A303775.P3249043579740226290

/-! ## A303775.P2394541511695643947

`∑{p}[A303778(n), A162474(#)]`
-/

namespace A303775.P2394541511695643947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A162474 p

end

end A303775.P2394541511695643947

/-! ## A303775.P17382933746581700306

`∑{p}[A303778(n), A233249(#)]`
-/

namespace A303775.P17382933746581700306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A233249 p

end

end A303775.P17382933746581700306

/-! ## A303775.P5761224210640038102

`∑{p}[A303778(n), A248663(#)]`
-/

namespace A303775.P5761224210640038102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A248663 p

end

end A303775.P5761224210640038102

/-! ## A303775.P7392807013678785945

`∑{p}[A303778(n), A277333(#)]`
-/

namespace A303775.P7392807013678785945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A277333 p

end

end A303775.P7392807013678785945

/-! ## A303775.P15472875726092023053

`∑{p}[A303778(n), A331740(#)]`
-/

namespace A303775.P15472875726092023053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A331740 p

end

end A303775.P15472875726092023053

/-! ## A303775.P14320955176626232877

`∑{p}[A303778(n), A335426(#)]`
-/

namespace A303775.P14320955176626232877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A335426 p

end

end A303775.P14320955176626232877

/-!
# A303777: Ordinal transform of A081373; ordinal transform of {the ordinal transform of A000010}.

The programs for A303777, there is no canonical definition to state claims against.
-/

/-! ## A303777.P5123403407422060748

`A064839(A101296(n+1))*A241919(A233583(n+2)^A003557(n+2))`
-/

namespace A303777.P5123403407422060748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (A101296 (n + 1)).toNat * A241919 (SequenceMachineLib.roundAway ((A233583 (n + 2) : ℚ) ^ (A003557 (n + 2) : ℤ))).toNat

end

end A303777.P5123403407422060748

/-! ## A303777.P1347418444339961066

`A086161(n+2)-A191372(A097331(n))`
-/

namespace A303777.P1347418444339961066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (n + 2) - A191372 (A097331 n).toNat

end

end A303777.P1347418444339961066

/-! ## A303777.P15572975678253380264

`A286610(n+1)-A025439(A046464(n+1))`
-/

namespace A303777.P15572975678253380264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286610 (n + 1) - A025439 (A046464 (n + 1)).toNat

end

end A303777.P15572975678253380264

/-! ## A303777.P13784495364956846875

`A002376(A304117(n+1)^A302044(n+1))`
-/

namespace A303777.P13784495364956846875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (SequenceMachineLib.roundAway ((A304117 (n + 1) : ℚ) ^ (A302044 (n + 1) : ℤ))).toNat

end

end A303777.P13784495364956846875

/-! ## A303777.P492809450117547593

`gcd(A056239(n+1), A333755(A250277(n+1)))`
-/

namespace A303777.P492809450117547593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056239 (n + 1)) (A333755 (A250277 (n + 1)).toNat)

end

end A303777.P492809450117547593

/-!
# A303778: Divisor-or-multiple permutation of squarefree numbers: a(n) = A019565(A303775(n)).

The programs for A303778, there is no canonical definition to state claims against.
-/

/-! ## A303778.P11986619172003874477

`A019565(A303775(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A303778.P11986619172003874477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A303775 n).toNat

end

end A303778.P11986619172003874477

/-! ## A303778.P18249997667968932397

`A339809(A303775(n))+A020985(n)²`
-/

namespace A303778.P18249997667968932397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (A303775 n).toNat + A020985 n ^ 2

end

end A303778.P18249997667968932397

/-! ## A303778.P1659462613068655329

`A339809(A303775(n))%A060103(n)+1`
-/

namespace A303778.P1659462613068655329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339809 (A303775 n).toNat) (A060103 n) + 1

end

end A303778.P1659462613068655329

/-! ## A303778.P16056481227354593956

`(A339809(A303775(n))+1)%A197605(n+1)`
-/

namespace A303778.P16056481227354593956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339809 (A303775 n).toNat + 1) (A197605 (n + 1))

end

end A303778.P16056481227354593956

/-! ## A303778.P10081765834557196478

`A339809(A303775(n))+(A005408(n)+n)%3`
-/

namespace A303778.P10081765834557196478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (A303775 n).toNat + Int.tmod (A005408 n + (n : ℤ)) 3

end

end A303778.P10081765834557196478

/-! ## A303778.P17968815330627083406

`A339809(A303775(n))-A008683(A056608(n+1))`
-/

namespace A303778.P17968815330627083406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (A303775 n).toNat - A008683 (A056608 (n + 1)).toNat

end

end A303778.P17968815330627083406

/-! ## A303778.P1937444423252481797

`A339809(A303775(n))-A008683(A176994(n))`
-/

namespace A303778.P1937444423252481797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (A303775 n).toNat - A008683 (A176994 n).toNat

end

end A303778.P1937444423252481797

/-! ## A303778.P7360928535795952679

`A303770(A303774(A303775(A303774(A303773(n)))))`
-/

namespace A303778.P7360928535795952679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 (A303774 (A303775 (A303774 (A303773 n).toNat).toNat).toNat).toNat

end

end A303778.P7360928535795952679

/-! ## A303778.P13649385044498936386

`A339809(A303775(n))+A014963(6*A085189(n))`
-/

namespace A303778.P13649385044498936386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (A303775 n).toNat + A014963 (6 * A085189 n).toNat

end

end A303778.P13649385044498936386

/-! ## A303778.P11110048520596131443

`A339809(A303775(n))+A088705(A175684(n))`
-/

namespace A303778.P11110048520596131443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (A303775 n).toNat + A088705 (A175684 n).toNat

end

end A303778.P11110048520596131443

/-! ## A303778.P4559447693483181405

`A339809(A303775(n))+A225656(A001316(n))`
-/

namespace A303778.P4559447693483181405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (A303775 n).toNat + A225656 (A001316 n).toNat

end

end A303778.P4559447693483181405

/-!
# A303780: Binary weight of A303775(n).

The programs for A303780, there is no canonical definition to state claims against.
-/

/-! ## A303780.P7068761141640741498

`A000120(A303775(n))`
-/

namespace A303780.P7068761141640741498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A303775 n).toNat

end

end A303780.P7068761141640741498

/-! ## A303780.P9018039907616926780

`A001222(A278222(2*A303775(n)))`
-/

namespace A303780.P9018039907616926780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 (2 * A303775 n).toNat).toNat

end

end A303780.P9018039907616926780

/-! ## A303780.P7284240603368753589

`A001222(A278222(A303775(n)))%A019565(n)`
-/

namespace A303780.P7284240603368753589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A278222 (A303775 n).toNat).toNat) (A019565 n)

end

end A303780.P7284240603368753589

/-! ## A303780.P7644030640525851415

`A001222(A005940(A303775(n)+1))`
-/

namespace A303780.P7644030640525851415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005940 (A303775 n + 1).toNat).toNat

end

end A303780.P7644030640525851415

/-! ## A303780.P7758678260217169132

`A001222(A278222(A303775(n))²)/2`
-/

namespace A303780.P7758678260217169132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A278222 (A303775 n).toNat ^ 2).toNat : ℚ) / 2

end

end A303780.P7758678260217169132

/-! ## A303780.P5587151064947782447

`∑{e}[A303778(n), #]`
-/

namespace A303780.P5587151064947782447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A303780.P5587151064947782447

/-! ## A303780.P13046976021858596085

`∑{p}[A303778(n), A001221(#)]`
-/

namespace A303780.P13046976021858596085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A303780.P13046976021858596085

/-! ## A303780.P17506102775503108463

`∑{p}[A303778(n), A001222(#)]`
-/

namespace A303780.P17506102775503108463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A303780.P17506102775503108463

/-! ## A303780.P4330275857120773625

`∑{p}[A303778(n), A014673(#)]`
-/

namespace A303780.P4330275857120773625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A014673 p

end

end A303780.P4330275857120773625

/-! ## A303780.P17770056362623218990

`∑{p}[A303778(n), A225656(#)]`
-/

namespace A303780.P17770056362623218990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A225656 p

end

end A303780.P17770056362623218990

/-! ## A303780.P187383693511704230

`∑{p}[A303778(n), A002260(A000124(#))]`
-/

namespace A303780.P187383693511704230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A002260 (A000124 p).toNat

end

end A303780.P187383693511704230

/-! ## A303780.P155195146488702402

`∑{p}[A303778(n), A303778(A248663(#²))]`
-/

namespace A303780.P155195146488702402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A303778 (A248663 (p ^ 2)).toNat

end

end A303780.P155195146488702402

/-! ## A303780.P7114044983404558004

`∑{p}[A303778(n), A303778(A277333(#²))]`
-/

namespace A303780.P7114044983404558004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A303778 (A277333 (p ^ 2)).toNat

end

end A303780.P7114044983404558004

/-! ## A303780.P11871187272579616535

`∑{p}[A303778(n), A303778(A335426(#²))]`
-/

namespace A303780.P11871187272579616535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A303778 (A335426 (p ^ 2)).toNat

end

end A303780.P11871187272579616535

/-! ## A303780.P7288312455530640497

`A001222(A303778(n)%∑[A175684(n)])`
-/

namespace A303780.P7288312455530640497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A303778 n) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A303780.P7288312455530640497

/-! ## A303780.P11830670957476198152

`A001221(A303778(n))`
-/

namespace A303780.P11830670957476198152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A303778 n).toNat

end

end A303780.P11830670957476198152

/-!
# A303781: a(2) = 1; for n <> 2, a(n) = gcd(n, A000005(n)), where A000005(n) = number of divisors of n.

The programs for A303781, the canonical program `A303781.P6125466833604398313` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303781 has offset 1).

The definition of A303781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303781.P10320428016948061984

`gcd(char[1]+1+n, ∏{e}[n+1, #+1])`
-/

namespace A303781.P10320428016948061984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

end

end A303781.P10320428016948061984

namespace A303781

/-- `gcd(char[1]+1+n, ∏{e}[n+1, #+1])` -/
def P10320428016948061984.Spec : Prop :=
  ∀ n, (P10320428016948061984.a n : ℤ) = A303781 (n + 1)

end A303781

/-! ## A303781.P5245781392036772553

`A009191(char[1]+1+n)`
-/

namespace A303781.P5245781392036772553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)

end

end A303781.P5245781392036772553

namespace A303781

/-- `A009191(char[1]+1+n)` -/
def P5245781392036772553.Spec : Prop :=
  ∀ n, P5245781392036772553.a n = A303781 (n + 1)

end A303781

/-! ## A303781.P7604204930282116054

`gcd(1-char[1]+n, A000005(n+1))`
-/

namespace A303781.P7604204930282116054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)) (A000005 (n + 1))

end

end A303781.P7604204930282116054

namespace A303781

/-- `gcd(1-char[1]+n, A000005(n+1))` -/
def P7604204930282116054.Spec : Prop :=
  ∀ n, (P7604204930282116054.a n : ℤ) = A303781 (n + 1)

end A303781

/-! ## A303781.P16786485457490152066

`A159075(n)+A009191(n+1)`
-/

namespace A303781.P16786485457490152066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A009191 (n + 1)

end

end A303781.P16786485457490152066

namespace A303781

/-- `A159075(n)+A009191(n+1)` -/
def P16786485457490152066.Spec : Prop :=
  ∀ n, P16786485457490152066.a n = A303781 (n + 1)

end A303781

/-! ## A303781.P6125466833604398313

`A009191(n+1)-A063524(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A303781

/-- `A009191(n+1)-A063524(n)` -/
def P6125466833604398313.Spec : Prop :=
  ∀ n, P6125466833604398313.a n = A303781 (n + 1)

theorem P6125466833604398313.correct : P6125466833604398313.Spec := by
  intro n
  simp only [A303781, Nat.add_sub_cancel]

end A303781

/-! ## A303781.P11544057002159907361

`A009191(n+1)/A373565(n)`
-/

namespace A303781.P11544057002159907361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009191 (n + 1) : ℚ) / (A373565 n : ℚ)

end

end A303781.P11544057002159907361

namespace A303781

/-- `A009191(n+1)/A373565(n)` -/
def P11544057002159907361.Spec : Prop :=
  ∀ n, P11544057002159907361.a n = (A303781 (n + 1) : ℚ)

end A303781

/-! ## A303781.P17662658438277629880

`gcd(A000005(n+1), A153152(n))`
-/

namespace A303781.P17662658438277629880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 1)) (A153152 n)

end

end A303781.P17662658438277629880

namespace A303781

/-- `gcd(A000005(n+1), A153152(n))` -/
def P17662658438277629880.Spec : Prop :=
  ∀ n, (P17662658438277629880.a n : ℤ) = A303781 (n + 1)

end A303781

/-! ## A303781.P4568769498959010982

`gcd(A085926(n), A306671(n+1))`
-/

namespace A303781.P4568769498959010982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085926 n) (A306671 (n + 1))

end

end A303781.P4568769498959010982

namespace A303781

/-- `gcd(A085926(n), A306671(n+1))` -/
def P4568769498959010982.Spec : Prop :=
  ∀ n, (P4568769498959010982.a n : ℤ) = A303781 (n + 1)

end A303781

/-! ## A303781.P8772566069415764489

`gcd(A326178(n), A345741(n+1))`
-/

namespace A303781.P8772566069415764489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326178 n) (A345741 (n + 1))

end

end A303781.P8772566069415764489

namespace A303781

/-- `gcd(A326178(n), A345741(n+1))` -/
def P8772566069415764489.Spec : Prop :=
  ∀ n, (P8772566069415764489.a n : ℤ) = A303781 (n + 1)

end A303781

/-! ## A303781.P1157928980714737677

`gcd(A005451(n+1), A049820(n+1))`
-/

namespace A303781.P1157928980714737677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005451 (n + 1)) (A049820 (n + 1))

end

end A303781.P1157928980714737677

namespace A303781

/-- `gcd(A005451(n+1), A049820(n+1))` -/
def P1157928980714737677.Spec : Prop :=
  ∀ n, (P1157928980714737677.a n : ℤ) = A303781 (n + 1)

end A303781

/-! ## A303781.P8249446013723127418

`gcd(A014683(n+1), A062249(n+1))`
-/

namespace A303781.P8249446013723127418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014683 (n + 1)) (A062249 (n + 1))

end

end A303781.P8249446013723127418

namespace A303781

/-- `gcd(A014683(n+1), A062249(n+1))` -/
def P8249446013723127418.Spec : Prop :=
  ∀ n, (P8249446013723127418.a n : ℤ) = A303781 (n + 1)

end A303781

/-! ## A303781.P9620277653153706893

`gcd(A065998(n+1), A171526(n+1))`
-/

namespace A303781.P9620277653153706893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065998 (n + 1)) (A171526 (n + 1))

end

end A303781.P9620277653153706893

namespace A303781

/-- `gcd(A065998(n+1), A171526(n+1))` -/
def P9620277653153706893.Spec : Prop :=
  ∀ n, (P9620277653153706893.a n : ℤ) = A303781 (n + 1)

end A303781

/-! ## A303781.P1367345318394160657

`gcd(n+1, A306671(A014685(n+1)))`
-/

namespace A303781.P1367345318394160657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A306671 (A014685 (n + 1)).toNat)

end

end A303781.P1367345318394160657

namespace A303781

/-- `gcd(n+1, A306671(A014685(n+1)))` -/
def P1367345318394160657.Spec : Prop :=
  ∀ n, (P1367345318394160657.a n : ℤ) = A303781 (n + 1)

end A303781

/-! ## A303781.P236023017703104666

`gcd(A140482(n+1), A181440(n+1))`
-/

namespace A303781.P236023017703104666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A140482 (n + 1)) (A181440 (n + 1))

end

end A303781.P236023017703104666

namespace A303781

/-- `gcd(A140482(n+1), A181440(n+1))` -/
def P236023017703104666.Spec : Prop :=
  ∀ n, (P236023017703104666.a n : ℤ) = A303781 (n + 1)

end A303781

/-! ## A303781.P1813615404729881376

`gcd(A329484(n+1), A348776(n+1))`
-/

namespace A303781.P1813615404729881376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A329484 (n + 1)) (A348776 (n + 1))

end

end A303781.P1813615404729881376

namespace A303781

/-- `gcd(A329484(n+1), A348776(n+1))` -/
def P1813615404729881376.Spec : Prop :=
  ∀ n, (P1813615404729881376.a n : ℤ) = A303781 (n + 1)

end A303781

/-! ## A303781.P3161925768939428261

`gcd(n*A000005(n+1), (n+1)/A014963(n+1))`
-/

namespace A303781.P3161925768939428261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A000005 (n + 1)) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A014963 (n + 1) : ℚ)))

end

end A303781.P3161925768939428261

namespace A303781

/-- `gcd(n*A000005(n+1), (n+1)/A014963(n+1))` -/
def P3161925768939428261.Spec : Prop :=
  ∀ n, (P3161925768939428261.a n : ℤ) = A303781 (n + 1)

end A303781

/-! ## A303781.P3072052957506872574

`A009191(n+1)-A129950(A009191(n+1))*A129950(n+1)`
-/

namespace A303781.P3072052957506872574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 (n + 1) - A129950 (A009191 (n + 1)).toNat * A129950 (n + 1)

end

end A303781.P3072052957506872574

namespace A303781

/-- `A009191(n+1)-A129950(A009191(n+1))*A129950(n+1)` -/
def P3072052957506872574.Spec : Prop :=
  ∀ n, P3072052957506872574.a n = A303781 (n + 1)

end A303781

/-! ## A303781.P184766890983519049

`A009191(n+1)/A009191(A008578(n+1))`
-/

namespace A303781.P184766890983519049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009191 (n + 1) : ℚ) / (A009191 (A008578 (n + 1)).toNat : ℚ)

end

end A303781.P184766890983519049

namespace A303781

/-- `A009191(n+1)/A009191(A008578(n+1))` -/
def P184766890983519049.Spec : Prop :=
  ∀ n, P184766890983519049.a n = (A303781 (n + 1) : ℚ)

end A303781

/-! ## A303781.P16342407751831476608

`gcd(A336723(n+1)/A009191(n+1), A009191(n+1))`
-/

namespace A303781.P16342407751831476608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A336723 (n + 1) : ℚ) / (A009191 (n + 1) : ℚ))) (A009191 (n + 1))

end

end A303781.P16342407751831476608

namespace A303781

/-- `gcd(A336723(n+1)/A009191(n+1), A009191(n+1))` -/
def P16342407751831476608.Spec : Prop :=
  ∀ n, (P16342407751831476608.a n : ℤ) = A303781 (n + 1)

end A303781

/-! ## A303781.P1310604353134551580

`gcd(n+1, A096737(n+1))`
-/

namespace A303781.P1310604353134551580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A096737 (n + 1))

end

end A303781.P1310604353134551580

namespace A303781

/-- `gcd(n+1, A096737(n+1))` -/
def P1310604353134551580.Spec : Prop :=
  ∀ n, (P1310604353134551580.a n : ℤ) = A303781 (n + 1)

end A303781

/-!
# A303784: Lexicographically earliest sequence of distinct terms such that what emerges from the mask is even (see the Comment section for the mask explanation).

The programs for A303784, there is no canonical definition to state claims against.
-/

/-! ## A303784.P7957585820895100604

`A007913(A000079(n))*A168230(n+3)`
-/

namespace A303784.P7957585820895100604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000079 n).toNat * A168230 (n + 3)

end

end A303784.P7957585820895100604

/-! ## A303784.P12210050255849076995

`A303785(n+1)-A000035(A007088(n))`
-/

namespace A303784.P12210050255849076995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303785 (n + 1) - A000035 (A007088 n).toNat

end

end A303784.P12210050255849076995

/-! ## A303784.P15718849659299440110

`A303785(n+1)-A140344(A002620(n+2))`
-/

namespace A303784.P15718849659299440110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303785 (n + 1) - A140344 (A002620 (n + 2)).toNat

end

end A303784.P15718849659299440110

/-! ## A303784.P1301411846517988562

`A117804(A318486(n+1))%A273305(n+2)`
-/

namespace A303784.P1301411846517988562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117804 (A318486 (n + 1)).toNat) (A273305 (n + 2))

end

end A303784.P1301411846517988562

/-! ## A303784.P18293007003969238149

`A095722(A249699(n))+gcd(n, ∑[n])`
-/

namespace A303784.P18293007003969238149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095722 (A249699 n).toNat + (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A303784.P18293007003969238149

/-!
# A303785: Lexicographically earliest sequence of distinct terms such that what emerges from the mask is odd (see the Comment section for the mask explanation).

The programs for A303785, there is no canonical definition to state claims against.
-/

/-! ## A303785.P10907088814340320178

`A122620(A303848(n+1))`
-/

namespace A303785.P10907088814340320178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122620 (A303848 (n + 1)).toNat

end

end A303785.P10907088814340320178

/-! ## A303785.P9323013745594346102

`A122620(A318486(n+1))`
-/

namespace A303785.P9323013745594346102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122620 (A318486 (n + 1)).toNat

end

end A303785.P9323013745594346102

/-! ## A303785.P17292124434382491698

`A142150(A004438(n+1))+A004438(A303848(n+1))`
-/

namespace A303785.P17292124434382491698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A004438 (n + 1)).toNat + A004438 (A303848 (n + 1)).toNat

end

end A303785.P17292124434382491698

/-! ## A303785.P2617209626032758332

`A289762(A338284(n+2))`
-/

namespace A303785.P2617209626032758332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289762 (A338284 (n + 2)).toNat

end

end A303785.P2617209626032758332

/-!
# A303786: Lexicographically earliest sequence of distinct terms such that what emerges from the mask rebuilds the sequence itself, term by term (see the Comment section for the mask explanation).

The programs for A303786, there is no canonical definition to state claims against.
-/

/-! ## A303786.P4830436851623079844

`∑[10^(2^n-1)]`
-/

namespace A303786.P4830436851623079844
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ ((2 ^ n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303786.P4830436851623079844

/-! ## A303786.P2379538284367215182

`∑[a(n-1)²]/10` with `a(0)=10`
-/

namespace A303786.P2379538284367215182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f1 =>
  f1 (n - 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 10

end

end A303786.P2379538284367215182

/-! ## A303786.P6604212682038808652

`10^(2^n-1)+a(n-1)` with `a(0)=1`
-/

namespace A303786.P6604212682038808652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (10 : ℚ) ^ ((2 ^ n : ℤ) - 1 : ℤ) + a (n - 1)

end

end A303786.P6604212682038808652

/-!
# A303787: a(n) = Sum_{i=0..m} d(i)*4^i, where Sum_{i=0..m} d(i)*5^i is the base-5 representation of n.

The programs for A303787, there is no canonical definition to state claims against.
-/

/-! ## A303787.P9093632804911474349

`A028899(A007091(n))`
-/

namespace A303787.P9093632804911474349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A007091 n).toNat

end

end A303787.P9093632804911474349

/-! ## A303787.P14595227885154069297

`A028899(A014263(n+1)/2)`
-/

namespace A303787.P14595227885154069297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (SequenceMachineLib.roundAway ((A014263 (n + 1) : ℚ) / 2)).toNat

end

end A303787.P14595227885154069297

/-! ## A303787.P18289326184938371617

`A028899(A024657(2*n)/2)`
-/

namespace A303787.P18289326184938371617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (SequenceMachineLib.roundAway ((A024657 (2 * n) : ℚ) / 2)).toNat

end

end A303787.P18289326184938371617

/-! ## A303787.P13840273954651238342

`A028899(record[A106747(n)])`
-/

namespace A303787.P13840273954651238342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A303787.P13840273954651238342

/-! ## A303787.P7935157736429887038

`A028899(eq[n, A167831(n)])`
-/

namespace A303787.P7935157736429887038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303787.P7935157736429887038

/-! ## A303787.P4851446803084099424

`A028899(A007095(record[A316823(n)]))`
-/

namespace A303787.P4851446803084099424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A007095 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A303787.P4851446803084099424

/-!
# A303788: a(n) = Sum_{i=0..m} d(i)*5^i, where Sum_{i=0..m} d(i)*6^i is the base-6 representation of n.

The programs for A303788, there is no canonical definition to state claims against.
-/

/-! ## A303788.P13349929620447122297

`A028900(A007092(n))`
-/

namespace A303788.P13349929620447122297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A007092 n).toNat

end

end A303788.P13349929620447122297

/-! ## A303788.P3641619600922138710

`A028900(record[n-A106747(n)])`
-/

namespace A303788.P3641619600922138710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A106747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A303788.P3641619600922138710

/-! ## A303788.P3553183042796581366

`A028900(eq[A007953(n), A280913(n)])`
-/

namespace A303788.P3553183042796581366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A303788.P3553183042796581366

/-! ## A303788.P11390102464466555105

`A028900(record[n-A107130(n)])`
-/

namespace A303788.P11390102464466555105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A107130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A303788.P11390102464466555105

/-! ## A303788.P6544703712659679319

`A028900(eq[n, A222253(A222250(n))])`
-/

namespace A303788.P6544703712659679319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A222250 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303788.P6544703712659679319

/-! ## A303788.P13309568368622982495

`A028900(record[A106747(n)+A103181(n)])`
-/

namespace A303788.P13309568368622982495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n + A103181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A303788.P13309568368622982495

/-!
# A303789: a(n) = Sum_{i=0..m} d(i)*6^i, where Sum_{i=0..m} d(i)*7^i is the base-7 representation of n.

The programs for A303789, the canonical program `A303789.P8809668206282545156` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303789 has offset 0).

The definition of A303789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303789.P8809668206282545156

`A028901(A007093(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A303789

/-- `A028901(A007093(n))` -/
def P8809668206282545156.Spec : Prop :=
  ∀ n, P8809668206282545156.a n = A303789 n

theorem P8809668206282545156.correct : P8809668206282545156.Spec := by
  intro n
  simp only [A303789]

end A303789

/-! ## A303789.P7454428426698379346

`A028901(eq[n, A222254(A004182(n))])`
-/

namespace A303789.P7454428426698379346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A004182 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303789.P7454428426698379346

namespace A303789

/-- `A028901(eq[n, A222254(A004182(n))])` -/
def P7454428426698379346.Spec : Prop :=
  ∀ n, P7454428426698379346.a n = A303789 n

end A303789

/-! ## A303789.P14813643320796517484

`A028901(eq[n, A222253(A004183(n))])`
-/

namespace A303789.P14813643320796517484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A004183 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303789.P14813643320796517484

namespace A303789

/-- `A028901(eq[n, A222253(A004183(n))])` -/
def P14813643320796517484.Spec : Prop :=
  ∀ n, P14813643320796517484.a n = A303789 n

end A303789

/-! ## A303789.P208517327514086521

`A028901(eq[n, A222253(A222252(n))])`
-/

namespace A303789.P208517327514086521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A222252 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303789.P208517327514086521

namespace A303789

/-- `A028901(eq[n, A222253(A222252(n))])` -/
def P208517327514086521.Spec : Prop :=
  ∀ n, P208517327514086521.a n = A303789 n

end A303789

/-! ## A303789.P4004638043903140549

`A028901(eq[n, A222254(A222252(n))])`
-/

namespace A303789.P4004638043903140549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222252 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303789.P4004638043903140549

namespace A303789

/-- `A028901(eq[n, A222254(A222252(n))])` -/
def P4004638043903140549.Spec : Prop :=
  ∀ n, P4004638043903140549.a n = A303789 n

end A303789

/-! ## A303789.P474983597929201893

`A028901(eq[n, A222254(A222253(n))])`
-/

namespace A303789.P474983597929201893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222253 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303789.P474983597929201893

namespace A303789

/-- `A028901(eq[n, A222254(A222253(n))])` -/
def P474983597929201893.Spec : Prop :=
  ∀ n, P474983597929201893.a n = A303789 n

end A303789

/-!
# A303793: Number of n X n 0..1 arrays with every element unequal to 0, 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303793, there is no canonical definition to state claims against.
-/

/-! ## A303793.P7420928426213671174

`A303800(∑[4*n]+1)`
-/

namespace A303793.P7420928426213671174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303800 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303793.P7420928426213671174

/-! ## A303793.P14559798080307665694

`or(char[2], A303800(A001844(n)))`
-/

namespace A303793.P14559798080307665694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A303800 (A001844 n).toNat)

end

end A303793.P14559798080307665694

/-! ## A303793.P10419961859299492410

`A303800(A046092(n)+1)+char[25]`
-/

namespace A303793.P10419961859299492410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303800 (A046092 n + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303793.P10419961859299492410

/-! ## A303793.P782404454932273985

`lcm(A033999(n), A303800(A001844(n)))`
-/

namespace A303793.P782404454932273985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A303800 (A001844 n).toNat)

end

end A303793.P782404454932273985

/-! ## A303793.P16778570085594644885

`A303800(A001844(n))+A173920(∑[n])`
-/

namespace A303793.P16778570085594644885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303800 (A001844 n).toNat + A173920 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303793.P16778570085594644885

/-!
# A303794: Number of nX2 0..1 arrays with every element unequal to 0, 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303794, the canonical program `A303794.P1791398509874808126` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303794 has offset 1).

The definition of A303794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303794.P1791398509874808126

`2*a(n-1)+8*a(n-3)-8*a(n-4)-8*a(n-5)` with `a(0)=2, a(1)=4, a(2)=12, a(3)=24, a(4)=64, a(5)=184`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A303794

/-- `2*a(n-1)+8*a(n-3)-8*a(n-4)-8*a(n-5)` -/
def P1791398509874808126.Spec : Prop :=
  ∀ n, P1791398509874808126.a n = A303794 (n + 1)

theorem P1791398509874808126.correct : P1791398509874808126.Spec := by
  intro n
  simp only [A303794, Nat.add_sub_cancel]

end A303794

/-! ## A303794.P673414913490700818

`A303800(∑[n+1]+2)`
-/

namespace A303794.P673414913490700818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303800 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A303794.P673414913490700818

namespace A303794

/-- `A303800(∑[n+1]+2)` -/
def P673414913490700818.Spec : Prop :=
  ∀ n, P673414913490700818.a n = A303794 (n + 1)

end A303794

/-! ## A303794.P7677529116977709972

`lcm(2, A303800(A000096(n)+3))`
-/

namespace A303794.P7677529116977709972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A303800 (A000096 n + 3).toNat)

end

end A303794.P7677529116977709972

namespace A303794

/-- `lcm(2, A303800(A000096(n)+3))` -/
def P7677529116977709972.Spec : Prop :=
  ∀ n, (P7677529116977709972.a n : ℤ) = A303794 (n + 1)

end A303794

/-! ## A303794.P13297558933177716024

`A020985(n)²*A303800(A000096(n)+3)`
-/

namespace A303794.P13297558933177716024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A303800 (A000096 n + 3).toNat

end

end A303794.P13297558933177716024

namespace A303794

/-- `A020985(n)²*A303800(A000096(n)+3)` -/
def P13297558933177716024.Spec : Prop :=
  ∀ n, P13297558933177716024.a n = A303794 (n + 1)

end A303794

/-! ## A303794.P14165076381149087627

`A014963(6*(n+1))*A303800(A000096(n)+3)`
-/

namespace A303794.P14165076381149087627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A303800 (A000096 n + 3).toNat

end

end A303794.P14165076381149087627

namespace A303794

/-- `A014963(6*(n+1))*A303800(A000096(n)+3)` -/
def P14165076381149087627.Spec : Prop :=
  ∀ n, P14165076381149087627.a n = A303794 (n + 1)

end A303794

/-!
# A303795: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303795, there is no canonical definition to state claims against.
-/

/-! ## A303795.P11947059675828763360

`A303800(∑[n+2]+4)`
-/

namespace A303795.P11947059675828763360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303800 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A303795.P11947059675828763360

/-! ## A303795.P6153148833200183432

`or(char[2], A303800(A167614(n+1)))`
-/

namespace A303795.P6153148833200183432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A303800 (A167614 (n + 1)).toNat)

end

end A303795.P6153148833200183432

/-! ## A303795.P15671068755799581721

`lcm(A020985(n), A303800(A167614(n+1)))`
-/

namespace A303795.P15671068755799581721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A303800 (A167614 (n + 1)).toNat)

end

end A303795.P15671068755799581721

/-! ## A303795.P613752799023639399

`A033999(2*n)*A303800(A167614(n+1))`
-/

namespace A303795.P613752799023639399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A303800 (A167614 (n + 1)).toNat

end

end A303795.P613752799023639399

/-! ## A303795.P12515801622468317603

`A303800(A167614(n+1))%A303797(n+1)`
-/

namespace A303795.P12515801622468317603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303800 (A167614 (n + 1)).toNat) (A303797 (n + 1))

end

end A303795.P12515801622468317603

/-!
# A303796: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303796, there is no canonical definition to state claims against.
-/

/-! ## A303796.P9593604943043246379

`A303800(∑[n+3]+7)`
-/

namespace A303796.P9593604943043246379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303800 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A303796.P9593604943043246379

/-! ## A303796.P10656587886564529200

`A303800(Δ[A005286(n)]+5)+char[31]`
-/

namespace A303796.P10656587886564529200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303800 (f1 (n + 1) - f1 n + 5).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303796.P10656587886564529200

/-! ## A303796.P16129908844555556723

`A303800(A145018(n+4))%A059929(n+4)`
-/

namespace A303796.P16129908844555556723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303800 (A145018 (n + 4)).toNat) (A059929 (n + 4))

end

end A303796.P16129908844555556723

/-! ## A303796.P9003031847864327886

`((-1)^A007318(n))²*A303800(Δ[A005286(n)]+5)`
-/

namespace A303796.P9003031847864327886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (A007318 n : ℤ)) ^ 2 * (A303800 (f1 (n + 1) - f1 n + 5).toNat : ℚ)

end

end A303796.P9003031847864327886

/-! ## A303796.P13039304512374832941

`A000005((-1)^(2*n))*A303800(Δ[A005286(n)]+5)`
-/

namespace A303796.P13039304512374832941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((-1) ^ (2 * n)).toNat * A303800 (f1 (n + 1) - f1 n + 5).toNat

end

end A303796.P13039304512374832941

/-!
# A303797: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303797, there is no canonical definition to state claims against.
-/

/-! ## A303797.P5823270610699128675

`A303800(∑[n+4]+11)`
-/

namespace A303797.P5823270610699128675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303800 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A303797.P5823270610699128675

/-! ## A303797.P7061554399996519813

`A303800(Δ[A023545(n+1)])%A022723(n+1)`
-/

namespace A303797.P7061554399996519813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303800 (f1 (n + 1) - f1 n).toNat) (A022723 (n + 1))

end

end A303797.P7061554399996519813

/-!
# A303798: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303798, there is no canonical definition to state claims against.
-/

/-! ## A303798.P18224209353496431822

`A303800(∑[n+5]+16)`
-/

namespace A303798.P18224209353496431822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303800 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A303798.P18224209353496431822

/-! ## A303798.P15793024642071653791

`A303800(A374007(n+1))%A266808(n)`
-/

namespace A303798.P15793024642071653791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303800 (A374007 (n + 1)).toNat) (A266808 n)

end

end A303798.P15793024642071653791

/-! ## A303798.P8356114940633833014

`A033999(2*n)*A303800(A374007(n+1))`
-/

namespace A303798.P8356114940633833014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A303800 (A374007 (n + 1)).toNat

end

end A303798.P8356114940633833014

/-! ## A303798.P8248593324205862143

`A353495(2*(n+1))+A303800(A374007(n+1))`
-/

namespace A303798.P8248593324205862143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 (2 * (n + 1)) + A303800 (A374007 (n + 1)).toNat

end

end A303798.P8248593324205862143

/-!
# A303799: Number of n X 7 0..1 arrays with every element unequal to 0, 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303799, there is no canonical definition to state claims against.
-/

/-! ## A303799.P13631079337096849587

`A303800(A374008(n+1))`
-/

namespace A303799.P13631079337096849587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303800 (A374008 (n + 1)).toNat

end

end A303799.P13631079337096849587

/-! ## A303799.P10260297321506616295

`A303800(A056119(n)+28)`
-/

namespace A303799.P10260297321506616295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303800 (A056119 n + 28).toNat

end

end A303799.P10260297321506616295

/-! ## A303799.P16321070221753832843

`A303800(A167499(n+5)+2)`
-/

namespace A303799.P16321070221753832843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303800 (A167499 (n + 5) + 2).toNat

end

end A303799.P16321070221753832843

/-! ## A303799.P7549975149610828460

`A303800(A167614(n+5)+4)`
-/

namespace A303799.P7549975149610828460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303800 (A167614 (n + 5) + 4).toNat

end

end A303799.P7549975149610828460

/-! ## A303799.P1524664914960015809

`A303800(A000124(n+6)+6)`
-/

namespace A303799.P1524664914960015809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303800 (A000124 (n + 6) + 6).toNat

end

end A303799.P1524664914960015809

