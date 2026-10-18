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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
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

/-!
# A184900: a(n) equals the coefficient of x^(2n-1) in the (2n-1)-th iteration of x+x^3 for n>=1.

The programs for A184900, there is no canonical definition to state claims against.
-/

/-! ## A184900.P17498465186644582562

`A003558(A155652(n))*A026741(n+1)`
-/

namespace A184900.P17498465186644582562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A155652 n).toNat * A026741 (n + 1)

end

end A184900.P17498465186644582562

/-!
# A184901: n+floor(ns/r)+floor(nt/r), where r=(1+sqrt(5))/2, s=r+1, t=r+2.

The programs for A184901, the canonical program `A184901.P11583843455299283413` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184901 has offset 1).

The definition of A184901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184901.P15169894041011138837

`floor(∑[Δ[floor(2*ϕ*n)]+ϕ])`
-/

namespace A184901.P15169894041011138837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.goldenRatio * (n : ℝ))⌋

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℝ) + Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A184901.P15169894041011138837

namespace A184901

/-- `floor(∑[Δ[floor(2*ϕ*n)]+ϕ])` -/
def P15169894041011138837.Spec : Prop :=
  ∀ n, P15169894041011138837.a n = A184901 (n + 1)

end A184901

/-! ## A184901.P16381398087113506264

`A189378(n+1)-2*(n+1)`
-/

namespace A184901.P16381398087113506264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189378 (n + 1) - (2 * (n + 1) : ℤ)

end

end A184901.P16381398087113506264

namespace A184901

/-- `A189378(n+1)-2*(n+1)` -/
def P16381398087113506264.Spec : Prop :=
  ∀ n, P16381398087113506264.a n = A184901 (n + 1)

end A184901

/-! ## A184901.P7316806457922453024

`round(A283233(n+1)+ϕ*(n+1))`
-/

namespace A184901.P7316806457922453024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A283233 (n + 1) : ℝ) + Real.goldenRatio * (n + 1 : ℝ))

end

end A184901.P7316806457922453024

namespace A184901

/-- `round(A283233(n+1)+ϕ*(n+1))` -/
def P7316806457922453024.Spec : Prop :=
  ∀ n, P7316806457922453024.a n = A184901 (n + 1)

end A184901

/-! ## A184901.P11104497813631154348

`A022839(n+1)+Δ[floor(a(n-1)+n*ϕ²)]` with `a(0)=0`
-/

namespace A184901.P11104497813631154348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ⌊(f1 (n - 1) : ℝ) + (n : ℝ) * Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1) + (f1 (n + 1) - f1 n)

end

end A184901.P11104497813631154348

namespace A184901

/-- `A022839(n+1)+Δ[floor(a(n-1)+n*ϕ²)]` -/
def P11104497813631154348.Spec : Prop :=
  ∀ n, P11104497813631154348.a n = A184901 (n + 1)

end A184901

/-! ## A184901.P16533080416348545260

`∑[A276863(n+1)+A001468(n)]`
-/

namespace A184901.P16533080416348545260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276863 (n + 1) + A001468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184901.P16533080416348545260

namespace A184901

/-- `∑[A276863(n+1)+A001468(n)]` -/
def P16533080416348545260.Spec : Prop :=
  ∀ n, P16533080416348545260.a n = A184901 (n + 1)

end A184901

/-! ## A184901.P17521953327500446699

`A283233(n+1)+∑[A006340(n)]`
-/

namespace A184901.P17521953327500446699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283233 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184901.P17521953327500446699

namespace A184901

/-- `A283233(n+1)+∑[A006340(n)]` -/
def P17521953327500446699.Spec : Prop :=
  ∀ n, P17521953327500446699.a n = A184901 (n + 1)

end A184901

/-! ## A184901.P11583843455299283413

`A003231(n+1)+A001961(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A184901

/-- `A003231(n+1)+A001961(n+1)` -/
def P11583843455299283413.Spec : Prop :=
  ∀ n, P11583843455299283413.a n = A184901 (n + 1)

theorem P11583843455299283413.correct : P11583843455299283413.Spec := by
  intro n
  simp only [A184901, Nat.add_sub_cancel]

end A184901

/-! ## A184901.P302445798741179800

`A022839(n+1)+A001950(n+1)`
-/

namespace A184901.P302445798741179800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1) + A001950 (n + 1)

end

end A184901.P302445798741179800

namespace A184901

/-- `A022839(n+1)+A001950(n+1)` -/
def P302445798741179800.Spec : Prop :=
  ∀ n, P302445798741179800.a n = A184901 (n + 1)

end A184901

/-! ## A184901.P8662632198518018687

`A276854(n+1)+A000201(n+1)`
-/

namespace A184901.P8662632198518018687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 (n + 1) + A000201 (n + 1)

end

end A184901.P8662632198518018687

namespace A184901

/-- `A276854(n+1)+A000201(n+1)` -/
def P8662632198518018687.Spec : Prop :=
  ∀ n, P8662632198518018687.a n = A184901 (n + 1)

end A184901

/-! ## A184901.P7728711310775137994

`A276854(n+1)+A066096(n+1)`
-/

namespace A184901.P7728711310775137994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 (n + 1) + A066096 (n + 1)

end

end A184901.P7728711310775137994

namespace A184901

/-- `A276854(n+1)+A066096(n+1)` -/
def P7728711310775137994.Spec : Prop :=
  ∀ n, P7728711310775137994.a n = A184901 (n + 1)

end A184901

/-! ## A184901.P1375692443228831669

`A342089(n+1)-A078796(n+1)`
-/

namespace A184901.P1375692443228831669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342089 (n + 1) - A078796 (n + 1)

end

end A184901.P1375692443228831669

namespace A184901

/-- `A342089(n+1)-A078796(n+1)` -/
def P1375692443228831669.Spec : Prop :=
  ∀ n, P1375692443228831669.a n = A184901 (n + 1)

end A184901

/-! ## A184901.P1732297225078643914

`A001962(n+1)+∑[A001468(n)-2]`
-/

namespace A184901.P1732297225078643914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001962 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184901.P1732297225078643914

namespace A184901

/-- `A001962(n+1)+∑[A001468(n)-2]` -/
def P1732297225078643914.Spec : Prop :=
  ∀ n, P1732297225078643914.a n = A184901 (n + 1)

end A184901

/-! ## A184901.P22645675915825806

`∑[A006340(n)]+2*A000201(n+1)`
-/

namespace A184901.P22645675915825806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A000201 (n + 1)

end

end A184901.P22645675915825806

namespace A184901

/-- `∑[A006340(n)]+2*A000201(n+1)` -/
def P22645675915825806.Spec : Prop :=
  ∀ n, P22645675915825806.a n = A184901 (n + 1)

end A184901

/-! ## A184901.P4274287511531625833

`A003622(n+1)+A022839(n+1)+1`
-/

namespace A184901.P4274287511531625833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1) + (A022839 (n + 1) + 1)

end

end A184901.P4274287511531625833

namespace A184901

/-- `A003622(n+1)+A022839(n+1)+1` -/
def P4274287511531625833.Spec : Prop :=
  ∀ n, P4274287511531625833.a n = A184901 (n + 1)

end A184901

/-! ## A184901.P16164281930380804498

`A001950(n+1)+A190511(n+1)+1`
-/

namespace A184901.P16164281930380804498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) + (A190511 (n + 1) + 1)

end

end A184901.P16164281930380804498

namespace A184901

/-- `A001950(n+1)+A190511(n+1)+1` -/
def P16164281930380804498.Spec : Prop :=
  ∀ n, P16164281930380804498.a n = A184901 (n + 1)

end A184901

/-! ## A184901.P3016679104258195394

`A184656(n+1)+A283233(n+1)+1`
-/

namespace A184901.P3016679104258195394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184656 (n + 1) + (A283233 (n + 1) + 1)

end

end A184901.P3016679104258195394

namespace A184901

/-- `A184656(n+1)+A283233(n+1)+1` -/
def P3016679104258195394.Spec : Prop :=
  ∀ n, P3016679104258195394.a n = A184901 (n + 1)

end A184901

/-! ## A184901.P9440948947618234795

`A004957(n+1)+A198082(n+1)-2`
-/

namespace A184901.P9440948947618234795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (n + 1) + (A198082 (n + 1) - 2)

end

end A184901.P9440948947618234795

namespace A184901

/-- `A004957(n+1)+A198082(n+1)-2` -/
def P9440948947618234795.Spec : Prop :=
  ∀ n, P9440948947618234795.a n = A184901 (n + 1)

end A184901

/-! ## A184901.P2662206780752208264

`A005206(2*n+1)+A003231(n+1)`
-/

namespace A184901.P2662206780752208264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (2 * n + 1) + A003231 (n + 1)

end

end A184901.P2662206780752208264

namespace A184901

/-- `A005206(2*n+1)+A003231(n+1)` -/
def P2662206780752208264.Spec : Prop :=
  ∀ n, P2662206780752208264.a n = A184901 (n + 1)

end A184901

/-! ## A184901.P6059270151255161276

`A022839(n+1)+A054770(n+1)-n`
-/

namespace A184901.P6059270151255161276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1) + (A054770 (n + 1) - (n : ℤ))

end

end A184901.P6059270151255161276

namespace A184901

/-- `A022839(n+1)+A054770(n+1)-n` -/
def P6059270151255161276.Spec : Prop :=
  ∀ n, P6059270151255161276.a n = A184901 (n + 1)

end A184901

/-! ## A184901.P3670910267162239171

`A003623(n+1)+A184656(n+1)-n`
-/

namespace A184901.P3670910267162239171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1) + (A184656 (n + 1) - (n : ℤ))

end

end A184901.P3670910267162239171

namespace A184901

/-- `A003623(n+1)+A184656(n+1)-n` -/
def P3670910267162239171.Spec : Prop :=
  ∀ n, P3670910267162239171.a n = A184901 (n + 1)

end A184901

/-!
# A184902: Primes that are not factors of m^2 + m + 11 (A048058).

The programs for A184902, there is no canonical definition to state claims against.
-/

/-! ## A184902.P16516925476430767731

`p?[eq[0, A138811(n)]]`
-/

namespace A184902.P16516925476430767731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138811 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A184902.P16516925476430767731

/-! ## A184902.P2431009953729328890

`eq[A068346(n), A138811(n)]`
-/

namespace A184902.P2431009953729328890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184902.P2431009953729328890

/-! ## A184902.P2551132281335526002

`eq[A072480(n), A138811(n)]`
-/

namespace A184902.P2551132281335526002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184902.P2551132281335526002

/-! ## A184902.P9571153472308472119

`eq[A138811(n), A277894(n)]`
-/

namespace A184902.P9571153472308472119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184902.P9571153472308472119

/-! ## A184902.P909064462172986690

`eq[A138811(n), A278648(n)]`
-/

namespace A184902.P909064462172986690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278648 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184902.P909064462172986690

/-! ## A184902.P13778836002637598688

`eq[A138811(n), A338554(n)]`
-/

namespace A184902.P13778836002637598688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338554 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184902.P13778836002637598688

/-! ## A184902.P10317957743648813014

`eq[n, A014963(A138811(n)+n)]`
-/

namespace A184902.P10317957743648813014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A138811 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A184902.P10317957743648813014

/-! ## A184902.P16043273864273981850

`eq[n, A020639(A138811(n)+n)]`
-/

namespace A184902.P16043273864273981850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A138811 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A184902.P16043273864273981850

/-! ## A184902.P17424498205928284394

`eq[(A011591(n)+2)², A210442(n)]`
-/

namespace A184902.P17424498205928284394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011591 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184902.P17424498205928284394

/-! ## A184902.P5264077683993111472

`eq[(A011591(n)+2)², A211110(n)]`
-/

namespace A184902.P5264077683993111472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011591 n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184902.P5264077683993111472

/-! ## A184902.P3180978196380090205

`eq[A011591(n)+2, A284289(n)²]`
-/

namespace A184902.P3180978196380090205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011591 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184902.P3180978196380090205

/-! ## A184902.P9422452096605103182

`record[A006530(2*gcd(n, A138811(n)))]`
-/

namespace A184902.P9422452096605103182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * Int.gcd (n : ℤ) (A138811 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184902.P9422452096605103182

/-! ## A184902.P9228995941229584420

`eq[1, A138811(n)+A053989(n+1)]`
-/

namespace A184902.P9228995941229584420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138811 n + A053989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A184902.P9228995941229584420

/-! ## A184902.P14372876142569533802

`eq[A011591(n)+2, A053989(n+1)²]`
-/

namespace A184902.P14372876142569533802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011591 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184902.P14372876142569533802

/-! ## A184902.P10264032282747560002

`eq[A011591(n)+2, A231734(n+1)²]`
-/

namespace A184902.P10264032282747560002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011591 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231734 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184902.P10264032282747560002

/-! ## A184902.P4257205965124133644

`eq[A011591(n)+2, A231820(n+1)²]`
-/

namespace A184902.P4257205965124133644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011591 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184902.P4257205965124133644

/-! ## A184902.P964624963306298586

`eq[A138811(n)², A032741(A032741(n))]`
-/

namespace A184902.P964624963306298586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138811 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184902.P964624963306298586

/-! ## A184902.P14152359971679663080

`eq[A053989(n+1), A056982(A138811(n))]`
-/

namespace A184902.P14152359971679663080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056982 (A138811 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184902.P14152359971679663080

/-! ## A184902.P3241895009680727753

`eq[A011591(2*n), A072721(n)]`
-/

namespace A184902.P3241895009680727753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011591 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184902.P3241895009680727753

/-! ## A184902.P15995222262441267145

`eq[A138811(n), A340732(n)]`
-/

namespace A184902.P15995222262441267145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340732 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184902.P15995222262441267145

/-!
# A184903: n+floor(nr/t)+floor(ns/t), where r=(1+sqrt(5))/2, s=r+1, t=r+2.

The programs for A184903, the canonical program `A184903.P10166657498672039758` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184903 has offset 1).

The definition of A184903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184903.P10166657498672039758

`A190506(n+1)-A287770(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A184903

/-- `A190506(n+1)-A287770(n+1)` -/
def P10166657498672039758.Spec : Prop :=
  ∀ n, P10166657498672039758.a n = A184903 (n + 1)

theorem P10166657498672039758.correct : P10166657498672039758.Spec := by
  intro n
  simp only [A184903, Nat.add_sub_cancel]

end A184903

/-! ## A184903.P4578687292407999006

`A032766(A194964(n+1)+n)`
-/

namespace A184903.P4578687292407999006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A194964 (n + 1) + (n : ℤ)).toNat

end

end A184903.P4578687292407999006

namespace A184903

/-- `A032766(A194964(n+1)+n)` -/
def P4578687292407999006.Spec : Prop :=
  ∀ n, P4578687292407999006.a n = A184903 (n + 1)

end A184903

/-! ## A184903.P13930689813583636036

`A019446(A188258(n+1))+n`
-/

namespace A184903.P13930689813583636036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A188258 (n + 1)).toNat + (n : ℤ)

end

end A184903.P13930689813583636036

namespace A184903

/-- `A019446(A188258(n+1))+n` -/
def P13930689813583636036.Spec : Prop :=
  ∀ n, P13930689813583636036.a n = A184903 (n + 1)

end A184903

/-! ## A184903.P6255589463909681270

`A060143(A188190(n+2))+n`
-/

namespace A184903.P6255589463909681270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A188190 (n + 2)).toNat + (n : ℤ)

end

end A184903.P6255589463909681270

namespace A184903

/-- `A060143(A188190(n+2))+n` -/
def P6255589463909681270.Spec : Prop :=
  ∀ n, P6255589463909681270.a n = A184903 (n + 1)

end A184903

/-! ## A184903.P4027447409402264050

`A265888(A188258(n+1)+n)`
-/

namespace A184903.P4027447409402264050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265888 (A188258 (n + 1) + (n : ℤ)).toNat

end

end A184903.P4027447409402264050

namespace A184903

/-- `A265888(A188258(n+1)+n)` -/
def P4027447409402264050.Spec : Prop :=
  ∀ n, P4027447409402264050.a n = A184903 (n + 1)

end A184903

/-! ## A184903.P788097469793574692

`A032766(A008619(A189934(n+1))-1)`
-/

namespace A184903.P788097469793574692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A008619 (A189934 (n + 1)).toNat - 1).toNat

end

end A184903.P788097469793574692

namespace A184903

/-- `A032766(A008619(A189934(n+1))-1)` -/
def P788097469793574692.Spec : Prop :=
  ∀ n, P788097469793574692.a n = A184903 (n + 1)

end A184903

/-! ## A184903.P18338104019934005902

`A187321(A189934(n+1))`
-/

namespace A184903.P18338104019934005902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187321 (A189934 (n + 1)).toNat

end

end A184903.P18338104019934005902

namespace A184903

/-- `A187321(A189934(n+1))` -/
def P18338104019934005902.Spec : Prop :=
  ∀ n, P18338104019934005902.a n = A184903 (n + 1)

end A184903

/-! ## A184903.P8283862404230142673

`A300293(A330185(n+1))`
-/

namespace A184903.P8283862404230142673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300293 (A330185 (n + 1)).toNat

end

end A184903.P8283862404230142673

namespace A184903

/-- `A300293(A330185(n+1))` -/
def P8283862404230142673.Spec : Prop :=
  ∀ n, P8283862404230142673.a n = A184903 (n + 1)

end A184903

/-! ## A184903.P6823716491734941130

`A004526(3*A004526(A189934(n+1)))`
-/

namespace A184903.P6823716491734941130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * A004526 (A189934 (n + 1)).toNat).toNat

end

end A184903.P6823716491734941130

namespace A184903

/-- `A004526(3*A004526(A189934(n+1)))` -/
def P6823716491734941130.Spec : Prop :=
  ∀ n, P6823716491734941130.a n = A184903 (n + 1)

end A184903

/-! ## A184903.P9086847088410143912

`A194220(A189932(n+1)-1)`
-/

namespace A184903.P9086847088410143912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194220 (A189932 (n + 1) - 1).toNat

end

end A184903.P9086847088410143912

namespace A184903

/-- `A194220(A189932(n+1)-1)` -/
def P9086847088410143912.Spec : Prop :=
  ∀ n, P9086847088410143912.a n = A184903 (n + 1)

end A184903

/-! ## A184903.P4262717529325625946

`A032766(A002265(A189932(n+1)))`
-/

namespace A184903.P4262717529325625946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A002265 (A189932 (n + 1)).toNat).toNat

end

end A184903.P4262717529325625946

namespace A184903

/-- `A032766(A002265(A189932(n+1)))` -/
def P4262717529325625946.Spec : Prop :=
  ∀ n, P4262717529325625946.a n = A184903 (n + 1)

end A184903

/-!
# A184904: n+floor(ns/r)+floor(nt/r), where r=2^(1/2), s=2^(1/3), t=2^(1/5).

The programs for A184904, there is no canonical definition to state claims against.
-/

/-! ## A184904.P3946035981700003889

`A267142(A094435(3*(n+1)))+A190362(n+1)`
-/

namespace A184904.P3946035981700003889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267142 (A094435 (3 * (n + 1))).toNat + A190362 (n + 1)

end

end A184904.P3946035981700003889

/-! ## A184904.P16308832326016885194

`A267142(A261962(n))+A190362(n+1)`
-/

namespace A184904.P16308832326016885194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267142 (A261962 n).toNat + A190362 (n + 1)

end

end A184904.P16308832326016885194

/-! ## A184904.P13352240034184463558

`A189934(n+1)-A043561(A067298(n))`
-/

namespace A184904.P13352240034184463558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189934 (n + 1) - A043561 (A067298 n).toNat

end

end A184904.P13352240034184463558

/-! ## A184904.P5140216882226638328

`A189934(n+1)-A055642(A229083(n+1))`
-/

namespace A184904.P5140216882226638328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189934 (n + 1) - A055642 (A229083 (n + 1)).toNat

end

end A184904.P5140216882226638328

/-! ## A184904.P9298017541346321830

`A190362(n+1)%A175426(n+1)`
-/

namespace A184904.P9298017541346321830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190362 (n + 1)) (A175426 (n + 1))

end

end A184904.P9298017541346321830

/-!
# A184905: n+floor(nr/s)+floor(nt/s), where r=2^(1/2), s=2^(1/3), t=2^(1/5).

The programs for A184905, there is no canonical definition to state claims against.
-/

/-! ## A184905.P7542704596466530504

`A140106(A258833(3*n+2)+A214628(3*(n+1)))`
-/

namespace A184905.P7542704596466530504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A258833 (3 * n + 2) + A214628 (3 * (n + 1))).toNat

end

end A184905.P7542704596466530504

/-! ## A184905.P1237782510870664438

`A102683(A052961(A057364(n)))+A016789(n)`
-/

namespace A184905.P1237782510870664438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A052961 (A057364 n).toNat).toNat + A016789 n

end

end A184905.P1237782510870664438

/-! ## A184905.P16828776664135667134

`A003152(3*(n+1))-A121500(3*(n+1))`
-/

namespace A184905.P16828776664135667134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (3 * (n + 1)) - A121500 (3 * (n + 1))

end

end A184905.P16828776664135667134

/-! ## A184905.P9888010963441831628

`A330751(A115386(n+1))+A016777(n)`
-/

namespace A184905.P9888010963441831628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330751 (A115386 (n + 1)).toNat + A016777 n

end

end A184905.P9888010963441831628

/-! ## A184905.P1137287143605749848

`A316863(A076194(n+1))+A016789(n)`
-/

namespace A184905.P1137287143605749848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A076194 (n + 1)).toNat + A016789 n

end

end A184905.P1137287143605749848

/-!
# A184906: n+floor(nr/t)+floor(ns/t), where r=2^(1/2), s=2^(1/3), t=2^(1/5).

The programs for A184906, there is no canonical definition to state claims against.
-/

/-! ## A184906.P17639828971805067307

`A309077(A004277(n))+A059548(n+1)`
-/

namespace A184906.P17639828971805067307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309077 (A004277 n).toNat + A059548 (n + 1)

end

end A184906.P17639828971805067307

/-! ## A184906.P2967736112957393734

`∑[A077478(A097942(n+1))+2]`
-/

namespace A184906.P2967736112957393734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077478 (A097942 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184906.P2967736112957393734

/-! ## A184906.P16576539543704150863

`A186500(n+1)+A054899(n)^n²`
-/

namespace A184906.P16576539543704150863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186500 (n + 1) + A054899 n ^ n ^ 2

end

end A184906.P16576539543704150863

/-! ## A184906.P10121905320986629594

`∑[A014601(A077478(A097942(n+1)))]`
-/

namespace A184906.P10121905320986629594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A077478 (A097942 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184906.P10121905320986629594

/-! ## A184906.P9854428327578733713

`∑[4-A166609(A025047(n))%2]`
-/

namespace A184906.P9854428327578733713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - Int.tmod (A166609 (A025047 n).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184906.P9854428327578733713

/-!
# A184909: a(n) = n + floor(n*s/r) + floor(n*t/r), where r=2^(1/5), s=r^2, t=r^3.

The programs for A184909, there is no canonical definition to state claims against.
-/

/-! ## A184909.P234509109822818022

`A259361(∑[A188383(n+1)+n])+A059531(n+1)`
-/

namespace A184909.P234509109822818022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188383 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A059531 (n + 1)

end

end A184909.P234509109822818022

/-! ## A184909.P10883301524709933312

`A059531(n+1)+A000196(A282737(n)+A000217(3*n+2))`
-/

namespace A184909.P10883301524709933312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059531 (n + 1) + A000196 (A282737 n + A000217 (3 * n + 2)).toNat

end

end A184909.P10883301524709933312

/-! ## A184909.P16175123844537589591

`A184912(n+1)-∑[A001511(A276086(n))]`
-/

namespace A184909.P16175123844537589591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A276086 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184912 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184909.P16175123844537589591

/-! ## A184909.P12673550300585356076

`A331410(A036484(n))+3*(n+1)`
-/

namespace A184909.P12673550300585356076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A036484 n).toNat + (3 * (n + 1) : ℤ)

end

end A184909.P12673550300585356076

/-! ## A184909.P5474342808904635374

`A189527(n+1)-A000005(A000079(n))`
-/

namespace A184909.P5474342808904635374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189527 (n + 1) - A000005 (A000079 n).toNat

end

end A184909.P5474342808904635374

/-!
# A184910: a(n) = n + floor(n*r/s) + floor(n*t/s) with r = 2^(1/5), s = r^2, t = r^3.

The programs for A184910, there is no canonical definition to state claims against.
-/

/-! ## A184910.P1233793786622227894

`A118759(A184913(n+1)-A059531(n+1))`
-/

namespace A184910.P1233793786622227894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A184913 (n + 1) - A059531 (n + 1)).toNat

end

end A184910.P1233793786622227894

/-! ## A184910.P9200250027151164893

`A118759(A184914(n+1)-A076539(n+1))`
-/

namespace A184910.P9200250027151164893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A184914 (n + 1) - A076539 (n + 1)).toNat

end

end A184910.P9200250027151164893

/-! ## A184910.P3240261925362122494

`A059561(n+1)+∑[A020639(A283273(n)!)]`
-/

namespace A184910.P3240261925362122494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.factorial (A283273 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059561 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184910.P3240261925362122494

/-! ## A184910.P14222851698748350436

`A059561(n+1)+A184592(n+1)+A057428(A213850(n+1))`
-/

namespace A184910.P14222851698748350436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059561 (n + 1) + (A184592 (n + 1) + A057428 (A213850 (n + 1)).toNat)

end

end A184910.P14222851698748350436

/-! ## A184910.P16827971929354189499

`A258069(3*n+4)-A156728(A350470(3*n+1))`
-/

namespace A184910.P16827971929354189499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258069 (3 * n + 4) - A156728 (A350470 (3 * n + 1)).toNat

end

end A184910.P16827971929354189499

/-!
# A184911: a(n) = n + floor(n*r/t) + floor(n*s/t) with r = 2^(1/5), s = r^2, t = r^3.

The programs for A184911, there is no canonical definition to state claims against.
-/

/-! ## A184911.P6577660104002711893

`A328176((A184915(n+1)-A004396(n))²)`
-/

namespace A184911.P6577660104002711893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328176 ((A184915 (n + 1) - A004396 n) ^ 2).toNat

end

end A184911.P6577660104002711893

/-! ## A184911.P5682302242724504483

`A328177((A184915(n+1)-A004396(n))²)`
-/

namespace A184911.P5682302242724504483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328177 ((A184915 (n + 1) - A004396 n) ^ 2).toNat

end

end A184911.P5682302242724504483

/-! ## A184911.P11530306619000579689

`(A184915(n+1)-A004396(n))%A112355(n+1)`
-/

namespace A184911.P11530306619000579689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184915 (n + 1) - A004396 n) (A112355 (n + 1))

end

end A184911.P11530306619000579689

/-! ## A184911.P5356663020047209041

`A184915(n+1)-(A004396(n)+A000038(A010048(n)))`
-/

namespace A184911.P5356663020047209041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184915 (n + 1) - (A004396 n + A000038 (A010048 n).toNat)

end

end A184911.P5356663020047209041

/-! ## A184911.P2379977892640016728

`or(A010051(A125666(n+1)), A190008(n+1))`
-/

namespace A184911.P2379977892640016728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (A125666 (n + 1)).toNat) (A190008 (n + 1))

end

end A184911.P2379977892640016728

/-!
# A184912: n+[ns/r]+[nt/r]+[nu/r], where []=floor and r=2^(1/5), s=r^2, t=r^3, u=r^4.

The programs for A184912, there is no canonical definition to state claims against.
-/

/-! ## A184912.P10774960936169267830

`A184909(n+1)+record[A284373(n+1)]`
-/

namespace A184912.P10774960936169267830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184909 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184912.P10774960936169267830

/-! ## A184912.P11430536378104993932

`record[A284373(n+1)]+A064997(n+1)+ceil((n+1)/π+n)`
-/

namespace A184912.P11430536378104993932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A064997 (n + 1) + ⌈(n + 1 : ℝ) / Real.pi + (n : ℝ)⌉)

end

end A184912.P11430536378104993932

/-! ## A184912.P10482891782228683307

`A189527(n+1)+A001222(A038754(n))`
-/

namespace A184912.P10482891782228683307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189527 (n + 1) + A001222 (A038754 n).toNat

end

end A184912.P10482891782228683307

/-! ## A184912.P4247857040234298069

`A032766(n+1)+A189527(n+1)-A000005(A000079(n))`
-/

namespace A184912.P4247857040234298069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (n + 1) + (A189527 (n + 1) - A000005 (A000079 n).toNat)

end

end A184912.P4247857040234298069

/-! ## A184912.P5009673106160674671

`A336355(A126646(n))+A184871(n+1)`
-/

namespace A184912.P5009673106160674671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336355 (A126646 n).toNat + A184871 (n + 1)

end

end A184912.P5009673106160674671

/-!
# A184913: n+[rn/s]+[tn/s]+[un/s], where []=floor and r=2^(1/5), s=r^2, t=r^3, u=r^4.

The programs for A184913, there is no canonical definition to state claims against.
-/

/-! ## A184913.P6544389392834626086

`A118759(A184910(n+1))+A059531(n+1)`
-/

namespace A184913.P6544389392834626086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A184910 (n + 1)).toNat + A059531 (n + 1)

end

end A184913.P6544389392834626086

/-! ## A184913.P17150320962852553998

`A059531(n+1)+A000196(A184910(n+1)²)`
-/

namespace A184913.P17150320962852553998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059531 (n + 1) + A000196 (A184910 (n + 1) ^ 2).toNat

end

end A184913.P17150320962852553998

/-! ## A184913.P3811065050975574073

`A118759(A184914(n+1)-A076539(n+1))+A059531(n+1)`
-/

namespace A184913.P3811065050975574073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A184914 (n + 1) - A076539 (n + 1)).toNat + A059531 (n + 1)

end

end A184913.P3811065050975574073

/-! ## A184913.P5198677764758615692

`A118759(A184910(n+1)+A042968(n+1))`
-/

namespace A184913.P5198677764758615692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A184910 (n + 1) + A042968 (n + 1)).toNat

end

end A184913.P5198677764758615692

/-! ## A184913.P259780340678091385

`A001956(n+1)-A284386(A292460(n))`
-/

namespace A184913.P259780340678091385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001956 (n + 1) - A284386 (A292460 n).toNat

end

end A184913.P259780340678091385

/-!
# A184914: n+[rn/t]+[sn/t]+[un/t], where []=floor and r=2^(1/5), s=r^2, t=r^3, u=r^4.

The programs for A184914, there is no canonical definition to state claims against.
-/

/-! ## A184914.P14070373711801403079

`A118759(A184910(n+1))+A076539(n+1)`
-/

namespace A184914.P14070373711801403079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A184910 (n + 1)).toNat + A076539 (n + 1)

end

end A184914.P14070373711801403079

/-! ## A184914.P17496741653695668646

`A076539(n+1)+A000196(A184910(n+1)²)`
-/

namespace A184914.P17496741653695668646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076539 (n + 1) + A000196 (A184910 (n + 1) ^ 2).toNat

end

end A184914.P17496741653695668646

/-! ## A184914.P6250577731524280017

`A118759(A184913(n+1)-A059531(n+1))+A076539(n+1)`
-/

namespace A184914.P6250577731524280017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A184913 (n + 1) - A059531 (n + 1)).toNat + A076539 (n + 1)

end

end A184914.P6250577731524280017

/-! ## A184914.P6619749648583246645

`∩[A184911(n+1)+A059561(n+1), A118759(n)]`
-/

namespace A184914.P6619749648583246645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184911 (n + 1) + A059561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184914.P6619749648583246645

/-! ## A184914.P9779232827300357661

`A076539(n+1)+A118759(A184913(n+1))-A042968(n+1)`
-/

namespace A184914.P9779232827300357661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076539 (n + 1) + (A118759 (A184913 (n + 1)).toNat - A042968 (n + 1))

end

end A184914.P9779232827300357661

/-!
# A184915: n+[rn/u]+[sn/u]+[tn/u], where []=floor and r=2^(1/5), s=r^2, t=r^3, u=r^4.

The programs for A184915, there is no canonical definition to state claims against.
-/

/-! ## A184915.P10025916379579268846

`(A184911(n+1)+A004396(n))%A210476(n+2)`
-/

namespace A184915.P10025916379579268846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184911 (n + 1) + A004396 n) (A210476 (n + 2))

end

end A184915.P10025916379579268846

/-! ## A184915.P5136210683947136176

`A184911(n+1)+A004396(n)*A208615(A214020(n))`
-/

namespace A184915.P5136210683947136176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184911 (n + 1) + A004396 n * A208615 (A214020 n).toNat

end

end A184915.P5136210683947136176

/-! ## A184915.P174532550819141986

`(A184911(n+1)+A004396(n))%A004275(A061802(n))`
-/

namespace A184915.P174532550819141986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184911 (n + 1) + A004396 n) (A004275 (A061802 n).toNat)

end

end A184915.P174532550819141986

/-! ## A184915.P13355722820976510946

`A184911(n+1)+A004396(n)*A328308(A168483(n+1))`
-/

namespace A184915.P13355722820976510946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184911 (n + 1) + A004396 n * A328308 (A168483 (n + 1)).toNat

end

end A184915.P13355722820976510946

/-! ## A184915.P12672473173470720284

`A058978(A153251(2*n+3))+3*n`
-/

namespace A184915.P12672473173470720284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058978 (A153251 (2 * n + 3)).toNat + (3 * n : ℤ)

end

end A184915.P12672473173470720284

/-!
# A184916: n+[sn/r]+[tn/r]+[un/r], where []=floor and r=1, s=2^(1/4), t=s^2, u=s^3.

The programs for A184916, there is no canonical definition to state claims against.
-/

/-! ## A184916.P11866460247428804250

`A184919(2*(n+1))-(n+1)`
-/

namespace A184916.P11866460247428804250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184919 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A184916.P11866460247428804250

/-! ## A184916.P11639681410644617810

`A184919(n+2+n)-n-1`
-/

namespace A184916.P11639681410644617810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184919 (n + 2 + n) - (n : ℤ) - 1

end

end A184916.P11639681410644617810

/-! ## A184916.P2024704580603183243

`A001489(2*n+1)+A184919(2*(n+1))+n`
-/

namespace A184916.P2024704580603183243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (2 * n + 1) + (A184919 (2 * (n + 1)) + (n : ℤ))

end

end A184916.P2024704580603183243

/-! ## A184916.P3038326927023788291

`A023443(A184919(2*(n+1))-n)`
-/

namespace A184916.P3038326927023788291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A184919 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A184916.P3038326927023788291

/-! ## A184916.P2823653932937108596

`A289207(A184919(2*(n+1))+A001489(n))+1`
-/

namespace A184916.P2823653932937108596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A184919 (2 * (n + 1)) + A001489 n).toNat + 1

end

end A184916.P2823653932937108596

/-! ## A184916.P6397787351990164920

`A233583(A184919(2*(n+1))-n)`
-/

namespace A184916.P6397787351990164920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A184919 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A184916.P6397787351990164920

/-!
# A184917: n+[rn/s]+[tn/s]+[un/s], where []=floor and r=1, s=2^(1/4), t=s^2, u=s^3.

The programs for A184917, there is no canonical definition to state claims against.
-/

/-! ## A184917.P8091066649250188371

`A184918(n+1)+A049473(n+1)`
-/

namespace A184917.P8091066649250188371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184918 (n + 1) + A049473 (n + 1)

end

end A184917.P8091066649250188371

/-! ## A184917.P1042158982446166581

`A378185(n+1)+A001951(n+1)`
-/

namespace A184917.P1042158982446166581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378185 (n + 1) + A001951 (n + 1)

end

end A184917.P1042158982446166581

/-! ## A184917.P4868335419836096571

`A184918(n+1)+A004526(A087057(n+1))`
-/

namespace A184917.P4868335419836096571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184918 (n + 1) + A004526 (A087057 (n + 1)).toNat

end

end A184917.P4868335419836096571

/-! ## A184917.P720631050138658579

`A000194(A184916(n+1)*A184918(n+1))`
-/

namespace A184917.P720631050138658579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A184916 (n + 1) * A184918 (n + 1)).toNat

end

end A184917.P720631050138658579

/-! ## A184917.P11082036536368935866

`A137734(A184916(n+1)*A184918(n+1))`
-/

namespace A184917.P11082036536368935866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A184916 (n + 1) * A184918 (n + 1)).toNat

end

end A184917.P11082036536368935866

/-!
# A184918: n+[rn/t]+[sn/t]+[un/t], where []=floor and r=1, s=2^(1/4), t=s^2, u=s^3.

The programs for A184918, there is no canonical definition to state claims against.
-/

/-! ## A184918.P16049375876736057492

`A184917(n+1)-A049473(n+1)`
-/

namespace A184918.P16049375876736057492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184917 (n + 1) - A049473 (n + 1)

end

end A184918.P16049375876736057492

/-! ## A184918.P15332460988083237886

`A184917(n+1)-A004526(A087057(n+1))`
-/

namespace A184918.P15332460988083237886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184917 (n + 1) - A004526 (A087057 (n + 1)).toNat

end

end A184918.P15332460988083237886

/-! ## A184918.P4008773132334194601

`A378185(n+1)+A172471(A002620(n+1))`
-/

namespace A184918.P4008773132334194601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378185 (n + 1) + A172471 (A002620 (n + 1)).toNat

end

end A184918.P4008773132334194601

/-! ## A184918.P1702882904294100980

`A000194(A184917(n+1)*A184919(n+1))`
-/

namespace A184918.P1702882904294100980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A184917 (n + 1) * A184919 (n + 1)).toNat

end

end A184918.P1702882904294100980

/-! ## A184918.P14546982924872274491

`A137734(A184917(n+1)*A184919(n+1))`
-/

namespace A184918.P14546982924872274491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A184917 (n + 1) * A184919 (n + 1)).toNat

end

end A184918.P14546982924872274491

/-!
# A184919: n+[rn/u]+[sn/u]+[tn/u], where []=floor and r=1, s=2^(1/4), t=s^2, u=s^3.

The programs for A184919, there is no canonical definition to state claims against.
-/

/-! ## A184919.P15914541459880072053

`A227394(A184918(n+1))`
-/

namespace A184919.P15914541459880072053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227394 (A184918 (n + 1)).toNat

end

end A184919.P15914541459880072053

/-! ## A184919.P5183395829922016559

`A227394(A184917(n+1)-A049473(n+1))`
-/

namespace A184919.P5183395829922016559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227394 (A184917 (n + 1) - A049473 (n + 1)).toNat

end

end A184919.P5183395829922016559

/-! ## A184919.P17489786143556841530

`A121381(n)+A072411(A294669(n))`
-/

namespace A184919.P17489786143556841530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121381 n + A072411 (A294669 n).toNat

end

end A184919.P17489786143556841530

/-! ## A184919.P10091920002669802324

`A004767(n)-A070939(A289670(n+1))`
-/

namespace A184919.P10091920002669802324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A070939 (A289670 (n + 1)).toNat

end

end A184919.P10091920002669802324

/-! ## A184919.P11133496190604993867

`A308010(n+1)+A056976(A001006(n))`
-/

namespace A184919.P11133496190604993867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308010 (n + 1) + A056976 (A001006 n).toNat

end

end A184919.P11133496190604993867

/-!
# A184920: a(n) = n+[s*n/r]+[t*n/r]+[u*n/r], where []=floor and r=2^(1/2), s=r+1, t=r+2, u=r+3.

The programs for A184920, the canonical program `A184920.P14001461014007326555` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184920 has offset 1).

The definition of A184920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184920.P14001461014007326555

`A190191(n+1)+2*A189458(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A184920

/-- `A190191(n+1)+2*A189458(n+1)` -/
def P14001461014007326555.Spec : Prop :=
  ∀ n, P14001461014007326555.a n = A184920 (n + 1)

theorem P14001461014007326555.correct : P14001461014007326555.Spec := by
  intro n
  simp only [A184920, Nat.add_sub_cancel]

end A184920

/-! ## A184920.P16934285155757264687

`A190329(n+1)+A003152(3*(n+1))`
-/

namespace A184920.P16934285155757264687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190329 (n + 1) + A003152 (3 * (n + 1))

end

end A184920.P16934285155757264687

namespace A184920

/-- `A190329(n+1)+A003152(3*(n+1))` -/
def P16934285155757264687.Spec : Prop :=
  ∀ n, P16934285155757264687.a n = A184920 (n + 1)

end A184920

/-! ## A184920.P15110935277744493124

`A187328(A003151(n+1))+A003152(3*(n+1))`
-/

namespace A184920.P15110935277744493124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187328 (A003151 (n + 1)).toNat + A003152 (3 * (n + 1))

end

end A184920.P15110935277744493124

namespace A184920

/-- `A187328(A003151(n+1))+A003152(3*(n+1))` -/
def P15110935277744493124.Spec : Prop :=
  ∀ n, P15110935277744493124.a n = A184920 (n + 1)

end A184920

/-! ## A184920.P3129464261442701639

`A049472(2*(n+1))+A003152(3*(n+1))+A003152(n+1)`
-/

namespace A184920.P3129464261442701639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (2 * (n + 1)) + (A003152 (3 * (n + 1)) + A003152 (n + 1))

end

end A184920.P3129464261442701639

namespace A184920

/-- `A049472(2*(n+1))+A003152(3*(n+1))+A003152(n+1)` -/
def P3129464261442701639.Spec : Prop :=
  ∀ n, P3129464261442701639.a n = A184920 (n + 1)

end A184920

/-! ## A184920.P14347585564074512525

`A286667(A016789(n))+A195128(A003151(n+1))`
-/

namespace A184920.P14347585564074512525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286667 (A016789 n).toNat + A195128 (A003151 (n + 1)).toNat

end

end A184920.P14347585564074512525

namespace A184920

/-- `A286667(A016789(n))+A195128(A003151(n+1))` -/
def P14347585564074512525.Spec : Prop :=
  ∀ n, P14347585564074512525.a n = A184920 (n + 1)

end A184920

/-! ## A184920.P3962078931717973050

`A190191(n+1)+A005843(A189458(n+1))`
-/

namespace A184920.P3962078931717973050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190191 (n + 1) + A005843 (A189458 (n + 1)).toNat

end

end A184920.P3962078931717973050

namespace A184920

/-- `A190191(n+1)+A005843(A189458(n+1))` -/
def P3962078931717973050.Spec : Prop :=
  ∀ n, P3962078931717973050.a n = A184920 (n + 1)

end A184920

/-! ## A184920.P15323104202084820611

`A001951(A080755(n+1)+A001952(n+1))+n`
-/

namespace A184920.P15323104202084820611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A080755 (n + 1) + A001952 (n + 1)).toNat + (n : ℤ)

end

end A184920.P15323104202084820611

namespace A184920

/-- `A001951(A080755(n+1)+A001952(n+1))+n` -/
def P15323104202084820611.Spec : Prop :=
  ∀ n, P15323104202084820611.a n = A184920 (n + 1)

end A184920

/-! ## A184920.P7254508726076010801

`A001951(n+1+A049474(n+1)+A001952(n+1))+n`
-/

namespace A184920.P7254508726076010801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 ((n + 1 : ℤ) + (A049474 (n + 1) + A001952 (n + 1))).toNat + (n : ℤ)

end

end A184920.P7254508726076010801

namespace A184920

/-- `A001951(n+1+A049474(n+1)+A001952(n+1))+n` -/
def P7254508726076010801.Spec : Prop :=
  ∀ n, P7254508726076010801.a n = A184920 (n + 1)

end A184920

/-!
# A184921: a(n) = n+[r*n/s]+[t*n/s]+[u*n/s], where []=floor and r=2^(1/2), s=r+1, t=r+2, u=r+3.

The programs for A184921, the canonical program `A184921.P405514056550223549` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184921 has offset 1).

The definition of A184921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184921.P2127067850516015701

`floor((sqrt(8)+2)*(n+1))-1`
-/

namespace A184921.P2127067850516015701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (8 : ℝ) + 2) * (n + 1 : ℝ)⌋ - 1

end

end A184921.P2127067850516015701

namespace A184921

/-- `floor((sqrt(8)+2)*(n+1))-1` -/
def P2127067850516015701.Spec : Prop :=
  ∀ n, P2127067850516015701.a n = A184921 (n + 1)

end A184921

/-! ## A184921.P11246768847400322537

`abs(1-A197878(n+1))`
-/

namespace A184921.P11246768847400322537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A197878 (n + 1)|

end

end A184921.P11246768847400322537

namespace A184921

/-- `abs(1-A197878(n+1))` -/
def P11246768847400322537.Spec : Prop :=
  ∀ n, P11246768847400322537.a n = A184921 (n + 1)

end A184921

/-! ## A184921.P14447481497409350962

`abs(A190337(n+1)-(n+2))`
-/

namespace A184921.P14447481497409350962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A190337 (n + 1) - (n + 2 : ℤ)|

end

end A184921.P14447481497409350962

namespace A184921

/-- `abs(A190337(n+1)-(n+2))` -/
def P14447481497409350962.Spec : Prop :=
  ∀ n, P14447481497409350962.a n = A184921 (n + 1)

end A184921

/-! ## A184921.P7758724171458642877

`abs(2*n+3-A187393(n+1))`
-/

namespace A184921.P7758724171458642877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 3 : ℤ) - A187393 (n + 1)|

end

end A184921.P7758724171458642877

namespace A184921

/-- `abs(2*n+3-A187393(n+1))` -/
def P7758724171458642877.Spec : Prop :=
  ∀ n, P7758724171458642877.a n = A184921 (n + 1)

end A184921

/-! ## A184921.P1993674625757568999

`A000027(A197878(n+1)-1)`
-/

namespace A184921.P1993674625757568999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A197878 (n + 1) - 1).toNat

end

end A184921.P1993674625757568999

namespace A184921

/-- `A000027(A197878(n+1)-1)` -/
def P1993674625757568999.Spec : Prop :=
  ∀ n, P1993674625757568999.a n = A184921 (n + 1)

end A184921

/-! ## A184921.P12433790184896951957

`A000027(A190337(n+1)-(n+2))`
-/

namespace A184921.P12433790184896951957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A190337 (n + 1) - (n + 2 : ℤ)).toNat

end

end A184921.P12433790184896951957

namespace A184921

/-- `A000027(A190337(n+1)-(n+2))` -/
def P12433790184896951957.Spec : Prop :=
  ∀ n, P12433790184896951957.a n = A184921 (n + 1)

end A184921

/-! ## A184921.P405514056550223549

`A000027(A022842(n+1)+record[xor(1, n)])`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A184921

/-- `A000027(A022842(n+1)+record[xor(1, n)])` -/
def P405514056550223549.Spec : Prop :=
  ∀ n, P405514056550223549.a n = A184921 (n + 1)

theorem P405514056550223549.correct : P405514056550223549.Spec := by
  intro n
  simp only [A184921, Nat.add_sub_cancel]

end A184921

/-! ## A184921.P888724012261319543

`A000027(A022842(n+1)+2*n+1)`
-/

namespace A184921.P888724012261319543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A022842 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A184921.P888724012261319543

namespace A184921

/-- `A000027(A022842(n+1)+2*n+1)` -/
def P888724012261319543.Spec : Prop :=
  ∀ n, P888724012261319543.a n = A184921 (n + 1)

end A184921

/-! ## A184921.P10367691899901704630

`A286666(2*(n+1))`
-/

namespace A184921.P10367691899901704630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (2 * (n + 1))

end

end A184921.P10367691899901704630

namespace A184921

/-- `A286666(2*(n+1))` -/
def P10367691899901704630.Spec : Prop :=
  ∀ n, P10367691899901704630.a n = A184921 (n + 1)

end A184921

/-! ## A184921.P253111296230542689

`abs(1-A003151(2*(n+1)))`
-/

namespace A184921.P253111296230542689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A003151 (2 * (n + 1))|

end

end A184921.P253111296230542689

namespace A184921

/-- `abs(1-A003151(2*(n+1)))` -/
def P253111296230542689.Spec : Prop :=
  ∀ n, P253111296230542689.a n = A184921 (n + 1)

end A184921

/-! ## A184921.P5778310520677450679

`floor(A184922(2*(n+1))/sqrt(2))`
-/

namespace A184921.P5778310520677450679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184922 (2 * (n + 1)) : ℝ) / Real.sqrt (2 : ℝ)⌋

end

end A184921.P5778310520677450679

namespace A184921

/-- `floor(A184922(2*(n+1))/sqrt(2))` -/
def P5778310520677450679.Spec : Prop :=
  ∀ n, P5778310520677450679.a n = A184921 (n + 1)

end A184921

/-! ## A184921.P17562098182637938242

`∑[Δ[A001951(A004277(n))]+2]`
-/

namespace A184921.P17562098182637938242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A004277 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184921.P17562098182637938242

namespace A184921

/-- `∑[Δ[A001951(A004277(n))]+2]` -/
def P17562098182637938242.Spec : Prop :=
  ∀ n, P17562098182637938242.a n = A184921 (n + 1)

end A184921

/-! ## A184921.P13868328475379791744

`A000027(A001951(2*(n+1))+2*n+1)`
-/

namespace A184921.P13868328475379791744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A001951 (2 * (n + 1)) + (2 * n + 1 : ℤ)).toNat

end

end A184921.P13868328475379791744

namespace A184921

/-- `A000027(A001951(2*(n+1))+2*n+1)` -/
def P13868328475379791744.Spec : Prop :=
  ∀ n, P13868328475379791744.a n = A184921 (n + 1)

end A184921

/-! ## A184921.P3357893513642276025

`abs(A285075(2*n+3)-3)`
-/

namespace A184921.P3357893513642276025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A285075 (2 * n + 3) - 3|

end

end A184921.P3357893513642276025

namespace A184921

/-- `abs(A285075(2*n+3)-3)` -/
def P3357893513642276025.Spec : Prop :=
  ∀ n, P3357893513642276025.a n = A184921 (n + 1)

end A184921

/-! ## A184921.P9692617409548356401

`A000027(A285075(2*n+3)-3)`
-/

namespace A184921.P9692617409548356401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A285075 (2 * n + 3) - 3).toNat

end

end A184921.P9692617409548356401

namespace A184921

/-- `A000027(A285075(2*n+3)-3)` -/
def P9692617409548356401.Spec : Prop :=
  ∀ n, P9692617409548356401.a n = A184921 (n + 1)

end A184921

/-! ## A184921.P3398216780105283682

`A189573(floor(2*(n+1)*sqrt(2)))`
-/

namespace A184921.P3398216780105283682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189573 ⌊(2 * (n + 1) : ℝ) * Real.sqrt (2 : ℝ)⌋.toNat

end

end A184921.P3398216780105283682

namespace A184921

/-- `A189573(floor(2*(n+1)*sqrt(2)))` -/
def P3398216780105283682.Spec : Prop :=
  ∀ n, P3398216780105283682.a n = A184921 (n + 1)

end A184921

/-! ## A184921.P16764144962030457396

`A003152(A022842(n+1))`
-/

namespace A184921.P16764144962030457396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (A022842 (n + 1)).toNat

end

end A184921.P16764144962030457396

namespace A184921

/-- `A003152(A022842(n+1))` -/
def P16764144962030457396.Spec : Prop :=
  ∀ n, P16764144962030457396.a n = A184921 (n + 1)

end A184921

/-! ## A184921.P310203853348336030

`A003152(A001951(2*(n+1)))`
-/

namespace A184921.P310203853348336030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (A001951 (2 * (n + 1))).toNat

end

end A184921.P310203853348336030

namespace A184921

/-- `A003152(A001951(2*(n+1)))` -/
def P310203853348336030.Spec : Prop :=
  ∀ n, P310203853348336030.a n = A184921 (n + 1)

end A184921

/-! ## A184921.P10909700429789596550

`A003152(A087057(2*(n+1))-1)`
-/

namespace A184921.P10909700429789596550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (A087057 (2 * (n + 1)) - 1).toNat

end

end A184921.P10909700429789596550

namespace A184921

/-- `A003152(A087057(2*(n+1))-1)` -/
def P10909700429789596550.Spec : Prop :=
  ∀ n, P10909700429789596550.a n = A184921 (n + 1)

end A184921

/-! ## A184921.P2277376785794626666

`A003152(A197878(n+1)-2*(n+1))`
-/

namespace A184921.P2277376785794626666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (A197878 (n + 1) - (2 * (n + 1) : ℤ)).toNat

end

end A184921.P2277376785794626666

namespace A184921

/-- `A003152(A197878(n+1)-2*(n+1))` -/
def P2277376785794626666.Spec : Prop :=
  ∀ n, P2277376785794626666.a n = A184921 (n + 1)

end A184921

/-!
# A184922: a(n) = n + [rn/t] + [sn/t] + [un/t], where []=floor and r=2^(1/2), s=r+1, t=r+2, u=r+3.

The programs for A184922, the canonical program `A184922.P3022455773076834712` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184922 has offset 1).

The definition of A184922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184922.P3022455773076834712

`floor((n+1)*(2+sqrt(2)))-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A184922

/-- `floor((n+1)*(2+sqrt(2)))-1` -/
def P3022455773076834712.Spec : Prop :=
  ∀ n, P3022455773076834712.a n = A184922 (n + 1)

theorem P3022455773076834712.correct : P3022455773076834712.Spec := by
  intro n
  simp only [A184922, Nat.add_sub_cancel]

end A184922

/-! ## A184922.P15903923379885958741

`xor(-comp[floor(n*sqrt(2))], -1)`
-/

namespace A184922.P15903923379885958741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)) (-1)

end

end A184922.P15903923379885958741

namespace A184922

/-- `xor(-comp[floor(n*sqrt(2))], -1)` -/
def P15903923379885958741.Spec : Prop :=
  ∀ n, P15903923379885958741.a n = A184922 (n + 1)

end A184922

/-! ## A184922.P16498968706226536148

`ceil(2*(sqrt(∑[or(1, n)])+n))`
-/

namespace A184922.P16498968706226536148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (n : ℝ))⌉

end

end A184922.P16498968706226536148

namespace A184922

/-- `ceil(2*(sqrt(∑[or(1, n)])+n))` -/
def P16498968706226536148.Spec : Prop :=
  ∀ n, P16498968706226536148.a n = A184922 (n + 1)

end A184922

/-! ## A184922.P6707757969664328346

`floor(comp[lcm(2, n)]+(n+1)*sqrt(2))`
-/

namespace A184922.P6707757969664328346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ) + (n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

end

end A184922.P6707757969664328346

namespace A184922

/-- `floor(comp[lcm(2, n)]+(n+1)*sqrt(2))` -/
def P6707757969664328346.Spec : Prop :=
  ∀ n, P6707757969664328346.a n = A184922 (n + 1)

end A184922

/-! ## A184922.P11512661161790436790

`floor(xor(1, 2*n)+(n+1)*sqrt(2))`
-/

namespace A184922.P11512661161790436790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 (2 * n) : ℝ) + (n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

end

end A184922.P11512661161790436790

namespace A184922

/-- `floor(xor(1, 2*n)+(n+1)*sqrt(2))` -/
def P11512661161790436790.Spec : Prop :=
  ∀ n, P11512661161790436790.a n = A184922 (n + 1)

end A184922

/-! ## A184922.P12440019833198359717

`floor((a(n-1)+5)/sqrt(2)+n)` with `a(0)=2`
-/

namespace A184922.P12440019833198359717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(a (n - 1) + 5 : ℝ) / Real.sqrt (2 : ℝ) + (n : ℝ)⌋

end

end A184922.P12440019833198359717

namespace A184922

/-- `floor((a(n-1)+5)/sqrt(2)+n)` -/
def P12440019833198359717.Spec : Prop :=
  ∀ n, P12440019833198359717.a n = A184922 (n + 1)

end A184922

/-! ## A184922.P8339262246313785873

`floor(A286690(n+1)/2)`
-/

namespace A184922.P8339262246313785873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A286690 (n + 1) : ℚ) / 2⌋

end

end A184922.P8339262246313785873

namespace A184922

/-- `floor(A286690(n+1)/2)` -/
def P8339262246313785873.Spec : Prop :=
  ∀ n, P8339262246313785873.a n = A184922 (n + 1)

end A184922

/-!
# A184924: n+[sn/r]+[tn/r]+[un/r], where []=floor and r=1, s=sqrt(3), t=sqrt(5), u=sqrt(7).

The programs for A184924, there is no canonical definition to state claims against.
-/

/-! ## A184924.P3518374721787802734

`A329987(A330003(n+1))-A081117(n)`
-/

namespace A184924.P3518374721787802734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329987 (A330003 (n + 1)).toNat - A081117 n

end

end A184924.P3518374721787802734

/-! ## A184924.P7738085323841584184

`A004771(n)-A043562(A083374(n+1))`
-/

namespace A184924.P7738085323841584184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n - A043562 (A083374 (n + 1)).toNat

end

end A184924.P7738085323841584184

/-! ## A184924.P11201106252063980555

`A017137(n)-A001222(A243795(n+1))`
-/

namespace A184924.P11201106252063980555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017137 n - A001222 (A243795 (n + 1)).toNat

end

end A184924.P11201106252063980555

/-! ## A184924.P10959692273514385889

`A288205(2*(n+1))+A288203(A095451(n+1))`
-/

namespace A184924.P10959692273514385889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288205 (2 * (n + 1)) + A288203 (A095451 (n + 1)).toNat

end

end A184924.P10959692273514385889

/-! ## A184924.P682645881178616576

`A318962(A080857(n))+A075325(3*(n+1))`
-/

namespace A184924.P682645881178616576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318962 (A080857 n).toNat + A075325 (3 * (n + 1))

end

end A184924.P682645881178616576

/-!
# A184925: n+[rn/s]+[tn/s]+[un/s], where []=floor and r=1, s=sqrt(3), t=sqrt(5), u=sqrt(7).

The programs for A184925, there is no canonical definition to state claims against.
-/

/-! ## A184925.P8330067920996039785

`A292662(n+1)+A000120(A001045(n))`
-/

namespace A184925.P8330067920996039785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292662 (n + 1) + A000120 (A001045 n).toNat

end

end A184925.P8330067920996039785

/-! ## A184925.P14815175292973362891

`A292662(n+1)+A004526(A187829(n+1))`
-/

namespace A184925.P14815175292973362891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292662 (n + 1) + A004526 (A187829 (n + 1)).toNat

end

end A184925.P14815175292973362891

/-! ## A184925.P8187041978706399245

`A292662(n+1)+A000120(A000975(n))`
-/

namespace A184925.P8187041978706399245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292662 (n + 1) + A000120 (A000975 n).toNat

end

end A184925.P8187041978706399245

/-! ## A184925.P17831870320645847165

`A184398(A014132(n+1)+A004906(n+1))`
-/

namespace A184925.P17831870320645847165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184398 (A014132 (n + 1) + A004906 (n + 1)).toNat

end

end A184925.P17831870320645847165

/-! ## A184925.P11126349857423070266

`A169865(2*n+1)-(A077619(n+3)-2)`
-/

namespace A184925.P11126349857423070266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169865 (2 * n + 1) - (A077619 (n + 3) - 2)

end

end A184925.P11126349857423070266

/-!
# A184926: n+[rn/t]+[sn/t]+[un/t], where []=floor and r=1, s=sqrt(3), t=sqrt(5), u=sqrt(7).

The programs for A184926, there is no canonical definition to state claims against.
-/

/-! ## A184926.P1918519372902180714

`A102352(A072154(n)+n)`
-/

namespace A184926.P1918519372902180714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102352 (A072154 n + (n : ℤ)).toNat

end

end A184926.P1918519372902180714

/-! ## A184926.P14822735396915143727

`A102352(A008706(n)-comp[or(2, n)+n])`
-/

namespace A184926.P14822735396915143727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102352 (A008706 n - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A184926.P14822735396915143727

/-! ## A184926.P8727158953054705311

`A102352(A315187(n)-A047363(n+1))`
-/

namespace A184926.P8727158953054705311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102352 (A315187 n - A047363 (n + 1)).toNat

end

end A184926.P8727158953054705311

/-! ## A184926.P9143214485963557322

`A056556(A000217(3*n+2)*A005117(n+2))`
-/

namespace A184926.P9143214485963557322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A000217 (3 * n + 2) * A005117 (n + 2)).toNat

end

end A184926.P9143214485963557322

/-!
# A184927: n+[rn/u]+[sn/u]+[tn/u], where []=floor and r=1, s=sqrt(3), t=sqrt(5), u=sqrt(7).

The programs for A184927, there is no canonical definition to state claims against.
-/

/-! ## A184927.P13750306032763766110

`3*n+1-A025458(A085431(n+1))`
-/

namespace A184927.P13750306032763766110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - A025458 (A085431 (n + 1)).toNat

end

end A184927.P13750306032763766110

/-! ## A184927.P1309379289628642468

`A153329(A300064(n+1)+A187829(n+1))`
-/

namespace A184927.P1309379289628642468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153329 (A300064 (n + 1) + A187829 (n + 1)).toNat

end

end A184927.P1309379289628642468

/-! ## A184927.P8903160246051333171

`A043562(A140504(n))+A004957(n)`
-/

namespace A184927.P8903160246051333171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A140504 n).toNat + A004957 n

end

end A184927.P8903160246051333171

/-! ## A184927.P10777592000466526593

`A043562(A146528(n))+A004957(n)`
-/

namespace A184927.P10777592000466526593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A146528 n).toNat + A004957 n

end

end A184927.P10777592000466526593

/-! ## A184927.P15017589874210946766

`3*n+A071035(A107764(n+1))`
-/

namespace A184927.P15017589874210946766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + A071035 (A107764 (n + 1)).toNat

end

end A184927.P15017589874210946766

/-!
# A184928: a(n) = n + [sn/r] + [tn/r] + [un/r], where []=floor and r=sin(Pi/2), s=sin(Pi/3), t=sin(Pi/4), u=sin(Pi/5).

The programs for A184928, there is no canonical definition to state claims against.
-/

/-! ## A184928.P9054940116166038388

`A062389(n+1)+A010051(A019276(n+1))`
-/

namespace A184928.P9054940116166038388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (n + 1) + A010051 (A019276 (n + 1)).toNat

end

end A184928.P9054940116166038388

/-! ## A184928.P3615818865073258428

`A189367(A187829(n+1))+A074840(n+1)`
-/

namespace A184928.P3615818865073258428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189367 (A187829 (n + 1)).toNat + A074840 (n + 1)

end

end A184928.P3615818865073258428

/-! ## A184928.P350618330208886917

`A184919(n+1)+A086075(A211795(n))`
-/

namespace A184928.P350618330208886917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184919 (n + 1) + A086075 (A211795 n).toNat

end

end A184928.P350618330208886917

/-! ## A184928.P425633716064559944

`A189472(n+1)-A154272(A318870(n))`
-/

namespace A184928.P425633716064559944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189472 (n + 1) - A154272 (A318870 n).toNat

end

end A184928.P425633716064559944

/-!
# A184929: a(n) = n + [rn/s] + [tn/s] + [un/s], where []=floor and r=sin(Pi/2), s=sin(Pi/3), t=sin(Pi/4), u=sin(Pi/5).

The programs for A184929, there is no canonical definition to state claims against.
-/

/-! ## A184929.P17003424901458318557

`A187582(2*(n+1))+A057428(A038124(3*n+1))`
-/

namespace A184929.P17003424901458318557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187582 (2 * (n + 1)) + A057428 (A038124 (3 * n + 1)).toNat

end

end A184929.P17003424901458318557

/-! ## A184929.P13686073795854041192

`A187582(2*n+3)-A175064(A172278(2*(n+2)))`
-/

namespace A184929.P13686073795854041192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187582 (2 * n + 3) - A175064 (A172278 (2 * (n + 2))).toNat

end

end A184929.P13686073795854041192

/-! ## A184929.P15844440932980156282

`A187582(2*n+3)-A175064(A005049(3*(n+2)))`
-/

namespace A184929.P15844440932980156282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187582 (2 * n + 3) - A175064 (A005049 (3 * (n + 2))).toNat

end

end A184929.P15844440932980156282

/-! ## A184929.P15515269614799419562

`A187582(2*n+3)-A000005(A056208(n))`
-/

namespace A184929.P15515269614799419562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187582 (2 * n + 3) - A000005 (A056208 n).toNat

end

end A184929.P15515269614799419562

/-!
# A184930: a(n) = n + [rn/t] + [sn/t] + [un/t], where []=floor and r=sin(Pi/2), s=sin(Pi/3), t=sin(Pi/4), u=sin(Pi/5).

The programs for A184930, there is no canonical definition to state claims against.
-/

/-! ## A184930.P12242410903103349825

`A252459(A283477(n))+A189797(n+1)`
-/

namespace A184930.P12242410903103349825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252459 (A283477 n).toNat + A189797 (n + 1)

end

end A184930.P12242410903103349825

/-! ## A184930.P3319088790059459859

`A085516(3*n+4)+A047412(n+1)-char[A265227(n+1)]`
-/

namespace A184930.P3319088790059459859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (3 * n + 4) + (A047412 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A184930.P3319088790059459859

/-! ## A184930.P9836179575266248961

`A376651(n+1)-A328248(A330058(n)+A302545(n))`
-/

namespace A184930.P9836179575266248961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376651 (n + 1) - A328248 (A330058 n + A302545 n).toNat

end

end A184930.P9836179575266248961

/-! ## A184930.P4238043672981727871

`A376651(n+1)-A328248(2*A318395(n)-A316983(n))`
-/

namespace A184930.P4238043672981727871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376651 (n + 1) - A328248 (2 * A318395 n - A316983 n).toNat

end

end A184930.P4238043672981727871

/-! ## A184930.P6297031603909546970

`A313719(n)+A000034(A215333(n))`
-/

namespace A184930.P6297031603909546970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313719 n + A000034 (A215333 n).toNat

end

end A184930.P6297031603909546970

/-!
# A184931: a(n) = n + [rn/u] + [sn/u] + [tn/u], where []=floor and r=sin(Pi/2), s=sin(Pi/3), t=sin(Pi/4), u=sin(Pi/5).

The programs for A184931, there is no canonical definition to state claims against.
-/

/-! ## A184931.P322070357209267144

`A016957(n)-A179751(A007179(n))`
-/

namespace A184931.P322070357209267144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n - A179751 (A007179 n).toNat

end

end A184931.P322070357209267144

/-! ## A184931.P17548513839718680381

`A126281(2*n+3)-A000034(A002808(n+1))`
-/

namespace A184931.P17548513839718680381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126281 (2 * n + 3) - A000034 (A002808 (n + 1)).toNat

end

end A184931.P17548513839718680381

/-! ## A184931.P14963212062398091477

`A093700(A135358(n+1)-A093700(n+1))+n`
-/

namespace A184931.P14963212062398091477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093700 (A135358 (n + 1) - A093700 (n + 1)).toNat + (n : ℤ)

end

end A184931.P14963212062398091477

/-! ## A184931.P7339616663619202163

`A126281(2*n+3)-A000034(A331443(2*(n+2)))`
-/

namespace A184931.P7339616663619202163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126281 (2 * n + 3) - A000034 (A331443 (2 * (n + 2))).toNat

end

end A184931.P7339616663619202163

/-! ## A184931.P6784362775803762673

`A093700(A187391(n+1)-A093700(n+1))+n`
-/

namespace A184931.P6784362775803762673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093700 (A187391 (n + 1) - A093700 (n + 1)).toNat + (n : ℤ)

end

end A184931.P6784362775803762673

/-!
# A184932: E.g.f. satisfies (1-x*A(x))*A(x*e^x)=1.

The programs for A184932, there is no canonical definition to state claims against.
-/

/-! ## A184932.P11920111104900973981

`A002330(∏[∏{p}[2^n-2, #]])`
-/

namespace A184932.P11920111104900973981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A184932.P11920111104900973981

/-! ## A184932.P18060261926707688405

`A162306(A279375(n²))`
-/

namespace A184932.P18060261926707688405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162306 (A279375 (n ^ 2)).toNat

end

end A184932.P18060261926707688405

/-!
# A184934: E.g.f. satisfies A(x^2+sin(x))=e^(x*A(x)).

The programs for A184934, there is no canonical definition to state claims against.
-/

/-! ## A184934.P5174422811950559928

`2-A103728(A152981(n))`
-/

namespace A184934.P5174422811950559928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A103728 (A152981 n).toNat

end

end A184934.P5174422811950559928

/-! ## A184934.P4585758183695443474

`A119560(A119532(gcd(n+2, C(8, n²))))`
-/

namespace A184934.P4585758183695443474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119560 (A119532 (Nat.gcd (n + 2) (Nat.choose 8 (n ^ 2)))).toNat

end

end A184934.P4585758183695443474

/-!
# A184935: Primes of the form k^2 + prime(k).

The programs for A184935, there is no canonical definition to state claims against.
-/

/-! ## A184935.P9123503388810506199

`A253971(n+1)+A064711(n+1)²`
-/

namespace A184935.P9123503388810506199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253971 (n + 1) + A064711 (n + 1) ^ 2

end

end A184935.P9123503388810506199

/-! ## A184935.P11869043155310537044

`A004232(A064711(n+1))`
-/

namespace A184935.P11869043155310537044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004232 (A064711 (n + 1)).toNat

end

end A184935.P11869043155310537044

/-! ## A184935.P1009951438640048124

`A008578(A064711(n+1)+1)+A064711(n+1)²`
-/

namespace A184935.P1009951438640048124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A064711 (n + 1) + 1).toNat + A064711 (n + 1) ^ 2

end

end A184935.P1009951438640048124

/-! ## A184935.P15393422848139827329

`A158611(A064711(n+1)+2)+A064711(n+1)²`
-/

namespace A184935.P15393422848139827329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A064711 (n + 1) + 2).toNat + A064711 (n + 1) ^ 2

end

end A184935.P15393422848139827329

/-! ## A184935.P7892705524248930419

`A073846(2*A064711(n+1))+A064711(n+1)²`
-/

namespace A184935.P7892705524248930419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A064711 (n + 1)).toNat + A064711 (n + 1) ^ 2

end

end A184935.P7892705524248930419

/-! ## A184935.P16356050993345906133

`A082500(2*A064711(n+1))+A064711(n+1)²`
-/

namespace A184935.P16356050993345906133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A064711 (n + 1)).toNat + A064711 (n + 1) ^ 2

end

end A184935.P16356050993345906133

/-! ## A184935.P15148317484458882645

`p?[p?[comp[n²]]+(n+1)²]`
-/

namespace A184935.P15148317484458882645
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A184935.P15148317484458882645

/-! ## A184935.P2323840323592591130

`p?[A004232(n+1)]`
-/

namespace A184935.P2323840323592591130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A184935.P2323840323592591130

/-! ## A184935.P11987262649031554483

`p?[A008578(n+1)+n²]`
-/

namespace A184935.P11987262649031554483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A184935.P11987262649031554483

/-! ## A184935.P17787250787917868808

`p?[A182986(n+1)+n²]`
-/

namespace A184935.P17787250787917868808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A184935.P17787250787917868808

/-!
# A184936: O.g.f. satisfies A(x/(1-x)) = 1/(1-x*A(x)-x^2*A(x)^2).

The programs for A184936, there is no canonical definition to state claims against.
-/

/-! ## A184936.P9049258769439678345

`A301706(n+1)-A318584(A344294(n+1))`
-/

namespace A184936.P9049258769439678345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301706 (n + 1) - A318584 (A344294 (n + 1)).toNat

end

end A184936.P9049258769439678345

/-! ## A184936.P13074497382831750998

`floor(root(∑[A002880(3*(n+3))], 5))`
-/

namespace A184936.P13074497382831750998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002880 (3 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A184936.P13074497382831750998

/-! ## A184936.P11590573938750005608

`A276581(A110886(n))`
-/

namespace A184936.P11590573938750005608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A110886 n).toNat

end

end A184936.P11590573938750005608

/-! ## A184936.P15698469044928307943

`A026819(∑[A006177(n+1)])`
-/

namespace A184936.P15698469044928307943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A184936.P15698469044928307943

/-! ## A184936.P12753716082238765461

`∑[A003056(A091151(n))]-n`
-/

namespace A184936.P12753716082238765461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A091151 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A184936.P12753716082238765461

/-!
# A184937: a(n) = binomial(2n, n) + binomial(2n-1, n-1) + binomial(2n+1, n).

The programs for A184937, the canonical program `A184937.P4249525031833234534` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184937 has offset 0).

The definition of A184937 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088218, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A184937.P4249525031833234534

`A000984(n)+A088218(n)+A088218(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A184937

/-- `A000984(n)+A088218(n)+A088218(n+1)` -/
def P4249525031833234534.Spec : Prop :=
  ∀ n, P4249525031833234534.a n = A184937 n

theorem P4249525031833234534.correct : P4249525031833234534.Spec := by
  intro n
  simp only [A184937]

end A184937

/-! ## A184937.P16377158649287710893

`record[a(n-1)/(floor(n/2)/n-1)]+∏[4-2/(n+1)]/2` with `a(0)=2, a(1)=3`
-/

namespace A184937.P16377158649287710893
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (∏ j ∈ Finset.range (n + 1), f2 j) / 2

end

end A184937.P16377158649287710893

namespace A184937

/-- `record[a(n-1)/(floor(n/2)/n-1)]+∏[4-2/(n+1)]/2` -/
def P16377158649287710893.Spec : Prop :=
  ∀ n, P16377158649287710893.a n = (A184937 n : ℚ)

end A184937

/-! ## A184937.P6356659502561791472

`(C(2, n+2)+7*n+5)/2*A000108(n)`
-/

namespace A184937.P6356659502561791472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) + (7 * n + 5) : ℚ) / 2 * (A000108 n : ℚ)

end

end A184937.P6356659502561791472

namespace A184937

/-- `(C(2, n+2)+7*n+5)/2*A000108(n)` -/
def P6356659502561791472.Spec : Prop :=
  ∀ n, P6356659502561791472.a n = (A184937 n : ℚ)

end A184937

/-! ## A184937.P11795693470574951468

`A088218(n)+A051960(n)`
-/

namespace A184937.P11795693470574951468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n + A051960 n

end

end A184937.P11795693470574951468

namespace A184937

/-- `A088218(n)+A051960(n)` -/
def P11795693470574951468.Spec : Prop :=
  ∀ n, P11795693470574951468.a n = A184937 n

end A184937

/-! ## A184937.P4242676974443292710

`A240530(n)-A189176(n)`
-/

namespace A184937.P4242676974443292710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240530 n - A189176 n

end

end A184937.P4242676974443292710

namespace A184937

/-- `A240530(n)-A189176(n)` -/
def P4242676974443292710.Spec : Prop :=
  ∀ n, P4242676974443292710.a n = A184937 n

end A184937

/-! ## A184937.P17988644262281883905

`Δ[A029651(n)]-A276666(n)`
-/

namespace A184937.P17988644262281883905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A276666 n

end

end A184937.P17988644262281883905

namespace A184937

/-- `Δ[A029651(n)]-A276666(n)` -/
def P17988644262281883905.Spec : Prop :=
  ∀ n, P17988644262281883905.a n = A184937 n

end A184937

/-! ## A184937.P17532627100540406374

`A097613(n+1)+A028329(n)`
-/

namespace A184937.P17532627100540406374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097613 (n + 1) + A028329 n

end

end A184937.P17532627100540406374

namespace A184937

/-- `A097613(n+1)+A028329(n)` -/
def P17532627100540406374.Spec : Prop :=
  ∀ n, P17532627100540406374.a n = A184937 n

end A184937

/-! ## A184937.P10370162945548691079

`A053368(n)-A129869(n+1)`
-/

namespace A184937.P10370162945548691079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053368 n - A129869 (n + 1)

end

end A184937.P10370162945548691079

namespace A184937

/-- `A053368(n)-A129869(n+1)` -/
def P10370162945548691079.Spec : Prop :=
  ∀ n, P10370162945548691079.a n = A184937 n

end A184937

/-! ## A184937.P4097779073638296925

`A165205(n)+2*A088218(n)`
-/

namespace A184937.P4097779073638296925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165205 n + 2 * A088218 n

end

end A184937.P4097779073638296925

namespace A184937

/-- `A165205(n)+2*A088218(n)` -/
def P4097779073638296925.Spec : Prop :=
  ∀ n, P4097779073638296925.a n = A184937 n

end A184937

/-! ## A184937.P10133828221000109804

`2*A051960(n)-A165205(n)`
-/

namespace A184937.P10133828221000109804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051960 n - A165205 n

end

end A184937.P10133828221000109804

namespace A184937

/-- `2*A051960(n)-A165205(n)` -/
def P10133828221000109804.Spec : Prop :=
  ∀ n, P10133828221000109804.a n = A184937 n

end A184937

/-! ## A184937.P11902957250819412675

`2*A028329(n)-A189176(n)`
-/

namespace A184937.P11902957250819412675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028329 n - A189176 n

end

end A184937.P11902957250819412675

namespace A184937

/-- `2*A028329(n)-A189176(n)` -/
def P11902957250819412675.Spec : Prop :=
  ∀ n, P11902957250819412675.a n = A184937 n

end A184937

/-! ## A184937.P18129197685942481252

`A097613(n+1)+2*A000984(n)`
-/

namespace A184937.P18129197685942481252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097613 (n + 1) + 2 * A000984 n

end

end A184937.P18129197685942481252

namespace A184937

/-- `A097613(n+1)+2*A000984(n)` -/
def P18129197685942481252.Spec : Prop :=
  ∀ n, P18129197685942481252.a n = A184937 n

end A184937

/-! ## A184937.P14225915689270723184

`A097613(n+1)+A047073(2*n+1)`
-/

namespace A184937.P14225915689270723184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097613 (n + 1) + A047073 (2 * n + 1)

end

end A184937.P14225915689270723184

namespace A184937

/-- `A097613(n+1)+A047073(2*n+1)` -/
def P14225915689270723184.Spec : Prop :=
  ∀ n, P14225915689270723184.a n = A184937 n

end A184937

/-! ## A184937.P7508363101416678357

`A097613(n+1)+A063886(2*n+1)`
-/

namespace A184937.P7508363101416678357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097613 (n + 1) + A063886 (2 * n + 1)

end

end A184937.P7508363101416678357

namespace A184937

/-- `A097613(n+1)+A063886(2*n+1)` -/
def P7508363101416678357.Spec : Prop :=
  ∀ n, P7508363101416678357.a n = A184937 n

end A184937

/-! ## A184937.P7424107631313452907

`A050168(A004277(n))+A001700(n)`
-/

namespace A184937.P7424107631313452907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 (A004277 n).toNat + A001700 n

end

end A184937.P7424107631313452907

namespace A184937

/-- `A050168(A004277(n))+A001700(n)` -/
def P7424107631313452907.Spec : Prop :=
  ∀ n, P7424107631313452907.a n = A184937 n

end A184937

/-! ## A184937.P6535333943639425068

`A051960(n)+A001405(A004273(n))`
-/

namespace A184937.P6535333943639425068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051960 n + A001405 (A004273 n).toNat

end

end A184937.P6535333943639425068

namespace A184937

/-- `A051960(n)+A001405(A004273(n))` -/
def P6535333943639425068.Spec : Prop :=
  ∀ n, P6535333943639425068.a n = A184937 n

end A184937

/-! ## A184937.P2003825146341556519

`A000984(n)+A088218(n)+A001700(n)`
-/

namespace A184937.P2003825146341556519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A088218 n + A001700 n)

end

end A184937.P2003825146341556519

namespace A184937

/-- `A000984(n)+A088218(n)+A001700(n)` -/
def P2003825146341556519.Spec : Prop :=
  ∀ n, P2003825146341556519.a n = A184937 n

end A184937

/-! ## A184937.P894054866430381520

`A050168(A004277(n))+A001405(2*n+1)`
-/

namespace A184937.P894054866430381520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 (A004277 n).toNat + A001405 (2 * n + 1)

end

end A184937.P894054866430381520

namespace A184937

/-- `A050168(A004277(n))+A001405(2*n+1)` -/
def P894054866430381520.Spec : Prop :=
  ∀ n, P894054866430381520.a n = A184937 n

end A184937

/-! ## A184937.P1785650753026155027

`A001405(2*n+1)+A210736(2*n)+A001405(2*n)`
-/

namespace A184937.P1785650753026155027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n + 1) + (A210736 (2 * n) + A001405 (2 * n))

end

end A184937.P1785650753026155027

namespace A184937

/-- `A001405(2*n+1)+A210736(2*n)+A001405(2*n)` -/
def P1785650753026155027.Spec : Prop :=
  ∀ n, P1785650753026155027.a n = A184937 n

end A184937

/-! ## A184937.P10186608770907502679

`A126930(2*n)+A210736(2*n)-A126930(2*n+1)`
-/

namespace A184937.P10186608770907502679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (2 * n) + (A210736 (2 * n) - A126930 (2 * n + 1))

end

end A184937.P10186608770907502679

namespace A184937

/-- `A126930(2*n)+A210736(2*n)-A126930(2*n+1)` -/
def P10186608770907502679.Spec : Prop :=
  ∀ n, P10186608770907502679.a n = A184937 n

end A184937

/-!
# A184939: From the base sequence of the positive integers, keep the first two, remove the next three, keep the next five, remove the next seven, ..., block lengths determined by the prime numbers.

The programs for A184939, the canonical program `A184939.P17998620125503061143` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184939 has offset 1).

The definition of A184939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184939.P17998620125503061143

`eq[1, A083375(n+1)%2]+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A184939

/-- `eq[1, A083375(n+1)%2]+1` -/
def P17998620125503061143.Spec : Prop :=
  ∀ n, (P17998620125503061143.a n : ℤ) = A184939 (n + 1)

theorem P17998620125503061143.correct : P17998620125503061143.Spec := by
  intro n
  simp only [A184939, Nat.add_sub_cancel]

end A184939

/-! ## A184939.P13654705695561089613

`eq[1, A193732(n+1)%2]+1`
-/

namespace A184939.P13654705695561089613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193732 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184939.P13654705695561089613

namespace A184939

/-- `eq[1, A193732(n+1)%2]+1` -/
def P13654705695561089613.Spec : Prop :=
  ∀ n, (P13654705695561089613.a n : ℤ) = A184939 (n + 1)

end A184939

/-! ## A184939.P17195866328435452013

`eq[1, A001511(A193732(n+1))]+1`
-/

namespace A184939.P17195866328435452013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A193732 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184939.P17195866328435452013

namespace A184939

/-- `eq[1, A001511(A193732(n+1))]+1` -/
def P17195866328435452013.Spec : Prop :=
  ∀ n, (P17195866328435452013.a n : ℤ) = A184939 (n + 1)

end A184939

/-! ## A184939.P1108617078700569929

`eq[A174296(A037125(n+1)), A174296(n)]`
-/

namespace A184939.P1108617078700569929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174296 (A037125 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174296 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184939.P1108617078700569929

namespace A184939

/-- `eq[A174296(A037125(n+1)), A174296(n)]` -/
def P1108617078700569929.Spec : Prop :=
  ∀ n, (P1108617078700569929.a n : ℤ) = A184939 (n + 1)

end A184939

/-! ## A184939.P16081183977952814140

`lt[A124770(n), A019431(A193732(n+1))]+1`
-/

namespace A184939.P16081183977952814140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124770 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 (A193732 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A184939.P16081183977952814140

namespace A184939

/-- `lt[A124770(n), A019431(A193732(n+1))]+1` -/
def P16081183977952814140.Spec : Prop :=
  ∀ n, (P16081183977952814140.a n : ℤ) = A184939 (n + 1)

end A184939

/-! ## A184939.P5470542772115178631

`lt[A006093(n+1), A019431(A193732(n+1))]+1`
-/

namespace A184939.P5470542772115178631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 (A193732 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A184939.P5470542772115178631

namespace A184939

/-- `lt[A006093(n+1), A019431(A193732(n+1))]+1` -/
def P5470542772115178631.Spec : Prop :=
  ∀ n, (P5470542772115178631.a n : ℤ) = A184939 (n + 1)

end A184939

/-! ## A184939.P15696552812202498089

`lt[A039011(n+1), A019431(A193732(n+1))]+1`
-/

namespace A184939.P15696552812202498089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 (A193732 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A184939.P15696552812202498089

namespace A184939

/-- `lt[A039011(n+1), A019431(A193732(n+1))]+1` -/
def P15696552812202498089.Spec : Prop :=
  ∀ n, (P15696552812202498089.a n : ℤ) = A184939 (n + 1)

end A184939

/-! ## A184939.P4507115805899880713

`lt[0, A345290(A345297(n+1))]`
-/

namespace A184939.P4507115805899880713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345290 (A345297 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A184939.P4507115805899880713

namespace A184939

/-- `lt[0, A345290(A345297(n+1))]` -/
def P4507115805899880713.Spec : Prop :=
  ∀ n, (P4507115805899880713.a n : ℤ) = A184939 (n + 1)

end A184939

/-! ## A184939.P2681754497414644210

`filter[n+1, A138149(#)]`
-/

namespace A184939.P2681754497414644210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A138149 (f1 j) = 1) n)

end

end A184939.P2681754497414644210

namespace A184939

/-- `filter[n+1, A138149(#)]` -/
def P2681754497414644210.Spec : Prop :=
  ∀ n, (P2681754497414644210.a n : ℤ) = A184939 (n + 1)

end A184939

/-! ## A184939.P12876935033054561942

`eq[1, A138149(n+1)]+1`
-/

namespace A184939.P12876935033054561942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138149 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184939.P12876935033054561942

namespace A184939

/-- `eq[1, A138149(n+1)]+1` -/
def P12876935033054561942.Spec : Prop :=
  ∀ n, (P12876935033054561942.a n : ℤ) = A184939 (n + 1)

end A184939

/-!
# A184940: Irregular triangle C(n,g) counting the connected 4-regular simple graphs on n vertices with girth exactly g.

The programs for A184940, there is no canonical definition to state claims against.
-/

/-! ## A184940.P4403864448593472379

`A185140(n+5)-A011731(A185134(n))`
-/

namespace A184940.P4403864448593472379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185140 (n + 5) - A011731 (A185134 n).toNat

end

end A184940.P4403864448593472379

/-! ## A184940.P8442090812718901866

`A185140(n+5)-A230106(A185034(n))`
-/

namespace A184940.P8442090812718901866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185140 (n + 5) - A230106 (A185034 n).toNat

end

end A184940.P8442090812718901866

/-! ## A184940.P3327353392467267552

`A185140(n+5)-A230106(A185234(n))`
-/

namespace A184940.P3327353392467267552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185140 (n + 5) - A230106 (A185234 n).toNat

end

end A184940.P3327353392467267552

/-! ## A184940.P1875624870118388846

`A185140(n+5)-A011731(A185334(n)-A185335(n))`
-/

namespace A184940.P1875624870118388846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185140 (n + 5) - A011731 (A185334 n - A185335 n).toNat

end

end A184940.P1875624870118388846

/-!
# A184941: Irregular triangle C(n,g) counting the connected 4-regular simple graphs on n vertices with girth at least g.

The programs for A184941, there is no canonical definition to state claims against.
-/

/-! ## A184941.P10634930023509460078

`A185140(n+5)+A011731(A126274(n))`
-/

namespace A184941.P10634930023509460078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185140 (n + 5) + A011731 (A126274 n).toNat

end

end A184941.P10634930023509460078

/-! ## A184941.P5417996942956586165

`A185340(n+5)-A011731(A185134(n))`
-/

namespace A184941.P5417996942956586165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185340 (n + 5) - A011731 (A185134 n).toNat

end

end A184941.P5417996942956586165

/-! ## A184941.P6098252269966073767

`A185340(n+5)-A230106(A185034(n))`
-/

namespace A184941.P6098252269966073767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185340 (n + 5) - A230106 (A185034 n).toNat

end

end A184941.P6098252269966073767

/-! ## A184941.P2637871259225082974

`A185340(n+5)-A230106(A185234(n))`
-/

namespace A184941.P2637871259225082974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185340 (n + 5) - A230106 (A185234 n).toNat

end

end A184941.P2637871259225082974

/-! ## A184941.P7171509050067996486

`A011731(A126274(n))+A184940(n+5)+A011731(n²)`
-/

namespace A184941.P7171509050067996486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011731 (A126274 n).toNat + (A184940 (n + 5) + A011731 (n ^ 2))

end

end A184941.P7171509050067996486

/-!
# A184942: Expansion of e.g.f. 1/( cos(log(1-x)) + sin(log(1-x)) ).

The programs for A184942, there is no canonical definition to state claims against.
-/

/-! ## A184942.P766028372568229152

`A346968(n)+A184955(∑[n])`
-/

namespace A184942.P766028372568229152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346968 n + A184955 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184942.P766028372568229152

/-! ## A184942.P6573937243451275077

`A188040(A188046(n*a(n-1)))` with `a(0)=1`
-/

namespace A184942.P6573937243451275077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188040 (A188046 ((n : ℤ) * a (n - 1)).toNat).toNat

end

end A184942.P6573937243451275077

/-!
# A184943: Number of connected 4-regular simple graphs on n vertices with girth exactly 3.

The programs for A184943, there is no canonical definition to state claims against.
-/

/-! ## A184943.P3529608243804564098

`A006820(n)-A033886(n)`
-/

namespace A184943.P3529608243804564098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006820 n - A033886 n

end

end A184943.P3529608243804564098

/-! ## A184943.P10532186539708003433

`A185143(n)-A185043(n)`
-/

namespace A184943.P10532186539708003433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185143 n - A185043 n

end

end A184943.P10532186539708003433

/-! ## A184943.P4513397789308318495

`A033301(n)-(A033886(n)+A033483(n))`
-/

namespace A184943.P4513397789308318495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033301 n - (A033886 n + A033483 n)

end

end A184943.P4513397789308318495

/-! ## A184943.P18076449972777965456

`A006820(n)-(A184944(n)+A058343(n))`
-/

namespace A184943.P18076449972777965456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006820 n - (A184944 n + A058343 n)

end

end A184943.P18076449972777965456

/-! ## A184943.P5983865591318604567

`A185044(n)+A185143(n)-A033483(n)`
-/

namespace A184943.P5983865591318604567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185044 n + (A185143 n - A033483 n)

end

end A184943.P5983865591318604567

/-!
# A184944: Number of connected 4-regular simple graphs on n vertices with girth exactly 4.

The programs for A184944, there is no canonical definition to state claims against.
-/

/-! ## A184944.P3383716311276868554

`A033886(n)-A058343(n)`
-/

namespace A184944.P3383716311276868554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033886 n - A058343 n

end

end A184944.P3383716311276868554

/-! ## A184944.P14310714971531447095

`A185144(n)-A185044(n)`
-/

namespace A184944.P14310714971531447095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185144 n - A185044 n

end

end A184944.P14310714971531447095

/-! ## A184944.P2580237886462019474

`A033886(round(sqrt(n²+1)))-A184945(n)`
-/

namespace A184944.P2580237886462019474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033886 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A184945 n

end

end A184944.P2580237886462019474

/-! ## A184944.P11218930904589866380

`A033886(n)-(A184945(n)+A000007(n))`
-/

namespace A184944.P11218930904589866380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033886 n - (A184945 n + A000007 n)

end

end A184944.P11218930904589866380

/-! ## A184944.P7555429499339071864

`A006820(n)-(A184943(n)+A058343(n))`
-/

namespace A184944.P7555429499339071864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006820 n - (A184943 n + A058343 n)

end

end A184944.P7555429499339071864

/-!
# A184945: Number of connected 4-regular simple graphs on n vertices with girth exactly 5.

The programs for A184945, there is no canonical definition to state claims against.
-/

/-! ## A184945.P6373740385037074988

`A058343(n)-A058348(n)`
-/

namespace A184945.P6373740385037074988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058343 n - A058348 n

end

end A184945.P6373740385037074988

/-! ## A184945.P2553091082289059071

`A058343(n)-A184946(n)^n`
-/

namespace A184945.P2553091082289059071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058343 n - A184946 n ^ n

end

end A184945.P2553091082289059071

/-! ## A184945.P2269600103716885774

`A058343(round(acot(n)+n))-A184946(n)`
-/

namespace A184945.P2269600103716885774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058343 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - A184946 n

end

end A184945.P2269600103716885774

/-! ## A184945.P2698305280756504103

`A058343(round(sqrt(n²+1)))-A184946(n)`
-/

namespace A184945.P2698305280756504103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058343 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A184946 n

end

end A184945.P2698305280756504103

/-! ## A184945.P15000910217314954366

`A058343(n)-A098108(A065610(n))`
-/

namespace A184945.P15000910217314954366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058343 n - A098108 (A065610 n).toNat

end

end A184945.P15000910217314954366

/-!
# A184946: Number of connected 4-regular simple graphs on n vertices with girth exactly 6.

The programs for A184946, there is no canonical definition to state claims against.
-/

/-! ## A184946.P3181482359221679429

`∑{d}[n, A058348(#)]`
-/

namespace A184946.P3181482359221679429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A058348 d

end

end A184946.P3181482359221679429

/-! ## A184946.P6991870184364497415

`A058348(n)%n!`
-/

namespace A184946.P6991870184364497415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058348 n) (Nat.factorial n : ℤ)

end

end A184946.P6991870184364497415

/-! ## A184946.P4850246991517015232

`A058348(C(2, n)+n)`
-/

namespace A184946.P4850246991517015232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058348 (Nat.choose 2 n + n)

end

end A184946.P4850246991517015232

/-! ## A184946.P5587275456917109718

`A058348(gcd(n, C(2, n)))`
-/

namespace A184946.P5587275456917109718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058348 (Nat.gcd n (Nat.choose 2 n))

end

end A184946.P5587275456917109718

/-! ## A184946.P6605035068895148490

`A058348(or(n, C(2, n)))`
-/

namespace A184946.P6605035068895148490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058348 (Nat.lor n (Nat.choose 2 n))

end

end A184946.P6605035068895148490

/-!
# A184947: Expansion of e.g.f. exp(x)*(1-x)^(-x).

The programs for A184947, there is no canonical definition to state claims against.
-/

/-! ## A184947.P3390357349422756882

`A203852(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A184947.P3390357349422756882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A203852 n + (n : ℤ) * a (n - 1)

end

end A184947.P3390357349422756882

/-! ## A184947.P5487049248587558990

`A240172(n)+A065716(A240172(n))`
-/

namespace A184947.P5487049248587558990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240172 n + A065716 (A240172 n).toNat

end

end A184947.P5487049248587558990

/-! ## A184947.P13637955881318544513

`A008621(A101603(n)+A006229(n+2))`
-/

namespace A184947.P13637955881318544513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A101603 n + A006229 (n + 2)).toNat

end

end A184947.P13637955881318544513

/-!
# A184948: Triangle read by rows: SM(n,m) is the number of symmetric 0-1 matrices of order n such that the total number of 1's is m (n >= 1, 0 <= m <= n^2).

The programs for A184948, there is no canonical definition to state claims against.
-/

/-! ## A184948.P4418034590421378601

`A131849(A217285(n+1))`
-/

namespace A184948.P4418034590421378601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131849 (A217285 (n + 1)).toNat

end

end A184948.P4418034590421378601

/-! ## A184948.P10149764593880994563

`A051424(A128084(n+1)%A338809(n+3))`
-/

namespace A184948.P10149764593880994563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051424 (Int.tmod (A128084 (n + 1)) (A338809 (n + 3))).toNat

end

end A184948.P10149764593880994563

/-!
# A184949: E.g.f. satisfies A(x) = (1-x*A(x))^(-x*A(x)).

The programs for A184949, there is no canonical definition to state claims against.
-/

/-! ## A184949.P12136544152324641345

`A191415(n+1)/(n+1)`
-/

namespace A184949.P12136544152324641345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191415 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A184949.P12136544152324641345

/-! ## A184949.P2056087290964477666

`A035327(A132971(n)+A084262(n))`
-/

namespace A184949.P2056087290964477666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A132971 n + A084262 n).toNat

end

end A184949.P2056087290964477666

/-!
# A184950: Irregular triangle C(n,g) counting the connected 5-regular simple graphs on 2n vertices with girth exactly g.

The programs for A184950, there is no canonical definition to state claims against.
-/

/-! ## A184950.P15190388181167656297

`A184953(A274821(n²)+2)`
-/

namespace A184950.P15190388181167656297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184953 (A274821 (n ^ 2) + 2).toNat

end

end A184950.P15190388181167656297

/-!
# A184951: Irregular triangle C(n,g) counting the connected 5-regular simple graphs on 2n vertices with girth at least g.

The programs for A184951, there is no canonical definition to state claims against.
-/

/-! ## A184951.P17196891904678432546

`A006821(A059365(3*n+1)+3)`
-/

namespace A184951.P17196891904678432546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006821 (A059365 (3 * n + 1) + 3).toNat

end

end A184951.P17196891904678432546

/-!
# A184952: High water marks in A177413.

The programs for A184952, there is no canonical definition to state claims against.
-/

/-! ## A184952.P9544029265395484021

`record[A177413(n)]`
-/

namespace A184952.P9544029265395484021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184952.P9544029265395484021

/-! ## A184952.P17922326985336627306

`A177413(A185185(n+1))`
-/

namespace A184952.P17922326985336627306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177413 (A185185 (n + 1)).toNat

end

end A184952.P17922326985336627306

/-!
# A184953: Number of connected 5-regular (or quintic) simple graphs on 2n vertices with girth exactly 3.

The programs for A184953, there is no canonical definition to state claims against.
-/

/-! ## A184953.P4494051095051582655

`A006821(n)-A058275(n)`
-/

namespace A184953.P4494051095051582655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006821 n - A058275 n

end

end A184953.P4494051095051582655

/-! ## A184953.P14212145747939490867

`A006821(n)-A185354(n)`
-/

namespace A184953.P14212145747939490867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006821 n - A185354 n

end

end A184953.P14212145747939490867

/-! ## A184953.P8925480260994445687

`A185153(n)-A165655(n)`
-/

namespace A184953.P8925480260994445687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185153 n - A165655 n

end

end A184953.P8925480260994445687

/-! ## A184953.P3334913011495125281

`A185153(n)-A185053(n)`
-/

namespace A184953.P3334913011495125281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185153 n - A185053 n

end

end A184953.P3334913011495125281

/-! ## A184953.P13046308818503536211

`A006821(n)-∏{e}[2^n, A184954(#)]`
-/

namespace A184953.P13046308818503536211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006821 n - ∏ p ∈ Nat.primeFactors (f1 n), A184954 (Nat.factorization (f1 n) p)

end

end A184953.P13046308818503536211

/-!
# A184954: Number of connected 5-regular simple graphs on 2n vertices with girth exactly 4.

The programs for A184954, there is no canonical definition to state claims against.
-/

/-! ## A184954.P13090257704711848799

`A058275(C(2, n)+n)`
-/

namespace A184954.P13090257704711848799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058275 (Nat.choose 2 n + n)

end

end A184954.P13090257704711848799

/-! ## A184954.P12806858013966025076

`A058275(gcd(n, C(2, n)))`
-/

namespace A184954.P12806858013966025076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058275 (Nat.gcd n (Nat.choose 2 n))

end

end A184954.P12806858013966025076

/-! ## A184954.P582071277402160421

`A058275(n)%(15^n)`
-/

namespace A184954.P582071277402160421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058275 n) (15 ^ n : ℤ)

end

end A184954.P582071277402160421

/-! ## A184954.P7164229889824782599

`A058275(or(n, C(2, n)))`
-/

namespace A184954.P7164229889824782599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058275 (Nat.lor n (Nat.choose 2 n))

end

end A184954.P7164229889824782599

/-! ## A184954.P16602087759868789538

`∑{e}[2^n, A058275(#)]`
-/

namespace A184954.P16602087759868789538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A058275 (Nat.factorization (f1 n) p)

end

end A184954.P16602087759868789538

/-!
# A184955: Number of connected 5-regular simple graphs on 2n vertices with girth exactly 5.

The programs for A184955, there is no canonical definition to state claims against.
-/

/-! ## A184955.P11393179347411805997

`(n-11)*∑[C(n+1, 16)]`
-/

namespace A184955.P11393179347411805997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 11) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A184955.P11393179347411805997

/-! ## A184955.P12891960051124659339

`∑[C(n+1, 16)]*∑[char[n²]]`
-/

namespace A184955.P12891960051124659339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 16

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A184955.P12891960051124659339

/-! ## A184955.P10351045867459018241

`A161352(C(n, 15))`
-/

namespace A184955.P10351045867459018241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161352 (Nat.choose n 15)

end

end A184955.P10351045867459018241

/-! ## A184955.P7079851681796356626

`A255411(C(n, 15))`
-/

namespace A184955.P7079851681796356626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 (Nat.choose n 15)

end

end A184955.P7079851681796356626

/-! ## A184955.P1108989688366891541

`and(94, A205295(n))`
-/

namespace A184955.P1108989688366891541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 94 (A205295 n)

end

end A184955.P1108989688366891541

/-!
# A184956: Maximum number of parts in a partition of n into pairwise coprime parts that are >= 2.

The programs for A184956, there is no canonical definition to state claims against.
-/

/-! ## A184956.P9951992875105098488

`A274701(n+1)-A021913(A221035(n+1))`
-/

namespace A184956.P9951992875105098488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274701 (n + 1) - A021913 (A221035 (n + 1)).toNat

end

end A184956.P9951992875105098488

/-! ## A184956.P8838616210835379853

`gcd(∏[A041581(n)], A340134(n+3))`
-/

namespace A184956.P8838616210835379853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A340134 (n + 3))

end

end A184956.P8838616210835379853

/-! ## A184956.P17360744704566383653

`A054977(A050342(n))*A340134(n+3)`
-/

namespace A184956.P17360744704566383653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A050342 n).toNat * A340134 (n + 3)

end

end A184956.P17360744704566383653

/-! ## A184956.P14977458745364558807

`A340134(n+3)^A330942(A238802(n))`
-/

namespace A184956.P14977458745364558807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340134 (n + 3) : ℚ) ^ (A330942 (A238802 n).toNat : ℤ)

end

end A184956.P14977458745364558807

/-! ## A184956.P6123366436478338443

`A106487(A158520(n+1))`
-/

namespace A184956.P6123366436478338443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106487 (A158520 (n + 1)).toNat

end

end A184956.P6123366436478338443

/-!
# A184957: Triangle read by rows: T(n,k) (n >= 1, 1 <= k <= n) is the number of compositions of n into k parts the first of which is >= all the other parts.

The programs for A184957, there is no canonical definition to state claims against.
-/

/-! ## A184957.P8279250370378680104

`A156041(2*(n+1)-comp[∑[n]]+1)`
-/

namespace A184957.P8279250370378680104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156041 ((2 * (n + 1) : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + 1).toNat

end

end A184957.P8279250370378680104

/-! ## A184957.P10639436620408160745

`A186807(A056943(n+1)+2)`
-/

namespace A184957.P10639436620408160745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186807 (A056943 (n + 1) + 2).toNat

end

end A184957.P10639436620408160745

/-! ## A184957.P9476887221743803004

`A096143(A227061(n+2))`
-/

namespace A184957.P9476887221743803004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096143 (A227061 (n + 2)).toNat

end

end A184957.P9476887221743803004

/-! ## A184957.P8158945638438266188

`A231335(A291709(n+1))`
-/

namespace A184957.P8158945638438266188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231335 (A291709 (n + 1)).toNat

end

end A184957.P8158945638438266188

/-! ## A184957.P700012302219638066

`A186188(A355395(n+1))`
-/

namespace A184957.P700012302219638066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186188 (A355395 (n + 1)).toNat

end

end A184957.P700012302219638066

/-!
# A184958: Number of nonincreasing even cycles in all permutations of {1,2,...,n}. A cycle (b(1), b(2), ...) is said to be increasing if, when written with its smallest element in the first position, it satisfies b(1)

The programs for A184958, there is no canonical definition to state claims against.
-/

/-! ## A184958.P1611649446372812640

`A092691(n)-A080227(n)`
-/

namespace A184958.P1611649446372812640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092691 n - A080227 n

end

end A184958.P1611649446372812640

/-! ## A184958.P16444384785676835209

`A121633(A028310(n))-A186768(n)`
-/

namespace A184958.P16444384785676835209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121633 (A028310 n).toNat - A186768 n

end

end A184958.P16444384785676835209

/-! ## A184958.P2390786333706305937

`A000774(n)-(A186768(n)+A000522(n))`
-/

namespace A184958.P2390786333706305937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000774 n - (A186768 n + A000522 n)

end

end A184958.P2390786333706305937

/-! ## A184958.P5195978765512930404

`A187246(n)+A187252(n)-A186768(n)`
-/

namespace A184958.P5195978765512930404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187246 n + (A187252 n - A186768 n)

end

end A184958.P5195978765512930404

/-! ## A184958.P8687570617379336322

`A186760(n)%(A186768(n)+A000142(n))`
-/

namespace A184958.P8687570617379336322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186760 n) (A186768 n + A000142 n)

end

end A184958.P8687570617379336322

/-!
# A184959: Fibonacci sequence beginning 10, 9.

The programs for A184959, the canonical program `A184959.P7984108584746166401` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184959 has offset 0).

The definition of A184959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184959.P7984108584746166401

`a(n-1)+a(n-2)` with `a(0)=10, a(1)=9`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A184959

/-- `a(n-1)+a(n-2)` -/
def P7984108584746166401.Spec : Prop :=
  ∀ n, (P7984108584746166401.a n : ℤ) = A184959 n

theorem P7984108584746166401.correct : P7984108584746166401.Spec := by
  intro n
  simp only [A184959]

end A184959

/-! ## A184959.P375473263119005408

`a(n-1)-floor(-a(n-2))` with `a(0)=10, a(1)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A184959.P375473263119005408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 9] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A184959.P375473263119005408

namespace A184959

/-- `a(n-1)-floor(-a(n-2))` -/
def P375473263119005408.Spec : Prop :=
  ∀ n, P375473263119005408.a n = A184959 n

end A184959

/-! ## A184959.P4754885106910545783

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=10, a(1)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A184959.P4754885106910545783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 9] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A184959.P4754885106910545783

namespace A184959

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P4754885106910545783.Spec : Prop :=
  ∀ n, P4754885106910545783.a n = A184959 n

end A184959

/-! ## A184959.P4103340546565488853

`A156279(n)+A001060(n)`
-/

namespace A184959.P4103340546565488853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156279 n + A001060 n

end

end A184959.P4103340546565488853

namespace A184959

/-- `A156279(n)+A001060(n)` -/
def P4103340546565488853.Spec : Prop :=
  ∀ n, P4103340546565488853.a n = A184959 n

end A184959

/-! ## A184959.P97715018726869287

`A280154(n)+A022087(n)`
-/

namespace A184959.P97715018726869287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280154 n + A022087 n

end

end A184959.P97715018726869287

namespace A184959

/-- `A280154(n)+A022087(n)` -/
def P97715018726869287.Spec : Prop :=
  ∀ n, P97715018726869287.a n = A184959 n

end A184959

/-! ## A184959.P10244787920239478499

`A022092(n)+Δ[A022093(n)]`
-/

namespace A184959.P10244787920239478499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022092 n + (f1 (n + 1) - f1 n)

end

end A184959.P10244787920239478499

namespace A184959

/-- `A022092(n)+Δ[A022093(n)]` -/
def P10244787920239478499.Spec : Prop :=
  ∀ n, P10244787920239478499.a n = A184959 n

end A184959

/-! ## A184959.P4534901271574371188

`A022091(n+1)+A000032(n)`
-/

namespace A184959.P4534901271574371188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022091 (n + 1) + A000032 n

end

end A184959.P4534901271574371188

namespace A184959

/-- `A022091(n+1)+A000032(n)` -/
def P4534901271574371188.Spec : Prop :=
  ∀ n, P4534901271574371188.a n = A184959 n

end A184959

/-! ## A184959.P13134113393243814586

`A022090(n+1)+A013655(n)`
-/

namespace A184959.P13134113393243814586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022090 (n + 1) + A013655 n

end

end A184959.P13134113393243814586

namespace A184959

/-- `A022090(n+1)+A013655(n)` -/
def P13134113393243814586.Spec : Prop :=
  ∀ n, P13134113393243814586.a n = A184959 n

end A184959

/-! ## A184959.P16574539111065649196

`A104449(n)+A022097(n+1)`
-/

namespace A184959.P16574539111065649196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n + A022097 (n + 1)

end

end A184959.P16574539111065649196

namespace A184959

/-- `A104449(n)+A022097(n+1)` -/
def P16574539111065649196.Spec : Prop :=
  ∀ n, P16574539111065649196.a n = A184959 n

end A184959

/-! ## A184959.P10764657873167736711

`A118658(n)+A022098(n+1)`
-/

namespace A184959.P10764657873167736711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022098 (n + 1)

end

end A184959.P10764657873167736711

namespace A184959

/-- `A118658(n)+A022098(n+1)` -/
def P10764657873167736711.Spec : Prop :=
  ∀ n, P10764657873167736711.a n = A184959 n

end A184959

/-! ## A184959.P8847119496571373049

`A152163(n)+A022099(n+1)`
-/

namespace A184959.P8847119496571373049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022099 (n + 1)

end

end A184959.P8847119496571373049

namespace A184959

/-- `A152163(n)+A022099(n+1)` -/
def P8847119496571373049.Spec : Prop :=
  ∀ n, P8847119496571373049.a n = A184959 n

end A184959

/-! ## A184959.P5614622823014411115

`A212804(n)+A022092(n+1)`
-/

namespace A184959.P5614622823014411115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022092 (n + 1)

end

end A184959.P5614622823014411115

namespace A184959

/-- `A212804(n)+A022092(n+1)` -/
def P5614622823014411115.Spec : Prop :=
  ∀ n, P5614622823014411115.a n = A184959 n

end A184959

/-! ## A184959.P12879463366195672105

`A190996(n)+A118658(n+1)`
-/

namespace A184959.P12879463366195672105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190996 n + A118658 (n + 1)

end

end A184959.P12879463366195672105

namespace A184959

/-- `A190996(n)+A118658(n+1)` -/
def P12879463366195672105.Spec : Prop :=
  ∀ n, P12879463366195672105.a n = A184959 n

end A184959

/-! ## A184959.P2271075418830895022

`A022093(n+1)-A000045(n)`
-/

namespace A184959.P2271075418830895022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 (n + 1) - A000045 n

end

end A184959.P2271075418830895022

namespace A184959

/-- `A022093(n+1)-A000045(n)` -/
def P2271075418830895022.Spec : Prop :=
  ∀ n, P2271075418830895022.a n = A184959 n

end A184959

/-! ## A184959.P8828808735413902176

`A022315(n+1)-A001610(n)`
-/

namespace A184959.P8828808735413902176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022315 (n + 1) - A001610 n

end

end A184959.P8828808735413902176

namespace A184959

/-- `A022315(n+1)-A001610(n)` -/
def P8828808735413902176.Spec : Prop :=
  ∀ n, P8828808735413902176.a n = A184959 n

end A184959

/-! ## A184959.P11753823011825501504

`A022346(n+1)-A020695(n)`
-/

namespace A184959.P11753823011825501504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 (n + 1) - A020695 n

end

end A184959.P11753823011825501504

namespace A184959

/-- `A022346(n+1)-A020695(n)` -/
def P11753823011825501504.Spec : Prop :=
  ∀ n, P11753823011825501504.a n = A184959 n

end A184959

/-! ## A184959.P7306581755729510374

`A022122(n+1)-A022087(n)`
-/

namespace A184959.P7306581755729510374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 (n + 1) - A022087 n

end

end A184959.P7306581755729510374

namespace A184959

/-- `A022122(n+1)-A022087(n)` -/
def P7306581755729510374.Spec : Prop :=
  ∀ n, P7306581755729510374.a n = A184959 n

end A184959

/-! ## A184959.P11534185522055190695

`A022367(n+1)-A022086(n)`
-/

namespace A184959.P11534185522055190695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 (n + 1) - A022086 n

end

end A184959.P11534185522055190695

namespace A184959

/-- `A022367(n+1)-A022086(n)` -/
def P11534185522055190695.Spec : Prop :=
  ∀ n, P11534185522055190695.a n = A184959 n

end A184959

/-! ## A184959.P10633939649227574828

`A190995(n)+A000045(n+2)`
-/

namespace A184959.P10633939649227574828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190995 n + A000045 (n + 2)

end

end A184959.P10633939649227574828

namespace A184959

/-- `A190995(n)+A000045(n+2)` -/
def P10633939649227574828.Spec : Prop :=
  ∀ n, P10633939649227574828.a n = A184959 n

end A184959

/-!
# A184960: Irregular triangle C(n,g) read by rows, counting the connected 6-regular simple graphs on n vertices with girth exactly g.

The programs for A184960, there is no canonical definition to state claims against.
-/

/-! ## A184960.P5718052309548857819

`A184961(n+7)+A016389(A163755(n))`
-/

namespace A184960.P5718052309548857819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184961 (n + 7) + A016389 (A163755 n).toNat

end

end A184960.P5718052309548857819

/-! ## A184960.P2767516504074514212

`A184961(n+7)-A028999(A000066(n+3))`
-/

namespace A184960.P2767516504074514212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184961 (n + 7) - A028999 (A000066 (n + 3)).toNat

end

end A184960.P2767516504074514212

/-! ## A184960.P13854835389377786141

`A184961(n+7)-A184964(A184948(2*(n+1)))`
-/

namespace A184960.P13854835389377786141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184961 (n + 7) - A184964 (A184948 (2 * (n + 1))).toNat

end

end A184960.P13854835389377786141

/-! ## A184960.P5830767589377533443

`A184961(n+7)-A186733(n+1)^A054760(3*n+4)`
-/

namespace A184960.P5830767589377533443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184961 (n + 7) : ℚ) - (A186733 (n + 1) : ℚ) ^ (A054760 (3 * n + 4) : ℤ)

end

end A184960.P5830767589377533443

/-!
# A184961: Irregular triangle C(n,g) read by rows, counting the connected 6-regular simple graphs on n vertices with girth at least g.

The programs for A184961, there is no canonical definition to state claims against.
-/

/-! ## A184961.P6308549639421348548

`A184960(n+7)-A016389(A163755(n))`
-/

namespace A184961.P6308549639421348548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184960 (n + 7) - A016389 (A163755 n).toNat

end

end A184961.P6308549639421348548

/-! ## A184961.P3913520965667999319

`A184960(n+7)+A028999(A000066(n+3))`
-/

namespace A184961.P3913520965667999319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184960 (n + 7) + A028999 (A000066 (n + 3)).toNat

end

end A184961.P3913520965667999319

/-! ## A184961.P4378828886269499157

`A184964(A184948(2*(n+1)))+A184960(n+7)`
-/

namespace A184961.P4378828886269499157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184964 (A184948 (2 * (n + 1))).toNat + A184960 (n + 7)

end

end A184961.P4378828886269499157

/-! ## A184961.P15474710455395451180

`A184960(n+7)+A186733(n+1)^A054760(3*n+4)`
-/

namespace A184961.P15474710455395451180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184960 (n + 7) : ℚ) + (A186733 (n + 1) : ℚ) ^ (A054760 (3 * n + 4) : ℤ)

end

end A184961.P15474710455395451180

/-!
# A184962: Triangle T(n,k), read by rows, given by (0, 1, 2, 2, 4, 3, 6, 4, 8, 5, 10, ...) DELTA (1, 0, 1, 0, 1, 0, 1, 0, ...) where DELTA is the operator defined in A084938.

The programs for A184962, there is no canonical definition to state claims against.
-/

/-! ## A184962.P9509290179807040303

`A265608(n)+A010893(A069777(n))`
-/

namespace A184962.P9509290179807040303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265608 n + A010893 ((A069777 n).toNat + 13)

end

end A184962.P9509290179807040303

/-! ## A184962.P2648060083515740177

`A265608(n)+A010893(A125781(n))`
-/

namespace A184962.P2648060083515740177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265608 n + A010893 ((A125781 n).toNat + 13)

end

end A184962.P2648060083515740177

/-! ## A184962.P9529770900573937586

`A265608(n)+A010893(A213275(n))`
-/

namespace A184962.P9529770900573937586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265608 n + A010893 ((A213275 n).toNat + 13)

end

end A184962.P9529770900573937586

/-! ## A184962.P2504858819383432664

`A265608(n)+A010893(A227655(n))`
-/

namespace A184962.P2504858819383432664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265608 n + A010893 ((A227655 n).toNat + 13)

end

end A184962.P2504858819383432664

/-! ## A184962.P4176844916005607464

`A265608(n)+A010893(A256268(n))`
-/

namespace A184962.P4176844916005607464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265608 n + A010893 ((A256268 n).toNat + 13)

end

end A184962.P4176844916005607464

/-!
# A184963: Number of connected 6-regular simple graphs on n vertices with girth exactly 3.

The programs for A184963, there is no canonical definition to state claims against.
-/

/-! ## A184963.P761585701350307219

`A006822(n)-A058276(n)`
-/

namespace A184963.P761585701350307219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006822 n - A058276 n

end

end A184963.P761585701350307219

/-! ## A184963.P2221563304881994873

`A185163(n)-A165656(n)`
-/

namespace A184963.P2221563304881994873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185163 n - A165656 n

end

end A184963.P2221563304881994873

/-! ## A184963.P2634334383141407010

`A185163(n)-A185063(n)`
-/

namespace A184963.P2634334383141407010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185163 n - A185063 n

end

end A184963.P2634334383141407010

/-! ## A184963.P16356702571000294982

`A006822(A028310(n))-A184964(n)`
-/

namespace A184963.P16356702571000294982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006822 (A028310 n).toNat - A184964 n

end

end A184963.P16356702571000294982

/-! ## A184963.P17840069929898740713

`A165627(n)-(A165656(n)+A058276(n))`
-/

namespace A184963.P17840069929898740713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165627 n - (A165656 n + A058276 n)

end

end A184963.P17840069929898740713

/-!
# A184964: Number of connected 6-regular simple graphs on n vertices with girth exactly 4.

The programs for A184964, there is no canonical definition to state claims against.
-/

/-! ## A184964.P12807684703084239115

`∑{d}[n, A058276(#)]`
-/

namespace A184964.P12807684703084239115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A058276 d

end

end A184964.P12807684703084239115

/-! ## A184964.P111195526400636994

`A058276(n)%n!`
-/

namespace A184964.P111195526400636994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058276 n) (Nat.factorial n : ℤ)

end

end A184964.P111195526400636994

/-! ## A184964.P605040048296288926

`A058276(C(2, n)+n)`
-/

namespace A184964.P605040048296288926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058276 (Nat.choose 2 n + n)

end

end A184964.P605040048296288926

/-! ## A184964.P14460735564149649414

`A058276(gcd(n, C(2, n)))`
-/

namespace A184964.P14460735564149649414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058276 (Nat.gcd n (Nat.choose 2 n))

end

end A184964.P14460735564149649414

/-! ## A184964.P10408498363086215522

`A058276(or(n, C(2, n)))`
-/

namespace A184964.P10408498363086215522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058276 (Nat.lor n (Nat.choose 2 n))

end

end A184964.P10408498363086215522

/-!
# A184965: Number of permutations p of [n] such that (n-p(i)+i) mod n >= 6 for all i.

The programs for A184965, there is no canonical definition to state claims against.
-/

/-! ## A184965.P12840171564273288928

`abs(Δ[A076313(A327509(n))])`
-/

namespace A184965.P12840171564273288928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076313 (A327509 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A184965.P12840171564273288928

/-! ## A184965.P15519540239814881405

`floor(A054962(n)/A057813(n))`
-/

namespace A184965.P15519540239814881405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054962 n : ℚ) / (A057813 n : ℚ)⌋

end

end A184965.P15519540239814881405

/-! ## A184965.P17158398237473332387

`A279329(A080052(n+1))%81`
-/

namespace A184965.P17158398237473332387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279329 (A080052 (n + 1)).toNat) 81

end

end A184965.P17158398237473332387

/-! ## A184965.P2756512574442708510

`A166301(or(∑[n+3]-3, A230641(n)))`
-/

namespace A184965.P2756512574442708510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166301 (Int.lor (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3) (A230641 n)).toNat

end

end A184965.P2756512574442708510

/-! ## A184965.P8115027418615820798

`A026600(n+1)*A035935(A006822(n))`
-/

namespace A184965.P8115027418615820798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026600 (n + 1) * A035935 (A006822 n).toNat

end

end A184965.P8115027418615820798

/-!
# A184966: Numbers k such that k^k - 1 is squarefree.

The programs for A184966, there is no canonical definition to state claims against.
-/

/-! ## A184966.P17647588488783662938

`eq[A103528(n+1), A186742(A351308(n+1))]`
-/

namespace A184966.P17647588488783662938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186742 (A351308 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184966.P17647588488783662938

/-! ## A184966.P15831940061359035550

`lt[A353629(A000045(n+3)), A335452(n+1)]+2`
-/

namespace A184966.P15831940061359035550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353629 (A000045 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335452 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A184966.P15831940061359035550

/-!
# A184967: Numbers k such that k^k+1 is squarefree.

The programs for A184967, there is no canonical definition to state claims against.
-/

/-! ## A184967.P3401628940303816264

`∑[A333516(A065091(A015910(2*n+5)))]`
-/

namespace A184967.P3401628940303816264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333516 (A065091 (A015910 (2 * n + 5)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184967.P3401628940303816264

/-! ## A184967.P6855360172568835151

`eq[A008833(3*n+2), A327537(A137757(n+1)+1)]+1`
-/

namespace A184967.P6855360172568835151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327537 (A137757 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A184967.P6855360172568835151

/-! ## A184967.P10990043300245303709

`lt[A000122(A088276(3*n+2)), 1]`
-/

namespace A184967.P10990043300245303709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A088276 (3 * n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A184967.P10990043300245303709

/-! ## A184967.P7334722971828092578

`∑[A323409(A022095(n))]`
-/

namespace A184967.P7334722971828092578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323409 (A022095 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184967.P7334722971828092578

/-! ## A184967.P14968379425256100039

`∑[gcd(A003199(n), A022138(n))]`
-/

namespace A184967.P14968379425256100039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003199 n) (A022138 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184967.P14968379425256100039

/-!
# A184968: Smallest k such that phi(phi(k)) = 2^n, where phi is the Euler totient function.

The programs for A184968, there is no canonical definition to state claims against.
-/

/-! ## A184968.P12759931241360774279

`A212172(A001850(n))+A007755(n+4)`
-/

namespace A184968.P12759931241360774279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212172 (A001850 n).toNat + A007755 (n + 4)

end

end A184968.P12759931241360774279

/-! ## A184968.P10467516223665761039

`A007755(n+4)+A000122(A343153(2*n+3))`
-/

namespace A184968.P10467516223665761039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007755 (n + 4) + A000122 (A343153 (2 * n + 3)).toNat

end

end A184968.P10467516223665761039

/-!
# A184969: a(n) = [Pi]+[2*Pi]+...+[n*Pi], where []=floor.

The programs for A184969, the canonical program `A184969.P9991180838185652522` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184969 has offset 1).

The definition of A184969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184969.P886043393369096601

`∑[floor(π*(n+1))]`
-/

namespace A184969.P886043393369096601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184969.P886043393369096601

namespace A184969

/-- `∑[floor(π*(n+1))]` -/
def P886043393369096601.Spec : Prop :=
  ∀ n, P886043393369096601.a n = A184969 (n + 1)

end A184969

/-! ## A184969.P1327591933673350523

`∑[ceil(π*(n+1))]+xor(n, -1)`
-/

namespace A184969.P1327591933673350523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi * (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.xor (n : ℤ) (-1)

end

end A184969.P1327591933673350523

namespace A184969

/-- `∑[ceil(π*(n+1))]+xor(n, -1)` -/
def P1327591933673350523.Spec : Prop :=
  ∀ n, P1327591933673350523.a n = A184969 (n + 1)

end A184969

/-! ## A184969.P5102495003497780684

`floor(∑[A022844(n)+π])`
-/

namespace A184969.P5102495003497780684
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A022844 n : ℝ) + Real.pi

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A184969.P5102495003497780684

namespace A184969

/-- `floor(∑[A022844(n)+π])` -/
def P5102495003497780684.Spec : Prop :=
  ∀ n, P5102495003497780684.a n = A184969 (n + 1)

end A184969

/-! ## A184969.P9991180838185652522

`∑[A120701(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A184969

/-- `∑[A120701(n+1)]+1` -/
def P9991180838185652522.Spec : Prop :=
  ∀ n, P9991180838185652522.a n = A184969 (n + 1)

theorem P9991180838185652522.correct : P9991180838185652522.Spec := by
  intro n
  simp only [A184969, Nat.add_sub_cancel]

end A184969

/-! ## A184969.P9666499420075934208

`lcm((-1)^n, ∑[A022844(n+1)])`
-/

namespace A184969.P9666499420075934208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184969.P9666499420075934208

namespace A184969

/-- `lcm((-1)^n, ∑[A022844(n+1)])` -/
def P9666499420075934208.Spec : Prop :=
  ∀ n, (P9666499420075934208.a n : ℤ) = A184969 (n + 1)

end A184969

/-! ## A184969.P2789937495758981804

`A022844(n+1)+∑[A022844(n)]`
-/

namespace A184969.P2789937495758981804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184969.P2789937495758981804

namespace A184969

/-- `A022844(n+1)+∑[A022844(n)]` -/
def P2789937495758981804.Spec : Prop :=
  ∀ n, P2789937495758981804.a n = A184969 (n + 1)

end A184969

/-! ## A184969.P9583871675850357693

`∑[A121381(n+1)]-(n+1)`
-/

namespace A184969.P9583871675850357693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A184969.P9583871675850357693

namespace A184969

/-- `∑[A121381(n+1)]-(n+1)` -/
def P9583871675850357693.Spec : Prop :=
  ∀ n, P9583871675850357693.a n = A184969 (n + 1)

end A184969

/-! ## A184969.P7319521417326059997

`A022795(n+2)-(n+2)`
-/

namespace A184969.P7319521417326059997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022795 (n + 2) - (n + 2 : ℤ)

end

end A184969.P7319521417326059997

namespace A184969

/-- `A022795(n+2)-(n+2)` -/
def P7319521417326059997.Spec : Prop :=
  ∀ n, P7319521417326059997.a n = A184969 (n + 1)

end A184969

/-! ## A184969.P12055224894110621828

`A000027(∑[ceil(π*(n+1))-1])`
-/

namespace A184969.P12055224894110621828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi * (n + 1 : ℝ)⌉ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A184969.P12055224894110621828

namespace A184969

/-- `A000027(∑[ceil(π*(n+1))-1])` -/
def P12055224894110621828.Spec : Prop :=
  ∀ n, P12055224894110621828.a n = A184969 (n + 1)

end A184969

/-! ## A184969.P11447243878120512870

`A253145(2*n+1)-A057357((n+1)²)`
-/

namespace A184969.P11447243878120512870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (2 * n + 1) - A057357 ((n + 1) ^ 2)

end

end A184969.P11447243878120512870

namespace A184969

/-- `A253145(2*n+1)-A057357((n+1)²)` -/
def P11447243878120512870.Spec : Prop :=
  ∀ n, P11447243878120512870.a n = A184969 (n + 1)

end A184969

/-!
# A184972: Expansion of e.g.f. 1/( cos(arctanh(x)) - sin(arctanh(x)) ).

The programs for A184972, there is no canonical definition to state claims against.
-/

/-! ## A184972.P1243921108816278571

`A275962(A000670(n))+A213527(n)`
-/

namespace A184972.P1243921108816278571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275962 (A000670 n).toNat + A213527 n

end

end A184972.P1243921108816278571

/-! ## A184972.P5953042722154216015

`A213527(n)+A102395(A137255(n)²)`
-/

namespace A184972.P5953042722154216015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213527 n + A102395 (A137255 n ^ 2).toNat

end

end A184972.P5953042722154216015

/-!
# A184973: Number of connected 7-regular simple graphs on 2n vertices with girth exactly 3.

The programs for A184973, there is no canonical definition to state claims against.
-/

/-! ## A184973.P10665449496577065281

`A014377(n)-A181153(n)`
-/

namespace A184973.P10665449496577065281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014377 n - A181153 n

end

end A184973.P10665449496577065281

/-! ## A184973.P6359581063304288893

`A186733(A130883(n)+7)`
-/

namespace A184973.P6359581063304288893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186733 (A130883 n + 7).toNat

end

end A184973.P6359581063304288893

/-! ## A184973.P11080396735699738913

`A014377(n)-A006822(n)`
-/

namespace A184973.P11080396735699738913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014377 n - A006822 n

end

end A184973.P11080396735699738913

/-! ## A184973.P4606607108468891734

`A014377(n)-A014374(n)`
-/

namespace A184973.P4606607108468891734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014377 n - A014374 n

end

end A184973.P4606607108468891734

/-! ## A184973.P15311766259194416070

`A014377(n)-A014678(n)`
-/

namespace A184973.P15311766259194416070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014377 n - A014678 n

end

end A184973.P15311766259194416070

/-!
# A184974: Number of connected 7-regular simple graphs on 2n vertices with girth exactly 4.

The programs for A184974, there is no canonical definition to state claims against.
-/

/-! ## A184974.P6785333801981036223

`∑{d}[n, A181153(#)]`
-/

namespace A184974.P6785333801981036223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A181153 d

end

end A184974.P6785333801981036223

/-! ## A184974.P6720764095088314678

`A181153(n)%n!`
-/

namespace A184974.P6720764095088314678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181153 n) (Nat.factorial n : ℤ)

end

end A184974.P6720764095088314678

/-! ## A184974.P7367400968503814525

`A181153(C(2, n)+n)`
-/

namespace A184974.P7367400968503814525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181153 (Nat.choose 2 n + n)

end

end A184974.P7367400968503814525

/-! ## A184974.P10346726092666076577

`A181153(gcd(n, C(2, n)))`
-/

namespace A184974.P10346726092666076577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181153 (Nat.gcd n (Nat.choose 2 n))

end

end A184974.P10346726092666076577

/-! ## A184974.P1104360570246282506

`A181153(or(n, char[n²]))`
-/

namespace A184974.P1104360570246282506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181153 (Nat.lor n (if ∃ j, f1 j = n then 1 else 0))

end

end A184974.P1104360570246282506

/-!
# A184975: Expansion of e.g.f. exp((1-sqrt(1-4*log(1+x)))/2).

The programs for A184975, there is no canonical definition to state claims against.
-/

/-! ## A184975.P7038100993604006592

`A188511(A007767(n)+1)`
-/

namespace A184975.P7038100993604006592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188511 (A007767 n + 1).toNat

end

end A184975.P7038100993604006592

/-! ## A184975.P4056368114587955303

`A098380(A000110(n))-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A184975.P4056368114587955303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098380 (A000110 n).toNat : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A184975.P4056368114587955303

/-!
# A184976: a(n) = [e]+[2*e]+...+[n*e], where []=floor.

The programs for A184976, the canonical program `A184976.P5743174411028907580` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184976 has offset 1).

The definition of A184976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184976.P8486505050791721555

`∑[floor(e*(n+1))]`
-/

namespace A184976.P8486505050791721555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184976.P8486505050791721555

namespace A184976

/-- `∑[floor(e*(n+1))]` -/
def P8486505050791721555.Spec : Prop :=
  ∀ n, P8486505050791721555.a n = A184976 (n + 1)

end A184976

/-! ## A184976.P12142348629976015836

`floor(a(n-1)+e*(n+1))` with `a(0)=2`
-/

namespace A184976.P12142348629976015836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(a (n - 1) : ℝ) + Real.exp 1 * (n + 1 : ℝ)⌋

end

end A184976.P12142348629976015836

namespace A184976

/-- `floor(a(n-1)+e*(n+1))` -/
def P12142348629976015836.Spec : Prop :=
  ∀ n, P12142348629976015836.a n = A184976 (n + 1)

end A184976

/-! ## A184976.P5743174411028907580

`-∑[∑[-Δ[A022843(n)]]]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A184976

/-- `-∑[∑[-Δ[A022843(n)]]]` -/
def P5743174411028907580.Spec : Prop :=
  ∀ n, P5743174411028907580.a n = A184976 (n + 1)

theorem P5743174411028907580.correct : P5743174411028907580.Spec := by
  intro n
  simp only [A184976, Nat.add_sub_cancel]

end A184976

/-! ## A184976.P13776454671164953282

`∑[A184589(n+1)]+1+n`
-/

namespace A184976.P13776454671164953282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A184976.P13776454671164953282

namespace A184976

/-- `∑[A184589(n+1)]+1+n` -/
def P13776454671164953282.Spec : Prop :=
  ∀ n, P13776454671164953282.a n = A184976 (n + 1)

end A184976

/-! ## A184976.P8110870577397651697

`A022843(n+1)+a(n-1)` with `a(0)=2`
-/

namespace A184976.P8110870577397651697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A022843 (n + 1) + a (n - 1)

end

end A184976.P8110870577397651697

namespace A184976

/-- `A022843(n+1)+a(n-1)` -/
def P8110870577397651697.Spec : Prop :=
  ∀ n, P8110870577397651697.a n = A184976 (n + 1)

end A184976

/-! ## A184976.P6921997575868250274

`abs(∑[n+1-A000572(n+1)])`
-/

namespace A184976.P6921997575868250274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A184976.P6921997575868250274

namespace A184976

/-- `abs(∑[n+1-A000572(n+1)])` -/
def P6921997575868250274.Spec : Prop :=
  ∀ n, P6921997575868250274.a n = A184976 (n + 1)

end A184976

/-! ## A184976.P12982104134236740641

`A022843(n+1)+∑[A022843(n)]`
-/

namespace A184976.P12982104134236740641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184976.P12982104134236740641

namespace A184976

/-- `A022843(n+1)+∑[A022843(n)]` -/
def P12982104134236740641.Spec : Prop :=
  ∀ n, P12982104134236740641.a n = A184976 (n + 1)

end A184976

/-! ## A184976.P17710139854481331194

`∑[∑[A276859(n+1)]]%A014342(n+1)`
-/

namespace A184976.P17710139854481331194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276859 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A014342 (n + 1))

end

end A184976.P17710139854481331194

namespace A184976

/-- `∑[∑[A276859(n+1)]]%A014342(n+1)` -/
def P17710139854481331194.Spec : Prop :=
  ∀ n, P17710139854481331194.a n = A184976 (n + 1)

end A184976

/-! ## A184976.P2096369540992598613

`∑[A121384(n+1)]-(n+1)`
-/

namespace A184976.P2096369540992598613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A184976.P2096369540992598613

namespace A184976

/-- `∑[A121384(n+1)]-(n+1)` -/
def P2096369540992598613.Spec : Prop :=
  ∀ n, P2096369540992598613.a n = A184976 (n + 1)

end A184976

/-! ## A184976.P11598574090035552135

`abs(∑[A001489(A022843(n+1))])`
-/

namespace A184976.P11598574090035552135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A022843 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A184976.P11598574090035552135

namespace A184976

/-- `abs(∑[A001489(A022843(n+1))])` -/
def P11598574090035552135.Spec : Prop :=
  ∀ n, P11598574090035552135.a n = A184976 (n + 1)

end A184976

/-! ## A184976.P7860433687071871767

`∑[n+1]+∑[A000210(n+1)]`
-/

namespace A184976.P7860433687071871767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A184976.P7860433687071871767

namespace A184976

/-- `∑[n+1]+∑[A000210(n+1)]` -/
def P7860433687071871767.Spec : Prop :=
  ∀ n, P7860433687071871767.a n = A184976 (n + 1)

end A184976

/-! ## A184976.P3924819947374272953

`A022785(n+1)+A000210(n+1)`
-/

namespace A184976.P3924819947374272953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022785 (n + 1) + A000210 (n + 1)

end

end A184976.P3924819947374272953

namespace A184976

/-- `A022785(n+1)+A000210(n+1)` -/
def P3924819947374272953.Spec : Prop :=
  ∀ n, P3924819947374272953.a n = A184976 (n + 1)

end A184976

/-! ## A184976.P11828420992549900890

`A022785(n+2)-(n+2)`
-/

namespace A184976.P11828420992549900890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022785 (n + 2) - (n + 2 : ℤ)

end

end A184976.P11828420992549900890

namespace A184976

/-- `A022785(n+2)-(n+2)` -/
def P11828420992549900890.Spec : Prop :=
  ∀ n, P11828420992549900890.a n = A184976 (n + 1)

end A184976

/-! ## A184976.P2816720146269845575

`A000027(∑[A022843(n+1)])`
-/

namespace A184976.P2816720146269845575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A184976.P2816720146269845575

namespace A184976

/-- `A000027(∑[A022843(n+1)])` -/
def P2816720146269845575.Spec : Prop :=
  ∀ n, P2816720146269845575.a n = A184976 (n + 1)

end A184976

/-!
# A184977: 

The programs for A184977, there is no canonical definition to state claims against.
-/

/-! ## A184977.P1111826303834680553

`∑[floor(γ*(n+1))]`
-/

namespace A184977.P1111826303834680553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.eulerMascheroniConstant * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184977.P1111826303834680553

/-! ## A184977.P5562757374068986977

`floor(a(n-1)+γ*(n+1))` with `a(0)=0`
-/

namespace A184977.P5562757374068986977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℝ) + Real.eulerMascheroniConstant * (n + 1 : ℝ)⌋

end

end A184977.P5562757374068986977

/-! ## A184977.P17093738366706422925

`∑[ceil(γ*(n+1))]+xor(n, -1)`
-/

namespace A184977.P17093738366706422925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.eulerMascheroniConstant * (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.xor (n : ℤ) (-1)

end

end A184977.P17093738366706422925

/-! ## A184977.P12330001974304737125

`A038128(n+1)+∑[A038128(n)]`
-/

namespace A184977.P12330001974304737125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038128 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184977.P12330001974304737125

/-!
# A184982: Numbers n >= 3 such that the Diophantine equation x^4 + y^4 = n*z^2 has an infinite number of inequivalent nonzero solutions (x,y,z).

The programs for A184982, there is no canonical definition to state claims against.
-/

/-! ## A184982.P5559196940949619256

`record[A007913(A209078(n+1))]`
-/

namespace A184982.P5559196940949619256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A209078 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184982.P5559196940949619256

/-! ## A184982.P2058342873298964066

`filter[A209078(n+1), A008966(#)]`
-/

namespace A184982.P2058342873298964066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A184982.P2058342873298964066

/-! ## A184982.P5915319462811039761

`filter[A209078(n+1), A101040(#)]`
-/

namespace A184982.P5915319462811039761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A184982.P5915319462811039761

/-! ## A184982.P15555773510911473727

`filter[A209078(n+1), A211487(#)]`
-/

namespace A184982.P15555773510911473727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A184982.P15555773510911473727

/-! ## A184982.P17652854932056942731

`filter[A209078(n+1), A323154(#)]`
-/

namespace A184982.P17652854932056942731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A184982.P17652854932056942731

/-!
# A184983: Number of connected 8-regular simple graphs on n vertices with girth exactly 3.

The programs for A184983, there is no canonical definition to state claims against.
-/

/-! ## A184983.P15468448805404436627

`A014378(n)-A181154(n)`
-/

namespace A184983.P15468448805404436627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014378 n - A181154 n

end

end A184983.P15468448805404436627

/-! ## A184983.P26027263818616754

`A185643(A025726(n))`
-/

namespace A184983.P26027263818616754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185643 (A025726 n).toNat

end

end A184983.P26027263818616754

/-! ## A184983.P1983965344677146119

`A185643(A023544(n+2))`
-/

namespace A184983.P1983965344677146119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185643 (A023544 (n + 2)).toNat

end

end A184983.P1983965344677146119

/-! ## A184983.P1137331575770992719

`A014378(n)-A088155(n)`
-/

namespace A184983.P1137331575770992719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014378 n - A088155 n

end

end A184983.P1137331575770992719

/-! ## A184983.P5602310462302244680

`A014378(n)-char[A326210(n)]`
-/

namespace A184983.P5602310462302244680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326210 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014378 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A184983.P5602310462302244680

/-!
# A184985: Nonnegative integers excluding 2.

The programs for A184985, the canonical program `A184985.P8151491416379667933` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184985 has offset 1).

The definition of A184985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184985.P8151491416379667933

`floor(atan(n)+n)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A184985

/-- `floor(atan(n)+n)` -/
def P8151491416379667933.Spec : Prop :=
  ∀ n, P8151491416379667933.a n = A184985 (n + 1)

theorem P8151491416379667933.correct : P8151491416379667933.Spec := by
  intro n
  simp only [A184985, Nat.add_sub_cancel]

end A184985

/-!
# A184986: Quintic residues modulo 3331, sorted.

The programs for A184986, there is no canonical definition to state claims against.
-/

/-! ## A184986.P15713847258585917922

`eq[char[A184987(n+1)], A185015(2*n)]`
-/

namespace A184986.P15713847258585917922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184987 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185015 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A184986.P15713847258585917922

/-! ## A184986.P4314754234012894107

`eq[char[A184987(n+1)], A185017(2*n)]`
-/

namespace A184986.P4314754234012894107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184987 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185017 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A184986.P4314754234012894107

/-! ## A184986.P11353716624889284029

`eq[char[A184987(n+2)], A185016(2*n)]`
-/

namespace A184986.P11353716624889284029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184987 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A184986.P11353716624889284029

/-! ## A184986.P17884920468181126864

`lt[char[A184987(n+1)], 2/A018158(n)]`
-/

namespace A184986.P17884920468181126864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184987 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A018158 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A184986.P17884920468181126864

/-! ## A184986.P15320542115195904496

`lt[char[A184987(n+1)], 2/A103867(n+1)]`
-/

namespace A184986.P15320542115195904496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184987 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A103867 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A184986.P15320542115195904496

/-!
# A184987: Nonresidues of k^5 modulo 3331, sorted.

The programs for A184987, there is no canonical definition to state claims against.
-/

/-! ## A184987.P3972805368191207763

`comp[A184986(n+1)]`
-/

namespace A184987.P3972805368191207763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184987.P3972805368191207763

/-! ## A184987.P17835174470539900265

`eq[0, char[A184986(A008619(n))]]`
-/

namespace A184987.P17835174470539900265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184986 (A008619 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184987.P17835174470539900265

/-! ## A184987.P15516754390292506410

`eq[0, char[A184986(A331742(n))]]`
-/

namespace A184987.P15516754390292506410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184986 (A331742 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184987.P15516754390292506410

/-! ## A184987.P2629379742846626748

`eq[char[A184986(n+1)], A000038(n)]`
-/

namespace A184987.P2629379742846626748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184986 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A184987.P2629379742846626748

/-! ## A184987.P2120722294649344203

`eq[char[A184986(n+2)], A000007(n)]`
-/

namespace A184987.P2120722294649344203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184986 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A184987.P2120722294649344203

/-!
# A184988: Largest palindromic substring of n^2.

The programs for A184988, there is no canonical definition to state claims against.
-/

/-! ## A184988.P11938146858876050930

`A047813(A000290(n))`
-/

namespace A184988.P11938146858876050930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A000290 n).toNat

end

end A184988.P11938146858876050930

/-! ## A184988.P11705060002643755795

`A047813(n²)`
-/

namespace A184988.P11705060002643755795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (n ^ 2)

end

end A184988.P11705060002643755795

/-! ## A184988.P5727073400377153493

`A262223(n²)-n²`
-/

namespace A184988.P5727073400377153493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262223 (n ^ 2) - (n ^ 2 : ℤ)

end

end A184988.P5727073400377153493

/-! ## A184988.P6411017057935778889

`or(char[1], A047813(n^2))`
-/

namespace A184988.P6411017057935778889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A047813 (n ^ 2))

end

end A184988.P6411017057935778889

/-! ## A184988.P16102684566935394541

`A004086(A047813(n^2))`
-/

namespace A184988.P16102684566935394541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A047813 (n ^ 2)).toNat

end

end A184988.P16102684566935394541

/-! ## A184988.P5509268491650768994

`A020485(A047813(n*n))`
-/

namespace A184988.P5509268491650768994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (A047813 (n * n)).toNat

end

end A184988.P5509268491650768994

/-! ## A184988.P8350126081684042056

`A047813(n*n)*A178334(n)`
-/

namespace A184988.P8350126081684042056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (n * n) * A178334 n

end

end A184988.P8350126081684042056

/-! ## A184988.P2622460579348326584

`∑{d}[A047813(n*n), A000010(#)]`
-/

namespace A184988.P2622460579348326584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (n * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A184988.P2622460579348326584

/-! ## A184988.P16931007755956749237

`A047813(n*n)+A000007(n+1)`
-/

namespace A184988.P16931007755956749237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (n * n) + A000007 (n + 1)

end

end A184988.P16931007755956749237

/-! ## A184988.P13584436914064547961

`A047813(n^2)%∑[A000040(n+1)]`
-/

namespace A184988.P13584436914064547961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047813 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184988.P13584436914064547961

/-! ## A184988.P5387638877774440454

`A014963(6*(n+1))*A047813(n*n)`
-/

namespace A184988.P5387638877774440454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A047813 (n * n)

end

end A184988.P5387638877774440454

/-! ## A184988.P1175595151511558270

`A000041(floor(1/(n+1)))*A047813(n*n)`
-/

namespace A184988.P1175595151511558270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌊1 / (n + 1 : ℚ)⌋.toNat * A047813 (n * n)

end

end A184988.P1175595151511558270

/-!
# A184989: Digits of n and of n-1 interleaved in decimal representation.

The programs for A184989, there is no canonical definition to state claims against.
-/

/-! ## A184989.P4186736082466127891

`A071590(lt[A185620(n)%A200171(n+1), 1]+1)`
-/

namespace A184989.P4186736082466127891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185620 n) (A200171 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A184989.P4186736082466127891

/-!
# A184992: a(n) is the least positive integer not occurring earlier that shares a digit with a(n-1); a(1)=1.

The programs for A184992, there is no canonical definition to state claims against.
-/

/-! ## A184992.P6458532420693330740

`A107353(ceil(n+1-1/a(n-1)))` with `a(0)=1`
-/

namespace A184992.P6458532420693330740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A107353 ⌈(n + 1 : ℚ) - 1 / (a (n - 1) : ℚ)⌉.toNat

end

end A184992.P6458532420693330740

/-! ## A184992.P13996504205636708690

`A107353(A181440(n+1))`
-/

namespace A184992.P13996504205636708690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107353 (A181440 (n + 1)).toNat

end

end A184992.P13996504205636708690

/-! ## A184992.P10035395219476848425

`Δ[∑[A107353(n)]%A034263(n)]`
-/

namespace A184992.P10035395219476848425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107353 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (A034263 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A184992.P10035395219476848425

/-! ## A184992.P5535511915723806996

`A107353(A227118(A107353(n+1)))`
-/

namespace A184992.P5535511915723806996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107353 (A227118 (A107353 (n + 1)).toNat).toNat

end

end A184992.P5535511915723806996

/-! ## A184992.P11043067962594169322

`A107353(A000720(p?[xor(1, n)]))`
-/

namespace A184992.P11043067962594169322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107353 (A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A184992.P11043067962594169322

/-! ## A184992.P18203803147923560646

`A107353(A026238(p?[xor(1, n)]))`
-/

namespace A184992.P18203803147923560646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107353 (A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A184992.P18203803147923560646

/-! ## A184992.P9565836296743110328

`A107353(A049084(p?[xor(1, n)]))`
-/

namespace A184992.P9565836296743110328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107353 (A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A184992.P9565836296743110328

/-! ## A184992.P4607075503997869723

`A107353(A000720(p?[A004442(n)]))`
-/

namespace A184992.P4607075503997869723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107353 (A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A184992.P4607075503997869723

/-! ## A184992.P3506452375646053153

`A107353(A026238(p?[A004442(n)]))`
-/

namespace A184992.P3506452375646053153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107353 (A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A184992.P3506452375646053153

/-! ## A184992.P17011049316238581804

`A107353(A049084(p?[A004442(n)]))`
-/

namespace A184992.P17011049316238581804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107353 (A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A184992.P17011049316238581804

/-! ## A184992.P11161079529373480084

`A107353(A055396(p?[A004442(n)]))`
-/

namespace A184992.P11161079529373480084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107353 (A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A184992.P11161079529373480084

/-!
# A184993: Number of connected 9-regular simple graphs on 2n vertices with girth exactly 3.

The programs for A184993, there is no canonical definition to state claims against.
-/

/-! ## A184993.P14291091041718088049

`A014381(n)-A181170(n)`
-/

namespace A184993.P14291091041718088049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014381 n - A181170 n

end

end A184993.P14291091041718088049

/-! ## A184993.P10101380091928423690

`∑{d}[n, A014381(#)]`
-/

namespace A184993.P10101380091928423690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A014381 d

end

end A184993.P10101380091928423690

/-! ## A184993.P16521461683955501518

`A014381(C(2, n)+n)`
-/

namespace A184993.P16521461683955501518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014381 (Nat.choose 2 n + n)

end

end A184993.P16521461683955501518

/-! ## A184993.P15122863785508228375

`A014381(xor(n, C(2, n)))`
-/

namespace A184993.P15122863785508228375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014381 (Nat.xor n (Nat.choose 2 n))

end

end A184993.P15122863785508228375

/-! ## A184993.P3374132271985479222

`A014381(floor(acot(n)+n))`
-/

namespace A184993.P3374132271985479222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014381 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A184993.P3374132271985479222

/-!
# A184995: Irregular triangle T, read by rows, in which row n lists the primes p <= n such that 2n-p is also prime.

The programs for A184995, there is no canonical definition to state claims against.
-/

/-! ## A184995.P6199452834923804320

`A020639(A350455(n+2))`
-/

namespace A184995.P6199452834923804320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A350455 (n + 2)).toNat

end

end A184995.P6199452834923804320

/-! ## A184995.P15991745089541762416

`A350455(n+2)/A006530(2*A350455(n+2))`
-/

namespace A184995.P15991745089541762416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350455 (n + 2) : ℚ) / (A006530 (2 * A350455 (n + 2)).toNat : ℚ)

end

end A184995.P15991745089541762416

/-! ## A184995.P7462983225739432726

`A198292(n+2)-A182138(n+2)`
-/

namespace A184995.P7462983225739432726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198292 (n + 2) - A182138 (n + 2)

end

end A184995.P7462983225739432726

/-! ## A184995.P9966537030406001688

`gcd(A003418(A198292(n+2)), A350455(n+2))`
-/

namespace A184995.P9966537030406001688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 (A198292 (n + 2)).toNat) (A350455 (n + 2))

end

end A184995.P9966537030406001688

/-! ## A184995.P6327216406953291641

`A350455(n+2)/A088387(2*A350455(n+2))`
-/

namespace A184995.P6327216406953291641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350455 (n + 2) : ℚ) / (A088387 (2 * A350455 (n + 2)).toNat : ℚ)

end

end A184995.P6327216406953291641

/-! ## A184995.P9147006385526567641

`A350455(n+2)/A088387(lcm(2, A350455(n+2)))`
-/

namespace A184995.P9147006385526567641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350455 (n + 2) : ℚ) / (A088387 (Int.lcm 2 (A350455 (n + 2))) : ℚ)

end

end A184995.P9147006385526567641

/-! ## A184995.P2639658136234323722

`A350455(n+2)/A338295(A350455(n+2)-1)`
-/

namespace A184995.P2639658136234323722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350455 (n + 2) : ℚ) / (A338295 (A350455 (n + 2) - 1).toNat : ℚ)

end

end A184995.P2639658136234323722

/-! ## A184995.P13465719001141179411

`A350455(n+2)/∏{d}[A350455(n+2), A014673(#)]`
-/

namespace A184995.P13465719001141179411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350455 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350455 (n + 2) : ℚ) / ((∏ d ∈ Nat.divisors (f1 n).natAbs, A014673 d : ℤ) : ℚ)

end

end A184995.P13465719001141179411

/-! ## A184995.P7313544129733821017

`A350455(n+2)/∏{d}[A350455(n+2), A032742(#)]`
-/

namespace A184995.P7313544129733821017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350455 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350455 (n + 2) : ℚ) / ((∏ d ∈ Nat.divisors (f1 n).natAbs, A032742 d : ℤ) : ℚ)

end

end A184995.P7313544129733821017

/-! ## A184995.P2238253060642428213

`A350455(n+2)/A033677(∏{p}[A350455(n+2), #])`
-/

namespace A184995.P2238253060642428213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350455 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350455 (n + 2) : ℚ) / (A033677 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) : ℚ)

end

end A184995.P2238253060642428213

/-! ## A184995.P14245698969390319976

`p?[A154720(n+1)+A023969(n)]`
-/

namespace A184995.P14245698969390319976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154720 (n + 1) + A023969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A184995.P14245698969390319976

/-! ## A184995.P3480338042162324148

`A014673(2*A350455(n+2))`
-/

namespace A184995.P3480338042162324148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * A350455 (n + 2)).toNat

end

end A184995.P3480338042162324148

/-! ## A184995.P3462800668107846760

`A350455(n+2)/A054576(2*A350455(n+2))`
-/

namespace A184995.P3462800668107846760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350455 (n + 2) : ℚ) / (A054576 (2 * A350455 (n + 2)).toNat : ℚ)

end

end A184995.P3462800668107846760

/-! ## A184995.P2168282300977399693

`A350455(n+2)/A085392(2*A350455(n+2))`
-/

namespace A184995.P2168282300977399693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350455 (n + 2) : ℚ) / (A085392 (2 * A350455 (n + 2)).toNat : ℚ)

end

end A184995.P2168282300977399693

/-!
# A184997: Number of distinct remainders that are possible when a safe prime p is divided by n (for p > 2*n+1).

The programs for A184997, the canonical program `A184997.P5003667817694060681` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184997 has offset 1).

The definition of A184997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184997.P1582599666924455916

`lcm(2, A002472(n+1))/2`
-/

namespace A184997.P1582599666924455916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A002472 (n + 1)) : ℚ) / 2

end

end A184997.P1582599666924455916

namespace A184997

/-- `lcm(2, A002472(n+1))/2` -/
def P1582599666924455916.Spec : Prop :=
  ∀ n, P1582599666924455916.a n = (A184997 (n + 1) : ℚ)

end A184997

/-! ## A184997.P5003667817694060681

`A002472((∑[n]-1)%(n+1)+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A184997

/-- `A002472((∑[n]-1)%(n+1)+1)` -/
def P5003667817694060681.Spec : Prop :=
  ∀ n, P5003667817694060681.a n = A184997 (n + 1)

theorem P5003667817694060681.correct : P5003667817694060681.Spec := by
  intro n
  simp only [A184997, Nat.add_sub_cancel]

end A184997

/-! ## A184997.P2621227604238363121

`A026741(A002472(n+1))`
-/

namespace A184997.P2621227604238363121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A002472 (n + 1)).toNat

end

end A184997.P2621227604238363121

namespace A184997

/-- `A026741(A002472(n+1))` -/
def P2621227604238363121.Spec : Prop :=
  ∀ n, P2621227604238363121.a n = A184997 (n + 1)

end A184997

/-! ## A184997.P1253155335584264105

`A002472(A186646(n+1))`
-/

namespace A184997.P1253155335584264105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (A186646 (n + 1)).toNat

end

end A184997.P1253155335584264105

namespace A184997

/-- `A002472(A186646(n+1))` -/
def P1253155335584264105.Spec : Prop :=
  ∀ n, P1253155335584264105.a n = A184997 (n + 1)

end A184997

/-! ## A184997.P4055316757000535445

`A002472((n+1)/A177704(n))`
-/

namespace A184997.P4055316757000535445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A177704 n : ℚ))).toNat

end

end A184997.P4055316757000535445

namespace A184997

/-- `A002472((n+1)/A177704(n))` -/
def P4055316757000535445.Spec : Prop :=
  ∀ n, P4055316757000535445.a n = A184997 (n + 1)

end A184997

/-! ## A184997.P8356430284781809436

`A002472((n+1)/A040001(n+1))`
-/

namespace A184997.P8356430284781809436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A040001 (n + 1) : ℚ))).toNat

end

end A184997.P8356430284781809436

namespace A184997

/-- `A002472((n+1)/A040001(n+1))` -/
def P8356430284781809436.Spec : Prop :=
  ∀ n, P8356430284781809436.a n = A184997 (n + 1)

end A184997

/-! ## A184997.P2152616201986573603

`A002472((n+1)/A134451(n+1))`
-/

namespace A184997.P2152616201986573603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A134451 (n + 1) : ℚ))).toNat

end

end A184997.P2152616201986573603

namespace A184997

/-- `A002472((n+1)/A134451(n+1))` -/
def P2152616201986573603.Spec : Prop :=
  ∀ n, P2152616201986573603.a n = A184997 (n + 1)

end A184997

/-! ## A184997.P11615475788245143996

`A002472(A000265(n+1)*A160467(n+1))`
-/

namespace A184997.P11615475788245143996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (A000265 (n + 1) * A160467 (n + 1)).toNat

end

end A184997.P11615475788245143996

namespace A184997

/-- `A002472(A000265(n+1)*A160467(n+1))` -/
def P11615475788245143996.Spec : Prop :=
  ∀ n, P11615475788245143996.a n = A184997 (n + 1)

end A184997

/-! ## A184997.P68313448423166715

`A002472(A062828(n+1))`
-/

namespace A184997.P68313448423166715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (A062828 (n + 1)).toNat

end

end A184997.P68313448423166715

namespace A184997

/-- `A002472(A062828(n+1))` -/
def P68313448423166715.Spec : Prop :=
  ∀ n, P68313448423166715.a n = A184997 (n + 1)

end A184997

/-! ## A184997.P5175501198647974308

`A002472(A064680(n+1))`
-/

namespace A184997.P5175501198647974308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (A064680 (n + 1)).toNat

end

end A184997.P5175501198647974308

namespace A184997

/-- `A002472(A064680(n+1))` -/
def P5175501198647974308.Spec : Prop :=
  ∀ n, P5175501198647974308.a n = A184997 (n + 1)

end A184997

/-! ## A184997.P7979219196114685277

`A002472(A187601(n+1))`
-/

namespace A184997.P7979219196114685277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (A187601 (n + 1)).toNat

end

end A184997.P7979219196114685277

namespace A184997

/-- `A002472(A187601(n+1))` -/
def P7979219196114685277.Spec : Prop :=
  ∀ n, P7979219196114685277.a n = A184997 (n + 1)

end A184997

/-! ## A184997.P11437187391585642699

`A002472(A225975(n+1))`
-/

namespace A184997.P11437187391585642699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (A225975 (n + 1)).toNat

end

end A184997.P11437187391585642699

namespace A184997

/-- `A002472(A225975(n+1))` -/
def P11437187391585642699.Spec : Prop :=
  ∀ n, P11437187391585642699.a n = A184997 (n + 1)

end A184997

