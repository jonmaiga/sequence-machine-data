import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
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
# A372200: E.g.f. A(x) satisfies A(x) = exp( 2 * x / (1 - x * A(x)^(1/2))^2 ).

The programs for A372200, there is no canonical definition to state claims against.
-/

/-! ## A372200.P9190923605654160930

`A023807((n+1)*n^n+1)`
-/

namespace A372200.P9190923605654160930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023807 ((n + 1) * n ^ n + 1)

end

end A372200.P9190923605654160930

/-!
# A372202: E.g.f. A(x) satisfies A(x) = exp( 2 * x * (1 + x * A(x)^(1/2))^2 ).

The programs for A372202, there is no canonical definition to state claims against.
-/

/-! ## A372202.P8967576580816759087

`A060973((n+3)^n+n+1)`
-/

namespace A372202.P8967576580816759087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 ((n + 3) ^ n + (n + 1))

end

end A372202.P8967576580816759087

/-!
# A372203: E.g.f. A(x) satisfies A(x) = exp( 3 * x * (1 + x * A(x)^(1/3))^3 ).

The programs for A372203, there is no canonical definition to state claims against.
-/

/-! ## A372203.P14012761498316213370

`A300235(A363006(n))+A236770(n)`
-/

namespace A372203.P14012761498316213370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300235 (A363006 n).toNat + A236770 n

end

end A372203.P14012761498316213370

/-!
# A372205: a(n) = (-1)^n*a((n - 2^A007814(n))/2) + a(floor((2*n - 2^A007814(n))/2)) for n > 0 and a(0) = 1.

The programs for A372205, the canonical program `A372205.P8398281046845519076` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372205 has offset 0).

The definition of A372205 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*a((n-2^A007814(n))/2)+a(floor((2*n-2^A007814(n))/2))` (program `A372205.P8398281046845519076`, by `A372205.P8398281046845519076.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A372205.P8398281046845519076

`(-1)^n*a((n-2^A007814(n))/2)+a(floor((2*n-2^A007814(n))/2))` with `a(0)=1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A372205

/-- `(-1)^n*a((n-2^A007814(n))/2)+a(floor((2*n-2^A007814(n))/2))` -/
def P8398281046845519076.Spec : Prop :=
  ∀ n, P8398281046845519076.a n = A372205 n

theorem P8398281046845519076.correct : P8398281046845519076.Spec := by
  intro n
  simp only [A372205]

end A372205

/-! ## A372205.P6296659423193432013

`A037906(A281525(n+1))`
-/

namespace A372205.P6296659423193432013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037906 (A281525 (n + 1)).toNat

end

end A372205.P6296659423193432013

namespace A372205

/-- `A037906(A281525(n+1))` -/
def P6296659423193432013.Spec : Prop :=
  ∀ n, P6296659423193432013.a n = A372205 n

end A372205

/-! ## A372205.P15251689115644945845

`A001222(A186757(2*n)+ceil(xor(1, n)/6))`
-/

namespace A372205.P15251689115644945845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A186757 (2 * n) + ⌈(Nat.xor 1 n : ℚ) / 6⌉).toNat

end

end A372205.P15251689115644945845

namespace A372205

/-- `A001222(A186757(2*n)+ceil(xor(1, n)/6))` -/
def P15251689115644945845.Spec : Prop :=
  ∀ n, P15251689115644945845.a n = A372205 n

end A372205

/-! ## A372205.P7830086864140195927

`A023416(A285948(n)+A049346(2*(n+2)))`
-/

namespace A372205.P7830086864140195927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A285948 n + A049346 (2 * (n + 2))).toNat

end

end A372205.P7830086864140195927

namespace A372205

/-- `A023416(A285948(n)+A049346(2*(n+2)))` -/
def P7830086864140195927.Spec : Prop :=
  ∀ n, P7830086864140195927.a n = A372205 n

end A372205

/-! ## A372205.P16827732142466473810

`A219607(lt[A061755(n+1), A335382(3*n)])`
-/

namespace A372205.P16827732142466473810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335382 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219607 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A372205.P16827732142466473810

namespace A372205

/-- `A219607(lt[A061755(n+1), A335382(3*n)])` -/
def P16827732142466473810.Spec : Prop :=
  ∀ n, P16827732142466473810.a n = A372205 n

end A372205

/-!
# A372209: Primes p_1 where products m of k = 3 consecutive primes p_1..p_k are such that only p_1 < m^(1/k).

The programs for A372209, the canonical program `A372209.P616246694490321131` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372209 has offset 1).

The definition of A372209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372209.P11475051197490986517

`∪[A122535(n+1), A147812(n+1)]`
-/

namespace A372209.P11475051197490986517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A372209.P11475051197490986517

namespace A372209

/-- `∪[A122535(n+1), A147812(n+1)]` -/
def P11475051197490986517.Spec : Prop :=
  ∀ n, (P11475051197490986517.a n : ℤ) = A372209 (n + 1)

end A372209

/-! ## A372209.P616246694490321131

`A008578(A046868(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A372209

/-- `A008578(A046868(n+1))` -/
def P616246694490321131.Spec : Prop :=
  ∀ n, P616246694490321131.a n = A372209 (n + 1)

theorem P616246694490321131.correct : P616246694490321131.Spec := by
  intro n
  simp only [A372209, Nat.add_sub_cancel]

end A372209

/-! ## A372209.P12258760569041648326

`A000040(A333231(n+1))`
-/

namespace A372209.P12258760569041648326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A333231 (n + 1)).toNat

end

end A372209.P12258760569041648326

namespace A372209

/-- `A000040(A333231(n+1))` -/
def P12258760569041648326.Spec : Prop :=
  ∀ n, P12258760569041648326.a n = A372209 (n + 1)

end A372209

/-! ## A372209.P6699495491946006449

`A158611(A046868(n+1)+1)`
-/

namespace A372209.P6699495491946006449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A046868 (n + 1) + 1).toNat

end

end A372209.P6699495491946006449

namespace A372209

/-- `A158611(A046868(n+1)+1)` -/
def P6699495491946006449.Spec : Prop :=
  ∀ n, P6699495491946006449.a n = A372209 (n + 1)

end A372209

/-! ## A372209.P10448938393496891067

`A000040(A046868(n+1)-1)`
-/

namespace A372209.P10448938393496891067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A046868 (n + 1) - 1).toNat

end

end A372209.P10448938393496891067

namespace A372209

/-- `A000040(A046868(n+1)-1)` -/
def P10448938393496891067.Spec : Prop :=
  ∀ n, P10448938393496891067.a n = A372209 (n + 1)

end A372209

/-! ## A372209.P1644025002071924160

`A006005(A046868(n+1)-1)`
-/

namespace A372209.P1644025002071924160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A046868 (n + 1) - 1).toNat

end

end A372209.P1644025002071924160

namespace A372209

/-- `A006005(A046868(n+1)-1)` -/
def P1644025002071924160.Spec : Prop :=
  ∀ n, P1644025002071924160.a n = A372209 (n + 1)

end A372209

/-! ## A372209.P3452040136564594349

`A065091(lt[A001223(n+2), A076368(n+2)])`
-/

namespace A372209.P3452040136564594349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A372209.P3452040136564594349

namespace A372209

/-- `A065091(lt[A001223(n+2), A076368(n+2)])` -/
def P3452040136564594349.Spec : Prop :=
  ∀ n, P3452040136564594349.a n = A372209 (n + 1)

end A372209

/-! ## A372209.P14519351072723321020

`A065091(lt[A137174(n+2), A065091(n+2)])`
-/

namespace A372209.P14519351072723321020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137174 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A372209.P14519351072723321020

namespace A372209

/-- `A065091(lt[A137174(n+2), A065091(n+2)])` -/
def P14519351072723321020.Spec : Prop :=
  ∀ n, P14519351072723321020.a n = A372209 (n + 1)

end A372209

/-! ## A372209.P14470675340514386542

`A065091(lt[A162345(n+2), A076368(n+2)])`
-/

namespace A372209.P14470675340514386542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A372209.P14470675340514386542

namespace A372209

/-- `A065091(lt[A162345(n+2), A076368(n+2)])` -/
def P14470675340514386542.Spec : Prop :=
  ∀ n, P14470675340514386542.a n = A372209 (n + 1)

end A372209

/-! ## A372209.P16098410885541196070

`A064989(A046869(n+1))`
-/

namespace A372209.P16098410885541196070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A046869 (n + 1)).toNat

end

end A372209.P16098410885541196070

namespace A372209

/-- `A064989(A046869(n+1))` -/
def P16098410885541196070.Spec : Prop :=
  ∀ n, P16098410885541196070.a n = A372209 (n + 1)

end A372209

/-!
# A372210: Product of n!, n-th Pell number and n-th harmonic number.

The programs for A372210, the canonical program `A372210.P7092640518957855852` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372210 has offset 1).

The definition of A372210 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372210.P7092640518957855852

`(n+1)!*A000129(n+1)*A001008(n+1)/A002805(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A372210

/-- `(n+1)!*A000129(n+1)*A001008(n+1)/A002805(n+1)` -/
def P7092640518957855852.Spec : Prop :=
  ∀ n, P7092640518957855852.a n = (A372210 (n + 1) : ℚ)

end A372210

/-! ## A372210.P5506507804176146145

`∑[A001333(n)]*Δ[A097422(n)]`
-/

namespace A372210.P5506507804176146145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A372210.P5506507804176146145

namespace A372210

/-- `∑[A001333(n)]*Δ[A097422(n)]` -/
def P5506507804176146145.Spec : Prop :=
  ∀ n, P5506507804176146145.a n = A372210 (n + 1)

end A372210

/-! ## A372210.P31294874208651624

`∑[A001333(n)]*A000254(n+1)`
-/

namespace A372210.P31294874208651624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000254 (n + 1)

end

end A372210.P31294874208651624

namespace A372210

/-- `∑[A001333(n)]*A000254(n+1)` -/
def P31294874208651624.Spec : Prop :=
  ∀ n, P31294874208651624.a n = A372210 (n + 1)

end A372210

/-! ## A372210.P357043935917475845

`record[A054456(n)*A256589(n+1)]`
-/

namespace A372210.P357043935917475845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 n * A256589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372210.P357043935917475845

namespace A372210

/-- `record[A054456(n)*A256589(n+1)]` -/
def P357043935917475845.Spec : Prop :=
  ∀ n, P357043935917475845.a n = A372210 (n + 1)

end A372210

/-!
# A372211: a(n) = [x^n] f(x)^n, where f(x) = (1 - x^5)^5/((1 - x^2)^2 * (1 - x^3)^3).

The programs for A372211, there is no canonical definition to state claims against.
-/

/-! ## A372211.P16000462388413778981

`A321391(A349081(n+1))`
-/

namespace A372211.P16000462388413778981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321391 (A349081 (n + 1)).toNat

end

end A372211.P16000462388413778981

/-! ## A372211.P15652366767066044029

`∑{d}[n, #%#²]^A001221(A001827(n))`
-/

namespace A372211.P15652366767066044029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d % d ^ 2 : ℕ) : ℚ) ^ (A001221 (A001827 n).toNat : ℤ)

end

end A372211.P15652366767066044029

/-!
# A372216: Product of n-th Pell number and n-th Catalan number: a(n) = A000129(n)*A000108(n).

The programs for A372216, the canonical program `A372216.P15635570917463932897` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372216 has offset 1).

The definition of A372216 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(n+1)*A000108(n+1)` (program `A372216.P15635570917463932897`, by `A372216.P15635570917463932897.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A372216.P15635570917463932897

`A000129(n+1)*A000108(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A372216

/-- `A000129(n+1)*A000108(n+1)` -/
def P15635570917463932897.Spec : Prop :=
  ∀ n, P15635570917463932897.a n = A372216 (n + 1)

theorem P15635570917463932897.correct : P15635570917463932897.Spec := by
  intro n
  simp only [A372216, Nat.add_sub_cancel]

end A372216

/-! ## A372216.P9388567807317893097

`A000108(n+1)*A215928(n+1)`
-/

namespace A372216.P9388567807317893097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A215928 (n + 1)

end

end A372216.P9388567807317893097

namespace A372216

/-- `A000108(n+1)*A215928(n+1)` -/
def P9388567807317893097.Spec : Prop :=
  ∀ n, P9388567807317893097.a n = A372216 (n + 1)

end A372216

/-! ## A372216.P6792380775891680055

`Δ[A171842(n+1)]*A000108(n+1)`
-/

namespace A372216.P6792380775891680055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000108 (n + 1)

end

end A372216.P6792380775891680055

namespace A372216

/-- `Δ[A171842(n+1)]*A000108(n+1)` -/
def P6792380775891680055.Spec : Prop :=
  ∀ n, P6792380775891680055.a n = A372216 (n + 1)

end A372216

/-! ## A372216.P5185837667633696708

`A000108(n+1)/A000108(n)*A098616(n)`
-/

namespace A372216.P5185837667633696708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / (A000108 n : ℚ) * (A098616 n : ℚ)

end

end A372216.P5185837667633696708

namespace A372216

/-- `A000108(n+1)/A000108(n)*A098616(n)` -/
def P5185837667633696708.Spec : Prop :=
  ∀ n, P5185837667633696708.a n = (A372216 (n + 1) : ℚ)

end A372216

/-! ## A372216.P14419616793180401508

`(A014138(n+1)-A014138(n))*A000129(n+1)`
-/

namespace A372216.P14419616793180401508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014138 (n + 1) - A014138 n) * A000129 (n + 1)

end

end A372216.P14419616793180401508

namespace A372216

/-- `(A014138(n+1)-A014138(n))*A000129(n+1)` -/
def P14419616793180401508.Spec : Prop :=
  ∀ n, P14419616793180401508.a n = A372216 (n + 1)

end A372216

/-!
# A372218: a(n) is the number of ways to select three distinct points of an n X n grid forming a triangle whose sides do not pass through a grid point.

The programs for A372218, there is no canonical definition to state claims against.
-/

/-! ## A372218.P15161938838941647963

`A215812(A194627(2*n+1))-1`
-/

namespace A372218.P15161938838941647963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215812 (A194627 (2 * n + 1)).toNat - 1

end

end A372218.P15161938838941647963

/-!
# A372225: a(n) = Fibonacci(n+1)*Fibonacci(2n).

The programs for A372225, the canonical program `A372225.P14310858455345929520` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372225 has offset 1).

The definition of A372225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372225.P3434066185731008260

`ogf((1+3x)/(1-3x-6x^2+3x^3+x^4))`
-/

namespace A372225.P3434066185731008260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -3, -6, 3, 1] n

end

end A372225.P3434066185731008260

namespace A372225

/-- `ogf((1+3x)/(1-3x-6x^2+3x^3+x^4))` -/
def P3434066185731008260.Spec : Prop :=
  ∀ n, P3434066185731008260.a n = A372225 (n + 1)

end A372225

/-! ## A372225.P4465398141435396147

`A237268(n+1)*A373566(n)`
-/

namespace A372225.P4465398141435396147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237268 (n + 1) * A373566 n

end

end A372225.P4465398141435396147

namespace A372225

/-- `A237268(n+1)*A373566(n)` -/
def P4465398141435396147.Spec : Prop :=
  ∀ n, P4465398141435396147.a n = A372225 (n + 1)

end A372225

/-! ## A372225.P14310858455345929520

`A000032(n+1)*A001654(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A372225

/-- `A000032(n+1)*A001654(n+1)` -/
def P14310858455345929520.Spec : Prop :=
  ∀ n, P14310858455345929520.a n = A372225 (n + 1)

theorem P14310858455345929520.correct : P14310858455345929520.Spec := by
  intro n
  simp only [A372225, Nat.add_sub_cancel]

end A372225

/-! ## A372225.P2050886921798758729

`A000204(n+1)*A001654(n+1)`
-/

namespace A372225.P2050886921798758729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A001654 (n + 1)

end

end A372225.P2050886921798758729

namespace A372225

/-- `A000204(n+1)*A001654(n+1)` -/
def P2050886921798758729.Spec : Prop :=
  ∀ n, P2050886921798758729.a n = A372225 (n + 1)

end A372225

/-! ## A372225.P3276143806727286518

`A000045(n+2)*A001906(n+1)`
-/

namespace A372225.P3276143806727286518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A001906 (n + 1)

end

end A372225.P3276143806727286518

namespace A372225

/-- `A000045(n+2)*A001906(n+1)` -/
def P3276143806727286518.Spec : Prop :=
  ∀ n, P3276143806727286518.a n = A372225 (n + 1)

end A372225

/-! ## A372225.P14006902924756028080

`A000045(n+2)*A088305(n+1)`
-/

namespace A372225.P14006902924756028080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A088305 (n + 1)

end

end A372225.P14006902924756028080

namespace A372225

/-- `A000045(n+2)*A088305(n+1)` -/
def P14006902924756028080.Spec : Prop :=
  ∀ n, P14006902924756028080.a n = A372225 (n + 1)

end A372225

/-! ## A372225.P2730070887915688314

`A000045(n+1)*A128534(n+2)`
-/

namespace A372225.P2730070887915688314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A128534 (n + 2)

end

end A372225.P2730070887915688314

namespace A372225

/-- `A000045(n+1)*A128534(n+2)` -/
def P2730070887915688314.Spec : Prop :=
  ∀ n, P2730070887915688314.a n = A372225 (n + 1)

end A372225

/-! ## A372225.P6403570870155287255

`A000032(n+1)*A070550(2*n)`
-/

namespace A372225.P6403570870155287255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A070550 (2 * n)

end

end A372225.P6403570870155287255

namespace A372225

/-- `A000032(n+1)*A070550(2*n)` -/
def P6403570870155287255.Spec : Prop :=
  ∀ n, P6403570870155287255.a n = A372225 (n + 1)

end A372225

/-! ## A372225.P15675713533206059728

`A001654(n+1)*A090244(2*n)`
-/

namespace A372225.P15675713533206059728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 1) * A090244 (2 * n)

end

end A372225.P15675713533206059728

namespace A372225

/-- `A001654(n+1)*A090244(2*n)` -/
def P15675713533206059728.Spec : Prop :=
  ∀ n, P15675713533206059728.a n = A372225 (n + 1)

end A372225

/-! ## A372225.P16623913693541933403

`A000045(n+2)*A052952(2*n)`
-/

namespace A372225.P16623913693541933403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A052952 (2 * n)

end

end A372225.P16623913693541933403

namespace A372225

/-- `A000045(n+2)*A052952(2*n)` -/
def P16623913693541933403.Spec : Prop :=
  ∀ n, P16623913693541933403.a n = A372225 (n + 1)

end A372225

/-! ## A372225.P15716333833173598416

`A000045(n+2)*A109794(2*n)`
-/

namespace A372225.P15716333833173598416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A109794 (2 * n)

end

end A372225.P15716333833173598416

namespace A372225

/-- `A000045(n+2)*A109794(2*n)` -/
def P15716333833173598416.Spec : Prop :=
  ∀ n, P15716333833173598416.a n = A372225 (n + 1)

end A372225

/-! ## A372225.P3324915065309063016

`A000045(n+2)*A147600(2*n)`
-/

namespace A372225.P3324915065309063016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A147600 (2 * n)

end

end A372225.P3324915065309063016

namespace A372225

/-- `A000045(n+2)*A147600(2*n)` -/
def P3324915065309063016.Spec : Prop :=
  ∀ n, P3324915065309063016.a n = A372225 (n + 1)

end A372225

/-! ## A372225.P6249361643850788693

`A000045(n+2)*A373566(2*n)`
-/

namespace A372225.P6249361643850788693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A373566 (2 * n)

end

end A372225.P6249361643850788693

namespace A372225

/-- `A000045(n+2)*A373566(2*n)` -/
def P6249361643850788693.Spec : Prop :=
  ∀ n, P6249361643850788693.a n = A372225 (n + 1)

end A372225

/-! ## A372225.P3900457975785815968

`A324969(n+3)*A373566(2*n)`
-/

namespace A372225.P3900457975785815968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 3) * A373566 (2 * n)

end

end A372225.P3900457975785815968

namespace A372225

/-- `A324969(n+3)*A373566(2*n)` -/
def P3900457975785815968.Spec : Prop :=
  ∀ n, P3900457975785815968.a n = A372225 (n + 1)

end A372225

/-! ## A372225.P16081113370675558836

`A000032(n+1)*A006498(2*n+1)`
-/

namespace A372225.P16081113370675558836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A006498 (2 * n + 1)

end

end A372225.P16081113370675558836

namespace A372225

/-- `A000032(n+1)*A006498(2*n+1)` -/
def P16081113370675558836.Spec : Prop :=
  ∀ n, P16081113370675558836.a n = A372225 (n + 1)

end A372225

/-! ## A372225.P5536190436379079584

`A000032(n+1)*A295688(2*n+1)`
-/

namespace A372225.P5536190436379079584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A295688 (2 * n + 1)

end

end A372225.P5536190436379079584

namespace A372225

/-- `A000032(n+1)*A295688(2*n+1)` -/
def P5536190436379079584.Spec : Prop :=
  ∀ n, P5536190436379079584.a n = A372225 (n + 1)

end A372225

/-! ## A372225.P17094786784191873099

`A000045(n+2)*A052959(2*n+1)`
-/

namespace A372225.P17094786784191873099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A052959 (2 * n + 1)

end

end A372225.P17094786784191873099

namespace A372225

/-- `A000045(n+2)*A052959(2*n+1)` -/
def P17094786784191873099.Spec : Prop :=
  ∀ n, P17094786784191873099.a n = A372225 (n + 1)

end A372225

/-! ## A372225.P4104644472288466458

`A000045(n+2)*A074331(2*n+1)`
-/

namespace A372225.P4104644472288466458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A074331 (2 * n + 1)

end

end A372225.P4104644472288466458

namespace A372225

/-- `A000045(n+2)*A074331(2*n+1)` -/
def P4104644472288466458.Spec : Prop :=
  ∀ n, P4104644472288466458.a n = A372225 (n + 1)

end A372225

/-! ## A372225.P10332513418660128337

`A000045(n+2)*A074662(2*n+1)`
-/

namespace A372225.P10332513418660128337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A074662 (2 * n + 1)

end

end A372225.P10332513418660128337

namespace A372225

/-- `A000045(n+2)*A074662(2*n+1)` -/
def P10332513418660128337.Spec : Prop :=
  ∀ n, P10332513418660128337.a n = A372225 (n + 1)

end A372225

/-! ## A372225.P3633303757676912520

`A000045(n+2)*A094966(2*n+1)`
-/

namespace A372225.P3633303757676912520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A094966 (2 * n + 1)

end

end A372225.P3633303757676912520

namespace A372225

/-- `A000045(n+2)*A094966(2*n+1)` -/
def P3633303757676912520.Spec : Prop :=
  ∀ n, P3633303757676912520.a n = A372225 (n + 1)

end A372225

/-!
# A372226: a(n) = Sum_{k=1..n} sigma_2( n/gcd(k,n) ).

The programs for A372226, there is no canonical definition to state claims against.
-/

/-! ## A372226.P4362447116724614321

`(n+1)*A291154(A057661(n+1))`
-/

namespace A372226.P4362447116724614321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A291154 (A057661 (n + 1)).toNat

end

end A372226.P4362447116724614321

/-!
# A372227: a(n) = Sum_{k=1..n} sigma( (n/gcd(k,n))^2 ).

The programs for A372227, there is no canonical definition to state claims against.
-/

/-! ## A372227.P8732910736177059502

`A125061(A002997(n+1)-2)+(n+1)^3`
-/

namespace A372227.P8732910736177059502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125061 (A002997 (n + 1) - 2).toNat + ((n + 1) ^ 3 : ℤ)

end

end A372227.P8732910736177059502

/-! ## A372227.P9464191323843566432

`A195825(A277929(n))+n*(or(2, (n+1)²)+n)`
-/

namespace A372227.P9464191323843566432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195825 (A277929 n).toNat + (n * (Nat.lor 2 ((n + 1) ^ 2) + n) : ℤ)

end

end A372227.P9464191323843566432

/-! ## A372227.P17426906043423025104

`A055667(A054592(n))+A000578(n+1)`
-/

namespace A372227.P17426906043423025104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055667 (A054592 n).toNat + A000578 (n + 1)

end

end A372227.P17426906043423025104

/-!
# A372228: a(n) is the largest prime factor of n^n + n.

The programs for A372228, the canonical program `A372228.P5998843933586257429` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372228 has offset 1).

The definition of A372228 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A372228.P5998843933586257429

`A006530(A066068(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A372228

/-- `A006530(A066068(n+1))` -/
def P5998843933586257429.Spec : Prop :=
  ∀ n, P5998843933586257429.a n = A372228 (n + 1)

theorem P5998843933586257429.correct : P5998843933586257429.Spec := by
  intro n
  simp only [A372228, Nat.add_sub_cancel]

end A372228

/-! ## A372228.P8758666784782889669

`A240554(A028310(2*(n+1))*A028310(n))`
-/

namespace A372228.P8758666784782889669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A028310 (2 * (n + 1)) * A028310 n).toNat

end

end A372228.P8758666784782889669

namespace A372228

/-- `A240554(A028310(2*(n+1))*A028310(n))` -/
def P8758666784782889669.Spec : Prop :=
  ∀ n, P8758666784782889669.a n = A372228 (n + 1)

end A372228

/-! ## A372228.P13916534451422882577

`A006530(∏{p}[(n+1)^n+1, #])`
-/

namespace A372228.P13916534451422882577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A372228.P13916534451422882577

namespace A372228

/-- `A006530(∏{p}[(n+1)^n+1, #])` -/
def P13916534451422882577.Spec : Prop :=
  ∀ n, P13916534451422882577.a n = A372228 (n + 1)

end A372228

/-!
# A372229: a(n) is the largest prime factor of n^n - n.

The programs for A372229, the canonical program `A372229.P6682383042965722877` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372229 has offset 2).

The definition of A372229 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A372229.P6682383042965722877

`A006530(A061190(n+2))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A372229

/-- `A006530(A061190(n+2))` -/
def P6682383042965722877.Spec : Prop :=
  ∀ n, P6682383042965722877.a n = A372229 (n + 2)

theorem P6682383042965722877.correct : P6682383042965722877.Spec := by
  intro n
  simp only [A372229, Nat.add_sub_cancel]

end A372229

/-! ## A372229.P18208970415283768889

`A006530(A060073(n+2)*A060084(n+1))`
-/

namespace A372229.P18208970415283768889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A060073 (n + 2) * A060084 (n + 1)).toNat

end

end A372229.P18208970415283768889

namespace A372229

/-- `A006530(A060073(n+2)*A060084(n+1))` -/
def P18208970415283768889.Spec : Prop :=
  ∀ n, P18208970415283768889.a n = A372229 (n + 2)

end A372229

/-! ## A372229.P5124754677134921897

`A006530(A060073(n+2)*A171527(n+1))`
-/

namespace A372229.P5124754677134921897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A060073 (n + 2) * A171527 (n + 1)).toNat

end

end A372229.P5124754677134921897

namespace A372229

/-- `A006530(A060073(n+2)*A171527(n+1))` -/
def P5124754677134921897.Spec : Prop :=
  ∀ n, P5124754677134921897.a n = A372229 (n + 2)

end A372229

/-!
# A372230: Triangular array read by rows. T(n,k) is the number of size k circuits in the linear matroid M[A] where A is the n X 2^n-1 matrix whose columns are the nonzero vectors in GF(2)^n, n>=2, 3<=k<=n+1.

The programs for A372230, there is no canonical definition to state claims against.
-/

/-! ## A372230.P6116498564269866283

`A214467(A280451(n)*A303800(n+1))`
-/

namespace A372230.P6116498564269866283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214467 (A280451 n * A303800 (n + 1)).toNat

end

end A372230.P6116498564269866283

/-!
# A372231: Fixed points of A372341.

The programs for A372231, the canonical program `A372231.P16292004406067968796` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372231 has offset 1).

The definition of A372231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372231.P16292004406067968796

`A000217(n+1)-A005206(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A372231

/-- `A000217(n+1)-A005206(n)` -/
def P16292004406067968796.Spec : Prop :=
  ∀ n, P16292004406067968796.a n = A372231 (n + 1)

theorem P16292004406067968796.correct : P16292004406067968796.Spec := by
  intro n
  simp only [A372231, Nat.add_sub_cancel]

end A372231

/-! ## A372231.P6793812321435434655

`ceil(∑[2-ϕ+n])`
-/

namespace A372231.P6793812321435434655
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 - Real.goldenRatio + (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A372231.P6793812321435434655

namespace A372231

/-- `ceil(∑[2-ϕ+n])` -/
def P6793812321435434655.Spec : Prop :=
  ∀ n, P6793812321435434655.a n = A372231 (n + 1)

end A372231

/-! ## A372231.P14883678385392823260

`C(n+2, 2)-floor((n+1)/ϕ)`
-/

namespace A372231.P14883678385392823260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) - ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

end

end A372231.P14883678385392823260

namespace A372231

/-- `C(n+2, 2)-floor((n+1)/ϕ)` -/
def P14883678385392823260.Spec : Prop :=
  ∀ n, P14883678385392823260.a n = A372231 (n + 1)

end A372231

/-! ## A372231.P17125429644941860210

`floor(C(n+3, 2)-ϕ*(n+1))`
-/

namespace A372231.P17125429644941860210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 3) 2 : ℝ) - Real.goldenRatio * (n + 1 : ℝ)⌋

end

end A372231.P17125429644941860210

namespace A372231

/-- `floor(C(n+3, 2)-ϕ*(n+1))` -/
def P17125429644941860210.Spec : Prop :=
  ∀ n, P17125429644941860210.a n = A372231 (n + 1)

end A372231

/-! ## A372231.P564521304945916038

`floor(∑[C(n+2, n+1)-ϕ])+1`
-/

namespace A372231.P564521304945916038
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) (n + 1) : ℝ) - Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 1

end

end A372231.P564521304945916038

namespace A372231

/-- `floor(∑[C(n+2, n+1)-ϕ])+1` -/
def P564521304945916038.Spec : Prop :=
  ∀ n, P564521304945916038.a n = A372231 (n + 1)

end A372231

/-! ## A372231.P13027874956980565928

`and(1, 2*n)-floor(∑[ϕ-(n+2)])`
-/

namespace A372231.P13027874956980565928
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - (n + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (2 * n) : ℤ) - ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A372231.P13027874956980565928

namespace A372231

/-- `and(1, 2*n)-floor(∑[ϕ-(n+2)])` -/
def P13027874956980565928.Spec : Prop :=
  ∀ n, P13027874956980565928.a n = A372231 (n + 1)

end A372231

/-! ## A372231.P10750330859264916401

`floor(∑[n+2-ϕ]+gcd(n, n+1))`
-/

namespace A372231.P10750330859264916401
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) - Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + (Nat.gcd n (n + 1) : ℝ)⌋

end

end A372231.P10750330859264916401

namespace A372231

/-- `floor(∑[n+2-ϕ]+gcd(n, n+1))` -/
def P10750330859264916401.Spec : Prop :=
  ∀ n, P10750330859264916401.a n = A372231 (n + 1)

end A372231

/-! ## A372231.P4012203443741333029

`lcm(n+1, n+2)-floor(∑[n+ϕ])`
-/

namespace A372231.P4012203443741333029
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) + Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n + 2) : ℤ) - ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A372231.P4012203443741333029

namespace A372231

/-- `lcm(n+1, n+2)-floor(∑[n+ϕ])` -/
def P4012203443741333029.Spec : Prop :=
  ∀ n, P4012203443741333029.a n = A372231 (n + 1)

end A372231

/-! ## A372231.P1875389018972931847

`∑[n+1-A096270(n)]`
-/

namespace A372231.P1875389018972931847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A096270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372231.P1875389018972931847

namespace A372231

/-- `∑[n+1-A096270(n)]` -/
def P1875389018972931847.Spec : Prop :=
  ∀ n, P1875389018972931847.a n = A372231 (n + 1)

end A372231

/-! ## A372231.P8788131774519123075

`∑[n+1]-A060143(n+1)`
-/

namespace A372231.P8788131774519123075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A060143 (n + 1)

end

end A372231.P8788131774519123075

namespace A372231

/-- `∑[n+1]-A060143(n+1)` -/
def P8788131774519123075.Spec : Prop :=
  ∀ n, P8788131774519123075.a n = A372231 (n + 1)

end A372231

/-! ## A372231.P8066310418404943780

`∑[A005206(A004956(n))]+1`
-/

namespace A372231.P8066310418404943780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A004956 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A372231.P8066310418404943780

namespace A372231

/-- `∑[A005206(A004956(n))]+1` -/
def P8066310418404943780.Spec : Prop :=
  ∀ n, P8066310418404943780.a n = A372231 (n + 1)

end A372231

/-! ## A372231.P6930123998558611319

`A249115(n+1)+A161680(n)`
-/

namespace A372231.P6930123998558611319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249115 (n + 1) + A161680 n

end

end A372231.P6930123998558611319

namespace A372231

/-- `A249115(n+1)+A161680(n)` -/
def P6930123998558611319.Spec : Prop :=
  ∀ n, P6930123998558611319.a n = A372231 (n + 1)

end A372231

/-! ## A372231.P18038861820774373507

`A055999(n)-A057843(n+1)`
-/

namespace A372231.P18038861820774373507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 n - A057843 (n + 1)

end

end A372231.P18038861820774373507

namespace A372231

/-- `A055999(n)-A057843(n+1)` -/
def P18038861820774373507.Spec : Prop :=
  ∀ n, P18038861820774373507.a n = A372231 (n + 1)

end A372231

/-! ## A372231.P10084728901269019329

`A283733(n)-A183136(n+1)`
-/

namespace A372231.P10084728901269019329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283733 n - A183136 (n + 1)

end

end A372231.P10084728901269019329

namespace A372231

/-- `A283733(n)-A183136(n+1)` -/
def P10084728901269019329.Spec : Prop :=
  ∀ n, P10084728901269019329.a n = A372231 (n + 1)

end A372231

/-! ## A372231.P2122440491646002972

`A000124(n)+n-A005206(n)`
-/

namespace A372231.P2122440491646002972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + ((n : ℤ) - A005206 n)

end

end A372231.P2122440491646002972

namespace A372231

/-- `A000124(n)+n-A005206(n)` -/
def P2122440491646002972.Spec : Prop :=
  ∀ n, P2122440491646002972.a n = A372231 (n + 1)

end A372231

/-! ## A372231.P17137304104568087835

`A152947(n+1)+A063732(n+1)`
-/

namespace A372231.P17137304104568087835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (n + 1) + A063732 (n + 1)

end

end A372231.P17137304104568087835

namespace A372231

/-- `A152947(n+1)+A063732(n+1)` -/
def P17137304104568087835.Spec : Prop :=
  ∀ n, P17137304104568087835.a n = A372231 (n + 1)

end A372231

/-! ## A372231.P17379633340892288062

`A034856(n+1)-A022342(n+1)`
-/

namespace A372231.P17379633340892288062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) - A022342 (n + 1)

end

end A372231.P17379633340892288062

namespace A372231

/-- `A034856(n+1)-A022342(n+1)` -/
def P17379633340892288062.Spec : Prop :=
  ∀ n, P17379633340892288062.a n = A372231 (n + 1)

end A372231

/-! ## A372231.P5924393043083018920

`A052905(n)+2-A001950(n+1)`
-/

namespace A372231.P5924393043083018920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n + (2 - A001950 (n + 1))

end

end A372231.P5924393043083018920

namespace A372231

/-- `A052905(n)+2-A001950(n+1)` -/
def P5924393043083018920.Spec : Prop :=
  ∀ n, P5924393043083018920.a n = A372231 (n + 1)

end A372231

/-! ## A372231.P1887594335935392389

`A000292(n+1)-(A060143(n+1)+A000292(n))`
-/

namespace A372231.P1887594335935392389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) - (A060143 (n + 1) + A000292 n)

end

end A372231.P1887594335935392389

namespace A372231

/-- `A000292(n+1)-(A060143(n+1)+A000292(n))` -/
def P1887594335935392389.Spec : Prop :=
  ∀ n, P1887594335935392389.a n = A372231 (n + 1)

end A372231

/-! ## A372231.P4973361591411556784

`∑[A189661(n+2)+n]`
-/

namespace A372231.P4973361591411556784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372231.P4973361591411556784

namespace A372231

/-- `∑[A189661(n+2)+n]` -/
def P4973361591411556784.Spec : Prop :=
  ∀ n, P4973361591411556784.a n = A372231 (n + 1)

end A372231

/-!
# A372232: E.g.f. A(x) satisfies A(x) = exp( 2 * x * A(x)^(1/2) * (1 + A(x)^(1/2)) ).

The programs for A372232, there is no canonical definition to state claims against.
-/

/-! ## A372232.P18063304236997190144

`2^n*A372177(n)`
-/

namespace A372232.P18063304236997190144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A372177 n

end

end A372232.P18063304236997190144

/-! ## A372232.P16971507742172963935

`A372177(n)*A375125(A000079(n))`
-/

namespace A372232.P16971507742172963935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372177 n * A375125 (A000079 n).toNat

end

end A372232.P16971507742172963935

/-!
# A372233: Coefficient of x^n in the expansion of 1 / ( (1-x) * (1-x-x^2) )^n.

The programs for A372233, there is no canonical definition to state claims against.
-/

/-! ## A372233.P12743179752639847475

`A014085(A385605(n))-1`
-/

namespace A372233.P12743179752639847475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A385605 n).toNat - 1

end

end A372233.P12743179752639847475

/-!
# A372234: E.g.f. A(x) satisfies A(x) = exp( 2 * x * (1 + x^2 * A(x)^(1/2)) ).

The programs for A372234, there is no canonical definition to state claims against.
-/

/-! ## A372234.P8582686999885634330

`A029923(A074021(n+1))+1`
-/

namespace A372234.P8582686999885634330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029923 (A074021 (n + 1)).toNat + 1

end

end A372234.P8582686999885634330

/-!
# A372235: E.g.f. A(x) satisfies A(x) = exp( x * (1 + A(x)^(3/2)) ).

The programs for A372235, there is no canonical definition to state claims against.
-/

/-! ## A372235.P10994828951072653663

`A218306(n)/ceil(2^(n-1))`
-/

namespace A372235.P10994828951072653663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218306 n : ℚ) / (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ)

end

end A372235.P10994828951072653663

/-! ## A372235.P5533503943829799711

`floor(A218306(n)/A011782(n))`
-/

namespace A372235.P5533503943829799711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A218306 n : ℚ) / (A011782 n : ℚ)⌋

end

end A372235.P5533503943829799711

/-!
# A372236: E.g.f. A(x) satisfies A(x) = exp( x * (1 + A(x)^(1/2)) ).

The programs for A372236, there is no canonical definition to state claims against.
-/

/-! ## A372236.P16989187448123728368

`A218300(n)/A011782(n)`
-/

namespace A372236.P16989187448123728368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218300 n : ℚ) / (A011782 n : ℚ)

end

end A372236.P16989187448123728368

/-! ## A372236.P4661559122768374345

`A218300(n)/A131577(A028310(n))`
-/

namespace A372236.P4661559122768374345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218300 n : ℚ) / (A131577 (A028310 n).toNat : ℚ)

end

end A372236.P4661559122768374345

/-! ## A372236.P4509476419920211673

`A218300(n)/A165241(A000217(n))`
-/

namespace A372236.P4509476419920211673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218300 n : ℚ) / (A165241 (A000217 n).toNat : ℚ)

end

end A372236.P4509476419920211673

/-! ## A372236.P7665481656996077952

`A218300(n)/A000010(A000079(n))`
-/

namespace A372236.P7665481656996077952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218300 n : ℚ) / (A000010 (A000079 n).toNat : ℚ)

end

end A372236.P7665481656996077952

/-! ## A372236.P5275566287209332493

`A218300(n)/A004526(A000051(n))`
-/

namespace A372236.P5275566287209332493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218300 n : ℚ) / (A004526 (A000051 n).toNat : ℚ)

end

end A372236.P5275566287209332493

/-!
# A372237: a(0) = 4; to obtain a(k), write out the base-(2^k) expansion of a(k-1), bump to base 2^(k+1), then subtract 1.

The programs for A372237, there is no canonical definition to state claims against.
-/

/-! ## A372237.P1864897844092990057

`A038699(A343177(2*n+1))-A132263(n+1)`
-/

namespace A372237.P1864897844092990057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038699 (A343177 (2 * n + 1)).toNat - A132263 (n + 1)

end

end A372237.P1864897844092990057

/-!
# A372239: Expansion of (1 + 2*x) / ((1 - 2*x)*sqrt(1 - 4*x)).

The programs for A372239, the canonical program `A372239.P17364523708032955431` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372239 has offset 0).

The definition of A372239 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028283, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A372239.P17364523708032955431

`2*a(n-1)+A028283(n)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A372239

/-- `2*a(n-1)+A028283(n)` -/
def P17364523708032955431.Spec : Prop :=
  ∀ n, P17364523708032955431.a n = A372239 n

theorem P17364523708032955431.correct : P17364523708032955431.Spec := by
  intro n
  simp only [A372239]

end A372239

/-! ## A372239.P2697612616076782911

`2*A188622(n)-A126966(n)`
-/

namespace A372239.P2697612616076782911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188622 n - A126966 n

end

end A372239.P2697612616076782911

namespace A372239

/-- `2*A188622(n)-A126966(n)` -/
def P2697612616076782911.Spec : Prop :=
  ∀ n, P2697612616076782911.a n = A372239 n

end A372239

/-! ## A372239.P4156264192753773991

`5*A000984(n)-4*A029759(n)`
-/

namespace A372239.P4156264192753773991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000984 n - 4 * A029759 n

end

end A372239.P4156264192753773991

namespace A372239

/-- `5*A000984(n)-4*A029759(n)` -/
def P4156264192753773991.Spec : Prop :=
  ∀ n, P4156264192753773991.a n = A372239 n

end A372239

/-! ## A372239.P13070776821518125688

`2*a(n-1)+2*C(2*n-2, n-1)*(3*n-1)/n` with `a(0)=1`
-/

namespace A372239.P13070776821518125688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + ((2 * Nat.choose ((2 * n : ℤ) - 2).toNat ((n : ℤ) - 1).toNat : ℤ) * ((3 * n : ℤ) - 1) : ℚ) / (n : ℚ)

end

end A372239.P13070776821518125688

namespace A372239

/-- `2*a(n-1)+2*C(2*n-2, n-1)*(3*n-1)/n` -/
def P13070776821518125688.Spec : Prop :=
  ∀ n, P13070776821518125688.a n = (A372239 n : ℚ)

end A372239

/-! ## A372239.P6952871666820587646

`2*A082590(n)-A000984(n)`
-/

namespace A372239.P6952871666820587646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082590 n - A000984 n

end

end A372239.P6952871666820587646

namespace A372239

/-- `2*A082590(n)-A000984(n)` -/
def P6952871666820587646.Spec : Prop :=
  ∀ n, P6952871666820587646.a n = A372239 n

end A372239

/-! ## A372239.P2879116357518441004

`2*A372420(n)-A082590(n)`
-/

namespace A372239.P2879116357518441004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A372420 n - A082590 n

end

end A372239.P2879116357518441004

namespace A372239

/-- `2*A372420(n)-A082590(n)` -/
def P2879116357518441004.Spec : Prop :=
  ∀ n, P2879116357518441004.a n = A372239 n

end A372239

/-! ## A372239.P17736697592749513265

`(A372611(n)+A372420(n))/2`
-/

namespace A372239.P17736697592749513265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372611 n + A372420 n : ℚ) / 2

end

end A372239.P17736697592749513265

namespace A372239

/-- `(A372611(n)+A372420(n))/2` -/
def P17736697592749513265.Spec : Prop :=
  ∀ n, P17736697592749513265.a n = (A372239 n : ℚ)

end A372239

/-! ## A372239.P4263299905210350155

`A000984(n)+A082590(n)-A126966(n)`
-/

namespace A372239.P4263299905210350155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A082590 n - A126966 n)

end

end A372239.P4263299905210350155

namespace A372239

/-- `A000984(n)+A082590(n)-A126966(n)` -/
def P4263299905210350155.Spec : Prop :=
  ∀ n, P4263299905210350155.a n = A372239 n

end A372239

/-! ## A372239.P12426780357272379048

`A000984(n)+A372420(n)-A029759(n)`
-/

namespace A372239.P12426780357272379048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A372420 n - A029759 n)

end

end A372239.P12426780357272379048

namespace A372239

/-- `A000984(n)+A372420(n)-A029759(n)` -/
def P12426780357272379048.Spec : Prop :=
  ∀ n, P12426780357272379048.a n = A372239 n

end A372239

/-! ## A372239.P7889625014477524515

`A029759(n)+A372611(n)-A000984(n)`
-/

namespace A372239.P7889625014477524515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029759 n + (A372611 n - A000984 n)

end

end A372239.P7889625014477524515

namespace A372239

/-- `A029759(n)+A372611(n)-A000984(n)` -/
def P7889625014477524515.Spec : Prop :=
  ∀ n, P7889625014477524515.a n = A372239 n

end A372239

/-! ## A372239.P8707153498199910233

`A029759(n)+A372420(n)-A126966(n)`
-/

namespace A372239.P8707153498199910233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029759 n + (A372420 n - A126966 n)

end

end A372239.P8707153498199910233

namespace A372239

/-- `A029759(n)+A372420(n)-A126966(n)` -/
def P8707153498199910233.Spec : Prop :=
  ∀ n, P8707153498199910233.a n = A372239 n

end A372239

/-! ## A372239.P16033475275898014998

`A126966(n)+A372611(n)-A029759(n)`
-/

namespace A372239.P16033475275898014998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126966 n + (A372611 n - A029759 n)

end

end A372239.P16033475275898014998

namespace A372239

/-- `A126966(n)+A372611(n)-A029759(n)` -/
def P16033475275898014998.Spec : Prop :=
  ∀ n, P16033475275898014998.a n = A372239 n

end A372239

/-! ## A372239.P9104649732588907174

`A000984(n)+A372611(n)-A188622(n)`
-/

namespace A372239.P9104649732588907174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A372611 n - A188622 n)

end

end A372239.P9104649732588907174

namespace A372239

/-- `A000984(n)+A372611(n)-A188622(n)` -/
def P9104649732588907174.Spec : Prop :=
  ∀ n, P9104649732588907174.a n = A372239 n

end A372239

/-! ## A372239.P2278914320856999293

`A188622(n)+A372611(n)-A082590(n)`
-/

namespace A372239.P2278914320856999293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188622 n + (A372611 n - A082590 n)

end

end A372239.P2278914320856999293

namespace A372239

/-- `A188622(n)+A372611(n)-A082590(n)` -/
def P2278914320856999293.Spec : Prop :=
  ∀ n, P2278914320856999293.a n = A372239 n

end A372239

/-! ## A372239.P4003833727692605174

`A372611(n)+A082590(n)-A372420(n)`
-/

namespace A372239.P4003833727692605174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372611 n + A082590 n - A372420 n

end

end A372239.P4003833727692605174

namespace A372239

/-- `A372611(n)+A082590(n)-A372420(n)` -/
def P4003833727692605174.Spec : Prop :=
  ∀ n, P4003833727692605174.a n = A372239 n

end A372239

/-! ## A372239.P381915212168034061

`A000984(n+1)-(A126966(n+1)+A000984(n))`
-/

namespace A372239.P381915212168034061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) - (A126966 (n + 1) + A000984 n)

end

end A372239.P381915212168034061

namespace A372239

/-- `A000984(n+1)-(A126966(n+1)+A000984(n))` -/
def P381915212168034061.Spec : Prop :=
  ∀ n, P381915212168034061.a n = A372239 n

end A372239

/-! ## A372239.P9751317274728726469

`A082590(n+1)-A028270(n+1)`
-/

namespace A372239.P9751317274728726469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082590 (n + 1) - A028270 (n + 1)

end

end A372239.P9751317274728726469

namespace A372239

/-- `A082590(n+1)-A028270(n+1)` -/
def P9751317274728726469.Spec : Prop :=
  ∀ n, P9751317274728726469.a n = A372239 n

end A372239

/-! ## A372239.P17420185045083053168

`A082590(n+1)-(A000984(n+1)+A000984(n))`
-/

namespace A372239.P17420185045083053168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082590 (n + 1) - (A000984 (n + 1) + A000984 n)

end

end A372239.P17420185045083053168

namespace A372239

/-- `A082590(n+1)-(A000984(n+1)+A000984(n))` -/
def P17420185045083053168.Spec : Prop :=
  ∀ n, P17420185045083053168.a n = A372239 n

end A372239

/-! ## A372239.P14804269198837016636

`A372611(n+1)-(A372420(n+1)+A000984(n))`
-/

namespace A372239.P14804269198837016636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372611 (n + 1) - (A372420 (n + 1) + A000984 n)

end

end A372239.P14804269198837016636

namespace A372239

/-- `A372611(n+1)-(A372420(n+1)+A000984(n))` -/
def P14804269198837016636.Spec : Prop :=
  ∀ n, P14804269198837016636.a n = A372239 n

end A372239

/-!
# A372240: a(n) = Product_{j=1..n} j^(floor(sqrt(j))).

The programs for A372240, there is no canonical definition to state claims against.
-/

/-! ## A372240.P17588824734941924598

`∏[n^floor(sqrt(n))]`
-/

namespace A372240.P17588824734941924598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.sqrt n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A372240.P17588824734941924598

/-! ## A372240.P5007849544725908673

`n^floor(sqrt(n))*a(n-1)` with `a(0)=1`
-/

namespace A372240.P5007849544725908673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n ^ Nat.sqrt n * a (n - 1)

end

end A372240.P5007849544725908673

/-! ## A372240.P3536336405149963077

`a(n-1)*A117926(n)` with `a(0)=1`
-/

namespace A372240.P3536336405149963077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A117926 n

end

end A372240.P3536336405149963077

/-! ## A372240.P14188731749882634660

`floor(n^A000196(n)*a(n-1))` with `a(0)=1`
-/

namespace A372240.P14188731749882634660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℚ) ^ (A000196 n : ℤ) * (a (n - 1) : ℚ)⌋

end

end A372240.P14188731749882634660

/-!
# A372241: a(n) = Product_{j=1..n} j^(ceiling(sqrt(j))).

The programs for A372241, there is no canonical definition to state claims against.
-/

/-! ## A372241.P14629889761068580130

`∏[n^ceil(sqrt(n))]`
-/

namespace A372241.P14629889761068580130
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌈Real.sqrt (n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A372241.P14629889761068580130

/-! ## A372241.P15263353809725568608

`n^ceil(sqrt(n))*a(n-1)` with `a(0)=1`
-/

namespace A372241.P15263353809725568608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) ^ (⌈Real.sqrt (n : ℝ)⌉ : ℤ) * a (n - 1)

end

end A372241.P15263353809725568608

/-!
# A372242: a(n) = 10*Fibonacci(n) + (-1)^n.

The programs for A372242, the canonical program `A372242.P5502421371705567030` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372242 has offset 0).

The definition of A372242 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372242.P5502421371705567030

`1+A153382(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A372242

/-- `1+A153382(n)` -/
def P5502421371705567030.Spec : Prop :=
  ∀ n, P5502421371705567030.a n = A372242 n

theorem P5502421371705567030.correct : P5502421371705567030.Spec := by
  intro n
  simp only [A372242]

end A372242

/-! ## A372242.P15442766663085666838

`A022093(n)+(-1)^n`
-/

namespace A372242.P15442766663085666838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 n + (-1) ^ n

end

end A372242.P15442766663085666838

namespace A372242

/-- `A022093(n)+(-1)^n` -/
def P15442766663085666838.Spec : Prop :=
  ∀ n, P15442766663085666838.a n = A372242 n

end A372242

/-! ## A372242.P6721623281738083776

`2*A371843(n)-(-1)^n`
-/

namespace A372242.P6721623281738083776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A371843 n - (-1) ^ n

end

end A372242.P6721623281738083776

namespace A372242

/-- `2*A371843(n)-(-1)^n` -/
def P6721623281738083776.Spec : Prop :=
  ∀ n, P6721623281738083776.a n = A372242 n

end A372242

/-! ## A372242.P897443957806248753

`a(n-4)+2*A280154(n-2)` with `a(0)=1, a(1)=9, a(2)=11, a(3)=19`
-/

namespace A372242.P897443957806248753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 11, 19] fun n a =>
  a (n - 4) + 2 * A280154 (n - 2)

end

end A372242.P897443957806248753

namespace A372242

/-- `a(n-4)+2*A280154(n-2)` -/
def P897443957806248753.Spec : Prop :=
  ∀ n, P897443957806248753.a n = A372242 n

end A372242

/-! ## A372242.P437692201073212381

`ogf((1+9x+9x^2)/(1-2x^2-x^3))`
-/

namespace A372242.P437692201073212381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, 9] [1, 0, -2, -1] n

end

end A372242.P437692201073212381

namespace A372242

/-- `ogf((1+9x+9x^2)/(1-2x^2-x^3))` -/
def P437692201073212381.Spec : Prop :=
  ∀ n, P437692201073212381.a n = A372242 n

end A372242

/-! ## A372242.P4725312302433487195

`A022092(n)+A008346(n)`
-/

namespace A372242.P4725312302433487195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022092 n + A008346 n

end

end A372242.P4725312302433487195

namespace A372242

/-- `A022092(n)+A008346(n)` -/
def P4725312302433487195.Spec : Prop :=
  ∀ n, P4725312302433487195.a n = A372242 n

end A372242

/-! ## A372242.P5979138594061467157

`A033999(n)+A022093(n)`
-/

namespace A372242.P5979138594061467157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A022093 n

end

end A372242.P5979138594061467157

namespace A372242

/-- `A033999(n)+A022093(n)` -/
def P5979138594061467157.Spec : Prop :=
  ∀ n, P5979138594061467157.a n = A372242 n

end A372242

/-! ## A372242.P725283896596149291

`A097133(n)+A022090(n)`
-/

namespace A372242.P725283896596149291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097133 n + A022090 n

end

end A372242.P725283896596149291

namespace A372242

/-- `A097133(n)+A022090(n)` -/
def P725283896596149291.Spec : Prop :=
  ∀ n, P725283896596149291.a n = A372242 n

end A372242

/-! ## A372242.P9961113499464226242

`A181716(n)+A022098(n)`
-/

namespace A372242.P9961113499464226242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181716 n + A022098 n

end

end A372242.P9961113499464226242

namespace A372242

/-- `A181716(n)+A022098(n)` -/
def P9961113499464226242.Spec : Prop :=
  ∀ n, P9961113499464226242.a n = A372242 n

end A372242

/-! ## A372242.P12145575080650929351

`A371843(n)+A022088(n)`
-/

namespace A372242.P12145575080650929351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371843 n + A022088 n

end

end A372242.P12145575080650929351

namespace A372242

/-- `A371843(n)+A022088(n)` -/
def P12145575080650929351.Spec : Prop :=
  ∀ n, P12145575080650929351.a n = A372242 n

end A372242

/-! ## A372242.P1636518447455542522

`A022312(n)+A181716(n)+1`
-/

namespace A372242.P1636518447455542522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022312 n + (A181716 n + 1)

end

end A372242.P1636518447455542522

namespace A372242

/-- `A022312(n)+A181716(n)+1` -/
def P1636518447455542522.Spec : Prop :=
  ∀ n, P1636518447455542522.a n = A372242 n

end A372242

/-! ## A372242.P6258530974008296772

`A022367(n)-A066983(n+1)`
-/

namespace A372242.P6258530974008296772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 n - A066983 (n + 1)

end

end A372242.P6258530974008296772

namespace A372242

/-- `A022367(n)-A066983(n+1)` -/
def P6258530974008296772.Spec : Prop :=
  ∀ n, P6258530974008296772.a n = A372242 n

end A372242

/-! ## A372242.P8617574365969997507

`A033999(n)+2*A022088(n)`
-/

namespace A372242.P8617574365969997507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + 2 * A022088 n

end

end A372242.P8617574365969997507

namespace A372242

/-- `A033999(n)+2*A022088(n)` -/
def P8617574365969997507.Spec : Prop :=
  ∀ n, P8617574365969997507.a n = A372242 n

end A372242

/-! ## A372242.P2369031024596235937

`A022323(n)+1-A066983(n+1)`
-/

namespace A372242.P2369031024596235937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022323 n + (1 - A066983 (n + 1))

end

end A372242.P2369031024596235937

namespace A372242

/-- `A022323(n)+1-A066983(n+1)` -/
def P2369031024596235937.Spec : Prop :=
  ∀ n, P2369031024596235937.a n = A372242 n

end A372242

/-! ## A372242.P6666656738648247873

`A033999(n+1)+2*A371843(n)`
-/

namespace A372242.P6666656738648247873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + 2 * A371843 n

end

end A372242.P6666656738648247873

namespace A372242

/-- `A033999(n+1)+2*A371843(n)` -/
def P6666656738648247873.Spec : Prop :=
  ∀ n, P6666656738648247873.a n = A372242 n

end A372242

/-! ## A372242.P8594175140025696595

`A022112(n)+A371843(n)-A000032(n)`
-/

namespace A372242.P8594175140025696595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n + (A371843 n - A000032 n)

end

end A372242.P8594175140025696595

namespace A372242

/-- `A022112(n)+A371843(n)-A000032(n)` -/
def P8594175140025696595.Spec : Prop :=
  ∀ n, P8594175140025696595.a n = A372242 n

end A372242

/-! ## A372242.P7421012357026954417

`A371843(n)+A371843(n)-A033999(n)`
-/

namespace A372242.P7421012357026954417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371843 n + (A371843 n - A033999 n)

end

end A372242.P7421012357026954417

namespace A372242

/-- `A371843(n)+A371843(n)-A033999(n)` -/
def P7421012357026954417.Spec : Prop :=
  ∀ n, P7421012357026954417.a n = A372242 n

end A372242

/-! ## A372242.P5070544916854001795

`A022122(n)+A097133(n)-A097135(n+1)`
-/

namespace A372242.P5070544916854001795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n + (A097133 n - A097135 (n + 1))

end

end A372242.P5070544916854001795

namespace A372242

/-- `A022122(n)+A097133(n)-A097135(n+1)` -/
def P5070544916854001795.Spec : Prop :=
  ∀ n, P5070544916854001795.a n = A372242 n

end A372242

/-! ## A372242.P1484258854849729677

`A022324(n)-A001350(n)`
-/

namespace A372242.P1484258854849729677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022324 n - A001350 n

end

end A372242.P1484258854849729677

namespace A372242

/-- `A022324(n)-A001350(n)` -/
def P1484258854849729677.Spec : Prop :=
  ∀ n, P1484258854849729677.a n = A372242 n

end A372242

/-! ## A372242.P7376405094433148217

`A022115(n)-A098600(n)`
-/

namespace A372242.P7376405094433148217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022115 n - A098600 n

end

end A372242.P7376405094433148217

namespace A372242

/-- `A022115(n)-A098600(n)` -/
def P7376405094433148217.Spec : Prop :=
  ∀ n, P7376405094433148217.a n = A372242 n

end A372242

/-!
# A372243: Number of maverick graphs on n vertices.

The programs for A372243, there is no canonical definition to state claims against.
-/

/-! ## A372243.P8771482488460353762

`A098093(A375406(n))-1`
-/

namespace A372243.P8771482488460353762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098093 (A375406 n).toNat - 1

end

end A372243.P8771482488460353762

/-! ## A372243.P2343575359910303238

`A002216(A324231(n+1))*A240079(n)`
-/

namespace A372243.P2343575359910303238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002216 (A324231 (n + 1)).toNat * A240079 n

end

end A372243.P2343575359910303238

/-! ## A372243.P18164864080203570830

`A279329(A250120(2*(n+2))+A006390(n))`
-/

namespace A372243.P18164864080203570830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 (A250120 (2 * (n + 2)) + A006390 n).toNat

end

end A372243.P18164864080203570830

/-!
# A372246: E.g.f. A(x) satisfies A(x) = exp( x * A(x) * (1 + A(x)^(1/2)) ).

The programs for A372246, there is no canonical definition to state claims against.
-/

/-! ## A372246.P559822924801372478

`A258872(n)+A174615(∑[abs(1-n)!]-1)`
-/

namespace A372246.P559822924801372478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258872 n + A174615 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A372246.P559822924801372478

/-!
# A372247: Lowest prime p in a ladder of 4 consecutive primes p, p+2, p+6, p+14.

The programs for A372247, there is no canonical definition to state claims against.
-/

/-! ## A372247.P15307018757856868619

`∩[A007529(n+1), A354284(n+1)]`
-/

namespace A372247.P15307018757856868619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372247.P15307018757856868619

/-! ## A372247.P15300735767784464043

`∩[A153417(n+1), A210361(n+1)]`
-/

namespace A372247.P15300735767784464043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372247.P15300735767784464043

/-! ## A372247.P16118967144437978589

`∩[A022004(n+1), A354284(n+1)]`
-/

namespace A372247.P16118967144437978589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372247.P16118967144437978589

/-! ## A372247.P17861225789279304320

`∩[A181605(n+1), A354284(n+1)]`
-/

namespace A372247.P17861225789279304320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372247.P17861225789279304320

/-! ## A372247.P6862025278905967401

`∩[A210361(n+1), A354284(n+1)]`
-/

namespace A372247.P6862025278905967401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372247.P6862025278905967401

/-!
# A372248: Lowest prime p in a ladder of 5 consecutive primes p, p+2, p+6, p+14, p+30.

The programs for A372248, there is no canonical definition to state claims against.
-/

/-! ## A372248.P1608531680183096276

`∩[A022004(n+1), A354284(n+1)-2]`
-/

namespace A372248.P1608531680183096276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354284 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372248.P1608531680183096276

/-! ## A372248.P1667371504164730305

`∩[A210361(n+1), A354284(n+1)-2]`
-/

namespace A372248.P1667371504164730305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354284 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372248.P1667371504164730305

/-! ## A372248.P7861699628933933191

`∩[A341357(n+1), A354284(n+1)-2]`
-/

namespace A372248.P7861699628933933191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354284 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372248.P7861699628933933191

/-! ## A372248.P17440305366615170857

`A000040(A257892(n+1))`
-/

namespace A372248.P17440305366615170857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A257892 (n + 1)).toNat

end

end A372248.P17440305366615170857

/-!
# A372250: E.g.f. A(x) satisfies A(x) = exp( x * A(x) * (1 + x^2 * A(x)) ).

The programs for A372250, there is no canonical definition to state claims against.
-/

/-! ## A372250.P17223593288141213155

`A286999(A204042(n))`
-/

namespace A372250.P17223593288141213155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286999 (A204042 n).toNat

end

end A372250.P17223593288141213155

/-!
# A372251: E.g.f. A(x) satisfies A(x) = exp( x * A(x)^2 * (1 + A(x))/2 ).

The programs for A372251, there is no canonical definition to state claims against.
-/

/-! ## A372251.P16669515548550046721

`A304975(n)+A000027(A380043(n))`
-/

namespace A372251.P16669515548550046721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304975 n + A000027 (A380043 n).toNat

end

end A372251.P16669515548550046721

/-! ## A372251.P9903876831359485263

`A380043(n)+A072609(A380065(n))`
-/

namespace A372251.P9903876831359485263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380043 n + A072609 (A380065 n).toNat

end

end A372251.P9903876831359485263

/-!
# A372252: a(n) = A000045(n+1)*A000292(n) (product of a Fibonacci number and a tetrahedral number).

The programs for A372252, the canonical program `A372252.P9407473101100021253` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372252 has offset 0).

The definition of A372252 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)*A000292(n)` (program `A372252.P9407473101100021253`, by `A372252.P9407473101100021253.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A372252.P9407473101100021253

`A000045(n+1)*A000292(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A372252

/-- `A000045(n+1)*A000292(n)` -/
def P9407473101100021253.Spec : Prop :=
  ∀ n, P9407473101100021253.a n = A372252 n

theorem P9407473101100021253.correct : P9407473101100021253.Spec := by
  intro n
  simp only [A372252]

end A372252

/-! ## A372252.P9709174692741658700

`∑[a(n-1)+a(n-2)]*∑[∑[n]]` with `a(0)=1, a(1)=0`
-/

namespace A372252.P9709174692741658700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A372252.P9709174692741658700

namespace A372252

/-- `∑[a(n-1)+a(n-2)]*∑[∑[n]]` -/
def P9709174692741658700.Spec : Prop :=
  ∀ n, (P9709174692741658700.a n : ℤ) = A372252 n

end A372252

/-! ## A372252.P619751293453649773

`∑[A212804(n)]*∑[∑[n]]`
-/

namespace A372252.P619751293453649773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A372252.P619751293453649773

namespace A372252

/-- `∑[A212804(n)]*∑[∑[n]]` -/
def P619751293453649773.Spec : Prop :=
  ∀ n, P619751293453649773.a n = A372252 n

end A372252

/-! ## A372252.P10283819042583192048

`n/3*A390525(n+1)`
-/

namespace A372252.P10283819042583192048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A390525 (n + 1) : ℚ)

end

end A372252.P10283819042583192048

namespace A372252

/-- `n/3*A390525(n+1)` -/
def P10283819042583192048.Spec : Prop :=
  ∀ n, P10283819042583192048.a n = (A372252 n : ℚ)

theorem P10283819042583192048.correct : P10283819042583192048.Spec := by
  intro n
  simp only [A372252, Nat.add_sub_cancel, A372252.P10283819042583192048.a, A372252.P9407473101100021253.a, A000045, A000045.P11838749114346432762.a, A000292, A000292.P18322089543142633594.a, A390525, A390525.P327141548468234781.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A372252

/-! ## A372252.P18233801936588021662

`∑[∑[n]]*A327035(3*n+1)`
-/

namespace A372252.P18233801936588021662
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A327035 (3 * n + 1)

end

end A372252.P18233801936588021662

namespace A372252

/-- `∑[∑[n]]*A327035(3*n+1)` -/
def P18233801936588021662.Spec : Prop :=
  ∀ n, P18233801936588021662.a n = A372252 n

end A372252

/-! ## A372252.P3740510529680406798

`C(n+2, 3)*Δ[A000045(n+2)]`
-/

namespace A372252.P3740510529680406798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 3 : ℤ) * (f1 (n + 1) - f1 n)

end

end A372252.P3740510529680406798

namespace A372252

/-- `C(n+2, 3)*Δ[A000045(n+2)]` -/
def P3740510529680406798.Spec : Prop :=
  ∀ n, P3740510529680406798.a n = A372252 n

end A372252

/-! ## A372252.P17084199070090046995

`A000292(n)*A079977(2*n)`
-/

namespace A372252.P17084199070090046995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n * A079977 (2 * n)

end

end A372252.P17084199070090046995

namespace A372252

/-- `A000292(n)*A079977(2*n)` -/
def P17084199070090046995.Spec : Prop :=
  ∀ n, P17084199070090046995.a n = A372252 n

end A372252

/-! ## A372252.P7734190612080295655

`Δ[A157725(n+2)]*A000292(n)`
-/

namespace A372252.P7734190612080295655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000292 n

end

end A372252.P7734190612080295655

namespace A372252

/-- `Δ[A157725(n+2)]*A000292(n)` -/
def P7734190612080295655.Spec : Prop :=
  ∀ n, P7734190612080295655.a n = A372252 n

end A372252

/-! ## A372252.P13086684032263590128

`A000292(n)*A103609(A004273(n+2))`
-/

namespace A372252.P13086684032263590128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n * A103609 (A004273 (n + 2)).toNat

end

end A372252.P13086684032263590128

namespace A372252

/-- `A000292(n)*A103609(A004273(n+2))` -/
def P13086684032263590128.Spec : Prop :=
  ∀ n, P13086684032263590128.a n = A372252 n

end A372252

/-! ## A372252.P1509354536199610236

`(A005581(n+1)-A000217(n))*A000045(n+1)`
-/

namespace A372252.P1509354536199610236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005581 (n + 1) - A000217 n) * A000045 (n + 1)

end

end A372252.P1509354536199610236

namespace A372252

/-- `(A005581(n+1)-A000217(n))*A000045(n+1)` -/
def P1509354536199610236.Spec : Prop :=
  ∀ n, P1509354536199610236.a n = A372252 n

theorem P1509354536199610236.correct : P1509354536199610236.Spec := by
  intro n
  simp only [A372252, Nat.add_sub_cancel, A372252.P1509354536199610236.a, A372252.P9407473101100021253.a, A000045, A000045.P11838749114346432762.a, A000217, A000217.P10269402890581615239.a, A000292, A000292.P18322089543142633594.a, A005581, A005581.P11014497433873413039.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A372252

/-! ## A372252.P236299732541538335

`C(n+2, 3)*A054450(∑[n])`
-/

namespace A372252.P236299732541538335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 3 : ℤ) * A054450 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A372252.P236299732541538335

namespace A372252

/-- `C(n+2, 3)*A054450(∑[n])` -/
def P236299732541538335.Spec : Prop :=
  ∀ n, P236299732541538335.a n = A372252 n

end A372252

/-! ## A372252.P2109257993568720108

`A000292(n)*A094441(∑[n])`
-/

namespace A372252.P2109257993568720108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n * A094441 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A372252.P2109257993568720108

namespace A372252

/-- `A000292(n)*A094441(∑[n])` -/
def P2109257993568720108.Spec : Prop :=
  ∀ n, P2109257993568720108.a n = A372252 n

end A372252

/-!
# A372255: a(1) = 1, a(n) = n*(n-2)! + n - 1.

The programs for A372255, there is no canonical definition to state claims against.
-/

/-! ## A372255.P12161320721019516778

`(n+1)*abs(1-n)!+n`
-/

namespace A372255.P12161320721019516778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.factorial |1 - (n : ℤ)|.toNat + n

end

end A372255.P12161320721019516778

/-! ## A372255.P3707144170308663219

`or(A059171(n+1)+n, char[1])`
-/

namespace A372255.P3707144170308663219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059171 (n + 1) + (n : ℤ)) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A372255.P3707144170308663219

/-! ## A372255.P22541108011167189

`A076571(A000124(n))+n`
-/

namespace A372255.P22541108011167189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076571 (A000124 n).toNat + (n : ℤ)

end

end A372255.P22541108011167189

/-! ## A372255.P7155276490326638592

`A180013(A133263(n))+n`
-/

namespace A372255.P7155276490326638592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180013 (A133263 n).toNat + (n : ℤ)

end

end A372255.P7155276490326638592

/-! ## A372255.P16813243192585485367

`A000142(n)+A104150(n)+n`
-/

namespace A372255.P16813243192585485367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + (A104150 n + (n : ℤ))

end

end A372255.P16813243192585485367

/-! ## A372255.P17941170912352429721

`lcm(A019555(n+1), A059171(n+1))+n`
-/

namespace A372255.P17941170912352429721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A019555 (n + 1)) (A059171 (n + 1)) + n

end

end A372255.P17941170912352429721

/-!
# A372256: a(n) = (n-1)!/2^floor((n-1)/2) + floor((n-1)/2).

The programs for A372256, the canonical program `A372256.P11977261990455443582` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372256 has offset 1).

The definition of A372256 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372256.P11977261990455443582

`n!/2^floor(n/2)+floor(n/2)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A372256

/-- `n!/2^floor(n/2)+floor(n/2)` -/
def P11977261990455443582.Spec : Prop :=
  ∀ n, P11977261990455443582.a n = (A372256 (n + 1) : ℚ)

end A372256

/-! ## A372256.P13031001963940913880

`A090932(n)+A004526(n)`
-/

namespace A372256.P13031001963940913880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090932 n + A004526 n

end

end A372256.P13031001963940913880

namespace A372256

/-- `A090932(n)+A004526(n)` -/
def P13031001963940913880.Spec : Prop :=
  ∀ n, P13031001963940913880.a n = A372256 (n + 1)

end A372256

/-! ## A372256.P4886707723150908245

`A090932(n)+A008615(3*n)`
-/

namespace A372256.P4886707723150908245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090932 n + A008615 (3 * n)

end

end A372256.P4886707723150908245

namespace A372256

/-- `A090932(n)+A008615(3*n)` -/
def P4886707723150908245.Spec : Prop :=
  ∀ n, P4886707723150908245.a n = A372256 (n + 1)

end A372256

/-! ## A372256.P6504877329763975471

`A032766(n)+A090932(n)-n`
-/

namespace A372256.P6504877329763975471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n + (A090932 n - (n : ℤ))

end

end A372256.P6504877329763975471

namespace A372256

/-- `A032766(n)+A090932(n)-n` -/
def P6504877329763975471.Spec : Prop :=
  ∀ n, P6504877329763975471.a n = A372256 (n + 1)

end A372256

/-! ## A372256.P7900138181288990589

`A090932(n)+A008615(n)+A002264(n)`
-/

namespace A372256.P7900138181288990589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090932 n + (A008615 n + A002264 n)

end

end A372256.P7900138181288990589

namespace A372256

/-- `A090932(n)+A008615(n)+A002264(n)` -/
def P7900138181288990589.Spec : Prop :=
  ∀ n, P7900138181288990589.a n = A372256 (n + 1)

end A372256

/-!
# A372257: An infinite sequence over {0,1,2,3} without palindromes of length more than 1.

The programs for A372257, the canonical program `A372257.P4449125955602869513` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372257 has offset 0).

The definition of A372257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372257.P3085486932144363555

`A372258(n)+and(2, n)`
-/

namespace A372257.P3085486932144363555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372258 n + (Nat.land 2 n : ℤ)

end

end A372257.P3085486932144363555

namespace A372257

/-- `A372258(n)+and(2, n)` -/
def P3085486932144363555.Spec : Prop :=
  ∀ n, P3085486932144363555.a n = A372257 n

end A372257

/-! ## A372257.P4449125955602869513

`xor(n%4, A038189(A008619(n)))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A372257

/-- `xor(n%4, A038189(A008619(n)))` -/
def P4449125955602869513.Spec : Prop :=
  ∀ n, P4449125955602869513.a n = A372257 n

theorem P4449125955602869513.correct : P4449125955602869513.Spec := by
  intro n
  simp only [A372257]

end A372257

/-! ## A372257.P4147112081702231460

`A088431(A008620(3*n+4))-A133872(n)`
-/

namespace A372257.P4147112081702231460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088431 (A008620 (3 * n + 4)).toNat - A133872 n

end

end A372257.P4147112081702231460

namespace A372257

/-- `A088431(A008620(3*n+4))-A133872(n)` -/
def P4147112081702231460.Spec : Prop :=
  ∀ n, P4147112081702231460.a n = A372257 n

end A372257

/-!
# A372258: An infinite sequence over {0,1} with no palindromes of length > 12.

The programs for A372258, the canonical program `A372258.P5304101874703348284` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372258 has offset 0).

The definition of A372258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372258.P5304101874703348284

`A372257(n)%2`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A372258

/-- `A372257(n)%2` -/
def P5304101874703348284.Spec : Prop :=
  ∀ n, P5304101874703348284.a n = A372258 n

theorem P5304101874703348284.correct : P5304101874703348284.Spec := by
  intro n
  simp only [A372258]

end A372258

/-! ## A372258.P10698707606022307095

`A021913(n)-A343173(n)`
-/

namespace A372258.P10698707606022307095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n - A343173 n

end

end A372258.P10698707606022307095

namespace A372258

/-- `A021913(n)-A343173(n)` -/
def P10698707606022307095.Spec : Prop :=
  ∀ n, P10698707606022307095.a n = A372258 n

end A372258

/-! ## A372258.P743975111600714418

`and(A000328(n), A372257(n))`
-/

namespace A372258.P743975111600714418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000328 n) (A372257 n)

end

end A372258.P743975111600714418

namespace A372258

/-- `and(A000328(n), A372257(n))` -/
def P743975111600714418.Spec : Prop :=
  ∀ n, P743975111600714418.a n = A372258 n

end A372258

/-! ## A372258.P17363829747006491833

`and(A001513(n), A372257(n))`
-/

namespace A372258.P17363829747006491833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001513 n) (A372257 n)

end

end A372258.P17363829747006491833

namespace A372258

/-- `and(A001513(n), A372257(n))` -/
def P17363829747006491833.Spec : Prop :=
  ∀ n, P17363829747006491833.a n = A372258 n

end A372258

/-! ## A372258.P12322662302329812505

`and(A001535(n), A372257(n))`
-/

namespace A372258.P12322662302329812505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001535 n) (A372257 n)

end

end A372258.P12322662302329812505

namespace A372258

/-- `and(A001535(n), A372257(n))` -/
def P12322662302329812505.Spec : Prop :=
  ∀ n, P12322662302329812505.a n = A372258 n

end A372258

/-! ## A372258.P18034453038880804715

`and(A001546(n), A372257(n))`
-/

namespace A372258.P18034453038880804715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001546 n) (A372257 n)

end

end A372258.P18034453038880804715

namespace A372258

/-- `and(A001546(n), A372257(n))` -/
def P18034453038880804715.Spec : Prop :=
  ∀ n, P18034453038880804715.a n = A372258 n

end A372258

/-! ## A372258.P12071123909007626247

`and(A001844(n), A372257(n))`
-/

namespace A372258.P12071123909007626247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001844 n) (A372257 n)

end

end A372258.P12071123909007626247

namespace A372258

/-- `and(A001844(n), A372257(n))` -/
def P12071123909007626247.Spec : Prop :=
  ∀ n, P12071123909007626247.a n = A372258 n

end A372258

/-! ## A372258.P4042746116592292017

`and(A001846(n), A372257(n))`
-/

namespace A372258.P4042746116592292017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001846 n) (A372257 n)

end

end A372258.P4042746116592292017

namespace A372258

/-- `and(A001846(n), A372257(n))` -/
def P4042746116592292017.Spec : Prop :=
  ∀ n, P4042746116592292017.a n = A372258 n

end A372258

/-! ## A372258.P166078124618820161

`and(A001848(n), A372257(n))`
-/

namespace A372258.P166078124618820161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001848 n) (A372257 n)

end

end A372258.P166078124618820161

namespace A372258

/-- `and(A001848(n), A372257(n))` -/
def P166078124618820161.Spec : Prop :=
  ∀ n, P166078124618820161.a n = A372258 n

end A372258

/-! ## A372258.P538817119092866943

`and(A003185(n), A372257(n))`
-/

namespace A372258.P538817119092866943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003185 n) (A372257 n)

end

end A372258.P538817119092866943

namespace A372258

/-- `and(A003185(n), A372257(n))` -/
def P538817119092866943.Spec : Prop :=
  ∀ n, P538817119092866943.a n = A372258 n

end A372258

/-! ## A372258.P9278438550370272250

`and(A004768(n), A372257(n))`
-/

namespace A372258.P9278438550370272250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004768 n) (A372257 n)

end

end A372258.P9278438550370272250

namespace A372258

/-- `and(A004768(n), A372257(n))` -/
def P9278438550370272250.Spec : Prop :=
  ∀ n, P9278438550370272250.a n = A372258 n

end A372258

/-! ## A372258.P7116059967834144366

`and(A007204(n), A372257(n))`
-/

namespace A372258.P7116059967834144366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007204 n) (A372257 n)

end

end A372258.P7116059967834144366

namespace A372258

/-- `and(A007204(n), A372257(n))` -/
def P7116059967834144366.Spec : Prop :=
  ∀ n, P7116059967834144366.a n = A372258 n

end A372258

/-! ## A372258.P4779379375350728689

`and(A008349(n), A372257(n))`
-/

namespace A372258.P4779379375350728689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008349 n) (A372257 n)

end

end A372258.P4779379375350728689

namespace A372258

/-- `and(A008349(n), A372257(n))` -/
def P4779379375350728689.Spec : Prop :=
  ∀ n, P4779379375350728689.a n = A372258 n

end A372258

/-! ## A372258.P4789141555506683547

`and(A008358(n), A372257(n))`
-/

namespace A372258.P4789141555506683547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008358 n) (A372257 n)

end

end A372258.P4789141555506683547

namespace A372258

/-- `and(A008358(n), A372257(n))` -/
def P4789141555506683547.Spec : Prop :=
  ∀ n, P4789141555506683547.a n = A372258 n

end A372258

/-! ## A372258.P15360449389928536299

`and(A008362(n), A372257(n))`
-/

namespace A372258.P15360449389928536299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008362 n) (A372257 n)

end

end A372258.P15360449389928536299

namespace A372258

/-- `and(A008362(n), A372257(n))` -/
def P15360449389928536299.Spec : Prop :=
  ∀ n, P15360449389928536299.a n = A372258 n

end A372258

/-! ## A372258.P2960665826320963548

`and(A008379(n), A372257(n))`
-/

namespace A372258.P2960665826320963548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008379 n) (A372257 n)

end

end A372258.P2960665826320963548

namespace A372258

/-- `and(A008379(n), A372257(n))` -/
def P2960665826320963548.Spec : Prop :=
  ∀ n, P2960665826320963548.a n = A372258 n

end A372258

/-! ## A372258.P13912585561902737335

`and(A008417(n), A372257(n))`
-/

namespace A372258.P13912585561902737335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008417 n) (A372257 n)

end

end A372258.P13912585561902737335

namespace A372258

/-- `and(A008417(n), A372257(n))` -/
def P13912585561902737335.Spec : Prop :=
  ∀ n, P13912585561902737335.a n = A372258 n

end A372258

/-! ## A372258.P1159393103668869942

`and(A016760(n), A372257(n))`
-/

namespace A372258.P1159393103668869942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A372257 n)

end

end A372258.P1159393103668869942

namespace A372258

/-- `and(A016760(n), A372257(n))` -/
def P1159393103668869942.Spec : Prop :=
  ∀ n, P1159393103668869942.a n = A372258 n

end A372258

/-! ## A372258.P2957229590368257999

`and(A016819(n), A372257(n))`
-/

namespace A372258.P2957229590368257999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016819 n) (A372257 n)

end

end A372258.P2957229590368257999

namespace A372258

/-- `and(A016819(n), A372257(n))` -/
def P2957229590368257999.Spec : Prop :=
  ∀ n, P2957229590368257999.a n = A372258 n

end A372258

/-! ## A372258.P4335894989443806168

`and(A016820(n), A372257(n))`
-/

namespace A372258.P4335894989443806168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016820 n) (A372257 n)

end

end A372258.P4335894989443806168

namespace A372258

/-- `and(A016820(n), A372257(n))` -/
def P4335894989443806168.Spec : Prop :=
  ∀ n, P4335894989443806168.a n = A372258 n

end A372258

/-!
# A372264: a(n) = n! - n^2 + 2n - 1.

The programs for A372264, the canonical program `A372264.P15307679363742007622` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372264 has offset 1).

The definition of A372264 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)!-(n+1)²+2*(n+1)-1` (program `A372264.P15307679363742007622`, by `A372264.P15307679363742007622.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A372264.P15307679363742007622

`(n+1)!-(n+1)²+2*(n+1)-1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A372264

/-- `(n+1)!-(n+1)²+2*(n+1)-1` -/
def P15307679363742007622.Spec : Prop :=
  ∀ n, P15307679363742007622.a n = A372264 (n + 1)

theorem P15307679363742007622.correct : P15307679363742007622.Spec := by
  intro n
  simp only [A372264, Nat.add_sub_cancel]

end A372264

/-! ## A372264.P12637154895138375135

`(n+1)!-n²`
-/

namespace A372264.P12637154895138375135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - (n ^ 2 : ℤ)

end

end A372264.P12637154895138375135

namespace A372264

/-- `(n+1)!-n²` -/
def P12637154895138375135.Spec : Prop :=
  ∀ n, P12637154895138375135.a n = A372264 (n + 1)

theorem P12637154895138375135.correct : P12637154895138375135.Spec := by
  intro n
  simp only [A372264, Nat.add_sub_cancel, A372264.P12637154895138375135.a, A372264.P15307679363742007622.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A372264

/-! ## A372264.P2866145338097796812

`∏[n+1]-n²`
-/

namespace A372264.P2866145338097796812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 2 : ℤ)

end

end A372264.P2866145338097796812

namespace A372264

/-- `∏[n+1]-n²` -/
def P2866145338097796812.Spec : Prop :=
  ∀ n, P2866145338097796812.a n = A372264 (n + 1)

theorem P2866145338097796812.correct : P2866145338097796812.Spec := by
  intro n
  simp only [A372264, Nat.add_sub_cancel, A372264.P2866145338097796812.f1, A372264.P2866145338097796812.a, A372264.P15307679363742007622.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A372264

/-! ## A372264.P10369167956560381944

`∑[Δ[n!]+1-2*n]`
-/

namespace A372264.P10369167956560381944
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (1 - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372264.P10369167956560381944

namespace A372264

/-- `∑[Δ[n!]+1-2*n]` -/
def P10369167956560381944.Spec : Prop :=
  ∀ n, P10369167956560381944.a n = A372264 (n + 1)

end A372264

/-! ## A372264.P1935249743618016393

`∑[1-(2*n-Δ[n!])]`
-/

namespace A372264.P1935249743618016393
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 * n : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372264.P1935249743618016393

namespace A372264

/-- `∑[1-(2*n-Δ[n!])]` -/
def P1935249743618016393.Spec : Prop :=
  ∀ n, P1935249743618016393.a n = A372264 (n + 1)

end A372264

/-! ## A372264.P5296176962612363937

`∑[Δ[n!]-(n-1)-n]`
-/

namespace A372264.P5296176962612363937
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - ((n : ℤ) - 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372264.P5296176962612363937

namespace A372264

/-- `∑[Δ[n!]-(n-1)-n]` -/
def P5296176962612363937.Spec : Prop :=
  ∀ n, P5296176962612363937.a n = A372264 (n + 1)

end A372264

/-! ## A372264.P13629377259632567610

`abs((2*n-(n-1))!-n²)`
-/

namespace A372264.P13629377259632567610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℤ) - (n ^ 2 : ℤ)|

end

end A372264.P13629377259632567610

namespace A372264

/-- `abs((2*n-(n-1))!-n²)` -/
def P13629377259632567610.Spec : Prop :=
  ∀ n, P13629377259632567610.a n = A372264 (n + 1)

end A372264

/-! ## A372264.P15186397563373926506

`abs(∑[2*n]-((n+1)!+n))`
-/

namespace A372264.P15186397563373926506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.factorial (n + 1) + n : ℤ)|

end

end A372264.P15186397563373926506

namespace A372264

/-- `abs(∑[2*n]-((n+1)!+n))` -/
def P15186397563373926506.Spec : Prop :=
  ∀ n, P15186397563373926506.a n = A372264 (n + 1)

end A372264

/-!
# A372265: a(n) = floor((2*n - 3 + sqrt(1 + 4*n!))/2).

The programs for A372265, the canonical program `A372265.P13202998235885134476` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372265 has offset 1).

The definition of A372265 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((2*(n+1)-3+sqrt(1+4*(n+1)!))/2)` (program `A372265.P13202998235885134476`, by `A372265.P13202998235885134476.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A372265.P13202998235885134476

`floor((2*(n+1)-3+sqrt(1+4*(n+1)!))/2)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A372265

/-- `floor((2*(n+1)-3+sqrt(1+4*(n+1)!))/2)` -/
def P13202998235885134476.Spec : Prop :=
  ∀ n, P13202998235885134476.a n = A372265 (n + 1)

theorem P13202998235885134476.correct : P13202998235885134476.Spec := by
  intro n
  simp only [A372265, Nat.add_sub_cancel]

end A372265

/-! ## A372265.P7285400576859111842

`floor(A078160(n+1)/2)+n`
-/

namespace A372265.P7285400576859111842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078160 (n + 1) : ℚ) / 2⌋ + (n : ℤ)

end

end A372265.P7285400576859111842

namespace A372265

/-- `floor(A078160(n+1)/2)+n` -/
def P7285400576859111842.Spec : Prop :=
  ∀ n, P7285400576859111842.a n = A372265 (n + 1)

end A372265

/-! ## A372265.P853671964603078258

`round(sqrt((n+1)!+1)+n-1)`
-/

namespace A372265.P853671964603078258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Nat.factorial (n + 1) + 1 : ℝ) + ((n : ℤ) - 1 : ℝ))

end

end A372265.P853671964603078258

namespace A372265

/-- `round(sqrt((n+1)!+1)+n-1)` -/
def P853671964603078258.Spec : Prop :=
  ∀ n, P853671964603078258.a n = A372265 (n + 1)

end A372265

/-! ## A372265.P13226711549516765483

`round(sqrt(∏[n+1]+1))-1+n`
-/

namespace A372265.P13226711549516765483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∏ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℝ)) - 1 + (n : ℤ)

end

end A372265.P13226711549516765483

namespace A372265

/-- `round(sqrt(∏[n+1]+1))-1+n` -/
def P13226711549516765483.Spec : Prop :=
  ∀ n, P13226711549516765483.a n = A372265 (n + 1)

end A372265

/-!
# A372266: a(n) = floor((2*n - 3 + sqrt(1 + 8*(n - 2)!))/2).

The programs for A372266, the canonical program `A372266.P9855767510344662118` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372266 has offset 2).

The definition of A372266 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((2*(n+2)-3+sqrt(1+8*n!))/2)` (program `A372266.P9855767510344662118`, by `A372266.P9855767510344662118.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A372266.P9855767510344662118

`floor((2*(n+2)-3+sqrt(1+8*n!))/2)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A372266

/-- `floor((2*(n+2)-3+sqrt(1+8*n!))/2)` -/
def P9855767510344662118.Spec : Prop :=
  ∀ n, P9855767510344662118.a n = A372266 (n + 2)

theorem P9855767510344662118.correct : P9855767510344662118.Spec := by
  intro n
  simp only [A372266, Nat.add_sub_cancel]

end A372266

/-! ## A372266.P17649629774020915430

`round(sqrt(2*(n!+1)))+n`
-/

namespace A372266.P17649629774020915430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (Nat.factorial n + 1) : ℝ)) + (n : ℤ)

end

end A372266.P17649629774020915430

namespace A372266

/-- `round(sqrt(2*(n!+1)))+n` -/
def P17649629774020915430.Spec : Prop :=
  ∀ n, P17649629774020915430.a n = A372266 (n + 2)

end A372266

/-! ## A372266.P12448586021129139365

`round(sqrt(n!/log2(sqrt(2))+1))+n`
-/

namespace A372266.P12448586021129139365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((Nat.factorial n : ℝ) / Real.logb 2 (Real.sqrt (2 : ℝ)) + 1)) + (n : ℤ)

end

end A372266.P12448586021129139365

namespace A372266

/-- `round(sqrt(n!/log2(sqrt(2))+1))+n` -/
def P12448586021129139365.Spec : Prop :=
  ∀ n, P12448586021129139365.a n = A372266 (n + 2)

end A372266

/-! ## A372266.P10143472927915084583

`round(sqrt(2*A000142(n)+1))+n`
-/

namespace A372266.P10143472927915084583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A000142 n + 1 : ℝ)) + (n : ℤ)

end

end A372266.P10143472927915084583

namespace A372266

/-- `round(sqrt(2*A000142(n)+1))+n` -/
def P10143472927915084583.Spec : Prop :=
  ∀ n, P10143472927915084583.a n = A372266 (n + 2)

end A372266

/-!
# A372279: E.g.f. A(x) satisfies A(x) = exp( x * ( exp(x) * A(x) )^(5/2) ).

The programs for A372279, there is no canonical definition to state claims against.
-/

/-! ## A372279.P10749384742970321260

`or(A049988(A365177(n)), A060831(n))`
-/

namespace A372279.P10749384742970321260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049988 (A365177 n).toNat) (A060831 n)

end

end A372279.P10749384742970321260

/-!
# A372280: Composite numbers k such that the digits of k are in nondecreasing order while the digits of the concatenation of k's ascending order prime factors, with repetition, are in nonincreasing order.

The programs for A372280, there is no canonical definition to state claims against.
-/

/-! ## A372280.P12700475790623249689

`∩[A163122(n+1), A335650(n+1)]`
-/

namespace A372280.P12700475790623249689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372280.P12700475790623249689

/-! ## A372280.P2151553257288550091

`A322437(A005425(n))+A100657(n+1)`
-/

namespace A372280.P2151553257288550091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322437 (A005425 n).toNat + A100657 (n + 1)

end

end A372280.P2151553257288550091

/-! ## A372280.P4939573839617442408

`A100657(n+1)+A083919(A051300(n+1))`
-/

namespace A372280.P4939573839617442408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100657 (n + 1) + A083919 (A051300 (n + 1)).toNat

end

end A372280.P4939573839617442408

/-! ## A372280.P16615213998676525888

`A100657(n+1)+A083919(A295461(n+1))`
-/

namespace A372280.P16615213998676525888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100657 (n + 1) + A083919 (A295461 (n + 1)).toNat

end

end A372280.P16615213998676525888

/-! ## A372280.P12241462533846909748

`or(A100657(n+1), A100699(A100651(n+1)))`
-/

namespace A372280.P12241462533846909748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A100657 (n + 1)) (A100699 (A100651 (n + 1)).toNat)

end

end A372280.P12241462533846909748

/-!
# A372281: Numbers written in base of triangular numbers where the trailing digits are made as high as possible.

The programs for A372281, there is no canonical definition to state claims against.
-/

/-! ## A372281.P15785740439895377833

`lt[A179016(n-∏{digits}[n, #]), ∑{digits}[n, #]+n]`
-/

namespace A372281.P15785740439895377833
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179016 (n - ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => x).sum + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A372281.P15785740439895377833

/-! ## A372281.P9660414487011453475

`lt[A053392(n+3), A007953(n)]`
-/

namespace A372281.P9660414487011453475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A372281.P9660414487011453475

/-! ## A372281.P5194320452181693608

`lt[A171129(A070565(n)), A000578(n)]`
-/

namespace A372281.P5194320452181693608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171129 (A070565 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A372281.P5194320452181693608

/-! ## A372281.P9129898815081734851

`lt[A182654(A065033(n)), A089898(n)]`
-/

namespace A372281.P9129898815081734851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182654 (A065033 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A372281.P9129898815081734851

/-! ## A372281.P3834377915967952452

`lt[A097992(A250120(n)), A061762(n)]`
-/

namespace A372281.P3834377915967952452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A250120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A372281.P3834377915967952452

/-!
# A372284: Primes in the order in which they appear in A124652.

The programs for A372284, there is no canonical definition to state claims against.
-/

/-! ## A372284.P1507687400893630095

`A124652(A372009(n+1))`
-/

namespace A372284.P1507687400893630095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124652 (A372009 (n + 1)).toNat

end

end A372284.P1507687400893630095

/-! ## A372284.P13812226307324162369

`p?[A124652(n+1)]`
-/

namespace A372284.P13812226307324162369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A372284.P13812226307324162369

/-! ## A372284.P8607359011469085569

`p?[Δ[A372111(n+1)]]`
-/

namespace A372284.P8607359011469085569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372111 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A372284.P8607359011469085569

/-! ## A372284.P10516001760561032841

`filter[A124652(n+1), A010051(#)]`
-/

namespace A372284.P10516001760561032841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A372284.P10516001760561032841

/-! ## A372284.P11696373918440676705

`filter[A124652(n+2), A080339(#)]`
-/

namespace A372284.P11696373918440676705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124652 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A372284.P11696373918440676705

/-!
# A372285: Array read by upward antidiagonals: A(n,k) is the number of terms of A086893 in the interval [b(n, k), b(n+1, k)], n,k >= 1, where b = A372282.

The programs for A372285, there is no canonical definition to state claims against.
-/

/-! ## A372285.P18071544130618230275

`xor(A291448(A185064(n+1)), A372355(n+1))`
-/

namespace A372285.P18071544130618230275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A291448 (A185064 (n + 1)).toNat) (A372355 (n + 1))

end

end A372285.P18071544130618230275

/-!
# A372287: Array read by upward antidiagonals: A(n, k) = A371092(A372283(n, k)), n,k >= 1.

The programs for A372287, there is no canonical definition to state claims against.
-/

/-! ## A372287.P11460556400858482675

`A371092(A372283(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372287.P11460556400858482675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371092 (A372283 (n + 1)).toNat

end

end A372287.P11460556400858482675

/-! ## A372287.P13926228956997404022

`A103748(A046534(n+4)*A343088(n))`
-/

namespace A372287.P13926228956997404022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103748 (A046534 (n + 4) * A343088 n).toNat

end

end A372287.P13926228956997404022

/-! ## A372287.P49510981199395235

`gcd(A171871(n)!, A276862(n+1))`
-/

namespace A372287.P49510981199395235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A171871 n).toNat : ℤ) (A276862 (n + 1))

end

end A372287.P49510981199395235

/-! ## A372287.P12082207744734942197

`A372360(n+1)+A251092(A372336(n+1))`
-/

namespace A372287.P12082207744734942197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372360 (n + 1) + A251092 (A372336 (n + 1)).toNat

end

end A372287.P12082207744734942197

/-! ## A372287.P18419881193885079916

`gcd(A000120(2*(n+1)), A000142(A171871(n)))`
-/

namespace A372287.P18419881193885079916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 (2 * (n + 1))) (A000142 (A171871 n).toNat)

end

end A372287.P18419881193885079916

/-!
# A372288: Array read by upward antidiagonals: A(n, k) = A265745(A372282(n, k)), n,k >= 1, where A265745(n) is the sum of digits in "Jacobsthal greedy base".

The programs for A372288, there is no canonical definition to state claims against.
-/

/-! ## A372288.P6647948205863716594

`A023152(A340811(n))%4`
-/

namespace A372288.P6647948205863716594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023152 (A340811 n).toNat) 4

end

end A372288.P6647948205863716594

/-! ## A372288.P1432886014996505231

`gcd(A000244(A047998(n)), A106359(n+4))`
-/

namespace A372288.P1432886014996505231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000244 (A047998 n).toNat) (A106359 (n + 4))

end

end A372288.P1432886014996505231

/-! ## A372288.P3836841604347942672

`gcd(A176588(n+1), A233543(n))`
-/

namespace A372288.P3836841604347942672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A176588 (n + 1)) (A233543 n)

end

end A372288.P3836841604347942672

/-!
# A372290: Numbers that occur in the odd bisection of A371094.

The programs for A372290, there is no canonical definition to state claims against.
-/

/-! ## A372290.P14055780420148435773

`∪[A372291(n+1), A372292(n+1)]`
-/

namespace A372290.P14055780420148435773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A372290.P14055780420148435773

/-!
# A372291: Numbers that occur exactly once in the odd bisection of A371094.

The programs for A372291, there is no canonical definition to state claims against.
-/

/-! ## A372291.P11502838508833531557

`A372351(A047407(n+2))`
-/

namespace A372291.P11502838508833531557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372351 (A047407 (n + 2)).toNat

end

end A372291.P11502838508833531557

/-! ## A372291.P6967675205044456678

`filter[A372351(2*(n+1)), A169672(#)]`
-/

namespace A372291.P6967675205044456678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372351 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A169672 (f1 j).toNat = 1) n)

end

end A372291.P6967675205044456678

/-! ## A372291.P15947779420966620253

`filter[A371094(2*n+1), A169672(#)]`
-/

namespace A372291.P15947779420966620253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371094 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A169672 (f1 j).toNat = 1) n)

end

end A372291.P15947779420966620253

/-! ## A372291.P13208101187605638605

`∩[A335558(n+1), A347836(n+1)]`
-/

namespace A372291.P13208101187605638605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372291.P13208101187605638605

/-!
# A372293: Odd numbers that do not occur in the odd bisection of A371094.

The programs for A372293, there is no canonical definition to state claims against.
-/

/-! ## A372293.P85492090735613595

`lt[A010155(n), A260385(A308551(n+1))]`
-/

namespace A372293.P85492090735613595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260385 (A308551 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A372293.P85492090735613595

/-! ## A372293.P13432571520065601054

`∑[C(A001511(A044338(n+1)), 2)]+n`
-/

namespace A372293.P13432571520065601054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001511 (A044338 (n + 1)).toNat).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A372293.P13432571520065601054

/-! ## A372293.P13947089668508194253

`A071797(∑[A043284(n+1)]²)`
-/

namespace A372293.P13947089668508194253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A372293.P13947089668508194253

/-! ## A372293.P11885801493484029677

`lt[A010155(A000290(n)), A308551(n+1)]`
-/

namespace A372293.P11885801493484029677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010155 (A000290 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308551 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A372293.P11885801493484029677

/-! ## A372293.P51100292364385064

`lt[A059126(n), A030446(A059126(3*n))]`
-/

namespace A372293.P51100292364385064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030446 (A059126 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A372293.P51100292364385064

/-! ## A372293.P3212908417966364373

`lt[A333363(n+3), A333402(A073575(n+1))]`
-/

namespace A372293.P3212908417966364373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333363 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333402 (A073575 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A372293.P3212908417966364373

/-!
# A372294: The smallest number k which, when written in base n, has a factorization k = f_1*f_2*...*f_r where f_i >= 1 and the digits of {k, f_1, f_2, ..., f_r} together contain the digits 0,1,...,(n-1) exactly once. Set a(n) = -1 if no such k exists.

The programs for A372294, there is no canonical definition to state claims against.
-/

/-! ## A372294.P678399890530037864

`A321964(A011782(n))-A322025(n+1)`
-/

namespace A372294.P678399890530037864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321964 (A011782 n).toNat - A322025 (n + 1)

end

end A372294.P678399890530037864

/-!
# A372295: Composite numbers k such that k's prime factors are distinct, the digits of k are in nonincreasing order while the digits of the concatenation of k's ascending order prime factors are in nondecreasing order.

The programs for A372295, there is no canonical definition to state claims against.
-/

/-! ## A372295.P6999536731345930608

`filter[A372308(n+1), A008966(#)]`
-/

namespace A372295.P6999536731345930608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A372295.P6999536731345930608

/-! ## A372295.P13942855781993055051

`filter[A372308(n+1), A323154(#)]`
-/

namespace A372295.P13942855781993055051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A372295.P13942855781993055051

/-! ## A372295.P7763662444595418130

`filter[A372308(n+1), A354819(#)]`
-/

namespace A372295.P7763662444595418130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A372295.P7763662444595418130

/-! ## A372295.P10644220880921720585

`∩[A000469(n+1), A372308(n+1)]`
-/

namespace A372295.P10644220880921720585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372295.P10644220880921720585

/-! ## A372295.P11125472031147395763

`∩[A005117(n+1), A372308(n+1)]`
-/

namespace A372295.P11125472031147395763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372295.P11125472031147395763

/-!
# A372298: Primitive infinitary abundant numbers (definition 1): infinitary abundant numbers (A129656) whose all proper infinitary divisors are infinitary deficient numbers.

The programs for A372298, there is no canonical definition to state claims against.
-/

/-! ## A372298.P708349092913016170

`∩[A129656(n+1), A092214(n)]`
-/

namespace A372298.P708349092913016170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092214 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372298.P708349092913016170

/-! ## A372298.P6391643122745648275

`A186851(A000217(2*(n+1)))+A065036(n+1)`
-/

namespace A372298.P6391643122745648275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186851 (A000217 (2 * (n + 1))).toNat + A065036 (n + 1)

end

end A372298.P6391643122745648275

/-!
# A372299: Primitive infinitary abundant numbers (definition 2): infinitary abundant numbers (A129656) having no proper infinitary divisors that are infinitary abundant numbers.

The programs for A372299, there is no canonical definition to state claims against.
-/

/-! ## A372299.P8182726881460353966

`A129656(A044827(n+1)%A096818(n+5))`
-/

namespace A372299.P8182726881460353966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129656 (Int.tmod (A044827 (n + 1)) (A096818 (n + 5))).toNat

end

end A372299.P8182726881460353966

