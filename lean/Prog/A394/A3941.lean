import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C004
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A394110: a(n) = binomial(3*n, n)*(7*n+3)/((n+1)*(2*n+1)).

The programs for A394110, the canonical program `A394110.P1967582314872625174` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394110 has offset 0).

The definition of A394110 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394110.P1967582314872625174

`2*A006013(n)+A001764(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A394110

/-- `2*A006013(n)+A001764(n)` -/
def P1967582314872625174.Spec : Prop :=
  ∀ n, P1967582314872625174.a n = A394110 n

theorem P1967582314872625174.correct : P1967582314872625174.Spec := by
  intro n
  simp only [A394110]

end A394110

/-! ## A394110.P867640793014436239

`C(3*n, n)*(7*n+3)/((n+1)*(2*n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394110.P867640793014436239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n * (7 * n + 3) : ℚ) / ((n + 1) * (2 * n + 1) : ℚ)

end

end A394110.P867640793014436239

namespace A394110

/-- `C(3*n, n)*(7*n+3)/((n+1)*(2*n+1))` -/
def P867640793014436239.Spec : Prop :=
  ∀ n, P867640793014436239.a n = (A394110 n : ℚ)

end A394110

/-! ## A394110.P2907707484972359177

`A007226(n)+A006013(n)`
-/

namespace A394110.P2907707484972359177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 n + A006013 n

end

end A394110.P2907707484972359177

namespace A394110

/-- `A007226(n)+A006013(n)` -/
def P2907707484972359177.Spec : Prop :=
  ∀ n, P2907707484972359177.a n = A394110 n

end A394110

/-! ## A394110.P15594442058219966943

`A116637(2*n+1)+A001764(n)`
-/

namespace A394110.P15594442058219966943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116637 (2 * n + 1) + A001764 n

end

end A394110.P15594442058219966943

namespace A394110

/-- `A116637(2*n+1)+A001764(n)` -/
def P15594442058219966943.Spec : Prop :=
  ∀ n, P15594442058219966943.a n = A394110 n

end A394110

/-! ## A394110.P2617568280188184682

`A116637(2*n+1)+A047749(2*n)`
-/

namespace A394110.P2617568280188184682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116637 (2 * n + 1) + A047749 (2 * n)

end

end A394110.P2617568280188184682

namespace A394110

/-- `A116637(2*n+1)+A047749(2*n)` -/
def P2617568280188184682.Spec : Prop :=
  ∀ n, P2617568280188184682.a n = A394110 n

end A394110

/-!
# A394111: a(n) = binomial(3*n, n)*(5*n+3)/((n+1)*(2*n+1)).

The programs for A394111, the canonical program `A394111.P11665560195545579973` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394111 has offset 0).

The definition of A394111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394111.P11665560195545579973

`A006013(n)+2*A001764(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A394111

/-- `A006013(n)+2*A001764(n)` -/
def P11665560195545579973.Spec : Prop :=
  ∀ n, P11665560195545579973.a n = A394111 n

theorem P11665560195545579973.correct : P11665560195545579973.Spec := by
  intro n
  simp only [A394111]

end A394111

/-! ## A394111.P12443096449337764015

`C(3*n, n)*(5*n+3)/((n+1)*(2*n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394111.P12443096449337764015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n * (5 * n + 3) : ℚ) / ((n + 1) * (2 * n + 1) : ℚ)

end

end A394111.P12443096449337764015

namespace A394111

/-- `C(3*n, n)*(5*n+3)/((n+1)*(2*n+1))` -/
def P12443096449337764015.Spec : Prop :=
  ∀ n, P12443096449337764015.a n = (A394111 n : ℚ)

end A394111

/-! ## A394111.P6686602836354690490

`A007226(n)+A001764(n)`
-/

namespace A394111.P6686602836354690490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 n + A001764 n

end

end A394111.P6686602836354690490

namespace A394111

/-- `A007226(n)+A001764(n)` -/
def P6686602836354690490.Spec : Prop :=
  ∀ n, P6686602836354690490.a n = A394111 n

end A394111

/-! ## A394111.P1857137383243152124

`A394978(n+1)-A001764(n)`
-/

namespace A394111.P1857137383243152124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394978 (n + 1) - A001764 n

end

end A394111.P1857137383243152124

namespace A394111

/-- `A394978(n+1)-A001764(n)` -/
def P1857137383243152124.Spec : Prop :=
  ∀ n, P1857137383243152124.a n = A394111 n

end A394111

/-! ## A394111.P14563111530200032952

`A127898(C(n, 2))+A007226(n)`
-/

namespace A394111.P14563111530200032952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127898 (Nat.choose n 2) + A007226 n

end

end A394111.P14563111530200032952

namespace A394111

/-- `A127898(C(n, 2))+A007226(n)` -/
def P14563111530200032952.Spec : Prop :=
  ∀ n, P14563111530200032952.a n = A394111 n

end A394111

/-! ## A394111.P9178130012322900190

`A116637(A004277(n))+A073148(∑[n])`
-/

namespace A394111.P9178130012322900190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116637 (A004277 n).toNat + A073148 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A394111.P9178130012322900190

namespace A394111

/-- `A116637(A004277(n))+A073148(∑[n])` -/
def P9178130012322900190.Spec : Prop :=
  ∀ n, P9178130012322900190.a n = A394111 n

end A394111

/-! ## A394111.P11631057371234795520

`A007857(n+1)+A001764(n)+A000108(n)`
-/

namespace A394111.P11631057371234795520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007857 (n + 1) + (A001764 n + A000108 n)

end

end A394111.P11631057371234795520

namespace A394111

/-- `A007857(n+1)+A001764(n)+A000108(n)` -/
def P11631057371234795520.Spec : Prop :=
  ∀ n, P11631057371234795520.a n = A394111 n

end A394111

/-!
# A394112: a(n) = A000108(n-1)+A007852(n).

The programs for A394112, the canonical program `A394112.P7582498751835381020` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394112 has offset 1).

The definition of A394112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394112.P7582498751835381020

`A000108(n)+A007852(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A394112

/-- `A000108(n)+A007852(n+1)` -/
def P7582498751835381020.Spec : Prop :=
  ∀ n, P7582498751835381020.a n = A394112 (n + 1)

theorem P7582498751835381020.correct : P7582498751835381020.Spec := by
  intro n
  simp only [A394112, Nat.add_sub_cancel]

end A394112

/-! ## A394112.P14773723183590566751

`A007852(n+1)+A000108(n)`
-/

namespace A394112.P14773723183590566751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007852 (n + 1) + A000108 n

end

end A394112.P14773723183590566751

namespace A394112

/-- `A007852(n+1)+A000108(n)` -/
def P14773723183590566751.Spec : Prop :=
  ∀ n, P14773723183590566751.a n = A394112 (n + 1)

theorem P14773723183590566751.correct : P14773723183590566751.Spec := by
  intro n
  simp only [A394112, Nat.add_sub_cancel, A394112.P14773723183590566751.a, A394112.P7582498751835381020.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A394112

/-! ## A394112.P7833838970639042125

`A120588(n+1)+A007852(n+1)`
-/

namespace A394112.P7833838970639042125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1) + A007852 (n + 1)

end

end A394112.P7833838970639042125

namespace A394112

/-- `A120588(n+1)+A007852(n+1)` -/
def P7833838970639042125.Spec : Prop :=
  ∀ n, P7833838970639042125.a n = A394112 (n + 1)

end A394112

/-! ## A394112.P14544929880643017267

`A028303(2*n)+A007852(n+1)`
-/

namespace A394112.P14544929880643017267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n) + A007852 (n + 1)

end

end A394112.P14544929880643017267

namespace A394112

/-- `A028303(2*n)+A007852(n+1)` -/
def P14544929880643017267.Spec : Prop :=
  ∀ n, P14544929880643017267.a n = A394112 (n + 1)

end A394112

/-! ## A394112.P13934860599347883370

`A007852(n+1)+A001700(n)-A162551(n)`
-/

namespace A394112.P13934860599347883370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007852 (n + 1) + (A001700 n - A162551 n)

end

end A394112.P13934860599347883370

namespace A394112

/-- `A007852(n+1)+A001700(n)-A162551(n)` -/
def P13934860599347883370.Spec : Prop :=
  ∀ n, P13934860599347883370.a n = A394112 (n + 1)

end A394112

/-!
# A394113: G.f. A(x) satisfies A(x)^4-(x+1)*A(x)^3+4*x*A(x)^2-(x^2+x)*A(x)+x^2=0.

The programs for A394113, there is no canonical definition to state claims against.
-/

/-! ## A394113.P14518690336740529447

`A117448(Δ[A047009(n)])`
-/

namespace A394113.P14518690336740529447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117448 (f1 (n + 1) - f1 n).toNat

end

end A394113.P14518690336740529447

/-! ## A394113.P11721280049454451990

`A364723(n)%A385027(2*n+1)`
-/

namespace A394113.P11721280049454451990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364723 n) (A385027 (2 * n + 1))

end

end A394113.P11721280049454451990

/-!
# A394114: G.f. A(x) satisfies A(x)^8-3*A(x)^7+(7x+3)*A(x)^6-(14x+1)*A(x)^5+(13x^2+8x)*A(x)^4-(14x^2+x)*A(x)^3+(7x^3+3x^2)*A(x)^2-3x^3*A(x)+x^4=0.

The programs for A394114, there is no canonical definition to state claims against.
-/

/-! ## A394114.P15601808201474982340

`∑[A111857(∑[A333093(n)])]`
-/

namespace A394114.P15601808201474982340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333093 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111857 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394114.P15601808201474982340

/-! ## A394114.P9406216560131367689

`A394128(n)-A171588(A000165(n))`
-/

namespace A394114.P9406216560131367689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394128 n - A171588 (A000165 n).toNat

end

end A394114.P9406216560131367689

/-!
# A394115: G.f. A(x) satisfies A(x)^3+(2x-2)*A(x)^2+(1-x)*A(x)+x^2-x=0.

The programs for A394115, there is no canonical definition to state claims against.
-/

/-! ## A394115.P12083481472816659894

`A191989(A390853(n))`
-/

namespace A394115.P12083481472816659894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191989 (A390853 n).toNat

end

end A394115.P12083481472816659894

/-! ## A394115.P11588330689076677646

`A110576(n)%∑{d}[A000422(n+1), #]`
-/

namespace A394115.P11588330689076677646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110576 n) ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A394115.P11588330689076677646

/-!
# A394116: G.f. A(x) satisfies A(x)^5-(2x+3)*A(x)^4+(7x+1)*A(x)^3-(4x^2+3x)*A(x)^2+3x^2*A(x)-x^3=0.

The programs for A394116, there is no canonical definition to state claims against.
-/

/-! ## A394116.P6393074931993497057

`A097471(A328281(n))`
-/

namespace A394116.P6393074931993497057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097471 (A328281 n).toNat

end

end A394116.P6393074931993497057

/-! ## A394116.P5959308836432334921

`A008617(A109318(n)+A048881(n))`
-/

namespace A394116.P5959308836432334921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A109318 n + A048881 n).toNat

end

end A394116.P5959308836432334921

/-! ## A394116.P12852760342205801006

`A008617(A135351(n)+A109318(n))`
-/

namespace A394116.P12852760342205801006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A135351 n + A109318 n).toNat

end

end A394116.P12852760342205801006

/-!
# A394117: G.f. A(x) satisfies A(x)^5+(2x-2)*A(x)^4+A(x)^3+(4x^2-2x)*A(x)^2+x^3=0.

The programs for A394117, there is no canonical definition to state claims against.
-/

/-! ## A394117.P6304649919202127179

`A243632(n^A191523(n+1))`
-/

namespace A394117.P6304649919202127179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243632 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A191523 (n + 1) : ℤ))).toNat

end

end A394117.P6304649919202127179

/-! ## A394117.P12137532551172969906

`A243632(n)+A025480(A083420(n))`
-/

namespace A394117.P12137532551172969906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243632 n + A025480 (A083420 n).toNat

end

end A394117.P12137532551172969906

/-! ## A394117.P15300209566066260131

`A243632(n)+A180989(A243633(n))`
-/

namespace A394117.P15300209566066260131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243632 n + A180989 (A243633 n).toNat

end

end A394117.P15300209566066260131

/-!
# A394118: G.f. A(x) satisfies A(x)^5-2*A(x)^4+(4x+1)*A(x)^3-5x*A(x)^2+(2x^2+x)*A(x)-x^2=0.

The programs for A394118, there is no canonical definition to state claims against.
-/

/-! ## A394118.P1981215634965549155

`A394128(n)-A239705(A363541(n))`
-/

namespace A394118.P1981215634965549155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394128 n - A239705 (A363541 n).toNat

end

end A394118.P1981215634965549155

/-! ## A394118.P7458834651747639223

`A105518(A266467(n+1))`
-/

namespace A394118.P7458834651747639223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105518 (A266467 (n + 1)).toNat

end

end A394118.P7458834651747639223

/-!
# A394119: G.f. A(x) satisfies A(x)^4+(2x-1)*A(x)^3+(x^2+2x)*A(x)^2+(2x^2-x)*A(x)+x^2=0.

The programs for A394119, there is no canonical definition to state claims against.
-/

/-! ## A394119.P13382275028705874555

`A219537(n)%A226298(n)`
-/

namespace A394119.P13382275028705874555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219537 n) (A226298 n)

end

end A394119.P13382275028705874555

/-! ## A394119.P5194819547019992017

`∑{e}[A001022(n), A219537(#)]`
-/

namespace A394119.P5194819547019992017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A219537 (Nat.factorization (f1 n).natAbs p)

end

end A394119.P5194819547019992017

/-!
# A394120: G.f. A(x) satisfies A(x)^4 + (x-1)*A(x)^3 + 3*x*A(x)^2 + (x^2-x)*A(x) + x^2 = 0.

The programs for A394120, there is no canonical definition to state claims against.
-/

/-! ## A394120.P8015606660624872373

`A122596(n)-A299150(A122579(n))`
-/

namespace A394120.P8015606660624872373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122596 n - A299150 (A122579 n).toNat

end

end A394120.P8015606660624872373

/-! ## A394120.P18084806990505198799

`A242062(A370195(n)+A101610(n+1))`
-/

namespace A394120.P18084806990505198799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (A370195 n + A101610 (n + 1)).toNat

end

end A394120.P18084806990505198799

/-!
# A394121: G.f. A(x) satisfies A(x)^8-A(x)^7+7x*A(x)^6-4x*A(x)^5+13x^2*A(x)^4-4x^2*A(x)^3+7x^3*A(x)^2-x^3*A(x)+x^4=0.

The programs for A394121, there is no canonical definition to state claims against.
-/

/-! ## A394121.P6980780305022210994

`A087508(A001339(n)-A212637(2*(n+2)))`
-/

namespace A394121.P6980780305022210994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 (A001339 n - A212637 (2 * (n + 2))).toNat

end

end A394121.P6980780305022210994

/-!
# A394122: G.f. A(x) satisfies A(x)^6-A(x)^5+5x*A(x)^4-(x^2+2x)*A(x)^3+5x^2*A(x)^2-x^2*A(x)+x^3=0.

The programs for A394122, there is no canonical definition to state claims against.
-/

/-! ## A394122.P3254723630974528289

`A005898(n+1)%A270831(A000079(n))`
-/

namespace A394122.P3254723630974528289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005898 (n + 1)) (A270831 (A000079 n).toNat)

end

end A394122.P3254723630974528289

/-! ## A394122.P376959182081235842

`A103221(or(A002981(n+1), A118342(n)))`
-/

namespace A394122.P376959182081235842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (Int.lor (A002981 (n + 1)) (A118342 n)).toNat

end

end A394122.P376959182081235842

/-!
# A394123: G.f. A(x) satisfies A(x)^4-A(x)^3+4x*A(x)^2-x*A(x)+x^2=0.

The programs for A394123, there is no canonical definition to state claims against.
-/

/-! ## A394123.P3045107283920541873

`A008407(A000142(n))+1-char[xor(n, 2*n)]`
-/

namespace A394123.P3045107283920541873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008407 (A000142 n).toNat + (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A394123.P3045107283920541873

/-! ## A394123.P1405146128367957636

`A010051(n+1)+A008407(A000142(n))`
-/

namespace A394123.P1405146128367957636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + A008407 (A000142 n).toNat

end

end A394123.P1405146128367957636

/-!
# A394124: G.f. A(x) satisfies A(x)^6-A(x)^5+3x*A(x)^4-x*A(x)^3+3x^2*A(x)^2-x^2*A(x)+x^3=0.

The programs for A394124, there is no canonical definition to state claims against.
-/

/-! ## A394124.P7862608621744649313

`A394118(n)-A350847(A087712(n+1))`
-/

namespace A394124.P7862608621744649313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394118 n - A350847 (A087712 (n + 1)).toNat

end

end A394124.P7862608621744649313

/-! ## A394124.P14007067314920883614

`A394118(n)-A010054(A132606(n+3))`
-/

namespace A394124.P14007067314920883614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394118 n - A010054 (A132606 (n + 3)).toNat

end

end A394124.P14007067314920883614

/-! ## A394124.P18364126754343877359

`A394118(n)-A370813(A069605(2*n+3))`
-/

namespace A394124.P18364126754343877359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394118 n - A370813 (A069605 (2 * n + 3)).toNat

end

end A394124.P18364126754343877359

/-!
# A394125: G.f. A(x) satisfies A(x)^6+A(x)^5-2x*A(x)^4-x*A(x)^3+(x^3+3x^2)*A(x)^2-3x^3*A(x)+x^4=0.

The programs for A394125, there is no canonical definition to state claims against.
-/

/-! ## A394125.P9224674960928682201

`A351596(A176856(n))`
-/

namespace A394125.P9224674960928682201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351596 (A176856 n).toNat

end

end A394125.P9224674960928682201

/-! ## A394125.P18353427324747340784

`A059253(A121545(n)²)`
-/

namespace A394125.P18353427324747340784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (A121545 n ^ 2).toNat

end

end A394125.P18353427324747340784

/-!
# A394127: G.f. A(x) satisfies A(x)^3+(x-2)*A(x)^2+(1-x)*A(x)+x^2-x=0.

The programs for A394127, there is no canonical definition to state claims against.
-/

/-! ## A394127.P10344970723245646419

`A098968(A187255(n))`
-/

namespace A394127.P10344970723245646419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098968 (A187255 n).toNat

end

end A394127.P10344970723245646419

/-! ## A394127.P11271984341242230808

`A111857(Δ[Δ[A231895(n)]])`
-/

namespace A394127.P11271984341242230808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231895 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111857 (f1 (n + 1) - f1 n).toNat

end

end A394127.P11271984341242230808

/-!
# A394128: G.f. A(x) satisfies A(x)^6-3*A(x)^5+(x+3)*A(x)^4-(3x+1)*A(x)^3+(2x^2+2x)*A(x)^2-2x^2*A(x)+x^3=0.

The programs for A394128, there is no canonical definition to state claims against.
-/

/-! ## A394128.P10061932464233401114

`A394118(n)+A350847(A087712(n+1))`
-/

namespace A394128.P10061932464233401114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394118 n + A350847 (A087712 (n + 1)).toNat

end

end A394128.P10061932464233401114

/-! ## A394128.P6278594725103591279

`A394118(n)+A010054(A132606(n+3))`
-/

namespace A394128.P6278594725103591279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394118 n + A010054 (A132606 (n + 3)).toNat

end

end A394128.P6278594725103591279

/-! ## A394128.P16817454064673544497

`A394118(n)+A370813(A069605(2*n+3))`
-/

namespace A394128.P16817454064673544497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394118 n + A370813 (A069605 (2 * n + 3)).toNat

end

end A394128.P16817454064673544497

/-!
# A394129: G.f. A(x) satisfies A(x)^5-A(x)^4+(1-3x)*A(x)^3+x*A(x)^2+(2x^2-x)*A(x)+x^3=0.

The programs for A394129, there is no canonical definition to state claims against.
-/

/-! ## A394129.P3670683907759337413

`A267300(A027118(n))`
-/

namespace A394129.P3670683907759337413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267300 (A027118 n).toNat

end

end A394129.P3670683907759337413

/-! ## A394129.P3764672962940925648

`A197819(A001815(n)+n)`
-/

namespace A394129.P3764672962940925648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197819 (A001815 n + (n : ℤ)).toNat

end

end A394129.P3764672962940925648

/-!
# A394130: G.f. A(x) satisfies A(x)^6-4*A(x)^5+(6x+4)*A(x)^4-(9x+1)*A(x)^3+(5x^2+3x)*A(x)^2-3x^2*A(x)+x^3=0.

The programs for A394130, there is no canonical definition to state claims against.
-/

/-! ## A394130.P1344895939718641770

`A289437(A107104(n)+A007318(n))`
-/

namespace A394130.P1344895939718641770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289437 (A107104 n + A007318 n).toNat

end

end A394130.P1344895939718641770

/-! ## A394130.P15034734426121556608

`A301928(n)-A000086(A325948(n))`
-/

namespace A394130.P15034734426121556608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301928 n - A000086 (A325948 n).toNat

end

end A394130.P15034734426121556608

/-!
# A394131: G.f. A(x) satisfies A(x)^5+A(x)^4+(5x-1)*A(x)^3+x*A(x)^2+(6x^2-x)*A(x)+x^3=0.

The programs for A394131, there is no canonical definition to state claims against.
-/

/-! ## A394131.P12544249524995934284

`A008615(A001931(n+1)+A000045(n))`
-/

namespace A394131.P12544249524995934284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A001931 (n + 1) + A000045 n).toNat

end

end A394131.P12544249524995934284

/-! ## A394131.P7371644353649075122

`A008615(A035517(n)+A001931(n+1))`
-/

namespace A394131.P7371644353649075122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A035517 n + A001931 (n + 1)).toNat

end

end A394131.P7371644353649075122

/-!
# A394132: G.f. A(x) satisfies A(x)^5+(x-2)*A(x)^4+(1-x)*A(x)^3+x*A(x)^2-x*A(x)+x^2=0.

The programs for A394132, there is no canonical definition to state claims against.
-/

/-! ## A394132.P12736001569096788200

`A004526(A042965(n+2)*A080635(n))`
-/

namespace A394132.P12736001569096788200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A042965 (n + 2) * A080635 n).toNat

end

end A394132.P12736001569096788200

/-! ## A394132.P10337749374965226984

`A329144(A016433(n))`
-/

namespace A394132.P10337749374965226984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329144 (A016433 n).toNat

end

end A394132.P10337749374965226984

/-!
# A394133: G.f. A(x) satisfies A(x)^5-2*A(x)^4+(4x+1)*A(x)^3-(3x^2+3x)*A(x)^2+(x^3+3x^2)*A(x)-x^3=0.

The programs for A394133, there is no canonical definition to state claims against.
-/

/-! ## A394133.P14013545051618001770

`A127242(A271753(n+1)+A127238(2*n))`
-/

namespace A394133.P14013545051618001770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127242 (A271753 (n + 1) + A127238 (2 * n)).toNat

end

end A394133.P14013545051618001770

/-!
# A394134: G.f. A(x) satisfies A(x)^5-2A(x)^4+(2x+1)*A(x)^3-4x*A(x)^2+(x^2+x)*A(x)-x^2=0.

The programs for A394134, there is no canonical definition to state claims against.
-/

/-! ## A394134.P2880206541546975712

`A394143(n)-A007814(A153685(n+1))`
-/

namespace A394134.P2880206541546975712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394143 n - A007814 (A153685 (n + 1)).toNat

end

end A394134.P2880206541546975712

/-! ## A394134.P3056336080098455871

`A394143(n)-A124761(A241703(n+1))`
-/

namespace A394134.P3056336080098455871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394143 n - A124761 (A241703 (n + 1)).toNat

end

end A394134.P3056336080098455871

/-!
# A394135: G.f. A(x) satisfies A(x)^4-2*A(x)^3+(1-4x)*A(x)^2-x^2=0.

The programs for A394135, there is no canonical definition to state claims against.
-/

/-! ## A394135.P7770908389132982644

`A008615(A138530(n+5)+A006632(n+1))`
-/

namespace A394135.P7770908389132982644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A138530 (n + 5) + A006632 (n + 1)).toNat

end

end A394135.P7770908389132982644

/-!
# A394136: G.f. A(x) satisfies A(x)^3-2*A(x)^2+A(x)+x^2-x=0.

The programs for A394136, there is no canonical definition to state claims against.
-/

/-! ## A394136.P15464323401647936174

`A300763(A398243(n+2))`
-/

namespace A394136.P15464323401647936174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A398243 (n + 2)).toNat

end

end A394136.P15464323401647936174

/-! ## A394136.P1145077999033346205

`A008651(A150210(n+1))`
-/

namespace A394136.P1145077999033346205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A150210 (n + 1)).toNat

end

end A394136.P1145077999033346205

/-! ## A394136.P10850146362116568262

`A165190(A149466(n+1))`
-/

namespace A394136.P10850146362116568262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A149466 (n + 1)).toNat

end

end A394136.P10850146362116568262

/-!
# A394137: G.f. A(x) satisfies (1-x)*A(x)^3+(3x-2)*A(x)^2+(1-x)*A(x)+x^2-x=0.

The programs for A394137, there is no canonical definition to state claims against.
-/

/-! ## A394137.P1406549655784324800

`A127242(A000302(n)-A004526(n))`
-/

namespace A394137.P1406549655784324800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127242 (A000302 n - A004526 n).toNat

end

end A394137.P1406549655784324800

/-!
# A394138: G.f. A(x) satisfies A(x)^4+(2x-3)*A(x)^3+(3-4x)*A(x)^2+(x-1)*A(x)-x^2+x=0.

The programs for A394138, there is no canonical definition to state claims against.
-/

/-! ## A394138.P9879574978571493477

`A002265(A027710(n)+1)`
-/

namespace A394138.P9879574978571493477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A027710 n + 1).toNat

end

end A394138.P9879574978571493477

/-! ## A394138.P10456870934166344664

`A105512(A006318(n)+A000172(n))`
-/

namespace A394138.P10456870934166344664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105512 (A006318 n + A000172 n).toNat

end

end A394138.P10456870934166344664

/-!
# A394139: G.f. A(x) satisfies (x-1)*A(x)^4+(-2x^2+3x-1)*A(x)^3+(-2x^2+3x)*A(x)^2-3x^2*A(x)+x^3=0.

The programs for A394139, there is no canonical definition to state claims against.
-/

/-! ## A394139.P4465974312939050066

`A316433(A335628(n)+A271513(n))`
-/

namespace A394139.P4465974312939050066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316433 (A335628 n + A271513 n).toNat

end

end A394139.P4465974312939050066

/-! ## A394139.P16200683587914590905

`A373068(A265076(n)+A034444(n+1))`
-/

namespace A394139.P16200683587914590905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373068 (A265076 n + A034444 (n + 1)).toNat

end

end A394139.P16200683587914590905

/-!
# A394140: G.f. A(x) satisfies (x+1)*A(x)^5-x*A(x)^4-(2x^2+x)*A(x)^3+(2x^3+3x^2)*A(x)^2-3x^3*A(x)+x^4=0.

The programs for A394140, there is no canonical definition to state claims against.
-/

/-! ## A394140.P12624398575305093839

`A098968(A000237(n))`
-/

namespace A394140.P12624398575305093839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098968 (A000237 n).toNat

end

end A394140.P12624398575305093839

/-! ## A394140.P15448860153900944551

`row(A025430(A000142(n+2)))`
-/

namespace A394140.P15448860153900944551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A025430 (A000142 (n + 2)).toNat).toNat

end

end A394140.P15448860153900944551

/-!
# A394141: G.f. A(x) satisfies A(x)^5-2*A(x)^4+(2x+1)*A(x)^3-4x*A(x)^2+x*A(x)-x^2=0.

The programs for A394141, there is no canonical definition to state claims against.
-/

/-! ## A394141.P2519555563852663112

`A008676(4*A365879(n))`
-/

namespace A394141.P2519555563852663112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (4 * A365879 n).toNat

end

end A394141.P2519555563852663112

/-! ## A394141.P4239202375065078677

`A002265(A058695(n)+A004187(n))`
-/

namespace A394141.P4239202375065078677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A058695 n + A004187 n).toNat

end

end A394141.P4239202375065078677

/-!
# A394142: G.f. A(x) satisfies (x+1)*A(x)^5-(x+2)*A(x)^4+(2x^2+3x+1)*A(x)^3-(x^2+3x)*A(x)^2+3x^2*A(x)-x^3=0.

The programs for A394142, there is no canonical definition to state claims against.
-/

/-! ## A394142.P1457641034736861268

`Δ[A001462(A275557(n))]`
-/

namespace A394142.P1457641034736861268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A275557 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A394142.P1457641034736861268

/-! ## A394142.P736453375319208288

`A230493(A026375(n+1))`
-/

namespace A394142.P736453375319208288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230493 (A026375 (n + 1)).toNat

end

end A394142.P736453375319208288

/-!
# A394144: G.f. A(x) satisfies (1-x)*A(x)^4+x*A(x)^3+(4x^2-2x)*A(x)^2+x^2*A(x)+x^3=0.

The programs for A394144, there is no canonical definition to state claims against.
-/

/-! ## A394144.P4450174776805122239

`A131146(A181066(n)-A281245(n))`
-/

namespace A394144.P4450174776805122239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131146 (A181066 n - A281245 n).toNat

end

end A394144.P4450174776805122239

/-! ## A394144.P7214563358522170210

`A131146(xor(A181066(n), A281245(n)))`
-/

namespace A394144.P7214563358522170210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131146 (Int.xor (A181066 n) (A281245 n)).toNat

end

end A394144.P7214563358522170210

/-!
# A394145: G.f. A(x) satisfies A(x)^4-2*A(x)^3+x*A(x)^2+x*A(x)-x^2=0.

The programs for A394145, there is no canonical definition to state claims against.
-/

/-! ## A394145.P12273531028395737638

`A394116(n)+A185036(A005043(n))`
-/

namespace A394145.P12273531028395737638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394116 n + A185036 (A005043 n).toNat

end

end A394145.P12273531028395737638

/-! ## A394145.P17730464620234313313

`A394116(n)+A177351(A020079(n))`
-/

namespace A394145.P17730464620234313313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394116 n + A177351 (A020079 n).toNat

end

end A394145.P17730464620234313313

/-! ## A394145.P15248002942038369416

`A394116(n)+A333628(A006261(n))`
-/

namespace A394145.P15248002942038369416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394116 n + A333628 (A006261 n).toNat

end

end A394145.P15248002942038369416

/-!
# A394146: G.f. A(x) satisfies 3*A(x)^3-4*A(x)^2+(2x+1)*A(x)-x=0.

The programs for A394146, there is no canonical definition to state claims against.
-/

/-! ## A394146.P10113968176740955568

`A394130(n)+A359244(A002893(n))`
-/

namespace A394146.P10113968176740955568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394130 n + A359244 (A002893 n).toNat

end

end A394146.P10113968176740955568

/-! ## A394146.P14931686387291439296

`A394157(n)-A379678(A002383(n+1))`
-/

namespace A394146.P14931686387291439296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394157 n - A379678 (A002383 (n + 1)).toNat

end

end A394146.P14931686387291439296

/-!
# A394147: G.f. A(x) satisfies 3*A(x)^3+(6x-2)*A(x)^2+x*A(x)+x^2=0.

The programs for A394147, there is no canonical definition to state claims against.
-/

/-! ## A394147.P6875418741041249423

`A008611(∑[A246563(n)²])`
-/

namespace A394147.P6875418741041249423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246563 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A394147.P6875418741041249423

/-! ## A394147.P17888193615208520411

`A394159(n)+A351357(A003430(n))`
-/

namespace A394147.P17888193615208520411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394159 n + A351357 (A003430 n).toNat

end

end A394147.P17888193615208520411

/-!
# A394148: G.f. A(x) satisfies 3*A(x)^6-7*A(x)^5+(9x+5)*A(x)^4-(11x+1)*A(x)^3+(6x^2+3x)*A(x)^2-3x^2*A(x)+x^3=0.

The programs for A394148, there is no canonical definition to state claims against.
-/

/-! ## A394148.P7249143179261737786

`A067099(A004304(n)*2*(n+2))`
-/

namespace A394148.P7249143179261737786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067099 (A004304 n * (2 * (n + 2) : ℤ)).toNat

end

end A394148.P7249143179261737786

/-! ## A394148.P7578252522337843628

`A029851(n)-A265705(A117515(n))`
-/

namespace A394148.P7578252522337843628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029851 n - A265705 (A117515 n).toNat

end

end A394148.P7578252522337843628

/-!
# A394149: G.f. A(x) satisfies 3*A(x)^6-2*A(x)^5+9x*A(x)^4-3x*A(x)^3+6x^2*A(x)^2-x^2*A(x)+x^3=0.

The programs for A394149, there is no canonical definition to state claims against.
-/

/-! ## A394149.P5855407564905884323

`A394156(n)+A011746(A394167(n))`
-/

namespace A394149.P5855407564905884323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394156 n + A011746 (A394167 n).toNat

end

end A394149.P5855407564905884323

/-! ## A394149.P7835709804808388935

`A394156(n)+A112765(A394186(n))`
-/

namespace A394149.P7835709804808388935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394156 n + A112765 (A394186 n).toNat

end

end A394149.P7835709804808388935

/-!
# A394150: G.f. A(x) satisfies A(x)^6-2*A(x)^5+(6x+1)*A(x)^4-8x*A(x)^3+(9x^2+2x)*A(x)^2-5x^2*A(x)+3x^3=0.

The programs for A394150, there is no canonical definition to state claims against.
-/

/-! ## A394150.P13766446267828917792

`A054404(ceil(sqrt(A379862(n))))`
-/

namespace A394150.P13766446267828917792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 ⌈Real.sqrt (A379862 n : ℝ)⌉.toNat

end

end A394150.P13766446267828917792

/-! ## A394150.P12428813844254901231

`A172476(A101060(∑[n/(and(1, n+1)+1)]+1))`
-/

namespace A394150.P12428813844254901231
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.land 1 (n + 1) + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172476 (A101060 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat).toNat

end

end A394150.P12428813844254901231

/-!
# A394151: G.f. A(x) satisfies A(x)^6-2*A(x)^5+(2x+1)*A(x)^4-3x*A(x)^3+5x^2*A(x)^2-x^2*A(x)+x^3=0.

The programs for A394151, there is no canonical definition to state claims against.
-/

/-! ## A394151.P10924820031661279637

`A194245(A277359(n)+A033148(n))`
-/

namespace A394151.P10924820031661279637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194245 (A277359 n + A033148 n).toNat

end

end A394151.P10924820031661279637

/-! ## A394151.P10921902962009524697

`A134119(A289157(n)+A156181(n))`
-/

namespace A394151.P10921902962009524697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (A289157 n + A156181 n).toNat

end

end A394151.P10921902962009524697

/-!
# A394152: G.f. A(x) satisfies 4*A(x)^4 - 2*A(x)^3 + 5*x*A(x)^2 - x*A(x) + x^2 = 0.

The programs for A394152, there is no canonical definition to state claims against.
-/

/-! ## A394152.P16581247631032467565

`A008624(A391606(n)+A084555(n))`
-/

namespace A394152.P16581247631032467565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A391606 n + A084555 n).toNat

end

end A394152.P16581247631032467565

/-!
# A394153: G.f. A(x) satisfies (1-x)*A(x)^4+(5x-2)*A(x)^3+(1-5x)*A(x)^2+x^2*A(x)-x^2=0.

The programs for A394153, there is no canonical definition to state claims against.
-/

/-! ## A394153.P13939058343796272422

`Δ[A004526(Δ[A261600(n)])]`
-/

namespace A394153.P13939058343796272422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261600 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A394153.P13939058343796272422

/-! ## A394153.P3585430369446880871

`A210357(A003168(n))-A008651(n)`
-/

namespace A394153.P3585430369446880871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A003168 n).toNat - A008651 n

end

end A394153.P3585430369446880871

/-!
# A394154: G.f. A(x) satisfies A(x)^4 + (x-1)*A(x)^3 - x*A(x)^2 + x*A(x) - x^2 = 0.

The programs for A394154, there is no canonical definition to state claims against.
-/

/-! ## A394154.P13140825406982524952

`A071840(record[A372012(n)])`
-/

namespace A394154.P13140825406982524952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071840 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A394154.P13140825406982524952

/-! ## A394154.P18348021121454093515

`A007971(A319585(n+1))`
-/

namespace A394154.P18348021121454093515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007971 (A319585 (n + 1)).toNat

end

end A394154.P18348021121454093515

/-!
# A394156: G.f. A(x) satisfies A(x)^7-2*A(x)^6+(4x+1)*A(x)^5-7x*A(x)^4+(5x^2+2x)*A(x)^3-6x^2*A(x)^2+(x^3+x^2)*A(x)-x^3=0.

The programs for A394156, there is no canonical definition to state claims against.
-/

/-! ## A394156.P14027102251268761236

`A289122(A270919(n))+A231719(n)`
-/

namespace A394156.P14027102251268761236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289122 (A270919 n).toNat + A231719 n

end

end A394156.P14027102251268761236

/-! ## A394156.P12345044552268934484

`A181557(A000142(n))%A056006(n+1)`
-/

namespace A394156.P12345044552268934484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181557 (A000142 n).toNat) (A056006 (n + 1))

end

end A394156.P12345044552268934484

/-!
# A394157: G.f. A(x) satisfies A(x)^7+x*A(x)^6-2x*A(x)^5-x^2*A(x)^4+2x^2*A(x)^3-x^3*A(x)+x^4=0.

The programs for A394157, there is no canonical definition to state claims against.
-/

/-! ## A394157.P9540147526009816404

`n*A117333(A186765(n))`
-/

namespace A394157.P9540147526009816404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A117333 (A186765 n).toNat

end

end A394157.P9540147526009816404

/-! ## A394157.P10506945039128121761

`n*A012257(A306147(n))`
-/

namespace A394157.P10506945039128121761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A012257 (A306147 n).toNat

end

end A394157.P10506945039128121761

/-!
# A394158: G.f. A(x) satisfies A(x)^7-4*A(x)^6+(2x+6)*A(x)^5-(7x+4)*A(x)^4+(3x^2+8x+1)*A(x)^3-(5x^2+3x)*A(x)^2+(x^3+3x^2)*A(x)-x^3=0.

The programs for A394158, there is no canonical definition to state claims against.
-/

/-! ## A394158.P12452836769318364785

`A054404(round(sqrt(A379862(n))))`
-/

namespace A394158.P12452836769318364785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (SequenceMachineLib.roundAway (Real.sqrt (A379862 n : ℝ))).toNat

end

end A394158.P12452836769318364785

/-! ## A394158.P5611469013139314158

`floor(∑[A076194(A026007(n))]/5)`
-/

namespace A394158.P5611469013139314158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076194 (A026007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5⌋

end

end A394158.P5611469013139314158

/-!
# A394159: G.f. A(x) satisfies A(x)^5-4*A(x)^4+(6-2x)*A(x)^3+(3x-4)*A(x)^2+A(x)+x^2-x=0.

The programs for A394159, there is no canonical definition to state claims against.
-/

/-! ## A394159.P12183938656494090319

`A054893(A167999(n+1)+A052329(n+1))`
-/

namespace A394159.P12183938656494090319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054893 (A167999 (n + 1) + A052329 (n + 1)).toNat

end

end A394159.P12183938656494090319

/-! ## A394159.P16913241035919592766

`A002266(2*(n+2))+A002266(A153298(n))`
-/

namespace A394159.P16913241035919592766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (2 * (n + 2)) + A002266 (A153298 n).toNat

end

end A394159.P16913241035919592766

/-!
# A394160: G.f. A(x) satisfies (x-1)*A(x)^5-x*A(x)^4+(-2x^2+2x)*A(x)^3-x^2*A(x)+x^3=0.

The programs for A394160, there is no canonical definition to state claims against.
-/

/-! ## A394160.P3897272420926098211

`xor(A005315(n), A338466(A365525(n)))`
-/

namespace A394160.P3897272420926098211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005315 n) (A338466 (A365525 n).toNat)

end

end A394160.P3897272420926098211

/-! ## A394160.P11098118660216555273

`A191921(A375565(n))`
-/

namespace A394160.P11098118660216555273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191921 (A375565 n).toNat

end

end A394160.P11098118660216555273

/-!
# A394161: G.f. A(x) satisfies A(x)^5-3x*A(x)^3+2x^2*A(x)^2+x^2*A(x)-x^3=0.

The programs for A394161, there is no canonical definition to state claims against.
-/

/-! ## A394161.P10133903898134317068

`A372511((n+1)!)`
-/

namespace A394161.P10133903898134317068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372511 (Nat.factorial (n + 1))

end

end A394161.P10133903898134317068

/-! ## A394161.P18253078525329108251

`A180121(A176856(n))`
-/

namespace A394161.P18253078525329108251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180121 (A176856 n).toNat

end

end A394161.P18253078525329108251

/-!
# A394162: G.f. A(x) satisfies 2*A(x)^4-A(x)^3+4x*A(x)^2-x*A(x)+x^2=0.

The programs for A394162, there is no canonical definition to state claims against.
-/

/-! ## A394162.P17702863796665450040

`A029906(A381024(n+1))`
-/

namespace A394162.P17702863796665450040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029906 (A381024 (n + 1)).toNat

end

end A394162.P17702863796665450040

/-! ## A394162.P4351463260800408817

`A002264(A359916(n+1)+A083026(n+1))`
-/

namespace A394162.P4351463260800408817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A359916 (n + 1) + A083026 (n + 1)).toNat

end

end A394162.P4351463260800408817

/-!
# A394163: G.f. A(x) satisfies A(x)^4-2*A(x)^3+(4x+1)*A(x)^2-3x*A(x)+2x^2=0.

The programs for A394163, there is no canonical definition to state claims against.
-/

/-! ## A394163.P1565624101868534757

`A060715(A005011(n)+char[2^n])`
-/

namespace A394163.P1565624101868534757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A005011 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A394163.P1565624101868534757

/-! ## A394163.P10115030916354625384

`A130942(A165032(n)+A036774(n))`
-/

namespace A394163.P10115030916354625384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130942 (A165032 n + A036774 n).toNat

end

end A394163.P10115030916354625384

/-!
# A394165: Number of binary words x of length n such that for every prefix of length k, the product of j+1 over all positions j where x_j=1 is at most 2^k.

The programs for A394165, there is no canonical definition to state claims against.
-/

/-! ## A394165.P4962353279178207007

`A103128(A063832(n+1)+A000081(n))`
-/

namespace A394165.P4962353279178207007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A063832 (n + 1) + A000081 n).toNat

end

end A394165.P4962353279178207007

/-! ## A394165.P17787585947966038001

`A003059(A027244(n))`
-/

namespace A394165.P17787585947966038001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A027244 n).toNat

end

end A394165.P17787585947966038001

/-! ## A394165.P12617256391839064671

`A083277(A027252(n))`
-/

namespace A394165.P12617256391839064671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (A027252 n).toNat

end

end A394165.P12617256391839064671

/-! ## A394165.P575911906805242546

`A180447(A020730(n))`
-/

namespace A394165.P575911906805242546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (A020730 n).toNat

end

end A394165.P575911906805242546

/-! ## A394165.P17246713669746204024

`A000194(A289245(n))`
-/

namespace A394165.P17246713669746204024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A289245 n).toNat

end

end A394165.P17246713669746204024

/-!
# A394167: a(n) = 1/Product_{i = 1..floor(n/2)} W_i, where W_i is the i-th normalized weight factor for Hermite-Gauss quadrature of degree n, corresponding to the i-th positive abscissa.

The programs for A394167, there is no canonical definition to state claims against.
-/

/-! ## A394167.P14804874866400719329

`n*A396486(a(n-1)²)` with `a(0)=1`
-/

namespace A394167.P14804874866400719329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A396486 (a (n - 1) ^ 2).toNat

end

end A394167.P14804874866400719329

/-! ## A394167.P7279086784884928573

`A064527(A148186(n))`
-/

namespace A394167.P7279086784884928573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064527 (A148186 n).toNat

end

end A394167.P7279086784884928573

/-!
# A394177: Odd k such that there are exactly 2 bases 1 <= b <= k-1 in which k is a strong pseudoprime.

The programs for A394177, there is no canonical definition to state claims against.
-/

/-! ## A394177.P12185867580558557782

`filter[A034298(n+1), A266070(#)]`
-/

namespace A394177.P12185867580558557782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A394177.P12185867580558557782

/-! ## A394177.P6831396364408322302

`filter[A034298(n+2), A000035(#)]`
-/

namespace A394177.P6831396364408322302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034298 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A394177.P6831396364408322302

/-! ## A394177.P5095039773595925043

`filter[A034298(n+2), A374134(#)]`
-/

namespace A394177.P5095039773595925043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034298 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A394177.P5095039773595925043

/-! ## A394177.P4251643858853277383

`filter[A034298(n+2), A374136(#)]`
-/

namespace A394177.P4251643858853277383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034298 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374136 (f1 j).toNat = 1) n)

end

end A394177.P4251643858853277383

/-! ## A394177.P10303610088145838789

`filter[A034298(n+3), A266719(#)]`
-/

namespace A394177.P10303610088145838789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034298 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A394177.P10303610088145838789

/-!
# A394178: Triangle read by rows: T(n, k) is the Frobenius number for n and k if n and k coprime, and 0 otherwise, for 1 <= k <= n.

The programs for A394178, the canonical program `A394178.P8912689448193025780` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394178 has offset 1).

The definition of A394178 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394178.P8912689448193025780

`(A079904(C(row(n)+1, 2)+col(n))-1)*A054521(C(row(n)+1, 2)+col(n)+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A394178

/-- `(A079904(C(row(n)+1, 2)+col(n))-1)*A054521(C(row(n)+1, 2)+col(n)+1)` -/
def P8912689448193025780.Spec : Prop :=
  ∀ n, P8912689448193025780.a n = A394178 (n + 1)

theorem P8912689448193025780.correct : P8912689448193025780.Spec := by
  intro n
  simp only [A394178, Nat.add_sub_cancel]

end A394178

/-! ## A394178.P7172377896833367133

`A054521(n+1)*A144204(n+1)`
-/

namespace A394178.P7172377896833367133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A144204 (n + 1)

end

end A394178.P7172377896833367133

namespace A394178

/-- `A054521(n+1)*A144204(n+1)` -/
def P7172377896833367133.Spec : Prop :=
  ∀ n, P7172377896833367133.a n = A394178 (n + 1)

end A394178

/-!
# A394180: Number of Dyck paths of semilength n such that the first peak at level y > 1 is preceded by exactly one peak at level y-1.

The programs for A394180, there is no canonical definition to state claims against.
-/

/-! ## A394180.P10472353220222335641

`A316784(3^n)`
-/

namespace A394180.P10472353220222335641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316784 (3 ^ n)

end

end A394180.P10472353220222335641

/-! ## A394180.P17599345822489716109

`A226763(A025566(n))`
-/

namespace A394180.P17599345822489716109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226763 (A025566 n).toNat

end

end A394180.P17599345822489716109

/-! ## A394180.P651647787000007082

`A357862(A073431(n))`
-/

namespace A394180.P651647787000007082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357862 (A073431 n).toNat

end

end A394180.P651647787000007082

/-! ## A394180.P673880129484935083

`A279367(A192805(n))`
-/

namespace A394180.P673880129484935083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279367 (A192805 n).toNat

end

end A394180.P673880129484935083

/-! ## A394180.P12402996835897828236

`A368887(A122889(n))`
-/

namespace A394180.P12402996835897828236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368887 (A122889 n).toNat

end

end A394180.P12402996835897828236

/-!
# A394182: Odd k such that there are exactly 2 bases 1 <= b <= k-1 in which k is an Euler-Jacobi pseudoprime.

The programs for A394182, there is no canonical definition to state claims against.
-/

/-! ## A394182.P15526795991946272386

`∩[A258022(n+1), A394177(n+1)]`
-/

namespace A394182.P15526795991946272386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394182.P15526795991946272386

/-! ## A394182.P18415843082820933799

`∩[A193533(n+1), A394177(n+1)]`
-/

namespace A394182.P18415843082820933799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394182.P18415843082820933799

/-! ## A394182.P7165249526716769057

`∩[A351290(n+1), A394177(n+1)]`
-/

namespace A394182.P7165249526716769057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394182.P7165249526716769057

/-! ## A394182.P16349849551852377043

`A394177(A077168(n)+A037808(n+4))`
-/

namespace A394182.P16349849551852377043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394177 (A077168 n + A037808 (n + 4)).toNat

end

end A394182.P16349849551852377043

/-! ## A394182.P11125941711656997857

`∩[A335469(n+1), A394177(n+1)]`
-/

namespace A394182.P11125941711656997857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394182.P11125941711656997857

/-!
# A394184: Number of primitive tessellations of paths of length n in the square lattice, reduced for symmetry (with rotations, reflections, and translations not counted as distinct).

The programs for A394184, there is no canonical definition to state claims against.
-/

/-! ## A394184.P7807933196343926219

`A005848(A286110(n+3))`
-/

namespace A394184.P7807933196343926219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005848 (A286110 (n + 3)).toNat

end

end A394184.P7807933196343926219

/-!
# A394185: a(n) = n^3/6 + 3*n^2 + 41*n/6 + 3.

The programs for A394185, the canonical program `A394185.P5619514107203186845` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394185 has offset 0).

The definition of A394185 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A394185.anchor (n : ℕ) : (A394185 n : ℚ) = (n ^ 3 : ℚ) / 6 + (3 * n ^ 2 : ℚ) + (41 * n : ℚ) / 6 + 3` in `Proof.A394.A394185`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394185.P5619514107203186845

`n^3/6+3*n²+41*n/6+3`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394185

/-- `n^3/6+3*n²+41*n/6+3` -/
def P5619514107203186845.Spec : Prop :=
  ∀ n, P5619514107203186845.a n = (A394185 n : ℚ)

end A394185

/-! ## A394185.P12881899360125572249

`∑[record[xor(3, n+1)]+∑[n+1]]`
-/

namespace A394185.P12881899360125572249
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394185.P12881899360125572249

namespace A394185

/-- `∑[record[xor(3, n+1)]+∑[n+1]]` -/
def P12881899360125572249.Spec : Prop :=
  ∀ n, (P12881899360125572249.a n : ℤ) = A394185 n

end A394185

/-! ## A394185.P13888268033265589056

`∑[5+n]-1-floor(-a(n-1))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A394185.P13888268033265589056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 + n

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - (-a (n - 1))

end

end A394185.P13888268033265589056

namespace A394185

/-- `∑[5+n]-1-floor(-a(n-1))` -/
def P13888268033265589056.Spec : Prop :=
  ∀ n, P13888268033265589056.a n = A394185 n

end A394185

/-! ## A394185.P12944882637081214168

`(n+2)*(C(n+3, 3)/(n+2)+2*n+1)`
-/

namespace A394185.P12944882637081214168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((Nat.choose (n + 3) 3 : ℚ) / (n + 2 : ℚ) + (2 * n + 1 : ℚ))

end

end A394185.P12944882637081214168

namespace A394185

/-- `(n+2)*(C(n+3, 3)/(n+2)+2*n+1)` -/
def P12944882637081214168.Spec : Prop :=
  ∀ n, P12944882637081214168.a n = (A394185 n : ℚ)

end A394185

/-! ## A394185.P16355690490786873344

`abs(A000217(n+2)-A096957(n))`
-/

namespace A394185.P16355690490786873344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 (n + 2) - A096957 n|

end

end A394185.P16355690490786873344

namespace A394185

/-- `abs(A000217(n+2)-A096957(n))` -/
def P16355690490786873344.Spec : Prop :=
  ∀ n, P16355690490786873344.a n = A394185 n

end A394185

/-! ## A394185.P18014160938177716106

`∑[A087156(n+1)+∑[A009005(n+1)]]`
-/

namespace A394185.P18014160938177716106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394185.P18014160938177716106

namespace A394185

/-- `∑[A087156(n+1)+∑[A009005(n+1)]]` -/
def P18014160938177716106.Spec : Prop :=
  ∀ n, P18014160938177716106.a n = A394185 n

end A394185

/-! ## A394185.P6931606978358273537

`∑[A065475(3*n+1)+∑[n+2]]`
-/

namespace A394185.P6931606978358273537
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (3 * n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394185.P6931606978358273537

namespace A394185

/-- `∑[A065475(3*n+1)+∑[n+2]]` -/
def P6931606978358273537.Spec : Prop :=
  ∀ n, P6931606978358273537.a n = A394185 n

end A394185

/-!
# A394186: a(n) = Sum_{k=0..n} binomial(n+k,2*k) * (binomial(n+2*k,k) - binomial(n+2*k,k-1)).

The programs for A394186, the canonical program `A394186.P3706441358124203491` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394186 has offset 0).

The definition of A394186 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394186.P7010794622142761872

`A243116(n)-A397383(n)`
-/

namespace A394186.P7010794622142761872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243116 n - A397383 n

end

end A394186.P7010794622142761872

namespace A394186

/-- `A243116(n)-A397383(n)` -/
def P7010794622142761872.Spec : Prop :=
  ∀ n, P7010794622142761872.a n = A394186 n

end A394186

/-! ## A394186.P3706441358124203491

`A071945(C(2*n+1, 2)+n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A394186

/-- `A071945(C(2*n+1, 2)+n)` -/
def P3706441358124203491.Spec : Prop :=
  ∀ n, P3706441358124203491.a n = A394186 n

theorem P3706441358124203491.correct : P3706441358124203491.Spec := by
  intro n
  simp only [A394186]

end A394186

/-! ## A394186.P10804932237846206600

`A071945(∑[4*n])`
-/

namespace A394186.P10804932237846206600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071945 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A394186.P10804932237846206600

namespace A394186

/-- `A071945(∑[4*n])` -/
def P10804932237846206600.Spec : Prop :=
  ∀ n, P10804932237846206600.a n = A394186 n

end A394186

/-!
# A394187: Triangle T(n,k), n >= 1, 1 <= k <= A003056(n), read by rows, where T(n,k) is the number of rectangular plane partitions of n with exactly k rows and with rows and columns strictly decreasing.

The programs for A394187, there is no canonical definition to state claims against.
-/

/-! ## A394187.P13976512883929832756

`A097944(A177250(n+1))`
-/

namespace A394187.P13976512883929832756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097944 (A177250 (n + 1)).toNat

end

end A394187.P13976512883929832756

/-! ## A394187.P15940045203704002329

`A280521(A235791(n+1)^A132272(3*n))`
-/

namespace A394187.P15940045203704002329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280521 (SequenceMachineLib.roundAway ((A235791 (n + 1) : ℚ) ^ (A132272 (3 * n) : ℤ))).toNat

end

end A394187.P15940045203704002329

/-! ## A394187.P2293152594555561397

`A110631(A014146(n))`
-/

namespace A394187.P2293152594555561397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110631 (A014146 n).toNat

end

end A394187.P2293152594555561397

/-! ## A394187.P14997943128146515230

`A322588(∑{e}[A116985(n+1), #])`
-/

namespace A394187.P14997943128146515230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322588 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A394187.P14997943128146515230

/-! ## A394187.P4214516012864081382

`A134024(A134024(n)+A001333(n))`
-/

namespace A394187.P4214516012864081382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134024 (A134024 n + A001333 n).toNat

end

end A394187.P4214516012864081382

/-!
# A394188: Number of partitions of n such that (number of distinct parts) <= minimal multiplicity of the parts.

The programs for A394188, there is no canonical definition to state claims against.
-/

/-! ## A394188.P13564680885634559713

`A394189(n)+A239966(n)`
-/

namespace A394188.P13564680885634559713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394189 n + A239966 n

end

end A394188.P13564680885634559713

/-! ## A394188.P16016692877999792659

`A342219(A237125(n+1))`
-/

namespace A394188.P16016692877999792659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342219 (A237125 (n + 1)).toNat

end

end A394188.P16016692877999792659

/-! ## A394188.P6769118214046084681

`A318287(A319975(n+2))`
-/

namespace A394188.P6769118214046084681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318287 (A319975 (n + 2)).toNat

end

end A394188.P6769118214046084681

/-! ## A394188.P3475511753587438572

`A007690(n)%A220913(n)+1`
-/

namespace A394188.P3475511753587438572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007690 n) (A220913 n) + 1

end

end A394188.P3475511753587438572

/-! ## A394188.P3518466631235705725

`A007690(n)+char[A332294(n+1)]`
-/

namespace A394188.P3518466631235705725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332294 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007690 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A394188.P3518466631235705725

/-!
# A394189: Number of partitions of n such that (number of distinct parts) < minimal multiplicity of the parts.

The programs for A394189, there is no canonical definition to state claims against.
-/

/-! ## A394189.P973573289891794180

`A394188(n)-A239966(n)`
-/

namespace A394189.P973573289891794180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394188 n - A239966 n

end

end A394189.P973573289891794180

/-! ## A394189.P13761274542784314310

`A124765(A052923(n))`
-/

namespace A394189.P13761274542784314310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A052923 n).toNat

end

end A394189.P13761274542784314310

/-! ## A394189.P12142474991176517819

`A062756(A242505(n+7))`
-/

namespace A394189.P12142474991176517819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A242505 (n + 7)).toNat

end

end A394189.P12142474991176517819

/-! ## A394189.P5723492017906455673

`A107951(A147995(3*n))%(n+2)`
-/

namespace A394189.P5723492017906455673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107951 (A147995 (3 * n)).toNat) (n + 2 : ℤ)

end

end A394189.P5723492017906455673

/-! ## A394189.P4073816807277723653

`A017879(n)+A001221(A261547(n))`
-/

namespace A394189.P4073816807277723653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017879 n + A001221 (A261547 n).toNat

end

end A394189.P4073816807277723653

/-!
# A394192: a(n) = n^3 - n^2 + 5*n + 2.

The programs for A394192, the canonical program `A394192.P9267180659231015820` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394192 has offset 0).

The definition of A394192 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3-n²+5*n+2` (program `A394192.P9267180659231015820`, by `A394192.P9267180659231015820.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A394192.P10039327950935959151

`ogf((2-x+5x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A394192.P10039327950935959151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, 0, 5] [1, -4, 6, -4, 1] n

end

end A394192.P10039327950935959151

namespace A394192

/-- `ogf((2-x+5x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P10039327950935959151.Spec : Prop :=
  ∀ n, P10039327950935959151.a n = A394192 n

end A394192

/-! ## A394192.P9267180659231015820

`n^3-n²+5*n+2`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A394192

/-- `n^3-n²+5*n+2` -/
def P9267180659231015820.Spec : Prop :=
  ∀ n, P9267180659231015820.a n = A394192 n

theorem P9267180659231015820.correct : P9267180659231015820.Spec := by
  intro n
  simp only [A394192]

end A394192

/-! ## A394192.P1399920539724385222

`∑[∑[a(n-1)+6]]` with `a(0)=2, a(1)=3, a(2)=4`
-/

namespace A394192.P1399920539724385222
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394192.P1399920539724385222

namespace A394192

/-- `∑[∑[a(n-1)+6]]` -/
def P1399920539724385222.Spec : Prop :=
  ∀ n, (P1399920539724385222.a n : ℤ) = A394192 n

end A394192

/-! ## A394192.P4081718840359332354

`(A062159(n)+A059826(n+1))/A002061(n+1)`
-/

namespace A394192.P4081718840359332354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062159 n + A059826 (n + 1) : ℚ) / (A002061 (n + 1) : ℚ)

end

end A394192.P4081718840359332354

namespace A394192

/-- `(A062159(n)+A059826(n+1))/A002061(n+1)` -/
def P4081718840359332354.Spec : Prop :=
  ∀ n, P4081718840359332354.a n = (A394192 n : ℚ)

end A394192

/-!
# A394199: Expansion of Product_{k>=1} (1 + x^(k*(k+3)/2)) / (1 - x^(k*(k+3)/2)).

The programs for A394199, there is no canonical definition to state claims against.
-/

/-! ## A394199.P11223251440397760401

`A040001(A001787(n))*A143619(n+2)`
-/

namespace A394199.P11223251440397760401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A001787 n).toNat * A143619 (n + 2)

end

end A394199.P11223251440397760401

