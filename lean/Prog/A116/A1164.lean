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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A116400: Expansion of e.g.f. Bessel_I(2,2x) + Bessel_I(3,2x) + Bessel_I(4,2x).

The programs for A116400, the canonical program `A116400.P9056853497896338160` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116400 has offset 0).

The definition of A116400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116400.P9056853497896338160

`A037951(or(1, n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A116400

/-- `A037951(or(1, n))` -/
def P9056853497896338160.Spec : Prop :=
  ∀ n, P9056853497896338160.a n = A116400 n

theorem P9056853497896338160.correct : P9056853497896338160.Spec := by
  intro n
  simp only [A116400]

end A116400

/-! ## A116400.P7731090776114092435

`A037955(or(1, n))`
-/

namespace A116400.P7731090776114092435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (Nat.lor 1 n)

end

end A116400.P7731090776114092435

namespace A116400

/-- `A037955(or(1, n))` -/
def P7731090776114092435.Spec : Prop :=
  ∀ n, P7731090776114092435.a n = A116400 n

end A116400

/-! ## A116400.P2852567902631179628

`A191529(or(1, n+2))`
-/

namespace A116400.P2852567902631179628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191529 (Nat.lor 1 (n + 2))

end

end A116400.P2852567902631179628

namespace A116400

/-- `A191529(or(1, n+2))` -/
def P2852567902631179628.Spec : Prop :=
  ∀ n, P2852567902631179628.a n = A116400 n

end A116400

/-! ## A116400.P6082590509658410703

`A037951(A109613(n))`
-/

namespace A116400.P6082590509658410703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037951 (A109613 n).toNat

end

end A116400.P6082590509658410703

namespace A116400

/-- `A037951(A109613(n))` -/
def P6082590509658410703.Spec : Prop :=
  ∀ n, P6082590509658410703.a n = A116400 n

end A116400

/-! ## A116400.P16843343751523279134

`A116385(A052928(n))`
-/

namespace A116400.P16843343751523279134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116385 (A052928 n).toNat

end

end A116400.P16843343751523279134

namespace A116400

/-- `A116385(A052928(n))` -/
def P16843343751523279134.Spec : Prop :=
  ∀ n, P16843343751523279134.a n = A116400 n

end A116400

/-! ## A116400.P12653074311995000992

`A037951(A063196(n+1))`
-/

namespace A116400.P12653074311995000992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037951 (A063196 (n + 1)).toNat

end

end A116400.P12653074311995000992

namespace A116400

/-- `A037951(A063196(n+1))` -/
def P12653074311995000992.Spec : Prop :=
  ∀ n, P12653074311995000992.a n = A116400 n

end A116400

/-! ## A116400.P17338578412717862855

`A117187(n)-A128015(n)`
-/

namespace A116400.P17338578412717862855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117187 n - A128015 n

end

end A116400.P17338578412717862855

namespace A116400

/-- `A117187(n)-A128015(n)` -/
def P17338578412717862855.Spec : Prop :=
  ∀ n, P17338578412717862855.a n = A116400 n

end A116400

/-! ## A116400.P13867136965804034126

`A116385(n)/A000034(n)`
-/

namespace A116400.P13867136965804034126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116385 n : ℚ) / (A000034 n : ℚ)

end

end A116400.P13867136965804034126

namespace A116400

/-- `A116385(n)/A000034(n)` -/
def P13867136965804034126.Spec : Prop :=
  ∀ n, P13867136965804034126.a n = (A116400 n : ℚ)

end A116400

/-! ## A116400.P13418899193358223391

`A116385(n)/A084642(n)`
-/

namespace A116400.P13418899193358223391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116385 n : ℚ) / (A084642 n : ℚ)

end

end A116400.P13418899193358223391

namespace A116400

/-- `A116385(n)/A084642(n)` -/
def P13418899193358223391.Spec : Prop :=
  ∀ n, P13418899193358223391.a n = (A116400 n : ℚ)

end A116400

/-! ## A116400.P10554733997115628400

`A128015(n)-A208355(n+1)`
-/

namespace A116400.P10554733997115628400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128015 n - A208355 (n + 1)

end

end A116400.P10554733997115628400

namespace A116400

/-- `A128015(n)-A208355(n+1)` -/
def P10554733997115628400.Spec : Prop :=
  ∀ n, P10554733997115628400.a n = A116400 n

end A116400

/-! ## A116400.P12980850791432907207

`A001405(A215495(2*n))-A208355(n+1)`
-/

namespace A116400.P12980850791432907207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A215495 (2 * n)).toNat - A208355 (n + 1)

end

end A116400.P12980850791432907207

namespace A116400

/-- `A001405(A215495(2*n))-A208355(n+1)` -/
def P12980850791432907207.Spec : Prop :=
  ∀ n, P12980850791432907207.a n = A116400 n

end A116400

/-! ## A116400.P13682905173482802352

`C(or(1, n), floor(n/2)+2)`
-/

namespace A116400.P13682905173482802352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) (⌊(n : ℚ) / 2⌋ + 2).toNat

end

end A116400.P13682905173482802352

namespace A116400

/-- `C(or(1, n), floor(n/2)+2)` -/
def P13682905173482802352.Spec : Prop :=
  ∀ n, (P13682905173482802352.a n : ℤ) = A116400 n

end A116400

/-! ## A116400.P17302148520305859582

`C(and(n, -2)+1, floor(n/2)+2)`
-/

namespace A116400.P17302148520305859582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.land (n : ℤ) (-2) + 1).toNat (⌊(n : ℚ) / 2⌋ + 2).toNat

end

end A116400.P17302148520305859582

namespace A116400

/-- `C(and(n, -2)+1, floor(n/2)+2)` -/
def P17302148520305859582.Spec : Prop :=
  ∀ n, (P17302148520305859582.a n : ℤ) = A116400 n

end A116400

/-! ## A116400.P916605861884682642

`C(char[2*n]+n, round(cos(1)+n/2)+1)`
-/

namespace A116400.P916605861884682642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((if ∃ j, f1 j = n then 1 else 0) + n) (SequenceMachineLib.roundAway (Real.cos (1 : ℝ) + ((n : ℚ) / 2 : ℝ)) + 1).toNat

end

end A116400.P916605861884682642

namespace A116400

/-- `C(char[2*n]+n, round(cos(1)+n/2)+1)` -/
def P916605861884682642.Spec : Prop :=
  ∀ n, (P916605861884682642.a n : ℤ) = A116400 n

end A116400

/-! ## A116400.P16163825082779729807

`C(char[2*n]+n, ceil((n-cos(2))/2)+1)`
-/

namespace A116400.P16163825082779729807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((if ∃ j, f1 j = n then 1 else 0) + n) (⌈((n : ℝ) - Real.cos (2 : ℝ)) / 2⌉ + 1).toNat

end

end A116400.P16163825082779729807

namespace A116400

/-- `C(char[2*n]+n, ceil((n-cos(2))/2)+1)` -/
def P16163825082779729807.Spec : Prop :=
  ∀ n, (P16163825082779729807.a n : ℤ) = A116400 n

end A116400

/-! ## A116400.P8687350498418789608

`C(char[2*n]+n, round((acos(0)+n)/2)+1)`
-/

namespace A116400.P8687350498418789608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((if ∃ j, f1 j = n then 1 else 0) + n) (SequenceMachineLib.roundAway ((Real.arccos (0 : ℝ) + (n : ℝ)) / 2) + 1).toNat

end

end A116400.P8687350498418789608

namespace A116400

/-- `C(char[2*n]+n, round((acos(0)+n)/2)+1)` -/
def P8687350498418789608.Spec : Prop :=
  ∀ n, (P8687350498418789608.a n : ℤ) = A116400 n

end A116400

/-! ## A116400.P2486816818847281946

`A051631(A213037(n+1))`
-/

namespace A116400.P2486816818847281946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051631 (A213037 (n + 1)).toNat

end

end A116400.P2486816818847281946

namespace A116400

/-- `A051631(A213037(n+1))` -/
def P2486816818847281946.Spec : Prop :=
  ∀ n, P2486816818847281946.a n = A116400 n

end A116400

/-! ## A116400.P15054582271795673166

`A199011(2*A008619(n)²)`
-/

namespace A116400.P15054582271795673166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199011 (2 * A008619 n ^ 2).toNat

end

end A116400.P15054582271795673166

namespace A116400

/-- `A199011(2*A008619(n)²)` -/
def P15054582271795673166.Spec : Prop :=
  ∀ n, P15054582271795673166.a n = A116400 n

end A116400

/-!
# A116402: Number of representations of n as a sum of distinct elements of the Fibonacci-type sequence beginning 1, 5, 6, 11, 17, ...

The programs for A116402, there is no canonical definition to state claims against.
-/

/-! ## A116402.P16297841489730976019

`A219483(record[1-A219483(n)+n])`
-/

namespace A116402.P16297841489730976019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A219483 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219483 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A116402.P16297841489730976019

/-! ## A116402.P14249922318477373495

`A219483(record[1-(A219483(n)-n)])`
-/

namespace A116402.P14249922318477373495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A219483 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219483 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A116402.P14249922318477373495

/-! ## A116402.P17254913427066846202

`A219483(eq[0, A219483(n+1)])`
-/

namespace A116402.P17254913427066846202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219483 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A116402.P17254913427066846202

/-! ## A116402.P5916325286010434830

`A219483(lt[A219483(n+1), 1])`
-/

namespace A116402.P5916325286010434830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219483 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219483 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A116402.P5916325286010434830

/-! ## A116402.P5504736147833293712

`A219483(lt[A219483(n), 1]-1)`
-/

namespace A116402.P5504736147833293712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219483 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219483 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - 1)

end

end A116402.P5504736147833293712

/-! ## A116402.P7996375686459149834

`A219483(record[(A219483(n+1)+n)%(n+1)])`
-/

namespace A116402.P7996375686459149834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219483 (n + 1) + (n : ℤ)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219483 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A116402.P7996375686459149834

/-!
# A116403: Number of representations of n as a sum of distinct elements of the Fibonacci-type sequence beginning 4, 1, 5, 6, 11, ...

The programs for A116403, there is no canonical definition to state claims against.
-/

/-! ## A116403.P9334110429320197866

`A219489(A047263(n+1)%A156398(n))`
-/

namespace A116403.P9334110429320197866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219489 (Int.tmod (A047263 (n + 1)) (A156398 n)).toNat

end

end A116403.P9334110429320197866

/-! ## A116403.P11442989967270441005

`A219489(lt[A219528(n+1), A219526(2*n+5)])`
-/

namespace A116403.P11442989967270441005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219526 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219489 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A116403.P11442989967270441005

/-!
# A116404: Expansion of (1-x)/((1-x)^2 - x^2*(1+x)^2).

The programs for A116404, the canonical program `A116404.P8182649617996965204` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116404 has offset 0).

The definition of A116404 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x-2x^3-x^4))` (program `A116404.P8182649617996965204`, by `A116404.P8182649617996965204.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116404.P8182649617996965204

`ogf((1-x)/(1-2x-2x^3-x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116404

/-- `ogf((1-x)/(1-2x-2x^3-x^4))` -/
def P8182649617996965204.Spec : Prop :=
  ∀ n, P8182649617996965204.a n = A116404 n

theorem P8182649617996965204.correct : P8182649617996965204.Spec := by
  intro n
  simp only [A116404]

end A116404

/-! ## A116404.P11611935579001555103

`2*a(n-1)+2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A116404.P11611935579001555103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 6] fun n a =>
  2 * a (n - 1) + 2 * a (n - 3) + a (n - 4)

end

end A116404.P11611935579001555103

namespace A116404

/-- `2*a(n-1)+2*a(n-3)+a(n-4)` -/
def P11611935579001555103.Spec : Prop :=
  ∀ n, (P11611935579001555103.a n : ℤ) = A116404 n

end A116404

/-! ## A116404.P5512696851321640271

`(a(n-3)/a(n-2)+2)*a(n-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A116404.P5512696851321640271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (a (n - 3) / a (n - 2) + 2) * a (n - 1)

end

end A116404.P5512696851321640271

namespace A116404

/-- `(a(n-3)/a(n-2)+2)*a(n-1)` -/
def P5512696851321640271.Spec : Prop :=
  ∀ n, P5512696851321640271.a n = (A116404 n : ℚ)

end A116404

/-! ## A116404.P7246290584176601401

`A105635(n)+char[4*n]`
-/

namespace A116404.P7246290584176601401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105635 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A116404.P7246290584176601401

namespace A116404

/-- `A105635(n)+char[4*n]` -/
def P7246290584176601401.Spec : Prop :=
  ∀ n, P7246290584176601401.a n = A116404 n

end A116404

/-! ## A116404.P7071787550273479333

`∑[A171842(n)-∑[n]%2]`
-/

namespace A116404.P7071787550273479333
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n - (((∑ j ∈ Finset.range (n + 1), f2 j) % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116404.P7071787550273479333

namespace A116404

/-- `∑[A171842(n)-∑[n]%2]` -/
def P7071787550273479333.Spec : Prop :=
  ∀ n, P7071787550273479333.a n = A116404 n

end A116404

/-! ## A116404.P4855598992552413402

`A001333(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A116404.P4855598992552413402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001333 n - a (n - 2)

end

end A116404.P4855598992552413402

namespace A116404

/-- `A001333(n)-a(n-2)` -/
def P4855598992552413402.Spec : Prop :=
  ∀ n, P4855598992552413402.a n = A116404 n

end A116404

/-! ## A116404.P389108969275737612

`A111587(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A116404.P389108969275737612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A111587 (n - 2) + a (n - 1)

end

end A116404.P389108969275737612

namespace A116404

/-- `A111587(n-2)+a(n-1)` -/
def P389108969275737612.Spec : Prop :=
  ∀ n, P389108969275737612.a n = A116404 n

end A116404

/-! ## A116404.P9985363795398797612

`A293004(n)+1-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A116404.P9985363795398797612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A293004 n + 1 - a (n - 2)

end

end A116404.P9985363795398797612

namespace A116404

/-- `A293004(n)+1-a(n-2)` -/
def P9985363795398797612.Spec : Prop :=
  ∀ n, P9985363795398797612.a n = A116404 n

end A116404

/-! ## A116404.P8572847519098423047

`A121262(n)+A105635(n)`
-/

namespace A116404.P8572847519098423047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n + A105635 n

end

end A116404.P8572847519098423047

namespace A116404

/-- `A121262(n)+A105635(n)` -/
def P8572847519098423047.Spec : Prop :=
  ∀ n, P8572847519098423047.a n = A116404 n

end A116404

/-! ## A116404.P481600910376916482

`A307465(n)+A004524(n)`
-/

namespace A116404.P481600910376916482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307465 n + A004524 n

end

end A116404.P481600910376916482

namespace A116404

/-- `A307465(n)+A004524(n)` -/
def P481600910376916482.Spec : Prop :=
  ∀ n, P481600910376916482.a n = A116404 n

end A116404

/-! ## A116404.P4884345532936812174

`∑[A002965(n+1)*A119016(n)]`
-/

namespace A116404.P4884345532936812174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (n + 1) * A119016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116404.P4884345532936812174

namespace A116404

/-- `∑[A002965(n+1)*A119016(n)]` -/
def P4884345532936812174.Spec : Prop :=
  ∀ n, P4884345532936812174.a n = A116404 n

end A116404

/-! ## A116404.P11251760371204919280

`A002965(n+1)*A002965(n+2)`
-/

namespace A116404.P11251760371204919280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (n + 1) * A002965 (n + 2)

end

end A116404.P11251760371204919280

namespace A116404

/-- `A002965(n+1)*A002965(n+2)` -/
def P11251760371204919280.Spec : Prop :=
  ∀ n, P11251760371204919280.a n = A116404 n

end A116404

/-! ## A116404.P6870260423221908172

`Δ[floor(∑[A215928(n)/2])]`
-/

namespace A116404.P6870260423221908172
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215928 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116404.P6870260423221908172

namespace A116404

/-- `Δ[floor(∑[A215928(n)/2])]` -/
def P6870260423221908172.Spec : Prop :=
  ∀ n, P6870260423221908172.a n = A116404 n

end A116404

/-! ## A116404.P15128484811902211903

`(A056594(n)+A000129(n+1))/2`
-/

namespace A116404.P15128484811902211903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056594 n + A000129 (n + 1) : ℚ) / 2

end

end A116404.P15128484811902211903

namespace A116404

/-- `(A056594(n)+A000129(n+1))/2` -/
def P15128484811902211903.Spec : Prop :=
  ∀ n, P15128484811902211903.a n = (A116404 n : ℚ)

end A116404

/-! ## A116404.P15554963981401405928

`A000129(n+1)-A135153(n+1)*A152113(n+1)`
-/

namespace A116404.P15554963981401405928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) - A135153 (n + 1) * A152113 (n + 1)

end

end A116404.P15554963981401405928

namespace A116404

/-- `A000129(n+1)-A135153(n+1)*A152113(n+1)` -/
def P15554963981401405928.Spec : Prop :=
  ∀ n, P15554963981401405928.a n = A116404 n

end A116404

/-! ## A116404.P2328660382455286829

`Δ[round(∑[A249576(3*n)]/2)]`
-/

namespace A116404.P2328660382455286829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116404.P2328660382455286829

namespace A116404

/-- `Δ[round(∑[A249576(3*n)]/2)]` -/
def P2328660382455286829.Spec : Prop :=
  ∀ n, P2328660382455286829.a n = A116404 n

end A116404

/-!
# A116405: Triangle whose k-th column has e.g.f. sum{j=0..k, (-1)^j*Bessel_I(k+j,2x)}.

The programs for A116405, there is no canonical definition to state claims against.
-/

/-! ## A116405.P10803052936887046504

`A116399(n)/(and(2, comp[∑[n]]+n)-1)`
-/

namespace A116405.P10803052936887046504
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116399 n : ℚ) / ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1 : ℚ)

end

end A116405.P10803052936887046504

/-! ## A116405.P987720165563709363

`A097807(n)*A116399(n)`
-/

namespace A116405.P987720165563709363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A116399 n

end

end A116405.P987720165563709363

/-! ## A116405.P1276500709779686852

`A033999(A025581(n))*A116399(n)`
-/

namespace A116405.P1276500709779686852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A116399 n

end

end A116405.P1276500709779686852

/-! ## A116405.P508432928156987097

`A033999(A063656(n))*A116399(n)`
-/

namespace A116405.P508432928156987097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A063656 n).toNat * A116399 n

end

end A116405.P508432928156987097

/-! ## A116405.P8878395191462197830

`A034947(A099375(n))*A116399(n)`
-/

namespace A116405.P8878395191462197830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A099375 n).toNat * A116399 n

end

end A116405.P8878395191462197830

/-! ## A116405.P12353251373159898262

`A112848(A130321(n))*A116399(n)`
-/

namespace A116405.P12353251373159898262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112848 (A130321 n).toNat * A116399 n

end

end A116405.P12353251373159898262

/-! ## A116405.P13579893152792364781

`A057077(A266213(n))*A116399(n)`
-/

namespace A116405.P13579893152792364781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A266213 n).toNat * A116399 n

end

end A116405.P13579893152792364781

/-! ## A116405.P9558572518500491723

`A116399(n)/A097807(A233583(n+1))`
-/

namespace A116405.P9558572518500491723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116399 n : ℚ) / (A097807 (A233583 (n + 1)).toNat : ℚ)

end

end A116405.P9558572518500491723

/-! ## A116405.P10672342370041920915

`lcm(A020985(n), A116399(n))/A097807(n)`
-/

namespace A116405.P10672342370041920915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A020985 n) (A116399 n) : ℚ) / (A097807 n : ℚ)

end

end A116405.P10672342370041920915

/-! ## A116405.P17583911011770969561

`A116399(n)*A309873(A036561(n))`
-/

namespace A116405.P17583911011770969561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116399 n * A309873 (A036561 n).toNat

end

end A116405.P17583911011770969561

/-!
# A116406: Expansion of ((1 + x - 2x^2) + (1+x)*sqrt(1-4x^2))/(2(1-4x^2)).

The programs for A116406, the canonical program `A116406.P2533668275764511831` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116406 has offset 0).

The definition of A116406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116406.P2533668275764511831

`(A128014(n)+A011782(n))/2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A116406

/-- `(A128014(n)+A011782(n))/2` -/
def P2533668275764511831.Spec : Prop :=
  ∀ n, P2533668275764511831.a n = (A116406 n : ℚ)

end A116406

/-! ## A116406.P13163850631984463832

`A248574(n)-floor(2^(n-1))`
-/

namespace A116406.P13163850631984463832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248574 n - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A116406.P13163850631984463832

namespace A116406

/-- `A248574(n)-floor(2^(n-1))` -/
def P13163850631984463832.Spec : Prop :=
  ∀ n, P13163850631984463832.a n = A116406 n

end A116406

/-! ## A116406.P13953696365919547838

`A011782(n)+A248574(n)-A011782(n+1)`
-/

namespace A116406.P13953696365919547838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (A248574 n - A011782 (n + 1))

end

end A116406.P13953696365919547838

namespace A116406

/-- `A011782(n)+A248574(n)-A011782(n+1)` -/
def P13953696365919547838.Spec : Prop :=
  ∀ n, P13953696365919547838.a n = A116406 n

end A116406

/-! ## A116406.P10267891292378463752

`2*A006840(n)-A045629(n)`
-/

namespace A116406.P10267891292378463752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006840 n - A045629 n

end

end A116406.P10267891292378463752

namespace A116406

/-- `2*A006840(n)-A045629(n)` -/
def P10267891292378463752.Spec : Prop :=
  ∀ n, P10267891292378463752.a n = A116406 n

end A116406

/-! ## A116406.P16976215733354271023

`A008949(floor(n²/2))`
-/

namespace A116406.P16976215733354271023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 ⌊(n ^ 2 : ℚ) / 2⌋.toNat

end

end A116406.P16976215733354271023

namespace A116406

/-- `A008949(floor(n²/2))` -/
def P16976215733354271023.Spec : Prop :=
  ∀ n, P16976215733354271023.a n = A116406 n

end A116406

/-! ## A116406.P982941223312231174

`A055248(floor(abs((n²-1)/2)))`
-/

namespace A116406.P982941223312231174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 ⌊|((n ^ 2 : ℤ) - 1 : ℚ) / 2|⌋.toNat

end

end A116406.P982941223312231174

namespace A116406

/-- `A055248(floor(abs((n²-1)/2)))` -/
def P982941223312231174.Spec : Prop :=
  ∀ n, P982941223312231174.a n = A116406 n

end A116406

/-! ## A116406.P10522309241092059220

`A128175(∑[2*ceil(n/2)]+1)`
-/

namespace A116406.P10522309241092059220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128175 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A116406.P10522309241092059220

namespace A116406

/-- `A128175(∑[2*ceil(n/2)]+1)` -/
def P10522309241092059220.Spec : Prop :=
  ∀ n, P10522309241092059220.a n = A116406 n

end A116406

/-! ## A116406.P7947671769913254720

`A054123(A210981(n))`
-/

namespace A116406.P7947671769913254720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 (A210981 n).toNat

end

end A116406.P7947671769913254720

namespace A116406

/-- `A054123(A210981(n))` -/
def P7947671769913254720.Spec : Prop :=
  ∀ n, P7947671769913254720.a n = A116406 n

end A116406

/-!
# A116408: E.g.f. exp(x)*(Bessel_I(2,2*x) - Bessel_I(3,2*x) + Bessel_I(4,2*x)).

The programs for A116408, there is no canonical definition to state claims against.
-/

/-! ## A116408.P18363099069399788154

`A116407(A133263(n))%A002426(n)`
-/

namespace A116408.P18363099069399788154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116407 (A133263 n).toNat) (A002426 n)

end

end A116408.P18363099069399788154

/-! ## A116408.P17670573464924709861

`A008647(or(3^n, ∑{e}[n+1, #]))`
-/

namespace A116408.P17670573464924709861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (Nat.lor (3 ^ n) (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A116408.P17670573464924709861

/-! ## A116408.P7073703747494650441

`A008679(3^n-ceil(3*n/2))`
-/

namespace A116408.P7073703747494650441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 ((3 ^ n : ℤ) - ⌈3 * ((n : ℚ) / 2)⌉).toNat

end

end A116408.P7073703747494650441

/-! ## A116408.P11411638533349899104

`A008626(A164697(n))`
-/

namespace A116408.P11411638533349899104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008626 (A164697 n).toNat

end

end A116408.P11411638533349899104

/-! ## A116408.P8590974617866811004

`A008618(A067771(n)-n)`
-/

namespace A116408.P8590974617866811004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A067771 n - (n : ℤ)).toNat

end

end A116408.P8590974617866811004

/-!
# A116409: Expansion of (1-x-2x^2+sqrt(1-2x-3x^2))/(2(1-x)(1-2x-3x^2)).

The programs for A116409, the canonical program `A116409.P2006096629571327761` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116409 has offset 0).

The definition of A116409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116409.P2487586519975273168

`∑[A116410(n)]`
-/

namespace A116409.P2487586519975273168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116409.P2487586519975273168

namespace A116409

/-- `∑[A116410(n)]` -/
def P2487586519975273168.Spec : Prop :=
  ∀ n, P2487586519975273168.a n = A116409 n

end A116409

/-! ## A116409.P2006096629571327761

`3*a(n-1)-A082395(n)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A116409

/-- `3*a(n-1)-A082395(n)` -/
def P2006096629571327761.Spec : Prop :=
  ∀ n, P2006096629571327761.a n = A116409 n

theorem P2006096629571327761.correct : P2006096629571327761.Spec := by
  intro n
  simp only [A116409]

end A116409

/-! ## A116409.P17607655324651982442

`∑[A027914(n)-floor(3^(n-1))]`
-/

namespace A116409.P17607655324651982442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 n - ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116409.P17607655324651982442

namespace A116409

/-- `∑[A027914(n)-floor(3^(n-1))]` -/
def P17607655324651982442.Spec : Prop :=
  ∀ n, P17607655324651982442.a n = A116409 n

end A116409

/-! ## A116409.P13574459813287042762

`∑[A097861(n)+ceil(∑[3^(n-2)])]`
-/

namespace A116409.P13574459813287042762
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n + ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116409.P13574459813287042762

namespace A116409

/-- `∑[A097861(n)+ceil(∑[3^(n-2)])]` -/
def P13574459813287042762.Spec : Prop :=
  ∀ n, P13574459813287042762.a n = A116409 n

end A116409

/-! ## A116409.P17858958281841906231

`A247287(n)+A164039(n)`
-/

namespace A116409.P17858958281841906231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247287 n + A164039 n

end

end A116409.P17858958281841906231

namespace A116409

/-- `A247287(n)+A164039(n)` -/
def P17858958281841906231.Spec : Prop :=
  ∀ n, P17858958281841906231.a n = A116409 n

end A116409

/-! ## A116409.P15211963218701933711

`A027915(n)-A003462(n)`
-/

namespace A116409.P15211963218701933711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027915 n - A003462 n

end

end A116409.P15211963218701933711

namespace A116409

/-- `A027915(n)-A003462(n)` -/
def P15211963218701933711.Spec : Prop :=
  ∀ n, P15211963218701933711.a n = A116409 n

end A116409

/-! ## A116409.P4601360692306117626

`∑[A055216(2*n²)]`
-/

namespace A116409.P4601360692306117626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055216 (2 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116409.P4601360692306117626

namespace A116409

/-- `∑[A055216(2*n²)]` -/
def P4601360692306117626.Spec : Prop :=
  ∀ n, P4601360692306117626.a n = A116409 n

end A116409

/-!
# A116410: Expansion of (1-x-2x^2+sqrt(1-2x-3x^2))/(2*(1-2x-3x^2)).

The programs for A116410, the canonical program `A116410.P11469624891977256019` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116410 has offset 0).

The definition of A116410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116410.P11469624891977256019

`A124302(n)+A097861(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A116410

/-- `A124302(n)+A097861(n)` -/
def P11469624891977256019.Spec : Prop :=
  ∀ n, P11469624891977256019.a n = A116410 n

theorem P11469624891977256019.correct : P11469624891977256019.Spec := by
  intro n
  simp only [A116410]

end A116410

/-! ## A116410.P16039769608937160576

`A027914(n)-A140429(n)`
-/

namespace A116410.P16039769608937160576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 n - A140429 n

end

end A116410.P16039769608937160576

namespace A116410

/-- `A027914(n)-A140429(n)` -/
def P16039769608937160576.Spec : Prop :=
  ∀ n, P16039769608937160576.a n = A116410 n

end A116410

/-! ## A116410.P3799858548540621575

`A027914(n)-Δ[A124302(n)]`
-/

namespace A116410.P3799858548540621575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 n - (f1 (n + 1) - f1 n)

end

end A116410.P3799858548540621575

namespace A116410

/-- `A027914(n)-Δ[A124302(n)]` -/
def P3799858548540621575.Spec : Prop :=
  ∀ n, P3799858548540621575.a n = A116410 n

end A116410

/-! ## A116410.P12289331744864872109

`A097861(n)-A123183(n+1)`
-/

namespace A116410.P12289331744864872109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n - A123183 (n + 1)

end

end A116410.P12289331744864872109

namespace A116410

/-- `A097861(n)-A123183(n+1)` -/
def P12289331744864872109.Spec : Prop :=
  ∀ n, P12289331744864872109.a n = A116410 n

end A116410

/-! ## A116410.P6496078265119703608

`(A133494(n)+A002426(n))/2`
-/

namespace A116410.P6496078265119703608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133494 n + A002426 n : ℚ) / 2

end

end A116410.P6496078265119703608

namespace A116410

/-- `(A133494(n)+A002426(n))/2` -/
def P6496078265119703608.Spec : Prop :=
  ∀ n, P6496078265119703608.a n = (A116410 n : ℚ)

end A116410

/-! ## A116410.P7237826197887975323

`∑[A140429(n)]+A257520(n)-A140429(n)`
-/

namespace A116410.P7237826197887975323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A257520 n - A140429 n)

end

end A116410.P7237826197887975323

namespace A116410

/-- `∑[A140429(n)]+A257520(n)-A140429(n)` -/
def P7237826197887975323.Spec : Prop :=
  ∀ n, P7237826197887975323.a n = A116410 n

end A116410

/-! ## A116410.P5823392634032516592

`A027914(n)+Δ[A123183(n+1)]`
-/

namespace A116410.P5823392634032516592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 n + (f1 (n + 1) - f1 n)

end

end A116410.P5823392634032516592

namespace A116410

/-- `A027914(n)+Δ[A123183(n+1)]` -/
def P5823392634032516592.Spec : Prop :=
  ∀ n, P5823392634032516592.a n = A116410 n

end A116410

/-! ## A116410.P3233352193092707861

`A055216(2*n²)`
-/

namespace A116410.P3233352193092707861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055216 (2 * n ^ 2)

end

end A116410.P3233352193092707861

namespace A116410

/-- `A055216(2*n²)` -/
def P3233352193092707861.Spec : Prop :=
  ∀ n, P3233352193092707861.a n = A116410 n

end A116410

/-!
# A116411: Coefficient of x^n in the expansion of (1+x+x^3)^n.

The programs for A116411, there is no canonical definition to state claims against.
-/

/-! ## A116411.P15366278880871810525

`A038717(∑[n]+n²)`
-/

namespace A116411.P15366278880871810525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038717 (∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2)

end

end A116411.P15366278880871810525

/-! ## A116411.P8467273256294570756

`A038717(A005449(n))+A000007(3*n+2)`
-/

namespace A116411.P8467273256294570756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038717 (A005449 n).toNat + A000007 (3 * n + 2)

end

end A116411.P8467273256294570756

/-! ## A116411.P17561299955356505837

`A339637(A360748(n))`
-/

namespace A116411.P17561299955356505837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339637 (A360748 n).toNat

end

end A116411.P17561299955356505837

/-! ## A116411.P10011685879612154947

`3*A000196(A000142(n)+1)-2`
-/

namespace A116411.P10011685879612154947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000196 (A000142 n + 1).toNat - 2

end

end A116411.P10011685879612154947

/-!
# A116412: Riordan array ((1+x)/(1-2x),x(1+x)/(1-2x)).

The programs for A116412, there is no canonical definition to state claims against.
-/

/-! ## A116412.P7126669821759037830

`A249251(A061579(n))`
-/

namespace A116412.P7126669821759037830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249251 (A061579 n).toNat

end

end A116412.P7126669821759037830

/-! ## A116412.P4070857703072507516

`A249251(A038722(n+1)-1)`
-/

namespace A116412.P4070857703072507516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249251 (A038722 (n + 1) - 1).toNat

end

end A116412.P4070857703072507516

/-! ## A116412.P3929379079557428665

`A249251((A003056(n)+1)²-(n+1))`
-/

namespace A116412.P3929379079557428665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249251 ((A003056 n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A116412.P3929379079557428665

/-! ## A116412.P9391377686866632960

`A249251(A073254(n)+n+1-A073254(n+1))`
-/

namespace A116412.P9391377686866632960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249251 (A073254 n + ((n + 1 : ℤ) - A073254 (n + 1))).toNat

end

end A116412.P9391377686866632960

/-! ## A116412.P12534175752537824116

`A249251(A038722(n+2))`
-/

namespace A116412.P12534175752537824116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249251 (A038722 (n + 2)).toNat

end

end A116412.P12534175752537824116

/-!
# A116413: Expansion of (1+x)/(1-2x-x^2-x^3).

The programs for A116413, the canonical program `A116413.P18058356677003740966` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116413 has offset 0).

The definition of A116413 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-2x-x^2-x^3))` (program `A116413.P18058356677003740966`, by `A116413.P18058356677003740966.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116413.P18058356677003740966

`ogf((1+x)/(1-2x-x^2-x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116413

/-- `ogf((1+x)/(1-2x-x^2-x^3))` -/
def P18058356677003740966.Spec : Prop :=
  ∀ n, P18058356677003740966.a n = A116413 n

theorem P18058356677003740966.correct : P18058356677003740966.Spec := by
  intro n
  simp only [A116413]

end A116413

/-! ## A116413.P11412132367444315615

`2*a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A116413.P11412132367444315615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  2 * a (n - 1) + a (n - 2) + a (n - 3)

end

end A116413.P11412132367444315615

namespace A116413

/-- `2*a(n-1)+a(n-2)+a(n-3)` -/
def P11412132367444315615.Spec : Prop :=
  ∀ n, (P11412132367444315615.a n : ℤ) = A116413 n

end A116413

/-! ## A116413.P13992363800635344091

`a(n-1)+a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A116413.P13992363800635344091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 2) + a (n - 3)))

end

end A116413.P13992363800635344091

namespace A116413

/-- `a(n-1)+a(n-1)+a(n-2)+a(n-3)` -/
def P13992363800635344091.Spec : Prop :=
  ∀ n, (P13992363800635344091.a n : ℤ) = A116413 n

end A116413

/-! ## A116413.P12524233151771387734

`A109545(n)+Δ[A077997(n)]`
-/

namespace A116413.P12524233151771387734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109545 n + (f1 (n + 1) - f1 n)

end

end A116413.P12524233151771387734

namespace A116413

/-- `A109545(n)+Δ[A077997(n)]` -/
def P12524233151771387734.Spec : Prop :=
  ∀ n, P12524233151771387734.a n = A116413 n

end A116413

/-! ## A116413.P11204454263491346785

`A271489(A008574(n)-(n+1))`
-/

namespace A116413.P11204454263491346785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271489 (A008574 n - (n + 1 : ℤ)).toNat

end

end A116413.P11204454263491346785

namespace A116413

/-- `A271489(A008574(n)-(n+1))` -/
def P11204454263491346785.Spec : Prop :=
  ∀ n, P11204454263491346785.a n = A116413 n

end A116413

/-! ## A116413.P6597815765542668864

`A271489(A008574(n)-1-n)`
-/

namespace A116413.P6597815765542668864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271489 (A008574 n - 1 - (n : ℤ)).toNat

end

end A116413.P6597815765542668864

namespace A116413

/-- `A271489(A008574(n)-1-n)` -/
def P6597815765542668864.Spec : Prop :=
  ∀ n, P6597815765542668864.a n = A116413 n

end A116413

/-! ## A116413.P6020668107500375238

`A077939(n)+A077939(n)-A077997(n)`
-/

namespace A116413.P6020668107500375238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077939 n + (A077939 n - A077997 n)

end

end A116413.P6020668107500375238

namespace A116413

/-- `A077939(n)+A077939(n)-A077997(n)` -/
def P6020668107500375238.Spec : Prop :=
  ∀ n, P6020668107500375238.a n = A116413 n

end A116413

/-! ## A116413.P5199679675621350722

`A077997(n+1)+A109545(n)-A077997(n)`
-/

namespace A116413.P5199679675621350722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077997 (n + 1) + (A109545 n - A077997 n)

end

end A116413.P5199679675621350722

namespace A116413

/-- `A077997(n+1)+A109545(n)-A077997(n)` -/
def P5199679675621350722.Spec : Prop :=
  ∀ n, P5199679675621350722.a n = A116413 n

end A116413

/-! ## A116413.P4702139831443495970

`abs(A078058(n))`
-/

namespace A116413.P4702139831443495970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078058 n|

end

end A116413.P4702139831443495970

namespace A116413

/-- `abs(A078058(n))` -/
def P4702139831443495970.Spec : Prop :=
  ∀ n, P4702139831443495970.a n = A116413 n

end A116413

/-! ## A116413.P6369771304255045927

`A347725(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A116413.P6369771304255045927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A347725 (n + 1) - a (n - 1)

end

end A116413.P6369771304255045927

namespace A116413

/-- `A347725(n+1)-a(n-1)` -/
def P6369771304255045927.Spec : Prop :=
  ∀ n, P6369771304255045927.a n = A116413 n

end A116413

/-! ## A116413.P6233304216464507836

`A271489(3*n)-a(n-1)` with `a(0)=1`
-/

namespace A116413.P6233304216464507836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271489 (3 * n) - a (n - 1)

end

end A116413.P6233304216464507836

namespace A116413

/-- `A271489(3*n)-a(n-1)` -/
def P6233304216464507836.Spec : Prop :=
  ∀ n, P6233304216464507836.a n = A116413 n

end A116413

/-! ## A116413.P6807615384034075053

`A033999(n)*A078058(n)`
-/

namespace A116413.P6807615384034075053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A078058 n

end

end A116413.P6807615384034075053

namespace A116413

/-- `A033999(n)*A078058(n)` -/
def P6807615384034075053.Spec : Prop :=
  ∀ n, P6807615384034075053.a n = A116413 n

end A116413

/-! ## A116413.P15896399706256370744

`gcd(A000038(n), A078058(n))`
-/

namespace A116413.P15896399706256370744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A078058 n)

end

end A116413.P15896399706256370744

namespace A116413

/-- `gcd(A000038(n), A078058(n))` -/
def P15896399706256370744.Spec : Prop :=
  ∀ n, (P15896399706256370744.a n : ℤ) = A116413 n

end A116413

/-! ## A116413.P16876013913531754786

`lcm(A010684(n), A078058(n))`
-/

namespace A116413.P16876013913531754786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010684 n) (A078058 n)

end

end A116413.P16876013913531754786

namespace A116413

/-- `lcm(A010684(n), A078058(n))` -/
def P16876013913531754786.Spec : Prop :=
  ∀ n, (P16876013913531754786.a n : ℤ) = A116413 n

end A116413

/-! ## A116413.P15428352147831012229

`2*A077939(n)-A077997(n)`
-/

namespace A116413.P15428352147831012229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077939 n - A077997 n

end

end A116413.P15428352147831012229

namespace A116413

/-- `2*A077939(n)-A077997(n)` -/
def P15428352147831012229.Spec : Prop :=
  ∀ n, P15428352147831012229.a n = A116413 n

end A116413

/-! ## A116413.P14130393552033714682

`A077939(n+1)-A109545(n+1)`
-/

namespace A116413.P14130393552033714682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077939 (n + 1) - A109545 (n + 1)

end

end A116413.P14130393552033714682

namespace A116413

/-- `A077939(n+1)-A109545(n+1)` -/
def P14130393552033714682.Spec : Prop :=
  ∀ n, P14130393552033714682.a n = A116413 n

end A116413

/-! ## A116413.P6922839203607718728

`A109545(n+2)-A077997(n+1)`
-/

namespace A116413.P6922839203607718728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109545 (n + 2) - A077997 (n + 1)

end

end A116413.P6922839203607718728

namespace A116413

/-- `A109545(n+2)-A077997(n+1)` -/
def P6922839203607718728.Spec : Prop :=
  ∀ n, P6922839203607718728.a n = A116413 n

end A116413

/-! ## A116413.P14606946693246609468

`A077939(n)/A077986(n)*A078058(n)`
-/

namespace A116413.P14606946693246609468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077939 n : ℚ) / (A077986 n : ℚ) * (A078058 n : ℚ)

end

end A116413.P14606946693246609468

namespace A116413

/-- `A077939(n)/A077986(n)*A078058(n)` -/
def P14606946693246609468.Spec : Prop :=
  ∀ n, P14606946693246609468.a n = (A116413 n : ℚ)

end A116413

/-! ## A116413.P14845705593757052440

`∑[A033999(n)*A347725(n+1)]*A033999(n)`
-/

namespace A116413.P14845705593757052440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A347725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A116413.P14845705593757052440

namespace A116413

/-- `∑[A033999(n)*A347725(n+1)]*A033999(n)` -/
def P14845705593757052440.Spec : Prop :=
  ∀ n, P14845705593757052440.a n = A116413 n

end A116413

/-! ## A116413.P2558534395041469967

`A077849(n+1)-(A109545(n+1)+A077849(n))`
-/

namespace A116413.P2558534395041469967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077849 (n + 1) - (A109545 (n + 1) + A077849 n)

end

end A116413.P2558534395041469967

namespace A116413

/-- `A077849(n+1)-(A109545(n+1)+A077849(n))` -/
def P2558534395041469967.Spec : Prop :=
  ∀ n, P2558534395041469967.a n = A116413 n

end A116413

/-!
# A116415: a(n) = 5*a(n-1) - 3*a(n-2), with a(0) = 1 and a(1) = 5.

The programs for A116415, the canonical program `A116415.P6847874345185300665` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116415 has offset 0).

The definition of A116415 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-3*a(n-2)` (program `A116415.P6847874345185300665`, by `A116415.P6847874345185300665.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116415.P6847874345185300665

`5*a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116415

/-- `5*a(n-1)-3*a(n-2)` -/
def P6847874345185300665.Spec : Prop :=
  ∀ n, P6847874345185300665.a n = A116415 n

theorem P6847874345185300665.correct : P6847874345185300665.Spec := by
  intro n
  simp only [A116415]

end A116415

/-! ## A116415.P14303959477488998279

`ogf(1/(1-5x+3x^2))`
-/

namespace A116415.P14303959477488998279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -5, 3] n

end

end A116415.P14303959477488998279

namespace A116415

/-- `ogf(1/(1-5x+3x^2))` -/
def P14303959477488998279.Spec : Prop :=
  ∀ n, P14303959477488998279.a n = A116415 n

end A116415

/-! ## A116415.P9852640363394749019

`∑[A018902(n)]`
-/

namespace A116415.P9852640363394749019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116415.P9852640363394749019

namespace A116415

/-- `∑[A018902(n)]` -/
def P9852640363394749019.Spec : Prop :=
  ∀ n, P9852640363394749019.a n = A116415 n

end A116415

/-! ## A116415.P6260499867830275836

`Δ[A052961(n)]`
-/

namespace A116415.P6260499867830275836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116415.P6260499867830275836

namespace A116415

/-- `Δ[A052961(n)]` -/
def P6260499867830275836.Spec : Prop :=
  ∀ n, P6260499867830275836.a n = A116415 n

end A116415

/-! ## A116415.P16874476416980191812

`∑[∑[A095934(n)]]`
-/

namespace A116415.P16874476416980191812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095934 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116415.P16874476416980191812

namespace A116415

/-- `∑[∑[A095934(n)]]` -/
def P16874476416980191812.Spec : Prop :=
  ∀ n, P16874476416980191812.a n = A116415 n

end A116415

/-! ## A116415.P7366019269364660971

`∑[A095940(n+1)]`
-/

namespace A116415.P7366019269364660971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116415.P7366019269364660971

namespace A116415

/-- `∑[A095940(n+1)]` -/
def P7366019269364660971.Spec : Prop :=
  ∀ n, P7366019269364660971.a n = A116415 n

end A116415

/-! ## A116415.P5715543795561253786

`∑[A081704(n+1)/3]`
-/

namespace A116415.P5715543795561253786
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081704 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116415.P5715543795561253786

namespace A116415

/-- `∑[A081704(n+1)/3]` -/
def P5715543795561253786.Spec : Prop :=
  ∀ n, P5715543795561253786.a n = (A116415 n : ℚ)

end A116415

/-! ## A116415.P2347094229000026961

`A109114(n)-a(n-1)` with `a(0)=1`
-/

namespace A116415.P2347094229000026961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109114 n - a (n - 1)

end

end A116415.P2347094229000026961

namespace A116415

/-- `A109114(n)-a(n-1)` -/
def P2347094229000026961.Spec : Prop :=
  ∀ n, P2347094229000026961.a n = A116415 n

end A116415

/-! ## A116415.P8650439861633135736

`a(n-1)+A081704(n)+a(n-1)` with `a(0)=1`
-/

namespace A116415.P8650439861633135736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A081704 n + a (n - 1))

end

end A116415.P8650439861633135736

namespace A116415

/-- `a(n-1)+A081704(n)+a(n-1)` -/
def P8650439861633135736.Spec : Prop :=
  ∀ n, P8650439861633135736.a n = A116415 n

end A116415

/-! ## A116415.P16850724602141104855

`A052961(n)-A106732(n)`
-/

namespace A116415.P16850724602141104855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052961 n - A106732 n

end

end A116415.P16850724602141104855

namespace A116415

/-- `A052961(n)-A106732(n)` -/
def P16850724602141104855.Spec : Prop :=
  ∀ n, P16850724602141104855.a n = A116415 n

end A116415

/-! ## A116415.P11533260688022800481

`Δ[A081704(n)]-A018902(n)`
-/

namespace A116415.P11533260688022800481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A018902 n

end

end A116415.P11533260688022800481

namespace A116415

/-- `Δ[A081704(n)]-A018902(n)` -/
def P11533260688022800481.Spec : Prop :=
  ∀ n, P11533260688022800481.a n = A116415 n

end A116415

/-! ## A116415.P10436611113292730587

`A052961(n+1)-A052961(n)`
-/

namespace A116415.P10436611113292730587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052961 (n + 1) - A052961 n

end

end A116415.P10436611113292730587

namespace A116415

/-- `A052961(n+1)-A052961(n)` -/
def P10436611113292730587.Spec : Prop :=
  ∀ n, P10436611113292730587.a n = A116415 n

end A116415

/-! ## A116415.P10919853068103509343

`A095939(n+1)-A018902(n)`
-/

namespace A116415.P10919853068103509343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095939 (n + 1) - A018902 n

end

end A116415.P10919853068103509343

namespace A116415

/-- `A095939(n+1)-A018902(n)` -/
def P10919853068103509343.Spec : Prop :=
  ∀ n, P10919853068103509343.a n = A116415 n

end A116415

/-! ## A116415.P465197202017558664

`A010903(n)-2*A018902(n)`
-/

namespace A116415.P465197202017558664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010903 n - 2 * A018902 n

end

end A116415.P465197202017558664

namespace A116415

/-- `A010903(n)-2*A018902(n)` -/
def P465197202017558664.Spec : Prop :=
  ∀ n, P465197202017558664.a n = A116415 n

end A116415

/-! ## A116415.P8789346612542407819

`(A109114(n)+A018902(n))/2`
-/

namespace A116415.P8789346612542407819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109114 n + A018902 n : ℚ) / 2

end

end A116415.P8789346612542407819

namespace A116415

/-- `(A109114(n)+A018902(n))/2` -/
def P8789346612542407819.Spec : Prop :=
  ∀ n, P8789346612542407819.a n = (A116415 n : ℚ)

end A116415

/-! ## A116415.P11821635611513726201

`(A010903(n)-A081704(n))/2`
-/

namespace A116415.P11821635611513726201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010903 n - A081704 n : ℚ) / 2

end

end A116415.P11821635611513726201

namespace A116415

/-- `(A010903(n)-A081704(n))/2` -/
def P11821635611513726201.Spec : Prop :=
  ∀ n, P11821635611513726201.a n = (A116415 n : ℚ)

end A116415

/-! ## A116415.P1793637136894894277

`A095939(n+1)-A095940(n+1)`
-/

namespace A116415.P1793637136894894277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095939 (n + 1) - A095940 (n + 1)

end

end A116415.P1793637136894894277

namespace A116415

/-- `A095939(n+1)-A095940(n+1)` -/
def P1793637136894894277.Spec : Prop :=
  ∀ n, P1793637136894894277.a n = A116415 n

end A116415

/-! ## A116415.P9841650372795627520

`A095934(n+1)-2*A018902(n)`
-/

namespace A116415.P9841650372795627520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095934 (n + 1) - 2 * A018902 n

end

end A116415.P9841650372795627520

namespace A116415

/-- `A095934(n+1)-2*A018902(n)` -/
def P9841650372795627520.Spec : Prop :=
  ∀ n, P9841650372795627520.a n = A116415 n

end A116415

/-! ## A116415.P15223846716699217261

`A095934(n+1)-2*A095940(n+1)`
-/

namespace A116415.P15223846716699217261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095934 (n + 1) - 2 * A095940 (n + 1)

end

end A116415.P15223846716699217261

namespace A116415

/-- `A095934(n+1)-2*A095940(n+1)` -/
def P15223846716699217261.Spec : Prop :=
  ∀ n, P15223846716699217261.a n = A116415 n

end A116415

/-! ## A116415.P3227601993690885235

`A018902(n)-(A052961(n)-A081704(n))`
-/

namespace A116415.P3227601993690885235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018902 n - (A052961 n - A081704 n)

end

end A116415.P3227601993690885235

namespace A116415

/-- `A018902(n)-(A052961(n)-A081704(n))` -/
def P3227601993690885235.Spec : Prop :=
  ∀ n, P3227601993690885235.a n = A116415 n

end A116415

/-!
# A116416: If n = Sum_{m>=1} 2^(m-1) * b(n,m), where each b(n,m) is 0 or 1 and the sum is a finite sum, then a(n) = numerator of Sum_{m>=1} b(n,m)/m.

The programs for A116416, there is no canonical definition to state claims against.
-/

/-! ## A116416.P14876106578732695753

`A318573(A019565(n))`
-/

namespace A116416.P14876106578732695753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (A019565 n).toNat

end

end A116416.P14876106578732695753

/-! ## A116416.P4619452556278214037

`A318573(sqrt(A334110(n)))`
-/

namespace A116416.P4619452556278214037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (SequenceMachineLib.roundAway (Real.sqrt (A334110 n : ℝ))).toNat

end

end A116416.P4619452556278214037

/-! ## A116416.P16824503693058401153

`A318573(A339809(n)+1)`
-/

namespace A116416.P16824503693058401153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (A339809 n + 1).toNat

end

end A116416.P16824503693058401153

/-! ## A116416.P11261158455392677131

`A214949(A048794(n))`
-/

namespace A116416.P11261158455392677131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214949 (A048794 n).toNat

end

end A116416.P11261158455392677131

/-! ## A116416.P857717442140772450

`A318573(∏{p}[A334110(n), #])`
-/

namespace A116416.P857717442140772450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A116416.P857717442140772450

/-!
# A116417: If n = Sum_{m>=1} 2^(m-1) * b(n,m), where each b(n,m) is 0 or 1 and the sum is a finite sum, then a(n) = denominator of Sum_{m>=1} b(n,m)/m.

The programs for A116417, there is no canonical definition to state claims against.
-/

/-! ## A116417.P9419518400193034299

`abs(A116416(A004442(n))-A116416(n))`
-/

namespace A116417.P9419518400193034299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A116416 (A004442 n).toNat - A116416 n|

end

end A116417.P9419518400193034299

/-! ## A116417.P8556945095174219953

`(A116416(A004442(n))-A116416(n))*A033999(n)`
-/

namespace A116417.P8556945095174219953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A116416 (A004442 n).toNat - A116416 n) * A033999 n

end

end A116417.P8556945095174219953

/-! ## A116417.P14466029605834841338

`(A116416(A004442(n))-A116416(n))*A062157(n+1)`
-/

namespace A116417.P14466029605834841338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A116416 (A004442 n).toNat - A116416 n) * A062157 (n + 1)

end

end A116417.P14466029605834841338

/-! ## A116417.P11255754744070010788

`(A116416(A004442(n))-A116416(n))*A057077(2*n)`
-/

namespace A116417.P11255754744070010788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A116416 (A004442 n).toNat - A116416 n) * A057077 (2 * n)

end

end A116417.P11255754744070010788

/-! ## A116417.P12702416974652091623

`∏{d}[A116416(A004442(n))-A116416(n), A014963(#)]`
-/

namespace A116417.P12702416974652091623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116416 (A004442 n).toNat - A116416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A116417.P12702416974652091623

/-! ## A116417.P11304040025899815379

`(A116416(A004442(n))-A116416(n))*A034947(n²+5)`
-/

namespace A116417.P11304040025899815379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A116416 (A004442 n).toNat - A116416 n) * A034947 (n ^ 2 + 5)

end

end A116417.P11304040025899815379

/-! ## A116417.P2765400246354794708

`A318574(A019565(n))`
-/

namespace A116417.P2765400246354794708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318574 (A019565 n).toNat

end

end A116417.P2765400246354794708

/-!
# A116418: Expansion of q^(-1/3) * b(q) * c(q) * b(q^2) / 3 in powers of q where b(), c() are cubic AGM theta functions.

The programs for A116418, there is no canonical definition to state claims against.
-/

/-! ## A116418.P4965193460185706619

`A208384(3*n+1)`
-/

namespace A116418.P4965193460185706619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208384 (3 * n + 1)

end

end A116418.P4965193460185706619

/-! ## A116418.P16162884548590984872

`A208385(3*n+1)`
-/

namespace A116418.P16162884548590984872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208385 (3 * n + 1)

end

end A116418.P16162884548590984872

/-! ## A116418.P9149503509800141560

`A122407(2*n)`
-/

namespace A116418.P9149503509800141560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122407 (2 * n)

end

end A116418.P9149503509800141560

/-! ## A116418.P5196590484611112473

`xor(1, xor(1, A122407(n+n)))`
-/

namespace A116418.P5196590484611112473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A122407 (n + n)))

end

end A116418.P5196590484611112473

/-! ## A116418.P2381751857254930665

`A122407(A005843(n))%(n+3)²`
-/

namespace A116418.P2381751857254930665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122407 (A005843 n).toNat) ((n + 3) ^ 2 : ℤ)

end

end A116418.P2381751857254930665

/-! ## A116418.P16601166225252779440

`A122407(A005843(n))+n%A019456(n)-n`
-/

namespace A116418.P16601166225252779440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122407 (A005843 n).toNat + Int.tmod (n : ℤ) (A019456 n) - (n : ℤ)

end

end A116418.P16601166225252779440

/-!
# A116419: Reduced numerators of 2*(2^(1+n)-1)/(1+n)/(2+n).

The programs for A116419, the canonical program `A116419.P2674946048366642715` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116419 has offset 0).

The definition of A116419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116419.P2674946048366642715

`∑[2^n]/gcd(∑[2^n], ∑[n+1])`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116419

/-- `∑[2^n]/gcd(∑[2^n], ∑[n+1])` -/
def P2674946048366642715.Spec : Prop :=
  ∀ n, P2674946048366642715.a n = (A116419 n : ℚ)

end A116419

/-! ## A116419.P7502136421424853191

`gcd(A090633(n+1), A225101(n+2))`
-/

namespace A116419.P7502136421424853191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090633 (n + 1)) (A225101 (n + 2))

end

end A116419.P7502136421424853191

namespace A116419

/-- `gcd(A090633(n+1), A225101(n+2))` -/
def P7502136421424853191.Spec : Prop :=
  ∀ n, (P7502136421424853191.a n : ℤ) = A116419 n

end A116419

/-! ## A116419.P15924004778486300059

`lcm(∑[2^n], ∑[n+1])/∑[n+1]`
-/

namespace A116419.P15924004778486300059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ)

end

end A116419.P15924004778486300059

namespace A116419

/-- `lcm(∑[2^n], ∑[n+1])/∑[n+1]` -/
def P15924004778486300059.Spec : Prop :=
  ∀ n, P15924004778486300059.a n = (A116419 n : ℚ)

end A116419

/-! ## A116419.P11832065164477802322

`A090395(A225101(n+2))`
-/

namespace A116419.P11832065164477802322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090395 (A225101 (n + 2)).toNat

end

end A116419.P11832065164477802322

namespace A116419

/-- `A090395(A225101(n+2))` -/
def P11832065164477802322.Spec : Prop :=
  ∀ n, P11832065164477802322.a n = A116419 n

end A116419

/-! ## A116419.P10188015387827989778

`A007947(A343227(2^n))`
-/

namespace A116419.P10188015387827989778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A343227 (2 ^ n)).toNat

end

end A116419.P10188015387827989778

namespace A116419

/-- `A007947(A343227(2^n))` -/
def P10188015387827989778.Spec : Prop :=
  ∀ n, P10188015387827989778.a n = A116419 n

end A116419

/-!
# A116420: Reduced denominators of 2(2^(1+n)-1)/(1+n)/(2+n).

The programs for A116420, the canonical program `A116420.P3106946940037731535` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116420 has offset 0).

The definition of A116420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116420.P3106946940037731535

`∑[n+1]/gcd(∑[2^n], ∑[n+1])`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116420

/-- `∑[n+1]/gcd(∑[2^n], ∑[n+1])` -/
def P3106946940037731535.Spec : Prop :=
  ∀ n, P3106946940037731535.a n = (A116420 n : ℚ)

end A116420

/-! ## A116420.P18216141109209855260

`lcm(∑[n+1], A126646(n))/A126646(n)`
-/

namespace A116420.P18216141109209855260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A126646 n) : ℚ) / (A126646 n : ℚ)

end

end A116420.P18216141109209855260

namespace A116420

/-- `lcm(∑[n+1], A126646(n))/A126646(n)` -/
def P18216141109209855260.Spec : Prop :=
  ∀ n, P18216141109209855260.a n = (A116420 n : ℚ)

end A116420

/-! ## A116420.P4003295275462341886

`lcm(A000217(n+1), A000225(n+1))/A000225(n+1)`
-/

namespace A116420.P4003295275462341886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000217 (n + 1)) (A000225 (n + 1)) : ℚ) / (A000225 (n + 1) : ℚ)

end

end A116420.P4003295275462341886

namespace A116420

/-- `lcm(A000217(n+1), A000225(n+1))/A000225(n+1)` -/
def P4003295275462341886.Spec : Prop :=
  ∀ n, P4003295275462341886.a n = (A116420 n : ℚ)

end A116420

/-! ## A116420.P16500218935284805854

`lcm(A000142(n), A002679(n+2))/A000142(n)`
-/

namespace A116420.P16500218935284805854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000142 n) (A002679 (n + 2)) : ℚ) / (A000142 n : ℚ)

end

end A116420.P16500218935284805854

namespace A116420

/-- `lcm(A000142(n), A002679(n+2))/A000142(n)` -/
def P16500218935284805854.Spec : Prop :=
  ∀ n, P16500218935284805854.a n = (A116420 n : ℚ)

end A116420

/-! ## A116420.P18122391360693962155

`gcd(A031971(n+1), A129628(A000079(n)))`
-/

namespace A116420.P18122391360693962155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A031971 (n + 1)) (A129628 (A000079 n).toNat)

end

end A116420.P18122391360693962155

namespace A116420

/-- `gcd(A031971(n+1), A129628(A000079(n)))` -/
def P18122391360693962155.Spec : Prop :=
  ∀ n, (P18122391360693962155.a n : ℤ) = A116420 n

end A116420

/-!
# A116421: a(n) = 2^(n-1)*binomial(2*n-1,n-1)^2.

The programs for A116421, there is no canonical definition to state claims against.
-/

/-! ## A116421.P7633050667971681336

`(2/n-4)²*a(n-1)*2` with `a(0)=0, a(1)=1`
-/

namespace A116421.P7633050667971681336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 / (n : ℚ) - 4) ^ 2 * a (n - 1) * 2

end

end A116421.P7633050667971681336

/-! ## A116421.P6236585586576890383

`A088218(n)²*floor(2^(n-1))`
-/

namespace A116421.P6236585586576890383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n ^ 2 * ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A116421.P6236585586576890383

/-! ## A116421.P4424979825778705743

`(A028329(n)/4)²*floor(2^(n-1))`
-/

namespace A116421.P4424979825778705743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A028329 n : ℚ) / 4) ^ 2 * (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ : ℚ)

end

end A116421.P4424979825778705743

/-! ## A116421.P4132569559828671814

`ceil(ceil((A000984(n)-1)/2)²*2^n/2)`
-/

namespace A116421.P4132569559828671814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A000984 n - 1 : ℚ) / 2⌉ ^ 2 * (2 ^ n : ℤ) : ℚ) / 2⌉

end

end A116421.P4132569559828671814

/-! ## A116421.P18350616333376911286

`A110556(n)²*A131577(n)`
-/

namespace A116421.P18350616333376911286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110556 n ^ 2 * A131577 n

end

end A116421.P18350616333376911286

/-! ## A116421.P8894073832349816348

`A002894(n)/4*A131577(n)`
-/

namespace A116421.P8894073832349816348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002894 n : ℚ) / 4 * (A131577 n : ℚ)

end

end A116421.P8894073832349816348

/-! ## A116421.P2313513201656393925

`record[A138364(n)²]*A011782(n)`
-/

namespace A116421.P2313513201656393925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A011782 n

end

end A116421.P2313513201656393925

/-! ## A116421.P9463654657927299058

`record[A138364(n)²*A016116(n)]`
-/

namespace A116421.P9463654657927299058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n ^ 2 * A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116421.P9463654657927299058

/-! ## A116421.P10922582207843495863

`A210736(2*n)²*A131577(n)`
-/

namespace A116421.P10922582207843495863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (2 * n) ^ 2 * A131577 n

end

end A116421.P10922582207843495863

/-! ## A116421.P6899993950337136278

`(A000984(n)/2)²*A131577(n)`
-/

namespace A116421.P6899993950337136278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000984 n : ℚ) / 2) ^ 2 * (A131577 n : ℚ)

end

end A116421.P6899993950337136278

/-!
# A116422: Triangle read by rows: T(n,k) is the number of self-conjugate partitions of n having Durfee square of size k (n>=1; 1<=k<=floor(sqrt(n))).

The programs for A116422, there is no canonical definition to state claims against.
-/

/-! ## A116422.P9381585995978934105

`and(A115577(A238279(n)), A115994(n+1))`
-/

namespace A116422.P9381585995978934105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115577 (A238279 n).toNat) (A115994 (n + 1))

end

end A116422.P9381585995978934105

/-! ## A116422.P4941985784491387192

`and(A084542(n+1), A337260(A084604(n)))`
-/

namespace A116422.P4941985784491387192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084542 (n + 1)) (A337260 (A084604 n).toNat)

end

end A116422.P4941985784491387192

/-! ## A116422.P9645527378971611927

`A248639(A087112(n+1)-A211394(n+1))`
-/

namespace A116422.P9645527378971611927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248639 (A087112 (n + 1) - A211394 (n + 1)).toNat

end

end A116422.P9645527378971611927

/-! ## A116422.P1953777214430600858

`A026780(n+1)%A061336(A229859(3*n+1))`
-/

namespace A116422.P1953777214430600858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026780 (n + 1)) (A061336 (A229859 (3 * n + 1)).toNat)

end

end A116422.P1953777214430600858

/-! ## A116422.P9612431294391912918

`A030190(A106573(n+1))*A109035(n)`
-/

namespace A116422.P9612431294391912918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A106573 (n + 1)).toNat * A109035 n

end

end A116422.P9612431294391912918

/-!
# A116423: Binomial transform of A006053.

The programs for A116423, the canonical program `A116423.P766899357930844803` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116423 has offset 1).

The definition of A116423 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116423.P766899357930844803

`4*a(n-1)-3*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116423

/-- `4*a(n-1)-3*a(n-2)-a(n-3)` -/
def P766899357930844803.Spec : Prop :=
  ∀ n, P766899357930844803.a n = A116423 (n + 1)

theorem P766899357930844803.correct : P766899357930844803.Spec := by
  intro n
  simp only [A116423, Nat.add_sub_cancel]

end A116423

/-! ## A116423.P15415785175162085808

`ogf((x-x^2)/(1-4x+3x^2+x^3))`
-/

namespace A116423.P15415785175162085808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -4, 3, 1] n

end

end A116423.P15415785175162085808

namespace A116423

/-- `ogf((x-x^2)/(1-4x+3x^2+x^3))` -/
def P15415785175162085808.Spec : Prop :=
  ∀ n, P15415785175162085808.a n = A116423 (n + 1)

end A116423

/-! ## A116423.P11523095057033047406

`∑[A121449(n)]+A215404(n)-A121449(n)`
-/

namespace A116423.P11523095057033047406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A215404 n - A121449 n)

end

end A116423.P11523095057033047406

namespace A116423

/-- `∑[A121449(n)]+A215404(n)-A121449(n)` -/
def P11523095057033047406.Spec : Prop :=
  ∀ n, P11523095057033047406.a n = A116423 (n + 1)

end A116423

/-! ## A116423.P13359351578087050866

`A085810(n+1)+A215404(n)-A121449(n)`
-/

namespace A116423.P13359351578087050866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085810 (n + 1) + (A215404 n - A121449 n)

end

end A116423.P13359351578087050866

namespace A116423

/-- `A085810(n+1)+A215404(n)-A121449(n)` -/
def P13359351578087050866.Spec : Prop :=
  ∀ n, P13359351578087050866.a n = A116423 (n + 1)

end A116423

/-! ## A116423.P15320804389343317144

`Δ[A215404(n)]`
-/

namespace A116423.P15320804389343317144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215404 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116423.P15320804389343317144

namespace A116423

/-- `Δ[A215404(n)]` -/
def P15320804389343317144.Spec : Prop :=
  ∀ n, P15320804389343317144.a n = A116423 (n + 1)

end A116423

/-! ## A116423.P4775531101229521809

`A136776(n+1)-A121449(n)`
-/

namespace A116423.P4775531101229521809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136776 (n + 1) - A121449 n

end

end A116423.P4775531101229521809

namespace A116423

/-- `A136776(n+1)-A121449(n)` -/
def P4775531101229521809.Spec : Prop :=
  ∀ n, P4775531101229521809.a n = A116423 (n + 1)

end A116423

/-! ## A116423.P11017404661505125327

`A215404(n+1)-A215404(n)`
-/

namespace A116423.P11017404661505125327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215404 (n + 1) - A215404 n

end

end A116423.P11017404661505125327

namespace A116423

/-- `A215404(n+1)-A215404(n)` -/
def P11017404661505125327.Spec : Prop :=
  ∀ n, P11017404661505125327.a n = A116423 (n + 1)

end A116423

/-! ## A116423.P5384775842269654068

`A121449(n+1)-∑[A121449(n)]`
-/

namespace A116423.P5384775842269654068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121449 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116423.P5384775842269654068

namespace A116423

/-- `A121449(n+1)-∑[A121449(n)]` -/
def P5384775842269654068.Spec : Prop :=
  ∀ n, P5384775842269654068.a n = A116423 (n + 1)

end A116423

/-! ## A116423.P7440685080245518941

`A121449(n+1)-A085810(n+1)`
-/

namespace A116423.P7440685080245518941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121449 (n + 1) - A085810 (n + 1)

end

end A116423.P7440685080245518941

namespace A116423

/-- `A121449(n+1)-A085810(n+1)` -/
def P7440685080245518941.Spec : Prop :=
  ∀ n, P7440685080245518941.a n = A116423 (n + 1)

end A116423

/-! ## A116423.P7023059834428162259

`A085810(n+2)%A085810(n+1)`
-/

namespace A116423.P7023059834428162259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085810 (n + 2)) (A085810 (n + 1))

end

end A116423.P7023059834428162259

namespace A116423

/-- `A085810(n+2)%A085810(n+1)` -/
def P7023059834428162259.Spec : Prop :=
  ∀ n, P7023059834428162259.a n = A116423 (n + 1)

end A116423

/-! ## A116423.P12826069904477760949

`Δ[A136776(n+1)-A085810(n+1)]`
-/

namespace A116423.P12826069904477760949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136776 (n + 1) - A085810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116423.P12826069904477760949

namespace A116423

/-- `Δ[A136776(n+1)-A085810(n+1)]` -/
def P12826069904477760949.Spec : Prop :=
  ∀ n, P12826069904477760949.a n = A116423 (n + 1)

end A116423

/-!
# A116425: Decimal expansion of 2 + 2*cos(2*Pi/7).

The programs for A116425, there is no canonical definition to state claims against.
-/

/-! ## A116425.P3548141256240178469

`A231187(n)+A000007(n)`
-/

namespace A116425.P3548141256240178469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231187 (n + 1) + A000007 n

end

end A116425.P3548141256240178469

/-! ## A116425.P11905950096273318668

`2*A231187(n)-A255249(n)`
-/

namespace A116425.P11905950096273318668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A231187 (n + 1) - A255249 (n + 1)

end

end A116425.P11905950096273318668

/-! ## A116425.P11985450890546675703

`A231187(n)+A008683(A008574(n))`
-/

namespace A116425.P11985450890546675703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231187 (n + 1) + A008683 (A008574 n).toNat

end

end A116425.P11985450890546675703

/-! ## A116425.P7799447029359635396

`A231187(n)+A008683(A046109(n))`
-/

namespace A116425.P7799447029359635396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231187 (n + 1) + A008683 (A046109 n).toNat

end

end A116425.P7799447029359635396

/-! ## A116425.P8736788281793202804

`or(A000007(A000120(n)), A231187(n))`
-/

namespace A116425.P8736788281793202804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A000120 n).toNat) (A231187 (n + 1))

end

end A116425.P8736788281793202804

/-! ## A116425.P17510254639585897461

`or(A000007(A000196(n)), A231187(n))`
-/

namespace A116425.P17510254639585897461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A000196 n).toNat) (A231187 (n + 1))

end

end A116425.P17510254639585897461

/-! ## A116425.P205330749519207527

`or(A000007(A003056(n)), A231187(n))`
-/

namespace A116425.P205330749519207527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A003056 n).toNat) (A231187 (n + 1))

end

end A116425.P205330749519207527

/-! ## A116425.P5947523572314254981

`or(A000007(A048766(n)), A231187(n))`
-/

namespace A116425.P5947523572314254981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A048766 n).toNat) (A231187 (n + 1))

end

end A116425.P5947523572314254981

/-! ## A116425.P18059708608826464384

`A231187(n)+A008683(A093995(n+1))`
-/

namespace A116425.P18059708608826464384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231187 (n + 1) + A008683 (A093995 (n + 1)).toNat

end

end A116425.P18059708608826464384

/-! ## A116425.P72508353956805350

`A231187(n)-A008683(2*A008574(n))`
-/

namespace A116425.P72508353956805350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231187 (n + 1) - A008683 (2 * A008574 n).toNat

end

end A116425.P72508353956805350

/-! ## A116425.P5898816415980161815

`A231187(n)-A008683(2*A046109(n))`
-/

namespace A116425.P5898816415980161815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231187 (n + 1) - A008683 (2 * A046109 n).toNat

end

end A116425.P5898816415980161815

/-! ## A116425.P5120209501099325066

`A231187(n)+A130321(n)%A035214(n)`
-/

namespace A116425.P5120209501099325066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231187 (n + 1) + Int.tmod (A130321 n) (A035214 n)

end

end A116425.P5120209501099325066

/-! ## A116425.P15280720486527790002

`xor(A000007(n)*A010815(n), A231187(n))`
-/

namespace A116425.P15280720486527790002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n * A010815 n) (A231187 (n + 1))

end

end A116425.P15280720486527790002

/-! ## A116425.P1819719694262097120

`xor(A000007(n)*A071919(n), A231187(n))`
-/

namespace A116425.P1819719694262097120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n * A071919 n) (A231187 (n + 1))

end

end A116425.P1819719694262097120

/-! ## A116425.P2541669984826025020

`xor(A000007(n)*A130321(n), A231187(n))`
-/

namespace A116425.P2541669984826025020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n * A130321 n) (A231187 (n + 1))

end

end A116425.P2541669984826025020

/-! ## A116425.P6672188092078629749

`or(A000007(A061579(n)), A231187(n))`
-/

namespace A116425.P6672188092078629749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A061579 n).toNat) (A231187 (n + 1))

end

end A116425.P6672188092078629749

/-! ## A116425.P4879550997168519948

`or(A000007(A004273(n)), A231187(n))`
-/

namespace A116425.P4879550997168519948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A004273 n).toNat) (A231187 (n + 1))

end

end A116425.P4879550997168519948

/-! ## A116425.P10105966306042602202

`or(A000007(A004275(n)), A231187(n))`
-/

namespace A116425.P10105966306042602202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A004275 n).toNat) (A231187 (n + 1))

end

end A116425.P10105966306042602202

/-! ## A116425.P11418868713175888531

`xor(A000007(2*n), A231187(n))`
-/

namespace A116425.P11418868713175888531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (2 * n)) (A231187 (n + 1))

end

end A116425.P11418868713175888531

/-! ## A116425.P13020607205008409415

`A231187(n)+A008683((n+1)²)`
-/

namespace A116425.P13020607205008409415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231187 (n + 1) + A008683 ((n + 1) ^ 2)

end

end A116425.P13020607205008409415

/-!
# A116426: The number of n-almost primes less than or equal to 4^n, starting with a(0)=1.

The programs for A116426, there is no canonical definition to state claims against.
-/

/-! ## A116426.P4427188291433410656

`record[A126279(∑[2*n^(n%2)-1])]`
-/

namespace A116426.P4427188291433410656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ (n % 2) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116426.P4427188291433410656

/-! ## A116426.P16046972940023333498

`A126279(round(1/acot(n))+C(2*n, 2))`
-/

namespace A116426.P16046972940023333498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + (Nat.choose (2 * n) 2 : ℤ)).toNat

end

end A116426.P16046972940023333498

/-! ## A116426.P10993374429288526185

`A126279(A004277(n²))`
-/

namespace A116426.P10993374429288526185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (A004277 (n ^ 2)).toNat

end

end A116426.P10993374429288526185

/-! ## A116426.P16033525374743428013

`A126279(A028310(2*n²))`
-/

namespace A116426.P16033525374743428013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (A028310 (2 * n ^ 2)).toNat

end

end A116426.P16033525374743428013

/-! ## A116426.P4641364621607596944

`A126279(A065033((2*n)²))`
-/

namespace A116426.P4641364621607596944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (A065033 ((2 * n) ^ 2)).toNat

end

end A116426.P4641364621607596944

/-!
# A116427: The number of n-almost primes less than or equal to 6^n, starting with a(0)=1.

The programs for A116427, there is no canonical definition to state claims against.
-/

/-! ## A116427.P11398930826483097614

`A116433(A055999(n+3))`
-/

namespace A116427.P11398930826483097614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116433 (A055999 (n + 3)).toNat

end

end A116427.P11398930826483097614

/-! ## A116427.P2648299048305476477

`A116433(eq[5, A025581(n)])`
-/

namespace A116427.P2648299048305476477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116433 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A116427.P2648299048305476477

/-! ## A116427.P5187560941731817350

`A116433(eq[6, A193739(n)])`
-/

namespace A116427.P5187560941731817350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116433 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A116427.P5187560941731817350

/-!
# A116428: The number of n-almost primes less than or equal to 8^n, starting with a(0)=1.

The programs for A116428, there is no canonical definition to state claims against.
-/

/-! ## A116428.P5011210867010171386

`A126279(A022266(n)+A000007(n))`
-/

namespace A116428.P5011210867010171386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (A022266 n + A000007 n).toNat

end

end A116428.P5011210867010171386

/-! ## A116428.P14108232800258004864

`A126279(A088157(n)+A022266(n))`
-/

namespace A116428.P14108232800258004864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (A088157 n + A022266 n).toNat

end

end A116428.P14108232800258004864

/-! ## A116428.P3452359109713624533

`A126279(gcd(A022266(n), A088157(n)))`
-/

namespace A116428.P3452359109713624533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (Int.gcd (A022266 n) (A088157 n))

end

end A116428.P3452359109713624533

/-! ## A116428.P17417218501236233722

`A126279(or(A000007(n), A022266(n)))`
-/

namespace A116428.P17417218501236233722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (Int.lor (A000007 n) (A022266 n)).toNat

end

end A116428.P17417218501236233722

/-! ## A116428.P10167981146666069048

`A126279(or(A022266(n), A088157(n)))`
-/

namespace A116428.P10167981146666069048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (Int.lor (A022266 n) (A088157 n)).toNat

end

end A116428.P10167981146666069048

/-!
# A116429: The number of n-almost primes less than or equal to 9^n, starting with a(0)=1.

The programs for A116429, there is no canonical definition to state claims against.
-/

/-! ## A116429.P10439899777534800624

`A241419(A332835(3*n+1)+3)`
-/

namespace A116429.P10439899777534800624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241419 (A332835 (3 * n + 1) + 3).toNat

end

end A116429.P10439899777534800624

/-!
# A116430: The number of n-almost primes less than or equal to 10^n, starting with a(0)=1.

The programs for A116430, there is no canonical definition to state claims against.
-/

/-! ## A116430.P698955287372691048

`xor(A057359(7^n), A115671(n))`
-/

namespace A116430.P698955287372691048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057359 (7 ^ n)) (A115671 n)

end

end A116430.P698955287372691048

/-!
# A116431: The number of n-almost primes less than or equal to 12^n, starting with a(0)=1.

The programs for A116431, there is no canonical definition to state claims against.
-/

/-! ## A116431.P10016136476629997867

`A312147(A002452(n))+n`
-/

namespace A116431.P10016136476629997867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312147 (A002452 n).toNat + (n : ℤ)

end

end A116431.P10016136476629997867

/-!
# A116432: The number of n-almost primes less than or equal to e^n, starting with a(0)=1.

The programs for A116432, there is no canonical definition to state claims against.
-/

/-! ## A116432.P7580098000270816567

`A055500(n)+A010059(A000108(n))`
-/

namespace A116432.P7580098000270816567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055500 n + A010059 (A000108 n).toNat

end

end A116432.P7580098000270816567

/-! ## A116432.P10910763128393891395

`A284775(A007716(n))+A055500(n)`
-/

namespace A116432.P10910763128393891395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (A007716 n).toNat + A055500 n

end

end A116432.P10910763128393891395

/-! ## A116432.P16802534986884891670

`A111124(n)+A005713(A326308(n))`
-/

namespace A116432.P16802534986884891670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111124 n + A005713 (A326308 n).toNat

end

end A116432.P16802534986884891670

/-! ## A116432.P701074809131008140

`A048249(n+2)-A005811(A006786(n+1))`
-/

namespace A116432.P701074809131008140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048249 (n + 2) - A005811 (A006786 (n + 1)).toNat

end

end A116432.P701074809131008140

/-!
# A116433: Consider the array T(r,c) where is the number of c-almost primes less than or equal to r^c, r >= 1, c >= 0. Read the array by antidiagonals.

The programs for A116433, there is no canonical definition to state claims against.
-/

/-! ## A116433.P5469069174254948879

`A357621(A210472(n))`
-/

namespace A116433.P5469069174254948879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357621 (A210472 n).toNat

end

end A116433.P5469069174254948879

/-! ## A116433.P15338524728079186164

`A126302(A025581(n)^A097805(n))`
-/

namespace A116433.P15338524728079186164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126302 (SequenceMachineLib.roundAway ((A025581 n : ℚ) ^ (A097805 n : ℤ))).toNat

end

end A116433.P15338524728079186164

/-! ## A116433.P8920432355593561188

`A001876(A095859(n+1))`
-/

namespace A116433.P8920432355593561188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A095859 (n + 1)).toNat

end

end A116433.P8920432355593561188

/-! ## A116433.P2569561813495653537

`A072491(A267480(n+1))`
-/

namespace A116433.P2569561813495653537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A267480 (n + 1)).toNat

end

end A116433.P2569561813495653537

/-! ## A116433.P15428024886003445011

`A117118(A249251(n+1))`
-/

namespace A116433.P15428024886003445011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117118 (A249251 (n + 1)).toNat

end

end A116433.P15428024886003445011

/-!
# A116434: Consider the array T(r,c), the number of c-almost primes less than or equal to r^c. This is the diagonal T(r,r-1).

The programs for A116434, there is no canonical definition to state claims against.
-/

/-! ## A116434.P170657859797460566

`A116433(∑[4*n])`
-/

namespace A116434.P170657859797460566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116433 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A116434.P170657859797460566

/-! ## A116434.P3354713346531581240

`record[A116433(∑[(n²-1)%Δ[n²]])]`
-/

namespace A116434.P3354713346531581240
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - 1) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116433 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116434.P3354713346531581240

/-!
# A116435: Number of n-almost primes less than or equal to n^n.

The programs for A116435, there is no canonical definition to state claims against.
-/

/-! ## A116435.P5756582744809951576

`A116433(2*(n+1)²)`
-/

namespace A116435.P5756582744809951576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116433 (2 * (n + 1) ^ 2)

end

end A116435.P5756582744809951576

/-! ## A116435.P2489154556384553307

`record[A116433(n*floor(n/2))]`
-/

namespace A116435.P2489154556384553307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116433 ((n : ℤ) * ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116435.P2489154556384553307

/-!
# A116436: Numbers m which when sandwiched between two 1's give a multiple of m.

The programs for A116436, there is no canonical definition to state claims against.
-/

/-! ## A116436.P12619349874627318118

`∩[A116437(n+1), A116438(n+1)]`
-/

namespace A116436.P12619349874627318118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116436.P12619349874627318118

/-! ## A116436.P6580864814184404719

`∩[A116437(n+1), A116440(n+1)]`
-/

namespace A116436.P6580864814184404719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116436.P6580864814184404719

/-! ## A116436.P1841733444420622549

`∩[A116437(n+1), A116442(n+1)]`
-/

namespace A116436.P1841733444420622549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116436.P1841733444420622549

/-! ## A116436.P10739741662513099720

`∩[A116438(n+1), A116439(n+1)]`
-/

namespace A116436.P10739741662513099720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116436.P10739741662513099720

/-! ## A116436.P12938581063657935702

`∩[A116438(n+1), A116440(n+1)]`
-/

namespace A116436.P12938581063657935702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116436.P12938581063657935702

/-! ## A116436.P5786064259935342339

`∩[A116438(n+1), A116442(n+1)]`
-/

namespace A116436.P5786064259935342339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116436.P5786064259935342339

/-! ## A116436.P16538785024417324139

`∩[A116439(n+1), A116440(n+1)]`
-/

namespace A116436.P16538785024417324139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116436.P16538785024417324139

/-! ## A116436.P7881785662619450578

`∩[A116439(n+1), A116444(n+1)]`
-/

namespace A116436.P7881785662619450578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116436.P7881785662619450578

/-! ## A116436.P17200734554575766492

`∩[A116440(n+1), A116442(n+1)]`
-/

namespace A116436.P17200734554575766492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116436.P17200734554575766492

/-! ## A116436.P13078391495316245633

`∩[A116440(n+1), A116444(n+1)]`
-/

namespace A116436.P13078391495316245633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116436.P13078391495316245633

/-! ## A116436.P7415448087560708247

`∩[A116443(n+1), A116444(n+1)]`
-/

namespace A116436.P7415448087560708247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116436.P7415448087560708247

/-!
# A116437: Numbers k which when sandwiched between two 2's give a multiple of k.

The programs for A116437, there is no canonical definition to state claims against.
-/

/-! ## A116437.P13172485511630365982

`∩[A116439(n+1), A116441(n+1)]`
-/

namespace A116437.P13172485511630365982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116437.P13172485511630365982

/-! ## A116437.P17481010517105590053

`∩[A116441(n+1), A116443(n+1)]`
-/

namespace A116437.P17481010517105590053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116437.P17481010517105590053

/-! ## A116437.P7054487043660122251

`record[∏{p}[A116439(n+1), #]]`
-/

namespace A116437.P7054487043660122251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116439 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116437.P7054487043660122251

/-! ## A116437.P10875601020906459692

`record[∏{p}[A116443(n+1), #]]`
-/

namespace A116437.P10875601020906459692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116443 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116437.P10875601020906459692

/-! ## A116437.P13585357448487126792

`A376318(A116438(n+1))`
-/

namespace A116437.P13585357448487126792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376318 (A116438 (n + 1)).toNat

end

end A116437.P13585357448487126792

/-!
# A116438: Numbers k which when sandwiched between two 3's give a multiple of k.

The programs for A116438, there is no canonical definition to state claims against.
-/

/-! ## A116438.P8978852066361573272

`∩[A116441(n+1), A116444(n+1)]`
-/

namespace A116438.P8978852066361573272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A116438.P8978852066361573272

/-! ## A116438.P16861826451982885636

`record[∏{p}[A116444(n+1), #]]`
-/

namespace A116438.P16861826451982885636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116444 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116438.P16861826451982885636

/-! ## A116438.P9360692657713112162

`∏{p}[A116437(n+1), or(1, #)]`
-/

namespace A116438.P9360692657713112162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116437 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.lor 1 p

end

end A116438.P9360692657713112162

/-! ## A116438.P5136483146816169301

`record[A007913(A116444(n+1))]`
-/

namespace A116438.P5136483146816169301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A116444 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116438.P5136483146816169301

/-! ## A116438.P13495926483704115786

`filter[A116444(n+1), A008966(#)]`
-/

namespace A116438.P13495926483704115786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A116438.P13495926483704115786

/-!
# A116439: Numbers k which when sandwiched between two 4's give a multiple of k.

The programs for A116439, there is no canonical definition to state claims against.
-/

/-! ## A116439.P3203154043618936605

`filter[A116443(n+1), A212793(#)]`
-/

namespace A116439.P3203154043618936605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A116439.P3203154043618936605

/-! ## A116439.P5035548932921888318

`filter[A116443(n+1), A355823(#)]`
-/

namespace A116439.P5035548932921888318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A116439.P5035548932921888318

/-! ## A116439.P5728931053977179411

`filter[A116443(n+1), A355825(#)]`
-/

namespace A116439.P5728931053977179411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j).toNat = 1) n)

end

end A116439.P5728931053977179411

/-! ## A116439.P4642284999453740564

`filter[A116443(n+1), A359471(#)]`
-/

namespace A116439.P4642284999453740564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A116439.P4642284999453740564

/-! ## A116439.P4642482651382596572

`filter[A116443(n+1), A359834(#)]`
-/

namespace A116439.P4642482651382596572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A116439.P4642482651382596572

/-!
# A116440: Numbers k which when sandwiched between two 5's give a multiple of k.

The programs for A116440, there is no canonical definition to state claims against.
-/

/-! ## A116440.P6533156967971025411

`∏{p}[A116437(n+1), A195140(#)]`
-/

namespace A116440.P6533156967971025411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A195140 p

end

end A116440.P6533156967971025411

/-! ## A116440.P5671517952225213333

`record[∏{p}[A116439(n+1), A195140(#)]]`
-/

namespace A116440.P5671517952225213333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116439 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A195140 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116440.P5671517952225213333

/-! ## A116440.P1985548859964159863

`record[∏{p}[A116443(n+1), A195140(#)]]`
-/

namespace A116440.P1985548859964159863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116443 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A195140 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116440.P1985548859964159863

/-! ## A116440.P5231327536562323925

`A000265(A116438(n+1)+A116437(n+1))`
-/

namespace A116440.P5231327536562323925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A116438 (n + 1) + A116437 (n + 1)).toNat

end

end A116440.P5231327536562323925

/-! ## A116440.P1827019270861732508

`A181351(A116437(n+1))`
-/

namespace A116440.P1827019270861732508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181351 (A116437 (n + 1)).toNat

end

end A116440.P1827019270861732508

/-!
# A116443: Numbers k which when sandwiched between two 8's give a multiple of k.

The programs for A116443, there is no canonical definition to state claims against.
-/

/-! ## A116443.P14922749416184258472

`∪[A018587(A018578(n+1)), A018552(n+5)]`
-/

namespace A116443.P14922749416184258472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018587 (A018578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018552 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A116443.P14922749416184258472

/-!
# A116444: Numbers k which when sandwiched between two 9's give a multiple of k.

The programs for A116444, there is no canonical definition to state claims against.
-/

/-! ## A116444.P1246615148530491329

`record[gcd(A027897(n+1), A328576(n))]`
-/

namespace A116444.P1246615148530491329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027897 (n + 1)) (A328576 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116444.P1246615148530491329

/-!
# A116445: Array read by antidiagonals: the binomial transform of the sequence (1,2,..n,0,0,0..) in row n.

The programs for A116445, there is no canonical definition to state claims against.
-/

/-! ## A116445.P4307332461531597909

`A134836(∑[char[∑[n]]]²-n)`
-/

namespace A116445.P4307332461531597909
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134836 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A116445.P4307332461531597909

/-! ## A116445.P11986882075210581076

`A309077(A116669(n+1))`
-/

namespace A116445.P11986882075210581076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309077 (A116669 (n + 1)).toNat

end

end A116445.P11986882075210581076

/-! ## A116445.P12830913299533843021

`A373701(A209575(n+1))`
-/

namespace A116445.P12830913299533843021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373701 (A209575 (n + 1)).toNat

end

end A116445.P12830913299533843021

/-! ## A116445.P12618799986782537759

`A120397(2*A110291(n)-1)`
-/

namespace A116445.P12618799986782537759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120397 (2 * A110291 n - 1).toNat

end

end A116445.P12618799986782537759

/-! ## A116445.P10333647527002434800

`∑{d}[A247306(n+1), A333381(#)]`
-/

namespace A116445.P10333647527002434800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A333381 d

end

end A116445.P10333647527002434800

/-!
# A116447: a(2n) = n, a(2n+1) = n!.

The programs for A116447, the canonical program `A116447.P8161211096471228` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116447 has offset 0).

The definition of A116447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116447.P8262114440284883585

`lcm(A057979(n)!, A078898(n))`
-/

namespace A116447.P8262114440284883585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A057979 n).toNat : ℤ) (A078898 n)

end

end A116447.P8262114440284883585

namespace A116447

/-- `lcm(A057979(n)!, A078898(n))` -/
def P8262114440284883585.Spec : Prop :=
  ∀ n, (P8262114440284883585.a n : ℤ) = A116447 n

end A116447

/-! ## A116447.P8161211096471228

`A057979(n)!*A057979(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A116447

/-- `A057979(n)!*A057979(n+1)` -/
def P8161211096471228.Spec : Prop :=
  ∀ n, P8161211096471228.a n = A116447 n

theorem P8161211096471228.correct : P8161211096471228.Spec := by
  intro n
  simp only [A116447]

end A116447

/-! ## A116447.P12239228089764570331

`A005096(A057979(n))+A004526(n)`
-/

namespace A116447.P12239228089764570331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005096 (A057979 n).toNat + A004526 n

end

end A116447.P12239228089764570331

namespace A116447

/-- `A005096(A057979(n))+A004526(n)` -/
def P12239228089764570331.Spec : Prop :=
  ∀ n, P12239228089764570331.a n = A116447 n

end A116447

/-! ## A116447.P17139545141914099849

`A000142(A057979(n))*A057979(A004442(n))`
-/

namespace A116447.P17139545141914099849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A057979 n).toNat * A057979 (A004442 n).toNat

end

end A116447.P17139545141914099849

namespace A116447

/-- `A000142(A057979(n))*A057979(A004442(n))` -/
def P17139545141914099849.Spec : Prop :=
  ∀ n, P17139545141914099849.a n = A116447 n

end A116447

/-! ## A116447.P1273493044900806759

`A000142(A057979(n))*A057979(A141310(n))`
-/

namespace A116447.P1273493044900806759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A057979 n).toNat * A057979 (A141310 n).toNat

end

end A116447.P1273493044900806759

namespace A116447

/-- `A000142(A057979(n))*A057979(A141310(n))` -/
def P1273493044900806759.Spec : Prop :=
  ∀ n, P1273493044900806759.a n = A116447 n

end A116447

/-!
# A116449: Number of partitions of n into an equal number of prime and composite parts.

The programs for A116449, there is no canonical definition to state claims against.
-/

/-! ## A116449.P6071296843521203703

`A002865(n)-A116450(A028310(n))`
-/

namespace A116449.P6071296843521203703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A116450 (A028310 n).toNat

end

end A116449.P6071296843521203703

/-! ## A116449.P2244657275844664994

`A085811(n+3)-A116450(A028310(n))`
-/

namespace A116449.P2244657275844664994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3) - A116450 (A028310 n).toNat

end

end A116449.P2244657275844664994

/-! ## A116449.P18314155946390357030

`A032741(n)+A167928(n)-A116450(A028310(n))`
-/

namespace A116449.P18314155946390357030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + (A167928 n - A116450 (A028310 n).toNat)

end

end A116449.P18314155946390357030

/-! ## A116449.P297118585675512751

`A087787(n)-(A182712(n)+A116450(A028310(n)))`
-/

namespace A116449.P297118585675512751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 n - (A182712 n + A116450 (A028310 n).toNat)

end

end A116449.P297118585675512751

/-! ## A116449.P16679987200119016444

`A057428(n)+A232697(n)-A116450(A028310(n))`
-/

namespace A116449.P16679987200119016444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (A232697 n - A116450 (A028310 n).toNat)

end

end A116449.P16679987200119016444

/-! ## A116449.P8960367221206679824

`A232697(n)-(A116450(A028310(n))+A057427(n))`
-/

namespace A116449.P8960367221206679824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n - (A116450 (A028310 n).toNat + A057427 n)

end

end A116449.P8960367221206679824

/-! ## A116449.P7244940039520438123

`A027337(n+2)-A027336(n+2)-A116450(A028310(n))`
-/

namespace A116449.P7244940039520438123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 (n + 2) - A027336 (n + 2) - A116450 (A028310 n).toNat

end

end A116449.P7244940039520438123

/-! ## A116449.P4818192381133226932

`A187219(n+2)-A008483(n+2)-A116450(A028310(n))`
-/

namespace A116449.P4818192381133226932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 2) - A008483 (n + 2) - A116450 (A028310 n).toNat

end

end A116449.P4818192381133226932

/-!
# A116450: Number of partitions of n such that the numbers of prime and composite parts differ by at least 1.

The programs for A116450, there is no canonical definition to state claims against.
-/

/-! ## A116450.P13270607296555574563

`Δ[A000041(n)-∑[A116449(n)]]`
-/

namespace A116450.P13270607296555574563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116449 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116450.P13270607296555574563

/-! ## A116450.P7578421087996689626

`Δ[A000065(n)-∑[A116449(n)]]`
-/

namespace A116450.P7578421087996689626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116449 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116450.P7578421087996689626

/-! ## A116450.P5560720702410905744

`Δ[A000041(n)]-A116449(n+1)`
-/

namespace A116450.P5560720702410905744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A116449 (n + 1)

end

end A116450.P5560720702410905744

/-! ## A116450.P3457097382883624437

`Δ[A000065(n)]-A116449(n+1)`
-/

namespace A116450.P3457097382883624437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A116449 (n + 1)

end

end A116450.P3457097382883624437

/-! ## A116450.P10789354529432431357

`A002865(n+1)-A116449(n+1)`
-/

namespace A116450.P10789354529432431357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) - A116449 (n + 1)

end

end A116450.P10789354529432431357

/-! ## A116450.P2492557022198938250

`A000041(n+1)-(A116449(n+1)+A000041(n))`
-/

namespace A116450.P2492557022198938250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A116449 (n + 1) + A000041 n)

end

end A116450.P2492557022198938250

/-! ## A116450.P1730252535601576592

`A000065(n+1)-(A116449(n+1)+A000065(n))`
-/

namespace A116450.P1730252535601576592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) - (A116449 (n + 1) + A000065 n)

end

end A116450.P1730252535601576592

/-!
# A116451: Numbers having fewer prime factors than at least one smaller number.

The programs for A116451, the canonical program `A116451.P18246962358317435701` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116451 has offset 0).

The definition of A116451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116451.P18246962358317435701

`lt[3*and(n, -n), n]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116451

/-- `lt[3*and(n, -n), n]` -/
def P18246962358317435701.Spec : Prop :=
  ∀ n, (P18246962358317435701.a n : ℤ) = A116451 n

theorem P18246962358317435701.correct : P18246962358317435701.Spec := by
  intro n
  simp only [A116451]

end A116451

/-! ## A116451.P2665582596534084705

`lt[and(n, -n), n/3]`
-/

namespace A116451.P2665582596534084705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A116451.P2665582596534084705

namespace A116451

/-- `lt[and(n, -n), n/3]` -/
def P2665582596534084705.Spec : Prop :=
  ∀ n, (P2665582596534084705.a n : ℤ) = A116451 n

end A116451

/-! ## A116451.P8898820881010481677

`comp[2*a(n-2)]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A116451.P8898820881010481677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  2 * f1 (n - 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A116451.P8898820881010481677

namespace A116451

/-- `comp[2*a(n-2)]` -/
def P8898820881010481677.Spec : Prop :=
  ∀ n, (P8898820881010481677.a n : ℤ) = A116451 n

end A116451

/-! ## A116451.P17972702071877101728

`lt[2, (n-1)/xor(n, n-1)]`
-/

namespace A116451.P17972702071877101728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) / (Int.xor (n : ℤ) ((n : ℤ) - 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A116451.P17972702071877101728

namespace A116451

/-- `lt[2, (n-1)/xor(n, n-1)]` -/
def P17972702071877101728.Spec : Prop :=
  ∀ n, (P17972702071877101728.a n : ℤ) = A116451 n

end A116451

/-! ## A116451.P4226018019642005996

`lt[2*xor(n, n-1), n-2]`
-/

namespace A116451.P4226018019642005996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor (n : ℤ) ((n : ℤ) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A116451.P4226018019642005996

namespace A116451

/-- `lt[2*xor(n, n-1), n-2]` -/
def P4226018019642005996.Spec : Prop :=
  ∀ n, (P4226018019642005996.a n : ℤ) = A116451 n

end A116451

/-! ## A116451.P516609005833918563

`lt[2*n, 3*and(n, n-1)]`
-/

namespace A116451.P516609005833918563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.land (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A116451.P516609005833918563

namespace A116451

/-- `lt[2*n, 3*and(n, n-1)]` -/
def P516609005833918563.Spec : Prop :=
  ∀ n, (P516609005833918563.a n : ℤ) = A116451 n

end A116451

/-! ## A116451.P5503155887874524238

`lt[-xor(2*n, -(2*n)), n]`
-/

namespace A116451.P5503155887874524238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (2 * n : ℤ) (-(2 * n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A116451.P5503155887874524238

namespace A116451

/-- `lt[-xor(2*n, -(2*n)), n]` -/
def P5503155887874524238.Spec : Prop :=
  ∀ n, (P5503155887874524238.a n : ℤ) = A116451 n

end A116451

/-! ## A116451.P9659986850769245823

`lt[2, A294442(n)]`
-/

namespace A116451.P9659986850769245823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A116451.P9659986850769245823

namespace A116451

/-- `lt[2, A294442(n)]` -/
def P9659986850769245823.Spec : Prop :=
  ∀ n, (P9659986850769245823.a n : ℤ) = A116451 n

end A116451

/-! ## A116451.P7121584441043611552

`lt[2, A306286(n)]`
-/

namespace A116451.P7121584441043611552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A116451.P7121584441043611552

namespace A116451

/-- `lt[2, A306286(n)]` -/
def P7121584441043611552.Spec : Prop :=
  ∀ n, (P7121584441043611552.a n : ℤ) = A116451 n

end A116451

/-! ## A116451.P12714332643998874909

`lt[2, A323901(n)]`
-/

namespace A116451.P12714332643998874909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323901 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A116451.P12714332643998874909

namespace A116451

/-- `lt[2, A323901(n)]` -/
def P12714332643998874909.Spec : Prop :=
  ∀ n, (P12714332643998874909.a n : ℤ) = A116451 n

end A116451

/-! ## A116451.P3626236659603896349

`lt[2, A331742(n)]`
-/

namespace A116451.P3626236659603896349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331742 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A116451.P3626236659603896349

namespace A116451

/-- `lt[2, A331742(n)]` -/
def P3626236659603896349.Spec : Prop :=
  ∀ n, (P3626236659603896349.a n : ℤ) = A116451 n

end A116451

/-! ## A116451.P7625803950450640730

`lt[2, A364492(n)]`
-/

namespace A116451.P7625803950450640730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364492 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A116451.P7625803950450640730

namespace A116451

/-- `lt[2, A364492(n)]` -/
def P7625803950450640730.Spec : Prop :=
  ∀ n, (P7625803950450640730.a n : ℤ) = A116451 n

end A116451

/-! ## A116451.P11658476418768156922

`lt[4, A278222(n)]`
-/

namespace A116451.P11658476418768156922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A116451.P11658476418768156922

namespace A116451

/-- `lt[4, A278222(n)]` -/
def P11658476418768156922.Spec : Prop :=
  ∀ n, (P11658476418768156922.a n : ℤ) = A116451 n

end A116451

/-! ## A116451.P2771107518772126609

`lt[42, A286242(n)]`
-/

namespace A116451.P2771107518772126609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286242 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A116451.P2771107518772126609

namespace A116451

/-- `lt[42, A286242(n)]` -/
def P2771107518772126609.Spec : Prop :=
  ∀ n, (P2771107518772126609.a n : ℤ) = A116451 n

end A116451

/-! ## A116451.P7048370739256540258

`∪[A161992(n+1), A050321(n)]`
-/

namespace A116451.P7048370739256540258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050321 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A116451.P7048370739256540258

namespace A116451

/-- `∪[A161992(n+1), A050321(n)]` -/
def P7048370739256540258.Spec : Prop :=
  ∀ n, (P7048370739256540258.a n : ℤ) = A116451 n

end A116451

/-! ## A116451.P17453868035940347860

`comp[A029746(n)-A029744(n+1)]`
-/

namespace A116451.P17453868035940347860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 n - A029744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A116451.P17453868035940347860

namespace A116451

/-- `comp[A029746(n)-A029744(n+1)]` -/
def P17453868035940347860.Spec : Prop :=
  ∀ n, (P17453868035940347860.a n : ℤ) = A116451 n

end A116451

/-! ## A116451.P14892740936125550225

`∪[A004169(n+1), A009003(n+1)]`
-/

namespace A116451.P14892740936125550225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A116451.P14892740936125550225

namespace A116451

/-- `∪[A004169(n+1), A009003(n+1)]` -/
def P14892740936125550225.Spec : Prop :=
  ∀ n, (P14892740936125550225.a n : ℤ) = A116451 n

end A116451

/-! ## A116451.P2894340663341393166

`∪[A004169(n+1), A059485(n+1)]`
-/

namespace A116451.P2894340663341393166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A116451.P2894340663341393166

namespace A116451

/-- `∪[A004169(n+1), A059485(n+1)]` -/
def P2894340663341393166.Spec : Prop :=
  ∀ n, (P2894340663341393166.a n : ℤ) = A116451 n

end A116451

/-! ## A116451.P16757323769916357824

`∪[A004169(n+1), A071821(n+1)]`
-/

namespace A116451.P16757323769916357824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A116451.P16757323769916357824

namespace A116451

/-- `∪[A004169(n+1), A071821(n+1)]` -/
def P16757323769916357824.Spec : Prop :=
  ∀ n, (P16757323769916357824.a n : ℤ) = A116451 n

end A116451

/-!
# A116452: Number of prime factors of A116451(n).

The programs for A116452, the canonical program `A116452.P15802131453557576440` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116452 has offset 0).

The definition of A116452 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A116451, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A116452.P15802131453557576440

`A001222(A116451(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A116452

/-- `A001222(A116451(n))` -/
def P15802131453557576440.Spec : Prop :=
  ∀ n, P15802131453557576440.a n = A116452 n

theorem P15802131453557576440.correct : P15802131453557576440.Spec := by
  intro n
  simp only [A116452]

end A116452

/-! ## A116452.P17571496766483942579

`∑{e}[lt[3*and(n, -n), n], #]`
-/

namespace A116452.P17571496766483942579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.land (n : ℤ) (-(n : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A116452.P17571496766483942579

namespace A116452

/-- `∑{e}[lt[3*and(n, -n), n], #]` -/
def P17571496766483942579.Spec : Prop :=
  ∀ n, (P17571496766483942579.a n : ℤ) = A116452 n

end A116452

/-! ## A116452.P11754665596147315179

`∑{e}[lt[and(n, -n), n/3], #]`
-/

namespace A116452.P11754665596147315179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℚ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A116452.P11754665596147315179

namespace A116452

/-- `∑{e}[lt[and(n, -n), n/3], #]` -/
def P11754665596147315179.Spec : Prop :=
  ∀ n, (P11754665596147315179.a n : ℤ) = A116452 n

end A116452

/-! ## A116452.P7326814551065312816

`∑{e}[comp[2*a(n-2)], #]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A116452.P7326814551065312816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f2 =>
  2 * f2 (n - 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A116452.P7326814551065312816

namespace A116452

/-- `∑{e}[comp[2*a(n-2)], #]` -/
def P7326814551065312816.Spec : Prop :=
  ∀ n, (P7326814551065312816.a n : ℤ) = A116452 n

end A116452

/-! ## A116452.P12617121516492657194

`A001222(lt[3*and(n, -n), n])`
-/

namespace A116452.P12617121516492657194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A116452.P12617121516492657194

namespace A116452

/-- `A001222(lt[3*and(n, -n), n])` -/
def P12617121516492657194.Spec : Prop :=
  ∀ n, P12617121516492657194.a n = A116452 n

end A116452

/-! ## A116452.P14943455859686713844

`A001222(lt[and(n, -n), n/3])`
-/

namespace A116452.P14943455859686713844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A116452.P14943455859686713844

namespace A116452

/-- `A001222(lt[and(n, -n), n/3])` -/
def P14943455859686713844.Spec : Prop :=
  ∀ n, P14943455859686713844.a n = A116452 n

end A116452

/-! ## A116452.P12330241585640036337

`A001222(comp[2*a(n-2)])` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A116452.P12330241585640036337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  2 * f1 (n - 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A116452.P12330241585640036337

namespace A116452

/-- `A001222(comp[2*a(n-2)])` -/
def P12330241585640036337.Spec : Prop :=
  ∀ n, P12330241585640036337.a n = A116452 n

end A116452

/-! ## A116452.P11149680053804416958

`A001222(lt[2, A294442(n)])`
-/

namespace A116452.P11149680053804416958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A116452.P11149680053804416958

namespace A116452

/-- `A001222(lt[2, A294442(n)])` -/
def P11149680053804416958.Spec : Prop :=
  ∀ n, P11149680053804416958.a n = A116452 n

end A116452

/-! ## A116452.P2197116449330471090

`A001222(lt[2, A331742(n)])`
-/

namespace A116452.P2197116449330471090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A116452.P2197116449330471090

namespace A116452

/-- `A001222(lt[2, A331742(n)])` -/
def P2197116449330471090.Spec : Prop :=
  ∀ n, P2197116449330471090.a n = A116452 n

end A116452

/-! ## A116452.P11287095621541312843

`A001222(lt[1, A082498(n)])`
-/

namespace A116452.P11287095621541312843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A116452.P11287095621541312843

namespace A116452

/-- `A001222(lt[1, A082498(n)])` -/
def P11287095621541312843.Spec : Prop :=
  ∀ n, P11287095621541312843.a n = A116452 n

end A116452

/-! ## A116452.P11789403268807071294

`A001222(lt[2, A002487(n)])`
-/

namespace A116452.P11789403268807071294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A116452.P11789403268807071294

namespace A116452

/-- `A001222(lt[2, A002487(n)])` -/
def P11789403268807071294.Spec : Prop :=
  ∀ n, P11789403268807071294.a n = A116452 n

end A116452

/-! ## A116452.P10549399724457119483

`A001222(lt[2, A073711(n)])`
-/

namespace A116452.P10549399724457119483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073711 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A116452.P10549399724457119483

namespace A116452

/-- `A001222(lt[2, A073711(n)])` -/
def P10549399724457119483.Spec : Prop :=
  ∀ n, P10549399724457119483.a n = A116452 n

end A116452

/-! ## A116452.P3218539451783551777

`A001222(lt[2, A159918(n)])`
-/

namespace A116452.P3218539451783551777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A116452.P3218539451783551777

namespace A116452

/-- `A001222(lt[2, A159918(n)])` -/
def P3218539451783551777.Spec : Prop :=
  ∀ n, P3218539451783551777.a n = A116452 n

end A116452

/-! ## A116452.P5651251078022841659

`A001222(lt[2, A281392(n)])`
-/

namespace A116452.P5651251078022841659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A116452.P5651251078022841659

namespace A116452

/-- `A001222(lt[2, A281392(n)])` -/
def P5651251078022841659.Spec : Prop :=
  ∀ n, P5651251078022841659.a n = A116452 n

end A116452

/-! ## A116452.P16937974737609557549

`A001222(lt[3, A030101(n)])`
-/

namespace A116452.P16937974737609557549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A116452.P16937974737609557549

namespace A116452

/-- `A001222(lt[3, A030101(n)])` -/
def P16937974737609557549.Spec : Prop :=
  ∀ n, P16937974737609557549.a n = A116452 n

end A116452

/-! ## A116452.P2248239070038923518

`A001222(lt[3, A106737(n)])`
-/

namespace A116452.P2248239070038923518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A116452.P2248239070038923518

namespace A116452

/-- `A001222(lt[3, A106737(n)])` -/
def P2248239070038923518.Spec : Prop :=
  ∀ n, P2248239070038923518.a n = A116452 n

end A116452

/-! ## A116452.P13949029508172467875

`A001222(lt[1, A233905(n)])`
-/

namespace A116452.P13949029508172467875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A116452.P13949029508172467875

namespace A116452

/-- `A001222(lt[1, A233905(n)])` -/
def P13949029508172467875.Spec : Prop :=
  ∀ n, P13949029508172467875.a n = A116452 n

end A116452

/-! ## A116452.P6906080343848600719

`A001222(lt[2, A283976(n)])`
-/

namespace A116452.P6906080343848600719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A116452.P6906080343848600719

namespace A116452

/-- `A001222(lt[2, A283976(n)])` -/
def P6906080343848600719.Spec : Prop :=
  ∀ n, P6906080343848600719.a n = A116452 n

end A116452

/-! ## A116452.P4463648647322597506

`A001222(lt[1, A329320(n)])`
-/

namespace A116452.P4463648647322597506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A116452.P4463648647322597506

namespace A116452

/-- `A001222(lt[1, A329320(n)])` -/
def P4463648647322597506.Spec : Prop :=
  ∀ n, P4463648647322597506.a n = A116452 n

end A116452

/-!
# A116453: Third smallest number with exactly n prime factors.

The programs for A116453, the canonical program `A116453.P3053292650856063320` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116453 has offset 1).

The definition of A116453 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116453.P3053292650856063320

`2*a(n-1)` with `a(0)=5, a(1)=9`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116453

/-- `2*a(n-1)` -/
def P3053292650856063320.Spec : Prop :=
  ∀ n, (P3053292650856063320.a n : ℤ) = A116453 (n + 1)

theorem P3053292650856063320.correct : P3053292650856063320.Spec := by
  intro n
  simp only [A116453, Nat.add_sub_cancel]

end A116453

/-! ## A116453.P1276906874322353471

`A116454(n+1)+2*(n+1)+3`
-/

namespace A116453.P1276906874322353471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116454 (n + 1) + (2 * (n + 1) : ℤ) + 3

end

end A116453.P1276906874322353471

namespace A116453

/-- `A116454(n+1)+2*(n+1)+3` -/
def P1276906874322353471.Spec : Prop :=
  ∀ n, P1276906874322353471.a n = A116453 (n + 1)

end A116453

/-! ## A116453.P4907002259814057499

`A116451(A116454(n+1))`
-/

namespace A116453.P4907002259814057499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116451 (A116454 (n + 1)).toNat

end

end A116453.P4907002259814057499

namespace A116453

/-- `A116451(A116454(n+1))` -/
def P4907002259814057499.Spec : Prop :=
  ∀ n, P4907002259814057499.a n = A116453 (n + 1)

end A116453

/-! ## A116453.P8729842872108839218

`ogf((5-x)/(1-2x))`
-/

namespace A116453.P8729842872108839218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -1] [1, -2] n

end

end A116453.P8729842872108839218

namespace A116453

/-- `ogf((5-x)/(1-2x))` -/
def P8729842872108839218.Spec : Prop :=
  ∀ n, P8729842872108839218.a n = A116453 (n + 1)

end A116453

/-! ## A116453.P14415280727265232910

`ceil(9*2^(n-1))`
-/

namespace A116453.P14415280727265232910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈9 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A116453.P14415280727265232910

namespace A116453

/-- `ceil(9*2^(n-1))` -/
def P14415280727265232910.Spec : Prop :=
  ∀ n, P14415280727265232910.a n = A116453 (n + 1)

end A116453

/-! ## A116453.P12609860278988229089

`a(n-1)+a(n-1)` with `a(0)=5, a(1)=9`
-/

namespace A116453.P12609860278988229089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 9] fun n a =>
  a (n - 1) + a (n - 1)

end

end A116453.P12609860278988229089

namespace A116453

/-- `a(n-1)+a(n-1)` -/
def P12609860278988229089.Spec : Prop :=
  ∀ n, (P12609860278988229089.a n : ℤ) = A116453 (n + 1)

theorem P12609860278988229089.correct : P12609860278988229089.Spec := by
  intro n
  simp only [A116453, Nat.add_sub_cancel, A116453.P12609860278988229089.a, A116453.P3053292650856063320.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A116453

/-! ## A116453.P17458818605522708829

`lcm(2^(n-1), a(n-1))` with `a(0)=5, a(1)=9`
-/

namespace A116453.P17458818605522708829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 9] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A116453.P17458818605522708829

namespace A116453

/-- `lcm(2^(n-1), a(n-1))` -/
def P17458818605522708829.Spec : Prop :=
  ∀ n, (P17458818605522708829.a n : ℤ) = A116453 (n + 1)

end A116453

/-! ## A116453.P14459958738487112775

`or(2^(n+2), ceil(2^(n-1)))`
-/

namespace A116453.P14459958738487112775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ (n + 2) : ℤ) ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A116453.P14459958738487112775

namespace A116453

/-- `or(2^(n+2), ceil(2^(n-1)))` -/
def P14459958738487112775.Spec : Prop :=
  ∀ n, P14459958738487112775.a n = A116453 (n + 1)

end A116453

/-! ## A116453.P16022939674468988335

`xor(2^(n+2), ceil(2^(n-1)))`
-/

namespace A116453.P16022939674468988335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 ^ (n + 2) : ℤ) ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A116453.P16022939674468988335

namespace A116453

/-- `xor(2^(n+2), ceil(2^(n-1)))` -/
def P16022939674468988335.Spec : Prop :=
  ∀ n, P16022939674468988335.a n = A116453 (n + 1)

end A116453

/-! ## A116453.P16137694122841703838

`a(n-1)-(char[1]-a(n-1))` with `a(0)=5`
-/

namespace A116453.P16137694122841703838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1))

end

end A116453.P16137694122841703838

namespace A116453

/-- `a(n-1)-(char[1]-a(n-1))` -/
def P16137694122841703838.Spec : Prop :=
  ∀ n, P16137694122841703838.a n = A116453 (n + 1)

end A116453

/-! ## A116453.P1588725660691519096

`a(n-1)-floor(1/n-a(n-1))` with `a(0)=5`
-/

namespace A116453.P1588725660691519096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) - ⌊1 / (n : ℚ) - (a (n - 1) : ℚ)⌋

end

end A116453.P1588725660691519096

namespace A116453

/-- `a(n-1)-floor(1/n-a(n-1))` -/
def P1588725660691519096.Spec : Prop :=
  ∀ n, P1588725660691519096.a n = A116453 (n + 1)

end A116453

/-! ## A116453.P14524238603580048464

`A053209(n)+4`
-/

namespace A116453.P14524238603580048464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053209 n + 4

end

end A116453.P14524238603580048464

namespace A116453

/-- `A053209(n)+4` -/
def P14524238603580048464.Spec : Prop :=
  ∀ n, P14524238603580048464.a n = A116453 (n + 1)

end A116453

/-! ## A116453.P7146963388608717887

`A247283(Δ[n²])`
-/

namespace A116453.P7146963388608717887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247283 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A116453.P7146963388608717887

namespace A116453

/-- `A247283(Δ[n²])` -/
def P7146963388608717887.Spec : Prop :=
  ∀ n, P7146963388608717887.a n = A116453 (n + 1)

end A116453

/-! ## A116453.P9325106666493342461

`abs(A279634(n+2))`
-/

namespace A116453.P9325106666493342461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A279634 (n + 2)|

end

end A116453.P9325106666493342461

namespace A116453

/-- `abs(A279634(n+2))` -/
def P9325106666493342461.Spec : Prop :=
  ∀ n, P9325106666493342461.a n = A116453 (n + 1)

end A116453

/-! ## A116453.P10305422269385734933

`∑[A397439(n)]+4`
-/

namespace A116453.P10305422269385734933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A116453.P10305422269385734933

namespace A116453

/-- `∑[A397439(n)]+4` -/
def P10305422269385734933.Spec : Prop :=
  ∀ n, P10305422269385734933.a n = A116453 (n + 1)

end A116453

/-! ## A116453.P4888829557800559741

`A054127(n+1)+3+n`
-/

namespace A116453.P4888829557800559741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054127 (n + 1) + 3 + (n : ℤ)

end

end A116453.P4888829557800559741

namespace A116453

/-- `A054127(n+1)+3+n` -/
def P4888829557800559741.Spec : Prop :=
  ∀ n, P4888829557800559741.a n = A116453 (n + 1)

end A116453

/-! ## A116453.P9198292339196423672

`A160824(A130773(n+1))`
-/

namespace A116453.P9198292339196423672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160824 (A130773 (n + 1)).toNat

end

end A116453.P9198292339196423672

namespace A116453

/-- `A160824(A130773(n+1))` -/
def P9198292339196423672.Spec : Prop :=
  ∀ n, P9198292339196423672.a n = A116453 (n + 1)

end A116453

/-! ## A116453.P94408008614893951

`A160824(A140139(n+2))`
-/

namespace A116453.P94408008614893951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160824 (A140139 (n + 2)).toNat

end

end A116453.P94408008614893951

namespace A116453

/-- `A160824(A140139(n+2))` -/
def P94408008614893951.Spec : Prop :=
  ∀ n, P94408008614893951.a n = A116453 (n + 1)

end A116453

/-! ## A116453.P7668771266156658709

`A020707(n)+A011782(n)`
-/

namespace A116453.P7668771266156658709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n + A011782 n

end

end A116453.P7668771266156658709

namespace A116453

/-- `A020707(n)+A011782(n)` -/
def P7668771266156658709.Spec : Prop :=
  ∀ n, P7668771266156658709.a n = A116453 (n + 1)

end A116453

/-! ## A116453.P4381081015576171483

`A042950(n)+A007283(n)`
-/

namespace A116453.P4381081015576171483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n + A007283 n

end

end A116453.P4381081015576171483

namespace A116453

/-- `A042950(n)+A007283(n)` -/
def P4381081015576171483.Spec : Prop :=
  ∀ n, P4381081015576171483.a n = A116453 (n + 1)

end A116453

/-!
# A116454: Smallest m such that A116452(m) = n.

The programs for A116454, the canonical program `A116454.P14948790028201453817` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116454 has offset 1).

The definition of A116454 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116454.P14948790028201453817

`2*(a(n-1)+n)+1` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116454

/-- `2*(a(n-1)+n)+1` -/
def P14948790028201453817.Spec : Prop :=
  ∀ n, (P14948790028201453817.a n : ℤ) = A116454 (n + 1)

theorem P14948790028201453817.correct : P14948790028201453817.Spec := by
  intro n
  simp only [A116454, Nat.add_sub_cancel]

end A116454

/-! ## A116454.P15765817376211474805

`∑[ogf((2x+x^2-x^3)/(1-3x+2x^2))]`
-/

namespace A116454.P15765817376211474805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, -1] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116454.P15765817376211474805

namespace A116454

/-- `∑[ogf((2x+x^2-x^3)/(1-3x+2x^2))]` -/
def P15765817376211474805.Spec : Prop :=
  ∀ n, P15765817376211474805.a n = A116454 (n + 1)

end A116454

/-! ## A116454.P6554771947032761832

`ogf((2x+x^2-x^3)/(1-4x+5x^2-2x^3))`
-/

namespace A116454.P6554771947032761832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, -1] [1, -4, 5, -2] n

end

end A116454.P6554771947032761832

namespace A116454

/-- `ogf((2x+x^2-x^3)/(1-4x+5x^2-2x^3))` -/
def P6554771947032761832.Spec : Prop :=
  ∀ n, P6554771947032761832.a n = A116454 (n + 1)

end A116454

/-! ## A116454.P16906559880435217945

`2*a(n-1)-Δ[-n²]` with `a(0)=0, a(1)=2`
-/

namespace A116454.P16906559880435217945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 * a (n - 1) - (f1 (n + 1) - f1 n)

end

end A116454.P16906559880435217945

namespace A116454

/-- `2*a(n-1)-Δ[-n²]` -/
def P16906559880435217945.Spec : Prop :=
  ∀ n, P16906559880435217945.a n = A116454 (n + 1)

end A116454

/-! ## A116454.P12401370228384129294

`3-2*(1-a(n-1)-n)` with `a(0)=0, a(1)=2`
-/

namespace A116454.P12401370228384129294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  3 - 2 * (1 - a (n - 1) - (n : ℤ))

end

end A116454.P12401370228384129294

namespace A116454

/-- `3-2*(1-a(n-1)-n)` -/
def P12401370228384129294.Spec : Prop :=
  ∀ n, P12401370228384129294.a n = A116454 (n + 1)

end A116454

/-! ## A116454.P16851380584338294386

`∑[a(n-1)+a(n-1)+2]` with `a(0)=0, a(1)=2, a(2)=7`
-/

namespace A116454.P16851380584338294386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 7] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116454.P16851380584338294386

namespace A116454

/-- `∑[a(n-1)+a(n-1)+2]` -/
def P16851380584338294386.Spec : Prop :=
  ∀ n, (P16851380584338294386.a n : ℤ) = A116454 (n + 1)

end A116454

/-! ## A116454.P11599885220709610615

`a(n-1)+Δ[n²]+a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A116454.P11599885220709610615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 1))

end

end A116454.P11599885220709610615

namespace A116454

/-- `a(n-1)+Δ[n²]+a(n-1)` -/
def P11599885220709610615.Spec : Prop :=
  ∀ n, P11599885220709610615.a n = A116454 (n + 1)

end A116454

/-! ## A116454.P477697104604237634

`n+1+a(n-1)+a(n-1)+n` with `a(0)=0, a(1)=2`
-/

namespace A116454.P477697104604237634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  n + 1 + (a (n - 1) + (a (n - 1) + n))

end

end A116454.P477697104604237634

namespace A116454

/-- `n+1+a(n-1)+a(n-1)+n` -/
def P477697104604237634.Spec : Prop :=
  ∀ n, (P477697104604237634.a n : ℤ) = A116454 (n + 1)

end A116454

/-! ## A116454.P7358540242452802927

`∑[A052996(n)-1]`
-/

namespace A116454.P7358540242452802927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052996 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116454.P7358540242452802927

namespace A116454

/-- `∑[A052996(n)-1]` -/
def P7358540242452802927.Spec : Prop :=
  ∀ n, P7358540242452802927.a n = A116454 (n + 1)

end A116454

/-! ## A116454.P11387875413670766230

`A053209(n)-Δ[n²]`
-/

namespace A116454.P11387875413670766230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053209 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A116454.P11387875413670766230

namespace A116454

/-- `A053209(n)-Δ[n²]` -/
def P11387875413670766230.Spec : Prop :=
  ∀ n, P11387875413670766230.a n = A116454 (n + 1)

end A116454

/-! ## A116454.P13817329608186287098

`A054127(n+1)-(n+2)`
-/

namespace A116454.P13817329608186287098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054127 (n + 1) - (n + 2 : ℤ)

end

end A116454.P13817329608186287098

namespace A116454

/-- `A054127(n+1)-(n+2)` -/
def P13817329608186287098.Spec : Prop :=
  ∀ n, P13817329608186287098.a n = A116454 (n + 1)

end A116454

/-! ## A116454.P9133419969029358939

`A335927(n+1)+∑[n]-1`
-/

namespace A116454.P9133419969029358939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335927 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A116454.P9133419969029358939

namespace A116454

/-- `A335927(n+1)+∑[n]-1` -/
def P9133419969029358939.Spec : Prop :=
  ∀ n, P9133419969029358939.a n = A116454 (n + 1)

end A116454

/-! ## A116454.P18247140737364923025

`A130773(n)+2*a(n-1)` with `a(0)=0`
-/

namespace A116454.P18247140737364923025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A130773 n + 2 * a (n - 1)

end

end A116454.P18247140737364923025

namespace A116454

/-- `A130773(n)+2*a(n-1)` -/
def P18247140737364923025.Spec : Prop :=
  ∀ n, P18247140737364923025.a n = A116454 (n + 1)

end A116454

/-! ## A116454.P17388681716590433585

`A070313(n)+A053208(n)`
-/

namespace A116454.P17388681716590433585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070313 n + A053208 n

end

end A116454.P17388681716590433585

namespace A116454

/-- `A070313(n)+A053208(n)` -/
def P17388681716590433585.Spec : Prop :=
  ∀ n, P17388681716590433585.a n = A116454 (n + 1)

end A116454

/-! ## A116454.P2609816183917032635

`A296953(n)+A050488(n)`
-/

namespace A116454.P2609816183917032635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296953 n + A050488 n

end

end A116454.P2609816183917032635

namespace A116454

/-- `A296953(n)+A050488(n)` -/
def P2609816183917032635.Spec : Prop :=
  ∀ n, P2609816183917032635.a n = A116454 (n + 1)

end A116454

/-! ## A116454.P12029973789832779988

`A288133(n+1)+A109363(n)`
-/

namespace A116454.P12029973789832779988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288133 (n + 1) + A109363 n

end

end A116454.P12029973789832779988

namespace A116454

/-- `A288133(n+1)+A109363(n)` -/
def P12029973789832779988.Spec : Prop :=
  ∀ n, P12029973789832779988.a n = A116454 (n + 1)

end A116454

/-! ## A116454.P11362456592831070950

`A000295(n)+A053208(n)-n`
-/

namespace A116454.P11362456592831070950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n + (A053208 n - (n : ℤ))

end

end A116454.P11362456592831070950

namespace A116454

/-- `A000295(n)+A053208(n)-n` -/
def P11362456592831070950.Spec : Prop :=
  ∀ n, P11362456592831070950.a n = A116454 (n + 1)

end A116454

/-! ## A116454.P8812396623987822400

`A116453(n+1)-A020735(n+1)`
-/

namespace A116454.P8812396623987822400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116453 (n + 1) - A020735 (n + 1)

end

end A116454.P8812396623987822400

namespace A116454

/-- `A116453(n+1)-A020735(n+1)` -/
def P8812396623987822400.Spec : Prop :=
  ∀ n, P8812396623987822400.a n = A116454 (n + 1)

end A116454

/-! ## A116454.P7631433014722820206

`A145654(n+1)+1-A122958(n)`
-/

namespace A116454.P7631433014722820206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145654 (n + 1) + (1 - A122958 n)

end

end A116454.P7631433014722820206

namespace A116454

/-- `A145654(n+1)+1-A122958(n)` -/
def P7631433014722820206.Spec : Prop :=
  ∀ n, P7631433014722820206.a n = A116454 (n + 1)

end A116454

/-! ## A116454.P11315738904112951728

`A095151(n)+A095151(n)-A055010(n)`
-/

namespace A116454.P11315738904112951728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095151 n + (A095151 n - A055010 n)

end

end A116454.P11315738904112951728

namespace A116454

/-- `A095151(n)+A095151(n)-A055010(n)` -/
def P11315738904112951728.Spec : Prop :=
  ∀ n, P11315738904112951728.a n = A116454 (n + 1)

end A116454

/-!
# A116455: Perfect powers k with no primes between k and the next smaller perfect power, which is in A116086.

The programs for A116455, there is no canonical definition to state claims against.
-/

/-! ## A116455.P2260340462062457252

`A001597(A274605(n+1)+1)`
-/

namespace A116455.P2260340462062457252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A274605 (n + 1) + 1).toNat

end

end A116455.P2260340462062457252

/-! ## A116455.P9718434478468559489

`A378035(A377466(n+1)+1)`
-/

namespace A116455.P9718434478468559489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378035 (A377466 (n + 1) + 1).toNat

end

end A116455.P9718434478468559489

/-! ## A116455.P16037215682864282853

`abs(A157985(A274605(n+1)+1))`
-/

namespace A116455.P16037215682864282853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157985 (A274605 (n + 1) + 1).toNat|

end

end A116455.P16037215682864282853

/-! ## A116455.P8221032264558300256

`A065648(n)+A045542(A274605(n+1))`
-/

namespace A116455.P8221032264558300256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 n + A045542 (A274605 (n + 1)).toNat

end

end A116455.P8221032264558300256

/-! ## A116455.P16172444296058823230

`A152847(n)+A045542(A274605(n+1))`
-/

namespace A116455.P16172444296058823230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152847 n + A045542 (A274605 (n + 1)).toNat

end

end A116455.P16172444296058823230

/-!
# A116456: a(n) is the number of words of length 2n in the language F, the language of "parity-constrained-shuffle of well-parenthesized words".

The programs for A116456, there is no canonical definition to state claims against.
-/

/-! ## A116456.P18154243187808689036

`A001281(A062992(n)+A000670(n))`
-/

namespace A116456.P18154243187808689036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A062992 n + A000670 n).toNat

end

end A116456.P18154243187808689036

/-!
# A116457: a(1) = 1; a(n) = prime((a(n-1)+3)/2).

The programs for A116457, there is no canonical definition to state claims against.
-/

/-! ## A116457.P12613311214796574074

`A093515(a(n-1)+1)` with `a(0)=1`
-/

namespace A116457.P12613311214796574074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A093515 (a (n - 1) + 1).toNat

end

end A116457.P12613311214796574074

/-! ## A116457.P17127361555018799526

`A065091(ceil(a(n-1)/2))` with `a(0)=1`
-/

namespace A116457.P17127361555018799526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065091 ⌈(a (n - 1) : ℚ) / 2⌉.toNat

end

end A116457.P17127361555018799526

/-! ## A116457.P5883969594083717984

`A065091(round(a(n-1)/2))` with `a(0)=1`
-/

namespace A116457.P5883969594083717984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065091 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / 2)).toNat

end

end A116457.P5883969594083717984

/-! ## A116457.P3515660834314713845

`A065091((a(n-1)+1)/2)` with `a(0)=1`
-/

namespace A116457.P3515660834314713845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065091 (SequenceMachineLib.roundAway ((a (n - 1) + 1 : ℚ) / 2)).toNat

end

end A116457.P3515660834314713845

/-! ## A116457.P17405108171837547500

`A000040((a(n-1)+3)/2)` with `a(0)=1`
-/

namespace A116457.P17405108171837547500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (SequenceMachineLib.roundAway ((a (n - 1) + 3 : ℚ) / 2)).toNat

end

end A116457.P17405108171837547500

/-!
# A116461: 

The programs for A116461, there is no canonical definition to state claims against.
-/

/-! ## A116461.P13609628199805310576

`A104699(n+1)+A000038(A345735(n))`
-/

namespace A116461.P13609628199805310576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104699 (n + 1) + A000038 (A345735 n).toNat

end

end A116461.P13609628199805310576

/-! ## A116461.P4696611250035792140

`A104699(n+1)+A008683(A072502(3*n+5))`
-/

namespace A116461.P4696611250035792140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104699 (n + 1) + A008683 (A072502 (3 * n + 5)).toNat

end

end A116461.P4696611250035792140

/-! ## A116461.P16236652870454053064

`A104699(n+1)%A116462(A165810(2*n+3))`
-/

namespace A116461.P16236652870454053064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104699 (n + 1)) (A116462 (A165810 (2 * n + 3)).toNat)

end

end A116461.P16236652870454053064

/-! ## A116461.P6665946995816441377

`lcm(A104699(n+1), A346242(A256076(n+1)))`
-/

namespace A116461.P6665946995816441377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A104699 (n + 1)) (A346242 (A256076 (n + 1)).toNat)

end

end A116461.P6665946995816441377

/-! ## A116461.P7604445139602954717

`A336040(A158035(3*n+1))+A104699(n+1)`
-/

namespace A116461.P7604445139602954717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336040 (A158035 (3 * n + 1)).toNat + A104699 (n + 1)

end

end A116461.P7604445139602954717

/-! ## A116461.P2777021498769324843

`A104699(n+1)+A079202(A117592(n))`
-/

namespace A116461.P2777021498769324843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104699 (n + 1) + A079202 (A117592 n).toNat

end

end A116461.P2777021498769324843

/-! ## A116461.P3761608266769011619

`A104699(n+1)+A063524(A025487(2*n+3))`
-/

namespace A116461.P3761608266769011619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104699 (n + 1) + A063524 (A025487 (2 * n + 3)).toNat

end

end A116461.P3761608266769011619

/-! ## A116461.P12929180880068799223

`A104699(n+1)+A063524(A331452(n+1))`
-/

namespace A116461.P12929180880068799223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104699 (n + 1) + A063524 (A331452 (n + 1)).toNat

end

end A116461.P12929180880068799223

/-! ## A116461.P1712079278435273397

`A104699(n+1)+A063524(A007635(2*n+3))`
-/

namespace A116461.P1712079278435273397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104699 (n + 1) + A063524 (A007635 (2 * n + 3)).toNat

end

end A116461.P1712079278435273397

/-!
# A116464: Triangle read by rows: T(n,k) is the number of partitions of n into odd parts and having Durfee square of size k (n>=1, k>=1).

The programs for A116464, there is no canonical definition to state claims against.
-/

/-! ## A116464.P16848842908120427258

`A046951(lcm(19, A072011(n+1)))`
-/

namespace A116464.P16848842908120427258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (Int.lcm 19 (A072011 (n + 1)))

end

end A116464.P16848842908120427258

/-! ## A116464.P7705474371927557145

`A046951(A072011(n+1))%p?[A045506(n)]`
-/

namespace A116464.P7705474371927557145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046951 (A072011 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A116464.P7705474371927557145

/-! ## A116464.P9355447664555079622

`A046951(A046643(n+1)*A072011(n+1))`
-/

namespace A116464.P9355447664555079622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A046643 (n + 1) * A072011 (n + 1)).toNat

end

end A116464.P9355447664555079622

/-! ## A116464.P2812573329970452165

`A046951(A072011(n+1)^A117358(n+1))`
-/

namespace A116464.P2812573329970452165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (SequenceMachineLib.roundAway ((A072011 (n + 1) : ℚ) ^ (A117358 (n + 1) : ℤ))).toNat

end

end A116464.P2812573329970452165

/-! ## A116464.P10541115835848741152

`A046951(C(A072011(n+1), A117358(n+1)))`
-/

namespace A116464.P10541115835848741152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (Nat.choose (A072011 (n + 1)).toNat (A117358 (n + 1)).toNat)

end

end A116464.P10541115835848741152

/-!
# A116465: Sum of the sizes of the Durfee squares of all partitions of n into odd parts.

The programs for A116465, there is no canonical definition to state claims against.
-/

/-! ## A116465.P12362517843845779578

`A035620(n+1)+A014675(A287020(n))`
-/

namespace A116465.P12362517843845779578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035620 (n + 1) + A014675 (A287020 n).toNat

end

end A116465.P12362517843845779578

/-!
# A116466: Unsigned row sums of triangle A114700.

The programs for A116466, the canonical program `A116466.P2154189998451542687` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116466 has offset 0).

The definition of A116466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116466.P2154189998451542687

`A000034(n)*A112556(A004526(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A116466

/-- `A000034(n)*A112556(A004526(n))` -/
def P2154189998451542687.Spec : Prop :=
  ∀ n, P2154189998451542687.a n = A116466 n

theorem P2154189998451542687.correct : P2154189998451542687.Spec := by
  intro n
  simp only [A116466]

end A116466

/-! ## A116466.P6221314995064059975

`sqrt(A010685(n))*A112556(A004526(n))`
-/

namespace A116466.P6221314995064059975
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A010685 n : ℝ) * (A112556 (A004526 n).toNat : ℝ)

end

end A116466.P6221314995064059975

namespace A116466

/-- `sqrt(A010685(n))*A112556(A004526(n))` -/
def P6221314995064059975.Spec : Prop :=
  ∀ n, P6221314995064059975.a n = (A116466 n : ℝ)

end A116466

/-! ## A116466.P12406510959127757218

`∑[A165326(n)]*A112556(A004526(n))`
-/

namespace A116466.P12406510959127757218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A112556 (A004526 n).toNat

end

end A116466.P12406510959127757218

namespace A116466

/-- `∑[A165326(n)]*A112556(A004526(n))` -/
def P12406510959127757218.Spec : Prop :=
  ∀ n, P12406510959127757218.a n = A116466 n

end A116466

/-! ## A116466.P4844606143957314129

`Δ[A032766(n)]*A112556(A004526(n))`
-/

namespace A116466.P4844606143957314129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A112556 (A004526 n).toNat

end

end A116466.P4844606143957314129

namespace A116466

/-- `Δ[A032766(n)]*A112556(A004526(n))` -/
def P4844606143957314129.Spec : Prop :=
  ∀ n, P4844606143957314129.a n = A116466 n

end A116466

/-! ## A116466.P1984820120478967277

`A112556(A004526(n))*A134451(n+1)`
-/

namespace A116466.P1984820120478967277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112556 (A004526 n).toNat * A134451 (n + 1)

end

end A116466.P1984820120478967277

namespace A116466

/-- `A112556(A004526(n))*A134451(n+1)` -/
def P1984820120478967277.Spec : Prop :=
  ∀ n, P1984820120478967277.a n = A116466 n

end A116466

/-! ## A116466.P2817852885289279890

`A055881(A016777(n))*A112556(A004526(n))`
-/

namespace A116466.P2817852885289279890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (A016777 n).toNat * A112556 (A004526 n).toNat

end

end A116466.P2817852885289279890

namespace A116466

/-- `A055881(A016777(n))*A112556(A004526(n))` -/
def P2817852885289279890.Spec : Prop :=
  ∀ n, P2817852885289279890.a n = A116466 n

end A116466

/-!
# A116467: Row squared sums of triangle A114700: a(n) = Sum_{k=0..n} A114700(n,k)^2.

The programs for A116467, there is no canonical definition to state claims against.
-/

/-! ## A116467.P11611789751107145517

`A001316(n)*A220122(A220123(n))`
-/

namespace A116467.P11611789751107145517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A220122 (A220123 n).toNat

end

end A116467.P11611789751107145517

/-! ## A116467.P11256453488845000159

`gcd(A000984(n), A016827(A054856(n)))`
-/

namespace A116467.P11256453488845000159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000984 n) (A016827 (A054856 n).toNat)

end

end A116467.P11256453488845000159

/-! ## A116467.P18228673692823321061

`A001223(n+1)*A286885(A000278(n))`
-/

namespace A116467.P18228673692823321061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) * A286885 (A000278 n).toNat

end

end A116467.P18228673692823321061

/-!
# A116468: Permutation of natural numbers generated by 2-rowed array shown below.

The programs for A116468, the canonical program `A116468.P13465970536607108566` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116468 has offset 1).

The definition of A116468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116468.P13465970536607108566

`a(n-4)+4` with `a(0)=2, a(1)=3, a(2)=1, a(3)=6, a(4)=4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116468

/-- `a(n-4)+4` -/
def P13465970536607108566.Spec : Prop :=
  ∀ n, (P13465970536607108566.a n : ℤ) = A116468 (n + 1)

theorem P13465970536607108566.correct : P13465970536607108566.Spec := by
  intro n
  simp only [A116468, Nat.add_sub_cancel]

end A116468

/-! ## A116468.P7373762118497127453

`2-xor(1, -a(n-2))` with `a(0)=2, a(1)=3, a(2)=1`
-/

namespace A116468.P7373762118497127453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 1] fun n a =>
  2 - Int.xor 1 (-a (n - 2))

end

end A116468.P7373762118497127453

namespace A116468

/-- `2-xor(1, -a(n-2))` -/
def P7373762118497127453.Spec : Prop :=
  ∀ n, P7373762118497127453.a n = A116468 (n + 1)

end A116468

/-! ## A116468.P7252996400907057455

`xor(n+1, a(and(2, n+2)))` with `a(0)=2, a(1)=3`
-/

namespace A116468.P7252996400907057455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  Nat.xor (n + 1) (a (Nat.land 2 (n + 2)))

end

end A116468.P7252996400907057455

namespace A116468

/-- `xor(n+1, a(and(2, n+2)))` -/
def P7252996400907057455.Spec : Prop :=
  ∀ n, (P7252996400907057455.a n : ℤ) = A116468 (n + 1)

end A116468

/-! ## A116468.P16505739456243081530

`4-xor(1, 2-a(n-2))` with `a(0)=2, a(1)=3, a(2)=1`
-/

namespace A116468.P16505739456243081530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 1] fun n a =>
  4 - Int.xor 1 (2 - a (n - 2))

end

end A116468.P16505739456243081530

namespace A116468

/-- `4-xor(1, 2-a(n-2))` -/
def P16505739456243081530.Spec : Prop :=
  ∀ n, P16505739456243081530.a n = A116468 (n + 1)

end A116468

/-! ## A116468.P15062708202789578906

`2-((-1)^a(n-2)-a(n-2))` with `a(0)=2, a(1)=3, a(2)=1`
-/

namespace A116468.P15062708202789578906
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2, 3, 1] fun n a =>
  2 - ((-1 : ℝ) ^ (a (n - 2)) - a (n - 2))

end

end A116468.P15062708202789578906

namespace A116468

/-- `2-((-1)^a(n-2)-a(n-2))` -/
def P15062708202789578906.Spec : Prop :=
  ∀ n, P15062708202789578906.a n = (A116468 (n + 1) : ℝ)

end A116468

/-! ## A116468.P2501870656833024386

`A090964(n)+A087960(n)`
-/

namespace A116468.P2501870656833024386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090964 n + A087960 n

end

end A116468.P2501870656833024386

namespace A116468

/-- `A090964(n)+A087960(n)` -/
def P2501870656833024386.Spec : Prop :=
  ∀ n, P2501870656833024386.a n = A116468 (n + 1)

end A116468

/-! ## A116468.P18408324474392982108

`A014681(a(n-2)+2)` with `a(0)=2, a(1)=3, a(2)=1`
-/

namespace A116468.P18408324474392982108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 1] fun n a =>
  A014681 (a (n - 2) + 2).toNat

end

end A116468.P18408324474392982108

namespace A116468

/-- `A014681(a(n-2)+2)` -/
def P18408324474392982108.Spec : Prop :=
  ∀ n, P18408324474392982108.a n = A116468 (n + 1)

end A116468

/-! ## A116468.P2602451118288030522

`A103889(a(n-2)+2)` with `a(0)=2, a(1)=3, a(2)=1`
-/

namespace A116468.P2602451118288030522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 1] fun n a =>
  A103889 (a (n - 2) + 2).toNat

end

end A116468.P2602451118288030522

namespace A116468

/-- `A103889(a(n-2)+2)` -/
def P2602451118288030522.Spec : Prop :=
  ∀ n, P2602451118288030522.a n = A116468 (n + 1)

end A116468

/-! ## A116468.P2176505756938523440

`A114112(a(n-2)+2)` with `a(0)=2, a(1)=3, a(2)=1`
-/

namespace A116468.P2176505756938523440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 1] fun n a =>
  A114112 (a (n - 2) + 2).toNat

end

end A116468.P2176505756938523440

namespace A116468

/-- `A114112(a(n-2)+2)` -/
def P2176505756938523440.Spec : Prop :=
  ∀ n, P2176505756938523440.a n = A116468 (n + 1)

end A116468

/-! ## A116468.P11794194620970423503

`A014681(A090964(n))`
-/

namespace A116468.P11794194620970423503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A090964 n).toNat

end

end A116468.P11794194620970423503

namespace A116468

/-- `A014681(A090964(n))` -/
def P11794194620970423503.Spec : Prop :=
  ∀ n, P11794194620970423503.a n = A116468 (n + 1)

end A116468

/-! ## A116468.P16391615981994475811

`A080412(A014681(n)+1)`
-/

namespace A116468.P16391615981994475811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (A014681 n + 1).toNat

end

end A116468.P16391615981994475811

namespace A116468

/-- `A080412(A014681(n)+1)` -/
def P16391615981994475811.Spec : Prop :=
  ∀ n, P16391615981994475811.a n = A116468 (n + 1)

end A116468

/-! ## A116468.P17775917747402081203

`A080412(A065190(n+1))`
-/

namespace A116468.P17775917747402081203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (A065190 (n + 1)).toNat

end

end A116468.P17775917747402081203

namespace A116468

/-- `A080412(A065190(n+1))` -/
def P17775917747402081203.Spec : Prop :=
  ∀ n, P17775917747402081203.a n = A116468 (n + 1)

end A116468

/-! ## A116468.P13854801071517946450

`A133256(A065164(n+1))`
-/

namespace A116468.P13854801071517946450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133256 (A065164 (n + 1)).toNat

end

end A116468.P13854801071517946450

namespace A116468

/-- `A133256(A065164(n+1))` -/
def P13854801071517946450.Spec : Prop :=
  ∀ n, P13854801071517946450.a n = A116468 (n + 1)

end A116468

/-! ## A116468.P16236392095409721385

`A115659(n+1)+A056699(n+2)-A284307(n+1)`
-/

namespace A116468.P16236392095409721385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115659 (n + 1) + (A056699 (n + 2) - A284307 (n + 1))

end

end A116468.P16236392095409721385

namespace A116468

/-- `A115659(n+1)+A056699(n+2)-A284307(n+1)` -/
def P16236392095409721385.Spec : Prop :=
  ∀ n, P16236392095409721385.a n = A116468 (n + 1)

end A116468

/-! ## A116468.P8058905873177578849

`A298364(A284307(A116966(A115659(A116966(n)))))`
-/

namespace A116468.P8058905873177578849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298364 (A284307 (A116966 (A115659 (A116966 n).toNat).toNat).toNat).toNat

end

end A116468.P8058905873177578849

namespace A116468

/-- `A298364(A284307(A116966(A115659(A116966(n)))))` -/
def P8058905873177578849.Spec : Prop :=
  ∀ n, P8058905873177578849.a n = A116468 (n + 1)

end A116468

/-! ## A116468.P7143511466580732211

`A067060(A067060(A067060(A116966(A115659(n+1)))))`
-/

namespace A116468.P7143511466580732211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067060 (A067060 (A067060 (A116966 (A115659 (n + 1)).toNat).toNat).toNat).toNat

end

end A116468.P7143511466580732211

namespace A116468

/-- `A067060(A067060(A067060(A116966(A115659(n+1)))))` -/
def P7143511466580732211.Spec : Prop :=
  ∀ n, P7143511466580732211.a n = A116468 (n + 1)

end A116468

/-! ## A116468.P17719064335330995247

`A133256(A065190(n+1)+2)-2`
-/

namespace A116468.P17719064335330995247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133256 (A065190 (n + 1) + 2).toNat - 2

end

end A116468.P17719064335330995247

namespace A116468

/-- `A133256(A065190(n+1)+2)-2` -/
def P17719064335330995247.Spec : Prop :=
  ∀ n, P17719064335330995247.a n = A116468 (n + 1)

end A116468

/-! ## A116468.P13639496801324470526

`A080412(A065164(n+1)+2)-2`
-/

namespace A116468.P13639496801324470526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (A065164 (n + 1) + 2).toNat - 2

end

end A116468.P13639496801324470526

namespace A116468

/-- `A080412(A065164(n+1)+2)-2` -/
def P13639496801324470526.Spec : Prop :=
  ∀ n, P13639496801324470526.a n = A116468 (n + 1)

end A116468

/-! ## A116468.P10514730844740452236

`xor(n+1, ceil(3/A020639(∑[n+1])))`
-/

namespace A116468.P10514730844740452236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) ⌈3 / (A020639 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)⌉

end

end A116468.P10514730844740452236

namespace A116468

/-- `xor(n+1, ceil(3/A020639(∑[n+1])))` -/
def P10514730844740452236.Spec : Prop :=
  ∀ n, P10514730844740452236.a n = A116468 (n + 1)

end A116468

/-!
# A116469: Square array read by antidiagonals: T(m,n) = number of spanning trees in an m X n grid.

The programs for A116469, there is no canonical definition to state claims against.
-/

/-! ## A116469.P16984635712719095568

`A189006(eq[0, A051159(n)])`
-/

namespace A116469.P16984635712719095568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A116469.P16984635712719095568

/-! ## A116469.P11504158581294849731

`A189006(eq[0, A155997(n)])`
-/

namespace A116469.P11504158581294849731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A116469.P11504158581294849731

/-! ## A116469.P11812116222073679018

`A189006(eq[0, A187596(n)])`
-/

namespace A116469.P11812116222073679018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A116469.P11812116222073679018

/-! ## A116469.P11130651824928150621

`A189006(lt[A187596(n), 1])`
-/

namespace A116469.P11130651824928150621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A116469.P11130651824928150621

/-! ## A116469.P16398926003062036521

`A189006(A140978(n+1)+2*n)`
-/

namespace A116469.P16398926003062036521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (A140978 (n + 1) + (2 * n : ℤ)).toNat

end

end A116469.P16398926003062036521

/-! ## A116469.P289755534025425799

`A189006(A140978(n+1)+n+n)`
-/

namespace A116469.P289755534025425799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (A140978 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A116469.P289755534025425799

/-! ## A116469.P6607077261283987973

`A189006(A080036(A061579(n)+A016777(n)))`
-/

namespace A116469.P6607077261283987973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (A080036 (A061579 n + A016777 n).toNat).toNat

end

end A116469.P6607077261283987973

/-! ## A116469.P13379160930245620721

`A338832(A146985(n))`
-/

namespace A116469.P13379160930245620721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338832 (A146985 n).toNat

end

end A116469.P13379160930245620721

/-!
# A116470: All distinct Fibonacci and Lucas numbers.

The programs for A116470, the canonical program `A116470.P971669195998627724` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116470 has offset 0).

The definition of A116470 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116470.P971669195998627724

`a(n-2)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116470

/-- `a(n-2)+a(n-4)` -/
def P971669195998627724.Spec : Prop :=
  ∀ n, (P971669195998627724.a n : ℤ) = A116470 n

theorem P971669195998627724.correct : P971669195998627724.Spec := by
  intro n
  simp only [A116470]

end A116470

/-! ## A116470.P10704689936570079837

`record[A049998(n+1)-A049998(n+2)]`
-/

namespace A116470.P10704689936570079837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049998 (n + 1) - A049998 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116470.P10704689936570079837

namespace A116470

/-- `record[A049998(n+1)-A049998(n+2)]` -/
def P10704689936570079837.Spec : Prop :=
  ∀ n, P10704689936570079837.a n = A116470 n

end A116470

/-! ## A116470.P12515967943645708032

`record[A165357(A061579(n)+2)]`
-/

namespace A116470.P12515967943645708032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165357 (A061579 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116470.P12515967943645708032

namespace A116470

/-- `record[A165357(A061579(n)+2)]` -/
def P12515967943645708032.Spec : Prop :=
  ∀ n, P12515967943645708032.a n = A116470 n

end A116470

/-! ## A116470.P13655278475502497362

`record[A039913(n)/A134398(n+3)]`
-/

namespace A116470.P13655278475502497362
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039913 n : ℚ) / (A134398 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116470.P13655278475502497362

namespace A116470

/-- `record[A039913(n)/A134398(n+3)]` -/
def P13655278475502497362.Spec : Prop :=
  ∀ n, P13655278475502497362.a n = (A116470 n : ℚ)

end A116470

/-! ## A116470.P11736306886559598949

`record[A204922(n+1)%A108037(n+3)]`
-/

namespace A116470.P11736306886559598949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204922 (n + 1)) (A108037 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116470.P11736306886559598949

namespace A116470

/-- `record[A204922(n+1)%A108037(n+3)]` -/
def P11736306886559598949.Spec : Prop :=
  ∀ n, P11736306886559598949.a n = A116470 n

end A116470

/-! ## A116470.P14093521789663364116

`record[A109754(A141419(n+1))]`
-/

namespace A116470.P14093521789663364116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109754 (A141419 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116470.P14093521789663364116

namespace A116470

/-- `record[A109754(A141419(n+1))]` -/
def P14093521789663364116.Spec : Prop :=
  ∀ n, P14093521789663364116.a n = A116470 n

end A116470

/-! ## A116470.P1019830794106162474

`record[A109754(n)%A060539(n+5)]`
-/

namespace A116470.P1019830794106162474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109754 n) (A060539 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116470.P1019830794106162474

namespace A116470

/-- `record[A109754(n)%A060539(n+5)]` -/
def P1019830794106162474.Spec : Prop :=
  ∀ n, P1019830794106162474.a n = A116470 n

end A116470

/-!
# A116471: Values 2*(n -+ 1)^2 sorted.

The programs for A116471, the canonical program `A116471.P8764783814133387856` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116471 has offset 1).

The definition of A116471 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116471.P8764783814133387856

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=8, a(3)=8, a(4)=18, a(5)=18`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116471

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P8764783814133387856.Spec : Prop :=
  ∀ n, P8764783814133387856.a n = A116471 (n + 1)

theorem P8764783814133387856.correct : P8764783814133387856.Spec := by
  intro n
  simp only [A116471, Nat.add_sub_cancel]

end A116471

/-! ## A116471.P4306636286417451657

`2*ceil(cot(2/(n+1)))²`
-/

namespace A116471.P4306636286417451657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.cot (2 / (n + 1 : ℚ) : ℝ)⌉ ^ 2

end

end A116471.P4306636286417451657

namespace A116471

/-- `2*ceil(cot(2/(n+1)))²` -/
def P4306636286417451657.Spec : Prop :=
  ∀ n, P4306636286417451657.a n = A116471 (n + 1)

end A116471

/-! ## A116471.P9953387803941574073

`2*(round((n-1)/2)+1)²`
-/

namespace A116471.P9953387803941574073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) + 1) ^ 2

end

end A116471.P9953387803941574073

namespace A116471

/-- `2*(round((n-1)/2)+1)²` -/
def P9953387803941574073.Spec : Prop :=
  ∀ n, P9953387803941574073.a n = A116471 (n + 1)

end A116471

/-! ## A116471.P13633576996749642060

`((n-1)%2+n+1)²/2`
-/

namespace A116471.P13633576996749642060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.tmod ((n : ℤ) - 1) 2 + (n + 1 : ℤ)) ^ 2 : ℚ) / 2

end

end A116471.P13633576996749642060

namespace A116471

/-- `((n-1)%2+n+1)²/2` -/
def P13633576996749642060.Spec : Prop :=
  ∀ n, P13633576996749642060.a n = (A116471 (n + 1) : ℚ)

end A116471

/-! ## A116471.P6607286994773210353

`∑[(n+1)*a(∑[(-1)^n])]` with `a(0)=0, a(1)=2`
-/

namespace A116471.P6607286994773210353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  (n + 1) * f1 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116471.P6607286994773210353

namespace A116471

/-- `∑[(n+1)*a(∑[(-1)^n])]` -/
def P6607286994773210353.Spec : Prop :=
  ∀ n, (P6607286994773210353.a n : ℤ) = A116471 (n + 1)

end A116471

/-! ## A116471.P5410673684089929091

`∑[2-a(n-1)]²/2` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A116471.P5410673684089929091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 2

end

end A116471.P5410673684089929091

namespace A116471

/-- `∑[2-a(n-1)]²/2` -/
def P5410673684089929091.Spec : Prop :=
  ∀ n, P5410673684089929091.a n = (A116471 (n + 1) : ℚ)

end A116471

/-! ## A116471.P13680386009866873132

`∑[lcm(2, (n+1)*C(2, a(n-1)))]` with `a(0)=0`
-/

namespace A116471.P13680386009866873132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.lcm 2 ((n + 1) * Nat.choose 2 (f1 (n - 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116471.P13680386009866873132

namespace A116471

/-- `∑[lcm(2, (n+1)*C(2, a(n-1)))]` -/
def P13680386009866873132.Spec : Prop :=
  ∀ n, (P13680386009866873132.a n : ℤ) = A116471 (n + 1)

end A116471

/-! ## A116471.P9010889061666699998

`floor((n+1)²/2)²/a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A116471.P9010889061666699998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  (⌊((n + 1) ^ 2 : ℚ) / 2⌋ ^ 2 : ℚ) / a (n - 1)

end

end A116471.P9010889061666699998

namespace A116471

/-- `floor((n+1)²/2)²/a(n-1)` -/
def P9010889061666699998.Spec : Prop :=
  ∀ n, P9010889061666699998.a n = (A116471 (n + 1) : ℚ)

end A116471

/-! ## A116471.P1190892010800888839

`(A134451(n)+n)²/2`
-/

namespace A116471.P1190892010800888839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A134451 n + (n : ℤ)) ^ 2 : ℚ) / 2

end

end A116471.P1190892010800888839

namespace A116471

/-- `(A134451(n)+n)²/2` -/
def P1190892010800888839.Spec : Prop :=
  ∀ n, P1190892010800888839.a n = (A116471 (n + 1) : ℚ)

end A116471

/-! ## A116471.P3536895500632563622

`A093353(A063196(n+1))`
-/

namespace A116471.P3536895500632563622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093353 (A063196 (n + 1)).toNat

end

end A116471.P3536895500632563622

namespace A116471

/-- `A093353(A063196(n+1))` -/
def P3536895500632563622.Spec : Prop :=
  ∀ n, P3536895500632563622.a n = A116471 (n + 1)

end A116471

/-! ## A116471.P11565372149120474025

`A213037(2*(A266977(n)-1))`
-/

namespace A116471.P11565372149120474025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213037 (2 * (A266977 n - 1)).toNat

end

end A116471.P11565372149120474025

namespace A116471

/-- `A213037(2*(A266977(n)-1))` -/
def P11565372149120474025.Spec : Prop :=
  ∀ n, P11565372149120474025.a n = A116471 (n + 1)

end A116471

/-! ## A116471.P3069685951242786108

`A001105(1-A065033(n)+n)`
-/

namespace A116471.P3069685951242786108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (1 - A065033 n + (n : ℤ)).toNat

end

end A116471.P3069685951242786108

namespace A116471

/-- `A001105(1-A065033(n)+n)` -/
def P3069685951242786108.Spec : Prop :=
  ∀ n, P3069685951242786108.a n = A116471 (n + 1)

end A116471

/-! ## A116471.P9347133962293596718

`A001105(n-A140106(n+1))`
-/

namespace A116471.P9347133962293596718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 ((n : ℤ) - A140106 (n + 1)).toNat

end

end A116471.P9347133962293596718

namespace A116471

/-- `A001105(n-A140106(n+1))` -/
def P9347133962293596718.Spec : Prop :=
  ∀ n, P9347133962293596718.a n = A116471 (n + 1)

end A116471

/-! ## A116471.P11540721844745410258

`A179820(n)+A105638(n+3)`
-/

namespace A116471.P11540721844745410258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179820 n + A105638 (n + 3)

end

end A116471.P11540721844745410258

namespace A116471

/-- `A179820(n)+A105638(n+3)` -/
def P11540721844745410258.Spec : Prop :=
  ∀ n, P11540721844745410258.a n = A116471 (n + 1)

end A116471

/-! ## A116471.P6350897563657671630

`A000290(A134451(n)+n)/2`
-/

namespace A116471.P6350897563657671630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (A134451 n + (n : ℤ)).toNat : ℚ) / 2

end

end A116471.P6350897563657671630

namespace A116471

/-- `A000290(A134451(n)+n)/2` -/
def P6350897563657671630.Spec : Prop :=
  ∀ n, P6350897563657671630.a n = (A116471 (n + 1) : ℚ)

end A116471

/-! ## A116471.P13136017789668695397

`A164097(n+1)%A028387(n)`
-/

namespace A116471.P13136017789668695397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164097 (n + 1)) (A028387 n)

end

end A116471.P13136017789668695397

namespace A116471

/-- `A164097(n+1)%A028387(n)` -/
def P13136017789668695397.Spec : Prop :=
  ∀ n, P13136017789668695397.a n = A116471 (n + 1)

end A116471

/-! ## A116471.P12217461316138076131

`A163102(n)%A137928(n+1)`
-/

namespace A116471.P12217461316138076131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163102 n) (A137928 (n + 1))

end

end A116471.P12217461316138076131

namespace A116471

/-- `A163102(n)%A137928(n+1)` -/
def P12217461316138076131.Spec : Prop :=
  ∀ n, P12217461316138076131.a n = A116471 (n + 1)

end A116471

/-! ## A116471.P5280825633173453406

`A001105(∑[char[A004273(n)+1]])`
-/

namespace A116471.P5280825633173453406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A116471.P5280825633173453406

namespace A116471

/-- `A001105(∑[char[A004273(n)+1]])` -/
def P5280825633173453406.Spec : Prop :=
  ∀ n, P5280825633173453406.a n = A116471 (n + 1)

end A116471

/-! ## A116471.P17023272339606163514

`A212892(n+1)/A065033(n)²`
-/

namespace A116471.P17023272339606163514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212892 (n + 1) : ℚ) / (A065033 n ^ 2 : ℚ)

end

end A116471.P17023272339606163514

namespace A116471

/-- `A212892(n+1)/A065033(n)²` -/
def P17023272339606163514.Spec : Prop :=
  ∀ n, P17023272339606163514.a n = (A116471 (n + 1) : ℚ)

end A116471

/-! ## A116471.P13499061534334396297

`A245996(n+1)%A245524(n+1)`
-/

namespace A116471.P13499061534334396297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245996 (n + 1)) (A245524 (n + 1))

end

end A116471.P13499061534334396297

namespace A116471

/-- `A245996(n+1)%A245524(n+1)` -/
def P13499061534334396297.Spec : Prop :=
  ∀ n, P13499061534334396297.a n = A116471 (n + 1)

end A116471

/-!
# A116472: a(n) = floor(exp(2*n)).

The programs for A116472, the canonical program `A116472.P10029381722133850653` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116472 has offset 0).

The definition of A116472 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(exp(2*n))` (program `A116472.P10029381722133850653`, by `A116472.P10029381722133850653.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116472.P10029381722133850653

`floor(exp(2*n))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116472

/-- `floor(exp(2*n))` -/
def P10029381722133850653.Spec : Prop :=
  ∀ n, P10029381722133850653.a n = A116472 n

theorem P10029381722133850653.correct : P10029381722133850653.Spec := by
  intro n
  simp only [A116472]

end A116472

/-! ## A116472.P11104135437935436609

`record[floor(exp(and(n, n+1)))]`
-/

namespace A116472.P11104135437935436609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (Nat.land n (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116472.P11104135437935436609

namespace A116472

/-- `record[floor(exp(and(n, n+1)))]` -/
def P11104135437935436609.Spec : Prop :=
  ∀ n, P11104135437935436609.a n = A116472 n

end A116472

/-! ## A116472.P3312691174548952845

`record[floor(exp(n%or(1, n)))]`
-/

namespace A116472.P3312691174548952845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp ((n % Nat.lor 1 n : ℕ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116472.P3312691174548952845

namespace A116472

/-- `record[floor(exp(n%or(1, n)))]` -/
def P3312691174548952845.Spec : Prop :=
  ∀ n, P3312691174548952845.a n = A116472 n

end A116472

/-! ## A116472.P7498311393884880590

`A000149(2*n)`
-/

namespace A116472.P7498311393884880590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000149 (2 * n)

end

end A116472.P7498311393884880590

namespace A116472

/-- `A000149(2*n)` -/
def P7498311393884880590.Spec : Prop :=
  ∀ n, P7498311393884880590.a n = A116472 n

end A116472

/-! ## A116472.P15423543252416577142

`A005182(4*n+1)`
-/

namespace A116472.P15423543252416577142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005182 (4 * n + 1)

end

end A116472.P15423543252416577142

namespace A116472

/-- `A005182(4*n+1)` -/
def P15423543252416577142.Spec : Prop :=
  ∀ n, P15423543252416577142.a n = A116472 n

end A116472

/-! ## A116472.P14664684692124527195

`A214077(A008458(n))`
-/

namespace A116472.P14664684692124527195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214077 (A008458 n).toNat

end

end A116472.P14664684692124527195

namespace A116472

/-- `A214077(A008458(n))` -/
def P14664684692124527195.Spec : Prop :=
  ∀ n, P14664684692124527195.a n = A116472 n

end A116472

/-! ## A116472.P14893810238257013696

`A214077(A008486(2*n))`
-/

namespace A116472.P14893810238257013696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214077 (A008486 (2 * n)).toNat

end

end A116472.P14893810238257013696

namespace A116472

/-- `A214077(A008486(2*n))` -/
def P14893810238257013696.Spec : Prop :=
  ∀ n, P14893810238257013696.a n = A116472 n

end A116472

/-! ## A116472.P15942061349032910643

`A057428(n)+A001671(2*n)`
-/

namespace A116472.P15942061349032910643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A001671 (2 * n)

end

end A116472.P15942061349032910643

namespace A116472

/-- `A057428(n)+A001671(2*n)` -/
def P15942061349032910643.Spec : Prop :=
  ∀ n, P15942061349032910643.a n = A116472 n

end A116472

/-! ## A116472.P12313298581360542680

`A001671(2*n)-A057427(n)`
-/

namespace A116472.P12313298581360542680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001671 (2 * n) - A057427 n

end

end A116472.P12313298581360542680

namespace A116472

/-- `A001671(2*n)-A057427(n)` -/
def P12313298581360542680.Spec : Prop :=
  ∀ n, P12313298581360542680.a n = A116472 n

end A116472

/-! ## A116472.P956915495650034248

`A000501(2*n)+A000495(2*n)`
-/

namespace A116472.P956915495650034248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000501 (2 * n) + A000495 (2 * n)

end

end A116472.P956915495650034248

namespace A116472

/-- `A000501(2*n)+A000495(2*n)` -/
def P956915495650034248.Spec : Prop :=
  ∀ n, P956915495650034248.a n = A116472 n

end A116472

/-! ## A116472.P9881731770110123924

`A001671(2*n)-A057428(2*n)²`
-/

namespace A116472.P9881731770110123924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001671 (2 * n) - A057428 (2 * n) ^ 2

end

end A116472.P9881731770110123924

namespace A116472

/-- `A001671(2*n)-A057428(2*n)²` -/
def P9881731770110123924.Spec : Prop :=
  ∀ n, P9881731770110123924.a n = A116472 n

end A116472

/-! ## A116472.P4840667538116945764

`A001671(2*n)-A066328(A102376(n))`
-/

namespace A116472.P4840667538116945764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001671 (2 * n) - A066328 (A102376 n).toNat

end

end A116472.P4840667538116945764

namespace A116472

/-- `A001671(2*n)-A066328(A102376(n))` -/
def P4840667538116945764.Spec : Prop :=
  ∀ n, P4840667538116945764.a n = A116472 n

end A116472

/-! ## A116472.P13131630007389878915

`ceil(exp(n)²-tanh(n))`
-/

namespace A116472.P13131630007389878915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (n : ℝ) ^ 2 - Real.tanh (n : ℝ)⌉

end

end A116472.P13131630007389878915

namespace A116472

/-- `ceil(exp(n)²-tanh(n))` -/
def P13131630007389878915.Spec : Prop :=
  ∀ n, P13131630007389878915.a n = A116472 n

end A116472

/-! ## A116472.P11528970760836272345

`ceil(2*cosh(2*n))-1`
-/

namespace A116472.P11528970760836272345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.cosh (2 * n : ℝ)⌉ - 1

end

end A116472.P11528970760836272345

namespace A116472

/-- `ceil(2*cosh(2*n))-1` -/
def P11528970760836272345.Spec : Prop :=
  ∀ n, P11528970760836272345.a n = A116472 n

end A116472

/-!
# A116473: Number of partitions with exactly n subpartitions.

The programs for A116473, there is no canonical definition to state claims against.
-/

/-! ## A116473.P17581178989107435413

`A341151(n)-A025466(A218543(n))`
-/

namespace A116473.P17581178989107435413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341151 n - A025466 (A218543 n).toNat

end

end A116473.P17581178989107435413

/-! ## A116473.P10219921777368687218

`A341151(n)-A044941(A181811(n+1))`
-/

namespace A116473.P10219921777368687218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341151 n - A044941 (A181811 (n + 1)).toNat

end

end A116473.P10219921777368687218

/-! ## A116473.P7900242144526914371

`A341151(n)-A044941(A219676(n))`
-/

namespace A116473.P7900242144526914371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341151 n - A044941 (A219676 n).toNat

end

end A116473.P7900242144526914371

/-! ## A116473.P9410666761355323551

`A341151(n)-A340999(A341153(n))`
-/

namespace A116473.P9410666761355323551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341151 n - A340999 ((A341153 n).toNat + 204)

end

end A116473.P9410666761355323551

/-! ## A116473.P13731533452137552103

`A341151(n)-A055641(A116444(n+1))`
-/

namespace A116473.P13731533452137552103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341151 n - A055641 (A116444 (n + 1)).toNat

end

end A116473.P13731533452137552103

/-!
# A116477: a(n) = Sum_{1<=k<=n, gcd(k,n)=1} floor(n/k).

The programs for A116477, the canonical program `A116477.P12942895265531619218` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116477 has offset 1).

The definition of A116477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116477.P12942895265531619218

`∑{d}[n+1, A332684(#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A116477

/-- `∑{d}[n+1, A332684(#)]` -/
def P12942895265531619218.Spec : Prop :=
  ∀ n, P12942895265531619218.a n = A116477 (n + 1)

theorem P12942895265531619218.correct : P12942895265531619218.Spec := by
  intro n
  simp only [A116477, Nat.add_sub_cancel]

end A116477

/-! ## A116477.P6949524663664863835

`A332683(n+1)-A109606(n+1)`
-/

namespace A116477.P6949524663664863835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332683 (n + 1) - A109606 (n + 1)

end

end A116477.P6949524663664863835

namespace A116477

/-- `A332683(n+1)-A109606(n+1)` -/
def P6949524663664863835.Spec : Prop :=
  ∀ n, P6949524663664863835.a n = A116477 (n + 1)

end A116477

/-! ## A116477.P11807912962203326689

`A332683(n+1)+1-A000010(n+1)`
-/

namespace A116477.P11807912962203326689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332683 (n + 1) + (1 - A000010 (n + 1))

end

end A116477.P11807912962203326689

namespace A116477

/-- `A332683(n+1)+1-A000010(n+1)` -/
def P11807912962203326689.Spec : Prop :=
  ∀ n, P11807912962203326689.a n = A116477 (n + 1)

end A116477

/-! ## A116477.P6248830462270686444

`∑{d}[n+1, A008683(#)*A006218((n+1)/#)]`
-/

namespace A116477.P6248830462270686444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A006218 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A116477.P6248830462270686444

namespace A116477

/-- `∑{d}[n+1, A008683(#)*A006218((n+1)/#)]` -/
def P6248830462270686444.Spec : Prop :=
  ∀ n, P6248830462270686444.a n = A116477 (n + 1)

end A116477

/-! ## A116477.P12267046742071858978

`∑{d}[n+1, A007427(#)*A143356((n+1)/#)]`
-/

namespace A116477.P12267046742071858978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A143356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A116477.P12267046742071858978

namespace A116477

/-- `∑{d}[n+1, A007427(#)*A143356((n+1)/#)]` -/
def P12267046742071858978.Spec : Prop :=
  ∀ n, P12267046742071858978.a n = A116477 (n + 1)

end A116477

/-! ## A116477.P8610624864675315780

`∑{d}[n+1, A055615(#)*A333463((n+1)/#)]`
-/

namespace A116477.P8610624864675315780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A333463 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A116477.P8610624864675315780

namespace A116477

/-- `∑{d}[n+1, A055615(#)*A333463((n+1)/#)]` -/
def P8610624864675315780.Spec : Prop :=
  ∀ n, P8610624864675315780.a n = A116477 (n + 1)

end A116477

/-! ## A116477.P6291136608993865331

`A143724(∑[n+1])`
-/

namespace A116477.P6291136608993865331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143724 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A116477.P6291136608993865331

namespace A116477

/-- `A143724(∑[n+1])` -/
def P6291136608993865331.Spec : Prop :=
  ∀ n, P6291136608993865331.a n = A116477 (n + 1)

end A116477

/-!
# A116478: a(1) = 1. a(n) = Sum_{k=1..n-1} floor(n/a(k)).

The programs for A116478, there is no canonical definition to state claims against.
-/

/-! ## A116478.P806443896851528156

`A193238(A027423(n+3))+A028310(2*n)`
-/

namespace A116478.P806443896851528156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A027423 (n + 3)).toNat + A028310 (2 * n)

end

end A116478.P806443896851528156

/-! ## A116478.P2135586653309398181

`record[gcd(A001938(n), A048266(n+1))]`
-/

namespace A116478.P2135586653309398181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001938 n) (A048266 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116478.P2135586653309398181

/-! ## A116478.P15661717057643380278

`lt[A007953(A318719(2*(n+1))), A110649(n)]`
-/

namespace A116478.P15661717057643380278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A318719 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110649 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A116478.P15661717057643380278

/-! ## A116478.P14582150713146916626

`lt[A278717(3*n+2), A059959(A182269(n))]`
-/

namespace A116478.P14582150713146916626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278717 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059959 (A182269 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A116478.P14582150713146916626

/-!
# A116479: Maximum number of Fibonacci parts possible in a factorization of n.

The programs for A116479, there is no canonical definition to state claims against.
-/

/-! ## A116479.P2989762365550000261

`A349127(A005901(n))+A001222(A178210(n+1))`
-/

namespace A116479.P2989762365550000261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349127 (A005901 n).toNat + A001222 (A178210 (n + 1)).toNat

end

end A116479.P2989762365550000261

/-! ## A116479.P9002485438968236632

`A349127(A007899(n))+A001222(A178210(n+1))`
-/

namespace A116479.P9002485438968236632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349127 (A007899 n).toNat + A001222 (A178210 (n + 1)).toNat

end

end A116479.P9002485438968236632

/-! ## A116479.P12156510957060664778

`∑{e}[A178210(n+1)+A151622(n), #]`
-/

namespace A116479.P12156510957060664778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (n + 1) + A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A116479.P12156510957060664778

/-! ## A116479.P18385696001138627430

`A086436(A178210(n+1)%A242956(n+1))`
-/

namespace A116479.P18385696001138627430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (Int.tmod (A178210 (n + 1)) (A242956 (n + 1))).toNat

end

end A116479.P18385696001138627430

/-! ## A116479.P17032515755421581385

`A080339(A005897(n))+A001222(A178210(n+1))`
-/

namespace A116479.P17032515755421581385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (A005897 n).toNat + A001222 (A178210 (n + 1)).toNat

end

end A116479.P17032515755421581385

/-!
# A116480: Maximum number of subpartitions for any partition of n.

The programs for A116480, there is no canonical definition to state claims against.
-/

/-! ## A116480.P2506414878175754771

`A370816(2^n)`
-/

namespace A116480.P2506414878175754771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370816 (2 ^ n)

end

end A116480.P2506414878175754771

/-! ## A116480.P13134261924345541192

`record[A370816(A122111(n+1))]`
-/

namespace A116480.P13134261924345541192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370816 (A122111 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116480.P13134261924345541192

/-! ## A116480.P16236889408385442262

`A370816(A000079(n))+A180472(n)`
-/

namespace A116480.P16236889408385442262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370816 (A000079 n).toNat + A180472 n

end

end A116480.P16236889408385442262

/-! ## A116480.P5229845770174451404

`A370816(A000079(n))%A006497(n)`
-/

namespace A116480.P5229845770174451404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A370816 (A000079 n).toNat) (A006497 n)

end

end A116480.P5229845770174451404

/-! ## A116480.P12929483405497095095

`or(A000007(n), A370816(A000079(n)))`
-/

namespace A116480.P12929483405497095095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A370816 (A000079 n).toNat)

end

end A116480.P12929483405497095095

/-!
# A116481: a(n) = n-th prime larger than n^n.

The programs for A116481, there is no canonical definition to state claims against.
-/

/-! ## A116481.P3038204755608681187

`A000040(A064151(n+1)+1+n)`
-/

namespace A116481.P3038204755608681187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A064151 (n + 1) + 1 + (n : ℤ)).toNat

end

end A116481.P3038204755608681187

/-! ## A116481.P1902220773635291764

`A000040(A077168(n)+A064151(n+1))`
-/

namespace A116481.P1902220773635291764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A077168 n + A064151 (n + 1)).toNat

end

end A116481.P1902220773635291764

/-!
# A116482: Triangle read by rows: T(n,k) is the number of partitions of n having k even parts (n>=0, 0<=k<=floor(n/2)).

The programs for A116482, there is no canonical definition to state claims against.
-/

/-! ## A116482.P10411924594321981400

`A110591(2*A324239(n+1))`
-/

namespace A116482.P10411924594321981400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (2 * A324239 (n + 1)).toNat

end

end A116482.P10411924594321981400

/-! ## A116482.P8680796005763141711

`A110591(A324239(n+1)+A324239(n+1)+1)`
-/

namespace A116482.P8680796005763141711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A324239 (n + 1) + (A324239 (n + 1) + 1)).toNat

end

end A116482.P8680796005763141711

/-! ## A116482.P13177397488735652683

`A071647(A034869(n)%A353848(3*(n+1)))`
-/

namespace A116482.P13177397488735652683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071647 (Int.tmod (A034869 n) (A353848 (3 * (n + 1)))).toNat

end

end A116482.P13177397488735652683

/-! ## A116482.P16787545241475658754

`ceil(A152194(n)/A094824(n+1))`
-/

namespace A116482.P16787545241475658754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A152194 n : ℚ) / (A094824 (n + 1) : ℚ)⌉

end

end A116482.P16787545241475658754

/-! ## A116482.P8374460123409995257

`A232551(A109191(n))`
-/

namespace A116482.P8374460123409995257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232551 (A109191 n).toNat

end

end A116482.P8374460123409995257

/-!
# A116483: Expansion of (1 + x) / (5*x^2 - 2*x + 1).

The programs for A116483, the canonical program `A116483.P15497455804418228602` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116483 has offset 0).

The definition of A116483 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-2x+5x^2))` (program `A116483.P15497455804418228602`, by `A116483.P15497455804418228602.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116483.P15497455804418228602

`ogf((1+x)/(1-2x+5x^2))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116483

/-- `ogf((1+x)/(1-2x+5x^2))` -/
def P15497455804418228602.Spec : Prop :=
  ∀ n, P15497455804418228602.a n = A116483 n

theorem P15497455804418228602.correct : P15497455804418228602.Spec := by
  intro n
  simp only [A116483]

end A116483

/-! ## A116483.P10171798674853730714

`2*a(n-1)-5*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A116483.P10171798674853730714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) - 5 * a (n - 2)

end

end A116483.P10171798674853730714

namespace A116483

/-- `2*a(n-1)-5*a(n-2)` -/
def P10171798674853730714.Spec : Prop :=
  ∀ n, P10171798674853730714.a n = A116483 n

end A116483

/-! ## A116483.P5779542469555240860

`∏[2-5/a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A116483.P5779542469555240860
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  2 - 5 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A116483.P5779542469555240860

namespace A116483

/-- `∏[2-5/a(n-1)]` -/
def P5779542469555240860.Spec : Prop :=
  ∀ n, P5779542469555240860.a n = (A116483 n : ℚ)

end A116483

/-! ## A116483.P14086582054736306446

`A006496(n)+A006495(n)`
-/

namespace A116483.P14086582054736306446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006496 n + A006495 n

end

end A116483.P14086582054736306446

namespace A116483

/-- `A006496(n)+A006495(n)` -/
def P14086582054736306446.Spec : Prop :=
  ∀ n, P14086582054736306446.a n = A116483 n

end A116483

/-! ## A116483.P18098447828065493245

`A045873(n)+∑[A006495(n)]`
-/

namespace A116483.P18098447828065493245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045873 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116483.P18098447828065493245

namespace A116483

/-- `A045873(n)+∑[A006495(n)]` -/
def P18098447828065493245.Spec : Prop :=
  ∀ n, P18098447828065493245.a n = A116483 n

end A116483

/-! ## A116483.P7240956915010529044

`A006496(n)+Δ[A045873(n)]`
-/

namespace A116483.P7240956915010529044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006496 n + (f1 (n + 1) - f1 n)

end

end A116483.P7240956915010529044

namespace A116483

/-- `A006496(n)+Δ[A045873(n)]` -/
def P7240956915010529044.Spec : Prop :=
  ∀ n, P7240956915010529044.a n = A116483 n

end A116483

/-! ## A116483.P9040801316978219737

`A045873(n+1)+A045873(n)`
-/

namespace A116483.P9040801316978219737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045873 (n + 1) + A045873 n

end

end A116483.P9040801316978219737

namespace A116483

/-- `A045873(n+1)+A045873(n)` -/
def P9040801316978219737.Spec : Prop :=
  ∀ n, P9040801316978219737.a n = A116483 n

end A116483

/-! ## A116483.P5770613687203031707

`A116484(n)+Δ[A006496(n)]`
-/

namespace A116483.P5770613687203031707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116484 n + (f1 (n + 1) - f1 n)

end

end A116483.P5770613687203031707

namespace A116483

/-- `A116484(n)+Δ[A006496(n)]` -/
def P5770613687203031707.Spec : Prop :=
  ∀ n, P5770613687203031707.a n = A116483 n

end A116483

/-! ## A116483.P3470605271994425055

`A116484(n)+2*A006495(n)`
-/

namespace A116483.P3470605271994425055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116484 n + 2 * A006495 n

end

end A116483.P3470605271994425055

namespace A116483

/-- `A116484(n)+2*A006495(n)` -/
def P3470605271994425055.Spec : Prop :=
  ∀ n, P3470605271994425055.a n = A116483 n

end A116483

/-! ## A116483.P15288106632932472573

`4*A045873(n)-A116484(n)`
-/

namespace A116483.P15288106632932472573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A045873 n - A116484 n

end

end A116483.P15288106632932472573

namespace A116483

/-- `4*A045873(n)-A116484(n)` -/
def P15288106632932472573.Spec : Prop :=
  ∀ n, P15288106632932472573.a n = A116483 n

end A116483

/-! ## A116483.P10231031480390824816

`A006495(n)-(A116484(n)+A006495(n+1))`
-/

namespace A116483.P10231031480390824816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006495 n - (A116484 n + A006495 (n + 1))

end

end A116483.P10231031480390824816

namespace A116483

/-- `A006495(n)-(A116484(n)+A006495(n+1))` -/
def P10231031480390824816.Spec : Prop :=
  ∀ n, P10231031480390824816.a n = A116483 n

end A116483

/-! ## A116483.P14841278163229263565

`A116484(n)+A006496(n+1)-A006496(n)`
-/

namespace A116483.P14841278163229263565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116484 n + (A006496 (n + 1) - A006496 n)

end

end A116483.P14841278163229263565

namespace A116483

/-- `A116484(n)+A006496(n+1)-A006496(n)` -/
def P14841278163229263565.Spec : Prop :=
  ∀ n, P14841278163229263565.a n = A116483 n

end A116483

/-! ## A116483.P13544178585954053974

`Δ[A116484(n)/2]`
-/

namespace A116483.P13544178585954053974
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116484 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116483.P13544178585954053974

namespace A116483

/-- `Δ[A116484(n)/2]` -/
def P13544178585954053974.Spec : Prop :=
  ∀ n, P13544178585954053974.a n = (A116483 n : ℚ)

end A116483

/-! ## A116483.P4589170721548095281

`A006495(n+1)-(A138749(n+1)+A006495(n))`
-/

namespace A116483.P4589170721548095281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006495 (n + 1) - (A138749 (n + 1) + A006495 n)

end

end A116483.P4589170721548095281

namespace A116483

/-- `A006495(n+1)-(A138749(n+1)+A006495(n))` -/
def P4589170721548095281.Spec : Prop :=
  ∀ n, P4589170721548095281.a n = A116483 n

end A116483

/-!
# A116484: Expansion of (-1+3*x)/(5*x^2 + 1 - 2*x).

The programs for A116484, the canonical program `A116484.P607773308522409746` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116484 has offset 0).

The definition of A116484 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((-1+3x)/(1-2x+5x^2))` (program `A116484.P607773308522409746`, by `A116484.P607773308522409746.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A116484.P607773308522409746

`ogf((-1+3x)/(1-2x+5x^2))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A116484

/-- `ogf((-1+3x)/(1-2x+5x^2))` -/
def P607773308522409746.Spec : Prop :=
  ∀ n, P607773308522409746.a n = A116484 n

theorem P607773308522409746.correct : P607773308522409746.Spec := by
  intro n
  simp only [A116484]

end A116484

/-! ## A116484.P3728782935515116962

`2*a(n-1)-5*a(n-2)` with `a(0)=-1, a(1)=1`
-/

namespace A116484.P3728782935515116962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n a =>
  2 * a (n - 1) - 5 * a (n - 2)

end

end A116484.P3728782935515116962

namespace A116484

/-- `2*a(n-1)-5*a(n-2)` -/
def P3728782935515116962.Spec : Prop :=
  ∀ n, P3728782935515116962.a n = A116484 n

end A116484

/-! ## A116484.P13996431054711675620

`3*A045873(n)-A045873(n+1)`
-/

namespace A116484.P13996431054711675620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A045873 n - A045873 (n + 1)

end

end A116484.P13996431054711675620

namespace A116484

/-- `3*A045873(n)-A045873(n+1)` -/
def P13996431054711675620.Spec : Prop :=
  ∀ n, P13996431054711675620.a n = A116484 n

end A116484

/-! ## A116484.P11626989027695495069

`Δ[-(A116483(n)/2)]`
-/

namespace A116484.P11626989027695495069
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A116483 n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116484.P11626989027695495069

namespace A116484

/-- `Δ[-(A116483(n)/2)]` -/
def P11626989027695495069.Spec : Prop :=
  ∀ n, P11626989027695495069.a n = (A116484 n : ℚ)

end A116484

/-! ## A116484.P9027163488402011681

`A006496(n)-A006495(n)`
-/

namespace A116484.P9027163488402011681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006496 n - A006495 n

end

end A116484.P9027163488402011681

namespace A116484

/-- `A006496(n)-A006495(n)` -/
def P9027163488402011681.Spec : Prop :=
  ∀ n, P9027163488402011681.a n = A116484 n

end A116484

/-! ## A116484.P11127151009237775765

`A006496(n)-Δ[A045873(n)]`
-/

namespace A116484.P11127151009237775765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006496 n - (f1 (n + 1) - f1 n)

end

end A116484.P11127151009237775765

namespace A116484

/-- `A006496(n)-Δ[A045873(n)]` -/
def P11127151009237775765.Spec : Prop :=
  ∀ n, P11127151009237775765.a n = A116484 n

end A116484

/-! ## A116484.P4088321759364811548

`2*A045873(n)-A006495(n)`
-/

namespace A116484.P4088321759364811548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045873 n - A006495 n

end

end A116484.P4088321759364811548

namespace A116484

/-- `2*A045873(n)-A006495(n)` -/
def P4088321759364811548.Spec : Prop :=
  ∀ n, P4088321759364811548.a n = A116484 n

end A116484

/-! ## A116484.P2019133901661791121

`2*A006496(n)-A116483(n)`
-/

namespace A116484.P2019133901661791121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006496 n - A116483 n

end

end A116484.P2019133901661791121

namespace A116484

/-- `2*A006496(n)-A116483(n)` -/
def P2019133901661791121.Spec : Prop :=
  ∀ n, P2019133901661791121.a n = A116484 n

end A116484

/-! ## A116484.P4685651946011818900

`A116483(n)-2*A006495(n)`
-/

namespace A116484.P4685651946011818900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116483 n - 2 * A006495 n

end

end A116484.P4685651946011818900

namespace A116484

/-- `A116483(n)-2*A006495(n)` -/
def P4685651946011818900.Spec : Prop :=
  ∀ n, P4685651946011818900.a n = A116484 n

end A116484

/-! ## A116484.P12645669043558477277

`4*A045873(n)-A116483(n)`
-/

namespace A116484.P12645669043558477277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A045873 n - A116483 n

end

end A116484.P12645669043558477277

namespace A116484

/-- `4*A045873(n)-A116483(n)` -/
def P12645669043558477277.Spec : Prop :=
  ∀ n, P12645669043558477277.a n = A116484 n

end A116484

/-! ## A116484.P6041675477832111356

`A006496(n)+A045873(n)-A045873(n+1)`
-/

namespace A116484.P6041675477832111356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006496 n + (A045873 n - A045873 (n + 1))

end

end A116484.P6041675477832111356

namespace A116484

/-- `A006496(n)+A045873(n)-A045873(n+1)` -/
def P6041675477832111356.Spec : Prop :=
  ∀ n, P6041675477832111356.a n = A116484 n

end A116484

/-! ## A116484.P8940160978541536545

`A116483(n)+A006496(n)-A006496(n+1)`
-/

namespace A116484.P8940160978541536545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116483 n + (A006496 n - A006496 (n + 1))

end

end A116484.P8940160978541536545

namespace A116484

/-- `A116483(n)+A006496(n)-A006496(n+1)` -/
def P8940160978541536545.Spec : Prop :=
  ∀ n, P8940160978541536545.a n = A116484 n

end A116484

/-!
# A116485: Number of permutations in S_n that avoid the pattern 12453 (or equivalently, 31245).

The programs for A116485, there is no canonical definition to state claims against.
-/

/-! ## A116485.P1457363434879271286

`A256205(A004848(n+1))+char[8]`
-/

namespace A116485.P1457363434879271286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256205 (A004848 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A116485.P1457363434879271286

/-! ## A116485.P9231311442980154965

`A256205(n)+A023969(A011815(n))`
-/

namespace A116485.P9231311442980154965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256205 n + A023969 (A011815 n).toNat

end

end A116485.P9231311442980154965

/-! ## A116485.P5442678867684082544

`A256204(n)+A037800(A011815(n))`
-/

namespace A116485.P5442678867684082544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256204 n + A037800 (A011815 n).toNat

end

end A116485.P5442678867684082544

/-! ## A116485.P10684071052852981479

`A256205(n)+A023969(A084057(n))`
-/

namespace A116485.P10684071052852981479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256205 n + A023969 (A084057 n).toNat

end

end A116485.P10684071052852981479

/-! ## A116485.P12986960515691748022

`A256205(n)+A037800(A309861(n))`
-/

namespace A116485.P12986960515691748022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256205 n + A037800 (A309861 n).toNat

end

end A116485.P12986960515691748022

/-!
# A116486: Numbers k such that both k and k + 1 are logarithmically smooth.

The programs for A116486, there is no canonical definition to state claims against.
-/

/-! ## A116486.P8176206615291245978

`lt[A074399(n+1), log2(n+1)+1]+1`
-/

namespace A116486.P8176206615291245978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (n + 1 : ℝ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A116486.P8176206615291245978

/-! ## A116486.P9189303651672859018

`A085153(lt[A082356(n), n])`
-/

namespace A116486.P9189303651672859018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082356 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085153 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A116486.P9189303651672859018

/-!
# A116487: First digit after decimal point in decimal representation of (1+1/n)^n.

The programs for A116487, the canonical program `A116487.P16519514305196677635` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116487 has offset 1).

The definition of A116487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116487.P16519514305196677635

`round(A244725(2*n)/(((n+1)²+n)²-n^4))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A116487

/-- `round(A244725(2*n)/(((n+1)²+n)²-n^4))` -/
def P16519514305196677635.Spec : Prop :=
  ∀ n, P16519514305196677635.a n = A116487 (n + 1)

theorem P16519514305196677635.correct : P16519514305196677635.Spec := by
  intro n
  simp only [A116487, Nat.add_sub_cancel]

end A116487

/-! ## A116487.P3775633127734835797

`round(A022273(2*n)/A022266(n+1))`
-/

namespace A116487.P3775633127734835797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A022273 (2 * n) : ℚ) / (A022266 (n + 1) : ℚ))

end

end A116487.P3775633127734835797

namespace A116487

/-- `round(A022273(2*n)/A022266(n+1))` -/
def P3775633127734835797.Spec : Prop :=
  ∀ n, P3775633127734835797.a n = A116487 (n + 1)

end A116487

/-! ## A116487.P6322179775603351504

`floor(A315187(9*n+1)/A033627(2*(n+3)))`
-/

namespace A116487.P6322179775603351504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A315187 (9 * n + 1) : ℚ) / (A033627 (2 * (n + 3)) : ℚ)⌋

end

end A116487.P6322179775603351504

namespace A116487

/-- `floor(A315187(9*n+1)/A033627(2*(n+3)))` -/
def P6322179775603351504.Spec : Prop :=
  ∀ n, P6322179775603351504.a n = A116487 (n + 1)

end A116487

/-! ## A116487.P4614213016462832390

`ceil(ceil((A122314(n)+6*n²)/(n+1))/(n+1))`
-/

namespace A116487.P4614213016462832390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A122314 n + (6 * n ^ 2 : ℤ) : ℚ) / (n + 1 : ℚ)⌉ : ℚ) / (n + 1 : ℚ)⌉

end

end A116487.P4614213016462832390

namespace A116487

/-- `ceil(ceil((A122314(n)+6*n²)/(n+1))/(n+1))` -/
def P4614213016462832390.Spec : Prop :=
  ∀ n, P4614213016462832390.a n = A116487 (n + 1)

end A116487

/-! ## A116487.P7154777302979704713

`floor(A308012(3*(n+1))/A308040(n+1))`
-/

namespace A116487.P7154777302979704713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A308012 (3 * (n + 1)) : ℚ) / (A308040 (n + 1) : ℚ)⌋

end

end A116487.P7154777302979704713

namespace A116487

/-- `floor(A308012(3*(n+1))/A308040(n+1))` -/
def P7154777302979704713.Spec : Prop :=
  ∀ n, P7154777302979704713.a n = A116487 (n + 1)

end A116487

/-! ## A116487.P1207224029502411987

`floor(∑[A098284(n+1)/A104449(n)])`
-/

namespace A116487.P1207224029502411987
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098284 (n + 1) : ℚ) / (A104449 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A116487.P1207224029502411987

namespace A116487

/-- `floor(∑[A098284(n+1)/A104449(n)])` -/
def P1207224029502411987.Spec : Prop :=
  ∀ n, P1207224029502411987.a n = A116487 (n + 1)

end A116487

/-! ## A116487.P14124463435556548397

`ceil(A008592(n)/A137242(n+1))`
-/

namespace A116487.P14124463435556548397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008592 n : ℚ) / (A137242 (n + 1) : ℚ)⌉

end

end A116487.P14124463435556548397

namespace A116487

/-- `ceil(A008592(n)/A137242(n+1))` -/
def P14124463435556548397.Spec : Prop :=
  ∀ n, P14124463435556548397.a n = A116487 (n + 1)

end A116487

/-! ## A116487.P10377977443871224151

`ceil(6*n/A239086(n+2))`
-/

namespace A116487.P10377977443871224151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(6 * n : ℚ) / (A239086 (n + 2) : ℚ)⌉

end

end A116487.P10377977443871224151

namespace A116487

/-- `ceil(6*n/A239086(n+2))` -/
def P10377977443871224151.Spec : Prop :=
  ∀ n, P10377977443871224151.a n = A116487 (n + 1)

end A116487

/-! ## A116487.P8999359381574376612

`ceil(A008595(n)/A325229(n+1))`
-/

namespace A116487.P8999359381574376612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008595 n : ℚ) / (A325229 (n + 1) : ℚ)⌉

end

end A116487.P8999359381574376612

namespace A116487

/-- `ceil(A008595(n)/A325229(n+1))` -/
def P8999359381574376612.Spec : Prop :=
  ∀ n, P8999359381574376612.a n = A116487 (n + 1)

end A116487

/-! ## A116487.P15316447154124804850

`A059939(A366208(n+1))`
-/

namespace A116487.P15316447154124804850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 (A366208 (n + 1)).toNat

end

end A116487.P15316447154124804850

namespace A116487

/-- `A059939(A366208(n+1))` -/
def P15316447154124804850.Spec : Prop :=
  ∀ n, P15316447154124804850.a n = A116487 (n + 1)

end A116487

/-!
# A116488: Number of factorizations of n into evil numbers.

The programs for A116488, there is no canonical definition to state claims against.
-/

/-! ## A116488.P17987185718943050084

`A248908(A123108(A137951(n))+2)`
-/

namespace A116488.P17987185718943050084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248908 (A123108 (A137951 n).toNat + 2).toNat

end

end A116488.P17987185718943050084

/-! ## A116488.P430551454604178748

`A122538(A072084(n+1)%A003433(n+1))`
-/

namespace A116488.P430551454604178748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122538 (Int.tmod (A072084 (n + 1)) (A003433 (n + 1))).toNat

end

end A116488.P430551454604178748

/-! ## A116488.P12591610159448264901

`A122538(A072084(n+1)%A122528(n))`
-/

namespace A116488.P12591610159448264901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122538 (Int.tmod (A072084 (n + 1)) (A122528 n)).toNat

end

end A116488.P12591610159448264901

/-! ## A116488.P11406290975361336594

`A356242(n+1)+A035457(A002385(n+1))`
-/

namespace A116488.P11406290975361336594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356242 (n + 1) + A035457 (A002385 (n + 1)).toNat

end

end A116488.P11406290975361336594

/-! ## A116488.P2346330100543104372

`A046660(A075277(n+1)*A359587(n+1))`
-/

namespace A116488.P2346330100543104372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A075277 (n + 1) * A359587 (n + 1)).toNat

end

end A116488.P2346330100543104372

/-!
# A116489: Number of factorizations of n into odious numbers > 1.

The programs for A116489, there is no canonical definition to state claims against.
-/

/-! ## A116489.P11691022006376265139

`A001055(n+1)*A035263(A001405(n))`
-/

namespace A116489.P11691022006376265139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) * A035263 (A001405 n).toNat

end

end A116489.P11691022006376265139

/-! ## A116489.P10750745527255965865

`A035263(A001405(n))*A252665(n+1)`
-/

namespace A116489.P10750745527255965865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A001405 n).toNat * A252665 (n + 1)

end

end A116489.P10750745527255965865

/-! ## A116489.P16799407897427062026

`A001055(n+1)*A010060(A100981(n+1))`
-/

namespace A116489.P16799407897427062026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) * A010060 (A100981 (n + 1)).toNat

end

end A116489.P16799407897427062026

/-! ## A116489.P15818474795792834966

`A000041(A001222(n+1))*A035263(A001405(n))`
-/

namespace A116489.P15818474795792834966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A001222 (n + 1)).toNat * A035263 (A001405 n).toNat

end

end A116489.P15818474795792834966

/-! ## A116489.P6390024672708480423

`A007318(A061142(n+1))*A035263(A001405(n))`
-/

namespace A116489.P6390024672708480423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A061142 (n + 1)).toNat * A035263 (A001405 n).toNat

end

end A116489.P6390024672708480423

/-!
# A116491: Number of partitions of n into distinct evil numbers.

The programs for A116491, there is no canonical definition to state claims against.
-/

/-! ## A116491.P2766190189803312565

`A069010(A067591(n)^A064876(n))`
-/

namespace A116491.P2766190189803312565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (SequenceMachineLib.roundAway ((A067591 n : ℚ) ^ (A064876 n : ℤ))).toNat

end

end A116491.P2766190189803312565

/-! ## A116491.P15375491822429518236

`A329320(A067591(n)^A064876(n))`
-/

namespace A116491.P15375491822429518236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (SequenceMachineLib.roundAway ((A067591 n : ℚ) ^ (A064876 n : ℤ))).toNat

end

end A116491.P15375491822429518236

/-! ## A116491.P5937761489172642145

`A069010(A067591(n)^A126792(2*n))`
-/

namespace A116491.P5937761489172642145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (SequenceMachineLib.roundAway ((A067591 n : ℚ) ^ (A126792 (2 * n) : ℤ))).toNat

end

end A116491.P5937761489172642145

/-! ## A116491.P15799826459489884211

`A257217(A291691(n+1))`
-/

namespace A116491.P15799826459489884211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257217 (A291691 (n + 1)).toNat

end

end A116491.P15799826459489884211

/-! ## A116491.P14333315488278448254

`A359910(4^A147785(n))`
-/

namespace A116491.P14333315488278448254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359910 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A147785 n : ℤ))).toNat

end

end A116491.P14333315488278448254

/-!
# A116494: Expansion of psi(q^5)/psi(q) in powers of q where psi() is a Ramanujan theta function.

The programs for A116494, there is no canonical definition to state claims against.
-/

/-! ## A116494.P12623814016934937160

`(-1)^n*A036026(n)`
-/

namespace A116494.P12623814016934937160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A036026 n

end

end A116494.P12623814016934937160

/-! ## A116494.P11801113704091585354

`A033999(n)*A146162(2*n+1)`
-/

namespace A116494.P11801113704091585354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A146162 (2 * n + 1)

end

end A116494.P11801113704091585354

/-! ## A116494.P8789982443430989442

`A033999(n+1)*A147702(2*n+1)`
-/

namespace A116494.P8789982443430989442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A147702 (2 * n + 1)

end

end A116494.P8789982443430989442

/-! ## A116494.P10818268174895671571

`-(A033999(3*(n+1))*A036026(n))`
-/

namespace A116494.P10818268174895671571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A033999 (3 * (n + 1)) * A036026 n)

end

end A116494.P10818268174895671571

/-! ## A116494.P1639093351551277584

`A138532(5*n+3)`
-/

namespace A116494.P1639093351551277584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138532 (5 * n + 3)

end

end A116494.P1639093351551277584

/-! ## A116494.P784583721846592982

`A094267(n²)*A146162(2*n+1)`
-/

namespace A116494.P784583721846592982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (n ^ 2) * A146162 (2 * n + 1)

end

end A116494.P784583721846592982

/-!
# A116498: Expansion of psi(-q)/psi(-q^2) in powers of q where psi() is a Ramanujan theta function.

The programs for A116498, there is no canonical definition to state claims against.
-/

/-! ## A116498.P1068009176152475411

`(-1)^n*A070048(n)`
-/

namespace A116498.P1068009176152475411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A070048 n

end

end A116498.P1068009176152475411

/-! ## A116498.P5219338623811549441

`A070048(n)/A033999(n)`
-/

namespace A116498.P5219338623811549441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070048 n : ℚ) / (A033999 n : ℚ)

end

end A116498.P5219338623811549441

/-! ## A116498.P14470517907419422999

`A070048(n)/(1-A010673(n))`
-/

namespace A116498.P14470517907419422999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070048 n : ℚ) / (1 - A010673 n : ℚ)

end

end A116498.P14470517907419422999

/-! ## A116498.P2886540444224748482

`-(A033999(n+1)*A070048(n))`
-/

namespace A116498.P2886540444224748482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A033999 (n + 1) * A070048 n)

end

end A116498.P2886540444224748482

/-! ## A116498.P4933028353244367653

`A070048(n)*A195017(A000040(n+1))`
-/

namespace A116498.P4933028353244367653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070048 n * A195017 (A000040 (n + 1)).toNat

end

end A116498.P4933028353244367653

/-! ## A116498.P15713396141918624247

`A070048(n)*A087960(2*n)`
-/

namespace A116498.P15713396141918624247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070048 n * A087960 (2 * n)

end

end A116498.P15713396141918624247

/-! ## A116498.P18098779228144734916

`A070048(n)*A112555(A000217(n+1))`
-/

namespace A116498.P18098779228144734916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070048 n * A112555 (A000217 (n + 1)).toNat

end

end A116498.P18098779228144734916

/-! ## A116498.P1367001744332498386

`A070048(n)*A100051(A054552(n))`
-/

namespace A116498.P1367001744332498386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070048 n * A100051 (A054552 n).toNat

end

end A116498.P1367001744332498386

