import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A372700: a(n) = Sum_{j=1..n} Sum_{k=1..n} mu(j*k), where mu is the Moebius function A008683.

The programs for A372700, the canonical program `A372700.P15272800720440225786` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372700 has offset 1).

The definition of A372700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372700.P15272800720440225786

`∑[A008683(n+1)*A112399(n+1)*A040000(n)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A372700

/-- `∑[A008683(n+1)*A112399(n+1)*A040000(n)]` -/
def P15272800720440225786.Spec : Prop :=
  ∀ n, P15272800720440225786.a n = A372700 (n + 1)

theorem P15272800720440225786.correct : P15272800720440225786.Spec := by
  intro n
  simp only [A372700, Nat.add_sub_cancel]

end A372700

/-!
# A372702: Number of compositions of n such that the set of parts is {1,2,3}.

The programs for A372702, there is no canonical definition to state claims against.
-/

/-! ## A372702.P10044519160058375175

`A373118(eq[3, A237451(n+1)])`
-/

namespace A372702.P10044519160058375175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373118 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A372702.P10044519160058375175

/-!
# A372703: Number of partitions of n into distinct parts such that number of parts is a multiples of 4.

The programs for A372703, there is no canonical definition to state claims against.
-/

/-! ## A372703.P7593976917288177892

`∏{e}[A000079(n), A309831(#)]`
-/

namespace A372703.P7593976917288177892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A309831 (Nat.factorization (f1 n).natAbs p)

end

end A372703.P7593976917288177892

/-! ## A372703.P3373797521144757487

`A309831(n)-A010815(A320451(2*n))`
-/

namespace A372703.P3373797521144757487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309831 n - A010815 (A320451 (2 * n)).toNat

end

end A372703.P3373797521144757487

/-! ## A372703.P4020811299739251409

`A309831(n)+A036987(A304714(3*(n+1)))`
-/

namespace A372703.P4020811299739251409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309831 n + A036987 (A304714 (3 * (n + 1))).toNat

end

end A372703.P4020811299739251409

/-! ## A372703.P12879217191986444483

`A309831(n)+A156660(A003359(n+1))`
-/

namespace A372703.P12879217191986444483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309831 n + A156660 (A003359 (n + 1)).toNat

end

end A372703.P12879217191986444483

/-! ## A372703.P10849491687770650496

`A309831(n)+A010815(A357628(3*n+1))`
-/

namespace A372703.P10849491687770650496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309831 n + A010815 (A357628 (3 * n + 1)).toNat

end

end A372703.P10849491687770650496

/-!
# A372705: Number of connected spanning subgraphs of the n-dimensional hypercube graph.

The programs for A372705, there is no canonical definition to state claims against.
-/

/-! ## A372705.P15447446567380142740

`floor(sqrt(2)^(n*2^n)-A377762(n))`
-/

namespace A372705.P15447446567380142740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) ^ (n * 2 ^ n) - (A377762 n : ℝ)⌋

end

end A372705.P15447446567380142740

/-!
# A372706: a(n) = Sum_{k=1..n} mu(n*k), where mu is the Moebius function A008683.

The programs for A372706, the canonical program `A372706.P5906799565459821197` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372706 has offset 1).

The definition of A372706 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A008683((n+1)*(#+1))]` (program `A372706.P5906799565459821197`, by `A372706.P5906799565459821197.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A372706.P5906799565459821197

`∑{#}[n, A008683((n+1)*(#+1))]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A372706

/-- `∑{#}[n, A008683((n+1)*(#+1))]` -/
def P5906799565459821197.Spec : Prop :=
  ∀ n, P5906799565459821197.a n = A372706 (n + 1)

theorem P5906799565459821197.correct : P5906799565459821197.Spec := by
  intro n
  simp only [A372706, Nat.add_sub_cancel]

end A372706

/-! ## A372706.P14028613531913799056

`A008683(n+1)*A112399(n+1)`
-/

namespace A372706.P14028613531913799056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A112399 (n + 1)

end

end A372706.P14028613531913799056

namespace A372706

/-- `A008683(n+1)*A112399(n+1)` -/
def P14028613531913799056.Spec : Prop :=
  ∀ n, P14028613531913799056.a n = A372706 (n + 1)

end A372706

/-! ## A372706.P3895730882034888990

`(A080847(n+1)-2)*A112399(n+1)`
-/

namespace A372706.P3895730882034888990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080847 (n + 1) - 2) * A112399 (n + 1)

end

end A372706.P3895730882034888990

namespace A372706

/-- `(A080847(n+1)-2)*A112399(n+1)` -/
def P3895730882034888990.Spec : Prop :=
  ∀ n, P3895730882034888990.a n = A372706 (n + 1)

end A372706

/-! ## A372706.P3052637034373265108

`(2-A129979(n+1))*A112399(n+1)`
-/

namespace A372706.P3052637034373265108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A129979 (n + 1)) * A112399 (n + 1)

end

end A372706.P3052637034373265108

namespace A372706

/-- `(2-A129979(n+1))*A112399(n+1)` -/
def P3052637034373265108.Spec : Prop :=
  ∀ n, P3052637034373265108.a n = A372706 (n + 1)

end A372706

/-! ## A372706.P9534079078914852687

`A162512(n+1)%2*A112399(n+1)`
-/

namespace A372706.P9534079078914852687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162512 (n + 1)) 2 * A112399 (n + 1)

end

end A372706.P9534079078914852687

namespace A372706

/-- `A162512(n+1)%2*A112399(n+1)` -/
def P9534079078914852687.Spec : Prop :=
  ∀ n, P9534079078914852687.a n = A372706 (n + 1)

end A372706

/-! ## A372706.P3068821457887344494

`A326814(n+1)%2*A112399(n+1)`
-/

namespace A372706.P3068821457887344494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326814 (n + 1)) 2 * A112399 (n + 1)

end

end A372706.P3068821457887344494

namespace A372706

/-- `A326814(n+1)%2*A112399(n+1)` -/
def P3068821457887344494.Spec : Prop :=
  ∀ n, P3068821457887344494.a n = A372706 (n + 1)

end A372706

/-! ## A372706.P17126430116440171077

`(A174725(n+1)-A174726(n+1))*A112399(n+1)`
-/

namespace A372706.P17126430116440171077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A174725 (n + 1) - A174726 (n + 1)) * A112399 (n + 1)

end

end A372706.P17126430116440171077

namespace A372706

/-- `(A174725(n+1)-A174726(n+1))*A112399(n+1)` -/
def P17126430116440171077.Spec : Prop :=
  ∀ n, P17126430116440171077.a n = A372706 (n + 1)

end A372706

/-!
# A372707: Smallest natural number requiring n applications of the map x -> 2^x mod x = A015910(x) to reach 0.

The programs for A372707, there is no canonical definition to state claims against.
-/

/-! ## A372707.P17373491713326882243

`A002487(n)*A080594(A120971(n))`
-/

namespace A372707.P17373491713326882243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n * A080594 (A120971 n).toNat

end

end A372707.P17373491713326882243

/-! ## A372707.P13952092907275222199

`A080594(A120971(n))*A333627(n)`
-/

namespace A372707.P13952092907275222199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080594 (A120971 n).toNat * A333627 n

end

end A372707.P13952092907275222199

/-!
# A372709: a(n) = Sum_{k=1..n} tau(n*k), where tau(n) = number of divisors of n, cf. A000005.

The programs for A372709, the canonical program `A372709.P8939552730713478089` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372709 has offset 1).

The definition of A372709 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000005((n+1)*(#+1))]` (program `A372709.P8939552730713478089`, by `A372709.P8939552730713478089.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A372709.P8939552730713478089

`∑{#}[n, A000005((n+1)*(#+1))]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A372709

/-- `∑{#}[n, A000005((n+1)*(#+1))]` -/
def P8939552730713478089.Spec : Prop :=
  ∀ n, P8939552730713478089.a n = A372709 (n + 1)

theorem P8939552730713478089.correct : P8939552730713478089.Spec := by
  intro n
  simp only [A372709, Nat.add_sub_cancel]

end A372709

/-! ## A372709.P6009578125337867732

`∑{d}[n+1, A008683(#)*A143236((n+1)/#)]`
-/

namespace A372709.P6009578125337867732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A143236 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372709.P6009578125337867732

namespace A372709

/-- `∑{d}[n+1, A008683(#)*A143236((n+1)/#)]` -/
def P6009578125337867732.Spec : Prop :=
  ∀ n, P6009578125337867732.a n = A372709 (n + 1)

end A372709

/-!
# A372710: a(n) = Sum_{k=1..n} sigma(n*k).

The programs for A372710, the canonical program `A372710.P17784849567038664032` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372710 has offset 1).

The definition of A372710 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000203((n+1)*(#+1))]` (program `A372710.P17784849567038664032`, by `A372710.P17784849567038664032.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A372710.P17784849567038664032

`∑{#}[n, A000203((n+1)*(#+1))]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A372710

/-- `∑{#}[n, A000203((n+1)*(#+1))]` -/
def P17784849567038664032.Spec : Prop :=
  ∀ n, P17784849567038664032.a n = A372710 (n + 1)

theorem P17784849567038664032.correct : P17784849567038664032.Spec := by
  intro n
  simp only [A372710, Nat.add_sub_cancel]

end A372710

/-! ## A372710.P15097854518747793882

`∑{d}[n+1, A055615(#)*A143238((n+1)/#)]`
-/

namespace A372710.P15097854518747793882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A143238 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372710.P15097854518747793882

namespace A372710

/-- `∑{d}[n+1, A055615(#)*A143238((n+1)/#)]` -/
def P15097854518747793882.Spec : Prop :=
  ∀ n, P15097854518747793882.a n = A372710 (n + 1)

end A372710

/-!
# A372711: Numbers of minimal total dominating sets in the n-Lucas cube graph.

The programs for A372711, there is no canonical definition to state claims against.
-/

/-! ## A372711.P4843367729118478402

`record[Δ[A319193(A000085(n))]]`
-/

namespace A372711.P4843367729118478402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319193 (A000085 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372711.P4843367729118478402

/-! ## A372711.P4704168653888175124

`A087156(n+1)*A317491(A000111(n))`
-/

namespace A372711.P4704168653888175124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) * A317491 (A000111 n).toNat

end

end A372711.P4704168653888175124

/-!
# A372712: Numbers of minimal total dominating sets in the n-trapezohedral graph.

The programs for A372712, the canonical program `A372712.P8568564287462488964` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372712 has offset 1).

The definition of A372712 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372712.P8568564287462488964

`(A001608(n+1)+n+1)²`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A372712

/-- `(A001608(n+1)+n+1)²` -/
def P8568564287462488964.Spec : Prop :=
  ∀ n, P8568564287462488964.a n = A372712 (n + 1)

theorem P8568564287462488964.correct : P8568564287462488964.Spec := by
  intro n
  simp only [A372712, Nat.add_sub_cancel]

end A372712

/-! ## A372712.P3148887297849627967

`(Δ[A193744(n)]+n+1)²`
-/

namespace A372712.P3148887297849627967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + (n + 1 : ℤ)) ^ 2

end

end A372712.P3148887297849627967

namespace A372712

/-- `(Δ[A193744(n)]+n+1)²` -/
def P3148887297849627967.Spec : Prop :=
  ∀ n, P3148887297849627967.a n = A372712 (n + 1)

end A372712

/-! ## A372712.P1550779713228816120

`A000290(Δ[A193744(n)]+n+1)`
-/

namespace A372712.P1550779713228816120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (f1 (n + 1) - f1 n + (n + 1 : ℤ)).toNat

end

end A372712.P1550779713228816120

namespace A372712

/-- `A000290(Δ[A193744(n)]+n+1)` -/
def P1550779713228816120.Spec : Prop :=
  ∀ n, P1550779713228816120.a n = A372712 (n + 1)

end A372712

/-! ## A372712.P5521502898587200833

`A000290(A001608(n+1)+n+1)`
-/

namespace A372712.P5521502898587200833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A001608 (n + 1) + (n + 1 : ℤ)).toNat

end

end A372712.P5521502898587200833

namespace A372712

/-- `A000290(A001608(n+1)+n+1)` -/
def P5521502898587200833.Spec : Prop :=
  ∀ n, P5521502898587200833.a n = A372712 (n + 1)

end A372712

/-!
# A372713: Number of divisors of 3n; a(n) = tau(3*n) = A000005(3*n).

The programs for A372713, the canonical program `A372713.P15261460817430982456` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372713 has offset 1).

The definition of A372713 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(3*(n+1))` (program `A372713.P15261460817430982456`, by `A372713.P15261460817430982456.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A372713.P15261460817430982456

`A000005(3*(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A372713

/-- `A000005(3*(n+1))` -/
def P15261460817430982456.Spec : Prop :=
  ∀ n, P15261460817430982456.a n = A372713 (n + 1)

theorem P15261460817430982456.correct : P15261460817430982456.Spec := by
  intro n
  simp only [A372713, Nat.add_sub_cancel]

end A372713

/-! ## A372713.P4500031569239129863

`∏{e}[3*(n+1), #+1]`
-/

namespace A372713.P4500031569239129863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A372713.P4500031569239129863

namespace A372713

/-- `∏{e}[3*(n+1), #+1]` -/
def P4500031569239129863.Spec : Prop :=
  ∀ n, (P4500031569239129863.a n : ℤ) = A372713 (n + 1)

end A372713

/-! ## A372713.P12770443438035185774

`∑{d}[n+1, (#²+1)%3]`
-/

namespace A372713.P12770443438035185774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ 2 + 1) % 3

end

end A372713.P12770443438035185774

namespace A372713

/-- `∑{d}[n+1, (#²+1)%3]` -/
def P12770443438035185774.Spec : Prop :=
  ∀ n, (P12770443438035185774.a n : ℤ) = A372713 (n + 1)

end A372713

/-! ## A372713.P3554338476434156445

`∑{d}[12*(n+1), (-1)^#]`
-/

namespace A372713.P3554338476434156445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-1) ^ d

end

end A372713.P3554338476434156445

namespace A372713

/-- `∑{d}[12*(n+1), (-1)^#]` -/
def P3554338476434156445.Spec : Prop :=
  ∀ n, P3554338476434156445.a n = A372713 (n + 1)

end A372713

/-! ## A372713.P11927963649992147278

`2-A378216(3*(n+1))`
-/

namespace A372713.P11927963649992147278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A378216 (3 * (n + 1))

end

end A372713.P11927963649992147278

namespace A372713

/-- `2-A378216(3*(n+1))` -/
def P11927963649992147278.Spec : Prop :=
  ∀ n, P11927963649992147278.a n = A372713 (n + 1)

theorem P11927963649992147278.correct : P11927963649992147278.Spec := by
  intro n
  simp only [A372713, Nat.add_sub_cancel, A372713.P11927963649992147278.a, A372713.P15261460817430982456.a, A000005, A000005.P16091521709108585461.a, A378216, A378216.P4619166357507459087.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A372713

/-! ## A372713.P14412638969404530998

`A000005(n+1)+A035191(n+1)`
-/

namespace A372713.P14412638969404530998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A035191 (n + 1)

end

end A372713.P14412638969404530998

namespace A372713

/-- `A000005(n+1)+A035191(n+1)` -/
def P14412638969404530998.Spec : Prop :=
  ∀ n, P14412638969404530998.a n = A372713 (n + 1)

end A372713

/-! ## A372713.P16129262132124188965

`A326394(n+1)+A082909(n+1)`
-/

namespace A372713.P16129262132124188965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326394 (n + 1) + A082909 (n + 1)

end

end A372713.P16129262132124188965

namespace A372713

/-- `A326394(n+1)+A082909(n+1)` -/
def P16129262132124188965.Spec : Prop :=
  ∀ n, P16129262132124188965.a n = A372713 (n + 1)

end A372713

/-! ## A372713.P18326172255267447774

`A372789(n+1)-A035191(n+1)`
-/

namespace A372713.P18326172255267447774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372789 (n + 1) - A035191 (n + 1)

end

end A372713.P18326172255267447774

namespace A372713

/-- `A372789(n+1)-A035191(n+1)` -/
def P18326172255267447774.Spec : Prop :=
  ∀ n, P18326172255267447774.a n = A372713 (n + 1)

end A372713

/-! ## A372713.P11674925331485586183

`A035191(n+1)*A366922(n+1)`
-/

namespace A372713.P11674925331485586183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035191 (n + 1) * A366922 (n + 1)

end

end A372713.P11674925331485586183

namespace A372713

/-- `A035191(n+1)*A366922(n+1)` -/
def P11674925331485586183.Spec : Prop :=
  ∀ n, P11674925331485586183.a n = A372713 (n + 1)

end A372713

/-! ## A372713.P9061884384355164967

`A320111(6*(n+1))`
-/

namespace A372713.P9061884384355164967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (6 * (n + 1))

end

end A372713.P9061884384355164967

namespace A372713

/-- `A320111(6*(n+1))` -/
def P9061884384355164967.Spec : Prop :=
  ∀ n, P9061884384355164967.a n = A372713 (n + 1)

end A372713

/-! ## A372713.P11464816768557552908

`sqrt(A035116(3*(n+1)))`
-/

namespace A372713.P11464816768557552908
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A035116 (3 * (n + 1)) : ℝ)

end

end A372713.P11464816768557552908

namespace A372713

/-- `sqrt(A035116(3*(n+1)))` -/
def P11464816768557552908.Spec : Prop :=
  ∀ n, P11464816768557552908.a n = (A372713 (n + 1) : ℝ)

end A372713

/-! ## A372713.P12493432008053193909

`A032741(3*(n+1))+1`
-/

namespace A372713.P12493432008053193909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (3 * (n + 1)) + 1

end

end A372713.P12493432008053193909

namespace A372713

/-- `A032741(3*(n+1))+1` -/
def P12493432008053193909.Spec : Prop :=
  ∀ n, P12493432008053193909.a n = A372713 (n + 1)

end A372713

/-! ## A372713.P11402697325599671166

`A070824(3*(n+1))+2`
-/

namespace A372713.P11402697325599671166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (3 * (n + 1)) + 2

end

end A372713.P11402697325599671166

namespace A372713

/-- `A070824(3*(n+1))+2` -/
def P11402697325599671166.Spec : Prop :=
  ∀ n, P11402697325599671166.a n = A372713 (n + 1)

end A372713

/-! ## A372713.P3779096431677121184

`A212356(3*(n+1))-1`
-/

namespace A372713.P3779096431677121184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212356 (3 * (n + 1)) - 1

end

end A372713.P3779096431677121184

namespace A372713

/-- `A212356(3*(n+1))-1` -/
def P3779096431677121184.Spec : Prop :=
  ∀ n, P3779096431677121184.a n = A372713 (n + 1)

end A372713

/-! ## A372713.P16037814370041191709

`A334954(3*(n+1))-1`
-/

namespace A372713.P16037814370041191709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (3 * (n + 1)) - 1

end

end A372713.P16037814370041191709

namespace A372713

/-- `A334954(3*(n+1))-1` -/
def P16037814370041191709.Spec : Prop :=
  ∀ n, P16037814370041191709.a n = A372713 (n + 1)

end A372713

/-! ## A372713.P7607098202387995815

`A062011(3*(n+1))/2`
-/

namespace A372713.P7607098202387995815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062011 (3 * (n + 1)) : ℚ) / 2

end

end A372713.P7607098202387995815

namespace A372713

/-- `A062011(3*(n+1))/2` -/
def P7607098202387995815.Spec : Prop :=
  ∀ n, P7607098202387995815.a n = (A372713 (n + 1) : ℚ)

theorem P7607098202387995815.correct : P7607098202387995815.Spec := by
  intro n
  simp only [A372713, Nat.add_sub_cancel, A372713.P7607098202387995815.a, A372713.P15261460817430982456.a, A000005, A000005.P16091521709108585461.a, A062011, A062011.P17525320077853469406.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A372713

/-! ## A372713.P5839342039042337868

`A131089(3*(n+1))/2`
-/

namespace A372713.P5839342039042337868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131089 (3 * (n + 1)) : ℚ) / 2

end

end A372713.P5839342039042337868

namespace A372713

/-- `A131089(3*(n+1))/2` -/
def P5839342039042337868.Spec : Prop :=
  ∀ n, P5839342039042337868.a n = (A372713 (n + 1) : ℚ)

end A372713

/-! ## A372713.P2785346817454765311

`A099777(A061898(n+1))`
-/

namespace A372713.P2785346817454765311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (A061898 (n + 1)).toNat

end

end A372713.P2785346817454765311

namespace A372713

/-- `A099777(A061898(n+1))` -/
def P2785346817454765311.Spec : Prop :=
  ∀ n, P2785346817454765311.a n = A372713 (n + 1)

end A372713

/-! ## A372713.P10821854110534341415

`A099777(A064614(n+1))`
-/

namespace A372713.P10821854110534341415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (A064614 (n + 1)).toNat

end

end A372713.P10821854110534341415

namespace A372713

/-- `A099777(A064614(n+1))` -/
def P10821854110534341415.Spec : Prop :=
  ∀ n, P10821854110534341415.a n = A372713 (n + 1)

end A372713

/-! ## A372713.P11594846235031311979

`A099777(A072027(n+1))`
-/

namespace A372713.P11594846235031311979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (A072027 (n + 1)).toNat

end

end A372713.P11594846235031311979

namespace A372713

/-- `A099777(A072027(n+1))` -/
def P11594846235031311979.Spec : Prop :=
  ∀ n, P11594846235031311979.a n = A372713 (n + 1)

end A372713

/-!
# A372714: a(n) = tau(3*n-1) = A000005(3*n-1).

The programs for A372714, the canonical program `A372714.P12117670402611410470` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372714 has offset 1).

The definition of A372714 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(3*(n+1)-1)` (program `A372714.P12117670402611410470`, by `A372714.P12117670402611410470.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A372714.P12117670402611410470

`A000005(3*(n+1)-1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A372714

/-- `A000005(3*(n+1)-1)` -/
def P12117670402611410470.Spec : Prop :=
  ∀ n, P12117670402611410470.a n = A372714 (n + 1)

theorem P12117670402611410470.correct : P12117670402611410470.Spec := by
  intro n
  simp only [A372714, Nat.add_sub_cancel]

end A372714

/-! ## A372714.P3451838340126846283

`∏{e}[2+3*n, #+1]`
-/

namespace A372714.P3451838340126846283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + 3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A372714.P3451838340126846283

namespace A372714

/-- `∏{e}[2+3*n, #+1]` -/
def P3451838340126846283.Spec : Prop :=
  ∀ n, (P3451838340126846283.a n : ℤ) = A372714 (n + 1)

end A372714

/-! ## A372714.P14677258977703990064

`∑{d}[3*n+2, C(#, #)]`
-/

namespace A372714.P14677258977703990064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose d d

end

end A372714.P14677258977703990064

namespace A372714

/-- `∑{d}[3*n+2, C(#, #)]` -/
def P14677258977703990064.Spec : Prop :=
  ∀ n, (P14677258977703990064.a n : ℤ) = A372714 (n + 1)

end A372714

/-! ## A372714.P696387564227807465

`∑{d}[2*n+n+2, gcd(3, #)]`
-/

namespace A372714.P696387564227807465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd 3 d

end

end A372714.P696387564227807465

namespace A372714

/-- `∑{d}[2*n+n+2, gcd(3, #)]` -/
def P696387564227807465.Spec : Prop :=
  ∀ n, (P696387564227807465.a n : ℤ) = A372714 (n + 1)

end A372714

/-! ## A372714.P5312069077202244205

`∑{d}[2*n+n+2, ceil(1/#)]`
-/

namespace A372714.P5312069077202244205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉

end

end A372714.P5312069077202244205

namespace A372714

/-- `∑{d}[2*n+n+2, ceil(1/#)]` -/
def P5312069077202244205.Spec : Prop :=
  ∀ n, P5312069077202244205.a n = A372714 (n + 1)

end A372714

/-! ## A372714.P16898337401697657716

`2^∑{e}[2*n+n+2, log2(#+1)]`
-/

namespace A372714.P16898337401697657716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (n + 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p + 1 : ℝ))

end

end A372714.P16898337401697657716

namespace A372714

/-- `2^∑{e}[2*n+n+2, log2(#+1)]` -/
def P16898337401697657716.Spec : Prop :=
  ∀ n, P16898337401697657716.a n = (A372714 (n + 1) : ℝ)

end A372714

/-! ## A372714.P12731670537212253498

`2*A359211(n+1)`
-/

namespace A372714.P12731670537212253498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A359211 (n + 1)

end

end A372714.P12731670537212253498

namespace A372714

/-- `2*A359211(n+1)` -/
def P12731670537212253498.Spec : Prop :=
  ∀ n, P12731670537212253498.a n = A372714 (n + 1)

end A372714

/-! ## A372714.P15486224643414869652

`A004277(A359211(n+1))`
-/

namespace A372714.P15486224643414869652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A359211 (n + 1)).toNat

end

end A372714.P15486224643414869652

namespace A372714

/-- `A004277(A359211(n+1))` -/
def P15486224643414869652.Spec : Prop :=
  ∀ n, P15486224643414869652.a n = A372714 (n + 1)

end A372714

/-! ## A372714.P899904411698101551

`A000005(A017233(n))/2`
-/

namespace A372714.P899904411698101551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A017233 n).toNat : ℚ) / 2

end

end A372714.P899904411698101551

namespace A372714

/-- `A000005(A017233(n))/2` -/
def P899904411698101551.Spec : Prop :=
  ∀ n, P899904411698101551.a n = (A372714 (n + 1) : ℚ)

end A372714

/-! ## A372714.P12065678744756120856

`A320111(A166304(n))`
-/

namespace A372714.P12065678744756120856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A166304 n).toNat

end

end A372714.P12065678744756120856

namespace A372714

/-- `A320111(A166304(n))` -/
def P12065678744756120856.Spec : Prop :=
  ∀ n, P12065678744756120856.a n = A372714 (n + 1)

end A372714

/-! ## A372714.P16379340203110614915

`A320111(A189320(n+2))`
-/

namespace A372714.P16379340203110614915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A189320 (n + 2)).toNat

end

end A372714.P16379340203110614915

namespace A372714

/-- `A320111(A189320(n+2))` -/
def P16379340203110614915.Spec : Prop :=
  ∀ n, P16379340203110614915.a n = A372714 (n + 1)

end A372714

/-! ## A372714.P6508595021823112913

`A320111(A047235(2*(n+1)))`
-/

namespace A372714.P6508595021823112913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A047235 (2 * (n + 1))).toNat

end

end A372714.P6508595021823112913

namespace A372714

/-- `A320111(A047235(2*(n+1)))` -/
def P6508595021823112913.Spec : Prop :=
  ∀ n, P6508595021823112913.a n = A372714 (n + 1)

end A372714

/-! ## A372714.P4588090263015560705

`A035191(3*n+2)`
-/

namespace A372714.P4588090263015560705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035191 (3 * n + 2)

end

end A372714.P4588090263015560705

namespace A372714

/-- `A035191(3*n+2)` -/
def P4588090263015560705.Spec : Prop :=
  ∀ n, P4588090263015560705.a n = A372714 (n + 1)

end A372714

/-! ## A372714.P11277281579692361538

`A161841(3*n+2)`
-/

namespace A372714.P11277281579692361538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161841 (3 * n + 2)

end

end A372714.P11277281579692361538

namespace A372714

/-- `A161841(3*n+2)` -/
def P11277281579692361538.Spec : Prop :=
  ∀ n, P11277281579692361538.a n = A372714 (n + 1)

end A372714

/-! ## A372714.P12221999053249239101

`A328484(3*n+2)`
-/

namespace A372714.P12221999053249239101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328484 (3 * n + 2)

end

end A372714.P12221999053249239101

namespace A372714

/-- `A328484(3*n+2)` -/
def P12221999053249239101.Spec : Prop :=
  ∀ n, P12221999053249239101.a n = A372714 (n + 1)

end A372714

/-! ## A372714.P4540710565457074930

`A054584(A185727(2*n+1))/2`
-/

namespace A372714.P4540710565457074930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054584 (A185727 (2 * n + 1)).toNat : ℚ) / 2

end

end A372714.P4540710565457074930

namespace A372714

/-- `A054584(A185727(2*n+1))/2` -/
def P4540710565457074930.Spec : Prop :=
  ∀ n, P4540710565457074930.a n = (A372714 (n + 1) : ℚ)

end A372714

/-! ## A372714.P17122597867394687253

`A069157(A016957(n))`
-/

namespace A372714.P17122597867394687253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A016957 n).toNat

end

end A372714.P17122597867394687253

namespace A372714

/-- `A069157(A016957(n))` -/
def P17122597867394687253.Spec : Prop :=
  ∀ n, P17122597867394687253.a n = A372714 (n + 1)

end A372714

/-! ## A372714.P8396889966958889812

`A069157(A016933(n)+2)`
-/

namespace A372714.P8396889966958889812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A016933 n + 2).toNat

end

end A372714.P8396889966958889812

namespace A372714

/-- `A069157(A016933(n)+2)` -/
def P8396889966958889812.Spec : Prop :=
  ∀ n, P8396889966958889812.a n = A372714 (n + 1)

end A372714

/-! ## A372714.P231881909578390357

`filter[A183063(3*n+1), A022932(#)]`
-/

namespace A372714.P231881909578390357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A372714.P231881909578390357

namespace A372714

/-- `filter[A183063(3*n+1), A022932(#)]` -/
def P231881909578390357.Spec : Prop :=
  ∀ n, P231881909578390357.a n = A372714 (n + 1)

end A372714

/-! ## A372714.P11736517481864451101

`filter[A183063(3*n+1), A043545(#)]`
-/

namespace A372714.P11736517481864451101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A372714.P11736517481864451101

namespace A372714

/-- `filter[A183063(3*n+1), A043545(#)]` -/
def P11736517481864451101.Spec : Prop :=
  ∀ n, P11736517481864451101.a n = A372714 (n + 1)

end A372714

/-!
# A372715: a(n) = tau(3*n-2) = A000005(3*n-2).

The programs for A372715, the canonical program `A372715.P12208428737339877040` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372715 has offset 1).

The definition of A372715 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(3*n+1)` (program `A372715.P12208428737339877040`, by `A372715.P12208428737339877040.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A372715.P12208428737339877040

`A000005(3*n+1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A372715

/-- `A000005(3*n+1)` -/
def P12208428737339877040.Spec : Prop :=
  ∀ n, P12208428737339877040.a n = A372715 (n + 1)

theorem P12208428737339877040.correct : P12208428737339877040.Spec := by
  intro n
  simp only [A372715, Nat.add_sub_cancel]

end A372715

/-! ## A372715.P105222306517004428

`A000005(3*(n+1)-2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372715.P105222306517004428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * (n + 1) - 2)

end

end A372715.P105222306517004428

namespace A372715

/-- `A000005(3*(n+1)-2)` -/
def P105222306517004428.Spec : Prop :=
  ∀ n, P105222306517004428.a n = A372715 (n + 1)

end A372715

/-! ## A372715.P15716592019210421431

`∏{e}[1+3*n, #+1]`
-/

namespace A372715.P15716592019210421431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A372715.P15716592019210421431

namespace A372715

/-- `∏{e}[1+3*n, #+1]` -/
def P15716592019210421431.Spec : Prop :=
  ∀ n, (P15716592019210421431.a n : ℤ) = A372715 (n + 1)

end A372715

/-! ## A372715.P7784187866161037991

`∑{d}[1+n*3, gcd(n, #)]`
-/

namespace A372715.P7784187866161037991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n * 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d

end

end A372715.P7784187866161037991

namespace A372715

/-- `∑{d}[1+n*3, gcd(n, #)]` -/
def P7784187866161037991.Spec : Prop :=
  ∀ n, (P7784187866161037991.a n : ℤ) = A372715 (n + 1)

end A372715

/-! ## A372715.P10184921029363977067

`∑{d}[2*n+1+n, ceil(1/#)]`
-/

namespace A372715.P10184921029363977067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉

end

end A372715.P10184921029363977067

namespace A372715

/-- `∑{d}[2*n+1+n, ceil(1/#)]` -/
def P10184921029363977067.Spec : Prop :=
  ∀ n, P10184921029363977067.a n = A372715 (n + 1)

end A372715

/-! ## A372715.P8949615893609617203

`A359239(n+1)+A359212(n+1)`
-/

namespace A372715.P8949615893609617203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359239 (n + 1) + A359212 (n + 1)

end

end A372715.P8949615893609617203

namespace A372715

/-- `A359239(n+1)+A359212(n+1)` -/
def P8949615893609617203.Spec : Prop :=
  ∀ n, P8949615893609617203.a n = A372715 (n + 1)

end A372715

/-! ## A372715.P7940071626052185632

`A320111(A166138(n))`
-/

namespace A372715.P7940071626052185632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A166138 n).toNat

end

end A372715.P7940071626052185632

namespace A372715

/-- `A320111(A166138(n))` -/
def P7940071626052185632.Spec : Prop :=
  ∀ n, P7940071626052185632.a n = A372715 (n + 1)

end A372715

/-! ## A372715.P4706396763035971015

`A320111(A047235(2*n+1))`
-/

namespace A372715.P4706396763035971015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A047235 (2 * n + 1)).toNat

end

end A372715.P4706396763035971015

namespace A372715

/-- `A320111(A047235(2*n+1))` -/
def P4706396763035971015.Spec : Prop :=
  ∀ n, P4706396763035971015.a n = A372715 (n + 1)

end A372715

/-! ## A372715.P11678283805546135595

`A320111(A166304(2*n)/2)`
-/

namespace A372715.P11678283805546135595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (SequenceMachineLib.roundAway ((A166304 (2 * n) : ℚ) / 2)).toNat

end

end A372715.P11678283805546135595

namespace A372715

/-- `A320111(A166304(2*n)/2)` -/
def P11678283805546135595.Spec : Prop :=
  ∀ n, P11678283805546135595.a n = A372715 (n + 1)

end A372715

/-! ## A372715.P13693032579111756917

`A320111(A016825(n)+2*n)`
-/

namespace A372715.P13693032579111756917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A016825 n + (2 * n : ℤ)).toNat

end

end A372715.P13693032579111756917

namespace A372715

/-- `A320111(A016825(n)+2*n)` -/
def P13693032579111756917.Spec : Prop :=
  ∀ n, P13693032579111756917.a n = A372715 (n + 1)

end A372715

/-! ## A372715.P10795226985167011265

`A035191(3*n+1)`
-/

namespace A372715.P10795226985167011265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035191 (3 * n + 1)

end

end A372715.P10795226985167011265

namespace A372715

/-- `A035191(3*n+1)` -/
def P10795226985167011265.Spec : Prop :=
  ∀ n, P10795226985167011265.a n = A372715 (n + 1)

end A372715

/-! ## A372715.P15783621818455201078

`A328484(3*n+1)`
-/

namespace A372715.P15783621818455201078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328484 (3 * n + 1)

end

end A372715.P15783621818455201078

namespace A372715

/-- `A328484(3*n+1)` -/
def P15783621818455201078.Spec : Prop :=
  ∀ n, P15783621818455201078.a n = A372715 (n + 1)

end A372715

/-! ## A372715.P15263960182176515421

`A320111(A249811(2*(2*n+1)))`
-/

namespace A372715.P15263960182176515421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A249811 (2 * (2 * n + 1))).toNat

end

end A372715.P15263960182176515421

namespace A372715

/-- `A320111(A249811(2*(2*n+1)))` -/
def P15263960182176515421.Spec : Prop :=
  ∀ n, P15263960182176515421.a n = A372715 (n + 1)

end A372715

/-! ## A372715.P7431718971519332219

`A277692(6*n+3)`
-/

namespace A372715.P7431718971519332219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (6 * n + 3)

end

end A372715.P7431718971519332219

namespace A372715

/-- `A277692(6*n+3)` -/
def P7431718971519332219.Spec : Prop :=
  ∀ n, P7431718971519332219.a n = A372715 (n + 1)

end A372715

/-! ## A372715.P7004345556165914818

`A069157(A016933(n))`
-/

namespace A372715.P7004345556165914818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A016933 n).toNat

end

end A372715.P7004345556165914818

namespace A372715

/-- `A069157(A016933(n))` -/
def P7004345556165914818.Spec : Prop :=
  ∀ n, P7004345556165914818.a n = A372715 (n + 1)

end A372715

/-! ## A372715.P16838624377379964639

`A069157(A016957(n)-2)`
-/

namespace A372715.P16838624377379964639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A016957 n - 2).toNat

end

end A372715.P16838624377379964639

namespace A372715

/-- `A069157(A016957(n)-2)` -/
def P16838624377379964639.Spec : Prop :=
  ∀ n, P16838624377379964639.a n = A372715 (n + 1)

end A372715

/-! ## A372715.P11451404373038413264

`A069157(A016957(2*n)/2)`
-/

namespace A372715.P11451404373038413264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (SequenceMachineLib.roundAway ((A016957 (2 * n) : ℚ) / 2)).toNat

end

end A372715.P11451404373038413264

namespace A372715

/-- `A069157(A016957(2*n)/2)` -/
def P11451404373038413264.Spec : Prop :=
  ∀ n, P11451404373038413264.a n = A372715 (n + 1)

end A372715

/-! ## A372715.P1568669472374567114

`A183063(A016825(n)+2*n)`
-/

namespace A372715.P1568669472374567114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A016825 n + (2 * n : ℤ)).toNat

end

end A372715.P1568669472374567114

namespace A372715

/-- `A183063(A016825(n)+2*n)` -/
def P1568669472374567114.Spec : Prop :=
  ∀ n, P1568669472374567114.a n = A372715 (n + 1)

end A372715

/-! ## A372715.P15599222795215270561

`A099751(A017569(n))`
-/

namespace A372715.P15599222795215270561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099751 (A017569 n).toNat

end

end A372715.P15599222795215270561

namespace A372715

/-- `A099751(A017569(n))` -/
def P15599222795215270561.Spec : Prop :=
  ∀ n, P15599222795215270561.a n = A372715 (n + 1)

end A372715

/-! ## A372715.P11347152773309902519

`A326933(3*n)+1`
-/

namespace A372715.P11347152773309902519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326933 (3 * n) + 1

end

end A372715.P11347152773309902519

namespace A372715

/-- `A326933(3*n)+1` -/
def P11347152773309902519.Spec : Prop :=
  ∀ n, P11347152773309902519.a n = A372715 (n + 1)

end A372715

/-!
# A372716: a(n) = A372723(2*n, n).

The programs for A372716, the canonical program `A372716.P7678161917217464801` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372716 has offset 0).

The definition of A372716 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372723, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A372716.P7678161917217464801

`A372723(C(2*n+1, 2)+n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A372716

/-- `A372723(C(2*n+1, 2)+n)` -/
def P7678161917217464801.Spec : Prop :=
  ∀ n, P7678161917217464801.a n = A372716 n

theorem P7678161917217464801.correct : P7678161917217464801.Spec := by
  intro n
  simp only [A372716]

end A372716

/-! ## A372716.P16190773555419249011

`A372723(∑[4*n])`
-/

namespace A372716.P16190773555419249011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372723 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A372716.P16190773555419249011

namespace A372716

/-- `A372723(∑[4*n])` -/
def P16190773555419249011.Spec : Prop :=
  ∀ n, P16190773555419249011.a n = A372716 n

end A372716

/-! ## A372716.P4166107494165605218

`A000984(n)*A033815(n)`
-/

namespace A372716.P4166107494165605218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A033815 n

end

end A372716.P4166107494165605218

namespace A372716

/-- `A000984(n)*A033815(n)` -/
def P4166107494165605218.Spec : Prop :=
  ∀ n, P4166107494165605218.a n = A372716 n

end A372716

/-! ## A372716.P5906956873273214098

`A001405(2*n)*A033815(n)`
-/

namespace A372716.P5906956873273214098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * A033815 n

end

end A372716.P5906956873273214098

namespace A372716

/-- `A001405(2*n)*A033815(n)` -/
def P5906956873273214098.Spec : Prop :=
  ∀ n, P5906956873273214098.a n = A372716 n

end A372716

/-! ## A372716.P248947966592971883

`A000984(n)*A161131(2*n)`
-/

namespace A372716.P248947966592971883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A161131 (2 * n)

end

end A372716.P248947966592971883

namespace A372716

/-- `A000984(n)*A161131(2*n)` -/
def P248947966592971883.Spec : Prop :=
  ∀ n, P248947966592971883.a n = A372716 n

end A372716

/-!
# A372717: Triangle read by rows: If k is prime then T(n, k) is the exponent of the highest power of k that divides n. T(0, 0) = T(1, 1) = 1. In all other cases T(n, k) = 0.

The programs for A372717, there is no canonical definition to state claims against.
-/

/-! ## A372717.P12112320270346054859

`A048932(n+1)%A375735(n+1)`
-/

namespace A372717.P12112320270346054859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048932 (n + 1)) (A375735 (n + 1))

end

end A372717.P12112320270346054859

/-! ## A372717.P4728180161578087302

`and(A000108(A363945(3*n+4)), A363945(n))`
-/

namespace A372717.P4728180161578087302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000108 (A363945 (3 * n + 4)).toNat) (A363945 n)

end

end A372717.P4728180161578087302

/-! ## A372717.P2379810968444965271

`and(∑[A087890(2*(n+1))], A103919(n))`
-/

namespace A372717.P2379810968444965271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087890 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A103919 n)

end

end A372717.P2379810968444965271

/-! ## A372717.P18015049627370099793

`and(A107110(n), A305800(A216604(n)))`
-/

namespace A372717.P18015049627370099793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107110 n) (A305800 (A216604 n).toNat)

end

end A372717.P18015049627370099793

/-! ## A372717.P615407354935778631

`A168532(A168528(n+1)+A168523(n))`
-/

namespace A372717.P615407354935778631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168532 (A168528 (n + 1) + A168523 n).toNat

end

end A372717.P615407354935778631

/-!
# A372718: Triangular numbers that are 2 mod 4, halved.

The programs for A372718, the canonical program `A372718.P4030728011392535366` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372718 has offset 1).

The definition of A372718 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372718.P4030728011392535366

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=3, a(1)=5, a(2)=33, a(3)=39, a(4)=95`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A372718

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P4030728011392535366.Spec : Prop :=
  ∀ n, P4030728011392535366.a n = A372718 (n + 1)

theorem P4030728011392535366.correct : P4030728011392535366.Spec := by
  intro n
  simp only [A372718, Nat.add_sub_cancel]

end A372718

/-! ## A372718.P10946222407121010965

`A372070(n+1)/2`
-/

namespace A372718.P10946222407121010965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372070 (n + 1) : ℚ) / 2

end

end A372718.P10946222407121010965

namespace A372718

/-- `A372070(n+1)/2` -/
def P10946222407121010965.Spec : Prop :=
  ∀ n, P10946222407121010965.a n = (A372718 (n + 1) : ℚ)

end A372718

/-! ## A372718.P18442182943457085376

`A000217(A047457(n+1))/2`
-/

namespace A372718.P18442182943457085376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A047457 (n + 1)).toNat : ℚ) / 2

end

end A372718.P18442182943457085376

namespace A372718

/-- `A000217(A047457(n+1))/2` -/
def P18442182943457085376.Spec : Prop :=
  ∀ n, P18442182943457085376.a n = (A372718 (n + 1) : ℚ)

end A372718

/-! ## A372718.P8935828045008737519

`2*∑[n*gcd(7, n%2)]+3`
-/

namespace A372718.P8935828045008737519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 7 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 3

end

end A372718.P8935828045008737519

namespace A372718

/-- `2*∑[n*gcd(7, n%2)]+3` -/
def P8935828045008737519.Spec : Prop :=
  ∀ n, (P8935828045008737519.a n : ℤ) = A372718 (n + 1)

end A372718

/-! ## A372718.P4063488888370474240

`(7+6*(-1)^n)*n+a(n-1)+n` with `a(0)=3`
-/

namespace A372718.P4063488888370474240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (7 + 6 * (-1) ^ n) * (n : ℤ) + (a (n - 1) + (n : ℤ))

end

end A372718.P4063488888370474240

namespace A372718

/-- `(7+6*(-1)^n)*n+a(n-1)+n` -/
def P4063488888370474240.Spec : Prop :=
  ∀ n, P4063488888370474240.a n = A372718 (n + 1)

end A372718

/-! ## A372718.P11793884637082084922

`2*A274979(n+1)+3`
-/

namespace A372718.P11793884637082084922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A274979 (n + 1) + 3

end

end A372718.P11793884637082084922

namespace A372718

/-- `2*A274979(n+1)+3` -/
def P11793884637082084922.Spec : Prop :=
  ∀ n, P11793884637082084922.a n = A372718 (n + 1)

end A372718

/-! ## A372718.P3076938484403680053

`C(A047608(n+1), 2)/2`
-/

namespace A372718.P3076938484403680053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A047608 (n + 1)).toNat 2 : ℚ) / 2

end

end A372718.P3076938484403680053

namespace A372718

/-- `C(A047608(n+1), 2)/2` -/
def P3076938484403680053.Spec : Prop :=
  ∀ n, P3076938484403680053.a n = (A372718 (n + 1) : ℚ)

end A372718

/-! ## A372718.P13889344391755555674

`or(1, n)*A047621(n+1)`
-/

namespace A372718.P13889344391755555674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) * A047621 (n + 1)

end

end A372718.P13889344391755555674

namespace A372718

/-- `or(1, n)*A047621(n+1)` -/
def P13889344391755555674.Spec : Prop :=
  ∀ n, P13889344391755555674.a n = A372718 (n + 1)

end A372718

/-! ## A372718.P18329421860590323428

`A316729(n)+A152950(n+1)`
-/

namespace A372718.P18329421860590323428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316729 n + A152950 (n + 1)

end

end A372718.P18329421860590323428

namespace A372718

/-- `A316729(n)+A152950(n+1)` -/
def P18329421860590323428.Spec : Prop :=
  ∀ n, P18329421860590323428.a n = A372718 (n + 1)

end A372718

/-! ## A372718.P6684185430139844649

`A303812(n)+A271723(n+1)`
-/

namespace A372718.P6684185430139844649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303812 n + A271723 (n + 1)

end

end A372718.P6684185430139844649

namespace A372718

/-- `A303812(n)+A271723(n+1)` -/
def P6684185430139844649.Spec : Prop :=
  ∀ n, P6684185430139844649.a n = A372718 (n + 1)

end A372718

/-! ## A372718.P7543908809365063601

`A047621(n+1)*A109613(n)`
-/

namespace A372718.P7543908809365063601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047621 (n + 1) * A109613 n

end

end A372718.P7543908809365063601

namespace A372718

/-- `A047621(n+1)*A109613(n)` -/
def P7543908809365063601.Spec : Prop :=
  ∀ n, P7543908809365063601.a n = A372718 (n + 1)

end A372718

/-! ## A372718.P17811668600908936126

`A157142(n)+2*A213399(n)`
-/

namespace A372718.P17811668600908936126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157142 n + 2 * A213399 n

end

end A372718.P17811668600908936126

namespace A372718

/-- `A157142(n)+2*A213399(n)` -/
def P17811668600908936126.Spec : Prop :=
  ∀ n, P17811668600908936126.a n = A372718 (n + 1)

end A372718

/-! ## A372718.P16172802305547511593

`A179088(n+1)-A062717(n+1)`
-/

namespace A372718.P16172802305547511593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179088 (n + 1) - A062717 (n + 1)

end

end A372718.P16172802305547511593

namespace A372718

/-- `A179088(n+1)-A062717(n+1)` -/
def P16172802305547511593.Spec : Prop :=
  ∀ n, P16172802305547511593.a n = A372718 (n + 1)

end A372718

/-! ## A372718.P3450054704038568580

`A047221(n+1)²-A135556(n+1)`
-/

namespace A372718.P3450054704038568580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (n + 1) ^ 2 - A135556 (n + 1)

end

end A372718.P3450054704038568580

namespace A372718

/-- `A047221(n+1)²-A135556(n+1)` -/
def P3450054704038568580.Spec : Prop :=
  ∀ n, P3450054704038568580.a n = A372718 (n + 1)

end A372718

/-! ## A372718.P10877035102416627273

`A047621(n+1)/2*A168276(n+1)`
-/

namespace A372718.P10877035102416627273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047621 (n + 1) : ℚ) / 2 * (A168276 (n + 1) : ℚ)

end

end A372718.P10877035102416627273

namespace A372718

/-- `A047621(n+1)/2*A168276(n+1)` -/
def P10877035102416627273.Spec : Prop :=
  ∀ n, P10877035102416627273.a n = (A372718 (n + 1) : ℚ)

end A372718

/-! ## A372718.P12075592991546214474

`A047221(n+1)²-A001651(n+1)²`
-/

namespace A372718.P12075592991546214474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (n + 1) ^ 2 - A001651 (n + 1) ^ 2

end

end A372718.P12075592991546214474

namespace A372718

/-- `A047221(n+1)²-A001651(n+1)²` -/
def P12075592991546214474.Spec : Prop :=
  ∀ n, P12075592991546214474.a n = A372718 (n + 1)

end A372718

/-! ## A372718.P2594861582994979055

`(A109613(n)+A047235(n+1))*A109613(n)`
-/

namespace A372718.P2594861582994979055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109613 n + A047235 (n + 1)) * A109613 n

end

end A372718.P2594861582994979055

namespace A372718

/-- `(A109613(n)+A047235(n+1))*A109613(n)` -/
def P2594861582994979055.Spec : Prop :=
  ∀ n, P2594861582994979055.a n = A372718 (n + 1)

end A372718

/-! ## A372718.P4419937043190263093

`A074378(A042948(n)+1)`
-/

namespace A372718.P4419937043190263093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074378 (A042948 n + 1).toNat

end

end A372718.P4419937043190263093

namespace A372718

/-- `A074378(A042948(n)+1)` -/
def P4419937043190263093.Spec : Prop :=
  ∀ n, P4419937043190263093.a n = A372718 (n + 1)

end A372718

/-! ## A372718.P3871714178503312948

`A074378(A042963(n+1))`
-/

namespace A372718.P3871714178503312948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074378 (A042963 (n + 1)).toNat

end

end A372718.P3871714178503312948

namespace A372718

/-- `A074378(A042963(n+1))` -/
def P3871714178503312948.Spec : Prop :=
  ∀ n, P3871714178503312948.a n = A372718 (n + 1)

end A372718

/-! ## A372718.P683536334688482537

`A074378(A014601(n+1)-2)`
-/

namespace A372718.P683536334688482537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074378 (A014601 (n + 1) - 2).toNat

end

end A372718.P683536334688482537

namespace A372718

/-- `A074378(A014601(n+1)-2)` -/
def P683536334688482537.Spec : Prop :=
  ∀ n, P683536334688482537.a n = A372718 (n + 1)

end A372718

/-!
# A372719: Decimal expansion of Sum_{k >= 1} floor(k*e^(Pi*sqrt(163/9)))/2^k.

The programs for A372719, there is no canonical definition to state claims against.
-/

/-! ## A372719.P15629299724306655912

`a(n-1)` with `a(0)=1, a(1)=2, a(2)=8, a(3)=0, a(4)=6, a(5)=3, a(6)=9`
-/

namespace A372719.P15629299724306655912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 8, 0, 6, 3, 9] fun n a =>
  a (n - 1)

end

end A372719.P15629299724306655912

/-!
# A372720: a(n) = A000005(n) - A008479(n).

The programs for A372720, there is no canonical definition to state claims against.
-/

/-! ## A372720.P14713204954762129967

`A000005(n+1)-A008479(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372720.P14713204954762129967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A008479 (n + 1)

end

end A372720.P14713204954762129967

/-! ## A372720.P138314748906784565

`A183093(n+1)-A355432(n+1)`
-/

namespace A372720.P138314748906784565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183093 (n + 1) - A355432 (n + 1)

end

end A372720.P138314748906784565

/-! ## A372720.P9769526851846403065

`A365788(n+1)-A243822(n+1)`
-/

namespace A372720.P9769526851846403065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365788 (n + 1) - A243822 (n + 1)

end

end A372720.P9769526851846403065

/-! ## A372720.P6193656231983558564

`A000005(n+1)+A365788(n+1)-A010846(n+1)`
-/

namespace A372720.P6193656231983558564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A365788 (n + 1) - A010846 (n + 1))

end

end A372720.P6193656231983558564

/-! ## A372720.P3179241698156691876

`A365788(n+1)-(A299990(n+1)+A000005(n+1))`
-/

namespace A372720.P3179241698156691876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365788 (n + 1) - (A299990 (n + 1) + A000005 (n + 1))

end

end A372720.P3179241698156691876

/-! ## A372720.P1782617210053578972

`A000005(n+1)-(A336551(n+1)+1-A360543(n+1))`
-/

namespace A372720.P1782617210053578972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A336551 (n + 1) + (1 - A360543 (n + 1)))

end

end A372720.P1782617210053578972

/-! ## A372720.P18287467566997231805

`A355731(A000040(n+1))-A008479(n+1)`
-/

namespace A372720.P18287467566997231805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355731 (A000040 (n + 1)).toNat - A008479 (n + 1)

end

end A372720.P18287467566997231805

/-! ## A372720.P1769980938912145401

`∑{#}[n, floor((n+1)/(#+1))-floor(n/(#+1))]-A008479(n+1)`
-/

namespace A372720.P1769980938912145401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋ - ⌊(n : ℚ) / (k + 1 : ℚ)⌋) - A008479 (n + 1)

end

end A372720.P1769980938912145401

/-!
# A372721: Number of partitions of [n] having exactly one block of maximal size.

The programs for A372721, there is no canonical definition to state claims against.
-/

/-! ## A372721.P18410872267988603855

`A372722(∑[n]+1)`
-/

namespace A372721.P18410872267988603855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372722 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A372721.P18410872267988603855

/-! ## A372721.P7639033848261457380

`A372722(A000124(n))+A000038(n+1)`
-/

namespace A372721.P7639033848261457380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372722 (A000124 n).toNat + A000038 (n + 1)

end

end A372721.P7639033848261457380

/-! ## A372721.P16581659925302196119

`A372722(A000124(n))+A180662(C(n+1, 2))`
-/

namespace A372721.P16581659925302196119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372722 (A000124 n).toNat + A180662 (Nat.choose (n + 1) 2)

end

end A372721.P16581659925302196119

/-! ## A372721.P18120166073825097512

`A372722(A000124(n))^gcd(n+1, A324198(n))`
-/

namespace A372721.P18120166073825097512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372722 (A000124 n).toNat ^ Int.gcd (n + 1 : ℤ) (A324198 n)

end

end A372721.P18120166073825097512

/-! ## A372721.P14493168814423437676

`A372722(A000124(n))+A047760(A239933(n+1))`
-/

namespace A372721.P14493168814423437676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372722 (A000124 n).toNat + A047760 (A239933 (n + 1)).toNat

end

end A372721.P14493168814423437676

/-! ## A372721.P7345532706565678999

`A372722(A000124(n))^A132741(A006450(n+1))`
-/

namespace A372721.P7345532706565678999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372722 (A000124 n).toNat : ℚ) ^ (A132741 (A006450 (n + 1)).toNat : ℤ)

end

end A372721.P7345532706565678999

/-!
# A372722: Number T(n,k) of partitions of [n] having exactly k blocks of maximal size; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A372722, there is no canonical definition to state claims against.
-/

/-! ## A372722.P3403443976440577585

`A244530(n+1)+A006983(A202390(n))`
-/

namespace A372722.P3403443976440577585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244530 (n + 1) + A006983 (A202390 n).toNat

end

end A372722.P3403443976440577585

/-! ## A372722.P3563649548952454387

`A377874(A176199(n))+A244530(n+1)`
-/

namespace A372722.P3563649548952454387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377874 (A176199 n).toNat + A244530 (n + 1)

end

end A372722.P3563649548952454387

/-!
# A372723: Triangle read by rows: Column k has e.g.f. t^k / ((1 - t)^(k + 1) * exp(t)).

The programs for A372723, the canonical program `A372723.P5003477330436095040` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372723 has offset 0).

The definition of A372723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1914 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372723.P5003477330436095040

`T(n-1,k+1)+(T(n-1,k-1)+T(n-1,k+1)+2*T(n-1,k))*col(n)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A372723

/-- `T(n-1,k+1)+(T(n-1,k-1)+T(n-1,k+1)+2*T(n-1,k))*col(n)` -/
def P5003477330436095040.Spec : Prop :=
  ∀ n, (P5003477330436095040.a n : ℤ) = A372723 n

theorem P5003477330436095040.correct : P5003477330436095040.Spec := by
  intro n
  simp only [A372723]

end A372723

/-! ## A372723.P14304903239000871616

`A007318(n)*A068106(n)`
-/

namespace A372723.P14304903239000871616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A068106 n

end

end A372723.P14304903239000871616

namespace A372723

/-- `A007318(n)*A068106(n)` -/
def P14304903239000871616.Spec : Prop :=
  ∀ n, P14304903239000871616.a n = A372723 n

end A372723

/-! ## A372723.P11455274468283909579

`A008279(n)*A086764(n)`
-/

namespace A372723.P11455274468283909579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A086764 n

end

end A372723.P11455274468283909579

namespace A372723

/-- `A008279(n)*A086764(n)` -/
def P11455274468283909579.Spec : Prop :=
  ∀ n, P11455274468283909579.a n = A372723 n

end A372723

/-! ## A372723.P8922644858557917842

`Δ[A102363(n)]*A068106(n)`
-/

namespace A372723.P8922644858557917842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A068106 n

end

end A372723.P8922644858557917842

namespace A372723

/-- `Δ[A102363(n)]*A068106(n)` -/
def P8922644858557917842.Spec : Prop :=
  ∀ n, P8922644858557917842.a n = A372723 n

end A372723

/-! ## A372723.P4321405780823978393

`abs(2-A173740(n))*A068106(n)`
-/

namespace A372723.P4321405780823978393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A173740 n| * A068106 n

end

end A372723.P4321405780823978393

namespace A372723

/-- `abs(2-A173740(n))*A068106(n)` -/
def P4321405780823978393.Spec : Prop :=
  ∀ n, P4321405780823978393.a n = A372723 n

end A372723

/-! ## A372723.P15420196680455061418

`ceil(A109128(n)/2)*A068106(n)`
-/

namespace A372723.P15420196680455061418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109128 n : ℚ) / 2⌉ * A068106 n

end

end A372723.P15420196680455061418

namespace A372723

/-- `ceil(A109128(n)/2)*A068106(n)` -/
def P15420196680455061418.Spec : Prop :=
  ∀ n, P15420196680455061418.a n = A372723 n

end A372723

/-!
# A372724: Numbers k such that k = Sum_{j=2..k+2} L(k/prime(j)) where L(n/p) is the Legendre symbol. Fixed points of A372725.

The programs for A372724, the canonical program `A372724.P703388709923667032` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372724 has offset 1).

The definition of A372724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372724.P703388709923667032

`record[(n+1)²*A340373(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A372724

/-- `record[(n+1)²*A340373(n+1)]` -/
def P703388709923667032.Spec : Prop :=
  ∀ n, P703388709923667032.a n = A372724 (n + 1)

theorem P703388709923667032.correct : P703388709923667032.Spec := by
  intro n
  simp only [A372724, Nat.add_sub_cancel]

end A372724

/-! ## A372724.P7349507007360431200

`eq[n, A372725(n)]`
-/

namespace A372724.P7349507007360431200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A372724.P7349507007360431200

namespace A372724

/-- `eq[n, A372725(n)]` -/
def P7349507007360431200.Spec : Prop :=
  ∀ n, (P7349507007360431200.a n : ℤ) = A372724 (n + 1)

end A372724

/-! ## A372724.P5460729503274011323

`∩[n², A372725(n²)]`
-/

namespace A372724.P5460729503274011323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372725 (n ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372724.P5460729503274011323

namespace A372724

/-- `∩[n², A372725(n²)]` -/
def P5460729503274011323.Spec : Prop :=
  ∀ n, (P5460729503274011323.a n : ℤ) = A372724 (n + 1)

end A372724

/-! ## A372724.P146544713468753612

`record[A372725(A372725(n²))]`
-/

namespace A372724.P146544713468753612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372725 (A372725 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372724.P146544713468753612

namespace A372724

/-- `record[A372725(A372725(n²))]` -/
def P146544713468753612.Spec : Prop :=
  ∀ n, P146544713468753612.a n = A372724 (n + 1)

end A372724

/-! ## A372724.P10439854213838150167

`record[A372725(record[A372725(n)])]`
-/

namespace A372724.P10439854213838150167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372725 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372725 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372724.P10439854213838150167

namespace A372724

/-- `record[A372725(record[A372725(n)])]` -/
def P10439854213838150167.Spec : Prop :=
  ∀ n, P10439854213838150167.a n = A372724 (n + 1)

end A372724

/-!
# A372727: Triangle read by rows: T(n, k) = n if k = 0, otherwise n - k*floor(n/k). The binary modulo operation.

The programs for A372727, the canonical program `A372727.P4784361531490275736` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372727 has offset 0).

The definition of A372727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372727.P8071077391053434251

`(C(comp[∑[n]]-n, 2)-(n+1))%A237448(n+1)`
-/

namespace A372727.P8071077391053434251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)) (A237448 (n + 1))

end

end A372727.P8071077391053434251

namespace A372727

/-- `(C(comp[∑[n]]-n, 2)-(n+1))%A237448(n+1)` -/
def P8071077391053434251.Spec : Prop :=
  ∀ n, P8071077391053434251.a n = A372727 n

end A372727

/-! ## A372727.P4784361531490275736

`A003056(n)%A130270(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A372727

/-- `A003056(n)%A130270(n+1)` -/
def P4784361531490275736.Spec : Prop :=
  ∀ n, P4784361531490275736.a n = A372727 n

theorem P4784361531490275736.correct : P4784361531490275736.Spec := by
  intro n
  simp only [A372727]

end A372727

/-! ## A372727.P4103364530722378158

`A025581(n)%A130270(n+1)`
-/

namespace A372727.P4103364530722378158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025581 n) (A130270 (n + 1))

end

end A372727.P4103364530722378158

namespace A372727

/-- `A025581(n)%A130270(n+1)` -/
def P4103364530722378158.Spec : Prop :=
  ∀ n, P4103364530722378158.a n = A372727 n

end A372727

/-! ## A372727.P3216946988973365265

`A051162(n)%A130270(n+1)`
-/

namespace A372727.P3216946988973365265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051162 n) (A130270 (n + 1))

end

end A372727.P3216946988973365265

namespace A372727

/-- `A051162(n)%A130270(n+1)` -/
def P3216946988973365265.Spec : Prop :=
  ∀ n, P3216946988973365265.a n = A372727 n

end A372727

/-! ## A372727.P12314083090694029838

`A059036(n)%A130270(n+1)`
-/

namespace A372727.P12314083090694029838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059036 n) (A130270 (n + 1))

end

end A372727.P12314083090694029838

namespace A372727

/-- `A059036(n)%A130270(n+1)` -/
def P12314083090694029838.Spec : Prop :=
  ∀ n, P12314083090694029838.a n = A372727 n

end A372727

/-! ## A372727.P12638708033628080885

`A083381(n)%A130270(n+1)`
-/

namespace A372727.P12638708033628080885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083381 n) (A130270 (n + 1))

end

end A372727.P12638708033628080885

namespace A372727

/-- `A083381(n)%A130270(n+1)` -/
def P12638708033628080885.Spec : Prop :=
  ∀ n, P12638708033628080885.a n = A372727 n

end A372727

/-! ## A372727.P6458895002424918197

`A085208(n)%A130270(n+1)`
-/

namespace A372727.P6458895002424918197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085208 n) (A130270 (n + 1))

end

end A372727.P6458895002424918197

namespace A372727

/-- `A085208(n)%A130270(n+1)` -/
def P6458895002424918197.Spec : Prop :=
  ∀ n, P6458895002424918197.a n = A372727 n

end A372727

/-! ## A372727.P17548189961857460921

`A134478(n)%A130270(n+1)`
-/

namespace A372727.P17548189961857460921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134478 n) (A130270 (n + 1))

end

end A372727.P17548189961857460921

namespace A372727

/-- `A134478(n)%A130270(n+1)` -/
def P17548189961857460921.Spec : Prop :=
  ∀ n, P17548189961857460921.a n = A372727 n

end A372727

/-! ## A372727.P9178033289611439406

`A141387(n)%A130270(n+1)`
-/

namespace A372727.P9178033289611439406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141387 n) (A130270 (n + 1))

end

end A372727.P9178033289611439406

namespace A372727

/-- `A141387(n)%A130270(n+1)` -/
def P9178033289611439406.Spec : Prop :=
  ∀ n, P9178033289611439406.a n = A372727 n

end A372727

/-! ## A372727.P17111525200545112688

`A151890(n)%A130270(n+1)`
-/

namespace A372727.P17111525200545112688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151890 n) (A130270 (n + 1))

end

end A372727.P17111525200545112688

namespace A372727

/-- `A151890(n)%A130270(n+1)` -/
def P17111525200545112688.Spec : Prop :=
  ∀ n, P17111525200545112688.a n = A372727 n

end A372727

/-! ## A372727.P6886355231594253935

`A159797(n)%A130270(n+1)`
-/

namespace A372727.P6886355231594253935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159797 n) (A130270 (n + 1))

end

end A372727.P6886355231594253935

namespace A372727

/-- `A159797(n)%A130270(n+1)` -/
def P6886355231594253935.Spec : Prop :=
  ∀ n, P6886355231594253935.a n = A372727 n

end A372727

/-! ## A372727.P2294849300545533438

`A162611(n)%A130270(n+1)`
-/

namespace A372727.P2294849300545533438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162611 n) (A130270 (n + 1))

end

end A372727.P2294849300545533438

namespace A372727

/-- `A162611(n)%A130270(n+1)` -/
def P2294849300545533438.Spec : Prop :=
  ∀ n, P2294849300545533438.a n = A372727 n

end A372727

/-! ## A372727.P15370461168809056823

`A162614(n)%A130270(n+1)`
-/

namespace A372727.P15370461168809056823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162614 n) (A130270 (n + 1))

end

end A372727.P15370461168809056823

namespace A372727

/-- `A162614(n)%A130270(n+1)` -/
def P15370461168809056823.Spec : Prop :=
  ∀ n, P15370461168809056823.a n = A372727 n

end A372727

/-! ## A372727.P3481811040161900234

`A162622(n)%A130270(n+1)`
-/

namespace A372727.P3481811040161900234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162622 n) (A130270 (n + 1))

end

end A372727.P3481811040161900234

namespace A372727

/-- `A162622(n)%A130270(n+1)` -/
def P3481811040161900234.Spec : Prop :=
  ∀ n, P3481811040161900234.a n = A372727 n

end A372727

/-! ## A372727.P17226379729518800645

`row(n)%gcd((row(n)+1)!, col(n))`
-/

namespace A372727.P17226379729518800645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n % Nat.gcd (Nat.factorial (SequenceMachineLib.triRow n + 1)) (SequenceMachineLib.triCol n)

end

end A372727.P17226379729518800645

namespace A372727

/-- `row(n)%gcd((row(n)+1)!, col(n))` -/
def P17226379729518800645.Spec : Prop :=
  ∀ n, (P17226379729518800645.a n : ℤ) = A372727 n

end A372727

/-!
# A372728: Kronecker's triangle read by rows. T(n, k) = K(n, k) where K(n, k) is the Kronecker symbol (n / k).

The programs for A372728, there is no canonical definition to state claims against.
-/

/-! ## A372728.P16720596953979146257

`A086823(A250081(n+1))`
-/

namespace A372728.P16720596953979146257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086823 (A250081 (n + 1)).toNat

end

end A372728.P16720596953979146257

/-! ## A372728.P11021157767159399536

`A030201(gcd(n, A297198(n+3)))`
-/

namespace A372728.P11021157767159399536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030201 (Int.gcd (n : ℤ) (A297198 (n + 3)))

end

end A372728.P11021157767159399536

/-! ## A372728.P8305494845824171641

`2-char[xor(n, 2*n)]-A333381(A097607(n))`
-/

namespace A372728.P8305494845824171641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A333381 (A097607 n).toNat

end

end A372728.P8305494845824171641

/-! ## A372728.P14052227208563628611

`A029883(A295889(n)+A022170(n))`
-/

namespace A372728.P14052227208563628611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (A295889 n + A022170 n).toNat

end

end A372728.P14052227208563628611

/-! ## A372728.P16258849090695729891

`A010060(n)*A244895(A093608(n))`
-/

namespace A372728.P16258849090695729891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n * A244895 (A093608 n).toNat

end

end A372728.P16258849090695729891

/-!
# A372730: Number of primes <= A005867(n).

The programs for A372730, the canonical program `A372730.P3092726674600062018` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372730 has offset 0).

The definition of A372730 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372730.P3092726674600062018

`A000720(A005867(n))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A372730

/-- `A000720(A005867(n))` -/
def P3092726674600062018.Spec : Prop :=
  ∀ n, P3092726674600062018.a n = A372730 n

theorem P3092726674600062018.correct : P3092726674600062018.Spec := by
  intro n
  simp only [A372730]

end A372730

/-! ## A372730.P15020418234955457648

`A000720(A096294(∑[n]))`
-/

namespace A372730.P15020418234955457648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A096294 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A372730.P15020418234955457648

namespace A372730

/-- `A000720(A096294(∑[n]))` -/
def P15020418234955457648.Spec : Prop :=
  ∀ n, P15020418234955457648.a n = A372730 n

end A372730

/-! ## A372730.P1620591886317032042

`A000720(A377469(n+1))`
-/

namespace A372730.P1620591886317032042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A377469 (n + 1)).toNat

end

end A372730.P1620591886317032042

namespace A372730

/-- `A000720(A377469(n+1))` -/
def P1620591886317032042.Spec : Prop :=
  ∀ n, P1620591886317032042.a n = A372730 n

end A372730

/-! ## A372730.P13652003861135441162

`A000720(A057857(n)-n)`
-/

namespace A372730.P13652003861135441162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A057857 n - (n : ℤ)).toNat

end

end A372730.P13652003861135441162

namespace A372730

/-- `A000720(A057857(n)-n)` -/
def P13652003861135441162.Spec : Prop :=
  ∀ n, P13652003861135441162.a n = A372730 n

theorem P13652003861135441162.correct : P13652003861135441162.Spec := by
  intro n
  simp only [A372730, Nat.add_sub_cancel, A372730.P13652003861135441162.a, A372730.P3092726674600062018.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A005867, A005867.P647413364839099534.a, A057857, A057857.P7925582756686219733.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A372730

/-!
# A372731: Number of vertices among all distinct circles that can be constructed from the 3 vertices and the equally spaced 3*n points placed on the sides of an equilateral triangle when every pair of the 3 + 3*n points are connected by a circle and where the points lie at the ends of the circle's diameter.

The programs for A372731, there is no canonical definition to state claims against.
-/

/-! ## A372731.P8414961603920585171

`A372733(n)-A372732(n)+1`
-/

namespace A372731.P8414961603920585171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372733 n - A372732 n + 1

end

end A372731.P8414961603920585171

/-! ## A372731.P502814843978422819

`A372733(n)+A024000(A372732(n))`
-/

namespace A372731.P502814843978422819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372733 n + A024000 (A372732 n).toNat

end

end A372731.P502814843978422819

/-!
# A372732: Number of regions among all distinct circles that can be constructed from the 3 vertices and the equally spaced 3*n points placed on the sides of an equilateral triangle when every pair of the 3 + 3*n points are connected by a circle and where the points lie at the ends of the circle's diameter.

The programs for A372732, there is no canonical definition to state claims against.
-/

/-! ## A372732.P1625870583590683790

`A372733(n)-A372731(n)+1`
-/

namespace A372732.P1625870583590683790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372733 n - A372731 n + 1

end

end A372732.P1625870583590683790

/-! ## A372732.P2356880288327084257

`A372733(n)+A024000(A372731(n))`
-/

namespace A372732.P2356880288327084257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372733 n + A024000 (A372731 n).toNat

end

end A372732.P2356880288327084257

/-!
# A372733: Number of curved edges among all distinct circles that can be constructed from the 3 vertices and the equally spaced 3*n points placed on the sides of an equilateral triangle when every pair of the 3 + 3*n points are connected by a circle and where the points lie at the ends of the circle's diameter.

The programs for A372733, there is no canonical definition to state claims against.
-/

/-! ## A372733.P9551666096573107823

`A372731(n)+A372732(n)-1`
-/

namespace A372733.P9551666096573107823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372731 n + A372732 n - 1

end

end A372733.P9551666096573107823

/-! ## A372733.P17367470340080984025

`A372731(n)+A023443(A372732(n))`
-/

namespace A372733.P17367470340080984025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372731 n + A023443 (A372732 n).toNat

end

end A372733.P17367470340080984025

/-!
# A372735: Number of distinct circles that can be constructed from the 3 vertices and the equally spaced 3*n points placed on the sides of an equilateral triangle when every pair of the 3 + 3*n points are connected by a circle and where the points lie at the ends of the circle's diameter.

The programs for A372735, there is no canonical definition to state claims against.
-/

/-! ## A372735.P16280317497905929072

`A131534(n+2)+A178218(3*n+1)+1`
-/

namespace A372735.P16280317497905929072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131534 (n + 2) + (A178218 (3 * n + 1) + 1)

end

end A372735.P16280317497905929072

/-! ## A372735.P1743353190999473344

`A178218(A222256(3*n+1))+A083039(2*(n+1))`
-/

namespace A372735.P1743353190999473344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178218 (A222256 (3 * n + 1)).toNat + A083039 (2 * (n + 1))

end

end A372735.P1743353190999473344

/-!
# A372738: Binomial transform of A369795.

The programs for A372738, there is no canonical definition to state claims against.
-/

/-! ## A372738.P15558060762184422474

`A190001((n+1)*A295254(n))`
-/

namespace A372738.P15558060762184422474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190001 ((n + 1 : ℤ) * A295254 n).toNat

end

end A372738.P15558060762184422474

/-!
# A372739: a(n) is the number of possible values of k such that the sum of aliquot coreful divisors of k (A336563) is n.

The programs for A372739, there is no canonical definition to state claims against.
-/

/-! ## A372739.P9255742604222812702

`A056169(n+1)+A010051(A207564(3*(n+1)))`
-/

namespace A372739.P9255742604222812702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1) + A010051 (A207564 (3 * (n + 1))).toNat

end

end A372739.P9255742604222812702

/-! ## A372739.P8639533167486068876

`and(A136167(3*(n+1)), A136206(A000009(n+3)))`
-/

namespace A372739.P8639533167486068876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A136167 (3 * (n + 1))) (A136206 (A000009 (n + 3)).toNat)

end

end A372739.P8639533167486068876

/-! ## A372739.P7272751592328537162

`or(A056169(n+1), A104894(A121295(n)))`
-/

namespace A372739.P7272751592328537162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056169 (n + 1)) (A104894 (A121295 (n + 10)).toNat)

end

end A372739.P7272751592328537162

/-! ## A372739.P2222766897460105550

`or(A056169(n+1), A266070(A354781(n+1)))`
-/

namespace A372739.P2222766897460105550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056169 (n + 1)) (A266070 (A354781 (n + 1)).toNat)

end

end A372739.P2222766897460105550

/-! ## A372739.P13430186025870406752

`A341595(n+1)+A288220(A194440(3*n+4))`
-/

namespace A372739.P13430186025870406752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341595 (n + 1) + A288220 (A194440 (3 * n + 4)).toNat

end

end A372739.P13430186025870406752

/-!
# A372740: Coreful untouchable numbers: numbers that are not the sum of aliquot coreful divisors (A336563) of any number.

The programs for A372740, there is no canonical definition to state claims against.
-/

/-! ## A372740.P38247118517485678

`eq[0, A372739(n+1)]+1`
-/

namespace A372740.P38247118517485678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372739 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A372740.P38247118517485678

/-!
# A372741: Coreful highly touchable numbers: numbers m > 0 such that a record number of numbers k have m as the sum of the aliquot coreful divisors (A336563) of k.

The programs for A372741, there is no canonical definition to state claims against.
-/

/-! ## A372741.P12701924828599092061

`A361174(∪[A002110(n), A054389(3*(n+1))])`
-/

namespace A372741.P12701924828599092061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054389 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361174 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A372741.P12701924828599092061

/-! ## A372741.P3832173954607660982

`record[∏{p}[A002620(A051301(n)), #]]`
-/

namespace A372741.P3832173954607660982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A051301 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372741.P3832173954607660982

/-!
# A372742: Numbers k such that there is a unique number m for which the sum of the aliquot coreful divisors of m (A336563) is k.

The programs for A372742, there is no canonical definition to state claims against.
-/

/-! ## A372742.P6625638384606155471

`A336563(A372743(n+1))`
-/

namespace A372742.P6625638384606155471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (A372743 (n + 1)).toNat

end

end A372742.P6625638384606155471

/-! ## A372742.P13496769080350527478

`eq[1, A372739(1+n)]+1`
-/

namespace A372742.P13496769080350527478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372739 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A372742.P13496769080350527478

/-! ## A372742.P13701400220712256604

`∩[A342119(n+1), A380573(n+1)]`
-/

namespace A372742.P13701400220712256604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372742.P13701400220712256604

/-! ## A372742.P15408351102095785750

`or(A003849(A333395(n+1)), A342119(n+1))`
-/

namespace A372742.P15408351102095785750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003849 (A333395 (n + 1)).toNat) (A342119 (n + 1))

end

end A372742.P15408351102095785750

/-!
# A372743: a(n) is the unique number m such that A336563(m) = A372742(n).

The programs for A372743, there is no canonical definition to state claims against.
-/

/-! ## A372743.P5237337850245495741

`A339594(A221915(n)+A187831(n))`
-/

namespace A372743.P5237337850245495741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339594 (A221915 n + A187831 n).toNat

end

end A372743.P5237337850245495741

/-!
# A372745: E.g.f. A(x) satisfies A(A(A(A(A(x))))) = x * exp(5*x).

The programs for A372745, there is no canonical definition to state claims against.
-/

/-! ## A372745.P2112782609914619729

`n*A373031(A064847(n+1))`
-/

namespace A372745.P2112782609914619729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A373031 (A064847 (n + 1)).toNat

end

end A372745.P2112782609914619729

/-!
# A372747: E.g.f. A(x) satisfies A(A(A(A(A(x))))) = (-1/5) * log(1 - 5*x).

The programs for A372747, there is no canonical definition to state claims against.
-/

/-! ## A372747.P2499155073090919381

`A006093(A127820(a(n-1)))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A372747.P2499155073090919381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 4] fun n a =>
  A006093 (A127820 (a (n - 1)).toNat).toNat

end

end A372747.P2499155073090919381

/-! ## A372747.P8180904933673516363

`A083382(A115416(n)+A002110(n))`
-/

namespace A372747.P8180904933673516363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (A115416 n + A002110 n).toNat

end

end A372747.P8180904933673516363

/-!
# A372749: 4th column of the 3-Zeckendorf array (A136189).

The programs for A372749, the canonical program `A372749.P13035462491583893748` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372749 has offset 1).

The definition of A372749 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372749.P13035462491583893748

`A202342(n+1)+A136496(n+1)+A381841(n+1)-2`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A372749

/-- `A202342(n+1)+A136496(n+1)+A381841(n+1)-2` -/
def P13035462491583893748.Spec : Prop :=
  ∀ n, P13035462491583893748.a n = A372749 (n + 1)

theorem P13035462491583893748.correct : P13035462491583893748.Spec := by
  intro n
  simp only [A372749, Nat.add_sub_cancel]

end A372749

/-! ## A372749.P4422718259385345324

`A064106(A136495(n+1))+1`
-/

namespace A372749.P4422718259385345324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064106 (A136495 (n + 1)).toNat + 1

end

end A372749.P4422718259385345324

namespace A372749

/-- `A064106(A136495(n+1))+1` -/
def P4422718259385345324.Spec : Prop :=
  ∀ n, P4422718259385345324.a n = A372749 (n + 1)

end A372749

/-! ## A372749.P9274617942677926890

`A064106(n+1)+A020942(n+1)`
-/

namespace A372749.P9274617942677926890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064106 (n + 1) + A020942 (n + 1)

end

end A372749.P9274617942677926890

namespace A372749

/-- `A064106(n+1)+A020942(n+1)` -/
def P9274617942677926890.Spec : Prop :=
  ∀ n, P9274617942677926890.a n = A372749 (n + 1)

theorem P9274617942677926890.correct : P9274617942677926890.Spec := by
  intro n
  simp only [A372749, Nat.add_sub_cancel, A372749.P9274617942677926890.a, A372749.P13035462491583893748.a, A020942, A020942.P5836413996573018086.a, A064106, A064106.P240912047226861259.a, A136496, A136496.P805941965056846939.a, A202342, A202342.P5796561117243952660.a, A381841, A381841.P11592063328882471830.a, A005374, A005374.P13862197180797613727.a, A064105, A064105.P10505817968738943948.a, A136495, A136495.P596664169401550958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A372749

/-! ## A372749.P5046648465259606145

`A372750(n+1)-A064105(n+1)`
-/

namespace A372749.P5046648465259606145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372750 (n + 1) - A064105 (n + 1)

end

end A372749.P5046648465259606145

namespace A372749

/-- `A372750(n+1)-A064105(n+1)` -/
def P5046648465259606145.Spec : Prop :=
  ∀ n, P5046648465259606145.a n = A372749 (n + 1)

theorem P5046648465259606145.correct : P5046648465259606145.Spec := by
  intro n
  simp only [A372749, Nat.add_sub_cancel, A372749.P5046648465259606145.a, A372749.P13035462491583893748.a, A064105, A064105.P10505817968738943948.a, A136496, A136496.P805941965056846939.a, A202342, A202342.P5796561117243952660.a, A372750, A372750.P11021400097773802461.a, A381841, A381841.P11592063328882471830.a, A005374, A005374.P13862197180797613727.a, A136495, A136495.P596664169401550958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A372749

/-! ## A372749.P15175671206849719241

`A372756(n+1)-A372752(n+1)`
-/

namespace A372749.P15175671206849719241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372756 (n + 1) - A372752 (n + 1)

end

end A372749.P15175671206849719241

namespace A372749

/-- `A372756(n+1)-A372752(n+1)` -/
def P15175671206849719241.Spec : Prop :=
  ∀ n, P15175671206849719241.a n = A372749 (n + 1)

theorem P15175671206849719241.correct : P15175671206849719241.Spec := by
  intro n
  simp only [A372749, Nat.add_sub_cancel, A372749.P15175671206849719241.a, A372749.P13035462491583893748.a, A136496, A136496.P805941965056846939.a, A202342, A202342.P5796561117243952660.a, A372752, A372752.P5687007721040332012.a, A372756, A372756.P16576302570727181633.a, A381841, A381841.P11592063328882471830.a, A005374, A005374.P13862197180797613727.a, A136495, A136495.P596664169401550958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A372749

/-! ## A372749.P3851481070526254293

`A005374(n)+2*A064105(n+1)`
-/

namespace A372749.P3851481070526254293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 n + 2 * A064105 (n + 1)

end

end A372749.P3851481070526254293

namespace A372749

/-- `A005374(n)+2*A064105(n+1)` -/
def P3851481070526254293.Spec : Prop :=
  ∀ n, P3851481070526254293.a n = A372749 (n + 1)

end A372749

/-! ## A372749.P7646981605117858060

`A020942(A020942(n+1))+3`
-/

namespace A372749.P7646981605117858060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020942 (A020942 (n + 1)).toNat + 3

end

end A372749.P7646981605117858060

namespace A372749

/-- `A020942(A020942(n+1))+3` -/
def P7646981605117858060.Spec : Prop :=
  ∀ n, P7646981605117858060.a n = A372749 (n + 1)

end A372749

/-! ## A372749.P7317996874606126343

`A381841(A202342(n+1))+1`
-/

namespace A372749.P7317996874606126343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381841 (A202342 (n + 1)).toNat + 1

end

end A372749.P7317996874606126343

namespace A372749

/-- `A381841(A202342(n+1))+1` -/
def P7317996874606126343.Spec : Prop :=
  ∀ n, P7317996874606126343.a n = A372749 (n + 1)

end A372749

/-! ## A372749.P12759315733032481438

`A136496(n+1)+A136496(A202342(n+1))`
-/

namespace A372749.P12759315733032481438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136496 (n + 1) + A136496 (A202342 (n + 1)).toNat

end

end A372749.P12759315733032481438

namespace A372749

/-- `A136496(n+1)+A136496(A202342(n+1))` -/
def P12759315733032481438.Spec : Prop :=
  ∀ n, P12759315733032481438.a n = A372749 (n + 1)

end A372749

/-! ## A372749.P265093030167327317

`A136496(A020942(n+1))+2`
-/

namespace A372749.P265093030167327317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136496 (A020942 (n + 1)).toNat + 2

end

end A372749.P265093030167327317

namespace A372749

/-- `A136496(A020942(n+1))+2` -/
def P265093030167327317.Spec : Prop :=
  ∀ n, P265093030167327317.a n = A372749 (n + 1)

end A372749

/-! ## A372749.P11009073653949664918

`A136496(A136496(n+1))-2`
-/

namespace A372749.P11009073653949664918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136496 (A136496 (n + 1)).toNat - 2

end

end A372749.P11009073653949664918

namespace A372749

/-- `A136496(A136496(n+1))-2` -/
def P11009073653949664918.Spec : Prop :=
  ∀ n, P11009073653949664918.a n = A372749 (n + 1)

end A372749

/-! ## A372749.P7395273225118355827

`A202342(A064105(n+1))`
-/

namespace A372749.P7395273225118355827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (A064105 (n + 1)).toNat

end

end A372749.P7395273225118355827

namespace A372749

/-- `A202342(A064105(n+1))` -/
def P7395273225118355827.Spec : Prop :=
  ∀ n, P7395273225118355827.a n = A372749 (n + 1)

end A372749

/-! ## A372749.P10046230795882655627

`A202342(lt[2, A105083(n)])`
-/

namespace A372749.P10046230795882655627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A372749.P10046230795882655627

namespace A372749

/-- `A202342(lt[2, A105083(n)])` -/
def P10046230795882655627.Spec : Prop :=
  ∀ n, P10046230795882655627.a n = A372749 (n + 1)

end A372749

/-! ## A372749.P5720836905718871444

`A202342(A136496(A136495(n+1)))`
-/

namespace A372749.P5720836905718871444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (A136496 (A136495 (n + 1)).toNat).toNat

end

end A372749.P5720836905718871444

namespace A372749

/-- `A202342(A136496(A136495(n+1)))` -/
def P5720836905718871444.Spec : Prop :=
  ∀ n, P5720836905718871444.a n = A372749 (n + 1)

end A372749

/-! ## A372749.P12589027052066688918

`A202342(A136496(A372758(n+1)+n))`
-/

namespace A372749.P12589027052066688918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (A136496 (A372758 (n + 1) + (n : ℤ)).toNat).toNat

end

end A372749.P12589027052066688918

namespace A372749

/-- `A202342(A136496(A372758(n+1)+n))` -/
def P12589027052066688918.Spec : Prop :=
  ∀ n, P12589027052066688918.a n = A372749 (n + 1)

end A372749

/-! ## A372749.P11829188958601149351

`A202342(A202341(A136495(n+1)+n+1))`
-/

namespace A372749.P11829188958601149351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (A202341 (A136495 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A372749.P11829188958601149351

namespace A372749

/-- `A202342(A202341(A136495(n+1)+n+1))` -/
def P11829188958601149351.Spec : Prop :=
  ∀ n, P11829188958601149351.a n = A372749 (n + 1)

end A372749

/-! ## A372749.P6049015674688660981

`A202342(A064106(n+1)-A202342(n+1))`
-/

namespace A372749.P6049015674688660981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (A064106 (n + 1) - A202342 (n + 1)).toNat

end

end A372749.P6049015674688660981

namespace A372749

/-- `A202342(A064106(n+1)-A202342(n+1))` -/
def P6049015674688660981.Spec : Prop :=
  ∀ n, P6049015674688660981.a n = A372749 (n + 1)

end A372749

/-! ## A372749.P14308222689669514466

`A136495(A064106(n+1))`
-/

namespace A372749.P14308222689669514466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (A064106 (n + 1)).toNat

end

end A372749.P14308222689669514466

namespace A372749

/-- `A136495(A064106(n+1))` -/
def P14308222689669514466.Spec : Prop :=
  ∀ n, P14308222689669514466.a n = A372749 (n + 1)

end A372749

/-! ## A372749.P6215963637905267588

`A005374(A372750(n+1))`
-/

namespace A372749.P6215963637905267588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A372750 (n + 1)).toNat

end

end A372749.P6215963637905267588

namespace A372749

/-- `A005374(A372750(n+1))` -/
def P6215963637905267588.Spec : Prop :=
  ∀ n, P6215963637905267588.a n = A372749 (n + 1)

end A372749

/-! ## A372749.P2122377797289205126

`A005374(A202341(A064106(n+1)+n+1))`
-/

namespace A372749.P2122377797289205126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A202341 (A064106 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A372749.P2122377797289205126

namespace A372749

/-- `A005374(A202341(A064106(n+1)+n+1))` -/
def P2122377797289205126.Spec : Prop :=
  ∀ n, P2122377797289205126.a n = A372749 (n + 1)

end A372749

/-!
# A372750: 5th column of the 3-Zeckendorf array (A136189).

The programs for A372750, the canonical program `A372750.P11021400097773802461` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372750 has offset 1).

The definition of A372750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372750.P11021400097773802461

`A202342(n+1)+A136496(n+1)+2*A381841(n+1)-3`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A372750

/-- `A202342(n+1)+A136496(n+1)+2*A381841(n+1)-3` -/
def P11021400097773802461.Spec : Prop :=
  ∀ n, P11021400097773802461.a n = A372750 (n + 1)

theorem P11021400097773802461.correct : P11021400097773802461.Spec := by
  intro n
  simp only [A372750, Nat.add_sub_cancel]

end A372750

/-! ## A372750.P12887173706224041272

`2*A064106(n+1)+n`
-/

namespace A372750.P12887173706224041272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064106 (n + 1) + (n : ℤ)

end

end A372750.P12887173706224041272

namespace A372750

/-- `2*A064106(n+1)+n` -/
def P12887173706224041272.Spec : Prop :=
  ∀ n, P12887173706224041272.a n = A372750 (n + 1)

end A372750

/-! ## A372750.P12656453842579173586

`A372749(n+1)+A064105(n+1)`
-/

namespace A372750.P12656453842579173586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372749 (n + 1) + A064105 (n + 1)

end

end A372750.P12656453842579173586

namespace A372750

/-- `A372749(n+1)+A064105(n+1)` -/
def P12656453842579173586.Spec : Prop :=
  ∀ n, P12656453842579173586.a n = A372750 (n + 1)

theorem P12656453842579173586.correct : P12656453842579173586.Spec := by
  intro n
  simp only [A372750, Nat.add_sub_cancel, A372750.P12656453842579173586.a, A372750.P11021400097773802461.a, A064105, A064105.P10505817968738943948.a, A136496, A136496.P805941965056846939.a, A202342, A202342.P5796561117243952660.a, A372749, A372749.P13035462491583893748.a, A381841, A381841.P11592063328882471830.a, A005374, A005374.P13862197180797613727.a, A136495, A136495.P596664169401550958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A372750

/-! ## A372750.P2856499964916634554

`A372752(n+1)-A064106(n+1)`
-/

namespace A372750.P2856499964916634554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372752 (n + 1) - A064106 (n + 1)

end

end A372750.P2856499964916634554

namespace A372750

/-- `A372752(n+1)-A064106(n+1)` -/
def P2856499964916634554.Spec : Prop :=
  ∀ n, P2856499964916634554.a n = A372750 (n + 1)

theorem P2856499964916634554.correct : P2856499964916634554.Spec := by
  intro n
  simp only [A372750, Nat.add_sub_cancel, A372750.P2856499964916634554.a, A372750.P11021400097773802461.a, A064106, A064106.P240912047226861259.a, A136496, A136496.P805941965056846939.a, A202342, A202342.P5796561117243952660.a, A372752, A372752.P5687007721040332012.a, A381841, A381841.P11592063328882471830.a, A005374, A005374.P13862197180797613727.a, A064105, A064105.P10505817968738943948.a, A136495, A136495.P596664169401550958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A372750

/-! ## A372750.P12560192946802927071

`A372757(n+1)-A372756(n+1)`
-/

namespace A372750.P12560192946802927071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372757 (n + 1) - A372756 (n + 1)

end

end A372750.P12560192946802927071

namespace A372750

/-- `A372757(n+1)-A372756(n+1)` -/
def P12560192946802927071.Spec : Prop :=
  ∀ n, P12560192946802927071.a n = A372750 (n + 1)

theorem P12560192946802927071.correct : P12560192946802927071.Spec := by
  intro n
  simp only [A372750, Nat.add_sub_cancel, A372750.P12560192946802927071.a, A372750.P11021400097773802461.a, A136496, A136496.P805941965056846939.a, A202342, A202342.P5796561117243952660.a, A372756, A372756.P16576302570727181633.a, A372757, A372757.P4399208571086954249.a, A381841, A381841.P11592063328882471830.a, A005374, A005374.P13862197180797613727.a, A136495, A136495.P596664169401550958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A372750

/-! ## A372750.P15888103227575833591

`A020942(n+1)+A064106(n+1)+A064105(n+1)`
-/

namespace A372750.P15888103227575833591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020942 (n + 1) + (A064106 (n + 1) + A064105 (n + 1))

end

end A372750.P15888103227575833591

namespace A372750

/-- `A020942(n+1)+A064106(n+1)+A064105(n+1)` -/
def P15888103227575833591.Spec : Prop :=
  ∀ n, P15888103227575833591.a n = A372750 (n + 1)

theorem P15888103227575833591.correct : P15888103227575833591.Spec := by
  intro n
  simp only [A372750, Nat.add_sub_cancel, A372750.P15888103227575833591.a, A372750.P11021400097773802461.a, A020942, A020942.P5836413996573018086.a, A064105, A064105.P10505817968738943948.a, A064106, A064106.P240912047226861259.a, A136496, A136496.P805941965056846939.a, A202342, A202342.P5796561117243952660.a, A381841, A381841.P11592063328882471830.a, A005374, A005374.P13862197180797613727.a, A136495, A136495.P596664169401550958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A372750

/-! ## A372750.P10416499673625107343

`A381841(A202342(n+1))+A381841(n+1)`
-/

namespace A372750.P10416499673625107343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381841 (A202342 (n + 1)).toNat + A381841 (n + 1)

end

end A372750.P10416499673625107343

namespace A372750

/-- `A381841(A202342(n+1))+A381841(n+1)` -/
def P10416499673625107343.Spec : Prop :=
  ∀ n, P10416499673625107343.a n = A372750 (n + 1)

end A372750

/-! ## A372750.P18029847480108333390

`A020942(A381841(n+1))-1`
-/

namespace A372750.P18029847480108333390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020942 (A381841 (n + 1)).toNat - 1

end

end A372750.P18029847480108333390

namespace A372750

/-- `A020942(A381841(n+1))-1` -/
def P18029847480108333390.Spec : Prop :=
  ∀ n, P18029847480108333390.a n = A372750 (n + 1)

end A372750

/-! ## A372750.P11638752711794217159

`A136496(A064105(n+1))`
-/

namespace A372750.P11638752711794217159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136496 (A064105 (n + 1)).toNat

end

end A372750.P11638752711794217159

namespace A372750

/-- `A136496(A064105(n+1))` -/
def P11638752711794217159.Spec : Prop :=
  ∀ n, P11638752711794217159.a n = A372750 (n + 1)

end A372750

/-! ## A372750.P16968721506701625315

`A136496(A381841(n+1)-1)`
-/

namespace A372750.P16968721506701625315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136496 (A381841 (n + 1) - 1).toNat

end

end A372750.P16968721506701625315

namespace A372750

/-- `A136496(A381841(n+1)-1)` -/
def P16968721506701625315.Spec : Prop :=
  ∀ n, P16968721506701625315.a n = A372750 (n + 1)

end A372750

/-! ## A372750.P11640362087080906414

`A136496(A136496(A136495(n+1)))`
-/

namespace A372750.P11640362087080906414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136496 (A136496 (A136495 (n + 1)).toNat).toNat

end

end A372750.P11640362087080906414

namespace A372750

/-- `A136496(A136496(A136495(n+1)))` -/
def P11640362087080906414.Spec : Prop :=
  ∀ n, P11640362087080906414.a n = A372750 (n + 1)

end A372750

/-! ## A372750.P6747555547894752158

`A136496(A136496(A372758(n+1)+n))`
-/

namespace A372750.P6747555547894752158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136496 (A136496 (A372758 (n + 1) + (n : ℤ)).toNat).toNat

end

end A372750.P6747555547894752158

namespace A372750

/-- `A136496(A136496(A372758(n+1)+n))` -/
def P6747555547894752158.Spec : Prop :=
  ∀ n, P6747555547894752158.a n = A372750 (n + 1)

end A372750

/-! ## A372750.P12145468500130738285

`A381841(A064105(n+1))-A064106(n+1)`
-/

namespace A372750.P12145468500130738285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381841 (A064105 (n + 1)).toNat - A064106 (n + 1)

end

end A372750.P12145468500130738285

namespace A372750

/-- `A381841(A064105(n+1))-A064106(n+1)` -/
def P12145468500130738285.Spec : Prop :=
  ∀ n, P12145468500130738285.a n = A372750 (n + 1)

end A372750

/-! ## A372750.P13957898164545549471

`A372752(n+1)-A136495(A064105(n+1))`
-/

namespace A372750.P13957898164545549471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372752 (n + 1) - A136495 (A064105 (n + 1)).toNat

end

end A372750.P13957898164545549471

namespace A372750

/-- `A372752(n+1)-A136495(A064105(n+1))` -/
def P13957898164545549471.Spec : Prop :=
  ∀ n, P13957898164545549471.a n = A372750 (n + 1)

end A372750

/-! ## A372750.P8024276010875987633

`A202342(A064106(n+1))+1`
-/

namespace A372750.P8024276010875987633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (A064106 (n + 1)).toNat + 1

end

end A372750.P8024276010875987633

namespace A372750

/-- `A202342(A064106(n+1))+1` -/
def P8024276010875987633.Spec : Prop :=
  ∀ n, P8024276010875987633.a n = A372750 (n + 1)

end A372750

/-! ## A372750.P210486565706069861

`A136496(A005374(A064106(n+1)))`
-/

namespace A372750.P210486565706069861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136496 (A005374 (A064106 (n + 1)).toNat).toNat

end

end A372750.P210486565706069861

namespace A372750

/-- `A136496(A005374(A064106(n+1)))` -/
def P210486565706069861.Spec : Prop :=
  ∀ n, P210486565706069861.a n = A372750 (n + 1)

end A372750

/-! ## A372750.P2967349150275995886

`A372749(n+1)+A005374(A064106(n+1))`
-/

namespace A372750.P2967349150275995886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372749 (n + 1) + A005374 (A064106 (n + 1)).toNat

end

end A372750.P2967349150275995886

namespace A372750

/-- `A372749(n+1)+A005374(A064106(n+1))` -/
def P2967349150275995886.Spec : Prop :=
  ∀ n, P2967349150275995886.a n = A372750 (n + 1)

end A372750

/-! ## A372750.P10934864593751948850

`A202341(A064106(n+1)+n+1)`
-/

namespace A372750.P10934864593751948850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202341 (A064106 (n + 1) + (n + 1 : ℤ)).toNat

end

end A372750.P10934864593751948850

namespace A372750

/-- `A202341(A064106(n+1)+n+1)` -/
def P10934864593751948850.Spec : Prop :=
  ∀ n, P10934864593751948850.a n = A372750 (n + 1)

end A372750

/-! ## A372750.P7776185275307688449

`A136495(A372749(n+1))+1`
-/

namespace A372750.P7776185275307688449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (A372749 (n + 1)).toNat + 1

end

end A372750.P7776185275307688449

namespace A372750

/-- `A136495(A372749(n+1))+1` -/
def P7776185275307688449.Spec : Prop :=
  ∀ n, P7776185275307688449.a n = A372750 (n + 1)

end A372750

/-! ## A372750.P12024601751704697797

`A005374(A372752(n+1))`
-/

namespace A372750.P12024601751704697797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A372752 (n + 1)).toNat

end

end A372750.P12024601751704697797

namespace A372750

/-- `A005374(A372752(n+1))` -/
def P12024601751704697797.Spec : Prop :=
  ∀ n, P12024601751704697797.a n = A372750 (n + 1)

end A372750

/-!
# A372751: a(n) = (3*n^5 + 4*n^3 - n)/6.

The programs for A372751, the canonical program `A372751.P11664956360161315135` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372751 has offset 1).

The definition of A372751 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A372751.anchor (n : ℕ) : (A372751 (n + 1) : ℚ) = ((3 * (n + 1) ^ 5 + 4 * (n + 1) ^ 3 : ℤ) - (n + 1 : ℤ) : ℚ) / 6` in `Proof.A372.A372751`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A372751.P13141037351403684046

`ogf((1+15x+28x^2+15x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A372751.P13141037351403684046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 15, 28, 15, 1] [1, -6, 15, -20, 15, -6, 1] n

end

end A372751.P13141037351403684046

namespace A372751

/-- `ogf((1+15x+28x^2+15x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P13141037351403684046.Spec : Prop :=
  ∀ n, P13141037351403684046.a n = A372751 (n + 1)

end A372751

/-! ## A372751.P11664956360161315135

`(3*(n+1)^5+4*(n+1)^3-(n+1))/6`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A372751

/-- `(3*(n+1)^5+4*(n+1)^3-(n+1))/6` -/
def P11664956360161315135.Spec : Prop :=
  ∀ n, P11664956360161315135.a n = (A372751 (n + 1) : ℚ)

end A372751

/-! ## A372751.P10394242505990243185

`A191484(n)+A111746(n)`
-/

namespace A372751.P10394242505990243185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191484 n + A111746 n

end

end A372751.P10394242505990243185

namespace A372751

/-- `A191484(n)+A111746(n)` -/
def P10394242505990243185.Spec : Prop :=
  ∀ n, P10394242505990243185.a n = A372751 (n + 1)

end A372751

/-! ## A372751.P6284614466005432071

`A191902(n)+A056640(n+1)`
-/

namespace A372751.P6284614466005432071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191902 n + A056640 (n + 1)

end

end A372751.P6284614466005432071

namespace A372751

/-- `A191902(n)+A056640(n+1)` -/
def P6284614466005432071.Spec : Prop :=
  ∀ n, P6284614466005432071.a n = A372751 (n + 1)

end A372751

/-! ## A372751.P7903188475877035052

`A164938(n+1)+A061803(n+1)`
-/

namespace A372751.P7903188475877035052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164938 (n + 1) + A061803 (n + 1)

end

end A372751.P7903188475877035052

namespace A372751

/-- `A164938(n+1)+A061803(n+1)` -/
def P7903188475877035052.Spec : Prop :=
  ∀ n, P7903188475877035052.a n = A372751 (n + 1)

end A372751

/-! ## A372751.P7277166060917595790

`2*A372583(n+1)-A072474(n+1)`
-/

namespace A372751.P7277166060917595790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A372583 (n + 1) - A072474 (n + 1)

end

end A372751.P7277166060917595790

namespace A372751

/-- `2*A372583(n+1)-A072474(n+1)` -/
def P7277166060917595790.Spec : Prop :=
  ∀ n, P7277166060917595790.a n = A372751 (n + 1)

end A372751

/-! ## A372751.P2501051516472530838

`A072474(n+1)+A372583(n+1)-A260513(n+1)`
-/

namespace A372751.P2501051516472530838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072474 (n + 1) + (A372583 (n + 1) - A260513 (n + 1))

end

end A372751.P2501051516472530838

namespace A372751

/-- `A072474(n+1)+A372583(n+1)-A260513(n+1)` -/
def P2501051516472530838.Spec : Prop :=
  ∀ n, P2501051516472530838.a n = A372751 (n + 1)

end A372751

/-! ## A372751.P7960122462284060938

`A168178(n+1)+A000292(n)`
-/

namespace A372751.P7960122462284060938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168178 (n + 1) + A000292 n

end

end A372751.P7960122462284060938

namespace A372751

/-- `A168178(n+1)+A000292(n)` -/
def P7960122462284060938.Spec : Prop :=
  ∀ n, P7960122462284060938.a n = A372751 (n + 1)

end A372751

/-! ## A372751.P16176917508184371513

`A072474(n+1)+A072474(n+1)-A006003(n+1)`
-/

namespace A372751.P16176917508184371513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072474 (n + 1) + (A072474 (n + 1) - A006003 (n + 1))

end

end A372751.P16176917508184371513

namespace A372751

/-- `A072474(n+1)+A072474(n+1)-A006003(n+1)` -/
def P16176917508184371513.Spec : Prop :=
  ∀ n, P16176917508184371513.a n = A372751 (n + 1)

end A372751

/-! ## A372751.P1516676040262151171

`A260513(n+1)+A372583(n+1)-A006003(n+1)`
-/

namespace A372751.P1516676040262151171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260513 (n + 1) + (A372583 (n + 1) - A006003 (n + 1))

end

end A372751.P1516676040262151171

namespace A372751

/-- `A260513(n+1)+A372583(n+1)-A006003(n+1)` -/
def P1516676040262151171.Spec : Prop :=
  ∀ n, P1516676040262151171.a n = A372751 (n + 1)

end A372751

/-! ## A372751.P11445986767749864393

`Δ[A002412(∑[n])]`
-/

namespace A372751.P11445986767749864393
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A372751.P11445986767749864393

namespace A372751

/-- `Δ[A002412(∑[n])]` -/
def P11445986767749864393.Spec : Prop :=
  ∀ n, P11445986767749864393.a n = A372751 (n + 1)

end A372751

/-!
# A372752: 6th column of the 3-Zeckendorf array (A136189).

The programs for A372752, the canonical program `A372752.P5687007721040332012` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372752 has offset 1).

The definition of A372752 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372752.P5687007721040332012

`2*A202342(n+1)+A136496(n+1)+3*A381841(n+1)-4`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A372752

/-- `2*A202342(n+1)+A136496(n+1)+3*A381841(n+1)-4` -/
def P5687007721040332012.Spec : Prop :=
  ∀ n, P5687007721040332012.a n = A372752 (n + 1)

theorem P5687007721040332012.correct : P5687007721040332012.Spec := by
  intro n
  simp only [A372752, Nat.add_sub_cancel]

end A372752

/-! ## A372752.P6244200042444822992

`3*A064106(n+1)+n`
-/

namespace A372752.P6244200042444822992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A064106 (n + 1) + (n : ℤ)

end

end A372752.P6244200042444822992

namespace A372752

/-- `3*A064106(n+1)+n` -/
def P6244200042444822992.Spec : Prop :=
  ∀ n, P6244200042444822992.a n = A372752 (n + 1)

end A372752

/-! ## A372752.P4199727671632340641

`A372750(n+1)+A064106(n+1)`
-/

namespace A372752.P4199727671632340641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372750 (n + 1) + A064106 (n + 1)

end

end A372752.P4199727671632340641

namespace A372752

/-- `A372750(n+1)+A064106(n+1)` -/
def P4199727671632340641.Spec : Prop :=
  ∀ n, P4199727671632340641.a n = A372752 (n + 1)

theorem P4199727671632340641.correct : P4199727671632340641.Spec := by
  intro n
  simp only [A372752, Nat.add_sub_cancel, A372752.P4199727671632340641.a, A372752.P5687007721040332012.a, A064106, A064106.P240912047226861259.a, A136496, A136496.P805941965056846939.a, A202342, A202342.P5796561117243952660.a, A372750, A372750.P11021400097773802461.a, A381841, A381841.P11592063328882471830.a, A005374, A005374.P13862197180797613727.a, A064105, A064105.P10505817968738943948.a, A136495, A136495.P596664169401550958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A372752

/-! ## A372752.P12979971309034573646

`A372756(n+1)-A372749(n+1)`
-/

namespace A372752.P12979971309034573646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372756 (n + 1) - A372749 (n + 1)

end

end A372752.P12979971309034573646

namespace A372752

/-- `A372756(n+1)-A372749(n+1)` -/
def P12979971309034573646.Spec : Prop :=
  ∀ n, P12979971309034573646.a n = A372752 (n + 1)

theorem P12979971309034573646.correct : P12979971309034573646.Spec := by
  intro n
  simp only [A372752, Nat.add_sub_cancel, A372752.P12979971309034573646.a, A372752.P5687007721040332012.a, A136496, A136496.P805941965056846939.a, A202342, A202342.P5796561117243952660.a, A372749, A372749.P13035462491583893748.a, A372756, A372756.P16576302570727181633.a, A381841, A381841.P11592063328882471830.a, A005374, A005374.P13862197180797613727.a, A136495, A136495.P596664169401550958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A372752

/-! ## A372752.P2485043038679473419

`A136495(n+1)+2*A372749(n+1)`
-/

namespace A372752.P2485043038679473419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (n + 1) + 2 * A372749 (n + 1)

end

end A372752.P2485043038679473419

namespace A372752

/-- `A136495(n+1)+2*A372749(n+1)` -/
def P2485043038679473419.Spec : Prop :=
  ∀ n, P2485043038679473419.a n = A372752 (n + 1)

theorem P2485043038679473419.correct : P2485043038679473419.Spec := by
  intro n
  simp only [A372752, Nat.add_sub_cancel, A372752.P2485043038679473419.a, A372752.P5687007721040332012.a, A136495, A136495.P596664169401550958.a, A136496, A136496.P805941965056846939.a, A202342, A202342.P5796561117243952660.a, A372749, A372749.P13035462491583893748.a, A381841, A381841.P11592063328882471830.a, A005374, A005374.P13862197180797613727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A372752

/-! ## A372752.P12076179707445976375

`A064105(n+1)+A372749(n+1)+A064106(n+1)`
-/

namespace A372752.P12076179707445976375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064105 (n + 1) + (A372749 (n + 1) + A064106 (n + 1))

end

end A372752.P12076179707445976375

namespace A372752

/-- `A064105(n+1)+A372749(n+1)+A064106(n+1)` -/
def P12076179707445976375.Spec : Prop :=
  ∀ n, P12076179707445976375.a n = A372752 (n + 1)

theorem P12076179707445976375.correct : P12076179707445976375.Spec := by
  intro n
  simp only [A372752, Nat.add_sub_cancel, A372752.P12076179707445976375.a, A372752.P5687007721040332012.a, A064105, A064105.P10505817968738943948.a, A064106, A064106.P240912047226861259.a, A136496, A136496.P805941965056846939.a, A202342, A202342.P5796561117243952660.a, A372749, A372749.P13035462491583893748.a, A381841, A381841.P11592063328882471830.a, A005374, A005374.P13862197180797613727.a, A136495, A136495.P596664169401550958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A372752

/-! ## A372752.P751853043074313463

`A064105(n+1)+A372750(n+1)+A202342(n+1)`
-/

namespace A372752.P751853043074313463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064105 (n + 1) + (A372750 (n + 1) + A202342 (n + 1))

end

end A372752.P751853043074313463

namespace A372752

/-- `A064105(n+1)+A372750(n+1)+A202342(n+1)` -/
def P751853043074313463.Spec : Prop :=
  ∀ n, P751853043074313463.a n = A372752 (n + 1)

theorem P751853043074313463.correct : P751853043074313463.Spec := by
  intro n
  simp only [A372752, Nat.add_sub_cancel, A372752.P751853043074313463.a, A372752.P5687007721040332012.a, A064105, A064105.P10505817968738943948.a, A136496, A136496.P805941965056846939.a, A202342, A202342.P5796561117243952660.a, A372750, A372750.P11021400097773802461.a, A381841, A381841.P11592063328882471830.a, A005374, A005374.P13862197180797613727.a, A136495, A136495.P596664169401550958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A372752

/-! ## A372752.P17878147955093223121

`A372756(n+1)-(A064106(n+1)+A020942(n+1))`
-/

namespace A372752.P17878147955093223121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372756 (n + 1) - (A064106 (n + 1) + A020942 (n + 1))

end

end A372752.P17878147955093223121

namespace A372752

/-- `A372756(n+1)-(A064106(n+1)+A020942(n+1))` -/
def P17878147955093223121.Spec : Prop :=
  ∀ n, P17878147955093223121.a n = A372752 (n + 1)

theorem P17878147955093223121.correct : P17878147955093223121.Spec := by
  intro n
  simp only [A372752, Nat.add_sub_cancel, A372752.P17878147955093223121.a, A372752.P5687007721040332012.a, A020942, A020942.P5836413996573018086.a, A064106, A064106.P240912047226861259.a, A136496, A136496.P805941965056846939.a, A202342, A202342.P5796561117243952660.a, A372756, A372756.P16576302570727181633.a, A381841, A381841.P11592063328882471830.a, A005374, A005374.P13862197180797613727.a, A064105, A064105.P10505817968738943948.a, A136495, A136495.P596664169401550958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A372752

/-! ## A372752.P4583447199330330584

`A064105(A064105(n+1))+1`
-/

namespace A372752.P4583447199330330584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064105 (A064105 (n + 1)).toNat + 1

end

end A372752.P4583447199330330584

namespace A372752

/-- `A064105(A064105(n+1))+1` -/
def P4583447199330330584.Spec : Prop :=
  ∀ n, P4583447199330330584.a n = A372752 (n + 1)

end A372752

/-! ## A372752.P8888791753129844830

`A381841(A064105(n+1))`
-/

namespace A372752.P8888791753129844830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381841 (A064105 (n + 1)).toNat

end

end A372752.P8888791753129844830

namespace A372752

/-- `A381841(A064105(n+1))` -/
def P8888791753129844830.Spec : Prop :=
  ∀ n, P8888791753129844830.a n = A372752 (n + 1)

end A372752

/-! ## A372752.P797229411633740124

`A381841(A381841(n+1)-1)`
-/

namespace A372752.P797229411633740124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381841 (A381841 (n + 1) - 1).toNat

end

end A372752.P797229411633740124

namespace A372752

/-- `A381841(A381841(n+1)-1)` -/
def P797229411633740124.Spec : Prop :=
  ∀ n, P797229411633740124.a n = A372752 (n + 1)

end A372752

/-! ## A372752.P10126964107780226174

`A381841(A136496(A136495(n+1)))`
-/

namespace A372752.P10126964107780226174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381841 (A136496 (A136495 (n + 1)).toNat).toNat

end

end A372752.P10126964107780226174

namespace A372752

/-- `A381841(A136496(A136495(n+1)))` -/
def P10126964107780226174.Spec : Prop :=
  ∀ n, P10126964107780226174.a n = A372752 (n + 1)

end A372752

/-! ## A372752.P13163701802361507695

`A381841(A136495(n+1)+A020942(n+1))`
-/

namespace A372752.P13163701802361507695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381841 (A136495 (n + 1) + A020942 (n + 1)).toNat

end

end A372752.P13163701802361507695

namespace A372752

/-- `A381841(A136495(n+1)+A020942(n+1))` -/
def P13163701802361507695.Spec : Prop :=
  ∀ n, P13163701802361507695.a n = A372752 (n + 1)

end A372752

/-! ## A372752.P4120635432679896306

`A136496(A064106(n+1))+1`
-/

namespace A372752.P4120635432679896306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136496 (A064106 (n + 1)).toNat + 1

end

end A372752.P4120635432679896306

namespace A372752

/-- `A136496(A064106(n+1))+1` -/
def P4120635432679896306.Spec : Prop :=
  ∀ n, P4120635432679896306.a n = A372752 (n + 1)

end A372752

/-! ## A372752.P5549518685345335599

`A381841(A005374(A064106(n+1)))`
-/

namespace A372752.P5549518685345335599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381841 (A005374 (A064106 (n + 1)).toNat).toNat

end

end A372752.P5549518685345335599

namespace A372752

/-- `A381841(A005374(A064106(n+1)))` -/
def P5549518685345335599.Spec : Prop :=
  ∀ n, P5549518685345335599.a n = A372752 (n + 1)

end A372752

/-! ## A372752.P5293150903290625761

`A202342(A372749(n+1))+2`
-/

namespace A372752.P5293150903290625761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (A372749 (n + 1)).toNat + 2

end

end A372752.P5293150903290625761

namespace A372752

/-- `A202342(A372749(n+1))+2` -/
def P5293150903290625761.Spec : Prop :=
  ∀ n, P5293150903290625761.a n = A372752 (n + 1)

end A372752

/-! ## A372752.P2950085890458949399

`A381841(A372758(A372749(n+1)))`
-/

namespace A372752.P2950085890458949399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381841 (A372758 (A372749 (n + 1)).toNat).toNat

end

end A372752.P2950085890458949399

namespace A372752

/-- `A381841(A372758(A372749(n+1)))` -/
def P2950085890458949399.Spec : Prop :=
  ∀ n, P2950085890458949399.a n = A372752 (n + 1)

end A372752

/-! ## A372752.P16859000793709685278

`A136495(A372750(n+1))`
-/

namespace A372752.P16859000793709685278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (A372750 (n + 1)).toNat

end

end A372752.P16859000793709685278

namespace A372752

/-- `A136495(A372750(n+1))` -/
def P16859000793709685278.Spec : Prop :=
  ∀ n, P16859000793709685278.a n = A372752 (n + 1)

end A372752

/-! ## A372752.P13702531887550503710

`A136495(A202341(A064106(n+1)+n+1))`
-/

namespace A372752.P13702531887550503710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (A202341 (A064106 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A372752.P13702531887550503710

namespace A372752

/-- `A136495(A202341(A064106(n+1)+n+1))` -/
def P13702531887550503710.Spec : Prop :=
  ∀ n, P13702531887550503710.a n = A372752 (n + 1)

end A372752

/-! ## A372752.P13304042326604062431

`A136495(A372757(n+1)-A372756(n+1))`
-/

namespace A372752.P13304042326604062431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (A372757 (n + 1) - A372756 (n + 1)).toNat

end

end A372752.P13304042326604062431

namespace A372752

/-- `A136495(A372757(n+1)-A372756(n+1))` -/
def P13304042326604062431.Spec : Prop :=
  ∀ n, P13304042326604062431.a n = A372752 (n + 1)

end A372752

/-!
# A372754: a(n) is the least base in which the Fibonacci number A000045(n) is a palindrome.

The programs for A372754, there is no canonical definition to state claims against.
-/

/-! ## A372754.P12194102359863317332

`A016026(A000045(n+1))`
-/

namespace A372754.P12194102359863317332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016026 (A000045 (n + 1)).toNat

end

end A372754.P12194102359863317332

/-! ## A372754.P18224748801569490523

`A016026(A037027(∑[n]))`
-/

namespace A372754.P18224748801569490523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016026 (A037027 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A372754.P18224748801569490523

/-! ## A372754.P5900027721654555636

`A016026(A324969(n+2))`
-/

namespace A372754.P5900027721654555636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016026 (A324969 (n + 2)).toNat

end

end A372754.P5900027721654555636

/-! ## A372754.P17060104612218622946

`A016026(A000071(n+1)+1)`
-/

namespace A372754.P17060104612218622946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016026 (A000071 (n + 1) + 1).toNat

end

end A372754.P17060104612218622946

/-!
# A372755: Terms of A319928 that are congruent to 4 modulo 8: Numbers k == 4 (mod 8) such that there is no other m such that (Z/mZ)* is isomorphic to (Z/kZ)*, where (Z/kZ)* is the multiplicative group of integers modulo k.

The programs for A372755, there is no canonical definition to state claims against.
-/

/-! ## A372755.P16615699633285741357

`∩[A073762(n+1), A319928(n+1)]`
-/

namespace A372755.P16615699633285741357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372755.P16615699633285741357

/-! ## A372755.P9132808818388737967

`filter[A319928(n+1), A168181(#)]`
-/

namespace A372755.P9132808818388737967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A372755.P9132808818388737967

/-! ## A372755.P9220642544098667580

`filter[A319928(n+1), A130198(#)]`
-/

namespace A372755.P9220642544098667580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130198 (f1 j).toNat = 1) n)

end

end A372755.P9220642544098667580

/-! ## A372755.P13206052816545746487

`filter[A319928(n+1), A131078(#)]`
-/

namespace A372755.P13206052816545746487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131078 (f1 j).toNat = 1) n)

end

end A372755.P13206052816545746487

/-! ## A372755.P4219787891032715118

`filter[A319928(n+1), A165211(#)]`
-/

namespace A372755.P4219787891032715118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165211 (f1 j).toNat = 1) n)

end

end A372755.P4219787891032715118

/-!
# A372756: 7th column of the 3-Zeckendorf array (A136189).

The programs for A372756, the canonical program `A372756.P16576302570727181633` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372756 has offset 1).

The definition of A372756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372756.P16576302570727181633

`3*A202342(n+1)+2*A136496(n+1)+4*A381841(n+1)-6`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A372756

/-- `3*A202342(n+1)+2*A136496(n+1)+4*A381841(n+1)-6` -/
def P16576302570727181633.Spec : Prop :=
  ∀ n, P16576302570727181633.a n = A372756 (n + 1)

theorem P16576302570727181633.correct : P16576302570727181633.Spec := by
  intro n
  simp only [A372756, Nat.add_sub_cancel]

end A372756

/-! ## A372756.P12463193654675073652

`A372752(n+1)+A372749(n+1)`
-/

namespace A372756.P12463193654675073652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372752 (n + 1) + A372749 (n + 1)

end

end A372756.P12463193654675073652

namespace A372756

/-- `A372752(n+1)+A372749(n+1)` -/
def P12463193654675073652.Spec : Prop :=
  ∀ n, P12463193654675073652.a n = A372756 (n + 1)

theorem P12463193654675073652.correct : P12463193654675073652.Spec := by
  intro n
  simp only [A372756, Nat.add_sub_cancel, A372756.P12463193654675073652.a, A372756.P16576302570727181633.a, A136496, A136496.P805941965056846939.a, A202342, A202342.P5796561117243952660.a, A372749, A372749.P13035462491583893748.a, A372752, A372752.P5687007721040332012.a, A381841, A381841.P11592063328882471830.a, A005374, A005374.P13862197180797613727.a, A136495, A136495.P596664169401550958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A372756

/-! ## A372756.P7545939964882815997

`A372757(n+1)-A372750(n+1)`
-/

namespace A372756.P7545939964882815997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372757 (n + 1) - A372750 (n + 1)

end

end A372756.P7545939964882815997

namespace A372756

/-- `A372757(n+1)-A372750(n+1)` -/
def P7545939964882815997.Spec : Prop :=
  ∀ n, P7545939964882815997.a n = A372756 (n + 1)

theorem P7545939964882815997.correct : P7545939964882815997.Spec := by
  intro n
  simp only [A372756, Nat.add_sub_cancel, A372756.P7545939964882815997.a, A372756.P16576302570727181633.a, A136496, A136496.P805941965056846939.a, A202342, A202342.P5796561117243952660.a, A372750, A372750.P11021400097773802461.a, A372757, A372757.P4399208571086954249.a, A381841, A381841.P11592063328882471830.a, A005374, A005374.P13862197180797613727.a, A136495, A136495.P596664169401550958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A372756

/-! ## A372756.P14707258125145468174

`A372757(n+1)-(A372749(n+1)+A064105(n+1))`
-/

namespace A372756.P14707258125145468174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372757 (n + 1) - (A372749 (n + 1) + A064105 (n + 1))

end

end A372756.P14707258125145468174

namespace A372756

/-- `A372757(n+1)-(A372749(n+1)+A064105(n+1))` -/
def P14707258125145468174.Spec : Prop :=
  ∀ n, P14707258125145468174.a n = A372756 (n + 1)

theorem P14707258125145468174.correct : P14707258125145468174.Spec := by
  intro n
  simp only [A372756, Nat.add_sub_cancel, A372756.P14707258125145468174.a, A372756.P16576302570727181633.a, A064105, A064105.P10505817968738943948.a, A136496, A136496.P805941965056846939.a, A202342, A202342.P5796561117243952660.a, A372749, A372749.P13035462491583893748.a, A372757, A372757.P4399208571086954249.a, A381841, A381841.P11592063328882471830.a, A005374, A005374.P13862197180797613727.a, A136495, A136495.P596664169401550958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A372756

/-! ## A372756.P9349120280150212425

`A064106(A064105(n+1))+1`
-/

namespace A372756.P9349120280150212425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064106 (A064105 (n + 1)).toNat + 1

end

end A372756.P9349120280150212425

namespace A372756

/-- `A064106(A064105(n+1))+1` -/
def P9349120280150212425.Spec : Prop :=
  ∀ n, P9349120280150212425.a n = A372756 (n + 1)

end A372756

/-! ## A372756.P5958286115914459852

`A381841(A064105(n+1))+A372749(n+1)`
-/

namespace A372756.P5958286115914459852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381841 (A064105 (n + 1)).toNat + A372749 (n + 1)

end

end A372756.P5958286115914459852

namespace A372756

/-- `A381841(A064105(n+1))+A372749(n+1)` -/
def P5958286115914459852.Spec : Prop :=
  ∀ n, P5958286115914459852.a n = A372756 (n + 1)

end A372756

/-! ## A372756.P17305555605382586753

`A372757(n+1)-A136496(A064105(n+1))`
-/

namespace A372756.P17305555605382586753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372757 (n + 1) - A136496 (A064105 (n + 1)).toNat

end

end A372756.P17305555605382586753

namespace A372756

/-- `A372757(n+1)-A136496(A064105(n+1))` -/
def P17305555605382586753.Spec : Prop :=
  ∀ n, P17305555605382586753.a n = A372756 (n + 1)

end A372756

/-! ## A372756.P1586619346629536166

`A381841(A064106(n+1))+1`
-/

namespace A372756.P1586619346629536166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381841 (A064106 (n + 1)).toNat + 1

end

end A372756.P1586619346629536166

namespace A372756

/-- `A381841(A064106(n+1))+1` -/
def P1586619346629536166.Spec : Prop :=
  ∀ n, P1586619346629536166.a n = A372756 (n + 1)

end A372756

/-! ## A372756.P16609115789716134516

`A136496(A372749(n+1))+2`
-/

namespace A372756.P16609115789716134516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136496 (A372749 (n + 1)).toNat + 2

end

end A372756.P16609115789716134516

namespace A372756

/-- `A136496(A372749(n+1))+2` -/
def P16609115789716134516.Spec : Prop :=
  ∀ n, P16609115789716134516.a n = A372756 (n + 1)

end A372756

/-! ## A372756.P2002259701505431844

`A202342(A372750(n+1))`
-/

namespace A372756.P2002259701505431844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (A372750 (n + 1)).toNat

end

end A372756.P2002259701505431844

namespace A372756

/-- `A202342(A372750(n+1))` -/
def P2002259701505431844.Spec : Prop :=
  ∀ n, P2002259701505431844.a n = A372756 (n + 1)

end A372756

/-! ## A372756.P579471298724082324

`A202342(A136496(A064105(n+1)))`
-/

namespace A372756.P579471298724082324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (A136496 (A064105 (n + 1)).toNat).toNat

end

end A372756.P579471298724082324

namespace A372756

/-- `A202342(A136496(A064105(n+1)))` -/
def P579471298724082324.Spec : Prop :=
  ∀ n, P579471298724082324.a n = A372756 (n + 1)

end A372756

/-! ## A372756.P8985713262080388278

`A202342(A202341(A064106(n+1)+n+1))`
-/

namespace A372756.P8985713262080388278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (A202341 (A064106 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A372756.P8985713262080388278

namespace A372756

/-- `A202342(A202341(A064106(n+1)+n+1))` -/
def P8985713262080388278.Spec : Prop :=
  ∀ n, P8985713262080388278.a n = A372756 (n + 1)

end A372756

/-! ## A372756.P16547797259153800410

`A202342(A372752(n+1)-A064106(n+1))`
-/

namespace A372756.P16547797259153800410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (A372752 (n + 1) - A064106 (n + 1)).toNat

end

end A372756.P16547797259153800410

namespace A372756

/-- `A202342(A372752(n+1)-A064106(n+1))` -/
def P16547797259153800410.Spec : Prop :=
  ∀ n, P16547797259153800410.a n = A372756 (n + 1)

end A372756

/-! ## A372756.P11788219060548814757

`A202342(A136496(A136496(A136495(n+1))))`
-/

namespace A372756.P11788219060548814757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (A136496 (A136496 (A136495 (n + 1)).toNat).toNat).toNat

end

end A372756.P11788219060548814757

namespace A372756

/-- `A202342(A136496(A136496(A136495(n+1))))` -/
def P11788219060548814757.Spec : Prop :=
  ∀ n, P11788219060548814757.a n = A372756 (n + 1)

end A372756

/-! ## A372756.P14733353116426817867

`A136495(A372752(n+1))`
-/

namespace A372756.P14733353116426817867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (A372752 (n + 1)).toNat

end

end A372756.P14733353116426817867

namespace A372756

/-- `A136495(A372752(n+1))` -/
def P14733353116426817867.Spec : Prop :=
  ∀ n, P14733353116426817867.a n = A372756 (n + 1)

end A372756

/-! ## A372756.P6021504078194326993

`A005374(A372757(n+1))`
-/

namespace A372756.P6021504078194326993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A372757 (n + 1)).toNat

end

end A372756.P6021504078194326993

namespace A372756

/-- `A005374(A372757(n+1))` -/
def P6021504078194326993.Spec : Prop :=
  ∀ n, P6021504078194326993.a n = A372756 (n + 1)

end A372756

/-! ## A372756.P18203809832775274812

`A372758(A372750(A372759(A020942(A381841(n+1)))))`
-/

namespace A372756.P18203809832775274812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372758 (A372750 (A372759 (A020942 (A381841 (n + 1)).toNat).toNat).toNat).toNat

end

end A372756.P18203809832775274812

namespace A372756

/-- `A372758(A372750(A372759(A020942(A381841(n+1)))))` -/
def P18203809832775274812.Spec : Prop :=
  ∀ n, P18203809832775274812.a n = A372756 (n + 1)

end A372756

/-!
# A372757: 8th column of the 3-Zeckendorf array (A136189).

The programs for A372757, the canonical program `A372757.P4399208571086954249` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372757 has offset 1).

The definition of A372757 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372757.P4399208571086954249

`4*A202342(n+1)+3*A136496(n+1)+6*A381841(n+1)-9`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A372757

/-- `4*A202342(n+1)+3*A136496(n+1)+6*A381841(n+1)-9` -/
def P4399208571086954249.Spec : Prop :=
  ∀ n, P4399208571086954249.a n = A372757 (n + 1)

theorem P4399208571086954249.correct : P4399208571086954249.Spec := by
  intro n
  simp only [A372757, Nat.add_sub_cancel]

end A372757

/-! ## A372757.P17648263194665394973

`A372756(n+1)+A372750(n+1)`
-/

namespace A372757.P17648263194665394973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372756 (n + 1) + A372750 (n + 1)

end

end A372757.P17648263194665394973

namespace A372757

/-- `A372756(n+1)+A372750(n+1)` -/
def P17648263194665394973.Spec : Prop :=
  ∀ n, P17648263194665394973.a n = A372757 (n + 1)

theorem P17648263194665394973.correct : P17648263194665394973.Spec := by
  intro n
  simp only [A372757, Nat.add_sub_cancel, A372757.P17648263194665394973.a, A372757.P4399208571086954249.a, A136496, A136496.P805941965056846939.a, A202342, A202342.P5796561117243952660.a, A372750, A372750.P11021400097773802461.a, A372756, A372756.P16576302570727181633.a, A381841, A381841.P11592063328882471830.a, A005374, A005374.P13862197180797613727.a, A136495, A136495.P596664169401550958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A372757

/-! ## A372757.P17058261698673192900

`A372752(n+1)+A372752(n+1)+A020942(n+1)`
-/

namespace A372757.P17058261698673192900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372752 (n + 1) + (A372752 (n + 1) + A020942 (n + 1))

end

end A372757.P17058261698673192900

namespace A372757

/-- `A372752(n+1)+A372752(n+1)+A020942(n+1)` -/
def P17058261698673192900.Spec : Prop :=
  ∀ n, P17058261698673192900.a n = A372757 (n + 1)

theorem P17058261698673192900.correct : P17058261698673192900.Spec := by
  intro n
  simp only [A372757, Nat.add_sub_cancel, A372757.P17058261698673192900.a, A372757.P4399208571086954249.a, A020942, A020942.P5836413996573018086.a, A136496, A136496.P805941965056846939.a, A202342, A202342.P5796561117243952660.a, A372752, A372752.P5687007721040332012.a, A381841, A381841.P11592063328882471830.a, A005374, A005374.P13862197180797613727.a, A136495, A136495.P596664169401550958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A372757

/-! ## A372757.P11823397264902330040

`A064106(A064106(n+1))+3`
-/

namespace A372757.P11823397264902330040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064106 (A064106 (n + 1)).toNat + 3

end

end A372757.P11823397264902330040

namespace A372757

/-- `A064106(A064106(n+1))+3` -/
def P11823397264902330040.Spec : Prop :=
  ∀ n, P11823397264902330040.a n = A372757 (n + 1)

end A372757

/-! ## A372757.P128999931913218481

`A372749(A064105(n+1))+2`
-/

namespace A372757.P128999931913218481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372749 (A064105 (n + 1)).toNat + 2

end

end A372757.P128999931913218481

namespace A372757

/-- `A372749(A064105(n+1))+2` -/
def P128999931913218481.Spec : Prop :=
  ∀ n, P128999931913218481.a n = A372757 (n + 1)

end A372757

/-! ## A372757.P5104469981175945087

`A136496(A372750(n+1))`
-/

namespace A372757.P5104469981175945087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136496 (A372750 (n + 1)).toNat

end

end A372757.P5104469981175945087

namespace A372757

/-- `A136496(A372750(n+1))` -/
def P5104469981175945087.Spec : Prop :=
  ∀ n, P5104469981175945087.a n = A372757 (n + 1)

end A372757

/-! ## A372757.P16477107088591711064

`A136496(A136496(A064105(n+1)))`
-/

namespace A372757.P16477107088591711064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136496 (A136496 (A064105 (n + 1)).toNat).toNat

end

end A372757.P16477107088591711064

namespace A372757

/-- `A136496(A136496(A064105(n+1)))` -/
def P16477107088591711064.Spec : Prop :=
  ∀ n, P16477107088591711064.a n = A372757 (n + 1)

end A372757

/-! ## A372757.P16685037601515080495

`A136496(A136496(A136496(A136495(n+1))))`
-/

namespace A372757.P16685037601515080495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136496 (A136496 (A136496 (A136495 (n + 1)).toNat).toNat).toNat

end

end A372757.P16685037601515080495

namespace A372757

/-- `A136496(A136496(A136496(A136495(n+1))))` -/
def P16685037601515080495.Spec : Prop :=
  ∀ n, P16685037601515080495.a n = A372757 (n + 1)

end A372757

/-! ## A372757.P15112790651163254665

`A136496(A136496(A005374(A005374(A372749(n+1)))))`
-/

namespace A372757.P15112790651163254665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136496 (A136496 (A005374 (A005374 (A372749 (n + 1)).toNat).toNat).toNat).toNat

end

end A372757.P15112790651163254665

namespace A372757

/-- `A136496(A136496(A005374(A005374(A372749(n+1)))))` -/
def P15112790651163254665.Spec : Prop :=
  ∀ n, P15112790651163254665.a n = A372757 (n + 1)

end A372757

/-! ## A372757.P1150416434511705520

`A202342(A372752(n+1))+1`
-/

namespace A372757.P1150416434511705520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (A372752 (n + 1)).toNat + 1

end

end A372757.P1150416434511705520

namespace A372757

/-- `A202342(A372752(n+1))+1` -/
def P1150416434511705520.Spec : Prop :=
  ∀ n, P1150416434511705520.a n = A372757 (n + 1)

end A372757

/-! ## A372757.P9046396647731655653

`A136496(A005374(A372752(n+1)))`
-/

namespace A372757.P9046396647731655653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136496 (A005374 (A372752 (n + 1)).toNat).toNat

end

end A372757.P9046396647731655653

namespace A372757

/-- `A136496(A005374(A372752(n+1)))` -/
def P9046396647731655653.Spec : Prop :=
  ∀ n, P9046396647731655653.a n = A372757 (n + 1)

end A372757

/-! ## A372757.P11183882676643196771

`A372756(n+1)+A005374(A372752(n+1))`
-/

namespace A372757.P11183882676643196771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372756 (n + 1) + A005374 (A372752 (n + 1)).toNat

end

end A372757.P11183882676643196771

namespace A372757

/-- `A372756(n+1)+A005374(A372752(n+1))` -/
def P11183882676643196771.Spec : Prop :=
  ∀ n, P11183882676643196771.a n = A372757 (n + 1)

end A372757

/-! ## A372757.P14964425763915130518

`A372750(n+1)+A136495(A372752(n+1))`
-/

namespace A372757.P14964425763915130518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372750 (n + 1) + A136495 (A372752 (n + 1)).toNat

end

end A372757.P14964425763915130518

namespace A372757

/-- `A372750(n+1)+A136495(A372752(n+1))` -/
def P14964425763915130518.Spec : Prop :=
  ∀ n, P14964425763915130518.a n = A372757 (n + 1)

end A372757

/-! ## A372757.P6263439447098472069

`A136495(A372756(n+1))+1`
-/

namespace A372757.P6263439447098472069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (A372756 (n + 1)).toNat + 1

end

end A372757.P6263439447098472069

namespace A372757

/-- `A136495(A372756(n+1))+1` -/
def P6263439447098472069.Spec : Prop :=
  ∀ n, P6263439447098472069.a n = A372757 (n + 1)

end A372757

/-! ## A372757.P15606063581583934070

`A372758(A136496(A372756(n+1)))`
-/

namespace A372757.P15606063581583934070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372758 (A136496 (A372756 (n + 1)).toNat).toNat

end

end A372757.P15606063581583934070

namespace A372757

/-- `A372758(A136496(A372756(n+1)))` -/
def P15606063581583934070.Spec : Prop :=
  ∀ n, P15606063581583934070.a n = A372757 (n + 1)

end A372757

/-!
# A372758: 5th prepended column of the 3-Zeckendorf array (A136189).

The programs for A372758, the canonical program `A372758.P14293302057458379432` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372758 has offset 1).

The definition of A372758 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372758.P14293302057458379432

`A005374(A005374(n))+1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A372758

/-- `A005374(A005374(n))+1` -/
def P14293302057458379432.Spec : Prop :=
  ∀ n, P14293302057458379432.a n = A372758 (n + 1)

theorem P14293302057458379432.correct : P14293302057458379432.Spec := by
  intro n
  simp only [A372758, Nat.add_sub_cancel]

end A372758

/-! ## A372758.P3390158305208427598

`∑[runs[n-a(a(a(n-1)))]]-n` with `a(0)=0`
-/

namespace A372758.P3390158305208427598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (n : ℤ) - f2 (f2 (f2 (n - 1)).toNat).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A372758.P3390158305208427598

namespace A372758

/-- `∑[runs[n-a(a(a(n-1)))]]-n` -/
def P3390158305208427598.Spec : Prop :=
  ∀ n, P3390158305208427598.a n = A372758 (n + 1)

end A372758

/-! ## A372758.P7495843721007958222

`∑[A202340(n)]-n`
-/

namespace A372758.P7495843721007958222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A372758.P7495843721007958222

namespace A372758

/-- `∑[A202340(n)]-n` -/
def P7495843721007958222.Spec : Prop :=
  ∀ n, P7495843721007958222.a n = A372758 (n + 1)

end A372758

/-! ## A372758.P2433257029454315491

`A136495(1+n)-n`
-/

namespace A372758.P2433257029454315491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (1 + n) - (n : ℤ)

end

end A372758.P2433257029454315491

namespace A372758

/-- `A136495(1+n)-n` -/
def P2433257029454315491.Spec : Prop :=
  ∀ n, P2433257029454315491.a n = A372758 (n + 1)

end A372758

/-! ## A372758.P16034329476896615848

`∑[char[A202342(n+1)]]+1`
-/

namespace A372758.P16034329476896615848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A372758.P16034329476896615848

namespace A372758

/-- `∑[char[A202342(n+1)]]+1` -/
def P16034329476896615848.Spec : Prop :=
  ∀ n, (P16034329476896615848.a n : ℤ) = A372758 (n + 1)

end A372758

/-! ## A372758.P13253890697604287392

`A001489(n)+∑[A202340(n)]`
-/

namespace A372758.P13253890697604287392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372758.P13253890697604287392

namespace A372758

/-- `A001489(n)+∑[A202340(n)]` -/
def P13253890697604287392.Spec : Prop :=
  ∀ n, P13253890697604287392.a n = A372758 (n + 1)

end A372758

/-! ## A372758.P11031189887416422475

`A064106(n+1)-2*A020942(n+1)`
-/

namespace A372758.P11031189887416422475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064106 (n + 1) - 2 * A020942 (n + 1)

end

end A372758.P11031189887416422475

namespace A372758

/-- `A064106(n+1)-2*A020942(n+1)` -/
def P11031189887416422475.Spec : Prop :=
  ∀ n, P11031189887416422475.a n = A372758 (n + 1)

end A372758

/-! ## A372758.P8214228257513324850

`A064105(n+1)-(A020942(n+1)+n)`
-/

namespace A372758.P8214228257513324850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064105 (n + 1) - (A020942 (n + 1) + (n : ℤ))

end

end A372758.P8214228257513324850

namespace A372758

/-- `A064105(n+1)-(A020942(n+1)+n)` -/
def P8214228257513324850.Spec : Prop :=
  ∀ n, P8214228257513324850.a n = A372758 (n + 1)

theorem P8214228257513324850.correct : P8214228257513324850.Spec := by
  intro n
  simp only [A372758, Nat.add_sub_cancel, A372758.P8214228257513324850.a, A372758.P14293302057458379432.a, A005374, A005374.P13862197180797613727.a, A020942, A020942.P5836413996573018086.a, A064105, A064105.P10505817968738943948.a, A136496, A136496.P805941965056846939.a, A381841, A381841.P11592063328882471830.a, A136495, A136495.P596664169401550958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A372758

/-! ## A372758.P5206541162754145844

`A381841(n+1)-(A136496(n+1)+n)`
-/

namespace A372758.P5206541162754145844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381841 (n + 1) - (A136496 (n + 1) + (n : ℤ))

end

end A372758.P5206541162754145844

namespace A372758

/-- `A381841(n+1)-(A136496(n+1)+n)` -/
def P5206541162754145844.Spec : Prop :=
  ∀ n, P5206541162754145844.a n = A372758 (n + 1)

theorem P5206541162754145844.correct : P5206541162754145844.Spec := by
  intro n
  simp only [A372758, Nat.add_sub_cancel, A372758.P5206541162754145844.a, A372758.P14293302057458379432.a, A005374, A005374.P13862197180797613727.a, A136496, A136496.P805941965056846939.a, A381841, A381841.P11592063328882471830.a, A136495, A136495.P596664169401550958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A372758

/-! ## A372758.P16881680851648330852

`A372759(A381841(n+1))-n`
-/

namespace A372758.P16881680851648330852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372759 (A381841 (n + 1)).toNat - (n : ℤ)

end

end A372758.P16881680851648330852

namespace A372758

/-- `A372759(A381841(n+1))-n` -/
def P16881680851648330852.Spec : Prop :=
  ∀ n, P16881680851648330852.a n = A372758 (n + 1)

end A372758

/-! ## A372758.P11968909987592788070

`A226250(n+1)-2*n`
-/

namespace A372758.P11968909987592788070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226250 (n + 1) - (2 * n : ℤ)

end

end A372758.P11968909987592788070

namespace A372758

/-- `A226250(n+1)-2*n` -/
def P11968909987592788070.Spec : Prop :=
  ∀ n, P11968909987592788070.a n = A372758 (n + 1)

theorem P11968909987592788070.correct : P11968909987592788070.Spec := by
  intro n
  simp only [A372758, Nat.add_sub_cancel, A372758.P11968909987592788070.a, A372758.P14293302057458379432.a, A005374, A005374.P13862197180797613727.a, A226250, A226250.P13657873324624354211.a, A136495, A136495.P596664169401550958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A372758

/-!
# A372759: 6th prepended column of the 3-Zeckendorf array (A136189).

The programs for A372759, the canonical program `A372759.P7891414057766909784` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372759 has offset 1).

The definition of A372759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372759.P7891414057766909784

`n-A005374(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A372759

/-- `n-A005374(n)` -/
def P7891414057766909784.Spec : Prop :=
  ∀ n, P7891414057766909784.a n = A372759 (n + 1)

theorem P7891414057766909784.correct : P7891414057766909784.Spec := by
  intro n
  simp only [A372759, Nat.add_sub_cancel]

end A372759

/-! ## A372759.P10903165806671378723

`∑[char[A136496(1+n)]]`
-/

namespace A372759.P10903165806671378723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136496 (1 + n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372759.P10903165806671378723

namespace A372759

/-- `∑[char[A136496(1+n)]]` -/
def P10903165806671378723.Spec : Prop :=
  ∀ n, (P10903165806671378723.a n : ℤ) = A372759 (n + 1)

end A372759

/-! ## A372759.P1824219392754565312

`n-∑[char[∑[A202340(n)]]]`
-/

namespace A372759.P1824219392754565312
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A372759.P1824219392754565312

namespace A372759

/-- `n-∑[char[∑[A202340(n)]]]` -/
def P1824219392754565312.Spec : Prop :=
  ∀ n, P1824219392754565312.a n = A372759 (n + 1)

end A372759

/-! ## A372759.P6359582024551295893

`∑[char[A020942(n+1)+1]]`
-/

namespace A372759.P6359582024551295893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020942 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372759.P6359582024551295893

namespace A372759

/-- `∑[char[A020942(n+1)+1]]` -/
def P6359582024551295893.Spec : Prop :=
  ∀ n, (P6359582024551295893.a n : ℤ) = A372759 (n + 1)

end A372759

/-! ## A372759.P2065462224579346015

`n-∑[char[A136495(n+1)]]`
-/

namespace A372759.P2065462224579346015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A372759.P2065462224579346015

namespace A372759

/-- `n-∑[char[A136495(n+1)]]` -/
def P2065462224579346015.Spec : Prop :=
  ∀ n, P2065462224579346015.a n = A372759 (n + 1)

end A372759

/-! ## A372759.P16485590192649377355

`comp[A288696(2*n+1)]-n`
-/

namespace A372759.P16485590192649377355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288696 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A372759.P16485590192649377355

namespace A372759

/-- `comp[A288696(2*n+1)]-n` -/
def P16485590192649377355.Spec : Prop :=
  ∀ n, P16485590192649377355.a n = A372759 (n + 1)

end A372759

/-! ## A372759.P7010761388589961566

`A064105(n+1)%A202342(n+1)`
-/

namespace A372759.P7010761388589961566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064105 (n + 1)) (A202342 (n + 1))

end

end A372759.P7010761388589961566

namespace A372759

/-- `A064105(n+1)%A202342(n+1)` -/
def P7010761388589961566.Spec : Prop :=
  ∀ n, P7010761388589961566.a n = A372759 (n + 1)

end A372759

/-! ## A372759.P3921817419279946749

`A064106(n+1)%A202342(n+1)`
-/

namespace A372759.P3921817419279946749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064106 (n + 1)) (A202342 (n + 1))

end

end A372759.P3921817419279946749

namespace A372759

/-- `A064106(n+1)%A202342(n+1)` -/
def P3921817419279946749.Spec : Prop :=
  ∀ n, P3921817419279946749.a n = A372759 (n + 1)

end A372759

/-! ## A372759.P9082153791121507419

`n-A165565(3*n)/3`
-/

namespace A372759.P9082153791121507419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A165565 (3 * n) : ℚ) / 3

end

end A372759.P9082153791121507419

namespace A372759

/-- `n-A165565(3*n)/3` -/
def P9082153791121507419.Spec : Prop :=
  ∀ n, P9082153791121507419.a n = (A372759 (n + 1) : ℚ)

end A372759

/-! ## A372759.P15893775972621428541

`A226250(n+1)-A202342(n+1)`
-/

namespace A372759.P15893775972621428541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226250 (n + 1) - A202342 (n + 1)

end

end A372759.P15893775972621428541

namespace A372759

/-- `A226250(n+1)-A202342(n+1)` -/
def P15893775972621428541.Spec : Prop :=
  ∀ n, P15893775972621428541.a n = A372759 (n + 1)

end A372759

/-!
# A372760: 2nd row of the 3-Zeckendorf array (A136189), including prepended terms.

The programs for A372760, there is no canonical definition to state claims against.
-/

/-! ## A372760.P10351387311704478624

`ogf((-2x+x^2)/(-1+x+x^3))`
-/

namespace A372760.P10351387311704478624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1] [1, -1, 0, -1] n

end

end A372760.P10351387311704478624

/-! ## A372760.P8627913369102452203

`a(n-1)+a(n-3)` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A372760.P8627913369102452203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  a (n - 1) + a (n - 3)

end

end A372760.P8627913369102452203

/-! ## A372760.P676798426422698424

`a(n-1)-floor(-a(n-3))` with `a(0)=0, a(1)=2, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A372760.P676798426422698424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  a (n - 1) - (-a (n - 3))

end

end A372760.P676798426422698424

/-! ## A372760.P14489910461487016807

`a(n-1)-ceil(-a(n-3))` with `a(0)=0, a(1)=2, a(2)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A372760.P14489910461487016807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  a (n - 1) - (-a (n - 3))

end

end A372760.P14489910461487016807

/-! ## A372760.P13440664566373516714

`a(n-1)-round(-a(n-3))` with `a(0)=0, a(1)=2, a(2)=1`

`round` is left out, it is the identity on integers.
-/

namespace A372760.P13440664566373516714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  a (n - 1) - (-a (n - 3))

end

end A372760.P13440664566373516714

/-! ## A372760.P17458460543479040354

`a(n-1)-(a(n-5)-a(n-2))` with `a(0)=0, a(1)=2, a(2)=1, a(3)=1, a(4)=3`
-/

namespace A372760.P17458460543479040354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1, 1, 3] fun n a =>
  a (n - 1) - (a (n - 5) - a (n - 2))

end

end A372760.P17458460543479040354

/-! ## A372760.P10884484535940052741

`A135851(n+1)+A078012(n+2)`
-/

namespace A372760.P10884484535940052741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 1) + A078012 (n + 2)

end

end A372760.P10884484535940052741

/-! ## A372760.P5694473053901000355

`A277253(n+2)-A107458(n+1)`
-/

namespace A372760.P5694473053901000355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277253 (n + 2) - A107458 (n + 1)

end

end A372760.P5694473053901000355

/-! ## A372760.P194210113900783795

`A013979(n+1)+A135851(n+1)-A107458(n+1)`
-/

namespace A372760.P194210113900783795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 (n + 1) + (A135851 (n + 1) - A107458 (n + 1))

end

end A372760.P194210113900783795

/-! ## A372760.P17568380755055765219

`A097333(n)-A058278(n+1)`
-/

namespace A372760.P17568380755055765219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 n - A058278 (n + 1)

end

end A372760.P17568380755055765219

/-! ## A372760.P18247242707361211642

`A097333(n)-(A078012(n+1)+A078012(n))`
-/

namespace A372760.P18247242707361211642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 n - (A078012 (n + 1) + A078012 n)

end

end A372760.P18247242707361211642

/-! ## A372760.P6074528079885344647

`A097333(n)-Δ[A097333(n)]`
-/

namespace A372760.P6074528079885344647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 n - (f1 (n + 1) - f1 n)

end

end A372760.P6074528079885344647

/-! ## A372760.P2116090554706573276

`A097333(n)+A097333(n)-A097333(n+1)`
-/

namespace A372760.P2116090554706573276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 n + (A097333 n - A097333 (n + 1))

end

end A372760.P2116090554706573276

/-! ## A372760.P5014870983549342589

`A068921(n+1)+A135851(n+1)-A068921(n)`
-/

namespace A372760.P5014870983549342589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 1) + (A135851 (n + 1) - A068921 n)

end

end A372760.P5014870983549342589

/-! ## A372760.P8199916536216191204

`A068921(n+1)-(A277253(n+1)+A277253(n))`
-/

namespace A372760.P8199916536216191204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 1) - (A277253 (n + 1) + A277253 n)

end

end A372760.P8199916536216191204

/-! ## A372760.P2673869322237479969

`Δ[A196382(n+1)]`
-/

namespace A372760.P2673869322237479969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A372760.P2673869322237479969

/-! ## A372760.P13888168776719464487

`Δ[A179070(n+2)]`
-/

namespace A372760.P13888168776719464487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179070 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A372760.P13888168776719464487

/-! ## A372760.P11149542886534404519

`A196382(n+2)-A196382(n+1)`
-/

namespace A372760.P11149542886534404519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196382 (n + 2) - A196382 (n + 1)

end

end A372760.P11149542886534404519

/-! ## A372760.P9540245928226719265

`A179070(n+3)-A179070(n+2)`
-/

namespace A372760.P9540245928226719265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179070 (n + 3) - A179070 (n + 2)

end

end A372760.P9540245928226719265

/-! ## A372760.P17647386598036483624

`Δ[A078012(n+1)+A000930(n+1)]`
-/

namespace A372760.P17647386598036483624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 1) + A000930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A372760.P17647386598036483624

/-!
# A372763: Denominator of the continued fraction 1/(2-3/(3-4/(4-5/(...(n-1)-n/(n+5))))).

The programs for A372763, there is no canonical definition to state claims against.
-/

/-! ## A372763.P9645047908914274508

`A324371(Δ[A140678(n)]²)`
-/

namespace A372763.P9645047908914274508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324371 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A372763.P9645047908914274508

/-! ## A372763.P13714022495953933391

`A324371(A016777(2*(n+2))²)`
-/

namespace A372763.P13714022495953933391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324371 (A016777 (2 * (n + 2)) ^ 2).toNat

end

end A372763.P13714022495953933391

/-! ## A372763.P3891250261437798284

`A162323(A016777(2*(n+2)))`
-/

namespace A372763.P3891250261437798284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162323 (A016777 (2 * (n + 2))).toNat

end

end A372763.P3891250261437798284

/-! ## A372763.P17237550862087726827

`A006530(4*A016934(2*(n+2)))`
-/

namespace A372763.P17237550862087726827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (4 * A016934 (2 * (n + 2))).toNat

end

end A372763.P17237550862087726827

/-!
# A372764: Number of partitions of [n] having exactly two blocks of minimal size.

The programs for A372764, there is no canonical definition to state claims against.
-/

/-! ## A372764.P6364401137756464990

`A372762(A133263(n))`
-/

namespace A372764.P6364401137756464990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372762 (A133263 n).toNat

end

end A372764.P6364401137756464990

/-! ## A372764.P17472031329117462925

`A372762(A238531(n+1))`
-/

namespace A372764.P17472031329117462925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372762 (A238531 (n + 1)).toNat

end

end A372764.P17472031329117462925

/-! ## A372764.P15971580795574761662

`A372762(A179865(n+1)+2)`
-/

namespace A372764.P15971580795574761662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372762 (A179865 (n + 1) + 2).toNat

end

end A372764.P15971580795574761662

/-!
# A372768: The number of shaded cells in all compositions of n when light shines from the northwest. Here compositions are represented by stacked columns of adjacent cells.

The programs for A372768, there is no canonical definition to state claims against.
-/

/-! ## A372768.P5384180093932871676

`A071842(A192697(n+1))`
-/

namespace A372768.P5384180093932871676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071842 (A192697 (n + 1)).toNat

end

end A372768.P5384180093932871676

/-! ## A372768.P5822299515406178609

`A265370(A298646(n+2))`
-/

namespace A372768.P5822299515406178609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 (A298646 (n + 2)).toNat

end

end A372768.P5822299515406178609

/-! ## A372768.P12700370978258211549

`A052749(n)+A003313(A001515(n))`
-/

namespace A372768.P12700370978258211549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052749 n + A003313 (A001515 n).toNat

end

end A372768.P12700370978258211549

/-!
# A372770: Primes in A284798.

The programs for A372770, there is no canonical definition to state claims against.
-/

/-! ## A372770.P15597132772378364770

`p?[A284798(n+1)]`
-/

namespace A372770.P15597132772378364770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A372770.P15597132772378364770

/-! ## A372770.P9584544796774893248

`filter[A284798(n+1), A010051(#)]`
-/

namespace A372770.P9584544796774893248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A372770.P9584544796774893248

/-! ## A372770.P1693261246428283380

`filter[A284798(n+1), A353817(#)]`
-/

namespace A372770.P1693261246428283380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A372770.P1693261246428283380

/-! ## A372770.P11958876386871470750

`filter[A284798(n+1), A354031(#)]`
-/

namespace A372770.P11958876386871470750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354031 (f1 j).toNat = 1) n)

end

end A372770.P11958876386871470750

/-! ## A372770.P9656276768152347826

`filter[A284798(n+2), A353787(#)]`
-/

namespace A372770.P9656276768152347826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284798 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A372770.P9656276768152347826

/-!
# A372771: Numbers m such that the congruence x^(m+1) == m (mod m+1) is solvable.

The programs for A372771, the canonical program `A372771.P4411749344407229713` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372771 has offset 1).

The definition of A372771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372771.P4411749344407229713

`comp[A004273(comp[A004613(n+1)])]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A372771

/-- `comp[A004273(comp[A004613(n+1)])]` -/
def P4411749344407229713.Spec : Prop :=
  ∀ n, (P4411749344407229713.a n : ℤ) = A372771 (n + 1)

theorem P4411749344407229713.correct : P4411749344407229713.Spec := by
  intro n
  simp only [A372771, Nat.add_sub_cancel]

end A372771

/-! ## A372771.P13319366987710063070

`A196499(n+2)-1`
-/

namespace A372771.P13319366987710063070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196499 (n + 2) - 1

end

end A372771.P13319366987710063070

namespace A372771

/-- `A196499(n+2)-1` -/
def P13319366987710063070.Spec : Prop :=
  ∀ n, P13319366987710063070.a n = A372771 (n + 1)

end A372771

/-! ## A372771.P6230756231050423000

`∑[A000027(Δ[A196499(n+1)])]`
-/

namespace A372771.P6230756231050423000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196499 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372771.P6230756231050423000

namespace A372771

/-- `∑[A000027(Δ[A196499(n+1)])]` -/
def P6230756231050423000.Spec : Prop :=
  ∀ n, P6230756231050423000.a n = A372771 (n + 1)

end A372771

/-! ## A372771.P14819772286857277167

`comp[A004273(comp[A170818(n+1)])]`
-/

namespace A372771.P14819772286857277167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A372771.P14819772286857277167

namespace A372771

/-- `comp[A004273(comp[A170818(n+1)])]` -/
def P14819772286857277167.Spec : Prop :=
  ∀ n, (P14819772286857277167.a n : ℤ) = A372771 (n + 1)

end A372771

/-! ## A372771.P3501834953870487132

`A023443(A196499(n+2))`
-/

namespace A372771.P3501834953870487132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A196499 (n + 2)).toNat

end

end A372771.P3501834953870487132

namespace A372771

/-- `A023443(A196499(n+2))` -/
def P3501834953870487132.Spec : Prop :=
  ∀ n, P3501834953870487132.a n = A372771 (n + 1)

end A372771

/-! ## A372771.P14524241781146233129

`lt[A135534(n+1), A002884(A000095(n+1))]`
-/

namespace A372771.P14524241781146233129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002884 (A000095 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A372771.P14524241781146233129

namespace A372771

/-- `lt[A135534(n+1), A002884(A000095(n+1))]` -/
def P14524241781146233129.Spec : Prop :=
  ∀ n, (P14524241781146233129.a n : ℤ) = A372771 (n + 1)

end A372771

/-! ## A372771.P8102951485236539155

`lt[A334659(A065338(n+1)), A193356(n+1)]`
-/

namespace A372771.P8102951485236539155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334659 (A065338 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A372771.P8102951485236539155

namespace A372771

/-- `lt[A334659(A065338(n+1)), A193356(n+1)]` -/
def P8102951485236539155.Spec : Prop :=
  ∀ n, (P8102951485236539155.a n : ℤ) = A372771 (n + 1)

end A372771

/-! ## A372771.P11983271262335721528

`lt[A380340(A065338(n+1)), A020639(3*n+1)]`
-/

namespace A372771.P11983271262335721528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380340 (A065338 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A372771.P11983271262335721528

namespace A372771

/-- `lt[A380340(A065338(n+1)), A020639(3*n+1)]` -/
def P11983271262335721528.Spec : Prop :=
  ∀ n, (P11983271262335721528.a n : ℤ) = A372771 (n + 1)

end A372771

/-!
# A372772: a(n) is the number of divisors d of n such that d^n mod n = k, where k is also a divisor of n.

The programs for A372772, there is no canonical definition to state claims against.
-/

/-! ## A372772.P17820669822633410855

`A235791(A324191(n+1))%A062860(n)`
-/

namespace A372772.P17820669822633410855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235791 (A324191 (n + 1)).toNat) (A062860 n)

end

end A372772.P17820669822633410855

/-! ## A372772.P3759631977574258636

`A002828(A324191(n+1)%A273237(3*n+1))`
-/

namespace A372772.P3759631977574258636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (Int.tmod (A324191 (n + 1)) (A273237 (3 * n + 1))).toNat

end

end A372772.P3759631977574258636

/-! ## A372772.P2974967822385500495

`gcd(A000720(A106442(3*n+1)), A341596(n+1))`
-/

namespace A372772.P2974967822385500495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000720 (A106442 (3 * n + 1)).toNat) (A341596 (n + 1))

end

end A372772.P2974967822385500495

/-! ## A372772.P15575908223956870929

`A071625(5^∑{e}[n+1, #]*gcd(n+1, (n+13)^9))`
-/

namespace A372772.P15575908223956870929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (5 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * Nat.gcd (n + 1) ((n + 13) ^ 9))

end

end A372772.P15575908223956870929

/-! ## A372772.P8715916427022668073

`A071625(A166626(n+1))`
-/

namespace A372772.P8715916427022668073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A166626 (n + 1)).toNat

end

end A372772.P8715916427022668073

/-!
# A372779: Numbers m such that v^n - u^m < u^(m+1) - v^n, where u=2, v=3, and u^m < v^n < u^(m+1).

The programs for A372779, there is no canonical definition to state claims against.
-/

/-! ## A372779.P3144711694944075972

`comp[floor(n*log2(3))]-n`
-/

namespace A372779.P3144711694944075972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (3 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A372779.P3144711694944075972

/-! ## A372779.P4327821261561093956

`ceil((n+1)/sin(5/8))`
-/

namespace A372779.P4327821261561093956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.sin ((5 : ℚ) / 8 : ℝ)⌉

end

end A372779.P4327821261561093956

/-! ## A372779.P9196317559541238777

`abs(xor(floor((n+1)/(log2(3)-1)), -1))`
-/

namespace A372779.P9196317559541238777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ⌊(n + 1 : ℝ) / (Real.logb 2 (3 : ℝ) - 1)⌋ (-1)|

end

end A372779.P9196317559541238777

/-! ## A372779.P5595069084926752383

`-xor(floor((n+1)/(log2(3)-1)), -1)`
-/

namespace A372779.P5595069084926752383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ⌊(n + 1 : ℝ) / (Real.logb 2 (3 : ℝ) - 1)⌋ (-1)

end

end A372779.P5595069084926752383

/-! ## A372779.P15789130474924800195

`abs(comp[A056576(n)]-n)`
-/

namespace A372779.P15789130474924800195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)|

end

end A372779.P15789130474924800195

/-! ## A372779.P4690694795270825057

`abs(A117630(n+1)-n)`
-/

namespace A372779.P4690694795270825057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117630 (n + 1) - (n : ℤ)|

end

end A372779.P4690694795270825057

/-! ## A372779.P1489392162005199480

`A023443(A185050(n))`
-/

namespace A372779.P1489392162005199480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A185050 n).toNat

end

end A372779.P1489392162005199480

/-! ## A372779.P5342184607936683928

`A020915(A022843(n+1))`
-/

namespace A372779.P5342184607936683928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A022843 (n + 1)).toNat

end

end A372779.P5342184607936683928

/-! ## A372779.P9409148186903536797

`A020915(A054414(n+1))`
-/

namespace A372779.P9409148186903536797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A054414 (n + 1)).toNat

end

end A372779.P9409148186903536797

/-! ## A372779.P3442293002193882715

`A020915(A117630(n+1))`
-/

namespace A372779.P3442293002193882715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A117630 (n + 1)).toNat

end

end A372779.P3442293002193882715

/-!
# A372780: Numbers m such that v^n - u^m >= u^(m+1) - v^n, where u=2, v=3, and u^m < v^n < u^(m+1).

The programs for A372780, there is no canonical definition to state claims against.
-/

/-! ## A372780.P10112607994763804036

`ceil(comp[ceil(2*n/log2(3))]/2)`
-/

namespace A372780.P10112607994763804036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) / Real.logb 2 (3 : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2⌉

end

end A372780.P10112607994763804036

/-! ## A372780.P11179233720621381633

`round(A367085(n)/2)`
-/

namespace A372780.P11179233720621381633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A367085 n : ℚ) / 2)

end

end A372780.P11179233720621381633

/-! ## A372780.P1149257222116809011

`A172267(n)+Δ[n²]`
-/

namespace A372780.P1149257222116809011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172267 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A372780.P1149257222116809011

/-! ## A372780.P14253004784366494377

`comp[A325913(n+1)]+1`
-/

namespace A372780.P14253004784366494377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A372780.P14253004784366494377

/-! ## A372780.P6061203989160590392

`comp[A185050(n)-2]+1`
-/

namespace A372780.P6061203989160590392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185050 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A372780.P6061203989160590392

/-! ## A372780.P14602248612383467137

`record[(n+1)/A022921(n)]`
-/

namespace A372780.P14602248612383467137
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A022921 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372780.P14602248612383467137

/-! ## A372780.P2867031204950061840

`(A237514(n+1)+n+1)/2`
-/

namespace A372780.P2867031204950061840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237514 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A372780.P2867031204950061840

/-! ## A372780.P8834527540122247734

`comp[A117630(n+1)-(n+1)]+1`
-/

namespace A372780.P8834527540122247734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117630 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A372780.P8834527540122247734

/-! ## A372780.P7026289100313498371

`A065033(A367085(n))`
-/

namespace A372780.P7026289100313498371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A367085 n).toNat

end

end A372780.P7026289100313498371

/-! ## A372780.P14208666518231840652

`A020915(A237514(n+1))`
-/

namespace A372780.P14208666518231840652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A237514 (n + 1)).toNat

end

end A372780.P14208666518231840652

/-!
# A372781: Odd numbers k such that A001221(k) < A001221(A003958(k)).

The programs for A372781, there is no canonical definition to state claims against.
-/

/-! ## A372781.P5888679447002193940

`eq[A151665(n), A340734(n)]`
-/

namespace A372781.P5888679447002193940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151665 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340734 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372781.P5888679447002193940

/-! ## A372781.P1844165640743202250

`eq[A151673(n), A340734(n)]`
-/

namespace A372781.P1844165640743202250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340734 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372781.P1844165640743202250

/-! ## A372781.P12936803571574729216

`eq[A175372(n), A340734(n)]`
-/

namespace A372781.P12936803571574729216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175372 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340734 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372781.P12936803571574729216

/-! ## A372781.P6351836133605847487

`eq[A205987(n), A340734(n)]`
-/

namespace A372781.P6351836133605847487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340734 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372781.P6351836133605847487

/-! ## A372781.P6506466556880071559

`∩[A091901(n+1), A292315(n+1)]`
-/

namespace A372781.P6506466556880071559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372781.P6506466556880071559

/-!
# A372782: Least number m for which there exists some positive k < m where the sum of the integers from k + 1 to m inclusive is an n-th power > 1.

The programs for A372782, the canonical program `A372782.P2066922359417383815` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372782 has offset 1).

The definition of A372782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372782.P10865104910716820686

`ogf((2+2x-3x^2)/(1-x-3x^2+3x^3))`
-/

namespace A372782.P10865104910716820686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, -3] [1, -1, -3, 3] n

end

end A372782.P10865104910716820686

namespace A372782

/-- `ogf((2+2x-3x^2)/(1-x-3x^2+3x^3))` -/
def P10865104910716820686.Spec : Prop :=
  ∀ n, P10865104910716820686.a n = A372782 (n + 1)

end A372782

/-! ## A372782.P2066922359417383815

`3*a(n-2)+1` with `a(0)=2, a(1)=4`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A372782

/-- `3*a(n-2)+1` -/
def P2066922359417383815.Spec : Prop :=
  ∀ n, (P2066922359417383815.a n : ℤ) = A372782 (n + 1)

theorem P2066922359417383815.correct : P2066922359417383815.Spec := by
  intro n
  simp only [A372782, Nat.add_sub_cancel]

end A372782

/-! ## A372782.P13630321050441769954

`A087503(n)+1`
-/

namespace A372782.P13630321050441769954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087503 n + 1

end

end A372782.P13630321050441769954

namespace A372782

/-- `A087503(n)+1` -/
def P13630321050441769954.Spec : Prop :=
  ∀ n, P13630321050441769954.a n = A372782 (n + 1)

end A372782

/-! ## A372782.P3628951631849802941

`∑[ogf((2+2x-3x^2)/(1-3x^2))]`
-/

namespace A372782.P3628951631849802941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, -3] [1, 0, -3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372782.P3628951631849802941

namespace A372782

/-- `∑[ogf((2+2x-3x^2)/(1-3x^2))]` -/
def P3628951631849802941.Spec : Prop :=
  ∀ n, P3628951631849802941.a n = A372782 (n + 1)

end A372782

/-! ## A372782.P14142643441012258819

`1+3*a(n-2)` with `a(0)=2, a(1)=4`
-/

namespace A372782.P14142643441012258819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  1 + 3 * a (n - 2)

end

end A372782.P14142643441012258819

namespace A372782

/-- `1+3*a(n-2)` -/
def P14142643441012258819.Spec : Prop :=
  ∀ n, (P14142643441012258819.a n : ℤ) = A372782 (n + 1)

theorem P14142643441012258819.correct : P14142643441012258819.Spec := by
  intro n
  simp only [A372782, Nat.add_sub_cancel, A372782.P14142643441012258819.a, A372782.P2066922359417383815.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A372782

/-! ## A372782.P12265097789400313499

`lcm(3, a(n-2))+1` with `a(0)=2, a(1)=4`
-/

namespace A372782.P12265097789400313499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  Nat.lcm 3 (a (n - 2)) + 1

end

end A372782.P12265097789400313499

namespace A372782

/-- `lcm(3, a(n-2))+1` -/
def P12265097789400313499.Spec : Prop :=
  ∀ n, (P12265097789400313499.a n : ℤ) = A372782 (n + 1)

end A372782

/-! ## A372782.P16034272995057715307

`∑[3*a(n-2)]` with `a(0)=2, a(1)=2, a(2)=3`
-/

namespace A372782.P16034272995057715307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 3] fun n f1 =>
  3 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372782.P16034272995057715307

namespace A372782

/-- `∑[3*a(n-2)]` -/
def P16034272995057715307.Spec : Prop :=
  ∀ n, (P16034272995057715307.a n : ℤ) = A372782 (n + 1)

end A372782

/-! ## A372782.P15137166644468079366

`4-3*(1-a(n-2))` with `a(0)=2, a(1)=4`
-/

namespace A372782.P15137166644468079366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  4 - 3 * (1 - a (n - 2))

end

end A372782.P15137166644468079366

namespace A372782

/-- `4-3*(1-a(n-2))` -/
def P15137166644468079366.Spec : Prop :=
  ∀ n, P15137166644468079366.a n = A372782 (n + 1)

end A372782

/-! ## A372782.P4960219622461315076

`a(n-2)/(1-2/3)+1` with `a(0)=2, a(1)=4`
-/

namespace A372782.P4960219622461315076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 2) / (1 - (2 : ℚ) / 3) + 1

end

end A372782.P4960219622461315076

namespace A372782

/-- `a(n-2)/(1-2/3)+1` -/
def P4960219622461315076.Spec : Prop :=
  ∀ n, P4960219622461315076.a n = (A372782 (n + 1) : ℚ)

end A372782

/-! ## A372782.P6096964013508865183

`1-a(n-2)/(2/3-1)` with `a(0)=2, a(1)=4`
-/

namespace A372782.P6096964013508865183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 4] fun n a =>
  1 - a (n - 2) / ((2 : ℚ) / 3 - 1)

end

end A372782.P6096964013508865183

namespace A372782

/-- `1-a(n-2)/(2/3-1)` -/
def P6096964013508865183.Spec : Prop :=
  ∀ n, P6096964013508865183.a n = (A372782 (n + 1) : ℚ)

end A372782

/-! ## A372782.P13723173653152405136

`a(n-2)+a(n-2)+a(n-2)+1` with `a(0)=2, a(1)=4`
-/

namespace A372782.P13723173653152405136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) + 1))

end

end A372782.P13723173653152405136

namespace A372782

/-- `a(n-2)+a(n-2)+a(n-2)+1` -/
def P13723173653152405136.Spec : Prop :=
  ∀ n, (P13723173653152405136.a n : ℤ) = A372782 (n + 1)

theorem P13723173653152405136.correct : P13723173653152405136.Spec := by
  intro n
  simp only [A372782, Nat.add_sub_cancel, A372782.P13723173653152405136.a, A372782.P2066922359417383815.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A372782

/-! ## A372782.P4580962791273175386

`∑[A038754(n)]+1`
-/

namespace A372782.P4580962791273175386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A372782.P4580962791273175386

namespace A372782

/-- `∑[A038754(n)]+1` -/
def P4580962791273175386.Spec : Prop :=
  ∀ n, P4580962791273175386.a n = A372782 (n + 1)

end A372782

/-! ## A372782.P7782559923837445938

`A246360(n+3)-1`
-/

namespace A372782.P7782559923837445938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246360 (n + 3) - 1

end

end A372782.P7782559923837445938

namespace A372782

/-- `A246360(n+3)-1` -/
def P7782559923837445938.Spec : Prop :=
  ∀ n, P7782559923837445938.a n = A372782 (n + 1)

end A372782

/-! ## A372782.P16448073670188407854

`∑[A182522(n+1)]+1`
-/

namespace A372782.P16448073670188407854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A372782.P16448073670188407854

namespace A372782

/-- `∑[A182522(n+1)]+1` -/
def P16448073670188407854.Spec : Prop :=
  ∀ n, P16448073670188407854.a n = A372782 (n + 1)

end A372782

/-! ## A372782.P3791853906589831203

`A329774(A032766(n+1))`
-/

namespace A372782.P3791853906589831203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329774 (A032766 (n + 1)).toNat

end

end A372782.P3791853906589831203

namespace A372782

/-- `A329774(A032766(n+1))` -/
def P3791853906589831203.Spec : Prop :=
  ∀ n, P3791853906589831203.a n = A372782 (n + 1)

end A372782

/-! ## A372782.P11851897983127490915

`A056449(n)+A052993(n)`
-/

namespace A372782.P11851897983127490915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 n + A052993 n

end

end A372782.P11851897983127490915

namespace A372782

/-- `A056449(n)+A052993(n)` -/
def P11851897983127490915.Spec : Prop :=
  ∀ n, P11851897983127490915.a n = A372782 (n + 1)

end A372782

/-! ## A372782.P11871846174830594538

`A254006(n)+A052993(n+1)`
-/

namespace A372782.P11871846174830594538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 n + A052993 (n + 1)

end

end A372782.P11871846174830594538

namespace A372782

/-- `A254006(n)+A052993(n+1)` -/
def P11871846174830594538.Spec : Prop :=
  ∀ n, P11871846174830594538.a n = A372782 (n + 1)

end A372782

/-! ## A372782.P12117312285008301792

`A232801(n+1)+A232801(n+2)`
-/

namespace A372782.P12117312285008301792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232801 (n + 1) + A232801 (n + 2)

end

end A372782.P12117312285008301792

namespace A372782

/-- `A232801(n+1)+A232801(n+2)` -/
def P12117312285008301792.Spec : Prop :=
  ∀ n, P12117312285008301792.a n = A372782 (n + 1)

end A372782

/-! ## A372782.P4609410481292409854

`A164123(n+2)-(A062318(n+2)+A052993(n))`
-/

namespace A372782.P4609410481292409854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164123 (n + 2) - (A062318 (n + 2) + A052993 n)

end

end A372782.P4609410481292409854

namespace A372782

/-- `A164123(n+2)-(A062318(n+2)+A052993(n))` -/
def P4609410481292409854.Spec : Prop :=
  ∀ n, P4609410481292409854.a n = A372782 (n + 1)

end A372782

/-! ## A372782.P9543576945227853375

`A001444(n+1)-(A107767(n+1)+A107767(n+1))`
-/

namespace A372782.P9543576945227853375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001444 (n + 1) - (A107767 (n + 1) + A107767 (n + 1))

end

end A372782.P9543576945227853375

namespace A372782

/-- `A001444(n+1)-(A107767(n+1)+A107767(n+1))` -/
def P9543576945227853375.Spec : Prop :=
  ∀ n, P9543576945227853375.a n = A372782 (n + 1)

end A372782

/-!
# A372784: a(n) = tau(4*n) = A000005(4*n).

The programs for A372784, the canonical program `A372784.P17501289729252677399` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372784 has offset 1).

The definition of A372784 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(4*(n+1))` (program `A372784.P17501289729252677399`, by `A372784.P17501289729252677399.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A372784.P17501289729252677399

`A000005(4*(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A372784

/-- `A000005(4*(n+1))` -/
def P17501289729252677399.Spec : Prop :=
  ∀ n, P17501289729252677399.a n = A372784 (n + 1)

theorem P17501289729252677399.correct : P17501289729252677399.Spec := by
  intro n
  simp only [A372784, Nat.add_sub_cancel]

end A372784

/-! ## A372784.P15669911130205550428

`∏{e}[4*(1+n), #+1]`
-/

namespace A372784.P15669911130205550428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A372784.P15669911130205550428

namespace A372784

/-- `∏{e}[4*(1+n), #+1]` -/
def P15669911130205550428.Spec : Prop :=
  ∀ n, (P15669911130205550428.a n : ℤ) = A372784 (n + 1)

end A372784

/-! ## A372784.P2949946430146921680

`∑{d}[n+1, 3^(#%2)]`
-/

namespace A372784.P2949946430146921680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), 3 ^ (d % 2)

end

end A372784.P2949946430146921680

namespace A372784

/-- `∑{d}[n+1, 3^(#%2)]` -/
def P2949946430146921680.Spec : Prop :=
  ∀ n, (P2949946430146921680.a n : ℤ) = A372784 (n + 1)

end A372784

/-! ## A372784.P7050484368276226485

`∑{d}[n+1, 3^and(1, #)]`
-/

namespace A372784.P7050484368276226485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), 3 ^ Nat.land 1 d

end

end A372784.P7050484368276226485

namespace A372784

/-- `∑{d}[n+1, 3^and(1, #)]` -/
def P7050484368276226485.Spec : Prop :=
  ∀ n, (P7050484368276226485.a n : ℤ) = A372784 (n + 1)

end A372784

/-! ## A372784.P10169542755066553179

`∑{d}[n+1, 2-(-1)^#]`
-/

namespace A372784.P10169542755066553179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 - (-1) ^ d)

end

end A372784.P10169542755066553179

namespace A372784

/-- `∑{d}[n+1, 2-(-1)^#]` -/
def P10169542755066553179.Spec : Prop :=
  ∀ n, P10169542755066553179.a n = A372784 (n + 1)

end A372784

/-! ## A372784.P5367519107665560544

`A302707(n)+2`
-/

namespace A372784.P5367519107665560544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302707 n + 2

end

end A372784.P5367519107665560544

namespace A372784

/-- `A302707(n)+2` -/
def P5367519107665560544.Spec : Prop :=
  ∀ n, P5367519107665560544.a n = A372784 (n + 1)

end A372784

/-! ## A372784.P317720793935589623

`A099777(2*(n+1))`
-/

namespace A372784.P317720793935589623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (2 * (n + 1))

end

end A372784.P317720793935589623

namespace A372784

/-- `A099777(2*(n+1))` -/
def P317720793935589623.Spec : Prop :=
  ∀ n, P317720793935589623.a n = A372784 (n + 1)

end A372784

/-! ## A372784.P315519548533412809

`A337566(2*(n+1))+3`
-/

namespace A372784.P315519548533412809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337566 (2 * (n + 1)) + 3

end

end A372784.P315519548533412809

namespace A372784

/-- `A337566(2*(n+1))+3` -/
def P315519548533412809.Spec : Prop :=
  ∀ n, P315519548533412809.a n = A372784 (n + 1)

end A372784

/-! ## A372784.P6589349275267300323

`A009056(A302707(n))`
-/

namespace A372784.P6589349275267300323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A302707 n).toNat

end

end A372784.P6589349275267300323

namespace A372784

/-- `A009056(A302707(n))` -/
def P6589349275267300323.Spec : Prop :=
  ∀ n, P6589349275267300323.a n = A372784 (n + 1)

end A372784

/-! ## A372784.P16805986362780436598

`A054844(n+1)+A000005(n+1)`
-/

namespace A372784.P16805986362780436598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1) + A000005 (n + 1)

end

end A372784.P16805986362780436598

namespace A372784

/-- `A054844(n+1)+A000005(n+1)` -/
def P16805986362780436598.Spec : Prop :=
  ∀ n, P16805986362780436598.a n = A372784 (n + 1)

end A372784

/-! ## A372784.P1369773079311322167

`A099777(n+1)+A001227(n+1)`
-/

namespace A372784.P1369773079311322167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (n + 1) + A001227 (n + 1)

end

end A372784.P1369773079311322167

namespace A372784

/-- `A099777(n+1)+A001227(n+1)` -/
def P1369773079311322167.Spec : Prop :=
  ∀ n, P1369773079311322167.a n = A372784 (n + 1)

end A372784

/-! ## A372784.P5706326677800507570

`A062011(n+1)+A048272(n+1)`
-/

namespace A372784.P5706326677800507570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1) + A048272 (n + 1)

end

end A372784.P5706326677800507570

namespace A372784

/-- `A062011(n+1)+A048272(n+1)` -/
def P5706326677800507570.Spec : Prop :=
  ∀ n, P5706326677800507570.a n = A372784 (n + 1)

end A372784

/-! ## A372784.P3269450211178694419

`A378216(n+1)+A111150(n+1)`
-/

namespace A372784.P3269450211178694419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378216 (n + 1) + A111150 (n + 1)

end

end A372784.P3269450211178694419

namespace A372784

/-- `A378216(n+1)+A111150(n+1)` -/
def P3269450211178694419.Spec : Prop :=
  ∀ n, P3269450211178694419.a n = A372784 (n + 1)

end A372784

/-! ## A372784.P16859507340368900211

`A372788(n+1)-A001227(n+1)`
-/

namespace A372784.P16859507340368900211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372788 (n + 1) - A001227 (n + 1)

end

end A372784.P16859507340368900211

namespace A372784

/-- `A372788(n+1)-A001227(n+1)` -/
def P16859507340368900211.Spec : Prop :=
  ∀ n, P16859507340368900211.a n = A372784 (n + 1)

end A372784

/-! ## A372784.P1197307267170963476

`A001227(n+1)*A090739(n+1)`
-/

namespace A372784.P1197307267170963476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A090739 (n + 1)

end

end A372784.P1197307267170963476

namespace A372784

/-- `A001227(n+1)*A090739(n+1)` -/
def P1197307267170963476.Spec : Prop :=
  ∀ n, P1197307267170963476.a n = A372784 (n + 1)

end A372784

/-! ## A372784.P4733212753102247609

`A340273(4*(n+1))`
-/

namespace A372784.P4733212753102247609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340273 (4 * (n + 1))

end

end A372784.P4733212753102247609

namespace A372784

/-- `A340273(4*(n+1))` -/
def P4733212753102247609.Spec : Prop :=
  ∀ n, P4733212753102247609.a n = A372784 (n + 1)

end A372784

/-! ## A372784.P10624892883072672871

`A066660(2*(n+1))+1`
-/

namespace A372784.P10624892883072672871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066660 (2 * (n + 1)) + 1

end

end A372784.P10624892883072672871

namespace A372784

/-- `A066660(2*(n+1))+1` -/
def P10624892883072672871.Spec : Prop :=
  ∀ n, P10624892883072672871.a n = A372784 (n + 1)

end A372784

/-! ## A372784.P15156781977216127899

`A069930(2*(n+1))+2`
-/

namespace A372784.P15156781977216127899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069930 (2 * (n + 1)) + 2

end

end A372784.P15156781977216127899

namespace A372784

/-- `A069930(2*(n+1))+2` -/
def P15156781977216127899.Spec : Prop :=
  ∀ n, P15156781977216127899.a n = A372784 (n + 1)

end A372784

/-! ## A372784.P17762138384976177329

`A060710(2*(n+1))-A062011(n+1)`
-/

namespace A372784.P17762138384976177329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060710 (2 * (n + 1)) - A062011 (n + 1)

end

end A372784.P17762138384976177329

namespace A372784

/-- `A060710(2*(n+1))-A062011(n+1)` -/
def P17762138384976177329.Spec : Prop :=
  ∀ n, P17762138384976177329.a n = A372784 (n + 1)

end A372784

/-! ## A372784.P11411763225187354122

`A320111(8*(n+1))`
-/

namespace A372784.P11411763225187354122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (8 * (n + 1))

end

end A372784.P11411763225187354122

namespace A372784

/-- `A320111(8*(n+1))` -/
def P11411763225187354122.Spec : Prop :=
  ∀ n, P11411763225187354122.a n = A372784 (n + 1)

end A372784

/-!
# A372785: a(n) = tau(5*n) = A000005(5*n).

The programs for A372785, the canonical program `A372785.P1137355158066766240` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372785 has offset 1).

The definition of A372785 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(5*(n+1))` (program `A372785.P1137355158066766240`, by `A372785.P1137355158066766240.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A372785.P1137355158066766240

`A000005(5*(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A372785

/-- `A000005(5*(n+1))` -/
def P1137355158066766240.Spec : Prop :=
  ∀ n, P1137355158066766240.a n = A372785 (n + 1)

theorem P1137355158066766240.correct : P1137355158066766240.Spec := by
  intro n
  simp only [A372785, Nat.add_sub_cancel]

end A372785

/-! ## A372785.P9756681877178184497

`∏{e}[5*(n+1), #+1]`
-/

namespace A372785.P9756681877178184497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A372785.P9756681877178184497

namespace A372785

/-- `∏{e}[5*(n+1), #+1]` -/
def P9756681877178184497.Spec : Prop :=
  ∀ n, (P9756681877178184497.a n : ℤ) = A372785 (n + 1)

end A372785

/-! ## A372785.P9697016161825291950

`∑{d}[5*(n+1), ceil(1/#)]`
-/

namespace A372785.P9697016161825291950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉

end

end A372785.P9697016161825291950

namespace A372785

/-- `∑{d}[5*(n+1), ceil(1/#)]` -/
def P9697016161825291950.Spec : Prop :=
  ∀ n, P9697016161825291950.a n = A372785 (n + 1)

end A372785

/-! ## A372785.P9412854059742674313

`A035207(n+1)+A000005(n+1)`
-/

namespace A372785.P9412854059742674313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035207 (n + 1) + A000005 (n + 1)

end

end A372785.P9412854059742674313

namespace A372785

/-- `A035207(n+1)+A000005(n+1)` -/
def P9412854059742674313.Spec : Prop :=
  ∀ n, P9412854059742674313.a n = A372785 (n + 1)

theorem P9412854059742674313.correct : P9412854059742674313.Spec := by
  intro n
  simp only [A372785, Nat.add_sub_cancel, A372785.P9412854059742674313.a, A372785.P1137355158066766240.a, A000005, A000005.P16091521709108585461.a, A035207, A035207.P10094144340329401523.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A372785

/-! ## A372785.P6923067359619206737

`A000005(n+1)+A000005(A132739(n+1))`
-/

namespace A372785.P6923067359619206737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A000005 (A132739 (n + 1)).toNat

end

end A372785.P6923067359619206737

namespace A372785

/-- `A000005(n+1)+A000005(A132739(n+1))` -/
def P6923067359619206737.Spec : Prop :=
  ∀ n, P6923067359619206737.a n = A372785 (n + 1)

end A372785

/-! ## A372785.P8642069868916740369

`A000005(n+1)+A000005(n+1)/A055457(n+1)`
-/

namespace A372785.P8642069868916740369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) + (A000005 (n + 1) : ℚ) / (A055457 (n + 1) : ℚ)

end

end A372785.P8642069868916740369

namespace A372785

/-- `A000005(n+1)+A000005(n+1)/A055457(n+1)` -/
def P8642069868916740369.Spec : Prop :=
  ∀ n, P8642069868916740369.a n = (A372785 (n + 1) : ℚ)

end A372785

/-! ## A372785.P1582253842573898733

`A372787(A072026(n+1))`
-/

namespace A372785.P1582253842573898733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372787 (A072026 (n + 1)).toNat

end

end A372785.P1582253842573898733

namespace A372785

/-- `A372787(A072026(n+1))` -/
def P1582253842573898733.Spec : Prop :=
  ∀ n, P1582253842573898733.a n = A372785 (n + 1)

end A372785

/-! ## A372785.P17904727391214225245

`A372787(A072028(n+1))`
-/

namespace A372785.P17904727391214225245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372787 (A072028 (n + 1)).toNat

end

end A372785.P17904727391214225245

namespace A372785

/-- `A372787(A072028(n+1))` -/
def P17904727391214225245.Spec : Prop :=
  ∀ n, P17904727391214225245.a n = A372785 (n + 1)

end A372785

/-! ## A372785.P12302521495826218156

`A372787(A235199(n+1))`
-/

namespace A372785.P12302521495826218156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372787 (A235199 (n + 1)).toNat

end

end A372785.P12302521495826218156

namespace A372785

/-- `A372787(A235199(n+1))` -/
def P12302521495826218156.Spec : Prop :=
  ∀ n, P12302521495826218156.a n = A372785 (n + 1)

end A372785

/-! ## A372785.P12304996186290745892

`A372713(A072029(n+1))`
-/

namespace A372785.P12304996186290745892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372713 (A072029 (n + 1)).toNat

end

end A372785.P12304996186290745892

namespace A372785

/-- `A372713(A072029(n+1))` -/
def P12304996186290745892.Spec : Prop :=
  ∀ n, P12304996186290745892.a n = A372785 (n + 1)

end A372785

/-! ## A372785.P351737180441130719

`A372713(A235200(n+1))`
-/

namespace A372785.P351737180441130719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372713 (A235200 (n + 1)).toNat

end

end A372785.P351737180441130719

namespace A372785

/-- `A372713(A235200(n+1))` -/
def P351737180441130719.Spec : Prop :=
  ∀ n, P351737180441130719.a n = A372785 (n + 1)

end A372785

/-! ## A372785.P2236993818558959134

`A372713(A267099(n+1))`
-/

namespace A372785.P2236993818558959134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372713 (A267099 (n + 1)).toNat

end

end A372785.P2236993818558959134

namespace A372785

/-- `A372713(A267099(n+1))` -/
def P2236993818558959134.Spec : Prop :=
  ∀ n, P2236993818558959134.a n = A372785 (n + 1)

end A372785

/-! ## A372785.P3432503403162987397

`A320111(10*(n+1))`
-/

namespace A372785.P3432503403162987397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (10 * (n + 1))

end

end A372785.P3432503403162987397

namespace A372785

/-- `A320111(10*(n+1))` -/
def P3432503403162987397.Spec : Prop :=
  ∀ n, P3432503403162987397.a n = A372785 (n + 1)

end A372785

/-! ## A372785.P11283041456681153000

`sqrt(A035116(5*(n+1)))`
-/

namespace A372785.P11283041456681153000
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A035116 (5 * (n + 1)) : ℝ)

end

end A372785.P11283041456681153000

namespace A372785

/-- `sqrt(A035116(5*(n+1)))` -/
def P11283041456681153000.Spec : Prop :=
  ∀ n, P11283041456681153000.a n = (A372785 (n + 1) : ℝ)

end A372785

/-! ## A372785.P2867305773076554284

`A099777(A387377(n+1))`
-/

namespace A372785.P2867305773076554284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (A387377 (n + 1)).toNat

end

end A372785.P2867305773076554284

namespace A372785

/-- `A099777(A387377(n+1))` -/
def P2867305773076554284.Spec : Prop :=
  ∀ n, P2867305773076554284.a n = A372785 (n + 1)

end A372785

/-! ## A372785.P1345141588229484354

`A183063(10*(n+1))`
-/

namespace A372785.P1345141588229484354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (10 * (n + 1))

end

end A372785.P1345141588229484354

namespace A372785

/-- `A183063(10*(n+1))` -/
def P1345141588229484354.Spec : Prop :=
  ∀ n, P1345141588229484354.a n = A372785 (n + 1)

end A372785

/-! ## A372785.P17230699057395503520

`A069157(A008592(n+1))`
-/

namespace A372785.P17230699057395503520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A008592 (n + 1)).toNat

end

end A372785.P17230699057395503520

namespace A372785

/-- `A069157(A008592(n+1))` -/
def P17230699057395503520.Spec : Prop :=
  ∀ n, P17230699057395503520.a n = A372785 (n + 1)

end A372785

/-! ## A372785.P16075010468991438835

`A069157(A008602(n+1)/2)`
-/

namespace A372785.P16075010468991438835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (SequenceMachineLib.roundAway ((A008602 (n + 1) : ℚ) / 2)).toNat

end

end A372785.P16075010468991438835

namespace A372785

/-- `A069157(A008602(n+1)/2)` -/
def P16075010468991438835.Spec : Prop :=
  ∀ n, P16075010468991438835.a n = A372785 (n + 1)

end A372785

/-! ## A372785.P1634331953132583426

`A277692(A017281(n+1))`
-/

namespace A372785.P1634331953132583426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (A017281 (n + 1)).toNat

end

end A372785.P1634331953132583426

namespace A372785

/-- `A277692(A017281(n+1))` -/
def P1634331953132583426.Spec : Prop :=
  ∀ n, P1634331953132583426.a n = A372785 (n + 1)

end A372785

/-! ## A372785.P1931278804381911771

`A372787(A290641(n+1))`
-/

namespace A372785.P1931278804381911771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372787 (A290641 (n + 1)).toNat

end

end A372785.P1931278804381911771

namespace A372785

/-- `A372787(A290641(n+1))` -/
def P1931278804381911771.Spec : Prop :=
  ∀ n, P1931278804381911771.a n = A372785 (n + 1)

end A372785

/-!
# A372786: Number of divisors of 6n; a(n) = tau(6*n) = A000005(6*n).

The programs for A372786, the canonical program `A372786.P3226320515726835874` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372786 has offset 1).

The definition of A372786 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(6*(n+1))` (program `A372786.P3226320515726835874`, by `A372786.P3226320515726835874.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A372786.P3226320515726835874

`A000005(6*(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A372786

/-- `A000005(6*(n+1))` -/
def P3226320515726835874.Spec : Prop :=
  ∀ n, P3226320515726835874.a n = A372786 (n + 1)

theorem P3226320515726835874.correct : P3226320515726835874.Spec := by
  intro n
  simp only [A372786, Nat.add_sub_cancel]

end A372786

/-! ## A372786.P8780786558505059247

`∏{e}[6*(n+1), #+1]`
-/

namespace A372786.P8780786558505059247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A372786.P8780786558505059247

namespace A372786

/-- `∏{e}[6*(n+1), #+1]` -/
def P8780786558505059247.Spec : Prop :=
  ∀ n, (P8780786558505059247.a n : ℤ) = A372786 (n + 1)

end A372786

/-! ## A372786.P15698705332951372158

`∑{d}[2*12*(n+1), (-1)^#]`
-/

namespace A372786.P15698705332951372158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (12 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-1) ^ d

end

end A372786.P15698705332951372158

namespace A372786

/-- `∑{d}[2*12*(n+1), (-1)^#]` -/
def P15698705332951372158.Spec : Prop :=
  ∀ n, P15698705332951372158.a n = A372786 (n + 1)

end A372786

/-! ## A372786.P12798592405369381645

`A372713(2*(1+n))`
-/

namespace A372786.P12798592405369381645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372713 (2 * (1 + n))

end

end A372786.P12798592405369381645

namespace A372786

/-- `A372713(2*(1+n))` -/
def P12798592405369381645.Spec : Prop :=
  ∀ n, P12798592405369381645.a n = A372786 (n + 1)

end A372786

/-! ## A372786.P9309190498945049836

`A099777(3*(n+1))`
-/

namespace A372786.P9309190498945049836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (3 * (n + 1))

end

end A372786.P9309190498945049836

namespace A372786

/-- `A099777(3*(n+1))` -/
def P9309190498945049836.Spec : Prop :=
  ∀ n, P9309190498945049836.a n = A372786 (n + 1)

end A372786

/-! ## A372786.P2337181553143212924

`A337566(3*(n+1))+3`
-/

namespace A372786.P2337181553143212924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337566 (3 * (n + 1)) + 3

end

end A372786.P2337181553143212924

namespace A372786

/-- `A337566(3*(n+1))+3` -/
def P2337181553143212924.Spec : Prop :=
  ∀ n, P2337181553143212924.a n = A372786 (n + 1)

end A372786

/-! ## A372786.P1829426012473287127

`A349043(3*(n+1))+3`
-/

namespace A372786.P1829426012473287127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349043 (3 * (n + 1)) + 3

end

end A372786.P1829426012473287127

namespace A372786

/-- `A349043(3*(n+1))+3` -/
def P1829426012473287127.Spec : Prop :=
  ∀ n, P1829426012473287127.a n = A372786 (n + 1)

end A372786

/-! ## A372786.P5444807580169998907

`A340273(6*(n+1))`
-/

namespace A372786.P5444807580169998907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340273 (6 * (n + 1))

end

end A372786.P5444807580169998907

namespace A372786

/-- `A340273(6*(n+1))` -/
def P5444807580169998907.Spec : Prop :=
  ∀ n, P5444807580169998907.a n = A372786 (n + 1)

end A372786

/-! ## A372786.P11282059945058660203

`A066660(3*(n+1))+1`
-/

namespace A372786.P11282059945058660203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066660 (3 * (n + 1)) + 1

end

end A372786.P11282059945058660203

namespace A372786

/-- `A066660(3*(n+1))+1` -/
def P11282059945058660203.Spec : Prop :=
  ∀ n, P11282059945058660203.a n = A372786 (n + 1)

end A372786

/-! ## A372786.P10581768385988410827

`A069930(3*(n+1))+2`
-/

namespace A372786.P10581768385988410827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069930 (3 * (n + 1)) + 2

end

end A372786.P10581768385988410827

namespace A372786

/-- `A069930(3*(n+1))+2` -/
def P10581768385988410827.Spec : Prop :=
  ∀ n, P10581768385988410827.a n = A372786 (n + 1)

end A372786

/-! ## A372786.P16567164944245479514

`A062558(6*(n+1))`
-/

namespace A372786.P16567164944245479514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062558 (6 * (n + 1))

end

end A372786.P16567164944245479514

namespace A372786

/-- `A062558(6*(n+1))` -/
def P16567164944245479514.Spec : Prop :=
  ∀ n, P16567164944245479514.a n = A372786 (n + 1)

end A372786

/-! ## A372786.P4740129171346118882

`A339147(A016921(n+1))`
-/

namespace A372786.P4740129171346118882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339147 (A016921 (n + 1)).toNat

end

end A372786.P4740129171346118882

namespace A372786

/-- `A339147(A016921(n+1))` -/
def P4740129171346118882.Spec : Prop :=
  ∀ n, P4740129171346118882.a n = A372786 (n + 1)

end A372786

/-! ## A372786.P14302267028776379466

`A339147(A271114(n+1))`
-/

namespace A372786.P14302267028776379466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339147 (A271114 (n + 1)).toNat

end

end A372786.P14302267028776379466

namespace A372786

/-- `A339147(A271114(n+1))` -/
def P14302267028776379466.Spec : Prop :=
  ∀ n, P14302267028776379466.a n = A372786 (n + 1)

end A372786

/-! ## A372786.P4137782862871977538

`A069157(A008594(n+1))`
-/

namespace A372786.P4137782862871977538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A008594 (n + 1)).toNat

end

end A372786.P4137782862871977538

namespace A372786

/-- `A069157(A008594(n+1))` -/
def P4137782862871977538.Spec : Prop :=
  ∀ n, P4137782862871977538.a n = A372786 (n + 1)

end A372786

/-! ## A372786.P18290198352223040295

`A277692(A017533(n+1))`
-/

namespace A372786.P18290198352223040295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (A017533 (n + 1)).toNat

end

end A372786.P18290198352223040295

namespace A372786

/-- `A277692(A017533(n+1))` -/
def P18290198352223040295.Spec : Prop :=
  ∀ n, P18290198352223040295.a n = A372786 (n + 1)

end A372786

/-! ## A372786.P10804442394909381030

`A069157(A008606(n+1)/2)`
-/

namespace A372786.P10804442394909381030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (SequenceMachineLib.roundAway ((A008606 (n + 1) : ℚ) / 2)).toNat

end

end A372786.P10804442394909381030

namespace A372786

/-- `A069157(A008606(n+1)/2)` -/
def P10804442394909381030.Spec : Prop :=
  ∀ n, P10804442394909381030.a n = A372786 (n + 1)

end A372786

/-! ## A372786.P9491470951306616996

`A069157(A016957(2*n+1)+2)`
-/

namespace A372786.P9491470951306616996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A016957 (2 * n + 1) + 2).toNat

end

end A372786.P9491470951306616996

namespace A372786

/-- `A069157(A016957(2*n+1)+2)` -/
def P9491470951306616996.Spec : Prop :=
  ∀ n, P9491470951306616996.a n = A372786 (n + 1)

end A372786

/-! ## A372786.P10648514040295669696

`A277692(A016969(2*n+1)+2)`
-/

namespace A372786.P10648514040295669696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (A016969 (2 * n + 1) + 2).toNat

end

end A372786.P10648514040295669696

namespace A372786

/-- `A277692(A016969(2*n+1)+2)` -/
def P10648514040295669696.Spec : Prop :=
  ∀ n, P10648514040295669696.a n = A372786 (n + 1)

end A372786

/-! ## A372786.P11699343032846608973

`A372790(A072029(n+1))`
-/

namespace A372786.P11699343032846608973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372790 (A072029 (n + 1)).toNat

end

end A372786.P11699343032846608973

namespace A372786

/-- `A372790(A072029(n+1))` -/
def P11699343032846608973.Spec : Prop :=
  ∀ n, P11699343032846608973.a n = A372786 (n + 1)

end A372786

/-! ## A372786.P7884894639703884045

`A372790(A235200(n+1))`
-/

namespace A372786.P7884894639703884045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372790 (A235200 (n + 1)).toNat

end

end A372786.P7884894639703884045

namespace A372786

/-- `A372790(A235200(n+1))` -/
def P7884894639703884045.Spec : Prop :=
  ∀ n, P7884894639703884045.a n = A372786 (n + 1)

end A372786

/-!
# A372787: a(n) = tau(7*n) = A000005(7*n).

The programs for A372787, the canonical program `A372787.P5367107089574616924` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372787 has offset 1).

The definition of A372787 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(7*(n+1))` (program `A372787.P5367107089574616924`, by `A372787.P5367107089574616924.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A372787.P5367107089574616924

`A000005(7*(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A372787

/-- `A000005(7*(n+1))` -/
def P5367107089574616924.Spec : Prop :=
  ∀ n, P5367107089574616924.a n = A372787 (n + 1)

theorem P5367107089574616924.correct : P5367107089574616924.Spec := by
  intro n
  simp only [A372787, Nat.add_sub_cancel]

end A372787

/-! ## A372787.P7017775192397803573

`∏{e}[7*(n+1), #+1]`
-/

namespace A372787.P7017775192397803573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A372787.P7017775192397803573

namespace A372787

/-- `∏{e}[7*(n+1), #+1]` -/
def P7017775192397803573.Spec : Prop :=
  ∀ n, (P7017775192397803573.a n : ℤ) = A372787 (n + 1)

end A372787

/-! ## A372787.P5541175015207337138

`A000005(n+1)+A000005(n+1)/A373217(n+1)`
-/

namespace A372787.P5541175015207337138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) + (A000005 (n + 1) : ℚ) / (A373217 (n + 1) : ℚ)

end

end A372787.P5541175015207337138

namespace A372787

/-- `A000005(n+1)+A000005(n+1)/A373217(n+1)` -/
def P5541175015207337138.Spec : Prop :=
  ∀ n, P5541175015207337138.a n = (A372787 (n + 1) : ℚ)

end A372787

/-! ## A372787.P18436315382441824340

`A372785(A072026(n+1))`
-/

namespace A372787.P18436315382441824340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372785 (A072026 (n + 1)).toNat

end

end A372787.P18436315382441824340

namespace A372787

/-- `A372785(A072026(n+1))` -/
def P18436315382441824340.Spec : Prop :=
  ∀ n, P18436315382441824340.a n = A372787 (n + 1)

end A372787

/-! ## A372787.P13372382801336779233

`A372785(A072028(n+1))`
-/

namespace A372787.P13372382801336779233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372785 (A072028 (n + 1)).toNat

end

end A372787.P13372382801336779233

namespace A372787

/-- `A372785(A072028(n+1))` -/
def P13372382801336779233.Spec : Prop :=
  ∀ n, P13372382801336779233.a n = A372787 (n + 1)

end A372787

/-! ## A372787.P480706687871926051

`A372785(A332213(n+1))`
-/

namespace A372787.P480706687871926051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372785 (A332213 (n + 1)).toNat

end

end A372787.P480706687871926051

namespace A372787

/-- `A372785(A332213(n+1))` -/
def P480706687871926051.Spec : Prop :=
  ∀ n, P480706687871926051.a n = A372787 (n + 1)

end A372787

/-! ## A372787.P1131297661278581911

`A372785(A235199(n+1))`
-/

namespace A372787.P1131297661278581911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372785 (A235199 (n + 1)).toNat

end

end A372787.P1131297661278581911

namespace A372787

/-- `A372785(A235199(n+1))` -/
def P1131297661278581911.Spec : Prop :=
  ∀ n, P1131297661278581911.a n = A372787 (n + 1)

end A372787

/-! ## A372787.P16544785692078685734

`A320111(7*2*(n+1))`
-/

namespace A372787.P16544785692078685734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (7 * (2 * (n + 1)))

end

end A372787.P16544785692078685734

namespace A372787

/-- `A320111(7*2*(n+1))` -/
def P16544785692078685734.Spec : Prop :=
  ∀ n, P16544785692078685734.a n = A372787 (n + 1)

end A372787

/-! ## A372787.P5391100451962899864

`A032741(8*n+7-n)+1`
-/

namespace A372787.P5391100451962899864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (8 * n + 7 - n) + 1

end

end A372787.P5391100451962899864

namespace A372787

/-- `A032741(8*n+7-n)+1` -/
def P5391100451962899864.Spec : Prop :=
  ∀ n, P5391100451962899864.a n = A372787 (n + 1)

end A372787

/-! ## A372787.P12943362765199839584

`A372785(A061898(n+1))`
-/

namespace A372787.P12943362765199839584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372785 (A061898 (n + 1)).toNat

end

end A372787.P12943362765199839584

namespace A372787

/-- `A372785(A061898(n+1))` -/
def P12943362765199839584.Spec : Prop :=
  ∀ n, P12943362765199839584.a n = A372787 (n + 1)

end A372787

/-! ## A372787.P684843214936535706

`A372785(A072027(n+1))`
-/

namespace A372787.P684843214936535706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372785 (A072027 (n + 1)).toNat

end

end A372787.P684843214936535706

namespace A372787

/-- `A372785(A072027(n+1))` -/
def P684843214936535706.Spec : Prop :=
  ∀ n, P684843214936535706.a n = A372787 (n + 1)

end A372787

/-! ## A372787.P9401847717021374586

`A069157(A008596(n+1))`
-/

namespace A372787.P9401847717021374586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A008596 (n + 1)).toNat

end

end A372787.P9401847717021374586

namespace A372787

/-- `A069157(A008596(n+1))` -/
def P9401847717021374586.Spec : Prop :=
  ∀ n, P9401847717021374586.a n = A372787 (n + 1)

end A372787

/-! ## A372787.P12168642397641741115

`A277692(A131877(n+1))`
-/

namespace A372787.P12168642397641741115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (A131877 (n + 1)).toNat

end

end A372787.P12168642397641741115

namespace A372787

/-- `A277692(A131877(n+1))` -/
def P12168642397641741115.Spec : Prop :=
  ∀ n, P12168642397641741115.a n = A372787 (n + 1)

end A372787

/-! ## A372787.P12322595992341853875

`A183063(A144555(n+1)/(n+1))`
-/

namespace A372787.P12322595992341853875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (SequenceMachineLib.roundAway ((A144555 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A372787.P12322595992341853875

namespace A372787

/-- `A183063(A144555(n+1)/(n+1))` -/
def P12322595992341853875.Spec : Prop :=
  ∀ n, P12322595992341853875.a n = A372787 (n + 1)

end A372787

/-! ## A372787.P9506033480619035649

`A372791(A234747(n+1))`
-/

namespace A372787.P9506033480619035649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372791 (A234747 (n + 1)).toNat

end

end A372787.P9506033480619035649

namespace A372787

/-- `A372791(A234747(n+1))` -/
def P9506033480619035649.Spec : Prop :=
  ∀ n, P9506033480619035649.a n = A372787 (n + 1)

end A372787

/-! ## A372787.P7813893770462743582

`A372791(A003961(n+1))`
-/

namespace A372787.P7813893770462743582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372791 (A003961 (n + 1)).toNat

end

end A372787.P7813893770462743582

namespace A372787

/-- `A372791(A003961(n+1))` -/
def P7813893770462743582.Spec : Prop :=
  ∀ n, P7813893770462743582.a n = A372787 (n + 1)

end A372787

/-! ## A372787.P4281121329723562821

`A112329(A135628(n+1))`
-/

namespace A372787.P4281121329723562821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (A135628 (n + 1)).toNat

end

end A372787.P4281121329723562821

namespace A372787

/-- `A112329(A135628(n+1))` -/
def P4281121329723562821.Spec : Prop :=
  ∀ n, P4281121329723562821.a n = A372787 (n + 1)

end A372787

/-! ## A372787.P12317578927603838700

`A372791(A389092(n+1))`
-/

namespace A372787.P12317578927603838700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372791 (A389092 (n + 1)).toNat

end

end A372787.P12317578927603838700

namespace A372787

/-- `A372791(A389092(n+1))` -/
def P12317578927603838700.Spec : Prop :=
  ∀ n, P12317578927603838700.a n = A372787 (n + 1)

end A372787

/-! ## A372787.P14411106200844253085

`A355731(A031340(n+1))`
-/

namespace A372787.P14411106200844253085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355731 (A031340 (n + 1)).toNat

end

end A372787.P14411106200844253085

namespace A372787

/-- `A355731(A031340(n+1))` -/
def P14411106200844253085.Spec : Prop :=
  ∀ n, P14411106200844253085.a n = A372787 (n + 1)

end A372787

/-! ## A372787.P14959742243239235370

`A096737(7*(n+1))`
-/

namespace A372787.P14959742243239235370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096737 (7 * (n + 1))

end

end A372787.P14959742243239235370

namespace A372787

/-- `A096737(7*(n+1))` -/
def P14959742243239235370.Spec : Prop :=
  ∀ n, P14959742243239235370.a n = A372787 (n + 1)

end A372787

/-!
# A372788: a(n) = tau(8*n) = A000005(8*n).

The programs for A372788, the canonical program `A372788.P1588842482571205510` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372788 has offset 1).

The definition of A372788 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(8*(n+1))` (program `A372788.P1588842482571205510`, by `A372788.P1588842482571205510.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A372788.P1588842482571205510

`A000005(8*(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A372788

/-- `A000005(8*(n+1))` -/
def P1588842482571205510.Spec : Prop :=
  ∀ n, P1588842482571205510.a n = A372788 (n + 1)

theorem P1588842482571205510.correct : P1588842482571205510.Spec := by
  intro n
  simp only [A372788, Nat.add_sub_cancel]

end A372788

/-! ## A372788.P6252866311684699051

`∏{e}[8*(n+1), #+1]`
-/

namespace A372788.P6252866311684699051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A372788.P6252866311684699051

namespace A372788

/-- `∏{e}[8*(n+1), #+1]` -/
def P6252866311684699051.Spec : Prop :=
  ∀ n, (P6252866311684699051.a n : ℤ) = A372788 (n + 1)

end A372788

/-! ## A372788.P1464467851255213965

`∑{d}[n+1, 4^(#%2)]`
-/

namespace A372788.P1464467851255213965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), 4 ^ (d % 2)

end

end A372788.P1464467851255213965

namespace A372788

/-- `∑{d}[n+1, 4^(#%2)]` -/
def P1464467851255213965.Spec : Prop :=
  ∀ n, (P1464467851255213965.a n : ℤ) = A372788 (n + 1)

end A372788

/-! ## A372788.P16107150469917173397

`∑{d}[n+1, 4^and(1, #)]`
-/

namespace A372788.P16107150469917173397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), 4 ^ Nat.land 1 d

end

end A372788.P16107150469917173397

namespace A372788

/-- `∑{d}[n+1, 4^and(1, #)]` -/
def P16107150469917173397.Spec : Prop :=
  ∀ n, (P16107150469917173397.a n : ℤ) = A372788 (n + 1)

end A372788

/-! ## A372788.P13620225074914020605

`∑{d}[n+1, gcd(2, #+1)²]`
-/

namespace A372788.P13620225074914020605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd 2 (d + 1) ^ 2

end

end A372788.P13620225074914020605

namespace A372788

/-- `∑{d}[n+1, gcd(2, #+1)²]` -/
def P13620225074914020605.Spec : Prop :=
  ∀ n, (P13620225074914020605.a n : ℤ) = A372788 (n + 1)

end A372788

/-! ## A372788.P18049952199990158064

`∑{d}[n+1, (and(1, #)+1)²]`
-/

namespace A372788.P18049952199990158064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.land 1 d + 1) ^ 2

end

end A372788.P18049952199990158064

namespace A372788

/-- `∑{d}[n+1, (and(1, #)+1)²]` -/
def P18049952199990158064.Spec : Prop :=
  ∀ n, (P18049952199990158064.a n : ℤ) = A372788 (n + 1)

end A372788

/-! ## A372788.P12156697785148063082

`∑{d}[n+1, (lcm(2, #)/#)²]`
-/

namespace A372788.P12156697785148063082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((Nat.lcm 2 d : ℚ) / (d : ℚ)) ^ 2

end

end A372788.P12156697785148063082

namespace A372788

/-- `∑{d}[n+1, (lcm(2, #)/#)²]` -/
def P12156697785148063082.Spec : Prop :=
  ∀ n, P12156697785148063082.a n = (A372788 (n + 1) : ℚ)

end A372788

/-! ## A372788.P9889183264580731575

`∑{d}[8*(n+1), gcd(#, 2*n+1)]`
-/

namespace A372788.P9889183264580731575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd d (2 * n + 1)

end

end A372788.P9889183264580731575

namespace A372788

/-- `∑{d}[8*(n+1), gcd(#, 2*n+1)]` -/
def P9889183264580731575.Spec : Prop :=
  ∀ n, (P9889183264580731575.a n : ℤ) = A372788 (n + 1)

end A372788

/-! ## A372788.P13521743036460827265

`A099777(4*(n+1))`
-/

namespace A372788.P13521743036460827265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (4 * (n + 1))

end

end A372788.P13521743036460827265

namespace A372788

/-- `A099777(4*(n+1))` -/
def P13521743036460827265.Spec : Prop :=
  ∀ n, P13521743036460827265.a n = A372788 (n + 1)

end A372788

/-! ## A372788.P18034608654293964659

`A302707(Δ[n²])+2`
-/

namespace A372788.P18034608654293964659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302707 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A372788.P18034608654293964659

namespace A372788

/-- `A302707(Δ[n²])+2` -/
def P18034608654293964659.Spec : Prop :=
  ∀ n, P18034608654293964659.a n = A372788 (n + 1)

end A372788

/-! ## A372788.P12336325967095052598

`A009056(A302707(2*n+1))`
-/

namespace A372788.P12336325967095052598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A302707 (2 * n + 1)).toNat

end

end A372788.P12336325967095052598

namespace A372788

/-- `A009056(A302707(2*n+1))` -/
def P12336325967095052598.Spec : Prop :=
  ∀ n, P12336325967095052598.a n = A372788 (n + 1)

end A372788

/-! ## A372788.P3913543446999842809

`A099777(n+1)+A054844(n+1)`
-/

namespace A372788.P3913543446999842809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (n + 1) + A054844 (n + 1)

end

end A372788.P3913543446999842809

namespace A372788

/-- `A099777(n+1)+A054844(n+1)` -/
def P3913543446999842809.Spec : Prop :=
  ∀ n, P3913543446999842809.a n = A372788 (n + 1)

end A372788

/-! ## A372788.P7764322669213181251

`A372784(n+1)+A001227(n+1)`
-/

namespace A372788.P7764322669213181251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372784 (n + 1) + A001227 (n + 1)

end

end A372788.P7764322669213181251

namespace A372788

/-- `A372784(n+1)+A001227(n+1)` -/
def P7764322669213181251.Spec : Prop :=
  ∀ n, P7764322669213181251.a n = A372788 (n + 1)

end A372788

/-! ## A372788.P7801685537923222875

`∑{d}[n+1, A010685(#)]`
-/

namespace A372788.P7801685537923222875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010685 d

end

end A372788.P7801685537923222875

namespace A372788

/-- `∑{d}[n+1, A010685(#)]` -/
def P7801685537923222875.Spec : Prop :=
  ∀ n, P7801685537923222875.a n = A372788 (n + 1)

end A372788

/-! ## A372788.P14048250876670693597

`A366872(2*n)`
-/

namespace A372788.P14048250876670693597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366872 (2 * n)

end

end A372788.P14048250876670693597

namespace A372788

/-- `A366872(2*n)` -/
def P14048250876670693597.Spec : Prop :=
  ∀ n, P14048250876670693597.a n = A372788 (n + 1)

theorem P14048250876670693597.correct : P14048250876670693597.Spec := by
  intro n
  simp only [A372788, Nat.add_sub_cancel, A372788.P14048250876670693597.a, A372788.P1588842482571205510.a, A000005, A000005.P16091521709108585461.a, A366872, A366872.P9213635915992081364.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A372788

/-! ## A372788.P6988779534455954041

`A372784(2*(n+1))`
-/

namespace A372788.P6988779534455954041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372784 (2 * (n + 1))

end

end A372788.P6988779534455954041

namespace A372788

/-- `A372784(2*(n+1))` -/
def P6988779534455954041.Spec : Prop :=
  ∀ n, P6988779534455954041.a n = A372788 (n + 1)

end A372788

/-! ## A372788.P5797243667770403806

`A062011(2*(n+1))-A183063(n+1)`
-/

namespace A372788.P5797243667770403806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (2 * (n + 1)) - A183063 (n + 1)

end

end A372788.P5797243667770403806

namespace A372788

/-- `A062011(2*(n+1))-A183063(n+1)` -/
def P5797243667770403806.Spec : Prop :=
  ∀ n, P5797243667770403806.a n = A372788 (n + 1)

end A372788

/-! ## A372788.P10571091986737082206

`A131089(2*(n+1))-A183063(n+1)`
-/

namespace A372788.P10571091986737082206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131089 (2 * (n + 1)) - A183063 (n + 1)

end

end A372788.P10571091986737082206

namespace A372788

/-- `A131089(2*(n+1))-A183063(n+1)` -/
def P10571091986737082206.Spec : Prop :=
  ∀ n, P10571091986737082206.a n = A372788 (n + 1)

end A372788

/-! ## A372788.P7828043792783576792

`A340273(8*(n+1))`
-/

namespace A372788.P7828043792783576792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340273 (8 * (n + 1))

end

end A372788.P7828043792783576792

namespace A372788

/-- `A340273(8*(n+1))` -/
def P7828043792783576792.Spec : Prop :=
  ∀ n, P7828043792783576792.a n = A372788 (n + 1)

end A372788

/-! ## A372788.P7929882007042146263

`A062558(8*(n+1))`
-/

namespace A372788.P7929882007042146263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062558 (8 * (n + 1))

end

end A372788.P7929882007042146263

namespace A372788

/-- `A062558(8*(n+1))` -/
def P7929882007042146263.Spec : Prop :=
  ∀ n, P7929882007042146263.a n = A372788 (n + 1)

end A372788

/-!
# A372789: Number of divisors of 9n; a(n) = tau(9*n) = A000005(9*n).

The programs for A372789, the canonical program `A372789.P9582021093738632599` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372789 has offset 1).

The definition of A372789 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(9*(n+1))` (program `A372789.P9582021093738632599`, by `A372789.P9582021093738632599.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A372789.P9582021093738632599

`A000005(9*(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A372789

/-- `A000005(9*(n+1))` -/
def P9582021093738632599.Spec : Prop :=
  ∀ n, P9582021093738632599.a n = A372789 (n + 1)

theorem P9582021093738632599.correct : P9582021093738632599.Spec := by
  intro n
  simp only [A372789, Nat.add_sub_cancel]

end A372789

/-! ## A372789.P17944219745195550206

`∏{e}[9*(n+1), #+1]`
-/

namespace A372789.P17944219745195550206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A372789.P17944219745195550206

namespace A372789

/-- `∏{e}[9*(n+1), #+1]` -/
def P17944219745195550206.Spec : Prop :=
  ∀ n, (P17944219745195550206.a n : ℤ) = A372789 (n + 1)

end A372789

/-! ## A372789.P5350796219027354540

`∑{d}[n+1, 4-gcd(3, #)]`
-/

namespace A372789.P5350796219027354540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (4 - (Nat.gcd 3 d : ℤ))

end

end A372789.P5350796219027354540

namespace A372789

/-- `∑{d}[n+1, 4-gcd(3, #)]` -/
def P5350796219027354540.Spec : Prop :=
  ∀ n, P5350796219027354540.a n = A372789 (n + 1)

end A372789

/-! ## A372789.P6963115247833278080

`∑{d}[n+1, C(3, #%3)]`
-/

namespace A372789.P6963115247833278080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose 3 (d % 3)

end

end A372789.P6963115247833278080

namespace A372789

/-- `∑{d}[n+1, C(3, #%3)]` -/
def P6963115247833278080.Spec : Prop :=
  ∀ n, (P6963115247833278080.a n : ℤ) = A372789 (n + 1)

end A372789

/-! ## A372789.P10843199827927586824

`∑{d}[n+1, lcm(3, #)/#]`
-/

namespace A372789.P10843199827927586824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.lcm 3 d : ℚ) / (d : ℚ)

end

end A372789.P10843199827927586824

namespace A372789

/-- `∑{d}[n+1, lcm(3, #)/#]` -/
def P10843199827927586824.Spec : Prop :=
  ∀ n, P10843199827927586824.a n = (A372789 (n + 1) : ℚ)

end A372789

/-! ## A372789.P17727542171946883547

`∑{d}[n+1, 3^(#²%3)]`
-/

namespace A372789.P17727542171946883547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), 3 ^ (d ^ 2 % 3)

end

end A372789.P17727542171946883547

namespace A372789

/-- `∑{d}[n+1, 3^(#²%3)]` -/
def P17727542171946883547.Spec : Prop :=
  ∀ n, (P17727542171946883547.a n : ℤ) = A372789 (n + 1)

end A372789

/-! ## A372789.P16428397732726284595

`A372713(3*(n+1))`
-/

namespace A372789.P16428397732726284595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372713 (3 * (n + 1))

end

end A372789.P16428397732726284595

namespace A372789

/-- `A372713(3*(n+1))` -/
def P16428397732726284595.Spec : Prop :=
  ∀ n, P16428397732726284595.a n = A372789 (n + 1)

end A372789

/-! ## A372789.P5468108128076900614

`∑{d}[n+1, A144437(#)]`
-/

namespace A372789.P5468108128076900614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A144437 d

end

end A372789.P5468108128076900614

namespace A372789

/-- `∑{d}[n+1, A144437(#)]` -/
def P5468108128076900614.Spec : Prop :=
  ∀ n, P5468108128076900614.a n = A372789 (n + 1)

end A372789

/-! ## A372789.P14444027247318029643

`A372713(n+1)+A035191(n+1)`
-/

namespace A372789.P14444027247318029643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372713 (n + 1) + A035191 (n + 1)

end

end A372789.P14444027247318029643

namespace A372789

/-- `A372713(n+1)+A035191(n+1)` -/
def P14444027247318029643.Spec : Prop :=
  ∀ n, P14444027247318029643.a n = A372789 (n + 1)

end A372789

/-! ## A372789.P9477825861686717400

`(A366922(n+1)+1)*A035191(n+1)`
-/

namespace A372789.P9477825861686717400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A366922 (n + 1) + 1) * A035191 (n + 1)

end

end A372789.P9477825861686717400

namespace A372789

/-- `(A366922(n+1)+1)*A035191(n+1)` -/
def P9477825861686717400.Spec : Prop :=
  ∀ n, P9477825861686717400.a n = A372789 (n + 1)

end A372789

/-! ## A372789.P800821787769639211

`A035191(n+1)+A035191(n+1)+A000005(n+1)`
-/

namespace A372789.P800821787769639211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035191 (n + 1) + (A035191 (n + 1) + A000005 (n + 1))

end

end A372789.P800821787769639211

namespace A372789

/-- `A035191(n+1)+A035191(n+1)+A000005(n+1)` -/
def P800821787769639211.Spec : Prop :=
  ∀ n, P800821787769639211.a n = A372789 (n + 1)

end A372789

/-! ## A372789.P3211395736659605394

`A372713(n+1)+A372713(n+1)-A000005(n+1)`
-/

namespace A372789.P3211395736659605394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372713 (n + 1) + (A372713 (n + 1) - A000005 (n + 1))

end

end A372789.P3211395736659605394

namespace A372789

/-- `A372713(n+1)+A372713(n+1)-A000005(n+1)` -/
def P3211395736659605394.Spec : Prop :=
  ∀ n, P3211395736659605394.a n = A372789 (n + 1)

end A372789

/-! ## A372789.P5902926309544936599

`A372713(n+1)+A328484(n+1)/A373438(n+1)`
-/

namespace A372789.P5902926309544936599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372713 (n + 1) : ℚ) + (A328484 (n + 1) : ℚ) / (A373438 (n + 1) : ℚ)

end

end A372789.P5902926309544936599

namespace A372789

/-- `A372713(n+1)+A328484(n+1)/A373438(n+1)` -/
def P5902926309544936599.Spec : Prop :=
  ∀ n, P5902926309544936599.a n = (A372789 (n + 1) : ℚ)

end A372789

/-! ## A372789.P3086122779059566944

`A372713(n+1)+A372713(n+1)/A366922(n+1)`
-/

namespace A372789.P3086122779059566944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372713 (n + 1) : ℚ) + (A372713 (n + 1) : ℚ) / (A366922 (n + 1) : ℚ)

end

end A372789.P3086122779059566944

namespace A372789

/-- `A372713(n+1)+A372713(n+1)/A366922(n+1)` -/
def P3086122779059566944.Spec : Prop :=
  ∀ n, P3086122779059566944.a n = (A372789 (n + 1) : ℚ)

end A372789

/-! ## A372789.P12559321928567218618

`∑{d}[n+1, A169609(#)]`
-/

namespace A372789.P12559321928567218618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A169609 d

end

end A372789.P12559321928567218618

namespace A372789

/-- `∑{d}[n+1, A169609(#)]` -/
def P12559321928567218618.Spec : Prop :=
  ∀ n, P12559321928567218618.a n = A372789 (n + 1)

end A372789

/-! ## A372789.P15583387305176527635

`A099777(2*A061898(n+1))`
-/

namespace A372789.P15583387305176527635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (2 * A061898 (n + 1)).toNat

end

end A372789.P15583387305176527635

namespace A372789

/-- `A099777(2*A061898(n+1))` -/
def P15583387305176527635.Spec : Prop :=
  ∀ n, P15583387305176527635.a n = A372789 (n + 1)

end A372789

/-! ## A372789.P7718359498007460311

`A099777(2*A064614(n+1))`
-/

namespace A372789.P7718359498007460311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (2 * A064614 (n + 1)).toNat

end

end A372789.P7718359498007460311

namespace A372789

/-- `A099777(2*A064614(n+1))` -/
def P7718359498007460311.Spec : Prop :=
  ∀ n, P7718359498007460311.a n = A372789 (n + 1)

end A372789

/-! ## A372789.P15670095810871818173

`A099777(2*A072027(n+1))`
-/

namespace A372789.P15670095810871818173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (2 * A072027 (n + 1)).toNat

end

end A372789.P15670095810871818173

namespace A372789

/-- `A099777(2*A072027(n+1))` -/
def P15670095810871818173.Spec : Prop :=
  ∀ n, P15670095810871818173.a n = A372789 (n + 1)

end A372789

/-! ## A372789.P606885949296379045

`A069157(A008600(n+1))`
-/

namespace A372789.P606885949296379045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A008600 (n + 1)).toNat

end

end A372789.P606885949296379045

namespace A372789

/-- `A069157(A008600(n+1))` -/
def P606885949296379045.Spec : Prop :=
  ∀ n, P606885949296379045.a n = A372789 (n + 1)

end A372789

/-! ## A372789.P2478739999114798158

`A277692(A161705(n+1))`
-/

namespace A372789.P2478739999114798158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (A161705 (n + 1)).toNat

end

end A372789.P2478739999114798158

namespace A372789

/-- `A277692(A161705(n+1))` -/
def P2478739999114798158.Spec : Prop :=
  ∀ n, P2478739999114798158.a n = A372789 (n + 1)

end A372789

/-!
# A372790: a(n) = tau(10*n) = A000005(10*n).

The programs for A372790, the canonical program `A372790.P2447796418738080202` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372790 has offset 1).

The definition of A372790 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(10*(n+1))` (program `A372790.P2447796418738080202`, by `A372790.P2447796418738080202.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A372790.P2447796418738080202

`A000005(10*(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A372790

/-- `A000005(10*(n+1))` -/
def P2447796418738080202.Spec : Prop :=
  ∀ n, P2447796418738080202.a n = A372790 (n + 1)

theorem P2447796418738080202.correct : P2447796418738080202.Spec := by
  intro n
  simp only [A372790, Nat.add_sub_cancel]

end A372790

/-! ## A372790.P14619869431102229693

`∏{e}[10*(n+1), #+1]`
-/

namespace A372790.P14619869431102229693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A372790.P14619869431102229693

namespace A372790

/-- `∏{e}[10*(n+1), #+1]` -/
def P14619869431102229693.Spec : Prop :=
  ∀ n, (P14619869431102229693.a n : ℤ) = A372790 (n + 1)

end A372790

/-! ## A372790.P17088460089491505198

`A372785(2*(n+1))`
-/

namespace A372790.P17088460089491505198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372785 (2 * (n + 1))

end

end A372790.P17088460089491505198

namespace A372790

/-- `A372785(2*(n+1))` -/
def P17088460089491505198.Spec : Prop :=
  ∀ n, P17088460089491505198.a n = A372790 (n + 1)

end A372790

/-! ## A372790.P12218590876141331128

`A099777(5*(n+1))`
-/

namespace A372790.P12218590876141331128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (5 * (n + 1))

end

end A372790.P12218590876141331128

namespace A372790

/-- `A099777(5*(n+1))` -/
def P12218590876141331128.Spec : Prop :=
  ∀ n, P12218590876141331128.a n = A372790 (n + 1)

end A372790

/-! ## A372790.P6494933664810713862

`A372786(A072029(n+1))`
-/

namespace A372790.P6494933664810713862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372786 (A072029 (n + 1)).toNat

end

end A372790.P6494933664810713862

namespace A372790

/-- `A372786(A072029(n+1))` -/
def P6494933664810713862.Spec : Prop :=
  ∀ n, P6494933664810713862.a n = A372790 (n + 1)

end A372790

/-! ## A372790.P5731116178678046891

`A372786(A235200(n+1))`
-/

namespace A372790.P5731116178678046891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372786 (A235200 (n + 1)).toNat

end

end A372790.P5731116178678046891

namespace A372790

/-- `A372786(A235200(n+1))` -/
def P5731116178678046891.Spec : Prop :=
  ∀ n, P5731116178678046891.a n = A372790 (n + 1)

end A372790

/-! ## A372790.P1242931828601405068

`A372786(A267099(n+1))`
-/

namespace A372790.P1242931828601405068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372786 (A267099 (n + 1)).toNat

end

end A372790.P1242931828601405068

namespace A372790

/-- `A372786(A267099(n+1))` -/
def P1242931828601405068.Spec : Prop :=
  ∀ n, P1242931828601405068.a n = A372790 (n + 1)

end A372790

/-! ## A372790.P6527747345366405993

`A372713(2*A072029(n+1))`
-/

namespace A372790.P6527747345366405993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372713 (2 * A072029 (n + 1)).toNat

end

end A372790.P6527747345366405993

namespace A372790

/-- `A372713(2*A072029(n+1))` -/
def P6527747345366405993.Spec : Prop :=
  ∀ n, P6527747345366405993.a n = A372790 (n + 1)

end A372790

/-! ## A372790.P2226328735703985078

`A372787(2*A072026(n+1))`
-/

namespace A372790.P2226328735703985078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372787 (2 * A072026 (n + 1)).toNat

end

end A372790.P2226328735703985078

namespace A372790

/-- `A372787(2*A072026(n+1))` -/
def P2226328735703985078.Spec : Prop :=
  ∀ n, P2226328735703985078.a n = A372790 (n + 1)

end A372790

/-! ## A372790.P13064588422091234191

`A372787(2*A072028(n+1))`
-/

namespace A372790.P13064588422091234191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372787 (2 * A072028 (n + 1)).toNat

end

end A372790.P13064588422091234191

namespace A372790

/-- `A372787(2*A072028(n+1))` -/
def P13064588422091234191.Spec : Prop :=
  ∀ n, P13064588422091234191.a n = A372790 (n + 1)

end A372790

/-! ## A372790.P17827886977430959085

`A372713(2*A235200(n+1))`
-/

namespace A372790.P17827886977430959085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372713 (2 * A235200 (n + 1)).toNat

end

end A372790.P17827886977430959085

namespace A372790

/-- `A372713(2*A235200(n+1))` -/
def P17827886977430959085.Spec : Prop :=
  ∀ n, P17827886977430959085.a n = A372790 (n + 1)

end A372790

/-! ## A372790.P16796301245761831206

`A372713(2*A267099(n+1))`
-/

namespace A372790.P16796301245761831206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372713 (2 * A267099 (n + 1)).toNat

end

end A372790.P16796301245761831206

namespace A372790

/-- `A372713(2*A267099(n+1))` -/
def P16796301245761831206.Spec : Prop :=
  ∀ n, P16796301245761831206.a n = A372790 (n + 1)

end A372790

/-! ## A372790.P9769608126875704632

`A372787(2*A235199(n+1))`
-/

namespace A372790.P9769608126875704632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372787 (2 * A235199 (n + 1)).toNat

end

end A372790.P9769608126875704632

namespace A372790

/-- `A372787(2*A235199(n+1))` -/
def P9769608126875704632.Spec : Prop :=
  ∀ n, P9769608126875704632.a n = A372790 (n + 1)

end A372790

/-! ## A372790.P4765806232214623926

`A320111(20*(n+1))`
-/

namespace A372790.P4765806232214623926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (20 * (n + 1))

end

end A372790.P4765806232214623926

namespace A372790

/-- `A320111(20*(n+1))` -/
def P4765806232214623926.Spec : Prop :=
  ∀ n, P4765806232214623926.a n = A372790 (n + 1)

end A372790

/-! ## A372790.P10882962377921047157

`A032741(10*(n+1))+1`
-/

namespace A372790.P10882962377921047157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (10 * (n + 1)) + 1

end

end A372790.P10882962377921047157

namespace A372790

/-- `A032741(10*(n+1))+1` -/
def P10882962377921047157.Spec : Prop :=
  ∀ n, P10882962377921047157.a n = A372790 (n + 1)

end A372790

/-! ## A372790.P8622904296730909506

`A062011(11*(n+1)-(n+1))/2`
-/

namespace A372790.P8622904296730909506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062011 (11 * (n + 1) - (n + 1)) : ℚ) / 2

end

end A372790.P8622904296730909506

namespace A372790

/-- `A062011(11*(n+1)-(n+1))/2` -/
def P8622904296730909506.Spec : Prop :=
  ∀ n, P8622904296730909506.a n = (A372790 (n + 1) : ℚ)

end A372790

/-! ## A372790.P5715430421994593291

`A339147(A017281(n+1))`
-/

namespace A372790.P5715430421994593291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339147 (A017281 (n + 1)).toNat

end

end A372790.P5715430421994593291

namespace A372790

/-- `A339147(A017281(n+1))` -/
def P5715430421994593291.Spec : Prop :=
  ∀ n, P5715430421994593291.a n = A372790 (n + 1)

end A372790

/-! ## A372790.P15164725195635540014

`A183063(10*2*(n+1))`
-/

namespace A372790.P15164725195635540014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (10 * (2 * (n + 1)))

end

end A372790.P15164725195635540014

namespace A372790

/-- `A183063(10*2*(n+1))` -/
def P15164725195635540014.Spec : Prop :=
  ∀ n, P15164725195635540014.a n = A372790 (n + 1)

end A372790

/-! ## A372790.P12190134637701650688

`A069157(A008602(n+1))`
-/

namespace A372790.P12190134637701650688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A008602 (n + 1)).toNat

end

end A372790.P12190134637701650688

namespace A372790

/-- `A069157(A008602(n+1))` -/
def P12190134637701650688.Spec : Prop :=
  ∀ n, P12190134637701650688.a n = A372790 (n + 1)

end A372790

/-! ## A372790.P8612665774256750226

`A069157(2*A008592(n+1))`
-/

namespace A372790.P8612665774256750226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (2 * A008592 (n + 1)).toNat

end

end A372790.P8612665774256750226

namespace A372790

/-- `A069157(2*A008592(n+1))` -/
def P8612665774256750226.Spec : Prop :=
  ∀ n, P8612665774256750226.a n = A372790 (n + 1)

end A372790

/-!
# A372791: a(n) = tau(11*n) = A000005(11*n).

The programs for A372791, the canonical program `A372791.P11603537677751678447` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372791 has offset 1).

The definition of A372791 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(11*(n+1))` (program `A372791.P11603537677751678447`, by `A372791.P11603537677751678447.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A372791.P11603537677751678447

`A000005(11*(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A372791

/-- `A000005(11*(n+1))` -/
def P11603537677751678447.Spec : Prop :=
  ∀ n, P11603537677751678447.a n = A372791 (n + 1)

theorem P11603537677751678447.correct : P11603537677751678447.Spec := by
  intro n
  simp only [A372791, Nat.add_sub_cancel]

end A372791

/-! ## A372791.P5505402828755157482

`∏{e}[11*(n+1), #+1]`
-/

namespace A372791.P5505402828755157482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A372791.P5505402828755157482

namespace A372791

/-- `∏{e}[11*(n+1), #+1]` -/
def P5505402828755157482.Spec : Prop :=
  ∀ n, (P5505402828755157482.a n : ℤ) = A372791 (n + 1)

end A372791

/-! ## A372791.P8911145554185543649

`A000005(A008593(n+1))%A008593(n+1)`
-/

namespace A372791.P8911145554185543649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A008593 (n + 1)).toNat) (A008593 (n + 1))

end

end A372791.P8911145554185543649

namespace A372791

/-- `A000005(A008593(n+1))%A008593(n+1)` -/
def P8911145554185543649.Spec : Prop :=
  ∀ n, P8911145554185543649.a n = A372791 (n + 1)

end A372791

/-! ## A372791.P13265807422946952748

`A062011(11*(n+1))/2`
-/

namespace A372791.P13265807422946952748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062011 (11 * (n + 1)) : ℚ) / 2

end

end A372791.P13265807422946952748

namespace A372791

/-- `A062011(11*(n+1))/2` -/
def P13265807422946952748.Spec : Prop :=
  ∀ n, P13265807422946952748.a n = (A372791 (n + 1) : ℚ)

theorem P13265807422946952748.correct : P13265807422946952748.Spec := by
  intro n
  simp only [A372791, Nat.add_sub_cancel, A372791.P13265807422946952748.a, A372791.P11603537677751678447.a, A000005, A000005.P16091521709108585461.a, A062011, A062011.P17525320077853469406.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A372791

/-! ## A372791.P7459792431130526282

`A032741(A008593(n+1))+1`
-/

namespace A372791.P7459792431130526282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A008593 (n + 1)).toNat + 1

end

end A372791.P7459792431130526282

namespace A372791

/-- `A032741(A008593(n+1))+1` -/
def P7459792431130526282.Spec : Prop :=
  ∀ n, P7459792431130526282.a n = A372791 (n + 1)

end A372791

/-! ## A372791.P4563118179063005248

`A372787(A234747(n+1))`
-/

namespace A372791.P4563118179063005248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372787 (A234747 (n + 1)).toNat

end

end A372791.P4563118179063005248

namespace A372791

/-- `A372787(A234747(n+1))` -/
def P4563118179063005248.Spec : Prop :=
  ∀ n, P4563118179063005248.a n = A372791 (n + 1)

end A372791

/-! ## A372791.P7260204774404402853

`A069157(A008604(n+1))`
-/

namespace A372791.P7260204774404402853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A008604 (n + 1)).toNat

end

end A372791.P7260204774404402853

namespace A372791

/-- `A069157(A008604(n+1))` -/
def P7260204774404402853.Spec : Prop :=
  ∀ n, P7260204774404402853.a n = A372791 (n + 1)

end A372791

/-! ## A372791.P12300218005432775712

`A277692(A161709(n+1))`
-/

namespace A372791.P12300218005432775712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (A161709 (n + 1)).toNat

end

end A372791.P12300218005432775712

namespace A372791

/-- `A277692(A161709(n+1))` -/
def P12300218005432775712.Spec : Prop :=
  ∀ n, P12300218005432775712.a n = A372791 (n + 1)

end A372791

/-! ## A372791.P16289471725505393954

`A368684(11*A000027(2*(n+1)))`
-/

namespace A372791.P16289471725505393954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368684 (11 * A000027 (2 * (n + 1))).toNat

end

end A372791.P16289471725505393954

namespace A372791

/-- `A368684(11*A000027(2*(n+1)))` -/
def P16289471725505393954.Spec : Prop :=
  ∀ n, P16289471725505393954.a n = A372791 (n + 1)

end A372791

/-! ## A372791.P11553801373981070017

`A355731(A246929(n+1))`
-/

namespace A372791.P11553801373981070017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355731 (A246929 (n + 1)).toNat

end

end A372791.P11553801373981070017

namespace A372791

/-- `A355731(A246929(n+1))` -/
def P11553801373981070017.Spec : Prop :=
  ∀ n, P11553801373981070017.a n = A372791 (n + 1)

end A372791

/-!
# A372792: Number of divisors of 12n; a(n) = tau(12*n) = A000005(12*n).

The programs for A372792, the canonical program `A372792.P6141643957369447150` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372792 has offset 1).

The definition of A372792 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(12*(n+1))` (program `A372792.P6141643957369447150`, by `A372792.P6141643957369447150.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A372792.P6141643957369447150

`A000005(12*(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A372792

/-- `A000005(12*(n+1))` -/
def P6141643957369447150.Spec : Prop :=
  ∀ n, P6141643957369447150.a n = A372792 (n + 1)

theorem P6141643957369447150.correct : P6141643957369447150.Spec := by
  intro n
  simp only [A372792, Nat.add_sub_cancel]

end A372792

/-! ## A372792.P8502603094300326471

`∏{e}[12*(n+1), #+1]`
-/

namespace A372792.P8502603094300326471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A372792.P8502603094300326471

namespace A372792

/-- `∏{e}[12*(n+1), #+1]` -/
def P8502603094300326471.Spec : Prop :=
  ∀ n, (P8502603094300326471.a n : ℤ) = A372792 (n + 1)

end A372792

/-! ## A372792.P11043014265799082465

`∑{d}[6*(n+1), #%2+1]`
-/

namespace A372792.P11043014265799082465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d % 2 + 1)

end

end A372792.P11043014265799082465

namespace A372792

/-- `∑{d}[6*(n+1), #%2+1]` -/
def P11043014265799082465.Spec : Prop :=
  ∀ n, (P11043014265799082465.a n : ℤ) = A372792 (n + 1)

end A372792

/-! ## A372792.P6482983763779509482

`A372786(2*(n+1))`
-/

namespace A372792.P6482983763779509482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372786 (2 * (n + 1))

end

end A372792.P6482983763779509482

namespace A372792

/-- `A372786(2*(n+1))` -/
def P6482983763779509482.Spec : Prop :=
  ∀ n, P6482983763779509482.a n = A372792 (n + 1)

end A372792

/-! ## A372792.P3168103781980970051

`A372713(4*(n+1))`
-/

namespace A372792.P3168103781980970051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372713 (4 * (n + 1))

end

end A372792.P3168103781980970051

namespace A372792

/-- `A372713(4*(n+1))` -/
def P3168103781980970051.Spec : Prop :=
  ∀ n, P3168103781980970051.a n = A372792 (n + 1)

end A372792

/-! ## A372792.P10796183404291958783

`A099777(6*(n+1))`
-/

namespace A372792.P10796183404291958783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (6 * (n + 1))

end

end A372792.P10796183404291958783

namespace A372792

/-- `A099777(6*(n+1))` -/
def P10796183404291958783.Spec : Prop :=
  ∀ n, P10796183404291958783.a n = A372792 (n + 1)

end A372792

/-! ## A372792.P14793252816467340709

`A372786(n+1)+A372786(n+1)-A372713(n+1)`
-/

namespace A372792.P14793252816467340709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372786 (n + 1) + (A372786 (n + 1) - A372713 (n + 1))

end

end A372792.P14793252816467340709

namespace A372792

/-- `A372786(n+1)+A372786(n+1)-A372713(n+1)` -/
def P14793252816467340709.Spec : Prop :=
  ∀ n, P14793252816467340709.a n = A372792 (n + 1)

end A372792

/-! ## A372792.P5527905867327156074

`A366872(3*n+1)`
-/

namespace A372792.P5527905867327156074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366872 (3 * n + 1)

end

end A372792.P5527905867327156074

namespace A372792

/-- `A366872(3*n+1)` -/
def P5527905867327156074.Spec : Prop :=
  ∀ n, P5527905867327156074.a n = A372792 (n + 1)

theorem P5527905867327156074.correct : P5527905867327156074.Spec := by
  intro n
  simp only [A372792, Nat.add_sub_cancel, A372792.P5527905867327156074.a, A372792.P6141643957369447150.a, A000005, A000005.P16091521709108585461.a, A366872, A366872.P9213635915992081364.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A372792

/-! ## A372792.P15036651985755270302

`A372784(3*(n+1))`
-/

namespace A372792.P15036651985755270302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372784 (3 * (n + 1))

end

end A372792.P15036651985755270302

namespace A372792

/-- `A372784(3*(n+1))` -/
def P15036651985755270302.Spec : Prop :=
  ∀ n, P15036651985755270302.a n = A372792 (n + 1)

end A372792

/-! ## A372792.P16018215683791485563

`A372789(2*A061898(n+1))`
-/

namespace A372792.P16018215683791485563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372789 (2 * A061898 (n + 1)).toNat

end

end A372792.P16018215683791485563

namespace A372792

/-- `A372789(2*A061898(n+1))` -/
def P16018215683791485563.Spec : Prop :=
  ∀ n, P16018215683791485563.a n = A372792 (n + 1)

end A372792

/-! ## A372792.P17021065762449007350

`A339147(A017533(n+1))`
-/

namespace A372792.P17021065762449007350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339147 (A017533 (n + 1)).toNat

end

end A372792.P17021065762449007350

namespace A372792

/-- `A339147(A017533(n+1))` -/
def P17021065762449007350.Spec : Prop :=
  ∀ n, P17021065762449007350.a n = A372792 (n + 1)

end A372792

/-! ## A372792.P8098351896271068429

`A372790(2*A072029(n+1))`
-/

namespace A372792.P8098351896271068429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372790 (2 * A072029 (n + 1)).toNat

end

end A372792.P8098351896271068429

namespace A372792

/-- `A372790(2*A072029(n+1))` -/
def P8098351896271068429.Spec : Prop :=
  ∀ n, P8098351896271068429.a n = A372792 (n + 1)

end A372792

/-! ## A372792.P8935188859097220428

`A372790(2*A235200(n+1))`
-/

namespace A372792.P8935188859097220428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372790 (2 * A235200 (n + 1)).toNat

end

end A372792.P8935188859097220428

namespace A372792

/-- `A372790(2*A235200(n+1))` -/
def P8935188859097220428.Spec : Prop :=
  ∀ n, P8935188859097220428.a n = A372792 (n + 1)

end A372792

/-! ## A372792.P10378734973646306641

`A372790(2*A267099(n+1))`
-/

namespace A372792.P10378734973646306641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372790 (2 * A267099 (n + 1)).toNat

end

end A372792.P10378734973646306641

namespace A372792

/-- `A372790(2*A267099(n+1))` -/
def P10378734973646306641.Spec : Prop :=
  ∀ n, P10378734973646306641.a n = A372792 (n + 1)

end A372792

/-! ## A372792.P12500767605861381743

`A069157(A008606(n+1))`
-/

namespace A372792.P12500767605861381743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A008606 (n + 1)).toNat

end

end A372792.P12500767605861381743

namespace A372792

/-- `A069157(A008606(n+1))` -/
def P12500767605861381743.Spec : Prop :=
  ∀ n, P12500767605861381743.a n = A372792 (n + 1)

end A372792

/-! ## A372792.P17279652765011059418

`A277692(A103214(n+1))`
-/

namespace A372792.P17279652765011059418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (A103214 (n + 1)).toNat

end

end A372792.P17279652765011059418

namespace A372792

/-- `A277692(A103214(n+1))` -/
def P17279652765011059418.Spec : Prop :=
  ∀ n, P17279652765011059418.a n = A372792 (n + 1)

end A372792

/-! ## A372792.P13434572195414020153

`A069157(2*A008594(n+1))`
-/

namespace A372792.P13434572195414020153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (2 * A008594 (n + 1)).toNat

end

end A372792.P13434572195414020153

namespace A372792

/-- `A069157(2*A008594(n+1))` -/
def P13434572195414020153.Spec : Prop :=
  ∀ n, P13434572195414020153.a n = A372792 (n + 1)

end A372792

/-! ## A372792.P34007476029521081

`A112329(2*A008606(n+1))`
-/

namespace A372792.P34007476029521081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (2 * A008606 (n + 1)).toNat

end

end A372792.P34007476029521081

namespace A372792

/-- `A112329(2*A008606(n+1))` -/
def P34007476029521081.Spec : Prop :=
  ∀ n, P34007476029521081.a n = A372792 (n + 1)

end A372792

/-! ## A372792.P413791403485242187

`A355731(A246930(n+1))`
-/

namespace A372792.P413791403485242187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355731 (A246930 (n + 1)).toNat

end

end A372792.P413791403485242187

namespace A372792

/-- `A355731(A246930(n+1))` -/
def P413791403485242187.Spec : Prop :=
  ∀ n, P413791403485242187.a n = A372792 (n + 1)

end A372792

/-!
# A372793: Sequence related to the asymptotic expansion of Sum_{k=1..n} tau(m*k).

The programs for A372793, there is no canonical definition to state claims against.
-/

/-! ## A372793.P306760905043477521

`(n+1)*A213948(2^n)`
-/

namespace A372793.P306760905043477521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A213948 (2 ^ n)

end

end A372793.P306760905043477521

/-! ## A372793.P6834383456933071950

`∏{p}[A000984(2*n+1), gcd(n+1, 1-#)]`
-/

namespace A372793.P6834383456933071950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Int.gcd (n + 1 : ℤ) (1 - (p : ℤ))

end

end A372793.P6834383456933071950

/-!
# A372796: E.g.f. A(x) satisfies A(A(A(A(x)))) = (-1/8) * log(1 - 8*x).

The programs for A372796, there is no canonical definition to state claims against.
-/

/-! ## A372796.P7029219731546768561

`A393714(∑[n^n])`
-/

namespace A372796.P7029219731546768561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393714 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A372796.P7029219731546768561

/-!
# A372797: Smallest prime p such that the multiplicative order of 4 modulo p is 2*n, or 0 if no such prime exists.

The programs for A372797, there is no canonical definition to state claims against.
-/

/-! ## A372797.P12253438584761777854

`A156284(A004119(n))`
-/

namespace A372797.P12253438584761777854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156284 (A004119 n).toNat

end

end A372797.P12253438584761777854

/-!
# A372798: Smallest prime p such that the multiplicative order of 8 modulo p is n, or 0 if no such prime exists.

The programs for A372798, there is no canonical definition to state claims against.
-/

/-! ## A372798.P8208603324326206837

`A014567(A224696(n+5)%A017533(2*(n+1)))`
-/

namespace A372798.P8208603324326206837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (Int.tmod (A224696 (n + 5)) (A017533 (2 * (n + 1)))).toNat

end

end A372798.P8208603324326206837

