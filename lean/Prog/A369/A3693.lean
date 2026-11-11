import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C048
import Seq.B000.C050
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
import Seq.B001.C013
import Seq.B001.C014
import Seq.B001.C015
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
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A369300: Expansion of (1/x) * Series_Reversion( x * (1-x)^2 * (1-x^3)^3 ).

The programs for A369300, there is no canonical definition to state claims against.
-/

/-! ## A369300.P6830500090586602265

`A369269(n)+A356325(A206957(n+1))`
-/

namespace A369300.P6830500090586602265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369269 n + A356325 (A206957 (n + 1)).toNat

end

end A369300.P6830500090586602265

/-! ## A369300.P1659340425289429651

`xor(A025444(A186724(2*(n+1))), A369269(n))`
-/

namespace A369300.P1659340425289429651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025444 (A186724 (2 * (n + 1))).toNat) (A369269 n)

end

end A369300.P1659340425289429651

/-!
# A369301: Expansion of (1/x) * Series_Reversion( x * (1-x)^3 * (1-x^3)^3 ).

The programs for A369301, there is no canonical definition to state claims against.
-/

/-! ## A369301.P14102879802683973604

`A369270(n)+A275672(A241688(n+1))`
-/

namespace A369301.P14102879802683973604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369270 n + A275672 (A241688 (n + 1)).toNat

end

end A369301.P14102879802683973604

/-!
# A369302: a(n) = A091255(A369293(n), A369293(n+1)).

The programs for A369302, there is no canonical definition to state claims against.
-/

/-! ## A369302.P13326495760714584671

`A091255(C(A369293(n+1)+A369293(n+2)-1, 2)+A369293(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369302.P13326495760714584671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091255 ((Nat.choose (A369293 (n + 1) + A369293 (n + 2) - 1).toNat 2 : ℤ) + A369293 (n + 1)).toNat

end

end A369302.P13326495760714584671

/-! ## A369302.P17775776794789685091

`A091255(C(A369293(n+1)+A369293(n+2)-1, 2)+A369293(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369302.P17775776794789685091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091255 ((Nat.choose (A369293 (n + 1) + A369293 (n + 2) - 1).toNat 2 : ℤ) + A369293 (n + 2)).toNat

end

end A369302.P17775776794789685091

/-!
# A369303: a(1) = 1, a(2) = 2; for n > 2, a(n) is the smallest unused number whose string value contains the comma transform (cf. A367360) of the previous two terms.

The programs for A369303, there is no canonical definition to state claims against.
-/

/-! ## A369303.P17534396610939907307

`eq[n, A182287(A265902(n))]`
-/

namespace A369303.P17534396610939907307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182287 (A265902 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A369303.P17534396610939907307

/-! ## A369303.P16128717577853786161

`∩[A087815(n+1), A089604(n)]`
-/

namespace A369303.P16128717577853786161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089604 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369303.P16128717577853786161

/-! ## A369303.P6630461592677331640

`∩[A089604(n), A091529(n+1)]`
-/

namespace A369303.P6630461592677331640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089604 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369303.P6630461592677331640

/-!
# A369304: Numbers k for which the polynomial (x-1)^3*(x+1)^k has more than one zero coefficient.

The programs for A369304, the canonical program `A369304.P419815822111193300` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369304 has offset 1).

The definition of A369304 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369304.P419815822111193300

`ogf((3+3x+2x^2-x^3-x^4)/(1-x-2x^2+2x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A369304

/-- `ogf((3+3x+2x^2-x^3-x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P419815822111193300.Spec : Prop :=
  ∀ n, P419815822111193300.a n = A369304 (n + 1)

theorem P419815822111193300.correct : P419815822111193300.Spec := by
  intro n
  simp only [A369304, Nat.add_sub_cancel]

end A369304

/-! ## A369304.P3931325944225323719

`∑[(2+n)*gcd(2, n)]-1`
-/

namespace A369304.P3931325944225323719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 + n) * Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A369304.P3931325944225323719

namespace A369304

/-- `∑[(2+n)*gcd(2, n)]-1` -/
def P3931325944225323719.Spec : Prop :=
  ∀ n, P3931325944225323719.a n = A369304 (n + 1)

end A369304

/-! ## A369304.P1903262676971982161

`∑[(2-n%2)*(2+n)]-1`
-/

namespace A369304.P1903262676971982161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((n % 2 : ℕ) : ℤ)) * (2 + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A369304.P1903262676971982161

namespace A369304

/-- `∑[(2-n%2)*(2+n)]-1` -/
def P1903262676971982161.Spec : Prop :=
  ∀ n, P1903262676971982161.a n = A369304 (n + 1)

end A369304

/-! ## A369304.P1586175640654982421

`∑[(2-and(1, n))*(n+2)]-1`
-/

namespace A369304.P1586175640654982421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.land 1 n : ℤ)) * (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A369304.P1586175640654982421

namespace A369304

/-- `∑[(2-and(1, n))*(n+2)]-1` -/
def P1586175640654982421.Spec : Prop :=
  ∀ n, P1586175640654982421.a n = A369304 (n + 1)

end A369304

/-! ## A369304.P14827221401814823897

`Δ[(n+2)*∑[ceil(n/2)]]+n`
-/

namespace A369304.P14827221401814823897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A369304.P14827221401814823897

namespace A369304

/-- `Δ[(n+2)*∑[ceil(n/2)]]+n` -/
def P14827221401814823897.Spec : Prop :=
  ∀ n, P14827221401814823897.a n = A369304 (n + 1)

end A369304

/-! ## A369304.P2028077035201522490

`∑[∑[4*(n+1)]/a(n-1)]` with `a(0)=3, a(1)=3`
-/

namespace A369304.P2028077035201522490
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369304.P2028077035201522490

namespace A369304

/-- `∑[∑[4*(n+1)]/a(n-1)]` -/
def P2028077035201522490.Spec : Prop :=
  ∀ n, P2028077035201522490.a n = (A369304 (n + 1) : ℚ)

end A369304

/-! ## A369304.P15284193719924393419

`A200182(A001651(n+1))`
-/

namespace A369304.P15284193719924393419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200182 (A001651 (n + 1)).toNat

end

end A369304.P15284193719924393419

namespace A369304

/-- `A200182(A001651(n+1))` -/
def P15284193719924393419.Spec : Prop :=
  ∀ n, P15284193719924393419.a n = A369304 (n + 1)

end A369304

/-! ## A369304.P12331170371018685565

`eq[2, A282743(n)]`
-/

namespace A369304.P12331170371018685565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282743 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A369304.P12331170371018685565

namespace A369304

/-- `eq[2, A282743(n)]` -/
def P12331170371018685565.Spec : Prop :=
  ∀ n, (P12331170371018685565.a n : ℤ) = A369304 (n + 1)

end A369304

/-! ## A369304.P14591483014929962728

`eq[1, A089801(n+2)]`
-/

namespace A369304.P14591483014929962728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089801 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A369304.P14591483014929962728

namespace A369304

/-- `eq[1, A089801(n+2)]` -/
def P14591483014929962728.Spec : Prop :=
  ∀ n, (P14591483014929962728.a n : ℤ) = A369304 (n + 1)

end A369304

/-! ## A369304.P12657339125448506606

`A183860(A135370(n+1))`
-/

namespace A369304.P12657339125448506606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183860 (A135370 (n + 1)).toNat

end

end A369304.P12657339125448506606

namespace A369304

/-- `A183860(A135370(n+1))` -/
def P12657339125448506606.Spec : Prop :=
  ∀ n, P12657339125448506606.a n = A369304 (n + 1)

end A369304

/-! ## A369304.P1320439537131915076

`A023443(A271675(n+2))`
-/

namespace A369304.P1320439537131915076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A271675 (n + 2)).toNat

end

end A369304.P1320439537131915076

namespace A369304

/-- `A023443(A271675(n+2))` -/
def P1320439537131915076.Spec : Prop :=
  ∀ n, P1320439537131915076.a n = A369304 (n + 1)

end A369304

/-!
# A369305: Number of terms in A343524 that are less than 10^n.

The programs for A369305, the canonical program `A369305.P4983941840440991888` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369305 has offset 0).

The definition of A369305 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369305.P4983941840440991888

`ogf((1+9x+9x^2+36x^3+36x^4+84x^5+84x^6+126x^7+126x^8+126x^9+126x^10+84x^11+84x^12+36x^13+36x^14+9x^15+9x^16+x^17+x^18)/(1-x))`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A369305

/-- `ogf((1+9x+9x^2+36x^3+36x^4+84x^5+84x^6+126x^7+126x^8+126x^9+126x^10+84x^11+84x^12+36x^13+36x^14+9x^15+9x^16+x^17+x^18)/(1-x))` -/
def P4983941840440991888.Spec : Prop :=
  ∀ n, P4983941840440991888.a n = A369305 n

theorem P4983941840440991888.correct : P4983941840440991888.Spec := by
  intro n
  simp only [A369305]

end A369305

/-!
# A369306: The number of cubefree divisors d of n such that n/d is also cubefree.

The programs for A369306, the canonical program `A369306.P7838133556568546041` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369306 has offset 1).

The definition of A369306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369306.P10735132230479055484

`∑{d}[n+1, A008683(#)*A341343((n+1)/#)]`
-/

namespace A369306.P10735132230479055484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A341343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369306.P10735132230479055484

namespace A369306

/-- `∑{d}[n+1, A008683(#)*A341343((n+1)/#)]` -/
def P10735132230479055484.Spec : Prop :=
  ∀ n, P10735132230479055484.a n = A369306 (n + 1)

end A369306

/-! ## A369306.P2903757138762930312

`∑{d}[n+1, A056624(#)*A307425((n+1)/#)]`
-/

namespace A369306.P2903757138762930312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056624 d * A307425 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369306.P2903757138762930312

namespace A369306

/-- `∑{d}[n+1, A056624(#)*A307425((n+1)/#)]` -/
def P2903757138762930312.Spec : Prop :=
  ∀ n, P2903757138762930312.a n = A369306 (n + 1)

end A369306

/-! ## A369306.P7838133556568546041

`∑{d}[n+1, A212793(#)*A212793((n+1)/#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A369306

/-- `∑{d}[n+1, A212793(#)*A212793((n+1)/#)]` -/
def P7838133556568546041.Spec : Prop :=
  ∀ n, P7838133556568546041.a n = A369306 (n + 1)

theorem P7838133556568546041.correct : P7838133556568546041.Spec := by
  intro n
  simp only [A369306, Nat.add_sub_cancel]

end A369306

/-! ## A369306.P13871444472138647856

`gcd(∏{e}[n+1, 7*#+1], A037289(n+1))`
-/

namespace A369306.P13871444472138647856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), (7 * Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A037289 (n + 1))

end

end A369306.P13871444472138647856

namespace A369306

/-- `gcd(∏{e}[n+1, 7*#+1], A037289(n+1))` -/
def P13871444472138647856.Spec : Prop :=
  ∀ n, (P13871444472138647856.a n : ℤ) = A369306 (n + 1)

end A369306

/-! ## A369306.P13430079689204939341

`∏{e}[n+1, #+1]/A323436(∏{e}[n+1, #!])`
-/

namespace A369306.P13430079689204939341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / (A323436 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p)) : ℚ)

end

end A369306.P13430079689204939341

namespace A369306

/-- `∏{e}[n+1, #+1]/A323436(∏{e}[n+1, #!])` -/
def P13430079689204939341.Spec : Prop :=
  ∀ n, P13430079689204939341.a n = (A369306 (n + 1) : ℚ)

end A369306

/-!
# A369307: The number of exponentially odd divisors d of n such that n/d is also exponentially odd.

The programs for A369307, the canonical program `A369307.P4586267227378045470` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369307 has offset 1).

The definition of A369307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369307.P8868084914793814123

`∑{d}[n+1, A008683(#)*A401086((n+1)/#)]`
-/

namespace A369307.P8868084914793814123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A401086 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369307.P8868084914793814123

namespace A369307

/-- `∑{d}[n+1, A008683(#)*A401086((n+1)/#)]` -/
def P8868084914793814123.Spec : Prop :=
  ∀ n, P8868084914793814123.a n = A369307 (n + 1)

end A369307

/-! ## A369307.P4640366116375098268

`∑{d}[n+1, A189021(#)*A401088((n+1)/#)]`
-/

namespace A369307.P4640366116375098268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A189021 d * A401088 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369307.P4640366116375098268

namespace A369307

/-- `∑{d}[n+1, A189021(#)*A401088((n+1)/#)]` -/
def P4640366116375098268.Spec : Prop :=
  ∀ n, P4640366116375098268.a n = A369307 (n + 1)

end A369307

/-! ## A369307.P4586267227378045470

`∑{d}[n+1, A295316(#)*A295316((n+1)/#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A369307

/-- `∑{d}[n+1, A295316(#)*A295316((n+1)/#)]` -/
def P4586267227378045470.Spec : Prop :=
  ∀ n, P4586267227378045470.a n = A369307 (n + 1)

theorem P4586267227378045470.correct : P4586267227378045470.Spec := by
  intro n
  simp only [A369307, Nat.add_sub_cancel]

end A369307

/-! ## A369307.P16735594836983466520

`A005361(((n+1)/∏{p}[n+1, #^val(n+1, #²)]²)²*A071974(n+1))`
-/

namespace A369307.P16735594836983466520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℚ)) ^ 2 * (A071974 (n + 1) : ℚ))).toNat

end

end A369307.P16735594836983466520

namespace A369307

/-- `A005361(((n+1)/∏{p}[n+1, #^val(n+1, #²)]²)²*A071974(n+1))` -/
def P16735594836983466520.Spec : Prop :=
  ∀ n, P16735594836983466520.a n = A369307 (n + 1)

end A369307

/-! ## A369307.P3072027939001715499

`∏{e}[n+1, A128428(A138265(#+3))]`
-/

namespace A369307.P3072027939001715499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A128428 (A138265 (Nat.factorization (f1 n) p + 3)).toNat

end

end A369307.P3072027939001715499

namespace A369307

/-- `∏{e}[n+1, A128428(A138265(#+3))]` -/
def P3072027939001715499.Spec : Prop :=
  ∀ n, P3072027939001715499.a n = A369307 (n + 1)

end A369307

/-! ## A369307.P15304439755628891700

`∏{e}[(n+1)*∏{p}[n+1, #²], A036497(#)]`
-/

namespace A369307.P15304439755628891700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A036497 (Nat.factorization (f1 n) p)

end

end A369307.P15304439755628891700

namespace A369307

/-- `∏{e}[(n+1)*∏{p}[n+1, #²], A036497(#)]` -/
def P15304439755628891700.Spec : Prop :=
  ∀ n, P15304439755628891700.a n = A369307 (n + 1)

end A369307

/-! ## A369307.P9194026127151302227

`A387960(A270436(n+1))`
-/

namespace A369307.P9194026127151302227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387960 (A270436 (n + 1)).toNat

end

end A369307.P9194026127151302227

namespace A369307

/-- `A387960(A270436(n+1))` -/
def P9194026127151302227.Spec : Prop :=
  ∀ n, P9194026127151302227.a n = A369307 (n + 1)

end A369307

/-! ## A369307.P31955051337934840

`gcd(A191488(n), A354825(n+1))`
-/

namespace A369307.P31955051337934840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A191488 n) (A354825 (n + 1))

end

end A369307.P31955051337934840

namespace A369307

/-- `gcd(A191488(n), A354825(n+1))` -/
def P31955051337934840.Spec : Prop :=
  ∀ n, (P31955051337934840.a n : ℤ) = A369307 (n + 1)

end A369307

/-! ## A369307.P305260611349811106

`A323308(A227324(n+1))`
-/

namespace A369307.P305260611349811106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323308 (A227324 (n + 1)).toNat

end

end A369307.P305260611349811106

namespace A369307

/-- `A323308(A227324(n+1))` -/
def P305260611349811106.Spec : Prop :=
  ∀ n, P305260611349811106.a n = A369307 (n + 1)

end A369307

/-!
# A369308: The number of square divisors d of n such that n/d is also a square.

The programs for A369308, the canonical program `A369308.P10334454097414286885` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369308 has offset 1).

The definition of A369308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369308.P10334454097414286885

`Δ[A113215(n)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A369308

/-- `Δ[A113215(n)]` -/
def P10334454097414286885.Spec : Prop :=
  ∀ n, P10334454097414286885.a n = A369308 (n + 1)

theorem P10334454097414286885.correct : P10334454097414286885.Spec := by
  intro n
  simp only [A369308, Nat.add_sub_cancel]

end A369308

/-! ## A369308.P1351002683974442062

`Δ[A006218(floor(sqrt(n)))]`
-/

namespace A369308.P1351002683974442062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (Nat.sqrt n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369308.P1351002683974442062

namespace A369308

/-- `Δ[A006218(floor(sqrt(n)))]` -/
def P1351002683974442062.Spec : Prop :=
  ∀ n, P1351002683974442062.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P14835420474069820505

`Δ[A054519(floor(sqrt(n)))]`
-/

namespace A369308.P14835420474069820505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (Nat.sqrt n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369308.P14835420474069820505

namespace A369308

/-- `Δ[A054519(floor(sqrt(n)))]` -/
def P14835420474069820505.Spec : Prop :=
  ∀ n, P14835420474069820505.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P1758285301657927044

`∏{e}[1+n, A027656(#)]`
-/

namespace A369308.P1758285301657927044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A027656 (Nat.factorization (f1 n) p)

end

end A369308.P1758285301657927044

namespace A369308

/-- `∏{e}[1+n, A027656(#)]` -/
def P1758285301657927044.Spec : Prop :=
  ∀ n, P1758285301657927044.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P8935154021137285115

`Δ[floor(sqrt(n))]*A046951(n+1)`
-/

namespace A369308.P8935154021137285115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A046951 (n + 1)

end

end A369308.P8935154021137285115

namespace A369308

/-- `Δ[floor(sqrt(n))]*A046951(n+1)` -/
def P8935154021137285115.Spec : Prop :=
  ∀ n, P8935154021137285115.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P11085908385770418554

`Δ[floor(sqrt(n))]*A322483(n+1)`
-/

namespace A369308.P11085908385770418554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A322483 (n + 1)

end

end A369308.P11085908385770418554

namespace A369308

/-- `Δ[floor(sqrt(n))]*A322483(n+1)` -/
def P11085908385770418554.Spec : Prop :=
  ∀ n, P11085908385770418554.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P17197812380612574060

`A130209(A056536(n+1))`
-/

namespace A369308.P17197812380612574060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130209 (A056536 (n + 1)).toNat

end

end A369308.P17197812380612574060

namespace A369308

/-- `A130209(A056536(n+1))` -/
def P17197812380612574060.Spec : Prop :=
  ∀ n, P17197812380612574060.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P13813429566211613723

`A130209(A064788(n+1))`
-/

namespace A369308.P13813429566211613723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130209 (A064788 (n + 1)).toNat

end

end A369308.P13813429566211613723

namespace A369308

/-- `A130209(A064788(n+1))` -/
def P13813429566211613723.Spec : Prop :=
  ∀ n, P13813429566211613723.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P16795042192050436663

`A130209(A259549(n+1))`
-/

namespace A369308.P16795042192050436663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130209 (A259549 (n + 1)).toNat

end

end A369308.P16795042192050436663

namespace A369308

/-- `A130209(A259549(n+1))` -/
def P16795042192050436663.Spec : Prop :=
  ∀ n, P16795042192050436663.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P15121445425781729683

`A113215(n+1)-A113215(n)`
-/

namespace A369308.P15121445425781729683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113215 (n + 1) - A113215 n

end

end A369308.P15121445425781729683

namespace A369308

/-- `A113215(n+1)-A113215(n)` -/
def P15121445425781729683.Spec : Prop :=
  ∀ n, P15121445425781729683.a n = A369308 (n + 1)

theorem P15121445425781729683.correct : P15121445425781729683.Spec := by
  intro n
  simp only [A369308, Nat.add_sub_cancel, A369308.P15121445425781729683.a, A369308.P10334454097414286885.f1, A369308.P10334454097414286885.a, SequenceMachineLib.memo_apply]

end A369308

/-! ## A369308.P284811443142737574

`A010052(n+1)*A332712(n+1)`
-/

namespace A369308.P284811443142737574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 1) * A332712 (n + 1)

end

end A369308.P284811443142737574

namespace A369308

/-- `A010052(n+1)*A332712(n+1)` -/
def P284811443142737574.Spec : Prop :=
  ∀ n, P284811443142737574.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P4460691668763327834

`A010052(n+1)*A389887(n+1)`
-/

namespace A369308.P4460691668763327834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 1) * A389887 (n + 1)

end

end A369308.P4460691668763327834

namespace A369308

/-- `A010052(n+1)*A389887(n+1)` -/
def P4460691668763327834.Spec : Prop :=
  ∀ n, P4460691668763327834.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P2461473311064761346

`(2-A275437(n))*A332712(n+1)`
-/

namespace A369308.P2461473311064761346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A275437 n) * A332712 (n + 1)

end

end A369308.P2461473311064761346

namespace A369308

/-- `(2-A275437(n))*A332712(n+1)` -/
def P2461473311064761346.Spec : Prop :=
  ∀ n, P2461473311064761346.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P5791791926341419629

`A397549(n+1)%A161841(n+1)`
-/

namespace A369308.P5791791926341419629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A397549 (n + 1)) (A161841 (n + 1))

end

end A369308.P5791791926341419629

namespace A369308

/-- `A397549(n+1)%A161841(n+1)` -/
def P5791791926341419629.Spec : Prop :=
  ∀ n, P5791791926341419629.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P16158838191579856568

`min(A037213(n+1), A046951(n+1))`
-/

namespace A369308.P16158838191579856568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A037213 (n + 1)) (A046951 (n + 1))

end

end A369308.P16158838191579856568

namespace A369308

/-- `min(A037213(n+1), A046951(n+1))` -/
def P16158838191579856568.Spec : Prop :=
  ∀ n, P16158838191579856568.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P8088468031001825081

`∑{d}[n+1, A008836(#)*A046951((n+1)/#)]`
-/

namespace A369308.P8088468031001825081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A046951 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369308.P8088468031001825081

namespace A369308

/-- `∑{d}[n+1, A008836(#)*A046951((n+1)/#)]` -/
def P8088468031001825081.Spec : Prop :=
  ∀ n, P8088468031001825081.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P14864417417670434202

`∑{d}[n+1, A124315(#)*A158522((n+1)/#)]`
-/

namespace A369308.P14864417417670434202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A124315 d * A158522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369308.P14864417417670434202

namespace A369308

/-- `∑{d}[n+1, A124315(#)*A158522((n+1)/#)]` -/
def P14864417417670434202.Spec : Prop :=
  ∀ n, P14864417417670434202.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P5842850851183087573

`∑{d}[n+1, A000005(#)*A329484((n+1)/#)]`
-/

namespace A369308.P5842850851183087573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A329484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369308.P5842850851183087573

namespace A369308

/-- `∑{d}[n+1, A000005(#)*A329484((n+1)/#)]` -/
def P5842850851183087573.Spec : Prop :=
  ∀ n, P5842850851183087573.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P8687283636613223056

`∑{d}[n+1, A056624(#)*A307420((n+1)/#)]`
-/

namespace A369308.P8687283636613223056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056624 d * A307420 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369308.P8687283636613223056

namespace A369308

/-- `∑{d}[n+1, A056624(#)*A307420((n+1)/#)]` -/
def P8687283636613223056.Spec : Prop :=
  ∀ n, P8687283636613223056.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P14000568757890289735

`∑{d}[n+1, A061704(#)*A303915((n+1)/#)]`
-/

namespace A369308.P14000568757890289735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061704 d * A303915 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369308.P14000568757890289735

namespace A369308

/-- `∑{d}[n+1, A061704(#)*A303915((n+1)/#)]` -/
def P14000568757890289735.Spec : Prop :=
  ∀ n, P14000568757890289735.a n = A369308 (n + 1)

end A369308

/-! ## A369308.P6240855872939600365

`char[n*(n+2)]*∑{#}[n, floor((n+1)/(#+1)²)-floor(n/(#+1)²)]`
-/

namespace A369308.P6240855872939600365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * (∑ k ∈ Finset.range (f2 n + 1), (⌊(n + 1 : ℚ) / ((k + 1) ^ 2 : ℚ)⌋ - ⌊(n : ℚ) / ((k + 1) ^ 2 : ℚ)⌋))

end

end A369308.P6240855872939600365

namespace A369308

/-- `char[n*(n+2)]*∑{#}[n, floor((n+1)/(#+1)²)-floor(n/(#+1)²)]` -/
def P6240855872939600365.Spec : Prop :=
  ∀ n, P6240855872939600365.a n = A369308 (n + 1)

end A369308

/-!
# A369309: The number of powerful divisors d of n such that n/d is also powerful.

The programs for A369309, the canonical program `A369309.P724435184133037791` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369309 has offset 1).

The definition of A369309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369309.P13636289696431228636

`∏{e}[n+1, #-1]*A365498(n+1)`
-/

namespace A369309.P13636289696431228636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1)) * A365498 (n + 1)

end

end A369309.P13636289696431228636

namespace A369309

/-- `∏{e}[n+1, #-1]*A365498(n+1)` -/
def P13636289696431228636.Spec : Prop :=
  ∀ n, P13636289696431228636.a n = A369309 (n + 1)

end A369309

/-! ## A369309.P724435184133037791

`A190867(n+1)*A197881(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A369309

/-- `A190867(n+1)*A197881(n+1)` -/
def P724435184133037791.Spec : Prop :=
  ∀ n, P724435184133037791.a n = A369309 (n + 1)

theorem P724435184133037791.correct : P724435184133037791.Spec := by
  intro n
  simp only [A369309, Nat.add_sub_cancel]

end A369309

/-! ## A369309.P5371230140659848147

`A112526(n+1)*A369310(n+1)`
-/

namespace A369309.P5371230140659848147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112526 (n + 1) * A369310 (n + 1)

end

end A369309.P5371230140659848147

namespace A369309

/-- `A112526(n+1)*A369310(n+1)` -/
def P5371230140659848147.Spec : Prop :=
  ∀ n, P5371230140659848147.a n = A369309 (n + 1)

end A369309

/-! ## A369309.P16143620534072046843

`A197881(n+1)*A361430(n+1)`
-/

namespace A369309.P16143620534072046843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197881 (n + 1) * A361430 (n + 1)

end

end A369309.P16143620534072046843

namespace A369309

/-- `A197881(n+1)*A361430(n+1)` -/
def P16143620534072046843.Spec : Prop :=
  ∀ n, P16143620534072046843.a n = A369309 (n + 1)

end A369309

/-! ## A369309.P8133987595006228442

`A361430(n+1)*A365498(n+1)`
-/

namespace A369309.P8133987595006228442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361430 (n + 1) * A365498 (n + 1)

end

end A369309.P8133987595006228442

namespace A369309

/-- `A361430(n+1)*A365498(n+1)` -/
def P8133987595006228442.Spec : Prop :=
  ∀ n, P8133987595006228442.a n = A369309 (n + 1)

end A369309

/-! ## A369309.P14990059632552389713

`lcm(A307423(n+1), A369310(n+1))`
-/

namespace A369309.P14990059632552389713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A307423 (n + 1)) (A369310 (n + 1))

end

end A369309.P14990059632552389713

namespace A369309

/-- `lcm(A307423(n+1), A369310(n+1))` -/
def P14990059632552389713.Spec : Prop :=
  ∀ n, (P14990059632552389713.a n : ℤ) = A369309 (n + 1)

end A369309

/-! ## A369309.P7853254653063206909

`A355683(n+1)²*A369310(n+1)`
-/

namespace A369309.P7853254653063206909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355683 (n + 1) ^ 2 * A369310 (n + 1)

end

end A369309.P7853254653063206909

namespace A369309

/-- `A355683(n+1)²*A369310(n+1)` -/
def P7853254653063206909.Spec : Prop :=
  ∀ n, P7853254653063206909.a n = A369309 (n + 1)

end A369309

/-! ## A369309.P4492783097581449911

`∑{d}[n+1, A112526(#)*A112526((n+1)/#)]`
-/

namespace A369309.P4492783097581449911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112526 d * A112526 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369309.P4492783097581449911

namespace A369309

/-- `∑{d}[n+1, A112526(#)*A112526((n+1)/#)]` -/
def P4492783097581449911.Spec : Prop :=
  ∀ n, P4492783097581449911.a n = A369309 (n + 1)

end A369309

/-! ## A369309.P14662687602343953295

`∑{d}[n+1, A005361(#)*A363551((n+1)/#)]`
-/

namespace A369309.P14662687602343953295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005361 d * A363551 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369309.P14662687602343953295

namespace A369309

/-- `∑{d}[n+1, A005361(#)*A363551((n+1)/#)]` -/
def P14662687602343953295.Spec : Prop :=
  ∀ n, P14662687602343953295.a n = A369309 (n + 1)

end A369309

/-!
# A369310: The number of divisors d of n such that gcd(d, n/d) is a powerful number.

The programs for A369310, the canonical program `A369310.P4588423880105354459` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369310 has offset 1).

The definition of A369310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369310.P8521883818292792981

`∏{e}[n+1, A233583(#)]`
-/

namespace A369310.P8521883818292792981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A233583 (Nat.factorization (f1 n) p)

end

end A369310.P8521883818292792981

namespace A369310

/-- `∏{e}[n+1, A233583(#)]` -/
def P8521883818292792981.Spec : Prop :=
  ∀ n, P8521883818292792981.a n = A369310 (n + 1)

end A369310

/-! ## A369310.P8327842135132437275

`A000005((n+1)/∏{p}[n+1, gcd(n+1, #^3)]*∏{p}[n+1, #])`
-/

namespace A369310.P8327842135132437275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 3) : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A369310.P8327842135132437275

namespace A369310

/-- `A000005((n+1)/∏{p}[n+1, gcd(n+1, #^3)]*∏{p}[n+1, #])` -/
def P8327842135132437275.Spec : Prop :=
  ∀ n, P8327842135132437275.a n = A369310 (n + 1)

end A369310

/-! ## A369310.P4588423880105354459

`A190867(n+1)*A365498(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A369310

/-- `A190867(n+1)*A365498(n+1)` -/
def P4588423880105354459.Spec : Prop :=
  ∀ n, P4588423880105354459.a n = A369310 (n + 1)

theorem P4588423880105354459.correct : P4588423880105354459.Spec := by
  intro n
  simp only [A369310, Nat.add_sub_cancel]

end A369310

/-! ## A369310.P3194064265738141220

`∑{d}[n+1, A008966(#)*A365333((n+1)/#)]`
-/

namespace A369310.P3194064265738141220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A365333 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369310.P3194064265738141220

namespace A369310

/-- `∑{d}[n+1, A008966(#)*A365333((n+1)/#)]` -/
def P3194064265738141220.Spec : Prop :=
  ∀ n, P3194064265738141220.a n = A369310 (n + 1)

end A369310

/-! ## A369310.P6369070942116012909

`A000005((n+1)/gcd(n+1, ∏{p}[n+1, #]^3)*A007947(n+1))`
-/

namespace A369310.P6369070942116012909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd (n + 1) ((∏ p ∈ Nat.primeFactors (f1 n), p) ^ 3) : ℚ) * (A007947 (n + 1) : ℚ))).toNat

end

end A369310.P6369070942116012909

namespace A369310

/-- `A000005((n+1)/gcd(n+1, ∏{p}[n+1, #]^3)*A007947(n+1))` -/
def P6369070942116012909.Spec : Prop :=
  ∀ n, P6369070942116012909.a n = A369310 (n + 1)

end A369310

/-! ## A369310.P17058102033911294277

`A369309(A197863(n+1))`
-/

namespace A369310.P17058102033911294277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369309 (A197863 (n + 1)).toNat

end

end A369310.P17058102033911294277

namespace A369310

/-- `A369309(A197863(n+1))` -/
def P17058102033911294277.Spec : Prop :=
  ∀ n, P17058102033911294277.a n = A369310 (n + 1)

end A369310

/-!
# A369311: Square array A(n, k), n >= 0, k > 0, read by upwards antidiagonals: P(A(n, k)) is the remainder of the polynomial long division of P(n) by P(k) (where P(m) denotes the polynomial over GF(2) whose coefficients are encoded in the binary expansion of the nonnegative integer m).

The programs for A369311, there is no canonical definition to state claims against.
-/

/-! ## A369311.P11381342208974467331

`A048158(n+1)/A161642(A284463(n))`
-/

namespace A369311.P11381342208974467331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048158 (n + 1) : ℚ) / (A161642 (A284463 n).toNat : ℚ)

end

end A369311.P11381342208974467331

/-! ## A369311.P10206830503424326302

`A048158(n+1)/A046951(A337183(n+2))`
-/

namespace A369311.P10206830503424326302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048158 (n + 1) : ℚ) / (A046951 (A337183 (n + 2)).toNat : ℚ)

end

end A369311.P10206830503424326302

/-! ## A369311.P510318807318446469

`A048158(n+1)/gcd(A048158(n+1), A304532(n+1))`
-/

namespace A369311.P510318807318446469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048158 (n + 1) : ℚ) / (Int.gcd (A048158 (n + 1)) (A304532 (n + 1)) : ℚ)

end

end A369311.P510318807318446469

/-! ## A369311.P10874781221135738216

`A000007(A329323(n+1))*A329314(3*n+1)`
-/

namespace A369311.P10874781221135738216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A329323 (n + 1)).toNat * A329314 (3 * n + 1)

end

end A369311.P10874781221135738216

/-! ## A369311.P7472516628072484047

`A048158(n+1)/A245511(A284921(n+3))`
-/

namespace A369311.P7472516628072484047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048158 (n + 1) : ℚ) / (A245511 (A284921 (n + 3)).toNat : ℚ)

end

end A369311.P7472516628072484047

/-!
# A369312: Square array A(n, k), n >= 0, k > 0, read by upwards antidiagonals: P(A(n, k)) is the quotient of the polynomial long division of P(n) by P(k) (where P(m) denotes the polynomial over GF(2) whose coefficients are encoded in the binary expansion of the nonnegative integer m).

The programs for A369312, there is no canonical definition to state claims against.
-/

/-! ## A369312.P14366213196222933092

`A025581(n)-A001221(A188644(n))`
-/

namespace A369312.P14366213196222933092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n - A001221 (A188644 n).toNat

end

end A369312.P14366213196222933092

/-! ## A369312.P10021364111735583264

`A010766(n+1)-A179775(A222313(n+1))`
-/

namespace A369312.P10021364111735583264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) - A179775 (A222313 (n + 1)).toNat

end

end A369312.P10021364111735583264

/-! ## A369312.P8771800808737124201

`A010766(n+1)-A257680(A299264(n+1))`
-/

namespace A369312.P8771800808737124201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) - A257680 (A299264 (n + 1)).toNat

end

end A369312.P8771800808737124201

/-! ## A369312.P4024793151297225959

`A180969(n)+A156659(A160160(2*(n+1)))`
-/

namespace A369312.P4024793151297225959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180969 n + A156659 (A160160 (2 * (n + 1))).toNat

end

end A369312.P4024793151297225959

/-! ## A369312.P2662249844673824150

`A124764(A388855(n+1))`
-/

namespace A369312.P2662249844673824150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (A388855 (n + 1)).toNat

end

end A369312.P2662249844673824150

/-!
# A369313: Number of interval-closed sets in the boolean lattice of dimension n.

The programs for A369313, there is no canonical definition to state claims against.
-/

/-! ## A369313.P2386322987046044276

`A275837((A131644(n+1)+n)^n+1)`
-/

namespace A369313.P2386322987046044276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275837 ((A131644 (n + 1) + (n : ℤ)) ^ n + 1).toNat

end

end A369313.P2386322987046044276

/-!
# A369314: Number of chiral pairs of polyominoes composed of n triangular cells of the hyperbolic regular tiling with Schläfli symbol {3,oo}.

The programs for A369314, there is no canonical definition to state claims against.
-/

/-! ## A369314.P6066655929648418030

`A000207(n+4)-A208355(n+3)`
-/

namespace A369314.P6066655929648418030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000207 (n + 4) - A208355 (n + 3)

end

end A369314.P6066655929648418030

/-! ## A369314.P7242917404236271017

`A001683(n+6)-A000207(n+4)`
-/

namespace A369314.P7242917404236271017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001683 (n + 6) - A000207 (n + 4)

end

end A369314.P7242917404236271017

/-! ## A369314.P6600591961224991050

`(A001683(n+6)-A208355(n+3))/2`
-/

namespace A369314.P6600591961224991050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001683 (n + 6) - A208355 (n + 3) : ℚ) / 2

end

end A369314.P6600591961224991050

/-!
# A369315: Number of chiral pairs of polyominoes composed of n square cells of the hyperbolic regular tiling with Schläfli symbol {4,oo}.

The programs for A369315, there is no canonical definition to state claims against.
-/

/-! ## A369315.P7677754189264359051

`A005034(n+4)-A005036(n+4)`
-/

namespace A369315.P7677754189264359051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005034 (n + 4) - A005036 (n + 4)

end

end A369315.P7677754189264359051

/-! ## A369315.P2629254102393278043

`A005036(n+4)-A047749(n+4)`
-/

namespace A369315.P2629254102393278043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005036 (n + 4) - A047749 (n + 4)

end

end A369315.P2629254102393278043

/-! ## A369315.P14980163352629948362

`(A005034(n+4)-A047749(n+4))/2`
-/

namespace A369315.P14980163352629948362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005034 (n + 4) - A047749 (n + 4) : ℚ) / 2

end

end A369315.P14980163352629948362

/-!
# A369317: a(n) = A091255(n, n + 1).

The programs for A369317, there is no canonical definition to state claims against.
-/

/-! ## A369317.P4174733900728835478

`A091255(C(n+1+n+2-1, 2)+n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369317.P4174733900728835478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091255 (Nat.choose ((n + 1 + (n + 2) : ℤ) - 1).toNat 2 + (n + 1))

end

end A369317.P4174733900728835478

/-! ## A369317.P17759759021373945265

`A091255(C(n+1+n+2-1, 2)+n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369317.P17759759021373945265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091255 (Nat.choose ((n + 1 + (n + 2) : ℤ) - 1).toNat 2 + (n + 2))

end

end A369317.P17759759021373945265

/-! ## A369317.P3202372130281246242

`A327856(∑[2+n])`
-/

namespace A369317.P3202372130281246242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327856 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A369317.P3202372130281246242

/-! ## A369317.P3061913861706557958

`A091255(A026393(2+n))`
-/

namespace A369317.P3061913861706557958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091255 (A026393 (2 + n)).toNat

end

end A369317.P3061913861706557958

/-! ## A369317.P18363627437853774445

`A091255(A008805(n)+A002378(n))`
-/

namespace A369317.P18363627437853774445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091255 (A008805 n + A002378 n).toNat

end

end A369317.P18363627437853774445

/-! ## A369317.P12744074807698012614

`A280505(A327856(A000217(n+1)+n+1))`
-/

namespace A369317.P12744074807698012614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280505 (A327856 (A000217 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A369317.P12744074807698012614

/-! ## A369317.P18303719109224256416

`gcd(A120112(2*n+3), A327856(A000217(n+1)+n+1))`
-/

namespace A369317.P18303719109224256416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A120112 (2 * n + 3)) (A327856 (A000217 (n + 1) + (n + 1 : ℤ)).toNat)

end

end A369317.P18303719109224256416

/-! ## A369317.P12972748852974687909

`A091255(2*(n+1)²)`
-/

namespace A369317.P12972748852974687909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091255 (2 * (n + 1) ^ 2)

end

end A369317.P12972748852974687909

/-! ## A369317.P6535289151755696932

`ceil(ratio[A091255(A058331(n))])`
-/

namespace A369317.P6535289151755696932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091255 (A058331 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A369317.P6535289151755696932

/-! ## A369317.P17009366554162975463

`and(-1, A091255(A058331(n+1)))`
-/

namespace A369317.P17009366554162975463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A091255 (A058331 (n + 1)).toNat)

end

end A369317.P17009366554162975463

/-!
# A369318: Numbers k such that A091255(k, k + 1) <> 1.

The programs for A369318, there is no canonical definition to state claims against.
-/

/-! ## A369318.P8096207244872696209

`lt[1, A369317(n+1)]+1`
-/

namespace A369318.P8096207244872696209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369317 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A369318.P8096207244872696209

/-! ## A369318.P245270177889225063

`lt[1, A369317(A028310(n))]`
-/

namespace A369318.P245270177889225063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369317 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A369318.P245270177889225063

/-! ## A369318.P2970825948842878043

`A020725(lt[1, A369317(n+1)])`
-/

namespace A369318.P2970825948842878043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A369318.P2970825948842878043

/-! ## A369318.P9168937464805590961

`or(A001221(A128336(n+1)), A110087(2*n+1))`
-/

namespace A369318.P9168937464805590961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A128336 (n + 1)).toNat) (A110087 (2 * n + 1))

end

end A369318.P9168937464805590961

/-! ## A369318.P13837469310937362796

`eq[A091247(n), A200154(A323503(n))]`
-/

namespace A369318.P13837469310937362796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (A323503 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369318.P13837469310937362796

/-!
# A369320: Lexicographically earliest sequence such that each set of numbers enclosed by a pair of consecutive, equal terms, excluding the endpoints, is distinct.

The programs for A369320, there is no canonical definition to state claims against.
-/

/-! ## A369320.P18076153670118889056

`A329313(A316476(n+1)%A378082(3*n+5))`
-/

namespace A369320.P18076153670118889056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (Int.tmod (A316476 (n + 1)) (A378082 (3 * n + 5))).toNat

end

end A369320.P18076153670118889056

/-! ## A369320.P2612857401048224629

`A124769(2*A342339(2*(n+1)))`
-/

namespace A369320.P2612857401048224629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (2 * A342339 (2 * (n + 1))).toNat

end

end A369320.P2612857401048224629

/-! ## A369320.P9570115628186290042

`A107573(n+1)-A000035(A318391(n+4))`
-/

namespace A369320.P9570115628186290042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107573 (n + 1) - A000035 (A318391 (n + 4)).toNat

end

end A369320.P9570115628186290042

/-! ## A369320.P11072544783764278691

`A124768(A325394(n+1)%A394816(2*n+5))`
-/

namespace A369320.P11072544783764278691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (Int.tmod (A325394 (n + 1)) (A394816 (2 * n + 5))).toNat

end

end A369320.P11072544783764278691

/-! ## A369320.P9286156238254598838

`A001221(∪[A041705(2*(n+1)), A223764(3*n+1)])`
-/

namespace A369320.P9286156238254598838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041705 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223764 (3 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A369320.P9286156238254598838

/-!
# A369321: T(n,k) is the number of length-n weak ascent sequences (prefixed with a zero) with k weak ascents, triangle read by rows.

The programs for A369321, there is no canonical definition to state claims against.
-/

/-! ## A369321.P6164656643985409151

`A122890(n)-A185236(A122890(n+1))`
-/

namespace A369321.P6164656643985409151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122890 n - A185236 (A122890 (n + 1)).toNat

end

end A369321.P6164656643985409151

/-! ## A369321.P15835083360531447362

`A122890(n)-A360109(A290337(n+1))`
-/

namespace A369321.P15835083360531447362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122890 n - A360109 (A290337 (n + 1)).toNat

end

end A369321.P15835083360531447362

/-! ## A369321.P15850518348088639566

`A122890(n)-A346619(A128457(n+1))`
-/

namespace A369321.P15850518348088639566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122890 n - A346619 (A128457 (n + 1)).toNat

end

end A369321.P15850518348088639566

/-! ## A369321.P13522628059399813079

`A122890(n)-A374017(A225171(n+1))`
-/

namespace A369321.P13522628059399813079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122890 n - A374017 (A225171 (n + 1)).toNat

end

end A369321.P13522628059399813079

/-!
# A369322: a(n) is the number of weak ascent sequences (of any length) with n weak ascents.

The programs for A369322, there is no canonical definition to state claims against.
-/

/-! ## A369322.P15806241024807970810

`A005230(1+∑[n])`
-/

namespace A369322.P15806241024807970810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005230 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A369322.P15806241024807970810

/-! ## A369322.P17130812508542189096

`A066777(A179865(n+1))`
-/

namespace A369322.P17130812508542189096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066777 (A179865 (n + 1)).toNat

end

end A369322.P17130812508542189096

/-! ## A369322.P8085297628200137707

`A010052(3*n+2)+A005230(A000124(n))`
-/

namespace A369322.P8085297628200137707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (3 * n + 2) + A005230 (A000124 n).toNat

end

end A369322.P8085297628200137707

/-! ## A369322.P17131557829403161218

`A000629(A075091(2*n+3))*A005230(A000124(n))`
-/

namespace A369322.P17131557829403161218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000629 (A075091 (2 * n + 3)).toNat * A005230 (A000124 n).toNat

end

end A369322.P17131557829403161218

/-! ## A369322.P3653495645868381485

`A096858(A000124(∑[n]))`
-/

namespace A369322.P3653495645868381485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096858 (A000124 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A369322.P3653495645868381485

/-!
# A369323: Lexicographically earliest sequence such that each set of numbers enclosed by a pair of consecutive, equal terms, including the endpoints, is distinct.

The programs for A369323, there is no canonical definition to state claims against.
-/

/-! ## A369323.P12273111958543766151

`A336312(A015128(n)+A006649(n))`
-/

namespace A369323.P12273111958543766151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336312 (A015128 n + A006649 n).toNat

end

end A369323.P12273111958543766151

/-! ## A369323.P11469945734862556517

`A124767(or(A124767(n), A279548(n)))`
-/

namespace A369323.P11469945734862556517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (Int.lor (A124767 n) (A279548 n)).toNat

end

end A369323.P11469945734862556517

/-! ## A369323.P5876019282530893625

`A333632(A001214(n+1)%A270613(n+3))`
-/

namespace A369323.P5876019282530893625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333632 (Int.tmod (A001214 (n + 1)) (A270613 (n + 3))).toNat

end

end A369323.P5876019282530893625

/-! ## A369323.P2485478002562375385

`A115574(A343108(3*(n+1))+A115607(n+1))`
-/

namespace A369323.P2485478002562375385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115574 (A343108 (3 * (n + 1)) + A115607 (n + 1)).toNat

end

end A369323.P2485478002562375385

/-! ## A369323.P3257079530372703902

`A082691(A088314(n)*A100135(n))`
-/

namespace A369323.P3257079530372703902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082691 (A088314 n * A100135 n).toNat

end

end A369323.P3257079530372703902

/-!
# A369324: Array read by ascending antidiagonals: A(n,k) is the number of words of length n on an alphabet [k], avoiding 120 and 210, and sortable by a stack of depth 2, where k >= 0.

The programs for A369324, there is no canonical definition to state claims against.
-/

/-! ## A369324.P1719379139430064416

`(col(n)^(row(n)-col(n)))%A029542(n+1)`
-/

namespace A369324.P1719379139430064416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((SequenceMachineLib.triCol n : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ))) (A029542 (n + 1))

end

end A369324.P1719379139430064416

/-! ## A369324.P16757339988959431988

`A004248(n)%A099974(n)`
-/

namespace A369324.P16757339988959431988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004248 n) (A099974 n)

end

end A369324.P16757339988959431988

/-! ## A369324.P1890175792388622747

`min(A369325(n), A369326(n))`
-/

namespace A369324.P1890175792388622747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A369325 n) (A369326 n)

end

end A369324.P1890175792388622747

/-! ## A369324.P10881833762768129035

`A076185(n+1)%2*A004248(n)`
-/

namespace A369324.P10881833762768129035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076185 (n + 1)) 2 * A004248 n

end

end A369324.P10881833762768129035

/-! ## A369324.P14375118594828892212

`A004248(C(A347779(n), (n+1)²)+n)`
-/

namespace A369324.P14375118594828892212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (Nat.choose (A347779 n).toNat ((n + 1) ^ 2) + n)

end

end A369324.P14375118594828892212

/-!
# A369325: a(n) is the number of words of length n over the alphabet [n], avoiding 120 and 210, and sortable by a stack of depth 2.

The programs for A369325, the canonical program `A369325.P17967908740033551209` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369325 has offset 0).

The definition of A369325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369325.P17967908740033551209

`A000035(n)+2^n*∑{#}[floor((n-2)/2), C(2*(n-#)-3, n-1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A369325

/-- `A000035(n)+2^n*∑{#}[floor((n-2)/2), C(2*(n-#)-3, n-1)]` -/
def P17967908740033551209.Spec : Prop :=
  ∀ n, P17967908740033551209.a n = A369325 n

theorem P17967908740033551209.correct : P17967908740033551209.Spec := by
  intro n
  simp only [A369325]

end A369325

/-! ## A369325.P16253870010442956797

`A369324(∑[4*n])`
-/

namespace A369325.P16253870010442956797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369324 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A369325.P16253870010442956797

namespace A369325

/-- `A369324(∑[4*n])` -/
def P16253870010442956797.Spec : Prop :=
  ∀ n, P16253870010442956797.a n = A369325 n

end A369325

/-!
# A369326: Array read by ascending antidiagonals: A(n,k) is the number of words of length n over the alphabet [k] and sortable by a (2,1)-pop stack of depth 2.

The programs for A369326, there is no canonical definition to state claims against.
-/

/-! ## A369326.P4927026023851403123

`and(A004248(n), A342382(A004248(n)))`
-/

namespace A369326.P4927026023851403123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004248 n) (A342382 (A004248 n).toNat)

end

end A369326.P4927026023851403123

/-!
# A369327: a(n) is the number of words of length n over the alphabet [n] and sortable by a (2,1)-pop stack of depth 2.

The programs for A369327, there is no canonical definition to state claims against.
-/

/-! ## A369327.P10970198331821397181

`A369326(C(n+n+1, 2)+n)`
-/

namespace A369327.P10970198331821397181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369326 (Nat.choose (n + n + 1) 2 + n)

end

end A369327.P10970198331821397181

/-! ## A369327.P16090030220092914631

`A369326(∑[4*n])`
-/

namespace A369327.P16090030220092914631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369326 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A369327.P16090030220092914631

/-!
# A369328: Antidiagonal sums of A369326.

The programs for A369328, the canonical program `A369328.P12120128083964010685` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369328 has offset 0).

The definition of A369328 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369328.P12120128083964010685

`5*a(n-1)-8*a(n-2)+5*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A369328

/-- `5*a(n-1)-8*a(n-2)+5*a(n-3)` -/
def P12120128083964010685.Spec : Prop :=
  ∀ n, P12120128083964010685.a n = A369328 n

theorem P12120128083964010685.correct : P12120128083964010685.Spec := by
  intro n
  simp only [A369328]

end A369328

/-! ## A369328.P11524080545295853185

`ogf((1-3x+2x^2)/(1-5x+8x^2-5x^3))`
-/

namespace A369328.P11524080545295853185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 2] [1, -5, 8, -5] n

end

end A369328.P11524080545295853185

namespace A369328

/-- `ogf((1-3x+2x^2)/(1-5x+8x^2-5x^3))` -/
def P11524080545295853185.Spec : Prop :=
  ∀ n, P11524080545295853185.a n = A369328 n

end A369328

/-! ## A369328.P6527141875056548433

`A372883(A025700(n))`
-/

namespace A369328.P6527141875056548433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372883 (A025700 n).toNat

end

end A369328.P6527141875056548433

namespace A369328

/-- `A372883(A025700(n))` -/
def P6527141875056548433.Spec : Prop :=
  ∀ n, P6527141875056548433.a n = A369328 n

end A369328

/-! ## A369328.P6151710654677198568

`A372883(A033638(n+1))`
-/

namespace A369328.P6151710654677198568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372883 (A033638 (n + 1)).toNat

end

end A369328.P6151710654677198568

namespace A369328

/-- `A372883(A033638(n+1))` -/
def P6151710654677198568.Spec : Prop :=
  ∀ n, P6151710654677198568.a n = A369328 n

end A369328

/-! ## A369328.P5965808760086016899

`A372883(∑[∑[A266070(n)]])`
-/

namespace A369328.P5965808760086016899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266070 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372883 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A369328.P5965808760086016899

namespace A369328

/-- `A372883(∑[∑[A266070(n)]])` -/
def P5965808760086016899.Spec : Prop :=
  ∀ n, P5965808760086016899.a n = A369328 n

end A369328

/-!
# A369329: Numbers whose neighbors have a prime number as their greatest odd divisor.

The programs for A369329, the canonical program `A369329.P4857448169183928118` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369329 has offset 1).

The definition of A369329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369329.P4857448169183928118

`∩[A038550(n+1)+1, A275418(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A369329

/-- `∩[A038550(n+1)+1, A275418(n+1)]` -/
def P4857448169183928118.Spec : Prop :=
  ∀ n, (P4857448169183928118.a n : ℤ) = A369329 (n + 1)

theorem P4857448169183928118.correct : P4857448169183928118.Spec := by
  intro n
  simp only [A369329, Nat.add_sub_cancel]

end A369329

/-! ## A369329.P15201518379966366352

`A275418(A325789(3*n+5)+A072774(n+1))`
-/

namespace A369329.P15201518379966366352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275418 (A325789 (3 * n + 5) + A072774 (n + 1)).toNat

end

end A369329.P15201518379966366352

namespace A369329

/-- `A275418(A325789(3*n+5)+A072774(n+1))` -/
def P15201518379966366352.Spec : Prop :=
  ∀ n, P15201518379966366352.a n = A369329 (n + 1)

end A369329

/-!
# A369330: Number of permutations of (1, 2, ..., n) in which any two adjacent elements differ by a power of 2.

The programs for A369330, there is no canonical definition to state claims against.
-/

/-! ## A369330.P9943465870615524573

`∑{d}[n!, A250479(#)]`
-/

namespace A369330.P9943465870615524573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A250479 d

end

end A369330.P9943465870615524573

/-! ## A369330.P8225158192636538163

`A123050(A117218(n+1))`
-/

namespace A369330.P8225158192636538163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123050 (A117218 (n + 1)).toNat

end

end A369330.P8225158192636538163

/-! ## A369330.P2253855393424915669

`A118975(A130709(n+1))`
-/

namespace A369330.P2253855393424915669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118975 (A130709 (n + 1)).toNat

end

end A369330.P2253855393424915669

/-!
# A369331: Positive numbers whose decimal expansions are covered by that of prime numbers (without leading zeros).

The programs for A369331, there is no canonical definition to state claims against.
-/

/-! ## A369331.P4996490882538058585

`∪[A034304(n+1), A152242(n+1)]`
-/

namespace A369331.P4996490882538058585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369331.P4996490882538058585

/-! ## A369331.P17690461366493742244

`∪[A152242(1+n), A211683(n+1)]`
-/

namespace A369331.P17690461366493742244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152242 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369331.P17690461366493742244

/-! ## A369331.P13144718733029498908

`∪[A152242(n+1), A397220(n+1)]`
-/

namespace A369331.P13144718733029498908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369331.P13144718733029498908

/-! ## A369331.P5485466060730508435

`∪[A034895(A130446(n+1)), A152242(n+1)]`
-/

namespace A369331.P5485466060730508435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034895 (A130446 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369331.P5485466060730508435

/-! ## A369331.P12411455099707597194

`∪[A034895(A130446(n+1)), A166504(n+1)]`
-/

namespace A369331.P12411455099707597194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034895 (A130446 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369331.P12411455099707597194

/-! ## A369331.P16122107017538003236

`∪[A296897(A034895(n+1)), A152242(n+1)]`
-/

namespace A369331.P16122107017538003236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296897 (A034895 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369331.P16122107017538003236

/-! ## A369331.P3321461274568398928

`∪[A296897(A034895(n+1)), A166504(n+1)]`
-/

namespace A369331.P3321461274568398928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296897 (A034895 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369331.P3321461274568398928

/-!
# A369333: Positive integers m such that there exist distinct pairs (a,b) and (c,d) with a <= b, c <= d, and m = a*b*(c+d) = (a+b)*c*d.

The programs for A369333, there is no canonical definition to state claims against.
-/

/-! ## A369333.P1210683202699171714

`A369334(A100793(n))`
-/

namespace A369333.P1210683202699171714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369334 (A100793 n).toNat

end

end A369333.P1210683202699171714

/-! ## A369333.P17505860396281416410

`A369334(A001096(n)+1)`
-/

namespace A369333.P17505860396281416410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369334 (A001096 n + 1).toNat

end

end A369333.P17505860396281416410

/-!
# A369334: Positive integers m such that there exist distinct pairs (a,b) and (c,d) with a <= b, c <= d, gcd(a,b,c,d) = 1, and m = a*b*(c+d) = (a+b)*c*d.

The programs for A369334, there is no canonical definition to state claims against.
-/

/-! ## A369334.P12104394706898262048

`A369333(A038101(n+1))`
-/

namespace A369334.P12104394706898262048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369333 (A038101 (n + 1)).toNat

end

end A369334.P12104394706898262048

/-! ## A369334.P6398142408750424868

`A369333(A073956(n+1))`
-/

namespace A369334.P6398142408750424868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369333 (A073956 (n + 1)).toNat

end

end A369334.P6398142408750424868

/-! ## A369334.P13513143194750002689

`A369333(A029964(n+2))`
-/

namespace A369334.P13513143194750002689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369333 (A029964 (n + 2)).toNat

end

end A369334.P13513143194750002689

/-!
# A369336: Number of n X n Fishburn matrices with entries in the set {0,1,...,n}.

The programs for A369336, there is no canonical definition to state claims against.
-/

/-! ## A369336.P15124959451591867401

`A369415(∑[4*n])`
-/

namespace A369336.P15124959451591867401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369415 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A369336.P15124959451591867401

/-!
# A369337: Total number of numbers less than each divisor d of n that do not divide d.

The programs for A369337, the canonical program `A369337.P7600900275624018704` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369337 has offset 1).

The definition of A369337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369337.P7600900275624018704

`∑{d}[n+1, A006218(#-1)-A006218(#)+#]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A369337

/-- `∑{d}[n+1, A006218(#-1)-A006218(#)+#]` -/
def P7600900275624018704.Spec : Prop :=
  ∀ n, P7600900275624018704.a n = A369337 (n + 1)

theorem P7600900275624018704.correct : P7600900275624018704.Spec := by
  intro n
  simp only [A369337, Nat.add_sub_cancel]

end A369337

/-! ## A369337.P12525110725945759302

`∑{d}[n+1, #]-∏{e}[1+n, C(#+2, 2)]`
-/

namespace A369337.P12525110725945759302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (Nat.factorization (f2 n) p + 2) 2 : ℕ) : ℤ)

end

end A369337.P12525110725945759302

namespace A369337

/-- `∑{d}[n+1, #]-∏{e}[1+n, C(#+2, 2)]` -/
def P12525110725945759302.Spec : Prop :=
  ∀ n, P12525110725945759302.a n = A369337 (n + 1)

end A369337

/-! ## A369337.P9546022658896940045

`∑{d}[1+n, A049820(#)]`
-/

namespace A369337.P9546022658896940045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A049820 d

end

end A369337.P9546022658896940045

namespace A369337

/-- `∑{d}[1+n, A049820(#)]` -/
def P9546022658896940045.Spec : Prop :=
  ∀ n, P9546022658896940045.a n = A369337 (n + 1)

end A369337

/-! ## A369337.P17341136213139981693

`∑{d}[n+1, #-A000005(#)]`
-/

namespace A369337.P17341136213139981693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A000005 d)

end

end A369337.P17341136213139981693

namespace A369337

/-- `∑{d}[n+1, #-A000005(#)]` -/
def P17341136213139981693.Spec : Prop :=
  ∀ n, P17341136213139981693.a n = A369337 (n + 1)

end A369337

/-! ## A369337.P4813483293802398227

`∑{d}[n+1, #]-A007425(n+1)`
-/

namespace A369337.P4813483293802398227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A007425 (n + 1)

end

end A369337.P4813483293802398227

namespace A369337

/-- `∑{d}[n+1, #]-A007425(n+1)` -/
def P4813483293802398227.Spec : Prop :=
  ∀ n, P4813483293802398227.a n = A369337 (n + 1)

end A369337

/-! ## A369337.P16528009980222602957

`A000203(n+1)-∏{e}[n+1, C(#+2, 2)]`
-/

namespace A369337.P16528009980222602957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 2) 2 : ℕ) : ℤ)

end

end A369337.P16528009980222602957

namespace A369337

/-- `A000203(n+1)-∏{e}[n+1, C(#+2, 2)]` -/
def P16528009980222602957.Spec : Prop :=
  ∀ n, P16528009980222602957.a n = A369337 (n + 1)

end A369337

/-! ## A369337.P11149053731658180713

`A000203(n+1)-A007425(n+1)`
-/

namespace A369337.P11149053731658180713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A007425 (n + 1)

end

end A369337.P11149053731658180713

namespace A369337

/-- `A000203(n+1)-A007425(n+1)` -/
def P11149053731658180713.Spec : Prop :=
  ∀ n, P11149053731658180713.a n = A369337 (n + 1)

end A369337

/-! ## A369337.P5751148292206531507

`A069913(n+1)-A211779(n+1)`
-/

namespace A369337.P5751148292206531507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069913 (n + 1) - A211779 (n + 1)

end

end A369337.P5751148292206531507

namespace A369337

/-- `A069913(n+1)-A211779(n+1)` -/
def P5751148292206531507.Spec : Prop :=
  ∀ n, P5751148292206531507.a n = A369337 (n + 1)

end A369337

/-! ## A369337.P143210186772449873

`A065608(n+1)-A238952(n+1)`
-/

namespace A369337.P143210186772449873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065608 (n + 1) - A238952 (n + 1)

end

end A369337.P143210186772449873

namespace A369337

/-- `A065608(n+1)-A238952(n+1)` -/
def P143210186772449873.Spec : Prop :=
  ∀ n, P143210186772449873.a n = A369337 (n + 1)

end A369337

/-! ## A369337.P12249403579842941780

`A152771(n+1)-A343879(n+1)`
-/

namespace A369337.P12249403579842941780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152771 (n + 1) - A343879 (n + 1)

end

end A369337.P12249403579842941780

namespace A369337

/-- `A152771(n+1)-A343879(n+1)` -/
def P12249403579842941780.Spec : Prop :=
  ∀ n, P12249403579842941780.a n = A369337 (n + 1)

end A369337

/-! ## A369337.P9138368879581934410

`∑{d}[n+1, A000005(#)*A109606((n+1)/#)]`
-/

namespace A369337.P9138368879581934410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A109606 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369337.P9138368879581934410

namespace A369337

/-- `∑{d}[n+1, A000005(#)*A109606((n+1)/#)]` -/
def P9138368879581934410.Spec : Prop :=
  ∀ n, P9138368879581934410.a n = A369337 (n + 1)

end A369337

/-! ## A369337.P4595965915674007934

`∑{d}[n+1, A130054(#)*A396514((n+1)/#)]`
-/

namespace A369337.P4595965915674007934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A396514 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369337.P4595965915674007934

namespace A369337

/-- `∑{d}[n+1, A130054(#)*A396514((n+1)/#)]` -/
def P4595965915674007934.Spec : Prop :=
  ∀ n, P4595965915674007934.a n = A369337 (n + 1)

end A369337

/-! ## A369337.P3151790223425553463

`∑{d}[n+1, #]-A334997(∑[n+2]+4)`
-/

namespace A369337.P3151790223425553463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A334997 (∑ j ∈ Finset.range (n + 1), f2 j + 4)

end

end A369337.P3151790223425553463

namespace A369337

/-- `∑{d}[n+1, #]-A334997(∑[n+2]+4)` -/
def P3151790223425553463.Spec : Prop :=
  ∀ n, P3151790223425553463.a n = A369337 (n + 1)

end A369337

/-!
# A369338: Sum of all the numbers less than each divisor d of n that do not divide d.

The programs for A369338, there is no canonical definition to state claims against.
-/

/-! ## A369338.P9851463579771431910

`∑{d}[1+n, A024816(#)]`
-/

namespace A369338.P9851463579771431910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A024816 d

end

end A369338.P9851463579771431910

/-! ## A369338.P14651122708220624054

`∑{d}[n+1, A338434(#²)]`
-/

namespace A369338.P14651122708220624054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A338434 (d ^ 2)

end

end A369338.P14651122708220624054

/-! ## A369338.P8160493068129888907

`∑{d}[n+1, #*(#+1)/2]-A206028(n+1)`
-/

namespace A369338.P8160493068129888907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d * (d + 1) : ℚ) / 2 - (A206028 (n + 1) : ℚ)

end

end A369338.P8160493068129888907

/-! ## A369338.P10669385471697830144

`A007437(n+1)-A007429(n+1)`
-/

namespace A369338.P10669385471697830144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007437 (n + 1) - A007429 (n + 1)

end

end A369338.P10669385471697830144

/-! ## A369338.P16054170741154613818

`A007437(n+1)-A206028(n+1)`
-/

namespace A369338.P16054170741154613818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007437 (n + 1) - A206028 (n + 1)

end

end A369338.P16054170741154613818

/-! ## A369338.P1347347312549385693

`A069153(n+1)-A211779(n+1)`
-/

namespace A369338.P1347347312549385693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069153 (n + 1) - A211779 (n + 1)

end

end A369338.P1347347312549385693

/-! ## A369338.P383186534361121408

`A206029(n+1)-A119616(n+1)`
-/

namespace A369338.P383186534361121408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206029 (n + 1) - A119616 (n + 1)

end

end A369338.P383186534361121408

/-!
# A369339: Number of partitions of n into triangular numbers not greater than sqrt(n).

The programs for A369339, there is no canonical definition to state claims against.
-/

/-! ## A369339.P6520410904456291995

`A008480(A290859(floor(n/3)+1))`
-/

namespace A369339.P6520410904456291995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A290859 (⌊(n : ℚ) / 3⌋ + 1).toNat).toNat

end

end A369339.P6520410904456291995

/-! ## A369339.P835358372246355133

`∑[char[3*n]]^A352035(A167661(n))`
-/

namespace A369339.P835358372246355133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A352035 (A167661 n).toNat : ℤ)

end

end A369339.P835358372246355133

/-! ## A369339.P17476599822919821001

`A366145(A336122(n+1))`
-/

namespace A369339.P17476599822919821001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366145 (A336122 (n + 1)).toNat

end

end A369339.P17476599822919821001

/-! ## A369339.P13332069299942561938

`A008620(n%A364350(2*(n+1)))`
-/

namespace A369339.P13332069299942561938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (Int.tmod (n : ℤ) (A364350 (2 * (n + 1)))).toNat

end

end A369339.P13332069299942561938

/-!
# A369340: Number of partitions of n into squares not greater than sqrt(n).

The programs for A369340, there is no canonical definition to state claims against.
-/

/-! ## A369340.P14302584627105377146

`A000005(A255270(n)^floor(n/4))`
-/

namespace A369340.P14302584627105377146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A255270 n : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ))).toNat

end

end A369340.P14302584627105377146

/-! ## A369340.P8182418721124562341

`A000005(A178487(2*n)^A002265(n))`
-/

namespace A369340.P8182418721124562341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A178487 (2 * n) : ℚ) ^ (A002265 n : ℤ))).toNat

end

end A369340.P8182418721124562341

/-! ## A369340.P3395019476164833765

`A007306(A255270(n)^floor(n/4))`
-/

namespace A369340.P3395019476164833765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (SequenceMachineLib.roundAway ((A255270 n : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ))).toNat

end

end A369340.P3395019476164833765

/-!
# A369341: Number of compositions (ordered partitions) of n into triangular numbers not greater than sqrt(n).

The programs for A369341, there is no canonical definition to state claims against.
-/

/-! ## A369341.P12778391905091540247

`A000027(A000930(n*A186729(n)))`
-/

namespace A369341.P12778391905091540247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000930 ((n : ℤ) * A186729 n).toNat).toNat

end

end A369341.P12778391905091540247

/-! ## A369341.P12103792425958785683

`A000027(A000930(n)^A186729(n))`
-/

namespace A369341.P12103792425958785683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A000930 n : ℚ) ^ (A186729 n : ℤ))).toNat

end

end A369341.P12103792425958785683

/-! ## A369341.P2297593373425920489

`A000930(n%A305632(2*n+1))`
-/

namespace A369341.P2297593373425920489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (Int.tmod (n : ℤ) (A305632 (2 * n + 1))).toNat

end

end A369341.P2297593373425920489

/-! ## A369341.P5731652627898970902

`A000930(n^∑[A025465(n)])`
-/

namespace A369341.P5731652627898970902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (SequenceMachineLib.roundAway ((n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A369341.P5731652627898970902

/-!
# A369342: Number of compositions (ordered partitions) of n into squares not greater than sqrt(n).

The programs for A369342, there is no canonical definition to state claims against.
-/

/-! ## A369342.P12943079939237014537

`A003269(C(comp[A000290(3*n+4)], n))`
-/

namespace A369342.P12943079939237014537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) n)

end

end A369342.P12943079939237014537

/-!
# A369343: a(n) is the constant term in expansion of Product_{k=1..n} (x^(2*k-1) + 1 + 1/x^(2*k-1)).

The programs for A369343, there is no canonical definition to state claims against.
-/

/-! ## A369343.P11921196745231995846

`A177849(A048771(n))`
-/

namespace A369343.P11921196745231995846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A048771 n).toNat

end

end A369343.P11921196745231995846

/-! ## A369343.P14125782701469950285

`∑[A072530(A127194(2*(n+2)))]+1`
-/

namespace A369343.P14125782701469950285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072530 (A127194 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A369343.P14125782701469950285

/-! ## A369343.P10507836227075027539

`A325394(A324741(n))-A004275(n)`
-/

namespace A369343.P10507836227075027539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325394 (A324741 n).toNat - A004275 n

end

end A369343.P10507836227075027539

/-!
# A369344: a(n) is the constant term in expansion of Product_{k=1..n} (x^(k*(k+1)/2) + 1 + 1/x^(k*(k+1)/2)).

The programs for A369344, there is no canonical definition to state claims against.
-/

/-! ## A369344.P12659766682726792343

`A046074(A080190(n))`
-/

namespace A369344.P12659766682726792343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (A080190 n).toNat

end

end A369344.P12659766682726792343

/-! ## A369344.P17562546507279537225

`A046074(A291219(n))`
-/

namespace A369344.P17562546507279537225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (A291219 n).toNat

end

end A369344.P17562546507279537225

/-! ## A369344.P17018025463876314559

`A046074(A293948(n))`
-/

namespace A369344.P17018025463876314559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (A293948 n).toNat

end

end A369344.P17018025463876314559

/-! ## A369344.P1516754235616078475

`A368087(A068013(n))`
-/

namespace A369344.P1516754235616078475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368087 (A068013 n).toNat

end

end A369344.P1516754235616078475

/-! ## A369344.P10071888579496055719

`A183147(A369496(n))`
-/

namespace A369344.P10071888579496055719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183147 (A369496 n).toNat

end

end A369344.P10071888579496055719

/-!
# A369345: a(n) is the constant term in expansion of Product_{k=1..n} (x^(k^3) + 1 + 1/x^(k^3)).

The programs for A369345, there is no canonical definition to state claims against.
-/

/-! ## A369345.P455577877354631742

`A090792(A239117(n))`
-/

namespace A369345.P455577877354631742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090792 (A239117 n).toNat

end

end A369345.P455577877354631742

/-! ## A369345.P16581595697750524687

`A090792(A239118(n+1))`
-/

namespace A369345.P16581595697750524687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090792 (A239118 (n + 1)).toNat

end

end A369345.P16581595697750524687

/-! ## A369345.P6129938810442174376

`A239931(A146742(n+1)-Δ[A147087(n+1)])`
-/

namespace A369345.P6129938810442174376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239931 (A146742 (n + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A369345.P6129938810442174376

/-! ## A369345.P228482281867667821

`A239931(A146742(n+1)-Δ[A147425(n+1)])`
-/

namespace A369345.P228482281867667821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239931 (A146742 (n + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A369345.P228482281867667821

/-! ## A369345.P6925645838989108915

`A239931(A146742(n+1)-Δ[A147493(n+1)])`
-/

namespace A369345.P6925645838989108915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239931 (A146742 (n + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A369345.P6925645838989108915

/-!
# A369347: Numbers whose decimal expansion is quasiperiodic.

The programs for A369347, there is no canonical definition to state claims against.
-/

/-! ## A369347.P17128552421207349395

`A239019(n+1)+floor(col(n)/9)`
-/

namespace A369347.P17128552421207349395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239019 (n + 1) + ⌊(SequenceMachineLib.triCol n : ℚ) / 9⌋

end

end A369347.P17128552421207349395

/-! ## A369347.P12734163860745734892

`A239019(A044923(n+1))`
-/

namespace A369347.P12734163860745734892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239019 (A044923 (n + 1)).toNat

end

end A369347.P12734163860745734892

/-! ## A369347.P3970899070838724079

`A239019(A179797(n+1))`
-/

namespace A369347.P3970899070838724079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239019 (A179797 (n + 1)).toNat

end

end A369347.P3970899070838724079

/-! ## A369347.P4754969291638208314

`A239019(A296873(n+1))`
-/

namespace A369347.P4754969291638208314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239019 (A296873 (n + 1)).toNat

end

end A369347.P4754969291638208314

/-! ## A369347.P4945421983283311835

`A239019(A296891(n+1))`
-/

namespace A369347.P4945421983283311835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239019 (A296891 (n + 1)).toNat

end

end A369347.P4945421983283311835

/-!
# A369348: a(1) = 1; for n > 1, a(n) is the smallest positive number such that a(n) - a(n-1) = sopfr(a(n)) + sopfr(a(n-1)), where sopfr(k) is the sum of the primes dividing k, with repetition.

The programs for A369348, there is no canonical definition to state claims against.
-/

/-! ## A369348.P14193109807115631515

`A175585(A093380(n))`
-/

namespace A369348.P14193109807115631515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175585 (A093380 n).toNat

end

end A369348.P14193109807115631515

/-!
# A369351: The smallest number such that n or more numbers k exist such that a(n) - k = sopfr(a(n)) + sopfr(k), where sopfr(m) is the sum of the primes dividing m, with repetition.

The programs for A369351, there is no canonical definition to state claims against.
-/

/-! ## A369351.P14300253760857621289

`A370091(A029964(n+2))`
-/

namespace A369351.P14300253760857621289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370091 (A029964 (n + 2)).toNat

end

end A369351.P14300253760857621289

/-! ## A369351.P16419783899012061788

`A370091(A259384(n+1)+1)`
-/

namespace A369351.P16419783899012061788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370091 (A259384 (n + 1) + 1).toNat

end

end A369351.P16419783899012061788

/-! ## A369351.P7014303647303969699

`filter[A370091(n+1), A236861(#)]`
-/

namespace A369351.P7014303647303969699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A236861 (f1 j).toNat = 1) n)

end

end A369351.P7014303647303969699

/-!
# A369352: Numbers k such that there exists a number p where p - k = sopfr(p) + sopfr(k), where sopfr(m) is the sum of the primes dividing m, with repetition.

The programs for A369352, there is no canonical definition to state claims against.
-/

/-! ## A369352.P16793225946428496967

`lt[0, A369349(n+1)]+1`
-/

namespace A369352.P16793225946428496967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369349 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A369352.P16793225946428496967

/-!
# A369354: The number of terms beyond the first term for the series starting at k(1) = n and then iteratively finding the smallest k(i+1) such that k(i+1) - k(i) = sopfr(k(i+1) + k(i)), where i >= 1 and sopfr(m) is the sum of the primes dividing m, with repetition.

The programs for A369354, there is no canonical definition to state claims against.
-/

/-! ## A369354.P3395738762723332113

`A114220(gcd(n, A328163(3*n+4)))`
-/

namespace A369354.P3395738762723332113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114220 (Int.gcd (n : ℤ) (A328163 (3 * n + 4)))

end

end A369354.P3395738762723332113

/-! ## A369354.P11300294291865808576

`A271269(2*n+1)%A274459(A004766(n+1))`
-/

namespace A369354.P11300294291865808576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271269 (2 * n + 1)) (A274459 (A004766 (n + 1)).toNat)

end

end A369354.P11300294291865808576

/-! ## A369354.P10212313052693346931

`A380959(eq[4, A110620(n+2)])`
-/

namespace A369354.P10212313052693346931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110620 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380959 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A369354.P10212313052693346931

/-! ## A369354.P362710932676959470

`A112378(A112385(n+2)%A017221(n))`
-/

namespace A369354.P362710932676959470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112378 (Int.tmod (A112385 (n + 2)) (A017221 n)).toNat

end

end A369354.P362710932676959470

/-!
# A369359: a(n) is the total semiperimeter over all Motzkin polyominoes of length n.

The programs for A369359, the canonical program `A369359.P11914376555270565853` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369359 has offset 0).

The definition of A369359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369359.P11914376555270565853

`A225034(n)-A002426(n)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A369359

/-- `A225034(n)-A002426(n)` -/
def P11914376555270565853.Spec : Prop :=
  ∀ n, P11914376555270565853.a n = A369359 n

theorem P11914376555270565853.correct : P11914376555270565853.Spec := by
  intro n
  simp only [A369359]

end A369359

/-! ## A369359.P9015418117533342252

`A225034(n)-A005213(2*n)`
-/

namespace A369359.P9015418117533342252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225034 n - A005213 (2 * n)

end

end A369359.P9015418117533342252

namespace A369359

/-- `A225034(n)-A005213(2*n)` -/
def P9015418117533342252.Spec : Prop :=
  ∀ n, P9015418117533342252.a n = A369359 n

end A369359

/-! ## A369359.P608969474612613092

`A225034(n)-abs(∑[A085455(n)])`
-/

namespace A369359.P608969474612613092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225034 n - |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A369359.P608969474612613092

namespace A369359

/-- `A225034(n)-abs(∑[A085455(n)])` -/
def P608969474612613092.Spec : Prop :=
  ∀ n, P608969474612613092.a n = A369359 n

end A369359

/-! ## A369359.P11171564034952383996

`A002426(n+1)-A025566(n+1)`
-/

namespace A369359.P11171564034952383996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (n + 1) - A025566 (n + 1)

end

end A369359.P11171564034952383996

namespace A369359

/-- `A002426(n+1)-A025566(n+1)` -/
def P11171564034952383996.Spec : Prop :=
  ∀ n, P11171564034952383996.a n = A369359 n

end A369359

/-! ## A369359.P16760242126603847284

`A225034(n)-(2*A097861(n)+1)`
-/

namespace A369359.P16760242126603847284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225034 n - (2 * A097861 n + 1)

end

end A369359.P16760242126603847284

namespace A369359

/-- `A225034(n)-(2*A097861(n)+1)` -/
def P16760242126603847284.Spec : Prop :=
  ∀ n, P16760242126603847284.a n = A369359 n

end A369359

/-! ## A369359.P17364205045592898727

`A225034(n)-(2*A257520(n)-1)`
-/

namespace A369359.P17364205045592898727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225034 n - (2 * A257520 n - 1)

end

end A369359.P17364205045592898727

namespace A369359

/-- `A225034(n)-(2*A257520(n)-1)` -/
def P17364205045592898727.Spec : Prop :=
  ∀ n, P17364205045592898727.a n = A369359 n

end A369359

/-! ## A369359.P15198519544659842476

`A225034(n)-abs(Δ[n*A099323(n)])`
-/

namespace A369359.P15198519544659842476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A099323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225034 n - |f1 (n + 1) - f1 n|

end

end A369359.P15198519544659842476

namespace A369359

/-- `A225034(n)-abs(Δ[n*A099323(n)])` -/
def P15198519544659842476.Spec : Prop :=
  ∀ n, P15198519544659842476.a n = A369359 n

end A369359

/-! ## A369359.P16611720091220594332

`A225034(n)-or(1, record[A005213(n+1)])`
-/

namespace A369359.P16611720091220594332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225034 n - Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A369359.P16611720091220594332

namespace A369359

/-- `A225034(n)-or(1, record[A005213(n+1)])` -/
def P16611720091220594332.Spec : Prop :=
  ∀ n, P16611720091220594332.a n = A369359 n

end A369359

/-! ## A369359.P1363926126131433282

`A225034(n)-(A257520(n)+A097861(n))`
-/

namespace A369359.P1363926126131433282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225034 n - (A257520 n + A097861 n)

end

end A369359.P1363926126131433282

namespace A369359

/-- `A225034(n)-(A257520(n)+A097861(n))` -/
def P1363926126131433282.Spec : Prop :=
  ∀ n, P1363926126131433282.a n = A369359 n

end A369359

/-! ## A369359.P2788679170762314436

`A225034(n)-(A081669(n)-A155559(n))`
-/

namespace A369359.P2788679170762314436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225034 n - (A081669 n - A155559 n)

end

end A369359.P2788679170762314436

namespace A369359

/-- `A225034(n)-(A081669(n)-A155559(n))` -/
def P2788679170762314436.Spec : Prop :=
  ∀ n, P2788679170762314436.a n = A369359 n

end A369359

/-! ## A369359.P739358000120258898

`A225034(n)-(2*A027914(n)-3^n)`
-/

namespace A369359.P739358000120258898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225034 n - (2 * A027914 n - (3 ^ n : ℤ))

end

end A369359.P739358000120258898

namespace A369359

/-- `A225034(n)-(2*A027914(n)-3^n)` -/
def P739358000120258898.Spec : Prop :=
  ∀ n, P739358000120258898.a n = A369359 n

end A369359

/-!
# A369360: a(n) is the number of interior points over all Motzkin polyominoes of length n.

The programs for A369360, the canonical program `A369360.P16251254958251972162` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369360 has offset 3).

The definition of A369360 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369360.P16251254958251972162

`(3^(n+3)-3*A002426(n+3))/2-2*A002426(n+2)+2*A001006(n+2)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A369360

/-- `(3^(n+3)-3*A002426(n+3))/2-2*A002426(n+2)+2*A001006(n+2)` -/
def P16251254958251972162.Spec : Prop :=
  ∀ n, P16251254958251972162.a n = (A369360 (n + 3) : ℚ)

end A369360

/-! ## A369360.P258292621780359375

`A382990(n+2)+A382987(n+2)`
-/

namespace A369360.P258292621780359375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382990 (n + 2) + A382987 (n + 2)

end

end A369360.P258292621780359375

namespace A369360

/-- `A382990(n+2)+A382987(n+2)` -/
def P258292621780359375.Spec : Prop :=
  ∀ n, P258292621780359375.a n = A369360 (n + 3)

end A369360

/-!
# A369361: Numbers that are not products of primorials.

The programs for A369361, the canonical program `A369361.P17233019200793958702` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369361 has offset 1).

The definition of A369361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9917 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369361.P13218776101437464325

`comp[A036035(n)-1]+1`
-/

namespace A369361.P13218776101437464325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A369361.P13218776101437464325

namespace A369361

/-- `comp[A036035(n)-1]+1` -/
def P13218776101437464325.Spec : Prop :=
  ∀ n, (P13218776101437464325.a n : ℤ) = A369361 (n + 1)

end A369361

/-! ## A369361.P12624420827362896023

`comp[A059901(n)-1]+1`
-/

namespace A369361.P12624420827362896023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059901 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A369361.P12624420827362896023

namespace A369361

/-- `comp[A059901(n)-1]+1` -/
def P12624420827362896023.Spec : Prop :=
  ∀ n, (P12624420827362896023.a n : ℤ) = A369361 (n + 1)

end A369361

/-! ## A369361.P13504554309792739897

`comp[A063008(n)-1]+1`
-/

namespace A369361.P13504554309792739897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A369361.P13504554309792739897

namespace A369361

/-- `comp[A063008(n)-1]+1` -/
def P13504554309792739897.Spec : Prop :=
  ∀ n, (P13504554309792739897.a n : ℤ) = A369361 (n + 1)

end A369361

/-! ## A369361.P349782046117835508

`comp[A087443(n)-1]+1`
-/

namespace A369361.P349782046117835508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087443 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A369361.P349782046117835508

namespace A369361

/-- `comp[A087443(n)-1]+1` -/
def P349782046117835508.Spec : Prop :=
  ∀ n, (P349782046117835508.a n : ℤ) = A369361 (n + 1)

end A369361

/-! ## A369361.P469007852545257092

`comp[A278217(n)-1]+1`
-/

namespace A369361.P469007852545257092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278217 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A369361.P469007852545257092

namespace A369361

/-- `comp[A278217(n)-1]+1` -/
def P469007852545257092.Spec : Prop :=
  ∀ n, (P469007852545257092.a n : ℤ) = A369361 (n + 1)

end A369361

/-! ## A369361.P11143665642839155175

`comp[A278222(n)-1]+1`
-/

namespace A369361.P11143665642839155175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A369361.P11143665642839155175

namespace A369361

/-- `comp[A278222(n)-1]+1` -/
def P11143665642839155175.Spec : Prop :=
  ∀ n, (P11143665642839155175.a n : ℤ) = A369361 (n + 1)

end A369361

/-! ## A369361.P3751188385564979715

`eq[0, A322585(n+1)]+1`
-/

namespace A369361.P3751188385564979715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A369361.P3751188385564979715

namespace A369361

/-- `eq[0, A322585(n+1)]+1` -/
def P3751188385564979715.Spec : Prop :=
  ∀ n, (P3751188385564979715.a n : ℤ) = A369361 (n + 1)

end A369361

/-! ## A369361.P8659641081755309175

`lt[0, A358218(n+1)]+1`
-/

namespace A369361.P8659641081755309175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A369361.P8659641081755309175

namespace A369361

/-- `lt[0, A358218(n+1)]+1` -/
def P8659641081755309175.Spec : Prop :=
  ∀ n, (P8659641081755309175.a n : ℤ) = A369361 (n + 1)

end A369361

/-! ## A369361.P11619768216529287635

`lt[1, A328478(n+1)]+1`
-/

namespace A369361.P11619768216529287635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328478 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A369361.P11619768216529287635

namespace A369361

/-- `lt[1, A328478(n+1)]+1` -/
def P11619768216529287635.Spec : Prop :=
  ∀ n, (P11619768216529287635.a n : ℤ) = A369361 (n + 1)

end A369361

/-! ## A369361.P9396053219022951451

`lt[A328479(n+1), n]+1`
-/

namespace A369361.P9396053219022951451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A369361.P9396053219022951451

namespace A369361

/-- `lt[A328479(n+1), n]+1` -/
def P9396053219022951451.Spec : Prop :=
  ∀ n, (P9396053219022951451.a n : ℤ) = A369361 (n + 1)

end A369361

/-! ## A369361.P2121778252580533556

`comp[A025487(n+1)-1]+1`
-/

namespace A369361.P2121778252580533556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A369361.P2121778252580533556

namespace A369361

/-- `comp[A025487(n+1)-1]+1` -/
def P2121778252580533556.Spec : Prop :=
  ∀ n, (P2121778252580533556.a n : ℤ) = A369361 (n + 1)

end A369361

/-! ## A369361.P5164392467931606569

`∪[A056808(n+1), A080259(n+1)]`
-/

namespace A369361.P5164392467931606569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369361.P5164392467931606569

namespace A369361

/-- `∪[A056808(n+1), A080259(n+1)]` -/
def P5164392467931606569.Spec : Prop :=
  ∀ n, (P5164392467931606569.a n : ℤ) = A369361 (n + 1)

end A369361

/-! ## A369361.P7084958542753496756

`∪[A071365(n+1), A080259(n+1)]`
-/

namespace A369361.P7084958542753496756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369361.P7084958542753496756

namespace A369361

/-- `∪[A071365(n+1), A080259(n+1)]` -/
def P7084958542753496756.Spec : Prop :=
  ∀ n, (P7084958542753496756.a n : ℤ) = A369361 (n + 1)

end A369361

/-! ## A369361.P18446443211565261858

`lt[1, A064839(n+1)]+1`
-/

namespace A369361.P18446443211565261858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A369361.P18446443211565261858

namespace A369361

/-- `lt[1, A064839(n+1)]+1` -/
def P18446443211565261858.Spec : Prop :=
  ∀ n, (P18446443211565261858.a n : ℤ) = A369361 (n + 1)

end A369361

/-! ## A369361.P17233019200793958702

`lt[1, A319627(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A369361

/-- `lt[1, A319627(n+1)]+1` -/
def P17233019200793958702.Spec : Prop :=
  ∀ n, (P17233019200793958702.a n : ℤ) = A369361 (n + 1)

theorem P17233019200793958702.correct : P17233019200793958702.Spec := by
  intro n
  simp only [A369361, Nat.add_sub_cancel]

end A369361

/-! ## A369361.P2943067429219185073

`lt[A046523(n+1), n+1]+1`
-/

namespace A369361.P2943067429219185073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A369361.P2943067429219185073

namespace A369361

/-- `lt[A046523(n+1), n+1]+1` -/
def P2943067429219185073.Spec : Prop :=
  ∀ n, (P2943067429219185073.a n : ℤ) = A369361 (n + 1)

end A369361

/-! ## A369361.P2663963935542642983

`comp[C(A046523(n+1), n)]`
-/

namespace A369361.P2663963935542642983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A046523 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A369361.P2663963935542642983

namespace A369361

/-- `comp[C(A046523(n+1), n)]` -/
def P2663963935542642983.Spec : Prop :=
  ∀ n, (P2663963935542642983.a n : ℤ) = A369361 (n + 1)

end A369361

/-! ## A369361.P5304305659178920697

`comp[A277906(n+1)-1]+1`
-/

namespace A369361.P5304305659178920697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277906 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A369361.P5304305659178920697

namespace A369361

/-- `comp[A277906(n+1)-1]+1` -/
def P5304305659178920697.Spec : Prop :=
  ∀ n, (P5304305659178920697.a n : ℤ) = A369361 (n + 1)

end A369361

/-! ## A369361.P7187302341372408334

`∑[runs[A326439(n)]]`
-/

namespace A369361.P7187302341372408334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326439 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369361.P7187302341372408334

namespace A369361

/-- `∑[runs[A326439(n)]]` -/
def P7187302341372408334.Spec : Prop :=
  ∀ n, (P7187302341372408334.a n : ℤ) = A369361 (n + 1)

end A369361

/-!
# A369362: Number of free rooted (or pointed) (planar) polyhexes with n cells.

The programs for A369362, there is no canonical definition to state claims against.
-/

/-! ## A369362.P10697883407110475791

`A349536(A149706(n))`
-/

namespace A369362.P10697883407110475791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349536 (A149706 n).toNat

end

end A369362.P10697883407110475791

/-! ## A369362.P1375477786947009594

`A112689(A371795(n+3)+A046633(n))`
-/

namespace A369362.P1375477786947009594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A371795 (n + 3) + A046633 n).toNat

end

end A369362.P1375477786947009594

/-!
# A369363: Least number of inequivalent cells in a (planar) polyhex with n cells.

The programs for A369363, there is no canonical definition to state claims against.
-/

/-! ## A369363.P2481285192179710962

`A132173(A349917(n+1))`
-/

namespace A369363.P2481285192179710962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132173 (A349917 (n + 1)).toNat

end

end A369363.P2481285192179710962

/-! ## A369363.P2598589939366965627

`A265744(A263659(n+1))`
-/

namespace A369363.P2598589939366965627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265744 (A263659 (n + 1)).toNat

end

end A369363.P2598589939366965627

/-! ## A369363.P2241617743279713696

`A353362(A194712(n+1))`
-/

namespace A369363.P2241617743279713696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353362 (A194712 (n + 1)).toNat

end

end A369363.P2241617743279713696

/-! ## A369363.P16572108235315386413

`A341456(A338691(n+1))`
-/

namespace A369363.P16572108235315386413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341456 (A338691 (n + 1)).toNat

end

end A369363.P16572108235315386413

/-! ## A369363.P11101602320620589373

`A026904(A005097(n+2))`
-/

namespace A369363.P11101602320620589373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026904 (A005097 (n + 2)).toNat

end

end A369363.P11101602320620589373

/-!
# A369365: Number of free rooted (or pointed) polyiamonds with n cells.

The programs for A369365, there is no canonical definition to state claims against.
-/

/-! ## A369365.P14489217346733790524

`A384893(2*n²)`
-/

namespace A369365.P14489217346733790524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384893 (2 * n ^ 2)

end

end A369365.P14489217346733790524

/-! ## A369365.P6558430410228201144

`Δ[A105518(Δ[3^n])]`
-/

namespace A369365.P6558430410228201144
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105518 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369365.P6558430410228201144

/-! ## A369365.P4720729941799930580

`A349151(ceil(2^(n-1)))`
-/

namespace A369365.P4720729941799930580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349151 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A369365.P4720729941799930580

/-!
# A369368: a(n) is the numerator of the maximum expected number of steps until a random walker falls into the sea when walking on the cells of an n-celled polyhex island.

The programs for A369368, there is no canonical definition to state claims against.
-/

/-! ## A369368.P14952714756769925150

`n*A181803(A014137(n))`
-/

namespace A369368.P14952714756769925150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A181803 (A014137 n).toNat

end

end A369368.P14952714756769925150

/-! ## A369368.P7014623146715625339

`n*A342512(A001142(n))`
-/

namespace A369368.P7014623146715625339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A342512 (A001142 n).toNat

end

end A369368.P7014623146715625339

/-!
# A369370: a(n) is the numerator of the maximum expected number of steps until a random walker falls into the sea when walking on the cells of an n-celled polyiamond island.

The programs for A369370, there is no canonical definition to state claims against.
-/

/-! ## A369370.P15447768622506122652

`A265755(A277087(n))+A062157(n)`
-/

namespace A369370.P15447768622506122652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (A277087 n).toNat + A062157 n

end

end A369370.P15447768622506122652

/-! ## A369370.P8857428170386593567

`A001147(n)%A086066(A023000(n))`
-/

namespace A369370.P8857428170386593567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001147 n) (A086066 (A023000 n).toNat)

end

end A369370.P8857428170386593567

/-!
# A369374: Powerful numbers k that have a primorial kernel and more than 1 distinct prime factor.

The programs for A369374, there is no canonical definition to state claims against.
-/

/-! ## A369374.P2124110487532935099

`∪[A364930(n+1), A369420(n+1)]`
-/

namespace A369374.P2124110487532935099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P2124110487532935099

/-! ## A369374.P8361954040514822646

`∪[A377854(n+1), A380446(n+1)]`
-/

namespace A369374.P8361954040514822646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P8361954040514822646

/-! ## A369374.P2039276942539801038

`∩[A363814(n+1), A387901(n+1)]`
-/

namespace A369374.P2039276942539801038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P2039276942539801038

/-! ## A369374.P6418286844445757856

`∩[A066312(n+1), A387901(n+1)]`
-/

namespace A369374.P6418286844445757856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P6418286844445757856

/-! ## A369374.P4415897903920982956

`∩[A055932(n+1), A363169(n+1)]`
-/

namespace A369374.P4415897903920982956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P4415897903920982956

/-! ## A369374.P14478300884363583968

`∩[A363169(n+1), A363814(n+1)]`
-/

namespace A369374.P14478300884363583968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P14478300884363583968

/-! ## A369374.P5680513907238149897

`∩[A363169(n+1), A387901(n+1)]`
-/

namespace A369374.P5680513907238149897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P5680513907238149897

/-! ## A369374.P16278873621915293350

`∩[A363169(n+1), A398301(n+1)]`
-/

namespace A369374.P16278873621915293350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P16278873621915293350

/-! ## A369374.P11210252083952476611

`∩[A055932(n+1), A363216(n+1)]`
-/

namespace A369374.P11210252083952476611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P11210252083952476611

/-! ## A369374.P7844855259857627863

`∩[A066312(n+1), A363216(n+1)]`
-/

namespace A369374.P7844855259857627863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P7844855259857627863

/-! ## A369374.P968054838727924763

`∩[A066312(n+1), A390010(n+1)]`
-/

namespace A369374.P968054838727924763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P968054838727924763

/-! ## A369374.P17230814566818015727

`∩[A363216(n+1), A363814(n+1)]`
-/

namespace A369374.P17230814566818015727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P17230814566818015727

/-! ## A369374.P209589856818654003

`∩[A363216(n+1), A387901(n+1)]`
-/

namespace A369374.P209589856818654003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P209589856818654003

/-! ## A369374.P7225393772028972013

`∩[A363814(n+1), A390010(n+1)]`
-/

namespace A369374.P7225393772028972013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P7225393772028972013

/-! ## A369374.P2244701654082281470

`∩[A363216(n+1), A398301(n+1)]`
-/

namespace A369374.P2244701654082281470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P2244701654082281470

/-! ## A369374.P706229364580170332

`∩[A353485(n+1), A363814(n+1)]`
-/

namespace A369374.P706229364580170332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P706229364580170332

/-! ## A369374.P10036833042200392014

`∩[A055932(n+1), A286708(n+1)]`
-/

namespace A369374.P10036833042200392014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P10036833042200392014

/-! ## A369374.P7650508270714712061

`∩[A286708(n+1), A363814(n+1)]`
-/

namespace A369374.P7650508270714712061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P7650508270714712061

/-! ## A369374.P14077800624260718347

`∩[A286708(n+1), A387901(n+1)]`
-/

namespace A369374.P14077800624260718347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P14077800624260718347

/-! ## A369374.P689781635069016404

`∩[A286708(n+1), A398301(n+1)]`
-/

namespace A369374.P689781635069016404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369374.P689781635069016404

/-!
# A369375: Numbers m such that the Mersenne number 2^m - 1 is a de Polignac number (A006285).

The programs for A369375, there is no canonical definition to state claims against.
-/

/-! ## A369375.P1176243371591814239

`lt[A272143(n+1), 1]+1`
-/

namespace A369375.P1176243371591814239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272143 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A369375.P1176243371591814239

/-! ## A369375.P8099226570653384969

`∪[A138290(n+1)+1, A299697(2*n)]`
-/

namespace A369375.P8099226570653384969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138290 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299697 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369375.P8099226570653384969

/-! ## A369375.P9641143782342733231

`eq[n*A272143(n+1), A010054(3*n+2)]+1`
-/

namespace A369375.P9641143782342733231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A272143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A369375.P9641143782342733231

/-! ## A369375.P9177207268309836652

`A065475(eq[A000007(n), A106821(n+1)])`
-/

namespace A369375.P9177207268309836652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A369375.P9177207268309836652

/-! ## A369375.P17545361028976042957

`∪[A138290(n+1), A152045(A000533(n))]+1`
-/

namespace A369375.P17545361028976042957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152045 (A000533 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A369375.P17545361028976042957

/-! ## A369375.P219403958959527991

`A065475(eq[A019590(2*n+1), A106821(n+1)])`
-/

namespace A369375.P219403958959527991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A369375.P219403958959527991

/-! ## A369375.P13408630441707687679

`A065475(eq[A010057(3*n+1), A106821(n+1)])`
-/

namespace A369375.P13408630441707687679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A369375.P13408630441707687679

/-!
# A369376: a(n) is the number of elements p(j) > j (right displacements) in the n-th permutation in lexicographic order.

The programs for A369376, there is no canonical definition to state claims against.
-/

/-! ## A369376.P15764312802301639360

`A060500(A060127(n))`
-/

namespace A369376.P15764312802301639360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (A060127 n).toNat

end

end A369376.P15764312802301639360

/-! ## A369376.P13871486453157726361

`A060502(A060126(n))`
-/

namespace A369376.P13871486453157726361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A060126 n).toNat

end

end A369376.P13871486453157726361

/-! ## A369376.P13211045877079724698

`A369377(A056019(n))`
-/

namespace A369376.P13211045877079724698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369377 (A056019 n).toNat

end

end A369376.P13211045877079724698

/-! ## A369376.P17153455297318081970

`A055093(n)-A369377(n)`
-/

namespace A369376.P17153455297318081970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055093 n - A369377 n

end

end A369376.P17153455297318081970

/-! ## A369376.P3826307693164728406

`A055090(n)+A055091(n)-A369377(n)`
-/

namespace A369376.P3826307693164728406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055090 n + (A055091 n - A369377 n)

end

end A369376.P3826307693164728406

/-!
# A369377: a(n) is the number of elements p(j) < j (left displacements) in the n-th permutation in lexicographic order.

The programs for A369377, there is no canonical definition to state claims against.
-/

/-! ## A369377.P11271955964620656025

`A060500(A060126(n))`
-/

namespace A369377.P11271955964620656025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (A060126 n).toNat

end

end A369377.P11271955964620656025

/-! ## A369377.P3235404640612050153

`A060502(A060127(n))`
-/

namespace A369377.P3235404640612050153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A060127 n).toNat

end

end A369377.P3235404640612050153

/-! ## A369377.P16517329237463306188

`A369376(A056019(n))`
-/

namespace A369377.P16517329237463306188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369376 (A056019 n).toNat

end

end A369377.P16517329237463306188

/-! ## A369377.P3677805081829397251

`A055093(n)-A369376(n)`
-/

namespace A369377.P3677805081829397251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055093 n - A369376 n

end

end A369377.P3677805081829397251

/-! ## A369377.P8568940916155095801

`A056556(8*A198380(n))-A369376(n)`
-/

namespace A369377.P8568940916155095801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (8 * A198380 n).toNat - A369376 n

end

end A369377.P8568940916155095801

/-!
# A369379: Number of Dabbaghian-Wu pandiagonal Latin squares of order 2n+1 with the first row in order.

The programs for A369379, there is no canonical definition to state claims against.
-/

/-! ## A369379.P11869370232157199108

`A368027(n+1)%A000980(n)`
-/

namespace A369379.P11869370232157199108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368027 (n + 1)) (A000980 n)

end

end A369379.P11869370232157199108

/-! ## A369379.P11171267557588150672

`A368027(n+1)/A080300(3*(n+1))!`
-/

namespace A369379.P11171267557588150672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368027 (n + 1) : ℚ) / (Nat.factorial (A080300 (3 * (n + 1))).toNat : ℚ)

end

end A369379.P11171267557588150672

/-!
# A369381: Triangle read by rows: T(n,k) = binomial(n+1,k+1)*Stirling2(n+k,k).

The programs for A369381, there is no canonical definition to state claims against.
-/

/-! ## A369381.P4727930099596173478

`C(A008480(A002981(2*n+3)), A143983(n+1))`
-/

namespace A369381.P4727930099596173478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008480 (A002981 (2 * n + 3)).toNat).toNat (A143983 (n + 1)).toNat

end

end A369381.P4727930099596173478

/-!
# A369382: Number of subsets of the integer lattice Z^2 of cardinality n such that there is no monotone lattice path which splits the set in half, up to lattice symmetry.

The programs for A369382, there is no canonical definition to state claims against.
-/

/-! ## A369382.P5129558547071537807

`A335622(A256484(n+1)-A066057(n))`
-/

namespace A369382.P5129558547071537807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335622 (A256484 (n + 1) - A066057 n).toNat

end

end A369382.P5129558547071537807

/-! ## A369382.P10666097845566155939

`A053632(n)%A211790(A205959(n+1))`
-/

namespace A369382.P10666097845566155939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053632 n) (A211790 (A205959 (n + 1)).toNat)

end

end A369382.P10666097845566155939

/-! ## A369382.P12142541688180944060

`A131743(A255346(n+1)*(A132393(n)+1))`
-/

namespace A369382.P12142541688180944060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131743 (A255346 (n + 1) * (A132393 n + 1)).toNat

end

end A369382.P12142541688180944060

/-! ## A369382.P10154392679957253581

`A367817(A367783(n+1)^A000688(n+4))`
-/

namespace A369382.P10154392679957253581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367817 (SequenceMachineLib.roundAway ((A367783 (n + 1) : ℚ) ^ (A000688 (n + 4) : ℤ))).toNat

end

end A369382.P10154392679957253581

/-! ## A369382.P5975121148781124098

`A280800(n+1)%A320451(A297582(n+1))`
-/

namespace A369382.P5975121148781124098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280800 (n + 1)) (A320451 (A297582 (n + 1)).toNat)

end

end A369382.P5975121148781124098

/-!
# A369383: The smallest number k that can be partitioned in n ways as the sum of two numbers from A003601.

The programs for A369383, there is no canonical definition to state claims against.
-/

/-! ## A369383.P12003828850326507297

`fo[A369916(n+1)]+1`
-/

namespace A369383.P12003828850326507297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369916 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A369383.P12003828850326507297

/-!
# A369384: The smallest number k that can be partitioned in n ways as the sum of two numbers from A020487.

The programs for A369384, there is no canonical definition to state claims against.
-/

/-! ## A369384.P14373118177733921053

`A151572(A080397(2*n)+A006015(n))`
-/

namespace A369384.P14373118177733921053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151572 (A080397 (2 * n) + A006015 n).toNat

end

end A369384.P14373118177733921053

/-!
# A369385: The smallest number k that can be partitioned in n ways as the sum of two numbers from A109611.

The programs for A369385, there is no canonical definition to state claims against.
-/

/-! ## A369385.P17908267905718612801

`A307282(A293302(n))+A006995(2*n+1)`
-/

namespace A369385.P17908267905718612801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307282 (A293302 n).toNat + A006995 (2 * n + 1)

end

end A369385.P17908267905718612801

/-!
# A369386: a(n) is the constant term in expansion of Product_{k=1..n} (x^(2*k-1) + 1/x^(2*k-1))^2.

The programs for A369386, there is no canonical definition to state claims against.
-/

/-! ## A369386.P3973027037114107194

`record[A222955(n+1)^(n%2)]`
-/

namespace A369386.P3973027037114107194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222955 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A369386.P3973027037114107194

/-! ## A369386.P9261001221334612980

`record[A222955(n+1)/A040005(n)]`
-/

namespace A369386.P9261001221334612980
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222955 (n + 1) : ℚ) / (A040005 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A369386.P9261001221334612980

/-! ## A369386.P9738784976792737485

`record[gcd(A035363(n), A222955(n+1))]`
-/

namespace A369386.P9738784976792737485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035363 n) (A222955 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A369386.P9738784976792737485

/-! ## A369386.P8101647768213346078

`A130130(2*n+1)*A133406(A004277(n))`
-/

namespace A369386.P8101647768213346078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (2 * n + 1) * A133406 (A004277 n).toNat

end

end A369386.P8101647768213346078

/-! ## A369386.P12907327708312537670

`∪[A222955(2*(n+1)), A367523(A299254(n))]`
-/

namespace A369386.P12907327708312537670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222955 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367523 (A299254 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A369386.P12907327708312537670

/-!
# A369387: a(n) is the constant term in expansion of Product_{k=1..n} (x^(2*k-1) + 1 + 1/x^(2*k-1))^2.

The programs for A369387, there is no canonical definition to state claims against.
-/

/-! ## A369387.P17502184475334965817

`record[and((-1)^n, A223743(n+1))]`
-/

namespace A369387.P17502184475334965817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((-1) ^ n) (A223743 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A369387.P17502184475334965817

/-! ## A369387.P1049870785260672606

`A223743(A322250(2*n+1))-A000038(n)`
-/

namespace A369387.P1049870785260672606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223743 (A322250 (2 * n + 1)).toNat - A000038 n

end

end A369387.P1049870785260672606

/-!
# A369388: a(n) is the constant term in expansion of Product_{k=1..n} (x^prime(k) + 1 + 1/x^prime(k))^2.

The programs for A369388, there is no canonical definition to state claims against.
-/

/-! ## A369388.P9841452159182852302

`3*A276884(a(n-1))` with `a(0)=1`
-/

namespace A369388.P9841452159182852302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A276884 (a (n - 1)).toNat

end

end A369388.P9841452159182852302

/-!
# A369389: a(n) is the constant term in expansion of Product_{k=1..n} (x^(k^2) + 1 + 1/x^(k^2))^2.

The programs for A369389, there is no canonical definition to state claims against.
-/

/-! ## A369389.P12035531931016460065

`A233780(A348009(n))`
-/

namespace A369389.P12035531931016460065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233780 (A348009 n).toNat

end

end A369389.P12035531931016460065

/-! ## A369389.P9475811761870972382

`A233970(A274230(n+1)+1)`
-/

namespace A369389.P9475811761870972382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233970 (A274230 (n + 1) + 1).toNat

end

end A369389.P9475811761870972382

/-!
# A369391: Number of nonempty subsets of {1..n} whose elements have a square average.

The programs for A369391, there is no canonical definition to state claims against.
-/

/-! ## A369391.P2371603112301568477

`A369526(∑[n+1]+2)`
-/

namespace A369391.P2371603112301568477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369526 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A369391.P2371603112301568477

/-!
# A369392: Number of subsets of {2..n} such that the product of the elements plus 1 is a prime.

The programs for A369392, there is no canonical definition to state claims against.
-/

/-! ## A369392.P11400296496942997360

`A104305(A046630(n))`
-/

namespace A369392.P11400296496942997360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104305 (A046630 n).toNat

end

end A369392.P11400296496942997360

/-! ## A369392.P1605367841460689176

`A118766(A107250(n))`
-/

namespace A369392.P1605367841460689176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118766 (A107250 n).toNat

end

end A369392.P1605367841460689176

/-! ## A369392.P14787996242591464863

`A104305(A177874(n))`
-/

namespace A369392.P14787996242591464863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104305 (A177874 n).toNat

end

end A369392.P14787996242591464863

/-! ## A369392.P11577562559555619287

`A332073(A088352(n))`
-/

namespace A369392.P11577562559555619287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332073 (A088352 n).toNat

end

end A369392.P11577562559555619287

/-! ## A369392.P3556330165240884379

`A353852(row(A001372(n)))`
-/

namespace A369392.P3556330165240884379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353852 (SequenceMachineLib.triRow (A001372 n).toNat)

end

end A369392.P3556330165240884379

/-!
# A369393: a(n) = 2^n*(((n + 1)/2)^n - n!).

The programs for A369393, the canonical program `A369393.P1648837837317554822` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369393 has offset 0).

The definition of A369393 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369393.P1648837837317554822

`2^n*(((n+1)/2)^n-n!)`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A369393

/-- `2^n*(((n+1)/2)^n-n!)` -/
def P1648837837317554822.Spec : Prop :=
  ∀ n, P1648837837317554822.a n = (A369393 n : ℚ)

end A369393

/-! ## A369393.P2361780564209418748

`(n+1)^n-2^n*n!`
-/

namespace A369393.P2361780564209418748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℤ) - (2 ^ n * Nat.factorial n : ℤ)

end

end A369393.P2361780564209418748

namespace A369393

/-- `(n+1)^n-2^n*n!` -/
def P2361780564209418748.Spec : Prop :=
  ∀ n, P2361780564209418748.a n = A369393 n

end A369393

/-! ## A369393.P10234880681570016486

`(1+n)^n-A000165(n)`
-/

namespace A369393.P10234880681570016486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 + n) ^ n : ℤ) - A000165 n

end

end A369393.P10234880681570016486

namespace A369393

/-- `(1+n)^n-A000165(n)` -/
def P10234880681570016486.Spec : Prop :=
  ∀ n, P10234880681570016486.a n = A369393 n

end A369393

/-! ## A369393.P17951778834135008057

`(n+1)^n-A006882(2*n)`
-/

namespace A369393.P17951778834135008057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℤ) - A006882 (2 * n)

end

end A369393.P17951778834135008057

namespace A369393

/-- `(n+1)^n-A006882(2*n)` -/
def P17951778834135008057.Spec : Prop :=
  ∀ n, P17951778834135008057.a n = A369393 n

end A369393

/-! ## A369393.P14730890057067605774

`A000169(n+1)-2^(log2(n!)+n)`
-/

namespace A369393.P14730890057067605774
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000169 (n + 1) : ℝ) - (2 : ℝ) ^ (Real.logb 2 (Nat.factorial n : ℝ) + (n : ℝ))

end

end A369393.P14730890057067605774

namespace A369393

/-- `A000169(n+1)-2^(log2(n!)+n)` -/
def P14730890057067605774.Spec : Prop :=
  ∀ n, P14730890057067605774.a n = (A369393 n : ℝ)

end A369393

/-! ## A369393.P3424575422410903073

`abs(A000169(n+1)-A000165(n))`
-/

namespace A369393.P3424575422410903073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000169 (n + 1) - A000165 n|

end

end A369393.P3424575422410903073

namespace A369393

/-- `abs(A000169(n+1)-A000165(n))` -/
def P3424575422410903073.Spec : Prop :=
  ∀ n, P3424575422410903073.a n = A369393 n

end A369393

/-! ## A369393.P5668104494744531574

`A000169(n+1)-∏[A004277(n)]`
-/

namespace A369393.P5668104494744531574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 1) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A369393.P5668104494744531574

namespace A369393

/-- `A000169(n+1)-∏[A004277(n)]` -/
def P5668104494744531574.Spec : Prop :=
  ∀ n, P5668104494744531574.a n = A369393 n

end A369393

/-!
# A369395: AGM transform of the even positive numbers.

The programs for A369395, there is no canonical definition to state claims against.
-/

/-! ## A369395.P6353054326533891817

`2^(n+1)*A368366(n+1)`
-/

namespace A369395.P6353054326533891817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A368366 (n + 1)

end

end A369395.P6353054326533891817

/-! ## A369395.P5888171408366215893

`(n+1)^(n+1)*(((n+2)/2)^(n+1)-(n+1)!)*Δ[A126646(n)]`
-/

namespace A369395.P5888171408366215893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℚ) * (((n + 2 : ℚ) / 2) ^ (n + 1) - (Nat.factorial (n + 1) : ℚ)) * (f1 (n + 1) - f1 n : ℚ)

end

end A369395.P5888171408366215893

/-! ## A369395.P9341184858371378427

`2*A368366(n+1)*A000079(n)`
-/

namespace A369395.P9341184858371378427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A368366 (n + 1) * A000079 n

end

end A369395.P9341184858371378427

/-! ## A369395.P15216540307643634148

`(A061718(n+1)-A061711(n+1))*Δ[A126646(n)]`
-/

namespace A369395.P15216540307643634148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061718 (n + 1) - A061711 (n + 1)) * (f1 (n + 1) - f1 n)

end

end A369395.P15216540307643634148

/-!
# A369398: Expansion of (1/x) * Series_Reversion( x / (1+x)^2 * (1-x^3) ).

The programs for A369398, the canonical program `A369398.P2170177191766894798` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369398 has offset 0).

The definition of A369398 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369398.P2170177191766894798

`1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(2*n+2, n-3*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A369398

/-- `1/(n+1)*∑{#}[floor(n/3), C(n+#, #)*C(2*n+2, n-3*#)]` -/
def P2170177191766894798.Spec : Prop :=
  ∀ n, P2170177191766894798.a n = (A369398 n : ℚ)

end A369398

/-! ## A369398.P3261934370257653511

`A369443(n)+A044940(A007613(n))`
-/

namespace A369398.P3261934370257653511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369443 n + A044940 (A007613 n).toNat

end

end A369398.P3261934370257653511

namespace A369398

/-- `A369443(n)+A044940(A007613(n))` -/
def P3261934370257653511.Spec : Prop :=
  ∀ n, P3261934370257653511.a n = A369398 n

end A369398

/-! ## A369398.P3629767172782269853

`A369443(n)+A025441(A151245(n))`
-/

namespace A369398.P3629767172782269853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369443 n + A025441 (A151245 n).toNat

end

end A369398.P3629767172782269853

namespace A369398

/-- `A369443(n)+A025441(A151245(n))` -/
def P3629767172782269853.Spec : Prop :=
  ∀ n, P3629767172782269853.a n = A369398 n

end A369398

/-!
# A369399: Expansion of (1/x) * Series_Reversion( x / (1+x) * (1-x^3)^2 ).

The programs for A369399, the canonical program `A369399.P2669471600798307633` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369399 has offset 0).

The definition of A369399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369399.P2669471600798307633

`1/(n+1)*∑{#}[floor(n/3), C(2*n+#+1, #)*C(n+1, n-3*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A369399

/-- `1/(n+1)*∑{#}[floor(n/3), C(2*n+#+1, #)*C(n+1, n-3*#)]` -/
def P2669471600798307633.Spec : Prop :=
  ∀ n, P2669471600798307633.a n = (A369399 n : ℚ)

end A369399

