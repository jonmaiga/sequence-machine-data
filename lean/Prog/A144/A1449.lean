import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A144900: Expansion of x/((1-x-x^3)*(1-x)^6).

The programs for A144900, the canonical program `A144900.P11823230468701143234` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144900 has offset 0).

The definition of A144900 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-7x+21x^2-36x^3+41x^4-36x^5+27x^6-16x^7+6x^8-x^9))` (program `A144900.P11823230468701143234`, by `A144900.P11823230468701143234.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144900.P11823230468701143234

`ogf(x/(1-7x+21x^2-36x^3+41x^4-36x^5+27x^6-16x^7+6x^8-x^9))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144900

/-- `ogf(x/(1-7x+21x^2-36x^3+41x^4-36x^5+27x^6-16x^7+6x^8-x^9))` -/
def P11823230468701143234.Spec : Prop :=
  ∀ n, P11823230468701143234.a n = A144900 n

theorem P11823230468701143234.correct : P11823230468701143234.Spec := by
  intro n
  simp only [A144900]

end A144900

/-! ## A144900.P11055252008312554031

`∑[∑[∑[∑[a(n-1)+a(n-3)+n]]]]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A144900.P11055252008312554031
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f4 =>
  f4 (n - 1) + (f4 (n - 3) + n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144900.P11055252008312554031

namespace A144900

/-- `∑[∑[∑[∑[a(n-1)+a(n-3)+n]]]]` -/
def P11055252008312554031.Spec : Prop :=
  ∀ n, (P11055252008312554031.a n : ℤ) = A144900 n

end A144900

/-! ## A144900.P5148531913159911628

`∑[A144899(n)]`
-/

namespace A144900.P5148531913159911628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144900.P5148531913159911628

namespace A144900

/-- `∑[A144899(n)]` -/
def P5148531913159911628.Spec : Prop :=
  ∀ n, P5148531913159911628.a n = A144900 n

end A144900

/-! ## A144900.P545717999040701834

`∑[∑[A144898(n)]]`
-/

namespace A144900.P545717999040701834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144898 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144900.P545717999040701834

namespace A144900

/-- `∑[∑[A144898(n)]]` -/
def P545717999040701834.Spec : Prop :=
  ∀ n, P545717999040701834.a n = A144900 n

end A144900

/-! ## A144900.P12451810228425865239

`∑[∑[∑[A226405(n)]]]`
-/

namespace A144900.P12451810228425865239
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226405 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144900.P12451810228425865239

namespace A144900

/-- `∑[∑[∑[A226405(n)]]]` -/
def P12451810228425865239.Spec : Prop :=
  ∀ n, P12451810228425865239.a n = A144900 n

end A144900

/-! ## A144900.P18124911716788786335

`Δ[A144901(n-char[A038722(n+1)])]`
-/

namespace A144900.P18124911716788786335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144901 (n - (if ∃ j, f2 j = (n : ℤ) then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144900.P18124911716788786335

namespace A144900

/-- `Δ[A144901(n-char[A038722(n+1)])]` -/
def P18124911716788786335.Spec : Prop :=
  ∀ n, P18124911716788786335.a n = A144900 n

end A144900

/-! ## A144900.P4871019196295143887

`A144901(n+1)-(A144901(n)+A144899(n+1))`
-/

namespace A144900.P4871019196295143887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144901 (n + 1) - (A144901 n + A144899 (n + 1))

end

end A144900.P4871019196295143887

namespace A144900

/-- `A144901(n+1)-(A144901(n)+A144899(n+1))` -/
def P4871019196295143887.Spec : Prop :=
  ∀ n, P4871019196295143887.a n = A144900 n

end A144900

/-!
# A144901: Expansion of x/((1-x-x^3)*(1-x)^7).

The programs for A144901, the canonical program `A144901.P5232981015246790614` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144901 has offset 0).

The definition of A144901 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-8x+28x^2-57x^3+77x^4-77x^5+63x^6-43x^7+22x^8-7x^9+x^10))` (program `A144901.P5232981015246790614`, by `A144901.P5232981015246790614.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144901.P5232981015246790614

`ogf(x/(1-8x+28x^2-57x^3+77x^4-77x^5+63x^6-43x^7+22x^8-7x^9+x^10))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144901

/-- `ogf(x/(1-8x+28x^2-57x^3+77x^4-77x^5+63x^6-43x^7+22x^8-7x^9+x^10))` -/
def P5232981015246790614.Spec : Prop :=
  ∀ n, P5232981015246790614.a n = A144901 n

theorem P5232981015246790614.correct : P5232981015246790614.Spec := by
  intro n
  simp only [A144901]

end A144901

/-! ## A144901.P207161123667045027

`∑[A144900(n)]`
-/

namespace A144901.P207161123667045027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144901.P207161123667045027

namespace A144901

/-- `∑[A144900(n)]` -/
def P207161123667045027.Spec : Prop :=
  ∀ n, P207161123667045027.a n = A144901 n

end A144901

/-! ## A144901.P16760047334677958507

`∑[∑[A144899(n)]]`
-/

namespace A144901.P16760047334677958507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144899 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144901.P16760047334677958507

namespace A144901

/-- `∑[∑[A144899(n)]]` -/
def P16760047334677958507.Spec : Prop :=
  ∀ n, P16760047334677958507.a n = A144901 n

end A144901

/-! ## A144901.P6374454083591645264

`∑[∑[∑[A144898(n)]]]`
-/

namespace A144901.P6374454083591645264
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144901.P6374454083591645264

namespace A144901

/-- `∑[∑[∑[A144898(n)]]]` -/
def P6374454083591645264.Spec : Prop :=
  ∀ n, P6374454083591645264.a n = A144901 n

end A144901

/-! ## A144901.P17853786454044232842

`∑[∑[∑[∑[A226405(n)]]]]`
-/

namespace A144901.P17853786454044232842
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226405 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144901.P17853786454044232842

namespace A144901

/-- `∑[∑[∑[∑[A226405(n)]]]]` -/
def P17853786454044232842.Spec : Prop :=
  ∀ n, P17853786454044232842.a n = A144901 n

end A144901

/-! ## A144901.P1795201738763989315

`Δ[A144902(n-and(1, A003817(n)))]`
-/

namespace A144901.P1795201738763989315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144902 ((n : ℤ) - Int.land 1 (A003817 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144901.P1795201738763989315

namespace A144901

/-- `Δ[A144902(n-and(1, A003817(n)))]` -/
def P1795201738763989315.Spec : Prop :=
  ∀ n, P1795201738763989315.a n = A144901 n

end A144901

/-! ## A144901.P7184633927932642519

`Δ[A144902(A008486(n)-(2*n+1))]`
-/

namespace A144901.P7184633927932642519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144902 (A008486 n - (2 * n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144901.P7184633927932642519

namespace A144901

/-- `Δ[A144902(A008486(n)-(2*n+1))]` -/
def P7184633927932642519.Spec : Prop :=
  ∀ n, P7184633927932642519.a n = A144901 n

end A144901

/-! ## A144901.P3205527270928166640

`A144902(n+1)-(A144902(n)+A144900(n+1))`
-/

namespace A144901.P3205527270928166640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144902 (n + 1) - (A144902 n + A144900 (n + 1))

end

end A144901.P3205527270928166640

namespace A144901

/-- `A144902(n+1)-(A144902(n)+A144900(n+1))` -/
def P3205527270928166640.Spec : Prop :=
  ∀ n, P3205527270928166640.a n = A144901 n

end A144901

/-!
# A144902: Expansion of x/((1-x-x^3)*(1-x)^8).

The programs for A144902, the canonical program `A144902.P12756376953467273990` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144902 has offset 0).

The definition of A144902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 581 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144902.P12756376953467273990

`∑[A144901(n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A144902

/-- `∑[A144901(n)]` -/
def P12756376953467273990.Spec : Prop :=
  ∀ n, P12756376953467273990.a n = A144902 n

theorem P12756376953467273990.correct : P12756376953467273990.Spec := by
  intro n
  simp only [A144902]

end A144902

/-! ## A144902.P16787882016674288077

`∑[∑[A144900(n)]]`
-/

namespace A144902.P16787882016674288077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144900 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144902.P16787882016674288077

namespace A144902

/-- `∑[∑[A144900(n)]]` -/
def P16787882016674288077.Spec : Prop :=
  ∀ n, P16787882016674288077.a n = A144902 n

end A144902

/-! ## A144902.P14417171416285901717

`∑[∑[∑[A144899(n)]]]`
-/

namespace A144902.P14417171416285901717
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144899 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144902.P14417171416285901717

namespace A144902

/-- `∑[∑[∑[A144899(n)]]]` -/
def P14417171416285901717.Spec : Prop :=
  ∀ n, P14417171416285901717.a n = A144902 n

end A144902

/-! ## A144902.P647022194065109540

`∑[∑[∑[∑[∑[A226405(n)]]]]]`
-/

namespace A144902.P647022194065109540
noncomputable section

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226405 n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144902.P647022194065109540

namespace A144902

/-- `∑[∑[∑[∑[∑[A226405(n)]]]]]` -/
def P647022194065109540.Spec : Prop :=
  ∀ n, P647022194065109540.a n = A144902 n

end A144902

/-! ## A144902.P1737171236986532992

`A144903(A000217(n+10)-10)`
-/

namespace A144902.P1737171236986532992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144903 (A000217 (n + 10) - 10).toNat

end

end A144902.P1737171236986532992

namespace A144902

/-- `A144903(A000217(n+10)-10)` -/
def P1737171236986532992.Spec : Prop :=
  ∀ n, P1737171236986532992.a n = A144902 n

end A144902

/-! ## A144902.P16047839000522457367

`A144903(n+6+A055999(n+6))`
-/

namespace A144902.P16047839000522457367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144903 ((n + 6 : ℤ) + A055999 (n + 6)).toNat

end

end A144902.P16047839000522457367

namespace A144902

/-- `A144903(n+6+A055999(n+6))` -/
def P16047839000522457367.Spec : Prop :=
  ∀ n, P16047839000522457367.a n = A144902 n

end A144902

/-!
# A144903: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of x/((1-x-x^3)*(1-x)^(k-1)).

The programs for A144903, there is no canonical definition to state claims against.
-/

/-! ## A144903.P2862629023693006621

`A145153(n)+A048994(A348221(n))`
-/

namespace A144903.P2862629023693006621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145153 n + A048994 (A348221 n).toNat

end

end A144903.P2862629023693006621

/-! ## A144903.P3293545068514008457

`A025459(A151949(n))+A025459(A295390(n)+4)`
-/

namespace A144903.P3293545068514008457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 (A151949 n).toNat + A025459 (A295390 n + 4).toNat

end

end A144903.P3293545068514008457

/-! ## A144903.P516869240301175003

`A025459(A295390(n)+4)+A025459(A348221(n))`
-/

namespace A144903.P516869240301175003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 (A295390 n + 4).toNat + A025459 (A348221 n).toNat

end

end A144903.P516869240301175003

/-! ## A144903.P17497733781521742583

`A025459(A245093(n+1))+A025459(A295390(n)+4)`
-/

namespace A144903.P17497733781521742583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 (A245093 (n + 1)).toNat + A025459 (A295390 n + 4).toNat

end

end A144903.P17497733781521742583

/-!
# A144904: Coefficient of x^n in expansion of x/((1-x-x^3)*(1-x)^(n-1)), also diagonal of A144903.

The programs for A144904, there is no canonical definition to state claims against.
-/

/-! ## A144904.P10489824568192934287

`A144903(∑[4*n])`
-/

namespace A144904.P10489824568192934287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144903 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A144904.P10489824568192934287

/-! ## A144904.P11244455196875818325

`record[A144903(n*A328399(n))]`
-/

namespace A144904.P11244455196875818325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144903 ((n : ℤ) * A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144904.P11244455196875818325

/-! ## A144904.P5582539398190345903

`record[A144903(n*A157271(n+1))]`
-/

namespace A144904.P5582539398190345903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144903 ((n : ℤ) * A157271 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144904.P5582539398190345903

/-! ## A144904.P11575795098589205731

`A144903(A000384(n+1)-(n+1))+A144903(A000217(n))`
-/

namespace A144904.P11575795098589205731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144903 (A000384 (n + 1) - (n + 1 : ℤ)).toNat + A144903 (A000217 n).toNat

end

end A144904.P11575795098589205731

/-! ## A144904.P8494053344426219577

`A144903(A000384(n+1)-(n+1))+A144903(A000384(n))`
-/

namespace A144904.P8494053344426219577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144903 (A000384 (n + 1) - (n + 1 : ℤ)).toNat + A144903 (A000384 n).toNat

end

end A144904.P8494053344426219577

/-!
# A144905: a(0) = 1; thereafter a(n) = A105749(n)/n.

The programs for A144905, there is no canonical definition to state claims against.
-/

/-! ## A144905.P6019780771698775591

`abs(1-n)!*A001515(n)`
-/

namespace A144905.P6019780771698775591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ) * A001515 n

end

end A144905.P6019780771698775591

/-! ## A144905.P9597665848092317376

`A105749(n)/(A000007(n)+n)`
-/

namespace A144905.P9597665848092317376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105749 n : ℚ) / (A000007 n + (n : ℤ) : ℚ)

end

end A144905.P9597665848092317376

/-! ## A144905.P10641178728406368414

`A105749(n)/A000005(A011782(n))`
-/

namespace A144905.P10641178728406368414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105749 n : ℚ) / (A000005 (A011782 n).toNat : ℚ)

end

end A144905.P10641178728406368414

/-! ## A144905.P13015767823636036232

`A105749(n)/A134478(A000217(n))`
-/

namespace A144905.P13015767823636036232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105749 n : ℚ) / (A134478 (A000217 n).toNat : ℚ)

end

end A144905.P13015767823636036232

/-! ## A144905.P6258009159581376224

`A009963(A152947(n+1))*A144301(n+1)`
-/

namespace A144905.P6258009159581376224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009963 (A152947 (n + 1)).toNat * A144301 (n + 1)

end

end A144905.P6258009159581376224

/-!
# A144906: a(0) = 1; thereafter a(n) = A144422(n)/n.

The programs for A144906, there is no canonical definition to state claims against.
-/

/-! ## A144906.P3496853865602885909

`A144422(n)/C(n, floor(atan(n)))`
-/

namespace A144906.P3496853865602885909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144422 n : ℚ) / (Nat.choose n ⌊Real.arctan (n : ℝ)⌋.toNat : ℚ)

end

end A144906.P3496853865602885909

/-! ## A144906.P10035087912000009813

`A144422(n)/A028310(n)`
-/

namespace A144906.P10035087912000009813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144422 n : ℚ) / (A028310 n : ℚ)

end

end A144906.P10035087912000009813

/-! ## A144906.P15538688033262535301

`A144422(n)/A123108(2*n)`
-/

namespace A144906.P15538688033262535301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144422 n : ℚ) / (A123108 (2 * n) : ℚ)

end

end A144906.P15538688033262535301

/-! ## A144906.P10896400958290124605

`A144422(n)/(A000007(n)+n)`
-/

namespace A144906.P10896400958290124605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144422 n : ℚ) / (A000007 n + (n : ℤ) : ℚ)

end

end A144906.P10896400958290124605

/-!
# A144907: a(n) = 1 if n is prime, 2 * rad(n) if four divides n and rad(n) otherwise.

The programs for A144907, the canonical program `A144907.P1234744446401686961` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144907 has offset 1).

The definition of A144907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144907.P1234744446401686961

`A177704(n)*A334085(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A144907

/-- `A177704(n)*A334085(n+1)` -/
def P1234744446401686961.Spec : Prop :=
  ∀ n, P1234744446401686961.a n = A144907 (n + 1)

theorem P1234744446401686961.correct : P1234744446401686961.Spec := by
  intro n
  simp only [A144907, Nat.add_sub_cancel]

end A144907

/-! ## A144907.P17617821755369701341

`gcd(2*A144845(n), A005451(n+1))`
-/

namespace A144907.P17617821755369701341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A144845 n) (A005451 (n + 1))

end

end A144907.P17617821755369701341

namespace A144907

/-- `gcd(2*A144845(n), A005451(n+1))` -/
def P17617821755369701341.Spec : Prop :=
  ∀ n, (P17617821755369701341.a n : ℤ) = A144907 (n + 1)

end A144907

/-! ## A144907.P10211381755377455535

`gcd(2, A160953(n+1))*A334085(n+1)`
-/

namespace A144907.P10211381755377455535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A160953 (n + 1)) : ℤ) * A334085 (n + 1)

end

end A144907.P10211381755377455535

namespace A144907

/-- `gcd(2, A160953(n+1))*A334085(n+1)` -/
def P10211381755377455535.Spec : Prop :=
  ∀ n, P10211381755377455535.a n = A144907 (n + 1)

end A144907

/-! ## A144907.P12474942328593244331

`(Δ[A008621(n)]+1)*A334085(n+1)`
-/

namespace A144907.P12474942328593244331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A334085 (n + 1)

end

end A144907.P12474942328593244331

namespace A144907

/-- `(Δ[A008621(n)]+1)*A334085(n+1)` -/
def P12474942328593244331.Spec : Prop :=
  ∀ n, P12474942328593244331.a n = A144907 (n + 1)

end A144907

/-! ## A144907.P2957221159702921418

`A000925(Δ[A008621(n)])*A334085(n+1)`
-/

namespace A144907.P2957221159702921418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (f1 (n + 1) - f1 n).toNat * A334085 (n + 1)

end

end A144907.P2957221159702921418

namespace A144907

/-- `A000925(Δ[A008621(n)])*A334085(n+1)` -/
def P2957221159702921418.Spec : Prop :=
  ∀ n, P2957221159702921418.a n = A144907 (n + 1)

end A144907

/-! ## A144907.P10620125026625787081

`A149868(Δ[A008621(n)])*A334085(n+1)`
-/

namespace A144907.P10620125026625787081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149868 (f1 (n + 1) - f1 n).toNat * A334085 (n + 1)

end

end A144907.P10620125026625787081

namespace A144907

/-- `A149868(Δ[A008621(n)])*A334085(n+1)` -/
def P10620125026625787081.Spec : Prop :=
  ∀ n, P10620125026625787081.a n = A144907 (n + 1)

end A144907

/-! ## A144907.P153441925975423688

`gcd(n+1, A034386(n+1)+A034386(n))`
-/

namespace A144907.P153441925975423688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A034386 (n + 1) + A034386 n)

end

end A144907.P153441925975423688

namespace A144907

/-- `gcd(n+1, A034386(n+1)+A034386(n))` -/
def P153441925975423688.Spec : Prop :=
  ∀ n, (P153441925975423688.a n : ℤ) = A144907 (n + 1)

end A144907

/-!
# A144908: Composite numbers n such that sqrt(n) > A144907(n) and absolute normalized digital mean |dm(b, n) * 2 / (b - 1)| decreases for b in [2, k] for some k > 2.

The programs for A144908, there is no canonical definition to state claims against.
-/

/-! ## A144908.P4711437325664097965

`∩[A144862(n+1), A166935(n+1)]`
-/

namespace A144908.P4711437325664097965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144908.P4711437325664097965

/-!
# A144911: Triangle read by rows: rad(n) along left edge (n, 1) and core(n) along right edge (n, n), with (n, k) = core((n - 1, k - 1) + (n - 1, k)) for 1 < k < n when n > 2.

The programs for A144911, there is no canonical definition to state claims against.
-/

/-! ## A144911.P9399317621892676776

`gcd(A072000(A111820(n)), A144909(n+1))`
-/

namespace A144911.P9399317621892676776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072000 (A111820 n).toNat) (A144909 (n + 1))

end

end A144911.P9399317621892676776

/-! ## A144911.P3308802568175668154

`gcd(A087458(n+1), A313289(A001045(n)))`
-/

namespace A144911.P3308802568175668154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A087458 (n + 1)) (A313289 (A001045 n).toNat)

end

end A144911.P3308802568175668154

/-! ## A144911.P2035418545739438069

`A374757(A327906(3*n+1)+A065120(n))`
-/

namespace A144911.P2035418545739438069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374757 (A327906 (3 * n + 1) + A065120 n).toNat

end

end A144911.P2035418545739438069

/-! ## A144911.P11808165832807643123

`gcd(A085578(n+1), A141214(A026410(n+1)))`
-/

namespace A144911.P11808165832807643123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085578 (n + 1)) (A141214 (A026410 (n + 1)).toNat)

end

end A144911.P11808165832807643123

/-!
# A144913: Integers which are the product of even powers of primes up to 13.

The programs for A144913, there is no canonical definition to state claims against.
-/

/-! ## A144913.P4264436806013493782

`A080197(n+2)²`
-/

namespace A144913.P4264436806013493782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 2) ^ 2

end

end A144913.P4264436806013493782

/-! ## A144913.P16801960030353430441

`(A080196(n+2)/(4/2+11))²`
-/

namespace A144913.P16801960030353430441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A080196 (n + 2) : ℚ) / ((4 : ℚ) / 2 + 11)) ^ 2

end

end A144913.P16801960030353430441

/-! ## A144913.P10341734642622402760

`A080197(n+2)^A020639(A020639(n+1)+n+1)`
-/

namespace A144913.P10341734642622402760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080197 (n + 2) : ℚ) ^ (A020639 (A020639 (n + 1) + (n : ℤ) + 1).toNat : ℤ)

end

end A144913.P10341734642622402760

/-! ## A144913.P16626990721513752124

`A080197(n+2)*A080197((n+1)%A000124(n+1)+1)`
-/

namespace A144913.P16626990721513752124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 2) * A080197 (Int.tmod (n + 1 : ℤ) (A000124 (n + 1)) + 1).toNat

end

end A144913.P16626990721513752124

/-! ## A144913.P12435206354875408492

`(A080197(n+2)+A070203(2*n+1))*A080197(n+2)`
-/

namespace A144913.P12435206354875408492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080197 (n + 2) + A070203 (2 * n + 1)) * A080197 (n + 2)

end

end A144913.P12435206354875408492

/-! ## A144913.P16467014630959736705

`∩[A080681(n+2), A160543(n+2)]²`
-/

namespace A144913.P16467014630959736705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080681 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160543 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A144913.P16467014630959736705

/-! ## A144913.P9003108934231495087

`A000290(A080197(n+1)+Δ[A080197(n+1)])`
-/

namespace A144913.P9003108934231495087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A080197 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A144913.P9003108934231495087

/-! ## A144913.P17343362132656364225

`A052126(A080196(n+2))²`
-/

namespace A144913.P17343362132656364225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A080196 (n + 2)).toNat ^ 2

end

end A144913.P17343362132656364225

/-!
# A144915: Trajectory of 16 under iteration of the map k -> A087712(k).

The programs for A144915, there is no canonical definition to state claims against.
-/

/-! ## A144915.P8056369853357328518

`A087712(a(n-1))` with `a(0)=16`
-/

namespace A144915.P8056369853357328518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  A087712 (a (n - 1)).toNat

end

end A144915.P8056369853357328518

/-!
# A144916: Integers k for which |A144912| attains a new maximal odd value.

The programs for A144916, the canonical program `A144916.P5873968881910083904` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144916 has offset 1).

The definition of A144916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144916.P5873968881910083904

`((2*n)%a(n-1))²` with `a(0)=4, a(1)=7`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144916

/-- `((2*n)%a(n-1))²` -/
def P5873968881910083904.Spec : Prop :=
  ∀ n, (P5873968881910083904.a n : ℤ) = A144916 (n + 1)

theorem P5873968881910083904.correct : P5873968881910083904.Spec := by
  intro n
  simp only [A144916, Nat.add_sub_cancel]

end A144916

/-! ## A144916.P12136129846261042732

`(floor(sqrt(a(n-1)))+2)²` with `a(0)=4, a(1)=7`
-/

namespace A144916.P12136129846261042732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 7] fun n a =>
  (Nat.sqrt (a (n - 1)) + 2) ^ 2

end

end A144916.P12136129846261042732

namespace A144916

/-- `(floor(sqrt(a(n-1)))+2)²` -/
def P12136129846261042732.Spec : Prop :=
  ∀ n, (P12136129846261042732.a n : ℤ) = A144916 (n + 1)

end A144916

/-! ## A144916.P15674288520419074943

`record[n^gcd(2, a(n-2))]` with `a(0)=4, a(1)=7`
-/

namespace A144916.P15674288520419074943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 7] fun n f1 =>
  n ^ Nat.gcd 2 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144916.P15674288520419074943

namespace A144916

/-- `record[n^gcd(2, a(n-2))]` -/
def P15674288520419074943.Spec : Prop :=
  ∀ n, (P15674288520419074943.a n : ℤ) = A144916 (n + 1)

end A144916

/-! ## A144916.P18075507560941590557

`(2*n)^(2%a(n-1))` with `a(0)=4, a(1)=7`
-/

namespace A144916.P18075507560941590557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 7] fun n a =>
  (2 * n) ^ (2 % a (n - 1))

end

end A144916.P18075507560941590557

namespace A144916

/-- `(2*n)^(2%a(n-1))` -/
def P18075507560941590557.Spec : Prop :=
  ∀ n, (P18075507560941590557.a n : ℤ) = A144916 (n + 1)

end A144916

/-! ## A144916.P5688908828923725229

`4*n*n%a(n-1)` with `a(0)=4, a(1)=7`
-/

namespace A144916.P5688908828923725229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 7] fun n a =>
  4 * (n * (n % a (n - 1)))

end

end A144916.P5688908828923725229

namespace A144916

/-- `4*n*n%a(n-1)` -/
def P5688908828923725229.Spec : Prop :=
  ∀ n, (P5688908828923725229.a n : ℤ) = A144916 (n + 1)

end A144916

/-! ## A144916.P3374473460233366986

`(2*n)²+(n+2)*C(2, n+1)`
-/

namespace A144916.P3374473460233366986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2 + (n + 2) * Nat.choose 2 (n + 1)

end

end A144916.P3374473460233366986

namespace A144916

/-- `(2*n)²+(n+2)*C(2, n+1)` -/
def P3374473460233366986.Spec : Prop :=
  ∀ n, (P3374473460233366986.a n : ℤ) = A144916 (n + 1)

end A144916

/-! ## A144916.P17244930214737786479

`(2*n)²+(n+2)*floor(2/(n+1))`
-/

namespace A144916.P17244930214737786479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) + (n + 2 : ℤ) * ⌊2 / (n + 1 : ℚ)⌋

end

end A144916.P17244930214737786479

namespace A144916

/-- `(2*n)²+(n+2)*floor(2/(n+1))` -/
def P17244930214737786479.Spec : Prop :=
  ∀ n, P17244930214737786479.a n = A144916 (n + 1)

end A144916

/-! ## A144916.P6114394721326611143

`record[(n-1-xor(n+2, n+3))*(n-2)]`
-/

namespace A144916.P6114394721326611143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 - (Nat.xor (n + 2) (n + 3) : ℤ)) * ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144916.P6114394721326611143

namespace A144916

/-- `record[(n-1-xor(n+2, n+3))*(n-2)]` -/
def P6114394721326611143.Spec : Prop :=
  ∀ n, P6114394721326611143.a n = A144916 (n + 1)

end A144916

/-! ## A144916.P4477089014049521913

`A325657(A004278(n+2))`
-/

namespace A144916.P4477089014049521913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325657 (A004278 (n + 2)).toNat

end

end A144916.P4477089014049521913

namespace A144916

/-- `A325657(A004278(n+2))` -/
def P4477089014049521913.Spec : Prop :=
  ∀ n, P4477089014049521913.a n = A144916 (n + 1)

end A144916

/-! ## A144916.P12459108427254071977

`record[A266285(n+3)^A177704(n)]`
-/

namespace A144916.P12459108427254071977
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266285 (n + 3) : ℚ) ^ (A177704 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144916.P12459108427254071977

namespace A144916

/-- `record[A266285(n+3)^A177704(n)]` -/
def P12459108427254071977.Spec : Prop :=
  ∀ n, P12459108427254071977.a n = (A144916 (n + 1) : ℚ)

end A144916

/-! ## A144916.P10878296043113343981

`ceil((2*n-(n-2)/A000045(2*n+1))²)`
-/

namespace A144916.P10878296043113343981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℚ) - ((n : ℤ) - 2 : ℚ) / (A000045 (2 * n + 1) : ℚ)) ^ 2⌉

end

end A144916.P10878296043113343981

namespace A144916

/-- `ceil((2*n-(n-2)/A000045(2*n+1))²)` -/
def P10878296043113343981.Spec : Prop :=
  ∀ n, P10878296043113343981.a n = A144916 (n + 1)

end A144916

/-! ## A144916.P10219154662142621923

`ceil((2*n-(n-2)/A000108(n+1))²)`
-/

namespace A144916.P10219154662142621923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℚ) - ((n : ℤ) - 2 : ℚ) / (A000108 (n + 1) : ℚ)) ^ 2⌉

end

end A144916.P10219154662142621923

namespace A144916

/-- `ceil((2*n-(n-2)/A000108(n+1))²)` -/
def P10219154662142621923.Spec : Prop :=
  ∀ n, P10219154662142621923.a n = A144916 (n + 1)

end A144916

/-! ## A144916.P3499370879196066012

`(2*n)^A020639(A000010(a(n-2)))` with `a(0)=4, a(1)=7`
-/

namespace A144916.P3499370879196066012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 7] fun n a =>
  (2 * n : ℚ) ^ (A020639 (A000010 (SequenceMachineLib.roundAway (a (n - 2))).toNat).toNat : ℤ)

end

end A144916.P3499370879196066012

namespace A144916

/-- `(2*n)^A020639(A000010(a(n-2)))` -/
def P3499370879196066012.Spec : Prop :=
  ∀ n, P3499370879196066012.a n = (A144916 (n + 1) : ℚ)

end A144916

/-!
# A144917: a(n) is the maximal odd value attained by A144916(n).

The programs for A144917, there is no canonical definition to state claims against.
-/

/-! ## A144917.P6718675720769049564

`a(n-1)+6` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A144917.P6718675720769049564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  a (n - 1) + 6

end

end A144917.P6718675720769049564

/-!
# A144922: Numbers k such that k*sigma_2(k)/sigma_1(k) is an integer.

The programs for A144922, the canonical program `A144922.P10627848105805684585` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144922 has offset 1).

The definition of A144922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 570 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144922.P10627848105805684585

`eq[0, (n+1)%A158275(n+1)]+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A144922

/-- `eq[0, (n+1)%A158275(n+1)]+1` -/
def P10627848105805684585.Spec : Prop :=
  ∀ n, (P10627848105805684585.a n : ℤ) = A144922 (n + 1)

theorem P10627848105805684585.correct : P10627848105805684585.Spec := by
  intro n
  simp only [A144922, Nat.add_sub_cancel]

end A144922

/-!
# A144924: Number of partition-type permutations in S_n.

The programs for A144924, there is no canonical definition to state claims against.
-/

/-! ## A144924.P4840997889586634729

`A039708(A148431(n+1))`
-/

namespace A144924.P4840997889586634729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039708 (A148431 (n + 1)).toNat

end

end A144924.P4840997889586634729

/-! ## A144924.P2094361735280559777

`A347624(A052542(n))`
-/

namespace A144924.P2094361735280559777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347624 (A052542 n).toNat

end

end A144924.P2094361735280559777

/-!
# A144925: Number of nontrivial divisors of the n-th composite number.

The programs for A144925, the canonical program `A144925.P4715798082617986794` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144925 has offset 1).

The definition of A144925 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A070824, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A144925.P4715798082617986794

`A070824(A002808(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A144925

/-- `A070824(A002808(n+1))` -/
def P4715798082617986794.Spec : Prop :=
  ∀ n, P4715798082617986794.a n = A144925 (n + 1)

theorem P4715798082617986794.correct : P4715798082617986794.Spec := by
  intro n
  simp only [A144925, Nat.add_sub_cancel]

end A144925

/-! ## A144925.P3583665852339168035

`A000005(Δ[A053767(n)])-2`
-/

namespace A144925.P3583665852339168035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat - 2

end

end A144925.P3583665852339168035

namespace A144925

/-- `A000005(Δ[A053767(n)])-2` -/
def P3583665852339168035.Spec : Prop :=
  ∀ n, P3583665852339168035.a n = A144925 (n + 1)

end A144925

/-! ## A144925.P11327283099334779270

`A000005(comp[A351078(n)])-2`
-/

namespace A144925.P11327283099334779270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - 2

end

end A144925.P11327283099334779270

namespace A144925

/-- `A000005(comp[A351078(n)])-2` -/
def P11327283099334779270.Spec : Prop :=
  ∀ n, P11327283099334779270.a n = A144925 (n + 1)

end A144925

/-! ## A144925.P6973871055150959255

`A000005(A018252(n+2))-2`
-/

namespace A144925.P6973871055150959255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A018252 (n + 2)).toNat - 2

end

end A144925.P6973871055150959255

namespace A144925

/-- `A000005(A018252(n+2))-2` -/
def P6973871055150959255.Spec : Prop :=
  ∀ n, P6973871055150959255.a n = A144925 (n + 1)

end A144925

/-! ## A144925.P18346073694439981605

`A000005(A141468(n+3))-2`
-/

namespace A144925.P18346073694439981605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A141468 (n + 3)).toNat - 2

end

end A144925.P18346073694439981605

namespace A144925

/-- `A000005(A141468(n+3))-2` -/
def P18346073694439981605.Spec : Prop :=
  ∀ n, P18346073694439981605.a n = A144925 (n + 1)

end A144925

/-! ## A144925.P786661896675528255

`A000005(lt[1, A107463(n)])-2`
-/

namespace A144925.P786661896675528255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 2

end

end A144925.P786661896675528255

namespace A144925

/-- `A000005(lt[1, A107463(n)])-2` -/
def P786661896675528255.Spec : Prop :=
  ∀ n, P786661896675528255.a n = A144925 (n + 1)

end A144925

/-! ## A144925.P18033917048537820251

`A000005(lt[1, A328847(n)])-2`
-/

namespace A144925.P18033917048537820251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 2

end

end A144925.P18033917048537820251

namespace A144925

/-- `A000005(lt[1, A328847(n)])-2` -/
def P18033917048537820251.Spec : Prop :=
  ∀ n, P18033917048537820251.a n = A144925 (n + 1)

end A144925

/-! ## A144925.P16826285557420248923

`A000005(A072668(n+1)+1)-2`
-/

namespace A144925.P16826285557420248923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A072668 (n + 1) + 1).toNat - 2

end

end A144925.P16826285557420248923

namespace A144925

/-- `A000005(A072668(n+1)+1)-2` -/
def P16826285557420248923.Spec : Prop :=
  ∀ n, P16826285557420248923.a n = A144925 (n + 1)

end A144925

/-! ## A144925.P10571558662178010287

`A000005(A079696(n+1)-1)-2`
-/

namespace A144925.P10571558662178010287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A079696 (n + 1) - 1).toNat - 2

end

end A144925.P10571558662178010287

namespace A144925

/-- `A000005(A079696(n+1)-1)-2` -/
def P10571558662178010287.Spec : Prop :=
  ∀ n, P10571558662178010287.a n = A144925 (n + 1)

end A144925

/-! ## A144925.P3318446321508750299

`A000005(lt[2, A103509(n+1)])-2`
-/

namespace A144925.P3318446321508750299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 2

end

end A144925.P3318446321508750299

namespace A144925

/-- `A000005(lt[2, A103509(n+1)])-2` -/
def P3318446321508750299.Spec : Prop :=
  ∀ n, P3318446321508750299.a n = A144925 (n + 1)

end A144925

/-! ## A144925.P2551299540983934388

`A163838(n+1)/A002808(n+1)`
-/

namespace A144925.P2551299540983934388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163838 (n + 1) : ℚ) / (A002808 (n + 1) : ℚ)

end

end A144925.P2551299540983934388

namespace A144925

/-- `A163838(n+1)/A002808(n+1)` -/
def P2551299540983934388.Spec : Prop :=
  ∀ n, P2551299540983934388.a n = (A144925 (n + 1) : ℚ)

end A144925

/-! ## A144925.P2084635463948390698

`A163838(n+1)/A141468(n+3)`
-/

namespace A144925.P2084635463948390698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163838 (n + 1) : ℚ) / (A141468 (n + 3) : ℚ)

end

end A144925.P2084635463948390698

namespace A144925

/-- `A163838(n+1)/A141468(n+3)` -/
def P2084635463948390698.Spec : Prop :=
  ∀ n, P2084635463948390698.a n = (A144925 (n + 1) : ℚ)

end A144925

/-! ## A144925.P10961217062514252564

`A163838(n+1)%A072668(n+1)`
-/

namespace A144925.P10961217062514252564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163838 (n + 1)) (A072668 (n + 1))

end

end A144925.P10961217062514252564

namespace A144925

/-- `A163838(n+1)%A072668(n+1)` -/
def P10961217062514252564.Spec : Prop :=
  ∀ n, P10961217062514252564.a n = A144925 (n + 1)

end A144925

/-! ## A144925.P10745772226244111232

`A000005(comp[C(A006530(n+1), n)])-2`
-/

namespace A144925.P10745772226244111232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 2

end

end A144925.P10745772226244111232

namespace A144925

/-- `A000005(comp[C(A006530(n+1), n)])-2` -/
def P10745772226244111232.Spec : Prop :=
  ∀ n, P10745772226244111232.a n = A144925 (n + 1)

end A144925

/-! ## A144925.P4522575829571384724

`A000005(comp[C(A020639(n+1), n)])-2`
-/

namespace A144925.P4522575829571384724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 2

end

end A144925.P4522575829571384724

namespace A144925

/-- `A000005(comp[C(A020639(n+1), n)])-2` -/
def P4522575829571384724.Spec : Prop :=
  ∀ n, P4522575829571384724.a n = A144925 (n + 1)

end A144925

/-! ## A144925.P13310564190972142662

`A000005(lt[2, A000005(n+1)]+1)-2`
-/

namespace A144925.P13310564190972142662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) - 2

end

end A144925.P13310564190972142662

namespace A144925

/-- `A000005(lt[2, A000005(n+1)]+1)-2` -/
def P13310564190972142662.Spec : Prop :=
  ∀ n, P13310564190972142662.a n = A144925 (n + 1)

end A144925

/-! ## A144925.P1083333978576644595

`A000005(comp[A000040(n+1)-2]+2)-2`
-/

namespace A144925.P1083333978576644595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2) - 2

end

end A144925.P1083333978576644595

namespace A144925

/-- `A000005(comp[A000040(n+1)-2]+2)-2` -/
def P1083333978576644595.Spec : Prop :=
  ∀ n, P1083333978576644595.a n = A144925 (n + 1)

end A144925

/-! ## A144925.P1121657125754931503

`A023444(A000005(A018252(n+2)))`
-/

namespace A144925.P1121657125754931503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A000005 (A018252 (n + 2)).toNat).toNat

end

end A144925.P1121657125754931503

namespace A144925

/-- `A023444(A000005(A018252(n+2)))` -/
def P1121657125754931503.Spec : Prop :=
  ∀ n, P1121657125754931503.a n = A144925 (n + 1)

end A144925

/-! ## A144925.P8406306775386085679

`A163838(n+1)/(A022798(n+1)-A008578(n+1))`
-/

namespace A144925.P8406306775386085679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163838 (n + 1) : ℚ) / (A022798 (n + 1) - A008578 (n + 1) : ℚ)

end

end A144925.P8406306775386085679

namespace A144925

/-- `A163838(n+1)/(A022798(n+1)-A008578(n+1))` -/
def P8406306775386085679.Spec : Prop :=
  ∀ n, P8406306775386085679.a n = (A144925 (n + 1) : ℚ)

end A144925

/-! ## A144925.P3971070620869028956

`A163838(n+1)/(A079772(n+1)-A056608(n+1))`
-/

namespace A144925.P3971070620869028956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163838 (n + 1) : ℚ) / (A079772 (n + 1) - A056608 (n + 1) : ℚ)

end

end A144925.P3971070620869028956

namespace A144925

/-- `A163838(n+1)/(A079772(n+1)-A056608(n+1))` -/
def P3971070620869028956.Spec : Prop :=
  ∀ n, P3971070620869028956.a n = (A144925 (n + 1) : ℚ)

end A144925

/-!
# A144927: Numbers n such that there exists an integer k with (n+7)^3-n^3=k^2.

The programs for A144927, the canonical program `A144927.P9346811107420950621` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144927 has offset 1).

The definition of A144927 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144927.P9346811107420950621

`7*A144929(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A144927

/-- `7*A144929(n+1)` -/
def P9346811107420950621.Spec : Prop :=
  ∀ n, P9346811107420950621.a n = A144927 (n + 1)

theorem P9346811107420950621.correct : P9346811107420950621.Spec := by
  intro n
  simp only [A144927, Nat.add_sub_cancel]

end A144927

/-! ## A144927.P13397645401063103439

`7*floor(A042456(2*n)/18)`
-/

namespace A144927.P13397645401063103439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * ⌊(A042456 (2 * n) : ℚ) / 18⌋

end

end A144927.P13397645401063103439

namespace A144927

/-- `7*floor(A042456(2*n)/18)` -/
def P13397645401063103439.Spec : Prop :=
  ∀ n, P13397645401063103439.a n = A144927 (n + 1)

end A144927

/-! ## A144927.P15249288791792126609

`lcm(7, A144929(A000027(n+1)))`
-/

namespace A144927.P15249288791792126609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 (A144929 (A000027 (n + 1)).toNat)

end

end A144927.P15249288791792126609

namespace A144927

/-- `lcm(7, A144929(A000027(n+1)))` -/
def P15249288791792126609.Spec : Prop :=
  ∀ n, (P15249288791792126609.a n : ℤ) = A144927 (n + 1)

end A144927

/-! ## A144927.P6475571988002418644

`A144929(n+1)+A350967(n+1)-3`
-/

namespace A144927.P6475571988002418644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144929 (n + 1) + (A350967 (n + 1) - 3)

end

end A144927.P6475571988002418644

namespace A144927

/-- `A144929(n+1)+A350967(n+1)-3` -/
def P6475571988002418644.Spec : Prop :=
  ∀ n, P6475571988002418644.a n = A144927 (n + 1)

end A144927

/-!
# A144928: Values of k arising in A144927.

The programs for A144928, there is no canonical definition to state claims against.
-/

/-! ## A144928.P13446094730280840263

`49*A144930(n+1)`
-/

namespace A144928.P13446094730280840263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  49 * A144930 (n + 1)

end

end A144928.P13446094730280840263

/-! ## A144928.P11119807557967040106

`49*A041635(2*n)`
-/

namespace A144928.P11119807557967040106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  49 * A041635 (2 * n)

end

end A144928.P11119807557967040106

/-! ## A144928.P9898750584830197913

`49*A042457(2*n)`
-/

namespace A144928.P9898750584830197913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  49 * A042457 (2 * n)

end

end A144928.P9898750584830197913

/-! ## A144928.P12079810618094946678

`7/2*A145693(n+1)`
-/

namespace A144928.P12079810618094946678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) / 2 * (A145693 (n + 1) : ℚ)

end

end A144928.P12079810618094946678

/-! ## A144928.P12272497699139622191

`49*Δ[A174745(n+1)/12]`
-/

namespace A144928.P12272497699139622191
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174745 (n + 1) : ℚ) / 12

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  49 * (f1 (n + 1) - f1 n)

end

end A144928.P12272497699139622191

/-!
# A144929: Numbers n such that there exists an integer k with (n+1)^3 - n^3 = 7*k^2.

The programs for A144929, the canonical program `A144929.P33319433428821393` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144929 has offset 1).

The definition of A144929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144929.P33319433428821393

`54+110*a(n-1)-a(n-2)` with `a(0)=1, a(1)=166`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144929

/-- `54+110*a(n-1)-a(n-2)` -/
def P33319433428821393.Spec : Prop :=
  ∀ n, P33319433428821393.a n = A144929 (n + 1)

theorem P33319433428821393.correct : P33319433428821393.Spec := by
  intro n
  simp only [A144929, Nat.add_sub_cancel]

end A144929

/-! ## A144929.P2855704662069777906

`(A350967(n+1)-3)/6`
-/

namespace A144929.P2855704662069777906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350967 (n + 1) - 3 : ℚ) / 6

end

end A144929.P2855704662069777906

namespace A144929

/-- `(A350967(n+1)-3)/6` -/
def P2855704662069777906.Spec : Prop :=
  ∀ n, P2855704662069777906.a n = (A144929 (n + 1) : ℚ)

end A144929

/-! ## A144929.P5720883059225041473

`A144927(n+1)/7`
-/

namespace A144929.P5720883059225041473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144927 (n + 1) : ℚ) / 7

end

end A144929.P5720883059225041473

namespace A144929

/-- `A144927(n+1)/7` -/
def P5720883059225041473.Spec : Prop :=
  ∀ n, P5720883059225041473.a n = (A144929 (n + 1) : ℚ)

end A144929

/-! ## A144929.P2583832507756542100

`floor(A350967(n+1)/6)`
-/

namespace A144929.P2583832507756542100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A350967 (n + 1) : ℚ) / 6⌋

end

end A144929.P2583832507756542100

namespace A144929

/-- `floor(A350967(n+1)/6)` -/
def P2583832507756542100.Spec : Prop :=
  ∀ n, P2583832507756542100.a n = A144929 (n + 1)

end A144929

/-! ## A144929.P4452919778970211329

`floor(A041148(2*n)/6)`
-/

namespace A144929.P4452919778970211329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A041148 (2 * n) : ℚ) / 6⌋

end

end A144929.P4452919778970211329

namespace A144929

/-- `floor(A041148(2*n)/6)` -/
def P4452919778970211329.Spec : Prop :=
  ∀ n, P4452919778970211329.a n = A144929 (n + 1)

end A144929

/-!
# A144930: Numbers k arising in A144929.

The programs for A144930, there is no canonical definition to state claims against.
-/

/-! ## A144930.P14179886887176457581

`A041149(2*n)`
-/

namespace A144930.P14179886887176457581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041149 (2 * n)

end

end A144930.P14179886887176457581

/-! ## A144930.P9916021179966154611

`A041635(2*n)`
-/

namespace A144930.P9916021179966154611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041635 (2 * n)

end

end A144930.P9916021179966154611

/-! ## A144930.P69906580958100732

`A042457(2*n)`
-/

namespace A144930.P69906580958100732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042457 (2 * n)

end

end A144930.P69906580958100732

/-! ## A144930.P15913110792768815311

`A145693(n+1)/14`
-/

namespace A144930.P15913110792768815311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145693 (n + 1) : ℚ) / 14

end

end A144930.P15913110792768815311

/-! ## A144930.P6571404158104934269

`Δ[A174745(n+1)/12]`
-/

namespace A144930.P6571404158104934269
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174745 (n + 1) : ℚ) / 12

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144930.P6571404158104934269

/-!
# A144931: a(n) is the Mersenne number exponent for A144932(n).

The programs for A144931, there is no canonical definition to state claims against.
-/

/-! ## A144931.P2280979393090532530

`eq[1, ceil(4*sqrt(2^(n-1)))%2]+1`
-/

namespace A144931.P2280979393090532530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈4 * Real.sqrt ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌉ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A144931.P2280979393090532530

/-! ## A144931.P8009488274835707115

`lt[(2^n-floor(sqrt(2^n-1))²)², 2^n]`
-/

namespace A144931.P8009488274835707115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - Int.sqrt ((2 ^ n : ℤ) - 1) ^ 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A144931.P8009488274835707115

/-! ## A144931.P1963296574993866599

`2*A320985(n+1)-1`
-/

namespace A144931.P1963296574993866599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320985 (n + 1) - 1

end

end A144931.P1963296574993866599

/-! ## A144931.P11501473362753183250

`2*A246339(n+1)-3`
-/

namespace A144931.P11501473362753183250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A246339 (n + 1) - 3

end

end A144931.P11501473362753183250

/-! ## A144931.P3286050834965332432

`2*eq[0, A004539(n+1)]-1`
-/

namespace A144931.P3286050834965332432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A144931.P3286050834965332432

/-! ## A144931.P17546309611655980762

`2*(lt[A004539(n+2), 1]+2)-3`
-/

namespace A144931.P17546309611655980762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2) : ℤ) - 3

end

end A144931.P17546309611655980762

/-! ## A144931.P9849386254211012456

`A004273(A320985(n+1))`
-/

namespace A144931.P9849386254211012456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A320985 (n + 1)).toNat

end

end A144931.P9849386254211012456

/-! ## A144931.P4199792580641445229

`A004273(A246339(n+1)-1)`
-/

namespace A144931.P4199792580641445229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A246339 (n + 1) - 1).toNat

end

end A144931.P4199792580641445229

/-! ## A144931.P745305011742402419

`A005408(A320985(n+1)-1)`
-/

namespace A144931.P745305011742402419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A320985 (n + 1) - 1).toNat

end

end A144931.P745305011742402419

/-! ## A144931.P12107711027790807178

`A005408(A246339(n+1)-2)`
-/

namespace A144931.P12107711027790807178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A246339 (n + 1) - 2).toNat

end

end A144931.P12107711027790807178

/-!
# A144932: Integers n such that n^2 + k is a Mersenne number 2^m - 1 for some k < n and m odd.

The programs for A144932, there is no canonical definition to state claims against.
-/

/-! ## A144932.P2325542769457877421

`A017910(A144931(n+1))`
-/

namespace A144932.P2325542769457877421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (A144931 (n + 1)).toNat

end

end A144932.P2325542769457877421

/-! ## A144932.P2085912067892754543

`A084188(lt[A238455(n), 1])`
-/

namespace A144932.P2085912067892754543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238455 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084188 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A144932.P2085912067892754543

/-! ## A144932.P1397135448207794822

`A057048(A144931(n+1)-1)`
-/

namespace A144932.P1397135448207794822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057048 (A144931 (n + 1) - 1).toNat

end

end A144932.P1397135448207794822

/-! ## A144932.P11765280033062439054

`A116601(A144931(n+1)+2)`
-/

namespace A144932.P11765280033062439054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116601 (A144931 (n + 1) + 2).toNat

end

end A144932.P11765280033062439054

/-! ## A144932.P16797197429554723600

`A084188(A320985(n+1)-1)`
-/

namespace A144932.P16797197429554723600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084188 (A320985 (n + 1) - 1).toNat

end

end A144932.P16797197429554723600

/-!
# A144933: a(n) is the Mersenne number exponent for A144934(n).

The programs for A144933, there is no canonical definition to state claims against.
-/

/-! ## A144933.P11235449401739630465

`log2(Δ[A099972(n)]²)-1`
-/

namespace A144933.P11235449401739630465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099972 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((f1 (n + 1) - f1 n) ^ 2 : ℝ) - 1

end

end A144933.P11235449401739630465

/-! ## A144933.P11376464596379166580

`2*A092855(n+1)-1`
-/

namespace A144933.P11376464596379166580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092855 (n + 1) - 1

end

end A144933.P11376464596379166580

/-! ## A144933.P12611411699716458183

`2*A004713(n+2)-3`
-/

namespace A144933.P12611411699716458183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004713 (n + 2) - 3

end

end A144933.P12611411699716458183

/-! ## A144933.P18416903757735678897

`2*eq[1, A004539(n+2)]+1`
-/

namespace A144933.P18416903757735678897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A144933.P18416903757735678897

/-! ## A144933.P17121045275510957204

`record[(2*n+3)*A004539(n+3)]`
-/

namespace A144933.P17121045275510957204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A004539 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144933.P17121045275510957204

/-! ## A144933.P14446102129003805831

`A004273(A092855(n+1))`
-/

namespace A144933.P14446102129003805831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A092855 (n + 1)).toNat

end

end A144933.P14446102129003805831

/-! ## A144933.P9598020977073031932

`A004274(A004713(n+2))`
-/

namespace A144933.P9598020977073031932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A004713 (n + 2)).toNat

end

end A144933.P9598020977073031932

/-! ## A144933.P6373530946656435547

`lt[A056008(n), A017910(n)]`
-/

namespace A144933.P6373530946656435547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A144933.P6373530946656435547

/-! ## A144933.P8508953799548785006

`lt[A056008(n), A056007(n)]`
-/

namespace A144933.P8508953799548785006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A144933.P8508953799548785006

/-! ## A144933.P7598560903726247825

`lt[A056008(n), A136417(n)]`
-/

namespace A144933.P7598560903726247825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136417 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A144933.P7598560903726247825

/-!
# A144934: Integers n such that n^2 + k is a Mersenne number 2^m - 1 for some k such that n < k < 2 * n and m odd.

The programs for A144934, there is no canonical definition to state claims against.
-/

/-! ## A144934.P15488708105441687582

`floor(sqrt(2)^A144933(n+1))`
-/

namespace A144934.P15488708105441687582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) ^ (A144933 (n + 1) : ℤ)⌋

end

end A144934.P15488708105441687582

/-! ## A144934.P6590399454778696906

`A017910(A144933(n+1))`
-/

namespace A144934.P6590399454778696906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (A144933 (n + 1)).toNat

end

end A144934.P6590399454778696906

/-! ## A144934.P1841596086896350465

`A084188(lt[0, A238455(n)])`
-/

namespace A144934.P1841596086896350465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084188 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A144934.P1841596086896350465

/-! ## A144934.P10975051042500317178

`A084188(lt[2, ratio[A084188(n)]])`
-/

namespace A144934.P10975051042500317178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084188 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084188 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A144934.P10975051042500317178

/-! ## A144934.P9384580802923211872

`A084188(A092855(n+1)-1)`
-/

namespace A144934.P9384580802923211872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084188 (A092855 (n + 1) - 1).toNat

end

end A144934.P9384580802923211872

/-!
# A144935: Number of hyperforests with n labeled vertices when edges of size 1 are allowed (with no two equal edges), without isolated nodes nor isolated loops.

The programs for A144935, there is no canonical definition to state claims against.
-/

/-! ## A144935.P17034481901398402295

`A134956(n+1)-A144937(n+1)`
-/

namespace A144935.P17034481901398402295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134956 (n + 1) - A144937 (n + 1)

end

end A144935.P17034481901398402295

/-! ## A144935.P3470185362679151220

`A000079(n+1)*A304911(n+1)`
-/

namespace A144935.P3470185362679151220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A304911 (n + 1)

end

end A144935.P3470185362679151220

/-! ## A144935.P1409081438599861803

`A134956(n+1)/A134954(n+1)*A304911(n+1)`
-/

namespace A144935.P1409081438599861803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134956 (n + 1) : ℚ) / (A134954 (n + 1) : ℚ) * (A304911 (n + 1) : ℚ)

end

end A144935.P1409081438599861803

/-!
# A144937: Number of hyperforests with n labeled vertices when edges of size 1 are allowed (with no two equal edges), with at least one component of order 1.

The programs for A144937, there is no canonical definition to state claims against.
-/

/-! ## A144937.P17278058035800517132

`A134956(n+1)-A144935(n+1)`
-/

namespace A144937.P17278058035800517132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134956 (n + 1) - A144935 (n + 1)

end

end A144937.P17278058035800517132

/-! ## A144937.P461189402316788802

`A134956(n+1)-A000079(n+1)*A304911(n+1)`
-/

namespace A144937.P461189402316788802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134956 (n + 1) - A000079 (n + 1) * A304911 (n + 1)

end

end A144937.P461189402316788802

/-! ## A144937.P2669363331580162542

`A134956(n+1)-A134956(n+1)/A134954(n+1)*A304911(n+1)`
-/

namespace A144937.P2669363331580162542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134956 (n + 1) : ℚ) - (A134956 (n + 1) : ℚ) / (A134954 (n + 1) : ℚ) * (A304911 (n + 1) : ℚ)

end

end A144937.P2669363331580162542

/-!
# A144938: Squares k such that k - 2 and k + 2 are prime.

The programs for A144938, there is no canonical definition to state claims against.
-/

/-! ## A144938.P7381119538526486635

`A108701(n+1)²`
-/

namespace A144938.P7381119538526486635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108701 (n + 1) ^ 2

end

end A144938.P7381119538526486635

/-! ## A144938.P16503982277354014290

`A176130(n+1)+2`
-/

namespace A144938.P16503982277354014290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176130 (n + 1) + 2

end

end A144938.P16503982277354014290

/-! ## A144938.P11987735441988117467

`A108701(A000027(n+1))*A108701(n+1)`
-/

namespace A144938.P11987735441988117467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108701 (A000027 (n + 1)).toNat * A108701 (n + 1)

end

end A144938.P11987735441988117467

/-! ## A144938.P353013988448897960

`A108701(n+1)*A108701(A023443(n)+2)`
-/

namespace A144938.P353013988448897960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108701 (n + 1) * A108701 (A023443 n + 2).toNat

end

end A144938.P353013988448897960

/-! ## A144938.P17292293118411357120

`A108701(n+1)^A342085(A001358(n+1))`
-/

namespace A144938.P17292293118411357120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108701 (n + 1) : ℚ) ^ (A342085 (A001358 (n + 1)).toNat : ℤ)

end

end A144938.P17292293118411357120

/-! ## A144938.P10969523965597056739

`A108701(n+1)*A108701(A005408(n)-n)`
-/

namespace A144938.P10969523965597056739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108701 (n + 1) * A108701 (A005408 n - (n : ℤ)).toNat

end

end A144938.P10969523965597056739

/-! ## A144938.P12210658906875972833

`A108701(n+1)*A108701((n+1)%A108701(n+1))`
-/

namespace A144938.P12210658906875972833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108701 (n + 1) * A108701 (Int.tmod (n + 1 : ℤ) (A108701 (n + 1))).toNat

end

end A144938.P12210658906875972833

/-! ## A144938.P5513907675506357778

`A108701(n+1)^(2%A014132(A014132(n+1)))`
-/

namespace A144938.P5513907675506357778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108701 (n + 1) : ℚ) ^ (Int.tmod 2 (A014132 (A014132 (n + 1)).toNat) : ℤ)

end

end A144938.P5513907675506357778

/-! ## A144938.P1941918813976122022

`∩[A067201(n+1), A090120(n+1)]²`
-/

namespace A144938.P1941918813976122022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A144938.P1941918813976122022

/-! ## A144938.P13413838482447924967

`∩[A067201(n+1), A075190(n+1)]²`
-/

namespace A144938.P13413838482447924967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A144938.P13413838482447924967

/-! ## A144938.P9565059613839845034

`∩[A075190(n+1), A090120(n+1)]²`
-/

namespace A144938.P9565059613839845034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A144938.P9565059613839845034

/-! ## A144938.P8932416149953991499

`∩[A201860(n+1), A242380(n+1)]+2`
-/

namespace A144938.P8932416149953991499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A144938.P8932416149953991499

/-! ## A144938.P15533734415462209498

`∩[A028870(n+1), A067201(n+1)]²`
-/

namespace A144938.P15533734415462209498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A144938.P15533734415462209498

/-! ## A144938.P16984555430723637405

`∩[A028870(n+1), A090120(n+1)]²`
-/

namespace A144938.P16984555430723637405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A144938.P16984555430723637405

/-! ## A144938.P3901381948052389742

`∩[A028871(n+1), A242380(n+1)]+2`
-/

namespace A144938.P3901381948052389742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A144938.P3901381948052389742

/-! ## A144938.P12011231802617397702

`∩[A028871(n+1), A225195(n+1)]+2`
-/

namespace A144938.P12011231802617397702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A144938.P12011231802617397702

/-! ## A144938.P3166709975995623440

`∩[A201860(n+1), A225195(n+1)]+2`
-/

namespace A144938.P3166709975995623440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A144938.P3166709975995623440

/-! ## A144938.P636966692479573952

`∩[A090120(n+1), A016945(n)]²`
-/

namespace A144938.P636966692479573952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A144938.P636966692479573952

/-! ## A144938.P14479912946564618099

`∩[A090120(n+1), A091361(n+1)]²`
-/

namespace A144938.P14479912946564618099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A144938.P14479912946564618099

/-!
# A144941: Numbers k such that 6*k-1 = A144796(k).

The programs for A144941, there is no canonical definition to state claims against.
-/

/-! ## A144941.P10440005246663596284

`ceil(A144796(n+1)/6)`
-/

namespace A144941.P10440005246663596284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A144796 (n + 1) : ℚ) / 6⌉

end

end A144941.P10440005246663596284

/-! ## A144941.P15726492517070795943

`ceil(A077242(n%2+4*n)/6)`
-/

namespace A144941.P15726492517070795943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077242 (n % 2 + 4 * n) : ℚ) / 6⌉

end

end A144941.P15726492517070795943

/-! ## A144941.P14727834888822833139

`ceil(A077242(A047615(n+1))/6)`
-/

namespace A144941.P14727834888822833139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077242 (A047615 (n + 1)).toNat : ℚ) / 6⌉

end

end A144941.P14727834888822833139

/-! ## A144941.P17055447868446127109

`(3*A251864(n+1))%A251863(n+1)`
-/

namespace A144941.P17055447868446127109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A251864 (n + 1)) (A251863 (n + 1))

end

end A144941.P17055447868446127109

/-!
# A144942: Expansion of x^2*(3*x^3+145*x^2-507*x-25) / ((x-1)*(x^2-34*x+1)*(x^2+34*x+1)).

The programs for A144942, there is no canonical definition to state claims against.
-/

/-! ## A144942.P10835441300389021976

`floor(A144941(n+1)/sqrt(2))`
-/

namespace A144942.P10835441300389021976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A144941 (n + 1) : ℝ) / Real.sqrt (2 : ℝ)⌋

end

end A144942.P10835441300389021976

/-! ## A144942.P2935298820608844443

`(3*A251863(n+1))%A251864(n+1)`
-/

namespace A144942.P2935298820608844443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A251863 (n + 1)) (A251864 (n + 1))

end

end A144942.P2935298820608844443

/-! ## A144942.P3408622570086632661

`floor(sqrt(A133301(n+1)/3))`
-/

namespace A144942.P3408622570086632661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A133301 (n + 1) : ℚ) / 3 : ℝ)⌋

end

end A144942.P3408622570086632661

/-!
# A144943: a(n) = number of divisors of n^3 (excluding 1 and n^3).

The programs for A144943, the canonical program `A144943.P9912739384439111059` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144943 has offset 1).

The definition of A144943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144943.P16704333350667807343

`A294072(n+1)+A070824(n+1)`
-/

namespace A144943.P16704333350667807343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294072 (n + 1) + A070824 (n + 1)

end

end A144943.P16704333350667807343

namespace A144943

/-- `A294072(n+1)+A070824(n+1)` -/
def P16704333350667807343.Spec : Prop :=
  ∀ n, P16704333350667807343.a n = A144943 (n + 1)

end A144943

/-! ## A144943.P9912739384439111059

`A048785(n+1)+A000007(n)-2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A144943

/-- `A048785(n+1)+A000007(n)-2` -/
def P9912739384439111059.Spec : Prop :=
  ∀ n, P9912739384439111059.a n = A144943 (n + 1)

theorem P9912739384439111059.correct : P9912739384439111059.Spec := by
  intro n
  simp only [A144943, Nat.add_sub_cancel]

end A144943

/-! ## A144943.P2855043312566392822

`A048785(n+1)-A040001(2*n)`
-/

namespace A144943.P2855043312566392822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (n + 1) - A040001 (2 * n)

end

end A144943.P2855043312566392822

namespace A144943

/-- `A048785(n+1)-A040001(2*n)` -/
def P2855043312566392822.Spec : Prop :=
  ∀ n, P2855043312566392822.a n = A144943 (n + 1)

end A144943

/-! ## A144943.P7234134657783007480

`A048785(n+1)-A040002(n)/2`
-/

namespace A144943.P7234134657783007480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048785 (n + 1) : ℚ) - (A040002 n : ℚ) / 2

end

end A144943.P7234134657783007480

namespace A144943

/-- `A048785(n+1)-A040002(n)/2` -/
def P7234134657783007480.Spec : Prop :=
  ∀ n, P7234134657783007480.a n = (A144943 (n + 1) : ℚ)

end A144943

/-! ## A144943.P15906465717035845003

`A048785(n+1)-gcd(2, A046523(n+1))`
-/

namespace A144943.P15906465717035845003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (n + 1) - (Int.gcd 2 (A046523 (n + 1)) : ℤ)

end

end A144943.P15906465717035845003

namespace A144943

/-- `A048785(n+1)-gcd(2, A046523(n+1))` -/
def P15906465717035845003.Spec : Prop :=
  ∀ n, P15906465717035845003.a n = A144943 (n + 1)

end A144943

/-! ## A144943.P17659674509250610303

`A096500(2*n+1)+A048785(n+1)-2`
-/

namespace A144943.P17659674509250610303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096500 (2 * n + 1) + (A048785 (n + 1) - 2)

end

end A144943.P17659674509250610303

namespace A144943

/-- `A096500(2*n+1)+A048785(n+1)-2` -/
def P17659674509250610303.Spec : Prop :=
  ∀ n, P17659674509250610303.a n = A144943 (n + 1)

end A144943

/-! ## A144943.P18436745341332301230

`A048785(n+1)-A020639(A004277(n))`
-/

namespace A144943.P18436745341332301230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (n + 1) - A020639 (A004277 n).toNat

end

end A144943.P18436745341332301230

namespace A144943

/-- `A048785(n+1)-A020639(A004277(n))` -/
def P18436745341332301230.Spec : Prop :=
  ∀ n, P18436745341332301230.a n = A144943 (n + 1)

end A144943

/-! ## A144943.P24002718344500981

`A048785(n+1)-A034444(A034444(n+1))`
-/

namespace A144943.P24002718344500981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (n + 1) - A034444 (A034444 (n + 1)).toNat

end

end A144943.P24002718344500981

namespace A144943

/-- `A048785(n+1)-A034444(A034444(n+1))` -/
def P24002718344500981.Spec : Prop :=
  ∀ n, P24002718344500981.a n = A144943 (n + 1)

end A144943

/-! ## A144943.P7281671600245169931

`A048785(n+1)-A016515(gcd(n, A106756(n+1))+1)`
-/

namespace A144943.P7281671600245169931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (n + 1) - A016515 (Int.gcd (n : ℤ) (A106756 (n + 1)) + 1)

end

end A144943.P7281671600245169931

namespace A144943

/-- `A048785(n+1)-A016515(gcd(n, A106756(n+1))+1)` -/
def P7281671600245169931.Spec : Prop :=
  ∀ n, P7281671600245169931.a n = A144943 (n + 1)

end A144943

/-! ## A144943.P12947190595274934142

`A048785(n+1)-A006530(A048785(A006530(n+1)))`
-/

namespace A144943.P12947190595274934142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (n + 1) - A006530 (A048785 (A006530 (n + 1)).toNat).toNat

end

end A144943.P12947190595274934142

namespace A144943

/-- `A048785(n+1)-A006530(A048785(A006530(n+1)))` -/
def P12947190595274934142.Spec : Prop :=
  ∀ n, P12947190595274934142.a n = A144943 (n + 1)

end A144943

/-! ## A144943.P4081540593802723059

`(A048785(n+1)-2)%A001182(n+2)`
-/

namespace A144943.P4081540593802723059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048785 (n + 1) - 2) (A001182 (n + 2))

end

end A144943.P4081540593802723059

namespace A144943

/-- `(A048785(n+1)-2)%A001182(n+2)` -/
def P4081540593802723059.Spec : Prop :=
  ∀ n, P4081540593802723059.a n = A144943 (n + 1)

end A144943

/-! ## A144943.P2136308406402293341

`A004277(2*n)+A048785(n+1)-(4*n+2)`
-/

namespace A144943.P2136308406402293341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) + (A048785 (n + 1) - (4 * n + 2 : ℤ))

end

end A144943.P2136308406402293341

namespace A144943

/-- `A004277(2*n)+A048785(n+1)-(4*n+2)` -/
def P2136308406402293341.Spec : Prop :=
  ∀ n, P2136308406402293341.a n = A144943 (n + 1)

end A144943

/-! ## A144943.P14113808339854908067

`A154282(2*n+1)+A048785(n+1)-2`
-/

namespace A144943.P14113808339854908067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154282 (2 * n + 1) + (A048785 (n + 1) - 2)

end

end A144943.P14113808339854908067

namespace A144943

/-- `A154282(2*n+1)+A048785(n+1)-2` -/
def P14113808339854908067.Spec : Prop :=
  ∀ n, P14113808339854908067.a n = A144943 (n + 1)

end A144943

/-! ## A144943.P126012679838599187

`A048785(n+1)-A014963(A165825(2*n+1))`
-/

namespace A144943.P126012679838599187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (n + 1) - A014963 (A165825 (2 * n + 1)).toNat

end

end A144943.P126012679838599187

namespace A144943

/-- `A048785(n+1)-A014963(A165825(2*n+1))` -/
def P126012679838599187.Spec : Prop :=
  ∀ n, P126012679838599187.a n = A144943 (n + 1)

end A144943

/-! ## A144943.P9101922822464032306

`A048785(n+1)-A000122(n²)`
-/

namespace A144943.P9101922822464032306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (n + 1) - A000122 (n ^ 2)

end

end A144943.P9101922822464032306

namespace A144943

/-- `A048785(n+1)-A000122(n²)` -/
def P9101922822464032306.Spec : Prop :=
  ∀ n, P9101922822464032306.a n = A144943 (n + 1)

end A144943

/-!
# A144944: Super-Catalan triangle (read by rows) = triangular array associated with little Schroeder numbers (read by rows): T(0,0)=1, T(p,q) = T(p,q-1) if 0 < p = q, T(p,q) = T(p,q-1) + T(p-1,q) + T(p-1,q-1) if -1 < p < q and T(p,q) = 0 otherwise.

The programs for A144944, there is no canonical definition to state claims against.
-/

/-! ## A144944.P9640827706144714788

`A033878(n)+a(n-2)%a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A144944.P9640827706144714788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A033878 n + Int.tmod (a (n - 2)) (a (n - 1))

end

end A144944.P9640827706144714788

/-! ## A144944.P3611097941279043538

`A186826(A061579(n))`
-/

namespace A144944.P3611097941279043538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186826 (A061579 n).toNat

end

end A144944.P3611097941279043538

/-! ## A144944.P15364360530613557728

`A186826(A114327(n)+n)`
-/

namespace A144944.P15364360530613557728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186826 (A114327 n + (n : ℤ)).toNat

end

end A144944.P15364360530613557728

/-! ## A144944.P8170545103447139462

`A186826(A038722(n+1)-1)`
-/

namespace A144944.P8170545103447139462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186826 (A038722 (n + 1) - 1).toNat

end

end A144944.P8170545103447139462

/-! ## A144944.P14755260299664546838

`A186826(A023443(A038722(n+1)))`
-/

namespace A144944.P14755260299664546838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186826 (A023443 (A038722 (n + 1)).toNat).toNat

end

end A144944.P14755260299664546838

/-! ## A144944.P6255333806697247246

`A186826(A057944(n)+A025581(n))`
-/

namespace A144944.P6255333806697247246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186826 (A057944 n + A025581 n).toNat

end

end A144944.P6255333806697247246

/-! ## A144944.P8959363021534756330

`A186826(A002378(n)%A014132(n+1))`
-/

namespace A144944.P8959363021534756330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186826 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A144944.P8959363021534756330

/-!
# A144945: Number of ways to place 2 queens on an n X n chessboard so that they attack each other.

The programs for A144945, the canonical program `A144945.P8746808505094753282` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144945 has offset 1).

The definition of A144945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144945.P3853507656251457612

`(n+1)*(5*(n+1)-1)*n/3`
-/

namespace A144945.P3853507656251457612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((5 * (n + 1) : ℤ) - 1) * (n : ℤ) : ℚ) / 3

end

end A144945.P3853507656251457612

namespace A144945

/-- `(n+1)*(5*(n+1)-1)*n/3` -/
def P3853507656251457612.Spec : Prop :=
  ∀ n, P3853507656251457612.a n = (A144945 (n + 1) : ℚ)

theorem P3853507656251457612.correct : P3853507656251457612.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A144945, Nat.add_sub_cancel, A144945.P3853507656251457612.a, A144945.P8746808505094753282.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A144945, Nat.add_sub_cancel, A144945.P3853507656251457612.a, A144945.P8746808505094753282.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A144945

/-! ## A144945.P8746808505094753282

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=6, a(2)=28, a(3)=76`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144945

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P8746808505094753282.Spec : Prop :=
  ∀ n, P8746808505094753282.a n = A144945 (n + 1)

theorem P8746808505094753282.correct : P8746808505094753282.Spec := by
  intro n
  simp only [A144945, Nat.add_sub_cancel]

end A144945

/-! ## A144945.P18379383955163984392

`a(n-1)+2*A005475(n)` with `a(0)=0`
-/

namespace A144945.P18379383955163984392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * A005475 n

end

end A144945.P18379383955163984392

namespace A144945

/-- `a(n-1)+2*A005475(n)` -/
def P18379383955163984392.Spec : Prop :=
  ∀ n, P18379383955163984392.a n = A144945 (n + 1)

end A144945

/-! ## A144945.P16317403899707686225

`∑[∑[ogf((6x+4x^2)/(1-2x+x^2))]]`
-/

namespace A144945.P16317403899707686225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 4] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144945.P16317403899707686225

namespace A144945

/-- `∑[∑[ogf((6x+4x^2)/(1-2x+x^2))]]` -/
def P16317403899707686225.Spec : Prop :=
  ∀ n, P16317403899707686225.a n = A144945 (n + 1)

end A144945

/-! ## A144945.P13677527367613736204

`ogf((6x+4x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A144945.P13677527367613736204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 4] [1, -4, 6, -4, 1] n

end

end A144945.P13677527367613736204

namespace A144945

/-- `ogf((6x+4x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P13677527367613736204.Spec : Prop :=
  ∀ n, P13677527367613736204.a n = A144945 (n + 1)

end A144945

/-! ## A144945.P11104846290380010029

`floor(∑[∑[a(n-1)+10]])` with `a(0)=0, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A144945.P11104846290380010029
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f2 =>
  f2 (n - 1) + 10

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144945.P11104846290380010029

namespace A144945

/-- `floor(∑[∑[a(n-1)+10]])` -/
def P11104846290380010029.Spec : Prop :=
  ∀ n, (P11104846290380010029.a n : ℤ) = A144945 (n + 1)

end A144945

/-! ## A144945.P8758630439962131098

`2*∑[∑[a(n-1)+5]]` with `a(0)=0, a(1)=3`
-/

namespace A144945.P8758630439962131098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A144945.P8758630439962131098

namespace A144945

/-- `2*∑[∑[a(n-1)+5]]` -/
def P8758630439962131098.Spec : Prop :=
  ∀ n, (P8758630439962131098.a n : ℤ) = A144945 (n + 1)

end A144945

/-! ## A144945.P16150881929221751364

`5*n²+a(n-1)+n` with `a(0)=0`
-/

namespace A144945.P16150881929221751364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  5 * n ^ 2 + (a (n - 1) + n)

end

end A144945.P16150881929221751364

namespace A144945

/-- `5*n²+a(n-1)+n` -/
def P16150881929221751364.Spec : Prop :=
  ∀ n, (P16150881929221751364.a n : ℤ) = A144945 (n + 1)

end A144945

/-! ## A144945.P14539021913511987652

`2*∑[2-∑[a(n-1)-5]]` with `a(0)=2`
-/

namespace A144945.P14539021913511987652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A144945.P14539021913511987652

namespace A144945

/-- `2*∑[2-∑[a(n-1)-5]]` -/
def P14539021913511987652.Spec : Prop :=
  ∀ n, P14539021913511987652.a n = A144945 (n + 1)

end A144945

/-! ## A144945.P7219316590562294839

`a(n-1)+n*(5*n+1)` with `a(0)=0`
-/

namespace A144945.P7219316590562294839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n * (5 * n + 1)

end

end A144945.P7219316590562294839

namespace A144945

/-- `a(n-1)+n*(5*n+1)` -/
def P7219316590562294839.Spec : Prop :=
  ∀ n, (P7219316590562294839.a n : ℤ) = A144945 (n + 1)

end A144945

/-! ## A144945.P11698333812521408912

`∑[a(n-1)+10]+a(n-1)` with `a(0)=0, a(1)=6`
-/

namespace A144945.P11698333812521408912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A144945.P11698333812521408912

namespace A144945

/-- `∑[a(n-1)+10]+a(n-1)` -/
def P11698333812521408912.Spec : Prop :=
  ∀ n, (P11698333812521408912.a n : ℤ) = A144945 (n + 1)

end A144945

/-! ## A144945.P12358731364263917537

`∑[n*2*n]+lcm(n, ∑[2*n+1])`
-/

namespace A144945.P12358731364263917537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm n (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A144945.P12358731364263917537

namespace A144945

/-- `∑[n*2*n]+lcm(n, ∑[2*n+1])` -/
def P12358731364263917537.Spec : Prop :=
  ∀ n, (P12358731364263917537.a n : ℤ) = A144945 (n + 1)

end A144945

/-! ## A144945.P16900019256194433129

`∑[C(2*n+1, 2)]+(2*n+1)*∑[n]`
-/

namespace A144945.P16900019256194433129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A144945.P16900019256194433129

namespace A144945

/-- `∑[C(2*n+1, 2)]+(2*n+1)*∑[n]` -/
def P16900019256194433129.Spec : Prop :=
  ∀ n, (P16900019256194433129.a n : ℤ) = A144945 (n + 1)

end A144945

/-! ## A144945.P4315760735958923870

`∑[A202803(n)]`
-/

namespace A144945.P4315760735958923870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144945.P4315760735958923870

namespace A144945

/-- `∑[A202803(n)]` -/
def P4315760735958923870.Spec : Prop :=
  ∀ n, P4315760735958923870.a n = A144945 (n + 1)

end A144945

/-! ## A144945.P10217024865182916507

`2*A162147(n)`
-/

namespace A144945.P10217024865182916507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162147 n

end

end A144945.P10217024865182916507

namespace A144945

/-- `2*A162147(n)` -/
def P10217024865182916507.Spec : Prop :=
  ∀ n, P10217024865182916507.a n = A144945 (n + 1)

end A144945

/-! ## A144945.P12885747559398017467

`∑[2*A005475(n)]`
-/

namespace A144945.P12885747559398017467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144945.P12885747559398017467

namespace A144945

/-- `∑[2*A005475(n)]` -/
def P12885747559398017467.Spec : Prop :=
  ∀ n, P12885747559398017467.a n = A144945 (n + 1)

end A144945

/-! ## A144945.P7439492494437342963

`∑[A033429(n)+n]`
-/

namespace A144945.P7439492494437342963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033429 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144945.P7439492494437342963

namespace A144945

/-- `∑[A033429(n)+n]` -/
def P7439492494437342963.Spec : Prop :=
  ∀ n, P7439492494437342963.a n = A144945 (n + 1)

end A144945

/-! ## A144945.P13544662763566228940

`∑[A168668(n)-n]`
-/

namespace A144945.P13544662763566228940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168668 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144945.P13544662763566228940

namespace A144945

/-- `∑[A168668(n)-n]` -/
def P13544662763566228940.Spec : Prop :=
  ∀ n, P13544662763566228940.a n = A144945 (n + 1)

end A144945

/-! ## A144945.P17641597951227631296

`∑[n*A016861(n)]`
-/

namespace A144945.P17641597951227631296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A016861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144945.P17641597951227631296

namespace A144945

/-- `∑[n*A016861(n)]` -/
def P17641597951227631296.Spec : Prop :=
  ∀ n, P17641597951227631296.a n = A144945 (n + 1)

end A144945

/-! ## A144945.P6187228364482456110

`∑[A007742(n)+n²]`
-/

namespace A144945.P6187228364482456110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144945.P6187228364482456110

namespace A144945

/-- `∑[A007742(n)+n²]` -/
def P6187228364482456110.Spec : Prop :=
  ∀ n, P6187228364482456110.a n = A144945 (n + 1)

end A144945

/-!
# A144949: Consider numbers x,y,z such that UnitarySigma(x) = UnitarySigma(y) = UnitarySigma(z) = 4*(x*y*z)^(1/2)/( x^(1/2) + y^(1/2) + z^(1/2)), x<=y<=z . Sequence gives x .

The programs for A144949, there is no canonical definition to state claims against.
-/

/-! ## A144949.P7369900150770852718

`A144950(A030283(n)+1)`
-/

namespace A144949.P7369900150770852718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144950 (A030283 n + 1).toNat

end

end A144949.P7369900150770852718

/-! ## A144949.P13720656845098821005

`A144950(A062399(n)+1)`
-/

namespace A144949.P13720656845098821005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144950 (A062399 n + 1).toNat

end

end A144949.P13720656845098821005

/-! ## A144949.P6600257083049224493

`A144950(A077741(n+1))`
-/

namespace A144949.P6600257083049224493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144950 (A077741 (n + 1)).toNat

end

end A144949.P6600257083049224493

/-! ## A144949.P5883783340461441024

`A144950(A179309(n+1))`
-/

namespace A144949.P5883783340461441024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144950 (A179309 (n + 1)).toNat

end

end A144949.P5883783340461441024

/-! ## A144949.P9440349467201285347

`A144950(∑[A336169(n)!])`
-/

namespace A144949.P9440349467201285347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A336169 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144950 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A144949.P9440349467201285347

/-!
# A144952: Total walk count of molecular graphs for linear alkanes with n carbon atoms.

The programs for A144952, there is no canonical definition to state claims against.
-/

/-! ## A144952.P12691529577947235144

`∑[A182555(n)-1]`
-/

namespace A144952.P12691529577947235144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182555 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144952.P12691529577947235144

/-! ## A144952.P5671272778656792702

`∑[2^n+A206603(n)-1]`
-/

namespace A144952.P5671272778656792702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (A206603 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144952.P5671272778656792702

/-! ## A144952.P10581749078209795197

`∑[A206603(n)+A000225(n)]`
-/

namespace A144952.P10581749078209795197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 n + A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144952.P10581749078209795197

/-! ## A144952.P7735169586692897805

`∑[A047859(n)-A099325(n)]`
-/

namespace A144952.P7735169586692897805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047859 n - A099325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144952.P7735169586692897805

/-! ## A144952.P11284523299630145908

`∑[A206603(n)+∑[A131577(n)]]`
-/

namespace A144952.P11284523299630145908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144952.P11284523299630145908

/-!
# A144953: Primes of form n^3 + 2.

The programs for A144953, there is no canonical definition to state claims against.
-/

/-! ## A144953.P14967376807254007313

`A067200(n+1)^3+2`
-/

namespace A144953.P14967376807254007313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067200 (n + 1) ^ 3 + 2

end

end A144953.P14967376807254007313

/-! ## A144953.P5937847229478807952

`A000005(A048637(n+1))+A067200(n+1)²*A067200(n+1)`
-/

namespace A144953.P5937847229478807952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A048637 (n + 1)).toNat + A067200 (n + 1) ^ 2 * A067200 (n + 1)

end

end A144953.P5937847229478807952

/-! ## A144953.P1647995428901640676

`A084380(A067200(n+1))`
-/

namespace A144953.P1647995428901640676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084380 (A067200 (n + 1)).toNat

end

end A144953.P1647995428901640676

/-!
# A144954: a(n) = start of a sequence of at least n consecutive primes, p_1, p_2, ..., p_n (say), all == 1 mod 4, such that A(p_1) > A(p_2) > ... > A(p_n), where A(p) (see A145010) is the area of the Pythagorean triangle with hypotenuse p.

The programs for A144954, there is no canonical definition to state claims against.
-/

/-! ## A144954.P1737862496512974514

`A144960(∑[n]+1)`
-/

namespace A144954.P1737862496512974514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144960 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A144954.P1737862496512974514

/-! ## A144954.P10014115503897840345

`p?[A144960(A000124(n))]`
-/

namespace A144954.P10014115503897840345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144960 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144954.P10014115503897840345

/-! ## A144954.P14685778839285697969

`p?[A144960(∑[A028310(n)])]`
-/

namespace A144954.P14685778839285697969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144960 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144954.P14685778839285697969

/-! ## A144954.P1027178193724873904

`p?[A144960(∑[A085158(n)])]`
-/

namespace A144954.P1027178193724873904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144960 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144954.P1027178193724873904

/-!
# A144955: Binomial transform of a modified version of A026729.

The programs for A144955, there is no canonical definition to state claims against.
-/

/-! ## A144955.P9835637588541403311

`A128908(n+1)+A035214(n)-A000120(A101656(n))`
-/

namespace A144955.P9835637588541403311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128908 (n + 1) + A035214 n - A000120 (A101656 n).toNat

end

end A144955.P9835637588541403311

/-! ## A144955.P1254089498706459033

`A128908(n+1)+A035214(n)-A089447(A034554(n+1))`
-/

namespace A144955.P1254089498706459033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128908 (n + 1) + A035214 n - A089447 (A034554 (n + 1)).toNat

end

end A144955.P1254089498706459033

/-! ## A144955.P11788364457562858680

`A128908(n+1)+A035214(n)-A206719(A246488(n+1))`
-/

namespace A144955.P11788364457562858680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128908 (n + 1) + A035214 n - A206719 (A246488 (n + 1)).toNat

end

end A144955.P11788364457562858680

/-! ## A144955.P17128807885352434507

`A128908(n+1)+A035214(n)-A033999(4*A000566(n))`
-/

namespace A144955.P17128807885352434507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128908 (n + 1) + A035214 n - A033999 (4 * A000566 n).toNat

end

end A144955.P17128807885352434507

/-! ## A144955.P1259398032977410609

`A128908(n+1)+A035214(n)-A070950(A167349(n+1))`
-/

namespace A144955.P1259398032977410609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128908 (n + 1) + A035214 n - A070950 (A167349 (n + 1)).toNat

end

end A144955.P1259398032977410609

/-!
# A144958: Number of unlabeled acyclic graphs covering n vertices.

The programs for A144958, there is no canonical definition to state claims against.
-/

/-! ## A144958.P4137235541670536673

`A144978(n)-a(n-1)` with `a(0)=1`
-/

namespace A144958.P4137235541670536673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A144978 n - a (n - 1)

end

end A144958.P4137235541670536673

/-! ## A144958.P2005577723542378875

`A144978(n+1)+A005195(n)-A005195(n+1)`
-/

namespace A144958.P2005577723542378875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144978 (n + 1) + (A005195 n - A005195 (n + 1))

end

end A144958.P2005577723542378875

/-! ## A144958.P4091539289552332807

`A000196(A306005(n)*A306006(n))`
-/

namespace A144958.P4091539289552332807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A306005 n * A306006 n).toNat

end

end A144958.P4091539289552332807

/-! ## A144958.P1688490701046776210

`A121900(A151466(n))`
-/

namespace A144958.P1688490701046776210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A151466 n).toNat

end

end A144958.P1688490701046776210

/-! ## A144958.P2442280924348826193

`A072089(A337089(n+1))`
-/

namespace A144958.P2442280924348826193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (A337089 (n + 1)).toNat

end

end A144958.P2442280924348826193

/-!
# A144959: a(n) = A134955(n) - A134955(n-1). Number of hyperforests spanning n unlabeled nodes without isolated vertices.

The programs for A144959, there is no canonical definition to state claims against.
-/

/-! ## A144959.P15302350274142491807

`A144977(n)-a(n-1)` with `a(0)=1`
-/

namespace A144959.P15302350274142491807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A144977 n - a (n - 1)

end

end A144959.P15302350274142491807

/-! ## A144959.P6784500490149191623

`A144977(n+1)-Δ[A134955(n)]`
-/

namespace A144959.P6784500490149191623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144977 (n + 1) - (f1 (n + 1) - f1 n)

end

end A144959.P6784500490149191623

/-! ## A144959.P9655146375785192042

`A144977(n+1)+A134955(n)-A134955(n+1)`
-/

namespace A144959.P9655146375785192042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144977 (n + 1) + (A134955 n - A134955 (n + 1))

end

end A144959.P9655146375785192042

/-! ## A144959.P7031478711852137445

`or(A055679(A148687(n)), A189233(n))`
-/

namespace A144959.P7031478711852137445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055679 (A148687 n).toNat) (A189233 n)

end

end A144959.P7031478711852137445

/-! ## A144959.P1497290730741957371

`or(A055679(A148687(n)), A262372(n))`
-/

namespace A144959.P1497290730741957371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055679 (A148687 n).toNat) (A262372 n)

end

end A144959.P1497290730741957371

/-!
# A144960: Triangle of primes described in A144954, read by rows.

The programs for A144960, there is no canonical definition to state claims against.
-/

/-! ## A144960.P1446069998580264252

`p?[A115035(n+4)%A114998(n+1)]`
-/

namespace A144960.P1446069998580264252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115035 (n + 4)) (A114998 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144960.P1446069998580264252

/-!
# A144961: Eigentriangle whose left border is the Padovan sequence, and whose right border and row sums are a modified Fibonacci sequence.

The programs for A144961, there is no canonical definition to state claims against.
-/

/-! ## A144961.P7879792955337501054

`A145765(n+1)^A145770(A128177(n+1))`
-/

namespace A144961.P7879792955337501054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145765 (n + 1) : ℚ) ^ (A145770 (A128177 (n + 1)).toNat : ℤ)

end

end A144961.P7879792955337501054

/-! ## A144961.P11383903782179821184

`A185274(A320659(3*n+1))+A157424(n+1)`
-/

namespace A144961.P11383903782179821184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185274 (A320659 (3 * n + 1)).toNat + A157424 (n + 1)

end

end A144961.P11383903782179821184

/-! ## A144961.P10776370902628918534

`A145765(n*A046094(a(n-1)^a(n-1)+1)+1)` with `a(0)=1`
-/

namespace A144961.P10776370902628918534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A145765 ((n : ℤ) * A046094 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) ^ (a (n - 1) : ℤ) + 1)).toNat + 1).toNat

end

end A144961.P10776370902628918534

/-! ## A144961.P8303863491957694295

`A145765(n+1)+A102683(A262616(n))`
-/

namespace A144961.P8303863491957694295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145765 (n + 1) + A102683 (A262616 n).toNat

end

end A144961.P8303863491957694295

/-! ## A144961.P13169972248220526061

`A157424(n+1)^A004016(A324326(3*n+1))`
-/

namespace A144961.P13169972248220526061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157424 (n + 1) : ℚ) ^ (A004016 (A324326 (3 * n + 1)).toNat : ℤ)

end

end A144961.P13169972248220526061

/-!
# A144962: Eigentriangle, row sums = A000084.

The programs for A144962, there is no canonical definition to state claims against.
-/

/-! ## A144962.P11592763205133548802

`A152736(n+1)-A007030(A106240(n+1))`
-/

namespace A144962.P11592763205133548802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152736 (n + 1) - A007030 (A106240 (n + 1)).toNat

end

end A144962.P11592763205133548802

/-! ## A144962.P4895939880956733366

`and(A152736(n+1), A152755(A152728(n+2)))`
-/

namespace A144962.P4895939880956733366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152736 (n + 1)) (A152755 (A152728 (n + 2)).toNat)

end

end A144962.P4895939880956733366

/-! ## A144962.P16039595446237427160

`A073210(A152736(n+1)%A304677(2*(n+1)))`
-/

namespace A144962.P16039595446237427160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073210 (Int.tmod (A152736 (n + 1)) (A304677 (2 * (n + 1)))).toNat

end

end A144962.P16039595446237427160

/-!
# A144964: Number of groves of degree n.

The programs for A144964, the canonical program `A144964.P8698337924137114216` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144964 has offset 1).

The definition of A144964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144964.P8698337924137114216

`2^A000108(n+1)-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A144964

/-- `2^A000108(n+1)-1` -/
def P8698337924137114216.Spec : Prop :=
  ∀ n, P8698337924137114216.a n = (A144964 (n + 1) : ℚ)

end A144964

/-!
# A144965: a(n) = 4*n*(4*n^2 + 1).

The programs for A144965, the canonical program `A144965.P16257968433978150562` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144965 has offset 0).

The definition of A144965 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n*(4*n²+1)` (program `A144965.P16257968433978150562`, by `A144965.P16257968433978150562.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144965.P16257968433978150562

`4*n*(4*n²+1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144965

/-- `4*n*(4*n²+1)` -/
def P16257968433978150562.Spec : Prop :=
  ∀ n, (P16257968433978150562.a n : ℤ) = A144965 n

theorem P16257968433978150562.correct : P16257968433978150562.Spec := by
  intro n
  simp only [A144965]

end A144965

/-! ## A144965.P6301429586184700658

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=20, a(2)=136, a(3)=444`
-/

namespace A144965.P6301429586184700658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 20, 136, 444] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A144965.P6301429586184700658

namespace A144965

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P6301429586184700658.Spec : Prop :=
  ∀ n, P6301429586184700658.a n = A144965 n

theorem P6301429586184700658.correct : P6301429586184700658.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A144965, Nat.add_sub_cancel, A144965.P6301429586184700658.a, A144965.P16257968433978150562.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A144965, Nat.add_sub_cancel, A144965.P6301429586184700658.a, A144965.P16257968433978150562.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A144965

/-! ## A144965.P4994416650936420866

`floor(2/acot(2*n)^3)`
-/

namespace A144965.P4994416650936420866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (2 * n : ℝ) ^ 3⌋

end

end A144965.P4994416650936420866

namespace A144965

/-- `floor(2/acot(2*n)^3)` -/
def P4994416650936420866.Spec : Prop :=
  ∀ n, P4994416650936420866.a n = A144965 n

end A144965

/-! ## A144965.P8853969930718853839

`lcm(2, 2*((2*n)^3+2*n))`
-/

namespace A144965.P8853969930718853839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * ((2 * n) ^ 3 + 2 * n))

end

end A144965.P8853969930718853839

namespace A144965

/-- `lcm(2, 2*((2*n)^3+2*n))` -/
def P8853969930718853839.Spec : Prop :=
  ∀ n, (P8853969930718853839.a n : ℤ) = A144965 n

theorem P8853969930718853839.correct : P8853969930718853839.Spec := by
  intro n
  simp only [A144965, Nat.add_sub_cancel, A144965.P8853969930718853839.a, A144965.P16257968433978150562.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A144965

/-! ## A144965.P6063168633463744736

`16*n*∑[a(n-1)+8]/4` with `a(0)=1, a(1)=4`
-/

namespace A144965.P6063168633463744736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((16 * (n * (∑ j ∈ Finset.range (n + 1), f1 j)) : ℕ) : ℚ) / 4

end

end A144965.P6063168633463744736

namespace A144965

/-- `16*n*∑[a(n-1)+8]/4` -/
def P6063168633463744736.Spec : Prop :=
  ∀ n, P6063168633463744736.a n = (A144965 n : ℚ)

end A144965

/-! ## A144965.P4478100708546931769

`floor(A117216(n)/2)`
-/

namespace A144965.P4478100708546931769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A117216 n : ℚ) / 2⌋

end

end A144965.P4478100708546931769

namespace A144965

/-- `floor(A117216(n)/2)` -/
def P4478100708546931769.Spec : Prop :=
  ∀ n, P4478100708546931769.a n = A144965 n

end A144965

/-! ## A144965.P12251780358591147619

`A144138(n)+A008511(n)`
-/

namespace A144965.P12251780358591147619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144138 n + A008511 n

end

end A144965.P12251780358591147619

namespace A144965

/-- `A144138(n)+A008511(n)` -/
def P12251780358591147619.Spec : Prop :=
  ∀ n, P12251780358591147619.a n = A144965 n

end A144965

/-! ## A144965.P11381659579546673467

`A007900(n)-A008574(n)`
-/

namespace A144965.P11381659579546673467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007900 n - A008574 n

end

end A144965.P11381659579546673467

namespace A144965

/-- `A007900(n)-A008574(n)` -/
def P11381659579546673467.Spec : Prop :=
  ∀ n, P11381659579546673467.a n = A144965 n

end A144965

/-! ## A144965.P7170294875088003787

`A019560(n)-A001386(n)`
-/

namespace A144965.P7170294875088003787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019560 n - A001386 n

end

end A144965.P7170294875088003787

namespace A144965

/-- `A019560(n)-A001386(n)` -/
def P7170294875088003787.Spec : Prop :=
  ∀ n, P7170294875088003787.a n = A144965 n

end A144965

/-! ## A144965.P1853869103838644924

`A271636(n)-A008590(n)`
-/

namespace A144965.P1853869103838644924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271636 n - A008590 n

end

end A144965.P1853869103838644924

namespace A144965

/-- `A271636(n)-A008590(n)` -/
def P1853869103838644924.Spec : Prop :=
  ∀ n, P1853869103838644924.a n = A144965 n

end A144965

/-! ## A144965.P3035817979544086204

`A272130(n)-A158187(n)`
-/

namespace A144965.P3035817979544086204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272130 n - A158187 n

end

end A144965.P3035817979544086204

namespace A144965

/-- `A272130(n)-A158187(n)` -/
def P3035817979544086204.Spec : Prop :=
  ∀ n, P3035817979544086204.a n = A144965 n

end A144965

/-! ## A144965.P10084100005870695840

`A173200(n+1)+A118465(n)`
-/

namespace A144965.P10084100005870695840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173200 (n + 1) + A118465 n

end

end A144965.P10084100005870695840

namespace A144965

/-- `A173200(n+1)+A118465(n)` -/
def P10084100005870695840.Spec : Prop :=
  ∀ n, P10084100005870695840.a n = A144965 n

end A144965

/-! ## A144965.P12191122908422540422

`A101098(n+1)-A008532(n)`
-/

namespace A144965.P12191122908422540422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101098 (n + 1) - A008532 n

end

end A144965.P12191122908422540422

namespace A144965

/-- `A101098(n+1)-A008532(n)` -/
def P12191122908422540422.Spec : Prop :=
  ∀ n, P12191122908422540422.a n = A144965 n

end A144965

/-! ## A144965.P1722662148939625896

`A046142(n+1)-A158480(n)`
-/

namespace A144965.P1722662148939625896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046142 (n + 1) - A158480 n

end

end A144965.P1722662148939625896

namespace A144965

/-- `A046142(n+1)-A158480(n)` -/
def P1722662148939625896.Spec : Prop :=
  ∀ n, P1722662148939625896.a n = A144965 n

end A144965

/-! ## A144965.P17466331968353638444

`A341043(n+1)-A194454(n)`
-/

namespace A144965.P17466331968353638444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341043 (n + 1) - A194454 n

end

end A144965.P17466331968353638444

namespace A144965

/-- `A341043(n+1)-A194454(n)` -/
def P17466331968353638444.Spec : Prop :=
  ∀ n, P17466331968353638444.a n = A144965 n

end A144965

/-! ## A144965.P2505249317513910842

`A193250(n+1)-A381424(n)`
-/

namespace A144965.P2505249317513910842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193250 (n + 1) - A381424 n

end

end A144965.P2505249317513910842

namespace A144965

/-- `A193250(n+1)-A381424(n)` -/
def P2505249317513910842.Spec : Prop :=
  ∀ n, P2505249317513910842.a n = A144965 n

end A144965

/-! ## A144965.P14965748684193463301

`A008586(n)+A000290(n)*A008598(n)`
-/

namespace A144965.P14965748684193463301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + A000290 n * A008598 n

end

end A144965.P14965748684193463301

namespace A144965

/-- `A008586(n)+A000290(n)*A008598(n)` -/
def P14965748684193463301.Spec : Prop :=
  ∀ n, P14965748684193463301.a n = A144965 n

end A144965

/-! ## A144965.P12838367595430401862

`A005899(n)*A008574(n)-A008574(n)`
-/

namespace A144965.P12838367595430401862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n * A008574 n - A008574 n

end

end A144965.P12838367595430401862

namespace A144965

/-- `A005899(n)*A008574(n)-A008574(n)` -/
def P12838367595430401862.Spec : Prop :=
  ∀ n, P12838367595430401862.a n = A144965 n

end A144965

/-! ## A144965.P355101338098627452

`A008511(2*n)/4`
-/

namespace A144965.P355101338098627452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008511 (2 * n) : ℚ) / 4

end

end A144965.P355101338098627452

namespace A144965

/-- `A008511(2*n)/4` -/
def P355101338098627452.Spec : Prop :=
  ∀ n, P355101338098627452.a n = (A144965 n : ℚ)

end A144965

/-! ## A144965.P3820713234184168927

`A033431(2*n)+4*n`
-/

namespace A144965.P3820713234184168927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 (2 * n) + (4 * n : ℤ)

end

end A144965.P3820713234184168927

namespace A144965

/-- `A033431(2*n)+4*n` -/
def P3820713234184168927.Spec : Prop :=
  ∀ n, P3820713234184168927.a n = A144965 n

end A144965

/-!
# A144966: Square array T(n,k) read by antidiagonals up. A055615 interleaved with k-1 zeros in each column. Redheffer type matrix.

The programs for A144966, there is no canonical definition to state claims against.
-/

/-! ## A144966.P15179413260456767067

`A010766(n+1)*A143142(n+1)`
-/

namespace A144966.P15179413260456767067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A143142 (n + 1)

end

end A144966.P15179413260456767067

/-! ## A144966.P8934305661228566001

`A112543(n+1)*A143142(n+1)`
-/

namespace A144966.P8934305661228566001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112543 (n + 1) * A143142 (n + 1)

end

end A144966.P8934305661228566001

/-! ## A144966.P1115854430703364577

`abs(A174557(n+1))*A143142(n+1)`
-/

namespace A144966.P1115854430703364577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A174557 (n + 1)| * A143142 (n + 1)

end

end A144966.P1115854430703364577

/-! ## A144966.P17531583376377426195

`A055615(A010766(n+1))*A174856(n+1)`
-/

namespace A144966.P17531583376377426195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A010766 (n + 1)).toNat * A174856 (n + 1)

end

end A144966.P17531583376377426195

/-! ## A144966.P18429972306074177511

`A055615(A112543(n+1))*A174856(n+1)`
-/

namespace A144966.P18429972306074177511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A112543 (n + 1)).toNat * A174856 (n + 1)

end

end A144966.P18429972306074177511

/-! ## A144966.P8408814417307522175

`A002260(A286157(n+1))*A143142(n+1)`
-/

namespace A144966.P8408814417307522175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286157 (n + 1)).toNat * A143142 (n + 1)

end

end A144966.P8408814417307522175

/-! ## A144966.P7498657913516805356

`A074712(n+1)/A002260(n+1)*A143142(n+1)`
-/

namespace A144966.P7498657913516805356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074712 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A143142 (n + 1) : ℚ)

end

end A144966.P7498657913516805356

/-!
# A144967: Semiprimes n such that n + 1 is divisible by the sum of decimal digits of n.

The programs for A144967, there is no canonical definition to state claims against.
-/

/-! ## A144967.P9137364537722983303

`filter[A144980(n+1), A064911(#)]`
-/

namespace A144967.P9137364537722983303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A144967.P9137364537722983303

/-! ## A144967.P5419767092766013028

`filter[A144980(n+2), A383575(#)]`
-/

namespace A144967.P5419767092766013028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383575 (f1 j).toNat = 1) n)

end

end A144967.P5419767092766013028

/-! ## A144967.P4017128073172320598

`∩[A001358(n+1), A144980(n+1)]`
-/

namespace A144967.P4017128073172320598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144967.P4017128073172320598

/-! ## A144967.P11759973197260772614

`∩[A077136(n+1), A144980(n+1)]`
-/

namespace A144967.P11759973197260772614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144967.P11759973197260772614

/-! ## A144967.P17320118770140334556

`∩[A144980(n+1), A323644(n+1)]`
-/

namespace A144967.P17320118770140334556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144967.P17320118770140334556

/-!
# A144968: Number of squares between consecutive cubes.

The programs for A144968, the canonical program `A144968.P16988999501329018116` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144968 has offset 0).

The definition of A144968 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144968.P16988999501329018116

`ceil((n+1)^(3/2))-ceil(n^(3/2))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144968

/-- `ceil((n+1)^(3/2))-ceil(n^(3/2))` -/
def P16988999501329018116.Spec : Prop :=
  ∀ n, P16988999501329018116.a n = A144968 n

theorem P16988999501329018116.correct : P16988999501329018116.Spec := by
  intro n
  simp only [A144968]

end A144968

/-! ## A144968.P12162913014161934414

`Δ[ceil(n*sqrt(n))]%(n+2)`
-/

namespace A144968.P12162913014161934414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.sqrt (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 2 : ℤ)

end

end A144968.P12162913014161934414

namespace A144968

/-- `Δ[ceil(n*sqrt(n))]%(n+2)` -/
def P12162913014161934414.Spec : Prop :=
  ∀ n, P12162913014161934414.a n = A144968 n

end A144968

/-! ## A144968.P1855741152459671155

`Δ[A185549(n)]`
-/

namespace A144968.P1855741152459671155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144968.P1855741152459671155

namespace A144968

/-- `Δ[A185549(n)]` -/
def P1855741152459671155.Spec : Prop :=
  ∀ n, P1855741152459671155.a n = A144968 n

end A144968

/-! ## A144968.P9970727243039242259

`Δ[sqrt(A077115(n))]`
-/

namespace A144968.P9970727243039242259
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A077115 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144968.P9970727243039242259

namespace A144968

/-- `Δ[sqrt(A077115(n))]` -/
def P9970727243039242259.Spec : Prop :=
  ∀ n, P9970727243039242259.a n = (A144968 n : ℝ)

end A144968

/-! ## A144968.P1975679466133994648

`Δ[n²-A084535(n)]`
-/

namespace A144968.P1975679466133994648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A084535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144968.P1975679466133994648

namespace A144968

/-- `Δ[n²-A084535(n)]` -/
def P1975679466133994648.Spec : Prop :=
  ∀ n, P1975679466133994648.a n = A144968 n

end A144968

/-!
# A144969: Stirling numbers of second kind S(n,n-6).

The programs for A144969, the canonical program `A144969.P15158922341314194968` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144969 has offset 6).

The definition of A144969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144969.P15158922341314194968

`∑[n*∑[n*A001298(n)]]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A144969

/-- `∑[n*∑[n*A001298(n)]]` -/
def P15158922341314194968.Spec : Prop :=
  ∀ n, P15158922341314194968.a n = A144969 (n + 6)

theorem P15158922341314194968.correct : P15158922341314194968.Spec := by
  intro n
  simp only [A144969, Nat.add_sub_cancel]

end A144969

/-! ## A144969.P17141229533565435144

`A106800(A000124(n+6)+5)`
-/

namespace A144969.P17141229533565435144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (A000124 (n + 6) + 5).toNat

end

end A144969.P17141229533565435144

namespace A144969

/-- `A106800(A000124(n+6)+5)` -/
def P17141229533565435144.Spec : Prop :=
  ∀ n, P17141229533565435144.a n = A144969 (n + 6)

end A144969

/-! ## A144969.P8182563278195741667

`A106800(A000096(n+5)+7)`
-/

namespace A144969.P8182563278195741667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (A000096 (n + 5) + 7).toNat

end

end A144969.P8182563278195741667

namespace A144969

/-- `A106800(A000096(n+5)+7)` -/
def P8182563278195741667.Spec : Prop :=
  ∀ n, P8182563278195741667.a n = A144969 (n + 6)

end A144969

/-! ## A144969.P17334174235724068573

`A106800(A167499(n+6)-(n+6))`
-/

namespace A144969.P17334174235724068573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (A167499 (n + 6) - (n + 6 : ℤ)).toNat

end

end A144969.P17334174235724068573

namespace A144969

/-- `A106800(A167499(n+6)-(n+6))` -/
def P17334174235724068573.Spec : Prop :=
  ∀ n, P17334174235724068573.a n = A144969 (n + 6)

end A144969

/-! ## A144969.P3619852055684080329

`A048993(C(n+7, 2)+n)`
-/

namespace A144969.P3619852055684080329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (Nat.choose (n + 7) 2 + n)

end

end A144969.P3619852055684080329

namespace A144969

/-- `A048993(C(n+7, 2)+n)` -/
def P3619852055684080329.Spec : Prop :=
  ∀ n, P3619852055684080329.a n = A144969 (n + 6)

end A144969

/-! ## A144969.P5434357298978377116

`A048993(eq[6, A025581(n)])`
-/

namespace A144969.P5434357298978377116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144969.P5434357298978377116

namespace A144969

/-- `A048993(eq[6, A025581(n)])` -/
def P5434357298978377116.Spec : Prop :=
  ∀ n, P5434357298978377116.a n = A144969 (n + 6)

end A144969

/-! ## A144969.P1192616297533211944

`A048993(A055999(n+4)-1)`
-/

namespace A144969.P1192616297533211944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A055999 (n + 4) - 1).toNat

end

end A144969.P1192616297533211944

namespace A144969

/-- `A048993(A055999(n+4)-1)` -/
def P1192616297533211944.Spec : Prop :=
  ∀ n, P1192616297533211944.a n = A144969 (n + 6)

end A144969

/-! ## A144969.P14929264220813578431

`A048993(A046691(n+5)-3)`
-/

namespace A144969.P14929264220813578431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A046691 (n + 5) - 3).toNat

end

end A144969.P14929264220813578431

namespace A144969

/-- `A048993(A046691(n+5)-3)` -/
def P14929264220813578431.Spec : Prop :=
  ∀ n, P14929264220813578431.a n = A144969 (n + 6)

end A144969

/-! ## A144969.P8393552024873193512

`A048993(A000217(n+7)-7)`
-/

namespace A144969.P8393552024873193512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A000217 (n + 7) - 7).toNat

end

end A144969.P8393552024873193512

namespace A144969

/-- `A048993(A000217(n+7)-7)` -/
def P8393552024873193512.Spec : Prop :=
  ∀ n, P8393552024873193512.a n = A144969 (n + 6)

end A144969

/-! ## A144969.P16875419709108013284

`A048993(eq[7, A004736(n+1)])`
-/

namespace A144969.P16875419709108013284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144969.P16875419709108013284

namespace A144969

/-- `A048993(eq[7, A004736(n+1)])` -/
def P16875419709108013284.Spec : Prop :=
  ∀ n, P16875419709108013284.a n = A144969 (n + 6)

end A144969

/-!
# A144970: Integers in the sequence of rationals defined by b(1) = 61, b(n) = b(n-1) + (n+60)/n for n > 1.

The programs for A144970, there is no canonical definition to state claims against.
-/

/-! ## A144970.P6488561745273634038

`a(n-1)` with `a(0)=61, a(1)=92, a(2)=113, a(3)=129, a(4)=142, a(5)=153`
-/

namespace A144970.P6488561745273634038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [61, 92, 113, 129, 142, 153] fun n a =>
  a (n - 1)

end

end A144970.P6488561745273634038

/-!
# A144972: Power-6-free numbers: numbers whose exponents in their prime factorization are all less than 6.

The programs for A144972, the canonical program `A144972.P15925471554680666026` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144972 has offset 1).

The definition of A144972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9831 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144972.P15925471554680666026

`record[A073353(n+1)-A015052(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A144972

/-- `record[A073353(n+1)-A015052(n+1)]` -/
def P15925471554680666026.Spec : Prop :=
  ∀ n, P15925471554680666026.a n = A144972 (n + 1)

theorem P15925471554680666026.correct : P15925471554680666026.Spec := by
  intro n
  simp only [A144972, Nat.add_sub_cancel]

end A144972

/-! ## A144972.P13063924038579490760

`record[(n+1)/A061704(A000188(n+1))]`
-/

namespace A144972.P13063924038579490760
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A061704 (A000188 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144972.P13063924038579490760

namespace A144972

/-- `record[(n+1)/A061704(A000188(n+1))]` -/
def P13063924038579490760.Spec : Prop :=
  ∀ n, P13063924038579490760.a n = (A144972 (n + 1) : ℚ)

end A144972

/-! ## A144972.P6905314981772123043

`record[A064549(n+1)/A015052(n+1)]`
-/

namespace A144972.P6905314981772123043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (A015052 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144972.P6905314981772123043

namespace A144972

/-- `record[A064549(n+1)/A015052(n+1)]` -/
def P6905314981772123043.Spec : Prop :=
  ∀ n, P6905314981772123043.a n = (A144972 (n + 1) : ℚ)

end A144972

/-! ## A144972.P4841908420738104676

`record[n+1-A297246(A007318(xor(n, n+1)))]`
-/

namespace A144972.P4841908420738104676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A297246 (A007318 (Nat.xor n (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144972.P4841908420738104676

namespace A144972

/-- `record[n+1-A297246(A007318(xor(n, n+1)))]` -/
def P4841908420738104676.Spec : Prop :=
  ∀ n, P4841908420738104676.a n = A144972 (n + 1)

end A144972

/-!
# A144974: Centered heptagonal prime numbers.

The programs for A144974, the canonical program `A144974.P12476128538530691024` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144974 has offset 1).

The definition of A144974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144974.P12476128538530691024

`p?[∑[7*n]+1]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A144974

/-- `p?[∑[7*n]+1]` -/
def P12476128538530691024.Spec : Prop :=
  ∀ n, (P12476128538530691024.a n : ℤ) = A144974 (n + 1)

theorem P12476128538530691024.correct : P12476128538530691024.Spec := by
  intro n
  simp only [A144974, Nat.add_sub_cancel]

end A144974

/-! ## A144974.P182630216171329007

`∏{p}[p?[7*C(n, 2)+1], #]`
-/

namespace A144974.P182630216171329007
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * Nat.choose n 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A144974.P182630216171329007

namespace A144974

/-- `∏{p}[p?[7*C(n, 2)+1], #]` -/
def P182630216171329007.Spec : Prop :=
  ∀ n, (P182630216171329007.a n : ℤ) = A144974 (n + 1)

end A144974

/-! ## A144974.P4571743073150813653

`or(1, p?[a(n-1)+7*n])` with `a(0)=1`
-/

namespace A144974.P4571743073150813653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 7 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A144974.P4571743073150813653

namespace A144974

/-- `or(1, p?[a(n-1)+7*n])` -/
def P4571743073150813653.Spec : Prop :=
  ∀ n, (P4571743073150813653.a n : ℤ) = A144974 (n + 1)

end A144974

/-! ## A144974.P6265014152823194119

`∑{p}[p?[a(n-1)+7*n], #]` with `a(0)=1`
-/

namespace A144974.P6265014152823194119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 7 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A144974.P6265014152823194119

namespace A144974

/-- `∑{p}[p?[a(n-1)+7*n], #]` -/
def P6265014152823194119.Spec : Prop :=
  ∀ n, (P6265014152823194119.a n : ℤ) = A144974 (n + 1)

end A144974

/-! ## A144974.P16457910579882296833

`∏{p}[p?[a(n-1)+7*n], #]` with `a(0)=1`
-/

namespace A144974.P16457910579882296833
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 7 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A144974.P16457910579882296833

namespace A144974

/-- `∏{p}[p?[a(n-1)+7*n], #]` -/
def P16457910579882296833.Spec : Prop :=
  ∀ n, (P16457910579882296833.a n : ℤ) = A144974 (n + 1)

end A144974

/-! ## A144974.P17506741878440872173

`∑{p}[p?[(1-2*n)²-C(n, 2)], #]`
-/

namespace A144974.P17506741878440872173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 * n : ℤ)) ^ 2 - (Nat.choose n 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A144974.P17506741878440872173

namespace A144974

/-- `∑{p}[p?[(1-2*n)²-C(n, 2)], #]` -/
def P17506741878440872173.Spec : Prop :=
  ∀ n, (P17506741878440872173.a n : ℤ) = A144974 (n + 1)

end A144974

/-! ## A144974.P12040755912642060202

`∏{d}[p?[(2*n+1)²-C(n+1, 2)], #]`
-/

namespace A144974.P12040755912642060202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - (Nat.choose (n + 1) 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A144974.P12040755912642060202

namespace A144974

/-- `∏{d}[p?[(2*n+1)²-C(n+1, 2)], #]` -/
def P12040755912642060202.Spec : Prop :=
  ∀ n, (P12040755912642060202.a n : ℤ) = A144974 (n + 1)

end A144974

/-! ## A144974.P5046717433052323119

`∏{d}[p?[round(xor(1, (n+1)*7*n)/2)], #]`
-/

namespace A144974.P5046717433052323119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 ((n + 1) * (7 * n)) : ℚ) / 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A144974.P5046717433052323119

namespace A144974

/-- `∏{d}[p?[round(xor(1, (n+1)*7*n)/2)], #]` -/
def P5046717433052323119.Spec : Prop :=
  ∀ n, (P5046717433052323119.a n : ℤ) = A144974 (n + 1)

end A144974

/-! ## A144974.P17638007992291683288

`∏{p}[p?[7*A000217(n+1)+1], #]`
-/

namespace A144974.P17638007992291683288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000217 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A144974.P17638007992291683288

namespace A144974

/-- `∏{p}[p?[7*A000217(n+1)+1], #]` -/
def P17638007992291683288.Spec : Prop :=
  ∀ n, (P17638007992291683288.a n : ℤ) = A144974 (n + 1)

end A144974

/-! ## A144974.P18444900029616141030

`p?[(2*n+1)²-C(n, 2)-n]*A057427(2*n+3)`
-/

namespace A144974.P18444900029616141030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - (Nat.choose n 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A057427 (2 * n + 3)

end

end A144974.P18444900029616141030

namespace A144974

/-- `p?[(2*n+1)²-C(n, 2)-n]*A057427(2*n+3)` -/
def P18444900029616141030.Spec : Prop :=
  ∀ n, P18444900029616141030.a n = A144974 (n + 1)

end A144974

/-!
# A144975: Centered heptagonal twin prime numbers.

The programs for A144975, there is no canonical definition to state claims against.
-/

/-! ## A144975.P4388294476766029664

`∩[A171688(n+1), a(n-1)+7*n]` with `a(0)=1`
-/

namespace A144975.P4388294476766029664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 7 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A144975.P4388294476766029664

/-! ## A144975.P16346878529337091071

`∩[A171821(n+1), a(n-1)+7*n]` with `a(0)=1`
-/

namespace A144975.P16346878529337091071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 7 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A144975.P16346878529337091071

/-! ## A144975.P9165307420594110335

`∩[A001097(n+1), A069099(n+1)]`
-/

namespace A144975.P9165307420594110335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144975.P9165307420594110335

/-! ## A144975.P17835200676942424376

`∩[A069099(n+1), A265760(n+1)]`
-/

namespace A144975.P17835200676942424376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144975.P17835200676942424376

/-! ## A144975.P5670369238198231636

`∩[A069099(n+1), A077800(n+3)]`
-/

namespace A144975.P5670369238198231636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144975.P5670369238198231636

/-!
# A144976: Nonsquarefree numbers k such that k is divisible by the maximal exponent in the prime factorization of k.

The programs for A144976, the canonical program `A144976.P4719089841805348065` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144976 has offset 1).

The definition of A144976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2838 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144976.P4719089841805348065

`filter[A336064(n+1), A087049(#)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A144976

/-- `filter[A336064(n+1), A087049(#)]` -/
def P4719089841805348065.Spec : Prop :=
  ∀ n, P4719089841805348065.a n = A144976 (n + 1)

theorem P4719089841805348065.correct : P4719089841805348065.Spec := by
  intro n
  simp only [A144976, Nat.add_sub_cancel]

end A144976

/-! ## A144976.P8106705869711456990

`∩[A013929(n+1), A336064(n+1)]`
-/

namespace A144976.P8106705869711456990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144976.P8106705869711456990

namespace A144976

/-- `∩[A013929(n+1), A336064(n+1)]` -/
def P8106705869711456990.Spec : Prop :=
  ∀ n, (P8106705869711456990.a n : ℤ) = A144976 (n + 1)

end A144976

/-! ## A144976.P3610168044473792686

`∩[A137257(n+1), A336064(n+1)]`
-/

namespace A144976.P3610168044473792686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144976.P3610168044473792686

namespace A144976

/-- `∩[A137257(n+1), A336064(n+1)]` -/
def P3610168044473792686.Spec : Prop :=
  ∀ n, (P3610168044473792686.a n : ℤ) = A144976 (n + 1)

end A144976

/-! ## A144976.P12338673664496859716

`∩[A162966(n+1), A336064(n+1)]`
-/

namespace A144976.P12338673664496859716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144976.P12338673664496859716

namespace A144976

/-- `∩[A162966(n+1), A336064(n+1)]` -/
def P12338673664496859716.Spec : Prop :=
  ∀ n, (P12338673664496859716.a n : ℤ) = A144976 (n + 1)

end A144976

/-! ## A144976.P4028974475772114878

`∩[A336064(n+1), A368715(n+1)]`
-/

namespace A144976.P4028974475772114878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144976.P4028974475772114878

namespace A144976

/-- `∩[A336064(n+1), A368715(n+1)]` -/
def P4028974475772114878.Spec : Prop :=
  ∀ n, (P4028974475772114878.a n : ℤ) = A144976 (n + 1)

end A144976

/-! ## A144976.P5021749301142347486

`filter[A336064(n+1), A107078(#)]`
-/

namespace A144976.P5021749301142347486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A144976.P5021749301142347486

namespace A144976

/-- `filter[A336064(n+1), A107078(#)]` -/
def P5021749301142347486.Spec : Prop :=
  ∀ n, P5021749301142347486.a n = A144976 (n + 1)

end A144976

/-!
# A144977: a(n) = A134955(n) - A134955(n-2).

The programs for A144977, there is no canonical definition to state claims against.
-/

/-! ## A144977.P14978263763902609431

`A144959(n)+Δ[A134955(n)]`
-/

namespace A144977.P14978263763902609431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144959 n + (f1 (n + 1) - f1 n)

end

end A144977.P14978263763902609431

/-! ## A144977.P17837673484278943302

`A144959(n+1)+A144959(n)`
-/

namespace A144977.P17837673484278943302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144959 (n + 1) + A144959 n

end

end A144977.P17837673484278943302

/-! ## A144977.P11056095270288508787

`A024417(A192401(n+1))`
-/

namespace A144977.P11056095270288508787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A192401 (n + 1)).toNat

end

end A144977.P11056095270288508787

/-!
# A144978: A005195(n) - A005195(n-2).

The programs for A144978, there is no canonical definition to state claims against.
-/

/-! ## A144978.P9319453143597918782

`A144958(n)+Δ[A005195(n)]`
-/

namespace A144978.P9319453143597918782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144958 n + (f1 (n + 1) - f1 n)

end

end A144978.P9319453143597918782

/-! ## A144978.P7421508771379626090

`A144958(n+1)+A144958(n)`
-/

namespace A144978.P7421508771379626090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144958 (n + 1) + A144958 n

end

end A144978.P7421508771379626090

/-! ## A144978.P17339934667390815506

`A226143(round(sqrt(A052801(n))))`
-/

namespace A144978.P17339934667390815506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226143 (SequenceMachineLib.roundAway (Real.sqrt (A052801 n : ℝ))).toNat

end

end A144978.P17339934667390815506

/-! ## A144978.P3695128472681299568

`A023193(A192981(n)+A145267(n))`
-/

namespace A144978.P3695128472681299568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A192981 n + A145267 n).toNat

end

end A144978.P3695128472681299568

/-! ## A144978.P17130670917863724112

`A002024(A093636(n))`
-/

namespace A144978.P17130670917863724112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A093636 n).toNat

end

end A144978.P17130670917863724112

/-!
# A144980: Natural numbers k such that k+1 is divisible by the sum of the decimal digits of k.

The programs for A144980, there is no canonical definition to state claims against.
-/

/-! ## A144980.P10340071846000217192

`A160948(n+1)-1`
-/

namespace A144980.P10340071846000217192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160948 (n + 1) - 1

end

end A144980.P10340071846000217192

/-! ## A144980.P12970914395587182571

`A160949(∑{digits}[n+1, A219208(#)])+A160948(n+1)`
-/

namespace A144980.P12970914395587182571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160949 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A219208 x).sum.toNat + A160948 (n + 1)

end

end A144980.P12970914395587182571

/-! ## A144980.P11474296608166859120

`A194513(A073575(2*n+1))+A160948(n+1)`
-/

namespace A144980.P11474296608166859120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194513 (A073575 (2 * n + 1)).toNat + A160948 (n + 1)

end

end A144980.P11474296608166859120

/-! ## A144980.P4577501923905933148

`eq[n+1, lcm(n+1, A007953(n))]`
-/

namespace A144980.P4577501923905933148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A007953 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A144980.P4577501923905933148

/-! ## A144980.P4032840696483314571

`eq[gcd(n+1, A007953(n)), A007953(n)]`
-/

namespace A144980.P4032840696483314571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A007953 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A144980.P4032840696483314571

/-! ## A144980.P163465723052352281

`A023443(A160948(n+1))`
-/

namespace A144980.P163465723052352281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A160948 (n + 1)).toNat

end

end A144980.P163465723052352281

