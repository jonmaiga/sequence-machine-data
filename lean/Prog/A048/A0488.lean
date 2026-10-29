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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
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
# A048800: E.g.f. satisfies A(x) = 1 + x * A(x / (1 - x)).

The programs for A048800, there is no canonical definition to state claims against.
-/

/-! ## A048800.P16361999721397629726

`n!*A095149(C(n, 2))`
-/

namespace A048800.P16361999721397629726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A095149 (Nat.choose n 2)

end

end A048800.P16361999721397629726

/-! ## A048800.P7167004951723095731

`n!*A095149(A000124(n))`
-/

namespace A048800.P7167004951723095731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A095149 (A000124 n).toNat

end

end A048800.P7167004951723095731

/-! ## A048800.P9215082719634085108

`n!*A011971(A161680(n))`
-/

namespace A048800.P9215082719634085108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A011971 (A161680 n).toNat

end

end A048800.P9215082719634085108

/-! ## A048800.P433250707060499956

`A000142(n)*A108087(C(n, 2))`
-/

namespace A048800.P433250707060499956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A108087 (Nat.choose n 2)

end

end A048800.P433250707060499956

/-! ## A048800.P9445166855168961322

`n!*A000110(A289207(n+1))`
-/

namespace A048800.P9445166855168961322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000110 (A289207 (n + 1)).toNat

end

end A048800.P9445166855168961322

/-!
# A048801: E.g.f. A(x) satisfies A(x) = 1 + x * A(exp(x) - 1).

The programs for A048801, there is no canonical definition to state claims against.
-/

/-! ## A048801.P17757215295863055665

`A365080(A148631(n))`
-/

namespace A048801.P17757215295863055665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365080 (A148631 n).toNat

end

end A048801.P17757215295863055665

/-! ## A048801.P8153971687032957311

`A034887(∑[A362747(n)])`
-/

namespace A048801.P8153971687032957311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048801.P8153971687032957311

/-!
# A048802: Number of labeled rooted trees of nonempty sets with n points. (Each node is a set of 1 or more points.)

The programs for A048802, there is no canonical definition to state claims against.
-/

/-! ## A048802.P300367035374729566

`A350746(A000124(n))-floor(acot(n))`
-/

namespace A048802.P300367035374729566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350746 (A000124 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A048802.P300367035374729566

/-! ## A048802.P7621311870174794864

`record[gcd(A048994(n), A350746(n+1))]`
-/

namespace A048802.P7621311870174794864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048994 n) (A350746 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048802.P7621311870174794864

/-! ## A048802.P5104169160602984591

`A350746(A000124(n))-A000007(n)`
-/

namespace A048802.P5104169160602984591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350746 (A000124 n).toNat - A000007 n

end

end A048802.P5104169160602984591

/-! ## A048802.P2463872013624602127

`A350746(A000124(n))-A015070(n)`
-/

namespace A048802.P2463872013624602127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350746 (A000124 n).toNat - A015070 n

end

end A048802.P2463872013624602127

/-!
# A048803: a(n) = Product_{k=1..n} rad(k), where rad(n) is the product of distinct prime factors of n, cf. A007947.

The programs for A048803, the canonical program `A048803.P1384163412676247961` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048803 has offset 0).

The definition of A048803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048803.P1384163412676247961

`a(n-1)*A007947(n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048803

/-- `a(n-1)*A007947(n)` -/
def P1384163412676247961.Spec : Prop :=
  ∀ n, P1384163412676247961.a n = A048803 n

theorem P1384163412676247961.correct : P1384163412676247961.Spec := by
  intro n
  simp only [A048803]

end A048803

/-! ## A048803.P9243621780406092559

`∏[∏{p}[n, #]]`
-/

namespace A048803.P9243621780406092559
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048803.P9243621780406092559

namespace A048803

/-- `∏[∏{p}[n, #]]` -/
def P9243621780406092559.Spec : Prop :=
  ∀ n, (P9243621780406092559.a n : ℤ) = A048803 n

end A048803

/-! ## A048803.P6144500327591023682

`exp(∑[∑{p}[n, log(#)]])`
-/

namespace A048803.P6144500327591023682
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Real.log (p : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048803.P6144500327591023682

namespace A048803

/-- `exp(∑[∑{p}[n, log(#)]])` -/
def P6144500327591023682.Spec : Prop :=
  ∀ n, P6144500327591023682.a n = (A048803 n : ℝ)

end A048803

/-! ## A048803.P268330547626916719

`exp(∑[log(∏{p}[n, #])])`
-/

namespace A048803.P268330547626916719
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048803.P268330547626916719

namespace A048803

/-- `exp(∑[log(∏{p}[n, #])])` -/
def P268330547626916719.Spec : Prop :=
  ∀ n, P268330547626916719.a n = (A048803 n : ℝ)

end A048803

/-! ## A048803.P12859394094422226282

`∏[exp(∑{p}[n, log(#)])]`
-/

namespace A048803.P12859394094422226282
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ p ∈ Nat.primeFactors (f2 n), Real.log (p : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048803.P12859394094422226282

namespace A048803

/-- `∏[exp(∑{p}[n, log(#)])]` -/
def P12859394094422226282.Spec : Prop :=
  ∀ n, P12859394094422226282.a n = (A048803 n : ℝ)

end A048803

/-! ## A048803.P14893297320551180645

`a(n-1)*∏{p}[n, #]` with `a(0)=1`
-/

namespace A048803.P14893297320551180645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A048803.P14893297320551180645

namespace A048803

/-- `a(n-1)*∏{p}[n, #]` -/
def P14893297320551180645.Spec : Prop :=
  ∀ n, (P14893297320551180645.a n : ℤ) = A048803 n

end A048803

/-! ## A048803.P8161309995336516376

`a(n-1)/∏{p}[n, 1/#]` with `a(0)=1`
-/

namespace A048803.P8161309995336516376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (∏ p ∈ Nat.primeFactors (f1 n), 1 / (p : ℚ))

end

end A048803.P8161309995336516376

namespace A048803

/-- `a(n-1)/∏{p}[n, 1/#]` -/
def P8161309995336516376.Spec : Prop :=
  ∀ n, P8161309995336516376.a n = (A048803 n : ℚ)

end A048803

/-! ## A048803.P1150271842752633902

`∏[A160014(∑[n])]`
-/

namespace A048803.P1150271842752633902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160014 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048803.P1150271842752633902

namespace A048803

/-- `∏[A160014(∑[n])]` -/
def P1150271842752633902.Spec : Prop :=
  ∀ n, P1150271842752633902.a n = A048803 n

end A048803

/-! ## A048803.P9019657651907466705

`∏[gcd(n, A034386(n))]`
-/

namespace A048803.P9019657651907466705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A034386 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048803.P9019657651907466705

namespace A048803

/-- `∏[gcd(n, A034386(n))]` -/
def P9019657651907466705.Spec : Prop :=
  ∀ n, (P9019657651907466705.a n : ℤ) = A048803 n

end A048803

/-! ## A048803.P2661786920643532823

`∏[∏{d}[n, A089026(#)]]`
-/

namespace A048803.P2661786920643532823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A089026 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048803.P2661786920643532823

namespace A048803

/-- `∏[∏{d}[n, A089026(#)]]` -/
def P2661786920643532823.Spec : Prop :=
  ∀ n, P2661786920643532823.a n = A048803 n

end A048803

/-!
# A048804: Triangle: T(n,k) = b(n)/(b(k)*b(n-k)) where b is A048803.

The programs for A048804, there is no canonical definition to state claims against.
-/

/-! ## A048804.P4557665027409690316

`A007318(n)/A246465(n)`
-/

namespace A048804.P4557665027409690316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A246465 n : ℚ)

end

end A048804.P4557665027409690316

/-! ## A048804.P5950520826758100857

`abs(A108086(n)/A246465(n))`
-/

namespace A048804.P5950520826758100857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A108086 n : ℚ) / (A246465 n : ℚ)|

end

end A048804.P5950520826758100857

/-! ## A048804.P5599337302842179176

`abs(A117440(n)/A246465(n))`
-/

namespace A048804.P5599337302842179176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A117440 n : ℚ) / (A246465 n : ℚ)|

end

end A048804.P5599337302842179176

/-! ## A048804.P270076652720960268

`abs(A130595(n)/A246465(n))`
-/

namespace A048804.P270076652720960268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A130595 n : ℚ) / (A246465 n : ℚ)|

end

end A048804.P270076652720960268

/-! ## A048804.P9149457867244603412

`sqrt(A008459(n))/A246465(n)`
-/

namespace A048804.P9149457867244603412
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) / (A246465 n : ℝ)

end

end A048804.P9149457867244603412

/-! ## A048804.P12378105234752857463

`Δ[A102363(n)]/A246465(n)`
-/

namespace A048804.P12378105234752857463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A246465 n : ℚ)

end

end A048804.P12378105234752857463

/-! ## A048804.P4946813659629748732

`A028326(n)/(2*A246465(n))`
-/

namespace A048804.P4946813659629748732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / (2 * A246465 n : ℚ)

end

end A048804.P4946813659629748732

/-! ## A048804.P12488330844921064388

`A097805(comp[∑[n]])/A246465(n)`
-/

namespace A048804.P12488330844921064388
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097805 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / (A246465 n : ℚ)

end

end A048804.P12488330844921064388

/-! ## A048804.P15522644470467734190

`A028326(n)/A004277(A246465(n))`
-/

namespace A048804.P15522644470467734190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / (A004277 (A246465 n).toNat : ℚ)

end

end A048804.P15522644470467734190

/-! ## A048804.P11950829361181129275

`A007913(A007318(n)*A246465(n))`
-/

namespace A048804.P11950829361181129275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A007318 n * A246465 n).toNat

end

end A048804.P11950829361181129275

/-!
# A048805: Matrix inverse of A048804.

The programs for A048805, there is no canonical definition to state claims against.
-/

/-! ## A048805.P9405920133691259382

`A048804(n)*A048806(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A048805.P9405920133691259382
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048804 n * A048806 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A048805.P9405920133691259382

/-! ## A048805.P15556660736286887230

`A048804(n)*A048806(A025581(n))`
-/

namespace A048805.P15556660736286887230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048804 n * A048806 (A025581 n).toNat

end

end A048805.P15556660736286887230

/-! ## A048805.P11845170950991801598

`A048804(n)*A048806(A003056(n)-A002262(n))`
-/

namespace A048805.P11845170950991801598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048804 n * A048806 (A003056 n - A002262 n).toNat

end

end A048805.P11845170950991801598

/-! ## A048805.P9801141907961866214

`A028326(n)/(2*A246465(n))*A048806(A025581(n))`
-/

namespace A048805.P9801141907961866214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / (2 * A246465 n : ℚ) * (A048806 (A025581 n).toNat : ℚ)

end

end A048805.P9801141907961866214

/-! ## A048805.P5842000315115482843

`xor(A001221(A309864(n)), A130595(n))`
-/

namespace A048805.P5842000315115482843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A309864 n).toNat) (A130595 n)

end

end A048805.P5842000315115482843

/-!
# A048806: Column 0 of A048805.

The programs for A048806, there is no canonical definition to state claims against.
-/

/-! ## A048806.P17269279921101076961

`A048805(∑[n])`
-/

namespace A048806.P17269279921101076961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048805 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048806.P17269279921101076961

/-! ## A048806.P14528143987530355872

`A048805(A000217(n))-4/2+2`
-/

namespace A048806.P14528143987530355872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048805 (A000217 n).toNat : ℚ) - (4 : ℚ) / 2 + 2

end

end A048806.P14528143987530355872

/-! ## A048806.P13695890532534737828

`A264668(n)+A048805(A000217(n))`
-/

namespace A048806.P13695890532534737828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A048805 (A000217 n).toNat

end

end A048806.P13695890532534737828

/-! ## A048806.P7961484423000337964

`or(A000007(n), A048805(A000217(n)))`
-/

namespace A048806.P7961484423000337964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A048805 (A000217 n).toNat)

end

end A048806.P7961484423000337964

/-! ## A048806.P4739155090063351577

`A048805(A000217(n))+A008683(4*(n+1))`
-/

namespace A048806.P4739155090063351577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048805 (A000217 n).toNat + A008683 (4 * (n + 1))

end

end A048806.P4739155090063351577

/-! ## A048806.P5145655629038580799

`A000837(A000045(n²%(n+1)))*A048805(A000217(n))`
-/

namespace A048806.P5145655629038580799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (A000045 (n ^ 2 % (n + 1))).toNat * A048805 (A000217 n).toNat

end

end A048806.P5145655629038580799

/-! ## A048806.P16470342548725514163

`A048805(A000217(n))*A089026(A133234(n+1))`
-/

namespace A048806.P16470342548725514163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048805 (A000217 n).toNat * A089026 (A133234 (n + 1)).toNat

end

end A048806.P16470342548725514163

/-!
# A048808: Number of rooted trees with n nodes with every leaf at height 3.

The programs for A048808, there is no canonical definition to state claims against.
-/

/-! ## A048808.P17136570275668674920

`A244925(∑[n+3]+7)`
-/

namespace A048808.P17136570275668674920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A048808.P17136570275668674920

/-! ## A048808.P12192004808223154426

`or(char[1], A244925(A052905(n)+9))`
-/

namespace A048808.P12192004808223154426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A244925 (A052905 n + 9).toNat)

end

end A048808.P12192004808223154426

/-! ## A048808.P3775162839828246544

`A244925(A145018(n+4))%A022381(n)`
-/

namespace A048808.P3775162839828246544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244925 (A145018 (n + 4)).toNat) (A022381 n)

end

end A048808.P3775162839828246544

/-! ## A048808.P7625299543811114212

`A244925(A052905(n)+9)%A048625(n)`
-/

namespace A048808.P7625299543811114212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244925 (A052905 n + 9).toNat) (A048625 n)

end

end A048808.P7625299543811114212

/-! ## A048808.P5780515899865743606

`A244925(A052905(n)+9)^abs(A062157(n))`
-/

namespace A048808.P5780515899865743606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244925 (A052905 n + 9).toNat : ℚ) ^ (|A062157 n| : ℤ)

end

end A048808.P5780515899865743606

/-! ## A048808.P9181029889854826419

`A244925(A052905(n)+9)^A020985(n)²`
-/

namespace A048808.P9181029889854826419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244925 (A052905 n + 9).toNat : ℚ) ^ (A020985 n ^ 2 : ℤ)

end

end A048808.P9181029889854826419

/-! ## A048808.P13939663907679480205

`A244925(A055999(n)+10)+A000007(n+1)`
-/

namespace A048808.P13939663907679480205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A055999 n + 10).toNat + A000007 (n + 1)

end

end A048808.P13939663907679480205

/-! ## A048808.P18173459586436140463

`A244925(A055999(n)+10)%A262236(n+1)`
-/

namespace A048808.P18173459586436140463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244925 (A055999 n + 10).toNat) (A262236 (n + 1))

end

end A048808.P18173459586436140463

/-! ## A048808.P11692612655465712171

`or(1, A010054(n))*A244925(A055999(n)+10)`
-/

namespace A048808.P11692612655465712171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A010054 n) * A244925 (A055999 n + 10).toNat

end

end A048808.P11692612655465712171

/-! ## A048808.P15989886512222418512

`lcm(A008836(n+1), A244925(A167614(n+2)+1))`
-/

namespace A048808.P15989886512222418512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A244925 (A167614 (n + 2) + 1).toNat)

end

end A048808.P15989886512222418512

/-! ## A048808.P15568398269789095781

`A009531(A005408(n))²*A244925(A055999(n)+10)`
-/

namespace A048808.P15568398269789095781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A005408 n).toNat ^ 2 * A244925 (A055999 n + 10).toNat

end

end A048808.P15568398269789095781

/-! ## A048808.P603600727193726690

`A244925(A055999(n)+10)+A000122(A000040(n+1))`
-/

namespace A048808.P603600727193726690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A055999 n + 10).toNat + A000122 (A000040 (n + 1)).toNat

end

end A048808.P603600727193726690

/-! ## A048808.P10194880773468542699

`A001222(A002476(n+1))*A244925(A055999(n)+10)`
-/

namespace A048808.P10194880773468542699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002476 (n + 1)).toNat * A244925 (A055999 n + 10).toNat

end

end A048808.P10194880773468542699

/-! ## A048808.P6184763290965857264

`A001221(A035066(n+1))*A244925(A055999(n)+10)`
-/

namespace A048808.P6184763290965857264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A035066 (n + 1)).toNat * A244925 (A055999 n + 10).toNat

end

end A048808.P6184763290965857264

/-! ## A048808.P14921027603419431311

`A001221(A111089(n+1))*A244925(A055999(n)+10)`
-/

namespace A048808.P14921027603419431311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A111089 (n + 1)).toNat * A244925 (A055999 n + 10).toNat

end

end A048808.P14921027603419431311

/-! ## A048808.P6881611070293252389

`A001222(A117159(n+1))*A244925(A055999(n)+10)`
-/

namespace A048808.P6881611070293252389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A117159 (n + 1)).toNat * A244925 (A055999 n + 10).toNat

end

end A048808.P6881611070293252389

/-!
# A048809: Number of rooted trees with n nodes with every leaf at height 4.

The programs for A048809, there is no canonical definition to state claims against.
-/

/-! ## A048809.P10882430876100020264

`A244925(A167499(n+3))`
-/

namespace A048809.P10882430876100020264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A167499 (n + 3)).toNat

end

end A048809.P10882430876100020264

/-! ## A048809.P12518520307214735349

`A244925(A167614(n+3)+2)`
-/

namespace A048809.P12518520307214735349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A167614 (n + 3) + 2).toNat

end

end A048809.P12518520307214735349

/-! ## A048809.P4842683155349701614

`A244925(A134869(n+4)+4)`
-/

namespace A048809.P4842683155349701614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A134869 (n + 4) + 4).toNat

end

end A048809.P4842683155349701614

/-! ## A048809.P2817671142700878524

`A244925(A000217(n+4)+5)`
-/

namespace A048809.P2817671142700878524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A000217 (n + 4) + 5).toNat

end

end A048809.P2817671142700878524

/-! ## A048809.P12346568634358564742

`A244925(A038722(Δ[A023545(n+1)]))`
-/

namespace A048809.P12346568634358564742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A048809.P12346568634358564742

/-!
# A048810: Number of rooted trees with n nodes with every leaf at height 5.

The programs for A048810, there is no canonical definition to state claims against.
-/

/-! ## A048810.P3760490869489387095

`A244925(A167614(n+4)+3)`
-/

namespace A048810.P3760490869489387095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A167614 (n + 4) + 3).toNat

end

end A048810.P3760490869489387095

/-! ## A048810.P15322825635802239983

`A244925(A134869(n+5)+5)`
-/

namespace A048810.P15322825635802239983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A134869 (n + 5) + 5).toNat

end

end A048810.P15322825635802239983

/-! ## A048810.P11527327188549930263

`A244925(A000217(n+5)+6)`
-/

namespace A048810.P11527327188549930263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A000217 (n + 5) + 6).toNat

end

end A048810.P11527327188549930263

/-! ## A048810.P15681127874814373686

`A244925(A052905(n+2)+11)`
-/

namespace A048810.P15681127874814373686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A052905 (n + 2) + 11).toNat

end

end A048810.P15681127874814373686

/-! ## A048810.P17055654428490760002

`A244925(A000124(n+6)-(n+1))`
-/

namespace A048810.P17055654428490760002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A048810.P17055654428490760002

/-! ## A048810.P15157215480138773906

`A244925(n+10+A000124(n+4))`
-/

namespace A048810.P15157215480138773906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 ((n + 10 : ℤ) + A000124 (n + 4)).toNat

end

end A048810.P15157215480138773906

/-!
# A048811: Number of rooted trees with n nodes with every leaf at height 6.

The programs for A048811, there is no canonical definition to state claims against.
-/

/-! ## A048811.P5655254296523242998

`A244925(A167614(n+5)+4)`
-/

namespace A048811.P5655254296523242998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A167614 (n + 5) + 4).toNat

end

end A048811.P5655254296523242998

/-! ## A048811.P12728872857149232972

`A244925(A000124(n+6)+6)`
-/

namespace A048811.P12728872857149232972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A000124 (n + 6) + 6).toNat

end

end A048811.P12728872857149232972

/-! ## A048811.P4886015702602748737

`A244925(A000096(n+5)+8)`
-/

namespace A048811.P4886015702602748737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A000096 (n + 5) + 8).toNat

end

end A048811.P4886015702602748737

/-! ## A048811.P6535716102755051354

`A244925(A000217(n+6)+7)`
-/

namespace A048811.P6535716102755051354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A000217 (n + 6) + 7).toNat

end

end A048811.P6535716102755051354

/-! ## A048811.P14052448744576213449

`A244925(A052905(n+3)+12)`
-/

namespace A048811.P14052448744576213449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A052905 (n + 3) + 12).toNat

end

end A048811.P14052448744576213449

/-! ## A048811.P13802804029319092077

`A244925(A155212(n+4)-A005843(n))`
-/

namespace A048811.P13802804029319092077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A155212 (n + 4) - A005843 n).toNat

end

end A048811.P13802804029319092077

/-!
# A048812: Number of rooted trees with n nodes with every leaf at height 7.

The programs for A048812, there is no canonical definition to state claims against.
-/

/-! ## A048812.P16891589400628223850

`A244925(A000217(n+7)+8)`
-/

namespace A048812.P16891589400628223850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A000217 (n + 7) + 8).toNat

end

end A048812.P16891589400628223850

/-! ## A048812.P18356491665129439448

`A244925(A046691(n+5)+12)`
-/

namespace A048812.P18356491665129439448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A046691 (n + 5) + 12).toNat

end

end A048812.P18356491665129439448

/-! ## A048812.P13121777547672636646

`A244925(A000124(n+8)-(n+1))`
-/

namespace A048812.P13121777547672636646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A000124 (n + 8) - (n + 1 : ℤ)).toNat

end

end A048812.P13121777547672636646

/-! ## A048812.P3676515636034503402

`A244925(n+14+A000124(n+6))`
-/

namespace A048812.P3676515636034503402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 ((n + 14 : ℤ) + A000124 (n + 6)).toNat

end

end A048812.P3676515636034503402

/-! ## A048812.P10296636531749638944

`A244925(A167614(n+4)+A005843(n+9))`
-/

namespace A048812.P10296636531749638944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A167614 (n + 4) + A005843 (n + 9)).toNat

end

end A048812.P10296636531749638944

/-!
# A048813: Number of rooted trees with n nodes with every leaf at height 8.

The programs for A048813, there is no canonical definition to state claims against.
-/

/-! ## A048813.P7280285152350189609

`A244925(A000217(n+8)+9)`
-/

namespace A048813.P7280285152350189609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A000217 (n + 8) + 9).toNat

end

end A048813.P7280285152350189609

/-! ## A048813.P15174298618930703491

`A244925(A000124(n+9)-(n+1))`
-/

namespace A048813.P15174298618930703491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A000124 (n + 9) - (n + 1 : ℤ)).toNat

end

end A048813.P15174298618930703491

/-! ## A048813.P10539785999607731856

`A244925(A167614(n+5)+A020742(n+7))`
-/

namespace A048813.P10539785999607731856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A167614 (n + 5) + A020742 (n + 7)).toNat

end

end A048813.P10539785999607731856

/-! ## A048813.P10301153639118913512

`A244925(A052905(n+8)-A016777(n+5))`
-/

namespace A048813.P10301153639118913512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A052905 (n + 8) - A016777 (n + 5)).toNat

end

end A048813.P10301153639118913512

/-! ## A048813.P10995545851682563269

`A244925(A167614(n+9)-A005408(n+6))`
-/

namespace A048813.P10995545851682563269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A167614 (n + 9) - A005408 (n + 6)).toNat

end

end A048813.P10995545851682563269

/-!
# A048814: Number of rooted trees with n nodes with every leaf at height 9.

The programs for A048814, there is no canonical definition to state claims against.
-/

/-! ## A048814.P4055184395333600302

`A244925(A000217(n+9)+10)`
-/

namespace A048814.P4055184395333600302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A000217 (n + 9) + 10).toNat

end

end A048814.P4055184395333600302

/-! ## A048814.P12489275548596209034

`A244925(eq[11, A131818(n+1)])`
-/

namespace A048814.P12489275548596209034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048814.P12489275548596209034

/-! ## A048814.P17966688484218920659

`A244925(A000124(n+10)-(n+1))`
-/

namespace A048814.P17966688484218920659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A000124 (n + 10) - (n + 1 : ℤ)).toNat

end

end A048814.P17966688484218920659

/-! ## A048814.P17909977175035407307

`A244925(A133263(n+10)-(n+2))`
-/

namespace A048814.P17909977175035407307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A133263 (n + 10) - (n + 2 : ℤ)).toNat

end

end A048814.P17909977175035407307

/-! ## A048814.P13634983065577763

`A244925(A167614(n+10)-A005843(n+7))`
-/

namespace A048814.P13634983065577763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A167614 (n + 10) - A005843 (n + 7)).toNat

end

end A048814.P13634983065577763

/-!
# A048815: Number of rooted trees with n nodes with every leaf at height 10.

The programs for A048815, there is no canonical definition to state claims against.
-/

/-! ## A048815.P11793184132640771721

`A244925(A167614(n+9)+8)`
-/

namespace A048815.P11793184132640771721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A167614 (n + 9) + 8).toNat

end

end A048815.P11793184132640771721

/-! ## A048815.P1777765162129866170

`A244925(A000217(n+10)+11)`
-/

namespace A048815.P1777765162129866170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A000217 (n + 10) + 11).toNat

end

end A048815.P1777765162129866170

/-! ## A048815.P3236066312864833705

`A244925(A000096(n+10)-(n-1))`
-/

namespace A048815.P3236066312864833705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A000096 (n + 10) - ((n : ℤ) - 1)).toNat

end

end A048815.P3236066312864833705

/-! ## A048815.P17884629468233974713

`A244925(A000124(n+11)-(n+1))`
-/

namespace A048815.P17884629468233974713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A000124 (n + 11) - (n + 1 : ℤ)).toNat

end

end A048815.P17884629468233974713

/-! ## A048815.P7466443991659007314

`A244925(A052905(n+9)-A004281(n+5))`
-/

namespace A048815.P7466443991659007314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (A052905 (n + 9) - A004281 (n + 5)).toNat

end

end A048815.P7466443991659007314

/-!
# A048816: Number of rooted trees with n nodes with every leaf at the same height.

The programs for A048816, there is no canonical definition to state claims against.
-/

/-! ## A048816.P9425074444738434445

`A245152(n+1)-∑[A185284(3*n+2)]-char[11]`
-/

namespace A048816.P9425074444738434445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (3 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245152 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A048816.P9425074444738434445

/-! ## A048816.P8943559176367783818

`A080528(n)-A026830(A185293(n))`
-/

namespace A048816.P8943559176367783818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080528 n - A026830 (A185293 n).toNat

end

end A048816.P8943559176367783818

/-! ## A048816.P16683355197062337661

`A080528(n)-A185284(A028815(n))`
-/

namespace A048816.P16683355197062337661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080528 n - A185284 (A028815 n).toNat

end

end A048816.P16683355197062337661

/-! ## A048816.P14324061125073322497

`A080528(n)-A101605(A172481(n))`
-/

namespace A048816.P14324061125073322497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080528 n - A101605 (A172481 n).toNat

end

end A048816.P14324061125073322497

/-! ## A048816.P10411811453768065915

`A080528(n)-A210455(A114298(n))`
-/

namespace A048816.P10411811453768065915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080528 n - A210455 (A114298 n).toNat

end

end A048816.P10411811453768065915

/-!
# A048817: Numerators of convergents to A058914.

The programs for A048817, there is no canonical definition to state claims against.
-/

/-! ## A048817.P6961299629485905808

`A391618(∑[record[A094441(3*(n+1))]])`
-/

namespace A048817.P6961299629485905808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094441 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391618 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048817.P6961299629485905808

/-! ## A048817.P5002363957592996776

`∑[A013987(∑[A179762(4^n+3^n)])]`
-/

namespace A048817.P5002363957592996776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179762 (4 ^ n + 3 ^ n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013987 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048817.P5002363957592996776

/-! ## A048817.P16503939315321770555

`A274515(A190915(n+1)+val(abs(1-2*n), 3))`
-/

namespace A048817.P16503939315321770555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274515 (A190915 (n + 1) + (SequenceMachineLib.valuation |1 - (2 * n : ℤ)|.toNat 3 : ℤ)).toNat

end

end A048817.P16503939315321770555

/-! ## A048817.P230993865361213130

`A178395(A004904(n+1))+A173722(n)`
-/

namespace A048817.P230993865361213130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178395 (A004904 (n + 1)).toNat + A173722 n

end

end A048817.P230993865361213130

/-!
# A048818: Denominators of convergents to A058914.

The programs for A048818, there is no canonical definition to state claims against.
-/

/-! ## A048818.P732187401668653205

`A303873(A299906(n))+A054540(A061219(n+1))`
-/

namespace A048818.P732187401668653205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303873 (A299906 n).toNat + A054540 (A061219 (n + 1)).toNat

end

end A048818.P732187401668653205

/-!
# A048820: Binary expansion of the Minkowski-Bower constant.

The programs for A048820, there is no canonical definition to state claims against.
-/

/-! ## A048820.P18091042569699158076

`ceil(Δ[A048817(n)/A048818(n)])`
-/

namespace A048820.P18091042569699158076
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048817 n : ℚ) / (A048818 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A048820.P18091042569699158076

/-! ## A048820.P2278695912423785828

`A359172(A237616(n)+10^∑{e}[n+1, #])`
-/

namespace A048820.P2278695912423785828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359172 (A237616 n + (10 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ)).toNat

end

end A048820.P2278695912423785828

/-! ## A048820.P8777718892490333751

`A288426(A063774(n+1)*A313502(n))`
-/

namespace A048820.P8777718892490333751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288426 (A063774 (n + 1) * A313502 n).toNat

end

end A048820.P8777718892490333751

/-! ## A048820.P16686936029839826654

`A286487(A006094(n+1)-A278700(n+1))`
-/

namespace A048820.P16686936029839826654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286487 (A006094 (n + 1) - A278700 (n + 1)).toNat

end

end A048820.P16686936029839826654

/-! ## A048820.P18412137826831166147

`A022300((n+4)^3+1)-1`
-/

namespace A048820.P18412137826831166147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022300 ((n + 4) ^ 3 + 1) - 1

end

end A048820.P18412137826831166147

/-!
# A048821: Lengths of runs in A048820.

The programs for A048821, there is no canonical definition to state claims against.
-/

/-! ## A048821.P10587285730214338373

`A058914(n+1)-C(2, n+2)`
-/

namespace A048821.P10587285730214338373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058914 (n + 1) - (Nat.choose 2 (n + 2) : ℤ)

end

end A048821.P10587285730214338373

/-! ## A048821.P16186950601796333096

`A058914(a(val(n, n+1))+n)` with `a(0)=1`
-/

namespace A048821.P16186950601796333096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A058914 (a (SequenceMachineLib.valuation n (n + 1)) + (n : ℤ)).toNat

end

end A048821.P16186950601796333096

/-! ## A048821.P12664658231104213666

`A058914(n+1)-A000007(n)`
-/

namespace A048821.P12664658231104213666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058914 (n + 1) - A000007 n

end

end A048821.P12664658231104213666

/-! ## A048821.P4730799608119654961

`A058914(A000040(n+1)²%8+n)`
-/

namespace A048821.P4730799608119654961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058914 (Int.tmod (A000040 (n + 1) ^ 2) 8 + (n : ℤ)).toNat

end

end A048821.P4730799608119654961

/-! ## A048821.P15875486621233230059

`A058914(n+1)-A010059(and(n, -n))`
-/

namespace A048821.P15875486621233230059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058914 (n + 1) - A010059 (Int.land (n : ℤ) (-(n : ℤ))).toNat

end

end A048821.P15875486621233230059

/-! ## A048821.P12898811888539402838

`A058914(n+1)/(A000007(2*n)+1)`
-/

namespace A048821.P12898811888539402838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058914 (n + 1) : ℚ) / (A000007 (2 * n) + 1 : ℚ)

end

end A048821.P12898811888539402838

/-! ## A048821.P945077379716087935

`A058914(A026741(A051755(n+2)))`
-/

namespace A048821.P945077379716087935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058914 (A026741 (A051755 (n + 2)).toNat).toNat

end

end A048821.P945077379716087935

/-! ## A048821.P6187255626944318372

`A058914(A055456(n+2))`
-/

namespace A048821.P6187255626944318372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058914 (A055456 (n + 2)).toNat

end

end A048821.P6187255626944318372

/-! ## A048821.P13418710679084649780

`A058914(n+1)-A106634(∑[n])%2`
-/

namespace A048821.P13418710679084649780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058914 (n + 1) - Int.tmod (A106634 (∑ j ∈ Finset.range (n + 1), f1 j)) 2

end

end A048821.P13418710679084649780

/-! ## A048821.P5125930072774532261

`A058914((n+1)*A014963(∑[n+3]))`
-/

namespace A048821.P5125930072774532261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058914 ((n + 1 : ℤ) * A014963 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A048821.P5125930072774532261

/-! ## A048821.P10822465603220722285

`A120221(n+2)`
-/

namespace A048821.P10822465603220722285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120221 (n + 2)

end

end A048821.P10822465603220722285

/-!
# A048822: a(n) = least k such that A048821(k) = n.

The programs for A048822, there is no canonical definition to state claims against.
-/

/-! ## A048822.P18354945110925942669

`record[A264789(record[A382025(n)])]`
-/

namespace A048822.P18354945110925942669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382025 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264789 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048822.P18354945110925942669

/-! ## A048822.P18166736675426227620

`A176506(∑[A144002(n)+2])`
-/

namespace A048822.P18166736675426227620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144002 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176506 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A048822.P18166736675426227620

/-!
# A048823: a(n) = value of n defined as follows: start with n and reach 2 by repeatedly either dividing by d where d <= the square root or by subtracting 1. The division steps are free, but subtracting 1 costs 1 point. The "value" of n is the smallest cost to reach 2.

The programs for A048823, there is no canonical definition to state claims against.
-/

/-! ## A048823.P8539109766357241364

`A051699(A185169(p?[A064989(n+1)]))`
-/

namespace A048823.P8539109766357241364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A185169 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A048823.P8539109766357241364

/-! ## A048823.P15357600277300561092

`A196563(A241344(p?[A037284(n+1)]))`
-/

namespace A048823.P15357600277300561092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A241344 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A048823.P15357600277300561092

/-! ## A048823.P9307308640897837933

`A284775(n+1)+A284775(A342551(n+1))`
-/

namespace A048823.P9307308640897837933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (n + 1) + A284775 (A342551 (n + 1)).toNat

end

end A048823.P9307308640897837933

/-! ## A048823.P6159756513329839867

`A280750(A103832(n)%A011974(n+1))`
-/

namespace A048823.P6159756513329839867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 (Int.tmod (A103832 n) (A011974 (n + 1))).toNat

end

end A048823.P6159756513329839867

/-! ## A048823.P4471653768222134112

`A327928(A000120(2*(n+2))^A295312(n+2))`
-/

namespace A048823.P4471653768222134112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327928 (SequenceMachineLib.roundAway ((A000120 (2 * (n + 2)) : ℚ) ^ (A295312 (n + 2) : ℤ))).toNat

end

end A048823.P4471653768222134112

/-!
# A048824: a(n) = least k such that A048823(n) = k.

The programs for A048824, there is no canonical definition to state claims against.
-/

/-! ## A048824.P4372383622859487764

`A335653(A059278(n+1))`
-/

namespace A048824.P4372383622859487764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335653 (A059278 (n + 1)).toNat

end

end A048824.P4372383622859487764

/-! ## A048824.P15395981892180725877

`p?[A303219(A302506(n+1))]`
-/

namespace A048824.P15395981892180725877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303219 (A302506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048824.P15395981892180725877

/-!
# A048825: Start with n and reach 2 by repeatedly either dividing by d where d <= the square root or by adding 1. The division steps are free, but adding 1 costs 1 point. a(n) is the smallest cost to reach 2.

The programs for A048825, there is no canonical definition to state claims against.
-/

/-! ## A048825.P3235842571110428961

`A191254((n+1)*A000048(n))`
-/

namespace A048825.P3235842571110428961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191254 ((n + 1 : ℤ) * A000048 n).toNat

end

end A048825.P3235842571110428961

/-! ## A048825.P11099572223381463003

`A065339(A304716(3*n+5)+n)`
-/

namespace A048825.P11099572223381463003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A304716 (3 * n + 5) + (n : ℤ)).toNat

end

end A048825.P11099572223381463003

/-! ## A048825.P18221134425560276943

`A242481(A138364(n)+A026747(n))`
-/

namespace A048825.P18221134425560276943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242481 (A138364 n + A026747 n).toNat

end

end A048825.P18221134425560276943

/-! ## A048825.P7696911036891550333

`A056624(n+1)%A146094(A038754(n))`
-/

namespace A048825.P7696911036891550333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056624 (n + 1)) (A146094 (A038754 n).toNat)

end

end A048825.P7696911036891550333

/-! ## A048825.P17133447156997131609

`A215750(A008965(n+1))%A324923(n+2)`
-/

namespace A048825.P17133447156997131609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215750 (A008965 (n + 1)).toNat) (A324923 (n + 2))

end

end A048825.P17133447156997131609

/-!
# A048826: a(n) = least k such that A048825(k) = n.

The programs for A048826, there is no canonical definition to state claims against.
-/

/-! ## A048826.P7522120400604335243

`p?[A134917(a(n-1))]` with `a(0)=2`
-/

namespace A048826.P7522120400604335243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A134917 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048826.P7522120400604335243

/-!
# A048829: Number of rooted identity game trees of height <=n, first player to reach to reach top wins. Second player wins.

The programs for A048829, there is no canonical definition to state claims against.
-/

/-! ## A048829.P13212221379874738306

`∏{d}[n!, gcd(8, #)]`
-/

namespace A048829.P13212221379874738306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Nat.gcd 8 d

end

end A048829.P13212221379874738306

/-!
# A048830: Number of rooted identity game trees of height <=n, first player to reach to reach top wins. First player wins.

The programs for A048830, there is no canonical definition to state claims against.
-/

/-! ## A048830.P11902807684321404351

`3*(n+1)*a(n-2)^a(n-1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A048830.P11902807684321404351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  3 * ((n + 1) * a (n - 2) ^ a (n - 1))

end

end A048830.P11902807684321404351

/-!
# A048831: Number of rooted identity game trees of height n, first player to reach to reach top wins. Second player wins.

The programs for A048831, there is no canonical definition to state claims against.
-/

/-! ## A048831.P6113044849004778607

`abs((C(n, 4)+1)^12-n)`
-/

namespace A048831.P6113044849004778607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((Nat.choose n 4 + 1) ^ 12 : ℤ) - (n : ℤ)|

end

end A048831.P6113044849004778607

/-!
# A048832: Number of rooted identity game trees of height n, first player to reach to reach top wins. First player wins.

The programs for A048832, there is no canonical definition to state claims against.
-/

/-! ## A048832.P7429138762820698255

`Δ[2^a(n-1)]-abs((C(n, 4)+1)^12-n)` with `a(0)=0`
-/

namespace A048832.P7429138762820698255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  2 ^ f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - |((Nat.choose n 4 + 1) ^ 12 : ℤ) - (n : ℤ)|

end

end A048832.P7429138762820698255

/-!
# A048833: Number of starting positions of Nim with 2n pieces such that 2nd player wins. Partitions of 2n such that xor-sum of partitions is 0.

The programs for A048833, there is no canonical definition to state claims against.
-/

/-! ## A048833.P9559199875112417158

`A000041(2*n)-A233810(2*n)`
-/

namespace A048833.P9559199875112417158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - A233810 (2 * n)

end

end A048833.P9559199875112417158

/-! ## A048833.P8618818571463634967

`A050314(C(Δ[n²], 2))`
-/

namespace A048833.P8618818571463634967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050314 (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2)

end

end A048833.P8618818571463634967

/-! ## A048833.P11197959048461618861

`A050314(n*Δ[n²])`
-/

namespace A048833.P11197959048461618861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050314 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A048833.P11197959048461618861

/-! ## A048833.P11639486681091984794

`abs(1-A050314(A014105(n)))+1`
-/

namespace A048833.P11639486681091984794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A050314 (A014105 n).toNat| + 1

end

end A048833.P11639486681091984794

/-! ## A048833.P13395962041836904240

`gcd(floor(1/(n+1)), A050314(A000217(2*n)))`
-/

namespace A048833.P13395962041836904240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A050314 (A000217 (2 * n)).toNat)

end

end A048833.P13395962041836904240

/-! ## A048833.P3167598160716226930

`gcd(A050314(A014105(n)), A285476(n))`
-/

namespace A048833.P3167598160716226930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050314 (A014105 n).toNat) (A285476 n)

end

end A048833.P3167598160716226930

/-! ## A048833.P5334332134012548868

`or(A000007(n), A050314(A014105(n)))`
-/

namespace A048833.P5334332134012548868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A050314 (A014105 n).toNat)

end

end A048833.P5334332134012548868

/-! ## A048833.P18336069486033638114

`A050314(A014105(n))+A000007(n+1)`
-/

namespace A048833.P18336069486033638114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050314 (A014105 n).toNat + A000007 (n + 1)

end

end A048833.P18336069486033638114

/-! ## A048833.P11482213560790878900

`A050314(A014105(n))+A008683(4*(n+1))`
-/

namespace A048833.P11482213560790878900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050314 (A014105 n).toNat + A008683 (4 * (n + 1))

end

end A048833.P11482213560790878900

/-! ## A048833.P873934671571622069

`A050314(A014105(n))^A014963(4*n+2)`
-/

namespace A048833.P873934671571622069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050314 (A014105 n).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A048833.P873934671571622069

/-!
# A048839: Numbers k dividing P(k)!, where P(k) is the largest prime factor of k.

The programs for A048839, the canonical program `A048839.P15681757506260330542` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048839 has offset 1).

The definition of A048839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048839.P5318752616372958655

`eq[0, A057108(n+2)]+2`
-/

namespace A048839.P5318752616372958655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057108 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A048839.P5318752616372958655

namespace A048839

/-- `eq[0, A057108(n+2)]+2` -/
def P5318752616372958655.Spec : Prop :=
  ∀ n, (P5318752616372958655.a n : ℤ) = A048839 (n + 1)

end A048839

/-! ## A048839.P3436488457351747640

`eq[0, A345951(n+2)]+2`
-/

namespace A048839.P3436488457351747640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345951 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A048839.P3436488457351747640

namespace A048839

/-- `eq[0, A345951(n+2)]+2` -/
def P3436488457351747640.Spec : Prop :=
  ∀ n, (P3436488457351747640.a n : ℤ) = A048839 (n + 1)

end A048839

/-! ## A048839.P15681757506260330542

`lt[A345940(n+2), 1]+2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A048839

/-- `lt[A345940(n+2), 1]+2` -/
def P15681757506260330542.Spec : Prop :=
  ∀ n, (P15681757506260330542.a n : ℤ) = A048839 (n + 1)

theorem P15681757506260330542.correct : P15681757506260330542.Spec := by
  intro n
  simp only [A048839, Nat.add_sub_cancel]

end A048839

/-! ## A048839.P18241906050024103546

`comp[∪[A057109(n+1), n²]]`
-/

namespace A048839.P18241906050024103546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057109 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A048839.P18241906050024103546

namespace A048839

/-- `comp[∪[A057109(n+1), n²]]` -/
def P18241906050024103546.Spec : Prop :=
  ∀ n, (P18241906050024103546.a n : ℤ) = A048839 (n + 1)

end A048839

/-! ## A048839.P5587296760469696354

`eq[1, A107286(n-A072480(n))]`
-/

namespace A048839.P5587296760469696354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 ((n : ℤ) - A072480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048839.P5587296760469696354

namespace A048839

/-- `eq[1, A107286(n-A072480(n))]` -/
def P5587296760469696354.Spec : Prop :=
  ∀ n, (P5587296760469696354.a n : ℤ) = A048839 (n + 1)

end A048839

/-! ## A048839.P5444992862987217182

`comp[∪[A000584(n), A057109(n+1)]]`
-/

namespace A048839.P5444992862987217182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057109 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A048839.P5444992862987217182

namespace A048839

/-- `comp[∪[A000584(n), A057109(n+1)]]` -/
def P5444992862987217182.Spec : Prop :=
  ∀ n, (P5444992862987217182.a n : ℤ) = A048839 (n + 1)

end A048839

/-! ## A048839.P6422439728418607908

`eq[1, A001222(A346088(n+1))]+1`
-/

namespace A048839.P6422439728418607908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A346088 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048839.P6422439728418607908

namespace A048839

/-- `eq[1, A001222(A346088(n+1))]+1` -/
def P6422439728418607908.Spec : Prop :=
  ∀ n, (P6422439728418607908.a n : ℤ) = A048839 (n + 1)

end A048839

/-! ## A048839.P9112129514854514786

`eq[1, A003415(n-A072480(n))]`
-/

namespace A048839.P9112129514854514786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 ((n : ℤ) - A072480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048839.P9112129514854514786

namespace A048839

/-- `eq[1, A003415(n-A072480(n))]` -/
def P9112129514854514786.Spec : Prop :=
  ∀ n, (P9112129514854514786.a n : ℤ) = A048839 (n + 1)

end A048839

/-! ## A048839.P14305502887046772548

`eq[2, A000005(A002034(n+1))]+1`
-/

namespace A048839.P14305502887046772548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002034 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048839.P14305502887046772548

namespace A048839

/-- `eq[2, A000005(A002034(n+1))]+1` -/
def P14305502887046772548.Spec : Prop :=
  ∀ n, (P14305502887046772548.a n : ℤ) = A048839 (n + 1)

end A048839

/-! ## A048839.P10892364032939912491

`eq[1, A001222(A002034(A000007(n)+n))]`
-/

namespace A048839.P10892364032939912491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002034 (A000007 n + (n : ℤ)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048839.P10892364032939912491

namespace A048839

/-- `eq[1, A001222(A002034(A000007(n)+n))]` -/
def P10892364032939912491.Spec : Prop :=
  ∀ n, (P10892364032939912491.a n : ℤ) = A048839 (n + 1)

end A048839

/-! ## A048839.P8534171103967346750

`eq[A010052(n), A345940(A138153(n+1))]`
-/

namespace A048839.P8534171103967346750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345940 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048839.P8534171103967346750

namespace A048839

/-- `eq[A010052(n), A345940(A138153(n+1))]` -/
def P8534171103967346750.Spec : Prop :=
  ∀ n, (P8534171103967346750.a n : ℤ) = A048839 (n + 1)

end A048839

/-! ## A048839.P15382202244854464825

`eq[A010057(n), A345940(A138153(n+1))]`
-/

namespace A048839.P15382202244854464825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345940 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048839.P15382202244854464825

namespace A048839

/-- `eq[A010057(n), A345940(A138153(n+1))]` -/
def P15382202244854464825.Spec : Prop :=
  ∀ n, (P15382202244854464825.a n : ℤ) = A048839 (n + 1)

end A048839

/-! ## A048839.P5531256213209228532

`eq[A010052(n), A345940(A010052(n)+n)]`
-/

namespace A048839.P5531256213209228532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345940 (A010052 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048839.P5531256213209228532

namespace A048839

/-- `eq[A010052(n), A345940(A010052(n)+n)]` -/
def P5531256213209228532.Spec : Prop :=
  ∀ n, (P5531256213209228532.a n : ℤ) = A048839 (n + 1)

end A048839

/-! ## A048839.P9782651791370457192

`eq[A010057(n), A345940(A010057(n)+n)]`
-/

namespace A048839.P9782651791370457192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345940 (A010057 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048839.P9782651791370457192

namespace A048839

/-- `eq[A010057(n), A345940(A010057(n)+n)]` -/
def P9782651791370457192.Spec : Prop :=
  ∀ n, (P9782651791370457192.a n : ℤ) = A048839 (n + 1)

end A048839

/-! ## A048839.P4682653805843961363

`eq[1, A115118(n-A072480(n))]`
-/

namespace A048839.P4682653805843961363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115118 ((n : ℤ) - A072480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048839.P4682653805843961363

namespace A048839

/-- `eq[1, A115118(n-A072480(n))]` -/
def P4682653805843961363.Spec : Prop :=
  ∀ n, (P4682653805843961363.a n : ℤ) = A048839 (n + 1)

end A048839

/-! ## A048839.P7303959684392088077

`eq[2, A001222(A002034(n+1)²)]+1`
-/

namespace A048839.P7303959684392088077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002034 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048839.P7303959684392088077

namespace A048839

/-- `eq[2, A001222(A002034(n+1)²)]+1` -/
def P7303959684392088077.Spec : Prop :=
  ∀ n, (P7303959684392088077.a n : ℤ) = A048839 (n + 1)

end A048839

/-!
# A048840: Expansion of (1 - x + 2*x^2 + 2*x^3 - x^4 - x^5)/(1-x)^3.

The programs for A048840, the canonical program `A048840.P11769933755745049793` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048840 has offset 0).

The definition of A048840 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+2x^2+2x^3-x^4-x^5)/(1-3x+3x^2-x^3))` (program `A048840.P11769933755745049793`, by `A048840.P11769933755745049793.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048840.P11769933755745049793

`ogf((1-x+2x^2+2x^3-x^4-x^5)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A048840

/-- `ogf((1-x+2x^2+2x^3-x^4-x^5)/(1-3x+3x^2-x^3))` -/
def P11769933755745049793.Spec : Prop :=
  ∀ n, P11769933755745049793.a n = A048840 n

theorem P11769933755745049793.correct : P11769933755745049793.Spec := by
  intro n
  simp only [A048840]

end A048840

/-! ## A048840.P11138214720422181212

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=12, a(4)=22, a(5)=34`
-/

namespace A048840.P11138214720422181212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 12, 22, 34] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A048840.P11138214720422181212

namespace A048840

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P11138214720422181212.Spec : Prop :=
  ∀ n, P11138214720422181212.a n = A048840 n

end A048840

/-! ## A048840.P13003667667120116990

`∑[2*(n+1)-C(3, n)]`
-/

namespace A048840.P13003667667120116990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (Nat.choose 3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048840.P13003667667120116990

namespace A048840

/-- `∑[2*(n+1)-C(3, n)]` -/
def P13003667667120116990.Spec : Prop :=
  ∀ n, P13003667667120116990.a n = A048840 n

end A048840

/-! ## A048840.P3481091138743829121

`∑[2-(C(3, n)-2*n)]`
-/

namespace A048840.P3481091138743829121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((Nat.choose 3 n : ℤ) - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048840.P3481091138743829121

namespace A048840

/-- `∑[2-(C(3, n)-2*n)]` -/
def P3481091138743829121.Spec : Prop :=
  ∀ n, P3481091138743829121.a n = A048840 n

end A048840

/-! ## A048840.P17884105963568070375

`∑[2-C(3, n)+n+n]`
-/

namespace A048840.P17884105963568070375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose 3 n : ℤ) + (n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048840.P17884105963568070375

namespace A048840

/-- `∑[2-C(3, n)+n+n]` -/
def P17884105963568070375.Spec : Prop :=
  ∀ n, P17884105963568070375.a n = A048840 n

end A048840

/-! ## A048840.P7358389268587155192

`record[a(n-1)+2*n]` with `a(0)=1, a(1)=2, a(2)=5, a(3)=4`
-/

namespace A048840.P7358389268587155192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5, 4] fun n f1 =>
  f1 (n - 1) + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048840.P7358389268587155192

namespace A048840

/-- `record[a(n-1)+2*n]` -/
def P7358389268587155192.Spec : Prop :=
  ∀ n, (P7358389268587155192.a n : ℤ) = A048840 n

end A048840

/-! ## A048840.P17270279724122266898

`or(1, a(n-1))+2*n+1` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A048840.P17270279724122266898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  Nat.lor 1 (a (n - 1)) + (2 * n + 1)

end

end A048840.P17270279724122266898

namespace A048840

/-- `or(1, a(n-1))+2*n+1` -/
def P17270279724122266898.Spec : Prop :=
  ∀ n, (P17270279724122266898.a n : ℤ) = A048840 n

end A048840

/-! ## A048840.P8723768711865999112

`∑[2*(n+1)-floor(3/a(n-1))]` with `a(0)=1`
-/

namespace A048840.P8723768711865999112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 * (n + 1) : ℤ) - ⌊3 / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048840.P8723768711865999112

namespace A048840

/-- `∑[2*(n+1)-floor(3/a(n-1))]` -/
def P8723768711865999112.Spec : Prop :=
  ∀ n, P8723768711865999112.a n = A048840 n

end A048840

/-! ## A048840.P14293970598440319081

`∑[n+1-floor(3/a(n-1)-(n+1))]` with `a(0)=1`
-/

namespace A048840.P14293970598440319081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℤ) - ⌊3 / (f1 (n - 1) : ℚ) - (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048840.P14293970598440319081

namespace A048840

/-- `∑[n+1-floor(3/a(n-1)-(n+1))]` -/
def P14293970598440319081.Spec : Prop :=
  ∀ n, P14293970598440319081.a n = A048840 n

end A048840

/-! ## A048840.P10223706813244650378

`(n+1)*(n+2)-A115291(n)`
-/

namespace A048840.P10223706813244650378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) : ℤ) - A115291 n

end

end A048840.P10223706813244650378

namespace A048840

/-- `(n+1)*(n+2)-A115291(n)` -/
def P10223706813244650378.Spec : Prop :=
  ∀ n, P10223706813244650378.a n = A048840 n

end A048840

/-! ## A048840.P7659429426929984511

`A008486(A289207(n))+n²`
-/

namespace A048840.P7659429426929984511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A289207 n).toNat + (n ^ 2 : ℤ)

end

end A048840.P7659429426929984511

namespace A048840

/-- `A008486(A289207(n))+n²` -/
def P7659429426929984511.Spec : Prop :=
  ∀ n, P7659429426929984511.a n = A048840 n

end A048840

/-! ## A048840.P4203592878518643759

`A289207(A004273(n))+A004281(∑[n])`
-/

namespace A048840.P4203592878518643759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A004273 n).toNat + A004281 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048840.P4203592878518643759

namespace A048840

/-- `A289207(A004273(n))+A004281(∑[n])` -/
def P4203592878518643759.Spec : Prop :=
  ∀ n, P4203592878518643759.a n = A048840 n

end A048840

/-! ## A048840.P17245234621686802544

`(A139544(n+1)+A139544(A000124(n)))/2`
-/

namespace A048840.P17245234621686802544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139544 (n + 1) + A139544 (A000124 n).toNat : ℚ) / 2

end

end A048840.P17245234621686802544

namespace A048840

/-- `(A139544(n+1)+A139544(A000124(n)))/2` -/
def P17245234621686802544.Spec : Prop :=
  ∀ n, P17245234621686802544.a n = (A048840 n : ℚ)

end A048840

/-! ## A048840.P10395383502762845192

`A004274(n)+A004274(A028310(A161680(n+1)))`
-/

namespace A048840.P10395383502762845192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n + A004274 (A028310 (A161680 (n + 1)).toNat).toNat

end

end A048840.P10395383502762845192

namespace A048840

/-- `A004274(n)+A004274(A028310(A161680(n+1)))` -/
def P10395383502762845192.Spec : Prop :=
  ∀ n, P10395383502762845192.a n = A048840 n

end A048840

/-! ## A048840.P4353955557001613383

`A004272(A212342(n+1))`
-/

namespace A048840.P4353955557001613383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 (A212342 (n + 1)).toNat

end

end A048840.P4353955557001613383

namespace A048840

/-- `A004272(A212342(n+1))` -/
def P4353955557001613383.Spec : Prop :=
  ∀ n, P4353955557001613383.a n = A048840 n

end A048840

/-! ## A048840.P203376046477887199

`A097950(A267874(n)-1)+n`
-/

namespace A048840.P203376046477887199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097950 (A267874 n - 1).toNat + (n : ℤ)

end

end A048840.P203376046477887199

namespace A048840

/-- `A097950(A267874(n)-1)+n` -/
def P203376046477887199.Spec : Prop :=
  ∀ n, P203376046477887199.a n = A048840 n

end A048840

/-!
# A048842: Least positive integer k for which 13^n divides k!.

The programs for A048842, there is no canonical definition to state claims against.
-/

/-! ## A048842.P15464660892063874786

`A113801(A020639(A115386(n+1)))*A274933(n+1)`
-/

namespace A048842.P15464660892063874786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (A020639 (A115386 (n + 1)).toNat).toNat * A274933 (n + 1)

end

end A048842.P15464660892063874786

/-!
# A048847: 

The programs for A048847, there is no canonical definition to state claims against.
-/

/-! ## A048847.P951839093924765264

`A019519(A046036(n+1))`
-/

namespace A048847.P951839093924765264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019519 (A046036 (n + 1)).toNat

end

end A048847.P951839093924765264

/-!
# A048848: a(n) = prime(phi(n)).

The programs for A048848, the canonical program `A048848.P6937858258724486244` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048848 has offset 1).

The definition of A048848 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000010(n+1))` (program `A048848.P6937858258724486244`, by `A048848.P6937858258724486244.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048848.P6937858258724486244

`A000040(A000010(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A048848

/-- `A000040(A000010(n+1))` -/
def P6937858258724486244.Spec : Prop :=
  ∀ n, P6937858258724486244.a n = A048848 (n + 1)

theorem P6937858258724486244.correct : P6937858258724486244.Spec := by
  intro n
  simp only [A048848, Nat.add_sub_cancel]

end A048848

/-! ## A048848.P10075340735743381679

`A000040((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A048848.P10075340735743381679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A048848.P10075340735743381679

namespace A048848

/-- `A000040((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P10075340735743381679.Spec : Prop :=
  ∀ n, P10075340735743381679.a n = A048848 (n + 1)

end A048848

/-! ## A048848.P13351679470840149292

`A006093((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])+1`
-/

namespace A048848.P13351679470840149292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat + 1

end

end A048848.P13351679470840149292

namespace A048848

/-- `A006093((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])+1` -/
def P13351679470840149292.Spec : Prop :=
  ∀ n, P13351679470840149292.a n = A048848 (n + 1)

end A048848

/-! ## A048848.P10363684033487322843

`A000040(Δ[A002088(n)])`
-/

namespace A048848.P10363684033487322843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (n + 1) - f1 n).toNat

end

end A048848.P10363684033487322843

namespace A048848

/-- `A000040(Δ[A002088(n)])` -/
def P10363684033487322843.Spec : Prop :=
  ∀ n, P10363684033487322843.a n = A048848 (n + 1)

end A048848

/-! ## A048848.P10588345081827826125

`A000040(Δ[A005728(n)])`
-/

namespace A048848.P10588345081827826125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (n + 1) - f1 n).toNat

end

end A048848.P10588345081827826125

namespace A048848

/-- `A000040(Δ[A005728(n)])` -/
def P10588345081827826125.Spec : Prop :=
  ∀ n, P10588345081827826125.a n = A048848 (n + 1)

end A048848

/-! ## A048848.P11783656541925056205

`A008578(A039649(n+1))`
-/

namespace A048848.P11783656541925056205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A039649 (n + 1)).toNat

end

end A048848.P11783656541925056205

namespace A048848

/-- `A008578(A039649(n+1))` -/
def P11783656541925056205.Spec : Prop :=
  ∀ n, P11783656541925056205.a n = A048848 (n + 1)

end A048848

/-! ## A048848.P12945990044429919216

`A000040(sqrt(A127473(n+1)))`
-/

namespace A048848.P12945990044429919216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

end

end A048848.P12945990044429919216

namespace A048848

/-- `A000040(sqrt(A127473(n+1)))` -/
def P12945990044429919216.Spec : Prop :=
  ∀ n, P12945990044429919216.a n = A048848 (n + 1)

end A048848

/-! ## A048848.P4941411680183076162

`A006093(Δ[A002088(n)])+1`
-/

namespace A048848.P4941411680183076162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (f1 (n + 1) - f1 n).toNat + 1

end

end A048848.P4941411680183076162

namespace A048848

/-- `A006093(Δ[A002088(n)])+1` -/
def P4941411680183076162.Spec : Prop :=
  ∀ n, P4941411680183076162.a n = A048848 (n + 1)

end A048848

/-! ## A048848.P14859851439658192441

`A006093(Δ[A005728(n)])+1`
-/

namespace A048848.P14859851439658192441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (f1 (n + 1) - f1 n).toNat + 1

end

end A048848.P14859851439658192441

namespace A048848

/-- `A006093(Δ[A005728(n)])+1` -/
def P14859851439658192441.Spec : Prop :=
  ∀ n, P14859851439658192441.a n = A048848 (n + 1)

end A048848

/-! ## A048848.P10665473055146775053

`A008578(A000010(n+1)+1)`
-/

namespace A048848.P10665473055146775053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000010 (n + 1) + 1).toNat

end

end A048848.P10665473055146775053

namespace A048848

/-- `A008578(A000010(n+1)+1)` -/
def P10665473055146775053.Spec : Prop :=
  ∀ n, P10665473055146775053.a n = A048848 (n + 1)

end A048848

/-! ## A048848.P358689809838239118

`A000040(A109606(n+1)+1)`
-/

namespace A048848.P358689809838239118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A109606 (n + 1) + 1).toNat

end

end A048848.P358689809838239118

namespace A048848

/-- `A000040(A109606(n+1)+1)` -/
def P358689809838239118.Spec : Prop :=
  ∀ n, P358689809838239118.a n = A048848 (n + 1)

theorem P358689809838239118.correct : P358689809838239118.Spec := by
  intro n
  simp only [A048848, Nat.add_sub_cancel, A048848.P358689809838239118.a, A048848.P6937858258724486244.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048848

/-! ## A048848.P16994940391546616511

`A182986(A000010(n+1)+1)`
-/

namespace A048848.P16994940391546616511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A000010 (n + 1) + 1).toNat

end

end A048848.P16994940391546616511

namespace A048848

/-- `A182986(A000010(n+1)+1)` -/
def P16994940391546616511.Spec : Prop :=
  ∀ n, P16994940391546616511.a n = A048848 (n + 1)

end A048848

/-! ## A048848.P4089401595660766274

`A000040(A039649(n+1)-1)`
-/

namespace A048848.P4089401595660766274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A039649 (n + 1) - 1).toNat

end

end A048848.P4089401595660766274

namespace A048848

/-- `A000040(A039649(n+1)-1)` -/
def P4089401595660766274.Spec : Prop :=
  ∀ n, P4089401595660766274.a n = A048848 (n + 1)

theorem P4089401595660766274.correct : P4089401595660766274.Spec := by
  intro n
  simp only [A048848, Nat.add_sub_cancel, A048848.P4089401595660766274.a, A048848.P6937858258724486244.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048848

/-! ## A048848.P13798734626879943905

`A158611(A000010(n+1)+2)`
-/

namespace A048848.P13798734626879943905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A000010 (n + 1) + 2).toNat

end

end A048848.P13798734626879943905

namespace A048848

/-- `A158611(A000010(n+1)+2)` -/
def P13798734626879943905.Spec : Prop :=
  ∀ n, P13798734626879943905.a n = A048848 (n + 1)

end A048848

/-! ## A048848.P771955042298004639

`A000040(A349137(2*n+1))`
-/

namespace A048848.P771955042298004639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A349137 (2 * n + 1)).toNat

end

end A048848.P771955042298004639

namespace A048848

/-- `A000040(A349137(2*n+1))` -/
def P771955042298004639.Spec : Prop :=
  ∀ n, P771955042298004639.a n = A048848 (n + 1)

end A048848

/-! ## A048848.P13984813485457342320

`A000040(n-A219428(n+1))`
-/

namespace A048848.P13984813485457342320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n : ℤ) - A219428 (n + 1)).toNat

end

end A048848.P13984813485457342320

namespace A048848

/-- `A000040(n-A219428(n+1))` -/
def P13984813485457342320.Spec : Prop :=
  ∀ n, P13984813485457342320.a n = A048848 (n + 1)

theorem P13984813485457342320.correct : P13984813485457342320.Spec := by
  intro n
  simp only [A048848, Nat.add_sub_cancel, A048848.P13984813485457342320.a, A048848.P6937858258724486244.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A219428, A219428.P9184341513320465947.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048848

/-! ## A048848.P1084197446183654617

`A006093(n+1)-A036553(n+1)`
-/

namespace A048848.P1084197446183654617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A036553 (n + 1)

end

end A048848.P1084197446183654617

namespace A048848

/-- `A006093(n+1)-A036553(n+1)` -/
def P1084197446183654617.Spec : Prop :=
  ∀ n, P1084197446183654617.a n = A048848 (n + 1)

end A048848

/-! ## A048848.P12447705685752179034

`A000040(1-A051953(n+1)+n)`
-/

namespace A048848.P12447705685752179034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 - A051953 (n + 1) + (n : ℤ)).toNat

end

end A048848.P12447705685752179034

namespace A048848

/-- `A000040(1-A051953(n+1)+n)` -/
def P12447705685752179034.Spec : Prop :=
  ∀ n, P12447705685752179034.a n = A048848 (n + 1)

theorem P12447705685752179034.correct : P12447705685752179034.Spec := by
  intro n
  simp only [A048848, Nat.add_sub_cancel, A048848.P12447705685752179034.a, A048848.P6937858258724486244.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048848

/-! ## A048848.P10340259114737108688

`A048849(n+1)-A006093(n+1)`
-/

namespace A048848.P10340259114737108688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048849 (n + 1) - A006093 (n + 1)

end

end A048848.P10340259114737108688

namespace A048848

/-- `A048849(n+1)-A006093(n+1)` -/
def P10340259114737108688.Spec : Prop :=
  ∀ n, P10340259114737108688.a n = A048848 (n + 1)

end A048848

/-! ## A048848.P1984899605091412509

`A000040(A121048(n+1)-(n+1))`
-/

namespace A048848.P1984899605091412509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A121048 (n + 1) - (n + 1 : ℤ)).toNat

end

end A048848.P1984899605091412509

namespace A048848

/-- `A000040(A121048(n+1)-(n+1))` -/
def P1984899605091412509.Spec : Prop :=
  ∀ n, P1984899605091412509.a n = A048848 (n + 1)

theorem P1984899605091412509.correct : P1984899605091412509.Spec := by
  intro n
  simp only [A048848, Nat.add_sub_cancel, A048848.P1984899605091412509.a, A048848.P6937858258724486244.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A121048, A121048.P10222907602682812102.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048848

/-!
# A048849: a(n) = prime(phi(n)) + phi(prime(n)).

The programs for A048849, the canonical program `A048849.P7161606125274033491` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048849 has offset 1).

The definition of A048849 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000010(n+1))+A000010(A000040(n+1))` (program `A048849.P7161606125274033491`, by `A048849.P7161606125274033491.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048849.P7161606125274033491

`A000040(A000010(n+1))+A000010(A000040(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A048849

/-- `A000040(A000010(n+1))+A000010(A000040(n+1))` -/
def P7161606125274033491.Spec : Prop :=
  ∀ n, P7161606125274033491.a n = A048849 (n + 1)

theorem P7161606125274033491.correct : P7161606125274033491.Spec := by
  intro n
  simp only [A048849, Nat.add_sub_cancel]

end A048849

/-! ## A048849.P2641125424009730594

`A048848(n+1)+A006093(n+1)`
-/

namespace A048849.P2641125424009730594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048848 (n + 1) + A006093 (n + 1)

end

end A048849.P2641125424009730594

namespace A048849

/-- `A048848(n+1)+A006093(n+1)` -/
def P2641125424009730594.Spec : Prop :=
  ∀ n, P2641125424009730594.a n = A048849 (n + 1)

end A048849

/-! ## A048849.P8690077275898553840

`A037168(n+1)-A036553(n+1)`
-/

namespace A048849.P8690077275898553840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (n + 1) - A036553 (n + 1)

end

end A048849.P8690077275898553840

namespace A048849

/-- `A037168(n+1)-A036553(n+1)` -/
def P8690077275898553840.Spec : Prop :=
  ∀ n, P8690077275898553840.a n = A048849 (n + 1)

end A048849

/-! ## A048849.P16055688786580637033

`A000040(n+1)+A048848(n+1)-1`
-/

namespace A048849.P16055688786580637033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A048848 (n + 1) - 1)

end

end A048849.P16055688786580637033

namespace A048849

/-- `A000040(n+1)+A048848(n+1)-1` -/
def P16055688786580637033.Spec : Prop :=
  ∀ n, P16055688786580637033.a n = A048849 (n + 1)

end A048849

/-! ## A048849.P1011248764406612569

`A036553(n+1)+2*A048848(n+1)`
-/

namespace A048849.P1011248764406612569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036553 (n + 1) + 2 * A048848 (n + 1)

end

end A048849.P1011248764406612569

namespace A048849

/-- `A036553(n+1)+2*A048848(n+1)` -/
def P1011248764406612569.Spec : Prop :=
  ∀ n, P1011248764406612569.a n = A048849 (n + 1)

theorem P1011248764406612569.correct : P1011248764406612569.Spec := by
  intro n
  simp only [A048849, Nat.add_sub_cancel, A048849.P1011248764406612569.a, A048849.P7161606125274033491.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A036553, A036553.P13963425937550179717.a, A048848, A048848.P6937858258724486244.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048849

/-! ## A048849.P11832423887435426655

`2*A006093(n+1)-A036553(n+1)`
-/

namespace A048849.P11832423887435426655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006093 (n + 1) - A036553 (n + 1)

end

end A048849.P11832423887435426655

namespace A048849

/-- `2*A006093(n+1)-A036553(n+1)` -/
def P11832423887435426655.Spec : Prop :=
  ∀ n, P11832423887435426655.a n = A048849 (n + 1)

end A048849

/-! ## A048849.P18303805723994616719

`A006093(n+1)+A000040(Δ[A002088(n)])`
-/

namespace A048849.P18303805723994616719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + A000040 (f1 (n + 1) - f1 n).toNat

end

end A048849.P18303805723994616719

namespace A048849

/-- `A006093(n+1)+A000040(Δ[A002088(n)])` -/
def P18303805723994616719.Spec : Prop :=
  ∀ n, P18303805723994616719.a n = A048849 (n + 1)

end A048849

/-! ## A048849.P13860068787953798055

`A006093(n+1)+A000040(Δ[A005728(n)])`
-/

namespace A048849.P13860068787953798055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + A000040 (f1 (n + 1) - f1 n).toNat

end

end A048849.P13860068787953798055

namespace A048849

/-- `A006093(n+1)+A000040(Δ[A005728(n)])` -/
def P13860068787953798055.Spec : Prop :=
  ∀ n, P13860068787953798055.a n = A048849 (n + 1)

end A048849

/-! ## A048849.P2925088202113744977

`A006093(A000010(n+1))+A000040(n+1)`
-/

namespace A048849.P2925088202113744977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A000010 (n + 1)).toNat + A000040 (n + 1)

end

end A048849.P2925088202113744977

namespace A048849

/-- `A006093(A000010(n+1))+A000040(n+1)` -/
def P2925088202113744977.Spec : Prop :=
  ∀ n, P2925088202113744977.a n = A048849 (n + 1)

end A048849

/-! ## A048849.P12171647066009186439

`A040976(A000010(n+1))+A008864(n+1)`
-/

namespace A048849.P12171647066009186439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A000010 (n + 1)).toNat + A008864 (n + 1)

end

end A048849.P12171647066009186439

namespace A048849

/-- `A040976(A000010(n+1))+A008864(n+1)` -/
def P12171647066009186439.Spec : Prop :=
  ∀ n, P12171647066009186439.a n = A048849 (n + 1)

end A048849

/-! ## A048849.P3306689177125749439

`A006093(A000010(n+1))+A006093(n+1)+1`
-/

namespace A048849.P3306689177125749439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A000010 (n + 1)).toNat + (A006093 (n + 1) + 1)

end

end A048849.P3306689177125749439

namespace A048849

/-- `A006093(A000010(n+1))+A006093(n+1)+1` -/
def P3306689177125749439.Spec : Prop :=
  ∀ n, P3306689177125749439.a n = A048849 (n + 1)

end A048849

/-! ## A048849.P9784069145843194286

`A006093(n+1)+A000040(A109606(n+1)+1)`
-/

namespace A048849.P9784069145843194286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + A000040 (A109606 (n + 1) + 1).toNat

end

end A048849.P9784069145843194286

namespace A048849

/-- `A006093(n+1)+A000040(A109606(n+1)+1)` -/
def P9784069145843194286.Spec : Prop :=
  ∀ n, P9784069145843194286.a n = A048849 (n + 1)

end A048849

/-! ## A048849.P6707189590095680589

`A006093(n+1)+A000040(A039649(n+1)-1)`
-/

namespace A048849.P6707189590095680589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + A000040 (A039649 (n + 1) - 1).toNat

end

end A048849.P6707189590095680589

namespace A048849

/-- `A006093(n+1)+A000040(A039649(n+1)-1)` -/
def P6707189590095680589.Spec : Prop :=
  ∀ n, P6707189590095680589.a n = A048849 (n + 1)

end A048849

/-! ## A048849.P4525233619960525442

`A006093(n+1)+A000040(n-A219428(n+1))`
-/

namespace A048849.P4525233619960525442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + A000040 ((n : ℤ) - A219428 (n + 1)).toNat

end

end A048849.P4525233619960525442

namespace A048849

/-- `A006093(n+1)+A000040(n-A219428(n+1))` -/
def P4525233619960525442.Spec : Prop :=
  ∀ n, P4525233619960525442.a n = A048849 (n + 1)

end A048849

/-! ## A048849.P7267293697345634115

`A000040(n+1)+A000040(A109606(n+1)+1)-1`
-/

namespace A048849.P7267293697345634115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A000040 (A109606 (n + 1) + 1).toNat - 1)

end

end A048849.P7267293697345634115

namespace A048849

/-- `A000040(n+1)+A000040(A109606(n+1)+1)-1` -/
def P7267293697345634115.Spec : Prop :=
  ∀ n, P7267293697345634115.a n = A048849 (n + 1)

end A048849

/-! ## A048849.P12396084636059770157

`A000040(n+1)+A000010(A048848(n+1))`
-/

namespace A048849.P12396084636059770157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000010 (A048848 (n + 1)).toNat

end

end A048849.P12396084636059770157

namespace A048849

/-- `A000040(n+1)+A000010(A048848(n+1))` -/
def P12396084636059770157.Spec : Prop :=
  ∀ n, P12396084636059770157.a n = A048849 (n + 1)

end A048849

/-! ## A048849.P3143717319519138244

`A048848(n+1)+record[A000010(n+1)]`
-/

namespace A048849.P3143717319519138244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048848 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048849.P3143717319519138244

namespace A048849

/-- `A048848(n+1)+record[A000010(n+1)]` -/
def P3143717319519138244.Spec : Prop :=
  ∀ n, P3143717319519138244.a n = A048849 (n + 1)

end A048849

/-! ## A048849.P9727131528899095926

`A151800(A006093(n+1))+A006093(A109606(n+1)+1)`
-/

namespace A048849.P9727131528899095926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A006093 (n + 1)).toNat + A006093 (A109606 (n + 1) + 1).toNat

end

end A048849.P9727131528899095926

namespace A048849

/-- `A151800(A006093(n+1))+A006093(A109606(n+1)+1)` -/
def P9727131528899095926.Spec : Prop :=
  ∀ n, P9727131528899095926.a n = A048849 (n + 1)

end A048849

/-!
# A048851: Length of hypotenuse squared in right triangle formed by a prime spiral plotted in Cartesian coordinates.

The programs for A048851, the canonical program `A048851.P1853448986789239219` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048851 has offset 1).

The definition of A048851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048851.P4277979254587985474

`A001248(n+1)+A001248(round(sqrt(n²+1)))`
-/

namespace A048851.P4277979254587985474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + A001248 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A048851.P4277979254587985474

namespace A048851

/-- `A001248(n+1)+A001248(round(sqrt(n²+1)))` -/
def P4277979254587985474.Spec : Prop :=
  ∀ n, P4277979254587985474.a n = A048851 (n + 1)

end A048851

/-! ## A048851.P11118172293767356123

`A084920(n+1)+A066872(A028310(n))`
-/

namespace A048851.P11118172293767356123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) + A066872 (A028310 n).toNat

end

end A048851.P11118172293767356123

namespace A048851

/-- `A084920(n+1)+A066872(A028310(n))` -/
def P11118172293767356123.Spec : Prop :=
  ∀ n, P11118172293767356123.a n = A048851 (n + 1)

theorem P11118172293767356123.correct : P11118172293767356123.Spec := by
  intro n
  simp only [A048851, Nat.add_sub_cancel, A048851.P11118172293767356123.a, A048851.P1853448986789239219.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A028310, A028310.P18130301328277559831.a, A066872, A066872.P16166098773502812344.a, A084920, A084920.P13392903182497119137.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048851

/-! ## A048851.P1853448986789239219

`A000040(n+1)²+A000040(A028310(n))²`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048851

/-- `A000040(n+1)²+A000040(A028310(n))²` -/
def P1853448986789239219.Spec : Prop :=
  ∀ n, P1853448986789239219.a n = A048851 (n + 1)

theorem P1853448986789239219.correct : P1853448986789239219.Spec := by
  intro n
  simp only [A048851, Nat.add_sub_cancel]

end A048851

/-! ## A048851.P1911320373844609470

`(A000010(A158611(n+2))+1)²+(A040976(n+1)+2)²`
-/

namespace A048851.P1911320373844609470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000010 (A158611 (n + 2)).toNat + 1) ^ 2 + (A040976 (n + 1) + 2) ^ 2

end

end A048851.P1911320373844609470

namespace A048851

/-- `(A000010(A158611(n+2))+1)²+(A040976(n+1)+2)²` -/
def P1911320373844609470.Spec : Prop :=
  ∀ n, P1911320373844609470.a n = A048851 (n + 1)

end A048851

/-! ## A048851.P9847554450431235900

`A000040(n+1)²+A006530(A001747(n+1))²`
-/

namespace A048851.P9847554450431235900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 + A006530 (A001747 (n + 1)).toNat ^ 2

end

end A048851.P9847554450431235900

namespace A048851

/-- `A000040(n+1)²+A006530(A001747(n+1))²` -/
def P9847554450431235900.Spec : Prop :=
  ∀ n, P9847554450431235900.a n = A048851 (n + 1)

end A048851

/-! ## A048851.P9470725097434132663

`A162753(2*n+1)²+A008578(n+2)²`
-/

namespace A048851.P9470725097434132663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (2 * n + 1) ^ 2 + A008578 (n + 2) ^ 2

end

end A048851.P9470725097434132663

namespace A048851

/-- `A162753(2*n+1)²+A008578(n+2)²` -/
def P9470725097434132663.Spec : Prop :=
  ∀ n, P9470725097434132663.a n = A048851 (n + 1)

end A048851

/-! ## A048851.P16171830974153030660

`A000040(n+1)²+p?[A028391(n)]²`
-/

namespace A048851.P16171830974153030660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A048851.P16171830974153030660

namespace A048851

/-- `A000040(n+1)²+p?[A028391(n)]²` -/
def P16171830974153030660.Spec : Prop :=
  ∀ n, P16171830974153030660.a n = A048851 (n + 1)

end A048851

/-! ## A048851.P16926073385992256824

`A001248(n+1)+p?[A056847(A056847(n))]²`
-/

namespace A048851.P16926073385992256824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A056847 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A048851.P16926073385992256824

namespace A048851

/-- `A001248(n+1)+p?[A056847(A056847(n))]²` -/
def P16926073385992256824.Spec : Prop :=
  ∀ n, P16926073385992256824.a n = A048851 (n + 1)

end A048851

/-! ## A048851.P16340328144253352518

`A000040(n+1)²+p?[A004523(n)]²`
-/

namespace A048851.P16340328144253352518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A048851.P16340328144253352518

namespace A048851

/-- `A000040(n+1)²+p?[A004523(n)]²` -/
def P16340328144253352518.Spec : Prop :=
  ∀ n, P16340328144253352518.a n = A048851 (n + 1)

end A048851

/-! ## A048851.P1762003962727733582

`A000040(n+1)²+p?[A006165(n+1)]²`
-/

namespace A048851.P1762003962727733582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A048851.P1762003962727733582

namespace A048851

/-- `A000040(n+1)²+p?[A006165(n+1)]²` -/
def P1762003962727733582.Spec : Prop :=
  ∀ n, P1762003962727733582.a n = A048851 (n + 1)

end A048851

/-! ## A048851.P11073920430383893112

`A000040(n+1)²+p?[A115273(n)]²`
-/

namespace A048851.P11073920430383893112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A048851.P11073920430383893112

namespace A048851

/-- `A000040(n+1)²+p?[A115273(n)]²` -/
def P11073920430383893112.Spec : Prop :=
  ∀ n, P11073920430383893112.a n = A048851 (n + 1)

end A048851

/-! ## A048851.P12260477295296136594

`A000040(n+1)²+p?[A135997(n)]²`
-/

namespace A048851.P12260477295296136594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A048851.P12260477295296136594

namespace A048851

/-- `A000040(n+1)²+p?[A135997(n)]²` -/
def P12260477295296136594.Spec : Prop :=
  ∀ n, P12260477295296136594.a n = A048851 (n + 1)

end A048851

/-!
# A048852: Difference between b^2 (in c^2=a^2+b^2) and product of successive prime pairs.

The programs for A048852, the canonical program `A048852.P731177147256561861` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048852 has offset 0).

The definition of A048852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048852.P18245191029244870447

`lcm(A073579(n+1), A075526(n))`
-/

namespace A048852.P18245191029244870447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A073579 (n + 1)) (A075526 n)

end

end A048852.P18245191029244870447

namespace A048852

/-- `lcm(A073579(n+1), A075526(n))` -/
def P18245191029244870447.Spec : Prop :=
  ∀ n, (P18245191029244870447.a n : ℤ) = A048852 n

end A048852

/-! ## A048852.P14014899344709068881

`A084920(n+1)%A023515(n+1)`
-/

namespace A048852.P14014899344709068881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084920 (n + 1)) (A023515 (n + 1))

end

end A048852.P14014899344709068881

namespace A048852

/-- `A084920(n+1)%A023515(n+1)` -/
def P14014899344709068881.Spec : Prop :=
  ∀ n, P14014899344709068881.a n = A048852 n

end A048852

/-! ## A048852.P9010488714999510058

`(A076368(n+1)-1)*A000040(n+1)`
-/

namespace A048852.P9010488714999510058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076368 (n + 1) - 1) * A000040 (n + 1)

end

end A048852.P9010488714999510058

namespace A048852

/-- `(A076368(n+1)-1)*A000040(n+1)` -/
def P9010488714999510058.Spec : Prop :=
  ∀ n, P9010488714999510058.a n = A048852 n

end A048852

/-! ## A048852.P8958330019273108756

`(A076368(n+1)-1)*A006005(n+1)`
-/

namespace A048852.P8958330019273108756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076368 (n + 1) - 1) * A006005 (n + 1)

end

end A048852.P8958330019273108756

namespace A048852

/-- `(A076368(n+1)-1)*A006005(n+1)` -/
def P8958330019273108756.Spec : Prop :=
  ∀ n, P8958330019273108756.a n = A048852 n

end A048852

/-! ## A048852.P9088890900378057688

`(A055670(n+1)-1)*A054541(n+1)`
-/

namespace A048852.P9088890900378057688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055670 (n + 1) - 1) * A054541 (n + 1)

end

end A048852.P9088890900378057688

namespace A048852

/-- `(A055670(n+1)-1)*A054541(n+1)` -/
def P9088890900378057688.Spec : Prop :=
  ∀ n, P9088890900378057688.a n = A048852 n

end A048852

/-! ## A048852.P5522153256099934997

`(A076368(n+1)-1)*∑[A054541(n+1)]`
-/

namespace A048852.P5522153256099934997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076368 (n + 1) - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048852.P5522153256099934997

namespace A048852

/-- `(A076368(n+1)-1)*∑[A054541(n+1)]` -/
def P5522153256099934997.Spec : Prop :=
  ∀ n, P5522153256099934997.a n = A048852 n

end A048852

/-! ## A048852.P731177147256561861

`A000040(n+1)*Δ[A000040(A028310(n))]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048852

/-- `A000040(n+1)*Δ[A000040(A028310(n))]` -/
def P731177147256561861.Spec : Prop :=
  ∀ n, P731177147256561861.a n = A048852 n

theorem P731177147256561861.correct : P731177147256561861.Spec := by
  intro n
  simp only [A048852]

end A048852

/-! ## A048852.P6350261219924014556

`A000040(n+1)*A033619(A076368(n+1))`
-/

namespace A048852.P6350261219924014556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A033619 (A076368 (n + 1)).toNat

end

end A048852.P6350261219924014556

namespace A048852

/-- `A000040(n+1)*A033619(A076368(n+1))` -/
def P6350261219924014556.Spec : Prop :=
  ∀ n, P6350261219924014556.a n = A048852 n

end A048852

/-! ## A048852.P6946283012882181105

`A008864(n+1)*A075526(n)-A125266(n+1)`
-/

namespace A048852.P6946283012882181105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) * A075526 n - A125266 (n + 1)

end

end A048852.P6946283012882181105

namespace A048852

/-- `A008864(n+1)*A075526(n)-A125266(n+1)` -/
def P6946283012882181105.Spec : Prop :=
  ∀ n, P6946283012882181105.a n = A048852 n

end A048852

/-! ## A048852.P8351941075217288923

`(A006005(n+1)-A008578(n+1))*A000040(n+1)`
-/

namespace A048852.P8351941075217288923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006005 (n + 1) - A008578 (n + 1)) * A000040 (n + 1)

end

end A048852.P8351941075217288923

namespace A048852

/-- `(A006005(n+1)-A008578(n+1))*A000040(n+1)` -/
def P8351941075217288923.Spec : Prop :=
  ∀ n, P8351941075217288923.a n = A048852 n

end A048852

/-! ## A048852.P14298673612208903066

`(A055670(n+1)-A299763(n+1))*A000040(n+1)`
-/

namespace A048852.P14298673612208903066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055670 (n + 1) - A299763 (n + 1)) * A000040 (n + 1)

end

end A048852.P14298673612208903066

namespace A048852

/-- `(A055670(n+1)-A299763(n+1))*A000040(n+1)` -/
def P14298673612208903066.Spec : Prop :=
  ∀ n, P14298673612208903066.a n = A048852 n

end A048852

/-! ## A048852.P3097131765378078120

`lcm(A054541(n+1)*A073579(n+1), A054541(n+1))`
-/

namespace A048852.P3097131765378078120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054541 (n + 1) * A073579 (n + 1)) (A054541 (n + 1))

end

end A048852.P3097131765378078120

namespace A048852

/-- `lcm(A054541(n+1)*A073579(n+1), A054541(n+1))` -/
def P3097131765378078120.Spec : Prop :=
  ∀ n, (P3097131765378078120.a n : ℤ) = A048852 n

end A048852

/-! ## A048852.P17079533964162877296

`(A076368(n+1)-1)*A008578(n+2)`
-/

namespace A048852.P17079533964162877296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076368 (n + 1) - 1) * A008578 (n + 2)

end

end A048852.P17079533964162877296

namespace A048852

/-- `(A076368(n+1)-1)*A008578(n+2)` -/
def P17079533964162877296.Spec : Prop :=
  ∀ n, P17079533964162877296.a n = A048852 n

end A048852

/-! ## A048852.P5516769621408464074

`(A082454(n+1)-A082455(n))*A000040(n+1)`
-/

namespace A048852.P5516769621408464074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082454 (n + 1) - A082455 n) * A000040 (n + 1)

end

end A048852.P5516769621408464074

namespace A048852

/-- `(A082454(n+1)-A082455(n))*A000040(n+1)` -/
def P5516769621408464074.Spec : Prop :=
  ∀ n, P5516769621408464074.a n = A048852 n

end A048852

/-! ## A048852.P8100585138975340565

`(A006005(n+1)-A008578(n+1))*A008578(n+2)`
-/

namespace A048852.P8100585138975340565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006005 (n + 1) - A008578 (n + 1)) * A008578 (n + 2)

end

end A048852.P8100585138975340565

namespace A048852

/-- `(A006005(n+1)-A008578(n+1))*A008578(n+2)` -/
def P8100585138975340565.Spec : Prop :=
  ∀ n, P8100585138975340565.a n = A048852 n

end A048852

/-! ## A048852.P12681346886185860910

`(A006005(n+1)-A158611(n+2))*A000040(n+1)`
-/

namespace A048852.P12681346886185860910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006005 (n + 1) - A158611 (n + 2)) * A000040 (n + 1)

end

end A048852.P12681346886185860910

namespace A048852

/-- `(A006005(n+1)-A158611(n+2))*A000040(n+1)` -/
def P12681346886185860910.Spec : Prop :=
  ∀ n, P12681346886185860910.a n = A048852 n

end A048852

/-! ## A048852.P125233587446352363

`(A006005(n+1)-record[A006530(n+1)])*A006005(n+1)`
-/

namespace A048852.P125233587446352363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006005 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) * A006005 (n + 1)

end

end A048852.P125233587446352363

namespace A048852

/-- `(A006005(n+1)-record[A006530(n+1)])*A006005(n+1)` -/
def P125233587446352363.Spec : Prop :=
  ∀ n, P125233587446352363.a n = A048852 n

end A048852

/-! ## A048852.P2955148230134352670

`(A006005(n+1)-record[A020639(n+1)])*A006005(n+1)`
-/

namespace A048852.P2955148230134352670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006005 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) * A006005 (n + 1)

end

end A048852.P2955148230134352670

namespace A048852

/-- `(A006005(n+1)-record[A020639(n+1)])*A006005(n+1)` -/
def P2955148230134352670.Spec : Prop :=
  ∀ n, P2955148230134352670.a n = A048852 n

end A048852

/-! ## A048852.P7415729310640642837

`A000040(n+1)*Δ[A000010(A008578(n+1))]`
-/

namespace A048852.P7415729310640642837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (f1 (n + 1) - f1 n)

end

end A048852.P7415729310640642837

namespace A048852

/-- `A000040(n+1)*Δ[A000010(A008578(n+1))]` -/
def P7415729310640642837.Spec : Prop :=
  ∀ n, P7415729310640642837.a n = A048852 n

end A048852

/-! ## A048852.P5097835846419996403

`(A000040(n+1)-A006530(A001747(n+1)))*A000040(n+1)`
-/

namespace A048852.P5097835846419996403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - A006530 (A001747 (n + 1)).toNat) * A000040 (n + 1)

end

end A048852.P5097835846419996403

namespace A048852

/-- `(A000040(n+1)-A006530(A001747(n+1)))*A000040(n+1)` -/
def P5097835846419996403.Spec : Prop :=
  ∀ n, P5097835846419996403.a n = A048852 n

end A048852

/-!
# A048853: Number of primes (different from n) that can be produced by altering one digit of decimal expansion of n (without changing the number of digits).

The programs for A048853, there is no canonical definition to state claims against.
-/

/-! ## A048853.P15149189772129375810

`A209252(n+1)-A098851(A209274(n+1))`
-/

namespace A048853.P15149189772129375810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209252 (n + 1) - A098851 (A209274 (n + 1)).toNat

end

end A048853.P15149189772129375810

/-! ## A048853.P13098845020454711555

`A369858(A361921(n)+4)`
-/

namespace A048853.P13098845020454711555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369858 (A361921 n + 4).toNat

end

end A048853.P13098845020454711555

/-! ## A048853.P17836176011372458872

`A209252(lt[A038208(3*(n+1)), A359482(2*n+1)])`
-/

namespace A048853.P17836176011372458872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038208 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359482 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209252 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A048853.P17836176011372458872

/-!
# A048854: Triangle read by rows. A generalization of unsigned Lah numbers, called L[4,1].

The programs for A048854, the canonical program `A048854.P2055107111345402278` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048854 has offset 0).

The definition of A048854 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048854.P2055107111345402278

`T(n-1,k-1)+2*(4*row(n)-3)*T(n-1,k)-8*(row(n)-1)*(2*row(n)-3)*T(n-2,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A048854

/-- `T(n-1,k-1)+2*(4*row(n)-3)*T(n-1,k)-8*(row(n)-1)*(2*row(n)-3)*T(n-2,k)` -/
def P2055107111345402278.Spec : Prop :=
  ∀ n, P2055107111345402278.a n = A048854 n

theorem P2055107111345402278.correct : P2055107111345402278.Spec := by
  intro n
  simp only [A048854]

end A048854

/-! ## A048854.P13654772118080108865

`row(n)!/col(n)!*C(2*row(n), row(n))*C(row(n), col(n))/C(2*col(n), col(n))`
-/

namespace A048854.P13654772118080108865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.triRow n) : ℚ) / (Nat.factorial (SequenceMachineLib.triCol n) : ℚ) * (Nat.choose (2 * SequenceMachineLib.triRow n) (SequenceMachineLib.triRow n) : ℚ) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℚ) / (Nat.choose (2 * SequenceMachineLib.triCol n) (SequenceMachineLib.triCol n) : ℚ)

end

end A048854.P13654772118080108865

namespace A048854

/-- `row(n)!/col(n)!*C(2*row(n), row(n))*C(row(n), col(n))/C(2*col(n), col(n))` -/
def P13654772118080108865.Spec : Prop :=
  ∀ n, P13654772118080108865.a n = (A048854 n : ℚ)

end A048854

/-! ## A048854.P14610359939762498543

`A046521(n)*A094587(n)`
-/

namespace A048854.P14610359939762498543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 n * A094587 n

end

end A048854.P14610359939762498543

namespace A048854

/-- `A046521(n)*A094587(n)` -/
def P14610359939762498543.Spec : Prop :=
  ∀ n, P14610359939762498543.a n = A048854 n

end A048854

/-! ## A048854.P4783727700029152136

`A130321(n)*A176230(n)`
-/

namespace A048854.P4783727700029152136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A176230 n

end

end A048854.P4783727700029152136

namespace A048854

/-- `A130321(n)*A176230(n)` -/
def P4783727700029152136.Spec : Prop :=
  ∀ n, P4783727700029152136.a n = A048854 n

end A048854

/-! ## A048854.P18185711969835572871

`lcm(A038207(n), A176230(n))`
-/

namespace A048854.P18185711969835572871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038207 n) (A176230 n)

end

end A048854.P18185711969835572871

namespace A048854

/-- `lcm(A038207(n), A176230(n))` -/
def P18185711969835572871.Spec : Prop :=
  ∀ n, (P18185711969835572871.a n : ℤ) = A048854 n

end A048854

/-! ## A048854.P812261726348238962

`lcm(A065109(n), A176231(n))`
-/

namespace A048854.P812261726348238962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065109 n) (A176231 n)

end

end A048854.P812261726348238962

namespace A048854

/-- `lcm(A065109(n), A176231(n))` -/
def P812261726348238962.Spec : Prop :=
  ∀ n, (P812261726348238962.a n : ℤ) = A048854 n

end A048854

/-! ## A048854.P13441563864506074221

`A059268(A061579(n))*A176230(n)`
-/

namespace A048854.P13441563864506074221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A061579 n).toNat * A176230 n

end

end A048854.P13441563864506074221

namespace A048854

/-- `A059268(A061579(n))*A176230(n)` -/
def P13441563864506074221.Spec : Prop :=
  ∀ n, P13441563864506074221.a n = A048854 n

end A048854

/-! ## A048854.P6564435090762388582

`A067147(A005843(n)+A003056(n)²)`
-/

namespace A048854.P6564435090762388582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067147 (A005843 n + A003056 n ^ 2).toNat

end

end A048854.P6564435090762388582

namespace A048854

/-- `A067147(A005843(n)+A003056(n)²)` -/
def P6564435090762388582.Spec : Prop :=
  ∀ n, P6564435090762388582.a n = A048854 n

end A048854

/-! ## A048854.P6730800354561907431

`A086645(n)/A103327(n)*A292219(n)`
-/

namespace A048854.P6730800354561907431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086645 n : ℚ) / (A103327 n : ℚ) * (A292219 n : ℚ)

end

end A048854.P6730800354561907431

namespace A048854

/-- `A086645(n)/A103327(n)*A292219(n)` -/
def P6730800354561907431.Spec : Prop :=
  ∀ n, P6730800354561907431.a n = (A048854 n : ℚ)

end A048854

/-! ## A048854.P727690073693008242

`(2*row(n))!/((2*col(n))!*(row(n)-col(n))!)`
-/

namespace A048854.P727690073693008242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * SequenceMachineLib.triRow n) : ℚ) / (Nat.factorial (2 * SequenceMachineLib.triCol n) * Nat.factorial ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ)

end

end A048854.P727690073693008242

namespace A048854

/-- `(2*row(n))!/((2*col(n))!*(row(n)-col(n))!)` -/
def P727690073693008242.Spec : Prop :=
  ∀ n, P727690073693008242.a n = (A048854 n : ℚ)

end A048854

/-! ## A048854.P9713123733300567854

`A119828(n)/A119502(n)`
-/

namespace A048854.P9713123733300567854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119828 n : ℚ) / (A119502 n : ℚ)

end

end A048854.P9713123733300567854

namespace A048854

/-- `A119828(n)/A119502(n)` -/
def P9713123733300567854.Spec : Prop :=
  ∀ n, P9713123733300567854.a n = (A048854 n : ℚ)

end A048854

/-!
# A048855: Number of integers up to n! relatively prime to n!.

The programs for A048855, the canonical program `A048855.P1835815635312777100` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048855 has offset 0).

The definition of A048855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048855.P1835815635312777100

`A000010(n!)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A048855

/-- `A000010(n!)` -/
def P1835815635312777100.Spec : Prop :=
  ∀ n, P1835815635312777100.a n = A048855 n

theorem P1835815635312777100.correct : P1835815635312777100.Spec := by
  intro n
  simp only [A048855]

end A048855

/-! ## A048855.P7898938376174851140

`(n-char[p?[xor(1, n)]])*a(n-1)` with `a(0)=1`
-/

namespace A048855.P7898938376174851140
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * a (n - 1)

end

end A048855.P7898938376174851140

namespace A048855

/-- `(n-char[p?[xor(1, n)]])*a(n-1)` -/
def P7898938376174851140.Spec : Prop :=
  ∀ n, P7898938376174851140.a n = A048855 n

end A048855

/-! ## A048855.P9262604521472957957

`(n-floor(1/gcd(n, a(n-1))))*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A048855.P9262604521472957957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((n : ℤ) - ⌊1 / (Int.gcd (n : ℤ) (a (n - 1)) : ℚ)⌋) * a (n - 1)

end

end A048855.P9262604521472957957

namespace A048855

/-- `(n-floor(1/gcd(n, a(n-1))))*a(n-1)` -/
def P9262604521472957957.Spec : Prop :=
  ∀ n, P9262604521472957957.a n = A048855 n

end A048855

/-! ## A048855.P15933042331085970237

`∏[A014684(round(acot(n)+n))]`
-/

namespace A048855.P15933042331085970237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048855.P15933042331085970237

namespace A048855

/-- `∏[A014684(round(acot(n)+n))]` -/
def P15933042331085970237.Spec : Prop :=
  ∀ n, P15933042331085970237.a n = A048855 n

end A048855

/-! ## A048855.P14449534779409164077

`a(n-1)*A014684(n)` with `a(0)=1`
-/

namespace A048855.P14449534779409164077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A014684 n

end

end A048855.P14449534779409164077

namespace A048855

/-- `a(n-1)*A014684(n)` -/
def P14449534779409164077.Spec : Prop :=
  ∀ n, P14449534779409164077.a n = A048855 n

end A048855

/-! ## A048855.P14336043771316270240

`a(n-1)*A113638(n)` with `a(0)=1`
-/

namespace A048855.P14336043771316270240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A113638 n

end

end A048855.P14336043771316270240

namespace A048855

/-- `a(n-1)*A113638(n)` -/
def P14336043771316270240.Spec : Prop :=
  ∀ n, P14336043771316270240.a n = A048855 n

end A048855

/-! ## A048855.P4721747497624441190

`(n-A010051(n))*a(n-1)` with `a(0)=1`
-/

namespace A048855.P4721747497624441190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - A010051 n) * a (n - 1)

end

end A048855.P4721747497624441190

namespace A048855

/-- `(n-A010051(n))*a(n-1)` -/
def P4721747497624441190.Spec : Prop :=
  ∀ n, P4721747497624441190.a n = A048855 n

end A048855

/-! ## A048855.P8618103032718284680

`(n-char[p?[A352844(n)]])*a(n-1)` with `a(0)=1`
-/

namespace A048855.P8618103032718284680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352844 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) * a (n - 1)

end

end A048855.P8618103032718284680

namespace A048855

/-- `(n-char[p?[A352844(n)]])*a(n-1)` -/
def P8618103032718284680.Spec : Prop :=
  ∀ n, P8618103032718284680.a n = A048855 n

end A048855

/-! ## A048855.P6884950605438921817

`(n-char[A000040(n+1)])*a(n-1)` with `a(0)=1`
-/

namespace A048855.P6884950605438921817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) * a (n - 1)

end

end A048855.P6884950605438921817

namespace A048855

/-- `(n-char[A000040(n+1)])*a(n-1)` -/
def P6884950605438921817.Spec : Prop :=
  ∀ n, P6884950605438921817.a n = A048855 n

end A048855

/-! ## A048855.P454130278508168598

`(n-char[A006530(n+2)])*a(n-1)` with `a(0)=1`
-/

namespace A048855.P454130278508168598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) * a (n - 1)

end

end A048855.P454130278508168598

namespace A048855

/-- `(n-char[A006530(n+2)])*a(n-1)` -/
def P454130278508168598.Spec : Prop :=
  ∀ n, P454130278508168598.a n = A048855 n

end A048855

/-!
# A048856: Number of digits of prime(n)# + 1.

The programs for A048856, there is no canonical definition to state claims against.
-/

/-! ## A048856.P11756312161234751748

`A067175(n+1)`
-/

namespace A048856.P11756312161234751748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067175 (n + 1)

end

end A048856.P11756312161234751748

/-! ## A048856.P1859137193037591606

`∑[A387173(n)]+1`
-/

namespace A048856.P1859137193037591606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A048856.P1859137193037591606

/-! ## A048856.P1943889216077796571

`A067175(abs(xor(n, -1)))%(5*n-2)`
-/

namespace A048856.P1943889216077796571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067175 |Int.xor (n : ℤ) (-1)|.toNat) ((5 * n : ℤ) - 2)

end

end A048856.P1943889216077796571

/-! ## A048856.P5841517115874241550

`ratio[A067175(n)]*A067175(n)`
-/

namespace A048856.P5841517115874241550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067175 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A067175 n : ℚ)

end

end A048856.P5841517115874241550

/-! ## A048856.P9078473725973539592

`A399843(n+1)+A079099(n+1)`
-/

namespace A048856.P9078473725973539592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399843 (n + 1) + A079099 (n + 1)

end

end A048856.P9078473725973539592

/-! ## A048856.P5110523521225083063

`A000027(A067175(2*n-(n-1)))`
-/

namespace A048856.P5110523521225083063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A067175 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat).toNat

end

end A048856.P5110523521225083063

/-!
# A048859: A sieve: keep the first 2 numbers, delete the next 3 numbers; keep the next 3 numbers, delete the next 4 numbers; keep the next 4 numbers, delete the next 5 numbers; and so on. In other words, keep the next k numbers and delete the next k+1 numbers, for k = 2, 3, ...

The programs for A048859, the canonical program `A048859.P6374595389282906224` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048859 has offset 1).

The definition of A048859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048859.P14673762858890831786

`comp[2*n-A002260(n+2)]`
-/

namespace A048859.P14673762858890831786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A002260 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A048859.P14673762858890831786

namespace A048859

/-- `comp[2*n-A002260(n+2)]` -/
def P14673762858890831786.Spec : Prop :=
  ∀ n, (P14673762858890831786.a n : ℤ) = A048859 (n + 1)

end A048859

/-! ## A048859.P12640185156044587436

`A000217(round(sqrt(2*(n+2))))+n-2`
-/

namespace A048859.P12640185156044587436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 2) : ℝ))).toNat + ((n : ℤ) - 2)

end

end A048859.P12640185156044587436

namespace A048859

/-- `A000217(round(sqrt(2*(n+2))))+n-2` -/
def P12640185156044587436.Spec : Prop :=
  ∀ n, P12640185156044587436.a n = A048859 (n + 1)

end A048859

/-! ## A048859.P6374595389282906224

`A034856(A003056(n+1))+n`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048859

/-- `A034856(A003056(n+1))+n` -/
def P6374595389282906224.Spec : Prop :=
  ∀ n, P6374595389282906224.a n = A048859 (n + 1)

theorem P6374595389282906224.correct : P6374595389282906224.Spec := by
  intro n
  simp only [A048859, Nat.add_sub_cancel]

end A048859

/-! ## A048859.P16942060913051053658

`2*n+A004524(A099375(n+1))`
-/

namespace A048859.P16942060913051053658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004524 (A099375 (n + 1)).toNat

end

end A048859.P16942060913051053658

namespace A048859

/-- `2*n+A004524(A099375(n+1))` -/
def P16942060913051053658.Spec : Prop :=
  ∀ n, P16942060913051053658.a n = A048859 (n + 1)

end A048859

/-! ## A048859.P10418914864271556533

`A059253(A163357(n+1))+2*n`
-/

namespace A048859.P10418914864271556533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (A163357 (n + 1)).toNat + (2 * n : ℤ)

end

end A048859.P10418914864271556533

namespace A048859

/-- `A059253(A163357(n+1))+2*n` -/
def P10418914864271556533.Spec : Prop :=
  ∀ n, P10418914864271556533.a n = A048859 (n + 1)

end A048859

/-! ## A048859.P17899541174763509004

`A059252(A163359(n+1))+2*n`
-/

namespace A048859.P17899541174763509004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (A163359 (n + 1)).toNat + (2 * n : ℤ)

end

end A048859.P17899541174763509004

namespace A048859

/-- `A059252(A163359(n+1))+2*n` -/
def P17899541174763509004.Spec : Prop :=
  ∀ n, P17899541174763509004.a n = A048859 (n + 1)

end A048859

/-! ## A048859.P66637138065143299

`A163528(A163334(n+1))+2*n`
-/

namespace A048859.P66637138065143299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 (A163334 (n + 1)).toNat + (2 * n : ℤ)

end

end A048859.P66637138065143299

namespace A048859

/-- `A163528(A163334(n+1))+2*n` -/
def P66637138065143299.Spec : Prop :=
  ∀ n, P66637138065143299.a n = A048859 (n + 1)

end A048859

/-! ## A048859.P4535858847651177370

`A003056(n+1)+A061885(n+1)-2`
-/

namespace A048859.P4535858847651177370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1) + (A061885 (n + 1) - 2)

end

end A048859.P4535858847651177370

namespace A048859

/-- `A003056(n+1)+A061885(n+1)-2` -/
def P4535858847651177370.Spec : Prop :=
  ∀ n, P4535858847651177370.a n = A048859 (n + 1)

end A048859

/-! ## A048859.P12086575287514141783

`A064801(n+2)-3`
-/

namespace A048859.P12086575287514141783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 2) - 3

end

end A048859.P12086575287514141783

namespace A048859

/-- `A064801(n+2)-3` -/
def P12086575287514141783.Spec : Prop :=
  ∀ n, P12086575287514141783.a n = A048859 (n + 1)

end A048859

/-! ## A048859.P8094845138972096504

`A004202(n+2)-4`
-/

namespace A048859.P8094845138972096504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 2) - 4

end

end A048859.P8094845138972096504

namespace A048859

/-- `A004202(n+2)-4` -/
def P8094845138972096504.Spec : Prop :=
  ∀ n, P8094845138972096504.a n = A048859 (n + 1)

end A048859

/-! ## A048859.P16268826902235687593

`2*n+A025581(n+1)`
-/

namespace A048859.P16268826902235687593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A025581 (n + 1)

end

end A048859.P16268826902235687593

namespace A048859

/-- `2*n+A025581(n+1)` -/
def P16268826902235687593.Spec : Prop :=
  ∀ n, P16268826902235687593.a n = A048859 (n + 1)

end A048859

/-! ## A048859.P12727184255278897819

`A127739(n+2)-2+n`
-/

namespace A048859.P12727184255278897819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 2) - 2 + (n : ℤ)

end

end A048859.P12727184255278897819

namespace A048859

/-- `A127739(n+2)-2+n` -/
def P12727184255278897819.Spec : Prop :=
  ∀ n, P12727184255278897819.a n = A048859 (n + 1)

end A048859

/-! ## A048859.P11050806400441879053

`∑[Δ[A025581(n)]+2]-2`
-/

namespace A048859.P11050806400441879053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A048859.P11050806400441879053

namespace A048859

/-- `∑[Δ[A025581(n)]+2]-2` -/
def P11050806400441879053.Spec : Prop :=
  ∀ n, P11050806400441879053.a n = A048859 (n + 1)

end A048859

/-! ## A048859.P13002247684813850729

`2*n-∑[A167407(n+1)]`
-/

namespace A048859.P13002247684813850729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048859.P13002247684813850729

namespace A048859

/-- `2*n-∑[A167407(n+1)]` -/
def P13002247684813850729.Spec : Prop :=
  ∀ n, P13002247684813850729.a n = A048859 (n + 1)

end A048859

/-! ## A048859.P18237739645763837174

`2*n+A004736(n+2)-1`
-/

namespace A048859.P18237739645763837174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A004736 (n + 2) - 1)

end

end A048859.P18237739645763837174

namespace A048859

/-- `2*n+A004736(n+2)-1` -/
def P18237739645763837174.Spec : Prop :=
  ∀ n, P18237739645763837174.a n = A048859 (n + 1)

end A048859

/-! ## A048859.P15088043495285362424

`A025581(n+1)+A005843(n)`
-/

namespace A048859.P15088043495285362424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (n + 1) + A005843 n

end

end A048859.P15088043495285362424

namespace A048859

/-- `A025581(n+1)+A005843(n)` -/
def P15088043495285362424.Spec : Prop :=
  ∀ n, P15088043495285362424.a n = A048859 (n + 1)

end A048859

/-! ## A048859.P14337355424016757496

`A007401(A057944(n+1))+n`
-/

namespace A048859.P14337355424016757496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (A057944 (n + 1)).toNat + (n : ℤ)

end

end A048859.P14337355424016757496

namespace A048859

/-- `A007401(A057944(n+1))+n` -/
def P14337355424016757496.Spec : Prop :=
  ∀ n, P14337355424016757496.a n = A048859 (n + 1)

end A048859

/-! ## A048859.P14707399713594159568

`A060747(n)+A004736(n+2)`
-/

namespace A048859.P14707399713594159568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n + A004736 (n + 2)

end

end A048859.P14707399713594159568

namespace A048859

/-- `A060747(n)+A004736(n+2)` -/
def P14707399713594159568.Spec : Prop :=
  ∀ n, P14707399713594159568.a n = A048859 (n + 1)

end A048859

/-! ## A048859.P6078509347382777753

`A025581(A000027(n+1))+n+n`
-/

namespace A048859.P6078509347382777753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A000027 (n + 1)).toNat + (n : ℤ) + (n : ℤ)

end

end A048859.P6078509347382777753

namespace A048859

/-- `A025581(A000027(n+1))+n+n` -/
def P6078509347382777753.Spec : Prop :=
  ∀ n, P6078509347382777753.a n = A048859 (n + 1)

end A048859

/-! ## A048859.P14309075764671181507

`A004273(n+1)+A025581(n+1)-1`
-/

namespace A048859.P14309075764671181507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1) + (A025581 (n + 1) - 1)

end

end A048859.P14309075764671181507

namespace A048859

/-- `A004273(n+1)+A025581(n+1)-1` -/
def P14309075764671181507.Spec : Prop :=
  ∀ n, P14309075764671181507.a n = A048859 (n + 1)

end A048859

/-!
# A048860: Smallest denominator d such that the Sylvester expansion of n/d has n terms.

The programs for A048860, there is no canonical definition to state claims against.
-/

/-! ## A048860.P3851067223620489906

`(n+1)*A098853(n+1)+1`
-/

namespace A048860.P3851067223620489906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A098853 (n + 1) + 1

end

end A048860.P3851067223620489906

/-! ## A048860.P8914448645961822869

`or(1, A031285(n)*A098853(n+1))`
-/

namespace A048860.P8914448645961822869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A031285 n * A098853 (n + 1))

end

end A048860.P8914448645961822869

/-! ## A048860.P9856485622703166840

`A141310((n+1)*A098853(n+1))`
-/

namespace A048860.P9856485622703166840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 ((n + 1 : ℤ) * A098853 (n + 1)).toNat

end

end A048860.P9856485622703166840

/-! ## A048860.P387538084154082499

`A328399(A098853(n+1)*A103517(n))`
-/

namespace A048860.P387538084154082499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A098853 (n + 1) * A103517 n).toNat

end

end A048860.P387538084154082499

/-! ## A048860.P11607348928847442904

`A328399(Δ[A027692(n)]*A098853(n+1))`
-/

namespace A048860.P11607348928847442904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 ((f1 (n + 1) - f1 n) * A098853 (n + 1)).toNat

end

end A048860.P11607348928847442904

/-!
# A048861: a(n) = n^n - 1.

The programs for A048861, the canonical program `A048861.P10845564465953315184` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048861 has offset 1).

The definition of A048861 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^(n+1)-1` (program `A048861.P10845564465953315184`, by `A048861.P10845564465953315184.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048861.P10845564465953315184

`(n+1)^(n+1)-1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A048861

/-- `(n+1)^(n+1)-1` -/
def P10845564465953315184.Spec : Prop :=
  ∀ n, P10845564465953315184.a n = A048861 (n + 1)

theorem P10845564465953315184.correct : P10845564465953315184.Spec := by
  intro n
  simp only [A048861, Nat.add_sub_cancel]

end A048861

/-! ## A048861.P11145026152203759633

`record[col(n)^col(n)-1]`
-/

namespace A048861.P11145026152203759633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n ^ SequenceMachineLib.triCol n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048861.P11145026152203759633

namespace A048861

/-- `record[col(n)^col(n)-1]` -/
def P11145026152203759633.Spec : Prop :=
  ∀ n, P11145026152203759633.a n = A048861 (n + 1)

end A048861

/-! ## A048861.P17782841817781922158

`xor(-1, -(n+1)^(n+1))`
-/

namespace A048861.P17782841817781922158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-((n + 1) ^ (n + 1) : ℤ))

end

end A048861.P17782841817781922158

namespace A048861

/-- `xor(-1, -(n+1)^(n+1))` -/
def P17782841817781922158.Spec : Prop :=
  ∀ n, P17782841817781922158.a n = A048861 (n + 1)

end A048861

/-! ## A048861.P573710223205991020

`record[ceil((n-2)^(n-2))-1]`
-/

namespace A048861.P573710223205991020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048861.P573710223205991020

namespace A048861

/-- `record[ceil((n-2)^(n-2))-1]` -/
def P573710223205991020.Spec : Prop :=
  ∀ n, P573710223205991020.a n = A048861 (n + 1)

end A048861

/-! ## A048861.P16091758911048480695

`n*A023037(n+1)`
-/

namespace A048861.P16091758911048480695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A023037 (n + 1)

end

end A048861.P16091758911048480695

namespace A048861

/-- `n*A023037(n+1)` -/
def P16091758911048480695.Spec : Prop :=
  ∀ n, P16091758911048480695.a n = A048861 (n + 1)

end A048861

/-! ## A048861.P15975888445819950983

`A345360(n+1)/(n+1)`
-/

namespace A048861.P15975888445819950983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345360 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A048861.P15975888445819950983

namespace A048861

/-- `A345360(n+1)/(n+1)` -/
def P15975888445819950983.Spec : Prop :=
  ∀ n, P15975888445819950983.a n = (A048861 (n + 1) : ℚ)

end A048861

/-! ## A048861.P7367359824070619796

`(A078230(n+1)-A078231(n+1))/A078231(n+1)`
-/

namespace A048861.P7367359824070619796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078230 (n + 1) - A078231 (n + 1) : ℚ) / (A078231 (n + 1) : ℚ)

end

end A048861.P7367359824070619796

namespace A048861

/-- `(A078230(n+1)-A078231(n+1))/A078231(n+1)` -/
def P7367359824070619796.Spec : Prop :=
  ∀ n, P7367359824070619796.a n = (A048861 (n + 1) : ℚ)

end A048861

/-! ## A048861.P6179803599745587603

`(A109391(n+1)-A000217(n+1))/A000217(n+1)`
-/

namespace A048861.P6179803599745587603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109391 (n + 1) - A000217 (n + 1) : ℚ) / (A000217 (n + 1) : ℚ)

end

end A048861.P6179803599745587603

namespace A048861

/-- `(A109391(n+1)-A000217(n+1))/A000217(n+1)` -/
def P6179803599745587603.Spec : Prop :=
  ∀ n, P6179803599745587603.a n = (A048861 (n + 1) : ℚ)

end A048861

/-! ## A048861.P8828992843104257241

`floor((tanh(2*n+1)+n)^(n+1))`
-/

namespace A048861.P8828992843104257241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.tanh (2 * n + 1 : ℝ) + (n : ℝ)) ^ (n + 1)⌋

end

end A048861.P8828992843104257241

namespace A048861

/-- `floor((tanh(2*n+1)+n)^(n+1))` -/
def P8828992843104257241.Spec : Prop :=
  ∀ n, P8828992843104257241.a n = A048861 (n + 1)

end A048861

/-!
# A048862: Number of primes in the reduced residue system of n-th primorial number (=A002110(n)).

The programs for A048862, the canonical program `A048862.P7793812674722745711` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048862 has offset 0).

The definition of A048862 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048862.P7793812674722745711

`A000849(n)-n`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A048862

/-- `A000849(n)-n` -/
def P7793812674722745711.Spec : Prop :=
  ∀ n, P7793812674722745711.a n = A048862 n

theorem P7793812674722745711.correct : P7793812674722745711.Spec := by
  intro n
  simp only [A048862]

end A048862

/-! ## A048862.P2312288000663844467

`A000720(A002110(n))-A001221(A002110(n))`
-/

namespace A048862.P2312288000663844467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002110 n).toNat - A001221 (A002110 n).toNat

end

end A048862.P2312288000663844467

namespace A048862

/-- `A000720(A002110(n))-A001221(A002110(n))` -/
def P2312288000663844467.Spec : Prop :=
  ∀ n, P2312288000663844467.a n = A048862 n

end A048862

/-! ## A048862.P14294861616614258621

`A005867(n)-A048863(n)`
-/

namespace A048862.P14294861616614258621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005867 n - A048863 n

end

end A048862.P14294861616614258621

namespace A048862

/-- `A005867(n)-A048863(n)` -/
def P14294861616614258621.Spec : Prop :=
  ∀ n, P14294861616614258621.a n = A048862 n

theorem P14294861616614258621.correct : P14294861616614258621.Spec := by
  intro n
  simp only [A048862, Nat.add_sub_cancel, A048862.P14294861616614258621.a, A048862.P7793812674722745711.a, A000849, A000849.P3482926112530532576.a, A005867, A005867.P647413364839099534.a, A048863, A048863.P16974686868926745534.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A002110, A002110.P13704446489392701398.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048862

/-! ## A048862.P15413217821946204405

`A048863(n)-A048980(n)`
-/

namespace A048862.P15413217821946204405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048863 n - A048980 n

end

end A048862.P15413217821946204405

namespace A048862

/-- `A048863(n)-A048980(n)` -/
def P15413217821946204405.Spec : Prop :=
  ∀ n, P15413217821946204405.a n = A048862 n

theorem P15413217821946204405.correct : P15413217821946204405.Spec := by
  intro n
  simp only [A048862, Nat.add_sub_cancel, A048862.P15413217821946204405.a, A048862.P7793812674722745711.a, A000849, A000849.P3482926112530532576.a, A048863, A048863.P16974686868926745534.a, A048980, A048980.P1689635231098254215.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A002110, A002110.P13704446489392701398.a, A005867, A005867.P647413364839099534.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048862

/-! ## A048862.P7543229130237042010

`A057857(n)-(A048863(n)+n)`
-/

namespace A048862.P7543229130237042010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057857 n - (A048863 n + (n : ℤ))

end

end A048862.P7543229130237042010

namespace A048862

/-- `A057857(n)-(A048863(n)+n)` -/
def P7543229130237042010.Spec : Prop :=
  ∀ n, P7543229130237042010.a n = A048862 n

theorem P7543229130237042010.correct : P7543229130237042010.Spec := by
  intro n
  simp only [A048862, Nat.add_sub_cancel, A048862.P7543229130237042010.a, A048862.P7793812674722745711.a, A000849, A000849.P3482926112530532576.a, A048863, A048863.P16974686868926745534.a, A057857, A057857.P7925582756686219733.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A002110, A002110.P13704446489392701398.a, A005867, A005867.P647413364839099534.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048862

/-!
# A048863: Number of nonprimes (1 and composites) in the reduced residue system of n-th primorial number (A002110).

The programs for A048863, the canonical program `A048863.P16974686868926745534` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048863 has offset 0).

The definition of A048863 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048863.P16974686868926745534

`A005867(n)-A000849(n)+n`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A048863

/-- `A005867(n)-A000849(n)+n` -/
def P16974686868926745534.Spec : Prop :=
  ∀ n, P16974686868926745534.a n = A048863 n

theorem P16974686868926745534.correct : P16974686868926745534.Spec := by
  intro n
  simp only [A048863]

end A048863

/-! ## A048863.P6606608641403591678

`A000010(A002110(n))-A000720(A002110(n))+A001221(A002110(n))`
-/

namespace A048863.P6606608641403591678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002110 n).toNat - A000720 (A002110 n).toNat + A001221 (A002110 n).toNat

end

end A048863.P6606608641403591678

namespace A048863

/-- `A000010(A002110(n))-A000720(A002110(n))+A001221(A002110(n))` -/
def P6606608641403591678.Spec : Prop :=
  ∀ n, P6606608641403591678.a n = A048863 n

end A048863

/-! ## A048863.P5823524001808244714

`A005867(n)-A048862(n)`
-/

namespace A048863.P5823524001808244714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005867 n - A048862 n

end

end A048863.P5823524001808244714

namespace A048863

/-- `A005867(n)-A048862(n)` -/
def P5823524001808244714.Spec : Prop :=
  ∀ n, P5823524001808244714.a n = A048863 n

theorem P5823524001808244714.correct : P5823524001808244714.Spec := by
  intro n
  simp only [A048863, Nat.add_sub_cancel, A048863.P5823524001808244714.a, A048863.P16974686868926745534.a, A000849, A000849.P3482926112530532576.a, A005867, A005867.P647413364839099534.a, A048862, A048862.P7793812674722745711.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A002110, A002110.P13704446489392701398.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048863

/-! ## A048863.P5992567813005779447

`A057857(n)-A000849(n)`
-/

namespace A048863.P5992567813005779447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057857 n - A000849 n

end

end A048863.P5992567813005779447

namespace A048863

/-- `A057857(n)-A000849(n)` -/
def P5992567813005779447.Spec : Prop :=
  ∀ n, P5992567813005779447.a n = A048863 n

theorem P5992567813005779447.correct : P5992567813005779447.Spec := by
  intro n
  simp only [A048863, Nat.add_sub_cancel, A048863.P5992567813005779447.a, A048863.P16974686868926745534.a, A000849, A000849.P3482926112530532576.a, A005867, A005867.P647413364839099534.a, A057857, A057857.P7925582756686219733.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A002110, A002110.P13704446489392701398.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048863

/-! ## A048863.P170972735935683452

`n+A005867(n)-A000849(n)`
-/

namespace A048863.P170972735935683452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A005867 n - A000849 n

end

end A048863.P170972735935683452

namespace A048863

/-- `n+A005867(n)-A000849(n)` -/
def P170972735935683452.Spec : Prop :=
  ∀ n, P170972735935683452.a n = A048863 n

theorem P170972735935683452.correct : P170972735935683452.Spec := by
  intro n
  simp only [A048863, Nat.add_sub_cancel, A048863.P170972735935683452.a, A048863.P16974686868926745534.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A048863

/-!
# A048864: Number of nonprime numbers (composites and 1) in the reduced residue system of n.

The programs for A048864, the canonical program `A048864.P16915682539637834600` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048864 has offset 1).

The definition of A048864 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036997, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A048864.P16915682539637834600

`A036997(n+1)+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A048864

/-- `A036997(n+1)+1` -/
def P16915682539637834600.Spec : Prop :=
  ∀ n, P16915682539637834600.a n = A048864 (n + 1)

theorem P16915682539637834600.correct : P16915682539637834600.Spec := by
  intro n
  simp only [A048864, Nat.add_sub_cancel]

end A048864

/-! ## A048864.P51349779657339271

`A000010(n+1)-(A000720(n+1)-A001221(n+1))`
-/

namespace A048864.P51349779657339271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - (A000720 (n + 1) - A001221 (n + 1))

end

end A048864.P51349779657339271

namespace A048864

/-- `A000010(n+1)-(A000720(n+1)-A001221(n+1))` -/
def P51349779657339271.Spec : Prop :=
  ∀ n, P51349779657339271.a n = A048864 (n + 1)

theorem P51349779657339271.correct : P51349779657339271.Spec := by
  intro n
  simp only [A048864, Nat.add_sub_cancel, A048864.P51349779657339271.a, A048864.P16915682539637834600.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A036997, A036997.P9898190539809888575.a, A003557, A003557.P6364735403900941810.a, A037228, A037228.P4220557198165153324.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048864

/-! ## A048864.P12142106632508311430

`Δ[A002088(n)]-A048865(n+1)`
-/

namespace A048864.P12142106632508311430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A048865 (n + 1)

end

end A048864.P12142106632508311430

namespace A048864

/-- `Δ[A002088(n)]-A048865(n+1)` -/
def P12142106632508311430.Spec : Prop :=
  ∀ n, P12142106632508311430.a n = A048864 (n + 1)

end A048864

/-! ## A048864.P9160122021508174781

`Δ[A005728(n)]-A048865(n+1)`
-/

namespace A048864.P9160122021508174781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A048865 (n + 1)

end

end A048864.P9160122021508174781

namespace A048864

/-- `Δ[A005728(n)]-A048865(n+1)` -/
def P9160122021508174781.Spec : Prop :=
  ∀ n, P9160122021508174781.a n = A048864 (n + 1)

end A048864

/-! ## A048864.P3190024342709134518

`A037228(n+1)+A001221(n+1)`
-/

namespace A048864.P3190024342709134518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037228 (n + 1) + A001221 (n + 1)

end

end A048864.P3190024342709134518

namespace A048864

/-- `A037228(n+1)+A001221(n+1)` -/
def P3190024342709134518.Spec : Prop :=
  ∀ n, P3190024342709134518.a n = A048864 (n + 1)

theorem P3190024342709134518.correct : P3190024342709134518.Spec := by
  intro n
  simp only [A048864, Nat.add_sub_cancel, A048864.P3190024342709134518.a, A048864.P16915682539637834600.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A036997, A036997.P9898190539809888575.a, A037228, A037228.P4220557198165153324.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048864

/-! ## A048864.P18271227824558597211

`A048866(n+1)+A048865(n+1)`
-/

namespace A048864.P18271227824558597211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048866 (n + 1) + A048865 (n + 1)

end

end A048864.P18271227824558597211

namespace A048864

/-- `A048866(n+1)+A048865(n+1)` -/
def P18271227824558597211.Spec : Prop :=
  ∀ n, P18271227824558597211.a n = A048864 (n + 1)

theorem P18271227824558597211.correct : P18271227824558597211.Spec := by
  intro n
  simp only [A048864, Nat.add_sub_cancel, A048864.P18271227824558597211.a, A048864.P16915682539637834600.a, A036997, A036997.P9898190539809888575.a, A048865, A048865.P11145010694177444749.a, A048866, A048866.P13275795640121407663.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A037228, A037228.P4220557198165153324.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048864

/-! ## A048864.P11298035656695160097

`A000010(n+1)-A048865(n+1)`
-/

namespace A048864.P11298035656695160097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A048865 (n + 1)

end

end A048864.P11298035656695160097

namespace A048864

/-- `A000010(n+1)-A048865(n+1)` -/
def P11298035656695160097.Spec : Prop :=
  ∀ n, P11298035656695160097.a n = A048864 (n + 1)

theorem P11298035656695160097.correct : P11298035656695160097.Spec := by
  intro n
  simp only [A048864, Nat.add_sub_cancel, A048864.P11298035656695160097.a, A048864.P16915682539637834600.a, A000010, A000010.P4673923239450215316.a, A036997, A036997.P9898190539809888575.a, A048865, A048865.P11145010694177444749.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A003557, A003557.P6364735403900941810.a, A037228, A037228.P4220557198165153324.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048864

/-! ## A048864.P4899701246224771605

`A057859(n+1)-A000720(n+1)`
-/

namespace A048864.P4899701246224771605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057859 (n + 1) - A000720 (n + 1)

end

end A048864.P4899701246224771605

namespace A048864

/-- `A057859(n+1)-A000720(n+1)` -/
def P4899701246224771605.Spec : Prop :=
  ∀ n, P4899701246224771605.a n = A048864 (n + 1)

theorem P4899701246224771605.correct : P4899701246224771605.Spec := by
  intro n
  simp only [A048864, Nat.add_sub_cancel, A048864.P4899701246224771605.a, A048864.P16915682539637834600.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036997, A036997.P9898190539809888575.a, A057859, A057859.P5441024818850006693.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A037228, A037228.P4220557198165153324.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048864

/-! ## A048864.P12437568176524043586

`A062298(n+1)-A057860(n+1)`
-/

namespace A048864.P12437568176524043586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) - A057860 (n + 1)

end

end A048864.P12437568176524043586

namespace A048864

/-- `A062298(n+1)-A057860(n+1)` -/
def P12437568176524043586.Spec : Prop :=
  ∀ n, P12437568176524043586.a n = A048864 (n + 1)

theorem P12437568176524043586.correct : P12437568176524043586.Spec := by
  intro n
  simp only [A048864, Nat.add_sub_cancel, A048864.P12437568176524043586.a, A048864.P16915682539637834600.a, A036997, A036997.P9898190539809888575.a, A057860, A057860.P15781516878484293447.a, A062298, A062298.P8226643735375377344.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A037228, A037228.P4220557198165153324.a, A051953, A051953.P11179276897610979764.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048864

/-! ## A048864.P9021757261121976598

`A061468(n+1)-A351519(n+1)`
-/

namespace A048864.P9021757261121976598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061468 (n + 1) - A351519 (n + 1)

end

end A048864.P9021757261121976598

namespace A048864

/-- `A061468(n+1)-A351519(n+1)` -/
def P9021757261121976598.Spec : Prop :=
  ∀ n, P9021757261121976598.a n = A048864 (n + 1)

theorem P9021757261121976598.correct : P9021757261121976598.Spec := by
  intro n
  simp only [A048864, Nat.add_sub_cancel, A048864.P9021757261121976598.a, A048864.P16915682539637834600.a, A036997, A036997.P9898190539809888575.a, A061468, A061468.P5735709615131522244.a, A351519, A351519.P5058596728449047522.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A037228, A037228.P4220557198165153324.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048864

/-! ## A048864.P1527047727664513991

`A039649(n+1)-(A048865(n+1)+1)`
-/

namespace A048864.P1527047727664513991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A048865 (n + 1) + 1)

end

end A048864.P1527047727664513991

namespace A048864

/-- `A039649(n+1)-(A048865(n+1)+1)` -/
def P1527047727664513991.Spec : Prop :=
  ∀ n, P1527047727664513991.a n = A048864 (n + 1)

theorem P1527047727664513991.correct : P1527047727664513991.Spec := by
  intro n
  simp only [A048864, Nat.add_sub_cancel, A048864.P1527047727664513991.a, A048864.P16915682539637834600.a, A036997, A036997.P9898190539809888575.a, A039649, A039649.P16717312505280968063.a, A048865, A048865.P11145010694177444749.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A037228, A037228.P4220557198165153324.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048864

/-! ## A048864.P17677335247866498643

`A057859(n+1)+1-A036234(n+1)`
-/

namespace A048864.P17677335247866498643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057859 (n + 1) + (1 - A036234 (n + 1))

end

end A048864.P17677335247866498643

namespace A048864

/-- `A057859(n+1)+1-A036234(n+1)` -/
def P17677335247866498643.Spec : Prop :=
  ∀ n, P17677335247866498643.a n = A048864 (n + 1)

theorem P17677335247866498643.correct : P17677335247866498643.Spec := by
  intro n
  simp only [A048864, Nat.add_sub_cancel, A048864.P17677335247866498643.a, A048864.P16915682539637834600.a, A036234, A036234.P2906282677021386800.a, A036997, A036997.P9898190539809888575.a, A057859, A057859.P5441024818850006693.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A037228, A037228.P4220557198165153324.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048864

/-! ## A048864.P18148341307998975932

`A065855(n+1)+1-A057860(n+1)`
-/

namespace A048864.P18148341307998975932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1) + (1 - A057860 (n + 1))

end

end A048864.P18148341307998975932

namespace A048864

/-- `A065855(n+1)+1-A057860(n+1)` -/
def P18148341307998975932.Spec : Prop :=
  ∀ n, P18148341307998975932.a n = A048864 (n + 1)

theorem P18148341307998975932.correct : P18148341307998975932.Spec := by
  intro n
  simp only [A048864, Nat.add_sub_cancel, A048864.P18148341307998975932.a, A048864.P16915682539637834600.a, A036997, A036997.P9898190539809888575.a, A057860, A057860.P15781516878484293447.a, A065855, A065855.P16805213270251966039.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A037228, A037228.P4220557198165153324.a, A051953, A051953.P11179276897610979764.a, A062298, A062298.P8226643735375377344.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048864

/-! ## A048864.P744255424579053293

`A109606(n+1)+1-A048865(n+1)`
-/

namespace A048864.P744255424579053293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (1 - A048865 (n + 1))

end

end A048864.P744255424579053293

namespace A048864

/-- `A109606(n+1)+1-A048865(n+1)` -/
def P744255424579053293.Spec : Prop :=
  ∀ n, P744255424579053293.a n = A048864 (n + 1)

theorem P744255424579053293.correct : P744255424579053293.Spec := by
  intro n
  simp only [A048864, Nat.add_sub_cancel, A048864.P744255424579053293.a, A048864.P16915682539637834600.a, A036997, A036997.P9898190539809888575.a, A048865, A048865.P11145010694177444749.a, A109606, A109606.P2415810041766612210.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A037228, A037228.P4220557198165153324.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048864

/-! ## A048864.P16556497874663035949

`A279436(n+1)+1-A045763(n+1)`
-/

namespace A048864.P16556497874663035949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279436 (n + 1) + (1 - A045763 (n + 1))

end

end A048864.P16556497874663035949

namespace A048864

/-- `A279436(n+1)+1-A045763(n+1)` -/
def P16556497874663035949.Spec : Prop :=
  ∀ n, P16556497874663035949.a n = A048864 (n + 1)

theorem P16556497874663035949.correct : P16556497874663035949.Spec := by
  intro n
  simp only [A048864, Nat.add_sub_cancel, A048864.P16556497874663035949.a, A048864.P16915682539637834600.a, A036997, A036997.P9898190539809888575.a, A045763, A045763.P9156243808986750239.a, A279436, A279436.P15978742674708459391.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A033273, A033273.P18420659424697249895.a, A037228, A037228.P4220557198165153324.a, A062298, A062298.P8226643735375377344.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048864

/-! ## A048864.P1404103354861514675

`A073757(n+1)+1-A351519(n+1)`
-/

namespace A048864.P1404103354861514675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (n + 1) + (1 - A351519 (n + 1))

end

end A048864.P1404103354861514675

namespace A048864

/-- `A073757(n+1)+1-A351519(n+1)` -/
def P1404103354861514675.Spec : Prop :=
  ∀ n, P1404103354861514675.a n = A048864 (n + 1)

theorem P1404103354861514675.correct : P1404103354861514675.Spec := by
  intro n
  simp only [A048864, Nat.add_sub_cancel, A048864.P1404103354861514675.a, A048864.P16915682539637834600.a, A036997, A036997.P9898190539809888575.a, A073757, A073757.P6861480467973211752.a, A351519, A351519.P5058596728449047522.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A037228, A037228.P4220557198165153324.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048864

/-! ## A048864.P15007828024862615150

`n-(A219428(n+1)+A048865(n+1))`
-/

namespace A048864.P15007828024862615150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A219428 (n + 1) + A048865 (n + 1))

end

end A048864.P15007828024862615150

namespace A048864

/-- `n-(A219428(n+1)+A048865(n+1))` -/
def P15007828024862615150.Spec : Prop :=
  ∀ n, P15007828024862615150.a n = A048864 (n + 1)

theorem P15007828024862615150.correct : P15007828024862615150.Spec := by
  intro n
  simp only [A048864, Nat.add_sub_cancel, A048864.P15007828024862615150.a, A048864.P16915682539637834600.a, A036997, A036997.P9898190539809888575.a, A048865, A048865.P11145010694177444749.a, A219428, A219428.P9184341513320465947.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A037228, A037228.P4220557198165153324.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048864

/-! ## A048864.P8224171363722894625

`ceil(A002246(n+1)/4)-A048865(n+1)`
-/

namespace A048864.P8224171363722894625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002246 (n + 1) : ℚ) / 4⌉ - A048865 (n + 1)

end

end A048864.P8224171363722894625

namespace A048864

/-- `ceil(A002246(n+1)/4)-A048865(n+1)` -/
def P8224171363722894625.Spec : Prop :=
  ∀ n, P8224171363722894625.a n = A048864 (n + 1)

end A048864

/-! ## A048864.P2093968525482859979

`1-A051953(n+1)+n-A048865(n+1)`
-/

namespace A048864.P2093968525482859979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A051953 (n + 1) + (n : ℤ) - A048865 (n + 1)

end

end A048864.P2093968525482859979

namespace A048864

/-- `1-A051953(n+1)+n-A048865(n+1)` -/
def P2093968525482859979.Spec : Prop :=
  ∀ n, P2093968525482859979.a n = A048864 (n + 1)

theorem P2093968525482859979.correct : P2093968525482859979.Spec := by
  intro n
  simp only [A048864, Nat.add_sub_cancel, A048864.P2093968525482859979.a, A048864.P16915682539637834600.a, A036997, A036997.P9898190539809888575.a, A048865, A048865.P11145010694177444749.a, A051953, A051953.P11179276897610979764.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A037228, A037228.P4220557198165153324.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048864

/-! ## A048864.P10796633255667476483

`∏{p}[n+1, #-1]*A003557(n+1)-A048865(n+1)`
-/

namespace A048864.P10796633255667476483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * A003557 (n + 1) - A048865 (n + 1)

end

end A048864.P10796633255667476483

namespace A048864

/-- `∏{p}[n+1, #-1]*A003557(n+1)-A048865(n+1)` -/
def P10796633255667476483.Spec : Prop :=
  ∀ n, P10796633255667476483.a n = A048864 (n + 1)

theorem P10796633255667476483.correct : P10796633255667476483.Spec := by
  intro n
  simp only [A048864, Nat.add_sub_cancel, A048864.P10796633255667476483.f1, A048864.P10796633255667476483.a, A048864.P16915682539637834600.a, A003557, A003557.P6364735403900941810.a, A036997, A036997.P9898190539809888575.a, A048865, A048865.P11145010694177444749.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A037228, A037228.P4220557198165153324.a, A000010, A000010.P4673923239450215316.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048864

/-!
# A048865: a(n) is the number of primes in the reduced residue system mod n.

The programs for A048865, the canonical program `A048865.P11145010694177444749` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048865 has offset 1).

The definition of A048865 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048865.P11145010694177444749

`A000720(n+1)-A001221(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048865

/-- `A000720(n+1)-A001221(n+1)` -/
def P11145010694177444749.Spec : Prop :=
  ∀ n, P11145010694177444749.a n = A048865 (n + 1)

theorem P11145010694177444749.correct : P11145010694177444749.Spec := by
  intro n
  simp only [A048865, Nat.add_sub_cancel]

end A048865

/-! ## A048865.P10874948853557290615

`A368616(n+1)-A368641(n+1)`
-/

namespace A048865.P10874948853557290615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368616 (n + 1) - A368641 (n + 1)

end

end A048865.P10874948853557290615

namespace A048865

/-- `A368616(n+1)-A368641(n+1)` -/
def P10874948853557290615.Spec : Prop :=
  ∀ n, P10874948853557290615.a n = A048865 (n + 1)

end A048865

/-! ## A048865.P15541426400022115275

`A001221(A038610(n+1))`
-/

namespace A048865.P15541426400022115275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A038610 (n + 1)).toNat

end

end A048865.P15541426400022115275

namespace A048865

/-- `A001221(A038610(n+1))` -/
def P15541426400022115275.Spec : Prop :=
  ∀ n, P15541426400022115275.a n = A048865 (n + 1)

end A048865

/-! ## A048865.P2944075777168318241

`∑[∑{p}[n+1, floor(#/(n+1))]]-∑{p}[n+1, 2%#²]/2`
-/

namespace A048865.P2944075777168318241
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - ((∑ p ∈ Nat.primeFactors (f3 n), 2 % p ^ 2 : ℕ) : ℚ) / 2

end

end A048865.P2944075777168318241

namespace A048865

/-- `∑[∑{p}[n+1, floor(#/(n+1))]]-∑{p}[n+1, 2%#²]/2` -/
def P2944075777168318241.Spec : Prop :=
  ∀ n, P2944075777168318241.a n = (A048865 (n + 1) : ℚ)

end A048865

/-! ## A048865.P886712769299239186

`A289207(A186971(n+1))`
-/

namespace A048865.P886712769299239186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A186971 (n + 1)).toNat

end

end A048865.P886712769299239186

namespace A048865

/-- `A289207(A186971(n+1))` -/
def P886712769299239186.Spec : Prop :=
  ∀ n, P886712769299239186.a n = A048865 (n + 1)

end A048865

/-! ## A048865.P547258652624920767

`A230980(n)-A087624(n+1)`
-/

namespace A048865.P547258652624920767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A087624 (n + 1)

end

end A048865.P547258652624920767

namespace A048865

/-- `A230980(n)-A087624(n+1)` -/
def P547258652624920767.Spec : Prop :=
  ∀ n, P547258652624920767.a n = A048865 (n + 1)

end A048865

/-! ## A048865.P9664011429492117630

`Δ[A002088(n)]-A048864(n+1)`
-/

namespace A048865.P9664011429492117630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A048864 (n + 1)

end

end A048865.P9664011429492117630

namespace A048865

/-- `Δ[A002088(n)]-A048864(n+1)` -/
def P9664011429492117630.Spec : Prop :=
  ∀ n, P9664011429492117630.a n = A048865 (n + 1)

end A048865

/-! ## A048865.P5456017165129348207

`A082513(n+1)+A033273(n+1)`
-/

namespace A048865.P5456017165129348207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082513 (n + 1) + A033273 (n + 1)

end

end A048865.P5456017165129348207

namespace A048865

/-- `A082513(n+1)+A033273(n+1)` -/
def P5456017165129348207.Spec : Prop :=
  ∀ n, P5456017165129348207.a n = A048865 (n + 1)

theorem P5456017165129348207.correct : P5456017165129348207.Spec := by
  intro n
  simp only [A048865, Nat.add_sub_cancel, A048865.P5456017165129348207.a, A048865.P11145010694177444749.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A033273, A033273.P18420659424697249895.a, A082513, A082513.P14151738527547448767.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048865

/-! ## A048865.P12277698494824707697

`A072531(n+1)+A072530(n+1)`
-/

namespace A048865.P12277698494824707697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072531 (n + 1) + A072530 (n + 1)

end

end A048865.P12277698494824707697

namespace A048865

/-- `A072531(n+1)+A072530(n+1)` -/
def P12277698494824707697.Spec : Prop :=
  ∀ n, P12277698494824707697.a n = A048865 (n + 1)

end A048865

/-! ## A048865.P10481474555702432151

`A083721(n+1)+A079067(n+1)`
-/

namespace A048865.P10481474555702432151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083721 (n + 1) + A079067 (n + 1)

end

end A048865.P10481474555702432151

namespace A048865

/-- `A083721(n+1)+A079067(n+1)` -/
def P10481474555702432151.Spec : Prop :=
  ∀ n, P10481474555702432151.a n = A048865 (n + 1)

end A048865

/-! ## A048865.P16796274984394406185

`A000010(n+1)-A048864(n+1)`
-/

namespace A048865.P16796274984394406185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A048864 (n + 1)

end

end A048865.P16796274984394406185

namespace A048865

/-- `A000010(n+1)-A048864(n+1)` -/
def P16796274984394406185.Spec : Prop :=
  ∀ n, P16796274984394406185.a n = A048865 (n + 1)

theorem P16796274984394406185.correct : P16796274984394406185.Spec := by
  intro n
  simp only [A048865, Nat.add_sub_cancel, A048865.P16796274984394406185.a, A048865.P11145010694177444749.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A048864, A048864.P16915682539637834600.a, A003557, A003557.P6364735403900941810.a, A036997, A036997.P9898190539809888575.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A037228, A037228.P4220557198165153324.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048865

/-! ## A048865.P7250517684390354984

`A048864(n+1)-A048866(n+1)`
-/

namespace A048865.P7250517684390354984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1) - A048866 (n + 1)

end

end A048865.P7250517684390354984

namespace A048865

/-- `A048864(n+1)-A048866(n+1)` -/
def P7250517684390354984.Spec : Prop :=
  ∀ n, P7250517684390354984.a n = A048865 (n + 1)

theorem P7250517684390354984.correct : P7250517684390354984.Spec := by
  intro n
  simp only [A048865, Nat.add_sub_cancel, A048865.P7250517684390354984.a, A048865.P11145010694177444749.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A048864, A048864.P16915682539637834600.a, A048866, A048866.P13275795640121407663.a, A000010, A000010.P4673923239450215316.a, A036997, A036997.P9898190539809888575.a, A003557, A003557.P6364735403900941810.a, A037228, A037228.P4220557198165153324.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048865

/-! ## A048865.P5916000346036806441

`A092494(n+1)-A013939(n+1)`
-/

namespace A048865.P5916000346036806441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092494 (n + 1) - A013939 (n + 1)

end

end A048865.P5916000346036806441

namespace A048865

/-- `A092494(n+1)-A013939(n+1)` -/
def P5916000346036806441.Spec : Prop :=
  ∀ n, P5916000346036806441.a n = A048865 (n + 1)

theorem P5916000346036806441.correct : P5916000346036806441.Spec := by
  intro n
  simp only [A048865, Nat.add_sub_cancel, A048865.P5916000346036806441.a, A048865.P11145010694177444749.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A013939, A013939.P14869873943907335378.a, A092494, A092494.P17574960425768699571.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048865

/-! ## A048865.P16060717359239378724

`A036234(n+1)-A083399(n+1)`
-/

namespace A048865.P16060717359239378724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - A083399 (n + 1)

end

end A048865.P16060717359239378724

namespace A048865

/-- `A036234(n+1)-A083399(n+1)` -/
def P16060717359239378724.Spec : Prop :=
  ∀ n, P16060717359239378724.a n = A048865 (n + 1)

theorem P16060717359239378724.correct : P16060717359239378724.Spec := by
  intro n
  simp only [A048865, Nat.add_sub_cancel, A048865.P16060717359239378724.a, A048865.P11145010694177444749.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A036234, A036234.P2906282677021386800.a, A083399, A083399.P16148020281325742632.a, A000005, A000005.P16091521709108585461.a, A055212, A055212.P14412881054625885538.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A033273, A033273.P18420659424697249895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048865

/-! ## A048865.P7458348158983138761

`A082515(n+1)-A057859(n+1)`
-/

namespace A048865.P7458348158983138761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082515 (n + 1) - A057859 (n + 1)

end

end A048865.P7458348158983138761

namespace A048865

/-- `A082515(n+1)-A057859(n+1)` -/
def P7458348158983138761.Spec : Prop :=
  ∀ n, P7458348158983138761.a n = A048865 (n + 1)

theorem P7458348158983138761.correct : P7458348158983138761.Spec := by
  intro n
  simp only [A048865, Nat.add_sub_cancel, A048865.P7458348158983138761.a, A048865.P11145010694177444749.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A057859, A057859.P5441024818850006693.a, A082515, A082515.P15614925756413171437.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048865

/-! ## A048865.P17864658573793537400

`A109606(n+1)-A036997(n+1)`
-/

namespace A048865.P17864658573793537400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) - A036997 (n + 1)

end

end A048865.P17864658573793537400

namespace A048865

/-- `A109606(n+1)-A036997(n+1)` -/
def P17864658573793537400.Spec : Prop :=
  ∀ n, P17864658573793537400.a n = A048865 (n + 1)

theorem P17864658573793537400.correct : P17864658573793537400.Spec := by
  intro n
  simp only [A048865, Nat.add_sub_cancel, A048865.P17864658573793537400.a, A048865.P11145010694177444749.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A036997, A036997.P9898190539809888575.a, A109606, A109606.P2415810041766612210.a, A000010, A000010.P4673923239450215316.a, A037228, A037228.P4220557198165153324.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048865

/-! ## A048865.P17873060833176811580

`A179179(n+1)-A037228(n+1)`
-/

namespace A048865.P17873060833176811580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179179 (n + 1) - A037228 (n + 1)

end

end A048865.P17873060833176811580

namespace A048865

/-- `A179179(n+1)-A037228(n+1)` -/
def P17873060833176811580.Spec : Prop :=
  ∀ n, P17873060833176811580.a n = A048865 (n + 1)

theorem P17873060833176811580.correct : P17873060833176811580.Spec := by
  intro n
  simp only [A048865, Nat.add_sub_cancel, A048865.P17873060833176811580.a, A048865.P11145010694177444749.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A037228, A037228.P4220557198165153324.a, A179179, A179179.P432816049346132752.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048865

/-! ## A048865.P13076490216333328957

`A082514(n+1)-A163523(n+1)`
-/

namespace A048865.P13076490216333328957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082514 (n + 1) - A163523 (n + 1)

end

end A048865.P13076490216333328957

namespace A048865

/-- `A082514(n+1)-A163523(n+1)` -/
def P13076490216333328957.Spec : Prop :=
  ∀ n, P13076490216333328957.a n = A048865 (n + 1)

theorem P13076490216333328957.correct : P13076490216333328957.Spec := by
  intro n
  simp only [A048865, Nat.add_sub_cancel, A048865.P13076490216333328957.a, A048865.P11145010694177444749.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A082514, A082514.P13229630575248176506.a, A163523, A163523.P17500706477665394313.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048865

/-! ## A048865.P9707844413472247389

`A049820(n+1)-A279436(n+1)`
-/

namespace A048865.P9707844413472247389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) - A279436 (n + 1)

end

end A048865.P9707844413472247389

namespace A048865

/-- `A049820(n+1)-A279436(n+1)` -/
def P9707844413472247389.Spec : Prop :=
  ∀ n, P9707844413472247389.a n = A048865 (n + 1)

theorem P9707844413472247389.correct : P9707844413472247389.Spec := by
  intro n
  simp only [A048865, Nat.add_sub_cancel, A048865.P9707844413472247389.a, A048865.P11145010694177444749.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A049820, A049820.P9428372222244335888.a, A279436, A279436.P15978742674708459391.a, A000005, A000005.P16091521709108585461.a, A033273, A033273.P18420659424697249895.a, A062298, A062298.P8226643735375377344.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048865

/-!
# A048866: Difference between number of nonprimes and primes in reduced residue system of n.

The programs for A048866, the canonical program `A048866.P13275795640121407663` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048866 has offset 1).

The definition of A048866 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048866.P13275795640121407663

`A000010(n+1)-2*A000720(n+1)+2*A001221(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A048866

/-- `A000010(n+1)-2*A000720(n+1)+2*A001221(n+1)` -/
def P13275795640121407663.Spec : Prop :=
  ∀ n, P13275795640121407663.a n = A048866 (n + 1)

theorem P13275795640121407663.correct : P13275795640121407663.Spec := by
  intro n
  simp only [A048866, Nat.add_sub_cancel]

end A048866

/-! ## A048866.P1146252144223261538

`A048864(n+1)-A048865(n+1)`
-/

namespace A048866.P1146252144223261538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1) - A048865 (n + 1)

end

end A048866.P1146252144223261538

namespace A048866

/-- `A048864(n+1)-A048865(n+1)` -/
def P1146252144223261538.Spec : Prop :=
  ∀ n, P1146252144223261538.a n = A048866 (n + 1)

theorem P1146252144223261538.correct : P1146252144223261538.Spec := by
  intro n
  simp only [A048866, Nat.add_sub_cancel, A048866.P1146252144223261538.a, A048866.P13275795640121407663.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A048864, A048864.P16915682539637834600.a, A048865, A048865.P11145010694177444749.a, A003557, A003557.P6364735403900941810.a, A036997, A036997.P9898190539809888575.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A037228, A037228.P4220557198165153324.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048866

/-! ## A048866.P8638311726693993434

`Δ[A005728(n)]-2*A048865(n+1)`
-/

namespace A048866.P8638311726693993434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A048865 (n + 1)

end

end A048866.P8638311726693993434

namespace A048866

/-- `Δ[A005728(n)]-2*A048865(n+1)` -/
def P8638311726693993434.Spec : Prop :=
  ∀ n, P8638311726693993434.a n = A048866 (n + 1)

end A048866

/-! ## A048866.P10338753333384745801

`A036997(n+1)+1-A048865(n+1)`
-/

namespace A048866.P10338753333384745801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036997 (n + 1) + (1 - A048865 (n + 1))

end

end A048866.P10338753333384745801

namespace A048866

/-- `A036997(n+1)+1-A048865(n+1)` -/
def P10338753333384745801.Spec : Prop :=
  ∀ n, P10338753333384745801.a n = A048866 (n + 1)

theorem P10338753333384745801.correct : P10338753333384745801.Spec := by
  intro n
  simp only [A048866, Nat.add_sub_cancel, A048866.P10338753333384745801.a, A048866.P13275795640121407663.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A036997, A036997.P9898190539809888575.a, A048865, A048865.P11145010694177444749.a, A003557, A003557.P6364735403900941810.a, A037228, A037228.P4220557198165153324.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048866

/-! ## A048866.P2298736420064700584

`2*A048864(n+1)-A000010(n+1)`
-/

namespace A048866.P2298736420064700584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048864 (n + 1) - A000010 (n + 1)

end

end A048866.P2298736420064700584

namespace A048866

/-- `2*A048864(n+1)-A000010(n+1)` -/
def P2298736420064700584.Spec : Prop :=
  ∀ n, P2298736420064700584.a n = A048866 (n + 1)

theorem P2298736420064700584.correct : P2298736420064700584.Spec := by
  intro n
  simp only [A048866, Nat.add_sub_cancel, A048866.P2298736420064700584.a, A048866.P13275795640121407663.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A048864, A048864.P16915682539637834600.a, A003557, A003557.P6364735403900941810.a, A036997, A036997.P9898190539809888575.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A037228, A037228.P4220557198165153324.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048866

/-! ## A048866.P14928773169827403223

`A000010(n+1)-2*A048865(n+1)`
-/

namespace A048866.P14928773169827403223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - 2 * A048865 (n + 1)

end

end A048866.P14928773169827403223

namespace A048866

/-- `A000010(n+1)-2*A048865(n+1)` -/
def P14928773169827403223.Spec : Prop :=
  ∀ n, P14928773169827403223.a n = A048866 (n + 1)

theorem P14928773169827403223.correct : P14928773169827403223.Spec := by
  intro n
  simp only [A048866, Nat.add_sub_cancel, A048866.P14928773169827403223.a, A048866.P13275795640121407663.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A048865, A048865.P11145010694177444749.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048866

/-! ## A048866.P15760112232993885759

`A001221(n+1)+A048864(n+1)-A000720(n+1)`
-/

namespace A048866.P15760112232993885759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A048864 (n + 1) - A000720 (n + 1))

end

end A048866.P15760112232993885759

namespace A048866

/-- `A001221(n+1)+A048864(n+1)-A000720(n+1)` -/
def P15760112232993885759.Spec : Prop :=
  ∀ n, P15760112232993885759.a n = A048866 (n + 1)

theorem P15760112232993885759.correct : P15760112232993885759.Spec := by
  intro n
  simp only [A048866, Nat.add_sub_cancel, A048866.P15760112232993885759.a, A048866.P13275795640121407663.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A048864, A048864.P16915682539637834600.a, A003557, A003557.P6364735403900941810.a, A036997, A036997.P9898190539809888575.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A037228, A037228.P4220557198165153324.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048866

/-! ## A048866.P8359286419959277531

`A001221(n+1)+A037228(n+1)-A048865(n+1)`
-/

namespace A048866.P8359286419959277531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A037228 (n + 1) - A048865 (n + 1))

end

end A048866.P8359286419959277531

namespace A048866

/-- `A001221(n+1)+A037228(n+1)-A048865(n+1)` -/
def P8359286419959277531.Spec : Prop :=
  ∀ n, P8359286419959277531.a n = A048866 (n + 1)

theorem P8359286419959277531.correct : P8359286419959277531.Spec := by
  intro n
  simp only [A048866, Nat.add_sub_cancel, A048866.P8359286419959277531.a, A048866.P13275795640121407663.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A037228, A037228.P4220557198165153324.a, A048865, A048865.P11145010694177444749.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A048866

/-! ## A048866.P13320154265568458149

`A001221(n+1)+A048864(n+1)-∑[A010051(n+1)]`
-/

namespace A048866.P13320154265568458149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A048864 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A048866.P13320154265568458149

namespace A048866

/-- `A001221(n+1)+A048864(n+1)-∑[A010051(n+1)]` -/
def P13320154265568458149.Spec : Prop :=
  ∀ n, P13320154265568458149.a n = A048866 (n + 1)

end A048866

/-! ## A048866.P17817529108547316860

`A048864(n+1)-(A000720(n+1)-A001222(∏{p}[n+1, #]))`
-/

namespace A048866.P17817529108547316860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1) - (A000720 (n + 1) - A001222 (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A048866.P17817529108547316860

namespace A048866

/-- `A048864(n+1)-(A000720(n+1)-A001222(∏{p}[n+1, #]))` -/
def P17817529108547316860.Spec : Prop :=
  ∀ n, P17817529108547316860.a n = A048866 (n + 1)

end A048866

/-! ## A048866.P14866273110260797864

`A048864(n+1)-(A002322(n+1)*A034380(n+1)-A048864(n+1))`
-/

namespace A048866.P14866273110260797864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1) - (A002322 (n + 1) * A034380 (n + 1) - A048864 (n + 1))

end

end A048866.P14866273110260797864

namespace A048866

/-- `A048864(n+1)-(A002322(n+1)*A034380(n+1)-A048864(n+1))` -/
def P14866273110260797864.Spec : Prop :=
  ∀ n, P14866273110260797864.a n = A048866 (n + 1)

end A048866

/-!
# A048867: Numbers for which reduced residue system contains fewer primes than nonprimes.

The programs for A048867, the canonical program `A048867.P9294340375594916807` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048867 has offset 1).

The definition of A048867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048867.P14156788296007796886

`lt[0, A048866(n+1)]+1`
-/

namespace A048867.P14156788296007796886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048866 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A048867.P14156788296007796886

namespace A048867

/-- `lt[0, A048866(n+1)]+1` -/
def P14156788296007796886.Spec : Prop :=
  ∀ n, (P14156788296007796886.a n : ℤ) = A048867 (n + 1)

end A048867

/-! ## A048867.P9294340375594916807

`lt[A048865(n+1), A048864(n+1)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A048867

/-- `lt[A048865(n+1), A048864(n+1)]+1` -/
def P9294340375594916807.Spec : Prop :=
  ∀ n, (P9294340375594916807.a n : ℤ) = A048867 (n + 1)

theorem P9294340375594916807.correct : P9294340375594916807.Spec := by
  intro n
  simp only [A048867, Nat.add_sub_cancel]

end A048867

/-! ## A048867.P14282984652782633932

`lt[A000038(n), A048866(A028310(n))]`
-/

namespace A048867.P14282984652782633932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048866 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048867.P14282984652782633932

namespace A048867

/-- `lt[A000038(n), A048866(A028310(n))]` -/
def P14282984652782633932.Spec : Prop :=
  ∀ n, (P14282984652782633932.a n : ℤ) = A048867 (n + 1)

end A048867

/-! ## A048867.P7490078162412516904

`lt[A000007(n), A048866(A028310(n))]`
-/

namespace A048867.P7490078162412516904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048866 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048867.P7490078162412516904

namespace A048867

/-- `lt[A000007(n), A048866(A028310(n))]` -/
def P7490078162412516904.Spec : Prop :=
  ∀ n, (P7490078162412516904.a n : ℤ) = A048867 (n + 1)

end A048867

/-! ## A048867.P11623220084352055644

`A152271(lt[A348610(n+1), A100727(n)])`
-/

namespace A048867.P11623220084352055644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A048867.P11623220084352055644

namespace A048867

/-- `A152271(lt[A348610(n+1), A100727(n)])` -/
def P11623220084352055644.Spec : Prop :=
  ∀ n, P11623220084352055644.a n = A048867 (n + 1)

end A048867

/-!
# A048868: Numbers whose reduced residue system contains more primes than nonprimes.

The programs for A048868, the canonical program `A048868.P2029712073439447473` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048868 has offset 1).

The definition of A048868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 495 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A048868.P11922973258483245798

`lt[A048866(n+2), 0]+2`
-/

namespace A048868.P11922973258483245798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048866 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A048868.P11922973258483245798

namespace A048868

/-- `lt[A048866(n+2), 0]+2` -/
def P11922973258483245798.Spec : Prop :=
  ∀ n, (P11922973258483245798.a n : ℤ) = A048868 (n + 1)

end A048868

/-! ## A048868.P1301512400145923811

`lt[A048866(or(n, C(2, n))), 0]`
-/

namespace A048868.P1301512400145923811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048866 (Nat.lor n (Nat.choose 2 n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A048868.P1301512400145923811

namespace A048868

/-- `lt[A048866(or(n, C(2, n))), 0]` -/
def P1301512400145923811.Spec : Prop :=
  ∀ n, (P1301512400145923811.a n : ℤ) = A048868 (n + 1)

end A048868

/-! ## A048868.P17199515642660047517

`lt[A048866(n*a(and(1, n-1))), 0]` with `a(0)=1`
-/

namespace A048868.P17199515642660047517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A048866 ((n : ℤ) * f1 (Int.land 1 ((n : ℤ) - 1)).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A048868.P17199515642660047517

namespace A048868

/-- `lt[A048866(n*a(and(1, n-1))), 0]` -/
def P17199515642660047517.Spec : Prop :=
  ∀ n, (P17199515642660047517.a n : ℤ) = A048868 (n + 1)

end A048868

/-! ## A048868.P14590687217562670695

`lt[A048866(A028310(n)), 0]`
-/

namespace A048868.P14590687217562670695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048866 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A048868.P14590687217562670695

namespace A048868

/-- `lt[A048866(A028310(n)), 0]` -/
def P14590687217562670695.Spec : Prop :=
  ∀ n, (P14590687217562670695.a n : ℤ) = A048868 (n + 1)

end A048868

/-! ## A048868.P3850463437332172282

`A065475(lt[A048866(n+1), 0])`
-/

namespace A048868.P3850463437332172282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048866 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A048868.P3850463437332172282

namespace A048868

/-- `A065475(lt[A048866(n+1), 0])` -/
def P3850463437332172282.Spec : Prop :=
  ∀ n, P3850463437332172282.a n = A048868 (n + 1)

end A048868

/-! ## A048868.P4806252753917948175

`lt[A048866(A000038(n)+n), 0]`
-/

namespace A048868.P4806252753917948175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048866 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A048868.P4806252753917948175

namespace A048868

/-- `lt[A048866(A000038(n)+n), 0]` -/
def P4806252753917948175.Spec : Prop :=
  ∀ n, (P4806252753917948175.a n : ℤ) = A048868 (n + 1)

end A048868

/-! ## A048868.P2029712073439447473

`lt[A048864(n+1), A048865(n+1)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A048868

/-- `lt[A048864(n+1), A048865(n+1)]+1` -/
def P2029712073439447473.Spec : Prop :=
  ∀ n, (P2029712073439447473.a n : ℤ) = A048868 (n + 1)

theorem P2029712073439447473.correct : P2029712073439447473.Spec := by
  intro n
  simp only [A048868, Nat.add_sub_cancel]

end A048868

/-! ## A048868.P8687616998514091903

`lt[A048866(A233583(n+1)), 0]`
-/

namespace A048868.P8687616998514091903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048866 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A048868.P8687616998514091903

namespace A048868

/-- `lt[A048866(A233583(n+1)), 0]` -/
def P8687616998514091903.Spec : Prop :=
  ∀ n, (P8687616998514091903.a n : ℤ) = A048868 (n + 1)

end A048868

/-!
# A048869: Numbers for which reduced residue system contains as many primes as nonprimes.

The programs for A048869, there is no canonical definition to state claims against.
-/

/-! ## A048869.P10613131077741322390

`A307712(eq[2, A307713(n+1)]+1)`
-/

namespace A048869.P10613131077741322390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307712 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A048869.P10613131077741322390

/-! ## A048869.P5400736000759221682

`record[A048866(A307713(n+1))*A307712(n+1)]`
-/

namespace A048869.P5400736000759221682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048866 (A307713 (n + 1)).toNat * A307712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048869.P5400736000759221682

/-! ## A048869.P17818818571112545550

`eq[0, A048866(n+1)]+1`
-/

namespace A048869.P17818818571112545550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048866 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A048869.P17818818571112545550

/-! ## A048869.P12800467438831713268

`eq[0, A048866(A028310(n))]`
-/

namespace A048869.P12800467438831713268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048866 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A048869.P12800467438831713268

/-! ## A048869.P15749575999204029632

`A065475(lt[A048866(n+1)², 1])`
-/

namespace A048869.P15749575999204029632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048866 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A048869.P15749575999204029632

/-!
# A048870: Triangle of coefficients of certain Sheffer-polynomials.

The programs for A048870, there is no canonical definition to state claims against.
-/

/-! ## A048870.P5959167544532082386

`A046527(n)*A094587(n)`
-/

namespace A048870.P5959167544532082386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046527 n * A094587 n

end

end A048870.P5959167544532082386

/-! ## A048870.P5170695496471918509

`A008279(A061579(n))*A046527(n)`
-/

namespace A048870.P5170695496471918509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A061579 n).toNat * A046527 n

end

end A048870.P5170695496471918509

/-! ## A048870.P1116637089430604270

`A046527(n)/A004736(n+1)*A132159(n)`
-/

namespace A048870.P1116637089430604270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046527 n : ℚ) / (A004736 (n + 1) : ℚ) * (A132159 n : ℚ)

end

end A048870.P1116637089430604270

/-! ## A048870.P15986431523664232976

`A122525(n+1)/A058127(n+1)*A046527(n)`
-/

namespace A048870.P15986431523664232976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122525 (n + 1) : ℚ) / (A058127 (n + 1) : ℚ) * (A046527 n : ℚ)

end

end A048870.P15986431523664232976

/-! ## A048870.P14332821063436682732

`A156992(n+1)/A068424(n+1)*A046527(n)`
-/

namespace A048870.P14332821063436682732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156992 (n + 1) : ℚ) / (A068424 (n + 1) : ℚ) * (A046527 n : ℚ)

end

end A048870.P14332821063436682732

/-! ## A048870.P6805920738203399175

`A143497(n+2)/A104713(n+3)*A046527(n)`
-/

namespace A048870.P6805920738203399175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143497 (n + 2) : ℚ) / (A104713 (n + 3) : ℚ) * (A046527 n : ℚ)

end

end A048870.P6805920738203399175

/-! ## A048870.P7161456287483785354

`A046527(n)/A046521(n)*A048854(n)`
-/

namespace A048870.P7161456287483785354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046527 n : ℚ) / (A046521 n : ℚ) * (A048854 n : ℚ)

end

end A048870.P7161456287483785354

/-!
# A048871: Length of hypotenuse squared in right triangle formed by a palindromic spiral plotted in Cartesian coordinates.

The programs for A048871, there is no canonical definition to state claims against.
-/

/-! ## A048871.P16224447525054685291

`A008683(4^n)+n²+(n+1)²`
-/

namespace A048871.P16224447525054685291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 ^ n) + (n ^ 2 + (n + 1) ^ 2 : ℤ)

end

end A048871.P16224447525054685291

/-! ## A048871.P16661782301545378202

`A324183(lcm(2, 4^n)/2)+2*n²`
-/

namespace A048871.P16661782301545378202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324183 (SequenceMachineLib.roundAway ((Nat.lcm 2 (4 ^ n) : ℚ) / 2)).toNat + (2 * n ^ 2 : ℤ)

end

end A048871.P16661782301545378202

/-! ## A048871.P3640346972873819832

`(n²+(n+1)²)*A326647(10*n+8)`
-/

namespace A048871.P3640346972873819832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + (n + 1) ^ 2 : ℤ) * A326647 (10 * n + 8)

end

end A048871.P3640346972873819832

/-! ## A048871.P3690079888922589007

`A324183(record[(and(1, n)+1)^n])+2*n²`
-/

namespace A048871.P3690079888922589007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324183 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) + (2 * n ^ 2 : ℤ)

end

end A048871.P3690079888922589007

/-! ## A048871.P12325569286898166463

`A250320(A130883(n))`
-/

namespace A048871.P12325569286898166463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250320 (A130883 n).toNat

end

end A048871.P12325569286898166463

/-!
# A048872: Number of non-isomorphic arrangements of n lines in the real projective plane such that the lines do not all pass through a common point.

The programs for A048872, there is no canonical definition to state claims against.
-/

/-! ## A048872.P6248387820718152423

`A063804(∑[n+1]+2)`
-/

namespace A048872.P6248387820718152423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063804 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A048872.P6248387820718152423

/-! ## A048872.P8793824386053430630

`A063800(A007092(n)+3)`
-/

namespace A048872.P8793824386053430630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063800 (A007092 n + 3).toNat

end

end A048872.P8793824386053430630

/-!
# A048874: Almost-cubes: numbers n such that n/s(n) >= k/s(k) for all k<n, where s(m) is the least surface area of a rectangular parallelepiped with integer side lengths and volume m.

The programs for A048874, there is no canonical definition to state claims against.
-/

/-! ## A048874.P7335425888397885872

`record[gcd(A008619(n), A320009(n))]`
-/

namespace A048874.P7335425888397885872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008619 n) (A320009 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048874.P7335425888397885872

/-! ## A048874.P4518252719099787110

`eq[A126760(n), A247364(A342703(n+1))]`
-/

namespace A048874.P4518252719099787110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247364 (A342703 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048874.P4518252719099787110

/-! ## A048874.P17324632135907022271

`lt[A301333(n), A121041(A000217(n+3))]`
-/

namespace A048874.P17324632135907022271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301333 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121041 (A000217 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A048874.P17324632135907022271

/-! ## A048874.P571436548408795468

`eq[A063435(A065254(n+1)), A126760(n)]`
-/

namespace A048874.P571436548408795468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 (A065254 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048874.P571436548408795468

/-! ## A048874.P6120587460819454188

`eq[A058663(n+1), A301333(n)]`
-/

namespace A048874.P6120587460819454188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048874.P6120587460819454188

/-!
# A048875: Generalized Pellian with second term of 6.

The programs for A048875, the canonical program `A048875.P16732957024664613317` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048875 has offset 0).

The definition of A048875 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048875.P3492259274002623858

`ogf((1+2x)/(1-4x-x^2))`
-/

namespace A048875.P3492259274002623858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -4, -1] n

end

end A048875.P3492259274002623858

namespace A048875

/-- `ogf((1+2x)/(1-4x-x^2))` -/
def P3492259274002623858.Spec : Prop :=
  ∀ n, P3492259274002623858.a n = A048875 n

end A048875

/-! ## A048875.P16732957024664613317

`4*a(n-1)+a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A048875

/-- `4*a(n-1)+a(n-2)` -/
def P16732957024664613317.Spec : Prop :=
  ∀ n, (P16732957024664613317.a n : ℤ) = A048875 n

theorem P16732957024664613317.correct : P16732957024664613317.Spec := by
  intro n
  simp only [A048875]

end A048875

/-! ## A048875.P838174704262932656

`A001076(n+1)+2*A001076(n)`
-/

namespace A048875.P838174704262932656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 (n + 1) + 2 * A001076 n

end

end A048875.P838174704262932656

namespace A048875

/-- `A001076(n+1)+2*A001076(n)` -/
def P838174704262932656.Spec : Prop :=
  ∀ n, P838174704262932656.a n = A048875 n

end A048875

/-! ## A048875.P7998705335656563335

`round(ϕ^3*a(n-1))` with `a(0)=1, a(1)=6`
-/

namespace A048875.P7998705335656563335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 3 * (a (n - 1) : ℝ))

end

end A048875.P7998705335656563335

namespace A048875

/-- `round(ϕ^3*a(n-1))` -/
def P7998705335656563335.Spec : Prop :=
  ∀ n, P7998705335656563335.a n = A048875 n

end A048875

/-! ## A048875.P6919827652229733275

`Δ[floor(ϕ^3*a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A048875.P6919827652229733275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ⌊Real.goldenRatio ^ 3 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048875.P6919827652229733275

namespace A048875

/-- `Δ[floor(ϕ^3*a(n-1))]` -/
def P6919827652229733275.Spec : Prop :=
  ∀ n, P6919827652229733275.a n = A048875 n

end A048875

/-! ## A048875.P4989405974700250500

`a(n-2)+a(n-1)/(1/2)²` with `a(0)=1, a(1)=6`
-/

namespace A048875.P4989405974700250500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 2) + a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A048875.P4989405974700250500

namespace A048875

/-- `a(n-2)+a(n-1)/(1/2)²` -/
def P4989405974700250500.Spec : Prop :=
  ∀ n, P4989405974700250500.a n = (A048875 n : ℚ)

end A048875

/-! ## A048875.P14489254996884329991

`abs(4*a(n-1)-floor(-a(n-2)))` with `a(0)=1, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A048875.P14489254996884329991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  |4 * a (n - 1) - (-a (n - 2))|

end

end A048875.P14489254996884329991

namespace A048875

/-- `abs(4*a(n-1)-floor(-a(n-2)))` -/
def P14489254996884329991.Spec : Prop :=
  ∀ n, P14489254996884329991.a n = A048875 n

end A048875

/-! ## A048875.P13116415868313490446

`floor(4*a(n-1)-floor(-a(n-2)))` with `a(0)=1, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A048875.P13116415868313490446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  4 * a (n - 1) - (-a (n - 2))

end

end A048875.P13116415868313490446

namespace A048875

/-- `floor(4*a(n-1)-floor(-a(n-2)))` -/
def P13116415868313490446.Spec : Prop :=
  ∀ n, P13116415868313490446.a n = A048875 n

end A048875

/-! ## A048875.P9684267000115460082

`5*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=1, a(1)=6`
-/

namespace A048875.P9684267000115460082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  5 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A048875.P9684267000115460082

namespace A048875

/-- `5*a(n-1)-(a(n-1)-a(n-2))` -/
def P9684267000115460082.Spec : Prop :=
  ∀ n, P9684267000115460082.a n = A048875 n

end A048875

/-! ## A048875.P5275723345473517120

`A355324(3*n)`
-/

namespace A048875.P5275723345473517120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355324 (3 * n)

end

end A048875.P5275723345473517120

namespace A048875

/-- `A355324(3*n)` -/
def P5275723345473517120.Spec : Prop :=
  ∀ n, P5275723345473517120.a n = A048875 n

end A048875

/-! ## A048875.P3266764593780116195

`A355325(3*n)`
-/

namespace A048875.P3266764593780116195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355325 (3 * n)

end

end A048875.P3266764593780116195

namespace A048875

/-- `A355325(3*n)` -/
def P3266764593780116195.Spec : Prop :=
  ∀ n, P3266764593780116195.a n = A048875 n

end A048875

/-! ## A048875.P8731702610295423788

`A244470(3*(n+1))`
-/

namespace A048875.P8731702610295423788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244470 (3 * (n + 1))

end

end A048875.P8731702610295423788

namespace A048875

/-- `A244470(3*(n+1))` -/
def P8731702610295423788.Spec : Prop :=
  ∀ n, P8731702610295423788.a n = A048875 n

end A048875

/-! ## A048875.P838120338776022111

`A013655(3*n-1)+a(n-1)` with `a(0)=1`
-/

namespace A048875.P838120338776022111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A013655 (3 * n - 1) + a (n - 1)

end

end A048875.P838120338776022111

namespace A048875

/-- `A013655(3*n-1)+a(n-1)` -/
def P838120338776022111.Spec : Prop :=
  ∀ n, P838120338776022111.a n = A048875 n

end A048875

/-! ## A048875.P17584590931387520383

`A048876(n)-A001076(n)`
-/

namespace A048875.P17584590931387520383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048876 n - A001076 n

end

end A048875.P17584590931387520383

namespace A048875

/-- `A048876(n)-A001076(n)` -/
def P17584590931387520383.Spec : Prop :=
  ∀ n, P17584590931387520383.a n = A048875 n

end A048875

/-! ## A048875.P5058911326807316088

`A048877(n)-A014445(n)`
-/

namespace A048875.P5058911326807316088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048877 n - A014445 n

end

end A048875.P5058911326807316088

namespace A048875

/-- `A048877(n)-A014445(n)` -/
def P5058911326807316088.Spec : Prop :=
  ∀ n, P5058911326807316088.a n = A048875 n

end A048875

/-! ## A048875.P2994691339078200745

`A097924(n)-A015448(n)`
-/

namespace A048875.P2994691339078200745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097924 n - A015448 n

end

end A048875.P2994691339078200745

namespace A048875

/-- `A097924(n)-A015448(n)` -/
def P2994691339078200745.Spec : Prop :=
  ∀ n, P2994691339078200745.a n = A048875 n

end A048875

/-! ## A048875.P6874121470808177361

`A014445(n)+A001076(n+1)`
-/

namespace A048875.P6874121470808177361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 n + A001076 (n + 1)

end

end A048875.P6874121470808177361

namespace A048875

/-- `A014445(n)+A001076(n+1)` -/
def P6874121470808177361.Spec : Prop :=
  ∀ n, P6874121470808177361.a n = A048875 n

end A048875

/-! ## A048875.P2082315129636210226

`A015448(n+1)+A001076(n)`
-/

namespace A048875.P2082315129636210226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015448 (n + 1) + A001076 n

end

end A048875.P2082315129636210226

namespace A048875

/-- `A015448(n+1)+A001076(n)` -/
def P2082315129636210226.Spec : Prop :=
  ∀ n, P2082315129636210226.a n = A048875 n

end A048875

/-! ## A048875.P839691356510589903

`A014445(n+1)-A001077(n)`
-/

namespace A048875.P839691356510589903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 (n + 1) - A001077 n

end

end A048875.P839691356510589903

namespace A048875

/-- `A014445(n+1)-A001077(n)` -/
def P839691356510589903.Spec : Prop :=
  ∀ n, P839691356510589903.a n = A048875 n

end A048875

/-! ## A048875.P12513176857200459312

`A001077(n)+2*A014445(n)`
-/

namespace A048875.P12513176857200459312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 n + 2 * A014445 n

end

end A048875.P12513176857200459312

namespace A048875

/-- `A001077(n)+2*A014445(n)` -/
def P12513176857200459312.Spec : Prop :=
  ∀ n, P12513176857200459312.a n = A048875 n

end A048875

/-!
# A048876: a(n) = 4*a(n-1) + a(n-2); a(0)=1, a(1)=7.

The programs for A048876, the canonical program `A048876.P2108842001374827678` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048876 has offset 0).

The definition of A048876 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+a(n-2)` (program `A048876.P2108842001374827678`, by `A048876.P2108842001374827678.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048876.P17965541593981428169

`ogf((1+3x)/(1-4x-x^2))`
-/

namespace A048876.P17965541593981428169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -4, -1] n

end

end A048876.P17965541593981428169

namespace A048876

/-- `ogf((1+3x)/(1-4x-x^2))` -/
def P17965541593981428169.Spec : Prop :=
  ∀ n, P17965541593981428169.a n = A048876 n

end A048876

/-! ## A048876.P2108842001374827678

`4*a(n-1)+a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A048876

/-- `4*a(n-1)+a(n-2)` -/
def P2108842001374827678.Spec : Prop :=
  ∀ n, (P2108842001374827678.a n : ℤ) = A048876 n

theorem P2108842001374827678.correct : P2108842001374827678.Spec := by
  intro n
  simp only [A048876]

end A048876

/-! ## A048876.P13142254773940357212

`∑{#}[n, C(n, #)*5^floor((#+1)/2)*2^(n-#)]`
-/

namespace A048876.P13142254773940357212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℚ) * (5 : ℚ) ^ (⌊(k + 1 : ℚ) / 2⌋ : ℤ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A048876.P13142254773940357212

namespace A048876

/-- `∑{#}[n, C(n, #)*5^floor((#+1)/2)*2^(n-#)]` -/
def P13142254773940357212.Spec : Prop :=
  ∀ n, P13142254773940357212.a n = (A048876 n : ℚ)

end A048876

/-! ## A048876.P14309528887068476856

`A000032(3*n+1)`
-/

namespace A048876.P14309528887068476856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (3 * n + 1)

end

end A048876.P14309528887068476856

namespace A048876

/-- `A000032(3*n+1)` -/
def P14309528887068476856.Spec : Prop :=
  ∀ n, P14309528887068476856.a n = A048876 n

end A048876

/-! ## A048876.P12547392352354671566

`A001076(n+1)+3*A001076(n)`
-/

namespace A048876.P12547392352354671566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 (n + 1) + 3 * A001076 n

end

end A048876.P12547392352354671566

namespace A048876

/-- `A001076(n+1)+3*A001076(n)` -/
def P12547392352354671566.Spec : Prop :=
  ∀ n, P12547392352354671566.a n = A048876 n

end A048876

/-! ## A048876.P5672262387967383585

`A000045(3*n+7)%A000045(3*n+3)`
-/

namespace A048876.P5672262387967383585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (3 * n + 7)) (A000045 (3 * n + 3))

end

end A048876.P5672262387967383585

namespace A048876

/-- `A000045(3*n+7)%A000045(3*n+3)` -/
def P5672262387967383585.Spec : Prop :=
  ∀ n, P5672262387967383585.a n = A048876 n

end A048876

/-! ## A048876.P1857706941108750562

`or(1, floor(ϕ^(2*n+1+n)))`
-/

namespace A048876.P1857706941108750562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊Real.goldenRatio ^ (2 * n + 1 + n)⌋

end

end A048876.P1857706941108750562

namespace A048876

/-- `or(1, floor(ϕ^(2*n+1+n)))` -/
def P1857706941108750562.Spec : Prop :=
  ∀ n, P1857706941108750562.a n = A048876 n

end A048876

/-! ## A048876.P3888694472746062661

`a(n-2)+lcm(4, a(n-1))` with `a(0)=1, a(1)=7`
-/

namespace A048876.P3888694472746062661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 2) + Nat.lcm 4 (a (n - 1))

end

end A048876.P3888694472746062661

namespace A048876

/-- `a(n-2)+lcm(4, a(n-1))` -/
def P3888694472746062661.Spec : Prop :=
  ∀ n, (P3888694472746062661.a n : ℤ) = A048876 n

end A048876

/-! ## A048876.P16801003962731933904

`5*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=1, a(1)=7`
-/

namespace A048876.P16801003962731933904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  5 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A048876.P16801003962731933904

namespace A048876

/-- `5*a(n-1)-(a(n-1)-a(n-2))` -/
def P16801003962731933904.Spec : Prop :=
  ∀ n, P16801003962731933904.a n = A048876 n

end A048876

/-! ## A048876.P9567172041813725925

`A014447(2*n)`
-/

namespace A048876.P9567172041813725925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014447 (2 * n)

end

end A048876.P9567172041813725925

namespace A048876

/-- `A014447(2*n)` -/
def P9567172041813725925.Spec : Prop :=
  ∀ n, P9567172041813725925.a n = A048876 n

end A048876

/-! ## A048876.P4344755319267460779

`A090244(6*n)`
-/

namespace A048876.P4344755319267460779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (6 * n)

end

end A048876.P4344755319267460779

namespace A048876

/-- `A090244(6*n)` -/
def P4344755319267460779.Spec : Prop :=
  ∀ n, P4344755319267460779.a n = A048876 n

end A048876

/-! ## A048876.P13857181223917353774

`abs(A075193(3*n))`
-/

namespace A048876.P13857181223917353774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075193 (3 * n)|

end

end A048876.P13857181223917353774

namespace A048876

/-- `abs(A075193(3*n))` -/
def P13857181223917353774.Spec : Prop :=
  ∀ n, P13857181223917353774.a n = A048876 n

end A048876

/-! ## A048876.P3805051524435412384

`A000204(3*n+1)`
-/

namespace A048876.P3805051524435412384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (3 * n + 1)

end

end A048876.P3805051524435412384

namespace A048876

/-- `A000204(3*n+1)` -/
def P3805051524435412384.Spec : Prop :=
  ∀ n, P3805051524435412384.a n = A048876 n

end A048876

/-! ## A048876.P10810156587280912584

`A001610(3*n)+1`
-/

namespace A048876.P10810156587280912584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (3 * n) + 1

end

end A048876.P10810156587280912584

namespace A048876

/-- `A001610(3*n)+1` -/
def P10810156587280912584.Spec : Prop :=
  ∀ n, P10810156587280912584.a n = A048876 n

end A048876

/-! ## A048876.P15000197653957988512

`A232965(3*n+1)`
-/

namespace A048876.P15000197653957988512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232965 (3 * n + 1)

end

end A048876.P15000197653957988512

namespace A048876

/-- `A232965(3*n+1)` -/
def P15000197653957988512.Spec : Prop :=
  ∀ n, P15000197653957988512.a n = A048876 n

end A048876

/-! ## A048876.P11920371745474428024

`A329723(3*(n+1))`
-/

namespace A048876.P11920371745474428024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (3 * (n + 1))

end

end A048876.P11920371745474428024

namespace A048876

/-- `A329723(3*(n+1))` -/
def P11920371745474428024.Spec : Prop :=
  ∀ n, P11920371745474428024.a n = A048876 n

end A048876

/-! ## A048876.P7362050952815659980

`A302126(6*n+3)`
-/

namespace A048876.P7362050952815659980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (6 * n + 3)

end

end A048876.P7362050952815659980

namespace A048876

/-- `A302126(6*n+3)` -/
def P7362050952815659980.Spec : Prop :=
  ∀ n, P7362050952815659980.a n = A048876 n

end A048876

/-! ## A048876.P5542603194250711722

`record[-A107363(n+2)]`
-/

namespace A048876.P5542603194250711722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A107363 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048876.P5542603194250711722

namespace A048876

/-- `record[-A107363(n+2)]` -/
def P5542603194250711722.Spec : Prop :=
  ∀ n, P5542603194250711722.a n = A048876 n

end A048876

/-! ## A048876.P8312045254547280229

`A116470(A008458(n))`
-/

namespace A048876.P8312045254547280229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116470 (A008458 n).toNat

end

end A048876.P8312045254547280229

namespace A048876

/-- `A116470(A008458(n))` -/
def P8312045254547280229.Spec : Prop :=
  ∀ n, P8312045254547280229.a n = A048876 n

end A048876

/-! ## A048876.P18262848025978887090

`A115339(A016933(n))`
-/

namespace A048876.P18262848025978887090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (A016933 n).toNat

end

end A048876.P18262848025978887090

namespace A048876

/-- `A115339(A016933(n))` -/
def P18262848025978887090.Spec : Prop :=
  ∀ n, P18262848025978887090.a n = A048876 n

end A048876

/-!
# A048877: a(n) = 4*a(n-1) + a(n-2); a(0)=1, a(1)=8.

The programs for A048877, the canonical program `A048877.P6173267220112087409` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048877 has offset 0).

The definition of A048877 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+a(n-2)` (program `A048877.P6173267220112087409`, by `A048877.P6173267220112087409.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048877.P16329411962101999043

`ogf((1+4x)/(1-4x-x^2))`
-/

namespace A048877.P16329411962101999043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -4, -1] n

end

end A048877.P16329411962101999043

namespace A048877

/-- `ogf((1+4x)/(1-4x-x^2))` -/
def P16329411962101999043.Spec : Prop :=
  ∀ n, P16329411962101999043.a n = A048877 n

end A048877

/-! ## A048877.P6173267220112087409

`4*a(n-1)+a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A048877

/-- `4*a(n-1)+a(n-2)` -/
def P6173267220112087409.Spec : Prop :=
  ∀ n, (P6173267220112087409.a n : ℤ) = A048877 n

theorem P6173267220112087409.correct : P6173267220112087409.Spec := by
  intro n
  simp only [A048877]

end A048877

/-! ## A048877.P461695884201453057

`((6+sqrt(5))*(2+sqrt(5))^n-(6-sqrt(5))*(2-sqrt(5))^n)/(2*sqrt(5))`
-/

namespace A048877.P461695884201453057
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((6 + Real.sqrt (5 : ℝ)) * (2 + Real.sqrt (5 : ℝ)) ^ n - (6 - Real.sqrt (5 : ℝ)) * (2 - Real.sqrt (5 : ℝ)) ^ n) / (2 * Real.sqrt (5 : ℝ))

end

end A048877.P461695884201453057

namespace A048877

/-- `((6+sqrt(5))*(2+sqrt(5))^n-(6-sqrt(5))*(2-sqrt(5))^n)/(2*sqrt(5))` -/
def P461695884201453057.Spec : Prop :=
  ∀ n, P461695884201453057.a n = (A048877 n : ℝ)

theorem P461695884201453057.correct : P461695884201453057.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A048877, Nat.add_sub_cancel, A048877.P461695884201453057.a, A048877.P6173267220112087409.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A048877, Nat.add_sub_cancel, A048877.P461695884201453057.a, A048877.P6173267220112087409.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A048877

/-! ## A048877.P11393035615161800766

`a(n-2)+a(n-1)/(1/2)²` with `a(0)=1, a(1)=8`
-/

namespace A048877.P11393035615161800766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 2) + a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A048877.P11393035615161800766

namespace A048877

/-- `a(n-2)+a(n-1)/(1/2)²` -/
def P11393035615161800766.Spec : Prop :=
  ∀ n, P11393035615161800766.a n = (A048877 n : ℚ)

end A048877

/-! ## A048877.P6051580791284426193

`4-(4*(1-a(n-1))-a(n-2))` with `a(0)=1, a(1)=8`
-/

namespace A048877.P6051580791284426193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  4 - (4 * (1 - a (n - 1)) - a (n - 2))

end

end A048877.P6051580791284426193

namespace A048877

/-- `4-(4*(1-a(n-1))-a(n-2))` -/
def P6051580791284426193.Spec : Prop :=
  ∀ n, P6051580791284426193.a n = A048877 n

end A048877

/-! ## A048877.P2842746792639712016

`A048876(n)+A001076(n)`
-/

namespace A048877.P2842746792639712016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048876 n + A001076 n

end

end A048877.P2842746792639712016

namespace A048877

/-- `A048876(n)+A001076(n)` -/
def P2842746792639712016.Spec : Prop :=
  ∀ n, P2842746792639712016.a n = A048877 n

end A048877

/-! ## A048877.P15240875975399162925

`A048875(n)+A014445(n)`
-/

namespace A048877.P15240875975399162925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048875 n + A014445 n

end

end A048877.P15240875975399162925

namespace A048877

/-- `A048875(n)+A014445(n)` -/
def P15240875975399162925.Spec : Prop :=
  ∀ n, P15240875975399162925.a n = A048877 n

end A048877

/-! ## A048877.P7565751565857136970

`A048875(n)+2*A001076(n)`
-/

namespace A048877.P7565751565857136970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048875 n + 2 * A001076 n

end

end A048877.P7565751565857136970

namespace A048877

/-- `A048875(n)+2*A001076(n)` -/
def P7565751565857136970.Spec : Prop :=
  ∀ n, P7565751565857136970.a n = A048877 n

end A048877

/-! ## A048877.P4015142803258933546

`A001077(n)+3*A014445(n)`
-/

namespace A048877.P4015142803258933546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 n + 3 * A014445 n

end

end A048877.P4015142803258933546

namespace A048877

/-- `A001077(n)+3*A014445(n)` -/
def P4015142803258933546.Spec : Prop :=
  ∀ n, P4015142803258933546.a n = A048877 n

end A048877

/-! ## A048877.P14984780466247484289

`A048876(n)+A014445(n)/2`
-/

namespace A048877.P14984780466247484289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048876 n : ℚ) + (A014445 n : ℚ) / 2

end

end A048877.P14984780466247484289

namespace A048877

/-- `A048876(n)+A014445(n)/2` -/
def P14984780466247484289.Spec : Prop :=
  ∀ n, P14984780466247484289.a n = (A048877 n : ℚ)

end A048877

/-! ## A048877.P12537424156375498851

`A001077(n)+6*A001076(n)`
-/

namespace A048877.P12537424156375498851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 n + 6 * A001076 n

end

end A048877.P12537424156375498851

namespace A048877

/-- `A001077(n)+6*A001076(n)` -/
def P12537424156375498851.Spec : Prop :=
  ∀ n, P12537424156375498851.a n = A048877 n

end A048877

/-! ## A048877.P6983323671341385759

`A001076(n+1)+2*A014445(n)`
-/

namespace A048877.P6983323671341385759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 (n + 1) + 2 * A014445 n

end

end A048877.P6983323671341385759

namespace A048877

/-- `A001076(n+1)+2*A014445(n)` -/
def P6983323671341385759.Spec : Prop :=
  ∀ n, P6983323671341385759.a n = A048877 n

end A048877

/-! ## A048877.P852366168052663233

`A001076(n)+A000204(3*n+1)`
-/

namespace A048877.P852366168052663233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 n + A000204 (3 * n + 1)

end

end A048877.P852366168052663233

namespace A048877

/-- `A001076(n)+A000204(3*n+1)` -/
def P852366168052663233.Spec : Prop :=
  ∀ n, P852366168052663233.a n = A048877 n

end A048877

/-! ## A048877.P9579280828116643863

`A001076(n+1)+2*A117647(2*n)`
-/

namespace A048877.P9579280828116643863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 (n + 1) + 2 * A117647 (2 * n)

end

end A048877.P9579280828116643863

namespace A048877

/-- `A001076(n+1)+2*A117647(2*n)` -/
def P9579280828116643863.Spec : Prop :=
  ∀ n, P9579280828116643863.a n = A048877 n

end A048877

/-! ## A048877.P1246084616146538150

`A001076(n)+A000032(A016777(n))`
-/

namespace A048877.P1246084616146538150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 n + A000032 (A016777 n).toNat

end

end A048877.P1246084616146538150

namespace A048877

/-- `A001076(n)+A000032(A016777(n))` -/
def P1246084616146538150.Spec : Prop :=
  ∀ n, P1246084616146538150.a n = A048877 n

end A048877

/-! ## A048877.P6709930292462938567

`A048875(n)+A000045(A008585(n))`
-/

namespace A048877.P6709930292462938567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048875 n + A000045 (A008585 n).toNat

end

end A048877.P6709930292462938567

namespace A048877

/-- `A048875(n)+A000045(A008585(n))` -/
def P6709930292462938567.Spec : Prop :=
  ∀ n, P6709930292462938567.a n = A048877 n

end A048877

/-! ## A048877.P9280806340782782819

`A048876(n)+A004695(A008486(n))`
-/

namespace A048877.P9280806340782782819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048876 n + A004695 (A008486 n).toNat

end

end A048877.P9280806340782782819

namespace A048877

/-- `A048876(n)+A004695(A008486(n))` -/
def P9280806340782782819.Spec : Prop :=
  ∀ n, P9280806340782782819.a n = A048877 n

end A048877

/-! ## A048877.P14517039254743955549

`A048876(n)+A004695(A008585(n))`
-/

namespace A048877.P14517039254743955549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048876 n + A004695 (A008585 n).toNat

end

end A048877.P14517039254743955549

namespace A048877

/-- `A048876(n)+A004695(A008585(n))` -/
def P14517039254743955549.Spec : Prop :=
  ∀ n, P14517039254743955549.a n = A048877 n

end A048877

/-! ## A048877.P15777092778433569174

`A001077(n)+A048876(n)-A015448(n)`
-/

namespace A048877.P15777092778433569174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 n + (A048876 n - A015448 n)

end

end A048877.P15777092778433569174

namespace A048877

/-- `A001077(n)+A048876(n)-A015448(n)` -/
def P15777092778433569174.Spec : Prop :=
  ∀ n, P15777092778433569174.a n = A048877 n

end A048877

/-! ## A048877.P14758298696229013766

`A033887(n)+A048876(n)-A001077(n)`
-/

namespace A048877.P14758298696229013766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033887 n + (A048876 n - A001077 n)

end

end A048877.P14758298696229013766

namespace A048877

/-- `A033887(n)+A048876(n)-A001077(n)` -/
def P14758298696229013766.Spec : Prop :=
  ∀ n, P14758298696229013766.a n = A048877 n

end A048877

/-!
# A048878: Generalized Pellian with second term of 9.

The programs for A048878, the canonical program `A048878.P12009098729817601974` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048878 has offset 0).

The definition of A048878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048878.P10680805567876464794

`ogf((1+5x)/(1-4x-x^2))`
-/

namespace A048878.P10680805567876464794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, -4, -1] n

end

end A048878.P10680805567876464794

namespace A048878

/-- `ogf((1+5x)/(1-4x-x^2))` -/
def P10680805567876464794.Spec : Prop :=
  ∀ n, P10680805567876464794.a n = A048878 n

end A048878

/-! ## A048878.P12009098729817601974

`((7+sqrt(5))*(2+sqrt(5))^n-(7-sqrt(5))*(2-sqrt(5))^n)/10*sqrt(5)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A048878

/-- `((7+sqrt(5))*(2+sqrt(5))^n-(7-sqrt(5))*(2-sqrt(5))^n)/10*sqrt(5)` -/
def P12009098729817601974.Spec : Prop :=
  ∀ n, P12009098729817601974.a n = (A048878 n : ℝ)

end A048878

/-! ## A048878.P884367595360258337

`a(n-2)+4*a(n-1)` with `a(0)=1, a(1)=9`
-/

namespace A048878.P884367595360258337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n a =>
  a (n - 2) + 4 * a (n - 1)

end

end A048878.P884367595360258337

namespace A048878

/-- `a(n-2)+4*a(n-1)` -/
def P884367595360258337.Spec : Prop :=
  ∀ n, (P884367595360258337.a n : ℤ) = A048878 n

end A048878

/-! ## A048878.P15376924314484536251

`a(n-2)+lcm(4, a(n-1))` with `a(0)=1, a(1)=9`
-/

namespace A048878.P15376924314484536251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n a =>
  a (n - 2) + Nat.lcm 4 (a (n - 1))

end

end A048878.P15376924314484536251

namespace A048878

/-- `a(n-2)+lcm(4, a(n-1))` -/
def P15376924314484536251.Spec : Prop :=
  ∀ n, (P15376924314484536251.a n : ℤ) = A048878 n

end A048878

/-! ## A048878.P5827772211920844594

`a(n-2)+a(n-1)/(1/2)²` with `a(0)=1, a(1)=9`
-/

namespace A048878.P5827772211920844594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 9] fun n a =>
  a (n - 2) + a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A048878.P5827772211920844594

namespace A048878

/-- `a(n-2)+a(n-1)/(1/2)²` -/
def P5827772211920844594.Spec : Prop :=
  ∀ n, P5827772211920844594.a n = (A048878 n : ℚ)

end A048878

/-! ## A048878.P1357133484344244206

`4-(4*(1-a(n-1))-a(n-2))` with `a(0)=1, a(1)=9`
-/

namespace A048878.P1357133484344244206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  4 - (4 * (1 - a (n - 1)) - a (n - 2))

end

end A048878.P1357133484344244206

namespace A048878

/-- `4-(4*(1-a(n-1))-a(n-2))` -/
def P1357133484344244206.Spec : Prop :=
  ∀ n, P1357133484344244206.a n = A048878 n

end A048878

/-! ## A048878.P10820487208376390858

`A000285(3*n)`
-/

namespace A048878.P10820487208376390858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 (3 * n)

end

end A048878.P10820487208376390858

namespace A048878

/-- `A000285(3*n)` -/
def P10820487208376390858.Spec : Prop :=
  ∀ n, P10820487208376390858.a n = A048878 n

end A048878

/-! ## A048878.P3660659966296682461

`A022308(3*n)+1`
-/

namespace A048878.P3660659966296682461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 (3 * n) + 1

end

end A048878.P3660659966296682461

namespace A048878

/-- `A022308(3*n)+1` -/
def P3660659966296682461.Spec : Prop :=
  ∀ n, P3660659966296682461.a n = A048878 n

end A048878

/-! ## A048878.P6335794035331953650

`A104449(3*n+1)`
-/

namespace A048878.P6335794035331953650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 (3 * n + 1)

end

end A048878.P6335794035331953650

namespace A048878

/-- `A104449(3*n+1)` -/
def P6335794035331953650.Spec : Prop :=
  ∀ n, P6335794035331953650.a n = A048878 n

end A048878

/-! ## A048878.P4697511544324841162

`A294157(3*n)/2`
-/

namespace A048878.P4697511544324841162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294157 (3 * n) : ℚ) / 2

end

end A048878.P4697511544324841162

namespace A048878

/-- `A294157(3*n)/2` -/
def P4697511544324841162.Spec : Prop :=
  ∀ n, P4697511544324841162.a n = (A048878 n : ℚ)

end A048878

/-! ## A048878.P15592348048022567108

`A022380(3*n)/3`
-/

namespace A048878.P15592348048022567108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022380 (3 * n) : ℚ) / 3

end

end A048878.P15592348048022567108

namespace A048878

/-- `A022380(3*n)/3` -/
def P15592348048022567108.Spec : Prop :=
  ∀ n, P15592348048022567108.a n = (A048878 n : ℚ)

end A048878

/-! ## A048878.P9599609223028787117

`Δ[A104449(3*n)/2]`
-/

namespace A048878.P9599609223028787117
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104449 (3 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048878.P9599609223028787117

namespace A048878

/-- `Δ[A104449(3*n)/2]` -/
def P9599609223028787117.Spec : Prop :=
  ∀ n, P9599609223028787117.a n = (A048878 n : ℚ)

end A048878

/-! ## A048878.P17667309889212411797

`A048877(n)+A001076(n)`
-/

namespace A048878.P17667309889212411797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048877 n + A001076 n

end

end A048878.P17667309889212411797

namespace A048878

/-- `A048877(n)+A001076(n)` -/
def P17667309889212411797.Spec : Prop :=
  ∀ n, P17667309889212411797.a n = A048878 n

end A048878

/-! ## A048878.P8398230536679026958

`A048876(n)+A014445(n)`
-/

namespace A048878.P8398230536679026958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048876 n + A014445 n

end

end A048878.P8398230536679026958

namespace A048878

/-- `A048876(n)+A014445(n)` -/
def P8398230536679026958.Spec : Prop :=
  ∀ n, P8398230536679026958.a n = A048878 n

end A048878

/-! ## A048878.P15605374613540526537

`A048879(n)-A001076(n)`
-/

namespace A048878.P15605374613540526537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048879 n - A001076 n

end

end A048878.P15605374613540526537

namespace A048878

/-- `A048879(n)-A001076(n)` -/
def P15605374613540526537.Spec : Prop :=
  ∀ n, P15605374613540526537.a n = A048878 n

end A048878

/-! ## A048878.P3658410677039917695

`A110527(n+1)+A110527(n)`
-/

namespace A048878.P3658410677039917695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110527 (n + 1) + A110527 n

end

end A048878.P3658410677039917695

namespace A048878

/-- `A110527(n+1)+A110527(n)` -/
def P3658410677039917695.Spec : Prop :=
  ∀ n, P3658410677039917695.a n = A048878 n

end A048878

/-! ## A048878.P16878880606305799196

`A033887(n+1)-A014448(n)`
-/

namespace A048878.P16878880606305799196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033887 (n + 1) - A014448 n

end

end A048878.P16878880606305799196

namespace A048878

/-- `A033887(n+1)-A014448(n)` -/
def P16878880606305799196.Spec : Prop :=
  ∀ n, P16878880606305799196.a n = A048878 n

end A048878

/-! ## A048878.P3127682791229185784

`A048876(n)+2*A001076(n)`
-/

namespace A048878.P3127682791229185784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048876 n + 2 * A001076 n

end

end A048878.P3127682791229185784

namespace A048878

/-- `A048876(n)+2*A001076(n)` -/
def P3127682791229185784.Spec : Prop :=
  ∀ n, P3127682791229185784.a n = A048878 n

end A048878

/-! ## A048878.P17426025879156555291

`A117647(2*n)+A048876(n)`
-/

namespace A048878.P17426025879156555291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117647 (2 * n) + A048876 n

end

end A048878.P17426025879156555291

namespace A048878

/-- `A117647(2*n)+A048876(n)` -/
def P17426025879156555291.Spec : Prop :=
  ∀ n, P17426025879156555291.a n = A048878 n

end A048878

/-! ## A048878.P6941167609297751423

`A048877(n)+A014445(n)/2`
-/

namespace A048878.P6941167609297751423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048877 n : ℚ) + (A014445 n : ℚ) / 2

end

end A048878.P6941167609297751423

namespace A048878

/-- `A048877(n)+A014445(n)/2` -/
def P6941167609297751423.Spec : Prop :=
  ∀ n, P6941167609297751423.a n = (A048878 n : ℚ)

end A048878

/-!
# A048879: Generalized Pellian with second term of 10.

The programs for A048879, the canonical program `A048879.P1154154645520915212` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048879 has offset 0).

The definition of A048879 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048879.P376853772508222452

`ogf((1+6x)/(1-4x-x^2))`
-/

namespace A048879.P376853772508222452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, -4, -1] n

end

end A048879.P376853772508222452

namespace A048879

/-- `ogf((1+6x)/(1-4x-x^2))` -/
def P376853772508222452.Spec : Prop :=
  ∀ n, P376853772508222452.a n = A048879 n

end A048879

/-! ## A048879.P1154154645520915212

`4*a(n-1)+a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A048879

/-- `4*a(n-1)+a(n-2)` -/
def P1154154645520915212.Spec : Prop :=
  ∀ n, (P1154154645520915212.a n : ℤ) = A048879 n

theorem P1154154645520915212.correct : P1154154645520915212.Spec := by
  intro n
  simp only [A048879]

end A048879

/-! ## A048879.P13422425818632654207

`A022114(3*n)/2`
-/

namespace A048879.P13422425818632654207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022114 (3 * n) : ℚ) / 2

end

end A048879.P13422425818632654207

namespace A048879

/-- `A022114(3*n)/2` -/
def P13422425818632654207.Spec : Prop :=
  ∀ n, P13422425818632654207.a n = (A048879 n : ℚ)

end A048879

/-! ## A048879.P5809603312836533967

`(A022322(3*n)+1)/2`
-/

namespace A048879.P5809603312836533967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022322 (3 * n) + 1 : ℚ) / 2

end

end A048879.P5809603312836533967

namespace A048879

/-- `(A022322(3*n)+1)/2` -/
def P5809603312836533967.Spec : Prop :=
  ∀ n, P5809603312836533967.a n = (A048879 n : ℚ)

end A048879

/-! ## A048879.P15458512643257592438

`A048878(n)+A001076(n)`
-/

namespace A048879.P15458512643257592438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048878 n + A001076 n

end

end A048879.P15458512643257592438

namespace A048879

/-- `A048878(n)+A001076(n)` -/
def P15458512643257592438.Spec : Prop :=
  ∀ n, P15458512643257592438.a n = A048879 n

end A048879

/-! ## A048879.P8927128815357395624

`A048877(n)+A014445(n)`
-/

namespace A048879.P8927128815357395624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048877 n + A014445 n

end

end A048879.P8927128815357395624

namespace A048879

/-- `A048877(n)+A014445(n)` -/
def P8927128815357395624.Spec : Prop :=
  ∀ n, P8927128815357395624.a n = A048879 n

end A048879

/-! ## A048879.P4551483163879016574

`A048877(n)+2*A001076(n)`
-/

namespace A048879.P4551483163879016574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048877 n + 2 * A001076 n

end

end A048879.P4551483163879016574

namespace A048879

/-- `A048877(n)+2*A001076(n)` -/
def P4551483163879016574.Spec : Prop :=
  ∀ n, P4551483163879016574.a n = A048879 n

end A048879

/-! ## A048879.P558814182608258613

`A048875(n)+2*A014445(n)`
-/

namespace A048879.P558814182608258613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048875 n + 2 * A014445 n

end

end A048879.P558814182608258613

namespace A048879

/-- `A048875(n)+2*A014445(n)` -/
def P558814182608258613.Spec : Prop :=
  ∀ n, P558814182608258613.a n = A048879 n

end A048879

/-! ## A048879.P1536268857014673799

`A117647(2*n)+A048877(n)`
-/

namespace A048879.P1536268857014673799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117647 (2 * n) + A048877 n

end

end A048879.P1536268857014673799

namespace A048879

/-- `A117647(2*n)+A048877(n)` -/
def P1536268857014673799.Spec : Prop :=
  ∀ n, P1536268857014673799.a n = A048879 n

end A048879

/-! ## A048879.P17722843250711999471

`2*A048875(n)-A001077(n)`
-/

namespace A048879.P17722843250711999471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048875 n - A001077 n

end

end A048879.P17722843250711999471

namespace A048879

/-- `2*A048875(n)-A001077(n)` -/
def P17722843250711999471.Spec : Prop :=
  ∀ n, P17722843250711999471.a n = A048879 n

end A048879

/-! ## A048879.P5458815446102319131

`A048876(n)+3*A001076(n)`
-/

namespace A048879.P5458815446102319131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048876 n + 3 * A001076 n

end

end A048879.P5458815446102319131

namespace A048879

/-- `A048876(n)+3*A001076(n)` -/
def P5458815446102319131.Spec : Prop :=
  ∀ n, P5458815446102319131.a n = A048879 n

end A048879

/-! ## A048879.P2749293003910453681

`A001060(3*n)-A001077(n)`
-/

namespace A048879.P2749293003910453681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001060 (3 * n) - A001077 n

end

end A048879.P2749293003910453681

namespace A048879

/-- `A001060(3*n)-A001077(n)` -/
def P2749293003910453681.Spec : Prop :=
  ∀ n, P2749293003910453681.a n = A048879 n

end A048879

/-! ## A048879.P8696787824296761370

`A001076(n+1)+6*A001076(n)`
-/

namespace A048879.P8696787824296761370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 (n + 1) + 6 * A001076 n

end

end A048879.P8696787824296761370

namespace A048879

/-- `A001076(n+1)+6*A001076(n)` -/
def P8696787824296761370.Spec : Prop :=
  ∀ n, P8696787824296761370.a n = A048879 n

end A048879

/-! ## A048879.P5527431065790155121

`A048875(n)+2*A000045(A008585(n))`
-/

namespace A048879.P5527431065790155121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048875 n + 2 * A000045 (A008585 n).toNat

end

end A048879.P5527431065790155121

namespace A048879

/-- `A048875(n)+2*A000045(A008585(n))` -/
def P5527431065790155121.Spec : Prop :=
  ∀ n, P5527431065790155121.a n = A048879 n

end A048879

/-! ## A048879.P15543052705541904167

`A001077(n)+A048878(n)-A015448(n)`
-/

namespace A048879.P15543052705541904167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 n + (A048878 n - A015448 n)

end

end A048879.P15543052705541904167

namespace A048879

/-- `A001077(n)+A048878(n)-A015448(n)` -/
def P15543052705541904167.Spec : Prop :=
  ∀ n, P15543052705541904167.a n = A048879 n

end A048879

/-! ## A048879.P3135642034307796217

`A033887(n)+A048878(n)-A001077(n)`
-/

namespace A048879.P3135642034307796217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033887 n + (A048878 n - A001077 n)

end

end A048879.P3135642034307796217

namespace A048879

/-- `A033887(n)+A048878(n)-A001077(n)` -/
def P3135642034307796217.Spec : Prop :=
  ∀ n, P3135642034307796217.a n = A048879 n

end A048879

/-! ## A048879.P2066581258007994540

`A033887(n)+A048877(n)-A015448(n)`
-/

namespace A048879.P2066581258007994540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033887 n + (A048877 n - A015448 n)

end

end A048879.P2066581258007994540

namespace A048879

/-- `A033887(n)+A048877(n)-A015448(n)` -/
def P2066581258007994540.Spec : Prop :=
  ∀ n, P2066581258007994540.a n = A048879 n

end A048879

/-! ## A048879.P9650047348203520373

`A110527(n)+A110528(n)-A001076(n)`
-/

namespace A048879.P9650047348203520373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110527 n + (A110528 n - A001076 n)

end

end A048879.P9650047348203520373

namespace A048879

/-- `A110527(n)+A110528(n)-A001076(n)` -/
def P9650047348203520373.Spec : Prop :=
  ∀ n, P9650047348203520373.a n = A048879 n

end A048879

/-! ## A048879.P16838629017581046315

`A110527(n+1)+A110527(n)+A001076(n)`
-/

namespace A048879.P16838629017581046315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110527 (n + 1) + (A110527 n + A001076 n)

end

end A048879.P16838629017581046315

namespace A048879

/-- `A110527(n+1)+A110527(n)+A001076(n)` -/
def P16838629017581046315.Spec : Prop :=
  ∀ n, P16838629017581046315.a n = A048879 n

end A048879

/-! ## A048879.P5833852804347153773

`A033887(n+1)+A001076(n)-A014448(n)`
-/

namespace A048879.P5833852804347153773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033887 (n + 1) + (A001076 n - A014448 n)

end

end A048879.P5833852804347153773

namespace A048879

/-- `A033887(n+1)+A001076(n)-A014448(n)` -/
def P5833852804347153773.Spec : Prop :=
  ∀ n, P5833852804347153773.a n = A048879 n

end A048879

/-!
# A048880: Primes of the form p*q+2 where p and q are consecutive primes.

The programs for A048880, there is no canonical definition to state claims against.
-/

/-! ## A048880.P11896024125521620578

`A378135(A051507(n+1))`
-/

namespace A048880.P11896024125521620578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378135 (A051507 (n + 1)).toNat

end

end A048880.P11896024125521620578

/-! ## A048880.P9769094558167986849

`∑{d}[A051507(n+1), A119416(#)]`
-/

namespace A048880.P9769094558167986849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A119416 d

end

end A048880.P9769094558167986849

/-! ## A048880.P3938361836847853218

`A119416(A051507(n+1))+or(2, A000038(n))`
-/

namespace A048880.P3938361836847853218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119416 (A051507 (n + 1)).toNat + Int.lor 2 (A000038 n)

end

end A048880.P3938361836847853218

/-! ## A048880.P17860447197915160946

`A119416(A051507(n+1))+A020639(2*(n+1))`
-/

namespace A048880.P17860447197915160946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119416 (A051507 (n + 1)).toNat + A020639 (2 * (n + 1))

end

end A048880.P17860447197915160946

/-! ## A048880.P17386075379129847526

`A119416(A051507(n+1))+2%A000040(2*(n+1))`
-/

namespace A048880.P17386075379129847526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119416 (A051507 (n + 1)).toNat + Int.tmod 2 (A000040 (2 * (n + 1)))

end

end A048880.P17386075379129847526

/-! ## A048880.P6473571892641822117

`A119416(A051507(n+1))+A001221(A006094(n+1))`
-/

namespace A048880.P6473571892641822117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119416 (A051507 (n + 1)).toNat + A001221 (A006094 (n + 1)).toNat

end

end A048880.P6473571892641822117

/-! ## A048880.P12850830413885170252

`A266073(A048797(n+1))+A119416(A051507(n+1))`
-/

namespace A048880.P12850830413885170252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266073 (A048797 (n + 1)).toNat + A119416 (A051507 (n + 1)).toNat

end

end A048880.P12850830413885170252

/-!
# A048881: a(n) = A000120(n+1) - 1 = wt(n+1) - 1.

The programs for A048881, the canonical program `A048881.P16567064232951496228` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048881 has offset 0).

The definition of A048881 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000120(n+1)-1` (program `A048881.P16567064232951496228`, by `A048881.P16567064232951496228.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A048881.P16567064232951496228

`A000120(n+1)-1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A048881

/-- `A000120(n+1)-1` -/
def P16567064232951496228.Spec : Prop :=
  ∀ n, P16567064232951496228.a n = A048881 n

theorem P16567064232951496228.correct : P16567064232951496228.Spec := by
  intro n
  simp only [A048881]

end A048881

/-! ## A048881.P16960706611024187640

`A000120(A129760(n+1))`
-/

namespace A048881.P16960706611024187640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A129760 (n + 1)).toNat

end

end A048881.P16960706611024187640

namespace A048881

/-- `A000120(A129760(n+1))` -/
def P16960706611024187640.Spec : Prop :=
  ∀ n, P16960706611024187640.a n = A048881 n

end A048881

/-! ## A048881.P2299413840977986292

`(n+1)*2-A101925(n+1)`
-/

namespace A048881.P2299413840977986292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * 2 : ℤ) - A101925 (n + 1)

end

end A048881.P2299413840977986292

namespace A048881

/-- `(n+1)*2-A101925(n+1)` -/
def P2299413840977986292.Spec : Prop :=
  ∀ n, P2299413840977986292.a n = A048881 n

theorem P2299413840977986292.correct : P2299413840977986292.Spec := by
  intro n
  simp only [A048881, Nat.add_sub_cancel, A048881.P2299413840977986292.a, A048881.P16567064232951496228.a, A000120, A000120.P2816527436160941581.a, A101925, A101925.P9724492527127448858.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048881

/-! ## A048881.P12468471745496323302

`n-∑[val(n+1, 2)]`
-/

namespace A048881.P12468471745496323302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A048881.P12468471745496323302

namespace A048881

/-- `n-∑[val(n+1, 2)]` -/
def P12468471745496323302.Spec : Prop :=
  ∀ n, P12468471745496323302.a n = A048881 n

end A048881

/-! ## A048881.P380716968151388339

`n-∑[floor(log2(xor(n, n+1)))]`
-/

namespace A048881.P380716968151388339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.xor n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A048881.P380716968151388339

namespace A048881

/-- `n-∑[floor(log2(xor(n, n+1)))]` -/
def P380716968151388339.Spec : Prop :=
  ∀ n, P380716968151388339.a n = A048881 n

end A048881

/-! ## A048881.P11603736980884621490

`n-∑[log2(or(n, n+1)-n)]`
-/

namespace A048881.P11603736980884621490
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048881.P11603736980884621490

namespace A048881

/-- `n-∑[log2(or(n, n+1)-n)]` -/
def P11603736980884621490.Spec : Prop :=
  ∀ n, P11603736980884621490.a n = (A048881 n : ℝ)

end A048881

/-! ## A048881.P2427666743038255333

`(n+1)%(∑[val(n+1, 2)]+1)`
-/

namespace A048881.P2427666743038255333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A048881.P2427666743038255333

namespace A048881

/-- `(n+1)%(∑[val(n+1, 2)]+1)` -/
def P2427666743038255333.Spec : Prop :=
  ∀ n, (P2427666743038255333.a n : ℤ) = A048881 n

end A048881

/-! ## A048881.P11497459035504200789

`n-∑[val(record[(n-1)²], 2)/2]`
-/

namespace A048881.P11497459035504200789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048881.P11497459035504200789

namespace A048881

/-- `n-∑[val(record[(n-1)²], 2)/2]` -/
def P11497459035504200789.Spec : Prop :=
  ∀ n, P11497459035504200789.a n = (A048881 n : ℚ)

end A048881

/-! ## A048881.P12903906166690533991

`a(n-1)+1-val(n+1, 2)` with `a(0)=0`
-/

namespace A048881.P12903906166690533991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - (SequenceMachineLib.valuation (n + 1) 2 : ℤ))

end

end A048881.P12903906166690533991

namespace A048881

/-- `a(n-1)+1-val(n+1, 2)` -/
def P12903906166690533991.Spec : Prop :=
  ∀ n, P12903906166690533991.a n = A048881 n

end A048881

/-! ## A048881.P2358354317982266687

`n-∑[log2(xor(n, n+1)+1)-1]`
-/

namespace A048881.P2358354317982266687
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ) - 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048881.P2358354317982266687

namespace A048881

/-- `n-∑[log2(xor(n, n+1)+1)-1]` -/
def P2358354317982266687.Spec : Prop :=
  ∀ n, P2358354317982266687.a n = (A048881 n : ℝ)

end A048881

/-! ## A048881.P6408279610829738946

`a(and(n+1, n-1))+and(1, n+1)` with `a(0)=0`
-/

namespace A048881.P6408279610829738946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (Int.land (n + 1 : ℤ) ((n : ℤ) - 1)).toNat + Nat.land 1 (n + 1)

end

end A048881.P6408279610829738946

namespace A048881

/-- `a(and(n+1, n-1))+and(1, n+1)` -/
def P6408279610829738946.Spec : Prop :=
  ∀ n, (P6408279610829738946.a n : ℤ) = A048881 n

end A048881

/-! ## A048881.P13328352869247963065

`a(floor((n+1)/2)-1)+n+1-2*floor((n+1)/2)` with `a(0)=0`
-/

namespace A048881.P13328352869247963065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat + ((n + 1 : ℤ) - 2 * ⌊(n + 1 : ℚ) / 2⌋)

end

end A048881.P13328352869247963065

namespace A048881

/-- `a(floor((n+1)/2)-1)+n+1-2*floor((n+1)/2)` -/
def P13328352869247963065.Spec : Prop :=
  ∀ n, P13328352869247963065.a n = A048881 n

end A048881

/-! ## A048881.P1057726993179432985

`log2(A048896(n))`
-/

namespace A048881.P1057726993179432985
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A048896 n : ℝ)

end

end A048881.P1057726993179432985

namespace A048881

/-- `log2(A048896(n))` -/
def P1057726993179432985.Spec : Prop :=
  ∀ n, P1057726993179432985.a n = (A048881 n : ℝ)

end A048881

/-! ## A048881.P4037625663442192467

`val(A246466(n), 2)`
-/

namespace A048881.P4037625663442192467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A246466 n).toNat 2

end

end A048881.P4037625663442192467

namespace A048881

/-- `val(A246466(n), 2)` -/
def P4037625663442192467.Spec : Prop :=
  ∀ n, (P4037625663442192467.a n : ℤ) = A048881 n

end A048881

/-! ## A048881.P1750250768641325671

`val(A329886(n), 3)`
-/

namespace A048881.P1750250768641325671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A329886 n).toNat 3

end

end A048881.P1750250768641325671

namespace A048881

/-- `val(A329886(n), 3)` -/
def P1750250768641325671.Spec : Prop :=
  ∀ n, (P1750250768641325671.a n : ℤ) = A048881 n

end A048881

/-! ## A048881.P1992280881078992146

`log2(Δ[A193494(n)])`
-/

namespace A048881.P1992280881078992146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193494 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A048881.P1992280881078992146

namespace A048881

/-- `log2(Δ[A193494(n)])` -/
def P1992280881078992146.Spec : Prop :=
  ∀ n, P1992280881078992146.a n = (A048881 n : ℝ)

end A048881

/-! ## A048881.P11366347861644748797

`Δ[A000788(n)]-1`
-/

namespace A048881.P11366347861644748797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A048881.P11366347861644748797

namespace A048881

/-- `Δ[A000788(n)]-1` -/
def P11366347861644748797.Spec : Prop :=
  ∀ n, P11366347861644748797.a n = A048881 n

end A048881

/-! ## A048881.P10795228365554129891

`n-Δ[A174605(n)]`
-/

namespace A048881.P10795228365554129891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A048881.P10795228365554129891

namespace A048881

/-- `n-Δ[A174605(n)]` -/
def P10795228365554129891.Spec : Prop :=
  ∀ n, P10795228365554129891.a n = A048881 n

end A048881

/-! ## A048881.P2768108332418130806

`n-A011371(n+1)`
-/

namespace A048881.P2768108332418130806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011371 (n + 1)

end

end A048881.P2768108332418130806

namespace A048881

/-- `n-A011371(n+1)` -/
def P2768108332418130806.Spec : Prop :=
  ∀ n, P2768108332418130806.a n = A048881 n

theorem P2768108332418130806.correct : P2768108332418130806.Spec := by
  intro n
  simp only [A048881, Nat.add_sub_cancel, A048881.P2768108332418130806.a, A048881.P16567064232951496228.a, A000120, A000120.P2816527436160941581.a, A011371, A011371.P12398255777927387864.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048881

/-! ## A048881.P7212394593096927731

`2*n-A283208(n)`
-/

namespace A048881.P7212394593096927731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A283208 n

end

end A048881.P7212394593096927731

namespace A048881

/-- `2*n-A283208(n)` -/
def P7212394593096927731.Spec : Prop :=
  ∀ n, P7212394593096927731.a n = A048881 n

theorem P7212394593096927731.correct : P7212394593096927731.Spec := by
  intro n
  simp only [A048881, Nat.add_sub_cancel, A048881.P7212394593096927731.a, A048881.P16567064232951496228.a, A000120, A000120.P2816527436160941581.a, A283208, A283208.P4144003533356594521.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048881

/-!
# A048882: A convolution triangle of numbers obtained from A034255.

The programs for A048882, there is no canonical definition to state claims against.
-/

/-! ## A048882.P16399251004688736819

`A030526(n+1)/A049353(n+1)*A049029(n+1)`
-/

namespace A048882.P16399251004688736819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030526 (n + 1) : ℚ) / (A049353 (n + 1) : ℚ) * (A049029 (n + 1) : ℚ)

end

end A048882.P16399251004688736819

/-! ## A048882.P10769353526037279194

`A030526(n+1)*A049029(n+1)/A049353(n+1)`
-/

namespace A048882.P10769353526037279194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030526 (n + 1) * A049029 (n + 1) : ℚ) / (A049353 (n + 1) : ℚ)

end

end A048882.P10769353526037279194

/-!
# A048883: a(n) = 3^wt(n), where wt(n) = A000120(n).

The programs for A048883, the canonical program `A048883.P5685372570370684853` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048883 has offset 0).

The definition of A048883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048883.P5685372570370684853

`3*a(n-A053644(n))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048883

/-- `3*a(n-A053644(n))` -/
def P5685372570370684853.Spec : Prop :=
  ∀ n, (P5685372570370684853.a n : ℤ) = A048883 n

theorem P5685372570370684853.correct : P5685372570370684853.Spec := by
  intro n
  simp only [A048883]

end A048883

/-! ## A048883.P16356376926552616798

`3*a(and(n, n-1))` with `a(0)=1`
-/

namespace A048883.P16356376926552616798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A048883.P16356376926552616798

namespace A048883

/-- `3*a(and(n, n-1))` -/
def P16356376926552616798.Spec : Prop :=
  ∀ n, (P16356376926552616798.a n : ℤ) = A048883 n

end A048883

/-! ## A048883.P12500621412571176760

`3^∑[∑{e}[xor(n, -n), 2-#]]`
-/

namespace A048883.P12500621412571176760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A048883.P12500621412571176760

namespace A048883

/-- `3^∑[∑{e}[xor(n, -n), 2-#]]` -/
def P12500621412571176760.Spec : Prop :=
  ∀ n, P12500621412571176760.a n = (A048883 n : ℚ)

end A048883

/-! ## A048883.P3725274351230862328

`∏[3^∑{e}[xor(n, -n), 2-#]]`
-/

namespace A048883.P3725274351230862328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A048883.P3725274351230862328

namespace A048883

/-- `∏[3^∑{e}[xor(n, -n), 2-#]]` -/
def P3725274351230862328.Spec : Prop :=
  ∀ n, P3725274351230862328.a n = (A048883 n : ℚ)

end A048883

/-! ## A048883.P504065466008817322

`6/abs(2/a(and(n, n-1)))` with `a(0)=1`
-/

namespace A048883.P504065466008817322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  6 / |2 / a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat|

end

end A048883.P504065466008817322

namespace A048883

/-- `6/abs(2/a(and(n, n-1)))` -/
def P504065466008817322.Spec : Prop :=
  ∀ n, P504065466008817322.a n = (A048883 n : ℚ)

end A048883

/-! ## A048883.P17786295478143998452

`a(floor(n/2))*a(n%2)` with `a(0)=1, a(1)=3`
-/

namespace A048883.P17786295478143998452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * a (n % 2)

end

end A048883.P17786295478143998452

namespace A048883

/-- `a(floor(n/2))*a(n%2)` -/
def P17786295478143998452.Spec : Prop :=
  ∀ n, (P17786295478143998452.a n : ℤ) = A048883 n

end A048883

/-! ## A048883.P7111742091699008376

`A151712(n)-1`
-/

namespace A048883.P7111742091699008376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151712 n - 1

end

end A048883.P7111742091699008376

namespace A048883

/-- `A151712(n)-1` -/
def P7111742091699008376.Spec : Prop :=
  ∀ n, P7111742091699008376.a n = A048883 n

theorem P7111742091699008376.correct : P7111742091699008376.Spec := by
  intro n
  simp only [A048883, Nat.add_sub_cancel, A048883.P7111742091699008376.a, A048883.P5685372570370684853.a, A053644, A053644.P1707366427427647095.a, A151712, A151712.P17763347096143698757.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048883

/-! ## A048883.P17249698347545748166

`3^A000120(n)`
-/

namespace A048883.P17249698347545748166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A000120 n : ℤ)

end

end A048883.P17249698347545748166

namespace A048883

/-- `3^A000120(n)` -/
def P17249698347545748166.Spec : Prop :=
  ∀ n, P17249698347545748166.a n = (A048883 n : ℚ)

end A048883

/-! ## A048883.P7168529941299055977

`3^∑[A088705(n)]`
-/

namespace A048883.P7168529941299055977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A048883.P7168529941299055977

namespace A048883

/-- `3^∑[A088705(n)]` -/
def P7168529941299055977.Spec : Prop :=
  ∀ n, P7168529941299055977.a n = (A048883 n : ℚ)

end A048883

/-! ## A048883.P16553866451827356085

`2*A162784(n)-1`
-/

namespace A048883.P16553866451827356085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162784 n - 1

end

end A048883.P16553866451827356085

namespace A048883

/-- `2*A162784(n)-1` -/
def P16553866451827356085.Spec : Prop :=
  ∀ n, P16553866451827356085.a n = A048883 n

end A048883

/-! ## A048883.P16544689881725747929

`A162349(n+1)/3`
-/

namespace A048883.P16544689881725747929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162349 (n + 1) : ℚ) / 3

end

end A048883.P16544689881725747929

namespace A048883

/-- `A162349(n+1)/3` -/
def P16544689881725747929.Spec : Prop :=
  ∀ n, P16544689881725747929.a n = (A048883 n : ℚ)

theorem P16544689881725747929.correct : P16544689881725747929.Spec := by
  intro n
  simp only [A048883, Nat.add_sub_cancel, A048883.P16544689881725747929.a, A048883.P5685372570370684853.a, A053644, A053644.P1707366427427647095.a, A162349, A162349.P17912543935636946866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048883

/-! ## A048883.P12173325278653478122

`A161411(n+1)/4`
-/

namespace A048883.P12173325278653478122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161411 (n + 1) : ℚ) / 4

end

end A048883.P12173325278653478122

namespace A048883

/-- `A161411(n+1)/4` -/
def P12173325278653478122.Spec : Prop :=
  ∀ n, P12173325278653478122.a n = (A048883 n : ℚ)

theorem P12173325278653478122.correct : P12173325278653478122.Spec := by
  intro n
  simp only [A048883, Nat.add_sub_cancel, A048883.P12173325278653478122.a, A048883.P5685372570370684853.a, A053644, A053644.P1707366427427647095.a, A161411, A161411.P3251608708821509679.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A048883

/-! ## A048883.P15043285592823581291

`3^(A324467(n)/3)`
-/

namespace A048883.P15043285592823581291
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ ((A324467 n : ℚ) / 3 : ℝ)

end

end A048883.P15043285592823581291

namespace A048883

/-- `3^(A324467(n)/3)` -/
def P15043285592823581291.Spec : Prop :=
  ∀ n, P15043285592823581291.a n = (A048883 n : ℝ)

end A048883

/-! ## A048883.P7850796551823185124

`3^(n-A011371(n))`
-/

namespace A048883.P7850796551823185124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - A011371 n : ℤ)

end

end A048883.P7850796551823185124

namespace A048883

/-- `3^(n-A011371(n))` -/
def P7850796551823185124.Spec : Prop :=
  ∀ n, P7850796551823185124.a n = (A048883 n : ℚ)

end A048883

/-! ## A048883.P17447578916021238

`3^(A092391(n)-n)`
-/

namespace A048883.P17447578916021238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A092391 n - (n : ℤ) : ℤ)

end

end A048883.P17447578916021238

namespace A048883

/-- `3^(A092391(n)-n)` -/
def P17447578916021238.Spec : Prop :=
  ∀ n, P17447578916021238.a n = (A048883 n : ℚ)

end A048883

/-! ## A048883.P5999413826935243903

`3^(A063787(n+1)-1)`
-/

namespace A048883.P5999413826935243903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A063787 (n + 1) - 1 : ℤ)

end

end A048883.P5999413826935243903

namespace A048883

/-- `3^(A063787(n+1)-1)` -/
def P5999413826935243903.Spec : Prop :=
  ∀ n, P5999413826935243903.a n = (A048883 n : ℚ)

end A048883

/-! ## A048883.P17193709223053866369

`∏{digits}[A169965(n+1), #+1]`
-/

namespace A048883.P17193709223053866369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).prod

end

end A048883.P17193709223053866369

namespace A048883

/-- `∏{digits}[A169965(n+1), #+1]` -/
def P17193709223053866369.Spec : Prop :=
  ∀ n, (P17193709223053866369.a n : ℤ) = A048883 n

end A048883

/-! ## A048883.P682884843905608447

`A000244(A000120(n))`
-/

namespace A048883.P682884843905608447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A000120 n).toNat

end

end A048883.P682884843905608447

namespace A048883

/-- `A000244(A000120(n))` -/
def P682884843905608447.Spec : Prop :=
  ∀ n, P682884843905608447.a n = A048883 n

end A048883

/-! ## A048883.P17406144605197617115

`A003959(A001316(n))`
-/

namespace A048883.P17406144605197617115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A001316 n).toNat

end

end A048883.P17406144605197617115

namespace A048883

/-- `A003959(A001316(n))` -/
def P17406144605197617115.Spec : Prop :=
  ∀ n, P17406144605197617115.a n = A048883 n

end A048883

/-! ## A048883.P9562961139938902119

`A116552(A038573(n))`
-/

namespace A048883.P9562961139938902119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116552 (A038573 n).toNat

end

end A048883.P9562961139938902119

namespace A048883

/-- `A116552(A038573(n))` -/
def P9562961139938902119.Spec : Prop :=
  ∀ n, P9562961139938902119.a n = A048883 n

end A048883

/-!
# A048884: Numbers k such that sigma(k) - k = k - pi(k) - 1 where pi(k) is A000720.

The programs for A048884, there is no canonical definition to state claims against.
-/

/-! ## A048884.P829628199247593971

`eq[A001065(n+1), A065855(n+1)]+1`
-/

namespace A048884.P829628199247593971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A048884.P829628199247593971

/-! ## A048884.P3260336748419581347

`eq[A033879(n+1), A036234(n+1)]+1`
-/

namespace A048884.P3260336748419581347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A048884.P3260336748419581347

/-! ## A048884.P3016260918844284091

`eq[A036234(n+1), A103977(n+1)]+1`
-/

namespace A048884.P3016260918844284091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103977 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A048884.P3016260918844284091

/-! ## A048884.P3130026859909510855

`eq[A000720(n+1), A235796(n+1)]+1`
-/

namespace A048884.P3130026859909510855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A048884.P3130026859909510855

/-! ## A048884.P13975740356980560781

`eq[A033885(A028310(n)), A064427(n+1)]`
-/

namespace A048884.P13975740356980560781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064427 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048884.P13975740356980560781

/-!
# A048885: Number of nonisomorphic orthogonal arrays OA(4n,4n-1,2,2).

The programs for A048885, there is no canonical definition to state claims against.
-/

/-! ## A048885.P11379389634878687112

`n^a(n-1)+5` with `a(0)=1, a(1)=1, a(2)=1, a(3)=5, a(4)=3`
-/

namespace A048885.P11379389634878687112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 5, 3] fun n a =>
  n ^ a (n - 1) + 5

end

end A048885.P11379389634878687112

/-! ## A048885.P15304100859249460664

`A185952(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=5, a(4)=3`
-/

namespace A048885.P15304100859249460664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 5, 3] fun n a =>
  A185952 (a (n - 1)).toNat

end

end A048885.P15304100859249460664

/-!
# A048886: Numbers n such that sigma(n) = n-th composite number.

The programs for A048886, there is no canonical definition to state claims against.
-/

/-! ## A048886.P4538600821173756709

`eq[A000203(A233583(n+1)), A141468(n+2)]`
-/

namespace A048886.P4538600821173756709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A048886.P4538600821173756709

/-!
# A048887: Array T read by antidiagonals, where T(m,n) = number of compositions of n into parts <= m.

The programs for A048887, there is no canonical definition to state claims against.
-/

/-! ## A048887.P9230734859318789600

`A175331(∑[char[∑[n]]]²-n+1)`
-/

namespace A048887.P9230734859318789600
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175331 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 1).toNat

end

end A048887.P9230734859318789600

/-! ## A048887.P15924480986647174074

`A144406(A080036(n+1))`
-/

namespace A048887.P15924480986647174074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144406 (A080036 (n + 1)).toNat

end

end A048887.P15924480986647174074

/-! ## A048887.P7367890551327345618

`A144406(A014132(n+2))`
-/

namespace A048887.P7367890551327345618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144406 (A014132 (n + 2)).toNat

end

end A048887.P7367890551327345618

/-! ## A048887.P627394518655063440

`A092921((n-comp[∑[n]])²-(n+1))`
-/

namespace A048887.P627394518655063440
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (n + 1 : ℤ)).toNat

end

end A048887.P627394518655063440

/-! ## A048887.P6365378537684128866

`A247506(eq[0, A158821(n)])`
-/

namespace A048887.P6365378537684128866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A048887.P6365378537684128866

/-! ## A048887.P4789608167809508026

`A247506(lt[0, A067138(n)])`
-/

namespace A048887.P4789608167809508026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A048887.P4789608167809508026

/-! ## A048887.P11640245303162778637

`A247506(2*A014132(n+1)-n)`
-/

namespace A048887.P11640245303162778637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247506 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A048887.P11640245303162778637

/-! ## A048887.P14438627514313110322

`A247506(lt[A193739(n+1), A193739(n)])`
-/

namespace A048887.P14438627514313110322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247506 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A048887.P14438627514313110322

/-! ## A048887.P17123272974426408555

`A247506(A014132(n+1)+A014132(n+1)-n)`
-/

namespace A048887.P17123272974426408555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247506 (A014132 (n + 1) + (A014132 (n + 1) - (n : ℤ))).toNat

end

end A048887.P17123272974426408555

/-! ## A048887.P2893385677295341769

`A247506(lt[2, A193739(n)])`
-/

namespace A048887.P2893385677295341769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A048887.P2893385677295341769

/-! ## A048887.P2132149735419068320

`A247506(lt[n, A247500(n)])`
-/

namespace A048887.P2132149735419068320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247500 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A048887.P2132149735419068320

/-! ## A048887.P7717990538204943676

`A247506(lt[1, A288874(n)])`
-/

namespace A048887.P7717990538204943676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A048887.P7717990538204943676

/-!
# A048888: a(n) = Sum_{m=1..n} T(m,n+1-m), array T as in A048887.

The programs for A048888, there is no canonical definition to state claims against.
-/

/-! ## A048888.P1676431532411274144

`∑[A368279(n+1)]`
-/

namespace A048888.P1676431532411274144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048888.P1676431532411274144

/-! ## A048888.P17570604853580885012

`∑[abs(Δ[A079500(n)])]`
-/

namespace A048888.P17570604853580885012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079500 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048888.P17570604853580885012

/-! ## A048888.P14555862112882531205

`A079500(n+1)-1`
-/

namespace A048888.P14555862112882531205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079500 (n + 1) - 1

end

end A048888.P14555862112882531205

/-! ## A048888.P15630232706449093158

`A007059(n+2)-1`
-/

namespace A048888.P15630232706449093158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 (n + 2) - 1

end

end A048888.P15630232706449093158

/-! ## A048888.P12516547341133771470

`∑[abs(Δ[A007059(n+1)])]`
-/

namespace A048888.P12516547341133771470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007059 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048888.P12516547341133771470

/-! ## A048888.P6934076978603082195

`record[A079500(n)-A000041(C(3, n²))]`
-/

namespace A048888.P6934076978603082195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079500 n - A000041 (Nat.choose 3 (n ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048888.P6934076978603082195

/-! ## A048888.P10340895726692321945

`Δ[A186537(n+1)]-1`
-/

namespace A048888.P10340895726692321945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A048888.P10340895726692321945

/-! ## A048888.P3782499841970606299

`∑[Δ[A336482(n+1)]-A336482(n+1)]`
-/

namespace A048888.P3782499841970606299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336482 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A336482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048888.P3782499841970606299

/-! ## A048888.P4411205629720437977

`Δ[A102712(n+1)]-(A102712(n+1)+1)`
-/

namespace A048888.P4411205629720437977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A102712 (n + 1) + 1)

end

end A048888.P4411205629720437977

/-! ## A048888.P14398598195638987904

`record[A238345(n+1)-1]`
-/

namespace A048888.P14398598195638987904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238345 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A048888.P14398598195638987904

/-! ## A048888.P8953203830535370499

`A238345(A152947(n+2))-1`
-/

namespace A048888.P8953203830535370499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238345 (A152947 (n + 2)).toNat - 1

end

end A048888.P8953203830535370499

/-!
# A048889: Composite numbers not ending in zero that yield a prime when turned upside down.

The programs for A048889, there is no canonical definition to state claims against.
-/

/-! ## A048889.P8840308108245646809

`∩[A080789(n+1), A349733(n+1)]`
-/

namespace A048889.P8840308108245646809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048889.P8840308108245646809

/-!
# A048890: Primes that yield a different prime when rotated by 180 degrees.

The programs for A048890, there is no canonical definition to state claims against.
-/

/-! ## A048890.P17535027979326700492

`∩[A080788(n+1), A272264(n+1)]`
-/

namespace A048890.P17535027979326700492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048890.P17535027979326700492

/-! ## A048890.P11862876313094972466

`∩[A178316(n+1), A272264(n+1)]`
-/

namespace A048890.P11862876313094972466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048890.P11862876313094972466

/-! ## A048890.P8104168908551452349

`p?[∩[A080789(n+1), A272264(n+1)]]`
-/

namespace A048890.P8104168908551452349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080789 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272264 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A048890.P8104168908551452349

/-!
# A048891: Primes that are congruent to 1 mod n, where n is the index of the prime.

The programs for A048891, there is no canonical definition to state claims against.
-/

/-! ## A048891.P15733104019628572136

`A000040(A023143(n+1))`
-/

namespace A048891.P15733104019628572136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A023143 (n + 1)).toNat

end

end A048891.P15733104019628572136

/-! ## A048891.P13361788408403158999

`A023143(n+1)*A255254(n+1)+1`
-/

namespace A048891.P13361788408403158999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023143 (n + 1) * A255254 (n + 1) + 1

end

end A048891.P13361788408403158999

/-! ## A048891.P17591976999313637035

`∩[A073465(n+1), A162567(n+1)]`
-/

namespace A048891.P17591976999313637035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048891.P17591976999313637035

/-! ## A048891.P7665330986913321452

`p?[A073465(n+1)]`
-/

namespace A048891.P7665330986913321452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048891.P7665330986913321452

/-! ## A048891.P5042684295768403672

`p?[record[A073465(A262519(n))]]`
-/

namespace A048891.P5042684295768403672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073465 (A262519 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A048891.P5042684295768403672

/-!
# A048895: Bemirps: primes that yield a different prime when turned upside down with reversals of both being two more different primes.

The programs for A048895, there is no canonical definition to state claims against.
-/

/-! ## A048895.P8799505505712349131

`Δ[A057427(n)*A172384(A028310(n))]`
-/

namespace A048895.P8799505505712349131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A172384 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048895.P8799505505712349131

/-! ## A048895.P6617548941224904724

`A172384(n+1)-A057427(n)*A172384(A028310(n))`
-/

namespace A048895.P6617548941224904724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172384 (n + 1) - A057427 n * A172384 (A028310 n).toNat

end

end A048895.P6617548941224904724

/-! ## A048895.P8018593712616355301

`Δ[A172384(n+1)]-A333648(n+1)`
-/

namespace A048895.P8018593712616355301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A333648 (n + 1)

end

end A048895.P8018593712616355301

/-! ## A048895.P2513730479081724231

`Δ[A172384(A028310(n))%A172384(n+1)]`
-/

namespace A048895.P2513730479081724231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172384 (A028310 n).toNat) (A172384 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048895.P2513730479081724231

/-! ## A048895.P352568481188087322

`∩[A034844(n+1), A335731(n+1)]`
-/

namespace A048895.P352568481188087322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A048895.P352568481188087322

/-!
# A048896: a(n) = 2^(A000120(n+1) - 1), n >= 0.

The programs for A048896, the canonical program `A048896.P6461019053085857547` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048896 has offset 0).

The definition of A048896 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048896.P6461019053085857547

`2^A048881(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A048896

/-- `2^A048881(n)` -/
def P6461019053085857547.Spec : Prop :=
  ∀ n, P6461019053085857547.a n = (A048896 n : ℚ)

end A048896

/-! ## A048896.P17527051010348979376

`1/2*A001316(n+1)`
-/

namespace A048896.P17527051010348979376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A001316 (n + 1) : ℚ)

end

end A048896.P17527051010348979376

namespace A048896

/-- `1/2*A001316(n+1)` -/
def P17527051010348979376.Spec : Prop :=
  ∀ n, P17527051010348979376.a n = (A048896 n : ℚ)

end A048896

/-! ## A048896.P8627931816588877367

`2^(A000120(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048896.P8627931816588877367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 (n + 1) - 1 : ℤ)

end

end A048896.P8627931816588877367

namespace A048896

/-- `2^(A000120(n+1)-1)` -/
def P8627931816588877367.Spec : Prop :=
  ∀ n, P8627931816588877367.a n = (A048896 n : ℚ)

end A048896

/-! ## A048896.P15063713978691290334

`2^(n-∑[val(n+1, 2)])`
-/

namespace A048896.P15063713978691290334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ)

end

end A048896.P15063713978691290334

namespace A048896

/-- `2^(n-∑[val(n+1, 2)])` -/
def P15063713978691290334.Spec : Prop :=
  ∀ n, P15063713978691290334.a n = (A048896 n : ℚ)

end A048896

/-! ## A048896.P7525500750325367631

`gcd(2, n)*a(floor((n-1)/2))` with `a(0)=1`
-/

namespace A048896.P7525500750325367631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd 2 n * a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat

end

end A048896.P7525500750325367631

namespace A048896

/-- `gcd(2, n)*a(floor((n-1)/2))` -/
def P7525500750325367631.Spec : Prop :=
  ∀ n, (P7525500750325367631.a n : ℤ) = A048896 n

end A048896

/-! ## A048896.P716476187243694747

`lcm(n+1, 2*a(n-1))/(n+1)` with `a(0)=1`
-/

namespace A048896.P716476187243694747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (n + 1 : ℤ) (SequenceMachineLib.roundAway (2 * a (n - 1))) : ℚ) / (n + 1 : ℚ)

end

end A048896.P716476187243694747

namespace A048896

/-- `lcm(n+1, 2*a(n-1))/(n+1)` -/
def P716476187243694747.Spec : Prop :=
  ∀ n, P716476187243694747.a n = (A048896 n : ℚ)

end A048896

/-! ## A048896.P13974181054143541314

`2*a(n-1)/and(n+1, -(n+1))` with `a(0)=1`
-/

namespace A048896.P13974181054143541314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

end

end A048896.P13974181054143541314

namespace A048896

/-- `2*a(n-1)/and(n+1, -(n+1))` -/
def P13974181054143541314.Spec : Prop :=
  ∀ n, P13974181054143541314.a n = (A048896 n : ℚ)

end A048896

/-! ## A048896.P3321989833130549018

`2*a(and(n, n-1))/2^val(n+1, 2)` with `a(0)=1`
-/

namespace A048896.P3321989833130549018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

end

end A048896.P3321989833130549018

namespace A048896

/-- `2*a(and(n, n-1))/2^val(n+1, 2)` -/
def P3321989833130549018.Spec : Prop :=
  ∀ n, P3321989833130549018.a n = (A048896 n : ℚ)

end A048896

/-! ## A048896.P17643663182493489348

`a(n-1)*ratio[2/n*lcm(n, a(n-1))]` with `a(0)=1`
-/

namespace A048896.P17643663182493489348
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 / (n : ℚ) * (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (f1 (n - 1))) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (f1 (n + 1) / f1 n)

end

end A048896.P17643663182493489348

namespace A048896

/-- `a(n-1)*ratio[2/n*lcm(n, a(n-1))]` -/
def P17643663182493489348.Spec : Prop :=
  ∀ n, P17643663182493489348.a n = (A048896 n : ℚ)

end A048896

/-! ## A048896.P3867480121841528796

`2/gcd(n+1, 2*a(n-1))*a(n-1)` with `a(0)=1`
-/

namespace A048896.P3867480121841528796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 / (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (2 * a (n - 1))) : ℚ) * a (n - 1)

end

end A048896.P3867480121841528796

namespace A048896

/-- `2/gcd(n+1, 2*a(n-1))*a(n-1)` -/
def P3867480121841528796.Spec : Prop :=
  ∀ n, P3867480121841528796.a n = (A048896 n : ℚ)

end A048896

/-! ## A048896.P10219722684389313422

`Δ[A193494(n)]`
-/

namespace A048896.P10219722684389313422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A048896.P10219722684389313422

namespace A048896

/-- `Δ[A193494(n)]` -/
def P10219722684389313422.Spec : Prop :=
  ∀ n, P10219722684389313422.a n = A048896 n

end A048896

/-! ## A048896.P17982236761183256945

`sqrt(A151783(n+1))`
-/

namespace A048896.P17982236761183256945
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A151783 (n + 1) : ℝ)

end

end A048896.P17982236761183256945

namespace A048896

/-- `sqrt(A151783(n+1))` -/
def P17982236761183256945.Spec : Prop :=
  ∀ n, P17982236761183256945.a n = (A048896 n : ℝ)

end A048896

/-! ## A048896.P2303883177890890210

`A001316(n+1)/2`
-/

namespace A048896.P2303883177890890210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 (n + 1) : ℚ) / 2

end

end A048896.P2303883177890890210

namespace A048896

/-- `A001316(n+1)/2` -/
def P2303883177890890210.Spec : Prop :=
  ∀ n, P2303883177890890210.a n = (A048896 n : ℚ)

end A048896

/-! ## A048896.P5047632407188729596

`A071055(n)/2+1`
-/

namespace A048896.P5047632407188729596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071055 n : ℚ) / 2 + 1

end

end A048896.P5047632407188729596

namespace A048896

/-- `A071055(n)/2+1` -/
def P5047632407188729596.Spec : Prop :=
  ∀ n, P5047632407188729596.a n = (A048896 n : ℚ)

end A048896

/-! ## A048896.P16526798675709040848

`A167275(n+1)/4`
-/

namespace A048896.P16526798675709040848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167275 (n + 1) : ℚ) / 4

end

end A048896.P16526798675709040848

namespace A048896

/-- `A167275(n+1)/4` -/
def P16526798675709040848.Spec : Prop :=
  ∀ n, P16526798675709040848.a n = (A048896 n : ℚ)

end A048896

/-! ## A048896.P9632052595263002769

`A001316(and(n, n+1))`
-/

namespace A048896.P9632052595263002769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (Nat.land n (n + 1))

end

end A048896.P9632052595263002769

namespace A048896

/-- `A001316(and(n, n+1))` -/
def P9632052595263002769.Spec : Prop :=
  ∀ n, P9632052595263002769.a n = A048896 n

end A048896

/-! ## A048896.P14245090058490143741

`A060632(and(n, n+1))`
-/

namespace A048896.P14245090058490143741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (Nat.land n (n + 1))

end

end A048896.P14245090058490143741

namespace A048896

/-- `A060632(and(n, n+1))` -/
def P14245090058490143741.Spec : Prop :=
  ∀ n, P14245090058490143741.a n = A048896 n

end A048896

/-! ## A048896.P3028810552362328560

`A071044(and(n, n+1))`
-/

namespace A048896.P3028810552362328560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (Nat.land n (n + 1))

end

end A048896.P3028810552362328560

namespace A048896

/-- `A071044(and(n, n+1))` -/
def P3028810552362328560.Spec : Prop :=
  ∀ n, P3028810552362328560.a n = A048896 n

end A048896

/-! ## A048896.P13966368441659386363

`A151930(and(n, n+1))`
-/

namespace A048896.P13966368441659386363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151930 (Nat.land n (n + 1))

end

end A048896.P13966368441659386363

namespace A048896

/-- `A151930(and(n, n+1))` -/
def P13966368441659386363.Spec : Prop :=
  ∀ n, P13966368441659386363.a n = A048896 n

end A048896

/-! ## A048896.P5943102308468039449

`sqrt(A102376(n+1))/2`
-/

namespace A048896.P5943102308468039449
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A102376 (n + 1) : ℝ) / 2

end

end A048896.P5943102308468039449

namespace A048896

/-- `sqrt(A102376(n+1))/2` -/
def P5943102308468039449.Spec : Prop :=
  ∀ n, P5943102308468039449.a n = (A048896 n : ℝ)

end A048896

/-!
# A048898: One of the two successive approximations up to 5^n for the 5-adic integer sqrt(-1).

The programs for A048898, the canonical program `A048898.P13735143505958419335` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048898 has offset 0).

The definition of A048898 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048898.P13735143505958419335

`(a(n-1)^5)%(5^n)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A048898

/-- `(a(n-1)^5)%(5^n)` -/
def P13735143505958419335.Spec : Prop :=
  ∀ n, (P13735143505958419335.a n : ℤ) = A048898 n

theorem P13735143505958419335.correct : P13735143505958419335.Spec := by
  intro n
  simp only [A048898]

end A048898

/-! ## A048898.P8648144042409933418

`5^n-A048899(n)-A000007(n)`
-/

namespace A048898.P8648144042409933418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) - A048899 n - A000007 n

end

end A048898.P8648144042409933418

namespace A048898

/-- `5^n-A048899(n)-A000007(n)` -/
def P8648144042409933418.Spec : Prop :=
  ∀ n, P8648144042409933418.a n = A048898 n

end A048898

/-! ## A048898.P5907170045016188050

`(A000351(n)-A048899(n))*(1-floor(acot(n)))`
-/

namespace A048898.P5907170045016188050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000351 n - A048899 n) * (1 - ⌊SequenceMachineLib.acot (n : ℝ)⌋)

end

end A048898.P5907170045016188050

namespace A048898

/-- `(A000351(n)-A048899(n))*(1-floor(acot(n)))` -/
def P5907170045016188050.Spec : Prop :=
  ∀ n, P5907170045016188050.a n = A048898 n

end A048898

/-! ## A048898.P14786568526337311770

`A048899(n)+A210848(n)-A210849(n)`
-/

namespace A048898.P14786568526337311770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048899 n + (A210848 n - A210849 n)

end

end A048898.P14786568526337311770

namespace A048898

/-- `A048899(n)+A210848(n)-A210849(n)` -/
def P14786568526337311770.Spec : Prop :=
  ∀ n, P14786568526337311770.a n = A048898 n

end A048898

/-! ## A048898.P14477717982879546651

`A268922(n)+A269590(n)-A048899(n)`
-/

namespace A048898.P14477717982879546651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268922 n + (A269590 n - A048899 n)

end

end A048898.P14477717982879546651

namespace A048898

/-- `A268922(n)+A269590(n)-A048899(n)` -/
def P14477717982879546651.Spec : Prop :=
  ∀ n, P14477717982879546651.a n = A048898 n

end A048898

/-! ## A048898.P15633354215432702645

`(A000351(n)-A048899(n))*A057427(n)`
-/

namespace A048898.P15633354215432702645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000351 n - A048899 n) * A057427 n

end

end A048898.P15633354215432702645

namespace A048898

/-- `(A000351(n)-A048899(n))*A057427(n)` -/
def P15633354215432702645.Spec : Prop :=
  ∀ n, P15633354215432702645.a n = A048898 n

end A048898

/-! ## A048898.P8464115756195800149

`(A048899(n)-A000351(n))*A057428(n)`
-/

namespace A048898.P8464115756195800149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048899 n - A000351 n) * A057428 n

end

end A048898.P8464115756195800149

namespace A048898

/-- `(A048899(n)-A000351(n))*A057428(n)` -/
def P8464115756195800149.Spec : Prop :=
  ∀ n, P8464115756195800149.a n = A048898 n

end A048898

/-! ## A048898.P5770752629959642759

`(A000351(n)-A048899(n))*A011586(A178334(n))`
-/

namespace A048898.P5770752629959642759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000351 n - A048899 n) * A011586 (A178334 n).toNat

end

end A048898.P5770752629959642759

namespace A048898

/-- `(A000351(n)-A048899(n))*A011586(A178334(n))` -/
def P5770752629959642759.Spec : Prop :=
  ∀ n, P5770752629959642759.a n = A048898 n

end A048898

/-! ## A048898.P11136837257236663432

`(A269590(n)+A048899(n))%A000351(n)`
-/

namespace A048898.P11136837257236663432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269590 n + A048899 n) (A000351 n)

end

end A048898.P11136837257236663432

namespace A048898

/-- `(A269590(n)+A048899(n))%A000351(n)` -/
def P11136837257236663432.Spec : Prop :=
  ∀ n, P11136837257236663432.a n = A048898 n

end A048898

/-! ## A048898.P16683258701580374823

`A034935(n)%(5^n)`
-/

namespace A048898.P16683258701580374823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034935 n) (5 ^ n : ℤ)

end

end A048898.P16683258701580374823

namespace A048898

/-- `A034935(n)%(5^n)` -/
def P16683258701580374823.Spec : Prop :=
  ∀ n, P16683258701580374823.a n = A048898 n

end A048898

/-!
# A048899: One of the two successive approximations up to 5^n for 5-adic integer sqrt(-1).

The programs for A048899, the canonical program `A048899.P11859723561859631620` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A048899 has offset 0).

The definition of A048899 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A048899.P14590824185711310950

`(a(n-1)^5)%(5^n)` with `a(0)=0, a(1)=3`
-/

namespace A048899.P14590824185711310950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) ^ 5 % 5 ^ n

end

end A048899.P14590824185711310950

namespace A048899

/-- `(a(n-1)^5)%(5^n)` -/
def P14590824185711310950.Spec : Prop :=
  ∀ n, (P14590824185711310950.a n : ℤ) = A048899 n

end A048899

/-! ## A048899.P11859723561859631620

`A066601(5^n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A048899

/-- `A066601(5^n)` -/
def P11859723561859631620.Spec : Prop :=
  ∀ n, P11859723561859631620.a n = A048899 n

theorem P11859723561859631620.correct : P11859723561859631620.Spec := by
  intro n
  simp only [A048899]

end A048899

/-! ## A048899.P1323258951802179628

`A048898(n)+A210849(n)-A210848(n)`
-/

namespace A048899.P1323258951802179628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048898 n + (A210849 n - A210848 n)

end

end A048899.P1323258951802179628

namespace A048899

/-- `A048898(n)+A210849(n)-A210848(n)` -/
def P1323258951802179628.Spec : Prop :=
  ∀ n, P1323258951802179628.a n = A048899 n

end A048899

/-! ## A048899.P10672654363716702006

`A324027(n)+A324028(n)-A048898(n)`
-/

namespace A048899.P10672654363716702006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324027 n + (A324028 n - A048898 n)

end

end A048899.P10672654363716702006

namespace A048899

/-- `A324027(n)+A324028(n)-A048898(n)` -/
def P10672654363716702006.Spec : Prop :=
  ∀ n, P10672654363716702006.a n = A048899 n

end A048899

