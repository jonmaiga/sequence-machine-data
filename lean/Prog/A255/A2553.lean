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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A255300: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 161 when started with a single ON cell.

The programs for A255300, the canonical program `A255300.P11330659124365371573` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255300 has offset 0).

The definition of A255300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255300.P11330659124365371573

`∏{e}[A278222(n), A255301(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A255300

/-- `∏{e}[A278222(n), A255301(#)]` -/
def P11330659124365371573.Spec : Prop :=
  ∀ n, P11330659124365371573.a n = A255300 n

theorem P11330659124365371573.correct : P11330659124365371573.Spec := by
  intro n
  simp only [A255300]

end A255300

/-! ## A255300.P7253176062404846274

`∏{e}[A005940(n+1), A255301(#)]`
-/

namespace A255300.P7253176062404846274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255301 (Nat.factorization (f1 n).natAbs p)

end

end A255300.P7253176062404846274

namespace A255300

/-- `∏{e}[A005940(n+1), A255301(#)]` -/
def P7253176062404846274.Spec : Prop :=
  ∀ n, P7253176062404846274.a n = A255300 n

end A255300

/-! ## A255300.P4732337133657521573

`∏{e}[A241916(A253565(n)), A255301(#)]`
-/

namespace A255300.P4732337133657521573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (A253565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255301 (Nat.factorization (f1 n).natAbs p)

end

end A255300.P4732337133657521573

namespace A255300

/-- `∏{e}[A241916(A253565(n)), A255301(#)]` -/
def P4732337133657521573.Spec : Prop :=
  ∀ n, P4732337133657521573.a n = A255300 n

end A255300

/-! ## A255300.P8869383420633278726

`∏{e}[A278222(n), A189917(A189924(#))]`
-/

namespace A255300.P8869383420633278726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A189917 (A189924 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A255300.P8869383420633278726

namespace A255300

/-- `∏{e}[A278222(n), A189917(A189924(#))]` -/
def P8869383420633278726.Spec : Prop :=
  ∀ n, P8869383420633278726.a n = A255300 n

end A255300

/-! ## A255300.P4607899098396102764

`∏{e}[A005940(n+1), A189917(A189924(#))]`
-/

namespace A255300.P4607899098396102764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A189917 (A189924 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A255300.P4607899098396102764

namespace A255300

/-- `∏{e}[A005940(n+1), A189917(A189924(#))]` -/
def P4607899098396102764.Spec : Prop :=
  ∀ n, P4607899098396102764.a n = A255300 n

end A255300

/-!
# A255301: a(n) = A255300(2^k-1).

The programs for A255301, the canonical program `A255301.P2696994213886160492` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255301 has offset 0).

The definition of A255301 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255301.P2696994213886160492

`4*a(n-1)-a(n-2)-2*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=4, a(2)=16, a(3)=56`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255301

/-- `4*a(n-1)-a(n-2)-2*a(n-3)-4*a(n-4)` -/
def P2696994213886160492.Spec : Prop :=
  ∀ n, P2696994213886160492.a n = A255301 n

theorem P2696994213886160492.correct : P2696994213886160492.Spec := by
  intro n
  simp only [A255301]

end A255301

/-! ## A255301.P4624480749323692970

`ogf((1+x^2-2x^3)/(1-4x+x^2+2x^3+4x^4))`
-/

namespace A255301.P4624480749323692970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, -2] [1, -4, 1, 2, 4] n

end

end A255301.P4624480749323692970

namespace A255301

/-- `ogf((1+x^2-2x^3)/(1-4x+x^2+2x^3+4x^4))` -/
def P4624480749323692970.Spec : Prop :=
  ∀ n, P4624480749323692970.a n = A255301 n

end A255301

/-! ## A255301.P17255568958790728848

`A255300(2^n-1)`
-/

namespace A255301.P17255568958790728848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255300 (2 ^ n - 1)

end

end A255301.P17255568958790728848

namespace A255301

/-- `A255300(2^n-1)` -/
def P17255568958790728848.Spec : Prop :=
  ∀ n, P17255568958790728848.a n = A255301 n

end A255301

/-! ## A255301.P4895418252138200634

`record[A255300(A232751(n))]`
-/

namespace A255301.P4895418252138200634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255300 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255301.P4895418252138200634

namespace A255301

/-- `record[A255300(A232751(n))]` -/
def P4895418252138200634.Spec : Prop :=
  ∀ n, P4895418252138200634.a n = A255301 n

end A255301

/-! ## A255301.P1953675966163869420

`A255309(3*n)+A255300(A000225(n))`
-/

namespace A255301.P1953675966163869420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255309 (3 * n) + A255300 (A000225 n).toNat

end

end A255301.P1953675966163869420

namespace A255301

/-- `A255309(3*n)+A255300(A000225(n))` -/
def P1953675966163869420.Spec : Prop :=
  ∀ n, P1953675966163869420.a n = A255301 n

end A255301

/-!
# A255302: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 146 when started with a single ON cell.

The programs for A255302, the canonical program `A255302.P1352995771255015404` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255302 has offset 0).

The definition of A255302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255302.P1352995771255015404

`∏{e}[A278222(n), A255303(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A255302

/-- `∏{e}[A278222(n), A255303(#)]` -/
def P1352995771255015404.Spec : Prop :=
  ∀ n, P1352995771255015404.a n = A255302 n

theorem P1352995771255015404.correct : P1352995771255015404.Spec := by
  intro n
  simp only [A255302]

end A255302

/-! ## A255302.P3786690984228751965

`∏{e}[A005940(n+1), A255303(#)]`
-/

namespace A255302.P3786690984228751965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255303 (Nat.factorization (f1 n).natAbs p)

end

end A255302.P3786690984228751965

namespace A255302

/-- `∏{e}[A005940(n+1), A255303(#)]` -/
def P3786690984228751965.Spec : Prop :=
  ∀ n, P3786690984228751965.a n = A255302 n

end A255302

/-! ## A255302.P4896244911329019339

`A350786(A255298(n))`
-/

namespace A255302.P4896244911329019339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350786 (A255298 n).toNat

end

end A255302.P4896244911329019339

namespace A255302

/-- `A350786(A255298(n))` -/
def P4896244911329019339.Spec : Prop :=
  ∀ n, P4896244911329019339.a n = A255302 n

end A255302

/-! ## A255302.P13379499805745447584

`A194443(A255300(n))`
-/

namespace A255302.P13379499805745447584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194443 (A255300 n).toNat

end

end A255302.P13379499805745447584

namespace A255302

/-- `A194443(A255300(n))` -/
def P13379499805745447584.Spec : Prop :=
  ∀ n, P13379499805745447584.a n = A255302 n

end A255302

/-! ## A255302.P6601610863616444018

`A003958(A072272(n)*A140513(3*n))`
-/

namespace A255302.P6601610863616444018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A072272 n * A140513 (3 * n)).toNat

end

end A255302.P6601610863616444018

namespace A255302

/-- `A003958(A072272(n)*A140513(3*n))` -/
def P6601610863616444018.Spec : Prop :=
  ∀ n, P6601610863616444018.a n = A255302 n

end A255302

/-!
# A255303: a(n) = A255302(2^n - 1).

The programs for A255303, the canonical program `A255303.P16818719783053995778` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255303 has offset 0).

The definition of A255303 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255303.P16818719783053995778

`5*a(n-1)-6*a(n-2)+2*a(n-3)+4*a(n-4)` with `a(0)=1, a(1)=4, a(2)=16, a(3)=60`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255303

/-- `5*a(n-1)-6*a(n-2)+2*a(n-3)+4*a(n-4)` -/
def P16818719783053995778.Spec : Prop :=
  ∀ n, P16818719783053995778.a n = A255303 n

theorem P16818719783053995778.correct : P16818719783053995778.Spec := by
  intro n
  simp only [A255303]

end A255303

/-! ## A255303.P12672050181021332942

`A255302(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255303.P12672050181021332942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255302 (2 ^ n - 1)

end

end A255303.P12672050181021332942

namespace A255303

/-- `A255302(2^n-1)` -/
def P12672050181021332942.Spec : Prop :=
  ∀ n, P12672050181021332942.a n = A255303 n

end A255303

/-! ## A255303.P3788518690279570798

`record[A255302(A173787(n))]`
-/

namespace A255303.P3788518690279570798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255302 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255303.P3788518690279570798

namespace A255303

/-- `record[A255302(A173787(n))]` -/
def P3788518690279570798.Spec : Prop :=
  ∀ n, P3788518690279570798.a n = A255303 n

end A255303

/-! ## A255303.P16344005922763976778

`record[A255302(A232751(n))]`
-/

namespace A255303.P16344005922763976778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255302 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255303.P16344005922763976778

namespace A255303

/-- `record[A255302(A232751(n))]` -/
def P16344005922763976778.Spec : Prop :=
  ∀ n, P16344005922763976778.a n = A255303 n

end A255303

/-! ## A255303.P5496530746954543585

`record[A255302(A255565(n))]`
-/

namespace A255303.P5496530746954543585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255302 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255303.P5496530746954543585

namespace A255303

/-- `record[A255302(A255565(n))]` -/
def P5496530746954543585.Spec : Prop :=
  ∀ n, P5496530746954543585.a n = A255303 n

end A255303

/-!
# A255304: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 117 when started with a single ON cell.

The programs for A255304, the canonical program `A255304.P6714145224392508375` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255304 has offset 0).

The definition of A255304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255304.P6714145224392508375

`∏{e}[A278222(n), A255442(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A255304

/-- `∏{e}[A278222(n), A255442(#)]` -/
def P6714145224392508375.Spec : Prop :=
  ∀ n, P6714145224392508375.a n = A255304 n

theorem P6714145224392508375.correct : P6714145224392508375.Spec := by
  intro n
  simp only [A255304]

end A255304

/-! ## A255304.P5409490917436853525

`∏{e}[A005940(n+1), A255442(#)]`
-/

namespace A255304.P5409490917436853525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255442 (Nat.factorization (f1 n).natAbs p)

end

end A255304.P5409490917436853525

namespace A255304

/-- `∏{e}[A005940(n+1), A255442(#)]` -/
def P5409490917436853525.Spec : Prop :=
  ∀ n, P5409490917436853525.a n = A255304 n

end A255304

/-! ## A255304.P9256291129157827750

`∏{e}[A332815(n), A255442(#)]`
-/

namespace A255304.P9256291129157827750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255442 (Nat.factorization (f1 n).natAbs p)

end

end A255304.P9256291129157827750

namespace A255304

/-- `∏{e}[A332815(n), A255442(#)]` -/
def P9256291129157827750.Spec : Prop :=
  ∀ n, P9256291129157827750.a n = A255304 n

end A255304

/-!
# A255307: Concatenation of the first n entries of the difference sequence of prime numbers (see A001223).

The programs for A255307, there is no canonical definition to state claims against.
-/

/-! ## A255307.P4872662592828216013

`A333275(A012248(n))+A113574(n+1)`
-/

namespace A255307.P4872662592828216013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333275 (A012248 n).toNat + A113574 (n + 1)

end

end A255307.P4872662592828216013

/-! ## A255307.P15222578960153568720

`A340851(A113611(n+1))+A113574(n+1)`
-/

namespace A255307.P15222578960153568720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340851 (A113611 (n + 1)).toNat + A113574 (n + 1)

end

end A255307.P15222578960153568720

/-! ## A255307.P9393944242575798251

`A113602(A113595(n+2))+A113574(n+1)`
-/

namespace A255307.P9393944242575798251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113602 (A113595 (n + 2)).toNat + A113574 (n + 1)

end

end A255307.P9393944242575798251

/-! ## A255307.P2117369371795663011

`A050361(A048373(n+1))*A113574(n+1)`
-/

namespace A255307.P2117369371795663011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A048373 (n + 1)).toNat * A113574 (n + 1)

end

end A255307.P2117369371795663011

/-!
# A255308: Number of times log_2 can be applied to n until the result is not a power of 2. Here log_2 means the base-2 logarithm.

The programs for A255308, the canonical program `A255308.P13716518925612893549` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255308 has offset 0).

The definition of A255308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255308.P13716518925612893549

`Δ[a(ceil(log2(n)))+n]-1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255308

/-- `Δ[a(ceil(log2(n)))+n]-1` -/
def P13716518925612893549.Spec : Prop :=
  ∀ n, P13716518925612893549.a n = A255308 n

theorem P13716518925612893549.correct : P13716518925612893549.Spec := by
  intro n
  simp only [A255308]

end A255308

/-! ## A255308.P8321073222326764489

`A293668(n)-1`
-/

namespace A255308.P8321073222326764489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 n - 1

end

end A255308.P8321073222326764489

namespace A255308

/-- `A293668(n)-1` -/
def P8321073222326764489.Spec : Prop :=
  ∀ n, P8321073222326764489.a n = A255308 n

theorem P8321073222326764489.correct : P8321073222326764489.Spec := by
  intro n
  simp only [A255308, Nat.add_sub_cancel, A255308.P8321073222326764489.a, A255308.P13716518925612893549.f1, A255308.P13716518925612893549.a, A293668, A293668.P14676330596261024754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255308

/-! ## A255308.P11340069549344462154

`A078442(A358506(n+1))`
-/

namespace A255308.P11340069549344462154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078442 (A358506 (n + 1)).toNat

end

end A255308.P11340069549344462154

namespace A255308

/-- `A078442(A358506(n+1))` -/
def P11340069549344462154.Spec : Prop :=
  ∀ n, P11340069549344462154.a n = A255308 n

end A255308

/-! ## A255308.P13489589945172321819

`A001538(n)%A293668(n)`
-/

namespace A255308.P13489589945172321819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A293668 n)

end

end A255308.P13489589945172321819

namespace A255308

/-- `A001538(n)%A293668(n)` -/
def P13489589945172321819.Spec : Prop :=
  ∀ n, P13489589945172321819.a n = A255308 n

end A255308

/-! ## A255308.P6087383046011744415

`A002146(n)%A293668(n)`
-/

namespace A255308.P6087383046011744415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002146 n) (A293668 n)

end

end A255308.P6087383046011744415

namespace A255308

/-- `A002146(n)%A293668(n)` -/
def P6087383046011744415.Spec : Prop :=
  ∀ n, P6087383046011744415.a n = A255308 n

end A255308

/-! ## A255308.P16280306856246296807

`A007904(n)%A293668(n)`
-/

namespace A255308.P16280306856246296807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007904 n) (A293668 n)

end

end A255308.P16280306856246296807

namespace A255308

/-- `A007904(n)%A293668(n)` -/
def P16280306856246296807.Spec : Prop :=
  ∀ n, P16280306856246296807.a n = A255308 n

end A255308

/-! ## A255308.P4774942900109072299

`A009941(n)%A293668(n)`
-/

namespace A255308.P4774942900109072299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009941 n) (A293668 n)

end

end A255308.P4774942900109072299

namespace A255308

/-- `A009941(n)%A293668(n)` -/
def P4774942900109072299.Spec : Prop :=
  ∀ n, P4774942900109072299.a n = A255308 n

end A255308

/-! ## A255308.P3099939298709936010

`A031935(n)%A293668(n)`
-/

namespace A255308.P3099939298709936010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031935 n) (A293668 n)

end

end A255308.P3099939298709936010

namespace A255308

/-- `A031935(n)%A293668(n)` -/
def P3099939298709936010.Spec : Prop :=
  ∀ n, P3099939298709936010.a n = A255308 n

end A255308

/-! ## A255308.P1358243690398464667

`A002515(n+1)%A293668(n)`
-/

namespace A255308.P1358243690398464667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002515 (n + 1)) (A293668 n)

end

end A255308.P1358243690398464667

namespace A255308

/-- `A002515(n+1)%A293668(n)` -/
def P1358243690398464667.Spec : Prop :=
  ∀ n, P1358243690398464667.a n = A255308 n

end A255308

/-! ## A255308.P15183738789158931477

`A003961(n+1)%A293668(n)`
-/

namespace A255308.P15183738789158931477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003961 (n + 1)) (A293668 n)

end

end A255308.P15183738789158931477

namespace A255308

/-- `A003961(n+1)%A293668(n)` -/
def P15183738789158931477.Spec : Prop :=
  ∀ n, P15183738789158931477.a n = A255308 n

end A255308

/-! ## A255308.P8603059668659515488

`A005384(n+1)%A293668(n)`
-/

namespace A255308.P8603059668659515488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005384 (n + 1)) (A293668 n)

end

end A255308.P8603059668659515488

namespace A255308

/-- `A005384(n+1)%A293668(n)` -/
def P8603059668659515488.Spec : Prop :=
  ∀ n, P8603059668659515488.a n = A255308 n

end A255308

/-! ## A255308.P15444405052158296671

`A126435(n+1)%A293668(n)`
-/

namespace A255308.P15444405052158296671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126435 (n + 1)) (A293668 n)

end

end A255308.P15444405052158296671

namespace A255308

/-- `A126435(n+1)%A293668(n)` -/
def P15444405052158296671.Spec : Prop :=
  ∀ n, P15444405052158296671.a n = A255308 n

end A255308

/-! ## A255308.P6253338751858538725

`A192228(n+1)%A293668(n)`
-/

namespace A255308.P6253338751858538725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192228 (n + 1)) (A293668 n)

end

end A255308.P6253338751858538725

namespace A255308

/-- `A192228(n+1)%A293668(n)` -/
def P6253338751858538725.Spec : Prop :=
  ∀ n, P6253338751858538725.a n = A255308 n

end A255308

/-! ## A255308.P5159650931309247312

`A127229(n+5)%A293668(n)`
-/

namespace A255308.P5159650931309247312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A293668 n)

end

end A255308.P5159650931309247312

namespace A255308

/-- `A127229(n+5)%A293668(n)` -/
def P5159650931309247312.Spec : Prop :=
  ∀ n, P5159650931309247312.a n = A255308 n

end A255308

/-! ## A255308.P13381153558034088748

`A293668(∑{d}[n, (n+1)%#])%A293668(n)`
-/

namespace A255308.P13381153558034088748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293668 (∑ d ∈ Nat.divisors (f1 n), (n + 1) % d)) (A293668 n)

end

end A255308.P13381153558034088748

namespace A255308

/-- `A293668(∑{d}[n, (n+1)%#])%A293668(n)` -/
def P13381153558034088748.Spec : Prop :=
  ∀ n, P13381153558034088748.a n = A255308 n

end A255308

/-! ## A255308.P526203598540065318

`A139843(A185543(n+3))%A293668(n)`
-/

namespace A255308.P526203598540065318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139843 (A185543 (n + 3)).toNat) (A293668 n)

end

end A255308.P526203598540065318

namespace A255308

/-- `A139843(A185543(n+3))%A293668(n)` -/
def P526203598540065318.Spec : Prop :=
  ∀ n, P526203598540065318.a n = A255308 n

end A255308

/-! ## A255308.P9117314939030676522

`A139843(A048149(n))%A293668(n)`
-/

namespace A255308.P9117314939030676522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139843 (A048149 n).toNat) (A293668 n)

end

end A255308.P9117314939030676522

namespace A255308

/-- `A139843(A048149(n))%A293668(n)` -/
def P9117314939030676522.Spec : Prop :=
  ∀ n, P9117314939030676522.a n = A255308 n

end A255308

/-! ## A255308.P3680037505039754931

`A349029(n+1)%A293668(n)`
-/

namespace A255308.P3680037505039754931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349029 (n + 1)) (A293668 n)

end

end A255308.P3680037505039754931

namespace A255308

/-- `A349029(n+1)%A293668(n)` -/
def P3680037505039754931.Spec : Prop :=
  ∀ n, P3680037505039754931.a n = A255308 n

end A255308

/-! ## A255308.P8971901773212696999

`A106856(2*n+3)%A293668(n)`
-/

namespace A255308.P8971901773212696999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106856 (2 * n + 3)) (A293668 n)

end

end A255308.P8971901773212696999

namespace A255308

/-- `A106856(2*n+3)%A293668(n)` -/
def P8971901773212696999.Spec : Prop :=
  ∀ n, P8971901773212696999.a n = A255308 n

end A255308

/-! ## A255308.P11956237884093815133

`A004051(n+1)%A293668(n)`
-/

namespace A255308.P11956237884093815133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004051 (n + 1)) (A293668 n)

end

end A255308.P11956237884093815133

namespace A255308

/-- `A004051(n+1)%A293668(n)` -/
def P11956237884093815133.Spec : Prop :=
  ∀ n, P11956237884093815133.a n = A255308 n

end A255308

/-!
# A255309: Number of times log_2 can be applied to n until the result is either 1 or not a power of 2. Here log_2 means the base-2 logarithm.

The programs for A255309, the canonical program `A255309.P7844363849307349328` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255309 has offset 0).

The definition of A255309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255309.P7844363849307349328

`(a(∑{e}[n, #])+1)*char[2^n]` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255309

/-- `(a(∑{e}[n, #])+1)*char[2^n]` -/
def P7844363849307349328.Spec : Prop :=
  ∀ n, (P7844363849307349328.a n : ℤ) = A255309 n

theorem P7844363849307349328.correct : P7844363849307349328.Spec := by
  intro n
  simp only [A255309]

end A255309

/-! ## A255309.P10783412449990593952

`(11*A076397(n+1))%A293668(n)`
-/

namespace A255309.P10783412449990593952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (11 * A076397 (n + 1)) (A293668 n)

end

end A255309.P10783412449990593952

namespace A255309

/-- `(11*A076397(n+1))%A293668(n)` -/
def P10783412449990593952.Spec : Prop :=
  ∀ n, P10783412449990593952.a n = A255309 n

end A255309

/-! ## A255309.P13359811289617107240

`A080412(A276010(n))%A293668(n)`
-/

namespace A255309.P13359811289617107240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080412 (A276010 n).toNat) (A293668 n)

end

end A255309.P13359811289617107240

namespace A255309

/-- `A080412(A276010(n))%A293668(n)` -/
def P13359811289617107240.Spec : Prop :=
  ∀ n, P13359811289617107240.a n = A255309 n

end A255309

/-! ## A255309.P15498286456654379775

`(A008619(n)-A010051(n+1))%A293668(n)`
-/

namespace A255309.P15498286456654379775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 n - A010051 (n + 1)) (A293668 n)

end

end A255309.P15498286456654379775

namespace A255309

/-- `(A008619(n)-A010051(n+1))%A293668(n)` -/
def P15498286456654379775.Spec : Prop :=
  ∀ n, P15498286456654379775.a n = A255309 n

end A255309

/-! ## A255309.P9872488440100069094

`A145519(n)%A293668(n)`
-/

namespace A255309.P9872488440100069094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145519 n) (A293668 n)

end

end A255309.P9872488440100069094

namespace A255309

/-- `A145519(n)%A293668(n)` -/
def P9872488440100069094.Spec : Prop :=
  ∀ n, P9872488440100069094.a n = A255309 n

end A255309

/-! ## A255309.P3691863090804469319

`A042632(n)%A293668(n)`
-/

namespace A255309.P3691863090804469319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042632 n) (A293668 n)

end

end A255309.P3691863090804469319

namespace A255309

/-- `A042632(n)%A293668(n)` -/
def P3691863090804469319.Spec : Prop :=
  ∀ n, P3691863090804469319.a n = A255309 n

end A255309

/-! ## A255309.P7740042864392105964

`A048579(n)%A293668(n)`
-/

namespace A255309.P7740042864392105964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048579 n) (A293668 n)

end

end A255309.P7740042864392105964

namespace A255309

/-- `A048579(n)%A293668(n)` -/
def P7740042864392105964.Spec : Prop :=
  ∀ n, P7740042864392105964.a n = A255309 n

end A255309

/-! ## A255309.P7564857391990984033

`A041450(n)%A293668(n)`
-/

namespace A255309.P7564857391990984033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041450 n) (A293668 n)

end

end A255309.P7564857391990984033

namespace A255309

/-- `A041450(n)%A293668(n)` -/
def P7564857391990984033.Spec : Prop :=
  ∀ n, P7564857391990984033.a n = A255309 n

end A255309

/-! ## A255309.P5504419028217521300

`A277343(n+1)%A293668(n)`
-/

namespace A255309.P5504419028217521300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277343 (n + 1)) (A293668 n)

end

end A255309.P5504419028217521300

namespace A255309

/-- `A277343(n+1)%A293668(n)` -/
def P5504419028217521300.Spec : Prop :=
  ∀ n, P5504419028217521300.a n = A255309 n

end A255309

/-! ## A255309.P14408613755017176592

`A105633(n)%A293668(n)`
-/

namespace A255309.P14408613755017176592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105633 n) (A293668 n)

end

end A255309.P14408613755017176592

namespace A255309

/-- `A105633(n)%A293668(n)` -/
def P14408613755017176592.Spec : Prop :=
  ∀ n, P14408613755017176592.a n = A255309 n

end A255309

/-! ## A255309.P13086302847303126544

`A042561(n)%A293668(n)`
-/

namespace A255309.P13086302847303126544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042561 n) (A293668 n)

end

end A255309.P13086302847303126544

namespace A255309

/-- `A042561(n)%A293668(n)` -/
def P13086302847303126544.Spec : Prop :=
  ∀ n, P13086302847303126544.a n = A255309 n

end A255309

/-! ## A255309.P4159144772562306568

`and(A075660(n+1), A191606(n))`
-/

namespace A255309.P4159144772562306568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075660 (n + 1)) (A191606 n)

end

end A255309.P4159144772562306568

namespace A255309

/-- `and(A075660(n+1), A191606(n))` -/
def P4159144772562306568.Spec : Prop :=
  ∀ n, P4159144772562306568.a n = A255309 n

end A255309

/-! ## A255309.P12473118381414812733

`and(A076423(n+1), A191606(n))`
-/

namespace A255309.P12473118381414812733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A076423 (n + 1)) (A191606 n)

end

end A255309.P12473118381414812733

namespace A255309

/-- `and(A076423(n+1), A191606(n))` -/
def P12473118381414812733.Spec : Prop :=
  ∀ n, P12473118381414812733.a n = A255309 n

end A255309

/-! ## A255309.P13644429461456999706

`A077960(n)%A293668(n)`
-/

namespace A255309.P13644429461456999706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077960 n) (A293668 n)

end

end A255309.P13644429461456999706

namespace A255309

/-- `A077960(n)%A293668(n)` -/
def P13644429461456999706.Spec : Prop :=
  ∀ n, P13644429461456999706.a n = A255309 n

end A255309

/-! ## A255309.P10224293403847728428

`A104872(n)%A293668(n)`
-/

namespace A255309.P10224293403847728428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104872 n) (A293668 n)

end

end A255309.P10224293403847728428

namespace A255309

/-- `A104872(n)%A293668(n)` -/
def P10224293403847728428.Spec : Prop :=
  ∀ n, P10224293403847728428.a n = A255309 n

end A255309

/-! ## A255309.P4309774722692667576

`A149814(n)%A293668(n)`
-/

namespace A255309.P4309774722692667576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A149814 n) (A293668 n)

end

end A255309.P4309774722692667576

namespace A255309

/-- `A149814(n)%A293668(n)` -/
def P4309774722692667576.Spec : Prop :=
  ∀ n, P4309774722692667576.a n = A255309 n

end A255309

/-!
# A255310: Positive integers not the sum of iterated binary logs.

The programs for A255310, there is no canonical definition to state claims against.
-/

/-! ## A255310.P1204206590043298354

`comp[a(floor(log2(n)))+n]` with `a(0)=0`
-/

namespace A255310.P1204206590043298354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (Nat.log 2 n) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A255310.P1204206590043298354

/-! ## A255310.P3099700288750642841

`comp[a(ceil(log2(2*n))-1)+n-1]` with `a(0)=0`
-/

namespace A255310.P3099700288750642841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (⌈Real.logb 2 (2 * n : ℝ)⌉ - 1).toNat + (n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A255310.P3099700288750642841

/-! ## A255310.P12991967387332027210

`A001316(A025565(n+1)+n)+n`
-/

namespace A255310.P12991967387332027210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A025565 (n + 1) + (n : ℤ)).toNat + (n : ℤ)

end

end A255310.P12991967387332027210

/-! ## A255310.P16037693666856565061

`A062399(A062399(n))+A000079(A078881(n+1))`
-/

namespace A255310.P16037693666856565061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062399 (A062399 n).toNat + A000079 (A078881 (n + 1)).toNat

end

end A255310.P16037693666856565061

/-!
# A255311: Decimal expansion of the prime gap constant (concatenate the sizes of prime gaps, A001223).

The programs for A255311, there is no canonical definition to state claims against.
-/

/-! ## A255311.P9620229966086331441

`Δ[p?[A140297(n+1)]]%13`
-/

namespace A255311.P9620229966086331441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140297 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 13

end

end A255311.P9620229966086331441

/-! ## A255311.P15664464337228951504

`Δ[p?[A267000(n+2)]]%13`
-/

namespace A255311.P15664464337228951504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267000 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 13

end

end A255311.P15664464337228951504

/-! ## A255311.P16454167852956530255

`A346240(p?[round(8*n/7)]²)%13`
-/

namespace A255311.P16454167852956530255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346240 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat) 13

end

end A255311.P16454167852956530255

/-! ## A255311.P14272242730465148780

`A001223(n+1)%A072519((n+1)/∏{p}[n+1, #])`
-/

namespace A255311.P14272242730465148780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (n + 1)) (A072519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat)

end

end A255311.P14272242730465148780

/-! ## A255311.P7900633240512621781

`A001223(n+1)%A001414(A059154(n))`
-/

namespace A255311.P7900633240512621781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (n + 1)) (A001414 (A059154 n).toNat)

end

end A255311.P7900633240512621781

/-!
# A255312: Positive integers m for which the m-th row of A088643 in reverse agrees with the first m terms of A132075.

The programs for A255312, there is no canonical definition to state claims against.
-/

/-! ## A255312.P9997094400898211323

`∑[A321724(∑[A313260(n)])]`
-/

namespace A255312.P9997094400898211323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313260 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321724 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255312.P9997094400898211323

/-! ## A255312.P5728327205563464739

`∑[A321724(∑[A313267(n)])]`
-/

namespace A255312.P5728327205563464739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313267 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321724 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255312.P5728327205563464739

/-! ## A255312.P10909224264736058817

`∑[A266187(A247026(2*n))]`
-/

namespace A255312.P10909224264736058817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266187 (A247026 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255312.P10909224264736058817

/-! ## A255312.P18185178707060149141

`lt[A279785(n), A005940(A082810(n+1))]`
-/

namespace A255312.P18185178707060149141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279785 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A082810 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A255312.P18185178707060149141

/-!
# A255314: Prime numbers of the form k*(k+1) + (k*(k+1))^2 + 1.

The programs for A255314, there is no canonical definition to state claims against.
-/

/-! ## A255314.P17514409824230494349

`record[A108154(A002061(n+2))]`
-/

namespace A255314.P17514409824230494349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (A002061 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255314.P17514409824230494349

/-! ## A255314.P2076922093108063707

`record[A108154(A028387(n)+2)]`
-/

namespace A255314.P2076922093108063707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (A028387 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255314.P2076922093108063707

/-! ## A255314.P10758607561001602510

`record[A108154(∑[A051755(n+2)])]`
-/

namespace A255314.P10758607561001602510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108154 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255314.P10758607561001602510

/-! ## A255314.P3121258576206065474

`A081256(∩[n²+1+n, A055494(n+2)])`
-/

namespace A255314.P3121258576206065474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A255314.P3121258576206065474

/-! ## A255314.P10014772237905427332

`A002061(∩[A002061(n+1), A055494(n+1)])`
-/

namespace A255314.P10014772237905427332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A255314.P10014772237905427332

/-!
# A255315: Lower triangular matrix describing the shape of a half hyperbola in the Dirichlet divisor problem.

The programs for A255315, there is no canonical definition to state claims against.
-/

/-! ## A255315.P892296944923517226

`floor(ratio[A035214(A276974(n))])`
-/

namespace A255315.P892296944923517226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A276974 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A255315.P892296944923517226

/-! ## A255315.P12011036482292115075

`Δ[A020705(A035214(A276974(n))+n)]`
-/

namespace A255315.P12011036482292115075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A035214 (A276974 n).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255315.P12011036482292115075

/-! ## A255315.P2964975681335689039

`Δ[A020710(A035214(A276974(n))+n)]`
-/

namespace A255315.P2964975681335689039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A035214 (A276974 n).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255315.P2964975681335689039

/-! ## A255315.P4757124786739402337

`A036225(n)+Δ[A035214(A276974(n))]`
-/

namespace A255315.P4757124786739402337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A276974 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n + (f1 (n + 1) - f1 n)

end

end A255315.P4757124786739402337

/-! ## A255315.P5495589200785162790

`Δ[A010054(A276974(n))]+A000108(n²%(n+1))`
-/

namespace A255315.P5495589200785162790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A276974 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000108 (n ^ 2 % (n + 1))

end

end A255315.P5495589200785162790

/-!
# A255316: Distinct terms in triangle A255313, table read by rows.

The programs for A255316, there is no canonical definition to state claims against.
-/

/-! ## A255316.P15912957321083123360

`p?[A171172(lt[A171175(n), n])]`
-/

namespace A255316.P15912957321083123360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171175 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171172 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255316.P15912957321083123360

/-! ## A255316.P17056196544595041739

`p?[A171173(lt[A171175(n), n])]`
-/

namespace A255316.P17056196544595041739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171175 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171173 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255316.P17056196544595041739

/-! ## A255316.P7020377661829600592

`p?[A133232(2*n+3)%A318401(n+1)]`
-/

namespace A255316.P7020377661829600592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133232 (2 * n + 3)) (A318401 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255316.P7020377661829600592

/-! ## A255316.P17878150257454717937

`p?[A133232(2*(n+1))%A133208(2*n+1)]`
-/

namespace A255316.P17878150257454717937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133232 (2 * (n + 1))) (A133208 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255316.P17878150257454717937

/-!
# A255317: Expansion of psi(-x^3)^2 / chi(-x) in powers of x where psi(), chi() are Ramanujan theta functions.

The programs for A255317, the canonical program `A255317.P9121371679298329129` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255317 has offset 0).

The definition of A255317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255317.P9121371679298329129

`A033761(3*n+2)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A255317

/-- `A033761(3*n+2)` -/
def P9121371679298329129.Spec : Prop :=
  ∀ n, P9121371679298329129.a n = A255317 n

theorem P9121371679298329129.correct : P9121371679298329129.Spec := by
  intro n
  simp only [A255317]

end A255317

/-! ## A255317.P17123985861953083143

`A007095(A033761(Δ[n²]+n+1))`
-/

namespace A255317.P17123985861953083143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A033761 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ)).toNat).toNat

end

end A255317.P17123985861953083143

namespace A255317

/-- `A007095(A033761(Δ[n²]+n+1))` -/
def P17123985861953083143.Spec : Prop :=
  ∀ n, P17123985861953083143.a n = A255317 n

end A255317

/-! ## A255317.P11982531144085344325

`A137564(A033761(Δ[n²]+1+n))`
-/

namespace A255317.P11982531144085344325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A033761 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1 + (n : ℤ)).toNat).toNat

end

end A255317.P11982531144085344325

namespace A255317

/-- `A137564(A033761(Δ[n²]+1+n))` -/
def P11982531144085344325.Spec : Prop :=
  ∀ n, P11982531144085344325.a n = A255317 n

end A255317

/-! ## A255317.P5866630349738041017

`A216282(Δ[A228138(Δ[n²])])`
-/

namespace A255317.P5866630349738041017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228138 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (f1 (n + 1) - f1 n).toNat

end

end A255317.P5866630349738041017

namespace A255317

/-- `A216282(Δ[A228138(Δ[n²])])` -/
def P5866630349738041017.Spec : Prop :=
  ∀ n, P5866630349738041017.a n = A255317 n

end A255317

/-! ## A255317.P15832090913055388519

`A216282(2*A017641(n)-1)`
-/

namespace A255317.P15832090913055388519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (2 * A017641 n - 1).toNat

end

end A255317.P15832090913055388519

namespace A255317

/-- `A216282(2*A017641(n)-1)` -/
def P15832090913055388519.Spec : Prop :=
  ∀ n, P15832090913055388519.a n = A255317 n

end A255317

/-! ## A255317.P9485598447824359954

`A216282(A017641(n)+A017641(n)-1)`
-/

namespace A255317.P9485598447824359954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (A017641 n + (A017641 n - 1)).toNat

end

end A255317.P9485598447824359954

namespace A255317

/-- `A216282(A017641(n)+A017641(n)-1)` -/
def P9485598447824359954.Spec : Prop :=
  ∀ n, P9485598447824359954.a n = A255317 n

end A255317

/-! ## A255317.P17175814553046549128

`A216282(A017641(n)-(1-A017641(n)))`
-/

namespace A255317.P17175814553046549128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (A017641 n - (1 - A017641 n)).toNat

end

end A255317.P17175814553046549128

namespace A255317

/-- `A216282(A017641(n)-(1-A017641(n)))` -/
def P17175814553046549128.Spec : Prop :=
  ∀ n, P17175814553046549128.a n = A255317 n

end A255317

/-! ## A255317.P10797464982120527298

`A216282(Δ[2*A228138(2*n+1)])`
-/

namespace A255317.P10797464982120527298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A228138 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (f1 (n + 1) - f1 n).toNat

end

end A255317.P10797464982120527298

namespace A255317

/-- `A216282(Δ[2*A228138(2*n+1)])` -/
def P10797464982120527298.Spec : Prop :=
  ∀ n, P10797464982120527298.a n = A255317 n

end A255317

/-! ## A255317.P12189282282627849687

`A255320(8*n)`
-/

namespace A255317.P12189282282627849687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255320 (8 * n)

end

end A255317.P12189282282627849687

namespace A255317

/-- `A255320(8*n)` -/
def P12189282282627849687.Spec : Prop :=
  ∀ n, P12189282282627849687.a n = A255317 n

end A255317

/-! ## A255317.P435691626209708065

`A256574(8*n)`
-/

namespace A255317.P435691626209708065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256574 (8 * n)

end

end A255317.P435691626209708065

namespace A255317

/-- `A256574(8*n)` -/
def P435691626209708065.Spec : Prop :=
  ∀ n, P435691626209708065.a n = A255317 n

end A255317

/-! ## A255317.P17361622382756200813

`A286813(3*(3*n+2))`
-/

namespace A255317.P17361622382756200813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286813 (3 * (3 * n + 2))

end

end A255317.P17361622382756200813

namespace A255317

/-- `A286813(3*(3*n+2))` -/
def P17361622382756200813.Spec : Prop :=
  ∀ n, P17361622382756200813.a n = A255317 n

end A255317

/-! ## A255317.P10897330364961370683

`A027414(A350051(n))`
-/

namespace A255317.P10897330364961370683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027414 (A350051 n).toNat

end

end A255317.P10897330364961370683

namespace A255317

/-- `A027414(A350051(n))` -/
def P10897330364961370683.Spec : Prop :=
  ∀ n, P10897330364961370683.a n = A255317 n

end A255317

/-!
# A255318: Expansion of psi(x^3) * f(x^2, x^4) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A255318, the canonical program `A255318.P948709547054149984` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255318 has offset 0).

The definition of A255318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255318.P948709547054149984

`A033761(3*n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A255318

/-- `A033761(3*n+1)` -/
def P948709547054149984.Spec : Prop :=
  ∀ n, P948709547054149984.a n = A255318 n

theorem P948709547054149984.correct : P948709547054149984.Spec := by
  intro n
  simp only [A255318]

end A255318

/-! ## A255318.P8703933862272564290

`A033761(A016777(n))%11`
-/

namespace A255318.P8703933862272564290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033761 (A016777 n).toNat) 11

end

end A255318.P8703933862272564290

namespace A255318

/-- `A033761(A016777(n))%11` -/
def P8703933862272564290.Spec : Prop :=
  ∀ n, P8703933862272564290.a n = A255318 n

end A255318

/-! ## A255318.P6105212732977933392

`A137564(A033761(n+1+n+n))`
-/

namespace A255318.P6105212732977933392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A033761 (n + 1 + n + n)).toNat

end

end A255318.P6105212732977933392

namespace A255318

/-- `A137564(A033761(n+1+n+n))` -/
def P6105212732977933392.Spec : Prop :=
  ∀ n, P6105212732977933392.a n = A255318 n

end A255318

/-! ## A255318.P12878437425343851157

`A216282(A017641(2*n)+1)`
-/

namespace A255318.P12878437425343851157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (A017641 (2 * n) + 1).toNat

end

end A255318.P12878437425343851157

namespace A255318

/-- `A216282(A017641(2*n)+1)` -/
def P12878437425343851157.Spec : Prop :=
  ∀ n, P12878437425343851157.a n = A255318 n

end A255318

/-! ## A255318.P10752871327121601155

`A257402(4*n)`
-/

namespace A255318.P10752871327121601155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257402 (4 * n)

end

end A255318.P10752871327121601155

namespace A255318

/-- `A257402(4*n)` -/
def P10752871327121601155.Spec : Prop :=
  ∀ n, P10752871327121601155.a n = A255318 n

end A255318

/-! ## A255318.P5012823520081053107

`A286813(9*n+3)`
-/

namespace A255318.P5012823520081053107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286813 (9 * n + 3)

end

end A255318.P5012823520081053107

namespace A255318

/-- `A286813(9*n+3)` -/
def P5012823520081053107.Spec : Prop :=
  ∀ n, P5012823520081053107.a n = A255318 n

end A255318

/-! ## A255318.P13523055182082962096

`A256574(A158057(n))`
-/

namespace A255318.P13523055182082962096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256574 (A158057 n).toNat

end

end A255318.P13523055182082962096

namespace A255318

/-- `A256574(A158057(n))` -/
def P13523055182082962096.Spec : Prop :=
  ∀ n, P13523055182082962096.a n = A255318 n

end A255318

/-! ## A255318.P10167861399425567470

`A027414(A348845(n))`
-/

namespace A255318.P10167861399425567470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027414 (A348845 n).toNat

end

end A255318.P10167861399425567470

namespace A255318

/-- `A027414(A348845(n))` -/
def P10167861399425567470.Spec : Prop :=
  ∀ n, P10167861399425567470.a n = A255318 n

end A255318

/-! ## A255318.P472681741044782408

`A035172(A073762(n+1)-1)/2`
-/

namespace A255318.P472681741044782408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035172 (A073762 (n + 1) - 1).toNat : ℚ) / 2

end

end A255318.P472681741044782408

namespace A255318

/-- `A035172(A073762(n+1)-1)/2` -/
def P472681741044782408.Spec : Prop :=
  ∀ n, P472681741044782408.a n = (A255318 n : ℚ)

end A255318

/-!
# A255319: Expansion of psi(x^3) * f(x, x^5) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A255319, the canonical program `A255319.P1653962225687368170` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255319 has offset 0).

The definition of A255319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255319.P14840247696918249021

`A082660(3*n+2)`
-/

namespace A255319.P14840247696918249021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (3 * n + 2)

end

end A255319.P14840247696918249021

namespace A255319

/-- `A082660(3*n+2)` -/
def P14840247696918249021.Spec : Prop :=
  ∀ n, P14840247696918249021.a n = A255319 n

end A255319

/-! ## A255319.P1653962225687368170

`A101428(3*n+2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A255319

/-- `A101428(3*n+2)` -/
def P1653962225687368170.Spec : Prop :=
  ∀ n, P1653962225687368170.a n = A255319 n

theorem P1653962225687368170.correct : P1653962225687368170.Spec := by
  intro n
  simp only [A255319]

end A255319

/-! ## A255319.P12461783256194817520

`A112603(3*n+2)/2`
-/

namespace A255319.P12461783256194817520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112603 (3 * n + 2) : ℚ) / 2

end

end A255319.P12461783256194817520

namespace A255319

/-- `A112603(3*n+2)/2` -/
def P12461783256194817520.Spec : Prop :=
  ∀ n, P12461783256194817520.a n = (A255319 n : ℚ)

end A255319

/-! ## A255319.P6971089499241326874

`A008619(A112603(3*n+2))-A057427(n+1)`
-/

namespace A255319.P6971089499241326874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A112603 (3 * n + 2)).toNat - A057427 (n + 1)

end

end A255319.P6971089499241326874

namespace A255319

/-- `A008619(A112603(3*n+2))-A057427(n+1)` -/
def P6971089499241326874.Spec : Prop :=
  ∀ n, P6971089499241326874.a n = A255319 n

end A255319

/-! ## A255319.P13963745768438935454

`A216282(4*(6*n+4)+1)`
-/

namespace A255319.P13963745768438935454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (4 * (6 * n + 4) + 1)

end

end A255319.P13963745768438935454

namespace A255319

/-- `A216282(4*(6*n+4)+1)` -/
def P13963745768438935454.Spec : Prop :=
  ∀ n, P13963745768438935454.a n = A255319 n

theorem P13963745768438935454.correct : P13963745768438935454.Spec := by
  intro n
  simp only [A255319, Nat.add_sub_cancel, A255319.P13963745768438935454.a, A255319.P1653962225687368170.a, A101428, A101428.P10351250407509594824.a, A216282, A216282.P5463168406655024554.a, A363037, A363037.P17593486041959232839.a, A374061, A374061.P16980433022031769018.a, A035185, A035185.P8037574016802671635.a, A188169, A188169.P9022130587462569637.f1, A188169.P9022130587462569637.a, A188171, A188171.P17289095504074848112.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A002654, A002654.P11574922253888480122.a, A253513, A253513.P7768194327896133816.a, A364032, A364032.P15572008137104778974.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A255319

/-! ## A255319.P918073861034108709

`A257402(4*n+1)`
-/

namespace A255319.P918073861034108709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257402 (4 * n + 1)

end

end A255319.P918073861034108709

namespace A255319

/-- `A257402(4*n+1)` -/
def P918073861034108709.Spec : Prop :=
  ∀ n, P918073861034108709.a n = A255319 n

theorem P918073861034108709.correct : P918073861034108709.Spec := by
  intro n
  simp only [A255319, Nat.add_sub_cancel, A255319.P918073861034108709.a, A255319.P1653962225687368170.a, A101428, A101428.P10351250407509594824.a, A257402, A257402.P10523308612613138728.a, A216282, A216282.P5463168406655024554.a, A363037, A363037.P17593486041959232839.a, A374061, A374061.P16980433022031769018.a, A035185, A035185.P8037574016802671635.a, A188169, A188169.P9022130587462569637.f1, A188169.P9022130587462569637.a, A188171, A188171.P17289095504074848112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255319

/-! ## A255319.P15321188989215015493

`A177413(A112603(3*n+2)^6)`
-/

namespace A255319.P15321188989215015493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177413 (A112603 (3 * n + 2) ^ 6).toNat

end

end A255319.P15321188989215015493

namespace A255319

/-- `A177413(A112603(3*n+2)^6)` -/
def P15321188989215015493.Spec : Prop :=
  ∀ n, P15321188989215015493.a n = A255319 n

end A255319

/-!
# A255320: Expansion of chi(-x) * psi(x^3) * psi(x^48) in powers of x where chi(), psi() are Ramanujan theta functions.

The programs for A255320, there is no canonical definition to state claims against.
-/

/-! ## A255320.P17486078177769894133

`(-1)^n*A256574(n)`
-/

namespace A255320.P17486078177769894133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A256574 n

end

end A255320.P17486078177769894133

/-! ## A255320.P12754644804903828211

`A256574(n)*A309873(n+1)`
-/

namespace A255320.P12754644804903828211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256574 n * A309873 (n + 1)

end

end A255320.P12754644804903828211

/-! ## A255320.P16088385524044429926

`A256574(n)/A121373(Δ[or(1, n)])`
-/

namespace A255320.P16088385524044429926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256574 n : ℚ) / (A121373 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A255320.P16088385524044429926

/-! ## A255320.P3314185659144378933

`A256574(n)/A165326(n+1)`
-/

namespace A255320.P3314185659144378933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256574 n : ℚ) / (A165326 (n + 1) : ℚ)

end

end A255320.P3314185659144378933

/-! ## A255320.P3910081126223666249

`A256574(n)/A204005(2^val(n+1, 2))`
-/

namespace A255320.P3910081126223666249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256574 n : ℚ) / (A204005 (2 ^ SequenceMachineLib.valuation (n + 1) 2) : ℚ)

end

end A255320.P3910081126223666249

/-!
# A255322: 

The programs for A255322, there is no canonical definition to state claims against.
-/

/-! ## A255322.P10920894895216968455

`∏[n²!]`
-/

namespace A255322.P10920894895216968455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A255322.P10920894895216968455

/-! ## A255322.P18294296597915947804

`exp(∑[log(n²!)])`
-/

namespace A255322.P18294296597915947804
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (Nat.factorial (n ^ 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255322.P18294296597915947804

/-! ## A255322.P5447092576209454850

`∏[∏{digits}[n, (n*#)!]]`
-/

namespace A255322.P5447092576209454850
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.factorial (n * x)).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A255322.P5447092576209454850

/-!
# A255324: Difference between the n-th Ludic number and the n-th noncomposite number: a(n) = A003309(n) - A008578(n).

The programs for A255324, there is no canonical definition to state claims against.
-/

/-! ## A255324.P5799466810741098524

`2*A255325(n+1)`
-/

namespace A255324.P5799466810741098524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255325 (n + 1)

end

end A255324.P5799466810741098524

/-! ## A255324.P8781564948720976992

`A003309(n+1)-A008578(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255324.P8781564948720976992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1) - A008578 (n + 1)

end

end A255324.P8781564948720976992

/-! ## A255324.P12102406316179086132

`A255325(A000027(n+1))+A255325(n+1)`
-/

namespace A255324.P12102406316179086132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255325 (A000027 (n + 1)).toNat + A255325 (n + 1)

end

end A255324.P12102406316179086132

/-! ## A255324.P17303347555280421284

`A003309(n+1)+A163300(n+1)-A171575(n+1)`
-/

namespace A255324.P17303347555280421284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1) + (A163300 (n + 1) - A171575 (n + 1))

end

end A255324.P17303347555280421284

/-! ## A255324.P14903583675098568675

`A003309(n+1)-A158611(n+2)`
-/

namespace A255324.P14903583675098568675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1) - A158611 (n + 2)

end

end A255324.P14903583675098568675

/-! ## A255324.P15576731272448498676

`A003309(n+1)-record[A085818(n+1)]`
-/

namespace A255324.P15576731272448498676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255324.P15576731272448498676

/-! ## A255324.P13274378112540229814

`A003309(n+1)-record[A006530(n+1)]`
-/

namespace A255324.P13274378112540229814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255324.P13274378112540229814

/-! ## A255324.P3758468188735810900

`A003309(n+1)-record[A020639(n+1)]`
-/

namespace A255324.P3758468188735810900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255324.P3758468188735810900

/-! ## A255324.P10791986135000521406

`A005843(A255325(n+1))`
-/

namespace A255324.P10791986135000521406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A255325 (n + 1)).toNat

end

end A255324.P10791986135000521406

/-! ## A255324.P12948454983496483814

`A237056(2*n+1)-A008578(n+1)`
-/

namespace A255324.P12948454983496483814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237056 (2 * n + 1) - A008578 (n + 1)

end

end A255324.P12948454983496483814

/-! ## A255324.P18221271046881801822

`A059029(A003309(n+1)%A008578(n+1))`
-/

namespace A255324.P18221271046881801822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 (Int.tmod (A003309 (n + 1)) (A008578 (n + 1))).toNat

end

end A255324.P18221271046881801822

/-! ## A255324.P2662976342908987747

`lt[A302037(n+1)², 3]+1-A008578(n+1)`
-/

namespace A255324.P2662976342908987747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ) - A008578 (n + 1)

end

end A255324.P2662976342908987747

/-! ## A255324.P2364913125982221272

`A059029((lt[A302037(n+1)², 3]+1)%A008578(n+1))`
-/

namespace A255324.P2364913125982221272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 (Int.tmod (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ) (A008578 (n + 1))).toNat

end

end A255324.P2364913125982221272

/-! ## A255324.P3120775366111873695

`A003309(n+1)-eq[1, A078898(n)]`
-/

namespace A255324.P3120775366111873695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A255324.P3120775366111873695

/-! ## A255324.P16974749465789152149

`A302025(record[A006530(n+1)])-A008578(n+1)`
-/

namespace A255324.P16974749465789152149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302025 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A008578 (n + 1)

end

end A255324.P16974749465789152149

/-! ## A255324.P11317351122534805586

`A003309(n+1)-record[A064989(n+1)]`
-/

namespace A255324.P11317351122534805586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255324.P11317351122534805586

/-! ## A255324.P14764695401510254655

`A255407(A008578(n+1))-record[A064989(n+1)]`
-/

namespace A255324.P14764695401510254655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A008578 (n + 1)).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255324.P14764695401510254655

/-! ## A255324.P17361024646724015207

`lt[A260739(n+1)², 3]+1-A008578(n+1)`
-/

namespace A255324.P17361024646724015207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ) - A008578 (n + 1)

end

end A255324.P17361024646724015207

/-! ## A255324.P8409009853616597089

`A059029((lt[A260739(n+1)², 3]+1)%A008578(n+1))`
-/

namespace A255324.P8409009853616597089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 (Int.tmod (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ) (A008578 (n + 1))).toNat

end

end A255324.P8409009853616597089

/-! ## A255324.P11107302278245507225

`record[A272565(n+1)]-A008578(n+1)`
-/

namespace A255324.P11107302278245507225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A008578 (n + 1)

end

end A255324.P11107302278245507225

/-!
# A255325: Half of the difference between the n-th Ludic number and the n-th noncomposite: a(n) = (A003309(n) - A008578(n))/2.

The programs for A255325, there is no canonical definition to state claims against.
-/

/-! ## A255325.P6939788682155091230

`A255324(n+1)/2`
-/

namespace A255325.P6939788682155091230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255324 (n + 1) : ℚ) / 2

end

end A255325.P6939788682155091230

/-! ## A255325.P10576565110491620727

`(A003309(n+1)-A008578(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255325.P10576565110491620727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003309 (n + 1) - A008578 (n + 1) : ℚ) / 2

end

end A255325.P10576565110491620727

/-! ## A255325.P10844406602300932637

`(A003309(n+1)-record[A006530(n+1)])/2`
-/

namespace A255325.P10844406602300932637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003309 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A255325.P10844406602300932637

/-! ## A255325.P7708434687390891860

`(A003309(n+1)-record[A020639(n+1)])/2`
-/

namespace A255325.P7708434687390891860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003309 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A255325.P7708434687390891860

/-! ## A255325.P16588926040320378064

`A026741(A003309(n+1)-A008578(n+1))`
-/

namespace A255325.P16588926040320378064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A003309 (n + 1) - A008578 (n + 1)).toNat

end

end A255325.P16588926040320378064

/-! ## A255325.P2091342525946254943

`A078898(A003309(n+1)-A008578(n+1))`
-/

namespace A255325.P2091342525946254943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A003309 (n + 1) - A008578 (n + 1)).toNat

end

end A255325.P2091342525946254943

/-! ## A255325.P10981576181547424501

`A026741(A003309(n+1)%A008578(n+1))`
-/

namespace A255325.P10981576181547424501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (A003309 (n + 1)) (A008578 (n + 1))).toNat

end

end A255325.P10981576181547424501

/-! ## A255325.P5176318395299330844

`A001281(A255324(n+1))`
-/

namespace A255325.P5176318395299330844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A255324 (n + 1)).toNat

end

end A255325.P5176318395299330844

/-! ## A255325.P10379554315184391438

`A032742(A255324(n+1)+2)-1`
-/

namespace A255325.P10379554315184391438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A255324 (n + 1) + 2).toNat - 1

end

end A255325.P10379554315184391438

/-! ## A255325.P6095875541785670311

`A026741(lt[A302037(n+1)², 3]+1-A008578(n+1))`
-/

namespace A255325.P6095875541785670311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ) - A008578 (n + 1)).toNat

end

end A255325.P6095875541785670311

/-! ## A255325.P15557996908634968501

`A026741((lt[A302037(n+1)², 3]+1)%A008578(n+1))`
-/

namespace A255325.P15557996908634968501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ) (A008578 (n + 1))).toNat

end

end A255325.P15557996908634968501

/-! ## A255325.P6433265194027976846

`A078898(A003309(n+1)-eq[1, A078898(n)])`
-/

namespace A255325.P6433265194027976846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A003309 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)).toNat

end

end A255325.P6433265194027976846

/-! ## A255325.P768027737312503813

`(A003309(n+1)-record[A064989(n+1)])/2`
-/

namespace A255325.P768027737312503813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003309 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A255325.P768027737312503813

/-! ## A255325.P16665809457106442347

`A078898(A003309(n+1)-record[A064989(n+1)])`
-/

namespace A255325.P16665809457106442347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A003309 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A255325.P16665809457106442347

/-! ## A255325.P3414362419867098439

`A026741(lt[A260739(n+1)², 3]+1-A008578(n+1))`
-/

namespace A255325.P3414362419867098439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ) - A008578 (n + 1)).toNat

end

end A255325.P3414362419867098439

/-! ## A255325.P334732824931967460

`A026741((lt[A260739(n+1)², 3]+1)%A008578(n+1))`
-/

namespace A255325.P334732824931967460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ) (A008578 (n + 1))).toNat

end

end A255325.P334732824931967460

/-! ## A255325.P8601800731766863484

`(record[A272565(n+1)]-A008578(n+1))/2`
-/

namespace A255325.P8601800731766863484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A008578 (n + 1) : ℚ) / 2

end

end A255325.P8601800731766863484

/-! ## A255325.P8116106590956921995

`A026741(record[A272565(n+1)]-A008578(n+1))`
-/

namespace A255325.P8116106590956921995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A008578 (n + 1)).toNat

end

end A255325.P8116106590956921995

/-! ## A255325.P13224991366192928289

`A026741(record[A272565(n+1)]%A008578(n+1))`
-/

namespace A255325.P13224991366192928289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A008578 (n + 1))).toNat

end

end A255325.P13224991366192928289

/-! ## A255325.P11870102397416874474

`A026741(record[(n+1)*A192490(n+1)]-A008578(n+1))`
-/

namespace A255325.P11870102397416874474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A192490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A008578 (n + 1)).toNat

end

end A255325.P11870102397416874474

/-!
# A255326: a(n) gives the number of steps needed to reach zero, when we start from x = n and repeatedly subtract x's squarefree kernel (A007947(x)) from it.

The programs for A255326, the canonical program `A255326.P2760968161460451827` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255326 has offset 0).

The definition of A255326 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255326.P2760968161460451827

`1+a(A066503(n))` with `a(0)=0`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A255326

/-- `1+a(A066503(n))` -/
def P2760968161460451827.Spec : Prop :=
  ∀ n, (P2760968161460451827.a n : ℤ) = A255326 n

theorem P2760968161460451827.correct : P2760968161460451827.Spec := by
  intro n
  simp only [A255326]

end A255326

/-! ## A255326.P9331516374016880628

`a(n-∏{p}[n, #])+1` with `a(0)=0`
-/

namespace A255326.P9331516374016880628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - ∏ p ∈ Nat.primeFactors (f1 n), p) + 1

end

end A255326.P9331516374016880628

namespace A255326

/-- `a(n-∏{p}[n, #])+1` -/
def P9331516374016880628.Spec : Prop :=
  ∀ n, (P9331516374016880628.a n : ℤ) = A255326 n

end A255326

/-! ## A255326.P9837272490924416347

`a(n-A007947(n))+1` with `a(0)=0`
-/

namespace A255326.P9837272490924416347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A007947 n).toNat + 1

end

end A255326.P9837272490924416347

namespace A255326

/-- `a(n-A007947(n))+1` -/
def P9837272490924416347.Spec : Prop :=
  ∀ n, (P9837272490924416347.a n : ℤ) = A255326 n

end A255326

/-! ## A255326.P11959543779833949799

`A077168(a(A066503(n)))` with `a(0)=0`
-/

namespace A255326.P11959543779833949799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A077168 (a (A066503 n).toNat).toNat

end

end A255326.P11959543779833949799

namespace A255326

/-- `A077168(a(A066503(n)))` -/
def P11959543779833949799.Spec : Prop :=
  ∀ n, P11959543779833949799.a n = A255326 n

end A255326

/-! ## A255326.P12595437441001890542

`A305079(A005010(a(n-∏{p}[n, #])))` with `a(0)=0`
-/

namespace A255326.P12595437441001890542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A305079 (A005010 (a (n - ∏ p ∈ Nat.primeFactors (f1 n), p)).toNat).toNat

end

end A255326.P12595437441001890542

namespace A255326

/-- `A305079(A005010(a(n-∏{p}[n, #])))` -/
def P12595437441001890542.Spec : Prop :=
  ∀ n, P12595437441001890542.a n = A255326 n

end A255326

/-!
# A255327: a(n) = 0 if n is in the infinite trunk of "number-of-runs beanstalk" (one of the terms of A255056), otherwise number of nodes (including leaves and the node n itself) in that finite subtree of the beanstalk.

The programs for A255327, there is no canonical definition to state claims against.
-/

/-! ## A255327.P17142762559754198149

`(5*n²)%A107286(A100175(n+1))`
-/

namespace A255327.P17142762559754198149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * n ^ 2 : ℤ) (A107286 (A100175 (n + 1)).toNat)

end

end A255327.P17142762559754198149

/-! ## A255327.P8919678024114808681

`n%A006530(A056469(A160086(n)))`
-/

namespace A255327.P8919678024114808681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A006530 (A056469 (A160086 n).toNat).toNat)

end

end A255327.P8919678024114808681

/-! ## A255327.P2382958741303693283

`A000567(n)%A020639(A344508(n+1))`
-/

namespace A255327.P2382958741303693283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000567 n) (A020639 (A344508 (n + 1)).toNat)

end

end A255327.P2382958741303693283

/-! ## A255327.P14053646437548467813

`A022267(2*n+3)%A020639(A344508(n+1))`
-/

namespace A255327.P14053646437548467813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022267 (2 * n + 3)) (A020639 (A344508 (n + 1)).toNat)

end

end A255327.P14053646437548467813

/-! ## A255327.P1045965027229813522

`A335462(A292640(3*n+1))+A000035(n)`
-/

namespace A255327.P1045965027229813522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335462 (A292640 (3 * n + 1)).toNat + A000035 n

end

end A255327.P1045965027229813522

/-!
# A255328: a(n) = total number of nodes in the finite subtrees branching "left" (to the "smaller side") from the node n in the infinite trunk of "number-of-runs beanstalk" (A255056).

The programs for A255328, there is no canonical definition to state claims against.
-/

/-! ## A255328.P8847245755636618027

`A255330(n)-A255329(n)`
-/

namespace A255328.P8847245755636618027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255330 n - A255329 n

end

end A255328.P8847245755636618027

/-! ## A255328.P5495137705140114753

`A255329(n)-A255331(n)`
-/

namespace A255328.P5495137705140114753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255329 n - A255331 n

end

end A255328.P5495137705140114753

/-! ## A255328.P9688889911509352736

`(A255330(n)-A255331(n))/2`
-/

namespace A255328.P9688889911509352736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255330 n - A255331 n : ℚ) / 2

end

end A255328.P9688889911509352736

/-! ## A255328.P7252125779660317266

`A001281(A255330(n)-A255331(n))`
-/

namespace A255328.P7252125779660317266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A255330 n - A255331 n).toNat

end

end A255328.P7252125779660317266

/-! ## A255328.P11517767272947666130

`A004525(A255330(n)-A255331(n))`
-/

namespace A255328.P11517767272947666130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A255330 n - A255331 n).toNat

end

end A255328.P11517767272947666130

/-! ## A255328.P426507544990423457

`A014682(A255330(n)-A255331(n))`
-/

namespace A255328.P426507544990423457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A255330 n - A255331 n).toNat

end

end A255328.P426507544990423457

/-!
# A255329: a(n) = total number of nodes in the finite subtrees branching "right" (to the "larger side") from the node n in the infinite trunk of "number-of-runs beanstalk" (A255056).

The programs for A255329, there is no canonical definition to state claims against.
-/

/-! ## A255329.P12379492617536154531

`A255330(n)-A255328(n)`
-/

namespace A255329.P12379492617536154531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255330 n - A255328 n

end

end A255329.P12379492617536154531

/-! ## A255329.P13307804536933009125

`A255331(n)+A255328(n)`
-/

namespace A255329.P13307804536933009125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255331 n + A255328 n

end

end A255329.P13307804536933009125

/-! ## A255329.P17419439521507863211

`(A255331(n)+A255330(n))/2`
-/

namespace A255329.P17419439521507863211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255331 n + A255330 n : ℚ) / 2

end

end A255329.P17419439521507863211

/-! ## A255329.P1200894572591654199

`A001281(A255331(n)+A255330(n))`
-/

namespace A255329.P1200894572591654199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A255331 n + A255330 n).toNat

end

end A255329.P1200894572591654199

/-! ## A255329.P1455978108381913076

`A004525(A255331(n)+A255330(n))`
-/

namespace A255329.P1455978108381913076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A255331 n + A255330 n).toNat

end

end A255329.P1455978108381913076

/-! ## A255329.P17735102802867913794

`A014682(A255331(n)+A255330(n))`
-/

namespace A255329.P17735102802867913794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A255331 n + A255330 n).toNat

end

end A255329.P17735102802867913794

/-!
# A255330: a(n) = total number of nodes in the finite subtrees branching from the node n in the infinite trunk of "number-of-runs beanstalk" (A255056).

The programs for A255330, there is no canonical definition to state claims against.
-/

/-! ## A255330.P4079417553659555949

`A255328(n)+A255329(n)`
-/

namespace A255330.P4079417553659555949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255328 n + A255329 n

end

end A255330.P4079417553659555949

/-! ## A255330.P9587361479962568304

`A255331(n)+2*A255328(n)`
-/

namespace A255330.P9587361479962568304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255331 n + 2 * A255328 n

end

end A255330.P9587361479962568304

/-! ## A255330.P17681506223788590837

`2*A255329(n)-A255331(n)`
-/

namespace A255330.P17681506223788590837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255329 n - A255331 n

end

end A255330.P17681506223788590837

/-! ## A255330.P9868997959026156351

`A255331(n)+A005843(A255328(n))`
-/

namespace A255330.P9868997959026156351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255331 n + A005843 (A255328 n).toNat

end

end A255330.P9868997959026156351

/-! ## A255330.P1319961268329603401

`A005843(A255329(n))-A255331(n)`
-/

namespace A255330.P1319961268329603401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A255329 n).toNat - A255331 n

end

end A255330.P1319961268329603401

/-!
# A255331: a(n) = A255329(n) - A255328(n).

The programs for A255331, there is no canonical definition to state claims against.
-/

/-! ## A255331.P16877658176961871878

`A255329(n)-A255328(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255331.P16877658176961871878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255329 n - A255328 n

end

end A255331.P16877658176961871878

/-! ## A255331.P12600760973784122828

`2*A255329(n)-A255330(n)`
-/

namespace A255331.P12600760973784122828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255329 n - A255330 n

end

end A255331.P12600760973784122828

/-! ## A255331.P12512745061335873740

`A255330(n)-2*A255328(n)`
-/

namespace A255331.P12512745061335873740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255330 n - 2 * A255328 n

end

end A255331.P12512745061335873740

/-! ## A255331.P5144560073730232775

`A005843(A255329(n))-A255330(n)`
-/

namespace A255331.P5144560073730232775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A255329 n).toNat - A255330 n

end

end A255331.P5144560073730232775

/-! ## A255331.P15239432696022342705

`A255330(n)-A005843(A255328(n))`
-/

namespace A255331.P15239432696022342705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255330 n - A005843 (A255328 n).toNat

end

end A255331.P15239432696022342705

/-!
# A255332: Partial sums of A255331.

The programs for A255332, there is no canonical definition to state claims against.
-/

/-! ## A255332.P878818573477007924

`a(n-1)+A255331(n)` with `a(0)=-1`
-/

namespace A255332.P878818573477007924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  a (n - 1) + A255331 n

end

end A255332.P878818573477007924

/-! ## A255332.P8229239090182288463

`∑[A255331(n)]`
-/

namespace A255332.P8229239090182288463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255332.P8229239090182288463

/-! ## A255332.P15489842528005171825

`∑[A255329(n)-A255328(n)]`
-/

namespace A255332.P15489842528005171825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255329 n - A255328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255332.P15489842528005171825

/-! ## A255332.P4159271274476953338

`∑[2*A255329(n)]-A255333(n)`
-/

namespace A255332.P4159271274476953338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A255333 n

end

end A255332.P4159271274476953338

/-! ## A255332.P5819138670223573424

`∑[A255330(n)-2*A255328(n)]`
-/

namespace A255332.P5819138670223573424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255330 n - 2 * A255328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255332.P5819138670223573424

/-! ## A255332.P10551230454097265403

`A255333(n)-∑[2*A255328(n)]`
-/

namespace A255332.P10551230454097265403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255333 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255332.P10551230454097265403

/-! ## A255332.P6089433990394164374

`∑[A005843(A255329(n))]-A255333(n)`
-/

namespace A255332.P6089433990394164374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A255329 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A255333 n

end

end A255332.P6089433990394164374

/-! ## A255332.P1867850635363327817

`∑[A255330(n)-A005843(A255328(n))]`
-/

namespace A255332.P1867850635363327817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255330 n - A005843 (A255328 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255332.P1867850635363327817

/-! ## A255332.P3321272725131581240

`A255333(n)-∑[A005843(A255328(n))]`
-/

namespace A255332.P3321272725131581240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A255328 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255333 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255332.P3321272725131581240

/-!
# A255333: Partial sums of A255330.

The programs for A255333, there is no canonical definition to state claims against.
-/

/-! ## A255333.P4306194162554904083

`a(n-1)+A255330(n)` with `a(0)=1`
-/

namespace A255333.P4306194162554904083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A255330 n

end

end A255333.P4306194162554904083

/-! ## A255333.P12812152648975542560

`∑[A255330(n)]`
-/

namespace A255333.P12812152648975542560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255333.P12812152648975542560

/-! ## A255333.P14982445113431875899

`∑[A255329(n)+A255328(n)]`
-/

namespace A255333.P14982445113431875899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255329 n + A255328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255333.P14982445113431875899

/-! ## A255333.P4263087260373016871

`A255330(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A255333.P4263087260373016871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A255330 n + a (A023443 n).toNat

end

end A255333.P4263087260373016871

/-! ## A255333.P7376256724386175480

`∑[A255331(n)+2*A255328(n)]`
-/

namespace A255333.P7376256724386175480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255331 n + 2 * A255328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255333.P7376256724386175480

/-! ## A255333.P14009877088519645489

`∑[2*A255329(n)-A255331(n)]`
-/

namespace A255333.P14009877088519645489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255329 n - A255331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255333.P14009877088519645489

/-! ## A255333.P18249398825098340611

`∑[2*A255329(n)]-A255332(n)`
-/

namespace A255333.P18249398825098340611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A255332 n

end

end A255333.P18249398825098340611

/-! ## A255333.P7425304962787902644

`∑[A255331(n)+A005843(A255328(n))]`
-/

namespace A255333.P7425304962787902644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255331 n + A005843 (A255328 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255333.P7425304962787902644

/-! ## A255333.P13830985979646242789

`∑[A005843(A255329(n))-A255331(n)]`
-/

namespace A255333.P13830985979646242789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A255329 n).toNat - A255331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255333.P13830985979646242789

/-! ## A255333.P13321000247575733598

`∑[A005843(A255329(n))]-A255332(n)`
-/

namespace A255333.P13321000247575733598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A255329 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A255332 n

end

end A255333.P13321000247575733598

/-!
# A255334: Numbers n for which there exists k > n such that A000203(k) = A000203(n) and A007947(k) = A007947(n), where A000203 gives the sum of divisors, and A007947 gives the squarefree kernel of n.

The programs for A255334, there is no canonical definition to state claims against.
-/

/-! ## A255334.P6389799366189466651

`A255424(n+1)*A255425(n+1)`
-/

namespace A255334.P6389799366189466651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255424 (n + 1) * A255425 (n + 1)

end

end A255334.P6389799366189466651

/-! ## A255334.P13449931419482496487

`A255423(n+1)*A255425(n+1)/A255426(n+1)`
-/

namespace A255334.P13449931419482496487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255423 (n + 1) * A255425 (n + 1) : ℚ) / (A255426 (n + 1) : ℚ)

end

end A255334.P13449931419482496487

/-! ## A255334.P921597831565555783

`∏{p}[A255423(n+1), #]*A255425(n+1)`
-/

namespace A255334.P921597831565555783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) * A255425 (n + 1)

end

end A255334.P921597831565555783

/-! ## A255334.P4106684571979813493

`A007947(A255423(n+1))*A255425(n+1)`
-/

namespace A255334.P4106684571979813493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A255423 (n + 1)).toNat * A255425 (n + 1)

end

end A255334.P4106684571979813493

/-!
# A255335: Numbers n for which there exists k < n such that A000203(k) = A000203(n) and A007947(k) = A007947(n), where A000203 gives the sum of divisors, and A007947 gives the squarefree kernel of n.

The programs for A255335, there is no canonical definition to state claims against.
-/

/-! ## A255335.P10735788602419000340

`record[A255423(A025280(A111251(n+1)))]`
-/

namespace A255335.P10735788602419000340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255423 (A025280 (A111251 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255335.P10735788602419000340

/-! ## A255335.P9388832426201304703

`record[A255423(A039996(3*(n+1)))]`
-/

namespace A255335.P9388832426201304703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255423 (A039996 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255335.P9388832426201304703

/-! ## A255335.P18274271140765635298

`A255423(record[A170980(n)])`
-/

namespace A255335.P18274271140765635298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255423 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A255335.P18274271140765635298

/-!
# A255336: a(n) = A005811(A255056(n)); After the initial zero, the first differences of A255056.

The programs for A255336, there is no canonical definition to state claims against.
-/

/-! ## A255336.P13178418818933074505

`2*A255337(n)`
-/

namespace A255336.P13178418818933074505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255337 n

end

end A255336.P13178418818933074505

/-! ## A255336.P9149774940782949630

`A005811(A255056(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255336.P9149774940782949630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A255056 n).toNat

end

end A255336.P9149774940782949630

/-! ## A255336.P18248357449446192667

`2*A069010(A255057(n))`
-/

namespace A255336.P18248357449446192667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069010 (A255057 n).toNat

end

end A255336.P18248357449446192667

/-! ## A255336.P923350848973353322

`2*A069010(A255056(n)/2)`
-/

namespace A255336.P923350848973353322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069010 (SequenceMachineLib.roundAway ((A255056 n : ℚ) / 2)).toNat

end

end A255336.P923350848973353322

/-! ## A255336.P12398210559322124842

`A069010(A255056(n)/2)+A069010(A255057(n))`
-/

namespace A255336.P12398210559322124842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (SequenceMachineLib.roundAway ((A255056 n : ℚ) / 2)).toNat + A069010 (A255057 n).toNat

end

end A255336.P12398210559322124842

/-! ## A255336.P4650806610416236892

`2*A069010(eq[1, A255339(n)])`
-/

namespace A255336.P4650806610416236892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255339 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255336.P4650806610416236892

/-! ## A255336.P17574932493802668968

`A069010(A255056(n))+A069010(A255057(n))`
-/

namespace A255336.P17574932493802668968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A255056 n).toNat + A069010 (A255057 n).toNat

end

end A255336.P17574932493802668968

/-! ## A255336.P17851494520488826895

`A005811(2*A255057(n))`
-/

namespace A255336.P17851494520488826895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (2 * A255057 n).toNat

end

end A255336.P17851494520488826895

/-! ## A255336.P7705335486599159590

`A005811(A255057(n)+A255057(n))`
-/

namespace A255336.P7705335486599159590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A255057 n + A255057 n).toNat

end

end A255336.P7705335486599159590

/-! ## A255336.P5672324947068998042

`∑{e}[A278532(n), #]`
-/

namespace A255336.P5672324947068998042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278532 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A255336.P5672324947068998042

/-! ## A255336.P6822610498395900490

`A001222(A278532(n))`
-/

namespace A255336.P6822610498395900490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278532 n).toNat

end

end A255336.P6822610498395900490

/-! ## A255336.P11460750104500596164

`A005811(A255066(A255122(n)))`
-/

namespace A255336.P11460750104500596164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A255066 (A255122 n).toNat).toNat

end

end A255336.P11460750104500596164

/-!
# A255337: After a(0) = 0, the first differences of A255057: for n >= 1: a(n) = A255057(n) - A255057(n-1).

The programs for A255337, there is no canonical definition to state claims against.
-/

/-! ## A255337.P13971645297147079661

`A255336(n)/2`
-/

namespace A255337.P13971645297147079661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255336 n : ℚ) / 2

end

end A255337.P13971645297147079661

/-! ## A255337.P15699073091245909120

`A005811(A255056(n))/2`
-/

namespace A255337.P15699073091245909120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005811 (A255056 n).toNat : ℚ) / 2

end

end A255337.P15699073091245909120

/-! ## A255337.P6928652596433880457

`A001281(A255336(n))`
-/

namespace A255337.P6928652596433880457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A255336 n).toNat

end

end A255337.P6928652596433880457

/-! ## A255337.P2814383101752273470

`A038572(A255336(n)+A000007(2*(n+2)))`
-/

namespace A255337.P2814383101752273470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A255336 n + A000007 (2 * (n + 2))).toNat

end

end A255337.P2814383101752273470

/-! ## A255337.P3667288558514157854

`A069010(A255057(n))`
-/

namespace A255337.P3667288558514157854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A255057 n).toNat

end

end A255337.P3667288558514157854

/-! ## A255337.P9416671898456885497

`A069010(A255056(n)/2)`
-/

namespace A255337.P9416671898456885497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (SequenceMachineLib.roundAway ((A255056 n : ℚ) / 2)).toNat

end

end A255337.P9416671898456885497

/-! ## A255337.P16988545450372055439

`A069010(eq[1, A255339(n)])`
-/

namespace A255337.P16988545450372055439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255339 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255337.P16988545450372055439

/-! ## A255337.P1837754773492348308

`A069010(A255056(n))`
-/

namespace A255337.P1837754773492348308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A255056 n).toNat

end

end A255337.P1837754773492348308

/-! ## A255337.P18288344620171025031

`A005811(2*A255057(n))/2`
-/

namespace A255337.P18288344620171025031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005811 (2 * A255057 n).toNat : ℚ) / 2

end

end A255337.P18288344620171025031

/-! ## A255337.P9179705645814995110

`A255057(n)-A255070(A255056(n))`
-/

namespace A255337.P9179705645814995110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255057 n - A255070 (A255056 n).toNat

end

end A255337.P9179705645814995110

/-! ## A255337.P2097403450405095108

`A255057(n)-A255070(2*A255057(n))`
-/

namespace A255337.P2097403450405095108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255057 n - A255070 (2 * A255057 n).toNat

end

end A255337.P2097403450405095108

/-! ## A255337.P5515078093997964193

`∑{e}[A278532(n), #/2]`
-/

namespace A255337.P5515078093997964193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278532 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℚ) / 2

end

end A255337.P5515078093997964193

/-! ## A255337.P10655569390161192157

`A255056(n)-A255070(2*A255056(n))`
-/

namespace A255337.P10655569390161192157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255056 n - A255070 (2 * A255056 n).toNat

end

end A255337.P10655569390161192157

/-! ## A255337.P17713570950151056154

`A001222(A278532(n))/2`
-/

namespace A255337.P17713570950151056154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A278532 n).toNat : ℚ) / 2

end

end A255337.P17713570950151056154

/-! ## A255337.P14827600228319116643

`A001221(A255336(n)!)`
-/

namespace A255337.P14827600228319116643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A255336 n).toNat)

end

end A255337.P14827600228319116643

/-! ## A255337.P17738700846668603399

`A001221(A001222(A278532(n))!)`
-/

namespace A255337.P17738700846668603399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A001222 (A278532 n).toNat).toNat)

end

end A255337.P17738700846668603399

/-!
# A255338: Each n occurs A255337(n) times.

The programs for A255338, there is no canonical definition to state claims against.
-/

/-! ## A255338.P6801973096891044099

`∑[char[A255057(n)+1]]`
-/

namespace A255338.P6801973096891044099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255057 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255338.P6801973096891044099

/-! ## A255338.P5102689379899754261

`∑[char[A255067(n)+1]]`
-/

namespace A255338.P5102689379899754261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255067 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255338.P5102689379899754261

/-! ## A255338.P1113617168181551640

`∑[char[∑[A255337(n)]+1]]`
-/

namespace A255338.P1113617168181551640
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255337 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255338.P1113617168181551640

/-! ## A255338.P2928239986416556674

`A255339(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A255338.P2928239986416556674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A255339 (n - 1) + a (n - 1)

end

end A255338.P2928239986416556674

/-! ## A255338.P5734350490756362752

`∑[A255339(n)]-A255339(n)`
-/

namespace A255338.P5734350490756362752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255339 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A255339 n

end

end A255338.P5734350490756362752

/-! ## A255338.P16878578115603931304

`A255072(A255124(A255072(2*n))+2*n)`
-/

namespace A255338.P16878578115603931304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A255124 (A255072 (2 * n)).toNat + (2 * n : ℤ)).toNat

end

end A255338.P16878578115603931304

/-!
# A255339: Characteristic function of A255057; the first differences of A255338.

The programs for A255339, there is no canonical definition to state claims against.
-/

/-! ## A255339.P5578751394266502411

`A255338(n+1)-A255338(n)`
-/

namespace A255339.P5578751394266502411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255338 (n + 1) - A255338 n

end

end A255339.P5578751394266502411

/-! ## A255339.P10262682165300990551

`char[A255057(n)]`
-/

namespace A255339.P10262682165300990551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A255339.P10262682165300990551

/-! ## A255339.P2026520058631076359

`char[A255067(n)]`
-/

namespace A255339.P2026520058631076359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255067 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A255339.P2026520058631076359

/-! ## A255339.P9037439157818354674

`char[∑[A255337(n)]]`
-/

namespace A255339.P9037439157818354674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255337 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A255339.P9037439157818354674

/-! ## A255339.P5130657881940168832

`char[∑[A001281(A255336(n))]]`
-/

namespace A255339.P5130657881940168832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A255336 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A255339.P5130657881940168832

/-! ## A255339.P12428915739436260709

`Δ[A255338(n)]`
-/

namespace A255339.P12428915739436260709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255338 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255339.P12428915739436260709

/-! ## A255339.P900607090359254420

`C(2, A255327(2*n)²)`
-/

namespace A255339.P900607090359254420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A255327 (2 * n) ^ 2).toNat

end

end A255339.P900607090359254420

/-! ## A255339.P16491188660731540436

`A255327(∏{d}[A255327(2*n), log(#)])`
-/

namespace A255339.P16491188660731540436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255327 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255327 (SequenceMachineLib.roundAway (∏ d ∈ Nat.divisors (f1 n).natAbs, Real.log (d : ℝ))).toNat

end

end A255339.P16491188660731540436

/-! ## A255339.P10891101851263349710

`C(A255327(2*n+1), A255327(2*n))`
-/

namespace A255339.P10891101851263349710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A255327 (2 * n + 1)).toNat (A255327 (2 * n)).toNat

end

end A255339.P10891101851263349710

/-!
# A255341: Numbers n such that there is exactly one 1 in their factorial base representation (A007623).

The programs for A255341, there is no canonical definition to state claims against.
-/

/-! ## A255341.P140593738889155175

`eq[1, val(A275735(n), 2)]`
-/

namespace A255341.P140593738889155175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A275735 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255341.P140593738889155175

/-! ## A255341.P12968090080795851052

`eq[1, A000120(A275736(n))]`
-/

namespace A255341.P12968090080795851052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A275736 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255341.P12968090080795851052

/-! ## A255341.P7729112734360350876

`eq[1, A257511(n)]`
-/

namespace A255341.P7729112734360350876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257511 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255341.P7729112734360350876

/-! ## A255341.P12397679722867043719

`record[C(n+1, n*A257511(n+1))]`
-/

namespace A255341.P12397679722867043719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) ((n : ℤ) * A257511 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255341.P12397679722867043719

/-! ## A255341.P686613101566437331

`eq[1, A001222(A275732(n))]`
-/

namespace A255341.P686613101566437331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A275732 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255341.P686613101566437331

/-! ## A255341.P1000203958016776177

`eq[1, A007814(A275735(n))]`
-/

namespace A255341.P1000203958016776177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A275735 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255341.P1000203958016776177

/-! ## A255341.P9678646030724870738

`eq[1, A237353(A275732(n)+1)]`
-/

namespace A255341.P9678646030724870738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237353 (A275732 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255341.P9678646030724870738

/-! ## A255341.P427556616881073403

`lt[A346236(A275732(char[1]+n)), 1]`
-/

namespace A255341.P427556616881073403
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346236 (A275732 ((if ∃ j, f2 j = n then 1 else 0) + n)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A255341.P427556616881073403

/-!
# A255342: Numbers n such that there are exactly two 1's in their factorial base representation (A007623).

The programs for A255342, there is no canonical definition to state claims against.
-/

/-! ## A255342.P11708668493383358023

`eq[2, val(A275735(n), 2)]`
-/

namespace A255342.P11708668493383358023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A275735 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255342.P11708668493383358023

/-! ## A255342.P13177268565072737050

`eq[2, A000120(A275736(n))]`
-/

namespace A255342.P13177268565072737050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A275736 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255342.P13177268565072737050

/-! ## A255342.P17058182086836532181

`eq[2, A257511(n)]`
-/

namespace A255342.P17058182086836532181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257511 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255342.P17058182086836532181

/-! ## A255342.P16599570194558198692

`eq[2, A001222(A275732(n))]`
-/

namespace A255342.P16599570194558198692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A275732 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255342.P16599570194558198692

/-! ## A255342.P15928755500612746395

`eq[2, A007814(A275735(n))]`
-/

namespace A255342.P15928755500612746395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A275735 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255342.P15928755500612746395

/-!
# A255343: Numbers n such that there are exactly three 1's in their factorial base representation (A007623).

The programs for A255343, there is no canonical definition to state claims against.
-/

/-! ## A255343.P806878887506962379

`eq[3, val(A275735(n), 2)]`
-/

namespace A255343.P806878887506962379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A275735 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255343.P806878887506962379

/-! ## A255343.P8235292945007437615

`eq[3, A000120(A275736(n))]`
-/

namespace A255343.P8235292945007437615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A275736 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255343.P8235292945007437615

/-! ## A255343.P15282343846486461465

`eq[3, A257511(n)]`
-/

namespace A255343.P15282343846486461465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257511 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255343.P15282343846486461465

/-! ## A255343.P8577161136519574053

`eq[3, A001222(A275732(n))]`
-/

namespace A255343.P8577161136519574053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A275732 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255343.P8577161136519574053

/-! ## A255343.P11090057432721178648

`eq[15, A038712(A275735(n))]`
-/

namespace A255343.P11090057432721178648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A275735 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255343.P11090057432721178648

/-!
# A255346: Numbers k such that k and k+1 both have at least two distinct prime factors.

The programs for A255346, the canonical program `A255346.P13039647980767050582` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255346 has offset 1).

The definition of A255346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255346.P2130507758388251038

`lt[1, A378457(n+1)]`
-/

namespace A255346.P2130507758388251038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378457 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A255346.P2130507758388251038

namespace A255346

/-- `lt[1, A378457(n+1)]` -/
def P2130507758388251038.Spec : Prop :=
  ∀ n, (P2130507758388251038.a n : ℤ) = A255346 (n + 1)

end A255346

/-! ## A255346.P5683360016040706139

`lt[2, A276781(n+1)]`
-/

namespace A255346.P5683360016040706139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276781 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A255346.P5683360016040706139

namespace A255346

/-- `lt[2, A276781(n+1)]` -/
def P5683360016040706139.Spec : Prop :=
  ∀ n, (P5683360016040706139.a n : ℤ) = A255346 (n + 1)

end A255346

/-! ## A255346.P7098707707901142510

`lt[1, A378370(n+1)]+1`
-/

namespace A255346.P7098707707901142510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378370 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A255346.P7098707707901142510

namespace A255346

/-- `lt[1, A378370(n+1)]+1` -/
def P7098707707901142510.Spec : Prop :=
  ∀ n, (P7098707707901142510.a n : ℤ) = A255346 (n + 1)

end A255346

/-! ## A255346.P5614095959338513786

`eq[1, A328202(n+4)]+3`
-/

namespace A255346.P5614095959338513786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328202 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A255346.P5614095959338513786

namespace A255346

/-- `eq[1, A328202(n+4)]+3` -/
def P5614095959338513786.Spec : Prop :=
  ∀ n, (P5614095959338513786.a n : ℤ) = A255346 (n + 1)

end A255346

/-! ## A255346.P8050029796570631080

`lt[0, n-A031218(n+1)]`
-/

namespace A255346.P8050029796570631080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A031218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A255346.P8050029796570631080

namespace A255346

/-- `lt[0, n-A031218(n+1)]` -/
def P8050029796570631080.Spec : Prop :=
  ∀ n, (P8050029796570631080.a n : ℤ) = A255346 (n + 1)

end A255346

/-! ## A255346.P6724440279852764077

`lt[A139081(n+1), n]+1`
-/

namespace A255346.P6724440279852764077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139081 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A255346.P6724440279852764077

namespace A255346

/-- `lt[A139081(n+1), n]+1` -/
def P6724440279852764077.Spec : Prop :=
  ∀ n, (P6724440279852764077.a n : ℤ) = A255346 (n + 1)

end A255346

/-! ## A255346.P16937226580599897158

`lt[A139084(n+1), n]+1`
-/

namespace A255346.P16937226580599897158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139084 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A255346.P16937226580599897158

namespace A255346

/-- `lt[A139084(n+1), n]+1` -/
def P16937226580599897158.Spec : Prop :=
  ∀ n, (P16937226580599897158.a n : ℤ) = A255346 (n + 1)

end A255346

/-! ## A255346.P8406655340759655578

`comp[round(n/A284600(n+1))]`
-/

namespace A255346.P8406655340759655578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (A284600 (n + 1) : ℚ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A255346.P8406655340759655578

namespace A255346

/-- `comp[round(n/A284600(n+1))]` -/
def P8406655340759655578.Spec : Prop :=
  ∀ n, (P8406655340759655578.a n : ℤ) = A255346 (n + 1)

end A255346

/-! ## A255346.P13039647980767050582

`filter[A080765(n+1), A143731(#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A255346

/-- `filter[A080765(n+1), A143731(#)]` -/
def P13039647980767050582.Spec : Prop :=
  ∀ n, P13039647980767050582.a n = A255346 (n + 1)

theorem P13039647980767050582.correct : P13039647980767050582.Spec := by
  intro n
  simp only [A255346, Nat.add_sub_cancel]

end A255346

/-! ## A255346.P13980259011708184313

`∩[A024619(n+1), A080765(n+1)]`
-/

namespace A255346.P13980259011708184313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255346.P13980259011708184313

namespace A255346

/-- `∩[A024619(n+1), A080765(n+1)]` -/
def P13980259011708184313.Spec : Prop :=
  ∀ n, (P13980259011708184313.a n : ℤ) = A255346 (n + 1)

end A255346

/-! ## A255346.P1277045185503945297

`∩[A080765(n+1), A361102(n+1)]`
-/

namespace A255346.P1277045185503945297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255346.P1277045185503945297

namespace A255346

/-- `∩[A080765(n+1), A361102(n+1)]` -/
def P1277045185503945297.Spec : Prop :=
  ∀ n, (P1277045185503945297.a n : ℤ) = A255346 (n + 1)

end A255346

/-! ## A255346.P10327225475563958410

`∩[A080765(n+1), A387335(n+1)]`
-/

namespace A255346.P10327225475563958410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255346.P10327225475563958410

namespace A255346

/-- `∩[A080765(n+1), A387335(n+1)]` -/
def P10327225475563958410.Spec : Prop :=
  ∀ n, (P10327225475563958410.a n : ℤ) = A255346 (n + 1)

end A255346

/-! ## A255346.P2001422907893852115

`∪[A074851(n+1), A321502(n+1)]`
-/

namespace A255346.P2001422907893852115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A255346.P2001422907893852115

namespace A255346

/-- `∪[A074851(n+1), A321502(n+1)]` -/
def P2001422907893852115.Spec : Prop :=
  ∀ n, (P2001422907893852115.a n : ℤ) = A255346 (n + 1)

end A255346

/-! ## A255346.P14733067711180007343

`A373575(n+2)-1`
-/

namespace A255346.P14733067711180007343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373575 (n + 2) - 1

end

end A255346.P14733067711180007343

namespace A255346

/-- `A373575(n+2)-1` -/
def P14733067711180007343.Spec : Prop :=
  ∀ n, P14733067711180007343.a n = A255346 (n + 1)

end A255346

/-! ## A255346.P326668851071797022

`∑[abs(Δ[A373575(n+1)])]`
-/

namespace A255346.P326668851071797022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373575 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255346.P326668851071797022

namespace A255346

/-- `∑[abs(Δ[A373575(n+1)])]` -/
def P326668851071797022.Spec : Prop :=
  ∀ n, P326668851071797022.a n = A255346 (n + 1)

end A255346

/-! ## A255346.P3057479059999122094

`A023443(A373575(n+2))`
-/

namespace A255346.P3057479059999122094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A373575 (n + 2)).toNat

end

end A255346.P3057479059999122094

namespace A255346

/-- `A023443(A373575(n+2))` -/
def P3057479059999122094.Spec : Prop :=
  ∀ n, P3057479059999122094.a n = A255346 (n + 1)

end A255346

/-!
# A255347: a(n) = n * (1 - (-1)^(n/4) / 4) if n divisible by 4, a(n) = n otherwise.

The programs for A255347, the canonical program `A255347.P15894743462553089016` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255347 has offset 0).

The definition of A255347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255347.P3544919994835676617

`n-n/4*A014017(n)`
-/

namespace A255347.P3544919994835676617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (n : ℚ) / 4 * (A014017 n : ℚ)

end

end A255347.P3544919994835676617

namespace A255347

/-- `n-n/4*A014017(n)` -/
def P3544919994835676617.Spec : Prop :=
  ∀ n, P3544919994835676617.a n = (A255347 n : ℚ)

end A255347

/-! ## A255347.P15894743462553089016

`n-A127365(∑[n+1]²%(n+2))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A255347

/-- `n-A127365(∑[n+1]²%(n+2))` -/
def P15894743462553089016.Spec : Prop :=
  ∀ n, P15894743462553089016.a n = A255347 n

theorem P15894743462553089016.correct : P15894743462553089016.Spec := by
  intro n
  simp only [A255347]

end A255347

/-! ## A255347.P11697555742877927291

`A186813(A004525(n))+n-A004525(n)`
-/

namespace A255347.P11697555742877927291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186813 (A004525 n).toNat + ((n : ℤ) - A004525 n)

end

end A255347.P11697555742877927291

namespace A255347

/-- `A186813(A004525(n))+n-A004525(n)` -/
def P11697555742877927291.Spec : Prop :=
  ∀ n, P11697555742877927291.a n = A255347 n

end A255347

/-! ## A255347.P7600098520684731584

`A186813(A186813(n))+n-A186813(n)`
-/

namespace A255347.P7600098520684731584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186813 (A186813 n).toNat + ((n : ℤ) - A186813 n)

end

end A255347.P7600098520684731584

namespace A255347

/-- `A186813(A186813(n))+n-A186813(n)` -/
def P7600098520684731584.Spec : Prop :=
  ∀ n, P7600098520684731584.a n = A255347 n

end A255347

/-! ## A255347.P17881555175381688225

`A315543(n)-A314851(n)`
-/

namespace A255347.P17881555175381688225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315543 n - A314851 n

end

end A255347.P17881555175381688225

namespace A255347

/-- `A315543(n)-A314851(n)` -/
def P17881555175381688225.Spec : Prop :=
  ∀ n, P17881555175381688225.a n = A255347 n

theorem P17881555175381688225.correct : P17881555175381688225.Spec := by
  intro n
  simp only [A255347, Nat.add_sub_cancel, A255347.P17881555175381688225.a, A255347.P15894743462553089016.f1, A255347.P15894743462553089016.a, A127365, A127365.P16635661420336530327.a, A314851, A314851.P12082733388595412.a, A315543, A315543.P9834102323510964404.a, A314896, A314896.P16109661729483114242.a, A004525, A004525.P4158271949796742323.a, A311843, A311843.P4745182286114243014.f1, A311843.P4745182286114243014.a, A008574, A008574.P1300280032690682112.a, A011861, A011861.P4500963193198654930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A255347

/-!
# A255349: Numbers k such that k*(k+1) is divisible by some m*(m+1) with none of {k, k+1} divisible by any of {m, m+1}.

The programs for A255349, there is no canonical definition to state claims against.
-/

/-! ## A255349.P7840845797230775249

`A157426(eq[A037834(n+1), A227543(n)])`
-/

namespace A255349.P7840845797230775249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157426 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A255349.P7840845797230775249

/-!
# A255350: Number of ways to write n as a*(2a-1)+ b*(2b-1) + c*(2c+1) + d*(2d+1), where a,b,c,d are nonnegative integers with a <= b and c <= d.

The programs for A255350, there is no canonical definition to state claims against.
-/

/-! ## A255350.P14114612103453321525

`A323436(or(A103609(n), A130321(n)))`
-/

namespace A255350.P14114612103453321525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323436 (Int.lor (A103609 n) (A130321 n)).toNat

end

end A255350.P14114612103453321525

/-! ## A255350.P14606974868521273523

`A327400(or(A103609(n), A130321(n)))`
-/

namespace A255350.P14606974868521273523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327400 (Int.lor (A103609 n) (A130321 n)).toNat

end

end A255350.P14606974868521273523

/-! ## A255350.P14541272210756643314

`A051903(A292130(2*n+3)+A034956(n+5))`
-/

namespace A255350.P14541272210756643314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A292130 (2 * n + 3) + A034956 (n + 5)).toNat

end

end A255350.P14541272210756643314

/-! ## A255350.P9249308102600112034

`A353745(A384177(n)+A243073(2*n+1))`
-/

namespace A255350.P9249308102600112034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353745 (A384177 n + A243073 (2 * n + 1)).toNat

end

end A255350.P9249308102600112034

/-! ## A255350.P6424206514751914513

`A002260(A144261(2*(n+1))+A111332(n+4))`
-/

namespace A255350.P6424206514751914513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A144261 (2 * (n + 1)) + A111332 (n + 4)).toNat

end

end A255350.P6424206514751914513

/-!
# A255351: Values of b = max {a,b,c,d} for solutions to a^4 + b^4 = c^4 + d^4, a < c < d < b, ordered by size of b.

The programs for A255351, there is no canonical definition to state claims against.
-/

/-! ## A255351.P3316801808820450021

`A255352(4*n+2)`
-/

namespace A255351.P3316801808820450021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255352 (4 * n + 2)

end

end A255351.P3316801808820450021

/-! ## A255351.P15177446330313032122

`A007318(A133825(n))*A255352(A016825(n))`
-/

namespace A255351.P15177446330313032122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A133825 n).toNat * A255352 (A016825 n).toNat

end

end A255351.P15177446330313032122

/-! ## A255351.P3536058620958957703

`A255352(A016825(n))/A001221(A000040(n+1))`
-/

namespace A255351.P3536058620958957703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255352 (A016825 n).toNat : ℚ) / (A001221 (A000040 (n + 1)).toNat : ℚ)

end

end A255351.P3536058620958957703

/-! ## A255351.P18278381020276957572

`A255352(A016825(n))/A001221(A059642(n+1))`
-/

namespace A255351.P18278381020276957572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255352 (A016825 n).toNat : ℚ) / (A001221 (A059642 (n + 1)).toNat : ℚ)

end

end A255351.P18278381020276957572

/-! ## A255351.P15662703146463845001

`A255352(A016825(n))/A342920(A000040(n+4))`
-/

namespace A255351.P15662703146463845001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255352 (A016825 n).toNat : ℚ) / (A342920 (A000040 (n + 4)).toNat : ℚ)

end

end A255351.P15662703146463845001

/-! ## A255351.P13870046751364124314

`A028310(record[A255352(n+2)])`
-/

namespace A255351.P13870046751364124314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255352 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A255351.P13870046751364124314

/-! ## A255351.P3526790327533590907

`A007318(∑[n])*A255352(A016825(n))`
-/

namespace A255351.P3526790327533590907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A255352 (A016825 n).toNat

end

end A255351.P3526790327533590907

/-!
# A255353: Denominators in an expansion of 3 - sqrt(5) as a sum of fractions +-1/d.

The programs for A255353, the canonical program `A255353.P5633215559590899181` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255353 has offset 1).

The definition of A255353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255353.P5633215559590899181

`8*a(n-3)-8*a(n-6)+a(n-9)` with `a(0)=2, a(1)=3, a(2)=6, a(3)=15, a(4)=24, a(5)=40, a(6)=104, a(7)=168, a(8)=273`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255353

/-- `8*a(n-3)-8*a(n-6)+a(n-9)` -/
def P5633215559590899181.Spec : Prop :=
  ∀ n, P5633215559590899181.a n = A255353 (n + 1)

theorem P5633215559590899181.correct : P5633215559590899181.Spec := by
  intro n
  simp only [A255353, Nat.add_sub_cancel]

end A255353

/-! ## A255353.P16599529797045373787

`A080239(comp[4*n]+2)`
-/

namespace A255353.P16599529797045373787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080239 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)

end

end A255353.P16599529797045373787

namespace A255353

/-- `A080239(comp[4*n]+2)` -/
def P16599529797045373787.Spec : Prop :=
  ∀ n, P16599529797045373787.a n = A255353 (n + 1)

end A255353

/-! ## A255353.P5354691726100449656

`A070550(∑[2-n²%3])`
-/

namespace A255353.P5354691726100449656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A255353.P5354691726100449656

namespace A255353

/-- `A070550(∑[2-n²%3])` -/
def P5354691726100449656.Spec : Prop :=
  ∀ n, P5354691726100449656.a n = A255353 (n + 1)

end A255353

/-! ## A255353.P18206147738284108763

`A070550(A004772(n+2))`
-/

namespace A255353.P18206147738284108763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 (A004772 (n + 2)).toNat

end

end A255353.P18206147738284108763

namespace A255353

/-- `A070550(A004772(n+2))` -/
def P18206147738284108763.Spec : Prop :=
  ∀ n, P18206147738284108763.a n = A255353 (n + 1)

end A255353

/-! ## A255353.P13691177899417940531

`A070550(A004773(n)+2)`
-/

namespace A255353.P13691177899417940531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 (A004773 n + 2).toNat

end

end A255353.P13691177899417940531

namespace A255353

/-- `A070550(A004773(n)+2)` -/
def P13691177899417940531.Spec : Prop :=
  ∀ n, P13691177899417940531.a n = A255353 (n + 1)

end A255353

/-! ## A255353.P16752646016416281668

`A070550(A319371(n+2))`
-/

namespace A255353.P16752646016416281668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 (A319371 (n + 2)).toNat

end

end A255353.P16752646016416281668

namespace A255353

/-- `A070550(A319371(n+2))` -/
def P16752646016416281668.Spec : Prop :=
  ∀ n, P16752646016416281668.a n = A255353 (n + 1)

end A255353

/-! ## A255353.P6875424069645787557

`A070550(A002264(4*n)+2)`
-/

namespace A255353.P6875424069645787557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 (A002264 (4 * n) + 2).toNat

end

end A255353.P6875424069645787557

namespace A255353

/-- `A070550(A002264(4*n)+2)` -/
def P6875424069645787557.Spec : Prop :=
  ∀ n, P6875424069645787557.a n = A255353 (n + 1)

end A255353

/-! ## A255353.P15831626576372372537

`A070550(A002264(n)+2+n)`
-/

namespace A255353.P15831626576372372537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 (A002264 n + 2 + (n : ℤ)).toNat

end

end A255353.P15831626576372372537

namespace A255353

/-- `A070550(A002264(n)+2+n)` -/
def P15831626576372372537.Spec : Prop :=
  ∀ n, P15831626576372372537.a n = A255353 (n + 1)

end A255353

/-! ## A255353.P9904887926643800113

`A070550(∑[and(1, A070550(n))+1])`
-/

namespace A255353.P9904887926643800113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A070550 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A255353.P9904887926643800113

namespace A255353

/-- `A070550(∑[and(1, A070550(n))+1])` -/
def P9904887926643800113.Spec : Prop :=
  ∀ n, P9904887926643800113.a n = A255353 (n + 1)

end A255353

/-! ## A255353.P202127224241139835

`A070550(eq[A004525(n), A123108(n)])`
-/

namespace A255353.P202127224241139835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A255353.P202127224241139835

namespace A255353

/-- `A070550(eq[A004525(n), A123108(n)])` -/
def P202127224241139835.Spec : Prop :=
  ∀ n, P202127224241139835.a n = A255353 (n + 1)

end A255353

/-!
# A255354: a(n) = smallest number k such that (k + n)' = k', or -1 if no such number exists, where k' is the arithmetic derivative of k.

The programs for A255354, there is no canonical definition to state claims against.
-/

/-! ## A255354.P9456222734072681747

`A265344(A015886(n+1)*A165661(n))`
-/

namespace A255354.P9456222734072681747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265344 (A015886 (n + 1) * A165661 n).toNat

end

end A255354.P9456222734072681747

/-! ## A255354.P17970721198372434612

`A153800(gcd(A145071(n+1), A169841(n+1)))`
-/

namespace A255354.P17970721198372434612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153800 (Int.gcd (A145071 (n + 1)) (A169841 (n + 1)))

end

end A255354.P17970721198372434612

/-! ## A255354.P9116626375310408887

`A015853(A015886(n+1))%A015843(3*n+4)`
-/

namespace A255354.P9116626375310408887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015853 (A015886 (n + 1)).toNat) (A015843 (3 * n + 4))

end

end A255354.P9116626375310408887

/-!
# A255361: Number of ways n can be represented as x*y+x+y where x>=y>1.

The programs for A255361, the canonical program `A255361.P8441760194462435338` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255361 has offset 0).

The definition of A255361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255361.P15861555553609014328

`A072670(n)-char[2*n+3]`
-/

namespace A255361.P15861555553609014328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A255361.P15861555553609014328

namespace A255361

/-- `A072670(n)-char[2*n+3]` -/
def P15861555553609014328.Spec : Prop :=
  ∀ n, P15861555553609014328.a n = A255361 n

end A255361

/-! ## A255361.P8441760194462435338

`floor(A348665(n+1)/∏{e}[n+1, #+1])`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A255361

/-- `floor(A348665(n+1)/∏{e}[n+1, #+1])` -/
def P8441760194462435338.Spec : Prop :=
  ∀ n, P8441760194462435338.a n = A255361 n

theorem P8441760194462435338.correct : P8441760194462435338.Spec := by
  intro n
  simp only [A255361]

end A255361

/-! ## A255361.P2213163703173162533

`A038548(n+1)+A010052(A002620(n))-2`
-/

namespace A255361.P2213163703173162533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) + (A010052 (A002620 n).toNat - 2)

end

end A255361.P2213163703173162533

namespace A255361

/-- `A038548(n+1)+A010052(A002620(n))-2` -/
def P2213163703173162533.Spec : Prop :=
  ∀ n, P2213163703173162533.a n = A255361 n

end A255361

/-! ## A255361.P17330866075777502744

`A086435(2*A072499(n+1))-1`
-/

namespace A255361.P17330866075777502744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086435 (2 * A072499 (n + 1)).toNat - 1

end

end A255361.P17330866075777502744

namespace A255361

/-- `A086435(2*A072499(n+1))-1` -/
def P17330866075777502744.Spec : Prop :=
  ∀ n, P17330866075777502744.a n = A255361 n

end A255361

/-!
# A255362: Numbers n such that neither n nor n+1 is representable as x*y+x+y, where x>=y>1.

The programs for A255362, there is no canonical definition to state claims against.
-/

/-! ## A255362.P9496507078413599444

`lt[∏{p}[∑[n+1], n/#], 3]`
-/

namespace A255362.P9496507078413599444
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (n : ℚ) / (p : ℚ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℚ)) n

end

end A255362.P9496507078413599444

/-! ## A255362.P18283734171097771747

`lt[A092405(n+1), 7]`
-/

namespace A255362.P18283734171097771747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A255362.P18283734171097771747

/-! ## A255362.P16035825593433759826

`eq[0, A029400(A092517(n+1))]`
-/

namespace A255362.P16035825593433759826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029400 (A092517 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255362.P16035825593433759826

/-! ## A255362.P14060407477171807583

`eq[0, A002265(A175454(n+1))]`
-/

namespace A255362.P14060407477171807583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A175454 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255362.P14060407477171807583

/-! ## A255362.P204552950510989939

`eq[1, A110652(A133950(n+1))]`
-/

namespace A255362.P204552950510989939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110652 (A133950 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255362.P204552950510989939

/-! ## A255362.P1490409976374553739

`eq[A255361(n), A259124(n+1)]`
-/

namespace A255362.P1490409976374553739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255361 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259124 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255362.P1490409976374553739

/-! ## A255362.P15888894413583388641

`eq[A259124(n+1), A285726(n+1)]`
-/

namespace A255362.P15888894413583388641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285726 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255362.P15888894413583388641

/-! ## A255362.P8459040958952384912

`eq[A259124(n+1), A339895(n+1)]`
-/

namespace A255362.P8459040958952384912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339895 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255362.P8459040958952384912

/-! ## A255362.P4862606428117100383

`eq[n, n*A025147(A063123(n+1))]`
-/

namespace A255362.P4862606428117100383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025147 (A063123 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255362.P4862606428117100383

/-! ## A255362.P17275086305158714670

`lt[A000005(n+1)*A033676(n+2), 5]`
-/

namespace A255362.P17275086305158714670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A033676 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A255362.P17275086305158714670

/-!
# A255363: Numbers with the property that A006255(k) = A070229(k).

The programs for A255363, there is no canonical definition to state claims against.
-/

/-! ## A255363.P10943405070792066944

`comp[A269045(n+1)-1]+1`
-/

namespace A255363.P10943405070792066944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269045 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A255363.P10943405070792066944

/-! ## A255363.P14938944146498123367

`eq[char[A269045(n+1)], A000038(n)]`
-/

namespace A255363.P14938944146498123367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269045 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A255363.P14938944146498123367

/-! ## A255363.P8436745677883058059

`eq[A006255(n+1), A070229(n+1)]+1`
-/

namespace A255363.P8436745677883058059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A255363.P8436745677883058059

/-! ## A255363.P2823402656978771713

`eq[A006530(n+1), A092487(n+1)]+1`
-/

namespace A255363.P2823402656978771713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092487 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A255363.P2823402656978771713

/-! ## A255363.P4284062237907343949

`eq[A092487(n+1), A284695(n+1)]+1`
-/

namespace A255363.P4284062237907343949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A255363.P4284062237907343949

/-! ## A255363.P16752155025317727217

`eq[A092487(n+1), A300518(n+1)]+1`
-/

namespace A255363.P16752155025317727217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300518 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A255363.P16752155025317727217

/-! ## A255363.P13479511149473492836

`A153152(eq[A092487(n+1), A284695(n+1)])`
-/

namespace A255363.P13479511149473492836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A255363.P13479511149473492836

/-!
# A255364: Partial sums of A246031.

The programs for A255364, there is no canonical definition to state claims against.
-/

/-! ## A255364.P2414050289225761495

`∑[A246031(n)]`
-/

namespace A255364.P2414050289225761495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255364.P2414050289225761495

/-! ## A255364.P15703468268394054644

`A246031(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A255364.P15703468268394054644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A246031 (2 * n) + a (n - 1)

end

end A255364.P15703468268394054644

/-! ## A255364.P13799150592550662957

`∑{digits}[A038378(n+1), A246031(#)]`
-/

namespace A255364.P13799150592550662957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A246031 x).sum

end

end A255364.P13799150592550662957

/-!
# A255365: Expansion of phi(-x^3) * phi(-x^48) / chi(-x^16) in powers of x where phi(), chi() are Ramanujan theta functions.

The programs for A255365, the canonical program `A255365.P11528583219773473008` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255365 has offset 0).

The definition of A255365 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255365.P11528583219773473008

`A033999(n)*A256505(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A255365

/-- `A033999(n)*A256505(n)` -/
def P11528583219773473008.Spec : Prop :=
  ∀ n, P11528583219773473008.a n = A255365 n

theorem P11528583219773473008.correct : P11528583219773473008.Spec := by
  intro n
  simp only [A255365]

end A255365

/-! ## A255365.P7530442931621003372

`A057077(n)*A256505(n)`
-/

namespace A255365.P7530442931621003372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A256505 n

end

end A255365.P7530442931621003372

namespace A255365

/-- `A057077(n)*A256505(n)` -/
def P7530442931621003372.Spec : Prop :=
  ∀ n, P7530442931621003372.a n = A255365 n

end A255365

/-! ## A255365.P9119896683601791613

`A102560(n)*A256505(n)`
-/

namespace A255365.P9119896683601791613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 n * A256505 n

end

end A255365.P9119896683601791613

namespace A255365

/-- `A102560(n)*A256505(n)` -/
def P9119896683601791613.Spec : Prop :=
  ∀ n, P9119896683601791613.a n = A255365 n

end A255365

/-! ## A255365.P16736895254681896923

`A102560(n)²*A258764(n)`
-/

namespace A255365.P16736895254681896923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 n ^ 2 * A258764 n

end

end A255365.P16736895254681896923

namespace A255365

/-- `A102560(n)²*A258764(n)` -/
def P16736895254681896923.Spec : Prop :=
  ∀ n, P16736895254681896923.a n = A255365 n

end A255365

/-! ## A255365.P9632395719913081832

`A105931(n+1)*A256505(n)`
-/

namespace A255365.P9632395719913081832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105931 (n + 1) * A256505 n

end

end A255365.P9632395719913081832

namespace A255365

/-- `A105931(n+1)*A256505(n)` -/
def P9632395719913081832.Spec : Prop :=
  ∀ n, P9632395719913081832.a n = A255365 n

end A255365

/-! ## A255365.P3549289067724277933

`(A000120(n+1)-A000120(n))*A256505(n)`
-/

namespace A255365.P3549289067724277933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000120 (n + 1) - A000120 n) * A256505 n

end

end A255365.P3549289067724277933

namespace A255365

/-- `(A000120(n+1)-A000120(n))*A256505(n)` -/
def P3549289067724277933.Spec : Prop :=
  ∀ n, P3549289067724277933.a n = A255365 n

end A255365

/-! ## A255365.P739360609423580470

`A256505(n)/A057077(n+4)`
-/

namespace A255365.P739360609423580470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256505 n : ℚ) / (A057077 (n + 4) : ℚ)

end

end A255365.P739360609423580470

namespace A255365

/-- `A256505(n)/A057077(n+4)` -/
def P739360609423580470.Spec : Prop :=
  ∀ n, P739360609423580470.a n = (A255365 n : ℚ)

end A255365

/-! ## A255365.P16288611980031863109

`A188510(2*n+1)*A256505(n)`
-/

namespace A255365.P16288611980031863109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (2 * n + 1) * A256505 n

end

end A255365.P16288611980031863109

namespace A255365

/-- `A188510(2*n+1)*A256505(n)` -/
def P16288611980031863109.Spec : Prop :=
  ∀ n, P16288611980031863109.a n = A255365 n

end A255365

/-! ## A255365.P10421530882383299450

`A227395(3*n+2)`
-/

namespace A255365.P10421530882383299450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227395 (3 * n + 2)

end

end A255365.P10421530882383299450

namespace A255365

/-- `A227395(3*n+2)` -/
def P10421530882383299450.Spec : Prop :=
  ∀ n, P10421530882383299450.a n = A255365 n

end A255365

/-! ## A255365.P7451629180648620082

`A094267(3*n)*A255258(3*n+2)`
-/

namespace A255365.P7451629180648620082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (3 * n) * A255258 (3 * n + 2)

end

end A255365.P7451629180648620082

namespace A255365

/-- `A094267(3*n)*A255258(3*n+2)` -/
def P7451629180648620082.Spec : Prop :=
  ∀ n, P7451629180648620082.a n = A255365 n

end A255365

/-! ## A255365.P17201834703243183546

`A209615(2*n+1)*A255258(3*n+2)`
-/

namespace A255365.P17201834703243183546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (2 * n + 1) * A255258 (3 * n + 2)

end

end A255365.P17201834703243183546

namespace A255365

/-- `A209615(2*n+1)*A255258(3*n+2)` -/
def P17201834703243183546.Spec : Prop :=
  ∀ n, P17201834703243183546.a n = A255365 n

end A255365

/-! ## A255365.P14101117434398010147

`A255258(3*n+2)*A309873(3*n+1)`
-/

namespace A255365.P14101117434398010147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255258 (3 * n + 2) * A309873 (3 * n + 1)

end

end A255365.P14101117434398010147

namespace A255365

/-- `A255258(3*n+2)*A309873(3*n+1)` -/
def P14101117434398010147.Spec : Prop :=
  ∀ n, P14101117434398010147.a n = A255365 n

end A255365

/-! ## A255365.P4032872701264430527

`A182187(n)%2*A258764(n)`
-/

namespace A255365.P4032872701264430527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182187 n) 2 * A258764 n

end

end A255365.P4032872701264430527

namespace A255365

/-- `A182187(n)%2*A258764(n)` -/
def P4032872701264430527.Spec : Prop :=
  ∀ n, P4032872701264430527.a n = A255365 n

end A255365

/-!
# A255366: Total number of ON cells at stage n of two-dimensional cellular automaton defined by the rules of the "Ulam-Warburton" two-dimensional cellular automaton (A147562) for two of its wedges and defined by "Rule 750" using the von Neumann neighborhood (A169707) for the two other wedges.

The programs for A255366, there is no canonical definition to state claims against.
-/

/-! ## A255366.P7514909492728619632

`(A147562(n+1)+A169707(n+1))/2`
-/

namespace A255366.P7514909492728619632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147562 (n + 1) + A169707 (n + 1) : ℚ) / 2

end

end A255366.P7514909492728619632

/-! ## A255366.P6877197886207781891

`A151917(n+1)+2*A255747(n)`
-/

namespace A255366.P6877197886207781891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151917 (n + 1) + 2 * A255747 n

end

end A255366.P6877197886207781891

/-! ## A255366.P3567750135595665966

`∑[(A169708(n)+A147582(n+1))/2]`
-/

namespace A255366.P3567750135595665966
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169708 n + A147582 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255366.P3567750135595665966

/-! ## A255366.P6584133227008408667

`A266530(2*(n+1))+A151917(n+1)`
-/

namespace A255366.P6584133227008408667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 (2 * (n + 1)) + A151917 (n + 1)

end

end A255366.P6584133227008408667

/-! ## A255366.P18257529651089774587

`(A169707(n+1)+∑[A147582(n+1)])/2`
-/

namespace A255366.P18257529651089774587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A169707 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A255366.P18257529651089774587

/-! ## A255366.P4711385301287614361

`A151917(n+1)+∑[A255049(n)]`
-/

namespace A255366.P4711385301287614361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151917 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255366.P4711385301287614361

/-! ## A255366.P17350061628584604245

`∑[A004526(A169708(n)+A147582(n+1))]`
-/

namespace A255366.P17350061628584604245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A169708 n + A147582 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255366.P17350061628584604245

/-! ## A255366.P2290613865501742612

`A151917(n+1)+A005843(A255747(n))`
-/

namespace A255366.P2290613865501742612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151917 (n + 1) + A005843 (A255747 n).toNat

end

end A255366.P2290613865501742612

/-! ## A255366.P3969319862822867747

`A266530(2*(n+1))+A004396(A130665(n))`
-/

namespace A255366.P3969319862822867747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 (2 * (n + 1)) + A004396 (A130665 n).toNat

end

end A255366.P3969319862822867747

/-! ## A255366.P15602965988058333327

`A078898(A169707(n+1)+A147562(n+1))`
-/

namespace A255366.P15602965988058333327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A169707 (n + 1) + A147562 (n + 1)).toNat

end

end A255366.P15602965988058333327

/-!
# A255367: a(n) = r^(p-2) mod p, where p is the n-th prime and r is the least positive primitive root of p.

The programs for A255367, there is no canonical definition to state claims against.
-/

/-! ## A255367.P3048996144097395856

`A254309(A333315(n+1))`
-/

namespace A255367.P3048996144097395856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254309 (A333315 (n + 1)).toNat

end

end A255367.P3048996144097395856

/-! ## A255367.P11980913252644755144

`A254309(∑[A008330(n+1)])`
-/

namespace A255367.P11980913252644755144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254309 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A255367.P11980913252644755144

/-! ## A255367.P15190773797580646122

`A254309(∑[A000010(A006093(n+1))])`
-/

namespace A255367.P15190773797580646122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254309 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A255367.P15190773797580646122

/-!
# A255368: a(n) = -(-1)^n * 2 * n / 3 if n divisible by 3, a(n) = -(-1)^n * n otherwise.

The programs for A255368, the canonical program `A255368.P5363430774879013215` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255368 has offset 0).

The definition of A255368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255368.P6828439924418480525

`-((lcm(3, n)/3+n)/2*(-1)^n)`
-/

namespace A255368.P6828439924418480525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(((Nat.lcm 3 n : ℚ) / 3 + (n : ℚ)) / 2 * ((-1) ^ n : ℚ))

end

end A255368.P6828439924418480525

namespace A255368

/-- `-((lcm(3, n)/3+n)/2*(-1)^n)` -/
def P6828439924418480525.Spec : Prop :=
  ∀ n, P6828439924418480525.a n = (A255368 n : ℚ)

end A255368

/-! ## A255368.P5363430774879013215

`A062157(n)*A186101(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A255368

/-- `A062157(n)*A186101(n)` -/
def P5363430774879013215.Spec : Prop :=
  ∀ n, P5363430774879013215.a n = A255368 n

theorem P5363430774879013215.correct : P5363430774879013215.Spec := by
  intro n
  simp only [A255368]

end A255368

/-! ## A255368.P13904122285820127699

`A165326(n)*A186101(n)`
-/

namespace A255368.P13904122285820127699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n * A186101 n

end

end A255368.P13904122285820127699

namespace A255368

/-- `A165326(n)*A186101(n)` -/
def P13904122285820127699.Spec : Prop :=
  ∀ n, P13904122285820127699.a n = A255368 n

end A255368

/-! ## A255368.P5824277786965575335

`(2*A000034(n)-3)*A186101(n)`
-/

namespace A255368.P5824277786965575335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A000034 n - 3) * A186101 n

end

end A255368.P5824277786965575335

namespace A255368

/-- `(2*A000034(n)-3)*A186101(n)` -/
def P5824277786965575335.Spec : Prop :=
  ∀ n, P5824277786965575335.a n = A255368 n

end A255368

/-! ## A255368.P6194271264243443647

`A186101(n)-2*A186101(A237420(n))`
-/

namespace A255368.P6194271264243443647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 n - 2 * A186101 (A237420 n).toNat

end

end A255368.P6194271264243443647

namespace A255368

/-- `A186101(n)-2*A186101(A237420(n))` -/
def P6194271264243443647.Spec : Prop :=
  ∀ n, P6194271264243443647.a n = A255368 n

end A255368

/-! ## A255368.P3373175529294282618

`(A110654(n)-A028242(n))*A186101(n)`
-/

namespace A255368.P3373175529294282618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110654 n - A028242 n) * A186101 n

end

end A255368.P3373175529294282618

namespace A255368

/-- `(A110654(n)-A028242(n))*A186101(n)` -/
def P3373175529294282618.Spec : Prop :=
  ∀ n, P3373175529294282618.a n = A255368 n

end A255368

/-! ## A255368.P1444781244189720063

`(A032766(Δ[A032766(n)])-2)*A186101(n)`
-/

namespace A255368.P1444781244189720063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032766 (f1 (n + 1) - f1 n).toNat - 2) * A186101 n

end

end A255368.P1444781244189720063

namespace A255368

/-- `(A032766(Δ[A032766(n)])-2)*A186101(n)` -/
def P1444781244189720063.Spec : Prop :=
  ∀ n, P1444781244189720063.a n = A255368 n

end A255368

/-! ## A255368.P15884793454457571281

`A186101(n)/A062157(n+2)`
-/

namespace A255368.P15884793454457571281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186101 n : ℚ) / (A062157 (n + 2) : ℚ)

end

end A255368.P15884793454457571281

namespace A255368

/-- `A186101(n)/A062157(n+2)` -/
def P15884793454457571281.Spec : Prop :=
  ∀ n, P15884793454457571281.a n = (A255368 n : ℚ)

end A255368

/-! ## A255368.P13606535377095114121

`A009531(2*n)/(A100063(n)+1)`
-/

namespace A255368.P13606535377095114121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009531 (2 * n) : ℚ) / (A100063 n + 1 : ℚ)

end

end A255368.P13606535377095114121

namespace A255368

/-- `A009531(2*n)/(A100063(n)+1)` -/
def P13606535377095114121.Spec : Prop :=
  ∀ n, P13606535377095114121.a n = (A255368 n : ℚ)

end A255368

/-!
# A255369: a(n) = (sigma(n)-n-1)*(2-mu(n)), where sigma(n) is the sum of the divisors of n and mu(n) is the Möbius function.

The programs for A255369, the canonical program `A255369.P16560971130249767900` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255369 has offset 1).

The definition of A255369 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A000203(n+1)-(n+1)-1)*(2-A008683(n+1))` (program `A255369.P16560971130249767900`, by `A255369.P16560971130249767900.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A255369.P16560971130249767900

`(A000203(n+1)-(n+1)-1)*(2-A008683(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A255369

/-- `(A000203(n+1)-(n+1)-1)*(2-A008683(n+1))` -/
def P16560971130249767900.Spec : Prop :=
  ∀ n, P16560971130249767900.a n = A255369 (n + 1)

theorem P16560971130249767900.correct : P16560971130249767900.Spec := by
  intro n
  simp only [A255369, Nat.add_sub_cancel]

end A255369

/-! ## A255369.P5322048947078004221

`(2-A008683(n+1))*(A000203(n+1)-(n+2))`
-/

namespace A255369.P5322048947078004221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A008683 (n + 1)) * (A000203 (n + 1) - (n + 2 : ℤ))

end

end A255369.P5322048947078004221

namespace A255369

/-- `(2-A008683(n+1))*(A000203(n+1)-(n+2))` -/
def P5322048947078004221.Spec : Prop :=
  ∀ n, P5322048947078004221.a n = A255369 (n + 1)

theorem P5322048947078004221.correct : P5322048947078004221.Spec := by
  intro n
  simp only [A255369, Nat.add_sub_cancel, A255369.P5322048947078004221.a, A255369.P16560971130249767900.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A255369

/-!
# A255371: Number of strings of n decimal digits that contain at least one "0" digit that is not part of a string of two or more consecutive "0" digits.

The programs for A255371, the canonical program `A255371.P12517309390397430291` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255371 has offset 0).

The definition of A255371 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255371.P12517309390397430291

`20*a(n-1)-109*a(n-2)+99*a(n-3)-90*a(n-4)` with `a(0)=0, a(1)=1, a(2)=18, a(3)=252`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255371

/-- `20*a(n-1)-109*a(n-2)+99*a(n-3)-90*a(n-4)` -/
def P12517309390397430291.Spec : Prop :=
  ∀ n, P12517309390397430291.a n = A255371 n

theorem P12517309390397430291.correct : P12517309390397430291.Spec := by
  intro n
  simp only [A255371]

end A255371

/-!
# A255372: Number of strings of n decimal digits that contain at least one string of exactly 2 consecutive "0" digits.

The programs for A255372, there is no canonical definition to state claims against.
-/

/-! ## A255372.P14835989919918243211

`A365137(n^A162226(n+1))`
-/

namespace A255372.P14835989919918243211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365137 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A162226 (n + 1) : ℤ))).toNat

end

end A255372.P14835989919918243211

/-!
# A255373: Number of strings of n decimal digits that contain at least one string of exactly 3 consecutive "0" digits.

The programs for A255373, there is no canonical definition to state claims against.
-/

/-! ## A255373.P3144954151293959288

`A255379(∑[and(n, -(n+2))!])`
-/

namespace A255373.P3144954151293959288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land (n : ℤ) (-(n + 2 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255379 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255373.P3144954151293959288

/-! ## A255373.P16744175083928278892

`A106612(A255374(n+1))`
-/

namespace A255373.P16744175083928278892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A255374 (n + 1)).toNat

end

end A255373.P16744175083928278892

/-! ## A255373.P7381965063825704131

`A255376(A254960(n+3))`
-/

namespace A255373.P7381965063825704131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255376 (A254960 (n + 3)).toNat

end

end A255373.P7381965063825704131

/-!
# A255374: Number of strings of n decimal digits that contain at least one string of exactly 4 consecutive "0" digits.

The programs for A255374, there is no canonical definition to state claims against.
-/

/-! ## A255374.P7816842282588439790

`A255375(C(A062504(n), n))`
-/

namespace A255374.P7816842282588439790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255375 (Nat.choose (A062504 n).toNat n)

end

end A255374.P7816842282588439790

/-! ## A255374.P13634438742649991823

`A255375(A029965(n+1)+1)`
-/

namespace A255374.P13634438742649991823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255375 (A029965 (n + 1) + 1).toNat

end

end A255374.P13634438742649991823

/-! ## A255374.P2928321778230495039

`A255376(A032565(n+1)+1)`
-/

namespace A255374.P2928321778230495039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255376 (A032565 (n + 1) + 1).toNat

end

end A255374.P2928321778230495039

/-!
# A255375: Number of strings of n decimal digits that contain at least one string of exactly 5 consecutive "0" digits.

The programs for A255375, there is no canonical definition to state claims against.
-/

/-! ## A255375.P14782590960916816081

`A255378(n+3)-A029931(A185284(3*(n+1)))`
-/

namespace A255375.P14782590960916816081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255378 (n + 3) - A029931 (A185284 (3 * (n + 1))).toNat

end

end A255375.P14782590960916816081

/-! ## A255375.P7997473425358280399

`A255377(A354265(∑[n]))`
-/

namespace A255375.P7997473425358280399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255377 (A354265 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A255375.P7997473425358280399

/-! ## A255375.P758535656740952933

`A255379(A077168(n+3))`
-/

namespace A255375.P758535656740952933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255379 (A077168 (n + 3)).toNat

end

end A255375.P758535656740952933

/-! ## A255375.P8499350444021824585

`A255380(A062399(n)+5)`
-/

namespace A255375.P8499350444021824585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255380 (A062399 n + 5).toNat

end

end A255375.P8499350444021824585

/-! ## A255375.P6183491792467276152

`A255376(∑[∑[A028384(n)]])`
-/

namespace A255375.P6183491792467276152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028384 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255376 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A255375.P6183491792467276152

/-!
# A255376: Number of strings of n decimal digits that contain at least one string of exactly 6 consecutive "0" digits.

The programs for A255376, there is no canonical definition to state claims against.
-/

/-! ## A255376.P1858222986459993906

`A255377(A000120(∑[2^n]))`
-/

namespace A255376.P1858222986459993906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255377 (A000120 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A255376.P1858222986459993906

/-! ## A255376.P16793105099300825445

`A255379(A077168(n+1)+1)`
-/

namespace A255376.P16793105099300825445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255379 (A077168 (n + 1) + 1).toNat

end

end A255376.P16793105099300825445

/-! ## A255376.P13399205044999407239

`A255380(A382083(n+1)+1)`
-/

namespace A255376.P13399205044999407239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255380 (A382083 (n + 1) + 1).toNat

end

end A255376.P13399205044999407239

/-! ## A255376.P1571755216547449209

`A255380(A077168(n+1)+2)`
-/

namespace A255376.P1571755216547449209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255380 (A077168 (n + 1) + 2).toNat

end

end A255376.P1571755216547449209

/-! ## A255376.P18364337819544529210

`A255380((n+4)%A321730(n))`
-/

namespace A255376.P18364337819544529210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255380 (Int.tmod (n + 4 : ℤ) (A321730 n)).toNat

end

end A255376.P18364337819544529210

/-!
# A255377: Number of strings of n decimal digits that contain at least one string of exactly 7 consecutive "0" digits.

The programs for A255377, there is no canonical definition to state claims against.
-/

/-! ## A255377.P10453116050358288048

`A255378(A187829(n+1))`
-/

namespace A255377.P10453116050358288048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255378 (A187829 (n + 1)).toNat

end

end A255377.P10453116050358288048

/-! ## A255377.P5468472297975236825

`A255380(A187829(n+1)+2)`
-/

namespace A255377.P5468472297975236825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255380 (A187829 (n + 1) + 2).toNat

end

end A255377.P5468472297975236825

/-! ## A255377.P12431655641380357492

`A255378(A078822(∑[round(2^n/3)]))`
-/

namespace A255377.P12431655641380357492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255378 (A078822 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A255377.P12431655641380357492

/-! ## A255377.P7628889603895843594

`A255378(C(comp[A039943(2*n+1)], n))`
-/

namespace A255377.P7628889603895843594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039943 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255378 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) n)

end

end A255377.P7628889603895843594

/-! ## A255377.P2402936544978179178

`A255378(n+1)%A211997(2*n+5)`
-/

namespace A255377.P2402936544978179178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255378 (n + 1)) (A211997 (2 * n + 5))

end

end A255377.P2402936544978179178

/-!
# A255378: Number of strings of n decimal digits that contain at least one string of exactly 8 consecutive "0" digits.

The programs for A255378, there is no canonical definition to state claims against.
-/

/-! ## A255378.P9703169014289212108

`A255380(A151764(n+2))`
-/

namespace A255378.P9703169014289212108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255380 (A151764 (n + 2)).toNat

end

end A255378.P9703169014289212108

/-! ## A255378.P11326346577226414063

`A255379(A000005(2^n))`
-/

namespace A255378.P11326346577226414063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255379 (A000005 (2 ^ n)).toNat

end

end A255378.P11326346577226414063

/-! ## A255378.P10356400107174985808

`A255379(∑[A155797(n)!])`
-/

namespace A255378.P10356400107174985808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A155797 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255379 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255378.P10356400107174985808

/-! ## A255378.P1597572272876761101

`A255380(∑[A169987(n)!])`
-/

namespace A255378.P1597572272876761101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A169987 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255380 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255378.P1597572272876761101

/-! ## A255378.P10995239177784154998

`A255379(∑[∑[A015161(n)]])`
-/

namespace A255378.P10995239177784154998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255379 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A255378.P10995239177784154998

/-!
# A255379: Number of strings of n decimal digits that contain at least one string of exactly 9 consecutive "0" digits.

The programs for A255379, there is no canonical definition to state claims against.
-/

/-! ## A255379.P15469185440759783464

`A255380(C(∑[(char[19*(n+1)]+1)!], n))`
-/

namespace A255379.P15469185440759783464
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255380 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n)

end

end A255379.P15469185440759783464

/-! ## A255379.P1255137694266398437

`A255380(A077342(n+1))`
-/

namespace A255379.P1255137694266398437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255380 (A077342 (n + 1)).toNat

end

end A255379.P1255137694266398437

/-! ## A255379.P9132399914743982256

`A255380(A242474(n+1))`
-/

namespace A255379.P9132399914743982256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255380 (A242474 (n + 1)).toNat

end

end A255379.P9132399914743982256

/-! ## A255379.P11233581350411266392

`A255380(A351374(n+1))`
-/

namespace A255379.P11233581350411266392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255380 (A351374 (n + 1)).toNat

end

end A255379.P11233581350411266392

/-! ## A255379.P8406248844439100686

`A255380(A245795(n+1)+n)`
-/

namespace A255379.P8406248844439100686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255380 (A245795 (n + 1) + (n : ℤ)).toNat

end

end A255379.P8406248844439100686

/-!
# A255380: Number of strings of n decimal digits that contain at least one string of exactly 10 consecutive "0" digits.

The programs for A255380, there is no canonical definition to state claims against.
-/

/-! ## A255380.P340214873805416735

`∑{e}[A003945(n), A255379(#)]`
-/

namespace A255380.P340214873805416735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A255379 (Nat.factorization (f1 n).natAbs p)

end

end A255380.P340214873805416735

/-! ## A255380.P6739828323932054822

`A255379((n-1)^A059995(n))`
-/

namespace A255380.P6739828323932054822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255379 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) ^ (A059995 n : ℤ))).toNat

end

end A255380.P6739828323932054822

/-! ## A255380.P510373291990622888

`A255379((n-1)^A062329(n))`
-/

namespace A255380.P510373291990622888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255379 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) ^ (A062329 n : ℤ))).toNat

end

end A255380.P510373291990622888

/-! ## A255380.P13407961175489855506

`A255379(∑[A059995(n)^A255378(n)])`
-/

namespace A255380.P13407961175489855506
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059995 n : ℚ) ^ (A255378 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255379 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A255380.P13407961175489855506

/-! ## A255380.P18306229961101405290

`A255379(∑[A062329(n)^A255378(n)])`
-/

namespace A255380.P18306229961101405290
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062329 n : ℚ) ^ (A255378 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255379 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A255380.P18306229961101405290

/-!
# A255381: Number of strings of k+n decimal digits that contain one string of exactly k consecutive "0" digits, where k >= n.

The programs for A255381, the canonical program `A255381.P5117526382358676869` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255381 has offset 0).

The definition of A255381 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255381.P5117526382358676869

`20*a(n-1)-100*a(n-2)` with `a(0)=1, a(1)=18, a(2)=261`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255381

/-- `20*a(n-1)-100*a(n-2)` -/
def P5117526382358676869.Spec : Prop :=
  ∀ n, P5117526382358676869.a n = A255381 n

theorem P5117526382358676869.correct : P5117526382358676869.Spec := by
  intro n
  simp only [A255381]

end A255381

/-! ## A255381.P2054248403792146285

`A000007(n)+Δ[A081045(n-A057427(n))]`
-/

namespace A255381.P2054248403792146285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081045 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A255381.P2054248403792146285

namespace A255381

/-- `A000007(n)+Δ[A081045(n-A057427(n))]` -/
def P2054248403792146285.Spec : Prop :=
  ∀ n, P2054248403792146285.a n = A255381 n

end A255381

/-! ## A255381.P13762393166431608845

`Δ[A081045(n-A057427(n))-A054977(n)]`
-/

namespace A255381.P13762393166431608845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081045 ((n : ℤ) - A057427 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255381.P13762393166431608845

namespace A255381

/-- `Δ[A081045(n-A057427(n))-A054977(n)]` -/
def P13762393166431608845.Spec : Prop :=
  ∀ n, P13762393166431608845.a n = A255381 n

end A255381

/-! ## A255381.P18067377144165538836

`Δ[A081045(n-A057427(n))-A057428(n)]`
-/

namespace A255381.P18067377144165538836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081045 ((n : ℤ) - A057427 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255381.P18067377144165538836

namespace A255381

/-- `Δ[A081045(n-A057427(n))-A057428(n)]` -/
def P18067377144165538836.Spec : Prop :=
  ∀ n, P18067377144165538836.a n = A255381 n

end A255381

/-! ## A255381.P18278673767662462595

`Δ[A081045(n-A057427(n))]^A178334(n)`
-/

namespace A255381.P18278673767662462595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081045 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A178334 n : ℤ)

end

end A255381.P18278673767662462595

namespace A255381

/-- `Δ[A081045(n-A057427(n))]^A178334(n)` -/
def P18278673767662462595.Spec : Prop :=
  ∀ n, P18278673767662462595.a n = (A255381 n : ℚ)

end A255381

/-! ## A255381.P12656189420146010678

`A163805(2*n)+Δ[A081045(n-A057427(n))]`
-/

namespace A255381.P12656189420146010678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081045 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (2 * n) + (f1 (n + 1) - f1 n)

end

end A255381.P12656189420146010678

namespace A255381

/-- `A163805(2*n)+Δ[A081045(n-A057427(n))]` -/
def P12656189420146010678.Spec : Prop :=
  ∀ n, P12656189420146010678.a n = A255381 n

end A255381

/-!
# A255382: Number of vector spaces of dimension n generated by n X n matrices over F(2) of rank one, up to multiplication on the right by an invertible matrix and multiplication on the left by another invertible matrix.

The programs for A255382, there is no canonical definition to state claims against.
-/

/-! ## A255382.P2424962630624394045

`A083754(A279310(n)+n)`
-/

namespace A255382.P2424962630624394045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083754 (A279310 n + (n : ℤ)).toNat

end

end A255382.P2424962630624394045

/-! ## A255382.P16471803764974009881

`A000720(A084215(n)*A192241(n+1))`
-/

namespace A255382.P16471803764974009881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A084215 n * A192241 (n + 1)).toNat

end

end A255382.P16471803764974009881

/-!
# A255383: Compositorial mod sum-of-composites.

The programs for A255383, there is no canonical definition to state claims against.
-/

/-! ## A255383.P6327603259128222498

`A036691(n+1)%A053767(n+1)`
-/

namespace A255383.P6327603259128222498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036691 (n + 1)) (A053767 (n + 1))

end

end A255383.P6327603259128222498

/-! ## A255383.P1681736708199407333

`∏[A002808(n+1)]%A053767(n+1)`
-/

namespace A255383.P1681736708199407333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A053767 (n + 1))

end

end A255383.P1681736708199407333

/-! ## A255383.P8628597522800157351

`∏[A018252(n+2)]%A053767(n+1)`
-/

namespace A255383.P8628597522800157351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A053767 (n + 1))

end

end A255383.P8628597522800157351

/-! ## A255383.P10573126307560593471

`∏[A141468(n+3)]%A053767(n+1)`
-/

namespace A255383.P10573126307560593471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A053767 (n + 1))

end

end A255383.P10573126307560593471

/-! ## A255383.P14754882847544241015

`∏[comp[C(A006530(n+1), n)]]%A053767(n+1)`
-/

namespace A255383.P14754882847544241015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A053767 (n + 1))

end

end A255383.P14754882847544241015

/-! ## A255383.P13987886297534469202

`∏[comp[C(A014963(n+1), n)]]%A053767(n+1)`
-/

namespace A255383.P13987886297534469202
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014963 (n + 1)).toNat n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A053767 (n + 1))

end

end A255383.P13987886297534469202

/-! ## A255383.P16604001059010245444

`∏[lt[1, A001222(n+1)]+1]%A053767(n+1)`
-/

namespace A255383.P16604001059010245444
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A053767 (n + 1))

end

end A255383.P16604001059010245444

/-! ## A255383.P18195372138812058865

`∏[lt[2, A000005(n+1)]+1]%A053767(n+1)`
-/

namespace A255383.P18195372138812058865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A053767 (n + 1))

end

end A255383.P18195372138812058865

/-! ## A255383.P920574649913478014

`∏[comp[A000040(n+1)-2]+2]%A053767(n+1)`
-/

namespace A255383.P920574649913478014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A053767 (n + 1))

end

end A255383.P920574649913478014

/-! ## A255383.P10109291182903952662

`A049614(lt[2, A000005(n+1)]+1)%A053767(n+1)`
-/

namespace A255383.P10109291182903952662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)) (A053767 (n + 1))

end

end A255383.P10109291182903952662

/-!
# A255384: a(n) = sopfr(n)^2 - 2n, where sopfr(n) is the sum of the prime factors of n with multiplicity.

The programs for A255384, the canonical program `A255384.P7252042372331938958` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255384 has offset 1).

The definition of A255384 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001414(n+1)²-2*(n+1)` (program `A255384.P7252042372331938958`, by `A255384.P7252042372331938958.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A255384.P7252042372331938958

`A001414(n+1)²-2*(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A255384

/-- `A001414(n+1)²-2*(n+1)` -/
def P7252042372331938958.Spec : Prop :=
  ∀ n, P7252042372331938958.a n = A255384 (n + 1)

theorem P7252042372331938958.correct : P7252042372331938958.Spec := by
  intro n
  simp only [A255384, Nat.add_sub_cancel]

end A255384

/-! ## A255384.P8599142125991467028

`A074373(n+1)-A005843(n+1)`
-/

namespace A255384.P8599142125991467028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074373 (n + 1) - A005843 (n + 1)

end

end A255384.P8599142125991467028

namespace A255384

/-- `A074373(n+1)-A005843(n+1)` -/
def P8599142125991467028.Spec : Prop :=
  ∀ n, P8599142125991467028.a n = A255384 (n + 1)

theorem P8599142125991467028.correct : P8599142125991467028.Spec := by
  intro n
  simp only [A255384, Nat.add_sub_cancel, A255384.P8599142125991467028.a, A255384.P7252042372331938958.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A005843, A005843.P3167286115683555970.a, A074373, A074373.P3467722491980429131.f1, A074373.P3467722491980429131.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255384

/-! ## A255384.P6993087872808688188

`∑{p}[n+1, #*val(n+1, #)]²-2*(n+1)`
-/

namespace A255384.P6993087872808688188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p) ^ 2 : ℕ) : ℤ) - (2 * (n + 1) : ℤ)

end

end A255384.P6993087872808688188

namespace A255384

/-- `∑{p}[n+1, #*val(n+1, #)]²-2*(n+1)` -/
def P6993087872808688188.Spec : Prop :=
  ∀ n, P6993087872808688188.a n = A255384 (n + 1)

theorem P6993087872808688188.correct : P6993087872808688188.Spec := by
  intro n
  simp only [A255384, Nat.add_sub_cancel, A255384.P6993087872808688188.f1, A255384.P6993087872808688188.a, A255384.P7252042372331938958.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255384

/-! ## A255384.P14583225782529214599

`Δ[A025281(n)]²-2*(n+1)`
-/

namespace A255384.P14583225782529214599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - (2 * (n + 1) : ℤ)

end

end A255384.P14583225782529214599

namespace A255384

/-- `Δ[A025281(n)]²-2*(n+1)` -/
def P14583225782529214599.Spec : Prop :=
  ∀ n, P14583225782529214599.a n = A255384 (n + 1)

end A255384

/-! ## A255384.P14675411030845864758

`(1-A036288(n+1))²-2*(n+1)`
-/

namespace A255384.P14675411030845864758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A036288 (n + 1)) ^ 2 - (2 * (n + 1) : ℤ)

end

end A255384.P14675411030845864758

namespace A255384

/-- `(1-A036288(n+1))²-2*(n+1)` -/
def P14675411030845864758.Spec : Prop :=
  ∀ n, P14675411030845864758.a n = A255384 (n + 1)

theorem P14675411030845864758.correct : P14675411030845864758.Spec := by
  intro n
  simp only [A255384, Nat.add_sub_cancel, A255384.P14675411030845864758.a, A255384.P7252042372331938958.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A036288, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255384

/-! ## A255384.P13487513742961045708

`∑{d}[n+1, A120007(#)]²-2*(n+1)`
-/

namespace A255384.P13487513742961045708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A120007 d) ^ 2 - (2 * (n + 1) : ℤ)

end

end A255384.P13487513742961045708

namespace A255384

/-- `∑{d}[n+1, A120007(#)]²-2*(n+1)` -/
def P13487513742961045708.Spec : Prop :=
  ∀ n, P13487513742961045708.a n = A255384 (n + 1)

end A255384

/-! ## A255384.P9447610498497358603

`(abs(∑{d}[n+1, A000203(A014963(#))-1]+2)-2)²-2*(n+1)`
-/

namespace A255384.P9447610498497358603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|∑ d ∈ Nat.divisors (f1 n), (A000203 (A014963 d).toNat - 1) + 2| - 2) ^ 2 - (2 * (n + 1) : ℤ)

end

end A255384.P9447610498497358603

namespace A255384

/-- `(abs(∑{d}[n+1, A000203(A014963(#))-1]+2)-2)²-2*(n+1)` -/
def P9447610498497358603.Spec : Prop :=
  ∀ n, P9447610498497358603.a n = A255384 (n + 1)

end A255384

/-! ## A255384.P8845900701245332005

`A001414(n+1)*A001414(n+1)-A005843(n+1)`
-/

namespace A255384.P8845900701245332005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) * A001414 (n + 1) - A005843 (n + 1)

end

end A255384.P8845900701245332005

namespace A255384

/-- `A001414(n+1)*A001414(n+1)-A005843(n+1)` -/
def P8845900701245332005.Spec : Prop :=
  ∀ n, P8845900701245332005.a n = A255384 (n + 1)

theorem P8845900701245332005.correct : P8845900701245332005.Spec := by
  intro n
  simp only [A255384, Nat.add_sub_cancel, A255384.P8845900701245332005.a, A255384.P7252042372331938958.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A005843, A005843.P3167286115683555970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255384

/-! ## A255384.P16875620775826520747

`A001478(2*(n+1))+A001414(n+1)²`
-/

namespace A255384.P16875620775826520747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (2 * (n + 1)) + A001414 (n + 1) ^ 2

end

end A255384.P16875620775826520747

namespace A255384

/-- `A001478(2*(n+1))+A001414(n+1)²` -/
def P16875620775826520747.Spec : Prop :=
  ∀ n, P16875620775826520747.a n = A255384 (n + 1)

end A255384

/-!
# A255385: a(n) = sigma(n) + phi(n) - tau(n).

The programs for A255385, the canonical program `A255385.P15739975789967617263` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255385 has offset 1).

The definition of A255385 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)+A000010(n+1)-A000005(n+1)` (program `A255385.P15739975789967617263`, by `A255385.P15739975789967617263.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A255385.P14566645745040577405

`2*(n+1)-2+A153011(n+1)`
-/

namespace A255385.P14566645745040577405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - 2 + A153011 (n + 1)

end

end A255385.P14566645745040577405

namespace A255385

/-- `2*(n+1)-2+A153011(n+1)` -/
def P14566645745040577405.Spec : Prop :=
  ∀ n, P14566645745040577405.a n = A255385 (n + 1)

theorem P14566645745040577405.correct : P14566645745040577405.Spec := by
  intro n
  simp only [A255385, Nat.add_sub_cancel, A255385.P14566645745040577405.a, A255385.P15739975789967617263.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A153011, A153011.P18266022580685187752.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A051953, A051953.P11179276897610979764.a, A152770, A152770.P4996422170920482869.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A062249, A062249.P5473932307129171226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255385

/-! ## A255385.P15739975789967617263

`A000203(n+1)+A000010(n+1)-A000005(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A255385

/-- `A000203(n+1)+A000010(n+1)-A000005(n+1)` -/
def P15739975789967617263.Spec : Prop :=
  ∀ n, P15739975789967617263.a n = A255385 (n + 1)

theorem P15739975789967617263.correct : P15739975789967617263.Spec := by
  intro n
  simp only [A255385, Nat.add_sub_cancel]

end A255385

/-! ## A255385.P3028677738449275352

`2*n+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+∑{d}[n+1, #-1]-n-n`
-/

namespace A255385.P3028677738449275352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) + ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + ((∑ d ∈ Nat.divisors (f3 n), ((d : ℤ) - 1) - (n : ℤ) : ℤ) : ℚ) - (n : ℚ))

end

end A255385.P3028677738449275352

namespace A255385

/-- `2*n+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+∑{d}[n+1, #-1]-n-n` -/
def P3028677738449275352.Spec : Prop :=
  ∀ n, P3028677738449275352.a n = (A255385 (n + 1) : ℚ)

end A255385

/-! ## A255385.P16774401972995347538

`A153011(n+1)+2*n`
-/

namespace A255385.P16774401972995347538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153011 (n + 1) + (2 * n : ℤ)

end

end A255385.P16774401972995347538

namespace A255385

/-- `A153011(n+1)+2*n` -/
def P16774401972995347538.Spec : Prop :=
  ∀ n, P16774401972995347538.a n = A255385 (n + 1)

theorem P16774401972995347538.correct : P16774401972995347538.Spec := by
  intro n
  simp only [A255385, Nat.add_sub_cancel, A255385.P16774401972995347538.a, A255385.P15739975789967617263.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A153011, A153011.P18266022580685187752.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A051953, A051953.P11179276897610979764.a, A152770, A152770.P4996422170920482869.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A062249, A062249.P5473932307129171226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255385

/-! ## A255385.P6899945614309960198

`A065387(n+1)-Δ[A006218(n)]`
-/

namespace A255385.P6899945614309960198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1) - (f1 (n + 1) - f1 n)

end

end A255385.P6899945614309960198

namespace A255385

/-- `A065387(n+1)-Δ[A006218(n)]` -/
def P6899945614309960198.Spec : Prop :=
  ∀ n, P6899945614309960198.a n = A255385 (n + 1)

end A255385

/-! ## A255385.P6371704095776618322

`A065387(n+1)-Δ[A054519(n)]`
-/

namespace A255385.P6371704095776618322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1) - (f1 (n + 1) - f1 n)

end

end A255385.P6371704095776618322

namespace A255385

/-- `A065387(n+1)-Δ[A054519(n)]` -/
def P6371704095776618322.Spec : Prop :=
  ∀ n, P6371704095776618322.a n = A255385 (n + 1)

end A255385

/-! ## A255385.P17515076448220981524

`A063070(n+1)+A000203(n+1)`
-/

namespace A255385.P17515076448220981524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063070 (n + 1) + A000203 (n + 1)

end

end A255385.P17515076448220981524

namespace A255385

/-- `A063070(n+1)+A000203(n+1)` -/
def P17515076448220981524.Spec : Prop :=
  ∀ n, P17515076448220981524.a n = A255385 (n + 1)

theorem P17515076448220981524.correct : P17515076448220981524.Spec := by
  intro n
  simp only [A255385, Nat.add_sub_cancel, A255385.P17515076448220981524.a, A255385.P15739975789967617263.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A063070, A063070.P5416196495209204381.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255385

/-! ## A255385.P1546357802716527807

`A065608(n+1)+A000010(n+1)`
-/

namespace A255385.P1546357802716527807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1) + A000010 (n + 1)

end

end A255385.P1546357802716527807

namespace A255385

/-- `A065608(n+1)+A000010(n+1)` -/
def P1546357802716527807.Spec : Prop :=
  ∀ n, P1546357802716527807.a n = A255385 (n + 1)

theorem P1546357802716527807.correct : P1546357802716527807.Spec := by
  intro n
  simp only [A255385, Nat.add_sub_cancel, A255385.P1546357802716527807.a, A255385.P15739975789967617263.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A065608, A065608.P12445239359989980431.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255385

/-! ## A255385.P7904084011326946369

`A152771(n+1)+A073757(n+1)`
-/

namespace A255385.P7904084011326946369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152771 (n + 1) + A073757 (n + 1)

end

end A255385.P7904084011326946369

namespace A255385

/-- `A152771(n+1)+A073757(n+1)` -/
def P7904084011326946369.Spec : Prop :=
  ∀ n, P7904084011326946369.a n = A255385 (n + 1)

theorem P7904084011326946369.correct : P7904084011326946369.Spec := by
  intro n
  simp only [A255385, Nat.add_sub_cancel, A255385.P7904084011326946369.a, A255385.P15739975789967617263.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A073757, A073757.P6861480467973211752.a, A152771, A152771.P13412887130094788285.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A114003, A114003.P1695342291946871726.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255385

/-! ## A255385.P206721422287916360

`A152992(n+1)+A082515(n+1)`
-/

namespace A255385.P206721422287916360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152992 (n + 1) + A082515 (n + 1)

end

end A255385.P206721422287916360

namespace A255385

/-- `A152992(n+1)+A082515(n+1)` -/
def P206721422287916360.Spec : Prop :=
  ∀ n, P206721422287916360.a n = A255385 (n + 1)

theorem P206721422287916360.correct : P206721422287916360.Spec := by
  intro n
  simp only [A255385, Nat.add_sub_cancel, A255385.P206721422287916360.a, A255385.P15739975789967617263.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A082515, A082515.P15614925756413171437.a, A152992, A152992.P10206136984884417694.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A065608, A065608.P12445239359989980431.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A255385

/-! ## A255385.P15417151180298086164

`A209187(n+1)+A049820(n+1)`
-/

namespace A255385.P15417151180298086164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209187 (n + 1) + A049820 (n + 1)

end

end A255385.P15417151180298086164

namespace A255385

/-- `A209187(n+1)+A049820(n+1)` -/
def P15417151180298086164.Spec : Prop :=
  ∀ n, P15417151180298086164.a n = A255385 (n + 1)

theorem P15417151180298086164.correct : P15417151180298086164.Spec := by
  intro n
  simp only [A255385, Nat.add_sub_cancel, A255385.P15417151180298086164.a, A255385.P15739975789967617263.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A049820, A049820.P9428372222244335888.a, A209187, A209187.P1822992089248699320.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A051953, A051953.P11179276897610979764.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255385

/-! ## A255385.P6432037165361450570

`A158901(n+1)+A109606(n+1)`
-/

namespace A255385.P6432037165361450570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158901 (n + 1) + A109606 (n + 1)

end

end A255385.P6432037165361450570

namespace A255385

/-- `A158901(n+1)+A109606(n+1)` -/
def P6432037165361450570.Spec : Prop :=
  ∀ n, P6432037165361450570.a n = A255385 (n + 1)

theorem P6432037165361450570.correct : P6432037165361450570.Spec := by
  intro n
  simp only [A255385, Nat.add_sub_cancel, A255385.P6432037165361450570.a, A255385.P15739975789967617263.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A109606, A109606.P2415810041766612210.a, A158901, A158901.P2411227311583190290.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A065608, A065608.P12445239359989980431.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255385

/-! ## A255385.P2910117563275360026

`A286002(n+1)+A051709(n+1)`
-/

namespace A255385.P2910117563275360026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286002 (n + 1) + A051709 (n + 1)

end

end A255385.P2910117563275360026

namespace A255385

/-- `A286002(n+1)+A051709(n+1)` -/
def P2910117563275360026.Spec : Prop :=
  ∀ n, P2910117563275360026.a n = A255385 (n + 1)

theorem P2910117563275360026.correct : P2910117563275360026.Spec := by
  intro n
  simp only [A255385, Nat.add_sub_cancel, A255385.P2910117563275360026.a, A255385.P15739975789967617263.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051709, A051709.P8066883811744733228.a, A286002, A286002.P1824755549209206382.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A049820, A049820.P9428372222244335888.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255385

/-! ## A255385.P12190240786725249523

`A065387(n+1)-A000005(n+1)`
-/

namespace A255385.P12190240786725249523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1) - A000005 (n + 1)

end

end A255385.P12190240786725249523

namespace A255385

/-- `A065387(n+1)-A000005(n+1)` -/
def P12190240786725249523.Spec : Prop :=
  ∀ n, P12190240786725249523.a n = A255385 (n + 1)

end A255385

/-! ## A255385.P15595339018505733437

`A129235(n+1)-A051612(n+1)`
-/

namespace A255385.P15595339018505733437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129235 (n + 1) - A051612 (n + 1)

end

end A255385.P15595339018505733437

namespace A255385

/-- `A129235(n+1)-A051612(n+1)` -/
def P15595339018505733437.Spec : Prop :=
  ∀ n, P15595339018505733437.a n = A255385 (n + 1)

theorem P15595339018505733437.correct : P15595339018505733437.Spec := by
  intro n
  simp only [A255385, Nat.add_sub_cancel, A255385.P15595339018505733437.a, A255385.P15739975789967617263.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051612, A051612.P4135239823752248514.a, A129235, A129235.P483503928581819009.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255385

/-! ## A255385.P4739560052786464813

`A137319(n+1)-A051953(n+1)`
-/

namespace A255385.P4739560052786464813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137319 (n + 1) - A051953 (n + 1)

end

end A255385.P4739560052786464813

namespace A255385

/-- `A137319(n+1)-A051953(n+1)` -/
def P4739560052786464813.Spec : Prop :=
  ∀ n, P4739560052786464813.a n = A255385 (n + 1)

theorem P4739560052786464813.correct : P4739560052786464813.Spec := by
  intro n
  simp only [A255385, Nat.add_sub_cancel, A255385.P4739560052786464813.a, A255385.P15739975789967617263.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051953, A051953.P11179276897610979764.a, A137319, A137319.P10681023325901659618.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A065608, A065608.P12445239359989980431.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255385

/-! ## A255385.P18431947291565102017

`A233541(n+1)-A062011(n+1)`
-/

namespace A255385.P18431947291565102017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233541 (n + 1) - A062011 (n + 1)

end

end A255385.P18431947291565102017

namespace A255385

/-- `A233541(n+1)-A062011(n+1)` -/
def P18431947291565102017.Spec : Prop :=
  ∀ n, P18431947291565102017.a n = A255385 (n + 1)

theorem P18431947291565102017.correct : P18431947291565102017.Spec := by
  intro n
  simp only [A255385, Nat.add_sub_cancel, A255385.P18431947291565102017.a, A255385.P15739975789967617263.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A062011, A062011.P17525320077853469406.a, A233541, A233541.P8613134617587554925.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255385

/-! ## A255385.P1929191584738228397

`A155085(n+1)-A351561(n+1)`
-/

namespace A255385.P1929191584738228397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - A351561 (n + 1)

end

end A255385.P1929191584738228397

namespace A255385

/-- `A155085(n+1)-A351561(n+1)` -/
def P1929191584738228397.Spec : Prop :=
  ∀ n, P1929191584738228397.a n = A255385 (n + 1)

theorem P1929191584738228397.correct : P1929191584738228397.Spec := by
  intro n
  simp only [A255385, Nat.add_sub_cancel, A255385.P1929191584738228397.a, A255385.P15739975789967617263.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A155085, A155085.P2440965829929837208.a, A351561, A351561.P9711075868512573755.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A051953, A051953.P11179276897610979764.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255385

/-! ## A255385.P7336524883573109010

`A039649(n+1)+A158901(n+1)-2`
-/

namespace A255385.P7336524883573109010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) + (A158901 (n + 1) - 2)

end

end A255385.P7336524883573109010

namespace A255385

/-- `A039649(n+1)+A158901(n+1)-2` -/
def P7336524883573109010.Spec : Prop :=
  ∀ n, P7336524883573109010.a n = A255385 (n + 1)

theorem P7336524883573109010.correct : P7336524883573109010.Spec := by
  intro n
  simp only [A255385, Nat.add_sub_cancel, A255385.P7336524883573109010.a, A255385.P15739975789967617263.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A039649, A039649.P16717312505280968063.a, A158901, A158901.P2411227311583190290.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A065608, A065608.P12445239359989980431.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255385

/-! ## A255385.P7409565862711123611

`A046520(n+1)+2*A000010(n+1)`
-/

namespace A255385.P7409565862711123611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046520 (n + 1) + 2 * A000010 (n + 1)

end

end A255385.P7409565862711123611

namespace A255385

/-- `A046520(n+1)+2*A000010(n+1)` -/
def P7409565862711123611.Spec : Prop :=
  ∀ n, P7409565862711123611.a n = A255385 (n + 1)

theorem P7409565862711123611.correct : P7409565862711123611.Spec := by
  intro n
  simp only [A255385, Nat.add_sub_cancel, A255385.P7409565862711123611.a, A255385.P15739975789967617263.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A046520, A046520.P408125302691526791.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255385

/-!
# A255386: Number of binary words of length n with exactly one occurrence of subword 010 and exactly one occurrence of subword 101.

The programs for A255386, there is no canonical definition to state claims against.
-/

/-! ## A255386.P15593182007691709604

`2*floor(sqrt(A337522(n)/6))`
-/

namespace A255386.P15593182007691709604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.sqrt ((A337522 n : ℚ) / 6 : ℝ)⌋

end

end A255386.P15593182007691709604

/-! ## A255386.P3570783007630624737

`A259361(round(2^n/6)²)`
-/

namespace A255386.P3570783007630624737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 6) ^ 2).toNat

end

end A255386.P3570783007630624737

/-! ## A255386.P6695907778742454092

`2*floor(record[A140648(n)/12])`
-/

namespace A255386.P6695907778742454092
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140648 n : ℚ) / 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A255386.P6695907778742454092

/-! ## A255386.P5381325996005533929

`A003056(C(round(2^n/6), 2))`
-/

namespace A255386.P5381325996005533929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 6)).toNat 2)

end

end A255386.P5381325996005533929

/-! ## A255386.P8563227619956696240

`A292370(A015521(n))`
-/

namespace A255386.P8563227619956696240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292370 (A015521 n).toNat

end

end A255386.P8563227619956696240

/-!
# A255392: Numbers n such that A241216(n) != A125173(n).

The programs for A255392, there is no canonical definition to state claims against.
-/

/-! ## A255392.P3305429271970218642

`lt[A241216(n+1), A125173(n+1)]+1`
-/

namespace A255392.P3305429271970218642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125173 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A255392.P3305429271970218642

/-!
# A255394: Positions of records in A241216.

The programs for A255394, there is no canonical definition to state claims against.
-/

/-! ## A255394.P10210304815961725060

`∑[A262689(∏[A144968(2*n)])]`
-/

namespace A255394.P10210304815961725060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144968 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255394.P10210304815961725060

/-! ## A255394.P8380254661603302183

`∑[∏{e}[A003266(n+1), A000040(#)]]`
-/

namespace A255394.P8380254661603302183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003266 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A000040 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255394.P8380254661603302183

/-!
# A255397: Number of multimin-partitions of normal multisets of weight n.

The programs for A255397, there is no canonical definition to state claims against.
-/

/-! ## A255397.P17421437112226491889

`A088462(A320566(n)+A153299(n))`
-/

namespace A255397.P17421437112226491889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088462 (A320566 n + A153299 n).toNat

end

end A255397.P17421437112226491889

/-! ## A255397.P16449316958999517231

`A004277(A331617(n)-A236843(n))`
-/

namespace A255397.P16449316958999517231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A331617 n - A236843 n).toNat

end

end A255397.P16449316958999517231

/-!
# A255398: Numbers k such that k^2 lacks the digit 1 in its decimal expansion.

The programs for A255398, the canonical program `A255398.P9906218669355388413` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255398 has offset 1).

The definition of A255398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3866 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255398.P9906218669355388413

`eq[0, ∑{digits}[n², C(C(2, #), 2)]]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255398

/-- `eq[0, ∑{digits}[n², C(C(2, #), 2)]]` -/
def P9906218669355388413.Spec : Prop :=
  ∀ n, (P9906218669355388413.a n : ℤ) = A255398 (n + 1)

theorem P9906218669355388413.correct : P9906218669355388413.Spec := by
  intro n
  simp only [A255398, Nat.add_sub_cancel]

end A255398

/-! ## A255398.P17237854332007113120

`eq[0, A086009(n)]`
-/

namespace A255398.P17237854332007113120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086009 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255398.P17237854332007113120

namespace A255398

/-- `eq[0, A086009(n)]` -/
def P17237854332007113120.Spec : Prop :=
  ∀ n, (P17237854332007113120.a n : ℤ) = A255398 (n + 1)

end A255398

/-! ## A255398.P17776420010589988015

`lt[1, A281823(n+1)]`
-/

namespace A255398.P17776420010589988015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281823 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A255398.P17776420010589988015

namespace A255398

/-- `lt[1, A281823(n+1)]` -/
def P17776420010589988015.Spec : Prop :=
  ∀ n, (P17776420010589988015.a n : ℤ) = A255398 (n + 1)

end A255398

/-! ## A255398.P17591605279697729093

`lt[1, A281823(n)]-1`
-/

namespace A255398.P17591605279697729093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A255398.P17591605279697729093

namespace A255398

/-- `lt[1, A281823(n)]-1` -/
def P17591605279697729093.Spec : Prop :=
  ∀ n, P17591605279697729093.a n = A255398 (n + 1)

end A255398

/-! ## A255398.P12805294073320623612

`eq[1, ∑{digits}[n², A181499(#)]+1]`
-/

namespace A255398.P12805294073320623612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => A181499 x).sum + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255398.P12805294073320623612

namespace A255398

/-- `eq[1, ∑{digits}[n², A181499(#)]+1]` -/
def P12805294073320623612.Spec : Prop :=
  ∀ n, (P12805294073320623612.a n : ℤ) = A255398 (n + 1)

end A255398

/-! ## A255398.P12373152041487768431

`A254667(lt[A086009(n), 1])`
-/

namespace A255398.P12373152041487768431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086009 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A255398.P12373152041487768431

namespace A255398

/-- `A254667(lt[A086009(n), 1])` -/
def P12373152041487768431.Spec : Prop :=
  ∀ n, P12373152041487768431.a n = A255398 (n + 1)

end A255398

/-! ## A255398.P16767159618112310602

`lt[A006530(n+2)*A086009(n), 2]`
-/

namespace A255398.P16767159618112310602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) * A086009 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A255398.P16767159618112310602

namespace A255398

/-- `lt[A006530(n+2)*A086009(n), 2]` -/
def P16767159618112310602.Spec : Prop :=
  ∀ n, (P16767159618112310602.a n : ℤ) = A255398 (n + 1)

end A255398

/-! ## A255398.P11732584589825461558

`lt[A086009(n), 1]%A000040(n+2)`
-/

namespace A255398.P11732584589825461558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086009 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) (A000040 (n + 2))

end

end A255398.P11732584589825461558

namespace A255398

/-- `lt[A086009(n), 1]%A000040(n+2)` -/
def P11732584589825461558.Spec : Prop :=
  ∀ n, P11732584589825461558.a n = A255398 (n + 1)

end A255398

/-! ## A255398.P2711565534726834594

`lt[A000040(n+1)²*A086009(n), 1]`
-/

namespace A255398.P2711565534726834594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 * A086009 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A255398.P2711565534726834594

namespace A255398

/-- `lt[A000040(n+1)²*A086009(n), 1]` -/
def P2711565534726834594.Spec : Prop :=
  ∀ n, (P2711565534726834594.a n : ℤ) = A255398 (n + 1)

end A255398

/-! ## A255398.P14181775330876237593

`lt[sqrt(A000010(n+1)*A086009(n)), 1]`
-/

namespace A255398.P14181775330876237593
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000010 (n + 1) * A086009 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A255398.P14181775330876237593

namespace A255398

/-- `lt[sqrt(A000010(n+1)*A086009(n)), 1]` -/
def P14181775330876237593.Spec : Prop :=
  ∀ n, (P14181775330876237593.a n : ℤ) = A255398 (n + 1)

end A255398

/-! ## A255398.P17726663090497139485

`lt[A086009(n), A020639(n+1)^-1]`
-/

namespace A255398.P17726663090497139485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086009 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) ^ (-1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A255398.P17726663090497139485

namespace A255398

/-- `lt[A086009(n), A020639(n+1)^-1]` -/
def P17726663090497139485.Spec : Prop :=
  ∀ n, (P17726663090497139485.a n : ℤ) = A255398 (n + 1)

end A255398

/-! ## A255398.P3700072944568088499

`lt[A086009(n)+1/A020639(n+2), 1]`
-/

namespace A255398.P3700072944568088499
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086009 n : ℚ) + 1 / (A020639 (n + 2) : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A255398.P3700072944568088499

namespace A255398

/-- `lt[A086009(n)+1/A020639(n+2), 1]` -/
def P3700072944568088499.Spec : Prop :=
  ∀ n, (P3700072944568088499.a n : ℤ) = A255398 (n + 1)

end A255398

