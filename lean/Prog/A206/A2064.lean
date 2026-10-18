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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A206400: Number of composites of the form n^2 + 1 between two successive primes of this form.

The programs for A206400, the canonical program `A206400.P17016040575888186063` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206400 has offset 1).

The definition of A206400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206400.P9426276811336308555

`A214516(n+1)-1`
-/

namespace A206400.P9426276811336308555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214516 (n + 1) - 1

end

end A206400.P9426276811336308555

namespace A206400

/-- `A214516(n+1)-1` -/
def P9426276811336308555.Spec : Prop :=
  ∀ n, P9426276811336308555.a n = A206400 (n + 1)

end A206400

/-! ## A206400.P16268195314057588210

`A341521(C(A214516(n+1), 2))`
-/

namespace A206400.P16268195314057588210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341521 (Nat.choose (A214516 (n + 1)).toNat 2)

end

end A206400.P16268195314057588210

namespace A206400

/-- `A341521(C(A214516(n+1), 2))` -/
def P16268195314057588210.Spec : Prop :=
  ∀ n, P16268195314057588210.a n = A206400 (n + 1)

end A206400

/-! ## A206400.P2266806863427962068

`∑[A214516(n+1)]%A005574(n+1)`
-/

namespace A206400.P2266806863427962068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A005574 (n + 1))

end

end A206400.P2266806863427962068

namespace A206400

/-- `∑[A214516(n+1)]%A005574(n+1)` -/
def P2266806863427962068.Spec : Prop :=
  ∀ n, P2266806863427962068.a n = A206400 (n + 1)

end A206400

/-! ## A206400.P17334986641109478995

`2*A001912(n+1)-A090693(n+1)`
-/

namespace A206400.P17334986641109478995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001912 (n + 1) - A090693 (n + 1)

end

end A206400.P17334986641109478995

namespace A206400

/-- `2*A001912(n+1)-A090693(n+1)` -/
def P17334986641109478995.Spec : Prop :=
  ∀ n, P17334986641109478995.a n = A206400 (n + 1)

end A206400

/-! ## A206400.P17016040575888186063

`Δ[A005574(n+1)]-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A206400

/-- `Δ[A005574(n+1)]-1` -/
def P17016040575888186063.Spec : Prop :=
  ∀ n, P17016040575888186063.a n = A206400 (n + 1)

theorem P17016040575888186063.correct : P17016040575888186063.Spec := by
  intro n
  simp only [A206400, Nat.add_sub_cancel]

end A206400

/-! ## A206400.P10007877911813568491

`Δ[A089593(n+1)]-1`
-/

namespace A206400.P10007877911813568491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A206400.P10007877911813568491

namespace A206400

/-- `Δ[A089593(n+1)]-1` -/
def P10007877911813568491.Spec : Prop :=
  ∀ n, P10007877911813568491.a n = A206400 (n + 1)

end A206400

/-! ## A206400.P17792855284467146249

`Δ[A090693(n+1)]-1`
-/

namespace A206400.P17792855284467146249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A206400.P17792855284467146249

namespace A206400

/-- `Δ[A090693(n+1)]-1` -/
def P17792855284467146249.Spec : Prop :=
  ∀ n, P17792855284467146249.a n = A206400 (n + 1)

end A206400

/-! ## A206400.P15752362905135471559

`Δ[A059793(n)/2]-1`
-/

namespace A206400.P15752362905135471559
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059793 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A206400.P15752362905135471559

namespace A206400

/-- `Δ[A059793(n)/2]-1` -/
def P15752362905135471559.Spec : Prop :=
  ∀ n, P15752362905135471559.a n = (A206400 (n + 1) : ℚ)

end A206400

/-! ## A206400.P2977906575770471199

`floor(Δ[sqrt(A002496(n+1))])`
-/

namespace A206400.P2977906575770471199
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002496 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A206400.P2977906575770471199

namespace A206400

/-- `floor(Δ[sqrt(A002496(n+1))])` -/
def P2977906575770471199.Spec : Prop :=
  ∀ n, P2977906575770471199.a n = A206400 (n + 1)

end A206400

/-! ## A206400.P12616207820499936923

`Δ[sqrt(A075408(n+1))]-1`
-/

namespace A206400.P12616207820499936923
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075408 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A206400.P12616207820499936923

namespace A206400

/-- `Δ[sqrt(A075408(n+1))]-1` -/
def P12616207820499936923.Spec : Prop :=
  ∀ n, P12616207820499936923.a n = (A206400 (n + 1) : ℝ)

end A206400

/-! ## A206400.P9178764036545178932

`A063196(Δ[A005574(n+1)])`
-/

namespace A206400.P9178764036545178932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (f1 (n + 1) - f1 n).toNat

end

end A206400.P9178764036545178932

namespace A206400

/-- `A063196(Δ[A005574(n+1)])` -/
def P9178764036545178932.Spec : Prop :=
  ∀ n, P9178764036545178932.a n = A206400 (n + 1)

end A206400

/-! ## A206400.P17561911589578324562

`A089593(n+2)-A005574(n+1)`
-/

namespace A206400.P17561911589578324562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 2) - A005574 (n + 1)

end

end A206400.P17561911589578324562

namespace A206400

/-- `A089593(n+2)-A005574(n+1)` -/
def P17561911589578324562.Spec : Prop :=
  ∀ n, P17561911589578324562.a n = A206400 (n + 1)

end A206400

/-! ## A206400.P8145623037684543710

`A005574(n+2)-A090693(n+1)`
-/

namespace A206400.P8145623037684543710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 2) - A090693 (n + 1)

end

end A206400.P8145623037684543710

namespace A206400

/-- `A005574(n+2)-A090693(n+1)` -/
def P8145623037684543710.Spec : Prop :=
  ∀ n, P8145623037684543710.a n = A206400 (n + 1)

end A206400

/-! ## A206400.P15389728886778438314

`A005574(n+2)-(A005574(n+1)+1)`
-/

namespace A206400.P15389728886778438314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 2) - (A005574 (n + 1) + 1)

end

end A206400.P15389728886778438314

namespace A206400

/-- `A005574(n+2)-(A005574(n+1)+1)` -/
def P15389728886778438314.Spec : Prop :=
  ∀ n, P15389728886778438314.a n = A206400 (n + 1)

theorem P15389728886778438314.correct : P15389728886778438314.Spec := by
  intro n
  simp only [A206400, Nat.add_sub_cancel, A206400.P15389728886778438314.a, A206400.P17016040575888186063.f1, A206400.P17016040575888186063.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A206400

/-! ## A206400.P17571130600901739149

`A090693(n+2)-(A090693(n+1)+1)`
-/

namespace A206400.P17571130600901739149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 2) - (A090693 (n + 1) + 1)

end

end A206400.P17571130600901739149

namespace A206400

/-- `A090693(n+2)-(A090693(n+1)+1)` -/
def P17571130600901739149.Spec : Prop :=
  ∀ n, P17571130600901739149.a n = A206400 (n + 1)

end A206400

/-! ## A206400.P9678533286806482393

`A005574(n+2)-A020725(A005574(n+1))`
-/

namespace A206400.P9678533286806482393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 2) - A020725 (A005574 (n + 1)).toNat

end

end A206400.P9678533286806482393

namespace A206400

/-- `A005574(n+2)-A020725(A005574(n+1))` -/
def P9678533286806482393.Spec : Prop :=
  ∀ n, P9678533286806482393.a n = A206400 (n + 1)

end A206400

/-! ## A206400.P14781482481355020682

`Δ[eq[1, A193330(n)]]-1`
-/

namespace A206400.P14781482481355020682
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A206400.P14781482481355020682

namespace A206400

/-- `Δ[eq[1, A193330(n)]]-1` -/
def P14781482481355020682.Spec : Prop :=
  ∀ n, P14781482481355020682.a n = A206400 (n + 1)

end A206400

/-! ## A206400.P2620367351541606134

`Δ[eq[1, A284376(n)]]-1`
-/

namespace A206400.P2620367351541606134
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284376 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A206400.P2620367351541606134

namespace A206400

/-- `Δ[eq[1, A284376(n)]]-1` -/
def P2620367351541606134.Spec : Prop :=
  ∀ n, P2620367351541606134.a n = A206400 (n + 1)

end A206400

/-! ## A206400.P8815129491462549112

`Δ[eq[2, A193432(n)]]-1`
-/

namespace A206400.P8815129491462549112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A206400.P8815129491462549112

namespace A206400

/-- `Δ[eq[2, A193432(n)]]-1` -/
def P8815129491462549112.Spec : Prop :=
  ∀ n, P8815129491462549112.a n = A206400 (n + 1)

end A206400

/-!
# A206401: E.g.f. A(x) satisfies: exp(A(x)) = x + exp(3*A(x)^2/2), with A(0) = 0.

The programs for A206401, there is no canonical definition to state claims against.
-/

/-! ## A206401.P10098282788617694836

`A286389(∑[∑[A059968(n)]])`
-/

namespace A206401.P10098282788617694836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059968 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286389 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A206401.P10098282788617694836

/-!
# A206404: E.g.f. A(x) satisfies: exp(-A(x)) = exp(-A(x)^2) - x, with A(0) = 0.

The programs for A206404, there is no canonical definition to state claims against.
-/

/-! ## A206404.P13485122089075674395

`or(A034448(A140054(n+1)), A328720(n+1))`
-/

namespace A206404.P13485122089075674395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034448 (A140054 (n + 1)).toNat) (A328720 (n + 1))

end

end A206404.P13485122089075674395

/-!
# A206405: E.g.f. A(x) satisfies: exp(A(x)) = x + 2*exp(A(x)^2) - exp(A(x)^3), with A(0) = 0.

The programs for A206405, there is no canonical definition to state claims against.
-/

/-! ## A206405.P4224953121450790572

`A186219(2*(2*(n+1))^(n-1))`
-/

namespace A206405.P4224953121450790572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186219 (SequenceMachineLib.roundAway (2 * (2 * (n + 1) : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A206405.P4224953121450790572

/-!
# A206406: Number of (n+1) X (n+1) 0..2 arrays with every 2 X 3 or 3 X 2 subblock having an equal number of clockwise and counterclockwise edge increases.

The programs for A206406, there is no canonical definition to state claims against.
-/

/-! ## A206406.P5097151099502875056

`A206414(∑[4*n]+1)`
-/

namespace A206406.P5097151099502875056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206414 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206406.P5097151099502875056

/-!
# A206407: Number of (n+1) X 2 0..2 arrays with every 2 X 3 or 3 X 2 subblock having an equal number of clockwise and counterclockwise edge increases.

The programs for A206407, there is no canonical definition to state claims against.
-/

/-! ## A206407.P2159561335418845788

`A206414(∑[n]+1)`
-/

namespace A206407.P2159561335418845788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206414 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206407.P2159561335418845788

/-! ## A206407.P7838875489590380732

`lcm(3, A206414(A000124(n)))`
-/

namespace A206407.P7838875489590380732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A206414 (A000124 n).toNat)

end

end A206407.P7838875489590380732

/-! ## A206407.P842468831435312229

`record[root(A206414(n+1), A004070(n))]`
-/

namespace A206407.P842468831435312229
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206414 (n + 1) : ℝ) ^ (1 / (A004070 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206407.P842468831435312229

/-! ## A206407.P4001696523025029798

`record[root(A206414(n+1), A144404(n))]`
-/

namespace A206407.P4001696523025029798
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A206414 (n + 1) : ℝ) ^ (1 / (A144404 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206407.P4001696523025029798

/-! ## A206407.P14821345403445908941

`record[gcd(A002262(n), A206414(n+1))]`
-/

namespace A206407.P14821345403445908941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206414 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206407.P14821345403445908941

/-!
# A206408: Number of (n+1) X 3 0..2 arrays with every 2 X 3 or 3 X 2 subblock having an equal number of clockwise and counterclockwise edge increases.

The programs for A206408, there is no canonical definition to state claims against.
-/

/-! ## A206408.P5084400452280489995

`A206414(∑[n+1]+2)`
-/

namespace A206408.P5084400452280489995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206414 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206408.P5084400452280489995

/-! ## A206408.P12144312987271797159

`record[gcd(A002262(n), A206414(n+2))]`
-/

namespace A206408.P12144312987271797159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A206414 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206408.P12144312987271797159

/-! ## A206408.P9839663310678175477

`A014963(6*(n+2))*A206414(A133263(n+1))`
-/

namespace A206408.P9839663310678175477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 2)) * A206414 (A133263 (n + 1)).toNat

end

end A206408.P9839663310678175477

/-! ## A206408.P7730963659656808451

`record[A206414(A347129(2^val(n+1, 2))+2)]`
-/

namespace A206408.P7730963659656808451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206414 (A347129 (2 ^ SequenceMachineLib.valuation (n + 1) 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206408.P7730963659656808451

/-!
# A206409: Number of (n+1) X 4 0..2 arrays with every 2 X 3 or 3 X 2 subblock having an equal number of clockwise and counterclockwise edge increases.

The programs for A206409, there is no canonical definition to state claims against.
-/

/-! ## A206409.P7421906582396685848

`A206414(∑[n+2]+4)`
-/

namespace A206409.P7421906582396685848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206414 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206409.P7421906582396685848

/-! ## A206409.P1449134788664236290

`lcm(3, A206414(A167614(n+1)))`
-/

namespace A206409.P1449134788664236290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A206414 (A167614 (n + 1)).toNat)

end

end A206409.P1449134788664236290

/-! ## A206409.P18039040421124321297

`or(A025917(n), A206414(A167614(n+1)))`
-/

namespace A206409.P18039040421124321297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025917 n) (A206414 (A167614 (n + 1)).toNat)

end

end A206409.P18039040421124321297

/-! ## A206409.P4918577609449726030

`or(A059841(n), A206414(A167614(n+1)))`
-/

namespace A206409.P4918577609449726030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 n) (A206414 (A167614 (n + 1)).toNat)

end

end A206409.P4918577609449726030

/-! ## A206409.P17211388513070817576

`or(A168046(n), A206414(A167614(n+1)))`
-/

namespace A206409.P17211388513070817576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A168046 n) (A206414 (A167614 (n + 1)).toNat)

end

end A206409.P17211388513070817576

/-!
# A206410: Number of (n+1) X 5 0..2 arrays with every 2 X 3 or 3 X 2 subblock having an equal number of clockwise and counterclockwise edge increases.

The programs for A206410, there is no canonical definition to state claims against.
-/

/-! ## A206410.P15540888091571840487

`A206414(A374004(n+1))`
-/

namespace A206410.P15540888091571840487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206414 (A374004 (n + 1)).toNat

end

end A206410.P15540888091571840487

/-! ## A206410.P15097721980520961011

`A206414(A141214(n)+7)`
-/

namespace A206410.P15097721980520961011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206414 (A141214 n + 7).toNat

end

end A206410.P15097721980520961011

/-! ## A206410.P6350936896275919887

`A206414(A052905(n)+9)`
-/

namespace A206410.P6350936896275919887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206414 (A052905 n + 9).toNat

end

end A206410.P6350936896275919887

/-! ## A206410.P9888813913664067775

`A206414(A055999(n)+10)`
-/

namespace A206410.P9888813913664067775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206414 (A055999 n + 10).toNat

end

end A206410.P9888813913664067775

/-! ## A206410.P14346681589946312874

`A206414(A167614(n+2)+1)`
-/

namespace A206410.P14346681589946312874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206414 (A167614 (n + 2) + 1).toNat

end

end A206410.P14346681589946312874

/-!
# A206411: Number of (n+1) X 6 0..2 arrays with every 2 X 3 or 3 X 2 subblock having an equal number of clockwise and counterclockwise edge increases.

The programs for A206411, there is no canonical definition to state claims against.
-/

/-! ## A206411.P16274554653111258241

`A206414(A374005(n+1))`
-/

namespace A206411.P16274554653111258241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206414 (A374005 (n + 1)).toNat

end

end A206411.P16274554653111258241

/-! ## A206411.P18354570088207237282

`A206414(A155212(n)+13)`
-/

namespace A206411.P18354570088207237282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206414 (A155212 n + 13).toNat

end

end A206411.P18354570088207237282

/-! ## A206411.P7457165704603357383

`A206414(eq[6, A131818(n+1)])`
-/

namespace A206411.P7457165704603357383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206411.P7457165704603357383

/-! ## A206411.P11676120098821186882

`A206414(A046691(n+3))`
-/

namespace A206411.P11676120098821186882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206414 (A046691 (n + 3)).toNat

end

end A206411.P11676120098821186882

/-! ## A206411.P17203347212158965193

`A206414(Δ[A023545(n+1)])`
-/

namespace A206411.P17203347212158965193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206414 (f1 (n + 1) - f1 n).toNat

end

end A206411.P17203347212158965193

/-!
# A206412: Number of (n+1) X 7 0..2 arrays with every 2 X 3 or 3 X 2 subblock having an equal number of clockwise and counterclockwise edge increases.

The programs for A206412, there is no canonical definition to state claims against.
-/

/-! ## A206412.P7413799632963127484

`A206414(A374007(n+1))`
-/

namespace A206412.P7413799632963127484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206414 (A374007 (n + 1)).toNat

end

end A206412.P7413799632963127484

/-! ## A206412.P9856779277713555136

`A206414(eq[7, A131818(n+1)])`
-/

namespace A206412.P9856779277713555136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206412.P9856779277713555136

/-! ## A206412.P16222525204139335533

`A206414(A000124(n+6)-6)`
-/

namespace A206412.P16222525204139335533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206414 (A000124 (n + 6) - 6).toNat

end

end A206412.P16222525204139335533

/-! ## A206412.P6738515918506565213

`A206414(Δ[Δ[A006504(n+1)]])`
-/

namespace A206412.P6738515918506565213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206414 (f1 (n + 1) - f1 n).toNat

end

end A206412.P6738515918506565213

/-!
# A206413: 

The programs for A206413, there is no canonical definition to state claims against.
-/

/-! ## A206413.P6757633099743115451

`A206414(eq[8, A131818(n+1)])`
-/

namespace A206413.P6757633099743115451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206413.P6757633099743115451

/-!
# A206415: Achromatic number of K_5 X K_n.

The programs for A206415, there is no canonical definition to state claims against.
-/

/-! ## A206415.P12789539702996775219

`A330780(4*A110833(n+1))`
-/

namespace A206415.P12789539702996775219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330780 (4 * A110833 (n + 1)).toNat

end

end A206415.P12789539702996775219

/-! ## A206415.P12788892909252707275

`A330780((2*A008864(n+1))²)`
-/

namespace A206415.P12788892909252707275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330780 ((2 * A008864 (n + 1)) ^ 2).toNat

end

end A206415.P12788892909252707275

/-! ## A206415.P7229660791979446167

`A330780(A005843(A008864(n+1))²)`
-/

namespace A206415.P7229660791979446167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330780 (A005843 (A008864 (n + 1)).toNat ^ 2).toNat

end

end A206415.P7229660791979446167

/-! ## A206415.P1101523339703819359

`lt[A124940(A124939(3*n+1)), A124983(n+1)]`
-/

namespace A206415.P1101523339703819359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124940 (A124939 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124983 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A206415.P1101523339703819359

/-! ## A206415.P7760835179731016912

`lt[A124940(A124939(3*n+1)), A027757(3*(n+1))]`
-/

namespace A206415.P7760835179731016912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124940 (A124939 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027757 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A206415.P7760835179731016912

/-!
# A206417: (5*F(n)+3*L(n)-8)/2.

The programs for A206417, the canonical program `A206417.P2195007074502506346` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206417 has offset 1).

The definition of A206417 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206417.P2195007074502506346

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=3, a(2)=7`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A206417

/-- `2*a(n-1)-a(n-3)` -/
def P2195007074502506346.Spec : Prop :=
  ∀ n, P2195007074502506346.a n = A206417 (n + 1)

theorem P2195007074502506346.correct : P2195007074502506346.Spec := by
  intro n
  simp only [A206417, Nat.add_sub_cancel]

end A206417

/-! ## A206417.P10333178143995947381

`round(ϕ^(n+3))-4`
-/

namespace A206417.P10333178143995947381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 3)) - 4

end

end A206417.P10333178143995947381

namespace A206417

/-- `round(ϕ^(n+3))-4` -/
def P10333178143995947381.Spec : Prop :=
  ∀ n, P10333178143995947381.a n = A206417 (n + 1)

end A206417

/-! ## A206417.P13545879285132446299

`floor(tan(5)+ϕ^(n+3))`
-/

namespace A206417.P13545879285132446299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (5 : ℝ) + Real.goldenRatio ^ (n + 3)⌋

end

end A206417.P13545879285132446299

namespace A206417

/-- `floor(tan(5)+ϕ^(n+3))` -/
def P13545879285132446299.Spec : Prop :=
  ∀ n, P13545879285132446299.a n = A206417 (n + 1)

end A206417

/-! ## A206417.P3626478418950265987

`floor(ϕ^(n+3)-sinh(2))`
-/

namespace A206417.P3626478418950265987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ (n + 3) - Real.sinh (2 : ℝ)⌋

end

end A206417.P3626478418950265987

namespace A206417

/-- `floor(ϕ^(n+3)-sinh(2))` -/
def P3626478418950265987.Spec : Prop :=
  ∀ n, P3626478418950265987.a n = A206417 (n + 1)

end A206417

/-! ## A206417.P17860966479750996718

`floor(cot(6)+ϕ^(n+3))`
-/

namespace A206417.P17860966479750996718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (6 : ℝ) + Real.goldenRatio ^ (n + 3)⌋

end

end A206417.P17860966479750996718

namespace A206417

/-- `floor(cot(6)+ϕ^(n+3))` -/
def P17860966479750996718.Spec : Prop :=
  ∀ n, P17860966479750996718.a n = A206417 (n + 1)

end A206417

/-! ## A206417.P5429031775954548635

`round(ϕ*(a(n-1)+ϕ))` with `a(0)=0`
-/

namespace A206417.P5429031775954548635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * ((a (n - 1) : ℝ) + Real.goldenRatio))

end

end A206417.P5429031775954548635

namespace A206417

/-- `round(ϕ*(a(n-1)+ϕ))` -/
def P5429031775954548635.Spec : Prop :=
  ∀ n, P5429031775954548635.a n = A206417 (n + 1)

end A206417

/-! ## A206417.P18290423548263667889

`abs(A001610(n+2)-3)`
-/

namespace A206417.P18290423548263667889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001610 (n + 2) - 3|

end

end A206417.P18290423548263667889

namespace A206417

/-- `abs(A001610(n+2)-3)` -/
def P18290423548263667889.Spec : Prop :=
  ∀ n, P18290423548263667889.a n = A206417 (n + 1)

end A206417

/-! ## A206417.P17358570613957685267

`record[A000032(abs(3-n))-4]`
-/

namespace A206417.P17358570613957685267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 |3 - (n : ℤ)|.toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206417.P17358570613957685267

namespace A206417

/-- `record[A000032(abs(3-n))-4]` -/
def P17358570613957685267.Spec : Prop :=
  ∀ n, P17358570613957685267.a n = A206417 (n + 1)

end A206417

/-! ## A206417.P12166244604105021085

`floor(∑[(ϕ+2)*A000045(n)])`
-/

namespace A206417.P12166244604105021085
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.goldenRatio + 2) * (A000045 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A206417.P12166244604105021085

namespace A206417

/-- `floor(∑[(ϕ+2)*A000045(n)])` -/
def P12166244604105021085.Spec : Prop :=
  ∀ n, P12166244604105021085.a n = A206417 (n + 1)

end A206417

/-! ## A206417.P16143697392406084959

`abs(4-A000032(2*n-(n-3)))`
-/

namespace A206417.P16143697392406084959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - A000032 ((2 * n : ℤ) - ((n : ℤ) - 3)).toNat|

end

end A206417.P16143697392406084959

namespace A206417

/-- `abs(4-A000032(2*n-(n-3)))` -/
def P16143697392406084959.Spec : Prop :=
  ∀ n, P16143697392406084959.a n = A206417 (n + 1)

end A206417

/-! ## A206417.P1500315625628334882

`floor((ϕ+2)*(A000045(n+2)-1))`
-/

namespace A206417.P1500315625628334882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio + 2) * (A000045 (n + 2) - 1 : ℝ)⌋

end

end A206417.P1500315625628334882

namespace A206417

/-- `floor((ϕ+2)*(A000045(n+2)-1))` -/
def P1500315625628334882.Spec : Prop :=
  ∀ n, P1500315625628334882.a n = A206417 (n + 1)

end A206417

/-! ## A206417.P3539802824797441615

`∑[A000032(2*n-(n-1))-C(2, n+2)]`
-/

namespace A206417.P3539802824797441615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206417.P3539802824797441615

namespace A206417

/-- `∑[A000032(2*n-(n-1))-C(2, n+2)]` -/
def P3539802824797441615.Spec : Prop :=
  ∀ n, P3539802824797441615.a n = A206417 (n + 1)

end A206417

/-! ## A206417.P3493504872247015079

`∑[A288219(n)-A000032(n)]`
-/

namespace A206417.P3493504872247015079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288219 n - A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206417.P3493504872247015079

namespace A206417

/-- `∑[A288219(n)-A000032(n)]` -/
def P3493504872247015079.Spec : Prop :=
  ∀ n, P3493504872247015079.a n = A206417 (n + 1)

end A206417

/-! ## A206417.P10469177726393110947

`∑[A000204(n+1)%A000285(n)]`
-/

namespace A206417.P10469177726393110947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000204 (n + 1)) (A000285 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206417.P10469177726393110947

namespace A206417

/-- `∑[A000204(n+1)%A000285(n)]` -/
def P10469177726393110947.Spec : Prop :=
  ∀ n, P10469177726393110947.a n = A206417 (n + 1)

end A206417

/-! ## A206417.P8860756219886649661

`∑[A000032(n+1)*A019425(2*n)]`
-/

namespace A206417.P8860756219886649661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A019425 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206417.P8860756219886649661

namespace A206417

/-- `∑[A000032(n+1)*A019425(2*n)]` -/
def P8860756219886649661.Spec : Prop :=
  ∀ n, P8860756219886649661.a n = A206417 (n + 1)

end A206417

/-! ## A206417.P15344208930384668937

`abs(A244213(n+3))`
-/

namespace A206417.P15344208930384668937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A244213 (n + 3)|

end

end A206417.P15344208930384668937

namespace A206417

/-- `abs(A244213(n+3))` -/
def P15344208930384668937.Spec : Prop :=
  ∀ n, P15344208930384668937.a n = A206417 (n + 1)

end A206417

/-! ## A206417.P8146449093333858643

`∑[A000032(n+1)%A000032(2*n+1)]`
-/

namespace A206417.P8146449093333858643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (n + 1)) (A000032 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206417.P8146449093333858643

namespace A206417

/-- `∑[A000032(n+1)%A000032(2*n+1)]` -/
def P8146449093333858643.Spec : Prop :=
  ∀ n, P8146449093333858643.a n = A206417 (n + 1)

end A206417

/-! ## A206417.P14131604763782918600

`∑[A008683(2*(n+1)²)+A000032(n+1)]`
-/

namespace A206417.P14131604763782918600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * (n + 1) ^ 2) + A000032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206417.P14131604763782918600

namespace A206417

/-- `∑[A008683(2*(n+1)²)+A000032(n+1)]` -/
def P14131604763782918600.Spec : Prop :=
  ∀ n, P14131604763782918600.a n = A206417 (n + 1)

end A206417

/-!
# A206418: a(n) is the least integer k > 1 such that 1 + k^(5^n) + k^(2*5^n) + k^(3*5^n) + k^(4*5^n) is prime.

The programs for A206418, there is no canonical definition to state claims against.
-/

/-! ## A206418.P16195804591541295016

`A085398(5^(n+1))`
-/

namespace A206418.P16195804591541295016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (5 ^ (n + 1))

end

end A206418.P16195804591541295016

/-!
# A206419: Fibonacci sequence beginning 11, 7.

The programs for A206419, the canonical program `A206419.P7480489538668303579` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206419 has offset 1).

The definition of A206419 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206419.P7480489538668303579

`a(n-1)+a(n-2)` with `a(0)=11, a(1)=7`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A206419

/-- `a(n-1)+a(n-2)` -/
def P7480489538668303579.Spec : Prop :=
  ∀ n, (P7480489538668303579.a n : ℤ) = A206419 (n + 1)

theorem P7480489538668303579.correct : P7480489538668303579.Spec := by
  intro n
  simp only [A206419, Nat.add_sub_cancel]

end A206419

/-! ## A206419.P17378922423029963752

`A190995(n)+A118658(n)`
-/

namespace A206419.P17378922423029963752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190995 n + A118658 n

end

end A206419.P17378922423029963752

namespace A206419

/-- `A190995(n)+A118658(n)` -/
def P17378922423029963752.Spec : Prop :=
  ∀ n, P17378922423029963752.a n = A206419 (n + 1)

end A206419

/-! ## A206419.P15123024233997543199

`A212804(n)+A190996(n)`
-/

namespace A206419.P15123024233997543199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A190996 n

end

end A206419.P15123024233997543199

namespace A206419

/-- `A212804(n)+A190996(n)` -/
def P15123024233997543199.Spec : Prop :=
  ∀ n, P15123024233997543199.a n = A206419 (n + 1)

end A206419

/-! ## A206419.P10853584574942856420

`A020712(n)+Δ[A187892(n)]`
-/

namespace A206419.P10853584574942856420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 n + (f1 (n + 1) - f1 n)

end

end A206419.P10853584574942856420

namespace A206419

/-- `A020712(n)+Δ[A187892(n)]` -/
def P10853584574942856420.Spec : Prop :=
  ∀ n, P10853584574942856420.a n = A206419 (n + 1)

end A206419

/-! ## A206419.P6288875625311958392

`A156279(n)+A022086(n+1)`
-/

namespace A206419.P6288875625311958392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156279 n + A022086 (n + 1)

end

end A206419.P6288875625311958392

namespace A206419

/-- `A156279(n)+A022086(n+1)` -/
def P6288875625311958392.Spec : Prop :=
  ∀ n, P6288875625311958392.a n = A206419 (n + 1)

end A206419

/-! ## A206419.P10894302677797693493

`A022101(n+1)-A022088(n)`
-/

namespace A206419.P10894302677797693493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 (n + 1) - A022088 n

end

end A206419.P10894302677797693493

namespace A206419

/-- `A022101(n+1)-A022088(n)` -/
def P10894302677797693493.Spec : Prop :=
  ∀ n, P10894302677797693493.a n = A206419 (n + 1)

end A206419

/-! ## A206419.P14476303845096240072

`A022345(n+1)-A022087(n)`
-/

namespace A206419.P14476303845096240072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 (n + 1) - A022087 n

end

end A206419.P14476303845096240072

namespace A206419

/-- `A022345(n+1)-A022087(n)` -/
def P14476303845096240072.Spec : Prop :=
  ∀ n, P14476303845096240072.a n = A206419 (n + 1)

end A206419

/-! ## A206419.P6476751300755188765

`A022346(n+1)-A022095(n)`
-/

namespace A206419.P6476751300755188765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 (n + 1) - A022095 n

end

end A206419.P6476751300755188765

namespace A206419

/-- `A022346(n+1)-A022095(n)` -/
def P6476751300755188765.Spec : Prop :=
  ∀ n, P6476751300755188765.a n = A206419 (n + 1)

end A206419

/-! ## A206419.P8043983586961380505

`A206420(n+1)-A000045(n)`
-/

namespace A206419.P8043983586961380505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206420 (n + 1) - A000045 n

end

end A206419.P8043983586961380505

namespace A206419

/-- `A206420(n+1)-A000045(n)` -/
def P8043983586961380505.Spec : Prop :=
  ∀ n, P8043983586961380505.a n = A206419 (n + 1)

end A206419

/-! ## A206419.P5986097175892590434

`A206610(n+1)-A000032(n)`
-/

namespace A206419.P5986097175892590434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206610 (n + 1) - A000032 n

end

end A206419.P5986097175892590434

namespace A206419

/-- `A206610(n+1)-A000032(n)` -/
def P5986097175892590434.Spec : Prop :=
  ∀ n, P5986097175892590434.a n = A206419 (n + 1)

end A206419

/-! ## A206419.P1150394688682069475

`A206641(n+1)-A013655(n)`
-/

namespace A206419.P1150394688682069475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206641 (n + 1) - A013655 n

end

end A206419.P1150394688682069475

namespace A206419

/-- `A206641(n+1)-A013655(n)` -/
def P1150394688682069475.Spec : Prop :=
  ∀ n, P1150394688682069475.a n = A206419 (n + 1)

end A206419

/-! ## A206419.P15721768206467795133

`A206608(n+1)-A020695(n)`
-/

namespace A206419.P15721768206467795133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206608 (n + 1) - A020695 n

end

end A206419.P15721768206467795133

namespace A206419

/-- `A206608(n+1)-A020695(n)` -/
def P15721768206467795133.Spec : Prop :=
  ∀ n, P15721768206467795133.a n = A206419 (n + 1)

end A206419

/-! ## A206419.P15637279887270467278

`A280154(n)+A000045(n+2)`
-/

namespace A206419.P15637279887270467278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280154 n + A000045 (n + 2)

end

end A206419.P15637279887270467278

namespace A206419

/-- `A280154(n)+A000045(n+2)` -/
def P15637279887270467278.Spec : Prop :=
  ∀ n, P15637279887270467278.a n = A206419 (n + 1)

end A206419

/-! ## A206419.P16186230371030072419

`A206611(n+1)-A118658(n)`
-/

namespace A206419.P16186230371030072419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206611 (n + 1) - A118658 n

end

end A206419.P16186230371030072419

namespace A206419

/-- `A206611(n+1)-A118658(n)` -/
def P16186230371030072419.Spec : Prop :=
  ∀ n, P16186230371030072419.a n = A206419 (n + 1)

end A206419

/-! ## A206419.P17509349786928950762

`A206423(n+1)-A212804(n)`
-/

namespace A206419.P17509349786928950762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206423 (n + 1) - A212804 n

end

end A206419.P17509349786928950762

namespace A206419

/-- `A206423(n+1)-A212804(n)` -/
def P17509349786928950762.Spec : Prop :=
  ∀ n, P17509349786928950762.a n = A206419 (n + 1)

end A206419

/-! ## A206419.P12472759727133653395

`A190995(n)+2*A212804(n)`
-/

namespace A206419.P12472759727133653395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190995 n + 2 * A212804 n

end

end A206419.P12472759727133653395

namespace A206419

/-- `A190995(n)+2*A212804(n)` -/
def P12472759727133653395.Spec : Prop :=
  ∀ n, P12472759727133653395.a n = A206419 (n + 1)

end A206419

/-! ## A206419.P16398601566418451258

`A190996(n)+A118658(n)/2`
-/

namespace A206419.P16398601566418451258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190996 n : ℚ) + (A118658 n : ℚ) / 2

end

end A206419.P16398601566418451258

namespace A206419

/-- `A190996(n)+A118658(n)/2` -/
def P16398601566418451258.Spec : Prop :=
  ∀ n, P16398601566418451258.a n = (A206419 (n + 1) : ℚ)

end A206419

/-! ## A206419.P9643972495650983543

`A206422(n+1)-2*A000045(n)`
-/

namespace A206419.P9643972495650983543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206422 (n + 1) - 2 * A000045 n

end

end A206419.P9643972495650983543

namespace A206419

/-- `A206422(n+1)-2*A000045(n)` -/
def P9643972495650983543.Spec : Prop :=
  ∀ n, P9643972495650983543.a n = A206419 (n + 1)

end A206419

/-! ## A206419.P11279752348501784486

`A206611(n+1)-2*A212804(n)`
-/

namespace A206419.P11279752348501784486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206611 (n + 1) - 2 * A212804 n

end

end A206419.P11279752348501784486

namespace A206419

/-- `A206611(n+1)-2*A212804(n)` -/
def P11279752348501784486.Spec : Prop :=
  ∀ n, P11279752348501784486.a n = A206419 (n + 1)

end A206419

/-!
# A206420: Fibonacci sequence beginning 11, 8.

The programs for A206420, the canonical program `A206420.P3550530061030299848` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206420 has offset 1).

The definition of A206420 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206420.P3550530061030299848

`a(n-1)+a(n-2)` with `a(0)=11, a(1)=8`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A206420

/-- `a(n-1)+a(n-2)` -/
def P3550530061030299848.Spec : Prop :=
  ∀ n, (P3550530061030299848.a n : ℤ) = A206420 (n + 1)

theorem P3550530061030299848.correct : P3550530061030299848.Spec := by
  intro n
  simp only [A206420, Nat.add_sub_cancel]

end A206420

/-! ## A206420.P5383246794901973039

`A190995(n)+A000032(n)`
-/

namespace A206420.P5383246794901973039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190995 n + A000032 n

end

end A206420.P5383246794901973039

namespace A206420

/-- `A190995(n)+A000032(n)` -/
def P5383246794901973039.Spec : Prop :=
  ∀ n, P5383246794901973039.a n = A206420 (n + 1)

end A206420

/-! ## A206420.P15464177365679178195

`A184959(n)+A152163(n)`
-/

namespace A206420.P15464177365679178195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184959 n + A152163 n

end

end A206420.P15464177365679178195

namespace A206420

/-- `A184959(n)+A152163(n)` -/
def P15464177365679178195.Spec : Prop :=
  ∀ n, P15464177365679178195.a n = A206420 (n + 1)

end A206420

/-! ## A206420.P2511868371336102293

`A190996(n)+A000045(n+1)`
-/

namespace A206420.P2511868371336102293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190996 n + A000045 (n + 1)

end

end A206420.P2511868371336102293

namespace A206420

/-- `A190996(n)+A000045(n+1)` -/
def P2511868371336102293.Spec : Prop :=
  ∀ n, P2511868371336102293.a n = A206420 (n + 1)

end A206420

/-! ## A206420.P16393775878638610911

`A206419(n+1)+A000045(n)`
-/

namespace A206420.P16393775878638610911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206419 (n + 1) + A000045 n

end

end A206420.P16393775878638610911

namespace A206420

/-- `A206419(n+1)+A000045(n)` -/
def P16393775878638610911.Spec : Prop :=
  ∀ n, P16393775878638610911.a n = A206420 (n + 1)

end A206420

/-! ## A206420.P16986708221704020633

`A280154(n)+A000032(n+1)`
-/

namespace A206420.P16986708221704020633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280154 n + A000032 (n + 1)

end

end A206420.P16986708221704020633

namespace A206420

/-- `A280154(n)+A000032(n+1)` -/
def P16986708221704020633.Spec : Prop :=
  ∀ n, P16986708221704020633.a n = A206420 (n + 1)

end A206420

/-! ## A206420.P12121767599335687809

`A280154(n)+A000204(n+1)`
-/

namespace A206420.P12121767599335687809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280154 n + A000204 (n + 1)

end

end A206420.P12121767599335687809

namespace A206420

/-- `A280154(n)+A000204(n+1)` -/
def P12121767599335687809.Spec : Prop :=
  ∀ n, P12121767599335687809.a n = A206420 (n + 1)

end A206420

/-! ## A206420.P2101504356668459884

`A022346(n+1)-A000285(n)`
-/

namespace A206420.P2101504356668459884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 (n + 1) - A000285 n

end

end A206420.P2101504356668459884

namespace A206420

/-- `A022346(n+1)-A000285(n)` -/
def P2101504356668459884.Spec : Prop :=
  ∀ n, P2101504356668459884.a n = A206420 (n + 1)

end A206420

/-! ## A206420.P6710027168990337913

`A022101(n+1)-A022087(n)`
-/

namespace A206420.P6710027168990337913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 (n + 1) - A022087 n

end

end A206420.P6710027168990337913

namespace A206420

/-- `A022101(n+1)-A022087(n)` -/
def P6710027168990337913.Spec : Prop :=
  ∀ n, P6710027168990337913.a n = A206420 (n + 1)

end A206420

/-! ## A206420.P5170036486767918358

`A022345(n+1)-A022086(n)`
-/

namespace A206420.P5170036486767918358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 (n + 1) - A022086 n

end

end A206420.P5170036486767918358

namespace A206420

/-- `A022345(n+1)-A022086(n)` -/
def P5170036486767918358.Spec : Prop :=
  ∀ n, P5170036486767918358.a n = A206420 (n + 1)

end A206420

/-! ## A206420.P17015623403824453964

`A156279(n)+A000032(n+2)`
-/

namespace A206420.P17015623403824453964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156279 n + A000032 (n + 2)

end

end A206420.P17015623403824453964

namespace A206420

/-- `A156279(n)+A000032(n+2)` -/
def P17015623403824453964.Spec : Prop :=
  ∀ n, P17015623403824453964.a n = A206420 (n + 1)

end A206420

/-! ## A206420.P15416857345386830652

`A156279(n)+A000204(n+2)`
-/

namespace A206420.P15416857345386830652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156279 n + A000204 (n + 2)

end

end A206420.P15416857345386830652

namespace A206420

/-- `A156279(n)+A000204(n+2)` -/
def P15416857345386830652.Spec : Prop :=
  ∀ n, P15416857345386830652.a n = A206420 (n + 1)

end A206420

/-! ## A206420.P15670386778183983221

`A206422(n+1)-A000045(n)`
-/

namespace A206420.P15670386778183983221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206422 (n + 1) - A000045 n

end

end A206420.P15670386778183983221

namespace A206420

/-- `A206422(n+1)-A000045(n)` -/
def P15670386778183983221.Spec : Prop :=
  ∀ n, P15670386778183983221.a n = A206420 (n + 1)

end A206420

/-! ## A206420.P10723694773123003926

`A206609(n+1)-A000032(n)`
-/

namespace A206420.P10723694773123003926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206609 (n + 1) - A000032 n

end

end A206420.P10723694773123003926

namespace A206420

/-- `A206609(n+1)-A000032(n)` -/
def P10723694773123003926.Spec : Prop :=
  ∀ n, P10723694773123003926.a n = A206420 (n + 1)

end A206420

/-! ## A206420.P7507981919848917324

`A206607(n+1)-A020695(n)`
-/

namespace A206420.P7507981919848917324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206607 (n + 1) - A020695 n

end

end A206420.P7507981919848917324

namespace A206420

/-- `A206607(n+1)-A020695(n)` -/
def P7507981919848917324.Spec : Prop :=
  ∀ n, P7507981919848917324.a n = A206420 (n + 1)

end A206420

/-! ## A206420.P14889584163689968007

`A206641(n+1)-A104449(n)`
-/

namespace A206420.P14889584163689968007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206641 (n + 1) - A104449 n

end

end A206420.P14889584163689968007

namespace A206420

/-- `A206641(n+1)-A104449(n)` -/
def P14889584163689968007.Spec : Prop :=
  ∀ n, P14889584163689968007.a n = A206420 (n + 1)

end A206420

/-! ## A206420.P2313067271830664003

`A206610(n+1)-A118658(n)`
-/

namespace A206420.P2313067271830664003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206610 (n + 1) - A118658 n

end

end A206420.P2313067271830664003

namespace A206420

/-- `A206610(n+1)-A118658(n)` -/
def P2313067271830664003.Spec : Prop :=
  ∀ n, P2313067271830664003.a n = A206420 (n + 1)

end A206420

/-! ## A206420.P17702724531689088160

`A169985(n+2)+A156279(n)`
-/

namespace A206420.P17702724531689088160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 (n + 2) + A156279 n

end

end A206420.P17702724531689088160

namespace A206420

/-- `A169985(n+2)+A156279(n)` -/
def P17702724531689088160.Spec : Prop :=
  ∀ n, P17702724531689088160.a n = A206420 (n + 1)

end A206420

/-! ## A206420.P15114575409599473601

`A206423(n+1)-A152163(n)`
-/

namespace A206420.P15114575409599473601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206423 (n + 1) - A152163 n

end

end A206420.P15114575409599473601

namespace A206420

/-- `A206423(n+1)-A152163(n)` -/
def P15114575409599473601.Spec : Prop :=
  ∀ n, P15114575409599473601.a n = A206420 (n + 1)

end A206420

/-!
# A206421: Corresponding values of sigma(m) of numbers in A206036.

The programs for A206421, there is no canonical definition to state claims against.
-/

/-! ## A206421.P15901470685015747675

`A000203(A206036(n+1))`
-/

namespace A206421.P15901470685015747675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A206036 (n + 1)).toNat

end

end A206421.P15901470685015747675

/-! ## A206421.P93361504866901829

`∑{d}[lt[A241479(n+2), n]+2, #]`
-/

namespace A206421.P93361504866901829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241479 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A206421.P93361504866901829

/-! ## A206421.P13952148837039652058

`A000203(comp[C(A241479(n+1), n)])`
-/

namespace A206421.P13952148837039652058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A241479 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A206421.P13952148837039652058

/-! ## A206421.P9041888152275315432

`A000203(lt[1, A070242(n+1)]+1)`
-/

namespace A206421.P9041888152275315432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A206421.P9041888152275315432

/-! ## A206421.P4717550561909158916

`A000203(record[(n+6)%A325652(n+6)])`
-/

namespace A206421.P4717550561909158916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 6 : ℤ) (A325652 (n + 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A206421.P4717550561909158916

/-! ## A206421.P16359025846358143068

`A069290(A206036(n+1)²)`
-/

namespace A206421.P16359025846358143068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A206036 (n + 1) ^ 2).toNat

end

end A206421.P16359025846358143068

/-! ## A206421.P613445232087976988

`A000203(eq[1, A256596(n+1)]+1)`
-/

namespace A206421.P613445232087976988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A206421.P613445232087976988

/-!
# A206422: Fibonacci sequence beginning 11, 9.

The programs for A206422, the canonical program `A206422.P17763430790334703902` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206422 has offset 1).

The definition of A206422 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206422.P17763430790334703902

`a(n-1)+a(n-2)` with `a(0)=11, a(1)=9`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A206422

/-- `a(n-1)+a(n-2)` -/
def P17763430790334703902.Spec : Prop :=
  ∀ n, (P17763430790334703902.a n : ℤ) = A206422 (n + 1)

theorem P17763430790334703902.correct : P17763430790334703902.Spec := by
  intro n
  simp only [A206422, Nat.add_sub_cancel]

end A206422

/-! ## A206422.P5927077123372288007

`A156279(n)+A020701(n)`
-/

namespace A206422.P5927077123372288007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156279 n + A020701 n

end

end A206422.P5927077123372288007

namespace A206422

/-- `A156279(n)+A020701(n)` -/
def P5927077123372288007.Spec : Prop :=
  ∀ n, P5927077123372288007.a n = A206422 (n + 1)

end A206422

/-! ## A206422.P18229953641486734889

`A280154(n)+A000285(n)`
-/

namespace A206422.P18229953641486734889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280154 n + A000285 n

end

end A206422.P18229953641486734889

namespace A206422

/-- `A280154(n)+A000285(n)` -/
def P18229953641486734889.Spec : Prop :=
  ∀ n, P18229953641486734889.a n = A206422 (n + 1)

end A206422

/-! ## A206422.P18052568237544556269

`A212804(n)+A184959(n)`
-/

namespace A206422.P18052568237544556269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A184959 n

end

end A206422.P18052568237544556269

namespace A206422

/-- `A212804(n)+A184959(n)` -/
def P18052568237544556269.Spec : Prop :=
  ∀ n, P18052568237544556269.a n = A206422 (n + 1)

end A206422

/-! ## A206422.P4106074883597323825

`A118658(n)+A022092(n+1)`
-/

namespace A206422.P4106074883597323825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022092 (n + 1)

end

end A206422.P4106074883597323825

namespace A206422

/-- `A118658(n)+A022092(n+1)` -/
def P4106074883597323825.Spec : Prop :=
  ∀ n, P4106074883597323825.a n = A206422 (n + 1)

end A206422

/-! ## A206422.P1047346405336953111

`A152163(n)+A022093(n+1)`
-/

namespace A206422.P1047346405336953111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022093 (n + 1)

end

end A206422.P1047346405336953111

namespace A206422

/-- `A152163(n)+A022093(n+1)` -/
def P1047346405336953111.Spec : Prop :=
  ∀ n, P1047346405336953111.a n = A206422 (n + 1)

end A206422

/-! ## A206422.P12107595411775203261

`A156279(n)+A020695(n+1)`
-/

namespace A206422.P12107595411775203261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156279 n + A020695 (n + 1)

end

end A206422.P12107595411775203261

namespace A206422

/-- `A156279(n)+A020695(n+1)` -/
def P12107595411775203261.Spec : Prop :=
  ∀ n, P12107595411775203261.a n = A206422 (n + 1)

end A206422

/-! ## A206422.P16655815930313624933

`A206420(n+1)+A000045(n)`
-/

namespace A206422.P16655815930313624933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206420 (n + 1) + A000045 n

end

end A206422.P16655815930313624933

namespace A206422

/-- `A206420(n+1)+A000045(n)` -/
def P16655815930313624933.Spec : Prop :=
  ∀ n, P16655815930313624933.a n = A206422 (n + 1)

end A206422

/-! ## A206422.P841292914882684873

`A280154(n)+A104449(n+1)`
-/

namespace A206422.P841292914882684873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280154 n + A104449 (n + 1)

end

end A206422.P841292914882684873

namespace A206422

/-- `A280154(n)+A104449(n+1)` -/
def P841292914882684873.Spec : Prop :=
  ∀ n, P841292914882684873.a n = A206422 (n + 1)

end A206422

/-! ## A206422.P17407929672996534631

`A022101(n+1)-A022086(n)`
-/

namespace A206422.P17407929672996534631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 (n + 1) - A022086 n

end

end A206422.P17407929672996534631

namespace A206422

/-- `A022101(n+1)-A022086(n)` -/
def P17407929672996534631.Spec : Prop :=
  ∀ n, P17407929672996534631.a n = A206422 (n + 1)

end A206422

/-! ## A206422.P11899501376729420398

`A190996(n)+A000045(n+2)`
-/

namespace A206422.P11899501376729420398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190996 n + A000045 (n + 2)

end

end A206422.P11899501376729420398

namespace A206422

/-- `A190996(n)+A000045(n+2)` -/
def P11899501376729420398.Spec : Prop :=
  ∀ n, P11899501376729420398.a n = A206422 (n + 1)

end A206422

/-! ## A206422.P6656380013377159849

`A206608(n+1)-A000032(n)`
-/

namespace A206422.P6656380013377159849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206608 (n + 1) - A000032 n

end

end A206422.P6656380013377159849

namespace A206422

/-- `A206608(n+1)-A000032(n)` -/
def P6656380013377159849.Spec : Prop :=
  ∀ n, P6656380013377159849.a n = A206422 (n + 1)

end A206422

/-! ## A206422.P2118284950659115128

`A190995(n)+A118658(n+2)`
-/

namespace A206422.P2118284950659115128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190995 n + A118658 (n + 2)

end

end A206422.P2118284950659115128

namespace A206422

/-- `A190995(n)+A118658(n+2)` -/
def P2118284950659115128.Spec : Prop :=
  ∀ n, P2118284950659115128.a n = A206422 (n + 1)

end A206422

/-! ## A206422.P10403247497776228244

`A206609(n+1)-A118658(n)`
-/

namespace A206422.P10403247497776228244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206609 (n + 1) - A118658 n

end

end A206422.P10403247497776228244

namespace A206422

/-- `A206609(n+1)-A118658(n)` -/
def P10403247497776228244.Spec : Prop :=
  ∀ n, P10403247497776228244.a n = A206422 (n + 1)

end A206422

/-! ## A206422.P7466809018572939940

`A184959(n)-A152163(n+1)`
-/

namespace A206422.P7466809018572939940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184959 n - A152163 (n + 1)

end

end A206422.P7466809018572939940

namespace A206422

/-- `A184959(n)-A152163(n+1)` -/
def P7466809018572939940.Spec : Prop :=
  ∀ n, P7466809018572939940.a n = A206422 (n + 1)

end A206422

/-! ## A206422.P10981789716888584103

`A022346(n+1)-A000032(n+1)`
-/

namespace A206422.P10981789716888584103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 (n + 1) - A000032 (n + 1)

end

end A206422.P10981789716888584103

namespace A206422

/-- `A022346(n+1)-A000032(n+1)` -/
def P10981789716888584103.Spec : Prop :=
  ∀ n, P10981789716888584103.a n = A206422 (n + 1)

end A206422

/-! ## A206422.P3943744757827729692

`A022345(n+1)-A006355(n+1)`
-/

namespace A206422.P3943744757827729692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 (n + 1) - A006355 (n + 1)

end

end A206422.P3943744757827729692

namespace A206422

/-- `A022345(n+1)-A006355(n+1)` -/
def P3943744757827729692.Spec : Prop :=
  ∀ n, P3943744757827729692.a n = A206422 (n + 1)

end A206422

/-! ## A206422.P12446815195366851988

`A022345(n+1)-A118658(n+1)`
-/

namespace A206422.P12446815195366851988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 (n + 1) - A118658 (n + 1)

end

end A206422.P12446815195366851988

namespace A206422

/-- `A022345(n+1)-A118658(n+1)` -/
def P12446815195366851988.Spec : Prop :=
  ∀ n, P12446815195366851988.a n = A206422 (n + 1)

end A206422

/-! ## A206422.P8290937947535773417

`A206608(n+1)-A329723(n+2)`
-/

namespace A206422.P8290937947535773417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206608 (n + 1) - A329723 (n + 2)

end

end A206422.P8290937947535773417

namespace A206422

/-- `A206608(n+1)-A329723(n+2)` -/
def P8290937947535773417.Spec : Prop :=
  ∀ n, P8290937947535773417.a n = A206422 (n + 1)

end A206422

/-!
# A206423: Fibonacci sequence beginning 12, 7.

The programs for A206423, the canonical program `A206423.P167268090402775244` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206423 has offset 1).

The definition of A206423 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206423.P167268090402775244

`a(n-1)+a(n-2)` with `a(0)=12, a(1)=7`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A206423

/-- `a(n-1)+a(n-2)` -/
def P167268090402775244.Spec : Prop :=
  ∀ n, (P167268090402775244.a n : ℤ) = A206423 (n + 1)

theorem P167268090402775244.correct : P167268090402775244.Spec := by
  intro n
  simp only [A206423, Nat.add_sub_cancel]

end A206423

/-! ## A206423.P9237916150820491069

`A190996(n)+A118658(n)`
-/

namespace A206423.P9237916150820491069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190996 n + A118658 n

end

end A206423.P9237916150820491069

namespace A206423

/-- `A190996(n)+A118658(n)` -/
def P9237916150820491069.Spec : Prop :=
  ∀ n, P9237916150820491069.a n = A206423 (n + 1)

end A206423

/-! ## A206423.P17267351099374226938

`A206420(n+1)+A152163(n)`
-/

namespace A206423.P17267351099374226938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206420 (n + 1) + A152163 n

end

end A206423.P17267351099374226938

namespace A206423

/-- `A206420(n+1)+A152163(n)` -/
def P17267351099374226938.Spec : Prop :=
  ∀ n, P17267351099374226938.a n = A206423 (n + 1)

end A206423

/-! ## A206423.P1540431978923479934

`A212804(n)+A206419(n+1)`
-/

namespace A206423.P1540431978923479934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A206419 (n + 1)

end

end A206423.P1540431978923479934

namespace A206423

/-- `A212804(n)+A206419(n+1)` -/
def P1540431978923479934.Spec : Prop :=
  ∀ n, P1540431978923479934.a n = A206423 (n + 1)

end A206423

/-! ## A206423.P9318004285293701425

`A022346(n+1)-A022088(n)`
-/

namespace A206423.P9318004285293701425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 (n + 1) - A022088 n

end

end A206423.P9318004285293701425

namespace A206423

/-- `A022346(n+1)-A022088(n)` -/
def P9318004285293701425.Spec : Prop :=
  ∀ n, P9318004285293701425.a n = A206423 (n + 1)

end A206423

/-! ## A206423.P16955019626463500910

`A206607(n+1)-A000285(n)`
-/

namespace A206423.P16955019626463500910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206607 (n + 1) - A000285 n

end

end A206423.P16955019626463500910

namespace A206423

/-- `A206607(n+1)-A000285(n)` -/
def P16955019626463500910.Spec : Prop :=
  ∀ n, P16955019626463500910.a n = A206423 (n + 1)

end A206423

/-! ## A206423.P17416554795927499159

`A280154(n)+A006355(n+2)`
-/

namespace A206423.P17416554795927499159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280154 n + A006355 (n + 2)

end

end A206423.P17416554795927499159

namespace A206423

/-- `A280154(n)+A006355(n+2)` -/
def P17416554795927499159.Spec : Prop :=
  ∀ n, P17416554795927499159.a n = A206423 (n + 1)

end A206423

/-! ## A206423.P2556316621628376373

`A206612(n+1)-A152163(n)`
-/

namespace A206423.P2556316621628376373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206612 (n + 1) - A152163 n

end

end A206423.P2556316621628376373

namespace A206423

/-- `A206612(n+1)-A152163(n)` -/
def P2556316621628376373.Spec : Prop :=
  ∀ n, P2556316621628376373.a n = A206423 (n + 1)

end A206423

/-! ## A206423.P17969934481944906391

`A280154(n)+A118658(n+2)`
-/

namespace A206423.P17969934481944906391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280154 n + A118658 (n + 2)

end

end A206423.P17969934481944906391

namespace A206423

/-- `A280154(n)+A118658(n+2)` -/
def P17969934481944906391.Spec : Prop :=
  ∀ n, P17969934481944906391.a n = A206423 (n + 1)

end A206423

/-! ## A206423.P5852253833014615239

`A206611(n+1)-A212804(n)`
-/

namespace A206423.P5852253833014615239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206611 (n + 1) - A212804 n

end

end A206423.P5852253833014615239

namespace A206423

/-- `A206611(n+1)-A212804(n)` -/
def P5852253833014615239.Spec : Prop :=
  ∀ n, P5852253833014615239.a n = A206423 (n + 1)

end A206423

/-! ## A206423.P10862071219785293810

`A184959(n)+2*A152163(n)`
-/

namespace A206423.P10862071219785293810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184959 n + 2 * A152163 n

end

end A206423.P10862071219785293810

namespace A206423

/-- `A184959(n)+2*A152163(n)` -/
def P10862071219785293810.Spec : Prop :=
  ∀ n, P10862071219785293810.a n = A206423 (n + 1)

end A206423

/-! ## A206423.P7190902238877842379

`A190996(n)+2*A212804(n)`
-/

namespace A206423.P7190902238877842379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190996 n + 2 * A212804 n

end

end A206423.P7190902238877842379

namespace A206423

/-- `A190996(n)+2*A212804(n)` -/
def P7190902238877842379.Spec : Prop :=
  ∀ n, P7190902238877842379.a n = A206423 (n + 1)

end A206423

/-! ## A206423.P11212650204411202660

`A000045(n)+6*A000032(n)`
-/

namespace A206423.P11212650204411202660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + 6 * A000032 n

end

end A206423.P11212650204411202660

namespace A206423

/-- `A000045(n)+6*A000032(n)` -/
def P11212650204411202660.Spec : Prop :=
  ∀ n, P11212650204411202660.a n = A206423 (n + 1)

end A206423

/-! ## A206423.P11685091877722389099

`A206611(n+1)-Δ[A001611(n)]`
-/

namespace A206423.P11685091877722389099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206611 (n + 1) - (f1 (n + 1) - f1 n)

end

end A206423.P11685091877722389099

namespace A206423

/-- `A206611(n+1)-Δ[A001611(n)]` -/
def P11685091877722389099.Spec : Prop :=
  ∀ n, P11685091877722389099.a n = A206423 (n + 1)

end A206423

/-! ## A206423.P859853781295650638

`A206608(n+1)-A000032(n+1)`
-/

namespace A206423.P859853781295650638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206608 (n + 1) - A000032 (n + 1)

end

end A206423.P859853781295650638

namespace A206423

/-- `A206608(n+1)-A000032(n+1)` -/
def P859853781295650638.Spec : Prop :=
  ∀ n, P859853781295650638.a n = A206423 (n + 1)

end A206423

/-! ## A206423.P11377178041704296211

`A206610(n+1)-A000045(n+1)`
-/

namespace A206423.P11377178041704296211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206610 (n + 1) - A000045 (n + 1)

end

end A206423.P11377178041704296211

namespace A206423

/-- `A206610(n+1)-A000045(n+1)` -/
def P11377178041704296211.Spec : Prop :=
  ∀ n, P11377178041704296211.a n = A206423 (n + 1)

end A206423

/-! ## A206423.P11886928750193064967

`A206608(n+1)-A000204(n+1)`
-/

namespace A206423.P11886928750193064967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206608 (n + 1) - A000204 (n + 1)

end

end A206423.P11886928750193064967

namespace A206423

/-- `A206608(n+1)-A000204(n+1)` -/
def P11886928750193064967.Spec : Prop :=
  ∀ n, P11886928750193064967.a n = A206423 (n + 1)

end A206423

/-! ## A206423.P14505826684635137875

`A206609(n+1)-A000045(n+2)`
-/

namespace A206423.P14505826684635137875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206609 (n + 1) - A000045 (n + 2)

end

end A206423.P14505826684635137875

namespace A206423

/-- `A206609(n+1)-A000045(n+2)` -/
def P14505826684635137875.Spec : Prop :=
  ∀ n, P14505826684635137875.a n = A206423 (n + 1)

end A206423

/-! ## A206423.P16394352349219605346

`A206419(n+1)+A118658(n)/2`
-/

namespace A206423.P16394352349219605346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206419 (n + 1) : ℚ) + (A118658 n : ℚ) / 2

end

end A206423.P16394352349219605346

namespace A206423

/-- `A206419(n+1)+A118658(n)/2` -/
def P16394352349219605346.Spec : Prop :=
  ∀ n, P16394352349219605346.a n = (A206423 (n + 1) : ℚ)

end A206423

/-!
# A206424: The number of 1's in row n of Pascal's Triangle (mod 3).

The programs for A206424, the canonical program `A206424.P17237868033879064005` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206424 has offset 0).

The definition of A206424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206424.P9494682268886425101

`A006047(n)-A227428(n)`
-/

namespace A206424.P9494682268886425101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n - A227428 n

end

end A206424.P9494682268886425101

namespace A206424

/-- `A006047(n)-A227428(n)` -/
def P9494682268886425101.Spec : Prop :=
  ∀ n, P9494682268886425101.a n = A206424 n

end A206424

/-! ## A206424.P13906665432943236986

`n+1-A062296(n)-A227428(n)`
-/

namespace A206424.P13906665432943236986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + (1 - A062296 n) - A227428 n

end

end A206424.P13906665432943236986

namespace A206424

/-- `n+1-A062296(n)-A227428(n)` -/
def P13906665432943236986.Spec : Prop :=
  ∀ n, P13906665432943236986.a n = A206424 n

end A206424

/-! ## A206424.P17237868033879064005

`A109168(A006047(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A206424

/-- `A109168(A006047(n))` -/
def P17237868033879064005.Spec : Prop :=
  ∀ n, P17237868033879064005.a n = A206424 n

theorem P17237868033879064005.correct : P17237868033879064005.Spec := by
  intro n
  simp only [A206424]

end A206424

/-! ## A206424.P5816962217825573327

`A227428(n)+A120880(n)`
-/

namespace A206424.P5816962217825573327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227428 n + A120880 n

end

end A206424.P5816962217825573327

namespace A206424

/-- `A227428(n)+A120880(n)` -/
def P5816962217825573327.Spec : Prop :=
  ∀ n, P5816962217825573327.a n = A206424 n

end A206424

/-! ## A206424.P14644118301536918778

`2*A006047(n)-A051638(n)`
-/

namespace A206424.P14644118301536918778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006047 n - A051638 n

end

end A206424.P14644118301536918778

namespace A206424

/-- `2*A006047(n)-A051638(n)` -/
def P14644118301536918778.Spec : Prop :=
  ∀ n, P14644118301536918778.a n = A206424 n

end A206424

/-! ## A206424.P11467639447154350807

`(A120880(n)+A006047(n))/2`
-/

namespace A206424.P11467639447154350807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120880 n + A006047 n : ℚ) / 2

end

end A206424.P11467639447154350807

namespace A206424

/-- `(A120880(n)+A006047(n))/2` -/
def P11467639447154350807.Spec : Prop :=
  ∀ n, P11467639447154350807.a n = (A206424 n : ℚ)

end A206424

/-! ## A206424.P15235063992369375937

`A051638(n)-2*A227428(n)`
-/

namespace A206424.P15235063992369375937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051638 n - 2 * A227428 n

end

end A206424.P15235063992369375937

namespace A206424

/-- `A051638(n)-2*A227428(n)` -/
def P15235063992369375937.Spec : Prop :=
  ∀ n, P15235063992369375937.a n = A206424 n

end A206424

/-! ## A206424.P3942965327183747182

`A227428(n)+2^A062756(n)`
-/

namespace A206424.P3942965327183747182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227428 n : ℚ) + (2 : ℚ) ^ (A062756 n : ℤ)

end

end A206424.P3942965327183747182

namespace A206424

/-- `A227428(n)+2^A062756(n)` -/
def P3942965327183747182.Spec : Prop :=
  ∀ n, P3942965327183747182.a n = (A206424 n : ℚ)

end A206424

/-! ## A206424.P14708889282463027772

`(A006047(n)+A006047(A244042(n)))/2`
-/

namespace A206424.P14708889282463027772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006047 n + A006047 (A244042 n).toNat : ℚ) / 2

end

end A206424.P14708889282463027772

namespace A206424

/-- `(A006047(n)+A006047(A244042(n)))/2` -/
def P14708889282463027772.Spec : Prop :=
  ∀ n, P14708889282463027772.a n = (A206424 n : ℚ)

end A206424

/-! ## A206424.P4666140637750337599

`A051638(n)+A051638(n)-A385859(n)`
-/

namespace A206424.P4666140637750337599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051638 n + (A051638 n - A385859 n)

end

end A206424.P4666140637750337599

namespace A206424

/-- `A051638(n)+A051638(n)-A385859(n)` -/
def P4666140637750337599.Spec : Prop :=
  ∀ n, P4666140637750337599.a n = A206424 n

end A206424

/-! ## A206424.P1948346416651432252

`A227428(A016789(n))-2*A227428(n)`
-/

namespace A206424.P1948346416651432252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227428 (A016789 n).toNat - 2 * A227428 n

end

end A206424.P1948346416651432252

namespace A206424

/-- `A227428(A016789(n))-2*A227428(n)` -/
def P1948346416651432252.Spec : Prop :=
  ∀ n, P1948346416651432252.a n = A206424 n

end A206424

/-! ## A206424.P7080391357119866281

`A227428(A017185(n))-2*A227428(n)`
-/

namespace A206424.P7080391357119866281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227428 (A017185 n).toNat - 2 * A227428 n

end

end A206424.P7080391357119866281

namespace A206424

/-- `A227428(A017185(n))-2*A227428(n)` -/
def P7080391357119866281.Spec : Prop :=
  ∀ n, P7080391357119866281.a n = A206424 n

end A206424

/-! ## A206424.P9241145643187535837

`A227428(A017233(n))-2*A227428(n)`
-/

namespace A206424.P9241145643187535837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227428 (A017233 n).toNat - 2 * A227428 n

end

end A206424.P9241145643187535837

namespace A206424

/-- `A227428(A017233(n))-2*A227428(n)` -/
def P9241145643187535837.Spec : Prop :=
  ∀ n, P9241145643187535837.a n = A206424 n

end A206424

/-! ## A206424.P6144957071307325116

`A227428(A124388(n))-2*A227428(n)`
-/

namespace A206424.P6144957071307325116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227428 (A124388 n).toNat - 2 * A227428 n

end

end A206424.P6144957071307325116

namespace A206424

/-- `A227428(A124388(n))-2*A227428(n)` -/
def P6144957071307325116.Spec : Prop :=
  ∀ n, P6144957071307325116.a n = A206424 n

end A206424

/-! ## A206424.P11226897796791993524

`A385435(2*n+1)-A385859(n)`
-/

namespace A206424.P11226897796791993524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385435 (2 * n + 1) - A385859 n

end

end A206424.P11226897796791993524

namespace A206424

/-- `A385435(2*n+1)-A385859(n)` -/
def P11226897796791993524.Spec : Prop :=
  ∀ n, P11226897796791993524.a n = A206424 n

end A206424

/-! ## A206424.P14392783632986704416

`A227428(n)+gcd(A000079(n), A006047(n))`
-/

namespace A206424.P14392783632986704416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227428 n + (Int.gcd (A000079 n) (A006047 n) : ℤ)

end

end A206424.P14392783632986704416

namespace A206424

/-- `A227428(n)+gcd(A000079(n), A006047(n))` -/
def P14392783632986704416.Spec : Prop :=
  ∀ n, P14392783632986704416.a n = A206424 n

end A206424

/-!
# A206426: Nonnegative values x of solutions (x, y) to the Diophantine equation x^2+(x+161)^2 = y^2.

The programs for A206426, there is no canonical definition to state claims against.
-/

/-! ## A206426.P5422818918730933910

`A201916(3*n+1)/17`
-/

namespace A206426.P5422818918730933910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201916 (3 * n + 1) : ℚ) / 17

end

end A206426.P5422818918730933910

/-! ## A206426.P10319878853406889512

`floor(A201916(A008585(n)+1)/17)`
-/

namespace A206426.P10319878853406889512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A201916 (A008585 n + 1).toNat : ℚ) / 17⌋

end

end A206426.P10319878853406889512

/-! ## A206426.P16959646602516789042

`A000038(n+1)+A201916(A008585(n)+1)/17`
-/

namespace A206426.P16959646602516789042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (n + 1) : ℚ) + (A201916 (A008585 n + 1).toNat : ℚ) / 17

end

end A206426.P16959646602516789042

/-! ## A206426.P17453173298762378352

`A000007(n+3)+A201916(A008585(n)+1)/17`
-/

namespace A206426.P17453173298762378352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 3) : ℚ) + (A201916 (A008585 n + 1).toNat : ℚ) / 17

end

end A206426.P17453173298762378352

/-! ## A206426.P1755314772705468623

`A191558(A000040(n+1))+A201916(A008585(n)+1)/17`
-/

namespace A206426.P1755314772705468623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191558 (A000040 (n + 1)).toNat : ℚ) + (A201916 (A008585 n + 1).toNat : ℚ) / 17

end

end A206426.P1755314772705468623

/-! ## A206426.P9816351040925442928

`(A201916(A008585(n)+1)/17)%A126640(n+1)`
-/

namespace A206426.P9816351040925442928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A201916 (A008585 n + 1).toNat : ℚ) / 17)) (A126640 (n + 1))

end

end A206426.P9816351040925442928

/-! ## A206426.P4895815965701891768

`A019581(n+1)%A128227(n)+A201916(A008585(n)+1)/17`
-/

namespace A206426.P4895815965701891768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A019581 (n + 1)) (A128227 n) : ℚ) + (A201916 (A008585 n + 1).toNat : ℚ) / 17

end

end A206426.P4895815965701891768

/-!
# A206427: Square array 2^(m-1)*(3^n+1), read by antidiagonals.

The programs for A206427, there is no canonical definition to state claims against.
-/

/-! ## A206427.P1169151608786879597

`2^(n-C(∑[char[∑[n]]], 2))*A007051(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A206427.P1169151608786879597
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A007051 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) : ℚ)

end

end A206427.P1169151608786879597

/-! ## A206427.P15781206670914143128

`A293974(A073216(n))`
-/

namespace A206427.P15781206670914143128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293974 (A073216 n).toNat

end

end A206427.P15781206670914143128

/-! ## A206427.P6826364743005002257

`A206428(n)+A059268(n)`
-/

namespace A206427.P6826364743005002257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206428 n + A059268 n

end

end A206427.P6826364743005002257

/-! ## A206427.P13781159318695245189

`A175840(n)-A206428(n)`
-/

namespace A206427.P13781159318695245189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n - A206428 n

end

end A206427.P13781159318695245189

/-! ## A206427.P14489411209224488193

`A293974(A023745(n+1)+1)`
-/

namespace A206427.P14489411209224488193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293974 (A023745 (n + 1) + 1).toNat

end

end A206427.P14489411209224488193

/-! ## A206427.P16480610796389280188

`A145036(A099375(n)+1+n)`
-/

namespace A206427.P16480610796389280188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145036 (A099375 n + 1 + (n : ℤ)).toNat

end

end A206427.P16480610796389280188

/-! ## A206427.P16826035845616555232

`A048471(n)+A059268(n)-1`
-/

namespace A206427.P16826035845616555232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048471 n + (A059268 n - 1)

end

end A206427.P16826035845616555232

/-! ## A206427.P10308278883012754657

`(A175840(n)+A059268(n))/2`
-/

namespace A206427.P10308278883012754657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175840 n + A059268 n : ℚ) / 2

end

end A206427.P10308278883012754657

/-! ## A206427.P706859454560087560

`A206428(n)+A000079(A002262(n))`
-/

namespace A206427.P706859454560087560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206428 n + A000079 (A002262 n).toNat

end

end A206427.P706859454560087560

/-! ## A206427.P12824061199945502810

`A014682(A175840(n)+A059268(n))`
-/

namespace A206427.P12824061199945502810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A175840 n + A059268 n).toNat

end

end A206427.P12824061199945502810

/-!
# A206428: Rectangular array, a(m,n) = 2^(m-1)*(3^n-1), read by antidiagonals.

The programs for A206428, there is no canonical definition to state claims against.
-/

/-! ## A206428.P15387719422813499613

`A048471(n)-1`
-/

namespace A206428.P15387719422813499613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048471 n - 1

end

end A206428.P15387719422813499613

/-! ## A206428.P8963131418438240409

`floor(A048471(comp[∑[n]])/2)`
-/

namespace A206428.P8963131418438240409
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048471 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2⌋

end

end A206428.P8963131418438240409

/-! ## A206428.P13351120376198735757

`2^(n-C(∑[char[∑[n]]], 2))*A003462(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A206428.P13351120376198735757
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A003462 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) : ℚ)

end

end A206428.P13351120376198735757

/-! ## A206428.P14631751811212433129

`A023443(A048471(n))`
-/

namespace A206428.P14631751811212433129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A048471 n).toNat

end

end A206428.P14631751811212433129

/-! ## A206428.P8392857834596242121

`A261393(A173787(n))`
-/

namespace A206428.P8392857834596242121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261393 (A173787 n).toNat

end

end A206428.P8392857834596242121

/-! ## A206428.P11049713042040244683

`A023444(A048471(n)+1)`
-/

namespace A206428.P11049713042040244683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A048471 n + 1).toNat

end

end A206428.P11049713042040244683

/-! ## A206428.P6379057150753440297

`A289207(A048471(n)+1)`
-/

namespace A206428.P6379057150753440297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A048471 n + 1).toNat

end

end A206428.P6379057150753440297

/-! ## A206428.P12153712048628269968

`A023451(A048471(n)+8)`
-/

namespace A206428.P12153712048628269968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023451 (A048471 n + 8).toNat

end

end A206428.P12153712048628269968

/-! ## A206428.P16299403771721964932

`A206427(n)-A059268(n)`
-/

namespace A206428.P16299403771721964932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206427 n - A059268 n

end

end A206428.P16299403771721964932

/-! ## A206428.P3620899922891581107

`A175840(n)-A206427(n)`
-/

namespace A206428.P3620899922891581107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n - A206427 n

end

end A206428.P3620899922891581107

/-!
# A206429: Triangular array read by rows. T(n,k) is the number of rooted labeled trees on n nodes such that the root node has degree k. n>=2, 1<=k<=n-1.

The programs for A206429, the canonical program `A206429.P13329034163071246304` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206429 has offset 2).

The definition of A206429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206429.P10326796605283883246

`A033842(n)*A063929(n+1)`
-/

namespace A206429.P10326796605283883246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033842 n * A063929 (n + 1)

end

end A206429.P10326796605283883246

namespace A206429

/-- `A033842(n)*A063929(n+1)` -/
def P10326796605283883246.Spec : Prop :=
  ∀ n, P10326796605283883246.a n = A206429 (n + 2)

end A206429

/-! ## A206429.P13329034163071246304

`A003057(n+2)*A061356(n+2)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A206429

/-- `A003057(n+2)*A061356(n+2)` -/
def P13329034163071246304.Spec : Prop :=
  ∀ n, P13329034163071246304.a n = A206429 (n + 2)

theorem P13329034163071246304.correct : P13329034163071246304.Spec := by
  intro n
  simp only [A206429, Nat.add_sub_cancel]

end A206429

/-! ## A206429.P8322400060732982439

`(A003056(n)+2)*A061356(n+2)`
-/

namespace A206429.P8322400060732982439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + 2) * A061356 (n + 2)

end

end A206429.P8322400060732982439

namespace A206429

/-- `(A003056(n)+2)*A061356(n+2)` -/
def P8322400060732982439.Spec : Prop :=
  ∀ n, P8322400060732982439.a n = A206429 (n + 2)

end A206429

/-! ## A206429.P3163625655947247209

`sqrt(A140978(n+1))*A061356(n+2)`
-/

namespace A206429.P3163625655947247209
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A140978 (n + 1) : ℝ) * (A061356 (n + 2) : ℝ)

end

end A206429.P3163625655947247209

namespace A206429

/-- `sqrt(A140978(n+1))*A061356(n+2)` -/
def P3163625655947247209.Spec : Prop :=
  ∀ n, P3163625655947247209.a n = (A206429 (n + 2) : ℝ)

end A206429

/-! ## A206429.P864588674292873554

`(A002024(n+1)+1)*A061356(n+2)`
-/

namespace A206429.P864588674292873554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) + 1) * A061356 (n + 2)

end

end A206429.P864588674292873554

namespace A206429

/-- `(A002024(n+1)+1)*A061356(n+2)` -/
def P864588674292873554.Spec : Prop :=
  ∀ n, P864588674292873554.a n = A206429 (n + 2)

end A206429

/-! ## A206429.P10490606144294844391

`(A014132(n+1)-n)*A061356(n+2)`
-/

namespace A206429.P10490606144294844391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014132 (n + 1) - (n : ℤ)) * A061356 (n + 2)

end

end A206429.P10490606144294844391

namespace A206429

/-- `(A014132(n+1)-n)*A061356(n+2)` -/
def P10490606144294844391.Spec : Prop :=
  ∀ n, P10490606144294844391.a n = A206429 (n + 2)

end A206429

/-! ## A206429.P16884313240714264500

`A002024(A014132(n+1))*A061356(n+2)`
-/

namespace A206429.P16884313240714264500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A014132 (n + 1)).toNat * A061356 (n + 2)

end

end A206429.P16884313240714264500

namespace A206429

/-- `A002024(A014132(n+1))*A061356(n+2)` -/
def P16884313240714264500.Spec : Prop :=
  ∀ n, P16884313240714264500.a n = A206429 (n + 2)

end A206429

/-!
# A206432: Meandric numbers for a river crossing any number of parallel roads at n points.

The programs for A206432, there is no canonical definition to state claims against.
-/

/-! ## A206432.P3539449962148393677

`A380367(2*n²)`
-/

namespace A206432.P3539449962148393677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380367 (2 * n ^ 2)

end

end A206432.P3539449962148393677

/-! ## A206432.P14867409715219478778

`and(-1, A380367(∑[4*n]))`
-/

namespace A206432.P14867409715219478778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A380367 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A206432.P14867409715219478778

/-! ## A206432.P10967236271189022599

`A279372(A368845(n))+A210592(n)`
-/

namespace A206432.P10967236271189022599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279372 (A368845 n).toNat + A210592 n

end

end A206432.P10967236271189022599

/-! ## A206432.P8737809543500355692

`A210592(A008554(n+1))`
-/

namespace A206432.P8737809543500355692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210592 (A008554 (n + 1)).toNat

end

end A206432.P8737809543500355692

/-!
# A206433: Total number of odd parts in the last section of the set of partitions of n.

The programs for A206433, there is no canonical definition to state claims against.
-/

/-! ## A206433.P9065816849176877738

`A138137(n+1)-A206434(n+1)`
-/

namespace A206433.P9065816849176877738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1) - A206434 (n + 1)

end

end A206433.P9065816849176877738

/-! ## A206433.P4034399805089510530

`A000007(n)+Δ[A066897(A028310(n))]`
-/

namespace A206433.P4034399805089510530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066897 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A206433.P4034399805089510530

/-! ## A206433.P7141375358849739133

`A066897(n+1)+A000007(n)-A066897(A028310(n))`
-/

namespace A206433.P7141375358849739133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066897 (n + 1) + (A000007 n - A066897 (A028310 n).toNat)

end

end A206433.P7141375358849739133

/-! ## A206433.P8870764973197162283

`Δ[A006128(n)]-A206434(n+1)`
-/

namespace A206433.P8870764973197162283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A206434 (n + 1)

end

end A206433.P8870764973197162283

/-! ## A206433.P14225262308617066405

`A006128(n+1)-(A206434(n+1)+A006128(n))`
-/

namespace A206433.P14225262308617066405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - (A206434 (n + 1) + A006128 n)

end

end A206433.P14225262308617066405

/-! ## A206433.P9267196109009145806

`Δ[A066897(A028310(n))%A000712(n)]`
-/

namespace A206433.P9267196109009145806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066897 (A028310 n).toNat) (A000712 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206433.P9267196109009145806

/-! ## A206433.P2643788474578908027

`A066897(n+1)-A245842(A001844(n))`
-/

namespace A206433.P2643788474578908027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066897 (n + 1) - A245842 (A001844 n).toNat

end

end A206433.P2643788474578908027

/-! ## A206433.P16347454026095166872

`Δ[A245842(A001844(n))]`
-/

namespace A206433.P16347454026095166872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245842 (A001844 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206433.P16347454026095166872

/-! ## A206433.P2016863205229432064

`Δ[A245842(A000982(Δ[n²]))]`
-/

namespace A206433.P2016863205229432064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245842 (A000982 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206433.P2016863205229432064

/-!
# A206434: Total number of even parts in the last section of the set of partitions of n.

The programs for A206434, there is no canonical definition to state claims against.
-/

/-! ## A206434.P4580617337398151614

`A138137(n+1)-A206433(n+1)`
-/

namespace A206434.P4580617337398151614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1) - A206433 (n + 1)

end

end A206434.P4580617337398151614

/-! ## A206434.P14382518078026338467

`Δ[A066898(floor(1/(n+1)+n))]`
-/

namespace A206434.P14382518078026338467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066898 ⌊1 / (n + 1 : ℚ) + (n : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206434.P14382518078026338467

/-! ## A206434.P16362679721830003856

`A066898(n+1)-A066898(A028310(n))`
-/

namespace A206434.P16362679721830003856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066898 (n + 1) - A066898 (A028310 n).toNat

end

end A206434.P16362679721830003856

/-! ## A206434.P18438177626464988144

`Δ[A006128(n)]-A206433(n+1)`
-/

namespace A206434.P18438177626464988144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A206433 (n + 1)

end

end A206434.P18438177626464988144

/-! ## A206434.P6794934384801078343

`A006128(n+1)-(A206433(n+1)+A006128(n))`
-/

namespace A206434.P6794934384801078343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - (A206433 (n + 1) + A006128 n)

end

end A206434.P6794934384801078343

/-!
# A206435: Total sum of odd parts in the last section of the set of partitions of n.

The programs for A206435, there is no canonical definition to state claims against.
-/

/-! ## A206435.P5620536930342545855

`A206436(n+1)+Δ[A208477(n)]`
-/

namespace A206435.P5620536930342545855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208477 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206436 (n + 1) + (f1 (n + 1) - f1 n)

end

end A206435.P5620536930342545855

/-! ## A206435.P3624127071415177581

`A206436(n+1)+A208477(n+1)-A208477(n)`
-/

namespace A206435.P3624127071415177581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206436 (n + 1) + (A208477 (n + 1) - A208477 n)

end

end A206435.P3624127071415177581

/-! ## A206435.P13819053177704443445

`A138879(n+1)-A206436(n+1)`
-/

namespace A206435.P13819053177704443445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138879 (n + 1) - A206436 (n + 1)

end

end A206435.P13819053177704443445

/-! ## A206435.P14364586590139485049

`Δ[A066186(n)]-A206436(n+1)`
-/

namespace A206435.P14364586590139485049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A206436 (n + 1)

end

end A206435.P14364586590139485049

/-! ## A206435.P9052085341457932846

`A066186(n+1)-(A206436(n+1)+A066186(n))`
-/

namespace A206435.P9052085341457932846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - (A206436 (n + 1) + A066186 n)

end

end A206435.P9052085341457932846

/-! ## A206435.P1597504600384229785

`Δ[record[A208475(n+1)-A113047(n)]]`
-/

namespace A206435.P1597504600384229785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208475 (n + 1) - A113047 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206435.P1597504600384229785

/-!
# A206436: Total sum of even parts in the last section of the set of partitions of n.

The programs for A206436, there is no canonical definition to state claims against.
-/

/-! ## A206436.P8762651114162682896

`A138879(n+1)-A206435(n+1)`
-/

namespace A206436.P8762651114162682896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138879 (n + 1) - A206435 (n + 1)

end

end A206436.P8762651114162682896

/-! ## A206436.P996214647083012144

`Δ[A066966(A000007(n)+n)]`
-/

namespace A206436.P996214647083012144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066966 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206436.P996214647083012144

/-! ## A206436.P2831465646113281942

`A066966(n+1)-A066966(A000007(n)+n)`
-/

namespace A206436.P2831465646113281942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066966 (n + 1) - A066966 (A000007 n + (n : ℤ)).toNat

end

end A206436.P2831465646113281942

/-! ## A206436.P883466587324998238

`Δ[A066186(n)]-A206435(n+1)`
-/

namespace A206436.P883466587324998238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A206435 (n + 1)

end

end A206436.P883466587324998238

/-! ## A206436.P10413064926193717190

`A066186(n+1)-(A206435(n+1)+A066186(n))`
-/

namespace A206436.P10413064926193717190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - (A206435 (n + 1) + A066186 n)

end

end A206436.P10413064926193717190

/-! ## A206436.P16729843282588238262

`Δ[A066966(A123108(2*n))]`
-/

namespace A206436.P16729843282588238262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066966 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206436.P16729843282588238262

/-!
# A206437: Triangle read by rows: T(j,k) is the k-th part of the j-th region of the set of partitions of n, if 1 <= j <= A000041(n).

The programs for A206437, there is no canonical definition to state claims against.
-/

/-! ## A206437.P269729058476682093

`filter[A193870(n+1), A168185(#)]`
-/

namespace A206437.P269729058476682093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A206437.P269729058476682093

/-! ## A206437.P13085343500160189548

`A193870(lt[0, A193870(n+1)]+1)`
-/

namespace A206437.P13085343500160189548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A206437.P13085343500160189548

/-! ## A206437.P3123134565371886989

`A193870(record[n%(A193870(n+1)+n)]+1)`
-/

namespace A206437.P3123134565371886989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A193870 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193870 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A206437.P3123134565371886989

/-! ## A206437.P17158814373056516655

`Δ[A220487(A028310(n))%(n+1)²]`
-/

namespace A206437.P17158814373056516655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220487 (A028310 n).toNat) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206437.P17158814373056516655

/-! ## A206437.P432637194242918114

`A028310(Δ[A220487(A028310(n))])`
-/

namespace A206437.P432637194242918114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220487 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A206437.P432637194242918114

/-! ## A206437.P8660975755049516390

`A220487(n+1)-∪[A256010(3*n), A220487(n+1)]`
-/

namespace A206437.P8660975755049516390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256010 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220487 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220487 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A206437.P8660975755049516390

/-!
# A206438: Triangle read by rows which lists the squares of the parts of A135010.

The programs for A206438, there is no canonical definition to state claims against.
-/

/-! ## A206438.P3477115942601689203

`A135010(n+1)²`
-/

namespace A206438.P3477115942601689203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (n + 1) ^ 2

end

end A206438.P3477115942601689203

/-! ## A206438.P14663758732160247317

`A135010((n+1)^2/(n+1))^2`
-/

namespace A206438.P14663758732160247317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (n + 1 : ℚ))).toNat ^ 2

end

end A206438.P14663758732160247317

/-! ## A206438.P1945633143088112387

`A000463(2*A135010(n+1))`
-/

namespace A206438.P1945633143088112387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * A135010 (n + 1)).toNat

end

end A206438.P1945633143088112387

/-! ## A206438.P4959537200048157441

`A002620(2*A135010(n+1))`
-/

namespace A206438.P4959537200048157441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A135010 (n + 1)).toNat

end

end A206438.P4959537200048157441

/-! ## A206438.P11532722502032119960

`A004652(2*A135010(n+1))`
-/

namespace A206438.P11532722502032119960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (2 * A135010 (n + 1)).toNat

end

end A206438.P11532722502032119960

/-! ## A206438.P1685287071253207555

`A008794(2*A135010(n+1))`
-/

namespace A206438.P1685287071253207555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (2 * A135010 (n + 1)).toNat

end

end A206438.P1685287071253207555

/-! ## A206438.P16287991480648778427

`A008130(3*A135010(n+1))`
-/

namespace A206438.P16287991480648778427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 (3 * A135010 (n + 1)).toNat

end

end A206438.P16287991480648778427

/-! ## A206438.P13631043717661450724

`A109594(3*A135010(n+1))`
-/

namespace A206438.P13631043717661450724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 (3 * A135010 (n + 1)).toNat

end

end A206438.P13631043717661450724

/-! ## A206438.P10248630189595748758

`A000290(A135010(n+1)+2-4/2)`
-/

namespace A206438.P10248630189595748758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.roundAway ((A135010 (n + 1) : ℚ) + (2 - (4 : ℚ) / 2))).toNat

end

end A206438.P10248630189595748758

/-! ## A206438.P18067037422353680842

`A000290(A135010(n+1)%A050216(n))`
-/

namespace A206438.P18067037422353680842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A135010 (n + 1)) (A050216 n)).toNat

end

end A206438.P18067037422353680842

/-! ## A206438.P11844435184853823765

`A135010(A000027(n+1))*A135010(n+1)`
-/

namespace A206438.P11844435184853823765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (A000027 (n + 1)).toNat * A135010 (n + 1)

end

end A206438.P11844435184853823765

/-! ## A206438.P12779223728811332757

`A057521(A135010(n+1)*A135010(n+1))`
-/

namespace A206438.P12779223728811332757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A135010 (n + 1) * A135010 (n + 1)).toNat

end

end A206438.P12779223728811332757

/-! ## A206438.P5075661071877380966

`A000290(A135010(n+1))%A025338(n+1)`
-/

namespace A206438.P5075661071877380966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A135010 (n + 1)).toNat) (A025338 (n + 1))

end

end A206438.P5075661071877380966

/-! ## A206438.P17191217703240914711

`A194451(2*A135010(n+1)*A135010(n+1))`
-/

namespace A206438.P17191217703240914711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194451 (2 * A135010 (n + 1) * A135010 (n + 1)).toNat

end

end A206438.P17191217703240914711

/-! ## A206438.P18281418298716177745

`A323467(2*A135010(n+1)*A135010(n+1))`
-/

namespace A206438.P18281418298716177745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323467 (2 * A135010 (n + 1) * A135010 (n + 1)).toNat

end

end A206438.P18281418298716177745

/-! ## A206438.P16217503945544262243

`A000007(n+1)+A135010(n+1)*A135010(n+1)`
-/

namespace A206438.P16217503945544262243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + A135010 (n + 1) * A135010 (n + 1)

end

end A206438.P16217503945544262243

/-! ## A206438.P14362482654106291346

`A135010(A008619(2*n+1))*A135010(n+1)`
-/

namespace A206438.P14362482654106291346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (A008619 (2 * n + 1)).toNat * A135010 (n + 1)

end

end A206438.P14362482654106291346

/-!
# A206439: Partial sums of A064692.

The programs for A206439, the canonical program `A206439.P11690255037767737143` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206439 has offset 0).

The definition of A206439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206439.P11690255037767737143

`∑[A064692(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A206439

/-- `∑[A064692(n)]` -/
def P11690255037767737143.Spec : Prop :=
  ∀ n, P11690255037767737143.a n = A206439 n

theorem P11690255037767737143.correct : P11690255037767737143.Spec := by
  intro n
  simp only [A206439]

end A206439

/-! ## A206439.P5804022495266594668

`∑[A064693(n)-1]`
-/

namespace A206439.P5804022495266594668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064693 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206439.P5804022495266594668

namespace A206439

/-- `∑[A064693(n)-1]` -/
def P5804022495266594668.Spec : Prop :=
  ∀ n, P5804022495266594668.a n = A206439 n

end A206439

/-! ## A206439.P6359516939047635174

`∑[∑{digits}[n, A023895(#)]]`
-/

namespace A206439.P6359516939047635174
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A023895 x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206439.P6359516939047635174

namespace A206439

/-- `∑[∑{digits}[n, A023895(#)]]` -/
def P6359516939047635174.Spec : Prop :=
  ∀ n, P6359516939047635174.a n = A206439 n

end A206439

/-! ## A206439.P4775862124217023818

`∑[∑{digits}[n, A029352(#)]]`
-/

namespace A206439.P4775862124217023818
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A029352 x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206439.P4775862124217023818

namespace A206439

/-- `∑[∑{digits}[n, A029352(#)]]` -/
def P4775862124217023818.Spec : Prop :=
  ∀ n, P4775862124217023818.a n = A206439 n

end A206439

/-! ## A206439.P3907787137131051718

`∑[∑{digits}[n, A132456(#)]]`
-/

namespace A206439.P3907787137131051718
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A132456 x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206439.P3907787137131051718

namespace A206439

/-- `∑[∑{digits}[n, A132456(#)]]` -/
def P3907787137131051718.Spec : Prop :=
  ∀ n, P3907787137131051718.a n = A206439 n

end A206439

/-! ## A206439.P11488374384269927778

`∑[∑{digits}[n, A147787(#)]]`
-/

namespace A206439.P11488374384269927778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A147787 x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206439.P11488374384269927778

namespace A206439

/-- `∑[∑{digits}[n, A147787(#)]]` -/
def P11488374384269927778.Spec : Prop :=
  ∀ n, P11488374384269927778.a n = A206439 n

end A206439

/-! ## A206439.P4796184299393681553

`∑[∑{digits}[n, A182270(#)]]`
-/

namespace A206439.P4796184299393681553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A182270 x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206439.P4796184299393681553

namespace A206439

/-- `∑[∑{digits}[n, A182270(#)]]` -/
def P4796184299393681553.Spec : Prop :=
  ∀ n, P4796184299393681553.a n = A206439 n

end A206439

/-! ## A206439.P2623657364788936775

`∑[∑{digits}[n, A280544(#)]]`
-/

namespace A206439.P2623657364788936775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A280544 x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206439.P2623657364788936775

namespace A206439

/-- `∑[∑{digits}[n, A280544(#)]]` -/
def P2623657364788936775.Spec : Prop :=
  ∀ n, P2623657364788936775.a n = A206439 n

end A206439

/-! ## A206439.P3966852749268045213

`A064692(A222231(n))+a(n-1)` with `a(0)=1`
-/

namespace A206439.P3966852749268045213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064692 (A222231 n).toNat + a (n - 1)

end

end A206439.P3966852749268045213

namespace A206439

/-- `A064692(A222231(n))+a(n-1)` -/
def P3966852749268045213.Spec : Prop :=
  ∀ n, P3966852749268045213.a n = A206439 n

end A206439

/-!
# A206440: Volume of the last section of the set of partitions of n from the modular table of partitions version "Boxes".

The programs for A206440, there is no canonical definition to state claims against.
-/

/-! ## A206440.P13334728217130263173

`Δ[A066185(n)+A066184(n)]`
-/

namespace A206440.P13334728217130263173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066185 n + A066184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206440.P13334728217130263173

/-! ## A206440.P3506268581033574813

`A000007(n)+Δ[A066183(A028310(n))]`
-/

namespace A206440.P3506268581033574813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066183 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A206440.P3506268581033574813

/-! ## A206440.P18257148021209437120

`Δ[A066183(A028310(n))-A054977(n)]`
-/

namespace A206440.P18257148021209437120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066183 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206440.P18257148021209437120

/-! ## A206440.P12170030308984327482

`A066183(n+1)-(A066185(n)+A066184(n))`
-/

namespace A206440.P12170030308984327482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066183 (n + 1) - (A066185 n + A066184 n)

end

end A206440.P12170030308984327482

/-! ## A206440.P9430755024980301496

`A066183(n+1)+A000007(n)-A066183(A028310(n))`
-/

namespace A206440.P9430755024980301496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066183 (n + 1) + (A000007 n - A066183 (A028310 n).toNat)

end

end A206440.P9430755024980301496

/-! ## A206440.P3384990973745912846

`A054977(n)*A066183(n+1)-A066183(A028310(n))`
-/

namespace A206440.P3384990973745912846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A066183 (n + 1) - A066183 (A028310 n).toNat

end

end A206440.P3384990973745912846

/-! ## A206440.P6217317316496975997

`Δ[A066187(n)-A066188(n)]`
-/

namespace A206440.P6217317316496975997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066187 n - A066188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206440.P6217317316496975997

/-! ## A206440.P10605866890679964940

`Δ[A213191(∑[n+3])]`
-/

namespace A206440.P10605866890679964940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206440.P10605866890679964940

/-!
# A206441: Triangle read by rows. T(n,k) = number of distinct parts in the k-th region of the last section of the set of partitions of n.

The programs for A206441, there is no canonical definition to state claims against.
-/

/-! ## A206441.P5594793737040595067

`A070939(A194446(n+1)+char[A017462(n)])`
-/

namespace A206441.P5594793737040595067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017462 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A194446 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A206441.P5594793737040595067

/-! ## A206441.P11007741580326285786

`A072769(n+1)+A070939(A194446(n+1))`
-/

namespace A206441.P11007741580326285786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072769 (n + 1) + A070939 (A194446 (n + 1)).toNat

end

end A206441.P11007741580326285786

/-! ## A206441.P13461108593285250775

`A322438(A028310(n))+A070939(A194446(n+1))`
-/

namespace A206441.P13461108593285250775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322438 (A028310 n).toNat + A070939 (A194446 (n + 1)).toNat

end

end A206441.P13461108593285250775

/-! ## A206441.P514227394707018050

`A185284(A006530(n+1))+A070939(A194446(n+1))`
-/

namespace A206441.P514227394707018050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A006530 (n + 1)).toNat + A070939 (A194446 (n + 1)).toNat

end

end A206441.P514227394707018050

/-! ## A206441.P14401800919192033357

`A070939(A194446(n+1))%p?[A188475(n)]`
-/

namespace A206441.P14401800919192033357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (A194446 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A206441.P14401800919192033357

/-!
# A206442: Number of distinct irreducible factors of the polynomial p(n,x) defined at A206284.

The programs for A206442, there is no canonical definition to state claims against.
-/

/-! ## A206442.P8923851954038596291

`floor(sqrt(∑{p}[A284010(n+1), #]))`
-/

namespace A206442.P8923851954038596291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A206442.P8923851954038596291

/-! ## A206442.P10593791364283725285

`A000194(∑{p}[A284010(n+1), #])`
-/

namespace A206442.P10593791364283725285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A206442.P10593791364283725285

/-! ## A206442.P14891002799728647545

`∑{p}[A284010(n+1), A001221(#)]`
-/

namespace A206442.P14891002799728647545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A206442.P14891002799728647545

/-! ## A206442.P13581276431822101347

`∑{p}[A284010(n+1), A001222(#)]`
-/

namespace A206442.P13581276431822101347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A206442.P13581276431822101347

/-! ## A206442.P13907693275239679607

`∑{p}[A284010(n+1), A003415(#)]`
-/

namespace A206442.P13907693275239679607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003415 p

end

end A206442.P13907693275239679607

/-! ## A206442.P2672572722649085814

`∑{p}[A284010(n+1), A007318(#)]`
-/

namespace A206442.P2672572722649085814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007318 p

end

end A206442.P2672572722649085814

/-! ## A206442.P3194199083105385229

`∑{p}[A284010(n+1), A008518(#)]`
-/

namespace A206442.P3194199083105385229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008518 p

end

end A206442.P3194199083105385229

/-! ## A206442.P8908796575971988704

`∑{p}[A284010(n+1), A085561(#)]`
-/

namespace A206442.P8908796575971988704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A085561 p

end

end A206442.P8908796575971988704

/-! ## A206442.P948993307899579993

`A001221(∏{p}[A284010(n+1), #])`
-/

namespace A206442.P948993307899579993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A206442.P948993307899579993

/-!
# A206443: Least n such that L(n)<-1 and L(n)>L(n-1), where L(k) means the least root of the polynomial p(k,x) defined at A206284, and a(1)=13.

The programs for A206443, there is no canonical definition to state claims against.
-/

/-! ## A206443.P9673697011540788214

`A161897(n+1)+A014452(A288876(n))`
-/

namespace A206443.P9673697011540788214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161897 (n + 1) + A014452 (A288876 n).toNat

end

end A206443.P9673697011540788214

/-!
# A206444: Least n such that L(n)<-1 and L(n)

The programs for A206444, there is no canonical definition to state claims against.
-/

/-! ## A206444.P8550479749930670511

`∑[10*4^n]+3`
-/

namespace A206444.P8550479749930670511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * 4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A206444.P8550479749930670511

/-! ## A206444.P8322649915593411318

`xor(7, ∑[10*4^n])`
-/

namespace A206444.P8322649915593411318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * 4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206444.P8322649915593411318

/-! ## A206444.P7016060139228175176

`or(1, 4*a(n-1))` with `a(0)=13`
-/

namespace A206444.P7016060139228175176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [13] fun n a =>
  Nat.lor 1 (4 * a (n - 1))

end

end A206444.P7016060139228175176

/-! ## A206444.P12995449464544659228

`or(1, lcm(4, a(n-1)))` with `a(0)=13`
-/

namespace A206444.P12995449464544659228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [13] fun n a =>
  Nat.lor 1 (Nat.lcm 4 (a (n - 1)))

end

end A206444.P12995449464544659228

/-!
# A206445: Positions of 0 in A076478; complement of A206446.

The programs for A206445, there is no canonical definition to state claims against.
-/

/-! ## A206445.P1156253340652933492

`comp[A206446(n+1)-1]+1`
-/

namespace A206445.P1156253340652933492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206446 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A206445.P1156253340652933492

/-! ## A206445.P552093748366780191

`eq[0, A076478(n)]+1`
-/

namespace A206445.P552093748366780191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A206445.P552093748366780191

/-! ## A206445.P4332613389085306106

`A328399(2*eq[0, A076478(n)])`
-/

namespace A206445.P4332613389085306106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206445.P4332613389085306106

/-! ## A206445.P2600017310860692733

`record[or(-A076478(n), A000027(n+1))]`
-/

namespace A206445.P2600017310860692733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A076478 n) (A000027 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206445.P2600017310860692733

/-! ## A206445.P2362371566369708254

`1-A001489(eq[0, A076478(n)])`
-/

namespace A206445.P2362371566369708254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206445.P2362371566369708254

/-! ## A206445.P14795098286974956930

`A003607(n+1)-A030530(A003607(n+1))`
-/

namespace A206445.P14795098286974956930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003607 (n + 1) - A030530 (A003607 (n + 1)).toNat

end

end A206445.P14795098286974956930

/-! ## A206445.P9714707701632862749

`A008619(2*eq[0, A076478(n)])`
-/

namespace A206445.P9714707701632862749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206445.P9714707701632862749

/-! ## A206445.P14029820491475417976

`A028242(2*eq[0, A076478(n)])`
-/

namespace A206445.P14029820491475417976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206445.P14029820491475417976

/-! ## A206445.P1850411229408701115

`record[xor(-A076478(n), A008619(2*n))]`
-/

namespace A206445.P1850411229408701115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A076478 n) (A008619 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206445.P1850411229408701115

/-! ## A206445.P9331189365871121461

`A008611(3*eq[0, A076478(n)])`
-/

namespace A206445.P9331189365871121461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206445.P9331189365871121461

/-! ## A206445.P6649041674688984338

`eq[2, A233136(eq[2, A233136(n+1)])]`
-/

namespace A206445.P6649041674688984338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233136 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A206445.P6649041674688984338

/-! ## A206445.P9712407936971902070

`A008612(6*eq[0, A076478(n)])`
-/

namespace A206445.P9712407936971902070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206445.P9712407936971902070

/-!
# A206446: Positions of 1 in A076478; complement of A206445.

The programs for A206446, there is no canonical definition to state claims against.
-/

/-! ## A206446.P1268373447019185374

`lt[0, A076478(n)]+1`
-/

namespace A206446.P1268373447019185374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A206446.P1268373447019185374

/-! ## A206446.P14973319536963637087

`record[(n+2)*A076478(n+1)]`
-/

namespace A206446.P14973319536963637087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A076478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A206446.P14973319536963637087

/-! ## A206446.P6948091372747003569

`1-A001489(eq[1, A076478(n)])`
-/

namespace A206446.P6948091372747003569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206446.P6948091372747003569

/-! ## A206446.P11857836514411737850

`A328399(2*eq[1, A076478(n)])`
-/

namespace A206446.P11857836514411737850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206446.P11857836514411737850

/-! ## A206446.P5054613122946204502

`eq[1, A076478(A004277(n)-(n+1))]`
-/

namespace A206446.P5054613122946204502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 (A004277 n - (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A206446.P5054613122946204502

/-! ## A206446.P9103446358249844072

`eq[1, A076478(A004277(n)-n-1)]`
-/

namespace A206446.P9103446358249844072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 (A004277 n - (n : ℤ) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A206446.P9103446358249844072

/-! ## A206446.P16381625923785815943

`eq[A076478(n-A158388(n)), A158388(n)]`
-/

namespace A206446.P16381625923785815943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 ((n : ℤ) - A158388 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A206446.P16381625923785815943

/-! ## A206446.P14307494947032364337

`A271728(n+1)+1`
-/

namespace A206446.P14307494947032364337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271728 (n + 1) + 1

end

end A206446.P14307494947032364337

/-! ## A206446.P5297277431936691079

`A020725(A271728(n+1))`
-/

namespace A206446.P5297277431936691079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A271728 (n + 1)).toNat

end

end A206446.P5297277431936691079

/-! ## A206446.P7019425400783914707

`A008619(2*eq[1, A076478(n)])`
-/

namespace A206446.P7019425400783914707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206446.P7019425400783914707

/-! ## A206446.P4260272598702412701

`A028242(2*eq[1, A076478(n)])`
-/

namespace A206446.P4260272598702412701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206446.P4260272598702412701

/-! ## A206446.P9939645536273801793

`A008611(3*eq[1, A076478(n)])`
-/

namespace A206446.P9939645536273801793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206446.P9939645536273801793

/-! ## A206446.P1610918271606537424

`A008620(3*eq[1, A076478(n)])`
-/

namespace A206446.P1610918271606537424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206446.P1610918271606537424

/-! ## A206446.P18368284969994487252

`A008624(4*eq[1, A076478(n)])`
-/

namespace A206446.P18368284969994487252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A206446.P18368284969994487252

/-! ## A206446.P15510271394187277828

`eq[1, A233136(n+2)]-n`
-/

namespace A206446.P15510271394187277828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233136 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A206446.P15510271394187277828

/-!
# A206447: Composite numbers n such that sigma(n) = sigma(d) has solution for some other composite number d.

The programs for A206447, there is no canonical definition to state claims against.
-/

/-! ## A206447.P2391809046519279515

`A171165(n+2)+A095049(A075460(n+5))`
-/

namespace A206447.P2391809046519279515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171165 (n + 2) + A095049 (A075460 (n + 5)).toNat

end

end A206447.P2391809046519279515

/-! ## A206447.P4320152899119101389

`lt[A054296(n+1), A006530(A146163(n+2))]`
-/

namespace A206447.P4320152899119101389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A146163 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A206447.P4320152899119101389

/-! ## A206447.P5153285568073820086

`lt[A177763(n+3), A006530(A146163(n+2))]`
-/

namespace A206447.P5153285568073820086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177763 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A146163 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A206447.P5153285568073820086

/-! ## A206447.P5403842180290640526

`A018252(lt[A350843(3*n+1), A350788(n)])`
-/

namespace A206447.P5403842180290640526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350843 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A206447.P5403842180290640526

/-! ## A206447.P5149762613228888889

`lt[A157049(2*n+5), A006530(A146163(n+2))]`
-/

namespace A206447.P5149762613228888889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157049 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A146163 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A206447.P5149762613228888889

/-!
# A206448: Values of sigma(n) of composite numbers n such that sigma(n) = sigma(d) has solution for any other composite number d in increasing order.

The programs for A206448, there is no canonical definition to state claims against.
-/

/-! ## A206448.P2458755478276386032

`A265575(A321539(n))+A007528(n+4)`
-/

namespace A206448.P2458755478276386032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265575 (A321539 n).toNat + A007528 (n + 4)

end

end A206448.P2458755478276386032

/-! ## A206448.P2463051589988460105

`A350333(A292113(n+1))+A007528(n+4)`
-/

namespace A206448.P2463051589988460105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350333 (A292113 (n + 1)).toNat + A007528 (n + 4)

end

end A206448.P2463051589988460105

/-! ## A206448.P6162230579469137885

`A138618(A049488(n+1))+A003627(n+5)`
-/

namespace A206448.P6162230579469137885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138618 (A049488 (n + 1)).toNat + A003627 (n + 5)

end

end A206448.P6162230579469137885

/-! ## A206448.P2395066463684373065

`A092782(A000581(n+8))+A003627(n+5)`
-/

namespace A206448.P2395066463684373065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (A000581 (n + 8)).toNat + A003627 (n + 5)

end

end A206448.P2395066463684373065

/-! ## A206448.P9231606589337226354

`A124010(A000578(3*n+2))+A003627(n+5)`
-/

namespace A206448.P9231606589337226354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A000578 (3 * n + 2)).toNat + A003627 (n + 5)

end

end A206448.P9231606589337226354

/-!
# A206449: Values of sigma(p) of primes p such that sigma(p) = sigma(c) has a solution for some composite number c.

The programs for A206449, there is no canonical definition to state claims against.
-/

/-! ## A206449.P6060635876976230237

`A158913(n+1)+1`
-/

namespace A206449.P6060635876976230237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158913 (n + 1) + 1

end

end A206449.P6060635876976230237

/-! ## A206449.P9032969613404365296

`p?[A241646(n+1)-1]+1`
-/

namespace A206449.P9032969613404365296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241646 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A206449.P9032969613404365296

/-! ## A206449.P2534166325279419963

`p?[A258914(n+1)-1]+1`
-/

namespace A206449.P2534166325279419963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258914 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A206449.P2534166325279419963

/-! ## A206449.P11815006549211094650

`p?[A159886(n+1)-1]+1`
-/

namespace A206449.P11815006549211094650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159886 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A206449.P11815006549211094650

/-! ## A206449.P7633007086308876714

`∩[A159886(n+1), A028815(n)]`
-/

namespace A206449.P7633007086308876714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206449.P7633007086308876714

/-! ## A206449.P779402213539952962

`∩[A241646(n+1), A028815(n)]`
-/

namespace A206449.P779402213539952962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206449.P779402213539952962

/-! ## A206449.P13083783619705423837

`∩[A258914(n+1), A028815(n)]`
-/

namespace A206449.P13083783619705423837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206449.P13083783619705423837

/-! ## A206449.P6704018474436890324

`∩[A008864(n+1), A159886(n+1)]`
-/

namespace A206449.P6704018474436890324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206449.P6704018474436890324

/-! ## A206449.P13692793712206292275

`∩[A055670(n+1), A159886(n+1)]`
-/

namespace A206449.P13692793712206292275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206449.P13692793712206292275

/-! ## A206449.P17414310527582721160

`∩[A008864(n+1), A241646(n+1)]`
-/

namespace A206449.P17414310527582721160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206449.P17414310527582721160

/-! ## A206449.P3281655758645474746

`∩[A008864(n+1), A258914(n+1)]`
-/

namespace A206449.P3281655758645474746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206449.P3281655758645474746

/-! ## A206449.P17124779163491603973

`∩[A135731(n+1), A159886(n+1)]`
-/

namespace A206449.P17124779163491603973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206449.P17124779163491603973

/-! ## A206449.P14408142840732010554

`∩[A055670(n+1), A258914(n+1)]`
-/

namespace A206449.P14408142840732010554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206449.P14408142840732010554

/-! ## A206449.P6762661887540309808

`∩[A135731(n+1), A241646(n+1)]`
-/

namespace A206449.P6762661887540309808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206449.P6762661887540309808

/-! ## A206449.P7213770515757272608

`∩[A135731(n+1), A258914(n+1)]`
-/

namespace A206449.P7213770515757272608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206449.P7213770515757272608

/-! ## A206449.P16833239140730715753

`∩[A159886(n+1), A299763(n+1)]`
-/

namespace A206449.P16833239140730715753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206449.P16833239140730715753

/-! ## A206449.P18425570446804975598

`∩[A258914(n+1), A299763(n+1)]`
-/

namespace A206449.P18425570446804975598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206449.P18425570446804975598

/-! ## A206449.P13261366104526534169

`A000203(A158913(n+1))`
-/

namespace A206449.P13261366104526534169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A158913 (n + 1)).toNat

end

end A206449.P13261366104526534169

/-! ## A206449.P7427851436631733680

`∩[A159886(n+1), A351863(n+1)]`
-/

namespace A206449.P7427851436631733680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206449.P7427851436631733680

/-! ## A206449.P12045726719884191431

`∩[A241646(n+1), A351863(n+1)]`
-/

namespace A206449.P12045726719884191431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A206449.P12045726719884191431

/-!
# A206450: Number of 0..3 arrays of length n avoiding the consecutive pattern 0..3.

The programs for A206450, the canonical program `A206450.P3234489450423655920` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206450 has offset 0).

The definition of A206450 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206450.P3234489450423655920

`4*a(n-1)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=16, a(3)=64`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A206450

/-- `4*a(n-1)-a(n-4)` -/
def P3234489450423655920.Spec : Prop :=
  ∀ n, P3234489450423655920.a n = A206450 n

theorem P3234489450423655920.correct : P3234489450423655920.Spec := by
  intro n
  simp only [A206450]

end A206450

/-! ## A206450.P3846642177438731368

`filter[A079262(2*n), A096270(#)]`
-/

namespace A206450.P3846642177438731368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079262 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A096270 (f1 j).toNat = 1) n)

end

end A206450.P3846642177438731368

namespace A206450

/-- `filter[A079262(2*n), A096270(#)]` -/
def P3846642177438731368.Spec : Prop :=
  ∀ n, P3846642177438731368.a n = A206450 n

end A206450

/-! ## A206450.P663361242256946417

`filter[A079262(2*n), A316829(#)]`
-/

namespace A206450.P663361242256946417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079262 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A316829 (f1 j).toNat = 1) n)

end

end A206450.P663361242256946417

namespace A206450

/-- `filter[A079262(2*n), A316829(#)]` -/
def P663361242256946417.Spec : Prop :=
  ∀ n, P663361242256946417.a n = A206450 n

end A206450

/-!
# A206451: Number of 0..4 arrays of length n avoiding the consecutive pattern 0..4.

The programs for A206451, the canonical program `A206451.P16617050698974375500` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206451 has offset 0).

The definition of A206451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206451.P16617050698974375500

`5*a(n-1)-a(n-5)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=125, a(4)=625`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A206451

/-- `5*a(n-1)-a(n-5)` -/
def P16617050698974375500.Spec : Prop :=
  ∀ n, P16617050698974375500.a n = A206451 n

theorem P16617050698974375500.correct : P16617050698974375500.Spec := by
  intro n
  simp only [A206451]

end A206451

/-! ## A206451.P12784146756865710055

`A034474(n)-A076318(A276534(n))`
-/

namespace A206451.P12784146756865710055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034474 n - A076318 (A276534 n).toNat

end

end A206451.P12784146756865710055

namespace A206451

/-- `A034474(n)-A076318(A276534(n))` -/
def P12784146756865710055.Spec : Prop :=
  ∀ n, P12784146756865710055.a n = A206451 n

end A206451

/-!
# A206452: Number of 0..5 arrays of length n avoiding the consecutive pattern 0..5.

The programs for A206452, there is no canonical definition to state claims against.
-/

/-! ## A206452.P1897863364323069448

`6^n-A384319(A335407(n))`
-/

namespace A206452.P1897863364323069448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) - A384319 (A335407 n).toNat

end

end A206452.P1897863364323069448

/-! ## A206452.P14518545786303108633

`6^n-A086073(A288834(n+1))`
-/

namespace A206452.P14518545786303108633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) - A086073 (A288834 (n + 1)).toNat

end

end A206452.P14518545786303108633

/-! ## A206452.P6898040771187569538

`A062394(n)-A001222(A006862(n))`
-/

namespace A206452.P6898040771187569538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062394 n - A001222 (A006862 n).toNat

end

end A206452.P6898040771187569538

/-!
# A206453: Number of 0..6 arrays of length n avoiding the consecutive pattern 0..6.

The programs for A206453, there is no canonical definition to state claims against.
-/

/-! ## A206453.P11722233186056928828

`A074290(A223905(n))+A000420(n)`
-/

namespace A206453.P11722233186056928828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 (A223905 n).toNat + A000420 n

end

end A206453.P11722233186056928828

/-! ## A206453.P4098624072889746399

`A034491(n)-A026492(A000984(n))`
-/

namespace A206453.P4098624072889746399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034491 n - A026492 (A000984 n).toNat

end

end A206453.P4098624072889746399

/-! ## A206453.P5577102279533428852

`A000420(n)-A103675(A001700(n))`
-/

namespace A206453.P5577102279533428852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n - A103675 (A001700 n).toNat

end

end A206453.P5577102279533428852

/-! ## A206453.P11529686582754350038

`A000420(n)-A003849(A291116(n))`
-/

namespace A206453.P11529686582754350038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n - A003849 (A291116 n).toNat

end

end A206453.P11529686582754350038

/-!
# A206454: Number of 0..7 arrays of length n avoiding the consecutive pattern 0..7.

The programs for A206454, there is no canonical definition to state claims against.
-/

/-! ## A206454.P2771040613191333903

`A024088(n)+A008966(A001047(n+2))`
-/

namespace A206454.P2771040613191333903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024088 n + A008966 (A001047 (n + 2)).toNat

end

end A206454.P2771040613191333903

/-! ## A206454.P8069538461015139334

`A062395(n)-A379772(A062810(n+1))`
-/

namespace A206454.P8069538461015139334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062395 n - A379772 (A062810 (n + 1)).toNat

end

end A206454.P8069538461015139334

/-! ## A206454.P490752162854460165

`A334460(A001405(n))+A000225(3*n)`
-/

namespace A206454.P490752162854460165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334460 (A001405 n).toNat + A000225 (3 * n)

end

end A206454.P490752162854460165

/-! ## A206454.P10519076255549630972

`A336546(A168243(n))+A000225(3*n)`
-/

namespace A206454.P10519076255549630972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336546 (A168243 n).toNat + A000225 (3 * n)

end

end A206454.P10519076255549630972

/-! ## A206454.P8581473799760939391

`A000079(3*n)-A285969(A003946(n))`
-/

namespace A206454.P8581473799760939391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (3 * n) - A285969 (A003946 n).toNat

end

end A206454.P8581473799760939391

/-!
# A206456: Number of 0..n arrays of length n+2 avoiding the consecutive pattern 0..n.

The programs for A206456, there is no canonical definition to state claims against.
-/

/-! ## A206456.P13699908934943766753

`(n+2)*((n+2)^(n+2)-2)`
-/

namespace A206456.P13699908934943766753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (((n + 2) ^ (n + 2) : ℤ) - 2)

end

end A206456.P13699908934943766753

/-! ## A206456.P4015050324988449779

`(n+2)^(n+3)-Δ[lcm(n+1, n+2)]`
-/

namespace A206456.P4015050324988449779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ (n + 3) : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A206456.P4015050324988449779

/-! ## A206456.P15294408668877320428

`A345360(n+2)-(n+2)`
-/

namespace A206456.P15294408668877320428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345360 (n + 2) - (n + 2 : ℤ)

end

end A206456.P15294408668877320428

/-! ## A206456.P7984326929366993649

`A014293(n+2)-(n+3)`
-/

namespace A206456.P7984326929366993649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014293 (n + 2) - (n + 3 : ℤ)

end

end A206456.P7984326929366993649

/-! ## A206456.P6450003597783195838

`A007778(n+2)-2*(n+2)`
-/

namespace A206456.P6450003597783195838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007778 (n + 2) - (2 * (n + 2) : ℤ)

end

end A206456.P6450003597783195838

/-! ## A206456.P11223054512852137009

`(n+2)^(n+3)-A103517(n+1)`
-/

namespace A206456.P11223054512852137009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ (n + 3) : ℤ) - A103517 (n + 1)

end

end A206456.P11223054512852137009

/-! ## A206456.P3379304208030563481

`(n+2)^(n+3)-A004277(n+2)`
-/

namespace A206456.P3379304208030563481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ (n + 3) : ℤ) - A004277 (n + 2)

end

end A206456.P3379304208030563481

/-! ## A206456.P8423573605366089126

`(n+2)^(n+3)-A005843(n+2)`
-/

namespace A206456.P8423573605366089126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ (n + 3) : ℤ) - A005843 (n + 2)

end

end A206456.P8423573605366089126

/-! ## A206456.P17689274810746754574

`(n+2)^(n+3)-A122080(n+2)`
-/

namespace A206456.P17689274810746754574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ (n + 3) : ℤ) - A122080 (n + 2)

end

end A206456.P17689274810746754574

/-! ## A206456.P17557284488299562588

`(n+2)^(n+3)-A163300(n+2)`
-/

namespace A206456.P17557284488299562588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ (n + 3) : ℤ) - A163300 (n + 2)

end

end A206456.P17557284488299562588

/-!
# A206457: Number of 0..n arrays of length n+3 avoiding the consecutive pattern 0..n.

The programs for A206457, there is no canonical definition to state claims against.
-/

/-! ## A206457.P1428716400969841606

`floor(A206459(n+1)/A206461(n+1)*A206459(n+1))`
-/

namespace A206457.P1428716400969841606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A206459 (n + 1) : ℚ) / (A206461 (n + 1) : ℚ) * (A206459 (n + 1) : ℚ)⌋

end

end A206457.P1428716400969841606

/-! ## A206457.P3518804204693170399

`A206455((n+1)²+(n+3)²)`
-/

namespace A206457.P3518804204693170399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206455 ((n + 1) ^ 2 + (n + 3) ^ 2)

end

end A206457.P3518804204693170399

/-! ## A206457.P463811227470734350

`floor(A206458(n+1)²/A206459(n+1))`
-/

namespace A206457.P463811227470734350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A206458 (n + 1) ^ 2 : ℚ) / (A206459 (n + 1) : ℚ)⌋

end

end A206457.P463811227470734350

/-! ## A206457.P11215604455702977116

`floor(A206459(n+1)²/A206461(n+1))`
-/

namespace A206457.P11215604455702977116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A206459 (n + 1) ^ 2 : ℚ) / (A206461 (n + 1) : ℚ)⌋

end

end A206457.P11215604455702977116

/-!
# A206458: Number of 0..n arrays of length n+4 avoiding the consecutive pattern 0..n.

The programs for A206458, there is no canonical definition to state claims against.
-/

/-! ## A206458.P1603306379861634604

`floor(A206457(n+1)/A206456(n+1)*A206457(n+1))`
-/

namespace A206458.P1603306379861634604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A206457 (n + 1) : ℚ) / (A206456 (n + 1) : ℚ) * (A206457 (n + 1) : ℚ)⌋

end

end A206458.P1603306379861634604

/-! ## A206458.P6807253460942692378

`floor(A206459(n+1)/A206460(n+1)*A206459(n+1))`
-/

namespace A206458.P6807253460942692378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A206459 (n + 1) : ℚ) / (A206460 (n + 1) : ℚ) * (A206459 (n + 1) : ℚ)⌋

end

end A206458.P6807253460942692378

/-! ## A206458.P14328031774534099437

`A206455(A152813(n)+12)`
-/

namespace A206458.P14328031774534099437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206455 (A152813 n + 12).toNat

end

end A206458.P14328031774534099437

/-! ## A206458.P15808082096471209022

`floor(A206457(n+1)²/A206456(n+1))`
-/

namespace A206458.P15808082096471209022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A206457 (n + 1) ^ 2 : ℚ) / (A206456 (n + 1) : ℚ)⌋

end

end A206458.P15808082096471209022

/-! ## A206458.P4331343104593496148

`floor(A206459(n+1)²/A206460(n+1))`
-/

namespace A206458.P4331343104593496148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A206459 (n + 1) ^ 2 : ℚ) / (A206460 (n + 1) : ℚ)⌋

end

end A206458.P4331343104593496148

/-!
# A206459: Number of 0..n arrays of length n+5 avoiding the consecutive pattern 0..n.

The programs for A206459, there is no canonical definition to state claims against.
-/

/-! ## A206459.P13570938635386122392

`floor(A206458(n+1)/A206457(n+1)*A206458(n+1))`
-/

namespace A206459.P13570938635386122392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A206458 (n + 1) : ℚ) / (A206457 (n + 1) : ℚ) * (A206458 (n + 1) : ℚ)⌋

end

end A206459.P13570938635386122392

/-! ## A206459.P11169174867809996028

`A206455(A005893(n+3)+1)`
-/

namespace A206459.P11169174867809996028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206455 (A005893 (n + 3) + 1).toNat

end

end A206459.P11169174867809996028

/-! ## A206459.P14367569964134141981

`A206455(A058331(n+3)+2)`
-/

namespace A206459.P14367569964134141981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206455 (A058331 (n + 3) + 2).toNat

end

end A206459.P14367569964134141981

/-! ## A206459.P4558013648578308775

`A206455(A014105(n+3)-n)`
-/

namespace A206459.P4558013648578308775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206455 (A014105 (n + 3) - (n : ℤ)).toNat

end

end A206459.P4558013648578308775

/-! ## A206459.P5996116275016574674

`floor(A206458(n+1)²/A206457(n+1))`
-/

namespace A206459.P5996116275016574674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A206458 (n + 1) ^ 2 : ℚ) / (A206457 (n + 1) : ℚ)⌋

end

end A206459.P5996116275016574674

/-!
# A206460: Number of 0..n arrays of length n+6 avoiding the consecutive pattern 0..n.

The programs for A206460, there is no canonical definition to state claims against.
-/

/-! ## A206460.P6322226005102497548

`floor(A206459(n+1)/A206458(n+1)*A206459(n+1))`
-/

namespace A206460.P6322226005102497548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A206459 (n + 1) : ℚ) / (A206458 (n + 1) : ℚ) * (A206459 (n + 1) : ℚ)⌋

end

end A206460.P6322226005102497548

/-! ## A206460.P12467869503969538058

`A206455(A027379(2*(n+2))+n+10)`
-/

namespace A206460.P12467869503969538058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206455 (A027379 (2 * (n + 2)) + (n + 10 : ℤ)).toNat

end

end A206460.P12467869503969538058

/-! ## A206460.P12787152621769332765

`floor(A206459(n+1)²/A206458(n+1))`
-/

namespace A206460.P12787152621769332765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A206459 (n + 1) ^ 2 : ℚ) / (A206458 (n + 1) : ℚ)⌋

end

end A206460.P12787152621769332765

/-!
# A206461: Number of 0..n arrays of length n+7 avoiding the consecutive pattern 0..n.

The programs for A206461, there is no canonical definition to state claims against.
-/

/-! ## A206461.P15151403480401535994

`floor(A206460(n+1)/A206459(n+1)*A206460(n+1))`
-/

namespace A206461.P15151403480401535994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A206460 (n + 1) : ℚ) / (A206459 (n + 1) : ℚ) * (A206460 (n + 1) : ℚ)⌋

end

end A206461.P15151403480401535994

/-! ## A206461.P12155149768581699633

`A206455(A014105(n+4)-n)`
-/

namespace A206461.P12155149768581699633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206455 (A014105 (n + 4) - (n : ℤ)).toNat

end

end A206461.P12155149768581699633

/-!
# A206462: Primes p such that p + nextprime(p) is a squarefree number (A005117).

The programs for A206462, the canonical program `A206462.P3532272431253020228` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206462 has offset 1).

The definition of A206462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1413 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206462.P3532272431253020228

`record[A000040(n+1)*A008966(A001043(n+1))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A206462

/-- `record[A000040(n+1)*A008966(A001043(n+1))]` -/
def P3532272431253020228.Spec : Prop :=
  ∀ n, P3532272431253020228.a n = A206462 (n + 1)

theorem P3532272431253020228.correct : P3532272431253020228.Spec := by
  intro n
  simp only [A206462, Nat.add_sub_cancel]

end A206462

/-! ## A206462.P2200593729736465225

`p?[A080323(A001043(n+1))+A006093(n+1)]`
-/

namespace A206462.P2200593729736465225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080323 (A001043 (n + 1)).toNat + A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A206462.P2200593729736465225

namespace A206462

/-- `p?[A080323(A001043(n+1))+A006093(n+1)]` -/
def P2200593729736465225.Spec : Prop :=
  ∀ n, P2200593729736465225.a n = A206462 (n + 1)

end A206462

/-! ## A206462.P17237304732211857091

`A055377(A206329(n+1))`
-/

namespace A206462.P17237304732211857091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (A206329 (n + 1)).toNat

end

end A206462.P17237304732211857091

namespace A206462

/-- `A055377(A206329(n+1))` -/
def P17237304732211857091.Spec : Prop :=
  ∀ n, P17237304732211857091.a n = A206462 (n + 1)

end A206462

/-! ## A206462.P11785510295690851374

`A076272(A206329(n+1)-2)`
-/

namespace A206462.P11785510295690851374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A206329 (n + 1) - 2).toNat

end

end A206462.P11785510295690851374

namespace A206462

/-- `A076272(A206329(n+1)-2)` -/
def P11785510295690851374.Spec : Prop :=
  ∀ n, P11785510295690851374.a n = A206462 (n + 1)

end A206462

/-! ## A206462.P12711530090045648309

`A064989(A206626(n+1))`
-/

namespace A206462.P12711530090045648309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A206626 (n + 1)).toNat

end

end A206462.P12711530090045648309

namespace A206462

/-- `A064989(A206626(n+1))` -/
def P12711530090045648309.Spec : Prop :=
  ∀ n, P12711530090045648309.a n = A206462 (n + 1)

end A206462

/-! ## A206462.P15126407106353306861

`A252463(p?[A206626(n+1)])`
-/

namespace A206462.P15126407106353306861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A206462.P15126407106353306861

namespace A206462

/-- `A252463(p?[A206626(n+1)])` -/
def P15126407106353306861.Spec : Prop :=
  ∀ n, P15126407106353306861.a n = A206462 (n + 1)

end A206462

/-! ## A206462.P15230843816918391618

`A206329(n+1)-A206626(n+1)`
-/

namespace A206462.P15230843816918391618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206329 (n + 1) - A206626 (n + 1)

end

end A206462.P15230843816918391618

namespace A206462

/-- `A206329(n+1)-A206626(n+1)` -/
def P15230843816918391618.Spec : Prop :=
  ∀ n, P15230843816918391618.a n = A206462 (n + 1)

end A206462

/-!
# A206463: G.f. satisfies: A(x*D(-x)) = x where D(x) = g.f. of A014577, the dragon curve sequence.

The programs for A206463, there is no canonical definition to state claims against.
-/

/-! ## A206463.P17157354032215765422

`A071969(n)+A050924(A304976(n))`
-/

namespace A206463.P17157354032215765422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071969 n + A050924 (A304976 n).toNat

end

end A206463.P17157354032215765422

/-! ## A206463.P14286513485265019240

`A372531(n+1)+A095190(A074089(n))`
-/

namespace A206463.P14286513485265019240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372531 (n + 1) + A095190 (A074089 n).toNat

end

end A206463.P14286513485265019240

/-! ## A206463.P1233935323425075546

`A372531(n+1)+A282317(A001003(n))`
-/

namespace A206463.P1233935323425075546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372531 (n + 1) + A282317 (A001003 n).toNat

end

end A206463.P1233935323425075546

/-! ## A206463.P8876795301445350302

`A382430(A174613(n))+A372531(n+1)`
-/

namespace A206463.P8876795301445350302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382430 (A174613 n).toNat + A372531 (n + 1)

end

end A206463.P8876795301445350302

/-!
# A206464: Number of length-n Catalan-RGS (restricted growth strings) such that the RGS is a valid mixed-radix number in falling factorial basis.

The programs for A206464, there is no canonical definition to state claims against.
-/

/-! ## A206464.P14968405099653612937

`A291680(∑[n+2])`
-/

namespace A206464.P14968405099653612937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A206464.P14968405099653612937

/-! ## A206464.P12360032443982122192

`A291680(A000096(n+1))+floor(char[2]/3)`
-/

namespace A206464.P12360032443982122192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (A000096 (n + 1)).toNat + ⌊((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / 3⌋

end

end A206464.P12360032443982122192

/-! ## A206464.P18130335087953717259

`A089026(∏{e}[n+1, 3*2^#])*A291680(A000096(n+1))`
-/

namespace A206464.P18130335087953717259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (∏ p ∈ Nat.primeFactors (f1 n), 3 * 2 ^ Nat.factorization (f1 n) p) * A291680 (A000096 (n + 1)).toNat

end

end A206464.P18130335087953717259

/-! ## A206464.P9199798906112407409

`A291680(A000096(n+1))%A156903(2^n)`
-/

namespace A206464.P9199798906112407409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291680 (A000096 (n + 1)).toNat) (A156903 (2 ^ n))

end

end A206464.P9199798906112407409

/-!
# A206465: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock having zero permanent.

The programs for A206465, there is no canonical definition to state claims against.
-/

/-! ## A206465.P9931917518643282032

`A206472(∑[4*n]+1)`
-/

namespace A206465.P9931917518643282032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206472 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A206465.P9931917518643282032

/-!
# A206466: Number of (n+1) X 3 0..2 arrays with every 2 X 2 subblock having zero permanent.

The programs for A206466, there is no canonical definition to state claims against.
-/

/-! ## A206466.P16129343122869326953

`A225021(n+1)-A204834(n+1)`
-/

namespace A206466.P16129343122869326953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225021 (n + 1) - A204834 (n + 1)

end

end A206466.P16129343122869326953

/-! ## A206466.P12587114745413922824

`A206472(∑[n+1]+2)`
-/

namespace A206466.P12587114745413922824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206472 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A206466.P12587114745413922824

/-! ## A206466.P9896946390508819083

`or(1, A206472(A133263(n+1)))`
-/

namespace A206466.P9896946390508819083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A206472 (A133263 (n + 1)).toNat)

end

end A206466.P9896946390508819083

/-! ## A206466.P4303545505752749861

`A033999(n)²*A206472(A133263(n+1))`
-/

namespace A206466.P4303545505752749861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A206472 (A133263 (n + 1)).toNat

end

end A206466.P4303545505752749861

/-! ## A206466.P6572162521666354221

`A007318(C(2, n))*A206472(A133263(n+1))`
-/

namespace A206466.P6572162521666354221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A206472 (A133263 (n + 1)).toNat

end

end A206466.P6572162521666354221

/-!
# A206467: Number of (n+1) X 4 0..2 arrays with every 2 X 2 subblock having zero permanent.

The programs for A206467, there is no canonical definition to state claims against.
-/

/-! ## A206467.P9606234330723885988

`A206472(∑[n+2]+4)`
-/

namespace A206467.P9606234330723885988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206472 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A206467.P9606234330723885988

/-! ## A206467.P7856340815386465205

`lcm(3, A206472(A167614(n+1)))`
-/

namespace A206467.P7856340815386465205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A206472 (A167614 (n + 1)).toNat)

end

end A206467.P7856340815386465205

/-! ## A206467.P3906024783748447189

`or(A000007(n), A206472(A167614(n+1)))`
-/

namespace A206467.P3906024783748447189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A206472 (A167614 (n + 1)).toNat)

end

end A206467.P3906024783748447189

/-! ## A206467.P14531537469812346195

`or(A036987(n), A206472(A167614(n+1)))`
-/

namespace A206467.P14531537469812346195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 n) (A206472 (A167614 (n + 1)).toNat)

end

end A206467.P14531537469812346195

/-! ## A206467.P16960654399227821840

`or(A206472(A167614(n+1)), A309142(n))`
-/

namespace A206467.P16960654399227821840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A206472 (A167614 (n + 1)).toNat) (A309142 (n + 10))

end

end A206467.P16960654399227821840

/-!
# A206468: Number of (n+1)X5 0..2 arrays with every 2X2 subblock having zero permanent.

The programs for A206468, there is no canonical definition to state claims against.
-/

/-! ## A206468.P16010142523362017045

`A206472(A055999(n)+10)`
-/

namespace A206468.P16010142523362017045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206472 (A055999 n + 10).toNat

end

end A206468.P16010142523362017045

/-! ## A206468.P6036584947126406138

`A206472(A167614(n+2)+1)`
-/

namespace A206468.P6036584947126406138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206472 (A167614 (n + 2) + 1).toNat

end

end A206468.P6036584947126406138

/-! ## A206468.P7723324554759072890

`A206472(A167499(n+2)-1)`
-/

namespace A206468.P7723324554759072890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206472 (A167499 (n + 2) - 1).toNat

end

end A206468.P7723324554759072890

/-! ## A206468.P11266221023139426672

`A206472(A055998(n+3)-A005843(n+1))`
-/

namespace A206468.P11266221023139426672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206472 (A055998 (n + 3) - A005843 (n + 1)).toNat

end

end A206468.P11266221023139426672

/-! ## A206468.P17191510392444743151

`A206472(A374004(n+1))`
-/

namespace A206468.P17191510392444743151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206472 (A374004 (n + 1)).toNat

end

end A206468.P17191510392444743151

/-!
# A206469: Number of (n+1)X6 0..2 arrays with every 2X2 subblock having zero permanent.

The programs for A206469, there is no canonical definition to state claims against.
-/

/-! ## A206469.P11652311622003726933

`A206472(A167499(n+3))`
-/

namespace A206469.P11652311622003726933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206472 (A167499 (n + 3)).toNat

end

end A206469.P11652311622003726933

/-! ## A206469.P7913176849368714282

`A206472(A000217(n+4)+5)`
-/

namespace A206469.P7913176849368714282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206472 (A000217 (n + 4) + 5).toNat

end

end A206469.P7913176849368714282

/-! ## A206469.P12596104484918318486

`A206472(A000124(n+5)-(n+1))`
-/

namespace A206469.P12596104484918318486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206472 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A206469.P12596104484918318486

/-! ## A206469.P8647367322597326117

`A206472(A055999(n+3)-2*n)`
-/

namespace A206469.P8647367322597326117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206472 (A055999 (n + 3) - (2 * n : ℤ)).toNat

end

end A206469.P8647367322597326117

/-! ## A206469.P3300045690363106432

`A206472(A374005(n+1))`
-/

namespace A206469.P3300045690363106432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206472 (A374005 (n + 1)).toNat

end

end A206469.P3300045690363106432

/-!
# A206470: Number of (n+1)X7 0..2 arrays with every 2X2 subblock having zero permanent.

The programs for A206470, there is no canonical definition to state claims against.
-/

/-! ## A206470.P8220540177700599520

`A206472(A056115(n)+21)`
-/

namespace A206470.P8220540177700599520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206472 (A056115 n + 21).toNat

end

end A206470.P8220540177700599520

/-! ## A206470.P2872239316867023578

`A206472(A055998(n+3)+9)`
-/

namespace A206470.P2872239316867023578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206472 (A055998 (n + 3) + 9).toNat

end

end A206470.P2872239316867023578

/-! ## A206470.P892907320929056008

`A206472(A374007(n+1))`
-/

namespace A206470.P892907320929056008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206472 (A374007 (n + 1)).toNat

end

end A206470.P892907320929056008

/-! ## A206470.P16570019959084591382

`A206472(A055999(n+3)+1)`
-/

namespace A206470.P16570019959084591382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206472 (A055999 (n + 3) + 1).toNat

end

end A206470.P16570019959084591382

/-! ## A206470.P18420881508151010530

`A206472(A000124(n+6)-6)`
-/

namespace A206470.P18420881508151010530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206472 (A000124 (n + 6) - 6).toNat

end

end A206470.P18420881508151010530

/-!
# A206471: Number of (n+1)X8 0..2 arrays with every 2X2 subblock having zero permanent.

The programs for A206471, there is no canonical definition to state claims against.
-/

/-! ## A206471.P4947585964843042895

`A206472(A000124(n+6)+6)`
-/

namespace A206471.P4947585964843042895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206472 (A000124 (n + 6) + 6).toNat

end

end A206471.P4947585964843042895

/-! ## A206471.P5854839889120897496

`A206472(A374008(n+1))`
-/

namespace A206471.P5854839889120897496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206472 (A374008 (n + 1)).toNat

end

end A206471.P5854839889120897496

/-! ## A206471.P4884567894128909032

`A206472(abs(A000096(n+6)-5))`
-/

namespace A206471.P4884567894128909032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206472 |A000096 (n + 6) - 5|.toNat

end

end A206471.P4884567894128909032

/-!
# A206472: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with every 2X2 subblock having zero permanent.

The programs for A206472, there is no canonical definition to state claims against.
-/

/-! ## A206472.P6595445681258683027

`A225027(n+1)-A204840(n+1)`
-/

namespace A206472.P6595445681258683027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225027 (n + 1) - A204840 (n + 1)

end

end A206472.P6595445681258683027

/-!
# A206474: Riordan array ((1+x-x^2)/(1-x^2), x/(1-x^2)).

The programs for A206474, the canonical program `A206474.P8402992463042945898` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206474 has offset 0).

The definition of A206474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206474.P8402992463042945898

`abs(A185331(n))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A206474

/-- `abs(A185331(n))` -/
def P8402992463042945898.Spec : Prop :=
  ∀ n, P8402992463042945898.a n = A206474 n

theorem P8402992463042945898.correct : P8402992463042945898.Spec := by
  intro n
  simp only [A206474]

end A206474

/-! ## A206474.P5948616319015865377

`gcd(A000038(n), A185331(n))`
-/

namespace A206474.P5948616319015865377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A185331 n)

end

end A206474.P5948616319015865377

namespace A206474

/-- `gcd(A000038(n), A185331(n))` -/
def P5948616319015865377.Spec : Prop :=
  ∀ n, (P5948616319015865377.a n : ℤ) = A206474 n

end A206474

/-! ## A206474.P3137240739341262959

`lcm(A020985(n), A185331(n))`
-/

namespace A206474.P3137240739341262959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A185331 n)

end

end A206474.P3137240739341262959

namespace A206474

/-- `lcm(A020985(n), A185331(n))` -/
def P3137240739341262959.Spec : Prop :=
  ∀ n, (P3137240739341262959.a n : ℤ) = A206474 n

end A206474

/-! ## A206474.P9447457414559787177

`lcm(A185331(n)*A209615(n+1), A209615(n+1))`
-/

namespace A206474.P9447457414559787177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A185331 n * A209615 (n + 1)) (A209615 (n + 1))

end

end A206474.P9447457414559787177

namespace A206474

/-- `lcm(A185331(n)*A209615(n+1), A209615(n+1))` -/
def P9447457414559787177.Spec : Prop :=
  ∀ n, (P9447457414559787177.a n : ℤ) = A206474 n

end A206474

/-! ## A206474.P8276178685922016821

`∑{d}[A185331(n), A000010(#)]`
-/

namespace A206474.P8276178685922016821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A206474.P8276178685922016821

namespace A206474

/-- `∑{d}[A185331(n), A000010(#)]` -/
def P8276178685922016821.Spec : Prop :=
  ∀ n, P8276178685922016821.a n = A206474 n

end A206474

/-! ## A206474.P992683611922475561

`A056926(A185331(n)²)`
-/

namespace A206474.P992683611922475561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A185331 n ^ 2).toNat

end

end A206474.P992683611922475561

namespace A206474

/-- `A056926(A185331(n)²)` -/
def P992683611922475561.Spec : Prop :=
  ∀ n, P992683611922475561.a n = A206474 n

end A206474

/-! ## A206474.P11116146822463936733

`A018851(A185331(n)²)`
-/

namespace A206474.P11116146822463936733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A185331 n ^ 2).toNat

end

end A206474.P11116146822463936733

namespace A206474

/-- `A018851(A185331(n)²)` -/
def P11116146822463936733.Spec : Prop :=
  ∀ n, P11116146822463936733.a n = A206474 n

end A206474

/-! ## A206474.P14323148379830722622

`A000196(A185331(n)²)`
-/

namespace A206474.P14323148379830722622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A185331 n ^ 2).toNat

end

end A206474.P14323148379830722622

namespace A206474

/-- `A000196(A185331(n)²)` -/
def P14323148379830722622.Spec : Prop :=
  ∀ n, P14323148379830722622.a n = A206474 n

end A206474

/-! ## A206474.P274862871052180764

`A037213(A185331(n)²)`
-/

namespace A206474.P274862871052180764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A185331 n ^ 2).toNat

end

end A206474.P274862871052180764

namespace A206474

/-- `A037213(A185331(n)²)` -/
def P274862871052180764.Spec : Prop :=
  ∀ n, P274862871052180764.a n = A206474 n

end A206474

/-! ## A206474.P2613078242713486276

`A038690(A185331(n)²)`
-/

namespace A206474.P2613078242713486276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 (A185331 n ^ 2).toNat

end

end A206474.P2613078242713486276

namespace A206474

/-- `A038690(A185331(n)²)` -/
def P2613078242713486276.Spec : Prop :=
  ∀ n, P2613078242713486276.a n = A206474 n

end A206474

/-!
# A206475: First differences of A206369.

The programs for A206475, the canonical program `A206475.P1877464860005906929` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206475 has offset 1).

The definition of A206475 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206369, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A206475.P1877464860005906929

`A206369(n+2)-A206369(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A206475

/-- `A206369(n+2)-A206369(n+1)` -/
def P1877464860005906929.Spec : Prop :=
  ∀ n, P1877464860005906929.a n = A206475 (n + 1)

theorem P1877464860005906929.correct : P1877464860005906929.Spec := by
  intro n
  simp only [A206475, Nat.add_sub_cancel]

end A206475

/-! ## A206475.P4265596703684998267

`Δ[A345061(n+1)*A345063(n+1)]`
-/

namespace A206475.P4265596703684998267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345061 (n + 1) * A345063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206475.P4265596703684998267

namespace A206475

/-- `Δ[A345061(n+1)*A345063(n+1)]` -/
def P4265596703684998267.Spec : Prop :=
  ∀ n, P4265596703684998267.a n = A206475 (n + 1)

end A206475

/-! ## A206475.P3810432155544752117

`Δ[abs(A318676(n+1)-A318677(n+1))]`
-/

namespace A206475.P3810432155544752117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A318676 (n + 1) - A318677 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206475.P3810432155544752117

namespace A206475

/-- `Δ[abs(A318676(n+1)-A318677(n+1))]` -/
def P3810432155544752117.Spec : Prop :=
  ∀ n, P3810432155544752117.a n = A206475 (n + 1)

end A206475

/-! ## A206475.P9232433721705641888

`Δ[A345061(n+1)*A345062(n+1)-A345060(n+1)]`
-/

namespace A206475.P9232433721705641888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345061 (n + 1) * A345062 (n + 1) - A345060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206475.P9232433721705641888

namespace A206475

/-- `Δ[A345061(n+1)*A345062(n+1)-A345060(n+1)]` -/
def P9232433721705641888.Spec : Prop :=
  ∀ n, P9232433721705641888.a n = A206475 (n + 1)

end A206475

/-! ## A206475.P4167941690403587039

`Δ[A206369(n+1)]`
-/

namespace A206475.P4167941690403587039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206475.P4167941690403587039

namespace A206475

/-- `Δ[A206369(n+1)]` -/
def P4167941690403587039.Spec : Prop :=
  ∀ n, P4167941690403587039.a n = A206475 (n + 1)

theorem P4167941690403587039.correct : P4167941690403587039.Spec := by
  intro n
  simp only [A206475, Nat.add_sub_cancel, A206475.P4167941690403587039.f1, A206475.P4167941690403587039.a, A206475.P1877464860005906929.a, SequenceMachineLib.memo_apply]

end A206475

/-! ## A206475.P616700702680584188

`Δ[abs(A061020(n+1))]`
-/

namespace A206475.P616700702680584188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061020 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206475.P616700702680584188

namespace A206475

/-- `Δ[abs(A061020(n+1))]` -/
def P616700702680584188.Spec : Prop :=
  ∀ n, P616700702680584188.a n = A206475 (n + 1)

end A206475

/-! ## A206475.P12247076601010175065

`1-Δ[A344439(n+1)]`
-/

namespace A206475.P12247076601010175065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A206475.P12247076601010175065

namespace A206475

/-- `1-Δ[A344439(n+1)]` -/
def P12247076601010175065.Spec : Prop :=
  ∀ n, P12247076601010175065.a n = A206475 (n + 1)

end A206475

/-! ## A206475.P232537652411073912

`Δ[abs(∑{d}[n+1, #*A008836(#)])]`
-/

namespace A206475.P232537652411073912
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * A008836 d|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206475.P232537652411073912

namespace A206475

/-- `Δ[abs(∑{d}[n+1, #*A008836(#)])]` -/
def P232537652411073912.Spec : Prop :=
  ∀ n, P232537652411073912.a n = A206475 (n + 1)

end A206475

/-! ## A206475.P299835259147508446

`Δ[A071324(n+1)-A345060(n+1)]`
-/

namespace A206475.P299835259147508446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071324 (n + 1) - A345060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206475.P299835259147508446

namespace A206475

/-- `Δ[A071324(n+1)-A345060(n+1)]` -/
def P299835259147508446.Spec : Prop :=
  ∀ n, P299835259147508446.a n = A206475 (n + 1)

end A206475

/-! ## A206475.P1874667108667911734

`Δ[A008836(n+1)*A061020(n+1)]`
-/

namespace A206475.P1874667108667911734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A061020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206475.P1874667108667911734

namespace A206475

/-- `Δ[A008836(n+1)*A061020(n+1)]` -/
def P1874667108667911734.Spec : Prop :=
  ∀ n, P1874667108667911734.a n = A206475 (n + 1)

end A206475

/-! ## A206475.P9098582303005950299

`1-Δ[∑{d}[n+1, A000010(#)*A049240((n+1)/#)]]`
-/

namespace A206475.P9098582303005950299
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000010 d * A049240 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A206475.P9098582303005950299

namespace A206475

/-- `1-Δ[∑{d}[n+1, A000010(#)*A049240((n+1)/#)]]` -/
def P9098582303005950299.Spec : Prop :=
  ∀ n, P9098582303005950299.a n = A206475 (n + 1)

end A206475

/-!
# A206479: Number of terms common to the binary expansions of m and n; a matrix by antidiagonals.

The programs for A206479, the canonical program `A206479.P12139223227204150552` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206479 has offset 1).

The definition of A206479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206479.P7605621118920158083

`A000120(and(1-C(∑[char[∑[n]]], 2)+n, C(comp[∑[n]]-n, 2)-n))`
-/

namespace A206479.P7605621118920158083
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))).toNat

end

end A206479.P7605621118920158083

namespace A206479

/-- `A000120(and(1-C(∑[char[∑[n]]], 2)+n, C(comp[∑[n]]-n, 2)-n))` -/
def P7605621118920158083.Spec : Prop :=
  ∀ n, P7605621118920158083.a n = A206479 (n + 1)

end A206479

/-! ## A206479.P12139223227204150552

`A000120(A003985(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A206479

/-- `A000120(A003985(n+1))` -/
def P12139223227204150552.Spec : Prop :=
  ∀ n, P12139223227204150552.a n = A206479 (n + 1)

theorem P12139223227204150552.correct : P12139223227204150552.Spec := by
  intro n
  simp only [A206479, Nat.add_sub_cancel]

end A206479

/-! ## A206479.P3661297551692463126

`A000120(and(A002260(n+1), A004736(n+1)))`
-/

namespace A206479.P3661297551692463126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (A002260 (n + 1)) (A004736 (n + 1))).toNat

end

end A206479.P3661297551692463126

namespace A206479

/-- `A000120(and(A002260(n+1), A004736(n+1)))` -/
def P3661297551692463126.Spec : Prop :=
  ∀ n, P3661297551692463126.a n = A206479 (n + 1)

end A206479

/-! ## A206479.P14252138241256305110

`A334297(A003985(n+1)^3)`
-/

namespace A206479.P14252138241256305110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334297 (A003985 (n + 1) ^ 3).toNat

end

end A206479.P14252138241256305110

namespace A206479

/-- `A334297(A003985(n+1)^3)` -/
def P14252138241256305110.Spec : Prop :=
  ∀ n, P14252138241256305110.a n = A206479 (n + 1)

end A206479

/-! ## A206479.P5407670588844970918

`and(A071912(A003985(n+1)), A182233(2*(n+2)))`
-/

namespace A206479.P5407670588844970918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071912 (A003985 (n + 1)).toNat) (A182233 (2 * (n + 2)))

end

end A206479.P5407670588844970918

namespace A206479

/-- `and(A071912(A003985(n+1)), A182233(2*(n+2)))` -/
def P5407670588844970918.Spec : Prop :=
  ∀ n, P5407670588844970918.a n = A206479 (n + 1)

end A206479

/-!
# A206481: a(n) + a(n+2) = n^3.

The programs for A206481, the canonical program `A206481.P17054981964839191` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206481 has offset 1).

The definition of A206481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A206481.P17054981964839191

`(n-1)^3-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A206481

/-- `(n-1)^3-a(n-2)` -/
def P17054981964839191.Spec : Prop :=
  ∀ n, P17054981964839191.a n = A206481 (n + 1)

theorem P17054981964839191.correct : P17054981964839191.Spec := by
  intro n
  simp only [A206481, Nat.add_sub_cancel]

end A206481

/-! ## A206481.P836670040201882862

`1/2*((n-2)*(n+1)²-4*cos(π*(n+1)/2)+2)`
-/

namespace A206481.P836670040201882862
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 2 : ℝ) * ((((n : ℤ) - 2) * ((n + 1) ^ 2 : ℤ) : ℝ) - 4 * Real.cos (Real.pi * (n + 1 : ℝ) / 2) + 2)

end

end A206481.P836670040201882862

namespace A206481

/-- `1/2*((n-2)*(n+1)²-4*cos(π*(n+1)/2)+2)` -/
def P836670040201882862.Spec : Prop :=
  ∀ n, P836670040201882862.a n = (A206481 (n + 1) : ℝ)

end A206481

/-! ## A206481.P12406517097804663229

`floor((n-1)*(1-n)²-a(n-2))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A206481.P12406517097804663229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((n : ℤ) - 1) * (1 - (n : ℤ)) ^ 2 - a (n - 2)

end

end A206481.P12406517097804663229

namespace A206481

/-- `floor((n-1)*(1-n)²-a(n-2))` -/
def P12406517097804663229.Spec : Prop :=
  ∀ n, P12406517097804663229.a n = A206481 (n + 1)

theorem P12406517097804663229.correct : P12406517097804663229.Spec := by
  intro n
  simp only [A206481, Nat.add_sub_cancel, A206481.P12406517097804663229.a, A206481.P17054981964839191.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A206481

/-! ## A206481.P9941089464156646666

`A006003(n)-∑[and(2, n)²]`
-/

namespace A206481.P9941089464156646666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A206481.P9941089464156646666

namespace A206481

/-- `A006003(n)-∑[and(2, n)²]` -/
def P9941089464156646666.Spec : Prop :=
  ∀ n, P9941089464156646666.a n = A206481 (n + 1)

end A206481

/-! ## A206481.P3711723999410441651

`n-1+A007531(n)-a(n-2)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A206481.P3711723999410441651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  (n : ℤ) - 1 + (A007531 n - a (n - 2))

end

end A206481.P3711723999410441651

namespace A206481

/-- `n-1+A007531(n)-a(n-2)` -/
def P3711723999410441651.Spec : Prop :=
  ∀ n, P3711723999410441651.a n = A206481 (n + 1)

end A206481

/-! ## A206481.P7580112654232105020

`A004525(n)+∑[6*A011848(n)]`
-/

namespace A206481.P7580112654232105020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A206481.P7580112654232105020

namespace A206481

/-- `A004525(n)+∑[6*A011848(n)]` -/
def P7580112654232105020.Spec : Prop :=
  ∀ n, P7580112654232105020.a n = A206481 (n + 1)

end A206481

/-! ## A206481.P15663788537123078256

`Δ[A107386(C(n, 2))]`
-/

namespace A206481.P15663788537123078256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107386 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206481.P15663788537123078256

namespace A206481

/-- `Δ[A107386(C(n, 2))]` -/
def P15663788537123078256.Spec : Prop :=
  ∀ n, P15663788537123078256.a n = A206481 (n + 1)

end A206481

/-! ## A206481.P7816912263713347083

`Δ[A107386(∑[n]-n)]`
-/

namespace A206481.P7816912263713347083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107386 (∑ j ∈ Finset.range (n + 1), f2 j - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A206481.P7816912263713347083

namespace A206481

/-- `Δ[A107386(∑[n]-n)]` -/
def P7816912263713347083.Spec : Prop :=
  ∀ n, P7816912263713347083.a n = A206481 (n + 1)

end A206481

/-!
# A206482: Primes prime(k) such that prime(k) <= 2^(prime(k+1)-prime(k)) < prime(k+1).

The programs for A206482, there is no canonical definition to state claims against.
-/

/-! ## A206482.P17372606294091389662

`A000040(A208456(n+1))`
-/

namespace A206482.P17372606294091389662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A208456 (n + 1)).toNat

end

end A206482.P17372606294091389662

/-! ## A206482.P15396616902003247917

`A014234(A280341(n)^A369735(n))`
-/

namespace A206482.P15396616902003247917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014234 (SequenceMachineLib.roundAway ((A280341 n : ℚ) ^ (A369735 n : ℤ))).toNat

end

end A206482.P15396616902003247917

/-!
# A206483: The matching number of the rooted tree having Matula-Goebel number n.

The programs for A206483, there is no canonical definition to state claims against.
-/

/-! ## A206483.P9731519805136352164

`A061775(n+1)-A212625(n+1)`
-/

namespace A206483.P9731519805136352164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (n + 1) - A212625 (n + 1)

end

end A206483.P9731519805136352164

/-! ## A206483.P17977538316053580678

`Δ[A325544(n)]+1-A212625(n+1)`
-/

namespace A206483.P17977538316053580678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 - A212625 (n + 1)

end

end A206483.P17977538316053580678

/-! ## A206483.P16991258184843786986

`A196050(n+1)+1-A212625(n+1)`
-/

namespace A206483.P16991258184843786986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (n + 1) + (1 - A212625 (n + 1))

end

end A206483.P16991258184843786986

/-! ## A206483.P8393337690051360898

`A061775(2*(n+1))%(A212625(n+1)+1)`
-/

namespace A206483.P8393337690051360898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061775 (2 * (n + 1))) (A212625 (n + 1) + 1)

end

end A206483.P8393337690051360898

/-! ## A206483.P18411276932995503620

`∑{e}[A324922(n+1), #]+1-A212625(n+1)`
-/

namespace A206483.P18411276932995503620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1 : ℕ) : ℤ) - A212625 (n + 1)

end

end A206483.P18411276932995503620

/-! ## A206483.P7680057879880905111

`A196050(Δ[A007504(n)])-A212625(n+1)`
-/

namespace A206483.P7680057879880905111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (f1 (n + 1) - f1 n).toNat - A212625 (n + 1)

end

end A206483.P7680057879880905111

/-! ## A206483.P9688633149154652183

`A196050(A000040(n+1))-A212625(n+1)`
-/

namespace A206483.P9688633149154652183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (A000040 (n + 1)).toNat - A212625 (n + 1)

end

end A206483.P9688633149154652183

/-! ## A206483.P5280486015588546974

`A005496(A196050(n+1))-A212625(n+1)`
-/

namespace A206483.P5280486015588546974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A196050 (n + 1)).toNat - A212625 (n + 1)

end

end A206483.P5280486015588546974

/-! ## A206483.P10658669114881604658

`A001222(A324922(n+1))+1-A212625(n+1)`
-/

namespace A206483.P10658669114881604658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A324922 (n + 1)).toNat + (1 - A212625 (n + 1))

end

end A206483.P10658669114881604658

/-!
# A206484: Numerator of the complexity index B of the path graph on n vertices (n>=2).

The programs for A206484, there is no canonical definition to state claims against.
-/

/-! ## A206484.P9897559927412906794

`A268674(A268668(n)*A268670(2*(n+1)))`
-/

namespace A206484.P9897559927412906794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (A268668 n * A268670 (2 * (n + 1))).toNat

end

end A206484.P9897559927412906794

/-!
# A206485: Denominator of the complexity index B of the path graph on n vertices (n>=2).

The programs for A206485, there is no canonical definition to state claims against.
-/

/-! ## A206485.P5194986871639740894

`A165342(A107868(n)*A107884(n))`
-/

namespace A206485.P5194986871639740894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165342 (A107868 n * A107884 n).toNat

end

end A206485.P5194986871639740894

/-!
# A206487: Number of ordered trees isomorphic (as rooted trees) to the rooted tree having Matula number n.

The programs for A206487, the canonical program `A206487.P3818851937478815670` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A206487 has offset 1).

The definition of A206487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A206487.P3818851937478815670

`a(A252735(n+1))*A008480(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A206487

/-- `a(A252735(n+1))*A008480(n+1)` -/
def P3818851937478815670.Spec : Prop :=
  ∀ n, P3818851937478815670.a n = A206487 (n + 1)

theorem P3818851937478815670.correct : P3818851937478815670.Spec := by
  intro n
  simp only [A206487, Nat.add_sub_cancel]

end A206487

/-! ## A206487.P14512819146474451296

`floor(sqrt(A321649(3*n+4)))*A008480(n+1)`
-/

namespace A206487.P14512819146474451296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A321649 (3 * n + 4)) * A008480 (n + 1)

end

end A206487.P14512819146474451296

namespace A206487

/-- `floor(sqrt(A321649(3*n+4)))*A008480(n+1)` -/
def P14512819146474451296.Spec : Prop :=
  ∀ n, P14512819146474451296.a n = A206487 (n + 1)

end A206487

/-! ## A206487.P15636965168591704637

`A179926(n+1)+A025465(A236405(n))`
-/

namespace A206487.P15636965168591704637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179926 (n + 1) + A025465 (A236405 n).toNat

end

end A206487.P15636965168591704637

namespace A206487

/-- `A179926(n+1)+A025465(A236405(n))` -/
def P15636965168591704637.Spec : Prop :=
  ∀ n, P15636965168591704637.a n = A206487 (n + 1)

end A206487

/-! ## A206487.P7549380482559420410

`A008480(A363487(3*(n+1)))*A008480(n+1)`
-/

namespace A206487.P7549380482559420410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A363487 (3 * (n + 1))).toNat * A008480 (n + 1)

end

end A206487.P7549380482559420410

namespace A206487

/-- `A008480(A363487(3*(n+1)))*A008480(n+1)` -/
def P7549380482559420410.Spec : Prop :=
  ∀ n, P7549380482559420410.a n = A206487 (n + 1)

end A206487

/-! ## A206487.P12333792605207008037

`A008480(A367587(3*(n+1)))*A008480(n+1)`
-/

namespace A206487.P12333792605207008037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A367587 (3 * (n + 1))).toNat * A008480 (n + 1)

end

end A206487.P12333792605207008037

namespace A206487

/-- `A008480(A367587(3*(n+1)))*A008480(n+1)` -/
def P12333792605207008037.Spec : Prop :=
  ∀ n, P12333792605207008037.a n = A206487 (n + 1)

end A206487

/-!
# A206488: The determinant of the distance matrix of the rooted tree having Matula number n.

The programs for A206488, there is no canonical definition to state claims against.
-/

/-! ## A206488.P9867978712855264155

`A085750(A061775(n+1))`
-/

namespace A206488.P9867978712855264155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085750 (A061775 (n + 1)).toNat

end

end A206488.P9867978712855264155

/-! ## A206488.P952494407095134880

`A085750(A196050(n+1)+1)`
-/

namespace A206488.P952494407095134880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085750 (A196050 (n + 1) + 1).toNat

end

end A206488.P952494407095134880

/-! ## A206488.P13837312352558088917

`A085750(A227568(2*(n+2)))%A360622(2*n)`
-/

namespace A206488.P13837312352558088917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085750 (A227568 (2 * (n + 2))).toNat) (A360622 (2 * n))

end

end A206488.P13837312352558088917

/-! ## A206488.P11517854136085427372

`A085750(∑{e}[A085696(n), #])`
-/

namespace A206488.P11517854136085427372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085750 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A206488.P11517854136085427372

/-! ## A206488.P3011579485929372375

`A097806(A066751(n+1))+A085750(A070939(2*n+1))`
-/

namespace A206488.P3011579485929372375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 (A066751 (n + 1)).toNat + A085750 (A070939 (2 * n + 1)).toNat

end

end A206488.P3011579485929372375

/-!
# A206493: Product, over all vertices v of the rooted tree with Matula-Goebel number n, of the number of vertices in the subtree with root v.

The programs for A206493, there is no canonical definition to state claims against.
-/

/-! ## A206493.P6138578029819381038

`A061775(n+1)!/A206494(n+1)`
-/

namespace A206493.P6138578029819381038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A061775 (n + 1)).toNat : ℚ) / (A206494 (n + 1) : ℚ)

end

end A206493.P6138578029819381038

/-! ## A206493.P15732862604054714821

`(Δ[A325544(n)]+1)!/A206494(n+1)`
-/

namespace A206493.P15732862604054714821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325544 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (n + 1) - f1 n + 1).toNat : ℚ) / (A206494 (n + 1) : ℚ)

end

end A206493.P15732862604054714821

/-! ## A206493.P7522575275191822466

`(A196050(n+1)+1)!/A206494(n+1)`
-/

namespace A206493.P7522575275191822466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A196050 (n + 1) + 1).toNat : ℚ) / (A206494 (n + 1) : ℚ)

end

end A206493.P7522575275191822466

/-! ## A206493.P6148200965399261473

`∑{e}[A324922(2*(n+1)), #]!/A206494(n+1)`
-/

namespace A206493.P6148200965399261473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) : ℚ) / (A206494 (n + 1) : ℚ)

end

end A206493.P6148200965399261473

/-! ## A206493.P3602415880560675095

`A196050(A103517(n))!/A206494(n+1)`
-/

namespace A206493.P3602415880560675095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A196050 (A103517 n).toNat).toNat : ℚ) / (A206494 (n + 1) : ℚ)

end

end A206493.P3602415880560675095

/-! ## A206493.P18384431958664643089

`A005496(A196050(n+1))!/A206494(n+1)`
-/

namespace A206493.P18384431958664643089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A005496 (A196050 (n + 1)).toNat).toNat : ℚ) / (A206494 (n + 1) : ℚ)

end

end A206493.P18384431958664643089

/-! ## A206493.P14074222148331423203

`(A001222(A324922(n+1))+1)!/A206494(n+1)`
-/

namespace A206493.P14074222148331423203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001222 (A324922 (n + 1)).toNat + 1).toNat : ℚ) / (A206494 (n + 1) : ℚ)

end

end A206493.P14074222148331423203

/-! ## A206493.P637526635208248518

`A061775(n+1)!/(A206496(n+1)*A206497(n+1))`
-/

namespace A206493.P637526635208248518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A061775 (n + 1)).toNat : ℚ) / (A206496 (n + 1) * A206497 (n + 1) : ℚ)

end

end A206493.P637526635208248518

/-!
# A206494: Number of ways to take apart the rooted tree corresponding to the Matula-Goebel number n by sequentially removing terminal edges.

The programs for A206494, there is no canonical definition to state claims against.
-/

/-! ## A206494.P16476675867726106256

`A206496(n+1)*A206497(n+1)`
-/

namespace A206494.P16476675867726106256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206496 (n + 1) * A206497 (n + 1)

end

end A206494.P16476675867726106256

/-! ## A206494.P9577029888543363246

`A061775(n+1)!/A206493(n+1)`
-/

namespace A206494.P9577029888543363246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A061775 (n + 1)).toNat : ℚ) / (A206493 (n + 1) : ℚ)

end

end A206494.P9577029888543363246

/-! ## A206494.P15583915364933080559

`(A196050(n+1)+1)!/A206493(n+1)`
-/

namespace A206494.P15583915364933080559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A196050 (n + 1) + 1).toNat : ℚ) / (A206493 (n + 1) : ℚ)

end

end A206494.P15583915364933080559

/-! ## A206494.P12074129611818745391

`∑{e}[A324922(2*(n+1)), #]!/A206493(n+1)`
-/

namespace A206494.P12074129611818745391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) : ℚ) / (A206493 (n + 1) : ℚ)

end

end A206494.P12074129611818745391

/-! ## A206494.P6211249571373026127

`A196050(A103517(n))!/A206493(n+1)`
-/

namespace A206494.P6211249571373026127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A196050 (A103517 n).toNat).toNat : ℚ) / (A206493 (n + 1) : ℚ)

end

end A206494.P6211249571373026127

/-! ## A206494.P4139532240520068942

`A005496(A196050(n+1))!/A206493(n+1)`
-/

namespace A206494.P4139532240520068942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A005496 (A196050 (n + 1)).toNat).toNat : ℚ) / (A206493 (n + 1) : ℚ)

end

end A206494.P4139532240520068942

/-! ## A206494.P15566554940533701924

`(A001222(A324922(n+1))+1)!/A206493(n+1)`
-/

namespace A206494.P15566554940533701924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001222 (A324922 (n + 1)).toNat + 1).toNat : ℚ) / (A206493 (n + 1) : ℚ)

end

end A206494.P15566554940533701924

/-!
# A206496: The Connes-Moscovici weight of the rooted tree with Matula-Goebel number n. It is defined as the number of ways to build up the rooted tree from the one-vertex tree by adding successively edges to the existing vertices.

The programs for A206496, there is no canonical definition to state claims against.
-/

/-! ## A206496.P5896330061030402032

`A206494(n+1)/A206497(n+1)`
-/

namespace A206496.P5896330061030402032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206494 (n + 1) : ℚ) / (A206497 (n + 1) : ℚ)

end

end A206496.P5896330061030402032

/-! ## A206496.P534005263574249176

`floor(A061775(n+1)!/A206493(n+1))/A206497(n+1)`
-/

namespace A206496.P534005263574249176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(Nat.factorial (A061775 (n + 1)).toNat : ℚ) / (A206493 (n + 1) : ℚ)⌋ : ℚ) / (A206497 (n + 1) : ℚ)

end

end A206496.P534005263574249176

/-! ## A206496.P2369816609746568089

`floor((A196050(n+1)+1)!/A206493(n+1))/A206497(n+1)`
-/

namespace A206496.P2369816609746568089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(Nat.factorial (A196050 (n + 1) + 1).toNat : ℚ) / (A206493 (n + 1) : ℚ)⌋ : ℚ) / (A206497 (n + 1) : ℚ)

end

end A206496.P2369816609746568089

/-! ## A206496.P16485221075414880854

`A028310(A061775(n+1)!/A206493(n+1))/A206497(n+1)`
-/

namespace A206496.P16485221075414880854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (SequenceMachineLib.roundAway ((Nat.factorial (A061775 (n + 1)).toNat : ℚ) / (A206493 (n + 1) : ℚ))).toNat : ℚ) / (A206497 (n + 1) : ℚ)

end

end A206496.P16485221075414880854

/-! ## A206496.P3621088131452472415

`1/A206497(n+1)*A196050(A103517(n))!/A206493(n+1)`
-/

namespace A206496.P3621088131452472415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A206497 (n + 1) : ℚ) * ((Nat.factorial (A196050 (A103517 n).toNat).toNat : ℚ) / (A206493 (n + 1) : ℚ))

end

end A206496.P3621088131452472415

/-!
# A206497: The symmetry factor of the rooted tree with Matula-Goebel number n.

The programs for A206497, there is no canonical definition to state claims against.
-/

/-! ## A206497.P11243918831018024736

`A206494(n+1)/A206496(n+1)`
-/

namespace A206497.P11243918831018024736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206494 (n + 1) : ℚ) / (A206496 (n + 1) : ℚ)

end

end A206497.P11243918831018024736

/-! ## A206497.P6637656348499490824

`A061775(n+1)!/(A206493(n+1)*A206496(n+1))`
-/

namespace A206497.P6637656348499490824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A061775 (n + 1)).toNat : ℚ) / (A206493 (n + 1) * A206496 (n + 1) : ℚ)

end

end A206497.P6637656348499490824

/-! ## A206497.P13729312726152891218

`floor((A196050(n+1)+1)!/A206493(n+1))/A206496(n+1)`
-/

namespace A206497.P13729312726152891218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(Nat.factorial (A196050 (n + 1) + 1).toNat : ℚ) / (A206493 (n + 1) : ℚ)⌋ : ℚ) / (A206496 (n + 1) : ℚ)

end

end A206497.P13729312726152891218

/-! ## A206497.P13739403729721657449

`A028310(A061775(n+1)!/A206493(n+1))/A206496(n+1)`
-/

namespace A206497.P13739403729721657449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (SequenceMachineLib.roundAway ((Nat.factorial (A061775 (n + 1)).toNat : ℚ) / (A206493 (n + 1) : ℚ))).toNat : ℚ) / (A206496 (n + 1) : ℚ)

end

end A206497.P13739403729721657449

/-! ## A206497.P9750179144449400986

`1/A206496(n+1)*A196050(A103517(n))!/A206493(n+1)`
-/

namespace A206497.P9750179144449400986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A206496 (n + 1) : ℚ) * ((Nat.factorial (A196050 (A103517 n).toNat).toNat : ℚ) / (A206493 (n + 1) : ℚ))

end

end A206497.P9750179144449400986

/-!
# A206498: Number of quasipendant vertices in the rooted tree with Matula-Goebel number n.

The programs for A206498, there is no canonical definition to state claims against.
-/

/-! ## A206498.P8286137530605051557

`A196062(n+1)+and(1, A049084(n+1))`
-/

namespace A206498.P8286137530605051557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196062 (n + 1) + Int.land 1 (A049084 (n + 1))

end

end A206498.P8286137530605051557

/-! ## A206498.P17519719774329739342

`A196062(n+1)+A000035(A049084(n+1))`
-/

namespace A206498.P17519719774329739342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196062 (n + 1) + A000035 (A049084 (n + 1)).toNat

end

end A206498.P17519719774329739342

/-! ## A206498.P1777495082034716419

`A196062(n+1)+A049084(n+1)%A007978(n+1)`
-/

namespace A206498.P1777495082034716419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196062 (n + 1) + Int.tmod (A049084 (n + 1)) (A007978 (n + 1))

end

end A206498.P1777495082034716419

/-! ## A206498.P9961722076811173761

`A196062(n+1)+and(A000720(n+1), A010051(n+1))`
-/

namespace A206498.P9961722076811173761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196062 (n + 1) + Int.land (A000720 (n + 1)) (A010051 (n + 1))

end

end A206498.P9961722076811173761

/-! ## A206498.P12293431465096060797

`A196062(n+1)+and(A003963(n+1), A010051(n+1))`
-/

namespace A206498.P12293431465096060797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196062 (n + 1) + Int.land (A003963 (n + 1)) (A010051 (n + 1))

end

end A206498.P12293431465096060797

/-! ## A206498.P1129317782854709127

`A196062(n+1)+and(A010051(n+1), A026233(n+1))`
-/

namespace A206498.P1129317782854709127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196062 (n + 1) + Int.land (A010051 (n + 1)) (A026233 (n + 1))

end

end A206498.P1129317782854709127

/-! ## A206498.P3208385760726306964

`A196062(n+1)+and(A010051(n+1), A055396(n+1))`
-/

namespace A206498.P3208385760726306964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196062 (n + 1) + Int.land (A010051 (n + 1)) (A055396 (n + 1))

end

end A206498.P3208385760726306964

/-! ## A206498.P18422669118044084334

`A196062(n+1)+and(A010051(n+1), A065770(n+1))`
-/

namespace A206498.P18422669118044084334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196062 (n + 1) + Int.land (A010051 (n + 1)) (A065770 (n + 1))

end

end A206498.P18422669118044084334

/-! ## A206498.P2098286340421595095

`A196062(n+1)+and(A055396(n+1), A080339(n+1))`
-/

namespace A206498.P2098286340421595095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196062 (n + 1) + Int.land (A055396 (n + 1)) (A080339 (n + 1))

end

end A206498.P2098286340421595095

/-! ## A206498.P18149361487244668408

`A196062(n+1)+and(A065770(n+1), A080339(n+1))`
-/

namespace A206498.P18149361487244668408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196062 (n + 1) + Int.land (A065770 (n + 1)) (A080339 (n + 1))

end

end A206498.P18149361487244668408

/-!
# A206499: The sum of the distances between all unordered pairs of branch vertices in the rooted tree with Matula-Goebel number n. A branch vertex is a vertex of degree >=3.

The programs for A206499, there is no canonical definition to state claims against.
-/

/-! ## A206499.P15604030734221959880

`A212619(n+1)+a(A322007(n+2)-1)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A206499.P15604030734221959880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A212619 (n + 1) + a (A322007 (n + 2) - 1).toNat

end

end A206499.P15604030734221959880

/-! ## A206499.P7627261692894146184

`A212619(n+1)+A212619(A322007(n+2))`
-/

namespace A206499.P7627261692894146184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (n + 1) + A212619 (A322007 (n + 2)).toNat

end

end A206499.P7627261692894146184

/-! ## A206499.P362663436470911677

`A212619(n+1)+A025439(A336898(n))`
-/

namespace A206499.P362663436470911677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (n + 1) + A025439 (A336898 n).toNat

end

end A206499.P362663436470911677

/-! ## A206499.P13424357074443974136

`and(A212619(A007948(n+1)), A262024(n+1))`
-/

namespace A206499.P13424357074443974136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A212619 (A007948 (n + 1)).toNat) (A262024 (n + 1))

end

end A206499.P13424357074443974136

/-! ## A206499.P15014138061418982643

`∑{d}[A143052(n), A212619(#)]`
-/

namespace A206499.P15014138061418982643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A212619 d

end

end A206499.P15014138061418982643

/-! ## A206499.P17453039767501322092

`A212619(gcd(A007948(n+1), A143052(n)))`
-/

namespace A206499.P17453039767501322092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (Int.gcd (A007948 (n + 1)) (A143052 n))

end

end A206499.P17453039767501322092

/-! ## A206499.P10685553360584216749

`A212619(n+1)+val(A212624(n+1), 18)`
-/

namespace A206499.P10685553360584216749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (n + 1) + (SequenceMachineLib.valuation (A212624 (n + 1)).toNat 18 : ℤ)

end

end A206499.P10685553360584216749

/-! ## A206499.P6145254360399532043

`∑{d}[A257539(n+1), A212619(#)]`
-/

namespace A206499.P6145254360399532043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A212619 d

end

end A206499.P6145254360399532043

