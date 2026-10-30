import SequenceMachineLib
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
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
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

/-!
# A369100: Dirichlet g.f.: zeta(s)^3 * (1 - 2^(1-s))^2.

The programs for A369100, the canonical program `A369100.P6338939632124751077` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369100 has offset 1).

The definition of A369100 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369100.P6338939632124751077

`∑{d}[n+1, A228441(#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A369100

/-- `∑{d}[n+1, A228441(#)]` -/
def P6338939632124751077.Spec : Prop :=
  ∀ n, P6338939632124751077.a n = A369100 (n + 1)

theorem P6338939632124751077.correct : P6338939632124751077.Spec := by
  intro n
  simp only [A369100, Nat.add_sub_cancel]

end A369100

/-! ## A369100.P12136463575001742558

`∑{d}[n+1, (-1)^((n+1)/#+1)*A048272(#)]`
-/

namespace A369100.P12136463575001742558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-1 : ℝ) ^ ((n + 1 : ℚ) / (d : ℚ) + 1 : ℝ) * (A048272 d : ℝ)

end

end A369100.P12136463575001742558

namespace A369100

/-- `∑{d}[n+1, (-1)^((n+1)/#+1)*A048272(#)]` -/
def P12136463575001742558.Spec : Prop :=
  ∀ n, P12136463575001742558.a n = (A369100 (n + 1) : ℝ)

end A369100

/-! ## A369100.P3381107726307047957

`∑{d}[n+1, A115607(#)*A130054((n+1)/#)]`
-/

namespace A369100.P3381107726307047957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115607 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369100.P3381107726307047957

namespace A369100

/-- `∑{d}[n+1, A115607(#)*A130054((n+1)/#)]` -/
def P3381107726307047957.Spec : Prop :=
  ∀ n, P3381107726307047957.a n = A369100 (n + 1)

end A369100

/-! ## A369100.P13225300059170032502

`∑{d}[n+1, A117212(#)*A288417((n+1)/#)]`
-/

namespace A369100.P13225300059170032502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117212 d * A288417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369100.P13225300059170032502

namespace A369100

/-- `∑{d}[n+1, A117212(#)*A288417((n+1)/#)]` -/
def P13225300059170032502.Spec : Prop :=
  ∀ n, P13225300059170032502.a n = A369100 (n + 1)

end A369100

/-! ## A369100.P123386379736929665

`∑{d}[n+1, A101035(#)*A328487((n+1)/#)]`
-/

namespace A369100.P123386379736929665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101035 d * A328487 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369100.P123386379736929665

namespace A369100

/-- `∑{d}[n+1, A101035(#)*A328487((n+1)/#)]` -/
def P123386379736929665.Spec : Prop :=
  ∀ n, P123386379736929665.a n = A369100 (n + 1)

end A369100

/-! ## A369100.P4707209745547189339

`∑{d}[n+1, A317528(#)*A317529((n+1)/#)]`
-/

namespace A369100.P4707209745547189339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A317528 d * A317529 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369100.P4707209745547189339

namespace A369100

/-- `∑{d}[n+1, A317528(#)*A317529((n+1)/#)]` -/
def P4707209745547189339.Spec : Prop :=
  ∀ n, P4707209745547189339.a n = A369100 (n + 1)

end A369100

/-! ## A369100.P9105361546587944749

`∑{d}[n+1, A318768(#)*A361019((n+1)/#)]`
-/

namespace A369100.P9105361546587944749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A318768 d * A361019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369100.P9105361546587944749

namespace A369100

/-- `∑{d}[n+1, A318768(#)*A361019((n+1)/#)]` -/
def P9105361546587944749.Spec : Prop :=
  ∀ n, P9105361546587944749.a n = A369100 (n + 1)

end A369100

/-! ## A369100.P18362742163800435986

`∑{d}[n+1, A000005(#)*A176563((n+1)/#-1)]`
-/

namespace A369100.P18362742163800435986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A176563 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A369100.P18362742163800435986

namespace A369100

/-- `∑{d}[n+1, A000005(#)*A176563((n+1)/#-1)]` -/
def P18362742163800435986.Spec : Prop :=
  ∀ n, P18362742163800435986.a n = A369100 (n + 1)

end A369100

/-!
# A369102: Expansion of (1/x) * Series_Reversion( x * ((1-x)^4-x^4) ).

The programs for A369102, the canonical program `A369102.P9450148771807565335` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369102 has offset 0).

The definition of A369102 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369102.P9450148771807565335

`1/(n+1)*∑{#}[floor(n/4), C(n+#, #)*C(5*n+3, n-4*#)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A369102

/-- `1/(n+1)*∑{#}[floor(n/4), C(n+#, #)*C(5*n+3, n-4*#)]` -/
def P9450148771807565335.Spec : Prop :=
  ∀ n, P9450148771807565335.a n = (A369102 n : ℚ)

end A369102

/-! ## A369102.P9872326874331334291

`A118971(n)+A109434(A002464(n))`
-/

namespace A369102.P9872326874331334291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118971 n + A109434 (A002464 n).toNat

end

end A369102.P9872326874331334291

namespace A369102

/-- `A118971(n)+A109434(A002464(n))` -/
def P9872326874331334291.Spec : Prop :=
  ∀ n, P9872326874331334291.a n = A369102 n

end A369102

/-!
# A369105: Primes p such that p+2 has only prime factors congruent to -1 modulo 4.

The programs for A369105, the canonical program `A369105.P2590256937605570919` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369105 has offset 1).

The definition of A369105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1873 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369105.P3242509437243864662

`∩[A004614(n+1)-2, A000040(n+1)]`
-/

namespace A369105.P3242509437243864662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369105.P3242509437243864662

namespace A369105

/-- `∩[A004614(n+1)-2, A000040(n+1)]` -/
def P3242509437243864662.Spec : Prop :=
  ∀ n, (P3242509437243864662.a n : ℤ) = A369105 (n + 1)

end A369105

/-! ## A369105.P2590256937605570919

`∩[A004614(n+1)-2, A065091(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A369105

/-- `∩[A004614(n+1)-2, A065091(n+1)]` -/
def P2590256937605570919.Spec : Prop :=
  ∀ n, (P2590256937605570919.a n : ℤ) = A369105 (n + 1)

theorem P2590256937605570919.correct : P2590256937605570919.Spec := by
  intro n
  simp only [A369105, Nat.add_sub_cancel]

end A369105

/-! ## A369105.P12870365066294531643

`p?[record[A097706(n+1)-2]]`
-/

namespace A369105.P12870365066294531643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A369105.P12870365066294531643

namespace A369105

/-- `p?[record[A097706(n+1)-2]]` -/
def P12870365066294531643.Spec : Prop :=
  ∀ n, P12870365066294531643.a n = A369105 (n + 1)

end A369105

/-! ## A369105.P3033488777365887221

`p?[n*A072436(n+2)]`
-/

namespace A369105.P3033488777365887221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A072436 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A369105.P3033488777365887221

namespace A369105

/-- `p?[n*A072436(n+2)]` -/
def P3033488777365887221.Spec : Prop :=
  ∀ n, P3033488777365887221.a n = A369105 (n + 1)

end A369105

/-! ## A369105.P10787862909014879356

`eq[A161882(n+2), A226602(n)]`
-/

namespace A369105.P10787862909014879356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161882 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369105.P10787862909014879356

namespace A369105

/-- `eq[A161882(n+2), A226602(n)]` -/
def P10787862909014879356.Spec : Prop :=
  ∀ n, (P10787862909014879356.a n : ℤ) = A369105 (n + 1)

end A369105

/-!
# A369109: a(n) is the number of pairs of twin primes p and p+2 both less than or equal to 10^n such that p is congruent to 1 modulo 4.

The programs for A369109, there is no canonical definition to state claims against.
-/

/-! ## A369109.P5443250283811589112

`A008620(A038761(n)+A001523(n))`
-/

namespace A369109.P5443250283811589112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A038761 n + A001523 n).toNat

end

end A369109.P5443250283811589112

/-!
# A369112: a(n) is the smallest number that has the n-th prime signature and is 1 greater than a prime, or -1 if no such number exists.

The programs for A369112, there is no canonical definition to state claims against.
-/

/-! ## A369112.P2314817205164538786

`or(A010815(A069959(n)), A025487(n+1))`
-/

namespace A369112.P2314817205164538786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010815 (A069959 n).toNat) (A025487 (n + 1))

end

end A369112.P2314817205164538786

/-!
# A369113: Tropical version of Somos-6 sequence A006722.

The programs for A369113, the canonical program `A369113.P3143122508959027522` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369113 has offset 0).

The definition of A369113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369113.P3143122508959027522

`ogf((-1+x+x^4)/(1-x-x^4+x^6+x^9-x^10))`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A369113

/-- `ogf((-1+x+x^4)/(1-x-x^4+x^6+x^9-x^10))` -/
def P3143122508959027522.Spec : Prop :=
  ∀ n, P3143122508959027522.a n = A369113 n

theorem P3143122508959027522.correct : P3143122508959027522.Spec := by
  intro n
  simp only [A369113]

end A369113

/-! ## A369113.P14032080905167550968

`A001971(n)-A008616(n²)`
-/

namespace A369113.P14032080905167550968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 n - A008616 (n ^ 2)

end

end A369113.P14032080905167550968

namespace A369113

/-- `A001971(n)-A008616(n²)` -/
def P14032080905167550968.Spec : Prop :=
  ∀ n, P14032080905167550968.a n = A369113 n

end A369113

/-! ## A369113.P18027124762781682691

`A369611(lt[0, A369624(2*(n+1))])`
-/

namespace A369113.P18027124762781682691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369624 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369611 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A369113.P18027124762781682691

namespace A369113

/-- `A369611(lt[0, A369624(2*(n+1))])` -/
def P18027124762781682691.Spec : Prop :=
  ∀ n, P18027124762781682691.a n = A369113 n

end A369113

/-!
# A369114: Expansion of (1/x) * Series_Reversion( x * ((1-x)^3-x^3) ).

The programs for A369114, the canonical program `A369114.P6460459399855297979` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369114 has offset 0).

The definition of A369114 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369114.P6460459399855297979

`1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(4*n+2, n-3*#)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A369114

/-- `1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(4*n+2, n-3*#)]` -/
def P6460459399855297979.Spec : Prop :=
  ∀ n, P6460459399855297979.a n = (A369114 n : ℚ)

end A369114

/-! ## A369114.P2001190571383528113

`A002893(n)-A073189(A002893(n))`
-/

namespace A369114.P2001190571383528113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002893 n - A073189 (A002893 n).toNat

end

end A369114.P2001190571383528113

namespace A369114

/-- `A002893(n)-A073189(A002893(n))` -/
def P2001190571383528113.Spec : Prop :=
  ∀ n, P2001190571383528113.a n = A369114 n

end A369114

/-!
# A369115: Expansion of (1 - x)^(-2) * Sum_{j>=0} (x^j / (1 - Sum_{k=1..j} x^k)).

The programs for A369115, there is no canonical definition to state claims against.
-/

/-! ## A369115.P6481570478507770129

`∑[∑[A079500(n)]]`
-/

namespace A369115.P6481570478507770129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079500 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369115.P6481570478507770129

/-! ## A369115.P8277167516969951532

`∑[A186537(1+n)]`
-/

namespace A369115.P8277167516969951532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186537 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369115.P8277167516969951532

/-! ## A369115.P7248443838521932865

`∑[∑[∑[A368279(n)]]]`
-/

namespace A369115.P7248443838521932865
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368279 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369115.P7248443838521932865

/-! ## A369115.P11473775466165889522

`∑[∑[A007059(n+1)]]`
-/

namespace A369115.P11473775466165889522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369115.P11473775466165889522

/-! ## A369115.P18236655726554639175

`∑[record[A186537(A152271(n))]]`
-/

namespace A369115.P18236655726554639175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186537 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369115.P18236655726554639175

/-! ## A369115.P17692168458009753788

`∑[∑[A238345(C(n, 2)+1)]]`
-/

namespace A369115.P17692168458009753788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238345 (Nat.choose n 2 + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369115.P17692168458009753788

/-!
# A369116: Expansion of (1 - x)^2 * Sum_{j>=0} (x^j / (1 - Sum_{k=1..j} x^k)).

The programs for A369116, there is no canonical definition to state claims against.
-/

/-! ## A369116.P15520126770928816448

`Δ[A368279(abs(1-n))]`
-/

namespace A369116.P15520126770928816448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368279 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369116.P15520126770928816448

/-! ## A369116.P3873109342012341553

`A368279(n)-A368279(abs(1-n))`
-/

namespace A369116.P3873109342012341553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368279 n - A368279 |1 - (n : ℤ)|.toNat

end

end A369116.P3873109342012341553

/-!
# A369118: k is a term if and only if k is a composite number where the bases and the exponents of its factors in the prime decomposition are all odd primes.

The programs for A369118, there is no canonical definition to state claims against.
-/

/-! ## A369118.P4222523597663241129

`A381825(A140823(n+1))`
-/

namespace A369118.P4222523597663241129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381825 (A140823 (n + 1)).toNat

end

end A369118.P4222523597663241129

/-! ## A369118.P17806690175165783129

`filter[A381824(n+2), A293449(#)]`
-/

namespace A369118.P17806690175165783129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381824 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A369118.P17806690175165783129

/-! ## A369118.P12707129691209832943

`filter[A381825(n+2), A293449(#)]`
-/

namespace A369118.P12707129691209832943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381825 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293449 (f1 j).toNat = 1) n)

end

end A369118.P12707129691209832943

/-! ## A369118.P4969892684554283854

`A381825(A077168(n)+1)`
-/

namespace A369118.P4969892684554283854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381825 (A077168 n + 1).toNat

end

end A369118.P4969892684554283854

/-! ## A369118.P18095425641700801898

`A381825(A187829(n+2))`
-/

namespace A369118.P18095425641700801898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381825 (A187829 (n + 2)).toNat

end

end A369118.P18095425641700801898

/-!
# A369119: a(n) = (n + 1)^[is_prime(n + 1)] * n!.

The programs for A369119, the canonical program `A369119.P11770962019808965455` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369119 has offset 0).

The definition of A369119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369119.P11770962019808965455

`(n+1)^A010051(n+1)*n!`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A369119

/-- `(n+1)^A010051(n+1)*n!` -/
def P11770962019808965455.Spec : Prop :=
  ∀ n, P11770962019808965455.a n = (A369119 n : ℚ)

end A369119

/-! ## A369119.P9263765154681426973

`lcm(n!, ∏{p}[n+1, #])`
-/

namespace A369119.P9263765154681426973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.factorial n) (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A369119.P9263765154681426973

namespace A369119

/-- `lcm(n!, ∏{p}[n+1, #])` -/
def P9263765154681426973.Spec : Prop :=
  ∀ n, (P9263765154681426973.a n : ℤ) = A369119 n

end A369119

/-! ## A369119.P14664109504431548499

`(n!²%(n+1)+n)!`
-/

namespace A369119.P14664109504431548499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial n ^ 2 % (n + 1) + n)

end

end A369119.P14664109504431548499

namespace A369119

/-- `(n!²%(n+1)+n)!` -/
def P14664109504431548499.Spec : Prop :=
  ∀ n, (P14664109504431548499.a n : ℤ) = A369119 n

end A369119

/-! ## A369119.P11811010585571768746

`lcm(n+1, n!²)/n!`
-/

namespace A369119.P11811010585571768746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (Nat.factorial n ^ 2) : ℚ) / (Nat.factorial n : ℚ)

end

end A369119.P11811010585571768746

namespace A369119

/-- `lcm(n+1, n!²)/n!` -/
def P11811010585571768746.Spec : Prop :=
  ∀ n, P11811010585571768746.a n = (A369119 n : ℚ)

end A369119

/-! ## A369119.P15314760049677040349

`gcd(n+1, n!+1)*n!`
-/

namespace A369119.P15314760049677040349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (Nat.factorial n + 1) * Nat.factorial n

end

end A369119.P15314760049677040349

namespace A369119

/-- `gcd(n+1, n!+1)*n!` -/
def P15314760049677040349.Spec : Prop :=
  ∀ n, (P15314760049677040349.a n : ℤ) = A369119 n

end A369119

/-!
# A369120: a(n) = Sum_{k=0..n} A369134(n, k).

The programs for A369120, there is no canonical definition to state claims against.
-/

/-! ## A369120.P13626428909246849983

`∑{#}[n, A369134(C(n+1, 2)+#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369120.P13626428909246849983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A369134 (Nat.choose (n + 1) 2 + k)

end

end A369120.P13626428909246849983

/-!
# A369121: a(n) = A369134(n, n).

The programs for A369121, there is no canonical definition to state claims against.
-/

/-! ## A369121.P13494187886730119597

`A369134(∑[comp[A008137(2*n)]])`
-/

namespace A369121.P13494187886730119597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008137 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369134 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A369121.P13494187886730119597

/-! ## A369121.P1097548397808682618

`A369134(∑[comp[A354501(3*n+1)]])`
-/

namespace A369121.P1097548397808682618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354501 (3 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369134 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A369121.P1097548397808682618

/-! ## A369121.P8058676229487658792

`A369134(or(A000096(n), A056170(n+1)))`
-/

namespace A369121.P8058676229487658792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369134 (Int.lor (A000096 n) (A056170 (n + 1))).toNat

end

end A369121.P8058676229487658792

/-! ## A369121.P12324005210451833817

`A369134(A047838(n+2)-A000006(n+1))`
-/

namespace A369121.P12324005210451833817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369134 (A047838 (n + 2) - A000006 (n + 1)).toNat

end

end A369121.P12324005210451833817

/-!
# A369122: a(n) = A369134(n, 2).

The programs for A369122, there is no canonical definition to state claims against.
-/

/-! ## A369122.P11268555609264013545

`A369134(A133263(n))`
-/

namespace A369122.P11268555609264013545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369134 (A133263 n).toNat

end

end A369122.P11268555609264013545

/-! ## A369122.P1439493526168609901

`A369134(A238531(n+1))`
-/

namespace A369122.P1439493526168609901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369134 (A238531 (n + 1)).toNat

end

end A369122.P1439493526168609901

/-! ## A369122.P18081612420760126955

`A369134(A036453(n+1)+∑[n])`
-/

namespace A369122.P18081612420760126955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369134 (A036453 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A369122.P18081612420760126955

/-! ## A369122.P18319764423974193123

`A369134(∑[ceil((A000040(n+1)+1)/3)])`
-/

namespace A369122.P18319764423974193123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000040 (n + 1) + 1 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369134 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A369122.P18319764423974193123

/-! ## A369122.P5730880880831065408

`A369134(∑[ceil((A109611(n+1)+1)/3)])`
-/

namespace A369122.P5730880880831065408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109611 (n + 1) + 1 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369134 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A369122.P5730880880831065408

/-!
# A369123: Expansion of (1/x) * Series_Reversion( x * ((1-x)^2+x^2) ).

The programs for A369123, there is no canonical definition to state claims against.
-/

/-! ## A369123.P16022650986521549690

`∑[A163823(A001333(n))]`
-/

namespace A369123.P16022650986521549690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163823 (A001333 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369123.P16022650986521549690

/-! ## A369123.P2318117162024788957

`∑[A316470(Δ[A000129(n)])]`
-/

namespace A369123.P2318117162024788957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316470 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369123.P2318117162024788957

/-!
# A369124: Expansion of (1/x) * Series_Reversion( x * ((1-x)^4+x^4) ).

The programs for A369124, there is no canonical definition to state claims against.
-/

/-! ## A369124.P8612154018185185350

`A118971(n)-A109434(A002464(n))`
-/

namespace A369124.P8612154018185185350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118971 n - A109434 (A002464 n).toNat

end

end A369124.P8612154018185185350

/-!
# A369125: Expansion of (1/x) * Series_Reversion( x * ((1-x)^5+x^5) ).

The programs for A369125, there is no canonical definition to state claims against.
-/

/-! ## A369125.P15520508790007282890

`A000027(A130564(n+1)-C(n, 5))`
-/

namespace A369125.P15520508790007282890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A130564 (n + 1) - (Nat.choose n 5 : ℤ)).toNat

end

end A369125.P15520508790007282890

/-! ## A369125.P6621899994177966589

`A130564(n+1)-A184964(∑[floor((1-n)²/2)])`
-/

namespace A369125.P6621899994177966589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 - (n : ℤ)) ^ 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130564 (n + 1) - A184964 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A369125.P6621899994177966589

/-!
# A369126: Expansion of (1/x) * Series_Reversion( x / ((1+x)^4+x^4) ).

The programs for A369126, the canonical program `A369126.P6060977014672776720` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369126 has offset 0).

The definition of A369126 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369126.P6060977014672776720

`1/(n+1)*∑{#}[floor(n/4), C(n+1, #)*C(4*n-4*#+4, n-4*#)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A369126

/-- `1/(n+1)*∑{#}[floor(n/4), C(n+1, #)*C(4*n-4*#+4, n-4*#)]` -/
def P6060977014672776720.Spec : Prop :=
  ∀ n, P6060977014672776720.a n = (A369126 n : ℚ)

end A369126

/-! ## A369126.P8999315022380193268

`abs(A259938(3*n+4)%A123692(n+1))`
-/

namespace A369126.P8999315022380193268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A259938 (3 * n + 4)) (A123692 (n + 1))|

end

end A369126.P8999315022380193268

namespace A369126

/-- `abs(A259938(3*n+4)%A123692(n+1))` -/
def P8999315022380193268.Spec : Prop :=
  ∀ n, P8999315022380193268.a n = A369126 n

end A369126

/-! ## A369126.P6918131886016750407

`gcd(A259938(3*n+4), A270890(A199523(n+1)))`
-/

namespace A369126.P6918131886016750407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A259938 (3 * n + 4)) (A270890 (A199523 (n + 1)).toNat)

end

end A369126.P6918131886016750407

namespace A369126

/-- `gcd(A259938(3*n+4), A270890(A199523(n+1)))` -/
def P6918131886016750407.Spec : Prop :=
  ∀ n, (P6918131886016750407.a n : ℤ) = A369126 n

end A369126

/-!
# A369127: S is a "boomerang sequence". Replace each digit d of S by a base-10 palindrome not yet used that contains d: the sequence S remains identical to itself if we follow each palindrome with a comma.

The programs for A369127, there is no canonical definition to state claims against.
-/

/-! ## A369127.P6479108149090673692

`eq[n, A020485(A256577(n))]`
-/

namespace A369127.P6479108149090673692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (A256577 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A369127.P6479108149090673692

/-! ## A369127.P17127437844557279792

`eq[A033865(n), A256577(n)]`
-/

namespace A369127.P17127437844557279792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256577 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369127.P17127437844557279792

/-! ## A369127.P16396070856366701031

`eq[A061816(n), A256577(n)]`
-/

namespace A369127.P16396070856366701031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256577 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369127.P16396070856366701031

/-! ## A369127.P14670950904594726097

`∩[A082208(n+1), A371123(n+1)]`
-/

namespace A369127.P14670950904594726097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369127.P14670950904594726097

/-! ## A369127.P2006498332975830268

`∩[A117055(n+1), A371123(n+1)]`
-/

namespace A369127.P2006498332975830268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369127.P2006498332975830268

/-!
# A369128: Expansion of (1/x) * Series_Reversion( x / ((1+x)^5+x^5) ).

The programs for A369128, the canonical program `A369128.P5505930450894321595` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369128 has offset 0).

The definition of A369128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369128.P5505930450894321595

`1/(n+1)*∑{#}[floor(n/5), C(n+1, #)*C(5*n-5*#+5, n-5*#)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A369128

/-- `1/(n+1)*∑{#}[floor(n/5), C(n+1, #)*C(5*n-5*#+5, n-5*#)]` -/
def P5505930450894321595.Spec : Prop :=
  ∀ n, P5505930450894321595.a n = (A369128 n : ℚ)

end A369128

/-! ## A369128.P4473431925879858835

`A378875(A006024(n))+A369157(n)`
-/

namespace A369128.P4473431925879858835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378875 (A006024 n).toNat + A369157 n

end

end A369128.P4473431925879858835

namespace A369128

/-- `A378875(A006024(n))+A369157(n)` -/
def P4473431925879858835.Spec : Prop :=
  ∀ n, P4473431925879858835.a n = A369128 n

end A369128

/-!
# A369135: a(n) is the lcm of the denominators of the terms in the n-th row of M where M is the inverse of the matrix generated by the triangle A368846.

The programs for A369135, there is no canonical definition to state claims against.
-/

/-! ## A369135.P2130452881045453293

`A048803(2*n+1)/A048764(A370441(n+1))`
-/

namespace A369135.P2130452881045453293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048803 (2 * n + 1) : ℚ) / (A048764 (A370441 (n + 1)).toNat : ℚ)

end

end A369135.P2130452881045453293

/-! ## A369135.P5555803476196108686

`lcm(A000265(A000165(n)), A002457(n))`
-/

namespace A369135.P5555803476196108686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000265 (A000165 n).toNat) (A002457 n)

end

end A369135.P5555803476196108686

/-! ## A369135.P2272671077999831669

`A025547(n+1)*A037445(A000302(n))`
-/

namespace A369135.P2272671077999831669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025547 (n + 1) * A037445 (A000302 n).toNat

end

end A369135.P2272671077999831669

/-!
# A369136: Matula-Göbel number of the prime tower factorization tree of A284456(n).

The programs for A369136, there is no canonical definition to state claims against.
-/

/-! ## A369136.P7122533671044707239

`A369015(A284456(n+1))`
-/

namespace A369136.P7122533671044707239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369015 (A284456 (n + 1)).toNat

end

end A369136.P7122533671044707239

/-! ## A369136.P16679889040239031222

`A000005(lcm(A052307(n), A284456(n+1)))`
-/

namespace A369136.P16679889040239031222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm (A052307 n) (A284456 (n + 1)))

end

end A369136.P16679889040239031222

/-! ## A369136.P4839883319207390596

`A000005(A284456(n+1))%A000978(n+1)`
-/

namespace A369136.P4839883319207390596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A284456 (n + 1)).toNat) (A000978 (n + 1))

end

end A369136.P4839883319207390596

/-! ## A369136.P11281767106054297841

`A340273(A284456(n+1))`
-/

namespace A369136.P11281767106054297841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340273 (A284456 (n + 1)).toNat

end

end A369136.P11281767106054297841

/-! ## A369136.P6450085787710701979

`A035149(A284456(n+1))`
-/

namespace A369136.P6450085787710701979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035149 (A284456 (n + 1)).toNat

end

end A369136.P6450085787710701979

/-!
# A369138: Index of A284456(n) in A025487.

The programs for A369138, there is no canonical definition to state claims against.
-/

/-! ## A369138.P9294723201997973354

`A085089(A284456(n+1))`
-/

namespace A369138.P9294723201997973354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A284456 (n + 1)).toNat

end

end A369138.P9294723201997973354

/-!
# A369139: Numbers k such that Omega(k) = 1 + Omega(k + 1).

The programs for A369139, the canonical program `A369139.P12055519405445957885` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369139 has offset 1).

The definition of A369139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6620 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369139.P12055519405445957885

`eq[A001222(2*(n+2)), A001222(n+1)]+1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A369139

/-- `eq[A001222(2*(n+2)), A001222(n+1)]+1` -/
def P12055519405445957885.Spec : Prop :=
  ∀ n, (P12055519405445957885.a n : ℤ) = A369139 (n + 1)

theorem P12055519405445957885.correct : P12055519405445957885.Spec := by
  intro n
  simp only [A369139, Nat.add_sub_cancel]

end A369139

/-! ## A369139.P13784777704562436086

`A065475(eq[A064800(n+1), A064800(n+2)])`
-/

namespace A369139.P13784777704562436086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A369139.P13784777704562436086

namespace A369139

/-- `A065475(eq[A064800(n+1), A064800(n+2)])` -/
def P13784777704562436086.Spec : Prop :=
  ∀ n, P13784777704562436086.a n = A369139 (n + 1)

end A369139

/-! ## A369139.P12129629613804860366

`eq[A001222(2*(n+1)), A001222(A028310(n))]`
-/

namespace A369139.P12129629613804860366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369139.P12129629613804860366

namespace A369139

/-- `eq[A001222(2*(n+1)), A001222(A028310(n))]` -/
def P12129629613804860366.Spec : Prop :=
  ∀ n, (P12129629613804860366.a n : ℤ) = A369139 (n + 1)

end A369139

/-! ## A369139.P5651520686690149859

`A020725(eq[A001222(2*(n+2)), A001222(n+1)])`
-/

namespace A369139.P5651520686690149859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A369139.P5651520686690149859

namespace A369139

/-- `A020725(eq[A001222(2*(n+2)), A001222(n+1)])` -/
def P5651520686690149859.Spec : Prop :=
  ∀ n, P5651520686690149859.a n = A369139 (n + 1)

end A369139

/-! ## A369139.P1141734011639944083

`eq[A061142(2*(n+2)), A061142(n+1)]+1`
-/

namespace A369139.P1141734011639944083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A369139.P1141734011639944083

namespace A369139

/-- `eq[A061142(2*(n+2)), A061142(n+1)]+1` -/
def P1141734011639944083.Spec : Prop :=
  ∀ n, (P1141734011639944083.a n : ℤ) = A369139 (n + 1)

end A369139

/-! ## A369139.P5350069589614295193

`eq[A165825(2*(n+2)), A165825(n+1)]+1`
-/

namespace A369139.P5350069589614295193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A369139.P5350069589614295193

namespace A369139

/-- `eq[A165825(2*(n+2)), A165825(n+1)]+1` -/
def P5350069589614295193.Spec : Prop :=
  ∀ n, (P5350069589614295193.a n : ℤ) = A369139 (n + 1)

end A369139

/-! ## A369139.P18221622965855876374

`eq[A001222(2*(n+1)), A001222(A065033(2*n))]`
-/

namespace A369139.P18221622965855876374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369139.P18221622965855876374

namespace A369139

/-- `eq[A001222(2*(n+1)), A001222(A065033(2*n))]` -/
def P18221622965855876374.Spec : Prop :=
  ∀ n, (P18221622965855876374.a n : ℤ) = A369139 (n + 1)

end A369139

/-!
# A369140: Number of labeled loop-graphs covering {1..n} such that it is possible to choose a different vertex from each edge (choosable).

The programs for A369140, there is no canonical definition to state claims against.
-/

/-! ## A369140.P9307204868857628507

`A322661(n)-A369142(n)`
-/

namespace A369140.P9307204868857628507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322661 n - A369142 n

end

end A369140.P9307204868857628507

/-! ## A369140.P10009655214336591681

`A006129(n+1)+A006129(n)-A369142(n)`
-/

namespace A369140.P10009655214336591681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006129 (n + 1) + (A006129 n - A369142 n)

end

end A369140.P10009655214336591681

/-!
# A369141: Number of labeled loop-graphs covering a subset of {1..n} such that it is not possible to choose a different vertex from each edge (non-choosable).

The programs for A369141, there is no canonical definition to state claims against.
-/

/-! ## A369141.P11028344878470999604

`A006125(n+1)-A368927(n)`
-/

namespace A369141.P11028344878470999604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 (n + 1) - A368927 n

end

end A369141.P11028344878470999604

/-! ## A369141.P3554148877232972676

`∏[A000079(n)]-A368927(n)`
-/

namespace A369141.P3554148877232972676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A368927 n

end

end A369141.P3554148877232972676

/-! ## A369141.P16576573866447204720

`A000079(A000217(n))-A368927(n)`
-/

namespace A369141.P16576573866447204720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000217 n).toNat - A368927 n

end

end A369141.P16576573866447204720

/-! ## A369141.P4900769507722181714

`A016116(A002378(n))-A368927(n)`
-/

namespace A369141.P4900769507722181714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A002378 n).toNat - A368927 n

end

end A369141.P4900769507722181714

/-! ## A369141.P2560825925037802018

`A131577(A000124(n))-A368927(n)`
-/

namespace A369141.P2560825925037802018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A000124 n).toNat - A368927 n

end

end A369141.P2560825925037802018

/-!
# A369142: Number of labeled loop-graphs covering {1..n} such that it is not possible to choose a different vertex from each edge (non-choosable).

The programs for A369142, there is no canonical definition to state claims against.
-/

/-! ## A369142.P4790687254074468004

`A322661(n)-A369140(n)`
-/

namespace A369142.P4790687254074468004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322661 n - A369140 n

end

end A369142.P4790687254074468004

/-!
# A369143: Number of labeled simple graphs with n edges and n vertices such that it is not possible to choose a different vertex from each edge (non-choosable).

The programs for A369143, there is no canonical definition to state claims against.
-/

/-! ## A369143.P3668659062739368951

`A116508(n)-A137916(n)`
-/

namespace A369143.P3668659062739368951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116508 n - A137916 n

end

end A369143.P3668659062739368951

/-! ## A369143.P6113991885738928848

`C(A161680(n), n)-A137916(n)`
-/

namespace A369143.P6113991885738928848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A161680 n).toNat n : ℤ) - A137916 n

end

end A369143.P6113991885738928848

/-! ## A369143.P15034953973985673438

`A071919(A037255(n)+1)-A137916(n)`
-/

namespace A369143.P15034953973985673438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (A037255 n + 1).toNat - A137916 n

end

end A369143.P15034953973985673438

/-!
# A369144: Number of labeled simple graphs with n edges covering n vertices such that it is not possible to choose a different vertex from each edge (non-choosable).

The programs for A369144, there is no canonical definition to state claims against.
-/

/-! ## A369144.P4217956348224519849

`A367863(n)-A137916(n)`
-/

namespace A369144.P4217956348224519849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367863 n - A137916 n

end

end A369144.P4217956348224519849

/-!
# A369145: Number of unlabeled loop-graphs with up to n vertices such that it is possible to choose a different vertex from each edge (choosable).

The programs for A369145, there is no canonical definition to state claims against.
-/

/-! ## A369145.P7065544433717958387

`∑[A369200(n)]`
-/

namespace A369145.P7065544433717958387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369145.P7065544433717958387

/-! ## A369145.P14417747979353411984

`A223082(n+5)+A369200(n)+a(n-1)` with `a(0)=1`
-/

namespace A369145.P14417747979353411984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A223082 (n + 5) + (A369200 n + a (n - 1))

end

end A369145.P14417747979353411984

/-! ## A369145.P11703312178312652328

`A000666(n)-A369146(n)`
-/

namespace A369145.P11703312178312652328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000666 n - A369146 n

end

end A369145.P11703312178312652328

/-! ## A369145.P5418039514510259106

`∑[A322700(n)]-A369146(n)`
-/

namespace A369145.P5418039514510259106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A369146 n

end

end A369145.P5418039514510259106

/-!
# A369146: Number of unlabeled loop-graphs with up to n vertices such that it is not possible to choose a different vertex from each edge (non-choosable).

The programs for A369146, there is no canonical definition to state claims against.
-/

/-! ## A369146.P8962660281494353760

`A000666(n)-A369145(n)`
-/

namespace A369146.P8962660281494353760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000666 n - A369145 n

end

end A369146.P8962660281494353760

/-! ## A369146.P9408025193978599959

`∑[A369147(n)]`
-/

namespace A369146.P9408025193978599959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369146.P9408025193978599959

/-! ## A369146.P8182975958059956763

`∑[A322700(n)]-A369145(n)`
-/

namespace A369146.P8182975958059956763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A369145 n

end

end A369146.P8182975958059956763

/-! ## A369146.P1130873647613691552

`A361404(∑[n+1]+1)-∑[A369200(n)]`
-/

namespace A369146.P1130873647613691552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361404 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A369146.P1130873647613691552

/-!
# A369147: Number of unlabeled loop-graphs covering n vertices such that it is not possible to choose a different vertex from each edge (non-choosable).

The programs for A369147, there is no canonical definition to state claims against.
-/

/-! ## A369147.P5189656064219755226

`A322700(n)-A369200(n)`
-/

namespace A369147.P5189656064219755226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322700 n - A369200 n

end

end A369147.P5189656064219755226

/-! ## A369147.P9063518848087356467

`Δ[A369146(abs(1-n))]`
-/

namespace A369147.P9063518848087356467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369146 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369147.P9063518848087356467

/-! ## A369147.P1605373846020375911

`A369146(n)-A369146(abs(1-n))`
-/

namespace A369147.P1605373846020375911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369146 n - A369146 |1 - (n : ℤ)|.toNat

end

end A369147.P1605373846020375911

/-!
# A369148: In the MIU formal system, total number (including duplicates) of strings up to n steps distant from the MI string.

The programs for A369148, there is no canonical definition to state claims against.
-/

/-! ## A369148.P15486937135519026859

`∑[A368947(n)]`
-/

namespace A369148.P15486937135519026859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369148.P15486937135519026859

/-!
# A369149: a(n) is the size of the largest subset of {1,...,n} such that no two elements differ by 4 or 7.

The programs for A369149, the canonical program `A369149.P15414801932238027945` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369149 has offset 1).

The definition of A369149 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369149.P15414801932238027945

`ogf((1+x+x^2+x^3+x^8-x^13+x^16)/(1-x-x^11+x^12))`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A369149

/-- `ogf((1+x+x^2+x^3+x^8-x^13+x^16)/(1-x-x^11+x^12))` -/
def P15414801932238027945.Spec : Prop :=
  ∀ n, P15414801932238027945.a n = A369149 (n + 1)

theorem P15414801932238027945.correct : P15414801932238027945.Spec := by
  intro n
  simp only [A369149, Nat.add_sub_cancel]

end A369149

/-! ## A369149.P13267654804424034386

`∑[A374107(A367223(n)+A000010(n+1))]`
-/

namespace A369149.P13267654804424034386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374107 (A367223 n + A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369149.P13267654804424034386

namespace A369149

/-- `∑[A374107(A367223(n)+A000010(n+1))]` -/
def P13267654804424034386.Spec : Prop :=
  ∀ n, P13267654804424034386.a n = A369149 (n + 1)

end A369149

/-!
# A369150: Numbers k neither squarefree nor prime powers such that A053669(k) < k/rad(k) < A119288(k) that are not odd numbers of the form lpf(k)*rad(k), where lpf(k) = A020639(k) and rad(k) = A007947(k).

The programs for A369150, there is no canonical definition to state claims against.
-/

/-! ## A369150.P7039527789614352286

`∩[A364997(n+1), A365866(n+1)]`
-/

namespace A369150.P7039527789614352286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369150.P7039527789614352286

/-! ## A369150.P2821791442409270741

`∩[A364997(n+1), A375145(n+1)]`
-/

namespace A369150.P2821791442409270741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369150.P2821791442409270741

/-! ## A369150.P5817028982246480923

`∩[A362148(n+1), A364997(n+1)]`
-/

namespace A369150.P5817028982246480923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369150.P5817028982246480923

/-! ## A369150.P5140077655117695056

`∩[A074451(n+1), A364997(n+1)]`
-/

namespace A369150.P5140077655117695056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369150.P5140077655117695056

/-! ## A369150.P13405431400745487278

`∩[A046099(n+1), A364997(n+1)]`
-/

namespace A369150.P13405431400745487278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369150.P13405431400745487278

/-! ## A369150.P1466686944342982050

`∩[A048108(n+1), A364997(n+1)]`
-/

namespace A369150.P1466686944342982050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369150.P1466686944342982050

/-! ## A369150.P9942260270418634661

`∩[A046099(n+1), A360767(n+1)]`
-/

namespace A369150.P9942260270418634661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369150.P9942260270418634661

/-! ## A369150.P6290444438593502327

`∩[A048108(n+1), A360767(n+1)]`
-/

namespace A369150.P6290444438593502327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369150.P6290444438593502327

/-! ## A369150.P9503348102554987349

`∩[A074451(n+1), A360767(n+1)]`
-/

namespace A369150.P9503348102554987349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369150.P9503348102554987349

/-! ## A369150.P18321517783098004056

`∩[A360767(n+1), A362148(n+1)]`
-/

namespace A369150.P18321517783098004056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369150.P18321517783098004056

/-! ## A369150.P16028717797977533497

`∩[A360767(n+1), A365866(n+1)]`
-/

namespace A369150.P16028717797977533497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369150.P16028717797977533497

/-! ## A369150.P14368363875892403443

`∩[A360767(n+1), A375145(n+1)]`
-/

namespace A369150.P14368363875892403443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369150.P14368363875892403443

/-! ## A369150.P16452094204618986248

`∩[A378878(n+1), A360767(n+1)]`
-/

namespace A369150.P16452094204618986248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369150.P16452094204618986248

/-! ## A369150.P6672690916360289846

`∩[A360767(n+1), A381316(n+1)]`
-/

namespace A369150.P6672690916360289846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369150.P6672690916360289846

/-! ## A369150.P7882396716880832134

`∩[A391319(n+1), A360767(n+1)]`
-/

namespace A369150.P7882396716880832134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369150.P7882396716880832134

/-! ## A369150.P17162832591185833982

`∩[A337050(n+1), A360767(n+1)]`
-/

namespace A369150.P17162832591185833982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369150.P17162832591185833982

/-! ## A369150.P9667631314948879733

`∩[A337050(n+1), A364997(n+1)]`
-/

namespace A369150.P9667631314948879733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369150.P9667631314948879733

/-! ## A369150.P11696204037761005870

`∩[A253782(n+1), A360767(n+1)]`
-/

namespace A369150.P11696204037761005870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369150.P11696204037761005870

/-! ## A369150.P5408683603216992932

`∩[A253782(n+1), A364997(n+1)]`
-/

namespace A369150.P5408683603216992932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369150.P5408683603216992932

/-! ## A369150.P4082239463748736302

`∩[A299117(n+1), A360767(n+1)]`
-/

namespace A369150.P4082239463748736302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369150.P4082239463748736302

/-!
# A369151: Numbers with a record high excess of even over odd divisors; so indices of record lows in A048272.

The programs for A369151, there is no canonical definition to state claims against.
-/

/-! ## A369151.P2956881908544907611

`record[A001616(A000010(2*C(n²+2, 2)))]`
-/

namespace A369151.P2956881908544907611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 (A000010 (2 * Nat.choose (n ^ 2 + 2) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A369151.P2956881908544907611

/-! ## A369151.P6190501113259006009

`record[A357689(A137948(n))]`
-/

namespace A369151.P6190501113259006009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357689 (A137948 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A369151.P6190501113259006009

/-! ## A369151.P15635834260656457439

`A095165(A076508(n+1))`
-/

namespace A369151.P15635834260656457439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095165 (A076508 (n + 1)).toNat

end

end A369151.P15635834260656457439

/-! ## A369151.P11341242055391270954

`A357978(A307015(n+1))`
-/

namespace A369151.P11341242055391270954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357978 (A307015 (n + 1)).toNat

end

end A369151.P11341242055391270954

/-! ## A369151.P7784823140567974205

`∩[A191890(n+1), A376065(n+1)]`
-/

namespace A369151.P7784823140567974205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369151.P7784823140567974205

/-!
# A369152: Total number of digits in row n of Pascal's triangle.

The programs for A369152, there is no canonical definition to state claims against.
-/

/-! ## A369152.P1669674277817782040

`A222314(n)-n`
-/

namespace A369152.P1669674277817782040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222314 n - (n : ℤ)

end

end A369152.P1669674277817782040

/-!
# A369153: Numbers k such that gcd(2*k^7+1, 3*k^3+2) > 1.

The programs for A369153, the canonical program `A369153.P4936087845257832618` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369153 has offset 0).

The definition of A369153 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369153.P4936087845257832618

`ogf((435+728x)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A369153

/-- `ogf((435+728x)/(1-2x+x^2))` -/
def P4936087845257832618.Spec : Prop :=
  ∀ n, P4936087845257832618.a n = A369153 n

theorem P4936087845257832618.correct : P4936087845257832618.Spec := by
  intro n
  simp only [A369153]

end A369153

/-!
# A369156: Expansion of (1/x) * Series_Reversion( x / ((1+x)^4-x^4) ).

The programs for A369156, the canonical program `A369156.P12554501636957586105` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369156 has offset 0).

The definition of A369156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369156.P4497816403086289574

`A346626(n+1)/2`
-/

namespace A369156.P4497816403086289574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346626 (n + 1) : ℚ) / 2

end

end A369156.P4497816403086289574

namespace A369156

/-- `A346626(n+1)/2` -/
def P4497816403086289574.Spec : Prop :=
  ∀ n, P4497816403086289574.a n = (A369156 n : ℚ)

end A369156

/-! ## A369156.P4847059851542848936

`Δ[∑[A346626(n)]/2]`
-/

namespace A369156.P4847059851542848936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346626 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369156.P4847059851542848936

namespace A369156

/-- `Δ[∑[A346626(n)]/2]` -/
def P4847059851542848936.Spec : Prop :=
  ∀ n, P4847059851542848936.a n = (A369156 n : ℚ)

end A369156

/-! ## A369156.P12554501636957586105

`∑[ceil(A213282(n+1)/2)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A369156

/-- `∑[ceil(A213282(n+1)/2)]` -/
def P12554501636957586105.Spec : Prop :=
  ∀ n, P12554501636957586105.a n = A369156 n

theorem P12554501636957586105.correct : P12554501636957586105.Spec := by
  intro n
  simp only [A369156]

end A369156

/-!
# A369157: Expansion of (1/x) * Series_Reversion( x / ((1+x)^5-x^5) ).

The programs for A369157, there is no canonical definition to state claims against.
-/

/-! ## A369157.P13341748307963152050

`A369128(n)-A341022(A000108(n))`
-/

namespace A369157.P13341748307963152050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369128 n - A341022 ((A000108 n).toNat + 35)

end

end A369157.P13341748307963152050

/-! ## A369157.P6461924204285847761

`A369128(n)-A378875(A006024(n))`
-/

namespace A369157.P6461924204285847761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369128 n - A378875 (A006024 n).toNat

end

end A369157.P6461924204285847761

/-!
# A369158: Expansion of (1/x) * Series_Reversion( x / ((1+x)^2+x^4) ).

The programs for A369158, the canonical program `A369158.P17540185662030814860` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369158 has offset 0).

The definition of A369158 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369158.P17540185662030814860

`1/(n+1)*∑{#}[floor(n/4), C(n+1, #)*C(2*n-2*#+2, n-4*#)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A369158

/-- `1/(n+1)*∑{#}[floor(n/4), C(n+1, #)*C(2*n-2*#+2, n-4*#)]` -/
def P17540185662030814860.Spec : Prop :=
  ∀ n, P17540185662030814860.a n = (A369158 n : ℚ)

end A369158

/-!
# A369159: Expansion of (1/x) * Series_Reversion( x / ((1+x)^3+x^4) ).

The programs for A369159, the canonical program `A369159.P16542905153634954674` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369159 has offset 0).

The definition of A369159 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369159.P16542905153634954674

`1/(n+1)*∑{#}[floor(n/4), C(n+1, #)*C(3*n-3*#+3, n-4*#)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A369159

/-- `1/(n+1)*∑{#}[floor(n/4), C(n+1, #)*C(3*n-3*#+3, n-4*#)]` -/
def P16542905153634954674.Spec : Prop :=
  ∀ n, P16542905153634954674.a n = (A369159 n : ℚ)

end A369159

/-! ## A369159.P16533472744551938263

`A088468(Δ[A288964(n)])`
-/

namespace A369159.P16533472744551938263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088468 (f1 (n + 1) - f1 n).toNat

end

end A369159.P16533472744551938263

namespace A369159

/-- `A088468(Δ[A288964(n)])` -/
def P16533472744551938263.Spec : Prop :=
  ∀ n, P16533472744551938263.a n = A369159 n

end A369159

/-!
# A369160: Expansion of (1/x) * Series_Reversion( x * ((1-x)^2-x^4) ).

The programs for A369160, the canonical program `A369160.P3482905921148931439` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369160 has offset 0).

The definition of A369160 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369160.P3482905921148931439

`1/(n+1)*∑{#}[floor(n/4), C(n+#, #)*C(3*n-2*#+1, n-4*#)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A369160

/-- `1/(n+1)*∑{#}[floor(n/4), C(n+#, #)*C(3*n-2*#+1, n-4*#)]` -/
def P3482905921148931439.Spec : Prop :=
  ∀ n, P3482905921148931439.a n = (A369160 n : ℚ)

end A369160

/-! ## A369160.P8466187783048389421

`A060715(∑[A000073(3*n+2)+1])`
-/

namespace A369160.P8466187783048389421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (3 * n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A369160.P8466187783048389421

namespace A369160

/-- `A060715(∑[A000073(3*n+2)+1])` -/
def P8466187783048389421.Spec : Prop :=
  ∀ n, P8466187783048389421.a n = A369160 n

end A369160

/-!
# A369161: Expansion of (1/x) * Series_Reversion( x * ((1-x)^3-x^4) ).

The programs for A369161, the canonical program `A369161.P15740719762627874290` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369161 has offset 0).

The definition of A369161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369161.P15740719762627874290

`1/(n+1)*∑{#}[floor(n/4), C(n+#, #)*C(4*n-#+2, n-4*#)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A369161

/-- `1/(n+1)*∑{#}[floor(n/4), C(n+#, #)*C(4*n-#+2, n-4*#)]` -/
def P15740719762627874290.Spec : Prop :=
  ∀ n, P15740719762627874290.a n = (A369161 n : ℚ)

end A369161

/-! ## A369161.P1320246639354414974

`A004442(A366056(n))+1`
-/

namespace A369161.P1320246639354414974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A366056 n).toNat + 1

end

end A369161.P1320246639354414974

namespace A369161

/-- `A004442(A366056(n))+1` -/
def P1320246639354414974.Spec : Prop :=
  ∀ n, P1320246639354414974.a n = A369161 n

end A369161

/-!
# A369162: a(n) = A000688(A000688(n)).

The programs for A369162, there is no canonical definition to state claims against.
-/

/-! ## A369162.P5419695558936347744

`A000688(A000688(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369162.P5419695558936347744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A000688 (n + 1)).toNat

end

end A369162.P5419695558936347744

/-! ## A369162.P8980022090661332457

`∏{e}[A000688(n+1), #]`
-/

namespace A369162.P8980022090661332457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A369162.P8980022090661332457

/-! ## A369162.P6862772563883337031

`∏{e}[∏{e}[n+1, A000041(#)], #]`
-/

namespace A369162.P6862772563883337031
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A000041 (Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A369162.P6862772563883337031

/-! ## A369162.P1499425651350226589

`A295879(and(A026917(n), A295879(n+1)))`
-/

namespace A369162.P1499425651350226589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295879 (Int.land (A026917 n) (A295879 (n + 1))).toNat

end

end A369162.P1499425651350226589

/-! ## A369162.P1552337366173374396

`A295879(and(A295879(n+1), A304516(n+1)))`
-/

namespace A369162.P1552337366173374396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295879 (Int.land (A295879 (n + 1)) (A304516 (n + 1))).toNat

end

end A369162.P1552337366173374396

/-! ## A369162.P15114647767735479254

`A295879(and(A291776(n+2), A295879(n+1)))`
-/

namespace A369162.P15114647767735479254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295879 (Int.land (A291776 (n + 2)) (A295879 (n + 1))).toNat

end

end A369162.P15114647767735479254

/-! ## A369162.P106251847840961106

`A089723(A256690(n+1))`
-/

namespace A369162.P106251847840961106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (A256690 (n + 1)).toNat

end

end A369162.P106251847840961106

/-! ## A369162.P1740339998946132588

`A270419(A359506(∏{e}[n+1, #!])+1)`
-/

namespace A369162.P1740339998946132588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270419 (A359506 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p)) + 1).toNat

end

end A369162.P1740339998946132588

/-!
# A369163: a(n) = A000005(A000688(n)).

The programs for A369163, there is no canonical definition to state claims against.
-/

/-! ## A369163.P5565472594940307951

`A000005(A000688(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369163.P5565472594940307951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000688 (n + 1)).toNat

end

end A369163.P5565472594940307951

/-! ## A369163.P16304957606695863895

`∏{e}[A000688(n+1), #+1]`
-/

namespace A369163.P16304957606695863895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A369163.P16304957606695863895

/-! ## A369163.P921119478499408548

`∏{e}[∏{e}[n+1, A242699(#)], #+1]`
-/

namespace A369163.P921119478499408548
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A242699 (Nat.factorization (f2 n) p + 64)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A369163.P921119478499408548

/-! ## A369163.P17123857874850756941

`∏{e}[∏{p}[n+1, A000041(val(n+1, #))], #+1]`
-/

namespace A369163.P17123857874850756941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A000041 (SequenceMachineLib.valuation (n + 1) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A369163.P17123857874850756941

/-! ## A369163.P1023676296206534998

`A183063(2*A000688(n+1))`
-/

namespace A369163.P1023676296206534998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A000688 (n + 1)).toNat

end

end A369163.P1023676296206534998

/-! ## A369163.P15742920441970044277

`A320111(2*A000688(n+1))`
-/

namespace A369163.P15742920441970044277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A000688 (n + 1)).toNat

end

end A369163.P15742920441970044277

/-! ## A369163.P15503627862597697769

`∑{d}[A000688(n+1), A057427(#)]`
-/

namespace A369163.P15503627862597697769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A369163.P15503627862597697769

/-! ## A369163.P1263508140880085623

`A000005(∏{e}[n+1, A330642(#)])`
-/

namespace A369163.P1263508140880085623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), A330642 (Nat.factorization (f1 n) p)).toNat

end

end A369163.P1263508140880085623

/-! ## A369163.P1497549881297141565

`A046951(A000688(n+1)²)`
-/

namespace A369163.P1497549881297141565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A000688 (n + 1) ^ 2).toNat

end

end A369163.P1497549881297141565

/-! ## A369163.P17784725865719916691

`A049419(A000688(n+1)²)`
-/

namespace A369163.P17784725865719916691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A000688 (n + 1) ^ 2).toNat

end

end A369163.P17784725865719916691

/-! ## A369163.P6438559289948906350

`A159631(A000688(n+1)²)`
-/

namespace A369163.P6438559289948906350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (A000688 (n + 1) ^ 2).toNat

end

end A369163.P6438559289948906350

/-!
# A369164: a(n) = A001221(A000688(n)).

The programs for A369164, there is no canonical definition to state claims against.
-/

/-! ## A369164.P13322002113551436616

`A001221(A000688(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369164.P13322002113551436616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000688 (n + 1)).toNat

end

end A369164.P13322002113551436616

/-! ## A369164.P8977743113055493828

`∑{p}[A000688(n+1), A000688(#)]`
-/

namespace A369164.P8977743113055493828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000688 p

end

end A369164.P8977743113055493828

/-! ## A369164.P5109046416423306719

`A001222(∏{p}[A000688(n+1), #])`
-/

namespace A369164.P5109046416423306719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A369164.P5109046416423306719

/-! ## A369164.P16194145293443868772

`A058061(A000688(n+1)²)`
-/

namespace A369164.P16194145293443868772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058061 (A000688 (n + 1) ^ 2).toNat

end

end A369164.P16194145293443868772

/-! ## A369164.P6984980089416935702

`A295884(A000688(n+1)^4)`
-/

namespace A369164.P6984980089416935702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295884 (A000688 (n + 1) ^ 4).toNat

end

end A369164.P6984980089416935702

/-! ## A369164.P4042927620782424766

`∑{e}[A000255(A095691(n+1)), #]`
-/

namespace A369164.P4042927620782424766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000255 (A095691 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A369164.P4042927620782424766

/-! ## A369164.P13890550415992374484

`A211111(A003557(n+1)^A071773(3*n+2))`
-/

namespace A369164.P13890550415992374484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 (SequenceMachineLib.roundAway ((A003557 (n + 1) : ℚ) ^ (A071773 (3 * n + 2) : ℤ))).toNat

end

end A369164.P13890550415992374484

/-! ## A369164.P16474868261831085303

`A211111(A003557(n+1))%A102510(n+1)`
-/

namespace A369164.P16474868261831085303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211111 (A003557 (n + 1)).toNat) (A102510 (n + 1))

end

end A369164.P16474868261831085303

/-!
# A369165: a(n) = A001222(A000688(n)).

The programs for A369165, there is no canonical definition to state claims against.
-/

/-! ## A369165.P7550487134874135857

`A001222(A000688(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369165.P7550487134874135857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000688 (n + 1)).toNat

end

end A369165.P7550487134874135857

/-! ## A369165.P2410229607323088934

`∑{e}[A000688(n+1), #]`
-/

namespace A369165.P2410229607323088934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A369165.P2410229607323088934

/-! ## A369165.P4167045720931196321

`∑{e}[∏{e}[n+1, A000041(#)], #]`
-/

namespace A369165.P4167045720931196321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A000041 (Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A369165.P4167045720931196321

/-! ## A369165.P894495019422116826

`∑{e}[A238877(Δ[n²]), #]`
-/

namespace A369165.P894495019422116826
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A369165.P894495019422116826

/-! ## A369165.P14458870507796935221

`A001221(A296765((n+1)/∏{p}[n+1, #])²)`
-/

namespace A369165.P14458870507796935221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A296765 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat ^ 2).toNat

end

end A369165.P14458870507796935221

/-!
# A369166: Numbers k such that A000688(k) = A000688(k+1).

The programs for A369166, the canonical program `A369166.P18389248595634151681` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369166 has offset 1).

The definition of A369166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3632 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369166.P14196159997142337367

`eq[A000688(n+1), A000688(n+2)]+1`
-/

namespace A369166.P14196159997142337367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A369166.P14196159997142337367

namespace A369166

/-- `eq[A000688(n+1), A000688(n+2)]+1` -/
def P14196159997142337367.Spec : Prop :=
  ∀ n, (P14196159997142337367.a n : ℤ) = A369166 (n + 1)

end A369166

/-! ## A369166.P18389248595634151681

`eq[A046643(n+1), A046643(n+2)]+1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A369166

/-- `eq[A046643(n+1), A046643(n+2)]+1` -/
def P18389248595634151681.Spec : Prop :=
  ∀ n, (P18389248595634151681.a n : ℤ) = A369166 (n + 1)

theorem P18389248595634151681.correct : P18389248595634151681.Spec := by
  intro n
  simp only [A369166, Nat.add_sub_cancel]

end A369166

/-! ## A369166.P4156770885469124945

`A369211(A046660(A085651(n+1))+n)`
-/

namespace A369166.P4156770885469124945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369211 (A046660 (A085651 (n + 1)).toNat + (n : ℤ)).toNat

end

end A369166.P4156770885469124945

namespace A369166

/-- `A369211(A046660(A085651(n+1))+n)` -/
def P4156770885469124945.Spec : Prop :=
  ∀ n, P4156770885469124945.a n = A369166 (n + 1)

end A369166

/-! ## A369166.P15858276238425921227

`and(A369211(n+1), A375155(n+1))`
-/

namespace A369166.P15858276238425921227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A369211 (n + 1)) (A375155 (n + 1))

end

end A369166.P15858276238425921227

namespace A369166

/-- `and(A369211(n+1), A375155(n+1))` -/
def P15858276238425921227.Spec : Prop :=
  ∀ n, P15858276238425921227.a n = A369166 (n + 1)

end A369166

/-! ## A369166.P2868375444766562000

`A369211(n+1)%A004733(n)`
-/

namespace A369166.P2868375444766562000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369211 (n + 1)) (A004733 n)

end

end A369166.P2868375444766562000

namespace A369166

/-- `A369211(n+1)%A004733(n)` -/
def P2868375444766562000.Spec : Prop :=
  ∀ n, P2868375444766562000.a n = A369166 (n + 1)

end A369166

/-! ## A369166.P14467752021886906738

`and(A003261(n+1), A369211(n+1))`
-/

namespace A369166.P14467752021886906738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003261 (n + 1)) (A369211 (n + 1))

end

end A369166.P14467752021886906738

namespace A369166

/-- `and(A003261(n+1), A369211(n+1))` -/
def P14467752021886906738.Spec : Prop :=
  ∀ n, P14467752021886906738.a n = A369166 (n + 1)

end A369166

/-! ## A369166.P3377344742475353540

`and(A163383(n+1), A369211(n+1))`
-/

namespace A369166.P3377344742475353540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A163383 (n + 1)) (A369211 (n + 1))

end

end A369166.P3377344742475353540

namespace A369166

/-- `and(A163383(n+1), A369211(n+1))` -/
def P3377344742475353540.Spec : Prop :=
  ∀ n, P3377344742475353540.a n = A369166 (n + 1)

end A369166

/-! ## A369166.P3568934389472657133

`and(A055580(n), A369211(n+1))`
-/

namespace A369166.P3568934389472657133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055580 n) (A369211 (n + 1))

end

end A369166.P3568934389472657133

namespace A369166

/-- `and(A055580(n), A369211(n+1))` -/
def P3568934389472657133.Spec : Prop :=
  ∀ n, P3568934389472657133.a n = A369166 (n + 1)

end A369166

/-! ## A369166.P10369669487008072471

`and(A107392(n), A369211(n+1))`
-/

namespace A369166.P10369669487008072471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107392 n) (A369211 (n + 1))

end

end A369166.P10369669487008072471

namespace A369166

/-- `and(A107392(n), A369211(n+1))` -/
def P10369669487008072471.Spec : Prop :=
  ∀ n, P10369669487008072471.a n = A369166 (n + 1)

end A369166

/-! ## A369166.P5842971487324840806

`and(A107464(n), A369211(n+1))`
-/

namespace A369166.P5842971487324840806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107464 n) (A369211 (n + 1))

end

end A369166.P5842971487324840806

namespace A369166

/-- `and(A107464(n), A369211(n+1))` -/
def P5842971487324840806.Spec : Prop :=
  ∀ n, P5842971487324840806.a n = A369166 (n + 1)

end A369166

/-! ## A369166.P14859660549297161069

`and(A107953(n), A369211(n+1))`
-/

namespace A369166.P14859660549297161069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107953 n) (A369211 (n + 1))

end

end A369166.P14859660549297161069

namespace A369166

/-- `and(A107953(n), A369211(n+1))` -/
def P14859660549297161069.Spec : Prop :=
  ∀ n, P14859660549297161069.a n = A369166 (n + 1)

end A369166

/-! ## A369166.P8051152984790863436

`and(A211386(n), A369211(n+1))`
-/

namespace A369166.P8051152984790863436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A211386 n) (A369211 (n + 1))

end

end A369166.P8051152984790863436

namespace A369166

/-- `and(A211386(n), A369211(n+1))` -/
def P8051152984790863436.Spec : Prop :=
  ∀ n, P8051152984790863436.a n = A369166 (n + 1)

end A369166

/-! ## A369166.P3447771184487390773

`and(A107954(n), A369211(n+1))`
-/

namespace A369166.P3447771184487390773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107954 n) (A369211 (n + 1))

end

end A369166.P3447771184487390773

namespace A369166

/-- `and(A107954(n), A369211(n+1))` -/
def P3447771184487390773.Spec : Prop :=
  ∀ n, P3447771184487390773.a n = A369166 (n + 1)

end A369166

/-! ## A369166.P540115907293365319

`and(A107955(n), A369211(n+1))`
-/

namespace A369166.P540115907293365319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107955 n) (A369211 (n + 1))

end

end A369166.P540115907293365319

namespace A369166

/-- `and(A107955(n), A369211(n+1))` -/
def P540115907293365319.Spec : Prop :=
  ∀ n, P540115907293365319.a n = A369166 (n + 1)

end A369166

/-! ## A369166.P9158016424630811623

`A369211(n+1)%A001550(n)`
-/

namespace A369166.P9158016424630811623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369211 (n + 1)) (A001550 n)

end

end A369166.P9158016424630811623

namespace A369166

/-- `A369211(n+1)%A001550(n)` -/
def P9158016424630811623.Spec : Prop :=
  ∀ n, P9158016424630811623.a n = A369166 (n + 1)

end A369166

/-! ## A369166.P11591724024650391879

`and(A018886(n+1), A369211(n+1))`
-/

namespace A369166.P11591724024650391879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018886 (n + 1)) (A369211 (n + 1))

end

end A369166.P11591724024650391879

namespace A369166

/-- `and(A018886(n+1), A369211(n+1))` -/
def P11591724024650391879.Spec : Prop :=
  ∀ n, P11591724024650391879.a n = A369166 (n + 1)

end A369166

/-! ## A369166.P14429484909664523203

`and(A060160(n+1), A369211(n+1))`
-/

namespace A369166.P14429484909664523203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060160 (n + 1)) (A369211 (n + 1))

end

end A369166.P14429484909664523203

namespace A369166

/-- `and(A060160(n+1), A369211(n+1))` -/
def P14429484909664523203.Spec : Prop :=
  ∀ n, P14429484909664523203.a n = A369166 (n + 1)

end A369166

/-! ## A369166.P8379236606074146046

`A369211(n+1)%A000980(n)`
-/

namespace A369166.P8379236606074146046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369211 (n + 1)) (A000980 n)

end

end A369166.P8379236606074146046

namespace A369166

/-- `A369211(n+1)%A000980(n)` -/
def P8379236606074146046.Spec : Prop :=
  ∀ n, P8379236606074146046.a n = A369166 (n + 1)

end A369166

/-! ## A369166.P10520365365856535647

`and(A103454(n), A369211(n+1))`
-/

namespace A369166.P10520365365856535647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103454 n) (A369211 (n + 1))

end

end A369166.P10520365365856535647

namespace A369166

/-- `and(A103454(n), A369211(n+1))` -/
def P10520365365856535647.Spec : Prop :=
  ∀ n, P10520365365856535647.a n = A369166 (n + 1)

end A369166

/-! ## A369166.P12608365886243802815

`and(A263806(n), A369211(n+1))`
-/

namespace A369166.P12608365886243802815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A263806 n) (A369211 (n + 1))

end

end A369166.P12608365886243802815

namespace A369166

/-- `and(A263806(n), A369211(n+1))` -/
def P12608365886243802815.Spec : Prop :=
  ∀ n, P12608365886243802815.a n = A369166 (n + 1)

end A369166

/-!
# A369167: a(n) = A000688(n + A000688(n)).

The programs for A369167, there is no canonical definition to state claims against.
-/

/-! ## A369167.P17130001966433618383

`A000688(n+1+A000688(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369167.P17130001966433618383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 ((n + 1 : ℤ) + A000688 (n + 1)).toNat

end

end A369167.P17130001966433618383

/-! ## A369167.P9501180816664640319

`A000688(n+A000688(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369167.P9501180816664640319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 ((n : ℤ) + A000688 (n + 1) + 1).toNat

end

end A369167.P9501180816664640319

/-! ## A369167.P14608866257951766831

`∏{e}[∏{e}[n+1, A242699(#)]+n+1, A242699(#)]`
-/

namespace A369167.P14608866257951766831
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A242699 (Nat.factorization (f2 n) p + 64) + (n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A242699 (Nat.factorization (f1 n).natAbs p + 64)

end

end A369167.P14608866257951766831

/-! ## A369167.P17473689224055182970

`A000688(1+A000688(n+1)+n)`
-/

namespace A369167.P17473689224055182970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (1 + (A000688 (n + 1) + (n : ℤ))).toNat

end

end A369167.P17473689224055182970

/-! ## A369167.P16886142031411545223

`∑{d}[∑{d}[n+1, A188585(#)]+n+1, A188585(#)]`
-/

namespace A369167.P16886142031411545223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A188585 d + (n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A188585 d

end

end A369167.P16886142031411545223

/-!
# A369168: Numbers k such that A000005(k) = A000688(k).

The programs for A369168, there is no canonical definition to state claims against.
-/

/-! ## A369168.P14998473625285575941

`record[A374433(n)^4]`
-/

namespace A369168.P14998473625285575941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374433 n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A369168.P14998473625285575941

/-! ## A369168.P14739505252366767326

`record[A374435(n)^4]`
-/

namespace A369168.P14739505252366767326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374435 n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A369168.P14739505252366767326

/-! ## A369168.P9864156397730083798

`record[A374443(n)^4]`
-/

namespace A369168.P9864156397730083798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374443 n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A369168.P9864156397730083798

/-! ## A369168.P8287012705891561291

`record[A374433(n+3)²²]`
-/

namespace A369168.P8287012705891561291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A374433 (n + 3) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A369168.P8287012705891561291

/-!
# A369169: Terms k of A025487 such that A000005(k) = A000688(k).

The programs for A369169, there is no canonical definition to state claims against.
-/

/-! ## A369169.P1031855893512865692

`∩[A181824(n+1), A369168(n+1)]`
-/

namespace A369169.P1031855893512865692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369169.P1031855893512865692

/-!
# A369171: Numbers k such that A000688(k) = A046660(k+1).

The programs for A369171, there is no canonical definition to state claims against.
-/

/-! ## A369171.P14101930502088430635

`eq[A000688(n+1), A046660(n+2)]+1`
-/

namespace A369171.P14101930502088430635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A369171.P14101930502088430635

/-! ## A369171.P6719485864665195905

`eq[A005361(A233583(n+1)), A046660(n+1)]`
-/

namespace A369171.P6719485864665195905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369171.P6719485864665195905

/-! ## A369171.P14328542381225122276

`eq[A046660(n+1), A124736(A074206(n))]`
-/

namespace A369171.P14328542381225122276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124736 (A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369171.P14328542381225122276

/-! ## A369171.P1634611961593419174

`eq[A326976(n+1), A378619(n+1)]`
-/

namespace A369171.P1634611961593419174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378619 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369171.P1634611961593419174

/-! ## A369171.P15759846176165299218

`eq[A040195(A034871(n)), A051903(n+1)]`
-/

namespace A369171.P15759846176165299218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040195 (A034871 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369171.P15759846176165299218

/-!
# A369172: Irregular triangle read by rows: row n lists the lengths of the strings of the MIU formal system at the n-th level of the tree generated by recursively applying the system rules, starting from the MI string.

The programs for A369172, there is no canonical definition to state claims against.
-/

/-! ## A369172.P3063429548226508412

`∑{digits}[A368946(n), A001522(#)]`
-/

namespace A369172.P3063429548226508412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001522 x).sum

end

end A369172.P3063429548226508412

/-! ## A369172.P6628557123443288841

`∑{digits}[A368946(n), A008287(#)]`
-/

namespace A369172.P6628557123443288841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A008287 x).sum

end

end A369172.P6628557123443288841

/-! ## A369172.P7599899155660090670

`∑{digits}[A368946(n), A008956(#)]`
-/

namespace A369172.P7599899155660090670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A008956 x).sum

end

end A369172.P7599899155660090670

/-! ## A369172.P1867387265235791469

`∑{digits}[A368946(n), A055642(#)]`
-/

namespace A369172.P1867387265235791469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055642 x).sum

end

end A369172.P1867387265235791469

/-! ## A369172.P9181194707876667161

`∑{digits}[A368946(n), A116529(#)]`
-/

namespace A369172.P9181194707876667161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A116529 x).sum

end

end A369172.P9181194707876667161

/-! ## A369172.P7286996663973886404

`∑{digits}[A368946(n), A276921(#)]`
-/

namespace A369172.P7286996663973886404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A276921 x).sum

end

end A369172.P7286996663973886404

/-!
# A369173: Irregular triangle read by rows: row n lists all of the distinct derivable strings in the MIU formal system that are n characters long.

The programs for A369173, there is no canonical definition to state claims against.
-/

/-! ## A369173.P17936780804128756401

`A369409(∑[A369410(n+2)])`
-/

namespace A369173.P17936780804128756401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369410 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369409 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A369173.P17936780804128756401

/-! ## A369173.P2379038437167602081

`A369586(∑[A369408(n+2)])`
-/

namespace A369173.P2379038437167602081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369408 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369586 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A369173.P2379038437167602081

/-! ## A369173.P9305165795321900725

`A369586(lt[A369586(n+1), A329062(n+1)])`
-/

namespace A369173.P9305165795321900725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369586 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A369173.P9305165795321900725

/-!
# A369174: Irregular triangle read by rows: row n lists the number of U characters for each of the distinct derivable strings in the MIU formal system that are n characters long.

The programs for A369174, there is no canonical definition to state claims against.
-/

/-! ## A369174.P10345177027527163796

`∑{digits}[A369173(2+n), A000007(#)]`
-/

namespace A369174.P10345177027527163796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369173 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000007 x).sum

end

end A369174.P10345177027527163796

/-! ## A369174.P15689431147107283486

`∑{digits}[A369173(n+2), A023919(#)]`
-/

namespace A369174.P15689431147107283486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369173 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A023919 x).sum

end

end A369174.P15689431147107283486

/-! ## A369174.P13159186977130397052

`∑{digits}[A369173(n+2), A096874(#)]`
-/

namespace A369174.P13159186977130397052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369173 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A096874 x).sum

end

end A369174.P13159186977130397052

/-! ## A369174.P5976083118772164023

`∑{digits}[A369173(n+2), A353859(#)]`
-/

namespace A369174.P5976083118772164023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369173 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A353859 x).sum

end

end A369174.P5976083118772164023

/-! ## A369174.P14312626407604289720

`∑{digits}[A369173(n+2), A357368(#)]`
-/

namespace A369174.P14312626407604289720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369173 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A357368 x).sum

end

end A369174.P14312626407604289720

/-! ## A369174.P17121349490104738380

`∑{digits}[A369173(n+2), A368768(#)]`
-/

namespace A369174.P17121349490104738380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369173 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A368768 x).sum

end

end A369174.P17121349490104738380

/-!
# A369175: Number of regions in a graph of n adjacent rectangles in a row with all possible diagonals drawn, as in A306302, but without the rectangles' edges which are perpendicular to the row.

The programs for A369175, there is no canonical definition to state claims against.
-/

/-! ## A369175.P331003082351345877

`A369177(n+1)-A369176(n+1)+1`
-/

namespace A369175.P331003082351345877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369177 (n + 1) - A369176 (n + 1) + 1

end

end A369175.P331003082351345877

/-! ## A369175.P1975219612345022634

`∑[∑[A350657(A261188(3*n+2))]]`
-/

namespace A369175.P1975219612345022634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350657 (A261188 (3 * n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369175.P1975219612345022634

/-!
# A369176: Number of vertices in a graph of n adjacent rectangles in a row with all possible diagonals drawn, as in A306302, but without the rectangles' edges which are perpendicular to the row.

The programs for A369176, there is no canonical definition to state claims against.
-/

/-! ## A369176.P428505884851321313

`A369177(n+1)-A369175(n+1)+1`
-/

namespace A369176.P428505884851321313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369177 (n + 1) - A369175 (n + 1) + 1

end

end A369176.P428505884851321313

/-! ## A369176.P7172914814557129582

`A328677(A000073(n+4))-A194508(3*n+1)`
-/

namespace A369176.P7172914814557129582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328677 (A000073 (n + 4)).toNat - A194508 (3 * n + 1)

end

end A369176.P7172914814557129582

/-!
# A369177: Number of edges in a graph of n adjacent rectangles in a row with all possible diagonals drawn, as in A306302, but without the rectangles' edges which are perpendicular to the row.

The programs for A369177, there is no canonical definition to state claims against.
-/

/-! ## A369177.P3747334403434294151

`A369175(n+1)+A369176(n+1)-1`
-/

namespace A369177.P3747334403434294151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369175 (n + 1) + A369176 (n + 1) - 1

end

end A369177.P3747334403434294151

/-!
# A369179: Irregular triangle read by rows: row n lists the number of I characters for each of the distinct derivable strings in the MIU formal system that are n characters long.

The programs for A369179, the canonical program `A369179.P633880592290612495` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369179 has offset 2).

The definition of A369179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369179.P4910637851415353424

`∑{digits}[A369173(n+2), A228405(#)]`
-/

namespace A369179.P4910637851415353424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369173 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A228405 x).sum

end

end A369179.P4910637851415353424

namespace A369179

/-- `∑{digits}[A369173(n+2), A228405(#)]` -/
def P4910637851415353424.Spec : Prop :=
  ∀ n, P4910637851415353424.a n = A369179 (n + 2)

end A369179

/-! ## A369179.P633880592290612495

`filter[A048881(n), A011655(#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A369179

/-- `filter[A048881(n), A011655(#)]` -/
def P633880592290612495.Spec : Prop :=
  ∀ n, P633880592290612495.a n = A369179 (n + 2)

theorem P633880592290612495.correct : P633880592290612495.Spec := by
  intro n
  simp only [A369179, Nat.add_sub_cancel]

end A369179

/-! ## A369179.P6940879652662834688

`filter[A048881(n), A022928(#)]`
-/

namespace A369179.P6940879652662834688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022928 (f1 j).toNat = 1) n)

end

end A369179.P6940879652662834688

namespace A369179

/-- `filter[A048881(n), A022928(#)]` -/
def P6940879652662834688.Spec : Prop :=
  ∀ n, P6940879652662834688.a n = A369179 (n + 2)

end A369179

/-! ## A369179.P17820996060944337472

`∑{e}[A063007(3*n+2)+1, #]`
-/

namespace A369179.P17820996060944337472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063007 (3 * n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A369179.P17820996060944337472

namespace A369179

/-- `∑{e}[A063007(3*n+2)+1, #]` -/
def P17820996060944337472.Spec : Prop :=
  ∀ n, (P17820996060944337472.a n : ℤ) = A369179 (n + 2)

end A369179

/-! ## A369179.P3581318472876387047

`A007424(A038485(n+1))`
-/

namespace A369179.P3581318472876387047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007424 (A038485 (n + 1)).toNat

end

end A369179.P3581318472876387047

namespace A369179

/-- `A007424(A038485(n+1))` -/
def P3581318472876387047.Spec : Prop :=
  ∀ n, P3581318472876387047.a n = A369179 (n + 2)

end A369179

/-!
# A369180: Alternating sum of the k-adic valuations (ruler functions) of n.

The programs for A369180, the canonical program `A369180.P4248718248684324364` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369180 has offset 1).

The definition of A369180 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369180.P4248718248684324364

`∑{#}[n-1, (-1)^(#+2)*val(n+1, #+2)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A369180

/-- `∑{#}[n-1, (-1)^(#+2)*val(n+1, #+2)]` -/
def P4248718248684324364.Spec : Prop :=
  ∀ n, P4248718248684324364.a n = A369180 (n + 1)

theorem P4248718248684324364.correct : P4248718248684324364.Spec := by
  intro n
  simp only [A369180, Nat.add_sub_cancel]

end A369180

/-!
# A369182: Numbers k such that d(k) is greater than d(k-2), d(k-1), d(k+1) and d(k+2) where d(k) is the number of divisors of k.

The programs for A369182, there is no canonical definition to state claims against.
-/

/-! ## A369182.P5909617870076415492

`lt[A145046(A074378(n)), A027642(n)]`
-/

namespace A369182.P5909617870076415492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145046 (A074378 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A369182.P5909617870076415492

/-! ## A369182.P428917534772991925

`lt[A000040(A064549(n+1)), A027642(n)]`
-/

namespace A369182.P428917534772991925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A064549 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A369182.P428917534772991925

/-! ## A369182.P16355676853001342645

`lt[A000040(A083717(n+1)), A027642(n)]`
-/

namespace A369182.P16355676853001342645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A083717 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A369182.P16355676853001342645

/-! ## A369182.P965698863986241560

`lt[A004613(A200746(n+1)), A027642(n)]`
-/

namespace A369182.P965698863986241560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (A200746 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A369182.P965698863986241560

/-! ## A369182.P785050683954174602

`lt[A000040(A064549(n+1)), A176591(n)]`
-/

namespace A369182.P785050683954174602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A064549 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A369182.P785050683954174602

/-!
# A369183: a(n) = n - A329004(n).

The programs for A369183, there is no canonical definition to state claims against.
-/

/-! ## A369183.P8197189995207754690

`n+1-A329004(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369183.P8197189995207754690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A329004 (n + 1)

end

end A369183.P8197189995207754690

/-! ## A369183.P6951021970600617573

`A000027(n+1)%A329004(n+1)`
-/

namespace A369183.P6951021970600617573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A329004 (n + 1))

end

end A369183.P6951021970600617573

/-! ## A369183.P14064828569584585209

`A087156(n+1)%A329004(n+1)`
-/

namespace A369183.P14064828569584585209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087156 (n + 1)) (A329004 (n + 1))

end

end A369183.P14064828569584585209

/-! ## A369183.P17249563932447956122

`A133256(A133256(n+1))%A329004(n+1)`
-/

namespace A369183.P17249563932447956122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133256 (A133256 (n + 1)).toNat) (A329004 (n + 1))

end

end A369183.P17249563932447956122

/-! ## A369183.P11867831571174835339

`A054429(A054429(n+1))%A329004(n+1)`
-/

namespace A369183.P11867831571174835339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054429 (A054429 (n + 1)).toNat) (A329004 (n + 1))

end

end A369183.P11867831571174835339

/-! ## A369183.P12892388512207118839

`A060401(n+1)%A329004(n+1)`
-/

namespace A369183.P12892388512207118839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060401 (n + 1)) (A329004 (n + 1))

end

end A369183.P12892388512207118839

/-!
# A369185: Numbers k such that Omega(k) = 1 + Omega(k+1) = 2 + Omega(k+2).

The programs for A369185, the canonical program `A369185.P3362833814146370033` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369185 has offset 1).

The definition of A369185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1395 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369185.P3362833814146370033

`∩[A369139(n+1)-1, A369139(n+1)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A369185

/-- `∩[A369139(n+1)-1, A369139(n+1)]` -/
def P3362833814146370033.Spec : Prop :=
  ∀ n, (P3362833814146370033.a n : ℤ) = A369185 (n + 1)

theorem P3362833814146370033.correct : P3362833814146370033.Spec := by
  intro n
  simp only [A369185, Nat.add_sub_cancel]

end A369185

/-! ## A369185.P12395942118329140663

`∩[A369139(n+1), A233583(A369139(n+1))]`
-/

namespace A369185.P12395942118329140663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A369139 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369185.P12395942118329140663

namespace A369185

/-- `∩[A369139(n+1), A233583(A369139(n+1))]` -/
def P12395942118329140663.Spec : Prop :=
  ∀ n, (P12395942118329140663.a n : ℤ) = A369185 (n + 1)

end A369185

/-!
# A369187: The numerators of a series that converges to the Dottie Number (A003957).

The programs for A369187, there is no canonical definition to state claims against.
-/

/-! ## A369187.P14863369532096465919

`A377666(A269715(n+1))`
-/

namespace A369187.P14863369532096465919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377666 (A269715 (n + 1)).toNat

end

end A369187.P14863369532096465919

/-! ## A369187.P1305421205645488179

`(A382102(A002110(n))-n)^and(1, n)`
-/

namespace A369187.P1305421205645488179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A382102 (A002110 n).toNat - (n : ℤ)) ^ Nat.land 1 n

end

end A369187.P1305421205645488179

/-!
# A369188: Number of squarefree triangular divisors of n.

The programs for A369188, the canonical program `A369188.P13376849897377668468` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369188 has offset 1).

The definition of A369188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369188.P13376849897377668468

`A007862(∏{p}[n+1, #])`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A369188

/-- `A007862(∏{p}[n+1, #])` -/
def P13376849897377668468.Spec : Prop :=
  ∀ n, P13376849897377668468.a n = A369188 (n + 1)

theorem P13376849897377668468.correct : P13376849897377668468.Spec := by
  intro n
  simp only [A369188, Nat.add_sub_cancel]

end A369188

/-! ## A369188.P2253163369160141369

`∑{d}[∏{p}[1+n, #], A010054(#)]`
-/

namespace A369188.P2253163369160141369
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010054 d

end

end A369188.P2253163369160141369

namespace A369188

/-- `∑{d}[∏{p}[1+n, #], A010054(#)]` -/
def P2253163369160141369.Spec : Prop :=
  ∀ n, P2253163369160141369.a n = A369188 (n + 1)

end A369188

/-! ## A369188.P10121808211355775602

`A007862(A007947(n+1))`
-/

namespace A369188.P10121808211355775602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (A007947 (n + 1)).toNat

end

end A369188.P10121808211355775602

namespace A369188

/-- `A007862(A007947(n+1))` -/
def P10121808211355775602.Spec : Prop :=
  ∀ n, P10121808211355775602.a n = A369188 (n + 1)

end A369188

/-! ## A369188.P4084341874961775813

`∑{d}[A007947(n+1), A010054(#)]`
-/

namespace A369188.P4084341874961775813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010054 d

end

end A369188.P4084341874961775813

namespace A369188

/-- `∑{d}[A007947(n+1), A010054(#)]` -/
def P4084341874961775813.Spec : Prop :=
  ∀ n, P4084341874961775813.a n = A369188 (n + 1)

end A369188

/-! ## A369188.P14147021642182709263

`A129308(∏{p}[n+1, #]+∏{p}[n+1, #])`
-/

namespace A369188.P14147021642182709263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (∏ p ∈ Nat.primeFactors (f1 n), p + ∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A369188.P14147021642182709263

namespace A369188

/-- `A129308(∏{p}[n+1, #]+∏{p}[n+1, #])` -/
def P14147021642182709263.Spec : Prop :=
  ∀ n, P14147021642182709263.a n = A369188 (n + 1)

end A369188

/-! ## A369188.P15497379470879052154

`A129308(2*A007947(n+1))`
-/

namespace A369188.P15497379470879052154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (2 * A007947 (n + 1)).toNat

end

end A369188.P15497379470879052154

namespace A369188

/-- `A129308(2*A007947(n+1))` -/
def P15497379470879052154.Spec : Prop :=
  ∀ n, P15497379470879052154.a n = A369188 (n + 1)

end A369188

/-! ## A369188.P4714068367416279729

`A007862(gcd(n+1, A034386(n+3)))`
-/

namespace A369188.P4714068367416279729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (Int.gcd (n + 1 : ℤ) (A034386 (n + 3)))

end

end A369188.P4714068367416279729

namespace A369188

/-- `A007862(gcd(n+1, A034386(n+3)))` -/
def P4714068367416279729.Spec : Prop :=
  ∀ n, P4714068367416279729.a n = A369188 (n + 1)

end A369188

/-!
# A369189: Sum of the squarefree triangular divisors of n.

The programs for A369189, the canonical program `A369189.P17989487729230229152` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369189 has offset 1).

The definition of A369189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369189.P17989487729230229152

`A185027(∏{p}[n+1, #])`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A369189

/-- `A185027(∏{p}[n+1, #])` -/
def P17989487729230229152.Spec : Prop :=
  ∀ n, P17989487729230229152.a n = A369189 (n + 1)

theorem P17989487729230229152.correct : P17989487729230229152.Spec := by
  intro n
  simp only [A369189, Nat.add_sub_cancel]

end A369189

/-! ## A369189.P1246052456317619604

`∑{d}[∏{p}[n+1, #], A127773(#)]`
-/

namespace A369189.P1246052456317619604
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A127773 d

end

end A369189.P1246052456317619604

namespace A369189

/-- `∑{d}[∏{p}[n+1, #], A127773(#)]` -/
def P1246052456317619604.Spec : Prop :=
  ∀ n, P1246052456317619604.a n = A369189 (n + 1)

end A369189

/-! ## A369189.P6682893909389571509

`A185027(A007947(1+n))`
-/

namespace A369189.P6682893909389571509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185027 (A007947 (1 + n)).toNat

end

end A369189.P6682893909389571509

namespace A369189

/-- `A185027(A007947(1+n))` -/
def P6682893909389571509.Spec : Prop :=
  ∀ n, P6682893909389571509.a n = A369189 (n + 1)

end A369189

/-! ## A369189.P7728475673450027794

`∑{d}[A007947(n+1), A127773(#)]`
-/

namespace A369189.P7728475673450027794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A127773 d

end

end A369189.P7728475673450027794

namespace A369189

/-- `∑{d}[A007947(n+1), A127773(#)]` -/
def P7728475673450027794.Spec : Prop :=
  ∀ n, P7728475673450027794.a n = A369189 (n + 1)

end A369189

/-! ## A369189.P11341518294535329953

`A343408(A007947(n+1)*A151800(2*n+1))`
-/

namespace A369189.P11341518294535329953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343408 (A007947 (n + 1) * A151800 (2 * n + 1)).toNat

end

end A369189.P11341518294535329953

namespace A369189

/-- `A343408(A007947(n+1)*A151800(2*n+1))` -/
def P11341518294535329953.Spec : Prop :=
  ∀ n, P11341518294535329953.a n = A369189 (n + 1)

end A369189

/-!
# A369190: Expansion of (1/x) * Series_Reversion( x / ((1-x)^2 * (1+x)^4) ).

The programs for A369190, the canonical program `A369190.P7646910876068325800` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369190 has offset 0).

The definition of A369190 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369190.P7646910876068325800

`1/(n+1)*∑{#}[n, (-1)^#*C(2*(n+1), #)*C(4*(n+1), n-#)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A369190

/-- `1/(n+1)*∑{#}[n, (-1)^#*C(2*(n+1), #)*C(4*(n+1), n-#)]` -/
def P7646910876068325800.Spec : Prop :=
  ∀ n, P7646910876068325800.a n = (A369190 n : ℚ)

end A369190

/-!
# A369192: Number of labeled simple graphs with n vertices and at most n edges (not necessarily covering).

The programs for A369192, the canonical program `A369192.P2418439586091798351` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369192 has offset 0).

The definition of A369192 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369192.P2418439586091798351

`∑{#}[n, C(C(n, 2), #)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A369192

/-- `∑{#}[n, C(C(n, 2), #)]` -/
def P2418439586091798351.Spec : Prop :=
  ∀ n, (P2418439586091798351.a n : ℤ) = A369192 n

theorem P2418439586091798351.correct : P2418439586091798351.Spec := by
  intro n
  simp only [A369192]

end A369192

/-! ## A369192.P10433060066587409277

`A193820(A037255(n)+1)`
-/

namespace A369192.P10433060066587409277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193820 (A037255 n + 1).toNat

end

end A369192.P10433060066587409277

namespace A369192

/-- `A193820(A037255(n)+1)` -/
def P10433060066587409277.Spec : Prop :=
  ∀ n, P10433060066587409277.a n = A369192 n

end A369192

/-! ## A369192.P16202179221625988206

`A054123(A037255(n+1))`
-/

namespace A369192.P16202179221625988206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 (A037255 (n + 1)).toNat

end

end A369192.P16202179221625988206

namespace A369192

/-- `A054123(A037255(n+1))` -/
def P16202179221625988206.Spec : Prop :=
  ∀ n, P16202179221625988206.a n = A369192 n

end A369192

/-! ## A369192.P15587736741378937935

`A052509(A002817(n)+n)`
-/

namespace A369192.P15587736741378937935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (A002817 n + (n : ℤ)).toNat

end

end A369192.P15587736741378937935

namespace A369192

/-- `A052509(A002817(n)+n)` -/
def P15587736741378937935.Spec : Prop :=
  ∀ n, P15587736741378937935.a n = A369192 n

end A369192

/-! ## A369192.P17444242338664128499

`A054123(∑[A229183(n)+1])`
-/

namespace A369192.P17444242338664128499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229183 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A369192.P17444242338664128499

namespace A369192

/-- `A054123(∑[A229183(n)+1])` -/
def P17444242338664128499.Spec : Prop :=
  ∀ n, P17444242338664128499.a n = A369192 n

end A369192

/-!
# A369193: Number of labeled simple graphs with n vertices and at most as many edges as covered (non-isolated) vertices.

The programs for A369193, there is no canonical definition to state claims against.
-/

/-! ## A369193.P17381886530121875555

`A205295(A036839(n+2))+A133686(n)`
-/

namespace A369193.P17381886530121875555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205295 (A036839 (n + 2)).toNat + A133686 n

end

end A369193.P17381886530121875555

/-! ## A369193.P15622436426216021148

`A205295(A207333(2*(n+1)))+A133686(n)`
-/

namespace A369193.P15622436426216021148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205295 (A207333 (2 * (n + 1))).toNat + A133686 n

end

end A369193.P15622436426216021148

/-!
# A369194: Number of labeled loop-graphs covering n vertices with at most n edges.

The programs for A369194, there is no canonical definition to state claims against.
-/

/-! ## A369194.P8579499755540519225

`A369140(n)+6*A111855(A326358(n))`
-/

namespace A369194.P8579499755540519225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369140 n + 6 * A111855 (A326358 n).toNat

end

end A369194.P8579499755540519225

/-!
# A369196: Number of labeled loop-graphs with n vertices and at most as many edges as covered vertices.

The programs for A369196, there is no canonical definition to state claims against.
-/

/-! ## A369196.P14836661395771021367

`A013919((n+1)*A181939(n))`
-/

namespace A369196.P14836661395771021367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013919 ((n + 1 : ℤ) * A181939 n).toNat

end

end A369196.P14836661395771021367

/-!
# A369197: Number of labeled connected loop-graphs with n vertices, none isolated, and at most n edges.

The programs for A369197, there is no canonical definition to state claims against.
-/

/-! ## A369197.P14153569322072299729

`A354436(n)+A055242(A206830(n))`
-/

namespace A369197.P14153569322072299729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354436 n + A055242 (A206830 n).toNat

end

end A369197.P14153569322072299729

/-! ## A369197.P4637847870826471311

`A380377(A006677(n+1)-A003987(n))`
-/

namespace A369197.P4637847870826471311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380377 (A006677 (n + 1) - A003987 n).toNat

end

end A369197.P4637847870826471311

/-!
# A369198: Number of labeled loop-graphs with n vertices and the same number of edges as covered vertices.

The programs for A369198, there is no canonical definition to state claims against.
-/

/-! ## A369198.P8750635395412507926

`A004526(A151922(n)+A006351(n+1))`
-/

namespace A369198.P8750635395412507926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A151922 n + A006351 (n + 1)).toNat

end

end A369198.P8750635395412507926

/-! ## A369198.P7126704496029417918

`A219648(n)+A123684(A006351(n+1))`
-/

namespace A369198.P7126704496029417918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219648 n + A123684 (A006351 (n + 1)).toNat

end

end A369198.P7126704496029417918

