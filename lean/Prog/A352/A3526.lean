import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
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
import Seq.B004.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A352601: a(n) = RisingFactorial(2*n, n) = A124320(2*n, n).

The programs for A352601, there is no canonical definition to state claims against.
-/

/-! ## A352601.P13893367222708542952

`n!*A165817(n)`
-/

namespace A352601.P13893367222708542952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A165817 n

end

end A352601.P13893367222708542952

/-! ## A352601.P10164252916926301526

`A344391(A007742(n))`
-/

namespace A352601.P10164252916926301526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344391 (A007742 n).toNat

end

end A352601.P10164252916926301526

/-! ## A352601.P3594747712009400336

`A124320(∑[4*n])`
-/

namespace A352601.P3594747712009400336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124320 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A352601.P3594747712009400336

/-! ## A352601.P17967142758570802603

`A068424(∑[9*n-8]+9)`
-/

namespace A352601.P17967142758570802603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068424 (∑ j ∈ Finset.range (n + 1), f1 j + 9).toNat

end

end A352601.P17967142758570802603

/-! ## A352601.P1378682466642852394

`A008279(A022266(n))`
-/

namespace A352601.P1378682466642852394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A022266 n).toNat

end

end A352601.P1378682466642852394

/-!
# A352602: a(n) = 4^n*(2^(2*n+1)-1)*(2*n)!.

The programs for A352602, the canonical program `A352602.P18173817587250333388` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352602 has offset 0).

The definition of A352602 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n*(2^(2*n+1)-1)*(2*n)!` (program `A352602.P18173817587250333388`, by `A352602.P18173817587250333388.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A352602.P18173817587250333388

`4^n*(2^(2*n+1)-1)*(2*n)!`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A352602

/-- `4^n*(2^(2*n+1)-1)*(2*n)!` -/
def P18173817587250333388.Spec : Prop :=
  ∀ n, P18173817587250333388.a n = A352602 n

theorem P18173817587250333388.correct : P18173817587250333388.Spec := by
  intro n
  simp only [A352602]

end A352602

/-! ## A352602.P16431513683468604827

`(2*n)!*C(2^(2*n+1), 2)`
-/

namespace A352602.P16431513683468604827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n) * Nat.choose (2 ^ (2 * n + 1)) 2

end

end A352602.P16431513683468604827

namespace A352602

/-- `(2*n)!*C(2^(2*n+1), 2)` -/
def P16431513683468604827.Spec : Prop :=
  ∀ n, (P16431513683468604827.a n : ℤ) = A352602 n

end A352602

/-! ## A352602.P12576549290770138400

`(A081294(n+1)-1)*A000165(2*n)`
-/

namespace A352602.P12576549290770138400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081294 (n + 1) - 1) * A000165 (2 * n)

end

end A352602.P12576549290770138400

namespace A352602

/-- `(A081294(n+1)-1)*A000165(2*n)` -/
def P12576549290770138400.Spec : Prop :=
  ∀ n, P12576549290770138400.a n = A352602 n

end A352602

/-! ## A352602.P18401187356734724843

`A000165(2*n)*A000225(2*n+1)`
-/

namespace A352602.P18401187356734724843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (2 * n) * A000225 (2 * n + 1)

end

end A352602.P18401187356734724843

namespace A352602

/-- `A000165(2*n)*A000225(2*n+1)` -/
def P18401187356734724843.Spec : Prop :=
  ∀ n, P18401187356734724843.a n = A352602 n

end A352602

/-! ## A352602.P6328345817898550738

`A000225(2*n+1)*A006882(4*n)`
-/

namespace A352602.P6328345817898550738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * n + 1) * A006882 (4 * n)

end

end A352602.P6328345817898550738

namespace A352602

/-- `A000225(2*n+1)*A006882(4*n)` -/
def P6328345817898550738.Spec : Prop :=
  ∀ n, P6328345817898550738.a n = A352602 n

end A352602

/-!
# A352604: Primes p such that p^2+3*p+1 and p^2+p-1 are also prime.

The programs for A352604, there is no canonical definition to state claims against.
-/

/-! ## A352604.P1503361026828040535

`∩[A053184(n+1), A153590(n+1)]`
-/

namespace A352604.P1503361026828040535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352604.P1503361026828040535

/-! ## A352604.P614251546687742431

`p?[A116214(n+1)]`
-/

namespace A352604.P614251546687742431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352604.P614251546687742431

/-! ## A352604.P8433076002448794371

`p?[A081944(n+1)-1]`
-/

namespace A352604.P8433076002448794371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352604.P8433076002448794371

/-! ## A352604.P2498284352403669024

`p?[record[A116214(A292266(n))]]`
-/

namespace A352604.P2498284352403669024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116214 (A292266 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352604.P2498284352403669024

/-! ## A352604.P8249129121744910707

`∩[A053184(n+1), A116214(n+1)]`
-/

namespace A352604.P8249129121744910707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352604.P8249129121744910707

/-! ## A352604.P7980438543139853964

`∩[A116214(n+1), A153590(n+1)]`
-/

namespace A352604.P7980438543139853964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352604.P7980438543139853964

/-! ## A352604.P11661121052953191697

`∩[A053184(n+1), A081944(n+1)-1]`
-/

namespace A352604.P11661121052953191697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352604.P11661121052953191697

/-! ## A352604.P692723355432381867

`p?[record[A116214(A133310(n))]]`
-/

namespace A352604.P692723355432381867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116214 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352604.P692723355432381867

/-! ## A352604.P9145678542113858175

`∩[A153590(n+1), A275059(n+1)]`
-/

namespace A352604.P9145678542113858175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352604.P9145678542113858175

/-! ## A352604.P15633759532483992337

`∩[A042991(n+1), A116214(n+1)]`
-/

namespace A352604.P15633759532483992337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352604.P15633759532483992337

/-! ## A352604.P9901945871634812877

`∩[A049557(n+1), A116214(n+1)]`
-/

namespace A352604.P9901945871634812877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352604.P9901945871634812877

/-! ## A352604.P7813056875676193601

`∩[A040179(n+1), A116214(n+1)]`
-/

namespace A352604.P7813056875676193601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352604.P7813056875676193601

/-! ## A352604.P6871166464404696437

`∩[A040986(n+1), A116214(n+1)]`
-/

namespace A352604.P6871166464404696437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352604.P6871166464404696437

/-! ## A352604.P8797108139995264685

`∩[A040990(n+1), A116214(n+1)]`
-/

namespace A352604.P8797108139995264685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352604.P8797108139995264685

/-! ## A352604.P9882287421679825630

`∩[A040159(n+1), A116214(n+1)]`
-/

namespace A352604.P9882287421679825630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352604.P9882287421679825630

/-! ## A352604.P534506464031236065

`∩[A040161(n+1), A116214(n+1)]`
-/

namespace A352604.P534506464031236065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352604.P534506464031236065

/-! ## A352604.P9074579314455449570

`∩[A040165(n+1), A116214(n+1)]`
-/

namespace A352604.P9074579314455449570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352604.P9074579314455449570

/-! ## A352604.P11750875046114823038

`∩[A040169(n+1), A116214(n+1)]`
-/

namespace A352604.P11750875046114823038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352604.P11750875046114823038

/-! ## A352604.P12861901276033063429

`∩[A040171(n+1), A116214(n+1)]`
-/

namespace A352604.P12861901276033063429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352604.P12861901276033063429

/-! ## A352604.P14375682457231238326

`∩[A040177(n+1), A116214(n+1)]`
-/

namespace A352604.P14375682457231238326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352604.P14375682457231238326

/-!
# A352605: Primes p such that the floor of the area of a triangle with sides p-1, p and p+1 is prime.

The programs for A352605, there is no canonical definition to state claims against.
-/

/-! ## A352605.P18185107762043450063

`p?[∑[A055188(A067986(n))]]`
-/

namespace A352605.P18185107762043450063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055188 (A067986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352605.P18185107762043450063

/-!
# A352606: Expansion of e.g.f. tan(cos(x) - 1) (even part).

The programs for A352606, there is no canonical definition to state claims against.
-/

/-! ## A352606.P18378033945643359689

`A238353(A348927(n+1))+A119286(n)`
-/

namespace A352606.P18378033945643359689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (A348927 (n + 1)).toNat + A119286 n

end

end A352606.P18378033945643359689

/-!
# A352607: Triangle read by rows. T(n, k) = Bell(k)*Sum_{j=0..k}(-1)^(k+j)*binomial(n, n-k+j)*Stirling2(n-k+j, j) for n >= 0 and 0 <= k <= floor(n/2).

The programs for A352607, there is no canonical definition to state claims against.
-/

/-! ## A352607.P9875818250747792622

`A137369(a(n-1)+2)*A137375(n)` with `a(0)=1`
-/

namespace A352607.P9875818250747792622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A137369 (a (n - 1) + 2).toNat * A137375 n

end

end A352607.P9875818250747792622

/-! ## A352607.P15811624174171188240

`A048766(A055087(n)^A256663(n))`
-/

namespace A352607.P15811624174171188240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (SequenceMachineLib.roundAway ((A055087 n : ℚ) ^ (A256663 n : ℤ))).toNat

end

end A352607.P15811624174171188240

/-! ## A352607.P18321795964299710401

`A108263(n)*A324572(A289222(n+1))`
-/

namespace A352607.P18321795964299710401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108263 n * A324572 (A289222 (n + 1)).toNat

end

end A352607.P18321795964299710401

/-! ## A352607.P6581034612160123512

`A324398(n+1)+A007953(A324436(n))`
-/

namespace A352607.P6581034612160123512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324398 (n + 1) + A007953 (A324436 n).toNat

end

end A352607.P6581034612160123512

/-! ## A352607.P4281827751898761336

`A170974(A180887(n+1)-A112198(n))`
-/

namespace A352607.P4281827751898761336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170974 (A180887 (n + 1) - A112198 n).toNat

end

end A352607.P4281827751898761336

/-!
# A352608: a(n) = Bell(n)*n!!.

The programs for A352608, there is no canonical definition to state claims against.
-/

/-! ## A352608.P7766863504311438680

`A000110(n)*A006882(n)`
-/

namespace A352608.P7766863504311438680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A006882 n

end

end A352608.P7766863504311438680

/-! ## A352608.P11283290964180993762

`abs(A006882(n)*A292935(n))`
-/

namespace A352608.P11283290964180993762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006882 n * A292935 n|

end

end A352608.P11283290964180993762

/-! ## A352608.P8170745952703083980

`A006882(n)*A011971(∑[n])`
-/

namespace A352608.P8170745952703083980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n * A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A352608.P8170745952703083980

/-! ## A352608.P3616744607445628148

`A006882(n)*A095149(∑[n])`
-/

namespace A352608.P3616744607445628148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n * A095149 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A352608.P3616744607445628148

/-! ## A352608.P2791747377247671725

`A006882(n)*A123081(∑[n])`
-/

namespace A352608.P2791747377247671725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n * A123081 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A352608.P2791747377247671725

/-!
# A352613: Multiplicative, with a(p^k) determined using the same rule as Van Eck's sequence for any prime p and k > 0.

The programs for A352613, there is no canonical definition to state claims against.
-/

/-! ## A352613.P2779864834253183059

`round(1/gcd(12, 5-n))*A356226(A028323(n))`
-/

namespace A352613.P2779864834253183059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (Int.gcd 12 (5 - (n : ℤ)) : ℚ)) * A356226 (A028323 n).toNat

end

end A352613.P2779864834253183059

/-! ## A352613.P17119204764296843633

`A237591(n+1)%A059126(A349570(n+1))`
-/

namespace A352613.P17119204764296843633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237591 (n + 1)) (A059126 (A349570 (n + 1)).toNat)

end

end A352613.P17119204764296843633

/-! ## A352613.P12477498160840570499

`(A283748(n+4)-A285109(n+1))%A001055(2*(n+2))`
-/

namespace A352613.P12477498160840570499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283748 (n + 4) - A285109 (n + 1)) (A001055 (2 * (n + 2)))

end

end A352613.P12477498160840570499

/-! ## A352613.P7893805193485268514

`A343754(A239849(3*(n+1)))%4`
-/

namespace A352613.P7893805193485268514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343754 (A239849 (3 * (n + 1))).toNat) 4

end

end A352613.P7893805193485268514

/-! ## A352613.P4329520044620194235

`A324848(A051950(n+2)+A002076(n))`
-/

namespace A352613.P4329520044620194235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324848 (A051950 (n + 2) + A002076 n).toNat

end

end A352613.P4329520044620194235

/-!
# A352614: Let F_n(k) be the k-th term of the n-th Farey sequence and define s_n = Sum_{i=1..m} |F_n(i) - i/m| where m is the length of the n-th Farey sequence. Then a(n) is the least k such that s_k >= n.

The programs for A352614, there is no canonical definition to state claims against.
-/

/-! ## A352614.P767574939495251840

`A293627(A338197(n+1))+A000566(3*n)`
-/

namespace A352614.P767574939495251840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293627 (A338197 (n + 1)).toNat + A000566 (3 * n)

end

end A352614.P767574939495251840

/-!
# A352616: Numbers k such that A155085(k) is in A037074.

The programs for A352616, there is no canonical definition to state claims against.
-/

/-! ## A352616.P3043448399004064691

`A115914(∑[A085697(n)!])`
-/

namespace A352616.P3043448399004064691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A085697 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115914 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A352616.P3043448399004064691

/-!
# A352617: Expansion of e.g.f. exp( exp(x) + sinh(x) - 1 ).

The programs for A352617, there is no canonical definition to state claims against.
-/

/-! ## A352617.P1685134892703474389

`A222254(A301306(n*A072405(n)))`
-/

namespace A352617.P1685134892703474389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A301306 ((n : ℤ) * A072405 n).toNat).toNat

end

end A352617.P1685134892703474389

/-! ## A352617.P6839477878227453599

`A225215(A325581(n)+A303362(3*n+2))`
-/

namespace A352617.P6839477878227453599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225215 (A325581 n + A303362 (3 * n + 2)).toNat

end

end A352617.P6839477878227453599

/-!
# A352618: Squares that are 7-smooth.

The programs for A352618, there is no canonical definition to state claims against.
-/

/-! ## A352618.P18200591972653628681

`A002473(n+1)²`
-/

namespace A352618.P18200591972653628681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1) ^ 2

end

end A352618.P18200591972653628681

/-! ## A352618.P16628456262487124411

`(A085125(n+1)/2)²`
-/

namespace A352618.P16628456262487124411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A085125 (n + 1) : ℚ) / 2) ^ 2

end

end A352618.P16628456262487124411

/-! ## A352618.P6053809447920946821

`(A085126(n+1)/3)²`
-/

namespace A352618.P6053809447920946821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A085126 (n + 1) : ℚ) / 3) ^ 2

end

end A352618.P6053809447920946821

/-! ## A352618.P3324091446974582597

`(A085127(n+1)/4)²`
-/

namespace A352618.P3324091446974582597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A085127 (n + 1) : ℚ) / 4) ^ 2

end

end A352618.P3324091446974582597

/-! ## A352618.P13983458878008056466

`(A085128(n+1)/5)²`
-/

namespace A352618.P13983458878008056466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A085128 (n + 1) : ℚ) / 5) ^ 2

end

end A352618.P13983458878008056466

/-! ## A352618.P13427810919912618526

`∏{digits}[A280249(n+1), #²]`
-/

namespace A352618.P13427810919912618526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).prod

end

end A352618.P13427810919912618526

/-! ## A352618.P14310409818460237774

`∏{digits}[A341634(n+1), #²]`
-/

namespace A352618.P14310409818460237774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341634 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).prod

end

end A352618.P14310409818460237774

/-! ## A352618.P15665387487663029738

`(A080194(n+1)-A085129(n+1))²`
-/

namespace A352618.P15665387487663029738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080194 (n + 1) - A085129 (n + 1)) ^ 2

end

end A352618.P15665387487663029738

/-! ## A352618.P1443720779208239588

`(A080194(n+1)-A085131(n+1))²`
-/

namespace A352618.P1443720779208239588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080194 (n + 1) - A085131 (n + 1)) ^ 2

end

end A352618.P1443720779208239588

/-! ## A352618.P17171816750800675092

`(A085125(n+1)-A085126(n+1))²`
-/

namespace A352618.P17171816750800675092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085125 (n + 1) - A085126 (n + 1)) ^ 2

end

end A352618.P17171816750800675092

/-! ## A352618.P16910164403005565185

`(A085126(n+1)-A085127(n+1))²`
-/

namespace A352618.P16910164403005565185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085126 (n + 1) - A085127 (n + 1)) ^ 2

end

end A352618.P16910164403005565185

/-! ## A352618.P6877791567853534836

`(A085127(n+1)-A085128(n+1))²`
-/

namespace A352618.P6877791567853534836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085127 (n + 1) - A085128 (n + 1)) ^ 2

end

end A352618.P6877791567853534836

/-! ## A352618.P8784552779028978270

`A002473(n+1)^A046523(A020639(n+1))`
-/

namespace A352618.P8784552779028978270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002473 (n + 1) : ℚ) ^ (A046523 (A020639 (n + 1)).toNat : ℤ)

end

end A352618.P8784552779028978270

/-! ## A352618.P8595916789631114004

`A002473(n+1)^A000005(A332768(n+1))`
-/

namespace A352618.P8595916789631114004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002473 (n + 1) : ℚ) ^ (A000005 (A332768 (n + 1)).toNat : ℤ)

end

end A352618.P8595916789631114004

/-! ## A352618.P560369751022730605

`A002473(n+1)^A000005(A260234(n+2))`
-/

namespace A352618.P560369751022730605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002473 (n + 1) : ℚ) ^ (A000005 (A260234 (n + 2)).toNat : ℤ)

end

end A352618.P560369751022730605

/-! ## A352618.P14780087650295560471

`(A002473(n+2)-A086247(n+1))*A002473(n+1)`
-/

namespace A352618.P14780087650295560471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002473 (n + 2) - A086247 (n + 1)) * A002473 (n + 1)

end

end A352618.P14780087650295560471

/-! ## A352618.P6299226135373575077

`A002473(n+1)^A020639(A278222(n))`
-/

namespace A352618.P6299226135373575077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002473 (n + 1) : ℚ) ^ (A020639 (A278222 n).toNat : ℤ)

end

end A352618.P6299226135373575077

/-! ## A352618.P16263549672711353159

`(lt[A006530(n+1), 8]+1)²`
-/

namespace A352618.P16263549672711353159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) ^ 2

end

end A352618.P16263549672711353159

/-! ## A352618.P16470149574086032687

`∩[A048737(n+1)², A051038(n+1)]`
-/

namespace A352618.P16470149574086032687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048737 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352618.P16470149574086032687

/-! ## A352618.P4788757439899860302

`eq[n, A376301(n)]²`
-/

namespace A352618.P4788757439899860302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376301 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A352618.P4788757439899860302

/-!
# A352620: Irregular triangle read by rows which are rows of successive n X n matrices M(n) with entries M(n)[i,j] = i*j mod n+1.

The programs for A352620, there is no canonical definition to state claims against.
-/

/-! ## A352620.P9972592533614364920

`and(A062028(A343827(3*n+5)), A343853(n+2))`
-/

namespace A352620.P9972592533614364920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062028 (A343827 (3 * n + 5)).toNat) (A343853 (n + 2))

end

end A352620.P9972592533614364920

/-! ## A352620.P1722300050338885101

`A305791(A045891(n))%A114227(n+3)`
-/

namespace A352620.P1722300050338885101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305791 (A045891 n).toNat) (A114227 (n + 3))

end

end A352620.P1722300050338885101

/-! ## A352620.P8874155939215722777

`C(A001221(A080078(3*n+2)), A001221(n+1))`
-/

namespace A352620.P8874155939215722777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001221 (A080078 (3 * n + 2)).toNat).toNat (A001221 (n + 1)).toNat

end

end A352620.P8874155939215722777

/-! ## A352620.P18142025674498954997

`A260089(A079362(n+2))`
-/

namespace A352620.P18142025674498954997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260089 (A079362 (n + 2)).toNat

end

end A352620.P18142025674498954997

/-! ## A352620.P3214464147798195204

`A068073(n+3)-A068101(A068059(3*n+1))`
-/

namespace A352620.P3214464147798195204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068073 (n + 3) - A068101 (A068059 (3 * n + 1)).toNat

end

end A352620.P3214464147798195204

/-!
# A352621: a(n) is the minimum possible value of the largest number placed in a solution to the Forest of Numbers (Bosque de Números) puzzle if we start with the numbers 1 and 2 in an n X n grid (see Comments).

The programs for A352621, there is no canonical definition to state claims against.
-/

/-! ## A352621.P17663869363514813728

`(n+1)*∑[a(n-2)+5]` with `a(0)=6, a(1)=0, a(2)=6`
-/

namespace A352621.P17663869363514813728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 0, 6] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A352621.P17663869363514813728

/-!
# A352622: Number of regular convex polytopes that can be formed with n indistinguishable points located at the vertices, coinciding in equal frequency at each vertex, if coinciding at all.

The programs for A352622, there is no canonical definition to state claims against.
-/

/-! ## A352622.P7478650020578296234

`∑{d}[n+1, A111336(#)]`
-/

namespace A352622.P7478650020578296234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A111336 d

end

end A352622.P7478650020578296234

/-! ## A352622.P8460119535221803368

`A071364(n+1)+A059841(A015650(n+1))`
-/

namespace A352622.P8460119535221803368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1) + A059841 (A015650 (n + 1)).toNat

end

end A352622.P8460119535221803368

/-! ## A352622.P753769538055583308

`A284011(n+1)+A007949(A300647(3*(n+1)))`
-/

namespace A352622.P753769538055583308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284011 (n + 1) + A007949 (A300647 (3 * (n + 1))).toNat

end

end A352622.P753769538055583308

/-! ## A352622.P7959151853515824108

`A226464(A289965(n))+A046523(n+1)`
-/

namespace A352622.P7959151853515824108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226464 (A289965 n).toNat + A046523 (n + 1)

end

end A352622.P7959151853515824108

/-! ## A352622.P14033671377845046541

`A226464(A289965(n))+A071364(n+1)`
-/

namespace A352622.P14033671377845046541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226464 (A289965 n).toNat + A071364 (n + 1)

end

end A352622.P14033671377845046541

/-!
# A352624: Expansion of e.g.f. exp(exp(x) + cosh(x) - 2).

The programs for A352624, there is no canonical definition to state claims against.
-/

/-! ## A352624.P7738718322036259550

`A227737(A008983(n))-floor(∑{e}[n+1, #]^(4-n))`
-/

namespace A352624.P7738718322036259550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227737 (A008983 n).toNat - ⌊((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ) ^ (4 - (n : ℤ) : ℤ)⌋

end

end A352624.P7738718322036259550

/-! ## A352624.P1021167406169517189

`A050296(A293588(n)+A149454(n))`
-/

namespace A352624.P1021167406169517189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A293588 n + A149454 n).toNat

end

end A352624.P1021167406169517189

/-!
# A352625: A (25,-29) Somos-4 sequence.

The programs for A352625, there is no canonical definition to state claims against.
-/

/-! ## A352625.P4502151196096863095

`record[A006769(Δ[n²])]`
-/

namespace A352625.P4502151196096863095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006769 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352625.P4502151196096863095

/-! ## A352625.P12135672369560521142

`A006720(2*(n+1))`
-/

namespace A352625.P12135672369560521142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006720 (2 * (n + 1))

end

end A352625.P12135672369560521142

/-! ## A352625.P7759983025255230563

`A006769(4*n+1)`
-/

namespace A352625.P7759983025255230563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006769 (4 * n + 1)

end

end A352625.P7759983025255230563

/-! ## A352625.P15744406886040789715

`record[(-1)^n*A006720(n)]`
-/

namespace A352625.P15744406886040789715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A006720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352625.P15744406886040789715

/-! ## A352625.P1454285981027609178

`record[A006720(floor(n/(n%2+1)))]`
-/

namespace A352625.P1454285981027609178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006720 ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352625.P1454285981027609178

/-!
# A352626: a(n) = (n+1)*(3*n-2)*C(2*n,n-1)/(4*n-2).

The programs for A352626, the canonical program `A352626.P8947529741648055479` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352626 has offset 1).

The definition of A352626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352626.P6801980674200633129

`(n+1)*Δ[(4-2/n)*a(n-1)]` with `a(0)=1`
-/

namespace A352626.P6801980674200633129
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - 2 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (f1 (n + 1) - f1 n)

end

end A352626.P6801980674200633129

namespace A352626

/-- `(n+1)*Δ[(4-2/n)*a(n-1)]` -/
def P6801980674200633129.Spec : Prop :=
  ∀ n, P6801980674200633129.a n = (A352626 (n + 1) : ℚ)

end A352626

/-! ## A352626.P8947529741648055479

`(n+1)*Δ[A000984(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A352626

/-- `(n+1)*Δ[A000984(n)]` -/
def P8947529741648055479.Spec : Prop :=
  ∀ n, P8947529741648055479.a n = A352626 (n + 1)

theorem P8947529741648055479.correct : P8947529741648055479.Spec := by
  intro n
  simp only [A352626, Nat.add_sub_cancel]

end A352626

/-! ## A352626.P6120606842006800181

`(n+1)*A051924(n+1)`
-/

namespace A352626.P6120606842006800181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A051924 (n + 1)

end

end A352626.P6120606842006800181

namespace A352626

/-- `(n+1)*A051924(n+1)` -/
def P6120606842006800181.Spec : Prop :=
  ∀ n, P6120606842006800181.a n = A352626 (n + 1)

end A352626

/-! ## A352626.P12885936505380549957

`(n+1)*A026010(2*n)`
-/

namespace A352626.P12885936505380549957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A026010 (2 * n)

end

end A352626.P12885936505380549957

namespace A352626

/-- `(n+1)*A026010(2*n)` -/
def P12885936505380549957.Spec : Prop :=
  ∀ n, P12885936505380549957.a n = A352626 (n + 1)

end A352626

/-! ## A352626.P12673596284745381032

`(n+1)*A337499(2*n)`
-/

namespace A352626.P12673596284745381032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A337499 (2 * n)

end

end A352626.P12673596284745381032

namespace A352626

/-- `(n+1)*A337499(2*n)` -/
def P12673596284745381032.Spec : Prop :=
  ∀ n, P12673596284745381032.a n = A352626 (n + 1)

end A352626

/-! ## A352626.P18311335492170020131

`(n+1)*Δ[A323230(n+1)]`
-/

namespace A352626.P18311335492170020131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A352626.P18311335492170020131

namespace A352626

/-- `(n+1)*Δ[A323230(n+1)]` -/
def P18311335492170020131.Spec : Prop :=
  ∀ n, P18311335492170020131.a n = A352626 (n + 1)

end A352626

/-! ## A352626.P7036291159238183009

`A000108(n)*∑[6*n+1]`
-/

namespace A352626.P7036291159238183009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A352626.P7036291159238183009

namespace A352626

/-- `A000108(n)*∑[6*n+1]` -/
def P7036291159238183009.Spec : Prop :=
  ∀ n, P7036291159238183009.a n = A352626 (n + 1)

end A352626

/-! ## A352626.P444031059162417618

`A001405(2*n)*(3*n+1)`
-/

namespace A352626.P444031059162417618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * (3 * n + 1 : ℤ)

end

end A352626.P444031059162417618

namespace A352626

/-- `A001405(2*n)*(3*n+1)` -/
def P444031059162417618.Spec : Prop :=
  ∀ n, P444031059162417618.a n = A352626 (n + 1)

end A352626

/-! ## A352626.P16741201069883266864

`A028283(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A352626.P16741201069883266864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028283 n + 4 * a (n - 1)

end

end A352626.P16741201069883266864

namespace A352626

/-- `A028283(n)+4*a(n-1)` -/
def P16741201069883266864.Spec : Prop :=
  ∀ n, P16741201069883266864.a n = A352626 (n + 1)

end A352626

/-! ## A352626.P728988364118116315

`(2*n+1+n)*A056040(2*n)`
-/

namespace A352626.P728988364118116315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 + n : ℤ) * A056040 (2 * n)

end

end A352626.P728988364118116315

namespace A352626

/-- `(2*n+1+n)*A056040(2*n)` -/
def P728988364118116315.Spec : Prop :=
  ∀ n, P728988364118116315.a n = A352626 (n + 1)

end A352626

/-! ## A352626.P8388957956484817963

`(2*n+1+n)*A128014(2*n)`
-/

namespace A352626.P8388957956484817963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 + n : ℤ) * A128014 (2 * n)

end

end A352626.P8388957956484817963

namespace A352626

/-- `(2*n+1+n)*A128014(2*n)` -/
def P8388957956484817963.Spec : Prop :=
  ∀ n, P8388957956484817963.a n = A352626 (n + 1)

end A352626

/-! ## A352626.P12343844449961961158

`(4*n+1-n)*A063886(2*n)`
-/

namespace A352626.P12343844449961961158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n + 1 : ℤ) - (n : ℤ)) * A063886 (2 * n)

end

end A352626.P12343844449961961158

namespace A352626

/-- `(4*n+1-n)*A063886(2*n)` -/
def P12343844449961961158.Spec : Prop :=
  ∀ n, P12343844449961961158.a n = A352626 (n + 1)

end A352626

/-! ## A352626.P11385733732663868236

`(2*n+1+n)*A047074(2*n+1)`
-/

namespace A352626.P11385733732663868236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 + n : ℤ) * A047074 (2 * n + 1)

end

end A352626.P11385733732663868236

namespace A352626

/-- `(2*n+1+n)*A047074(2*n+1)` -/
def P11385733732663868236.Spec : Prop :=
  ∀ n, P11385733732663868236.a n = A352626 (n + 1)

end A352626

/-! ## A352626.P6207017666175903833

`A005430(n)+A002457(n)`
-/

namespace A352626.P6207017666175903833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005430 n + A002457 n

end

end A352626.P6207017666175903833

namespace A352626

/-- `A005430(n)+A002457(n)` -/
def P6207017666175903833.Spec : Prop :=
  ∀ n, P6207017666175903833.a n = A352626 (n + 1)

end A352626

/-! ## A352626.P10564029226161485364

`A257589(n)-A110609(n)`
-/

namespace A352626.P10564029226161485364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257589 n - A110609 n

end

end A352626.P10564029226161485364

namespace A352626

/-- `A257589(n)-A110609(n)` -/
def P10564029226161485364.Spec : Prop :=
  ∀ n, P10564029226161485364.a n = A352626 (n + 1)

end A352626

/-! ## A352626.P3016019026444817777

`A000984(n)*A016777(n)`
-/

namespace A352626.P3016019026444817777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A016777 n

end

end A352626.P3016019026444817777

namespace A352626

/-- `A000984(n)*A016777(n)` -/
def P3016019026444817777.Spec : Prop :=
  ∀ n, P3016019026444817777.a n = A352626 (n + 1)

end A352626

/-! ## A352626.P12761636411531408780

`A097613(n+1)*A103517(n)`
-/

namespace A352626.P12761636411531408780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097613 (n + 1) * A103517 n

end

end A352626.P12761636411531408780

namespace A352626

/-- `A097613(n+1)*A103517(n)` -/
def P12761636411531408780.Spec : Prop :=
  ∀ n, P12761636411531408780.a n = A352626 (n + 1)

end A352626

/-! ## A352626.P10485012339211553423

`A100071(2*n)+A002457(n)`
-/

namespace A352626.P10485012339211553423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 (2 * n) + A002457 n

end

end A352626.P10485012339211553423

namespace A352626

/-- `A100071(2*n)+A002457(n)` -/
def P10485012339211553423.Spec : Prop :=
  ∀ n, P10485012339211553423.a n = A352626 (n + 1)

end A352626

/-! ## A352626.P5486100586617758510

`A212303(2*n)+A002457(n)`
-/

namespace A352626.P5486100586617758510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212303 (2 * n) + A002457 n

end

end A352626.P5486100586617758510

namespace A352626

/-- `A212303(2*n)+A002457(n)` -/
def P5486100586617758510.Spec : Prop :=
  ∀ n, P5486100586617758510.a n = A352626 (n + 1)

end A352626

/-! ## A352626.P17690558404359895003

`A218073(2*n)+A002457(n)`
-/

namespace A352626.P17690558404359895003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218073 (2 * n) + A002457 n

end

end A352626.P17690558404359895003

namespace A352626

/-- `A218073(2*n)+A002457(n)` -/
def P17690558404359895003.Spec : Prop :=
  ∀ n, P17690558404359895003.a n = A352626 (n + 1)

end A352626

/-!
# A352627: Number of ways to write n as a^2 + 2*b^2 + c^4 + 4*d^4 + c^2*d^2, where a,b,c,d are nonnegative integers.

The programs for A352627, there is no canonical definition to state claims against.
-/

/-! ## A352627.P17024106072225510923

`A193101(A280685(n+2))`
-/

namespace A352627.P17024106072225510923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193101 (A280685 (n + 2)).toNat

end

end A352627.P17024106072225510923

/-!
# A352628: Number of ways to write n as a^2 + 2*b^2 + c^4 + 2*d^4 + 3*c^2*d^2, where a,b,c,d are nonnegative integers.

The programs for A352628, there is no canonical definition to state claims against.
-/

/-! ## A352628.P449942661869968210

`A211100(or(n, A280027(n+1)))`
-/

namespace A352628.P449942661869968210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (Int.lor (n : ℤ) (A280027 (n + 1))).toNat

end

end A352628.P449942661869968210

/-! ## A352628.P13814304868777989064

`A263765(A266355(n))+char[A002183(n+1)]`
-/

namespace A352628.P13814304868777989064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263765 (A266355 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A352628.P13814304868777989064

/-! ## A352628.P11258515297660296505

`A010553(∑[record[A327318(n+1)]])`
-/

namespace A352628.P11258515297660296505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327318 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A352628.P11258515297660296505

/-! ## A352628.P7393732027654965070

`A327966(n)+A209229(A147307(n+2))`
-/

namespace A352628.P7393732027654965070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327966 n + A209229 (A147307 (n + 2)).toNat

end

end A352628.P7393732027654965070

/-! ## A352628.P12547762482593376951

`A001221(A007202(n)*A141574(n+1))`
-/

namespace A352628.P12547762482593376951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007202 n * A141574 (n + 1)).toNat

end

end A352628.P12547762482593376951

/-!
# A352630: First of two consecutive primes p,q such that either p+2*q and (2*p+q)/5 or (p+2*q)/5 and 2*p+q are primes.

The programs for A352630, there is no canonical definition to state claims against.
-/

/-! ## A352630.P722145175398127008

`A138234(A386136(n+1))`
-/

namespace A352630.P722145175398127008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138234 (A386136 (n + 1)).toNat

end

end A352630.P722145175398127008

/-! ## A352630.P8381132341828159961

`∩[A063639(n+1), A139054(n+1)]`
-/

namespace A352630.P8381132341828159961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352630.P8381132341828159961

/-!
# A352631: Minimum number of zeros in a binary n-digit perfect square, or -1 if there are no such numbers.

The programs for A352631, there is no canonical definition to state claims against.
-/

/-! ## A352631.P7675697985158956960

`A134446(n+1)-A329767(A000217(n))`
-/

namespace A352631.P7675697985158956960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134446 (n + 1) - A329767 (A000217 n).toNat

end

end A352631.P7675697985158956960

/-! ## A352631.P11287462459921384998

`A249905(n)-A326702(A052330(2*(n+1)))`
-/

namespace A352631.P11287462459921384998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249905 n - A326702 (A052330 (2 * (n + 1))).toNat

end

end A352631.P11287462459921384998

/-!
# A352632: Number of ways to write n as (a+b)*(a+2*b) + c^4 + 2*d^4, where a is a positive integer, and b,c,d are nonnegative integers.

The programs for A352632, there is no canonical definition to state claims against.
-/

/-! ## A352632.P12977009083962448889

`gcd(A001969(A163419(n+1)), A058978(n+1))`
-/

namespace A352632.P12977009083962448889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001969 (A163419 (n + 1)).toNat) (A058978 (n + 1))

end

end A352632.P12977009083962448889

/-! ## A352632.P9239433714638331476

`A001221(A274430(3*n+4)-4)`
-/

namespace A352632.P9239433714638331476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A274430 (3 * n + 4) - 4).toNat

end

end A352632.P9239433714638331476

/-! ## A352632.P8736832158613497500

`A361208(A097805(3*n)+A008619(n)+1)`
-/

namespace A352632.P8736832158613497500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361208 (A097805 (3 * n) + (A008619 n + 1)).toNat

end

end A352632.P8736832158613497500

/-! ## A352632.P17003313060610734470

`gcd(A105446(n+1), A220116(A328845(n+3)))`
-/

namespace A352632.P17003313060610734470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105446 (n + 1)) (A220116 (A328845 (n + 3)).toNat)

end

end A352632.P17003313060610734470

/-! ## A352632.P5653678590223180115

`A320732(or(A005187(n), A047966(n+1)))`
-/

namespace A352632.P5653678590223180115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320732 (Int.lor (A005187 n) (A047966 (n + 1))).toNat

end

end A352632.P5653678590223180115

/-!
# A352633: Lexicographically earliest sequence of distinct positive integers such for any n > 0, a(n) and a(n+1) are coprime and have no common 1-bits in their binary expansions.

The programs for A352633, there is no canonical definition to state claims against.
-/

/-! ## A352633.P13723751685334755997

`A353990(A353604(A353990(n+1)))`
-/

namespace A352633.P13723751685334755997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353990 (A353604 (A353990 (n + 1)).toNat).toNat

end

end A352633.P13723751685334755997

/-!
# A352634: Highly composite numbers that are one more than a prime number.

The programs for A352634, there is no canonical definition to state claims against.
-/

/-! ## A352634.P12837897376477879300

`A072828(n+1)+1`
-/

namespace A352634.P12837897376477879300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072828 (n + 1) + 1

end

end A352634.P12837897376477879300

/-! ## A352634.P13615949453842325660

`A002182(A306588(n+1))`
-/

namespace A352634.P13615949453842325660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (A306588 (n + 1)).toNat

end

end A352634.P13615949453842325660

/-! ## A352634.P2333776666489289344

`A002182(eq[1, A324385(n+2)]+2)`
-/

namespace A352634.P2333776666489289344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324385 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A352634.P2333776666489289344

/-! ## A352634.P2443693633504425876

`A002182(record[(n+3)/A324385(n+3)])`
-/

namespace A352634.P2443693633504425876
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A324385 (n + 3) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A352634.P2443693633504425876

/-! ## A352634.P8590847652105514077

`A135372(eq[1, A324385(n+2)]+2)-1`
-/

namespace A352634.P8590847652105514077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324385 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2) - 1

end

end A352634.P8590847652105514077

/-!
# A352635: Number of cyclic orbits of the function f(x) = x^2 + 1 on Z/nZ.

The programs for A352635, there is no canonical definition to state claims against.
-/

/-! ## A352635.P4562714427735775126

`gcd(A007732(n+1), A241413(2*n))`
-/

namespace A352635.P4562714427735775126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007732 (n + 1)) (A241413 (2 * n))

end

end A352635.P4562714427735775126

/-! ## A352635.P9750335649700530837

`gcd(A007732(n+1)², A241413(A005843(n)))`
-/

namespace A352635.P9750335649700530837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007732 (n + 1) ^ 2) (A241413 (A005843 n).toNat)

end

end A352635.P9750335649700530837

/-! ## A352635.P18376286833562637491

`A353755(A353762(n+1)^A353756(2*(n+1)))`
-/

namespace A352635.P18376286833562637491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353755 (SequenceMachineLib.roundAway ((A353762 (n + 1) : ℚ) ^ (A353756 (2 * (n + 1)) : ℤ))).toNat

end

end A352635.P18376286833562637491

/-! ## A352635.P2908653488583494251

`gcd(A001372(n), A193330(A227679(n+1)))`
-/

namespace A352635.P2908653488583494251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001372 n) (A193330 (A227679 (n + 1)).toNat)

end

end A352635.P2908653488583494251

/-! ## A352635.P4864406782049039364

`gcd(A178487(A173333(n+5)), A384052(n+1))`
-/

namespace A352635.P4864406782049039364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A178487 (A173333 (n + 5)).toNat) (A384052 (n + 1))

end

end A352635.P4864406782049039364

/-!
# A352637: The number of fishy digraphs of order n (up to isomorphy).

The programs for A352637, there is no canonical definition to state claims against.
-/

/-! ## A352637.P1950089269570028937

`∑[A216556(A190943(n))]`
-/

namespace A352637.P1950089269570028937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216556 (A190943 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352637.P1950089269570028937

/-!
# A352638: Expansion of e.g.f. 1/(1 - 3*sin(x)).

The programs for A352638, there is no canonical definition to state claims against.
-/

/-! ## A352638.P6478627838003777864

`A247784(n*4*a(n-1))` with `a(0)=1`
-/

namespace A352638.P6478627838003777864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A247784 ((n : ℤ) * (4 * a (n - 1))).toNat

end

end A352638.P6478627838003777864

/-!
# A352642: Expansion of e.g.f. exp(2 * x * cos(x)).

The programs for A352642, there is no canonical definition to state claims against.
-/

/-! ## A352642.P1215866290042768246

`A055496(n+1)-A172308(A000079(n))`
-/

namespace A352642.P1215866290042768246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055496 (n + 1) - A172308 (A000079 n).toNat

end

end A352642.P1215866290042768246

/-! ## A352642.P2599008814007071297

`A225687(A007059(3*n+1))-A074431(n+1)`
-/

namespace A352642.P2599008814007071297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A007059 (3 * n + 1)).toNat - A074431 (n + 1)

end

end A352642.P2599008814007071297

/-!
# A352644: Expansion of e.g.f. exp(2 * x * cosh(x)).

The programs for A352644, there is no canonical definition to state claims against.
-/

/-! ## A352644.P12402491612896192280

`A121895(a(n-1)²)+n+1` with `a(0)=1`
-/

namespace A352644.P12402491612896192280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A121895 (a (n - 1) ^ 2).toNat + (n + 1 : ℤ)

end

end A352644.P12402491612896192280

/-! ## A352644.P10537935928043632482

`A329395(A088305(n))+∑{p}[n+1, gcd(n, #)]`
-/

namespace A352644.P10537935928043632482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329395 (A088305 n).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ)

end

end A352644.P10537935928043632482

/-!
# A352645: Expansion of e.g.f. exp(3 * x * cosh(x)).

The programs for A352645, there is no canonical definition to state claims against.
-/

/-! ## A352645.P10229064115250276215

`A017996(n)+A008615(A156195(n))`
-/

namespace A352645.P10229064115250276215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017996 n + A008615 (A156195 n).toNat

end

end A352645.P10229064115250276215

/-! ## A352645.P4315771875435030056

`A008619(A143823(n)*A261041(n))`
-/

namespace A352645.P4315771875435030056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A143823 n * A261041 n).toNat

end

end A352645.P4315771875435030056

/-!
# A352646: Expansion of e.g.f. 1/(1 - 2 * x * cos(x)).

The programs for A352646, there is no canonical definition to state claims against.
-/

/-! ## A352646.P8095622174908772890

`A004277(n*A088313(n))`
-/

namespace A352646.P8095622174908772890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ((n : ℤ) * A088313 n).toNat

end

end A352646.P8095622174908772890

/-! ## A352646.P17090520613595616567

`A004277(n*A201197(n))`
-/

namespace A352646.P17090520613595616567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ((n : ℤ) * A201197 n).toNat

end

end A352646.P17090520613595616567

/-!
# A352647: Expansion of e.g.f. 1/(1 - 3 * x * cos(x)).

The programs for A352647, there is no canonical definition to state claims against.
-/

/-! ## A352647.P3371200191579708270

`A004728(∑[A326886(n)])`
-/

namespace A352647.P3371200191579708270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326886 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004728 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A352647.P3371200191579708270

/-!
# A352648: Expansion of e.g.f. 1/(1 - 2 * x * cosh(x)).

The programs for A352648, there is no canonical definition to state claims against.
-/

/-! ## A352648.P16887862477270359320

`A090786(A052627(n))+A052599(n)`
-/

namespace A352648.P16887862477270359320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090786 (A052627 n).toNat + A052599 n

end

end A352648.P16887862477270359320

/-! ## A352648.P14744243536636070353

`A052599(n)+A004277(n*A088313(n))%A081125(n)`
-/

namespace A352648.P14744243536636070353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052599 n + Int.tmod (A004277 ((n : ℤ) * A088313 n).toNat) (A081125 n)

end

end A352648.P14744243536636070353

/-!
# A352649: Expansion of e.g.f. 1/(1 - 3 * x * cosh(x)).

The programs for A352649, there is no canonical definition to state claims against.
-/

/-! ## A352649.P2343874575645402456

`A008585(n*a(n-1)+(n-2)*a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A352649.P2343874575645402456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A008585 ((n : ℤ) * a (n - 1) + ((n : ℤ) - 2) * a (n - 2)).toNat

end

end A352649.P2343874575645402456

/-!
# A352650: Triangle read by rows: T(n,k) = n * T(n-1,k) + (-1)^(n-k) for 0 <= k <= n with initial values T(n,k) = 0 if n < 0 or k < 0 or k > n.

The programs for A352650, there is no canonical definition to state claims against.
-/

/-! ## A352650.P16131347876422584271

`A094587(n-1)+A010054(n)*A068106(n)-a(n-1)` with `a(0)=1`
-/

namespace A352650.P16131347876422584271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094587 (n - 1) + (A010054 n * A068106 n - a (n - 1))

end

end A352650.P16131347876422584271

/-!
# A352651: a(n) = ( binomial(5*n,2*n)*binomial(5*n/2,2*n)*binomial(2*n,n)^2 ) / binomial(5*n/2,n)^2.

The programs for A352651, there is no canonical definition to state claims against.
-/

/-! ## A352651.P17088316477371315920

`A008978(n)/A275652(n)`
-/

namespace A352651.P17088316477371315920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008978 n : ℚ) / (A275652 n : ℚ)

end

end A352651.P17088316477371315920

/-! ## A352651.P15756316641000896180

`A113424(n)/A347854(n)*A262732(n)`
-/

namespace A352651.P15756316641000896180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113424 n : ℚ) / (A347854 n : ℚ) * (A262732 n : ℚ)

end

end A352651.P15756316641000896180

/-! ## A352651.P181595190923762423

`A000984(n)/A275652(n)*A001460(n)`
-/

namespace A352651.P181595190923762423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (A275652 n : ℚ) * (A001460 n : ℚ)

end

end A352651.P181595190923762423

/-! ## A352651.P10767194571857697307

`A008978(n)/(A091527(n)/A262733(n)*A352652(n))`
-/

namespace A352651.P10767194571857697307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008978 n : ℚ) / ((A091527 n : ℚ) / (A262733 n : ℚ) * (A352652 n : ℚ))

end

end A352651.P10767194571857697307

/-! ## A352651.P6445019213948181487

`A008978(n)/(A091496(n)/A276098(n)*A352652(n))`
-/

namespace A352651.P6445019213948181487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008978 n : ℚ) / ((A091496 n : ℚ) / (A276098 n : ℚ) * (A352652 n : ℚ))

end

end A352651.P6445019213948181487

/-!
# A352652: a(n) = ( binomial(7*n,2*n)*binomial(7*n/2,2*n)*binomial(2*n,n)^2 ) / binomial(7*n/2,n)^2.

The programs for A352652, there is no canonical definition to state claims against.
-/

/-! ## A352652.P13233451487238841812

`A262733(n)/A091527(n)*A275652(n)`
-/

namespace A352652.P13233451487238841812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262733 n : ℚ) / (A091527 n : ℚ) * (A275652 n : ℚ)

end

end A352652.P13233451487238841812

/-! ## A352652.P5958188855471988779

`A275652(n)/A091496(n)*A276098(n)`
-/

namespace A352652.P5958188855471988779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275652 n : ℚ) / (A091496 n : ℚ) * (A276098 n : ℚ)

end

end A352652.P5958188855471988779

/-!
# A352653: a(n) = Sum_{k = 0..n-1} binomial(n,k)*binomial(n-1,k)*binomial(n+k,k)*binomial(n-1+k,k).

The programs for A352653, there is no canonical definition to state claims against.
-/

/-! ## A352653.P820006474537305456

`floor(A177316(n)/2)`
-/

namespace A352653.P820006474537305456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A177316 n : ℚ) / 2⌋

end

end A352653.P820006474537305456

/-! ## A352653.P18217651912947652223

`-A177316(n)/2*A057428(n)`
-/

namespace A352653.P18217651912947652223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A177316 n : ℚ) / 2 * (A057428 n : ℚ))

end

end A352653.P18217651912947652223

/-! ## A352653.P3021576365117908848

`A062157(n)²/2*A177316(n)`
-/

namespace A352653.P3021576365117908848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062157 n ^ 2 : ℚ) / 2 * (A177316 n : ℚ)

end

end A352653.P3021576365117908848

/-! ## A352653.P15806723735746057912

`A177316(n)/2*A008683(A072055(n+1)-1)`
-/

namespace A352653.P15806723735746057912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177316 n : ℚ) / 2 * (A008683 (A072055 (n + 1) - 1).toNat : ℚ)

end

end A352653.P15806723735746057912

/-! ## A352653.P3285310635710965775

`A143007(A001105(n))%A000130(2*(n+1))`
-/

namespace A352653.P3285310635710965775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143007 (A001105 n).toNat) (A000130 (2 * (n + 1)))

end

end A352653.P3285310635710965775

/-!
# A352654: a(0) = 0, a(n) = [x^n] P(n-1,(1 + x)/(1 - x)) for n >= 1, where P(n,x) denotes the n-th Legendre polynomial.

The programs for A352654, there is no canonical definition to state claims against.
-/

/-! ## A352654.P4906613919417133633

`A103882(n)%A208675(n)`
-/

namespace A352654.P4906613919417133633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103882 n) (A208675 n)

end

end A352654.P4906613919417133633

/-! ## A352654.P7403644721665837410

`(2*A005258(n))%A103882(n)`
-/

namespace A352654.P7403644721665837410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A005258 n) (A103882 n)

end

end A352654.P7403644721665837410

/-! ## A352654.P13833113464150756940

`A316649(A002378(n))-A208675(n)`
-/

namespace A352654.P13833113464150756940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316649 (A002378 n).toNat - A208675 n

end

end A352654.P13833113464150756940

/-! ## A352654.P14840006248938590417

`A103881(2*n²+1)%A208675(n)`
-/

namespace A352654.P14840006248938590417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103881 (2 * n ^ 2 + 1)) (A208675 n)

end

end A352654.P14840006248938590417

/-! ## A352654.P18358920737270015886

`A331562(A141214(n)+6)%A208675(n)`
-/

namespace A352654.P18358920737270015886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331562 (A141214 n + 6).toNat) (A208675 n)

end

end A352654.P18358920737270015886

/-!
# A352655: a(n) = (1/2)*(A005258(n) + A005258(n-1)).

The programs for A352655, there is no canonical definition to state claims against.
-/

/-! ## A352655.P10344033992935347946

`A005258(n)+Δ[A005258(n)/2]`
-/

namespace A352655.P10344033992935347946
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005258 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005258 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A352655.P10344033992935347946

/-! ## A352655.P13383843818088541226

`(A005258(n+1)+A005258(n))/2`
-/

namespace A352655.P13383843818088541226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005258 (n + 1) + A005258 n : ℚ) / 2

end

end A352655.P13383843818088541226

/-! ## A352655.P15547214434778815407

`A208675(n+1)+A103882(n+1)/2`
-/

namespace A352655.P15547214434778815407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208675 (n + 1) : ℚ) + (A103882 (n + 1) : ℚ) / 2

end

end A352655.P15547214434778815407

/-!
# A352656: The number of lozenge tilings of a semiregular hexagon of side lengths n, n, 2*n, n, n and 2*n; equivalently, the number of plane partitions whose solid Young diagram fits inside an n X n X 2*n box.

The programs for A352656, there is no canonical definition to state claims against.
-/

/-! ## A352656.P18389528177547522151

`A342972(∑[4*n])`
-/

namespace A352656.P18389528177547522151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342972 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A352656.P18389528177547522151

/-! ## A352656.P10646794245975558490

`A133815(A033586(n))`
-/

namespace A352656.P10646794245975558490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133815 (A033586 n).toNat

end

end A352656.P10646794245975558490

/-! ## A352656.P1267697467365526056

`A120258(A062728(n))`
-/

namespace A352656.P1267697467365526056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120258 (A062728 n).toNat

end

end A352656.P1267697467365526056

/-!
# A352657: The number of lozenge tilings of a semiregular hexagon of side lengths n, n, 3*n, n, n and 3*n; equivalently, the number of plane partitions whose solid Young diagram fits inside an n X n X 3*n box.

The programs for A352657, there is no canonical definition to state claims against.
-/

/-! ## A352657.P14995704515378564818

`A291879(n)/A008793(n)`
-/

namespace A352657.P14995704515378564818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291879 n : ℚ) / (A008793 n : ℚ)

end

end A352657.P14995704515378564818

/-!
# A352658: a(0) = 1; a(n) = (1/n) * Sum_{k=1..n} binomial(n,k)^2 * binomial(k+1,2) * k * a(n-k).

The programs for A352658, there is no canonical definition to state claims against.
-/

/-! ## A352658.P16706719922273865830

`A118176(∑[n!²])`
-/

namespace A352658.P16706719922273865830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118176 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A352658.P16706719922273865830

/-!
# A352659: a(n) = n! * Sum_{k=0..floor(n/3)} 1 / (3*k)!.

The programs for A352659, there is no canonical definition to state claims against.
-/

/-! ## A352659.P17735992295816799712

`char[3*n]+n*a(n-1)` with `a(0)=1`
-/

namespace A352659.P17735992295816799712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + n * a (n - 1)

end

end A352659.P17735992295816799712

/-! ## A352659.P10334824068157831451

`xor(n*a(n-1), char[3*n])` with `a(0)=1`
-/

namespace A352659.P10334824068157831451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (n * a (n - 1)) (if ∃ j, f1 j = n then 1 else 0)

end

end A352659.P10334824068157831451

/-! ## A352659.P2856387585117967003

`or(n*a(n-1), char[3*n])` with `a(0)=1, a(1)=1`
-/

namespace A352659.P2856387585117967003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.lor (n * a (n - 1)) (if ∃ j, f1 j = n then 1 else 0)

end

end A352659.P2856387585117967003

/-! ## A352659.P6635197783307200375

`n*a(n-1)+1-n²%3` with `a(0)=1`
-/

namespace A352659.P6635197783307200375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) + 1 - ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A352659.P6635197783307200375

/-! ## A352659.P17845449410743705686

`a(n-1)%3-(1-n*a(n-1))` with `a(0)=1`
-/

namespace A352659.P17845449410743705686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1)) 3 - (1 - (n : ℤ) * a (n - 1))

end

end A352659.P17845449410743705686

/-!
# A352660: a(n) = n! * Sum_{k=0..floor(n/4)} 1 / (4*k)!.

The programs for A352660, there is no canonical definition to state claims against.
-/

/-! ## A352660.P17982600789308661491

`char[4*n]+n*a(n-1)` with `a(0)=1`
-/

namespace A352660.P17982600789308661491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + n * a (n - 1)

end

end A352660.P17982600789308661491

/-! ## A352660.P331988955435821420

`or(n*a(n-1), and(2, n)!)` with `a(0)=1`
-/

namespace A352660.P331988955435821420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (n * a (n - 1)) (Nat.factorial (Nat.land 2 n))

end

end A352660.P331988955435821420

/-! ## A352660.P10577725415301555953

`or(n*a(n-1), val(or(4, n), 4))` with `a(0)=1`
-/

namespace A352660.P10577725415301555953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (n * a (n - 1)) (SequenceMachineLib.valuation (Nat.lor 4 n) 4)

end

end A352660.P10577725415301555953

/-! ## A352660.P4722819415184224654

`or(n*a(n-1), char[and(n, -3)])` with `a(0)=1`
-/

namespace A352660.P4722819415184224654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (n * a (n - 1)) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A352660.P4722819415184224654

/-! ## A352660.P17134821018517638257

`or(n*a(n-1), A133872(n))` with `a(0)=1`
-/

namespace A352660.P17134821018517638257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor ((n : ℤ) * a (n - 1)) (A133872 n)

end

end A352660.P17134821018517638257

/-! ## A352660.P17895470568322787732

`n*a(n-1)-A219977(2-∑[A219977(n)])` with `a(0)=1`
-/

namespace A352660.P17895470568322787732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) - A219977 (2 - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A352660.P17895470568322787732

/-!
# A352661: Number of doubly symmetric characteristic solutions to the n-superqueens problem.

The programs for A352661, there is no canonical definition to state claims against.
-/

/-! ## A352661.P6292839996265684470

`and(-A160018(n), A326469(n))`
-/

namespace A352661.P6292839996265684470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A160018 n) (A326469 n)

end

end A352661.P6292839996265684470

/-!
# A352663: Number of asymmetric characteristic solutions to the n-superqueens problem.

The programs for A352663, there is no canonical definition to state claims against.
-/

/-! ## A352663.P9392743576010418995

`lcm(A128007(3*n+5), A189360(A338335(n+1)))`
-/

namespace A352663.P9392743576010418995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A128007 (3 * n + 5)) (A189360 (A338335 (n + 1)).toNat)

end

end A352663.P9392743576010418995

/-!
# A352665: Maximum number of induced copies of the 4-node path in an n-node graph.

The programs for A352665, there is no canonical definition to state claims against.
-/

/-! ## A352665.P7046129297041372231

`∑[∑[A006997(A053156(n+1))]]`
-/

namespace A352665.P7046129297041372231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006997 (A053156 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352665.P7046129297041372231

/-! ## A352665.P6736513368716639601

`A045904(n)%A317709(A332825(2*n+5))`
-/

namespace A352665.P6736513368716639601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045904 n) (A317709 (A332825 (2 * n + 5)).toNat)

end

end A352665.P6736513368716639601

/-!
# A352666: Maximum number of induced copies of the claw graph K_{1,3} in an n-node graph.

The programs for A352666, there is no canonical definition to state claims against.
-/

/-! ## A352666.P11355812479918477838

`A343377(A082272(n+1))+A100354(n+1)`
-/

namespace A352666.P11355812479918477838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343377 (A082272 (n + 1)).toNat + A100354 (n + 1)

end

end A352666.P11355812479918477838

/-!
# A352667: Maximum number of induced copies of the paw graph in an n-node graph.

The programs for A352667, there is no canonical definition to state claims against.
-/

/-! ## A352667.P12575357267204453355

`∑{e}[A183895(n), A294060(#)]`
-/

namespace A352667.P12575357267204453355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A294060 (Nat.factorization (f1 n).natAbs p)

end

end A352667.P12575357267204453355

/-! ## A352667.P4984317111788050065

`A294060(∏{e}[A183895(n), #])`
-/

namespace A352667.P4984317111788050065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294060 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A352667.P4984317111788050065

/-! ## A352667.P12807469937471667026

`∑[∑[A231631(A286075(n))]]`
-/

namespace A352667.P12807469937471667026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231631 (A286075 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352667.P12807469937471667026

/-! ## A352667.P13954528128682957053

`A179510(A326626(3*(n+1))+2)`
-/

namespace A352667.P13954528128682957053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179510 (A326626 (3 * (n + 1)) + 2).toNat

end

end A352667.P13954528128682957053

/-! ## A352667.P5136040590542560663

`A102800(A061255(n))-A225634(n)`
-/

namespace A352667.P5136040590542560663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102800 (A061255 n).toNat - A225634 n

end

end A352667.P5136040590542560663

/-!
# A352668: Maximum number of induced copies of the diamond graph K_{1,1,2} in an n-node graph.

The programs for A352668, there is no canonical definition to state claims against.
-/

/-! ## A352668.P9127720061454298516

`∑{d}[A071626(A068870(n)), #]`
-/

namespace A352668.P9127720061454298516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (A068870 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A352668.P9127720061454298516

/-! ## A352668.P15942599598649805547

`∑[∑[A048105(A003701(n))]]`
-/

namespace A352668.P15942599598649805547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (A003701 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352668.P15942599598649805547

/-! ## A352668.P5917920164408024201

`∑{d}[A057354(A003007(n+1)), #]`
-/

namespace A352668.P5917920164408024201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A003007 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A352668.P5917920164408024201

/-!
# A352669: Maximum number of induced cycles in an n-node graph.

The programs for A352669, there is no canonical definition to state claims against.
-/

/-! ## A352669.P14268441911057211398

`∑[∑[A163352(floor(n²/2))]]`
-/

namespace A352669.P14268441911057211398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 ⌊(n ^ 2 : ℚ) / 2⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352669.P14268441911057211398

/-! ## A352669.P18253135118328510721

`∑[A199588(n+1)+C(n, 2)]`
-/

namespace A352669.P18253135118328510721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199588 (n + 1) + (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352669.P18253135118328510721

/-! ## A352669.P793179576973924581

`A199092(n+1)+C(n+1, 3)`
-/

namespace A352669.P793179576973924581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199092 (n + 1) + (Nat.choose (n + 1) 3 : ℤ)

end

end A352669.P793179576973924581

/-! ## A352669.P12134181870701373177

`C(n+1, 3)+5*A347470(n)`
-/

namespace A352669.P12134181870701373177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 3 : ℤ) + 5 * A347470 n

end

end A352669.P12134181870701373177

/-!
# A352671: a(n) is the number of nonnegative numbers k < n such that for any base b >= 2, the sum of digits of n and k in base b are different.

The programs for A352671, there is no canonical definition to state claims against.
-/

/-! ## A352671.P11365170467471182996

`Δ[eq[0, A352740(n+1)]]`
-/

namespace A352671.P11365170467471182996
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352740 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A352671.P11365170467471182996

/-! ## A352671.P12175750808918026656

`Δ[record[n-A352740(A000027(n+1))]]`
-/

namespace A352671.P12175750808918026656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A352740 (A000027 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352671.P12175750808918026656

/-! ## A352671.P15979518023354957980

`A004438(Δ[record[n-A352740(n+1)]])`
-/

namespace A352671.P15979518023354957980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A352740 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004438 (f1 (n + 1) - f1 n).toNat

end

end A352671.P15979518023354957980

/-! ## A352671.P13203112562368971016

`Δ[lt[A352740(n+1), A355035(n+2)]]`
-/

namespace A352671.P13203112562368971016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352740 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355035 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A352671.P13203112562368971016

/-! ## A352671.P11607913398129366512

`Δ[record[A008619(2*n)-A352740(n+1)]]`
-/

namespace A352671.P11607913398129366512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A352740 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352671.P11607913398129366512

/-!
# A352672: Decimal expansion of r = (3/2)*(1+sqrt(3)).

The programs for A352672, there is no canonical definition to state claims against.
-/

/-! ## A352672.P16100862430363629302

`A176325(n)-A000007(n)`
-/

namespace A352672.P16100862430363629302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176325 (n + 1) - A000007 n

end

end A352672.P16100862430363629302

/-! ## A352672.P6587243291210266802

`A176325(n)-char[A151935(2*(n+1))]`
-/

namespace A352672.P6587243291210266802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151935 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176325 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A352672.P6587243291210266802

/-! ## A352672.P13447020181307296715

`A176325(n)-A010054(A010054(n)+n)`
-/

namespace A352672.P13447020181307296715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176325 (n + 1) - A010054 (A010054 n + (n : ℤ)).toNat

end

end A352672.P13447020181307296715

/-! ## A352672.P7893174102133245973

`A176325(n)+A159075(n+1)`
-/

namespace A352672.P7893174102133245973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176325 (n + 1) + A159075 (n + 1)

end

end A352672.P7893174102133245973

/-! ## A352672.P11616005620154552607

`A176325(n)-A010054(A267584(n))`
-/

namespace A352672.P11616005620154552607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176325 (n + 1) - A010054 (A267584 n).toNat

end

end A352672.P11616005620154552607

/-! ## A352672.P8526955709162093376

`A176325(n)-A000081(A151933(n))`
-/

namespace A352672.P8526955709162093376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176325 (n + 1) - A000081 (A151933 n).toNat

end

end A352672.P8526955709162093376

/-! ## A352672.P18273384945701497496

`A176325(n)-A010054(2*n²)`
-/

namespace A352672.P18273384945701497496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176325 (n + 1) - A010054 (2 * n ^ 2)

end

end A352672.P18273384945701497496

/-!
# A352674: Beatty sequence for (3/2)(1+sqrt(3)).

The programs for A352674, the canonical program `A352674.P5792306971600369677` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352674 has offset 1).

The definition of A352674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352674.P5792306971600369677

`floor(3*(n+1)/(sqrt(3)-1))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A352674

/-- `floor(3*(n+1)/(sqrt(3)-1))` -/
def P5792306971600369677.Spec : Prop :=
  ∀ n, P5792306971600369677.a n = A352674 (n + 1)

theorem P5792306971600369677.correct : P5792306971600369677.Spec := by
  intro n
  simp only [A352674, Nat.add_sub_cancel]

end A352674

/-! ## A352674.P18224803610327144115

`A003511(3*(n+1))`
-/

namespace A352674.P18224803610327144115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (3 * (n + 1))

end

end A352674.P18224803610327144115

namespace A352674

/-- `A003511(3*(n+1))` -/
def P18224803610327144115.Spec : Prop :=
  ∀ n, P18224803610327144115.a n = A352674 (n + 1)

end A352674

/-! ## A352674.P18293090034688803507

`A188070(3*(n+1))-1`
-/

namespace A352674.P18293090034688803507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188070 (3 * (n + 1)) - 1

end

end A352674.P18293090034688803507

namespace A352674

/-- `A188070(3*(n+1))-1` -/
def P18293090034688803507.Spec : Prop :=
  ∀ n, P18293090034688803507.a n = A352674 (n + 1)

end A352674

/-! ## A352674.P13134864204088099578

`ceil(A180122(3*(n+1))/2)`
-/

namespace A352674.P13134864204088099578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A180122 (3 * (n + 1)) : ℚ) / 2⌉

end

end A352674.P13134864204088099578

namespace A352674

/-- `ceil(A180122(3*(n+1))/2)` -/
def P13134864204088099578.Spec : Prop :=
  ∀ n, P13134864204088099578.a n = A352674 (n + 1)

end A352674

/-! ## A352674.P8292404759341756768

`A054406(3*(n+1))-3*(n+1)`
-/

namespace A352674.P8292404759341756768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (3 * (n + 1)) - (3 * (n + 1) : ℤ)

end

end A352674.P8292404759341756768

namespace A352674

/-- `A054406(3*(n+1))-3*(n+1)` -/
def P8292404759341756768.Spec : Prop :=
  ∀ n, P8292404759341756768.a n = A352674 (n + 1)

end A352674

/-! ## A352674.P8032880239330044694

`A026255(A022838(3*(n+1)))-3*(n+1)`
-/

namespace A352674.P8032880239330044694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026255 (A022838 (3 * (n + 1))).toNat - (3 * (n + 1) : ℤ)

end

end A352674.P8032880239330044694

namespace A352674

/-- `A026255(A022838(3*(n+1)))-3*(n+1)` -/
def P8032880239330044694.Spec : Prop :=
  ∀ n, P8032880239330044694.a n = A352674 (n + 1)

end A352674

/-! ## A352674.P2550039478377256491

`A065033(A180122(3*(n+1)))`
-/

namespace A352674.P2550039478377256491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A180122 (3 * (n + 1))).toNat

end

end A352674.P2550039478377256491

namespace A352674

/-- `A065033(A180122(3*(n+1)))` -/
def P2550039478377256491.Spec : Prop :=
  ∀ n, P2550039478377256491.a n = A352674 (n + 1)

end A352674

/-! ## A352674.P1666512371260876878

`A004526(A180122(3*(n+1))+1)`
-/

namespace A352674.P1666512371260876878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A180122 (3 * (n + 1)) + 1).toNat

end

end A352674.P1666512371260876878

namespace A352674

/-- `A004526(A180122(3*(n+1))+1)` -/
def P1666512371260876878.Spec : Prop :=
  ∀ n, P1666512371260876878.a n = A352674 (n + 1)

end A352674

/-! ## A352674.P9968827248613683150

`A008619(A180122(3*(n+1))-1)`
-/

namespace A352674.P9968827248613683150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A180122 (3 * (n + 1)) - 1).toNat

end

end A352674.P9968827248613683150

namespace A352674

/-- `A008619(A180122(3*(n+1))-1)` -/
def P9968827248613683150.Spec : Prop :=
  ∀ n, P9968827248613683150.a n = A352674 (n + 1)

end A352674

/-! ## A352674.P2605915290996362783

`A123108(A206905(n+1)-(n+1))`
-/

namespace A352674.P2605915290996362783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A206905 (n + 1) - (n + 1 : ℤ)).toNat

end

end A352674.P2605915290996362783

namespace A352674

/-- `A123108(A206905(n+1)-(n+1))` -/
def P2605915290996362783.Spec : Prop :=
  ∀ n, P2605915290996362783.a n = A352674 (n + 1)

end A352674

/-!
# A352675: Beatty sequence for (3/13)(4+sqrt(3)).

The programs for A352675, the canonical program `A352675.P2393058260451123132` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352675 has offset 1).

The definition of A352675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A352675.P2393058260451123132

`comp[floor(lcm(3, 3-n)/(sqrt(3)-1))]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A352675

/-- `comp[floor(lcm(3, 3-n)/(sqrt(3)-1))]` -/
def P2393058260451123132.Spec : Prop :=
  ∀ n, (P2393058260451123132.a n : ℤ) = A352675 (n + 1)

theorem P2393058260451123132.correct : P2393058260451123132.Spec := by
  intro n
  simp only [A352675, Nat.add_sub_cancel]

end A352675

/-! ## A352675.P13937483030330801950

`comp[A352674(n+1)-1]+1`
-/

namespace A352675.P13937483030330801950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352674 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A352675.P13937483030330801950

namespace A352675

/-- `comp[A352674(n+1)-1]+1` -/
def P13937483030330801950.Spec : Prop :=
  ∀ n, (P13937483030330801950.a n : ℤ) = A352675 (n + 1)

end A352675

/-! ## A352675.P3790382955037730927

`comp[A003511(3*(n+1))-1]+1`
-/

namespace A352675.P3790382955037730927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (3 * (n + 1)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A352675.P3790382955037730927

namespace A352675

/-- `comp[A003511(3*(n+1))-1]+1` -/
def P3790382955037730927.Spec : Prop :=
  ∀ n, (P3790382955037730927.a n : ℤ) = A352675 (n + 1)

end A352675

/-! ## A352675.P5791875481345383909

`A004526(xor(A022841(n+1), A365261(n)))`
-/

namespace A352675.P5791875481345383909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.xor (A022841 (n + 1)) (A365261 n)).toNat

end

end A352675.P5791875481345383909

namespace A352675

/-- `A004526(xor(A022841(n+1), A365261(n)))` -/
def P5791875481345383909.Spec : Prop :=
  ∀ n, P5791875481345383909.a n = A352675 (n + 1)

end A352675

/-! ## A352675.P1222761441989370668

`floor(A022841(n+1)/A037445(A204919(n+1)))`
-/

namespace A352675.P1222761441989370668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022841 (n + 1) : ℚ) / (A037445 (A204919 (n + 1)).toNat : ℚ)⌋

end

end A352675.P1222761441989370668

namespace A352675

/-- `floor(A022841(n+1)/A037445(A204919(n+1)))` -/
def P1222761441989370668.Spec : Prop :=
  ∀ n, P1222761441989370668.a n = A352675 (n + 1)

end A352675

/-! ## A352675.P15977604792187134973

`floor(A202306((n+1)²)/2)`
-/

namespace A352675.P15977604792187134973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A202306 ((n + 1) ^ 2) : ℚ) / 2⌋

end

end A352675.P15977604792187134973

namespace A352675

/-- `floor(A202306((n+1)²)/2)` -/
def P15977604792187134973.Spec : Prop :=
  ∀ n, P15977604792187134973.a n = A352675 (n + 1)

end A352675

/-! ## A352675.P7529691675673982000

`floor(record[A202306((1-n)²)]/2)`
-/

namespace A352675.P7529691675673982000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202306 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2⌋

end

end A352675.P7529691675673982000

namespace A352675

/-- `floor(record[A202306((1-n)²)]/2)` -/
def P7529691675673982000.Spec : Prop :=
  ∀ n, P7529691675673982000.a n = A352675 (n + 1)

end A352675

/-! ## A352675.P16676022755940877861

`A004526(A202306((n+1)²))`
-/

namespace A352675.P16676022755940877861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A202306 ((n + 1) ^ 2)).toNat

end

end A352675.P16676022755940877861

namespace A352675

/-- `A004526(A202306((n+1)²))` -/
def P16676022755940877861.Spec : Prop :=
  ∀ n, P16676022755940877861.a n = A352675 (n + 1)

end A352675

/-! ## A352675.P11564819612352987284

`A004526(record[A202306((1-n)²)])`
-/

namespace A352675.P11564819612352987284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202306 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A352675.P11564819612352987284

namespace A352675

/-- `A004526(record[A202306((1-n)²)])` -/
def P11564819612352987284.Spec : Prop :=
  ∀ n, P11564819612352987284.a n = A352675 (n + 1)

end A352675

/-! ## A352675.P4081273119900200133

`A123108(xor(1, record[A202306((1-n)²)]))`
-/

namespace A352675.P4081273119900200133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202306 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A352675.P4081273119900200133

namespace A352675

/-- `A123108(xor(1, record[A202306((1-n)²)]))` -/
def P4081273119900200133.Spec : Prop :=
  ∀ n, P4081273119900200133.a n = A352675 (n + 1)

end A352675

/-!
# A352676: Intersection of Beatty sequences for sqrt(3) and 1+sqrt(3).

The programs for A352676, there is no canonical definition to state claims against.
-/

/-! ## A352676.P5224804235146921996

`∩[floor(n*sqrt(3)), A054088(n+1)]`
-/

namespace A352676.P5224804235146921996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352676.P5224804235146921996

/-! ## A352676.P17977941738416855576

`∩[floor((sqrt(3)+1)*(n+1)), A022838(n+1)]`
-/

namespace A352676.P17977941738416855576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (3 : ℝ) + 1) * (n + 1 : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352676.P17977941738416855576

/-! ## A352676.P13524771244160237177

`∩[A003511(2*(n+1)), floor((n+1)*sqrt(3))]`
-/

namespace A352676.P13524771244160237177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352676.P13524771244160237177

/-! ## A352676.P5977252481776865177

`∩[A054088(n+1), A198081(n)-1]`
-/

namespace A352676.P5977252481776865177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352676.P5977252481776865177

/-! ## A352676.P8298459894516974990

`∩[A054088(n+1), Δ[A194106(n+1)]]`
-/

namespace A352676.P8298459894516974990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054088 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352676.P8298459894516974990

/-! ## A352676.P4350062111734988515

`∩[A022838(n+1), A180122(n+1)+1]`
-/

namespace A352676.P4350062111734988515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180122 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352676.P4350062111734988515

/-! ## A352676.P14282209490070259216

`∩[A022838(n+1), A198081(n+1)+n]`
-/

namespace A352676.P14282209490070259216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352676.P14282209490070259216

/-! ## A352676.P10403105338989840271

`∩[A054088(n+1), A180122(n+1)-n]`
-/

namespace A352676.P10403105338989840271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180122 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352676.P10403105338989840271

/-! ## A352676.P9384422600254770349

`A026255(∩[A003512(n+1), A198081(n)])`
-/

namespace A352676.P9384422600254770349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026255 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A352676.P9384422600254770349

/-!
# A352677: Binary expansion of largest number whose expansions in base 2 and in base phi = (1+sqrt(5))/2 are identical.

The programs for A352677, there is no canonical definition to state claims against.
-/

/-! ## A352677.P16893872445697365514

`A047999(A062383(n)+A052331(n+1))`
-/

namespace A352677.P16893872445697365514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (A062383 n + A052331 (n + 1)).toNat

end

end A352677.P16893872445697365514

/-! ## A352677.P14863268046330107924

`A088517(A035451(n)%A106429(n+1))`
-/

namespace A352677.P14863268046330107924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088517 (Int.tmod (A035451 n) (A106429 (n + 1))).toNat

end

end A352677.P14863268046330107924

/-! ## A352677.P2031541768442456869

`A127243(A316402(2*n+3)%A240542(3*n+2))`
-/

namespace A352677.P2031541768442456869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127243 (Int.tmod (A316402 (2 * n + 3)) (A240542 (3 * n + 2))).toNat

end

end A352677.P2031541768442456869

/-! ## A352677.P6262895118918874258

`A010052(A331548(3*n)%A034943(n))`
-/

namespace A352677.P6262895118918874258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (Int.tmod (A331548 (3 * n)) (A034943 n)).toNat

end

end A352677.P6262895118918874258

/-! ## A352677.P15996413231052189233

`A000161(A008706(n)+Δ[A006206(n+1)])`
-/

namespace A352677.P15996413231052189233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A008706 n + (f1 (n + 1) - f1 n)).toNat

end

end A352677.P15996413231052189233

/-!
# A352678: Expansion of sqrt(2) in base phi where phi = (1+sqrt(5))/2.

The programs for A352678, there is no canonical definition to state claims against.
-/

/-! ## A352678.P8375172254265145643

`A073424(A336345(n)+A106619(n))`
-/

namespace A352678.P8375172254265145643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A336345 n + A106619 n).toNat

end

end A352678.P8375172254265145643

/-! ## A352678.P17129501865978822675

`A037844(A089840(3*n+1))^A037844(3*n+2)`
-/

namespace A352678.P17129501865978822675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037844 (A089840 (3 * n + 1)).toNat : ℚ) ^ (A037844 (3 * n + 2) : ℤ)

end

end A352678.P17129501865978822675

/-! ## A352678.P11102650970482901745

`A291442(n+3)%A380561(A096276(n+4))`
-/

namespace A352678.P11102650970482901745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291442 (n + 3)) (A380561 (A096276 (n + 4)).toNat)

end

end A352678.P11102650970482901745

/-! ## A352678.P16765196969725031822

`A068432(xor((2*n+3)², A341674(3*n+4)))`
-/

namespace A352678.P16765196969725031822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068432 (Int.xor ((2 * n + 3) ^ 2 : ℤ) (A341674 (3 * n + 4))).toNat

end

end A352678.P16765196969725031822

/-! ## A352678.P18263038088068923601

`and(A187950(n+1), A227530(A129756(n)))`
-/

namespace A352678.P18263038088068923601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A187950 (n + 1)) (A227530 (A129756 n).toNat)

end

end A352678.P18263038088068923601

/-!
# A352679: Expansion of sqrt(3) in base phi where phi = (1+sqrt(5))/2.

The programs for A352679, there is no canonical definition to state claims against.
-/

/-! ## A352679.P8514624539628437998

`A035444(A352826(2*n+1)%A082991(2*n+1))`
-/

namespace A352679.P8514624539628437998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (Int.tmod (A352826 (2 * n + 1)) (A082991 (2 * n + 1))).toNat

end

end A352679.P8514624539628437998

/-! ## A352679.P13255142896113761055

`and(A248571(A301303(3*(n+1))), A274225(n+1))`
-/

namespace A352679.P13255142896113761055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A248571 (A301303 (3 * (n + 1))).toNat) (A274225 (n + 1))

end

end A352679.P13255142896113761055

/-! ## A352679.P5756162368073124925

`and(A010060(A375125(n+2)), A088745(n+1))`
-/

namespace A352679.P5756162368073124925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010060 (A375125 (n + 2)).toNat) (A088745 (n + 1))

end

end A352679.P5756162368073124925

/-! ## A352679.P17891130382176764997

`A079978(lcm(16, A252751(n)))`
-/

namespace A352679.P17891130382176764997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (Int.lcm 16 (A252751 n))

end

end A352679.P17891130382176764997

/-! ## A352679.P8659960599312547747

`A279733(A311407(n+1))`
-/

namespace A352679.P8659960599312547747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279733 (A311407 (n + 1)).toNat

end

end A352679.P8659960599312547747

/-!
# A352680: Array read by ascending antidiagonals. A family of Catalan-like sequences. A(n, k) = [x^k] ((n - 1)*x + 1)*(1 - sqrt(1 - 4*x))/(2*x).

The programs for A352680, there is no canonical definition to state claims against.
-/

/-! ## A352680.P11036183662984532476

`gcd(A214776(n), A248333(A209757(n+1)))`
-/

namespace A352680.P11036183662984532476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A214776 n) (A248333 (A209757 (n + 1)).toNat)

end

end A352680.P11036183662984532476

/-! ## A352680.P11708318378473490145

`A159798(n+1)-A025441(A118406(n))`
-/

namespace A352680.P11708318378473490145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159798 (n + 1) - A025441 (A118406 n).toNat

end

end A352680.P11708318378473490145

/-!
# A352681: a(n) = [x^n] (3*x + 1)*(1 - sqrt(1 - 4*x))/(2*x).

The programs for A352681, the canonical program `A352681.P7199430868513506540` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352681 has offset 0).

The definition of A352681 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A352681.P7199430868513506540

`a(n-1)*(14*n+2)*(2*n-3)/((7*n-6)*(n+1))` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A352681

/-- `a(n-1)*(14*n+2)*(2*n-3)/((7*n-6)*(n+1))` -/
def P7199430868513506540.Spec : Prop :=
  ∀ n, P7199430868513506540.a n = (A352681 n : ℚ)

end A352681

/-! ## A352681.P4978939231788254795

`record[A126324(n)+A126120(n+1)]`
-/

namespace A352681.P4978939231788254795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126324 n + A126120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352681.P4978939231788254795

namespace A352681

/-- `record[A126324(n)+A126120(n+1)]` -/
def P4978939231788254795.Spec : Prop :=
  ∀ n, P4978939231788254795.a n = A352681 n

end A352681

/-! ## A352681.P11095962298725855887

`record[A126324(n)+A097331(n+2)]`
-/

namespace A352681.P11095962298725855887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126324 n + A097331 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352681.P11095962298725855887

namespace A352681

/-- `record[A126324(n)+A097331(n+2)]` -/
def P11095962298725855887.Spec : Prop :=
  ∀ n, P11095962298725855887.a n = A352681 n

end A352681

/-! ## A352681.P16574366535684657077

`abs(A168491(n))+3*A000108((n-1)%a(n-1))` with `a(0)=1`
-/

namespace A352681.P16574366535684657077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A168491 n| + 3 * A000108 (Int.tmod ((n : ℤ) - 1) (a (n - 1))).toNat

end

end A352681.P16574366535684657077

namespace A352681

/-- `abs(A168491(n))+3*A000108((n-1)%a(n-1))` -/
def P16574366535684657077.Spec : Prop :=
  ∀ n, P16574366535684657077.a n = A352681 n

end A352681

/-! ## A352681.P11830056788101669767

`(4*n+1)*A120588(n)-A001791(n)`
-/

namespace A352681.P11830056788101669767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A120588 n - A001791 n

end

end A352681.P11830056788101669767

namespace A352681

/-- `(4*n+1)*A120588(n)-A001791(n)` -/
def P11830056788101669767.Spec : Prop :=
  ∀ n, P11830056788101669767.a n = A352681 n

end A352681

/-! ## A352681.P12516362733489042598

`A050477(n)/A111284(n+1)`
-/

namespace A352681.P12516362733489042598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050477 n : ℚ) / (A111284 (n + 1) : ℚ)

end

end A352681.P12516362733489042598

namespace A352681

/-- `A050477(n)/A111284(n+1)` -/
def P12516362733489042598.Spec : Prop :=
  ∀ n, P12516362733489042598.a n = (A352681 n : ℚ)

end A352681

/-!
# A352683: a(n) = A352682(4, n).

The programs for A352683, there is no canonical definition to state claims against.
-/

/-! ## A352683.P234013634984618252

`2*A038561(n)-A032347(n)`
-/

namespace A352683.P234013634984618252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038561 n - A032347 n

end

end A352683.P234013634984618252

/-! ## A352683.P13404116409907773264

`2*A038559(n)-A038561(n)`
-/

namespace A352683.P13404116409907773264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038559 n - A038561 n

end

end A352683.P13404116409907773264

/-! ## A352683.P5856385675554946363

`A046936(A000217(n))+A038559(n)`
-/

namespace A352683.P5856385675554946363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046936 (A000217 n).toNat + A038559 n

end

end A352683.P5856385675554946363

/-! ## A352683.P8921180302790748421

`A000110(n)+A038559(n)-A032347(n)`
-/

namespace A352683.P8921180302790748421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n + (A038559 n - A032347 n)

end

end A352683.P8921180302790748421

/-! ## A352683.P17236710216699824629

`A038559(n)+A038561(n)-A000110(n)`
-/

namespace A352683.P17236710216699824629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038559 n + (A038561 n - A000110 n)

end

end A352683.P17236710216699824629

/-!
# A352684: a(n) = A352682(n, n).

The programs for A352684, there is no canonical definition to state claims against.
-/

/-! ## A352684.P3305867923290427705

`A352686(∑[n]+n)`
-/

namespace A352684.P3305867923290427705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352686 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A352684.P3305867923290427705

/-! ## A352684.P5260169063945299528

`A352686(A000096(n))+char[23]`
-/

namespace A352684.P5260169063945299528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352686 (A000096 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A352684.P5260169063945299528

/-! ## A352684.P14825409526088545356

`A278657(n)*A352686(A000096(n))`
-/

namespace A352684.P14825409526088545356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 n * A352686 (A000096 n).toNat

end

end A352684.P14825409526088545356

/-! ## A352684.P415617587787534769

`A352686(A000096(n))%A030514(n+1)`
-/

namespace A352684.P415617587787534769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352686 (A000096 n).toNat) (A030514 (n + 1))

end

end A352684.P415617587787534769

/-! ## A352684.P1025975765216995756

`gcd(A051516(n+1), A352686(A000096(n)))`
-/

namespace A352684.P1025975765216995756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051516 (n + 1)) (A352686 (A000096 n).toNat)

end

end A352684.P1025975765216995756

/-!
# A352685: Array of Aitken-Bell triangles of order m (read by rows) read by ascending antidiagonals.

The programs for A352685, there is no canonical definition to state claims against.
-/

/-! ## A352685.P7154866964910467922

`A193592(n)-A058348(A098825(n))`
-/

namespace A352685.P7154866964910467922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n - A058348 (A098825 n).toNat

end

end A352685.P7154866964910467922

/-! ## A352685.P15740432420300450010

`A193592(n)-A010051(A249027(n+1))`
-/

namespace A352685.P15740432420300450010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n - A010051 (A249027 (n + 1)).toNat

end

end A352685.P15740432420300450010

/-! ## A352685.P13972283098104025183

`A193592(n)-A010893(A266493(n+1))`
-/

namespace A352685.P13972283098104025183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n - A010893 ((A266493 (n + 1)).toNat + 13)

end

end A352685.P13972283098104025183

/-! ## A352685.P3216783579675642967

`A193592(n)-A010893(A266854(n+1))`
-/

namespace A352685.P3216783579675642967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n - A010893 ((A266854 (n + 1)).toNat + 13)

end

end A352685.P3216783579675642967

/-! ## A352685.P13825995675535026094

`A193592(n)-A015161(A266632(n+1))`
-/

namespace A352685.P13825995675535026094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n - A015161 (A266632 (n + 1)).toNat

end

end A352685.P13825995675535026094

/-!
# A352686: Triangle read by rows. T(n, k) = (n-1)*Gould(k-1) + Bell(k) for n >= 0 and k >= 1, T(n, 0) = 1.

The programs for A352686, there is no canonical definition to state claims against.
-/

/-! ## A352686.P12415424018736407487

`A352682(A245300(n))`
-/

namespace A352686.P12415424018736407487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352682 (A245300 n).toNat

end

end A352686.P12415424018736407487

/-!
# A352687: Triangle read by rows, a Narayana related triangle whose rows are refinements of twice the Catalan numbers (for n >= 2).

The programs for A352687, there is no canonical definition to state claims against.
-/

/-! ## A352687.P5136758249412111763

`A064515(A085852(n)+1)`
-/

namespace A352687.P5136758249412111763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064515 (A085852 n + 1).toNat

end

end A352687.P5136758249412111763

/-! ## A352687.P12960450008412573403

`A064515(A123125(n)+1)`
-/

namespace A352687.P12960450008412573403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064515 (A123125 n + 1).toNat

end

end A352687.P12960450008412573403

/-! ## A352687.P12521560730878965127

`A172263(A262495(n)+A123125(n))`
-/

namespace A352687.P12521560730878965127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A262495 n + A123125 n).toNat

end

end A352687.P12521560730878965127

/-! ## A352687.P5502630574343917666

`A048766(A048993(n)*A285824(n))`
-/

namespace A352687.P5502630574343917666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A048993 n * A285824 n).toNat

end

end A352687.P5502630574343917666

/-! ## A352687.P17193036455355146004

`A048766(A151511(n)*A285824(n))`
-/

namespace A352687.P17193036455355146004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A151511 n * A285824 n).toNat

end

end A352687.P17193036455355146004

/-!
# A352688: a(n) is the least term of the first run of A331786(n) consecutive numbers whose sum of digits (A007953) is not divisible by n.

The programs for A352688, there is no canonical definition to state claims against.
-/

/-! ## A352688.P2282011063628564512

`A352689(n+2)+1-A331786(n+2)`
-/

namespace A352688.P2282011063628564512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352689 (n + 2) + 1 - A331786 (n + 2)

end

end A352688.P2282011063628564512

/-!
# A352690: Index of 2^n-1 in A353709.

The programs for A352690, there is no canonical definition to state claims against.
-/

/-! ## A352690.P17612595560636873505

`A353717(2^n-1)`
-/

namespace A352690.P17612595560636873505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353717 (2 ^ n - 1)

end

end A352690.P17612595560636873505

/-! ## A352690.P5690785203574554612

`record[A353717(A173787(n))]`
-/

namespace A352690.P5690785203574554612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353717 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352690.P5690785203574554612

/-! ## A352690.P6117416468918442328

`record[A353717(A243071(n+1))]`
-/

namespace A352690.P6117416468918442328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353717 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352690.P6117416468918442328

/-! ## A352690.P15601158782618556276

`A353717(A255047(n))%(4^n)`
-/

namespace A352690.P15601158782618556276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353717 (A255047 n).toNat) (4 ^ n : ℤ)

end

end A352690.P15601158782618556276

/-! ## A352690.P6212368240367971876

`lcm((-1)^n, A353717(A000225(n)))`
-/

namespace A352690.P6212368240367971876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A353717 (A000225 n).toNat)

end

end A352690.P6212368240367971876

/-!
# A352691: Product_{n>=1} 1 / (1 - x^n)^(a(n)/n!) = 1 + log(1 + x).

The programs for A352691, there is no canonical definition to state claims against.
-/

/-! ## A352691.P7909142318604267603

`A348205(n+1)%A134104(A002822(n+1))`
-/

namespace A352691.P7909142318604267603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348205 (n + 1)) (A134104 (A002822 (n + 1)).toNat)

end

end A352691.P7909142318604267603

/-!
# A352692: a(n) + a(n+1) = 2^n for n >= 0 with a(0) = 4.

The programs for A352692, the canonical program `A352692.P8551391395470935622` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352692 has offset 0).

The definition of A352692 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A352692.P2589809173958003749

`2^(n-1)-a(n-1)` with `a(0)=4`
-/

namespace A352692.P2589809173958003749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A352692.P2589809173958003749

namespace A352692

/-- `2^(n-1)-a(n-1)` -/
def P2589809173958003749.Spec : Prop :=
  ∀ n, P2589809173958003749.a n = (A352692 n : ℚ)

end A352692

/-! ## A352692.P8551391395470935622

`A001045(n)+4*(-1)^n`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A352692

/-- `A001045(n)+4*(-1)^n` -/
def P8551391395470935622.Spec : Prop :=
  ∀ n, P8551391395470935622.a n = A352692 n

theorem P8551391395470935622.correct : P8551391395470935622.Spec := by
  intro n
  simp only [A352692]

end A352692

/-! ## A352692.P1808499661958028279

`(11*(-1)^n+2^n)/3`
-/

namespace A352692.P1808499661958028279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * (-1) ^ n + (2 ^ n : ℤ) : ℚ) / 3

end

end A352692.P1808499661958028279

namespace A352692

/-- `(11*(-1)^n+2^n)/3` -/
def P1808499661958028279.Spec : Prop :=
  ∀ n, P1808499661958028279.a n = (A352692 n : ℚ)

end A352692

/-! ## A352692.P8811938447196003734

`a(n-1)+2*a(n-2)` with `a(0)=4, a(1)=-3`
-/

namespace A352692.P8811938447196003734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, -3] fun n a =>
  a (n - 1) + 2 * a (n - 2)

end

end A352692.P8811938447196003734

namespace A352692

/-- `a(n-1)+2*a(n-2)` -/
def P8811938447196003734.Spec : Prop :=
  ∀ n, P8811938447196003734.a n = A352692 n

end A352692

/-! ## A352692.P16784772374030676997

`a(n-2)+a(n-1)+a(n-2)` with `a(0)=4, a(1)=-3`
-/

namespace A352692.P16784772374030676997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, -3] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2))

end

end A352692.P16784772374030676997

namespace A352692

/-- `a(n-2)+a(n-1)+a(n-2)` -/
def P16784772374030676997.Spec : Prop :=
  ∀ n, P16784772374030676997.a n = A352692 n

end A352692

/-! ## A352692.P11468693429392401686

`A154879(n)+A033999(n)`
-/

namespace A352692.P11468693429392401686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154879 n + A033999 n

end

end A352692.P11468693429392401686

namespace A352692

/-- `A154879(n)+A033999(n)` -/
def P11468693429392401686.Spec : Prop :=
  ∀ n, P11468693429392401686.a n = A352692 n

end A352692

/-! ## A352692.P16956165845572317327

`A174971(n)+A078008(n)`
-/

namespace A352692.P16956165845572317327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174971 n + A078008 n

end

end A352692.P16956165845572317327

namespace A352692

/-- `A174971(n)+A078008(n)` -/
def P16956165845572317327.Spec : Prop :=
  ∀ n, P16956165845572317327.a n = A352692 n

end A352692

/-! ## A352692.P9022241983407767777

`A154879(n)+A101455(2*n+1)`
-/

namespace A352692.P9022241983407767777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154879 n + A101455 (2 * n + 1)

end

end A352692.P9022241983407767777

namespace A352692

/-- `A154879(n)+A101455(2*n+1)` -/
def P9022241983407767777.Spec : Prop :=
  ∀ n, P9022241983407767777.a n = A352692 n

end A352692

/-! ## A352692.P8090955641516089854

`A078008(n)+A154879(n)-A001045(n)`
-/

namespace A352692.P8090955641516089854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n + (A154879 n - A001045 n)

end

end A352692.P8090955641516089854

namespace A352692

/-- `A078008(n)+A154879(n)-A001045(n)` -/
def P8090955641516089854.Spec : Prop :=
  ∀ n, P8090955641516089854.a n = A352692 n

end A352692

/-! ## A352692.P211053177073655728

`A140657(n)-A014113(n)`
-/

namespace A352692.P211053177073655728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140657 n - A014113 n

end

end A352692.P211053177073655728

namespace A352692

/-- `A140657(n)-A014113(n)` -/
def P211053177073655728.Spec : Prop :=
  ∀ n, P211053177073655728.a n = A352692 n

end A352692

/-! ## A352692.P9206279933049817392

`A014551(n)-A154879(n+1)`
-/

namespace A352692.P9206279933049817392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 n - A154879 (n + 1)

end

end A352692.P9206279933049817392

namespace A352692

/-- `A014551(n)-A154879(n+1)` -/
def P9206279933049817392.Spec : Prop :=
  ∀ n, P9206279933049817392.a n = A352692 n

end A352692

/-! ## A352692.P4740365939466891504

`A140657(n)-2*A001045(n)`
-/

namespace A352692.P4740365939466891504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140657 n - 2 * A001045 n

end

end A352692.P4740365939466891504

namespace A352692

/-- `A140657(n)-2*A001045(n)` -/
def P4740365939466891504.Spec : Prop :=
  ∀ n, P4740365939466891504.a n = A352692 n

end A352692

/-! ## A352692.P7941154514468562546

`A078008(n)+A171382(n)-A078008(n+1)`
-/

namespace A352692.P7941154514468562546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n + (A171382 n - A078008 (n + 1))

end

end A352692.P7941154514468562546

namespace A352692

/-- `A078008(n)+A171382(n)-A078008(n+1)` -/
def P7941154514468562546.Spec : Prop :=
  ∀ n, P7941154514468562546.a n = A352692 n

end A352692

/-! ## A352692.P16306275434226491517

`A154879(n)+A001045(n+1)/A077925(n)`
-/

namespace A352692.P16306275434226491517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154879 n : ℚ) + (A001045 (n + 1) : ℚ) / (A077925 n : ℚ)

end

end A352692.P16306275434226491517

namespace A352692

/-- `A154879(n)+A001045(n+1)/A077925(n)` -/
def P16306275434226491517.Spec : Prop :=
  ∀ n, P16306275434226491517.a n = (A352692 n : ℚ)

end A352692

/-! ## A352692.P8947298910400363181

`A154890(n+1)-(A173197(n+1)+A010684(n))`
-/

namespace A352692.P8947298910400363181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154890 (n + 1) - (A173197 (n + 1) + A010684 n)

end

end A352692.P8947298910400363181

namespace A352692

/-- `A154890(n+1)-(A173197(n+1)+A010684(n))` -/
def P8947298910400363181.Spec : Prop :=
  ∀ n, P8947298910400363181.a n = A352692 n

end A352692

/-! ## A352692.P10648610080693222650

`Δ[round(2^n/3)-gcd(2, n)²]`
-/

namespace A352692.P10648610080693222650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3) - (Nat.gcd 2 n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352692.P10648610080693222650

namespace A352692

/-- `Δ[round(2^n/3)-gcd(2, n)²]` -/
def P10648610080693222650.Spec : Prop :=
  ∀ n, P10648610080693222650.a n = A352692 n

end A352692

/-! ## A352692.P12007659623645695660

`Δ[round(2^n/3)+3*n%2]`
-/

namespace A352692.P12007659623645695660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3) + ((3 * (n % 2) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352692.P12007659623645695660

namespace A352692

/-- `Δ[round(2^n/3)+3*n%2]` -/
def P12007659623645695660.Spec : Prop :=
  ∀ n, P12007659623645695660.a n = A352692 n

end A352692

/-! ## A352692.P7393299408981667501

`A154879(n+2)-A062510(n)`
-/

namespace A352692.P7393299408981667501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154879 (n + 2) - A062510 n

end

end A352692.P7393299408981667501

namespace A352692

/-- `A154879(n+2)-A062510(n)` -/
def P7393299408981667501.Spec : Prop :=
  ∀ n, P7393299408981667501.a n = A352692 n

end A352692

/-! ## A352692.P12168359901663822752

`A154570(n+1)+A001045(n+1)`
-/

namespace A352692.P12168359901663822752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154570 (n + 1) + A001045 (n + 1)

end

end A352692.P12168359901663822752

namespace A352692

/-- `A154570(n+1)+A001045(n+1)` -/
def P12168359901663822752.Spec : Prop :=
  ∀ n, P12168359901663822752.a n = A352692 n

end A352692

/-!
# A352693: Expansion of e.g.f. 1 / (1 - Sum_{k>=1} sigma_2(k) * x^k/k!).

The programs for A352693, there is no canonical definition to state claims against.
-/

/-! ## A352693.P17330405300329718248

`or(A002202(A144009(n)), A069770(n))`
-/

namespace A352693.P17330405300329718248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002202 (A144009 n).toNat) (A069770 n)

end

end A352693.P17330405300329718248

/-! ## A352693.P12966299214170087786

`or(A002202(A144009(n)), A241743(n))`
-/

namespace A352693.P12966299214170087786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002202 (A144009 n).toNat) (A241743 n)

end

end A352693.P12966299214170087786

/-!
# A352694: Expansion of e.g.f. exp(Sum_{k>=1} sigma_2(k) * x^k/k!).

The programs for A352694, there is no canonical definition to state claims against.
-/

/-! ## A352694.P3630183718353187041

`A186114(A155698(n+3))+A074422(n+2)`
-/

namespace A352694.P3630183718353187041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (A155698 (n + 3)).toNat + A074422 (n + 2)

end

end A352694.P3630183718353187041

/-!
# A352695: Values of a map on Sturmian words.

The programs for A352695, there is no canonical definition to state claims against.
-/

/-! ## A352695.P757289088517970712

`A228898(n+1)+A010894(A028815(n))`
-/

namespace A352695.P757289088517970712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228898 (n + 1) + A010894 ((A028815 n).toNat + 21)

end

end A352695.P757289088517970712

/-! ## A352695.P16071433814525130186

`A352727(A352589(n))+A228898(n+1)`
-/

namespace A352695.P16071433814525130186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352727 (A352589 n).toNat + A228898 (n + 1)

end

end A352695.P16071433814525130186

/-! ## A352695.P15645643299380183023

`or(A059841(A019461(n)), A228898(n+1))`
-/

namespace A352695.P15645643299380183023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 (A019461 n).toNat) (A228898 (n + 1))

end

end A352695.P15645643299380183023

/-! ## A352695.P16776019530640295032

`A228898(n+1)+A010051(A368871(2*n))`
-/

namespace A352695.P16776019530640295032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228898 (n + 1) + A010051 (A368871 (2 * n)).toNat

end

end A352695.P16776019530640295032

/-! ## A352695.P10064734480854457208

`A285898(A228880(n+2))+A228898(n+1)`
-/

namespace A352695.P10064734480854457208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285898 (A228880 (n + 2)).toNat + A228898 (n + 1)

end

end A352695.P10064734480854457208

/-!
# A352696: a(n) = k if the binary representation of k has a 1 (0) exactly where a 1 in the n-th row of A237048 occurs at an odd (even) position, reading from left to right.

The programs for A352696, there is no canonical definition to state claims against.
-/

/-! ## A352696.P640769300228870290

`∏{p}[(A204217(n+1)-1)²^4, #]`
-/

namespace A352696.P640769300228870290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A204217 (n + 1) - 1) ^ 2) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A352696.P640769300228870290

/-! ## A352696.P15296721707690821355

`A020639(C(∑{d}[n+1, #], ∑[3^n]%(n+1)))`
-/

namespace A352696.P15296721707690821355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.choose (∑ d ∈ Nat.divisors (f1 n), d) ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)))

end

end A352696.P15296721707690821355

/-! ## A352696.P7288330629530248857

`A071178(2*(n+1)*∑{d}[∏{p}[n+1, #], (n+1)²/#])`
-/

namespace A352696.P7288330629530248857
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (SequenceMachineLib.roundAway (2 * ((n + 1 : ℚ) * (∑ d ∈ Nat.divisors (f1 n), ((n + 1) ^ 2 : ℚ) / (d : ℚ))))).toNat

end

end A352696.P7288330629530248857

/-! ## A352696.P16071714038374879939

`A082647(∑[A061600(n)])`
-/

namespace A352696.P16071714038374879939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082647 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A352696.P16071714038374879939

/-! ## A352696.P18280885335522217284

`A220272(3^A204217(n+1))`
-/

namespace A352696.P18280885335522217284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220272 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A204217 (n + 1) : ℤ))).toNat

end

end A352696.P18280885335522217284

/-!
# A352697: a(n) = A037237(n-1) - A281434(n).

The programs for A352697, there is no canonical definition to state claims against.
-/

/-! ## A352697.P16947487792445302624

`∑[∑[record[xor(3, n)]]-n]-A281434(n+1)`
-/

namespace A352697.P16947487792445302624
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A281434 (n + 1)

end

end A352697.P16947487792445302624

/-! ## A352697.P12687632642331641521

`A037237(n)-A281434(n+1)`
-/

namespace A352697.P12687632642331641521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037237 n - A281434 (n + 1)

end

end A352697.P12687632642331641521

/-! ## A352697.P13498048182373583946

`∑[A058331(n+1)]-A281434(n+1)`
-/

namespace A352697.P13498048182373583946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A281434 (n + 1)

end

end A352697.P13498048182373583946

/-! ## A352697.P5427977429462307517

`(Δ[A004320(n)]-∑[n])%A281434(n+1)`
-/

namespace A352697.P5427977429462307517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004320 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) (A281434 (n + 1))

end

end A352697.P5427977429462307517

/-! ## A352697.P2813846979107294831

`(A006331(n+1)+1+n)%A281434(n+1)`
-/

namespace A352697.P2813846979107294831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006331 (n + 1) + 1 + (n : ℤ)) (A281434 (n + 1))

end

end A352697.P2813846979107294831

/-!
# A352699: Highly composite numbers that cease to be highly composite if divided by their largest prime factor.

The programs for A352699, there is no canonical definition to state claims against.
-/

/-! ## A352699.P6830525948354453270

`A292354(∑[gcd(5, A287840(n+1))])`
-/

namespace A352699.P6830525948354453270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A287840 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292354 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A352699.P6830525948354453270

/-! ## A352699.P16812872122511799829

`A292354(xor(1, 3*n))`
-/

namespace A352699.P16812872122511799829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292354 (Nat.xor 1 (3 * n))

end

end A352699.P16812872122511799829

