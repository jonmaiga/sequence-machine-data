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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A255200: Numbers n such that triangular numbers T(n), T(n+1) and T(n+2) are 3-almost primes.

The programs for A255200, there is no canonical definition to state claims against.
-/

/-! ## A255200.P9085419771720411922

`floor(sqrt(2*A349696(n+1)))`
-/

namespace A255200.P9085419771720411922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A349696 (n + 1))

end

end A255200.P9085419771720411922

/-! ## A255200.P10342932586709380517

`ceil(A033999(2*n+1)+sqrt(2*A349696(n+1)))`
-/

namespace A255200.P10342932586709380517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033999 (2 * n + 1) : ℝ) + Real.sqrt (2 * A349696 (n + 1) : ℝ)⌉

end

end A255200.P10342932586709380517

/-! ## A255200.P1058566670987530248

`round(sqrt(2*A349696(n+1)))%A249703(n+1)`
-/

namespace A255200.P1058566670987530248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A349696 (n + 1) : ℝ))) (A249703 (n + 1))

end

end A255200.P1058566670987530248

/-! ## A255200.P17602335121398078785

`A000027(round(sqrt(2*A349696(n+1))))`
-/

namespace A255200.P17602335121398078785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (2 * A349696 (n + 1) : ℝ))).toNat

end

end A255200.P17602335121398078785

/-!
# A255201: Number of prime factors of n^2.

The programs for A255201, the canonical program `A255201.P10260826747868353202` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255201 has offset 1).

The definition of A255201 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255201.P10260826747868353202

`2*A001222(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A255201

/-- `2*A001222(n+1)` -/
def P10260826747868353202.Spec : Prop :=
  ∀ n, P10260826747868353202.a n = A255201 (n + 1)

theorem P10260826747868353202.correct : P10260826747868353202.Spec := by
  intro n
  simp only [A255201, Nat.add_sub_cancel]

end A255201

/-! ## A255201.P18155480596205490661

`A001222((n+1)²)`
-/

namespace A255201.P18155480596205490661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1) ^ 2)

end

end A255201.P18155480596205490661

namespace A255201

/-- `A001222((n+1)²)` -/
def P18155480596205490661.Spec : Prop :=
  ∀ n, P18155480596205490661.a n = A255201 (n + 1)

end A255201

/-! ## A255201.P14643069582101523613

`2*∑{e}[n+1, #]`
-/

namespace A255201.P14643069582101523613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A255201.P14643069582101523613

namespace A255201

/-- `2*∑{e}[n+1, #]` -/
def P14643069582101523613.Spec : Prop :=
  ∀ n, (P14643069582101523613.a n : ℤ) = A255201 (n + 1)

theorem P14643069582101523613.correct : P14643069582101523613.Spec := by
  intro n
  simp only [A255201, Nat.add_sub_cancel, A255201.P14643069582101523613.f1, A255201.P14643069582101523613.a, A255201.P10260826747868353202.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255201

/-! ## A255201.P6948697272186341277

`log2(∏{e}[n+1, 4^#])`
-/

namespace A255201.P6948697272186341277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), 4 ^ Nat.factorization (f1 n) p : ℕ) : ℝ)

end

end A255201.P6948697272186341277

namespace A255201

/-- `log2(∏{e}[n+1, 4^#])` -/
def P6948697272186341277.Spec : Prop :=
  ∀ n, P6948697272186341277.a n = (A255201 (n + 1) : ℝ)

end A255201

/-! ## A255201.P3763436746241640820

`log(∏{e}[n+1, exp(#)²])`
-/

namespace A255201.P3763436746241640820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (∏ p ∈ Nat.primeFactors (f1 n), Real.exp (Nat.factorization (f1 n) p : ℝ) ^ 2)

end

end A255201.P3763436746241640820

namespace A255201

/-- `log(∏{e}[n+1, exp(#)²])` -/
def P3763436746241640820.Spec : Prop :=
  ∀ n, P3763436746241640820.a n = (A255201 (n + 1) : ℝ)

end A255201

/-! ## A255201.P3712971272393360313

`val(4^∑{e}[n+1, #], 2)`
-/

namespace A255201.P3712971272393360313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (4 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) 2

end

end A255201.P3712971272393360313

namespace A255201

/-- `val(4^∑{e}[n+1, #], 2)` -/
def P3712971272393360313.Spec : Prop :=
  ∀ n, (P3712971272393360313.a n : ℤ) = A255201 (n + 1)

end A255201

/-! ## A255201.P14175747519602452388

`val(∏{e}[n+1, 4^#], 2)`
-/

namespace A255201.P14175747519602452388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), 4 ^ Nat.factorization (f1 n) p) 2

end

end A255201.P14175747519602452388

namespace A255201

/-- `val(∏{e}[n+1, 4^#], 2)` -/
def P14175747519602452388.Spec : Prop :=
  ∀ n, (P14175747519602452388.a n : ℤ) = A255201 (n + 1)

end A255201

/-! ## A255201.P16731597962248231238

`∑{e}[n+1, #]/sqrt(1/4)`
-/

namespace A255201.P16731597962248231238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A255201.P16731597962248231238

namespace A255201

/-- `∑{e}[n+1, #]/sqrt(1/4)` -/
def P16731597962248231238.Spec : Prop :=
  ∀ n, P16731597962248231238.a n = (A255201 (n + 1) : ℝ)

theorem P16731597962248231238.correct : P16731597962248231238.Spec := by
  intro n
  simp only [A255201, Nat.add_sub_cancel, A255201.P16731597962248231238.f1, A255201.P16731597962248231238.a, A255201.P10260826747868353202.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A255201

/-! ## A255201.P8728491695637174579

`∑{p}[n+1, val((n+1)², #)]`
-/

namespace A255201.P8728491695637174579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation ((n + 1) ^ 2) p

end

end A255201.P8728491695637174579

namespace A255201

/-- `∑{p}[n+1, val((n+1)², #)]` -/
def P8728491695637174579.Spec : Prop :=
  ∀ n, (P8728491695637174579.a n : ℤ) = A255201 (n + 1)

end A255201

/-! ## A255201.P1103336994590689289

`2*∑{p}[n+1, val(n+1, #)]`
-/

namespace A255201.P1103336994590689289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p)

end

end A255201.P1103336994590689289

namespace A255201

/-- `2*∑{p}[n+1, val(n+1, #)]` -/
def P1103336994590689289.Spec : Prop :=
  ∀ n, (P1103336994590689289.a n : ℤ) = A255201 (n + 1)

end A255201

/-! ## A255201.P12116188473857299528

`log2(A165825(n+1))`
-/

namespace A255201.P12116188473857299528
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A165825 (n + 1) : ℝ)

end

end A255201.P12116188473857299528

namespace A255201

/-- `log2(A165825(n+1))` -/
def P12116188473857299528.Spec : Prop :=
  ∀ n, P12116188473857299528.a n = (A255201 (n + 1) : ℝ)

end A255201

/-! ## A255201.P370070637147072539

`Δ[2*A022559(n)]`
-/

namespace A255201.P370070637147072539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255201.P370070637147072539

namespace A255201

/-- `Δ[2*A022559(n)]` -/
def P370070637147072539.Spec : Prop :=
  ∀ n, P370070637147072539.a n = A255201 (n + 1)

end A255201

/-! ## A255201.P4387325317535044091

`val(A165833(n+1), 2)`
-/

namespace A255201.P4387325317535044091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165833 (n + 1)).toNat 2

end

end A255201.P4387325317535044091

namespace A255201

/-- `val(A165833(n+1), 2)` -/
def P4387325317535044091.Spec : Prop :=
  ∀ n, (P4387325317535044091.a n : ℤ) = A255201 (n + 1)

end A255201

/-! ## A255201.P15706918077107196583

`val(A165841(n+1), 2)`
-/

namespace A255201.P15706918077107196583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165841 (n + 1)).toNat 2

end

end A255201.P15706918077107196583

namespace A255201

/-- `val(A165841(n+1), 2)` -/
def P15706918077107196583.Spec : Prop :=
  ∀ n, (P15706918077107196583.a n : ℤ) = A255201 (n + 1)

end A255201

/-! ## A255201.P18129835609941374955

`val(A165849(n+1), 2)`
-/

namespace A255201.P18129835609941374955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165849 (n + 1)).toNat 2

end

end A255201.P18129835609941374955

namespace A255201

/-- `val(A165849(n+1), 2)` -/
def P18129835609941374955.Spec : Prop :=
  ∀ n, (P18129835609941374955.a n : ℤ) = A255201 (n + 1)

end A255201

/-! ## A255201.P8365163047106368672

`val(A165857(n+1), 2)`
-/

namespace A255201.P8365163047106368672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165857 (n + 1)).toNat 2

end

end A255201.P8365163047106368672

namespace A255201

/-- `val(A165857(n+1), 2)` -/
def P8365163047106368672.Spec : Prop :=
  ∀ n, (P8365163047106368672.a n : ℤ) = A255201 (n + 1)

end A255201

/-! ## A255201.P2391810194214048051

`val(A165865(n+1), 2)`
-/

namespace A255201.P2391810194214048051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165865 (n + 1)).toNat 2

end

end A255201.P2391810194214048051

namespace A255201

/-- `val(A165865(n+1), 2)` -/
def P2391810194214048051.Spec : Prop :=
  ∀ n, (P2391810194214048051.a n : ℤ) = A255201 (n + 1)

end A255201

/-! ## A255201.P17663810504218750702

`val(A165830(n+1), 3)`
-/

namespace A255201.P17663810504218750702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165830 (n + 1)).toNat 3

end

end A255201.P17663810504218750702

namespace A255201

/-- `val(A165830(n+1), 3)` -/
def P17663810504218750702.Spec : Prop :=
  ∀ n, (P17663810504218750702.a n : ℤ) = A255201 (n + 1)

end A255201

/-! ## A255201.P13753644195565563559

`val(A165839(n+1), 3)`
-/

namespace A255201.P13753644195565563559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165839 (n + 1)).toNat 3

end

end A255201.P13753644195565563559

namespace A255201

/-- `val(A165839(n+1), 3)` -/
def P13753644195565563559.Spec : Prop :=
  ∀ n, (P13753644195565563559.a n : ℤ) = A255201 (n + 1)

end A255201

/-! ## A255201.P15358214635211543059

`val(A165866(n+1), 3)`
-/

namespace A255201.P15358214635211543059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165866 (n + 1)).toNat 3

end

end A255201.P15358214635211543059

namespace A255201

/-- `val(A165866(n+1), 3)` -/
def P15358214635211543059.Spec : Prop :=
  ∀ n, (P15358214635211543059.a n : ℤ) = A255201 (n + 1)

end A255201

/-!
# A255203: Primes p for which no bases b with 1 < b < p exist such that p is a base b Wieferich prime.

The programs for A255203, there is no canonical definition to state claims against.
-/

/-! ## A255203.P2767311221774390734

`p?[comp[A134307(n+1)]]`
-/

namespace A255203.P2767311221774390734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134307 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A255203.P2767311221774390734

/-! ## A255203.P11934300129213007754

`p?[a(A242830(n))*A000040(n)]` with `a(0)=1`
-/

namespace A255203.P11934300129213007754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (A242830 n).toNat * A000040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255203.P11934300129213007754

/-! ## A255203.P9736040517758379285

`A000040(eq[0, A242830(n+1)]+1)`
-/

namespace A255203.P9736040517758379285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A255203.P9736040517758379285

/-! ## A255203.P12197923992799187587

`A000040(eq[1, A143811(n+1)]+1)`
-/

namespace A255203.P12197923992799187587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A255203.P12197923992799187587

/-! ## A255203.P16512250266125769023

`A000040(lt[A242830(n+1), 1]+1)`
-/

namespace A255203.P16512250266125769023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242830 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A255203.P16512250266125769023

/-! ## A255203.P1584974104277807619

`A000040(record[(n+1)/A143811(n+1)])`
-/

namespace A255203.P1584974104277807619
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A143811 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A255203.P1584974104277807619

/-! ## A255203.P15276732535530433409

`p?[A000040(n+1)*A143811(n+1)]`
-/

namespace A255203.P15276732535530433409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A143811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255203.P15276732535530433409

/-! ## A255203.P7702144724306843210

`record[A000040(n+1)%A039678(n+1)]`
-/

namespace A255203.P7702144724306843210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A039678 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255203.P7702144724306843210

/-! ## A255203.P1831770357170439070

`record[(1-A242830(n+1))*A000040(n+1)]`
-/

namespace A255203.P1831770357170439070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A242830 (n + 1)) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255203.P1831770357170439070

/-! ## A255203.P3634435382297159508

`record[A006530(2*(n+1)%A250206(n+1))]`
-/

namespace A255203.P3634435382297159508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * Int.tmod (n + 1 : ℤ) (A250206 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255203.P3634435382297159508

/-!
# A255204: Primes p for which exactly one base b with 1 < b < p exists such that p is a base b Wieferich prime.

The programs for A255204, there is no canonical definition to state claims against.
-/

/-! ## A255204.P16704684125803097405

`A045319(eq[1, A242830(n+1)])`
-/

namespace A255204.P16704684125803097405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255204.P16704684125803097405

/-! ## A255204.P9547391796269250182

`A045344(eq[1, A242830(n+1)])`
-/

namespace A255204.P9547391796269250182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255204.P9547391796269250182

/-! ## A255204.P16304746596614340984

`A065091(eq[1, A242830(n+1)])`
-/

namespace A255204.P16304746596614340984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255204.P16304746596614340984

/-! ## A255204.P625867694323432889

`A045319(eq[2, A143811(n+1)])`
-/

namespace A255204.P625867694323432889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255204.P625867694323432889

/-! ## A255204.P13789942933278206927

`A045344(eq[2, A143811(n+1)])`
-/

namespace A255204.P13789942933278206927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255204.P13789942933278206927

/-! ## A255204.P8410967150584436906

`A000040(eq[1, A242830(n+1)]+1)`
-/

namespace A255204.P8410967150584436906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A255204.P8410967150584436906

/-! ## A255204.P18112307157558686417

`A000040(eq[2, A143811(n+1)]+1)`
-/

namespace A255204.P18112307157558686417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A255204.P18112307157558686417

/-! ## A255204.P7694342751101390169

`p?[a(A242830(n))*A000040(n)]` with `a(0)=0, a(1)=1`
-/

namespace A255204.P7694342751101390169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (A242830 n).toNat * A000040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255204.P7694342751101390169

/-! ## A255204.P12870499831653553959

`p?[A000040(n+1)*A242830(n+1)]`
-/

namespace A255204.P12870499831653553959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A242830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255204.P12870499831653553959

/-! ## A255204.P3617931225405724133

`p?[(A143811(n+1)-1)*A000040(n+1)]`
-/

namespace A255204.P3617931225405724133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A143811 (n + 1) - 1) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255204.P3617931225405724133

/-!
# A255205: Primes p for which exactly two bases b with 1 < b < p exist such that p is a base b Wieferich prime.

The programs for A255205, there is no canonical definition to state claims against.
-/

/-! ## A255205.P6532497266283913361

`A045319(eq[2, A242830(n+1)])`
-/

namespace A255205.P6532497266283913361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255205.P6532497266283913361

/-! ## A255205.P10707933761406691590

`A045344(eq[2, A242830(n+1)])`
-/

namespace A255205.P10707933761406691590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255205.P10707933761406691590

/-! ## A255205.P17153947110599171014

`A065091(eq[2, A242830(n+1)])`
-/

namespace A255205.P17153947110599171014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255205.P17153947110599171014

/-! ## A255205.P7806468683701260099

`A000040(eq[2, A242830(n+1)]+1)`
-/

namespace A255205.P7806468683701260099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A255205.P7806468683701260099

/-! ## A255205.P13489027684592726991

`A000040(eq[3, A143811(n+1)]+1)`
-/

namespace A255205.P13489027684592726991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A255205.P13489027684592726991

/-!
# A255206: Primes p for which exactly three bases b with 1 < b < p exist such that p is a base b Wieferich prime.

The programs for A255206, there is no canonical definition to state claims against.
-/

/-! ## A255206.P6409782865760661845

`A045319(eq[3, A242830(n+1)])`
-/

namespace A255206.P6409782865760661845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255206.P6409782865760661845

/-! ## A255206.P16092969830516018229

`A045344(eq[3, A242830(n+1)])`
-/

namespace A255206.P16092969830516018229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255206.P16092969830516018229

/-! ## A255206.P17506943670028952045

`A065091(eq[3, A242830(n+1)])`
-/

namespace A255206.P17506943670028952045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255206.P17506943670028952045

/-! ## A255206.P15791999423455041065

`p?[a(A242830(n))*A000040(n)]` with `a(0)=6, a(1)=6, a(2)=6, a(3)=1`
-/

namespace A255206.P15791999423455041065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 6, 6, 1] fun n f1 =>
  f1 (A242830 n).toNat * A000040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255206.P15791999423455041065

/-! ## A255206.P16938569071156012226

`p?[(A242830(n+1)-2)*A000040(n+1)]`
-/

namespace A255206.P16938569071156012226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A242830 (n + 1) - 2) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255206.P16938569071156012226

/-!
# A255207: Primes p for which exactly four bases b with 1 < b < p exist such that p is a base b Wieferich prime.

The programs for A255207, there is no canonical definition to state claims against.
-/

/-! ## A255207.P7531627004521416916

`A045319(eq[4, A242830(n+1)])`
-/

namespace A255207.P7531627004521416916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255207.P7531627004521416916

/-! ## A255207.P7394991277291231270

`A045344(eq[4, A242830(n+1)])`
-/

namespace A255207.P7394991277291231270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255207.P7394991277291231270

/-! ## A255207.P14913373164705803899

`A065091(eq[4, A242830(n+1)])`
-/

namespace A255207.P14913373164705803899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255207.P14913373164705803899

/-! ## A255207.P3797736182552682722

`A045319(eq[5, A143811(n+1)])`
-/

namespace A255207.P3797736182552682722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255207.P3797736182552682722

/-! ## A255207.P14347604458247336382

`A045344(eq[5, A143811(n+1)])`
-/

namespace A255207.P14347604458247336382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255207.P14347604458247336382

/-!
# A255211: a(n) = n*(n+1)*(7*n+2)/6.

The programs for A255211, the canonical program `A255211.P1966564376133299868` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255211 has offset 0).

The definition of A255211 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(7*n+2)/6` (program `A255211.P8572917254699440244`, by `A255211.P8572917254699440244.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A255211.P8572917254699440244

`n*(n+1)*(7*n+2)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255211.P8572917254699440244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (7 * n + 2) : ℚ) / 6

end

end A255211.P8572917254699440244

namespace A255211

/-- `n*(n+1)*(7*n+2)/6` -/
def P8572917254699440244.Spec : Prop :=
  ∀ n, P8572917254699440244.a n = (A255211 n : ℚ)

theorem P8572917254699440244.correct : P8572917254699440244.Spec := by
  intro n
  simp only [A255211, Nat.add_sub_cancel, A255211.P8572917254699440244.a, A255211.P1966564376133299868.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A255211

/-! ## A255211.P1966564376133299868

`A000292(2*n)-A000292(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A255211

/-- `A000292(2*n)-A000292(n)` -/
def P1966564376133299868.Spec : Prop :=
  ∀ n, P1966564376133299868.a n = A255211 n

theorem P1966564376133299868.correct : P1966564376133299868.Spec := by
  intro n
  simp only [A255211]

end A255211

/-! ## A255211.P5442806214107889321

`∑[C(7*n, 2)/7]`
-/

namespace A255211.P5442806214107889321
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (7 * n) 2 : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255211.P5442806214107889321

namespace A255211

/-- `∑[C(7*n, 2)/7]` -/
def P5442806214107889321.Spec : Prop :=
  ∀ n, P5442806214107889321.a n = (A255211 n : ℚ)

end A255211

/-! ## A255211.P8233581039009765310

`∑[∑[a(n-1)+7]]` with `a(0)=0, a(1)=3`
-/

namespace A255211.P8233581039009765310
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  f2 (n - 1) + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255211.P8233581039009765310

namespace A255211

/-- `∑[∑[a(n-1)+7]]` -/
def P8233581039009765310.Spec : Prop :=
  ∀ n, (P8233581039009765310.a n : ℤ) = A255211 n

end A255211

/-! ## A255211.P1916759423369769671

`C(n, 3)+(n+2)*n²`
-/

namespace A255211.P1916759423369769671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 + (n + 2) * n ^ 2

end

end A255211.P1916759423369769671

namespace A255211

/-- `C(n, 3)+(n+2)*n²` -/
def P1916759423369769671.Spec : Prop :=
  ∀ n, (P1916759423369769671.a n : ℤ) = A255211 n

theorem P1916759423369769671.correct : P1916759423369769671.Spec := by
  intro n
  simp only [A255211, Nat.add_sub_cancel, A255211.P1916759423369769671.a, A255211.P1966564376133299868.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A255211

/-! ## A255211.P16932791291969450960

`∑[∑[n]]+lcm(n+1, n²)`
-/

namespace A255211.P16932791291969450960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm (n + 1) (n ^ 2)

end

end A255211.P16932791291969450960

namespace A255211

/-- `∑[∑[n]]+lcm(n+1, n²)` -/
def P16932791291969450960.Spec : Prop :=
  ∀ n, (P16932791291969450960.a n : ℤ) = A255211 n

end A255211

/-! ## A255211.P5039187401061068701

`∑[∑[ogf((3x+4x^2)/(1-2x+x^2))]]`
-/

namespace A255211.P5039187401061068701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 4] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255211.P5039187401061068701

namespace A255211

/-- `∑[∑[ogf((3x+4x^2)/(1-2x+x^2))]]` -/
def P5039187401061068701.Spec : Prop :=
  ∀ n, P5039187401061068701.a n = A255211 n

end A255211

/-! ## A255211.P10136997847534748228

`ogf((3x+4x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A255211.P10136997847534748228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 4] [1, -4, 6, -4, 1] n

end

end A255211.P10136997847534748228

namespace A255211

/-- `ogf((3x+4x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P10136997847534748228.Spec : Prop :=
  ∀ n, P10136997847534748228.a n = A255211 n

end A255211

/-! ## A255211.P14841086055882083718

`∑[4-∑[a(n-1)-7]]` with `a(0)=4`
-/

namespace A255211.P14841086055882083718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255211.P14841086055882083718

namespace A255211

/-- `∑[4-∑[a(n-1)-7]]` -/
def P14841086055882083718.Spec : Prop :=
  ∀ n, P14841086055882083718.a n = A255211 n

end A255211

/-! ## A255211.P3963321291832974118

`n²+C(n+2, 3)+n^3`
-/

namespace A255211.P3963321291832974118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (Nat.choose (n + 2) 3 + n ^ 3)

end

end A255211.P3963321291832974118

namespace A255211

/-- `n²+C(n+2, 3)+n^3` -/
def P3963321291832974118.Spec : Prop :=
  ∀ n, (P3963321291832974118.a n : ℤ) = A255211 n

theorem P3963321291832974118.correct : P3963321291832974118.Spec := by
  intro n
  simp only [A255211, Nat.add_sub_cancel, A255211.P3963321291832974118.a, A255211.P1966564376133299868.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A255211

/-! ## A255211.P17097107780824564178

`∑[C(2*n, 2)]+(n+1)*∑[n]`
-/

namespace A255211.P17097107780824564178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A255211.P17097107780824564178

namespace A255211

/-- `∑[C(2*n, 2)]+(n+1)*∑[n]` -/
def P17097107780824564178.Spec : Prop :=
  ∀ n, (P17097107780824564178.a n : ℤ) = A255211 n

end A255211

/-! ## A255211.P7993111903764741913

`∑[lcm(n, 2*n+1)]+(n-1)*∑[n]`
-/

namespace A255211.P7993111903764741913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A255211.P7993111903764741913

namespace A255211

/-- `∑[lcm(n, 2*n+1)]+(n-1)*∑[n]` -/
def P7993111903764741913.Spec : Prop :=
  ∀ n, P7993111903764741913.a n = A255211 n

end A255211

/-! ## A255211.P17552172832717452181

`∑[A022264(n)]`
-/

namespace A255211.P17552172832717452181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255211.P17552172832717452181

namespace A255211

/-- `∑[A022264(n)]` -/
def P17552172832717452181.Spec : Prop :=
  ∀ n, P17552172832717452181.a n = A255211 n

end A255211

/-! ## A255211.P2820732969425449801

`∑[A140063(n)-1]`
-/

namespace A255211.P2820732969425449801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140063 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255211.P2820732969425449801

namespace A255211

/-- `∑[A140063(n)-1]` -/
def P2820732969425449801.Spec : Prop :=
  ∀ n, P2820732969425449801.a n = A255211 n

end A255211

/-! ## A255211.P14804348070302447156

`∑[A218471(n)+n]`
-/

namespace A255211.P14804348070302447156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218471 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255211.P14804348070302447156

namespace A255211

/-- `∑[A218471(n)+n]` -/
def P14804348070302447156.Spec : Prop :=
  ∀ n, P14804348070302447156.a n = A255211 n

end A255211

/-! ## A255211.P4324366533211392621

`∑[A022265(n)-n]`
-/

namespace A255211.P4324366533211392621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022265 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255211.P4324366533211392621

namespace A255211

/-- `∑[A022265(n)-n]` -/
def P4324366533211392621.Spec : Prop :=
  ∀ n, P4324366533211392621.a n = A255211 n

end A255211

/-! ## A255211.P12229019412318284296

`A304993(n)-∑[n]`
-/

namespace A255211.P12229019412318284296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304993 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A255211.P12229019412318284296

namespace A255211

/-- `A304993(n)-∑[n]` -/
def P12229019412318284296.Spec : Prop :=
  ∀ n, P12229019412318284296.a n = A255211 n

end A255211

/-! ## A255211.P11672864284235661584

`∑[A005476(n)+n²]`
-/

namespace A255211.P11672864284235661584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005476 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255211.P11672864284235661584

namespace A255211

/-- `∑[A005476(n)+n²]` -/
def P11672864284235661584.Spec : Prop :=
  ∀ n, P11672864284235661584.a n = A255211 n

end A255211

/-! ## A255211.P11572355177997033368

`∑[A022266(n)-n²]`
-/

namespace A255211.P11572355177997033368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022266 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255211.P11572355177997033368

namespace A255211

/-- `∑[A022266(n)-n²]` -/
def P11572355177997033368.Spec : Prop :=
  ∀ n, P11572355177997033368.a n = A255211 n

end A255211

/-! ## A255211.P9403920823437847264

`A185788(n+1)+n²`
-/

namespace A255211.P9403920823437847264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185788 (n + 1) + (n ^ 2 : ℤ)

end

end A255211.P9403920823437847264

namespace A255211

/-- `A185788(n+1)+n²` -/
def P9403920823437847264.Spec : Prop :=
  ∀ n, P9403920823437847264.a n = A255211 n

end A255211

/-!
# A255212: Number A(n,k) of partitions of n^2 into at most k square parts; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A255212, there is no canonical definition to state claims against.
-/

/-! ## A255212.P10263429584896894451

`A055640(A130574(A296068(n)))`
-/

namespace A255212.P10263429584896894451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A130574 (A296068 n).toNat).toNat

end

end A255212.P10263429584896894451

/-! ## A255212.P13089700479185228607

`A055640(gcd(A185284(n), A210391(n)))`
-/

namespace A255212.P13089700479185228607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (Int.gcd (A185284 n) (A210391 n))

end

end A255212.P13089700479185228607

/-! ## A255212.P11562889874332739605

`A005136(A213276(n)%A123128(n+1))`
-/

namespace A255212.P11562889874332739605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (Int.tmod (A213276 n) (A123128 (n + 1))).toNat

end

end A255212.P11562889874332739605

/-! ## A255212.P10760542049718866489

`gcd(A001221(A144502(n)), A247506(n))`
-/

namespace A255212.P10760542049718866489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A144502 n).toNat) (A247506 n)

end

end A255212.P10760542049718866489

/-! ## A255212.P7067036830762032944

`A125916(A138352(n))`
-/

namespace A255212.P7067036830762032944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125916 (A138352 n).toNat

end

end A255212.P7067036830762032944

/-!
# A255213: Number of partitions of n^2 into at most 9 square parts.

The programs for A255213, there is no canonical definition to state claims against.
-/

/-! ## A255213.P4168999699088454383

`A255212(A155212(n+6)-2)`
-/

namespace A255213.P4168999699088454383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A155212 (n + 6) - 2).toNat

end

end A255213.P4168999699088454383

/-! ## A255213.P7018806455105629770

`A255212(A055999(n+7)-4)`
-/

namespace A255213.P7018806455105629770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A055999 (n + 7) - 4).toNat

end

end A255213.P7018806455105629770

/-! ## A255213.P11461270572731612861

`A255212(A046691(n+8)-6)`
-/

namespace A255213.P11461270572731612861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A046691 (n + 8) - 6).toNat

end

end A255213.P11461270572731612861

/-! ## A255213.P8399188693558459402

`A255212(A000217(n+10)-10)`
-/

namespace A255213.P8399188693558459402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A000217 (n + 10) - 10).toNat

end

end A255213.P8399188693558459402

/-! ## A255213.P5178563154980327772

`A255212(A008486(n+6)+A000096(n+6))`
-/

namespace A255213.P5178563154980327772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A008486 (n + 6) + A000096 (n + 6)).toNat

end

end A255213.P5178563154980327772

/-! ## A255213.P3274374937245816618

`A025424(n²)`
-/

namespace A255213.P3274374937245816618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025424 (n ^ 2)

end

end A255213.P3274374937245816618

/-! ## A255213.P13010881343552215305

`or(char[1], A025424(A000290(n)))`
-/

namespace A255213.P13010881343552215305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A025424 (A000290 n).toNat)

end

end A255213.P13010881343552215305

/-! ## A255213.P2839963901273070049

`A025424(A000290(n))%A016827(n)`
-/

namespace A255213.P2839963901273070049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025424 (A000290 n).toNat) (A016827 n)

end

end A255213.P2839963901273070049

/-! ## A255213.P15308695900581706923

`gcd(A000038(n), A025424(A000290(n)))`
-/

namespace A255213.P15308695900581706923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A025424 (A000290 n).toNat)

end

end A255213.P15308695900581706923

/-! ## A255213.P12347256326732327454

`and(A025424(A000290(n)), A260196(n))`
-/

namespace A255213.P12347256326732327454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025424 (A000290 n).toNat) (A260196 n)

end

end A255213.P12347256326732327454

/-! ## A255213.P7381274318208535813

`A000164(A000164(n))*A025424(n*n)`
-/

namespace A255213.P7381274318208535813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A000164 n).toNat * A025424 (n * n)

end

end A255213.P7381274318208535813

/-! ## A255213.P11617257597429248576

`A010052(A000290(n))*A025424(n*n)`
-/

namespace A255213.P11617257597429248576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A000290 n).toNat * A025424 (n * n)

end

end A255213.P11617257597429248576

/-! ## A255213.P12074112570278360326

`A025424(A131576(n+1))*A025424(n*n)`
-/

namespace A255213.P12074112570278360326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025424 (A131576 (n + 1)).toNat * A025424 (n * n)

end

end A255213.P12074112570278360326

/-! ## A255213.P3504755948984373692

`A014963(A081935(n+2))*A025424(n*n)`
-/

namespace A255213.P3504755948984373692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A081935 (n + 2)).toNat * A025424 (n * n)

end

end A255213.P3504755948984373692

/-! ## A255213.P16583931318354863851

`A025424(A000290(n))/A000164(A000925(n))`
-/

namespace A255213.P16583931318354863851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025424 (A000290 n).toNat : ℚ) / (A000164 (A000925 n).toNat : ℚ)

end

end A255213.P16583931318354863851

/-! ## A255213.P17900157847520868359

`A025424(A000290(n))/A000164(A025428(n))`
-/

namespace A255213.P17900157847520868359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025424 (A000290 n).toNat : ℚ) / (A000164 (A025428 n).toNat : ℚ)

end

end A255213.P17900157847520868359

/-! ## A255213.P379383275518840348

`A025424(A000290(n))^A014963(A124978(n+1))`
-/

namespace A255213.P379383275518840348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025424 (A000290 n).toNat : ℚ) ^ (A014963 (A124978 (n + 1)).toNat : ℤ)

end

end A255213.P379383275518840348

/-!
# A255214: Number of partitions of n^2 into at most 10 square parts.

The programs for A255214, there is no canonical definition to state claims against.
-/

/-! ## A255214.P16888477716903680277

`A255212(A155212(n+7)-3)`
-/

namespace A255214.P16888477716903680277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A155212 (n + 7) - 3).toNat

end

end A255214.P16888477716903680277

/-! ## A255214.P13601166480431084270

`A255212(or(1, 2*n)+A167614(n+8)+6)`
-/

namespace A255214.P13601166480431084270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 ((Nat.lor 1 (2 * n) : ℤ) + (A167614 (n + 8) + 6)).toNat

end

end A255214.P13601166480431084270

/-! ## A255214.P6938988068682626253

`A255212(A167499(n+8)+A004273(n+3))`
-/

namespace A255214.P6938988068682626253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A167499 (n + 8) + A004273 (n + 3)).toNat

end

end A255214.P6938988068682626253

/-! ## A255214.P16813088920517555792

`A255212(A005408(n)+A167614(n+8)+6)`
-/

namespace A255214.P16813088920517555792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A005408 n + (A167614 (n + 8) + 6)).toNat

end

end A255214.P16813088920517555792

/-! ## A255214.P17396905124295541370

`A255212(A005449(n+8)-A027688(n+6))`
-/

namespace A255214.P17396905124295541370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A005449 (n + 8) - A027688 (n + 6)).toNat

end

end A255214.P17396905124295541370

/-! ## A255214.P9977233968760661372

`A025425(n²)`
-/

namespace A255214.P9977233968760661372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025425 (n ^ 2)

end

end A255214.P9977233968760661372

/-! ## A255214.P15343124167488669523

`xor(1, xor(1, A025425(n*n)))`
-/

namespace A255214.P15343124167488669523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A025425 (n * n)))

end

end A255214.P15343124167488669523

/-! ## A255214.P7869302327091600577

`or(char[1], A025425(A000290(n)))`
-/

namespace A255214.P7869302327091600577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A025425 (A000290 n).toNat)

end

end A255214.P7869302327091600577

/-! ## A255214.P17388733111680186340

`A025425(n^2)^A038137(∑[n])`
-/

namespace A255214.P17388733111680186340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025425 (n ^ 2) : ℚ) ^ (A038137 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A255214.P17388733111680186340

/-! ## A255214.P250948411663726266

`A025425(n*n)%A000204(n+2)`
-/

namespace A255214.P250948411663726266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025425 (n * n)) (A000204 (n + 2))

end

end A255214.P250948411663726266

/-! ## A255214.P18075749722045691283

`gcd(A000038(n), A025425(A000290(n)))`
-/

namespace A255214.P18075749722045691283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A025425 (A000290 n).toNat)

end

end A255214.P18075749722045691283

/-! ## A255214.P7752096529505385145

`A025425(A000290(n))+n*A000007(n)`
-/

namespace A255214.P7752096529505385145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025425 (A000290 n).toNat + (n : ℤ) * A000007 n

end

end A255214.P7752096529505385145

/-! ## A255214.P7384326724195563700

`A000164(A000164(n))*A025425(n*n)`
-/

namespace A255214.P7384326724195563700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A000164 n).toNat * A025425 (n * n)

end

end A255214.P7384326724195563700

/-! ## A255214.P14591014297103151732

`A010052(A000290(n))*A025425(n*n)`
-/

namespace A255214.P14591014297103151732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A000290 n).toNat * A025425 (n * n)

end

end A255214.P14591014297103151732

/-! ## A255214.P5876660384404432768

`A025425(A000290(n))+A010052(lcm(15, n+1))`
-/

namespace A255214.P5876660384404432768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025425 (A000290 n).toNat + A010052 (Nat.lcm 15 (n + 1))

end

end A255214.P5876660384404432768

/-! ## A255214.P752558081348054140

`A025425(A000290(n))+A000007(A025425(n))`
-/

namespace A255214.P752558081348054140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025425 (A000290 n).toNat + A000007 (A025425 n).toNat

end

end A255214.P752558081348054140

/-! ## A255214.P6741307459439529283

`A003108(A033461(n))*A025425(A000290(n))`
-/

namespace A255214.P6741307459439529283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 (A033461 n).toNat * A025425 (A000290 n).toNat

end

end A255214.P6741307459439529283

/-!
# A255215: Numbers that belong to at least one amicable tuple.

The programs for A255215, there is no canonical definition to state claims against.
-/

/-! ## A255215.P17030293150332553010

`∏{e}[A001029(n), A063990(#)]`
-/

namespace A255215.P17030293150332553010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A063990 (Nat.factorization (f1 n).natAbs p)

end

end A255215.P17030293150332553010

/-!
# A255216: a(n) = floor((3/sqrt(5))^n).

The programs for A255216, the canonical program `A255216.P5481892181138666791` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255216 has offset 0).

The definition of A255216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 392 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255216.P5481892181138666791

`floor(sqrt((9/5)^n))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255216

/-- `floor(sqrt((9/5)^n))` -/
def P5481892181138666791.Spec : Prop :=
  ∀ n, P5481892181138666791.a n = A255216 n

theorem P5481892181138666791.correct : P5481892181138666791.Spec := by
  intro n
  simp only [A255216]

end A255216

/-! ## A255216.P17070018777779030416

`A000007(n+1)+floor(A000244(n)/A017919(n))`
-/

namespace A255216.P17070018777779030416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ⌊(A000244 n : ℚ) / (A017919 n : ℚ)⌋

end

end A255216.P17070018777779030416

namespace A255216

/-- `A000007(n+1)+floor(A000244(n)/A017919(n))` -/
def P17070018777779030416.Spec : Prop :=
  ∀ n, P17070018777779030416.a n = A255216 n

end A255216

/-! ## A255216.P13902367998181086513

`floor(A000244(n)/A017919(n))%A000032(2*n)`
-/

namespace A255216.P13902367998181086513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A000244 n : ℚ) / (A017919 n : ℚ)⌋ (A000032 (2 * n))

end

end A255216.P13902367998181086513

namespace A255216

/-- `floor(A000244(n)/A017919(n))%A000032(2*n)` -/
def P13902367998181086513.Spec : Prop :=
  ∀ n, P13902367998181086513.a n = A255216 n

end A255216

/-! ## A255216.P8051147208286713952

`A008683(4*(n+4))+floor(A000244(n)/A017919(n))`
-/

namespace A255216.P8051147208286713952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 4)) + ⌊(A000244 n : ℚ) / (A017919 n : ℚ)⌋

end

end A255216.P8051147208286713952

namespace A255216

/-- `A008683(4*(n+4))+floor(A000244(n)/A017919(n))` -/
def P8051147208286713952.Spec : Prop :=
  ∀ n, P8051147208286713952.a n = A255216 n

end A255216

/-! ## A255216.P17642150775996465995

`floor(A000244(n)/A017919(n))+(n+1)%A000034(n)`
-/

namespace A255216.P17642150775996465995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000244 n : ℚ) / (A017919 n : ℚ)⌋ + Int.tmod (n + 1 : ℤ) (A000034 n)

end

end A255216.P17642150775996465995

namespace A255216

/-- `floor(A000244(n)/A017919(n))+(n+1)%A000034(n)` -/
def P17642150775996465995.Spec : Prop :=
  ∀ n, P17642150775996465995.a n = A255216 n

end A255216

/-! ## A255216.P4090499703494529838

`A146076(2*(n+1)+1)+floor(A000244(n)/A017919(n))`
-/

namespace A255216.P4090499703494529838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (2 * (n + 1) + 1) + ⌊(A000244 n : ℚ) / (A017919 n : ℚ)⌋

end

end A255216.P4090499703494529838

namespace A255216

/-- `A146076(2*(n+1)+1)+floor(A000244(n)/A017919(n))` -/
def P4090499703494529838.Spec : Prop :=
  ∀ n, P4090499703494529838.a n = A255216 n

end A255216

/-!
# A255217: Primorial mod sum-of-primes.

The programs for A255217, there is no canonical definition to state claims against.
-/

/-! ## A255217.P12606773459419731994

`∏[Δ[A007504(n)]]%A007504(n+1)`
-/

namespace A255217.P12606773459419731994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A007504 (n + 1))

end

end A255217.P12606773459419731994

/-! ## A255217.P8528238827936457734

`∏[p?[A007989(n)]]%A007504(n+1)`
-/

namespace A255217.P8528238827936457734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A007504 (n + 1))

end

end A255217.P8528238827936457734

/-! ## A255217.P11608098918972590265

`∏[p?[A080412(n)]]%A007504(n+1)`
-/

namespace A255217.P11608098918972590265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A007504 (n + 1))

end

end A255217.P11608098918972590265

/-! ## A255217.P16281796091894052498

`∏[p?[A107750(n)]]%A007504(n+1)`
-/

namespace A255217.P16281796091894052498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A007504 (n + 1))

end

end A255217.P16281796091894052498

/-! ## A255217.P13757442998379253363

`∏[A000040(n+1)]%A007504(n+1)`
-/

namespace A255217.P13757442998379253363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A007504 (n + 1))

end

end A255217.P13757442998379253363

/-! ## A255217.P18077708991554955373

`∏[record[A006530(n+2)]]%A007504(n+1)`
-/

namespace A255217.P18077708991554955373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A007504 (n + 1))

end

end A255217.P18077708991554955373

/-! ## A255217.P14029239787615951117

`∏[record[A014963(n+2)]]%A007504(n+1)`
-/

namespace A255217.P14029239787615951117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A007504 (n + 1))

end

end A255217.P14029239787615951117

/-! ## A255217.P11180313801926122275

`∏[record[A020639(n+2)]]%A007504(n+1)`
-/

namespace A255217.P11180313801926122275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A007504 (n + 1))

end

end A255217.P11180313801926122275

/-!
# A255218: Numbers k such that 12*k+1, 24*k+1, 36*k+1 and 72*k+1 are all prime.

The programs for A255218, there is no canonical definition to state claims against.
-/

/-! ## A255218.P14724421602950961066

`record[A273943(A206024(n+3))]`
-/

namespace A255218.P14724421602950961066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A206024 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255218.P14724421602950961066

/-!
# A255219: Squarefree numbers k such that mu(k) = mu(phi(k)) where mu(k) is the Möbius function and phi(k) is Euler's totient function.

The programs for A255219, there is no canonical definition to state claims against.
-/

/-! ## A255219.P4358218979774628699

`∪[A078330(n+1), A305729(n+1)]`
-/

namespace A255219.P4358218979774628699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A255219.P4358218979774628699

/-! ## A255219.P10828715731323600915

`record[A007913(A255199(n+1))]`
-/

namespace A255219.P10828715731323600915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A255199 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255219.P10828715731323600915

/-! ## A255219.P11448783270391013056

`filter[A255199(n+1), A008966(#)]`
-/

namespace A255219.P11448783270391013056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A255219.P11448783270391013056

/-! ## A255219.P15498005749835143089

`∩[A005117(n+1), A255199(n+1)]`
-/

namespace A255219.P15498005749835143089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255219.P15498005749835143089

/-! ## A255219.P10263458116250037937

`∩[A049149(n+1), A255199(n+1)]`
-/

namespace A255219.P10263458116250037937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255219.P10263458116250037937

/-! ## A255219.P11394209513086472139

`∩[A049196(n+1), A255199(n+1)]`
-/

namespace A255219.P11394209513086472139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255219.P11394209513086472139

/-! ## A255219.P9022301491585080151

`∩[A084349(n+1), A255199(n+1)]`
-/

namespace A255219.P9022301491585080151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255219.P9022301491585080151

/-! ## A255219.P5228577597209744026

`∩[A255199(n+1), A325162(n+1)]`
-/

namespace A255219.P5228577597209744026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255219.P5228577597209744026

/-! ## A255219.P15555373531561994430

`∩[A255199(n+1), A274546(n+1)]`
-/

namespace A255219.P15555373531561994430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255219.P15555373531561994430

/-! ## A255219.P6888269796016777078

`∩[A077620(n+1), A255199(n+1)]`
-/

namespace A255219.P6888269796016777078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255219.P6888269796016777078

/-! ## A255219.P530004755986213843

`∩[A255199(n+1), A325160(n+1)]`
-/

namespace A255219.P530004755986213843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255219.P530004755986213843

/-! ## A255219.P15385555270251046434

`∩[A087246(n+1), A255199(n+1)]`
-/

namespace A255219.P15385555270251046434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255219.P15385555270251046434

/-! ## A255219.P11229125307927880144

`∩[A255199(n+1), A326535(n+1)]`
-/

namespace A255219.P11229125307927880144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255219.P11229125307927880144

/-! ## A255219.P7840051871828355730

`record[A325314(A255199(-xor(n, -1)))]`
-/

namespace A255219.P7840051871828355730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325314 (A255199 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255219.P7840051871828355730

/-!
# A255220: Number of (n+2)X(n+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 2 and no column sum 2.

The programs for A255220, the canonical program `A255220.P13238328953883462749` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255220 has offset 1).

The definition of A255220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 594 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255220.P13238328953883462749

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=23, a(1)=28, a(2)=46, a(3)=70, a(4)=106`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255220

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P13238328953883462749.Spec : Prop :=
  ∀ n, P13238328953883462749.a n = A255220 (n + 1)

theorem P13238328953883462749.correct : P13238328953883462749.Spec := by
  intro n
  simp only [A255220, Nat.add_sub_cancel]

end A255220

/-! ## A255220.P11081212294013542193

`A255228(∑[4*n]+1)`
-/

namespace A255220.P11081212294013542193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255228 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255220.P11081212294013542193

namespace A255220

/-- `A255228(∑[4*n]+1)` -/
def P11081212294013542193.Spec : Prop :=
  ∀ n, P11081212294013542193.a n = A255220 (n + 1)

end A255220

/-! ## A255220.P15162573740679744926

`A255228(A016813(∑[n]))+char[30]`
-/

namespace A255220.P15162573740679744926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255228 (A016813 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A255220.P15162573740679744926

namespace A255220

/-- `A255228(A016813(∑[n]))+char[30]` -/
def P15162573740679744926.Spec : Prop :=
  ∀ n, P15162573740679744926.a n = A255220 (n + 1)

end A255220

/-! ## A255220.P17305611369185061215

`record[A003982(n)*A255228(n+1)]`
-/

namespace A255220.P17305611369185061215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A255228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255220.P17305611369185061215

namespace A255220

/-- `record[A003982(n)*A255228(n+1)]` -/
def P17305611369185061215.Spec : Prop :=
  ∀ n, P17305611369185061215.a n = A255220 (n + 1)

end A255220

/-! ## A255220.P10236857493789623201

`A007318(∑[n])*A255228(A001844(n))`
-/

namespace A255220.P10236857493789623201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A255228 (A001844 n).toNat

end

end A255220.P10236857493789623201

namespace A255220

/-- `A007318(∑[n])*A255228(A001844(n))` -/
def P10236857493789623201.Spec : Prop :=
  ∀ n, P10236857493789623201.a n = A255220 (n + 1)

end A255220

/-!
# A255221: Number of (n+2) X (1+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 2 and no column sum 2.

The programs for A255221, the canonical program `A255221.P4523351573859323173` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255221 has offset 1).

The definition of A255221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255221.P8207001623745144218

`3*(A020745(n)+7)-7*A020639(A298033(n))`
-/

namespace A255221.P8207001623745144218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A020745 n + 7) - 7 * A020639 (A298033 n).toNat

end

end A255221.P8207001623745144218

namespace A255221

/-- `3*(A020745(n)+7)-7*A020639(A298033(n))` -/
def P8207001623745144218.Spec : Prop :=
  ∀ n, P8207001623745144218.a n = A255221 (n + 1)

end A255221

/-! ## A255221.P11922618280777502115

`3*A048591(n)-(7*A322818(A061142(n+1))+1)`
-/

namespace A255221.P11922618280777502115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A048591 n - (7 * A322818 (A061142 (n + 1)).toNat + 1)

end

end A255221.P11922618280777502115

namespace A255221

/-- `3*A048591(n)-(7*A322818(A061142(n+1))+1)` -/
def P11922618280777502115.Spec : Prop :=
  ∀ n, P11922618280777502115.a n = A255221 (n + 1)

end A255221

/-! ## A255221.P4523351573859323173

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=23, a(1)=22, a(2)=31, a(3)=43, a(4)=61`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255221

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P4523351573859323173.Spec : Prop :=
  ∀ n, P4523351573859323173.a n = A255221 (n + 1)

theorem P4523351573859323173.correct : P4523351573859323173.Spec := by
  intro n
  simp only [A255221, Nat.add_sub_cancel]

end A255221

/-! ## A255221.P12832316277246735398

`A255228(∑[n]+1)`
-/

namespace A255221.P12832316277246735398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255228 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255221.P12832316277246735398

namespace A255221

/-- `A255228(∑[n]+1)` -/
def P12832316277246735398.Spec : Prop :=
  ∀ n, P12832316277246735398.a n = A255221 (n + 1)

end A255221

/-! ## A255221.P11368670159170343446

`or(char[2], A255228(A000124(n)))`
-/

namespace A255221.P11368670159170343446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A255228 (A000124 n).toNat)

end

end A255221.P11368670159170343446

namespace A255221

/-- `or(char[2], A255228(A000124(n)))` -/
def P11368670159170343446.Spec : Prop :=
  ∀ n, P11368670159170343446.a n = A255221 (n + 1)

end A255221

/-! ## A255221.P4155289104665703159

`A255228(A000124(n))+A000007(n+1)`
-/

namespace A255221.P4155289104665703159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255228 (A000124 n).toNat + A000007 (n + 1)

end

end A255221.P4155289104665703159

namespace A255221

/-- `A255228(A000124(n))+A000007(n+1)` -/
def P4155289104665703159.Spec : Prop :=
  ∀ n, P4155289104665703159.a n = A255221 (n + 1)

end A255221

/-! ## A255221.P5756619121641549729

`A255228(A000124(n))+A000038(n+1)`
-/

namespace A255221.P5756619121641549729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255228 (A000124 n).toNat + A000038 (n + 1)

end

end A255221.P5756619121641549729

namespace A255221

/-- `A255228(A000124(n))+A000038(n+1)` -/
def P5756619121641549729.Spec : Prop :=
  ∀ n, P5756619121641549729.a n = A255221 (n + 1)

end A255221

/-! ## A255221.P6905733026596087159

`A255228(A000124(n))+A000035(2*n)`
-/

namespace A255221.P6905733026596087159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255228 (A000124 n).toNat + A000035 (2 * n)

end

end A255221.P6905733026596087159

namespace A255221

/-- `A255228(A000124(n))+A000035(2*n)` -/
def P6905733026596087159.Spec : Prop :=
  ∀ n, P6905733026596087159.a n = A255221 (n + 1)

end A255221

/-! ## A255221.P193985762203523601

`A007318(C(2, n))*A255228(A000124(n))`
-/

namespace A255221.P193985762203523601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A255228 (A000124 n).toNat

end

end A255221.P193985762203523601

namespace A255221

/-- `A007318(C(2, n))*A255228(A000124(n))` -/
def P193985762203523601.Spec : Prop :=
  ∀ n, P193985762203523601.a n = A255221 (n + 1)

end A255221

/-!
# A255222: Number of (n+2) X (2+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 2 and no column sum 2.

The programs for A255222, the canonical program `A255222.P6503135029290947164` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255222 has offset 1).

The definition of A255222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255222.P6503135029290947164

`3*∑[a(n-1)+a(n-3)]+1` with `a(0)=7, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255222

/-- `3*∑[a(n-1)+a(n-3)]+1` -/
def P6503135029290947164.Spec : Prop :=
  ∀ n, (P6503135029290947164.a n : ℤ) = A255222 (n + 1)

theorem P6503135029290947164.correct : P6503135029290947164.Spec := by
  intro n
  simp only [A255222, Nat.add_sub_cancel]

end A255222

/-! ## A255222.P14592803642137832400

`3*A048589(n)+1`
-/

namespace A255222.P14592803642137832400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A048589 n + 1

end

end A255222.P14592803642137832400

namespace A255222

/-- `3*A048589(n)+1` -/
def P14592803642137832400.Spec : Prop :=
  ∀ n, P14592803642137832400.a n = A255222 (n + 1)

end A255222

/-! ## A255222.P17331368633943604884

`3*A048591(n)-2`
-/

namespace A255222.P17331368633943604884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A048591 n - 2

end

end A255222.P17331368633943604884

namespace A255222

/-- `3*A048591(n)-2` -/
def P17331368633943604884.Spec : Prop :=
  ∀ n, P17331368633943604884.a n = A255222 (n + 1)

end A255222

/-! ## A255222.P4635914649246852432

`A255223(n+1)-9`
-/

namespace A255222.P4635914649246852432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255223 (n + 1) - 9

end

end A255222.P4635914649246852432

namespace A255222

/-- `A255223(n+1)-9` -/
def P4635914649246852432.Spec : Prop :=
  ∀ n, P4635914649246852432.a n = A255222 (n + 1)

theorem P4635914649246852432.correct : P4635914649246852432.Spec := by
  intro n
  simp only [A255222, Nat.add_sub_cancel, A255222.P4635914649246852432.a, A255222.P6503135029290947164.f1, A255222.P6503135029290947164.a, A255223, A255223.P5524920262234694279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255222

/-! ## A255222.P2569247050501668544

`3*A020711(n)+7`
-/

namespace A255222.P2569247050501668544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A020711 n + 7

end

end A255222.P2569247050501668544

namespace A255222

/-- `3*A020711(n)+7` -/
def P2569247050501668544.Spec : Prop :=
  ∀ n, P2569247050501668544.a n = A255222 (n + 1)

end A255222

/-! ## A255222.P1095317078499416170

`3*A020745(n)+13`
-/

namespace A255222.P1095317078499416170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A020745 n + 13

end

end A255222.P1095317078499416170

namespace A255222

/-- `3*A020745(n)+13` -/
def P1095317078499416170.Spec : Prop :=
  ∀ n, P1095317078499416170.a n = A255222 (n + 1)

end A255222

/-! ## A255222.P11877085924143049457

`3*A048585(n+1)+1`
-/

namespace A255222.P11877085924143049457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A048585 (n + 1) + 1

end

end A255222.P11877085924143049457

namespace A255222

/-- `3*A048585(n+1)+1` -/
def P11877085924143049457.Spec : Prop :=
  ∀ n, P11877085924143049457.a n = A255222 (n + 1)

end A255222

/-! ## A255222.P17314213872043458433

`3*A048588(n+1)-2`
-/

namespace A255222.P17314213872043458433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A048588 (n + 1) - 2

end

end A255222.P17314213872043458433

namespace A255222

/-- `3*A048588(n+1)-2` -/
def P17314213872043458433.Spec : Prop :=
  ∀ n, P17314213872043458433.a n = A255222 (n + 1)

end A255222

/-! ## A255222.P8981114731360146741

`3*(A000930(n+5)+3)+1`
-/

namespace A255222.P8981114731360146741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A000930 (n + 5) + 3) + 1

end

end A255222.P8981114731360146741

namespace A255222

/-- `3*(A000930(n+5)+3)+1` -/
def P8981114731360146741.Spec : Prop :=
  ∀ n, P8981114731360146741.a n = A255222 (n + 1)

end A255222

/-! ## A255222.P16984972902970644934

`A255224(n+1)+A023463(n)-n`
-/

namespace A255222.P16984972902970644934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255224 (n + 1) + (A023463 n - (n : ℤ))

end

end A255222.P16984972902970644934

namespace A255222

/-- `A255224(n+1)+A023463(n)-n` -/
def P16984972902970644934.Spec : Prop :=
  ∀ n, P16984972902970644934.a n = A255222 (n + 1)

theorem P16984972902970644934.correct : P16984972902970644934.Spec := by
  intro n
  simp only [A255222, Nat.add_sub_cancel, A255222.P16984972902970644934.a, A255222.P6503135029290947164.f1, A255222.P6503135029290947164.a, A023463, A023463.P13340327421806470167.a, A255224, A255224.P15824476764255298837.a, A255223, A255223.P5524920262234694279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255222

/-! ## A255222.P10854987583352006256

`A255225(n+1)+A023481(n)-n`
-/

namespace A255222.P10854987583352006256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255225 (n + 1) + (A023481 n - (n : ℤ))

end

end A255222.P10854987583352006256

namespace A255222

/-- `A255225(n+1)+A023481(n)-n` -/
def P10854987583352006256.Spec : Prop :=
  ∀ n, P10854987583352006256.a n = A255222 (n + 1)

theorem P10854987583352006256.correct : P10854987583352006256.Spec := by
  intro n
  simp only [A255222, Nat.add_sub_cancel, A255222.P10854987583352006256.a, A255222.P6503135029290947164.f1, A255222.P6503135029290947164.a, A023481, A023481.P8149254853506171742.a, A255225, A255225.P10298454783296627816.a, A255223, A255223.P5524920262234694279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255222

/-! ## A255222.P16619827524323644322

`A255225(n+1)+A255226(n+1)-A255227(n+1)`
-/

namespace A255222.P16619827524323644322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255225 (n + 1) + (A255226 (n + 1) - A255227 (n + 1))

end

end A255222.P16619827524323644322

namespace A255222

/-- `A255225(n+1)+A255226(n+1)-A255227(n+1)` -/
def P16619827524323644322.Spec : Prop :=
  ∀ n, P16619827524323644322.a n = A255222 (n + 1)

theorem P16619827524323644322.correct : P16619827524323644322.Spec := by
  intro n
  simp only [A255222, Nat.add_sub_cancel, A255222.P16619827524323644322.a, A255222.P6503135029290947164.f1, A255222.P6503135029290947164.a, A255225, A255225.P10298454783296627816.a, A255226, A255226.P4162017514556172731.a, A255227, A255227.P9716855678432011050.a, A255223, A255223.P5524920262234694279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255222

/-! ## A255222.P13377228754293336515

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=22, a(1)=28, a(2)=37, a(3)=49`
-/

namespace A255222.P13377228754293336515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [22, 28, 37, 49] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - a (n - 4)

end

end A255222.P13377228754293336515

namespace A255222

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P13377228754293336515.Spec : Prop :=
  ∀ n, P13377228754293336515.a n = A255222 (n + 1)

end A255222

/-! ## A255222.P13698407625917629899

`3*(A241619(∑[n+1])+3)+1`
-/

namespace A255222.P13698407625917629899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A241619 (∑ j ∈ Finset.range (n + 1), f1 j) + 3) + 1

end

end A255222.P13698407625917629899

namespace A255222

/-- `3*(A241619(∑[n+1])+3)+1` -/
def P13698407625917629899.Spec : Prop :=
  ∀ n, P13698407625917629899.a n = A255222 (n + 1)

end A255222

/-!
# A255223: Number of (n+2)X(3+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 2 and no column sum 2.

The programs for A255223, the canonical program `A255223.P5524920262234694279` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255223 has offset 1).

The definition of A255223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255223.P5524920262234694279

`A255222(n+1)+9`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A255223

/-- `A255222(n+1)+9` -/
def P5524920262234694279.Spec : Prop :=
  ∀ n, P5524920262234694279.a n = A255223 (n + 1)

theorem P5524920262234694279.correct : P5524920262234694279.Spec := by
  intro n
  simp only [A255223, Nat.add_sub_cancel]

end A255223

/-! ## A255223.P15200692089915951582

`3*A048591(n)+7`
-/

namespace A255223.P15200692089915951582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A048591 n + 7

end

end A255223.P15200692089915951582

namespace A255223

/-- `3*A048591(n)+7` -/
def P15200692089915951582.Spec : Prop :=
  ∀ n, P15200692089915951582.a n = A255223 (n + 1)

end A255223

/-! ## A255223.P1217035233751957406

`A255224(n+1)-12`
-/

namespace A255223.P1217035233751957406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255224 (n + 1) - 12

end

end A255223.P1217035233751957406

namespace A255223

/-- `A255224(n+1)-12` -/
def P1217035233751957406.Spec : Prop :=
  ∀ n, P1217035233751957406.a n = A255223 (n + 1)

theorem P1217035233751957406.correct : P1217035233751957406.Spec := by
  intro n
  simp only [A255223, Nat.add_sub_cancel, A255223.P1217035233751957406.a, A255223.P5524920262234694279.a, A255222, A255222.P6503135029290947164.f1, A255222.P6503135029290947164.a, A255224, A255224.P15824476764255298837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255223

/-! ## A255223.P18375105302800418464

`3*A048589(n)+10`
-/

namespace A255223.P18375105302800418464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A048589 n + 10

end

end A255223.P18375105302800418464

namespace A255223

/-- `3*A048589(n)+10` -/
def P18375105302800418464.Spec : Prop :=
  ∀ n, P18375105302800418464.a n = A255223 (n + 1)

end A255223

/-! ## A255223.P2050964920756554814

`3*(A020745(n)+7)+1`
-/

namespace A255223.P2050964920756554814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A020745 n + 7) + 1

end

end A255223.P2050964920756554814

namespace A255223

/-- `3*(A020745(n)+7)+1` -/
def P2050964920756554814.Spec : Prop :=
  ∀ n, P2050964920756554814.a n = A255223 (n + 1)

end A255223

/-! ## A255223.P17002509645170293015

`3*(A048588(n+1)+2)+1`
-/

namespace A255223.P17002509645170293015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A048588 (n + 1) + 2) + 1

end

end A255223.P17002509645170293015

namespace A255223

/-- `3*(A048588(n+1)+2)+1` -/
def P17002509645170293015.Spec : Prop :=
  ∀ n, P17002509645170293015.a n = A255223 (n + 1)

end A255223

/-! ## A255223.P14226072817445420881

`3*(∑[A000930(n+2)]+9)+1`
-/

namespace A255223.P14226072817445420881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j + 9) + 1

end

end A255223.P14226072817445420881

namespace A255223

/-- `3*(∑[A000930(n+2)]+9)+1` -/
def P14226072817445420881.Spec : Prop :=
  ∀ n, P14226072817445420881.a n = A255223 (n + 1)

end A255223

/-! ## A255223.P8055370891114256358

`A255225(n+1)+A023472(n)-n`
-/

namespace A255223.P8055370891114256358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255225 (n + 1) + (A023472 n - (n : ℤ))

end

end A255223.P8055370891114256358

namespace A255223

/-- `A255225(n+1)+A023472(n)-n` -/
def P8055370891114256358.Spec : Prop :=
  ∀ n, P8055370891114256358.a n = A255223 (n + 1)

theorem P8055370891114256358.correct : P8055370891114256358.Spec := by
  intro n
  simp only [A255223, Nat.add_sub_cancel, A255223.P8055370891114256358.a, A255223.P5524920262234694279.a, A023472, A023472.P7905059235647750017.a, A255222, A255222.P6503135029290947164.f1, A255222.P6503135029290947164.a, A255225, A255225.P10298454783296627816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255223

/-! ## A255223.P14078657286239084191

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=31, a(1)=37, a(2)=46, a(3)=58`
-/

namespace A255223.P14078657286239084191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [31, 37, 46, 58] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - a (n - 4)

end

end A255223.P14078657286239084191

namespace A255223

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P14078657286239084191.Spec : Prop :=
  ∀ n, P14078657286239084191.a n = A255223 (n + 1)

end A255223

/-! ## A255223.P2982394031021264663

`A255228(∑[n+2])+9`
-/

namespace A255223.P2982394031021264663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255228 (∑ j ∈ Finset.range (n + 1), f1 j) + 9

end

end A255223.P2982394031021264663

namespace A255223

/-- `A255228(∑[n+2])+9` -/
def P2982394031021264663.Spec : Prop :=
  ∀ n, P2982394031021264663.a n = A255223 (n + 1)

end A255223

/-!
# A255224: Number of (n+2)X(4+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 2 and no column sum 2.

The programs for A255224, the canonical program `A255224.P15824476764255298837` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255224 has offset 1).

The definition of A255224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255224.P15824476764255298837

`A255223(n+1)+12`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A255224

/-- `A255223(n+1)+12` -/
def P15824476764255298837.Spec : Prop :=
  ∀ n, P15824476764255298837.a n = A255224 (n + 1)

theorem P15824476764255298837.correct : P15824476764255298837.Spec := by
  intro n
  simp only [A255224, Nat.add_sub_cancel]

end A255224

/-! ## A255224.P6950250448407453029

`A255225(n+1)-18`
-/

namespace A255224.P6950250448407453029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255225 (n + 1) - 18

end

end A255224.P6950250448407453029

namespace A255224

/-- `A255225(n+1)-18` -/
def P6950250448407453029.Spec : Prop :=
  ∀ n, P6950250448407453029.a n = A255224 (n + 1)

theorem P6950250448407453029.correct : P6950250448407453029.Spec := by
  intro n
  simp only [A255224, Nat.add_sub_cancel, A255224.P6950250448407453029.a, A255224.P15824476764255298837.a, A255223, A255223.P5524920262234694279.a, A255225, A255225.P10298454783296627816.a, A255222, A255222.P6503135029290947164.f1, A255222.P6503135029290947164.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255224

/-! ## A255224.P6329405130579600227

`3*(A048591(n)+6)+1`
-/

namespace A255224.P6329405130579600227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A048591 n + 6) + 1

end

end A255224.P6329405130579600227

namespace A255224

/-- `3*(A048591(n)+6)+1` -/
def P6329405130579600227.Spec : Prop :=
  ∀ n, P6329405130579600227.a n = A255224 (n + 1)

end A255224

/-! ## A255224.P13765262454943636627

`3*(A020711(n)+9)+1`
-/

namespace A255224.P13765262454943636627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A020711 n + 9) + 1

end

end A255224.P13765262454943636627

namespace A255224

/-- `3*(A020711(n)+9)+1` -/
def P13765262454943636627.Spec : Prop :=
  ∀ n, P13765262454943636627.a n = A255224 (n + 1)

end A255224

/-! ## A255224.P16026098581535560239

`3*(A048588(n+1)+7)-2`
-/

namespace A255224.P16026098581535560239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A048588 (n + 1) + 7) - 2

end

end A255224.P16026098581535560239

namespace A255224

/-- `3*(A048588(n+1)+7)-2` -/
def P16026098581535560239.Spec : Prop :=
  ∀ n, P16026098581535560239.a n = A255224 (n + 1)

end A255224

/-! ## A255224.P12285728104990891305

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=43, a(1)=49, a(2)=58, a(3)=70`
-/

namespace A255224.P12285728104990891305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [43, 49, 58, 70] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - a (n - 4)

end

end A255224.P12285728104990891305

namespace A255224

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P12285728104990891305.Spec : Prop :=
  ∀ n, P12285728104990891305.a n = A255224 (n + 1)

end A255224

/-! ## A255224.P15866820397350082665

`A255228(A374004(n+1))`
-/

namespace A255224.P15866820397350082665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255228 (A374004 (n + 1)).toNat

end

end A255224.P15866820397350082665

namespace A255224

/-- `A255228(A374004(n+1))` -/
def P15866820397350082665.Spec : Prop :=
  ∀ n, P15866820397350082665.a n = A255224 (n + 1)

end A255224

/-! ## A255224.P2408273271876572305

`A255228(A167614(n+2)+1)`
-/

namespace A255224.P2408273271876572305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255228 (A167614 (n + 2) + 1).toNat

end

end A255224.P2408273271876572305

namespace A255224

/-- `A255228(A167614(n+2)+1)` -/
def P2408273271876572305.Spec : Prop :=
  ∀ n, P2408273271876572305.a n = A255224 (n + 1)

end A255224

/-! ## A255224.P16241990302690941184

`A255228(∑[n+4]+3)`
-/

namespace A255224.P16241990302690941184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255228 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A255224.P16241990302690941184

namespace A255224

/-- `A255228(∑[n+4]+3)` -/
def P16241990302690941184.Spec : Prop :=
  ∀ n, P16241990302690941184.a n = A255224 (n + 1)

end A255224

/-!
# A255225: Number of (n+2)X(5+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 2 and no column sum 2.

The programs for A255225, the canonical program `A255225.P10298454783296627816` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255225 has offset 1).

The definition of A255225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255225.P4755336826575619312

`A255226(n+1)-27`
-/

namespace A255225.P4755336826575619312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255226 (n + 1) - 27

end

end A255225.P4755336826575619312

namespace A255225

/-- `A255226(n+1)-27` -/
def P4755336826575619312.Spec : Prop :=
  ∀ n, P4755336826575619312.a n = A255225 (n + 1)

theorem P4755336826575619312.correct : P4755336826575619312.Spec := by
  intro n
  simp only [A255225, Nat.add_sub_cancel, A255225.P4755336826575619312.a, A255225.P10298454783296627816.a, A255223, A255223.P5524920262234694279.a, A255226, A255226.P4162017514556172731.a, A255222, A255222.P6503135029290947164.f1, A255222.P6503135029290947164.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255225

/-! ## A255225.P10298454783296627816

`A255223(n+1)+30`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A255225

/-- `A255223(n+1)+30` -/
def P10298454783296627816.Spec : Prop :=
  ∀ n, P10298454783296627816.a n = A255225 (n + 1)

theorem P10298454783296627816.correct : P10298454783296627816.Spec := by
  intro n
  simp only [A255225, Nat.add_sub_cancel]

end A255225

/-! ## A255225.P18316251091414785840

`3*A020745(n)+52`
-/

namespace A255225.P18316251091414785840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A020745 n + 52

end

end A255225.P18316251091414785840

namespace A255225

/-- `3*A020745(n)+52` -/
def P18316251091414785840.Spec : Prop :=
  ∀ n, P18316251091414785840.a n = A255225 (n + 1)

end A255225

/-! ## A255225.P866240811634009628

`3*A048585(n+1)+40`
-/

namespace A255225.P866240811634009628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A048585 (n + 1) + 40

end

end A255225.P866240811634009628

namespace A255225

/-- `3*A048585(n+1)+40` -/
def P866240811634009628.Spec : Prop :=
  ∀ n, P866240811634009628.a n = A255225 (n + 1)

end A255225

/-! ## A255225.P18196711004752264656

`A257444(n+1)-A016777(C(2, n+2))`
-/

namespace A255225.P18196711004752264656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257444 (n + 1) - A016777 (Nat.choose 2 (n + 2))

end

end A255225.P18196711004752264656

namespace A255225

/-- `A257444(n+1)-A016777(C(2, n+2))` -/
def P18196711004752264656.Spec : Prop :=
  ∀ n, P18196711004752264656.a n = A255225 (n + 1)

end A255225

/-! ## A255225.P16322422609903841962

`A257444(n+1)-A312054(C(2, n+2))`
-/

namespace A255225.P16322422609903841962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257444 (n + 1) - A312054 (Nat.choose 2 (n + 2))

end

end A255225.P16322422609903841962

namespace A255225

/-- `A257444(n+1)-A312054(C(2, n+2))` -/
def P16322422609903841962.Spec : Prop :=
  ∀ n, P16322422609903841962.a n = A255225 (n + 1)

end A255225

/-! ## A255225.P7200753476323029369

`A257444(n+1)-A123726(A023049(n+1))`
-/

namespace A255225.P7200753476323029369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257444 (n + 1) - A123726 (A023049 (n + 1)).toNat

end

end A255225.P7200753476323029369

namespace A255225

/-- `A257444(n+1)-A123726(A023049(n+1))` -/
def P7200753476323029369.Spec : Prop :=
  ∀ n, P7200753476323029369.a n = A255225 (n + 1)

end A255225

/-! ## A255225.P8973019174759877435

`A255222(n+1)+A345500(A345500(n+1))-A345500(n+1)`
-/

namespace A255225.P8973019174759877435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255222 (n + 1) + (A345500 (A345500 (n + 1)).toNat - A345500 (n + 1))

end

end A255225.P8973019174759877435

namespace A255225

/-- `A255222(n+1)+A345500(A345500(n+1))-A345500(n+1)` -/
def P8973019174759877435.Spec : Prop :=
  ∀ n, P8973019174759877435.a n = A255225 (n + 1)

end A255225

/-! ## A255225.P12662636853391216249

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=61, a(1)=67, a(2)=76, a(3)=88`
-/

namespace A255225.P12662636853391216249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [61, 67, 76, 88] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - a (n - 4)

end

end A255225.P12662636853391216249

namespace A255225

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P12662636853391216249.Spec : Prop :=
  ∀ n, P12662636853391216249.a n = A255225 (n + 1)

end A255225

/-! ## A255225.P4109833195843526638

`A255228(A374005(n+1))`
-/

namespace A255225.P4109833195843526638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255228 (A374005 (n + 1)).toNat

end

end A255225.P4109833195843526638

namespace A255225

/-- `A255228(A374005(n+1))` -/
def P4109833195843526638.Spec : Prop :=
  ∀ n, P4109833195843526638.a n = A255225 (n + 1)

end A255225

/-!
# A255226: Number of (n+2)X(6+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 2 and no column sum 2.

The programs for A255226, the canonical program `A255226.P4162017514556172731` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255226 has offset 1).

The definition of A255226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255226.P4162017514556172731

`A255225(n+1)+27`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A255226

/-- `A255225(n+1)+27` -/
def P4162017514556172731.Spec : Prop :=
  ∀ n, P4162017514556172731.a n = A255226 (n + 1)

theorem P4162017514556172731.correct : P4162017514556172731.Spec := by
  intro n
  simp only [A255226, Nat.add_sub_cancel]

end A255226

/-! ## A255226.P7739536637621715171

`A255223(n+1)+57`
-/

namespace A255226.P7739536637621715171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255223 (n + 1) + 57

end

end A255226.P7739536637621715171

namespace A255226

/-- `A255223(n+1)+57` -/
def P7739536637621715171.Spec : Prop :=
  ∀ n, P7739536637621715171.a n = A255226 (n + 1)

theorem P7739536637621715171.correct : P7739536637621715171.Spec := by
  intro n
  simp only [A255226, Nat.add_sub_cancel, A255226.P7739536637621715171.a, A255226.P4162017514556172731.a, A255223, A255223.P5524920262234694279.a, A255225, A255225.P10298454783296627816.a, A255222, A255222.P6503135029290947164.f1, A255222.P6503135029290947164.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255226

/-! ## A255226.P7238997296427945245

`A257445(n+1)-ceil(acot(n))`
-/

namespace A255226.P7238997296427945245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257445 (n + 1) - ⌈SequenceMachineLib.acot (n : ℝ)⌉

end

end A255226.P7238997296427945245

namespace A255226

/-- `A257445(n+1)-ceil(acot(n))` -/
def P7238997296427945245.Spec : Prop :=
  ∀ n, P7238997296427945245.a n = A255226 (n + 1)

end A255226

/-! ## A255226.P3822224335835943127

`4*(A257446(n+1)/4-10)`
-/

namespace A255226.P3822224335835943127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A257446 (n + 1) : ℚ) / 4 - 10)

end

end A255226.P3822224335835943127

namespace A255226

/-- `4*(A257446(n+1)/4-10)` -/
def P3822224335835943127.Spec : Prop :=
  ∀ n, P3822224335835943127.a n = (A255226 (n + 1) : ℚ)

theorem P3822224335835943127.correct : P3822224335835943127.Spec := by
  intro n
  simp only [A255226, Nat.add_sub_cancel, A255226.P3822224335835943127.a, A255226.P4162017514556172731.a, A255225, A255225.P10298454783296627816.a, A257446, A257446.P10810494062127799661.a, A255223, A255223.P5524920262234694279.a, A255227, A255227.P9716855678432011050.a, A255222, A255222.P6503135029290947164.f1, A255222.P6503135029290947164.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255226

/-! ## A255226.P10961289055509300513

`3*(A048588(n+1)+21)+1`
-/

namespace A255226.P10961289055509300513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A048588 (n + 1) + 21) + 1

end

end A255226.P10961289055509300513

namespace A255226

/-- `3*(A048588(n+1)+21)+1` -/
def P10961289055509300513.Spec : Prop :=
  ∀ n, P10961289055509300513.a n = A255226 (n + 1)

end A255226

/-! ## A255226.P11336355972097943700

`A257445(n+1)-A054977(n)`
-/

namespace A255226.P11336355972097943700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257445 (n + 1) - A054977 n

end

end A255226.P11336355972097943700

namespace A255226

/-- `A257445(n+1)-A054977(n)` -/
def P11336355972097943700.Spec : Prop :=
  ∀ n, P11336355972097943700.a n = A255226 (n + 1)

end A255226

/-! ## A255226.P8827794389876223668

`A255227(n+1)+A023481(n)-n`
-/

namespace A255226.P8827794389876223668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255227 (n + 1) + (A023481 n - (n : ℤ))

end

end A255226.P8827794389876223668

namespace A255226

/-- `A255227(n+1)+A023481(n)-n` -/
def P8827794389876223668.Spec : Prop :=
  ∀ n, P8827794389876223668.a n = A255226 (n + 1)

theorem P8827794389876223668.correct : P8827794389876223668.Spec := by
  intro n
  simp only [A255226, Nat.add_sub_cancel, A255226.P8827794389876223668.a, A255226.P4162017514556172731.a, A023481, A023481.P8149254853506171742.a, A255225, A255225.P10298454783296627816.a, A255227, A255227.P9716855678432011050.a, A255223, A255223.P5524920262234694279.a, A255222, A255222.P6503135029290947164.f1, A255222.P6503135029290947164.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255226

/-! ## A255226.P1129590798260714797

`A257446(n+1)+A023482(n)-n`
-/

namespace A255226.P1129590798260714797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257446 (n + 1) + (A023482 n - (n : ℤ))

end

end A255226.P1129590798260714797

namespace A255226

/-- `A257446(n+1)+A023482(n)-n` -/
def P1129590798260714797.Spec : Prop :=
  ∀ n, P1129590798260714797.a n = A255226 (n + 1)

theorem P1129590798260714797.correct : P1129590798260714797.Spec := by
  intro n
  simp only [A255226, Nat.add_sub_cancel, A255226.P1129590798260714797.a, A255226.P4162017514556172731.a, A023482, A023482.P907986368205919176.a, A255225, A255225.P10298454783296627816.a, A257446, A257446.P10810494062127799661.a, A255223, A255223.P5524920262234694279.a, A255227, A255227.P9716855678432011050.a, A255222, A255222.P6503135029290947164.f1, A255222.P6503135029290947164.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255226

/-! ## A255226.P585192966809129251

`A257445(n+1)-A000032(A019430(A005843(n)))`
-/

namespace A255226.P585192966809129251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257445 (n + 1) - A000032 (A019430 (A005843 n).toNat).toNat

end

end A255226.P585192966809129251

namespace A255226

/-- `A257445(n+1)-A000032(A019430(A005843(n)))` -/
def P585192966809129251.Spec : Prop :=
  ∀ n, P585192966809129251.a n = A255226 (n + 1)

end A255226

/-! ## A255226.P3467183115073419125

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=88, a(1)=94, a(2)=103, a(3)=115`
-/

namespace A255226.P3467183115073419125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [88, 94, 103, 115] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - a (n - 4)

end

end A255226.P3467183115073419125

namespace A255226

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P3467183115073419125.Spec : Prop :=
  ∀ n, P3467183115073419125.a n = A255226 (n + 1)

end A255226

/-!
# A255227: Number of (n+2)X(7+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 2 and no column sum 2.

The programs for A255227, the canonical program `A255227.P9716855678432011050` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255227 has offset 1).

The definition of A255227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255227.P646191130477179191

`A257446(n+1)-1`
-/

namespace A255227.P646191130477179191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257446 (n + 1) - 1

end

end A255227.P646191130477179191

namespace A255227

/-- `A257446(n+1)-1` -/
def P646191130477179191.Spec : Prop :=
  ∀ n, P646191130477179191.a n = A255227 (n + 1)

theorem P646191130477179191.correct : P646191130477179191.Spec := by
  intro n
  simp only [A255227, Nat.add_sub_cancel, A255227.P646191130477179191.a, A255227.P9716855678432011050.a, A255225, A255225.P10298454783296627816.a, A257446, A257446.P10810494062127799661.a, A255223, A255223.P5524920262234694279.a, A255222, A255222.P6503135029290947164.f1, A255222.P6503135029290947164.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255227

/-! ## A255227.P9716855678432011050

`A255225(n+1)+66`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A255227

/-- `A255225(n+1)+66` -/
def P9716855678432011050.Spec : Prop :=
  ∀ n, P9716855678432011050.a n = A255227 (n + 1)

theorem P9716855678432011050.correct : P9716855678432011050.Spec := by
  intro n
  simp only [A255227, Nat.add_sub_cancel]

end A255227

/-! ## A255227.P15867666727370008860

`A300547(A045367(n+1))+A257446(n+1)`
-/

namespace A255227.P15867666727370008860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300547 (A045367 (n + 1)).toNat + A257446 (n + 1)

end

end A255227.P15867666727370008860

namespace A255227

/-- `A300547(A045367(n+1))+A257446(n+1)` -/
def P15867666727370008860.Spec : Prop :=
  ∀ n, P15867666727370008860.a n = A255227 (n + 1)

end A255227

/-! ## A255227.P4260504894962476458

`A300547(A241686(n+1))+A257446(n+1)`
-/

namespace A255227.P4260504894962476458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300547 (A241686 (n + 1)).toNat + A257446 (n + 1)

end

end A255227.P4260504894962476458

namespace A255227

/-- `A300547(A241686(n+1))+A257446(n+1)` -/
def P4260504894962476458.Spec : Prop :=
  ∀ n, P4260504894962476458.a n = A255227 (n + 1)

end A255227

/-! ## A255227.P13730697370832302544

`A255226(n+1)+A344807(A344807(n+1))-A344807(n+1)`
-/

namespace A255227.P13730697370832302544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255226 (n + 1) + (A344807 (A344807 (n + 1)).toNat - A344807 (n + 1))

end

end A255227.P13730697370832302544

namespace A255227

/-- `A255226(n+1)+A344807(A344807(n+1))-A344807(n+1)` -/
def P13730697370832302544.Spec : Prop :=
  ∀ n, P13730697370832302544.a n = A255227 (n + 1)

end A255227

/-! ## A255227.P17887507874393212741

`A255224(n+1)+A345487(A345487(n+1))-A345487(n+1)`
-/

namespace A255227.P17887507874393212741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255224 (n + 1) + (A345487 (A345487 (n + 1)).toNat - A345487 (n + 1))

end

end A255227.P17887507874393212741

namespace A255227

/-- `A255224(n+1)+A345487(A345487(n+1))-A345487(n+1)` -/
def P17887507874393212741.Spec : Prop :=
  ∀ n, P17887507874393212741.a n = A255227 (n + 1)

end A255227

/-! ## A255227.P13420034014263123704

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=127, a(1)=133, a(2)=142, a(3)=154`
-/

namespace A255227.P13420034014263123704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [127, 133, 142, 154] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - a (n - 4)

end

end A255227.P13420034014263123704

namespace A255227

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` -/
def P13420034014263123704.Spec : Prop :=
  ∀ n, P13420034014263123704.a n = A255227 (n + 1)

end A255227

/-! ## A255227.P6320605421029105818

`A255228(A374008(n+1))`
-/

namespace A255227.P6320605421029105818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255228 (A374008 (n + 1)).toNat

end

end A255227.P6320605421029105818

namespace A255227

/-- `A255228(A374008(n+1))` -/
def P6320605421029105818.Spec : Prop :=
  ∀ n, P6320605421029105818.a n = A255227 (n + 1)

end A255227

/-!
# A255229: Integers n such that n^2 - 1 is the difference of the squares of twin primes.

The programs for A255229, there is no canonical definition to state claims against.
-/

/-! ## A255229.P13443969165589412086

`sqrt(A131706(n+1))`
-/

namespace A255229.P13443969165589412086
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A131706 (n + 1) : ℝ)

end

end A255229.P13443969165589412086

/-! ## A255229.P7971758238502092158

`2*A088485(n+1)+1`
-/

namespace A255229.P7971758238502092158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088485 (n + 1) + 1

end

end A255229.P7971758238502092158

/-! ## A255229.P8628178713226395223

`2*A131530(n+1)-1`
-/

namespace A255229.P8628178713226395223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131530 (n + 1) - 1

end

end A255229.P8628178713226395223

/-! ## A255229.P2092718658074206842

`ceil(2*sqrt(A088486(n+1)))`
-/

namespace A255229.P2092718658074206842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (A088486 (n + 1) : ℝ)⌉

end

end A255229.P2092718658074206842

/-! ## A255229.P4409487197172607751

`ceil(2*sqrt(A265006(Δ[n²])))`
-/

namespace A255229.P4409487197172607751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (A265006 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)⌉

end

end A255229.P4409487197172607751

/-! ## A255229.P2120263517245400760

`floor(2*sqrt(A265006(2*(n+1))))`
-/

namespace A255229.P2120263517245400760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (A265006 (2 * (n + 1)) : ℝ)⌋

end

end A255229.P2120263517245400760

/-! ## A255229.P5758830696199806256

`A004273(A131530(n+1))`
-/

namespace A255229.P5758830696199806256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A131530 (n + 1)).toNat

end

end A255229.P5758830696199806256

/-! ## A255229.P5649975205713344638

`A130773(A088485(n+1))`
-/

namespace A255229.P5649975205713344638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A088485 (n + 1)).toNat

end

end A255229.P5649975205713344638

/-! ## A255229.P255655687356601305

`A004273(A088485(n+1)+1)`
-/

namespace A255229.P255655687356601305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A088485 (n + 1) + 1).toNat

end

end A255229.P255655687356601305

/-! ## A255229.P15524880060459322424

`A004280(A131530(n+1)+1)`
-/

namespace A255229.P15524880060459322424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A131530 (n + 1) + 1).toNat

end

end A255229.P15524880060459322424

/-!
# A255230: Integers n such that n^2 = 2*x*(y-x), where x and y are consecutive terms in A014574.

The programs for A255230, there is no canonical definition to state claims against.
-/

/-! ## A255230.P2345834604738517418

`2*A367224(A367659(n))*A122155(A063655(n+1))`
-/

namespace A255230.P2345834604738517418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A367224 (A367659 n).toNat * A122155 (A063655 (n + 1)).toNat

end

end A255230.P2345834604738517418

/-!
# A255231: The number of factorizations n = Product_i b_i^e_i, where all bases b_i are distinct, and all exponents e_i are distinct >=1.

The programs for A255231, there is no canonical definition to state claims against.
-/

/-! ## A255231.P11035242216040574115

`A173276(A347439(n+1)+A321271(n+1))`
-/

namespace A255231.P11035242216040574115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173276 (A347439 (n + 1) + A321271 (n + 1)).toNat

end

end A255231.P11035242216040574115

/-! ## A255231.P10098268174258100791

`A227568(A159631(n+1)*A327658(n+1))`
-/

namespace A255231.P10098268174258100791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A159631 (n + 1) * A327658 (n + 1)).toNat

end

end A255231.P10098268174258100791

/-! ## A255231.P7331211251913863684

`A194339(A295935(n+1)-A028422(n+1))`
-/

namespace A255231.P7331211251913863684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194339 (A295935 (n + 1) - A028422 (n + 1)).toNat

end

end A255231.P7331211251913863684

/-! ## A255231.P10808171958076424913

`A020915(A305193(n+1)%A259531(3*n+1))`
-/

namespace A255231.P10808171958076424913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (Int.tmod (A305193 (n + 1)) (A259531 (3 * n + 1))).toNat

end

end A255231.P10808171958076424913

/-! ## A255231.P3722112278504427489

`A020915(A305193(n+1)%A271988(n))`
-/

namespace A255231.P3722112278504427489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (Int.tmod (A305193 (n + 1)) (A271988 n)).toNat

end

end A255231.P3722112278504427489

/-! ## A255231.P16390156766528204723

`A001222(A046523(n+1)+A000688(n+1)!)`
-/

namespace A255231.P16390156766528204723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A046523 (n + 1) + (Nat.factorial (A000688 (n + 1)).toNat : ℤ)).toNat

end

end A255231.P16390156766528204723

/-! ## A255231.P2911127357114635955

`A000688(n+1)-A004526(∏{e}[n+1, A038105(#)])`
-/

namespace A255231.P2911127357114635955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) - A004526 (∏ p ∈ Nat.primeFactors (f1 n), A038105 (Nat.factorization (f1 n) p)).toNat

end

end A255231.P2911127357114635955

/-!
# A255232: One half of the fundamental positive solution y = y1(n) of the first class of the Pell equation x^2 - 2*y^2 = -A007522(n), n >= 1 (primes congruent to 7 mod 8).

The programs for A255232, there is no canonical definition to state claims against.
-/

/-! ## A255232.P1800999155266337499

`(A255234(n+1)+A254938(n+1))/3`
-/

namespace A255232.P1800999155266337499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255234 (n + 1) + A254938 (n + 1) : ℚ) / 3

end

end A255232.P1800999155266337499

/-! ## A255232.P16948679459469111703

`3*A255234(n+1)-A255233(n+1)`
-/

namespace A255232.P16948679459469111703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A255234 (n + 1) - A255233 (n + 1)

end

end A255232.P16948679459469111703

/-! ## A255232.P14306227497199942911

`A002264(A255234(n+1)+A254938(n+1))`
-/

namespace A255232.P14306227497199942911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A255234 (n + 1) + A254938 (n + 1)).toNat

end

end A255232.P14306227497199942911

/-! ## A255232.P10243522112210699052

`A047878(A255234(n+1)+A254938(n+1))`
-/

namespace A255232.P10243522112210699052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047878 (A255234 (n + 1) + A254938 (n + 1)).toNat

end

end A255232.P10243522112210699052

/-! ## A255232.P14666779417132810243

`A108738(A255234(n+1)+A254938(n+1))`
-/

namespace A255232.P14666779417132810243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108738 (A255234 (n + 1) + A254938 (n + 1)).toNat

end

end A255232.P14666779417132810243

/-! ## A255232.P7152665154265450584

`A255588(A255234(n+1)+A254938(n+1))`
-/

namespace A255232.P7152665154265450584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255588 (A255234 (n + 1) + A254938 (n + 1)).toNat

end

end A255232.P7152665154265450584

/-! ## A255232.P4187858395104335334

`A008486(A255234(n+1))-A255233(n+1)`
-/

namespace A255232.P4187858395104335334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A255234 (n + 1)).toNat - A255233 (n + 1)

end

end A255232.P4187858395104335334

/-! ## A255232.P16947498663350284389

`A254764(n+1)-A255234(n+1)`
-/

namespace A255232.P16947498663350284389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254764 (n + 1) - A255234 (n + 1)

end

end A255232.P16947498663350284389

/-! ## A255232.P6708350486126046687

`A255234(n+1)-A254765(n+1)`
-/

namespace A255232.P6708350486126046687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255234 (n + 1) - A254765 (n + 1)

end

end A255232.P6708350486126046687

/-! ## A255232.P5551288113037126108

`(A254938(n+1)+A254765(n+1))/2`
-/

namespace A255232.P5551288113037126108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254938 (n + 1) + A254765 (n + 1) : ℚ) / 2

end

end A255232.P5551288113037126108

/-!
# A255233: Fundamental positive solution x = x2(n) of the second class of the Pell equation x^2 - 2*y^2 = -A007522(n), n >= 1 (primes congruent to 7 mod 8).

The programs for A255233, there is no canonical definition to state claims against.
-/

/-! ## A255233.P9952585135648912166

`3*A255234(n+1)-A255232(n+1)`
-/

namespace A255233.P9952585135648912166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A255234 (n + 1) - A255232 (n + 1)

end

end A255233.P9952585135648912166

/-! ## A255233.P7829999413505601964

`A008486(A255234(n+1))-A255232(n+1)`
-/

namespace A255233.P7829999413505601964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A255234 (n + 1)).toNat - A255232 (n + 1)

end

end A255233.P7829999413505601964

/-! ## A255233.P15172526174714440147

`A008590(A255232(n+1))-A008486(A254938(n+1))`
-/

namespace A255233.P15172526174714440147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A255232 (n + 1)).toNat - A008486 (A254938 (n + 1)).toNat

end

end A255233.P15172526174714440147

/-! ## A255233.P15364484470330884937

`A004277(A255234(n+1)+A255232(n+1))-A254938(n+1)`
-/

namespace A255233.P15364484470330884937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A255234 (n + 1) + A255232 (n + 1)).toNat - A254938 (n + 1)

end

end A255233.P15364484470330884937

/-! ## A255233.P12224088872758584309

`A005843(A255234(n+1)+A255232(n+1))-A254938(n+1)`
-/

namespace A255233.P12224088872758584309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A255234 (n + 1) + A255232 (n + 1)).toNat - A254938 (n + 1)

end

end A255233.P12224088872758584309

/-! ## A255233.P10024668871549583656

`A254764(n+1)+2*A254765(n+1)`
-/

namespace A255233.P10024668871549583656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254764 (n + 1) + 2 * A254765 (n + 1)

end

end A255233.P10024668871549583656

/-! ## A255233.P7353831457920751207

`A254765(n+1)+2*A255234(n+1)`
-/

namespace A255233.P7353831457920751207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254765 (n + 1) + 2 * A255234 (n + 1)

end

end A255233.P7353831457920751207

/-! ## A255233.P5888666794744913415

`2*A254764(n+1)-A254938(n+1)`
-/

namespace A255233.P5888666794744913415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A254764 (n + 1) - A254938 (n + 1)

end

end A255233.P5888666794744913415

/-! ## A255233.P11408205679028311394

`A254764(n+1)+A004277(A254765(n+1))`
-/

namespace A255233.P11408205679028311394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254764 (n + 1) + A004277 (A254765 (n + 1)).toNat

end

end A255233.P11408205679028311394

/-! ## A255233.P2034599819916125206

`A254765(n+1)+A004277(A255234(n+1))`
-/

namespace A255233.P2034599819916125206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254765 (n + 1) + A004277 (A255234 (n + 1)).toNat

end

end A255233.P2034599819916125206

/-!
# A255234: One half of the fundamental positive solution y = y2(n) of the second class of the Pell equation x^2 - 2*y^2 = -A007522(n), n>=1 (primes congruent to 7 mod 8).

The programs for A255234, there is no canonical definition to state claims against.
-/

/-! ## A255234.P10097178117761760057

`3*A255232(n+1)-A254938(n+1)`
-/

namespace A255234.P10097178117761760057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A255232 (n + 1) - A254938 (n + 1)

end

end A255234.P10097178117761760057

/-! ## A255234.P15359040970531884255

`(A255233(n+1)+A255232(n+1))/3`
-/

namespace A255234.P15359040970531884255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255233 (n + 1) + A255232 (n + 1) : ℚ) / 3

end

end A255234.P15359040970531884255

/-! ## A255234.P12365740849325550448

`A002264(A255233(n+1)+A255232(n+1))`
-/

namespace A255234.P12365740849325550448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A255233 (n + 1) + A255232 (n + 1)).toNat

end

end A255234.P12365740849325550448

/-! ## A255234.P16053963963092935669

`A047878(A255233(n+1)+A255232(n+1))`
-/

namespace A255234.P16053963963092935669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047878 (A255233 (n + 1) + A255232 (n + 1)).toNat

end

end A255234.P16053963963092935669

/-! ## A255234.P3482930309707182581

`A108738(A255233(n+1)+A255232(n+1))`
-/

namespace A255234.P3482930309707182581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108738 (A255233 (n + 1) + A255232 (n + 1)).toNat

end

end A255234.P3482930309707182581

/-! ## A255234.P11701361975241270804

`A255588(A255233(n+1)+A255232(n+1))`
-/

namespace A255234.P11701361975241270804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255588 (A255233 (n + 1) + A255232 (n + 1)).toNat

end

end A255234.P11701361975241270804

/-! ## A255234.P17885896855966499176

`A008486(A255232(n+1))-A254938(n+1)`
-/

namespace A255234.P17885896855966499176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A255232 (n + 1)).toNat - A254938 (n + 1)

end

end A255234.P17885896855966499176

/-! ## A255234.P8794013810376534941

`A255232(n+1)+A254765(n+1)`
-/

namespace A255234.P8794013810376534941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255232 (n + 1) + A254765 (n + 1)

end

end A255234.P8794013810376534941

/-! ## A255234.P1001678838416316922

`A254764(n+1)-A255232(n+1)`
-/

namespace A255234.P1001678838416316922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254764 (n + 1) - A255232 (n + 1)

end

end A255234.P1001678838416316922

/-! ## A255234.P6239855156864973200

`(A254765(n+1)+A254764(n+1))/2`
-/

namespace A255234.P6239855156864973200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254765 (n + 1) + A254764 (n + 1) : ℚ) / 2

end

end A255234.P6239855156864973200

/-!
# A255235: Fundamental positive solution x = x1(n) of the first class of the Pell equation x^2 - 2*y^2 = -A038873(n), n>=1 (primes congruent to {1,2,7} mod 8).

The programs for A255235, there is no canonical definition to state claims against.
-/

/-! ## A255235.P1521433369070965589

`2*A255246(n+1)-A002334(n+1)`
-/

namespace A255235.P1521433369070965589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255246 (n + 1) - A002334 (n + 1)

end

end A255235.P1521433369070965589

/-! ## A255235.P3019022855734170988

`xor(1, A255246(n+1)-A002335(n+1))+1`
-/

namespace A255235.P3019022855734170988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A255246 (n + 1) - A002335 (n + 1)) + 1

end

end A255235.P3019022855734170988

/-! ## A255235.P5092160269674409932

`A004277(A255246(n+1))-A002334(n+1)`
-/

namespace A255235.P5092160269674409932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A255246 (n + 1)).toNat - A002334 (n + 1)

end

end A255235.P5092160269674409932

/-! ## A255235.P1391788576744123473

`A022998(A255246(n+1)-A002335(n+1))`
-/

namespace A255235.P1391788576744123473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A255246 (n + 1) - A002335 (n + 1)).toNat

end

end A255235.P1391788576744123473

/-! ## A255235.P12573180231056992029

`A114562(A255246(n+1)-A002335(n+1))`
-/

namespace A255235.P12573180231056992029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114562 (A255246 (n + 1) - A002335 (n + 1)).toNat

end

end A255235.P12573180231056992029

/-! ## A255235.P13562398017503134948

`A257088(A255246(n+1)-A002335(n+1))`
-/

namespace A255235.P13562398017503134948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (A255246 (n + 1) - A002335 (n + 1)).toNat

end

end A255235.P13562398017503134948

/-!
# A255236: All positive solutions x of the second class of the Pell equation x^2 - 2*y^2 = -7.

The programs for A255236, the canonical program `A255236.P7567830796154587611` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255236 has offset 0).

The definition of A255236 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255236.P7567830796154587611

`6*a(n-1)-a(n-2)` with `a(0)=5, a(1)=31`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255236

/-- `6*a(n-1)-a(n-2)` -/
def P7567830796154587611.Spec : Prop :=
  ∀ n, P7567830796154587611.a n = A255236 n

theorem P7567830796154587611.correct : P7567830796154587611.Spec := by
  intro n
  simp only [A255236]

end A255236

/-! ## A255236.P6080839742363593821

`2*A038761(n)+A038762(n)`
-/

namespace A255236.P6080839742363593821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038761 n + A038762 n

end

end A255236.P6080839742363593821

namespace A255236

/-- `2*A038761(n)+A038762(n)` -/
def P6080839742363593821.Spec : Prop :=
  ∀ n, P6080839742363593821.a n = A255236 n

end A255236

/-! ## A255236.P4177283673412788978

`ogf((5+x)/(1-6x+x^2))`
-/

namespace A255236.P4177283673412788978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 1] [1, -6, 1] n

end

end A255236.P4177283673412788978

namespace A255236

/-- `ogf((5+x)/(1-6x+x^2))` -/
def P4177283673412788978.Spec : Prop :=
  ∀ n, P4177283673412788978.a n = A255236 n

end A255236

/-! ## A255236.P9584112179297593397

`or(3^(n%2), floor(a(n-1)/(3-sqrt(8))))` with `a(0)=5`
-/

namespace A255236.P9584112179297593397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  Int.lor (3 ^ (n % 2) : ℤ) ⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

end

end A255236.P9584112179297593397

namespace A255236

/-- `or(3^(n%2), floor(a(n-1)/(3-sqrt(8))))` -/
def P9584112179297593397.Spec : Prop :=
  ∀ n, P9584112179297593397.a n = A255236 n

end A255236

/-! ## A255236.P169878579527145401

`record[a(n-2)-a(n-1)-a(n-1)]` with `a(0)=5, a(1)=-3, a(2)=5`
-/

namespace A255236.P169878579527145401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, -3, 5] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255236.P169878579527145401

namespace A255236

/-- `record[a(n-2)-a(n-1)-a(n-1)]` -/
def P169878579527145401.Spec : Prop :=
  ∀ n, P169878579527145401.a n = A255236 n

end A255236

/-! ## A255236.P14860222614501520624

`Δ[A108262(n)]`
-/

namespace A255236.P14860222614501520624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255236.P14860222614501520624

namespace A255236

/-- `Δ[A108262(n)]` -/
def P14860222614501520624.Spec : Prop :=
  ∀ n, P14860222614501520624.a n = A255236 n

end A255236

/-! ## A255236.P12695071722940436995

`Δ[A212329(n+1)]`
-/

namespace A255236.P12695071722940436995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255236.P12695071722940436995

namespace A255236

/-- `Δ[A212329(n+1)]` -/
def P12695071722940436995.Spec : Prop :=
  ∀ n, P12695071722940436995.a n = A255236 n

end A255236

/-! ## A255236.P13200650962345590944

`Δ[A098790(2*n)]`
-/

namespace A255236.P13200650962345590944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098790 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255236.P13200650962345590944

namespace A255236

/-- `Δ[A098790(2*n)]` -/
def P13200650962345590944.Spec : Prop :=
  ∀ n, P13200650962345590944.a n = A255236 n

end A255236

/-! ## A255236.P4666977317673663866

`Δ[A375726(2*n)]`
-/

namespace A255236.P4666977317673663866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375726 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255236.P4666977317673663866

namespace A255236

/-- `Δ[A375726(2*n)]` -/
def P4666977317673663866.Spec : Prop :=
  ∀ n, P4666977317673663866.a n = A255236 n

end A255236

/-! ## A255236.P7918192151638059625

`Δ[A038762(n)/2]`
-/

namespace A255236.P7918192151638059625
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038762 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255236.P7918192151638059625

namespace A255236

/-- `Δ[A038762(n)/2]` -/
def P7918192151638059625.Spec : Prop :=
  ∀ n, P7918192151638059625.a n = (A255236 n : ℚ)

end A255236

/-! ## A255236.P14984807227682834391

`Δ[A124124(Δ[n²])]`
-/

namespace A255236.P14984807227682834391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124124 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255236.P14984807227682834391

namespace A255236

/-- `Δ[A124124(Δ[n²])]` -/
def P14984807227682834391.Spec : Prop :=
  ∀ n, P14984807227682834391.a n = A255236 n

end A255236

/-! ## A255236.P6595891429737507845

`Δ[A353580(Δ[n²])]`
-/

namespace A255236.P6595891429737507845
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353580 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255236.P6595891429737507845

namespace A255236

/-- `Δ[A353580(Δ[n²])]` -/
def P6595891429737507845.Spec : Prop :=
  ∀ n, P6595891429737507845.a n = A255236 n

end A255236

/-! ## A255236.P15777238495467435086

`A077446(2*(n+1))`
-/

namespace A255236.P15777238495467435086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077446 (2 * (n + 1))

end

end A255236.P15777238495467435086

namespace A255236

/-- `A077446(2*(n+1))` -/
def P15777238495467435086.Spec : Prop :=
  ∀ n, P15777238495467435086.a n = A255236 n

end A255236

/-! ## A255236.P9280728221760976548

`A135532(2*(n+1))`
-/

namespace A255236.P9280728221760976548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135532 (2 * (n + 1))

end

end A255236.P9280728221760976548

namespace A255236

/-- `A135532(2*(n+1))` -/
def P9280728221760976548.Spec : Prop :=
  ∀ n, P9280728221760976548.a n = A255236 n

end A255236

/-! ## A255236.P14257241465188590599

`A266505(4*(n+1))`
-/

namespace A255236.P14257241465188590599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (4 * (n + 1))

end

end A255236.P14257241465188590599

namespace A255236

/-- `A266505(4*(n+1))` -/
def P14257241465188590599.Spec : Prop :=
  ∀ n, P14257241465188590599.a n = A255236 n

end A255236

/-! ## A255236.P16083224668810154674

`Δ[Δ[A353580(2*n)/2]]`
-/

namespace A255236.P16083224668810154674
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353580 (2 * n) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255236.P16083224668810154674

namespace A255236

/-- `Δ[Δ[A353580(2*n)/2]]` -/
def P16083224668810154674.Spec : Prop :=
  ∀ n, P16083224668810154674.a n = (A255236 n : ℚ)

end A255236

/-! ## A255236.P6099780981538540451

`Δ[A077443(2*n+1)/2]`
-/

namespace A255236.P6099780981538540451
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077443 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255236.P6099780981538540451

namespace A255236

/-- `Δ[A077443(2*n+1)/2]` -/
def P6099780981538540451.Spec : Prop :=
  ∀ n, P6099780981538540451.a n = (A255236 n : ℚ)

end A255236

/-! ## A255236.P11969614810398973769

`2*A006451(2*n+1)+1`
-/

namespace A255236.P11969614810398973769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006451 (2 * n + 1) + 1

end

end A255236.P11969614810398973769

namespace A255236

/-- `2*A006451(2*n+1)+1` -/
def P11969614810398973769.Spec : Prop :=
  ∀ n, P11969614810398973769.a n = A255236 n

end A255236

/-! ## A255236.P14087394857080787598

`2*A098790(2*n+1)+1`
-/

namespace A255236.P14087394857080787598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098790 (2 * n + 1) + 1

end

end A255236.P14087394857080787598

namespace A255236

/-- `2*A098790(2*n+1)+1` -/
def P14087394857080787598.Spec : Prop :=
  ∀ n, P14087394857080787598.a n = A255236 n

end A255236

/-! ## A255236.P6458210544290232876

`floor(sqrt(2)*A048654(2*n+1))`
-/

namespace A255236.P6458210544290232876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (A048654 (2 * n + 1) : ℝ)⌋

end

end A255236.P6458210544290232876

namespace A255236

/-- `floor(sqrt(2)*A048654(2*n+1))` -/
def P6458210544290232876.Spec : Prop :=
  ∀ n, P6458210544290232876.a n = A255236 n

end A255236

/-!
# A255238: Triangle T(n, m) of numbers of points of a square lattice covered by a circular disk of radius n (centered at any lattice point taken as origin) with ordinate y = m in the first quadrant.

The programs for A255238, the canonical program `A255238.P7223276445412237540` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255238 has offset 0).

The definition of A255238 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255238.P7223276445412237540

`1+floor(sqrt(row(n)²-col(n)²))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255238

/-- `1+floor(sqrt(row(n)²-col(n)²))` -/
def P7223276445412237540.Spec : Prop :=
  ∀ n, P7223276445412237540.a n = A255238 n

theorem P7223276445412237540.correct : P7223276445412237540.Spec := by
  intro n
  simp only [A255238]

end A255238

/-! ## A255238.P18180373381787925259

`floor(sqrt(A335821(n)))+1`
-/

namespace A255238.P18180373381787925259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A335821 n) + 1

end

end A255238.P18180373381787925259

namespace A255238

/-- `floor(sqrt(A335821(n)))+1` -/
def P18180373381787925259.Spec : Prop :=
  ∀ n, P18180373381787925259.a n = A255238 n

theorem P18180373381787925259.correct : P18180373381787925259.Spec := by
  intro n
  simp only [A255238, Nat.add_sub_cancel, A255238.P18180373381787925259.a, A255238.P7223276445412237540.a, A335821, A335821.P109563387027522563.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255238

/-! ## A255238.P2106352070616987164

`A000196(A335821(n))+1`
-/

namespace A255238.P2106352070616987164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A335821 n).toNat + 1

end

end A255238.P2106352070616987164

namespace A255238

/-- `A000196(A335821(n))+1` -/
def P2106352070616987164.Spec : Prop :=
  ∀ n, P2106352070616987164.a n = A255238 n

end A255238

/-! ## A255238.P8843722495452138098

`A003059(A335821(n)+1)`
-/

namespace A255238.P8843722495452138098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A335821 n + 1).toNat

end

end A255238.P8843722495452138098

namespace A255238

/-- `A003059(A335821(n)+1)` -/
def P8843722495452138098.Spec : Prop :=
  ∀ n, P8843722495452138098.a n = A255238 n

end A255238

/-! ## A255238.P17685912683471711700

`A005496(floor(sqrt(A335821(n))))`
-/

namespace A255238.P17685912683471711700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (Int.sqrt (A335821 n)).toNat

end

end A255238.P17685912683471711700

namespace A255238

/-- `A005496(floor(sqrt(A335821(n))))` -/
def P17685912683471711700.Spec : Prop :=
  ∀ n, P17685912683471711700.a n = A255238 n

end A255238

/-! ## A255238.P17157280396195038448

`A005555(floor(sqrt(A335821(n))))`
-/

namespace A255238.P17157280396195038448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (Int.sqrt (A335821 n)).toNat

end

end A255238.P17157280396195038448

namespace A255238

/-- `A005555(floor(sqrt(A335821(n))))` -/
def P17157280396195038448.Spec : Prop :=
  ∀ n, P17157280396195038448.a n = A255238 n

end A255238

/-! ## A255238.P18308574708318270300

`A008619(floor(2*sqrt(A335821(n))))`
-/

namespace A255238.P18308574708318270300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ⌊2 * Real.sqrt (A335821 n : ℝ)⌋.toNat

end

end A255238.P18308574708318270300

namespace A255238

/-- `A008619(floor(2*sqrt(A335821(n))))` -/
def P18308574708318270300.Spec : Prop :=
  ∀ n, P18308574708318270300.a n = A255238 n

end A255238

/-! ## A255238.P16211932036091121727

`A008611(3*floor(sqrt(A335821(n))))`
-/

namespace A255238.P16211932036091121727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * Int.sqrt (A335821 n)).toNat

end

end A255238.P16211932036091121727

namespace A255238

/-- `A008611(3*floor(sqrt(A335821(n))))` -/
def P16211932036091121727.Spec : Prop :=
  ∀ n, P16211932036091121727.a n = A255238 n

end A255238

/-! ## A255238.P16328751043526040913

`A000005(2^floor(sqrt(A335821(n))))`
-/

namespace A255238.P16328751043526040913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.sqrt (A335821 n) : ℤ))).toNat

end

end A255238.P16328751043526040913

namespace A255238

/-- `A000005(2^floor(sqrt(A335821(n))))` -/
def P16328751043526040913.Spec : Prop :=
  ∀ n, P16328751043526040913.a n = A255238 n

end A255238

/-! ## A255238.P17184558223612799539

`A001222(2*2^floor(sqrt(A335821(n))))`
-/

namespace A255238.P17184558223612799539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (2 * (2 : ℚ) ^ (Int.sqrt (A335821 n) : ℤ))).toNat

end

end A255238.P17184558223612799539

namespace A255238

/-- `A001222(2*2^floor(sqrt(A335821(n))))` -/
def P17184558223612799539.Spec : Prop :=
  ∀ n, P17184558223612799539.a n = A255238 n

end A255238

/-!
# A255239: Alternating row sums of triangle A255238.

The programs for A255239, there is no canonical definition to state claims against.
-/

/-! ## A255239.P18436581259818354969

`A259042(A055775(n))+A226107(n+1)`
-/

namespace A255239.P18436581259818354969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259042 (A055775 n).toNat + A226107 (n + 1)

end

end A255239.P18436581259818354969

/-! ## A255239.P9383647459685662601

`A100678(A306200(n+1))`
-/

namespace A255239.P9383647459685662601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100678 (A306200 (n + 1)).toNat

end

end A255239.P9383647459685662601

/-! ## A255239.P15893583207558390484

`A134021(A056040(n)-A134987(n))`
-/

namespace A255239.P15893583207558390484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (A056040 n - A134987 n).toNat

end

end A255239.P15893583207558390484

/-! ## A255239.P4746218445880117977

`A073093(A050157(n)*A208355(n))`
-/

namespace A255239.P4746218445880117977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A050157 n * A208355 n).toNat

end

end A255239.P4746218445880117977

/-! ## A255239.P14703967458120163882

`A000120(or(A011973(n), A056040(n)))`
-/

namespace A255239.P14703967458120163882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lor (A011973 n) (A056040 n)).toNat

end

end A255239.P14703967458120163882

/-!
# A255240: Decimal expansion of 1/(2*cos(Pi/7)).

The programs for A255240, there is no canonical definition to state claims against.
-/

/-! ## A255240.P12875024695388915283

`9-A255241(n)`
-/

namespace A255240.P12875024695388915283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A255241 n

end

end A255240.P12875024695388915283

/-!
# A255241: Decimal expansion of 2*cos(3*Pi/7).

The programs for A255241, there is no canonical definition to state claims against.
-/

/-! ## A255241.P14617751480718036290

`9-A255240(n)`
-/

namespace A255241.P14617751480718036290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A255240 n

end

end A255241.P14617751480718036290

/-!
# A255242: Calculate the aliquot parts of a number n and take their sum. Then repeat the process calculating the aliquot parts of all the previous aliquot parts and add their sum to the previous one. Repeat the process until the sum to be added is zero. Sequence lists these sums.

The programs for A255242, there is no canonical definition to state claims against.
-/

/-! ## A255242.P12017073930695192618

`A330575(n+1)-(n+1)`
-/

namespace A255242.P12017073930695192618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330575 (n + 1) - (n + 1 : ℤ)

end

end A255242.P12017073930695192618

/-! ## A255242.P13879413205185401439

`(A191161(n+1)-(n+1))/2`
-/

namespace A255242.P13879413205185401439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191161 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A255242.P13879413205185401439

/-! ## A255242.P4743903876858756536

`∑{d}[n+1, #*A002033((n+1)/#-1)]-(n+1)`
-/

namespace A255242.P4743903876858756536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A002033 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat - (n + 1 : ℤ)

end

end A255242.P4743903876858756536

/-! ## A255242.P10633297623403914968

`A191161(n+1)%A330575(n+1)`
-/

namespace A255242.P10633297623403914968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191161 (n + 1)) (A330575 (n + 1))

end

end A255242.P10633297623403914968

/-! ## A255242.P3672050377389098298

`∑{d}[n+1, A001065(#)*A074206((n+1)/#)]`
-/

namespace A255242.P3672050377389098298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A074206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A255242.P3672050377389098298

/-! ## A255242.P2294209250502068105

`∑{d}[n+1, A051953(#)*A067824((n+1)/#)]`
-/

namespace A255242.P2294209250502068105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051953 d * A067824 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A255242.P2294209250502068105

/-! ## A255242.P7159252099977678537

`∑{d}[n+1, A000203(#)*A174726((n+1)/#)]`
-/

namespace A255242.P7159252099977678537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A174726 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A255242.P7159252099977678537

/-! ## A255242.P12510066186331422216

`∑{d}[n+1, A062790(#)*A253249((n+1)/#)]`
-/

namespace A255242.P12510066186331422216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062790 d * A253249 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A255242.P12510066186331422216

/-! ## A255242.P13133182623735351453

`∑{d}[n+1, A157658(#)*A191161((n+1)/#)]`
-/

namespace A255242.P13133182623735351453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A191161 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A255242.P13133182623735351453

/-! ## A255242.P4584812517304076883

`∑{d}[n+1, A174725(#)*A211779((n+1)/#)]`
-/

namespace A255242.P4584812517304076883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174725 d * A211779 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A255242.P4584812517304076883

/-! ## A255242.P15195748321199537308

`∑{d}[n+1, A245211(#)*A323910((n+1)/#)]`
-/

namespace A255242.P15195748321199537308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A245211 d * A323910 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A255242.P15195748321199537308

/-! ## A255242.P16237443593942483464

`∑{d}[n+1, A001065(#)*A002033((n+1)/#-1)]`
-/

namespace A255242.P16237443593942483464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A002033 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A255242.P16237443593942483464

/-! ## A255242.P13517212885975646585

`A025480(A191161(n+1)-(n+1))`
-/

namespace A255242.P13517212885975646585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A191161 (n + 1) - (n + 1 : ℤ)).toNat

end

end A255242.P13517212885975646585

/-!
# A255243: Number x such that x | A255242(x).

The programs for A255243, there is no canonical definition to state claims against.
-/

/-! ## A255243.P6130261905263000784

`lt[A255242(n+1)%(n+1), 1]+1`
-/

namespace A255243.P6130261905263000784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255242 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A255243.P6130261905263000784

/-!
# A255244: Numbers that divide the average of the sum of the squares of their divisors.

The programs for A255244, there is no canonical definition to state claims against.
-/

/-! ## A255244.P6797154435028708024

`filter[A046762(n+1), A322980(#)]`
-/

namespace A255244.P6797154435028708024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A255244.P6797154435028708024

/-! ## A255244.P11873441252267663120

`filter[A396599(n+1), A014578(#)]`
-/

namespace A255244.P11873441252267663120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A255244.P11873441252267663120

/-! ## A255244.P6872803999983994147

`filter[A396599(n+1), A187074(#)]`
-/

namespace A255244.P6872803999983994147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A255244.P6872803999983994147

/-! ## A255244.P8856122505561123165

`filter[A355543(n+1), A322980(#)]`
-/

namespace A255244.P8856122505561123165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A255244.P8856122505561123165

/-!
# A255246: Fundamental positive solution y = y1(n) of the first class of the Pell equation x^2 - 2*y^2 = -A038873(n), n>=1 (primes congruent to {1,2,7} mod 8).

The programs for A255246, there is no canonical definition to state claims against.
-/

/-! ## A255246.P17479661504130637585

`(A255235(n+1)+A002334(n+1))/2`
-/

namespace A255246.P17479661504130637585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255235 (n + 1) + A002334 (n + 1) : ℚ) / 2

end

end A255246.P17479661504130637585

/-! ## A255246.P18313404753796262492

`A001281(A255235(n+1)+A002334(n+1))`
-/

namespace A255246.P18313404753796262492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A255235 (n + 1) + A002334 (n + 1)).toNat

end

end A255246.P18313404753796262492

/-! ## A255246.P6918100875499890202

`A004525(A255235(n+1)+A002334(n+1))`
-/

namespace A255246.P6918100875499890202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A255235 (n + 1) + A002334 (n + 1)).toNat

end

end A255246.P6918100875499890202

/-! ## A255246.P8151894130074723064

`A004526(A255235(n+1)+A002334(n+1))`
-/

namespace A255246.P8151894130074723064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A255235 (n + 1) + A002334 (n + 1)).toNat

end

end A255246.P8151894130074723064

/-! ## A255246.P4759357679707804771

`A006370(A255235(n+1)+A002334(n+1))`
-/

namespace A255246.P4759357679707804771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A255235 (n + 1) + A002334 (n + 1)).toNat

end

end A255246.P4759357679707804771

/-! ## A255246.P10336172750827232518

`A025480(A255235(n+1)+A002334(n+1))`
-/

namespace A255246.P10336172750827232518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A255235 (n + 1) + A002334 (n + 1)).toNat

end

end A255246.P10336172750827232518

/-! ## A255246.P16346791683755283832

`A032742(A255235(n+1)+A002334(n+1))`
-/

namespace A255246.P16346791683755283832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A255235 (n + 1) + A002334 (n + 1)).toNat

end

end A255246.P16346791683755283832

/-! ## A255246.P14867191991691291770

`A065033(A255235(n+1)+A002334(n+1))`
-/

namespace A255246.P14867191991691291770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A255235 (n + 1) + A002334 (n + 1)).toNat

end

end A255246.P14867191991691291770

/-! ## A255246.P1679519610875832834

`A142150(A255235(n+1)+A002334(n+1))`
-/

namespace A255246.P1679519610875832834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A255235 (n + 1) + A002334 (n + 1)).toNat

end

end A255246.P1679519610875832834

/-! ## A255246.P440275770043758727

`A022998(A002334(n+1))-A002335(n+1)`
-/

namespace A255246.P440275770043758727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A002334 (n + 1)).toNat - A002335 (n + 1)

end

end A255246.P440275770043758727

/-!
# A255247: Fundamental positive solution x = x2(n) of the second class of the Pell equation x^2 - 2*y^2 = -A001132(n), n>=1 (primes congruent to {1,7} mod 8).

The programs for A255247, there is no canonical definition to state claims against.
-/

/-! ## A255247.P7761452576756052368

`A255248(n+1)+A002335(n+2)`
-/

namespace A255247.P7761452576756052368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255248 (n + 1) + A002335 (n + 2)

end

end A255247.P7761452576756052368

/-! ## A255247.P17486100617812888177

`A002334(n+2)+2*A002335(n+2)`
-/

namespace A255247.P17486100617812888177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002334 (n + 2) + 2 * A002335 (n + 2)

end

end A255247.P17486100617812888177

/-! ## A255247.P3622763409423547983

`2*A002334(n+2)-A255235(n+2)`
-/

namespace A255247.P3622763409423547983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002334 (n + 2) - A255235 (n + 2)

end

end A255247.P3622763409423547983

/-! ## A255247.P15603604130025489518

`A255246(n+2)+3*A002335(n+2)`
-/

namespace A255247.P15603604130025489518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255246 (n + 2) + 3 * A002335 (n + 2)

end

end A255247.P15603604130025489518

/-! ## A255247.P16232940159314523801

`A255248(n+1)+A255248(n+1)-A002334(n+2)`
-/

namespace A255247.P16232940159314523801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255248 (n + 1) + (A255248 (n + 1) - A002334 (n + 2))

end

end A255247.P16232940159314523801

/-! ## A255247.P17740342317865193683

`A255248(n+1)+A255246(n+2)-A255235(n+2)`
-/

namespace A255247.P17740342317865193683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255248 (n + 1) + (A255246 (n + 2) - A255235 (n + 2))

end

end A255247.P17740342317865193683

/-!
# A255248: Fundamental positive solution y = y2(n) of the second class of the Pell equation x^2 - 2*y^2 = -A001132(n), n>=1 (primes congruent to {1,7} mod 8).

The programs for A255248, there is no canonical definition to state claims against.
-/

/-! ## A255248.P13769114809302858784

`A002335(n+2)+A002334(n+2)`
-/

namespace A255248.P13769114809302858784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002335 (n + 2) + A002334 (n + 2)

end

end A255248.P13769114809302858784

/-! ## A255248.P15147044971839391316

`A255247(n+1)-A002335(n+2)`
-/

namespace A255248.P15147044971839391316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255247 (n + 1) - A002335 (n + 2)

end

end A255248.P15147044971839391316

/-! ## A255248.P14511711231997678534

`A255246(n+2)+2*A002335(n+2)`
-/

namespace A255248.P14511711231997678534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255246 (n + 2) + 2 * A002335 (n + 2)

end

end A255248.P14511711231997678534

/-! ## A255248.P11323188267993850338

`2*A002334(n+2)-A255246(n+2)`
-/

namespace A255248.P11323188267993850338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002334 (n + 2) - A255246 (n + 2)

end

end A255248.P11323188267993850338

/-! ## A255248.P6770023172352316174

`A255246(n+2)+A004277(A002335(n+2))`
-/

namespace A255248.P6770023172352316174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255246 (n + 2) + A004277 (A002335 (n + 2)).toNat

end

end A255248.P6770023172352316174

/-! ## A255248.P12707355806112065766

`A004277(A002334(n+2))-A255246(n+2)`
-/

namespace A255248.P12707355806112065766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A002334 (n + 2)).toNat - A255246 (n + 2)

end

end A255248.P12707355806112065766

/-! ## A255248.P3978037555628209383

`A255247(n+1)+A255246(n+2)-A002334(n+2)`
-/

namespace A255248.P3978037555628209383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255247 (n + 1) + (A255246 (n + 2) - A002334 (n + 2))

end

end A255248.P3978037555628209383

/-! ## A255248.P11832862063106044073

`A255247(n+1)+A255235(n+2)-A255246(n+2)`
-/

namespace A255248.P11832862063106044073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255247 (n + 1) + (A255235 (n + 2) - A255246 (n + 2))

end

end A255248.P11832862063106044073

/-! ## A255248.P14507265044507087906

`A002334(n+2)+A255246(n+2)-A255235(n+2)`
-/

namespace A255248.P14507265044507087906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002334 (n + 2) + (A255246 (n + 2) - A255235 (n + 2))

end

end A255248.P14507265044507087906

/-!
# A255249: Decimal expansion of -2*cos(5*Pi/7).

The programs for A255249, there is no canonical definition to state claims against.
-/

/-! ## A255249.P6265279023038716357

`A231187(n)-A000007(n)`
-/

namespace A255249.P6265279023038716357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231187 (n + 1) - A000007 n

end

end A255249.P6265279023038716357

/-! ## A255249.P17317358429990421734

`A116425(n)-2*A000007(n)`
-/

namespace A255249.P17317358429990421734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116425 (n + 1) - 2 * A000007 n

end

end A255249.P17317358429990421734

/-! ## A255249.P1263375766294739364

`2*A231187(n)-A116425(n)`
-/

namespace A255249.P1263375766294739364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A231187 (n + 1) - A116425 (n + 1)

end

end A255249.P1263375766294739364

/-! ## A255249.P17784273010490020211

`A231187(n)-A008683(A008574(n))`
-/

namespace A255249.P17784273010490020211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231187 (n + 1) - A008683 (A008574 n).toNat

end

end A255249.P17784273010490020211

/-! ## A255249.P971547391531378425

`A231187(n)-A008683(A046109(n))`
-/

namespace A255249.P971547391531378425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231187 (n + 1) - A008683 (A046109 n).toNat

end

end A255249.P971547391531378425

/-! ## A255249.P455822198969063160

`A231187(n)-A008683(A093995(n+1))`
-/

namespace A255249.P455822198969063160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231187 (n + 1) - A008683 (A093995 (n + 1)).toNat

end

end A255249.P455822198969063160

/-! ## A255249.P12825439452795093760

`A231187(n)-A008683((n+1)²)`
-/

namespace A255249.P12825439452795093760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231187 (n + 1) - A008683 ((n + 1) ^ 2)

end

end A255249.P12825439452795093760

/-!
# A255250: Array T(n, m) of numbers of points of a square lattice in the first octant covered by a circular disk of radius n (centered at any lattice point taken as origin) with ordinate y = m.

The programs for A255250, there is no canonical definition to state claims against.
-/

/-! ## A255250.P9801076557047739669

`A330944(A032533(n+2))`
-/

namespace A255250.P9801076557047739669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330944 (A032533 (n + 2)).toNat

end

end A255250.P9801076557047739669

/-! ## A255250.P2378884190446327342

`A324848(A185064(n+2)*A224697(n))`
-/

namespace A255250.P2378884190446327342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324848 (A185064 (n + 2) * A224697 n).toNat

end

end A255250.P2378884190446327342

/-! ## A255250.P14722432128500047307

`A374740(∪[A325676(n+4), A189391(n)])`
-/

namespace A255250.P14722432128500047307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325676 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189391 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374740 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A255250.P14722432128500047307

/-! ## A255250.P10112945572761465823

`A051903(A102633(n+1)*A185064(n+2))`
-/

namespace A255250.P10112945572761465823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A102633 (n + 1) * A185064 (n + 2)).toNat

end

end A255250.P10112945572761465823

/-!
# A255252: Expansion of psi(x) * psi(-x)^2 in powers of x where psi() is a Ramanujan theta function.

The programs for A255252, there is no canonical definition to state claims against.
-/

/-! ## A255252.P2160910881109914669

`A034950(4*n+1)/2`
-/

namespace A255252.P2160910881109914669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034950 (4 * n + 1) : ℚ) / 2

end

end A255252.P2160910881109914669

/-! ## A255252.P13967735923163227009

`A080963(8*n+3)/4`
-/

namespace A255252.P13967735923163227009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080963 (8 * n + 3) : ℚ) / 4

end

end A255252.P13967735923163227009

/-! ## A255252.P6969270107929490997

`A248394(A017101(n))/2`
-/

namespace A255252.P6969270107929490997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248394 (A017101 n).toNat : ℚ) / 2

end

end A255252.P6969270107929490997

/-! ## A255252.P13623257894390156678

`A248394(A017077(n)+2)/2`
-/

namespace A255252.P13623257894390156678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248394 (A017077 n + 2).toNat : ℚ) / 2

end

end A255252.P13623257894390156678

/-! ## A255252.P3394372696221031141

`A248394(A004767(2*n))/2`
-/

namespace A255252.P3394372696221031141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248394 (A004767 (2 * n)).toNat : ℚ) / 2

end

end A255252.P3394372696221031141

/-! ## A255252.P4642070916843542192

`2^A008683(A002148(n))*A248394(A017077(n)+2)`
-/

namespace A255252.P4642070916843542192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A002148 n).toNat : ℤ) * (A248394 (A017077 n + 2).toNat : ℚ)

end

end A255252.P4642070916843542192

/-!
# A255254: a(n) = (A048891(n)-1)/A023143(n).

The programs for A255254, there is no canonical definition to state claims against.
-/

/-! ## A255254.P3319633368098652943

`(A048891(n+1)-1)/A023143(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255254.P3319633368098652943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048891 (n + 1) - 1 : ℚ) / (A023143 (n + 1) : ℚ)

end

end A255254.P3319633368098652943

/-!
# A255255: Number of 2-colorings of a 4 X n rectangle such that no nontrivial subsquare has monochromatic corners.

The programs for A255255, there is no canonical definition to state claims against.
-/

/-! ## A255255.P15754653751104570781

`A255256(A052905(n+2))`
-/

namespace A255255.P15754653751104570781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255256 (A052905 (n + 2)).toNat

end

end A255255.P15754653751104570781

/-! ## A255255.P8074437015580312504

`A255256(A145018(n+5))`
-/

namespace A255255.P8074437015580312504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255256 (A145018 (n + 5)).toNat

end

end A255255.P8074437015580312504

/-! ## A255255.P11622803555284366692

`A255256(A056115(n)+10)`
-/

namespace A255255.P11622803555284366692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255256 (A056115 n + 10).toNat

end

end A255255.P11622803555284366692

/-! ## A255255.P7307893542257259512

`A255256(A155212(n)+12)`
-/

namespace A255255.P7307893542257259512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255256 (A155212 n + 12).toNat

end

end A255255.P7307893542257259512

/-! ## A255255.P1986324387972213728

`A255256(A056000(n)+14)`
-/

namespace A255255.P1986324387972213728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255256 (A056000 n + 14).toNat

end

end A255255.P1986324387972213728

/-!
# A255256: Number A(n,k) of 2-colorings of a k X n rectangle such that no nontrivial subsquare has monochromatic corners; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A255256, there is no canonical definition to state claims against.
-/

/-! ## A255256.P12155726876457667866

`A322554(A099594(n))`
-/

namespace A255256.P12155726876457667866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322554 (A099594 n).toNat

end

end A255256.P12155726876457667866

/-! ## A255256.P6111763149468043766

`A233765(A398244(n))`
-/

namespace A255256.P6111763149468043766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233765 (A398244 n).toNat

end

end A255256.P6111763149468043766

/-! ## A255256.P15736614622537484381

`A367306(A384764(n))`
-/

namespace A255256.P15736614622537484381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367306 (A384764 n).toNat

end

end A255256.P15736614622537484381

/-! ## A255256.P8220541278892701892

`A367306(A385862(n))`
-/

namespace A255256.P8220541278892701892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367306 (A385862 n).toNat

end

end A255256.P8220541278892701892

/-! ## A255256.P13721400127970790262

`A236674(A099594(n)+1)`
-/

namespace A255256.P13721400127970790262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236674 (A099594 n + 1).toNat

end

end A255256.P13721400127970790262

/-!
# A255257: Expansion of psi(x) * phi(-x^2)^2 in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A255257, there is no canonical definition to state claims against.
-/

/-! ## A255257.P2232011052496881429

`A034950(4*n)`
-/

namespace A255257.P2232011052496881429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034950 (4 * n)

end

end A255257.P2232011052496881429

/-! ## A255257.P15921651654346825872

`or(2, A034950(A008586(n)))-2`
-/

namespace A255257.P15921651654346825872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A034950 (A008586 n).toNat) - 2

end

end A255257.P15921651654346825872

/-! ## A255257.P12900774855828744903

`A034950(A008574(n))-A000007(n)`
-/

namespace A255257.P12900774855828744903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034950 (A008574 n).toNat - A000007 n

end

end A255257.P12900774855828744903

/-! ## A255257.P13027650721126165014

`or(A000007(n), A034950(A008586(n)))`
-/

namespace A255257.P13027650721126165014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A034950 (A008586 n).toNat)

end

end A255257.P13027650721126165014

/-! ## A255257.P15635466513421001882

`A034950(A008586(n))+A000007(n+1)`
-/

namespace A255257.P15635466513421001882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034950 (A008586 n).toNat + A000007 (n + 1)

end

end A255257.P15635466513421001882

/-! ## A255257.P16841389418524234450

`A034950(A008586(n))%A038603(n+1)`
-/

namespace A255257.P16841389418524234450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034950 (A008586 n).toNat) (A038603 (n + 1))

end

end A255257.P16841389418524234450

/-! ## A255257.P6715796913748175744

`A034950(A008574(n))/A000034(A001316(n))`
-/

namespace A255257.P6715796913748175744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034950 (A008574 n).toNat : ℚ) / (A000034 (A001316 n).toNat : ℚ)

end

end A255257.P6715796913748175744

/-! ## A255257.P3722523998933778020

`A034950(A008574(n))/A000034(A277561(n))`
-/

namespace A255257.P3722523998933778020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034950 (A008574 n).toNat : ℚ) / (A000034 (A277561 n).toNat : ℚ)

end

end A255257.P3722523998933778020

/-! ## A255257.P10290173119426957637

`A034950(A008574(n)+A000007(n))+A000007(n)`
-/

namespace A255257.P10290173119426957637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034950 (A008574 n + A000007 n).toNat + A000007 n

end

end A255257.P10290173119426957637

/-! ## A255257.P12265464024999082237

`A248394(8*n+1)`
-/

namespace A255257.P12265464024999082237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248394 (8 * n + 1)

end

end A255257.P12265464024999082237

/-!
# A255258: Expansion of q^2 * phi(q) * psi(q^16) in powers of q where phi(), psi() are Ramanujan theta functions.

The programs for A255258, there is no canonical definition to state claims against.
-/

/-! ## A255258.P688593952608767013

`(-1)^n*A227395(n+2)`
-/

namespace A255258.P688593952608767013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A227395 (n + 2)

end

end A255258.P688593952608767013

/-! ## A255258.P12520084796362847795

`abs(A227395(n+2))`
-/

namespace A255258.P12520084796362847795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A227395 (n + 2)|

end

end A255258.P12520084796362847795

/-! ## A255258.P16451604413145436084

`gcd(A000038(n), A227395(n+2))`
-/

namespace A255258.P16451604413145436084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A227395 (n + 2))

end

end A255258.P16451604413145436084

/-! ## A255258.P2107506651672394136

`lcm(A000034(n), A227395(n+2))`
-/

namespace A255258.P2107506651672394136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A227395 (n + 2))

end

end A255258.P2107506651672394136

/-! ## A255258.P4922457030599333482

`∑{d}[A227395(n+2), A000010(#)]`
-/

namespace A255258.P4922457030599333482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227395 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A255258.P4922457030599333482

/-! ## A255258.P3532754471223395403

`A227395(n+2)*A309873(n+1)`
-/

namespace A255258.P3532754471223395403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227395 (n + 2) * A309873 (n + 1)

end

end A255258.P3532754471223395403

/-!
# A255260: a(n) = a(n-1) + sum of the pentagonal numbers which are among the first (n-1) terms of the sequence, with a(1)=1.

The programs for A255260, there is no canonical definition to state claims against.
-/

/-! ## A255260.P4409412768562231790

`A002487(∑[A011782(comp[6*n])])`
-/

namespace A255260.P4409412768562231790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A255260.P4409412768562231790

/-! ## A255260.P451821506158906573

`A002487(∑[A000079(floor(6*n/5))])`
-/

namespace A255260.P451821506158906573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ⌊6 * ((n : ℚ) / 5)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A255260.P451821506158906573

/-! ## A255260.P2606454835002746209

`lt[A284803(n), 5]`
-/

namespace A255260.P2606454835002746209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284803 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A255260.P2606454835002746209

/-! ## A255260.P1091791498045425206

`lt[1, Δ[A171593(n)²]]`
-/

namespace A255260.P1091791498045425206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171593 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A255260.P1091791498045425206

/-! ## A255260.P14805805225667495488

`A243614(∑[floor(ϕ²*a(n-1))])` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A255260.P14805805225667495488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243614 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A255260.P14805805225667495488

/-!
# A255261: a(n) = a(n-1) + sum of the hexagonal numbers which are among the first (n-1) terms of the sequence, with a(1)=1.

The programs for A255261, there is no canonical definition to state claims against.
-/

/-! ## A255261.P5971418201699359427

`record[A109010(A123667(n+1))+n]`
-/

namespace A255261.P5971418201699359427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109010 (A123667 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255261.P5971418201699359427

/-! ## A255261.P17138180685040800487

`lt[A053262(A106608(3*(n+1))), A285078(n+1)]`
-/

namespace A255261.P17138180685040800487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053262 (A106608 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A255261.P17138180685040800487

/-! ## A255261.P10224662205068239104

`eq[A010054(A167614(n+1)), A055967(3*n+3)]`
-/

namespace A255261.P10224662205068239104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A167614 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 (3 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255261.P10224662205068239104

/-! ## A255261.P16570889319746522336

`lt[A053262(A106608(3*(n+1))), A138302(2*(n+1))]`
-/

namespace A255261.P16570889319746522336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053262 (A106608 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A255261.P16570889319746522336

/-! ## A255261.P2186230479085200902

`lt[A161680((n+1)/7^val(n+1, 7)), A277015(n)]`
-/

namespace A255261.P2186230479085200902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (7 ^ SequenceMachineLib.valuation (n + 1) 7 : ℚ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277015 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A255261.P2186230479085200902

/-!
# A255262: Number of 2-colorings of a 5 X n rectangle such that no nontrivial subsquare has monochromatic corners.

The programs for A255262, there is no canonical definition to state claims against.
-/

/-! ## A255262.P5711283956690552420

`record[A255256(∑[(n+1)/7^val(n+1, 7)])]`
-/

namespace A255262.P5711283956690552420
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (7 ^ SequenceMachineLib.valuation (n + 1) 7 : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255256 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255262.P5711283956690552420

/-! ## A255262.P10066722816032547257

`A255256(A055999(n+3))`
-/

namespace A255262.P10066722816032547257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255256 (A055999 (n + 3)).toNat

end

end A255262.P10066722816032547257

/-! ## A255262.P15257693095793322976

`A255256(A167499(n+4))`
-/

namespace A255262.P15257693095793322976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255256 (A167499 (n + 4)).toNat

end

end A255262.P15257693095793322976

/-! ## A255262.P15062426724425060628

`A255256(A056119(n)+15)`
-/

namespace A255262.P15062426724425060628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255256 (A056119 n + 15).toNat

end

end A255262.P15062426724425060628

/-!
# A255263: Differences between the total number of ON cells at stage n of two-dimensional cellular automaton defined by "Rule 750" using the von Neumann neighborhood and the total number of toothpicks in the toothpick structure A139250 that are parallel to the initial toothpick, after n odd rounds.

The programs for A255263, there is no canonical definition to state claims against.
-/

/-! ## A255263.P17494963786048155378

`A169707(n+1)-A162795(n+1)`
-/

namespace A255263.P17494963786048155378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169707 (n + 1) - A162795 (n + 1)

end

end A255263.P17494963786048155378

/-! ## A255263.P9059864485794641228

`∑[A169708(n)]-A162795(n+1)`
-/

namespace A255263.P9059864485794641228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A162795 (n + 1)

end

end A255263.P9059864485794641228

/-! ## A255263.P16101008641314657656

`∑[A169708(n)-A139251(Δ[n²])]`
-/

namespace A255263.P16101008641314657656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169708 n - A139251 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255263.P16101008641314657656

/-! ## A255263.P2748219733460661022

`∑[A169708(n)]-A255747(Δ[n²])`
-/

namespace A255263.P2748219733460661022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169708 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A255747 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A255263.P2748219733460661022

/-! ## A255263.P754244689867671759

`A169707(n+1)-A255747(Δ[n²])`
-/

namespace A255263.P754244689867671759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169707 (n + 1) - A255747 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A255263.P754244689867671759

/-! ## A255263.P18268784281091521346

`A169707(n+1)-∑[A139251(2*n+1)]`
-/

namespace A255263.P18268784281091521346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169707 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255263.P18268784281091521346

/-! ## A255263.P7412986956981108456

`A169707(n+1)%A255747(A005408(n))`
-/

namespace A255263.P7412986956981108456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169707 (n + 1)) (A255747 (A005408 n).toNat)

end

end A255263.P7412986956981108456

/-! ## A255263.P18067913577469920907

`∑[A008574(A160552(n))]-A162795(n+1)`
-/

namespace A255263.P18067913577469920907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A160552 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A162795 (n + 1)

end

end A255263.P18067913577469920907

/-! ## A255263.P9106151721661887540

`A169707(n+1)-(A288775(n+1)+A147562(n+1))`
-/

namespace A255263.P9106151721661887540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169707 (n + 1) - (A288775 (n + 1) + A147562 (n + 1))

end

end A255263.P9106151721661887540

/-! ## A255263.P3832183593486374921

`A016813(A255747(n))-A255747(2*n+1)`
-/

namespace A255263.P3832183593486374921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A255747 n).toNat - A255747 (2 * n + 1)

end

end A255263.P3832183593486374921

/-!
# A255264: Total number of ON cells in the "Ulam-Warburton" two-dimensional cellular automaton of A147562 after A048645(n) generations.

The programs for A255264, the canonical program `A255264.P17478786461012927538` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255264 has offset 1).

The definition of A255264 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048645, A147562, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A255264.P17478786461012927538

`A147562(A048645(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A255264

/-- `A147562(A048645(n+1))` -/
def P17478786461012927538.Spec : Prop :=
  ∀ n, P17478786461012927538.a n = A255264 (n + 1)

theorem P17478786461012927538.correct : P17478786461012927538.Spec := by
  intro n
  simp only [A255264, Nat.add_sub_cancel]

end A255264

/-! ## A255264.P548254225150702244

`record[a(floor(n/2))+A001316(n)²]` with `a(0)=1`
-/

namespace A255264.P548254225150702244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + A001316 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255264.P548254225150702244

namespace A255264

/-- `record[a(floor(n/2))+A001316(n)²]` -/
def P548254225150702244.Spec : Prop :=
  ∀ n, P548254225150702244.a n = A255264 (n + 1)

end A255264

/-! ## A255264.P12834599913954728830

`A147562(record[and(n+1, xor(n, n+1)-n)])`
-/

namespace A255264.P12834599913954728830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((Nat.xor n (n + 1) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A255264.P12834599913954728830

namespace A255264

/-- `A147562(record[and(n+1, xor(n, n+1)-n)])` -/
def P12834599913954728830.Spec : Prop :=
  ∀ n, P12834599913954728830.a n = A255264 (n + 1)

end A255264

/-! ## A255264.P4171491551688801850

`A162795(record[and(n+1, xor(n, n+1)-n)])`
-/

namespace A255264.P4171491551688801850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((Nat.xor n (n + 1) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162795 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A255264.P4171491551688801850

namespace A255264

/-- `A162795(record[and(n+1, xor(n, n+1)-n)])` -/
def P4171491551688801850.Spec : Prop :=
  ∀ n, P4171491551688801850.a n = A255264 (n + 1)

end A255264

/-! ## A255264.P12014052843942135594

`A169707(record[and(n+1, xor(n, n+1)-n)])`
-/

namespace A255264.P12014052843942135594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((Nat.xor n (n + 1) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169707 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A255264.P12014052843942135594

namespace A255264

/-- `A169707(record[and(n+1, xor(n, n+1)-n)])` -/
def P12014052843942135594.Spec : Prop :=
  ∀ n, P12014052843942135594.a n = A255264 (n + 1)

end A255264

/-!
# A255265: Numbers representable as x*y*(x+y), where x>=y>1.

The programs for A255265, there is no canonical definition to state claims against.
-/

/-! ## A255265.P1400747671057708551

`∩[A109270(n+1), A382953(n+1)]`
-/

namespace A255265.P1400747671057708551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255265.P1400747671057708551

/-!
# A255267: Numbers representable as both x*y*(x+y) and b*c+b+c, where b>=c>1 and x>=y>1.

The programs for A255267, there is no canonical definition to state claims against.
-/

/-! ## A255267.P16836982811578026854

`∩[A186193(n+1), A255265(n+1)]`
-/

namespace A255267.P16836982811578026854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255267.P16836982811578026854

/-! ## A255267.P16177529342057598399

`∩[A255265(n+1), A309355(n+1)]`
-/

namespace A255267.P16177529342057598399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255267.P16177529342057598399

/-! ## A255267.P4498587952119214557

`∩[A112277(n+1), A255265(n+1)]`
-/

namespace A255267.P4498587952119214557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255267.P4498587952119214557

/-! ## A255267.P9037228015628157001

`∩[A068780(n+1), A255265(n+1)]`
-/

namespace A255267.P9037228015628157001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255267.P9037228015628157001

/-! ## A255267.P13802444183582388988

`∩[A255265(n+1), A308833(n+1)]`
-/

namespace A255267.P13802444183582388988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255267.P13802444183582388988

/-! ## A255267.P11806599174394516758

`∩[A061743(n+1), A255265(n+1)]`
-/

namespace A255267.P11806599174394516758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255267.P11806599174394516758

/-! ## A255267.P8231044697633778158

`∩[A254671(n+1), A255265(n+1)]`
-/

namespace A255267.P8231044697633778158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255267.P8231044697633778158

/-! ## A255267.P9745556935168105400

`∩[A255265(n+1), A118742(n)]`
-/

namespace A255267.P9745556935168105400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255267.P9745556935168105400

/-! ## A255267.P15863958505736475068

`∩[A060462(n+1), A255265(n+1)]`
-/

namespace A255267.P15863958505736475068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255267.P15863958505736475068

/-! ## A255267.P923375371060855790

`∩[A072668(n+1), A255265(n+1)]`
-/

namespace A255267.P923375371060855790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255267.P923375371060855790

/-! ## A255267.P1037531681121330346

`∩[A166460(n+1), A255265(n+1)]`
-/

namespace A255267.P1037531681121330346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255267.P1037531681121330346

/-!
# A255268: 

The programs for A255268, there is no canonical definition to state claims against.
-/

/-! ## A255268.P10234296695417144980

`∏[(n+1)!]^(n+1)`
-/

namespace A255268.P10234296695417144980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A255268.P10234296695417144980

/-! ## A255268.P13104926436940487856

`∏[∏[n+1]]^(n+1)`
-/

namespace A255268.P13104926436940487856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A255268.P13104926436940487856

/-!
# A255269: 

The programs for A255269, there is no canonical definition to state claims against.
-/

/-! ## A255269.P2111723168903247690

`∏[(n+1)!^(n+1)]`
-/

namespace A255269.P2111723168903247690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A255269.P2111723168903247690

/-! ## A255269.P4182655461373183169

`∏[∏[n+1]^(n+1)]`
-/

namespace A255269.P4182655461373183169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f2 j) ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A255269.P4182655461373183169

/-! ## A255269.P5430988363291753538

`2^∑[(n+1)*log2((n+1)!)]`
-/

namespace A255269.P5430988363291753538
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.logb 2 (Nat.factorial (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255269.P5430988363291753538

/-! ## A255269.P10691141209798607566

`2^∑[log2((n+1)!^(n+1))]`
-/

namespace A255269.P10691141209798607566
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.factorial (n + 1) ^ (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255269.P10691141209798607566

/-!
# A255270: Integer part of fourth root of n.

The programs for A255270, the canonical program `A255270.P10104578505514288073` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255270 has offset 0).

The definition of A255270 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255270.P10104578505514288073

`floor(n^(1/4))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255270

/-- `floor(n^(1/4))` -/
def P10104578505514288073.Spec : Prop :=
  ∀ n, P10104578505514288073.a n = A255270 n

theorem P10104578505514288073.correct : P10104578505514288073.Spec := by
  intro n
  simp only [A255270]

end A255270

/-! ## A255270.P9613444487397506049

`∑[char[∏{e}[n, #²²]]]`
-/

namespace A255270.P9613444487397506049
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p ^ 2) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255270.P9613444487397506049

namespace A255270

/-- `∑[char[∏{e}[n, #²²]]]` -/
def P9613444487397506049.Spec : Prop :=
  ∀ n, (P9613444487397506049.a n : ℤ) = A255270 n

end A255270

/-! ## A255270.P8457908543429057227

`∑[char[xor(n, -2)²²]]`
-/

namespace A255270.P8457908543429057227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor (n : ℤ) (-2) ^ 2) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255270.P8457908543429057227

namespace A255270

/-- `∑[char[xor(n, -2)²²]]` -/
def P8457908543429057227.Spec : Prop :=
  ∀ n, (P8457908543429057227.a n : ℤ) = A255270 n

end A255270

/-! ## A255270.P17230510856401195265

`∑[char[record[(n-1)²]²]]`
-/

namespace A255270.P17230510856401195265
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255270.P17230510856401195265

namespace A255270

/-- `∑[char[record[(n-1)²]²]]` -/
def P17230510856401195265.Spec : Prop :=
  ∀ n, (P17230510856401195265.a n : ℤ) = A255270 n

end A255270

/-! ## A255270.P7276237542853249568

`∑[char[(xor(1, n)+1)^4]]`
-/

namespace A255270.P7276237542853249568
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n + 1) ^ 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255270.P7276237542853249568

namespace A255270

/-- `∑[char[(xor(1, n)+1)^4]]` -/
def P7276237542853249568.Spec : Prop :=
  ∀ n, (P7276237542853249568.a n : ℤ) = A255270 n

end A255270

/-! ## A255270.P16849227313950991753

`char[n²²]+a(n-1)` with `a(0)=0`
-/

namespace A255270.P16849227313950991753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 1)

end

end A255270.P16849227313950991753

namespace A255270

/-- `char[n²²]+a(n-1)` -/
def P16849227313950991753.Spec : Prop :=
  ∀ n, (P16849227313950991753.a n : ℤ) = A255270 n

end A255270

/-! ## A255270.P8480751962356837534

`∑[char[∩[(n+1)², n²²]]]`
-/

namespace A255270.P8480751962356837534
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∧ ∃ j, f4 j = x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255270.P8480751962356837534

namespace A255270

/-- `∑[char[∩[(n+1)², n²²]]]` -/
def P8480751962356837534.Spec : Prop :=
  ∀ n, (P8480751962356837534.a n : ℤ) = A255270 n

end A255270

/-! ## A255270.P15464385894017888538

`n-A139179(n)`
-/

namespace A255270.P15464385894017888538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A139179 n

end

end A255270.P15464385894017888538

namespace A255270

/-- `n-A139179(n)` -/
def P15464385894017888538.Spec : Prop :=
  ∀ n, P15464385894017888538.a n = A255270 n

theorem P15464385894017888538.correct : P15464385894017888538.Spec := by
  intro n
  simp only [A255270, Nat.add_sub_cancel, A255270.P15464385894017888538.a, A255270.P10104578505514288073.a, A139179, A139179.P5646755501633390861.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255270

/-! ## A255270.P15780384466792712190

`∑[A374016(n)]-1`
-/

namespace A255270.P15780384466792712190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A255270.P15780384466792712190

namespace A255270

/-- `∑[A374016(n)]-1` -/
def P15780384466792712190.Spec : Prop :=
  ∀ n, P15780384466792712190.a n = A255270 n

end A255270

/-! ## A255270.P18354287964307240090

`∑[char[A008459(n)²]]`
-/

namespace A255270.P18354287964307240090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255270.P18354287964307240090

namespace A255270

/-- `∑[char[A008459(n)²]]` -/
def P18354287964307240090.Spec : Prop :=
  ∀ n, (P18354287964307240090.a n : ℤ) = A255270 n

end A255270

/-! ## A255270.P11170050593010696549

`∑[char[A082043(n)²]]`
-/

namespace A255270.P11170050593010696549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082043 n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255270.P11170050593010696549

namespace A255270

/-- `∑[char[A082043(n)²]]` -/
def P11170050593010696549.Spec : Prop :=
  ∀ n, (P11170050593010696549.a n : ℤ) = A255270 n

end A255270

/-! ## A255270.P60665120132399742

`∑[char[Δ[A000538(n)]]]`
-/

namespace A255270.P60665120132399742
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255270.P60665120132399742

namespace A255270

/-- `∑[char[Δ[A000538(n)]]]` -/
def P60665120132399742.Spec : Prop :=
  ∀ n, (P60665120132399742.a n : ℤ) = A255270 n

end A255270

/-! ## A255270.P2316117694472063555

`∑[char[A000583(n+1)]]`
-/

namespace A255270.P2316117694472063555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255270.P2316117694472063555

namespace A255270

/-- `∑[char[A000583(n+1)]]` -/
def P2316117694472063555.Spec : Prop :=
  ∀ n, (P2316117694472063555.a n : ℤ) = A255270 n

end A255270

/-! ## A255270.P3269614617989535270

`∑[char[A007318(n)^4]]`
-/

namespace A255270.P3269614617989535270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255270.P3269614617989535270

namespace A255270

/-- `∑[char[A007318(n)^4]]` -/
def P3269614617989535270.Spec : Prop :=
  ∀ n, (P3269614617989535270.a n : ℤ) = A255270 n

end A255270

/-! ## A255270.P890657107769779944

`∑[char[A102756(n)²²]]`
-/

namespace A255270.P890657107769779944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A102756 n ^ 2) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255270.P890657107769779944

namespace A255270

/-- `∑[char[A102756(n)²²]]` -/
def P890657107769779944.Spec : Prop :=
  ∀ n, (P890657107769779944.a n : ℤ) = A255270 n

end A255270

/-! ## A255270.P11247835757509527237

`∑[char[A000290(n+1)²]]`
-/

namespace A255270.P11247835757509527237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255270.P11247835757509527237

namespace A255270

/-- `∑[char[A000290(n+1)²]]` -/
def P11247835757509527237.Spec : Prop :=
  ∀ n, (P11247835757509527237.a n : ℤ) = A255270 n

end A255270

/-! ## A255270.P4416183601199306991

`∑[char[A000005(n+1)²²]]`
-/

namespace A255270.P4416183601199306991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) ^ 2) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255270.P4416183601199306991

namespace A255270

/-- `∑[char[A000005(n+1)²²]]` -/
def P4416183601199306991.Spec : Prop :=
  ∀ n, (P4416183601199306991.a n : ℤ) = A255270 n

end A255270

/-! ## A255270.P17628486470892271857

`∑[char[A001222(n+2)²²]]`
-/

namespace A255270.P17628486470892271857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 2) ^ 2) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255270.P17628486470892271857

namespace A255270

/-- `∑[char[A001222(n+2)²²]]` -/
def P17628486470892271857.Spec : Prop :=
  ∀ n, (P17628486470892271857.a n : ℤ) = A255270 n

end A255270

/-! ## A255270.P14751363357427710269

`A000196(A000196(n))`
-/

namespace A255270.P14751363357427710269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000196 n).toNat

end

end A255270.P14751363357427710269

namespace A255270

/-- `A000196(A000196(n))` -/
def P14751363357427710269.Spec : Prop :=
  ∀ n, P14751363357427710269.a n = A255270 n

end A255270

/-!
# A255271: G.f.: Product_{k>=1} 1/(1-x^k)^(3*k+1).

The programs for A255271, there is no canonical definition to state claims against.
-/

/-! ## A255271.P14512181268731675769

`A187126(A006952(n))+A054429(n+1)`
-/

namespace A255271.P14512181268731675769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187126 (A006952 n).toNat + A054429 (n + 1)

end

end A255271.P14512181268731675769

/-!
# A255274: From Goldbach conjecture: Consider the pairs (2n-+1, 3), (2n-1, 5), (2n-3, 7), ..., (3, 2n+1) of odd numbers having sum 2n+4; a(n) is the index of the first pair of primes (p, q) on the list.

The programs for A255274, there is no canonical definition to state claims against.
-/

/-! ## A255274.P7160124301808778007

`(A020481(n+3)-1)/2`
-/

namespace A255274.P7160124301808778007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020481 (n + 3) - 1 : ℚ) / 2

end

end A255274.P7160124301808778007

/-! ## A255274.P1519203967483833015

`n+1+(3-A020482(n+3))/2`
-/

namespace A255274.P1519203967483833015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) + (3 - A020482 (n + 3) : ℚ) / 2

end

end A255274.P1519203967483833015

/-! ## A255274.P695109402596036742

`floor(A002373(n+3)/2)`
-/

namespace A255274.P695109402596036742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002373 (n + 3) : ℚ) / 2⌋

end

end A255274.P695109402596036742

/-! ## A255274.P6008349285993007554

`(5-A020482(n+3))/2+n`
-/

namespace A255274.P6008349285993007554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 - A020482 (n + 3) : ℚ) / 2 + (n : ℚ)

end

end A255274.P6008349285993007554

/-! ## A255274.P3266505515957990076

`A002616(A002373(n+3))`
-/

namespace A255274.P3266505515957990076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002616 (A002373 (n + 3)).toNat

end

end A255274.P3266505515957990076

/-! ## A255274.P13163098867038327869

`A002616(A020481(n+3))`
-/

namespace A255274.P13163098867038327869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002616 (A020481 (n + 3)).toNat

end

end A255274.P13163098867038327869

/-! ## A255274.P3487429579704427069

`A004526(A002373(n+3)-1)`
-/

namespace A255274.P3487429579704427069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002373 (n + 3) - 1).toNat

end

end A255274.P3487429579704427069

/-! ## A255274.P16194808026528141547

`A060681(A002373(n+3)-1)`
-/

namespace A255274.P16194808026528141547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A002373 (n + 3) - 1).toNat

end

end A255274.P16194808026528141547

/-! ## A255274.P7493463467581092997

`A110655(2*(A002373(n+3)-1))`
-/

namespace A255274.P7493463467581092997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (2 * (A002373 (n + 3) - 1)).toNat

end

end A255274.P7493463467581092997

/-! ## A255274.P8634779556836552809

`(A118830(A005408(n))+A002373(n+3))/2`
-/

namespace A255274.P8634779556836552809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118830 (A005408 n).toNat + A002373 (n + 3) : ℚ) / 2

end

end A255274.P8634779556836552809

/-! ## A255274.P15542110635804668125

`A002373(n+3)+A001057(A002373(n+3)+1)`
-/

namespace A255274.P15542110635804668125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002373 (n + 3) + A001057 (A002373 (n + 3) + 1).toNat

end

end A255274.P15542110635804668125

/-! ## A255274.P6298733120614570992

`A110655(A002373(n+3)+A002373(n+3)-2)`
-/

namespace A255274.P6298733120614570992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A002373 (n + 3) + (A002373 (n + 3) - 2)).toNat

end

end A255274.P6298733120614570992

/-! ## A255274.P7086184636013797913

`(n+2-A047949(n+3))/2`
-/

namespace A255274.P7086184636013797913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) - A047949 (n + 3) : ℚ) / 2

end

end A255274.P7086184636013797913

/-!
# A255275: Number of odd terms in f^n, where f = (1/x+1+x)*(1/y+1+y)-y/x.

The programs for A255275, there is no canonical definition to state claims against.
-/

/-! ## A255275.P4899780465564114842

`A028233(A000984(n))*A088371(3*n+1)`
-/

namespace A255275.P4899780465564114842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A000984 n).toNat * A088371 (3 * n + 1)

end

end A255275.P4899780465564114842

/-!
# A255276: A255275(2^n-1).

The programs for A255276, there is no canonical definition to state claims against.
-/

/-! ## A255276.P17168301477654220698

`A255275(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255276.P17168301477654220698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255275 (2 ^ n - 1)

end

end A255276.P17168301477654220698

/-! ## A255276.P17737811722493258861

`A255309(3*n)+A255275(A000225(n))`
-/

namespace A255276.P17737811722493258861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255309 (3 * n) + A255275 (A000225 n).toNat

end

end A255276.P17737811722493258861

/-! ## A255276.P9425313130748004571

`record[A079944(3*n+1)*A255275(n)]`
-/

namespace A255276.P9425313130748004571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (3 * n + 1) * A255275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255276.P9425313130748004571

/-! ## A255276.P18017747991326437810

`A255275(A006516(n))+n-∑{digits}[n, #]`
-/

namespace A255276.P18017747991326437810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255275 (A006516 n).toNat + ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ))

end

end A255276.P18017747991326437810

/-!
# A255278: A255277(2^n-1).

The programs for A255278, there is no canonical definition to state claims against.
-/

/-! ## A255278.P2337187209429457672

`A255277(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255278.P2337187209429457672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255277 (2 ^ n - 1)

end

end A255278.P2337187209429457672

/-! ## A255278.P8317718049280249502

`record[A255277(A006068(n))]`
-/

namespace A255278.P8317718049280249502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255277 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255278.P8317718049280249502

/-! ## A255278.P10820026001651520502

`record[A255277(A073138(n))]`
-/

namespace A255278.P10820026001651520502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255277 (A073138 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255278.P10820026001651520502

/-! ## A255278.P10041429395773856895

`record[A255277(A173787(n))]`
-/

namespace A255278.P10041429395773856895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255277 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255278.P10041429395773856895

/-! ## A255278.P14866963784954999316

`record[A255277(A331856(n))]`
-/

namespace A255278.P14866963784954999316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255277 (A331856 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255278.P14866963784954999316

/-!
# A255279: Number of odd terms in f^n, where f = (1/x+1+x)*(1/y+1+y)-y/x-x*y.

The programs for A255279, there is no canonical definition to state claims against.
-/

/-! ## A255279.P11037378811561240758

`A318985(A260294(3*(n+1)))+A247666(n)`
-/

namespace A255279.P11037378811561240758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318985 (A260294 (3 * (n + 1))).toNat + A247666 n

end

end A255279.P11037378811561240758

/-! ## A255279.P6530904651955007425

`A316465(Δ[A335794(n)])`
-/

namespace A255279.P6530904651955007425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316465 (f1 (n + 1) - f1 n).toNat

end

end A255279.P6530904651955007425

/-! ## A255279.P1679928648868286841

`A316465(A335795(n+1))`
-/

namespace A255279.P1679928648868286841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316465 (A335795 (n + 1)).toNat

end

end A255279.P1679928648868286841

/-! ## A255279.P8729682993612593637

`A316465(A335794(2*n+1)-A335794(2*n))`
-/

namespace A255279.P8729682993612593637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316465 (A335794 (2 * n + 1) - A335794 (2 * n)).toNat

end

end A255279.P8729682993612593637

/-!
# A255280: A255279(2^n-1).

The programs for A255280, there is no canonical definition to state claims against.
-/

/-! ## A255280.P16975198750073408460

`A255279(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255280.P16975198750073408460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255279 (2 ^ n - 1)

end

end A255280.P16975198750073408460

/-! ## A255280.P14665779732483189879

`record[A255279(A173787(n))]`
-/

namespace A255280.P14665779732483189879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255279 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255280.P14665779732483189879

/-! ## A255280.P9320632043558221046

`record[A255279(A255565(n))]`
-/

namespace A255280.P9320632043558221046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255279 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255280.P9320632043558221046

/-! ## A255280.P14940143883893347273

`or(1, A255279(A000225(n)))`
-/

namespace A255280.P14940143883893347273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A255279 (A000225 n).toNat)

end

end A255280.P14940143883893347273

/-! ## A255280.P7288484587242896574

`record[A255279(Δ[A228693(n)])]`
-/

namespace A255280.P7288484587242896574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255279 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255280.P7288484587242896574

/-!
# A255281: Number of odd terms in f^n, where f = (1/x+1+x)*(1/y+1+y)-y/x-x.

The programs for A255281, there is no canonical definition to state claims against.
-/

/-! ## A255281.P16454545958498956989

`∏{e}[A278222(n), A255282(#)]`
-/

namespace A255281.P16454545958498956989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255282 (Nat.factorization (f1 n).natAbs p)

end

end A255281.P16454545958498956989

/-! ## A255281.P14846652692217706144

`∏{e}[A005940(n+1), A255282(#)]`
-/

namespace A255281.P14846652692217706144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255282 (Nat.factorization (f1 n).natAbs p)

end

end A255281.P14846652692217706144

/-! ## A255281.P3812175303137366849

`∏{e}[A332815(n), A255282(#)]`
-/

namespace A255281.P3812175303137366849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255282 (Nat.factorization (f1 n).natAbs p)

end

end A255281.P3812175303137366849

/-! ## A255281.P13150650048156638947

`A182139(A332815(n)²)`
-/

namespace A255281.P13150650048156638947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182139 (A332815 n ^ 2).toNat

end

end A255281.P13150650048156638947

/-! ## A255281.P7406133700723678582

`A182139(A332815(n)^2)`
-/

namespace A255281.P7406133700723678582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182139 (A332815 n ^ 2).toNat

end

end A255281.P7406133700723678582

/-!
# A255282: a(n) = A255281(2^n-1).

The programs for A255282, there is no canonical definition to state claims against.
-/

/-! ## A255282.P17437571840011123786

`A255281(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255282.P17437571840011123786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255281 (2 ^ n - 1)

end

end A255282.P17437571840011123786

/-! ## A255282.P17643060084526179401

`record[A255281(A255565(n))]`
-/

namespace A255282.P17643060084526179401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255281 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255282.P17643060084526179401

/-! ## A255282.P1399275494258733470

`or(1, A255281(A000225(n)))`
-/

namespace A255282.P1399275494258733470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A255281 (A000225 n).toNat)

end

end A255282.P1399275494258733470

/-! ## A255282.P230764085364229671

`record[A255281(Δ[A228693(n)])]`
-/

namespace A255282.P230764085364229671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255281 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255282.P230764085364229671

/-! ## A255282.P10078999478626675610

`record[A255281(A023758(n+1))]`
-/

namespace A255282.P10078999478626675610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255281 (A023758 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255282.P10078999478626675610

/-!
# A255284: a(n) = A255283(2^n-1).

The programs for A255284, the canonical program `A255284.P11430696682671219128` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255284 has offset 0).

The definition of A255284 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255284.P11430696682671219128

`4*a(n-1)+7*a(n-2)-28*a(n-3)` with `a(0)=1, a(1)=7, a(2)=31`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255284

/-- `4*a(n-1)+7*a(n-2)-28*a(n-3)` -/
def P11430696682671219128.Spec : Prop :=
  ∀ n, P11430696682671219128.a n = A255284 n

theorem P11430696682671219128.correct : P11430696682671219128.Spec := by
  intro n
  simp only [A255284]

end A255284

/-! ## A255284.P10390001953613936942

`A255283(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255284.P10390001953613936942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255283 (2 ^ n - 1)

end

end A255284.P10390001953613936942

namespace A255284

/-- `A255283(2^n-1)` -/
def P10390001953613936942.Spec : Prop :=
  ∀ n, P10390001953613936942.a n = A255284 n

end A255284

/-! ## A255284.P17186200583583107195

`record[A255283(A324876(n+1))]`
-/

namespace A255284.P17186200583583107195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255283 (A324876 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255284.P17186200583583107195

namespace A255284

/-- `record[A255283(A324876(n+1))]` -/
def P17186200583583107195.Spec : Prop :=
  ∀ n, P17186200583583107195.a n = A255284 n

end A255284

/-! ## A255284.P14988437355467134551

`A255309(3*n)+A255283(A000225(n))`
-/

namespace A255284.P14988437355467134551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255309 (3 * n) + A255283 (A000225 n).toNat

end

end A255284.P14988437355467134551

namespace A255284

/-- `A255309(3*n)+A255283(A000225(n))` -/
def P14988437355467134551.Spec : Prop :=
  ∀ n, P14988437355467134551.a n = A255284 n

end A255284

/-! ## A255284.P17248771461344653

`A255283(A000225(n))%A068744(n+1)`
-/

namespace A255284.P17248771461344653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255283 (A000225 n).toNat) (A068744 (n + 1))

end

end A255284.P17248771461344653

namespace A255284

/-- `A255283(A000225(n))%A068744(n+1)` -/
def P17248771461344653.Spec : Prop :=
  ∀ n, P17248771461344653.a n = A255284 n

end A255284

/-!
# A255285: List of ternary words obtained by expanding (2+x)^n mod 3 and reading the coefficients starting with the constant term.

The programs for A255285, there is no canonical definition to state claims against.
-/

/-! ## A255285.P12250543508437988833

`A007089(A255286(n))`
-/

namespace A255285.P12250543508437988833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A255286 n).toNat

end

end A255285.P12250543508437988833

/-! ## A255285.P2887992984767205227

`A305877(A182069(n))`
-/

namespace A255285.P2887992984767205227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 (A182069 n).toNat

end

end A255285.P2887992984767205227

/-! ## A255285.P14330838054191171256

`A305877(record[A105530(3*a(n-1))])` with `a(0)=3, a(1)=1`
-/

namespace A255285.P14330838054191171256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  A105530 (3 * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A255285.P14330838054191171256

/-!
# A255286: Set x=3 in polynomial corresponding to A253091(n).

The programs for A255286, there is no canonical definition to state claims against.
-/

/-! ## A255286.P11458658587664799924

`A030102(A182069(n))`
-/

namespace A255286.P11458658587664799924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (A182069 n).toNat

end

end A255286.P11458658587664799924

/-! ## A255286.P4210866562659485907

`A263273(record[A182069(∑{e}[n, #])])`
-/

namespace A255286.P4210866562659485907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182069 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A255286.P4210866562659485907

/-! ## A255286.P4027907556737770247

`A263273(A351592(n)+A182069(n))`
-/

namespace A255286.P4027907556737770247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A351592 n + A182069 n).toNat

end

end A255286.P4027907556737770247

/-! ## A255286.P17401647469084963120

`A263273(A182069(n)-A351592(n))`
-/

namespace A255286.P17401647469084963120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A182069 n - A351592 n).toNat

end

end A255286.P17401647469084963120

/-!
# A255287: Number of 1's in expansion of F^n mod 3, where F = 1/(x*y)+1/y+x/y+1/x+x+y/x+y+x*y.

The programs for A255287, there is no canonical definition to state claims against.
-/

/-! ## A255287.P5426943767882494607

`A255289(n)+A255290(n)-A255288(n)`
-/

namespace A255287.P5426943767882494607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255289 n + (A255290 n - A255288 n)

end

end A255287.P5426943767882494607

/-!
# A255288: Number of 2's in expansion of F^n mod 3, where F = 1/(x*y)+1/y+x/y+1/x+x+y/x+y+x*y.

The programs for A255288, there is no canonical definition to state claims against.
-/

/-! ## A255288.P6191696914543651627

`A255289(n)+A255290(n)-A255287(n)`
-/

namespace A255288.P6191696914543651627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255289 n + (A255290 n - A255287 n)

end

end A255288.P6191696914543651627

/-!
# A255289: Number of 1's in expansion of F^n mod 3, where F = 1/(x*y)+2/y+x/y+2/x+2*x+y/x+2*y+x*y.

The programs for A255289, there is no canonical definition to state claims against.
-/

/-! ## A255289.P12326980956404021255

`A255287(n)+A255288(n)-A255290(n)`
-/

namespace A255289.P12326980956404021255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255287 n + (A255288 n - A255290 n)

end

end A255289.P12326980956404021255

/-!
# A255290: Number of 2's in expansion of F^n mod 3, where F = 1/(x*y)+2/y+x/y+2/x+2*x+y/x+2*y+x*y.

The programs for A255290, there is no canonical definition to state claims against.
-/

/-! ## A255290.P14367170072546749953

`A255287(n)+A255288(n)-A255289(n)`
-/

namespace A255290.P14367170072546749953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255287 n + (A255288 n - A255289 n)

end

end A255290.P14367170072546749953

/-!
# A255291: Number of 1's in expansion of F^n mod 3, where F = 1/x+1+x+1/y+y.

The programs for A255291, there is no canonical definition to state claims against.
-/

/-! ## A255291.P9683307372117524484

`A255293(n)+A255294(n)-A255292(n)`
-/

namespace A255291.P9683307372117524484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255293 n + (A255294 n - A255292 n)

end

end A255291.P9683307372117524484

/-!
# A255292: Number of 2's in expansion of F^n mod 3, where F = 1/x+1+x+1/y+y.

The programs for A255292, there is no canonical definition to state claims against.
-/

/-! ## A255292.P15400598135686179593

`A255293(n)+A255294(n)-A255291(n)`
-/

namespace A255292.P15400598135686179593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255293 n + (A255294 n - A255291 n)

end

end A255292.P15400598135686179593

/-!
# A255293: Number of 1's in expansion of F^n mod 3, where F = 1/x+2+x+1/y+y.

The programs for A255293, there is no canonical definition to state claims against.
-/

/-! ## A255293.P11086552946832036568

`A255291(n)+A255292(n)-A255294(n)`
-/

namespace A255293.P11086552946832036568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255291 n + (A255292 n - A255294 n)

end

end A255293.P11086552946832036568

/-! ## A255293.P8691527899878757425

`A255291(3*n)-(A255294(n)-A255292(n))`
-/

namespace A255293.P8691527899878757425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255291 (3 * n) - (A255294 n - A255292 n)

end

end A255293.P8691527899878757425

/-!
# A255294: Number of 2's in expansion of F^n mod 3, where F = 1/x+2+x+1/y+y.

The programs for A255294, there is no canonical definition to state claims against.
-/

/-! ## A255294.P13841300751586823139

`A255291(n)+A255292(n)-A255293(n)`
-/

namespace A255294.P13841300751586823139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255291 n + (A255292 n - A255293 n)

end

end A255294.P13841300751586823139

/-! ## A255294.P7448672972386458547

`A255293(3*n+1)%A109045(A255293(n))`
-/

namespace A255294.P7448672972386458547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255293 (3 * n + 1)) (A109045 (A255293 n).toNat)

end

end A255294.P7448672972386458547

/-!
# A255295: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 527 when started with a single ON cell.

The programs for A255295, the canonical program `A255295.P6805732981849271517` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255295 has offset 0).

The definition of A255295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255295.P6805732981849271517

`∏{e}[A278222(n), A255296(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A255295

/-- `∏{e}[A278222(n), A255296(#)]` -/
def P6805732981849271517.Spec : Prop :=
  ∀ n, P6805732981849271517.a n = A255295 n

theorem P6805732981849271517.correct : P6805732981849271517.Spec := by
  intro n
  simp only [A255295]

end A255295

/-! ## A255295.P17167703343695851699

`∏{e}[A005940(n+1), A255296(#)]`
-/

namespace A255295.P17167703343695851699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255296 (Nat.factorization (f1 n).natAbs p)

end

end A255295.P17167703343695851699

namespace A255295

/-- `∏{e}[A005940(n+1), A255296(#)]` -/
def P17167703343695851699.Spec : Prop :=
  ∀ n, P17167703343695851699.a n = A255295 n

end A255295

/-! ## A255295.P15209953823718237414

`A255473(n)+A093486(A255298(n))`
-/

namespace A255295.P15209953823718237414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255473 n + A093486 (A255298 n).toNat

end

end A255295.P15209953823718237414

namespace A255295

/-- `A255473(n)+A093486(A255298(n))` -/
def P15209953823718237414.Spec : Prop :=
  ∀ n, P15209953823718237414.a n = A255295 n

end A255295

/-! ## A255295.P16802868580526224006

`A255475(n)-A178798(A255304(n))`
-/

namespace A255295.P16802868580526224006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255475 n - A178798 (A255304 n).toNat

end

end A255295.P16802868580526224006

namespace A255295

/-- `A255475(n)-A178798(A255304(n))` -/
def P16802868580526224006.Spec : Prop :=
  ∀ n, P16802868580526224006.a n = A255295 n

end A255295

/-! ## A255295.P5463316996487115206

`A253100(n)-A178798(A255304(n))²`
-/

namespace A255295.P5463316996487115206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253100 n - A178798 (A255304 n).toNat ^ 2

end

end A255295.P5463316996487115206

namespace A255295

/-- `A253100(n)-A178798(A255304(n))²` -/
def P5463316996487115206.Spec : Prop :=
  ∀ n, P5463316996487115206.a n = A255295 n

end A255295

/-!
# A255296: a(n) = A255295(2^n-1).

The programs for A255296, the canonical program `A255296.P6387521415899331436` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255296 has offset 0).

The definition of A255296 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255296.P6387521415899331436

`5*a(n-1)-4*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=6, a(2)=24`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A255296

/-- `5*a(n-1)-4*a(n-2)-4*a(n-3)` -/
def P6387521415899331436.Spec : Prop :=
  ∀ n, P6387521415899331436.a n = A255296 n

theorem P6387521415899331436.correct : P6387521415899331436.Spec := by
  intro n
  simp only [A255296]

end A255296

/-! ## A255296.P13111620200653729555

`A255295(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255296.P13111620200653729555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255295 (2 ^ n - 1)

end

end A255296.P13111620200653729555

namespace A255296

/-- `A255295(2^n-1)` -/
def P13111620200653729555.Spec : Prop :=
  ∀ n, P13111620200653729555.a n = A255296 n

end A255296

/-! ## A255296.P15823132058999274743

`ogf((1+x-2x^2)/(1-5x+4x^2+4x^3))`
-/

namespace A255296.P15823132058999274743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2] [1, -5, 4, 4] n

end

end A255296.P15823132058999274743

namespace A255296

/-- `ogf((1+x-2x^2)/(1-5x+4x^2+4x^3))` -/
def P15823132058999274743.Spec : Prop :=
  ∀ n, P15823132058999274743.a n = A255296 n

end A255296

/-! ## A255296.P6819738333470653923

`Δ[A007482(n)-2^n]`
-/

namespace A255296.P6819738333470653923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007482 n - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255296.P6819738333470653923

namespace A255296

/-- `Δ[A007482(n)-2^n]` -/
def P6819738333470653923.Spec : Prop :=
  ∀ n, P6819738333470653923.a n = A255296 n

end A255296

/-! ## A255296.P87268685152761348

`A104934(n+1)-2^n`
-/

namespace A255296.P87268685152761348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104934 (n + 1) - (2 ^ n : ℤ)

end

end A255296.P87268685152761348

namespace A255296

/-- `A104934(n+1)-2^n` -/
def P87268685152761348.Spec : Prop :=
  ∀ n, P87268685152761348.a n = A255296 n

end A255296

/-! ## A255296.P3288500806820361261

`Δ[A007482(n)]-A000079(n)`
-/

namespace A255296.P3288500806820361261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000079 n

end

end A255296.P3288500806820361261

namespace A255296

/-- `Δ[A007482(n)]-A000079(n)` -/
def P3288500806820361261.Spec : Prop :=
  ∀ n, P3288500806820361261.a n = A255296 n

end A255296

/-! ## A255296.P628249815173111907

`2*A055099(n)-A000079(n)`
-/

namespace A255296.P628249815173111907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055099 n - A000079 n

end

end A255296.P628249815173111907

namespace A255296

/-- `2*A055099(n)-A000079(n)` -/
def P628249815173111907.Spec : Prop :=
  ∀ n, P628249815173111907.a n = A255296 n

end A255296

/-! ## A255296.P2102004382108936129

`Δ[A007482(n)]-Δ[A000918(n)]`
-/

namespace A255296.P2102004382108936129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007482 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (f2 (n + 1) - f2 n)

end

end A255296.P2102004382108936129

namespace A255296

/-- `Δ[A007482(n)]-Δ[A000918(n)]` -/
def P2102004382108936129.Spec : Prop :=
  ∀ n, P2102004382108936129.a n = A255296 n

end A255296

/-! ## A255296.P3582131666478390958

`∑[A189604(n+1)]-A000225(n)`
-/

namespace A255296.P3582131666478390958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000225 n

end

end A255296.P3582131666478390958

namespace A255296

/-- `∑[A189604(n+1)]-A000225(n)` -/
def P3582131666478390958.Spec : Prop :=
  ∀ n, P3582131666478390958.a n = A255296 n

end A255296

/-! ## A255296.P5423131787579922030

`Δ[A007482(n)]-(A000225(n)+1)`
-/

namespace A255296.P5423131787579922030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A000225 n + 1)

end

end A255296.P5423131787579922030

namespace A255296

/-- `Δ[A007482(n)]-(A000225(n)+1)` -/
def P5423131787579922030.Spec : Prop :=
  ∀ n, P5423131787579922030.a n = A255296 n

end A255296

/-! ## A255296.P434380356790844578

`A007455(2*n+1)+A007455(2*n)-A011782(n+1)`
-/

namespace A255296.P434380356790844578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007455 (2 * n + 1) + (A007455 (2 * n) - A011782 (n + 1))

end

end A255296.P434380356790844578

namespace A255296

/-- `A007455(2*n+1)+A007455(2*n)-A011782(n+1)` -/
def P434380356790844578.Spec : Prop :=
  ∀ n, P434380356790844578.a n = A255296 n

end A255296

/-! ## A255296.P11470407130599397933

`A007455(2*n+1)+A007455(2*n)-A131577(n+1)`
-/

namespace A255296.P11470407130599397933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007455 (2 * n + 1) + (A007455 (2 * n) - A131577 (n + 1))

end

end A255296.P11470407130599397933

namespace A255296

/-- `A007455(2*n+1)+A007455(2*n)-A131577(n+1)` -/
def P11470407130599397933.Spec : Prop :=
  ∀ n, P11470407130599397933.a n = A255296 n

end A255296

/-!
# A255297: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 035 when started with a single ON cell.

The programs for A255297, the canonical program `A255297.P16216186727358026766` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255297 has offset 0).

The definition of A255297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255297.P16216186727358026766

`∏{e}[A278222(n), A027649(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A255297

/-- `∏{e}[A278222(n), A027649(#)]` -/
def P16216186727358026766.Spec : Prop :=
  ∀ n, P16216186727358026766.a n = A255297 n

theorem P16216186727358026766.correct : P16216186727358026766.Spec := by
  intro n
  simp only [A255297]

end A255297

/-! ## A255297.P7128747035456601108

`∏{e}[A278222(n), A347137(A000079(#))]`
-/

namespace A255297.P7128747035456601108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A347137 (A000079 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A255297.P7128747035456601108

namespace A255297

/-- `∏{e}[A278222(n), A347137(A000079(#))]` -/
def P7128747035456601108.Spec : Prop :=
  ∀ n, P7128747035456601108.a n = A255297 n

end A255297

/-! ## A255297.P17057722404162720477

`∏{e}[A005940(n+1), A027649(#)]`
-/

namespace A255297.P17057722404162720477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A027649 (Nat.factorization (f1 n).natAbs p)

end

end A255297.P17057722404162720477

namespace A255297

/-- `∏{e}[A005940(n+1), A027649(#)]` -/
def P17057722404162720477.Spec : Prop :=
  ∀ n, P17057722404162720477.a n = A255297 n

end A255297

/-! ## A255297.P2017722701787241929

`∏{e}[A005940(n+1), A347137(A000079(#))]`
-/

namespace A255297.P2017722701787241929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A347137 (A000079 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A255297.P2017722701787241929

namespace A255297

/-- `∏{e}[A005940(n+1), A347137(A000079(#))]` -/
def P2017722701787241929.Spec : Prop :=
  ∀ n, P2017722701787241929.a n = A255297 n

end A255297

/-! ## A255297.P11775555542500257937

`∏{e}[A332815(n), A027649(#)]`
-/

namespace A255297.P11775555542500257937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A027649 (Nat.factorization (f1 n).natAbs p)

end

end A255297.P11775555542500257937

namespace A255297

/-- `∏{e}[A332815(n), A027649(#)]` -/
def P11775555542500257937.Spec : Prop :=
  ∀ n, P11775555542500257937.a n = A255297 n

end A255297

/-! ## A255297.P5338460961429549059

`∏{e}[A332815(n), A347137(A000079(#))]`
-/

namespace A255297.P5338460961429549059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A347137 (A000079 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A255297.P5338460961429549059

namespace A255297

/-- `∏{e}[A332815(n), A347137(A000079(#))]` -/
def P5338460961429549059.Spec : Prop :=
  ∀ n, P5338460961429549059.a n = A255297 n

end A255297

/-!
# A255298: Number of ON cells after n generations of the odd-rule cellular automaton defined by OddRule 143 when started with a single ON cell.

The programs for A255298, there is no canonical definition to state claims against.
-/

/-! ## A255298.P15765773665226927912

`∏{e}[A278222(n), A255299(#)]`
-/

namespace A255298.P15765773665226927912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255299 (Nat.factorization (f1 n).natAbs p)

end

end A255298.P15765773665226927912

/-! ## A255298.P2302150528409998372

`∏{e}[A005940(n+1), A255299(#)]`
-/

namespace A255298.P2302150528409998372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A255299 (Nat.factorization (f1 n).natAbs p)

end

end A255298.P2302150528409998372

/-! ## A255298.P1075686010360293713

`A102376(n)-A304565(A246660(n))`
-/

namespace A255298.P1075686010360293713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n - A304565 (A246660 n).toNat

end

end A255298.P1075686010360293713

/-! ## A255298.P4165626356474480973

`A102376(n)-A360068(A066180(3*n+4))`
-/

namespace A255298.P4165626356474480973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n - A360068 (A066180 (3 * n + 4)).toNat

end

end A255298.P4165626356474480973

/-!
# A255299: A255298(2^n-1).

The programs for A255299, there is no canonical definition to state claims against.
-/

/-! ## A255299.P9416114384673120530

`A255298(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255299.P9416114384673120530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255298 (2 ^ n - 1)

end

end A255299.P9416114384673120530

/-! ## A255299.P3494346688005500552

`record[A255298(A006068(n))]`
-/

namespace A255299.P3494346688005500552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255298 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255299.P3494346688005500552

/-! ## A255299.P7515379454369456682

`record[A255298(A038573(n))]`
-/

namespace A255299.P7515379454369456682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255298 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255299.P7515379454369456682

/-! ## A255299.P16852732116777692546

`record[A255298(A173787(n))]`
-/

namespace A255299.P16852732116777692546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255298 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255299.P16852732116777692546

/-! ## A255299.P16667297517495434092

`record[A255298(A255565(n))]`
-/

namespace A255299.P16667297517495434092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255298 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255299.P16667297517495434092

