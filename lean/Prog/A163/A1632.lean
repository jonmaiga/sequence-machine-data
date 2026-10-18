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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A163200: Sum of the cubes of the first n odd-indexed Fibonacci numbers.

The programs for A163200, there is no canonical definition to state claims against.
-/

/-! ## A163200.P6606021646191358226

`∑[A001519(n)^3]-1`
-/

namespace A163200.P6606021646191358226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A163200.P6606021646191358226

/-! ## A163200.P8072245527975333694

`∑[A056570(comp[2*(n+1)])]`
-/

namespace A163200.P8072245527975333694
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163200.P8072245527975333694

/-! ## A163200.P2959310256191218590

`∑[A212804(2*n)^3]-1`
-/

namespace A163200.P2959310256191218590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A163200.P2959310256191218590

/-! ## A163200.P6215420964959461040

`∑[A000045(comp[2*(n+1)])^3]`
-/

namespace A163200.P6215420964959461040
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163200.P6215420964959461040

/-! ## A163200.P15721219283920168971

`A246434(A178334(n)+1)+∑[A001519(n)^3]`
-/

namespace A163200.P15721219283920168971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246434 (A178334 n + 1).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163200.P15721219283920168971

/-! ## A163200.P2297345178917153263

`∑[A215040(n)]-A215040(n)`
-/

namespace A163200.P2297345178917153263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A215040 n

end

end A163200.P2297345178917153263

/-! ## A163200.P11476000852560643192

`A005968(2*n)-A163198(n)`
-/

namespace A163200.P11476000852560643192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005968 (2 * n) - A163198 n

end

end A163200.P11476000852560643192

/-! ## A163200.P11624377701586485570

`2*A049660(n)-A215039(n)`
-/

namespace A163200.P11624377701586485570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049660 n - A215039 n

end

end A163200.P11624377701586485570

/-! ## A163200.P6026864194807164351

`A163198(n)-A119284(2*n)`
-/

namespace A163200.P6026864194807164351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163198 n - A119284 (2 * n)

end

end A163200.P6026864194807164351

/-! ## A163200.P6618405207997591582

`∑[A056570(2*n+1)]-A056570(2*n+1)`
-/

namespace A163200.P6618405207997591582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056570 (2 * n + 1)

end

end A163200.P6618405207997591582

/-!
# A163201: Alternating sum of the cubes of the first n even-indexed Fibonacci numbers.

The programs for A163201, there is no canonical definition to state claims against.
-/

/-! ## A163201.P60366426645614224

`∑[A033999(n)*A215039(n)]`
-/

namespace A163201.P60366426645614224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A215039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163201.P60366426645614224

/-! ## A163201.P10613392399097138571

`∑[A215039(n)/A033999(n+2)]`
-/

namespace A163201.P10613392399097138571
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215039 n : ℚ) / (A033999 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163201.P10613392399097138571

/-! ## A163201.P7990338204405034429

`∑[A033999(n)*A056570(2*n)]`
-/

namespace A163201.P7990338204405034429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A056570 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163201.P7990338204405034429

/-! ## A163201.P15643751172751367615

`∑[A000045(2*n)^3*A033999(n)]`
-/

namespace A163201.P15643751172751367615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) ^ 3 * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163201.P15643751172751367615

/-! ## A163201.P11796108272733530813

`∑[A333378(2*n)²*A333378(2*n)]`
-/

namespace A163201.P11796108272733530813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333378 (2 * n) ^ 2 * A333378 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163201.P11796108272733530813

/-! ## A163201.P4002802504418717856

`∑[A001906(n)*A049684(n)*(-1)^n]`
-/

namespace A163201.P4002802504418717856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n * A049684 n * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163201.P4002802504418717856

/-!
# A163202: Alternating sum of the cubes of the first n odd-indexed Fibonacci numbers.

The programs for A163202, there is no canonical definition to state claims against.
-/

/-! ## A163202.P7436598663904327667

`∑[A033999(n)*A056570(A004273(n))]`
-/

namespace A163202.P7436598663904327667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A056570 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163202.P7436598663904327667

/-! ## A163202.P11457280120622779683

`∑[A010892(3*n)*A056570(A004273(n))]`
-/

namespace A163202.P11457280120622779683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n) * A056570 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163202.P11457280120622779683

/-!
# A163203: G.f.: exp( Sum_{n>=1} [Sum_{d|n} (-1)^(n-d)*d^n] * x^n/n ).

The programs for A163203, there is no canonical definition to state claims against.
-/

/-! ## A163203.P4872513819548665125

`A124134(A211827(n))`
-/

namespace A163203.P4872513819548665125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124134 (A211827 n).toNat

end

end A163203.P4872513819548665125

/-! ## A163203.P1497003654875818330

`A335358(∑[A201595(n)])`
-/

namespace A163203.P1497003654875818330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335358 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A163203.P1497003654875818330

/-!
# A163205: The non-repetitive Kaprekar binary numbers in decimal.

The programs for A163205, there is no canonical definition to state claims against.
-/

/-! ## A163205.P15967753427940304355

`record[A143088(n)%A176204(n)]`
-/

namespace A163205.P15967753427940304355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143088 n) (A176204 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163205.P15967753427940304355

/-! ## A163205.P15527187263320207604

`eq[n, A164884(n)]`
-/

namespace A163205.P15527187263320207604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164884 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163205.P15527187263320207604

/-! ## A163205.P13625580063549665226

`record[A164884(A143088(n))]`
-/

namespace A163205.P13625580063549665226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164884 (A143088 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163205.P13625580063549665226

/-! ## A163205.P13383451512913692602

`A164884(A164887(n+1))`
-/

namespace A163205.P13383451512913692602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164884 (A164887 (n + 1)).toNat

end

end A163205.P13383451512913692602

/-! ## A163205.P8818725056179010987

`record[A164884(A209492(n+3))]`
-/

namespace A163205.P8818725056179010987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164884 (A209492 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163205.P8818725056179010987

/-!
# A163206: a(n) = 20*a(n-1) - 92*a(n-2) for n > 1; a(0) = 1, a(1) = 10.

The programs for A163206, the canonical program `A163206.P7204419959450791675` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163206 has offset 0).

The definition of A163206 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)-92*a(n-2)` (program `A163206.P7204419959450791675`, by `A163206.P7204419959450791675.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163206.P18356825405631060552

`((10+sqrt(8))^n+(10-sqrt(8))^n)/2`
-/

namespace A163206.P18356825405631060552
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((10 + Real.sqrt (8 : ℝ)) ^ n + (10 - Real.sqrt (8 : ℝ)) ^ n) / 2

end

end A163206.P18356825405631060552

namespace A163206

/-- `((10+sqrt(8))^n+(10-sqrt(8))^n)/2` -/
def P18356825405631060552.Spec : Prop :=
  ∀ n, P18356825405631060552.a n = (A163206 n : ℝ)

end A163206

/-! ## A163206.P7204419959450791675

`20*a(n-1)-92*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A163206

/-- `20*a(n-1)-92*a(n-2)` -/
def P7204419959450791675.Spec : Prop :=
  ∀ n, P7204419959450791675.a n = A163206 n

theorem P7204419959450791675.correct : P7204419959450791675.Spec := by
  intro n
  simp only [A163206]

end A163206

/-! ## A163206.P9848498747542012857

`2^n*A083880(n)`
-/

namespace A163206.P9848498747542012857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A083880 n

end

end A163206.P9848498747542012857

namespace A163206

/-- `2^n*A083880(n)` -/
def P9848498747542012857.Spec : Prop :=
  ∀ n, P9848498747542012857.a n = A163206 n

end A163206

/-! ## A163206.P12305438885312922644

`lcm(A000079(n), A083880(n))`
-/

namespace A163206.P12305438885312922644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A083880 n)

end

end A163206.P12305438885312922644

namespace A163206

/-- `lcm(A000079(n), A083880(n))` -/
def P12305438885312922644.Spec : Prop :=
  ∀ n, (P12305438885312922644.a n : ℤ) = A163206 n

end A163206

/-! ## A163206.P18164899759051796179

`A083880(n)*A131572(2*n+1)`
-/

namespace A163206.P18164899759051796179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083880 n * A131572 (2 * n + 1)

end

end A163206.P18164899759051796179

namespace A163206

/-- `A083880(n)*A131572(2*n+1)` -/
def P18164899759051796179.Spec : Prop :=
  ∀ n, P18164899759051796179.a n = A163206 n

end A163206

/-! ## A163206.P16210038356417393056

`(A161734(n)-A081182(n))*A000079(n)`
-/

namespace A163206.P16210038356417393056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161734 n - A081182 n) * A000079 n

end

end A163206.P16210038356417393056

namespace A163206

/-- `(A161734(n)-A081182(n))*A000079(n)` -/
def P16210038356417393056.Spec : Prop :=
  ∀ n, P16210038356417393056.a n = A163206 n

end A163206

/-! ## A163206.P17646612055991819923

`A083880(n)/A006012(n)*A084130(n)`
-/

namespace A163206.P17646612055991819923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083880 n : ℚ) / (A006012 n : ℚ) * (A084130 n : ℚ)

end

end A163206.P17646612055991819923

namespace A163206

/-- `A083880(n)/A006012(n)*A084130(n)` -/
def P17646612055991819923.Spec : Prop :=
  ∀ n, P17646612055991819923.a n = (A163206 n : ℚ)

end A163206

/-! ## A163206.P138650084476773285

`A164038(n)%A164035(n)*A000079(n)`
-/

namespace A163206.P138650084476773285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164038 n) (A164035 n) * A000079 n

end

end A163206.P138650084476773285

namespace A163206

/-- `A164038(n)%A164035(n)*A000079(n)` -/
def P138650084476773285.Spec : Prop :=
  ∀ n, P138650084476773285.a n = A163206 n

end A163206

/-!
# A163210: Swinging Wilson quotients ((p-1)$ +(-1)^floor((p+2)/2))/p, p prime. Here '$' denotes the swinging factorial function (A056040).

The programs for A163210, there is no canonical definition to state claims against.
-/

/-! ## A163210.P7826008872410687318

`abs(A178749(Δ[A007504(n)]))`
-/

namespace A163210.P7826008872410687318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A178749 (f1 (n + 1) - f1 n).toNat|

end

end A163210.P7826008872410687318

/-! ## A163210.P3511307515986057185

`abs(A178749(p?[A004442(n)]))`
-/

namespace A163210.P3511307515986057185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A178749 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat|

end

end A163210.P3511307515986057185

/-! ## A163210.P10955291563557534760

`abs(A178749(p?[A006368(n)]))`
-/

namespace A163210.P10955291563557534760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A178749 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat|

end

end A163210.P10955291563557534760

/-! ## A163210.P5346939727084525266

`abs(A178749(p?[A014681(n)]))`
-/

namespace A163210.P5346939727084525266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A178749 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat|

end

end A163210.P5346939727084525266

/-! ## A163210.P10792010506722041986

`abs(A178749(p?[A057979(n)]))`
-/

namespace A163210.P10792010506722041986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A178749 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat|

end

end A163210.P10792010506722041986

/-! ## A163210.P16657057459151362445

`abs(A178749(p?[A344180(n)]))`
-/

namespace A163210.P16657057459151362445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A178749 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat|

end

end A163210.P16657057459151362445

/-! ## A163210.P15494248997741485446

`abs(A178749(A000040(n+1)))`
-/

namespace A163210.P15494248997741485446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A178749 (A000040 (n + 1)).toNat|

end

end A163210.P15494248997741485446

/-! ## A163210.P7380381225606601120

`abs(A178749(A008578(n+2)))`
-/

namespace A163210.P7380381225606601120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A178749 (A008578 (n + 2)).toNat|

end

end A163210.P7380381225606601120

/-! ## A163210.P16057818014719525518

`abs(A178749(record[A039649(n+1)]))`
-/

namespace A163210.P16057818014719525518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A178749 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A163210.P16057818014719525518

/-! ## A163210.P9451687938693567574

`abs(A178749(p?[A242415(n+1)]))`
-/

namespace A163210.P9451687938693567574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A178749 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat|

end

end A163210.P9451687938693567574

/-!
# A163211: Swinging Wilson quotients (A163210) which are primes.

The programs for A163211, there is no canonical definition to state claims against.
-/

/-! ## A163211.P1450701745680315210

`p?[A163210(n+1)]`
-/

namespace A163211.P1450701745680315210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163211.P1450701745680315210

/-!
# A163213: Swinging Wilson remainders ((p-1)$ + (-1)^floor((p+2)/2))/p mod p, p prime. Here '$' denotes the swinging factorial function (A056040).

The programs for A163213, there is no canonical definition to state claims against.
-/

/-! ## A163213.P2221353946717605323

`A163210(n+1)%record[A051698(n)]`
-/

namespace A163213.P2221353946717605323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163210 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A163213.P2221353946717605323

/-! ## A163213.P954803915366809304

`A163210(A000027(n+1))%A000040(n+1)`
-/

namespace A163213.P954803915366809304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163210 (A000027 (n + 1)).toNat) (A000040 (n + 1))

end

end A163213.P954803915366809304

/-! ## A163213.P7513903395981564261

`abs(A178749(A008578(n+2)))%A000040(n+1)`
-/

namespace A163213.P7513903395981564261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A178749 (A008578 (n + 2)).toNat| (A000040 (n + 1))

end

end A163213.P7513903395981564261

/-! ## A163213.P8642103111521079621

`A163210(A026741(2*(n+1)))%A000040(n+1)`
-/

namespace A163213.P8642103111521079621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163210 (A026741 (2 * (n + 1))).toNat) (A000040 (n + 1))

end

end A163213.P8642103111521079621

/-!
# A163215: Number of reduced words of length n in Coxeter group on 32 generators S_i with relations (S_i)^2 = (S_i S_j)^4 = I.

The programs for A163215, there is no canonical definition to state claims against.
-/

/-! ## A163215.P16268279616075367181

`A164668(n)-A243251(A194090(n+1))`
-/

namespace A163215.P16268279616075367181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164668 n - A243251 (A194090 (n + 1)).toNat

end

end A163215.P16268279616075367181

/-!
# A163222: Number of reduced words of length n in Coxeter group on 39 generators S_i with relations (S_i)^2 = (S_i S_j)^4 = I.

The programs for A163222, there is no canonical definition to state claims against.
-/

/-! ## A163222.P8574319568439541053

`A163668(n)-A184974(∑[n])`
-/

namespace A163222.P8574319568439541053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163668 n - A184974 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163222.P8574319568439541053

/-!
# A163227: Fibonacci-accumulation sequence.

The programs for A163227, the canonical program `A163227.P1385844630762421150` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163227 has offset 1).

The definition of A163227 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163227.P1385844630762421150

`2*a(n-2)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=4`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A163227

/-- `2*a(n-2)-a(n-6)` -/
def P1385844630762421150.Spec : Prop :=
  ∀ n, P1385844630762421150.a n = A163227 (n + 1)

theorem P1385844630762421150.correct : P1385844630762421150.Spec := by
  intro n
  simp only [A163227, Nat.add_sub_cancel]

end A163227

/-! ## A163227.P12094323494209530326

`A123231(n+1)-and(1, n)`
-/

namespace A163227.P12094323494209530326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (n + 1) - (Nat.land 1 n : ℤ)

end

end A163227.P12094323494209530326

namespace A163227

/-- `A123231(n+1)-and(1, n)` -/
def P12094323494209530326.Spec : Prop :=
  ∀ n, P12094323494209530326.a n = A163227 (n + 1)

end A163227

/-! ## A163227.P1212528045621439595

`A321664(A114119(n))`
-/

namespace A163227.P1212528045621439595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321664 (A114119 n).toNat

end

end A163227.P1212528045621439595

namespace A163227

/-- `A321664(A114119(n))` -/
def P1212528045621439595.Spec : Prop :=
  ∀ n, P1212528045621439595.a n = A163227 (n + 1)

end A163227

/-! ## A163227.P12794552227467818064

`A321664(A007494(n+1))`
-/

namespace A163227.P12794552227467818064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321664 (A007494 (n + 1)).toNat

end

end A163227.P12794552227467818064

namespace A163227

/-- `A321664(A007494(n+1))` -/
def P12794552227467818064.Spec : Prop :=
  ∀ n, P12794552227467818064.a n = A163227 (n + 1)

end A163227

/-! ## A163227.P4268103328237271927

`A321664(A294732(n+3))`
-/

namespace A163227.P4268103328237271927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321664 (A294732 (n + 3)).toNat

end

end A163227.P4268103328237271927

namespace A163227

/-- `A321664(A294732(n+3))` -/
def P4268103328237271927.Spec : Prop :=
  ∀ n, P4268103328237271927.a n = A163227 (n + 1)

end A163227

/-! ## A163227.P11612390590698511707

`A123231(n+1)-A000035(n)`
-/

namespace A163227.P11612390590698511707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (n + 1) - A000035 n

end

end A163227.P11612390590698511707

namespace A163227

/-- `A123231(n+1)-A000035(n)` -/
def P11612390590698511707.Spec : Prop :=
  ∀ n, P11612390590698511707.a n = A163227 (n + 1)

end A163227

/-! ## A163227.P14203699993494568972

`A053602(n+2)-A000035(n)`
-/

namespace A163227.P14203699993494568972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (n + 2) - A000035 n

end

end A163227.P14203699993494568972

namespace A163227

/-- `A053602(n+2)-A000035(n)` -/
def P14203699993494568972.Spec : Prop :=
  ∀ n, P14203699993494568972.a n = A163227 (n + 1)

end A163227

/-! ## A163227.P10966537408213386418

`A123231(n+1)+1-A000034(n)`
-/

namespace A163227.P10966537408213386418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (n + 1) + (1 - A000034 n)

end

end A163227.P10966537408213386418

namespace A163227

/-- `A123231(n+1)+1-A000034(n)` -/
def P10966537408213386418.Spec : Prop :=
  ∀ n, P10966537408213386418.a n = A163227 (n + 1)

end A163227

/-! ## A163227.P17022215391814705257

`A123231(n+1)-A079977(n+1)/A123231(n+2)`
-/

namespace A163227.P17022215391814705257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123231 (n + 1) : ℚ) - (A079977 (n + 1) : ℚ) / (A123231 (n + 2) : ℚ)

end

end A163227.P17022215391814705257

namespace A163227

/-- `A123231(n+1)-A079977(n+1)/A123231(n+2)` -/
def P17022215391814705257.Spec : Prop :=
  ∀ n, P17022215391814705257.a n = (A163227 (n + 1) : ℚ)

end A163227

/-! ## A163227.P13614999036733569507

`A226538(n)-A131524(n+1)`
-/

namespace A163227.P13614999036733569507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226538 n - A131524 (n + 1)

end

end A163227.P13614999036733569507

namespace A163227

/-- `A226538(n)-A131524(n+1)` -/
def P13614999036733569507.Spec : Prop :=
  ∀ n, P13614999036733569507.a n = A163227 (n + 1)

end A163227

/-! ## A163227.P10287970891889547503

`A000045(n+1)+A123231(n+1)-A127968(n)`
-/

namespace A163227.P10287970891889547503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A123231 (n + 1) - A127968 n)

end

end A163227.P10287970891889547503

namespace A163227

/-- `A000045(n+1)+A123231(n+1)-A127968(n)` -/
def P10287970891889547503.Spec : Prop :=
  ∀ n, P10287970891889547503.a n = A163227 (n + 1)

end A163227

/-! ## A163227.P11853226845260687488

`A143061(A055802(n+3))`
-/

namespace A163227.P11853226845260687488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (A055802 (n + 3)).toNat

end

end A163227.P11853226845260687488

namespace A163227

/-- `A143061(A055802(n+3))` -/
def P11853226845260687488.Spec : Prop :=
  ∀ n, P11853226845260687488.a n = A163227 (n + 1)

end A163227

/-! ## A163227.P2658533475992667299

`A074829(A117142(n+1))`
-/

namespace A163227.P2658533475992667299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074829 (A117142 (n + 1)).toNat

end

end A163227.P2658533475992667299

namespace A163227

/-- `A074829(A117142(n+1))` -/
def P2658533475992667299.Spec : Prop :=
  ∀ n, P2658533475992667299.a n = A163227 (n + 1)

end A163227

/-! ## A163227.P13241810631286172153

`A136431(A101881(n+1))`
-/

namespace A163227.P13241810631286172153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136431 (A101881 (n + 1)).toNat

end

end A163227.P13241810631286172153

namespace A163227

/-- `A136431(A101881(n+1))` -/
def P13241810631286172153.Spec : Prop :=
  ∀ n, P13241810631286172153.a n = A163227 (n + 1)

end A163227

/-! ## A163227.P17871216487299251116

`A027926(A264754(n))`
-/

namespace A163227.P17871216487299251116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (A264754 n).toNat

end

end A163227.P17871216487299251116

namespace A163227

/-- `A027926(A264754(n))` -/
def P17871216487299251116.Spec : Prop :=
  ∀ n, P17871216487299251116.a n = A163227 (n + 1)

end A163227

/-! ## A163227.P9573690986060922949

`A123736(A135276(n+1))`
-/

namespace A163227.P9573690986060922949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123736 (A135276 (n + 1)).toNat

end

end A163227.P9573690986060922949

namespace A163227

/-- `A123736(A135276(n+1))` -/
def P9573690986060922949.Spec : Prop :=
  ∀ n, P9573690986060922949.a n = A163227 (n + 1)

end A163227

/-! ## A163227.P10925694489494872180

`A162741(A130404(n+1))`
-/

namespace A163227.P10925694489494872180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162741 (A130404 (n + 1)).toNat

end

end A163227.P10925694489494872180

namespace A163227

/-- `A162741(A130404(n+1))` -/
def P10925694489494872180.Spec : Prop :=
  ∀ n, P10925694489494872180.a n = A163227 (n + 1)

end A163227

/-! ## A163227.P2976759159468587095

`A055215(A256137(n+3))`
-/

namespace A163227.P2976759159468587095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055215 (A256137 (n + 3)).toNat

end

end A163227.P2976759159468587095

namespace A163227

/-- `A055215(A256137(n+3))` -/
def P2976759159468587095.Spec : Prop :=
  ∀ n, P2976759159468587095.a n = A163227 (n + 1)

end A163227

/-!
# A163228: A bisection of A162584.

The programs for A163228, there is no canonical definition to state claims against.
-/

/-! ## A163228.P15447161342816022527

`A162584(2*n)`
-/

namespace A163228.P15447161342816022527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162584 (2 * n)

end

end A163228.P15447161342816022527

/-! ## A163228.P7656383397512972924

`record[A162584(and(n, n+1))]`
-/

namespace A163228.P7656383397512972924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162584 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163228.P7656383397512972924

/-! ## A163228.P15985857968745460436

`record[A162584(A275727(n)+n)]`
-/

namespace A163228.P15985857968745460436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162584 (A275727 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163228.P15985857968745460436

/-! ## A163228.P633877135813225545

`record[A162584(A000265(n+1)-1)]`
-/

namespace A163228.P633877135813225545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162584 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163228.P633877135813225545

/-! ## A163228.P8665436767142775579

`record[A162584(A026741(n+1)-1)]`
-/

namespace A163228.P8665436767142775579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162584 (A026741 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163228.P8665436767142775579

/-! ## A163228.P8229126359658844726

`record[A162584(n-A007814(n+1))]`
-/

namespace A163228.P8229126359658844726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162584 ((n : ℤ) - A007814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163228.P8229126359658844726

/-! ## A163228.P10823093673069873496

`record[A162584(n)/A038712(n+1)]`
-/

namespace A163228.P10823093673069873496
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162584 n : ℚ) / (A038712 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163228.P10823093673069873496

/-! ## A163228.P8035543203120224367

`record[A162584(n)/(A004442(n)-n)]`
-/

namespace A163228.P8035543203120224367
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162584 n : ℚ) / (A004442 n - (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163228.P8035543203120224367

/-! ## A163228.P8776517242697462264

`record[A162584(n)/(A007814(n+1)+1)]`
-/

namespace A163228.P8776517242697462264
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162584 n : ℚ) / (A007814 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163228.P8776517242697462264

/-! ## A163228.P13987780467523452519

`record[A162584(n)/A162584(A007814(n+1))]`
-/

namespace A163228.P13987780467523452519
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162584 n : ℚ) / (A162584 (A007814 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163228.P13987780467523452519

/-!
# A163229: A bisection of A162584.

The programs for A163229, there is no canonical definition to state claims against.
-/

/-! ## A163229.P6873181953268296531

`A162584(Δ[n²])`
-/

namespace A163229.P6873181953268296531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162584 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A163229.P6873181953268296531

/-! ## A163229.P1667245434193172118

`lcm(2, A162584(comp[2*n]))`
-/

namespace A163229.P1667245434193172118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A162584 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A163229.P1667245434193172118

/-! ## A163229.P5707381870499801141

`record[A162584(A004442(n))]`
-/

namespace A163229.P5707381870499801141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162584 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163229.P5707381870499801141

/-! ## A163229.P5628815627065979424

`record[A162584(Δ[A001318(n)])]`
-/

namespace A163229.P5628815627065979424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162584 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163229.P5628815627065979424

/-! ## A163229.P647493053162352281

`record[A162584(A000265(n+1))]`
-/

namespace A163229.P647493053162352281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162584 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163229.P647493053162352281

/-! ## A163229.P8531956967310790898

`record[A162584(A026741(n+1))]`
-/

namespace A163229.P8531956967310790898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162584 (A026741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163229.P8531956967310790898

/-! ## A163229.P11455053694683308273

`record[A162584(A275727(n+1)+n)]`
-/

namespace A163229.P11455053694683308273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162584 (A275727 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163229.P11455053694683308273

/-! ## A163229.P7537180967594902400

`A162584(2*n+1)+A135481(2*n)`
-/

namespace A163229.P7537180967594902400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162584 (2 * n + 1) + A135481 (2 * n)

end

end A163229.P7537180967594902400

/-! ## A163229.P16119599566703523608

`A162584(2*n+1)+A007814(2*n+1)`
-/

namespace A163229.P16119599566703523608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162584 (2 * n + 1) + A007814 (2 * n + 1)

end

end A163229.P16119599566703523608

/-! ## A163229.P16225227506250197291

`A001511(2*n+1)*A162584(2*n+1)`
-/

namespace A163229.P16225227506250197291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A162584 (2 * n + 1)

end

end A163229.P16225227506250197291

/-! ## A163229.P14529763510629324867

`A038712(2*n+1)*A162584(2*n+1)`
-/

namespace A163229.P14529763510629324867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (2 * n + 1) * A162584 (2 * n + 1)

end

end A163229.P14529763510629324867

/-! ## A163229.P14079789086684549015

`A162584(2*n+1)+and(1, A162584(n+1))`
-/

namespace A163229.P14079789086684549015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162584 (2 * n + 1) + Int.land 1 (A162584 (n + 1))

end

end A163229.P14079789086684549015

/-! ## A163229.P18104436439397929520

`A162584(2*n+1)+A026741(2*n)-n`
-/

namespace A163229.P18104436439397929520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162584 (2 * n + 1) + (A026741 (2 * n) - (n : ℤ))

end

end A163229.P18104436439397929520

/-! ## A163229.P13718168243427855607

`(A004442(2*n)-2*n)*A162584(2*n+1)`
-/

namespace A163229.P13718168243427855607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 (2 * n) - (2 * n : ℤ)) * A162584 (2 * n + 1)

end

end A163229.P13718168243427855607

/-! ## A163229.P3537043998571353834

`(A275727(2*n+1)-A275727(2*n))*A162584(2*n+1)`
-/

namespace A163229.P3537043998571353834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A275727 (2 * n + 1) - A275727 (2 * n)) * A162584 (2 * n + 1)

end

end A163229.P3537043998571353834

/-! ## A163229.P1698815934262023117

`A162584(2*n+1)²/A162584(A004442(2*n))`
-/

namespace A163229.P1698815934262023117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162584 (2 * n + 1) ^ 2 : ℚ) / (A162584 (A004442 (2 * n)).toNat : ℚ)

end

end A163229.P1698815934262023117

/-! ## A163229.P12776474347443541948

`A162584(A000265(2*n+1))²/A162584(2*n+1)`
-/

namespace A163229.P12776474347443541948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162584 (A000265 (2 * n + 1)).toNat ^ 2 : ℚ) / (A162584 (2 * n + 1) : ℚ)

end

end A163229.P12776474347443541948

/-! ## A163229.P3862555598170458421

`A162584(A026741(2*n+1))²/A162584(2*n+1)`
-/

namespace A163229.P3862555598170458421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162584 (A026741 (2 * n + 1)).toNat ^ 2 : ℚ) / (A162584 (2 * n + 1) : ℚ)

end

end A163229.P3862555598170458421

/-!
# A163233: Two-dimensional Binary Reflected Gray Code: a(i,j) = bits of binary expansion of A003188(i) interleaved with that of A003188(j).

The programs for A163233, there is no canonical definition to state claims against.
-/

/-! ## A163233.P15121564143789336724

`A064706(A054238(n))`
-/

namespace A163233.P15121564143789336724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064706 (A054238 n).toNat

end

end A163233.P15121564143789336724

/-! ## A163233.P5453541889859910320

`A006015(A163239(n))`
-/

namespace A163233.P5453541889859910320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A163239 n).toNat

end

end A163233.P5453541889859910320

/-! ## A163233.P12382910239995865660

`A057300(A163235(n))`
-/

namespace A163233.P12382910239995865660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A163235 n).toNat

end

end A163233.P12382910239995865660

/-! ## A163233.P2967050976409705234

`A163235(A061579(n))`
-/

namespace A163233.P2967050976409705234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163235 (A061579 n).toNat

end

end A163233.P2967050976409705234

/-! ## A163233.P16284783572618080776

`A163241(A163237(n))`
-/

namespace A163233.P16284783572618080776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A163237 n).toNat

end

end A163233.P16284783572618080776

/-! ## A163233.P6932531982781259045

`A302846(A163357(n))`
-/

namespace A163233.P6932531982781259045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302846 (A163357 n).toNat

end

end A163233.P6932531982781259045

/-! ## A163233.P3071306180495700985

`A163235(A163546(A147995(n)))`
-/

namespace A163233.P3071306180495700985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163235 (A163546 (A147995 n).toNat).toNat

end

end A163233.P3071306180495700985

/-! ## A163233.P7147250785664723927

`A163235(A163544(A163545(n)))`
-/

namespace A163233.P7147250785664723927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163235 (A163544 (A163545 n).toNat).toNat

end

end A163233.P7147250785664723927

/-! ## A163233.P14690160051015023317

`A163235(A163240(A163237(2*n-n)))`
-/

namespace A163233.P14690160051015023317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163235 (A163240 (A163237 (2 * n - n)).toNat).toNat

end

end A163233.P14690160051015023317

/-! ## A163233.P15914911968710251707

`A163235(A163234(A163235(A006068(A003188(n)))))`
-/

namespace A163233.P15914911968710251707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163235 (A163234 (A163235 (A006068 (A003188 n).toNat).toNat).toNat).toNat

end

end A163233.P15914911968710251707

/-! ## A163233.P16366441160940158454

`A163235(A163238(A163239(A163241(A163241(n)))))`
-/

namespace A163233.P16366441160940158454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163235 (A163238 (A163239 (A163241 (A163241 n).toNat).toNat).toNat).toNat

end

end A163233.P16366441160940158454

/-! ## A163233.P789901946067601076

`A003188(A003188(A054238(A163235(A163236(n)))))`
-/

namespace A163233.P789901946067601076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A003188 (A054238 (A163235 (A163236 n).toNat).toNat).toNat).toNat

end

end A163233.P789901946067601076

/-! ## A163233.P11497030572027022621

`A163239(A286147(n))`
-/

namespace A163233.P11497030572027022621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163239 (A286147 n).toNat

end

end A163233.P11497030572027022621

/-! ## A163233.P14763265698402220038

`A163237(A163234(A163237(A163237(A163238(n)))))`
-/

namespace A163233.P14763265698402220038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163237 (A163234 (A163237 (A163237 (A163238 n).toNat).toNat).toNat).toNat

end

end A163233.P14763265698402220038

/-! ## A163233.P13393028698964344244

`A163237(A163234(A163237(A163239(A163240(n)))))`
-/

namespace A163233.P13393028698964344244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163237 (A163234 (A163237 (A163239 (A163240 n).toNat).toNat).toNat).toNat

end

end A163233.P13393028698964344244

/-!
# A163234: Inverse permutation to A163233.

The programs for A163234, there is no canonical definition to state claims against.
-/

/-! ## A163234.P17733547548125399398

`A054239(A064707(n))`
-/

namespace A163234.P17733547548125399398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054239 (A064707 n).toNat

end

end A163234.P17733547548125399398

/-! ## A163234.P2740464567531457258

`A163240(A004468(n))`
-/

namespace A163234.P2740464567531457258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163240 (A004468 n).toNat

end

end A163234.P2740464567531457258

/-! ## A163234.P7100526852331223626

`A163236(A057300(n))`
-/

namespace A163234.P7100526852331223626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163236 (A057300 n).toNat

end

end A163234.P7100526852331223626

/-! ## A163234.P5140838342860302960

`A061579(A163236(n))`
-/

namespace A163234.P5140838342860302960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A163236 n).toNat

end

end A163234.P5140838342860302960

/-! ## A163234.P8223402284885607847

`A163238(A163241(n))`
-/

namespace A163234.P8223402284885607847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163238 (A163241 n).toNat

end

end A163234.P8223402284885607847

/-! ## A163234.P10218136050281634397

`A163358(A302845(n))`
-/

namespace A163234.P10218136050281634397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 (A302845 n).toNat

end

end A163234.P10218136050281634397

/-! ## A163234.P8955337975039187887

`A163238(A054238(A163238(A064706(n))))`
-/

namespace A163234.P8955337975039187887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163238 (A054238 (A163238 (A064706 n).toNat).toNat).toNat

end

end A163234.P8955337975039187887

/-! ## A163234.P3777620009531631389

`A163358(A302843(A163356(A302843(n))))`
-/

namespace A163234.P3777620009531631389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 (A302843 (A163356 (A302843 n).toNat).toNat).toNat

end

end A163234.P3777620009531631389

/-! ## A163234.P4871474499339362776

`A163236(A054238(A163236(A003188(A003188(n)))))`
-/

namespace A163234.P4871474499339362776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163236 (A054238 (A163236 (A003188 (A003188 n).toNat).toNat).toNat).toNat

end

end A163234.P4871474499339362776

/-! ## A163234.P16333183242996425854

`A163238(A163233(A163238(n)))`
-/

namespace A163234.P16333183242996425854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163238 (A163233 (A163238 n).toNat).toNat

end

end A163234.P16333183242996425854

/-! ## A163234.P18263150111313476671

`A163238(A163235(A163240(n)))`
-/

namespace A163234.P18263150111313476671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163238 (A163235 (A163240 n).toNat).toNat

end

end A163234.P18263150111313476671

/-! ## A163234.P15664073629147747600

`A163238(A163239(A163236(2*n-n)))`
-/

namespace A163234.P15664073629147747600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163238 (A163239 (A163236 (2 * n - n)).toNat).toNat

end

end A163234.P15664073629147747600

/-! ## A163234.P13398279636390491634

`A163240(A163237(A163236(A163236(A163235(n)))))`
-/

namespace A163234.P13398279636390491634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163240 (A163237 (A163236 (A163236 (A163235 n).toNat).toNat).toNat).toNat

end

end A163234.P13398279636390491634

/-! ## A163234.P780753008784137256

`A163240(A163237(A163236(A163238(A163237(n)))))`
-/

namespace A163234.P780753008784137256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163240 (A163237 (A163236 (A163238 (A163237 n).toNat).toNat).toNat).toNat

end

end A163234.P780753008784137256

/-! ## A163234.P15500929133869623834

`A163240(A163237(A163236(A163240(A163239(n)))))`
-/

namespace A163234.P15500929133869623834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163240 (A163237 (A163236 (A163240 (A163239 n).toNat).toNat).toNat).toNat

end

end A163234.P15500929133869623834

/-!
# A163235: Two-dimensional Binary Reflected Gray Code, transposed version: a(i,j) = bits of binary expansion of A003188(j) interleaved with that of A003188(i).

The programs for A163235, there is no canonical definition to state claims against.
-/

/-! ## A163235.P7546323452707114183

`A163233(∑[2*n]%comp[∑[n]])`
-/

namespace A163235.P7546323452707114183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163233 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A163235.P7546323452707114183

/-! ## A163235.P16645570954813736701

`A006015(A163237(n))`
-/

namespace A163235.P16645570954813736701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A163237 n).toNat

end

end A163235.P16645570954813736701

/-! ## A163235.P15833778733709445613

`A057300(A163233(n))`
-/

namespace A163235.P15833778733709445613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A163233 n).toNat

end

end A163235.P15833778733709445613

/-! ## A163235.P4565364978850667586

`A163233(A061579(n))`
-/

namespace A163235.P4565364978850667586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163233 (A061579 n).toNat

end

end A163235.P4565364978850667586

/-! ## A163235.P17185310887803117345

`A163241(A163239(n))`
-/

namespace A163235.P17185310887803117345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A163239 n).toNat

end

end A163235.P17185310887803117345

/-! ## A163235.P18044869299671790125

`A064706(A346453(n))`
-/

namespace A163235.P18044869299671790125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064706 (A346453 n).toNat

end

end A163235.P18044869299671790125

/-! ## A163235.P12630723905049603026

`A302846(A163359(n))`
-/

namespace A163235.P12630723905049603026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302846 (A163359 n).toNat

end

end A163235.P12630723905049603026

/-! ## A163235.P559471357736565096

`A064706(A057300(A054238(n)))`
-/

namespace A163235.P559471357736565096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064706 (A057300 (A054238 n).toNat).toNat

end

end A163235.P559471357736565096

/-! ## A163235.P16897184695394530441

`A163233(A163546(A147995(n)))`
-/

namespace A163235.P16897184695394530441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163233 (A163546 (A147995 n).toNat).toNat

end

end A163235.P16897184695394530441

/-! ## A163235.P4962861093611746579

`A163233(A163544(A163545(n)))`
-/

namespace A163235.P4962861093611746579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163233 (A163544 (A163545 n).toNat).toNat

end

end A163235.P4962861093611746579

/-! ## A163235.P7065725479352931264

`A300838(A302844(A163357(n)))`
-/

namespace A163235.P7065725479352931264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300838 (A302844 (A163357 n).toNat).toNat

end

end A163235.P7065725479352931264

/-! ## A163235.P5218808583136036185

`A048647(xor(A163233(n), A163239(n)))`
-/

namespace A163235.P5218808583136036185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048647 (Int.xor (A163233 n) (A163239 n)).toNat

end

end A163235.P5218808583136036185

/-! ## A163235.P13802900991769266807

`A163233(A163238(A163239(2*n-n)))`
-/

namespace A163235.P13802900991769266807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163233 (A163238 (A163239 (2 * n - n)).toNat).toNat

end

end A163235.P13802900991769266807

/-! ## A163235.P7467271951816060799

`A163233(A163236(A163233(A006068(A003188(n)))))`
-/

namespace A163235.P7467271951816060799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163233 (A163236 (A163233 (A006068 (A003188 n).toNat).toNat).toNat).toNat

end

end A163235.P7467271951816060799

/-! ## A163235.P5906909773193911009

`A163233(A163240(A163237(A163241(A163241(n)))))`
-/

namespace A163235.P5906909773193911009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163233 (A163240 (A163237 (A163241 (A163241 n).toNat).toNat).toNat).toNat

end

end A163235.P5906909773193911009

/-! ## A163235.P15183324219038989437

`A163233(A163240(A163237(A163237(A163238(n)))))`
-/

namespace A163235.P15183324219038989437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163233 (A163240 (A163237 (A163237 (A163238 n).toNat).toNat).toNat).toNat

end

end A163235.P15183324219038989437

/-! ## A163235.P13938042048124590915

`A163233(A163240(A163237(A163239(A163240(n)))))`
-/

namespace A163235.P13938042048124590915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163233 (A163240 (A163237 (A163239 (A163240 n).toNat).toNat).toNat).toNat

end

end A163235.P13938042048124590915

/-! ## A163235.P17741320593724789036

`A163233(A163236(A163233(A163233(A163234(n)))))`
-/

namespace A163235.P17741320593724789036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163233 (A163236 (A163233 (A163233 (A163234 n).toNat).toNat).toNat).toNat

end

end A163235.P17741320593724789036

/-! ## A163235.P6773595740449714033

`A163239(A286145(n))`
-/

namespace A163235.P6773595740449714033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163239 (A286145 n).toNat

end

end A163235.P6773595740449714033

/-!
# A163236: Inverse permutation to A163235.

The programs for A163236, there is no canonical definition to state claims against.
-/

/-! ## A163236.P5136568508586937188

`A163238(A004468(n))`
-/

namespace A163236.P5136568508586937188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163238 (A004468 n).toNat

end

end A163236.P5136568508586937188

/-! ## A163236.P8810747336123927120

`A163234(A057300(n))`
-/

namespace A163236.P8810747336123927120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163234 (A057300 n).toNat

end

end A163236.P8810747336123927120

/-! ## A163236.P3661541883716372109

`A061579(A163234(n))`
-/

namespace A163236.P3661541883716372109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A163234 n).toNat

end

end A163236.P3661541883716372109

/-! ## A163236.P10975340958255888922

`A163240(A163241(n))`
-/

namespace A163236.P10975340958255888922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163240 (A163241 n).toNat

end

end A163236.P10975340958255888922

/-! ## A163236.P1503094023129339645

`A286147(A163238(n))`
-/

namespace A163236.P1503094023129339645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286147 (A163238 n).toNat

end

end A163236.P1503094023129339645

/-! ## A163236.P16669355724647248307

`A286145(A163240(n))`
-/

namespace A163236.P16669355724647248307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286145 (A163240 n).toNat

end

end A163236.P16669355724647248307

/-! ## A163236.P11164397352532744916

`A163360(A302845(n))`
-/

namespace A163236.P11164397352532744916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163360 (A302845 n).toNat

end

end A163236.P11164397352532744916

/-! ## A163236.P12390721277180352722

`A163238(A163241(A057300(A163238(A163237(n)))))`
-/

namespace A163236.P12390721277180352722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163238 (A163241 (A057300 (A163238 (A163237 n).toNat).toNat).toNat).toNat

end

end A163236.P12390721277180352722

/-! ## A163236.P512791924320473907

`A163238(A163239(A163234(2*n-n)))`
-/

namespace A163236.P512791924320473907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163238 (A163239 (A163234 (2 * n - n)).toNat).toNat

end

end A163236.P512791924320473907

/-! ## A163236.P8541644853575875501

`A163240(A163237(A163234(A163234(A163233(n)))))`
-/

namespace A163236.P8541644853575875501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163240 (A163237 (A163234 (A163234 (A163233 n).toNat).toNat).toNat).toNat

end

end A163236.P8541644853575875501

/-! ## A163236.P530854007284658556

`A163240(A163237(A163234(A163240(A163239(n)))))`
-/

namespace A163236.P530854007284658556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163240 (A163237 (A163234 (A163240 (A163239 n).toNat).toNat).toNat).toNat

end

end A163236.P530854007284658556

/-!
# A163237: a(i,j) = bits of binary expansion of A003188(i) interleaved with that of A003188(j), then converted with A163241.

The programs for A163237, there is no canonical definition to state claims against.
-/

/-! ## A163237.P17262417400216494532

`A004468(A163235(n))`
-/

namespace A163237.P17262417400216494532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A163235 n).toNat

end

end A163237.P17262417400216494532

/-! ## A163237.P10027335463910724310

`A048647(A163239(n))`
-/

namespace A163237.P10027335463910724310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048647 (A163239 n).toNat

end

end A163237.P10027335463910724310

/-! ## A163237.P7693122993960252609

`A163239(A061579(n))`
-/

namespace A163237.P7693122993960252609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163239 (A061579 n).toNat

end

end A163237.P7693122993960252609

/-! ## A163237.P2649247985675135679

`A163241(A163233(n))`
-/

namespace A163237.P2649247985675135679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A163233 n).toNat

end

end A163237.P2649247985675135679

/-! ## A163237.P15269514448797766598

`A163241(A064706(A054238(n)))`
-/

namespace A163237.P15269514448797766598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A064706 (A054238 n).toNat).toNat

end

end A163237.P15269514448797766598

/-! ## A163237.P15061315582897312871

`A163239(A163546(A147995(n)))`
-/

namespace A163237.P15061315582897312871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163239 (A163546 (A147995 n).toNat).toNat

end

end A163237.P15061315582897312871

/-! ## A163237.P9515411735851338998

`A163239(A163544(A163545(n)))`
-/

namespace A163237.P9515411735851338998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163239 (A163544 (A163545 n).toNat).toNat

end

end A163237.P9515411735851338998

/-! ## A163237.P6687379525916015517

`A163239(A163238(A163239(A163241(A163241(n)))))`
-/

namespace A163237.P6687379525916015517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163239 (A163238 (A163239 (A163241 (A163241 n).toNat).toNat).toNat).toNat

end

end A163237.P6687379525916015517

/-! ## A163237.P12726903725012309668

`A163239(A163238(A163239(A361947(A361947(n)))))`
-/

namespace A163237.P12726903725012309668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163239 (A163238 (A163239 (A361947 (A361947 n).toNat).toNat).toNat).toNat

end

end A163237.P12726903725012309668

/-! ## A163237.P8803699930964925505

`A163239(A163236(A163233(A163239(A163240(n)))))`
-/

namespace A163237.P8803699930964925505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163239 (A163236 (A163233 (A163239 (A163240 n).toNat).toNat).toNat).toNat

end

end A163237.P8803699930964925505

/-! ## A163237.P5994837918765070012

`A163239(A163236(A163233(A163233(A163234(n)))))`
-/

namespace A163237.P5994837918765070012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163239 (A163236 (A163233 (A163233 (A163234 n).toNat).toNat).toNat).toNat

end

end A163237.P5994837918765070012

/-! ## A163237.P16663115478698457795

`A163239(A163236(A163233(A163235(A163236(n)))))`
-/

namespace A163237.P16663115478698457795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163239 (A163236 (A163233 (A163235 (A163236 n).toNat).toNat).toNat).toNat

end

end A163237.P16663115478698457795

/-! ## A163237.P7620017860157696439

`A163235(A286147(n))`
-/

namespace A163237.P7620017860157696439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163235 (A286147 n).toNat

end

end A163237.P7620017860157696439

/-! ## A163237.P4187048176001769025

`A163233(A163238(A163233(A057300(A057300(n)))))`
-/

namespace A163237.P4187048176001769025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163233 (A163238 (A163233 (A057300 (A057300 n).toNat).toNat).toNat).toNat

end

end A163237.P4187048176001769025

/-!
# A163238: Inverse permutation to A163237.

The programs for A163238, there is no canonical definition to state claims against.
-/

/-! ## A163238.P10515948419774081485

`A163236(A006015(n))`
-/

namespace A163238.P10515948419774081485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163236 (A006015 n).toNat

end

end A163238.P10515948419774081485

/-! ## A163238.P11632219502009461374

`A163240(A048647(n))`
-/

namespace A163238.P11632219502009461374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163240 (A048647 n).toNat

end

end A163238.P11632219502009461374

/-! ## A163238.P4211874661097956889

`A061579(A163240(n))`
-/

namespace A163238.P4211874661097956889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A163240 n).toNat

end

end A163238.P4211874661097956889

/-! ## A163238.P2540152362982175402

`A163234(A163241(n))`
-/

namespace A163238.P2540152362982175402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163234 (A163241 n).toNat

end

end A163238.P2540152362982175402

/-! ## A163238.P14284452680289011448

`A163544(A247891(n))`
-/

namespace A163238.P14284452680289011448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163544 (A247891 n).toNat

end

end A163238.P14284452680289011448

/-! ## A163238.P14598754718708696817

`A163240(xor(n, A004514(n)))`
-/

namespace A163238.P14598754718708696817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163240 (Int.xor (n : ℤ) (A004514 n)).toNat

end

end A163238.P14598754718708696817

/-! ## A163238.P6908945192555097643

`A163240(A057300(A163241(A057300(n))))`
-/

namespace A163238.P6908945192555097643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163240 (A057300 (A163241 (A057300 n).toNat).toNat).toNat

end

end A163238.P6908945192555097643

/-! ## A163238.P13391615163013112441

`A163234(A163235(A163240(A163236(A163235(n)))))`
-/

namespace A163238.P13391615163013112441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163234 (A163235 (A163240 (A163236 (A163235 n).toNat).toNat).toNat).toNat

end

end A163238.P13391615163013112441

/-! ## A163238.P2208571364179277547

`A163240(A163237(A163240(A163240(A163239(n)))))`
-/

namespace A163238.P2208571364179277547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163240 (A163237 (A163240 (A163240 (A163239 n).toNat).toNat).toNat).toNat

end

end A163238.P2208571364179277547

/-! ## A163238.P11645007503469199424

`A163234(A163237(A163234(n)))`
-/

namespace A163238.P11645007503469199424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163234 (A163237 (A163234 n).toNat).toNat

end

end A163238.P11645007503469199424

/-! ## A163238.P8667883907572195400

`A163234(A163239(A163236(n)))`
-/

namespace A163238.P8667883907572195400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163234 (A163239 (A163236 n).toNat).toNat

end

end A163238.P8667883907572195400

/-!
# A163239: Transpose of array A163237.

The programs for A163239, there is no canonical definition to state claims against.
-/

/-! ## A163239.P2622362110739984627

`A004468(A163233(n))`
-/

namespace A163239.P2622362110739984627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A163233 n).toNat

end

end A163239.P2622362110739984627

/-! ## A163239.P13580075020184559529

`A048647(A163237(n))`
-/

namespace A163239.P13580075020184559529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048647 (A163237 n).toNat

end

end A163239.P13580075020184559529

/-! ## A163239.P3292946108613273210

`A163237(A061579(n))`
-/

namespace A163239.P3292946108613273210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163237 (A061579 n).toNat

end

end A163239.P3292946108613273210

/-! ## A163239.P3142396965179792341

`A163241(A163235(n))`
-/

namespace A163239.P3142396965179792341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A163235 n).toNat

end

end A163239.P3142396965179792341

/-! ## A163239.P14429373248510515223

`A163237(A163546(A147995(n)))`
-/

namespace A163239.P14429373248510515223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163237 (A163546 (A147995 n).toNat).toNat

end

end A163239.P14429373248510515223

/-! ## A163239.P7230164047738585286

`A163241(A064706(A057300(A054238(n))))`
-/

namespace A163239.P7230164047738585286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A064706 (A057300 (A054238 n).toNat).toNat).toNat

end

end A163239.P7230164047738585286

/-! ## A163239.P14141059496171484584

`A163237(A163240(A163237(A163241(A163241(n)))))`
-/

namespace A163239.P14141059496171484584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163237 (A163240 (A163237 (A163241 (A163241 n).toNat).toNat).toNat).toNat

end

end A163239.P14141059496171484584

/-! ## A163239.P1860928615727152845

`A163237(A163240(A163237(A163237(A163238(n)))))`
-/

namespace A163239.P1860928615727152845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163237 (A163240 (A163237 (A163237 (A163238 n).toNat).toNat).toNat).toNat

end

end A163239.P1860928615727152845

/-! ## A163239.P1139908870797641235

`A163235(A286145(n))`
-/

namespace A163239.P1139908870797641235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163235 (A286145 n).toNat

end

end A163239.P1139908870797641235

/-! ## A163239.P13045963136938092966

`A163235(A163240(A163235(A057300(A057300(n)))))`
-/

namespace A163239.P13045963136938092966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163235 (A163240 (A163235 (A057300 (A057300 n).toNat).toNat).toNat).toNat

end

end A163239.P13045963136938092966

/-! ## A163239.P11990963838531936968

`A163235(A163240(A163235(A163233(A163234(n)))))`
-/

namespace A163239.P11990963838531936968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163235 (A163240 (A163235 (A163233 (A163234 n).toNat).toNat).toNat).toNat

end

end A163239.P11990963838531936968

/-! ## A163239.P4950989326910682715

`A163233(A163238(A163235(A163235(A163236(n)))))`
-/

namespace A163239.P4950989326910682715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163233 (A163238 (A163235 (A163235 (A163236 n).toNat).toNat).toNat).toNat

end

end A163239.P4950989326910682715

/-!
# A163240: Inverse permutation to A163239.

The programs for A163240, there is no canonical definition to state claims against.
-/

/-! ## A163240.P7046952349810828390

`A163234(A006015(n))`
-/

namespace A163240.P7046952349810828390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163234 (A006015 n).toNat

end

end A163240.P7046952349810828390

/-! ## A163240.P4027326239093487555

`A163238(A048647(n))`
-/

namespace A163240.P4027326239093487555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163238 (A048647 n).toNat

end

end A163240.P4027326239093487555

/-! ## A163240.P5682314147251655778

`A061579(A163238(n))`
-/

namespace A163240.P5682314147251655778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A163238 n).toNat

end

end A163240.P5682314147251655778

/-! ## A163240.P17762165917686190869

`A163236(A163241(n))`
-/

namespace A163240.P17762165917686190869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163236 (A163241 n).toNat

end

end A163240.P17762165917686190869

/-! ## A163240.P8514797706480763615

`A163546(A247891(n))`
-/

namespace A163240.P8514797706480763615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163546 (A247891 n).toNat

end

end A163240.P8514797706480763615

/-! ## A163240.P16741602383994445730

`A286147(A163234(n))`
-/

namespace A163240.P16741602383994445730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286147 (A163234 n).toNat

end

end A163240.P16741602383994445730

/-! ## A163240.P2675704435922151679

`A286145(A163236(n))`
-/

namespace A163240.P2675704435922151679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286145 (A163236 n).toNat

end

end A163240.P2675704435922151679

/-! ## A163240.P16549214630738834810

`A163238(A057300(A163241(A057300(n))))`
-/

namespace A163240.P16549214630738834810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163238 (A057300 (A163241 (A057300 n).toNat).toNat).toNat

end

end A163240.P16549214630738834810

/-! ## A163240.P901255201714922262

`A163238(A163239(A163238(A163234(A163233(n)))))`
-/

namespace A163240.P901255201714922262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163238 (A163239 (A163238 (A163234 (A163233 n).toNat).toNat).toNat).toNat

end

end A163240.P901255201714922262

/-! ## A163240.P11086046533544905508

`A163234(A163235(A163238(A163238(A163237(n)))))`
-/

namespace A163240.P11086046533544905508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163234 (A163235 (A163238 (A163238 (A163237 n).toNat).toNat).toNat).toNat

end

end A163240.P11086046533544905508

/-! ## A163240.P14600785021429565821

`A163238(A361947(A163239(A163238(A361947(n)))))`
-/

namespace A163240.P14600785021429565821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163238 (A361947 (A163239 (A163238 (A361947 n).toNat).toNat).toNat).toNat

end

end A163240.P14600785021429565821

/-!
# A163241: Simple self-inverse permutation: Write n in base 4, then replace each digit '2' with '3' and vice versa, then convert back to decimal.

The programs for A163241, the canonical program `A163241.P5053896136228002252` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163241 has offset 0).

The definition of A163241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163241.P5053896136228002252

`xor(n, A063695(n)/2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A163241

/-- `xor(n, A063695(n)/2)` -/
def P5053896136228002252.Spec : Prop :=
  ∀ n, P5053896136228002252.a n = A163241 n

theorem P5053896136228002252.correct : P5053896136228002252.Spec := by
  intro n
  simp only [A163241]

end A163241

/-! ## A163241.P4129804049728639632

`xor(n, A063694(floor(n/2)))`
-/

namespace A163241.P4129804049728639632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A063694 ⌊(n : ℚ) / 2⌋.toNat)

end

end A163241.P4129804049728639632

namespace A163241

/-- `xor(n, A063694(floor(n/2)))` -/
def P4129804049728639632.Spec : Prop :=
  ∀ n, P4129804049728639632.a n = A163241 n

end A163241

/-! ## A163241.P16960053568445280104

`A003188(n)+2*(floor(n/2)-a(floor(n/2)))` with `a(0)=0`
-/

namespace A163241.P16960053568445280104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A003188 n + 2 * (⌊(n : ℚ) / 2⌋ - a ⌊(n : ℚ) / 2⌋.toNat)

end

end A163241.P16960053568445280104

namespace A163241

/-- `A003188(n)+2*(floor(n/2)-a(floor(n/2)))` -/
def P16960053568445280104.Spec : Prop :=
  ∀ n, P16960053568445280104.a n = A163241 n

end A163241

/-! ## A163241.P15885914837592291186

`A048647(A004468(n))`
-/

namespace A163241.P15885914837592291186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048647 (A004468 n).toNat

end

end A163241.P15885914837592291186

namespace A163241

/-- `A048647(A004468(n))` -/
def P15885914837592291186.Spec : Prop :=
  ∀ n, P15885914837592291186.a n = A163241 n

end A163241

/-! ## A163241.P1024108204249951642

`A006015(A048647(n))`
-/

namespace A163241.P1024108204249951642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A048647 n).toNat

end

end A163241.P1024108204249951642

namespace A163241

/-- `A006015(A048647(n))` -/
def P1024108204249951642.Spec : Prop :=
  ∀ n, P1024108204249951642.a n = A163241 n

end A163241

/-! ## A163241.P16771365733618195894

`A004468(A057300(n))`
-/

namespace A163241.P16771365733618195894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A057300 n).toNat

end

end A163241.P16771365733618195894

namespace A163241

/-- `A004468(A057300(n))` -/
def P16771365733618195894.Spec : Prop :=
  ∀ n, P16771365733618195894.a n = A163241 n

end A163241

/-! ## A163241.P7243451557997454688

`A057300(A006015(n))`
-/

namespace A163241.P7243451557997454688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A006015 n).toNat

end

end A163241.P7243451557997454688

namespace A163241

/-- `A057300(A006015(n))` -/
def P7243451557997454688.Spec : Prop :=
  ∀ n, P7243451557997454688.a n = A163241 n

end A163241

/-! ## A163241.P8138408123634970916

`xor(n, A000695(A059906(n)))`
-/

namespace A163241.P8138408123634970916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A000695 (A059906 n).toNat)

end

end A163241.P8138408123634970916

namespace A163241

/-- `xor(n, A000695(A059906(n)))` -/
def P8138408123634970916.Spec : Prop :=
  ∀ n, P8138408123634970916.a n = A163241 n

end A163241

/-! ## A163241.P9720479999900932182

`xor(A048647(n), A057300(n))`
-/

namespace A163241.P9720479999900932182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048647 n) (A057300 n)

end

end A163241.P9720479999900932182

namespace A163241

/-- `xor(A048647(n), A057300(n))` -/
def P9720479999900932182.Spec : Prop :=
  ∀ n, P9720479999900932182.a n = A163241 n

end A163241

/-! ## A163241.P12009103852889771554

`xor(n, A057300(A063695(n)))`
-/

namespace A163241.P12009103852889771554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A057300 (A063695 n).toNat)

end

end A163241.P12009103852889771554

namespace A163241

/-- `xor(n, A057300(A063695(n)))` -/
def P12009103852889771554.Spec : Prop :=
  ∀ n, P12009103852889771554.a n = A163241 n

end A163241

/-! ## A163241.P10139206280818072691

`xor(A256294(n), A379578(n))`
-/

namespace A163241.P10139206280818072691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A256294 n) (A379578 n)

end

end A163241.P10139206280818072691

namespace A163241

/-- `xor(A256294(n), A379578(n))` -/
def P10139206280818072691.Spec : Prop :=
  ∀ n, P10139206280818072691.a n = A163241 n

end A163241

/-! ## A163241.P3933181920058086284

`xor(n, A004468(n-A063694(n)))`
-/

namespace A163241.P3933181920058086284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004468 ((n : ℤ) - A063694 n).toNat)

end

end A163241.P3933181920058086284

namespace A163241

/-- `xor(n, A004468(n-A063694(n)))` -/
def P3933181920058086284.Spec : Prop :=
  ∀ n, P3933181920058086284.a n = A163241 n

end A163241

/-! ## A163241.P6439945928758910733

`A063695(n)+A063694(A380110(n))`
-/

namespace A163241.P6439945928758910733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063695 n + A063694 (A380110 n).toNat

end

end A163241.P6439945928758910733

namespace A163241

/-- `A063695(n)+A063694(A380110(n))` -/
def P6439945928758910733.Spec : Prop :=
  ∀ n, P6439945928758910733.a n = A163241 n

end A163241

/-! ## A163241.P11473264844305776760

`A004468(xor(A004468(n), A063694(n)))`
-/

namespace A163241.P11473264844305776760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (Int.xor (A004468 n) (A063694 n)).toNat

end

end A163241.P11473264844305776760

namespace A163241

/-- `A004468(xor(A004468(n), A063694(n)))` -/
def P11473264844305776760.Spec : Prop :=
  ∀ n, P11473264844305776760.a n = A163241 n

end A163241

/-! ## A163241.P13322151071723006962

`(A006015(n)+A006015(A063695(n)))/2`
-/

namespace A163241.P13322151071723006962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006015 n + A006015 (A063695 n).toNat : ℚ) / 2

end

end A163241.P13322151071723006962

namespace A163241

/-- `(A006015(n)+A006015(A063695(n)))/2` -/
def P13322151071723006962.Spec : Prop :=
  ∀ n, P13322151071723006962.a n = (A163241 n : ℚ)

end A163241

/-! ## A163241.P11271435013784877826

`A057300(A048647(n)-(A057300(n)-n))`
-/

namespace A163241.P11271435013784877826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A048647 n - (A057300 n - (n : ℤ))).toNat

end

end A163241.P11271435013784877826

namespace A163241

/-- `A057300(A048647(n)-(A057300(n)-n))` -/
def P11271435013784877826.Spec : Prop :=
  ∀ n, P11271435013784877826.a n = A163241 n

end A163241

/-! ## A163241.P5411902189147572348

`A063694(A003188(n))+n-A063694(n)`
-/

namespace A163241.P5411902189147572348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 (A003188 n).toNat + ((n : ℤ) - A063694 n)

end

end A163241.P5411902189147572348

namespace A163241

/-- `A063694(A003188(n))+n-A063694(n)` -/
def P5411902189147572348.Spec : Prop :=
  ∀ n, P5411902189147572348.a n = A163241 n

end A163241

/-! ## A163241.P3284868406042031907

`A003188(n)+A063695(n)-A063695(A003188(n))`
-/

namespace A163241.P3284868406042031907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n + (A063695 n - A063695 (A003188 n).toNat)

end

end A163241.P3284868406042031907

namespace A163241

/-- `A003188(n)+A063695(n)-A063695(A003188(n))` -/
def P3284868406042031907.Spec : Prop :=
  ∀ n, P3284868406042031907.a n = A163241 n

end A163241

/-! ## A163241.P4445894554806543590

`A006015(xor(n, A063695(2*n)))`
-/

namespace A163241.P4445894554806543590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (Int.xor (n : ℤ) (A063695 (2 * n))).toNat

end

end A163241.P4445894554806543590

namespace A163241

/-- `A006015(xor(n, A063695(2*n)))` -/
def P4445894554806543590.Spec : Prop :=
  ∀ n, P4445894554806543590.a n = A163241 n

end A163241

/-! ## A163241.P13205727868687590774

`A054238(A163238(A064706(n)))`
-/

namespace A163241.P13205727868687590774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054238 (A163238 (A064706 n).toNat).toNat

end

end A163241.P13205727868687590774

namespace A163241

/-- `A054238(A163238(A064706(n)))` -/
def P13205727868687590774.Spec : Prop :=
  ∀ n, P13205727868687590774.a n = A163241 n

end A163241

/-!
# A163242: Row sums of A163233 and A163235.

The programs for A163242, the canonical program `A163242.P5709867109998046641` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163242 has offset 0).

The definition of A163242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163242.P1050270765192993087

`3*∑[xor((2^val(n, 2))², a(n-1))]` with `a(0)=0`
-/

namespace A163242.P1050270765192993087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.xor ((2 ^ SequenceMachineLib.valuation n 2) ^ 2) (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163242.P1050270765192993087

namespace A163242

/-- `3*∑[xor((2^val(n, 2))², a(n-1))]` -/
def P1050270765192993087.Spec : Prop :=
  ∀ n, (P1050270765192993087.a n : ℤ) = A163242 n

end A163242

/-! ## A163242.P8884900431043300769

`3*A163478(n)`
-/

namespace A163242.P8884900431043300769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A163478 n

end

end A163242.P8884900431043300769

namespace A163242

/-- `3*A163478(n)` -/
def P8884900431043300769.Spec : Prop :=
  ∀ n, P8884900431043300769.a n = A163242 n

end A163242

/-! ## A163242.P5709867109998046641

`∑[A001196(xor(n, floor(n/2)))]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A163242

/-- `∑[A001196(xor(n, floor(n/2)))]` -/
def P5709867109998046641.Spec : Prop :=
  ∀ n, P5709867109998046641.a n = A163242 n

theorem P5709867109998046641.correct : P5709867109998046641.Spec := by
  intro n
  simp only [A163242]

end A163242

/-! ## A163242.P14673696283808100792

`∑[3*A000695(xor(n, floor(n/2)))]`
-/

namespace A163242.P14673696283808100792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000695 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163242.P14673696283808100792

namespace A163242

/-- `∑[3*A000695(xor(n, floor(n/2)))]` -/
def P14673696283808100792.Spec : Prop :=
  ∀ n, P14673696283808100792.a n = A163242 n

end A163242

/-! ## A163242.P7034731302391458706

`∑[A001196(A003188(n))]`
-/

namespace A163242.P7034731302391458706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 (A003188 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163242.P7034731302391458706

namespace A163242

/-- `∑[A001196(A003188(n))]` -/
def P7034731302391458706.Spec : Prop :=
  ∀ n, P7034731302391458706.a n = A163242 n

end A163242

/-! ## A163242.P12054240128474083925

`∑[3*A000695(A229763(n)+A004526(n))]`
-/

namespace A163242.P12054240128474083925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000695 (A229763 n + A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163242.P12054240128474083925

namespace A163242

/-- `∑[3*A000695(A229763(n)+A004526(n))]` -/
def P12054240128474083925.Spec : Prop :=
  ∀ n, P12054240128474083925.a n = A163242 n

end A163242

/-! ## A163242.P10154729367890997271

`∑[3*A000695(A292272(n)+A229762(n))]`
-/

namespace A163242.P10154729367890997271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000695 (A292272 n + A229762 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163242.P10154729367890997271

namespace A163242

/-- `∑[3*A000695(A292272(n)+A229762(n))]` -/
def P10154729367890997271.Spec : Prop :=
  ∀ n, P10154729367890997271.a n = A163242 n

end A163242

/-! ## A163242.P15854003498300617682

`∑[A302846(A062880(n))]`
-/

namespace A163242.P15854003498300617682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302846 (A062880 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163242.P15854003498300617682

namespace A163242

/-- `∑[A302846(A062880(n))]` -/
def P15854003498300617682.Spec : Prop :=
  ∀ n, P15854003498300617682.a n = A163242 n

end A163242

/-! ## A163242.P12051928632287667379

`∑[A302846(2*A000695(n))]`
-/

namespace A163242.P12051928632287667379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302846 (2 * A000695 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163242.P12051928632287667379

namespace A163242

/-- `∑[A302846(2*A000695(n))]` -/
def P12051928632287667379.Spec : Prop :=
  ∀ n, P12051928632287667379.a n = A163242 n

end A163242

/-! ## A163242.P16165297230629219188

`∑[A163239(∑[n])]`
-/

namespace A163242.P16165297230629219188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163239 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163242.P16165297230629219188

namespace A163242

/-- `∑[A163239(∑[n])]` -/
def P16165297230629219188.Spec : Prop :=
  ∀ n, P16165297230629219188.a n = A163242 n

end A163242

/-!
# A163244: Squares which can be represented as sum of consecutive primes.

The programs for A163244, there is no canonical definition to state claims against.
-/

/-! ## A163244.P7864417613782164817

`A163247(n+1)²`
-/

namespace A163244.P7864417613782164817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163247 (n + 1) ^ 2

end

end A163244.P7864417613782164817

/-! ## A163244.P7162495482364442816

`∩[A034707(n+1), n²]`
-/

namespace A163244.P7162495482364442816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034707 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A163244.P7162495482364442816

/-! ## A163244.P7143113757809392139

`∩[A050936(n+1), n²]`
-/

namespace A163244.P7143113757809392139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050936 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A163244.P7143113757809392139

/-! ## A163244.P5192698259383607485

`∩[A338446(n+1), n²]`
-/

namespace A163244.P5192698259383607485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338446 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A163244.P5192698259383607485

/-! ## A163244.P1232456024435454322

`A002620(2*A163247(n+1))`
-/

namespace A163244.P1232456024435454322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A163247 (n + 1)).toNat

end

end A163244.P1232456024435454322

/-!
# A163245: Squares which can be represented as sum of (at least two) consecutive primes in exactly one way.

The programs for A163245, there is no canonical definition to state claims against.
-/

/-! ## A163245.P9265825179371033017

`∩[A054996(n+1), n²]`
-/

namespace A163245.P9265825179371033017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054996 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A163245.P9265825179371033017

/-! ## A163245.P12409250764985531909

`∩[A084146(n+1), n²]`
-/

namespace A163245.P12409250764985531909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084146 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A163245.P12409250764985531909

/-! ## A163245.P15125375565848810937

`∩[A034793(n+1), A084146(n+1)]`
-/

namespace A163245.P15125375565848810937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163245.P15125375565848810937

/-! ## A163245.P5856245910622879737

`eq[1, A054845(n²)]²`
-/

namespace A163245.P5856245910622879737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A163245.P5856245910622879737

/-! ## A163245.P8917027489015149052

`eq[1, A084143(n^ceil(atan(n)))]²`
-/

namespace A163245.P8917027489015149052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A163245.P8917027489015149052

/-!
# A163246: Squares which can be represented as the sum of consecutive primes in more than one way.

The programs for A163246, there is no canonical definition to state claims against.
-/

/-! ## A163246.P6604555047350932406

`∩[A067372(n+1), n²]`
-/

namespace A163246.P6604555047350932406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067372 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A163246.P6604555047350932406

/-! ## A163246.P17258302283335670233

`∩[A030140(n+1), A067372(n+1)]`
-/

namespace A163246.P17258302283335670233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163246.P17258302283335670233

/-! ## A163246.P568760511829207527

`∩[A309770(n+1), n²]`
-/

namespace A163246.P568760511829207527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309770 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A163246.P568760511829207527

/-! ## A163246.P15750659657154485669

`∩[A034793(n+1), A067372(n+1)]`
-/

namespace A163246.P15750659657154485669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163246.P15750659657154485669

/-! ## A163246.P3277230354220231332

`lt[1, A054845(n²)]²`
-/

namespace A163246.P3277230354220231332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A163246.P3277230354220231332

/-!
# A163247: Numbers n such that n^2 is representable as a sum of consecutive primes.

The programs for A163247, there is no canonical definition to state claims against.
-/

/-! ## A163247.P13135135457903965754

`sqrt(∪[A163244(n+1), A163245(n+1)])`
-/

namespace A163247.P13135135457903965754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163245 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A163247.P13135135457903965754

/-! ## A163247.P13986721799185961637

`sqrt(A163244(n+1))`
-/

namespace A163247.P13986721799185961637
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A163244 (n + 1) : ℝ)

end

end A163247.P13986721799185961637

/-! ## A163247.P9898467244485904885

`root(A163244(n+1), ratio[A000079(n)])`
-/

namespace A163247.P9898467244485904885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A163244 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A163247.P9898467244485904885

/-! ## A163247.P17221862007595976261

`root(A163244(n+1), 2)*A007318(∑[n])`
-/

namespace A163247.P17221862007595976261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A163244 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A163247.P17221862007595976261

/-! ## A163247.P11196184066239806141

`root(A163244(n+1), ratio[A017910(2*n)])`
-/

namespace A163247.P11196184066239806141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (2 * n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A163244 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A163247.P11196184066239806141

/-!
# A163248: Sum of the n-th composite number plus the number of composite numbers less than the n-th noncomposite number.

The programs for A163248, the canonical program `A163248.P10432575960891673536` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163248 has offset 1).

The definition of A163248 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, A073169, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163248.P10432575960891673536

`A008578(n+1)+A073169(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A163248

/-- `A008578(n+1)+A073169(n+1)` -/
def P10432575960891673536.Spec : Prop :=
  ∀ n, P10432575960891673536.a n = A163248 (n + 1)

theorem P10432575960891673536.correct : P10432575960891673536.Spec := by
  intro n
  simp only [A163248, Nat.add_sub_cancel]

end A163248

/-! ## A163248.P11844181636247396100

`A002808(n+1)+A162177(n+1)`
-/

namespace A163248.P11844181636247396100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + A162177 (n + 1)

end

end A163248.P11844181636247396100

namespace A163248

/-- `A002808(n+1)+A162177(n+1)` -/
def P11844181636247396100.Spec : Prop :=
  ∀ n, P11844181636247396100.a n = A163248 (n + 1)

end A163248

/-! ## A163248.P4758574471379624976

`A022798(n+1)-(n+1)`
-/

namespace A163248.P4758574471379624976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022798 (n + 1) - (n + 1 : ℤ)

end

end A163248.P4758574471379624976

namespace A163248

/-- `A022798(n+1)-(n+1)` -/
def P4758574471379624976.Spec : Prop :=
  ∀ n, P4758574471379624976.a n = A163248 (n + 1)

end A163248

/-! ## A163248.P463239268250137215

`A129189(n+1)-A075526(n)`
-/

namespace A163248.P463239268250137215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129189 (n + 1) - A075526 n

end

end A163248.P463239268250137215

namespace A163248

/-- `A129189(n+1)-A075526(n)` -/
def P463239268250137215.Spec : Prop :=
  ∀ n, P463239268250137215.a n = A163248 (n + 1)

end A163248

/-! ## A163248.P2718201706680643365

`A162177(n+1)+A018252(n+2)`
-/

namespace A163248.P2718201706680643365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (n + 1) + A018252 (n + 2)

end

end A163248.P2718201706680643365

namespace A163248

/-- `A162177(n+1)+A018252(n+2)` -/
def P2718201706680643365.Spec : Prop :=
  ∀ n, P2718201706680643365.a n = A163248 (n + 1)

end A163248

/-! ## A163248.P13284868533800114868

`A162177(n+1)+A141468(n+3)`
-/

namespace A163248.P13284868533800114868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (n + 1) + A141468 (n + 3)

end

end A163248.P13284868533800114868

namespace A163248

/-- `A162177(n+1)+A141468(n+3)` -/
def P13284868533800114868.Spec : Prop :=
  ∀ n, P13284868533800114868.a n = A163248 (n + 1)

end A163248

/-! ## A163248.P11283297508734279237

`A008578(n+1)+A072668(n+1)-n`
-/

namespace A163248.P11283297508734279237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (A072668 (n + 1) - (n : ℤ))

end

end A163248.P11283297508734279237

namespace A163248

/-- `A008578(n+1)+A072668(n+1)-n` -/
def P11283297508734279237.Spec : Prop :=
  ∀ n, P11283297508734279237.a n = A163248 (n + 1)

end A163248

/-! ## A163248.P17840245277956379875

`A002808(n+1)+A008578(n+1)-(n+1)`
-/

namespace A163248.P17840245277956379875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (A008578 (n + 1) - (n + 1 : ℤ))

end

end A163248.P17840245277956379875

namespace A163248

/-- `A002808(n+1)+A008578(n+1)-(n+1)` -/
def P17840245277956379875.Spec : Prop :=
  ∀ n, P17840245277956379875.a n = A163248 (n + 1)

end A163248

/-! ## A163248.P13152733903621282553

`A018252(n+2)+A008578(n+1)-(n+1)`
-/

namespace A163248.P13152733903621282553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) + (A008578 (n + 1) - (n + 1 : ℤ))

end

end A163248.P13152733903621282553

namespace A163248

/-- `A018252(n+2)+A008578(n+1)-(n+1)` -/
def P13152733903621282553.Spec : Prop :=
  ∀ n, P13152733903621282553.a n = A163248 (n + 1)

end A163248

/-! ## A163248.P13284135562660713370

`A000720(A002808(n+1))+A008578(n+1)+1`
-/

namespace A163248.P13284135562660713370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002808 (n + 1)).toNat + (A008578 (n + 1) + 1)

end

end A163248.P13284135562660713370

namespace A163248

/-- `A000720(A002808(n+1))+A008578(n+1)+1` -/
def P13284135562660713370.Spec : Prop :=
  ∀ n, P13284135562660713370.a n = A163248 (n + 1)

end A163248

/-! ## A163248.P1462756652556931762

`A002808(n+1)+A164653(n+1)-A173137(n+1)`
-/

namespace A163248.P1462756652556931762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (A164653 (n + 1) - A173137 (n + 1))

end

end A163248.P1462756652556931762

namespace A163248

/-- `A002808(n+1)+A164653(n+1)-A173137(n+1)` -/
def P1462756652556931762.Spec : Prop :=
  ∀ n, P1462756652556931762.a n = A163248 (n + 1)

end A163248

/-! ## A163248.P1870923971989367404

`A158611(n+2)+A073169(n+1)`
-/

namespace A163248.P1870923971989367404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 2) + A073169 (n + 1)

end

end A163248.P1870923971989367404

namespace A163248

/-- `A158611(n+2)+A073169(n+1)` -/
def P1870923971989367404.Spec : Prop :=
  ∀ n, P1870923971989367404.a n = A163248 (n + 1)

end A163248

/-! ## A163248.P7371216728093426138

`A073425(n+1)+A158611(n+2)+1`
-/

namespace A163248.P7371216728093426138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073425 (n + 1) + (A158611 (n + 2) + 1)

end

end A163248.P7371216728093426138

namespace A163248

/-- `A073425(n+1)+A158611(n+2)+1` -/
def P7371216728093426138.Spec : Prop :=
  ∀ n, P7371216728093426138.a n = A163248 (n + 1)

end A163248

/-! ## A163248.P10094814106736501646

`A002808(n+1)+Δ[A175965(n+1)]-(n+1)`
-/

namespace A163248.P10094814106736501646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (f1 (n + 1) - f1 n - (n + 1 : ℤ))

end

end A163248.P10094814106736501646

namespace A163248

/-- `A002808(n+1)+Δ[A175965(n+1)]-(n+1)` -/
def P10094814106736501646.Spec : Prop :=
  ∀ n, P10094814106736501646.a n = A163248 (n + 1)

end A163248

/-! ## A163248.P18169342684851201574

`A064799(n+1)+A162177(n+1)-A008578(n+2)`
-/

namespace A163248.P18169342684851201574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064799 (n + 1) + (A162177 (n + 1) - A008578 (n + 2))

end

end A163248.P18169342684851201574

namespace A163248

/-- `A064799(n+1)+A162177(n+1)-A008578(n+2)` -/
def P18169342684851201574.Spec : Prop :=
  ∀ n, P18169342684851201574.a n = A163248 (n + 1)

end A163248

/-! ## A163248.P13655423581925279867

`A162177(n+1)+A171639(n+2)-A008578(n+2)`
-/

namespace A163248.P13655423581925279867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (n + 1) + (A171639 (n + 2) - A008578 (n + 2))

end

end A163248.P13655423581925279867

namespace A163248

/-- `A162177(n+1)+A171639(n+2)-A008578(n+2)` -/
def P13655423581925279867.Spec : Prop :=
  ∀ n, P13655423581925279867.a n = A163248 (n + 1)

end A163248

/-! ## A163248.P10802085473478036288

`A173905(n+5)+A162177(n+1)`
-/

namespace A163248.P10802085473478036288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 5) + A162177 (n + 1)

end

end A163248.P10802085473478036288

namespace A163248

/-- `A173905(n+5)+A162177(n+1)` -/
def P10802085473478036288.Spec : Prop :=
  ∀ n, P10802085473478036288.a n = A163248 (n + 1)

end A163248

/-! ## A163248.P3674476336940154222

`A073169(n+1)+record[A020639(n+1)]`
-/

namespace A163248.P3674476336940154222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073169 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163248.P3674476336940154222

namespace A163248

/-- `A073169(n+1)+record[A020639(n+1)]` -/
def P3674476336940154222.Spec : Prop :=
  ∀ n, P3674476336940154222.a n = A163248 (n + 1)

end A163248

/-! ## A163248.P4157751305567288435

`record[A020639(n+1)]+A072668(n+1)-n`
-/

namespace A163248.P4157751305567288435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A072668 (n + 1) - (n : ℤ))

end

end A163248.P4157751305567288435

namespace A163248

/-- `record[A020639(n+1)]+A072668(n+1)-n` -/
def P4157751305567288435.Spec : Prop :=
  ∀ n, P4157751305567288435.a n = A163248 (n + 1)

end A163248

/-! ## A163248.P18360482336684012424

`record[A006530(n+1)]+A018252(n+2)-(n+1)`
-/

namespace A163248.P18360482336684012424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A018252 (n + 2) - (n + 1 : ℤ)

end

end A163248.P18360482336684012424

namespace A163248

/-- `record[A006530(n+1)]+A018252(n+2)-(n+1)` -/
def P18360482336684012424.Spec : Prop :=
  ∀ n, P18360482336684012424.a n = A163248 (n + 1)

end A163248

/-!
# A163249: Sum of prime(n) and number of numbers from this set less than n-th nonprime number (A018252(n)).

The programs for A163249, the canonical program `A163249.P10892811305809316567` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163249 has offset 1).

The definition of A163249 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014689, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163249.P10892811305809316567

`A018252(n+1)+A014689(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A163249

/-- `A018252(n+1)+A014689(n+1)` -/
def P10892811305809316567.Spec : Prop :=
  ∀ n, P10892811305809316567.a n = A163249 (n + 1)

theorem P10892811305809316567.correct : P10892811305809316567.Spec := by
  intro n
  simp only [A163249, Nat.add_sub_cancel]

end A163249

/-! ## A163249.P12674950851256942784

`A022797(n+1)-(n+1)`
-/

namespace A163249.P12674950851256942784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022797 (n + 1) - (n + 1 : ℤ)

end

end A163249.P12674950851256942784

namespace A163249

/-- `A022797(n+1)-(n+1)` -/
def P12674950851256942784.Spec : Prop :=
  ∀ n, P12674950851256942784.a n = A163249 (n + 1)

end A163249

/-! ## A163249.P11636233032908484484

`A073425(n)+A000040(n+1)`
-/

namespace A163249.P11636233032908484484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073425 n + A000040 (n + 1)

end

end A163249.P11636233032908484484

namespace A163249

/-- `A073425(n)+A000040(n+1)` -/
def P11636233032908484484.Spec : Prop :=
  ∀ n, P11636233032908484484.a n = A163249 (n + 1)

end A163249

/-! ## A163249.P17875350537475578242

`A006093(n+1)+A073425(n)+1`
-/

namespace A163249.P17875350537475578242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A073425 n + 1)

end

end A163249.P17875350537475578242

namespace A163249

/-- `A006093(n+1)+A073425(n)+1` -/
def P17875350537475578242.Spec : Prop :=
  ∀ n, P17875350537475578242.a n = A163249 (n + 1)

end A163249

/-! ## A163249.P5210763813993083782

`A134591(n+1)-A014237(n+1)`
-/

namespace A163249.P5210763813993083782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134591 (n + 1) - A014237 (n + 1)

end

end A163249.P5210763813993083782

namespace A163249

/-- `A134591(n+1)-A014237(n+1)` -/
def P5210763813993083782.Spec : Prop :=
  ∀ n, P5210763813993083782.a n = A163249 (n + 1)

end A163249

/-! ## A163249.P14319299841290755747

`A141468(n+2)+A014689(n+1)`
-/

namespace A163249.P14319299841290755747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2) + A014689 (n + 1)

end

end A163249.P14319299841290755747

namespace A163249

/-- `A141468(n+2)+A014689(n+1)` -/
def P14319299841290755747.Spec : Prop :=
  ∀ n, P14319299841290755747.a n = A163249 (n + 1)

end A163249

/-! ## A163249.P8639552153782869687

`A095116(n+1)+A073425(n)-n`
-/

namespace A163249.P8639552153782869687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) + (A073425 n - (n : ℤ))

end

end A163249.P8639552153782869687

namespace A163249

/-- `A095116(n+1)+A073425(n)-n` -/
def P8639552153782869687.Spec : Prop :=
  ∀ n, P8639552153782869687.a n = A163249 (n + 1)

end A163249

/-! ## A163249.P14835706250957143986

`A018252(n+1)+A065890(n+1)+1`
-/

namespace A163249.P14835706250957143986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + (A065890 (n + 1) + 1)

end

end A163249.P14835706250957143986

namespace A163249

/-- `A018252(n+1)+A065890(n+1)+1` -/
def P14835706250957143986.Spec : Prop :=
  ∀ n, P14835706250957143986.a n = A163249 (n + 1)

end A163249

/-! ## A163249.P6954450448565550690

`A014692(n+1)+A018252(n+1)-1`
-/

namespace A163249.P6954450448565550690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) + (A018252 (n + 1) - 1)

end

end A163249.P6954450448565550690

namespace A163249

/-- `A014692(n+1)+A018252(n+1)-1` -/
def P6954450448565550690.Spec : Prop :=
  ∀ n, P6954450448565550690.a n = A163249 (n + 1)

end A163249

/-! ## A163249.P9594459107389205789

`A006093(n+1)+A018252(n+1)-n`
-/

namespace A163249.P9594459107389205789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A018252 (n + 1) - (n : ℤ))

end

end A163249.P9594459107389205789

namespace A163249

/-- `A006093(n+1)+A018252(n+1)-n` -/
def P9594459107389205789.Spec : Prop :=
  ∀ n, P9594459107389205789.a n = A163249 (n + 1)

end A163249

/-! ## A163249.P12335314329421924901

`A006005(n+1)+A060462(n+1)-n`
-/

namespace A163249.P12335314329421924901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) + (A060462 (n + 1) - (n : ℤ))

end

end A163249.P12335314329421924901

namespace A163249

/-- `A006005(n+1)+A060462(n+1)-n` -/
def P12335314329421924901.Spec : Prop :=
  ∀ n, P12335314329421924901.a n = A163249 (n + 1)

end A163249

/-! ## A163249.P11411299702950380083

`A000040(n+1)+A018252(n+1)-(n+1)`
-/

namespace A163249.P11411299702950380083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A018252 (n + 1) - (n + 1 : ℤ))

end

end A163249.P11411299702950380083

namespace A163249

/-- `A000040(n+1)+A018252(n+1)-(n+1)` -/
def P11411299702950380083.Spec : Prop :=
  ∀ n, P11411299702950380083.a n = A163249 (n + 1)

end A163249

/-! ## A163249.P8023061426935677066

`A000040(n+1)+comp[record[A000010(n+1)]]-n`
-/

namespace A163249.P8023061426935677066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))

end

end A163249.P8023061426935677066

namespace A163249

/-- `A000040(n+1)+comp[record[A000010(n+1)]]-n` -/
def P8023061426935677066.Spec : Prop :=
  ∀ n, P8023061426935677066.a n = A163249 (n + 1)

end A163249

/-! ## A163249.P5980489718309159641

`record[A022797(A328399(n))-A328399(n)]`
-/

namespace A163249.P5980489718309159641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022797 (A328399 n).toNat - A328399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163249.P5980489718309159641

namespace A163249

/-- `record[A022797(A328399(n))-A328399(n)]` -/
def P5980489718309159641.Spec : Prop :=
  ∀ n, P5980489718309159641.a n = A163249 (n + 1)

end A163249

/-! ## A163249.P6592726113470630079

`A000720(A018252(n+1))+A000040(n+1)`
-/

namespace A163249.P6592726113470630079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A018252 (n + 1)).toNat + A000040 (n + 1)

end

end A163249.P6592726113470630079

namespace A163249

/-- `A000720(A018252(n+1))+A000040(n+1)` -/
def P6592726113470630079.Spec : Prop :=
  ∀ n, P6592726113470630079.a n = A163249 (n + 1)

end A163249

/-! ## A163249.P15317170756416552875

`A007504(n+1)+A073425(n)-A007504(n)`
-/

namespace A163249.P15317170756416552875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + (A073425 n - A007504 n)

end

end A163249.P15317170756416552875

namespace A163249

/-- `A007504(n+1)+A073425(n)-A007504(n)` -/
def P15317170756416552875.Spec : Prop :=
  ∀ n, P15317170756416552875.a n = A163249 (n + 1)

end A163249

/-! ## A163249.P11294429464770284203

`A014689(n+1)+A051349(n+1)-A051349(n)`
-/

namespace A163249.P11294429464770284203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + (A051349 (n + 1) - A051349 n)

end

end A163249.P11294429464770284203

namespace A163249

/-- `A014689(n+1)+A051349(n+1)-A051349(n)` -/
def P11294429464770284203.Spec : Prop :=
  ∀ n, P11294429464770284203.a n = A163249 (n + 1)

end A163249

/-! ## A163249.P3038726167726854489

`A073425(n)+A008578(n+2)`
-/

namespace A163249.P3038726167726854489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073425 n + A008578 (n + 2)

end

end A163249.P3038726167726854489

namespace A163249

/-- `A073425(n)+A008578(n+2)` -/
def P3038726167726854489.Spec : Prop :=
  ∀ n, P3038726167726854489.a n = A163249 (n + 1)

end A163249

/-! ## A163249.P16803905740691405619

`A173073(n+2)+A000040(n+1)`
-/

namespace A163249.P16803905740691405619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173073 (n + 2) + A000040 (n + 1)

end

end A163249.P16803905740691405619

namespace A163249

/-- `A173073(n+2)+A000040(n+1)` -/
def P16803905740691405619.Spec : Prop :=
  ∀ n, P16803905740691405619.a n = A163249 (n + 1)

end A163249

/-! ## A163249.P6185139925204159927

`A173073(n+2)+A008578(n+2)`
-/

namespace A163249.P6185139925204159927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173073 (n + 2) + A008578 (n + 2)

end

end A163249.P6185139925204159927

namespace A163249

/-- `A173073(n+2)+A008578(n+2)` -/
def P6185139925204159927.Spec : Prop :=
  ∀ n, P6185139925204159927.a n = A163249 (n + 1)

end A163249

/-!
# A163250: a(n) = A000045(n+6) - (n^2 + 4*n + 8).

The programs for A163250, the canonical program `A163250.P709852108617925705` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163250 has offset 0).

The definition of A163250 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+6)-(n²+4*n+8)` (program `A163250.P709852108617925705`, by `A163250.P709852108617925705.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163250.P709852108617925705

`A000045(n+6)-(n²+4*n+8)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A163250

/-- `A000045(n+6)-(n²+4*n+8)` -/
def P709852108617925705.Spec : Prop :=
  ∀ n, P709852108617925705.a n = A163250 n

theorem P709852108617925705.correct : P709852108617925705.Spec := by
  intro n
  simp only [A163250]

end A163250

/-! ## A163250.P30176545841764932

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=5, a(4)=15`
-/

namespace A163250.P30176545841764932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 5, 15] fun n a =>
  4 * a (n - 1) - 5 * a (n - 2) + a (n - 3) + 2 * a (n - 4) - a (n - 5)

end

end A163250.P30176545841764932

namespace A163250

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P30176545841764932.Spec : Prop :=
  ∀ n, P30176545841764932.a n = A163250 n

end A163250

/-! ## A163250.P11257481976748881307

`∑[∑[a(n-1)+a(n-2)+2]]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A163250.P11257481976748881307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  f2 (n - 1) + (f2 (n - 2) + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163250.P11257481976748881307

namespace A163250

/-- `∑[∑[a(n-1)+a(n-2)+2]]` -/
def P11257481976748881307.Spec : Prop :=
  ∀ n, (P11257481976748881307.a n : ℤ) = A163250 n

end A163250

/-! ## A163250.P12096078510537797398

`(1-n)²+a(n-1)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A163250.P12096078510537797398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (1 - (n : ℤ)) ^ 2 + (a (n - 1) + a (n - 2))

end

end A163250.P12096078510537797398

namespace A163250

/-- `(1-n)²+a(n-1)+a(n-2)` -/
def P12096078510537797398.Spec : Prop :=
  ∀ n, P12096078510537797398.a n = A163250 n

end A163250

/-! ## A163250.P6139654500975421502

`∑[A001924(n)-n]`
-/

namespace A163250.P6139654500975421502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163250.P6139654500975421502

namespace A163250

/-- `∑[A001924(n)-n]` -/
def P6139654500975421502.Spec : Prop :=
  ∀ n, P6139654500975421502.a n = A163250 n

end A163250

/-! ## A163250.P1224115796782530167

`A014162(n)-∑[n]`
-/

namespace A163250.P1224115796782530167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A163250.P1224115796782530167

namespace A163250

/-- `A014162(n)-∑[n]` -/
def P1224115796782530167.Spec : Prop :=
  ∀ n, P1224115796782530167.a n = A163250 n

end A163250

/-! ## A163250.P4140194135213916992

`∑[∑[∑[A000045(n)]]-n]`
-/

namespace A163250.P4140194135213916992
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163250.P4140194135213916992

namespace A163250

/-- `∑[∑[∑[A000045(n)]]-n]` -/
def P4140194135213916992.Spec : Prop :=
  ∀ n, P4140194135213916992.a n = A163250 n

end A163250

/-! ## A163250.P6766278637658482666

`∑[∑[A000071(n+2)]-n]`
-/

namespace A163250.P6766278637658482666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163250.P6766278637658482666

namespace A163250

/-- `∑[∑[A000071(n+2)]-n]` -/
def P6766278637658482666.Spec : Prop :=
  ∀ n, P6766278637658482666.a n = A163250 n

end A163250

/-! ## A163250.P12957914742634001589

`∑[∑[A339572(2*n)]-n]`
-/

namespace A163250.P12957914742634001589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163250.P12957914742634001589

namespace A163250

/-- `∑[∑[A339572(2*n)]-n]` -/
def P12957914742634001589.Spec : Prop :=
  ∀ n, P12957914742634001589.a n = A163250 n

end A163250

/-! ## A163250.P12467998495562975829

`A001891(n+1)-(n+1)²`
-/

namespace A163250.P12467998495562975829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A163250.P12467998495562975829

namespace A163250

/-- `A001891(n+1)-(n+1)²` -/
def P12467998495562975829.Spec : Prop :=
  ∀ n, P12467998495562975829.a n = A163250 n

end A163250

/-! ## A163250.P12813834755329885332

`∑[A000126(n+1)-(n+1)]`
-/

namespace A163250.P12813834755329885332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000126 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163250.P12813834755329885332

namespace A163250

/-- `∑[A000126(n+1)-(n+1)]` -/
def P12813834755329885332.Spec : Prop :=
  ∀ n, P12813834755329885332.a n = A163250 n

end A163250

/-! ## A163250.P13863515027931527853

`A116717(n+1)-(∑[n]+1)`
-/

namespace A163250.P13863515027931527853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116717 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A163250.P13863515027931527853

namespace A163250

/-- `A116717(n+1)-(∑[n]+1)` -/
def P13863515027931527853.Spec : Prop :=
  ∀ n, P13863515027931527853.a n = A163250 n

end A163250

/-! ## A163250.P412894591969106068

`∑[A020706(n)-2*(n+2)]`
-/

namespace A163250.P412894591969106068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 n - (2 * (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163250.P412894591969106068

namespace A163250

/-- `∑[A020706(n)-2*(n+2)]` -/
def P412894591969106068.Spec : Prop :=
  ∀ n, P412894591969106068.a n = A163250 n

end A163250

/-! ## A163250.P613844001174051146

`∑[A006327(n+4)-2*n]`
-/

namespace A163250.P613844001174051146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006327 (n + 4) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163250.P613844001174051146

namespace A163250

/-- `∑[A006327(n+4)-2*n]` -/
def P613844001174051146.Spec : Prop :=
  ∀ n, P613844001174051146.a n = A163250 n

end A163250

/-! ## A163250.P843356347898665873

`∑[A001911(n+1)]-(n+1)²`
-/

namespace A163250.P843356347898665873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A163250.P843356347898665873

namespace A163250

/-- `∑[A001911(n+1)]-(n+1)²` -/
def P843356347898665873.Spec : Prop :=
  ∀ n, P843356347898665873.a n = A163250 n

end A163250

/-! ## A163250.P14892830546779130787

`∑[A020701(n)-2]-(n+1)²`
-/

namespace A163250.P14892830546779130787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A163250.P14892830546779130787

namespace A163250

/-- `∑[A020701(n)-2]-(n+1)²` -/
def P14892830546779130787.Spec : Prop :=
  ∀ n, P14892830546779130787.a n = A163250 n

end A163250

/-! ## A163250.P15131183659153981983

`∑[∑[A131524(2*(n+1))]-n]`
-/

namespace A163250.P15131183659153981983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163250.P15131183659153981983

namespace A163250

/-- `∑[∑[A131524(2*(n+1))]-n]` -/
def P15131183659153981983.Spec : Prop :=
  ∀ n, P15131183659153981983.a n = A163250 n

end A163250

/-! ## A163250.P5367926801001179416

`∑[∑[∑[A001611(n)-1]-1]+1]`
-/

namespace A163250.P5367926801001179416
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163250.P5367926801001179416

namespace A163250

/-- `∑[∑[∑[A001611(n)-1]-1]+1]` -/
def P5367926801001179416.Spec : Prop :=
  ∀ n, P5367926801001179416.a n = A163250 n

end A163250

/-! ## A163250.P15597261987671329378

`A192955(n)-A000045(n)`
-/

namespace A163250.P15597261987671329378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192955 n - A000045 n

end

end A163250.P15597261987671329378

namespace A163250

/-- `A192955(n)-A000045(n)` -/
def P15597261987671329378.Spec : Prop :=
  ∀ n, P15597261987671329378.a n = A163250 n

end A163250

/-!
# A163251: Primes that are sum of (at least two) consecutive squares.

The programs for A163251, there is no canonical definition to state claims against.
-/

/-! ## A163251.P11660892099391270678

`p?[A034705(n+1)]`
-/

namespace A163251.P11660892099391270678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163251.P11660892099391270678

/-! ## A163251.P14067765762223148517

`∩[A034705(n+1), A325143(n+1)]`
-/

namespace A163251.P14067765762223148517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163251.P14067765762223148517

/-! ## A163251.P7601118973572812086

`∩[A034705(n+1), A230359(n+1)]`
-/

namespace A163251.P7601118973572812086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163251.P7601118973572812086

/-! ## A163251.P5261655509058925731

`∩[A000040(n+1), A034705(n+1)]`
-/

namespace A163251.P5261655509058925731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163251.P5261655509058925731

/-! ## A163251.P5827496727248028410

`∩[A034705(n+1), A045344(n+1)]`
-/

namespace A163251.P5827496727248028410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163251.P5827496727248028410

/-! ## A163251.P15121541252910095920

`∩[A034705(n+1), A053813(n+1)]`
-/

namespace A163251.P15121541252910095920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163251.P15121541252910095920

/-! ## A163251.P3317468190850921875

`∩[A034705(n+1), A064728(n+1)]`
-/

namespace A163251.P3317468190850921875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163251.P3317468190850921875

/-! ## A163251.P9189177496795886914

`∩[A034705(n+1), A065091(n+1)]`
-/

namespace A163251.P9189177496795886914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163251.P9189177496795886914

/-! ## A163251.P10244619094782693214

`∩[A034705(n+1), A070159(n+1)]`
-/

namespace A163251.P10244619094782693214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163251.P10244619094782693214

/-! ## A163251.P14823278835806406207

`∩[A034705(n+1), A087490(n+1)]`
-/

namespace A163251.P14823278835806406207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163251.P14823278835806406207

/-! ## A163251.P12708215682710244386

`∩[A034705(n+1), A106118(n+1)]`
-/

namespace A163251.P12708215682710244386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163251.P12708215682710244386

/-! ## A163251.P11016744285543493617

`∩[A034705(n+1), A108719(n+1)]`
-/

namespace A163251.P11016744285543493617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163251.P11016744285543493617

/-! ## A163251.P11133675041838587074

`∩[A034705(n+1), A116974(n+1)]`
-/

namespace A163251.P11133675041838587074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163251.P11133675041838587074

/-! ## A163251.P17189576038521731991

`∩[A034705(n+1), A138837(n+1)]`
-/

namespace A163251.P17189576038521731991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163251.P17189576038521731991

/-! ## A163251.P8710486403144488754

`∩[A034705(n+1), A215848(n+1)]`
-/

namespace A163251.P8710486403144488754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163251.P8710486403144488754

/-! ## A163251.P11673180368107055634

`record[A006530(A034705(n+4))]`
-/

namespace A163251.P11673180368107055634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A034705 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163251.P11673180368107055634

/-! ## A163251.P4404908901868748338

`filter[A034705(n+2), A010051(#)]`
-/

namespace A163251.P4404908901868748338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034705 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A163251.P4404908901868748338

/-!
# A163252: a(0) = 0, and a(n) is the least positive integer not occurring earlier in the sequence such that a(n-1) and a(n) differ in only one bit when written in binary.

The programs for A163252, there is no canonical definition to state claims against.
-/

/-! ## A163252.P15479705289910361888

`∑{p}[A330919(n+1), A048675(#)]`
-/

namespace A163252.P15479705289910361888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A163252.P15479705289910361888

/-! ## A163252.P7132209360530826818

`∑{p}[A330919(n+1), A048676(#)]`
-/

namespace A163252.P7132209360530826818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048676 p

end

end A163252.P7132209360530826818

/-! ## A163252.P7531252621807899400

`∑{p}[A330919(n+1), A087207(#)]`
-/

namespace A163252.P7531252621807899400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p

end

end A163252.P7531252621807899400

/-! ## A163252.P9583426566205430708

`∑{p}[A330919(n+1), A112479(#)]`
-/

namespace A163252.P9583426566205430708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A112479 p

end

end A163252.P9583426566205430708

/-! ## A163252.P1760026315923024133

`∑{p}[A330919(n+1), A156552(#)]`
-/

namespace A163252.P1760026315923024133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A163252.P1760026315923024133

/-! ## A163252.P14026069973467931170

`∑{p}[A330919(n+1), A162474(#)]`
-/

namespace A163252.P14026069973467931170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A162474 p

end

end A163252.P14026069973467931170

/-! ## A163252.P10562615859981538180

`∑{p}[A330919(n+1), A233249(#)]`
-/

namespace A163252.P10562615859981538180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A233249 p

end

end A163252.P10562615859981538180

/-! ## A163252.P14498695676409823469

`∑{p}[A330919(n+1), A248663(#)]`
-/

namespace A163252.P14498695676409823469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A248663 p

end

end A163252.P14498695676409823469

/-! ## A163252.P8849494414499876094

`∑{p}[A330919(n+1), A297112(#)]`
-/

namespace A163252.P8849494414499876094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A297112 p

end

end A163252.P8849494414499876094

/-!
# A163254: Array of the nonsquares; the columns satisfy c(n)=c(n-1)+c(n-2)-c(n-3)+1.

The programs for A163254, there is no canonical definition to state claims against.
-/

/-! ## A163254.P3618432480076848787

`A000037(A163255(n+1))`
-/

namespace A163254.P3618432480076848787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A163255 (n + 1)).toNat

end

end A163254.P3618432480076848787

/-! ## A163254.P6130190784566131215

`A082156(n+1)+or(1, A002262(n))`
-/

namespace A163254.P6130190784566131215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082156 (n + 1) + Int.lor 1 (A002262 n)

end

end A163254.P6130190784566131215

/-! ## A163254.P1908227084406574892

`A082156(n+1)+or(1, A144328(n+1))`
-/

namespace A163254.P1908227084406574892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082156 (n + 1) + Int.lor 1 (A144328 (n + 1))

end

end A163254.P1908227084406574892

/-! ## A163254.P838963571301487397

`A109613(A002262(n))+A082156(n+1)`
-/

namespace A163254.P838963571301487397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A002262 n).toNat + A082156 (n + 1)

end

end A163254.P838963571301487397

/-! ## A163254.P6674574577573986319

`A163255(n+1)+A008619(A294317(n))`
-/

namespace A163254.P6674574577573986319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163255 (n + 1) + A008619 (A294317 n).toNat

end

end A163254.P6674574577573986319

/-! ## A163254.P2691145768990534173

`A095833(n+1)+A004652(A002260(n+1))`
-/

namespace A163254.P2691145768990534173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095833 (n + 1) + A004652 (A002260 (n + 1)).toNat

end

end A163254.P2691145768990534173

/-! ## A163254.P8370424441252052383

`A082156(n+1)+A004525(A158405(n+1))`
-/

namespace A163254.P8370424441252052383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082156 (n + 1) + A004525 (A158405 (n + 1)).toNat

end

end A163254.P8370424441252052383

/-! ## A163254.P16986414537622383579

`A163255(n+1)+A000194(A082156(n+1))`
-/

namespace A163254.P16986414537622383579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163255 (n + 1) + A000194 (A082156 (n + 1)).toNat

end

end A163254.P16986414537622383579

/-! ## A163254.P13446767328614886404

`A163255(n+1)+A000194(A163253(n+1))`
-/

namespace A163254.P13446767328614886404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163255 (n + 1) + A000194 (A163253 (n + 1)).toNat

end

end A163254.P13446767328614886404

/-! ## A163254.P11494546592093042108

`A163255(n+1)+A000194(A163257(n+1))`
-/

namespace A163254.P11494546592093042108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163255 (n + 1) + A000194 (A163257 (n + 1)).toNat

end

end A163254.P11494546592093042108

/-!
# A163255: An interspersion: the order array of A163254.

The programs for A163255, there is no canonical definition to state claims against.
-/

/-! ## A163255.P5429248289447305415

`A273751(∑[char[∑[n]]]²-n)`
-/

namespace A163255.P5429248289447305415
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273751 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A163255.P5429248289447305415

/-! ## A163255.P1940138394488908867

`A108644(A057027(n+1))`
-/

namespace A163255.P1940138394488908867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108644 (A057027 (n + 1)).toNat

end

end A163255.P1940138394488908867

/-! ## A163255.P17085903983336347496

`A033638(A294317(n))+∑[char[∑[n+1]]]`
-/

namespace A163255.P17085903983336347496
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A294317 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A163255.P17085903983336347496

/-! ## A163255.P12884256936110614716

`A056537(A091995(A082156(n+1)))`
-/

namespace A163255.P12884256936110614716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056537 (A091995 (A082156 (n + 1)).toNat).toNat

end

end A163255.P12884256936110614716

/-! ## A163255.P6693035155611145900

`A008621(A294317(n)²)+A003056(n)`
-/

namespace A163255.P6693035155611145900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A294317 n ^ 2).toNat + A003056 n

end

end A163255.P6693035155611145900

/-! ## A163255.P9752143809045319456

`A002620(A294317(n))+∑[A010054(n)]`
-/

namespace A163255.P9752143809045319456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A294317 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163255.P9752143809045319456

/-! ## A163255.P11411053590251185976

`A002620(A294317(n))+A002024(n+1)`
-/

namespace A163255.P11411053590251185976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A294317 n).toNat + A002024 (n + 1)

end

end A163255.P11411053590251185976

/-! ## A163255.P17201115929757504256

`A000037(A082156(n+1))-A099375(n)`
-/

namespace A163255.P17201115929757504256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A082156 (n + 1)).toNat - A099375 n

end

end A163255.P17201115929757504256

/-! ## A163255.P4949855660701320047

`A144328(n+1)+A028391(A082156(n+1))`
-/

namespace A163255.P4949855660701320047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) + A028391 (A082156 (n + 1)).toNat

end

end A163255.P4949855660701320047

/-! ## A163255.P16546496408141188816

`A028391(A163254(n+1))`
-/

namespace A163255.P16546496408141188816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A163254 (n + 1)).toNat

end

end A163255.P16546496408141188816

/-!
# A163256: Fractal sequence of the interspersion A163253.

The programs for A163256, the canonical program `A163256.P226492843122015427` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163256 has offset 1).

The definition of A163256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163256.P11638923596318948835

`A002260(2*comp[n²]-floor(sqrt(n)))`
-/

namespace A163256.P11638923596318948835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - Nat.sqrt n)

end

end A163256.P11638923596318948835

namespace A163256

/-- `A002260(2*comp[n²]-floor(sqrt(n)))` -/
def P11638923596318948835.Spec : Prop :=
  ∀ n, P11638923596318948835.a n = A163256 (n + 1)

end A163256

/-! ## A163256.P318674587773823326

`A193738(eq[2, gcd(2, A193739(n))])`
-/

namespace A163256.P318674587773823326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A193739 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A163256.P318674587773823326

namespace A163256

/-- `A193738(eq[2, gcd(2, A193739(n))])` -/
def P318674587773823326.Spec : Prop :=
  ∀ n, P318674587773823326.a n = A163256 (n + 1)

end A163256

/-! ## A163256.P9654963541004487691

`A144328(3*A000037(n+1)-n+1)`
-/

namespace A163256.P9654963541004487691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (3 * A000037 (n + 1) - (n : ℤ) + 1).toNat

end

end A163256.P9654963541004487691

namespace A163256

/-- `A144328(3*A000037(n+1)-n+1)` -/
def P9654963541004487691.Spec : Prop :=
  ∀ n, P9654963541004487691.a n = A163256 (n + 1)

end A163256

/-! ## A163256.P226492843122015427

`A028310(A082375(A082375(n)+n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A163256

/-- `A028310(A082375(A082375(n)+n))` -/
def P226492843122015427.Spec : Prop :=
  ∀ n, P226492843122015427.a n = A163256 (n + 1)

theorem P226492843122015427.correct : P226492843122015427.Spec := by
  intro n
  simp only [A163256, Nat.add_sub_cancel]

end A163256

/-! ## A163256.P14569688270575288830

`A002262(2*A000037(n+1)-A000196(n))`
-/

namespace A163256.P14569688270575288830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * A000037 (n + 1) - A000196 n).toNat

end

end A163256.P14569688270575288830

namespace A163256

/-- `A002262(2*A000037(n+1)-A000196(n))` -/
def P14569688270575288830.Spec : Prop :=
  ∀ n, P14569688270575288830.a n = A163256 (n + 1)

end A163256

/-! ## A163256.P12391011870241583329

`A002262(A005843(A000037(n+1))-A000196(n))`
-/

namespace A163256.P12391011870241583329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A005843 (A000037 (n + 1)).toNat - A000196 n).toNat

end

end A163256.P12391011870241583329

namespace A163256

/-- `A002262(A005843(A000037(n+1))-A000196(n))` -/
def P12391011870241583329.Spec : Prop :=
  ∀ n, P12391011870241583329.a n = A163256 (n + 1)

end A163256

/-! ## A163256.P6080137779438837522

`A027434(A002378(A074294(n+1)))%A027434(n+1)`
-/

namespace A163256.P6080137779438837522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027434 (A002378 (A074294 (n + 1)).toNat).toNat) (A027434 (n + 1))

end

end A163256.P6080137779438837522

namespace A163256

/-- `A027434(A002378(A074294(n+1)))%A027434(n+1)` -/
def P6080137779438837522.Spec : Prop :=
  ∀ n, P6080137779438837522.a n = A163256 (n + 1)

end A163256

/-! ## A163256.P8068604689374846155

`A002262(A000037(n+1)+A000037(n+1)-A000196(n))`
-/

namespace A163256.P8068604689374846155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A000037 (n + 1) + (A000037 (n + 1) - A000196 n)).toNat

end

end A163256.P8068604689374846155

namespace A163256

/-- `A002262(A000037(n+1)+A000037(n+1)-A000196(n))` -/
def P8068604689374846155.Spec : Prop :=
  ∀ n, P8068604689374846155.a n = A163256 (n + 1)

end A163256

/-!
# A163257: An interspersion: the order array of the even-numbered columns (after swapping the first two rows) of the double interspersion at A161179.

The programs for A163257, there is no canonical definition to state claims against.
-/

/-! ## A163257.P12081427188455087210

`A339635(A043317(n+1))+A059036(n)`
-/

namespace A163257.P12081427188455087210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339635 (A043317 (n + 1)).toNat + A059036 n

end

end A163257.P12081427188455087210

/-! ## A163257.P17075645467405696589

`A194034(n+1)+A054907(A219209(n))`
-/

namespace A163257.P17075645467405696589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194034 (n + 1) + A054907 (A219209 n).toNat

end

end A163257.P17075645467405696589

/-! ## A163257.P10181134727954282977

`A339635(n+1)+A059036(n)*A178725(A181543(n))`
-/

namespace A163257.P10181134727954282977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339635 (n + 1) + A059036 n * A178725 (A181543 n).toNat

end

end A163257.P10181134727954282977

/-! ## A163257.P17321878188301859830

`A000038(A221001(n+1))+A339635(n+1)+A059036(n)`
-/

namespace A163257.P17321878188301859830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A221001 (n + 1)).toNat + (A339635 (n + 1) + A059036 n)

end

end A163257.P17321878188301859830

/-!
# A163258: Fractal sequence of the interspersion A163257.

The programs for A163258, there is no canonical definition to state claims against.
-/

/-! ## A163258.P17309159174376892125

`A356224(∪[A356232(n+1), A356243(n+1)])`
-/

namespace A163258.P17309159174376892125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356243 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356224 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A163258.P17309159174376892125

/-!
# A163259: Triangle T(n,k) read by rows: mod(A007318(n,k+1);A007318(n,k)).

The programs for A163259, the canonical program `A163259.P761500205964420747` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163259 has offset 1).

The definition of A163259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163259.P2856607303544738722

`A135278(n)%A007318(n)`
-/

namespace A163259.P2856607303544738722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135278 n) (A007318 n)

end

end A163259.P2856607303544738722

namespace A163259

/-- `A135278(n)%A007318(n)` -/
def P2856607303544738722.Spec : Prop :=
  ∀ n, P2856607303544738722.a n = A163259 (n + 1)

end A163259

/-! ## A163259.P7303014432017130792

`A153861(n)%A007318(n)`
-/

namespace A163259.P7303014432017130792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153861 n) (A007318 n)

end

end A163259.P7303014432017130792

namespace A163259

/-- `A153861(n)%A007318(n)` -/
def P7303014432017130792.Spec : Prop :=
  ∀ n, P7303014432017130792.a n = A163259 (n + 1)

end A163259

/-! ## A163259.P13329096812435029206

`A184049(n)%A007318(n)`
-/

namespace A163259.P13329096812435029206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184049 n) (A007318 n)

end

end A163259.P13329096812435029206

namespace A163259

/-- `A184049(n)%A007318(n)` -/
def P13329096812435029206.Spec : Prop :=
  ∀ n, P13329096812435029206.a n = A163259 (n + 1)

end A163259

/-! ## A163259.P2205153339107762593

`A199011(n)%A007318(n)`
-/

namespace A163259.P2205153339107762593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199011 n) (A007318 n)

end

end A163259.P2205153339107762593

namespace A163259

/-- `A199011(n)%A007318(n)` -/
def P2205153339107762593.Spec : Prop :=
  ∀ n, P2205153339107762593.a n = A163259 (n + 1)

end A163259

/-! ## A163259.P9140688900226676749

`A007318(n+1)%A007318(n)`
-/

namespace A163259.P9140688900226676749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (n + 1)) (A007318 n)

end

end A163259.P9140688900226676749

namespace A163259

/-- `A007318(n+1)%A007318(n)` -/
def P9140688900226676749.Spec : Prop :=
  ∀ n, P9140688900226676749.a n = A163259 (n + 1)

end A163259

/-! ## A163259.P761500205964420747

`A074909(n+1)%C(A003056(n), A025581(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A163259

/-- `A074909(n+1)%C(A003056(n), A025581(n))` -/
def P761500205964420747.Spec : Prop :=
  ∀ n, P761500205964420747.a n = A163259 (n + 1)

theorem P761500205964420747.correct : P761500205964420747.Spec := by
  intro n
  simp only [A163259, Nat.add_sub_cancel]

end A163259

/-! ## A163259.P10785134602188962631

`abs(A108086(n+1)%A108086(n))`
-/

namespace A163259.P10785134602188962631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A108086 (n + 1)) (A108086 n)|

end

end A163259.P10785134602188962631

namespace A163259

/-- `abs(A108086(n+1)%A108086(n))` -/
def P10785134602188962631.Spec : Prop :=
  ∀ n, P10785134602188962631.a n = A163259 (n + 1)

end A163259

/-! ## A163259.P448399867397438012

`ceil(A134059(n+1)/3)%ceil(A134059(n)/3)`
-/

namespace A163259.P448399867397438012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A134059 (n + 1) : ℚ) / 3⌉ ⌈(A134059 n : ℚ) / 3⌉

end

end A163259.P448399867397438012

namespace A163259

/-- `ceil(A134059(n+1)/3)%ceil(A134059(n)/3)` -/
def P448399867397438012.Spec : Prop :=
  ∀ n, P448399867397438012.a n = A163259 (n + 1)

end A163259

/-! ## A163259.P17765977590849414115

`A249755(n)%A007318(n)`
-/

namespace A163259.P17765977590849414115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249755 n) (A007318 n)

end

end A163259.P17765977590849414115

namespace A163259

/-- `A249755(n)%A007318(n)` -/
def P17765977590849414115.Spec : Prop :=
  ∀ n, P17765977590849414115.a n = A163259 (n + 1)

end A163259

/-! ## A163259.P14390676775728697560

`A249756(n)%A007318(n)`
-/

namespace A163259.P14390676775728697560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249756 n) (A007318 n)

end

end A163259.P14390676775728697560

namespace A163259

/-- `A249756(n)%A007318(n)` -/
def P14390676775728697560.Spec : Prop :=
  ∀ n, P14390676775728697560.a n = A163259 (n + 1)

end A163259

/-!
# A163262: Denominators of fractions in the approximation of the square root of 2 by means of: f(n) = 3*f(n-1)/(f(n-1)^2+1); with f(1)= 1.

The programs for A163262, there is no canonical definition to state claims against.
-/

/-! ## A163262.P1036292592368369036

`ratio[A163261(n+1)]/3`
-/

namespace A163262.P1036292592368369036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163261 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) / 3

end

end A163262.P1036292592368369036

/-!
# A163264: Highly composite numbers that are the product of consecutive integers.

The programs for A163264, there is no canonical definition to state claims against.
-/

/-! ## A163264.P3338254797187741452

`∩[A002182(n+1), A137895(n+1)]`
-/

namespace A163264.P3338254797187741452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163264.P3338254797187741452

/-! ## A163264.P7520374669380361826

`∩[A137895(n+1), A210594(n+1)]`
-/

namespace A163264.P7520374669380361826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163264.P7520374669380361826

/-! ## A163264.P16573148675510730983

`∩[A135372(n+1)-1, A137895(n+1)]`
-/

namespace A163264.P16573148675510730983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163264.P16573148675510730983

/-! ## A163264.P10108253279469081703

`∩[A137895(n+1), A262501(n)+a(n-1)]` with `a(0)=1`
-/

namespace A163264.P10108253279469081703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A262501 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163264.P10108253279469081703

/-!
# A163267: Partial sums of A118977.

The programs for A163267, there is no canonical definition to state claims against.
-/

/-! ## A163267.P10722267679181139002

`∑[A118977(n)]`
-/

namespace A163267.P10722267679181139002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163267.P10722267679181139002

/-! ## A163267.P17647201078715936781

`∑[A151571(n)-A151570(n)]`
-/

namespace A163267.P17647201078715936781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151571 n - A151570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163267.P17647201078715936781

/-! ## A163267.P17522311362810113806

`∑[A151570(n)-A151702(n)]`
-/

namespace A163267.P17522311362810113806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151570 n - A151702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163267.P17522311362810113806

/-! ## A163267.P13302875610429626721

`∑[A151845(n)-A151843(n)]`
-/

namespace A163267.P13302875610429626721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151845 n - A151843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163267.P13302875610429626721

/-! ## A163267.P17687393935383064203

`A118977(A028310(n))+a(n-1)` with `a(0)=0`
-/

namespace A163267.P17687393935383064203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A118977 (A028310 n).toNat + a (n - 1)

end

end A163267.P17687393935383064203

/-! ## A163267.P6445102187962369051

`∑[A151847(n+1)-Δ[A151843(n)]]`
-/

namespace A163267.P6445102187962369051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151847 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163267.P6445102187962369051

/-! ## A163267.P6504946689083864292

`∑[A151847(n+1)]-A151843(n+1)`
-/

namespace A163267.P6504946689083864292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A151843 (n + 1)

end

end A163267.P6504946689083864292

/-! ## A163267.P11705550354154150773

`A151687(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A163267.P11705550354154150773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A151687 n + a (n - 2)

end

end A163267.P11705550354154150773

/-!
# A163268: Primes p such that 1 + p + p^2 + p^3 + p^4 + p^5 + p^6 is prime.

The programs for A163268, there is no canonical definition to state claims against.
-/

/-! ## A163268.P6291185016695350311

`p?[A100330(n+1)]`
-/

namespace A163268.P6291185016695350311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163268.P6291185016695350311

/-! ## A163268.P6097131928289612843

`∩[A042997(n+1), A100330(n+1)]`
-/

namespace A163268.P6097131928289612843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163268.P6097131928289612843

/-! ## A163268.P17643808269498280364

`∩[A100330(n+1), A216881(n+1)]`
-/

namespace A163268.P17643808269498280364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163268.P17643808269498280364

/-! ## A163268.P16126476684651009267

`∩[A100330(n+1), A216882(n+1)]`
-/

namespace A163268.P16126476684651009267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163268.P16126476684651009267

/-! ## A163268.P9349705237628145521

`∩[A042966(n+1), A100330(n+1)]`
-/

namespace A163268.P9349705237628145521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163268.P9349705237628145521

/-! ## A163268.P10172924284739825037

`∩[A000040(n+1), A100330(n+1)]`
-/

namespace A163268.P10172924284739825037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163268.P10172924284739825037

/-! ## A163268.P18407796893858986093

`∩[A100330(n+1), A132630(n+1)]`
-/

namespace A163268.P18407796893858986093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163268.P18407796893858986093

/-! ## A163268.P14556820054493619270

`∩[A100330(n+1), A175787(n+1)]`
-/

namespace A163268.P14556820054493619270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163268.P14556820054493619270

/-! ## A163268.P13726550548223040827

`∩[A100330(n+1), A182986(n+1)]`
-/

namespace A163268.P13726550548223040827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163268.P13726550548223040827

/-! ## A163268.P2440454103392579482

`∩[A100330(n+1), A186285(n+1)]`
-/

namespace A163268.P2440454103392579482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163268.P2440454103392579482

/-! ## A163268.P15008337962432851892

`∩[A100330(n+1), A268391(n+1)]`
-/

namespace A163268.P15008337962432851892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163268.P15008337962432851892

/-! ## A163268.P6413928842408236008

`∩[A100330(n+1), A348283(n+1)]`
-/

namespace A163268.P6413928842408236008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163268.P6413928842408236008

/-! ## A163268.P5940187142543036612

`∩[A100330(n+1), A393213(n+1)]`
-/

namespace A163268.P5940187142543036612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163268.P5940187142543036612

/-! ## A163268.P8142984314080163168

`∩[A008864(n+1)-1, A100330(n+1)]`
-/

namespace A163268.P8142984314080163168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163268.P8142984314080163168

/-! ## A163268.P17708560066353114972

`∩[A000430(n+1), A100330(n+1)]`
-/

namespace A163268.P17708560066353114972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163268.P17708560066353114972

/-! ## A163268.P12159574012647215772

`∩[A009087(n+1), A100330(n+1)]`
-/

namespace A163268.P12159574012647215772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163268.P12159574012647215772

/-! ## A163268.P12020083671776748079

`∩[A050376(n+1), A100330(n+1)]`
-/

namespace A163268.P12020083671776748079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163268.P12020083671776748079

/-! ## A163268.P6414542080730236490

`∩[A100330(n+1), A136327(n+1)]`
-/

namespace A163268.P6414542080730236490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163268.P6414542080730236490

/-! ## A163268.P5604139020732123871

`∩[A100330(n+1), A128603(n+1)]`
-/

namespace A163268.P5604139020732123871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163268.P5604139020732123871

/-!
# A163269: T(n,k) = largest coefficient in the expansion of (1 + ... + x^(n-1))^(2*k).

The programs for A163269, there is no canonical definition to state claims against.
-/

/-! ## A163269.P6894834214301465201

`A349933(comp[∑[n+1]])`
-/

namespace A163269.P6894834214301465201
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349933 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A163269.P6894834214301465201

/-! ## A163269.P5943528524221396486

`abs(1-A349933(round(sqrt(2*n))+n))+1`
-/

namespace A163269.P5943528524221396486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A349933 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + (n : ℤ)).toNat| + 1

end

end A163269.P5943528524221396486

/-! ## A163269.P11517695361878275770

`A349933(round(sqrt(2*n))+n)%A063262(n)`
-/

namespace A163269.P11517695361878275770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349933 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + (n : ℤ)).toNat) (A063262 n)

end

end A163269.P11517695361878275770

/-! ## A163269.P16719296152819758529

`A349933(round(sqrt(2*n))+n)+char[A142325(n+1)]`
-/

namespace A163269.P16719296152819758529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142325 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349933 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + (n : ℤ)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A163269.P16719296152819758529

/-! ## A163269.P3745831619358878910

`A349933(round(sqrt(2*n))+n)+char[A193428(n+3)]`
-/

namespace A163269.P3745831619358878910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193428 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349933 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + (n : ℤ)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A163269.P3745831619358878910

/-! ## A163269.P6986961451652365165

`A007376(A031288(n+1))*A349933(round(sqrt(2*n))+n)`
-/

namespace A163269.P6986961451652365165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A031288 (n + 1)).toNat * A349933 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + (n : ℤ)).toNat

end

end A163269.P6986961451652365165

/-! ## A163269.P2910370143968056706

`A121289(A115017(n+3))*A349933(round(sqrt(2*n))+n)`
-/

namespace A163269.P2910370143968056706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121289 (A115017 (n + 3)).toNat * A349933 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + (n : ℤ)).toNat

end

end A163269.P2910370143968056706

/-! ## A163269.P6418314080880672610

`A349933(round(sqrt(2*n))+n)^A347161(A000005(n+1))`
-/

namespace A163269.P6418314080880672610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349933 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + (n : ℤ)).toNat : ℚ) ^ (A347161 (A000005 (n + 1)).toNat : ℤ)

end

end A163269.P6418314080880672610

/-! ## A163269.P17602382939479464282

`A349933(A347149(2*(n+1)))*A349933(round(sqrt(2*n))+n)`
-/

namespace A163269.P17602382939479464282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349933 (A347149 (2 * (n + 1))).toNat * A349933 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + (n : ℤ)).toNat

end

end A163269.P17602382939479464282

/-! ## A163269.P8171761709205876970

`A349933(A007401(n+1))%A011820(n)`
-/

namespace A163269.P8171761709205876970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349933 (A007401 (n + 1)).toNat) (A011820 n)

end

end A163269.P8171761709205876970

/-!
# A163270: First column in matrix inverse of (A047999*A154990).

The programs for A163270, there is no canonical definition to state claims against.
-/

/-! ## A163270.P14848775945072807854

`A000670(∑[∑{e}[xor(n, -n), 2-#]])`
-/

namespace A163270.P14848775945072807854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A163270.P14848775945072807854

/-! ## A163270.P6350408185118143539

`A276925(∑[∑{e}[xor(n, -n), 2-#]])`
-/

namespace A163270.P6350408185118143539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276925 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A163270.P6350408185118143539

/-! ## A163270.P10740453260590889982

`A276926(∑[∑{e}[xor(n, -n), 2-#]])`
-/

namespace A163270.P10740453260590889982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276926 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A163270.P10740453260590889982

/-! ## A163270.P17052797538351593161

`A276927(∑[∑{e}[xor(n, -n), 2-#]])`
-/

namespace A163270.P17052797538351593161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276927 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A163270.P17052797538351593161

/-! ## A163270.P14037615708625628958

`A276929(∑[∑{e}[xor(n, -n), 2-#]])`
-/

namespace A163270.P14037615708625628958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276929 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A163270.P14037615708625628958

/-!
# A163271: Numerators of fractions in a 'zero-transform' approximation of sqrt(2) by means of a(n) = (a(n-1) + c)/(a(n-1) + 1) with c=2 and a(1)=0.

The programs for A163271, the canonical program `A163271.P2867311970684229473` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163271 has offset 1).

The definition of A163271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163271.P2867311970684229473

`2*a(n-1)+a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A163271

/-- `2*a(n-1)+a(n-2)` -/
def P2867311970684229473.Spec : Prop :=
  ∀ n, (P2867311970684229473.a n : ℤ) = A163271 (n + 1)

theorem P2867311970684229473.correct : P2867311970684229473.Spec := by
  intro n
  simp only [A163271, Nat.add_sub_cancel]

end A163271

/-! ## A163271.P8938207519025854157

`2*A000129(n)`
-/

namespace A163271.P8938207519025854157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000129 n

end

end A163271.P8938207519025854157

namespace A163271

/-- `2*A000129(n)` -/
def P8938207519025854157.Spec : Prop :=
  ∀ n, P8938207519025854157.a n = A163271 (n + 1)

end A163271

/-! ## A163271.P5981373990735573842

`Δ[a(n-2)+lcm(2, a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A163271.P5981373990735573842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + Nat.lcm 2 (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A163271.P5981373990735573842

namespace A163271

/-- `Δ[a(n-2)+lcm(2, a(n-1))]` -/
def P5981373990735573842.Spec : Prop :=
  ∀ n, P5981373990735573842.a n = A163271 (n + 1)

end A163271

/-! ## A163271.P11399517707114956804

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A163271.P11399517707114956804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A163271.P11399517707114956804

namespace A163271

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P11399517707114956804.Spec : Prop :=
  ∀ n, (P11399517707114956804.a n : ℤ) = A163271 (n + 1)

theorem P11399517707114956804.correct : P11399517707114956804.Spec := by
  intro n
  simp only [A163271, Nat.add_sub_cancel, A163271.P11399517707114956804.a, A163271.P2867311970684229473.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A163271

/-! ## A163271.P17231912370069570717

`2-(2*(1-a(n-1))-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A163271.P17231912370069570717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 - (2 * (1 - a (n - 1)) - a (n - 2))

end

end A163271.P17231912370069570717

namespace A163271

/-- `2-(2*(1-a(n-1))-a(n-2))` -/
def P17231912370069570717.Spec : Prop :=
  ∀ n, P17231912370069570717.a n = A163271 (n + 1)

end A163271

/-! ## A163271.P302683661062394768

`a(n-2)-a(n-1)/(1/2-1)` with `a(0)=0, a(1)=2`
-/

namespace A163271.P302683661062394768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) - a (n - 1) / ((1 : ℚ) / 2 - 1)

end

end A163271.P302683661062394768

namespace A163271

/-- `a(n-2)-a(n-1)/(1/2-1)` -/
def P302683661062394768.Spec : Prop :=
  ∀ n, P302683661062394768.a n = (A163271 (n + 1) : ℚ)

end A163271

/-! ## A163271.P1358972377966318551

`a(n-1)-(a(n-1)%2-a(n-1)-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A163271.P1358972377966318551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) - (Int.tmod (a (n - 1)) 2 - a (n - 1) - a (n - 2))

end

end A163271.P1358972377966318551

namespace A163271

/-- `a(n-1)-(a(n-1)%2-a(n-1)-a(n-2))` -/
def P1358972377966318551.Spec : Prop :=
  ∀ n, P1358972377966318551.a n = A163271 (n + 1)

end A163271

/-! ## A163271.P13624182387425643281

`Δ[A001333(n)]`
-/

namespace A163271.P13624182387425643281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163271.P13624182387425643281

namespace A163271

/-- `Δ[A001333(n)]` -/
def P13624182387425643281.Spec : Prop :=
  ∀ n, P13624182387425643281.a n = A163271 (n + 1)

end A163271

/-! ## A163271.P12847385822292834990

`Δ[A293004(n)]`
-/

namespace A163271.P12847385822292834990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163271.P12847385822292834990

namespace A163271

/-- `Δ[A293004(n)]` -/
def P12847385822292834990.Spec : Prop :=
  ∀ n, P12847385822292834990.a n = A163271 (n + 1)

end A163271

/-! ## A163271.P18117889872714982098

`A097564(3*n)`
-/

namespace A163271.P18117889872714982098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (3 * n)

end

end A163271.P18117889872714982098

namespace A163271

/-- `A097564(3*n)` -/
def P18117889872714982098.Spec : Prop :=
  ∀ n, P18117889872714982098.a n = A163271 (n + 1)

end A163271

/-! ## A163271.P1933066160994651590

`lcm(2, A089499(n))`
-/

namespace A163271.P1933066160994651590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A089499 n)

end

end A163271.P1933066160994651590

namespace A163271

/-- `lcm(2, A089499(n))` -/
def P1933066160994651590.Spec : Prop :=
  ∀ n, (P1933066160994651590.a n : ℤ) = A163271 (n + 1)

end A163271

/-! ## A163271.P17406622298032076680

`Δ[abs(A123335(n))]`
-/

namespace A163271.P17406622298032076680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123335 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163271.P17406622298032076680

namespace A163271

/-- `Δ[abs(A123335(n))]` -/
def P17406622298032076680.Spec : Prop :=
  ∀ n, P17406622298032076680.a n = A163271 (n + 1)

end A163271

/-! ## A163271.P12880678177610880562

`A119016(Δ[n²])`
-/

namespace A163271.P12880678177610880562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A163271.P12880678177610880562

namespace A163271

/-- `A119016(Δ[n²])` -/
def P12880678177610880562.Spec : Prop :=
  ∀ n, P12880678177610880562.a n = A163271 (n + 1)

end A163271

/-! ## A163271.P3008409296003424373

`Δ[A119016(2*n)]`
-/

namespace A163271.P3008409296003424373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163271.P3008409296003424373

namespace A163271

/-- `Δ[A119016(2*n)]` -/
def P3008409296003424373.Spec : Prop :=
  ∀ n, P3008409296003424373.a n = A163271 (n + 1)

end A163271

/-! ## A163271.P6427455157398100497

`Δ[2*A171842(n)]`
-/

namespace A163271.P6427455157398100497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163271.P6427455157398100497

namespace A163271

/-- `Δ[2*A171842(n)]` -/
def P6427455157398100497.Spec : Prop :=
  ∀ n, P6427455157398100497.a n = A163271 (n + 1)

end A163271

/-! ## A163271.P13617449897704538019

`Δ[A002965(Δ[n²])]`
-/

namespace A163271.P13617449897704538019
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163271.P13617449897704538019

namespace A163271

/-- `Δ[A002965(Δ[n²])]` -/
def P13617449897704538019.Spec : Prop :=
  ∀ n, P13617449897704538019.a n = A163271 (n + 1)

end A163271

/-! ## A163271.P812223104730018043

`2*(A174191(n)-1)`
-/

namespace A163271.P812223104730018043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A174191 n - 1)

end

end A163271.P812223104730018043

namespace A163271

/-- `2*(A174191(n)-1)` -/
def P812223104730018043.Spec : Prop :=
  ∀ n, P812223104730018043.a n = A163271 (n + 1)

end A163271

/-! ## A163271.P16278080691853568377

`A249576(3*n+2)`
-/

namespace A163271.P16278080691853568377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (3 * n + 2)

end

end A163271.P16278080691853568377

namespace A163271

/-- `A249576(3*n+2)` -/
def P16278080691853568377.Spec : Prop :=
  ∀ n, P16278080691853568377.a n = A163271 (n + 1)

end A163271

/-!
# A163274: a(n) = n^4*(n+1)^2/2.

The programs for A163274, the canonical program `A163274.P6521112982158119716` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163274 has offset 0).

The definition of A163274 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163274.P6521112982158119716

`n^4*(n+1)²/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A163274

/-- `n^4*(n+1)²/2` -/
def P6521112982158119716.Spec : Prop :=
  ∀ n, P6521112982158119716.a n = (A163274 n : ℚ)

end A163274

/-! ## A163274.P12066820615775065544

`∑[Δ[lcm(n, (1-n)²)²]/2]`
-/

namespace A163274.P12066820615775065544
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((1 - (n : ℤ)) ^ 2) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163274.P12066820615775065544

namespace A163274

/-- `∑[Δ[lcm(n, (1-n)²)²]/2]` -/
def P12066820615775065544.Spec : Prop :=
  ∀ n, P12066820615775065544.a n = (A163274 n : ℚ)

end A163274

/-! ## A163274.P11207708322602721772

`2*A002411(n)²`
-/

namespace A163274.P11207708322602721772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002411 n ^ 2

end

end A163274.P11207708322602721772

namespace A163274

/-- `2*A002411(n)²` -/
def P11207708322602721772.Spec : Prop :=
  ∀ n, P11207708322602721772.a n = A163274 n

end A163274

/-! ## A163274.P10556081877877034264

`n²*A163102(n)`
-/

namespace A163274.P10556081877877034264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A163102 n

end

end A163274.P10556081877877034264

namespace A163274

/-- `n²*A163102(n)` -/
def P10556081877877034264.Spec : Prop :=
  ∀ n, P10556081877877034264.a n = A163274 n

end A163274

/-! ## A163274.P3266169316140401202

`n^3*A006002(n)`
-/

namespace A163274.P3266169316140401202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A006002 n

end

end A163274.P3266169316140401202

namespace A163274

/-- `n^3*A006002(n)` -/
def P3266169316140401202.Spec : Prop :=
  ∀ n, P3266169316140401202.a n = A163274 n

end A163274

/-! ## A163274.P694854985489943128

`2*∑[A000326(n)]²`
-/

namespace A163274.P694854985489943128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A163274.P694854985489943128

namespace A163274

/-- `2*∑[A000326(n)]²` -/
def P694854985489943128.Spec : Prop :=
  ∀ n, P694854985489943128.a n = A163274 n

end A163274

/-! ## A163274.P5860674694669451330

`n²*∑[A033431(n)]`
-/

namespace A163274.P5860674694669451330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163274.P5860674694669451330

namespace A163274

/-- `n²*∑[A033431(n)]` -/
def P5860674694669451330.Spec : Prop :=
  ∀ n, P5860674694669451330.a n = A163274 n

end A163274

/-! ## A163274.P8841524202729209553

`2*n²*A000537(n)`
-/

namespace A163274.P8841524202729209553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) * A000537 n

end

end A163274.P8841524202729209553

namespace A163274

/-- `2*n²*A000537(n)` -/
def P8841524202729209553.Spec : Prop :=
  ∀ n, P8841524202729209553.a n = A163274 n

end A163274

/-! ## A163274.P1281148416593422197

`(n+1)/2*A101362(n)`
-/

namespace A163274.P1281148416593422197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A101362 n : ℚ)

end

end A163274.P1281148416593422197

namespace A163274

/-- `(n+1)/2*A101362(n)` -/
def P1281148416593422197.Spec : Prop :=
  ∀ n, P1281148416593422197.a n = (A163274 n : ℚ)

end A163274

/-! ## A163274.P12025109139591348908

`(A255499(n)+n²)*n²`
-/

namespace A163274.P12025109139591348908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A255499 n + (n ^ 2 : ℤ)) * (n ^ 2 : ℤ)

end

end A163274.P12025109139591348908

namespace A163274

/-- `(A255499(n)+n²)*n²` -/
def P12025109139591348908.Spec : Prop :=
  ∀ n, P12025109139591348908.a n = A163274 n

end A163274

/-! ## A163274.P14394327333769414885

`A168192(n)+A000584(n)`
-/

namespace A163274.P14394327333769414885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168192 n + A000584 n

end

end A163274.P14394327333769414885

namespace A163274

/-- `A168192(n)+A000584(n)` -/
def P14394327333769414885.Spec : Prop :=
  ∀ n, P14394327333769414885.a n = A163274 n

end A163274

/-! ## A163274.P4217430030562019388

`A000537(n)*A001105(n)`
-/

namespace A163274.P4217430030562019388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n * A001105 n

end

end A163274.P4217430030562019388

namespace A163274

/-- `A000537(n)*A001105(n)` -/
def P4217430030562019388.Spec : Prop :=
  ∀ n, P4217430030562019388.a n = A163274 n

end A163274

/-! ## A163274.P5321433476749340226

`A002411(n)*A011379(n)`
-/

namespace A163274.P5321433476749340226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n * A011379 n

end

end A163274.P5321433476749340226

namespace A163274

/-- `A002411(n)*A011379(n)` -/
def P5321433476749340226.Spec : Prop :=
  ∀ n, P5321433476749340226.a n = A163274 n

end A163274

/-! ## A163274.P15194765772604410714

`A163102(n)*A253909(n)`
-/

namespace A163274.P15194765772604410714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 n * A253909 n

end

end A163274.P15194765772604410714

namespace A163274

/-- `A163102(n)*A253909(n)` -/
def P15194765772604410714.Spec : Prop :=
  ∀ n, P15194765772604410714.a n = A163274 n

end A163274

/-! ## A163274.P15135198543427276975

`A000217(n)²*A001105(n)`
-/

namespace A163274.P15135198543427276975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n ^ 2 * A001105 n

end

end A163274.P15135198543427276975

namespace A163274

/-- `A000217(n)²*A001105(n)` -/
def P15135198543427276975.Spec : Prop :=
  ∀ n, P15135198543427276975.a n = A163274 n

end A163274

/-! ## A163274.P1544973086546292232

`A347922(n+1)+A331528(n)`
-/

namespace A163274.P1544973086546292232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347922 (n + 1) + A331528 n

end

end A163274.P1544973086546292232

namespace A163274

/-- `A347922(n+1)+A331528(n)` -/
def P1544973086546292232.Spec : Prop :=
  ∀ n, P1544973086546292232.a n = A163274 n

end A163274

/-! ## A163274.P9413989069901141698

`A168351(n)+A000217(n)*A000578(n)`
-/

namespace A163274.P9413989069901141698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168351 n + A000217 n * A000578 n

end

end A163274.P9413989069901141698

namespace A163274

/-- `A168351(n)+A000217(n)*A000578(n)` -/
def P9413989069901141698.Spec : Prop :=
  ∀ n, P9413989069901141698.a n = A163274 n

end A163274

/-! ## A163274.P2085065291115944056

`(A132124(n)-A000330(n))*A002411(n)`
-/

namespace A163274.P2085065291115944056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132124 n - A000330 n) * A002411 n

end

end A163274.P2085065291115944056

namespace A163274

/-- `(A132124(n)-A000330(n))*A002411(n)` -/
def P2085065291115944056.Spec : Prop :=
  ∀ n, P2085065291115944056.a n = A163274 n

end A163274

/-! ## A163274.P5156327350372621344

`(A255211(n)-A000292(n))*A002411(n)`
-/

namespace A163274.P5156327350372621344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A255211 n - A000292 n) * A002411 n

end

end A163274.P5156327350372621344

namespace A163274

/-- `(A255211(n)-A000292(n))*A002411(n)` -/
def P5156327350372621344.Spec : Prop :=
  ∀ n, P5156327350372621344.a n = A163274 n

end A163274

/-! ## A163274.P2529499167293800047

`(A257093(n)-A255211(n))*A002411(n)`
-/

namespace A163274.P2529499167293800047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A257093 n - A255211 n) * A002411 n

end

end A163274.P2529499167293800047

namespace A163274

/-- `(A257093(n)-A255211(n))*A002411(n)` -/
def P2529499167293800047.Spec : Prop :=
  ∀ n, P2529499167293800047.a n = A163274 n

end A163274

/-!
# A163275: a(n) = n^5*(n+1)^2/2.

The programs for A163275, the canonical program `A163275.P4085693410306349691` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163275 has offset 0).

The definition of A163275 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163275.P4085693410306349691

`n^5*(n+1)²/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A163275

/-- `n^5*(n+1)²/2` -/
def P4085693410306349691.Spec : Prop :=
  ∀ n, P4085693410306349691.a n = (A163275 n : ℚ)

end A163275

/-! ## A163275.P15331294394988972854

`round(sqrt(C(n*n²²*(n+1)², 2)/2))`
-/

namespace A163275.P15331294394988972854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((Nat.choose (n * (n ^ 2) ^ 2 * (n + 1) ^ 2) 2 : ℚ) / 2 : ℝ))

end

end A163275.P15331294394988972854

namespace A163275

/-- `round(sqrt(C(n*n²²*(n+1)², 2)/2))` -/
def P15331294394988972854.Spec : Prop :=
  ∀ n, P15331294394988972854.a n = A163275 n

end A163275

/-! ## A163275.P10610883251927492145

`n*A163274(n)`
-/

namespace A163275.P10610883251927492145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A163274 n

end

end A163275.P10610883251927492145

namespace A163275

/-- `n*A163274(n)` -/
def P10610883251927492145.Spec : Prop :=
  ∀ n, P10610883251927492145.a n = A163275 n

end A163275

/-! ## A163275.P11328305253634963982

`∑[n]*A101362(n)`
-/

namespace A163275.P11328305253634963982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A101362 n

end

end A163275.P11328305253634963982

namespace A163275

/-- `∑[n]*A101362(n)` -/
def P11328305253634963982.Spec : Prop :=
  ∀ n, P11328305253634963982.a n = A163275 n

end A163275

/-! ## A163275.P7007499094426202509

`(n+1)*A168351(n)`
-/

namespace A163275.P7007499094426202509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A168351 n

end

end A163275.P7007499094426202509

namespace A163275

/-- `(n+1)*A168351(n)` -/
def P7007499094426202509.Spec : Prop :=
  ∀ n, P7007499094426202509.a n = A163275 n

end A163275

/-! ## A163275.P12146311617384879554

`n^3*A163102(n)`
-/

namespace A163275.P12146311617384879554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A163102 n

end

end A163275.P12146311617384879554

namespace A163275

/-- `n^3*A163102(n)` -/
def P12146311617384879554.Spec : Prop :=
  ∀ n, P12146311617384879554.a n = A163275 n

end A163275

/-! ## A163275.P754037390885748115

`n²²*A006002(n)`
-/

namespace A163275.P754037390885748115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A006002 n

end

end A163275.P754037390885748115

namespace A163275

/-- `n²²*A006002(n)` -/
def P754037390885748115.Spec : Prop :=
  ∀ n, P754037390885748115.a n = A163275 n

end A163275

/-! ## A163275.P11232516435580387772

`∑[n]²*A033431(n)`
-/

namespace A163275.P11232516435580387772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) * A033431 n

end

end A163275.P11232516435580387772

namespace A163275

/-- `∑[n]²*A033431(n)` -/
def P11232516435580387772.Spec : Prop :=
  ∀ n, P11232516435580387772.a n = A163275 n

end A163275

/-! ## A163275.P2664490969631211859

`A168364(n)+(n*n²)²`
-/

namespace A163275.P2664490969631211859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168364 n + ((n * n ^ 2) ^ 2 : ℤ)

end

end A163275.P2664490969631211859

namespace A163275

/-- `A168364(n)+(n*n²)²` -/
def P2664490969631211859.Spec : Prop :=
  ∀ n, P2664490969631211859.a n = A163275 n

end A163275

/-! ## A163275.P10130318515127563795

`2*(n*(n*A000217(n))²-1)+2`
-/

namespace A163275.P10130318515127563795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * ((n : ℤ) * A000217 n) ^ 2 - 1) + 2

end

end A163275.P10130318515127563795

namespace A163275

/-- `2*(n*(n*A000217(n))²-1)+2` -/
def P10130318515127563795.Spec : Prop :=
  ∀ n, P10130318515127563795.a n = A163275 n

end A163275

/-! ## A163275.P7597659323043398134

`A168526(n)+A168351(n)`
-/

namespace A163275.P7597659323043398134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168526 n + A168351 n

end

end A163275.P7597659323043398134

namespace A163275

/-- `A168526(n)+A168351(n)` -/
def P7597659323043398134.Spec : Prop :=
  ∀ n, P7597659323043398134.a n = A163275 n

end A163275

/-! ## A163275.P15698562367293894861

`lcm(A006002(n), A168351(n))`
-/

namespace A163275.P15698562367293894861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006002 n) (A168351 n)

end

end A163275.P15698562367293894861

namespace A163275

/-- `lcm(A006002(n), A168351(n))` -/
def P15698562367293894861.Spec : Prop :=
  ∀ n, (P15698562367293894861.a n : ℤ) = A163275 n

end A163275

/-! ## A163275.P12339097660506660407

`A002411(n)²*A005843(n)`
-/

namespace A163275.P12339097660506660407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n ^ 2 * A005843 n

end

end A163275.P12339097660506660407

namespace A163275

/-- `A002411(n)²*A005843(n)` -/
def P12339097660506660407.Spec : Prop :=
  ∀ n, P12339097660506660407.a n = A163275 n

end A163275

/-! ## A163275.P12852159508000961182

`2*A000537(n)*A000578(n)`
-/

namespace A163275.P12852159508000961182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000537 n * A000578 n

end

end A163275.P12852159508000961182

namespace A163275

/-- `2*A000537(n)*A000578(n)` -/
def P12852159508000961182.Spec : Prop :=
  ∀ n, P12852159508000961182.a n = A163275 n

end A163275

/-! ## A163275.P5024898793038643680

`A001014(n)+n*A168192(n)`
-/

namespace A163275.P5024898793038643680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n + (n : ℤ) * A168192 n

end

end A163275.P5024898793038643680

namespace A163275

/-- `A001014(n)+n*A168192(n)` -/
def P5024898793038643680.Spec : Prop :=
  ∀ n, P5024898793038643680.a n = A163275 n

end A163275

/-! ## A163275.P17075510475957126534

`A000578(n)²+n*A168192(n)`
-/

namespace A163275.P17075510475957126534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n ^ 2 + (n : ℤ) * A168192 n

end

end A163275.P17075510475957126534

namespace A163275

/-- `A000578(n)²+n*A168192(n)` -/
def P17075510475957126534.Spec : Prop :=
  ∀ n, P17075510475957126534.a n = A163275 n

end A163275

/-! ## A163275.P3334939824156303244

`(A000584(n)+A000583(n))*A000217(n)`
-/

namespace A163275.P3334939824156303244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000584 n + A000583 n) * A000217 n

end

end A163275.P3334939824156303244

namespace A163275

/-- `(A000584(n)+A000583(n))*A000217(n)` -/
def P3334939824156303244.Spec : Prop :=
  ∀ n, P3334939824156303244.a n = A163275 n

end A163275

/-! ## A163275.P17435032029989206240

`(A005898(n)-A003215(n))*A000537(n)`
-/

namespace A163275.P17435032029989206240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005898 n - A003215 n) * A000537 n

end

end A163275.P17435032029989206240

namespace A163275

/-- `(A005898(n)-A003215(n))*A000537(n)` -/
def P17435032029989206240.Spec : Prop :=
  ∀ n, P17435032029989206240.a n = A163275 n

end A163275

/-! ## A163275.P9419588377993383877

`(n+1)*n*A019583(n+1)`
-/

namespace A163275.P9419588377993383877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) * A019583 (n + 1))

end

end A163275.P9419588377993383877

namespace A163275

/-- `(n+1)*n*A019583(n+1)` -/
def P9419588377993383877.Spec : Prop :=
  ∀ n, P9419588377993383877.a n = A163275 n

end A163275

/-! ## A163275.P5523370440500974495

`A129194(n+1)*A129194(n)*A000578(n)`
-/

namespace A163275.P5523370440500974495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129194 (n + 1) * A129194 n * A000578 n

end

end A163275.P5523370440500974495

namespace A163275

/-- `A129194(n+1)*A129194(n)*A000578(n)` -/
def P5523370440500974495.Spec : Prop :=
  ∀ n, P5523370440500974495.a n = A163275 n

end A163275

/-!
# A163276: a(n) = n^6*(n+1)^2/2.

The programs for A163276, the canonical program `A163276.P17179705559365684468` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163276 has offset 0).

The definition of A163276 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163276.P17179705559365684468

`n^6*(n+1)²/2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A163276

/-- `n^6*(n+1)²/2` -/
def P17179705559365684468.Spec : Prop :=
  ∀ n, P17179705559365684468.a n = (A163276 n : ℚ)

end A163276

/-! ## A163276.P8840117838633786523

`n*A163275(n)`
-/

namespace A163276.P8840117838633786523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A163275 n

end

end A163276.P8840117838633786523

namespace A163276

/-- `n*A163275(n)` -/
def P8840117838633786523.Spec : Prop :=
  ∀ n, P8840117838633786523.a n = A163276 n

end A163276

/-! ## A163276.P3710655971297051375

`n²*A163274(n)`
-/

namespace A163276.P3710655971297051375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A163274 n

end

end A163276.P3710655971297051375

namespace A163276

/-- `n²*A163274(n)` -/
def P3710655971297051375.Spec : Prop :=
  ∀ n, P3710655971297051375.a n = A163276 n

end A163276

/-! ## A163276.P13370388899047673994

`(n+1)*A168526(n)`
-/

namespace A163276.P13370388899047673994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A168526 n

end

end A163276.P13370388899047673994

namespace A163276

/-- `(n+1)*A168526(n)` -/
def P13370388899047673994.Spec : Prop :=
  ∀ n, P13370388899047673994.a n = A163276 n

end A163276

/-! ## A163276.P6895462762584958553

`n²²*A163102(n)`
-/

namespace A163276.P6895462762584958553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * A163102 n

end

end A163276.P6895462762584958553

namespace A163276

/-- `n²²*A163102(n)` -/
def P6895462762584958553.Spec : Prop :=
  ∀ n, P6895462762584958553.a n = A163276 n

end A163276

/-! ## A163276.P4773410115252501783

`∑[n]²*A244730(n)`
-/

namespace A163276.P4773410115252501783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) * A244730 n

end

end A163276.P4773410115252501783

namespace A163276

/-- `∑[n]²*A244730(n)` -/
def P4773410115252501783.Spec : Prop :=
  ∀ n, P4773410115252501783.a n = A163276 n

end A163276

/-! ## A163276.P9860199726338121969

`(n+1)*n*A168351(n)`
-/

namespace A163276.P9860199726338121969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) * A168351 n)

end

end A163276.P9860199726338121969

namespace A163276

/-- `(n+1)*n*A168351(n)` -/
def P9860199726338121969.Spec : Prop :=
  ∀ n, P9860199726338121969.a n = A163276 n

end A163276

/-! ## A163276.P758758346772255184

`A168527(n)+A001015(n)`
-/

namespace A163276.P758758346772255184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168527 n + A001015 n

end

end A163276.P758758346772255184

namespace A163276

/-- `A168527(n)+A001015(n)` -/
def P758758346772255184.Spec : Prop :=
  ∀ n, P758758346772255184.a n = A163276 n

end A163276

/-! ## A163276.P3290917202595339206

`A168635(n)+A168526(n)`
-/

namespace A163276.P3290917202595339206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168635 n + A168526 n

end

end A163276.P3290917202595339206

namespace A163276

/-- `A168635(n)+A168526(n)` -/
def P3290917202595339206.Spec : Prop :=
  ∀ n, P3290917202595339206.a n = A163276 n

end A163276

/-! ## A163276.P14542240330846401838

`A000584(n)*A006002(n)`
-/

namespace A163276.P14542240330846401838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n * A006002 n

end

end A163276.P14542240330846401838

namespace A163276

/-- `A000584(n)*A006002(n)` -/
def P14542240330846401838.Spec : Prop :=
  ∀ n, P14542240330846401838.a n = A163276 n

end A163276

/-! ## A163276.P324929749892633476

`A002411(n)*A101362(n)`
-/

namespace A163276.P324929749892633476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n * A101362 n

end

end A163276.P324929749892633476

namespace A163276

/-- `A002411(n)*A101362(n)` -/
def P324929749892633476.Spec : Prop :=
  ∀ n, P324929749892633476.a n = A163276 n

end A163276

/-! ## A163276.P13266411098466355404

`A002378(n)*A168351(n)`
-/

namespace A163276.P13266411098466355404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n * A168351 n

end

end A163276.P13266411098466355404

namespace A163276

/-- `A002378(n)*A168351(n)` -/
def P13266411098466355404.Spec : Prop :=
  ∀ n, P13266411098466355404.a n = A163276 n

end A163276

/-! ## A163276.P2077074331715662281

`A163274(n)*A253909(n)`
-/

namespace A163276.P2077074331715662281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163274 n * A253909 n

end

end A163276.P2077074331715662281

namespace A163276

/-- `A163274(n)*A253909(n)` -/
def P2077074331715662281.Spec : Prop :=
  ∀ n, P2077074331715662281.a n = A163276 n

end A163276

/-! ## A163276.P9081693520757553982

`lcm(A006002(n), A168526(n))`
-/

namespace A163276.P9081693520757553982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006002 n) (A168526 n)

end

end A163276.P9081693520757553982

namespace A163276

/-- `lcm(A006002(n), A168526(n))` -/
def P9081693520757553982.Spec : Prop :=
  ∀ n, (P9081693520757553982.a n : ℤ) = A163276 n

end A163276

/-! ## A163276.P3475744008777713553

`2*A000537(n)*A000583(n)`
-/

namespace A163276.P3475744008777713553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000537 n * A000583 n

end

end A163276.P3475744008777713553

namespace A163276

/-- `2*A000537(n)*A000583(n)` -/
def P3475744008777713553.Spec : Prop :=
  ∀ n, P3475744008777713553.a n = A163276 n

end A163276

/-! ## A163276.P13178071726976459093

`2*A000217(n)²*A000583(n)`
-/

namespace A163276.P13178071726976459093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 n ^ 2 * A000583 n

end

end A163276.P13178071726976459093

namespace A163276

/-- `2*A000217(n)²*A000583(n)` -/
def P13178071726976459093.Spec : Prop :=
  ∀ n, P13178071726976459093.a n = A163276 n

end A163276

/-! ## A163276.P9587249622386564810

`(A062392(n)+A000217(n))*A000583(n)`
-/

namespace A163276.P9587249622386564810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062392 n + A000217 n) * A000583 n

end

end A163276.P9587249622386564810

namespace A163276

/-- `(A062392(n)+A000217(n))*A000583(n)` -/
def P9587249622386564810.Spec : Prop :=
  ∀ n, P9587249622386564810.a n = A163276 n

end A163276

/-! ## A163276.P6126412613126185475

`(A168178(n)+A000583(n))*A000578(n)`
-/

namespace A163276.P6126412613126185475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168178 n + A000583 n) * A000578 n

end

end A163276.P6126412613126185475

namespace A163276

/-- `(A168178(n)+A000583(n))*A000578(n)` -/
def P6126412613126185475.Spec : Prop :=
  ∀ n, P6126412613126185475.a n = A163276 n

end A163276

/-! ## A163276.P9113128266445116

`A168635(n)+A168635(n)/A028310(n)`
-/

namespace A163276.P9113128266445116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168635 n : ℚ) + (A168635 n : ℚ) / (A028310 n : ℚ)

end

end A163276.P9113128266445116

namespace A163276

/-- `A168635(n)+A168635(n)/A028310(n)` -/
def P9113128266445116.Spec : Prop :=
  ∀ n, P9113128266445116.a n = (A163276 n : ℚ)

end A163276

/-! ## A163276.P3019014837337054222

`A001105(n)*A002411(n)*A002411(n)`
-/

namespace A163276.P3019014837337054222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n * A002411 n * A002411 n

end

end A163276.P3019014837337054222

namespace A163276

/-- `A001105(n)*A002411(n)*A002411(n)` -/
def P3019014837337054222.Spec : Prop :=
  ∀ n, P3019014837337054222.a n = A163276 n

end A163276

/-!
# A163277: a(n) = n^7*(n+1)^2/2.

The programs for A163277, the canonical program `A163277.P9168275728597379524` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163277 has offset 0).

The definition of A163277 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163277.P16640052362777549291

`n^7*(n+1)²/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163277.P16640052362777549291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 7 * (n + 1) ^ 2 : ℚ) / 2

end

end A163277.P16640052362777549291

namespace A163277

/-- `n^7*(n+1)²/2` -/
def P16640052362777549291.Spec : Prop :=
  ∀ n, P16640052362777549291.a n = (A163277 n : ℚ)

end A163277

/-! ## A163277.P9168275728597379524

`n²*A163275(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A163277

/-- `n²*A163275(n)` -/
def P9168275728597379524.Spec : Prop :=
  ∀ n, P9168275728597379524.a n = A163277 n

theorem P9168275728597379524.correct : P9168275728597379524.Spec := by
  intro n
  simp only [A163277]

end A163277

/-! ## A163277.P15200255106387340560

`n*A163276(n)`
-/

namespace A163277.P15200255106387340560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A163276 n

end

end A163277.P15200255106387340560

namespace A163277

/-- `n*A163276(n)` -/
def P15200255106387340560.Spec : Prop :=
  ∀ n, P15200255106387340560.a n = A163277 n

end A163277

/-! ## A163277.P9552997378855065271

`(n+1)*A168635(n)`
-/

namespace A163277.P9552997378855065271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A168635 n

end

end A163277.P9552997378855065271

namespace A163277

/-- `(n+1)*A168635(n)` -/
def P9552997378855065271.Spec : Prop :=
  ∀ n, P9552997378855065271.a n = A163277 n

end A163277

/-! ## A163277.P11834198430395605070

`n^3*A163274(n)`
-/

namespace A163277.P11834198430395605070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A163274 n

end

end A163277.P11834198430395605070

namespace A163277

/-- `n^3*A163274(n)` -/
def P11834198430395605070.Spec : Prop :=
  ∀ n, P11834198430395605070.a n = A163277 n

end A163277

/-! ## A163277.P15269369482295148647

`A168636(n)+n²²²`
-/

namespace A163277.P15269369482295148647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168636 n + (((n ^ 2) ^ 2) ^ 2 : ℤ)

end

end A163277.P15269369482295148647

namespace A163277

/-- `A168636(n)+n²²²` -/
def P15269369482295148647.Spec : Prop :=
  ∀ n, P15269369482295148647.a n = A163277 n

end A163277

/-! ## A163277.P12433548894732060128

`(n+1)*n*A168526(n)`
-/

namespace A163277.P12433548894732060128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) * A168526 n)

end

end A163277.P12433548894732060128

namespace A163277

/-- `(n+1)*n*A168526(n)` -/
def P12433548894732060128.Spec : Prop :=
  ∀ n, P12433548894732060128.a n = A163277 n

end A163277

/-! ## A163277.P16554310183006116825

`A168675(n)+A168635(n)`
-/

namespace A163277.P16554310183006116825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168675 n + A168635 n

end

end A163277.P16554310183006116825

namespace A163277

/-- `A168675(n)+A168635(n)` -/
def P16554310183006116825.Spec : Prop :=
  ∀ n, P16554310183006116825.a n = A163277 n

end A163277

/-! ## A163277.P1880930839502665014

`A001014(n)*A006002(n)`
-/

namespace A163277.P1880930839502665014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n * A006002 n

end

end A163277.P1880930839502665014

namespace A163277

/-- `A001014(n)*A006002(n)` -/
def P1880930839502665014.Spec : Prop :=
  ∀ n, P1880930839502665014.a n = A163277 n

end A163277

/-! ## A163277.P255048084181032121

`A000584(n)*A163102(n)`
-/

namespace A163277.P255048084181032121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n * A163102 n

end

end A163277.P255048084181032121

namespace A163277

/-- `A000584(n)*A163102(n)` -/
def P255048084181032121.Spec : Prop :=
  ∀ n, P255048084181032121.a n = A163277 n

end A163277

/-! ## A163277.P3167312096925353394

`A002378(n)*A168526(n)`
-/

namespace A163277.P3167312096925353394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n * A168526 n

end

end A163277.P3167312096925353394

namespace A163277

/-- `A002378(n)*A168526(n)` -/
def P3167312096925353394.Spec : Prop :=
  ∀ n, P3167312096925353394.a n = A163277 n

end A163277

/-! ## A163277.P6626285079393359887

`A011379(n)*A168351(n)`
-/

namespace A163277.P6626285079393359887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n * A168351 n

end

end A163277.P6626285079393359887

namespace A163277

/-- `A011379(n)*A168351(n)` -/
def P6626285079393359887.Spec : Prop :=
  ∀ n, P6626285079393359887.a n = A163277 n

end A163277

/-! ## A163277.P6616523860927690072

`A163275(n)*A253909(n)`
-/

namespace A163277.P6616523860927690072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163275 n * A253909 n

end

end A163277.P6616523860927690072

namespace A163277

/-- `A163275(n)*A253909(n)` -/
def P6616523860927690072.Spec : Prop :=
  ∀ n, P6616523860927690072.a n = A163277 n

end A163277

/-! ## A163277.P3272561351859182994

`lcm(A006002(n), A168635(n))`
-/

namespace A163277.P3272561351859182994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006002 n) (A168635 n)

end

end A163277.P3272561351859182994

namespace A163277

/-- `lcm(A006002(n), A168635(n))` -/
def P3272561351859182994.Spec : Prop :=
  ∀ n, (P3272561351859182994.a n : ℤ) = A163277 n

end A163277

/-! ## A163277.P1264630939928615997

`2*A000217(n)²*A000584(n)`
-/

namespace A163277.P1264630939928615997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 n ^ 2 * A000584 n

end

end A163277.P1264630939928615997

namespace A163277

/-- `2*A000217(n)²*A000584(n)` -/
def P1264630939928615997.Spec : Prop :=
  ∀ n, P1264630939928615997.a n = A163277 n

end A163277

/-! ## A163277.P5395915195997152878

`A000583(n)²+n*A168527(n)`
-/

namespace A163277.P5395915195997152878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n ^ 2 + (n : ℤ) * A168527 n

end

end A163277.P5395915195997152878

namespace A163277

/-- `A000583(n)²+n*A168527(n)` -/
def P5395915195997152878.Spec : Prop :=
  ∀ n, P5395915195997152878.a n = A163277 n

end A163277

/-! ## A163277.P9264759839995643864

`A168029(n)+A195859(n)+A168116(n)`
-/

namespace A163277.P9264759839995643864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168029 n + (A195859 n + A168116 n)

end

end A163277.P9264759839995643864

namespace A163277

/-- `A168029(n)+A195859(n)+A168116(n)` -/
def P9264759839995643864.Spec : Prop :=
  ∀ n, P9264759839995643864.a n = A163277 n

end A163277

/-! ## A163277.P1104601366565652311

`(A062392(n)+A000217(n))*A000584(n)`
-/

namespace A163277.P1104601366565652311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062392 n + A000217 n) * A000584 n

end

end A163277.P1104601366565652311

namespace A163277

/-- `(A062392(n)+A000217(n))*A000584(n)` -/
def P1104601366565652311.Spec : Prop :=
  ∀ n, P1104601366565652311.a n = A163277 n

end A163277

/-! ## A163277.P199594550830691677

`(A168178(n)+A000583(n))*A000583(n)`
-/

namespace A163277.P199594550830691677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168178 n + A000583 n) * A000583 n

end

end A163277.P199594550830691677

namespace A163277

/-- `(A168178(n)+A000583(n))*A000583(n)` -/
def P199594550830691677.Spec : Prop :=
  ∀ n, P199594550830691677.a n = A163277 n

end A163277

/-! ## A163277.P7770347095074821384

`A002522(n)*A163275(n)-A163275(n)`
-/

namespace A163277.P7770347095074821384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n * A163275 n - A163275 n

end

end A163277.P7770347095074821384

namespace A163277

/-- `A002522(n)*A163275(n)-A163275(n)` -/
def P7770347095074821384.Spec : Prop :=
  ∀ n, P7770347095074821384.a n = A163277 n

end A163277

/-!
# A163279: a(n) = (n^6 + 2n^5 + 2n^4 + n^3 + 2n)/2.

The programs for A163279, the canonical program `A163279.P1849775295319323671` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163279 has offset 1).

The definition of A163279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163279.P1849775295319323671

`((n+1)^6+(n+1)^3)/2+(n+1)^5+(n+1)^4+n+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A163279

/-- `((n+1)^6+(n+1)^3)/2+(n+1)^5+(n+1)^4+n+1` -/
def P1849775295319323671.Spec : Prop :=
  ∀ n, P1849775295319323671.a n = (A163279 (n + 1) : ℚ)

end A163279

/-! ## A163279.P1101939793811619152

`((n+1)^6+2*(n+1)^5+2*(n+1)^4+(n+1)^3+2*(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163279.P1101939793811619152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 6 + 2 * (n + 1) ^ 5 + 2 * (n + 1) ^ 4 + (n + 1) ^ 3 + 2 * (n + 1) : ℚ) / 2

end

end A163279.P1101939793811619152

namespace A163279

/-- `((n+1)^6+2*(n+1)^5+2*(n+1)^4+(n+1)^3+2*(n+1))/2` -/
def P1101939793811619152.Spec : Prop :=
  ∀ n, P1101939793811619152.a n = (A163279 (n + 1) : ℚ)

end A163279

/-! ## A163279.P6920893529414243166

`((n+1)*A000217((n+1)*(n+2))+1)*(n+1)`
-/

namespace A163279.P6920893529414243166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A000217 ((n + 1) * (n + 2)) + 1) * (n + 1 : ℤ)

end

end A163279.P6920893529414243166

namespace A163279

/-- `((n+1)*A000217((n+1)*(n+2))+1)*(n+1)` -/
def P6920893529414243166.Spec : Prop :=
  ∀ n, P6920893529414243166.a n = A163279 (n + 1)

end A163279

/-!
# A163280: Square array read by antidiagonals where column k lists the numbers j whose largest divisor <= sqrt(j) is k.

The programs for A163280, there is no canonical definition to state claims against.
-/

/-! ## A163280.P7858457854189896545

`A163281(n)+a(n-1)` with `a(0)=1`
-/

namespace A163280.P7858457854189896545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163281 n + a (n - 1)

end

end A163280.P7858457854189896545

/-! ## A163280.P13400074236525907373

`∑[A163281(round(sqrt(n²+1)))]`
-/

namespace A163280.P13400074236525907373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163281 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163280.P13400074236525907373

/-! ## A163280.P2752975718212440151

`∑[A163281(abs(1-n)+1)]-1`
-/

namespace A163280.P2752975718212440151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163281 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A163280.P2752975718212440151

/-! ## A163280.P13448953152349454566

`abs(∑[A163281(A028310(n))])`
-/

namespace A163280.P13448953152349454566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163281 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A163280.P13448953152349454566

/-! ## A163280.P18355865233081946671

`A020985(n)²*∑[A163281(A028310(n))]`
-/

namespace A163280.P18355865233081946671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163281 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163280.P18355865233081946671

/-! ## A163280.P5780073816227548193

`∑[A163281(A028310(n))]%A001359(n+1)`
-/

namespace A163280.P5780073816227548193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163281 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A001359 (n + 1))

end

end A163280.P5780073816227548193

/-! ## A163280.P1850153356903144771

`∑[A163281(A028310(n))%A139651(n+1)]`
-/

namespace A163280.P1850153356903144771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163281 (A028310 n).toNat) (A139651 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163280.P1850153356903144771

/-! ## A163280.P6753896903199703281

`A001478(n+1)+∑[A163281(A028310(n))+1]`
-/

namespace A163280.P6753896903199703281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163281 (A028310 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163280.P6753896903199703281

/-! ## A163280.P5570969512209813679

`∑[A163281(A028310(n))+A008683(4*(n+1))]`
-/

namespace A163280.P5570969512209813679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163281 (A028310 n).toNat + A008683 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163280.P5570969512209813679

/-! ## A163280.P5429180327091171034

`A163990(∑[char[∑[n]]]²-n)`
-/

namespace A163280.P5429180327091171034
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163990 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A163280.P5429180327091171034

/-!
# A163281: First differences of A163280.

The programs for A163281, there is no canonical definition to state claims against.
-/

/-! ## A163281.P10827644789295411965

`Δ[A163280(n+1)]`
-/

namespace A163281.P10827644789295411965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163281.P10827644789295411965

/-! ## A163281.P14199095400911322115

`A163280(n+2)-A163280(n+1)`
-/

namespace A163281.P14199095400911322115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163280 (n + 2) - A163280 (n + 1)

end

end A163281.P14199095400911322115

/-! ## A163281.P1537271645221443308

`Δ[A163990(A038722(n+1))]`
-/

namespace A163281.P1537271645221443308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163990 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163281.P1537271645221443308

/-! ## A163281.P13274440689154447527

`Δ[A163990(A061579(n)+1)]`
-/

namespace A163281.P13274440689154447527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163990 (A061579 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163281.P13274440689154447527

/-! ## A163281.P17054008070067071251

`Δ[A163990(A093995(n+1)-n)]`
-/

namespace A163281.P17054008070067071251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163990 (A093995 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163281.P17054008070067071251

/-! ## A163281.P8856382240131497150

`Δ[A163990(A002024(n+1)²-n)]`
-/

namespace A163281.P8856382240131497150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163990 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163281.P8856382240131497150

/-! ## A163281.P694046079715111751

`Δ[A163990(A057944(n)+A004736(n+1))]`
-/

namespace A163281.P694046079715111751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163990 (A057944 n + A004736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163281.P694046079715111751

/-!
# A163282: Triangle read by rows in which row n lists n+1 terms, starting with n^2 and ending with n^3, such that difference between successive terms is equal to n^2 - n.

The programs for A163282, the canonical program `A163282.P9703258445285592584` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163282 has offset 0).

The definition of A163282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163282.P15586544392791946559

`∑[char[∑[n+1]]]*A159797(n)`
-/

namespace A163282.P15586544392791946559
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A159797 n

end

end A163282.P15586544392791946559

namespace A163282

/-- `∑[char[∑[n+1]]]*A159797(n)` -/
def P15586544392791946559.Spec : Prop :=
  ∀ n, P15586544392791946559.a n = A163282 n

end A163282

/-! ## A163282.P488858564240698125

`sqrt(A159797(n)*A163283(n))`
-/

namespace A163282.P488858564240698125
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A159797 n * A163283 n : ℝ)

end

end A163282.P488858564240698125

namespace A163282

/-- `sqrt(A159797(n)*A163283(n))` -/
def P488858564240698125.Spec : Prop :=
  ∀ n, P488858564240698125.a n = (A163282 n : ℝ)

end A163282

/-! ## A163282.P9703258445285592584

`(A079904(n)+A025581(n))*A003056(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A163282

/-- `(A079904(n)+A025581(n))*A003056(n)` -/
def P9703258445285592584.Spec : Prop :=
  ∀ n, P9703258445285592584.a n = A163282 n

theorem P9703258445285592584.correct : P9703258445285592584.Spec := by
  intro n
  simp only [A163282]

end A163282

/-! ## A163282.P17538950618795189401

`((A002262(n)+1)*(A003056(n)-1)+1)*A003056(n)`
-/

namespace A163282.P17538950618795189401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A002262 n + 1) * (A003056 n - 1) + 1) * A003056 n

end

end A163282.P17538950618795189401

namespace A163282

/-- `((A002262(n)+1)*(A003056(n)-1)+1)*A003056(n)` -/
def P17538950618795189401.Spec : Prop :=
  ∀ n, P17538950618795189401.a n = A163282 n

end A163282

/-! ## A163282.P9067345905823360731

`(A025581(n)+A073254(n)-A025581(n)²)*A003056(n)`
-/

namespace A163282.P9067345905823360731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + (A073254 n - A025581 n ^ 2)) * A003056 n

end

end A163282.P9067345905823360731

namespace A163282

/-- `(A025581(n)+A073254(n)-A025581(n)²)*A003056(n)` -/
def P9067345905823360731.Spec : Prop :=
  ∀ n, P9067345905823360731.a n = A163282 n

end A163282

/-! ## A163282.P5536646858522400771

`A003056(n)*A159798(A014132(n+1)+1)`
-/

namespace A163282.P5536646858522400771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A159798 (A014132 (n + 1) + 1).toNat

end

end A163282.P5536646858522400771

namespace A163282

/-- `A003056(n)*A159798(A014132(n+1)+1)` -/
def P5536646858522400771.Spec : Prop :=
  ∀ n, P5536646858522400771.a n = A163282 n

end A163282

/-! ## A163282.P16574863127158155318

`(A244418(n+1)-A209297(n+1))*A003056(n)`
-/

namespace A163282.P16574863127158155318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A244418 (n + 1) - A209297 (n + 1)) * A003056 n

end

end A163282.P16574863127158155318

namespace A163282

/-- `(A244418(n+1)-A209297(n+1))*A003056(n)` -/
def P16574863127158155318.Spec : Prop :=
  ∀ n, P16574863127158155318.a n = A163282 n

end A163282

/-!
# A163283: Triangle read by rows in which row n lists n+1 terms, starting with n^3 and ending with n^4, such that the difference between successive terms is equal to n^3 - n^2.

The programs for A163283, the canonical program `A163283.P7467807043185667202` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163283 has offset 0).

The definition of A163283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163283.P12602893850524896121

`∑[char[∑[n+1]]]*A163282(n)`
-/

namespace A163283.P12602893850524896121
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A163282 n

end

end A163283.P12602893850524896121

namespace A163283

/-- `∑[char[∑[n+1]]]*A163282(n)` -/
def P12602893850524896121.Spec : Prop :=
  ∀ n, P12602893850524896121.a n = A163283 n

end A163283

/-! ## A163283.P17030401508596683802

`∑[char[∑[n+1]]]²*A159797(n)`
-/

namespace A163283.P17030401508596683802
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) * A159797 n

end

end A163283.P17030401508596683802

namespace A163283

/-- `∑[char[∑[n+1]]]²*A159797(n)` -/
def P17030401508596683802.Spec : Prop :=
  ∀ n, P17030401508596683802.a n = A163283 n

end A163283

/-! ## A163283.P7467807043185667202

`A003056(n)*A159797(n)*A003056(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A163283

/-- `A003056(n)*A159797(n)*A003056(n)` -/
def P7467807043185667202.Spec : Prop :=
  ∀ n, P7467807043185667202.a n = A163283 n

theorem P7467807043185667202.correct : P7467807043185667202.Spec := by
  intro n
  simp only [A163283]

end A163283

/-! ## A163283.P16537659420101754693

`(A079904(n)+A025581(n))*A003056(n)²`
-/

namespace A163283.P16537659420101754693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A079904 n + A025581 n) * A003056 n ^ 2

end

end A163283.P16537659420101754693

namespace A163283

/-- `(A079904(n)+A025581(n))*A003056(n)²` -/
def P16537659420101754693.Spec : Prop :=
  ∀ n, P16537659420101754693.a n = A163283 n

end A163283

/-! ## A163283.P4177513024159102115

`(A244418(n+1)-A209297(n+1))*A003056(n)²`
-/

namespace A163283.P4177513024159102115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A244418 (n + 1) - A209297 (n + 1)) * A003056 n ^ 2

end

end A163283.P4177513024159102115

namespace A163283

/-- `(A244418(n+1)-A209297(n+1))*A003056(n)²` -/
def P4177513024159102115.Spec : Prop :=
  ∀ n, P4177513024159102115.a n = A163283 n

end A163283

/-!
# A163284: Triangle read by rows in which row n lists n+1 terms, starting with n^4 and ending with n^5, such that the difference between successive terms is equal to n^4 - n^3.

The programs for A163284, the canonical program `A163284.P4973965033528035152` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163284 has offset 0).

The definition of A163284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163284.P15585281567663504070

`∑[char[∑[n+1]]]*A163283(n)`
-/

namespace A163284.P15585281567663504070
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A163283 n

end

end A163284.P15585281567663504070

namespace A163284

/-- `∑[char[∑[n+1]]]*A163283(n)` -/
def P15585281567663504070.Spec : Prop :=
  ∀ n, P15585281567663504070.a n = A163284 n

end A163284

/-! ## A163284.P8388853979761889103

`∑[char[∑[n+1]]]^3*A159797(n)`
-/

namespace A163284.P8388853979761889103
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 3 : ℕ) : ℤ) * A159797 n

end

end A163284.P8388853979761889103

namespace A163284

/-- `∑[char[∑[n+1]]]^3*A159797(n)` -/
def P8388853979761889103.Spec : Prop :=
  ∀ n, P8388853979761889103.a n = A163284 n

end A163284

/-! ## A163284.P4973965033528035152

`A003056(n)²*A163282(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A163284

/-- `A003056(n)²*A163282(n)` -/
def P4973965033528035152.Spec : Prop :=
  ∀ n, P4973965033528035152.a n = A163284 n

theorem P4973965033528035152.correct : P4973965033528035152.Spec := by
  intro n
  simp only [A163284]

end A163284

/-! ## A163284.P14176528686773766735

`(n-A083920(n))²*A163282(n)`
-/

namespace A163284.P14176528686773766735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A083920 n) ^ 2 * A163282 n

end

end A163284.P14176528686773766735

namespace A163284

/-- `(n-A083920(n))²*A163282(n)` -/
def P14176528686773766735.Spec : Prop :=
  ∀ n, P14176528686773766735.a n = A163284 n

end A163284

/-! ## A163284.P15078303115305488377

`A091435(A057944(n))*A163282(n)`
-/

namespace A163284.P15078303115305488377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 (A057944 n).toNat * A163282 n

end

end A163284.P15078303115305488377

namespace A163284

/-- `A091435(A057944(n))*A163282(n)` -/
def P15078303115305488377.Spec : Prop :=
  ∀ n, P15078303115305488377.a n = A163284 n

end A163284

/-! ## A163284.P8542001987695584162

`A163282(n-A002262(n))*A163282(n)`
-/

namespace A163284.P8542001987695584162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163282 ((n : ℤ) - A002262 n).toNat * A163282 n

end

end A163284.P8542001987695584162

namespace A163284

/-- `A163282(n-A002262(n))*A163282(n)` -/
def P8542001987695584162.Spec : Prop :=
  ∀ n, P8542001987695584162.a n = A163284 n

end A163284

/-! ## A163284.P14775483990145545488

`A003056(n)*A159797(n)*A003056(n)²`
-/

namespace A163284.P14775483990145545488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A159797 n * A003056 n ^ 2

end

end A163284.P14775483990145545488

namespace A163284

/-- `A003056(n)*A159797(n)*A003056(n)²` -/
def P14775483990145545488.Spec : Prop :=
  ∀ n, P14775483990145545488.a n = A163284 n

end A163284

/-!
# A163285: Triangle read by rows in which row n lists n+1 terms, starting with n^5 and ending with n^6, such that the difference between successive terms is equal to n^5 - n^4.

The programs for A163285, the canonical program `A163285.P9326623091209002515` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163285 has offset 0).

The definition of A163285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163285.P12847265611352399742

`∑[char[∑[n+1]]]*A163284(n)`
-/

namespace A163285.P12847265611352399742
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A163284 n

end

end A163285.P12847265611352399742

namespace A163285

/-- `∑[char[∑[n+1]]]*A163284(n)` -/
def P12847265611352399742.Spec : Prop :=
  ∀ n, P12847265611352399742.a n = A163285 n

end A163285

/-! ## A163285.P6151650919836536794

`∑[char[∑[n+1]]]²*A163283(n)`
-/

namespace A163285.P6151650919836536794
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) * A163283 n

end

end A163285.P6151650919836536794

namespace A163285

/-- `∑[char[∑[n+1]]]²*A163283(n)` -/
def P6151650919836536794.Spec : Prop :=
  ∀ n, P6151650919836536794.a n = A163285 n

end A163285

/-! ## A163285.P9326623091209002515

`A003056(n)²²*A159797(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A163285

/-- `A003056(n)²²*A159797(n)` -/
def P9326623091209002515.Spec : Prop :=
  ∀ n, P9326623091209002515.a n = A163285 n

theorem P9326623091209002515.correct : P9326623091209002515.Spec := by
  intro n
  simp only [A163285]

end A163285

/-! ## A163285.P17753512111286704335

`A159797(A057944(n))²²*A159797(n)`
-/

namespace A163285.P17753512111286704335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A159797 (A057944 n).toNat ^ 2) ^ 2 * A159797 n

end

end A163285.P17753512111286704335

namespace A163285

/-- `A159797(A057944(n))²²*A159797(n)` -/
def P17753512111286704335.Spec : Prop :=
  ∀ n, P17753512111286704335.a n = A163285 n

end A163285

/-! ## A163285.P3970701169764815303

`A003056(n)*A163282(n)*A003056(n)²`
-/

namespace A163285.P3970701169764815303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A163282 n * A003056 n ^ 2

end

end A163285.P3970701169764815303

namespace A163285

/-- `A003056(n)*A163282(n)*A003056(n)²` -/
def P3970701169764815303.Spec : Prop :=
  ∀ n, P3970701169764815303.a n = A163285 n

end A163285

/-! ## A163285.P3799728510010536865

`A163282(A025581(n)+n)*A163282(n)`
-/

namespace A163285.P3799728510010536865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163282 (A025581 n + (n : ℤ)).toNat * A163282 n

end

end A163285.P3799728510010536865

namespace A163285

/-- `A163282(A025581(n)+n)*A163282(n)` -/
def P3799728510010536865.Spec : Prop :=
  ∀ n, P3799728510010536865.a n = A163285 n

end A163285

/-!
# A163286: a(n) = A154796(n)/2.

The programs for A163286, there is no canonical definition to state claims against.
-/

/-! ## A163286.P15425304038975931577

`A154796(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163286.P15425304038975931577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154796 (n + 1) : ℚ) / 2

end

end A163286.P15425304038975931577

/-! ## A163286.P8345290768114706965

`A095814(A163096(n+1))`
-/

namespace A163286.P8345290768114706965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095814 (A163096 (n + 1)).toNat

end

end A163286.P8345290768114706965

/-! ## A163286.P9438114455671306997

`A000041(eq[2-a(n-1), gcd(2, A000041(n))])/2` with `a(0)=0`
-/

namespace A163286.P9438114455671306997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  2 - f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000041 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n) : ℚ) / 2

end

end A163286.P9438114455671306997

/-! ## A163286.P14109128606870907590

`A000041(eq[A040051(n), A142150(n)])/2`
-/

namespace A163286.P14109128606870907590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 2

end

end A163286.P14109128606870907590

/-! ## A163286.P17431040460990524131

`A000041(eq[1-A040051(n), A010123(n)])/2`
-/

namespace A163286.P17431040460990524131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 2

end

end A163286.P17431040460990524131

/-! ## A163286.P7895294917538375465

`A000041(eq[2, A010673(n)-A040051(n)])/2`
-/

namespace A163286.P7895294917538375465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n - A040051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A163286.P7895294917538375465

/-! ## A163286.P737077577213804987

`∩[A052001(n+1), A058695(n)]/2`
-/

namespace A163286.P737077577213804987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058695 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A163286.P737077577213804987

/-! ## A163286.P4249174097743247192

`∩[A000041(2*n+1), A052001(n+2)]/2`
-/

namespace A163286.P4249174097743247192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052001 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A163286.P4249174097743247192

/-! ## A163286.P12517880669332495606

`A000041(eq[A040051(n), A049689(n)])/2`
-/

namespace A163286.P12517880669332495606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049689 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 2

end

end A163286.P12517880669332495606

/-!
# A163288: a(n) = A154798(n)/2.

The programs for A163288, there is no canonical definition to state claims against.
-/

/-! ## A163288.P996513759192214

`A154798(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163288.P996513759192214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154798 (n + 1) : ℚ) / 2

end

end A163288.P996513759192214

/-! ## A163288.P17881898833171159856

`A095814(A127219(n+1))`
-/

namespace A163288.P17881898833171159856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095814 (A127219 (n + 1)).toNat

end

end A163288.P17881898833171159856

/-! ## A163288.P2581146014576678966

`A058696(A163098(n+1))/2`
-/

namespace A163288.P2581146014576678966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058696 (A163098 (n + 1)).toNat : ℚ) / 2

end

end A163288.P2581146014576678966

/-! ## A163288.P1923585127714236156

`A000041(2*A163098(n+1))/2`
-/

namespace A163288.P1923585127714236156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (2 * A163098 (n + 1)).toNat : ℚ) / 2

end

end A163288.P1923585127714236156

/-! ## A163288.P17969868863240797230

`∩[A052001(n+1), A058696(n)]/2`
-/

namespace A163288.P17969868863240797230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A163288.P17969868863240797230

/-! ## A163288.P955727951551032057

`A000041(2*eq[2, gcd(2, A000041(2*n))])/2`
-/

namespace A163288.P955727951551032057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000041 (2 * n))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 2

end

end A163288.P955727951551032057

/-! ## A163288.P888249302453170817

`A000041(eq[A010673(n), A040051(n)])/2`
-/

namespace A163288.P888249302453170817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 2

end

end A163288.P888249302453170817

/-! ## A163288.P3815453255058810210

`A000041(eq[A040051(n), A053387(n+1)])/2`
-/

namespace A163288.P3815453255058810210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053387 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 2

end

end A163288.P3815453255058810210

/-! ## A163288.P17851802707978040279

`A000041(eq[2, A020639(gcd(n, A000041(n)))])/2`
-/

namespace A163288.P17851802707978040279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (n : ℤ) (A000041 n))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A163288.P17851802707978040279

/-! ## A163288.P17316481973652996448

`A000041(eq[A040051(n), A151887(n)])/2`
-/

namespace A163288.P17316481973652996448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151887 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 2

end

end A163288.P17316481973652996448

/-!
# A163289: Cubes which can be written as sum of consecutive primes.

The programs for A163289, there is no canonical definition to state claims against.
-/

/-! ## A163289.P8640153539618352777

`A163324(n+1)^3`
-/

namespace A163289.P8640153539618352777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163324 (n + 1) ^ 3

end

end A163289.P8640153539618352777

/-! ## A163289.P6666570390248431738

`A000578(A163324(n+1))`
-/

namespace A163289.P6666570390248431738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A163324 (n + 1)).toNat

end

end A163289.P6666570390248431738

/-! ## A163289.P15975877886144044069

`A066023(A163324(C(n+1, n)))`
-/

namespace A163289.P15975877886144044069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066023 (A163324 (Nat.choose (n + 1) n)).toNat

end

end A163289.P15975877886144044069

/-! ## A163289.P13708524624097575977

`A066023(A163324(n+1)%A027578(n))`
-/

namespace A163289.P13708524624097575977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066023 (Int.tmod (A163324 (n + 1)) (A027578 n)).toNat

end

end A163289.P13708524624097575977

/-! ## A163289.P12975952465986280463

`A000093(A163324(n+1)²)`
-/

namespace A163289.P12975952465986280463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A163324 (n + 1) ^ 2).toNat

end

end A163289.P12975952465986280463

/-!
# A163291: Number of digits of n-th prime written in base 4.

The programs for A163291, the canonical program `A163291.P14435979190874790794` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163291 has offset 1).

The definition of A163291 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035100, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163291.P14435979190874790794

`floor((A035100(n+1)+1)/2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A163291

/-- `floor((A035100(n+1)+1)/2)` -/
def P14435979190874790794.Spec : Prop :=
  ∀ n, P14435979190874790794.a n = A163291 (n + 1)

theorem P14435979190874790794.correct : P14435979190874790794.Spec := by
  intro n
  simp only [A163291, Nat.add_sub_cancel]

end A163291

/-! ## A163291.P18132229980738706004

`∑[char[A086680(n)]]`
-/

namespace A163291.P18132229980738706004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086680 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163291.P18132229980738706004

namespace A163291

/-- `∑[char[A086680(n)]]` -/
def P18132229980738706004.Spec : Prop :=
  ∀ n, (P18132229980738706004.a n : ℤ) = A163291 (n + 1)

end A163291

/-! ## A163291.P9363235218041483279

`ceil(log2(A104103(n+1)))`
-/

namespace A163291.P9363235218041483279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A104103 (n + 1) : ℝ)⌉

end

end A163291.P9363235218041483279

namespace A163291

/-- `ceil(log2(A104103(n+1)))` -/
def P9363235218041483279.Spec : Prop :=
  ∀ n, P9363235218041483279.a n = A163291 (n + 1)

end A163291

/-! ## A163291.P5603658871710097599

`∑[char[A007053(2*n)]]`
-/

namespace A163291.P5603658871710097599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163291.P5603658871710097599

namespace A163291

/-- `∑[char[A007053(2*n)]]` -/
def P5603658871710097599.Spec : Prop :=
  ∀ n, (P5603658871710097599.a n : ℤ) = A163291 (n + 1)

end A163291

/-! ## A163291.P9581295084120391219

`ceil(A035100(n+1)/2)`
-/

namespace A163291.P9581295084120391219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035100 (n + 1) : ℚ) / 2⌉

end

end A163291.P9581295084120391219

namespace A163291

/-- `ceil(A035100(n+1)/2)` -/
def P9581295084120391219.Spec : Prop :=
  ∀ n, P9581295084120391219.a n = A163291 (n + 1)

end A163291

/-! ## A163291.P13718010618927240634

`round(A061716(n+1)/2)`
-/

namespace A163291.P13718010618927240634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A061716 (n + 1) : ℚ) / 2)

end

end A163291.P13718010618927240634

namespace A163291

/-- `round(A061716(n+1)/2)` -/
def P13718010618927240634.Spec : Prop :=
  ∀ n, P13718010618927240634.a n = A163291 (n + 1)

end A163291

/-! ## A163291.P10044437547773080555

`floor(log2(sqrt(A001749(n+1))))`
-/

namespace A163291.P10044437547773080555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.sqrt (A001749 (n + 1) : ℝ))⌋

end

end A163291.P10044437547773080555

namespace A163291

/-- `floor(log2(sqrt(A001749(n+1))))` -/
def P10044437547773080555.Spec : Prop :=
  ∀ n, P10044437547773080555.a n = A163291 (n + 1)

end A163291

/-! ## A163291.P15348385964985740148

`ceil(log2(sqrt(A000040(n+1))))`
-/

namespace A163291.P15348385964985740148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.sqrt (A000040 (n + 1) : ℝ))⌉

end

end A163291.P15348385964985740148

namespace A163291

/-- `ceil(log2(sqrt(A000040(n+1))))` -/
def P15348385964985740148.Spec : Prop :=
  ∀ n, P15348385964985740148.a n = A163291 (n + 1)

end A163291

/-! ## A163291.P12436917702584451805

`ceil(log2(sqrt(A008864(n+1))))`
-/

namespace A163291.P12436917702584451805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.sqrt (A008864 (n + 1) : ℝ))⌉

end

end A163291.P12436917702584451805

namespace A163291

/-- `ceil(log2(sqrt(A008864(n+1))))` -/
def P12436917702584451805.Spec : Prop :=
  ∀ n, P12436917702584451805.a n = A163291 (n + 1)

end A163291

/-! ## A163291.P3478114003657407730

`ceil(log2(sqrt(A175216(n+1))))`
-/

namespace A163291.P3478114003657407730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.sqrt (A175216 (n + 1) : ℝ))⌉

end

end A163291.P3478114003657407730

namespace A163291

/-- `ceil(log2(sqrt(A175216(n+1))))` -/
def P3478114003657407730.Spec : Prop :=
  ∀ n, P3478114003657407730.a n = A163291 (n + 1)

end A163291

/-! ## A163291.P17620517970459059477

`round(log2(sqrt(A072055(n+1))))`
-/

namespace A163291.P17620517970459059477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (Real.sqrt (A072055 (n + 1) : ℝ)))

end

end A163291.P17620517970459059477

namespace A163291

/-- `round(log2(sqrt(A072055(n+1))))` -/
def P17620517970459059477.Spec : Prop :=
  ∀ n, P17620517970459059477.a n = A163291 (n + 1)

end A163291

/-! ## A163291.P11797206663375472353

`ceil(log2(A028815(n+1))/2)`
-/

namespace A163291.P11797206663375472353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A028815 (n + 1) : ℝ) / 2⌉

end

end A163291.P11797206663375472353

namespace A163291

/-- `ceil(log2(A028815(n+1))/2)` -/
def P11797206663375472353.Spec : Prop :=
  ∀ n, P11797206663375472353.a n = A163291 (n + 1)

end A163291

/-! ## A163291.P11382272762215273338

`ceil(log2(sqrt(A040976(n+1)+2)))`
-/

namespace A163291.P11382272762215273338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.sqrt (A040976 (n + 1) + 2 : ℝ))⌉

end

end A163291.P11382272762215273338

namespace A163291

/-- `ceil(log2(sqrt(A040976(n+1)+2)))` -/
def P11382272762215273338.Spec : Prop :=
  ∀ n, P11382272762215273338.a n = A163291 (n + 1)

end A163291

/-! ## A163291.P1633477255645979663

`ceil(log2(sqrt(A014689(n+1)+1+n)))`
-/

namespace A163291.P1633477255645979663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.sqrt (A014689 (n + 1) + 1 + (n : ℤ) : ℝ))⌉

end

end A163291.P1633477255645979663

namespace A163291

/-- `ceil(log2(sqrt(A014689(n+1)+1+n)))` -/
def P1633477255645979663.Spec : Prop :=
  ∀ n, P1633477255645979663.a n = A163291 (n + 1)

end A163291

/-! ## A163291.P10298427152941788357

`A070939(A000006(n+1))`
-/

namespace A163291.P10298427152941788357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A000006 (n + 1)).toNat

end

end A163291.P10298427152941788357

namespace A163291

/-- `A070939(A000006(n+1))` -/
def P10298427152941788357.Spec : Prop :=
  ∀ n, P10298427152941788357.a n = A163291 (n + 1)

end A163291

/-! ## A163291.P434655321658500890

`A000040(n+1)-A163292(n+1)`
-/

namespace A163291.P434655321658500890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A163292 (n + 1)

end

end A163291.P434655321658500890

namespace A163291

/-- `A000040(n+1)-A163292(n+1)` -/
def P434655321658500890.Spec : Prop :=
  ∀ n, P434655321658500890.a n = A163291 (n + 1)

end A163291

/-! ## A163291.P11656176137747863183

`A002265(2*floor(log2(A000040(n+1)))+4)`
-/

namespace A163291.P11656176137747863183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * Nat.log 2 (A000040 (n + 1)).toNat + 4)

end

end A163291.P11656176137747863183

namespace A163291

/-- `A002265(2*floor(log2(A000040(n+1)))+4)` -/
def P11656176137747863183.Spec : Prop :=
  ∀ n, P11656176137747863183.a n = A163291 (n + 1)

end A163291

/-! ## A163291.P10311281309885821168

`ceil(log2(A008578(n+2))/2)`
-/

namespace A163291.P10311281309885821168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A008578 (n + 2) : ℝ) / 2⌉

end

end A163291.P10311281309885821168

namespace A163291

/-- `ceil(log2(A008578(n+2))/2)` -/
def P10311281309885821168.Spec : Prop :=
  ∀ n, P10311281309885821168.a n = A163291 (n + 1)

end A163291

/-! ## A163291.P18392706866902348332

`ceil(log2(ceil(sqrt(p?[comp[A018252(n+1)]]))))`
-/

namespace A163291.P18392706866902348332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (⌈Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ)⌉ : ℝ)⌉

end

end A163291.P18392706866902348332

namespace A163291

/-- `ceil(log2(ceil(sqrt(p?[comp[A018252(n+1)]]))))` -/
def P18392706866902348332.Spec : Prop :=
  ∀ n, P18392706866902348332.a n = A163291 (n + 1)

end A163291

/-! ## A163291.P13723541848887906424

`A110591(A000040(n+1))`
-/

namespace A163291.P13723541848887906424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A000040 (n + 1)).toNat

end

end A163291.P13723541848887906424

namespace A163291

/-- `A110591(A000040(n+1))` -/
def P13723541848887906424.Spec : Prop :=
  ∀ n, P13723541848887906424.a n = A163291 (n + 1)

end A163291

/-!
# A163292: a(n) = n-th prime minus (number of digits of n-th prime written in base 4).

The programs for A163292, the canonical program `A163292.P8227225209679286486` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163292 has offset 1).

The definition of A163292 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A163291, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163292.P8227225209679286486

`A000040(n+1)-A163291(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A163292

/-- `A000040(n+1)-A163291(n+1)` -/
def P8227225209679286486.Spec : Prop :=
  ∀ n, P8227225209679286486.a n = A163292 (n + 1)

theorem P8227225209679286486.correct : P8227225209679286486.Spec := by
  intro n
  simp only [A163292, Nat.add_sub_cancel]

end A163292

/-! ## A163292.P283870399441154834

`A000040(n+1)-ceil(A035100(n+1)/2)`
-/

namespace A163292.P283870399441154834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - ⌈(A035100 (n + 1) : ℚ) / 2⌉

end

end A163292.P283870399441154834

namespace A163292

/-- `A000040(n+1)-ceil(A035100(n+1)/2)` -/
def P283870399441154834.Spec : Prop :=
  ∀ n, P283870399441154834.a n = A163292 (n + 1)

end A163292

/-! ## A163292.P12053687551761577624

`A000040(n+1)-A070939(A000006(n+1))`
-/

namespace A163292.P12053687551761577624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A070939 (A000006 (n + 1)).toNat

end

end A163292.P12053687551761577624

namespace A163292

/-- `A000040(n+1)-A070939(A000006(n+1))` -/
def P12053687551761577624.Spec : Prop :=
  ∀ n, P12053687551761577624.a n = A163292 (n + 1)

end A163292

/-! ## A163292.P18436750135648966346

`A000040(n+1)-A000523(A096494(n+1))`
-/

namespace A163292.P18436750135648966346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A000523 (A096494 (n + 1)).toNat

end

end A163292.P18436750135648966346

namespace A163292

/-- `A000040(n+1)-A000523(A096494(n+1))` -/
def P18436750135648966346.Spec : Prop :=
  ∀ n, P18436750135648966346.a n = A163292 (n + 1)

end A163292

/-! ## A163292.P9722019080607024112

`A035100(n+1)+A163293(n+1)-A163291(n+1)`
-/

namespace A163292.P9722019080607024112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035100 (n + 1) + (A163293 (n + 1) - A163291 (n + 1))

end

end A163292.P9722019080607024112

namespace A163292

/-- `A035100(n+1)+A163293(n+1)-A163291(n+1)` -/
def P9722019080607024112.Spec : Prop :=
  ∀ n, P9722019080607024112.a n = A163292 (n + 1)

end A163292

/-! ## A163292.P16548508149034101900

`record[A162753(n)]-A163291(n+1)`
-/

namespace A163292.P16548508149034101900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A163291 (n + 1)

end

end A163292.P16548508149034101900

namespace A163292

/-- `record[A162753(n)]-A163291(n+1)` -/
def P16548508149034101900.Spec : Prop :=
  ∀ n, P16548508149034101900.a n = A163292 (n + 1)

end A163292

/-! ## A163292.P13288779012332195584

`A000040(n+1)-A110591(A000040(n+1)-1)`
-/

namespace A163292.P13288779012332195584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A110591 (A000040 (n + 1) - 1).toNat

end

end A163292.P13288779012332195584

namespace A163292

/-- `A000040(n+1)-A110591(A000040(n+1)-1)` -/
def P13288779012332195584.Spec : Prop :=
  ∀ n, P13288779012332195584.a n = A163292 (n + 1)

end A163292

/-! ## A163292.P12999011102596310010

`A110654(record[A049039(n+1)-A347130(n+1)])`
-/

namespace A163292.P12999011102596310010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049039 (n + 1) - A347130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A163292.P12999011102596310010

namespace A163292

/-- `A110654(record[A049039(n+1)-A347130(n+1)])` -/
def P12999011102596310010.Spec : Prop :=
  ∀ n, P12999011102596310010.a n = A163292 (n + 1)

end A163292

/-! ## A163292.P6650534838874388307

`floor(A083058(2*A000040(n+1)+1)/2)`
-/

namespace A163292.P6650534838874388307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083058 (2 * A000040 (n + 1) + 1).toNat : ℚ) / 2⌋

end

end A163292.P6650534838874388307

namespace A163292

/-- `floor(A083058(2*A000040(n+1)+1)/2)` -/
def P6650534838874388307.Spec : Prop :=
  ∀ n, P6650534838874388307.a n = A163292 (n + 1)

end A163292

/-! ## A163292.P14338765348034857759

`p?[(n+1)*A032742(n+1)]-A163291(n+1)`
-/

namespace A163292.P14338765348034857759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A163291 (n + 1)

end

end A163292.P14338765348034857759

namespace A163292

/-- `p?[(n+1)*A032742(n+1)]-A163291(n+1)` -/
def P14338765348034857759.Spec : Prop :=
  ∀ n, P14338765348034857759.a n = A163292 (n + 1)

end A163292

/-!
# A163293: a(n) = n-th prime minus (number of bits in binary expansion of n-th prime).

The programs for A163293, the canonical program `A163293.P4247609805888595491` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163293 has offset 1).

The definition of A163293 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A035100, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163293.P4247609805888595491

`A000040(n+1)-A035100(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A163293

/-- `A000040(n+1)-A035100(n+1)` -/
def P4247609805888595491.Spec : Prop :=
  ∀ n, P4247609805888595491.a n = A163293 (n + 1)

theorem P4247609805888595491.correct : P4247609805888595491.Spec := by
  intro n
  simp only [A163293, Nat.add_sub_cancel]

end A163293

/-! ## A163293.P5638859956196507621

`A098389(n+1)-1`
-/

namespace A163293.P5638859956196507621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098389 (n + 1) - 1

end

end A163293.P5638859956196507621

namespace A163293

/-- `A098389(n+1)-1` -/
def P5638859956196507621.Spec : Prop :=
  ∀ n, P5638859956196507621.a n = A163293 (n + 1)

end A163293

/-! ## A163293.P15955512627966862177

`A000040(n+1)-Δ[A328659(n)]`
-/

namespace A163293.P15955512627966862177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (f1 (n + 1) - f1 n)

end

end A163293.P15955512627966862177

namespace A163293

/-- `A000040(n+1)-Δ[A328659(n)]` -/
def P15955512627966862177.Spec : Prop :=
  ∀ n, P15955512627966862177.a n = A163293 (n + 1)

end A163293

/-! ## A163293.P573611432165414610

`A006005(n+1)-A061716(n+1)`
-/

namespace A163293.P573611432165414610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) - A061716 (n + 1)

end

end A163293.P573611432165414610

namespace A163293

/-- `A006005(n+1)-A061716(n+1)` -/
def P573611432165414610.Spec : Prop :=
  ∀ n, P573611432165414610.a n = A163293 (n + 1)

end A163293

/-! ## A163293.P17497424410393616244

`A006093(n+1)-A098388(n+1)`
-/

namespace A163293.P17497424410393616244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A098388 (n + 1)

end

end A163293.P17497424410393616244

namespace A163293

/-- `A006093(n+1)-A098388(n+1)` -/
def P17497424410393616244.Spec : Prop :=
  ∀ n, P17497424410393616244.a n = A163293 (n + 1)

end A163293

/-! ## A163293.P14072782739495468007

`A080085(n+1)-A035103(n+1)`
-/

namespace A163293.P14072782739495468007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080085 (n + 1) - A035103 (n + 1)

end

end A163293.P14072782739495468007

namespace A163293

/-- `A080085(n+1)-A035103(n+1)` -/
def P14072782739495468007.Spec : Prop :=
  ∀ n, P14072782739495468007.a n = A163293 (n + 1)

end A163293

/-! ## A163293.P2151206051260995786

`A177959(n+1)-A014499(n+1)`
-/

namespace A163293.P2151206051260995786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177959 (n + 1) - A014499 (n + 1)

end

end A163293.P2151206051260995786

namespace A163293

/-- `A177959(n+1)-A014499(n+1)` -/
def P2151206051260995786.Spec : Prop :=
  ∀ n, P2151206051260995786.a n = A163293 (n + 1)

end A163293

/-! ## A163293.P6089092285836454917

`Δ[A007504(n)]-(A098388(n+1)+1)`
-/

namespace A163293.P6089092285836454917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A098388 (n + 1) + 1)

end

end A163293.P6089092285836454917

namespace A163293

/-- `Δ[A007504(n)]-(A098388(n+1)+1)` -/
def P6089092285836454917.Spec : Prop :=
  ∀ n, P6089092285836454917.a n = A163293 (n + 1)

end A163293

/-! ## A163293.P10930694719366374817

`A006093(n+1)+1-A035100(n+1)`
-/

namespace A163293.P10930694719366374817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - A035100 (n + 1))

end

end A163293.P10930694719366374817

namespace A163293

/-- `A006093(n+1)+1-A035100(n+1)` -/
def P10930694719366374817.Spec : Prop :=
  ∀ n, P10930694719366374817.a n = A163293 (n + 1)

end A163293

/-! ## A163293.P8988829704874111011

`A008864(n+1)-(A035100(n+1)+1)`
-/

namespace A163293.P8988829704874111011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (A035100 (n + 1) + 1)

end

end A163293.P8988829704874111011

namespace A163293

/-- `A008864(n+1)-(A035100(n+1)+1)` -/
def P8988829704874111011.Spec : Prop :=
  ∀ n, P8988829704874111011.a n = A163293 (n + 1)

end A163293

/-! ## A163293.P1779116245917535996

`A000040(n+1)-(A098388(n+1)+1)`
-/

namespace A163293.P1779116245917535996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A098388 (n + 1) + 1)

end

end A163293.P1779116245917535996

namespace A163293

/-- `A000040(n+1)-(A098388(n+1)+1)` -/
def P1779116245917535996.Spec : Prop :=
  ∀ n, P1779116245917535996.a n = A163293 (n + 1)

end A163293

/-! ## A163293.P9814136538040333215

`A100484(n+1)-(A098390(n+1)+1)`
-/

namespace A163293.P9814136538040333215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - (A098390 (n + 1) + 1)

end

end A163293.P9814136538040333215

namespace A163293

/-- `A100484(n+1)-(A098390(n+1)+1)` -/
def P9814136538040333215.Spec : Prop :=
  ∀ n, P9814136538040333215.a n = A163293 (n + 1)

end A163293

/-! ## A163293.P2139530975609403066

`A006093(n+1)-floor(log2(A000040(n+1)))`
-/

namespace A163293.P2139530975609403066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - (Nat.log 2 (A000040 (n + 1)).toNat : ℤ)

end

end A163293.P2139530975609403066

namespace A163293

/-- `A006093(n+1)-floor(log2(A000040(n+1)))` -/
def P2139530975609403066.Spec : Prop :=
  ∀ n, P2139530975609403066.a n = A163293 (n + 1)

end A163293

/-! ## A163293.P14338962292071664217

`A000040(n+1)+A328659(n)-A328659(n+1)`
-/

namespace A163293.P14338962292071664217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A328659 n - A328659 (n + 1))

end

end A163293.P14338962292071664217

namespace A163293

/-- `A000040(n+1)+A328659(n)-A328659(n+1)` -/
def P14338962292071664217.Spec : Prop :=
  ∀ n, P14338962292071664217.a n = A163293 (n + 1)

end A163293

/-! ## A163293.P17142579642745817867

`A000040(n+1)-(A035103(n+1)+A014499(n+1))`
-/

namespace A163293.P17142579642745817867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A035103 (n + 1) + A014499 (n + 1))

end

end A163293.P17142579642745817867

namespace A163293

/-- `A000040(n+1)-(A035103(n+1)+A014499(n+1))` -/
def P17142579642745817867.Spec : Prop :=
  ∀ n, P17142579642745817867.a n = A163293 (n + 1)

end A163293

/-! ## A163293.P11923032477287081849

`A098390(n+1)-(A098388(n+1)+A035100(n+1))`
-/

namespace A163293.P11923032477287081849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098390 (n + 1) - (A098388 (n + 1) + A035100 (n + 1))

end

end A163293.P11923032477287081849

namespace A163293

/-- `A098390(n+1)-(A098388(n+1)+A035100(n+1))` -/
def P11923032477287081849.Spec : Prop :=
  ∀ n, P11923032477287081849.a n = A163293 (n + 1)

end A163293

/-! ## A163293.P11828654125816008843

`A035103(n+1)+A177959(n+1)-A035100(n+1)`
-/

namespace A163293.P11828654125816008843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (n + 1) + (A177959 (n + 1) - A035100 (n + 1))

end

end A163293.P11828654125816008843

namespace A163293

/-- `A035103(n+1)+A177959(n+1)-A035100(n+1)` -/
def P11828654125816008843.Spec : Prop :=
  ∀ n, P11828654125816008843.a n = A163293 (n + 1)

end A163293

/-! ## A163293.P6850938153666303370

`A163291(n+1)+A163292(n+1)-A035100(n+1)`
-/

namespace A163293.P6850938153666303370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163291 (n + 1) + (A163292 (n + 1) - A035100 (n + 1))

end

end A163293.P6850938153666303370

namespace A163293

/-- `A163291(n+1)+A163292(n+1)-A035100(n+1)` -/
def P6850938153666303370.Spec : Prop :=
  ∀ n, P6850938153666303370.a n = A163293 (n + 1)

end A163293

/-! ## A163293.P11440871195254199086

`A000040(n+1)-A303594(A303595(n+1))`
-/

namespace A163293.P11440871195254199086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A303594 (A303595 (n + 1)).toNat

end

end A163293.P11440871195254199086

namespace A163293

/-- `A000040(n+1)-A303594(A303595(n+1))` -/
def P11440871195254199086.Spec : Prop :=
  ∀ n, P11440871195254199086.a n = A163293 (n + 1)

end A163293

/-! ## A163293.P5835015753412828174

`A023443(A098389(n+1))`
-/

namespace A163293.P5835015753412828174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A098389 (n + 1)).toNat

end

end A163293.P5835015753412828174

namespace A163293

/-- `A023443(A098389(n+1))` -/
def P5835015753412828174.Spec : Prop :=
  ∀ n, P5835015753412828174.a n = A163293 (n + 1)

end A163293

/-!
# A163294: a(n) = 2 + Sum_{x=n..prime(n)} (-x*(-1)^x).

The programs for A163294, the canonical program `A163294.P15376385814900721170` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163294 has offset 1).

The definition of A163294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163294.P7629244182662048202

`A282738(Δ[A007504(n)])-A001057(n)`
-/

namespace A163294.P7629244182662048202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282738 (f1 (n + 1) - f1 n).toNat - A001057 n

end

end A163294.P7629244182662048202

namespace A163294

/-- `A282738(Δ[A007504(n)])-A001057(n)` -/
def P7629244182662048202.Spec : Prop :=
  ∀ n, P7629244182662048202.a n = A163294 (n + 1)

end A163294

/-! ## A163294.P15207358366086417552

`A282738(p?[A007989(n)])-A001057(n)`
-/

namespace A163294.P15207358366086417552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282738 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A001057 n

end

end A163294.P15207358366086417552

namespace A163294

/-- `A282738(p?[A007989(n)])-A001057(n)` -/
def P15207358366086417552.Spec : Prop :=
  ∀ n, P15207358366086417552.a n = A163294 (n + 1)

end A163294

/-! ## A163294.P15376385814900721170

`A282738(p?[A014681(n)])-A001057(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A163294

/-- `A282738(p?[A014681(n)])-A001057(n)` -/
def P15376385814900721170.Spec : Prop :=
  ∀ n, P15376385814900721170.a n = A163294 (n + 1)

theorem P15376385814900721170.correct : P15376385814900721170.Spec := by
  intro n
  simp only [A163294, Nat.add_sub_cancel]

end A163294

/-! ## A163294.P11036725984948531683

`A282738(p?[A056847(n)])-A001057(n)`
-/

namespace A163294.P11036725984948531683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282738 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A001057 n

end

end A163294.P11036725984948531683

namespace A163294

/-- `A282738(p?[A056847(n)])-A001057(n)` -/
def P11036725984948531683.Spec : Prop :=
  ∀ n, P11036725984948531683.a n = A163294 (n + 1)

end A163294

/-! ## A163294.P13923781001465271612

`A282738(p?[A246425(n)])-A001057(n)`
-/

namespace A163294.P13923781001465271612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282738 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A001057 n

end

end A163294.P13923781001465271612

namespace A163294

/-- `A282738(p?[A246425(n)])-A001057(n)` -/
def P13923781001465271612.Spec : Prop :=
  ∀ n, P13923781001465271612.a n = A163294 (n + 1)

end A163294

/-! ## A163294.P17587676172835895477

`A282738(p?[A259153(n)])-A001057(n)`
-/

namespace A163294.P17587676172835895477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282738 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A001057 n

end

end A163294.P17587676172835895477

namespace A163294

/-- `A282738(p?[A259153(n)])-A001057(n)` -/
def P17587676172835895477.Spec : Prop :=
  ∀ n, P17587676172835895477.a n = A163294 (n + 1)

end A163294

/-! ## A163294.P12294310338970052958

`A282738(A000040(n+1))-A001057(n)`
-/

namespace A163294.P12294310338970052958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282738 (A000040 (n + 1)).toNat - A001057 n

end

end A163294.P12294310338970052958

namespace A163294

/-- `A282738(A000040(n+1))-A001057(n)` -/
def P12294310338970052958.Spec : Prop :=
  ∀ n, P12294310338970052958.a n = A163294 (n + 1)

end A163294

/-! ## A163294.P5618129148800475665

`A110514(A008864(n+1))+Δ[A026741(n)]`
-/

namespace A163294.P5618129148800475665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A008864 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A163294.P5618129148800475665

namespace A163294

/-- `A110514(A008864(n+1))+Δ[A026741(n)]` -/
def P5618129148800475665.Spec : Prop :=
  ∀ n, P5618129148800475665.a n = A163294 (n + 1)

end A163294

/-! ## A163294.P2560166259791792943

`A032742(A139049(n+1)-Δ[A022998(n)])`
-/

namespace A163294.P2560166259791792943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A139049 (n + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A163294.P2560166259791792943

namespace A163294

/-- `A032742(A139049(n+1)-Δ[A022998(n)])` -/
def P2560166259791792943.Spec : Prop :=
  ∀ n, P2560166259791792943.a n = A163294 (n + 1)

end A163294

/-! ## A163294.P18254391062367003258

`A130472(n)+2-A130472(A000040(n+1))`
-/

namespace A163294.P18254391062367003258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 n + (2 - A130472 (A000040 (n + 1)).toNat)

end

end A163294.P18254391062367003258

namespace A163294

/-- `A130472(n)+2-A130472(A000040(n+1))` -/
def P18254391062367003258.Spec : Prop :=
  ∀ n, P18254391062367003258.a n = A163294 (n + 1)

end A163294

/-! ## A163294.P15966898454234720355

`A052938(A000040(n+1))-Δ[A319702(n+1)]`
-/

namespace A163294.P15966898454234720355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A000040 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A163294.P15966898454234720355

namespace A163294

/-- `A052938(A000040(n+1))-Δ[A319702(n+1)]` -/
def P15966898454234720355.Spec : Prop :=
  ∀ n, P15966898454234720355.a n = A163294 (n + 1)

end A163294

/-! ## A163294.P10207800509655250589

`A319702(A052147(n+1))-Δ[A319702(n+1)]`
-/

namespace A163294.P10207800509655250589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (A052147 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A163294.P10207800509655250589

namespace A163294

/-- `A319702(A052147(n+1))-Δ[A319702(n+1)]` -/
def P10207800509655250589.Spec : Prop :=
  ∀ n, P10207800509655250589.a n = A163294 (n + 1)

end A163294

/-! ## A163294.P16410342619360805652

`A001057(p?[A207790(n+1)])+2-A001057(n)`
-/

namespace A163294.P16410342619360805652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + (2 - A001057 n)

end

end A163294.P16410342619360805652

namespace A163294

/-- `A001057(p?[A207790(n+1)])+2-A001057(n)` -/
def P16410342619360805652.Spec : Prop :=
  ∀ n, P16410342619360805652.a n = A163294 (n + 1)

end A163294

/-! ## A163294.P8922656472237382960

`A282738(p?[A001057(n)])-A001057(n)`
-/

namespace A163294.P8922656472237382960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282738 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A001057 n

end

end A163294.P8922656472237382960

namespace A163294

/-- `A282738(p?[A001057(n)])-A001057(n)` -/
def P8922656472237382960.Spec : Prop :=
  ∀ n, P8922656472237382960.a n = A163294 (n + 1)

end A163294

/-! ## A163294.P9251654546406475980

`A001057(p?[A001057(n)])+2-A001057(n)`
-/

namespace A163294.P9251654546406475980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + (2 - A001057 n)

end

end A163294.P9251654546406475980

namespace A163294

/-- `A001057(p?[A001057(n)])+2-A001057(n)` -/
def P9251654546406475980.Spec : Prop :=
  ∀ n, P9251654546406475980.a n = A163294 (n + 1)

end A163294

/-!
# A163295: Binary order of n plus number of partitions of n-1.

The programs for A163295, there is no canonical definition to state claims against.
-/

/-! ## A163295.P3341333079670783711

`A029837(n+1)+A000041(n)`
-/

namespace A163295.P3341333079670783711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) + A000041 n

end

end A163295.P3341333079670783711

/-! ## A163295.P7801832639479451635

`A070941(n)+A000065(n)`
-/

namespace A163295.P7801832639479451635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 n + A000065 n

end

end A163295.P7801832639479451635

/-! ## A163295.P14314507003225209795

`A000041(n+1)+A070939(n)-A187219(n+1)`
-/

namespace A163295.P14314507003225209795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A070939 n - A187219 (n + 1))

end

end A163295.P14314507003225209795

/-! ## A163295.P11193081025699497812

`A119387(2*n)+A000041(n)`
-/

namespace A163295.P11193081025699497812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119387 (2 * n) + A000041 n

end

end A163295.P11193081025699497812

/-! ## A163295.P12207135938221116227

`A000523(2*n+1)+A000041(n)`
-/

namespace A163295.P12207135938221116227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * n + 1) + A000041 n

end

end A163295.P12207135938221116227

/-! ## A163295.P6309996032373037636

`A100824(2*n)+A029837(n+1)`
-/

namespace A163295.P6309996032373037636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n) + A029837 (n + 1)

end

end A163295.P6309996032373037636

/-!
# A163296: Absolute value of the Sum_{x=0..A141468(n)} x*(-1)^x.

The programs for A163296, the canonical program `A163296.P4397503686848733258` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163296 has offset 1).

The definition of A163296 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163296.P4397503686848733258

`abs(A130472(A141468(n+1)))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A163296

/-- `abs(A130472(A141468(n+1)))` -/
def P4397503686848733258.Spec : Prop :=
  ∀ n, P4397503686848733258.a n = A163296 (n + 1)

theorem P4397503686848733258.correct : P4397503686848733258.Spec := by
  intro n
  simp only [A163296, Nat.add_sub_cancel]

end A163296

/-! ## A163296.P11235638744092628133

`ceil(comp[A007918(n)]/2)`
-/

namespace A163296.P11235638744092628133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2⌉

end

end A163296.P11235638744092628133

namespace A163296

/-- `ceil(comp[A007918(n)]/2)` -/
def P11235638744092628133.Spec : Prop :=
  ∀ n, P11235638744092628133.a n = A163296 (n + 1)

end A163296

/-! ## A163296.P5734451325664960002

`ceil(comp[A060264(n)]/2)`
-/

namespace A163296.P5734451325664960002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2⌉

end

end A163296.P5734451325664960002

namespace A163296

/-- `ceil(comp[A060264(n)]/2)` -/
def P5734451325664960002.Spec : Prop :=
  ∀ n, P5734451325664960002.a n = A163296 (n + 1)

end A163296

/-! ## A163296.P17858263526801844682

`ceil(A163975(n+1)/2)`
-/

namespace A163296.P17858263526801844682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A163975 (n + 1) : ℚ) / 2⌉

end

end A163296.P17858263526801844682

namespace A163296

/-- `ceil(A163975(n+1)/2)` -/
def P17858263526801844682.Spec : Prop :=
  ∀ n, P17858263526801844682.a n = A163296 (n + 1)

end A163296

/-! ## A163296.P5253061141968721436

`ceil(A176100(n+1)/4)`
-/

namespace A163296.P5253061141968721436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176100 (n + 1) : ℚ) / 4⌉

end

end A163296.P5253061141968721436

namespace A163296

/-- `ceil(A176100(n+1)/4)` -/
def P5253061141968721436.Spec : Prop :=
  ∀ n, P5253061141968721436.a n = A163296 (n + 1)

end A163296

/-! ## A163296.P10484983503477693127

`round(comp[Δ[A007504(n)]]/2)`
-/

namespace A163296.P10484983503477693127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2)

end

end A163296.P10484983503477693127

namespace A163296

/-- `round(comp[Δ[A007504(n)]]/2)` -/
def P10484983503477693127.Spec : Prop :=
  ∀ n, P10484983503477693127.a n = A163296 (n + 1)

end A163296

/-! ## A163296.P1207428516147800303

`ceil(comp[A000040(n+1)]/2)`
-/

namespace A163296.P1207428516147800303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2⌉

end

end A163296.P1207428516147800303

namespace A163296

/-- `ceil(comp[A000040(n+1)]/2)` -/
def P1207428516147800303.Spec : Prop :=
  ∀ n, P1207428516147800303.a n = A163296 (n + 1)

end A163296

/-! ## A163296.P14872215807543359319

`ceil(comp[A006005(n+1)]/2)`
-/

namespace A163296.P14872215807543359319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2⌉

end

end A163296.P14872215807543359319

namespace A163296

/-- `ceil(comp[A006005(n+1)]/2)` -/
def P14872215807543359319.Spec : Prop :=
  ∀ n, P14872215807543359319.a n = A163296 (n + 1)

end A163296

/-! ## A163296.P12249507892021897355

`ceil(comp[A034694(n+1)]/2)`
-/

namespace A163296.P12249507892021897355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2⌉

end

end A163296.P12249507892021897355

namespace A163296

/-- `ceil(comp[A034694(n+1)]/2)` -/
def P12249507892021897355.Spec : Prop :=
  ∀ n, P12249507892021897355.a n = A163296 (n + 1)

end A163296

/-! ## A163296.P15982314419790783870

`ceil(comp[A065308(n+1)]/2)`
-/

namespace A163296.P15982314419790783870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065308 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2⌉

end

end A163296.P15982314419790783870

namespace A163296

/-- `ceil(comp[A065308(n+1)]/2)` -/
def P15982314419790783870.Spec : Prop :=
  ∀ n, P15982314419790783870.a n = A163296 (n + 1)

end A163296

/-! ## A163296.P12986106984527591895

`ceil(comp[A006530(n+2)]/2)`
-/

namespace A163296.P12986106984527591895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2⌉

end

end A163296.P12986106984527591895

namespace A163296

/-- `ceil(comp[A006530(n+2)]/2)` -/
def P12986106984527591895.Spec : Prop :=
  ∀ n, P12986106984527591895.a n = A163296 (n + 1)

end A163296

/-! ## A163296.P11703098153451253505

`ceil(comp[A020639(n+2)]/2)`
-/

namespace A163296.P11703098153451253505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2⌉

end

end A163296.P11703098153451253505

namespace A163296

/-- `ceil(comp[A020639(n+2)]/2)` -/
def P11703098153451253505.Spec : Prop :=
  ∀ n, P11703098153451253505.a n = A163296 (n + 1)

end A163296

/-! ## A163296.P13456415231459131581

`ceil(comp[A182986(n+2)]/2)`
-/

namespace A163296.P13456415231459131581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2⌉

end

end A163296.P13456415231459131581

namespace A163296

/-- `ceil(comp[A182986(n+2)]/2)` -/
def P13456415231459131581.Spec : Prop :=
  ∀ n, P13456415231459131581.a n = A163296 (n + 1)

end A163296

/-! ## A163296.P5565431275411992215

`round(comp[A006530(n+3)]/2)`
-/

namespace A163296.P5565431275411992215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2)

end

end A163296.P5565431275411992215

namespace A163296

/-- `round(comp[A006530(n+3)]/2)` -/
def P5565431275411992215.Spec : Prop :=
  ∀ n, P5565431275411992215.a n = A163296 (n + 1)

end A163296

/-! ## A163296.P18267139477975662340

`round(comp[A020639(n+3)]/2)`
-/

namespace A163296.P18267139477975662340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2)

end

end A163296.P18267139477975662340

namespace A163296

/-- `round(comp[A020639(n+3)]/2)` -/
def P18267139477975662340.Spec : Prop :=
  ∀ n, P18267139477975662340.a n = A163296 (n + 1)

end A163296

/-! ## A163296.P7035382995042881481

`∑[char[A086936(2*n+1)]]`
-/

namespace A163296.P7035382995042881481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086936 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163296.P7035382995042881481

namespace A163296

/-- `∑[char[A086936(2*n+1)]]` -/
def P7035382995042881481.Spec : Prop :=
  ∀ n, (P7035382995042881481.a n : ℤ) = A163296 (n + 1)

end A163296

/-! ## A163296.P11744160615605185723

`n-A210469(a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A163296.P11744160615605185723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) - A210469 (a (n - 1)).toNat

end

end A163296.P11744160615605185723

namespace A163296

/-- `n-A210469(a(n-1))` -/
def P11744160615605185723.Spec : Prop :=
  ∀ n, P11744160615605185723.a n = A163296 (n + 1)

end A163296

/-! ## A163296.P10920210622932899499

`ceil(comp[p?[A005117(n+1)]]/2)`
-/

namespace A163296.P10920210622932899499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2⌉

end

end A163296.P10920210622932899499

namespace A163296

/-- `ceil(comp[p?[A005117(n+1)]]/2)` -/
def P10920210622932899499.Spec : Prop :=
  ∀ n, P10920210622932899499.a n = A163296 (n + 1)

end A163296

/-! ## A163296.P13228705941373814367

`ceil(comp[p?[A014963(n+1)]]/2)`
-/

namespace A163296.P13228705941373814367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2⌉

end

end A163296.P13228705941373814367

namespace A163296

/-- `ceil(comp[p?[A014963(n+1)]]/2)` -/
def P13228705941373814367.Spec : Prop :=
  ∀ n, P13228705941373814367.a n = A163296 (n + 1)

end A163296

/-! ## A163296.P13941635170742699110

`ceil((A018252(n)+a(n-1))/3)` with `a(0)=0`
-/

namespace A163296.P13941635170742699110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(A018252 n + a (n - 1) : ℚ) / 3⌉

end

end A163296.P13941635170742699110

namespace A163296

/-- `ceil((A018252(n)+a(n-1))/3)` -/
def P13941635170742699110.Spec : Prop :=
  ∀ n, P13941635170742699110.a n = A163296 (n + 1)

end A163296

/-!
# A163297: a(n) = sum of divisors of n plus length of the binary expansion of n.

The programs for A163297, the canonical program `A163297.P16071574598912958319` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163297 has offset 1).

The definition of A163297 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163297.P16071574598912958319

`A000203(n+1)+A029837(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A163297

/-- `A000203(n+1)+A029837(n+1)` -/
def P16071574598912958319.Spec : Prop :=
  ∀ n, P16071574598912958319.a n = A163297 (n + 1)

theorem P16071574598912958319.correct : P16071574598912958319.Spec := by
  intro n
  simp only [A163297, Nat.add_sub_cancel]

end A163297

/-! ## A163297.P13678341528981145882

`∑{d}[n+1, #]+ceil(log2(n+1))`
-/

namespace A163297.P13678341528981145882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) + ⌈Real.logb 2 (n + 1 : ℝ)⌉

end

end A163297.P13678341528981145882

namespace A163297

/-- `∑{d}[n+1, #]+ceil(log2(n+1))` -/
def P13678341528981145882.Spec : Prop :=
  ∀ n, P13678341528981145882.a n = A163297 (n + 1)

end A163297

/-! ## A163297.P18249322881077967945

`A245092(Δ[n²])+ceil(log2(n+1))`
-/

namespace A163297.P18249322881077967945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + ⌈Real.logb 2 (n + 1 : ℝ)⌉

end

end A163297.P18249322881077967945

namespace A163297

/-- `A245092(Δ[n²])+ceil(log2(n+1))` -/
def P18249322881077967945.Spec : Prop :=
  ∀ n, P18249322881077967945.a n = A163297 (n + 1)

end A163297

/-! ## A163297.P18134812231639407709

`Δ[A160664(n)]+log2(A062383(n))`
-/

namespace A163297.P18134812231639407709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℝ) + Real.logb 2 (A062383 n : ℝ)

end

end A163297.P18134812231639407709

namespace A163297

/-- `Δ[A160664(n)]+log2(A062383(n))` -/
def P18134812231639407709.Spec : Prop :=
  ∀ n, P18134812231639407709.a n = (A163297 (n + 1) : ℝ)

end A163297

/-! ## A163297.P10653012626568059979

`Δ[A160664(n)]+∑[A209229(n)]`
-/

namespace A163297.P10653012626568059979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A163297.P10653012626568059979

namespace A163297

/-- `Δ[A160664(n)]+∑[A209229(n)]` -/
def P10653012626568059979.Spec : Prop :=
  ∀ n, P10653012626568059979.a n = A163297 (n + 1)

end A163297

/-! ## A163297.P8469340133356615307

`A000203(n+1)+∑[A209229(n)]`
-/

namespace A163297.P8469340133356615307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163297.P8469340133356615307

namespace A163297

/-- `A000203(n+1)+∑[A209229(n)]` -/
def P8469340133356615307.Spec : Prop :=
  ∀ n, P8469340133356615307.a n = A163297 (n + 1)

end A163297

/-! ## A163297.P2752888870566811593

`A074400(n+1)-A163298(n+1)`
-/

namespace A163297.P2752888870566811593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - A163298 (n + 1)

end

end A163297.P2752888870566811593

namespace A163297

/-- `A074400(n+1)-A163298(n+1)` -/
def P2752888870566811593.Spec : Prop :=
  ∀ n, P2752888870566811593.a n = A163297 (n + 1)

end A163297

/-! ## A163297.P14139895585485729002

`A088580(n+1)+A070941(n)-2`
-/

namespace A163297.P14139895585485729002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) + (A070941 n - 2)

end

end A163297.P14139895585485729002

namespace A163297

/-- `A088580(n+1)+A070941(n)-2` -/
def P14139895585485729002.Spec : Prop :=
  ∀ n, P14139895585485729002.a n = A163297 (n + 1)

end A163297

/-! ## A163297.P1059957831652558813

`A000203(n+1)+val(A062383(n), 2)`
-/

namespace A163297.P1059957831652558813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (SequenceMachineLib.valuation (A062383 n).toNat 2 : ℤ)

end

end A163297.P1059957831652558813

namespace A163297

/-- `A000203(n+1)+val(A062383(n), 2)` -/
def P1059957831652558813.Spec : Prop :=
  ∀ n, P1059957831652558813.a n = A163297 (n + 1)

end A163297

/-! ## A163297.P2786240355498215432

`A000203(n+1)+∑[char[A000079(n)]]`
-/

namespace A163297.P2786240355498215432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A163297.P2786240355498215432

namespace A163297

/-- `A000203(n+1)+∑[char[A000079(n)]]` -/
def P2786240355498215432.Spec : Prop :=
  ∀ n, P2786240355498215432.a n = A163297 (n + 1)

end A163297

/-! ## A163297.P3237834328958659412

`A000203(n+1)+∑[char[A130321(n)]]`
-/

namespace A163297.P3237834328958659412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A163297.P3237834328958659412

namespace A163297

/-- `A000203(n+1)+∑[char[A130321(n)]]` -/
def P3237834328958659412.Spec : Prop :=
  ∀ n, P3237834328958659412.a n = A163297 (n + 1)

end A163297

/-! ## A163297.P14772765622653585176

`A029837(n+1)+sqrt(A072861(n+1))`
-/

namespace A163297.P14772765622653585176
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029837 (n + 1) : ℝ) + Real.sqrt (A072861 (n + 1) : ℝ)

end

end A163297.P14772765622653585176

namespace A163297

/-- `A029837(n+1)+sqrt(A072861(n+1))` -/
def P14772765622653585176.Spec : Prop :=
  ∀ n, P14772765622653585176.a n = (A163297 (n + 1) : ℝ)

end A163297

/-! ## A163297.P1135724201236543565

`A163298(n+1)+2*A029837(n+1)`
-/

namespace A163297.P1135724201236543565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163298 (n + 1) + 2 * A029837 (n + 1)

end

end A163297.P1135724201236543565

namespace A163297

/-- `A163298(n+1)+2*A029837(n+1)` -/
def P1135724201236543565.Spec : Prop :=
  ∀ n, P1135724201236543565.a n = A163297 (n + 1)

end A163297

/-! ## A163297.P11630973154336811314

`A029837(n+1)+A074400(n+1)/2`
-/

namespace A163297.P11630973154336811314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029837 (n + 1) : ℚ) + (A074400 (n + 1) : ℚ) / 2

end

end A163297.P11630973154336811314

namespace A163297

/-- `A029837(n+1)+A074400(n+1)/2` -/
def P11630973154336811314.Spec : Prop :=
  ∀ n, P11630973154336811314.a n = (A163297 (n + 1) : ℚ)

end A163297

/-! ## A163297.P1878660546208647716

`2*A000203(n+1)-A163298(n+1)`
-/

namespace A163297.P1878660546208647716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1) - A163298 (n + 1)

end

end A163297.P1878660546208647716

namespace A163297

/-- `2*A000203(n+1)-A163298(n+1)` -/
def P1878660546208647716.Spec : Prop :=
  ∀ n, P1878660546208647716.a n = A163297 (n + 1)

end A163297

/-! ## A163297.P16654715113335860757

`A001222(A062383(n))+A155085(n+1)-(n+1)`
-/

namespace A163297.P16654715113335860757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A062383 n).toNat + (A155085 (n + 1) - (n + 1 : ℤ))

end

end A163297.P16654715113335860757

namespace A163297

/-- `A001222(A062383(n))+A155085(n+1)-(n+1)` -/
def P16654715113335860757.Spec : Prop :=
  ∀ n, P16654715113335860757.a n = A163297 (n + 1)

end A163297

/-! ## A163297.P5252676187503305621

`A001222(A062383(n))+A064987(n+1)/(n+1)`
-/

namespace A163297.P5252676187503305621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A062383 n).toNat : ℚ) + (A064987 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A163297.P5252676187503305621

namespace A163297

/-- `A001222(A062383(n))+A064987(n+1)/(n+1)` -/
def P5252676187503305621.Spec : Prop :=
  ∀ n, P5252676187503305621.a n = (A163297 (n + 1) : ℚ)

end A163297

/-! ## A163297.P11345688828338024866

`A001222(A062383(n))+A000217(n+1)-A024816(n+1)`
-/

namespace A163297.P11345688828338024866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A062383 n).toNat + (A000217 (n + 1) - A024816 (n + 1))

end

end A163297.P11345688828338024866

namespace A163297

/-- `A001222(A062383(n))+A000217(n+1)-A024816(n+1)` -/
def P11345688828338024866.Spec : Prop :=
  ∀ n, P11345688828338024866.a n = A163297 (n + 1)

end A163297

/-! ## A163297.P385655836279510741

`A000523(2*n+1)+A000203(n+1)`
-/

namespace A163297.P385655836279510741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * n + 1) + A000203 (n + 1)

end

end A163297.P385655836279510741

namespace A163297

/-- `A000523(2*n+1)+A000203(n+1)` -/
def P385655836279510741.Spec : Prop :=
  ∀ n, P385655836279510741.a n = A163297 (n + 1)

end A163297

/-!
# A163298: Sum of divisors of n minus binary order of n.

The programs for A163298, the canonical program `A163298.P757571966658937127` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163298 has offset 1).

The definition of A163298 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163298.P757571966658937127

`A000203(n+1)-A029837(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A163298

/-- `A000203(n+1)-A029837(n+1)` -/
def P757571966658937127.Spec : Prop :=
  ∀ n, P757571966658937127.a n = A163298 (n + 1)

theorem P757571966658937127.correct : P757571966658937127.Spec := by
  intro n
  simp only [A163298, Nat.add_sub_cancel]

end A163298

/-! ## A163298.P1133423066651463547

`∑{d}[n+1, #]-ceil(log2(n+1))`
-/

namespace A163298.P1133423066651463547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ⌈Real.logb 2 (n + 1 : ℝ)⌉

end

end A163298.P1133423066651463547

namespace A163298

/-- `∑{d}[n+1, #]-ceil(log2(n+1))` -/
def P1133423066651463547.Spec : Prop :=
  ∀ n, P1133423066651463547.a n = A163298 (n + 1)

end A163298

/-! ## A163298.P2593148797486136989

`∑{d}[n+1, #]+1-floor(log2(4*n+2))`
-/

namespace A163298.P2593148797486136989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d + 1 : ℕ) : ℤ) - (Nat.log 2 (4 * n + 2) : ℤ)

end

end A163298.P2593148797486136989

namespace A163298

/-- `∑{d}[n+1, #]+1-floor(log2(4*n+2))` -/
def P2593148797486136989.Spec : Prop :=
  ∀ n, P2593148797486136989.a n = A163298 (n + 1)

end A163298

/-! ## A163298.P2509687320829797020

`A245092(2*n+1)-floor(log2(Δ[n²]))`
-/

namespace A163298.P2509687320829797020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) - (Nat.log 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A163298.P2509687320829797020

namespace A163298

/-- `A245092(2*n+1)-floor(log2(Δ[n²]))` -/
def P2509687320829797020.Spec : Prop :=
  ∀ n, P2509687320829797020.a n = A163298 (n + 1)

end A163298

/-! ## A163298.P10798410180717233700

`A088580(n+1)-A070941(n)`
-/

namespace A163298.P10798410180717233700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A070941 n

end

end A163298.P10798410180717233700

namespace A163298

/-- `A088580(n+1)-A070941(n)` -/
def P10798410180717233700.Spec : Prop :=
  ∀ n, P10798410180717233700.a n = A163298 (n + 1)

end A163298

/-! ## A163298.P13027968518744659433

`Δ[A160664(n)]-log2(A062383(n))`
-/

namespace A163298.P13027968518744659433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℝ) - Real.logb 2 (A062383 n : ℝ)

end

end A163298.P13027968518744659433

namespace A163298

/-- `Δ[A160664(n)]-log2(A062383(n))` -/
def P13027968518744659433.Spec : Prop :=
  ∀ n, P13027968518744659433.a n = (A163298 (n + 1) : ℝ)

end A163298

/-! ## A163298.P3480451183325555550

`Δ[A160664(n)]-∑[A209229(n)]`
-/

namespace A163298.P3480451183325555550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A163298.P3480451183325555550

namespace A163298

/-- `Δ[A160664(n)]-∑[A209229(n)]` -/
def P3480451183325555550.Spec : Prop :=
  ∀ n, P3480451183325555550.a n = A163298 (n + 1)

end A163298

/-! ## A163298.P5073820623876822173

`A000203(n+1)-∑[A209229(n)]`
-/

namespace A163298.P5073820623876822173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163298.P5073820623876822173

namespace A163298

/-- `A000203(n+1)-∑[A209229(n)]` -/
def P5073820623876822173.Spec : Prop :=
  ∀ n, P5073820623876822173.a n = A163298 (n + 1)

end A163298

/-! ## A163298.P11756081316050750013

`A074400(n+1)-A163297(n+1)`
-/

namespace A163298.P11756081316050750013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - A163297 (n + 1)

end

end A163298.P11756081316050750013

namespace A163298

/-- `A074400(n+1)-A163297(n+1)` -/
def P11756081316050750013.Spec : Prop :=
  ∀ n, P11756081316050750013.a n = A163298 (n + 1)

end A163298

/-! ## A163298.P16599056753156195705

`A000203(n+1)-val(A062383(n), 2)`
-/

namespace A163298.P16599056753156195705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (SequenceMachineLib.valuation (A062383 n).toNat 2 : ℤ)

end

end A163298.P16599056753156195705

namespace A163298

/-- `A000203(n+1)-val(A062383(n), 2)` -/
def P16599056753156195705.Spec : Prop :=
  ∀ n, P16599056753156195705.a n = A163298 (n + 1)

end A163298

/-! ## A163298.P11849670340376649569

`A000203(n+1)-∑[char[A000079(n)]]`
-/

namespace A163298.P11849670340376649569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A163298.P11849670340376649569

namespace A163298

/-- `A000203(n+1)-∑[char[A000079(n)]]` -/
def P11849670340376649569.Spec : Prop :=
  ∀ n, P11849670340376649569.a n = A163298 (n + 1)

end A163298

/-! ## A163298.P978051173940206652

`A000203(n+1)-∑[char[A130321(n)]]`
-/

namespace A163298.P978051173940206652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A163298.P978051173940206652

namespace A163298

/-- `A000203(n+1)-∑[char[A130321(n)]]` -/
def P978051173940206652.Spec : Prop :=
  ∀ n, P978051173940206652.a n = A163298 (n + 1)

end A163298

/-! ## A163298.P14692683576223606680

`sqrt(A072861(n+1))-A029837(n+1)`
-/

namespace A163298.P14692683576223606680
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) - (A029837 (n + 1) : ℝ)

end

end A163298.P14692683576223606680

namespace A163298

/-- `sqrt(A072861(n+1))-A029837(n+1)` -/
def P14692683576223606680.Spec : Prop :=
  ∀ n, P14692683576223606680.a n = (A163298 (n + 1) : ℝ)

end A163298

/-! ## A163298.P5322481375594613889

`2*A000203(n+1)-A163297(n+1)`
-/

namespace A163298.P5322481375594613889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1) - A163297 (n + 1)

end

end A163298.P5322481375594613889

namespace A163298

/-- `2*A000203(n+1)-A163297(n+1)` -/
def P5322481375594613889.Spec : Prop :=
  ∀ n, P5322481375594613889.a n = A163298 (n + 1)

end A163298

/-! ## A163298.P14083678973399475203

`A163297(n+1)-2*A029837(n+1)`
-/

namespace A163298.P14083678973399475203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163297 (n + 1) - 2 * A029837 (n + 1)

end

end A163298.P14083678973399475203

namespace A163298

/-- `A163297(n+1)-2*A029837(n+1)` -/
def P14083678973399475203.Spec : Prop :=
  ∀ n, P14083678973399475203.a n = A163298 (n + 1)

end A163298

/-! ## A163298.P11095618556968821223

`A074400(n+1)/2-A029837(n+1)`
-/

namespace A163298.P11095618556968821223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A029837 (n + 1) : ℚ)

end

end A163298.P11095618556968821223

namespace A163298

/-- `A074400(n+1)/2-A029837(n+1)` -/
def P11095618556968821223.Spec : Prop :=
  ∀ n, P11095618556968821223.a n = (A163298 (n + 1) : ℚ)

end A163298

/-! ## A163298.P1992422435439449855

`A000203(n+1)-A000523(2*n+1)`
-/

namespace A163298.P1992422435439449855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000523 (2 * n + 1)

end

end A163298.P1992422435439449855

namespace A163298

/-- `A000203(n+1)-A000523(2*n+1)` -/
def P1992422435439449855.Spec : Prop :=
  ∀ n, P1992422435439449855.a n = A163298 (n + 1)

end A163298

/-! ## A163298.P2949839808142380061

`A000203(n+1)-and(A000225(n), A070939(n))`
-/

namespace A163298.P2949839808142380061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - Int.land (A000225 n) (A070939 n)

end

end A163298.P2949839808142380061

namespace A163298

/-- `A000203(n+1)-and(A000225(n), A070939(n))` -/
def P2949839808142380061.Spec : Prop :=
  ∀ n, P2949839808142380061.a n = A163298 (n + 1)

end A163298

/-! ## A163298.P12620128714722850823

`A000203(n+1)-A252464(A005940(n+1))`
-/

namespace A163298.P12620128714722850823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A252464 (A005940 (n + 1)).toNat

end

end A163298.P12620128714722850823

namespace A163298

/-- `A000203(n+1)-A252464(A005940(n+1))` -/
def P12620128714722850823.Spec : Prop :=
  ∀ n, P12620128714722850823.a n = A163298 (n + 1)

end A163298

/-!
# A163299: a(n) = (the number of divisors of n)^(the binary order of n).

The programs for A163299, the canonical program `A163299.P11401659871366047700` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163299 has offset 1).

The definition of A163299 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163299.P11401659871366047700

`A000005(n+1)^A029837(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A163299

/-- `A000005(n+1)^A029837(n+1)` -/
def P11401659871366047700.Spec : Prop :=
  ∀ n, P11401659871366047700.a n = (A163299 (n + 1) : ℚ)

end A163299

/-! ## A163299.P12166251377253627816

`∏{e}[n+1, #+1]^ceil(log2(n+1))`
-/

namespace A163299.P12166251377253627816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)

end

end A163299.P12166251377253627816

namespace A163299

/-- `∏{e}[n+1, #+1]^ceil(log2(n+1))` -/
def P12166251377253627816.Spec : Prop :=
  ∀ n, P12166251377253627816.a n = (A163299 (n + 1) : ℚ)

end A163299

/-! ## A163299.P2971280500531614794

`∑{d}[n+1, gcd(n, #)]^ceil(log2(n+1))`
-/

namespace A163299.P2971280500531614794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)

end

end A163299.P2971280500531614794

namespace A163299

/-- `∑{d}[n+1, gcd(n, #)]^ceil(log2(n+1))` -/
def P2971280500531614794.Spec : Prop :=
  ∀ n, P2971280500531614794.a n = (A163299 (n + 1) : ℚ)

end A163299

/-! ## A163299.P12448912509993178677

`∑{d}[n+1, ((#+1)%2)!]^ceil(log2(n+1))`
-/

namespace A163299.P12448912509993178677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), Nat.factorial ((d + 1) % 2) : ℕ) : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)

end

end A163299.P12448912509993178677

namespace A163299

/-- `∑{d}[n+1, ((#+1)%2)!]^ceil(log2(n+1))` -/
def P12448912509993178677.Spec : Prop :=
  ∀ n, P12448912509993178677.a n = (A163299 (n + 1) : ℚ)

end A163299

/-! ## A163299.P18425705866967921164

`(∑{d}[n+1, lcm(#, n+1)]/(n+1))^ceil(log2(n+1))`
-/

namespace A163299.P18425705866967921164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1) : ℕ) : ℚ) / (n + 1 : ℚ)) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)

end

end A163299.P18425705866967921164

namespace A163299

/-- `(∑{d}[n+1, lcm(#, n+1)]/(n+1))^ceil(log2(n+1))` -/
def P18425705866967921164.Spec : Prop :=
  ∀ n, P18425705866967921164.a n = (A163299 (n + 1) : ℚ)

end A163299

/-! ## A163299.P14551961182599186623

`Δ[A006218(n)]^ceil(log2(n+1))`
-/

namespace A163299.P14551961182599186623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)

end

end A163299.P14551961182599186623

namespace A163299

/-- `Δ[A006218(n)]^ceil(log2(n+1))` -/
def P14551961182599186623.Spec : Prop :=
  ∀ n, P14551961182599186623.a n = (A163299 (n + 1) : ℚ)

end A163299

/-! ## A163299.P9039428038532754753

`Δ[A054519(n)]^ceil(log2(n+1))`
-/

namespace A163299.P9039428038532754753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)

end

end A163299.P9039428038532754753

namespace A163299

/-- `Δ[A054519(n)]^ceil(log2(n+1))` -/
def P9039428038532754753.Spec : Prop :=
  ∀ n, P9039428038532754753.a n = (A163299 (n + 1) : ℚ)

end A163299

/-! ## A163299.P266642893681530022

`(A158907(n+1)-n)^ceil(log2(n+1))`
-/

namespace A163299.P266642893681530022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158907 (n + 1) - (n : ℤ) : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)

end

end A163299.P266642893681530022

namespace A163299

/-- `(A158907(n+1)-n)^ceil(log2(n+1))` -/
def P266642893681530022.Spec : Prop :=
  ∀ n, P266642893681530022.a n = (A163299 (n + 1) : ℚ)

end A163299

/-! ## A163299.P11977177861144157818

`(n+1-A049820(n+1))^∑[char[2^n]]`
-/

namespace A163299.P11977177861144157818
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A049820 (n + 1)) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163299.P11977177861144157818

namespace A163299

/-- `(n+1-A049820(n+1))^∑[char[2^n]]` -/
def P11977177861144157818.Spec : Prop :=
  ∀ n, P11977177861144157818.a n = A163299 (n + 1)

end A163299

/-! ## A163299.P3334778554232510692

`(∑{d}[n+1, A000010(#)+1]-(n+1))^ceil(log2(n+1))`
-/

namespace A163299.P3334778554232510692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (A000010 d + 1) - (n + 1 : ℤ) : ℤ) : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)

end

end A163299.P3334778554232510692

namespace A163299

/-- `(∑{d}[n+1, A000010(#)+1]-(n+1))^ceil(log2(n+1))` -/
def P3334778554232510692.Spec : Prop :=
  ∀ n, P3334778554232510692.a n = (A163299 (n + 1) : ℚ)

end A163299

/-! ## A163299.P18329690266164725971

`A000005(n+1)^A070939(n)`
-/

namespace A163299.P18329690266164725971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) ^ (A070939 n : ℤ)

end

end A163299.P18329690266164725971

namespace A163299

/-- `A000005(n+1)^A070939(n)` -/
def P18329690266164725971.Spec : Prop :=
  ∀ n, P18329690266164725971.a n = (A163299 (n + 1) : ℚ)

end A163299

/-! ## A163299.P5305486610357266289

`A062383(n)^log2(A000005(n+1))`
-/

namespace A163299.P5305486610357266289
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A062383 n : ℝ) ^ (Real.logb 2 (A000005 (n + 1) : ℝ))

end

end A163299.P5305486610357266289

namespace A163299

/-- `A062383(n)^log2(A000005(n+1))` -/
def P5305486610357266289.Spec : Prop :=
  ∀ n, P5305486610357266289.a n = (A163299 (n + 1) : ℝ)

end A163299

/-! ## A163299.P6237379690860658554

`(A032741(n+1)+1)^A029837(n+1)`
-/

namespace A163299.P6237379690860658554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032741 (n + 1) + 1 : ℚ) ^ (A029837 (n + 1) : ℤ)

end

end A163299.P6237379690860658554

namespace A163299

/-- `(A032741(n+1)+1)^A029837(n+1)` -/
def P6237379690860658554.Spec : Prop :=
  ∀ n, P6237379690860658554.a n = (A163299 (n + 1) : ℚ)

end A163299

/-! ## A163299.P16780364732411888180

`(A038040(n+1)/(n+1))^A070939(n)`
-/

namespace A163299.P16780364732411888180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ (A070939 n : ℤ)

end

end A163299.P16780364732411888180

namespace A163299

/-- `(A038040(n+1)/(n+1))^A070939(n)` -/
def P16780364732411888180.Spec : Prop :=
  ∀ n, P16780364732411888180.a n = (A163299 (n + 1) : ℚ)

end A163299

/-! ## A163299.P3982580457979436253

`(A038040(n+1)/(n+1))^A029837(n+1)`
-/

namespace A163299.P3982580457979436253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ (A029837 (n + 1) : ℤ)

end

end A163299.P3982580457979436253

namespace A163299

/-- `(A038040(n+1)/(n+1))^A029837(n+1)` -/
def P3982580457979436253.Spec : Prop :=
  ∀ n, P3982580457979436253.a n = (A163299 (n + 1) : ℚ)

end A163299

/-! ## A163299.P6137433460661769208

`A000005(n+1)^(A023416(n)+A000120(n))`
-/

namespace A163299.P6137433460661769208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) ^ (A023416 n + A000120 n : ℤ)

end

end A163299.P6137433460661769208

namespace A163299

/-- `A000005(n+1)^(A023416(n)+A000120(n))` -/
def P6137433460661769208.Spec : Prop :=
  ∀ n, P6137433460661769208.a n = (A163299 (n + 1) : ℚ)

end A163299

/-! ## A163299.P10279205970846561633

`A183063(2*(n+1))^A070939(n)`
-/

namespace A163299.P10279205970846561633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183063 (2 * (n + 1)) : ℚ) ^ (A070939 n : ℤ)

end

end A163299.P10279205970846561633

namespace A163299

/-- `A183063(2*(n+1))^A070939(n)` -/
def P10279205970846561633.Spec : Prop :=
  ∀ n, P10279205970846561633.a n = (A163299 (n + 1) : ℚ)

end A163299

/-! ## A163299.P7252395090972731670

`A183063(2*(n+1))^A000523(2*n+1)`
-/

namespace A163299.P7252395090972731670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183063 (2 * (n + 1)) : ℚ) ^ (A000523 (2 * n + 1) : ℤ)

end

end A163299.P7252395090972731670

namespace A163299

/-- `A183063(2*(n+1))^A000523(2*n+1)` -/
def P7252395090972731670.Spec : Prop :=
  ∀ n, P7252395090972731670.a n = (A163299 (n + 1) : ℚ)

end A163299

