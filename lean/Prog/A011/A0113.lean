import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C013
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C003
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B005.C002
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C016
import Seq.Opaque.C017

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A011367: Expansion of (1-x^2-x^3)/(1-2*x-5*x^2-4*x^3-x^4).

The programs for A011367, the canonical program `A011367.P2244766399206227394` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011367 has offset 0).

The definition of A011367 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2-x^3)/(1-2x-5x^2-4x^3-x^4))` (program `A011367.P2244766399206227394`, by `A011367.P2244766399206227394.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011367.P2244766399206227394

`ogf((1-x^2-x^3)/(1-2x-5x^2-4x^3-x^4))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011367

/-- `ogf((1-x^2-x^3)/(1-2x-5x^2-4x^3-x^4))` -/
def P2244766399206227394.Spec : Prop :=
  ∀ n, P2244766399206227394.a n = A011367 n

theorem P2244766399206227394.correct : P2244766399206227394.Spec := by
  intro n
  simp only [A011367]

end A011367

/-! ## A011367.P12889069473251351583

`round(ϕ*(a(n-2)+2*a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A011367.P12889069473251351583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 2) + 2 * a (n - 1) : ℝ))

end

end A011367.P12889069473251351583

namespace A011367

/-- `round(ϕ*(a(n-2)+2*a(n-1)))` -/
def P12889069473251351583.Spec : Prop :=
  ∀ n, P12889069473251351583.a n = A011367 n

end A011367

/-! ## A011367.P11860649272570297735

`A110655(A221447(n+1)-n)`
-/

namespace A011367.P11860649272570297735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A221447 (n + 1) - (n : ℤ)).toNat

end

end A011367.P11860649272570297735

namespace A011367

/-- `A110655(A221447(n+1)-n)` -/
def P11860649272570297735.Spec : Prop :=
  ∀ n, P11860649272570297735.a n = A011367 n

end A011367

/-!
# A011371: a(n) = n minus (number of 1's in binary expansion of n). Also highest power of 2 dividing n!.

The programs for A011371, the canonical program `A011371.P8892659874704383252` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011371 has offset 0).

The definition of A011371 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011371.P8892659874704383252

`floor(n/2)+a(floor(n/2))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011371

/-- `floor(n/2)+a(floor(n/2))` -/
def P8892659874704383252.Spec : Prop :=
  ∀ n, P8892659874704383252.a n = A011371 n

theorem P8892659874704383252.correct : P8892659874704383252.Spec := by
  intro n
  simp only [A011371]

end A011371

/-! ## A011371.P12398255777927387864

`n-A000120(n)`
-/

namespace A011371.P12398255777927387864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000120 n

end

end A011371.P12398255777927387864

namespace A011371

/-- `n-A000120(n)` -/
def P12398255777927387864.Spec : Prop :=
  ∀ n, P12398255777927387864.a n = A011371 n

end A011371

/-! ## A011371.P15997377557937107321

`A005187(n)-n`
-/

namespace A011371.P15997377557937107321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - (n : ℤ)

end

end A011371.P15997377557937107321

namespace A011371

/-- `A005187(n)-n` -/
def P15997377557937107321.Spec : Prop :=
  ∀ n, P15997377557937107321.a n = A011371 n

end A011371

/-! ## A011371.P17452443470549305186

`val(n!, 2)`
-/

namespace A011371.P17452443470549305186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial n) 2

end

end A011371.P17452443470549305186

namespace A011371

/-- `val(n!, 2)` -/
def P17452443470549305186.Spec : Prop :=
  ∀ n, (P17452443470549305186.a n : ℤ) = A011371 n

end A011371

/-! ## A011371.P519459681760737708

`a(n-1)+val(n, 2)` with `a(0)=0`
-/

namespace A011371.P519459681760737708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation n 2

end

end A011371.P519459681760737708

namespace A011371

/-- `a(n-1)+val(n, 2)` -/
def P519459681760737708.Spec : Prop :=
  ∀ n, (P519459681760737708.a n : ℤ) = A011371 n

end A011371

/-! ## A011371.P18028148948212895209

`∑[val(round(sqrt(n²+1)), 2)]`
-/

namespace A011371.P18028148948212895209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011371.P18028148948212895209

namespace A011371

/-- `∑[val(round(sqrt(n²+1)), 2)]` -/
def P18028148948212895209.Spec : Prop :=
  ∀ n, (P18028148948212895209.a n : ℤ) = A011371 n

end A011371

/-! ## A011371.P950025868538106698

`∑[val(abs(1-n)+1, 2)]-1`
-/

namespace A011371.P950025868538106698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A011371.P950025868538106698

namespace A011371

/-- `∑[val(abs(1-n)+1, 2)]-1` -/
def P950025868538106698.Spec : Prop :=
  ∀ n, P950025868538106698.a n = A011371 n

end A011371

/-! ## A011371.P15376557958337765561

`∑[a(∑[n]%n)+1]-n` with `a(0)=0`
-/

namespace A011371.P15376557958337765561
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A011371.P15376557958337765561

namespace A011371

/-- `∑[a(∑[n]%n)+1]-n` -/
def P15376557958337765561.Spec : Prop :=
  ∀ n, P15376557958337765561.a n = A011371 n

end A011371

/-! ## A011371.P17415952924388179362

`∑[∏{e}[xor(n, -n), #]]-(n+1)`
-/

namespace A011371.P17415952924388179362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A011371.P17415952924388179362

namespace A011371

/-- `∑[∏{e}[xor(n, -n), #]]-(n+1)` -/
def P17415952924388179362.Spec : Prop :=
  ∀ n, P17415952924388179362.a n = A011371 n

end A011371

/-! ## A011371.P2260190910864224152

`∑[∏{e}[xor(n, -n), #]]-1-n`
-/

namespace A011371.P2260190910864224152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - (n : ℤ)

end

end A011371.P2260190910864224152

namespace A011371

/-- `∑[∏{e}[xor(n, -n), #]]-1-n` -/
def P2260190910864224152.Spec : Prop :=
  ∀ n, P2260190910864224152.a n = A011371 n

end A011371

/-! ## A011371.P8181447426749988759

`val(2*n, 2)-(1-a(n-1))` with `a(0)=0`
-/

namespace A011371.P8181447426749988759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (SequenceMachineLib.valuation (2 * n) 2 : ℤ) - (1 - a (n - 1))

end

end A011371.P8181447426749988759

namespace A011371

/-- `val(2*n, 2)-(1-a(n-1))` -/
def P8181447426749988759.Spec : Prop :=
  ∀ n, P8181447426749988759.a n = A011371 n

end A011371

/-! ## A011371.P4086560607858056287

`1-∑[1-∑{e}[or(n, -n), #]]+n`
-/

namespace A011371.P4086560607858056287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A011371.P4086560607858056287

namespace A011371

/-- `1-∑[1-∑{e}[or(n, -n), #]]+n` -/
def P4086560607858056287.Spec : Prop :=
  ∀ n, P4086560607858056287.a n = A011371 n

end A011371

/-! ## A011371.P3586870966264779269

`1-(∑[1-∑{e}[or(n, -n), #]]-n)`
-/

namespace A011371.P3586870966264779269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A011371.P3586870966264779269

namespace A011371

/-- `1-(∑[1-∑{e}[or(n, -n), #]]-n)` -/
def P3586870966264779269.Spec : Prop :=
  ∀ n, P3586870966264779269.a n = A011371 n

end A011371

/-! ## A011371.P17365509655525787991

`A227361(or(1, n))`
-/

namespace A011371.P17365509655525787991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227361 (Nat.lor 1 n)

end

end A011371.P17365509655525787991

namespace A011371

/-- `A227361(or(1, n))` -/
def P17365509655525787991.Spec : Prop :=
  ∀ n, P17365509655525787991.a n = A011371 n

end A011371

/-! ## A011371.P1026864145757775752

`A274716(or(1, n))`
-/

namespace A011371.P1026864145757775752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274716 (Nat.lor 1 n)

end

end A011371.P1026864145757775752

namespace A011371

/-- `A274716(or(1, n))` -/
def P1026864145757775752.Spec : Prop :=
  ∀ n, P1026864145757775752.a n = A011371 n

end A011371

/-! ## A011371.P12877497610494077822

`xor(n, A283997(n))`
-/

namespace A011371.P12877497610494077822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A283997 n)

end

end A011371.P12877497610494077822

namespace A011371

/-- `xor(n, A283997(n))` -/
def P12877497610494077822.Spec : Prop :=
  ∀ n, P12877497610494077822.a n = A011371 n

end A011371

/-! ## A011371.P2004412981471566966

`∑{d}[n, A297117(#)]`
-/

namespace A011371.P2004412981471566966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297117 d

end

end A011371.P2004412981471566966

namespace A011371

/-- `∑{d}[n, A297117(#)]` -/
def P2004412981471566966.Spec : Prop :=
  ∀ n, P2004412981471566966.a n = A011371 n

end A011371

/-! ## A011371.P7928991315612412661

`A005187(floor(n/2))`
-/

namespace A011371.P7928991315612412661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 ⌊(n : ℚ) / 2⌋.toNat

end

end A011371.P7928991315612412661

namespace A011371

/-- `A005187(floor(n/2))` -/
def P7928991315612412661.Spec : Prop :=
  ∀ n, P7928991315612412661.a n = A011371 n

end A011371

/-! ## A011371.P2025653525724803218

`A134467(n)-n²`
-/

namespace A011371.P2025653525724803218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134467 n - (n ^ 2 : ℤ)

end

end A011371.P2025653525724803218

namespace A011371

/-- `A134467(n)-n²` -/
def P2025653525724803218.Spec : Prop :=
  ∀ n, P2025653525724803218.a n = A011371 n

end A011371

/-!
# A011373: Number of 1's in binary expansion of Fibonacci(n).

The programs for A011373, the canonical program `A011373.P9885912058039155787` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011373 has offset 0).

The definition of A011373 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011373.P9885912058039155787

`A000120(A000045(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A011373

/-- `A000120(A000045(n))` -/
def P9885912058039155787.Spec : Prop :=
  ∀ n, P9885912058039155787.a n = A011373 n

theorem P9885912058039155787.correct : P9885912058039155787.Spec := by
  intro n
  simp only [A011373]

end A011373

/-! ## A011373.P9965431078090012333

`A350700(n)+A059016(n)`
-/

namespace A011373.P9965431078090012333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350700 n + A059016 n

end

end A011373.P9965431078090012333

namespace A011373

/-- `A350700(n)+A059016(n)` -/
def P9965431078090012333.Spec : Prop :=
  ∀ n, P9965431078090012333.a n = A011373 n

end A011373

/-! ## A011373.P15176054244581229598

`∑{digits}[A004691(n), A000120(#)]`
-/

namespace A011373.P15176054244581229598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000120 x).sum

end

end A011373.P15176054244581229598

namespace A011373

/-- `∑{digits}[A004691(n), A000120(#)]` -/
def P15176054244581229598.Spec : Prop :=
  ∀ n, P15176054244581229598.a n = A011373 n

end A011373

/-! ## A011373.P6793402685626099449

`∑{digits}[A004687(n), A000045(#)]`
-/

namespace A011373.P6793402685626099449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000045 x).sum

end

end A011373.P6793402685626099449

namespace A011373

/-- `∑{digits}[A004687(n), A000045(#)]` -/
def P6793402685626099449.Spec : Prop :=
  ∀ n, P6793402685626099449.a n = A011373 n

end A011373

/-! ## A011373.P11654402401215975730

`∑{digits}[A004687(n), A004686(#)]`
-/

namespace A011373.P11654402401215975730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A004686 x).sum

end

end A011373.P11654402401215975730

namespace A011373

/-- `∑{digits}[A004687(n), A004686(#)]` -/
def P11654402401215975730.Spec : Prop :=
  ∀ n, P11654402401215975730.a n = A011373 n

end A011373

/-! ## A011373.P18091979988857510650

`∑{digits}[A004687(n), A004687(#)]`
-/

namespace A011373.P18091979988857510650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A004687 x).sum

end

end A011373.P18091979988857510650

namespace A011373

/-- `∑{digits}[A004687(n), A004687(#)]` -/
def P18091979988857510650.Spec : Prop :=
  ∀ n, P18091979988857510650.a n = A011373 n

end A011373

/-! ## A011373.P8794806461642995239

`∑{digits}[A004685(n), #]`
-/

namespace A011373.P8794806461642995239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004685 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A011373.P8794806461642995239

namespace A011373

/-- `∑{digits}[A004685(n), #]` -/
def P8794806461642995239.Spec : Prop :=
  ∀ n, (P8794806461642995239.a n : ℤ) = A011373 n

end A011373

/-!
# A011375: Number of decimal digits in the n-th term of A006960.

The programs for A011375, there is no canonical definition to state claims against.
-/

/-! ## A011375.P1399501898608462090

`∑{digits}[A006960(n), A063065(#)]`
-/

namespace A011375.P1399501898608462090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A063065 x).sum

end

end A011375.P1399501898608462090

/-! ## A011375.P955197814085330128

`∑{digits}[A006960(n), A067032(#)]`
-/

namespace A011375.P955197814085330128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A067032 x).sum

end

end A011375.P955197814085330128

/-! ## A011375.P7666101628302474831

`∑{digits}[A006960(n), A213217(#)]`
-/

namespace A011375.P7666101628302474831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A213217 x).sum

end

end A011375.P7666101628302474831

/-! ## A011375.P3836469969051042998

`∑{digits}[A006960(n), A260340(#)]`
-/

namespace A011375.P3836469969051042998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A260340 x).sum

end

end A011375.P3836469969051042998

/-! ## A011375.P11306444319780417452

`∑{digits}[A277338(n), A260340(#)]`
-/

namespace A011375.P11306444319780417452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277338 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A260340 x).sum

end

end A011375.P11306444319780417452

/-! ## A011375.P1905433837685833723

`∑{digits}[A006960(n), A033665(#)+1]`
-/

namespace A011375.P1905433837685833723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A033665 x + 1).sum

end

end A011375.P1905433837685833723

/-! ## A011375.P10444225312440902562

`∑{digits}[A006960(n), A064834(#)+1]`
-/

namespace A011375.P10444225312440902562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A064834 x + 1).sum

end

end A011375.P10444225312440902562

/-! ## A011375.P6118074896098595002

`∑{digits}[A006960(n), gcd(3, A006960(#))]`
-/

namespace A011375.P6118074896098595002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Int.gcd 3 (A006960 x)).sum

end

end A011375.P6118074896098595002

/-! ## A011375.P11695926179344897505

`∑{digits}[A006960(n), A001222(or(5, #))]`
-/

namespace A011375.P11695926179344897505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001222 (Nat.lor 5 x)).sum

end

end A011375.P11695926179344897505

/-! ## A011375.P12567537036374740420

`∑{digits}[A006960(n), A033866(A033665(#))]`
-/

namespace A011375.P12567537036374740420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A033866 (A033665 x).toNat).sum

end

end A011375.P12567537036374740420

/-!
# A011377: Expansion of 1/((1-x)*(1-2*x)*(1-x^2)).

The programs for A011377, the canonical program `A011377.P14299930839064781988` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011377 has offset 0).

The definition of A011377 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+x^2+3x^3-2x^4))` (program `A011377.P14299930839064781988`, by `A011377.P14299930839064781988.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011377.P14299930839064781988

`ogf(1/(1-3x+x^2+3x^3-2x^4))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011377

/-- `ogf(1/(1-3x+x^2+3x^3-2x^4))` -/
def P14299930839064781988.Spec : Prop :=
  ∀ n, P14299930839064781988.a n = A011377 n

theorem P14299930839064781988.correct : P14299930839064781988.Spec := by
  intro n
  simp only [A011377]

end A011377

/-! ## A011377.P3841613813674088245

`3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=18`
-/

namespace A011377.P3841613813674088245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 8, 18] fun n a =>
  3 * a (n - 1) - a (n - 2) - 3 * a (n - 3) + 2 * a (n - 4)

end

end A011377.P3841613813674088245

namespace A011377

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` -/
def P3841613813674088245.Spec : Prop :=
  ∀ n, P3841613813674088245.a n = A011377 n

end A011377

/-! ## A011377.P18404725372564779860

`floor((2^(n+4)-3*n-6)/6)`
-/

namespace A011377.P18404725372564779860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 ^ (n + 4) : ℤ) - (3 * n : ℤ) - 6 : ℚ) / 6⌋

end

end A011377.P18404725372564779860

namespace A011377

/-- `floor((2^(n+4)-3*n-6)/6)` -/
def P18404725372564779860.Spec : Prop :=
  ∀ n, P18404725372564779860.a n = A011377 n

end A011377

/-! ## A011377.P12073866169080618165

`∑[2^n]+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A011377.P12073866169080618165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A011377.P12073866169080618165

namespace A011377

/-- `∑[2^n]+a(n-2)` -/
def P12073866169080618165.Spec : Prop :=
  ∀ n, (P12073866169080618165.a n : ℤ) = A011377 n

end A011377

/-! ## A011377.P14880120855729789526

`∑[char[2*n]]+2*a(n-1)` with `a(0)=1`
-/

namespace A011377.P14880120855729789526
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a (n - 1)

end

end A011377.P14880120855729789526

namespace A011377

/-- `∑[char[2*n]]+2*a(n-1)` -/
def P14880120855729789526.Spec : Prop :=
  ∀ n, (P14880120855729789526.a n : ℤ) = A011377 n

end A011377

/-! ## A011377.P2554126360297628110

`2^(n+1)+a(n-2)-1` with `a(0)=1, a(1)=3`
-/

namespace A011377.P2554126360297628110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (2 ^ (n + 1) : ℤ) + (a (n - 2) - 1)

end

end A011377.P2554126360297628110

namespace A011377

/-- `2^(n+1)+a(n-2)-1` -/
def P2554126360297628110.Spec : Prop :=
  ∀ n, P2554126360297628110.a n = A011377 n

end A011377

/-! ## A011377.P5288180046354826954

`floor(n/2+2*a(n-1))+1` with `a(0)=1`
-/

namespace A011377.P5288180046354826954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℚ) / 2 + (2 * a (n - 1) : ℚ)⌋ + 1

end

end A011377.P5288180046354826954

namespace A011377

/-- `floor(n/2+2*a(n-1))+1` -/
def P5288180046354826954.Spec : Prop :=
  ∀ n, P5288180046354826954.a n = A011377 n

end A011377

/-! ## A011377.P6814837368783952855

`1-floor((1-n)/2-2*a(n-1))` with `a(0)=1`
-/

namespace A011377.P6814837368783952855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ⌊(1 - (n : ℤ) : ℚ) / 2 - (2 * a (n - 1) : ℚ)⌋

end

end A011377.P6814837368783952855

namespace A011377

/-- `1-floor((1-n)/2-2*a(n-1))` -/
def P6814837368783952855.Spec : Prop :=
  ∀ n, P6814837368783952855.a n = A011377 n

end A011377

/-! ## A011377.P1309587631459642849

`2*a(n-2)+a(n-1)+1+n` with `a(0)=1, a(1)=3`
-/

namespace A011377.P1309587631459642849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 2) + (a (n - 1) + 1 + n)

end

end A011377.P1309587631459642849

namespace A011377

/-- `2*a(n-2)+a(n-1)+1+n` -/
def P1309587631459642849.Spec : Prop :=
  ∀ n, (P1309587631459642849.a n : ℤ) = A011377 n

end A011377

/-! ## A011377.P1109128419415307770

`a(n-1)+floor(a(n-1)+(n+2)/2)` with `a(0)=1`
-/

namespace A011377.P1109128419415307770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌊(a (n - 1) : ℚ) + (n + 2 : ℚ) / 2⌋

end

end A011377.P1109128419415307770

namespace A011377

/-- `a(n-1)+floor(a(n-1)+(n+2)/2)` -/
def P1109128419415307770.Spec : Prop :=
  ∀ n, P1109128419415307770.a n = A011377 n

end A011377

/-! ## A011377.P15779860333641648547

`a(n-1)+∑[1-a(n-1)]+a(n-1)` with `a(0)=1`
-/

namespace A011377.P15779860333641648547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A011377.P15779860333641648547

namespace A011377

/-- `a(n-1)+∑[1-a(n-1)]+a(n-1)` -/
def P15779860333641648547.Spec : Prop :=
  ∀ n, P15779860333641648547.a n = A011377 n

end A011377

/-! ## A011377.P1410997095877877870

`1-floor((1-n)/2-a(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A011377.P1410997095877877870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ⌊(1 - (n : ℤ) : ℚ) / 2 - (a (n - 1) : ℚ) - (a (n - 1) : ℚ)⌋

end

end A011377.P1410997095877877870

namespace A011377

/-- `1-floor((1-n)/2-a(n-1)-a(n-1))` -/
def P1410997095877877870.Spec : Prop :=
  ∀ n, P1410997095877877870.a n = A011377 n

end A011377

/-! ## A011377.P7723249668984674891

`a(n-1)+a(n-2)+1+a(n-2)+n` with `a(0)=1, a(1)=3`
-/

namespace A011377.P7723249668984674891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (a (n - 2) + 1 + (a (n - 2) + n))

end

end A011377.P7723249668984674891

namespace A011377

/-- `a(n-1)+a(n-2)+1+a(n-2)+n` -/
def P7723249668984674891.Spec : Prop :=
  ∀ n, (P7723249668984674891.a n : ℤ) = A011377 n

end A011377

/-! ## A011377.P6303255447023759843

`A178420(n+2)`
-/

namespace A011377.P6303255447023759843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178420 (n + 2)

end

end A011377.P6303255447023759843

namespace A011377

/-- `A178420(n+2)` -/
def P6303255447023759843.Spec : Prop :=
  ∀ n, P6303255447023759843.a n = A011377 n

end A011377

/-! ## A011377.P13602004454475165621

`∑[A000975(n+1)]`
-/

namespace A011377.P13602004454475165621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011377.P13602004454475165621

namespace A011377

/-- `∑[A000975(n+1)]` -/
def P13602004454475165621.Spec : Prop :=
  ∀ n, P13602004454475165621.a n = A011377 n

end A011377

/-! ## A011377.P1802523017909083724

`∑[A084639(n)+1]`
-/

namespace A011377.P1802523017909083724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084639 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011377.P1802523017909083724

namespace A011377

/-- `∑[A084639(n)+1]` -/
def P1802523017909083724.Spec : Prop :=
  ∀ n, P1802523017909083724.a n = A011377 n

end A011377

/-! ## A011377.P14036003364534278303

`∑[A287744(2*n)]`
-/

namespace A011377.P14036003364534278303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287744 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011377.P14036003364534278303

namespace A011377

/-- `∑[A287744(2*n)]` -/
def P14036003364534278303.Spec : Prop :=
  ∀ n, P14036003364534278303.a n = A011377 n

end A011377

/-! ## A011377.P4345060331136727690

`A084172(n+1)-1`
-/

namespace A011377.P4345060331136727690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084172 (n + 1) - 1

end

end A011377.P4345060331136727690

namespace A011377

/-- `A084172(n+1)-1` -/
def P4345060331136727690.Spec : Prop :=
  ∀ n, P4345060331136727690.a n = A011377 n

end A011377

/-! ## A011377.P15773685435246170309

`∑[∑[A001045(n+1)]]`
-/

namespace A011377.P15773685435246170309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011377.P15773685435246170309

namespace A011377

/-- `∑[∑[A001045(n+1)]]` -/
def P15773685435246170309.Spec : Prop :=
  ∀ n, P15773685435246170309.a n = A011377 n

end A011377

/-! ## A011377.P1597122889887280224

`∑[∑[A152046(n+1)]]`
-/

namespace A011377.P1597122889887280224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011377.P1597122889887280224

namespace A011377

/-- `∑[∑[A152046(n+1)]]` -/
def P1597122889887280224.Spec : Prop :=
  ∀ n, P1597122889887280224.a n = A011377 n

end A011377

/-!
# A011379: a(n) = n^2*(n+1).

The programs for A011379, the canonical program `A011379.P13170028565952122956` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011379 has offset 0).

The definition of A011379 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n+1)` (program `A011379.P13170028565952122956`, by `A011379.P13170028565952122956.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011379.P13170028565952122956

`n²*(n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A011379

/-- `n²*(n+1)` -/
def P13170028565952122956.Spec : Prop :=
  ∀ n, (P13170028565952122956.a n : ℤ) = A011379 n

theorem P13170028565952122956.correct : P13170028565952122956.Spec := by
  intro n
  simp only [A011379]

end A011379

/-! ## A011379.P861770622978246300

`A000578(n)+A000290(n)`
-/

namespace A011379.P861770622978246300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + A000290 n

end

end A011379.P861770622978246300

namespace A011379

/-- `A000578(n)+A000290(n)` -/
def P861770622978246300.Spec : Prop :=
  ∀ n, P861770622978246300.a n = A011379 n

theorem P861770622978246300.correct : P861770622978246300.Spec := by
  intro n
  simp only [A011379, Nat.add_sub_cancel, A011379.P861770622978246300.a, A011379.P13170028565952122956.a, A000290, A000290.P12206242496348924484.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A011379

/-! ## A011379.P14463787924352526159

`A000292(n)+A002413(n)`
-/

namespace A011379.P14463787924352526159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + A002413 n

end

end A011379.P14463787924352526159

namespace A011379

/-- `A000292(n)+A002413(n)` -/
def P14463787924352526159.Spec : Prop :=
  ∀ n, P14463787924352526159.a n = A011379 n

end A011379

/-! ## A011379.P2359697518340425409

`A000330(n)+A002412(n)`
-/

namespace A011379.P2359697518340425409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n + A002412 n

end

end A011379.P2359697518340425409

namespace A011379

/-- `A000330(n)+A002412(n)` -/
def P2359697518340425409.Spec : Prop :=
  ∀ n, P2359697518340425409.a n = A011379 n

end A011379

/-! ## A011379.P13811717990733816529

`lcm(n+1, n²)`
-/

namespace A011379.P13811717990733816529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (n ^ 2)

end

end A011379.P13811717990733816529

namespace A011379

/-- `lcm(n+1, n²)` -/
def P13811717990733816529.Spec : Prop :=
  ∀ n, (P13811717990733816529.a n : ℤ) = A011379 n

end A011379

/-! ## A011379.P5256970248027285415

`abs(n²*xor(n, -1))`
-/

namespace A011379.P5256970248027285415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * Int.xor (n : ℤ) (-1)|

end

end A011379.P5256970248027285415

namespace A011379

/-- `abs(n²*xor(n, -1))` -/
def P5256970248027285415.Spec : Prop :=
  ∀ n, P5256970248027285415.a n = A011379 n

end A011379

/-! ## A011379.P1784093489692789977

`-(n²*xor(n, -1))`
-/

namespace A011379.P1784093489692789977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n ^ 2 : ℤ) * Int.xor (n : ℤ) (-1))

end

end A011379.P1784093489692789977

namespace A011379

/-- `-(n²*xor(n, -1))` -/
def P1784093489692789977.Spec : Prop :=
  ∀ n, P1784093489692789977.a n = A011379 n

end A011379

/-! ## A011379.P16746666739673366484

`∑[lcm(n, 1-3*n)]`
-/

namespace A011379.P16746666739673366484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (1 - (3 * n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011379.P16746666739673366484

namespace A011379

/-- `∑[lcm(n, 1-3*n)]` -/
def P16746666739673366484.Spec : Prop :=
  ∀ n, (P16746666739673366484.a n : ℤ) = A011379 n

end A011379

/-! ## A011379.P10170669848695495717

`Δ[C(n, 2)²]+n²`
-/

namespace A011379.P10170669848695495717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n ^ 2 : ℤ)

end

end A011379.P10170669848695495717

namespace A011379

/-- `Δ[C(n, 2)²]+n²` -/
def P10170669848695495717.Spec : Prop :=
  ∀ n, P10170669848695495717.a n = A011379 n

theorem P10170669848695495717.correct : P10170669848695495717.Spec := by
  intro n
  simp only [A011379, Nat.add_sub_cancel, A011379.P10170669848695495717.f1, A011379.P10170669848695495717.a, A011379.P13170028565952122956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A011379

/-! ## A011379.P11697437418792561182

`floor((n+1)/acot(n²))`
-/

namespace A011379.P11697437418792561182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / SequenceMachineLib.acot (n ^ 2 : ℝ)⌋

end

end A011379.P11697437418792561182

namespace A011379

/-- `floor((n+1)/acot(n²))` -/
def P11697437418792561182.Spec : Prop :=
  ∀ n, P11697437418792561182.a n = A011379 n

end A011379

/-! ## A011379.P13608061393219000147

`floor(2*n/acot(∑[n]))`
-/

namespace A011379.P13608061393219000147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))⌋

end

end A011379.P13608061393219000147

namespace A011379

/-- `floor(2*n/acot(∑[n]))` -/
def P13608061393219000147.Spec : Prop :=
  ∀ n, P13608061393219000147.a n = A011379 n

end A011379

/-! ## A011379.P12201519171696997066

`round(n/acot(∑[2*n]))`
-/

namespace A011379.P12201519171696997066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A011379.P12201519171696997066

namespace A011379

/-- `round(n/acot(∑[2*n]))` -/
def P12201519171696997066.Spec : Prop :=
  ∀ n, P12201519171696997066.a n = A011379 n

end A011379

/-! ## A011379.P4660891837293293104

`n^acos(cos(3))+n²`
-/

namespace A011379.P4660891837293293104
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ (Real.arccos (Real.cos (3 : ℝ))) + (n ^ 2 : ℝ)

end

end A011379.P4660891837293293104

namespace A011379

/-- `n^acos(cos(3))+n²` -/
def P4660891837293293104.Spec : Prop :=
  ∀ n, P4660891837293293104.a n = (A011379 n : ℝ)

end A011379

/-! ## A011379.P8617633872745101495

`n²/tan(acot(n+1))`
-/

namespace A011379.P8617633872745101495
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℝ) / Real.tan (SequenceMachineLib.acot (n + 1 : ℝ))

end

end A011379.P8617633872745101495

namespace A011379

/-- `n²/tan(acot(n+1))` -/
def P8617633872745101495.Spec : Prop :=
  ∀ n, P8617633872745101495.a n = (A011379 n : ℝ)

end A011379

/-! ## A011379.P2492181144934429019

`n²/cot(atan(n+1))`
-/

namespace A011379.P2492181144934429019
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℝ) / Real.cot (Real.arctan (n + 1 : ℝ))

end

end A011379.P2492181144934429019

namespace A011379

/-- `n²/cot(atan(n+1))` -/
def P2492181144934429019.Spec : Prop :=
  ∀ n, P2492181144934429019.a n = (A011379 n : ℝ)

end A011379

/-! ## A011379.P883180313692432139

`and(2*n*∑[n], -2)`
-/

namespace A011379.P883180313692432139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 * n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) (-2)

end

end A011379.P883180313692432139

namespace A011379

/-- `and(2*n*∑[n], -2)` -/
def P883180313692432139.Spec : Prop :=
  ∀ n, P883180313692432139.a n = A011379 n

end A011379

/-! ## A011379.P2681575501858997899

`∑[2*C(3*n, 2)]/3`
-/

namespace A011379.P2681575501858997899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (3 * n) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3

end

end A011379.P2681575501858997899

namespace A011379

/-- `∑[2*C(3*n, 2)]/3` -/
def P2681575501858997899.Spec : Prop :=
  ∀ n, P2681575501858997899.a n = (A011379 n : ℚ)

end A011379

/-! ## A011379.P471950567621552129

`∑[∑[a(n-1)+6]]` with `a(0)=0, a(1)=2`
-/

namespace A011379.P471950567621552129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011379.P471950567621552129

namespace A011379

/-- `∑[∑[a(n-1)+6]]` -/
def P471950567621552129.Spec : Prop :=
  ∀ n, (P471950567621552129.a n : ℤ) = A011379 n

end A011379

/-! ## A011379.P18063573984970550502

`xor(1, 2*n*∑[n]+1)`
-/

namespace A011379.P18063573984970550502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A011379.P18063573984970550502

namespace A011379

/-- `xor(1, 2*n*∑[n]+1)` -/
def P18063573984970550502.Spec : Prop :=
  ∀ n, (P18063573984970550502.a n : ℤ) = A011379 n

end A011379

/-! ## A011379.P13795850942731528887

`or(1, 2*n*∑[n])-1`
-/

namespace A011379.P13795850942731528887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 * n * (∑ j ∈ Finset.range (n + 1), f1 j)) : ℤ) - 1

end

end A011379.P13795850942731528887

namespace A011379

/-- `or(1, 2*n*∑[n])-1` -/
def P13795850942731528887.Spec : Prop :=
  ∀ n, P13795850942731528887.a n = A011379 n

end A011379

