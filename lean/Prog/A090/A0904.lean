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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A090400: Expansion of 1/(1-3x+3x^3) in powers of x.

The programs for A090400, the canonical program `A090400.P2121801770388758381` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090400 has offset 0).

The definition of A090400 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+3x^3))` (program `A090400.P2121801770388758381`, by `A090400.P2121801770388758381.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090400.P2121801770388758381

`ogf(1/(1-3x+3x^3))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A090400

/-- `ogf(1/(1-3x+3x^3))` -/
def P2121801770388758381.Spec : Prop :=
  ∀ n, P2121801770388758381.a n = A090400 n

theorem P2121801770388758381.correct : P2121801770388758381.Spec := by
  intro n
  simp only [A090400]

end A090400

/-! ## A090400.P630346134751486157

`3*a(n-1)-3*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A090400.P630346134751486157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  3 * a (n - 1) - 3 * a (n - 3)

end

end A090400.P630346134751486157

namespace A090400

/-- `3*a(n-1)-3*a(n-3)` -/
def P630346134751486157.Spec : Prop :=
  ∀ n, P630346134751486157.a n = A090400 n

end A090400

/-! ## A090400.P3627767018015977360

`3*(a(n-1)-a(n-3))` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A090400.P3627767018015977360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  3 * (a (n - 1) - a (n - 3))

end

end A090400.P3627767018015977360

namespace A090400

/-- `3*(a(n-1)-a(n-3))` -/
def P3627767018015977360.Spec : Prop :=
  ∀ n, P3627767018015977360.a n = A090400 n

end A090400

/-! ## A090400.P452711391111215500

`A187501(3*(n+2))`
-/

namespace A090400.P452711391111215500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187501 (3 * (n + 2))

end

end A090400.P452711391111215500

namespace A090400

/-- `A187501(3*(n+2))` -/
def P452711391111215500.Spec : Prop :=
  ∀ n, P452711391111215500.a n = A090400 n

end A090400

/-! ## A090400.P7682478903121981994

`A187499(3*(n+3))`
-/

namespace A090400.P7682478903121981994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187499 (3 * (n + 3))

end

end A090400.P7682478903121981994

namespace A090400

/-- `A187499(3*(n+3))` -/
def P7682478903121981994.Spec : Prop :=
  ∀ n, P7682478903121981994.a n = A090400 n

end A090400

/-! ## A090400.P4740613891751108983

`A187500(3*n+7)`
-/

namespace A090400.P4740613891751108983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187500 (3 * n + 7)

end

end A090400.P4740613891751108983

namespace A090400

/-- `A187500(3*n+7)` -/
def P4740613891751108983.Spec : Prop :=
  ∀ n, P4740613891751108983.a n = A090400 n

end A090400

/-! ## A090400.P13237954359113324461

`∑[A187502(3*n+4)]`
-/

namespace A090400.P13237954359113324461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187502 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090400.P13237954359113324461

namespace A090400

/-- `∑[A187502(3*n+4)]` -/
def P13237954359113324461.Spec : Prop :=
  ∀ n, P13237954359113324461.a n = A090400 n

end A090400

/-! ## A090400.P16582303559695123514

`∑[A187501(Δ[A095794(n+1)])]`
-/

namespace A090400.P16582303559695123514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095794 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187501 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090400.P16582303559695123514

namespace A090400

/-- `∑[A187501(Δ[A095794(n+1)])]` -/
def P16582303559695123514.Spec : Prop :=
  ∀ n, P16582303559695123514.a n = A090400 n

end A090400

/-!
# A090401: Expansion of 1/(1-3x+3x^4).

The programs for A090401, the canonical program `A090401.P11005105924765366344` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090401 has offset 0).

The definition of A090401 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+3x^4))` (program `A090401.P11005105924765366344`, by `A090401.P11005105924765366344.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090401.P11005105924765366344

`ogf(1/(1-3x+3x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A090401

/-- `ogf(1/(1-3x+3x^4))` -/
def P11005105924765366344.Spec : Prop :=
  ∀ n, P11005105924765366344.a n = A090401 n

theorem P11005105924765366344.correct : P11005105924765366344.Spec := by
  intro n
  simp only [A090401]

end A090401

/-! ## A090401.P8088194493646962079

`3*a(n-1)-3*a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27`
-/

namespace A090401.P8088194493646962079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9, 27] fun n a =>
  3 * a (n - 1) - 3 * a (n - 4)

end

end A090401.P8088194493646962079

namespace A090401

/-- `3*a(n-1)-3*a(n-4)` -/
def P8088194493646962079.Spec : Prop :=
  ∀ n, P8088194493646962079.a n = A090401 n

end A090401

/-! ## A090401.P941609775101043012

`A057354(A297219(n+1)-A135549(n))`
-/

namespace A090401.P941609775101043012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A297219 (n + 1) - A135549 n).toNat

end

end A090401.P941609775101043012

namespace A090401

/-- `A057354(A297219(n+1)-A135549(n))` -/
def P941609775101043012.Spec : Prop :=
  ∀ n, P941609775101043012.a n = A090401 n

end A090401

/-!
# A090402: Symmetric triangle, read by rows, where the terms in each row, after being divided by their corresponding binomial coefficients, have an integer sum.

The programs for A090402, there is no canonical definition to state claims against.
-/

/-! ## A090402.P11704263998356473746

`A325357(A174449(n))%5`
-/

namespace A090402.P11704263998356473746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325357 (A174449 n).toNat) 5

end

end A090402.P11704263998356473746

/-! ## A090402.P7923879665980335358

`A080080(lcm(6, A154227(n)))`
-/

namespace A090402.P7923879665980335358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080080 (Int.lcm 6 (A154227 n))

end

end A090402.P7923879665980335358

/-! ## A090402.P12185737624476373118

`A031253(xor(2, A255494(n)))`
-/

namespace A090402.P12185737624476373118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031253 (Int.xor 2 (A255494 n)).toNat

end

end A090402.P12185737624476373118

/-! ## A090402.P5974433315116454680

`gcd(12, A056692(A154979(n)))`
-/

namespace A090402.P5974433315116454680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 12 (A056692 (A154979 n).toNat)

end

end A090402.P5974433315116454680

/-! ## A090402.P14480075499434349973

`A056692(A056692(A154979(n))+12)`
-/

namespace A090402.P14480075499434349973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056692 (A056692 (A154979 n).toNat + 12).toNat

end

end A090402.P14480075499434349973

/-!
# A090403: Balanced primes: Primes which are both the arithmetic mean and median of a sequence of 2k+1 consecutive primes, for some k>0.

The programs for A090403, there is no canonical definition to state claims against.
-/

/-! ## A090403.P1835040671306966714

`A045344(lt[0, A096693(n+1)])`
-/

namespace A090403.P1835040671306966714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A090403.P1835040671306966714

/-! ## A090403.P1373501652111943819

`A065091(lt[0, A096693(n+1)])`
-/

namespace A090403.P1373501652111943819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A090403.P1373501652111943819

/-! ## A090403.P17448433542663643927

`A000040(lt[0, A096693(n+1)]+1)`
-/

namespace A090403.P17448433542663643927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A090403.P17448433542663643927

/-! ## A090403.P4902242072700759772

`A008578(lt[0, A096693(n+1)]+2)`
-/

namespace A090403.P4902242072700759772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A090403.P4902242072700759772

/-! ## A090403.P13709459466023739130

`A006093(lt[0, A096693(n+1)]+1)+1`
-/

namespace A090403.P13709459466023739130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) + 1

end

end A090403.P13709459466023739130

/-!
# A090404: Triangle read by rows in which the n-th row contains the n smallest numbers that are the product of n numbers > 1.

The programs for A090404, there is no canonical definition to state claims against.
-/

/-! ## A090404.P8687230501933160575

`2*A000005(A168264(n+1))`
-/

namespace A090404.P8687230501933160575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (A168264 (n + 1)).toNat

end

end A090404.P8687230501933160575

/-! ## A090404.P16364471296295052346

`A005843(A000005(A168264(n+1)))`
-/

namespace A090404.P16364471296295052346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000005 (A168264 (n + 1)).toNat).toNat

end

end A090404.P16364471296295052346

/-! ## A090404.P11420835205561948904

`∑{d}[A168264(n+1), A040000(#)]`
-/

namespace A090404.P11420835205561948904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A040000 d

end

end A090404.P11420835205561948904

/-! ## A090404.P15468540987507133750

`A062011(A168264(n+1))`
-/

namespace A090404.P15468540987507133750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (A168264 (n + 1)).toNat

end

end A090404.P15468540987507133750

/-! ## A090404.P4230241600134447181

`A000005(A168264(comp[∑[n]]))`
-/

namespace A090404.P4230241600134447181
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A168264 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A090404.P4230241600134447181

/-!
# A090405: a(n) = PrimePi(n+2) - PrimePi(n).

The programs for A090405, the canonical program `A090405.P13728212615499651936` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090405 has offset 1).

The definition of A090405 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000720(n+3)-A000720(n+1)` (program `A090405.P13728212615499651936`, by `A090405.P13728212615499651936.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090405.P13728212615499651936

`A000720(n+3)-A000720(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A090405

/-- `A000720(n+3)-A000720(n+1)` -/
def P13728212615499651936.Spec : Prop :=
  ∀ n, P13728212615499651936.a n = A090405 (n + 1)

theorem P13728212615499651936.correct : P13728212615499651936.Spec := by
  intro n
  simp only [A090405, Nat.add_sub_cancel]

end A090405

/-! ## A090405.P14702923822612759756

`abs(Δ[A129950(n+2)])`
-/

namespace A090405.P14702923822612759756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129950 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A090405.P14702923822612759756

namespace A090405

/-- `abs(Δ[A129950(n+2)])` -/
def P14702923822612759756.Spec : Prop :=
  ∀ n, P14702923822612759756.a n = A090405 (n + 1)

end A090405

/-! ## A090405.P12653223855278013747

`floor(ratio[1-A119257(n+2)])`
-/

namespace A090405.P12653223855278013747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A119257 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A090405.P12653223855278013747

namespace A090405

/-- `floor(ratio[1-A119257(n+2)])` -/
def P12653223855278013747.Spec : Prop :=
  ∀ n, P12653223855278013747.a n = A090405 (n + 1)

end A090405

/-! ## A090405.P2683822510036886306

`C(2, A231557(n+1)+n%2)`
-/

namespace A090405.P2683822510036886306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A231557 (n + 1) + ((n % 2 : ℕ) : ℤ)).toNat

end

end A090405.P2683822510036886306

namespace A090405

/-- `C(2, A231557(n+1)+n%2)` -/
def P2683822510036886306.Spec : Prop :=
  ∀ n, (P2683822510036886306.a n : ℤ) = A090405 (n + 1)

end A090405

/-! ## A090405.P2971398326321070052

`floor(A000010(gcd(2, n)+1+n)/(n+1))`
-/

namespace A090405.P2971398326321070052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (Nat.gcd 2 n + 1 + n) : ℚ) / (n + 1 : ℚ)⌋

end

end A090405.P2971398326321070052

namespace A090405

/-- `floor(A000010(gcd(2, n)+1+n)/(n+1))` -/
def P2971398326321070052.Spec : Prop :=
  ∀ n, P2971398326321070052.a n = A090405 (n + 1)

end A090405

/-! ## A090405.P11176294820663038183

`floor(A000010(n+3-and(1, n))/(n+1))`
-/

namespace A090405.P11176294820663038183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (n + 3 - Nat.land 1 n) : ℚ) / (n + 1 : ℚ)⌋

end

end A090405.P11176294820663038183

namespace A090405

/-- `floor(A000010(n+3-and(1, n))/(n+1))` -/
def P11176294820663038183.Spec : Prop :=
  ∀ n, P11176294820663038183.a n = A090405 (n + 1)

end A090405

/-! ## A090405.P10928986701775155395

`floor(A000010(and(1, n+1)+n+2)/(n+1))`
-/

namespace A090405.P10928986701775155395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (Nat.land 1 (n + 1) + (n + 2)) : ℚ) / (n + 1 : ℚ)⌋

end

end A090405.P10928986701775155395

namespace A090405

/-- `floor(A000010(and(1, n+1)+n+2)/(n+1))` -/
def P10928986701775155395.Spec : Prop :=
  ∀ n, P10928986701775155395.a n = A090405 (n + 1)

end A090405

/-! ## A090405.P1950137915139078483

`A101808(A263997(n+1))`
-/

namespace A090405.P1950137915139078483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101808 (A263997 (n + 1)).toNat

end

end A090405.P1950137915139078483

namespace A090405

/-- `A101808(A263997(n+1))` -/
def P1950137915139078483.Spec : Prop :=
  ∀ n, P1950137915139078483.a n = A090405 (n + 1)

end A090405

/-! ## A090405.P11364139637742211646

`A090239(A289827(n+1))`
-/

namespace A090405.P11364139637742211646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090239 (A289827 (n + 1)).toNat

end

end A090405.P11364139637742211646

namespace A090405

/-- `A090239(A289827(n+1))` -/
def P11364139637742211646.Spec : Prop :=
  ∀ n, P11364139637742211646.a n = A090405 (n + 1)

end A090405

/-! ## A090405.P533877353028282843

`A168141(n+2)-A010051(n+1)`
-/

namespace A090405.P533877353028282843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168141 (n + 2) - A010051 (n + 1)

end

end A090405.P533877353028282843

namespace A090405

/-- `A168141(n+2)-A010051(n+1)` -/
def P533877353028282843.Spec : Prop :=
  ∀ n, P533877353028282843.a n = A090405 (n + 1)

end A090405

/-! ## A090405.P14089583553062140581

`A010051(n+2)+A010051(n+3)`
-/

namespace A090405.P14089583553062140581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2) + A010051 (n + 3)

end

end A090405.P14089583553062140581

namespace A090405

/-- `A010051(n+2)+A010051(n+3)` -/
def P14089583553062140581.Spec : Prop :=
  ∀ n, P14089583553062140581.a n = A090405 (n + 1)

end A090405

/-! ## A090405.P16888189496730843984

`ceil(Δ[sqrt(A256956(n+1))])`
-/

namespace A090405.P16888189496730843984
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A256956 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A090405.P16888189496730843984

namespace A090405

/-- `ceil(Δ[sqrt(A256956(n+1))])` -/
def P16888189496730843984.Spec : Prop :=
  ∀ n, P16888189496730843984.a n = A090405 (n + 1)

end A090405

/-! ## A090405.P2562487269996841016

`A294619(A110560(n+1)-A294619(n+1))`
-/

namespace A090405.P2562487269996841016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 (A110560 (n + 1) - A294619 (n + 1)).toNat

end

end A090405.P2562487269996841016

namespace A090405

/-- `A294619(A110560(n+1)-A294619(n+1))` -/
def P2562487269996841016.Spec : Prop :=
  ∀ n, P2562487269996841016.a n = A090405 (n + 1)

end A090405

/-! ## A090405.P7335843842110813943

`abs(Δ[A227625(n+2)])`
-/

namespace A090405.P7335843842110813943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227625 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A090405.P7335843842110813943

namespace A090405

/-- `abs(Δ[A227625(n+2)])` -/
def P7335843842110813943.Spec : Prop :=
  ∀ n, P7335843842110813943.a n = A090405 (n + 1)

end A090405

/-! ## A090405.P13567349892826466335

`abs(Δ[A267133(n+2)])`
-/

namespace A090405.P13567349892826466335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267133 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A090405.P13567349892826466335

namespace A090405

/-- `abs(Δ[A267133(n+2)])` -/
def P13567349892826466335.Spec : Prop :=
  ∀ n, P13567349892826466335.a n = A090405 (n + 1)

end A090405

/-! ## A090405.P2589115957317033117

`A036234(n+3)-A036234(n+1)`
-/

namespace A090405.P2589115957317033117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 3) - A036234 (n + 1)

end

end A090405.P2589115957317033117

namespace A090405

/-- `A036234(n+3)-A036234(n+1)` -/
def P2589115957317033117.Spec : Prop :=
  ∀ n, P2589115957317033117.a n = A090405 (n + 1)

theorem P2589115957317033117.correct : P2589115957317033117.Spec := by
  intro n
  simp only [A090405, Nat.add_sub_cancel, A090405.P2589115957317033117.a, A090405.P13728212615499651936.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A090405

/-! ## A090405.P3837709303962946054

`A080339(n+2)+A080339(n+3)`
-/

namespace A090405.P3837709303962946054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 2) + A080339 (n + 3)

end

end A090405.P3837709303962946054

namespace A090405

/-- `A080339(n+2)+A080339(n+3)` -/
def P3837709303962946054.Spec : Prop :=
  ∀ n, P3837709303962946054.a n = A090405 (n + 1)

end A090405

/-! ## A090405.P7596774493571920212

`A035250(n+2)-A077463(n+3)`
-/

namespace A090405.P7596774493571920212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (n + 2) - A077463 (n + 3)

end

end A090405.P7596774493571920212

namespace A090405

/-- `A035250(n+2)-A077463(n+3)` -/
def P7596774493571920212.Spec : Prop :=
  ∀ n, P7596774493571920212.a n = A090405 (n + 1)

end A090405

/-! ## A090405.P10945520227192624734

`A014683(n+3)-A113636(n+2)`
-/

namespace A090405.P10945520227192624734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (n + 3) - A113636 (n + 2)

end

end A090405.P10945520227192624734

namespace A090405

/-- `A014683(n+3)-A113636(n+2)` -/
def P10945520227192624734.Spec : Prop :=
  ∀ n, P10945520227192624734.a n = A090405 (n + 1)

end A090405

/-! ## A090405.P1007350280217536566

`A113637(n+3)-A014684(n+2)`
-/

namespace A090405.P1007350280217536566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113637 (n + 3) - A014684 (n + 2)

end

end A090405.P1007350280217536566

namespace A090405

/-- `A113637(n+3)-A014684(n+2)` -/
def P1007350280217536566.Spec : Prop :=
  ∀ n, P1007350280217536566.a n = A090405 (n + 1)

end A090405

/-! ## A090405.P8167343246810165648

`∑{p}[(n+2)*(n+3), floor(#/(n+2))]`
-/

namespace A090405.P8167343246810165648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌊(p : ℚ) / (n + 2 : ℚ)⌋

end

end A090405.P8167343246810165648

namespace A090405

/-- `∑{p}[(n+2)*(n+3), floor(#/(n+2))]` -/
def P8167343246810165648.Spec : Prop :=
  ∀ n, P8167343246810165648.a n = A090405 (n + 1)

end A090405

/-!
# A090406: a(n) = PrimePi(n+3) - PrimePi(n).

The programs for A090406, the canonical program `A090406.P14170977271506228445` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090406 has offset 1).

The definition of A090406 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000720(n+4)-A000720(n+1)` (program `A090406.P14170977271506228445`, by `A090406.P14170977271506228445.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090406.P14170977271506228445

`A000720(n+4)-A000720(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A090406

/-- `A000720(n+4)-A000720(n+1)` -/
def P14170977271506228445.Spec : Prop :=
  ∀ n, P14170977271506228445.a n = A090406 (n + 1)

theorem P14170977271506228445.correct : P14170977271506228445.Spec := by
  intro n
  simp only [A090406, Nat.add_sub_cancel]

end A090406

/-! ## A090406.P3246366314136724833

`A010051(n+2)+A010051(n+3)+A010051(n+4)`
-/

namespace A090406.P3246366314136724833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2) + A010051 (n + 3) + A010051 (n + 4)

end

end A090406.P3246366314136724833

namespace A090406

/-- `A010051(n+2)+A010051(n+3)+A010051(n+4)` -/
def P3246366314136724833.Spec : Prop :=
  ∀ n, P3246366314136724833.a n = A090406 (n + 1)

end A090406

/-! ## A090406.P17976448177681050673

`A168141(n+3)`
-/

namespace A090406.P17976448177681050673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168141 (n + 3)

end

end A090406.P17976448177681050673

namespace A090406

/-- `A168141(n+3)` -/
def P17976448177681050673.Spec : Prop :=
  ∀ n, P17976448177681050673.a n = A090406 (n + 1)

end A090406

/-! ## A090406.P927296607547034140

`A090405(n+2)+A010051(n+2)`
-/

namespace A090406.P927296607547034140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090405 (n + 2) + A010051 (n + 2)

end

end A090406.P927296607547034140

namespace A090406

/-- `A090405(n+2)+A010051(n+2)` -/
def P927296607547034140.Spec : Prop :=
  ∀ n, P927296607547034140.a n = A090406 (n + 1)

end A090406

/-! ## A090406.P8508033604774250725

`A090405(n+2)+A080339(n+2)`
-/

namespace A090406.P8508033604774250725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090405 (n + 2) + A080339 (n + 2)

end

end A090406.P8508033604774250725

namespace A090406

/-- `A090405(n+2)+A080339(n+2)` -/
def P8508033604774250725.Spec : Prop :=
  ∀ n, P8508033604774250725.a n = A090406 (n + 1)

end A090406

/-! ## A090406.P3701095924182163714

`A082460(n+2)+A090405(n+2)-A084360(n+2)`
-/

namespace A090406.P3701095924182163714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (n + 2) + (A090405 (n + 2) - A084360 (n + 2))

end

end A090406.P3701095924182163714

namespace A090406

/-- `A082460(n+2)+A090405(n+2)-A084360(n+2)` -/
def P3701095924182163714.Spec : Prop :=
  ∀ n, P3701095924182163714.a n = A090406 (n + 1)

end A090406

/-! ## A090406.P5064017225996227535

`A090405(n+2)+A049084(n+2)/A000720(n+2)`
-/

namespace A090406.P5064017225996227535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090405 (n + 2) : ℚ) + (A049084 (n + 2) : ℚ) / (A000720 (n + 2) : ℚ)

end

end A090406.P5064017225996227535

namespace A090406

/-- `A090405(n+2)+A049084(n+2)/A000720(n+2)` -/
def P5064017225996227535.Spec : Prop :=
  ∀ n, P5064017225996227535.a n = (A090406 (n + 1) : ℚ)

end A090406

/-! ## A090406.P17613578728208104012

`Δ[A002815(n+3)-A002815(n)]`
-/

namespace A090406.P17613578728208104012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002815 (n + 3) - A002815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090406.P17613578728208104012

namespace A090406

/-- `Δ[A002815(n+3)-A002815(n)]` -/
def P17613578728208104012.Spec : Prop :=
  ∀ n, P17613578728208104012.a n = A090406 (n + 1)

end A090406

/-! ## A090406.P16719811594770265499

`A090405(n+1)+A080545(n+4)`
-/

namespace A090406.P16719811594770265499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090405 (n + 1) + A080545 (n + 4)

end

end A090406.P16719811594770265499

namespace A090406

/-- `A090405(n+1)+A080545(n+4)` -/
def P16719811594770265499.Spec : Prop :=
  ∀ n, P16719811594770265499.a n = A090406 (n + 1)

end A090406

/-! ## A090406.P10378576954575322443

`A036234(n+4)-A036234(n+1)`
-/

namespace A090406.P10378576954575322443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 4) - A036234 (n + 1)

end

end A090406.P10378576954575322443

namespace A090406

/-- `A036234(n+4)-A036234(n+1)` -/
def P10378576954575322443.Spec : Prop :=
  ∀ n, P10378576954575322443.a n = A090406 (n + 1)

theorem P10378576954575322443.correct : P10378576954575322443.Spec := by
  intro n
  simp only [A090406, Nat.add_sub_cancel, A090406.P10378576954575322443.a, A090406.P14170977271506228445.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A090406

/-! ## A090406.P14506867815394524794

`A230980(n+4)-A230980(n+1)`
-/

namespace A090406.P14506867815394524794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 4) - A230980 (n + 1)

end

end A090406.P14506867815394524794

namespace A090406

/-- `A230980(n+4)-A230980(n+1)` -/
def P14506867815394524794.Spec : Prop :=
  ∀ n, P14506867815394524794.a n = A090406 (n + 1)

end A090406

/-! ## A090406.P5299482517427431880

`A056172(2*(n+4))-A056172(2*(n+1))`
-/

namespace A090406.P5299482517427431880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * (n + 4)) - A056172 (2 * (n + 1))

end

end A090406.P5299482517427431880

namespace A090406

/-- `A056172(2*(n+4))-A056172(2*(n+1))` -/
def P5299482517427431880.Spec : Prop :=
  ∀ n, P5299482517427431880.a n = A090406 (n + 1)

end A090406

/-!
# A090407: a(n) = Sum_{k = 0..n} C(4*n + 1, 4*k).

The programs for A090407, the canonical program `A090407.P11298856224360718538` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090407 has offset 0).

The definition of A090407 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(4*n+1, 4*#)]` (program `A090407.P11298856224360718538`, by `A090407.P11298856224360718538.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090407.P15928213952256854811

`ogf((1-6x)/(1-12x-64x^2))`
-/

namespace A090407.P15928213952256854811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6] [1, -12, -64] n

end

end A090407.P15928213952256854811

namespace A090407

/-- `ogf((1-6x)/(1-12x-64x^2))` -/
def P15928213952256854811.Spec : Prop :=
  ∀ n, P15928213952256854811.a n = A090407 n

end A090407

/-! ## A090407.P8862559754992336312

`12*a(n-1)+64*a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A090407.P8862559754992336312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  12 * a (n - 1) + 64 * a (n - 2)

end

end A090407.P8862559754992336312

namespace A090407

/-- `12*a(n-1)+64*a(n-2)` -/
def P8862559754992336312.Spec : Prop :=
  ∀ n, (P8862559754992336312.a n : ℤ) = A090407 n

end A090407

/-! ## A090407.P16766058199037840467

`1/2*4^n*(4^n+(-1)^n)`
-/

namespace A090407.P16766058199037840467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (4 ^ n : ℚ) * ((4 ^ n : ℤ) + (-1) ^ n : ℚ)

end

end A090407.P16766058199037840467

namespace A090407

/-- `1/2*4^n*(4^n+(-1)^n)` -/
def P16766058199037840467.Spec : Prop :=
  ∀ n, P16766058199037840467.a n = (A090407 n : ℚ)

end A090407

/-! ## A090407.P11298856224360718538

`∑{#}[n, C(4*n+1, 4*#)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A090407

/-- `∑{#}[n, C(4*n+1, 4*#)]` -/
def P11298856224360718538.Spec : Prop :=
  ∀ n, (P11298856224360718538.a n : ℤ) = A090407 n

theorem P11298856224360718538.correct : P11298856224360718538.Spec := by
  intro n
  simp only [A090407]

end A090407

/-! ## A090407.P15272651531620421600

`A387869(2*n)`
-/

namespace A090407.P15272651531620421600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387869 (2 * n)

end

end A090407.P15272651531620421600

namespace A090407

/-- `A387869(2*n)` -/
def P15272651531620421600.Spec : Prop :=
  ∀ n, P15272651531620421600.a n = A090407 n

end A090407

/-! ## A090407.P16431093373257809817

`A038503(4*n+1)`
-/

namespace A090407.P16431093373257809817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (4 * n + 1)

end

end A090407.P16431093373257809817

namespace A090407

/-- `A038503(4*n+1)` -/
def P16431093373257809817.Spec : Prop :=
  ∀ n, P16431093373257809817.a n = A090407 n

end A090407

/-! ## A090407.P5193377867392951988

`A038504(4*n+1)`
-/

namespace A090407.P5193377867392951988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 (4 * n + 1)

end

end A090407.P5193377867392951988

namespace A090407

/-- `A038504(4*n+1)` -/
def P5193377867392951988.Spec : Prop :=
  ∀ n, P5193377867392951988.a n = A090407 n

end A090407

/-! ## A090407.P6348120528352665801

`A038518(4*n+1)`
-/

namespace A090407.P6348120528352665801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038518 (4 * n + 1)

end

end A090407.P6348120528352665801

namespace A090407

/-- `A038518(4*n+1)` -/
def P6348120528352665801.Spec : Prop :=
  ∀ n, P6348120528352665801.a n = A090407 n

end A090407

/-! ## A090407.P10914576226407691088

`A038520(4*n+1)`
-/

namespace A090407.P10914576226407691088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038520 (4 * n + 1)

end

end A090407.P10914576226407691088

namespace A090407

/-- `A038520(4*n+1)` -/
def P10914576226407691088.Spec : Prop :=
  ∀ n, P10914576226407691088.a n = A090407 n

end A090407

/-! ## A090407.P2330626316317503873

`A137776(A017089(n))`
-/

namespace A090407.P2330626316317503873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137776 (A017089 n).toNat

end

end A090407.P2330626316317503873

namespace A090407

/-- `A137776(A017089(n))` -/
def P2330626316317503873.Spec : Prop :=
  ∀ n, P2330626316317503873.a n = A090407 n

end A090407

/-!
# A090408: a(n) = Sum_{k=0..n} binomial(4*n+3,4*k).

The programs for A090408, the canonical program `A090408.P4001698692300979847` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090408 has offset 0).

The definition of A090408 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(4*n+3, 4*#)]` (program `A090408.P4001698692300979847`, by `A090408.P4001698692300979847.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090408.P5895951196359847651

`ogf((1+24x)/(1-12x-64x^2))`
-/

namespace A090408.P5895951196359847651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 24] [1, -12, -64] n

end

end A090408.P5895951196359847651

namespace A090408

/-- `ogf((1+24x)/(1-12x-64x^2))` -/
def P5895951196359847651.Spec : Prop :=
  ∀ n, P5895951196359847651.a n = A090408 n

end A090408

/-! ## A090408.P2651320684895019253

`12*a(n-1)+64*a(n-2)` with `a(0)=1, a(1)=36`
-/

namespace A090408.P2651320684895019253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 36] fun n a =>
  12 * a (n - 1) + 64 * a (n - 2)

end

end A090408.P2651320684895019253

namespace A090408

/-- `12*a(n-1)+64*a(n-2)` -/
def P2651320684895019253.Spec : Prop :=
  ∀ n, (P2651320684895019253.a n : ℤ) = A090408 n

end A090408

/-! ## A090408.P3703137259665712159

`2^(1+4*n)-(-1)^n*4^n`
-/

namespace A090408.P3703137259665712159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (1 + 4 * n) : ℤ) - (-1) ^ n * (4 ^ n : ℤ)

end

end A090408.P3703137259665712159

namespace A090408

/-- `2^(1+4*n)-(-1)^n*4^n` -/
def P3703137259665712159.Spec : Prop :=
  ∀ n, P3703137259665712159.a n = A090408 n

end A090408

/-! ## A090408.P4001698692300979847

`∑{#}[n, C(4*n+3, 4*#)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A090408

/-- `∑{#}[n, C(4*n+3, 4*#)]` -/
def P4001698692300979847.Spec : Prop :=
  ∀ n, (P4001698692300979847.a n : ℤ) = A090408 n

theorem P4001698692300979847.correct : P4001698692300979847.Spec := by
  intro n
  simp only [A090408]

end A090408

/-! ## A090408.P17886250565563716244

`C(char[2*n+1]+2*4^n, 2)`
-/

namespace A090408.P17886250565563716244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((if ∃ j, f1 j = n then 1 else 0) + 2 * 4 ^ n) 2

end

end A090408.P17886250565563716244

namespace A090408

/-- `C(char[2*n+1]+2*4^n, 2)` -/
def P17886250565563716244.Spec : Prop :=
  ∀ n, (P17886250565563716244.a n : ℤ) = A090408 n

end A090408

/-! ## A090408.P2358890981191494141

`A387869(Δ[n²])`
-/

namespace A090408.P2358890981191494141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387869 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A090408.P2358890981191494141

namespace A090408

/-- `A387869(Δ[n²])` -/
def P2358890981191494141.Spec : Prop :=
  ∀ n, P2358890981191494141.a n = A090408 n

end A090408

/-! ## A090408.P6979214939345835862

`A070775(n+1)/2`
-/

namespace A090408.P6979214939345835862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070775 (n + 1) : ℚ) / 2

end

end A090408.P6979214939345835862

namespace A090408

/-- `A070775(n+1)/2` -/
def P6979214939345835862.Spec : Prop :=
  ∀ n, P6979214939345835862.a n = (A090408 n : ℚ)

end A090408

/-! ## A090408.P4164270934573521251

`A377714(2*(n+1))/2`
-/

namespace A090408.P4164270934573521251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A377714 (2 * (n + 1)) : ℚ) / 2

end

end A090408.P4164270934573521251

namespace A090408

/-- `A377714(2*(n+1))/2` -/
def P4164270934573521251.Spec : Prop :=
  ∀ n, P4164270934573521251.a n = (A090408 n : ℚ)

end A090408

/-! ## A090408.P15993842514043848253

`A000749(3*(n+1)+n)`
-/

namespace A090408.P15993842514043848253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 (3 * (n + 1) + n)

end

end A090408.P15993842514043848253

namespace A090408

/-- `A000749(3*(n+1)+n)` -/
def P15993842514043848253.Spec : Prop :=
  ∀ n, P15993842514043848253.a n = A090408 n

end A090408

/-! ## A090408.P16646626795344581688

`A038503(3*(n+1)+n)`
-/

namespace A090408.P16646626795344581688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (3 * (n + 1) + n)

end

end A090408.P16646626795344581688

namespace A090408

/-- `A038503(3*(n+1)+n)` -/
def P16646626795344581688.Spec : Prop :=
  ∀ n, P16646626795344581688.a n = A090408 n

end A090408

/-!
# A090409: a(n) = (7*8^n + 2*(-1)^n)/9.

The programs for A090409, the canonical program `A090409.P12278374306520749518` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090409 has offset 0).

The definition of A090409 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*8^n+2*(-1)^n)/9` (program `A090409.P16476256136991908685`, by `A090409.P16476256136991908685.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090409.P9629190764043490103

`ogf((1-x)/(1-7x-8x^2))`
-/

namespace A090409.P9629190764043490103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -7, -8] n

end

end A090409.P9629190764043490103

namespace A090409

/-- `ogf((1-x)/(1-7x-8x^2))` -/
def P9629190764043490103.Spec : Prop :=
  ∀ n, P9629190764043490103.a n = A090409 n

end A090409

/-! ## A090409.P12278374306520749518

`7*a(n-1)+8*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A090409

/-- `7*a(n-1)+8*a(n-2)` -/
def P12278374306520749518.Spec : Prop :=
  ∀ n, (P12278374306520749518.a n : ℤ) = A090409 n

theorem P12278374306520749518.correct : P12278374306520749518.Spec := by
  intro n
  simp only [A090409]

end A090409

/-! ## A090409.P16963915248333453437

`(A007613(n)+A082311(n)+A082365(n))/3`
-/

namespace A090409.P16963915248333453437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007613 n + A082311 n + A082365 n : ℚ) / 3

end

end A090409.P16963915248333453437

namespace A090409

/-- `(A007613(n)+A082311(n)+A082365(n))/3` -/
def P16963915248333453437.Spec : Prop :=
  ∀ n, P16963915248333453437.a n = (A090409 n : ℚ)

end A090409

/-! ## A090409.P16476256136991908685

`(7*8^n+2*(-1)^n)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A090409.P16476256136991908685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 8 ^ n : ℤ) + 2 * (-1) ^ n : ℚ) / 9

end

end A090409.P16476256136991908685

namespace A090409

/-- `(7*8^n+2*(-1)^n)/9` -/
def P16476256136991908685.Spec : Prop :=
  ∀ n, P16476256136991908685.a n = (A090409 n : ℚ)

theorem P16476256136991908685.correct : P16476256136991908685.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A090409, Nat.add_sub_cancel, A090409.P16476256136991908685.a, A090409.P12278374306520749518.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A090409, Nat.add_sub_cancel, A090409.P16476256136991908685.a, A090409.P12278374306520749518.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A090409

/-! ## A090409.P2150201632987842056

`Δ[8^(n-1)-a(n-1)]` with `a(0)=0`
-/

namespace A090409.P2150201632987842056
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (8 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090409.P2150201632987842056

namespace A090409

/-- `Δ[8^(n-1)-a(n-1)]` -/
def P2150201632987842056.Spec : Prop :=
  ∀ n, P2150201632987842056.a n = (A090409 n : ℚ)

end A090409

/-! ## A090409.P346041519719050586

`Δ[A015565(n)]`
-/

namespace A090409.P346041519719050586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090409.P346041519719050586

namespace A090409

/-- `Δ[A015565(n)]` -/
def P346041519719050586.Spec : Prop :=
  ∀ n, P346041519719050586.a n = A090409 n

end A090409

/-! ## A090409.P10112089497993070503

`abs(2-A165748(n))`
-/

namespace A090409.P10112089497993070503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A165748 n|

end

end A090409.P10112089497993070503

namespace A090409

/-- `abs(2-A165748(n))` -/
def P10112089497993070503.Spec : Prop :=
  ∀ n, P10112089497993070503.a n = A090409 n

end A090409

/-! ## A090409.P8023145429488319381

`Δ[A113405(3*n)]`
-/

namespace A090409.P8023145429488319381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090409.P8023145429488319381

namespace A090409

/-- `Δ[A113405(3*n)]` -/
def P8023145429488319381.Spec : Prop :=
  ∀ n, P8023145429488319381.a n = A090409 n

end A090409

/-! ## A090409.P15538224478572280636

`Δ[A131090(3*n)]`
-/

namespace A090409.P15538224478572280636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131090 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090409.P15538224478572280636

namespace A090409

/-- `Δ[A131090(3*n)]` -/
def P15538224478572280636.Spec : Prop :=
  ∀ n, P15538224478572280636.a n = A090409 n

end A090409

/-! ## A090409.P1795521920235945894

`Δ[A131666(3*n)]`
-/

namespace A090409.P1795521920235945894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090409.P1795521920235945894

namespace A090409

/-- `Δ[A131666(3*n)]` -/
def P1795521920235945894.Spec : Prop :=
  ∀ n, P1795521920235945894.a n = A090409 n

end A090409

/-! ## A090409.P8796423015049351627

`Δ[A133511(3*n)]`
-/

namespace A090409.P8796423015049351627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133511 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090409.P8796423015049351627

namespace A090409

/-- `Δ[A133511(3*n)]` -/
def P8796423015049351627.Spec : Prop :=
  ∀ n, P8796423015049351627.a n = A090409 n

end A090409

/-! ## A090409.P18004679557504913742

`Δ[A135259(3*n)]`
-/

namespace A090409.P18004679557504913742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135259 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090409.P18004679557504913742

namespace A090409

/-- `Δ[A135259(3*n)]` -/
def P18004679557504913742.Spec : Prop :=
  ∀ n, P18004679557504913742.a n = A090409 n

end A090409

/-! ## A090409.P10047734913587112211

`∑{#}[n, C(n, #)*A053573(#)]`
-/

namespace A090409.P10047734913587112211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A053573 k

end

end A090409.P10047734913587112211

namespace A090409

/-- `∑{#}[n, C(n, #)*A053573(#)]` -/
def P10047734913587112211.Spec : Prop :=
  ∀ n, P10047734913587112211.a n = A090409 n

end A090409

/-! ## A090409.P11457750119617525285

`A082311(n)+A015565(n)`
-/

namespace A090409.P11457750119617525285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082311 n + A015565 n

end

end A090409.P11457750119617525285

namespace A090409

/-- `A082311(n)+A015565(n)` -/
def P11457750119617525285.Spec : Prop :=
  ∀ n, P11457750119617525285.a n = A090409 n

end A090409

/-! ## A090409.P4118342831940420213

`A132804(n)+A093134(n)`
-/

namespace A090409.P4118342831940420213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132804 n + A093134 n

end

end A090409.P4118342831940420213

namespace A090409

/-- `A132804(n)+A093134(n)` -/
def P4118342831940420213.Spec : Prop :=
  ∀ n, P4118342831940420213.a n = A090409 n

end A090409

/-! ## A090409.P14354945474319634511

`A015565(n+1)-A015565(n)`
-/

namespace A090409.P14354945474319634511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015565 (n + 1) - A015565 n

end

end A090409.P14354945474319634511

namespace A090409

/-- `A015565(n+1)-A015565(n)` -/
def P14354945474319634511.Spec : Prop :=
  ∀ n, P14354945474319634511.a n = A090409 n

end A090409

/-! ## A090409.P14494570539039770005

`A141355(2*n)+A015565(n)`
-/

namespace A090409.P14494570539039770005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141355 (2 * n) + A015565 n

end

end A090409.P14494570539039770005

namespace A090409

/-- `A141355(2*n)+A015565(n)` -/
def P14494570539039770005.Spec : Prop :=
  ∀ n, P14494570539039770005.a n = A090409 n

end A090409

/-! ## A090409.P2149760403450901860

`A001018(n)-2*A015565(n)`
-/

namespace A090409.P2149760403450901860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n - 2 * A015565 n

end

end A090409.P2149760403450901860

namespace A090409

/-- `A001018(n)-2*A015565(n)` -/
def P2149760403450901860.Spec : Prop :=
  ∀ n, P2149760403450901860.a n = A090409 n

end A090409

/-! ## A090409.P13339077831719446142

`A093134(n)+A014113(3*n)`
-/

namespace A090409.P13339077831719446142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093134 n + A014113 (3 * n)

end

end A090409.P13339077831719446142

namespace A090409

/-- `A093134(n)+A014113(3*n)` -/
def P13339077831719446142.Spec : Prop :=
  ∀ n, P13339077831719446142.a n = A090409 n

end A090409

/-!
# A090410: Values of L(10^n), where L(n) is the summatory function of the Liouville function A008836(n).

The programs for A090410, there is no canonical definition to state claims against.
-/

/-! ## A090410.P7076138364557854982

`A212818(n)-A212819(n)`
-/

namespace A090410.P7076138364557854982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212818 n - A212819 n

end

end A090410.P7076138364557854982

/-! ## A090410.P15997926895044536400

`2*A212818(n)-A011557(n)`
-/

namespace A090410.P15997926895044536400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212818 n - A011557 n

end

end A090410.P15997926895044536400

/-! ## A090410.P5103898475132481413

`A011557(n)-2*A212819(n)`
-/

namespace A090410.P5103898475132481413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n - 2 * A212819 n

end

end A090410.P5103898475132481413

/-! ## A090410.P17677982111626494569

`1-A062397(n)%A212818(n)`
-/

namespace A090410.P17677982111626494569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A062397 n) (A212818 n)

end

end A090410.P17677982111626494569

/-!
# A090411: Expansion of g.f. (1-x)/(1-16*x).

The programs for A090411, the canonical program `A090411.P14253873574278008698` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090411 has offset 0).

The definition of A090411 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-16x))` (program `A090411.P14253873574278008698`, by `A090411.P14253873574278008698.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090411.P14253873574278008698

`ogf((1-x)/(1-16x))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A090411

/-- `ogf((1-x)/(1-16x))` -/
def P14253873574278008698.Spec : Prop :=
  ∀ n, P14253873574278008698.a n = A090411 n

theorem P14253873574278008698.correct : P14253873574278008698.Spec := by
  intro n
  simp only [A090411]

end A090411

/-! ## A090411.P16584345266628809340

`16*a(n-1)` with `a(0)=1, a(1)=15`
-/

namespace A090411.P16584345266628809340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n a =>
  16 * a (n - 1)

end

end A090411.P16584345266628809340

namespace A090411

/-- `16*a(n-1)` -/
def P16584345266628809340.Spec : Prop :=
  ∀ n, (P16584345266628809340.a n : ℤ) = A090411 n

end A090411

/-! ## A090411.P6369303212254815069

`(A070775(n)+A090407(n)+A001025(n)+A090408(n))/4`
-/

namespace A090411.P6369303212254815069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070775 n + A090407 n + A001025 n + A090408 n : ℚ) / 4

end

end A090411.P6369303212254815069

namespace A090411

/-- `(A070775(n)+A090407(n)+A001025(n)+A090408(n))/4` -/
def P6369303212254815069.Spec : Prop :=
  ∀ n, P6369303212254815069.a n = (A090411 n : ℚ)

end A090411

/-! ## A090411.P13965514014809679038

`Δ[floor(16^(n-1))]`
-/

namespace A090411.P13965514014809679038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(16 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090411.P13965514014809679038

namespace A090411

/-- `Δ[floor(16^(n-1))]` -/
def P13965514014809679038.Spec : Prop :=
  ∀ n, P13965514014809679038.a n = A090411 n

end A090411

/-! ## A090411.P4960817083997518036

`a(n-1)/(1/4)²` with `a(0)=1, a(1)=15`
-/

namespace A090411.P4960817083997518036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 15] fun n a =>
  a (n - 1) / ((1 : ℚ) / 4) ^ 2

end

end A090411.P4960817083997518036

namespace A090411

/-- `a(n-1)/(1/4)²` -/
def P4960817083997518036.Spec : Prop :=
  ∀ n, P4960817083997518036.a n = (A090411 n : ℚ)

end A090411

/-! ## A090411.P10329888995517465007

`round(Δ[(2^floor(2/acot(n))/4)²])`
-/

namespace A090411.P10329888995517465007
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ : ℤ) / 4) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A090411.P10329888995517465007

namespace A090411

/-- `round(Δ[(2^floor(2/acot(n))/4)²])` -/
def P10329888995517465007.Spec : Prop :=
  ∀ n, P10329888995517465007.a n = A090411 n

end A090411

/-! ## A090411.P15534531963758834578

`abs(Δ[A131577(n)²²])`
-/

namespace A090411.P15534531963758834578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131577 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A090411.P15534531963758834578

namespace A090411

/-- `abs(Δ[A131577(n)²²])` -/
def P15534531963758834578.Spec : Prop :=
  ∀ n, P15534531963758834578.a n = A090411 n

end A090411

/-! ## A090411.P2082304994958538902

`record[Δ[A166444(n)²²]]`
-/

namespace A090411.P2082304994958538902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166444 n ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090411.P2082304994958538902

namespace A090411

/-- `record[Δ[A166444(n)²²]]` -/
def P2082304994958538902.Spec : Prop :=
  ∀ n, P2082304994958538902.a n = A090411 n

end A090411

/-! ## A090411.P1791199229906309819

`record[Δ[Δ[A131575(n)²]²]]`
-/

namespace A090411.P1791199229906309819
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090411.P1791199229906309819

namespace A090411

/-- `record[Δ[Δ[A131575(n)²]²]]` -/
def P1791199229906309819.Spec : Prop :=
  ∀ n, P1791199229906309819.a n = A090411 n

end A090411

/-! ## A090411.P16590247269565715938

`(4^n+floor(2^(n-1))²)*record[A110164(n)]`
-/

namespace A090411.P16590247269565715938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℤ) + ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ ^ 2) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090411.P16590247269565715938

namespace A090411

/-- `(4^n+floor(2^(n-1))²)*record[A110164(n)]` -/
def P16590247269565715938.Spec : Prop :=
  ∀ n, P16590247269565715938.a n = A090411 n

end A090411

/-!
# A090412: A Chebyshev transform of 2^n.

The programs for A090412, the canonical program `A090412.P5090535877680576514` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090412 has offset 0).

The definition of A090412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090412.P7146554598422308999

`(-1)^n*A086990(n+1)`
-/

namespace A090412.P7146554598422308999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A086990 (n + 1)

end

end A090412.P7146554598422308999

namespace A090412

/-- `(-1)^n*A086990(n+1)` -/
def P7146554598422308999.Spec : Prop :=
  ∀ n, P7146554598422308999.a n = A090412 n

end A090412

/-! ## A090412.P5090535877680576514

`(3*a(n-1)-A105523(n))/2` with `a(0)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A090412

/-- `(3*a(n-1)-A105523(n))/2` -/
def P5090535877680576514.Spec : Prop :=
  ∀ n, P5090535877680576514.a n = (A090412 n : ℚ)

end A090412

/-! ## A090412.P17378714654709374422

`A086990(n+1)/A033999(n)`
-/

namespace A090412.P17378714654709374422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086990 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A090412.P17378714654709374422

namespace A090412

/-- `A086990(n+1)/A033999(n)` -/
def P17378714654709374422.Spec : Prop :=
  ∀ n, P17378714654709374422.a n = (A090412 n : ℚ)

end A090412

/-! ## A090412.P8254240022754348983

`A086990(n+1)/A062157(3*(n+1))`
-/

namespace A090412.P8254240022754348983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086990 (n + 1) : ℚ) / (A062157 (3 * (n + 1)) : ℚ)

end

end A090412.P8254240022754348983

namespace A090412

/-- `A086990(n+1)/A062157(3*(n+1))` -/
def P8254240022754348983.Spec : Prop :=
  ∀ n, P8254240022754348983.a n = (A090412 n : ℚ)

end A090412

/-! ## A090412.P12483900895210272153

`∑{#}[n, C(n, #)*A049122(#+1)]`
-/

namespace A090412.P12483900895210272153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A049122 (k + 1)

end

end A090412.P12483900895210272153

namespace A090412

/-- `∑{#}[n, C(n, #)*A049122(#+1)]` -/
def P12483900895210272153.Spec : Prop :=
  ∀ n, P12483900895210272153.a n = A090412 n

end A090412

/-!
# A090413: A Chebyshev transform of 3^n.

The programs for A090413, there is no canonical definition to state claims against.
-/

/-! ## A090413.P13804594881417725114

`Δ[A110655(A094976(n+1))]`
-/

namespace A090413.P13804594881417725114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A094976 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090413.P13804594881417725114

/-! ## A090413.P17358594474764995268

`∑[A305632((n+1)²+n+2)]`
-/

namespace A090413.P17358594474764995268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305632 ((n + 1) ^ 2 + (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090413.P17358594474764995268

/-! ## A090413.P5605947238635502970

`A248227(∑[A018031(n)])`
-/

namespace A090413.P5605947238635502970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A090413.P5605947238635502970

/-!
# A090415: a(n) = Floor[4*Pi*n/(E)].

The programs for A090415, the canonical program `A090415.P9076440176586904478` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090415 has offset 2).

The definition of A090415 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(4*π*(n+2)/e)` (program `A090415.P9076440176586904478`, by `A090415.P9076440176586904478.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090415.P9076440176586904478

`floor(4*π*(n+2)/e)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A090415

/-- `floor(4*π*(n+2)/e)` -/
def P9076440176586904478.Spec : Prop :=
  ∀ n, P9076440176586904478.a n = A090415 (n + 2)

theorem P9076440176586904478.correct : P9076440176586904478.Spec := by
  intro n
  simp only [A090415, Nat.add_sub_cancel]

end A090415

/-! ## A090415.P18274243359427608927

`A292651(4*(n+2))-4*(n+2)`
-/

namespace A090415.P18274243359427608927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292651 (4 * (n + 2)) - (4 * (n + 2) : ℤ)

end

end A090415.P18274243359427608927

namespace A090415

/-- `A292651(4*(n+2))-4*(n+2)` -/
def P18274243359427608927.Spec : Prop :=
  ∀ n, P18274243359427608927.a n = A090415 (n + 2)

end A090415

/-! ## A090415.P7829270561958479088

`A213219(3*n+5)+A181796(A069675(n+1))`
-/

namespace A090415.P7829270561958479088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213219 (3 * n + 5) + A181796 (A069675 (n + 1)).toNat

end

end A090415.P7829270561958479088

namespace A090415

/-- `A213219(3*n+5)+A181796(A069675(n+1))` -/
def P7829270561958479088.Spec : Prop :=
  ∀ n, P7829270561958479088.a n = A090415 (n + 2)

end A090415

/-! ## A090415.P12209539393299394088

`A213219(3*n+5)+A151817(A151810(n+3))`
-/

namespace A090415.P12209539393299394088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213219 (3 * n + 5) + A151817 (A151810 (n + 3)).toNat

end

end A090415.P12209539393299394088

namespace A090415

/-- `A213219(3*n+5)+A151817(A151810(n+3))` -/
def P12209539393299394088.Spec : Prop :=
  ∀ n, P12209539393299394088.a n = A090415 (n + 2)

end A090415

/-! ## A090415.P14939412139265037635

`A213219(3*n+5)+A020639(A213218(n+1))`
-/

namespace A090415.P14939412139265037635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213219 (3 * n + 5) + A020639 (A213218 (n + 1)).toNat

end

end A090415.P14939412139265037635

namespace A090415

/-- `A213219(3*n+5)+A020639(A213218(n+1))` -/
def P14939412139265037635.Spec : Prop :=
  ∀ n, P14939412139265037635.a n = A090415 (n + 2)

end A090415

/-!
# A090416: a(n) = if Floor[(2*Pi/E)*m] is prime then Floor[(2*Pi/E)*m].

The programs for A090416, there is no canonical definition to state claims against.
-/

/-! ## A090416.P192560926396346842

`p?[A172274(8*n)]`
-/

namespace A090416.P192560926396346842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172274 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090416.P192560926396346842

/-! ## A090416.P13670542051849159800

`∩[A000040(n+1), A172274(8*n)]`
-/

namespace A090416.P13670542051849159800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172274 (8 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090416.P13670542051849159800

/-! ## A090416.P14429235476374458843

`∩[A172274(8*n), record[A006530(n+2)]]`
-/

namespace A090416.P14429235476374458843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172274 (8 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090416.P14429235476374458843

/-!
# A090417: Primes of the form floor(2*Pi*n/(e*log(n))).

The programs for A090417, the canonical program `A090417.P16595927855475938041` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090417 has offset 1).

The definition of A090417 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090417.P16595927855475938041

`A000040(n+4)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A090417

/-- `A000040(n+4)` -/
def P16595927855475938041.Spec : Prop :=
  ∀ n, P16595927855475938041.a n = A090417 (n + 1)

theorem P16595927855475938041.correct : P16595927855475938041.Spec := by
  intro n
  simp only [A090417, Nat.add_sub_cancel]

end A090417

/-! ## A090417.P2325446574203876813

`p?[2*n+7]`
-/

namespace A090417.P2325446574203876813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A090417.P2325446574203876813

namespace A090417

/-- `p?[2*n+7]` -/
def P2325446574203876813.Spec : Prop :=
  ∀ n, (P2325446574203876813.a n : ℤ) = A090417 (n + 1)

end A090417

/-! ## A090417.P6470674857286367852

`record[∑{p}[n+7, #]]`
-/

namespace A090417.P6470674857286367852
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090417.P6470674857286367852

namespace A090417

/-- `record[∑{p}[n+7, #]]` -/
def P6470674857286367852.Spec : Prop :=
  ∀ n, (P6470674857286367852.a n : ℤ) = A090417 (n + 1)

end A090417

/-! ## A090417.P12593582857364436600

`record[p?[abs(2*n-7)]]`
-/

namespace A090417.P12593582857364436600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 7|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090417.P12593582857364436600

namespace A090417

/-- `record[p?[abs(2*n-7)]]` -/
def P12593582857364436600.Spec : Prop :=
  ∀ n, P12593582857364436600.a n = A090417 (n + 1)

end A090417

/-! ## A090417.P1591997161447972891

`lt[5, ∏{p}[n, #²/n]]`
-/

namespace A090417.P1591997161447972891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (p ^ 2 : ℚ) / (n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A090417.P1591997161447972891

namespace A090417

/-- `lt[5, ∏{p}[n, #²/n]]` -/
def P1591997161447972891.Spec : Prop :=
  ∀ n, (P1591997161447972891.a n : ℤ) = A090417 (n + 1)

end A090417

/-! ## A090417.P374195645097951425

`lt[(3*∑{e}[n, #])!, n]`
-/

namespace A090417.P374195645097951425
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (3 * (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A090417.P374195645097951425

namespace A090417

/-- `lt[(3*∑{e}[n, #])!, n]` -/
def P374195645097951425.Spec : Prop :=
  ∀ n, (P374195645097951425.a n : ℤ) = A090417 (n + 1)

end A090417

/-! ## A090417.P8840674639188398547

`lt[∏{d}[n, #]+5, 2*n]`
-/

namespace A090417.P8840674639188398547
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d + 5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A090417.P8840674639188398547

namespace A090417

/-- `lt[∏{d}[n, #]+5, 2*n]` -/
def P8840674639188398547.Spec : Prop :=
  ∀ n, (P8840674639188398547.a n : ℤ) = A090417 (n + 1)

end A090417

/-! ## A090417.P10317792393698172482

`lt[5, 2*n-∏{d}[n, #]]`
-/

namespace A090417.P10317792393698172482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((∏ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A090417.P10317792393698172482

namespace A090417

/-- `lt[5, 2*n-∏{d}[n, #]]` -/
def P10317792393698172482.Spec : Prop :=
  ∀ n, (P10317792393698172482.a n : ℤ) = A090417 (n + 1)

end A090417

/-!
# A090418: Number of ways to write n in binary representation as a concatenation of primes.

The programs for A090418, there is no canonical definition to state claims against.
-/

/-! ## A090418.P13105442369552063919

`A151899(n*A074909(n)²)`
-/

namespace A090418.P13105442369552063919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151899 ((n : ℤ) * A074909 n ^ 2).toNat

end

end A090418.P13105442369552063919

/-! ## A090418.P11778074584041705539

`A151899(lcm(n, A074909(n)²))`
-/

namespace A090418.P11778074584041705539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151899 (Int.lcm (n : ℤ) (A074909 n ^ 2))

end

end A090418.P11778074584041705539

/-! ## A090418.P11631681890027913710

`A151899(n*n*A074909(n))`
-/

namespace A090418.P11631681890027913710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151899 ((n : ℤ) * ((n : ℤ) * A074909 n)).toNat

end

end A090418.P11631681890027913710

/-! ## A090418.P16564761548475706766

`A151899(A000290(n)*A074909(n))`
-/

namespace A090418.P16564761548475706766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151899 (A000290 n * A074909 n).toNat

end

end A090418.P16564761548475706766

/-! ## A090418.P4730850418110060114

`A151899(lcm(A000290(n), A074909(n)))`
-/

namespace A090418.P4730850418110060114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151899 (Int.lcm (A000290 n) (A074909 n))

end

end A090418.P4730850418110060114

/-!
# A090419: Numbers that cannot be written in binary representation as concatenation of primes.

The programs for A090419, there is no canonical definition to state claims against.
-/

/-! ## A090419.P17081506251190094178

`lt[n*A090418(n), n]`
-/

namespace A090419.P17081506251190094178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A090418 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A090419.P17081506251190094178

/-! ## A090419.P11299184400941212281

`eq[0, A090418(n+1)]+1`
-/

namespace A090419.P11299184400941212281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090418 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A090419.P11299184400941212281

/-! ## A090419.P3148183188441047357

`eq[A000038(n), A090418(n)]`
-/

namespace A090419.P3148183188441047357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090418 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090419.P3148183188441047357

/-! ## A090419.P57484553469481421

`eq[2, A000040(a(A090418(n)))]` with `a(0)=1`
-/

namespace A090419.P57484553469481421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A090418 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090419.P57484553469481421

/-! ## A090419.P1091326884986559406

`eq[1, A028999(a(A090418(n)))]` with `a(0)=2`
-/

namespace A090419.P1091326884986559406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A028999 (f2 (A090418 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090419.P1091326884986559406

/-! ## A090419.P13436671974994330454

`eq[1, A090418(a(A090418(n)))]` with `a(0)=2`
-/

namespace A090419.P13436671974994330454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A090418 (f2 (A090418 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090419.P13436671974994330454

/-! ## A090419.P930450928870452627

`lt[A090418(n)+1, A040000(n)]`
-/

namespace A090419.P930450928870452627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090418 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090419.P930450928870452627

/-! ## A090419.P7990410748504124217

`record[(n+1)/A007088(A090418(n+1)+1)]`
-/

namespace A090419.P7990410748504124217
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007088 (A090418 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090419.P7990410748504124217

/-! ## A090419.P1339316588644709365

`lt[A040000(A090418(n)), A040000(n)]`
-/

namespace A090419.P1339316588644709365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (A090418 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090419.P1339316588644709365

/-! ## A090419.P12365209227232274839

`eq[A000007(n), A090418(n)]`
-/

namespace A090419.P12365209227232274839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090418 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090419.P12365209227232274839

/-! ## A090419.P12185385512736980390

`lt[A090418(n), A130130(n)/2]`
-/

namespace A090419.P12185385512736980390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090418 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130130 n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A090419.P12185385512736980390

/-! ## A090419.P12268417391295119024

`lt[A090418(n), n/A000032(n)]`
-/

namespace A090419.P12268417391295119024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090418 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000032 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A090419.P12268417391295119024

/-!
# A090420: Numbers having a unique representation as concatenation of primes in binary.

The programs for A090420, there is no canonical definition to state claims against.
-/

/-! ## A090420.P8995578704019318328

`eq[1, A090418(n)]`
-/

namespace A090420.P8995578704019318328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090418 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090420.P8995578704019318328

/-! ## A090420.P7330958039020858845

`lt[A000032(A090418(n)), A040000(n)]`
-/

namespace A090420.P7330958039020858845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A090418 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090420.P7330958039020858845

/-! ## A090420.P4658762171699191905

`lt[A000032(A090418(n)), A130130(n)]`
-/

namespace A090420.P4658762171699191905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A090418 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090420.P4658762171699191905

/-! ## A090420.P2889932573828017240

`lt[A090418(n), A130130(2*A090418(n))]`
-/

namespace A090420.P2889932573828017240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090418 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (2 * A090418 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090420.P2889932573828017240

/-! ## A090420.P17778682120306158779

`record[A090421(n+1)/A090418(A090421(n+1))]`
-/

namespace A090420.P17778682120306158779
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090421 (n + 1) : ℚ) / (A090418 (A090421 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090420.P17778682120306158779

/-! ## A090420.P9568928024134739264

`filter[A004396(2*n+3), A090418(#)]`
-/

namespace A090420.P9568928024134739264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A090418 (f1 j).toNat = 1) n)

end

end A090420.P9568928024134739264

/-! ## A090420.P21087946306889651

`A000720(p?[A008578(n+1)*A090418(n)])`
-/

namespace A090420.P21087946306889651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A090418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090420.P21087946306889651

/-! ## A090420.P17385998622887287382

`lt[A000032(A090418(n)²), 2]`
-/

namespace A090420.P17385998622887287382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A090418 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A090420.P17385998622887287382

/-! ## A090420.P16777414337427612621

`A055396(p?[A008578(n+1)*A090418(n)])`
-/

namespace A090420.P16777414337427612621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A090418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090420.P16777414337427612621

/-!
# A090421: Numbers that can be written in binary representation as concatenation of primes.

The programs for A090421, there is no canonical definition to state claims against.
-/

/-! ## A090421.P2175324997992312574

`comp[A090419(n+1)-1]+1`
-/

namespace A090421.P2175324997992312574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090419 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A090421.P2175324997992312574

/-! ## A090421.P15057102308940362557

`lt[0, A090418(n)]`
-/

namespace A090421.P15057102308940362557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090418 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A090421.P15057102308940362557

/-! ## A090421.P12227409411259073481

`eq[1, A141044(A090418(n)+1)]`
-/

namespace A090421.P12227409411259073481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A090418 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090421.P12227409411259073481

/-! ## A090421.P4963740493957676401

`eq[1, A141044(2*A090418(n))]`
-/

namespace A090421.P4963740493957676401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (2 * A090418 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090421.P4963740493957676401

/-! ## A090421.P16578872144522482573

`eq[0, A090418(a(A090418(n)))]` with `a(0)=2`
-/

namespace A090421.P16578872144522482573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A090418 (f2 (A090418 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090421.P16578872144522482573

/-! ## A090421.P8788965904714939130

`eq[1, gcd(A000040(n+1), A090418(n))]`
-/

namespace A090421.P8788965904714939130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A090418 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090421.P8788965904714939130

/-! ## A090421.P1916118123633720774

`eq[A000038(n)², A000038(A090418(n))]`
-/

namespace A090421.P1916118123633720774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A090418 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090421.P1916118123633720774

/-! ## A090421.P8258569994609654501

`eq[1, A000010(3-A178334(A090418(n)))]`
-/

namespace A090421.P8258569994609654501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (3 - A178334 (A090418 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090421.P8258569994609654501

/-! ## A090421.P7431063825500251780

`eq[A000038(n+1), A000038(A090418(n))]`
-/

namespace A090421.P7431063825500251780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A090418 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090421.P7431063825500251780

/-! ## A090421.P4183338489927374361

`eq[2*A000007(n), A000007(A090418(n))]`
-/

namespace A090421.P4183338489927374361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A090418 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090421.P4183338489927374361

/-! ## A090421.P9434914926658482866

`eq[1, ceil(A090418(n)/A172336(n+1))]`
-/

namespace A090421.P9434914926658482866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A090418 n : ℚ) / (A172336 (n + 1) : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090421.P9434914926658482866

/-! ## A090421.P5576618137992298424

`eq[A000007(n+1), A000007(A090418(n))]`
-/

namespace A090421.P5576618137992298424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A090418 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090421.P5576618137992298424

/-! ## A090421.P1720786434525916878

`∪[A090420(n+1), A257318(n+1)]`
-/

namespace A090421.P1720786434525916878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090421.P1720786434525916878

/-! ## A090421.P10583420959251446716

`eq[1, ceil(A090418(n)/A059176(n+1))]`
-/

namespace A090421.P10583420959251446716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A090418 n : ℚ) / (A059176 (n + 1) : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090421.P10583420959251446716

/-!
# A090422: Primes that cannot be written in binary representation as concatenation of other primes.

The programs for A090422, there is no canonical definition to state claims against.
-/

/-! ## A090422.P994775785062745293

`p?[A090420(n+1)]`
-/

namespace A090422.P994775785062745293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090422.P994775785062745293

/-! ## A090422.P11309279118358598574

`filter[A090420(n+1), A010051(#)]`
-/

namespace A090422.P11309279118358598574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A090422.P11309279118358598574

/-! ## A090422.P3555626015545762903

`filter[A090420(n+1), A323152(#)]`
-/

namespace A090422.P3555626015545762903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A090422.P3555626015545762903

/-! ## A090422.P5461889353136900692

`filter[A090420(n+1), A323153(#)]`
-/

namespace A090422.P5461889353136900692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A090422.P5461889353136900692

/-! ## A090422.P3514933791684495821

`∩[A000040(n+1), A090420(n+1)]`
-/

namespace A090422.P3514933791684495821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090422.P3514933791684495821

/-! ## A090422.P9886751595323429056

`∩[A008578(n+1), A090420(n+1)]`
-/

namespace A090422.P9886751595323429056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090422.P9886751595323429056

/-! ## A090422.P9816535221045972849

`∩[A033946(n+1), A090420(n+1)]`
-/

namespace A090422.P9816535221045972849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090422.P9816535221045972849

/-! ## A090422.P10596802646835469184

`∩[A046022(n+1), A090420(n+1)]`
-/

namespace A090422.P10596802646835469184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090422.P10596802646835469184

/-! ## A090422.P15823646355860934269

`∩[A053813(n+1), A090420(n+1)]`
-/

namespace A090422.P15823646355860934269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090422.P15823646355860934269

/-! ## A090422.P11858461747431626075

`∩[A066191(n+1), A090420(n+1)]`
-/

namespace A090422.P11858461747431626075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090422.P11858461747431626075

/-! ## A090422.P12807884856731960645

`∩[A067126(n+1), A090420(n+1)]`
-/

namespace A090422.P12807884856731960645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090422.P12807884856731960645

/-! ## A090422.P1441876112152672456

`∩[A067133(n+1), A090420(n+1)]`
-/

namespace A090422.P1441876112152672456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090422.P1441876112152672456

/-! ## A090422.P2406358741175192086

`∩[A090420(n+1), A116974(n+1)]`
-/

namespace A090422.P2406358741175192086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090422.P2406358741175192086

/-! ## A090422.P7895441279312552412

`∩[A090420(n+1), A158611(n+1)]`
-/

namespace A090422.P7895441279312552412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090422.P7895441279312552412

/-! ## A090422.P12314122628325009844

`∩[A090420(n+1), A174090(n+1)]`
-/

namespace A090422.P12314122628325009844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090422.P12314122628325009844

/-! ## A090422.P10152678600879607284

`∩[A090420(n+1), A175787(n+1)]`
-/

namespace A090422.P10152678600879607284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090422.P10152678600879607284

/-! ## A090422.P17830435539770473640

`∩[A090420(n+1), A182986(n+1)]`
-/

namespace A090422.P17830435539770473640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090422.P17830435539770473640

/-! ## A090422.P15487916466146654717

`p?[comp[A090423(n+1)]]`
-/

namespace A090422.P15487916466146654717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090423 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A090422.P15487916466146654717

/-! ## A090422.P171432708716762197

`p?[eq[1, A090418(n)]]`
-/

namespace A090422.P171432708716762197
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090418 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A090422.P171432708716762197

/-! ## A090422.P5114756586780918172

`eq[A090418(n), A327642(n)]`
-/

namespace A090422.P5114756586780918172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090418 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090422.P5114756586780918172

/-!
# A090423: Primes that can be written in binary representation as concatenation of other primes.

The programs for A090423, there is no canonical definition to state claims against.
-/

/-! ## A090423.P3278839305689805117

`p?[comp[A090420(n+1)]]`
-/

namespace A090423.P3278839305689805117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090420 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A090423.P3278839305689805117

/-! ## A090423.P13427862437911433905

`p?[lt[1, A090418(n)]]`
-/

namespace A090423.P13427862437911433905
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090418 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A090423.P13427862437911433905

/-! ## A090423.P6795204336488254970

`p?[(n+1)%(A187070(A090418(n+1))+n+1)]`
-/

namespace A090423.P6795204336488254970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A187070 (A090418 (n + 1)).toNat + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090423.P6795204336488254970

/-! ## A090423.P4710407243179980663

`p?[A257318(n+1)]`
-/

namespace A090423.P4710407243179980663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090423.P4710407243179980663

/-! ## A090423.P16401436176109262714

`filter[A257318(n+1), A010051(#)]`
-/

namespace A090423.P16401436176109262714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A090423.P16401436176109262714

/-! ## A090423.P1683805748628941439

`filter[A257318(n+1), A080339(#)]`
-/

namespace A090423.P1683805748628941439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A090423.P1683805748628941439

/-! ## A090423.P3240453057053972953

`filter[A257318(n+1), A080545(#)]`
-/

namespace A090423.P3240453057053972953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A090423.P3240453057053972953

/-! ## A090423.P1686882430864412574

`filter[A257318(n+1), A171387(#)]`
-/

namespace A090423.P1686882430864412574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A090423.P1686882430864412574

/-! ## A090423.P7317409244127963496

`filter[A257318(n+1), A302777(#)]`
-/

namespace A090423.P7317409244127963496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A090423.P7317409244127963496

/-! ## A090423.P16081568689131310969

`filter[A257318(n+1), A323152(#)]`
-/

namespace A090423.P16081568689131310969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A090423.P16081568689131310969

/-! ## A090423.P12945777850152219609

`filter[A257318(n+1), A323153(#)]`
-/

namespace A090423.P12945777850152219609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A090423.P12945777850152219609

/-! ## A090423.P6084723767915945456

`filter[A257318(n+1), A355937(#)]`
-/

namespace A090423.P6084723767915945456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A090423.P6084723767915945456

/-! ## A090423.P6684556018972911408

`∩[A000040(n+1), A257318(n+1)]`
-/

namespace A090423.P6684556018972911408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090423.P6684556018972911408

/-! ## A090423.P1592223631635001285

`∩[A000430(n+1), A257318(n+1)]`
-/

namespace A090423.P1592223631635001285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090423.P1592223631635001285

/-! ## A090423.P9168382959973596687

`∩[A004139(n+1), A257318(n+1)]`
-/

namespace A090423.P9168382959973596687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090423.P9168382959973596687

/-! ## A090423.P12895871274406403227

`∩[A005180(n+1), A257318(n+1)]`
-/

namespace A090423.P12895871274406403227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090423.P12895871274406403227

/-! ## A090423.P3451740331498992253

`∩[A006005(n+1), A257318(n+1)]`
-/

namespace A090423.P3451740331498992253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090423.P3451740331498992253

/-! ## A090423.P12570207153940065717

`∩[A008578(n+1), A257318(n+1)]`
-/

namespace A090423.P12570207153940065717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090423.P12570207153940065717

/-! ## A090423.P3420838779901247768

`∩[A009087(n+1), A257318(n+1)]`
-/

namespace A090423.P3420838779901247768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090423.P3420838779901247768

/-! ## A090423.P2473347649377470291

`∩[A033946(n+1), A257318(n+1)]`
-/

namespace A090423.P2473347649377470291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090423.P2473347649377470291

/-!
# A090424: Smallest number that can be written in binary representation as concatenation of other primes in exactly n ways.

The programs for A090424, there is no canonical definition to state claims against.
-/

/-! ## A090424.P2765399327370980070

`or(11*n, p?[A281765(n+1)])`
-/

namespace A090424.P2765399327370980070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (11 * n : ℤ) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A090424.P2765399327370980070

/-!
# A090425: Number of iterations required for happy number A007770(n) to converge to 1.

The programs for A090425, there is no canonical definition to state claims against.
-/

/-! ## A090425.P7044356010174744424

`A193995(A007770(n+1))`
-/

namespace A090425.P7044356010174744424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193995 (A007770 (n + 1)).toNat

end

end A090425.P7044356010174744424

/-! ## A090425.P11688520102243925211

`A364682(A007770(2*n+1-n))`
-/

namespace A090425.P11688520102243925211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364682 (A007770 (2 * n + 1 - n)).toNat

end

end A090425.P11688520102243925211

/-! ## A090425.P13346270931941134927

`A003621(record[(n+1)/A103369(n+1)])+1`
-/

namespace A090425.P13346270931941134927
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A103369 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003621 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat + 1

end

end A090425.P13346270931941134927

/-! ## A090425.P7637143959878278603

`A300081(A007770(n+1))+and(1, A135479(n+1))`
-/

namespace A090425.P7637143959878278603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300081 (A007770 (n + 1)).toNat + Int.land 1 (A135479 (n + 1))

end

end A090425.P7637143959878278603

/-! ## A090425.P9333957625453238658

`A003621(eq[A003621(n+1), A300081(n+1)]+1)+1`
-/

namespace A090425.P9333957625453238658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003621 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) + 1

end

end A090425.P9333957625453238658

/-! ## A090425.P817028079569157652

`A300081(A007770(n+1))+A051714(A096860(n+1))`
-/

namespace A090425.P817028079569157652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300081 (A007770 (n + 1)).toNat + A051714 (A096860 (n + 1)).toNat

end

end A090425.P817028079569157652

/-! ## A090425.P8412760531267861081

`A193995(eq[A031176(n), A054977(n)])`
-/

namespace A090425.P8412760531267861081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193995 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A090425.P8412760531267861081

/-! ## A090425.P9363901943189242341

`A003621(record[A028310(n)/A031176(n)])+1`
-/

namespace A090425.P9363901943189242341
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) / (A031176 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003621 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat + 1

end

end A090425.P9363901943189242341

/-! ## A090425.P9874483952817159280

`A099645(A007770(n+1))+A001221(A246655(n+1))`
-/

namespace A090425.P9874483952817159280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099645 (A007770 (n + 1)).toNat + A001221 (A246655 (n + 1)).toNat

end

end A090425.P9874483952817159280

/-! ## A090425.P4493566961860350349

`A300081(A007770(n+1))+A058281(A027691(n))`
-/

namespace A090425.P4493566961860350349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300081 (A007770 (n + 1)).toNat + A058281 (A027691 n).toNat

end

end A090425.P4493566961860350349

/-!
# A090426: a(1) = 1, otherwise a(n) = floor(Pi^(n+1)/(Pi^2 + 1)).

The programs for A090426, there is no canonical definition to state claims against.
-/

/-! ## A090426.P14263117753524126547

`A195675(n)-A285351(round(sqrt(10^n)))`
-/

namespace A090426.P14263117753524126547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195675 n - A285351 (SequenceMachineLib.roundAway (Real.sqrt (10 ^ n : ℝ))).toNat

end

end A090426.P14263117753524126547

/-! ## A090426.P16943108953096348694

`A078012(3*n+1)-A044935(A000110(n+1))`
-/

namespace A090426.P16943108953096348694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (3 * n + 1) - A044935 (A000110 (n + 1)).toNat

end

end A090426.P16943108953096348694

/-! ## A090426.P14001627734194512657

`A078012(3*n+1)-A353350(A058313(n+5))`
-/

namespace A090426.P14001627734194512657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (3 * n + 1) - A353350 (A058313 (n + 5)).toNat

end

end A090426.P14001627734194512657

/-! ## A090426.P1373072225554244256

`A135851(3*(n+1))-A298426(A327084(3*n+2))`
-/

namespace A090426.P1373072225554244256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (3 * (n + 1)) - A298426 (A327084 (3 * n + 2)).toNat

end

end A090426.P1373072225554244256

/-!
# A090427: Let b(0)=0; b(1)=1; b(n+2)=(e^g-1/e^g)*b(n+1)+b(n). a(n)=floor(b(n)).

The programs for A090427, there is no canonical definition to state claims against.
-/

/-! ## A090427.P16391097594714092422

`floor(cosh(γ*n)/cosh(γ))`
-/

namespace A090427.P16391097594714092422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.eulerMascheroniConstant * (n : ℝ)) / Real.cosh Real.eulerMascheroniConstant⌋

end

end A090427.P16391097594714092422

/-! ## A090427.P8062946392336837327

`A003056(A151259(n))%(2^n)`
-/

namespace A090427.P8062946392336837327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A151259 n).toNat) (2 ^ n : ℤ)

end

end A090427.P8062946392336837327

/-! ## A090427.P3951937567818659836

`A003056(floor(atan(n+1))*A151259(n))`
-/

namespace A090427.P3951937567818659836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (⌊Real.arctan (n + 1 : ℝ)⌋ * A151259 n).toNat

end

end A090427.P3951937567818659836

/-! ## A090427.P18360571157852954640

`A003056(A157100(n)-ceil(abs((1-n)/2)))`
-/

namespace A090427.P18360571157852954640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A157100 n - ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉).toNat

end

end A090427.P18360571157852954640

/-! ## A090427.P923867325643308890

`A135663(A052854(n))+A000045(n)`
-/

namespace A090427.P923867325643308890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135663 (A052854 n).toNat + A000045 n

end

end A090427.P923867325643308890

/-!
# A090428: Numbers that are k-gons for two or more k's, where k = 3, 4, 5, ..., 16.

The programs for A090428, there is no canonical definition to state claims against.
-/

/-! ## A090428.P16101712228067858056

`eq[A354668(n), A375123(A277120(n+1))]`
-/

namespace A090428.P16101712228067858056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375123 (A277120 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090428.P16101712228067858056

/-!
# A090429: 3-digit numbers that do not resolve to 495 under the Kaprekar routine.

The programs for A090429, there is no canonical definition to state claims against.
-/

/-! ## A090429.P9222173813039088541

`lt[A045843(A151949(n)), A107846(n)]`
-/

namespace A090429.P9222173813039088541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045843 (A151949 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090429.P9222173813039088541

/-! ## A090429.P4413750599403950977

`lt[A045843(A347688(n)), A107846(n)]`
-/

namespace A090429.P4413750599403950977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045843 (A347688 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090429.P4413750599403950977

/-! ## A090429.P9937442770607110495

`lt[A045843(9*A151950(n)), A107846(n)]`
-/

namespace A090429.P9937442770607110495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045843 (9 * A151950 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090429.P9937442770607110495

/-! ## A090429.P643398353243266023

`eq[2, A045843(6*A151950(n))*A107846(n)]`
-/

namespace A090429.P643398353243266023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045843 (6 * A151950 n).toNat * A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090429.P643398353243266023

/-! ## A090429.P4290025068842238300

`lt[A181061(n), A001222(A038575(3*n+13))]`
-/

namespace A090429.P4290025068842238300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181061 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A038575 (3 * n + 13)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A090429.P4290025068842238300

/-!
# A090431: Difference between sums of digits of n and n-th prime.

The programs for A090431, the canonical program `A090431.P17020642547868931048` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090431 has offset 1).

The definition of A090431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090431.P3878617465253915751

`Δ[A239324(n)]`
-/

namespace A090431.P3878617465253915751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090431.P3878617465253915751

namespace A090431

/-- `Δ[A239324(n)]` -/
def P3878617465253915751.Spec : Prop :=
  ∀ n, P3878617465253915751.a n = A090431 (n + 1)

end A090431

/-! ## A090431.P6113551028919244821

`∑{digits}[n+1, #]-A007605(n+1)`
-/

namespace A090431.P6113551028919244821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - A007605 (n + 1)

end

end A090431.P6113551028919244821

namespace A090431

/-- `∑{digits}[n+1, #]-A007605(n+1)` -/
def P6113551028919244821.Spec : Prop :=
  ∀ n, P6113551028919244821.a n = A090431 (n + 1)

end A090431

/-! ## A090431.P17020642547868931048

`∑{digits}[n+1, #]-∑{digits}[A000040(n+1), #]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A090431

/-- `∑{digits}[n+1, #]-∑{digits}[A000040(n+1), #]` -/
def P17020642547868931048.Spec : Prop :=
  ∀ n, P17020642547868931048.a n = A090431 (n + 1)

theorem P17020642547868931048.correct : P17020642547868931048.Spec := by
  intro n
  simp only [A090431, Nat.add_sub_cancel]

end A090431

/-! ## A090431.P3459344261885949839

`Δ[A037123(n)-A051351(n)]`
-/

namespace A090431.P3459344261885949839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n - A051351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090431.P3459344261885949839

namespace A090431

/-- `Δ[A037123(n)-A051351(n)]` -/
def P3459344261885949839.Spec : Prop :=
  ∀ n, P3459344261885949839.a n = A090431 (n + 1)

end A090431

/-! ## A090431.P17534106944615453466

`A239324(n+1)-A239324(n)`
-/

namespace A090431.P17534106944615453466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239324 (n + 1) - A239324 n

end

end A090431.P17534106944615453466

namespace A090431

/-- `A239324(n+1)-A239324(n)` -/
def P17534106944615453466.Spec : Prop :=
  ∀ n, P17534106944615453466.a n = A090431 (n + 1)

end A090431

/-! ## A090431.P4103773665116349116

`Δ[A037123(n)]-A007605(n+1)`
-/

namespace A090431.P4103773665116349116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A007605 (n + 1)

end

end A090431.P4103773665116349116

namespace A090431

/-- `Δ[A037123(n)]-A007605(n+1)` -/
def P4103773665116349116.Spec : Prop :=
  ∀ n, P4103773665116349116.a n = A090431 (n + 1)

end A090431

/-! ## A090431.P12675488554723951393

`A007953(n+1)-A007605(n+1)`
-/

namespace A090431.P12675488554723951393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - A007605 (n + 1)

end

end A090431.P12675488554723951393

namespace A090431

/-- `A007953(n+1)-A007605(n+1)` -/
def P12675488554723951393.Spec : Prop :=
  ∀ n, P12675488554723951393.a n = A090431 (n + 1)

end A090431

/-! ## A090431.P3369646221518158055

`A007953(n+1)+A051351(n)-A051351(n+1)`
-/

namespace A090431.P3369646221518158055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) + (A051351 n - A051351 (n + 1))

end

end A090431.P3369646221518158055

namespace A090431

/-- `A007953(n+1)+A051351(n)-A051351(n+1)` -/
def P3369646221518158055.Spec : Prop :=
  ∀ n, P3369646221518158055.a n = A090431 (n + 1)

end A090431

/-! ## A090431.P7883524157203240061

`A007953(n+1)+A053666(n+1)-A255005(n+1)`
-/

namespace A090431.P7883524157203240061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) + (A053666 (n + 1) - A255005 (n + 1))

end

end A090431.P7883524157203240061

namespace A090431

/-- `A007953(n+1)+A053666(n+1)-A255005(n+1)` -/
def P7883524157203240061.Spec : Prop :=
  ∀ n, P7883524157203240061.a n = A090431 (n + 1)

end A090431

/-! ## A090431.P14156727486594114377

`A061762(n+1)-(A007954(n+1)+A007605(n+1))`
-/

namespace A090431.P14156727486594114377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (n + 1) - (A007954 (n + 1) + A007605 (n + 1))

end

end A090431.P14156727486594114377

namespace A090431

/-- `A061762(n+1)-(A007954(n+1)+A007605(n+1))` -/
def P14156727486594114377.Spec : Prop :=
  ∀ n, P14156727486594114377.a n = A090431 (n + 1)

end A090431

/-! ## A090431.P16799347864135920364

`A007953(n+1)-A007953(p?[A014681(n)])`
-/

namespace A090431.P16799347864135920364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - A007953 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090431.P16799347864135920364

namespace A090431

/-- `A007953(n+1)-A007953(p?[A014681(n)])` -/
def P16799347864135920364.Spec : Prop :=
  ∀ n, P16799347864135920364.a n = A090431 (n + 1)

end A090431

/-! ## A090431.P8011111632467340650

`A007953(n+1)-A007953(p?[A080412(n)])`
-/

namespace A090431.P8011111632467340650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - A007953 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090431.P8011111632467340650

namespace A090431

/-- `A007953(n+1)-A007953(p?[A080412(n)])` -/
def P8011111632467340650.Spec : Prop :=
  ∀ n, P8011111632467340650.a n = A090431 (n + 1)

end A090431

/-! ## A090431.P7247038035534155447

`A007953(n+1)-A007953(A000040(n+1))`
-/

namespace A090431.P7247038035534155447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - A007953 (A000040 (n + 1)).toNat

end

end A090431.P7247038035534155447

namespace A090431

/-- `A007953(n+1)-A007953(A000040(n+1))` -/
def P7247038035534155447.Spec : Prop :=
  ∀ n, P7247038035534155447.a n = A090431 (n + 1)

end A090431

/-! ## A090431.P6526830396994844951

`A007953(n+1)-A007953(A008578(n+2))`
-/

namespace A090431.P6526830396994844951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - A007953 (A008578 (n + 2)).toNat

end

end A090431.P6526830396994844951

namespace A090431

/-- `A007953(n+1)-A007953(A008578(n+2))` -/
def P6526830396994844951.Spec : Prop :=
  ∀ n, P6526830396994844951.a n = A090431 (n + 1)

end A090431

/-! ## A090431.P207870358760832017

`A007953(n+1)-A007953(A182986(n+2))`
-/

namespace A090431.P207870358760832017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - A007953 (A182986 (n + 2)).toNat

end

end A090431.P207870358760832017

namespace A090431

/-- `A007953(n+1)-A007953(A182986(n+2))` -/
def P207870358760832017.Spec : Prop :=
  ∀ n, P207870358760832017.a n = A090431 (n + 1)

end A090431

/-! ## A090431.P9133901519446200432

`A007953(n+1)-A007953(record[A006530(n+2)])`
-/

namespace A090431.P9133901519446200432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - A007953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090431.P9133901519446200432

namespace A090431

/-- `A007953(n+1)-A007953(record[A006530(n+2)])` -/
def P9133901519446200432.Spec : Prop :=
  ∀ n, P9133901519446200432.a n = A090431 (n + 1)

end A090431

/-! ## A090431.P18120206493752763610

`A007953(n+1)-A007953(record[A014963(n+2)])`
-/

namespace A090431.P18120206493752763610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - A007953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090431.P18120206493752763610

namespace A090431

/-- `A007953(n+1)-A007953(record[A014963(n+2)])` -/
def P18120206493752763610.Spec : Prop :=
  ∀ n, P18120206493752763610.a n = A090431 (n + 1)

end A090431

/-! ## A090431.P13090819687257827330

`A007953(n+1)-A007953(record[A020639(n+2)])`
-/

namespace A090431.P13090819687257827330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - A007953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090431.P13090819687257827330

namespace A090431

/-- `A007953(n+1)-A007953(record[A020639(n+2)])` -/
def P13090819687257827330.Spec : Prop :=
  ∀ n, P13090819687257827330.a n = A090431 (n + 1)

end A090431

/-! ## A090431.P4662155612308688785

`A007953(n+1)-A007953(p?[A181363(2*n+1)])`
-/

namespace A090431.P4662155612308688785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181363 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - A007953 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090431.P4662155612308688785

namespace A090431

/-- `A007953(n+1)-A007953(p?[A181363(2*n+1)])` -/
def P4662155612308688785.Spec : Prop :=
  ∀ n, P4662155612308688785.a n = A090431 (n + 1)

end A090431

/-! ## A090431.P5642244985283595177

`A007953(n+1)-A007953(p?[A215261(n+1)])`
-/

namespace A090431.P5642244985283595177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - A007953 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090431.P5642244985283595177

namespace A090431

/-- `A007953(n+1)-A007953(p?[A215261(n+1)])` -/
def P5642244985283595177.Spec : Prop :=
  ∀ n, P5642244985283595177.a n = A090431 (n + 1)

end A090431

/-!
# A090432: Primes prime(k) having a greater sum of digits than does k.

The programs for A090432, the canonical program `A090432.P416990136523759619` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090432 has offset 1).

The definition of A090432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6908 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090432.P416990136523759619

`A000040(lt[A007953(n+1), A007605(n+1)]+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A090432

/-- `A000040(lt[A007953(n+1), A007605(n+1)]+1)` -/
def P416990136523759619.Spec : Prop :=
  ∀ n, P416990136523759619.a n = A090432 (n + 1)

theorem P416990136523759619.correct : P416990136523759619.Spec := by
  intro n
  simp only [A090432, Nat.add_sub_cancel]

end A090432

/-! ## A090432.P17363527125525156068

`p?[n*A010121(A099107(n+1))]`
-/

namespace A090432.P17363527125525156068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010121 (A099107 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090432.P17363527125525156068

namespace A090432

/-- `p?[n*A010121(A099107(n+1))]` -/
def P17363527125525156068.Spec : Prop :=
  ∀ n, P17363527125525156068.a n = A090432 (n + 1)

end A090432

/-! ## A090432.P14135311576312540754

`A118759(A113029(∑[A043288(n+1)]))`
-/

namespace A090432.P14135311576312540754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A113029 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A090432.P14135311576312540754

namespace A090432

/-- `A118759(A113029(∑[A043288(n+1)]))` -/
def P14135311576312540754.Spec : Prop :=
  ∀ n, P14135311576312540754.a n = A090432 (n + 1)

end A090432

/-! ## A090432.P4160265880110175740

`eq[A010121(A099107(n+1)), A105700(n)]`
-/

namespace A090432.P4160265880110175740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 (A099107 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090432.P4160265880110175740

namespace A090432

/-- `eq[A010121(A099107(n+1)), A105700(n)]` -/
def P4160265880110175740.Spec : Prop :=
  ∀ n, (P4160265880110175740.a n : ℤ) = A090432 (n + 1)

end A090432

/-! ## A090432.P13765576917798132108

`eq[n*A010121(A099107(n+1)), A007918(n)]`
-/

namespace A090432.P13765576917798132108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010121 (A099107 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090432.P13765576917798132108

namespace A090432

/-- `eq[n*A010121(A099107(n+1)), A007918(n)]` -/
def P13765576917798132108.Spec : Prop :=
  ∀ n, (P13765576917798132108.a n : ℤ) = A090432 (n + 1)

end A090432

/-!
# A090433: Primes p(k) having a smaller sum of digits than k.

The programs for A090433, the canonical program `A090433.P14932557216655475882` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090433 has offset 1).

The definition of A090433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090433.P14932557216655475882

`A000040(A154311(1+n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A090433

/-- `A000040(A154311(1+n))` -/
def P14932557216655475882.Spec : Prop :=
  ∀ n, P14932557216655475882.a n = A090433 (n + 1)

theorem P14932557216655475882.correct : P14932557216655475882.Spec := by
  intro n
  simp only [A090433, Nat.add_sub_cancel]

end A090433

/-! ## A090433.P12652325754354026981

`A008578(A154311(n+1)+1)`
-/

namespace A090433.P12652325754354026981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A154311 (n + 1) + 1).toNat

end

end A090433.P12652325754354026981

namespace A090433

/-- `A008578(A154311(n+1)+1)` -/
def P12652325754354026981.Spec : Prop :=
  ∀ n, P12652325754354026981.a n = A090433 (n + 1)

end A090433

/-! ## A090433.P2378535373719699801

`A116974(A154311(n+1)+1)`
-/

namespace A090433.P2378535373719699801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (A154311 (n + 1) + 1).toNat

end

end A090433.P2378535373719699801

namespace A090433

/-- `A116974(A154311(n+1)+1)` -/
def P2378535373719699801.Spec : Prop :=
  ∀ n, P2378535373719699801.a n = A090433 (n + 1)

end A090433

/-! ## A090433.P15193448748831039335

`A065091(A154311(n+1)-1)`
-/

namespace A090433.P15193448748831039335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A154311 (n + 1) - 1).toNat

end

end A090433.P15193448748831039335

namespace A090433

/-- `A065091(A154311(n+1)-1)` -/
def P15193448748831039335.Spec : Prop :=
  ∀ n, P15193448748831039335.a n = A090433 (n + 1)

end A090433

/-! ## A090433.P357292199151604130

`or(A006005(A154311(n+1)), A010054(n))`
-/

namespace A090433.P357292199151604130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006005 (A154311 (n + 1)).toNat) (A010054 n)

end

end A090433.P357292199151604130

namespace A090433

/-- `or(A006005(A154311(n+1)), A010054(n))` -/
def P357292199151604130.Spec : Prop :=
  ∀ n, P357292199151604130.a n = A090433 (n + 1)

end A090433

/-! ## A090433.P9701610719638928174

`A006005(A154311(n+1)%A177055(n+1))`
-/

namespace A090433.P9701610719638928174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (Int.tmod (A154311 (n + 1)) (A177055 (n + 1))).toNat

end

end A090433.P9701610719638928174

namespace A090433

/-- `A006005(A154311(n+1)%A177055(n+1))` -/
def P9701610719638928174.Spec : Prop :=
  ∀ n, P9701610719638928174.a n = A090433 (n + 1)

end A090433

/-! ## A090433.P5416901194717377418

`A006093(A154311(n+1))+A001511(2*n+1)`
-/

namespace A090433.P5416901194717377418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A154311 (n + 1)).toNat + A001511 (2 * n + 1)

end

end A090433.P5416901194717377418

namespace A090433

/-- `A006093(A154311(n+1))+A001511(2*n+1)` -/
def P5416901194717377418.Spec : Prop :=
  ∀ n, P5416901194717377418.a n = A090433 (n + 1)

end A090433

/-! ## A090433.P16530725245068447485

`A056832(2*n+1)+A006093(A154311(n+1))`
-/

namespace A090433.P16530725245068447485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (2 * n + 1) + A006093 (A154311 (n + 1)).toNat

end

end A090433.P16530725245068447485

namespace A090433

/-- `A056832(2*n+1)+A006093(A154311(n+1))` -/
def P16530725245068447485.Spec : Prop :=
  ∀ n, P16530725245068447485.a n = A090433 (n + 1)

end A090433

/-! ## A090433.P2771557572745687805

`A006093(A154311(n+1))+A065091(n+1)%2`
-/

namespace A090433.P2771557572745687805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A154311 (n + 1)).toNat + Int.tmod (A065091 (n + 1)) 2

end

end A090433.P2771557572745687805

namespace A090433

/-- `A006093(A154311(n+1))+A065091(n+1)%2` -/
def P2771557572745687805.Spec : Prop :=
  ∀ n, P2771557572745687805.a n = A090433 (n + 1)

end A090433

/-! ## A090433.P13704821772901457636

`or(A006093(A154311(n+1))+1, A103775(n+1))`
-/

namespace A090433.P13704821772901457636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006093 (A154311 (n + 1)).toNat + 1) (A103775 (n + 1))

end

end A090433.P13704821772901457636

namespace A090433

/-- `or(A006093(A154311(n+1))+1, A103775(n+1))` -/
def P13704821772901457636.Spec : Prop :=
  ∀ n, P13704821772901457636.a n = A090433 (n + 1)

end A090433

/-! ## A090433.P7227704633990496894

`A006093(A154311(n+1))+A001222(A115261(n+1))`
-/

namespace A090433.P7227704633990496894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A154311 (n + 1)).toNat + A001222 (A115261 (n + 1)).toNat

end

end A090433.P7227704633990496894

namespace A090433

/-- `A006093(A154311(n+1))+A001222(A115261(n+1))` -/
def P7227704633990496894.Spec : Prop :=
  ∀ n, P7227704633990496894.a n = A090433 (n + 1)

end A090433

/-! ## A090433.P12205088257725701745

`A091265(A038722(A154311(A038722(A038722(n+1)))))`
-/

namespace A090433.P12205088257725701745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091265 (A038722 (A154311 (A038722 (A038722 (n + 1)).toNat).toNat).toNat).toNat

end

end A090433.P12205088257725701745

namespace A090433

/-- `A091265(A038722(A154311(A038722(A038722(n+1)))))` -/
def P12205088257725701745.Spec : Prop :=
  ∀ n, P12205088257725701745.a n = A090433 (n + 1)

end A090433

/-! ## A090433.P10400580831947802893

`A276391(A276390(n))+A006093(A154311(n+1))`
-/

namespace A090433.P10400580831947802893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A276390 n).toNat + A006093 (A154311 (n + 1)).toNat

end

end A090433.P10400580831947802893

namespace A090433

/-- `A276391(A276390(n))+A006093(A154311(n+1))` -/
def P10400580831947802893.Spec : Prop :=
  ∀ n, P10400580831947802893.a n = A090433 (n + 1)

end A090433

/-! ## A090433.P13852489409792430555

`A276391(A276391(n+1))+A006093(A154311(n+1))`
-/

namespace A090433.P13852489409792430555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (A276391 (n + 1)).toNat + A006093 (A154311 (n + 1)).toNat

end

end A090433.P13852489409792430555

namespace A090433

/-- `A276391(A276391(n+1))+A006093(A154311(n+1))` -/
def P13852489409792430555.Spec : Prop :=
  ∀ n, P13852489409792430555.a n = A090433 (n + 1)

end A090433

/-!
# A090434: a(n) = if Floor[(2*Pi/E)*m^2] is prime then Floor[(2*Pi/E)*m^2].

The programs for A090434, there is no canonical definition to state claims against.
-/

/-! ## A090434.P4488340513613338124

`p?[A090398(n+1)]`
-/

namespace A090434.P4488340513613338124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090434.P4488340513613338124

/-! ## A090434.P10632696453614333270

`record[p?[A090398(A052938(n))]]`
-/

namespace A090434.P10632696453614333270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090398 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090434.P10632696453614333270

/-! ## A090434.P1650545164802773190

`record[p?[A090398(A065648(n))]]`
-/

namespace A090434.P1650545164802773190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090398 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090434.P1650545164802773190

/-! ## A090434.P994875304216512906

`record[p?[A090398(A133310(n))]]`
-/

namespace A090434.P994875304216512906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090398 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090434.P994875304216512906

/-!
# A090438: Generalized Stirling2 array (4,2).

The programs for A090438, the canonical program `A090438.P4783922868669573685` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090438 has offset 1).

The definition of A090438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1156 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090438.P4783922868669573685

`abs(A062139(A007606(n+1)-1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A090438

/-- `abs(A062139(A007606(n+1)-1))` -/
def P4783922868669573685.Spec : Prop :=
  ∀ n, P4783922868669573685.a n = A090438 (n + 1)

theorem P4783922868669573685.correct : P4783922868669573685.Spec := by
  intro n
  simp only [A090438, Nat.add_sub_cancel]

end A090438

/-! ## A090438.P18001837572913027403

`abs(A062139(lt[A008297(n+1), 0]))`
-/

namespace A090438.P18001837572913027403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008297 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062139 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)|

end

end A090438.P18001837572913027403

namespace A090438

/-- `abs(A062139(lt[A008297(n+1), 0]))` -/
def P18001837572913027403.Spec : Prop :=
  ∀ n, P18001837572913027403.a n = A090438 (n + 1)

end A090438

/-! ## A090438.P8923398106178458517

`abs(A062139(2*n-A196199(n)))`
-/

namespace A090438.P8923398106178458517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062139 ((2 * n : ℤ) - A196199 n).toNat|

end

end A090438.P8923398106178458517

namespace A090438

/-- `abs(A062139(2*n-A196199(n)))` -/
def P8923398106178458517.Spec : Prop :=
  ∀ n, P8923398106178458517.a n = A090438 (n + 1)

theorem P8923398106178458517.correct : P8923398106178458517.Spec := by
  intro n
  simp only [A090438, Nat.add_sub_cancel, A090438.P8923398106178458517.a, A090438.P4783922868669573685.a, A007606, A007606.P7799483194053309628.f1, A007606.P7799483194053309628.a, A062139, A062139.P5139035719276867560.a, A196199, A196199.P3919230471390252242.a, A381232, A381232.P8771641921475039308.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090438

/-! ## A090438.P6286611929574858515

`abs(A062139(n-A196199(n)+n))`
-/

namespace A090438.P6286611929574858515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062139 ((n : ℤ) - A196199 n + (n : ℤ)).toNat|

end

end A090438.P6286611929574858515

namespace A090438

/-- `abs(A062139(n-A196199(n)+n))` -/
def P6286611929574858515.Spec : Prop :=
  ∀ n, P6286611929574858515.a n = A090438 (n + 1)

theorem P6286611929574858515.correct : P6286611929574858515.Spec := by
  intro n
  simp only [A090438, Nat.add_sub_cancel, A090438.P6286611929574858515.a, A090438.P4783922868669573685.a, A007606, A007606.P7799483194053309628.f1, A007606.P7799483194053309628.a, A062139, A062139.P5139035719276867560.a, A196199, A196199.P3919230471390252242.a, A381232, A381232.P8771641921475039308.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090438

/-! ## A090438.P11975019540877560733

`gcd(A008683(9*(n+1)), A062139(A007606(n+1)-1))`
-/

namespace A090438.P11975019540877560733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (9 * (n + 1))) (A062139 (A007606 (n + 1) - 1).toNat)

end

end A090438.P11975019540877560733

namespace A090438

/-- `gcd(A008683(9*(n+1)), A062139(A007606(n+1)-1))` -/
def P11975019540877560733.Spec : Prop :=
  ∀ n, (P11975019540877560733.a n : ℤ) = A090438 (n + 1)

end A090438

/-!
# A090439: Alternating row sums of array A090438 ((4,2)-Stirling2).

The programs for A090439, there is no canonical definition to state claims against.
-/

/-! ## A090439.P4648529098246713798

`A062197(2*n)`
-/

namespace A090439.P4648529098246713798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062197 (2 * n)

end

end A090439.P4648529098246713798

/-! ## A090439.P11022613312257159966

`or(1, A062197(A005843(n)))`
-/

namespace A090439.P11022613312257159966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A062197 (A005843 n).toNat)

end

end A090439.P11022613312257159966

/-! ## A090439.P8061910791612318984

`A066668(2*n)-A009940(2*n+1)`
-/

namespace A090439.P8061910791612318984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066668 (2 * n) - A009940 (2 * n + 1)

end

end A090439.P8061910791612318984

/-! ## A090439.P6432259217986169990

`A111884(2*n+1)-A009940(2*n+1)`
-/

namespace A090439.P6432259217986169990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111884 (2 * n + 1) - A009940 (2 * n + 1)

end

end A090439.P6432259217986169990

/-! ## A090439.P4665157560292572480

`A062197(A005843(n))^A002828(n²)`
-/

namespace A090439.P4665157560292572480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062197 (A005843 n).toNat : ℚ) ^ (A002828 (n ^ 2) : ℤ)

end

end A090439.P4665157560292572480

/-!
# A090441: Triangle read by rows: T(n, k) = (n!)^k * Product_{j=0..k-1} binomial(n + j, n).

The programs for A090441, there is no canonical definition to state claims against.
-/

/-! ## A090441.P6022847945639185584

`A009963(n)/A007318(n)`
-/

namespace A090441.P6022847945639185584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009963 n : ℚ) / (A007318 n : ℚ)

end

end A090441.P6022847945639185584

/-! ## A090441.P17649336922088619863

`A156765(n)/A157638(n)`
-/

namespace A090441.P17649336922088619863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156765 n : ℚ) / (A157638 n : ℚ)

end

end A090441.P17649336922088619863

/-! ## A090441.P2172741894543103457

`A156766(n)/A157640(n)`
-/

namespace A090441.P2172741894543103457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156766 n : ℚ) / (A157640 n : ℚ)

end

end A090441.P2172741894543103457

/-! ## A090441.P16714103752081605243

`A156767(n)/A157641(n)`
-/

namespace A090441.P16714103752081605243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156767 n : ℚ) / (A157641 n : ℚ)

end

end A090441.P16714103752081605243

/-! ## A090441.P3276535607661150876

`abs(A009963(n)/A108086(n))`
-/

namespace A090441.P3276535607661150876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A009963 n : ℚ) / (A108086 n : ℚ)|

end

end A090441.P3276535607661150876

/-!
# A090442: Row sums of array A090452 (s2_{3,2}, scaled (3,2)-Stirling2).

The programs for A090442, the canonical program `A090442.P10441181462503134609` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090442 has offset 1).

The definition of A090442 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090442.P10441181462503134609

`2^n*A001003(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A090442

/-- `2^n*A001003(n+1)` -/
def P10441181462503134609.Spec : Prop :=
  ∀ n, P10441181462503134609.a n = A090442 (n + 1)

theorem P10441181462503134609.correct : P10441181462503134609.Spec := by
  intro n
  simp only [A090442, Nat.add_sub_cancel]

end A090442

/-! ## A090442.P4591724465671414820

`2^(n-1)*A006318(n+1)`
-/

namespace A090442.P4591724465671414820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A006318 (n + 1) : ℚ)

end

end A090442.P4591724465671414820

namespace A090442

/-- `2^(n-1)*A006318(n+1)` -/
def P4591724465671414820.Spec : Prop :=
  ∀ n, P4591724465671414820.a n = (A090442 (n + 1) : ℚ)

end A090442

/-! ## A090442.P3975368787620020357

`abs(A080243(n+1))*2^n`
-/

namespace A090442.P3975368787620020357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080243 (n + 1)| * (2 ^ n : ℤ)

end

end A090442.P3975368787620020357

namespace A090442

/-- `abs(A080243(n+1))*2^n` -/
def P3975368787620020357.Spec : Prop :=
  ∀ n, P3975368787620020357.a n = A090442 (n + 1)

end A090442

/-! ## A090442.P8125609203815203601

`2^(n-1)*A155069(n+2)`
-/

namespace A090442.P8125609203815203601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A155069 (n + 2) : ℚ)

end

end A090442.P8125609203815203601

namespace A090442

/-- `2^(n-1)*A155069(n+2)` -/
def P8125609203815203601.Spec : Prop :=
  ∀ n, P8125609203815203601.a n = (A090442 (n + 1) : ℚ)

end A090442

/-! ## A090442.P9718947868297081283

`A238111(n+1)/4*2^n`
-/

namespace A090442.P9718947868297081283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238111 (n + 1) : ℚ) / 4 * (2 ^ n : ℚ)

end

end A090442.P9718947868297081283

namespace A090442

/-- `A238111(n+1)/4*2^n` -/
def P9718947868297081283.Spec : Prop :=
  ∀ n, P9718947868297081283.a n = (A090442 (n + 1) : ℚ)

end A090442

/-! ## A090442.P11305214325489005856

`2^n*∑{#}[n, A080247(C(n+1, 2)+#)]`
-/

namespace A090442.P11305214325489005856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ k ∈ Finset.range (f1 n + 1), A080247 (Nat.choose (n + 1) 2 + k))

end

end A090442.P11305214325489005856

namespace A090442

/-- `2^n*∑{#}[n, A080247(C(n+1, 2)+#)]` -/
def P11305214325489005856.Spec : Prop :=
  ∀ n, P11305214325489005856.a n = A090442 (n + 1)

end A090442

/-! ## A090442.P5749809841792017162

`Δ[A104858(n)]*A000079(n)`
-/

namespace A090442.P5749809841792017162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A090442.P5749809841792017162

namespace A090442

/-- `Δ[A104858(n)]*A000079(n)` -/
def P5749809841792017162.Spec : Prop :=
  ∀ n, P5749809841792017162.a n = A090442 (n + 1)

end A090442

/-! ## A090442.P1246680618751732059

`lcm(A000079(n), A080243(n+1))`
-/

namespace A090442.P1246680618751732059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A080243 (n + 1))

end

end A090442.P1246680618751732059

namespace A090442

/-- `lcm(A000079(n), A080243(n+1))` -/
def P1246680618751732059.Spec : Prop :=
  ∀ n, (P1246680618751732059.a n : ℤ) = A090442 (n + 1)

end A090442

/-! ## A090442.P799867823835988009

`lcm(A001003(n+1), A122803(n))`
-/

namespace A090442.P799867823835988009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001003 (n + 1)) (A122803 n)

end

end A090442.P799867823835988009

namespace A090442

/-- `lcm(A001003(n+1), A122803(n))` -/
def P799867823835988009.Spec : Prop :=
  ∀ n, (P799867823835988009.a n : ℤ) = A090442 (n + 1)

end A090442

/-! ## A090442.P2955032342663099754

`A001003(n+1)*A011782(n+1)`
-/

namespace A090442.P2955032342663099754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 (n + 1) * A011782 (n + 1)

end

end A090442.P2955032342663099754

namespace A090442

/-- `A001003(n+1)*A011782(n+1)` -/
def P2955032342663099754.Spec : Prop :=
  ∀ n, P2955032342663099754.a n = A090442 (n + 1)

end A090442

/-!
# A090443: a(n) = (n+2)! * (n+1)! * n! / 2.

The programs for A090443, the canonical program `A090443.P17401668172233967195` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090443 has offset 0).

The definition of A090443 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090443.P17401668172233967195

`(n+2)!*(n+1)!*n!/2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A090443

/-- `(n+2)!*(n+1)!*n!/2` -/
def P17401668172233967195.Spec : Prop :=
  ∀ n, P17401668172233967195.a n = (A090443 n : ℚ)

end A090443

/-! ## A090443.P6150595900943748101

`6*a(n-1)*∑[∑[n]]` with `a(0)=1`
-/

namespace A090443.P6150595900943748101
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  6 * (a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A090443.P6150595900943748101

namespace A090443

/-- `6*a(n-1)*∑[∑[n]]` -/
def P6150595900943748101.Spec : Prop :=
  ∀ n, (P6150595900943748101.a n : ℤ) = A090443 n

end A090443

/-! ## A090443.P17151516555895568561

`∏[floor(2/acot(n))*∑[n+1]]`
-/

namespace A090443.P17151516555895568561
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A090443.P17151516555895568561

namespace A090443

/-- `∏[floor(2/acot(n))*∑[n+1]]` -/
def P17151516555895568561.Spec : Prop :=
  ∀ n, P17151516555895568561.a n = A090443 n

end A090443

/-! ## A090443.P3647167553606588203

`∏[round((n+2)/acot(∑[2*n]))]`
-/

namespace A090443.P3647167553606588203
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A090443.P3647167553606588203

namespace A090443

/-- `∏[round((n+2)/acot(∑[2*n]))]` -/
def P3647167553606588203.Spec : Prop :=
  ∀ n, P3647167553606588203.a n = A090443 n

end A090443

/-! ## A090443.P11907542272057527338

`2^n*∏[C(n+2, 2)]*n!`
-/

namespace A090443.P11907542272057527338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∏ j ∈ Finset.range (n + 1), f1 j) * Nat.factorial n

end

end A090443.P11907542272057527338

namespace A090443

/-- `2^n*∏[C(n+2, 2)]*n!` -/
def P11907542272057527338.Spec : Prop :=
  ∀ n, (P11907542272057527338.a n : ℤ) = A090443 n

end A090443

/-!
# A090444: Fifth column (m=4) of triangle A090441.

The programs for A090444, the canonical program `A090444.P18115869515253919913` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090444 has offset 0).

The definition of A090444 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090444.P18115869515253919913

`(n+3)!*(n+2)!*(n+1)!*n!/12`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A090444

/-- `(n+3)!*(n+2)!*(n+1)!*n!/12` -/
def P18115869515253919913.Spec : Prop :=
  ∀ n, P18115869515253919913.a n = (A090444 n : ℚ)

end A090444

/-! ## A090444.P12954705027612888533

`8*C(∑[n+1], 2)*a(n-1)` with `a(0)=1`
-/

namespace A090444.P12954705027612888533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  8 * Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 * a (n - 1)

end

end A090444.P12954705027612888533

namespace A090444

/-- `8*C(∑[n+1], 2)*a(n-1)` -/
def P12954705027612888533.Spec : Prop :=
  ∀ n, (P12954705027612888533.a n : ℤ) = A090444 n

end A090444

/-! ## A090444.P8056392237114739654

`(((n+1)²+n)²-1)*a(n-1)` with `a(0)=1`
-/

namespace A090444.P8056392237114739654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((((n + 1) ^ 2 + n) ^ 2 : ℤ) - 1) * a (n - 1)

end

end A090444.P8056392237114739654

namespace A090444

/-- `(((n+1)²+n)²-1)*a(n-1)` -/
def P8056392237114739654.Spec : Prop :=
  ∀ n, P8056392237114739654.a n = A090444 n

end A090444

/-! ## A090444.P6459457698573936218

`a(n-1)/(n-1)!*(n+3)!` with `a(0)=1`
-/

namespace A090444.P6459457698573936218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (Nat.factorial ((n : ℤ) - 1).toNat : ℚ) * (Nat.factorial (n + 3) : ℚ)

end

end A090444.P6459457698573936218

namespace A090444

/-- `a(n-1)/(n-1)!*(n+3)!` -/
def P6459457698573936218.Spec : Prop :=
  ∀ n, P6459457698573936218.a n = (A090444 n : ℚ)

end A090444

/-! ## A090444.P1415395177677901152

`2*n*∑[n+1]*(n+3)*a(n-1)` with `a(0)=1`
-/

namespace A090444.P1415395177677901152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * n * (∑ j ∈ Finset.range (n + 1), f1 j) * ((n + 3) * a (n - 1))

end

end A090444.P1415395177677901152

namespace A090444

/-- `2*n*∑[n+1]*(n+3)*a(n-1)` -/
def P1415395177677901152.Spec : Prop :=
  ∀ n, (P1415395177677901152.a n : ℤ) = A090444 n

end A090444

/-!
# A090445: Row sums of triangle A090441.

The programs for A090445, there is no canonical definition to state claims against.
-/

/-! ## A090445.P8353759310583951656

`A126755(a(n-1))+n` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A090445.P8353759310583951656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A126755 (a (n - 1)).toNat + (n : ℤ)

end

end A090445.P8353759310583951656

/-! ## A090445.P10700375493530270454

`A111631(A321407(n+1))`
-/

namespace A090445.P10700375493530270454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111631 (A321407 (n + 1)).toNat

end

end A090445.P10700375493530270454

/-!
# A090447: Triangle of partial products of binomials.

The programs for A090447, the canonical program `A090447.P8684806142227263416` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090447 has offset 0).

The definition of A090447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 320 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090447.P8684806142227263416

`gcd(a(n-1), A073423(n))*A007318(n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A090447

/-- `gcd(a(n-1), A073423(n))*A007318(n)` -/
def P8684806142227263416.Spec : Prop :=
  ∀ n, P8684806142227263416.a n = A090447 n

theorem P8684806142227263416.correct : P8684806142227263416.Spec := by
  intro n
  simp only [A090447]

end A090447

/-! ## A090447.P8324622586669028135

`A007318(n)*a(gcd(n, A198954(n))-1)` with `a(0)=1`
-/

namespace A090447.P8324622586669028135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007318 n * a (Int.gcd (n : ℤ) (A198954 n) - 1)

end

end A090447.P8324622586669028135

namespace A090447

/-- `A007318(n)*a(gcd(n, A198954(n))-1)` -/
def P8324622586669028135.Spec : Prop :=
  ∀ n, P8324622586669028135.a n = A090447 n

end A090447

/-! ## A090447.P8772984877139856697

`(A007318(n)*a(n-1))^A178487(A002262(n))` with `a(0)=1`
-/

namespace A090447.P8772984877139856697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((A007318 n : ℚ) * a (n - 1)) ^ (A178487 (A002262 n).toNat : ℤ)

end

end A090447.P8772984877139856697

namespace A090447

/-- `(A007318(n)*a(n-1))^A178487(A002262(n))` -/
def P8772984877139856697.Spec : Prop :=
  ∀ n, P8772984877139856697.a n = (A090447 n : ℚ)

end A090447

/-! ## A090447.P14654632648767779757

`A028310(a(n-1)*A206735(n))` with `a(0)=1`
-/

namespace A090447.P14654632648767779757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1) * A206735 n).toNat

end

end A090447.P14654632648767779757

namespace A090447

/-- `A028310(a(n-1)*A206735(n))` -/
def P14654632648767779757.Spec : Prop :=
  ∀ n, P14654632648767779757.a n = A090447 n

end A090447

/-! ## A090447.P5724653131274099375

`A065033(2*a(n-1)*A206735(n))` with `a(0)=1`
-/

namespace A090447.P5724653131274099375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065033 (2 * (a (n - 1) * A206735 n)).toNat

end

end A090447.P5724653131274099375

namespace A090447

/-- `A065033(2*a(n-1)*A206735(n))` -/
def P5724653131274099375.Spec : Prop :=
  ∀ n, P5724653131274099375.a n = A090447 n

end A090447

/-!
# A090448: Fourth column (m=3) of triangle A090447.

The programs for A090448, the canonical program `A090448.P15504718271135063412` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090448 has offset 3).

The definition of A090448 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090448.P1182519556575182218

`ogf((9+33x+17x^2+x^3)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A090448.P1182519556575182218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 33, 17, 1] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A090448.P1182519556575182218

namespace A090448

/-- `ogf((9+33x+17x^2+x^3)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P1182519556575182218.Spec : Prop :=
  ∀ n, P1182519556575182218.a n = A090448 (n + 3)

end A090448

/-! ## A090448.P15504718271135063412

`((n+3)^6-4*(n+3)^5+5*(n+3)^4-2*(n+3)^3)/12`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A090448

/-- `((n+3)^6-4*(n+3)^5+5*(n+3)^4-2*(n+3)^3)/12` -/
def P15504718271135063412.Spec : Prop :=
  ∀ n, P15504718271135063412.a n = (A090448 (n + 3) : ℚ)

end A090448

/-! ## A090448.P17132887250841507962

`A000330(n+2)²-A000292(n+2)²`
-/

namespace A090448.P17132887250841507962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 2) ^ 2 - A000292 (n + 2) ^ 2

end

end A090448.P17132887250841507962

namespace A090448

/-- `A000330(n+2)²-A000292(n+2)²` -/
def P17132887250841507962.Spec : Prop :=
  ∀ n, P17132887250841507962.a n = A090448 (n + 3)

end A090448

/-! ## A090448.P12331578128954044835

`A090447(C(n+4, 2)+3)`
-/

namespace A090448.P12331578128954044835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090447 (Nat.choose (n + 4) 2 + 3)

end

end A090448.P12331578128954044835

namespace A090448

/-- `A090447(C(n+4, 2)+3)` -/
def P12331578128954044835.Spec : Prop :=
  ∀ n, P12331578128954044835.a n = A090448 (n + 3)

end A090448

/-! ## A090448.P766501972809352688

`(n+3)*A004282(n+1)`
-/

namespace A090448.P766501972809352688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A004282 (n + 1)

end

end A090448.P766501972809352688

namespace A090448

/-- `(n+3)*A004282(n+1)` -/
def P766501972809352688.Spec : Prop :=
  ∀ n, P766501972809352688.a n = A090448 (n + 3)

end A090448

/-! ## A090448.P16652041711147245139

`A000217(n+2)*A004320(n+1)`
-/

namespace A090448.P16652041711147245139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) * A004320 (n + 1)

end

end A090448.P16652041711147245139

namespace A090448

/-- `A000217(n+2)*A004320(n+1)` -/
def P16652041711147245139.Spec : Prop :=
  ∀ n, P16652041711147245139.a n = A090448 (n + 3)

end A090448

/-! ## A090448.P1750999836293029146

`A165187(n+2)-Δ[A001249(n)]`
-/

namespace A090448.P1750999836293029146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165187 (n + 2) - (f1 (n + 1) - f1 n)

end

end A090448.P1750999836293029146

namespace A090448

/-- `A165187(n+2)-Δ[A001249(n)]` -/
def P1750999836293029146.Spec : Prop :=
  ∀ n, P1750999836293029146.a n = A090448 (n + 3)

end A090448

/-! ## A090448.P13161234201501998381

`A000292(n+1)*A006002(n+2)`
-/

namespace A090448.P13161234201501998381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A006002 (n + 2)

end

end A090448.P13161234201501998381

namespace A090448

/-- `A000292(n+1)*A006002(n+2)` -/
def P13161234201501998381.Spec : Prop :=
  ∀ n, P13161234201501998381.a n = A090448 (n + 3)

end A090448

/-!
# A090449: Fifth column (m=4) of triangle A090447.

The programs for A090449, the canonical program `A090449.P11442806557997689387` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090449 has offset 4).

The definition of A090449 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090447, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A090449.P11442806557997689387

`A090447(C(n+5, 2)+4)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A090449

/-- `A090447(C(n+5, 2)+4)` -/
def P11442806557997689387.Spec : Prop :=
  ∀ n, P11442806557997689387.a n = A090449 (n + 4)

theorem P11442806557997689387.correct : P11442806557997689387.Spec := by
  intro n
  simp only [A090449, Nat.add_sub_cancel]

end A090449

/-! ## A090449.P5637902766167866403

`A004282(n+2)*A027764(n+3)`
-/

namespace A090449.P5637902766167866403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004282 (n + 2) * A027764 (n + 3)

end

end A090449.P5637902766167866403

namespace A090449

/-- `A004282(n+2)*A027764(n+3)` -/
def P5637902766167866403.Spec : Prop :=
  ∀ n, P5637902766167866403.a n = A090449 (n + 4)

end A090449

/-! ## A090449.P5319375813160111652

`(n+4)²*A002415(n+3)*A000332(n+4)`
-/

namespace A090449.P5319375813160111652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 4) ^ 2 : ℤ) * A002415 (n + 3) * A000332 (n + 4)

end

end A090449.P5319375813160111652

namespace A090449

/-- `(n+4)²*A002415(n+3)*A000332(n+4)` -/
def P5319375813160111652.Spec : Prop :=
  ∀ n, P5319375813160111652.a n = A090449 (n + 4)

end A090449

/-! ## A090449.P12836325950547857596

`A027764(n+3)*A330300(A020744(n))`
-/

namespace A090449.P12836325950547857596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027764 (n + 3) * A330300 (A020744 n).toNat

end

end A090449.P12836325950547857596

namespace A090449

/-- `A027764(n+3)*A330300(A020744(n))` -/
def P12836325950547857596.Spec : Prop :=
  ∀ n, P12836325950547857596.a n = A090449 (n + 4)

end A090449

/-! ## A090449.P12701607055749739083

`(A333320(2*(n+4))+A333320(2*n+9))*A333320(2*(n+4))`
-/

namespace A090449.P12701607055749739083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A333320 (2 * (n + 4)) + A333320 (2 * n + 9)) * A333320 (2 * (n + 4))

end

end A090449.P12701607055749739083

namespace A090449

/-- `(A333320(2*(n+4))+A333320(2*n+9))*A333320(2*(n+4))` -/
def P12701607055749739083.Spec : Prop :=
  ∀ n, P12701607055749739083.a n = A090449 (n + 4)

end A090449

/-! ## A090449.P18157629500574735358

`A330300(A020744(n))*A333320(A020744(n))`
-/

namespace A090449.P18157629500574735358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330300 (A020744 n).toNat * A333320 (A020744 n).toNat

end

end A090449.P18157629500574735358

namespace A090449

/-- `A330300(A020744(n))*A333320(A020744(n))` -/
def P18157629500574735358.Spec : Prop :=
  ∀ n, P18157629500574735358.a n = A090449 (n + 4)

end A090449

/-!
# A090450: Row sums of triangle A090447.

The programs for A090450, there is no canonical definition to state claims against.
-/

/-! ## A090450.P17286871670397222082

`A269381(2^∑[n])`
-/

namespace A090450.P17286871670397222082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269381 (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A090450.P17286871670397222082

/-!
# A090452: Scaled array A078740 ((3,2)-Stirling2).

The programs for A090452, there is no canonical definition to state claims against.
-/

/-! ## A090452.P5688363700693456875

`A390394(A290310(n))`
-/

namespace A090452.P5688363700693456875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390394 (A290310 n).toNat

end

end A090452.P5688363700693456875

/-!
# A090453: Third column (m=4) of array A090452.

The programs for A090453, the canonical program `A090453.P13298471110117775644` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090453 has offset 0).

The definition of A090453 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090453.P226122229396086099

`ogf((2+6x-9x^2+3x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A090453.P226122229396086099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 6, -9, 3] [1, -5, 10, -10, 5, -1] n

end

end A090453.P226122229396086099

namespace A090453

/-- `ogf((2+6x-9x^2+3x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P226122229396086099.Spec : Prop :=
  ∀ n, P226122229396086099.a n = A090453 n

end A090453

/-! ## A090453.P13298471110117775644

`(n+1)*(n^3+15*n²+56*n+24)/12`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A090453

/-- `(n+1)*(n^3+15*n²+56*n+24)/12` -/
def P13298471110117775644.Spec : Prop :=
  ∀ n, P13298471110117775644.a n = (A090453 n : ℚ)

end A090453

/-! ## A090453.P6139664411103538257

`∑[∑[∑[a(n-1)+2]]-3]` with `a(0)=5`
-/

namespace A090453.P6139664411103538257
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f3 =>
  f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090453.P6139664411103538257

namespace A090453

/-- `∑[∑[∑[a(n-1)+2]]-3]` -/
def P6139664411103538257.Spec : Prop :=
  ∀ n, P6139664411103538257.a n = A090453 n

end A090453

/-! ## A090453.P6222671879235398138

`A350116(n)+2*(n+1)`
-/

namespace A090453.P6222671879235398138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350116 n + (2 * (n + 1) : ℤ)

end

end A090453.P6222671879235398138

namespace A090453

/-- `A350116(n)+2*(n+1)` -/
def P6222671879235398138.Spec : Prop :=
  ∀ n, P6222671879235398138.a n = A090453 n

end A090453

/-! ## A090453.P15814728604376635730

`A162256(n+1)+∑[∑[n²]]`
-/

namespace A090453.P15814728604376635730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162256 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A090453.P15814728604376635730

namespace A090453

/-- `A162256(n+1)+∑[∑[n²]]` -/
def P15814728604376635730.Spec : Prop :=
  ∀ n, P15814728604376635730.a n = A090453 n

end A090453

/-! ## A090453.P17163873787034322441

`A188480(n)+A051936(n+4)`
-/

namespace A090453.P17163873787034322441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188480 n + A051936 (n + 4)

end

end A090453.P17163873787034322441

namespace A090453

/-- `A188480(n)+A051936(n+4)` -/
def P17163873787034322441.Spec : Prop :=
  ∀ n, P17163873787034322441.a n = A090453 n

end A090453

/-! ## A090453.P15892618132715463449

`A052905(n)+A188480(n)+n`
-/

namespace A090453.P15892618132715463449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n + (A188480 n + (n : ℤ))

end

end A090453.P15892618132715463449

namespace A090453

/-- `A052905(n)+A188480(n)+n` -/
def P15892618132715463449.Spec : Prop :=
  ∀ n, P15892618132715463449.a n = A090453 n

end A090453

/-! ## A090453.P6755207364830599178

`A162260(n+1)+A033275(n+4)`
-/

namespace A090453.P6755207364830599178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162260 (n + 1) + A033275 (n + 4)

end

end A090453.P6755207364830599178

namespace A090453

/-- `A162260(n+1)+A033275(n+4)` -/
def P6755207364830599178.Spec : Prop :=
  ∀ n, P6755207364830599178.a n = A090453 n

end A090453

/-! ## A090453.P11772421354947755804

`A000096(n+1)+A350116(n)-A000217(n)`
-/

namespace A090453.P11772421354947755804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 1) + (A350116 n - A000217 n)

end

end A090453.P11772421354947755804

namespace A090453

/-- `A000096(n+1)+A350116(n)-A000217(n)` -/
def P11772421354947755804.Spec : Prop :=
  ∀ n, P11772421354947755804.a n = A090453 n

end A090453

/-! ## A090453.P9011485256124666582

`A124479(n+3)+∑[(n+1)²]`
-/

namespace A090453.P9011485256124666582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124479 (n + 3) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A090453.P9011485256124666582

namespace A090453

/-- `A124479(n+3)+∑[(n+1)²]` -/
def P9011485256124666582.Spec : Prop :=
  ∀ n, P9011485256124666582.a n = A090453 n

end A090453

/-! ## A090453.P16636667169122407749

`A033275(n+5)+∑[∑[n]-3]`
-/

namespace A090453.P16636667169122407749
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033275 (n + 5) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090453.P16636667169122407749

namespace A090453

/-- `A033275(n+5)+∑[∑[n]-3]` -/
def P16636667169122407749.Spec : Prop :=
  ∀ n, P16636667169122407749.a n = A090453 n

end A090453

/-! ## A090453.P9363743003199975777

`A055998(n+1)+A350116(n)-A000217(n+1)`
-/

namespace A090453.P9363743003199975777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 (n + 1) + (A350116 n - A000217 (n + 1))

end

end A090453.P9363743003199975777

namespace A090453

/-- `A055998(n+1)+A350116(n)-A000217(n+1)` -/
def P9363743003199975777.Spec : Prop :=
  ∀ n, P9363743003199975777.a n = A090453 n

end A090453

/-! ## A090453.P2692221552428097911

`A005581(2*(n+1))+A002415(n)`
-/

namespace A090453.P2692221552428097911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 (2 * (n + 1)) + A002415 n

end

end A090453.P2692221552428097911

namespace A090453

/-- `A005581(2*(n+1))+A002415(n)` -/
def P2692221552428097911.Spec : Prop :=
  ∀ n, P2692221552428097911.a n = A090453 n

end A090453

/-!
# A090454: Fourth column (m=5) of array A090452.

The programs for A090454, the canonical program `A090454.P15921506349612330247` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090454 has offset 0).

The definition of A090454 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090454.P8161963051381772202

`ogf((15-24x^2+18x^3-4x^4)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A090454.P8161963051381772202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15, 0, -24, 18, -4] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A090454.P8161963051381772202

namespace A090454

/-- `ogf((15-24x^2+18x^3-4x^4)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P8161963051381772202.Spec : Prop :=
  ∀ n, P8161963051381772202.a n = A090454 n

end A090454

/-! ## A090454.P15921506349612330247

`(n+9)*(n+6)*(n+2)*(n+1)*(n²+15*n+20)/144`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A090454

/-- `(n+9)*(n+6)*(n+2)*(n+1)*(n²+15*n+20)/144` -/
def P15921506349612330247.Spec : Prop :=
  ∀ n, P15921506349612330247.a n = (A090454 n : ℚ)

end A090454

/-! ## A090454.P5881842683052013802

`A090452((n+2)²+4)`
-/

namespace A090454.P5881842683052013802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090452 ((n + 2) ^ 2 + 4)

end

end A090454.P5881842683052013802

namespace A090454

/-- `A090452((n+2)²+4)` -/
def P5881842683052013802.Spec : Prop :=
  ∀ n, P5881842683052013802.a n = A090454 n

end A090454

/-! ## A090454.P6073437733343012849

`record[A090452(n+8)/A090452(n+5)]`
-/

namespace A090454.P6073437733343012849
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090452 (n + 8) : ℚ) / (A090452 (n + 5) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090454.P6073437733343012849

namespace A090454

/-- `record[A090452(n+8)/A090452(n+5)]` -/
def P6073437733343012849.Spec : Prop :=
  ∀ n, P6073437733343012849.a n = (A090454 n : ℚ)

end A090454

/-!
# A090455: Difference between numbers of binary 1's of n and binary 1's of n-th prime.

The programs for A090455, the canonical program `A090455.P12087489954554024740` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090455 has offset 1).

The definition of A090455 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090455.P12087489954554024740

`A000120(n+1)-A014499(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A090455

/-- `A000120(n+1)-A014499(n+1)` -/
def P12087489954554024740.Spec : Prop :=
  ∀ n, P12087489954554024740.a n = A090455 (n + 1)

theorem P12087489954554024740.correct : P12087489954554024740.Spec := by
  intro n
  simp only [A090455, Nat.add_sub_cancel]

end A090455

/-! ## A090455.P6865988441387832427

`Δ[A000788(n)]-A014499(n+1)`
-/

namespace A090455.P6865988441387832427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A014499 (n + 1)

end

end A090455.P6865988441387832427

namespace A090455

/-- `Δ[A000788(n)]-A014499(n+1)` -/
def P6865988441387832427.Spec : Prop :=
  ∀ n, P6865988441387832427.a n = A090455 (n + 1)

end A090455

/-! ## A090455.P7292480989480385592

`∑[1-A007814(n+1)]-A014499(n+1)`
-/

namespace A090455.P7292480989480385592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A014499 (n + 1)

end

end A090455.P7292480989480385592

namespace A090455

/-- `∑[1-A007814(n+1)]-A014499(n+1)` -/
def P7292480989480385592.Spec : Prop :=
  ∀ n, P7292480989480385592.a n = A090455 (n + 1)

end A090455

/-! ## A090455.P4805775910989721260

`A000005(A048896(n))-A014499(n+1)`
-/

namespace A090455.P4805775910989721260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A048896 n).toNat - A014499 (n + 1)

end

end A090455.P4805775910989721260

namespace A090455

/-- `A000005(A048896(n))-A014499(n+1)` -/
def P4805775910989721260.Spec : Prop :=
  ∀ n, P4805775910989721260.a n = A090455 (n + 1)

end A090455

/-! ## A090455.P8199770165829917355

`A000788(n+1)-(A014499(n+1)+A000788(n))`
-/

namespace A090455.P8199770165829917355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 (n + 1) - (A014499 (n + 1) + A000788 n)

end

end A090455.P8199770165829917355

namespace A090455

/-- `A000788(n+1)-(A014499(n+1)+A000788(n))` -/
def P8199770165829917355.Spec : Prop :=
  ∀ n, P8199770165829917355.a n = A090455 (n + 1)

end A090455

/-! ## A090455.P17624663165416231608

`A000120(n+1)+A035103(n+1)-A035100(n+1)`
-/

namespace A090455.P17624663165416231608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + (A035103 (n + 1) - A035100 (n + 1))

end

end A090455.P17624663165416231608

namespace A090455

/-- `A000120(n+1)+A035103(n+1)-A035100(n+1)` -/
def P17624663165416231608.Spec : Prop :=
  ∀ n, P17624663165416231608.a n = A090455 (n + 1)

theorem P17624663165416231608.correct : P17624663165416231608.Spec := by
  intro n
  simp only [A090455, Nat.add_sub_cancel, A090455.P17624663165416231608.a, A090455.P12087489954554024740.a, A000120, A000120.P2816527436160941581.a, A014499, A014499.P9770580101482900462.a, A035100, A035100.P16711503485959756516.a, A035103, A035103.P1324719609663575418.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090455

/-! ## A090455.P14597892318968038284

`A023416(n+1)-(A037861(n+1)+A014499(n+1))`
-/

namespace A090455.P14597892318968038284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1) - (A037861 (n + 1) + A014499 (n + 1))

end

end A090455.P14597892318968038284

namespace A090455

/-- `A023416(n+1)-(A037861(n+1)+A014499(n+1))` -/
def P14597892318968038284.Spec : Prop :=
  ∀ n, P14597892318968038284.a n = A090455 (n + 1)

theorem P14597892318968038284.correct : P14597892318968038284.Spec := by
  intro n
  simp only [A090455, Nat.add_sub_cancel, A090455.P14597892318968038284.a, A090455.P12087489954554024740.a, A000120, A000120.P2816527436160941581.a, A014499, A014499.P9770580101482900462.a, A023416, A023416.P8124303482289229133.a, A037861, A037861.P603769739827553154.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A005187, A005187.P3874015513960485494.a, A070939, A070939.P14677302147902843740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090455

/-! ## A090455.P5840543451740117986

`A000120(n+1)-A000120(A088147(n+1))`
-/

namespace A090455.P5840543451740117986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - A000120 (A088147 (n + 1)).toNat

end

end A090455.P5840543451740117986

namespace A090455

/-- `A000120(n+1)-A000120(A088147(n+1))` -/
def P5840543451740117986.Spec : Prop :=
  ∀ n, P5840543451740117986.a n = A090455 (n + 1)

end A090455

/-! ## A090455.P4714363601793082924

`A048881(n)-A048881(A006093(n+1))`
-/

namespace A090455.P4714363601793082924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 n - A048881 (A006093 (n + 1)).toNat

end

end A090455.P4714363601793082924

namespace A090455

/-- `A048881(n)-A048881(A006093(n+1))` -/
def P4714363601793082924.Spec : Prop :=
  ∀ n, P4714363601793082924.a n = A090455 (n + 1)

end A090455

/-! ## A090455.P12822233075655620555

`A000120(n+1)-A000120(A000040(n+1))`
-/

namespace A090455.P12822233075655620555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - A000120 (A000040 (n + 1)).toNat

end

end A090455.P12822233075655620555

namespace A090455

/-- `A000120(n+1)-A000120(A000040(n+1))` -/
def P12822233075655620555.Spec : Prop :=
  ∀ n, P12822233075655620555.a n = A090455 (n + 1)

end A090455

/-! ## A090455.P12246994180712926240

`A000120(n+1)-A000120(A006005(n+1))`
-/

namespace A090455.P12246994180712926240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - A000120 (A006005 (n + 1)).toNat

end

end A090455.P12246994180712926240

namespace A090455

/-- `A000120(n+1)-A000120(A006005(n+1))` -/
def P12246994180712926240.Spec : Prop :=
  ∀ n, P12246994180712926240.a n = A090455 (n + 1)

end A090455

/-! ## A090455.P1546091092571357598

`A000120(n+1)-A000120(A008578(n+2))`
-/

namespace A090455.P1546091092571357598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - A000120 (A008578 (n + 2)).toNat

end

end A090455.P1546091092571357598

namespace A090455

/-- `A000120(n+1)-A000120(A008578(n+2))` -/
def P1546091092571357598.Spec : Prop :=
  ∀ n, P1546091092571357598.a n = A090455 (n + 1)

end A090455

/-! ## A090455.P15589908147811620372

`A048881(n)-A048881(A000040(n+1)-1)`
-/

namespace A090455.P15589908147811620372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 n - A048881 (A000040 (n + 1) - 1).toNat

end

end A090455.P15589908147811620372

namespace A090455

/-- `A048881(n)-A048881(A000040(n+1)-1)` -/
def P15589908147811620372.Spec : Prop :=
  ∀ n, P15589908147811620372.a n = A090455 (n + 1)

end A090455

/-! ## A090455.P5303794430590060397

`A000120(n+1)-A000120(A182986(n+2))`
-/

namespace A090455.P5303794430590060397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - A000120 (A182986 (n + 2)).toNat

end

end A090455.P5303794430590060397

namespace A090455

/-- `A000120(n+1)-A000120(A182986(n+2))` -/
def P5303794430590060397.Spec : Prop :=
  ∀ n, P5303794430590060397.a n = A090455 (n + 1)

end A090455

/-! ## A090455.P445190134990852541

`A048881(n)-A048881(eq[2, A128982(n+2)])`
-/

namespace A090455.P445190134990852541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128982 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 n - A048881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090455.P445190134990852541

namespace A090455

/-- `A048881(n)-A048881(eq[2, A128982(n+2)])` -/
def P445190134990852541.Spec : Prop :=
  ∀ n, P445190134990852541.a n = A090455 (n + 1)

end A090455

/-! ## A090455.P15815357833124708099

`A000120(n+1)-A000120(record[A006530(n+2)])`
-/

namespace A090455.P15815357833124708099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - A000120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090455.P15815357833124708099

namespace A090455

/-- `A000120(n+1)-A000120(record[A006530(n+2)])` -/
def P15815357833124708099.Spec : Prop :=
  ∀ n, P15815357833124708099.a n = A090455 (n + 1)

end A090455

/-! ## A090455.P1737252863669858073

`A000120(n+1)-A000120(record[A014963(n+2)])`
-/

namespace A090455.P1737252863669858073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - A000120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090455.P1737252863669858073

namespace A090455

/-- `A000120(n+1)-A000120(record[A014963(n+2)])` -/
def P1737252863669858073.Spec : Prop :=
  ∀ n, P1737252863669858073.a n = A090455 (n + 1)

end A090455

/-! ## A090455.P2743277225597635074

`A000120(n+1)-A000120(record[A020639(n+2)])`
-/

namespace A090455.P2743277225597635074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - A000120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090455.P2743277225597635074

namespace A090455

/-- `A000120(n+1)-A000120(record[A020639(n+2)])` -/
def P2743277225597635074.Spec : Prop :=
  ∀ n, P2743277225597635074.a n = A090455 (n + 1)

end A090455

/-! ## A090455.P10508639023834186731

`A000120(n+1)-A000120(A129767(2*n+1))`
-/

namespace A090455.P10508639023834186731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - A000120 (A129767 (2 * n + 1)).toNat

end

end A090455.P10508639023834186731

namespace A090455

/-- `A000120(n+1)-A000120(A129767(2*n+1))` -/
def P10508639023834186731.Spec : Prop :=
  ∀ n, P10508639023834186731.a n = A090455 (n + 1)

end A090455

/-! ## A090455.P12953346042778504457

`A000120(n+1)-A000120(A207790(2*(n+1)))`
-/

namespace A090455.P12953346042778504457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - A000120 (A207790 (2 * (n + 1))).toNat

end

end A090455.P12953346042778504457

namespace A090455

/-- `A000120(n+1)-A000120(A207790(2*(n+1)))` -/
def P12953346042778504457.Spec : Prop :=
  ∀ n, P12953346042778504457.a n = A090455 (n + 1)

end A090455

/-!
# A090456: Primes prime(k) having more binary 1's than k.

The programs for A090456, the canonical program `A090456.P17686802437551644839` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090456 has offset 1).

The definition of A090456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7484 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090456.P17686802437551644839

`A065091(lt[A000120(n+1), A014499(n+1)])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A090456

/-- `A065091(lt[A000120(n+1), A014499(n+1)])` -/
def P17686802437551644839.Spec : Prop :=
  ∀ n, P17686802437551644839.a n = A090456 (n + 1)

theorem P17686802437551644839.correct : P17686802437551644839.Spec := by
  intro n
  simp only [A090456, Nat.add_sub_cancel]

end A090456

/-! ## A090456.P479099187123178877

`A000040(lt[A000120(n+1), A014499(n+1)]+1)`
-/

namespace A090456.P479099187123178877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A090456.P479099187123178877

namespace A090456

/-- `A000040(lt[A000120(n+1), A014499(n+1)]+1)` -/
def P479099187123178877.Spec : Prop :=
  ∀ n, P479099187123178877.a n = A090456 (n + 1)

end A090456

/-! ## A090456.P15219605253932487434

`A000040(lt[A326541(n), A278529(n+1)]+1)`
-/

namespace A090456.P15219605253932487434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326541 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A090456.P15219605253932487434

namespace A090456

/-- `A000040(lt[A326541(n), A278529(n+1)]+1)` -/
def P15219605253932487434.Spec : Prop :=
  ∀ n, P15219605253932487434.a n = A090456 (n + 1)

end A090456

/-! ## A090456.P16455120721652847648

`p?[A002024(A137217(n+1))+n+1]`
-/

namespace A090456.P16455120721652847648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A137217 (n + 1)).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090456.P16455120721652847648

namespace A090456

/-- `p?[A002024(A137217(n+1))+n+1]` -/
def P16455120721652847648.Spec : Prop :=
  ∀ n, P16455120721652847648.a n = A090456 (n + 1)

end A090456

/-! ## A090456.P201136076699894316

`A346153(A301010(3*n+2)+A000045(n+2))`
-/

namespace A090456.P201136076699894316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346153 (A301010 (3 * n + 2) + A000045 (n + 2)).toNat

end

end A090456.P201136076699894316

namespace A090456

/-- `A346153(A301010(3*n+2)+A000045(n+2))` -/
def P201136076699894316.Spec : Prop :=
  ∀ n, P201136076699894316.a n = A090456 (n + 1)

end A090456

/-!
# A090457: Primes prime(k) having fewer binary 1's than k.

The programs for A090457, the canonical program `A090457.P10654674990905601731` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090457 has offset 1).

The definition of A090457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1416 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090457.P10654674990905601731

`A065091(lt[A014499(n+1), A000120(n+1)])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A090457

/-- `A065091(lt[A014499(n+1), A000120(n+1)])` -/
def P10654674990905601731.Spec : Prop :=
  ∀ n, P10654674990905601731.a n = A090457 (n + 1)

theorem P10654674990905601731.correct : P10654674990905601731.Spec := by
  intro n
  simp only [A090457, Nat.add_sub_cancel]

end A090457

/-!
# A090458: Decimal expansion of (3 + sqrt(21))/2.

The programs for A090458, there is no canonical definition to state claims against.
-/

/-! ## A090458.P2603729631263652349

`A107905(n)-A000007(n)`
-/

namespace A090458.P2603729631263652349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107905 (n + 1) - A000007 n

end

end A090458.P2603729631263652349

/-! ## A090458.P5203145280500885427

`or(A000007(n), A222134(n))`
-/

namespace A090458.P5203145280500885427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A222134 (n + 1))

end

end A090458.P5203145280500885427

/-! ## A090458.P3978114313681511743

`or(char[A178134(n)], A222134(n))`
-/

namespace A090458.P3978114313681511743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178134 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A222134 (n + 1))

end

end A090458.P3978114313681511743

/-! ## A090458.P15715798861921240712

`A107905(n)-A066872(n+1)%2`
-/

namespace A090458.P15715798861921240712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107905 (n + 1) - Int.tmod (A066872 (n + 1)) 2

end

end A090458.P15715798861921240712

/-! ## A090458.P13693924588836388973

`A010477(n)+A222134(n)-A367453(n)`
-/

namespace A090458.P13693924588836388973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010477 (n + 1) + (A222134 (n + 1) - A367453 n)

end

end A090458.P13693924588836388973

/-! ## A090458.P9684308138405453896

`A107905(n)-(A008578(n+2)+1)%2`
-/

namespace A090458.P9684308138405453896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107905 (n + 1) - Int.tmod (A008578 (n + 2) + 1) 2

end

end A090458.P9684308138405453896

/-! ## A090458.P8869834975794765100

`A107905(n)-A049084(2*(n+1))`
-/

namespace A090458.P8869834975794765100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107905 (n + 1) - A049084 (2 * (n + 1))

end

end A090458.P8869834975794765100

/-!
# A090460: Number of essentially different permutations of the numbers 1 to n such that the sum of adjacent numbers is a square.

The programs for A090460, there is no canonical definition to state claims against.
-/

/-! ## A090460.P8939580114902807200

`A071983(lt[A222210(n+3), 12])`
-/

namespace A090460.P8939580114902807200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071983 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 15)

end

end A090460.P8939580114902807200

/-! ## A090460.P16028489061740519621

`A000265(2^n)*A071983(n)`
-/

namespace A090460.P16028489061740519621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 ^ n) * A071983 (n + 15)

end

end A090460.P16028489061740519621

/-! ## A090460.P445764682809752762

`A071983(n)%A246544(n+1)`
-/

namespace A090460.P445764682809752762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071983 (n + 15)) (A246544 (n + 1))

end

end A090460.P445764682809752762

/-! ## A090460.P4367281577552425110

`A071983(n)+A000038(A005246(n))`
-/

namespace A090460.P4367281577552425110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071983 (n + 15) + A000038 (A005246 n).toNat

end

end A090460.P4367281577552425110

/-! ## A090460.P12623164634865431880

`A071983(n)+A000038(A005898(n))`
-/

namespace A090460.P12623164634865431880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071983 (n + 15) + A000038 (A005898 n).toNat

end

end A090460.P12623164634865431880

/-!
# A090461: Numbers k for which there exists a permutation of the numbers 1 to k such that the sum of adjacent numbers is a square.

The programs for A090461, there is no canonical definition to state claims against.
-/

/-! ## A090461.P1696377147544860339

`record[A094727(A004202(n+1)+41)]`
-/

namespace A090461.P1696377147544860339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A004202 (n + 1) + 41).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090461.P1696377147544860339

/-!
# A090464: Smallest number m such that n with by m sevens appended yields a prime, or -1 if no such m exists.

The programs for A090464, there is no canonical definition to state claims against.
-/

/-! ## A090464.P11708784358960531700

`A005171(n+1)*A363922(n+1)`
-/

namespace A090464.P11708784358960531700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A363922 (n + 1)

end

end A090464.P11708784358960531700

/-! ## A090464.P9060361331275646830

`A090465(n+1)*A363922(n+1)/A373201(n+1)`
-/

namespace A090464.P9060361331275646830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090465 (n + 1) * A363922 (n + 1) : ℚ) / (A373201 (n + 1) : ℚ)

end

end A090464.P9060361331275646830

/-! ## A090464.P8648316370665970850

`A090584(n+1)*A363922(n+1)/A372262(n+1)`
-/

namespace A090464.P8648316370665970850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090584 (n + 1) * A363922 (n + 1) : ℚ) / (A372262 (n + 1) : ℚ)

end

end A090464.P8648316370665970850

/-! ## A090464.P2244633412065897367

`A083747(n+1)/A069568(n+1)*A363922(n+1)`
-/

namespace A090464.P2244633412065897367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083747 (n + 1) : ℚ) / (A069568 (n + 1) : ℚ) * (A363922 (n + 1) : ℚ)

end

end A090464.P2244633412065897367

/-! ## A090464.P1217717262614275239

`A363922(n+1)%A038754(A191558(n+1))`
-/

namespace A090464.P1217717262614275239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363922 (n + 1)) (A038754 (A191558 (n + 1)).toNat)

end

end A090464.P1217717262614275239

/-! ## A090464.P13126902370107270348

`A363922(n+1)%A259175(n+1)`
-/

namespace A090464.P13126902370107270348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363922 (n + 1)) (A259175 (n + 1))

end

end A090464.P13126902370107270348

/-!
# A090465: Smallest number m such that (n+1)*10^m-1 (i.e., n with m nines appended) yields a prime, or -1 if this will always yield a composite number.

The programs for A090465, there is no canonical definition to state claims against.
-/

/-! ## A090465.P12904314632679621904

`A005171(n+1)*A373201(n+1)`
-/

namespace A090465.P12904314632679621904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A373201 (n + 1)

end

end A090465.P12904314632679621904

/-! ## A090465.P9066529858658729877

`A090464(n+1)/A363922(n+1)*A373201(n+1)`
-/

namespace A090465.P9066529858658729877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090464 (n + 1) : ℚ) / (A363922 (n + 1) : ℚ) * (A373201 (n + 1) : ℚ)

end

end A090465.P9066529858658729877

/-! ## A090465.P11585607045923713636

`A090584(n+1)/A372262(n+1)*A373201(n+1)`
-/

namespace A090465.P11585607045923713636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090584 (n + 1) : ℚ) / (A372262 (n + 1) : ℚ) * (A373201 (n + 1) : ℚ)

end

end A090465.P11585607045923713636

/-! ## A090465.P150535273316978959

`A083747(n+1)/A069568(n+1)*A373201(n+1)`
-/

namespace A090465.P150535273316978959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083747 (n + 1) : ℚ) / (A069568 (n + 1) : ℚ) * (A373201 (n + 1) : ℚ)

end

end A090465.P150535273316978959

/-! ## A090465.P4123810593007986384

`A373201(n+1)%A259175(n+1)`
-/

namespace A090465.P4123810593007986384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373201 (n + 1)) (A259175 (n + 1))

end

end A090465.P4123810593007986384

/-!
# A090466: Regular figurative or polygonal numbers of order greater than 2.

The programs for A090466, there is no canonical definition to state claims against.
-/

/-! ## A090466.P8044393351911517951

`eq[1, A364693(n)]`
-/

namespace A090466.P8044393351911517951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090466.P8044393351911517951

/-! ## A090466.P6790275485662212939

`lt[2, A129654(2+n)]+2`
-/

namespace A090466.P6790275485662212939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A090466.P6790275485662212939

/-! ## A090466.P14769782251085872062

`filter[A089088(n), A364693(#)]`
-/

namespace A090466.P14769782251085872062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A090466.P14769782251085872062

/-! ## A090466.P9739646692752647697

`A171463(lt[2, A129654(n+2)])`
-/

namespace A090466.P9739646692752647697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A090466.P9739646692752647697

/-! ## A090466.P5952752975309214724

`filter[A131516(n), A364693(#)]`
-/

namespace A090466.P5952752975309214724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A090466.P5952752975309214724

/-! ## A090466.P9133304732775822565

`eq[char[A090467(n+1)], A000007(n)]`
-/

namespace A090466.P9133304732775822565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090467 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A090466.P9133304732775822565

/-! ## A090466.P18133229263773686628

`eq[char[A090467(n+1)], A000038(n)]`
-/

namespace A090466.P18133229263773686628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090467 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A090466.P18133229263773686628

/-! ## A090466.P13351052236644657835

`filter[A092942(n), A364693(#)]`
-/

namespace A090466.P13351052236644657835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A090466.P13351052236644657835

/-! ## A090466.P14356999517109982078

`filter[A117909(n), A364693(#)]`
-/

namespace A090466.P14356999517109982078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A090466.P14356999517109982078

/-! ## A090466.P3560818796162521710

`filter[A083926(n), A364693(#)]`
-/

namespace A090466.P3560818796162521710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A090466.P3560818796162521710

/-! ## A090466.P2395600056967132451

`filter[A019303(n), A364693(#)]`
-/

namespace A090466.P2395600056967132451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A090466.P2395600056967132451

/-! ## A090466.P17439564664490461800

`filter[A102390(n), A364693(#)]`
-/

namespace A090466.P17439564664490461800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A090466.P17439564664490461800

/-! ## A090466.P13189692046346368552

`filter[A027656(n), A364693(#)]`
-/

namespace A090466.P13189692046346368552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A090466.P13189692046346368552

/-! ## A090466.P2127458588066600758

`filter[A057979(n), A364693(#)]`
-/

namespace A090466.P2127458588066600758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A090466.P2127458588066600758

/-! ## A090466.P12426329974829271066

`filter[A102389(n), A364693(#)]`
-/

namespace A090466.P12426329974829271066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A090466.P12426329974829271066

/-! ## A090466.P2675467110297777585

`filter[A131360(n), A364693(#)]`
-/

namespace A090466.P2675467110297777585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A090466.P2675467110297777585

/-! ## A090466.P8798614970971244454

`filter[A142150(n), A364693(#)]`
-/

namespace A090466.P8798614970971244454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A090466.P8798614970971244454

/-! ## A090466.P11885299901435057329

`filter[A152271(n), A364693(#)]`
-/

namespace A090466.P11885299901435057329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A090466.P11885299901435057329

/-! ## A090466.P12358997433030193843

`filter[A158416(n), A364693(#)]`
-/

namespace A090466.P12358997433030193843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A090466.P12358997433030193843

/-! ## A090466.P14253059357948748492

`eq[char[A090467(n+1)], A080339(2*(n+1))]`
-/

namespace A090466.P14253059357948748492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090467 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A090466.P14253059357948748492

/-!
# A090467: Numbers which are not regular figurative or polygonal numbers of order greater than 2. That is, numbers not of the form 1 + k*m*(m-1)/2 - (m-1)^2 where k > 2 and m > 2.

The programs for A090467, there is no canonical definition to state claims against.
-/

/-! ## A090467.P6811561789008495355

`∪[A008578(n+1), A176949(n+1)]`
-/

namespace A090467.P6811561789008495355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090467.P6811561789008495355

/-! ## A090467.P7964801803513833263

`∪[A046022(n+1), A176949(n+1)]`
-/

namespace A090467.P7964801803513833263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090467.P7964801803513833263

/-! ## A090467.P14467990089293360450

`∪[A176949(n+1), A177202(n+1)]`
-/

namespace A090467.P14467990089293360450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090467.P14467990089293360450

/-! ## A090467.P18418566191629057062

`comp[A090466(n+1)-1]+1`
-/

namespace A090467.P18418566191629057062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090466 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A090467.P18418566191629057062

/-! ## A090467.P6915605571971319276

`eq[1, A177025(abs(3-n)+3)]`
-/

namespace A090467.P6915605571971319276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177025 (|3 - (n : ℤ)| + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090467.P6915605571971319276

/-! ## A090467.P15078523979929613793

`record[1-41*A364693(n+1)+n]`
-/

namespace A090467.P15078523979929613793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 41 * A364693 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090467.P15078523979929613793

/-! ## A090467.P18376929726040024740

`eq[A000007(n), A364693(n)]`
-/

namespace A090467.P18376929726040024740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090467.P18376929726040024740

/-! ## A090467.P13398379325685823145

`eq[A000038(n), A364693(n)]`
-/

namespace A090467.P13398379325685823145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090467.P13398379325685823145

/-! ## A090467.P886931940297749174

`eq[A307380(n+1), A364693(n)]`
-/

namespace A090467.P886931940297749174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090467.P886931940297749174

/-! ## A090467.P11629246021483020025

`eq[A307382(n+1), A364693(n)]`
-/

namespace A090467.P11629246021483020025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090467.P11629246021483020025

/-! ## A090467.P7262969154581163805

`eq[A063667(2*n), A364693(n)]`
-/

namespace A090467.P7262969154581163805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063667 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090467.P7262969154581163805

/-! ## A090467.P1692355051074618132

`eq[char[A090466(n+1)], A000007(n)]`
-/

namespace A090467.P1692355051074618132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090466 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A090467.P1692355051074618132

/-! ## A090467.P4189986043267387988

`eq[char[A090466(n+1)], A000038(n)]`
-/

namespace A090467.P4189986043267387988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090466 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A090467.P4189986043267387988

/-! ## A090467.P11488984347048839632

`comp[n*A364693(n)]`
-/

namespace A090467.P11488984347048839632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A364693 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A090467.P11488984347048839632

/-! ## A090467.P7815364823128491359

`eq[A157828(n), A364693(n)]`
-/

namespace A090467.P7815364823128491359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157828 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090467.P7815364823128491359

/-!
# A090470: Expansion of e.g.f.: 1/((1-4*x)*sqrt(1-2*x)).

The programs for A090470, there is no canonical definition to state claims against.
-/

/-! ## A090470.P13008438536644373713

`abs(A127137(2*n+1))`
-/

namespace A090470.P13008438536644373713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A127137 (2 * n + 1)|

end

end A090470.P13008438536644373713

/-! ## A090470.P12347949864759532183

`3*n*a(n-1)+A001147(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A090470.P12347949864759532183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 * n : ℤ) * a (n - 1) + (A001147 n + (n : ℤ) * a (n - 1))

end

end A090470.P12347949864759532183

/-! ## A090470.P11176227903457238111

`A049606(n)*A126963(n)`
-/

namespace A090470.P11176227903457238111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049606 n * A126963 n

end

end A090470.P11176227903457238111

/-! ## A090470.P10000764028136818945

`record[abs(A127137(A026741(n)))]`
-/

namespace A090470.P10000764028136818945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A127137 (A026741 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090470.P10000764028136818945

/-! ## A090470.P8251022798771955690

`A110511(∑[n])*A127137(2*n+1)`
-/

namespace A090470.P8251022798771955690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110511 (∑ j ∈ Finset.range (n + 1), f1 j) * A127137 (2 * n + 1)

end

end A090470.P8251022798771955690

/-! ## A090470.P17187465218887622210

`A057077(2*n)*A127137(2*n+1)`
-/

namespace A090470.P17187465218887622210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A127137 (2 * n + 1)

end

end A090470.P17187465218887622210

/-! ## A090470.P3608175264140705229

`lcm(A008836(n+1), A127137(2*n+1))`
-/

namespace A090470.P3608175264140705229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A127137 (2 * n + 1))

end

end A090470.P3608175264140705229

/-! ## A090470.P937140117209240550

`gcd(2-A141056(2*n+1), A127137(2*n+1))`
-/

namespace A090470.P937140117209240550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A141056 (2 * n + 1)) (A127137 (2 * n + 1))

end

end A090470.P937140117209240550

/-!
# A090472: Primes in A089897.

The programs for A090472, there is no canonical definition to state claims against.
-/

/-! ## A090472.P12134961264598124832

`p?[A089897(n+1)]`
-/

namespace A090472.P12134961264598124832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090472.P12134961264598124832

/-!
# A090473: Primes in A047783.

The programs for A090473, there is no canonical definition to state claims against.
-/

/-! ## A090473.P13029528455616081635

`p?[A047783(n+2)]`
-/

namespace A090473.P13029528455616081635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047783 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090473.P13029528455616081635

/-! ## A090473.P9593900522991478981

`p?[A047785(n+2)-1]`
-/

namespace A090473.P9593900522991478981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047785 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090473.P9593900522991478981

/-! ## A090473.P8416976729908809728

`p?[A023443(A047785(n+2))]`
-/

namespace A090473.P8416976729908809728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A047785 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090473.P8416976729908809728

/-! ## A090473.P4728845317099224819

`filter[A047783(n+2), A010051(#)]`
-/

namespace A090473.P4728845317099224819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047783 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A090473.P4728845317099224819

/-! ## A090473.P12260050156176638827

`filter[A047783(n+3), A080339(#)]`
-/

namespace A090473.P12260050156176638827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047783 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A090473.P12260050156176638827

/-! ## A090473.P2326233041431988898

`p?[A023444(A047785(n+2)+1)]`
-/

namespace A090473.P2326233041431988898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A047785 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090473.P2326233041431988898

/-! ## A090473.P13250976915255631080

`p?[A057428(n+1)+A047785(n+2)]`
-/

namespace A090473.P13250976915255631080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A047785 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090473.P13250976915255631080

/-! ## A090473.P5804851973027662286

`p?[A106400(2^A007814(n+1))+A047785(n+2)]`
-/

namespace A090473.P5804851973027662286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A007814 (n + 1) : ℤ))).toNat + A047785 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090473.P5804851973027662286

/-! ## A090473.P3310326596441337891

`p?[A277458(A007814(2*n+1))+A047785(n+2)]`
-/

namespace A090473.P3310326596441337891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277458 (A007814 (2 * n + 1)).toNat + A047785 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090473.P3310326596441337891

/-! ## A090473.P3603266424923375729

`p?[A305807(A099389(n+1))+A047785(n+2)]`
-/

namespace A090473.P3603266424923375729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305807 (A099389 (n + 1)).toNat + A047785 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090473.P3603266424923375729

/-! ## A090473.P17902912566174033839

`p?[A088226(A047785(n+2)²)]`
-/

namespace A090473.P17902912566174033839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A047785 (n + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090473.P17902912566174033839

/-!
# A090474: Beginning with 2, a(n+1) is the least prime == 1 (mod (Sum_{i=1..n} a(i))).

The programs for A090474, there is no canonical definition to state claims against.
-/

/-! ## A090474.P898921037923261910

`A317678(a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A090474.P898921037923261910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A317678 (a (n - 2)).toNat

end

end A090474.P898921037923261910

/-! ## A090474.P17103206796368459616

`A379541(a(n-2)+1)` with `a(0)=2, a(1)=3`
-/

namespace A090474.P17103206796368459616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A379541 (a (n - 2) + 1).toNat

end

end A090474.P17103206796368459616

/-!
# A090475: Beginning with 2, a(n+1) is the least prime == -1 (mod Product_{i=1..n} a(i) ).

The programs for A090475, there is no canonical definition to state claims against.
-/

/-! ## A090475.P16483146517317344046

`A371024(A257503(n+1))`
-/

namespace A090475.P16483146517317344046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371024 (A257503 (n + 1)).toNat

end

end A090475.P16483146517317344046

/-!
# A090476: Beginning with 2, a(n+1) is the least prime == -1 (mod (Sum a(i), i=1 to n)).

The programs for A090476, there is no canonical definition to state claims against.
-/

/-! ## A090476.P10699003292066297720

`A006530(A289376(n)+A263131(n))`
-/

namespace A090476.P10699003292066297720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A289376 n + A263131 n).toNat

end

end A090476.P10699003292066297720

/-!
# A090477: T(n,k) is the number of occurrences of the k-th prime in the first n partition numbers (with repetitions), 1 <= k <= n, triangular array read by rows.

The programs for A090477, there is no canonical definition to state claims against.
-/

/-! ## A090477.P13800268076246171724

`A060384(A340488(n+1))%A001227(A246479(n+1))`
-/

namespace A090477.P13800268076246171724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060384 (A340488 (n + 1)).toNat) (A001227 (A246479 (n + 1)).toNat)

end

end A090477.P13800268076246171724

/-! ## A090477.P17407713298176037409

`A124769(A059197(n+1)%A140303(n))`
-/

namespace A090477.P17407713298176037409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (Int.tmod (A059197 (n + 1)) (A140303 n)).toNat

end

end A090477.P17407713298176037409

/-! ## A090477.P9792360642228157495

`A178489(A146375(n+1)%A123490(n))`
-/

namespace A090477.P9792360642228157495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 (Int.tmod (A146375 (n + 1)) (A123490 n)).toNat

end

end A090477.P9792360642228157495

/-! ## A090477.P10444138741690804448

`A049498(n+1)%A362325(n+1)`
-/

namespace A090477.P10444138741690804448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049498 (n + 1)) (A362325 (n + 1))

end

end A090477.P10444138741690804448

/-! ## A090477.P12420895219967000928

`floor((A092921(n)%(A129386(n+1)+3)+2)/3)`
-/

namespace A090477.P12420895219967000928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.tmod (A092921 n) (A129386 (n + 1) + 3) + 2 : ℚ) / 3⌋

end

end A090477.P12420895219967000928

/-!
# A090481: Primes p such that tau(p-1)+tau(p+1) is larger than for any previous term. (Smallest prime sandwiched between more composite numbers.)

The programs for A090481, there is no canonical definition to state claims against.
-/

/-! ## A090481.P14634464618976925636

`A090482(A175146(n+1))`
-/

namespace A090481.P14634464618976925636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090482 (A175146 (n + 1)).toNat

end

end A090481.P14634464618976925636

/-! ## A090481.P6360515165387787593

`A090482(record[A175144(n+1)])`
-/

namespace A090481.P6360515165387787593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090482 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090481.P6360515165387787593

/-! ## A090481.P4279992233106306555

`A090482(record[A008329(n+1)+A008328(n+1)])`
-/

namespace A090481.P4279992233106306555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008329 (n + 1) + A008328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090482 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090481.P4279992233106306555

/-! ## A090481.P9377309422130008023

`A090482(record[A145337(n)+2*A008328(n+1)])`
-/

namespace A090481.P9377309422130008023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145337 n + 2 * A008328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090482 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090481.P9377309422130008023

/-! ## A090481.P4804671126382907751

`A090482(record[2*A008329(n+1)-A145337(n)])`
-/

namespace A090481.P4804671126382907751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008329 (n + 1) - A145337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090482 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090481.P4804671126382907751

/-!
# A090484: a(n) = Floor[(Exp[Prime[n]/n]-1)/Log[n]].

The programs for A090484, the canonical program `A090484.P11752315309808364788` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090484 has offset 2).

The definition of A090484 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((exp(A000040(n+2)/(n+2))-1)/log(n+2))` (program `A090484.P11752315309808364788`, by `A090484.P11752315309808364788.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090484.P11752315309808364788

`floor((exp(A000040(n+2)/(n+2))-1)/log(n+2))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A090484

/-- `floor((exp(A000040(n+2)/(n+2))-1)/log(n+2))` -/
def P11752315309808364788.Spec : Prop :=
  ∀ n, P11752315309808364788.a n = A090484 (n + 2)

theorem P11752315309808364788.correct : P11752315309808364788.Spec := by
  intro n
  simp only [A090484, Nat.add_sub_cancel]

end A090484

/-!
# A090485: a(n) = Floor[(Exp[n/PrimePi[n]]-1)/Log[n]].

The programs for A090485, the canonical program `A090485.P2937766613114808948` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090485 has offset 2).

The definition of A090485 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((exp((n+2)/A000720(n+2))-1)/log(n+2))` (program `A090485.P2937766613114808948`, by `A090485.P2937766613114808948.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090485.P2937766613114808948

`floor((exp((n+2)/A000720(n+2))-1)/log(n+2))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A090485

/-- `floor((exp((n+2)/A000720(n+2))-1)/log(n+2))` -/
def P2937766613114808948.Spec : Prop :=
  ∀ n, P2937766613114808948.a n = A090485 (n + 2)

theorem P2937766613114808948.correct : P2937766613114808948.Spec := by
  intro n
  simp only [A090485, Nat.add_sub_cancel]

end A090485

/-!
# A090486: a(n) = Floor[(Pi/2)*(Exp[3+Prime[n]/n])/Log[n]].

The programs for A090486, the canonical program `A090486.P11871921011634796274` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090486 has offset 2).

The definition of A090486 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(π/2*exp(3+A000040(n+2)/(n+2))/log(n+2))` (program `A090486.P11871921011634796274`, by `A090486.P11871921011634796274.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090486.P11871921011634796274

`floor(π/2*exp(3+A000040(n+2)/(n+2))/log(n+2))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A090486

/-- `floor(π/2*exp(3+A000040(n+2)/(n+2))/log(n+2))` -/
def P11871921011634796274.Spec : Prop :=
  ∀ n, P11871921011634796274.a n = A090486 (n + 2)

theorem P11871921011634796274.correct : P11871921011634796274.Spec := by
  intro n
  simp only [A090486, Nat.add_sub_cancel]

end A090486

/-!
# A090487: a(n) = Floor[(Pi/2)*(Exp[3+n/PrimePi[n]])/Log[n]].

The programs for A090487, the canonical program `A090487.P5808457469149122639` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090487 has offset 2).

The definition of A090487 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(π/2*exp(3+(n+2)/A000720(n+2))/log(n+2))` (program `A090487.P5808457469149122639`, by `A090487.P5808457469149122639.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090487.P5808457469149122639

`floor(π/2*exp(3+(n+2)/A000720(n+2))/log(n+2))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A090487

/-- `floor(π/2*exp(3+(n+2)/A000720(n+2))/log(n+2))` -/
def P5808457469149122639.Spec : Prop :=
  ∀ n, P5808457469149122639.a n = A090487 (n + 2)

theorem P5808457469149122639.correct : P5808457469149122639.Spec := by
  intro n
  simp only [A090487, Nat.add_sub_cancel]

end A090487

/-!
# A090488: Decimal expansion of 2 + 2*sqrt(2).

The programs for A090488, there is no canonical definition to state claims against.
-/

/-! ## A090488.P16710270709850923627

`A010466(n)+A000038(n)`
-/

namespace A090488.P16710270709850923627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010466 (n + 1) + A000038 n

end

end A090488.P16710270709850923627

/-! ## A090488.P6742921225721505767

`A086178(n)+A000007(n)`
-/

namespace A090488.P6742921225721505767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086178 (n + 1) + A000007 n

end

end A090488.P6742921225721505767

/-! ## A090488.P18423520018556989720

`A156035(n)-A000007(n)`
-/

namespace A090488.P18423520018556989720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156035 (n + 1) - A000007 n

end

end A090488.P18423520018556989720

/-! ## A090488.P13441742055246835440

`A365823(n)-A000038(n)`
-/

namespace A090488.P13441742055246835440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365823 (n + 1) - A000038 n

end

end A090488.P13441742055246835440

/-! ## A090488.P4329488300469953674

`A156035(A000038(n)²+n)`
-/

namespace A090488.P4329488300469953674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156035 ((A000038 n ^ 2 + (n : ℤ)).toNat + 1)

end

end A090488.P4329488300469953674

/-! ## A090488.P12375940122462007720

`A010466(or(n, A000038(n)²))`
-/

namespace A090488.P12375940122462007720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010466 ((Int.lor (n : ℤ) (A000038 n ^ 2)).toNat + 1)

end

end A090488.P12375940122462007720

/-! ## A090488.P2381160665761753215

`A156035(or(n, A000038(n)²))`
-/

namespace A090488.P2381160665761753215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156035 ((Int.lor (n : ℤ) (A000038 n ^ 2)).toNat + 1)

end

end A090488.P2381160665761753215

/-! ## A090488.P14597641250646274824

`A010466(xor(n, A000038(n)²))`
-/

namespace A090488.P14597641250646274824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010466 ((Int.xor (n : ℤ) (A000038 n ^ 2)).toNat + 1)

end

end A090488.P14597641250646274824

/-! ## A090488.P3306672711573776318

`A156035(xor(n, A000038(n)²))`
-/

namespace A090488.P3306672711573776318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156035 ((Int.xor (n : ℤ) (A000038 n ^ 2)).toNat + 1)

end

end A090488.P3306672711573776318

/-! ## A090488.P11009052507268815460

`(A000007(n)+1)*A010466(n)`
-/

namespace A090488.P11009052507268815460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * A010466 (n + 1)

end

end A090488.P11009052507268815460

/-! ## A090488.P4765553448012186146

`A040000(n)+A156035(n)-2`
-/

namespace A090488.P4765553448012186146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n + (A156035 (n + 1) - 2)

end

end A090488.P4765553448012186146

/-! ## A090488.P7435221871818094273

`A156035(2*A000038(n)+n)`
-/

namespace A090488.P7435221871818094273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156035 ((2 * A000038 n + (n : ℤ)).toNat + 1)

end

end A090488.P7435221871818094273

/-! ## A090488.P4041653387145203497

`A156035(n)-A000038(n)/2`
-/

namespace A090488.P4041653387145203497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156035 (n + 1) : ℚ) - (A000038 n : ℚ) / 2

end

end A090488.P4041653387145203497

/-! ## A090488.P7234508460121645149

`A156035(n)-A000122(n)%2`
-/

namespace A090488.P7234508460121645149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156035 (n + 1) - Int.tmod (A000122 n) 2

end

end A090488.P7234508460121645149

/-! ## A090488.P3230232620956232900

`A010466(or(n, 2*A000038(n)))`
-/

namespace A090488.P3230232620956232900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010466 ((Int.lor (n : ℤ) (2 * A000038 n)).toNat + 1)

end

end A090488.P3230232620956232900

/-! ## A090488.P10571815565417212010

`A156035(or(n, 2*A000038(n)))`
-/

namespace A090488.P10571815565417212010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156035 ((Int.lor (n : ℤ) (2 * A000038 n)).toNat + 1)

end

end A090488.P10571815565417212010

/-! ## A090488.P14317015103941597764

`A010466(xor(n, 2*A000038(n)))`
-/

namespace A090488.P14317015103941597764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010466 ((Int.xor (n : ℤ) (2 * A000038 n)).toNat + 1)

end

end A090488.P14317015103941597764

/-! ## A090488.P1488320424531545032

`A156035(xor(n, 2*A000038(n)))`
-/

namespace A090488.P1488320424531545032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156035 ((Int.xor (n : ℤ) (2 * A000038 n)).toNat + 1)

end

end A090488.P1488320424531545032

/-! ## A090488.P9279085632480180428

`A156035(n)-A209229(2*n+1)`
-/

namespace A090488.P9279085632480180428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156035 (n + 1) - A209229 (2 * n + 1)

end

end A090488.P9279085632480180428

/-! ## A090488.P1367578733349717515

`A156035(n)-A089623(n+1)%2`
-/

namespace A090488.P1367578733349717515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156035 (n + 1) - Int.tmod (A089623 (n + 1)) 2

end

end A090488.P1367578733349717515

/-!
# A090490: For n > 1, a(n) is the least multiple of n that can be obtained by adding one digit to each end of a(n-1).

The programs for A090490, there is no canonical definition to state claims against.
-/

/-! ## A090490.P979688816255942302

`A185036((2-n)²)+A109241(n)`
-/

namespace A090490.P979688816255942302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185036 ((2 - (n : ℤ)) ^ 2).toNat + A109241 n

end

end A090490.P979688816255942302

/-!
# A090491: G.f.: (1+x^3+x^4+x^5+x^6+x^9)/((1-x)*(1-x^2)^2*(1-x^3)*(1-x^4)).

The programs for A090491, the canonical program `A090491.P862414221409097924` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090491 has offset 0).

The definition of A090491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090491.P862414221409097924

`ogf((1-x+x^2+x^4+x^6-x^7+x^8)/(1-2x+x^3+2x^5-2x^6-x^8+2x^10-x^11))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A090491

/-- `ogf((1-x+x^2+x^4+x^6-x^7+x^8)/(1-2x+x^3+2x^5-2x^6-x^8+2x^10-x^11))` -/
def P862414221409097924.Spec : Prop :=
  ∀ n, P862414221409097924.a n = A090491 n

theorem P862414221409097924.correct : P862414221409097924.Spec := by
  intro n
  simp only [A090491]

end A090491

/-! ## A090491.P1940977484404229344

`A052282(n)+∑[A026810(n)]`
-/

namespace A090491.P1940977484404229344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052282 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090491.P1940977484404229344

namespace A090491

/-- `A052282(n)+∑[A026810(n)]` -/
def P1940977484404229344.Spec : Prop :=
  ∀ n, P1940977484404229344.a n = A090491 n

end A090491

/-! ## A090491.P6764377807909883716

`A135304(∑[∑[A007318(3*n)]])`
-/

namespace A090491.P6764377807909883716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135304 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A090491.P6764377807909883716

namespace A090491

/-- `A135304(∑[∑[A007318(3*n)]])` -/
def P6764377807909883716.Spec : Prop :=
  ∀ n, P6764377807909883716.a n = A090491 n

end A090491

/-! ## A090491.P16874461005320489462

`A213075(n+4)-A289240(n+1)`
-/

namespace A090491.P16874461005320489462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213075 (n + 4) - A289240 (n + 1)

end

end A090491.P16874461005320489462

namespace A090491

/-- `A213075(n+4)-A289240(n+1)` -/
def P16874461005320489462.Spec : Prop :=
  ∀ n, P16874461005320489462.a n = A090491 n

end A090491

/-! ## A090491.P13294258082756403994

`A347498(A000041(n))+A002620(n)`
-/

namespace A090491.P13294258082756403994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347498 (A000041 n).toNat + A002620 n

end

end A090491.P13294258082756403994

namespace A090491

/-- `A347498(A000041(n))+A002620(n)` -/
def P13294258082756403994.Spec : Prop :=
  ∀ n, P13294258082756403994.a n = A090491 n

end A090491

/-!
# A090492: G.f.: (1+x^10)/((1-x^2)*(1-x^3)*(1-x^4)*(1-x^5)).

The programs for A090492, the canonical program `A090492.P5682503915740978560` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090492 has offset 0).

The definition of A090492 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090492.P5682503915740978560

`ogf((1-x^2+x^4-x^6+x^8)/(1-2x^2-x^3+x^4+x^5+x^7+x^8-x^9-2x^10+x^12))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A090492

/-- `ogf((1-x^2+x^4-x^6+x^8)/(1-2x^2-x^3+x^4+x^5+x^7+x^8-x^9-2x^10+x^12))` -/
def P5682503915740978560.Spec : Prop :=
  ∀ n, P5682503915740978560.a n = A090492 n

theorem P5682503915740978560.correct : P5682503915740978560.Spec := by
  intro n
  simp only [A090492]

end A090492

/-! ## A090492.P6811516297556313725

`∑[A008613(n)]-ceil(n/5)`
-/

namespace A090492.P6811516297556313725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌈(n : ℚ) / 5⌉

end

end A090492.P6811516297556313725

namespace A090492

/-- `∑[A008613(n)]-ceil(n/5)` -/
def P6811516297556313725.Spec : Prop :=
  ∀ n, P6811516297556313725.a n = A090492 n

end A090492

/-! ## A090492.P1254326373560866417

`A090223(n)+∑[A008613(n)]-n`
-/

namespace A090492.P1254326373560866417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n + (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A090492.P1254326373560866417

namespace A090492

/-- `A090223(n)+∑[A008613(n)]-n` -/
def P1254326373560866417.Spec : Prop :=
  ∀ n, P1254326373560866417.a n = A090492 n

end A090492

/-! ## A090492.P9988588912930464130

`A240870(n)+A000161(A022356(n)/2)`
-/

namespace A090492.P9988588912930464130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240870 n + A000161 (SequenceMachineLib.roundAway ((A022356 n : ℚ) / 2)).toNat

end

end A090492.P9988588912930464130

namespace A090492

/-- `A240870(n)+A000161(A022356(n)/2)` -/
def P9988588912930464130.Spec : Prop :=
  ∀ n, P9988588912930464130.a n = A090492 n

end A090492

/-! ## A090492.P13378669506771989290

`A029204((2*n-n%2)%A112263(n+1))`
-/

namespace A090492.P13378669506771989290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029204 (Int.tmod ((2 * n : ℤ) - ((n % 2 : ℕ) : ℤ)) (A112263 (n + 1))).toNat

end

end A090492.P13378669506771989290

namespace A090492

/-- `A029204((2*n-n%2)%A112263(n+1))` -/
def P13378669506771989290.Spec : Prop :=
  ∀ n, P13378669506771989290.a n = A090492 n

end A090492

/-!
# A090495: Numbers k such that numerator(Bernoulli(2*k)/(2*k)) is different from numerator(Bernoulli(2*k)/(2*k*(2*k-1))).

The programs for A090495, there is no canonical definition to state claims against.
-/

/-! ## A090495.P14382682190107259062

`ceil(A274297(n+1)/2)`
-/

namespace A090495.P14382682190107259062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A274297 (n + 1) : ℚ) / 2⌉

end

end A090495.P14382682190107259062

/-! ## A090495.P8911369782244761684

`A014682(A274297(n+1)+1)`
-/

namespace A090495.P8911369782244761684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A274297 (n + 1) + 1).toNat

end

end A090495.P8911369782244761684

/-! ## A090495.P11321914363517151913

`A273943(A274297(n+1)+1)`
-/

namespace A090495.P11321914363517151913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A274297 (n + 1) + 1).toNat

end

end A090495.P11321914363517151913

/-! ## A090495.P8156377099738459720

`(A274297(n+1)+A057427(n+3))/2`
-/

namespace A090495.P8156377099738459720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274297 (n + 1) + A057427 (n + 3) : ℚ) / 2

end

end A090495.P8156377099738459720

/-! ## A090495.P4084289891911478488

`(A274297(n+1)+1)/A321090(3*n)`
-/

namespace A090495.P4084289891911478488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274297 (n + 1) + 1 : ℚ) / (A321090 (3 * n) : ℚ)

end

end A090495.P4084289891911478488

/-!
# A090496: Ratio of numerator(Bernoulli(2*n)/(2*n)) to numerator(Bernoulli(2*n)/(2*n*(2*n-1))) for n's for which they are different.

The programs for A090496, there is no canonical definition to state claims against.
-/

/-! ## A090496.P9217499916099591764

`A090179(A074498(n+1))`
-/

namespace A090496.P9217499916099591764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090179 (A074498 (n + 1)).toNat

end

end A090496.P9217499916099591764

/-!
# A090498: Number of divisors of all the numbers from (1/2)n(n-1)+1 to n(n+1)/2, i.e., tau(1), tau(2)+tau(3), tau(4)+tau(5)+tau(6), tau(7)+tau(8)+tau(9)+tau(10), ..., where tau(j) is the number of divisors of j.

The programs for A090498, the canonical program `A090498.P16429585968713607720` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090498 has offset 1).

The definition of A090498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090498.P16429585968713607720

`Δ[A006218(∑[n])]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A090498

/-- `Δ[A006218(∑[n])]` -/
def P16429585968713607720.Spec : Prop :=
  ∀ n, P16429585968713607720.a n = A090498 (n + 1)

theorem P16429585968713607720.correct : P16429585968713607720.Spec := by
  intro n
  simp only [A090498, Nat.add_sub_cancel]

end A090498

/-! ## A090498.P9724245392012756226

`abs(Δ[A006218(C(n+1, 2))])`
-/

namespace A090498.P9724245392012756226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A090498.P9724245392012756226

namespace A090498

/-- `abs(Δ[A006218(C(n+1, 2))])` -/
def P9724245392012756226.Spec : Prop :=
  ∀ n, P9724245392012756226.a n = A090498 (n + 1)

end A090498

/-! ## A090498.P15355526754101279513

`abs(Δ[A006218((n²+n)/2)])`
-/

namespace A090498.P15355526754101279513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A090498.P15355526754101279513

namespace A090498

/-- `abs(Δ[A006218((n²+n)/2)])` -/
def P15355526754101279513.Spec : Prop :=
  ∀ n, P15355526754101279513.a n = A090498 (n + 1)

end A090498

/-! ## A090498.P1642167341617339128

`-Δ[-A006218(A000217(n))]`
-/

namespace A090498.P1642167341617339128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A006218 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A090498.P1642167341617339128

namespace A090498

/-- `-Δ[-A006218(A000217(n))]` -/
def P1642167341617339128.Spec : Prop :=
  ∀ n, P1642167341617339128.a n = A090498 (n + 1)

end A090498

/-! ## A090498.P1160833216369760498

`A000027(Δ[A006218(C(n+1, 2))])`
-/

namespace A090498.P1160833216369760498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A090498.P1160833216369760498

namespace A090498

/-- `A000027(Δ[A006218(C(n+1, 2))])` -/
def P1160833216369760498.Spec : Prop :=
  ∀ n, P1160833216369760498.a n = A090498 (n + 1)

end A090498

/-! ## A090498.P12138519175708933489

`A001281(2*Δ[A006218(C(n+1, 2))])`
-/

namespace A090498.P12138519175708933489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * (f1 (n + 1) - f1 n)).toNat

end

end A090498.P12138519175708933489

namespace A090498

/-- `A001281(2*Δ[A006218(C(n+1, 2))])` -/
def P12138519175708933489.Spec : Prop :=
  ∀ n, P12138519175708933489.a n = A090498 (n + 1)

end A090498

/-! ## A090498.P12577145513496871640

`A008458(Δ[A006218(C(n+1, 2))])/6`
-/

namespace A090498.P12577145513496871640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (Nat.choose (n + 1) 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 (f1 (n + 1) - f1 n).toNat : ℚ) / 6

end

end A090498.P12577145513496871640

namespace A090498

/-- `A008458(Δ[A006218(C(n+1, 2))])/6` -/
def P12577145513496871640.Spec : Prop :=
  ∀ n, P12577145513496871640.a n = (A090498 (n + 1) : ℚ)

end A090498

/-! ## A090498.P11229080876352277840

`Δ[A006218(C(n+1, 2))]*A057427(n+1)`
-/

namespace A090498.P11229080876352277840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A057427 (n + 1)

end

end A090498.P11229080876352277840

namespace A090498

/-- `Δ[A006218(C(n+1, 2))]*A057427(n+1)` -/
def P11229080876352277840.Spec : Prop :=
  ∀ n, P11229080876352277840.a n = A090498 (n + 1)

end A090498

/-! ## A090498.P10292327481262324033

`Δ[A006218(C(n+1, 2))]+A033487(n)%2`
-/

namespace A090498.P10292327481262324033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A033487 n) 2

end

end A090498.P10292327481262324033

namespace A090498

/-- `Δ[A006218(C(n+1, 2))]+A033487(n)%2` -/
def P10292327481262324033.Spec : Prop :=
  ∀ n, P10292327481262324033.a n = A090498 (n + 1)

end A090498

/-! ## A090498.P13221552853148426141

`A014963(6*(n+1))*Δ[A006218(C(n+1, 2))]`
-/

namespace A090498.P13221552853148426141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * (f1 (n + 1) - f1 n)

end

end A090498.P13221552853148426141

namespace A090498

/-- `A014963(6*(n+1))*Δ[A006218(C(n+1, 2))]` -/
def P13221552853148426141.Spec : Prop :=
  ∀ n, P13221552853148426141.a n = A090498 (n + 1)

end A090498

/-! ## A090498.P10165262461843825008

`Δ[A006218((n+1)*n/2)%A284382(n+1)]`
-/

namespace A090498.P10165262461843825008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006218 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n : ℚ) / 2))).toNat) (A284382 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090498.P10165262461843825008

namespace A090498

/-- `Δ[A006218((n+1)*n/2)%A284382(n+1)]` -/
def P10165262461843825008.Spec : Prop :=
  ∀ n, P10165262461843825008.a n = A090498 (n + 1)

end A090498

/-! ## A090498.P16811270077476864906

`Δ[A006218(C(n+1, 2))+A000005(((-1)^n)²)]`
-/

namespace A090498.P16811270077476864906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (Nat.choose (n + 1) 2) + A000005 (((-1) ^ n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090498.P16811270077476864906

namespace A090498

/-- `Δ[A006218(C(n+1, 2))+A000005(((-1)^n)²)]` -/
def P16811270077476864906.Spec : Prop :=
  ∀ n, P16811270077476864906.a n = A090498 (n + 1)

end A090498

/-! ## A090498.P3690858936661807966

`(-1)^(2*A007318(n))*Δ[A006218(C(n+1, 2))]`
-/

namespace A090498.P3690858936661807966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (Nat.choose (n + 1) 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (2 * A007318 n : ℤ) * (f1 (n + 1) - f1 n : ℚ)

end

end A090498.P3690858936661807966

namespace A090498

/-- `(-1)^(2*A007318(n))*Δ[A006218(C(n+1, 2))]` -/
def P3690858936661807966.Spec : Prop :=
  ∀ n, P3690858936661807966.a n = (A090498 (n + 1) : ℚ)

end A090498

/-! ## A090498.P12398140337404561143

`Δ[A006218(A000217(n))*A057427(n)]`
-/

namespace A090498.P12398140337404561143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A000217 n).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090498.P12398140337404561143

namespace A090498

/-- `Δ[A006218(A000217(n))*A057427(n)]` -/
def P12398140337404561143.Spec : Prop :=
  ∀ n, P12398140337404561143.a n = A090498 (n + 1)

end A090498

/-! ## A090498.P12255261855383083696

`Δ[A006218(A000217(n))]%A022004(n+1)`
-/

namespace A090498.P12255261855383083696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A022004 (n + 1))

end

end A090498.P12255261855383083696

namespace A090498

/-- `Δ[A006218(A000217(n))]%A022004(n+1)` -/
def P12255261855383083696.Spec : Prop :=
  ∀ n, P12255261855383083696.a n = A090498 (n + 1)

end A090498

/-! ## A090498.P6904279770204722384

`Δ[A006218(A000217(n))+A014963(6*(n+1))]`
-/

namespace A090498.P6904279770204722384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A000217 n).toNat + A014963 (6 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090498.P6904279770204722384

namespace A090498

/-- `Δ[A006218(A000217(n))+A014963(6*(n+1))]` -/
def P6904279770204722384.Spec : Prop :=
  ∀ n, P6904279770204722384.a n = A090498 (n + 1)

end A090498

/-! ## A090498.P1956230251629511169

`Δ[A006218(A000217(n))]*A349542(3*n+2)`
-/

namespace A090498.P1956230251629511169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A349542 (3 * n + 2)

end

end A090498.P1956230251629511169

namespace A090498

/-- `Δ[A006218(A000217(n))]*A349542(3*n+2)` -/
def P1956230251629511169.Spec : Prop :=
  ∀ n, P1956230251629511169.a n = A090498 (n + 1)

end A090498

/-! ## A090498.P12326944560316143828

`Δ[A054519(∑[n])]`
-/

namespace A090498.P12326944560316143828
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090498.P12326944560316143828

namespace A090498

/-- `Δ[A054519(∑[n])]` -/
def P12326944560316143828.Spec : Prop :=
  ∀ n, P12326944560316143828.a n = A090498 (n + 1)

theorem P12326944560316143828.correct : P12326944560316143828.Spec := by
  intro n
  simp only [A090498, Nat.add_sub_cancel, A090498.P12326944560316143828.f2, A090498.P12326944560316143828.f1, A090498.P12326944560316143828.a, A090498.P16429585968713607720.f2, A090498.P16429585968713607720.f1, A090498.P16429585968713607720.a, A006218, A006218.P9218434490128439557.a, A054519, A054519.P3292618312068876157.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A090498

/-! ## A090498.P1509988098384962393

`Δ[A006218(C(n+1, 2))]%A000040((n+1)²)`
-/

namespace A090498.P1509988098384962393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000040 ((n + 1) ^ 2))

end

end A090498.P1509988098384962393

namespace A090498

/-- `Δ[A006218(C(n+1, 2))]%A000040((n+1)²)` -/
def P1509988098384962393.Spec : Prop :=
  ∀ n, P1509988098384962393.a n = A090498 (n + 1)

end A090498

/-!
# A090499: Group the natural numbers so that the sum of the numbers of divisors of the members of the (n+1)th group exceeds that for the n-th group. Sequence contains the first term of each group.

The programs for A090499, there is no canonical definition to state claims against.
-/

/-! ## A090499.P7297064889252753040

`∑[A090501(round(acot(n)+n))]`
-/

namespace A090499.P7297064889252753040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090501 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090499.P7297064889252753040

/-! ## A090499.P4838911276308153195

`A090501(n)+a(n-1)` with `a(0)=1`
-/

namespace A090499.P4838911276308153195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090501 n + a (n - 1)

end

end A090499.P4838911276308153195

/-! ## A090499.P1958867672819676470

`∑[A090501(round(sqrt(n²+1)))]`
-/

namespace A090499.P1958867672819676470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090501 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090499.P1958867672819676470

/-! ## A090499.P635736372722576782

`∑[A090501(n+1)]+1-A090501(n+1)`
-/

namespace A090499.P635736372722576782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A090501 (n + 1))

end

end A090499.P635736372722576782

/-! ## A090499.P8293055647635335540

`∑[A118009(A117268(2*n+5))+A003056(n)]`
-/

namespace A090499.P8293055647635335540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118009 (A117268 (2 * n + 5)).toNat + A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090499.P8293055647635335540

