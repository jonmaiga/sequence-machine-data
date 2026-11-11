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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

/-!
# A382900: Composites whose prime factors are not all Mersenne primes.

The programs for A382900, there is no canonical definition to state claims against.
-/

/-! ## A382900.P10526146874306763190

`∩[comp[A056652(n+1)], A002808(n+1)]`
-/

namespace A382900.P10526146874306763190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056652 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A382900.P10526146874306763190

/-! ## A382900.P14769943461771748532

`∩[comp[A348839(n+1)], A002808(n+1)]`
-/

namespace A382900.P14769943461771748532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348839 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A382900.P14769943461771748532

/-! ## A382900.P4570337167490314835

`lt[A002339(A200976(2*n+3)), A200976(n)]`
-/

namespace A382900.P4570337167490314835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002339 (A200976 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200976 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382900.P4570337167490314835

/-! ## A382900.P15442060039778464004

`lt[A207032(A073491(n+1)), A210442(n)]`
-/

namespace A382900.P15442060039778464004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207032 (A073491 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382900.P15442060039778464004

/-! ## A382900.P16441055718444622702

`lt[A033782(A300372(2*(n+2))), A107393(n)]`
-/

namespace A382900.P16441055718444622702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033782 (A300372 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382900.P16441055718444622702

/-!
# A382902: The largest cubefree divisor of the n-th biquadratefree number.

The programs for A382902, the canonical program `A382902.P15410201200105396021` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382902 has offset 1).

The definition of A382902 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382902.P12436437708632918395

`(A382903(n+1)*A046100(n+1)²)^(1/3)`
-/

namespace A382902.P12436437708632918395
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A382903 (n + 1) * A046100 (n + 1) ^ 2 : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A382902.P12436437708632918395

namespace A382902

/-- `(A382903(n+1)*A046100(n+1)²)^(1/3)` -/
def P12436437708632918395.Spec : Prop :=
  ∀ n, P12436437708632918395.a n = (A382902 (n + 1) : ℝ)

end A382902

/-! ## A382902.P15410201200105396021

`A007948(A046100(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A382902

/-- `A007948(A046100(n+1))` -/
def P15410201200105396021.Spec : Prop :=
  ∀ n, P15410201200105396021.a n = A382902 (n + 1)

theorem P15410201200105396021.correct : P15410201200105396021.Spec := by
  intro n
  simp only [A382902, Nat.add_sub_cancel]

end A382902

/-! ## A382902.P14957025626293262041

`A007947(A382906(n+1))*A382904(n+1)`
-/

namespace A382902.P14957025626293262041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A382906 (n + 1)).toNat * A382904 (n + 1)

end

end A382902.P14957025626293262041

namespace A382902

/-- `A007947(A382906(n+1))*A382904(n+1)` -/
def P14957025626293262041.Spec : Prop :=
  ∀ n, P14957025626293262041.a n = A382902 (n + 1)

end A382902

/-! ## A382902.P14316816565778821519

`A382904(n+1)*A382904(n+1)/A382905(n+1)`
-/

namespace A382902.P14316816565778821519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382904 (n + 1) * A382904 (n + 1) : ℚ) / (A382905 (n + 1) : ℚ)

end

end A382902.P14316816565778821519

namespace A382902

/-- `A382904(n+1)*A382904(n+1)/A382905(n+1)` -/
def P14316816565778821519.Spec : Prop :=
  ∀ n, P14316816565778821519.a n = (A382902 (n + 1) : ℚ)

end A382902

/-! ## A382902.P11028148104724324768

`A007948(record[A053165(1+n)])`
-/

namespace A382902.P11028148104724324768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A382902.P11028148104724324768

namespace A382902

/-- `A007948(record[A053165(1+n)])` -/
def P11028148104724324768.Spec : Prop :=
  ∀ n, P11028148104724324768.a n = A382902 (n + 1)

end A382902

/-! ## A382902.P6049025146568697390

`A007948(record[A058035(n+1)])`
-/

namespace A382902.P6049025146568697390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A382902.P6049025146568697390

namespace A382902

/-- `A007948(record[A058035(n+1)])` -/
def P6049025146568697390.Spec : Prop :=
  ∀ n, P6049025146568697390.a n = A382902 (n + 1)

end A382902

/-! ## A382902.P1571073940363199133

`A007948(record[A117657(n+1)])`
-/

namespace A382902.P1571073940363199133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A382902.P1571073940363199133

namespace A382902

/-- `A007948(record[A117657(n+1)])` -/
def P1571073940363199133.Spec : Prop :=
  ∀ n, P1571073940363199133.a n = A382902 (n + 1)

end A382902

/-! ## A382902.P10890955026772414961

`filter[A355261(n+1), A050361(#)]`
-/

namespace A382902.P10890955026772414961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A050361 (f1 j).toNat = 1) n)

end

end A382902.P10890955026772414961

namespace A382902

/-- `filter[A355261(n+1), A050361(#)]` -/
def P10890955026772414961.Spec : Prop :=
  ∀ n, P10890955026772414961.a n = A382902 (n + 1)

end A382902

/-! ## A382902.P7302141588920536026

`filter[A355261(n+1), A113061(#)]`
-/

namespace A382902.P7302141588920536026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A113061 (f1 j).toNat = 1) n)

end

end A382902.P7302141588920536026

namespace A382902

/-- `filter[A355261(n+1), A113061(#)]` -/
def P7302141588920536026.Spec : Prop :=
  ∀ n, P7302141588920536026.a n = A382902 (n + 1)

end A382902

/-! ## A382902.P1577536401564721737

`filter[A353897(n+1), A212793(#)]`
-/

namespace A382902.P1577536401564721737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A382902.P1577536401564721737

namespace A382902

/-- `filter[A353897(n+1), A212793(#)]` -/
def P1577536401564721737.Spec : Prop :=
  ∀ n, P1577536401564721737.a n = A382902 (n + 1)

end A382902

/-! ## A382902.P3190538795072929150

`filter[A355261(n+1), A212793(#)]`
-/

namespace A382902.P3190538795072929150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A382902.P3190538795072929150

namespace A382902

/-- `filter[A355261(n+1), A212793(#)]` -/
def P3190538795072929150.Spec : Prop :=
  ∀ n, P3190538795072929150.a n = A382902 (n + 1)

end A382902

/-! ## A382902.P12997274165368334686

`filter[A366905(n+1), A212793(#)]`
-/

namespace A382902.P12997274165368334686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A382902.P12997274165368334686

namespace A382902

/-- `filter[A366905(n+1), A212793(#)]` -/
def P12997274165368334686.Spec : Prop :=
  ∀ n, P12997274165368334686.a n = A382902 (n + 1)

end A382902

/-! ## A382902.P10494018040066468855

`filter[A353897(n+1), A307430(#)]`
-/

namespace A382902.P10494018040066468855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A382902.P10494018040066468855

namespace A382902

/-- `filter[A353897(n+1), A307430(#)]` -/
def P10494018040066468855.Spec : Prop :=
  ∀ n, P10494018040066468855.a n = A382902 (n + 1)

end A382902

/-! ## A382902.P10460893885021692308

`filter[A366905(n+1), A307430(#)]`
-/

namespace A382902.P10460893885021692308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A382902.P10460893885021692308

namespace A382902

/-- `filter[A366905(n+1), A307430(#)]` -/
def P10460893885021692308.Spec : Prop :=
  ∀ n, P10460893885021692308.a n = A382902 (n + 1)

end A382902

/-! ## A382902.P13616148953345689471

`filter[A353897(n+1), A370598(#)]`
-/

namespace A382902.P13616148953345689471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370598 (f1 j).toNat = 1) n)

end

end A382902.P13616148953345689471

namespace A382902

/-- `filter[A353897(n+1), A370598(#)]` -/
def P13616148953345689471.Spec : Prop :=
  ∀ n, P13616148953345689471.a n = A382902 (n + 1)

end A382902

/-! ## A382902.P13744160147793163161

`A007948(A382905(n+1)*A382906(n+1))`
-/

namespace A382902.P13744160147793163161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A382905 (n + 1) * A382906 (n + 1)).toNat

end

end A382902.P13744160147793163161

namespace A382902

/-- `A007948(A382905(n+1)*A382906(n+1))` -/
def P13744160147793163161.Spec : Prop :=
  ∀ n, P13744160147793163161.a n = A382902 (n + 1)

end A382902

/-! ## A382902.P13981024624336680022

`A007948(A382904(n+1)*A382906(n+1))`
-/

namespace A382902.P13981024624336680022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A382904 (n + 1) * A382906 (n + 1)).toNat

end

end A382902.P13981024624336680022

namespace A382902

/-- `A007948(A382904(n+1)*A382906(n+1))` -/
def P13981024624336680022.Spec : Prop :=
  ∀ n, P13981024624336680022.a n = A382902 (n + 1)

end A382902

/-! ## A382902.P13521977523545304736

`A007948(A382903(n+1)*A382906(n+1))`
-/

namespace A382902.P13521977523545304736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A382903 (n + 1) * A382906 (n + 1)).toNat

end

end A382902.P13521977523545304736

namespace A382902

/-- `A007948(A382903(n+1)*A382906(n+1))` -/
def P13521977523545304736.Spec : Prop :=
  ∀ n, P13521977523545304736.a n = A382902 (n + 1)

end A382902

/-!
# A382903: The largest cubefree unitary divisor of the n-th biquadratefree number.

The programs for A382903, the canonical program `A382903.P2846374962855123125` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382903 has offset 1).

The definition of A382903 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A360539, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382903.P3087685373978906829

`A382902(n+1)^3/A046100(n+1)²`
-/

namespace A382903.P3087685373978906829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382902 (n + 1) ^ 3 : ℚ) / (A046100 (n + 1) ^ 2 : ℚ)

end

end A382903.P3087685373978906829

namespace A382903

/-- `A382902(n+1)^3/A046100(n+1)²` -/
def P3087685373978906829.Spec : Prop :=
  ∀ n, P3087685373978906829.a n = (A382903 (n + 1) : ℚ)

end A382903

/-! ## A382903.P2846374962855123125

`A360539(A046100(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A382903

/-- `A360539(A046100(n+1))` -/
def P2846374962855123125.Spec : Prop :=
  ∀ n, P2846374962855123125.a n = A382903 (n + 1)

theorem P2846374962855123125.correct : P2846374962855123125.Spec := by
  intro n
  simp only [A382903, Nat.add_sub_cancel]

end A382903

/-! ## A382903.P4506159579713110281

`A270418(A046100(n+1)+A000007(n+1))`
-/

namespace A382903.P4506159579713110281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270418 (A046100 (n + 1) + A000007 (n + 1)).toNat

end

end A382903.P4506159579713110281

namespace A382903

/-- `A270418(A046100(n+1)+A000007(n+1))` -/
def P4506159579713110281.Spec : Prop :=
  ∀ n, P4506159579713110281.a n = A382903 (n + 1)

end A382903

/-! ## A382903.P3640793045968779557

`A050985(A046100(n+1))`
-/

namespace A382903.P3640793045968779557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A046100 (n + 1)).toNat

end

end A382903.P3640793045968779557

namespace A382903

/-- `A050985(A046100(n+1))` -/
def P3640793045968779557.Spec : Prop :=
  ∀ n, P3640793045968779557.a n = A382903 (n + 1)

end A382903

/-! ## A382903.P9682658148350778173

`A050985(record[A053165(1+n)])`
-/

namespace A382903.P9682658148350778173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A382903.P9682658148350778173

namespace A382903

/-- `A050985(record[A053165(1+n)])` -/
def P9682658148350778173.Spec : Prop :=
  ∀ n, P9682658148350778173.a n = A382903 (n + 1)

end A382903

/-! ## A382903.P1277655909645971332

`A050985(record[A058035(n+1)])`
-/

namespace A382903.P1277655909645971332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A382903.P1277655909645971332

namespace A382903

/-- `A050985(record[A058035(n+1)])` -/
def P1277655909645971332.Spec : Prop :=
  ∀ n, P1277655909645971332.a n = A382903 (n + 1)

end A382903

/-! ## A382903.P752428622570213228

`A360539(record[A053165(n+1)])`
-/

namespace A382903.P752428622570213228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A382903.P752428622570213228

namespace A382903

/-- `A360539(record[A053165(n+1)])` -/
def P752428622570213228.Spec : Prop :=
  ∀ n, P752428622570213228.a n = A382903 (n + 1)

end A382903

/-! ## A382903.P2903151712818725290

`A360539(record[A058035(n+1)])`
-/

namespace A382903.P2903151712818725290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A382903.P2903151712818725290

namespace A382903

/-- `A360539(record[A058035(n+1)])` -/
def P2903151712818725290.Spec : Prop :=
  ∀ n, P2903151712818725290.a n = A382903 (n + 1)

end A382903

/-! ## A382903.P8706798370189448104

`A360539(eq[1, A317933(n+1)]+1)`
-/

namespace A382903.P8706798370189448104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A382903.P8706798370189448104

namespace A382903

/-- `A360539(eq[1, A317933(n+1)]+1)` -/
def P8706798370189448104.Spec : Prop :=
  ∀ n, P8706798370189448104.a n = A382903 (n + 1)

end A382903

/-! ## A382903.P7992571366565169338

`A360539(lt[A299090(n+1), 3]+1)`
-/

namespace A382903.P7992571366565169338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299090 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A382903.P7992571366565169338

namespace A382903

/-- `A360539(lt[A299090(n+1), 3]+1)` -/
def P7992571366565169338.Spec : Prop :=
  ∀ n, P7992571366565169338.a n = A382903 (n + 1)

end A382903

/-! ## A382903.P3585858525225486831

`A367168(A046100(2*n+1-n))`
-/

namespace A382903.P3585858525225486831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367168 (A046100 (2 * n + 1 - n)).toNat

end

end A382903.P3585858525225486831

namespace A382903

/-- `A367168(A046100(2*n+1-n))` -/
def P3585858525225486831.Spec : Prop :=
  ∀ n, P3585858525225486831.a n = A382903 (n + 1)

end A382903

/-! ## A382903.P15693222323745332737

`A360539(record[(n+1)*A307430(n+1)])`
-/

namespace A382903.P15693222323745332737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A307430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A382903.P15693222323745332737

namespace A382903

/-- `A360539(record[(n+1)*A307430(n+1)])` -/
def P15693222323745332737.Spec : Prop :=
  ∀ n, P15693222323745332737.a n = A382903 (n + 1)

end A382903

/-! ## A382903.P4004052558907883731

`A360539(A382905(n+1)*A382906(n+1))`
-/

namespace A382903.P4004052558907883731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (A382905 (n + 1) * A382906 (n + 1)).toNat

end

end A382903.P4004052558907883731

namespace A382903

/-- `A360539(A382905(n+1)*A382906(n+1))` -/
def P4004052558907883731.Spec : Prop :=
  ∀ n, P4004052558907883731.a n = A382903 (n + 1)

end A382903

/-!
# A382904: The squarefree kernel of the n-th biquadratefree number.

The programs for A382904, the canonical program `A382904.P15714576197998800300` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382904 has offset 1).

The definition of A382904 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382904.P15714576197998800300

`A007947(A046100(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A382904

/-- `A007947(A046100(n+1))` -/
def P15714576197998800300.Spec : Prop :=
  ∀ n, P15714576197998800300.a n = A382904 (n + 1)

theorem P15714576197998800300.correct : P15714576197998800300.Spec := by
  intro n
  simp only [A382904, Nat.add_sub_cancel]

end A382904

/-! ## A382904.P8377054353708315462

`∏{p}[A046100(1+n), #]`
-/

namespace A382904.P8377054353708315462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A382904.P8377054353708315462

namespace A382904

/-- `∏{p}[A046100(1+n), #]` -/
def P8377054353708315462.Spec : Prop :=
  ∀ n, (P8377054353708315462.a n : ℤ) = A382904 (n + 1)

end A382904

/-! ## A382904.P17097454125735916129

`∏{p}[A382902(1+n), #]`
-/

namespace A382904.P17097454125735916129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382902 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A382904.P17097454125735916129

namespace A382904

/-- `∏{p}[A382902(1+n), #]` -/
def P17097454125735916129.Spec : Prop :=
  ∀ n, (P17097454125735916129.a n : ℤ) = A382904 (n + 1)

end A382904

/-! ## A382904.P2527300389790756667

`A007947(A382902(n+1))`
-/

namespace A382904.P2527300389790756667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A382902 (n + 1)).toNat

end

end A382904.P2527300389790756667

namespace A382904

/-- `A007947(A382902(n+1))` -/
def P2527300389790756667.Spec : Prop :=
  ∀ n, P2527300389790756667.a n = A382904 (n + 1)

end A382904

/-! ## A382904.P1868114056942129318

`A007947(A382905(n+1)*A382906(n+1))`
-/

namespace A382904.P1868114056942129318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A382905 (n + 1) * A382906 (n + 1)).toNat

end

end A382904.P1868114056942129318

namespace A382904

/-- `A007947(A382905(n+1)*A382906(n+1))` -/
def P1868114056942129318.Spec : Prop :=
  ∀ n, P1868114056942129318.a n = A382904 (n + 1)

end A382904

/-! ## A382904.P1458268374903932551

`∏{p}[record[A053165(n+1)], #]`
-/

namespace A382904.P1458268374903932551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A382904.P1458268374903932551

namespace A382904

/-- `∏{p}[record[A053165(n+1)], #]` -/
def P1458268374903932551.Spec : Prop :=
  ∀ n, (P1458268374903932551.a n : ℤ) = A382904 (n + 1)

end A382904

/-! ## A382904.P11679726728443848344

`∏{p}[record[A058035(n+1)], #]`
-/

namespace A382904.P11679726728443848344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058035 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A382904.P11679726728443848344

namespace A382904

/-- `∏{p}[record[A058035(n+1)], #]` -/
def P11679726728443848344.Spec : Prop :=
  ∀ n, (P11679726728443848344.a n : ℤ) = A382904 (n + 1)

end A382904

/-! ## A382904.P10672066339008888434

`A007947(record[A058035(n+1)])`
-/

namespace A382904.P10672066339008888434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A382904.P10672066339008888434

namespace A382904

/-- `A007947(record[A058035(n+1)])` -/
def P10672066339008888434.Spec : Prop :=
  ∀ n, P10672066339008888434.a n = A382904 (n + 1)

end A382904

/-! ## A382904.P13617105916984398994

`filter[A019555(n+1), A008966(#)]`
-/

namespace A382904.P13617105916984398994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A382904.P13617105916984398994

namespace A382904

/-- `filter[A019555(n+1), A008966(#)]` -/
def P13617105916984398994.Spec : Prop :=
  ∀ n, P13617105916984398994.a n = A382904 (n + 1)

end A382904

/-! ## A382904.P14298943443273448446

`filter[A386469(n+1), A008966(#)]`
-/

namespace A382904.P14298943443273448446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A382904.P14298943443273448446

namespace A382904

/-- `filter[A386469(n+1), A008966(#)]` -/
def P14298943443273448446.Spec : Prop :=
  ∀ n, P14298943443273448446.a n = A382904 (n + 1)

end A382904

/-! ## A382904.P5105985325299499050

`filter[A386469(n+1), A212793(#)]`
-/

namespace A382904.P5105985325299499050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A382904.P5105985325299499050

namespace A382904

/-- `filter[A386469(n+1), A212793(#)]` -/
def P5105985325299499050.Spec : Prop :=
  ∀ n, P5105985325299499050.a n = A382904 (n + 1)

end A382904

/-! ## A382904.P9604842198517799543

`filter[A386469(n+1), A307430(#)]`
-/

namespace A382904.P9604842198517799543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A382904.P9604842198517799543

namespace A382904

/-- `filter[A386469(n+1), A307430(#)]` -/
def P9604842198517799543.Spec : Prop :=
  ∀ n, P9604842198517799543.a n = A382904 (n + 1)

end A382904

/-! ## A382904.P8388774875792201827

`A007947(A382903(n+1)*A382906(n+1))`
-/

namespace A382904.P8388774875792201827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A382903 (n + 1) * A382906 (n + 1)).toNat

end

end A382904.P8388774875792201827

namespace A382904

/-- `A007947(A382903(n+1)*A382906(n+1))` -/
def P8388774875792201827.Spec : Prop :=
  ∀ n, P8388774875792201827.a n = A382904 (n + 1)

end A382904

/-! ## A382904.P12468324044425730470

`gcd(A046100(n+1), A128040(n+1))`
-/

namespace A382904.P12468324044425730470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046100 (n + 1)) (A128040 (n + 1))

end

end A382904.P12468324044425730470

namespace A382904

/-- `gcd(A046100(n+1), A128040(n+1))` -/
def P12468324044425730470.Spec : Prop :=
  ∀ n, (P12468324044425730470.a n : ℤ) = A382904 (n + 1)

end A382904

/-!
# A382905: The powerfree part of the n-th biquadratefree number.

The programs for A382905, the canonical program `A382905.P13634783915817260642` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382905 has offset 1).

The definition of A382905 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382905.P13634783915817260642

`A055231(A046100(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A382905

/-- `A055231(A046100(n+1))` -/
def P13634783915817260642.Spec : Prop :=
  ∀ n, P13634783915817260642.a n = A382905 (n + 1)

theorem P13634783915817260642.correct : P13634783915817260642.Spec := by
  intro n
  simp only [A382905, Nat.add_sub_cancel]

end A382905

/-! ## A382905.P12275944887019781984

`A046100(n+1)/A382906(n+1)`
-/

namespace A382905.P12275944887019781984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046100 (n + 1) : ℚ) / (A382906 (n + 1) : ℚ)

end

end A382905.P12275944887019781984

namespace A382905

/-- `A046100(n+1)/A382906(n+1)` -/
def P12275944887019781984.Spec : Prop :=
  ∀ n, P12275944887019781984.a n = (A382905 (n + 1) : ℚ)

end A382905

/-! ## A382905.P14573003218589373029

`A007913(A382902(n+1))`
-/

namespace A382905.P14573003218589373029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A382902 (n + 1)).toNat

end

end A382905.P14573003218589373029

namespace A382905

/-- `A007913(A382902(n+1))` -/
def P14573003218589373029.Spec : Prop :=
  ∀ n, P14573003218589373029.a n = A382905 (n + 1)

end A382905

/-! ## A382905.P18200948747358393844

`A007913(A382903(n+1))`
-/

namespace A382905.P18200948747358393844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A382903 (n + 1)).toNat

end

end A382905.P18200948747358393844

namespace A382905

/-- `A007913(A382903(n+1))` -/
def P18200948747358393844.Spec : Prop :=
  ∀ n, P18200948747358393844.a n = A382905 (n + 1)

end A382905

/-! ## A382905.P9765618961668930272

`A055231(A382902(1+n))`
-/

namespace A382905.P9765618961668930272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A382902 (1 + n)).toNat

end

end A382905.P9765618961668930272

namespace A382905

/-- `A055231(A382902(1+n))` -/
def P9765618961668930272.Spec : Prop :=
  ∀ n, P9765618961668930272.a n = A382905 (n + 1)

end A382905

/-! ## A382905.P15399818030966250838

`A055231(A382903(2*n+1-n))`
-/

namespace A382905.P15399818030966250838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A382903 (2 * n + 1 - n)).toNat

end

end A382905.P15399818030966250838

namespace A382905

/-- `A055231(A382903(2*n+1-n))` -/
def P15399818030966250838.Spec : Prop :=
  ∀ n, P15399818030966250838.a n = A382905 (n + 1)

end A382905

/-! ## A382905.P15993170057238481019

`A382904(n+1)/A382902(n+1)*A382904(n+1)`
-/

namespace A382905.P15993170057238481019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382904 (n + 1) : ℚ) / (A382902 (n + 1) : ℚ) * (A382904 (n + 1) : ℚ)

end

end A382905.P15993170057238481019

namespace A382905

/-- `A382904(n+1)/A382902(n+1)*A382904(n+1)` -/
def P15993170057238481019.Spec : Prop :=
  ∀ n, P15993170057238481019.a n = (A382905 (n + 1) : ℚ)

end A382905

/-! ## A382905.P12386727601059281498

`A055231(record[A053165(n+1)])`
-/

namespace A382905.P12386727601059281498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A382905.P12386727601059281498

namespace A382905

/-- `A055231(record[A053165(n+1)])` -/
def P12386727601059281498.Spec : Prop :=
  ∀ n, P12386727601059281498.a n = A382905 (n + 1)

end A382905

/-! ## A382905.P5087184052681280702

`A366244(A382902(2*n+1-n))`
-/

namespace A382905.P5087184052681280702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366244 (A382902 (2 * n + 1 - n)).toNat

end

end A382905.P5087184052681280702

namespace A382905

/-- `A366244(A382902(2*n+1-n))` -/
def P5087184052681280702.Spec : Prop :=
  ∀ n, P5087184052681280702.a n = A382905 (n + 1)

end A382905

/-! ## A382905.P16808393350328525874

`A055231(A382904(n+1)*A382906(n+1))`
-/

namespace A382905.P16808393350328525874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A382904 (n + 1) * A382906 (n + 1)).toNat

end

end A382905.P16808393350328525874

namespace A382905

/-- `A055231(A382904(n+1)*A382906(n+1))` -/
def P16808393350328525874.Spec : Prop :=
  ∀ n, P16808393350328525874.a n = A382905 (n + 1)

end A382905

/-! ## A382905.P5050169016454953159

`A360539(A382904(n+1)*A382906(n+1))`
-/

namespace A382905.P5050169016454953159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (A382904 (n + 1) * A382906 (n + 1)).toNat

end

end A382905.P5050169016454953159

namespace A382905

/-- `A360539(A382904(n+1)*A382906(n+1))` -/
def P5050169016454953159.Spec : Prop :=
  ∀ n, P5050169016454953159.a n = A382905 (n + 1)

end A382905

/-! ## A382905.P6713435700366508343

`A007947(A366244(A382902(n+1))²)`
-/

namespace A382905.P6713435700366508343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A366244 (A382902 (n + 1)).toNat ^ 2).toNat

end

end A382905.P6713435700366508343

namespace A382905

/-- `A007947(A366244(A382902(n+1))²)` -/
def P6713435700366508343.Spec : Prop :=
  ∀ n, P6713435700366508343.a n = A382905 (n + 1)

end A382905

/-! ## A382905.P18177388889999742489

`A007947(A366244(A382903(n+1))²)`
-/

namespace A382905.P18177388889999742489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A366244 (A382903 (n + 1)).toNat ^ 2).toNat

end

end A382905.P18177388889999742489

namespace A382905

/-- `A007947(A366244(A382903(n+1))²)` -/
def P18177388889999742489.Spec : Prop :=
  ∀ n, P18177388889999742489.a n = A382905 (n + 1)

end A382905

/-! ## A382905.P11889026780073174037

`A055231(A382903(n+1)*A382906(n+1))`
-/

namespace A382905.P11889026780073174037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A382903 (n + 1) * A382906 (n + 1)).toNat

end

end A382905.P11889026780073174037

namespace A382905

/-- `A055231(A382903(n+1)*A382906(n+1))` -/
def P11889026780073174037.Spec : Prop :=
  ∀ n, P11889026780073174037.a n = A382905 (n + 1)

end A382905

/-! ## A382905.P11774798274972626184

`A360539(A382902(n+1)*A382906(n+1))`
-/

namespace A382905.P11774798274972626184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (A382902 (n + 1) * A382906 (n + 1)).toNat

end

end A382905.P11774798274972626184

namespace A382905

/-- `A360539(A382902(n+1)*A382906(n+1))` -/
def P11774798274972626184.Spec : Prop :=
  ∀ n, P11774798274972626184.a n = A382905 (n + 1)

end A382905

/-! ## A382905.P533576898127556977

`A360539(A382903(n+1)*A382906(n+1))`
-/

namespace A382905.P533576898127556977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (A382903 (n + 1) * A382906 (n + 1)).toNat

end

end A382905.P533576898127556977

namespace A382905

/-- `A360539(A382903(n+1)*A382906(n+1))` -/
def P533576898127556977.Spec : Prop :=
  ∀ n, P533576898127556977.a n = A382905 (n + 1)

end A382905

/-! ## A382905.P16206070916317792216

`A360539(A046100(n+1)*A382906(n+1))`
-/

namespace A382905.P16206070916317792216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (A046100 (n + 1) * A382906 (n + 1)).toNat

end

end A382905.P16206070916317792216

namespace A382905

/-- `A360539(A046100(n+1)*A382906(n+1))` -/
def P16206070916317792216.Spec : Prop :=
  ∀ n, P16206070916317792216.a n = A382905 (n + 1)

end A382905

/-!
# A382906: The powerful part of the n-th biquadratefree number.

The programs for A382906, the canonical program `A382906.P11250018393502254710` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382906 has offset 1).

The definition of A382906 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A382905, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382906.P17707915825304939799

`A057521(A046100(n+1))`
-/

namespace A382906.P17707915825304939799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A046100 (n + 1)).toNat

end

end A382906.P17707915825304939799

namespace A382906

/-- `A057521(A046100(n+1))` -/
def P17707915825304939799.Spec : Prop :=
  ∀ n, P17707915825304939799.a n = A382906 (n + 1)

end A382906

/-! ## A382906.P11250018393502254710

`A046100(n+1)/A382905(n+1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A382906

/-- `A046100(n+1)/A382905(n+1)` -/
def P11250018393502254710.Spec : Prop :=
  ∀ n, P11250018393502254710.a n = (A382906 (n + 1) : ℚ)

end A382906

/-! ## A382906.P5481193944799674529

`A046100(n+1)/A055231(A382902(n+1))`
-/

namespace A382906.P5481193944799674529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046100 (n + 1) : ℚ) / (A055231 (A382902 (n + 1)).toNat : ℚ)

end

end A382906.P5481193944799674529

namespace A382906

/-- `A046100(n+1)/A055231(A382902(n+1))` -/
def P5481193944799674529.Spec : Prop :=
  ∀ n, P5481193944799674529.a n = (A382906 (n + 1) : ℚ)

end A382906

/-! ## A382906.P4776234228734982438

`A046100(n+1)/A055231(A382903(n+1))`
-/

namespace A382906.P4776234228734982438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046100 (n + 1) : ℚ) / (A055231 (A382903 (n + 1)).toNat : ℚ)

end

end A382906.P4776234228734982438

namespace A382906

/-- `A046100(n+1)/A055231(A382903(n+1))` -/
def P4776234228734982438.Spec : Prop :=
  ∀ n, P4776234228734982438.a n = (A382906 (n + 1) : ℚ)

end A382906

/-! ## A382906.P11980390300101127116

`filter[A057521(n+1), A307430(#)]`
-/

namespace A382906.P11980390300101127116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A382906.P11980390300101127116

namespace A382906

/-- `filter[A057521(n+1), A307430(#)]` -/
def P11980390300101127116.Spec : Prop :=
  ∀ n, P11980390300101127116.a n = A382906 (n + 1)

end A382906

/-! ## A382906.P3095587981252280130

`A057521(record[A053165(n+1)])`
-/

namespace A382906.P3095587981252280130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A382906.P3095587981252280130

namespace A382906

/-- `A057521(record[A053165(n+1)])` -/
def P3095587981252280130.Spec : Prop :=
  ∀ n, P3095587981252280130.a n = A382906 (n + 1)

end A382906

/-! ## A382906.P4569773247388512630

`A366993(record[A053165(1+n)])`
-/

namespace A382906.P4569773247388512630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366993 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A382906.P4569773247388512630

namespace A382906

/-- `A366993(record[A053165(1+n)])` -/
def P4569773247388512630.Spec : Prop :=
  ∀ n, P4569773247388512630.a n = A382906 (n + 1)

end A382906

/-! ## A382906.P7408532530752314033

`A366993(record[A058035(n+1)])`
-/

namespace A382906.P7408532530752314033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366993 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A382906.P7408532530752314033

namespace A382906

/-- `A366993(record[A058035(n+1)])` -/
def P7408532530752314033.Spec : Prop :=
  ∀ n, P7408532530752314033.a n = A382906 (n + 1)

end A382906

/-!
# A382908: Lexicographically earliest sequence of positive integers such that the n-th pair of consecutive equal values are separated by a(n) distinct terms, with pairs numbered by their average index.

The programs for A382908, there is no canonical definition to state claims against.
-/

/-! ## A382908.P3750825829100020527

`A385213(A039597(n)/A347621(n))`
-/

namespace A382908.P3750825829100020527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385213 (SequenceMachineLib.roundAway ((A039597 n : ℚ) / (A347621 n : ℚ))).toNat

end

end A382908.P3750825829100020527

/-! ## A382908.P17907966298562104164

`A385213(A039597(n))`
-/

namespace A382908.P17907966298562104164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385213 (A039597 n).toNat

end

end A382908.P17907966298562104164

/-! ## A382908.P5990723959562346277

`A136757(A219226(n+1))`
-/

namespace A382908.P5990723959562346277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136757 (A219226 (n + 1)).toNat

end

end A382908.P5990723959562346277

/-! ## A382908.P7375576966979631261

`A139767(A332209(n+1)+A134761(n))`
-/

namespace A382908.P7375576966979631261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139767 (A332209 (n + 1) + A134761 n).toNat

end

end A382908.P7375576966979631261

/-! ## A382908.P11899592717995507792

`A001222(A247895(n+1)-A209229(n+1))`
-/

namespace A382908.P11899592717995507792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A247895 (n + 1) - A209229 (n + 1)).toNat

end

end A382908.P11899592717995507792

/-!
# A382909: Number of possible (area, dinv) interchanging bijections of Dyck paths of length 2n.

The programs for A382909, there is no canonical definition to state claims against.
-/

/-! ## A382909.P13126922087474173464

`A275064(A199133(n+1)+A005470(n))`
-/

namespace A382909.P13126922087474173464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275064 (A199133 (n + 1) + A005470 n).toNat

end

end A382909.P13126922087474173464

/-!
# A382910: a(n) = A003266(n)^2.

The programs for A382910, the canonical program `A382910.P8650629878727328270` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382910 has offset 0).

The definition of A382910 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382910.P2774690117630758094

`A003266(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A382910.P2774690117630758094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003266 n ^ 2

end

end A382910.P2774690117630758094

namespace A382910

/-- `A003266(n)²` -/
def P2774690117630758094.Spec : Prop :=
  ∀ n, P2774690117630758094.a n = A382910 n

end A382910

/-! ## A382910.P8650629878727328270

`a(n-1)*A007598(n)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A382910

/-- `a(n-1)*A007598(n)` -/
def P8650629878727328270.Spec : Prop :=
  ∀ n, P8650629878727328270.a n = A382910 n

theorem P8650629878727328270.correct : P8650629878727328270.Spec := by
  intro n
  simp only [A382910]

end A382910

/-! ## A382910.P15738181944069161106

`∏[a(n-1)+a(n-2)]²` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A382910.P15738181944069161106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A382910.P15738181944069161106

namespace A382910

/-- `∏[a(n-1)+a(n-2)]²` -/
def P15738181944069161106.Spec : Prop :=
  ∀ n, (P15738181944069161106.a n : ℤ) = A382910 n

end A382910

/-!
# A382911: Lexicographically earliest sequence of positive integers such that the n-th pair of consecutive equal values are separated by a(n) distinct terms, with pairs numbered according to the average index of the pair.

The programs for A382911, there is no canonical definition to state claims against.
-/

/-! ## A382911.P15777586312934712608

`col(∑[col(A278984(n+2))+1])+1`
-/

namespace A382911.P15777586312934712608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A278984 (n + 2)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A382911.P15777586312934712608

/-! ## A382911.P4094209050636795726

`A324826(A094222(n+1))`
-/

namespace A382911.P4094209050636795726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324826 (A094222 (n + 1)).toNat

end

end A382911.P4094209050636795726

/-! ## A382911.P12316930192950089212

`A369320(A066650(n+1))`
-/

namespace A382911.P12316930192950089212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369320 (A066650 (n + 1)).toNat

end

end A382911.P12316930192950089212

/-! ## A382911.P14137620064720686399

`A369320(A093579(n+1))`
-/

namespace A382911.P14137620064720686399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369320 (A093579 (n + 1)).toNat

end

end A382911.P14137620064720686399

/-! ## A382911.P6748913198462792273

`A324826(A213715(n)+1)`
-/

namespace A382911.P6748913198462792273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324826 (A213715 n + 1).toNat

end

end A382911.P6748913198462792273

/-!
# A382912: Numbers k such that row k of A305936 (a multiset whose multiplicities are the prime indices of k) has no permutation with all distinct run-lengths.

The programs for A382912, there is no canonical definition to state claims against.
-/

/-! ## A382912.P12281433849259638562

`lt[n/5, A048146(abs(1-n)+1)]`
-/

namespace A382912.P12281433849259638562
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A382912.P12281433849259638562

/-! ## A382912.P6446319188744314162

`lt[A096004(A380751(n+1)), A284345(n)]`
-/

namespace A382912.P6446319188744314162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096004 (A380751 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382912.P6446319188744314162

/-! ## A382912.P6635841578134045336

`lt[A135539(A397044(n+1)), A284345(n)]`
-/

namespace A382912.P6635841578134045336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135539 (A397044 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382912.P6635841578134045336

/-! ## A382912.P18076392483727475080

`lt[A162598(n+3), A000578(A284345(n))]`
-/

namespace A382912.P18076392483727475080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162598 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A284345 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382912.P18076392483727475080

/-! ## A382912.P9952056874164663923

`lt[A037805(3*(1+n)), A000720(A284345(n))]`
-/

namespace A382912.P9952056874164663923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037805 (3 * (1 + n))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A284345 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382912.P9952056874164663923

/-! ## A382912.P6945902736309487372

`lt[A322485(n+1)-A003415(n+1)-A003415(n+1), 1]+1`
-/

namespace A382912.P6945902736309487372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322485 (n + 1) - A003415 (n + 1) - A003415 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A382912.P6945902736309487372

/-! ## A382912.P5016670241886885515

`lt[A001285(A035671(1+n)), A284345(n)]`
-/

namespace A382912.P5016670241886885515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A035671 (1 + n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382912.P5016670241886885515

/-! ## A382912.P1275646548176512628

`lt[A001285(A062956(n+3)+2), A284345(n)]`
-/

namespace A382912.P1275646548176512628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A062956 (n + 3) + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382912.P1275646548176512628

/-! ## A382912.P2404135946189969627

`lt[12*n+6, A090082(A284345(n))]`
-/

namespace A382912.P2404135946189969627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090082 (A284345 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A382912.P2404135946189969627

/-! ## A382912.P15398837904848892707

`lt[A017665(n+1), A067465(A284345(n))]`
-/

namespace A382912.P15398837904848892707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067465 (A284345 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382912.P15398837904848892707

/-!
# A382913: Numbers k such that row k of A305936 (a multiset whose multiplicities are the prime indices of k) has a permutation with all distinct run-lengths.

The programs for A382913, there is no canonical definition to state claims against.
-/

/-! ## A382913.P5580871330855817384

`lt[∑{e}[n, #²]!, n+1]`
-/

namespace A382913.P5580871330855817384
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p ^ 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A382913.P5580871330855817384

/-! ## A382913.P5505362171842510567

`comp[A382912(1+n)-1]+1`
-/

namespace A382913.P5505362171842510567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382912 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A382913.P5505362171842510567

/-! ## A382913.P2210010477617716042

`∪[6*n+1, A005117(n+1)]`
-/

namespace A382913.P2210010477617716042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382913.P2210010477617716042

/-! ## A382913.P1470801606831654600

`eq[A033683(n), A087049(n)]`
-/

namespace A382913.P1470801606831654600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033683 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382913.P1470801606831654600

/-! ## A382913.P12841964807008713143

`lt[A022601(A074206(n)), n]`
-/

namespace A382913.P12841964807008713143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022601 (A074206 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A382913.P12841964807008713143

/-! ## A382913.P14515753304302978578

`lt[A203569(A284345(n)), n]`
-/

namespace A382913.P14515753304302978578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203569 (A284345 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A382913.P14515753304302978578

/-! ## A382913.P8162604413475222293

`∪[A005117(n+1), A016921(n)]`
-/

namespace A382913.P8162604413475222293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382913.P8162604413475222293

/-! ## A382913.P7379780668063636057

`∪[A005117(n+1), A017533(n)]`
-/

namespace A382913.P7379780668063636057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382913.P7379780668063636057

/-! ## A382913.P3741204967265374416

`∪[A005117(n+1), A046949(n)]`
-/

namespace A382913.P3741204967265374416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046949 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382913.P3741204967265374416

/-! ## A382913.P4723041001843380522

`∪[A005117(n+1), A049754(n)]`
-/

namespace A382913.P4723041001843380522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049754 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382913.P4723041001843380522

/-!
# A382914: Numbers k such that it is not possible to permute a multiset whose multiplicities are the prime indices of k so that the run-lengths are all equal.

The programs for A382914, there is no canonical definition to state claims against.
-/

/-! ## A382914.P14572440716187877069

`eq[0, A382858(n+1)]+1`
-/

namespace A382914.P14572440716187877069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382858 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A382914.P14572440716187877069

/-! ## A382914.P8938123191866065808

`∩[A245729(n+1), A308192(n+1)]`
-/

namespace A382914.P8938123191866065808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382914.P8938123191866065808

/-! ## A382914.P11439165897215087538

`∩[A028753(n+1), A245729(n+1)]`
-/

namespace A382914.P11439165897215087538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382914.P11439165897215087538

/-! ## A382914.P1900061497411098255

`∩[A028753(n+1), A253785(n+1)]`
-/

namespace A382914.P1900061497411098255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382914.P1900061497411098255

/-! ## A382914.P2430906510616810795

`∩[A073492(n+1), A346131(n+1)]`
-/

namespace A382914.P2430906510616810795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382914.P2430906510616810795

/-!
# A382915: Number of integer partitions of n having no permutation with all equal run-lengths.

The programs for A382915, there is no canonical definition to state claims against.
-/

/-! ## A382915.P1517171395181343291

`A000041(n)-A383013(n)`
-/

namespace A382915.P1517171395181343291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A383013 n

end

end A382915.P1517171395181343291

/-! ## A382915.P6706544475781557228

`A119620(2*n)-A383013(n)`
-/

namespace A382915.P6706544475781557228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A383013 n

end

end A382915.P6706544475781557228

/-! ## A382915.P13075093853262435330

`record[A035363(n+1)]%A383013(n)`
-/

namespace A382915.P13075093853262435330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A383013 n)

end

end A382915.P13075093853262435330

/-! ## A382915.P8050699570629478613

`A383092(n)-A383094(n)`
-/

namespace A382915.P8050699570629478613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383092 n - A383094 n

end

end A382915.P8050699570629478613

/-! ## A382915.P11858831828330109069

`A000041(n)-A383090(n)-A383094(n)`
-/

namespace A382915.P11858831828330109069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A383090 n - A383094 n

end

end A382915.P11858831828330109069

/-!
# A382916: G.f. A(x) satisfies A(x) = 1/( 1 - x*A(x)^3 / (1-x)^2 ).

The programs for A382916, there is no canonical definition to state claims against.
-/

/-! ## A382916.P13761861107536352361

`A077773(A349582(n)-A277191(n))`
-/

namespace A382916.P13761861107536352361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077773 (A349582 n - A277191 n).toNat

end

end A382916.P13761861107536352361

/-! ## A382916.P10925046253660029001

`A338290(A099965(2*n+1)-A142151(n))`
-/

namespace A382916.P10925046253660029001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338290 (A099965 (2 * n + 1) - A142151 n).toNat

end

end A382916.P10925046253660029001

/-!
# A382917: G.f. A(x) satisfies A(x) = 1/( 1 - x*A(x)^3 / (1-x)^3 ).

The programs for A382917, there is no canonical definition to state claims against.
-/

/-! ## A382917.P3073155280881202010

`A118301(A008098(n))`
-/

namespace A382917.P3073155280881202010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118301 (A008098 n).toNat

end

end A382917.P3073155280881202010

/-!
# A382918: G.f. A(x) satisfies A(x) = 1/( 1 - x*A(x) / (1-x)^2 )^2.

The programs for A382918, there is no canonical definition to state claims against.
-/

/-! ## A382918.P14255997776012769511

`∑{#}[n, A366176(#)*A366176(n-#)]`
-/

namespace A382918.P14255997776012769511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A366176 k * A366176 (n - k)

end

end A382918.P14255997776012769511

/-!
# A382919: G.f. A(x) satisfies A(x) = 1/( 1 - x*A(x) / (1-x)^3 )^2.

The programs for A382919, there is no canonical definition to state claims against.
-/

/-! ## A382919.P10098502213890866317

`A394680(n)/4^n`
-/

namespace A382919.P10098502213890866317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394680 n : ℚ) / (4 ^ n : ℚ)

end

end A382919.P10098502213890866317

/-!
# A382920: G.f. A(x) satisfies A(x) = 1/( 1 - x*A(x) / (1-x)^2 )^3.

The programs for A382920, there is no canonical definition to state claims against.
-/

/-! ## A382920.P12960283437008412429

`A060819((n+1)*A354311(n+2))`
-/

namespace A382920.P12960283437008412429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 ((n + 1 : ℤ) * A354311 (n + 2)).toNat

end

end A382920.P12960283437008412429

/-!
# A382921: G.f. A(x) satisfies A(x) = 1/( 1 - x*A(x) / (1-x)^3 )^3.

The programs for A382921, there is no canonical definition to state claims against.
-/

/-! ## A382921.P2948662640848575658

`A097508(A377233(n))+A001835(n)`
-/

namespace A382921.P2948662640848575658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A377233 n).toNat + A001835 n

end

end A382921.P2948662640848575658

/-!
# A382923: Square array A(n,k), n >= 0, k >= 0, read by downward antidiagonals: A(n,k) is the number of m-compositions of n with k zeros.

The programs for A382923, there is no canonical definition to state claims against.
-/

/-! ## A382923.P15707245507012671127

`A331781(n+1)+A147312(C(n+1, 2))`
-/

namespace A382923.P15707245507012671127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331781 (n + 1) + A147312 (Nat.choose (n + 1) 2)

end

end A382923.P15707245507012671127

/-! ## A382923.P15957765398049507218

`A333755(C(n+1, 2))+A331781(n+1)`
-/

namespace A382923.P15957765398049507218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 (Nat.choose (n + 1) 2) + A331781 (n + 1)

end

end A382923.P15957765398049507218

/-! ## A382923.P1725934053817201974

`A000120(C(A207628(n+1), ∏{p}[n+1, #]))`
-/

namespace A382923.P1725934053817201974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose (A207628 (n + 1)).toNat (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A382923.P1725934053817201974

/-! ## A382923.P6551157654867540960

`A132110(n)-A132126(A025587(n))`
-/

namespace A382923.P6551157654867540960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132110 n - A132126 (A025587 n).toNat

end

end A382923.P6551157654867540960

/-! ## A382923.P3250554233546635765

`A072644(A000009(n)*A135313(n))`
-/

namespace A382923.P3250554233546635765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072644 (A000009 n * A135313 n).toNat

end

end A382923.P3250554233546635765

/-!
# A382924: Number of m-compositions of n with n zeros.

The programs for A382924, there is no canonical definition to state claims against.
-/

/-! ## A382924.P17602921670543390490

`A382923(∑[4*n])`
-/

namespace A382924.P17602921670543390490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382923 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A382924.P17602921670543390490

/-!
# A382930: a(n) is the smallest k such that A382506(k) + sigma(k) = A000396(n).

The programs for A382930, there is no canonical definition to state claims against.
-/

/-! ## A382930.P2564138459262467900

`A326807(A238903(n+2))`
-/

namespace A382930.P2564138459262467900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326807 (A238903 (n + 2)).toNat

end

end A382930.P2564138459262467900

/-!
# A382932: a(n) is the altitude of the Pythagorean triangle (A046083(A382931(n)), A046084(A382931(n)), A009000(A382931(n))).

The programs for A382932, there is no canonical definition to state claims against.
-/

/-! ## A382932.P13163374187916470759

`A046083(A382931(n+1))*A046084(A382931(n+1))/A009000(A382931(n+1))`
-/

namespace A382932.P13163374187916470759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046083 (A382931 (n + 1)).toNat * A046084 (A382931 (n + 1)).toNat : ℚ) / (A009000 (A382931 (n + 1)).toNat : ℚ)

end

end A382932.P13163374187916470759

/-! ## A382932.P16310220229170833773

`A008594(A287383(n)*A305900(n+1))`
-/

namespace A382932.P16310220229170833773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (A287383 n * A305900 (n + 1)).toNat

end

end A382932.P16310220229170833773

/-! ## A382932.P14336509771197551262

`A397551(n)+A023989(A287383(n))*A305900(n+1)`
-/

namespace A382932.P14336509771197551262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397551 n + A023989 (A287383 n).toNat * A305900 (n + 1)

end

end A382932.P14336509771197551262

/-! ## A382932.P8374469777493664298

`A023989(A287383(n))*A305900(n+1)*A008836(n+1)²`
-/

namespace A382932.P8374469777493664298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023989 (A287383 n).toNat * A305900 (n + 1) * A008836 (n + 1) ^ 2

end

end A382932.P8374469777493664298

/-! ## A382932.P5959223944085915562

`A023989(A287383(n))*A305900(n+1)-A322389(2*n+4)`
-/

namespace A382932.P5959223944085915562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023989 (A287383 n).toNat * A305900 (n + 1) - A322389 (2 * n + 4)

end

end A382932.P5959223944085915562

/-!
# A382934: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(n+k,k) * binomial(n+2*k,k) * 2^(n-k).

The programs for A382934, the canonical program `A382934.P13227624411381248246` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382934 has offset 0).

The definition of A382934 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382934.P13227624411381248246

`∑{#}[n, C(n, #)*C(n+#, #)*C(n+2*#, #)*2^(n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A382934

/-- `∑{#}[n, C(n, #)*C(n+#, #)*C(n+2*#, #)*2^(n-#)]` -/
def P13227624411381248246.Spec : Prop :=
  ∀ n, P13227624411381248246.a n = (A382934 n : ℚ)

end A382934

/-!
# A382935: Lexicographically earliest sequence of distinct nonnegative integers such that if a digit d in the digit stream (ignoring commas) is odd, the previous digit is > d.

The programs for A382935, there is no canonical definition to state claims against.
-/

/-! ## A382935.P8365977725786528353

`∑[A382936(n+1)]-A382936(n+1)`
-/

namespace A382935.P8365977725786528353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A382936 (n + 1)

end

end A382935.P8365977725786528353

/-! ## A382935.P13482834607435962373

`A282651(n+1)%A115180(A000040(n+1))`
-/

namespace A382935.P13482834607435962373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282651 (n + 1)) (A115180 (A000040 (n + 1)).toNat)

end

end A382935.P13482834607435962373

/-! ## A382935.P13270796390697181323

`A282651(n+1)%A252474(3*n+5)`
-/

namespace A382935.P13270796390697181323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282651 (n + 1)) (A252474 (3 * n + 5))

end

end A382935.P13270796390697181323

/-!
# A382936: First differences of A382935.

The programs for A382936, there is no canonical definition to state claims against.
-/

/-! ## A382936.P2635836133349147156

`Δ[A382935(1+n)]`
-/

namespace A382936.P2635836133349147156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382935 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A382936.P2635836133349147156

/-! ## A382936.P13675180156731427983

`A382935(n+2)-A382935(n+1)`
-/

namespace A382936.P13675180156731427983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382935 (n + 2) - A382935 (n + 1)

end

end A382936.P13675180156731427983

/-! ## A382936.P12339673558223036105

`Δ[A282651(n+1)%A252474(3*n+5)]`
-/

namespace A382936.P12339673558223036105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282651 (n + 1)) (A252474 (3 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A382936.P12339673558223036105

/-!
# A382937: Positive integers that contain an odd digit d immediately preceded by a digit <= d.

The programs for A382937, there is no canonical definition to state claims against.
-/

/-! ## A382937.P126849269047684135

`comp[A382938(1+n)]`
-/

namespace A382937.P126849269047684135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382938 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382937.P126849269047684135

/-! ## A382937.P9078554316667612969

`∩[A283002(n+1), A376779(n+1)]`
-/

namespace A382937.P9078554316667612969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382937.P9078554316667612969

/-! ## A382937.P6277733987906241614

`eq[A007814(2*(n+2)), A332579(A213217(n))]`
-/

namespace A382937.P6277733987906241614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332579 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382937.P6277733987906241614

/-! ## A382937.P3598827812311286113

`∩[A091901(n+1), A383500(n+1)]`
-/

namespace A382937.P3598827812311286113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382937.P3598827812311286113

/-! ## A382937.P17335359803943473801

`∩[comp[A382935(n+1)], A091901(n+1)]`
-/

namespace A382937.P17335359803943473801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382935 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A382937.P17335359803943473801

/-!
# A382938: Nonnegative integers such that every odd digit except the leftmost is immediately preceded by a larger digit.

The programs for A382938, there is no canonical definition to state claims against.
-/

/-! ## A382938.P18182204281840101608

`comp[A382937(1+n)]`
-/

namespace A382938.P18182204281840101608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382937 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382938.P18182204281840101608

/-! ## A382938.P5823758435825583813

`comp[A383500(n+2)%A155106(A143327(n+1))]`
-/

namespace A382938.P5823758435825583813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A383500 (n + 2)) (A155106 (A143327 (n + 1)).toNat)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382938.P5823758435825583813

/-! ## A382938.P185268605530415753

`comp[A383500(A281458(n+4)+A034444(n+1)+1)]`
-/

namespace A382938.P185268605530415753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383500 (A281458 (n + 4) + A034444 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382938.P185268605530415753

/-! ## A382938.P12173970607801301733

`eq[A093178(n), A239139(A093178(n))]`
-/

namespace A382938.P12173970607801301733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239139 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382938.P12173970607801301733

/-! ## A382938.P17024883967479308050

`∪[A009995(n+1), A056239(A001248(n+1))]`
-/

namespace A382938.P17024883967479308050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A001248 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382938.P17024883967479308050

/-!
# A382940: a(n) = A382883(n) * n.

The programs for A382940, there is no canonical definition to state claims against.
-/

/-! ## A382940.P2558851869407334008

`A382883(n+1)*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A382940.P2558851869407334008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382883 (n + 1) * (n + 1 : ℤ)

end

end A382940.P2558851869407334008

/-! ## A382940.P3147513052685478658

`(1+n)*A382883(1+n)`
-/

namespace A382940.P3147513052685478658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A382883 (1 + n)

end

end A382940.P3147513052685478658

/-! ## A382940.P10448773097439412132

`∑{d}[1+n, A383123(#)]*(n+1)`
-/

namespace A382940.P10448773097439412132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A383123 d) * (n + 1 : ℤ)

end

end A382940.P10448773097439412132

/-! ## A382940.P12233190683075121360

`(A383575(1+n)-A383576(n+1))*(n+1)`
-/

namespace A382940.P12233190683075121360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A383575 (1 + n) - A383576 (n + 1)) * (n + 1 : ℤ)

end

end A382940.P12233190683075121360

/-! ## A382940.P12726677622788029687

`(1+n)*(A383575(n+1)-A384667(n+1)*A384709(n+1))`
-/

namespace A382940.P12726677622788029687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * (A383575 (n + 1) - A384667 (n + 1) * A384709 (n + 1))

end

end A382940.P12726677622788029687

/-!
# A382941: a(n) = exp(Sum_{d|n} A382883(d)*log(n/d)).

The programs for A382941, there is no canonical definition to state claims against.
-/

/-! ## A382941.P10220790239298719136

`exp(∑{d}[n+1, A382883(#)*log((n+1)/#)])`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A382941.P10220790239298719136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ d ∈ Nat.divisors (f1 n), (A382883 d : ℝ) * Real.log ((n + 1 : ℚ) / (d : ℚ) : ℝ))

end

end A382941.P10220790239298719136

/-! ## A382941.P14964831926682928327

`A217434(n+1)/A014673(A077168(n))`
-/

namespace A382941.P14964831926682928327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217434 (n + 1) : ℚ) / (A014673 (A077168 n).toNat : ℚ)

end

end A382941.P14964831926682928327

/-! ## A382941.P7816719393313160207

`A014963(n+1)*A368025(A245706(n+1))`
-/

namespace A382941.P7816719393313160207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) * A368025 (A245706 (n + 1)).toNat

end

end A382941.P7816719393313160207

/-! ## A382941.P17407082242207266743

`A014963(n+1)*A115571(A000041(n))`
-/

namespace A382941.P17407082242207266743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) * A115571 (A000041 n).toNat

end

end A382941.P17407082242207266743

/-! ## A382941.P18441737302734364579

`ceil((n+1)/∏{p}[n+1, (n+1)/#])*A369363(A008277(n+1))`
-/

namespace A382941.P18441737302734364579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉ * A369363 (A008277 (n + 1)).toNat

end

end A382941.P18441737302734364579

/-!
# A382942: a(n) = Sum_{k=1..n} A382883(k).

The programs for A382942, there is no canonical definition to state claims against.
-/

/-! ## A382942.P16235831960621892086

`∑[A382883(1+n)]`
-/

namespace A382942.P16235831960621892086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382883 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382942.P16235831960621892086

/-! ## A382942.P15718316899803709624

`∑[A382883(Δ[n²]-n)%2]`
-/

namespace A382942.P15718316899803709624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382883 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382942.P15718316899803709624

/-! ## A382942.P5711905988751175085

`A382883(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A382942.P5711905988751175085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A382883 (n + 1) + a (n - 1)

end

end A382942.P5711905988751175085

/-! ## A382942.P7462680438808055379

`∑[A383575(n+1)-A383576(n+1)]`
-/

namespace A382942.P7462680438808055379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383575 (n + 1) - A383576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382942.P7462680438808055379

/-! ## A382942.P15637906428082939182

`∑[A383575(n+1)-A384667(n+1)*A384709(n+1)]`
-/

namespace A382942.P15637906428082939182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383575 (n + 1) - A384667 (n + 1) * A384709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382942.P15637906428082939182

/-! ## A382942.P14722606373756403783

`∑[∑{d}[1+n, A383123(#)]]`
-/

namespace A382942.P14722606373756403783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A383123 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382942.P14722606373756403783

/-! ## A382942.P10769928152643086099

`∑[A382940(n+1)/(n+1)]`
-/

namespace A382942.P10769928152643086099
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382940 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382942.P10769928152643086099

/-!
# A382943: Numbers k such that A382883(k) = 0.

The programs for A382943, there is no canonical definition to state claims against.
-/

/-! ## A382943.P274113925187970736

`eq[0, A382883(n+1)]+1`
-/

namespace A382943.P274113925187970736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382883 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A382943.P274113925187970736

/-! ## A382943.P10182978953293575069

`eq[0, A382883(A028310(n))]`
-/

namespace A382943.P10182978953293575069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382883 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A382943.P10182978953293575069

/-! ## A382943.P16960347614682022943

`∪[A059404(1+n), A016898(n)]`
-/

namespace A382943.P16960347614682022943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016898 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382943.P16960347614682022943

/-! ## A382943.P13071483709957633966

`∪[A323055(1+n), A016898(n)]`
-/

namespace A382943.P13071483709957633966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323055 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016898 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382943.P13071483709957633966

/-! ## A382943.P14339769824682771075

`∪[A383080(n+1), A016898(n)]`
-/

namespace A382943.P14339769824682771075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016898 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382943.P14339769824682771075

/-! ## A382943.P1368633212394341171

`lt[1, A001221(A343443(n+1))]+1`
-/

namespace A382943.P1368633212394341171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A343443 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A382943.P1368633212394341171

/-! ## A382943.P3167700031512465489

`∪[A030514(n+1), A059404(n+1)]`
-/

namespace A382943.P3167700031512465489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382943.P3167700031512465489

/-! ## A382943.P9914919120729435641

`∪[A046453(n+1), A059404(n+1)]`
-/

namespace A382943.P9914919120729435641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382943.P9914919120729435641

/-! ## A382943.P13704026287991771431

`∪[A059404(n+1), A069084(n+1)]`
-/

namespace A382943.P13704026287991771431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382943.P13704026287991771431

/-! ## A382943.P1243358325813196196

`∪[A059404(n+1), A080258(n+1)]`
-/

namespace A382943.P1243358325813196196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382943.P1243358325813196196

/-!
# A382944: Table read by rows: T(n, k) = valuation(n, k) for k >= 2, 1 for k = 1 and 0^n for k = 0.

The programs for A382944, there is no canonical definition to state claims against.
-/

/-! ## A382944.P11919483765068936210

`A066517(A386877(n))`
-/

namespace A382944.P11919483765068936210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066517 (A386877 n).toNat

end

end A382944.P11919483765068936210

/-! ## A382944.P15967997273605342392

`ceil(A371954(n)/A035470(n+1))`
-/

namespace A382944.P15967997273605342392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A371954 n : ℚ) / (A035470 (n + 1) : ℚ)⌉

end

end A382944.P15967997273605342392

/-! ## A382944.P431993859668783567

`A386636(A386636(n))+A113704(n)`
-/

namespace A382944.P431993859668783567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386636 (A386636 n).toNat + A113704 n

end

end A382944.P431993859668783567

/-! ## A382944.P988516094751239615

`A353849(A113704(n)*A386877(n))`
-/

namespace A382944.P988516094751239615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 (A113704 n * A386877 n).toNat

end

end A382944.P988516094751239615

/-! ## A382944.P4372201456843760101

`gcd(A185284(A185284(n)), A382881(n))`
-/

namespace A382944.P4372201456843760101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185284 (A185284 n).toNat) (A382881 n)

end

end A382944.P4372201456843760101

/-!
# A382947: a(n) = [(x*y)^n] Product_{k>=1} 1 / (1 - x^k - y^k)^k.

The programs for A382947, there is no canonical definition to state claims against.
-/

/-! ## A382947.P7783807315767237846

`A263650(A092070(n))`
-/

namespace A382947.P7783807315767237846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263650 (A092070 n).toNat

end

end A382947.P7783807315767237846

/-!
# A382948: a(n) = [(x*y)^n] Product_{k>=1} (1 + x^k + y^k)^k.

The programs for A382948, there is no canonical definition to state claims against.
-/

/-! ## A382948.P7640044415805847335

`A002851(n)*A186277(A000142(n))`
-/

namespace A382948.P7640044415805847335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002851 n * A186277 (A000142 n).toNat

end

end A382948.P7640044415805847335

/-!
# A382950: a(n) = [(x*y)^n] Product_{k>=1} (1 + x^k + y^k)^n.

The programs for A382950, there is no canonical definition to state claims against.
-/

/-! ## A382950.P6001000512914549146

`A301714(A360728(n))-A050226(n+2)`
-/

namespace A382950.P6001000512914549146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301714 (A360728 n).toNat - A050226 (n + 2)

end

end A382950.P6001000512914549146

/-!
# A382954: Number of ways to partition distinct prime numbers into three disjoint sets such that the sum of each set equals n.

The programs for A382954, there is no canonical definition to state claims against.
-/

/-! ## A382954.P8177853357500823731

`A340998(A005044(2*n+1)+A001343(3*(n+1)))`
-/

namespace A382954.P8177853357500823731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A005044 (2 * n + 1) + A001343 (3 * (n + 1))).toNat + 140)

end

end A382954.P8177853357500823731

/-! ## A382954.P7267764900114828320

`A085979(A245167(n)+A086958(n+1))`
-/

namespace A382954.P7267764900114828320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085979 (A245167 n + A086958 (n + 1)).toNat

end

end A382954.P7267764900114828320

/-!
# A382955: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where A(n,k) = [x^n * y^k] Product_{p prime} (1 + x^p + y^p).

The programs for A382955, there is no canonical definition to state claims against.
-/

/-! ## A382955.P16282130717058046846

`A086017(A283415(n+1)+A068555(n))`
-/

namespace A382955.P16282130717058046846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086017 (A283415 (n + 1) + A068555 n).toNat

end

end A382955.P16282130717058046846

/-! ## A382955.P17311065661975751162

`(A316615(∑[n+5]+16)*A316733(2*(n+2)))%3`
-/

namespace A382955.P17311065661975751162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316615 (∑ j ∈ Finset.range (n + 1), f1 j + 16) * A316733 (2 * (n + 2))) 3

end

end A382955.P17311065661975751162

/-! ## A382955.P3272344638044712264

`and(A034380(n+1), A072233(A000045(n)))`
-/

namespace A382955.P3272344638044712264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034380 (n + 1)) (A072233 (A000045 n).toNat)

end

end A382955.P3272344638044712264

/-! ## A382955.P2164036745630644708

`((A316615(A046691(n+3)+10)+char[34])*A316733(2*(n+2)))%3`
-/

namespace A382955.P2164036745630644708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A316615 (A046691 (n + 3) + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A316733 (2 * (n + 2))) 3

end

end A382955.P2164036745630644708

/-! ## A382955.P9486255865116120370

`(A014963(6*(n+1))*A316615(A046691(n+3)+10)*A316733(2*(n+2)))%3`
-/

namespace A382955.P9486255865116120370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (6 * (n + 1)) * A316615 (A046691 (n + 3) + 10).toNat * A316733 (2 * (n + 2))) 3

end

end A382955.P9486255865116120370

/-!
# A382956: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where A(n,k) = [x^n * y^k] Product_{p prime} 1/(1 - x^p - y^p).

The programs for A382956, there is no canonical definition to state claims against.
-/

/-! ## A382956.P18095347986690137305

`A126387(A337615(n))`
-/

namespace A382956.P18095347986690137305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126387 (A337615 n).toNat

end

end A382956.P18095347986690137305

/-! ## A382956.P2823524593779288339

`A050330(A246164(3*n+4))-A010060(n)`
-/

namespace A382956.P2823524593779288339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050330 (A246164 (3 * n + 4)).toNat - A010060 n

end

end A382956.P2823524593779288339

/-! ## A382956.P2607994932333252353

`A001285(A184964(n))-(A001285(n)-1)`
-/

namespace A382956.P2607994932333252353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A184964 n).toNat - (A001285 n - 1)

end

end A382956.P2607994932333252353

/-! ## A382956.P12293720885019214619

`A001285(A184964(n))-A000035(A193231(n))`
-/

namespace A382956.P12293720885019214619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A184964 n).toNat - A000035 (A193231 n).toNat

end

end A382956.P12293720885019214619

/-! ## A382956.P1096920090575022724

`A021913(A247127(n))+A021913(A163511(2*n+3))`
-/

namespace A382956.P1096920090575022724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A247127 n).toNat + A021913 (A163511 (2 * n + 3)).toNat

end

end A382956.P1096920090575022724

/-!
# A382957: a(n) is the number of distinct numbers of intercalates in an extended self-orthogonal diagonal Latin squares of order n.

The programs for A382957, there is no canonical definition to state claims against.
-/

/-! ## A382957.P12063057808075672257

`A241469(n+1)+A147781(A112926(3*(n+1)))`
-/

namespace A382957.P12063057808075672257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241469 (n + 1) + A147781 (A112926 (3 * (n + 1))).toNat

end

end A382957.P12063057808075672257

/-!
# A382959: a(n) = (n!)^2 * [(x*y)^n] Product_{k>=1} (1 + (x^k + y^k)/k!).

The programs for A382959, there is no canonical definition to state claims against.
-/

/-! ## A382959.P7198227028452558545

`A303838(C(2*n, n+2)+(n+1)*a(n-1))*n` with `a(0)=1, a(1)=0`
-/

namespace A382959.P7198227028452558545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A303838 ((Nat.choose (2 * n) (n + 2) : ℤ) + (n + 1 : ℤ) * a (n - 1)).toNat * (n : ℤ)

end

end A382959.P7198227028452558545

/-! ## A382959.P10176189766498008366

`A075164(A330452(n))-n`
-/

namespace A382959.P10176189766498008366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075164 (A330452 n).toNat - (n : ℤ)

end

end A382959.P10176189766498008366

/-!
# A382960: Numbers k such that k < A053669(k)^2 * A380539(k)^2, i.e., k < A382767(k).

The programs for A382960, there is no canonical definition to state claims against.
-/

/-! ## A382960.P14776670604667794079

`lt[n, A382767(n+1)]+1`
-/

namespace A382960.P14776670604667794079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382767 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A382960.P14776670604667794079

/-! ## A382960.P7863840700017547370

`record[A000027(n+1)%A382767(n+1)]`
-/

namespace A382960.P7863840700017547370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A382767 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382960.P7863840700017547370

/-! ## A382960.P12445870578072539826

`lt[A342529(A126760(n)), A047966(n+1)]`
-/

namespace A382960.P12445870578072539826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342529 (A126760 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047966 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382960.P12445870578072539826

/-! ## A382960.P11437084406211830332

`lt[A001405(A126760(n)), A007498(n+1)]`
-/

namespace A382960.P11437084406211830332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A126760 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007498 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382960.P11437084406211830332

/-! ## A382960.P14119479315172789978

`lt[A126759(n²), A017533(n)]`
-/

namespace A382960.P14119479315172789978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382960.P14119479315172789978

/-! ## A382960.P15673355042286775252

`lt[A263534(A126759(n)), A069543(n+1)]`
-/

namespace A382960.P15673355042286775252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263534 (A126759 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069543 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382960.P15673355042286775252

/-! ## A382960.P8721750497547329027

`lt[A240734(A126760(n)), A202728(n+1)]`
-/

namespace A382960.P8721750497547329027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240734 (A126760 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202728 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382960.P8721750497547329027

/-! ## A382960.P13661940847311385341

`lt[A192400(A126759(n)), A299284(n)]`
-/

namespace A382960.P13661940847311385341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192400 (A126759 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299284 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382960.P13661940847311385341

/-! ## A382960.P8744038138584577196

`lt[A027582(A109375(n)), A302796(n+1)]`
-/

namespace A382960.P8744038138584577196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027582 (A109375 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382960.P8744038138584577196

/-! ## A382960.P3661912416259977317

`lt[A098743(n), A176193(A047966(n+1))]`
-/

namespace A382960.P3661912416259977317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098743 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176193 (A047966 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382960.P3661912416259977317

/-!
# A382961: A sequence constructed by greedily sampling the logarithmic distribution for parameter value 1/2 so as to minimize discrepancy.

The programs for A382961, there is no canonical definition to state claims against.
-/

/-! ## A382961.P14018782785450641107

`A321167(A238424(2*(n+2))+A216497(2*n+5))`
-/

namespace A382961.P14018782785450641107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321167 (A238424 (2 * (n + 2)) + A216497 (2 * n + 5)).toNat

end

end A382961.P14018782785450641107

/-! ## A382961.P7951512328018757839

`A051903(A160668(n+1)+A108506(n+1))`
-/

namespace A382961.P7951512328018757839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A160668 (n + 1) + A108506 (n + 1)).toNat

end

end A382961.P7951512328018757839

/-! ## A382961.P4987374800498830028

`gcd(A128628(n+1), A398233(A178877(n+1)))`
-/

namespace A382961.P4987374800498830028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128628 (n + 1)) (A398233 (A178877 (n + 1)).toNat)

end

end A382961.P4987374800498830028

/-! ## A382961.P10111603398350414962

`gcd(A314234(2*n+1), A314279(A357659(n+2)))`
-/

namespace A382961.P10111603398350414962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A314234 (2 * n + 1)) (A314279 (A357659 (n + 2)).toNat)

end

end A382961.P10111603398350414962

/-! ## A382961.P15738866921313666945

`gcd(A353942(n+1)-A071433(3*n+2), A071434(n+1))`
-/

namespace A382961.P15738866921313666945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A353942 (n + 1) - A071433 (3 * n + 2)) (A071434 (n + 1))

end

end A382961.P15738866921313666945

/-!
# A382963: Prime index gaps between consecutive full reptend primes.

The programs for A382963, there is no canonical definition to state claims against.
-/

/-! ## A382963.P5691046916631593172

`A060257(n+2)-A060257(n+1)`
-/

namespace A382963.P5691046916631593172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060257 (n + 2) - A060257 (n + 1)

end

end A382963.P5691046916631593172

/-! ## A382963.P8166988637837789831

`Δ[A060257(1+n)]`
-/

namespace A382963.P8166988637837789831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060257 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A382963.P8166988637837789831

/-! ## A382963.P7072090725074049874

`Δ[eq[1, A006556(3+n)]]`
-/

namespace A382963.P7072090725074049874
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006556 (3 + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A382963.P7072090725074049874

/-! ## A382963.P10145136375199931662

`Δ[lt[A060370(n+4), 2]]`
-/

namespace A382963.P10145136375199931662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (n + 4)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A382963.P10145136375199931662

/-! ## A382963.P9696262881102982139

`Δ[A000720(A001913(n+1))]`
-/

namespace A382963.P9696262881102982139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001913 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A382963.P9696262881102982139

/-! ## A382963.P9471646125080391459

`Δ[lt[A355743(n+1), A002371(n+3)]]`
-/

namespace A382963.P9471646125080391459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355743 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002371 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A382963.P9471646125080391459

/-! ## A382963.P2675872967700901701

`Δ[A346697(A001913(1+n))]`
-/

namespace A382963.P2675872967700901701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346697 (A001913 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A382963.P2675872967700901701

/-! ## A382963.P714098142606000235

`Δ[A219109(A001913(n+1)+1)]`
-/

namespace A382963.P714098142606000235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219109 (A001913 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A382963.P714098142606000235

/-!
# A382964: Number of k <= n such that rad(k) divides n and g * k > n where g is the largest prime factor of n and rad = A007947.

The programs for A382964, there is no canonical definition to state claims against.
-/

/-! ## A382964.P3789347940876622908

`A070939(A345939(n+1))%A348366(3*n+1)`
-/

namespace A382964.P3789347940876622908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (A345939 (n + 1)).toNat) (A348366 (3 * n + 1))

end

end A382964.P3789347940876622908

/-! ## A382964.P17815945118290152222

`A019381(A000292(2*(n+2)))%A285573(n+1)`
-/

namespace A382964.P17815945118290152222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019381 (A000292 (2 * (n + 2))).toNat) (A285573 (n + 1))

end

end A382964.P17815945118290152222

/-! ## A382964.P14398414075944587016

`A380089(n+1)-A010054(A138364(n))`
-/

namespace A382964.P14398414075944587016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380089 (n + 1) - A010054 (A138364 n).toNat

end

end A382964.P14398414075944587016

/-! ## A382964.P2470402633634889559

`A322407(A001221(n+1)^A322401(n+2))`
-/

namespace A382964.P2470402633634889559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322407 (SequenceMachineLib.roundAway ((A001221 (n + 1) : ℚ) ^ (A322401 (n + 2) : ℤ))).toNat

end

end A382964.P2470402633634889559

/-! ## A382964.P12685909316910372519

`A264990(A280274(n+1)^A029931(n+4))`
-/

namespace A382964.P12685909316910372519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264990 (SequenceMachineLib.roundAway ((A280274 (n + 1) : ℚ) ^ (A029931 (n + 4) : ℤ))).toNat

end

end A382964.P12685909316910372519

/-!
# A382965: The number of non-unitary prime divisors of the n-th cubefree number that is not squarefree.

The programs for A382965, the canonical program `A382965.P13561959687665380359` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382965 has offset 1).

The definition of A382965 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067259, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382965.P13561959687665380359

`A046660(A067259(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A382965

/-- `A046660(A067259(n+1))` -/
def P13561959687665380359.Spec : Prop :=
  ∀ n, P13561959687665380359.a n = A382965 (n + 1)

theorem P13561959687665380359.correct : P13561959687665380359.Spec := by
  intro n
  simp only [A382965, Nat.add_sub_cancel]

end A382965

/-! ## A382965.P15661891950690193335

`∑{e}[A067259(n+1), log2(#)]`
-/

namespace A382965.P15661891950690193335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Real.logb 2 (Nat.factorization (f1 n).natAbs p : ℝ)

end

end A382965.P15661891950690193335

namespace A382965

/-- `∑{e}[A067259(n+1), log2(#)]` -/
def P15661891950690193335.Spec : Prop :=
  ∀ n, P15661891950690193335.a n = (A382965 (n + 1) : ℝ)

end A382965

/-! ## A382965.P5469144015247967848

`∑{e}[eq[2, A051903(1+n)]+1, #-1]`
-/

namespace A382965.P5469144015247967848
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (1 + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1)

end

end A382965.P5469144015247967848

namespace A382965

/-- `∑{e}[eq[2, A051903(1+n)]+1, #-1]` -/
def P5469144015247967848.Spec : Prop :=
  ∀ n, P5469144015247967848.a n = A382965 (n + 1)

end A382965

/-! ## A382965.P6527553472344604305

`A007814(∏{e}[A067259(n+1), #])`
-/

namespace A382965.P6527553472344604305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A382965.P6527553472344604305

namespace A382965

/-- `A007814(∏{e}[A067259(n+1), #])` -/
def P6527553472344604305.Spec : Prop :=
  ∀ n, P6527553472344604305.a n = A382965 (n + 1)

end A382965

/-! ## A382965.P18128822984674160679

`A051903(∏{e}[A067259(n+1), #])`
-/

namespace A382965.P18128822984674160679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A382965.P18128822984674160679

namespace A382965

/-- `A051903(∏{e}[A067259(n+1), #])` -/
def P18128822984674160679.Spec : Prop :=
  ∀ n, P18128822984674160679.a n = A382965 (n + 1)

end A382965

/-! ## A382965.P9157317627210595305

`A056170(A067259(2*n+1-n))`
-/

namespace A382965.P9157317627210595305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A067259 (2 * n + 1 - n)).toNat

end

end A382965.P9157317627210595305

namespace A382965

/-- `A056170(A067259(2*n+1-n))` -/
def P9157317627210595305.Spec : Prop :=
  ∀ n, P9157317627210595305.a n = A382965 (n + 1)

end A382965

/-!
# A382966: The number of non-unitary prime divisors of the n-th biquadratefree number that is not cubefree.

The programs for A382966, the canonical program `A382966.P5975578079117178061` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382966 has offset 1).

The definition of A382966 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375072, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382966.P5975578079117178061

`A056170(A375072(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A382966

/-- `A056170(A375072(n+1))` -/
def P5975578079117178061.Spec : Prop :=
  ∀ n, P5975578079117178061.a n = A382966 (n + 1)

theorem P5975578079117178061.correct : P5975578079117178061.Spec := by
  intro n
  simp only [A382966, Nat.add_sub_cancel]

end A382966

/-! ## A382966.P5637166943628282172

`∑{e}[A375072(1+n), A000073(#)]`
-/

namespace A382966.P5637166943628282172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000073 (Nat.factorization (f1 n).natAbs p)

end

end A382966.P5637166943628282172

namespace A382966

/-- `∑{e}[A375072(1+n), A000073(#)]` -/
def P5637166943628282172.Spec : Prop :=
  ∀ n, P5637166943628282172.a n = A382966 (n + 1)

end A382966

/-! ## A382966.P5708782177729332739

`∑{e}[A375072(1+n), A257990(#)]`
-/

namespace A382966.P5708782177729332739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A257990 (Nat.factorization (f1 n).natAbs p)

end

end A382966.P5708782177729332739

namespace A382966

/-- `∑{e}[A375072(1+n), A257990(#)]` -/
def P5708782177729332739.Spec : Prop :=
  ∀ n, P5708782177729332739.a n = A382966 (n + 1)

end A382966

/-! ## A382966.P15035428042544842312

`∑{e}[A375072(n+1), A338032(#)]`
-/

namespace A382966.P15035428042544842312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A338032 (Nat.factorization (f1 n).natAbs p)

end

end A382966.P15035428042544842312

namespace A382966

/-- `∑{e}[A375072(n+1), A338032(#)]` -/
def P15035428042544842312.Spec : Prop :=
  ∀ n, P15035428042544842312.a n = A382966 (n + 1)

end A382966

/-! ## A382966.P16665240484864515399

`∑{e}[A375072(n+1), A370461(#)]`
-/

namespace A382966.P16665240484864515399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A370461 (Nat.factorization (f1 n).natAbs p)

end

end A382966.P16665240484864515399

namespace A382966

/-- `∑{e}[A375072(n+1), A370461(#)]` -/
def P16665240484864515399.Spec : Prop :=
  ∀ n, P16665240484864515399.a n = A382966 (n + 1)

end A382966

/-!
# A382967: Biquadratefree numbers (A046100) that are not squarefree (A005117).

The programs for A382967, the canonical program `A382967.P10174972740496609768` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382967 has offset 1).

The definition of A382967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382967.P10174972740496609768

`eq[2, A299090(1+n)]+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A382967

/-- `eq[2, A299090(1+n)]+1` -/
def P10174972740496609768.Spec : Prop :=
  ∀ n, (P10174972740496609768.a n : ℤ) = A382967 (n + 1)

theorem P10174972740496609768.correct : P10174972740496609768.Spec := by
  intro n
  simp only [A382967, Nat.add_sub_cancel]

end A382967

/-! ## A382967.P8330448954499678609

`eq[1, floor(A051903(n+1)/2)]+1`
-/

namespace A382967.P8330448954499678609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051903 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A382967.P8330448954499678609

namespace A382967

/-- `eq[1, floor(A051903(n+1)/2)]+1` -/
def P8330448954499678609.Spec : Prop :=
  ∀ n, (P8330448954499678609.a n : ℤ) = A382967 (n + 1)

end A382967

/-! ## A382967.P11097369579255561036

`filter[A046100(n+2), A087049(#)]`
-/

namespace A382967.P11097369579255561036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A382967.P11097369579255561036

namespace A382967

/-- `filter[A046100(n+2), A087049(#)]` -/
def P11097369579255561036.Spec : Prop :=
  ∀ n, P11097369579255561036.a n = A382967 (n + 1)

end A382967

/-! ## A382967.P10829652693663903461

`∩[A013929(n+1), A046100(n+1)]`
-/

namespace A382967.P10829652693663903461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382967.P10829652693663903461

namespace A382967

/-- `∩[A013929(n+1), A046100(n+1)]` -/
def P10829652693663903461.Spec : Prop :=
  ∀ n, (P10829652693663903461.a n : ℤ) = A382967 (n + 1)

end A382967

/-! ## A382967.P11640052562521247515

`∩[A046100(n+1), A074661(n+1)]`
-/

namespace A382967.P11640052562521247515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382967.P11640052562521247515

namespace A382967

/-- `∩[A046100(n+1), A074661(n+1)]` -/
def P11640052562521247515.Spec : Prop :=
  ∀ n, (P11640052562521247515.a n : ℤ) = A382967 (n + 1)

end A382967

/-! ## A382967.P11638142252392028916

`∩[A046100(n+1), A252849(n+1)]`
-/

namespace A382967.P11638142252392028916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382967.P11638142252392028916

namespace A382967

/-- `∩[A046100(n+1), A252849(n+1)]` -/
def P11638142252392028916.Spec : Prop :=
  ∀ n, (P11638142252392028916.a n : ℤ) = A382967 (n + 1)

end A382967

/-! ## A382967.P854620783113968279

`eq[1, A392276(n+1)]+1`
-/

namespace A382967.P854620783113968279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392276 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A382967.P854620783113968279

namespace A382967

/-- `eq[1, A392276(n+1)]+1` -/
def P854620783113968279.Spec : Prop :=
  ∀ n, (P854620783113968279.a n : ℤ) = A382967 (n + 1)

end A382967

/-! ## A382967.P7767645497307400124

`eq[2, A368781(n+1)]+1`
-/

namespace A382967.P7767645497307400124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368781 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A382967.P7767645497307400124

namespace A382967

/-- `eq[2, A368781(n+1)]+1` -/
def P7767645497307400124.Spec : Prop :=
  ∀ n, (P7767645497307400124.a n : ℤ) = A382967 (n + 1)

end A382967

/-! ## A382967.P14709755688268724533

`eq[2, A372602(n+1)]+1`
-/

namespace A382967.P14709755688268724533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372602 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A382967.P14709755688268724533

namespace A382967

/-- `eq[2, A372602(n+1)]+1` -/
def P14709755688268724533.Spec : Prop :=
  ∀ n, (P14709755688268724533.a n : ℤ) = A382967 (n + 1)

end A382967

/-! ## A382967.P5334330587876866444

`eq[2, A375430(n+1)]+1`
-/

namespace A382967.P5334330587876866444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375430 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A382967.P5334330587876866444

namespace A382967

/-- `eq[2, A375430(n+1)]+1` -/
def P5334330587876866444.Spec : Prop :=
  ∀ n, (P5334330587876866444.a n : ℤ) = A382967 (n + 1)

end A382967

/-! ## A382967.P8664801971930142847

`eq[2, and(3, A277130(n+1))]+1`
-/

namespace A382967.P8664801971930142847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A277130 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A382967.P8664801971930142847

namespace A382967

/-- `eq[2, and(3, A277130(n+1))]+1` -/
def P8664801971930142847.Spec : Prop :=
  ∀ n, (P8664801971930142847.a n : ℤ) = A382967 (n + 1)

end A382967

/-! ## A382967.P10549290518720803559

`eq[2, ceil(sqrt(A392278(n+1)))]+1`
-/

namespace A382967.P10549290518720803559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A392278 (n + 1) : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A382967.P10549290518720803559

namespace A382967

/-- `eq[2, ceil(sqrt(A392278(n+1)))]+1` -/
def P10549290518720803559.Spec : Prop :=
  ∀ n, (P10549290518720803559.a n : ℤ) = A382967 (n + 1)

end A382967

/-! ## A382967.P16083432862151263086

`eq[2, A299090(A028310(n))]`
-/

namespace A382967.P16083432862151263086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299090 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A382967.P16083432862151263086

namespace A382967

/-- `eq[2, A299090(A028310(n))]` -/
def P16083432862151263086.Spec : Prop :=
  ∀ n, (P16083432862151263086.a n : ℤ) = A382967 (n + 1)

end A382967

/-! ## A382967.P14411658933894496033

`record[A053165(A013929(n+1))]`
-/

namespace A382967.P14411658933894496033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (A013929 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382967.P14411658933894496033

namespace A382967

/-- `record[A053165(A013929(n+1))]` -/
def P14411658933894496033.Spec : Prop :=
  ∀ n, P14411658933894496033.a n = A382967 (n + 1)

end A382967

/-! ## A382967.P18050554423448469932

`filter[A013929(n+1), A008835(#)]`
-/

namespace A382967.P18050554423448469932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008835 (f1 j).toNat = 1) n)

end

end A382967.P18050554423448469932

namespace A382967

/-- `filter[A013929(n+1), A008835(#)]` -/
def P18050554423448469932.Spec : Prop :=
  ∀ n, P18050554423448469932.a n = A382967 (n + 1)

end A382967

/-! ## A382967.P17489180276899715724

`filter[A046100(n+1), A107078(#)]`
-/

namespace A382967.P17489180276899715724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A382967.P17489180276899715724

namespace A382967

/-- `filter[A046100(n+1), A107078(#)]` -/
def P17489180276899715724.Spec : Prop :=
  ∀ n, P17489180276899715724.a n = A382967 (n + 1)

end A382967

/-! ## A382967.P1870592447968790130

`filter[A013929(n+1), A307430(#)]`
-/

namespace A382967.P1870592447968790130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A382967.P1870592447968790130

namespace A382967

/-- `filter[A013929(n+1), A307430(#)]` -/
def P1870592447968790130.Spec : Prop :=
  ∀ n, P1870592447968790130.a n = A382967 (n + 1)

end A382967

/-! ## A382967.P9287394672986860147

`filter[A074661(n+1), A307430(#)]`
-/

namespace A382967.P9287394672986860147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A382967.P9287394672986860147

namespace A382967

/-- `filter[A074661(n+1), A307430(#)]` -/
def P9287394672986860147.Spec : Prop :=
  ∀ n, P9287394672986860147.a n = A382967 (n + 1)

end A382967

/-! ## A382967.P14839889303772010645

`filter[A252849(n+1), A307430(#)]`
-/

namespace A382967.P14839889303772010645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A382967.P14839889303772010645

namespace A382967

/-- `filter[A252849(n+1), A307430(#)]` -/
def P14839889303772010645.Spec : Prop :=
  ∀ n, P14839889303772010645.a n = A382967 (n + 1)

end A382967

/-! ## A382967.P1766940690107975606

`filter[A162966(n+2), A307430(#)]`
-/

namespace A382967.P1766940690107975606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A382967.P1766940690107975606

namespace A382967

/-- `filter[A162966(n+2), A307430(#)]` -/
def P1766940690107975606.Spec : Prop :=
  ∀ n, P1766940690107975606.a n = A382967 (n + 1)

end A382967

/-!
# A382968: The number of non-unitary prime divisors of the n-th biquadratefree number that is not squarefree.

The programs for A382968, the canonical program `A382968.P9973608297298639006` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382968 has offset 1).

The definition of A382968 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382967, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382968.P9973608297298639006

`A056170(A382967(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A382968

/-- `A056170(A382967(n+1))` -/
def P9973608297298639006.Spec : Prop :=
  ∀ n, P9973608297298639006.a n = A382968 (n + 1)

theorem P9973608297298639006.correct : P9973608297298639006.Spec := by
  intro n
  simp only [A382968, Nat.add_sub_cancel]

end A382968

/-! ## A382968.P979684994541283397

`∑{e}[abs(1-∏{e}[A382967(n+1), #])+1, #]`
-/

namespace A382968.P979684994541283397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)| + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A382968.P979684994541283397

namespace A382968

/-- `∑{e}[abs(1-∏{e}[A382967(n+1), #])+1, #]` -/
def P979684994541283397.Spec : Prop :=
  ∀ n, (P979684994541283397.a n : ℤ) = A382968 (n + 1)

end A382968

/-! ## A382968.P8422460991609431191

`∑{e}[A382967(n+1), A000296(#)]`
-/

namespace A382968.P8422460991609431191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000296 (Nat.factorization (f1 n).natAbs p)

end

end A382968.P8422460991609431191

namespace A382968

/-- `∑{e}[A382967(n+1), A000296(#)]` -/
def P8422460991609431191.Spec : Prop :=
  ∀ n, P8422460991609431191.a n = A382968 (n + 1)

end A382968

/-! ## A382968.P7959933190844524461

`∑{e}[A382967(n+1), A001221(#)]`
-/

namespace A382968.P7959933190844524461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 (Nat.factorization (f1 n).natAbs p)

end

end A382968.P7959933190844524461

namespace A382968

/-- `∑{e}[A382967(n+1), A001221(#)]` -/
def P7959933190844524461.Spec : Prop :=
  ∀ n, P7959933190844524461.a n = A382968 (n + 1)

end A382968

/-! ## A382968.P6399677407032941325

`∑{e}[A382967(n+1), A001222(#)]`
-/

namespace A382968.P6399677407032941325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (Nat.factorization (f1 n).natAbs p)

end

end A382968.P6399677407032941325

namespace A382968

/-- `∑{e}[A382967(n+1), A001222(#)]` -/
def P6399677407032941325.Spec : Prop :=
  ∀ n, P6399677407032941325.a n = A382968 (n + 1)

end A382968

/-! ## A382968.P15101380896608647058

`∑{e}[A382967(n+1), A126970(#)]`
-/

namespace A382968.P15101380896608647058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A126970 (Nat.factorization (f1 n).natAbs p)

end

end A382968.P15101380896608647058

namespace A382968

/-- `∑{e}[A382967(n+1), A126970(#)]` -/
def P15101380896608647058.Spec : Prop :=
  ∀ n, P15101380896608647058.a n = A382968 (n + 1)

end A382968

/-! ## A382968.P3026892643771165517

`∑{e}[A382967(n+1), A160541(#)]`
-/

namespace A382968.P3026892643771165517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A160541 (Nat.factorization (f1 n).natAbs p)

end

end A382968.P3026892643771165517

namespace A382968

/-- `∑{e}[A382967(n+1), A160541(#)]` -/
def P3026892643771165517.Spec : Prop :=
  ∀ n, P3026892643771165517.a n = A382968 (n + 1)

end A382968

/-! ## A382968.P14034450276394571081

`A001222(∏{e}[A382967(1+n), #])`
-/

namespace A382968.P14034450276394571081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A382968.P14034450276394571081

namespace A382968

/-- `A001222(∏{e}[A382967(1+n), #])` -/
def P14034450276394571081.Spec : Prop :=
  ∀ n, P14034450276394571081.a n = A382968 (n + 1)

end A382968

/-! ## A382968.P7500179788906312449

`A319269(∏{e}[A382967(n+1), #])`
-/

namespace A382968.P7500179788906312449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319269 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A382968.P7500179788906312449

namespace A382968

/-- `A319269(∏{e}[A382967(n+1), #])` -/
def P7500179788906312449.Spec : Prop :=
  ∀ n, P7500179788906312449.a n = A382968 (n + 1)

end A382968

/-! ## A382968.P2538537719053380152

`A056170(eq[2, A299090(n+1)]+1)`
-/

namespace A382968.P2538537719053380152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A382968.P2538537719053380152

namespace A382968

/-- `A056170(eq[2, A299090(n+1)]+1)` -/
def P2538537719053380152.Spec : Prop :=
  ∀ n, P2538537719053380152.a n = A382968 (n + 1)

end A382968

/-! ## A382968.P10095157393888388068

`A056170(eq[2, A368781(n+1)]+1)`
-/

namespace A382968.P10095157393888388068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A382968.P10095157393888388068

namespace A382968

/-- `A056170(eq[2, A368781(n+1)]+1)` -/
def P10095157393888388068.Spec : Prop :=
  ∀ n, P10095157393888388068.a n = A382968 (n + 1)

end A382968

/-! ## A382968.P6238865396001024893

`A056170(filter[A252849(n+1), A307430(#)])`
-/

namespace A382968.P6238865396001024893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)).toNat

end

end A382968.P6238865396001024893

namespace A382968

/-- `A056170(filter[A252849(n+1), A307430(#)])` -/
def P6238865396001024893.Spec : Prop :=
  ∀ n, P6238865396001024893.a n = A382968 (n + 1)

end A382968

/-!
# A382969: The excess of the n-th noncubefree number.

The programs for A382969, the canonical program `A382969.P16762746786205773467` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382969 has offset 1).

The definition of A382969 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046099, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382969.P16762746786205773467

`A046660(A046099(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A382969

/-- `A046660(A046099(n+1))` -/
def P16762746786205773467.Spec : Prop :=
  ∀ n, P16762746786205773467.a n = A382969 (n + 1)

theorem P16762746786205773467.correct : P16762746786205773467.Spec := by
  intro n
  simp only [A382969, Nat.add_sub_cancel]

end A382969

/-! ## A382969.P9326204623812532918

`∑{e}[A046099(n+1), #-1]`
-/

namespace A382969.P9326204623812532918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A382969.P9326204623812532918

namespace A382969

/-- `∑{e}[A046099(n+1), #-1]` -/
def P9326204623812532918.Spec : Prop :=
  ∀ n, P9326204623812532918.a n = A382969 (n + 1)

end A382969

/-! ## A382969.P6017562774190408629

`A046660(lt[1, A008834(n+1)]+1)`
-/

namespace A382969.P6017562774190408629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A382969.P6017562774190408629

namespace A382969

/-- `A046660(lt[1, A008834(n+1)]+1)` -/
def P6017562774190408629.Spec : Prop :=
  ∀ n, P6017562774190408629.a n = A382969 (n + 1)

end A382969

/-! ## A382969.P14992790604851379495

`A046660(lt[1, A061704(n+1)]+1)`
-/

namespace A382969.P14992790604851379495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A382969.P14992790604851379495

namespace A382969

/-- `A046660(lt[1, A061704(n+1)]+1)` -/
def P14992790604851379495.Spec : Prop :=
  ∀ n, P14992790604851379495.a n = A382969 (n + 1)

end A382969

/-! ## A382969.P18252052904463860904

`A046660(comp[A004709(n+1)-1]+1)`
-/

namespace A382969.P18252052904463860904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A382969.P18252052904463860904

namespace A382969

/-- `A046660(comp[A004709(n+1)-1]+1)` -/
def P18252052904463860904.Spec : Prop :=
  ∀ n, P18252052904463860904.a n = A382969 (n + 1)

end A382969

/-! ## A382969.P17745583181363488587

`A046660(lt[1, A317941(n+1)²]+1)`
-/

namespace A382969.P17745583181363488587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317941 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A382969.P17745583181363488587

namespace A382969

/-- `A046660(lt[1, A317941(n+1)²]+1)` -/
def P17745583181363488587.Spec : Prop :=
  ∀ n, P17745583181363488587.a n = A382969 (n + 1)

end A382969

/-! ## A382969.P12291340397688941427

`A046660(∪[A046101(n+1), A176297(n+1)])`
-/

namespace A382969.P12291340397688941427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176297 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A382969.P12291340397688941427

namespace A382969

/-- `A046660(∪[A046101(n+1), A176297(n+1)])` -/
def P12291340397688941427.Spec : Prop :=
  ∀ n, P12291340397688941427.a n = A382969 (n + 1)

end A382969

/-! ## A382969.P8572054279345319063

`A046660(∪[A046101(n+1), A366761(n+1)])`
-/

namespace A382969.P8572054279345319063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366761 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A382969.P8572054279345319063

namespace A382969

/-- `A046660(∪[A046101(n+1), A366761(n+1)])` -/
def P8572054279345319063.Spec : Prop :=
  ∀ n, P8572054279345319063.a n = A382969 (n + 1)

end A382969

/-!
# A382971: Population of elementary triangular automaton rule 146 at generation n, starting from a lone 1 cell at generation 0.

The programs for A382971, there is no canonical definition to state claims against.
-/

/-! ## A382971.P2538391007801425397

`filter[A372581(n), A114213(#)]`
-/

namespace A382971.P2538391007801425397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A114213 (f1 j).toNat = 1) n)

end

end A382971.P2538391007801425397

/-! ## A382971.P11525342928500504129

`filter[A372581(n), A385395(#)]`
-/

namespace A382971.P11525342928500504129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A385395 (f1 j).toNat = 1) n)

end

end A382971.P11525342928500504129

/-!
# A382972: Second center column of elementary triangular automaton rule 146, starting from a lone 1 cell.

The programs for A382972, there is no canonical definition to state claims against.
-/

/-! ## A382972.P7334538598401272273

`log2(gcd(2, A382971(n)))`
-/

namespace A382972.P7334538598401272273
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A382971 n) : ℝ)

end

end A382972.P7334538598401272273

/-! ## A382972.P17080128239284639461

`n%(2-A383028(n))`
-/

namespace A382972.P17080128239284639461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (2 - A383028 n)

end

end A382972.P17080128239284639461

/-! ## A382972.P14578257417357376567

`A381735(val(A382971(n)², 2))`
-/

namespace A382972.P14578257417357376567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381735 (SequenceMachineLib.valuation (A382971 n ^ 2).toNat 2)

end

end A382972.P14578257417357376567

/-! ## A382972.P15231622951010982487

`and(A382971(n)+1, A000035(n))`
-/

namespace A382972.P15231622951010982487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A382971 n + 1) (A000035 n)

end

end A382972.P15231622951010982487

/-! ## A382972.P17014470811943725998

`(A382971(n)+A191067(n+1))%2`
-/

namespace A382972.P17014470811943725998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382971 n + A191067 (n + 1)) 2

end

end A382972.P17014470811943725998

/-! ## A382972.P5356115947887551230

`(A382971(n)+A259565(n+1))%2`
-/

namespace A382972.P5356115947887551230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382971 n + A259565 (n + 1)) 2

end

end A382972.P5356115947887551230

/-! ## A382972.P15750943053964617488

`A380668(gcd(n+5+A383028(n), n+1))`
-/

namespace A382972.P15750943053964617488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380668 (Int.gcd ((n + 5 : ℤ) + A383028 n) (n + 1 : ℤ))

end

end A382972.P15750943053964617488

/-! ## A382972.P10222645819279863822

`A084938(or(A020639(3*(n+1)), A383028(n)))`
-/

namespace A382972.P10222645819279863822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (Int.lor (A020639 (3 * (n + 1))) (A383028 n)).toNat

end

end A382972.P10222645819279863822

/-! ## A382972.P9309099545980997017

`(A382971(n)+A020458(n+4))%2`
-/

namespace A382972.P9309099545980997017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382971 n + A020458 (n + 4)) 2

end

end A382972.P9309099545980997017

/-! ## A382972.P5725005919496842649

`and(A382971(n)+1, A055396(2*(n+2)))`
-/

namespace A382972.P5725005919496842649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A382971 n + 1) (A055396 (2 * (n + 2)))

end

end A382972.P5725005919496842649

/-! ## A382972.P5695275980099749076

`A059841(A382971(n)%A000010(3*n+4))`
-/

namespace A382972.P5695275980099749076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (Int.tmod (A382971 n) (A000010 (3 * n + 4))).toNat

end

end A382972.P5695275980099749076

/-! ## A382972.P6929402634324500916

`(A396307(3*n+2)+A382971(n))%2`
-/

namespace A382972.P6929402634324500916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A396307 (3 * n + 2) + A382971 n) 2

end

end A382972.P6929402634324500916

/-! ## A382972.P7068682433923002213

`A120325(A382971(n))`
-/

namespace A382972.P7068682433923002213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120325 (A382971 n).toNat

end

end A382972.P7068682433923002213

/-! ## A382972.P9088463782573193406

`∑{p}[A382971(n), A318455(#)]`
-/

namespace A382972.P9088463782573193406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A318455 p

end

end A382972.P9088463782573193406

/-! ## A382972.P7912291477357131225

`(2+A084663(A382971(n)+3))%2`
-/

namespace A382972.P7912291477357131225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 + A084663 (A382971 n + 3).toNat) 2

end

end A382972.P7912291477357131225

/-! ## A382972.P339670673976550429

`A005811(n)%A040001(A382971(n))`
-/

namespace A382972.P339670673976550429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005811 n) (A040001 (A382971 n).toNat)

end

end A382972.P339670673976550429

/-! ## A382972.P10005417267402355100

`A007088(n)%A040001(A382971(n))`
-/

namespace A382972.P10005417267402355100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007088 n) (A040001 (A382971 n).toNat)

end

end A382972.P10005417267402355100

/-! ## A382972.P15211637247647728382

`A040001(n)%A040001(A382971(n))`
-/

namespace A382972.P15211637247647728382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040001 n) (A040001 (A382971 n).toNat)

end

end A382972.P15211637247647728382

/-! ## A382972.P11502159141335941052

`A059841(A384188(n+2)-A382971(n))`
-/

namespace A382972.P11502159141335941052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A384188 (n + 2) - A382971 n).toNat

end

end A382972.P11502159141335941052

/-! ## A382972.P12907609761039661064

`∑{p}[A382971(n), A007814(#)]`
-/

namespace A382972.P12907609761039661064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007814 p

end

end A382972.P12907609761039661064

/-!
# A382973: a(n) = 4*n^3 - 6*n^2 + 6*n - 2 + (-1)^n.

The programs for A382973, the canonical program `A382973.P15428187107624024989` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382973 has offset 1).

The definition of A382973 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)^3-6*(n+1)²+6*(n+1)-2+(-1)^(n+1)` (program `A382973.P15428187107624024989`, by `A382973.P15428187107624024989.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A382973.P14086098397006646914

`ogf((1+16x+14x^2+16x^3+x^4)/(1-3x+2x^2+2x^3-3x^4+x^5))`
-/

namespace A382973.P14086098397006646914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 16, 14, 16, 1] [1, -3, 2, 2, -3, 1] n

end

end A382973.P14086098397006646914

namespace A382973

/-- `ogf((1+16x+14x^2+16x^3+x^4)/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P14086098397006646914.Spec : Prop :=
  ∀ n, P14086098397006646914.a n = A382973 (n + 1)

end A382973

/-! ## A382973.P15428187107624024989

`4*(n+1)^3-6*(n+1)²+6*(n+1)-2+(-1)^(n+1)`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A382973

/-- `4*(n+1)^3-6*(n+1)²+6*(n+1)-2+(-1)^(n+1)` -/
def P15428187107624024989.Spec : Prop :=
  ∀ n, P15428187107624024989.a n = A382973 (n + 1)

theorem P15428187107624024989.correct : P15428187107624024989.Spec := by
  intro n
  simp only [A382973, Nat.add_sub_cancel]

end A382973

/-! ## A382973.P9256529253534610430

`Δ[or(1, n²)]+Δ[n^4]`
-/

namespace A382973.P9256529253534610430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A382973.P9256529253534610430

namespace A382973

/-- `Δ[or(1, n²)]+Δ[n^4]` -/
def P9256529253534610430.Spec : Prop :=
  ∀ n, P9256529253534610430.a n = A382973 (n + 1)

end A382973

/-! ## A382973.P10968745349338769855

`Δ[n^4+n²-n%2]`
-/

namespace A382973.P10968745349338769855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 + n ^ 2 : ℤ) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A382973.P10968745349338769855

namespace A382973

/-- `Δ[n^4+n²-n%2]` -/
def P10968745349338769855.Spec : Prop :=
  ∀ n, P10968745349338769855.a n = A382973 (n + 1)

end A382973

/-! ## A382973.P8565895694748018555

`Δ[or(1, n^4)]+1+n+n`
-/

namespace A382973.P8565895694748018555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1 + (n : ℤ) + (n : ℤ)

end

end A382973.P8565895694748018555

namespace A382973

/-- `Δ[or(1, n^4)]+1+n+n` -/
def P8565895694748018555.Spec : Prop :=
  ∀ n, P8565895694748018555.a n = A382973 (n + 1)

end A382973

/-! ## A382973.P17890183845193115300

`Δ[or((n+1)%2, A071253(n))]`
-/

namespace A382973.P17890183845193115300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((n + 1) % 2 : ℕ) : ℤ) (A071253 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A382973.P17890183845193115300

namespace A382973

/-- `Δ[or((n+1)%2, A071253(n))]` -/
def P17890183845193115300.Spec : Prop :=
  ∀ n, P17890183845193115300.a n = A382973 (n + 1)

end A382973

/-! ## A382973.P14977586267528888482

`Δ[A059826(n)-A000035(n)]`
-/

namespace A382973.P14977586267528888482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059826 n - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A382973.P14977586267528888482

namespace A382973

/-- `Δ[A059826(n)-A000035(n)]` -/
def P14977586267528888482.Spec : Prop :=
  ∀ n, P14977586267528888482.a n = A382973 (n + 1)

end A382973

/-! ## A382973.P17244813977185583703

`Δ[A071253(n)-A056619(3*n+5)]`
-/

namespace A382973.P17244813977185583703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071253 n - A056619 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A382973.P17244813977185583703

namespace A382973

/-- `Δ[A071253(n)-A056619(3*n+5)]` -/
def P17244813977185583703.Spec : Prop :=
  ∀ n, P17244813977185583703.a n = A382973 (n + 1)

end A382973

/-! ## A382973.P5141024051987174108

`Δ[A213041(n²)]`
-/

namespace A382973.P5141024051987174108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213041 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A382973.P5141024051987174108

namespace A382973

/-- `Δ[A213041(n²)]` -/
def P5141024051987174108.Spec : Prop :=
  ∀ n, P5141024051987174108.a n = A382973 (n + 1)

end A382973

/-! ## A382973.P15426912668834431690

`Δ[A212988(2*n²)]`
-/

namespace A382973.P15426912668834431690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212988 (2 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A382973.P15426912668834431690

namespace A382973

/-- `Δ[A212988(2*n²)]` -/
def P15426912668834431690.Spec : Prop :=
  ∀ n, P15426912668834431690.a n = A382973 (n + 1)

end A382973

/-!
# A382976: Expansion of Product_{k>=1} (1 + (2^k + 1) * x^k).

The programs for A382976, there is no canonical definition to state claims against.
-/

/-! ## A382976.P3513738317069703526

`A266857(n)-A302242(A304191(n))`
-/

namespace A382976.P3513738317069703526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266857 n - A302242 (A304191 n).toNat

end

end A382976.P3513738317069703526

/-! ## A382976.P16791957063710896519

`A002024(A172392(n)/A240783(n+1))`
-/

namespace A382976.P16791957063710896519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (SequenceMachineLib.roundAway ((A172392 n : ℚ) / (A240783 (n + 1) : ℚ))).toNat

end

end A382976.P16791957063710896519

/-!
# A382977: Expansion of Product_{k>=1} 1/(1 - (2^k - 1) * x^k).

The programs for A382977, there is no canonical definition to state claims against.
-/

/-! ## A382977.P5923724121106672658

`A225086(A301981(n))`
-/

namespace A382977.P5923724121106672658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225086 (A301981 n).toNat

end

end A382977.P5923724121106672658

/-!
# A382978: Expansion of Product_{k>=1} (1 + (2^k - 1) * x^k).

The programs for A382978, there is no canonical definition to state claims against.
-/

/-! ## A382978.P16838442023048587290

`A212991(A233896(n))`
-/

namespace A382978.P16838442023048587290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212991 (A233896 n).toNat

end

end A382978.P16838442023048587290

/-! ## A382978.P12440900867096292827

`A051162(or(A007526(n), A007564(n)))`
-/

namespace A382978.P12440900867096292827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (Int.lor (A007526 n) (A007564 n)).toNat

end

end A382978.P12440900867096292827

/-! ## A382978.P7255545995214909593

`A185958(A000079(n)-A363943(n+1))`
-/

namespace A382978.P7255545995214909593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185958 (A000079 n - A363943 (n + 1)).toNat

end

end A382978.P7255545995214909593

/-!
# A382979: a(n) = [(x*y)^n] Product_{k>=1} 1/(1 - x^k + y^k).

The programs for A382979, there is no canonical definition to state claims against.
-/

/-! ## A382979.P5090156193557213267

`A382974(∑[4*n])`
-/

namespace A382979.P5090156193557213267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382974 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A382979.P5090156193557213267

/-! ## A382979.P8381799357041126180

`A382974(A046092(n))*A385896(n)`
-/

namespace A382979.P8381799357041126180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382974 (A046092 n).toNat * A385896 n

end

end A382979.P8381799357041126180

/-!
# A382981: The smallest n-digit prime that turns composite at each step as its digits are successively appended, starting from the last.

The programs for A382981, there is no canonical definition to state claims against.
-/

/-! ## A382981.P12802698622831808645

`A000040(A092689(n)+A006880(n))`
-/

namespace A382981.P12802698622831808645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A092689 n + A006880 n).toNat

end

end A382981.P12802698622831808645

/-! ## A382981.P15713222391106520432

`A000040(A114972(n)+A006880(n))`
-/

namespace A382981.P15713222391106520432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A114972 n + A006880 n).toNat

end

end A382981.P15713222391106520432

/-!
# A382983: a(n) is the number of solutions to n = x*y in positive integers x <= y where x + y is prime.

The programs for A382983, the canonical program `A382983.P16864973918105220280` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382983 has offset 1).

The definition of A382983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382983.P8038685315265564067

`ceil(A282849(1+n)/2)`
-/

namespace A382983.P8038685315265564067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A282849 (1 + n) : ℚ) / 2⌉

end

end A382983.P8038685315265564067

namespace A382983

/-- `ceil(A282849(1+n)/2)` -/
def P8038685315265564067.Spec : Prop :=
  ∀ n, P8038685315265564067.a n = A382983 (n + 1)

end A382983

/-! ## A382983.P3308888057914524543

`floor((A282849(n+1)+1)/2)`
-/

namespace A382983.P3308888057914524543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A282849 (n + 1) + 1 : ℚ) / 2⌋

end

end A382983.P3308888057914524543

namespace A382983

/-- `floor((A282849(n+1)+1)/2)` -/
def P3308888057914524543.Spec : Prop :=
  ∀ n, P3308888057914524543.a n = A382983 (n + 1)

end A382983

/-! ## A382983.P16864973918105220280

`A004525(A282849(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A382983

/-- `A004525(A282849(n+1))` -/
def P16864973918105220280.Spec : Prop :=
  ∀ n, P16864973918105220280.a n = A382983 (n + 1)

theorem P16864973918105220280.correct : P16864973918105220280.Spec := by
  intro n
  simp only [A382983, Nat.add_sub_cancel]

end A382983

/-! ## A382983.P5694847409179630074

`A282849(n+1)/A000034(n)`
-/

namespace A382983.P5694847409179630074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282849 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A382983.P5694847409179630074

namespace A382983

/-- `A282849(n+1)/A000034(n)` -/
def P5694847409179630074.Spec : Prop :=
  ∀ n, P5694847409179630074.a n = (A382983 (n + 1) : ℚ)

end A382983

/-! ## A382983.P5358581384698025870

`A282849(n+1)/A040000(n)`
-/

namespace A382983.P5358581384698025870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282849 (n + 1) : ℚ) / (A040000 n : ℚ)

end

end A382983.P5358581384698025870

namespace A382983

/-- `A282849(n+1)/A040000(n)` -/
def P5358581384698025870.Spec : Prop :=
  ∀ n, P5358581384698025870.a n = (A382983 (n + 1) : ℚ)

end A382983

/-! ## A382983.P18299343121917035913

`A282849(n+1)/A061393(n)`
-/

namespace A382983.P18299343121917035913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282849 (n + 1) : ℚ) / (A061393 n : ℚ)

end

end A382983.P18299343121917035913

namespace A382983

/-- `A282849(n+1)/A061393(n)` -/
def P18299343121917035913.Spec : Prop :=
  ∀ n, P18299343121917035913.a n = (A382983 (n + 1) : ℚ)

end A382983

/-! ## A382983.P14450292768448002149

`A282849(n+1)/A068073(n)`
-/

namespace A382983.P14450292768448002149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282849 (n + 1) : ℚ) / (A068073 n : ℚ)

end

end A382983.P14450292768448002149

namespace A382983

/-- `A282849(n+1)/A068073(n)` -/
def P14450292768448002149.Spec : Prop :=
  ∀ n, P14450292768448002149.a n = (A382983 (n + 1) : ℚ)

end A382983

/-! ## A382983.P12866860503779090656

`A282849(n+1)/A083952(n)`
-/

namespace A382983.P12866860503779090656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282849 (n + 1) : ℚ) / (A083952 n : ℚ)

end

end A382983.P12866860503779090656

namespace A382983

/-- `A282849(n+1)/A083952(n)` -/
def P12866860503779090656.Spec : Prop :=
  ∀ n, P12866860503779090656.a n = (A382983 (n + 1) : ℚ)

end A382983

/-! ## A382983.P15249646515290577214

`A282849(n+1)/A105220(n)`
-/

namespace A382983.P15249646515290577214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282849 (n + 1) : ℚ) / (A105220 n : ℚ)

end

end A382983.P15249646515290577214

namespace A382983

/-- `A282849(n+1)/A105220(n)` -/
def P15249646515290577214.Spec : Prop :=
  ∀ n, P15249646515290577214.a n = (A382983 (n + 1) : ℚ)

end A382983

/-! ## A382983.P15081889963763463459

`A282849(n+1)/A141056(n)`
-/

namespace A382983.P15081889963763463459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282849 (n + 1) : ℚ) / (A141056 n : ℚ)

end

end A382983.P15081889963763463459

namespace A382983

/-- `A282849(n+1)/A141056(n)` -/
def P15081889963763463459.Spec : Prop :=
  ∀ n, P15081889963763463459.a n = (A382983 (n + 1) : ℚ)

end A382983

/-! ## A382983.P7127308704893717892

`A282849(n+1)/A141310(n)`
-/

namespace A382983.P7127308704893717892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282849 (n + 1) : ℚ) / (A141310 n : ℚ)

end

end A382983.P7127308704893717892

namespace A382983

/-- `A282849(n+1)/A141310(n)` -/
def P7127308704893717892.Spec : Prop :=
  ∀ n, P7127308704893717892.a n = (A382983 (n + 1) : ℚ)

end A382983

/-! ## A382983.P9086518489523094299

`A282849(n+1)/A177002(n)`
-/

namespace A382983.P9086518489523094299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282849 (n + 1) : ℚ) / (A177002 n : ℚ)

end

end A382983.P9086518489523094299

namespace A382983

/-- `A282849(n+1)/A177002(n)` -/
def P9086518489523094299.Spec : Prop :=
  ∀ n, P9086518489523094299.a n = (A382983 (n + 1) : ℚ)

end A382983

/-! ## A382983.P13320855367169886142

`A282849(n+1)/A186181(n)`
-/

namespace A382983.P13320855367169886142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282849 (n + 1) : ℚ) / (A186181 n : ℚ)

end

end A382983.P13320855367169886142

namespace A382983

/-- `A282849(n+1)/A186181(n)` -/
def P13320855367169886142.Spec : Prop :=
  ∀ n, P13320855367169886142.a n = (A382983 (n + 1) : ℚ)

end A382983

/-! ## A382983.P7613744799320476334

`A282849(n+1)/A186187(n)`
-/

namespace A382983.P7613744799320476334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282849 (n + 1) : ℚ) / (A186187 n : ℚ)

end

end A382983.P7613744799320476334

namespace A382983

/-- `A282849(n+1)/A186187(n)` -/
def P7613744799320476334.Spec : Prop :=
  ∀ n, P7613744799320476334.a n = (A382983 (n + 1) : ℚ)

end A382983

/-! ## A382983.P17514697958707767537

`A282849(n+1)/A353486(n)`
-/

namespace A382983.P17514697958707767537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282849 (n + 1) : ℚ) / (A353486 n : ℚ)

end

end A382983.P17514697958707767537

namespace A382983

/-- `A282849(n+1)/A353486(n)` -/
def P17514697958707767537.Spec : Prop :=
  ∀ n, P17514697958707767537.a n = (A382983 (n + 1) : ℚ)

end A382983

/-! ## A382983.P840182699630955937

`A282849(n+1)/A020639(n+1)`
-/

namespace A382983.P840182699630955937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282849 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ)

end

end A382983.P840182699630955937

namespace A382983

/-- `A282849(n+1)/A020639(n+1)` -/
def P840182699630955937.Spec : Prop :=
  ∀ n, P840182699630955937.a n = (A382983 (n + 1) : ℚ)

end A382983

/-! ## A382983.P1342734707869384807

`A282849(n+1)/A059855(n+1)`
-/

namespace A382983.P1342734707869384807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282849 (n + 1) : ℚ) / (A059855 (n + 1) : ℚ)

end

end A382983.P1342734707869384807

namespace A382983

/-- `A282849(n+1)/A059855(n+1)` -/
def P1342734707869384807.Spec : Prop :=
  ∀ n, P1342734707869384807.a n = (A382983 (n + 1) : ℚ)

end A382983

/-! ## A382983.P10762883509153518890

`A088627(A123684(n+1))`
-/

namespace A382983.P10762883509153518890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088627 (A123684 (n + 1)).toNat

end

end A382983.P10762883509153518890

namespace A382983

/-- `A088627(A123684(n+1))` -/
def P10762883509153518890.Spec : Prop :=
  ∀ n, P10762883509153518890.a n = A382983 (n + 1)

end A382983

/-! ## A382983.P4442423565596755406

`A088627(A160413(n+1))`
-/

namespace A382983.P4442423565596755406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088627 (A160413 (n + 1)).toNat

end

end A382983.P4442423565596755406

namespace A382983

/-- `A088627(A160413(n+1))` -/
def P4442423565596755406.Spec : Prop :=
  ∀ n, P4442423565596755406.a n = A382983 (n + 1)

end A382983

/-! ## A382983.P2729145163751006743

`A088627(A085062(n+1))`
-/

namespace A382983.P2729145163751006743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088627 (A085062 (n + 1)).toNat

end

end A382983.P2729145163751006743

namespace A382983

/-- `A088627(A085062(n+1))` -/
def P2729145163751006743.Spec : Prop :=
  ∀ n, P2729145163751006743.a n = A382983 (n + 1)

end A382983

/-!
# A382984: Coefficient of x^3 in expansion of (x+1) * (x+4) * ... * (x+3*n-2).

The programs for A382984, there is no canonical definition to state claims against.
-/

/-! ## A382984.P6156644950790150708

`A061217(A047793(n))`
-/

namespace A382984.P6156644950790150708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061217 (A047793 n).toNat

end

end A382984.P6156644950790150708

/-! ## A382984.P9815374567749394400

`A008924(A079342(n+1))`
-/

namespace A382984.P9815374567749394400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008924 (A079342 (n + 1)).toNat

end

end A382984.P9815374567749394400

/-!
# A382985: Coefficient of x^4 in expansion of (x+1) * (x+4) * ... * (x+3*n-2).

The programs for A382985, there is no canonical definition to state claims against.
-/

/-! ## A382985.P13350455997346428415

`A000332(n)*A235791(A369328(n+2))`
-/

namespace A382985.P13350455997346428415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n * A235791 (A369328 (n + 2)).toNat

end

end A382985.P13350455997346428415

/-! ## A382985.P13321321054197038418

`A354330(A014612(n+1)^A178976(n))`
-/

namespace A382985.P13321321054197038418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354330 (SequenceMachineLib.roundAway ((A014612 (n + 1) : ℚ) ^ (A178976 n : ℤ))).toNat

end

end A382985.P13321321054197038418

/-! ## A382985.P7654024591718040137

`A016756(2*n)%A381454(A081888(n+1))`
-/

namespace A382985.P7654024591718040137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016756 (2 * n)) (A381454 (A081888 (n + 1)).toNat)

end

end A382985.P7654024591718040137

/-!
# A382986: a(n) is the number of iterations that n requires to reach 0 under the map k -> b(k) where b(k) = k+1 if k is even, and b(k) = k-gpf(k) if k is odd, where gpf(k) is the greatest prime dividing k.

The programs for A382986, there is no canonical definition to state claims against.
-/

/-! ## A382986.P382214091964315356

`gcd(A037314(n), A048726(A000695(n)²))`
-/

namespace A382986.P382214091964315356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037314 n) (A048726 (A000695 n ^ 2).toNat)

end

end A382986.P382214091964315356

/-! ## A382986.P5591655639941520689

`A112632(n+1)*A124766(A252756(n+1))`
-/

namespace A382986.P5591655639941520689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (n + 1) * A124766 (A252756 (n + 1)).toNat

end

end A382986.P5591655639941520689

/-! ## A382986.P1147635446612287183

`gcd(A346382(n+1)-1-n, 2*n)`
-/

namespace A382986.P1147635446612287183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A346382 (n + 1) - 1 - (n : ℤ)) (2 * n : ℤ)

end

end A382986.P1147635446612287183

/-! ## A382986.P15072701940416349905

`gcd(n², A076178(A333827(n)))`
-/

namespace A382986.P15072701940416349905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (A076178 (A333827 n).toNat)

end

end A382986.P15072701940416349905

/-! ## A382986.P2864105158772644309

`gcd(A024631(n), A255201(A286931(n+1)))`
-/

namespace A382986.P2864105158772644309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024631 n) (A255201 (A286931 (n + 1)).toNat)

end

end A382986.P2864105158772644309

/-!
# A382987: a(n) is the total sum of the last symbol in all Catalan words of length n avoiding the pattern (>=,>=).

The programs for A382987, the canonical program `A382987.P16727742091010566575` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382987 has offset 0).

The definition of A382987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382987.P13336587507619146176

`A275210(n)+A275209(n)`
-/

namespace A382987.P13336587507619146176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275210 n + A275209 n

end

end A382987.P13336587507619146176

namespace A382987

/-- `A275210(n)+A275209(n)` -/
def P13336587507619146176.Spec : Prop :=
  ∀ n, P13336587507619146176.a n = A382987 n

end A382987

/-! ## A382987.P16727742091010566575

`A026269(n+2)-A005554(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A382987

/-- `A026269(n+2)-A005554(n+1)` -/
def P16727742091010566575.Spec : Prop :=
  ∀ n, P16727742091010566575.a n = A382987 n

theorem P16727742091010566575.correct : P16727742091010566575.Spec := by
  intro n
  simp only [A382987]

end A382987

/-! ## A382987.P8353631861868665535

`∑[A026270(A000007(n)+1+n)]-A005554(n+1)`
-/

namespace A382987.P8353631861868665535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026270 (A000007 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005554 (n + 1)

end

end A382987.P8353631861868665535

namespace A382987

/-- `∑[A026270(A000007(n)+1+n)]-A005554(n+1)` -/
def P8353631861868665535.Spec : Prop :=
  ∀ n, P8353631861868665535.a n = A382987 n

end A382987

/-! ## A382987.P8365416308537492144

`A002026(n+1)-A105695(n+1)-A005554(n+1)`
-/

namespace A382987.P8365416308537492144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 (n + 1) - A105695 (n + 1) - A005554 (n + 1)

end

end A382987.P8365416308537492144

namespace A382987

/-- `A002026(n+1)-A105695(n+1)-A005554(n+1)` -/
def P8365416308537492144.Spec : Prop :=
  ∀ n, P8365416308537492144.a n = A382987 n

end A382987

/-! ## A382987.P1202320813565188519

`A105695(n+3)-A105695(n+1)-A005554(n+1)`
-/

namespace A382987.P1202320813565188519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 (n + 3) - A105695 (n + 1) - A005554 (n + 1)

end

end A382987.P1202320813565188519

namespace A382987

/-- `A105695(n+3)-A105695(n+1)-A005554(n+1)` -/
def P1202320813565188519.Spec : Prop :=
  ∀ n, P1202320813565188519.a n = A382987 n

end A382987

/-! ## A382987.P712809543794104030

`Δ[A292440(n+1)+A001006(n+1)]-A005554(n+1)`
-/

namespace A382987.P712809543794104030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292440 (n + 1) + A001006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005554 (n + 1)

end

end A382987.P712809543794104030

namespace A382987

/-- `Δ[A292440(n+1)+A001006(n+1)]-A005554(n+1)` -/
def P712809543794104030.Spec : Prop :=
  ∀ n, P712809543794104030.a n = A382987 n

end A382987

/-!
# A382988: a(n) is the total sum of semiperimeters over all (>=,>=)-polyominoes of length n.

The programs for A382988, the canonical program `A382988.P367253485696064616` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382988 has offset 0).

The definition of A382988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382988.P367253485696064616

`A298300(2+n)-A189912(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A382988

/-- `A298300(2+n)-A189912(n)` -/
def P367253485696064616.Spec : Prop :=
  ∀ n, P367253485696064616.a n = A382988 n

theorem P367253485696064616.correct : P367253485696064616.Spec := by
  intro n
  simp only [A382988]

end A382988

/-! ## A382988.P20266233056296648

`A369359(n+1)-A007971(n+2)`
-/

namespace A382988.P20266233056296648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369359 (n + 1) - A007971 (n + 2)

end

end A382988.P20266233056296648

namespace A382988

/-- `A369359(n+1)-A007971(n+2)` -/
def P20266233056296648.Spec : Prop :=
  ∀ n, P20266233056296648.a n = A382988 n

end A382988

/-! ## A382988.P14561410782788907733

`A369359(1+n)-2*A001006(n)`
-/

namespace A382988.P14561410782788907733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369359 (1 + n) - 2 * A001006 n

end

end A382988.P14561410782788907733

namespace A382988

/-- `A369359(1+n)-2*A001006(n)` -/
def P14561410782788907733.Spec : Prop :=
  ∀ n, P14561410782788907733.a n = A382988 n

end A382988

/-! ## A382988.P5610137152203914297

`A369359(n+1)-(A001006(n)+A001006(n))`
-/

namespace A382988.P5610137152203914297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369359 (n + 1) - (A001006 n + A001006 n)

end

end A382988.P5610137152203914297

namespace A382988

/-- `A369359(n+1)-(A001006(n)+A001006(n))` -/
def P5610137152203914297.Spec : Prop :=
  ∀ n, P5610137152203914297.a n = A382988 n

end A382988

/-! ## A382988.P9829172237229819810

`A025178(n+2)-(A002426(n)+A001006(n))`
-/

namespace A382988.P9829172237229819810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025178 (n + 2) - (A002426 n + A001006 n)

end

end A382988.P9829172237229819810

namespace A382988

/-- `A025178(n+2)-(A002426(n)+A001006(n))` -/
def P9829172237229819810.Spec : Prop :=
  ∀ n, P9829172237229819810.a n = A382988 n

end A382988

/-!
# A382989: a(n) is the total sum of area over all (>=,>=)-polyominoes of length n.

The programs for A382989, the canonical program `A382989.P8482641082575908324` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382989 has offset 0).

The definition of A382989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382989.P8482641082575908324

`(3^(n+1)+2*A002426(n+1)-A002426(n+2)-3*A002426(n+3)+A002426(n+4))/2`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A382989

/-- `(3^(n+1)+2*A002426(n+1)-A002426(n+2)-3*A002426(n+3)+A002426(n+4))/2` -/
def P8482641082575908324.Spec : Prop :=
  ∀ n, P8482641082575908324.a n = (A382989 n : ℚ)

end A382989

/-! ## A382989.P5092707976716517380

`A238451(A370368(n))+A137745(n+4)`
-/

namespace A382989.P5092707976716517380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238451 (A370368 n).toNat + A137745 (n + 4)

end

end A382989.P5092707976716517380

namespace A382989

/-- `A238451(A370368(n))+A137745(n+4)` -/
def P5092707976716517380.Spec : Prop :=
  ∀ n, P5092707976716517380.a n = A382989 n

end A382989

/-!
# A382990: a(n) is the total number of interior points of over all (>=,>=)-polyominoes of length n.

The programs for A382990, there is no canonical definition to state claims against.
-/

/-! ## A382990.P7435631420291197709

`A199248(n)-A326031(A003319(n+1))`
-/

namespace A382990.P7435631420291197709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199248 n - A326031 (A003319 (n + 1)).toNat

end

end A382990.P7435631420291197709

/-! ## A382990.P10674329187930311633

`A394296(A178452(n+2)*A289322(n))`
-/

namespace A382990.P10674329187930311633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394296 (A178452 (n + 2) * A289322 n).toNat

end

end A382990.P10674329187930311633

/-! ## A382990.P10277131739890735914

`A173379(A162439(n+1))%A363812(n)`
-/

namespace A382990.P10277131739890735914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173379 (A162439 (n + 1)).toNat) (A363812 n)

end

end A382990.P10277131739890735914

/-!
# A382991: Number of compositions of n such that any part 1 at position k can be k different colors.

The programs for A382991, there is no canonical definition to state claims against.
-/

/-! ## A382991.P17735690191569469880

`A382992(n)+Δ[A000045(n)]`
-/

namespace A382991.P17735690191569469880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382992 n + (f1 (n + 1) - f1 n)

end

end A382991.P17735690191569469880

/-! ## A382991.P13008530469550520529

`A390583(5^n)`
-/

namespace A382991.P13008530469550520529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390583 (5 ^ n)

end

end A382991.P13008530469550520529

/-!
# A382992: Number of compositions of n that have at least 1 part equal to 1 and any part 1 at position k can be k different colors.

The programs for A382992, there is no canonical definition to state claims against.
-/

/-! ## A382992.P12328985216024543009

`A382991(n)-Δ[A000045(n)]`
-/

namespace A382992.P12328985216024543009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382991 n - (f1 (n + 1) - f1 n)

end

end A382992.P12328985216024543009

/-! ## A382992.P9468472508691954272

`floor(sqrt(2+A387005(n+1)))-1`
-/

namespace A382992.P9468472508691954272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 + A387005 (n + 1)) - 1

end

end A382992.P9468472508691954272

/-!
# A382993: Square array A(n,k), n >= 1, k >= 1, read by antidiagonals downwards, where A(n,k) = -(1/n) * Sum_{d|n} phi(n/d) * (-k)^d.

The programs for A382993, there is no canonical definition to state claims against.
-/

/-! ## A382993.P17950368163711438043

`A382994(n+1)/A002260(n+1)`
-/

namespace A382993.P17950368163711438043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382994 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A382993.P17950368163711438043

/-! ## A382993.P4655425720145540309

`A382994(n+1)/(A002262(n)+1)`
-/

namespace A382993.P4655425720145540309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382994 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)

end

end A382993.P4655425720145540309

/-! ## A382993.P3450316951680246610

`A382994(n+1)/A080511(n+1)`
-/

namespace A382993.P3450316951680246610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382994 (n + 1) : ℚ) / (A080511 (n + 1) : ℚ)

end

end A382993.P3450316951680246610

/-! ## A382993.P4982254144641565310

`A386385(A043277(n+1)^n)+T(n-1,k)-T(n-1,k-1)` with `a(0)=1`
-/

namespace A382993.P4982254144641565310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A386385 (A043277 (n + 1) ^ n).toNat + SequenceMachineLib.triUp a n - SequenceMachineLib.triUpLeft a n

end

end A382993.P4982254144641565310

/-!
# A382994: Square array A(n,k), n >= 1, k >= 1, read by antidiagonals downwards, where A(n,k) = -Sum_{d|n} phi(n/d) * (-k)^d.

The programs for A382994, there is no canonical definition to state claims against.
-/

/-! ## A382994.P13064995511947775756

`(1+col(n))*A382993(n+1)`
-/

namespace A382994.P13064995511947775756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + SequenceMachineLib.triCol n : ℤ) * A382993 (n + 1)

end

end A382994.P13064995511947775756

/-! ## A382994.P4778707327287911080

`A002260(1+n)*A382993(n+1)`
-/

namespace A382994.P4778707327287911080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (1 + n) * A382993 (n + 1)

end

end A382994.P4778707327287911080

/-! ## A382994.P15027307202753530395

`(A002262(n)+1)*A382993(n+1)`
-/

namespace A382994.P15027307202753530395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A382993 (n + 1)

end

end A382994.P15027307202753530395

/-! ## A382994.P12796496901933967281

`A004736(n+1)*A382995(n+1)`
-/

namespace A382994.P12796496901933967281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A382995 (n + 1)

end

end A382994.P12796496901933967281

/-! ## A382994.P6267135879655270509

`A080511(n+1)*A382993(n+1)`
-/

namespace A382994.P6267135879655270509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080511 (n + 1) * A382993 (n + 1)

end

end A382994.P6267135879655270509

/-!
# A382995: Square array A(n,k), n >= 1, k >= 1, read by antidiagonals downwards, where A(n,k) = Sum_{d|n} phi(n/d) * (-k)^(d-1).

The programs for A382995, there is no canonical definition to state claims against.
-/

/-! ## A382995.P12954151146739197965

`A382994(n+1)/A004736(n+1)`
-/

namespace A382995.P12954151146739197965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382994 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)

end

end A382995.P12954151146739197965

/-! ## A382995.P3530522635200168635

`A382994(1+n)/A000005(A130321(n))`
-/

namespace A382995.P3530522635200168635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382994 (1 + n) : ℚ) / (A000005 (A130321 n).toNat : ℚ)

end

end A382995.P3530522635200168635

/-!
# A382997: a(n) = -Sum_{d|n} phi(n/d) * (-n)^d.

The programs for A382997, the canonical program `A382997.P10898860162257266095` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382997 has offset 1).

The definition of A382997 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-∑{d}[n+1, A000010((n+1)/#)*(-(n+1))^#]` (program `A382997.P10898860162257266095`, by `A382997.P10898860162257266095.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A382997.P14750453042530872958

`-∑{#}[n, (-(n+1))^gcd(n+1, #)]`
-/

namespace A382997.P14750453042530872958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ k ∈ Finset.range (f1 n + 1), (-(n + 1 : ℤ)) ^ Nat.gcd (n + 1) k)

end

end A382997.P14750453042530872958

namespace A382997

/-- `-∑{#}[n, (-(n+1))^gcd(n+1, #)]` -/
def P14750453042530872958.Spec : Prop :=
  ∀ n, P14750453042530872958.a n = A382997 (n + 1)

end A382997

/-! ## A382997.P10898860162257266095

`-∑{d}[n+1, A000010((n+1)/#)*(-(n+1))^#]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A382997

/-- `-∑{d}[n+1, A000010((n+1)/#)*(-(n+1))^#]` -/
def P10898860162257266095.Spec : Prop :=
  ∀ n, P10898860162257266095.a n = A382997 (n + 1)

theorem P10898860162257266095.correct : P10898860162257266095.Spec := by
  intro n
  simp only [A382997, Nat.add_sub_cancel]

end A382997

/-! ## A382997.P14264990027750342275

`(1+n)*A382998(1+n)`
-/

namespace A382997.P14264990027750342275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A382998 (1 + n)

end

end A382997.P14264990027750342275

namespace A382997

/-- `(1+n)*A382998(1+n)` -/
def P14264990027750342275.Spec : Prop :=
  ∀ n, P14264990027750342275.a n = A382997 (n + 1)

end A382997

/-! ## A382997.P7369406533862054861

`(n+1)*A382993((n+1)²+n²)`
-/

namespace A382997.P7369406533862054861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A382993 ((n + 1) ^ 2 + n ^ 2)

end

end A382997.P7369406533862054861

namespace A382997

/-- `(n+1)*A382993((n+1)²+n²)` -/
def P7369406533862054861.Spec : Prop :=
  ∀ n, P7369406533862054861.a n = A382997 (n + 1)

end A382997

/-! ## A382997.P7372521756670550019

`A382994(1+∑[4*n])`
-/

namespace A382997.P7372521756670550019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382994 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A382997.P7372521756670550019

namespace A382997

/-- `A382994(1+∑[4*n])` -/
def P7372521756670550019.Spec : Prop :=
  ∀ n, P7372521756670550019.a n = A382997 (n + 1)

end A382997

/-!
# A382998: a(n) = Sum_{d|n} phi(n/d) * (-n)^(d-1).

The programs for A382998, the canonical program `A382998.P10716653710292073939` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382998 has offset 1).

The definition of A382998 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382998.P10716653710292073939

`∑{#}[n, (-(n+1))^(gcd(n+1, #+1)-1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A382998

/-- `∑{#}[n, (-(n+1))^(gcd(n+1, #+1)-1)]` -/
def P10716653710292073939.Spec : Prop :=
  ∀ n, P10716653710292073939.a n = (A382998 (n + 1) : ℚ)

end A382998

/-! ## A382998.P14796599555694671067

`∑{d}[n+1, A000010((n+1)/#)*(-(n+1))^(#-1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A382998.P14796599555694671067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℚ) * (-(n + 1 : ℤ) : ℚ) ^ ((d : ℤ) - 1 : ℤ)

end

end A382998.P14796599555694671067

namespace A382998

/-- `∑{d}[n+1, A000010((n+1)/#)*(-(n+1))^(#-1)]` -/
def P14796599555694671067.Spec : Prop :=
  ∀ n, P14796599555694671067.a n = (A382998 (n + 1) : ℚ)

end A382998

/-! ## A382998.P5626734966251031101

`1/(n+1)*A382997(n+1)`
-/

namespace A382998.P5626734966251031101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A382997 (n + 1) : ℚ)

end

end A382998.P5626734966251031101

namespace A382998

/-- `1/(n+1)*A382997(n+1)` -/
def P5626734966251031101.Spec : Prop :=
  ∀ n, P5626734966251031101.a n = (A382998 (n + 1) : ℚ)

end A382998

/-! ## A382998.P4803931510212089897

`A382997(n+1)/(n+1)`
-/

namespace A382998.P4803931510212089897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382997 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A382998.P4803931510212089897

namespace A382998

/-- `A382997(n+1)/(n+1)` -/
def P4803931510212089897.Spec : Prop :=
  ∀ n, P4803931510212089897.a n = (A382998 (n + 1) : ℚ)

end A382998

/-! ## A382998.P6615721243154910571

`A382993(4*∑[n]+1)`
-/

namespace A382998.P6615721243154910571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382993 (4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A382998.P6615721243154910571

namespace A382998

/-- `A382993(4*∑[n]+1)` -/
def P6615721243154910571.Spec : Prop :=
  ∀ n, P6615721243154910571.a n = A382998 (n + 1)

end A382998

/-!
# A382999: a(n) = Sum_{d|n} phi(n/d) * (-2)^(d-1).

The programs for A382999, the canonical program `A382999.P12472055209861775954` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382999 has offset 1).

The definition of A382999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382999.P12472055209861775954

`∑{#}[n, (-2)^(gcd(n+1, #+1)-1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A382999

/-- `∑{#}[n, (-2)^(gcd(n+1, #+1)-1)]` -/
def P12472055209861775954.Spec : Prop :=
  ∀ n, P12472055209861775954.a n = (A382999 (n + 1) : ℚ)

end A382999

/-! ## A382999.P14207978658770117198

`∑{d}[n+1, A000010((n+1)/#)*(-2)^(#-1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A382999.P14207978658770117198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℚ) * (-2 : ℚ) ^ ((d : ℤ) - 1 : ℤ)

end

end A382999.P14207978658770117198

namespace A382999

/-- `∑{d}[n+1, A000010((n+1)/#)*(-2)^(#-1)]` -/
def P14207978658770117198.Spec : Prop :=
  ∀ n, P14207978658770117198.a n = (A382999 (n + 1) : ℚ)

end A382999

/-! ## A382999.P9579263653610151330

`A382995(∑[n+2])`
-/

namespace A382999.P9579263653610151330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382995 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A382999.P9579263653610151330

namespace A382999

/-- `A382995(∑[n+2])` -/
def P9579263653610151330.Spec : Prop :=
  ∀ n, P9579263653610151330.a n = A382999 (n + 1)

end A382999

