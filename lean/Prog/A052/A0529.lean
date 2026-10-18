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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B008.C000
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
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A052900: Expansion of (1-x)/(1-x-3x^3).

The programs for A052900, the canonical program `A052900.P6166469893920020732` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052900 has offset 0).

The definition of A052900 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x-3x^3))` (program `A052900.P6166469893920020732`, by `A052900.P6166469893920020732.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052900.P6166469893920020732

`ogf((1-x)/(1-x-3x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052900

/-- `ogf((1-x)/(1-x-3x^3))` -/
def P6166469893920020732.Spec : Prop :=
  ∀ n, P6166469893920020732.a n = A052900 n

theorem P6166469893920020732.correct : P6166469893920020732.Spec := by
  intro n
  simp only [A052900]

end A052900

/-! ## A052900.P641168544967059892

`a(n-1)+3*a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A052900.P641168544967059892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 1) + 3 * a (n - 3)

end

end A052900.P641168544967059892

namespace A052900

/-- `a(n-1)+3*a(n-3)` -/
def P641168544967059892.Spec : Prop :=
  ∀ n, (P641168544967059892.a n : ℤ) = A052900 n

end A052900

/-! ## A052900.P10822216509825841842

`a(n-1)-3*round(-a(n-3))` with `a(0)=1, a(1)=0, a(2)=0`

`round` is left out, it is the identity on integers.
-/

namespace A052900.P10822216509825841842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 1) - 3 * (-a (n - 3))

end

end A052900.P10822216509825841842

namespace A052900

/-- `a(n-1)-3*round(-a(n-3))` -/
def P10822216509825841842.Spec : Prop :=
  ∀ n, P10822216509825841842.a n = A052900 n

end A052900

/-! ## A052900.P13345449334824226612

`4*a(n-3)-(a(n-3)-a(n-1))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A052900.P13345449334824226612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  4 * a (n - 3) - (a (n - 3) - a (n - 1))

end

end A052900.P13345449334824226612

namespace A052900

/-- `4*a(n-3)-(a(n-3)-a(n-1))` -/
def P13345449334824226612.Spec : Prop :=
  ∀ n, P13345449334824226612.a n = A052900 n

end A052900

/-! ## A052900.P1683282401444285937

`a(n-1)+a(n-3)+a(n-3)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A052900.P1683282401444285937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 1) + (a (n - 3) + (a (n - 3) + a (n - 3)))

end

end A052900.P1683282401444285937

namespace A052900

/-- `a(n-1)+a(n-3)+a(n-3)+a(n-3)` -/
def P1683282401444285937.Spec : Prop :=
  ∀ n, (P1683282401444285937.a n : ℤ) = A052900 n

end A052900

/-! ## A052900.P10980787574465255713

`Δ[Δ[A084386(n+1)/3]]`
-/

namespace A052900.P10980787574465255713
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084386 (n + 1) : ℚ) / 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052900.P10980787574465255713

namespace A052900

/-- `Δ[Δ[A084386(n+1)/3]]` -/
def P10980787574465255713.Spec : Prop :=
  ∀ n, P10980787574465255713.a n = (A052900 n : ℚ)

end A052900

/-!
# A052901: Periodic with period 3: a(3n)=3, a(3n+1)=a(3n+2)=2.

The programs for A052901, the canonical program `A052901.P10645817599971299077` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052901 has offset 0).

The definition of A052901 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052901.P10645817599971299077

`7-a(n-2)-a(n-1)` with `a(0)=3, a(1)=2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052901

/-- `7-a(n-2)-a(n-1)` -/
def P10645817599971299077.Spec : Prop :=
  ∀ n, P10645817599971299077.a n = A052901 n

theorem P10645817599971299077.correct : P10645817599971299077.Spec := by
  intro n
  simp only [A052901]

end A052901

/-!
# A052902: Take n-th prime p, let P = all primes that can be obtained by permuting the digits of p and possibly omitting zeros; a(n) = |p-q| where q in P is the closest to p but different from p (a(n)=0 if no such q exists).

The programs for A052902, there is no canonical definition to state claims against.
-/

/-! ## A052902.P17267079057808072405

`18*A052998(n+1)`
-/

namespace A052902.P17267079057808072405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A052998 (n + 1)

end

end A052902.P17267079057808072405

/-! ## A052902.P15040915443965776948

`A008600(A052998(n+1))`
-/

namespace A052902.P15040915443965776948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008600 (A052998 (n + 1)).toNat

end

end A052902.P15040915443965776948

/-! ## A052902.P1474451896273454947

`A004236(6^A052998(n+1))`
-/

namespace A052902.P1474451896273454947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004236 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A052998 (n + 1) : ℤ))).toNat

end

end A052902.P1474451896273454947

/-! ## A052902.P1250154803959715268

`A052495(n+1)%A257756(n+1)`
-/

namespace A052902.P1250154803959715268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052495 (n + 1)) (A257756 (n + 1))

end

end A052902.P1250154803959715268

/-! ## A052902.P6886462991386946191

`A052495(n+1)+A010051(A061777(n))`
-/

namespace A052902.P6886462991386946191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052495 (n + 1) + A010051 (A061777 n).toNat

end

end A052902.P6886462991386946191

/-!
# A052903: Expansion of (1-x^3)/(1-2x-x^3+x^4).

The programs for A052903, the canonical program `A052903.P13101012123192536246` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052903 has offset 0).

The definition of A052903 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^3)/(1-2x-x^3+x^4))` (program `A052903.P13101012123192536246`, by `A052903.P13101012123192536246.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052903.P13101012123192536246

`ogf((1-x^3)/(1-2x-x^3+x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052903

/-- `ogf((1-x^3)/(1-2x-x^3+x^4))` -/
def P13101012123192536246.Spec : Prop :=
  ∀ n, P13101012123192536246.a n = A052903 n

theorem P13101012123192536246.correct : P13101012123192536246.Spec := by
  intro n
  simp only [A052903]

end A052903

/-! ## A052903.P13045907945168294993

`∑[A052908(n)]`
-/

namespace A052903.P13045907945168294993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052903.P13045907945168294993

namespace A052903

/-- `∑[A052908(n)]` -/
def P13045907945168294993.Spec : Prop :=
  ∀ n, P13045907945168294993.a n = A052903 n

end A052903

/-! ## A052903.P993152169887703764

`A052908(n%n²)+a(n-1)` with `a(0)=1`
-/

namespace A052903.P993152169887703764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052908 (n % n ^ 2) + a (n - 1)

end

end A052903.P993152169887703764

namespace A052903

/-- `A052908(n%n²)+a(n-1)` -/
def P993152169887703764.Spec : Prop :=
  ∀ n, P993152169887703764.a n = A052903 n

end A052903

/-! ## A052903.P3467901239142456327

`A052908(n)+a(abs(A024000(n)))` with `a(0)=1`
-/

namespace A052903.P3467901239142456327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052908 n + a |A024000 n|.toNat

end

end A052903.P3467901239142456327

namespace A052903

/-- `A052908(n)+a(abs(A024000(n)))` -/
def P3467901239142456327.Spec : Prop :=
  ∀ n, P3467901239142456327.a n = A052903 n

end A052903

/-! ## A052903.P16874951692280655775

`a(n-1)+A052908(n)*A054977(n)` with `a(0)=1`
-/

namespace A052903.P16874951692280655775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A052908 n * A054977 n

end

end A052903.P16874951692280655775

namespace A052903

/-- `a(n-1)+A052908(n)*A054977(n)` -/
def P16874951692280655775.Spec : Prop :=
  ∀ n, P16874951692280655775.a n = A052903 n

end A052903

/-! ## A052903.P14782346168932014613

`A052540(n)+A052540(n+2)%A052908(n+1)`
-/

namespace A052903.P14782346168932014613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052540 n + Int.tmod (A052540 (n + 2)) (A052908 (n + 1))

end

end A052903.P14782346168932014613

namespace A052903

/-- `A052540(n)+A052540(n+2)%A052908(n+1)` -/
def P14782346168932014613.Spec : Prop :=
  ∀ n, P14782346168932014613.a n = A052903 n

end A052903

/-!
# A052904: Expansion of (1-x)/(1-2x-4x^2+4x^3).

The programs for A052904, the canonical program `A052904.P16910566977850552289` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052904 has offset 0).

The definition of A052904 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x-4x^2+4x^3))` (program `A052904.P16910566977850552289`, by `A052904.P16910566977850552289.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052904.P16910566977850552289

`ogf((1-x)/(1-2x-4x^2+4x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052904

/-- `ogf((1-x)/(1-2x-4x^2+4x^3))` -/
def P16910566977850552289.Spec : Prop :=
  ∀ n, P16910566977850552289.a n = A052904 n

theorem P16910566977850552289.correct : P16910566977850552289.Spec := by
  intro n
  simp only [A052904]

end A052904

/-! ## A052904.P16628156912242348055

`A088940(A160823(n))`
-/

namespace A052904.P16628156912242348055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088940 (A160823 n).toNat

end

end A052904.P16628156912242348055

namespace A052904

/-- `A088940(A160823(n))` -/
def P16628156912242348055.Spec : Prop :=
  ∀ n, P16628156912242348055.a n = A052904 n

end A052904

/-!
# A052905: a(n) = (n^2 + 7*n + 2)/2.

The programs for A052905, the canonical program `A052905.P8844017416732751175` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052905 has offset 0).

The definition of A052905 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052905.P8844017416732751175

`n*(n+7)/2+1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052905

/-- `n*(n+7)/2+1` -/
def P8844017416732751175.Spec : Prop :=
  ∀ n, P8844017416732751175.a n = (A052905 n : ℚ)

end A052905

/-! ## A052905.P2928803985487181652

`(n²+7*n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A052905.P2928803985487181652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 7 * n + 2 : ℚ) / 2

end

end A052905.P2928803985487181652

namespace A052905

/-- `(n²+7*n+2)/2` -/
def P2928803985487181652.Spec : Prop :=
  ∀ n, P2928803985487181652.a n = (A052905 n : ℚ)

end A052905

/-! ## A052905.P10187111713675433864

`abs(5-C(n+4, 2))`
-/

namespace A052905.P10187111713675433864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - (Nat.choose (n + 4) 2 : ℤ)|

end

end A052905.P10187111713675433864

namespace A052905

/-- `abs(5-C(n+4, 2))` -/
def P10187111713675433864.Spec : Prop :=
  ∀ n, P10187111713675433864.a n = A052905 n

end A052905

/-! ## A052905.P12016555305503242505

`∑[3%comp[∑[n]]+n]`
-/

namespace A052905.P12016555305503242505
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052905.P12016555305503242505

namespace A052905

/-- `∑[3%comp[∑[n]]+n]` -/
def P12016555305503242505.Spec : Prop :=
  ∀ n, (P12016555305503242505.a n : ℤ) = A052905 n

end A052905

/-! ## A052905.P2941312616640070067

`∑[gcd(n+3, floor(acot(n)))]`
-/

namespace A052905.P2941312616640070067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052905.P2941312616640070067

namespace A052905

/-- `∑[gcd(n+3, floor(acot(n)))]` -/
def P2941312616640070067.Spec : Prop :=
  ∀ n, (P2941312616640070067.a n : ℤ) = A052905 n

end A052905

/-! ## A052905.P2035859075244027392

`∑[round(∑[cosh(acot(n-1))])]`
-/

namespace A052905.P2035859075244027392
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052905.P2035859075244027392

namespace A052905

/-- `∑[round(∑[cosh(acot(n-1))])]` -/
def P2035859075244027392.Spec : Prop :=
  ∀ n, P2035859075244027392.a n = A052905 n

end A052905

/-! ## A052905.P2880595142800188734

`∑[n--3%comp[∑[n]]]`
-/

namespace A052905.P2880595142800188734
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (-3) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052905.P2880595142800188734

namespace A052905

/-- `∑[n--3%comp[∑[n]]]` -/
def P2880595142800188734.Spec : Prop :=
  ∀ n, P2880595142800188734.a n = A052905 n

end A052905

/-! ## A052905.P16060146807817024860

`∑[(n+3)^ceil(abs(sin(n)))]`
-/

namespace A052905.P16060146807817024860
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052905.P16060146807817024860

namespace A052905

/-- `∑[(n+3)^ceil(abs(sin(n)))]` -/
def P16060146807817024860.Spec : Prop :=
  ∀ n, P16060146807817024860.a n = (A052905 n : ℚ)

end A052905

/-! ## A052905.P10184640460237314603

`∑[ogf((1+2x-2x^2)/(1-2x+x^2))]`
-/

namespace A052905.P10184640460237314603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052905.P10184640460237314603

namespace A052905

/-- `∑[ogf((1+2x-2x^2)/(1-2x+x^2))]` -/
def P10184640460237314603.Spec : Prop :=
  ∀ n, P10184640460237314603.a n = A052905 n

end A052905

/-! ## A052905.P7763211079550859432

`ogf((1+2x-2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A052905.P7763211079550859432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -2] [1, -3, 3, -1] n

end

end A052905.P7763211079550859432

namespace A052905

/-- `ogf((1+2x-2x^2)/(1-3x+3x^2-x^3))` -/
def P7763211079550859432.Spec : Prop :=
  ∀ n, P7763211079550859432.a n = A052905 n

end A052905

/-! ## A052905.P13556089503362929523

`abs(a(n-1)+3+n)` with `a(0)=1`
-/

namespace A052905.P13556089503362929523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 3 + n

end

end A052905.P13556089503362929523

namespace A052905

/-- `abs(a(n-1)+3+n)` -/
def P13556089503362929523.Spec : Prop :=
  ∀ n, (P13556089503362929523.a n : ℤ) = A052905 n

end A052905

/-! ## A052905.P7874901289513819096

`floor(a(n-1)+3+n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A052905.P7874901289513819096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 3 + n

end

end A052905.P7874901289513819096

namespace A052905

/-- `floor(a(n-1)+3+n)` -/
def P7874901289513819096.Spec : Prop :=
  ∀ n, (P7874901289513819096.a n : ℤ) = A052905 n

end A052905

/-! ## A052905.P6688214595823080833

`ceil(a(n-1)+3+n)` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A052905.P6688214595823080833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 3 + n

end

end A052905.P6688214595823080833

namespace A052905

/-- `ceil(a(n-1)+3+n)` -/
def P6688214595823080833.Spec : Prop :=
  ∀ n, (P6688214595823080833.a n : ℤ) = A052905 n

end A052905

/-! ## A052905.P14751498055913451118

`∑[(n+3)%(3*n+2)]`
-/

namespace A052905.P14751498055913451118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) % (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052905.P14751498055913451118

namespace A052905

/-- `∑[(n+3)%(3*n+2)]` -/
def P14751498055913451118.Spec : Prop :=
  ∀ n, (P14751498055913451118.a n : ℤ) = A052905 n

end A052905

/-! ## A052905.P10050712678279683212

`round(a(n-1)+3+n)` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A052905.P10050712678279683212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 3 + n

end

end A052905.P10050712678279683212

namespace A052905

/-- `round(a(n-1)+3+n)` -/
def P10050712678279683212.Spec : Prop :=
  ∀ n, (P10050712678279683212.a n : ℤ) = A052905 n

end A052905

/-! ## A052905.P12278045949122871951

`record[C(n, 2)-(3*n-1)]`
-/

namespace A052905.P12278045949122871951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - ((3 * n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052905.P12278045949122871951

namespace A052905

/-- `record[C(n, 2)-(3*n-1)]` -/
def P12278045949122871951.Spec : Prop :=
  ∀ n, P12278045949122871951.a n = A052905 n

end A052905

/-! ## A052905.P15640219256154960343

`-(∑[xor(n+2, -1)]+2)`
-/

namespace A052905.P15640219256154960343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 2 : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A052905.P15640219256154960343

namespace A052905

/-- `-(∑[xor(n+2, -1)]+2)` -/
def P15640219256154960343.Spec : Prop :=
  ∀ n, P15640219256154960343.a n = A052905 n

end A052905

/-! ## A052905.P7645736832710522693

`record[a(n-1)-4+n]` with `a(0)=1`
-/

namespace A052905.P7645736832710522693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 4 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052905.P7645736832710522693

namespace A052905

/-- `record[a(n-1)-4+n]` -/
def P7645736832710522693.Spec : Prop :=
  ∀ n, P7645736832710522693.a n = A052905 n

end A052905

/-! ## A052905.P816640266677381534

`record[a(n-1)-(4-n)]` with `a(0)=1`
-/

namespace A052905.P816640266677381534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - (4 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052905.P816640266677381534

namespace A052905

/-- `record[a(n-1)-(4-n)]` -/
def P816640266677381534.Spec : Prop :=
  ∀ n, P816640266677381534.a n = A052905 n

end A052905

/-! ## A052905.P6717748998564860946

`floor(C(n+3, 2)-ϕ+n)`
-/

namespace A052905.P6717748998564860946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 3) 2 : ℝ) - Real.goldenRatio + (n : ℝ)⌋

end

end A052905.P6717748998564860946

namespace A052905

/-- `floor(C(n+3, 2)-ϕ+n)` -/
def P6717748998564860946.Spec : Prop :=
  ∀ n, P6717748998564860946.a n = A052905 n

end A052905

/-!
# A052906: Expansion of (1-x^2)/(1-3*x-x^2).

The programs for A052906, the canonical program `A052906.P6195429938666532701` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052906 has offset 0).

The definition of A052906 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-3x-x^2))` (program `A052906.P6195429938666532701`, by `A052906.P6195429938666532701.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052906.P6195429938666532701

`ogf((1-x^2)/(1-3x-x^2))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052906

/-- `ogf((1-x^2)/(1-3x-x^2))` -/
def P6195429938666532701.Spec : Prop :=
  ∀ n, P6195429938666532701.a n = A052906 n

theorem P6195429938666532701.correct : P6195429938666532701.Spec := by
  intro n
  simp only [A052906]

end A052906

/-! ## A052906.P9651880324434433085

`3*a(n-1)+a(n-2)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A052906.P9651880324434433085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  3 * a (n - 1) + a (n - 2)

end

end A052906.P9651880324434433085

namespace A052906

/-- `3*a(n-1)+a(n-2)` -/
def P9651880324434433085.Spec : Prop :=
  ∀ n, (P9651880324434433085.a n : ℤ) = A052906 n

end A052906

/-! ## A052906.P6630598433416339028

`Δ[a(n-2)+a(n-1)/(1-2/3)]` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A052906.P6630598433416339028
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 4] fun n f1 =>
  f1 (n - 2) + f1 (n - 1) / (1 - (2 : ℚ) / 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052906.P6630598433416339028

namespace A052906

/-- `Δ[a(n-2)+a(n-1)/(1-2/3)]` -/
def P6630598433416339028.Spec : Prop :=
  ∀ n, P6630598433416339028.a n = (A052906 n : ℚ)

end A052906

/-! ## A052906.P11529473016067716640

`3*a(n-1)-(a(n-2)%3-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A052906.P11529473016067716640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * a (n - 1) - (Int.tmod (a (n - 2)) 3 - a (n - 2))

end

end A052906.P11529473016067716640

namespace A052906

/-- `3*a(n-1)-(a(n-2)%3-a(n-2))` -/
def P11529473016067716640.Spec : Prop :=
  ∀ n, P11529473016067716640.a n = A052906 n

end A052906

/-! ## A052906.P10678923692104303202

`A018186(n-(1-n)%(n+1))`
-/

namespace A052906.P10678923692104303202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018186 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A052906.P10678923692104303202

namespace A052906

/-- `A018186(n-(1-n)%(n+1))` -/
def P10678923692104303202.Spec : Prop :=
  ∀ n, P10678923692104303202.a n = A052906 n

end A052906

/-! ## A052906.P1084848568548443534

`A018186(floor(3/acot(n))-(n+1))`
-/

namespace A052906.P1084848568548443534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018186 (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ - (n + 1 : ℤ)).toNat

end

end A052906.P1084848568548443534

namespace A052906

/-- `A018186(floor(3/acot(n))-(n+1))` -/
def P1084848568548443534.Spec : Prop :=
  ∀ n, P1084848568548443534.a n = A052906 n

end A052906

/-! ## A052906.P15742046386812427467

`A018186(A004273(n))`
-/

namespace A052906.P15742046386812427467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018186 (A004273 n).toNat

end

end A052906.P15742046386812427467

namespace A052906

/-- `A018186(A004273(n))` -/
def P15742046386812427467.Spec : Prop :=
  ∀ n, P15742046386812427467.a n = A052906 n

end A052906

/-! ## A052906.P4496252957471428341

`A018186(record[A026741(n)])`
-/

namespace A052906.P4496252957471428341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018186 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A052906.P4496252957471428341

namespace A052906

/-- `A018186(record[A026741(n)])` -/
def P4496252957471428341.Spec : Prop :=
  ∀ n, P4496252957471428341.a n = A052906 n

end A052906

/-! ## A052906.P1704746818278540732

`A249579(A008574(n)+3)`
-/

namespace A052906.P1704746818278540732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (A008574 n + 3).toNat

end

end A052906.P1704746818278540732

namespace A052906

/-- `A249579(A008574(n)+3)` -/
def P1704746818278540732.Spec : Prop :=
  ∀ n, P1704746818278540732.a n = A052906 n

end A052906

/-! ## A052906.P15337401271553728565

`A052991(n)+A006190(n)`
-/

namespace A052906.P15337401271553728565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052991 n + A006190 n

end

end A052906.P15337401271553728565

namespace A052906

/-- `A052991(n)+A006190(n)` -/
def P15337401271553728565.Spec : Prop :=
  ∀ n, P15337401271553728565.a n = A052906 n

end A052906

/-! ## A052906.P15612236060998073730

`A018186(eq[n, A026741(n)])`
-/

namespace A052906.P15612236060998073730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052906.P15612236060998073730

namespace A052906

/-- `A018186(eq[n, A026741(n)])` -/
def P15612236060998073730.Spec : Prop :=
  ∀ n, P15612236060998073730.a n = A052906 n

end A052906

/-! ## A052906.P5874372943793686102

`A018186(eq[n, A317326(n)])`
-/

namespace A052906.P5874372943793686102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A052906.P5874372943793686102

namespace A052906

/-- `A018186(eq[n, A317326(n)])` -/
def P5874372943793686102.Spec : Prop :=
  ∀ n, P5874372943793686102.a n = A052906 n

end A052906

/-! ## A052906.P5001104789496382618

`A018186(record[gcd(n, A000217(n))])`
-/

namespace A052906.P5001104789496382618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000217 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018186 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A052906.P5001104789496382618

namespace A052906

/-- `A018186(record[gcd(n, A000217(n))])` -/
def P5001104789496382618.Spec : Prop :=
  ∀ n, P5001104789496382618.a n = A052906 n

end A052906

/-! ## A052906.P17396211699748739965

`A249579(A267872(2*n+1))`
-/

namespace A052906.P17396211699748739965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (A267872 (2 * n + 1)).toNat

end

end A052906.P17396211699748739965

namespace A052906

/-- `A249579(A267872(2*n+1))` -/
def P17396211699748739965.Spec : Prop :=
  ∀ n, P17396211699748739965.a n = A052906 n

end A052906

/-! ## A052906.P16357345129362880325

`A305889(2*n)+A052991(n)`
-/

namespace A052906.P16357345129362880325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305889 (2 * n) + A052991 n

end

end A052906.P16357345129362880325

namespace A052906

/-- `A305889(2*n)+A052991(n)` -/
def P16357345129362880325.Spec : Prop :=
  ∀ n, P16357345129362880325.a n = A052906 n

end A052906

/-! ## A052906.P6990736224398143087

`A249579(3*(n+1)+A028310(n))`
-/

namespace A052906.P6990736224398143087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 ((3 * (n + 1) : ℤ) + A028310 n).toNat

end

end A052906.P6990736224398143087

namespace A052906

/-- `A249579(3*(n+1)+A028310(n))` -/
def P6990736224398143087.Spec : Prop :=
  ∀ n, P6990736224398143087.a n = A052906 n

end A052906

/-! ## A052906.P2352450179619067834

`A006190(A028310(n))+2*A006190(n)`
-/

namespace A052906.P2352450179619067834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 (A028310 n).toNat + 2 * A006190 n

end

end A052906.P2352450179619067834

namespace A052906

/-- `A006190(A028310(n))+2*A006190(n)` -/
def P2352450179619067834.Spec : Prop :=
  ∀ n, P2352450179619067834.a n = A052906 n

end A052906

/-! ## A052906.P7079808727963084988

`A006190(n+1)-A006190(log2(A011782(n)))`
-/

namespace A052906.P7079808727963084988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 (n + 1) - A006190 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A052906.P7079808727963084988

namespace A052906

/-- `A006190(n+1)-A006190(log2(A011782(n)))` -/
def P7079808727963084988.Spec : Prop :=
  ∀ n, P7079808727963084988.a n = A052906 n

end A052906

/-! ## A052906.P17499085669524471180

`A305889(2*n)+A305889(A004280(n+2))`
-/

namespace A052906.P17499085669524471180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305889 (2 * n) + A305889 (A004280 (n + 2)).toNat

end

end A052906.P17499085669524471180

namespace A052906

/-- `A305889(2*n)+A305889(A004280(n+2))` -/
def P17499085669524471180.Spec : Prop :=
  ∀ n, P17499085669524471180.a n = A052906 n

end A052906

/-!
# A052907: Expansion of 1/(1 - 2*x^2 - 2*x^3).

The programs for A052907, the canonical program `A052907.P16877838307373844970` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052907 has offset 0).

The definition of A052907 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x^2-2x^3))` (program `A052907.P16877838307373844970`, by `A052907.P16877838307373844970.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052907.P16877838307373844970

`ogf(1/(1-2x^2-2x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052907

/-- `ogf(1/(1-2x^2-2x^3))` -/
def P16877838307373844970.Spec : Prop :=
  ∀ n, P16877838307373844970.a n = A052907 n

theorem P16877838307373844970.correct : P16877838307373844970.Spec := by
  intro n
  simp only [A052907]

end A052907

/-! ## A052907.P7486460461359050250

`2*(a(n-2)+a(n-3))` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A052907.P7486460461359050250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  2 * (a (n - 2) + a (n - 3))

end

end A052907.P7486460461359050250

namespace A052907

/-- `2*(a(n-2)+a(n-3))` -/
def P7486460461359050250.Spec : Prop :=
  ∀ n, (P7486460461359050250.a n : ℤ) = A052907 n

end A052907

/-! ## A052907.P8109880172866743366

`a(n-2)+a(n-3)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A052907.P8109880172866743366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (n - 2) + (a (n - 3) + (a (n - 2) + a (n - 3)))

end

end A052907.P8109880172866743366

namespace A052907

/-- `a(n-2)+a(n-3)+a(n-2)+a(n-3)` -/
def P8109880172866743366.Spec : Prop :=
  ∀ n, (P8109880172866743366.a n : ℤ) = A052907 n

end A052907

/-! ## A052907.P16408353630152981196

`∑[A078023(n)]`
-/

namespace A052907.P16408353630152981196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052907.P16408353630152981196

namespace A052907

/-- `∑[A078023(n)]` -/
def P16408353630152981196.Spec : Prop :=
  ∀ n, P16408353630152981196.a n = A052907 n

end A052907

/-! ## A052907.P17004909845923877098

`A247302(3*(n+1))`
-/

namespace A052907.P17004909845923877098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247302 (3 * (n + 1))

end

end A052907.P17004909845923877098

namespace A052907

/-- `A247302(3*(n+1))` -/
def P17004909845923877098.Spec : Prop :=
  ∀ n, P17004909845923877098.a n = A052907 n

end A052907

/-! ## A052907.P9648421916132975845

`abs(∑[A078025(n)])`
-/

namespace A052907.P9648421916132975845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A052907.P9648421916132975845

namespace A052907

/-- `abs(∑[A078025(n)])` -/
def P9648421916132975845.Spec : Prop :=
  ∀ n, P9648421916132975845.a n = A052907 n

end A052907

/-! ## A052907.P13228435824917440478

`A107383(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A052907.P13228435824917440478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A107383 (n + 1) - a (n - 1)

end

end A052907.P13228435824917440478

namespace A052907

/-- `A107383(n+1)-a(n-1)` -/
def P13228435824917440478.Spec : Prop :=
  ∀ n, P13228435824917440478.a n = A052907 n

end A052907

/-! ## A052907.P16097447526475213118

`A061279(n+1)-(A107383(n)+A061279(n))`
-/

namespace A052907.P16097447526475213118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061279 (n + 1) - (A107383 n + A061279 n)

end

end A052907.P16097447526475213118

namespace A052907

/-- `A061279(n+1)-(A107383(n)+A061279(n))` -/
def P16097447526475213118.Spec : Prop :=
  ∀ n, P16097447526475213118.a n = A052907 n

end A052907

/-! ## A052907.P17372917190419917786

`A061279(n)-Δ[Δ[A061279(n)]]`
-/

namespace A052907.P17372917190419917786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061279 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061279 n - (f1 (n + 1) - f1 n)

end

end A052907.P17372917190419917786

namespace A052907

/-- `A061279(n)-Δ[Δ[A061279(n)]]` -/
def P17372917190419917786.Spec : Prop :=
  ∀ n, P17372917190419917786.a n = A052907 n

end A052907

/-!
# A052908: Expansion of 1 + x/(1 - 2*x - x^3 + x^4).

The programs for A052908, the canonical program `A052908.P4144264818074347102` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052908 has offset 0).

The definition of A052908 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-x^3+x^4)/(1-2x-x^3+x^4))` (program `A052908.P4144264818074347102`, by `A052908.P4144264818074347102.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052908.P4144264818074347102

`ogf((1-x-x^3+x^4)/(1-2x-x^3+x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052908

/-- `ogf((1-x-x^3+x^4)/(1-2x-x^3+x^4))` -/
def P4144264818074347102.Spec : Prop :=
  ∀ n, P4144264818074347102.a n = A052908 n

theorem P4144264818074347102.correct : P4144264818074347102.Spec := by
  intro n
  simp only [A052908]

end A052908

/-! ## A052908.P8305517924844810810

`2*a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=9`
-/

namespace A052908.P8305517924844810810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4, 9] fun n a =>
  2 * a (n - 1) + a (n - 3) - a (n - 4)

end

end A052908.P8305517924844810810

namespace A052908

/-- `2*a(n-1)+a(n-3)-a(n-4)` -/
def P8305517924844810810.Spec : Prop :=
  ∀ n, P8305517924844810810.a n = A052908 n

end A052908

/-! ## A052908.P9489925327592255037

`A052540(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A052908.P9489925327592255037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A052540 (n - 1) + a (n - 1)

end

end A052908.P9489925327592255037

namespace A052908

/-- `A052540(n-1)+a(n-1)` -/
def P9489925327592255037.Spec : Prop :=
  ∀ n, P9489925327592255037.a n = A052908 n

end A052908

/-! ## A052908.P14497033852644499136

`A004525(round(ϕ^3*a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A052908.P14497033852644499136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A004525 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 3 * (a (n - 1) : ℝ))).toNat

end

end A052908.P14497033852644499136

namespace A052908

/-- `A004525(round(ϕ^3*a(n-1)))` -/
def P14497033852644499136.Spec : Prop :=
  ∀ n, P14497033852644499136.a n = A052908 n

end A052908

/-! ## A052908.P2042921058085060325

`A226190(floor(sqrt(A026762(n+1))))`
-/

namespace A052908.P2042921058085060325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (Int.sqrt (A026762 (n + 1))).toNat

end

end A052908.P2042921058085060325

namespace A052908

/-- `A226190(floor(sqrt(A026762(n+1))))` -/
def P2042921058085060325.Spec : Prop :=
  ∀ n, P2042921058085060325.a n = A052908 n

end A052908

/-!
# A052909: Expansion of g.f. (1+x-x^2)/((1-x)*(1-3*x)).

The programs for A052909, the canonical program `A052909.P9641342594808510780` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052909 has offset 0).

The definition of A052909 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-x^2)/(1-4x+3x^2))` (program `A052909.P9641342594808510780`, by `A052909.P9641342594808510780.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052909.P9641342594808510780

`ogf((1+x-x^2)/(1-4x+3x^2))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052909

/-- `ogf((1+x-x^2)/(1-4x+3x^2))` -/
def P9641342594808510780.Spec : Prop :=
  ∀ n, P9641342594808510780.a n = A052909 n

theorem P9641342594808510780.correct : P9641342594808510780.Spec := by
  intro n
  simp only [A052909]

end A052909

/-! ## A052909.P16707789595671282948

`3*a(n-1)+1` with `a(0)=1, a(1)=5`
-/

namespace A052909.P16707789595671282948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  3 * a (n - 1) + 1

end

end A052909.P16707789595671282948

namespace A052909

/-- `3*a(n-1)+1` -/
def P16707789595671282948.Spec : Prop :=
  ∀ n, (P16707789595671282948.a n : ℤ) = A052909 n

end A052909

/-! ## A052909.P16665459120835432854

`floor(11*3^n/6)`
-/

namespace A052909.P16665459120835432854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊11 * ((3 ^ n : ℚ) / 6)⌋

end

end A052909.P16665459120835432854

namespace A052909

/-- `floor(11*3^n/6)` -/
def P16665459120835432854.Spec : Prop :=
  ∀ n, P16665459120835432854.a n = A052909 n

end A052909

/-! ## A052909.P8321269559782743175

`lcm(3, a(n-1))+1` with `a(0)=1, a(1)=5`
-/

namespace A052909.P8321269559782743175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  Nat.lcm 3 (a (n - 1)) + 1

end

end A052909.P8321269559782743175

namespace A052909

/-- `lcm(3, a(n-1))+1` -/
def P8321269559782743175.Spec : Prop :=
  ∀ n, (P8321269559782743175.a n : ℤ) = A052909 n

end A052909

/-! ## A052909.P16008881432694257635

`∑[3*a(n-1)]` with `a(0)=1, a(1)=4, a(2)=11`
-/

namespace A052909.P16008881432694257635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 11] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052909.P16008881432694257635

namespace A052909

/-- `∑[3*a(n-1)]` -/
def P16008881432694257635.Spec : Prop :=
  ∀ n, (P16008881432694257635.a n : ℤ) = A052909 n

end A052909

/-! ## A052909.P9292086825652480783

`4-3*(1-a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A052909.P9292086825652480783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  4 - 3 * (1 - a (n - 1))

end

end A052909.P9292086825652480783

namespace A052909

/-- `4-3*(1-a(n-1))` -/
def P9292086825652480783.Spec : Prop :=
  ∀ n, P9292086825652480783.a n = A052909 n

end A052909

/-! ## A052909.P8370906154291883078

`a(n-1)/cot(atan(3))+1` with `a(0)=1, a(1)=5`
-/

namespace A052909.P8370906154291883078
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) / Real.cot (Real.arctan (3 : ℝ)) + 1

end

end A052909.P8370906154291883078

namespace A052909

/-- `a(n-1)/cot(atan(3))+1` -/
def P8370906154291883078.Spec : Prop :=
  ∀ n, P8370906154291883078.a n = (A052909 n : ℝ)

end A052909

/-! ## A052909.P610458725942588217

`a(n-1)/sqrt(1/9)+1` with `a(0)=1, a(1)=5`
-/

namespace A052909.P610458725942588217
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ) + 1

end

end A052909.P610458725942588217

namespace A052909

/-- `a(n-1)/sqrt(1/9)+1` -/
def P610458725942588217.Spec : Prop :=
  ∀ n, P610458725942588217.a n = (A052909 n : ℝ)

end A052909

/-! ## A052909.P11305780358225812828

`a(n-1)+a(n-1)+a(n-1)+1` with `a(0)=1, a(1)=5`
-/

namespace A052909.P11305780358225812828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + 1))

end

end A052909.P11305780358225812828

namespace A052909

/-- `a(n-1)+a(n-1)+a(n-1)+1` -/
def P11305780358225812828.Spec : Prop :=
  ∀ n, (P11305780358225812828.a n : ℤ) = A052909 n

end A052909

/-! ## A052909.P4390487309090639281

`A239288(3*n)+1`
-/

namespace A052909.P4390487309090639281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239288 (3 * n) + 1

end

end A052909.P4390487309090639281

namespace A052909

/-- `A239288(3*n)+1` -/
def P4390487309090639281.Spec : Prop :=
  ∀ n, P4390487309090639281.a n = A052909 n

end A052909

/-! ## A052909.P7883456810176804720

`A253062(3*n+2)`
-/

namespace A052909.P7883456810176804720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253062 (3 * n + 2)

end

end A052909.P7883456810176804720

namespace A052909

/-- `A253062(3*n+2)` -/
def P7883456810176804720.Spec : Prop :=
  ∀ n, P7883456810176804720.a n = A052909 n

end A052909

/-! ## A052909.P13429183552753041044

`A336337(n)+2^n`
-/

namespace A052909.P13429183552753041044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336337 n + (2 ^ n : ℤ)

end

end A052909.P13429183552753041044

namespace A052909

/-- `A336337(n)+2^n` -/
def P13429183552753041044.Spec : Prop :=
  ∀ n, P13429183552753041044.a n = A052909 n

end A052909

/-! ## A052909.P12805958211583518023

`A003946(n)+A003462(n)`
-/

namespace A052909.P12805958211583518023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n + A003462 n

end

end A052909.P12805958211583518023

namespace A052909

/-- `A003946(n)+A003462(n)` -/
def P12805958211583518023.Spec : Prop :=
  ∀ n, P12805958211583518023.a n = A052909 n

end A052909

/-! ## A052909.P9116993854931292646

`∑[A140429(n)+A080923(n)]`
-/

namespace A052909.P9116993854931292646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + A080923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052909.P9116993854931292646

namespace A052909

/-- `∑[A140429(n)+A080923(n)]` -/
def P9116993854931292646.Spec : Prop :=
  ∀ n, P9116993854931292646.a n = A052909 n

end A052909

/-! ## A052909.P18345105063602814872

`A052156(n+1)+A003462(n)`
-/

namespace A052909.P18345105063602814872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 (n + 1) + A003462 n

end

end A052909.P18345105063602814872

namespace A052909

/-- `A052156(n+1)+A003462(n)` -/
def P18345105063602814872.Spec : Prop :=
  ∀ n, P18345105063602814872.a n = A052909 n

end A052909

/-! ## A052909.P16023817024636412463

`A090327(n+1)+A001047(n)`
-/

namespace A052909.P16023817024636412463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090327 (n + 1) + A001047 n

end

end A052909.P16023817024636412463

namespace A052909

/-- `A090327(n+1)+A001047(n)` -/
def P16023817024636412463.Spec : Prop :=
  ∀ n, P16023817024636412463.a n = A052909 n

end A052909

/-! ## A052909.P16221104802605194961

`A094388(n)+A029858(n+1)`
-/

namespace A052909.P16221104802605194961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 n + A029858 (n + 1)

end

end A052909.P16221104802605194961

namespace A052909

/-- `A094388(n)+A029858(n+1)` -/
def P16221104802605194961.Spec : Prop :=
  ∀ n, P16221104802605194961.a n = A052909 n

end A052909

/-! ## A052909.P3318640247492312929

`A085279(n)+A053152(n+1)`
-/

namespace A052909.P3318640247492312929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085279 n + A053152 (n + 1)

end

end A052909.P3318640247492312929

namespace A052909

/-- `A085279(n)+A053152(n+1)` -/
def P3318640247492312929.Spec : Prop :=
  ∀ n, P3318640247492312929.a n = A052909 n

end A052909

/-! ## A052909.P16150889268051614126

`A140429(n)+A003462(n+1)`
-/

namespace A052909.P16150889268051614126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + A003462 (n + 1)

end

end A052909.P16150889268051614126

namespace A052909

/-- `A140429(n)+A003462(n+1)` -/
def P16150889268051614126.Spec : Prop :=
  ∀ n, P16150889268051614126.a n = A052909 n

end A052909

/-! ## A052909.P14121708249346160206

`A261547(n+1)+A140429(n)`
-/

namespace A052909.P14121708249346160206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261547 (n + 1) + A140429 n

end

end A052909.P14121708249346160206

namespace A052909

/-- `A261547(n+1)+A140429(n)` -/
def P14121708249346160206.Spec : Prop :=
  ∀ n, P14121708249346160206.a n = A052909 n

end A052909

/-!
# A052910: Expansion of 1 + 2/(1-2*x-x^3).

The programs for A052910, the canonical program `A052910.P16454518782238249052` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052910 has offset 0).

The definition of A052910 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052910.P16454518782238249052

`2*a(n-1)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052910

/-- `2*a(n-1)+a(n-3)` -/
def P16454518782238249052.Spec : Prop :=
  ∀ n, (P16454518782238249052.a n : ℤ) = A052910 n

theorem P16454518782238249052.correct : P16454518782238249052.Spec := by
  intro n
  simp only [A052910]

end A052910

/-! ## A052910.P1862806703753521613

`ogf((-1+x^3)/(-1+2x+x^3))`
-/

namespace A052910.P1862806703753521613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -1] [1, -2, 0, -1] n

end

end A052910.P1862806703753521613

namespace A052910

/-- `ogf((-1+x^3)/(-1+2x+x^3))` -/
def P1862806703753521613.Spec : Prop :=
  ∀ n, P1862806703753521613.a n = A052910 n

end A052910

/-! ## A052910.P16556140275223786576

`a(n-1)+a(n-1)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A052910.P16556140275223786576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 3))

end

end A052910.P16556140275223786576

namespace A052910

/-- `a(n-1)+a(n-1)+a(n-3)` -/
def P16556140275223786576.Spec : Prop :=
  ∀ n, (P16556140275223786576.a n : ℤ) = A052910 n

theorem P16556140275223786576.correct : P16556140275223786576.Spec := by
  intro n
  simp only [A052910, Nat.add_sub_cancel, A052910.P16556140275223786576.a, A052910.P16454518782238249052.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A052910

/-! ## A052910.P6579229534174934337

`A008998(n)-A332647(n)%A052980(n)`
-/

namespace A052910.P6579229534174934337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 n - Int.tmod (A332647 n) (A052980 n)

end

end A052910.P6579229534174934337

namespace A052910

/-- `A008998(n)-A332647(n)%A052980(n)` -/
def P6579229534174934337.Spec : Prop :=
  ∀ n, P6579229534174934337.a n = A052910 n

end A052910

/-! ## A052910.P14571402574573044467

`A000007(n)+Δ[A193641(A028310(n))]`
-/

namespace A052910.P14571402574573044467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A052910.P14571402574573044467

namespace A052910

/-- `A000007(n)+Δ[A193641(A028310(n))]` -/
def P14571402574573044467.Spec : Prop :=
  ∀ n, P14571402574573044467.a n = A052910 n

end A052910

/-! ## A052910.P9751420656235856751

`A335274(n+1)-A008998(n)%A077852(n)`
-/

namespace A052910.P9751420656235856751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335274 (n + 1) - Int.tmod (A008998 n) (A077852 n)

end

end A052910.P9751420656235856751

namespace A052910

/-- `A335274(n+1)-A008998(n)%A077852(n)` -/
def P9751420656235856751.Spec : Prop :=
  ∀ n, P9751420656235856751.a n = A052910 n

end A052910

/-! ## A052910.P17235278533896655213

`A052980(n+1)-A008998(n+1)%A335274(n+1)`
-/

namespace A052910.P17235278533896655213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 (n + 1) - Int.tmod (A008998 (n + 1)) (A335274 (n + 1))

end

end A052910.P17235278533896655213

namespace A052910

/-- `A052980(n+1)-A008998(n+1)%A335274(n+1)` -/
def P17235278533896655213.Spec : Prop :=
  ∀ n, P17235278533896655213.a n = A052910 n

end A052910

/-! ## A052910.P9393171512582135901

`A193641(n+1)+A000007(n)-A193641(A028310(n))`
-/

namespace A052910.P9393171512582135901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (n + 1) + (A000007 n - A193641 (A028310 n).toNat)

end

end A052910.P9393171512582135901

namespace A052910

/-- `A193641(n+1)+A000007(n)-A193641(A028310(n))` -/
def P9393171512582135901.Spec : Prop :=
  ∀ n, P9393171512582135901.a n = A052910 n

end A052910

/-! ## A052910.P10565694594873637945

`A193641(n+1)-A057427(n)*A193641(A028310(n))`
-/

namespace A052910.P10565694594873637945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (n + 1) - A057427 n * A193641 (A028310 n).toNat

end

end A052910.P10565694594873637945

namespace A052910

/-- `A193641(n+1)-A057427(n)*A193641(A028310(n))` -/
def P10565694594873637945.Spec : Prop :=
  ∀ n, P10565694594873637945.a n = A052910 n

end A052910

/-! ## A052910.P1486738613248379630

`Δ[A193641(A028310(n))%A249059(n)]`
-/

namespace A052910.P1486738613248379630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193641 (A028310 n).toNat) (A249059 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052910.P1486738613248379630

namespace A052910

/-- `Δ[A193641(A028310(n))%A249059(n)]` -/
def P1486738613248379630.Spec : Prop :=
  ∀ n, P1486738613248379630.a n = A052910 n

end A052910

/-!
# A052911: Expansion of (1-x)/(1 - 3*x - x^2 + 2*x^3).

The programs for A052911, the canonical program `A052911.P17183817005748457731` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052911 has offset 0).

The definition of A052911 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-3x-x^2+2x^3))` (program `A052911.P17183817005748457731`, by `A052911.P17183817005748457731.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052911.P17183817005748457731

`ogf((1-x)/(1-3x-x^2+2x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052911

/-- `ogf((1-x)/(1-3x-x^2+2x^3))` -/
def P17183817005748457731.Spec : Prop :=
  ∀ n, P17183817005748457731.a n = A052911 n

theorem P17183817005748457731.correct : P17183817005748457731.Spec := by
  intro n
  simp only [A052911]

end A052911

/-! ## A052911.P11145882957043451291

`3*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A052911.P11145882957043451291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  3 * a (n - 1) + a (n - 2) - 2 * a (n - 3)

end

end A052911.P11145882957043451291

namespace A052911

/-- `3*a(n-1)+a(n-2)-2*a(n-3)` -/
def P11145882957043451291.Spec : Prop :=
  ∀ n, P11145882957043451291.a n = A052911 n

end A052911

/-! ## A052911.P1921603903974769187

`A100059(n)+a(n-1)` with `a(0)=1`
-/

namespace A052911.P1921603903974769187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A100059 n + a (n - 1)

end

end A052911.P1921603903974769187

namespace A052911

/-- `A100059(n)+a(n-1)` -/
def P1921603903974769187.Spec : Prop :=
  ∀ n, P1921603903974769187.a n = A052911 n

end A052911

/-! ## A052911.P11698012952489554118

`A052939(n)-a(n-1)` with `a(0)=1`
-/

namespace A052911.P11698012952489554118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052939 n - a (n - 1)

end

end A052911.P11698012952489554118

namespace A052911

/-- `A052939(n)-a(n-1)` -/
def P11698012952489554118.Spec : Prop :=
  ∀ n, P11698012952489554118.a n = A052911 n

end A052911

/-! ## A052911.P11413538379303871985

`∑[A100059(round(sqrt(n²+1)))]`
-/

namespace A052911.P11413538379303871985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100059 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052911.P11413538379303871985

namespace A052911

/-- `∑[A100059(round(sqrt(n²+1)))]` -/
def P11413538379303871985.Spec : Prop :=
  ∀ n, P11413538379303871985.a n = A052911 n

end A052911

/-! ## A052911.P15469697449545735538

`A100059(n+1)-Δ[A052550(n)]`
-/

namespace A052911.P15469697449545735538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100059 (n + 1) - (f1 (n + 1) - f1 n)

end

end A052911.P15469697449545735538

namespace A052911

/-- `A100059(n+1)-Δ[A052550(n)]` -/
def P15469697449545735538.Spec : Prop :=
  ∀ n, P15469697449545735538.a n = A052911 n

end A052911

/-! ## A052911.P1664377300000563269

`A052939(n)+A052939(n)-A052550(n+1)`
-/

namespace A052911.P1664377300000563269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052939 n + (A052939 n - A052550 (n + 1))

end

end A052911.P1664377300000563269

namespace A052911

/-- `A052939(n)+A052939(n)-A052550(n+1)` -/
def P1664377300000563269.Spec : Prop :=
  ∀ n, P1664377300000563269.a n = A052911 n

end A052911

/-! ## A052911.P7795262073594928839

`A100059(n+1)+A052550(n)-A052550(n+1)`
-/

namespace A052911.P7795262073594928839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100059 (n + 1) + (A052550 n - A052550 (n + 1))

end

end A052911.P7795262073594928839

namespace A052911

/-- `A100059(n+1)+A052550(n)-A052550(n+1)` -/
def P7795262073594928839.Spec : Prop :=
  ∀ n, P7795262073594928839.a n = A052911 n

end A052911

/-! ## A052911.P10459785749071127346

`Δ[A100058(n)]-A100059(n+1)`
-/

namespace A052911.P10459785749071127346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A100059 (n + 1)

end

end A052911.P10459785749071127346

namespace A052911

/-- `Δ[A100058(n)]-A100059(n+1)` -/
def P10459785749071127346.Spec : Prop :=
  ∀ n, P10459785749071127346.a n = A052911 n

end A052911

/-! ## A052911.P1582177621432752824

`A052550(n+2)-A052939(n+1)`
-/

namespace A052911.P1582177621432752824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052550 (n + 2) - A052939 (n + 1)

end

end A052911.P1582177621432752824

namespace A052911

/-- `A052550(n+2)-A052939(n+1)` -/
def P1582177621432752824.Spec : Prop :=
  ∀ n, P1582177621432752824.a n = A052911 n

end A052911

/-! ## A052911.P8205755654791824256

`(A100059(n+2)-A100058(n+1))/2`
-/

namespace A052911.P8205755654791824256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100059 (n + 2) - A100058 (n + 1) : ℚ) / 2

end

end A052911.P8205755654791824256

namespace A052911

/-- `(A100059(n+2)-A100058(n+1))/2` -/
def P8205755654791824256.Spec : Prop :=
  ∀ n, P8205755654791824256.a n = (A052911 n : ℚ)

end A052911

/-! ## A052911.P18066819998300952655

`A052939(n+1)+A100058(n)-A100058(n+1)`
-/

namespace A052911.P18066819998300952655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052939 (n + 1) + (A100058 n - A100058 (n + 1))

end

end A052911.P18066819998300952655

namespace A052911

/-- `A052939(n+1)+A100058(n)-A100058(n+1)` -/
def P18066819998300952655.Spec : Prop :=
  ∀ n, P18066819998300952655.a n = A052911 n

end A052911

/-! ## A052911.P181357171452651387

`A100058(n+1)-(A100059(n+1)+A100058(n))`
-/

namespace A052911.P181357171452651387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100058 (n + 1) - (A100059 (n + 1) + A100058 n)

end

end A052911.P181357171452651387

namespace A052911

/-- `A100058(n+1)-(A100059(n+1)+A100058(n))` -/
def P181357171452651387.Spec : Prop :=
  ∀ n, P181357171452651387.a n = A052911 n

end A052911

/-! ## A052911.P9357217468845509345

`A019481(n+1)-A052550(n+3)`
-/

namespace A052911.P9357217468845509345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019481 (n + 1) - A052550 (n + 3)

end

end A052911.P9357217468845509345

namespace A052911

/-- `A019481(n+1)-A052550(n+3)` -/
def P9357217468845509345.Spec : Prop :=
  ∀ n, P9357217468845509345.a n = A052911 n

end A052911

/-! ## A052911.P352755433203881945

`Δ[A052939(n+2)%A052939(n+1)]`
-/

namespace A052911.P352755433203881945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052939 (n + 2)) (A052939 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052911.P352755433203881945

namespace A052911

/-- `Δ[A052939(n+2)%A052939(n+1)]` -/
def P352755433203881945.Spec : Prop :=
  ∀ n, P352755433203881945.a n = A052911 n

end A052911

/-!
# A052912: Expansion of 1/(1-2*x-2*x^3).

The programs for A052912, the canonical program `A052912.P3655550449553510719` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052912 has offset 0).

The definition of A052912 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-2x^3))` (program `A052912.P3655550449553510719`, by `A052912.P3655550449553510719.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052912.P3655550449553510719

`ogf(1/(1-2x-2x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052912

/-- `ogf(1/(1-2x-2x^3))` -/
def P3655550449553510719.Spec : Prop :=
  ∀ n, P3655550449553510719.a n = A052912 n

theorem P3655550449553510719.correct : P3655550449553510719.Spec := by
  intro n
  simp only [A052912]

end A052912

/-! ## A052912.P11858057849980019933

`2*a(n-1)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A052912.P11858057849980019933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 * a (n - 1) + 2 * a (n - 3)

end

end A052912.P11858057849980019933

namespace A052912

/-- `2*a(n-1)+2*a(n-3)` -/
def P11858057849980019933.Spec : Prop :=
  ∀ n, (P11858057849980019933.a n : ℤ) = A052912 n

end A052912

/-! ## A052912.P14035905579752359769

`2*(a(n-1)+a(n-3))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A052912.P14035905579752359769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 * (a (n - 1) + a (n - 3))

end

end A052912.P14035905579752359769

namespace A052912

/-- `2*(a(n-1)+a(n-3))` -/
def P14035905579752359769.Spec : Prop :=
  ∀ n, (P14035905579752359769.a n : ℤ) = A052912 n

end A052912

/-! ## A052912.P11294818989960107596

`a(n-1)+a(n-1)+a(n-3)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A052912.P11294818989960107596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 3) + a (n - 3)))

end

end A052912.P11294818989960107596

namespace A052912

/-- `a(n-1)+a(n-1)+a(n-3)+a(n-3)` -/
def P11294818989960107596.Spec : Prop :=
  ∀ n, (P11294818989960107596.a n : ℤ) = A052912 n

end A052912

/-! ## A052912.P16007335704771727144

`∑[A077999(n)]`
-/

namespace A052912.P16007335704771727144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052912.P16007335704771727144

namespace A052912

/-- `∑[A077999(n)]` -/
def P16007335704771727144.Spec : Prop :=
  ∀ n, P16007335704771727144.a n = A052912 n

end A052912

/-! ## A052912.P3295338286174927620

`∑[abs(A110524(n))]`
-/

namespace A052912.P3295338286174927620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110524 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052912.P3295338286174927620

namespace A052912

/-- `∑[abs(A110524(n))]` -/
def P3295338286174927620.Spec : Prop :=
  ∀ n, P3295338286174927620.a n = A052912 n

end A052912

/-! ## A052912.P10352539233255196700

`A239333(n)+A239333(n)-A077999(n+1)`
-/

namespace A052912.P10352539233255196700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239333 n + (A239333 n - A077999 (n + 1))

end

end A052912.P10352539233255196700

namespace A052912

/-- `A239333(n)+A239333(n)-A077999(n+1)` -/
def P10352539233255196700.Spec : Prop :=
  ∀ n, P10352539233255196700.a n = A052912 n

end A052912

/-! ## A052912.P9428944638469094689

`abs(∑[A078062(n)])`
-/

namespace A052912.P9428944638469094689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A052912.P9428944638469094689

namespace A052912

/-- `abs(∑[A078062(n)])` -/
def P9428944638469094689.Spec : Prop :=
  ∀ n, P9428944638469094689.a n = A052912 n

end A052912

/-! ## A052912.P16382680809461166886

`A239040(n+1)-A239333(n+1)`
-/

namespace A052912.P16382680809461166886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239040 (n + 1) - A239333 (n + 1)

end

end A052912.P16382680809461166886

namespace A052912

/-- `A239040(n+1)-A239333(n+1)` -/
def P16382680809461166886.Spec : Prop :=
  ∀ n, P16382680809461166886.a n = A052912 n

end A052912

/-! ## A052912.P17458694682788283388

`A239333(n+2)%A239333(n+1)`
-/

namespace A052912.P17458694682788283388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239333 (n + 2)) (A239333 (n + 1))

end

end A052912.P17458694682788283388

namespace A052912

/-- `A239333(n+2)%A239333(n+1)` -/
def P17458694682788283388.Spec : Prop :=
  ∀ n, P17458694682788283388.a n = A052912 n

end A052912

/-! ## A052912.P3535355050876485967

`A077851(n+1)-(A077999(n+1)+A077851(n))`
-/

namespace A052912.P3535355050876485967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077851 (n + 1) - (A077999 (n + 1) + A077851 n)

end

end A052912.P3535355050876485967

namespace A052912

/-- `A077851(n+1)-(A077999(n+1)+A077851(n))` -/
def P3535355050876485967.Spec : Prop :=
  ∀ n, P3535355050876485967.a n = A052912 n

end A052912

/-! ## A052912.P5153846048762330509

`∑[A110522(∑[n])*A110524(n)]`
-/

namespace A052912.P5153846048762330509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110522 (∑ j ∈ Finset.range (n + 1), f2 j) * A110524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052912.P5153846048762330509

namespace A052912

/-- `∑[A110522(∑[n])*A110524(n)]` -/
def P5153846048762330509.Spec : Prop :=
  ∀ n, P5153846048762330509.a n = A052912 n

end A052912

/-!
# A052913: a(n+2) = 5*a(n+1) - 2*a(n), with a(0) = 1, a(1) = 4.

The programs for A052913, the canonical program `A052913.P11197689299417475169` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052913 has offset 0).

The definition of A052913 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052913.P11197689299417475169

`5*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052913

/-- `5*a(n-1)-2*a(n-2)` -/
def P11197689299417475169.Spec : Prop :=
  ∀ n, P11197689299417475169.a n = A052913 n

theorem P11197689299417475169.correct : P11197689299417475169.Spec := by
  intro n
  simp only [A052913]

end A052913

/-! ## A052913.P11627947421829804186

`ogf((1-x)/(1-5x+2x^2))`
-/

namespace A052913.P11627947421829804186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -5, 2] n

end

end A052913.P11627947421829804186

namespace A052913

/-- `ogf((1-x)/(1-5x+2x^2))` -/
def P11627947421829804186.Spec : Prop :=
  ∀ n, P11627947421829804186.a n = A052913 n

end A052913

/-! ## A052913.P3981897134065868946

`∑[A060801(n)]`
-/

namespace A052913.P3981897134065868946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052913.P3981897134065868946

namespace A052913

/-- `∑[A060801(n)]` -/
def P3981897134065868946.Spec : Prop :=
  ∀ n, P3981897134065868946.a n = A052913 n

end A052913

/-! ## A052913.P17294156244051274277

`A079162(Δ[n²])`
-/

namespace A052913.P17294156244051274277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079162 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A052913.P17294156244051274277

namespace A052913

/-- `A079162(Δ[n²])` -/
def P17294156244051274277.Spec : Prop :=
  ∀ n, P17294156244051274277.a n = A052913 n

end A052913

/-! ## A052913.P14643697517155124440

`Δ[A005824(2*n)]`
-/

namespace A052913.P14643697517155124440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005824 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052913.P14643697517155124440

namespace A052913

/-- `Δ[A005824(2*n)]` -/
def P14643697517155124440.Spec : Prop :=
  ∀ n, P14643697517155124440.a n = A052913 n

end A052913

/-! ## A052913.P13640865969289128098

`Δ[A249581(4*n)]`
-/

namespace A052913.P13640865969289128098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249581 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052913.P13640865969289128098

namespace A052913

/-- `Δ[A249581(4*n)]` -/
def P13640865969289128098.Spec : Prop :=
  ∀ n, P13640865969289128098.a n = A052913 n

end A052913

/-! ## A052913.P337926681309599269

`A147722(n+1)/2`
-/

namespace A052913.P337926681309599269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147722 (n + 1) : ℚ) / 2

end

end A052913.P337926681309599269

namespace A052913

/-- `A147722(n+1)/2` -/
def P337926681309599269.Spec : Prop :=
  ∀ n, P337926681309599269.a n = (A052913 n : ℚ)

end A052913

/-! ## A052913.P16273231533790853524

`Δ[(1-A106709(n))/2]`
-/

namespace A052913.P16273231533790853524
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A106709 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052913.P16273231533790853524

namespace A052913

/-- `Δ[(1-A106709(n))/2]` -/
def P16273231533790853524.Spec : Prop :=
  ∀ n, P16273231533790853524.a n = (A052913 n : ℚ)

end A052913

/-! ## A052913.P16641039512251666302

`Δ[A079162(2*n)/2]`
-/

namespace A052913.P16641039512251666302
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079162 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052913.P16641039512251666302

namespace A052913

/-- `Δ[A079162(2*n)/2]` -/
def P16641039512251666302.Spec : Prop :=
  ∀ n, P16641039512251666302.a n = (A052913 n : ℚ)

end A052913

/-! ## A052913.P6430215833285931687

`Δ[Δ[abs(A152594(n)/2)]]`
-/

namespace A052913.P6430215833285931687
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A152594 n : ℚ) / 2|

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052913.P6430215833285931687

namespace A052913

/-- `Δ[Δ[abs(A152594(n)/2)]]` -/
def P6430215833285931687.Spec : Prop :=
  ∀ n, P6430215833285931687.a n = (A052913 n : ℚ)

end A052913

/-! ## A052913.P16653299170091194621

`A204091(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A052913.P16653299170091194621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A204091 n + 2 * a (n - 1)

end

end A052913.P16653299170091194621

namespace A052913

/-- `A204091(n)+2*a(n-1)` -/
def P16653299170091194621.Spec : Prop :=
  ∀ n, P16653299170091194621.a n = A052913 n

end A052913

/-! ## A052913.P11420739284718343230

`record[A079162(floor(n/and(n+1, -(n+1)))+1)]`
-/

namespace A052913.P11420739284718343230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079162 (⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052913.P11420739284718343230

namespace A052913

/-- `record[A079162(floor(n/and(n+1, -(n+1)))+1)]` -/
def P11420739284718343230.Spec : Prop :=
  ∀ n, P11420739284718343230.a n = A052913 n

end A052913

/-! ## A052913.P12781778126012296357

`A020698(n)-A107839(n)`
-/

namespace A052913.P12781778126012296357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020698 n - A107839 n

end

end A052913.P12781778126012296357

namespace A052913

/-- `A020698(n)-A107839(n)` -/
def P12781778126012296357.Spec : Prop :=
  ∀ n, P12781778126012296357.a n = A052913 n

end A052913

/-! ## A052913.P12942528429121894751

`A147722(n)-A106709(n)`
-/

namespace A052913.P12942528429121894751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147722 n - A106709 n

end

end A052913.P12942528429121894751

namespace A052913

/-- `A147722(n)-A106709(n)` -/
def P12942528429121894751.Spec : Prop :=
  ∀ n, P12942528429121894751.a n = A052913 n

end A052913

/-! ## A052913.P1816140878878095686

`Δ[A052984(n)-A147722(n)]`
-/

namespace A052913.P1816140878878095686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052984 n - A147722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052913.P1816140878878095686

namespace A052913

/-- `Δ[A052984(n)-A147722(n)]` -/
def P1816140878878095686.Spec : Prop :=
  ∀ n, P1816140878878095686.a n = A052913 n

end A052913

/-! ## A052913.P13371645847734484677

`A052984(n+1)-A020698(n)`
-/

namespace A052913.P13371645847734484677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052984 (n + 1) - A020698 n

end

end A052913.P13371645847734484677

namespace A052913

/-- `A052984(n+1)-A020698(n)` -/
def P13371645847734484677.Spec : Prop :=
  ∀ n, P13371645847734484677.a n = A052913 n

end A052913

/-! ## A052913.P1260760187846768360

`A052984(n)+A005824(2*n)`
-/

namespace A052913.P1260760187846768360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052984 n + A005824 (2 * n)

end

end A052913.P1260760187846768360

namespace A052913

/-- `A052984(n)+A005824(2*n)` -/
def P1260760187846768360.Spec : Prop :=
  ∀ n, P1260760187846768360.a n = A052913 n

end A052913

/-! ## A052913.P102996166016746184

`A107839(n)-A005824(2*n)`
-/

namespace A052913.P102996166016746184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107839 n - A005824 (2 * n)

end

end A052913.P102996166016746184

namespace A052913

/-- `A107839(n)-A005824(2*n)` -/
def P102996166016746184.Spec : Prop :=
  ∀ n, P102996166016746184.a n = A052913 n

end A052913

/-! ## A052913.P17774565159836186208

`A020698(n)-A109165(2*n)`
-/

namespace A052913.P17774565159836186208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020698 n - A109165 (2 * n)

end

end A052913.P17774565159836186208

namespace A052913

/-- `A020698(n)-A109165(2*n)` -/
def P17774565159836186208.Spec : Prop :=
  ∀ n, P17774565159836186208.a n = A052913 n

end A052913

/-! ## A052913.P8617106201050236683

`(A107839(n)+A052984(n))/2`
-/

namespace A052913.P8617106201050236683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107839 n + A052984 n : ℚ) / 2

end

end A052913.P8617106201050236683

namespace A052913

/-- `(A107839(n)+A052984(n))/2` -/
def P8617106201050236683.Spec : Prop :=
  ∀ n, P8617106201050236683.a n = (A052913 n : ℚ)

end A052913

/-!
# A052914: Expansion of (1-x)/(1 - x - x^3 - 2*x^4 + 2*x^5).

The programs for A052914, the canonical program `A052914.P4016644174638865457` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052914 has offset 0).

The definition of A052914 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x-x^3-2x^4+2x^5))` (program `A052914.P4016644174638865457`, by `A052914.P4016644174638865457.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052914.P4016644174638865457

`ogf((1-x)/(1-x-x^3-2x^4+2x^5))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052914

/-- `ogf((1-x)/(1-x-x^3-2x^4+2x^5))` -/
def P4016644174638865457.Spec : Prop :=
  ∀ n, P4016644174638865457.a n = A052914 n

theorem P4016644174638865457.correct : P4016644174638865457.Spec := by
  intro n
  simp only [A052914]

end A052914

/-! ## A052914.P11221895136433290817

`a(n-1)+a(n-3)+2*a(n-4)-2*a(n-5)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=3`
-/

namespace A052914.P11221895136433290817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 3] fun n a =>
  a (n - 1) + a (n - 3) + 2 * a (n - 4) - 2 * a (n - 5)

end

end A052914.P11221895136433290817

namespace A052914

/-- `a(n-1)+a(n-3)+2*a(n-4)-2*a(n-5)` -/
def P11221895136433290817.Spec : Prop :=
  ∀ n, P11221895136433290817.a n = A052914 n

end A052914

/-!
# A052915: Expansion of (1-x)/(1 - x - x^2 - 3*x^3 + 3*x^4).

The programs for A052915, the canonical program `A052915.P3153660638766742014` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052915 has offset 0).

The definition of A052915 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x-x^2-3x^3+3x^4))` (program `A052915.P3153660638766742014`, by `A052915.P3153660638766742014.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052915.P3153660638766742014

`ogf((1-x)/(1-x-x^2-3x^3+3x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052915

/-- `ogf((1-x)/(1-x-x^2-3x^3+3x^4))` -/
def P3153660638766742014.Spec : Prop :=
  ∀ n, P3153660638766742014.a n = A052915 n

theorem P3153660638766742014.correct : P3153660638766742014.Spec := by
  intro n
  simp only [A052915]

end A052915

/-! ## A052915.P10591527419524236884

`a(n-1)+a(n-2)+3*a(n-3)-3*a(n-4)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=4`
-/

namespace A052915.P10591527419524236884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 4] fun n a =>
  a (n - 1) + a (n - 2) + 3 * a (n - 3) - 3 * a (n - 4)

end

end A052915.P10591527419524236884

namespace A052915

/-- `a(n-1)+a(n-2)+3*a(n-3)-3*a(n-4)` -/
def P10591527419524236884.Spec : Prop :=
  ∀ n, P10591527419524236884.a n = A052915 n

end A052915

/-!
# A052916: Expansion of (1-x)/(1 - x - 2*x^3 + x^4).

The programs for A052916, the canonical program `A052916.P9415419215892109669` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052916 has offset 0).

The definition of A052916 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x-2x^3+x^4))` (program `A052916.P9415419215892109669`, by `A052916.P9415419215892109669.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052916.P9415419215892109669

`ogf((1-x)/(1-x-2x^3+x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052916

/-- `ogf((1-x)/(1-x-2x^3+x^4))` -/
def P9415419215892109669.Spec : Prop :=
  ∀ n, P9415419215892109669.a n = A052916 n

theorem P9415419215892109669.correct : P9415419215892109669.Spec := by
  intro n
  simp only [A052916]

end A052916

/-! ## A052916.P8621804390433706204

`a(n-1)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A052916.P8621804390433706204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2] fun n a =>
  a (n - 1) + 2 * a (n - 3) - a (n - 4)

end

end A052916.P8621804390433706204

namespace A052916

/-- `a(n-1)+2*a(n-3)-a(n-4)` -/
def P8621804390433706204.Spec : Prop :=
  ∀ n, P8621804390433706204.a n = A052916 n

end A052916

/-! ## A052916.P17232177247371042171

`a(n-1)+a(n-3)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A052916.P17232177247371042171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2] fun n a =>
  a (n - 1) + (a (n - 3) + (a (n - 3) - a (n - 4)))

end

end A052916.P17232177247371042171

namespace A052916

/-- `a(n-1)+a(n-3)+a(n-3)-a(n-4)` -/
def P17232177247371042171.Spec : Prop :=
  ∀ n, P17232177247371042171.a n = A052916 n

end A052916

/-! ## A052916.P9111342741910468059

`a(n-1)-(a(n-4)-a(n-3)-a(n-3))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A052916.P9111342741910468059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 3) - a (n - 3))

end

end A052916.P9111342741910468059

namespace A052916

/-- `a(n-1)-(a(n-4)-a(n-3)-a(n-3))` -/
def P9111342741910468059.Spec : Prop :=
  ∀ n, P9111342741910468059.a n = A052916 n

end A052916

/-! ## A052916.P1121389351539899419

`A176848(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A052916.P1121389351539899419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A176848 n + a (n - 3)

end

end A052916.P1121389351539899419

namespace A052916

/-- `A176848(n)+a(n-3)` -/
def P1121389351539899419.Spec : Prop :=
  ∀ n, P1121389351539899419.a n = A052916 n

end A052916

/-! ## A052916.P15536947287491630958

`Δ[A176848(n+2)]`
-/

namespace A052916.P15536947287491630958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176848 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052916.P15536947287491630958

namespace A052916

/-- `Δ[A176848(n+2)]` -/
def P15536947287491630958.Spec : Prop :=
  ∀ n, P15536947287491630958.a n = A052916 n

end A052916

/-! ## A052916.P6999446901413438281

`Δ[Δ[A113435(n+1)]]`
-/

namespace A052916.P6999446901413438281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113435 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052916.P6999446901413438281

namespace A052916

/-- `Δ[Δ[A113435(n+1)]]` -/
def P6999446901413438281.Spec : Prop :=
  ∀ n, P6999446901413438281.a n = A052916 n

end A052916

/-!
# A052917: Expansion of 1/(1-3*x-x^4).

The programs for A052917, the canonical program `A052917.P5504562090487486441` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052917 has offset 0).

The definition of A052917 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x-x^4))` (program `A052917.P5504562090487486441`, by `A052917.P5504562090487486441.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052917.P5504562090487486441

`ogf(1/(1-3x-x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052917

/-- `ogf(1/(1-3x-x^4))` -/
def P5504562090487486441.Spec : Prop :=
  ∀ n, P5504562090487486441.a n = A052917 n

theorem P5504562090487486441.correct : P5504562090487486441.Spec := by
  intro n
  simp only [A052917]

end A052917

/-! ## A052917.P11024637405586753779

`3*a(n-1)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27`
-/

namespace A052917.P11024637405586753779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9, 27] fun n a =>
  3 * a (n - 1) + a (n - 4)

end

end A052917.P11024637405586753779

namespace A052917

/-- `3*a(n-1)+a(n-4)` -/
def P11024637405586753779.Spec : Prop :=
  ∀ n, (P11024637405586753779.a n : ℤ) = A052917 n

end A052917

/-!
# A052918: a(0) = 1, a(1) = 5, a(n+1) = 5*a(n) + a(n-1).

The programs for A052918, the canonical program `A052918.P17795233823067635881` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052918 has offset 0).

The definition of A052918 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052918.P17795233823067635881

`5*a(n-1)+a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052918

/-- `5*a(n-1)+a(n-2)` -/
def P17795233823067635881.Spec : Prop :=
  ∀ n, (P17795233823067635881.a n : ℤ) = A052918 n

theorem P17795233823067635881.correct : P17795233823067635881.Spec := by
  intro n
  simp only [A052918]

end A052918

/-! ## A052918.P11503214649532788447

`ogf(1/(1-5x-x^2))`
-/

namespace A052918.P11503214649532788447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -5, -1] n

end

end A052918.P11503214649532788447

namespace A052918

/-- `ogf(1/(1-5x-x^2))` -/
def P11503214649532788447.Spec : Prop :=
  ∀ n, P11503214649532788447.a n = A052918 n

end A052918

/-! ## A052918.P8429753940549577015

`∑[a(n-2)+lcm(5, a(n-1))]` with `a(0)=1, a(1)=4`
-/

namespace A052918.P8429753940549577015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 2) + Nat.lcm 5 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052918.P8429753940549577015

namespace A052918

/-- `∑[a(n-2)+lcm(5, a(n-1))]` -/
def P8429753940549577015.Spec : Prop :=
  ∀ n, (P8429753940549577015.a n : ℤ) = A052918 n

end A052918

/-! ## A052918.P9179484097766889754

`6*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A052918.P9179484097766889754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  6 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A052918.P9179484097766889754

namespace A052918

/-- `6*a(n-1)-(a(n-1)-a(n-2))` -/
def P9179484097766889754.Spec : Prop :=
  ∀ n, P9179484097766889754.a n = A052918 n

end A052918

/-! ## A052918.P1702395174970458519

`∑[A100237(n)]`
-/

namespace A052918.P1702395174970458519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052918.P1702395174970458519

namespace A052918

/-- `∑[A100237(n)]` -/
def P1702395174970458519.Spec : Prop :=
  ∀ n, P1702395174970458519.a n = A052918 n

end A052918

/-! ## A052918.P2195913276598485400

`A087130(n)-a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A052918.P2195913276598485400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  A087130 n - a (n - 2)

end

end A052918.P2195913276598485400

namespace A052918

/-- `A087130(n)-a(n-2)` -/
def P2195913276598485400.Spec : Prop :=
  ∀ n, P2195913276598485400.a n = A052918 n

end A052918

/-! ## A052918.P5997867073600672284

`A015449(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A052918.P5997867073600672284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A015449 (n + 1) - a (n - 1)

end

end A052918.P5997867073600672284

namespace A052918

/-- `A015449(n+1)-a(n-1)` -/
def P5997867073600672284.Spec : Prop :=
  ∀ n, P5997867073600672284.a n = A052918 n

end A052918

/-! ## A052918.P6622182363087536460

`∑[A087130(n)-A015449(n)]`
-/

namespace A052918.P6622182363087536460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087130 n - A015449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052918.P6622182363087536460

namespace A052918

/-- `∑[A087130(n)-A015449(n)]` -/
def P6622182363087536460.Spec : Prop :=
  ∀ n, P6622182363087536460.a n = A052918 n

end A052918

/-! ## A052918.P9137692814446686437

`(A015449(n)+Δ[A164581(n)])/2`
-/

namespace A052918.P9137692814446686437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164581 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015449 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A052918.P9137692814446686437

namespace A052918

/-- `(A015449(n)+Δ[A164581(n)])/2` -/
def P9137692814446686437.Spec : Prop :=
  ∀ n, P9137692814446686437.a n = (A052918 n : ℚ)

end A052918

/-! ## A052918.P5473646131484245791

`A164581(n+1)-A015449(n+1)`
-/

namespace A052918.P5473646131484245791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164581 (n + 1) - A015449 (n + 1)

end

end A052918.P5473646131484245791

namespace A052918

/-- `A164581(n+1)-A015449(n+1)` -/
def P5473646131484245791.Spec : Prop :=
  ∀ n, P5473646131484245791.a n = A052918 n

end A052918

/-! ## A052918.P6059776705505326739

`A155181(n+1)/4`
-/

namespace A052918.P6059776705505326739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155181 (n + 1) : ℚ) / 4

end

end A052918.P6059776705505326739

namespace A052918

/-- `A155181(n+1)/4` -/
def P6059776705505326739.Spec : Prop :=
  ∀ n, P6059776705505326739.a n = (A052918 n : ℚ)

end A052918

/-! ## A052918.P15780300828803649480

`Δ[A015449(n+1)/5]`
-/

namespace A052918.P15780300828803649480
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015449 (n + 1) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052918.P15780300828803649480

namespace A052918

/-- `Δ[A015449(n+1)/5]` -/
def P15780300828803649480.Spec : Prop :=
  ∀ n, P15780300828803649480.a n = (A052918 n : ℚ)

end A052918

/-!
# A052919: a(n) = 1 + 2*3^(n-1) with a(0)=2.

The programs for A052919, the canonical program `A052919.P10447713765188693554` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052919 has offset 0).

The definition of A052919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052919.P10447713765188693554

`4*a(n-1)-3*a(n-2)` with `a(0)=2, a(1)=3, a(2)=7`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052919

/-- `4*a(n-1)-3*a(n-2)` -/
def P10447713765188693554.Spec : Prop :=
  ∀ n, P10447713765188693554.a n = A052919 n

theorem P10447713765188693554.correct : P10447713765188693554.Spec := by
  intro n
  simp only [A052919]

end A052919

/-! ## A052919.P8373620317344613749

`1+sqrt(A270473(n))`
-/

namespace A052919.P8373620317344613749
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 + Real.sqrt (A270473 n : ℝ)

end

end A052919.P8373620317344613749

namespace A052919

/-- `1+sqrt(A270473(n))` -/
def P8373620317344613749.Spec : Prop :=
  ∀ n, P8373620317344613749.a n = (A052919 n : ℝ)

end A052919

/-! ## A052919.P508292766723330744

`ogf((2-5x+x^2)/(1-4x+3x^2))`
-/

namespace A052919.P508292766723330744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5, 1] [1, -4, 3] n

end

end A052919.P508292766723330744

namespace A052919

/-- `ogf((2-5x+x^2)/(1-4x+3x^2))` -/
def P508292766723330744.Spec : Prop :=
  ∀ n, P508292766723330744.a n = A052919 n

end A052919

/-! ## A052919.P12003528100574048581

`Δ[floor(3^(n-1))]+1`
-/

namespace A052919.P12003528100574048581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A052919.P12003528100574048581

namespace A052919

/-- `Δ[floor(3^(n-1))]+1` -/
def P12003528100574048581.Spec : Prop :=
  ∀ n, P12003528100574048581.a n = A052919 n

end A052919

/-! ## A052919.P3771043219029027567

`∑[3*a(n-1)]` with `a(0)=2, a(1)=1, a(2)=4`
-/

namespace A052919.P3771043219029027567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 4] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052919.P3771043219029027567

namespace A052919

/-- `∑[3*a(n-1)]` -/
def P3771043219029027567.Spec : Prop :=
  ∀ n, (P3771043219029027567.a n : ℤ) = A052919 n

end A052919

/-! ## A052919.P6596602547323782032

`abs(2-3*a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A052919.P6596602547323782032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  |2 - 3 * a (n - 1)|

end

end A052919.P6596602547323782032

namespace A052919

/-- `abs(2-3*a(n-1))` -/
def P6596602547323782032.Spec : Prop :=
  ∀ n, P6596602547323782032.a n = A052919 n

end A052919

/-! ## A052919.P9083603746960085720

`or(1, 3*(a(n-1)-1))` with `a(0)=2`
-/

namespace A052919.P9083603746960085720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor 1 (3 * (a (n - 1) - 1))

end

end A052919.P9083603746960085720

namespace A052919

/-- `or(1, 3*(a(n-1)-1))` -/
def P9083603746960085720.Spec : Prop :=
  ∀ n, P9083603746960085720.a n = A052919 n

end A052919

/-! ## A052919.P17879702119623822146

`floor(3*a(n-1)-ϕ)` with `a(0)=2, a(1)=3`
-/

namespace A052919.P17879702119623822146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  ⌊(3 * a (n - 1) : ℝ) - Real.goldenRatio⌋

end

end A052919.P17879702119623822146

namespace A052919

/-- `floor(3*a(n-1)-ϕ)` -/
def P17879702119623822146.Spec : Prop :=
  ∀ n, P17879702119623822146.a n = A052919 n

end A052919

/-! ## A052919.P9324302311356687888

`or(2, Δ[floor(3^(n-1))]-1)`
-/

namespace A052919.P9324302311356687888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f1 (n + 1) - f1 n - 1)

end

end A052919.P9324302311356687888

namespace A052919

/-- `or(2, Δ[floor(3^(n-1))]-1)` -/
def P9324302311356687888.Spec : Prop :=
  ∀ n, P9324302311356687888.a n = A052919 n

end A052919

/-! ## A052919.P11522799306111132279

`∑[a(n-1)/sqrt(1/9)]` with `a(0)=2, a(1)=1, a(2)=4`
-/

namespace A052919.P11522799306111132279
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [2, 1, 4] fun n f1 =>
  f1 (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052919.P11522799306111132279

namespace A052919

/-- `∑[a(n-1)/sqrt(1/9)]` -/
def P11522799306111132279.Spec : Prop :=
  ∀ n, P11522799306111132279.a n = (A052919 n : ℝ)

end A052919

/-! ## A052919.P16884626120845264996

`(3-2/a(n-1))*a(n-1)` with `a(0)=2, a(1)=3`
-/

namespace A052919.P16884626120845264996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  (3 - 2 / a (n - 1)) * a (n - 1)

end

end A052919.P16884626120845264996

namespace A052919

/-- `(3-2/a(n-1))*a(n-1)` -/
def P16884626120845264996.Spec : Prop :=
  ∀ n, P16884626120845264996.a n = (A052919 n : ℚ)

end A052919

/-! ## A052919.P350999478125344585

`Δ[3*a(n-1)-(2*n+1)]` with `a(0)=2, a(1)=4`
-/

namespace A052919.P350999478125344585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  3 * f1 (n - 1) - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052919.P350999478125344585

namespace A052919

/-- `Δ[3*a(n-1)-(2*n+1)]` -/
def P350999478125344585.Spec : Prop :=
  ∀ n, P350999478125344585.a n = A052919 n

end A052919

/-! ## A052919.P4457211391901310501

`Δ[A094388(n)+n]`
-/

namespace A052919.P4457211391901310501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052919.P4457211391901310501

namespace A052919

/-- `Δ[A094388(n)+n]` -/
def P4457211391901310501.Spec : Prop :=
  ∀ n, P4457211391901310501.a n = A052919 n

end A052919

/-! ## A052919.P13208047280533997305

`Δ[A140429(n)+n]`
-/

namespace A052919.P13208047280533997305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052919.P13208047280533997305

namespace A052919

/-- `Δ[A140429(n)+n]` -/
def P13208047280533997305.Spec : Prop :=
  ∀ n, P13208047280533997305.a n = A052919 n

end A052919

/-! ## A052919.P8208264022221435948

`ceil(A079003(n+1)/2)`
-/

namespace A052919.P8208264022221435948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A079003 (n + 1) : ℚ) / 2⌉

end

end A052919.P8208264022221435948

namespace A052919

/-- `ceil(A079003(n+1)/2)` -/
def P8208264022221435948.Spec : Prop :=
  ∀ n, P8208264022221435948.a n = A052919 n

end A052919

/-! ## A052919.P4748962474619030004

`abs(floor(3^(n-1))-A034472(n))`
-/

namespace A052919.P4748962474619030004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A034472 n|

end

end A052919.P4748962474619030004

namespace A052919

/-- `abs(floor(3^(n-1))-A034472(n))` -/
def P4748962474619030004.Spec : Prop :=
  ∀ n, P4748962474619030004.a n = A052919 n

end A052919

/-! ## A052919.P1016573112839673682

`A054977(n)*A100702(n)`
-/

namespace A052919.P1016573112839673682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A100702 n

end

end A052919.P1016573112839673682

namespace A052919

/-- `A054977(n)*A100702(n)` -/
def P1016573112839673682.Spec : Prop :=
  ∀ n, P1016573112839673682.a n = A052919 n

end A052919

/-! ## A052919.P12498990203473587099

`A100702(n)*A294619(n+2)`
-/

namespace A052919.P12498990203473587099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100702 n * A294619 (n + 2)

end

end A052919.P12498990203473587099

namespace A052919

/-- `A100702(n)*A294619(n+2)` -/
def P12498990203473587099.Spec : Prop :=
  ∀ n, P12498990203473587099.a n = A052919 n

end A052919

/-! ## A052919.P17942134199018024215

`C(A025192(n)+1, A025192(n))`
-/

namespace A052919.P17942134199018024215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025192 n + 1).toNat (A025192 n).toNat

end

end A052919.P17942134199018024215

namespace A052919

/-- `C(A025192(n)+1, A025192(n))` -/
def P17942134199018024215.Spec : Prop :=
  ∀ n, (P17942134199018024215.a n : ℤ) = A052919 n

end A052919

/-!
# A052920: a(n) = a(n-3) + a(n-5) with initial values 1,0,0,1,0.

The programs for A052920, the canonical program `A052920.P10176569915456252614` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052920 has offset 0).

The definition of A052920 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-3)+a(n-5)` (program `A052920.P10176569915456252614`, by `A052920.P10176569915456252614.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052920.P10176569915456252614

`a(n-3)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052920

/-- `a(n-3)+a(n-5)` -/
def P10176569915456252614.Spec : Prop :=
  ∀ n, (P10176569915456252614.a n : ℤ) = A052920 n

theorem P10176569915456252614.correct : P10176569915456252614.Spec := by
  intro n
  simp only [A052920]

end A052920

/-! ## A052920.P2825817184179223682

`ogf(1/(1-x^3-x^5))`
-/

namespace A052920.P2825817184179223682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, 0, -1, 0, -1] n

end

end A052920.P2825817184179223682

namespace A052920

/-- `ogf(1/(1-x^3-x^5))` -/
def P2825817184179223682.Spec : Prop :=
  ∀ n, P2825817184179223682.a n = A052920 n

end A052920

/-! ## A052920.P9867745018888284382

`Δ[A226503(n+5)]`
-/

namespace A052920.P9867745018888284382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226503 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052920.P9867745018888284382

namespace A052920

/-- `Δ[A226503(n+5)]` -/
def P9867745018888284382.Spec : Prop :=
  ∀ n, P9867745018888284382.a n = A052920 n

end A052920

/-! ## A052920.P15234338542263521727

`abs(Δ[A226503(A020710(n))])`
-/

namespace A052920.P15234338542263521727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226503 (A020710 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A052920.P15234338542263521727

namespace A052920

/-- `abs(Δ[A226503(A020710(n))])` -/
def P15234338542263521727.Spec : Prop :=
  ∀ n, P15234338542263521727.a n = A052920 n

end A052920

/-! ## A052920.P3175280011434061600

`A226503(n+6)-A226503(n+5)`
-/

namespace A052920.P3175280011434061600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226503 (n + 6) - A226503 (n + 5)

end

end A052920.P3175280011434061600

namespace A052920

/-- `A226503(n+6)-A226503(n+5)` -/
def P3175280011434061600.Spec : Prop :=
  ∀ n, P3175280011434061600.a n = A052920 n

end A052920

/-! ## A052920.P14116497808396279051

`(A005408(n)-2*n)*Δ[A226503(A020710(n))]`
-/

namespace A052920.P14116497808396279051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226503 (A020710 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - (2 * n : ℤ)) * (f1 (n + 1) - f1 n)

end

end A052920.P14116497808396279051

namespace A052920

/-- `(A005408(n)-2*n)*Δ[A226503(A020710(n))]` -/
def P14116497808396279051.Spec : Prop :=
  ∀ n, P14116497808396279051.a n = A052920 n

end A052920

/-! ## A052920.P17799099043683169788

`Δ[A226503(A020710(n))]%A000032(n)`
-/

namespace A052920.P17799099043683169788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226503 (A020710 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000032 n)

end

end A052920.P17799099043683169788

namespace A052920

/-- `Δ[A226503(A020710(n))]%A000032(n)` -/
def P17799099043683169788.Spec : Prop :=
  ∀ n, P17799099043683169788.a n = A052920 n

end A052920

/-!
# A052921: Expansion of (1 - x)/(1 - 3*x + 2*x^2 - x^3).

The programs for A052921, the canonical program `A052921.P10942325696102487285` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052921 has offset 0).

The definition of A052921 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-3x+2x^2-x^3))` (program `A052921.P10942325696102487285`, by `A052921.P10942325696102487285.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052921.P10942325696102487285

`ogf((1-x)/(1-3x+2x^2-x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052921

/-- `ogf((1-x)/(1-3x+2x^2-x^3))` -/
def P10942325696102487285.Spec : Prop :=
  ∀ n, P10942325696102487285.a n = A052921 n

theorem P10942325696102487285.correct : P10942325696102487285.Spec := by
  intro n
  simp only [A052921]

end A052921

/-! ## A052921.P11798946070887165265

`3*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A052921.P11798946070887165265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) + a (n - 3)

end

end A052921.P11798946070887165265

namespace A052921

/-- `3*a(n-1)-2*a(n-2)+a(n-3)` -/
def P11798946070887165265.Spec : Prop :=
  ∀ n, P11798946070887165265.a n = A052921 n

end A052921

/-! ## A052921.P6667050151307399164

`A000931(3*n+5)`
-/

namespace A052921.P6667050151307399164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (3 * n + 5)

end

end A052921.P6667050151307399164

namespace A052921

/-- `A000931(3*n+5)` -/
def P6667050151307399164.Spec : Prop :=
  ∀ n, P6667050151307399164.a n = A052921 n

end A052921

/-! ## A052921.P12636386452039941535

`∑[A034943(n+1)]`
-/

namespace A052921.P12636386452039941535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052921.P12636386452039941535

namespace A052921

/-- `∑[A034943(n+1)]` -/
def P12636386452039941535.Spec : Prop :=
  ∀ n, P12636386452039941535.a n = A052921 n

end A052921

/-! ## A052921.P17476573696935163795

`∑[A182097(3*n)]`
-/

namespace A052921.P17476573696935163795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052921.P17476573696935163795

namespace A052921

/-- `∑[A182097(3*n)]` -/
def P17476573696935163795.Spec : Prop :=
  ∀ n, P17476573696935163795.a n = A052921 n

end A052921

/-! ## A052921.P5286566994694019958

`A329244(n+1)-1`
-/

namespace A052921.P5286566994694019958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329244 (n + 1) - 1

end

end A052921.P5286566994694019958

namespace A052921

/-- `A329244(n+1)-1` -/
def P5286566994694019958.Spec : Prop :=
  ∀ n, P5286566994694019958.a n = A052921 n

end A052921

/-! ## A052921.P7355890387750215630

`A134816(3*n+1)`
-/

namespace A052921.P7355890387750215630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (3 * n + 1)

end

end A052921.P7355890387750215630

namespace A052921

/-- `A134816(3*n+1)` -/
def P7355890387750215630.Spec : Prop :=
  ∀ n, P7355890387750215630.a n = A052921 n

end A052921

/-! ## A052921.P1529826745802494329

`A182097(3*n+2)`
-/

namespace A052921.P1529826745802494329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (3 * n + 2)

end

end A052921.P1529826745802494329

namespace A052921

/-- `A182097(3*n+2)` -/
def P1529826745802494329.Spec : Prop :=
  ∀ n, P1529826745802494329.a n = A052921 n

end A052921

/-! ## A052921.P10685132587681846397

`A133034(3*(n+3))`
-/

namespace A052921.P10685132587681846397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (3 * (n + 3))

end

end A052921.P10685132587681846397

namespace A052921

/-- `A133034(3*(n+3))` -/
def P10685132587681846397.Spec : Prop :=
  ∀ n, P10685132587681846397.a n = A052921 n

end A052921

/-! ## A052921.P9311009598813570903

`A127682(6*n+3)`
-/

namespace A052921.P9311009598813570903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (6 * n + 3)

end

end A052921.P9311009598813570903

namespace A052921

/-- `A127682(6*n+3)` -/
def P9311009598813570903.Spec : Prop :=
  ∀ n, P9311009598813570903.a n = A052921 n

end A052921

/-! ## A052921.P7002396938230896661

`A078027(3*n+7)`
-/

namespace A052921.P7002396938230896661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (3 * n + 7)

end

end A052921.P7002396938230896661

namespace A052921

/-- `A078027(3*n+7)` -/
def P7002396938230896661.Spec : Prop :=
  ∀ n, P7002396938230896661.a n = A052921 n

end A052921

/-! ## A052921.P11952745780422744427

`A135364(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A052921.P11952745780422744427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A135364 n + a (n - 2)

end

end A052921.P11952745780422744427

namespace A052921

/-- `A135364(n)+a(n-2)` -/
def P11952745780422744427.Spec : Prop :=
  ∀ n, P11952745780422744427.a n = A052921 n

end A052921

/-! ## A052921.P15694985742867813394

`A181984(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A052921.P15694985742867813394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A181984 (n - 1) + a (n - 1)

end

end A052921.P15694985742867813394

namespace A052921

/-- `A181984(n-1)+a(n-1)` -/
def P15694985742867813394.Spec : Prop :=
  ∀ n, P15694985742867813394.a n = A052921 n

end A052921

/-! ## A052921.P5818377412907485969

`A164001(A033627(n+1))`
-/

namespace A052921.P5818377412907485969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (A033627 (n + 1)).toNat

end

end A052921.P5818377412907485969

namespace A052921

/-- `A164001(A033627(n+1))` -/
def P5818377412907485969.Spec : Prop :=
  ∀ n, P5818377412907485969.a n = A052921 n

end A052921

/-! ## A052921.P6578974103463015080

`A181984(n)-Δ[A034943(n)]`
-/

namespace A052921.P6578974103463015080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 n - (f1 (n + 1) - f1 n)

end

end A052921.P6578974103463015080

namespace A052921

/-- `A181984(n)-Δ[A034943(n)]` -/
def P6578974103463015080.Spec : Prop :=
  ∀ n, P6578974103463015080.a n = A052921 n

end A052921

/-! ## A052921.P15170766126219780958

`A228361(A019442(n+2)-n)`
-/

namespace A052921.P15170766126219780958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (A019442 (n + 2) - (n : ℤ)).toNat

end

end A052921.P15170766126219780958

namespace A052921

/-- `A228361(A019442(n+2)-n)` -/
def P15170766126219780958.Spec : Prop :=
  ∀ n, P15170766126219780958.a n = A052921 n

end A052921

/-! ## A052921.P12609976860957868850

`record[A000931(record[A026741(n)]+n)]`
-/

namespace A052921.P12609976860957868850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052921.P12609976860957868850

namespace A052921

/-- `record[A000931(record[A026741(n)]+n)]` -/
def P12609976860957868850.Spec : Prop :=
  ∀ n, P12609976860957868850.a n = A052921 n

end A052921

/-! ## A052921.P16267831793352379403

`A034943(n)+Δ[A034943(n+1)]`
-/

namespace A052921.P16267831793352379403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 n + (f1 (n + 1) - f1 n)

end

end A052921.P16267831793352379403

namespace A052921

/-- `A034943(n)+Δ[A034943(n+1)]` -/
def P16267831793352379403.Spec : Prop :=
  ∀ n, P16267831793352379403.a n = A052921 n

end A052921

/-! ## A052921.P4279377454776344907

`A228361(A004280(n+1)+1+n)`
-/

namespace A052921.P4279377454776344907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (A004280 (n + 1) + 1 + (n : ℤ)).toNat

end

end A052921.P4279377454776344907

namespace A052921

/-- `A228361(A004280(n+1)+1+n)` -/
def P4279377454776344907.Spec : Prop :=
  ∀ n, P4279377454776344907.a n = A052921 n

end A052921

/-! ## A052921.P11616698609360171917

`A228361(A233583(2*n+1)+n)`
-/

namespace A052921.P11616698609360171917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (A233583 (2 * n + 1) + (n : ℤ)).toNat

end

end A052921.P11616698609360171917

namespace A052921

/-- `A228361(A233583(2*n+1)+n)` -/
def P11616698609360171917.Spec : Prop :=
  ∀ n, P11616698609360171917.a n = A052921 n

end A052921

/-!
# A052922: Expansion of 1/(1 - 2*x^3 - x^4).

The programs for A052922, the canonical program `A052922.P1207256947885668468` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052922 has offset 0).

The definition of A052922 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x^3-x^4))` (program `A052922.P1207256947885668468`, by `A052922.P1207256947885668468.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052922.P11918559850778860115

`2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A052922.P11918559850778860115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 2] fun n a =>
  2 * a (n - 3) + a (n - 4)

end

end A052922.P11918559850778860115

namespace A052922

/-- `2*a(n-3)+a(n-4)` -/
def P11918559850778860115.Spec : Prop :=
  ∀ n, (P11918559850778860115.a n : ℤ) = A052922 n

end A052922

/-! ## A052922.P1207256947885668468

`ogf(1/(1-2x^3-x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052922

/-- `ogf(1/(1-2x^3-x^4))` -/
def P1207256947885668468.Spec : Prop :=
  ∀ n, P1207256947885668468.a n = A052922 n

theorem P1207256947885668468.correct : P1207256947885668468.Spec := by
  intro n
  simp only [A052922]

end A052922

/-! ## A052922.P4022735837783330197

`a(n-3)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A052922.P4022735837783330197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 2] fun n a =>
  a (n - 3) + (a (n - 3) + a (n - 4))

end

end A052922.P4022735837783330197

namespace A052922

/-- `a(n-3)+a(n-3)+a(n-4)` -/
def P4022735837783330197.Spec : Prop :=
  ∀ n, (P4022735837783330197.a n : ℤ) = A052922 n

end A052922

/-! ## A052922.P13004925563135465702

`3*a(n-3)-(a(n-3)-a(n-4))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A052922.P13004925563135465702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2] fun n a =>
  3 * a (n - 3) - (a (n - 3) - a (n - 4))

end

end A052922.P13004925563135465702

namespace A052922

/-- `3*a(n-3)-(a(n-3)-a(n-4))` -/
def P13004925563135465702.Spec : Prop :=
  ∀ n, P13004925563135465702.a n = A052922 n

end A052922

/-! ## A052922.P13016384817662027289

`abs(A077908(A004906(n+1)))`
-/

namespace A052922.P13016384817662027289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077908 (A004906 (n + 1)).toNat|

end

end A052922.P13016384817662027289

namespace A052922

/-- `abs(A077908(A004906(n+1)))` -/
def P13016384817662027289.Spec : Prop :=
  ∀ n, P13016384817662027289.a n = A052922 n

end A052922

/-!
# A052923: Expansion of (1-x)/(1 - x - 4*x^2).

The programs for A052923, the canonical program `A052923.P17748193723170042354` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052923 has offset 0).

The definition of A052923 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x-4x^2))` (program `A052923.P17748193723170042354`, by `A052923.P17748193723170042354.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052923.P17748193723170042354

`ogf((1-x)/(1-x-4x^2))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052923

/-- `ogf((1-x)/(1-x-4x^2))` -/
def P17748193723170042354.Spec : Prop :=
  ∀ n, P17748193723170042354.a n = A052923 n

theorem P17748193723170042354.correct : P17748193723170042354.Spec := by
  intro n
  simp only [A052923]

end A052923

/-! ## A052923.P4944630976340146928

`a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A052923.P4944630976340146928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + 4 * a (n - 2)

end

end A052923.P4944630976340146928

namespace A052923

/-- `a(n-1)+4*a(n-2)` -/
def P4944630976340146928.Spec : Prop :=
  ∀ n, (P4944630976340146928.a n : ℤ) = A052923 n

end A052923

/-! ## A052923.P13264728647144476971

`Δ[a(n-1)+lcm(4, a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A052923.P13264728647144476971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + Nat.lcm 4 (f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A052923.P13264728647144476971

namespace A052923

/-- `Δ[a(n-1)+lcm(4, a(n-2))]` -/
def P13264728647144476971.Spec : Prop :=
  ∀ n, P13264728647144476971.a n = A052923 n

end A052923

/-! ## A052923.P12418816634061833504

`a(n-1)+a(n-2)/(1/2)²` with `a(0)=1, a(1)=0`
-/

namespace A052923.P12418816634061833504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A052923.P12418816634061833504

namespace A052923

/-- `a(n-1)+a(n-2)/(1/2)²` -/
def P12418816634061833504.Spec : Prop :=
  ∀ n, P12418816634061833504.a n = (A052923 n : ℚ)

end A052923

/-! ## A052923.P9921243855809051038

`4-(4*(1-a(n-2))-a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A052923.P9921243855809051038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  4 - (4 * (1 - a (n - 2)) - a (n - 1))

end

end A052923.P9921243855809051038

namespace A052923

/-- `4-(4*(1-a(n-2))-a(n-1))` -/
def P9921243855809051038.Spec : Prop :=
  ∀ n, P9921243855809051038.a n = A052923 n

end A052923

/-! ## A052923.P6476307480236153840

`a(n-2)+a(n-2)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A052923.P6476307480236153840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) + (a (n - 1) + a (n - 2))))

end

end A052923.P6476307480236153840

namespace A052923

/-- `a(n-2)+a(n-2)+a(n-2)+a(n-1)+a(n-2)` -/
def P6476307480236153840.Spec : Prop :=
  ∀ n, (P6476307480236153840.a n : ℤ) = A052923 n

end A052923

/-! ## A052923.P13752668904770940775

`A159612(n)-a(n-1)` with `a(0)=1`
-/

namespace A052923.P13752668904770940775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A159612 n - a (n - 1)

end

end A052923.P13752668904770940775

namespace A052923

/-- `A159612(n)-a(n-1)` -/
def P13752668904770940775.Spec : Prop :=
  ∀ n, P13752668904770940775.a n = A052923 n

end A052923

/-! ## A052923.P17164592115119442201

`4*(A006131(n)-a(n-1))/5` with `a(0)=1`
-/

namespace A052923.P17164592115119442201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * (((A006131 n : ℚ) - a (n - 1)) / 5)

end

end A052923.P17164592115119442201

namespace A052923

/-- `4*(A006131(n)-a(n-1))/5` -/
def P17164592115119442201.Spec : Prop :=
  ∀ n, P17164592115119442201.a n = (A052923 n : ℚ)

end A052923

/-! ## A052923.P5259841864071802556

`Δ[Δ[A193649(n)/2]]`
-/

namespace A052923.P5259841864071802556
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193649 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052923.P5259841864071802556

namespace A052923

/-- `Δ[Δ[A193649(n)/2]]` -/
def P5259841864071802556.Spec : Prop :=
  ∀ n, P5259841864071802556.a n = (A052923 n : ℚ)

end A052923

/-! ## A052923.P10644395717747056167

`A072265(n)-A006131(n)`
-/

namespace A052923.P10644395717747056167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072265 n - A006131 n

end

end A052923.P10644395717747056167

namespace A052923

/-- `A072265(n)-A006131(n)` -/
def P10644395717747056167.Spec : Prop :=
  ∀ n, P10644395717747056167.a n = A052923 n

end A052923

/-! ## A052923.P10400289691994659020

`A102446(n)-A026597(n)`
-/

namespace A052923.P10400289691994659020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102446 n - A026597 n

end

end A052923.P10400289691994659020

namespace A052923

/-- `A102446(n)-A026597(n)` -/
def P10400289691994659020.Spec : Prop :=
  ∀ n, P10400289691994659020.a n = A052923 n

end A052923

/-! ## A052923.P16051306894182913983

`2*A006131(n)-A026597(n)`
-/

namespace A052923.P16051306894182913983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006131 n - A026597 n

end

end A052923.P16051306894182913983

namespace A052923

/-- `2*A006131(n)-A026597(n)` -/
def P16051306894182913983.Spec : Prop :=
  ∀ n, P16051306894182913983.a n = A052923 n

end A052923

/-! ## A052923.P2268640719462287736

`A072265(n)-A102446(n)/2`
-/

namespace A052923.P2268640719462287736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072265 n : ℚ) - (A102446 n : ℚ) / 2

end

end A052923.P2268640719462287736

namespace A052923

/-- `A072265(n)-A102446(n)/2` -/
def P2268640719462287736.Spec : Prop :=
  ∀ n, P2268640719462287736.a n = (A052923 n : ℚ)

end A052923

/-! ## A052923.P16683194681400558876

`A006131(n)+A026597(n)-A026581(n)`
-/

namespace A052923.P16683194681400558876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006131 n + (A026597 n - A026581 n)

end

end A052923.P16683194681400558876

namespace A052923

/-- `A006131(n)+A026597(n)-A026581(n)` -/
def P16683194681400558876.Spec : Prop :=
  ∀ n, P16683194681400558876.a n = A052923 n

end A052923

/-! ## A052923.P7997929456226538720

`A026597(n)+A026597(n)-A159612(n+1)`
-/

namespace A052923.P7997929456226538720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026597 n + (A026597 n - A159612 (n + 1))

end

end A052923.P7997929456226538720

namespace A052923

/-- `A026597(n)+A026597(n)-A159612(n+1)` -/
def P7997929456226538720.Spec : Prop :=
  ∀ n, P7997929456226538720.a n = A052923 n

end A052923

/-! ## A052923.P12406193548948743005

`Δ[A026597(n)-A006131(n)]`
-/

namespace A052923.P12406193548948743005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026597 n - A006131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052923.P12406193548948743005

namespace A052923

/-- `Δ[A026597(n)-A006131(n)]` -/
def P12406193548948743005.Spec : Prop :=
  ∀ n, P12406193548948743005.a n = A052923 n

end A052923

/-! ## A052923.P10056855459666327005

`A102446(n)-Δ[A026581(n)/2]`
-/

namespace A052923.P10056855459666327005
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026581 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102446 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A052923.P10056855459666327005

namespace A052923

/-- `A102446(n)-Δ[A026581(n)/2]` -/
def P10056855459666327005.Spec : Prop :=
  ∀ n, P10056855459666327005.a n = (A052923 n : ℚ)

end A052923

/-! ## A052923.P3609149734959080614

`A072265(n)-A190864(2*n)`
-/

namespace A052923.P3609149734959080614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072265 n - A190864 (2 * n)

end

end A052923.P3609149734959080614

namespace A052923

/-- `A072265(n)-A190864(2*n)` -/
def P3609149734959080614.Spec : Prop :=
  ∀ n, P3609149734959080614.a n = A052923 n

end A052923

/-!
# A052924: Expansion of g.f.: (1-x)/(1 - 3*x - x^2).

The programs for A052924, the canonical program `A052924.P13041191417540024851` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052924 has offset 0).

The definition of A052924 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-3x-x^2))` (program `A052924.P13041191417540024851`, by `A052924.P13041191417540024851.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052924.P13041191417540024851

`ogf((1-x)/(1-3x-x^2))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052924

/-- `ogf((1-x)/(1-3x-x^2))` -/
def P13041191417540024851.Spec : Prop :=
  ∀ n, P13041191417540024851.a n = A052924 n

theorem P13041191417540024851.correct : P13041191417540024851.Spec := by
  intro n
  simp only [A052924]

end A052924

/-! ## A052924.P13514510681928437905

`3*a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A052924.P13514510681928437905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (n - 1) + a (n - 2)

end

end A052924.P13514510681928437905

namespace A052924

/-- `3*a(n-1)+a(n-2)` -/
def P13514510681928437905.Spec : Prop :=
  ∀ n, (P13514510681928437905.a n : ℤ) = A052924 n

end A052924

/-! ## A052924.P4777964079782569535

`A006190(n+1)-A006190(n)`
-/

namespace A052924.P4777964079782569535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 (n + 1) - A006190 n

end

end A052924.P4777964079782569535

namespace A052924

/-- `A006190(n+1)-A006190(n)` -/
def P4777964079782569535.Spec : Prop :=
  ∀ n, P4777964079782569535.a n = A052924 n

end A052924

/-! ## A052924.P11470251918206832223

`a(n-2)+lcm(3, a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A052924.P11470251918206832223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + Nat.lcm 3 (a (n - 1))

end

end A052924.P11470251918206832223

namespace A052924

/-- `a(n-2)+lcm(3, a(n-1))` -/
def P11470251918206832223.Spec : Prop :=
  ∀ n, (P11470251918206832223.a n : ℤ) = A052924 n

end A052924

/-! ## A052924.P8172378406637934489

`3*a(n-1)-floor(-a(n-2))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A052924.P8172378406637934489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * a (n - 1) - (-a (n - 2))

end

end A052924.P8172378406637934489

namespace A052924

/-- `3*a(n-1)-floor(-a(n-2))` -/
def P8172378406637934489.Spec : Prop :=
  ∀ n, P8172378406637934489.a n = A052924 n

end A052924

/-! ## A052924.P3664353676164645689

`a(n-2)+a(n-1)/cot(atan(3))` with `a(0)=1, a(1)=2`
-/

namespace A052924.P3664353676164645689
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + a (n - 1) / Real.cot (Real.arctan (3 : ℝ))

end

end A052924.P3664353676164645689

namespace A052924

/-- `a(n-2)+a(n-1)/cot(atan(3))` -/
def P3664353676164645689.Spec : Prop :=
  ∀ n, P3664353676164645689.a n = (A052924 n : ℝ)

end A052924

/-! ## A052924.P5393063932253751108

`a(n-2)+a(n-1)/sqrt(1/9)` with `a(0)=1, a(1)=2`
-/

namespace A052924.P5393063932253751108
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + a (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

end

end A052924.P5393063932253751108

namespace A052924

/-- `a(n-2)+a(n-1)/sqrt(1/9)` -/
def P5393063932253751108.Spec : Prop :=
  ∀ n, P5393063932253751108.a n = (A052924 n : ℝ)

end A052924

/-! ## A052924.P7715447417169594158

`3-(3*(1-a(n-1))-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A052924.P7715447417169594158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 - (3 * (1 - a (n - 1)) - a (n - 2))

end

end A052924.P7715447417169594158

namespace A052924

/-- `3-(3*(1-a(n-1))-a(n-2))` -/
def P7715447417169594158.Spec : Prop :=
  ∀ n, P7715447417169594158.a n = A052924 n

end A052924

/-! ## A052924.P16394194893452200940

`a(n-1)+a(n-1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A052924.P16394194893452200940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + a (n - 2)))

end

end A052924.P16394194893452200940

namespace A052924

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-2)` -/
def P16394194893452200940.Spec : Prop :=
  ∀ n, (P16394194893452200940.a n : ℤ) = A052924 n

end A052924

/-! ## A052924.P17188558551858011805

`A249579(4*n+2)`
-/

namespace A052924.P17188558551858011805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (4 * n + 2)

end

end A052924.P17188558551858011805

namespace A052924

/-- `A249579(4*n+2)` -/
def P17188558551858011805.Spec : Prop :=
  ∀ n, P17188558551858011805.a n = A052924 n

end A052924

/-! ## A052924.P9437657640362671878

`A108300(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A052924.P9437657640362671878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A108300 (n - 1) + a (n - 1)

end

end A052924.P9437657640362671878

namespace A052924

/-- `A108300(n-1)+a(n-1)` -/
def P9437657640362671878.Spec : Prop :=
  ∀ n, P9437657640362671878.a n = A052924 n

end A052924

/-! ## A052924.P14861631957745678237

`∑[∑[A107856(2*n+1)]]-n`
-/

namespace A052924.P14861631957745678237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107856 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A052924.P14861631957745678237

namespace A052924

/-- `∑[∑[A107856(2*n+1)]]-n` -/
def P14861631957745678237.Spec : Prop :=
  ∀ n, P14861631957745678237.a n = A052924 n

end A052924

/-! ## A052924.P16958297663414830228

`record[Δ[A249579(2*n*and(1, n))]]`
-/

namespace A052924.P16958297663414830228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (2 * n * Nat.land 1 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052924.P16958297663414830228

namespace A052924

/-- `record[Δ[A249579(2*n*and(1, n))]]` -/
def P16958297663414830228.Spec : Prop :=
  ∀ n, P16958297663414830228.a n = A052924 n

end A052924

/-! ## A052924.P7021722917913885471

`A006189(n)+A006189(n)-A010892(n+1)`
-/

namespace A052924.P7021722917913885471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006189 n + (A006189 n - A010892 (n + 1))

end

end A052924.P7021722917913885471

namespace A052924

/-- `A006189(n)+A006189(n)-A010892(n+1)` -/
def P7021722917913885471.Spec : Prop :=
  ∀ n, P7021722917913885471.a n = A052924 n

end A052924

/-! ## A052924.P9743832358117790959

`Δ[A006190(n)]`
-/

namespace A052924.P9743832358117790959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052924.P9743832358117790959

namespace A052924

/-- `Δ[A006190(n)]` -/
def P9743832358117790959.Spec : Prop :=
  ∀ n, P9743832358117790959.a n = A052924 n

end A052924

/-! ## A052924.P14759868308952394889

`Δ[A305889(2*n)]`
-/

namespace A052924.P14759868308952394889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305889 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052924.P14759868308952394889

namespace A052924

/-- `Δ[A305889(2*n)]` -/
def P14759868308952394889.Spec : Prop :=
  ∀ n, P14759868308952394889.a n = A052924 n

end A052924

/-! ## A052924.P4847508864796306810

`Δ[A249579(4*n)]`
-/

namespace A052924.P4847508864796306810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052924.P4847508864796306810

namespace A052924

/-- `Δ[A249579(4*n)]` -/
def P4847508864796306810.Spec : Prop :=
  ∀ n, P4847508864796306810.a n = A052924 n

end A052924

/-! ## A052924.P4196310378106512411

`Δ[A107855(2*(n+2))]`
-/

namespace A052924.P4196310378106512411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107855 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052924.P4196310378106512411

namespace A052924

/-- `Δ[A107855(2*(n+2))]` -/
def P4196310378106512411.Spec : Prop :=
  ∀ n, P4196310378106512411.a n = A052924 n

end A052924

/-! ## A052924.P5924366337862965968

`A052906(n)-a(n-1)` with `a(0)=1`
-/

namespace A052924.P5924366337862965968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052906 n - a (n - 1)

end

end A052924.P5924366337862965968

namespace A052924

/-- `A052906(n)-a(n-1)` -/
def P5924366337862965968.Spec : Prop :=
  ∀ n, P5924366337862965968.a n = A052924 n

end A052924

/-! ## A052924.P11604028577502586380

`record[Δ[A249579(xor(2, n)+1)]]`
-/

namespace A052924.P11604028577502586380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (Nat.xor 2 n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052924.P11604028577502586380

namespace A052924

/-- `record[Δ[A249579(xor(2, n)+1)]]` -/
def P11604028577502586380.Spec : Prop :=
  ∀ n, P11604028577502586380.a n = A052924 n

end A052924

/-!
# A052925: Expansion of (2-6*x+4*x^2-x^3)/((1-x)*(1-3*x+x^2)).

The programs for A052925, the canonical program `A052925.P8931762087011760224` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052925 has offset 0).

The definition of A052925 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2-6x+4x^2-x^3)/(1-4x+4x^2-x^3))` (program `A052925.P8931762087011760224`, by `A052925.P8931762087011760224.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052925.P8931762087011760224

`ogf((2-6x+4x^2-x^3)/(1-4x+4x^2-x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052925

/-- `ogf((2-6x+4x^2-x^3)/(1-4x+4x^2-x^3))` -/
def P8931762087011760224.Spec : Prop :=
  ∀ n, P8931762087011760224.a n = A052925 n

theorem P8931762087011760224.correct : P8931762087011760224.Spec := by
  intro n
  simp only [A052925]

end A052925

/-! ## A052925.P9217888864988584363

`4*a(n-1)-4*a(n-2)+a(n-3)` with `a(0)=2, a(1)=2, a(2)=4, a(3)=9`
-/

namespace A052925.P9217888864988584363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 4, 9] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2) + a (n - 3)

end

end A052925.P9217888864988584363

namespace A052925

/-- `4*a(n-1)-4*a(n-2)+a(n-3)` -/
def P9217888864988584363.Spec : Prop :=
  ∀ n, P9217888864988584363.a n = A052925 n

end A052925

/-! ## A052925.P4145620604378217241

`floor(ϕ²*a(n-1))-1` with `a(0)=2, a(1)=2`
-/

namespace A052925.P4145620604378217241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  ⌊Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌋ - 1

end

end A052925.P4145620604378217241

namespace A052925

/-- `floor(ϕ²*a(n-1))-1` -/
def P4145620604378217241.Spec : Prop :=
  ∀ n, P4145620604378217241.a n = A052925 n

end A052925

/-! ## A052925.P2220572916187615130

`floor(ϕ*floor(ϕ*a(n-1)))` with `a(0)=2, a(1)=2`
-/

namespace A052925.P2220572916187615130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  ⌊Real.goldenRatio * (⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋ : ℝ)⌋

end

end A052925.P2220572916187615130

namespace A052925

/-- `floor(ϕ*floor(ϕ*a(n-1)))` -/
def P2220572916187615130.Spec : Prop :=
  ∀ n, P2220572916187615130.a n = A052925 n

end A052925

/-! ## A052925.P923056293155165102

`∑[3*a(n-1)-a(n-2)]` with `a(0)=2, a(1)=0, a(2)=2, a(3)=5`
-/

namespace A052925.P923056293155165102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 2, 5] fun n f1 =>
  3 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052925.P923056293155165102

namespace A052925

/-- `∑[3*a(n-1)-a(n-2)]` -/
def P923056293155165102.Spec : Prop :=
  ∀ n, P923056293155165102.a n = A052925 n

end A052925

/-! ## A052925.P5171912106500083351

`A088305(n)+1`
-/

namespace A052925.P5171912106500083351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 n + 1

end

end A052925.P5171912106500083351

namespace A052925

/-- `A088305(n)+1` -/
def P5171912106500083351.Spec : Prop :=
  ∀ n, P5171912106500083351.a n = A052925 n

end A052925

/-! ## A052925.P15863053287136493833

`A324969(Δ[n²])+1`
-/

namespace A052925.P15863053287136493833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A052925.P15863053287136493833

namespace A052925

/-- `A324969(Δ[n²])+1` -/
def P15863053287136493833.Spec : Prop :=
  ∀ n, P15863053287136493833.a n = A052925 n

end A052925

/-! ## A052925.P1929723513500462716

`A000045(2*n)+ceil(acot(n))`
-/

namespace A052925.P1929723513500462716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) + ⌈SequenceMachineLib.acot (n : ℝ)⌉

end

end A052925.P1929723513500462716

namespace A052925

/-- `A000045(2*n)+ceil(acot(n))` -/
def P1929723513500462716.Spec : Prop :=
  ∀ n, P1929723513500462716.a n = A052925 n

end A052925

/-! ## A052925.P15827433204969529504

`A001519(n)+a(n-1)` with `a(0)=2, a(1)=2`
-/

namespace A052925.P15827433204969529504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A001519 n + a (n - 1)

end

end A052925.P15827433204969529504

namespace A052925

/-- `A001519(n)+a(n-1)` -/
def P15827433204969529504.Spec : Prop :=
  ∀ n, P15827433204969529504.a n = A052925 n

end A052925

/-! ## A052925.P7817814906593042689

`A000045(comp[record[xor(1, n+1)]])+1`
-/

namespace A052925.P7817814906593042689
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1

end

end A052925.P7817814906593042689

namespace A052925

/-- `A000045(comp[record[xor(1, n+1)]])+1` -/
def P7817814906593042689.Spec : Prop :=
  ∀ n, P7817814906593042689.a n = A052925 n

end A052925

/-! ## A052925.P3159467891928337561

`A000045(floor(acot(n))+2*n)+1`
-/

namespace A052925.P3159467891928337561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (2 * n : ℤ)).toNat + 1

end

end A052925.P3159467891928337561

namespace A052925

/-- `A000045(floor(acot(n))+2*n)+1` -/
def P3159467891928337561.Spec : Prop :=
  ∀ n, P3159467891928337561.a n = A052925 n

end A052925

/-! ## A052925.P1360530285993092090

`A000045(floor(3/acot(n))-n)+1`
-/

namespace A052925.P1360530285993092090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)).toNat + 1

end

end A052925.P1360530285993092090

namespace A052925

/-- `A000045(floor(3/acot(n))-n)+1` -/
def P1360530285993092090.Spec : Prop :=
  ∀ n, P1360530285993092090.a n = A052925 n

end A052925

/-! ## A052925.P13787074063258703193

`A000045(floor(acot(n)+n)+n)+1`
-/

namespace A052925.P13787074063258703193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ + (n : ℤ)).toNat + 1

end

end A052925.P13787074063258703193

namespace A052925

/-- `A000045(floor(acot(n)+n)+n)+1` -/
def P13787074063258703193.Spec : Prop :=
  ∀ n, P13787074063258703193.a n = A052925 n

end A052925

/-! ## A052925.P18173589399370913930

`A000045(abs(1-2*n)+1)+1`
-/

namespace A052925.P18173589399370913930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (|1 - (2 * n : ℤ)| + 1).toNat + 1

end

end A052925.P18173589399370913930

namespace A052925

/-- `A000045(abs(1-2*n)+1)+1` -/
def P18173589399370913930.Spec : Prop :=
  ∀ n, P18173589399370913930.a n = A052925 n

end A052925

/-! ## A052925.P16936082582225926110

`record[A000045(n%4+n)]+ceil(acot(n))`
-/

namespace A052925.P16936082582225926110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n % 4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ⌈SequenceMachineLib.acot (n : ℝ)⌉

end

end A052925.P16936082582225926110

namespace A052925

/-- `record[A000045(n%4+n)]+ceil(acot(n))` -/
def P16936082582225926110.Spec : Prop :=
  ∀ n, P16936082582225926110.a n = A052925 n

end A052925

/-! ## A052925.P4437230171015041018

`floor(A000045(2*n-1)+a(n-1))` with `a(0)=2, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A052925.P4437230171015041018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A000045 (2 * n - 1) + a (n - 1)

end

end A052925.P4437230171015041018

namespace A052925

/-- `floor(A000045(2*n-1)+a(n-1))` -/
def P4437230171015041018.Spec : Prop :=
  ∀ n, P4437230171015041018.a n = A052925 n

end A052925

/-! ## A052925.P737313156693366617

`A001611(A004277(n))`
-/

namespace A052925.P737313156693366617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (A004277 n).toNat

end

end A052925.P737313156693366617

namespace A052925

/-- `A001611(A004277(n))` -/
def P737313156693366617.Spec : Prop :=
  ∀ n, P737313156693366617.a n = A052925 n

end A052925

/-! ## A052925.P4408521717178328236

`A055588(A028310(n))`
-/

namespace A052925.P4408521717178328236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055588 (A028310 n).toNat

end

end A052925.P4408521717178328236

namespace A052925

/-- `A055588(A028310(n))` -/
def P4408521717178328236.Spec : Prop :=
  ∀ n, P4408521717178328236.a n = A052925 n

end A052925

/-! ## A052925.P16101023596700434822

`A001611(A004275(n+1))`
-/

namespace A052925.P16101023596700434822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (A004275 (n + 1)).toNat

end

end A052925.P16101023596700434822

namespace A052925

/-- `A001611(A004275(n+1))` -/
def P16101023596700434822.Spec : Prop :=
  ∀ n, P16101023596700434822.a n = A052925 n

end A052925

/-!
# A052926: Expansion of (1-3*x)/(1 - 4*x - x^2 + 3*x^3).

The programs for A052926, the canonical program `A052926.P3699865642264180977` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052926 has offset 0).

The definition of A052926 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x)/(1-4x-x^2+3x^3))` (program `A052926.P3699865642264180977`, by `A052926.P3699865642264180977.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052926.P3699865642264180977

`ogf((1-3x)/(1-4x-x^2+3x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052926

/-- `ogf((1-3x)/(1-4x-x^2+3x^3))` -/
def P3699865642264180977.Spec : Prop :=
  ∀ n, P3699865642264180977.a n = A052926 n

theorem P3699865642264180977.correct : P3699865642264180977.Spec := by
  intro n
  simp only [A052926]

end A052926

/-! ## A052926.P8884554943480765586

`4*a(n-1)+a(n-2)-3*a(n-3)` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A052926.P8884554943480765586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  4 * a (n - 1) + a (n - 2) - 3 * a (n - 3)

end

end A052926.P8884554943480765586

namespace A052926

/-- `4*a(n-1)+a(n-2)-3*a(n-3)` -/
def P8884554943480765586.Spec : Prop :=
  ∀ n, P8884554943480765586.a n = A052926 n

end A052926

/-! ## A052926.P10520697053686907623

`A034887(A322981(n+1)+A020522(n))`
-/

namespace A052926.P10520697053686907623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A322981 (n + 1) + A020522 n).toNat

end

end A052926.P10520697053686907623

namespace A052926

/-- `A034887(A322981(n+1)+A020522(n))` -/
def P10520697053686907623.Spec : Prop :=
  ∀ n, P10520697053686907623.a n = A052926 n

end A052926

/-!
# A052927: Expansion of 1/(1-4*x-x^3).

The programs for A052927, the canonical program `A052927.P15121372790637152946` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052927 has offset 0).

The definition of A052927 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x-x^3))` (program `A052927.P15121372790637152946`, by `A052927.P15121372790637152946.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052927.P15121372790637152946

`ogf(1/(1-4x-x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052927

/-- `ogf(1/(1-4x-x^3))` -/
def P15121372790637152946.Spec : Prop :=
  ∀ n, P15121372790637152946.a n = A052927 n

theorem P15121372790637152946.correct : P15121372790637152946.Spec := by
  intro n
  simp only [A052927]

end A052927

/-! ## A052927.P1128954372079481710

`4*a(n-1)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=16`
-/

namespace A052927.P1128954372079481710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 16] fun n a =>
  4 * a (n - 1) + a (n - 3)

end

end A052927.P1128954372079481710

namespace A052927

/-- `4*a(n-1)+a(n-3)` -/
def P1128954372079481710.Spec : Prop :=
  ∀ n, (P1128954372079481710.a n : ℤ) = A052927 n

end A052927

/-! ## A052927.P6743581738983558443

`Δ[a(n-3)-(3-4*a(n-1))]` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A052927.P6743581738983558443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n f1 =>
  f1 (n - 3) - (3 - 4 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052927.P6743581738983558443

namespace A052927

/-- `Δ[a(n-3)-(3-4*a(n-1))]` -/
def P6743581738983558443.Spec : Prop :=
  ∀ n, P6743581738983558443.a n = A052927 n

end A052927

/-! ## A052927.P14753520741142917854

`A117716(∑[n+2]+4)`
-/

namespace A052927.P14753520741142917854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117716 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A052927.P14753520741142917854

namespace A052927

/-- `A117716(∑[n+2]+4)` -/
def P14753520741142917854.Spec : Prop :=
  ∀ n, P14753520741142917854.a n = A052927 n

end A052927

/-! ## A052927.P2286691907957135638

`record[A010054(n)*A117716(n+3)]`
-/

namespace A052927.P2286691907957135638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A117716 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052927.P2286691907957135638

namespace A052927

/-- `record[A010054(n)*A117716(n+3)]` -/
def P2286691907957135638.Spec : Prop :=
  ∀ n, P2286691907957135638.a n = A052927 n

end A052927

/-!
# A052928: The even numbers repeated.

The programs for A052928, the canonical program `A052928.P15665125645728880594` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052928 has offset 0).

The definition of A052928 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052928.P15665125645728880594

`2*floor(n/2)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052928

/-- `2*floor(n/2)` -/
def P15665125645728880594.Spec : Prop :=
  ∀ n, P15665125645728880594.a n = A052928 n

theorem P15665125645728880594.correct : P15665125645728880594.Spec := by
  intro n
  simp only [A052928]

end A052928

/-! ## A052928.P16553603039432941890

`a(n-1)+a(n-a(n-1))` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A052928.P16553603039432941890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  a (n - 1) + a (n - a (n - 1))

end

end A052928.P16553603039432941890

namespace A052928

/-- `a(n-1)+a(n-a(n-1))` -/
def P16553603039432941890.Spec : Prop :=
  ∀ n, (P16553603039432941890.a n : ℤ) = A052928 n

end A052928

/-! ## A052928.P11642883870462909234

`A109613(n)-1`
-/

namespace A052928.P11642883870462909234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n - 1

end

end A052928.P11642883870462909234

namespace A052928

/-- `A109613(n)-1` -/
def P11642883870462909234.Spec : Prop :=
  ∀ n, P11642883870462909234.a n = A052928 n

end A052928

/-! ## A052928.P7746718193887578980

`A005843(A004526(n))`
-/

namespace A052928.P7746718193887578980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A004526 n).toNat

end

end A052928.P7746718193887578980

namespace A052928

/-- `A005843(A004526(n))` -/
def P7746718193887578980.Spec : Prop :=
  ∀ n, P7746718193887578980.a n = A052928 n

end A052928

/-! ## A052928.P3846766806713766913

`and(n, -2)`
-/

namespace A052928.P3846766806713766913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

end

end A052928.P3846766806713766913

namespace A052928

/-- `and(n, -2)` -/
def P3846766806713766913.Spec : Prop :=
  ∀ n, P3846766806713766913.a n = A052928 n

end A052928

/-! ## A052928.P13344292615473124115

`or(1, n)-1`
-/

namespace A052928.P13344292615473124115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - 1

end

end A052928.P13344292615473124115

namespace A052928

/-- `or(1, n)-1` -/
def P13344292615473124115.Spec : Prop :=
  ∀ n, P13344292615473124115.a n = A052928 n

end A052928

/-! ## A052928.P13295339083265825004

`xor(1, or(1, n))`
-/

namespace A052928.P13295339083265825004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 n)

end

end A052928.P13295339083265825004

namespace A052928

/-- `xor(1, or(1, n))` -/
def P13295339083265825004.Spec : Prop :=
  ∀ n, (P13295339083265825004.a n : ℤ) = A052928 n

end A052928

/-! ## A052928.P2051964584089913203

`n-n%2`
-/

namespace A052928.P2051964584089913203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n % 2 : ℕ) : ℤ)

end

end A052928.P2051964584089913203

namespace A052928

/-- `n-n%2` -/
def P2051964584089913203.Spec : Prop :=
  ∀ n, P2051964584089913203.a n = A052928 n

end A052928

/-! ## A052928.P107873726911253205

`-n%2+n`
-/

namespace A052928.P107873726911253205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(n : ℤ)) 2 + (n : ℤ)

end

end A052928.P107873726911253205

namespace A052928

/-- `-n%2+n` -/
def P107873726911253205.Spec : Prop :=
  ∀ n, P107873726911253205.a n = A052928 n

end A052928

/-! ## A052928.P5113220993851706491

`xor(n, n²%2)`
-/

namespace A052928.P5113220993851706491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n ^ 2 % 2)

end

end A052928.P5113220993851706491

namespace A052928

/-- `xor(n, n²%2)` -/
def P5113220993851706491.Spec : Prop :=
  ∀ n, (P5113220993851706491.a n : ℤ) = A052928 n

end A052928

/-! ## A052928.P9337404500043320508

`xor(n, char[Δ[n²]])`
-/

namespace A052928.P9337404500043320508
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A052928.P9337404500043320508

namespace A052928

/-- `xor(n, char[Δ[n²]])` -/
def P9337404500043320508.Spec : Prop :=
  ∀ n, (P9337404500043320508.a n : ℤ) = A052928 n

end A052928

/-! ## A052928.P717964015372866520

`gcd(2, n)-2+n`
-/

namespace A052928.P717964015372866520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) - 2 + (n : ℤ)

end

end A052928.P717964015372866520

namespace A052928

/-- `gcd(2, n)-2+n` -/
def P717964015372866520.Spec : Prop :=
  ∀ n, P717964015372866520.a n = A052928 n

end A052928

/-! ## A052928.P16733658291654095235

`lcm(2, n)%(n+1)`
-/

namespace A052928.P16733658291654095235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n % (n + 1)

end

end A052928.P16733658291654095235

namespace A052928

/-- `lcm(2, n)%(n+1)` -/
def P16733658291654095235.Spec : Prop :=
  ∀ n, (P16733658291654095235.a n : ℤ) = A052928 n

end A052928

/-! ## A052928.P1944005695714767081

`lt[n, xor(2, n)]-n`
-/

namespace A052928.P1944005695714767081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n : ℤ)

end

end A052928.P1944005695714767081

namespace A052928

/-- `lt[n, xor(2, n)]-n` -/
def P1944005695714767081.Spec : Prop :=
  ∀ n, P1944005695714767081.a n = A052928 n

end A052928

/-! ## A052928.P11296753551117002044

`∑[∑{p}[n, val(#², 2)]]`
-/

namespace A052928.P11296753551117002044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation (p ^ 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052928.P11296753551117002044

namespace A052928

/-- `∑[∑{p}[n, val(#², 2)]]` -/
def P11296753551117002044.Spec : Prop :=
  ∀ n, (P11296753551117002044.a n : ℤ) = A052928 n

end A052928

/-! ## A052928.P16991302165880863239

`∑[val(∏{p}[n, #²], 2)]`
-/

namespace A052928.P16991302165880863239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p ^ 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052928.P16991302165880863239

namespace A052928

/-- `∑[val(∏{p}[n, #²], 2)]` -/
def P16991302165880863239.Spec : Prop :=
  ∀ n, (P16991302165880863239.a n : ℤ) = A052928 n

end A052928

/-! ## A052928.P772091710318554473

`2+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A052928.P772091710318554473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 + a (n - 2)

end

end A052928.P772091710318554473

namespace A052928

/-- `2+a(n-2)` -/
def P772091710318554473.Spec : Prop :=
  ∀ n, (P772091710318554473.a n : ℤ) = A052928 n

end A052928

/-! ## A052928.P4912774600527738207

`n-val(n²+1, 2)`
-/

namespace A052928.P4912774600527738207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (n ^ 2 + 1) 2 : ℤ)

end

end A052928.P4912774600527738207

namespace A052928

/-- `n-val(n²+1, 2)` -/
def P4912774600527738207.Spec : Prop :=
  ∀ n, P4912774600527738207.a n = A052928 n

end A052928

/-! ## A052928.P6170852489425693749

`floor((xor(1, n)+n)/2)`
-/

namespace A052928.P6170852489425693749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 n + n : ℚ) / 2⌋

end

end A052928.P6170852489425693749

namespace A052928

/-- `floor((xor(1, n)+n)/2)` -/
def P6170852489425693749.Spec : Prop :=
  ∀ n, P6170852489425693749.a n = A052928 n

end A052928

/-! ## A052928.P911454103111116186

`n-sin(n*asin(1))²`
-/

namespace A052928.P911454103111116186
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.sin ((n : ℝ) * Real.arcsin (1 : ℝ)) ^ 2

end

end A052928.P911454103111116186

namespace A052928

/-- `n-sin(n*asin(1))²` -/
def P911454103111116186.Spec : Prop :=
  ∀ n, P911454103111116186.a n = (A052928 n : ℝ)

end A052928

/-!
# A052929: Expansion of g.f. (2-3*x-x^2)/((1-x^2)*(1-3*x)).

The programs for A052929, the canonical program `A052929.P17328362810636214537` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052929 has offset 0).

The definition of A052929 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2-3x-x^2)/(1-3x-x^2+3x^3))` (program `A052929.P17328362810636214537`, by `A052929.P17328362810636214537.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052929.P17328362810636214537

`ogf((2-3x-x^2)/(1-3x-x^2+3x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052929

/-- `ogf((2-3x-x^2)/(1-3x-x^2+3x^3))` -/
def P17328362810636214537.Spec : Prop :=
  ∀ n, P17328362810636214537.a n = A052929 n

theorem P17328362810636214537.correct : P17328362810636214537.Spec := by
  intro n
  simp only [A052929]

end A052929

/-! ## A052929.P5605525601399726094

`3^n+(1+(-1)^n)/2`
-/

namespace A052929.P5605525601399726094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) + (1 + (-1) ^ n : ℚ) / 2

end

end A052929.P5605525601399726094

namespace A052929

/-- `3^n+(1+(-1)^n)/2` -/
def P5605525601399726094.Spec : Prop :=
  ∀ n, P5605525601399726094.a n = (A052929 n : ℚ)

end A052929

/-! ## A052929.P113833033010390393

`abs(or(1, n)+3^n-n)`
-/

namespace A052929.P113833033010390393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor 1 n : ℤ) + ((3 ^ n : ℤ) - (n : ℤ))|

end

end A052929.P113833033010390393

namespace A052929

/-- `abs(or(1, n)+3^n-n)` -/
def P113833033010390393.Spec : Prop :=
  ∀ n, P113833033010390393.a n = A052929 n

end A052929

/-! ## A052929.P10103051229869902528

`∑[xor(4, 3*a(n-1))]` with `a(0)=2, a(1)=1`
-/

namespace A052929.P10103051229869902528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  Nat.xor 4 (3 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052929.P10103051229869902528

namespace A052929

/-- `∑[xor(4, 3*a(n-1))]` -/
def P10103051229869902528.Spec : Prop :=
  ∀ n, (P10103051229869902528.a n : ℤ) = A052929 n

end A052929

/-! ## A052929.P17630123252890139374

`or(2-and(1, n), 3^n-1)`
-/

namespace A052929.P17630123252890139374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 - (Nat.land 1 n : ℤ)) ((3 ^ n : ℤ) - 1)

end

end A052929.P17630123252890139374

namespace A052929

/-- `or(2-and(1, n), 3^n-1)` -/
def P17630123252890139374.Spec : Prop :=
  ∀ n, P17630123252890139374.a n = A052929 n

end A052929

/-! ## A052929.P5922610637524516093

`xor(n%2, or(2, 3^n-1))`
-/

namespace A052929.P5922610637524516093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n % 2 : ℕ) : ℤ) (Int.lor 2 ((3 ^ n : ℤ) - 1))

end

end A052929.P5922610637524516093

namespace A052929

/-- `xor(n%2, or(2, 3^n-1))` -/
def P5922610637524516093.Spec : Prop :=
  ∀ n, P5922610637524516093.a n = A052929 n

end A052929

/-! ## A052929.P13354060425539019685

`abs(xor(2, 3*a(n-1))-1)` with `a(0)=2`
-/

namespace A052929.P13354060425539019685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  |Int.xor 2 (3 * a (n - 1)) - 1|

end

end A052929.P13354060425539019685

namespace A052929

/-- `abs(xor(2, 3*a(n-1))-1)` -/
def P13354060425539019685.Spec : Prop :=
  ∀ n, P13354060425539019685.a n = A052929 n

end A052929

/-! ## A052929.P10142997905114311606

`or(2, ((n-1)%2)^n+3^n)`
-/

namespace A052929.P10142997905114311606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (Int.tmod ((n : ℤ) - 1) 2 ^ n + (3 ^ n : ℤ))

end

end A052929.P10142997905114311606

namespace A052929

/-- `or(2, ((n-1)%2)^n+3^n)` -/
def P10142997905114311606.Spec : Prop :=
  ∀ n, P10142997905114311606.a n = A052929 n

end A052929

/-! ## A052929.P8508767637151509319

`record[1-(1-4*and(1, n))*a(n-1)]` with `a(0)=2, a(1)=2`
-/

namespace A052929.P8508767637151509319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  1 - (1 - (4 * Nat.land 1 n : ℤ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052929.P8508767637151509319

namespace A052929

/-- `record[1-(1-4*and(1, n))*a(n-1)]` -/
def P8508767637151509319.Spec : Prop :=
  ∀ n, P8508767637151509319.a n = A052929 n

end A052929

/-! ## A052929.P16052558596704224229

`Δ[A003462(n)+ceil(n/2)]`
-/

namespace A052929.P16052558596704224229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052929.P16052558596704224229

namespace A052929

/-- `Δ[A003462(n)+ceil(n/2)]` -/
def P16052558596704224229.Spec : Prop :=
  ∀ n, P16052558596704224229.a n = A052929 n

end A052929

/-! ## A052929.P11937327980033880390

`xor(3^n-1, A000034(n+1))`
-/

namespace A052929.P11937327980033880390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((3 ^ n : ℤ) - 1) (A000034 (n + 1))

end

end A052929.P11937327980033880390

namespace A052929

/-- `xor(3^n-1, A000034(n+1))` -/
def P11937327980033880390.Spec : Prop :=
  ∀ n, P11937327980033880390.a n = A052929 n

end A052929

/-! ## A052929.P7438443158614535837

`xor(A177499(2*(n+1))-1, 3^n)`
-/

namespace A052929.P7438443158614535837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A177499 (2 * (n + 1)) - 1) (3 ^ n : ℤ)

end

end A052929.P7438443158614535837

namespace A052929

/-- `xor(A177499(2*(n+1))-1, 3^n)` -/
def P7438443158614535837.Spec : Prop :=
  ∀ n, P7438443158614535837.a n = A052929 n

end A052929

/-! ## A052929.P15561308916633014768

`or(A000244(n)-1, (n²²+2)%4)`
-/

namespace A052929.P15561308916633014768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000244 n - 1) ((((n ^ 2) ^ 2 + 2) % 4 : ℕ) : ℤ)

end

end A052929.P15561308916633014768

namespace A052929

/-- `or(A000244(n)-1, (n²²+2)%4)` -/
def P15561308916633014768.Spec : Prop :=
  ∀ n, P15561308916633014768.a n = A052929 n

end A052929

/-! ## A052929.P15182543305850746563

`xor(A010678(n), A034472(n))`
-/

namespace A052929.P15182543305850746563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010678 n) (A034472 n)

end

end A052929.P15182543305850746563

namespace A052929

/-- `xor(A010678(n), A034472(n))` -/
def P15182543305850746563.Spec : Prop :=
  ∀ n, P15182543305850746563.a n = A052929 n

end A052929

/-! ## A052929.P15273738191429030087

`xor(A000035(n), A102345(n))`
-/

namespace A052929.P15273738191429030087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n) (A102345 n)

end

end A052929.P15273738191429030087

namespace A052929

/-- `xor(A000035(n), A102345(n))` -/
def P15273738191429030087.Spec : Prop :=
  ∀ n, P15273738191429030087.a n = A052929 n

end A052929

/-! ## A052929.P17812847776705665025

`xor(A010697(n), A105723(n))`
-/

namespace A052929.P17812847776705665025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010697 n) (A105723 n)

end

end A052929.P17812847776705665025

namespace A052929

/-- `xor(A010697(n), A105723(n))` -/
def P17812847776705665025.Spec : Prop :=
  ∀ n, P17812847776705665025.a n = A052929 n

end A052929

/-! ## A052929.P12656281668319141206

`xor(A010693(n), A141317(n))`
-/

namespace A052929.P12656281668319141206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010693 n) (A141317 n)

end

end A052929.P12656281668319141206

namespace A052929

/-- `xor(A010693(n), A141317(n))` -/
def P12656281668319141206.Spec : Prop :=
  ∀ n, P12656281668319141206.a n = A052929 n

end A052929

/-! ## A052929.P16395952505840760185

`xor(A010687(n), A168607(n))`
-/

namespace A052929.P16395952505840760185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010687 n) (A168607 n)

end

end A052929.P16395952505840760185

namespace A052929

/-- `xor(A010687(n), A168607(n))` -/
def P16395952505840760185.Spec : Prop :=
  ∀ n, P16395952505840760185.a n = A052929 n

end A052929

/-! ## A052929.P14828160433103186917

`xor(A168330(n+1), A352779(n))`
-/

namespace A052929.P14828160433103186917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A168330 (n + 1)) (A352779 n)

end

end A052929.P14828160433103186917

namespace A052929

/-- `xor(A168330(n+1), A352779(n))` -/
def P14828160433103186917.Spec : Prop :=
  ∀ n, P14828160433103186917.a n = A052929 n

end A052929

/-!
# A052930: Expansion of (1-x)/(1 - x - 2*x^2 - 2*x^3 + 2*x^4).

The programs for A052930, the canonical program `A052930.P6290959149547148863` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052930 has offset 0).

The definition of A052930 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x-2x^2-2x^3+2x^4))` (program `A052930.P6290959149547148863`, by `A052930.P6290959149547148863.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052930.P6290959149547148863

`ogf((1-x)/(1-x-2x^2-2x^3+2x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052930

/-- `ogf((1-x)/(1-x-2x^2-2x^3+2x^4))` -/
def P6290959149547148863.Spec : Prop :=
  ∀ n, P6290959149547148863.a n = A052930 n

theorem P6290959149547148863.correct : P6290959149547148863.Spec := by
  intro n
  simp only [A052930]

end A052930

/-! ## A052930.P14010463641991148704

`a(n-1)+2*a(n-2)+2*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=4`
-/

namespace A052930.P14010463641991148704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 4] fun n a =>
  a (n - 1) + 2 * a (n - 2) + 2 * a (n - 3) - 2 * a (n - 4)

end

end A052930.P14010463641991148704

namespace A052930

/-- `a(n-1)+2*a(n-2)+2*a(n-3)-2*a(n-4)` -/
def P14010463641991148704.Spec : Prop :=
  ∀ n, P14010463641991148704.a n = A052930 n

end A052930

/-!
# A052931: Expansion of 1/(1 - 3*x^2 - x^3).

The programs for A052931, the canonical program `A052931.P8197643211734053952` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052931 has offset 0).

The definition of A052931 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x^2-x^3))` (program `A052931.P8197643211734053952`, by `A052931.P8197643211734053952.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052931.P8197643211734053952

`ogf(1/(1-3x^2-x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052931

/-- `ogf(1/(1-3x^2-x^3))` -/
def P8197643211734053952.Spec : Prop :=
  ∀ n, P8197643211734053952.a n = A052931 n

theorem P8197643211734053952.correct : P8197643211734053952.Spec := by
  intro n
  simp only [A052931]

end A052931

/-! ## A052931.P3346017301840636582

`3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A052931.P3346017301840636582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3] fun n a =>
  3 * a (n - 2) + a (n - 3)

end

end A052931.P3346017301840636582

namespace A052931

/-- `3*a(n-2)+a(n-3)` -/
def P3346017301840636582.Spec : Prop :=
  ∀ n, (P3346017301840636582.a n : ℤ) = A052931 n

end A052931

/-! ## A052931.P4337572046448423152

`A187497(3*(n+1))`
-/

namespace A052931.P4337572046448423152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187497 (3 * (n + 1))

end

end A052931.P4337572046448423152

namespace A052931

/-- `A187497(3*(n+1))` -/
def P4337572046448423152.Spec : Prop :=
  ∀ n, P4337572046448423152.a n = A052931 n

end A052931

/-! ## A052931.P12470822965432452567

`a(n-2)+a(n-2)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A052931.P12470822965432452567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) + a (n - 3)))

end

end A052931.P12470822965432452567

namespace A052931

/-- `a(n-2)+a(n-2)+a(n-2)+a(n-3)` -/
def P12470822965432452567.Spec : Prop :=
  ∀ n, (P12470822965432452567.a n : ℤ) = A052931 n

end A052931

/-! ## A052931.P7288562827925117369

`A187496(3*n+4)`
-/

namespace A052931.P7288562827925117369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187496 (3 * n + 4)

end

end A052931.P7288562827925117369

namespace A052931

/-- `A187496(3*n+4)` -/
def P7288562827925117369.Spec : Prop :=
  ∀ n, P7288562827925117369.a n = A052931 n

end A052931

/-! ## A052931.P5646764089195387434

`A187495(3*n+7)`
-/

namespace A052931.P5646764089195387434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187495 (3 * n + 7)

end

end A052931.P5646764089195387434

namespace A052931

/-- `A187495(3*n+7)` -/
def P5646764089195387434.Spec : Prop :=
  ∀ n, P5646764089195387434.a n = A052931 n

end A052931

/-! ## A052931.P13398635939482608698

`A188048(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A052931.P13398635939482608698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A188048 n + a (n - 2)

end

end A052931.P13398635939482608698

namespace A052931

/-- `A188048(n)+a(n-2)` -/
def P13398635939482608698.Spec : Prop :=
  ∀ n, P13398635939482608698.a n = A052931 n

end A052931

/-! ## A052931.P9282756027945534732

`4*a(n-2)-(a(n-2)-a(n-3))` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A052931.P9282756027945534732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3] fun n a =>
  4 * a (n - 2) - (a (n - 2) - a (n - 3))

end

end A052931.P9282756027945534732

namespace A052931

/-- `4*a(n-2)-(a(n-2)-a(n-3))` -/
def P9282756027945534732.Spec : Prop :=
  ∀ n, P9282756027945534732.a n = A052931 n

end A052931

/-! ## A052931.P567946605383039713

`A188022(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A052931.P567946605383039713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188022 (n + 1) - a (n - 1)

end

end A052931.P567946605383039713

namespace A052931

/-- `A188022(n+1)-a(n-1)` -/
def P567946605383039713.Spec : Prop :=
  ∀ n, P567946605383039713.a n = A052931 n

end A052931

/-! ## A052931.P12349564458226957996

`Δ[A188021(n+1)]`
-/

namespace A052931.P12349564458226957996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052931.P12349564458226957996

namespace A052931

/-- `Δ[A188021(n+1)]` -/
def P12349564458226957996.Spec : Prop :=
  ∀ n, P12349564458226957996.a n = A052931 n

end A052931

/-! ## A052931.P4997200438107589490

`Δ[A187498(3*(n+1))]`
-/

namespace A052931.P4997200438107589490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187498 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052931.P4997200438107589490

namespace A052931

/-- `Δ[A187498(3*(n+1))]` -/
def P4997200438107589490.Spec : Prop :=
  ∀ n, P4997200438107589490.a n = A052931 n

end A052931

/-! ## A052931.P5671060205027899431

`A188021(n+2)-A188021(n+1)`
-/

namespace A052931.P5671060205027899431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188021 (n + 2) - A188021 (n + 1)

end

end A052931.P5671060205027899431

namespace A052931

/-- `A188021(n+2)-A188021(n+1)` -/
def P5671060205027899431.Spec : Prop :=
  ∀ n, P5671060205027899431.a n = A052931 n

end A052931

/-! ## A052931.P879781110021811356

`A188048(n+2)-A188022(n+1)`
-/

namespace A052931.P879781110021811356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 (n + 2) - A188022 (n + 1)

end

end A052931.P879781110021811356

namespace A052931

/-- `A188048(n+2)-A188022(n+1)` -/
def P879781110021811356.Spec : Prop :=
  ∀ n, P879781110021811356.a n = A052931 n

end A052931

/-! ## A052931.P10137855799823101642

`A076264(n)²%A076264(n+1)`
-/

namespace A052931.P10137855799823101642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076264 n ^ 2) (A076264 (n + 1))

end

end A052931.P10137855799823101642

namespace A052931

/-- `A076264(n)²%A076264(n+1)` -/
def P10137855799823101642.Spec : Prop :=
  ∀ n, P10137855799823101642.a n = A052931 n

end A052931

/-!
# A052932: Expansion of (1-x)/(1 - 2*x - x^4 + x^5).

The programs for A052932, the canonical program `A052932.P2430706763984211292` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052932 has offset 0).

The definition of A052932 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x-x^4+x^5))` (program `A052932.P2430706763984211292`, by `A052932.P2430706763984211292.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052932.P2430706763984211292

`ogf((1-x)/(1-2x-x^4+x^5))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052932

/-- `ogf((1-x)/(1-2x-x^4+x^5))` -/
def P2430706763984211292.Spec : Prop :=
  ∀ n, P2430706763984211292.a n = A052932 n

theorem P2430706763984211292.correct : P2430706763984211292.Spec := by
  intro n
  simp only [A052932]

end A052932

/-! ## A052932.P18150385629819893276

`2*a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=9`
-/

namespace A052932.P18150385629819893276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4, 9] fun n a =>
  2 * a (n - 1) + a (n - 4) - a (n - 5)

end

end A052932.P18150385629819893276

namespace A052932

/-- `2*a(n-1)+a(n-4)-a(n-5)` -/
def P18150385629819893276.Spec : Prop :=
  ∀ n, P18150385629819893276.a n = A052932 n

end A052932

/-! ## A052932.P1842655023554447960

`ceil(A104864(3*n+2)/18)`
-/

namespace A052932.P1842655023554447960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104864 (3 * n + 2) : ℚ) / 18⌉

end

end A052932.P1842655023554447960

namespace A052932

/-- `ceil(A104864(3*n+2)/18)` -/
def P1842655023554447960.Spec : Prop :=
  ∀ n, P1842655023554447960.a n = A052932 n

end A052932

/-! ## A052932.P5704467637285352733

`A226190(A367661(n))`
-/

namespace A052932.P5704467637285352733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A367661 n).toNat

end

end A052932.P5704467637285352733

namespace A052932

/-- `A226190(A367661(n))` -/
def P5704467637285352733.Spec : Prop :=
  ∀ n, P5704467637285352733.a n = A052932 n

end A052932

/-! ## A052932.P7196831292431937318

`A001462(A002843(comp[2*n+3]))`
-/

namespace A052932.P7196831292431937318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A002843 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A052932.P7196831292431937318

namespace A052932

/-- `A001462(A002843(comp[2*n+3]))` -/
def P7196831292431937318.Spec : Prop :=
  ∀ n, P7196831292431937318.a n = A052932 n

end A052932

/-!
# A052933: Expansion of (1-x^2)/(1 - x - 3*x^2 + 2*x^4).

The programs for A052933, the canonical program `A052933.P3482700871920096840` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052933 has offset 0).

The definition of A052933 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-x-3x^2+2x^4))` (program `A052933.P3482700871920096840`, by `A052933.P3482700871920096840.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052933.P3482700871920096840

`ogf((1-x^2)/(1-x-3x^2+2x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052933

/-- `ogf((1-x^2)/(1-x-3x^2+2x^4))` -/
def P3482700871920096840.Spec : Prop :=
  ∀ n, P3482700871920096840.a n = A052933 n

theorem P3482700871920096840.correct : P3482700871920096840.Spec := by
  intro n
  simp only [A052933]

end A052933

/-! ## A052933.P13576234485401772195

`a(n-1)+3*a(n-2)-2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=6`
-/

namespace A052933.P13576234485401772195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 6] fun n a =>
  a (n - 1) + 3 * a (n - 2) - 2 * a (n - 4)

end

end A052933.P13576234485401772195

namespace A052933

/-- `a(n-1)+3*a(n-2)-2*a(n-4)` -/
def P13576234485401772195.Spec : Prop :=
  ∀ n, P13576234485401772195.a n = A052933 n

end A052933

/-! ## A052933.P713731497033919707

`A281716(n+1)-2^n`
-/

namespace A052933.P713731497033919707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281716 (n + 1) - (2 ^ n : ℤ)

end

end A052933.P713731497033919707

namespace A052933

/-- `A281716(n+1)-2^n` -/
def P713731497033919707.Spec : Prop :=
  ∀ n, P713731497033919707.a n = A052933 n

end A052933

/-! ## A052933.P16904936790543515739

`abs(A281716(n+1)-A000079(n))`
-/

namespace A052933.P16904936790543515739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A281716 (n + 1) - A000079 n|

end

end A052933.P16904936790543515739

namespace A052933

/-- `abs(A281716(n+1)-A000079(n))` -/
def P16904936790543515739.Spec : Prop :=
  ∀ n, P16904936790543515739.a n = A052933 n

end A052933

/-! ## A052933.P10764736423211254299

`(A281716(n+1)-A000079(n))%A281711(n+1)`
-/

namespace A052933.P10764736423211254299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281716 (n + 1) - A000079 n) (A281711 (n + 1))

end

end A052933.P10764736423211254299

namespace A052933

/-- `(A281716(n+1)-A000079(n))%A281711(n+1)` -/
def P10764736423211254299.Spec : Prop :=
  ∀ n, P10764736423211254299.a n = A052933 n

end A052933

/-! ## A052933.P16409503879310696414

`A281716(n+1)%A281717(n+1)-A000079(n)`
-/

namespace A052933.P16409503879310696414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281716 (n + 1)) (A281717 (n + 1)) - A000079 n

end

end A052933.P16409503879310696414

namespace A052933

/-- `A281716(n+1)%A281717(n+1)-A000079(n)` -/
def P16409503879310696414.Spec : Prop :=
  ∀ n, P16409503879310696414.a n = A052933 n

end A052933

/-! ## A052933.P16078461143337294925

`(A281716(n+1)-A000079(n))*A007318(∑[n])`
-/

namespace A052933.P16078461143337294925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A281716 (n + 1) - A000079 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052933.P16078461143337294925

namespace A052933

/-- `(A281716(n+1)-A000079(n))*A007318(∑[n])` -/
def P16078461143337294925.Spec : Prop :=
  ∀ n, P16078461143337294925.a n = A052933 n

end A052933

/-!
# A052934: Expansion of (1-x)/(1-6*x).

The programs for A052934, the canonical program `A052934.P6438643668590336558` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052934 has offset 0).

The definition of A052934 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-6x))` (program `A052934.P6438643668590336558`, by `A052934.P6438643668590336558.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052934.P6438643668590336558

`ogf((1-x)/(1-6x))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052934

/-- `ogf((1-x)/(1-6x))` -/
def P6438643668590336558.Spec : Prop :=
  ∀ n, P6438643668590336558.a n = A052934 n

theorem P6438643668590336558.correct : P6438643668590336558.Spec := by
  intro n
  simp only [A052934]

end A052934

/-! ## A052934.P18008511915825320199

`6*a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A052934.P18008511915825320199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  6 * a (n - 1)

end

end A052934.P18008511915825320199

namespace A052934

/-- `6*a(n-1)` -/
def P18008511915825320199.Spec : Prop :=
  ∀ n, (P18008511915825320199.a n : ℤ) = A052934 n

end A052934

/-! ## A052934.P17518687229133752308

`Δ[floor(6^(n-1))]`
-/

namespace A052934.P17518687229133752308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052934.P17518687229133752308

namespace A052934

/-- `Δ[floor(6^(n-1))]` -/
def P17518687229133752308.Spec : Prop :=
  ∀ n, P17518687229133752308.a n = A052934 n

end A052934

/-! ## A052934.P9915130929328080596

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=5, a(2)=6`
-/

namespace A052934.P9915130929328080596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 6] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A052934.P9915130929328080596

namespace A052934

/-- `abs(∏[-a(n-1)])` -/
def P9915130929328080596.Spec : Prop :=
  ∀ n, P9915130929328080596.a n = A052934 n

end A052934

/-! ## A052934.P11261003887348965469

`ceil(Δ[6^((n-1)%(n+2))])`
-/

namespace A052934.P11261003887348965469
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 2 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A052934.P11261003887348965469

namespace A052934

/-- `ceil(Δ[6^((n-1)%(n+2))])` -/
def P11261003887348965469.Spec : Prop :=
  ∀ n, P11261003887348965469.a n = A052934 n

end A052934

/-! ## A052934.P15492052748106019812

`a(n-1)/(1-5/6)` with `a(0)=1, a(1)=5`
-/

namespace A052934.P15492052748106019812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) / (1 - (5 : ℚ) / 6)

end

end A052934.P15492052748106019812

namespace A052934

/-- `a(n-1)/(1-5/6)` -/
def P15492052748106019812.Spec : Prop :=
  ∀ n, P15492052748106019812.a n = (A052934 n : ℚ)

end A052934

/-! ## A052934.P2502736976724689821

`lcm(6^(n-1), a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A052934.P2502736976724689821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((6 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A052934.P2502736976724689821

namespace A052934

/-- `lcm(6^(n-1), a(n-1))` -/
def P2502736976724689821.Spec : Prop :=
  ∀ n, (P2502736976724689821.a n : ℤ) = A052934 n

end A052934

/-! ## A052934.P12317327787924247977

`∑[A055846(n)]`
-/

namespace A052934.P12317327787924247977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052934.P12317327787924247977

namespace A052934

/-- `∑[A055846(n)]` -/
def P12317327787924247977.Spec : Prop :=
  ∀ n, P12317327787924247977.a n = A052934 n

end A052934

/-! ## A052934.P8752776732989712205

`3^(n-1)*A257113(n+2)`
-/

namespace A052934.P8752776732989712205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A257113 (n + 2) : ℚ)

end

end A052934.P8752776732989712205

namespace A052934

/-- `3^(n-1)*A257113(n+2)` -/
def P8752776732989712205.Spec : Prop :=
  ∀ n, P8752776732989712205.a n = (A052934 n : ℚ)

end A052934

/-! ## A052934.P4637635981009826870

`A166023(A004277(n))`
-/

namespace A052934.P4637635981009826870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166023 (A004277 n).toNat

end

end A052934.P4637635981009826870

namespace A052934

/-- `A166023(A004277(n))` -/
def P4637635981009826870.Spec : Prop :=
  ∀ n, P4637635981009826870.a n = A052934 n

end A052934

/-! ## A052934.P10868755920434726390

`A166023(A004275(n+1))`
-/

namespace A052934.P10868755920434726390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166023 (A004275 (n + 1)).toNat

end

end A052934.P10868755920434726390

namespace A052934

/-- `A166023(A004275(n+1))` -/
def P10868755920434726390.Spec : Prop :=
  ∀ n, P10868755920434726390.a n = A052934 n

end A052934

/-! ## A052934.P3694873337796389184

`A084244(n)*A123344(n)`
-/

namespace A052934.P3694873337796389184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084244 n * A123344 n

end

end A052934.P3694873337796389184

namespace A052934

/-- `A084244(n)*A123344(n)` -/
def P3694873337796389184.Spec : Prop :=
  ∀ n, P3694873337796389184.a n = A052934 n

end A052934

/-! ## A052934.P12944772266435604910

`A133494(n)*A146523(n)`
-/

namespace A052934.P12944772266435604910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n * A146523 n

end

end A052934.P12944772266435604910

namespace A052934

/-- `A133494(n)*A146523(n)` -/
def P12944772266435604910.Spec : Prop :=
  ∀ n, P12944772266435604910.a n = A052934 n

end A052934

/-! ## A052934.P13135764286205017016

`lcm(A011782(n), A084244(n))`
-/

namespace A052934.P13135764286205017016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011782 n) (A084244 n)

end

end A052934.P13135764286205017016

namespace A052934

/-- `lcm(A011782(n), A084244(n))` -/
def P13135764286205017016.Spec : Prop :=
  ∀ n, (P13135764286205017016.a n : ℤ) = A052934 n

end A052934

/-! ## A052934.P8950747825788595025

`2*A000400(n)-A003949(n)`
-/

namespace A052934.P8950747825788595025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000400 n - A003949 n

end

end A052934.P8950747825788595025

namespace A052934

/-- `2*A000400(n)-A003949(n)` -/
def P8950747825788595025.Spec : Prop :=
  ∀ n, P8950747825788595025.a n = A052934 n

end A052934

/-! ## A052934.P983746236528076539

`(A067411(n)+A000400(n))/2`
-/

namespace A052934.P983746236528076539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067411 n + A000400 n : ℚ) / 2

end

end A052934.P983746236528076539

namespace A052934

/-- `(A067411(n)+A000400(n))/2` -/
def P983746236528076539.Spec : Prop :=
  ∀ n, P983746236528076539.a n = (A052934 n : ℚ)

end A052934

/-! ## A052934.P2228588219947169970

`record[A055257(n+1)%A055257(n)]`
-/

namespace A052934.P2228588219947169970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055257 (n + 1)) (A055257 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052934.P2228588219947169970

namespace A052934

/-- `record[A055257(n+1)%A055257(n)]` -/
def P2228588219947169970.Spec : Prop :=
  ∀ n, P2228588219947169970.a n = A052934 n

end A052934

/-! ## A052934.P546296796365790609

`(A060816(n+1)-A060816(n))*A011782(n)`
-/

namespace A052934.P546296796365790609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060816 (n + 1) - A060816 n) * A011782 n

end

end A052934.P546296796365790609

namespace A052934

/-- `(A060816(n+1)-A060816(n))*A011782(n)` -/
def P546296796365790609.Spec : Prop :=
  ∀ n, P546296796365790609.a n = A052934 n

end A052934

/-! ## A052934.P7175080183251781481

`5*a(A001223(n+1)%2)*A011782(n)*A140429(n)` with `a(0)=1`
-/

namespace A052934.P7175080183251781481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (Int.tmod (A001223 (n + 1)) 2).toNat * A011782 n * A140429 n

end

end A052934.P7175080183251781481

namespace A052934

/-- `5*a(A001223(n+1)%2)*A011782(n)*A140429(n)` -/
def P7175080183251781481.Spec : Prop :=
  ∀ n, P7175080183251781481.a n = A052934 n

end A052934

/-! ## A052934.P15602401782039076684

`A166023(2*(n+1))-A055846(n+1)`
-/

namespace A052934.P15602401782039076684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166023 (2 * (n + 1)) - A055846 (n + 1)

end

end A052934.P15602401782039076684

namespace A052934

/-- `A166023(2*(n+1))-A055846(n+1)` -/
def P15602401782039076684.Spec : Prop :=
  ∀ n, P15602401782039076684.a n = A052934 n

end A052934

/-!
# A052935: Expansion of (2-2*x-x^3)/((1-2*x)*(1-x^3)).

The programs for A052935, the canonical program `A052935.P6905085257828636658` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052935 has offset 0).

The definition of A052935 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2-2x-x^3)/(1-2x-x^3+2x^4))` (program `A052935.P6905085257828636658`, by `A052935.P6905085257828636658.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052935.P6905085257828636658

`ogf((2-2x-x^3)/(1-2x-x^3+2x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052935

/-- `ogf((2-2x-x^3)/(1-2x-x^3+2x^4))` -/
def P6905085257828636658.Spec : Prop :=
  ∀ n, P6905085257828636658.a n = A052935 n

theorem P6905085257828636658.correct : P6905085257828636658.Spec := by
  intro n
  simp only [A052935]

end A052935

/-! ## A052935.P5714824004227363695

`a(n-1)+a(n-2)+2*a(n-3)-1` with `a(0)=2, a(1)=2, a(2)=4`
-/

namespace A052935.P5714824004227363695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 4] fun n a =>
  a (n - 1) + a (n - 2) + 2 * a (n - 3) - 1

end

end A052935.P5714824004227363695

namespace A052935

/-- `a(n-1)+a(n-2)+2*a(n-3)-1` -/
def P5714824004227363695.Spec : Prop :=
  ∀ n, P5714824004227363695.a n = A052935 n

end A052935

/-! ## A052935.P8992550104117931089

`char[3*n]+2^n`
-/

namespace A052935.P8992550104117931089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 2 ^ n

end

end A052935.P8992550104117931089

namespace A052935

/-- `char[3*n]+2^n` -/
def P8992550104117931089.Spec : Prop :=
  ∀ n, (P8992550104117931089.a n : ℤ) = A052935 n

end A052935

/-! ## A052935.P14166563896120746425

`abs(1-(n²%3-A000079(n)))`
-/

namespace A052935.P14166563896120746425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (((n ^ 2 % 3 : ℕ) : ℤ) - A000079 n)|

end

end A052935.P14166563896120746425

namespace A052935

/-- `abs(1-(n²%3-A000079(n)))` -/
def P14166563896120746425.Spec : Prop :=
  ∀ n, P14166563896120746425.a n = A052935 n

end A052935

/-! ## A052935.P12309648136969491556

`∑[A010892(4*n)+ceil(2^(n-1))]`
-/

namespace A052935.P12309648136969491556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (4 * n) + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052935.P12309648136969491556

namespace A052935

/-- `∑[A010892(4*n)+ceil(2^(n-1))]` -/
def P12309648136969491556.Spec : Prop :=
  ∀ n, P12309648136969491556.a n = A052935 n

end A052935

/-! ## A052935.P7592896696292504675

`A228693(A047254(n+1))`
-/

namespace A052935.P7592896696292504675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 (A047254 (n + 1)).toNat

end

end A052935.P7592896696292504675

namespace A052935

/-- `A228693(A047254(n+1))` -/
def P7592896696292504675.Spec : Prop :=
  ∀ n, P7592896696292504675.a n = A052935 n

end A052935

/-! ## A052935.P12595731630484896313

`xor(A000051(n), A011655(n))`
-/

namespace A052935.P12595731630484896313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000051 n) (A011655 n)

end

end A052935.P12595731630484896313

namespace A052935

/-- `xor(A000051(n), A011655(n))` -/
def P12595731630484896313.Spec : Prop :=
  ∀ n, P12595731630484896313.a n = A052935 n

end A052935

/-! ## A052935.P375713739275650496

`xor(A079978(n), A171559(n))`
-/

namespace A052935.P375713739275650496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A079978 n) (A171559 n)

end

end A052935.P375713739275650496

namespace A052935

/-- `xor(A079978(n), A171559(n))` -/
def P375713739275650496.Spec : Prop :=
  ∀ n, P375713739275650496.a n = A052935 n

end A052935

/-! ## A052935.P7209855868387756638

`∑[A049347(n)+A011782(n)]`
-/

namespace A052935.P7209855868387756638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n + A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052935.P7209855868387756638

namespace A052935

/-- `∑[A049347(n)+A011782(n)]` -/
def P7209855868387756638.Spec : Prop :=
  ∀ n, P7209855868387756638.a n = A052935 n

end A052935

/-! ## A052935.P17746092562071540760

`∑[A011782(n)+A010892(4*n)]`
-/

namespace A052935.P17746092562071540760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A010892 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052935.P17746092562071540760

namespace A052935

/-- `∑[A011782(n)+A010892(4*n)]` -/
def P17746092562071540760.Spec : Prop :=
  ∀ n, P17746092562071540760.a n = A052935 n

end A052935

/-! ## A052935.P16879990237579971782

`xor((∑[2*n]+A000217(9*n)/9)%3, A000051(n))`
-/

namespace A052935.P16879990237579971782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (A000217 (9 * n) : ℚ) / 9)) 3) (A000051 n)

end

end A052935.P16879990237579971782

namespace A052935

/-- `xor((∑[2*n]+A000217(9*n)/9)%3, A000051(n))` -/
def P16879990237579971782.Spec : Prop :=
  ∀ n, P16879990237579971782.a n = A052935 n

end A052935

/-! ## A052935.P13580835031704487059

`xor((∑[2*n]+A000217(3*n)-n)%3, A000051(n))`
-/

namespace A052935.P13580835031704487059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A000217 (3 * n) - (n : ℤ))) 3) (A000051 n)

end

end A052935.P13580835031704487059

namespace A052935

/-- `xor((∑[2*n]+A000217(3*n)-n)%3, A000051(n))` -/
def P13580835031704487059.Spec : Prop :=
  ∀ n, P13580835031704487059.a n = A052935 n

end A052935

/-! ## A052935.P11770146474431341333

`Δ[or(2^n, ceil(n/3))]`
-/

namespace A052935.P11770146474431341333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) ⌈(n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052935.P11770146474431341333

namespace A052935

/-- `Δ[or(2^n, ceil(n/3))]` -/
def P11770146474431341333.Spec : Prop :=
  ∀ n, P11770146474431341333.a n = A052935 n

end A052935

/-! ## A052935.P4609357956248498330

`Δ[A000079(n)+ceil(n/3)]`
-/

namespace A052935.P4609357956248498330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + ⌈(n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052935.P4609357956248498330

namespace A052935

/-- `Δ[A000079(n)+ceil(n/3)]` -/
def P4609357956248498330.Spec : Prop :=
  ∀ n, P4609357956248498330.a n = A052935 n

end A052935

/-! ## A052935.P9635920674760745721

`Δ[∑[char[A016777(n)]]+2^n]`
-/

namespace A052935.P9635920674760745721
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A052935.P9635920674760745721

namespace A052935

/-- `Δ[∑[char[A016777(n)]]+2^n]` -/
def P9635920674760745721.Spec : Prop :=
  ∀ n, P9635920674760745721.a n = A052935 n

end A052935

/-! ## A052935.P4685327861620094200

`Δ[A086161(n+1)+A062709(n)]`
-/

namespace A052935.P4685327861620094200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (n + 1) + A062709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052935.P4685327861620094200

namespace A052935

/-- `Δ[A086161(n+1)+A062709(n)]` -/
def P4685327861620094200.Spec : Prop :=
  ∀ n, P4685327861620094200.a n = A052935 n

end A052935

/-! ## A052935.P2513914523739021248

`Δ[A168616(n)+A086161(n+1)]`
-/

namespace A052935.P2513914523739021248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168616 n + A086161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052935.P2513914523739021248

namespace A052935

/-- `Δ[A168616(n)+A086161(n+1)]` -/
def P2513914523739021248.Spec : Prop :=
  ∀ n, P2513914523739021248.a n = A052935 n

end A052935

/-! ## A052935.P5954840050751292758

`Δ[A002264(n+2)+A000079(n)]`
-/

namespace A052935.P5954840050751292758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (n + 2) + A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052935.P5954840050751292758

namespace A052935

/-- `Δ[A002264(n+2)+A000079(n)]` -/
def P5954840050751292758.Spec : Prop :=
  ∀ n, P5954840050751292758.a n = A052935 n

end A052935

/-! ## A052935.P17340549785702761086

`round((∑[A049347(n)+A000079(n)+1]-n)/2)`
-/

namespace A052935.P17340549785702761086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n + (A000079 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) : ℤ) : ℚ) / 2)

end

end A052935.P17340549785702761086

namespace A052935

/-- `round((∑[A049347(n)+A000079(n)+1]-n)/2)` -/
def P17340549785702761086.Spec : Prop :=
  ∀ n, P17340549785702761086.a n = A052935 n

end A052935

/-! ## A052935.P17774438162391574585

`ceil(sqrt(4^n+1-n%3))`
-/

namespace A052935.P17774438162391574585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((4 ^ n + 1 : ℤ) - ((n % 3 : ℕ) : ℤ) : ℝ)⌉

end

end A052935.P17774438162391574585

namespace A052935

/-- `ceil(sqrt(4^n+1-n%3))` -/
def P17774438162391574585.Spec : Prop :=
  ∀ n, P17774438162391574585.a n = A052935 n

end A052935

/-!
# A052936: Expansion of (1-x)*(1-2*x)/(1-5*x+5*x^2).

The programs for A052936, the canonical program `A052936.P6051842264916163521` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052936 has offset 0).

The definition of A052936 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x+2x^2)/(1-5x+5x^2))` (program `A052936.P6051842264916163521`, by `A052936.P6051842264916163521.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052936.P6051842264916163521

`ogf((1-3x+2x^2)/(1-5x+5x^2))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052936

/-- `ogf((1-3x+2x^2)/(1-5x+5x^2))` -/
def P6051842264916163521.Spec : Prop :=
  ∀ n, P6051842264916163521.a n = A052936 n

theorem P6051842264916163521.correct : P6051842264916163521.Spec := by
  intro n
  simp only [A052936]

end A052936

/-! ## A052936.P14840662549147806522

`5*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A052936.P14840662549147806522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  5 * (a (n - 1) - a (n - 2))

end

end A052936.P14840662549147806522

namespace A052936

/-- `5*(a(n-1)-a(n-2))` -/
def P14840662549147806522.Spec : Prop :=
  ∀ n, P14840662549147806522.a n = A052936 n

end A052936

/-! ## A052936.P17243071647576621735

`Δ[A206947(n)+A001906(n)]`
-/

namespace A052936.P17243071647576621735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206947 n + A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052936.P17243071647576621735

namespace A052936

/-- `Δ[A206947(n)+A001906(n)]` -/
def P17243071647576621735.Spec : Prop :=
  ∀ n, P17243071647576621735.a n = A052936 n

end A052936

/-! ## A052936.P6820129823988810722

`A088305(n)+Δ[A208736(n+1)]`
-/

namespace A052936.P6820129823988810722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 n + (f1 (n + 1) - f1 n)

end

end A052936.P6820129823988810722

namespace A052936

/-- `A088305(n)+Δ[A208736(n+1)]` -/
def P6820129823988810722.Spec : Prop :=
  ∀ n, P6820129823988810722.a n = A052936 n

end A052936

/-! ## A052936.P16697547394444010192

`Δ[A178381(A004273(n))+A057427(n)]`
-/

namespace A052936.P16697547394444010192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (A004273 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052936.P16697547394444010192

namespace A052936

/-- `Δ[A178381(A004273(n))+A057427(n)]` -/
def P16697547394444010192.Spec : Prop :=
  ∀ n, P16697547394444010192.a n = A052936 n

end A052936

/-! ## A052936.P10084847030981600510

`A081567(n)-(A206947(n)+A001906(n))`
-/

namespace A052936.P10084847030981600510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 n - (A206947 n + A001906 n)

end

end A052936.P10084847030981600510

namespace A052936

/-- `A081567(n)-(A206947(n)+A001906(n))` -/
def P10084847030981600510.Spec : Prop :=
  ∀ n, P10084847030981600510.a n = A052936 n

end A052936

/-! ## A052936.P14831193509251042159

`Δ[floor(A020876(n)/5)]`
-/

namespace A052936.P14831193509251042159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020876 n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052936.P14831193509251042159

namespace A052936

/-- `Δ[floor(A020876(n)/5)]` -/
def P14831193509251042159.Spec : Prop :=
  ∀ n, P14831193509251042159.a n = A052936 n

end A052936

/-! ## A052936.P5196003938947532676

`ceil(A081567(n+1)/5)`
-/

namespace A052936.P5196003938947532676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A081567 (n + 1) : ℚ) / 5⌉

end

end A052936.P5196003938947532676

namespace A052936

/-- `ceil(A081567(n+1)/5)` -/
def P5196003938947532676.Spec : Prop :=
  ∀ n, P5196003938947532676.a n = A052936 n

end A052936

/-! ## A052936.P633706329976820312

`2*A136775(n+1)-∑[A136775(n+1)]`
-/

namespace A052936.P633706329976820312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136775 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052936.P633706329976820312

namespace A052936

/-- `2*A136775(n+1)-∑[A136775(n+1)]` -/
def P633706329976820312.Spec : Prop :=
  ∀ n, P633706329976820312.a n = A052936 n

end A052936

/-! ## A052936.P16888202883491879560

`A214582(A132209(n))`
-/

namespace A052936.P16888202883491879560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214582 (A132209 n).toNat

end

end A052936.P16888202883491879560

namespace A052936

/-- `A214582(A132209(n))` -/
def P16888202883491879560.Spec : Prop :=
  ∀ n, P16888202883491879560.a n = A052936 n

end A052936

/-!
# A052937: Expansion of (2-3*x-x^2)/((1-x)*(1-2*x-x^2)).

The programs for A052937, the canonical program `A052937.P9796831318337354493` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052937 has offset 0).

The definition of A052937 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2-3x-x^2)/(1-3x+x^2+x^3))` (program `A052937.P9796831318337354493`, by `A052937.P9796831318337354493.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052937.P9796831318337354493

`ogf((2-3x-x^2)/(1-3x+x^2+x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052937

/-- `ogf((2-3x-x^2)/(1-3x+x^2+x^3))` -/
def P9796831318337354493.Spec : Prop :=
  ∀ n, P9796831318337354493.a n = A052937 n

theorem P9796831318337354493.correct : P9796831318337354493.Spec := by
  intro n
  simp only [A052937]

end A052937

/-! ## A052937.P3011131998201863016

`2*a(n-1)+a(n-2)-2` with `a(0)=2, a(1)=3`
-/

namespace A052937.P3011131998201863016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2

end

end A052937.P3011131998201863016

namespace A052937

/-- `2*a(n-1)+a(n-2)-2` -/
def P3011131998201863016.Spec : Prop :=
  ∀ n, P3011131998201863016.a n = A052937 n

end A052937

/-! ## A052937.P16637160800383818745

`A000129(n+1)+1`
-/

namespace A052937.P16637160800383818745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + 1

end

end A052937.P16637160800383818745

namespace A052937

/-- `A000129(n+1)+1` -/
def P16637160800383818745.Spec : Prop :=
  ∀ n, P16637160800383818745.a n = A052937 n

end A052937

/-! ## A052937.P7982577920753803086

`a(n-2)-2*(1-a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A052937.P7982577920753803086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) - 2 * (1 - a (n - 1))

end

end A052937.P7982577920753803086

namespace A052937

/-- `a(n-2)-2*(1-a(n-1))` -/
def P7982577920753803086.Spec : Prop :=
  ∀ n, P7982577920753803086.a n = A052937 n

end A052937

/-! ## A052937.P1565745250782336870

`a(n-1)-2+a(n-1)+a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A052937.P1565745250782336870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) - 2 + (a (n - 1) + a (n - 2))

end

end A052937.P1565745250782336870

namespace A052937

/-- `a(n-1)-2+a(n-1)+a(n-2)` -/
def P1565745250782336870.Spec : Prop :=
  ∀ n, P1565745250782336870.a n = A052937 n

end A052937

/-! ## A052937.P8022779717341635191

`a(n-1)-(2-a(n-1)-a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A052937.P8022779717341635191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) - (2 - a (n - 1) - a (n - 2))

end

end A052937.P8022779717341635191

namespace A052937

/-- `a(n-1)-(2-a(n-1)-a(n-2))` -/
def P8022779717341635191.Spec : Prop :=
  ∀ n, P8022779717341635191.a n = A052937 n

end A052937

/-! ## A052937.P1539430089290608842

`A174191(n+1)`
-/

namespace A052937.P1539430089290608842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 (n + 1)

end

end A052937.P1539430089290608842

namespace A052937

/-- `A174191(n+1)` -/
def P1539430089290608842.Spec : Prop :=
  ∀ n, P1539430089290608842.a n = A052937 n

end A052937

/-! ## A052937.P9235471231510898352

`xor(1, A114647(n))`
-/

namespace A052937.P9235471231510898352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A114647 n)

end

end A052937.P9235471231510898352

namespace A052937

/-- `xor(1, A114647(n))` -/
def P9235471231510898352.Spec : Prop :=
  ∀ n, P9235471231510898352.a n = A052937 n

end A052937

/-! ## A052937.P7135806713761465471

`abs(A077985(n))+1`
-/

namespace A052937.P7135806713761465471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077985 n| + 1

end

end A052937.P7135806713761465471

namespace A052937

/-- `abs(A077985(n))+1` -/
def P7135806713761465471.Spec : Prop :=
  ∀ n, P7135806713761465471.a n = A052937 n

end A052937

/-! ## A052937.P14727850207649631485

`∑[A001333(n)]+1`
-/

namespace A052937.P14727850207649631485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A052937.P14727850207649631485

namespace A052937

/-- `∑[A001333(n)]+1` -/
def P14727850207649631485.Spec : Prop :=
  ∀ n, P14727850207649631485.a n = A052937 n

end A052937

/-! ## A052937.P15935588094626857858

`A215928(n+1)+1`
-/

namespace A052937.P15935588094626857858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (n + 1) + 1

end

end A052937.P15935588094626857858

namespace A052937

/-- `A215928(n+1)+1` -/
def P15935588094626857858.Spec : Prop :=
  ∀ n, P15935588094626857858.a n = A052937 n

end A052937

/-! ## A052937.P1027904516637826738

`1-A176981(n+2)`
-/

namespace A052937.P1027904516637826738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A176981 (n + 2)

end

end A052937.P1027904516637826738

namespace A052937

/-- `1-A176981(n+2)` -/
def P1027904516637826738.Spec : Prop :=
  ∀ n, P1027904516637826738.a n = A052937 n

end A052937

/-! ## A052937.P11945289974102867055

`A209971(n+1)-n`
-/

namespace A052937.P11945289974102867055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209971 (n + 1) - (n : ℤ)

end

end A052937.P11945289974102867055

namespace A052937

/-- `A209971(n+1)-n` -/
def P11945289974102867055.Spec : Prop :=
  ∀ n, P11945289974102867055.a n = A052937 n

end A052937

/-! ## A052937.P11161622189420201138

`2*A307465(n)+n`
-/

namespace A052937.P11161622189420201138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307465 n + (n : ℤ)

end

end A052937.P11161622189420201138

namespace A052937

/-- `2*A307465(n)+n` -/
def P11161622189420201138.Spec : Prop :=
  ∀ n, P11161622189420201138.a n = A052937 n

end A052937

/-! ## A052937.P1303023856757862927

`2*A100131(n)-n`
-/

namespace A052937.P1303023856757862927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100131 n - (n : ℤ)

end

end A052937.P1303023856757862927

namespace A052937

/-- `2*A100131(n)-n` -/
def P1303023856757862927.Spec : Prop :=
  ∀ n, P1303023856757862927.a n = A052937 n

end A052937

/-! ## A052937.P6244613944280133133

`∑[abs(A123335(n))]+1`
-/

namespace A052937.P6244613944280133133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123335 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A052937.P6244613944280133133

namespace A052937

/-- `∑[abs(A123335(n))]+1` -/
def P6244613944280133133.Spec : Prop :=
  ∀ n, P6244613944280133133.a n = A052937 n

end A052937

/-! ## A052937.P10765891637497977243

`record[A174191(abs(1-n))]`
-/

namespace A052937.P10765891637497977243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052937.P10765891637497977243

namespace A052937

/-- `record[A174191(abs(1-n))]` -/
def P10765891637497977243.Spec : Prop :=
  ∀ n, P10765891637497977243.a n = A052937 n

end A052937

/-! ## A052937.P6303552553166752559

`∑[A293004(n)+1]+1`
-/

namespace A052937.P6303552553166752559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A052937.P6303552553166752559

namespace A052937

/-- `∑[A293004(n)+1]+1` -/
def P6303552553166752559.Spec : Prop :=
  ∀ n, P6303552553166752559.a n = A052937 n

end A052937

/-! ## A052937.P18403136579557895800

`∑[A119016(2*n)]+1`
-/

namespace A052937.P18403136579557895800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A052937.P18403136579557895800

namespace A052937

/-- `∑[A119016(2*n)]+1` -/
def P18403136579557895800.Spec : Prop :=
  ∀ n, P18403136579557895800.a n = A052937 n

end A052937

/-!
# A052938: Expansion of (1 + 2*x - 2*x^2)/( (1+x)*(1-x)^2 ).

The programs for A052938, the canonical program `A052938.P15385682642359846143` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052938 has offset 0).

The definition of A052938 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-2x^2)/(1-x-x^2+x^3))` (program `A052938.P15385682642359846143`, by `A052938.P15385682642359846143.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052938.P15385682642359846143

`ogf((1+2x-2x^2)/(1-x-x^2+x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052938

/-- `ogf((1+2x-2x^2)/(1-x-x^2+x^3))` -/
def P15385682642359846143.Spec : Prop :=
  ∀ n, P15385682642359846143.a n = A052938 n

theorem P15385682642359846143.correct : P15385682642359846143.Spec := by
  intro n
  simp only [A052938]

end A052938

/-! ## A052938.P9329630236337848891

`(2*n+7-3*(-1)^n)/4`
-/

namespace A052938.P9329630236337848891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) + (7 - 3 * (-1) ^ n) : ℚ) / 4

end

end A052938.P9329630236337848891

namespace A052938

/-- `(2*n+7-3*(-1)^n)/4` -/
def P9329630236337848891.Spec : Prop :=
  ∀ n, P9329630236337848891.a n = (A052938 n : ℚ)

end A052938

/-! ## A052938.P17146244666717471882

`A060762(n+1)-1`
-/

namespace A052938.P17146244666717471882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060762 (n + 1) - 1

end

end A052938.P17146244666717471882

namespace A052938

/-- `A060762(n+1)-1` -/
def P17146244666717471882.Spec : Prop :=
  ∀ n, P17146244666717471882.a n = A052938 n

end A052938

/-! ## A052938.P17346374168618834955

`A109613(n+2)-A084964(n)`
-/

namespace A052938.P17346374168618834955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n + 2) - A084964 n

end

end A052938.P17346374168618834955

namespace A052938

/-- `A109613(n+2)-A084964(n)` -/
def P17346374168618834955.Spec : Prop :=
  ∀ n, P17346374168618834955.a n = A052938 n

end A052938

/-! ## A052938.P3156502007619956031

`A035106(n+3)-A035106(n+2)`
-/

namespace A052938.P3156502007619956031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (n + 3) - A035106 (n + 2)

end

end A052938.P3156502007619956031

namespace A052938

/-- `A035106(n+3)-A035106(n+2)` -/
def P3156502007619956031.Spec : Prop :=
  ∀ n, P3156502007619956031.a n = A052938 n

end A052938

/-! ## A052938.P13911649186398485253

`1+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A052938.P13911649186398485253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  1 + a (n - 2)

end

end A052938.P13911649186398485253

namespace A052938

/-- `1+a(n-2)` -/
def P13911649186398485253.Spec : Prop :=
  ∀ n, (P13911649186398485253.a n : ℤ) = A052938 n

end A052938

/-! ## A052938.P6572079288807866111

`ceil(xor(1, n+3)/2)`
-/

namespace A052938.P6572079288807866111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (n + 3) : ℚ) / 2⌉

end

end A052938.P6572079288807866111

namespace A052938

/-- `ceil(xor(1, n+3)/2)` -/
def P6572079288807866111.Spec : Prop :=
  ∀ n, P6572079288807866111.a n = A052938 n

end A052938

/-! ## A052938.P2274929702320636343

`round(xor(1, n+3)/2)`
-/

namespace A052938.P2274929702320636343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (n + 3) : ℚ) / 2)

end

end A052938.P2274929702320636343

namespace A052938

/-- `round(xor(1, n+3)/2)` -/
def P2274929702320636343.Spec : Prop :=
  ∀ n, P2274929702320636343.a n = A052938 n

end A052938

/-! ## A052938.P8173488348674589410

`∑[gcd(2, n)]-xor(1, n)`
-/

namespace A052938.P8173488348674589410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.xor 1 n : ℤ)

end

end A052938.P8173488348674589410

namespace A052938

/-- `∑[gcd(2, n)]-xor(1, n)` -/
def P8173488348674589410.Spec : Prop :=
  ∀ n, P8173488348674589410.a n = A052938 n

end A052938

/-! ## A052938.P1943643100220326746

`round(cosh(log(xor(1, n+3))))`
-/

namespace A052938.P1943643100220326746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (Nat.xor 1 (n + 3) : ℝ)))

end

end A052938.P1943643100220326746

namespace A052938

/-- `round(cosh(log(xor(1, n+3))))` -/
def P1943643100220326746.Spec : Prop :=
  ∀ n, P1943643100220326746.a n = A052938 n

end A052938

/-! ## A052938.P6164741472442109146

`ceil(sinh(log(xor(1, n+3))))`
-/

namespace A052938.P6164741472442109146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (Real.log (Nat.xor 1 (n + 3) : ℝ))⌉

end

end A052938.P6164741472442109146

namespace A052938

/-- `ceil(sinh(log(xor(1, n+3))))` -/
def P6164741472442109146.Spec : Prop :=
  ∀ n, P6164741472442109146.a n = A052938 n

end A052938

/-! ## A052938.P5262034776949531629

`∑[1-a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A052938.P5262034776949531629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052938.P5262034776949531629

namespace A052938

/-- `∑[1-a(n-1)]` -/
def P5262034776949531629.Spec : Prop :=
  ∀ n, P5262034776949531629.a n = A052938 n

end A052938

/-! ## A052938.P3155948557088151172

`3-(a(n-1)-n)` with `a(0)=1`
-/

namespace A052938.P3155948557088151172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 - (a (n - 1) - (n : ℤ))

end

end A052938.P3155948557088151172

namespace A052938

/-- `3-(a(n-1)-n)` -/
def P3155948557088151172.Spec : Prop :=
  ∀ n, P3155948557088151172.a n = A052938 n

end A052938

/-! ## A052938.P6606265890796466253

`ceil(∑[n+1]/or(1, n))`
-/

namespace A052938.P6606265890796466253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.lor 1 n : ℚ)⌉

end

end A052938.P6606265890796466253

namespace A052938

/-- `ceil(∑[n+1]/or(1, n))` -/
def P6606265890796466253.Spec : Prop :=
  ∀ n, P6606265890796466253.a n = A052938 n

end A052938

/-! ## A052938.P6557657697344181652

`floor((xor(1, n+1)+3)/2)`
-/

namespace A052938.P6557657697344181652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 (n + 1) + 3 : ℚ) / 2⌋

end

end A052938.P6557657697344181652

namespace A052938

/-- `floor((xor(1, n+1)+3)/2)` -/
def P6557657697344181652.Spec : Prop :=
  ∀ n, P6557657697344181652.a n = A052938 n

end A052938

/-! ## A052938.P7625554351708798082

`∑[3*n%2-1]+2`
-/

namespace A052938.P7625554351708798082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * (n % 2) : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A052938.P7625554351708798082

namespace A052938

/-- `∑[3*n%2-1]+2` -/
def P7625554351708798082.Spec : Prop :=
  ∀ n, P7625554351708798082.a n = A052938 n

end A052938

/-! ## A052938.P5779547873582492135

`or(1, n+1)-floor(n/2)`
-/

namespace A052938.P5779547873582492135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n + 1) : ℤ) - ⌊(n : ℚ) / 2⌋

end

end A052938.P5779547873582492135

namespace A052938

/-- `or(1, n+1)-floor(n/2)` -/
def P5779547873582492135.Spec : Prop :=
  ∀ n, P5779547873582492135.a n = A052938 n

end A052938

/-! ## A052938.P8482529823193151059

`ceil(and(1, n)+(n+2)/2)`
-/

namespace A052938.P8482529823193151059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.land 1 n : ℚ) + (n + 2 : ℚ) / 2⌉

end

end A052938.P8482529823193151059

namespace A052938

/-- `ceil(and(1, n)+(n+2)/2)` -/
def P8482529823193151059.Spec : Prop :=
  ∀ n, P8482529823193151059.a n = A052938 n

end A052938

/-! ## A052938.P11149573145407662893

`floor(and(1, n)+(n+3)/2)`
-/

namespace A052938.P11149573145407662893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 1 n : ℚ) + (n + 3 : ℚ) / 2⌋

end

end A052938.P11149573145407662893

namespace A052938

/-- `floor(and(1, n)+(n+3)/2)` -/
def P11149573145407662893.Spec : Prop :=
  ∀ n, P11149573145407662893.a n = A052938 n

end A052938

/-! ## A052938.P10308568398882679491

`A030451(n+2)`
-/

namespace A052938.P10308568398882679491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (n + 2)

end

end A052938.P10308568398882679491

namespace A052938

/-- `A030451(n+2)` -/
def P10308568398882679491.Spec : Prop :=
  ∀ n, P10308568398882679491.a n = A052938 n

end A052938

/-!
# A052939: Expansion of (1-x)*(1+x)/(1-3*x-x^2+2*x^3).

The programs for A052939, the canonical program `A052939.P13017272327102901285` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052939 has offset 0).

The definition of A052939 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-3x-x^2+2x^3))` (program `A052939.P13017272327102901285`, by `A052939.P13017272327102901285.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052939.P13017272327102901285

`ogf((1-x^2)/(1-3x-x^2+2x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052939

/-- `ogf((1-x^2)/(1-3x-x^2+2x^3))` -/
def P13017272327102901285.Spec : Prop :=
  ∀ n, P13017272327102901285.a n = A052939 n

theorem P13017272327102901285.correct : P13017272327102901285.Spec := by
  intro n
  simp only [A052939]

end A052939

/-! ## A052939.P13340369242629346479

`3*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A052939.P13340369242629346479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  3 * a (n - 1) + a (n - 2) - 2 * a (n - 3)

end

end A052939.P13340369242629346479

namespace A052939

/-- `3*a(n-1)+a(n-2)-2*a(n-3)` -/
def P13340369242629346479.Spec : Prop :=
  ∀ n, P13340369242629346479.a n = A052939 n

end A052939

/-! ## A052939.P406462523887972991

`A019481(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A052939.P406462523887972991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019481 (n - 1) - a (n - 1)

end

end A052939.P406462523887972991

namespace A052939

/-- `A019481(n-1)-a(n-1)` -/
def P406462523887972991.Spec : Prop :=
  ∀ n, P406462523887972991.a n = A052939 n

end A052939

/-! ## A052939.P449316800642866547

`(A100059(n+1)+A052550(n))/2`
-/

namespace A052939.P449316800642866547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100059 (n + 1) + A052550 n : ℚ) / 2

end

end A052939.P449316800642866547

namespace A052939

/-- `(A100059(n+1)+A052550(n))/2` -/
def P449316800642866547.Spec : Prop :=
  ∀ n, P449316800642866547.a n = (A052939 n : ℚ)

end A052939

/-! ## A052939.P3093798701155475522

`(A019481(n)-A100058(n))/3`
-/

namespace A052939.P3093798701155475522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019481 n - A100058 n : ℚ) / 3

end

end A052939.P3093798701155475522

namespace A052939

/-- `(A019481(n)-A100058(n))/3` -/
def P3093798701155475522.Spec : Prop :=
  ∀ n, P3093798701155475522.a n = (A052939 n : ℚ)

end A052939

/-! ## A052939.P9045818321943525840

`(A052550(n)+Δ[A052911(n)])/2`
-/

namespace A052939.P9045818321943525840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052911 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052550 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A052939.P9045818321943525840

namespace A052939

/-- `(A052550(n)+Δ[A052911(n)])/2` -/
def P9045818321943525840.Spec : Prop :=
  ∀ n, P9045818321943525840.a n = (A052939 n : ℚ)

end A052939

/-! ## A052939.P172133461215243263

`A019481(n)-(A052911(n+1)+A052911(n))`
-/

namespace A052939.P172133461215243263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019481 n - (A052911 (n + 1) + A052911 n)

end

end A052939.P172133461215243263

namespace A052939

/-- `A019481(n)-(A052911(n+1)+A052911(n))` -/
def P172133461215243263.Spec : Prop :=
  ∀ n, P172133461215243263.a n = A052939 n

end A052939

/-! ## A052939.P9304106462944741162

`A052550(n+1)+A052550(n+2)-A019481(n)`
-/

namespace A052939.P9304106462944741162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052550 (n + 1) + (A052550 (n + 2) - A019481 n)

end

end A052939.P9304106462944741162

namespace A052939

/-- `A052550(n+1)+A052550(n+2)-A019481(n)` -/
def P9304106462944741162.Spec : Prop :=
  ∀ n, P9304106462944741162.a n = A052939 n

end A052939

/-!
# A052940: a(0) = 1; a(n) = 3*2^n - 1, for n > 0.

The programs for A052940, the canonical program `A052940.P7058618808239715527` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052940 has offset 0).

The definition of A052940 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052940.P7058618808239715527

`3*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=5, a(2)=11`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052940

/-- `3*a(n-1)-2*a(n-2)` -/
def P7058618808239715527.Spec : Prop :=
  ∀ n, P7058618808239715527.a n = A052940 n

theorem P7058618808239715527.correct : P7058618808239715527.Spec := by
  intro n
  simp only [A052940]

end A052940

/-! ## A052940.P16256051577198382789

`ogf((1+2x-2x^2)/(1-3x+2x^2))`
-/

namespace A052940.P16256051577198382789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -2] [1, -3, 2] n

end

end A052940.P16256051577198382789

namespace A052940

/-- `ogf((1+2x-2x^2)/(1-3x+2x^2))` -/
def P16256051577198382789.Spec : Prop :=
  ∀ n, P16256051577198382789.a n = A052940 n

end A052940

/-! ## A052940.P2570711643352150824

`or(1, 3*2^n-2)`
-/

namespace A052940.P2570711643352150824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((3 * 2 ^ n : ℤ) - 2)

end

end A052940.P2570711643352150824

namespace A052940

/-- `or(1, 3*2^n-2)` -/
def P2570711643352150824.Spec : Prop :=
  ∀ n, P2570711643352150824.a n = A052940 n

end A052940

/-! ## A052940.P2284939000336434108

`or(1, lcm(3, 2^n))-2`
-/

namespace A052940.P2284939000336434108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (Nat.lcm 3 (2 ^ n)) : ℤ) - 2

end

end A052940.P2284939000336434108

namespace A052940

/-- `or(1, lcm(3, 2^n))-2` -/
def P2284939000336434108.Spec : Prop :=
  ∀ n, P2284939000336434108.a n = A052940 n

end A052940

/-! ## A052940.P14349544749660601590

`2*a(n-1)+1` with `a(0)=1, a(1)=5`
-/

namespace A052940.P14349544749660601590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 * a (n - 1) + 1

end

end A052940.P14349544749660601590

namespace A052940

/-- `2*a(n-1)+1` -/
def P14349544749660601590.Spec : Prop :=
  ∀ n, (P14349544749660601590.a n : ℤ) = A052940 n

end A052940

/-! ## A052940.P4106378106833482525

`lcm(2, a(n-1))+1` with `a(0)=1, a(1)=5`
-/

namespace A052940.P4106378106833482525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  Nat.lcm 2 (a (n - 1)) + 1

end

end A052940.P4106378106833482525

namespace A052940

/-- `lcm(2, a(n-1))+1` -/
def P4106378106833482525.Spec : Prop :=
  ∀ n, (P4106378106833482525.a n : ℤ) = A052940 n

end A052940

/-! ## A052940.P652995745107445875

`xor(1, 2*a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A052940.P652995745107445875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  Nat.xor 1 (2 * a (n - 1))

end

end A052940.P652995745107445875

namespace A052940

/-- `xor(1, 2*a(n-1))` -/
def P652995745107445875.Spec : Prop :=
  ∀ n, (P652995745107445875.a n : ℤ) = A052940 n

end A052940

/-! ## A052940.P16099370763526070690

`∑[2*a(n-1)]` with `a(0)=1, a(1)=4, a(2)=6`
-/

namespace A052940.P16099370763526070690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 6] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052940.P16099370763526070690

namespace A052940

/-- `∑[2*a(n-1)]` -/
def P16099370763526070690.Spec : Prop :=
  ∀ n, (P16099370763526070690.a n : ℤ) = A052940 n

end A052940

/-! ## A052940.P18037907155661185289

`3-2*(1-a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A052940.P18037907155661185289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  3 - 2 * (1 - a (n - 1))

end

end A052940.P18037907155661185289

namespace A052940

/-- `3-2*(1-a(n-1))` -/
def P18037907155661185289.Spec : Prop :=
  ∀ n, P18037907155661185289.a n = A052940 n

end A052940

/-! ## A052940.P204697893845756202

`a(n-1)+1+a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A052940.P204697893845756202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + (1 + a (n - 1))

end

end A052940.P204697893845756202

namespace A052940

/-- `a(n-1)+1+a(n-1)` -/
def P204697893845756202.Spec : Prop :=
  ∀ n, (P204697893845756202.a n : ℤ) = A052940 n

end A052940

/-! ## A052940.P4561675001652188822

`2-floor(1-a(n-1)-a(n-1))` with `a(0)=1, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A052940.P4561675001652188822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 - (1 - a (n - 1) - a (n - 1))

end

end A052940.P4561675001652188822

namespace A052940

/-- `2-floor(1-a(n-1)-a(n-1))` -/
def P4561675001652188822.Spec : Prop :=
  ∀ n, P4561675001652188822.a n = A052940 n

end A052940

/-! ## A052940.P14844084135874082313

`3-(2%a(n-1)-a(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A052940.P14844084135874082313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 - (Int.tmod 2 (a (n - 1)) - a (n - 1) - a (n - 1))

end

end A052940.P14844084135874082313

namespace A052940

/-- `3-(2%a(n-1)-a(n-1)-a(n-1))` -/
def P14844084135874082313.Spec : Prop :=
  ∀ n, P14844084135874082313.a n = A052940 n

end A052940

/-! ## A052940.P12127314274889192049

`∑[A058764(n)]-1`
-/

namespace A052940.P12127314274889192049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A052940.P12127314274889192049

namespace A052940

/-- `∑[A058764(n)]-1` -/
def P12127314274889192049.Spec : Prop :=
  ∀ n, P12127314274889192049.a n = A052940 n

end A052940

/-! ## A052940.P11284683988440601253

`∑[A290114(n)]+n`
-/

namespace A052940.P11284683988440601253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A052940.P11284683988440601253

namespace A052940

/-- `∑[A290114(n)]+n` -/
def P11284683988440601253.Spec : Prop :=
  ∀ n, P11284683988440601253.a n = A052940 n

end A052940

/-! ## A052940.P7460496923405705569

`A111286(n+2)-1`
-/

namespace A052940.P7460496923405705569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111286 (n + 2) - 1

end

end A052940.P7460496923405705569

namespace A052940

/-- `A111286(n+2)-1` -/
def P7460496923405705569.Spec : Prop :=
  ∀ n, P7460496923405705569.a n = A052940 n

end A052940

/-! ## A052940.P4078961760256889949

`2*A055010(n)+1`
-/

namespace A052940.P4078961760256889949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055010 n + 1

end

end A052940.P4078961760256889949

namespace A052940

/-- `2*A055010(n)+1` -/
def P4078961760256889949.Spec : Prop :=
  ∀ n, P4078961760256889949.a n = A052940 n

end A052940

/-! ## A052940.P10913897213830719587

`2*A003945(n)-1`
-/

namespace A052940.P10913897213830719587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003945 n - 1

end

end A052940.P10913897213830719587

namespace A052940

/-- `2*A003945(n)-1` -/
def P10913897213830719587.Spec : Prop :=
  ∀ n, P10913897213830719587.a n = A052940 n

end A052940

/-! ## A052940.P11660359719366580851

`A385396(4*n+2)`
-/

namespace A052940.P11660359719366580851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385396 (4 * n + 2)

end

end A052940.P11660359719366580851

namespace A052940

/-- `A385396(4*n+2)` -/
def P11660359719366580851.Spec : Prop :=
  ∀ n, P11660359719366580851.a n = A052940 n

end A052940

/-! ## A052940.P10938517089021700902

`A146529(n+1)-7`
-/

namespace A052940.P10938517089021700902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146529 (n + 1) - 7

end

end A052940.P10938517089021700902

namespace A052940

/-- `A146529(n+1)-7` -/
def P10938517089021700902.Spec : Prop :=
  ∀ n, P10938517089021700902.a n = A052940 n

end A052940

/-! ## A052940.P14718987047515110520

`A133095(n+1)+n`
-/

namespace A052940.P14718987047515110520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133095 (n + 1) + (n : ℤ)

end

end A052940.P14718987047515110520

namespace A052940

/-- `A133095(n+1)+n` -/
def P14718987047515110520.Spec : Prop :=
  ∀ n, P14718987047515110520.a n = A052940 n

end A052940

/-!
# A052941: Expansion of (1-x)/(1 - 4*x + x^2 + x^3).

The programs for A052941, the canonical program `A052941.P10205586415082891971` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052941 has offset 0).

The definition of A052941 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-4x+x^2+x^3))` (program `A052941.P10205586415082891971`, by `A052941.P10205586415082891971.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052941.P10205586415082891971

`ogf((1-x)/(1-4x+x^2+x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052941

/-- `ogf((1-x)/(1-4x+x^2+x^3))` -/
def P10205586415082891971.Spec : Prop :=
  ∀ n, P10205586415082891971.a n = A052941 n

theorem P10205586415082891971.correct : P10205586415082891971.Spec := by
  intro n
  simp only [A052941]

end A052941

/-! ## A052941.P16408839296541795684

`4*a(n-1)-a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=11`
-/

namespace A052941.P16408839296541795684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 11] fun n a =>
  4 * a (n - 1) - a (n - 2) - a (n - 3)

end

end A052941.P16408839296541795684

namespace A052941

/-- `4*a(n-1)-a(n-2)-a(n-3)` -/
def P16408839296541795684.Spec : Prop :=
  ∀ n, P16408839296541795684.a n = A052941 n

end A052941

/-! ## A052941.P10565175514406814358

`Δ[Δ[A108146(n+1)]]`
-/

namespace A052941.P10565175514406814358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108146 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052941.P10565175514406814358

namespace A052941

/-- `Δ[Δ[A108146(n+1)]]` -/
def P10565175514406814358.Spec : Prop :=
  ∀ n, P10565175514406814358.a n = A052941 n

end A052941

/-! ## A052941.P7574454124447144350

`round(xor(1, a(n-1)²)/a(n-2))` with `a(0)=1, a(1)=3, a(2)=11`
-/

namespace A052941.P7574454124447144350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 11] fun n a =>
  SequenceMachineLib.roundAway ((Int.xor 1 (a (n - 1) ^ 2) : ℚ) / (a (n - 2) : ℚ))

end

end A052941.P7574454124447144350

namespace A052941

/-- `round(xor(1, a(n-1)²)/a(n-2))` -/
def P7574454124447144350.Spec : Prop :=
  ∀ n, P7574454124447144350.a n = A052941 n

end A052941

/-! ## A052941.P7088132566208405865

`A296221(n)-A152489(A047074(n))`
-/

namespace A052941.P7088132566208405865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296221 n - A152489 (A047074 n).toNat

end

end A052941.P7088132566208405865

namespace A052941

/-- `A296221(n)-A152489(A047074(n))` -/
def P7088132566208405865.Spec : Prop :=
  ∀ n, P7088132566208405865.a n = A052941 n

end A052941

/-!
# A052942: Expansion of 1/((1+x)*(1-2*x+2*x^2-2*x^3)).

The programs for A052942, the canonical program `A052942.P12836195327365290271` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052942 has offset 0).

The definition of A052942 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-2x^4))` (program `A052942.P12836195327365290271`, by `A052942.P12836195327365290271.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052942.P12836195327365290271

`ogf(1/(1-x-2x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052942

/-- `ogf(1/(1-x-2x^4))` -/
def P12836195327365290271.Spec : Prop :=
  ∀ n, P12836195327365290271.a n = A052942 n

theorem P12836195327365290271.correct : P12836195327365290271.Spec := by
  intro n
  simp only [A052942]

end A052942

/-! ## A052942.P4468374649836157266

`a(n-1)+2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A052942.P4468374649836157266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 1) + 2 * a (n - 4)

end

end A052942.P4468374649836157266

namespace A052942

/-- `a(n-1)+2*a(n-4)` -/
def P4468374649836157266.Spec : Prop :=
  ∀ n, (P4468374649836157266.a n : ℤ) = A052942 n

end A052942

/-! ## A052942.P8962021409602652315

`a(n-1)+lcm(2, a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A052942.P8962021409602652315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 1) + Nat.lcm 2 (a (n - 4))

end

end A052942.P8962021409602652315

namespace A052942

/-- `a(n-1)+lcm(2, a(n-4))` -/
def P8962021409602652315.Spec : Prop :=
  ∀ n, (P8962021409602652315.a n : ℤ) = A052942 n

end A052942

/-! ## A052942.P6924063952844157694

`a(n-4)+a(n-1)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A052942.P6924063952844157694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 4) + (a (n - 1) + a (n - 4))

end

end A052942.P6924063952844157694

namespace A052942

/-- `a(n-4)+a(n-1)+a(n-4)` -/
def P6924063952844157694.Spec : Prop :=
  ∀ n, (P6924063952844157694.a n : ℤ) = A052942 n

end A052942

/-! ## A052942.P5134690315487494966

`A078003(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A052942.P5134690315487494966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A078003 n + a (n - 2)

end

end A052942.P5134690315487494966

namespace A052942

/-- `A078003(n)+a(n-2)` -/
def P5134690315487494966.Spec : Prop :=
  ∀ n, P5134690315487494966.a n = A052942 n

end A052942

/-! ## A052942.P9078222354961205435

`abs(∑[A077993(n)])`
-/

namespace A052942.P9078222354961205435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A052942.P9078222354961205435

namespace A052942

/-- `abs(∑[A077993(n)])` -/
def P9078222354961205435.Spec : Prop :=
  ∀ n, P9078222354961205435.a n = A052942 n

end A052942

/-! ## A052942.P1485101051902360029

`A077943(n)-a(n-1)` with `a(0)=1`
-/

namespace A052942.P1485101051902360029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077943 n - a (n - 1)

end

end A052942.P1485101051902360029

namespace A052942

/-- `A077943(n)-a(n-1)` -/
def P1485101051902360029.Spec : Prop :=
  ∀ n, P1485101051902360029.a n = A052942 n

end A052942

/-! ## A052942.P8287676474686139602

`abs(∑[∑[A078003(n)]*A033999(n)])`
-/

namespace A052942.P8287676474686139602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078003 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A052942.P8287676474686139602

namespace A052942

/-- `abs(∑[∑[A078003(n)]*A033999(n)])` -/
def P8287676474686139602.Spec : Prop :=
  ∀ n, P8287676474686139602.a n = A052942 n

end A052942

/-! ## A052942.P18135159434518518965

`abs(∑[∑[A078071(n)]])`
-/

namespace A052942.P18135159434518518965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078071 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A052942.P18135159434518518965

namespace A052942

/-- `abs(∑[∑[A078071(n)]])` -/
def P18135159434518518965.Spec : Prop :=
  ∀ n, P18135159434518518965.a n = A052942 n

end A052942

/-! ## A052942.P9377920173546138903

`A193516(A212342(n+1))`
-/

namespace A052942.P9377920173546138903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193516 (A212342 (n + 1)).toNat

end

end A052942.P9377920173546138903

namespace A052942

/-- `A193516(A212342(n+1))` -/
def P9377920173546138903.Spec : Prop :=
  ∀ n, P9377920173546138903.a n = A052942 n

end A052942

/-! ## A052942.P9927324116161851885

`A193516(A347513(n+3))`
-/

namespace A052942.P9927324116161851885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193516 (A347513 (n + 3)).toNat

end

end A052942.P9927324116161851885

namespace A052942

/-- `A193516(A347513(n+3))` -/
def P9927324116161851885.Spec : Prop :=
  ∀ n, P9927324116161851885.a n = A052942 n

end A052942

/-! ## A052942.P9853826163663610330

`A193516(A347553(n+3))`
-/

namespace A052942.P9853826163663610330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193516 (A347553 (n + 3)).toNat

end

end A052942.P9853826163663610330

namespace A052942

/-- `A193516(A347553(n+3))` -/
def P9853826163663610330.Spec : Prop :=
  ∀ n, P9853826163663610330.a n = A052942 n

end A052942

/-! ## A052942.P2379166811578182228

`A193516(A027379(n)-n)`
-/

namespace A052942.P2379166811578182228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193516 (A027379 n - (n : ℤ)).toNat

end

end A052942.P2379166811578182228

namespace A052942

/-- `A193516(A027379(n)-n)` -/
def P2379166811578182228.Spec : Prop :=
  ∀ n, P2379166811578182228.a n = A052942 n

end A052942

/-!
# A052943: Expansion of (1-x^2)/(1-2*x^2-x^3+x^5).

The programs for A052943, the canonical program `A052943.P12583392427629253588` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052943 has offset 0).

The definition of A052943 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-2x^2-x^3+x^5))` (program `A052943.P12583392427629253588`, by `A052943.P12583392427629253588.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052943.P12583392427629253588

`ogf((1-x^2)/(1-2x^2-x^3+x^5))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052943

/-- `ogf((1-x^2)/(1-2x^2-x^3+x^5))` -/
def P12583392427629253588.Spec : Prop :=
  ∀ n, P12583392427629253588.a n = A052943 n

theorem P12583392427629253588.correct : P12583392427629253588.Spec := by
  intro n
  simp only [A052943]

end A052943

/-! ## A052943.P6273773616810303083

`2*a(n-2)+a(n-3)-a(n-5)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A052943.P6273773616810303083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1, 2] fun n a =>
  2 * a (n - 2) + a (n - 3) - a (n - 5)

end

end A052943.P6273773616810303083

namespace A052943

/-- `2*a(n-2)+a(n-3)-a(n-5)` -/
def P6273773616810303083.Spec : Prop :=
  ∀ n, P6273773616810303083.a n = A052943 n

end A052943

/-!
# A052944: a(n) = 2^n + n - 1.

The programs for A052944, the canonical program `A052944.P932172307700337683` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052944 has offset 0).

The definition of A052944 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+n-1` (program `A052944.P932172307700337683`, by `A052944.P932172307700337683.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052944.P932172307700337683

`2^n+n-1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052944

/-- `2^n+n-1` -/
def P932172307700337683.Spec : Prop :=
  ∀ n, P932172307700337683.a n = A052944 n

theorem P932172307700337683.correct : P932172307700337683.Spec := by
  intro n
  simp only [A052944]

end A052944

/-! ## A052944.P16651711574373458139

`abs(1-or(n, 2^n))`
-/

namespace A052944.P16651711574373458139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lor n (2 ^ n) : ℤ)|

end

end A052944.P16651711574373458139

namespace A052944

/-- `abs(1-or(n, 2^n))` -/
def P16651711574373458139.Spec : Prop :=
  ∀ n, P16651711574373458139.a n = A052944 n

end A052944

/-! ## A052944.P6058347508682757890

`abs(1-xor(n, 2^n))`
-/

namespace A052944.P6058347508682757890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.xor n (2 ^ n) : ℤ)|

end

end A052944.P6058347508682757890

namespace A052944

/-- `abs(1-xor(n, 2^n))` -/
def P6058347508682757890.Spec : Prop :=
  ∀ n, P6058347508682757890.a n = A052944 n

end A052944

/-! ## A052944.P17505648777180364004

`∑[ogf((2x-3x^2)/(1-3x+2x^2))]`
-/

namespace A052944.P17505648777180364004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -3] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052944.P17505648777180364004

namespace A052944

/-- `∑[ogf((2x-3x^2)/(1-3x+2x^2))]` -/
def P17505648777180364004.Spec : Prop :=
  ∀ n, P17505648777180364004.a n = A052944 n

end A052944

/-! ## A052944.P343815811943440287

`ogf((2x-3x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A052944.P343815811943440287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -3] [1, -4, 5, -2] n

end

end A052944.P343815811943440287

namespace A052944

/-- `ogf((2x-3x^2)/(1-4x+5x^2-2x^3))` -/
def P343815811943440287.Spec : Prop :=
  ∀ n, P343815811943440287.a n = A052944 n

end A052944

/-! ## A052944.P10578230251001997988

`∑[2*a(n-1)-1]` with `a(0)=0, a(1)=2`
-/

namespace A052944.P10578230251001997988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  2 * f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052944.P10578230251001997988

namespace A052944

/-- `∑[2*a(n-1)-1]` -/
def P10578230251001997988.Spec : Prop :=
  ∀ n, P10578230251001997988.a n = A052944 n

end A052944

/-! ## A052944.P4588345642796365415

`abs(2*a(n-1)-(n-3))` with `a(0)=0`
-/

namespace A052944.P4588345642796365415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |2 * a (n - 1) - ((n : ℤ) - 3)|

end

end A052944.P4588345642796365415

namespace A052944

/-- `abs(2*a(n-1)-(n-3))` -/
def P4588345642796365415.Spec : Prop :=
  ∀ n, P4588345642796365415.a n = A052944 n

end A052944

/-! ## A052944.P9875604612748735901

`floor(2*a(n-1)+3-n)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A052944.P9875604612748735901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + (3 - (n : ℤ))

end

end A052944.P9875604612748735901

namespace A052944

/-- `floor(2*a(n-1)+3-n)` -/
def P9875604612748735901.Spec : Prop :=
  ∀ n, P9875604612748735901.a n = A052944 n

theorem P9875604612748735901.correct : P9875604612748735901.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A052944, Nat.add_sub_cancel, A052944.P9875604612748735901.a, A052944.P932172307700337683.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A052944, Nat.add_sub_cancel, A052944.P9875604612748735901.a, A052944.P932172307700337683.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A052944

/-! ## A052944.P10988586314088751001

`ceil(2*a(n-1)-(n-3))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A052944.P10988586314088751001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) - ((n : ℤ) - 3)

end

end A052944.P10988586314088751001

namespace A052944

/-- `ceil(2*a(n-1)-(n-3))` -/
def P10988586314088751001.Spec : Prop :=
  ∀ n, P10988586314088751001.a n = A052944 n

theorem P10988586314088751001.correct : P10988586314088751001.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A052944, Nat.add_sub_cancel, A052944.P10988586314088751001.a, A052944.P932172307700337683.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A052944, Nat.add_sub_cancel, A052944.P10988586314088751001.a, A052944.P932172307700337683.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A052944

/-! ## A052944.P6479101849183794756

`round(2*a(n-1)-(n-3))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A052944.P6479101849183794756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) - ((n : ℤ) - 3)

end

end A052944.P6479101849183794756

namespace A052944

/-- `round(2*a(n-1)-(n-3))` -/
def P6479101849183794756.Spec : Prop :=
  ∀ n, P6479101849183794756.a n = A052944 n

theorem P6479101849183794756.correct : P6479101849183794756.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A052944, Nat.add_sub_cancel, A052944.P6479101849183794756.a, A052944.P932172307700337683.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A052944, Nat.add_sub_cancel, A052944.P6479101849183794756.a, A052944.P932172307700337683.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A052944

/-! ## A052944.P13906368934739288483

`2*(a(n-1)+(3-n)/2)` with `a(0)=0`
-/

namespace A052944.P13906368934739288483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  2 * (a (n - 1) + (3 - (n : ℤ) : ℚ) / 2)

end

end A052944.P13906368934739288483

namespace A052944

/-- `2*(a(n-1)+(3-n)/2)` -/
def P13906368934739288483.Spec : Prop :=
  ∀ n, P13906368934739288483.a n = (A052944 n : ℚ)

theorem P13906368934739288483.correct : P13906368934739288483.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A052944, Nat.add_sub_cancel, A052944.P13906368934739288483.a, A052944.P932172307700337683.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A052944, Nat.add_sub_cancel, A052944.P13906368934739288483.a, A052944.P932172307700337683.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A052944

/-! ## A052944.P17794746081468104608

`xor(2^n, (2*n+1)%(n+2))`
-/

namespace A052944.P17794746081468104608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 ^ n) ((2 * n + 1) % (n + 2))

end

end A052944.P17794746081468104608

namespace A052944

/-- `xor(2^n, (2*n+1)%(n+2))` -/
def P17794746081468104608.Spec : Prop :=
  ∀ n, (P17794746081468104608.a n : ℤ) = A052944 n

end A052944

/-! ## A052944.P506469397762406104

`floor(2*(a(n-1)-(n-3)/2))` with `a(0)=0`
-/

namespace A052944.P506469397762406104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊2 * ((a (n - 1) : ℚ) - ((n : ℤ) - 3 : ℚ) / 2)⌋

end

end A052944.P506469397762406104

namespace A052944

/-- `floor(2*(a(n-1)-(n-3)/2))` -/
def P506469397762406104.Spec : Prop :=
  ∀ n, P506469397762406104.a n = A052944 n

end A052944

/-! ## A052944.P18209446441391005301

`∑[a(n-1)+a(n-1)-1]` with `a(0)=0, a(1)=2`
-/

namespace A052944.P18209446441391005301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052944.P18209446441391005301

namespace A052944

/-- `∑[a(n-1)+a(n-1)-1]` -/
def P18209446441391005301.Spec : Prop :=
  ∀ n, P18209446441391005301.a n = A052944 n

end A052944

/-! ## A052944.P11871197422576269581

`∑[a(n-1)-(1-a(n-1))]` with `a(0)=0, a(1)=2`
-/

namespace A052944.P11871197422576269581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052944.P11871197422576269581

namespace A052944

/-- `∑[a(n-1)-(1-a(n-1))]` -/
def P11871197422576269581.Spec : Prop :=
  ∀ n, P11871197422576269581.a n = A052944 n

end A052944

/-! ## A052944.P3258631731180715660

`floor(n-(2*(n-a(n-1))-3))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A052944.P3258631731180715660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - (2 * ((n : ℤ) - a (n - 1)) - 3)

end

end A052944.P3258631731180715660

namespace A052944

/-- `floor(n-(2*(n-a(n-1))-3))` -/
def P3258631731180715660.Spec : Prop :=
  ∀ n, P3258631731180715660.a n = A052944 n

theorem P3258631731180715660.correct : P3258631731180715660.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A052944, Nat.add_sub_cancel, A052944.P3258631731180715660.a, A052944.P932172307700337683.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A052944, Nat.add_sub_cancel, A052944.P3258631731180715660.a, A052944.P932172307700337683.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A052944

/-! ## A052944.P13381184221323357276

`2*(1-((n-1)/2-a(n-1)))` with `a(0)=0`
-/

namespace A052944.P13381184221323357276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  2 * (1 - (((n : ℤ) - 1 : ℚ) / 2 - a (n - 1)))

end

end A052944.P13381184221323357276

namespace A052944

/-- `2*(1-((n-1)/2-a(n-1)))` -/
def P13381184221323357276.Spec : Prop :=
  ∀ n, P13381184221323357276.a n = (A052944 n : ℚ)

theorem P13381184221323357276.correct : P13381184221323357276.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A052944, Nat.add_sub_cancel, A052944.P13381184221323357276.a, A052944.P932172307700337683.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A052944, Nat.add_sub_cancel, A052944.P13381184221323357276.a, A052944.P932172307700337683.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A052944

/-! ## A052944.P14704452154824626118

`or(2*a(n-1)-(n-3), n-1)` with `a(0)=0`
-/

namespace A052944.P14704452154824626118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (2 * a (n - 1) - ((n : ℤ) - 3)) ((n : ℤ) - 1)

end

end A052944.P14704452154824626118

namespace A052944

/-- `or(2*a(n-1)-(n-3), n-1)` -/
def P14704452154824626118.Spec : Prop :=
  ∀ n, P14704452154824626118.a n = A052944 n

end A052944

/-! ## A052944.P12249159700151991061

`floor(a(n-1)+a(n-1)+3-n)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A052944.P12249159700151991061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (a (n - 1) + (3 - (n : ℤ)))

end

end A052944.P12249159700151991061

namespace A052944

/-- `floor(a(n-1)+a(n-1)+3-n)` -/
def P12249159700151991061.Spec : Prop :=
  ∀ n, P12249159700151991061.a n = A052944 n

theorem P12249159700151991061.correct : P12249159700151991061.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A052944, Nat.add_sub_cancel, A052944.P12249159700151991061.a, A052944.P932172307700337683.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A052944, Nat.add_sub_cancel, A052944.P12249159700151991061.a, A052944.P932172307700337683.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A052944

/-!
# A052945: Number of compositions of n when each odd part can be of two kinds.

The programs for A052945, the canonical program `A052945.P3457878619843099141` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052945 has offset 0).

The definition of A052945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052945.P3457878619843099141

`2*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052945

/-- `2*(a(n-1)+a(n-2))` -/
def P3457878619843099141.Spec : Prop :=
  ∀ n, (P3457878619843099141.a n : ℤ) = A052945 n

theorem P3457878619843099141.correct : P3457878619843099141.Spec := by
  intro n
  simp only [A052945]

end A052945

/-! ## A052945.P8787739445361921492

`ogf((-1+x^2)/(-1+2x+2x^2))`
-/

namespace A052945.P8787739445361921492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, -2, -2] n

end

end A052945.P8787739445361921492

namespace A052945

/-- `ogf((-1+x^2)/(-1+2x+2x^2))` -/
def P8787739445361921492.Spec : Prop :=
  ∀ n, P8787739445361921492.a n = A052945 n

end A052945

/-! ## A052945.P18311103371038989925

`round((sqrt(3)+1)*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A052945.P18311103371038989925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) + 1) * (a (n - 1) : ℝ))

end

end A052945.P18311103371038989925

namespace A052945

/-- `round((sqrt(3)+1)*a(n-1))` -/
def P18311103371038989925.Spec : Prop :=
  ∀ n, P18311103371038989925.a n = A052945 n

end A052945

/-! ## A052945.P7299552344653189216

`2*(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=2, a(2)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A052945.P7299552344653189216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  2 * (a (n - 1) - (-a (n - 2)))

end

end A052945.P7299552344653189216

namespace A052945

/-- `2*(a(n-1)-ceil(-a(n-2)))` -/
def P7299552344653189216.Spec : Prop :=
  ∀ n, P7299552344653189216.a n = A052945 n

end A052945

/-! ## A052945.P4125490290616016926

`3*a(n-1)-a(n-1)%a(n-2)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A052945.P4125490290616016926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  3 * a (n - 1) - Int.tmod (a (n - 1)) (a (n - 2))

end

end A052945.P4125490290616016926

namespace A052945

/-- `3*a(n-1)-a(n-1)%a(n-2)` -/
def P4125490290616016926.Spec : Prop :=
  ∀ n, P4125490290616016926.a n = A052945 n

end A052945

/-! ## A052945.P6643094217185136916

`a(n-1)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A052945.P6643094217185136916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A052945.P6643094217185136916

namespace A052945

/-- `a(n-1)+a(n-2)+a(n-1)+a(n-2)` -/
def P6643094217185136916.Spec : Prop :=
  ∀ n, (P6643094217185136916.a n : ℤ) = A052945 n

theorem P6643094217185136916.correct : P6643094217185136916.Spec := by
  intro n
  simp only [A052945, Nat.add_sub_cancel, A052945.P6643094217185136916.a, A052945.P3457878619843099141.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A052945

/-! ## A052945.P12845560210086093574

`A121907(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A052945.P12845560210086093574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A121907 (n - 1) + a (n - 1)

end

end A052945.P12845560210086093574

namespace A052945

/-- `A121907(n-1)+a(n-1)` -/
def P12845560210086093574.Spec : Prop :=
  ∀ n, P12845560210086093574.a n = A052945 n

end A052945

/-! ## A052945.P13624488736404936266

`A155020(n)+A002605(n)`
-/

namespace A052945.P13624488736404936266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155020 n + A002605 n

end

end A052945.P13624488736404936266

namespace A052945

/-- `A155020(n)+A002605(n)` -/
def P13624488736404936266.Spec : Prop :=
  ∀ n, P13624488736404936266.a n = A052945 n

end A052945

/-! ## A052945.P9031325355356400488

`A000007(n)+Δ[A155020(n)]`
-/

namespace A052945.P9031325355356400488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A052945.P9031325355356400488

namespace A052945

/-- `A000007(n)+Δ[A155020(n)]` -/
def P9031325355356400488.Spec : Prop :=
  ∀ n, P9031325355356400488.a n = A052945 n

end A052945

/-! ## A052945.P4149540037539078404

`A094297(n+1)-A131577(n)`
-/

namespace A052945.P4149540037539078404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094297 (n + 1) - A131577 n

end

end A052945.P4149540037539078404

namespace A052945

/-- `A094297(n+1)-A131577(n)` -/
def P4149540037539078404.Spec : Prop :=
  ∀ n, P4149540037539078404.a n = A052945 n

end A052945

/-! ## A052945.P11526497102016075155

`A152035(n)+A293007(n)/2`
-/

namespace A052945.P11526497102016075155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152035 n : ℚ) + (A293007 n : ℚ) / 2

end

end A052945.P11526497102016075155

namespace A052945

/-- `A152035(n)+A293007(n)/2` -/
def P11526497102016075155.Spec : Prop :=
  ∀ n, P11526497102016075155.a n = (A052945 n : ℚ)

end A052945

/-! ## A052945.P5377218552797615530

`A002605(abs(1-n))+Δ[A052948(n)]`
-/

namespace A052945.P5377218552797615530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 |1 - (n : ℤ)|.toNat + (f1 (n + 1) - f1 n)

end

end A052945.P5377218552797615530

namespace A052945

/-- `A002605(abs(1-n))+Δ[A052948(n)]` -/
def P5377218552797615530.Spec : Prop :=
  ∀ n, P5377218552797615530.a n = A052945 n

end A052945

/-! ## A052945.P6145513351290215008

`A002605(n)+ceil(∑[A026150(n)/2])`
-/

namespace A052945.P6145513351290215008
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026150 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n + ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A052945.P6145513351290215008

namespace A052945

/-- `A002605(n)+ceil(∑[A026150(n)/2])` -/
def P6145513351290215008.Spec : Prop :=
  ∀ n, P6145513351290215008.a n = A052945 n

end A052945

/-! ## A052945.P18196656369621031566

`A011782(n)+Δ[A155020(n)-A011782(n)]`
-/

namespace A052945.P18196656369621031566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155020 n - A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (f1 (n + 1) - f1 n)

end

end A052945.P18196656369621031566

namespace A052945

/-- `A011782(n)+Δ[A155020(n)-A011782(n)]` -/
def P18196656369621031566.Spec : Prop :=
  ∀ n, P18196656369621031566.a n = A052945 n

end A052945

/-! ## A052945.P6903048485428937863

`A002605(n+1)-A002605(A045991(n)%(n+1))`
-/

namespace A052945.P6903048485428937863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (n + 1) - A002605 (Int.tmod (A045991 n) (n + 1 : ℤ)).toNat

end

end A052945.P6903048485428937863

namespace A052945

/-- `A002605(n+1)-A002605(A045991(n)%(n+1))` -/
def P6903048485428937863.Spec : Prop :=
  ∀ n, P6903048485428937863.a n = A052945 n

end A052945

/-! ## A052945.P16594305452612341580

`ceil(A026150(n+1)/2)`
-/

namespace A052945.P16594305452612341580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026150 (n + 1) : ℚ) / 2⌉

end

end A052945.P16594305452612341580

namespace A052945

/-- `ceil(A026150(n+1)/2)` -/
def P16594305452612341580.Spec : Prop :=
  ∀ n, P16594305452612341580.a n = A052945 n

end A052945

/-! ## A052945.P13482969023844837027

`Δ[∑[lcm(2, A026150(n))]/2]`
-/

namespace A052945.P13482969023844837027
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A026150 n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052945.P13482969023844837027

namespace A052945

/-- `Δ[∑[lcm(2, A026150(n))]/2]` -/
def P13482969023844837027.Spec : Prop :=
  ∀ n, P13482969023844837027.a n = (A052945 n : ℚ)

end A052945

/-! ## A052945.P8964617141153488165

`Δ[A155020(n)%A028859(n)]`
-/

namespace A052945.P8964617141153488165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155020 n) (A028859 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052945.P8964617141153488165

namespace A052945

/-- `Δ[A155020(n)%A028859(n)]` -/
def P8964617141153488165.Spec : Prop :=
  ∀ n, P8964617141153488165.a n = A052945 n

end A052945

/-!
# A052946: Expansion of (1-x)^2/(1-3*x+2*x^3-x^4).

The programs for A052946, the canonical program `A052946.P12986880603829872869` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052946 has offset 0).

The definition of A052946 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+x^2)/(1-3x+2x^3-x^4))` (program `A052946.P12986880603829872869`, by `A052946.P12986880603829872869.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052946.P12986880603829872869

`ogf((1-2x+x^2)/(1-3x+2x^3-x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052946

/-- `ogf((1-2x+x^2)/(1-3x+2x^3-x^4))` -/
def P12986880603829872869.Spec : Prop :=
  ∀ n, P12986880603829872869.a n = A052946 n

theorem P12986880603829872869.correct : P12986880603829872869.Spec := by
  intro n
  simp only [A052946]

end A052946

/-! ## A052946.P12322653000443997366

`3*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=10`
-/

namespace A052946.P12322653000443997366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 10] fun n a =>
  3 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A052946.P12322653000443997366

namespace A052946

/-- `3*a(n-1)-2*a(n-3)+a(n-4)` -/
def P12322653000443997366.Spec : Prop :=
  ∀ n, P12322653000443997366.a n = A052946 n

end A052946

/-! ## A052946.P11524389278918456153

`A187185(A124706(n))-n`
-/

namespace A052946.P11524389278918456153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (A124706 n).toNat - (n : ℤ)

end

end A052946.P11524389278918456153

namespace A052946

/-- `A187185(A124706(n))-n` -/
def P11524389278918456153.Spec : Prop :=
  ∀ n, P11524389278918456153.a n = A052946 n

end A052946

/-! ## A052946.P2143197155115688038

`A260734(A237869(n+2)+A215404(n+1))`
-/

namespace A052946.P2143197155115688038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (A237869 (n + 2) + A215404 (n + 1)).toNat

end

end A052946.P2143197155115688038

namespace A052946

/-- `A260734(A237869(n+2)+A215404(n+1))` -/
def P2143197155115688038.Spec : Prop :=
  ∀ n, P2143197155115688038.a n = A052946 n

end A052946

/-!
# A052947: Expansion of 1/(1-x^2-2*x^3).

The programs for A052947, the canonical program `A052947.P463279837859997399` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052947 has offset 0).

The definition of A052947 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-2x^3))` (program `A052947.P463279837859997399`, by `A052947.P463279837859997399.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052947.P463279837859997399

`ogf(1/(1-x^2-2x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052947

/-- `ogf(1/(1-x^2-2x^3))` -/
def P463279837859997399.Spec : Prop :=
  ∀ n, P463279837859997399.a n = A052947 n

theorem P463279837859997399.correct : P463279837859997399.Spec := by
  intro n
  simp only [A052947]

end A052947

/-! ## A052947.P12983132526005843930

`a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A052947.P12983132526005843930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 2) + 2 * a (n - 3)

end

end A052947.P12983132526005843930

namespace A052947

/-- `a(n-2)+2*a(n-3)` -/
def P12983132526005843930.Spec : Prop :=
  ∀ n, (P12983132526005843930.a n : ℤ) = A052947 n

end A052947

/-! ## A052947.P10578761582413714266

`a(n-3)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A052947.P10578761582413714266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 3) + (a (n - 2) + a (n - 3))

end

end A052947.P10578761582413714266

namespace A052947

/-- `a(n-3)+a(n-2)+a(n-3)` -/
def P10578761582413714266.Spec : Prop :=
  ∀ n, (P10578761582413714266.a n : ℤ) = A052947 n

end A052947

/-! ## A052947.P14701955824163039009

`3*a(n-3)-(a(n-3)-a(n-2))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A052947.P14701955824163039009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  3 * a (n - 3) - (a (n - 3) - a (n - 2))

end

end A052947.P14701955824163039009

namespace A052947

/-- `3*a(n-3)-(a(n-3)-a(n-2))` -/
def P14701955824163039009.Spec : Prop :=
  ∀ n, P14701955824163039009.a n = A052947 n

end A052947

/-! ## A052947.P12053146526100771407

`∑[A078026(n)]`
-/

namespace A052947.P12053146526100771407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052947.P12053146526100771407

namespace A052947

/-- `∑[A078026(n)]` -/
def P12053146526100771407.Spec : Prop :=
  ∀ n, P12053146526100771407.a n = A052947 n

end A052947

/-! ## A052947.P12027688055108995085

`A159287(n+2)`
-/

namespace A052947.P12027688055108995085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159287 (n + 2)

end

end A052947.P12027688055108995085

namespace A052947

/-- `A159287(n+2)` -/
def P12027688055108995085.Spec : Prop :=
  ∀ n, P12027688055108995085.a n = A052947 n

end A052947

/-! ## A052947.P11692703659258741291

`∑[∑[A159286(n)]]`
-/

namespace A052947.P11692703659258741291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159286 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052947.P11692703659258741291

namespace A052947

/-- `∑[∑[A159286(n)]]` -/
def P11692703659258741291.Spec : Prop :=
  ∀ n, P11692703659258741291.a n = A052947 n

end A052947

/-! ## A052947.P14627249336785330479

`A118831(n+3)+A107850(n+1)`
-/

namespace A052947.P14627249336785330479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118831 (n + 3) + A107850 (n + 1)

end

end A052947.P14627249336785330479

namespace A052947

/-- `A118831(n+3)+A107850(n+1)` -/
def P14627249336785330479.Spec : Prop :=
  ∀ n, P14627249336785330479.a n = A052947 n

end A052947

/-! ## A052947.P17709960221492437747

`A078026(n)-(A159287(n)-A159284(n))`
-/

namespace A052947.P17709960221492437747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078026 n - (A159287 n - A159284 n)

end

end A052947.P17709960221492437747

namespace A052947

/-- `A078026(n)-(A159287(n)-A159284(n))` -/
def P17709960221492437747.Spec : Prop :=
  ∀ n, P17709960221492437747.a n = A052947 n

end A052947

/-! ## A052947.P2657709630302961801

`abs(∑[A078028(n)])`
-/

namespace A052947.P2657709630302961801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A052947.P2657709630302961801

namespace A052947

/-- `abs(∑[A078028(n)])` -/
def P2657709630302961801.Spec : Prop :=
  ∀ n, P2657709630302961801.a n = A052947 n

end A052947

/-! ## A052947.P6036487479201141343

`A159284(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A052947.P6036487479201141343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A159284 (n + 1) - a (n - 1)

end

end A052947.P6036487479201141343

namespace A052947

/-- `A159284(n+1)-a(n-1)` -/
def P6036487479201141343.Spec : Prop :=
  ∀ n, P6036487479201141343.a n = A052947 n

end A052947

/-! ## A052947.P14818386598010179262

`A159288(n)-A159284(n)`
-/

namespace A052947.P14818386598010179262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159288 n - A159284 n

end

end A052947.P14818386598010179262

namespace A052947

/-- `A159288(n)-A159284(n)` -/
def P14818386598010179262.Spec : Prop :=
  ∀ n, P14818386598010179262.a n = A052947 n

end A052947

/-! ## A052947.P11226537202558298516

`Δ[A077882(n)]`
-/

namespace A052947.P11226537202558298516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052947.P11226537202558298516

namespace A052947

/-- `Δ[A077882(n)]` -/
def P11226537202558298516.Spec : Prop :=
  ∀ n, P11226537202558298516.a n = A052947 n

end A052947

/-! ## A052947.P12472939344784113259

`A159285(n)-3*a(n-1)` with `a(0)=1`
-/

namespace A052947.P12472939344784113259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A159285 n - 3 * a (n - 1)

end

end A052947.P12472939344784113259

namespace A052947

/-- `A159285(n)-3*a(n-1)` -/
def P12472939344784113259.Spec : Prop :=
  ∀ n, P12472939344784113259.a n = A052947 n

end A052947

/-! ## A052947.P6415278485008753396

`A077882(n+1)-A077882(n)`
-/

namespace A052947.P6415278485008753396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077882 (n + 1) - A077882 n

end

end A052947.P6415278485008753396

namespace A052947

/-- `A077882(n+1)-A077882(n)` -/
def P6415278485008753396.Spec : Prop :=
  ∀ n, P6415278485008753396.a n = A052947 n

end A052947

/-! ## A052947.P12473400432024249807

`A159285(n)+A159286(n)-A159288(n)`
-/

namespace A052947.P12473400432024249807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159285 n + (A159286 n - A159288 n)

end

end A052947.P12473400432024249807

namespace A052947

/-- `A159285(n)+A159286(n)-A159288(n)` -/
def P12473400432024249807.Spec : Prop :=
  ∀ n, P12473400432024249807.a n = A052947 n

end A052947

/-! ## A052947.P9499980000859154929

`A107852(n+1)+A014017(n)-A107849(n)`
-/

namespace A052947.P9499980000859154929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107852 (n + 1) + (A014017 n - A107849 n)

end

end A052947.P9499980000859154929

namespace A052947

/-- `A107852(n+1)+A014017(n)-A107849(n)` -/
def P9499980000859154929.Spec : Prop :=
  ∀ n, P9499980000859154929.a n = A052947 n

end A052947

/-! ## A052947.P11270478119054751226

`A014017(n)+A107849(n)-A107853(n+1)`
-/

namespace A052947.P11270478119054751226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 n + (A107849 n - A107853 (n + 1))

end

end A052947.P11270478119054751226

namespace A052947

/-- `A014017(n)+A107849(n)-A107853(n+1)` -/
def P11270478119054751226.Spec : Prop :=
  ∀ n, P11270478119054751226.a n = A052947 n

end A052947

/-! ## A052947.P1102762155627561229

`A159288(n)+A159288(n)-A159288(n+1)`
-/

namespace A052947.P1102762155627561229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159288 n + (A159288 n - A159288 (n + 1))

end

end A052947.P1102762155627561229

namespace A052947

/-- `A159288(n)+A159288(n)-A159288(n+1)` -/
def P1102762155627561229.Spec : Prop :=
  ∀ n, P1102762155627561229.a n = A052947 n

end A052947

/-! ## A052947.P9480776158839481553

`A239851(n+1)-A159288(n+1)`
-/

namespace A052947.P9480776158839481553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239851 (n + 1) - A159288 (n + 1)

end

end A052947.P9480776158839481553

namespace A052947

/-- `A239851(n+1)-A159288(n+1)` -/
def P9480776158839481553.Spec : Prop :=
  ∀ n, P9480776158839481553.a n = A052947 n

end A052947

/-!
# A052948: Expansion of g.f.: (1-2*x)/(1-3*x+2*x^3).

The programs for A052948, the canonical program `A052948.P9538583579706595128` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052948 has offset 0).

The definition of A052948 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x)/(1-3x+2x^3))` (program `A052948.P9538583579706595128`, by `A052948.P9538583579706595128.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052948.P9538583579706595128

`ogf((1-2x)/(1-3x+2x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052948

/-- `ogf((1-2x)/(1-3x+2x^3))` -/
def P9538583579706595128.Spec : Prop :=
  ∀ n, P9538583579706595128.a n = A052948 n

theorem P9538583579706595128.correct : P9538583579706595128.Spec := by
  intro n
  simp only [A052948]

end A052948

/-! ## A052948.P17827999622045419821

`3*a(n-1)-2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A052948.P17827999622045419821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  3 * a (n - 1) - 2 * a (n - 3)

end

end A052948.P17827999622045419821

namespace A052948

/-- `3*a(n-1)-2*a(n-3)` -/
def P17827999622045419821.Spec : Prop :=
  ∀ n, P17827999622045419821.a n = A052948 n

end A052948

/-! ## A052948.P12577641781533837759

`floor((sqrt(3)+1)*a(n-1))` with `a(0)=1, a(1)=1, a(2)=3, a(3)=7`
-/

namespace A052948.P12577641781533837759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 7] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 1) * (a (n - 1) : ℝ)⌋

end

end A052948.P12577641781533837759

namespace A052948

/-- `floor((sqrt(3)+1)*a(n-1))` -/
def P12577641781533837759.Spec : Prop :=
  ∀ n, P12577641781533837759.a n = A052948 n

end A052948

/-! ## A052948.P17376413510824557070

`∑[2*(a(n-1)+a(n-2))]` with `a(0)=1, a(1)=0`
-/

namespace A052948.P17376413510824557070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  2 * (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052948.P17376413510824557070

namespace A052948

/-- `∑[2*(a(n-1)+a(n-2))]` -/
def P17376413510824557070.Spec : Prop :=
  ∀ n, (P17376413510824557070.a n : ℤ) = A052948 n

end A052948

/-! ## A052948.P5429867347089868305

`2*(a(n-1)+a(n-2))-1` with `a(0)=1, a(1)=1`
-/

namespace A052948.P5429867347089868305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - 1

end

end A052948.P5429867347089868305

namespace A052948

/-- `2*(a(n-1)+a(n-2))-1` -/
def P5429867347089868305.Spec : Prop :=
  ∀ n, P5429867347089868305.a n = A052948 n

end A052948

/-! ## A052948.P16717904915490111004

`lcm(2, a(n-1)+a(n-2)-1)+1` with `a(0)=1, a(1)=1`
-/

namespace A052948.P16717904915490111004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lcm 2 ((a (n - 1) : ℤ) + ((a (n - 2) : ℤ) - 1)) + 1

end

end A052948.P16717904915490111004

namespace A052948

/-- `lcm(2, a(n-1)+a(n-2)-1)+1` -/
def P16717904915490111004.Spec : Prop :=
  ∀ n, (P16717904915490111004.a n : ℤ) = A052948 n

end A052948

/-! ## A052948.P18434968260839086641

`∑[a(n-1)+a(n-2)+a(n-1)+a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A052948.P18434968260839086641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + (f1 (n - 1) + f1 (n - 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052948.P18434968260839086641

namespace A052948

/-- `∑[a(n-1)+a(n-2)+a(n-1)+a(n-2)]` -/
def P18434968260839086641.Spec : Prop :=
  ∀ n, (P18434968260839086641.a n : ℤ) = A052948 n

end A052948

/-! ## A052948.P7744326263512374957

`a(n-1)-1+a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A052948.P7744326263512374957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - 1 + (a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A052948.P7744326263512374957

namespace A052948

/-- `a(n-1)-1+a(n-2)+a(n-1)+a(n-2)` -/
def P7744326263512374957.Spec : Prop :=
  ∀ n, P7744326263512374957.a n = A052948 n

end A052948

/-! ## A052948.P2091343345327273070

`a(n-1)-(1-a(n-1)-a(n-2)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A052948.P2091343345327273070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (1 - a (n - 1) - a (n - 2) - a (n - 2))

end

end A052948.P2091343345327273070

namespace A052948

/-- `a(n-1)-(1-a(n-1)-a(n-2)-a(n-2))` -/
def P2091343345327273070.Spec : Prop :=
  ∀ n, P2091343345327273070.a n = A052948 n

end A052948

/-! ## A052948.P6832511706247999487

`∑[A028860(n+1)]`
-/

namespace A052948.P6832511706247999487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052948.P6832511706247999487

namespace A052948

/-- `∑[A028860(n+1)]` -/
def P6832511706247999487.Spec : Prop :=
  ∀ n, P6832511706247999487.a n = A052948 n

end A052948

/-! ## A052948.P1842695692376496955

`∑[A293007(n)]+1`
-/

namespace A052948.P1842695692376496955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A052948.P1842695692376496955

namespace A052948

/-- `∑[A293007(n)]+1` -/
def P1842695692376496955.Spec : Prop :=
  ∀ n, P1842695692376496955.a n = A052948 n

end A052948

/-! ## A052948.P1630819739548378386

`A002605(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A052948.P1630819739548378386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A002605 n + a (n - 2)

end

end A052948.P1630819739548378386

namespace A052948

/-- `A002605(n)+a(n-2)` -/
def P1630819739548378386.Spec : Prop :=
  ∀ n, P1630819739548378386.a n = A052948 n

end A052948

/-! ## A052948.P15397663909986354295

`A152035(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A052948.P15397663909986354295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A152035 (n - 1) + a (n - 1)

end

end A052948.P15397663909986354295

namespace A052948

/-- `A152035(n-1)+a(n-1)` -/
def P15397663909986354295.Spec : Prop :=
  ∀ n, P15397663909986354295.a n = A052948 n

end A052948

/-! ## A052948.P647569185418015502

`∑[A002605(n)-A028860(n)]`
-/

namespace A052948.P647569185418015502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n - A028860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052948.P647569185418015502

namespace A052948

/-- `∑[A002605(n)-A028860(n)]` -/
def P647569185418015502.Spec : Prop :=
  ∀ n, P647569185418015502.a n = A052948 n

end A052948

/-! ## A052948.P17259562355847136334

`ceil(A080040(n)/3)`
-/

namespace A052948.P17259562355847136334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A080040 n : ℚ) / 3⌉

end

end A052948.P17259562355847136334

namespace A052948

/-- `ceil(A080040(n)/3)` -/
def P17259562355847136334.Spec : Prop :=
  ∀ n, P17259562355847136334.a n = A052948 n

end A052948

/-! ## A052948.P1475545438152644185

`A057960(n)-A002605(n)`
-/

namespace A052948.P1475545438152644185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057960 n - A002605 n

end

end A052948.P1475545438152644185

namespace A052948

/-- `A057960(n)-A002605(n)` -/
def P1475545438152644185.Spec : Prop :=
  ∀ n, P1475545438152644185.a n = A052948 n

end A052948

/-! ## A052948.P2392225430756961641

`∑[A026150(n)-A002605(n)]`
-/

namespace A052948.P2392225430756961641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n - A002605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052948.P2392225430756961641

namespace A052948

/-- `∑[A026150(n)-A002605(n)]` -/
def P2392225430756961641.Spec : Prop :=
  ∀ n, P2392225430756961641.a n = A052948 n

end A052948

/-! ## A052948.P12184168265160606607

`∑[A028859(n)-A083337(n)]`
-/

namespace A052948.P12184168265160606607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 n - A083337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052948.P12184168265160606607

namespace A052948

/-- `∑[A028859(n)-A083337(n)]` -/
def P12184168265160606607.Spec : Prop :=
  ∀ n, P12184168265160606607.a n = A052948 n

end A052948

/-! ## A052948.P4046376880256210745

`∑[A080040(n)-∑[A026150(n)]]`
-/

namespace A052948.P4046376880256210745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080040 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052948.P4046376880256210745

namespace A052948

/-- `∑[A080040(n)-∑[A026150(n)]]` -/
def P4046376880256210745.Spec : Prop :=
  ∀ n, P4046376880256210745.a n = A052948 n

end A052948

/-! ## A052948.P4811364391594957736

`A002605(n+1)-∑[A002605(n)]`
-/

namespace A052948.P4811364391594957736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052948.P4811364391594957736

namespace A052948

/-- `A002605(n+1)-∑[A002605(n)]` -/
def P4811364391594957736.Spec : Prop :=
  ∀ n, P4811364391594957736.a n = A052948 n

end A052948

/-!
# A052949: Expansion of (2-4*x+x^3)/((1-x)*(1-2*x-x^2+x^3)).

The programs for A052949, the canonical program `A052949.P8385732411221850163` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052949 has offset 0).

The definition of A052949 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2-4x+x^3)/(1-3x+x^2+2x^3-x^4))` (program `A052949.P8385732411221850163`, by `A052949.P8385732411221850163.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052949.P8385732411221850163

`ogf((2-4x+x^3)/(1-3x+x^2+2x^3-x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052949

/-- `ogf((2-4x+x^3)/(1-3x+x^2+2x^3-x^4))` -/
def P8385732411221850163.Spec : Prop :=
  ∀ n, P8385732411221850163.a n = A052949 n

theorem P8385732411221850163.correct : P8385732411221850163.Spec := by
  intro n
  simp only [A052949]

end A052949

/-! ## A052949.P10592633672897750249

`2*a(n-1)+a(n-2)-a(n-3)-1` with `a(0)=2, a(1)=2, a(2)=4`
-/

namespace A052949.P10592633672897750249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 4] fun n a =>
  2 * a (n - 1) + a (n - 2) - a (n - 3) - 1

end

end A052949.P10592633672897750249

namespace A052949

/-- `2*a(n-1)+a(n-2)-a(n-3)-1` -/
def P10592633672897750249.Spec : Prop :=
  ∀ n, P10592633672897750249.a n = A052949 n

end A052949

/-! ## A052949.P4781741044708201852

`A077998(n)+1`
-/

namespace A052949.P4781741044708201852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077998 n + 1

end

end A052949.P4781741044708201852

namespace A052949

/-- `A077998(n)+1` -/
def P4781741044708201852.Spec : Prop :=
  ∀ n, P4781741044708201852.a n = A052949 n

end A052949

/-! ## A052949.P18188146119727624522

`A106803(n+1)+1`
-/

namespace A052949.P18188146119727624522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106803 (n + 1) + 1

end

end A052949.P18188146119727624522

namespace A052949

/-- `A106803(n+1)+1` -/
def P18188146119727624522.Spec : Prop :=
  ∀ n, P18188146119727624522.a n = A052949 n

end A052949

/-! ## A052949.P9353089402508875316

`A038196(2*n)+1`
-/

namespace A052949.P9353089402508875316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038196 (2 * n) + 1

end

end A052949.P9353089402508875316

namespace A052949

/-- `A038196(2*n)+1` -/
def P9353089402508875316.Spec : Prop :=
  ∀ n, P9353089402508875316.a n = A052949 n

end A052949

/-! ## A052949.P12061574114215869201

`A120771(3*n)+1`
-/

namespace A052949.P12061574114215869201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120771 (3 * n) + 1

end

end A052949.P12061574114215869201

namespace A052949

/-- `A120771(3*n)+1` -/
def P12061574114215869201.Spec : Prop :=
  ∀ n, P12061574114215869201.a n = A052949 n

end A052949

/-! ## A052949.P4157780196656215423

`A187070(2*(n+1))+1`
-/

namespace A052949.P4157780196656215423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187070 (2 * (n + 1)) + 1

end

end A052949.P4157780196656215423

namespace A052949

/-- `A187070(2*(n+1))+1` -/
def P4157780196656215423.Spec : Prop :=
  ∀ n, P4157780196656215423.a n = A052949 n

end A052949

/-! ## A052949.P4831226365090915956

`A187068(2*(n+2))+1`
-/

namespace A052949.P4831226365090915956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187068 (2 * (n + 2)) + 1

end

end A052949.P4831226365090915956

namespace A052949

/-- `A187068(2*(n+2))+1` -/
def P4831226365090915956.Spec : Prop :=
  ∀ n, P4831226365090915956.a n = A052949 n

end A052949

/-! ## A052949.P2129672442092564353

`A219788(n-1)+a(n-1)` with `a(0)=2, a(1)=2`
-/

namespace A052949.P2129672442092564353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A219788 (n - 1) + a (n - 1)

end

end A052949.P2129672442092564353

namespace A052949

/-- `A219788(n-1)+a(n-1)` -/
def P2129672442092564353.Spec : Prop :=
  ∀ n, P2129672442092564353.a n = A052949 n

end A052949

/-! ## A052949.P4534896863690565652

`A006356(A289207(n+1))+1`
-/

namespace A052949.P4534896863690565652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 (A289207 (n + 1)).toNat + 1

end

end A052949.P4534896863690565652

namespace A052949

/-- `A006356(A289207(n+1))+1` -/
def P4534896863690565652.Spec : Prop :=
  ∀ n, P4534896863690565652.a n = A052949 n

end A052949

/-! ## A052949.P11046276528479388656

`A006356(A004273(n)-n)+1`
-/

namespace A052949.P11046276528479388656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 (A004273 n - (n : ℤ)).toNat + 1

end

end A052949.P11046276528479388656

namespace A052949

/-- `A006356(A004273(n)-n)+1` -/
def P11046276528479388656.Spec : Prop :=
  ∀ n, P11046276528479388656.a n = A052949 n

end A052949

/-! ## A052949.P8518423632870873574

`A006054(n)+∑[A006054(n)]+2`
-/

namespace A052949.P8518423632870873574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 n + (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A052949.P8518423632870873574

namespace A052949

/-- `A006054(n)+∑[A006054(n)]+2` -/
def P8518423632870873574.Spec : Prop :=
  ∀ n, P8518423632870873574.a n = A052949 n

end A052949

/-! ## A052949.P15355455827898956366

`A187069(2*n+1)+A187069(2*n)+1`
-/

namespace A052949.P15355455827898956366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187069 (2 * n + 1) + (A187069 (2 * n) + 1)

end

end A052949.P15355455827898956366

namespace A052949

/-- `A187069(2*n+1)+A187069(2*n)+1` -/
def P15355455827898956366.Spec : Prop :=
  ∀ n, P15355455827898956366.a n = A052949 n

end A052949

/-! ## A052949.P11728784721632071233

`Δ[A006054(n+1)]+1`
-/

namespace A052949.P11728784721632071233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A052949.P11728784721632071233

namespace A052949

/-- `Δ[A006054(n+1)]+1` -/
def P11728784721632071233.Spec : Prop :=
  ∀ n, P11728784721632071233.a n = A052949 n

end A052949

/-! ## A052949.P13176594907431458373

`A052994(n+1)/2+1`
-/

namespace A052949.P13176594907431458373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052994 (n + 1) : ℚ) / 2 + 1

end

end A052949.P13176594907431458373

namespace A052949

/-- `A052994(n+1)/2+1` -/
def P13176594907431458373.Spec : Prop :=
  ∀ n, P13176594907431458373.a n = (A052949 n : ℚ)

end A052949

/-! ## A052949.P17196843690447343702

`A060827(2*n)/2+1`
-/

namespace A052949.P17196843690447343702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060827 (2 * n) : ℚ) / 2 + 1

end

end A052949.P17196843690447343702

namespace A052949

/-- `A060827(2*n)/2+1` -/
def P17196843690447343702.Spec : Prop :=
  ∀ n, P17196843690447343702.a n = (A052949 n : ℚ)

end A052949

/-! ## A052949.P3469959784340849250

`A052534(n)+2-a(n-1)` with `a(0)=2`
-/

namespace A052949.P3469959784340849250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A052534 n + (2 - a (n - 1))

end

end A052949.P3469959784340849250

namespace A052949

/-- `A052534(n)+2-a(n-1)` -/
def P3469959784340849250.Spec : Prop :=
  ∀ n, P3469959784340849250.a n = A052949 n

end A052949

/-! ## A052949.P2753898692559417643

`1-A199853(n+1)`
-/

namespace A052949.P2753898692559417643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A199853 (n + 1)

end

end A052949.P2753898692559417643

namespace A052949

/-- `1-A199853(n+1)` -/
def P2753898692559417643.Spec : Prop :=
  ∀ n, P2753898692559417643.a n = A052949 n

end A052949

/-! ## A052949.P2122057816523260780

`Δ[Δ[A187069(2*n+1)]]+1`
-/

namespace A052949.P2122057816523260780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187069 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A052949.P2122057816523260780

namespace A052949

/-- `Δ[Δ[A187069(2*n+1)]]+1` -/
def P2122057816523260780.Spec : Prop :=
  ∀ n, P2122057816523260780.a n = A052949 n

end A052949

/-! ## A052949.P4093587496395558757

`A077850(n)+2-A006356(n)`
-/

namespace A052949.P4093587496395558757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077850 n + (2 - A006356 n)

end

end A052949.P4093587496395558757

namespace A052949

/-- `A077850(n)+2-A006356(n)` -/
def P4093587496395558757.Spec : Prop :=
  ∀ n, P4093587496395558757.a n = A052949 n

end A052949

/-!
# A052950: Expansion of (2-3*x-x^2+x^3)/((1-x)*(1+x)*(1-2*x)).

The programs for A052950, the canonical program `A052950.P4577545658812118653` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052950 has offset 0).

The definition of A052950 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2-3x-x^2+x^3)/(1-2x-x^2+2x^3))` (program `A052950.P4577545658812118653`, by `A052950.P4577545658812118653.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052950.P4577545658812118653

`ogf((2-3x-x^2+x^3)/(1-2x-x^2+2x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052950

/-- `ogf((2-3x-x^2+x^3)/(1-2x-x^2+2x^3))` -/
def P4577545658812118653.Spec : Prop :=
  ∀ n, P4577545658812118653.a n = A052950 n

theorem P4577545658812118653.correct : P4577545658812118653.Spec := by
  intro n
  simp only [A052950]

end A052950

/-! ## A052950.P3532944129336603946

`a(n-1)+2*a(n-2)-1` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A052950.P3532944129336603946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 1

end

end A052950.P3532944129336603946

namespace A052950

/-- `a(n-1)+2*a(n-2)-1` -/
def P3532944129336603946.Spec : Prop :=
  ∀ n, P3532944129336603946.a n = A052950 n

end A052950

/-! ## A052950.P449848160781837752

`char[2*n]+ceil(2^(n-1))`
-/

namespace A052950.P449848160781837752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A052950.P449848160781837752

namespace A052950

/-- `char[2*n]+ceil(2^(n-1))` -/
def P449848160781837752.Spec : Prop :=
  ∀ n, P449848160781837752.a n = A052950 n

end A052950

/-! ## A052950.P16881575882292876246

`ceil(and(1, n+1)+2^(n-1))`
-/

namespace A052950.P16881575882292876246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.land 1 (n + 1) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A052950.P16881575882292876246

namespace A052950

/-- `ceil(and(1, n+1)+2^(n-1))` -/
def P16881575882292876246.Spec : Prop :=
  ∀ n, P16881575882292876246.a n = A052950 n

end A052950

/-! ## A052950.P2396280011742419062

`round(and(1, n+1)+2^(n-1))`
-/

namespace A052950.P2396280011742419062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.land 1 (n + 1) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A052950.P2396280011742419062

namespace A052950

/-- `round(and(1, n+1)+2^(n-1))` -/
def P2396280011742419062.Spec : Prop :=
  ∀ n, P2396280011742419062.a n = A052950 n

end A052950

/-! ## A052950.P6855946777785738778

`floor(ceil(2^(n-1))+log2(gcd(2, n)))`
-/

namespace A052950.P6855946777785738778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)⌋

end

end A052950.P6855946777785738778

namespace A052950

/-- `floor(ceil(2^(n-1))+log2(gcd(2, n)))` -/
def P6855946777785738778.Spec : Prop :=
  ∀ n, P6855946777785738778.a n = A052950 n

end A052950

/-! ## A052950.P6087465353851468756

`abs(ceil(2^(n-1))+or(1, n)-n)`
-/

namespace A052950.P6087465353851468756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + (Nat.lor 1 n : ℤ) - (n : ℤ)|

end

end A052950.P6087465353851468756

namespace A052950

/-- `abs(ceil(2^(n-1))+or(1, n)-n)` -/
def P6087465353851468756.Spec : Prop :=
  ∀ n, P6087465353851468756.a n = A052950 n

end A052950

/-! ## A052950.P11920002105362495983

`xor(1, 2*a(n-1)-n%2)` with `a(0)=2, a(1)=1`
-/

namespace A052950.P11920002105362495983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  Int.xor 1 (2 * a (n - 1) - ((n % 2 : ℕ) : ℤ))

end

end A052950.P11920002105362495983

namespace A052950

/-- `xor(1, 2*a(n-1)-n%2)` -/
def P11920002105362495983.Spec : Prop :=
  ∀ n, P11920002105362495983.a n = A052950 n

end A052950

/-! ## A052950.P8024431558655784792

`xor(1, 2*a(n-1)-and(1, n))` with `a(0)=2, a(1)=1`
-/

namespace A052950.P8024431558655784792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  Int.xor 1 (2 * a (n - 1) - (Nat.land 1 n : ℤ))

end

end A052950.P8024431558655784792

namespace A052950

/-- `xor(1, 2*a(n-1)-and(1, n))` -/
def P8024431558655784792.Spec : Prop :=
  ∀ n, P8024431558655784792.a n = A052950 n

end A052950

/-! ## A052950.P1879459833020161391

`ceil(char[2*n]+A000079(n)/2)`
-/

namespace A052950.P1879459833020161391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) + (A000079 n : ℚ) / 2⌉

end

end A052950.P1879459833020161391

namespace A052950

/-- `ceil(char[2*n]+A000079(n)/2)` -/
def P1879459833020161391.Spec : Prop :=
  ∀ n, P1879459833020161391.a n = A052950 n

end A052950

/-! ## A052950.P12462608857413367957

`Δ[A131577(n)+A110654(n)]`
-/

namespace A052950.P12462608857413367957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052950.P12462608857413367957

namespace A052950

/-- `Δ[A131577(n)+A110654(n)]` -/
def P12462608857413367957.Spec : Prop :=
  ∀ n, P12462608857413367957.a n = A052950 n

end A052950

/-! ## A052950.P878556088032501948

`Δ[A094373(n)+Δ[A002620(n)]]`
-/

namespace A052950.P878556088032501948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052950.P878556088032501948

namespace A052950

/-- `Δ[A094373(n)+Δ[A002620(n)]]` -/
def P878556088032501948.Spec : Prop :=
  ∀ n, P878556088032501948.a n = A052950 n

end A052950

/-! ## A052950.P18163564131814966056

`Δ[A110654(n)+Δ[A011782(n)]]`
-/

namespace A052950.P18163564131814966056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052950.P18163564131814966056

namespace A052950

/-- `Δ[A110654(n)+Δ[A011782(n)]]` -/
def P18163564131814966056.Spec : Prop :=
  ∀ n, P18163564131814966056.a n = A052950 n

end A052950

/-! ## A052950.P12227346269952001427

`ceil(Δ[A167167(2*n)/A167167(n+1)])`
-/

namespace A052950.P12227346269952001427
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167167 (2 * n) : ℚ) / (A167167 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A052950.P12227346269952001427

namespace A052950

/-- `ceil(Δ[A167167(2*n)/A167167(n+1)])` -/
def P12227346269952001427.Spec : Prop :=
  ∀ n, P12227346269952001427.a n = A052950 n

end A052950

/-! ## A052950.P7712547075525110154

`A099627(A084263(n)-n)`
-/

namespace A052950.P7712547075525110154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 (A084263 n - (n : ℤ)).toNat

end

end A052950.P7712547075525110154

namespace A052950

/-- `A099627(A084263(n)-n)` -/
def P7712547075525110154.Spec : Prop :=
  ∀ n, P7712547075525110154.a n = A052950 n

end A052950

/-! ## A052950.P1317410973062191731

`A048645(A084263(n)+1-n)`
-/

namespace A052950.P1317410973062191731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (A084263 n + (1 - (n : ℤ))).toNat

end

end A052950.P1317410973062191731

namespace A052950

/-- `A048645(A084263(n)+1-n)` -/
def P1317410973062191731.Spec : Prop :=
  ∀ n, P1317410973062191731.a n = A052950 n

end A052950

/-! ## A052950.P606725743402404840

`A048645(1-(n-A084263(n)))`
-/

namespace A052950.P606725743402404840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (1 - ((n : ℤ) - A084263 n)).toNat

end

end A052950.P606725743402404840

namespace A052950

/-- `A048645(1-(n-A084263(n)))` -/
def P606725743402404840.Spec : Prop :=
  ∀ n, P606725743402404840.a n = A052950 n

end A052950

/-! ## A052950.P6398064872719589684

`A131816(A125577(n))`
-/

namespace A052950.P6398064872719589684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 (A125577 n).toNat

end

end A052950.P6398064872719589684

namespace A052950

/-- `A131816(A125577(n))` -/
def P6398064872719589684.Spec : Prop :=
  ∀ n, P6398064872719589684.a n = A052950 n

end A052950

/-!
# A052951: Expansion of (1 + x - 2*x^2)/(1 - 2*x)^2.

The programs for A052951, the canonical program `A052951.P1560363449655335714` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052951 has offset 0).

The definition of A052951 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-2x^2)/(1-4x+4x^2))` (program `A052951.P1560363449655335714`, by `A052951.P1560363449655335714.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052951.P1560363449655335714

`ogf((1+x-2x^2)/(1-4x+4x^2))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052951

/-- `ogf((1+x-2x^2)/(1-4x+4x^2))` -/
def P1560363449655335714.Spec : Prop :=
  ∀ n, P1560363449655335714.a n = A052951 n

theorem P1560363449655335714.correct : P1560363449655335714.Spec := by
  intro n
  simp only [A052951]

end A052951

/-! ## A052951.P10897564461950369460

`4*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=5, a(2)=14`
-/

namespace A052951.P10897564461950369460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 14] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A052951.P10897564461950369460

namespace A052951

/-- `4*(a(n-1)-a(n-2))` -/
def P10897564461950369460.Spec : Prop :=
  ∀ n, P10897564461950369460.a n = A052951 n

end A052951

/-! ## A052951.P6555577597435111989

`floor((3/2+n)*2^n)`
-/

namespace A052951.P6555577597435111989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 : ℚ) / 2 + (n : ℚ)) * (2 ^ n : ℚ)⌋

end

end A052951.P6555577597435111989

namespace A052951

/-- `floor((3/2+n)*2^n)` -/
def P6555577597435111989.Spec : Prop :=
  ∀ n, P6555577597435111989.a n = A052951 n

end A052951

/-! ## A052951.P9054800263554242810

`2^n+2*a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A052951.P9054800263554242810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 ^ n + 2 * a (n - 1)

end

end A052951.P9054800263554242810

namespace A052951

/-- `2^n+2*a(n-1)` -/
def P9054800263554242810.Spec : Prop :=
  ∀ n, (P9054800263554242810.a n : ℤ) = A052951 n

end A052951

/-! ## A052951.P16936444976857937685

`2^(n-1)*record[xor(1, n+3)]`
-/

namespace A052951.P16936444976857937685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A052951.P16936444976857937685

namespace A052951

/-- `2^(n-1)*record[xor(1, n+3)]` -/
def P16936444976857937685.Spec : Prop :=
  ∀ n, P16936444976857937685.a n = (A052951 n : ℚ)

end A052951

/-! ## A052951.P17502561255366257457

`a(n-1)+a(n-1)+2^n` with `a(0)=1, a(1)=5`
-/

namespace A052951.P17502561255366257457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + (a (n - 1) + 2 ^ n)

end

end A052951.P17502561255366257457

namespace A052951

/-- `a(n-1)+a(n-1)+2^n` -/
def P17502561255366257457.Spec : Prop :=
  ∀ n, (P17502561255366257457.a n : ℤ) = A052951 n

end A052951

/-! ## A052951.P9928728786485310727

`∑[A386270(n+1)]`
-/

namespace A052951.P9928728786485310727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052951.P9928728786485310727

namespace A052951

/-- `∑[A386270(n+1)]` -/
def P9928728786485310727.Spec : Prop :=
  ∀ n, P9928728786485310727.a n = A052951 n

end A052951

/-! ## A052951.P6188060444522821590

`2^(n-1)*A130773(n+1)`
-/

namespace A052951.P6188060444522821590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A130773 (n + 1) : ℚ)

end

end A052951.P6188060444522821590

namespace A052951

/-- `2^(n-1)*A130773(n+1)` -/
def P6188060444522821590.Spec : Prop :=
  ∀ n, P6188060444522821590.a n = (A052951 n : ℚ)

end A052951

/-! ## A052951.P7190831067506340865

`2^(n-1)*A140139(n+2)`
-/

namespace A052951.P7190831067506340865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A140139 (n + 2) : ℚ)

end

end A052951.P7190831067506340865

namespace A052951

/-- `2^(n-1)*A140139(n+2)` -/
def P7190831067506340865.Spec : Prop :=
  ∀ n, P7190831067506340865.a n = (A052951 n : ℚ)

end A052951

/-! ## A052951.P16381566578953815701

`2^(n-1)*A163985(n+2)`
-/

namespace A052951.P16381566578953815701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A163985 (n + 2) : ℚ)

end

end A052951.P16381566578953815701

namespace A052951

/-- `2^(n-1)*A163985(n+2)` -/
def P16381566578953815701.Spec : Prop :=
  ∀ n, P16381566578953815701.a n = (A052951 n : ℚ)

end A052951

/-! ## A052951.P4547360180385435223

`A036289(n)+A003945(n)`
-/

namespace A052951.P4547360180385435223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n + A003945 n

end

end A052951.P4547360180385435223

namespace A052951

/-- `A036289(n)+A003945(n)` -/
def P4547360180385435223.Spec : Prop :=
  ∀ n, P4547360180385435223.a n = A052951 n

end A052951

/-! ## A052951.P13348569435481211833

`A052549(n)+A000337(n)`
-/

namespace A052951.P13348569435481211833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052549 n + A000337 n

end

end A052951.P13348569435481211833

namespace A052951

/-- `A052549(n)+A000337(n)` -/
def P13348569435481211833.Spec : Prop :=
  ∀ n, P13348569435481211833.a n = A052951 n

end A052951

/-! ## A052951.P8737883521110388104

`A055010(n)+A002064(n)`
-/

namespace A052951.P8737883521110388104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 n + A002064 n

end

end A052951.P8737883521110388104

namespace A052951

/-- `A055010(n)+A002064(n)` -/
def P8737883521110388104.Spec : Prop :=
  ∀ n, P8737883521110388104.a n = A052951 n

end A052951

/-! ## A052951.P17391909354380250407

`A094373(n)+A087323(n)`
-/

namespace A052951.P17391909354380250407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n + A087323 n

end

end A052951.P17391909354380250407

namespace A052951

/-- `A094373(n)+A087323(n)` -/
def P17391909354380250407.Spec : Prop :=
  ∀ n, P17391909354380250407.a n = A052951 n

end A052951

/-! ## A052951.P4975775237747201517

`A179744(n)+A069229(n)`
-/

namespace A052951.P4975775237747201517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179744 n + A069229 n

end

end A052951.P4975775237747201517

namespace A052951

/-- `A179744(n)+A069229(n)` -/
def P4975775237747201517.Spec : Prop :=
  ∀ n, P4975775237747201517.a n = A052951 n

end A052951

/-! ## A052951.P4926055917995652996

`A133086(n)+A129953(n)`
-/

namespace A052951.P4926055917995652996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133086 n + A129953 n

end

end A052951.P4926055917995652996

namespace A052951

/-- `A133086(n)+A129953(n)` -/
def P4926055917995652996.Spec : Prop :=
  ∀ n, P4926055917995652996.a n = A052951 n

end A052951

/-! ## A052951.P15457097913534439405

`A087447(n+1)+A001787(n)`
-/

namespace A052951.P15457097913534439405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087447 (n + 1) + A001787 n

end

end A052951.P15457097913534439405

namespace A052951

/-- `A087447(n+1)+A001787(n)` -/
def P15457097913534439405.Spec : Prop :=
  ∀ n, P15457097913534439405.a n = A052951 n

end A052951

/-! ## A052951.P955531403161931403

`A131577(n)+A001787(n+1)`
-/

namespace A052951.P955531403161931403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A001787 (n + 1)

end

end A052951.P955531403161931403

namespace A052951

/-- `A131577(n)+A001787(n+1)` -/
def P955531403161931403.Spec : Prop :=
  ∀ n, P955531403161931403.a n = A052951 n

end A052951

/-! ## A052951.P13378900094511216846

`A087323(n)+A131577(n)+1`
-/

namespace A052951.P13378900094511216846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087323 n + (A131577 n + 1)

end

end A052951.P13378900094511216846

namespace A052951

/-- `A087323(n)+A131577(n)+1` -/
def P13378900094511216846.Spec : Prop :=
  ∀ n, P13378900094511216846.a n = A052951 n

end A052951

/-! ## A052951.P16134523303391206655

`A155559(n)+A128135(n+1)`
-/

namespace A052951.P16134523303391206655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + A128135 (n + 1)

end

end A052951.P16134523303391206655

namespace A052951

/-- `A155559(n)+A128135(n+1)` -/
def P16134523303391206655.Spec : Prop :=
  ∀ n, P16134523303391206655.a n = A052951 n

end A052951

/-!
# A052952: a(n) = Fibonacci(n+2) - (1-(-1)^n)/2.

The programs for A052952, the canonical program `A052952.P14817173793348127008` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052952 has offset 0).

The definition of A052952 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052952.P14817173793348127008

`2*a(n-2)+a(n-3)+1` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052952

/-- `2*a(n-2)+a(n-3)+1` -/
def P14817173793348127008.Spec : Prop :=
  ∀ n, (P14817173793348127008.a n : ℤ) = A052952 n

theorem P14817173793348127008.correct : P14817173793348127008.Spec := by
  intro n
  simp only [A052952]

end A052952

/-! ## A052952.P15281083112939500022

`a(n-1)+a(n-2)+(1+(-1)^n)/2` with `a(0)=1, a(1)=1`
-/

namespace A052952.P15281083112939500022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) + (1 + (-1) ^ n : ℚ) / 2

end

end A052952.P15281083112939500022

namespace A052952

/-- `a(n-1)+a(n-2)+(1+(-1)^n)/2` -/
def P15281083112939500022.Spec : Prop :=
  ∀ n, P15281083112939500022.a n = (A052952 n : ℚ)

end A052952

/-! ## A052952.P9681357559310891955

`A074331(n+1)`
-/

namespace A052952.P9681357559310891955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074331 (n + 1)

end

end A052952.P9681357559310891955

namespace A052952

/-- `A074331(n+1)` -/
def P9681357559310891955.Spec : Prop :=
  ∀ n, P9681357559310891955.a n = A052952 n

end A052952

/-! ## A052952.P16840661215723475278

`(A001595(n+3)-A066983(n+5))/2`
-/

namespace A052952.P16840661215723475278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001595 (n + 3) - A066983 (n + 5) : ℚ) / 2

end

end A052952.P16840661215723475278

namespace A052952

/-- `(A001595(n+3)-A066983(n+5))/2` -/
def P16840661215723475278.Spec : Prop :=
  ∀ n, P16840661215723475278.a n = (A052952 n : ℚ)

end A052952

/-! ## A052952.P4564117282508843716

`ogf(1/(1-x-2x^2+x^3+x^4))`
-/

namespace A052952.P4564117282508843716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -2, 1, 1] n

end

end A052952.P4564117282508843716

namespace A052952

/-- `ogf(1/(1-x-2x^2+x^3+x^4))` -/
def P4564117282508843716.Spec : Prop :=
  ∀ n, P4564117282508843716.a n = A052952 n

end A052952

/-! ## A052952.P16524589968892661535

`∑[a(n-3)+2*a(n-2)]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A052952.P16524589968892661535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  f1 (n - 3) + 2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052952.P16524589968892661535

namespace A052952

/-- `∑[a(n-3)+2*a(n-2)]` -/
def P16524589968892661535.Spec : Prop :=
  ∀ n, (P16524589968892661535.a n : ℤ) = A052952 n

end A052952

/-! ## A052952.P10817632860483806196

`∑[a(n-1)+a(n-2)+(-1)^n]` with `a(0)=1, a(1)=0`
-/

namespace A052952.P10817632860483806196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + (-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052952.P10817632860483806196

namespace A052952

/-- `∑[a(n-1)+a(n-2)+(-1)^n]` -/
def P10817632860483806196.Spec : Prop :=
  ∀ n, P10817632860483806196.a n = A052952 n

end A052952

/-! ## A052952.P4484223511683891318

`(n+1)%2+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A052952.P4484223511683891318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n + 1) % 2 + (a (n - 1) + a (n - 2))

end

end A052952.P4484223511683891318

namespace A052952

/-- `(n+1)%2+a(n-1)+a(n-2)` -/
def P4484223511683891318.Spec : Prop :=
  ∀ n, (P4484223511683891318.a n : ℤ) = A052952 n

end A052952

/-! ## A052952.P10803810153429539373

`gcd(2, n)-1+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A052952.P10803810153429539373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Nat.gcd 2 n : ℤ) - 1 + (a (n - 1) + a (n - 2))

end

end A052952.P10803810153429539373

namespace A052952

/-- `gcd(2, n)-1+a(n-1)+a(n-2)` -/
def P10803810153429539373.Spec : Prop :=
  ∀ n, P10803810153429539373.a n = A052952 n

end A052952

/-! ## A052952.P15746864924520123110

`1-(n%2-a(n-1)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A052952.P15746864924520123110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - (((n % 2 : ℕ) : ℤ) - a (n - 1) - a (n - 2))

end

end A052952.P15746864924520123110

namespace A052952

/-- `1-(n%2-a(n-1)-a(n-2))` -/
def P15746864924520123110.Spec : Prop :=
  ∀ n, P15746864924520123110.a n = A052952 n

end A052952

/-! ## A052952.P1312493287447643230

`and(1, n+1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A052952.P1312493287447643230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.land 1 (n + 1) + (a (n - 1) + a (n - 2))

end

end A052952.P1312493287447643230

namespace A052952

/-- `and(1, n+1)+a(n-1)+a(n-2)` -/
def P1312493287447643230.Spec : Prop :=
  ∀ n, (P1312493287447643230.a n : ℤ) = A052952 n

end A052952

/-! ## A052952.P8032042826628223447

`a(n-2)+1+a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A052952.P8032042826628223447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 2) + 1 + (a (n - 2) + a (n - 3))

end

end A052952.P8032042826628223447

namespace A052952

/-- `a(n-2)+1+a(n-2)+a(n-3)` -/
def P8032042826628223447.Spec : Prop :=
  ∀ n, (P8032042826628223447.a n : ℤ) = A052952 n

theorem P8032042826628223447.correct : P8032042826628223447.Spec := by
  intro n
  simp only [A052952, Nat.add_sub_cancel, A052952.P8032042826628223447.a, A052952.P14817173793348127008.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A052952

/-! ## A052952.P11820063079337952259

`∑[A008346(n)]`
-/

namespace A052952.P11820063079337952259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052952.P11820063079337952259

namespace A052952

/-- `∑[A008346(n)]` -/
def P11820063079337952259.Spec : Prop :=
  ∀ n, P11820063079337952259.a n = A052952 n

end A052952

/-! ## A052952.P2961717438126682470

`∑[abs(A355020(n))]`
-/

namespace A052952.P2961717438126682470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355020 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052952.P2961717438126682470

namespace A052952

/-- `∑[abs(A355020(n))]` -/
def P2961717438126682470.Spec : Prop :=
  ∀ n, P2961717438126682470.a n = A052952 n

end A052952

/-! ## A052952.P12896194237736697732

`∑[∑[A078024(n)]]`
-/

namespace A052952.P12896194237736697732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078024 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052952.P12896194237736697732

namespace A052952

/-- `∑[∑[A078024(n)]]` -/
def P12896194237736697732.Spec : Prop :=
  ∀ n, P12896194237736697732.a n = A052952 n

end A052952

/-! ## A052952.P8308323299011267666

`A127968(n+1)-1`
-/

namespace A052952.P8308323299011267666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127968 (n + 1) - 1

end

end A052952.P8308323299011267666

namespace A052952

/-- `A127968(n+1)-1` -/
def P8308323299011267666.Spec : Prop :=
  ∀ n, P8308323299011267666.a n = A052952 n

end A052952

/-! ## A052952.P13710467381546165333

`∑[abs(A119282(n+1))]`
-/

namespace A052952.P13710467381546165333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A119282 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052952.P13710467381546165333

namespace A052952

/-- `∑[abs(A119282(n+1))]` -/
def P13710467381546165333.Spec : Prop :=
  ∀ n, P13710467381546165333.a n = A052952 n

end A052952

/-! ## A052952.P13034453924131525418

`∑[A247050(3*(n+1))]`
-/

namespace A052952.P13034453924131525418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247050 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052952.P13034453924131525418

namespace A052952

/-- `∑[A247050(3*(n+1))]` -/
def P13034453924131525418.Spec : Prop :=
  ∀ n, P13034453924131525418.a n = A052952 n

end A052952

/-! ## A052952.P9478320384796349552

`A000045(n+2)-n%2`
-/

namespace A052952.P9478320384796349552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - ((n % 2 : ℕ) : ℤ)

end

end A052952.P9478320384796349552

namespace A052952

/-- `A000045(n+2)-n%2` -/
def P9478320384796349552.Spec : Prop :=
  ∀ n, P9478320384796349552.a n = A052952 n

end A052952

/-! ## A052952.P4872931285691823162

`∑[A000045(n)+(-1)^n]`
-/

namespace A052952.P4872931285691823162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052952.P4872931285691823162

namespace A052952

/-- `∑[A000045(n)+(-1)^n]` -/
def P4872931285691823162.Spec : Prop :=
  ∀ n, P4872931285691823162.a n = A052952 n

end A052952

/-!
# A052953: Expansion of 2*(1-x-x^2)/((1-x)*(1+x)*(1-2*x)).

The programs for A052953, the canonical program `A052953.P2091872417134132649` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052953 has offset 0).

The definition of A052953 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2-2x-2x^2)/(1-2x-x^2+2x^3))` (program `A052953.P2091872417134132649`, by `A052953.P2091872417134132649.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052953.P2091872417134132649

`ogf((2-2x-2x^2)/(1-2x-x^2+2x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052953

/-- `ogf((2-2x-2x^2)/(1-2x-x^2+2x^3))` -/
def P2091872417134132649.Spec : Prop :=
  ∀ n, P2091872417134132649.a n = A052953 n

theorem P2091872417134132649.correct : P2091872417134132649.Spec := by
  intro n
  simp only [A052953]

end A052953

/-! ## A052953.P3160330930403778723

`a(n-1)+2*a(n-2)-2` with `a(0)=2, a(1)=2`
-/

namespace A052953.P3160330930403778723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2

end

end A052953.P3160330930403778723

namespace A052953

/-- `a(n-1)+2*a(n-2)-2` -/
def P3160330930403778723.Spec : Prop :=
  ∀ n, P3160330930403778723.a n = A052953 n

end A052953

/-! ## A052953.P1559081905430281844

`2*A005578(n)`
-/

namespace A052953.P1559081905430281844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005578 n

end

end A052953.P1559081905430281844

namespace A052953

/-- `2*A005578(n)` -/
def P1559081905430281844.Spec : Prop :=
  ∀ n, P1559081905430281844.a n = A052953 n

end A052953

/-! ## A052953.P7114024813379250668

`A001045(n+1)+1`
-/

namespace A052953.P7114024813379250668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + 1

end

end A052953.P7114024813379250668

namespace A052953

/-- `A001045(n+1)+1` -/
def P7114024813379250668.Spec : Prop :=
  ∀ n, P7114024813379250668.a n = A052953 n

end A052953

/-! ## A052953.P4092440895671180377

`(2^(n+1)+3+(-1)^n)/3`
-/

namespace A052953.P4092440895671180377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) + (3 + (-1) ^ n) : ℚ) / 3

end

end A052953.P4092440895671180377

namespace A052953

/-- `(2^(n+1)+3+(-1)^n)/3` -/
def P4092440895671180377.Spec : Prop :=
  ∀ n, P4092440895671180377.a n = (A052953 n : ℚ)

end A052953

/-! ## A052953.P1893846983265510087

`2^n+2-a(n-1)` with `a(0)=2`
-/

namespace A052953.P1893846983265510087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (2 ^ n : ℤ) + (2 - a (n - 1))

end

end A052953.P1893846983265510087

namespace A052953

/-- `2^n+2-a(n-1)` -/
def P1893846983265510087.Spec : Prop :=
  ∀ n, P1893846983265510087.a n = A052953 n

end A052953

/-! ## A052953.P8825702505069468388

`2-(a(n-1)-2^n)` with `a(0)=2`
-/

namespace A052953.P8825702505069468388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - (a (n - 1) - (2 ^ n : ℤ))

end

end A052953.P8825702505069468388

namespace A052953

/-- `2-(a(n-1)-2^n)` -/
def P8825702505069468388.Spec : Prop :=
  ∀ n, P8825702505069468388.a n = A052953 n

end A052953

/-! ## A052953.P12766418437982139042

`2*(a(n-1)-n%2)` with `a(0)=2`
-/

namespace A052953.P12766418437982139042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (a (n - 1) - ((n % 2 : ℕ) : ℤ))

end

end A052953.P12766418437982139042

namespace A052953

/-- `2*(a(n-1)-n%2)` -/
def P12766418437982139042.Spec : Prop :=
  ∀ n, P12766418437982139042.a n = A052953 n

end A052953

/-! ## A052953.P16939319500458375623

`2*(a(n-1)-and(1, n))` with `a(0)=2`
-/

namespace A052953.P16939319500458375623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (a (n - 1) - (Nat.land 1 n : ℤ))

end

end A052953.P16939319500458375623

namespace A052953

/-- `2*(a(n-1)-and(1, n))` -/
def P16939319500458375623.Spec : Prop :=
  ∀ n, P16939319500458375623.a n = A052953 n

end A052953

/-! ## A052953.P6838809344808369726

`2*(gcd(2, n)+a(n-1)-2)` with `a(0)=2`
-/

namespace A052953.P6838809344808369726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * ((Nat.gcd 2 n : ℤ) + (a (n - 1) - 2))

end

end A052953.P6838809344808369726

namespace A052953

/-- `2*(gcd(2, n)+a(n-1)-2)` -/
def P6838809344808369726.Spec : Prop :=
  ∀ n, P6838809344808369726.a n = A052953 n

end A052953

/-! ## A052953.P13672216692809147579

`4*a(n-2)-gcd(4, 2*n)` with `a(0)=2, a(1)=2`
-/

namespace A052953.P13672216692809147579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  4 * a (n - 2) - (Nat.gcd 4 (2 * n) : ℤ)

end

end A052953.P13672216692809147579

namespace A052953

/-- `4*a(n-2)-gcd(4, 2*n)` -/
def P13672216692809147579.Spec : Prop :=
  ∀ n, P13672216692809147579.a n = A052953 n

end A052953

/-! ## A052953.P14775037428373960436

`or(3*a(n-2), a(n-2))` with `a(0)=2, a(1)=2, a(2)=4`
-/

namespace A052953.P14775037428373960436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 4] fun n a =>
  Nat.lor (3 * a (n - 2)) (a (n - 2))

end

end A052953.P14775037428373960436

namespace A052953

/-- `or(3*a(n-2), a(n-2))` -/
def P14775037428373960436.Spec : Prop :=
  ∀ n, (P14775037428373960436.a n : ℤ) = A052953 n

end A052953

/-! ## A052953.P7855063441737283429

`a(n-1)-2*(1-a(n-2))` with `a(0)=2, a(1)=2`
-/

namespace A052953.P7855063441737283429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) - 2 * (1 - a (n - 2))

end

end A052953.P7855063441737283429

namespace A052953

/-- `a(n-1)-2*(1-a(n-2))` -/
def P7855063441737283429.Spec : Prop :=
  ∀ n, P7855063441737283429.a n = A052953 n

end A052953

/-! ## A052953.P14535538546157720762

`a(n-1)+lcm(2, 1-a(n-2))` with `a(0)=2, a(1)=2`
-/

namespace A052953.P14535538546157720762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) + Int.lcm 2 (1 - (a (n - 2) : ℤ))

end

end A052953.P14535538546157720762

namespace A052953

/-- `a(n-1)+lcm(2, 1-a(n-2))` -/
def P14535538546157720762.Spec : Prop :=
  ∀ n, (P14535538546157720762.a n : ℤ) = A052953 n

end A052953

/-! ## A052953.P1068504592701515371

`a(n-2)+a(n-1)+a(n-2)-2` with `a(0)=2, a(1)=2`
-/

namespace A052953.P1068504592701515371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2) - 2)

end

end A052953.P1068504592701515371

namespace A052953

/-- `a(n-2)+a(n-1)+a(n-2)-2` -/
def P1068504592701515371.Spec : Prop :=
  ∀ n, P1068504592701515371.a n = A052953 n

end A052953

/-! ## A052953.P13416029675981108858

`a(n-1)-floor(2-a(n-2)-a(n-2))` with `a(0)=2, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A052953.P13416029675981108858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) - (2 - a (n - 2) - a (n - 2))

end

end A052953.P13416029675981108858

namespace A052953

/-- `a(n-1)-floor(2-a(n-2)-a(n-2))` -/
def P13416029675981108858.Spec : Prop :=
  ∀ n, P13416029675981108858.a n = A052953 n

end A052953

/-! ## A052953.P18064175485440884937

`a(n-1)-(2-a(n-1)-a(n-1)%4)` with `a(0)=2, a(1)=2`
-/

namespace A052953.P18064175485440884937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) - (2 - a (n - 1) - Int.tmod (a (n - 1)) 4)

end

end A052953.P18064175485440884937

namespace A052953

/-- `a(n-1)-(2-a(n-1)-a(n-1)%4)` -/
def P18064175485440884937.Spec : Prop :=
  ∀ n, P18064175485440884937.a n = A052953 n

end A052953

/-! ## A052953.P13730903683364364844

`A128209(n+1)`
-/

namespace A052953.P13730903683364364844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 (n + 1)

end

end A052953.P13730903683364364844

namespace A052953

/-- `A128209(n+1)` -/
def P13730903683364364844.Spec : Prop :=
  ∀ n, P13730903683364364844.a n = A052953 n

end A052953

/-! ## A052953.P5532442899887979143

`lcm(2, A135231(n))`
-/

namespace A052953.P5532442899887979143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A135231 n)

end

end A052953.P5532442899887979143

namespace A052953

/-- `lcm(2, A135231(n))` -/
def P5532442899887979143.Spec : Prop :=
  ∀ n, (P5532442899887979143.a n : ℤ) = A052953 n

end A052953

/-!
# A052954: Expansion of (2-x-x^2-x^3)/((1-x)*(1-x^2-x^3)).

The programs for A052954, the canonical program `A052954.P2225336564007639036` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052954 has offset 0).

The definition of A052954 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2-x-x^2-x^3)/(1-x-x^2+x^4))` (program `A052954.P2225336564007639036`, by `A052954.P2225336564007639036.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052954.P2225336564007639036

`ogf((2-x-x^2-x^3)/(1-x-x^2+x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052954

/-- `ogf((2-x-x^2-x^3)/(1-x-x^2+x^4))` -/
def P2225336564007639036.Spec : Prop :=
  ∀ n, P2225336564007639036.a n = A052954 n

theorem P2225336564007639036.correct : P2225336564007639036.Spec := by
  intro n
  simp only [A052954]

end A052954

/-! ## A052954.P13798438796298029713

`a(n-2)+a(n-3)-1` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A052954.P13798438796298029713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 2] fun n a =>
  a (n - 2) + a (n - 3) - 1

end

end A052954.P13798438796298029713

namespace A052954

/-- `a(n-2)+a(n-3)-1` -/
def P13798438796298029713.Spec : Prop :=
  ∀ n, P13798438796298029713.a n = A052954 n

end A052954

/-! ## A052954.P16979764851510967012

`1+A000931(n+3)`
-/

namespace A052954.P16979764851510967012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000931 (n + 3)

end

end A052954.P16979764851510967012

namespace A052954

/-- `1+A000931(n+3)` -/
def P16979764851510967012.Spec : Prop :=
  ∀ n, P16979764851510967012.a n = A052954 n

end A052954

/-! ## A052954.P6521669547364362652

`a(n-2)-(1-a(n-3))` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A052954.P6521669547364362652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 2] fun n a =>
  a (n - 2) - (1 - a (n - 3))

end

end A052954.P6521669547364362652

namespace A052954

/-- `a(n-2)-(1-a(n-3))` -/
def P6521669547364362652.Spec : Prop :=
  ∀ n, P6521669547364362652.a n = A052954 n

end A052954

/-! ## A052954.P2511309400361312483

`A182097(n)+1`
-/

namespace A052954.P2511309400361312483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 n + 1

end

end A052954.P2511309400361312483

namespace A052954

/-- `A182097(n)+1` -/
def P2511309400361312483.Spec : Prop :=
  ∀ n, P2511309400361312483.a n = A052954 n

end A052954

/-! ## A052954.P9659426735745077579

`∑[A078027(n)]+1`
-/

namespace A052954.P9659426735745077579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A052954.P9659426735745077579

namespace A052954

/-- `∑[A078027(n)]+1` -/
def P9659426735745077579.Spec : Prop :=
  ∀ n, P9659426735745077579.a n = A052954 n

end A052954

/-! ## A052954.P6876803754310400598

`A133034(n+7)+1`
-/

namespace A052954.P6876803754310400598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (n + 7) + 1

end

end A052954.P6876803754310400598

namespace A052954

/-- `A133034(n+7)+1` -/
def P6876803754310400598.Spec : Prop :=
  ∀ n, P6876803754310400598.a n = A052954 n

end A052954

/-! ## A052954.P7474439617263806522

`A114775(A168205(n+1))+1`
-/

namespace A052954.P7474439617263806522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (A168205 (n + 1)).toNat + 1

end

end A052954.P7474439617263806522

namespace A052954

/-- `A114775(A168205(n+1))+1` -/
def P7474439617263806522.Spec : Prop :=
  ∀ n, P7474439617263806522.a n = A052954 n

end A052954

/-! ## A052954.P7339175540426078116

`A114775(A042963(n+2))+1`
-/

namespace A052954.P7339175540426078116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (A042963 (n + 2)).toNat + 1

end

end A052954.P7339175540426078116

namespace A052954

/-- `A114775(A042963(n+2))+1` -/
def P7339175540426078116.Spec : Prop :=
  ∀ n, P7339175540426078116.a n = A052954 n

end A052954

/-! ## A052954.P17767591150693935307

`A114775(A047425(n+2))+1`
-/

namespace A052954.P17767591150693935307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (A047425 (n + 2)).toNat + 1

end

end A052954.P17767591150693935307

namespace A052954

/-- `A114775(A047425(n+2))+1` -/
def P17767591150693935307.Spec : Prop :=
  ∀ n, P17767591150693935307.a n = A052954 n

end A052954

/-! ## A052954.P4733908766096707223

`A114775(A047431(n+2))+1`
-/

namespace A052954.P4733908766096707223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (A047431 (n + 2)).toNat + 1

end

end A052954.P4733908766096707223

namespace A052954

/-- `A114775(A047431(n+2))+1` -/
def P4733908766096707223.Spec : Prop :=
  ∀ n, P4733908766096707223.a n = A052954 n

end A052954

/-! ## A052954.P7767853197782767025

`A114775(A074231(n+2))+1`
-/

namespace A052954.P7767853197782767025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (A074231 (n + 2)).toNat + 1

end

end A052954.P7767853197782767025

namespace A052954

/-- `A114775(A074231(n+2))+1` -/
def P7767853197782767025.Spec : Prop :=
  ∀ n, P7767853197782767025.a n = A052954 n

end A052954

/-! ## A052954.P17943116200727746306

`A114775(A154708(n+2))+1`
-/

namespace A052954.P17943116200727746306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (A154708 (n + 2)).toNat + 1

end

end A052954.P17943116200727746306

namespace A052954

/-- `A114775(A154708(n+2))+1` -/
def P17943116200727746306.Spec : Prop :=
  ∀ n, P17943116200727746306.a n = A052954 n

end A052954

/-! ## A052954.P8980692351777131527

`A114775(A338062(n+2))+1`
-/

namespace A052954.P8980692351777131527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (A338062 (n + 2)).toNat + 1

end

end A052954.P8980692351777131527

namespace A052954

/-- `A114775(A338062(n+2))+1` -/
def P8980692351777131527.Spec : Prop :=
  ∀ n, P8980692351777131527.a n = A052954 n

end A052954

/-! ## A052954.P3810859298156380380

`A127682(2*(n+1))+1-A127682(2*n+1)`
-/

namespace A052954.P3810859298156380380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (2 * (n + 1)) + (1 - A127682 (2 * n + 1))

end

end A052954.P3810859298156380380

namespace A052954

/-- `A127682(2*(n+1))+1-A127682(2*n+1)` -/
def P3810859298156380380.Spec : Prop :=
  ∀ n, P3810859298156380380.a n = A052954 n

end A052954

/-! ## A052954.P12362063554313894153

`A134816(n+1)+A134816(n+2)-A023434(n)`
-/

namespace A052954.P12362063554313894153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1) + (A134816 (n + 2) - A023434 n)

end

end A052954.P12362063554313894153

namespace A052954

/-- `A134816(n+1)+A134816(n+2)-A023434(n)` -/
def P12362063554313894153.Spec : Prop :=
  ∀ n, P12362063554313894153.a n = A052954 n

end A052954

/-! ## A052954.P10860282383455222026

`Δ[A023434(n)]+1`
-/

namespace A052954.P10860282383455222026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A052954.P10860282383455222026

namespace A052954

/-- `Δ[A023434(n)]+1` -/
def P10860282383455222026.Spec : Prop :=
  ∀ n, P10860282383455222026.a n = A052954 n

end A052954

/-! ## A052954.P3132888620635611411

`Δ[A228361(n+2)]+1`
-/

namespace A052954.P3132888620635611411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A052954.P3132888620635611411

namespace A052954

/-- `Δ[A228361(n+2)]+1` -/
def P3132888620635611411.Spec : Prop :=
  ∀ n, P3132888620635611411.a n = A052954 n

end A052954

/-! ## A052954.P6600285713853251444

`Δ[A134816(n+3)]+1`
-/

namespace A052954.P6600285713853251444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A052954.P6600285713853251444

namespace A052954

/-- `Δ[A134816(n+3)]+1` -/
def P6600285713853251444.Spec : Prop :=
  ∀ n, P6600285713853251444.a n = A052954 n

end A052954

/-!
# A052955: a(2n) = 2*2^n - 1, a(2n+1) = 3*2^n - 1.

The programs for A052955, the canonical program `A052955.P5313474801376957548` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052955 has offset 0).

The definition of A052955 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052955.P5313474801376957548

`2*a(n-2)+1` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052955

/-- `2*a(n-2)+1` -/
def P5313474801376957548.Spec : Prop :=
  ∀ n, (P5313474801376957548.a n : ℤ) = A052955 n

theorem P5313474801376957548.correct : P5313474801376957548.Spec := by
  intro n
  simp only [A052955]

end A052955

/-! ## A052955.P18042352714136480713

`2^ceil(n/2)+2^floor(n/2)-1`
-/

namespace A052955.P18042352714136480713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ) + (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) - 1

end

end A052955.P18042352714136480713

namespace A052955

/-- `2^ceil(n/2)+2^floor(n/2)-1` -/
def P18042352714136480713.Spec : Prop :=
  ∀ n, P18042352714136480713.a n = (A052955 n : ℚ)

end A052955

/-! ## A052955.P18382556097056897565

`A027383(n+1)/2`
-/

namespace A052955.P18382556097056897565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027383 (n + 1) : ℚ) / 2

end

end A052955.P18382556097056897565

namespace A052955

/-- `A027383(n+1)/2` -/
def P18382556097056897565.Spec : Prop :=
  ∀ n, P18382556097056897565.a n = (A052955 n : ℚ)

end A052955

/-! ## A052955.P18360218874352027278

`∑[ogf((1+x-x^2)/(1-2x^2))]`
-/

namespace A052955.P18360218874352027278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, 0, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052955.P18360218874352027278

namespace A052955

/-- `∑[ogf((1+x-x^2)/(1-2x^2))]` -/
def P18360218874352027278.Spec : Prop :=
  ∀ n, P18360218874352027278.a n = A052955 n

end A052955

/-! ## A052955.P10594760523975487900

`ogf((1+x-x^2)/(1-x-2x^2+2x^3))`
-/

namespace A052955.P10594760523975487900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -1, -2, 2] n

end

end A052955.P10594760523975487900

namespace A052955

/-- `ogf((1+x-x^2)/(1-x-2x^2+2x^3))` -/
def P10594760523975487900.Spec : Prop :=
  ∀ n, P10594760523975487900.a n = A052955 n

end A052955

/-! ## A052955.P11584755109417791991

`or(1, 2*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A052955.P11584755109417791991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lor 1 (2 * a (n - 2))

end

end A052955.P11584755109417791991

namespace A052955

/-- `or(1, 2*a(n-2))` -/
def P11584755109417791991.Spec : Prop :=
  ∀ n, (P11584755109417791991.a n : ℤ) = A052955 n

end A052955

/-! ## A052955.P2456086371974271852

`xor(1, 2*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A052955.P2456086371974271852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.xor 1 (2 * a (n - 2))

end

end A052955.P2456086371974271852

namespace A052955

/-- `xor(1, 2*a(n-2))` -/
def P2456086371974271852.Spec : Prop :=
  ∀ n, (P2456086371974271852.a n : ℤ) = A052955 n

end A052955

/-! ## A052955.P14483758585845290484

`∑[2*a(n-2)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A052955.P14483758585845290484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052955.P14483758585845290484

namespace A052955

/-- `∑[2*a(n-2)]` -/
def P14483758585845290484.Spec : Prop :=
  ∀ n, (P14483758585845290484.a n : ℤ) = A052955 n

end A052955

/-! ## A052955.P362908451152650444

`∑[abs(A117575(n))]`
-/

namespace A052955.P362908451152650444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117575 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052955.P362908451152650444

namespace A052955

/-- `∑[abs(A117575(n))]` -/
def P362908451152650444.Spec : Prop :=
  ∀ n, P362908451152650444.a n = A052955 n

end A052955

/-! ## A052955.P1440116278394018778

`∑[A158780(n+1)]`
-/

namespace A052955.P1440116278394018778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052955.P1440116278394018778

namespace A052955

/-- `∑[A158780(n+1)]` -/
def P1440116278394018778.Spec : Prop :=
  ∀ n, P1440116278394018778.a n = A052955 n

end A052955

/-! ## A052955.P2917888417948727299

`∑[A016116(abs(1-n))]`
-/

namespace A052955.P2917888417948727299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052955.P2917888417948727299

namespace A052955

/-- `∑[A016116(abs(1-n))]` -/
def P2917888417948727299.Spec : Prop :=
  ∀ n, P2917888417948727299.a n = A052955 n

end A052955

/-! ## A052955.P16236658645616826546

`∑[2^A140106(n+1)]`
-/

namespace A052955.P16236658645616826546
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A140106 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052955.P16236658645616826546

namespace A052955

/-- `∑[2^A140106(n+1)]` -/
def P16236658645616826546.Spec : Prop :=
  ∀ n, P16236658645616826546.a n = (A052955 n : ℚ)

end A052955

/-! ## A052955.P13702244461616149197

`A385396(A004278(n+2))`
-/

namespace A052955.P13702244461616149197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385396 (A004278 (n + 2)).toNat

end

end A052955.P13702244461616149197

namespace A052955

/-- `A385396(A004278(n+2))` -/
def P13702244461616149197.Spec : Prop :=
  ∀ n, P13702244461616149197.a n = A052955 n

end A052955

/-! ## A052955.P4169143999293750688

`∪[A083329(n), A126646(n)]`
-/

namespace A052955.P4169143999293750688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A052955.P4169143999293750688

namespace A052955

/-- `∪[A083329(n), A126646(n)]` -/
def P4169143999293750688.Spec : Prop :=
  ∀ n, (P4169143999293750688.a n : ℤ) = A052955 n

end A052955

/-! ## A052955.P4753594361572839873

`∪[A284354(n), A290662(n)]`
-/

namespace A052955.P4753594361572839873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284354 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290662 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A052955.P4753594361572839873

namespace A052955

/-- `∪[A284354(n), A290662(n)]` -/
def P4753594361572839873.Spec : Prop :=
  ∀ n, (P4753594361572839873.a n : ℤ) = A052955 n

end A052955

/-! ## A052955.P10417230376595991166

`∪[A126646(n), A153893(n)]`
-/

namespace A052955.P10417230376595991166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A052955.P10417230376595991166

namespace A052955

/-- `∪[A126646(n), A153893(n)]` -/
def P10417230376595991166.Spec : Prop :=
  ∀ n, (P10417230376595991166.a n : ℤ) = A052955 n

end A052955

/-! ## A052955.P1072825928903716536

`(A136252(n)+1)/2`
-/

namespace A052955.P1072825928903716536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136252 n + 1 : ℚ) / 2

end

end A052955.P1072825928903716536

namespace A052955

/-- `(A136252(n)+1)/2` -/
def P1072825928903716536.Spec : Prop :=
  ∀ n, P1072825928903716536.a n = (A052955 n : ℚ)

end A052955

/-! ## A052955.P16495034758787888015

`A090989(n+1)%A209721(n+1)`
-/

namespace A052955.P16495034758787888015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090989 (n + 1)) (A209721 (n + 1))

end

end A052955.P16495034758787888015

namespace A052955

/-- `A090989(n+1)%A209721(n+1)` -/
def P16495034758787888015.Spec : Prop :=
  ∀ n, P16495034758787888015.a n = A052955 n

end A052955

/-! ## A052955.P4403994857351288315

`A010737(n)%A163978(n+1)`
-/

namespace A052955.P4403994857351288315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010737 n) (A163978 (n + 1))

end

end A052955.P4403994857351288315

namespace A052955

/-- `A010737(n)%A163978(n+1)` -/
def P4403994857351288315.Spec : Prop :=
  ∀ n, P4403994857351288315.a n = A052955 n

end A052955

/-! ## A052955.P8351572478699972972

`xor(A010737(n), A163888(n+1))`
-/

namespace A052955.P8351572478699972972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010737 n) (A163888 (n + 1))

end

end A052955.P8351572478699972972

namespace A052955

/-- `xor(A010737(n), A163888(n+1))` -/
def P8351572478699972972.Spec : Prop :=
  ∀ n, P8351572478699972972.a n = A052955 n

end A052955

/-!
# A052956: a(n) = 2^n + Fibonacci(n+1).

The programs for A052956, the canonical program `A052956.P17297946195592474541` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052956 has offset 0).

The definition of A052956 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052956.P17297946195592474541

`3*a(n-1)-a(n-2)-2*a(n-3)` with `a(0)=2, a(1)=3, a(2)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052956

/-- `3*a(n-1)-a(n-2)-2*a(n-3)` -/
def P17297946195592474541.Spec : Prop :=
  ∀ n, P17297946195592474541.a n = A052956 n

theorem P17297946195592474541.correct : P17297946195592474541.Spec := by
  intro n
  simp only [A052956]

end A052956

/-! ## A052956.P3898256888380250237

`ogf((2-3x-x^2)/(1-3x+x^2+2x^3))`
-/

namespace A052956.P3898256888380250237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, -1] [1, -3, 1, 2] n

end

end A052956.P3898256888380250237

namespace A052956

/-- `ogf((2-3x-x^2)/(1-3x+x^2+2x^3))` -/
def P3898256888380250237.Spec : Prop :=
  ∀ n, P3898256888380250237.a n = A052956 n

end A052956

/-! ## A052956.P13940730770007990889

`∑[a(n-1)+a(n-2)]+2^n` with `a(0)=1, a(1)=0`
-/

namespace A052956.P13940730770007990889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 ^ n

end

end A052956.P13940730770007990889

namespace A052956

/-- `∑[a(n-1)+a(n-2)]+2^n` -/
def P13940730770007990889.Spec : Prop :=
  ∀ n, (P13940730770007990889.a n : ℤ) = A052956 n

end A052956

/-! ## A052956.P1299835803407177782

`2^n+A000045(n+1)`
-/

namespace A052956.P1299835803407177782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + A000045 (n + 1)

end

end A052956.P1299835803407177782

namespace A052956

/-- `2^n+A000045(n+1)` -/
def P1299835803407177782.Spec : Prop :=
  ∀ n, P1299835803407177782.a n = A052956 n

end A052956

/-! ## A052956.P7730803795722797039

`A212804(n+2)+2^n`
-/

namespace A052956.P7730803795722797039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) + (2 ^ n : ℤ)

end

end A052956.P7730803795722797039

namespace A052956

/-- `A212804(n+2)+2^n` -/
def P7730803795722797039.Spec : Prop :=
  ∀ n, P7730803795722797039.a n = A052956 n

end A052956

/-! ## A052956.P17763556740937599600

`A324969(n+2)+2^n`
-/

namespace A052956.P17763556740937599600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 2) + (2 ^ n : ℤ)

end

end A052956.P17763556740937599600

namespace A052956

/-- `A324969(n+2)+2^n` -/
def P17763556740937599600.Spec : Prop :=
  ∀ n, P17763556740937599600.a n = A052956 n

end A052956

/-! ## A052956.P2798599107574842606

`2^n-A152163(n+3)`
-/

namespace A052956.P2798599107574842606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A152163 (n + 3)

end

end A052956.P2798599107574842606

namespace A052956

/-- `2^n-A152163(n+3)` -/
def P2798599107574842606.Spec : Prop :=
  ∀ n, P2798599107574842606.a n = A052956 n

end A052956

/-! ## A052956.P3639524481027702969

`4*a(n-2)-A000032(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A052956.P3639524481027702969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  4 * a (n - 2) - A000032 (n - 2)

end

end A052956.P3639524481027702969

namespace A052956

/-- `4*a(n-2)-A000032(n-2)` -/
def P3639524481027702969.Spec : Prop :=
  ∀ n, P3639524481027702969.a n = A052956 n

end A052956

/-! ## A052956.P13707341786807305136

`A020695(n)+A008466(n)`
-/

namespace A052956.P13707341786807305136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + A008466 n

end

end A052956.P13707341786807305136

namespace A052956

/-- `A020695(n)+A008466(n)` -/
def P13707341786807305136.Spec : Prop :=
  ∀ n, P13707341786807305136.a n = A052956 n

end A052956

/-! ## A052956.P7927405270301342814

`A081659(n)+A000325(n)`
-/

namespace A052956.P7927405270301342814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081659 n + A000325 n

end

end A052956.P7927405270301342814

namespace A052956

/-- `A081659(n)+A000325(n)` -/
def P7927405270301342814.Spec : Prop :=
  ∀ n, P7927405270301342814.a n = A052956 n

end A052956

/-! ## A052956.P6258968900401234396

`A074331(n)+A052531(n)`
-/

namespace A052956.P6258968900401234396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074331 n + A052531 n

end

end A052956.P6258968900401234396

namespace A052956

/-- `A074331(n)+A052531(n)` -/
def P6258968900401234396.Spec : Prop :=
  ∀ n, P6258968900401234396.a n = A052956 n

end A052956

/-! ## A052956.P9378102489220278719

`A127968(n)+A051049(n)`
-/

namespace A052956.P9378102489220278719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127968 n + A051049 n

end

end A052956.P9378102489220278719

namespace A052956

/-- `A127968(n)+A051049(n)` -/
def P9378102489220278719.Spec : Prop :=
  ∀ n, P9378102489220278719.a n = A052956 n

end A052956

/-! ## A052956.P3677900819060049881

`A115008(n)+A100455(n)`
-/

namespace A052956.P3677900819060049881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115008 n + A100455 n

end

end A052956.P3677900819060049881

namespace A052956

/-- `A115008(n)+A100455(n)` -/
def P3677900819060049881.Spec : Prop :=
  ∀ n, P3677900819060049881.a n = A052956 n

end A052956

/-! ## A052956.P18083170949409851710

`A166920(n)+A052959(n)`
-/

namespace A052956.P18083170949409851710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166920 n + A052959 n

end

end A052956.P18083170949409851710

namespace A052956

/-- `A166920(n)+A052959(n)` -/
def P18083170949409851710.Spec : Prop :=
  ∀ n, P18083170949409851710.a n = A052956 n

end A052956

/-! ## A052956.P2063506486280057340

`A377628(n)+A119587(n)`
-/

namespace A052956.P2063506486280057340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377628 n + A119587 n

end

end A052956.P2063506486280057340

namespace A052956

/-- `A377628(n)+A119587(n)` -/
def P2063506486280057340.Spec : Prop :=
  ∀ n, P2063506486280057340.a n = A052956 n

end A052956

/-! ## A052956.P13446587721840852555

`A088859(n)-A212804(n)`
-/

namespace A052956.P13446587721840852555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088859 n - A212804 n

end

end A052956.P13446587721840852555

namespace A052956

/-- `A088859(n)-A212804(n)` -/
def P13446587721840852555.Spec : Prop :=
  ∀ n, P13446587721840852555.a n = A052956 n

end A052956

/-! ## A052956.P13244051434374623551

`∑[A212804(n)+A011782(n)]`
-/

namespace A052956.P13244051434374623551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052956.P13244051434374623551

namespace A052956

/-- `∑[A212804(n)+A011782(n)]` -/
def P13244051434374623551.Spec : Prop :=
  ∀ n, P13244051434374623551.a n = A052956 n

end A052956

/-! ## A052956.P4200235969931533506

`A000071(n+1)+A000051(n)`
-/

namespace A052956.P4200235969931533506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + A000051 n

end

end A052956.P4200235969931533506

namespace A052956

/-- `A000071(n+1)+A000051(n)` -/
def P4200235969931533506.Spec : Prop :=
  ∀ n, P4200235969931533506.a n = A052956 n

end A052956

/-! ## A052956.P6064177247781863075

`A001611(n+1)+A000225(n)`
-/

namespace A052956.P6064177247781863075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1) + A000225 n

end

end A052956.P6064177247781863075

namespace A052956

/-- `A001611(n+1)+A000225(n)` -/
def P6064177247781863075.Spec : Prop :=
  ∀ n, P6064177247781863075.a n = A052956 n

end A052956

/-! ## A052956.P15501814410831600351

`A062510(n)+A007492(n+1)`
-/

namespace A052956.P15501814410831600351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 n + A007492 (n + 1)

end

end A052956.P15501814410831600351

namespace A052956

/-- `A062510(n)+A007492(n+1)` -/
def P15501814410831600351.Spec : Prop :=
  ∀ n, P15501814410831600351.a n = A052956 n

end A052956

/-!
# A052957: Expansion of 2*(1-x-x^2)/((1-2*x)*(1-2*x^2)).

The programs for A052957, the canonical program `A052957.P12415846010166955522` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052957 has offset 0).

The definition of A052957 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2-2x-2x^2)/(1-2x-2x^2+4x^3))` (program `A052957.P12415846010166955522`, by `A052957.P12415846010166955522.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052957.P12415846010166955522

`ogf((2-2x-2x^2)/(1-2x-2x^2+4x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052957

/-- `ogf((2-2x-2x^2)/(1-2x-2x^2+4x^3))` -/
def P12415846010166955522.Spec : Prop :=
  ∀ n, P12415846010166955522.a n = A052957 n

theorem P12415846010166955522.correct : P12415846010166955522.Spec := by
  intro n
  simp only [A052957]

end A052957

/-! ## A052957.P3939584844140272210

`2*a(n-1)+2*a(n-2)-4*a(n-3)` with `a(0)=2, a(1)=2, a(2)=6`
-/

namespace A052957.P3939584844140272210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 6] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - 4 * a (n - 3)

end

end A052957.P3939584844140272210

namespace A052957

/-- `2*a(n-1)+2*a(n-2)-4*a(n-3)` -/
def P3939584844140272210.Spec : Prop :=
  ∀ n, P3939584844140272210.a n = A052957 n

end A052957

/-! ## A052957.P18073869560581786607

`∑[2*a(n-2)]+2^n` with `a(0)=1, a(1)=-1`
-/

namespace A052957.P18073869560581786607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 ^ n : ℤ)

end

end A052957.P18073869560581786607

namespace A052957

/-- `∑[2*a(n-2)]+2^n` -/
def P18073869560581786607.Spec : Prop :=
  ∀ n, P18073869560581786607.a n = A052957 n

end A052957

/-! ## A052957.P10892569948241510151

`2^n-∑[2*a(n-2)]` with `a(0)=-1, a(1)=1`
-/

namespace A052957.P10892569948241510151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052957.P10892569948241510151

namespace A052957

/-- `2^n-∑[2*a(n-2)]` -/
def P10892569948241510151.Spec : Prop :=
  ∀ n, P10892569948241510151.a n = A052957 n

end A052957

/-! ## A052957.P2915472139970255746

`∑[2*A113979(n)]`
-/

namespace A052957.P2915472139970255746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052957.P2915472139970255746

namespace A052957

/-- `∑[2*A113979(n)]` -/
def P2915472139970255746.Spec : Prop :=
  ∀ n, P2915472139970255746.a n = A052957 n

end A052957

/-! ## A052957.P12240086581700822967

`A077957(n)+2^n`
-/

namespace A052957.P12240086581700822967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n + (2 ^ n : ℤ)

end

end A052957.P12240086581700822967

namespace A052957

/-- `A077957(n)+2^n` -/
def P12240086581700822967.Spec : Prop :=
  ∀ n, P12240086581700822967.a n = A052957 n

end A052957

/-! ## A052957.P10893805095679671416

`2*Δ[A005418(n+1)]`
-/

namespace A052957.P10893805095679671416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A052957.P10893805095679671416

namespace A052957

/-- `2*Δ[A005418(n+1)]` -/
def P10893805095679671416.Spec : Prop :=
  ∀ n, P10893805095679671416.a n = A052957 n

end A052957

/-! ## A052957.P17209336103936758005

`2*Δ[A056326(n+1)]`
-/

namespace A052957.P17209336103936758005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A052957.P17209336103936758005

namespace A052957

/-- `2*Δ[A056326(n+1)]` -/
def P17209336103936758005.Spec : Prop :=
  ∀ n, P17209336103936758005.a n = A052957 n

end A052957

/-! ## A052957.P17890996839711050720

`A131575(n+1)+2^n`
-/

namespace A052957.P17890996839711050720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (n + 1) + (2 ^ n : ℤ)

end

end A052957.P17890996839711050720

namespace A052957

/-- `A131575(n+1)+2^n` -/
def P17890996839711050720.Spec : Prop :=
  ∀ n, P17890996839711050720.a n = A052957 n

end A052957

/-! ## A052957.P370948134481132966

`A152166(n)+2*a(n-1)` with `a(0)=2`
-/

namespace A052957.P370948134481132966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A152166 n + 2 * a (n - 1)

end

end A052957.P370948134481132966

namespace A052957

/-- `A152166(n)+2*a(n-1)` -/
def P370948134481132966.Spec : Prop :=
  ∀ n, P370948134481132966.a n = A052957 n

end A052957

/-! ## A052957.P2870101191450795923

`Δ[Δ[A163978(n+1)]]+2^n`
-/

namespace A052957.P2870101191450795923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163978 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (2 ^ n : ℤ)

end

end A052957.P2870101191450795923

namespace A052957

/-- `Δ[Δ[A163978(n+1)]]+2^n` -/
def P2870101191450795923.Spec : Prop :=
  ∀ n, P2870101191450795923.a n = A052957 n

end A052957

/-! ## A052957.P17037553200476251684

`A045674(A042964(n+1))`
-/

namespace A052957.P17037553200476251684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045674 (A042964 (n + 1)).toNat

end

end A052957.P17037553200476251684

namespace A052957

/-- `A045674(A042964(n+1))` -/
def P17037553200476251684.Spec : Prop :=
  ∀ n, P17037553200476251684.a n = A052957 n

end A052957

/-! ## A052957.P4694554299429197092

`A045674(A053438(n+1))`
-/

namespace A052957.P4694554299429197092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045674 (A053438 (n + 1)).toNat

end

end A052957.P4694554299429197092

namespace A052957

/-- `A045674(A053438(n+1))` -/
def P4694554299429197092.Spec : Prop :=
  ∀ n, P4694554299429197092.a n = A052957 n

end A052957

/-! ## A052957.P6650785191682065903

`A016724(n)+A000295(n)`
-/

namespace A052957.P6650785191682065903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016724 n + A000295 n

end

end A052957.P6650785191682065903

namespace A052957

/-- `A016724(n)+A000295(n)` -/
def P6650785191682065903.Spec : Prop :=
  ∀ n, P6650785191682065903.a n = A052957 n

end A052957

/-! ## A052957.P9351086680476236050

`A052552(n)+A000225(n)`
-/

namespace A052957.P9351086680476236050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 n + A000225 n

end

end A052957.P9351086680476236050

namespace A052957

/-- `A052552(n)+A000225(n)` -/
def P9351086680476236050.Spec : Prop :=
  ∀ n, P9351086680476236050.a n = A052957 n

end A052957

/-! ## A052957.P14993126365299746345

`A000079(n)+A077957(n)`
-/

namespace A052957.P14993126365299746345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A077957 n

end

end A052957.P14993126365299746345

namespace A052957

/-- `A000079(n)+A077957(n)` -/
def P14993126365299746345.Spec : Prop :=
  ∀ n, P14993126365299746345.a n = A052957 n

end A052957

/-! ## A052957.P17260584226063399419

`A213173(n)+A079102(n)`
-/

namespace A052957.P17260584226063399419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213173 n + A079102 n

end

end A052957.P17260584226063399419

namespace A052957

/-- `A213173(n)+A079102(n)` -/
def P17260584226063399419.Spec : Prop :=
  ∀ n, P17260584226063399419.a n = A052957 n

end A052957

/-! ## A052957.P15792208448282130248

`A354294(n)+A074323(n)`
-/

namespace A052957.P15792208448282130248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354294 n + A074323 n

end

end A052957.P15792208448282130248

namespace A052957

/-- `A354294(n)+A074323(n)` -/
def P15792208448282130248.Spec : Prop :=
  ∀ n, P15792208448282130248.a n = A052957 n

end A052957

/-! ## A052957.P484349049615735046

`xor(A077957(n), A171559(n))`
-/

namespace A052957.P484349049615735046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077957 n) (A171559 n)

end

end A052957.P484349049615735046

namespace A052957

/-- `xor(A077957(n), A171559(n))` -/
def P484349049615735046.Spec : Prop :=
  ∀ n, P484349049615735046.a n = A052957 n

end A052957

/-!
# A052958: Expansion of g.f.: (1-x)/(1-3*x-2*x^3+2*x^4).

The programs for A052958, the canonical program `A052958.P528274782460061342` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052958 has offset 0).

The definition of A052958 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-3x-2x^3+2x^4))` (program `A052958.P528274782460061342`, by `A052958.P528274782460061342.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052958.P528274782460061342

`ogf((1-x)/(1-3x-2x^3+2x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052958

/-- `ogf((1-x)/(1-3x-2x^3+2x^4))` -/
def P528274782460061342.Spec : Prop :=
  ∀ n, P528274782460061342.a n = A052958 n

theorem P528274782460061342.correct : P528274782460061342.Spec := by
  intro n
  simp only [A052958]

end A052958

/-! ## A052958.P8649386953948943494

`3*a(n-1)+2*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=20`
-/

namespace A052958.P8649386953948943494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6, 20] fun n a =>
  3 * a (n - 1) + 2 * a (n - 3) - 2 * a (n - 4)

end

end A052958.P8649386953948943494

namespace A052958

/-- `3*a(n-1)+2*a(n-3)-2*a(n-4)` -/
def P8649386953948943494.Spec : Prop :=
  ∀ n, P8649386953948943494.a n = A052958 n

end A052958

/-! ## A052958.P14917319664243665282

`A187187(2*(A022020(n)-1))`
-/

namespace A052958.P14917319664243665282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (2 * (A022020 n - 1)).toNat

end

end A052958.P14917319664243665282

namespace A052958

/-- `A187187(2*(A022020(n)-1))` -/
def P14917319664243665282.Spec : Prop :=
  ∀ n, P14917319664243665282.a n = A052958 n

end A052958

/-!
# A052959: a(2n) = a(2n-1)+a(2n-2), a(2n+1) = a(2n)+a(2n-1)-1, a(0)=2, a(1)=1.

The programs for A052959, the canonical program `A052959.P4550285908170391056` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052959 has offset 0).

The definition of A052959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A052959.P4550285908170391056

`2*a(n-2)+a(n-3)-1` with `a(0)=2, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052959

/-- `2*a(n-2)+a(n-3)-1` -/
def P4550285908170391056.Spec : Prop :=
  ∀ n, P4550285908170391056.a n = A052959 n

theorem P4550285908170391056.correct : P4550285908170391056.Spec := by
  intro n
  simp only [A052959]

end A052959

/-! ## A052959.P14031826589633629375

`A000045(n+1)+A059841(n)`
-/

namespace A052959.P14031826589633629375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + A059841 n

end

end A052959.P14031826589633629375

namespace A052959

/-- `A000045(n+1)+A059841(n)` -/
def P14031826589633629375.Spec : Prop :=
  ∀ n, P14031826589633629375.a n = A052959 n

end A052959

/-! ## A052959.P3004972828757670193

`∑[ogf((-2+x+2x^2)/(-1+2x^2+x^3))]`
-/

namespace A052959.P3004972828757670193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -2] [1, 0, -2, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052959.P3004972828757670193

namespace A052959

/-- `∑[ogf((-2+x+2x^2)/(-1+2x^2+x^3))]` -/
def P3004972828757670193.Spec : Prop :=
  ∀ n, P3004972828757670193.a n = A052959 n

end A052959

/-! ## A052959.P15588313954811934779

`ogf((2-x-2x^2)/(1-x-2x^2+x^3+x^4))`
-/

namespace A052959.P15588313954811934779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -2] [1, -1, -2, 1, 1] n

end

end A052959.P15588313954811934779

namespace A052959

/-- `ogf((2-x-2x^2)/(1-x-2x^2+x^3+x^4))` -/
def P15588313954811934779.Spec : Prop :=
  ∀ n, P15588313954811934779.a n = A052959 n

end A052959

/-! ## A052959.P16015223461873682798

`a(n-1)+a(n-2)-n%2` with `a(0)=2, a(1)=1`
-/

namespace A052959.P16015223461873682798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) + (a (n - 2) - ((n % 2 : ℕ) : ℤ))

end

end A052959.P16015223461873682798

namespace A052959

/-- `a(n-1)+a(n-2)-n%2` -/
def P16015223461873682798.Spec : Prop :=
  ∀ n, P16015223461873682798.a n = A052959 n

end A052959

/-! ## A052959.P1900095164104163943

`a(n-1)+a(n-2)-and(1, n)` with `a(0)=2, a(1)=1`
-/

namespace A052959.P1900095164104163943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) + (a (n - 2) - (Nat.land 1 n : ℤ))

end

end A052959.P1900095164104163943

namespace A052959

/-- `a(n-1)+a(n-2)-and(1, n)` -/
def P1900095164104163943.Spec : Prop :=
  ∀ n, P1900095164104163943.a n = A052959 n

end A052959

/-! ## A052959.P3155012826296750596

`a(n-1)-(and(1, n)-a(n-2))` with `a(0)=2, a(1)=1`
-/

namespace A052959.P3155012826296750596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) - ((Nat.land 1 n : ℤ) - a (n - 2))

end

end A052959.P3155012826296750596

namespace A052959

/-- `a(n-1)-(and(1, n)-a(n-2))` -/
def P3155012826296750596.Spec : Prop :=
  ∀ n, P3155012826296750596.a n = A052959 n

end A052959

/-! ## A052959.P4831283486062874479

`2*a(n-2)-(1-a(n-3))` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A052959.P4831283486062874479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n a =>
  2 * a (n - 2) - (1 - a (n - 3))

end

end A052959.P4831283486062874479

namespace A052959

/-- `2*a(n-2)-(1-a(n-3))` -/
def P4831283486062874479.Spec : Prop :=
  ∀ n, P4831283486062874479.a n = A052959 n

theorem P4831283486062874479.correct : P4831283486062874479.Spec := by
  intro n
  simp only [A052959, Nat.add_sub_cancel, A052959.P4831283486062874479.a, A052959.P4550285908170391056.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A052959

/-! ## A052959.P15107443800674471779

`gcd(2, n)-2+a(n-1)+a(n-2)` with `a(0)=2, a(1)=1`
-/

namespace A052959.P15107443800674471779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  (Nat.gcd 2 n : ℤ) - 2 + (a (n - 1) + a (n - 2))

end

end A052959.P15107443800674471779

namespace A052959

/-- `gcd(2, n)-2+a(n-1)+a(n-2)` -/
def P15107443800674471779.Spec : Prop :=
  ∀ n, P15107443800674471779.a n = A052959 n

end A052959

/-! ## A052959.P50730698361476495

`a(n-2)-1+a(n-2)+a(n-3)` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A052959.P50730698361476495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n a =>
  a (n - 2) - 1 + (a (n - 2) + a (n - 3))

end

end A052959.P50730698361476495

namespace A052959

/-- `a(n-2)-1+a(n-2)+a(n-3)` -/
def P50730698361476495.Spec : Prop :=
  ∀ n, P50730698361476495.a n = A052959 n

theorem P50730698361476495.correct : P50730698361476495.Spec := by
  intro n
  simp only [A052959, Nat.add_sub_cancel, A052959.P50730698361476495.a, A052959.P4550285908170391056.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A052959

/-! ## A052959.P14874854891977082648

`a(n-2)-(1-a(n-2)-a(n-3))` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A052959.P14874854891977082648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n a =>
  a (n - 2) - (1 - a (n - 2) - a (n - 3))

end

end A052959.P14874854891977082648

namespace A052959

/-- `a(n-2)-(1-a(n-2)-a(n-3))` -/
def P14874854891977082648.Spec : Prop :=
  ∀ n, P14874854891977082648.a n = A052959 n

theorem P14874854891977082648.correct : P14874854891977082648.Spec := by
  intro n
  simp only [A052959, Nat.add_sub_cancel, A052959.P14874854891977082648.a, A052959.P4550285908170391056.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A052959

/-! ## A052959.P1562462252424375570

`A109522(n+1)`
-/

namespace A052959.P1562462252424375570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109522 (n + 1)

end

end A052959.P1562462252424375570

namespace A052959

/-- `A109522(n+1)` -/
def P1562462252424375570.Spec : Prop :=
  ∀ n, P1562462252424375570.a n = A052959 n

end A052959

/-! ## A052959.P17439939243779875822

`A000071(n+1)+gcd(2, n)`
-/

namespace A052959.P17439939243779875822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (Nat.gcd 2 n : ℤ)

end

end A052959.P17439939243779875822

namespace A052959

/-- `A000071(n+1)+gcd(2, n)` -/
def P17439939243779875822.Spec : Prop :=
  ∀ n, P17439939243779875822.a n = A052959 n

end A052959

/-! ## A052959.P3013687561927988752

`A000045(n)+a(n-2)` with `a(0)=2, a(1)=1`
-/

namespace A052959.P3013687561927988752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A000045 n + a (n - 2)

end

end A052959.P3013687561927988752

namespace A052959

/-- `A000045(n)+a(n-2)` -/
def P3013687561927988752.Spec : Prop :=
  ∀ n, P3013687561927988752.a n = A052959 n

end A052959

/-! ## A052959.P7184698949402563286

`A000045(C(n+1, n))+and(1, n+1)`
-/

namespace A052959.P7184698949402563286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose (n + 1) n) + (Nat.land 1 (n + 1) : ℤ)

end

end A052959.P7184698949402563286

namespace A052959

/-- `A000045(C(n+1, n))+and(1, n+1)` -/
def P7184698949402563286.Spec : Prop :=
  ∀ n, P7184698949402563286.a n = A052959 n

end A052959

/-! ## A052959.P13303308858362232162

`A000032(n-1)+a(n-4)` with `a(0)=2, a(1)=1, a(2)=3, a(3)=3`
-/

namespace A052959.P13303308858362232162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3, 3] fun n a =>
  A000032 (n - 1) + a (n - 4)

end

end A052959.P13303308858362232162

namespace A052959

/-- `A000032(n-1)+a(n-4)` -/
def P13303308858362232162.Spec : Prop :=
  ∀ n, P13303308858362232162.a n = A052959 n

end A052959

/-! ## A052959.P4006855281324297823

`∑[A000045(2*n-n)-a(n-1)]` with `a(0)=2`
-/

namespace A052959.P4006855281324297823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A000045 (2 * n - n) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052959.P4006855281324297823

namespace A052959

/-- `∑[A000045(2*n-n)-a(n-1)]` -/
def P4006855281324297823.Spec : Prop :=
  ∀ n, P4006855281324297823.a n = A052959 n

end A052959

/-! ## A052959.P5061099779585582642

`A000045(2*n+1-n)+and(1, n+1)`
-/

namespace A052959.P5061099779585582642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1 - n) + (Nat.land 1 (n + 1) : ℤ)

end

end A052959.P5061099779585582642

namespace A052959

/-- `A000045(2*n+1-n)+and(1, n+1)` -/
def P5061099779585582642.Spec : Prop :=
  ∀ n, P5061099779585582642.a n = A052959 n

end A052959

/-! ## A052959.P17474382731555969527

`A127968(n)+A033999(n)`
-/

namespace A052959.P17474382731555969527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127968 n + A033999 n

end

end A052959.P17474382731555969527

namespace A052959

/-- `A127968(n)+A033999(n)` -/
def P17474382731555969527.Spec : Prop :=
  ∀ n, P17474382731555969527.a n = A052959 n

end A052959

/-! ## A052959.P7509821088694160780

`∑[A212804(n)+A033999(n)]`
-/

namespace A052959.P7509821088694160780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052959.P7509821088694160780

namespace A052959

/-- `∑[A212804(n)+A033999(n)]` -/
def P7509821088694160780.Spec : Prop :=
  ∀ n, P7509821088694160780.a n = A052959 n

end A052959

/-!
# A052960: Expansion of ( 1-x-x^2 ) / ( 1-2*x-2*x^2+x^3+x^4 ).

The programs for A052960, the canonical program `A052960.P13713803081637027407` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052960 has offset 0).

The definition of A052960 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-x^2)/(1-2x-2x^2+x^3+x^4))` (program `A052960.P13713803081637027407`, by `A052960.P13713803081637027407.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052960.P13713803081637027407

`ogf((1-x-x^2)/(1-2x-2x^2+x^3+x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052960

/-- `ogf((1-x-x^2)/(1-2x-2x^2+x^3+x^4))` -/
def P13713803081637027407.Spec : Prop :=
  ∀ n, P13713803081637027407.a n = A052960 n

theorem P13713803081637027407.correct : P13713803081637027407.Spec := by
  intro n
  simp only [A052960]

end A052960

/-! ## A052960.P7719077476513072896

`2*a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=7`
-/

namespace A052960.P7719077476513072896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 7] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - a (n - 3) - a (n - 4)

end

end A052960.P7719077476513072896

namespace A052960

/-- `2*a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` -/
def P7719077476513072896.Spec : Prop :=
  ∀ n, P7719077476513072896.a n = A052960 n

end A052960

/-! ## A052960.P18283902520763229610

`A052988(n+2)%Δ[A123888(n)]`
-/

namespace A052960.P18283902520763229610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052988 (n + 2)) (f1 (n + 1) - f1 n)

end

end A052960.P18283902520763229610

namespace A052960

/-- `A052988(n+2)%Δ[A123888(n)]` -/
def P18283902520763229610.Spec : Prop :=
  ∀ n, P18283902520763229610.a n = A052960 n

end A052960

/-! ## A052960.P7884397746316568069

`A004396(A004396(2*a(n-2)+5*a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A052960.P7884397746316568069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A004396 (A004396 (2 * a (n - 2) + 5 * a (n - 1)).toNat).toNat

end

end A052960.P7884397746316568069

namespace A052960

/-- `A004396(A004396(2*a(n-2)+5*a(n-1)))` -/
def P7884397746316568069.Spec : Prop :=
  ∀ n, P7884397746316568069.a n = A052960 n

end A052960

/-! ## A052960.P9802672738108670377

`A152467(A052952(2*n+1))+A004148(n)`
-/

namespace A052960.P9802672738108670377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A052952 (2 * n + 1)).toNat + A004148 n

end

end A052960.P9802672738108670377

namespace A052960

/-- `A152467(A052952(2*n+1))+A004148(n)` -/
def P9802672738108670377.Spec : Prop :=
  ∀ n, P9802672738108670377.a n = A052960 n

end A052960

/-!
# A052961: Expansion of (1 - 3*x) / (1 - 5*x + 3*x^2).

The programs for A052961, the canonical program `A052961.P8721943041283331526` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052961 has offset 0).

The definition of A052961 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x)/(1-5x+3x^2))` (program `A052961.P8721943041283331526`, by `A052961.P8721943041283331526.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052961.P8721943041283331526

`ogf((1-3x)/(1-5x+3x^2))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052961

/-- `ogf((1-3x)/(1-5x+3x^2))` -/
def P8721943041283331526.Spec : Prop :=
  ∀ n, P8721943041283331526.a n = A052961 n

theorem P8721943041283331526.correct : P8721943041283331526.Spec := by
  intro n
  simp only [A052961]

end A052961

/-! ## A052961.P11127706491264494156

`5*a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A052961.P11127706491264494156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  5 * a (n - 1) - 3 * a (n - 2)

end

end A052961.P11127706491264494156

namespace A052961

/-- `5*a(n-1)-3*a(n-2)` -/
def P11127706491264494156.Spec : Prop :=
  ∀ n, P11127706491264494156.a n = A052961 n

end A052961

/-! ## A052961.P17684945188556305076

`lcm(5, a(n-1))-lcm(3, a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A052961.P17684945188556305076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (Int.lcm 5 (a (n - 1)) : ℤ) - (Int.lcm 3 (a (n - 2)) : ℤ)

end

end A052961.P17684945188556305076

namespace A052961

/-- `lcm(5, a(n-1))-lcm(3, a(n-2))` -/
def P17684945188556305076.Spec : Prop :=
  ∀ n, P17684945188556305076.a n = A052961 n

end A052961

/-! ## A052961.P1356480974157895481

`∑[∑[A095940(n)]]+1`
-/

namespace A052961.P1356480974157895481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A052961.P1356480974157895481

namespace A052961

/-- `∑[∑[A095940(n)]]+1` -/
def P1356480974157895481.Spec : Prop :=
  ∀ n, P1356480974157895481.a n = A052961 n

end A052961

/-! ## A052961.P15207189466246271330

`A116415(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A052961.P15207189466246271330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A116415 (n - 1) + a (n - 1)

end

end A052961.P15207189466246271330

namespace A052961

/-- `A116415(n-1)+a(n-1)` -/
def P15207189466246271330.Spec : Prop :=
  ∀ n, P15207189466246271330.a n = A052961 n

end A052961

/-! ## A052961.P11946393229689384041

`∑[A116415(A028310(n)-1)]`
-/

namespace A052961.P11946393229689384041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116415 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052961.P11946393229689384041

namespace A052961

/-- `∑[A116415(A028310(n)-1)]` -/
def P11946393229689384041.Spec : Prop :=
  ∀ n, P11946393229689384041.a n = A052961 n

end A052961

/-! ## A052961.P12507097040371123955

`A081704(n)-∑[A095940(n)]`
-/

namespace A052961.P12507097040371123955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081704 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052961.P12507097040371123955

namespace A052961

/-- `A081704(n)-∑[A095940(n)]` -/
def P12507097040371123955.Spec : Prop :=
  ∀ n, P12507097040371123955.a n = A052961 n

end A052961

/-! ## A052961.P3802922362447630952

`∑[A095939(n)-A095940(n)]`
-/

namespace A052961.P3802922362447630952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095939 n - A095940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052961.P3802922362447630952

namespace A052961

/-- `∑[A095939(n)-A095940(n)]` -/
def P3802922362447630952.Spec : Prop :=
  ∀ n, P3802922362447630952.a n = A052961 n

end A052961

/-! ## A052961.P7311732575848266087

`∑[A095934(n)-2*A095940(n)]`
-/

namespace A052961.P7311732575848266087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095934 n - 2 * A095940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052961.P7311732575848266087

namespace A052961

/-- `∑[A095934(n)-2*A095940(n)]` -/
def P7311732575848266087.Spec : Prop :=
  ∀ n, P7311732575848266087.a n = A052961 n

end A052961

/-! ## A052961.P9636072121315286614

`A116415(n)+A106732(n)`
-/

namespace A052961.P9636072121315286614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116415 n + A106732 n

end

end A052961.P9636072121315286614

namespace A052961

/-- `A116415(n)+A106732(n)` -/
def P9636072121315286614.Spec : Prop :=
  ∀ n, P9636072121315286614.a n = A052961 n

end A052961

/-! ## A052961.P3680703303608629630

`A228569(n)-A081704(n)`
-/

namespace A052961.P3680703303608629630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228569 n - A081704 n

end

end A052961.P3680703303608629630

namespace A052961

/-- `A228569(n)-A081704(n)` -/
def P3680703303608629630.Spec : Prop :=
  ∀ n, P3680703303608629630.a n = A052961 n

end A052961

/-! ## A052961.P12199312781366641208

`2*A081704(n)-A018902(n)`
-/

namespace A052961.P12199312781366641208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081704 n - A018902 n

end

end A052961.P12199312781366641208

namespace A052961

/-- `2*A081704(n)-A018902(n)` -/
def P12199312781366641208.Spec : Prop :=
  ∀ n, P12199312781366641208.a n = A052961 n

end A052961

/-! ## A052961.P16231593988730442348

`2*A018902(n)-A109114(n)`
-/

namespace A052961.P16231593988730442348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018902 n - A109114 n

end

end A052961.P16231593988730442348

namespace A052961

/-- `2*A018902(n)-A109114(n)` -/
def P16231593988730442348.Spec : Prop :=
  ∀ n, P16231593988730442348.a n = A052961 n

end A052961

/-! ## A052961.P1960291753161501942

`A018902(n)-∑[2*A095940(n)]`
-/

namespace A052961.P1960291753161501942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018902 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052961.P1960291753161501942

namespace A052961

/-- `A018902(n)-∑[2*A095940(n)]` -/
def P1960291753161501942.Spec : Prop :=
  ∀ n, P1960291753161501942.a n = A052961 n

end A052961

/-! ## A052961.P14085132246294298743

`A081704(n+1)-2*A116415(n)`
-/

namespace A052961.P14085132246294298743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081704 (n + 1) - 2 * A116415 n

end

end A052961.P14085132246294298743

namespace A052961

/-- `A081704(n+1)-2*A116415(n)` -/
def P14085132246294298743.Spec : Prop :=
  ∀ n, P14085132246294298743.a n = A052961 n

end A052961

/-! ## A052961.P9089014655498914645

`A081704(n)+A018902(n)-A116415(n)`
-/

namespace A052961.P9089014655498914645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081704 n + A018902 n - A116415 n

end

end A052961.P9089014655498914645

namespace A052961

/-- `A081704(n)+A018902(n)-A116415(n)` -/
def P9089014655498914645.Spec : Prop :=
  ∀ n, P9089014655498914645.a n = A052961 n

end A052961

/-! ## A052961.P1174717180451697310

`A010903(n)-(A116415(n)+A109114(n))`
-/

namespace A052961.P1174717180451697310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010903 n - (A116415 n + A109114 n)

end

end A052961.P1174717180451697310

namespace A052961

/-- `A010903(n)-(A116415(n)+A109114(n))` -/
def P1174717180451697310.Spec : Prop :=
  ∀ n, P1174717180451697310.a n = A052961 n

end A052961

/-! ## A052961.P11375942836345679678

`A081704(n)+A081704(n)-A095940(n+1)`
-/

namespace A052961.P11375942836345679678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081704 n + (A081704 n - A095940 (n + 1))

end

end A052961.P11375942836345679678

namespace A052961

/-- `A081704(n)+A081704(n)-A095940(n+1)` -/
def P11375942836345679678.Spec : Prop :=
  ∀ n, P11375942836345679678.a n = A052961 n

end A052961

/-! ## A052961.P13999124073122907903

`A095934(n+1)-(A116415(n)+A109114(n))`
-/

namespace A052961.P13999124073122907903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095934 (n + 1) - (A116415 n + A109114 n)

end

end A052961.P13999124073122907903

namespace A052961

/-- `A095934(n+1)-(A116415(n)+A109114(n))` -/
def P13999124073122907903.Spec : Prop :=
  ∀ n, P13999124073122907903.a n = A052961 n

end A052961

/-! ## A052961.P853029075027736111

`A081704(n+1)+A081704(n)-A095934(n+1)`
-/

namespace A052961.P853029075027736111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081704 (n + 1) + (A081704 n - A095934 (n + 1))

end

end A052961.P853029075027736111

namespace A052961

/-- `A081704(n+1)+A081704(n)-A095934(n+1)` -/
def P853029075027736111.Spec : Prop :=
  ∀ n, P853029075027736111.a n = A052961 n

end A052961

/-!
# A052962: Expansion of (1-2x^2)/(1-x-3x^2+2x^4).

The programs for A052962, the canonical program `A052962.P9836873201088865446` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052962 has offset 0).

The definition of A052962 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x^2)/(1-x-3x^2+2x^4))` (program `A052962.P9836873201088865446`, by `A052962.P9836873201088865446.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052962.P9836873201088865446

`ogf((1-2x^2)/(1-x-3x^2+2x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052962

/-- `ogf((1-2x^2)/(1-x-3x^2+2x^4))` -/
def P9836873201088865446.Spec : Prop :=
  ∀ n, P9836873201088865446.a n = A052962 n

theorem P9836873201088865446.correct : P9836873201088865446.Spec := by
  intro n
  simp only [A052962]

end A052962

/-! ## A052962.P4458529106975208912

`a(n-1)+3*a(n-2)-2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A052962.P4458529106975208912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 5] fun n a =>
  a (n - 1) + 3 * a (n - 2) - 2 * a (n - 4)

end

end A052962.P4458529106975208912

namespace A052962

/-- `a(n-1)+3*a(n-2)-2*a(n-4)` -/
def P4458529106975208912.Spec : Prop :=
  ∀ n, P4458529106975208912.a n = A052962 n

end A052962

/-! ## A052962.P17550326899649782837

`Δ[A052933(n+1)]-∑[A052933(n)]`
-/

namespace A052962.P17550326899649782837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A052962.P17550326899649782837

namespace A052962

/-- `Δ[A052933(n+1)]-∑[A052933(n)]` -/
def P17550326899649782837.Spec : Prop :=
  ∀ n, P17550326899649782837.a n = A052962 n

end A052962

/-! ## A052962.P641141170433086520

`∑[A281716(n+3)%A281716(n+2)]`
-/

namespace A052962.P641141170433086520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281716 (n + 3)) (A281716 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052962.P641141170433086520

namespace A052962

/-- `∑[A281716(n+3)%A281716(n+2)]` -/
def P641141170433086520.Spec : Prop :=
  ∀ n, P641141170433086520.a n = A052962 n

end A052962

/-! ## A052962.P15319490423336884012

`A303961(A133263(n))/A001511(A060048(n+1))`
-/

namespace A052962.P15319490423336884012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303961 (A133263 n).toNat : ℚ) / (A001511 (A060048 (n + 1)).toNat : ℚ)

end

end A052962.P15319490423336884012

namespace A052962

/-- `A303961(A133263(n))/A001511(A060048(n+1))` -/
def P15319490423336884012.Spec : Prop :=
  ∀ n, P15319490423336884012.a n = (A052962 n : ℚ)

end A052962

/-!
# A052963: a(0)=1, a(1)=2, a(2)=5, a(n) = 3*a(n+2) - a(n+3).

The programs for A052963, the canonical program `A052963.P8470570176437691920` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052963 has offset 0).

The definition of A052963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052963.P1342644889911329563

`ogf((1-x-x^2)/(1-3x+x^3))`
-/

namespace A052963.P1342644889911329563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -3, 0, 1] n

end

end A052963.P1342644889911329563

namespace A052963

/-- `ogf((1-x-x^2)/(1-3x+x^3))` -/
def P1342644889911329563.Spec : Prop :=
  ∀ n, P1342644889911329563.a n = A052963 n

end A052963

/-! ## A052963.P8470570176437691920

`3*a(n-1)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052963

/-- `3*a(n-1)-a(n-3)` -/
def P8470570176437691920.Spec : Prop :=
  ∀ n, P8470570176437691920.a n = A052963 n

theorem P8470570176437691920.correct : P8470570176437691920.Spec := by
  intro n
  simp only [A052963]

end A052963

/-! ## A052963.P3436673249008487688

`lcm(3, a(n-1))-a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A052963.P3436673249008487688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  (Int.lcm 3 (a (n - 1)) : ℤ) - a (n - 3)

end

end A052963.P3436673249008487688

namespace A052963

/-- `lcm(3, a(n-1))-a(n-3)` -/
def P3436673249008487688.Spec : Prop :=
  ∀ n, P3436673249008487688.a n = A052963 n

end A052963

/-! ## A052963.P16721166962771977908

`a(n-1)+a(n-1)+a(n-1)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A052963.P16721166962771977908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 3)))

end

end A052963.P16721166962771977908

namespace A052963

/-- `a(n-1)+a(n-1)+a(n-1)-a(n-3)` -/
def P16721166962771977908.Spec : Prop :=
  ∀ n, P16721166962771977908.a n = A052963 n

theorem P16721166962771977908.correct : P16721166962771977908.Spec := by
  intro n
  simp only [A052963, Nat.add_sub_cancel, A052963.P16721166962771977908.a, A052963.P8470570176437691920.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A052963

/-! ## A052963.P9687066460099181454

`a(n-1)-(a(n-3)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A052963.P9687066460099181454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1) - a (n - 1))

end

end A052963.P9687066460099181454

namespace A052963

/-- `a(n-1)-(a(n-3)-a(n-1)-a(n-1))` -/
def P9687066460099181454.Spec : Prop :=
  ∀ n, P9687066460099181454.a n = A052963 n

theorem P9687066460099181454.correct : P9687066460099181454.Spec := by
  intro n
  simp only [A052963, Nat.add_sub_cancel, A052963.P9687066460099181454.a, A052963.P8470570176437691920.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A052963

/-! ## A052963.P15509704297223353074

`∑[A123941(n)]+1`
-/

namespace A052963.P15509704297223353074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A052963.P15509704297223353074

namespace A052963

/-- `∑[A123941(n)]+1` -/
def P15509704297223353074.Spec : Prop :=
  ∀ n, P15509704297223353074.a n = A052963 n

end A052963

/-! ## A052963.P14515704231141248471

`∑[∑[abs(A122099(n+2))]]+1`
-/

namespace A052963.P14515704231141248471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122099 (n + 2)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A052963.P14515704231141248471

namespace A052963

/-- `∑[∑[abs(A122099(n+2))]]+1` -/
def P14515704231141248471.Spec : Prop :=
  ∀ n, P14515704231141248471.a n = A052963 n

end A052963

/-! ## A052963.P14982414615491382014

`A076264(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A052963.P14982414615491382014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A076264 (n - 1) + a (n - 1)

end

end A052963.P14982414615491382014

namespace A052963

/-- `A076264(n-1)+a(n-1)` -/
def P14982414615491382014.Spec : Prop :=
  ∀ n, P14982414615491382014.a n = A052963 n

end A052963

/-! ## A052963.P831056085473351503

`∑[∑[A187504(3*n+1)]]+1`
-/

namespace A052963.P831056085473351503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187504 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A052963.P831056085473351503

namespace A052963

/-- `∑[∑[A187504(3*n+1)]]+1` -/
def P831056085473351503.Spec : Prop :=
  ∀ n, P831056085473351503.a n = A052963 n

end A052963

/-! ## A052963.P18128584213975822589

`A018919(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A052963.P18128584213975822589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A018919 (n - 2) + a (n - 1)

end

end A052963.P18128584213975822589

namespace A052963

/-- `A018919(n-2)+a(n-1)` -/
def P18128584213975822589.Spec : Prop :=
  ∀ n, P18128584213975822589.a n = A052963 n

end A052963

/-! ## A052963.P527941101534665095

`∑[A187506(2*n+1+n)]+1`
-/

namespace A052963.P527941101534665095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187506 (2 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A052963.P527941101534665095

namespace A052963

/-- `∑[A187506(2*n+1+n)]+1` -/
def P527941101534665095.Spec : Prop :=
  ∀ n, P527941101534665095.a n = A052963 n

end A052963

/-! ## A052963.P15889212172554053423

`a(n-1)-∑[A122100(n+2)]` with `a(0)=1`
-/

namespace A052963.P15889212172554053423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122100 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052963.P15889212172554053423

namespace A052963

/-- `a(n-1)-∑[A122100(n+2)]` -/
def P15889212172554053423.Spec : Prop :=
  ∀ n, P15889212172554053423.a n = A052963 n

end A052963

/-! ## A052963.P1057845924928978338

`∑[A038197(A008486(n)-1)]`
-/

namespace A052963.P1057845924928978338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038197 (A008486 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052963.P1057845924928978338

namespace A052963

/-- `∑[A038197(A008486(n)-1)]` -/
def P1057845924928978338.Spec : Prop :=
  ∀ n, P1057845924928978338.a n = A052963 n

end A052963

/-! ## A052963.P3356001503906993978

`A052545(n)-(A122100(n+1)+A122100(n))`
-/

namespace A052963.P3356001503906993978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 n - (A122100 (n + 1) + A122100 n)

end

end A052963.P3356001503906993978

namespace A052963

/-- `A052545(n)-(A122100(n+1)+A122100(n))` -/
def P3356001503906993978.Spec : Prop :=
  ∀ n, P3356001503906993978.a n = A052963 n

end A052963

/-! ## A052963.P15529133300181674377

`A052536(n)-(A215448(n)+A122100(n+1))`
-/

namespace A052963.P15529133300181674377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052536 n - (A215448 n + A122100 (n + 1))

end

end A052963.P15529133300181674377

namespace A052963

/-- `A052536(n)-(A215448(n)+A122100(n+1))` -/
def P15529133300181674377.Spec : Prop :=
  ∀ n, P15529133300181674377.a n = A052963 n

end A052963

/-! ## A052963.P3423746948778263315

`A091650(n+1)-A091024(n)`
-/

namespace A052963.P3423746948778263315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091650 (n + 1) - A091024 n

end

end A052963.P3423746948778263315

namespace A052963

/-- `A091650(n+1)-A091024(n)` -/
def P3423746948778263315.Spec : Prop :=
  ∀ n, P3423746948778263315.a n = A052963 n

end A052963

/-! ## A052963.P8020097110489328119

`A147704(n+1)-A123941(n)`
-/

namespace A052963.P8020097110489328119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147704 (n + 1) - A123941 n

end

end A052963.P8020097110489328119

namespace A052963

/-- `A147704(n+1)-A123941(n)` -/
def P8020097110489328119.Spec : Prop :=
  ∀ n, P8020097110489328119.a n = A052963 n

end A052963

/-! ## A052963.P9234925310376298292

`∑[A076264(n)]+1-A076264(n)`
-/

namespace A052963.P9234925310376298292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A076264 n)

end

end A052963.P9234925310376298292

namespace A052963

/-- `∑[A076264(n)]+1-A076264(n)` -/
def P9234925310376298292.Spec : Prop :=
  ∀ n, P9234925310376298292.a n = A052963 n

end A052963

/-! ## A052963.P8854626003153080567

`A123891(n+1)-(A076264(n)+A052545(n))`
-/

namespace A052963.P8854626003153080567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123891 (n + 1) - (A076264 n + A052545 n)

end

end A052963.P8854626003153080567

namespace A052963

/-- `A123891(n+1)-(A076264(n)+A052545(n))` -/
def P8854626003153080567.Spec : Prop :=
  ∀ n, P8854626003153080567.a n = A052963 n

end A052963

/-! ## A052963.P7618854578070876819

`A123891(n+1)-(A215448(n)+A052545(n+1))`
-/

namespace A052963.P7618854578070876819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123891 (n + 1) - (A215448 n + A052545 (n + 1))

end

end A052963.P7618854578070876819

namespace A052963

/-- `A123891(n+1)-(A215448(n)+A052545(n+1))` -/
def P7618854578070876819.Spec : Prop :=
  ∀ n, P7618854578070876819.a n = A052963 n

end A052963

/-!
# A052964: Expansion of (1-x)/((1-2x)(1+x-x^2)).

The programs for A052964, the canonical program `A052964.P14206406884658941454` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052964 has offset 0).

The definition of A052964 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x-3x^2+2x^3))` (program `A052964.P14206406884658941454`, by `A052964.P14206406884658941454.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052964.P14206406884658941454

`ogf((1-x)/(1-x-3x^2+2x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052964

/-- `ogf((1-x)/(1-x-3x^2+2x^3))` -/
def P14206406884658941454.Spec : Prop :=
  ∀ n, P14206406884658941454.a n = A052964 n

theorem P14206406884658941454.correct : P14206406884658941454.Spec := by
  intro n
  simp only [A052964]

end A052964

/-! ## A052964.P1706337341265593945

`∑[A104005(n)]`
-/

namespace A052964.P1706337341265593945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052964.P1706337341265593945

namespace A052964

/-- `∑[A104005(n)]` -/
def P1706337341265593945.Spec : Prop :=
  ∀ n, P1706337341265593945.a n = A052964 n

end A052964

/-! ## A052964.P8414944058425265013

`A173125(n+1)+A173126(n+1)-A054877(n+1)`
-/

namespace A052964.P8414944058425265013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173125 (n + 1) + (A173126 (n + 1) - A054877 (n + 1))

end

end A052964.P8414944058425265013

namespace A052964

/-- `A173125(n+1)+A173126(n+1)-A054877(n+1)` -/
def P8414944058425265013.Spec : Prop :=
  ∀ n, P8414944058425265013.a n = A052964 n

end A052964

/-! ## A052964.P1643938347414538468

`A129720(n+1)+A173126(n+1)-A129722(n+1)`
-/

namespace A052964.P1643938347414538468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129720 (n + 1) + (A173126 (n + 1) - A129722 (n + 1))

end

end A052964.P1643938347414538468

namespace A052964

/-- `A129720(n+1)+A173126(n+1)-A129722(n+1)` -/
def P1643938347414538468.Spec : Prop :=
  ∀ n, P1643938347414538468.a n = A052964 n

end A052964

/-! ## A052964.P968937464664833679

`Δ[abs(A084179(n))]`
-/

namespace A052964.P968937464664833679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084179 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052964.P968937464664833679

namespace A052964

/-- `Δ[abs(A084179(n))]` -/
def P968937464664833679.Spec : Prop :=
  ∀ n, P968937464664833679.a n = A052964 n

end A052964

/-! ## A052964.P14265701873175254805

`A054877(n+2)/2`
-/

namespace A052964.P14265701873175254805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054877 (n + 2) : ℚ) / 2

end

end A052964.P14265701873175254805

namespace A052964

/-- `A054877(n+2)/2` -/
def P14265701873175254805.Spec : Prop :=
  ∀ n, P14265701873175254805.a n = (A052964 n : ℚ)

end A052964

/-! ## A052964.P4265300373006653551

`A011782(n)+a(n-2)-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A052964.P4265300373006653551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A011782 n + a (n - 2) - a (n - 1)

end

end A052964.P4265300373006653551

namespace A052964

/-- `A011782(n)+a(n-2)-a(n-1)` -/
def P4265300373006653551.Spec : Prop :=
  ∀ n, P4265300373006653551.a n = A052964 n

end A052964

/-! ## A052964.P9598557493305636987

`abs(A084179(n+1)+A084179(n))`
-/

namespace A052964.P9598557493305636987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084179 (n + 1) + A084179 n|

end

end A052964.P9598557493305636987

namespace A052964

/-- `abs(A084179(n+1)+A084179(n))` -/
def P9598557493305636987.Spec : Prop :=
  ∀ n, P9598557493305636987.a n = A052964 n

end A052964

/-! ## A052964.P9127170446810459180

`A000079(n)-(A104005(n+1)+A104005(n))`
-/

namespace A052964.P9127170446810459180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A104005 (n + 1) + A104005 n)

end

end A052964.P9127170446810459180

namespace A052964

/-- `A000079(n)-(A104005(n+1)+A104005(n))` -/
def P9127170446810459180.Spec : Prop :=
  ∀ n, P9127170446810459180.a n = A052964 n

end A052964

/-! ## A052964.P11262776060255382544

`Δ[Δ[a(n-1)+3*a(n-2)-2*a(n-3)]]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A052964.P11262776060255382544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f2 =>
  f2 (n - 1) + 3 * f2 (n - 2) - 2 * f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052964.P11262776060255382544

namespace A052964

/-- `Δ[Δ[a(n-1)+3*a(n-2)-2*a(n-3)]]` -/
def P11262776060255382544.Spec : Prop :=
  ∀ n, P11262776060255382544.a n = A052964 n

end A052964

/-! ## A052964.P17815830016746927880

`Δ[Δ[A099163(n)]]`
-/

namespace A052964.P17815830016746927880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099163 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052964.P17815830016746927880

namespace A052964

/-- `Δ[Δ[A099163(n)]]` -/
def P17815830016746927880.Spec : Prop :=
  ∀ n, P17815830016746927880.a n = A052964 n

end A052964

/-! ## A052964.P8945000349453304403

`abs(A084178(n+1))`
-/

namespace A052964.P8945000349453304403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084178 (n + 1)|

end

end A052964.P8945000349453304403

namespace A052964

/-- `abs(A084178(n+1))` -/
def P8945000349453304403.Spec : Prop :=
  ∀ n, P8945000349453304403.a n = A052964 n

end A052964

/-! ## A052964.P17022216485980052330

`A033999(n)*A084178(n+1)`
-/

namespace A052964.P17022216485980052330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A084178 (n + 1)

end

end A052964.P17022216485980052330

namespace A052964

/-- `A033999(n)*A084178(n+1)` -/
def P17022216485980052330.Spec : Prop :=
  ∀ n, P17022216485980052330.a n = A052964 n

end A052964

/-! ## A052964.P10690847994576927808

`A084178(n+1)/A033999(n+2)`
-/

namespace A052964.P10690847994576927808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084178 (n + 1) : ℚ) / (A033999 (n + 2) : ℚ)

end

end A052964.P10690847994576927808

namespace A052964

/-- `A084178(n+1)/A033999(n+2)` -/
def P10690847994576927808.Spec : Prop :=
  ∀ n, P10690847994576927808.a n = (A052964 n : ℚ)

end A052964

/-! ## A052964.P8830673567417285655

`A101501(n+1)/2^n`
-/

namespace A052964.P8830673567417285655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101501 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A052964.P8830673567417285655

namespace A052964

/-- `A101501(n+1)/2^n` -/
def P8830673567417285655.Spec : Prop :=
  ∀ n, P8830673567417285655.a n = (A052964 n : ℚ)

end A052964

/-! ## A052964.P4377447679144401320

`A101502(n+2)/2^(n+2)`
-/

namespace A052964.P4377447679144401320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101502 (n + 2) : ℚ) / (2 ^ (n + 2) : ℚ)

end

end A052964.P4377447679144401320

namespace A052964

/-- `A101502(n+2)/2^(n+2)` -/
def P4377447679144401320.Spec : Prop :=
  ∀ n, P4377447679144401320.a n = (A052964 n : ℚ)

end A052964

/-!
# A052965: Expansion of (1-x)/(1-3x-4x^2+4x^3).

The programs for A052965, the canonical program `A052965.P17464878965640107859` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052965 has offset 0).

The definition of A052965 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-3x-4x^2+4x^3))` (program `A052965.P17464878965640107859`, by `A052965.P17464878965640107859.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052965.P17464878965640107859

`ogf((1-x)/(1-3x-4x^2+4x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052965

/-- `ogf((1-x)/(1-3x-4x^2+4x^3))` -/
def P17464878965640107859.Spec : Prop :=
  ∀ n, P17464878965640107859.a n = A052965 n

theorem P17464878965640107859.correct : P17464878965640107859.Spec := by
  intro n
  simp only [A052965]

end A052965

/-! ## A052965.P14360055640333076421

`or(A001221(3*7^n), A204090(n))`
-/

namespace A052965.P14360055640333076421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (3 * 7 ^ n)) (A204090 n)

end

end A052965.P14360055640333076421

namespace A052965

/-- `or(A001221(3*7^n), A204090(n))` -/
def P14360055640333076421.Spec : Prop :=
  ∀ n, P14360055640333076421.a n = A052965 n

end A052965

/-!
# A052966: Expansion of (1-x)/(1-x-4x^2+2x^3).

The programs for A052966, the canonical program `A052966.P10958399189447455638` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052966 has offset 0).

The definition of A052966 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x-4x^2+2x^3))` (program `A052966.P10958399189447455638`, by `A052966.P10958399189447455638.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052966.P10958399189447455638

`ogf((1-x)/(1-x-4x^2+2x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052966

/-- `ogf((1-x)/(1-x-4x^2+2x^3))` -/
def P10958399189447455638.Spec : Prop :=
  ∀ n, P10958399189447455638.a n = A052966 n

theorem P10958399189447455638.correct : P10958399189447455638.Spec := by
  intro n
  simp only [A052966]

end A052966

/-! ## A052966.P15286722814071747166

`a(n-1)+4*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A052966.P15286722814071747166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 4] fun n a =>
  a (n - 1) + 4 * a (n - 2) - 2 * a (n - 3)

end

end A052966.P15286722814071747166

namespace A052966

/-- `a(n-1)+4*a(n-2)-2*a(n-3)` -/
def P15286722814071747166.Spec : Prop :=
  ∀ n, P15286722814071747166.a n = A052966 n

end A052966

/-! ## A052966.P1018117034272525149

`A384604(n)-a(n-1)` with `a(0)=1`
-/

namespace A052966.P1018117034272525149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A384604 n - a (n - 1)

end

end A052966.P1018117034272525149

namespace A052966

/-- `A384604(n)-a(n-1)` -/
def P1018117034272525149.Spec : Prop :=
  ∀ n, P1018117034272525149.a n = A052966 n

end A052966

/-!
# A052967: Expansion of (1 - x)/(1 - 2*x - x^2 + x^4).

The programs for A052967, the canonical program `A052967.P3400756871470396732` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052967 has offset 0).

The definition of A052967 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x-x^2+x^4))` (program `A052967.P3400756871470396732`, by `A052967.P3400756871470396732.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052967.P3400756871470396732

`ogf((1-x)/(1-2x-x^2+x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052967

/-- `ogf((1-x)/(1-2x-x^2+x^4))` -/
def P3400756871470396732.Spec : Prop :=
  ∀ n, P3400756871470396732.a n = A052967 n

theorem P3400756871470396732.correct : P3400756871470396732.Spec := by
  intro n
  simp only [A052967]

end A052967

/-! ## A052967.P6731511731056990647

`A360335(∑[n+2]-1)`
-/

namespace A052967.P6731511731056990647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360335 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A052967.P6731511731056990647

namespace A052967

/-- `A360335(∑[n+2]-1)` -/
def P6731511731056990647.Spec : Prop :=
  ∀ n, P6731511731056990647.a n = A052967 n

end A052967

/-! ## A052967.P1394252056372699387

`A224697(n)*A360335(A034856(n+1))`
-/

namespace A052967.P1394252056372699387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224697 n * A360335 (A034856 (n + 1)).toNat

end

end A052967.P1394252056372699387

namespace A052967

/-- `A224697(n)*A360335(A034856(n+1))` -/
def P1394252056372699387.Spec : Prop :=
  ∀ n, P1394252056372699387.a n = A052967 n

end A052967

/-! ## A052967.P6335372669054402790

`A360335(A034856(n+1))%A002203(n)`
-/

namespace A052967.P6335372669054402790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360335 (A034856 (n + 1)).toNat) (A002203 n)

end

end A052967.P6335372669054402790

namespace A052967

/-- `A360335(A034856(n+1))%A002203(n)` -/
def P6335372669054402790.Spec : Prop :=
  ∀ n, P6335372669054402790.a n = A052967 n

end A052967

/-! ## A052967.P150097568240168032

`A360335(A034856(n+1))+A327450(n+1)`
-/

namespace A052967.P150097568240168032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360335 (A034856 (n + 1)).toNat + A327450 (n + 1)

end

end A052967.P150097568240168032

namespace A052967

/-- `A360335(A034856(n+1))+A327450(n+1)` -/
def P150097568240168032.Spec : Prop :=
  ∀ n, P150097568240168032.a n = A052967 n

end A052967

/-!
# A052968: a(n) = 1 + 2^(n-1) + n for n > 0, a(0) = 2.

The programs for A052968, the canonical program `A052968.P2588950439768698632` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052968 has offset 0).

The definition of A052968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A052968.P2588950439768698632

`ceil(∑[2^(n-2)+1])`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052968

/-- `ceil(∑[2^(n-2)+1])` -/
def P2588950439768698632.Spec : Prop :=
  ∀ n, P2588950439768698632.a n = A052968 n

theorem P2588950439768698632.correct : P2588950439768698632.Spec := by
  intro n
  simp only [A052968]

end A052968

/-! ## A052968.P1567122071405798545

`∑[ogf((2-5x+3x^2-x^3)/(1-3x+2x^2))]`
-/

namespace A052968.P1567122071405798545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5, 3, -1] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052968.P1567122071405798545

namespace A052968

/-- `∑[ogf((2-5x+3x^2-x^3)/(1-3x+2x^2))]` -/
def P1567122071405798545.Spec : Prop :=
  ∀ n, P1567122071405798545.a n = A052968 n

end A052968

/-! ## A052968.P6058392039038920284

`ogf((2-5x+3x^2-x^3)/(1-4x+5x^2-2x^3))`
-/

namespace A052968.P6058392039038920284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5, 3, -1] [1, -4, 5, -2] n

end

end A052968.P6058392039038920284

namespace A052968

/-- `ogf((2-5x+3x^2-x^3)/(1-4x+5x^2-2x^3))` -/
def P6058392039038920284.Spec : Prop :=
  ∀ n, P6058392039038920284.a n = A052968 n

end A052968

/-! ## A052968.P17364538845140744823

`∑[2*a(n-1)-1]` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A052968.P17364538845140744823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 2] fun n f1 =>
  2 * f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052968.P17364538845140744823

namespace A052968

/-- `∑[2*a(n-1)-1]` -/
def P17364538845140744823.Spec : Prop :=
  ∀ n, P17364538845140744823.a n = A052968 n

end A052968

/-! ## A052968.P18197621466035758429

`2*a(n-1)+1-n` with `a(0)=2, a(1)=3`
-/

namespace A052968.P18197621466035758429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  2 * a (n - 1) + (1 - (n : ℤ))

end

end A052968.P18197621466035758429

namespace A052968

/-- `2*a(n-1)+1-n` -/
def P18197621466035758429.Spec : Prop :=
  ∀ n, P18197621466035758429.a n = A052968 n

end A052968

/-! ## A052968.P8084496139104839828

`1-(n-2*a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A052968.P8084496139104839828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  1 - ((n : ℤ) - 2 * a (n - 1))

end

end A052968.P8084496139104839828

namespace A052968

/-- `1-(n-2*a(n-1))` -/
def P8084496139104839828.Spec : Prop :=
  ∀ n, P8084496139104839828.a n = A052968 n

end A052968

/-! ## A052968.P6896892578377468117

`round(2^(n-1))+C(n+1, n)`
-/

namespace A052968.P6896892578377468117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) + (Nat.choose (n + 1) n : ℤ)

end

end A052968.P6896892578377468117

namespace A052968

/-- `round(2^(n-1))+C(n+1, n)` -/
def P6896892578377468117.Spec : Prop :=
  ∀ n, P6896892578377468117.a n = A052968 n

end A052968

/-! ## A052968.P3204542631745139626

`2^((n-1)%(n+1))+n+1`
-/

namespace A052968.P3204542631745139626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ) + (n + 1 : ℚ)

end

end A052968.P3204542631745139626

namespace A052968

/-- `2^((n-1)%(n+1))+n+1` -/
def P3204542631745139626.Spec : Prop :=
  ∀ n, P3204542631745139626.a n = (A052968 n : ℚ)

end A052968

/-! ## A052968.P9132009229872074514

`ceil(atan(n+1))^(n-1)+n+1`
-/

namespace A052968.P9132009229872074514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈Real.arctan (n + 1 : ℝ)⌉ : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (n + 1 : ℚ)

end

end A052968.P9132009229872074514

namespace A052968

/-- `ceil(atan(n+1))^(n-1)+n+1` -/
def P9132009229872074514.Spec : Prop :=
  ∀ n, P9132009229872074514.a n = (A052968 n : ℚ)

end A052968

/-! ## A052968.P5833884251689151909

`round(gcd(2, 2*n)^(n-1)+n+1)`
-/

namespace A052968.P5833884251689151909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.gcd 2 (2 * n) : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (n + 1 : ℚ))

end

end A052968.P5833884251689151909

namespace A052968

/-- `round(gcd(2, 2*n)^(n-1)+n+1)` -/
def P5833884251689151909.Spec : Prop :=
  ∀ n, P5833884251689151909.a n = A052968 n

end A052968

/-! ## A052968.P14376259029098078082

`∑[a(n-1)+a(n-1)-1]` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A052968.P14376259029098078082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052968.P14376259029098078082

namespace A052968

/-- `∑[a(n-1)+a(n-1)-1]` -/
def P14376259029098078082.Spec : Prop :=
  ∀ n, P14376259029098078082.a n = A052968 n

end A052968

/-! ## A052968.P3377384931852991727

`∑[a(n-1)-(1-a(n-1))]` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A052968.P3377384931852991727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052968.P3377384931852991727

namespace A052968

/-- `∑[a(n-1)-(1-a(n-1))]` -/
def P3377384931852991727.Spec : Prop :=
  ∀ n, P3377384931852991727.a n = A052968 n

end A052968

/-! ## A052968.P10092447013507179191

`a(n-1)+a(n-1)+1-n` with `a(0)=2, a(1)=3`
-/

namespace A052968.P10092447013507179191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) + (a (n - 1) + (1 - (n : ℤ)))

end

end A052968.P10092447013507179191

namespace A052968

/-- `a(n-1)+a(n-1)+1-n` -/
def P10092447013507179191.Spec : Prop :=
  ∀ n, P10092447013507179191.a n = A052968 n

end A052968

/-! ## A052968.P9061295670291213250

`1-(n-a(n-1)-a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A052968.P9061295670291213250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  1 - ((n : ℤ) - a (n - 1) - a (n - 1))

end

end A052968.P9061295670291213250

namespace A052968

/-- `1-(n-a(n-1)-a(n-1))` -/
def P9061295670291213250.Spec : Prop :=
  ∀ n, P9061295670291213250.a n = A052968 n

end A052968

/-! ## A052968.P11012259357749997115

`A288382(n+2)`
-/

namespace A052968.P11012259357749997115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288382 (n + 2)

end

end A052968.P11012259357749997115

namespace A052968

/-- `A288382(n+2)` -/
def P11012259357749997115.Spec : Prop :=
  ∀ n, P11012259357749997115.a n = A052968 n

end A052968

/-! ## A052968.P7260512288905331968

`∑[A034008(n)+1]`
-/

namespace A052968.P7260512288905331968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052968.P7260512288905331968

namespace A052968

/-- `∑[A034008(n)+1]` -/
def P7260512288905331968.Spec : Prop :=
  ∀ n, P7260512288905331968.a n = A052968 n

end A052968

/-! ## A052968.P10675125947897296821

`1+A288133(n+1)`
-/

namespace A052968.P10675125947897296821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A288133 (n + 1)

end

end A052968.P10675125947897296821

namespace A052968

/-- `1+A288133(n+1)` -/
def P10675125947897296821.Spec : Prop :=
  ∀ n, P10675125947897296821.a n = A052968 n

end A052968

/-! ## A052968.P3408804809364060212

`A011782(n)+1+n`
-/

namespace A052968.P3408804809364060212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + 1 + (n : ℤ)

end

end A052968.P3408804809364060212

namespace A052968

/-- `A011782(n)+1+n` -/
def P3408804809364060212.Spec : Prop :=
  ∀ n, P3408804809364060212.a n = A052968 n

end A052968

/-! ## A052968.P14092880732197070532

`3-A122958(n)+n`
-/

namespace A052968.P14092880732197070532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A122958 n + (n : ℤ)

end

end A052968.P14092880732197070532

namespace A052968

/-- `3-A122958(n)+n` -/
def P14092880732197070532.Spec : Prop :=
  ∀ n, P14092880732197070532.a n = A052968 n

end A052968

/-! ## A052968.P12356131804926821542

`∑[A094373(abs(1-n))]`
-/

namespace A052968.P12356131804926821542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052968.P12356131804926821542

namespace A052968

/-- `∑[A094373(abs(1-n))]` -/
def P12356131804926821542.Spec : Prop :=
  ∀ n, P12356131804926821542.a n = A052968 n

end A052968

/-!
# A052969: Expansion of (1-x)/(1-x-2x^2+x^4).

The programs for A052969, the canonical program `A052969.P2547838843813682943` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052969 has offset 0).

The definition of A052969 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x-2x^2+x^4))` (program `A052969.P2547838843813682943`, by `A052969.P2547838843813682943.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052969.P2547838843813682943

`ogf((1-x)/(1-x-2x^2+x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052969

/-- `ogf((1-x)/(1-x-2x^2+x^4))` -/
def P2547838843813682943.Spec : Prop :=
  ∀ n, P2547838843813682943.a n = A052969 n

theorem P2547838843813682943.correct : P2547838843813682943.Spec := by
  intro n
  simp only [A052969]

end A052969

/-! ## A052969.P6742478017458927584

`2*a(n-2)+a(n-1)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A052969.P6742478017458927584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 2] fun n a =>
  2 * a (n - 2) + (a (n - 1) - a (n - 4))

end

end A052969.P6742478017458927584

namespace A052969

/-- `2*a(n-2)+a(n-1)-a(n-4)` -/
def P6742478017458927584.Spec : Prop :=
  ∀ n, P6742478017458927584.a n = A052969 n

end A052969

/-! ## A052969.P5625225184055163005

`a(n-1)+a(n-2)+a(n-2)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A052969.P5625225184055163005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 2] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) - a (n - 4)))

end

end A052969.P5625225184055163005

namespace A052969

/-- `a(n-1)+a(n-2)+a(n-2)-a(n-4)` -/
def P5625225184055163005.Spec : Prop :=
  ∀ n, P5625225184055163005.a n = A052969 n

end A052969

/-! ## A052969.P3864956931450859402

`a(n-1)-(a(n-4)-a(n-2)-a(n-2))` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A052969.P3864956931450859402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 2] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 2) - a (n - 2))

end

end A052969.P3864956931450859402

namespace A052969

/-- `a(n-1)-(a(n-4)-a(n-2)-a(n-2))` -/
def P3864956931450859402.Spec : Prop :=
  ∀ n, P3864956931450859402.a n = A052969 n

end A052969

/-! ## A052969.P12021788379357459050

`A122789(2*(n+1))`
-/

namespace A052969.P12021788379357459050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122789 (2 * (n + 1))

end

end A052969.P12021788379357459050

namespace A052969

/-- `A122789(2*(n+1))` -/
def P12021788379357459050.Spec : Prop :=
  ∀ n, P12021788379357459050.a n = A052969 n

end A052969

/-! ## A052969.P8577215398280073466

`A052535(n)-a(n-1)` with `a(0)=1`
-/

namespace A052969.P8577215398280073466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052535 n - a (n - 1)

end

end A052969.P8577215398280073466

namespace A052969

/-- `A052535(n)-a(n-1)` -/
def P8577215398280073466.Spec : Prop :=
  ∀ n, P8577215398280073466.a n = A052969 n

end A052969

/-! ## A052969.P3160424472405871710

`A003269(2*n+1)-a(n-1)` with `a(0)=1`
-/

namespace A052969.P3160424472405871710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003269 (2 * n + 1) - a (n - 1)

end

end A052969.P3160424472405871710

namespace A052969

/-- `A003269(2*n+1)-a(n-1)` -/
def P3160424472405871710.Spec : Prop :=
  ∀ n, P3160424472405871710.a n = A052969 n

end A052969

/-! ## A052969.P3791374396414926597

`A017898(2*n+1)+A017898(2*n)`
-/

namespace A052969.P3791374396414926597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (2 * n + 1) + A017898 (2 * n)

end

end A052969.P3791374396414926597

namespace A052969

/-- `A017898(2*n+1)+A017898(2*n)` -/
def P3791374396414926597.Spec : Prop :=
  ∀ n, P3791374396414926597.a n = A052969 n

end A052969

/-! ## A052969.P12009317152599150270

`Δ[A003269(2*n)]`
-/

namespace A052969.P12009317152599150270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052969.P12009317152599150270

namespace A052969

/-- `Δ[A003269(2*n)]` -/
def P12009317152599150270.Spec : Prop :=
  ∀ n, P12009317152599150270.a n = A052969 n

end A052969

/-! ## A052969.P4063566669609691161

`Δ[A099561(2*(n+1))]`
-/

namespace A052969.P4063566669609691161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099561 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052969.P4063566669609691161

namespace A052969

/-- `Δ[A099561(2*(n+1))]` -/
def P4063566669609691161.Spec : Prop :=
  ∀ n, P4063566669609691161.a n = A052969 n

end A052969

/-! ## A052969.P1096547294849183609

`Δ[A017898(2*n+3)]`
-/

namespace A052969.P1096547294849183609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052969.P1096547294849183609

namespace A052969

/-- `Δ[A017898(2*n+3)]` -/
def P1096547294849183609.Spec : Prop :=
  ∀ n, P1096547294849183609.a n = A052969 n

end A052969

/-! ## A052969.P4647124774430018089

`A158943(n+1)-A003269(2*n)`
-/

namespace A052969.P4647124774430018089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158943 (n + 1) - A003269 (2 * n)

end

end A052969.P4647124774430018089

namespace A052969

/-- `A158943(n+1)-A003269(2*n)` -/
def P4647124774430018089.Spec : Prop :=
  ∀ n, P4647124774430018089.a n = A052969 n

end A052969

/-! ## A052969.P11300617496509411723

`A003269(2*(n+1))-A003269(2*n)`
-/

namespace A052969.P11300617496509411723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (2 * (n + 1)) - A003269 (2 * n)

end

end A052969.P11300617496509411723

namespace A052969

/-- `A003269(2*(n+1))-A003269(2*n)` -/
def P11300617496509411723.Spec : Prop :=
  ∀ n, P11300617496509411723.a n = A052969 n

end A052969

/-! ## A052969.P1096612548822120283

`A193146(2*n)-2*A003269(2*n)`
-/

namespace A052969.P1096612548822120283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193146 (2 * n) - 2 * A003269 (2 * n)

end

end A052969.P1096612548822120283

namespace A052969

/-- `A193146(2*n)-2*A003269(2*n)` -/
def P1096612548822120283.Spec : Prop :=
  ∀ n, P1096612548822120283.a n = A052969 n

end A052969

/-! ## A052969.P11308011859288697687

`Δ[Δ[A103632(2*n)]]`
-/

namespace A052969.P11308011859288697687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103632 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052969.P11308011859288697687

namespace A052969

/-- `Δ[Δ[A103632(2*n)]]` -/
def P11308011859288697687.Spec : Prop :=
  ∀ n, P11308011859288697687.a n = A052969 n

end A052969

/-! ## A052969.P11270168749766816560

`Δ[Δ[A079974(2*n+1)]]`
-/

namespace A052969.P11270168749766816560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079974 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052969.P11270168749766816560

namespace A052969

/-- `Δ[Δ[A079974(2*n+1)]]` -/
def P11270168749766816560.Spec : Prop :=
  ∀ n, P11270168749766816560.a n = A052969 n

end A052969

/-! ## A052969.P8157365156684287316

`A052535(n+1)+A158943(n+1)-A158943(n+2)`
-/

namespace A052969.P8157365156684287316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052535 (n + 1) + (A158943 (n + 1) - A158943 (n + 2))

end

end A052969.P8157365156684287316

namespace A052969

/-- `A052535(n+1)+A158943(n+1)-A158943(n+2)` -/
def P8157365156684287316.Spec : Prop :=
  ∀ n, P8157365156684287316.a n = A052969 n

end A052969

/-! ## A052969.P393465994157521947

`∑[A108742(n+1)-Δ[A108742(n+1)]]`
-/

namespace A052969.P393465994157521947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108742 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108742 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052969.P393465994157521947

namespace A052969

/-- `∑[A108742(n+1)-Δ[A108742(n+1)]]` -/
def P393465994157521947.Spec : Prop :=
  ∀ n, P393465994157521947.a n = A052969 n

end A052969

/-! ## A052969.P18154054172791423229

`Δ[Δ[A193146(2*n+1)-A193146(2*n)]]`
-/

namespace A052969.P18154054172791423229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193146 (2 * n + 1) - A193146 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052969.P18154054172791423229

namespace A052969

/-- `Δ[Δ[A193146(2*n+1)-A193146(2*n)]]` -/
def P18154054172791423229.Spec : Prop :=
  ∀ n, P18154054172791423229.a n = A052969 n

end A052969

/-!
# A052970: Expansion of (1-2*x)/(1-2*x-2*x^2+2*x^3).

The programs for A052970, the canonical program `A052970.P13105531191904458488` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052970 has offset 0).

The definition of A052970 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x)/(1-2x-2x^2+2x^3))` (program `A052970.P13105531191904458488`, by `A052970.P13105531191904458488.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052970.P13105531191904458488

`ogf((1-2x)/(1-2x-2x^2+2x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052970

/-- `ogf((1-2x)/(1-2x-2x^2+2x^3))` -/
def P13105531191904458488.Spec : Prop :=
  ∀ n, P13105531191904458488.a n = A052970 n

theorem P13105531191904458488.correct : P13105531191904458488.Spec := by
  intro n
  simp only [A052970]

end A052970

/-! ## A052970.P16757738914275794618

`2*(a(n-1)+a(n-2)-a(n-3))` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A052970.P16757738914275794618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  2 * (a (n - 1) + (a (n - 2) - a (n - 3)))

end

end A052970.P16757738914275794618

namespace A052970

/-- `2*(a(n-1)+a(n-2)-a(n-3))` -/
def P16757738914275794618.Spec : Prop :=
  ∀ n, P16757738914275794618.a n = A052970 n

end A052970

/-! ## A052970.P5406105823271698914

`A052987(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A052970.P5406105823271698914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052987 (n - 1) - a (n - 1)

end

end A052970.P5406105823271698914

namespace A052970

/-- `A052987(n-1)-a(n-1)` -/
def P5406105823271698914.Spec : Prop :=
  ∀ n, P5406105823271698914.a n = A052970 n

end A052970

/-! ## A052970.P7398793145345427632

`Δ[A123108(n+1)+A110158(n+1)]`
-/

namespace A052970.P7398793145345427632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n + 1) + A110158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052970.P7398793145345427632

namespace A052970

/-- `Δ[A123108(n+1)+A110158(n+1)]` -/
def P7398793145345427632.Spec : Prop :=
  ∀ n, P7398793145345427632.a n = A052970 n

end A052970

/-! ## A052970.P16203304898916506609

`A077937(n)+1-A106666(n)`
-/

namespace A052970.P16203304898916506609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077937 n + (1 - A106666 n)

end

end A052970.P16203304898916506609

namespace A052970

/-- `A077937(n)+1-A106666(n)` -/
def P16203304898916506609.Spec : Prop :=
  ∀ n, P16203304898916506609.a n = A052970 n

end A052970

/-! ## A052970.P11470585731029469510

`2*A052528(n)-A077937(n)`
-/

namespace A052970.P11470585731029469510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052528 n - A077937 n

end

end A052970.P11470585731029469510

namespace A052970

/-- `2*A052528(n)-A077937(n)` -/
def P11470585731029469510.Spec : Prop :=
  ∀ n, P11470585731029469510.a n = A052970 n

end A052970

/-! ## A052970.P3834055544064191068

`abs(A077981(n))+1-A106666(n)`
-/

namespace A052970.P3834055544064191068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077981 n| + (1 - A106666 n)

end

end A052970.P3834055544064191068

namespace A052970

/-- `abs(A077981(n))+1-A106666(n)` -/
def P3834055544064191068.Spec : Prop :=
  ∀ n, P3834055544064191068.a n = A052970 n

end A052970

/-! ## A052970.P9899869635297998623

`∑[A052528(n)]+1-A106666(n)`
-/

namespace A052970.P9899869635297998623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A106666 n)

end

end A052970.P9899869635297998623

namespace A052970

/-- `∑[A052528(n)]+1-A106666(n)` -/
def P9899869635297998623.Spec : Prop :=
  ∀ n, P9899869635297998623.a n = A052970 n

end A052970

/-! ## A052970.P15038563064371796534

`Δ[A106666(n)]-abs(A077981(n))`
-/

namespace A052970.P15038563064371796534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - |A077981 n|

end

end A052970.P15038563064371796534

namespace A052970

/-- `Δ[A106666(n)]-abs(A077981(n))` -/
def P15038563064371796534.Spec : Prop :=
  ∀ n, P15038563064371796534.a n = A052970 n

end A052970

/-! ## A052970.P3770087927730723865

`Δ[A106666(n)]-∑[A052528(n)]`
-/

namespace A052970.P3770087927730723865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106666 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A052970.P3770087927730723865

namespace A052970

/-- `Δ[A106666(n)]-∑[A052528(n)]` -/
def P3770087927730723865.Spec : Prop :=
  ∀ n, P3770087927730723865.a n = A052970 n

end A052970

/-! ## A052970.P9850568375128627543

`A052987(n+1)-A052528(n+1)`
-/

namespace A052970.P9850568375128627543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052987 (n + 1) - A052528 (n + 1)

end

end A052970.P9850568375128627543

namespace A052970

/-- `A052987(n+1)-A052528(n+1)` -/
def P9850568375128627543.Spec : Prop :=
  ∀ n, P9850568375128627543.a n = A052970 n

end A052970

/-! ## A052970.P5118576187168215360

`A052987(n+1)+A077937(n)-A077937(n+1)`
-/

namespace A052970.P5118576187168215360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052987 (n + 1) + (A077937 n - A077937 (n + 1))

end

end A052970.P5118576187168215360

namespace A052970

/-- `A052987(n+1)+A077937(n)-A077937(n+1)` -/
def P5118576187168215360.Spec : Prop :=
  ∀ n, P5118576187168215360.a n = A052970 n

end A052970

/-!
# A052971: Expansion of (1-x)/(1-2*x-2*x^3+2*x^4).

The programs for A052971, the canonical program `A052971.P14228177087203305226` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052971 has offset 0).

The definition of A052971 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x-2x^3+2x^4))` (program `A052971.P14228177087203305226`, by `A052971.P14228177087203305226.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052971.P14228177087203305226

`ogf((1-x)/(1-2x-2x^3+2x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052971

/-- `ogf((1-x)/(1-2x-2x^3+2x^4))` -/
def P14228177087203305226.Spec : Prop :=
  ∀ n, P14228177087203305226.a n = A052971 n

theorem P14228177087203305226.correct : P14228177087203305226.Spec := by
  intro n
  simp only [A052971]

end A052971

/-! ## A052971.P199970875937363433

`A394988(A364589(n+1))`
-/

namespace A052971.P199970875937363433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394988 (A364589 (n + 1)).toNat

end

end A052971.P199970875937363433

namespace A052971

/-- `A394988(A364589(n+1))` -/
def P199970875937363433.Spec : Prop :=
  ∀ n, P199970875937363433.a n = A052971 n

end A052971

/-! ## A052971.P3540407662507517507

`A262689(A243204(n)+n²)`
-/

namespace A052971.P3540407662507517507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A243204 n + (n ^ 2 : ℤ)).toNat

end

end A052971.P3540407662507517507

namespace A052971

/-- `A262689(A243204(n)+n²)` -/
def P3540407662507517507.Spec : Prop :=
  ∀ n, P3540407662507517507.a n = A052971 n

end A052971

/-!
# A052972: Expansion of (1-x^3)/(1-x-x^2-x^3+x^5).

The programs for A052972, the canonical program `A052972.P6311657471809127549` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052972 has offset 0).

The definition of A052972 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^3)/(1-x-x^2-x^3+x^5))` (program `A052972.P6311657471809127549`, by `A052972.P6311657471809127549.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052972.P6311657471809127549

`ogf((1-x^3)/(1-x-x^2-x^3+x^5))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052972

/-- `ogf((1-x^3)/(1-x-x^2-x^3+x^5))` -/
def P6311657471809127549.Spec : Prop :=
  ∀ n, P6311657471809127549.a n = A052972 n

theorem P6311657471809127549.correct : P6311657471809127549.Spec := by
  intro n
  simp only [A052972]

end A052972

/-! ## A052972.P17606206582691406571

`A254685(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A052972.P17606206582691406571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A254685 (n - 1) + a (n - 2)

end

end A052972.P17606206582691406571

namespace A052972

/-- `A254685(n-1)+a(n-2)` -/
def P17606206582691406571.Spec : Prop :=
  ∀ n, P17606206582691406571.a n = A052972 n

end A052972

/-! ## A052972.P7259295923539332401

`A298163(n+2)-A000045(n+1)`
-/

namespace A052972.P7259295923539332401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298163 (n + 2) - A000045 (n + 1)

end

end A052972.P7259295923539332401

namespace A052972

/-- `A298163(n+2)-A000045(n+1)` -/
def P7259295923539332401.Spec : Prop :=
  ∀ n, P7259295923539332401.a n = A052972 n

end A052972

/-! ## A052972.P2332622239051612027

`A298163(n+2)-Δ[A000071(n+2)]`
-/

namespace A052972.P2332622239051612027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298163 (n + 2) - (f1 (n + 1) - f1 n)

end

end A052972.P2332622239051612027

namespace A052972

/-- `A298163(n+2)-Δ[A000071(n+2)]` -/
def P2332622239051612027.Spec : Prop :=
  ∀ n, P2332622239051612027.a n = A052972 n

end A052972

/-! ## A052972.P15888057198748897859

`A298163(n+2)-A037027(∑[n])`
-/

namespace A052972.P15888057198748897859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298163 (n + 2) - A037027 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052972.P15888057198748897859

namespace A052972

/-- `A298163(n+2)-A037027(∑[n])` -/
def P15888057198748897859.Spec : Prop :=
  ∀ n, P15888057198748897859.a n = A052972 n

end A052972

/-! ## A052972.P259247592808667314

`A298163(n+2)-A036355(∑[n])`
-/

namespace A052972.P259247592808667314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298163 (n + 2) - A036355 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052972.P259247592808667314

namespace A052972

/-- `A298163(n+2)-A036355(∑[n])` -/
def P259247592808667314.Spec : Prop :=
  ∀ n, P259247592808667314.a n = A052972 n

end A052972

/-!
# A052973: Expansion of ( 1-x ) / ( 1-x-3*x^2+x^3 ).

The programs for A052973, the canonical program `A052973.P1180101383176060526` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052973 has offset 0).

The definition of A052973 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x-3x^2+x^3))` (program `A052973.P1180101383176060526`, by `A052973.P1180101383176060526.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052973.P1180101383176060526

`ogf((1-x)/(1-x-3x^2+x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052973

/-- `ogf((1-x)/(1-x-3x^2+x^3))` -/
def P1180101383176060526.Spec : Prop :=
  ∀ n, P1180101383176060526.a n = A052973 n

theorem P1180101383176060526.correct : P1180101383176060526.Spec := by
  intro n
  simp only [A052973]

end A052973

/-! ## A052973.P7769939125049288475

`3*a(n-2)+a(n-1)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A052973.P7769939125049288475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3] fun n a =>
  3 * a (n - 2) + (a (n - 1) - a (n - 3))

end

end A052973.P7769939125049288475

namespace A052973

/-- `3*a(n-2)+a(n-1)-a(n-3)` -/
def P7769939125049288475.Spec : Prop :=
  ∀ n, P7769939125049288475.a n = A052973 n

end A052973

/-! ## A052973.P7260891911748318439

`a(n-1)-(a(n-3)-3*a(n-2))` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A052973.P7260891911748318439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3] fun n a =>
  a (n - 1) - (a (n - 3) - 3 * a (n - 2))

end

end A052973.P7260891911748318439

namespace A052973

/-- `a(n-1)-(a(n-3)-3*a(n-2))` -/
def P7260891911748318439.Spec : Prop :=
  ∀ n, P7260891911748318439.a n = A052973 n

end A052973

/-! ## A052973.P15745685376808815724

`A382683(n)-a(n-1)` with `a(0)=1`
-/

namespace A052973.P15745685376808815724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A382683 n - a (n - 1)

end

end A052973.P15745685376808815724

namespace A052973

/-- `A382683(n)-a(n-1)` -/
def P15745685376808815724.Spec : Prop :=
  ∀ n, P15745685376808815724.a n = A052973 n

end A052973

/-! ## A052973.P2328014757088328790

`A087640(n)+A382683(n)-A087955(n)`
-/

namespace A052973.P2328014757088328790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087640 n + (A382683 n - A087955 n)

end

end A052973.P2328014757088328790

namespace A052973

/-- `A087640(n)+A382683(n)-A087955(n)` -/
def P2328014757088328790.Spec : Prop :=
  ∀ n, P2328014757088328790.a n = A052973 n

end A052973

/-! ## A052973.P5175907981434123539

`A087955(n)+A382683(n)-A087956(n)`
-/

namespace A052973.P5175907981434123539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087955 n + (A382683 n - A087956 n)

end

end A052973.P5175907981434123539

namespace A052973

/-- `A087955(n)+A382683(n)-A087956(n)` -/
def P5175907981434123539.Spec : Prop :=
  ∀ n, P5175907981434123539.a n = A052973 n

end A052973

/-! ## A052973.P5178749476439393192

`A087956(n)+A382683(n)-A087957(n)`
-/

namespace A052973.P5178749476439393192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087956 n + (A382683 n - A087957 n)

end

end A052973.P5178749476439393192

namespace A052973

/-- `A087956(n)+A382683(n)-A087957(n)` -/
def P5178749476439393192.Spec : Prop :=
  ∀ n, P5178749476439393192.a n = A052973 n

end A052973

/-! ## A052973.P15201022505029870749

`A087957(n)+A382683(n)-A087958(n)`
-/

namespace A052973.P15201022505029870749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087957 n + (A382683 n - A087958 n)

end

end A052973.P15201022505029870749

namespace A052973

/-- `A087957(n)+A382683(n)-A087958(n)` -/
def P15201022505029870749.Spec : Prop :=
  ∀ n, P15201022505029870749.a n = A052973 n

end A052973

/-! ## A052973.P2551056804441107454

`A125691(n)+A125691(n)-A087640(n+1)`
-/

namespace A052973.P2551056804441107454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125691 n + (A125691 n - A087640 (n + 1))

end

end A052973.P2551056804441107454

namespace A052973

/-- `A125691(n)+A125691(n)-A087640(n+1)` -/
def P2551056804441107454.Spec : Prop :=
  ∀ n, P2551056804441107454.a n = A052973 n

end A052973

/-! ## A052973.P15460072662782006750

`Δ[floor(A087955(n)/2)]`
-/

namespace A052973.P15460072662782006750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087955 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052973.P15460072662782006750

namespace A052973

/-- `Δ[floor(A087955(n)/2)]` -/
def P15460072662782006750.Spec : Prop :=
  ∀ n, P15460072662782006750.a n = A052973 n

end A052973

/-! ## A052973.P17239111506018043453

`∑[A087955(n)]-Δ[A125691(n)]`
-/

namespace A052973.P17239111506018043453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087955 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A052973.P17239111506018043453

namespace A052973

/-- `∑[A087955(n)]-Δ[A125691(n)]` -/
def P17239111506018043453.Spec : Prop :=
  ∀ n, P17239111506018043453.a n = A052973 n

end A052973

/-! ## A052973.P8839586667765137833

`A087955(n+1)-A087640(n+1)`
-/

namespace A052973.P8839586667765137833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087955 (n + 1) - A087640 (n + 1)

end

end A052973.P8839586667765137833

namespace A052973

/-- `A087955(n+1)-A087640(n+1)` -/
def P8839586667765137833.Spec : Prop :=
  ∀ n, P8839586667765137833.a n = A052973 n

end A052973

/-! ## A052973.P5462559918464245400

`A087956(n+1)-A087955(n+1)`
-/

namespace A052973.P5462559918464245400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087956 (n + 1) - A087955 (n + 1)

end

end A052973.P5462559918464245400

namespace A052973

/-- `A087956(n+1)-A087955(n+1)` -/
def P5462559918464245400.Spec : Prop :=
  ∀ n, P5462559918464245400.a n = A052973 n

end A052973

/-! ## A052973.P12812700903202716889

`A087957(n+1)-A087956(n+1)`
-/

namespace A052973.P12812700903202716889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087957 (n + 1) - A087956 (n + 1)

end

end A052973.P12812700903202716889

namespace A052973

/-- `A087957(n+1)-A087956(n+1)` -/
def P12812700903202716889.Spec : Prop :=
  ∀ n, P12812700903202716889.a n = A052973 n

end A052973

/-! ## A052973.P16892885469589082117

`A087958(n+1)-A087957(n+1)`
-/

namespace A052973.P16892885469589082117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087958 (n + 1) - A087957 (n + 1)

end

end A052973.P16892885469589082117

namespace A052973

/-- `A087958(n+1)-A087957(n+1)` -/
def P16892885469589082117.Spec : Prop :=
  ∀ n, P16892885469589082117.a n = A052973 n

end A052973

/-! ## A052973.P12363781706758272643

`A307464(n+2)-A125691(n+1)`
-/

namespace A052973.P12363781706758272643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307464 (n + 2) - A125691 (n + 1)

end

end A052973.P12363781706758272643

namespace A052973

/-- `A307464(n+2)-A125691(n+1)` -/
def P12363781706758272643.Spec : Prop :=
  ∀ n, P12363781706758272643.a n = A052973 n

end A052973

/-! ## A052973.P14144316797010473050

`A087956(n+1)-2*A125691(n)`
-/

namespace A052973.P14144316797010473050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087956 (n + 1) - 2 * A125691 n

end

end A052973.P14144316797010473050

namespace A052973

/-- `A087956(n+1)-2*A125691(n)` -/
def P14144316797010473050.Spec : Prop :=
  ∀ n, P14144316797010473050.a n = A052973 n

end A052973

/-! ## A052973.P8415350809919160424

`(A087956(n+1)-A087640(n+1))/2`
-/

namespace A052973.P8415350809919160424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087956 (n + 1) - A087640 (n + 1) : ℚ) / 2

end

end A052973.P8415350809919160424

namespace A052973

/-- `(A087956(n+1)-A087640(n+1))/2` -/
def P8415350809919160424.Spec : Prop :=
  ∀ n, P8415350809919160424.a n = (A052973 n : ℚ)

end A052973

/-! ## A052973.P2674762475061254609

`(A087957(n+1)-A087955(n+1))/2`
-/

namespace A052973.P2674762475061254609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087957 (n + 1) - A087955 (n + 1) : ℚ) / 2

end

end A052973.P2674762475061254609

namespace A052973

/-- `(A087957(n+1)-A087955(n+1))/2` -/
def P2674762475061254609.Spec : Prop :=
  ∀ n, P2674762475061254609.a n = (A052973 n : ℚ)

end A052973

/-! ## A052973.P13637243249514580198

`(A087958(n+1)-A087956(n+1))/2`
-/

namespace A052973.P13637243249514580198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087958 (n + 1) - A087956 (n + 1) : ℚ) / 2

end

end A052973.P13637243249514580198

namespace A052973

/-- `(A087958(n+1)-A087956(n+1))/2` -/
def P13637243249514580198.Spec : Prop :=
  ∀ n, P13637243249514580198.a n = (A052973 n : ℚ)

end A052973

/-!
# A052974: Expansion of (1 - 2x)/(1 - 2x - x^2 - x^3 + 2x^4).

The programs for A052974, the canonical program `A052974.P16823077556608228553` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052974 has offset 0).

The definition of A052974 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x)/(1-2x-x^2-x^3+2x^4))` (program `A052974.P16823077556608228553`, by `A052974.P16823077556608228553.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052974.P16823077556608228553

`ogf((1-2x)/(1-2x-x^2-x^3+2x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052974

/-- `ogf((1-2x)/(1-2x-x^2-x^3+2x^4))` -/
def P16823077556608228553.Spec : Prop :=
  ∀ n, P16823077556608228553.a n = A052974 n

theorem P16823077556608228553.correct : P16823077556608228553.Spec := by
  intro n
  simp only [A052974]

end A052974

/-!
# A052975: Expansion of (1-2*x)*(1-x)/(1-5*x+6*x^2-x^3).

The programs for A052975, the canonical program `A052975.P135535521190982982` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052975 has offset 0).

The definition of A052975 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x+2x^2)/(1-5x+6x^2-x^3))` (program `A052975.P135535521190982982`, by `A052975.P135535521190982982.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052975.P135535521190982982

`ogf((1-3x+2x^2)/(1-5x+6x^2-x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052975

/-- `ogf((1-3x+2x^2)/(1-5x+6x^2-x^3))` -/
def P135535521190982982.Spec : Prop :=
  ∀ n, P135535521190982982.a n = A052975 n

theorem P135535521190982982.correct : P135535521190982982.Spec := by
  intro n
  simp only [A052975]

end A052975

/-! ## A052975.P1660106388439172491

`A028495(2*n)`
-/

namespace A052975.P1660106388439172491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 (2 * n)

end

end A052975.P1660106388439172491

namespace A052975

/-- `A028495(2*n)` -/
def P1660106388439172491.Spec : Prop :=
  ∀ n, P1660106388439172491.a n = A052975 n

end A052975

/-! ## A052975.P16345862758811364428

`5*a(n-1)-6*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A052975.P16345862758811364428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  5 * a (n - 1) - 6 * a (n - 2) + a (n - 3)

end

end A052975.P16345862758811364428

namespace A052975

/-- `5*a(n-1)-6*a(n-2)+a(n-3)` -/
def P16345862758811364428.Spec : Prop :=
  ∀ n, P16345862758811364428.a n = A052975 n

end A052975

/-! ## A052975.P14834897237141949223

`A187067(4*n+1)`
-/

namespace A052975.P14834897237141949223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (4 * n + 1)

end

end A052975.P14834897237141949223

namespace A052975

/-- `A187067(4*n+1)` -/
def P14834897237141949223.Spec : Prop :=
  ∀ n, P14834897237141949223.a n = A052975 n

end A052975

/-! ## A052975.P6109593257033749255

`record[A028495(n)^and(1, n+1)]`
-/

namespace A052975.P6109593257033749255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 n ^ Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052975.P6109593257033749255

namespace A052975

/-- `record[A028495(n)^and(1, n+1)]` -/
def P6109593257033749255.Spec : Prop :=
  ∀ n, P6109593257033749255.a n = A052975 n

end A052975

/-! ## A052975.P17581982239780973269

`record[A028495(floor(n/(n%2+1)))]`
-/

namespace A052975.P17581982239780973269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052975.P17581982239780973269

namespace A052975

/-- `record[A028495(floor(n/(n%2+1)))]` -/
def P17581982239780973269.Spec : Prop :=
  ∀ n, P17581982239780973269.a n = A052975 n

end A052975

/-! ## A052975.P15338732038833851261

`record[A028495(A014681(n))]`
-/

namespace A052975.P15338732038833851261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052975.P15338732038833851261

namespace A052975

/-- `record[A028495(A014681(n))]` -/
def P15338732038833851261.Spec : Prop :=
  ∀ n, P15338732038833851261.a n = A052975 n

end A052975

/-! ## A052975.P7974508693471878117

`record[A028495(A029578(n))]`
-/

namespace A052975.P7974508693471878117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052975.P7974508693471878117

namespace A052975

/-- `record[A028495(A029578(n))]` -/
def P7974508693471878117.Spec : Prop :=
  ∀ n, P7974508693471878117.a n = A052975 n

end A052975

/-! ## A052975.P11794588028682228109

`record[A028495(A153733(n))]`
-/

namespace A052975.P11794588028682228109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 (A153733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052975.P11794588028682228109

namespace A052975

/-- `record[A028495(A153733(n))]` -/
def P11794588028682228109.Spec : Prop :=
  ∀ n, P11794588028682228109.a n = A052975 n

end A052975

/-! ## A052975.P16714836936285209553

`record[A028495(n)/A134451(n+1)]`
-/

namespace A052975.P16714836936285209553
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028495 n : ℚ) / (A134451 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052975.P16714836936285209553

namespace A052975

/-- `record[A028495(n)/A134451(n+1)]` -/
def P16714836936285209553.Spec : Prop :=
  ∀ n, P16714836936285209553.a n = (A052975 n : ℚ)

end A052975

/-! ## A052975.P6047635261609810875

`A080937(n)+A006053(2*n+1)`
-/

namespace A052975.P6047635261609810875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080937 n + A006053 (2 * n + 1)

end

end A052975.P6047635261609810875

namespace A052975

/-- `A080937(n)+A006053(2*n+1)` -/
def P6047635261609810875.Spec : Prop :=
  ∀ n, P6047635261609810875.a n = A052975 n

end A052975

/-! ## A052975.P16247379438289110633

`A187065(4*n)+A052547(2*n)`
-/

namespace A052975.P16247379438289110633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187065 (4 * n) + A052547 (2 * n)

end

end A052975.P16247379438289110633

namespace A052975

/-- `A187065(4*n)+A052547(2*n)` -/
def P16247379438289110633.Spec : Prop :=
  ∀ n, P16247379438289110633.a n = A052975 n

end A052975

/-! ## A052975.P2948746096006866037

`A096976(2*n+1)+A080937(n+1)`
-/

namespace A052975.P2948746096006866037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 (2 * n + 1) + A080937 (n + 1)

end

end A052975.P2948746096006866037

namespace A052975

/-- `A096976(2*n+1)+A080937(n+1)` -/
def P2948746096006866037.Spec : Prop :=
  ∀ n, P2948746096006866037.a n = A052975 n

end A052975

/-! ## A052975.P13632975490283423122

`A096976(2*n)+A006053(2*n+1)`
-/

namespace A052975.P13632975490283423122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 (2 * n) + A006053 (2 * n + 1)

end

end A052975.P13632975490283423122

namespace A052975

/-- `A096976(2*n)+A006053(2*n+1)` -/
def P13632975490283423122.Spec : Prop :=
  ∀ n, P13632975490283423122.a n = A052975 n

end A052975

/-! ## A052975.P12887883838034519810

`A096976(2*n+1)+A052547(2*n)`
-/

namespace A052975.P12887883838034519810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 (2 * n + 1) + A052547 (2 * n)

end

end A052975.P12887883838034519810

namespace A052975

/-- `A096976(2*n+1)+A052547(2*n)` -/
def P12887883838034519810.Spec : Prop :=
  ∀ n, P12887883838034519810.a n = A052975 n

end A052975

/-! ## A052975.P6443530920182214124

`A096976(2*n+1)+A096976(2*(n+1))`
-/

namespace A052975.P6443530920182214124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 (2 * n + 1) + A096976 (2 * (n + 1))

end

end A052975.P6443530920182214124

namespace A052975

/-- `A096976(2*n+1)+A096976(2*(n+1))` -/
def P6443530920182214124.Spec : Prop :=
  ∀ n, P6443530920182214124.a n = A052975 n

end A052975

/-! ## A052975.P7057214282152908676

`A006053(2*n+1)+A052547(2*n)-A006053(2*n)`
-/

namespace A052975.P7057214282152908676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006053 (2 * n + 1) + (A052547 (2 * n) - A006053 (2 * n))

end

end A052975.P7057214282152908676

namespace A052975

/-- `A006053(2*n+1)+A052547(2*n)-A006053(2*n)` -/
def P7057214282152908676.Spec : Prop :=
  ∀ n, P7057214282152908676.a n = A052975 n

end A052975

/-! ## A052975.P18223382823789276748

`Δ[Δ[A080937(n)]]`
-/

namespace A052975.P18223382823789276748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080937 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052975.P18223382823789276748

namespace A052975

/-- `Δ[Δ[A080937(n)]]` -/
def P18223382823789276748.Spec : Prop :=
  ∀ n, P18223382823789276748.a n = A052975 n

end A052975

/-! ## A052975.P5728735456093031909

`Δ[A006053(2*n)]`
-/

namespace A052975.P5728735456093031909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006053 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052975.P5728735456093031909

namespace A052975

/-- `Δ[A006053(2*n)]` -/
def P5728735456093031909.Spec : Prop :=
  ∀ n, P5728735456093031909.a n = A052975 n

end A052975

/-! ## A052975.P11875560450715395097

`Δ[A265755(4*n)]`
-/

namespace A052975.P11875560450715395097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052975.P11875560450715395097

namespace A052975

/-- `Δ[A265755(4*n)]` -/
def P11875560450715395097.Spec : Prop :=
  ∀ n, P11875560450715395097.a n = A052975 n

end A052975

/-!
# A052976: Expansion of (1-2x)/(1-3x-x^3+2x^4).

The programs for A052976, the canonical program `A052976.P10052100887521920765` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052976 has offset 0).

The definition of A052976 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x)/(1-3x-x^3+2x^4))` (program `A052976.P10052100887521920765`, by `A052976.P10052100887521920765.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052976.P10052100887521920765

`ogf((1-2x)/(1-3x-x^3+2x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052976

/-- `ogf((1-2x)/(1-3x-x^3+2x^4))` -/
def P10052100887521920765.Spec : Prop :=
  ∀ n, P10052100887521920765.a n = A052976 n

theorem P10052100887521920765.correct : P10052100887521920765.Spec := by
  intro n
  simp only [A052976]

end A052976

/-! ## A052976.P7346316416565407708

`A195120(A133453(n)-A109545(n))`
-/

namespace A052976.P7346316416565407708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A133453 n - A109545 n).toNat

end

end A052976.P7346316416565407708

namespace A052976

/-- `A195120(A133453(n)-A109545(n))` -/
def P7346316416565407708.Spec : Prop :=
  ∀ n, P7346316416565407708.a n = A052976 n

end A052976

/-! ## A052976.P5512432908619208277

`A249728(A261237(n)²)`
-/

namespace A052976.P5512432908619208277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A261237 n ^ 2).toNat

end

end A052976.P5512432908619208277

namespace A052976

/-- `A249728(A261237(n)²)` -/
def P5512432908619208277.Spec : Prop :=
  ∀ n, P5512432908619208277.a n = A052976 n

end A052976

/-!
# A052977: Expansion of (1-x)(1+x)/(1 - x - x^2 - x^3 + x^5).

The programs for A052977, the canonical program `A052977.P6173317313416787445` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052977 has offset 0).

The definition of A052977 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-x-x^2-x^3+x^5))` (program `A052977.P6173317313416787445`, by `A052977.P6173317313416787445.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052977.P6173317313416787445

`ogf((1-x^2)/(1-x-x^2-x^3+x^5))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052977

/-- `ogf((1-x^2)/(1-x-x^2-x^3+x^5))` -/
def P6173317313416787445.Spec : Prop :=
  ∀ n, P6173317313416787445.a n = A052977 n

theorem P6173317313416787445.correct : P6173317313416787445.Spec := by
  intro n
  simp only [A052977]

end A052977

/-! ## A052977.P5794547248361580462

`A052972(n+1)-Δ[A254685(n)]`
-/

namespace A052977.P5794547248361580462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052972 (n + 1) - (f1 (n + 1) - f1 n)

end

end A052977.P5794547248361580462

namespace A052977

/-- `A052972(n+1)-Δ[A254685(n)]` -/
def P5794547248361580462.Spec : Prop :=
  ∀ n, P5794547248361580462.a n = A052977 n

end A052977

/-! ## A052977.P6772156576874887570

`Δ[∑[A052972(n)]-A254685(n)]`
-/

namespace A052977.P6772156576874887570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052972 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A254685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052977.P6772156576874887570

namespace A052977

/-- `Δ[∑[A052972(n)]-A254685(n)]` -/
def P6772156576874887570.Spec : Prop :=
  ∀ n, P6772156576874887570.a n = A052977 n

end A052977

/-! ## A052977.P16135522171010173104

`A199594(A020705(n))-∑[A052972(n)]`
-/

namespace A052977.P16135522171010173104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199594 (A020705 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052977.P16135522171010173104

namespace A052977

/-- `A199594(A020705(n))-∑[A052972(n)]` -/
def P16135522171010173104.Spec : Prop :=
  ∀ n, P16135522171010173104.a n = A052977 n

end A052977

/-! ## A052977.P17974656115379066090

`Δ[A254685(n+2)-∑[A254685(n)]]`
-/

namespace A052977.P17974656115379066090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254685 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254685 (n + 2) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052977.P17974656115379066090

namespace A052977

/-- `Δ[A254685(n+2)-∑[A254685(n)]]` -/
def P17974656115379066090.Spec : Prop :=
  ∀ n, P17974656115379066090.a n = A052977 n

end A052977

/-! ## A052977.P14261203042729678364

`Δ[A254685(n+2)]-A254685(n+1)`
-/

namespace A052977.P14261203042729678364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254685 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A254685 (n + 1)

end

end A052977.P14261203042729678364

namespace A052977

/-- `Δ[A254685(n+2)]-A254685(n+1)` -/
def P14261203042729678364.Spec : Prop :=
  ∀ n, P14261203042729678364.a n = A052977 n

end A052977

/-!
# A052978: Expansion of (1-2*x)/(1-4*x-2*x^2+4*x^3).

The programs for A052978, the canonical program `A052978.P8452003408678068527` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052978 has offset 0).

The definition of A052978 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x)/(1-4x-2x^2+4x^3))` (program `A052978.P8452003408678068527`, by `A052978.P8452003408678068527.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052978.P8452003408678068527

`ogf((1-2x)/(1-4x-2x^2+4x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052978

/-- `ogf((1-2x)/(1-4x-2x^2+4x^3))` -/
def P8452003408678068527.Spec : Prop :=
  ∀ n, P8452003408678068527.a n = A052978 n

theorem P8452003408678068527.correct : P8452003408678068527.Spec := by
  intro n
  simp only [A052978]

end A052978

/-! ## A052978.P5998392560478855536

`A220644(A133263(n))`
-/

namespace A052978.P5998392560478855536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220644 (A133263 n).toNat

end

end A052978.P5998392560478855536

namespace A052978

/-- `A220644(A133263(n))` -/
def P5998392560478855536.Spec : Prop :=
  ∀ n, P5998392560478855536.a n = A052978 n

end A052978

/-! ## A052978.P14017105071113076686

`A220644(A212342(n+1))`
-/

namespace A052978.P14017105071113076686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220644 (A212342 (n + 1)).toNat

end

end A052978.P14017105071113076686

namespace A052978

/-- `A220644(A212342(n+1))` -/
def P14017105071113076686.Spec : Prop :=
  ∀ n, P14017105071113076686.a n = A052978 n

end A052978

/-! ## A052978.P9724205991981746050

`A220644(A238531(n+1))`
-/

namespace A052978.P9724205991981746050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220644 (A238531 (n + 1)).toNat

end

end A052978.P9724205991981746050

namespace A052978

/-- `A220644(A238531(n+1))` -/
def P9724205991981746050.Spec : Prop :=
  ∀ n, P9724205991981746050.a n = A052978 n

end A052978

/-! ## A052978.P17214270678207281984

`A220644(A089071(n+1)+n)`
-/

namespace A052978.P17214270678207281984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220644 (A089071 (n + 1) + (n : ℤ)).toNat

end

end A052978.P17214270678207281984

namespace A052978

/-- `A220644(A089071(n+1)+n)` -/
def P17214270678207281984.Spec : Prop :=
  ∀ n, P17214270678207281984.a n = A052978 n

end A052978

/-!
# A052979: Expansion of (1-x)(1+x)/(1-2*x-3*x^2+2*x^4).

The programs for A052979, the canonical program `A052979.P2576233729112227134` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052979 has offset 0).

The definition of A052979 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-2x-3x^2+2x^4))` (program `A052979.P2576233729112227134`, by `A052979.P2576233729112227134.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052979.P2576233729112227134

`ogf((1-x^2)/(1-2x-3x^2+2x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052979

/-- `ogf((1-x^2)/(1-2x-3x^2+2x^4))` -/
def P2576233729112227134.Spec : Prop :=
  ∀ n, P2576233729112227134.a n = A052979 n

theorem P2576233729112227134.correct : P2576233729112227134.Spec := by
  intro n
  simp only [A052979]

end A052979

/-! ## A052979.P15856029167651696456

`A129853(2*n)+A066272(A000272(n))`
-/

namespace A052979.P15856029167651696456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129853 (2 * n) + A066272 (A000272 n).toNat

end

end A052979.P15856029167651696456

namespace A052979

/-- `A129853(2*n)+A066272(A000272(n))` -/
def P15856029167651696456.Spec : Prop :=
  ∀ n, P15856029167651696456.a n = A052979 n

end A052979

/-!
# A052980: Expansion of (1 - x)/(1 - 2*x - x^3).

The programs for A052980, the canonical program `A052980.P17488372593154462851` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052980 has offset 0).

The definition of A052980 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x-x^3))` (program `A052980.P17488372593154462851`, by `A052980.P17488372593154462851.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052980.P17488372593154462851

`ogf((1-x)/(1-2x-x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052980

/-- `ogf((1-x)/(1-2x-x^3))` -/
def P17488372593154462851.Spec : Prop :=
  ∀ n, P17488372593154462851.a n = A052980 n

theorem P17488372593154462851.correct : P17488372593154462851.Spec := by
  intro n
  simp only [A052980]

end A052980

/-! ## A052980.P7924031810732695974

`2*a(n-1)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A052980.P7924031810732695974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  2 * a (n - 1) + a (n - 3)

end

end A052980.P7924031810732695974

namespace A052980

/-- `2*a(n-1)+a(n-3)` -/
def P7924031810732695974.Spec : Prop :=
  ∀ n, (P7924031810732695974.a n : ℤ) = A052980 n

end A052980

/-! ## A052980.P18243284272459916737

`a(n-1)+a(n-1)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A052980.P18243284272459916737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 3))

end

end A052980.P18243284272459916737

namespace A052980

/-- `a(n-1)+a(n-1)+a(n-3)` -/
def P18243284272459916737.Spec : Prop :=
  ∀ n, (P18243284272459916737.a n : ℤ) = A052980 n

end A052980

/-! ## A052980.P4583490641437175493

`abs(A110513(n))`
-/

namespace A052980.P4583490641437175493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110513 n|

end

end A052980.P4583490641437175493

namespace A052980

/-- `abs(A110513(n))` -/
def P4583490641437175493.Spec : Prop :=
  ∀ n, P4583490641437175493.a n = A052980 n

end A052980

/-! ## A052980.P18252015341895523341

`∑[A214260(abs(1-n))]`
-/

namespace A052980.P18252015341895523341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214260 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052980.P18252015341895523341

namespace A052980

/-- `∑[A214260(abs(1-n))]` -/
def P18252015341895523341.Spec : Prop :=
  ∀ n, P18252015341895523341.a n = A052980 n

end A052980

/-! ## A052980.P5353673366694758128

`A190512((n-1)%(n+1))`
-/

namespace A052980.P5353673366694758128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190512 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A052980.P5353673366694758128

namespace A052980

/-- `A190512((n-1)%(n+1))` -/
def P5353673366694758128.Spec : Prop :=
  ∀ n, P5353673366694758128.a n = A052980 n

end A052980

/-! ## A052980.P16856270819279870448

`A214260(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A052980.P16856270819279870448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214260 (n - 1) + a (n - 1)

end

end A052980.P16856270819279870448

namespace A052980

/-- `A214260(n-1)+a(n-1)` -/
def P16856270819279870448.Spec : Prop :=
  ∀ n, P16856270819279870448.a n = A052980 n

end A052980

/-! ## A052980.P11243383271286034144

`A239905(A008574(n))`
-/

namespace A052980.P11243383271286034144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239905 (A008574 n).toNat

end

end A052980.P11243383271286034144

namespace A052980

/-- `A239905(A008574(n))` -/
def P11243383271286034144.Spec : Prop :=
  ∀ n, P11243383271286034144.a n = A052980 n

end A052980

/-! ## A052980.P7085617196851787811

`A239905(A336705(n))`
-/

namespace A052980.P7085617196851787811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239905 (A336705 n).toNat

end

end A052980.P7085617196851787811

namespace A052980

/-- `A239905(A336705(n))` -/
def P7085617196851787811.Spec : Prop :=
  ∀ n, P7085617196851787811.a n = A052980 n

end A052980

/-! ## A052980.P11062179480364155382

`A190512(A289207(n+1))`
-/

namespace A052980.P11062179480364155382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190512 (A289207 (n + 1)).toNat

end

end A052980.P11062179480364155382

namespace A052980

/-- `A190512(A289207(n+1))` -/
def P11062179480364155382.Spec : Prop :=
  ∀ n, P11062179480364155382.a n = A052980 n

end A052980

/-! ## A052980.P7285610306668725406

`A239905(A019442(n+2))`
-/

namespace A052980.P7285610306668725406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239905 (A019442 (n + 2)).toNat

end

end A052980.P7285610306668725406

namespace A052980

/-- `A239905(A019442(n+2))` -/
def P7285610306668725406.Spec : Prop :=
  ∀ n, P7285610306668725406.a n = A052980 n

end A052980

/-! ## A052980.P3378037214835362288

`A239905(A004277(2*n))`
-/

namespace A052980.P3378037214835362288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239905 (A004277 (2 * n)).toNat

end

end A052980.P3378037214835362288

namespace A052980

/-- `A239905(A004277(2*n))` -/
def P3378037214835362288.Spec : Prop :=
  ∀ n, P3378037214835362288.a n = A052980 n

end A052980

/-! ## A052980.P15042352346754029461

`A033999(n)*A110513(n)`
-/

namespace A052980.P15042352346754029461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A110513 n

end

end A052980.P15042352346754029461

namespace A052980

/-- `A033999(n)*A110513(n)` -/
def P15042352346754029461.Spec : Prop :=
  ∀ n, P15042352346754029461.a n = A052980 n

end A052980

/-! ## A052980.P12992658208586773557

`gcd(A000038(n), A110513(n))`
-/

namespace A052980.P12992658208586773557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A110513 n)

end

end A052980.P12992658208586773557

namespace A052980

/-- `gcd(A000038(n), A110513(n))` -/
def P12992658208586773557.Spec : Prop :=
  ∀ n, (P12992658208586773557.a n : ℤ) = A052980 n

end A052980

/-! ## A052980.P12503373571300057490

`lcm(A020985(n), A110513(n))`
-/

namespace A052980.P12503373571300057490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A110513 n)

end

end A052980.P12503373571300057490

namespace A052980

/-- `lcm(A020985(n), A110513(n))` -/
def P12503373571300057490.Spec : Prop :=
  ∀ n, (P12503373571300057490.a n : ℤ) = A052980 n

end A052980

/-! ## A052980.P10790067814276674401

`A239905(A131098(n+1)+1)`
-/

namespace A052980.P10790067814276674401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239905 (A131098 (n + 1) + 1).toNat

end

end A052980.P10790067814276674401

namespace A052980

/-- `A239905(A131098(n+1)+1)` -/
def P10790067814276674401.Spec : Prop :=
  ∀ n, P10790067814276674401.a n = A052980 n

end A052980

/-! ## A052980.P3017625092770196500

`A190512(A289207(2*n)/2)`
-/

namespace A052980.P3017625092770196500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190512 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

end

end A052980.P3017625092770196500

namespace A052980

/-- `A190512(A289207(2*n)/2)` -/
def P3017625092770196500.Spec : Prop :=
  ∀ n, P3017625092770196500.a n = A052980 n

end A052980

/-! ## A052980.P3309291437324837948

`A190512(A004277(n)-(n+1))`
-/

namespace A052980.P3309291437324837948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190512 (A004277 n - (n + 1 : ℤ)).toNat

end

end A052980.P3309291437324837948

namespace A052980

/-- `A190512(A004277(n)-(n+1))` -/
def P3309291437324837948.Spec : Prop :=
  ∀ n, P3309291437324837948.a n = A052980 n

end A052980

/-! ## A052980.P9892894750993149676

`3*a(n-1)-(a(n-1)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A052980.P9892894750993149676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  3 * a (n - 1) - (a (n - 1) - a (n - 3))

end

end A052980.P9892894750993149676

namespace A052980

/-- `3*a(n-1)-(a(n-1)-a(n-3))` -/
def P9892894750993149676.Spec : Prop :=
  ∀ n, P9892894750993149676.a n = A052980 n

end A052980

/-!
# A052981: Expansion of ( 1-x ) / ( 1-4*x-3*x^2+3*x^3 ).

The programs for A052981, the canonical program `A052981.P3829339536090658113` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052981 has offset 0).

The definition of A052981 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-4x-3x^2+3x^3))` (program `A052981.P3829339536090658113`, by `A052981.P3829339536090658113.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052981.P3829339536090658113

`ogf((1-x)/(1-4x-3x^2+3x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052981

/-- `ogf((1-x)/(1-4x-3x^2+3x^3))` -/
def P3829339536090658113.Spec : Prop :=
  ∀ n, P3829339536090658113.a n = A052981 n

theorem P3829339536090658113.correct : P3829339536090658113.Spec := by
  intro n
  simp only [A052981]

end A052981

/-! ## A052981.P2144214770235447997

`A005350(Δ[A151146(n)])`
-/

namespace A052981.P2144214770235447997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005350 (f1 (n + 1) - f1 n).toNat

end

end A052981.P2144214770235447997

namespace A052981

/-- `A005350(Δ[A151146(n)])` -/
def P2144214770235447997.Spec : Prop :=
  ∀ n, P2144214770235447997.a n = A052981 n

end A052981

/-!
# A052982: Expansion of ( 1-x ) / ( 1-2*x-2*x^2+x^4 ).

The programs for A052982, the canonical program `A052982.P12115654499381593382` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052982 has offset 0).

The definition of A052982 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x-2x^2+x^4))` (program `A052982.P12115654499381593382`, by `A052982.P12115654499381593382.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052982.P12115654499381593382

`ogf((1-x)/(1-2x-2x^2+x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052982

/-- `ogf((1-x)/(1-2x-2x^2+x^4))` -/
def P12115654499381593382.Spec : Prop :=
  ∀ n, P12115654499381593382.a n = A052982 n

theorem P12115654499381593382.correct : P12115654499381593382.Spec := by
  intro n
  simp only [A052982]

end A052982

/-! ## A052982.P12631620274941540428

`Δ[floor(A181329(n)/2)]`
-/

namespace A052982.P12631620274941540428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A181329 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052982.P12631620274941540428

namespace A052982

/-- `Δ[floor(A181329(n)/2)]` -/
def P12631620274941540428.Spec : Prop :=
  ∀ n, P12631620274941540428.a n = A052982 n

end A052982

/-! ## A052982.P7251357617124952073

`Δ[A181329(n)]/A014963(A001316(n))`
-/

namespace A052982.P7251357617124952073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181329 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A014963 (A001316 n).toNat : ℚ)

end

end A052982.P7251357617124952073

namespace A052982

/-- `Δ[A181329(n)]/A014963(A001316(n))` -/
def P7251357617124952073.Spec : Prop :=
  ∀ n, P7251357617124952073.a n = (A052982 n : ℚ)

end A052982

/-! ## A052982.P5364972548760996785

`Δ[A181329(n)]/A020639(A004277(n))`
-/

namespace A052982.P5364972548760996785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181329 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A020639 (A004277 n).toNat : ℚ)

end

end A052982.P5364972548760996785

namespace A052982

/-- `Δ[A181329(n)]/A020639(A004277(n))` -/
def P5364972548760996785.Spec : Prop :=
  ∀ n, P5364972548760996785.a n = (A052982 n : ℚ)

end A052982

/-! ## A052982.P8792494944491203341

`Δ[A181329(n)]/A020639(A008574(n))`
-/

namespace A052982.P8792494944491203341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181329 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A020639 (A008574 n).toNat : ℚ)

end

end A052982.P8792494944491203341

namespace A052982

/-- `Δ[A181329(n)]/A020639(A008574(n))` -/
def P8792494944491203341.Spec : Prop :=
  ∀ n, P8792494944491203341.a n = (A052982 n : ℚ)

end A052982

/-! ## A052982.P14764521145509355409

`Δ[A181329(n)]/A020639(A000010(n+2))`
-/

namespace A052982.P14764521145509355409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181329 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A020639 (A000010 (n + 2)).toNat : ℚ)

end

end A052982.P14764521145509355409

namespace A052982

/-- `Δ[A181329(n)]/A020639(A000010(n+2))` -/
def P14764521145509355409.Spec : Prop :=
  ∀ n, P14764521145509355409.a n = (A052982 n : ℚ)

end A052982

/-!
# A052983: Least multiple of n consisting of a succession of 1's followed by a succession of 0's.

The programs for A052983, there is no canonical definition to state claims against.
-/

/-! ## A052983.P18149546599246846820

`A276348(n+1)*(n+1)`
-/

namespace A052983.P18149546599246846820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276348 (n + 1) * (n + 1 : ℤ)

end

end A052983.P18149546599246846820

/-! ## A052983.P16667156686218829594

`lcm(10, A244859(n+1))`
-/

namespace A052983.P16667156686218829594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 10 (A244859 (n + 1))

end

end A052983.P16667156686218829594

/-! ## A052983.P13031391283955789595

`A276348(A328617(n+1))/cot(atan(n+1))`
-/

namespace A052983.P13031391283955789595
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A276348 (A328617 (n + 1)).toNat : ℝ) / Real.cot (Real.arctan (n + 1 : ℝ))

end

end A052983.P13031391283955789595

/-! ## A052983.P9167215045888497382

`lcm(A000005(A000079(n)), A276348(n+1))`
-/

namespace A052983.P9167215045888497382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A000079 n).toNat) (A276348 (n + 1))

end

end A052983.P9167215045888497382

/-! ## A052983.P14412122141344801219

`A007088(A306544(n+1))`
-/

namespace A052983.P14412122141344801219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A306544 (n + 1)).toNat

end

end A052983.P14412122141344801219

/-!
# A052984: a(n) = 5*a(n-1) - 2*a(n-2) for n>1, with a(0) = 1, a(1) = 3.

The programs for A052984, the canonical program `A052984.P4855201715455089674` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052984 has offset 0).

The definition of A052984 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-2*a(n-2)` (program `A052984.P4855201715455089674`, by `A052984.P4855201715455089674.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052984.P4855201715455089674

`5*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052984

/-- `5*a(n-1)-2*a(n-2)` -/
def P4855201715455089674.Spec : Prop :=
  ∀ n, P4855201715455089674.a n = A052984 n

theorem P4855201715455089674.correct : P4855201715455089674.Spec := by
  intro n
  simp only [A052984]

end A052984

/-! ## A052984.P211874928281526584

`(a(n-1)²+2^n)/a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A052984.P211874928281526584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (a (n - 1) ^ 2 + (2 ^ n : ℚ)) / a (n - 2)

end

end A052984.P211874928281526584

namespace A052984

/-- `(a(n-1)²+2^n)/a(n-2)` -/
def P211874928281526584.Spec : Prop :=
  ∀ n, P211874928281526584.a n = (A052984 n : ℚ)

end A052984

/-! ## A052984.P7794871464575149616

`ogf((1-2x)/(1-5x+2x^2))`
-/

namespace A052984.P7794871464575149616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -5, 2] n

end

end A052984.P7794871464575149616

namespace A052984

/-- `ogf((1-2x)/(1-5x+2x^2))` -/
def P7794871464575149616.Spec : Prop :=
  ∀ n, P7794871464575149616.a n = A052984 n

end A052984

/-! ## A052984.P1302697559810490603

`∑[A204091(n)]`
-/

namespace A052984.P1302697559810490603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052984.P1302697559810490603

namespace A052984

/-- `∑[A204091(n)]` -/
def P1302697559810490603.Spec : Prop :=
  ∀ n, P1302697559810490603.a n = A052984 n

end A052984

/-! ## A052984.P16262424384587985299

`A005824(Δ[n²])`
-/

namespace A052984.P16262424384587985299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005824 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A052984.P16262424384587985299

namespace A052984

/-- `A005824(Δ[n²])` -/
def P16262424384587985299.Spec : Prop :=
  ∀ n, P16262424384587985299.a n = A052984 n

end A052984

/-! ## A052984.P1792168022804531108

`abs(A152594(n+1))`
-/

namespace A052984.P1792168022804531108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A152594 (n + 1)|

end

end A052984.P1792168022804531108

namespace A052984

/-- `abs(A152594(n+1))` -/
def P1792168022804531108.Spec : Prop :=
  ∀ n, P1792168022804531108.a n = A052984 n

end A052984

/-! ## A052984.P8275710994886555479

`1-∑[A106709(n)]`
-/

namespace A052984.P8275710994886555479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052984.P8275710994886555479

namespace A052984

/-- `1-∑[A106709(n)]` -/
def P8275710994886555479.Spec : Prop :=
  ∀ n, P8275710994886555479.a n = A052984 n

end A052984

/-! ## A052984.P8396760680957372025

`∏[abs(ratio[A152594(n)])]`
-/

namespace A052984.P8396760680957372025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152594 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℚ) / (f2 n : ℚ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A052984.P8396760680957372025

namespace A052984

/-- `∏[abs(ratio[A152594(n)])]` -/
def P8396760680957372025.Spec : Prop :=
  ∀ n, P8396760680957372025.a n = (A052984 n : ℚ)

end A052984

/-! ## A052984.P15316545443838209773

`A249581(4*n+2)`
-/

namespace A052984.P15316545443838209773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249581 (4 * n + 2)

end

end A052984.P15316545443838209773

namespace A052984

/-- `A249581(4*n+2)` -/
def P15316545443838209773.Spec : Prop :=
  ∀ n, P15316545443838209773.a n = A052984 n

end A052984

/-! ## A052984.P6836896178942658276

`∑[∑[A147722(n)]]-n`
-/

namespace A052984.P6836896178942658276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147722 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A052984.P6836896178942658276

namespace A052984

/-- `∑[∑[A147722(n)]]-n` -/
def P6836896178942658276.Spec : Prop :=
  ∀ n, P6836896178942658276.a n = A052984 n

end A052984

/-! ## A052984.P4217489144641547977

`∑[A079162(2*n)]+1`
-/

namespace A052984.P4217489144641547977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079162 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A052984.P4217489144641547977

namespace A052984

/-- `∑[A079162(2*n)]+1` -/
def P4217489144641547977.Spec : Prop :=
  ∀ n, P4217489144641547977.a n = A052984 n

end A052984

/-! ## A052984.P8288792871741832118

`∑[A079162(A004277(n))]`
-/

namespace A052984.P8288792871741832118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079162 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052984.P8288792871741832118

namespace A052984

/-- `∑[A079162(A004277(n))]` -/
def P8288792871741832118.Spec : Prop :=
  ∀ n, P8288792871741832118.a n = A052984 n

end A052984

/-! ## A052984.P6982086419011351443

`A147722(n)-A106709(n)/2`
-/

namespace A052984.P6982086419011351443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147722 n : ℚ) - (A106709 n : ℚ) / 2

end

end A052984.P6982086419011351443

namespace A052984

/-- `A147722(n)-A106709(n)/2` -/
def P6982086419011351443.Spec : Prop :=
  ∀ n, P6982086419011351443.a n = (A052984 n : ℚ)

end A052984

/-! ## A052984.P11748263259569528482

`A249581(A111284(n+2))/A033999(n+1)²`
-/

namespace A052984.P11748263259569528482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249581 (A111284 (n + 2)).toNat : ℚ) / (A033999 (n + 1) ^ 2 : ℚ)

end

end A052984.P11748263259569528482

namespace A052984

/-- `A249581(A111284(n+2))/A033999(n+1)²` -/
def P11748263259569528482.Spec : Prop :=
  ∀ n, P11748263259569528482.a n = (A052984 n : ℚ)

end A052984

/-! ## A052984.P9861608455181666739

`A107839(n)+A106709(n)`
-/

namespace A052984.P9861608455181666739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107839 n + A106709 n

end

end A052984.P9861608455181666739

namespace A052984

/-- `A107839(n)+A106709(n)` -/
def P9861608455181666739.Spec : Prop :=
  ∀ n, P9861608455181666739.a n = A052984 n

end A052984

/-! ## A052984.P5502704813940876375

`A109165(2*n)+A106709(n)`
-/

namespace A052984.P5502704813940876375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109165 (2 * n) + A106709 n

end

end A052984.P5502704813940876375

namespace A052984

/-- `A109165(2*n)+A106709(n)` -/
def P5502704813940876375.Spec : Prop :=
  ∀ n, P5502704813940876375.a n = A052984 n

end A052984

/-! ## A052984.P16769620891408775995

`A052913(n)-A005824(2*n)`
-/

namespace A052984.P16769620891408775995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052913 n - A005824 (2 * n)

end

end A052984.P16769620891408775995

namespace A052984

/-- `A052913(n)-A005824(2*n)` -/
def P16769620891408775995.Spec : Prop :=
  ∀ n, P16769620891408775995.a n = A052984 n

end A052984

/-! ## A052984.P8382983186299793802

`A052913(n)+A106709(n)/2`
-/

namespace A052984.P8382983186299793802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052913 n : ℚ) + (A106709 n : ℚ) / 2

end

end A052984.P8382983186299793802

namespace A052984

/-- `A052913(n)+A106709(n)/2` -/
def P8382983186299793802.Spec : Prop :=
  ∀ n, P8382983186299793802.a n = (A052984 n : ℚ)

end A052984

/-! ## A052984.P6299433485012913230

`A107839(n)-A079162(2*n)`
-/

namespace A052984.P6299433485012913230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107839 n - A079162 (2 * n)

end

end A052984.P6299433485012913230

namespace A052984

/-- `A107839(n)-A079162(2*n)` -/
def P6299433485012913230.Spec : Prop :=
  ∀ n, P6299433485012913230.a n = A052984 n

end A052984

/-! ## A052984.P10136704239035427568

`A109165(2*n)-A079162(2*n)`
-/

namespace A052984.P10136704239035427568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109165 (2 * n) - A079162 (2 * n)

end

end A052984.P10136704239035427568

namespace A052984

/-- `A109165(2*n)-A079162(2*n)` -/
def P10136704239035427568.Spec : Prop :=
  ∀ n, P10136704239035427568.a n = A052984 n

end A052984

/-!
# A052985: Expansion of ( 1-x ) / ( 1-3*x+x^2-x^3+x^4 ).

The programs for A052985, the canonical program `A052985.P12857039573240344884` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052985 has offset 0).

The definition of A052985 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-3x+x^2-x^3+x^4))` (program `A052985.P12857039573240344884`, by `A052985.P12857039573240344884.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052985.P12857039573240344884

`ogf((1-x)/(1-3x+x^2-x^3+x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052985

/-- `ogf((1-x)/(1-3x+x^2-x^3+x^4))` -/
def P12857039573240344884.Spec : Prop :=
  ∀ n, P12857039573240344884.a n = A052985 n

theorem P12857039573240344884.correct : P12857039573240344884.Spec := by
  intro n
  simp only [A052985]

end A052985

/-! ## A052985.P7975226430153406711

`∑[A153582(n)-A025442(A248571(n+1))]`
-/

namespace A052985.P7975226430153406711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153582 n - A025442 (A248571 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052985.P7975226430153406711

namespace A052985

/-- `∑[A153582(n)-A025442(A248571(n+1))]` -/
def P7975226430153406711.Spec : Prop :=
  ∀ n, P7975226430153406711.a n = A052985 n

end A052985

/-! ## A052985.P16639053103476381161

`A248186(floor(exp(n))+3)`
-/

namespace A052985.P16639053103476381161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248186 (⌊Real.exp (n : ℝ)⌋ + 3).toNat

end

end A052985.P16639053103476381161

namespace A052985

/-- `A248186(floor(exp(n))+3)` -/
def P16639053103476381161.Spec : Prop :=
  ∀ n, P16639053103476381161.a n = A052985 n

end A052985

/-! ## A052985.P15017936424797707867

`A209081(A024581(n))`
-/

namespace A052985.P15017936424797707867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209081 (A024581 n).toNat

end

end A052985.P15017936424797707867

namespace A052985

/-- `A209081(A024581(n))` -/
def P15017936424797707867.Spec : Prop :=
  ∀ n, P15017936424797707867.a n = A052985 n

end A052985

/-!
# A052986: Expansion of ( 1-2*x ) / ( (x-1)*(2*x^2+3*x-1) ).

The programs for A052986, the canonical program `A052986.P15090728319722470324` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052986 has offset 0).

The definition of A052986 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x)/(1-4x+x^2+2x^3))` (program `A052986.P15090728319722470324`, by `A052986.P15090728319722470324.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052986.P15090728319722470324

`ogf((1-2x)/(1-4x+x^2+2x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052986

/-- `ogf((1-2x)/(1-4x+x^2+2x^3))` -/
def P15090728319722470324.Spec : Prop :=
  ∀ n, P15090728319722470324.a n = A052986 n

theorem P15090728319722470324.correct : P15090728319722470324.Spec := by
  intro n
  simp only [A052986]

end A052986

/-! ## A052986.P14699948084180159805

`∑[2*a(n-2)+3*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A052986.P14699948084180159805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 (n - 2) + 3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052986.P14699948084180159805

namespace A052986

/-- `∑[2*a(n-2)+3*a(n-1)]` -/
def P14699948084180159805.Spec : Prop :=
  ∀ n, (P14699948084180159805.a n : ℤ) = A052986 n

end A052986

/-! ## A052986.P15053316991596171540

`2*a(n-2)+3*a(n-1)-1` with `a(0)=1, a(1)=2`
-/

namespace A052986.P15053316991596171540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 2) + (3 * a (n - 1) - 1)

end

end A052986.P15053316991596171540

namespace A052986

/-- `2*a(n-2)+3*a(n-1)-1` -/
def P15053316991596171540.Spec : Prop :=
  ∀ n, P15053316991596171540.a n = A052986 n

end A052986

/-! ## A052986.P12753930618344531037

`2*a(n-2)-(1-3*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A052986.P12753930618344531037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 2) - (1 - 3 * a (n - 1))

end

end A052986.P12753930618344531037

namespace A052986

/-- `2*a(n-2)-(1-3*a(n-1))` -/
def P12753930618344531037.Spec : Prop :=
  ∀ n, P12753930618344531037.a n = A052986 n

end A052986

/-! ## A052986.P13006939338998776083

`∑[2*A230269(n+1)+1]`
-/

namespace A052986.P13006939338998776083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A230269 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052986.P13006939338998776083

namespace A052986

/-- `∑[2*A230269(n+1)+1]` -/
def P13006939338998776083.Spec : Prop :=
  ∀ n, P13006939338998776083.a n = A052986 n

end A052986

/-! ## A052986.P11103992591949955662

`A007483(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A052986.P11103992591949955662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007483 (n - 1) + a (n - 1)

end

end A052986.P11103992591949955662

namespace A052986

/-- `A007483(n-1)+a(n-1)` -/
def P11103992591949955662.Spec : Prop :=
  ∀ n, P11103992591949955662.a n = A052986 n

end A052986

/-! ## A052986.P17833737612426534303

`A230269(n+2)+1-a(n-1)` with `a(0)=1`
-/

namespace A052986.P17833737612426534303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A230269 (n + 2) + 1 - a (n - 1)

end

end A052986.P17833737612426534303

namespace A052986

/-- `A230269(n+2)+1-a(n-1)` -/
def P17833737612426534303.Spec : Prop :=
  ∀ n, P17833737612426534303.a n = A052986 n

end A052986

/-! ## A052986.P1612043082196960719

`∑[A007455(A004273(n))]`
-/

namespace A052986.P1612043082196960719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007455 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052986.P1612043082196960719

namespace A052986

/-- `∑[A007455(A004273(n))]` -/
def P1612043082196960719.Spec : Prop :=
  ∀ n, P1612043082196960719.a n = A052986 n

end A052986

/-! ## A052986.P10965671204499355450

`∑[A007455(record[A026741(n)])]`
-/

namespace A052986.P10965671204499355450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007455 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052986.P10965671204499355450

namespace A052986

/-- `∑[A007455(record[A026741(n)])]` -/
def P10965671204499355450.Spec : Prop :=
  ∀ n, P10965671204499355450.a n = A052986 n

end A052986

/-! ## A052986.P15550313898045230174

`∑[A007483(val(A011782(n), 2))]`
-/

namespace A052986.P15550313898045230174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007483 (SequenceMachineLib.valuation (A011782 n).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052986.P15550313898045230174

namespace A052986

/-- `∑[A007483(val(A011782(n), 2))]` -/
def P15550313898045230174.Spec : Prop :=
  ∀ n, P15550313898045230174.a n = A052986 n

end A052986

/-! ## A052986.P1807547350977869681

`∑[A206776(n)]-A007482(n)`
-/

namespace A052986.P1807547350977869681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007482 n

end

end A052986.P1807547350977869681

namespace A052986

/-- `∑[A206776(n)]-A007482(n)` -/
def P1807547350977869681.Spec : Prop :=
  ∀ n, P1807547350977869681.a n = A052986 n

end A052986

/-! ## A052986.P273210743291621541

`A180144(n)-A106434(n+1)`
-/

namespace A052986.P273210743291621541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180144 n - A106434 (n + 1)

end

end A052986.P273210743291621541

namespace A052986

/-- `A180144(n)-A106434(n+1)` -/
def P273210743291621541.Spec : Prop :=
  ∀ n, P273210743291621541.a n = A052986 n

end A052986

/-! ## A052986.P13939416433627142376

`(A193653(n)+A104934(n))/2`
-/

namespace A052986.P13939416433627142376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193653 n + A104934 n : ℚ) / 2

end

end A052986.P13939416433627142376

namespace A052986

/-- `(A193653(n)+A104934(n))/2` -/
def P13939416433627142376.Spec : Prop :=
  ∀ n, P13939416433627142376.a n = (A052986 n : ℚ)

end A052986

/-! ## A052986.P18441449734085771187

`∑[A007482(n)]-A230269(n+2)`
-/

namespace A052986.P18441449734085771187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A230269 (n + 2)

end

end A052986.P18441449734085771187

namespace A052986

/-- `∑[A007482(n)]-A230269(n+2)` -/
def P18441449734085771187.Spec : Prop :=
  ∀ n, P18441449734085771187.a n = A052986 n

end A052986

/-! ## A052986.P11444120397648624326

`∑[2*A104934(n)-A007482(n)]`
-/

namespace A052986.P11444120397648624326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104934 n - A007482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052986.P11444120397648624326

namespace A052986

/-- `∑[2*A104934(n)-A007482(n)]` -/
def P11444120397648624326.Spec : Prop :=
  ∀ n, P11444120397648624326.a n = A052986 n

end A052986

/-! ## A052986.P16809609374141175959

`A193653(n)+A230269(n+1)/2`
-/

namespace A052986.P16809609374141175959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193653 n : ℚ) + (A230269 (n + 1) : ℚ) / 2

end

end A052986.P16809609374141175959

namespace A052986

/-- `A193653(n)+A230269(n+1)/2` -/
def P16809609374141175959.Spec : Prop :=
  ∀ n, P16809609374141175959.a n = (A052986 n : ℚ)

end A052986

/-! ## A052986.P11154867325316345783

`A104934(n)-A230269(n+1)/2`
-/

namespace A052986.P11154867325316345783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104934 n : ℚ) - (A230269 (n + 1) : ℚ) / 2

end

end A052986.P11154867325316345783

namespace A052986

/-- `A104934(n)-A230269(n+1)/2` -/
def P11154867325316345783.Spec : Prop :=
  ∀ n, P11154867325316345783.a n = (A052986 n : ℚ)

end A052986

/-! ## A052986.P9124943994318868381

`∑[∑[A104934(n)]-A106434(n+1)]`
-/

namespace A052986.P9124943994318868381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104934 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A106434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052986.P9124943994318868381

namespace A052986

/-- `∑[∑[A104934(n)]-A106434(n+1)]` -/
def P9124943994318868381.Spec : Prop :=
  ∀ n, P9124943994318868381.a n = A052986 n

end A052986

/-! ## A052986.P3661334245008441549

`A007482(n)+∑[A007482(n)-A055099(n)]`
-/

namespace A052986.P3661334245008441549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007482 n - A055099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007482 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052986.P3661334245008441549

namespace A052986

/-- `A007482(n)+∑[A007482(n)-A055099(n)]` -/
def P3661334245008441549.Spec : Prop :=
  ∀ n, P3661334245008441549.a n = A052986 n

end A052986

/-! ## A052986.P15576043658266303792

`∑[A007483(n)]+1-A007483(n)`
-/

namespace A052986.P15576043658266303792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A007483 n)

end

end A052986.P15576043658266303792

namespace A052986

/-- `∑[A007483(n)]+1-A007483(n)` -/
def P15576043658266303792.Spec : Prop :=
  ∀ n, P15576043658266303792.a n = A052986 n

end A052986

/-!
# A052987: Expansion of (1-2x^2)/(1-2x-2x^2+2x^3).

The programs for A052987, the canonical program `A052987.P16919848120846126087` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052987 has offset 0).

The definition of A052987 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x^2)/(1-2x-2x^2+2x^3))` (program `A052987.P16919848120846126087`, by `A052987.P16919848120846126087.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052987.P16919848120846126087

`ogf((1-2x^2)/(1-2x-2x^2+2x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052987

/-- `ogf((1-2x^2)/(1-2x-2x^2+2x^3))` -/
def P16919848120846126087.Spec : Prop :=
  ∀ n, P16919848120846126087.a n = A052987 n

theorem P16919848120846126087.correct : P16919848120846126087.Spec := by
  intro n
  simp only [A052987]

end A052987

/-! ## A052987.P827900301995016170

`2*(a(n-1)+a(n-2)-a(n-3))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A052987.P827900301995016170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 * (a (n - 1) + (a (n - 2) - a (n - 3)))

end

end A052987.P827900301995016170

namespace A052987

/-- `2*(a(n-1)+a(n-2)-a(n-3))` -/
def P827900301995016170.Spec : Prop :=
  ∀ n, P827900301995016170.a n = A052987 n

end A052987

/-! ## A052987.P3066174023398618900

`A077937(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A052987.P3066174023398618900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077937 (n - 1) + a (n - 1)

end

end A052987.P3066174023398618900

namespace A052987

/-- `A077937(n-1)+a(n-1)` -/
def P3066174023398618900.Spec : Prop :=
  ∀ n, P3066174023398618900.a n = A052987 n

end A052987

/-! ## A052987.P17368480463917914734

`∑[A077937(log2(A011782(n)))]`
-/

namespace A052987.P17368480463917914734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077937 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052987.P17368480463917914734

namespace A052987

/-- `∑[A077937(log2(A011782(n)))]` -/
def P17368480463917914734.Spec : Prop :=
  ∀ n, P17368480463917914734.a n = A052987 n

end A052987

/-! ## A052987.P5069401959647350580

`∑[A077937(A004273(n)-n)]`
-/

namespace A052987.P5069401959647350580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077937 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052987.P5069401959647350580

namespace A052987

/-- `∑[A077937(A004273(n)-n)]` -/
def P5069401959647350580.Spec : Prop :=
  ∀ n, P5069401959647350580.a n = A052987 n

end A052987

/-! ## A052987.P18266477556863084212

`A052970(n+1)+A052970(n)`
-/

namespace A052987.P18266477556863084212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052970 (n + 1) + A052970 n

end

end A052987.P18266477556863084212

namespace A052987

/-- `A052970(n+1)+A052970(n)` -/
def P18266477556863084212.Spec : Prop :=
  ∀ n, P18266477556863084212.a n = A052987 n

end A052987

/-! ## A052987.P12713768018731872424

`A107300(n)-2*A052970(n)`
-/

namespace A052987.P12713768018731872424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107300 n - 2 * A052970 n

end

end A052987.P12713768018731872424

namespace A052987

/-- `A107300(n)-2*A052970(n)` -/
def P12713768018731872424.Spec : Prop :=
  ∀ n, P12713768018731872424.a n = A052987 n

end A052987

/-! ## A052987.P14904936083365699786

`A077847(n)+1-A077937(n)`
-/

namespace A052987.P14904936083365699786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077847 n + (1 - A077937 n)

end

end A052987.P14904936083365699786

namespace A052987

/-- `A077847(n)+1-A077937(n)` -/
def P14904936083365699786.Spec : Prop :=
  ∀ n, P14904936083365699786.a n = A052987 n

end A052987

/-! ## A052987.P1774280616481761316

`A118649(n+1)-∑[A118649(n)]`
-/

namespace A052987.P1774280616481761316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118649 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052987.P1774280616481761316

namespace A052987

/-- `A118649(n+1)-∑[A118649(n)]` -/
def P1774280616481761316.Spec : Prop :=
  ∀ n, P1774280616481761316.a n = A052987 n

end A052987

/-!
# A052988: Expansion of (1-x^2)/(1-2x-2x^2+x^3+x^4).

The programs for A052988, the canonical program `A052988.P8547637396310067697` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052988 has offset 0).

The definition of A052988 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-2x-2x^2+x^3+x^4))` (program `A052988.P8547637396310067697`, by `A052988.P8547637396310067697.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052988.P8547637396310067697

`ogf((1-x^2)/(1-2x-2x^2+x^3+x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052988

/-- `ogf((1-x^2)/(1-2x-2x^2+x^3+x^4))` -/
def P8547637396310067697.Spec : Prop :=
  ∀ n, P8547637396310067697.a n = A052988 n

theorem P8547637396310067697.correct : P8547637396310067697.Spec := by
  intro n
  simp only [A052988]

end A052988

/-! ## A052988.P13672698970939922914

`A052960(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A052988.P13672698970939922914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052960 (n + 1) - a (n - 1)

end

end A052988.P13672698970939922914

namespace A052988

/-- `A052960(n+1)-a(n-1)` -/
def P13672698970939922914.Spec : Prop :=
  ∀ n, P13672698970939922914.a n = A052988 n

end A052988

/-! ## A052988.P4769861048688950910

`A004396(A004396(2*a(n-2)+5*a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A052988.P4769861048688950910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A004396 (A004396 (2 * a (n - 2) + 5 * a (n - 1)).toNat).toNat

end

end A052988.P4769861048688950910

namespace A052988

/-- `A004396(A004396(2*a(n-2)+5*a(n-1)))` -/
def P4769861048688950910.Spec : Prop :=
  ∀ n, P4769861048688950910.a n = A052988 n

end A052988

/-! ## A052988.P1229228697326921697

`A057367(A057367(n)+7*a(n-1))` with `a(0)=1`
-/

namespace A052988.P1229228697326921697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057367 (A057367 n + 7 * a (n - 1)).toNat

end

end A052988.P1229228697326921697

namespace A052988

/-- `A057367(A057367(n)+7*a(n-1))` -/
def P1229228697326921697.Spec : Prop :=
  ∀ n, P1229228697326921697.a n = A052988 n

end A052988

/-! ## A052988.P6355770125791107563

`A358006(A080880(n))+A080888(n)`
-/

namespace A052988.P6355770125791107563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358006 ((A080880 n).toNat + 32) + A080888 n

end

end A052988.P6355770125791107563

namespace A052988

/-- `A358006(A080880(n))+A080888(n)` -/
def P6355770125791107563.Spec : Prop :=
  ∀ n, P6355770125791107563.a n = A052988 n

end A052988

/-!
# A052989: Expansion of ( 1-x ) / ( 1-x-x^2-x^4+x^5 ).

The programs for A052989, the canonical program `A052989.P2439467919819327948` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052989 has offset 0).

The definition of A052989 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x-x^2-x^4+x^5))` (program `A052989.P2439467919819327948`, by `A052989.P2439467919819327948.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052989.P2439467919819327948

`ogf((1-x)/(1-x-x^2-x^4+x^5))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052989

/-- `ogf((1-x)/(1-x-x^2-x^4+x^5))` -/
def P2439467919819327948.Spec : Prop :=
  ∀ n, P2439467919819327948.a n = A052989 n

theorem P2439467919819327948.correct : P2439467919819327948.Spec := by
  intro n
  simp only [A052989]

end A052989

/-! ## A052989.P2354353708333159159

`floor(A319752(n)/A001224(n+1))`
-/

namespace A052989.P2354353708333159159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A319752 n : ℚ) / (A001224 (n + 1) : ℚ)⌋

end

end A052989.P2354353708333159159

namespace A052989

/-- `floor(A319752(n)/A001224(n+1))` -/
def P2354353708333159159.Spec : Prop :=
  ∀ n, P2354353708333159159.a n = A052989 n

end A052989

/-!
# A052990: Expansion of ( 1-x ) / ( 1-4*x-x^2+2*x^3 ).

The programs for A052990, the canonical program `A052990.P8746956581214034191` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052990 has offset 0).

The definition of A052990 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-4x-x^2+2x^3))` (program `A052990.P8746956581214034191`, by `A052990.P8746956581214034191.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052990.P8746956581214034191

`ogf((1-x)/(1-4x-x^2+2x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052990

/-- `ogf((1-x)/(1-4x-x^2+2x^3))` -/
def P8746956581214034191.Spec : Prop :=
  ∀ n, P8746956581214034191.a n = A052990 n

theorem P8746956581214034191.correct : P8746956581214034191.Spec := by
  intro n
  simp only [A052990]

end A052990

/-! ## A052990.P7565417649706883215

`4*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=13`
-/

namespace A052990.P7565417649706883215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 13] fun n a =>
  4 * a (n - 1) + (a (n - 2) - 2 * a (n - 3))

end

end A052990.P7565417649706883215

namespace A052990

/-- `4*a(n-1)+a(n-2)-2*a(n-3)` -/
def P7565417649706883215.Spec : Prop :=
  ∀ n, P7565417649706883215.a n = A052990 n

end A052990

/-! ## A052990.P7644850414674469073

`A005408(∑[A301951(∑[n+2]-1)])`
-/

namespace A052990.P7644850414674469073
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301951 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A052990.P7644850414674469073

namespace A052990

/-- `A005408(∑[A301951(∑[n+2]-1)])` -/
def P7644850414674469073.Spec : Prop :=
  ∀ n, P7644850414674469073.a n = A052990 n

end A052990

/-!
# A052991: Expansion of (1-x-x^2)/(1-3x-x^2).

The programs for A052991, the canonical program `A052991.P5908690221082229812` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052991 has offset 0).

The definition of A052991 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-x^2)/(1-3x-x^2))` (program `A052991.P5908690221082229812`, by `A052991.P5908690221082229812.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052991.P5908690221082229812

`ogf((1-x-x^2)/(1-3x-x^2))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052991

/-- `ogf((1-x-x^2)/(1-3x-x^2))` -/
def P5908690221082229812.Spec : Prop :=
  ∀ n, P5908690221082229812.a n = A052991 n

theorem P5908690221082229812.correct : P5908690221082229812.Spec := by
  intro n
  simp only [A052991]

end A052991

/-! ## A052991.P13402974943539066456

`3*a(n-1)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A052991.P13402974943539066456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  3 * a (n - 1) + a (n - 2)

end

end A052991.P13402974943539066456

namespace A052991

/-- `3*a(n-1)+a(n-2)` -/
def P13402974943539066456.Spec : Prop :=
  ∀ n, (P13402974943539066456.a n : ℤ) = A052991 n

end A052991

/-! ## A052991.P8453451351582965680

`or(1, a(n-2))-(1-3*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A052991.P8453451351582965680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lor 1 (a (n - 2)) - (1 - 3 * a (n - 1))

end

end A052991.P8453451351582965680

namespace A052991

/-- `or(1, a(n-2))-(1-3*a(n-1))` -/
def P8453451351582965680.Spec : Prop :=
  ∀ n, P8453451351582965680.a n = A052991 n

end A052991

/-! ## A052991.P10408025600365300905

`3-(3*(1-a(n-1))-a(n-2))` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A052991.P10408025600365300905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  3 - (3 * (1 - a (n - 1)) - a (n - 2))

end

end A052991.P10408025600365300905

namespace A052991

/-- `3-(3*(1-a(n-1))-a(n-2))` -/
def P10408025600365300905.Spec : Prop :=
  ∀ n, P10408025600365300905.a n = A052991 n

end A052991

/-! ## A052991.P5570117849555669286

`a(n-2)+a(n-1)/(1-2/3)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A052991.P5570117849555669286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  a (n - 2) + a (n - 1) / (1 - (2 : ℚ) / 3)

end

end A052991.P5570117849555669286

namespace A052991

/-- `a(n-2)+a(n-1)/(1-2/3)` -/
def P5570117849555669286.Spec : Prop :=
  ∀ n, P5570117849555669286.a n = (A052991 n : ℚ)

end A052991

/-! ## A052991.P9968486863008590040

`a(n-1)+a(n-1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A052991.P9968486863008590040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + a (n - 2)))

end

end A052991.P9968486863008590040

namespace A052991

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-2)` -/
def P9968486863008590040.Spec : Prop :=
  ∀ n, (P9968486863008590040.a n : ℤ) = A052991 n

end A052991

/-! ## A052991.P17630787461735320206

`A305889(A004277(n)+1)`
-/

namespace A052991.P17630787461735320206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305889 (A004277 n + 1).toNat

end

end A052991.P17630787461735320206

namespace A052991

/-- `A305889(A004277(n)+1)` -/
def P17630787461735320206.Spec : Prop :=
  ∀ n, P17630787461735320206.a n = A052991 n

end A052991

/-! ## A052991.P13250418276577165051

`A305889(A004280(n+2))`
-/

namespace A052991.P13250418276577165051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305889 (A004280 (n + 2)).toNat

end

end A052991.P13250418276577165051

namespace A052991

/-- `A305889(A004280(n+2))` -/
def P13250418276577165051.Spec : Prop :=
  ∀ n, P13250418276577165051.a n = A052991 n

end A052991

/-! ## A052991.P8104153513784751713

`A305889(A004275(n+1)+1)`
-/

namespace A052991.P8104153513784751713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305889 (A004275 (n + 1) + 1).toNat

end

end A052991.P8104153513784751713

namespace A052991

/-- `A305889(A004275(n+1)+1)` -/
def P8104153513784751713.Spec : Prop :=
  ∀ n, P8104153513784751713.a n = A052991 n

end A052991

/-! ## A052991.P137775467612257594

`A000007(n)+2*A006190(n)`
-/

namespace A052991.P137775467612257594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A006190 n

end

end A052991.P137775467612257594

namespace A052991

/-- `A000007(n)+2*A006190(n)` -/
def P137775467612257594.Spec : Prop :=
  ∀ n, P137775467612257594.a n = A052991 n

end A052991

/-! ## A052991.P17817869156057768031

`gcd(C(2, A305889(2*n)), A305889(2*n+1))`
-/

namespace A052991.P17817869156057768031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (A305889 (2 * n)).toNat : ℤ) (A305889 (2 * n + 1))

end

end A052991.P17817869156057768031

namespace A052991

/-- `gcd(C(2, A305889(2*n)), A305889(2*n+1))` -/
def P17817869156057768031.Spec : Prop :=
  ∀ n, (P17817869156057768031.a n : ℤ) = A052991 n

end A052991

/-! ## A052991.P18128611906127574092

`A006190(n)+A006190(A028310(n))`
-/

namespace A052991.P18128611906127574092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 n + A006190 (A028310 n).toNat

end

end A052991.P18128611906127574092

namespace A052991

/-- `A006190(n)+A006190(A028310(n))` -/
def P18128611906127574092.Spec : Prop :=
  ∀ n, P18128611906127574092.a n = A052991 n

end A052991

/-! ## A052991.P10507438016782057425

`A006190(A000007(n)+n)+A006190(n)`
-/

namespace A052991.P10507438016782057425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 (A000007 n + (n : ℤ)).toNat + A006190 n

end

end A052991.P10507438016782057425

namespace A052991

/-- `A006190(A000007(n)+n)+A006190(n)` -/
def P10507438016782057425.Spec : Prop :=
  ∀ n, P10507438016782057425.a n = A052991 n

end A052991

/-! ## A052991.P17064920077565839108

`A006190(A004277(n)-n)+A006190(n)`
-/

namespace A052991.P17064920077565839108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 (A004277 n - (n : ℤ)).toNat + A006190 n

end

end A052991.P17064920077565839108

namespace A052991

/-- `A006190(A004277(n)-n)+A006190(n)` -/
def P17064920077565839108.Spec : Prop :=
  ∀ n, P17064920077565839108.a n = A052991 n

end A052991

/-! ## A052991.P17434152043691995105

`A305889(lt[A305871(n+1), A305897(n+1)])`
-/

namespace A052991.P17434152043691995105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305889 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A052991.P17434152043691995105

namespace A052991

/-- `A305889(lt[A305871(n+1), A305897(n+1)])` -/
def P17434152043691995105.Spec : Prop :=
  ∀ n, P17434152043691995105.a n = A052991 n

end A052991

/-! ## A052991.P7629051949150468404

`A305889(lt[A305871(n+1), A305898(n+1)])`
-/

namespace A052991.P7629051949150468404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305889 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A052991.P7629051949150468404

namespace A052991

/-- `A305889(lt[A305871(n+1), A305898(n+1)])` -/
def P7629051949150468404.Spec : Prop :=
  ∀ n, P7629051949150468404.a n = A052991 n

end A052991

/-! ## A052991.P2841579693859200159

`A305889(lt[A305871(n+1), A305899(n+1)])`
-/

namespace A052991.P2841579693859200159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305889 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A052991.P2841579693859200159

namespace A052991

/-- `A305889(lt[A305871(n+1), A305899(n+1)])` -/
def P2841579693859200159.Spec : Prop :=
  ∀ n, P2841579693859200159.a n = A052991 n

end A052991

/-! ## A052991.P4412720145633740524

`A305889(2*n+1)+C(A305889(n+1), A305889(2*n+1))`
-/

namespace A052991.P4412720145633740524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305889 (2 * n + 1) + (Nat.choose (A305889 (n + 1)).toNat (A305889 (2 * n + 1)).toNat : ℤ)

end

end A052991.P4412720145633740524

namespace A052991

/-- `A305889(2*n+1)+C(A305889(n+1), A305889(2*n+1))` -/
def P4412720145633740524.Spec : Prop :=
  ∀ n, P4412720145633740524.a n = A052991 n

end A052991

/-! ## A052991.P11423429987614614340

`Δ[3*a(n-1)-(1-a(n-2))]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A052991.P11423429987614614340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  3 * f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052991.P11423429987614614340

namespace A052991

/-- `Δ[3*a(n-1)-(1-a(n-2))]` -/
def P11423429987614614340.Spec : Prop :=
  ∀ n, P11423429987614614340.a n = A052991 n

end A052991

/-! ## A052991.P6492768527999993867

`record[Δ[Δ[A305889(n)]]]`
-/

namespace A052991.P6492768527999993867
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305889 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052991.P6492768527999993867

namespace A052991

/-- `record[Δ[Δ[A305889(n)]]]` -/
def P6492768527999993867.Spec : Prop :=
  ∀ n, P6492768527999993867.a n = A052991 n

end A052991

/-!
# A052992: Expansion of 1/((1 - x)*(1 - 2*x)*(1 + 2*x)).

The programs for A052992, the canonical program `A052992.P16930724636165562146` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052992 has offset 0).

The definition of A052992 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-4x^2+4x^3))` (program `A052992.P16930724636165562146`, by `A052992.P16930724636165562146.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052992.P16930724636165562146

`ogf(1/(1-x-4x^2+4x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052992

/-- `ogf(1/(1-x-4x^2+4x^3))` -/
def P16930724636165562146.Spec : Prop :=
  ∀ n, P16930724636165562146.a n = A052992 n

theorem P16930724636165562146.correct : P16930724636165562146.Spec := by
  intro n
  simp only [A052992]

end A052992

/-! ## A052992.P12541895773689884373

`(4^(1+floor(n/2))-1)/3`
-/

namespace A052992.P12541895773689884373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 : ℚ) ^ (1 + ⌊(n : ℚ) / 2⌋ : ℤ) - 1) / 3

end

end A052992.P12541895773689884373

namespace A052992

/-- `(4^(1+floor(n/2))-1)/3` -/
def P12541895773689884373.Spec : Prop :=
  ∀ n, P12541895773689884373.a n = (A052992 n : ℚ)

end A052992

/-! ## A052992.P15872767835294399398

`a(n-1)+4*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A052992.P15872767835294399398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  a (n - 1) + 4 * a (n - 2) - 4 * a (n - 3)

end

end A052992.P15872767835294399398

namespace A052992

/-- `a(n-1)+4*a(n-2)-4*a(n-3)` -/
def P15872767835294399398.Spec : Prop :=
  ∀ n, P15872767835294399398.a n = A052992 n

end A052992

/-! ## A052992.P3579027979744280485

`∑[and(2, gcd(2, n))^n]`
-/

namespace A052992.P3579027979744280485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (Nat.gcd 2 n) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052992.P3579027979744280485

namespace A052992

/-- `∑[and(2, gcd(2, n))^n]` -/
def P3579027979744280485.Spec : Prop :=
  ∀ n, (P3579027979744280485.a n : ℤ) = A052992 n

end A052992

/-! ## A052992.P17196492628288594828

`∑[4*a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A052992.P17196492628288594828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052992.P17196492628288594828

namespace A052992

/-- `∑[4*a(n-2)]` -/
def P17196492628288594828.Spec : Prop :=
  ∀ n, (P17196492628288594828.a n : ℤ) = A052992 n

end A052992

/-! ## A052992.P5403850757067372042

`1+4*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A052992.P5403850757067372042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 + 4 * a (n - 2)

end

end A052992.P5403850757067372042

namespace A052992

/-- `1+4*a(n-2)` -/
def P5403850757067372042.Spec : Prop :=
  ∀ n, (P5403850757067372042.a n : ℤ) = A052992 n

end A052992

/-! ## A052992.P5620291227128259815

`lcm(4, a(n-2))+1` with `a(0)=1, a(1)=1`
-/

namespace A052992.P5620291227128259815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.lcm 4 (a (n - 2)) + 1

end

end A052992.P5620291227128259815

namespace A052992

/-- `lcm(4, a(n-2))+1` -/
def P5620291227128259815.Spec : Prop :=
  ∀ n, (P5620291227128259815.a n : ℤ) = A052992 n

end A052992

/-! ## A052992.P16038482278137096946

`or(1, 4*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A052992.P16038482278137096946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.lor 1 (4 * a (n - 2))

end

end A052992.P16038482278137096946

namespace A052992

/-- `or(1, 4*a(n-2))` -/
def P16038482278137096946.Spec : Prop :=
  ∀ n, (P16038482278137096946.a n : ℤ) = A052992 n

end A052992

/-! ## A052992.P7527288754065697282

`xor(1, 4*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A052992.P7527288754065697282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.xor 1 (4 * a (n - 2))

end

end A052992.P7527288754065697282

namespace A052992

/-- `xor(1, 4*a(n-2))` -/
def P7527288754065697282.Spec : Prop :=
  ∀ n, (P7527288754065697282.a n : ℤ) = A052992 n

end A052992

/-! ## A052992.P2896095905621401935

`∑[(2*and(1, n+1))^n]`
-/

namespace A052992.P2896095905621401935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.land 1 (n + 1)) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052992.P2896095905621401935

namespace A052992

/-- `∑[(2*and(1, n+1))^n]` -/
def P2896095905621401935.Spec : Prop :=
  ∀ n, (P2896095905621401935.a n : ℤ) = A052992 n

end A052992

/-! ## A052992.P10686686368864288199

`∑[(2-gcd(4, 2*n))^n]`
-/

namespace A052992.P10686686368864288199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.gcd 4 (2 * n) : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052992.P10686686368864288199

namespace A052992

/-- `∑[(2-gcd(4, 2*n))^n]` -/
def P10686686368864288199.Spec : Prop :=
  ∀ n, P10686686368864288199.a n = A052992 n

end A052992

/-! ## A052992.P10842715480472436295

`∑[and(2, 2*n-1)^n]`
-/

namespace A052992.P10842715480472436295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 ((2 * n : ℤ) - 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052992.P10842715480472436295

namespace A052992

/-- `∑[and(2, 2*n-1)^n]` -/
def P10842715480472436295.Spec : Prop :=
  ∀ n, P10842715480472436295.a n = A052992 n

end A052992

/-! ## A052992.P13324026345079876700

`∑[(xor(1, n-1)-n)^n]`
-/

namespace A052992.P13324026345079876700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 ((n : ℤ) - 1) - (n : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052992.P13324026345079876700

namespace A052992

/-- `∑[(xor(1, n-1)-n)^n]` -/
def P13324026345079876700.Spec : Prop :=
  ∀ n, P13324026345079876700.a n = A052992 n

end A052992

/-! ## A052992.P12435601530304219365

`5-4*(1-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A052992.P12435601530304219365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  5 - 4 * (1 - a (n - 2))

end

end A052992.P12435601530304219365

namespace A052992

/-- `5-4*(1-a(n-2))` -/
def P12435601530304219365.Spec : Prop :=
  ∀ n, P12435601530304219365.a n = A052992 n

end A052992

/-! ## A052992.P13789067458932878746

`∑[a(n-2)/(1/2)²]` with `a(0)=1, a(1)=0`
-/

namespace A052992.P13789067458932878746
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) / ((1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052992.P13789067458932878746

namespace A052992

/-- `∑[a(n-2)/(1/2)²]` -/
def P13789067458932878746.Spec : Prop :=
  ∀ n, P13789067458932878746.a n = (A052992 n : ℚ)

end A052992

/-! ## A052992.P4381608213702275355

`∑[(2*or(1, n)-2*n)^n]`
-/

namespace A052992.P4381608213702275355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * Nat.lor 1 n : ℤ) - (2 * n : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052992.P4381608213702275355

namespace A052992

/-- `∑[(2*or(1, n)-2*n)^n]` -/
def P4381608213702275355.Spec : Prop :=
  ∀ n, P4381608213702275355.a n = A052992 n

end A052992

/-! ## A052992.P9438586622538928424

`a(n-2)/(1/2)²+1` with `a(0)=1, a(1)=1`
-/

namespace A052992.P9438586622538928424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2) ^ 2 + 1

end

end A052992.P9438586622538928424

namespace A052992

/-- `a(n-2)/(1/2)²+1` -/
def P9438586622538928424.Spec : Prop :=
  ∀ n, P9438586622538928424.a n = (A052992 n : ℚ)

end A052992

/-! ## A052992.P337213983870492821

`floor(4^∑[1-a(n-1)]/3)` with `a(0)=1`
-/

namespace A052992.P337213983870492821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ) / 3⌋

end

end A052992.P337213983870492821

namespace A052992

/-- `floor(4^∑[1-a(n-1)]/3)` -/
def P337213983870492821.Spec : Prop :=
  ∀ n, P337213983870492821.a n = A052992 n

end A052992

/-! ## A052992.P16724426675583722664

`∑[floor(2^(n-a(n-1)))]-1` with `a(0)=2`
-/

namespace A052992.P16724426675583722664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - f1 (n - 1) : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A052992.P16724426675583722664

namespace A052992

/-- `∑[floor(2^(n-a(n-1)))]-1` -/
def P16724426675583722664.Spec : Prop :=
  ∀ n, P16724426675583722664.a n = A052992 n

end A052992

/-! ## A052992.P15005299442688323523

`A002450(floor(n/2)+1)`
-/

namespace A052992.P15005299442688323523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (⌊(n : ℚ) / 2⌋ + 1).toNat

end

end A052992.P15005299442688323523

namespace A052992

/-- `A002450(floor(n/2)+1)` -/
def P15005299442688323523.Spec : Prop :=
  ∀ n, P15005299442688323523.a n = A052992 n

end A052992

/-!
# A052993: a(n) = a(n-1) + 3*a(n-2) - 3*a(n-3), with a(0)=a(1)=1, a(2)=4.

The programs for A052993, the canonical program `A052993.P1360707438407566205` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052993 has offset 0).

The definition of A052993 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-3*a(n-3)` (program `A052993.P1360707438407566205`, by `A052993.P1360707438407566205.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052993.P1360707438407566205

`a(n-1)+3*a(n-2)-3*a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052993

/-- `a(n-1)+3*a(n-2)-3*a(n-3)` -/
def P1360707438407566205.Spec : Prop :=
  ∀ n, P1360707438407566205.a n = A052993 n

theorem P1360707438407566205.correct : P1360707438407566205.Spec := by
  intro n
  simp only [A052993]

end A052993

/-! ## A052993.P1719068276806905337

`∑[ogf(1/(1-3x^2))]`
-/

namespace A052993.P1719068276806905337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052993.P1719068276806905337

namespace A052993

/-- `∑[ogf(1/(1-3x^2))]` -/
def P1719068276806905337.Spec : Prop :=
  ∀ n, P1719068276806905337.a n = A052993 n

end A052993

/-! ## A052993.P3183977465763371545

`ogf(1/(1-x-3x^2+3x^3))`
-/

namespace A052993.P3183977465763371545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -3, 3] n

end

end A052993.P3183977465763371545

namespace A052993

/-- `ogf(1/(1-x-3x^2+3x^3))` -/
def P3183977465763371545.Spec : Prop :=
  ∀ n, P3183977465763371545.a n = A052993 n

end A052993

/-! ## A052993.P5060190656143189154

`∑[3*a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A052993.P5060190656143189154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  3 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052993.P5060190656143189154

namespace A052993

/-- `∑[3*a(n-2)]` -/
def P5060190656143189154.Spec : Prop :=
  ∀ n, (P5060190656143189154.a n : ℤ) = A052993 n

end A052993

/-! ## A052993.P91058537058283798

`3*a(n-2)+1` with `a(0)=1, a(1)=1`
-/

namespace A052993.P91058537058283798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * a (n - 2) + 1

end

end A052993.P91058537058283798

namespace A052993

/-- `3*a(n-2)+1` -/
def P91058537058283798.Spec : Prop :=
  ∀ n, (P91058537058283798.a n : ℤ) = A052993 n

end A052993

/-! ## A052993.P14164109954403152305

`lcm(3, a(n-2))+1` with `a(0)=1, a(1)=1`
-/

namespace A052993.P14164109954403152305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.lcm 3 (a (n - 2)) + 1

end

end A052993.P14164109954403152305

namespace A052993

/-- `lcm(3, a(n-2))+1` -/
def P14164109954403152305.Spec : Prop :=
  ∀ n, (P14164109954403152305.a n : ℤ) = A052993 n

end A052993

/-! ## A052993.P10159712820881334081

`4-3*(1-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A052993.P10159712820881334081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 - 3 * (1 - a (n - 2))

end

end A052993.P10159712820881334081

namespace A052993

/-- `4-3*(1-a(n-2))` -/
def P10159712820881334081.Spec : Prop :=
  ∀ n, P10159712820881334081.a n = A052993 n

end A052993

/-! ## A052993.P12283781686142213335

`∑[a(n-2)/(1-2/3)]` with `a(0)=1, a(1)=0`
-/

namespace A052993.P12283781686142213335
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) / (1 - (2 : ℚ) / 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052993.P12283781686142213335

namespace A052993

/-- `∑[a(n-2)/(1-2/3)]` -/
def P12283781686142213335.Spec : Prop :=
  ∀ n, P12283781686142213335.a n = (A052993 n : ℚ)

end A052993

/-! ## A052993.P17948203954399827245

`a(n-2)+3^floor(n/2)` with `a(0)=1, a(1)=1`
-/

namespace A052993.P17948203954399827245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A052993.P17948203954399827245

namespace A052993

/-- `a(n-2)+3^floor(n/2)` -/
def P17948203954399827245.Spec : Prop :=
  ∀ n, P17948203954399827245.a n = (A052993 n : ℚ)

end A052993

/-! ## A052993.P1283149901284373327

`a(n-2)/(1-2/3)+1` with `a(0)=1, a(1)=1`
-/

namespace A052993.P1283149901284373327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) / (1 - (2 : ℚ) / 3) + 1

end

end A052993.P1283149901284373327

namespace A052993

/-- `a(n-2)/(1-2/3)+1` -/
def P1283149901284373327.Spec : Prop :=
  ∀ n, P1283149901284373327.a n = (A052993 n : ℚ)

end A052993

/-! ## A052993.P9198294025040140874

`1-a(n-2)/(2/3-1)` with `a(0)=1, a(1)=1`
-/

namespace A052993.P9198294025040140874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - a (n - 2) / ((2 : ℚ) / 3 - 1)

end

end A052993.P9198294025040140874

namespace A052993

/-- `1-a(n-2)/(2/3-1)` -/
def P9198294025040140874.Spec : Prop :=
  ∀ n, P9198294025040140874.a n = (A052993 n : ℚ)

end A052993

/-! ## A052993.P9538404198368784864

`∏[4-a(n-1)]+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A052993.P9538404198368784864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A052993.P9538404198368784864

namespace A052993

/-- `∏[4-a(n-1)]+a(n-2)` -/
def P9538404198368784864.Spec : Prop :=
  ∀ n, P9538404198368784864.a n = A052993 n

end A052993

/-! ## A052993.P11681333595267836158

`∑[a(n-2)+a(n-2)+a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A052993.P11681333595267836158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052993.P11681333595267836158

namespace A052993

/-- `∑[a(n-2)+a(n-2)+a(n-2)]` -/
def P11681333595267836158.Spec : Prop :=
  ∀ n, (P11681333595267836158.a n : ℤ) = A052993 n

end A052993

/-! ## A052993.P17860885854923117103

`a(n-2)+1+a(n-2)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A052993.P17860885854923117103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + 1 + (a (n - 2) + a (n - 2))

end

end A052993.P17860885854923117103

namespace A052993

/-- `a(n-2)+1+a(n-2)+a(n-2)` -/
def P17860885854923117103.Spec : Prop :=
  ∀ n, (P17860885854923117103.a n : ℤ) = A052993 n

end A052993

/-! ## A052993.P1683096132725272541

`∑[A254006(n)]`
-/

namespace A052993.P1683096132725272541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052993.P1683096132725272541

namespace A052993

/-- `∑[A254006(n)]` -/
def P1683096132725272541.Spec : Prop :=
  ∀ n, P1683096132725272541.a n = A052993 n

end A052993

/-! ## A052993.P6609504377127620044

`A048328(or(1, n))`
-/

namespace A052993.P6609504377127620044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048328 (Nat.lor 1 n)

end

end A052993.P6609504377127620044

namespace A052993

/-- `A048328(or(1, n))` -/
def P6609504377127620044.Spec : Prop :=
  ∀ n, P6609504377127620044.a n = A052993 n

end A052993

/-! ## A052993.P9467884788480731985

`A120463(or(1, n))`
-/

namespace A052993.P9467884788480731985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120463 (Nat.lor 1 n)

end

end A052993.P9467884788480731985

namespace A052993

/-- `A120463(or(1, n))` -/
def P9467884788480731985.Spec : Prop :=
  ∀ n, P9467884788480731985.a n = A052993 n

end A052993

/-! ## A052993.P14993739574610992366

`A232801(or(1, n)+1)`
-/

namespace A052993.P14993739574610992366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232801 (Nat.lor 1 n + 1)

end

end A052993.P14993739574610992366

namespace A052993

/-- `A232801(or(1, n)+1)` -/
def P14993739574610992366.Spec : Prop :=
  ∀ n, P14993739574610992366.a n = A052993 n

end A052993

/-! ## A052993.P2719610490048037610

`A232801(gcd(2, n)+n)`
-/

namespace A052993.P2719610490048037610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232801 (Nat.gcd 2 n + n)

end

end A052993.P2719610490048037610

namespace A052993

/-- `A232801(gcd(2, n)+n)` -/
def P2719610490048037610.Spec : Prop :=
  ∀ n, P2719610490048037610.a n = A052993 n

end A052993

/-! ## A052993.P16834472368911945135

`A003462(∑[char[2*n]])`
-/

namespace A052993.P16834472368911945135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A052993.P16834472368911945135

namespace A052993

/-- `A003462(∑[char[2*n]])` -/
def P16834472368911945135.Spec : Prop :=
  ∀ n, P16834472368911945135.a n = A052993 n

end A052993

/-!
# A052994: Expansion of 2x(1-x)/(1-2x-x^2+x^3).

The programs for A052994, the canonical program `A052994.P13708226293346517540` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052994 has offset 0).

The definition of A052994 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2x-2x^2)/(1-2x-x^2+x^3))` (program `A052994.P13708226293346517540`, by `A052994.P13708226293346517540.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052994.P13708226293346517540

`ogf((2x-2x^2)/(1-2x-x^2+x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052994

/-- `ogf((2x-2x^2)/(1-2x-x^2+x^3))` -/
def P13708226293346517540.Spec : Prop :=
  ∀ n, P13708226293346517540.a n = A052994 n

theorem P13708226293346517540.correct : P13708226293346517540.Spec := by
  intro n
  simp only [A052994]

end A052994

/-! ## A052994.P3783075281098826443

`2*a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A052994.P3783075281098826443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n a =>
  2 * a (n - 1) + (a (n - 2) - a (n - 3))

end

end A052994.P3783075281098826443

namespace A052994

/-- `2*a(n-1)+a(n-2)-a(n-3)` -/
def P3783075281098826443.Spec : Prop :=
  ∀ n, P3783075281098826443.a n = A052994 n

end A052994

/-! ## A052994.P13267734599494356457

`a(n-2)-(a(n-3)-2*a(n-1))` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A052994.P13267734599494356457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n a =>
  a (n - 2) - (a (n - 3) - 2 * a (n - 1))

end

end A052994.P13267734599494356457

namespace A052994

/-- `a(n-2)-(a(n-3)-2*a(n-1))` -/
def P13267734599494356457.Spec : Prop :=
  ∀ n, P13267734599494356457.a n = A052994 n

end A052994

/-! ## A052994.P4451392341982685803

`a(n-1)+a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A052994.P4451392341982685803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 2) - a (n - 3)))

end

end A052994.P4451392341982685803

namespace A052994

/-- `a(n-1)+a(n-1)+a(n-2)-a(n-3)` -/
def P4451392341982685803.Spec : Prop :=
  ∀ n, P4451392341982685803.a n = A052994 n

end A052994

/-! ## A052994.P16910030477377417109

`a(n-1)-(a(n-3)-a(n-1)-a(n-2))` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A052994.P16910030477377417109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1) - a (n - 2))

end

end A052994.P16910030477377417109

namespace A052994

/-- `a(n-1)-(a(n-3)-a(n-1)-a(n-2))` -/
def P16910030477377417109.Spec : Prop :=
  ∀ n, P16910030477377417109.a n = A052994 n

end A052994

/-! ## A052994.P16916427453746110620

`2*A106803(n)`
-/

namespace A052994.P16916427453746110620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106803 n

end

end A052994.P16916427453746110620

namespace A052994

/-- `2*A106803(n)` -/
def P16916427453746110620.Spec : Prop :=
  ∀ n, P16916427453746110620.a n = A052994 n

end A052994

/-! ## A052994.P11956409236153605715

`2*Δ[A006054(n)]`
-/

namespace A052994.P11956409236153605715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A052994.P11956409236153605715

namespace A052994

/-- `2*Δ[A006054(n)]` -/
def P11956409236153605715.Spec : Prop :=
  ∀ n, P11956409236153605715.a n = A052994 n

end A052994

/-! ## A052994.P4921700825759542967

`2*A187070(2*n)`
-/

namespace A052994.P4921700825759542967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A187070 (2 * n)

end

end A052994.P4921700825759542967

namespace A052994

/-- `2*A187070(2*n)` -/
def P4921700825759542967.Spec : Prop :=
  ∀ n, P4921700825759542967.a n = A052994 n

end A052994

/-! ## A052994.P11115844418363195942

`2*Δ[A187069(2*n)]`
-/

namespace A052994.P11115844418363195942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187069 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A052994.P11115844418363195942

namespace A052994

/-- `2*Δ[A187069(2*n)]` -/
def P11115844418363195942.Spec : Prop :=
  ∀ n, P11115844418363195942.a n = A052994 n

end A052994

/-! ## A052994.P12962081965589714225

`2*A187068(2*(n+1))`
-/

namespace A052994.P12962081965589714225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A187068 (2 * (n + 1))

end

end A052994.P12962081965589714225

namespace A052994

/-- `2*A187068(2*(n+1))` -/
def P12962081965589714225.Spec : Prop :=
  ∀ n, P12962081965589714225.a n = A052994 n

end A052994

/-! ## A052994.P16061409990186249788

`2*A120771(3*n+2)`
-/

namespace A052994.P16061409990186249788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120771 (3 * n + 2)

end

end A052994.P16061409990186249788

namespace A052994

/-- `2*A120771(3*n+2)` -/
def P16061409990186249788.Spec : Prop :=
  ∀ n, P16061409990186249788.a n = A052994 n

end A052994

/-! ## A052994.P10170138867760656506

`A106803(n)+Δ[A006054(n)]`
-/

namespace A052994.P10170138867760656506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106803 n + (f1 (n + 1) - f1 n)

end

end A052994.P10170138867760656506

namespace A052994

/-- `A106803(n)+Δ[A006054(n)]` -/
def P10170138867760656506.Spec : Prop :=
  ∀ n, P10170138867760656506.a n = A052994 n

end A052994

/-! ## A052994.P6090494132552195744

`2*(A006054(n+1)-A006054(n))`
-/

namespace A052994.P6090494132552195744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006054 (n + 1) - A006054 n)

end

end A052994.P6090494132552195744

namespace A052994

/-- `2*(A006054(n+1)-A006054(n))` -/
def P6090494132552195744.Spec : Prop :=
  ∀ n, P6090494132552195744.a n = A052994 n

end A052994

/-! ## A052994.P8967739023493451827

`A000007(n+1)+A106803(n)+A106803(n)`
-/

namespace A052994.P8967739023493451827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A106803 n + A106803 n)

end

end A052994.P8967739023493451827

namespace A052994

/-- `A000007(n+1)+A106803(n)+A106803(n)` -/
def P8967739023493451827.Spec : Prop :=
  ∀ n, P8967739023493451827.a n = A052994 n

end A052994

/-! ## A052994.P6928247200104071071

`A006054(n+1)+A106803(n)-A006054(n)`
-/

namespace A052994.P6928247200104071071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 (n + 1) + (A106803 n - A006054 n)

end

end A052994.P6928247200104071071

namespace A052994

/-- `A006054(n+1)+A106803(n)-A006054(n)` -/
def P6928247200104071071.Spec : Prop :=
  ∀ n, P6928247200104071071.a n = A052994 n

end A052994

/-! ## A052994.P10735862894176658682

`Δ[2*∑[A187068(2*n)]]`
-/

namespace A052994.P10735862894176658682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187068 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052994.P10735862894176658682

namespace A052994

/-- `Δ[2*∑[A187068(2*n)]]` -/
def P10735862894176658682.Spec : Prop :=
  ∀ n, P10735862894176658682.a n = A052994 n

end A052994

/-! ## A052994.P12335221813985462132

`abs(A199853(n))-A199853(n)`
-/

namespace A052994.P12335221813985462132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A199853 n| - A199853 n

end

end A052994.P12335221813985462132

namespace A052994

/-- `abs(A199853(n))-A199853(n)` -/
def P12335221813985462132.Spec : Prop :=
  ∀ n, P12335221813985462132.a n = A052994 n

end A052994

/-! ## A052994.P15071047786191455630

`Δ[A052949(n)]-A006054(n)`
-/

namespace A052994.P15071047786191455630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006054 n

end

end A052994.P15071047786191455630

namespace A052994

/-- `Δ[A052949(n)]-A006054(n)` -/
def P15071047786191455630.Spec : Prop :=
  ∀ n, P15071047786191455630.a n = A052994 n

end A052994

/-! ## A052994.P9004130564735645217

`Δ[A077998(n)]-A006054(n)`
-/

namespace A052994.P9004130564735645217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006054 n

end

end A052994.P9004130564735645217

namespace A052994

/-- `Δ[A077998(n)]-A006054(n)` -/
def P9004130564735645217.Spec : Prop :=
  ∀ n, P9004130564735645217.a n = A052994 n

end A052994

/-! ## A052994.P931352950576120020

`A052534(n)-Δ[A106803(n)]`
-/

namespace A052994.P931352950576120020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052534 n - (f1 (n + 1) - f1 n)

end

end A052994.P931352950576120020

namespace A052994

/-- `A052534(n)-Δ[A106803(n)]` -/
def P931352950576120020.Spec : Prop :=
  ∀ n, P931352950576120020.a n = A052994 n

end A052994

/-!
# A052995: Expansion of 2*x*(1 - x)/(1 - 3*x + x^2).

The programs for A052995, the canonical program `A052995.P10505697446290579928` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052995 has offset 0).

The definition of A052995 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2x-2x^2)/(1-3x+x^2))` (program `A052995.P10505697446290579928`, by `A052995.P10505697446290579928.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052995.P10505697446290579928

`ogf((2x-2x^2)/(1-3x+x^2))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052995

/-- `ogf((2x-2x^2)/(1-3x+x^2))` -/
def P10505697446290579928.Spec : Prop :=
  ∀ n, P10505697446290579928.a n = A052995 n

theorem P10505697446290579928.correct : P10505697446290579928.Spec := by
  intro n
  simp only [A052995]

end A052995

/-! ## A052995.P1041370519308825892

`floor(ϕ²*a(n-1))` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A052995.P1041370519308825892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4] fun n a =>
  ⌊Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌋

end

end A052995.P1041370519308825892

namespace A052995

/-- `floor(ϕ²*a(n-1))` -/
def P1041370519308825892.Spec : Prop :=
  ∀ n, P1041370519308825892.a n = A052995 n

end A052995

/-! ## A052995.P4033116212980617378

`round(ϕ²*a(n-1))` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A052995.P4033116212980617378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 * (a (n - 1) : ℝ))

end

end A052995.P4033116212980617378

namespace A052995

/-- `round(ϕ²*a(n-1))` -/
def P4033116212980617378.Spec : Prop :=
  ∀ n, P4033116212980617378.a n = A052995 n

end A052995

/-! ## A052995.P9061132486161654899

`record[a(n-2)-a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A052995.P9061132486161654899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052995.P9061132486161654899

namespace A052995

/-- `record[a(n-2)-a(n-1)]` -/
def P9061132486161654899.Spec : Prop :=
  ∀ n, P9061132486161654899.a n = A052995 n

end A052995

/-! ## A052995.P12500929720232770003

`3*a(n-1)-a(n-2)` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A052995.P12500929720232770003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4] fun n a =>
  3 * a (n - 1) - a (n - 2)

end

end A052995.P12500929720232770003

namespace A052995

/-- `3*a(n-1)-a(n-2)` -/
def P12500929720232770003.Spec : Prop :=
  ∀ n, P12500929720232770003.a n = A052995 n

end A052995

/-! ## A052995.P8772723800295651808

`lcm(3, a(n-1))-a(n-2)` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A052995.P8772723800295651808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4] fun n a =>
  (Int.lcm 3 (a (n - 1)) : ℤ) - a (n - 2)

end

end A052995.P8772723800295651808

namespace A052995

/-- `lcm(3, a(n-1))-a(n-2)` -/
def P8772723800295651808.Spec : Prop :=
  ∀ n, P8772723800295651808.a n = A052995 n

end A052995

/-! ## A052995.P5767834107610517165

`a(n-1)+a(n-1)+a(n-1)-a(n-2)` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A052995.P5767834107610517165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 2)))

end

end A052995.P5767834107610517165

namespace A052995

/-- `a(n-1)+a(n-1)+a(n-1)-a(n-2)` -/
def P5767834107610517165.Spec : Prop :=
  ∀ n, P5767834107610517165.a n = A052995 n

end A052995

/-! ## A052995.P8619492948906229462

`a(n-1)-(a(n-2)-a(n-1)-a(n-1))` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A052995.P8619492948906229462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 1))

end

end A052995.P8619492948906229462

namespace A052995

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-1))` -/
def P8619492948906229462.Spec : Prop :=
  ∀ n, P8619492948906229462.a n = A052995 n

end A052995

/-! ## A052995.P231697149486047589

`Δ[A192908(n)]`
-/

namespace A052995.P231697149486047589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052995.P231697149486047589

namespace A052995

/-- `Δ[A192908(n)]` -/
def P231697149486047589.Spec : Prop :=
  ∀ n, P231697149486047589.a n = A052995 n

end A052995

/-! ## A052995.P6064038536389455171

`A198834(Δ[n²])`
-/

namespace A052995.P6064038536389455171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198834 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A052995.P6064038536389455171

namespace A052995

/-- `A198834(Δ[n²])` -/
def P6064038536389455171.Spec : Prop :=
  ∀ n, P6064038536389455171.a n = A052995 n

end A052995

/-! ## A052995.P6891608705634460257

`record[Δ[A109794(n)]]`
-/

namespace A052995.P6891608705634460257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109794 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052995.P6891608705634460257

namespace A052995

/-- `record[Δ[A109794(n)]]` -/
def P6891608705634460257.Spec : Prop :=
  ∀ n, P6891608705634460257.a n = A052995 n

end A052995

/-! ## A052995.P9001004753824773443

`2*(1-A186025(n))`
-/

namespace A052995.P9001004753824773443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 - A186025 n)

end

end A052995.P9001004753824773443

namespace A052995

/-- `2*(1-A186025(n))` -/
def P9001004753824773443.Spec : Prop :=
  ∀ n, P9001004753824773443.a n = A052995 n

end A052995

/-! ## A052995.P3905068186908505654

`Δ[2*Δ[A293064(n)]]`
-/

namespace A052995.P3905068186908505654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293064 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A052995.P3905068186908505654

namespace A052995

/-- `Δ[2*Δ[A293064(n)]]` -/
def P3905068186908505654.Spec : Prop :=
  ∀ n, P3905068186908505654.a n = A052995 n

end A052995

/-! ## A052995.P8302971963892659330

`2*(A093467(n+1)-1)`
-/

namespace A052995.P8302971963892659330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A093467 (n + 1) - 1)

end

end A052995.P8302971963892659330

namespace A052995

/-- `2*(A093467(n+1)-1)` -/
def P8302971963892659330.Spec : Prop :=
  ∀ n, P8302971963892659330.a n = A052995 n

end A052995

/-! ## A052995.P17604220569435108363

`lcm(2, A198834(2*n+1))`
-/

namespace A052995.P17604220569435108363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A198834 (2 * n + 1))

end

end A052995.P17604220569435108363

namespace A052995

/-- `lcm(2, A198834(2*n+1))` -/
def P17604220569435108363.Spec : Prop :=
  ∀ n, (P17604220569435108363.a n : ℤ) = A052995 n

end A052995

/-! ## A052995.P14153964516525051718

`A214927(3*n+n+1)`
-/

namespace A052995.P14153964516525051718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214927 (3 * n + (n + 1))

end

end A052995.P14153964516525051718

namespace A052995

/-- `A214927(3*n+n+1)` -/
def P14153964516525051718.Spec : Prop :=
  ∀ n, P14153964516525051718.a n = A052995 n

end A052995

/-! ## A052995.P2461798139470682915

`record[Δ[A098054(2*n+1)]]`
-/

namespace A052995.P2461798139470682915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098054 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A052995.P2461798139470682915

namespace A052995

/-- `record[Δ[A098054(2*n+1)]]` -/
def P2461798139470682915.Spec : Prop :=
  ∀ n, P2461798139470682915.a n = A052995 n

end A052995

/-! ## A052995.P170347752879387293

`2*A000045(comp[2*(n+1)])`
-/

namespace A052995.P170347752879387293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A052995.P170347752879387293

namespace A052995

/-- `2*A000045(comp[2*(n+1)])` -/
def P170347752879387293.Spec : Prop :=
  ∀ n, P170347752879387293.a n = A052995 n

end A052995

/-! ## A052995.P14792995123134130412

`ceil(2*A000045(2*n)/ϕ)`
-/

namespace A052995.P14792995123134130412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((A000045 (2 * n) : ℝ) / Real.goldenRatio)⌉

end

end A052995.P14792995123134130412

namespace A052995

/-- `ceil(2*A000045(2*n)/ϕ)` -/
def P14792995123134130412.Spec : Prop :=
  ∀ n, P14792995123134130412.a n = A052995 n

end A052995

/-!
# A052996: Expansion of (1+x^2-x^3)/((1-x)*(1-2*x)).

The programs for A052996, the canonical program `A052996.P4414164472271338417` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052996 has offset 0).

The definition of A052996 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^2-x^3)/(1-3x+2x^2))` (program `A052996.P4414164472271338417`, by `A052996.P4414164472271338417.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052996.P4414164472271338417

`ogf((1+x^2-x^3)/(1-3x+2x^2))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052996

/-- `ogf((1+x^2-x^3)/(1-3x+2x^2))` -/
def P4414164472271338417.Spec : Prop :=
  ∀ n, P4414164472271338417.a n = A052996 n

theorem P4414164472271338417.correct : P4414164472271338417.Spec := by
  intro n
  simp only [A052996]

end A052996

/-! ## A052996.P17359938709934451248

`2*a(n-1)+1` with `a(0)=1, a(1)=3, a(2)=8`
-/

namespace A052996.P17359938709934451248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 8] fun n a =>
  2 * a (n - 1) + 1

end

end A052996.P17359938709934451248

namespace A052996

/-- `2*a(n-1)+1` -/
def P17359938709934451248.Spec : Prop :=
  ∀ n, (P17359938709934451248.a n : ℤ) = A052996 n

end A052996

/-! ## A052996.P7894256522233278419

`∑[round(9*2^(n-3))]`
-/

namespace A052996.P7894256522233278419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (9 * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A052996.P7894256522233278419

namespace A052996

/-- `∑[round(9*2^(n-3))]` -/
def P7894256522233278419.Spec : Prop :=
  ∀ n, P7894256522233278419.a n = A052996 n

end A052996

/-! ## A052996.P9424977246898308228

`or(1, 2*a(n-1))` with `a(0)=1, a(1)=3, a(2)=8`
-/

namespace A052996.P9424977246898308228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 8] fun n a =>
  Nat.lor 1 (2 * a (n - 1))

end

end A052996.P9424977246898308228

namespace A052996

/-- `or(1, 2*a(n-1))` -/
def P9424977246898308228.Spec : Prop :=
  ∀ n, (P9424977246898308228.a n : ℤ) = A052996 n

end A052996

/-! ## A052996.P12439060926337818768

`xor(1, 2*a(n-1))` with `a(0)=1, a(1)=3, a(2)=8`
-/

namespace A052996.P12439060926337818768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 8] fun n a =>
  Nat.xor 1 (2 * a (n - 1))

end

end A052996.P12439060926337818768

namespace A052996

/-- `xor(1, 2*a(n-1))` -/
def P12439060926337818768.Spec : Prop :=
  ∀ n, (P12439060926337818768.a n : ℤ) = A052996 n

end A052996

/-! ## A052996.P15205895342725076173

`a(n-1)+a(n-1)+1` with `a(0)=1, a(1)=3, a(2)=8`
-/

namespace A052996.P15205895342725076173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 8] fun n a =>
  a (n - 1) + (a (n - 1) + 1)

end

end A052996.P15205895342725076173

namespace A052996

/-- `a(n-1)+a(n-1)+1` -/
def P15205895342725076173.Spec : Prop :=
  ∀ n, (P15205895342725076173.a n : ℤ) = A052996 n

end A052996

/-! ## A052996.P14053621746529602567

`1-((1-n)*floor(2/n)-2*a(n-1))` with `a(0)=1`
-/

namespace A052996.P14053621746529602567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((1 - (n : ℤ)) * ⌊2 / (n : ℚ)⌋ - 2 * a (n - 1))

end

end A052996.P14053621746529602567

namespace A052996

/-- `1-((1-n)*floor(2/n)-2*a(n-1))` -/
def P14053621746529602567.Spec : Prop :=
  ∀ n, P14053621746529602567.a n = A052996 n

end A052996

/-! ## A052996.P18168947045871385853

`a(n-1)-((1-a(n-1))%3-a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A052996.P18168947045871385853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - (Int.tmod (1 - a (n - 1)) 3 - a (n - 1))

end

end A052996.P18168947045871385853

namespace A052996

/-- `a(n-1)-((1-a(n-1))%3-a(n-1))` -/
def P18168947045871385853.Spec : Prop :=
  ∀ n, P18168947045871385853.a n = A052996 n

end A052996

/-! ## A052996.P17129854737525988791

`∑[A000079(n)]+floor(2^(n-2))`
-/

namespace A052996.P17129854737525988791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

end

end A052996.P17129854737525988791

namespace A052996

/-- `∑[A000079(n)]+floor(2^(n-2))` -/
def P17129854737525988791.Spec : Prop :=
  ∀ n, P17129854737525988791.a n = A052996 n

end A052996

/-! ## A052996.P8667444580381015239

`A084215(n)+A000225(n)`
-/

namespace A052996.P8667444580381015239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 n + A000225 n

end

end A052996.P8667444580381015239

namespace A052996

/-- `A084215(n)+A000225(n)` -/
def P8667444580381015239.Spec : Prop :=
  ∀ n, P8667444580381015239.a n = A052996 n

end A052996

/-! ## A052996.P4365443823831096346

`A127904(n)+A026622(n)`
-/

namespace A052996.P4365443823831096346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127904 n + A026622 n

end

end A052996.P4365443823831096346

namespace A052996

/-- `A127904(n)+A026622(n)` -/
def P4365443823831096346.Spec : Prop :=
  ∀ n, P4365443823831096346.a n = A052996 n

end A052996

/-! ## A052996.P4397840083821151849

`A397439(n)+A057428(n)`
-/

namespace A052996.P4397840083821151849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397439 n + A057428 n

end

end A052996.P4397840083821151849

namespace A052996

/-- `A397439(n)+A057428(n)` -/
def P4397840083821151849.Spec : Prop :=
  ∀ n, P4397840083821151849.a n = A052996 n

end A052996

/-! ## A052996.P4474701025334706633

`A397439(n)-A057427(n)`
-/

namespace A052996.P4474701025334706633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397439 n - A057427 n

end

end A052996.P4474701025334706633

namespace A052996

/-- `A397439(n)-A057427(n)` -/
def P4474701025334706633.Spec : Prop :=
  ∀ n, P4474701025334706633.a n = A052996 n

end A052996

/-! ## A052996.P15696994012389713800

`A122391(n+1)+A055010(n)`
-/

namespace A052996.P15696994012389713800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 (n + 1) + A055010 n

end

end A052996.P15696994012389713800

namespace A052996

/-- `A122391(n+1)+A055010(n)` -/
def P15696994012389713800.Spec : Prop :=
  ∀ n, P15696994012389713800.a n = A052996 n

end A052996

/-! ## A052996.P12784972319608424631

`A323227(n)+A000295(n+1)`
-/

namespace A052996.P12784972319608424631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323227 n + A000295 (n + 1)

end

end A052996.P12784972319608424631

namespace A052996

/-- `A323227(n)+A000295(n+1)` -/
def P12784972319608424631.Spec : Prop :=
  ∀ n, P12784972319608424631.a n = A052996 n

end A052996

/-! ## A052996.P10149694834305029782

`A000079(n)+A084215(n)-1`
-/

namespace A052996.P10149694834305029782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A084215 n - 1)

end

end A052996.P10149694834305029782

namespace A052996

/-- `A000079(n)+A084215(n)-1` -/
def P10149694834305029782.Spec : Prop :=
  ∀ n, P10149694834305029782.a n = A052996 n

end A052996

/-! ## A052996.P14774994577282471805

`A000295(n)+A084215(n)+n`
-/

namespace A052996.P14774994577282471805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n + (A084215 n + (n : ℤ))

end

end A052996.P14774994577282471805

namespace A052996

/-- `A000295(n)+A084215(n)+n` -/
def P14774994577282471805.Spec : Prop :=
  ∀ n, P14774994577282471805.a n = A052996 n

end A052996

/-! ## A052996.P4419388845162689626

`A042950(n)+∑[A098011(n+1)]-2`
-/

namespace A052996.P4419388845162689626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n + ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A052996.P4419388845162689626

namespace A052996

/-- `A042950(n)+∑[A098011(n+1)]-2` -/
def P4419388845162689626.Spec : Prop :=
  ∀ n, P4419388845162689626.a n = A052996 n

end A052996

/-! ## A052996.P14506598767840251481

`A266550(n+2)+Δ[A266550(n+1)]`
-/

namespace A052996.P14506598767840251481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (n + 2) + (f1 (n + 1) - f1 n)

end

end A052996.P14506598767840251481

namespace A052996

/-- `A266550(n+2)+Δ[A266550(n+1)]` -/
def P14506598767840251481.Spec : Prop :=
  ∀ n, P14506598767840251481.a n = A052996 n

end A052996

/-! ## A052996.P3400339286106271614

`Δ[A076736(2*n+1)]+∑[A076736(2*(n+1))]`
-/

namespace A052996.P3400339286106271614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076736 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076736 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A052996.P3400339286106271614

namespace A052996

/-- `Δ[A076736(2*n+1)]+∑[A076736(2*(n+1))]` -/
def P3400339286106271614.Spec : Prop :=
  ∀ n, P3400339286106271614.a n = A052996 n

end A052996

/-!
# A052997: Expansion of (1+x-x^3)/((1-2*x)*(1-x^2)).

The programs for A052997, the canonical program `A052997.P7242323432822003008` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A052997 has offset 0).

The definition of A052997 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-x^3)/(1-2x-x^2+2x^3))` (program `A052997.P7242323432822003008`, by `A052997.P7242323432822003008.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A052997.P7242323432822003008

`ogf((1+x-x^3)/(1-2x-x^2+2x^3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A052997

/-- `ogf((1+x-x^3)/(1-2x-x^2+2x^3))` -/
def P7242323432822003008.Spec : Prop :=
  ∀ n, P7242323432822003008.a n = A052997 n

theorem P7242323432822003008.correct : P7242323432822003008.Spec := by
  intro n
  simp only [A052997]

end A052997

/-! ## A052997.P15391572895554824518

`char[2*n]+2*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A052997.P15391572895554824518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 2 * a (n - 1)

end

end A052997.P15391572895554824518

namespace A052997

/-- `char[2*n]+2*a(n-1)` -/
def P15391572895554824518.Spec : Prop :=
  ∀ n, (P15391572895554824518.a n : ℤ) = A052997 n

end A052997

/-! ## A052997.P15853930221878610056

`2*a(n-1)+1-n%2` with `a(0)=1, a(1)=3`
-/

namespace A052997.P15853930221878610056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) + 1 - ((n % 2 : ℕ) : ℤ)

end

end A052997.P15853930221878610056

namespace A052997

/-- `2*a(n-1)+1-n%2` -/
def P15853930221878610056.Spec : Prop :=
  ∀ n, P15853930221878610056.a n = A052997 n

end A052997

/-! ## A052997.P11124639164627478234

`2*a(n-1)-(1-n)%2` with `a(0)=1, a(1)=3`
-/

namespace A052997.P11124639164627478234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) - Int.tmod (1 - (n : ℤ)) 2

end

end A052997.P11124639164627478234

namespace A052997

/-- `2*a(n-1)-(1-n)%2` -/
def P11124639164627478234.Spec : Prop :=
  ∀ n, P11124639164627478234.a n = A052997 n

end A052997

/-! ## A052997.P13940259533186953866

`2*a(n-1)+gcd(2, n)-1` with `a(0)=1, a(1)=3`
-/

namespace A052997.P13940259533186953866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) + ((Nat.gcd 2 n : ℤ) - 1)

end

end A052997.P13940259533186953866

namespace A052997

/-- `2*a(n-1)+gcd(2, n)-1` -/
def P13940259533186953866.Spec : Prop :=
  ∀ n, P13940259533186953866.a n = A052997 n

end A052997

/-! ## A052997.P15801064752057798086

`a(n-1)+∑[(-1)^n]+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A052997.P15801064752057798086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A052997.P15801064752057798086

namespace A052997

/-- `a(n-1)+∑[(-1)^n]+a(n-1)` -/
def P15801064752057798086.Spec : Prop :=
  ∀ n, P15801064752057798086.a n = A052997 n

end A052997

/-! ## A052997.P10237261561378743673

`2*a(n-1)+(1+(-1)^n)/2` with `a(0)=1, a(1)=3`
-/

namespace A052997.P10237261561378743673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) + (1 + (-1) ^ n : ℚ) / 2

end

end A052997.P10237261561378743673

namespace A052997

/-- `2*a(n-1)+(1+(-1)^n)/2` -/
def P10237261561378743673.Spec : Prop :=
  ∀ n, P10237261561378743673.a n = (A052997 n : ℚ)

end A052997

/-! ## A052997.P4110964276798965515

`2*floor(a(n-1)+n/2)+1-n` with `a(0)=1, a(1)=3`
-/

namespace A052997.P4110964276798965515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * ⌊(a (n - 1) : ℚ) + (n : ℚ) / 2⌋ + (1 - (n : ℤ))

end

end A052997.P4110964276798965515

namespace A052997

/-- `2*floor(a(n-1)+n/2)+1-n` -/
def P4110964276798965515.Spec : Prop :=
  ∀ n, P4110964276798965515.a n = A052997 n

end A052997

/-! ## A052997.P7550928643486193639

`a(n-1)+a(n-1)+(n-1)%2` with `a(0)=1, a(1)=3`
-/

namespace A052997.P7550928643486193639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (a (n - 1) + Int.tmod ((n : ℤ) - 1) 2)

end

end A052997.P7550928643486193639

namespace A052997

/-- `a(n-1)+a(n-1)+(n-1)%2` -/
def P7550928643486193639.Spec : Prop :=
  ∀ n, P7550928643486193639.a n = A052997 n

end A052997

/-! ## A052997.P5612878323634548379

`a(n-1)+2*(a(n-2)+3)-5` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A052997.P5612878323634548379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  a (n - 1) + 2 * (a (n - 2) + 3) - 5

end

end A052997.P5612878323634548379

namespace A052997

/-- `a(n-1)+2*(a(n-2)+3)-5` -/
def P5612878323634548379.Spec : Prop :=
  ∀ n, P5612878323634548379.a n = A052997 n

end A052997

/-! ## A052997.P15752636653706943249

`1-(a(n-1)%a(n-2)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A052997.P15752636653706943249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  1 - (Int.tmod (a (n - 1)) (a (n - 2)) - a (n - 1) - a (n - 1))

end

end A052997.P15752636653706943249

namespace A052997

/-- `1-(a(n-1)%a(n-2)-a(n-1)-a(n-1))` -/
def P15752636653706943249.Spec : Prop :=
  ∀ n, P15752636653706943249.a n = A052997 n

end A052997

/-! ## A052997.P14376913727376116821

`∑[A001045(n+1)]+floor(2^(n-1))`
-/

namespace A052997.P14376913727376116821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A052997.P14376913727376116821

namespace A052997

/-- `∑[A001045(n+1)]+floor(2^(n-1))` -/
def P14376913727376116821.Spec : Prop :=
  ∀ n, P14376913727376116821.a n = A052997 n

end A052997

/-! ## A052997.P8608805257349260050

`A055010(n)+A005578(n)`
-/

namespace A052997.P8608805257349260050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 n + A005578 n

end

end A052997.P8608805257349260050

namespace A052997

/-- `A055010(n)+A005578(n)` -/
def P8608805257349260050.Spec : Prop :=
  ∀ n, P8608805257349260050.a n = A052997 n

end A052997

/-! ## A052997.P7773968803552868359

`A084640(n)+A023105(n)`
-/

namespace A052997.P7773968803552868359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084640 n + A023105 n

end

end A052997.P7773968803552868359

namespace A052997

/-- `A084640(n)+A023105(n)` -/
def P7773968803552868359.Spec : Prop :=
  ∀ n, P7773968803552868359.a n = A052997 n

end A052997

/-! ## A052997.P16040130853056095624

`A094373(n)+A084639(n)`
-/

namespace A052997.P16040130853056095624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n + A084639 n

end

end A052997.P16040130853056095624

namespace A052997

/-- `A094373(n)+A084639(n)` -/
def P16040130853056095624.Spec : Prop :=
  ∀ n, P16040130853056095624.a n = A052997 n

end A052997

/-! ## A052997.P14608191633998796397

`A166920(n)+A084214(n)`
-/

namespace A052997.P14608191633998796397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166920 n + A084214 n

end

end A052997.P14608191633998796397

namespace A052997

/-- `A166920(n)+A084214(n)` -/
def P14608191633998796397.Spec : Prop :=
  ∀ n, P14608191633998796397.a n = A052997 n

end A052997

/-! ## A052997.P3848830458031245173

`A340849(n)+A179744(n)`
-/

namespace A052997.P3848830458031245173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340849 n + A179744 n

end

end A052997.P3848830458031245173

namespace A052997

/-- `A340849(n)+A179744(n)` -/
def P3848830458031245173.Spec : Prop :=
  ∀ n, P3848830458031245173.a n = A052997 n

end A052997

/-! ## A052997.P6712440998773827207

`xor(A000975(n), A083329(n))`
-/

namespace A052997.P6712440998773827207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000975 n) (A083329 n)

end

end A052997.P6712440998773827207

namespace A052997

/-- `xor(A000975(n), A083329(n))` -/
def P6712440998773827207.Spec : Prop :=
  ∀ n, P6712440998773827207.a n = A052997 n

end A052997

/-! ## A052997.P14767084752907737908

`xor(A135351(n), A284353(n))`
-/

namespace A052997.P14767084752907737908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A135351 n) (A284353 n)

end

end A052997.P14767084752907737908

namespace A052997

/-- `xor(A135351(n), A284353(n))` -/
def P14767084752907737908.Spec : Prop :=
  ∀ n, P14767084752907737908.a n = A052997 n

end A052997

/-! ## A052997.P5378158789004930597

`A131577(n)+A000975(n+1)`
-/

namespace A052997.P5378158789004930597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A000975 (n + 1)

end

end A052997.P5378158789004930597

namespace A052997

/-- `A131577(n)+A000975(n+1)` -/
def P5378158789004930597.Spec : Prop :=
  ∀ n, P5378158789004930597.a n = A052997 n

end A052997

/-!
# A052998: A052902 / 18.

The programs for A052998, there is no canonical definition to state claims against.
-/

/-! ## A052998.P744979211284015585

`A052902(n+1)/18`
-/

namespace A052998.P744979211284015585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052902 (n + 1) : ℚ) / 18

end

end A052998.P744979211284015585

/-! ## A052998.P12611458073743495401

`A106619(A052902(n+1))`
-/

namespace A052998.P12611458073743495401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (A052902 (n + 1)).toNat

end

end A052998.P12611458073743495401

/-! ## A052998.P9376080328092937285

`A052500(45*A052902(n+1))`
-/

namespace A052998.P9376080328092937285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052500 (45 * A052902 (n + 1)).toNat

end

end A052998.P9376080328092937285

/-! ## A052998.P11379080155903407901

`A007376(A052902(n+1)%A114931(n+1))`
-/

namespace A052998.P11379080155903407901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (Int.tmod (A052902 (n + 1)) (A114931 (n + 1))).toNat

end

end A052998.P11379080155903407901

/-! ## A052998.P8945533187950351270

`A007376(A052902(n+1)^A295632(3*n+5))`
-/

namespace A052998.P8945533187950351270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (SequenceMachineLib.roundAway ((A052902 (n + 1) : ℚ) ^ (A295632 (3 * n + 5) : ℤ))).toNat

end

end A052998.P8945533187950351270

/-!
# A052999: Take n-th prime p, let P(p) = all primes that can be obtained by permuting the digits of p and possibly adding or omitting zeros; a(n) = |p-q| where q in P(p) is the closest to p but different from p (a(n)=0 if no such q exists).

The programs for A052999, there is no canonical definition to state claims against.
-/

/-! ## A052999.P6748983455946346203

`18*A053544(n+1)`
-/

namespace A052999.P6748983455946346203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A053544 (n + 1)

end

end A052999.P6748983455946346203

/-! ## A052999.P15953610054543786082

`A008600(A053544(n+1))`
-/

namespace A052999.P15953610054543786082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008600 (A053544 (n + 1)).toNat

end

end A052999.P15953610054543786082

