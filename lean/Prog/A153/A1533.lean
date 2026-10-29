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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
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
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A153300: Coefficient of x^(4n)/(4n)! in the Maclaurin expansion of cm4(x), which is a generalization of the Dixon elliptic function cm(x,0) defined by A104134.

The programs for A153300, there is no canonical definition to state claims against.
-/

/-! ## A153300.P10265982399182708935

`A357801(∑[n])`
-/

namespace A153300.P10265982399182708935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357801 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153300.P10265982399182708935

/-! ## A153300.P3421019905773164598

`A357802(∑[n]+n)`
-/

namespace A153300.P3421019905773164598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357802 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A153300.P3421019905773164598

/-! ## A153300.P16967729045515550183

`A357801(A357779(n+1))%A357760(2*n+1)`
-/

namespace A153300.P16967729045515550183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357801 (A357779 (n + 1)).toNat) (A357760 (2 * n + 1))

end

end A153300.P16967729045515550183

/-!
# A153301: Coefficient of x^(4n+1)/(4n+1)! in the Maclaurin expansion of sm4(x), which is a generalization of the Dixon elliptic function sm(x,0) defined by A104133.

The programs for A153301, there is no canonical definition to state claims against.
-/

/-! ## A153301.P13630365243696219783

`A357800(∑[n])`
-/

namespace A153301.P13630365243696219783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357800 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153301.P13630365243696219783

/-! ## A153301.P4051963554586251082

`record[gcd(A357542(n), A357800(n))]`
-/

namespace A153301.P4051963554586251082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A357542 n) (A357800 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153301.P4051963554586251082

/-! ## A153301.P6088879630129440760

`A357800(A357779(n+1))%A357760(2*n+1)`
-/

namespace A153301.P6088879630129440760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357800 (A357779 (n + 1)).toNat) (A357760 (2 * n + 1))

end

end A153301.P6088879630129440760

/-!
# A153302: G.f.: A(x) = cm4(x)^2 + sm4(x)^2 where cm4(x) and sm4(x) are the g.f.s of A153300 and A153301, respectively, that satisfy cm4(x)^4 - sm4(x)^4 = 1.

The programs for A153302, there is no canonical definition to state claims against.
-/

/-! ## A153302.P7174741655632001681

`2^n*A286306(n)`
-/

namespace A153302.P7174741655632001681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A286306 n

end

end A153302.P7174741655632001681

/-! ## A153302.P10514786703795479180

`lcm(A000079(n), A193541(n))`
-/

namespace A153302.P10514786703795479180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A193541 n)

end

end A153302.P10514786703795479180

/-! ## A153302.P7606830478038156951

`abs(A000079(n)*A193544(n))`
-/

namespace A153302.P7606830478038156951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n * A193544 n|

end

end A153302.P7606830478038156951

/-! ## A153302.P8067006678030273574

`lcm(∑[A011782(n)], A193544(n))`
-/

namespace A153302.P8067006678030273574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A193544 n)

end

end A153302.P8067006678030273574

/-! ## A153302.P18237442321798497942

`lcm(2^n, A159600(n))`
-/

namespace A153302.P18237442321798497942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A159600 n)

end

end A153302.P18237442321798497942

/-!
# A153303: G.f.: cm4(x)^4 = Sum_{n>=0} a(n)*x^(4n)/(4n)!, where cm4(x) is defined by A153300.

The programs for A153303, there is no canonical definition to state claims against.
-/

/-! ## A153303.P431734815469148900

`record[lcm(A011782(n), A104203(n+1))]`
-/

namespace A153303.P431734815469148900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011782 n) (A104203 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153303.P431734815469148900

/-!
# A153304: G.f. satisfies: A(x) = x + 2*A(x)^2 + 3*A(x)*A(A(x))^2 + 4*A(x)*A(A(x))*A(A(A(x)))^2 +...

The programs for A153304, there is no canonical definition to state claims against.
-/

/-! ## A153304.P18039395313232672853

`A207890(A074141(n))`
-/

namespace A153304.P18039395313232672853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207890 (A074141 n).toNat

end

end A153304.P18039395313232672853

/-!
# A153305: G.f. satisfies: A(x) = x + 3*x*A(x) + 6*x*A(x)*A(A(x)) + 10*x*A(x)*A(A(x))*A(A(A(x))) +...

The programs for A153305, there is no canonical definition to state claims against.
-/

/-! ## A153305.P10813516875941709148

`or(n!², A138311(∏[Δ[n²]]))`
-/

namespace A153305.P10813516875941709148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.factorial n ^ 2 : ℤ) (A138311 (∏ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A153305.P10813516875941709148

/-!
# A153307: Numbers k such that 14*k+3 is not prime.

The programs for A153307, the canonical program `A153307.P790128835309383341` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153307 has offset 1).

The definition of A153307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153307.P790128835309383341

`comp[A090614(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A153307

/-- `comp[A090614(n+1)]` -/
def P790128835309383341.Spec : Prop :=
  ∀ n, (P790128835309383341.a n : ℤ) = A153307 (n + 1)

theorem P790128835309383341.correct : P790128835309383341.Spec := by
  intro n
  simp only [A153307, Nat.add_sub_cancel]

end A153307

/-! ## A153307.P6988443223730643094

`comp[floor(A024903(n+1)/2)]`
-/

namespace A153307.P6988443223730643094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024903 (n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153307.P6988443223730643094

namespace A153307

/-- `comp[floor(A024903(n+1)/2)]` -/
def P6988443223730643094.Spec : Prop :=
  ∀ n, (P6988443223730643094.a n : ℤ) = A153307 (n + 1)

end A153307

/-! ## A153307.P13357076314620755149

`comp[floor(A089033(-xor(n, -1))/2)]`
-/

namespace A153307.P13357076314620755149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A089033 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153307.P13357076314620755149

namespace A153307

/-- `comp[floor(A089033(-xor(n, -1))/2)]` -/
def P13357076314620755149.Spec : Prop :=
  ∀ n, (P13357076314620755149.a n : ℤ) = A153307 (n + 1)

end A153307

/-! ## A153307.P6898324028579287156

`eq[1, A156707(7*n+1)+1]`
-/

namespace A153307.P6898324028579287156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156707 (7 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153307.P6898324028579287156

namespace A153307

/-- `eq[1, A156707(7*n+1)+1]` -/
def P6898324028579287156.Spec : Prop :=
  ∀ n, (P6898324028579287156.a n : ℤ) = A153307 (n + 1)

end A153307

/-! ## A153307.P5741957204014816892

`lt[1, A001222(2*(7*n+1)+1)]`
-/

namespace A153307.P5741957204014816892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (7 * n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153307.P5741957204014816892

namespace A153307

/-- `lt[1, A001222(2*(7*n+1)+1)]` -/
def P5741957204014816892.Spec : Prop :=
  ∀ n, (P5741957204014816892.a n : ℤ) = A153307 (n + 1)

end A153307

/-! ## A153307.P9457516482647246425

`lt[2, A000005(2*(7*n+1)+1)]`
-/

namespace A153307.P9457516482647246425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (7 * n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153307.P9457516482647246425

namespace A153307

/-- `lt[2, A000005(2*(7*n+1)+1)]` -/
def P9457516482647246425.Spec : Prop :=
  ∀ n, (P9457516482647246425.a n : ℤ) = A153307 (n + 1)

end A153307

/-! ## A153307.P17024488243029155662

`lt[A020639(2*7*n+3), n+2]`
-/

namespace A153307.P17024488243029155662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (7 * n) + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153307.P17024488243029155662

namespace A153307

/-- `lt[A020639(2*7*n+3), n+2]` -/
def P17024488243029155662.Spec : Prop :=
  ∀ n, (P17024488243029155662.a n : ℤ) = A153307 (n + 1)

end A153307

/-! ## A153307.P17158702213689151984

`eq[0, A101264(A016993(n))]`
-/

namespace A153307.P17158702213689151984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A016993 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153307.P17158702213689151984

namespace A153307

/-- `eq[0, A101264(A016993(n))]` -/
def P17158702213689151984.Spec : Prop :=
  ∀ n, (P17158702213689151984.a n : ℤ) = A153307 (n + 1)

end A153307

/-! ## A153307.P6458482821444299171

`lt[9, A306645(A000005(14*n+3)+1)]`
-/

namespace A153307.P6458482821444299171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306645 (A000005 (14 * n + 3) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153307.P6458482821444299171

namespace A153307

/-- `lt[9, A306645(A000005(14*n+3)+1)]` -/
def P6458482821444299171.Spec : Prop :=
  ∀ n, (P6458482821444299171.a n : ℤ) = A153307 (n + 1)

end A153307

/-! ## A153307.P1421753767892548240

`eq[1, A282194(A008589(n))]`
-/

namespace A153307.P1421753767892548240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282194 (A008589 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153307.P1421753767892548240

namespace A153307

/-- `eq[1, A282194(A008589(n))]` -/
def P1421753767892548240.Spec : Prop :=
  ∀ n, (P1421753767892548240.a n : ℤ) = A153307 (n + 1)

end A153307

/-! ## A153307.P1457747240291643679

`lt[A014963(14*n+3), n]`
-/

namespace A153307.P1457747240291643679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (14 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153307.P1457747240291643679

namespace A153307

/-- `lt[A014963(14*n+3), n]` -/
def P1457747240291643679.Spec : Prop :=
  ∀ n, (P1457747240291643679.a n : ℤ) = A153307 (n + 1)

end A153307

/-! ## A153307.P3333199763287412019

`eq[1, A245509(2*(7*n+1))]`
-/

namespace A153307.P3333199763287412019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245509 (2 * (7 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153307.P3333199763287412019

namespace A153307

/-- `eq[1, A245509(2*(7*n+1))]` -/
def P3333199763287412019.Spec : Prop :=
  ∀ n, (P3333199763287412019.a n : ℤ) = A153307 (n + 1)

end A153307

/-! ## A153307.P15039540408876762912

`A008617(A140380(n+1))`
-/

namespace A153307.P15039540408876762912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A140380 (n + 1)).toNat

end

end A153307.P15039540408876762912

namespace A153307

/-- `A008617(A140380(n+1))` -/
def P15039540408876762912.Spec : Prop :=
  ∀ n, P15039540408876762912.a n = A153307 (n + 1)

end A153307

/-! ## A153307.P8172635337393419238

`eq[A061006(2*(n+1)), A061006(A017017(2*n))]`
-/

namespace A153307.P8172635337393419238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061006 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061006 (A017017 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153307.P8172635337393419238

namespace A153307

/-- `eq[A061006(2*(n+1)), A061006(A017017(2*n))]` -/
def P8172635337393419238.Spec : Prop :=
  ∀ n, (P8172635337393419238.a n : ℤ) = A153307 (n + 1)

end A153307

/-!
# A153308: Numbers k such that 10*k+7 is not prime.

The programs for A153308, the canonical program `A153308.P18325032581413547276` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153308 has offset 1).

The definition of A153308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153308.P18325032581413547276

`comp[A102342(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153308

/-- `comp[A102342(n+1)]` -/
def P18325032581413547276.Spec : Prop :=
  ∀ n, (P18325032581413547276.a n : ℤ) = A153308 (n + 1)

theorem P18325032581413547276.correct : P18325032581413547276.Spec := by
  intro n
  simp only [A153308, Nat.add_sub_cancel]

end A153308

/-! ## A153308.P12608763847475615283

`comp[A024914(n+1)-1]`
-/

namespace A153308.P12608763847475615283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024914 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153308.P12608763847475615283

namespace A153308

/-- `comp[A024914(n+1)-1]` -/
def P12608763847475615283.Spec : Prop :=
  ∀ n, (P12608763847475615283.a n : ℤ) = A153308 (n + 1)

end A153308

/-! ## A153308.P14663375940316184971

`lt[1, A001222(10*n+7)]`
-/

namespace A153308.P14663375940316184971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153308.P14663375940316184971

namespace A153308

/-- `lt[1, A001222(10*n+7)]` -/
def P14663375940316184971.Spec : Prop :=
  ∀ n, (P14663375940316184971.a n : ℤ) = A153308 (n + 1)

end A153308

/-! ## A153308.P16901829684120351741

`lt[2, A000005(10*n+7)]`
-/

namespace A153308.P16901829684120351741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153308.P16901829684120351741

namespace A153308

/-- `lt[2, A000005(10*n+7)]` -/
def P16901829684120351741.Spec : Prop :=
  ∀ n, (P16901829684120351741.a n : ℤ) = A153308 (n + 1)

end A153308

/-! ## A153308.P8799363482791592812

`lt[A020639(10*n+7), n+2]`
-/

namespace A153308.P8799363482791592812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (10 * n + 7)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153308.P8799363482791592812

namespace A153308

/-- `lt[A020639(10*n+7), n+2]` -/
def P8799363482791592812.Spec : Prop :=
  ∀ n, (P8799363482791592812.a n : ℤ) = A153308 (n + 1)

end A153308

/-! ## A153308.P14641994232994689142

`lt[A006530(10*n+7), A016873(n)]`
-/

namespace A153308.P14641994232994689142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (10 * n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153308.P14641994232994689142

namespace A153308

/-- `lt[A006530(10*n+7), A016873(n)]` -/
def P14641994232994689142.Spec : Prop :=
  ∀ n, (P14641994232994689142.a n : ℤ) = A153308 (n + 1)

end A153308

/-! ## A153308.P1277413731405079727

`lt[A006530(10*n+7), A063226(n+2)]`
-/

namespace A153308.P1277413731405079727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (10 * n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153308.P1277413731405079727

namespace A153308

/-- `lt[A006530(10*n+7), A063226(n+2)]` -/
def P1277413731405079727.Spec : Prop :=
  ∀ n, (P1277413731405079727.a n : ℤ) = A153308 (n + 1)

end A153308

/-! ## A153308.P8782701175908712813

`eq[1, A005171(A017341(n)+1)]`
-/

namespace A153308.P8782701175908712813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A017341 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153308.P8782701175908712813

namespace A153308

/-- `eq[1, A005171(A017341(n)+1)]` -/
def P8782701175908712813.Spec : Prop :=
  ∀ n, (P8782701175908712813.a n : ℤ) = A153308 (n + 1)

end A153308

/-! ## A153308.P10701384095139048478

`eq[0, A092953(10*n+5)]`
-/

namespace A153308.P10701384095139048478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092953 (10 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153308.P10701384095139048478

namespace A153308

/-- `eq[0, A092953(10*n+5)]` -/
def P10701384095139048478.Spec : Prop :=
  ∀ n, (P10701384095139048478.a n : ℤ) = A153308 (n + 1)

end A153308

/-! ## A153308.P17089052251038860192

`lt[A014963(10*n+7), n+2]`
-/

namespace A153308.P17089052251038860192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * n + 7)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153308.P17089052251038860192

namespace A153308

/-- `lt[A014963(10*n+7), n+2]` -/
def P17089052251038860192.Spec : Prop :=
  ∀ n, (P17089052251038860192.a n : ℤ) = A153308 (n + 1)

end A153308

/-! ## A153308.P6870799751764803130

`A059995(A053180(n+1))`
-/

namespace A153308.P6870799751764803130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A053180 (n + 1)).toNat

end

end A153308.P6870799751764803130

namespace A153308

/-- `A059995(A053180(n+1))` -/
def P6870799751764803130.Spec : Prop :=
  ∀ n, P6870799751764803130.a n = A153308 (n + 1)

end A153308

/-! ## A153308.P7712075916063795175

`lt[A049084(A017377(n)-2), 1]`
-/

namespace A153308.P7712075916063795175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A017377 n - 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153308.P7712075916063795175

namespace A153308

/-- `lt[A049084(A017377(n)-2), 1]` -/
def P7712075916063795175.Spec : Prop :=
  ∀ n, (P7712075916063795175.a n : ℤ) = A153308 (n + 1)

end A153308

/-! ## A153308.P14738033147474528347

`lt[A105052(n), xor(2, A105052(n))]`
-/

namespace A153308.P14738033147474528347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A105052 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153308.P14738033147474528347

namespace A153308

/-- `lt[A105052(n), xor(2, A105052(n))]` -/
def P14738033147474528347.Spec : Prop :=
  ∀ n, (P14738033147474528347.a n : ℤ) = A153308 (n + 1)

end A153308

/-! ## A153308.P16252243119053209116

`eq[0, A008683(A173275(A105052(n)+1)-2)]`
-/

namespace A153308.P16252243119053209116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A173275 (A105052 n + 1).toNat - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153308.P16252243119053209116

namespace A153308

/-- `eq[0, A008683(A173275(A105052(n)+1)-2)]` -/
def P16252243119053209116.Spec : Prop :=
  ∀ n, (P16252243119053209116.a n : ℤ) = A153308 (n + 1)

end A153308

/-!
# A153309: Numbers k such that 3*k + 1 is not prime.

The programs for A153309, the canonical program `A153309.P14599462344025828023` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153309 has offset 1).

The definition of A153309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153309.P149062118920496653

`comp[A024892(n+1)]`
-/

namespace A153309.P149062118920496653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153309.P149062118920496653

namespace A153309

/-- `comp[A024892(n+1)]` -/
def P149062118920496653.Spec : Prop :=
  ∀ n, (P149062118920496653.a n : ℤ) = A153309 (n + 1)

end A153309

/-! ## A153309.P14599462344025828023

`A153184(n+1)-1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A153309

/-- `A153184(n+1)-1` -/
def P14599462344025828023.Spec : Prop :=
  ∀ n, P14599462344025828023.a n = A153309 (n + 1)

theorem P14599462344025828023.correct : P14599462344025828023.Spec := by
  intro n
  simp only [A153309, Nat.add_sub_cancel]

end A153309

/-! ## A153309.P17280507863773256259

`comp[A034936(n+1)+1]`
-/

namespace A153309.P17280507863773256259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153309.P17280507863773256259

namespace A153309

/-- `comp[A034936(n+1)+1]` -/
def P17280507863773256259.Spec : Prop :=
  ∀ n, (P17280507863773256259.a n : ℤ) = A153309 (n + 1)

end A153309

/-! ## A153309.P5418597683723633121

`comp[A089953(n+1)+2]`
-/

namespace A153309.P5418597683723633121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089953 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153309.P5418597683723633121

namespace A153309

/-- `comp[A089953(n+1)+2]` -/
def P5418597683723633121.Spec : Prop :=
  ∀ n, (P5418597683723633121.a n : ℤ) = A153309 (n + 1)

end A153309

/-! ## A153309.P905678621521843737

`comp[2*A024899(n+1)]`
-/

namespace A153309.P905678621521843737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153309.P905678621521843737

namespace A153309

/-- `comp[2*A024899(n+1)]` -/
def P905678621521843737.Spec : Prop :=
  ∀ n, (P905678621521843737.a n : ℤ) = A153309 (n + 1)

end A153309

/-! ## A153309.P13527425703351321715

`(A291745(n+1)-1)/3`
-/

namespace A153309.P13527425703351321715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291745 (n + 1) - 1 : ℚ) / 3

end

end A153309.P13527425703351321715

namespace A153309

/-- `(A291745(n+1)-1)/3` -/
def P13527425703351321715.Spec : Prop :=
  ∀ n, P13527425703351321715.a n = (A153309 (n + 1) : ℚ)

theorem P13527425703351321715.correct : P13527425703351321715.Spec := by
  intro n
  simp only [A153309, Nat.add_sub_cancel, A153309.P13527425703351321715.a, A153309.P14599462344025828023.a, A153184, A153184.P14178844453753704744.f1, A153184.P14178844453753704744.f2, A153184.P14178844453753704744.a, A291745, A291745.P5987512559705855144.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A153309

/-! ## A153309.P17567324124842792302

`eq[0, A010051(3*n+1)]`
-/

namespace A153309.P17567324124842792302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153309.P17567324124842792302

namespace A153309

/-- `eq[0, A010051(3*n+1)]` -/
def P17567324124842792302.Spec : Prop :=
  ∀ n, (P17567324124842792302.a n : ℤ) = A153309 (n + 1)

end A153309

/-! ## A153309.P7983189894391458009

`eq[0, A029832(3*n+1)]`
-/

namespace A153309.P7983189894391458009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029832 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153309.P7983189894391458009

namespace A153309

/-- `eq[0, A029832(3*n+1)]` -/
def P7983189894391458009.Spec : Prop :=
  ∀ n, (P7983189894391458009.a n : ℤ) = A153309 (n + 1)

end A153309

/-! ## A153309.P9312151475818275708

`eq[0, A029833(3*n+1)]`
-/

namespace A153309.P9312151475818275708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029833 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153309.P9312151475818275708

namespace A153309

/-- `eq[0, A029833(3*n+1)]` -/
def P9312151475818275708.Spec : Prop :=
  ∀ n, (P9312151475818275708.a n : ℤ) = A153309 (n + 1)

end A153309

/-! ## A153309.P4005862708322586240

`eq[1, A005171(3*n+1)]`
-/

namespace A153309.P4005862708322586240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153309.P4005862708322586240

namespace A153309

/-- `eq[1, A005171(3*n+1)]` -/
def P4005862708322586240.Spec : Prop :=
  ∀ n, (P4005862708322586240.a n : ℤ) = A153309 (n + 1)

end A153309

/-! ## A153309.P10360950926526710220

`comp[2*comp[A046954(n+1)]]`
-/

namespace A153309.P10360950926526710220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046954 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A153309.P10360950926526710220

namespace A153309

/-- `comp[2*comp[A046954(n+1)]]` -/
def P10360950926526710220.Spec : Prop :=
  ∀ n, (P10360950926526710220.a n : ℤ) = A153309 (n + 1)

end A153309

/-! ## A153309.P997963231624665017

`comp[eq[2, A000005(3*n+1)]]`
-/

namespace A153309.P997963231624665017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A153309.P997963231624665017

namespace A153309

/-- `comp[eq[2, A000005(3*n+1)]]` -/
def P997963231624665017.Spec : Prop :=
  ∀ n, (P997963231624665017.a n : ℤ) = A153309 (n + 1)

end A153309

/-! ## A153309.P6323324147970298305

`lt[A020639(3*n+1), n+2]`
-/

namespace A153309.P6323324147970298305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153309.P6323324147970298305

namespace A153309

/-- `lt[A020639(3*n+1), n+2]` -/
def P6323324147970298305.Spec : Prop :=
  ∀ n, (P6323324147970298305.a n : ℤ) = A153309 (n + 1)

end A153309

/-! ## A153309.P15615100287264585972

`lt[A006530(3*n+1), 2*(n+1)]`
-/

namespace A153309.P15615100287264585972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153309.P15615100287264585972

namespace A153309

/-- `lt[A006530(3*n+1), 2*(n+1)]` -/
def P15615100287264585972.Spec : Prop :=
  ∀ n, (P15615100287264585972.a n : ℤ) = A153309 (n + 1)

end A153309

/-! ## A153309.P13354619471395889190

`lt[2*n, (n+1)^A001222(2*n+1+n)]`
-/

namespace A153309.P13354619471395889190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A001222 (2 * n + 1 + n) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A153309.P13354619471395889190

namespace A153309

/-- `lt[2*n, (n+1)^A001222(2*n+1+n)]` -/
def P13354619471395889190.Spec : Prop :=
  ∀ n, (P13354619471395889190.a n : ℤ) = A153309 (n + 1)

end A153309

/-! ## A153309.P17793249386633518618

`∪[A334919(n+1), A004273(n)]`
-/

namespace A153309.P17793249386633518618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A153309.P17793249386633518618

namespace A153309

/-- `∪[A334919(n+1), A004273(n)]` -/
def P17793249386633518618.Spec : Prop :=
  ∀ n, (P17793249386633518618.a n : ℤ) = A153309 (n + 1)

end A153309

/-! ## A153309.P5188940480439307920

`lt[1, A245838(A028310(n))]`
-/

namespace A153309.P5188940480439307920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153309.P5188940480439307920

namespace A153309

/-- `lt[1, A245838(A028310(n))]` -/
def P5188940480439307920.Spec : Prop :=
  ∀ n, (P5188940480439307920.a n : ℤ) = A153309 (n + 1)

end A153309

/-! ## A153309.P6745124461703058287

`eq[A019426(2*n), A292438(A019426(n+1))]`
-/

namespace A153309.P6745124461703058287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (A019426 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153309.P6745124461703058287

namespace A153309

/-- `eq[A019426(2*n), A292438(A019426(n+1))]` -/
def P6745124461703058287.Spec : Prop :=
  ∀ n, (P6745124461703058287.a n : ℤ) = A153309 (n + 1)

end A153309

/-! ## A153309.P16362023991828644048

`lt[1, A245838(A065190(n+1))]`
-/

namespace A153309.P16362023991828644048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A065190 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153309.P16362023991828644048

namespace A153309

/-- `lt[1, A245838(A065190(n+1))]` -/
def P16362023991828644048.Spec : Prop :=
  ∀ n, (P16362023991828644048.a n : ℤ) = A153309 (n + 1)

end A153309

/-! ## A153309.P13951080954942301075

`lt[∑{p}[A016777(n), #], A016777(n)]`
-/

namespace A153309.P13951080954942301075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A153309.P13951080954942301075

namespace A153309

/-- `lt[∑{p}[A016777(n), #], A016777(n)]` -/
def P13951080954942301075.Spec : Prop :=
  ∀ n, (P13951080954942301075.a n : ℤ) = A153309 (n + 1)

end A153309

/-!
# A153310: Coefficient triangle sequence of a polynomial recursion: p(x,n)=(x + 1)*(p(x, n - 1) + 3^(n - 1)*x); Row sums are 2*3^n.

The programs for A153310, there is no canonical definition to state claims against.
-/

/-! ## A153310.P8891257821170056258

`or(A111615(A153288(n)), A153288(n))`
-/

namespace A153310.P8891257821170056258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A111615 (A153288 n).toNat) (A153288 n)

end

end A153310.P8891257821170056258

/-! ## A153310.P6213482659925674871

`or(A111615(A153311(n)), A153311(n))`
-/

namespace A153310.P6213482659925674871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A111615 (A153311 n).toNat) (A153311 n)

end

end A153310.P6213482659925674871

/-! ## A153310.P548067211045333450

`A335681(A176560(n))+A153516(n+1)`
-/

namespace A153310.P548067211045333450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335681 (A176560 n).toNat + A153516 (n + 1)

end

end A153310.P548067211045333450

/-! ## A153310.P16896859501903632860

`xor(A002262(A174921(n)), A153489(n+1))`
-/

namespace A153310.P16896859501903632860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002262 (A174921 n).toNat) (A153489 (n + 1))

end

end A153310.P16896859501903632860

/-!
# A153315: Denominators of continued fraction convergents to sqrt(5/4).

The programs for A153315, the canonical program `A153315.P11825086836558181102` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153315 has offset 0).

The definition of A153315 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153315.P11825086836558181102

`(3-(-1)^n)*A000045(3*(n+1))/4`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153315

/-- `(3-(-1)^n)*A000045(3*(n+1))/4` -/
def P11825086836558181102.Spec : Prop :=
  ∀ n, P11825086836558181102.a n = (A153315 n : ℚ)

end A153315

/-! ## A153315.P16113925267555713448

`ogf((1+8x-x^2)/(1-18x^2+x^4))`
-/

namespace A153315.P16113925267555713448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, -1] [1, 0, -18, 0, 1] n

end

end A153315.P16113925267555713448

namespace A153315

/-- `ogf((1+8x-x^2)/(1-18x^2+x^4))` -/
def P16113925267555713448.Spec : Prop :=
  ∀ n, P16113925267555713448.a n = A153315 n

end A153315

/-! ## A153315.P6006922571399545967

`A014445(n+1)/gcd(2, n)`
-/

namespace A153315.P6006922571399545967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014445 (n + 1) : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A153315.P6006922571399545967

namespace A153315

/-- `A014445(n+1)/gcd(2, n)` -/
def P6006922571399545967.Spec : Prop :=
  ∀ n, P6006922571399545967.a n = (A153315 n : ℚ)

end A153315

/-! ## A153315.P11188983019484737054

`gcd(n+1, n-1)*∑[A000045(2*n+1+n)]`
-/

namespace A153315.P11188983019484737054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153315.P11188983019484737054

namespace A153315

/-- `gcd(n+1, n-1)*∑[A000045(2*n+1+n)]` -/
def P11188983019484737054.Spec : Prop :=
  ∀ n, P11188983019484737054.a n = A153315 n

end A153315

/-! ## A153315.P13023779740908000712

`A010685(n)*A041031(n)`
-/

namespace A153315.P13023779740908000712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n * A041031 n

end

end A153315.P13023779740908000712

namespace A153315

/-- `A010685(n)*A041031(n)` -/
def P13023779740908000712.Spec : Prop :=
  ∀ n, P13023779740908000712.a n = A153315 n

end A153315

/-! ## A153315.P10240898870021532945

`A010689(n)*A041143(n)`
-/

namespace A153315.P10240898870021532945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010689 n * A041143 n

end

end A153315.P10240898870021532945

namespace A153315

/-- `A010689(n)*A041143(n)` -/
def P10240898870021532945.Spec : Prop :=
  ∀ n, P10240898870021532945.a n = A153315 n

end A153315

/-! ## A153315.P6347267018858616245

`A000034(n)²*A041031(n)`
-/

namespace A153315.P6347267018858616245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n ^ 2 * A041031 n

end

end A153315.P6347267018858616245

namespace A153315

/-- `A000034(n)²*A041031(n)` -/
def P6347267018858616245.Spec : Prop :=
  ∀ n, P6347267018858616245.a n = A153315 n

end A153315

/-! ## A153315.P9187140978853952038

`∑[A033887(n)]*A000034(n)`
-/

namespace A153315.P9187140978853952038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000034 n

end

end A153315.P9187140978853952038

namespace A153315

/-- `∑[A033887(n)]*A000034(n)` -/
def P9187140978853952038.Spec : Prop :=
  ∀ n, P9187140978853952038.a n = A153315 n

end A153315

/-! ## A153315.P5319217097939869471

`Δ[A049652(n)]*A000034(n)`
-/

namespace A153315.P5319217097939869471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000034 n

end

end A153315.P5319217097939869471

namespace A153315

/-- `Δ[A049652(n)]*A000034(n)` -/
def P5319217097939869471.Spec : Prop :=
  ∀ n, P5319217097939869471.a n = A153315 n

end A153315

/-! ## A153315.P17576110855772114071

`A000034(n)*A001076(n+1)`
-/

namespace A153315.P17576110855772114071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A001076 (n + 1)

end

end A153315.P17576110855772114071

namespace A153315

/-- `A000034(n)*A001076(n+1)` -/
def P17576110855772114071.Spec : Prop :=
  ∀ n, P17576110855772114071.a n = A153315 n

end A153315

/-! ## A153315.P4008911310503626313

`Δ[A032766(n)]²*A041031(n)`
-/

namespace A153315.P4008911310503626313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A041031 n

end

end A153315.P4008911310503626313

namespace A153315

/-- `Δ[A032766(n)]²*A041031(n)` -/
def P4008911310503626313.Spec : Prop :=
  ∀ n, P4008911310503626313.a n = A153315 n

end A153315

/-! ## A153315.P9893486528998970251

`ratio[A016116(n)²]*A041031(n)`
-/

namespace A153315.P9893486528998970251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A041031 n : ℚ)

end

end A153315.P9893486528998970251

namespace A153315

/-- `ratio[A016116(n)²]*A041031(n)` -/
def P9893486528998970251.Spec : Prop :=
  ∀ n, P9893486528998970251.a n = (A153315 n : ℚ)

end A153315

/-! ## A153315.P1190098562328086787

`(A000035(n)+1)*A001076(n+1)`
-/

namespace A153315.P1190098562328086787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A001076 (n + 1)

end

end A153315.P1190098562328086787

namespace A153315

/-- `(A000035(n)+1)*A001076(n+1)` -/
def P1190098562328086787.Spec : Prop :=
  ∀ n, P1190098562328086787.a n = A153315 n

end A153315

/-! ## A153315.P15193077672353613013

`A001076(n+1)*A134451(n+1)`
-/

namespace A153315.P15193077672353613013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 (n + 1) * A134451 (n + 1)

end

end A153315.P15193077672353613013

namespace A153315

/-- `A001076(n+1)*A134451(n+1)` -/
def P15193077672353613013.Spec : Prop :=
  ∀ n, P15193077672353613013.a n = A153315 n

end A153315

/-! ## A153315.P14538472719806166125

`(2-A059841(n))*A001076(n+1)`
-/

namespace A153315.P14538472719806166125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A059841 n) * A001076 (n + 1)

end

end A153315.P14538472719806166125

namespace A153315

/-- `(2-A059841(n))*A001076(n+1)` -/
def P14538472719806166125.Spec : Prop :=
  ∀ n, P14538472719806166125.a n = A153315 n

end A153315

/-! ## A153315.P2161044642292677134

`A014445(n+1)/A134451(n+2)`
-/

namespace A153315.P2161044642292677134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014445 (n + 1) : ℚ) / (A134451 (n + 2) : ℚ)

end

end A153315.P2161044642292677134

namespace A153315

/-- `A014445(n+1)/A134451(n+2)` -/
def P2161044642292677134.Spec : Prop :=
  ∀ n, P2161044642292677134.a n = (A153315 n : ℚ)

end A153315

/-! ## A153315.P15887666338994602502

`A014445(n+1)/(2-A000035(n))`
-/

namespace A153315.P15887666338994602502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014445 (n + 1) : ℚ) / (2 - A000035 n : ℚ)

end

end A153315.P15887666338994602502

namespace A153315

/-- `A014445(n+1)/(2-A000035(n))` -/
def P15887666338994602502.Spec : Prop :=
  ∀ n, P15887666338994602502.a n = (A153315 n : ℚ)

end A153315

/-! ## A153315.P13939642319618830166

`A000045(3*(n+1))/Δ[A007494(n)]`
-/

namespace A153315.P13939642319618830166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (3 * (n + 1)) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A153315.P13939642319618830166

namespace A153315

/-- `A000045(3*(n+1))/Δ[A007494(n)]` -/
def P13939642319618830166.Spec : Prop :=
  ∀ n, P13939642319618830166.a n = (A153315 n : ℚ)

end A153315

/-! ## A153315.P3125524085908209519

`A000045(3*(n+1))/2*A176895(2*n)`
-/

namespace A153315.P3125524085908209519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (3 * (n + 1)) : ℚ) / 2 * (A176895 (2 * n) : ℚ)

end

end A153315.P3125524085908209519

namespace A153315

/-- `A000045(3*(n+1))/2*A176895(2*n)` -/
def P3125524085908209519.Spec : Prop :=
  ∀ n, P3125524085908209519.a n = (A153315 n : ℚ)

end A153315

/-! ## A153315.P6704984695841075397

`A000034(n)*A024490(A016789(n))`
-/

namespace A153315.P6704984695841075397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A024490 (A016789 n).toNat

end

end A153315.P6704984695841075397

namespace A153315

/-- `A000034(n)*A024490(A016789(n))` -/
def P6704984695841075397.Spec : Prop :=
  ∀ n, P6704984695841075397.a n = A153315 n

end A153315

/-!
# A153316: Numerators of continued fraction convergents to sqrt(5/4).

The programs for A153316, the canonical program `A153316.P7113676531914898258` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153316 has offset 0).

The definition of A153316 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153316.P17081555086539881557

`ogf((1+9x+x^2-x^3)/(1-18x^2+x^4))`
-/

namespace A153316.P17081555086539881557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, 1, -1] [1, 0, -18, 0, 1] n

end

end A153316.P17081555086539881557

namespace A153316

/-- `ogf((1+9x+x^2-x^3)/(1-18x^2+x^4))` -/
def P17081555086539881557.Spec : Prop :=
  ∀ n, P17081555086539881557.a n = A153316 n

end A153316

/-! ## A153316.P7113676531914898258

`18*a(n-2)-a(n-4)` with `a(0)=1, a(1)=9, a(2)=19, a(3)=161`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153316

/-- `18*a(n-2)-a(n-4)` -/
def P7113676531914898258.Spec : Prop :=
  ∀ n, P7113676531914898258.a n = A153316 n

theorem P7113676531914898258.correct : P7113676531914898258.Spec := by
  intro n
  simp only [A153316]

end A153316

/-! ## A153316.P9810710006441309018

`(3-(-1)^n)*A000032(3*(n+1))/8`
-/

namespace A153316.P9810710006441309018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 - (-1) ^ n) * A000032 (3 * (n + 1)) : ℚ) / 8

end

end A153316.P9810710006441309018

namespace A153316

/-- `(3-(-1)^n)*A000032(3*(n+1))/8` -/
def P9810710006441309018.Spec : Prop :=
  ∀ n, P9810710006441309018.a n = (A153316 n : ℚ)

end A153316

/-! ## A153316.P15766946843741344863

`lcm(2, A001077(n+1))/2`
-/

namespace A153316.P15766946843741344863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A001077 (n + 1)) : ℚ) / 2

end

end A153316.P15766946843741344863

namespace A153316

/-- `lcm(2, A001077(n+1))/2` -/
def P15766946843741344863.Spec : Prop :=
  ∀ n, P15766946843741344863.a n = (A153316 n : ℚ)

end A153316

/-! ## A153316.P15890466194613687729

`lcm(4, A000032(3*(n+1)))/4`
-/

namespace A153316.P15890466194613687729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (A000032 (3 * (n + 1))) : ℚ) / 4

end

end A153316.P15890466194613687729

namespace A153316

/-- `lcm(4, A000032(3*(n+1)))/4` -/
def P15890466194613687729.Spec : Prop :=
  ∀ n, P15890466194613687729.a n = (A153316 n : ℚ)

end A153316

/-! ## A153316.P9078838295980282539

`A000032(2*n+n+3)/(2*gcd(2, n))`
-/

namespace A153316.P9078838295980282539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n + (n + 3)) : ℚ) / (2 * Nat.gcd 2 n : ℚ)

end

end A153316.P9078838295980282539

namespace A153316

/-- `A000032(2*n+n+3)/(2*gcd(2, n))` -/
def P9078838295980282539.Spec : Prop :=
  ∀ n, P9078838295980282539.a n = (A153316 n : ℚ)

end A153316

/-! ## A153316.P15429171844974354053

`A041030(n)/A228826(n)²`
-/

namespace A153316.P15429171844974354053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041030 n : ℚ) / (A228826 n ^ 2 : ℚ)

end

end A153316.P15429171844974354053

namespace A153316

/-- `A041030(n)/A228826(n)²` -/
def P15429171844974354053.Spec : Prop :=
  ∀ n, P15429171844974354053.a n = (A153316 n : ℚ)

end A153316

/-! ## A153316.P5182103100894380630

`A041030(n)/A040005(n+2)`
-/

namespace A153316.P5182103100894380630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041030 n : ℚ) / (A040005 (n + 2) : ℚ)

end

end A153316.P5182103100894380630

namespace A153316

/-- `A041030(n)/A040005(n+2)` -/
def P5182103100894380630.Spec : Prop :=
  ∀ n, P5182103100894380630.a n = (A153316 n : ℚ)

end A153316

/-! ## A153316.P8683086786246491514

`abs(A001077(n+1)/A228826(n))`
-/

namespace A153316.P8683086786246491514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A001077 (n + 1) : ℚ) / (A228826 n : ℚ)|

end

end A153316.P8683086786246491514

namespace A153316

/-- `abs(A001077(n+1)/A228826(n))` -/
def P8683086786246491514.Spec : Prop :=
  ∀ n, P8683086786246491514.a n = (A153316 n : ℚ)

end A153316

/-! ## A153316.P1517971329374733110

`A041030(n)/A000034(n+1)²`
-/

namespace A153316.P1517971329374733110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041030 n : ℚ) / (A000034 (n + 1) ^ 2 : ℚ)

end

end A153316.P1517971329374733110

namespace A153316

/-- `A041030(n)/A000034(n+1)²` -/
def P1517971329374733110.Spec : Prop :=
  ∀ n, P1517971329374733110.a n = (A153316 n : ℚ)

end A153316

/-! ## A153316.P15448976098745551646

`(A000034(n)/2)²*A041030(n)`
-/

namespace A153316.P15448976098745551646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000034 n : ℚ) / 2) ^ 2 * (A041030 n : ℚ)

end

end A153316.P15448976098745551646

namespace A153316

/-- `(A000034(n)/2)²*A041030(n)` -/
def P15448976098745551646.Spec : Prop :=
  ∀ n, P15448976098745551646.a n = (A153316 n : ℚ)

end A153316

/-! ## A153316.P295550321680329642

`A001077(n+1)/A000034(n+1)`
-/

namespace A153316.P295550321680329642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001077 (n + 1) : ℚ) / (A000034 (n + 1) : ℚ)

end

end A153316.P295550321680329642

namespace A153316

/-- `A001077(n+1)/A000034(n+1)` -/
def P295550321680329642.Spec : Prop :=
  ∀ n, P295550321680329642.a n = (A153316 n : ℚ)

end A153316

/-! ## A153316.P13485100909218907819

`A001077(n+1)/(A059841(n)+1)`
-/

namespace A153316.P13485100909218907819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001077 (n + 1) : ℚ) / (A059841 n + 1 : ℚ)

end

end A153316.P13485100909218907819

namespace A153316

/-- `A001077(n+1)/(A059841(n)+1)` -/
def P13485100909218907819.Spec : Prop :=
  ∀ n, P13485100909218907819.a n = (A153316 n : ℚ)

end A153316

/-! ## A153316.P9971082576054226405

`A001077(n+1)/A134451(n+2)`
-/

namespace A153316.P9971082576054226405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001077 (n + 1) : ℚ) / (A134451 (n + 2) : ℚ)

end

end A153316.P9971082576054226405

namespace A153316

/-- `A001077(n+1)/A134451(n+2)` -/
def P9971082576054226405.Spec : Prop :=
  ∀ n, P9971082576054226405.a n = (A153316 n : ℚ)

end A153316

/-! ## A153316.P5272830278052331786

`A001077(n+1)/(and(1, A001077(n))+1)`
-/

namespace A153316.P5272830278052331786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001077 (n + 1) : ℚ) / (Int.land 1 (A001077 n) + 1 : ℚ)

end

end A153316.P5272830278052331786

namespace A153316

/-- `A001077(n+1)/(and(1, A001077(n))+1)` -/
def P5272830278052331786.Spec : Prop :=
  ∀ n, P5272830278052331786.a n = (A153316 n : ℚ)

end A153316

/-! ## A153316.P17965141667270410803

`A001077(n+1)/(A244959(n+1)%2+1)`
-/

namespace A153316.P17965141667270410803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001077 (n + 1) : ℚ) / (Int.tmod (A244959 (n + 1)) 2 + 1 : ℚ)

end

end A153316.P17965141667270410803

namespace A153316

/-- `A001077(n+1)/(A244959(n+1)%2+1)` -/
def P17965141667270410803.Spec : Prop :=
  ∀ n, P17965141667270410803.a n = (A153316 n : ℚ)

end A153316

/-! ## A153316.P5018603306654032083

`A001077(n+1)/A001077(((n+1)%2)^(n+1))`
-/

namespace A153316.P5018603306654032083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001077 (n + 1) : ℚ) / (A001077 (((n + 1) % 2) ^ (n + 1)) : ℚ)

end

end A153316.P5018603306654032083

namespace A153316

/-- `A001077(n+1)/A001077(((n+1)%2)^(n+1))` -/
def P5018603306654032083.Spec : Prop :=
  ∀ n, P5018603306654032083.a n = (A153316 n : ℚ)

end A153316

/-! ## A153316.P4341123067616460144

`A040005(n)/A040071(n)*A041030(n)`
-/

namespace A153316.P4341123067616460144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040005 n : ℚ) / (A040071 n : ℚ) * (A041030 n : ℚ)

end

end A153316.P4341123067616460144

namespace A153316

/-- `A040005(n)/A040071(n)*A041030(n)` -/
def P4341123067616460144.Spec : Prop :=
  ∀ n, P4341123067616460144.a n = (A153316 n : ℚ)

end A153316

/-! ## A153316.P14222351839116293126

`A041030(n)/A178562(A006519(n+1))²`
-/

namespace A153316.P14222351839116293126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041030 n : ℚ) / (A178562 (A006519 (n + 1)).toNat ^ 2 : ℚ)

end

end A153316.P14222351839116293126

namespace A153316

/-- `A041030(n)/A178562(A006519(n+1))²` -/
def P14222351839116293126.Spec : Prop :=
  ∀ n, P14222351839116293126.a n = (A153316 n : ℚ)

end A153316

/-! ## A153316.P6770907105688674617

`A041030(n)/A178562(A297402(n+1))²`
-/

namespace A153316.P6770907105688674617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041030 n : ℚ) / (A178562 (A297402 (n + 1)).toNat ^ 2 : ℚ)

end

end A153316.P6770907105688674617

namespace A153316

/-- `A041030(n)/A178562(A297402(n+1))²` -/
def P6770907105688674617.Spec : Prop :=
  ∀ n, P6770907105688674617.a n = (A153316 n : ℚ)

end A153316

/-!
# A153317: Denominators of continued fraction convergents to sqrt(6/5).

The programs for A153317, the canonical program `A153317.P1432498210180785002` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153317 has offset 0).

The definition of A153317 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153317.P1432498210180785002

`ogf((1+10x-x^2)/(1-22x^2+x^4))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153317

/-- `ogf((1+10x-x^2)/(1-22x^2+x^4))` -/
def P1432498210180785002.Spec : Prop :=
  ∀ n, P1432498210180785002.a n = A153317 n

theorem P1432498210180785002.correct : P1432498210180785002.Spec := by
  intro n
  simp only [A153317]

end A153317

/-! ## A153317.P12265112891409764898

`A010686(n)*A041049(n)`
-/

namespace A153317.P12265112891409764898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 n * A041049 n

end

end A153317.P12265112891409764898

namespace A153317

/-- `A010686(n)*A041049(n)` -/
def P12265112891409764898.Spec : Prop :=
  ∀ n, P12265112891409764898.a n = A153317 n

end A153317

/-! ## A153317.P386292464144827948

`A041049(n+1)-A153318(n)`
-/

namespace A153317.P386292464144827948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041049 (n + 1) - A153318 n

end

end A153317.P386292464144827948

namespace A153317

/-- `A041049(n+1)-A153318(n)` -/
def P386292464144827948.Spec : Prop :=
  ∀ n, P386292464144827948.a n = A153317 n

end A153317

/-! ## A153317.P8263923654771921769

`A000132(Δ[A004526(n)])*A041219(n)`
-/

namespace A153317.P8263923654771921769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000132 (f1 (n + 1) - f1 n).toNat * A041219 n

end

end A153317.P8263923654771921769

namespace A153317

/-- `A000132(Δ[A004526(n)])*A041219(n)` -/
def P8263923654771921769.Spec : Prop :=
  ∀ n, P8263923654771921769.a n = A153317 n

end A153317

/-! ## A153317.P18269669916663847302

`Δ[A014681(A016777(n))]*A041049(n)`
-/

namespace A153317.P18269669916663847302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041049 n

end

end A153317.P18269669916663847302

namespace A153317

/-- `Δ[A014681(A016777(n))]*A041049(n)` -/
def P18269669916663847302.Spec : Prop :=
  ∀ n, P18269669916663847302.a n = A153317 n

end A153317

/-! ## A153317.P7236789532559706159

`A010131((n+1)²)*A041219(n)`
-/

namespace A153317.P7236789532559706159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010131 ((n + 1) ^ 2) * A041219 n

end

end A153317.P7236789532559706159

namespace A153317

/-- `A010131((n+1)²)*A041219(n)` -/
def P7236789532559706159.Spec : Prop :=
  ∀ n, P7236789532559706159.a n = A153317 n

end A153317

/-! ## A153317.P11963718260593485019

`gcd(5, A041041(n))*A041049(n)`
-/

namespace A153317.P11963718260593485019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 5 (A041041 n) : ℤ) * A041049 n

end

end A153317.P11963718260593485019

namespace A153317

/-- `gcd(5, A041041(n))*A041049(n)` -/
def P11963718260593485019.Spec : Prop :=
  ∀ n, P11963718260593485019.a n = A153317 n

end A153317

/-!
# A153318: Numerators of continued fraction convergents to sqrt(6/5).

The programs for A153318, the canonical program `A153318.P14177131432249994758` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153318 has offset 0).

The definition of A153318 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153318.P14177131432249994758

`ogf((1+11x+x^2-x^3)/(1-22x^2+x^4))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153318

/-- `ogf((1+11x+x^2-x^3)/(1-22x^2+x^4))` -/
def P14177131432249994758.Spec : Prop :=
  ∀ n, P14177131432249994758.a n = A153318 n

theorem P14177131432249994758.correct : P14177131432249994758.Spec := by
  intro n
  simp only [A153318]

end A153318

/-! ## A153318.P702139765015862779

`A041048(n)/gcd(5, A041048(n))`
-/

namespace A153318.P702139765015862779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041048 n : ℚ) / (Int.gcd 5 (A041048 n) : ℚ)

end

end A153318.P702139765015862779

namespace A153318

/-- `A041048(n)/gcd(5, A041048(n))` -/
def P702139765015862779.Spec : Prop :=
  ∀ n, P702139765015862779.a n = (A153318 n : ℚ)

end A153318

/-! ## A153318.P3436190568016708271

`A077421(n)/A041049(n)`
-/

namespace A153318.P3436190568016708271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077421 n : ℚ) / (A041049 n : ℚ)

end

end A153318.P3436190568016708271

namespace A153318

/-- `A077421(n)/A041049(n)` -/
def P3436190568016708271.Spec : Prop :=
  ∀ n, P3436190568016708271.a n = (A153318 n : ℚ)

end A153318

/-! ## A153318.P16356914756424317378

`∑[A157014(n+1)]/A041049(n)`
-/

namespace A153318.P16356914756424317378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157014 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A041049 n : ℚ)

end

end A153318.P16356914756424317378

namespace A153318

/-- `∑[A157014(n+1)]/A041049(n)` -/
def P16356914756424317378.Spec : Prop :=
  ∀ n, P16356914756424317378.a n = (A153318 n : ℚ)

end A153318

/-! ## A153318.P15164585722847796270

`∑[A041049(2*n)]/A041049(n)`
-/

namespace A153318.P15164585722847796270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041049 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A041049 n : ℚ)

end

end A153318.P15164585722847796270

namespace A153318

/-- `∑[A041049(2*n)]/A041049(n)` -/
def P15164585722847796270.Spec : Prop :=
  ∀ n, P15164585722847796270.a n = (A153318 n : ℚ)

end A153318

/-! ## A153318.P16077892078764483627

`gcd(∑[A157014(n+1)], A041218(n))`
-/

namespace A153318.P16077892078764483627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157014 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A041218 n)

end

end A153318.P16077892078764483627

namespace A153318

/-- `gcd(∑[A157014(n+1)], A041218(n))` -/
def P16077892078764483627.Spec : Prop :=
  ∀ n, (P16077892078764483627.a n : ℤ) = A153318 n

end A153318

/-! ## A153318.P15650123579578490132

`A041219(2*n+1)/A041049(n)`
-/

namespace A153318.P15650123579578490132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041219 (2 * n + 1) : ℚ) / (A041049 n : ℚ)

end

end A153318.P15650123579578490132

namespace A153318

/-- `A041219(2*n+1)/A041049(n)` -/
def P15650123579578490132.Spec : Prop :=
  ∀ n, P15650123579578490132.a n = (A153318 n : ℚ)

end A153318

/-! ## A153318.P10874430311336992886

`1/A041049(n)*A041219(A005408(n))`
-/

namespace A153318.P10874430311336992886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A041049 n : ℚ) * (A041219 (A005408 n).toNat : ℚ)

end

end A153318.P10874430311336992886

namespace A153318

/-- `1/A041049(n)*A041219(A005408(n))` -/
def P10874430311336992886.Spec : Prop :=
  ∀ n, P10874430311336992886.a n = (A153318 n : ℚ)

end A153318

/-!
# A153319: Primes p such that 6*p-7 is not prime.

The programs for A153319, the canonical program `A153319.P18178413005395234770` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153319 has offset 1).

The definition of A153319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1344 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153319.P18178413005395234770

`p?[A075743(4*n+3)+A005408(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A153319

/-- `p?[A075743(4*n+3)+A005408(n+1)]` -/
def P18178413005395234770.Spec : Prop :=
  ∀ n, P18178413005395234770.a n = A153319 (n + 1)

theorem P18178413005395234770.correct : P18178413005395234770.Spec := by
  intro n
  simp only [A153319, Nat.add_sub_cancel]

end A153319

/-! ## A153319.P16466073459283150621

`p?[A153245(n+1)]`
-/

namespace A153319.P16466073459283150621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153319.P16466073459283150621

namespace A153319

/-- `p?[A153245(n+1)]` -/
def P16466073459283150621.Spec : Prop :=
  ∀ n, P16466073459283150621.a n = A153319 (n + 1)

end A153319

/-! ## A153319.P7486190779969357802

`p?[A046953(n+1)+1]`
-/

namespace A153319.P7486190779969357802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046953 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153319.P7486190779969357802

namespace A153319

/-- `p?[A046953(n+1)+1]` -/
def P7486190779969357802.Spec : Prop :=
  ∀ n, P7486190779969357802.a n = A153319 (n + 1)

end A153319

/-! ## A153319.P3389320334300918038

`p?[A059324(n+1)+2]`
-/

namespace A153319.P3389320334300918038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059324 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153319.P3389320334300918038

namespace A153319

/-- `p?[A059324(n+1)+2]` -/
def P3389320334300918038.Spec : Prop :=
  ∀ n, P3389320334300918038.a n = A153319 (n + 1)

end A153319

/-! ## A153319.P4766561337174341439

`record[A006530(A153245(n+3))]`
-/

namespace A153319.P4766561337174341439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A153245 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153319.P4766561337174341439

namespace A153319

/-- `record[A006530(A153245(n+3))]` -/
def P4766561337174341439.Spec : Prop :=
  ∀ n, P4766561337174341439.a n = A153319 (n + 1)

end A153319

/-! ## A153319.P11775306762301716398

`filter[A153245(n+1), A010051(#)]`
-/

namespace A153319.P11775306762301716398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A153319.P11775306762301716398

namespace A153319

/-- `filter[A153245(n+1), A010051(#)]` -/
def P11775306762301716398.Spec : Prop :=
  ∀ n, P11775306762301716398.a n = A153319 (n + 1)

end A153319

/-! ## A153319.P12731997746336923736

`record[A006530(A046953(n+1)+1)]`
-/

namespace A153319.P12731997746336923736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046953 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153319.P12731997746336923736

namespace A153319

/-- `record[A006530(A046953(n+1)+1)]` -/
def P12731997746336923736.Spec : Prop :=
  ∀ n, P12731997746336923736.a n = A153319 (n + 1)

end A153319

/-! ## A153319.P11723193885738481803

`record[A020639(A046953(n+1)+1)]`
-/

namespace A153319.P11723193885738481803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A046953 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153319.P11723193885738481803

namespace A153319

/-- `record[A020639(A046953(n+1)+1)]` -/
def P11723193885738481803.Spec : Prop :=
  ∀ n, P11723193885738481803.a n = A153319 (n + 1)

end A153319

/-! ## A153319.P8687792882038046738

`record[A020639(A059324(n+1)+2)]`
-/

namespace A153319.P8687792882038046738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A059324 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153319.P8687792882038046738

namespace A153319

/-- `record[A020639(A059324(n+1)+2)]` -/
def P8687792882038046738.Spec : Prop :=
  ∀ n, P8687792882038046738.a n = A153319 (n + 1)

end A153319

/-! ## A153319.P2773763732152109908

`∩[A000040(n+1), A153245(n+1)]`
-/

namespace A153319.P2773763732152109908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153319.P2773763732152109908

namespace A153319

/-- `∩[A000040(n+1), A153245(n+1)]` -/
def P2773763732152109908.Spec : Prop :=
  ∀ n, (P2773763732152109908.a n : ℤ) = A153319 (n + 1)

end A153319

/-! ## A153319.P10862072535975827166

`∩[A004139(n+1), A153245(n+1)]`
-/

namespace A153319.P10862072535975827166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153319.P10862072535975827166

namespace A153319

/-- `∩[A004139(n+1), A153245(n+1)]` -/
def P10862072535975827166.Spec : Prop :=
  ∀ n, (P10862072535975827166.a n : ℤ) = A153319 (n + 1)

end A153319

/-! ## A153319.P3639390303933161168

`∩[A006005(n+1), A153245(n+1)]`
-/

namespace A153319.P3639390303933161168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153319.P3639390303933161168

namespace A153319

/-- `∩[A006005(n+1), A153245(n+1)]` -/
def P3639390303933161168.Spec : Prop :=
  ∀ n, (P3639390303933161168.a n : ℤ) = A153319 (n + 1)

end A153319

/-! ## A153319.P11596102966827892907

`∩[A008578(n+1), A153245(n+1)]`
-/

namespace A153319.P11596102966827892907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153319.P11596102966827892907

namespace A153319

/-- `∩[A008578(n+1), A153245(n+1)]` -/
def P11596102966827892907.Spec : Prop :=
  ∀ n, (P11596102966827892907.a n : ℤ) = A153319 (n + 1)

end A153319

/-! ## A153319.P16269195259726291535

`∩[A033946(n+1), A153245(n+1)]`
-/

namespace A153319.P16269195259726291535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153319.P16269195259726291535

namespace A153319

/-- `∩[A033946(n+1), A153245(n+1)]` -/
def P16269195259726291535.Spec : Prop :=
  ∀ n, (P16269195259726291535.a n : ℤ) = A153319 (n + 1)

end A153319

/-! ## A153319.P2166687701125220690

`∩[A045319(n+1), A153245(n+1)]`
-/

namespace A153319.P2166687701125220690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153319.P2166687701125220690

namespace A153319

/-- `∩[A045319(n+1), A153245(n+1)]` -/
def P2166687701125220690.Spec : Prop :=
  ∀ n, (P2166687701125220690.a n : ℤ) = A153319 (n + 1)

end A153319

/-! ## A153319.P1429262864429293201

`∩[A045344(n+1), A153245(n+1)]`
-/

namespace A153319.P1429262864429293201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153319.P1429262864429293201

namespace A153319

/-- `∩[A045344(n+1), A153245(n+1)]` -/
def P1429262864429293201.Spec : Prop :=
  ∀ n, (P1429262864429293201.a n : ℤ) = A153319 (n + 1)

end A153319

/-! ## A153319.P12615455056957952410

`∩[A046022(n+1), A153245(n+1)]`
-/

namespace A153319.P12615455056957952410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153319.P12615455056957952410

namespace A153319

/-- `∩[A046022(n+1), A153245(n+1)]` -/
def P12615455056957952410.Spec : Prop :=
  ∀ n, (P12615455056957952410.a n : ℤ) = A153319 (n + 1)

end A153319

/-! ## A153319.P9822712520310168476

`∩[A065091(n+1), A153245(n+1)]`
-/

namespace A153319.P9822712520310168476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153319.P9822712520310168476

namespace A153319

/-- `∩[A065091(n+1), A153245(n+1)]` -/
def P9822712520310168476.Spec : Prop :=
  ∀ n, (P9822712520310168476.a n : ℤ) = A153319 (n + 1)

end A153319

/-! ## A153319.P17616127579942105984

`∩[A066050(n+1), A153245(n+1)]`
-/

namespace A153319.P17616127579942105984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153319.P17616127579942105984

namespace A153319

/-- `∩[A066050(n+1), A153245(n+1)]` -/
def P17616127579942105984.Spec : Prop :=
  ∀ n, (P17616127579942105984.a n : ℤ) = A153319 (n + 1)

end A153319

/-! ## A153319.P938046978362192861

`∩[A067126(n+1), A153245(n+1)]`
-/

namespace A153319.P938046978362192861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153319.P938046978362192861

namespace A153319

/-- `∩[A067126(n+1), A153245(n+1)]` -/
def P938046978362192861.Spec : Prop :=
  ∀ n, (P938046978362192861.a n : ℤ) = A153319 (n + 1)

end A153319

/-!
# A153320: Primes p such that abs(p^2 - 48) and p^2 + 48 are also primes.

The programs for A153320, there is no canonical definition to state claims against.
-/

/-! ## A153320.P16492386149711431742

`p?[∑[A325704(A167979(n+1))]]`
-/

namespace A153320.P16492386149711431742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325704 (A167979 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153320.P16492386149711431742

/-! ## A153320.P3873515763827981812

`A318589(∑[A319278(2*n+3)])`
-/

namespace A153320.P3873515763827981812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319278 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318589 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A153320.P3873515763827981812

/-!
# A153323: Primes p such that p^3 - 24 and p^3 + 24 are also primes.

The programs for A153323, there is no canonical definition to state claims against.
-/

/-! ## A153323.P5607587289149663881

`p?[∑[p?[A338817(n)]-1]]`
-/

namespace A153323.P5607587289149663881
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338817 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153323.P5607587289149663881

/-!
# A153325: Primes p such that p^3 - 30 and p^3 + 30 are also primes.

The programs for A153325, there is no canonical definition to state claims against.
-/

/-! ## A153325.P18331812091344123480

`A109417(2*a(n-3))` with `a(0)=7, a(1)=11, a(2)=29`
-/

namespace A153325.P18331812091344123480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 11, 29] fun n a =>
  A109417 (2 * a (n - 3)).toNat

end

end A153325.P18331812091344123480

/-!
# A153327: Numbers k such that 16*k+5 is not prime.

The programs for A153327, the canonical program `A153327.P5821613529871534125` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153327 has offset 1).

The definition of A153327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153327.P5821613529871534125

`comp[A127590(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A153327

/-- `comp[A127590(n+1)]` -/
def P5821613529871534125.Spec : Prop :=
  ∀ n, (P5821613529871534125.a n : ℤ) = A153327 (n + 1)

theorem P5821613529871534125.correct : P5821613529871534125.Spec := by
  intro n
  simp only [A153327, Nat.add_sub_cancel]

end A153327

/-! ## A153327.P10097569582114646945

`eq[0, A156707(8*n+2)]`
-/

namespace A153327.P10097569582114646945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156707 (8 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153327.P10097569582114646945

namespace A153327

/-- `eq[0, A156707(8*n+2)]` -/
def P10097569582114646945.Spec : Prop :=
  ∀ n, (P10097569582114646945.a n : ℤ) = A153327 (n + 1)

end A153327

/-! ## A153327.P8140328744010556398

`lt[2, A000005(16*n+5)]`
-/

namespace A153327.P8140328744010556398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (16 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153327.P8140328744010556398

namespace A153327

/-- `lt[2, A000005(16*n+5)]` -/
def P8140328744010556398.Spec : Prop :=
  ∀ n, (P8140328744010556398.a n : ℤ) = A153327 (n + 1)

end A153327

/-! ## A153327.P17164693903740732744

`lt[1, A001222(2*(8*n+2)+1)]`
-/

namespace A153327.P17164693903740732744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (8 * n + 2) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153327.P17164693903740732744

namespace A153327

/-- `lt[1, A001222(2*(8*n+2)+1)]` -/
def P17164693903740732744.Spec : Prop :=
  ∀ n, (P17164693903740732744.a n : ℤ) = A153327 (n + 1)

end A153327

/-! ## A153327.P967165595788750065

`lt[A020639(16*n+5)/5, A000010(n+1)]`
-/

namespace A153327.P967165595788750065
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (16 * n + 5) : ℚ) / 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A153327.P967165595788750065

namespace A153327

/-- `lt[A020639(16*n+5)/5, A000010(n+1)]` -/
def P967165595788750065.Spec : Prop :=
  ∀ n, (P967165595788750065.a n : ℤ) = A153327 (n + 1)

end A153327

/-! ## A153327.P6867925267092448939

`lt[A006530(A170837(n+2)), A170837(n+2)]`
-/

namespace A153327.P6867925267092448939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A170837 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153327.P6867925267092448939

namespace A153327

/-- `lt[A006530(A170837(n+2)), A170837(n+2)]` -/
def P6867925267092448939.Spec : Prop :=
  ∀ n, (P6867925267092448939.a n : ℤ) = A153327 (n + 1)

end A153327

/-! ## A153327.P12713764574370365971

`lt[2, A175462(2*n)]`
-/

namespace A153327.P12713764574370365971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175462 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153327.P12713764574370365971

namespace A153327

/-- `lt[2, A175462(2*n)]` -/
def P12713764574370365971.Spec : Prop :=
  ∀ n, (P12713764574370365971.a n : ℤ) = A153327 (n + 1)

end A153327

/-! ## A153327.P17555993680155877404

`record[A260437(A153129(n+1))]`
-/

namespace A153327.P17555993680155877404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (A153129 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153327.P17555993680155877404

namespace A153327

/-- `record[A260437(A153129(n+1))]` -/
def P17555993680155877404.Spec : Prop :=
  ∀ n, P17555993680155877404.a n = A153327 (n + 1)

end A153327

/-! ## A153327.P14069456017913062263

`eq[1, A066247(A219529(3*n+1))]`
-/

namespace A153327.P14069456017913062263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A219529 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153327.P14069456017913062263

namespace A153327

/-- `eq[1, A066247(A219529(3*n+1))]` -/
def P14069456017913062263.Spec : Prop :=
  ∀ n, (P14069456017913062263.a n : ℤ) = A153327 (n + 1)

end A153327

/-! ## A153327.P5807314290886849572

`lt[1, A016014(8*n+2)]`
-/

namespace A153327.P5807314290886849572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (8 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153327.P5807314290886849572

namespace A153327

/-- `lt[1, A016014(8*n+2)]` -/
def P5807314290886849572.Spec : Prop :=
  ∀ n, (P5807314290886849572.a n : ℤ) = A153327 (n + 1)

end A153327

/-! ## A153327.P15850803839864943496

`eq[1, A282026(A017077(n))]`
-/

namespace A153327.P15850803839864943496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282026 (A017077 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153327.P15850803839864943496

namespace A153327

/-- `eq[1, A282026(A017077(n))]` -/
def P15850803839864943496.Spec : Prop :=
  ∀ n, (P15850803839864943496.a n : ℤ) = A153327 (n + 1)

end A153327

/-! ## A153327.P13455287590741930381

`eq[A096501(A004770(2*n+1)), A096501(2*(n+1))]`
-/

namespace A153327.P13455287590741930381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (A004770 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153327.P13455287590741930381

namespace A153327

/-- `eq[A096501(A004770(2*n+1)), A096501(2*(n+1))]` -/
def P13455287590741930381.Spec : Prop :=
  ∀ n, (P13455287590741930381.a n : ℤ) = A153327 (n + 1)

end A153327

/-! ## A153327.P6403757374844881460

`lt[A014963(A016969(n)+A008592(n)), 2*n]`
-/

namespace A153327.P6403757374844881460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A016969 n + A008592 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153327.P6403757374844881460

namespace A153327

/-- `lt[A014963(A016969(n)+A008592(n)), 2*n]` -/
def P6403757374844881460.Spec : Prop :=
  ∀ n, (P6403757374844881460.a n : ℤ) = A153327 (n + 1)

end A153327

/-!
# A153328: Numbers k such that (10^k-1)*120/99 + 1 is prime.

The programs for A153328, there is no canonical definition to state claims against.
-/

/-! ## A153328.P11405493964424174571

`A062209(n+1)-1`
-/

namespace A153328.P11405493964424174571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062209 (n + 1) - 1

end

end A153328.P11405493964424174571

/-! ## A153328.P11685227969272040065

`2*A056803(n+1)`
-/

namespace A153328.P11685227969272040065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056803 (n + 1)

end

end A153328.P11685227969272040065

/-! ## A153328.P7902704455706405089

`xor(1, A062209(A005496(n)))`
-/

namespace A153328.P7902704455706405089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A062209 (A005496 n).toNat)

end

end A153328.P7902704455706405089

/-! ## A153328.P3810396416317563356

`record[A062209(A305298(n))-1]`
-/

namespace A153328.P3810396416317563356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062209 (A305298 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153328.P3810396416317563356

/-! ## A153328.P7416265120929348338

`record[A062209(A305431(n))-1]`
-/

namespace A153328.P7416265120929348338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062209 (A305431 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153328.P7416265120929348338

/-!
# A153329: Numbers k such that 5*k + 1 is not prime.

The programs for A153329, the canonical program `A153329.P10943996791245402332` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153329 has offset 1).

The definition of A153329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153329.P1750381198860219875

`comp[A024894(n+1)]`
-/

namespace A153329.P1750381198860219875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153329.P1750381198860219875

namespace A153329

/-- `comp[A024894(n+1)]` -/
def P1750381198860219875.Spec : Prop :=
  ∀ n, (P1750381198860219875.a n : ℤ) = A153329 (n + 1)

end A153329

/-! ## A153329.P5196909984234951533

`comp[A081759(n+1)+1]`
-/

namespace A153329.P5196909984234951533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153329.P5196909984234951533

namespace A153329

/-- `comp[A081759(n+1)+1]` -/
def P5196909984234951533.Spec : Prop :=
  ∀ n, (P5196909984234951533.a n : ℤ) = A153329 (n + 1)

end A153329

/-! ## A153329.P11407263367218338673

`comp[2*A024912(n+1)]`
-/

namespace A153329.P11407263367218338673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153329.P11407263367218338673

namespace A153329

/-- `comp[2*A024912(n+1)]` -/
def P11407263367218338673.Spec : Prop :=
  ∀ n, (P11407263367218338673.a n : ℤ) = A153329 (n + 1)

end A153329

/-! ## A153329.P16469235116042374627

`eq[1, A005171(5*n+1)]`
-/

namespace A153329.P16469235116042374627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (5 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153329.P16469235116042374627

namespace A153329

/-- `eq[1, A005171(5*n+1)]` -/
def P16469235116042374627.Spec : Prop :=
  ∀ n, (P16469235116042374627.a n : ℤ) = A153329 (n + 1)

end A153329

/-! ## A153329.P10943996791245402332

`lt[A010051(5*n+1), 1]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153329

/-- `lt[A010051(5*n+1), 1]` -/
def P10943996791245402332.Spec : Prop :=
  ∀ n, (P10943996791245402332.a n : ℤ) = A153329 (n + 1)

theorem P10943996791245402332.correct : P10943996791245402332.Spec := by
  intro n
  simp only [A153329, Nat.add_sub_cancel]

end A153329

/-! ## A153329.P7963752032353279556

`comp[2*comp[A153275(n+1)]]`
-/

namespace A153329.P7963752032353279556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153275 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A153329.P7963752032353279556

namespace A153329

/-- `comp[2*comp[A153275(n+1)]]` -/
def P7963752032353279556.Spec : Prop :=
  ∀ n, (P7963752032353279556.a n : ℤ) = A153329 (n + 1)

end A153329

/-! ## A153329.P14083925207046831486

`lt[A020639(5*n+1), n+2]`
-/

namespace A153329.P14083925207046831486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153329.P14083925207046831486

namespace A153329

/-- `lt[A020639(5*n+1), n+2]` -/
def P14083925207046831486.Spec : Prop :=
  ∀ n, (P14083925207046831486.a n : ℤ) = A153329 (n + 1)

end A153329

/-! ## A153329.P8823971804487149416

`comp[2*eq[1, A001222(10*n+1)]]`
-/

namespace A153329.P8823971804487149416
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A153329.P8823971804487149416

namespace A153329

/-- `comp[2*eq[1, A001222(10*n+1)]]` -/
def P8823971804487149416.Spec : Prop :=
  ∀ n, (P8823971804487149416.a n : ℤ) = A153329 (n + 1)

end A153329

/-! ## A153329.P17618986068325162770

`comp[2*eq[2, A000005(10*n+1)]]`
-/

namespace A153329.P17618986068325162770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A153329.P17618986068325162770

namespace A153329

/-- `comp[2*eq[2, A000005(10*n+1)]]` -/
def P17618986068325162770.Spec : Prop :=
  ∀ n, (P17618986068325162770.a n : ℤ) = A153329 (n + 1)

end A153329

/-! ## A153329.P2219079254029378268

`lt[A006530(xor(1, 5*n)), 4*n+2]`
-/

namespace A153329.P2219079254029378268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.xor 1 (5 * n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153329.P2219079254029378268

namespace A153329

/-- `lt[A006530(xor(1, 5*n)), 4*n+2]` -/
def P2219079254029378268.Spec : Prop :=
  ∀ n, (P2219079254029378268.a n : ℤ) = A153329 (n + 1)

end A153329

/-! ## A153329.P13274134670848866888

`comp[lt[A000005(4*(n+1)+n+2), 3]+1]`
-/

namespace A153329.P13274134670848866888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * (n + 1) + (n + 2))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A153329.P13274134670848866888

namespace A153329

/-- `comp[lt[A000005(4*(n+1)+n+2), 3]+1]` -/
def P13274134670848866888.Spec : Prop :=
  ∀ n, (P13274134670848866888.a n : ℤ) = A153329 (n + 1)

end A153329

/-! ## A153329.P9103570087658876370

`lt[1, A160413(A001222(5*n+1)+1)]`
-/

namespace A153329.P9103570087658876370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (A001222 (5 * n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153329.P9103570087658876370

namespace A153329

/-- `lt[1, A160413(A001222(5*n+1)+1)]` -/
def P9103570087658876370.Spec : Prop :=
  ∀ n, (P9103570087658876370.a n : ℤ) = A153329 (n + 1)

end A153329

/-! ## A153329.P2907995839877579081

`lt[A006530(10*n+2), A013929(n+1)+1]`
-/

namespace A153329.P2907995839877579081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (10 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153329.P2907995839877579081

namespace A153329

/-- `lt[A006530(10*n+2), A013929(n+1)+1]` -/
def P2907995839877579081.Spec : Prop :=
  ∀ n, (P2907995839877579081.a n : ℤ) = A153329 (n + 1)

end A153329

/-! ## A153329.P11771024395915970368

`lt[A006530(A016873(2*n)), 3*(n+1)]`
-/

namespace A153329.P11771024395915970368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A016873 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153329.P11771024395915970368

namespace A153329

/-- `lt[A006530(A016873(2*n)), 3*(n+1)]` -/
def P11771024395915970368.Spec : Prop :=
  ∀ n, (P11771024395915970368.a n : ℤ) = A153329 (n + 1)

end A153329

/-! ## A153329.P7887976491490675282

`lt[A014963(5*n+1), n+2]`
-/

namespace A153329.P7887976491490675282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (5 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153329.P7887976491490675282

namespace A153329

/-- `lt[A014963(5*n+1), n+2]` -/
def P7887976491490675282.Spec : Prop :=
  ∀ n, (P7887976491490675282.a n : ℤ) = A153329 (n + 1)

end A153329

/-!
# A153330: Differences in adjacent elements of the sequence quantifying the steps needed for n to converge to 1 in the Collatz Conjecture.

The programs for A153330, there is no canonical definition to state claims against.
-/

/-! ## A153330.P24589238816705987

`A006577(n+2)-A006577(n+1)`
-/

namespace A153330.P24589238816705987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 2) - A006577 (n + 1)

end

end A153330.P24589238816705987

/-! ## A153330.P695024661980686722

`Δ[A006577(n+1)]`
-/

namespace A153330.P695024661980686722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153330.P695024661980686722

/-! ## A153330.P5660115523411782167

`Δ[A008908(n+1)]`
-/

namespace A153330.P5660115523411782167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153330.P5660115523411782167

/-! ## A153330.P6223097423670326282

`Δ[A058261(n)/(n+1)]`
-/

namespace A153330.P6223097423670326282
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058261 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153330.P6223097423670326282

/-! ## A153330.P11278039671770758372

`Δ[A139399(n+1)+A130130(n)]`
-/

namespace A153330.P11278039671770758372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (n + 1) + A130130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153330.P11278039671770758372

/-! ## A153330.P6327575878053628354

`A008908(n+2)-A008908(n+1)`
-/

namespace A153330.P6327575878053628354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 2) - A008908 (n + 1)

end

end A153330.P6327575878053628354

/-! ## A153330.P9216494832007317101

`Δ[A006667(n+1)+A006666(n+1)]`
-/

namespace A153330.P9216494832007317101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1) + A006666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153330.P9216494832007317101

/-! ## A153330.P8252074815860499130

`A139399(n+2)+1-A139399(2*(n+1))`
-/

namespace A153330.P8252074815860499130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (n + 2) + (1 - A139399 (2 * (n + 1)))

end

end A153330.P8252074815860499130

/-! ## A153330.P5905747365224055119

`Δ[A058633(2*(n+1))-A058633(2*n+1)]`
-/

namespace A153330.P5905747365224055119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058633 (2 * (n + 1)) - A058633 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153330.P5905747365224055119

/-! ## A153330.P12296433510321897594

`Δ[A186701(2*(n+1))-A186701(2*n+1)]`
-/

namespace A153330.P12296433510321897594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186701 (2 * (n + 1)) - A186701 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153330.P12296433510321897594

/-! ## A153330.P14822468887673784557

`Δ[A344276(3*(n+1))]`
-/

namespace A153330.P14822468887673784557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344276 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153330.P14822468887673784557

/-! ## A153330.P13392525372289524750

`Δ[A112695(4*(n+1))]`
-/

namespace A153330.P13392525372289524750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112695 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153330.P13392525372289524750

/-! ## A153330.P1087453864515022568

`Δ[A139399(4*(n+1))]`
-/

namespace A153330.P1087453864515022568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153330.P1087453864515022568

/-! ## A153330.P14963912766795137846

`Δ[A127886(n+1)+A127885(n+1)]`
-/

namespace A153330.P14963912766795137846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127886 (n + 1) + A127885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153330.P14963912766795137846

/-! ## A153330.P4124866010692599233

`A006577(n+2)-A210516(A000124(n))`
-/

namespace A153330.P4124866010692599233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 2) - A210516 (A000124 n).toNat

end

end A153330.P4124866010692599233

/-! ## A153330.P15351533412724409268

`Δ[A210516(A000124(n))]`
-/

namespace A153330.P15351533412724409268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210516 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153330.P15351533412724409268

/-! ## A153330.P4773104828146226248

`Δ[A210516(Δ[A000125(n)])]`
-/

namespace A153330.P4773104828146226248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210516 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153330.P4773104828146226248

/-! ## A153330.P13791131252047704963

`Δ[A210516(A000217(n)+1)]`
-/

namespace A153330.P13791131252047704963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210516 (A000217 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153330.P13791131252047704963

/-! ## A153330.P3868018688445148298

`Δ[A210688(A000217(n)+1)]`
-/

namespace A153330.P3868018688445148298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210688 (A000217 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153330.P3868018688445148298

/-! ## A153330.P6554620502014898963

`Δ[A210516(Δ[A000292(n)]-n)]`
-/

namespace A153330.P6554620502014898963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210516 (f2 (n + 1) - f2 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153330.P6554620502014898963

/-!
# A153331: Numbers k such that (10^k - 1)*140/99 + 1 is prime.

The programs for A153331, there is no canonical definition to state claims against.
-/

/-! ## A153331.P7604944853560380743

`A062210(n+1)-1`
-/

namespace A153331.P7604944853560380743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062210 (n + 1) - 1

end

end A153331.P7604944853560380743

/-! ## A153331.P8726301722049792078

`abs(1-A062210(comp[13*n]))`
-/

namespace A153331.P8726301722049792078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A062210 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A153331.P8726301722049792078

/-! ## A153331.P571466928535978563

`xor(1, A062210(A000027(n+1)))`
-/

namespace A153331.P571466928535978563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A062210 (A000027 (n + 1)).toNat)

end

end A153331.P571466928535978563

/-!
# A153332: Numbers k such that (10^k - 1)*150/99 + 1 is prime.

The programs for A153332, there is no canonical definition to state claims against.
-/

/-! ## A153332.P13816365892776239173

`A062211(n+1)-1`
-/

namespace A153332.P13816365892776239173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062211 (n + 1) - 1

end

end A153332.P13816365892776239173

/-! ## A153332.P16815977673970754782

`xor(1, A062211(A005496(n)))`
-/

namespace A153332.P16815977673970754782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A062211 (A005496 n).toNat)

end

end A153332.P16815977673970754782

/-! ## A153332.P2455813725206814566

`xor(1, A062211(A000027(n+1)))`
-/

namespace A153332.P2455813725206814566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A062211 (A000027 (n + 1)).toNat)

end

end A153332.P2455813725206814566

/-! ## A153332.P1063952462128559320

`xor(1, A062211(A008728(n)))`
-/

namespace A153332.P1063952462128559320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A062211 (A008728 n).toNat)

end

end A153332.P1063952462128559320

/-! ## A153332.P17190726479248496137

`A004442(A062211(n+1))`
-/

namespace A153332.P17190726479248496137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A062211 (n + 1)).toNat

end

end A153332.P17190726479248496137

/-!
# A153333: Numbers k such that (10^k - 1)*160/99 + 1 is prime.

The programs for A153333, there is no canonical definition to state claims against.
-/

/-! ## A153333.P3589835180088838421

`A062212(n+1)-1`
-/

namespace A153333.P3589835180088838421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062212 (n + 1) - 1

end

end A153333.P3589835180088838421

/-!
# A153334: Number of zig-zag paths from top to bottom of an n X n square whose color is that of the top right corner.

The programs for A153334, the canonical program `A153334.P13771578035933822493` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153334 has offset 1).

The definition of A153334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153334.P10120467209674587014

`A206603(n)+A027306(n)`
-/

namespace A153334.P10120467209674587014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 n + A027306 n

end

end A153334.P10120467209674587014

namespace A153334

/-- `A206603(n)+A027306(n)` -/
def P10120467209674587014.Spec : Prop :=
  ∀ n, P10120467209674587014.a n = A153334 (n + 1)

end A153334

/-! ## A153334.P15040698461474462317

`A182555(n)-A058622(n)`
-/

namespace A153334.P15040698461474462317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182555 n - A058622 n

end

end A153334.P15040698461474462317

namespace A153334

/-- `A182555(n)-A058622(n)` -/
def P15040698461474462317.Spec : Prop :=
  ∀ n, P15040698461474462317.a n = A153334 (n + 1)

end A153334

/-! ## A153334.P16346510189788526755

`A245560(n)-A100071(n)`
-/

namespace A153334.P16346510189788526755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245560 n - A100071 n

end

end A153334.P16346510189788526755

namespace A153334

/-- `A245560(n)-A100071(n)` -/
def P16346510189788526755.Spec : Prop :=
  ∀ n, P16346510189788526755.a n = A153334 (n + 1)

end A153334

/-! ## A153334.P12286049149102875209

`A153335(n+1)+A126869(n)`
-/

namespace A153334.P12286049149102875209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153335 (n + 1) + A126869 n

end

end A153334.P12286049149102875209

namespace A153334

/-- `A153335(n+1)+A126869(n)` -/
def P12286049149102875209.Spec : Prop :=
  ∀ n, P12286049149102875209.a n = A153334 (n + 1)

end A153334

/-! ## A153334.P13771578035933822493

`A001792(n)-2*A100071(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153334

/-- `A001792(n)-2*A100071(n)` -/
def P13771578035933822493.Spec : Prop :=
  ∀ n, P13771578035933822493.a n = A153334 (n + 1)

theorem P13771578035933822493.correct : P13771578035933822493.Spec := by
  intro n
  simp only [A153334, Nat.add_sub_cancel]

end A153334

/-! ## A153334.P8335763904322690160

`∑[A045623(n)]-2*A100071(n)`
-/

namespace A153334.P8335763904322690160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A100071 n

end

end A153334.P8335763904322690160

namespace A153334

/-- `∑[A045623(n)]-2*A100071(n)` -/
def P8335763904322690160.Spec : Prop :=
  ∀ n, P8335763904322690160.a n = A153334 (n + 1)

end A153334

/-! ## A153334.P16835994881082514584

`record[A211164(n)]-2*A100071(n)`
-/

namespace A153334.P16835994881082514584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2 * A100071 n

end

end A153334.P16835994881082514584

namespace A153334

/-- `record[A211164(n)]-2*A100071(n)` -/
def P16835994881082514584.Spec : Prop :=
  ∀ n, P16835994881082514584.a n = A153334 (n + 1)

end A153334

/-! ## A153334.P9226352313715968560

`A000079(n)+A001787(n)-2*A100071(n)`
-/

namespace A153334.P9226352313715968560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A001787 n - 2 * A100071 n)

end

end A153334.P9226352313715968560

namespace A153334

/-- `A000079(n)+A001787(n)-2*A100071(n)` -/
def P9226352313715968560.Spec : Prop :=
  ∀ n, P9226352313715968560.a n = A153334 (n + 1)

end A153334

/-! ## A153334.P6126145059076704343

`Δ[A001787(n)]-2*A100071(n)`
-/

namespace A153334.P6126145059076704343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A100071 n

end

end A153334.P6126145059076704343

namespace A153334

/-- `Δ[A001787(n)]-2*A100071(n)` -/
def P6126145059076704343.Spec : Prop :=
  ∀ n, P6126145059076704343.a n = A153334 (n + 1)

end A153334

/-! ## A153334.P5319461446702401653

`Δ[A005183(n)]-2*A100071(n)`
-/

namespace A153334.P5319461446702401653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A100071 n

end

end A153334.P5319461446702401653

namespace A153334

/-- `Δ[A005183(n)]-2*A100071(n)` -/
def P5319461446702401653.Spec : Prop :=
  ∀ n, P5319461446702401653.a n = A153334 (n + 1)

end A153334

/-! ## A153334.P1298448887014506304

`A102699(n+1)-A153335(n+1)`
-/

namespace A153334.P1298448887014506304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102699 (n + 1) - A153335 (n + 1)

end

end A153334.P1298448887014506304

namespace A153334

/-- `A102699(n+1)-A153335(n+1)` -/
def P1298448887014506304.Spec : Prop :=
  ∀ n, P1298448887014506304.a n = A153334 (n + 1)

end A153334

/-!
# A153335: Number of zig-zag paths from top to bottom of an n X n square whose color is not that of the top right corner.

The programs for A153335, the canonical program `A153335.P14857227922523687050` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153335 has offset 1).

The definition of A153335 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153335.P3973914372365731664

`A206603(n)+A058622(n)`
-/

namespace A153335.P3973914372365731664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 n + A058622 n

end

end A153335.P3973914372365731664

namespace A153335

/-- `A206603(n)+A058622(n)` -/
def P3973914372365731664.Spec : Prop :=
  ∀ n, P3973914372365731664.a n = A153335 (n + 1)

end A153335

/-! ## A153335.P2316615468933000826

`A182555(n)-A027306(n)`
-/

namespace A153335.P2316615468933000826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182555 n - A027306 n

end

end A153335.P2316615468933000826

namespace A153335

/-- `A182555(n)-A027306(n)` -/
def P2316615468933000826.Spec : Prop :=
  ∀ n, P2316615468933000826.a n = A153335 (n + 1)

theorem P2316615468933000826.correct : P2316615468933000826.Spec := by
  intro n
  simp only [A153335, Nat.add_sub_cancel, A153335.P2316615468933000826.a, A153335.P14857227922523687050.a, A001792, A001792.P8277491211121309808.a, A027306, A027306.P2966041652703629727.a, A100071, A100071.P108043524234924627.a, A182555, A182555.P4612867072512672630.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153335

/-! ## A153335.P14857227922523687050

`A001792(n)-A100071(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153335

/-- `A001792(n)-A100071(n+1)` -/
def P14857227922523687050.Spec : Prop :=
  ∀ n, P14857227922523687050.a n = A153335 (n + 1)

theorem P14857227922523687050.correct : P14857227922523687050.Spec := by
  intro n
  simp only [A153335, Nat.add_sub_cancel]

end A153335

/-! ## A153335.P13248849847608188824

`A130783(n)-A107373(n+1)`
-/

namespace A153335.P13248849847608188824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130783 n - A107373 (n + 1)

end

end A153335.P13248849847608188824

namespace A153335

/-- `A130783(n)-A107373(n+1)` -/
def P13248849847608188824.Spec : Prop :=
  ∀ n, P13248849847608188824.a n = A153335 (n + 1)

end A153335

/-! ## A153335.P2500435756546955986

`A153334(n+1)-A126869(n)`
-/

namespace A153335.P2500435756546955986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153334 (n + 1) - A126869 n

end

end A153335.P2500435756546955986

namespace A153335

/-- `A153334(n+1)-A126869(n)` -/
def P2500435756546955986.Spec : Prop :=
  ∀ n, P2500435756546955986.a n = A153335 (n + 1)

end A153335

/-! ## A153335.P7513026337589512661

`∑[A045623(n)]-A100071(n+1)`
-/

namespace A153335.P7513026337589512661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A100071 (n + 1)

end

end A153335.P7513026337589512661

namespace A153335

/-- `∑[A045623(n)]-A100071(n+1)` -/
def P7513026337589512661.Spec : Prop :=
  ∀ n, P7513026337589512661.a n = A153335 (n + 1)

end A153335

/-! ## A153335.P1114971565038336892

`record[A211164(n)]-A100071(n+1)`
-/

namespace A153335.P1114971565038336892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A100071 (n + 1)

end

end A153335.P1114971565038336892

namespace A153335

/-- `record[A211164(n)]-A100071(n+1)` -/
def P1114971565038336892.Spec : Prop :=
  ∀ n, P1114971565038336892.a n = A153335 (n + 1)

end A153335

/-! ## A153335.P4081474581779377485

`A001787(n)-2*A107373(n+1)`
-/

namespace A153335.P4081474581779377485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n - 2 * A107373 (n + 1)

end

end A153335.P4081474581779377485

namespace A153335

/-- `A001787(n)-2*A107373(n+1)` -/
def P4081474581779377485.Spec : Prop :=
  ∀ n, P4081474581779377485.a n = A153335 (n + 1)

end A153335

/-! ## A153335.P14030980922574803061

`A211164(2*n+1)-A100071(n+1)`
-/

namespace A153335.P14030980922574803061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211164 (2 * n + 1) - A100071 (n + 1)

end

end A153335.P14030980922574803061

namespace A153335

/-- `A211164(2*n+1)-A100071(n+1)` -/
def P14030980922574803061.Spec : Prop :=
  ∀ n, P14030980922574803061.a n = A153335 (n + 1)

end A153335

/-! ## A153335.P1590969383759602974

`A130783(n)+A130783(n)-A001787(n)`
-/

namespace A153335.P1590969383759602974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130783 n + (A130783 n - A001787 n)

end

end A153335.P1590969383759602974

namespace A153335

/-- `A130783(n)+A130783(n)-A001787(n)` -/
def P1590969383759602974.Spec : Prop :=
  ∀ n, P1590969383759602974.a n = A153335 (n + 1)

end A153335

/-! ## A153335.P5042026303068310401

`A000079(n)+A001787(n)-A100071(n+1)`
-/

namespace A153335.P5042026303068310401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A001787 n - A100071 (n + 1))

end

end A153335.P5042026303068310401

namespace A153335

/-- `A000079(n)+A001787(n)-A100071(n+1)` -/
def P5042026303068310401.Spec : Prop :=
  ∀ n, P5042026303068310401.a n = A153335 (n + 1)

end A153335

/-! ## A153335.P4274409018262573971

`A045623(n+1)-(A100071(n+1)+A011782(n+1))`
-/

namespace A153335.P4274409018262573971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (n + 1) - (A100071 (n + 1) + A011782 (n + 1))

end

end A153335.P4274409018262573971

namespace A153335

/-- `A045623(n+1)-(A100071(n+1)+A011782(n+1))` -/
def P4274409018262573971.Spec : Prop :=
  ∀ n, P4274409018262573971.a n = A153335 (n + 1)

end A153335

/-! ## A153335.P4494331547402749537

`2*A130783(n)-A001787(n)`
-/

namespace A153335.P4494331547402749537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130783 n - A001787 n

end

end A153335.P4494331547402749537

namespace A153335

/-- `2*A130783(n)-A001787(n)` -/
def P4494331547402749537.Spec : Prop :=
  ∀ n, P4494331547402749537.a n = A153335 (n + 1)

end A153335

/-! ## A153335.P1942866076654130173

`Δ[A001787(n)]-A100071(n+1)`
-/

namespace A153335.P1942866076654130173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A100071 (n + 1)

end

end A153335.P1942866076654130173

namespace A153335

/-- `Δ[A001787(n)]-A100071(n+1)` -/
def P1942866076654130173.Spec : Prop :=
  ∀ n, P1942866076654130173.a n = A153335 (n + 1)

end A153335

/-! ## A153335.P13226479118010726331

`Δ[A005183(n)]-A100071(n+1)`
-/

namespace A153335.P13226479118010726331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A100071 (n + 1)

end

end A153335.P13226479118010726331

namespace A153335

/-- `Δ[A005183(n)]-A100071(n+1)` -/
def P13226479118010726331.Spec : Prop :=
  ∀ n, P13226479118010726331.a n = A153335 (n + 1)

end A153335

/-! ## A153335.P13221201654628633589

`A102699(n+1)-A153334(n+1)`
-/

namespace A153335.P13221201654628633589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102699 (n + 1) - A153334 (n + 1)

end

end A153335.P13221201654628633589

namespace A153335

/-- `A102699(n+1)-A153334(n+1)` -/
def P13221201654628633589.Spec : Prop :=
  ∀ n, P13221201654628633589.a n = A153335 (n + 1)

end A153335

/-! ## A153335.P1086226283870851829

`Δ[A001787(n)-A100071(n)]-A100071(n)`
-/

namespace A153335.P1086226283870851829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n - A100071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A100071 n

end

end A153335.P1086226283870851829

namespace A153335

/-- `Δ[A001787(n)-A100071(n)]-A100071(n)` -/
def P1086226283870851829.Spec : Prop :=
  ∀ n, P1086226283870851829.a n = A153335 (n + 1)

end A153335

/-! ## A153335.P4245938921540614748

`Δ[A005183(n)-A100071(n)]-A100071(n)`
-/

namespace A153335.P4245938921540614748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 n - A100071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A100071 n

end

end A153335.P4245938921540614748

namespace A153335

/-- `Δ[A005183(n)-A100071(n)]-A100071(n)` -/
def P4245938921540614748.Spec : Prop :=
  ∀ n, P4245938921540614748.a n = A153335 (n + 1)

end A153335

/-! ## A153335.P3262543426852215478

`A348864(n+1)-(A002378(n)+A001787(n))`
-/

namespace A153335.P3262543426852215478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348864 (n + 1) - (A002378 n + A001787 n)

end

end A153335.P3262543426852215478

namespace A153335

/-- `A348864(n+1)-(A002378(n)+A001787(n))` -/
def P3262543426852215478.Spec : Prop :=
  ∀ n, P3262543426852215478.a n = A153335 (n + 1)

end A153335

/-! ## A153335.P8616276436491254158

`A001787(n+1)-(A100071(n+1)+A001787(n))`
-/

namespace A153335.P8616276436491254158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) - (A100071 (n + 1) + A001787 n)

end

end A153335.P8616276436491254158

namespace A153335

/-- `A001787(n+1)-(A100071(n+1)+A001787(n))` -/
def P8616276436491254158.Spec : Prop :=
  ∀ n, P8616276436491254158.a n = A153335 (n + 1)

end A153335

/-!
# A153336: Number of zig-zag paths from top to bottom of a 2n by 2n square whose color is that of the top right corner.

The programs for A153336, the canonical program `A153336.P13409295494595563393` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153336 has offset 1).

The definition of A153336 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153336.P13409295494595563393

`(2*(n+1)+1)*2^(2*(n+1)-2)-2*(2*(n+1)-1)*C(2*(n+1)-2, n)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153336

/-- `(2*(n+1)+1)*2^(2*(n+1)-2)-2*(2*(n+1)-1)*C(2*(n+1)-2, n)` -/
def P13409295494595563393.Spec : Prop :=
  ∀ n, P13409295494595563393.a n = (A153336 (n + 1) : ℚ)

end A153336

/-! ## A153336.P17215142378366788914

`A152086(2*(n+1))`
-/

namespace A153336.P17215142378366788914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152086 (2 * (n + 1))

end

end A153336.P17215142378366788914

namespace A153336

/-- `A152086(2*(n+1))` -/
def P17215142378366788914.Spec : Prop :=
  ∀ n, P17215142378366788914.a n = A153336 (n + 1)

end A153336

/-! ## A153336.P3079689303355594554

`A153334(2*(n+1))`
-/

namespace A153336.P3079689303355594554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153334 (2 * (n + 1))

end

end A153336.P3079689303355594554

namespace A153336

/-- `A153334(2*(n+1))` -/
def P3079689303355594554.Spec : Prop :=
  ∀ n, P3079689303355594554.a n = A153336 (n + 1)

end A153336

/-! ## A153336.P13744403388796628970

`A153335(2*(n+1))`
-/

namespace A153336.P13744403388796628970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153335 (2 * (n + 1))

end

end A153336.P13744403388796628970

namespace A153336

/-- `A153335(2*(n+1))` -/
def P13744403388796628970.Spec : Prop :=
  ∀ n, P13744403388796628970.a n = A153336 (n + 1)

end A153336

/-! ## A153336.P10060797148724794655

`A102699(2*(n+1))/2`
-/

namespace A153336.P10060797148724794655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102699 (2 * (n + 1)) : ℚ) / 2

end

end A153336.P10060797148724794655

namespace A153336

/-- `A102699(2*(n+1))/2` -/
def P10060797148724794655.Spec : Prop :=
  ∀ n, P10060797148724794655.a n = (A153336 (n + 1) : ℚ)

end A153336

/-! ## A153336.P15209132063717808774

`record[A153334(A093178(n)+1)]`
-/

namespace A153336.P15209132063717808774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153334 (A093178 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153336.P15209132063717808774

namespace A153336

/-- `record[A153334(A093178(n)+1)]` -/
def P15209132063717808774.Spec : Prop :=
  ∀ n, P15209132063717808774.a n = A153336 (n + 1)

end A153336

/-! ## A153336.P15973134367657407700

`floor(A153335(A103517(n))+acot(n))`
-/

namespace A153336.P15973134367657407700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A153335 (A103517 n).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A153336.P15973134367657407700

namespace A153336

/-- `floor(A153335(A103517(n))+acot(n))` -/
def P15973134367657407700.Spec : Prop :=
  ∀ n, P15973134367657407700.a n = A153336 (n + 1)

end A153336

/-! ## A153336.P13202230972334098584

`∩[A153335(n+1), A152086(n+2)]`
-/

namespace A153336.P13202230972334098584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152086 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153336.P13202230972334098584

namespace A153336

/-- `∩[A153335(n+1), A152086(n+2)]` -/
def P13202230972334098584.Spec : Prop :=
  ∀ n, (P13202230972334098584.a n : ℤ) = A153336 (n + 1)

end A153336

/-! ## A153336.P1502601420970020902

`A206603(2*n+1)+A000079(n)²`
-/

namespace A153336.P1502601420970020902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 (2 * n + 1) + A000079 n ^ 2

end

end A153336.P1502601420970020902

namespace A153336

/-- `A206603(2*n+1)+A000079(n)²` -/
def P1502601420970020902.Spec : Prop :=
  ∀ n, P1502601420970020902.a n = A153336 (n + 1)

end A153336

/-! ## A153336.P15217060284913929890

`A206603(2*n+1)+A000079(2*n)`
-/

namespace A153336.P15217060284913929890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 (2 * n + 1) + A000079 (2 * n)

end

end A153336.P15217060284913929890

namespace A153336

/-- `A206603(2*n+1)+A000079(2*n)` -/
def P15217060284913929890.Spec : Prop :=
  ∀ n, P15217060284913929890.a n = A153336 (n + 1)

end A153336

/-! ## A153336.P6531707292790611702

`A189390(2*n+1)-A036289(2*n)`
-/

namespace A153336.P6531707292790611702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189390 (2 * n + 1) - A036289 (2 * n)

end

end A153336.P6531707292790611702

namespace A153336

/-- `A189390(2*n+1)-A036289(2*n)` -/
def P6531707292790611702.Spec : Prop :=
  ∀ n, P6531707292790611702.a n = A153336 (n + 1)

end A153336

/-! ## A153336.P11187126731598133637

`A206603(2*n+1)+(A000225(n)+1)²`
-/

namespace A153336.P11187126731598133637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 (2 * n + 1) + (A000225 n + 1) ^ 2

end

end A153336.P11187126731598133637

namespace A153336

/-- `A206603(2*n+1)+(A000225(n)+1)²` -/
def P11187126731598133637.Spec : Prop :=
  ∀ n, P11187126731598133637.a n = A153336 (n + 1)

end A153336

/-! ## A153336.P4843828686297303788

`A206603(2*n+1)+A131577(n+1)²`
-/

namespace A153336.P4843828686297303788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 (2 * n + 1) + A131577 (n + 1) ^ 2

end

end A153336.P4843828686297303788

namespace A153336

/-- `A206603(2*n+1)+A131577(n+1)²` -/
def P4843828686297303788.Spec : Prop :=
  ∀ n, P4843828686297303788.a n = A153336 (n + 1)

end A153336

/-! ## A153336.P8312592797574647067

`A206603(2*n+1)+(1-A000051(n))²`
-/

namespace A153336.P8312592797574647067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 (2 * n + 1) + (1 - A000051 n) ^ 2

end

end A153336.P8312592797574647067

namespace A153336

/-- `A206603(2*n+1)+(1-A000051(n))²` -/
def P8312592797574647067.Spec : Prop :=
  ∀ n, P8312592797574647067.a n = A153336 (n + 1)

end A153336

/-! ## A153336.P16407623458232544347

`A206603(2*n+1)+A000225(2*n)+1`
-/

namespace A153336.P16407623458232544347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 (2 * n + 1) + (A000225 (2 * n) + 1)

end

end A153336.P16407623458232544347

namespace A153336

/-- `A206603(2*n+1)+A000225(2*n)+1` -/
def P16407623458232544347.Spec : Prop :=
  ∀ n, P16407623458232544347.a n = A153336 (n + 1)

end A153336

/-! ## A153336.P193984892476715869

`A206603(2*n+1)+A027306(2*n+1)`
-/

namespace A153336.P193984892476715869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 (2 * n + 1) + A027306 (2 * n + 1)

end

end A153336.P193984892476715869

namespace A153336

/-- `A206603(2*n+1)+A027306(2*n+1)` -/
def P193984892476715869.Spec : Prop :=
  ∀ n, P193984892476715869.a n = A153336 (n + 1)

end A153336

/-! ## A153336.P12048311865820724673

`A206603(2*n+1)+A058622(2*n+1)`
-/

namespace A153336.P12048311865820724673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 (2 * n + 1) + A058622 (2 * n + 1)

end

end A153336.P12048311865820724673

namespace A153336

/-- `A206603(2*n+1)+A058622(2*n+1)` -/
def P12048311865820724673.Spec : Prop :=
  ∀ n, P12048311865820724673.a n = A153336 (n + 1)

end A153336

/-! ## A153336.P4037926831885629854

`A206603(2*n+1)+A131577(2*n+1)`
-/

namespace A153336.P4037926831885629854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 (2 * n + 1) + A131577 (2 * n + 1)

end

end A153336.P4037926831885629854

namespace A153336

/-- `A206603(2*n+1)+A131577(2*n+1)` -/
def P4037926831885629854.Spec : Prop :=
  ∀ n, P4037926831885629854.a n = A153336 (n + 1)

end A153336

/-! ## A153336.P94734529937691358

`A206603(2*n+1)+A000051(2*n)-1`
-/

namespace A153336.P94734529937691358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 (2 * n + 1) + (A000051 (2 * n) - 1)

end

end A153336.P94734529937691358

namespace A153336

/-- `A206603(2*n+1)+A000051(2*n)-1` -/
def P94734529937691358.Spec : Prop :=
  ∀ n, P94734529937691358.a n = A153336 (n + 1)

end A153336

/-! ## A153336.P4837386940102307600

`A182555(2*n+1)-A027306(2*n+1)`
-/

namespace A153336.P4837386940102307600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182555 (2 * n + 1) - A027306 (2 * n + 1)

end

end A153336.P4837386940102307600

namespace A153336

/-- `A182555(2*n+1)-A027306(2*n+1)` -/
def P4837386940102307600.Spec : Prop :=
  ∀ n, P4837386940102307600.a n = A153336 (n + 1)

end A153336

/-!
# A153337: Number of zig-zag paths from top to bottom of a 2n-1 by 2n-1 square whose color is that of the top right corner.

The programs for A153337, the canonical program `A153337.P6734870561613962584` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153337 has offset 1).

The definition of A153337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153337.P6734870561613962584

`(n+1)*2^(2*(n+1)-2)-2*n*C(2*(n+1)-2, n)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153337

/-- `(n+1)*2^(2*(n+1)-2)-2*n*C(2*(n+1)-2, n)` -/
def P6734870561613962584.Spec : Prop :=
  ∀ n, P6734870561613962584.a n = (A153337 (n + 1) : ℚ)

end A153337

/-! ## A153337.P14754354263964999723

`A153334(Δ[n²])`
-/

namespace A153337.P14754354263964999723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153334 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A153337.P14754354263964999723

namespace A153337

/-- `A153334(Δ[n²])` -/
def P14754354263964999723.Spec : Prop :=
  ∀ n, P14754354263964999723.a n = A153337 (n + 1)

end A153337

/-! ## A153337.P4278958165082571047

`lcm(n+1, A153334(2*n+1))`
-/

namespace A153337.P4278958165082571047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A153334 (2 * n + 1))

end

end A153337.P4278958165082571047

namespace A153337

/-- `lcm(n+1, A153334(2*n+1))` -/
def P4278958165082571047.Spec : Prop :=
  ∀ n, (P4278958165082571047.a n : ℤ) = A153337 (n + 1)

end A153337

/-! ## A153337.P4869826210112986201

`record[log2(gcd(2, n))*A153334(n+1)]`
-/

namespace A153337.P4869826210112986201
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (A153334 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153337.P4869826210112986201

namespace A153337

/-- `record[log2(gcd(2, n))*A153334(n+1)]` -/
def P4869826210112986201.Spec : Prop :=
  ∀ n, P4869826210112986201.a n = (A153337 (n + 1) : ℝ)

end A153337

/-! ## A153337.P3885709926151824929

`record[A153334(A093178(n))]`
-/

namespace A153337.P3885709926151824929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153334 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153337.P3885709926151824929

namespace A153337

/-- `record[A153334(A093178(n))]` -/
def P3885709926151824929.Spec : Prop :=
  ∀ n, P3885709926151824929.a n = A153337 (n + 1)

end A153337

/-! ## A153337.P168003001595119451

`A018215(n)-A068552(n)`
-/

namespace A153337.P168003001595119451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018215 n - A068552 n

end

end A153337.P168003001595119451

namespace A153337

/-- `A018215(n)-A068552(n)` -/
def P168003001595119451.Spec : Prop :=
  ∀ n, P168003001595119451.a n = A153337 (n + 1)

end A153337

/-! ## A153337.P12086395160176721938

`A153338(n+1)+A000984(n)`
-/

namespace A153337.P12086395160176721938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153338 (n + 1) + A000984 n

end

end A153337.P12086395160176721938

namespace A153337

/-- `A153338(n+1)+A000984(n)` -/
def P12086395160176721938.Spec : Prop :=
  ∀ n, P12086395160176721938.a n = A153337 (n + 1)

end A153337

/-! ## A153337.P16426519203516744877

`A000984(n)+2*A018218(n)`
-/

namespace A153337.P16426519203516744877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 2 * A018218 n

end

end A153337.P16426519203516744877

namespace A153337

/-- `A000984(n)+2*A018218(n)` -/
def P16426519203516744877.Spec : Prop :=
  ∀ n, P16426519203516744877.a n = A153337 (n + 1)

end A153337

/-! ## A153337.P1952640508284324373

`A153335(2*n+1)+A000984(n)`
-/

namespace A153337.P1952640508284324373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153335 (2 * n + 1) + A000984 n

end

end A153337.P1952640508284324373

namespace A153337

/-- `A153335(2*n+1)+A000984(n)` -/
def P1952640508284324373.Spec : Prop :=
  ∀ n, P1952640508284324373.a n = A153337 (n + 1)

end A153337

/-! ## A153337.P16806860074034914009

`A153338(n+1)+A063886(2*n)`
-/

namespace A153337.P16806860074034914009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153338 (n + 1) + A063886 (2 * n)

end

end A153337.P16806860074034914009

namespace A153337

/-- `A153338(n+1)+A063886(2*n)` -/
def P16806860074034914009.Spec : Prop :=
  ∀ n, P16806860074034914009.a n = A153337 (n + 1)

end A153337

/-! ## A153337.P1223716285287904887

`A002697(n+1)-2*A005430(n)`
-/

namespace A153337.P1223716285287904887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 (n + 1) - 2 * A005430 n

end

end A153337.P1223716285287904887

namespace A153337

/-- `A002697(n+1)-2*A005430(n)` -/
def P1223716285287904887.Spec : Prop :=
  ∀ n, P1223716285287904887.a n = A153337 (n + 1)

end A153337

/-! ## A153337.P7837929268589708922

`A206603(2*n)+A027306(2*n)`
-/

namespace A153337.P7837929268589708922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 (2 * n) + A027306 (2 * n)

end

end A153337.P7837929268589708922

namespace A153337

/-- `A206603(2*n)+A027306(2*n)` -/
def P7837929268589708922.Spec : Prop :=
  ∀ n, P7837929268589708922.a n = A153337 (n + 1)

end A153337

/-! ## A153337.P14162961624834061199

`A182555(2*n)-A058622(2*n)`
-/

namespace A153337.P14162961624834061199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182555 (2 * n) - A058622 (2 * n)

end

end A153337.P14162961624834061199

namespace A153337

/-- `A182555(2*n)-A058622(2*n)` -/
def P14162961624834061199.Spec : Prop :=
  ∀ n, P14162961624834061199.a n = A153337 (n + 1)

end A153337

/-! ## A153337.P4846674372786480211

`A153335(2*n+1)+A126869(2*n)`
-/

namespace A153337.P4846674372786480211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153335 (2 * n + 1) + A126869 (2 * n)

end

end A153337.P4846674372786480211

namespace A153337

/-- `A153335(2*n+1)+A126869(2*n)` -/
def P4846674372786480211.Spec : Prop :=
  ∀ n, P4846674372786480211.a n = A153337 (n + 1)

end A153337

/-! ## A153337.P9333209118345465954

`A001792(2*n)-2*A100071(2*n)`
-/

namespace A153337.P9333209118345465954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (2 * n) - 2 * A100071 (2 * n)

end

end A153337.P9333209118345465954

namespace A153337

/-- `A001792(2*n)-2*A100071(2*n)` -/
def P9333209118345465954.Spec : Prop :=
  ∀ n, P9333209118345465954.a n = A153337 (n + 1)

end A153337

/-! ## A153337.P1301595441576703591

`A002697(n+1)+A000984(n)-A002457(n)`
-/

namespace A153337.P1301595441576703591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 (n + 1) + (A000984 n - A002457 n)

end

end A153337.P1301595441576703591

namespace A153337

/-- `A002697(n+1)+A000984(n)-A002457(n)` -/
def P1301595441576703591.Spec : Prop :=
  ∀ n, P1301595441576703591.a n = A153337 (n + 1)

end A153337

/-! ## A153337.P4317090204373071745

`A056040(2*n)+A002697(n+1)-A056040(2*n+1)`
-/

namespace A153337.P4317090204373071745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (2 * n) + (A002697 (n + 1) - A056040 (2 * n + 1))

end

end A153337.P4317090204373071745

namespace A153337

/-- `A056040(2*n)+A002697(n+1)-A056040(2*n+1)` -/
def P4317090204373071745.Spec : Prop :=
  ∀ n, P4317090204373071745.a n = A153337 (n + 1)

end A153337

/-! ## A153337.P16667455299903816145

`A001792(2*n)+A056040(2*n)-A056040(2*n+1)`
-/

namespace A153337.P16667455299903816145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (2 * n) + (A056040 (2 * n) - A056040 (2 * n + 1))

end

end A153337.P16667455299903816145

namespace A153337

/-- `A001792(2*n)+A056040(2*n)-A056040(2*n+1)` -/
def P16667455299903816145.Spec : Prop :=
  ∀ n, P16667455299903816145.a n = A153337 (n + 1)

end A153337

/-! ## A153337.P13558339803196826929

`A027306(2*n)+A182555(2*n)-A027306(2*n+1)`
-/

namespace A153337.P13558339803196826929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 (2 * n) + (A182555 (2 * n) - A027306 (2 * n + 1))

end

end A153337.P13558339803196826929

namespace A153337

/-- `A027306(2*n)+A182555(2*n)-A027306(2*n+1)` -/
def P13558339803196826929.Spec : Prop :=
  ∀ n, P13558339803196826929.a n = A153337 (n + 1)

end A153337

/-! ## A153337.P18055729983712918419

`A058622(2*n+1)+A206603(2*n)-A058622(2*n)`
-/

namespace A153337.P18055729983712918419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058622 (2 * n + 1) + (A206603 (2 * n) - A058622 (2 * n))

end

end A153337.P18055729983712918419

namespace A153337

/-- `A058622(2*n+1)+A206603(2*n)-A058622(2*n)` -/
def P18055729983712918419.Spec : Prop :=
  ∀ n, P18055729983712918419.a n = A153337 (n + 1)

end A153337

/-!
# A153338: Number of zig-zag paths from top to bottom of a 2n-1 by 2n-1 square whose color is not that of the top right corner.

The programs for A153338, the canonical program `A153338.P18059927680759703308` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153338 has offset 1).

The definition of A153338 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153338.P18059927680759703308

`4^n*(n+1)-C(2*n, n)*(2*n+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153338

/-- `4^n*(n+1)-C(2*n, n)*(2*n+1)` -/
def P18059927680759703308.Spec : Prop :=
  ∀ n, P18059927680759703308.a n = A153338 (n + 1)

theorem P18059927680759703308.correct : P18059927680759703308.Spec := by
  intro n
  simp only [A153338, Nat.add_sub_cancel]

end A153338

/-! ## A153338.P1777652245370534979

`2*A018218(n)`
-/

namespace A153338.P1777652245370534979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018218 n

end

end A153338.P1777652245370534979

namespace A153338

/-- `2*A018218(n)` -/
def P1777652245370534979.Spec : Prop :=
  ∀ n, P1777652245370534979.a n = A153338 (n + 1)

end A153338

/-! ## A153338.P12052864202177548511

`A153335(Δ[n²])`
-/

namespace A153338.P12052864202177548511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153335 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A153338.P12052864202177548511

namespace A153338

/-- `A153335(Δ[n²])` -/
def P12052864202177548511.Spec : Prop :=
  ∀ n, P12052864202177548511.a n = A153338 (n + 1)

end A153338

/-! ## A153338.P13008671728960748367

`(n+1)*A008549(n)`
-/

namespace A153338.P13008671728960748367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008549 n

end

end A153338.P13008671728960748367

namespace A153338

/-- `(n+1)*A008549(n)` -/
def P13008671728960748367.Spec : Prop :=
  ∀ n, P13008671728960748367.a n = A153338 (n + 1)

end A153338

/-! ## A153338.P17183268395255263686

`lcm(2, A153335(2*n+1))`
-/

namespace A153338.P17183268395255263686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A153335 (2 * n + 1))

end

end A153338.P17183268395255263686

namespace A153338

/-- `lcm(2, A153335(2*n+1))` -/
def P17183268395255263686.Spec : Prop :=
  ∀ n, (P17183268395255263686.a n : ℤ) = A153338 (n + 1)

end A153338

/-! ## A153338.P7543685051257775927

`(n+1)*A093387(Δ[n²])`
-/

namespace A153338.P7543685051257775927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A093387 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A153338.P7543685051257775927

namespace A153338

/-- `(n+1)*A093387(Δ[n²])` -/
def P7543685051257775927.Spec : Prop :=
  ∀ n, P7543685051257775927.a n = A153338 (n + 1)

end A153338

/-! ## A153338.P5018275979372898356

`(n+1)*A294175(Δ[n²])`
-/

namespace A153338.P5018275979372898356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A294175 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A153338.P5018275979372898356

namespace A153338

/-- `(n+1)*A294175(Δ[n²])` -/
def P5018275979372898356.Spec : Prop :=
  ∀ n, P5018275979372898356.a n = A153338 (n + 1)

end A153338

/-! ## A153338.P9693179173107691132

`A018215(n)-A172060(n)`
-/

namespace A153338.P9693179173107691132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018215 n - A172060 n

end

end A153338.P9693179173107691132

namespace A153338

/-- `A018215(n)-A172060(n)` -/
def P9693179173107691132.Spec : Prop :=
  ∀ n, P9693179173107691132.a n = A153338 (n + 1)

theorem P9693179173107691132.correct : P9693179173107691132.Spec := by
  intro n
  simp only [A153338, Nat.add_sub_cancel, A153338.P9693179173107691132.a, A153338.P18059927680759703308.a, A018215, A018215.P2890906494214168874.a, A172060, A172060.P5248690933070459008.a, A000302, A000302.P5166485833484575275.a, A002457, A002457.P9253550667326779954.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A153338

/-! ## A153338.P13036621807476420373

`A001316(n)*A380952(n)`
-/

namespace A153338.P13036621807476420373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A380952 n

end

end A153338.P13036621807476420373

namespace A153338

/-- `A001316(n)*A380952(n)` -/
def P13036621807476420373.Spec : Prop :=
  ∀ n, P13036621807476420373.a n = A153338 (n + 1)

end A153338

/-! ## A153338.P10456400046172369462

`lcm(A001316(n), A018218(n))`
-/

namespace A153338.P10456400046172369462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 n) (A018218 n)

end

end A153338.P10456400046172369462

namespace A153338

/-- `lcm(A001316(n), A018218(n))` -/
def P10456400046172369462.Spec : Prop :=
  ∀ n, (P10456400046172369462.a n : ℤ) = A153338 (n + 1)

end A153338

/-! ## A153338.P401022452301779631

`A002697(n+1)-A002457(n)`
-/

namespace A153338.P401022452301779631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 (n + 1) - A002457 n

end

end A153338.P401022452301779631

namespace A153338

/-- `A002697(n+1)-A002457(n)` -/
def P401022452301779631.Spec : Prop :=
  ∀ n, P401022452301779631.a n = A153338 (n + 1)

end A153338

/-! ## A153338.P2900850813813555825

`A153337(n+1)-A000984(n)`
-/

namespace A153338.P2900850813813555825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153337 (n + 1) - A000984 n

end

end A153338.P2900850813813555825

namespace A153338

/-- `A153337(n+1)-A000984(n)` -/
def P2900850813813555825.Spec : Prop :=
  ∀ n, P2900850813813555825.a n = A153338 (n + 1)

end A153338

/-! ## A153338.P14502279710817836634

`A001792(2*n)-A002457(n)`
-/

namespace A153338.P14502279710817836634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (2 * n) - A002457 n

end

end A153338.P14502279710817836634

namespace A153338

/-- `A001792(2*n)-A002457(n)` -/
def P14502279710817836634.Spec : Prop :=
  ∀ n, P14502279710817836634.a n = A153338 (n + 1)

end A153338

/-! ## A153338.P13209868591717076799

`2*(A303602(n)-A002699(n))`
-/

namespace A153338.P13209868591717076799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A303602 n - A002699 n)

end

end A153338.P13209868591717076799

namespace A153338

/-- `2*(A303602(n)-A002699(n))` -/
def P13209868591717076799.Spec : Prop :=
  ∀ n, P13209868591717076799.a n = A153338 (n + 1)

end A153338

/-! ## A153338.P10833814067150762200

`2*(A081039(n)-A240879(n))`
-/

namespace A153338.P10833814067150762200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081039 n - A240879 n)

end

end A153338.P10833814067150762200

namespace A153338

/-- `2*(A081039(n)-A240879(n))` -/
def P10833814067150762200.Spec : Prop :=
  ∀ n, P10833814067150762200.a n = A153338 (n + 1)

end A153338

/-! ## A153338.P17143229188897328025

`A008549(n)/2*A103517(n)`
-/

namespace A153338.P17143229188897328025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008549 n : ℚ) / 2 * (A103517 n : ℚ)

end

end A153338.P17143229188897328025

namespace A153338

/-- `A008549(n)/2*A103517(n)` -/
def P17143229188897328025.Spec : Prop :=
  ∀ n, P17143229188897328025.a n = (A153338 (n + 1) : ℚ)

end A153338

/-! ## A153338.P18168001168009837066

`n*A000302(n)-A172060(n)`
-/

namespace A153338.P18168001168009837066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000302 n - A172060 n

end

end A153338.P18168001168009837066

namespace A153338

/-- `n*A000302(n)-A172060(n)` -/
def P18168001168009837066.Spec : Prop :=
  ∀ n, P18168001168009837066.a n = A153338 (n + 1)

theorem P18168001168009837066.correct : P18168001168009837066.Spec := by
  intro n
  simp only [A153338, Nat.add_sub_cancel, A153338.P18168001168009837066.a, A153338.P18059927680759703308.a, A000302, A000302.P5166485833484575275.a, A172060, A172060.P5248690933070459008.a, A002457, A002457.P9253550667326779954.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A153338

/-! ## A153338.P12156950242942599990

`record[A235789(n+1)]-A002457(n)`
-/

namespace A153338.P12156950242942599990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A002457 n

end

end A153338.P12156950242942599990

namespace A153338

/-- `record[A235789(n+1)]-A002457(n)` -/
def P12156950242942599990.Spec : Prop :=
  ∀ n, P12156950242942599990.a n = A153338 (n + 1)

end A153338

/-! ## A153338.P8217940716649334463

`A339240(n+1)-A005430(n+1)`
-/

namespace A153338.P8217940716649334463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339240 (n + 1) - A005430 (n + 1)

end

end A153338.P8217940716649334463

namespace A153338

/-- `A339240(n+1)-A005430(n+1)` -/
def P8217940716649334463.Spec : Prop :=
  ∀ n, P8217940716649334463.a n = A153338 (n + 1)

end A153338

/-! ## A153338.P6893951874359515908

`A153334(2*n+1)-A000984(n)`
-/

namespace A153338.P6893951874359515908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153334 (2 * n + 1) - A000984 n

end

end A153338.P6893951874359515908

namespace A153338

/-- `A153334(2*n+1)-A000984(n)` -/
def P6893951874359515908.Spec : Prop :=
  ∀ n, P6893951874359515908.a n = A153338 (n + 1)

end A153338

/-!
# A153339: Number of zig-zag paths from top to bottom of a rectangle of width 5 with n rows whose color is that of the top right corner.

The programs for A153339, the canonical program `A153339.P7783239639608075471` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153339 has offset 1).

The definition of A153339 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153339.P574885529490721023

`ogf((3+4x-x^2)/(1-3x^2))`
-/

namespace A153339.P574885529490721023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, -1] [1, 0, -3] n

end

end A153339.P574885529490721023

namespace A153339

/-- `ogf((3+4x-x^2)/(1-3x^2))` -/
def P574885529490721023.Spec : Prop :=
  ∀ n, P574885529490721023.a n = A153339 (n + 1)

end A153339

/-! ## A153339.P7783239639608075471

`3*a(n-2)` with `a(0)=3, a(1)=4, a(2)=8`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153339

/-- `3*a(n-2)` -/
def P7783239639608075471.Spec : Prop :=
  ∀ n, (P7783239639608075471.a n : ℤ) = A153339 (n + 1)

theorem P7783239639608075471.correct : P7783239639608075471.Spec := by
  intro n
  simp only [A153339, Nat.add_sub_cancel]

end A153339

/-! ## A153339.P16208480408915161540

`a(or(1, n-2))+a(n-1)` with `a(0)=3, a(1)=4`
-/

namespace A153339.P16208480408915161540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (Int.lor 1 ((n : ℤ) - 2)).toNat + a (n - 1)

end

end A153339.P16208480408915161540

namespace A153339

/-- `a(or(1, n-2))+a(n-1)` -/
def P16208480408915161540.Spec : Prop :=
  ∀ n, (P16208480408915161540.a n : ℤ) = A153339 (n + 1)

end A153339

/-! ## A153339.P9312276779753305817

`a(n-1)+a(n-gcd(2, n+1))` with `a(0)=3, a(1)=4`
-/

namespace A153339.P9312276779753305817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 1) + a (n - Nat.gcd 2 (n + 1))

end

end A153339.P9312276779753305817

namespace A153339

/-- `a(n-1)+a(n-gcd(2, n+1))` -/
def P9312276779753305817.Spec : Prop :=
  ∀ n, (P9312276779753305817.a n : ℤ) = A153339 (n + 1)

end A153339

/-! ## A153339.P13925101720429399100

`a(n-1)+a(n-1)/(n%2+1)` with `a(0)=3, a(1)=4`
-/

namespace A153339.P13925101720429399100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 1) + a (n - 1) / ((n % 2 + 1 : ℕ) : ℚ)

end

end A153339.P13925101720429399100

namespace A153339

/-- `a(n-1)+a(n-1)/(n%2+1)` -/
def P13925101720429399100.Spec : Prop :=
  ∀ n, P13925101720429399100.a n = (A153339 (n + 1) : ℚ)

end A153339

/-! ## A153339.P5818140696849531768

`a(n-2)+a(n-2)+a(n-2)` with `a(0)=3, a(1)=4, a(2)=8`
-/

namespace A153339.P5818140696849531768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 8] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 2))

end

end A153339.P5818140696849531768

namespace A153339

/-- `a(n-2)+a(n-2)+a(n-2)` -/
def P5818140696849531768.Spec : Prop :=
  ∀ n, (P5818140696849531768.a n : ℤ) = A153339 (n + 1)

theorem P5818140696849531768.correct : P5818140696849531768.Spec := by
  intro n
  simp only [A153339, Nat.add_sub_cancel, A153339.P5818140696849531768.a, A153339.P7783239639608075471.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A153339

/-! ## A153339.P4918653228229163246

`a(n-2)-(a(n-2)%2-a(n-2)-a(n-2))` with `a(0)=3, a(1)=4`
-/

namespace A153339.P4918653228229163246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 2) - (Int.tmod (a (n - 2)) 2 - a (n - 2) - a (n - 2))

end

end A153339.P4918653228229163246

namespace A153339

/-- `a(n-2)-(a(n-2)%2-a(n-2)-a(n-2))` -/
def P4918653228229163246.Spec : Prop :=
  ∀ n, P4918653228229163246.a n = A153339 (n + 1)

end A153339

/-! ## A153339.P14864632772914991686

`A182522(n)*A255176(n)`
-/

namespace A153339.P14864632772914991686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 n * A255176 n

end

end A153339.P14864632772914991686

namespace A153339

/-- `A182522(n)*A255176(n)` -/
def P14864632772914991686.Spec : Prop :=
  ∀ n, P14864632772914991686.a n = A153339 (n + 1)

end A153339

/-! ## A153339.P15092005720392054585

`A182522(n)+A038754(n+1)`
-/

namespace A153339.P15092005720392054585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 n + A038754 (n + 1)

end

end A153339.P15092005720392054585

namespace A153339

/-- `A182522(n)+A038754(n+1)` -/
def P15092005720392054585.Spec : Prop :=
  ∀ n, P15092005720392054585.a n = A153339 (n + 1)

end A153339

/-! ## A153339.P1137925102025485857

`A182522(n+2)+A182522(n)`
-/

namespace A153339.P1137925102025485857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (n + 2) + A182522 n

end

end A153339.P1137925102025485857

namespace A153339

/-- `A182522(n+2)+A182522(n)` -/
def P1137925102025485857.Spec : Prop :=
  ∀ n, P1137925102025485857.a n = A153339 (n + 1)

end A153339

/-! ## A153339.P10358844570028278097

`A000007(n)+2*A068911(n)`
-/

namespace A153339.P10358844570028278097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A068911 n

end

end A153339.P10358844570028278097

namespace A153339

/-- `A000007(n)+2*A068911(n)` -/
def P10358844570028278097.Spec : Prop :=
  ∀ n, P10358844570028278097.a n = A153339 (n + 1)

end A153339

/-! ## A153339.P12659395415929637481

`A068911(A028310(n))+A068911(n)`
-/

namespace A153339.P12659395415929637481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (A028310 n).toNat + A068911 n

end

end A153339.P12659395415929637481

namespace A153339

/-- `A068911(A028310(n))+A068911(n)` -/
def P12659395415929637481.Spec : Prop :=
  ∀ n, P12659395415929637481.a n = A153339 (n + 1)

end A153339

/-! ## A153339.P7908834134092164950

`A068911(A000007(n)+n)+A068911(n)`
-/

namespace A153339.P7908834134092164950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (A000007 n + (n : ℤ)).toNat + A068911 n

end

end A153339.P7908834134092164950

namespace A153339

/-- `A068911(A000007(n)+n)+A068911(n)` -/
def P7908834134092164950.Spec : Prop :=
  ∀ n, P7908834134092164950.a n = A153339 (n + 1)

end A153339

/-! ## A153339.P6821162834920049565

`A038754(n+1)+A038754(A289207(n+1))`
-/

namespace A153339.P6821162834920049565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (n + 1) + A038754 (A289207 (n + 1)).toNat

end

end A153339.P6821162834920049565

namespace A153339

/-- `A038754(n+1)+A038754(A289207(n+1))` -/
def P6821162834920049565.Spec : Prop :=
  ∀ n, P6821162834920049565.a n = A153339 (n + 1)

end A153339

/-! ## A153339.P83875117163484790

`A038754(n+1)+A038754(n+1)/A174296(2*n+1)`
-/

namespace A153339.P83875117163484790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038754 (n + 1) : ℚ) + (A038754 (n + 1) : ℚ) / (A174296 (2 * n + 1) : ℚ)

end

end A153339.P83875117163484790

namespace A153339

/-- `A038754(n+1)+A038754(n+1)/A174296(2*n+1)` -/
def P83875117163484790.Spec : Prop :=
  ∀ n, P83875117163484790.a n = (A153339 (n + 1) : ℚ)

end A153339

/-! ## A153339.P10887814529809218412

`A228879(n)-A211221(n+1)`
-/

namespace A153339.P10887814529809218412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228879 n - A211221 (n + 1)

end

end A153339.P10887814529809218412

namespace A153339

/-- `A228879(n)-A211221(n+1)` -/
def P10887814529809218412.Spec : Prop :=
  ∀ n, P10887814529809218412.a n = A153339 (n + 1)

end A153339

/-! ## A153339.P4212175998404114058

`A068911(n+2)-A068911(n)`
-/

namespace A153339.P4212175998404114058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (n + 2) - A068911 n

end

end A153339.P4212175998404114058

namespace A153339

/-- `A068911(n+2)-A068911(n)` -/
def P4212175998404114058.Spec : Prop :=
  ∀ n, P4212175998404114058.a n = A153339 (n + 1)

end A153339

/-! ## A153339.P1338542144480370714

`∪[2*A068911(2*n+1), A080923(n+1)]`
-/

namespace A153339.P1338542144480370714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A068911 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A153339.P1338542144480370714

namespace A153339

/-- `∪[2*A068911(2*n+1), A080923(n+1)]` -/
def P1338542144480370714.Spec : Prop :=
  ∀ n, (P1338542144480370714.a n : ℤ) = A153339 (n + 1)

end A153339

/-! ## A153339.P17248636828664842186

`Δ[A246080(3*(n+1))]`
-/

namespace A153339.P17248636828664842186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246080 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153339.P17248636828664842186

namespace A153339

/-- `Δ[A246080(3*(n+1))]` -/
def P17248636828664842186.Spec : Prop :=
  ∀ n, P17248636828664842186.a n = A153339 (n + 1)

end A153339

/-! ## A153339.P1495658435941046645

`Δ[A068911(n+1)+A068911(n)]`
-/

namespace A153339.P1495658435941046645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (n + 1) + A068911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153339.P1495658435941046645

namespace A153339

/-- `Δ[A068911(n+1)+A068911(n)]` -/
def P1495658435941046645.Spec : Prop :=
  ∀ n, P1495658435941046645.a n = A153339 (n + 1)

end A153339

/-!
# A153340: Number of zig-zag paths from top to bottom of a rectangle of width 8 with n rows.

The programs for A153340, the canonical program `A153340.P1716549985434811909` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153340 has offset 1).

The definition of A153340 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153340.P1716549985434811909

`ogf((8+6x-12x^2-4x^3)/(1-x-3x^2+2x^3+x^4))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153340

/-- `ogf((8+6x-12x^2-4x^3)/(1-x-3x^2+2x^3+x^4))` -/
def P1716549985434811909.Spec : Prop :=
  ∀ n, P1716549985434811909.a n = A153340 (n + 1)

theorem P1716549985434811909.correct : P1716549985434811909.Spec := by
  intro n
  simp only [A153340, Nat.add_sub_cancel]

end A153340

/-! ## A153340.P9472442687798973603

`A090992(n+1)+A061551(n)`
-/

namespace A153340.P9472442687798973603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090992 (n + 1) + A061551 n

end

end A153340.P9472442687798973603

namespace A153340

/-- `A090992(n+1)+A061551(n)` -/
def P9472442687798973603.Spec : Prop :=
  ∀ n, P9472442687798973603.a n = A153340 (n + 1)

end A153340

/-! ## A153340.P6408348791052765461

`A187498(A016789(n))+A090992(n+1)`
-/

namespace A153340.P6408348791052765461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187498 (A016789 n).toNat + A090992 (n + 1)

end

end A153340.P6408348791052765461

namespace A153340

/-- `A187498(A016789(n))+A090992(n+1)` -/
def P6408348791052765461.Spec : Prop :=
  ∀ n, P6408348791052765461.a n = A153340 (n + 1)

end A153340

/-! ## A153340.P2397975807354030760

`sqrt(A188828(n+1))*A000032(C(2, n+2))`
-/

namespace A153340.P2397975807354030760
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A188828 (n + 1) : ℝ) * (A000032 (Nat.choose 2 (n + 2)) : ℝ)

end

end A153340.P2397975807354030760

namespace A153340

/-- `sqrt(A188828(n+1))*A000032(C(2, n+2))` -/
def P2397975807354030760.Spec : Prop :=
  ∀ n, P2397975807354030760.a n = (A153340 (n + 1) : ℝ)

end A153340

/-! ## A153340.P8027309881735071298

`sqrt(A188828(n+1))*A020639(A008458(n))`
-/

namespace A153340.P8027309881735071298
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A188828 (n + 1) : ℝ) * (A020639 (A008458 n).toNat : ℝ)

end

end A153340.P8027309881735071298

namespace A153340

/-- `sqrt(A188828(n+1))*A020639(A008458(n))` -/
def P8027309881735071298.Spec : Prop :=
  ∀ n, P8027309881735071298.a n = (A153340 (n + 1) : ℝ)

end A153340

/-! ## A153340.P2276978667835582350

`sqrt(A188828(n+1))*A000034(A000040(n+1))`
-/

namespace A153340.P2276978667835582350
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A188828 (n + 1) : ℝ) * (A000034 (A000040 (n + 1)).toNat : ℝ)

end

end A153340.P2276978667835582350

namespace A153340

/-- `sqrt(A188828(n+1))*A000034(A000040(n+1))` -/
def P2276978667835582350.Spec : Prop :=
  ∀ n, P2276978667835582350.a n = (A153340 (n + 1) : ℝ)

end A153340

/-! ## A153340.P14955325180868412572

`sqrt(A188828(n+1))*A137502(A020639(n+1))`
-/

namespace A153340.P14955325180868412572
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A188828 (n + 1) : ℝ) * (A137502 (A020639 (n + 1)).toNat : ℝ)

end

end A153340.P14955325180868412572

namespace A153340

/-- `sqrt(A188828(n+1))*A137502(A020639(n+1))` -/
def P14955325180868412572.Spec : Prop :=
  ∀ n, P14955325180868412572.a n = (A153340 (n + 1) : ℝ)

end A153340

/-!
# A153341: Triangle read by rows, A065941 * A007318.

The programs for A153341, there is no canonical definition to state claims against.
-/

/-! ## A153341.P14901435836847667187

`A071542(A121574(n))+A000007(A000712(n))`
-/

namespace A153341.P14901435836847667187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (A121574 n).toNat + A000007 (A000712 n).toNat

end

end A153341.P14901435836847667187

/-! ## A153341.P2826152595055172243

`A000035(A159047(n+1))*A071542(A121574(n))`
-/

namespace A153341.P2826152595055172243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A159047 (n + 1)).toNat * A071542 (A121574 n).toNat

end

end A153341.P2826152595055172243

/-! ## A153341.P6285715267769670953

`and(A000203(2^n), A071542(A121574(n)))`
-/

namespace A153341.P6285715267769670953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (2 ^ n)) (A071542 (A121574 n).toNat)

end

end A153341.P6285715267769670953

/-! ## A153341.P11109981741149525333

`A071542(A121574(n))^A001221(A000079(n))`
-/

namespace A153341.P11109981741149525333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071542 (A121574 n).toNat : ℚ) ^ (A001221 (A000079 n).toNat : ℤ)

end

end A153341.P11109981741149525333

/-! ## A153341.P11827958618102660161

`A071542(A121574(n))%A000040(A048573(n))`
-/

namespace A153341.P11827958618102660161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071542 (A121574 n).toNat) (A000040 (A048573 n).toNat)

end

end A153341.P11827958618102660161

/-!
# A153342: Binomial transform of triangle A046854 (shifted).

The programs for A153342, the canonical program `A153342.P13411374878313049971` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153342 has offset 0).

The definition of A153342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153342.P15443210629576146655

`A207605(n+2)-A106195(n)`
-/

namespace A153342.P15443210629576146655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207605 (n + 2) - A106195 n

end

end A153342.P15443210629576146655

namespace A153342

/-- `A207605(n+2)-A106195(n)` -/
def P15443210629576146655.Spec : Prop :=
  ∀ n, P15443210629576146655.a n = A153342 n

end A153342

/-! ## A153342.P13411374878313049971

`A121462(A038722(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153342

/-- `A121462(A038722(n+1))` -/
def P13411374878313049971.Spec : Prop :=
  ∀ n, P13411374878313049971.a n = A153342 n

theorem P13411374878313049971.correct : P13411374878313049971.Spec := by
  intro n
  simp only [A153342]

end A153342

/-! ## A153342.P10018981609311587762

`A121462(A061579(n)+1)`
-/

namespace A153342.P10018981609311587762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121462 (A061579 n + 1).toNat

end

end A153342.P10018981609311587762

namespace A153342

/-- `A121462(A061579(n)+1)` -/
def P10018981609311587762.Spec : Prop :=
  ∀ n, P10018981609311587762.a n = A153342 n

end A153342

/-! ## A153342.P9218777845977537426

`A121462(A093995(n+1)-n)`
-/

namespace A153342.P9218777845977537426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121462 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A153342.P9218777845977537426

namespace A153342

/-- `A121462(A093995(n+1)-n)` -/
def P9218777845977537426.Spec : Prop :=
  ∀ n, P9218777845977537426.a n = A153342 n

end A153342

/-! ## A153342.P7631858628654051117

`A106195(n)-A049600(A038722(n+1))`
-/

namespace A153342.P7631858628654051117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 n - A049600 (A038722 (n + 1)).toNat

end

end A153342.P7631858628654051117

namespace A153342

/-- `A106195(n)-A049600(A038722(n+1))` -/
def P7631858628654051117.Spec : Prop :=
  ∀ n, P7631858628654051117.a n = A153342 n

end A153342

/-! ## A153342.P47027151342113822

`A106195(n)-A049600(A061579(n)+1)`
-/

namespace A153342.P47027151342113822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 n - A049600 (A061579 n + 1).toNat

end

end A153342.P47027151342113822

namespace A153342

/-- `A106195(n)-A049600(A061579(n)+1)` -/
def P47027151342113822.Spec : Prop :=
  ∀ n, P47027151342113822.a n = A153342 n

end A153342

/-! ## A153342.P71166865796484645

`A055807(A014132(n+1))+char[∑[n]]`
-/

namespace A153342.P71166865796484645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A014132 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A153342.P71166865796484645

namespace A153342

/-- `A055807(A014132(n+1))+char[∑[n]]` -/
def P71166865796484645.Spec : Prop :=
  ∀ n, P71166865796484645.a n = A153342 n

end A153342

/-!
# A153343: Numbers k such that 5*k + 4 is not prime.

The programs for A153343, the canonical program `A153343.P11659389129775803529` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153343 has offset 1).

The definition of A153343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153343.P16328133758891950747

`comp[A024897(n+1)]`
-/

namespace A153343.P16328133758891950747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153343.P16328133758891950747

namespace A153343

/-- `comp[A024897(n+1)]` -/
def P16328133758891950747.Spec : Prop :=
  ∀ n, (P16328133758891950747.a n : ℤ) = A153343 (n + 1)

end A153343

/-! ## A153343.P2452820966082146219

`A153088(n+1)-1`
-/

namespace A153343.P2452820966082146219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153088 (n + 1) - 1

end

end A153343.P2452820966082146219

namespace A153343

/-- `A153088(n+1)-1` -/
def P2452820966082146219.Spec : Prop :=
  ∀ n, P2452820966082146219.a n = A153343 (n + 1)

theorem P2452820966082146219.correct : P2452820966082146219.Spec := by
  intro n
  simp only [A153343, Nat.add_sub_cancel, A153343.P2452820966082146219.a, A153343.P11659389129775803529.f1, A153343.P11659389129775803529.f2, A153343.P11659389129775803529.a, A005171, A005171.P15860856746370777121.a, A153088, A153088.P14487494430752831304.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A153343

/-! ## A153343.P11659389129775803529

`eq[1, A005171(5*n+4)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A153343

/-- `eq[1, A005171(5*n+4)]` -/
def P11659389129775803529.Spec : Prop :=
  ∀ n, (P11659389129775803529.a n : ℤ) = A153343 (n + 1)

theorem P11659389129775803529.correct : P11659389129775803529.Spec := by
  intro n
  simp only [A153343, Nat.add_sub_cancel]

end A153343

/-! ## A153343.P3172300450574284581

`lt[1, A001222(5*n+4)]`
-/

namespace A153343.P3172300450574284581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153343.P3172300450574284581

namespace A153343

/-- `lt[1, A001222(5*n+4)]` -/
def P3172300450574284581.Spec : Prop :=
  ∀ n, (P3172300450574284581.a n : ℤ) = A153343 (n + 1)

end A153343

/-! ## A153343.P6393796279409947452

`lt[2, A000005(5*n+4)]`
-/

namespace A153343.P6393796279409947452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153343.P6393796279409947452

namespace A153343

/-- `lt[2, A000005(5*n+4)]` -/
def P6393796279409947452.Spec : Prop :=
  ∀ n, (P6393796279409947452.a n : ℤ) = A153343 (n + 1)

end A153343

/-! ## A153343.P11701195868221836097

`comp[2*A102700(n+1)+1]`
-/

namespace A153343.P11701195868221836097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102700 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153343.P11701195868221836097

namespace A153343

/-- `comp[2*A102700(n+1)+1]` -/
def P11701195868221836097.Spec : Prop :=
  ∀ n, (P11701195868221836097.a n : ℤ) = A153343 (n + 1)

end A153343

/-! ## A153343.P353525460046972231

`comp[2*A105042(n+1)-1]`
-/

namespace A153343.P353525460046972231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105042 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153343.P353525460046972231

namespace A153343

/-- `comp[2*A105042(n+1)-1]` -/
def P353525460046972231.Spec : Prop :=
  ∀ n, (P353525460046972231.a n : ℤ) = A153343 (n + 1)

end A153343

/-! ## A153343.P1359898993526019479

`lt[A020639(5*n+4), n+3]`
-/

namespace A153343.P1359898993526019479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153343.P1359898993526019479

namespace A153343

/-- `lt[A020639(5*n+4), n+3]` -/
def P1359898993526019479.Spec : Prop :=
  ∀ n, (P1359898993526019479.a n : ℤ) = A153343 (n + 1)

end A153343

/-! ## A153343.P9228156365794559503

`A023443(A153088(n+1))`
-/

namespace A153343.P9228156365794559503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A153088 (n + 1)).toNat

end

end A153343.P9228156365794559503

namespace A153343

/-- `A023443(A153088(n+1))` -/
def P9228156365794559503.Spec : Prop :=
  ∀ n, P9228156365794559503.a n = A153343 (n + 1)

end A153343

/-! ## A153343.P1971128309394329022

`lt[A010051(A016957(n)-n), 1]`
-/

namespace A153343.P1971128309394329022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A016957 n - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153343.P1971128309394329022

namespace A153343

/-- `lt[A010051(A016957(n)-n), 1]` -/
def P1971128309394329022.Spec : Prop :=
  ∀ n, (P1971128309394329022.a n : ℤ) = A153343 (n + 1)

end A153343

/-! ## A153343.P18288613403649451917

`lt[2, A001222(A004767(n)+n+1)+1]`
-/

namespace A153343.P18288613403649451917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004767 n + (n + 1 : ℤ)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153343.P18288613403649451917

namespace A153343

/-- `lt[2, A001222(A004767(n)+n+1)+1]` -/
def P18288613403649451917.Spec : Prop :=
  ∀ n, (P18288613403649451917.a n : ℤ) = A153343 (n + 1)

end A153343

/-! ## A153343.P6458931430587390032

`lt[A006530(A016897(n)), A016897(n)]`
-/

namespace A153343.P6458931430587390032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A016897 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153343.P6458931430587390032

namespace A153343

/-- `lt[A006530(A016897(n)), A016897(n)]` -/
def P6458931430587390032.Spec : Prop :=
  ∀ n, (P6458931430587390032.a n : ℤ) = A153343 (n + 1)

end A153343

/-! ## A153343.P10465278275388615186

`lt[A000010(A016885(n)+1), A016885(n)]`
-/

namespace A153343.P10465278275388615186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A016885 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153343.P10465278275388615186

namespace A153343

/-- `lt[A000010(A016885(n)+1), A016885(n)]` -/
def P10465278275388615186.Spec : Prop :=
  ∀ n, (P10465278275388615186.a n : ℤ) = A153343 (n + 1)

end A153343

/-! ## A153343.P13893939399202620364

`lt[A006530(A016885(n)+1), A016885(n)]`
-/

namespace A153343.P13893939399202620364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A016885 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153343.P13893939399202620364

namespace A153343

/-- `lt[A006530(A016885(n)+1), A016885(n)]` -/
def P13893939399202620364.Spec : Prop :=
  ∀ n, (P13893939399202620364.a n : ℤ) = A153343 (n + 1)

end A153343

/-! ## A153343.P14194129481106465210

`lt[A006530(A017377(n)-1), A063226(n+1)]`
-/

namespace A153343.P14194129481106465210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017377 n - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153343.P14194129481106465210

namespace A153343

/-- `lt[A006530(A017377(n)-1), A063226(n+1)]` -/
def P14194129481106465210.Spec : Prop :=
  ∀ n, (P14194129481106465210.a n : ℤ) = A153343 (n + 1)

end A153343

/-! ## A153343.P7314652718174198878

`lt[A014963(5*n+4), n+3]`
-/

namespace A153343.P7314652718174198878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (5 * n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153343.P7314652718174198878

namespace A153343

/-- `lt[A014963(5*n+4), n+3]` -/
def P7314652718174198878.Spec : Prop :=
  ∀ n, (P7314652718174198878.a n : ℤ) = A153343 (n + 1)

end A153343

/-!
# A153344: Limit_{n->oo} A055830^n.

The programs for A153344, there is no canonical definition to state claims against.
-/

/-! ## A153344.P16999374637833586941

`A000037(A352684(n))-A000110(n)`
-/

namespace A153344.P16999374637833586941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A352684 n).toNat - A000110 n

end

end A153344.P16999374637833586941

/-! ## A153344.P17167978430506119216

`or(1, A008621(A112565(n)))`
-/

namespace A153344.P17167978430506119216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008621 (A112565 n).toNat)

end

end A153344.P17167978430506119216

/-! ## A153344.P15244386908475501363

`A008620(A004760(∑[n!]))`
-/

namespace A153344.P15244386908475501363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A004760 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A153344.P15244386908475501363

/-!
# A153345: Triangle read by rows, A000012 * A055830.

The programs for A153345, there is no canonical definition to state claims against.
-/

/-! ## A153345.P16666575055058527657

`2*A210229(n+1)-A210200(n+1)`
-/

namespace A153345.P16666575055058527657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210229 (n + 1) - A210200 (n + 1)

end

end A153345.P16666575055058527657

/-! ## A153345.P3124025113691684568

`A004277(A210229(n+1))-A210200(n+1)`
-/

namespace A153345.P3124025113691684568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A210229 (n + 1)).toNat - A210200 (n + 1)

end

end A153345.P3124025113691684568

/-!
# A153347: Numbers n>0 such that 7*n-4 is not prime.

The programs for A153347, the canonical program `A153347.P13382014231303859893` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153347 has offset 1).

The definition of A153347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153347.P16287816338371513763

`A154611(n+1)+1`
-/

namespace A153347.P16287816338371513763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154611 (n + 1) + 1

end

end A153347.P16287816338371513763

namespace A153347

/-- `A154611(n+1)+1` -/
def P16287816338371513763.Spec : Prop :=
  ∀ n, P16287816338371513763.a n = A153347 (n + 1)

theorem P16287816338371513763.correct : P16287816338371513763.Spec := by
  intro n
  simp only [A153347, Nat.add_sub_cancel, A153347.P16287816338371513763.a, A153347.P13382014231303859893.f1, A153347.P13382014231303859893.a, A089033, A089033.P1967463785301948197.a, A154611, A154611.P2357276127298579042.a, A024903, A024903.P4550380014997824967.f1, A024903.P4550380014997824967.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153347

/-! ## A153347.P13382014231303859893

`comp[A089033(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A153347

/-- `comp[A089033(n+1)]+1` -/
def P13382014231303859893.Spec : Prop :=
  ∀ n, (P13382014231303859893.a n : ℤ) = A153347 (n + 1)

theorem P13382014231303859893.correct : P13382014231303859893.Spec := by
  intro n
  simp only [A153347, Nat.add_sub_cancel]

end A153347

/-! ## A153347.P3340015914194814886

`comp[A111250(n+1)]+2`
-/

namespace A153347.P3340015914194814886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A153347.P3340015914194814886

namespace A153347

/-- `comp[A111250(n+1)]+2` -/
def P3340015914194814886.Spec : Prop :=
  ∀ n, (P3340015914194814886.a n : ℤ) = A153347 (n + 1)

end A153347

/-! ## A153347.P4755377135249285257

`comp[2*A090614(n+1)]+1`
-/

namespace A153347.P4755377135249285257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A153347.P4755377135249285257

namespace A153347

/-- `comp[2*A090614(n+1)]+1` -/
def P4755377135249285257.Spec : Prop :=
  ∀ n, (P4755377135249285257.a n : ℤ) = A153347 (n + 1)

end A153347

/-! ## A153347.P7606043246285153252

`lt[1, A001222(7*n+3)]+1`
-/

namespace A153347.P7606043246285153252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (7 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A153347.P7606043246285153252

namespace A153347

/-- `lt[1, A001222(7*n+3)]+1` -/
def P7606043246285153252.Spec : Prop :=
  ∀ n, (P7606043246285153252.a n : ℤ) = A153347 (n + 1)

end A153347

/-! ## A153347.P1537479967578937396

`lt[2, A000005(7*n+3)]+1`
-/

namespace A153347.P1537479967578937396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (7 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A153347.P1537479967578937396

namespace A153347

/-- `lt[2, A000005(7*n+3)]+1` -/
def P1537479967578937396.Spec : Prop :=
  ∀ n, (P1537479967578937396.a n : ℤ) = A153347 (n + 1)

end A153347

/-! ## A153347.P6439013925330942320

`∑[char[A024903(n+1)-(n+1)]+1]`
-/

namespace A153347.P6439013925330942320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024903 (n + 1) - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153347.P6439013925330942320

namespace A153347

/-- `∑[char[A024903(n+1)-(n+1)]+1]` -/
def P6439013925330942320.Spec : Prop :=
  ∀ n, (P6439013925330942320.a n : ℤ) = A153347 (n + 1)

end A153347

/-! ## A153347.P8125178001066368627

`lt[1, ∑{e}[A016945(n)+n, #]]+1`
-/

namespace A153347.P8125178001066368627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A153347.P8125178001066368627

namespace A153347

/-- `lt[1, ∑{e}[A016945(n)+n, #]]+1` -/
def P8125178001066368627.Spec : Prop :=
  ∀ n, (P8125178001066368627.a n : ℤ) = A153347 (n + 1)

end A153347

/-! ## A153347.P7632069957581586308

`A020725(A154611(n+1))`
-/

namespace A153347.P7632069957581586308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A154611 (n + 1)).toNat

end

end A153347.P7632069957581586308

namespace A153347

/-- `A020725(A154611(n+1))` -/
def P7632069957581586308.Spec : Prop :=
  ∀ n, P7632069957581586308.a n = A153347 (n + 1)

end A153347

/-! ## A153347.P3424463934186818798

`lt[A014963(7*n+3), n+2]+1`
-/

namespace A153347.P3424463934186818798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (7 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A153347.P3424463934186818798

namespace A153347

/-- `lt[A014963(7*n+3), n+2]+1` -/
def P3424463934186818798.Spec : Prop :=
  ∀ n, (P3424463934186818798.a n : ℤ) = A153347 (n + 1)

end A153347

/-!
# A153348: Numbers k such that 16*k+3 is not prime.

The programs for A153348, the canonical program `A153348.P12024770680681712102` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153348 has offset 1).

The definition of A153348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153348.P12024770680681712102

`comp[A092022(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A153348

/-- `comp[A092022(n+1)]` -/
def P12024770680681712102.Spec : Prop :=
  ∀ n, (P12024770680681712102.a n : ℤ) = A153348 (n + 1)

theorem P12024770680681712102.correct : P12024770680681712102.Spec := by
  intro n
  simp only [A153348, Nat.add_sub_cancel]

end A153348

/-! ## A153348.P15465790758979246798

`lt[1, A001222(16*n+3)]`
-/

namespace A153348.P15465790758979246798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (16 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153348.P15465790758979246798

namespace A153348

/-- `lt[1, A001222(16*n+3)]` -/
def P15465790758979246798.Spec : Prop :=
  ∀ n, (P15465790758979246798.a n : ℤ) = A153348 (n + 1)

end A153348

/-! ## A153348.P7335385220493403128

`lt[2, A000005(16*n+3)]`
-/

namespace A153348.P7335385220493403128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (16 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153348.P7335385220493403128

namespace A153348

/-- `lt[2, A000005(16*n+3)]` -/
def P7335385220493403128.Spec : Prop :=
  ∀ n, (P7335385220493403128.a n : ℤ) = A153348 (n + 1)

end A153348

/-! ## A153348.P10947800578573144733

`lt[A020639(16*n+3), 3*n]`
-/

namespace A153348.P10947800578573144733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (16 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153348.P10947800578573144733

namespace A153348

/-- `lt[A020639(16*n+3), 3*n]` -/
def P10947800578573144733.Spec : Prop :=
  ∀ n, (P10947800578573144733.a n : ℤ) = A153348 (n + 1)

end A153348

/-! ## A153348.P1474670874388970512

`lt[A101264(A017077(n)), 1]`
-/

namespace A153348.P1474670874388970512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A017077 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153348.P1474670874388970512

namespace A153348

/-- `lt[A101264(A017077(n)), 1]` -/
def P1474670874388970512.Spec : Prop :=
  ∀ n, (P1474670874388970512.a n : ℤ) = A153348 (n + 1)

end A153348

/-! ## A153348.P18191377769320605521

`lt[3, A214834(4*n+2)]`
-/

namespace A153348.P18191377769320605521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214834 (4 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153348.P18191377769320605521

namespace A153348

/-- `lt[3, A214834(4*n+2)]` -/
def P18191377769320605521.Spec : Prop :=
  ∀ n, (P18191377769320605521.a n : ℤ) = A153348 (n + 1)

end A153348

/-! ## A153348.P9619965488415562757

`lt[1, A214834(A016825(n))-2]`
-/

namespace A153348.P9619965488415562757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214834 (A016825 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153348.P9619965488415562757

namespace A153348

/-- `lt[1, A214834(A016825(n))-2]` -/
def P9619965488415562757.Spec : Prop :=
  ∀ n, (P9619965488415562757.a n : ℤ) = A153348 (n + 1)

end A153348

/-! ## A153348.P9363640434012853780

`eq[1, A282026(8*n)]`
-/

namespace A153348.P9363640434012853780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282026 (8 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153348.P9363640434012853780

namespace A153348

/-- `eq[1, A282026(8*n)]` -/
def P9363640434012853780.Spec : Prop :=
  ∀ n, (P9363640434012853780.a n : ℤ) = A153348 (n + 1)

end A153348

/-! ## A153348.P1611526167763196018

`eq[1, A282194(8*n)]`
-/

namespace A153348.P1611526167763196018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282194 (8 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153348.P1611526167763196018

namespace A153348

/-- `eq[1, A282194(8*n)]` -/
def P1611526167763196018.Spec : Prop :=
  ∀ n, (P1611526167763196018.a n : ℤ) = A153348 (n + 1)

end A153348

/-! ## A153348.P894383959238822695

`lt[A014963(16*n+3), n]`
-/

namespace A153348.P894383959238822695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (16 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153348.P894383959238822695

namespace A153348

/-- `lt[A014963(16*n+3), n]` -/
def P894383959238822695.Spec : Prop :=
  ∀ n, (P894383959238822695.a n : ℤ) = A153348 (n + 1)

end A153348

/-!
# A153349: Period 6: repeat [1, 7, 4, 4, 7, 1].

The programs for A153349, the canonical program `A153349.P5839048596204701455` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153349 has offset 0).

The definition of A153349 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A153349.anchor (n : ℕ) : A153349 n = [1, 7, 4, 4, 7, 1].getD (n % 6) 0` in `Proof.A153.A153349`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153349.P5839048596204701455

`a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=7, a(2)=4, a(3)=4, a(4)=7`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153349

/-- `a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)` -/
def P5839048596204701455.Spec : Prop :=
  ∀ n, P5839048596204701455.a n = A153349 n

theorem P5839048596204701455.correct : P5839048596204701455.Spec := by
  intro n
  simp only [A153349]

end A153349

/-!
# A153350: Numbers k such that 7*k+11 is not prime.

The programs for A153350, the canonical program `A153350.P12585267983721140221` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153350 has offset 1).

The definition of A153350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153350.P12585267983721140221

`comp[A101123(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A153350

/-- `comp[A101123(n+1)]` -/
def P12585267983721140221.Spec : Prop :=
  ∀ n, (P12585267983721140221.a n : ℤ) = A153350 (n + 1)

theorem P12585267983721140221.correct : P12585267983721140221.Spec := by
  intro n
  simp only [A153350, Nat.add_sub_cancel]

end A153350

/-! ## A153350.P1231707974821921394

`comp[A024902(n+1)-1]`
-/

namespace A153350.P1231707974821921394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024902 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153350.P1231707974821921394

namespace A153350

/-- `comp[A024902(n+1)-1]` -/
def P1231707974821921394.Spec : Prop :=
  ∀ n, (P1231707974821921394.a n : ℤ) = A153350 (n + 1)

end A153350

/-! ## A153350.P4429383415062071943

`lt[1, A001222(7*n+11)]`
-/

namespace A153350.P4429383415062071943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (7 * n + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153350.P4429383415062071943

namespace A153350

/-- `lt[1, A001222(7*n+11)]` -/
def P4429383415062071943.Spec : Prop :=
  ∀ n, (P4429383415062071943.a n : ℤ) = A153350 (n + 1)

end A153350

/-! ## A153350.P10551348512602178164

`lt[2, A000005(7*n+11)]`
-/

namespace A153350.P10551348512602178164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (7 * n + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153350.P10551348512602178164

namespace A153350

/-- `lt[2, A000005(7*n+11)]` -/
def P10551348512602178164.Spec : Prop :=
  ∀ n, (P10551348512602178164.a n : ℤ) = A153350 (n + 1)

end A153350

/-! ## A153350.P16401539608370203163

`lt[1, ∑{e}[abs(3*n-A008592(n+1))+1, #]]`
-/

namespace A153350.P16401539608370203163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * n : ℤ) - A008592 (n + 1)| + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153350.P16401539608370203163

namespace A153350

/-- `lt[1, ∑{e}[abs(3*n-A008592(n+1))+1, #]]` -/
def P16401539608370203163.Spec : Prop :=
  ∀ n, (P16401539608370203163.a n : ℤ) = A153350 (n + 1)

end A153350

/-! ## A153350.P1902465016203436425

`eq[2, 2%A088212(7*(n+1))]`
-/

namespace A153350.P1902465016203436425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A088212 (7 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153350.P1902465016203436425

namespace A153350

/-- `eq[2, 2%A088212(7*(n+1))]` -/
def P1902465016203436425.Spec : Prop :=
  ∀ n, (P1902465016203436425.a n : ℤ) = A153350 (n + 1)

end A153350

/-! ## A153350.P7015163594352751660

`eq[1, A089026(A004769(n)-n)]`
-/

namespace A153350.P7015163594352751660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A004769 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153350.P7015163594352751660

namespace A153350

/-- `eq[1, A089026(A004769(n)-n)]` -/
def P7015163594352751660.Spec : Prop :=
  ∀ n, (P7015163594352751660.a n : ℤ) = A153350 (n + 1)

end A153350

/-! ## A153350.P16724552561872525913

`lt[A014963(7*n+11), A047311(n+1)]`
-/

namespace A153350.P16724552561872525913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (7 * n + 11)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047311 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153350.P16724552561872525913

namespace A153350

/-- `lt[A014963(7*n+11), A047311(n+1)]` -/
def P16724552561872525913.Spec : Prop :=
  ∀ n, (P16724552561872525913.a n : ℤ) = A153350 (n + 1)

end A153350

/-! ## A153350.P6833236904762668573

`lt[A014963(7*n+11), A047319(n+1)]`
-/

namespace A153350.P6833236904762668573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (7 * n + 11)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047319 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153350.P6833236904762668573

namespace A153350

/-- `lt[A014963(7*n+11), A047319(n+1)]` -/
def P6833236904762668573.Spec : Prop :=
  ∀ n, (P6833236904762668573.a n : ℤ) = A153350 (n + 1)

end A153350

/-! ## A153350.P9933215894018815511

`lt[A014963(7*n+11), A047320(n+1)]`
-/

namespace A153350.P9933215894018815511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (7 * n + 11)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047320 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153350.P9933215894018815511

namespace A153350

/-- `lt[A014963(7*n+11), A047320(n+1)]` -/
def P9933215894018815511.Spec : Prop :=
  ∀ n, (P9933215894018815511.a n : ℤ) = A153350 (n + 1)

end A153350

/-! ## A153350.P13098750069404832862

`lt[A014963(7*n+11), A047321(n+1)]`
-/

namespace A153350.P13098750069404832862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (7 * n + 11)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047321 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153350.P13098750069404832862

namespace A153350

/-- `lt[A014963(7*n+11), A047321(n+1)]` -/
def P13098750069404832862.Spec : Prop :=
  ∀ n, (P13098750069404832862.a n : ℤ) = A153350 (n + 1)

end A153350

/-! ## A153350.P12726004311742078668

`lt[A014963(7*n+11)-(n+1), A005117(n+1)]`
-/

namespace A153350.P12726004311742078668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (7 * n + 11) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153350.P12726004311742078668

namespace A153350

/-- `lt[A014963(7*n+11)-(n+1), A005117(n+1)]` -/
def P12726004311742078668.Spec : Prop :=
  ∀ n, (P12726004311742078668.a n : ℤ) = A153350 (n + 1)

end A153350

/-!
# A153351: Numbers k such that 7*k+2 is not prime.

The programs for A153351, the canonical program `A153351.P5917648090387559106` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153351 has offset 1).

The definition of A153351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153351.P2398120790178534105

`comp[A105772(n+1)]`
-/

namespace A153351.P2398120790178534105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153351.P2398120790178534105

namespace A153351

/-- `comp[A105772(n+1)]` -/
def P2398120790178534105.Spec : Prop :=
  ∀ n, (P2398120790178534105.a n : ℤ) = A153351 (n + 1)

end A153351

/-! ## A153351.P13395807976858571467

`comp[A024904(n+1)-1]`
-/

namespace A153351.P13395807976858571467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024904 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153351.P13395807976858571467

namespace A153351

/-- `comp[A024904(n+1)-1]` -/
def P13395807976858571467.Spec : Prop :=
  ∀ n, (P13395807976858571467.a n : ℤ) = A153351 (n + 1)

end A153351

/-! ## A153351.P5917648090387559106

`eq[0, A010051(7*n+2)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153351

/-- `eq[0, A010051(7*n+2)]` -/
def P5917648090387559106.Spec : Prop :=
  ∀ n, (P5917648090387559106.a n : ℤ) = A153351 (n + 1)

theorem P5917648090387559106.correct : P5917648090387559106.Spec := by
  intro n
  simp only [A153351, Nat.add_sub_cancel]

end A153351

/-! ## A153351.P6508713522714953247

`lt[1, A001222(7*n+2)]`
-/

namespace A153351.P6508713522714953247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (7 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153351.P6508713522714953247

namespace A153351

/-- `lt[1, A001222(7*n+2)]` -/
def P6508713522714953247.Spec : Prop :=
  ∀ n, (P6508713522714953247.a n : ℤ) = A153351 (n + 1)

end A153351

/-! ## A153351.P6435863590009317547

`lt[2, A000005(7*n+2)]`
-/

namespace A153351.P6435863590009317547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (7 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153351.P6435863590009317547

namespace A153351

/-- `lt[2, A000005(7*n+2)]` -/
def P6435863590009317547.Spec : Prop :=
  ∀ n, (P6435863590009317547.a n : ℤ) = A153351 (n + 1)

end A153351

/-! ## A153351.P6412490443755692642

`lt[A006530(7*n+2), 4*n]`
-/

namespace A153351.P6412490443755692642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (7 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153351.P6412490443755692642

namespace A153351

/-- `lt[A006530(7*n+2), 4*n]` -/
def P6412490443755692642.Spec : Prop :=
  ∀ n, (P6412490443755692642.a n : ℤ) = A153351 (n + 1)

end A153351

/-! ## A153351.P13980968073493771091

`lt[A020639(A016933(n)+n), A016933(n)]`
-/

namespace A153351.P13980968073493771091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A016933 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153351.P13980968073493771091

namespace A153351

/-- `lt[A020639(A016933(n)+n), A016933(n)]` -/
def P13980968073493771091.Spec : Prop :=
  ∀ n, (P13980968073493771091.a n : ℤ) = A153351 (n + 1)

end A153351

/-! ## A153351.P15148148413520745892

`lt[5, ∏{e}[7*n+2, #+1]²]`
-/

namespace A153351.P15148148413520745892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153351.P15148148413520745892

namespace A153351

/-- `lt[5, ∏{e}[7*n+2, #+1]²]` -/
def P15148148413520745892.Spec : Prop :=
  ∀ n, (P15148148413520745892.a n : ℤ) = A153351 (n + 1)

end A153351

/-! ## A153351.P13135258456408575079

`eq[1, A005171(7*n+2)]`
-/

namespace A153351.P13135258456408575079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (7 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153351.P13135258456408575079

namespace A153351

/-- `eq[1, A005171(7*n+2)]` -/
def P13135258456408575079.Spec : Prop :=
  ∀ n, (P13135258456408575079.a n : ℤ) = A153351 (n + 1)

end A153351

/-! ## A153351.P15180549545963918248

`lt[A020639(7*n+2), A315960(n)]`
-/

namespace A153351.P15180549545963918248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (7 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153351.P15180549545963918248

namespace A153351

/-- `lt[A020639(7*n+2), A315960(n)]` -/
def P15180549545963918248.Spec : Prop :=
  ∀ n, (P15180549545963918248.a n : ℤ) = A153351 (n + 1)

end A153351

/-! ## A153351.P7773571958250417258

`lt[A020639(A016777(2*n)+n+1), A315914(n)]`
-/

namespace A153351.P7773571958250417258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A016777 (2 * n) + (n + 1 : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315914 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153351.P7773571958250417258

namespace A153351

/-- `lt[A020639(A016777(2*n)+n+1), A315914(n)]` -/
def P7773571958250417258.Spec : Prop :=
  ∀ n, (P7773571958250417258.a n : ℤ) = A153351 (n + 1)

end A153351

/-! ## A153351.P5117261682910024416

`lt[A014963(7*n+2)-1, 7*n]`
-/

namespace A153351.P5117261682910024416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (7 * n + 2) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153351.P5117261682910024416

namespace A153351

/-- `lt[A014963(7*n+2)-1, 7*n]` -/
def P5117261682910024416.Spec : Prop :=
  ∀ n, (P5117261682910024416.a n : ℤ) = A153351 (n + 1)

end A153351

/-!
# A153352: K-bit primes p such that p-2^i and p+2^i are composite for 0<=i<=K-1.

The programs for A153352, there is no canonical definition to state claims against.
-/

/-! ## A153352.P3020174354795287856

`∩[A145669(n+1), A255967(n+1)]`
-/

namespace A153352.P3020174354795287856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153352.P3020174354795287856

/-! ## A153352.P5694003303715340790

`p?[A255967(n+1)]`
-/

namespace A153352.P5694003303715340790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153352.P5694003303715340790

/-! ## A153352.P11714392030467508843

`p?[record[A255967(A133310(n))]]`
-/

namespace A153352.P11714392030467508843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255967 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153352.P11714392030467508843

/-! ## A153352.P3825010758482516103

`∩[A137985(n+1), A255967(n+1)]`
-/

namespace A153352.P3825010758482516103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153352.P3825010758482516103

/-! ## A153352.P15622685354426004915

`∩[A065381(n+1), A255967(n+1)]`
-/

namespace A153352.P15622685354426004915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153352.P15622685354426004915

/-! ## A153352.P7050002750480832327

`∩[A065381(n+1), A345239(n+1)]`
-/

namespace A153352.P7050002750480832327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153352.P7050002750480832327

/-! ## A153352.P16787910568346421971

`∩[A255967(n+1), A345239(n+1)]`
-/

namespace A153352.P16787910568346421971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153352.P16787910568346421971

/-! ## A153352.P13034410878958918579

`∩[A006285(n+1), A345239(n+1)]`
-/

namespace A153352.P13034410878958918579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153352.P13034410878958918579

/-! ## A153352.P5253814292533681261

`p?[record[A255967(A028920(n))]]`
-/

namespace A153352.P5253814292533681261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255967 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153352.P5253814292533681261

/-! ## A153352.P1427139654327341738

`filter[A255967(n+1), A010051(#)]`
-/

namespace A153352.P1427139654327341738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A153352.P1427139654327341738

/-!
# A153353: List of pairs of concatenated adjacent primes [p(n),p(n+1)] such that the concatenation is divisible by n.

The programs for A153353, there is no canonical definition to state claims against.
-/

/-! ## A153353.P10179337923044441326

`A045533(A125085(n+1))`
-/

namespace A153353.P10179337923044441326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045533 (A125085 (n + 1)).toNat

end

end A153353.P10179337923044441326

/-!
# A153355: Numbers k such that 5k-1 is a prime.

The programs for A153355, the canonical program `A153355.P8034231718134944401` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153355 has offset 1).

The definition of A153355 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024897, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A153355.P8034231718134944401

`1+A024897(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A153355

/-- `1+A024897(n+1)` -/
def P8034231718134944401.Spec : Prop :=
  ∀ n, P8034231718134944401.a n = A153355 (n + 1)

theorem P8034231718134944401.correct : P8034231718134944401.Spec := by
  intro n
  simp only [A153355, Nat.add_sub_cancel]

end A153355

/-! ## A153355.P8445888641491262569

`(p?[5*n-1]+1)/5`
-/

namespace A153355.P8445888641491262569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 5

end

end A153355.P8445888641491262569

namespace A153355

/-- `(p?[5*n-1]+1)/5` -/
def P8445888641491262569.Spec : Prop :=
  ∀ n, P8445888641491262569.a n = (A153355 (n + 1) : ℚ)

end A153355

/-! ## A153355.P13959752205435425255

`A111230(n+1)+3`
-/

namespace A153355.P13959752205435425255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111230 (n + 1) + 3

end

end A153355.P13959752205435425255

namespace A153355

/-- `A111230(n+1)+3` -/
def P13959752205435425255.Spec : Prop :=
  ∀ n, P13959752205435425255.a n = A153355 (n + 1)

theorem P13959752205435425255.correct : P13959752205435425255.Spec := by
  intro n
  simp only [A153355, Nat.add_sub_cancel, A153355.P13959752205435425255.a, A153355.P8034231718134944401.a, A024897, A024897.P4072693481099583505.a, A111230, A111230.P12790612550037976015.a, A105042, A105042.P10666840312701966561.f1, A105042.P10666840312701966561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153355

/-! ## A153355.P7172780220589527618

`2*A105042(n+1)`
-/

namespace A153355.P7172780220589527618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105042 (n + 1)

end

end A153355.P7172780220589527618

namespace A153355

/-- `2*A105042(n+1)` -/
def P7172780220589527618.Spec : Prop :=
  ∀ n, P7172780220589527618.a n = A153355 (n + 1)

theorem P7172780220589527618.correct : P7172780220589527618.Spec := by
  intro n
  simp only [A153355, Nat.add_sub_cancel, A153355.P7172780220589527618.a, A153355.P8034231718134944401.a, A024897, A024897.P4072693481099583505.a, A105042, A105042.P10666840312701966561.f1, A105042.P10666840312701966561.a, A111230, A111230.P12790612550037976015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153355

/-! ## A153355.P16299761558312770173

`ceil(A030433(n+1)/5)`
-/

namespace A153355.P16299761558312770173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A030433 (n + 1) : ℚ) / 5⌉

end

end A153355.P16299761558312770173

namespace A153355

/-- `ceil(A030433(n+1)/5)` -/
def P16299761558312770173.Spec : Prop :=
  ∀ n, P16299761558312770173.a n = A153355 (n + 1)

end A153355

/-! ## A153355.P6918729041968029757

`2*(A102700(n+1)+1)`
-/

namespace A153355.P6918729041968029757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A102700 (n + 1) + 1)

end

end A153355.P6918729041968029757

namespace A153355

/-- `2*(A102700(n+1)+1)` -/
def P6918729041968029757.Spec : Prop :=
  ∀ n, P6918729041968029757.a n = A153355 (n + 1)

theorem P6918729041968029757.correct : P6918729041968029757.Spec := by
  intro n
  simp only [A153355, Nat.add_sub_cancel, A153355.P6918729041968029757.a, A153355.P8034231718134944401.a, A024897, A024897.P4072693481099583505.a, A102700, A102700.P10486691176846618732.a, A105042, A105042.P10666840312701966561.f1, A105042.P10666840312701966561.a, A111230, A111230.P12790612550037976015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153355

/-! ## A153355.P14620076313183139490

`A102700(n+1)+A105042(n+1)+1`
-/

namespace A153355.P14620076313183139490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1) + (A105042 (n + 1) + 1)

end

end A153355.P14620076313183139490

namespace A153355

/-- `A102700(n+1)+A105042(n+1)+1` -/
def P14620076313183139490.Spec : Prop :=
  ∀ n, P14620076313183139490.a n = A153355 (n + 1)

theorem P14620076313183139490.correct : P14620076313183139490.Spec := by
  intro n
  simp only [A153355, Nat.add_sub_cancel, A153355.P14620076313183139490.a, A153355.P8034231718134944401.a, A024897, A024897.P4072693481099583505.a, A102700, A102700.P10486691176846618732.a, A105042, A105042.P10666840312701966561.f1, A105042.P10666840312701966561.a, A111230, A111230.P12790612550037976015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153355

/-! ## A153355.P7677625171973828769

`2*(A139367(n+1)+A024914(n+1))`
-/

namespace A153355.P7677625171973828769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A139367 (n + 1) + A024914 (n + 1))

end

end A153355.P7677625171973828769

namespace A153355

/-- `2*(A139367(n+1)+A024914(n+1))` -/
def P7677625171973828769.Spec : Prop :=
  ∀ n, P7677625171973828769.a n = A153355 (n + 1)

theorem P7677625171973828769.correct : P7677625171973828769.Spec := by
  intro n
  simp only [A153355, Nat.add_sub_cancel, A153355.P7677625171973828769.a, A153355.P8034231718134944401.a, A024897, A024897.P4072693481099583505.a, A024914, A024914.P2903943263207869472.a, A139367, A139367.P12848330086499471846.a, A102342, A102342.P12936931481854029338.f1, A102342.P12936931481854029338.a, A102700, A102700.P10486691176846618732.a, A111230, A111230.P12790612550037976015.a, A105042, A105042.P10666840312701966561.f1, A105042.P10666840312701966561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153355

/-! ## A153355.P16125085128801689721

`A116572(A049510(n+1))+1`
-/

namespace A153355.P16125085128801689721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116572 (A049510 (n + 1)).toNat + 1

end

end A153355.P16125085128801689721

namespace A153355

/-- `A116572(A049510(n+1))+1` -/
def P16125085128801689721.Spec : Prop :=
  ∀ n, P16125085128801689721.a n = A153355 (n + 1)

end A153355

/-! ## A153355.P10235475674144703677

`eq[1, A001222(5*n+4)]+1`
-/

namespace A153355.P10235475674144703677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A153355.P10235475674144703677

namespace A153355

/-- `eq[1, A001222(5*n+4)]+1` -/
def P10235475674144703677.Spec : Prop :=
  ∀ n, (P10235475674144703677.a n : ℤ) = A153355 (n + 1)

end A153355

/-! ## A153355.P225933762634999933

`eq[2, A000005(5*n+4)]+1`
-/

namespace A153355.P225933762634999933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A153355.P225933762634999933

namespace A153355

/-- `eq[2, A000005(5*n+4)]+1` -/
def P225933762634999933.Spec : Prop :=
  ∀ n, (P225933762634999933.a n : ℤ) = A153355 (n + 1)

end A153355

/-! ## A153355.P2211369510070175364

`lt[A000005(4*(n+1)+n), 3]+1`
-/

namespace A153355.P2211369510070175364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * (n + 1) + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A153355.P2211369510070175364

namespace A153355

/-- `lt[A000005(4*(n+1)+n), 3]+1` -/
def P2211369510070175364.Spec : Prop :=
  ∀ n, (P2211369510070175364.a n : ℤ) = A153355 (n + 1)

end A153355

/-! ## A153355.P14440763107077297573

`A004277(A105042(n+1))`
-/

namespace A153355.P14440763107077297573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A105042 (n + 1)).toNat

end

end A153355.P14440763107077297573

namespace A153355

/-- `A004277(A105042(n+1))` -/
def P14440763107077297573.Spec : Prop :=
  ∀ n, P14440763107077297573.a n = A153355 (n + 1)

end A153355

/-! ## A153355.P16342176926212717066

`A059030(A102700(n+1))`
-/

namespace A153355.P16342176926212717066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059030 (A102700 (n + 1)).toNat

end

end A153355.P16342176926212717066

namespace A153355

/-- `A059030(A102700(n+1))` -/
def P16342176926212717066.Spec : Prop :=
  ∀ n, P16342176926212717066.a n = A153355 (n + 1)

end A153355

/-! ## A153355.P14757874261890962151

`A000203(A045457(n+2))/5`
-/

namespace A153355.P14757874261890962151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A045457 (n + 2)).toNat : ℚ) / 5

end

end A153355.P14757874261890962151

namespace A153355

/-- `A000203(A045457(n+2))/5` -/
def P14757874261890962151.Spec : Prop :=
  ∀ n, P14757874261890962151.a n = (A153355 (n + 1) : ℚ)

end A153355

/-! ## A153355.P10616188176335374350

`A004273(A102700(n+1)+1)+1`
-/

namespace A153355.P10616188176335374350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A102700 (n + 1) + 1).toNat + 1

end

end A153355.P10616188176335374350

namespace A153355

/-- `A004273(A102700(n+1)+1)+1` -/
def P10616188176335374350.Spec : Prop :=
  ∀ n, P10616188176335374350.a n = A153355 (n + 1)

end A153355

/-! ## A153355.P5800487236122264789

`A004273(A105042(n+1)+1)-1`
-/

namespace A153355.P5800487236122264789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A105042 (n + 1) + 1).toNat - 1

end

end A153355.P5800487236122264789

namespace A153355

/-- `A004273(A105042(n+1)+1)-1` -/
def P5800487236122264789.Spec : Prop :=
  ∀ n, P5800487236122264789.a n = A153355 (n + 1)

end A153355

/-! ## A153355.P8372647566805308365

`A005408(A105042(n+1)-1)+1`
-/

namespace A153355.P8372647566805308365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A105042 (n + 1) - 1).toNat + 1

end

end A153355.P8372647566805308365

namespace A153355

/-- `A005408(A105042(n+1)-1)+1` -/
def P8372647566805308365.Spec : Prop :=
  ∀ n, P8372647566805308365.a n = A153355 (n + 1)

end A153355

/-! ## A153355.P8295794758305234410

`2*A023455(A108856(n+1))`
-/

namespace A153355.P8295794758305234410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023455 (A108856 (n + 1)).toNat

end

end A153355.P8295794758305234410

namespace A153355

/-- `2*A023455(A108856(n+1))` -/
def P8295794758305234410.Spec : Prop :=
  ∀ n, P8295794758305234410.a n = A153355 (n + 1)

end A153355

/-! ## A153355.P5333020326557960538

`2*A023456(A108856(n+1)+1)`
-/

namespace A153355.P5333020326557960538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023456 (A108856 (n + 1) + 1).toNat

end

end A153355.P5333020326557960538

namespace A153355

/-- `2*A023456(A108856(n+1)+1)` -/
def P5333020326557960538.Spec : Prop :=
  ∀ n, P5333020326557960538.a n = A153355 (n + 1)

end A153355

/-!
# A153356: Decimal expansion of log_15 (5).

The programs for A153356, there is no canonical definition to state claims against.
-/

/-! ## A153356.P14607656395128797207

`9-A153018(n)`
-/

namespace A153356.P14607656395128797207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A153018 n

end

end A153356.P14607656395128797207

/-!
# A153357: Numbers n such that the harmonic number numerator A001008(n) is a semiprime.

The programs for A153357, there is no canonical definition to state claims against.
-/

/-! ## A153357.P17930543885725748885

`eq[2, A308967(n+1)]+1`
-/

namespace A153357.P17930543885725748885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308967 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A153357.P17930543885725748885

/-! ## A153357.P16181920857769931597

`eq[2, A308967(A028310(n))]`
-/

namespace A153357.P16181920857769931597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308967 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153357.P16181920857769931597

/-! ## A153357.P9722470188826783794

`A065475(eq[2, A308967(n+1)])`
-/

namespace A153357.P9722470188826783794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A153357.P9722470188826783794

/-! ## A153357.P8026250227461386295

`eq[2, A308967(A233583(n+1))]`
-/

namespace A153357.P8026250227461386295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308967 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153357.P8026250227461386295

/-! ## A153357.P9126575311927912696

`A326178(eq[2, A308967(n+1)])`
-/

namespace A153357.P9126575311927912696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A153357.P9126575311927912696

/-! ## A153357.P300768929533670304

`eq[2, A308967(A000007(n)+n)]`
-/

namespace A153357.P300768929533670304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308967 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153357.P300768929533670304

/-! ## A153357.P6075156593728876660

`eq[2, A308967(A008486(n)-2*n)]`
-/

namespace A153357.P6075156593728876660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308967 (A008486 n - (2 * n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153357.P6075156593728876660

/-! ## A153357.P14322202106309943208

`eq[2, A308967(A008486(n)-n-n)]`
-/

namespace A153357.P14322202106309943208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308967 (A008486 n - (n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153357.P14322202106309943208

/-!
# A153360: Number of zig-zag paths from top to bottom of a rectangle of width 10 with n rows.

The programs for A153360, the canonical program `A153360.P9513654755468399864` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153360 has offset 1).

The definition of A153360 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153360.P9513654755468399864

`ogf((10+8x-24x^2-12x^3+6x^4)/(1-x-4x^2+3x^3+3x^4-x^5))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153360

/-- `ogf((10+8x-24x^2-12x^3+6x^4)/(1-x-4x^2+3x^3+3x^4-x^5))` -/
def P9513654755468399864.Spec : Prop :=
  ∀ n, P9513654755468399864.a n = A153360 (n + 1)

theorem P9513654755468399864.correct : P9513654755468399864.Spec := by
  intro n
  simp only [A153360, Nat.add_sub_cancel]

end A153360

/-! ## A153360.P9570591132759772216

`A336675(n)+A090994(n+1)`
-/

namespace A153360.P9570591132759772216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336675 n + A090994 (n + 1)

end

end A153360.P9570591132759772216

namespace A153360

/-- `A336675(n)+A090994(n+1)` -/
def P9570591132759772216.Spec : Prop :=
  ∀ n, P9570591132759772216.a n = A153360 (n + 1)

end A153360

/-! ## A153360.P17875826366771404552

`A336675(n)+sqrt(A188830(n+2))`
-/

namespace A153360.P17875826366771404552
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A336675 n : ℝ) + Real.sqrt (A188830 (n + 2) : ℝ)

end

end A153360.P17875826366771404552

namespace A153360

/-- `A336675(n)+sqrt(A188830(n+2))` -/
def P17875826366771404552.Spec : Prop :=
  ∀ n, P17875826366771404552.a n = (A153360 (n + 1) : ℝ)

end A153360

/-! ## A153360.P10196505392551907361

`A220062(eq[12, A219347(n)])`
-/

namespace A153360.P10196505392551907361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A153360.P10196505392551907361

namespace A153360

/-- `A220062(eq[12, A219347(n)])` -/
def P10196505392551907361.Spec : Prop :=
  ∀ n, P10196505392551907361.a n = A153360 (n + 1)

end A153360

/-! ## A153360.P14422588071475821020

`A220062(Δ[n²]+A161680(n+11)+11)`
-/

namespace A153360.P14422588071475821020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220062 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A161680 (n + 11) + 11)).toNat

end

end A153360.P14422588071475821020

namespace A153360

/-- `A220062(Δ[n²]+A161680(n+11)+11)` -/
def P14422588071475821020.Spec : Prop :=
  ∀ n, P14422588071475821020.a n = A153360 (n + 1)

end A153360

/-! ## A153360.P15731552307777967361

`A220062(eq[11, A193592(n)])`
-/

namespace A153360.P15731552307777967361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A153360.P15731552307777967361

namespace A153360

/-- `A220062(eq[11, A193592(n)])` -/
def P15731552307777967361.Spec : Prop :=
  ∀ n, P15731552307777967361.a n = A153360 (n + 1)

end A153360

/-!
# A153361: Number of zig-zag paths from top to bottom of a rectangle of width 12 with n rows.

The programs for A153361, the canonical program `A153361.P6896018690634073511` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153361 has offset 1).

The definition of A153361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153361.P6896018690634073511

`ogf((12+10x-40x^2-24x^3+24x^4+6x^5)/(1-x-5x^2+4x^3+6x^4-3x^5-x^6))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153361

/-- `ogf((12+10x-40x^2-24x^3+24x^4+6x^5)/(1-x-5x^2+4x^3+6x^4-3x^5-x^6))` -/
def P6896018690634073511.Spec : Prop :=
  ∀ n, P6896018690634073511.a n = A153361 (n + 1)

theorem P6896018690634073511.correct : P6896018690634073511.Spec := by
  intro n
  simp only [A153361, Nat.add_sub_cancel]

end A153361

/-! ## A153361.P10111931460212077458

`A220062(eq[13, A193592(n)])`
-/

namespace A153361.P10111931460212077458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A153361.P10111931460212077458

namespace A153361

/-- `A220062(eq[13, A193592(n)])` -/
def P10111931460212077458.Spec : Prop :=
  ∀ n, P10111931460212077458.a n = A153361 (n + 1)

end A153361

/-! ## A153361.P10036660534293723099

`A220062(2*(n+1)+A000217(n+12)+12)`
-/

namespace A153361.P10036660534293723099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220062 ((2 * (n + 1) : ℤ) + (A000217 (n + 12) + 12)).toNat

end

end A153361.P10036660534293723099

namespace A153361

/-- `A220062(2*(n+1)+A000217(n+12)+12)` -/
def P10036660534293723099.Spec : Prop :=
  ∀ n, P10036660534293723099.a n = A153361 (n + 1)

end A153361

/-! ## A153361.P4303026047784260787

`A153368(n+1)+A006519(A007283(n))`
-/

namespace A153361.P4303026047784260787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153368 (n + 1) + A006519 (A007283 n).toNat

end

end A153361.P4303026047784260787

namespace A153361

/-- `A153368(n+1)+A006519(A007283(n))` -/
def P4303026047784260787.Spec : Prop :=
  ∀ n, P4303026047784260787.a n = A153361 (n + 1)

end A153361

/-! ## A153361.P4101482738771500611

`A153368(n+1)+A006519(A098646(n))`
-/

namespace A153361.P4101482738771500611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153368 (n + 1) + A006519 (A098646 n).toNat

end

end A153361.P4101482738771500611

namespace A153361

/-- `A153368(n+1)+A006519(A098646(n))` -/
def P4101482738771500611.Spec : Prop :=
  ∀ n, P4101482738771500611.a n = A153361 (n + 1)

end A153361

/-!
# A153362: Number of zig-zag paths from top to bottom of a rectangle of width 9 with n rows.

The programs for A153362, the canonical program `A153362.P16095394824988375316` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153362 has offset 1).

The definition of A153362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153362.P6055453260767512202

`ogf((9+16x-15x^2-24x^3+x^4)/(1-5x^2+5x^4))`
-/

namespace A153362.P6055453260767512202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 16, -15, -24, 1] [1, 0, -5, 0, 5] n

end

end A153362.P6055453260767512202

namespace A153362

/-- `ogf((9+16x-15x^2-24x^3+x^4)/(1-5x^2+5x^4))` -/
def P6055453260767512202.Spec : Prop :=
  ∀ n, P6055453260767512202.a n = A153362 (n + 1)

end A153362

/-! ## A153362.P16095394824988375316

`A153364(n+1)+A153363(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A153362

/-- `A153364(n+1)+A153363(n+1)` -/
def P16095394824988375316.Spec : Prop :=
  ∀ n, P16095394824988375316.a n = A153362 (n + 1)

theorem P16095394824988375316.correct : P16095394824988375316.Spec := by
  intro n
  simp only [A153362, Nat.add_sub_cancel]

end A153362

/-! ## A153362.P11649779389619576872

`A220062(A056000(n+7))`
-/

namespace A153362.P11649779389619576872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220062 (A056000 (n + 7)).toNat

end

end A153362.P11649779389619576872

namespace A153362

/-- `A220062(A056000(n+7))` -/
def P11649779389619576872.Spec : Prop :=
  ∀ n, P11649779389619576872.a n = A153362 (n + 1)

end A153362

/-! ## A153362.P1718600215828318667

`A220062(A055999(n+8)-4)`
-/

namespace A153362.P1718600215828318667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220062 (A055999 (n + 8) - 4).toNat

end

end A153362.P1718600215828318667

namespace A153362

/-- `A220062(A055999(n+8)-4)` -/
def P1718600215828318667.Spec : Prop :=
  ∀ n, P1718600215828318667.a n = A153362 (n + 1)

end A153362

/-! ## A153362.P1470492282290094029

`A220062(A000124(n+11)-11)`
-/

namespace A153362.P1470492282290094029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220062 (A000124 (n + 11) - 11).toNat

end

end A153362.P1470492282290094029

namespace A153362

/-- `A220062(A000124(n+11)-11)` -/
def P1470492282290094029.Spec : Prop :=
  ∀ n, P1470492282290094029.a n = A153362 (n + 1)

end A153362

/-! ## A153362.P3935280300956697072

`A220062(eq[10, A193592(n)])`
-/

namespace A153362.P3935280300956697072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A153362.P3935280300956697072

namespace A153362

/-- `A220062(eq[10, A193592(n)])` -/
def P3935280300956697072.Spec : Prop :=
  ∀ n, P3935280300956697072.a n = A153362 (n + 1)

end A153362

/-! ## A153362.P7795011193320226991

`A220062(eq[10, A219347(n)])`
-/

namespace A153362.P7795011193320226991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A153362.P7795011193320226991

namespace A153362

/-- `A220062(eq[10, A219347(n)])` -/
def P7795011193320226991.Spec : Prop :=
  ∀ n, P7795011193320226991.a n = A153362 (n + 1)

end A153362

/-!
# A153363: Number of zig-zag paths from top to bottom of a rectangle of width 9 with n rows whose color is that of the top right corner.

The programs for A153363, the canonical program `A153363.P15146954388921839273` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153363 has offset 1).

The definition of A153363 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153363.P13354825303304516889

`ogf((5+8x-9x^2-12x^3+x^4)/(1-5x^2+5x^4))`
-/

namespace A153363.P13354825303304516889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 8, -9, -12, 1] [1, 0, -5, 0, 5] n

end

end A153363.P13354825303304516889

namespace A153363

/-- `ogf((5+8x-9x^2-12x^3+x^4)/(1-5x^2+5x^4))` -/
def P13354825303304516889.Spec : Prop :=
  ∀ n, P13354825303304516889.a n = A153363 (n + 1)

end A153363

/-! ## A153363.P16610053445217260116

`A153362(n+1)-A153364(n+1)`
-/

namespace A153363.P16610053445217260116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153362 (n + 1) - A153364 (n + 1)

end

end A153363.P16610053445217260116

namespace A153363

/-- `A153362(n+1)-A153364(n+1)` -/
def P16610053445217260116.Spec : Prop :=
  ∀ n, P16610053445217260116.a n = A153363 (n + 1)

theorem P16610053445217260116.correct : P16610053445217260116.Spec := by
  intro n
  simp only [A153363, Nat.add_sub_cancel, A153363.P16610053445217260116.a, A153363.P15146954388921839273.f1, A153363.P15146954388921839273.f2, A153363.P15146954388921839273.a, A153362, A153362.P16095394824988375316.a, A153364, A153364.P8612063116656853991.a, A153365, A153365.P13000235141758707324.a, A153366, A153366.P12468753122869060131.a, A178381, A178381.P7048481444014556393.a, A217777, A217777.P16376765819323818543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153363

/-! ## A153363.P15146954388921839273

`∪[A153365(n+1), A153366(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153363

/-- `∪[A153365(n+1), A153366(n+1)]` -/
def P15146954388921839273.Spec : Prop :=
  ∀ n, (P15146954388921839273.a n : ℤ) = A153363 (n + 1)

theorem P15146954388921839273.correct : P15146954388921839273.Spec := by
  intro n
  simp only [A153363, Nat.add_sub_cancel]

end A153363

/-! ## A153363.P4706965504434411333

`∪[Δ[4*A081567(n)], A153366(n+1)]`
-/

namespace A153363.P4706965504434411333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A081567 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A153363.P4706965504434411333

namespace A153363

/-- `∪[Δ[4*A081567(n)], A153366(n+1)]` -/
def P4706965504434411333.Spec : Prop :=
  ∀ n, (P4706965504434411333.a n : ℤ) = A153363 (n + 1)

end A153363

/-! ## A153363.P6120046093872778972

`∪[A153364(2*(n+1)), A153366(n+1)]`
-/

namespace A153363.P6120046093872778972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153364 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A153363.P6120046093872778972

namespace A153363

/-- `∪[A153364(2*(n+1)), A153366(n+1)]` -/
def P6120046093872778972.Spec : Prop :=
  ∀ n, (P6120046093872778972.a n : ℤ) = A153363 (n + 1)

end A153363

/-! ## A153363.P10207062284189593518

`∪[2*A153367(n+1), A153366(n+1)]`
-/

namespace A153363.P10207062284189593518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A153363.P10207062284189593518

namespace A153363

/-- `∪[2*A153367(n+1), A153366(n+1)]` -/
def P10207062284189593518.Spec : Prop :=
  ∀ n, (P10207062284189593518.a n : ℤ) = A153363 (n + 1)

end A153363

/-!
# A153364: Number of zig-zag paths from top to bottom of a rectangle of width 9 with n rows whose color is not that of the top right corner.

The programs for A153364, the canonical program `A153364.P8612063116656853991` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153364 has offset 1).

The definition of A153364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 357 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153364.P8612063116656853991

`A217777(n)+A178381(n+3)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153364

/-- `A217777(n)+A178381(n+3)` -/
def P8612063116656853991.Spec : Prop :=
  ∀ n, P8612063116656853991.a n = A153364 (n + 1)

theorem P8612063116656853991.correct : P8612063116656853991.Spec := by
  intro n
  simp only [A153364, Nat.add_sub_cancel]

end A153364

/-! ## A153364.P15268649880411194591

`gcd(2, n+1)*A153367(A008619(n))`
-/

namespace A153364.P15268649880411194591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A153367 (A008619 n).toNat

end

end A153364.P15268649880411194591

namespace A153364

/-- `gcd(2, n+1)*A153367(A008619(n))` -/
def P15268649880411194591.Spec : Prop :=
  ∀ n, P15268649880411194591.a n = A153364 (n + 1)

end A153364

/-! ## A153364.P9422415798890646582

`A178381(n+1)+A216212(n+1)+A178381(n+1)`
-/

namespace A153364.P9422415798890646582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (n + 1) + (A216212 (n + 1) + A178381 (n + 1))

end

end A153364.P9422415798890646582

namespace A153364

/-- `A178381(n+1)+A216212(n+1)+A178381(n+1)` -/
def P9422415798890646582.Spec : Prop :=
  ∀ n, P9422415798890646582.a n = A153364 (n + 1)

end A153364

/-! ## A153364.P5845384006830063369

`ogf((4+8x-6x^2-12x^3)/(1-5x^2+5x^4))`
-/

namespace A153364.P5845384006830063369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 8, -6, -12] [1, 0, -5, 0, 5] n

end

end A153364.P5845384006830063369

namespace A153364

/-- `ogf((4+8x-6x^2-12x^3)/(1-5x^2+5x^4))` -/
def P5845384006830063369.Spec : Prop :=
  ∀ n, P5845384006830063369.a n = A153364 (n + 1)

end A153364

/-! ## A153364.P4549764939975681896

`∪[5*(a(n-1)-a(n-2)), A153367(n+1)]` with `a(0)=8, a(1)=28`
-/

namespace A153364.P4549764939975681896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 28] fun n f1 =>
  5 * (f1 (n - 1) - f1 (n - 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A153364.P4549764939975681896

namespace A153364

/-- `∪[5*(a(n-1)-a(n-2)), A153367(n+1)]` -/
def P4549764939975681896.Spec : Prop :=
  ∀ n, (P4549764939975681896.a n : ℤ) = A153364 (n + 1)

end A153364

/-! ## A153364.P4859263646772776859

`∪[5*(a(n-1)-a(n-2)), 2*A052936(n+1)]` with `a(0)=8, a(1)=28`
-/

namespace A153364.P4859263646772776859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 28] fun n f1 =>
  5 * (f1 (n - 1) - f1 (n - 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A153364.P4859263646772776859

namespace A153364

/-- `∪[5*(a(n-1)-a(n-2)), 2*A052936(n+1)]` -/
def P4859263646772776859.Spec : Prop :=
  ∀ n, (P4859263646772776859.a n : ℤ) = A153364 (n + 1)

end A153364

/-! ## A153364.P12707508766448066308

`∪[A153365(n+1), A153367(n+1)]`
-/

namespace A153364.P12707508766448066308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A153364.P12707508766448066308

namespace A153364

/-- `∪[A153365(n+1), A153367(n+1)]` -/
def P12707508766448066308.Spec : Prop :=
  ∀ n, (P12707508766448066308.a n : ℤ) = A153364 (n + 1)

end A153364

/-! ## A153364.P12170335746926605594

`A153363(n+2)/2`
-/

namespace A153364.P12170335746926605594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153363 (n + 2) : ℚ) / 2

end

end A153364.P12170335746926605594

namespace A153364

/-- `A153363(n+2)/2` -/
def P12170335746926605594.Spec : Prop :=
  ∀ n, P12170335746926605594.a n = (A153364 (n + 1) : ℚ)

end A153364

/-! ## A153364.P5885374091925394029

`A153362(n+1)-A153363(n+1)`
-/

namespace A153364.P5885374091925394029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153362 (n + 1) - A153363 (n + 1)

end

end A153364.P5885374091925394029

namespace A153364

/-- `A153362(n+1)-A153363(n+1)` -/
def P5885374091925394029.Spec : Prop :=
  ∀ n, P5885374091925394029.a n = A153364 (n + 1)

theorem P5885374091925394029.correct : P5885374091925394029.Spec := by
  intro n
  simp only [A153364, Nat.add_sub_cancel, A153364.P5885374091925394029.a, A153364.P8612063116656853991.a, A153362, A153362.P16095394824988375316.a, A153363, A153363.P15146954388921839273.f1, A153363.P15146954388921839273.f2, A153363.P15146954388921839273.a, A178381, A178381.P7048481444014556393.a, A217777, A217777.P16376765819323818543.a, A153365, A153365.P13000235141758707324.a, A153366, A153366.P12468753122869060131.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153364

/-!
# A153365: Number of zig-zag paths from top to bottom of a rectangle of width 9 with 2*n rows whose color is that of the top right corner.

The programs for A153365, the canonical program `A153365.P13000235141758707324` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153365 has offset 1).

The definition of A153365 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153365.P12040952281079840379

`ogf((8-12x)/(1-5x+5x^2))`
-/

namespace A153365.P12040952281079840379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -12] [1, -5, 5] n

end

end A153365.P12040952281079840379

namespace A153365

/-- `ogf((8-12x)/(1-5x+5x^2))` -/
def P12040952281079840379.Spec : Prop :=
  ∀ n, P12040952281079840379.a n = A153365 (n + 1)

end A153365

/-! ## A153365.P13000235141758707324

`5*(a(n-1)-a(n-2))` with `a(0)=8, a(1)=28`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153365

/-- `5*(a(n-1)-a(n-2))` -/
def P13000235141758707324.Spec : Prop :=
  ∀ n, P13000235141758707324.a n = A153365 (n + 1)

theorem P13000235141758707324.correct : P13000235141758707324.Spec := by
  intro n
  simp only [A153365, Nat.add_sub_cancel]

end A153365

/-! ## A153365.P4658173503249327142

`Δ[4*A081567(n)]`
-/

namespace A153365.P4658173503249327142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A081567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153365.P4658173503249327142

namespace A153365

/-- `Δ[4*A081567(n)]` -/
def P4658173503249327142.Spec : Prop :=
  ∀ n, P4658173503249327142.a n = A153365 (n + 1)

end A153365

/-! ## A153365.P11724876105129543100

`A153363(2*(n+1))`
-/

namespace A153365.P11724876105129543100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153363 (2 * (n + 1))

end

end A153365.P11724876105129543100

namespace A153365

/-- `A153363(2*(n+1))` -/
def P11724876105129543100.Spec : Prop :=
  ∀ n, P11724876105129543100.a n = A153365 (n + 1)

end A153365

/-! ## A153365.P7598331457430776792

`A153364(2*(n+1))`
-/

namespace A153365.P7598331457430776792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153364 (2 * (n + 1))

end

end A153365.P7598331457430776792

namespace A153365

/-- `A153364(2*(n+1))` -/
def P7598331457430776792.Spec : Prop :=
  ∀ n, P7598331457430776792.a n = A153365 (n + 1)

end A153365

/-! ## A153365.P5265678530157540793

`2*A153367(n+1)`
-/

namespace A153365.P5265678530157540793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153367 (n + 1)

end

end A153365.P5265678530157540793

namespace A153365

/-- `2*A153367(n+1)` -/
def P5265678530157540793.Spec : Prop :=
  ∀ n, P5265678530157540793.a n = A153365 (n + 1)

end A153365

/-! ## A153365.P3954755600132079296

`4*A052936(n+1)`
-/

namespace A153365.P3954755600132079296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A052936 (n + 1)

end

end A153365.P3954755600132079296

namespace A153365

/-- `4*A052936(n+1)` -/
def P3954755600132079296.Spec : Prop :=
  ∀ n, P3954755600132079296.a n = A153365 (n + 1)

end A153365

/-! ## A153365.P6176826280100509794

`2*A153364(Δ[n²])`
-/

namespace A153365.P6176826280100509794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153364 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A153365.P6176826280100509794

namespace A153365

/-- `2*A153364(Δ[n²])` -/
def P6176826280100509794.Spec : Prop :=
  ∀ n, P6176826280100509794.a n = A153365 (n + 1)

end A153365

/-! ## A153365.P10416990088984747129

`Δ[2*A147748(n+1)]`
-/

namespace A153365.P10416990088984747129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153365.P10416990088984747129

namespace A153365

/-- `Δ[2*A147748(n+1)]` -/
def P10416990088984747129.Spec : Prop :=
  ∀ n, P10416990088984747129.a n = A153365 (n + 1)

end A153365

/-! ## A153365.P8559415427924977942

`A081567(n)+A052936(n+2)`
-/

namespace A153365.P8559415427924977942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 n + A052936 (n + 2)

end

end A153365.P8559415427924977942

namespace A153365

/-- `A081567(n)+A052936(n+2)` -/
def P8559415427924977942.Spec : Prop :=
  ∀ n, P8559415427924977942.a n = A153365 (n + 1)

end A153365

/-! ## A153365.P4205290374096462040

`∩[A153363(n+1), A153364(n+1)]`
-/

namespace A153365.P4205290374096462040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153365.P4205290374096462040

namespace A153365

/-- `∩[A153363(n+1), A153364(n+1)]` -/
def P4205290374096462040.Spec : Prop :=
  ∀ n, (P4205290374096462040.a n : ℤ) = A153365 (n + 1)

end A153365

/-! ## A153365.P12812303359742960746

`A216212(2*n+1)+A147748(n+2)`
-/

namespace A153365.P12812303359742960746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216212 (2 * n + 1) + A147748 (n + 2)

end

end A153365.P12812303359742960746

namespace A153365

/-- `A216212(2*n+1)+A147748(n+2)` -/
def P12812303359742960746.Spec : Prop :=
  ∀ n, P12812303359742960746.a n = A153365 (n + 1)

end A153365

/-! ## A153365.P11968538680055542221

`A030191(n+1)+A081567(n)+A020876(n)`
-/

namespace A153365.P11968538680055542221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030191 (n + 1) + (A081567 n + A020876 n)

end

end A153365.P11968538680055542221

namespace A153365

/-- `A030191(n+1)+A081567(n)+A020876(n)` -/
def P11968538680055542221.Spec : Prop :=
  ∀ n, P11968538680055542221.a n = A153365 (n + 1)

end A153365

/-! ## A153365.P6310072569057077881

`A030191(n+1)+A260304(n)+A030191(n)`
-/

namespace A153365.P6310072569057077881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030191 (n + 1) + (A260304 n + A030191 n)

end

end A153365.P6310072569057077881

namespace A153365

/-- `A030191(n+1)+A260304(n)+A030191(n)` -/
def P6310072569057077881.Spec : Prop :=
  ∀ n, P6310072569057077881.a n = A153365 (n + 1)

end A153365

/-! ## A153365.P13317066932901451235

`A030191(n+1)+A093129(n+1)+A081567(n)`
-/

namespace A153365.P13317066932901451235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030191 (n + 1) + (A093129 (n + 1) + A081567 n)

end

end A153365.P13317066932901451235

namespace A153365

/-- `A030191(n+1)+A093129(n+1)+A081567(n)` -/
def P13317066932901451235.Spec : Prop :=
  ∀ n, P13317066932901451235.a n = A153365 (n + 1)

end A153365

/-! ## A153365.P7240732514245300886

`A217778(n+1)+A217779(n+1)+A081567(n)`
-/

namespace A153365.P7240732514245300886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217778 (n + 1) + (A217779 (n + 1) + A081567 n)

end

end A153365.P7240732514245300886

namespace A153365

/-- `A217778(n+1)+A217779(n+1)+A081567(n)` -/
def P7240732514245300886.Spec : Prop :=
  ∀ n, P7240732514245300886.a n = A153365 (n + 1)

end A153365

/-! ## A153365.P15689158982555297446

`A081567(n+1)+A081567(n)+A039717(n+2)`
-/

namespace A153365.P15689158982555297446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 (n + 1) + (A081567 n + A039717 (n + 2))

end

end A153365.P15689158982555297446

namespace A153365

/-- `A081567(n+1)+A081567(n)+A039717(n+2)` -/
def P15689158982555297446.Spec : Prop :=
  ∀ n, P15689158982555297446.a n = A153365 (n + 1)

end A153365

/-! ## A153365.P18430319111151985986

`A153366(n+2)/2`
-/

namespace A153365.P18430319111151985986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153366 (n + 2) : ℚ) / 2

end

end A153365.P18430319111151985986

namespace A153365

/-- `A153366(n+2)/2` -/
def P18430319111151985986.Spec : Prop :=
  ∀ n, P18430319111151985986.a n = (A153365 (n + 1) : ℚ)

end A153365

/-! ## A153365.P2275734853275319176

`A153362(2*(n+1))/2`
-/

namespace A153365.P2275734853275319176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153362 (2 * (n + 1)) : ℚ) / 2

end

end A153365.P2275734853275319176

namespace A153365

/-- `A153362(2*(n+1))/2` -/
def P2275734853275319176.Spec : Prop :=
  ∀ n, P2275734853275319176.a n = (A153365 (n + 1) : ℚ)

end A153365

/-! ## A153365.P14689619064499519936

`A153363(Δ[(n+1)²])/2`
-/

namespace A153365.P14689619064499519936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153363 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A153365.P14689619064499519936

namespace A153365

/-- `A153363(Δ[(n+1)²])/2` -/
def P14689619064499519936.Spec : Prop :=
  ∀ n, P14689619064499519936.a n = (A153365 (n + 1) : ℚ)

end A153365

/-!
# A153366: Number of zig-zag paths from top to bottom of a rectangle of width 9 with 2*n-1 rows whose color is that of the top right corner.

The programs for A153366, the canonical program `A153366.P12468753122869060131` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153366 has offset 1).

The definition of A153366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153366.P13110803744851572303

`ogf((5-9x+x^2)/(1-5x+5x^2))`
-/

namespace A153366.P13110803744851572303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -9, 1] [1, -5, 5] n

end

end A153366.P13110803744851572303

namespace A153366

/-- `ogf((5-9x+x^2)/(1-5x+5x^2))` -/
def P13110803744851572303.Spec : Prop :=
  ∀ n, P13110803744851572303.a n = A153366 (n + 1)

end A153366

/-! ## A153366.P12468753122869060131

`5*(a(n-1)-a(n-2))` with `a(0)=5, a(1)=16, a(2)=56`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153366

/-- `5*(a(n-1)-a(n-2))` -/
def P12468753122869060131.Spec : Prop :=
  ∀ n, P12468753122869060131.a n = A153366 (n + 1)

theorem P12468753122869060131.correct : P12468753122869060131.Spec := by
  intro n
  simp only [A153366, Nat.add_sub_cancel]

end A153366

/-! ## A153366.P18125940525237984563

`A153363(Δ[n²])`
-/

namespace A153366.P18125940525237984563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153363 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A153366.P18125940525237984563

namespace A153366

/-- `A153363(Δ[n²])` -/
def P18125940525237984563.Spec : Prop :=
  ∀ n, P18125940525237984563.a n = A153366 (n + 1)

end A153366

/-! ## A153366.P641315839854520322

`ceil(8*A081567(n+1)/5)`
-/

namespace A153366.P641315839854520322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈8 * ((A081567 (n + 1) : ℚ) / 5)⌉

end

end A153366.P641315839854520322

namespace A153366

/-- `ceil(8*A081567(n+1)/5)` -/
def P641315839854520322.Spec : Prop :=
  ∀ n, P641315839854520322.a n = A153366 (n + 1)

end A153366

/-! ## A153366.P1415715136660669027

`A153367(n+1)+A147748(n)`
-/

namespace A153366.P1415715136660669027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153367 (n + 1) + A147748 n

end

end A153366.P1415715136660669027

namespace A153366

/-- `A153367(n+1)+A147748(n)` -/
def P1415715136660669027.Spec : Prop :=
  ∀ n, P1415715136660669027.a n = A153366 (n + 1)

end A153366

/-! ## A153366.P12359748335874124807

`(A040006(n)+2)*A052936(n)`
-/

namespace A153366.P12359748335874124807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040006 n + 2) * A052936 n

end

end A153366.P12359748335874124807

namespace A153366

/-- `(A040006(n)+2)*A052936(n)` -/
def P12359748335874124807.Spec : Prop :=
  ∀ n, P12359748335874124807.a n = A153366 (n + 1)

end A153366

/-! ## A153366.P3132173623431554300

`A153363(2*n+1)+A000007(n+1)`
-/

namespace A153366.P3132173623431554300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153363 (2 * n + 1) + A000007 (n + 1)

end

end A153366.P3132173623431554300

namespace A153366

/-- `A153363(2*n+1)+A000007(n+1)` -/
def P3132173623431554300.Spec : Prop :=
  ∀ n, P3132173623431554300.a n = A153366 (n + 1)

end A153366

/-! ## A153366.P5975459702412906555

`A153362(2*n+1)-A153367(n+1)`
-/

namespace A153366.P5975459702412906555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153362 (2 * n + 1) - A153367 (n + 1)

end

end A153366.P5975459702412906555

namespace A153366

/-- `A153362(2*n+1)-A153367(n+1)` -/
def P5975459702412906555.Spec : Prop :=
  ∀ n, P5975459702412906555.a n = A153366 (n + 1)

end A153366

/-! ## A153366.P1053770832463446035

`A153362(2*n+1)-A153364(2*n+1)`
-/

namespace A153366.P1053770832463446035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153362 (2 * n + 1) - A153364 (2 * n + 1)

end

end A153366.P1053770832463446035

namespace A153366

/-- `A153362(2*n+1)-A153364(2*n+1)` -/
def P1053770832463446035.Spec : Prop :=
  ∀ n, P1053770832463446035.a n = A153366 (n + 1)

end A153366

/-!
# A153367: Number of zig-zag paths from top to bottom of a rectangle of width 9 with 2n-1 rows whose color is not that of the top right corner.

The programs for A153367, the canonical program `A153367.P7791884392145372413` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153367 has offset 1).

The definition of A153367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153367.P7791884392145372413

`ogf((4-6x)/(1-5x+5x^2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153367

/-- `ogf((4-6x)/(1-5x+5x^2))` -/
def P7791884392145372413.Spec : Prop :=
  ∀ n, P7791884392145372413.a n = A153367 (n + 1)

theorem P7791884392145372413.correct : P7791884392145372413.Spec := by
  intro n
  simp only [A153367, Nat.add_sub_cancel]

end A153367

/-! ## A153367.P1113546087727019271

`5*(a(n-1)-a(n-2))` with `a(0)=4, a(1)=14`
-/

namespace A153367.P1113546087727019271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 14] fun n a =>
  5 * (a (n - 1) - a (n - 2))

end

end A153367.P1113546087727019271

namespace A153367

/-- `5*(a(n-1)-a(n-2))` -/
def P1113546087727019271.Spec : Prop :=
  ∀ n, P1113546087727019271.a n = A153367 (n + 1)

end A153367

/-! ## A153367.P9730419122689671950

`A153364(Δ[n²])`
-/

namespace A153367.P9730419122689671950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153364 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A153367.P9730419122689671950

namespace A153367

/-- `A153364(Δ[n²])` -/
def P9730419122689671950.Spec : Prop :=
  ∀ n, P9730419122689671950.a n = A153367 (n + 1)

end A153367

/-! ## A153367.P5489504764541557311

`2*Δ[A081567(n)]`
-/

namespace A153367.P5489504764541557311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A153367.P5489504764541557311

namespace A153367

/-- `2*Δ[A081567(n)]` -/
def P5489504764541557311.Spec : Prop :=
  ∀ n, P5489504764541557311.a n = A153367 (n + 1)

end A153367

/-! ## A153367.P679691592960025431

`2*A052936(n+1)`
-/

namespace A153367.P679691592960025431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052936 (n + 1)

end

end A153367.P679691592960025431

namespace A153367

/-- `2*A052936(n+1)` -/
def P679691592960025431.Spec : Prop :=
  ∀ n, P679691592960025431.a n = A153367 (n + 1)

end A153367

/-! ## A153367.P1257788223160950667

`lcm(2, A153364(2*n+1))`
-/

namespace A153367.P1257788223160950667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A153364 (2 * n + 1))

end

end A153367.P1257788223160950667

namespace A153367

/-- `lcm(2, A153364(2*n+1))` -/
def P1257788223160950667.Spec : Prop :=
  ∀ n, (P1257788223160950667.a n : ℤ) = A153367 (n + 1)

end A153367

/-! ## A153367.P1272285804921428994

`2*(A093129(n)+A030191(n))`
-/

namespace A153367.P1272285804921428994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A093129 n + A030191 n)

end

end A153367.P1272285804921428994

namespace A153367

/-- `2*(A093129(n)+A030191(n))` -/
def P1272285804921428994.Spec : Prop :=
  ∀ n, P1272285804921428994.a n = A153367 (n + 1)

end A153367

/-! ## A153367.P1182041836926370304

`2*(A217779(n)+A217778(n))`
-/

namespace A153367.P1182041836926370304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A217779 n + A217778 n)

end

end A153367.P1182041836926370304

namespace A153367

/-- `2*(A217779(n)+A217778(n))` -/
def P1182041836926370304.Spec : Prop :=
  ∀ n, P1182041836926370304.a n = A153367 (n + 1)

end A153367

/-! ## A153367.P542446545191242960

`A039717(n+1)+Δ[A020876(n)]`
-/

namespace A153367.P542446545191242960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039717 (n + 1) + (f1 (n + 1) - f1 n)

end

end A153367.P542446545191242960

namespace A153367

/-- `A039717(n+1)+Δ[A020876(n)]` -/
def P542446545191242960.Spec : Prop :=
  ∀ n, P542446545191242960.a n = A153367 (n + 1)

end A153367

/-! ## A153367.P8236200985927594149

`A081567(n+1)+A039717(n+1)`
-/

namespace A153367.P8236200985927594149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 (n + 1) + A039717 (n + 1)

end

end A153367.P8236200985927594149

namespace A153367

/-- `A081567(n+1)+A039717(n+1)` -/
def P8236200985927594149.Spec : Prop :=
  ∀ n, P8236200985927594149.a n = A153367 (n + 1)

end A153367

/-! ## A153367.P214063981294317308

`A217777(2*n)+A081567(n+1)`
-/

namespace A153367.P214063981294317308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217777 (2 * n) + A081567 (n + 1)

end

end A153367.P214063981294317308

namespace A153367

/-- `A217777(2*n)+A081567(n+1)` -/
def P214063981294317308.Spec : Prop :=
  ∀ n, P214063981294317308.a n = A153367 (n + 1)

end A153367

/-! ## A153367.P4820101000387112608

`A153364(2*n+1)+A000007(n+1)`
-/

namespace A153367.P4820101000387112608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153364 (2 * n + 1) + A000007 (n + 1)

end

end A153367.P4820101000387112608

namespace A153367

/-- `A153364(2*n+1)+A000007(n+1)` -/
def P4820101000387112608.Spec : Prop :=
  ∀ n, P4820101000387112608.a n = A153367 (n + 1)

end A153367

/-! ## A153367.P16916340836926005916

`A216212(2*n+1)+A147748(n+1)`
-/

namespace A153367.P16916340836926005916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216212 (2 * n + 1) + A147748 (n + 1)

end

end A153367.P16916340836926005916

namespace A153367

/-- `A216212(2*n+1)+A147748(n+1)` -/
def P16916340836926005916.Spec : Prop :=
  ∀ n, P16916340836926005916.a n = A153367 (n + 1)

end A153367

/-! ## A153367.P5531542830316130374

`A136775(n+2)+A147748(n+1)/2`
-/

namespace A153367.P5531542830316130374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136775 (n + 2) : ℚ) + (A147748 (n + 1) : ℚ) / 2

end

end A153367.P5531542830316130374

namespace A153367

/-- `A136775(n+2)+A147748(n+1)/2` -/
def P5531542830316130374.Spec : Prop :=
  ∀ n, P5531542830316130374.a n = (A153367 (n + 1) : ℚ)

end A153367

/-! ## A153367.P5651221912461580959

`A217777(2*n)+A178381(2*n+3)`
-/

namespace A153367.P5651221912461580959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217777 (2 * n) + A178381 (2 * n + 3)

end

end A153367.P5651221912461580959

namespace A153367

/-- `A217777(2*n)+A178381(2*n+3)` -/
def P5651221912461580959.Spec : Prop :=
  ∀ n, P5651221912461580959.a n = A153367 (n + 1)

end A153367

/-! ## A153367.P17748604374318735147

`A216212(2*n+1)+A178381(2*(n+1))`
-/

namespace A153367.P17748604374318735147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216212 (2 * n + 1) + A178381 (2 * (n + 1))

end

end A153367.P17748604374318735147

namespace A153367

/-- `A216212(2*n+1)+A178381(2*(n+1))` -/
def P17748604374318735147.Spec : Prop :=
  ∀ n, P17748604374318735147.a n = A153367 (n + 1)

end A153367

/-! ## A153367.P9008006397347144308

`A081567(n+1)+A216212(2*n+1)/2`
-/

namespace A153367.P9008006397347144308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081567 (n + 1) : ℚ) + (A216212 (2 * n + 1) : ℚ) / 2

end

end A153367.P9008006397347144308

namespace A153367

/-- `A081567(n+1)+A216212(2*n+1)/2` -/
def P9008006397347144308.Spec : Prop :=
  ∀ n, P9008006397347144308.a n = (A153367 (n + 1) : ℚ)

end A153367

/-! ## A153367.P16692422335422141379

`A039717(n+1)+A030191(n)+A020876(n)`
-/

namespace A153367.P16692422335422141379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039717 (n + 1) + (A030191 n + A020876 n)

end

end A153367.P16692422335422141379

namespace A153367

/-- `A039717(n+1)+A030191(n)+A020876(n)` -/
def P16692422335422141379.Spec : Prop :=
  ∀ n, P16692422335422141379.a n = A153367 (n + 1)

end A153367

/-! ## A153367.P15141494237349367932

`A147748(n+1)+A081567(n)+A030191(n)`
-/

namespace A153367.P15141494237349367932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147748 (n + 1) + (A081567 n + A030191 n)

end

end A153367.P15141494237349367932

namespace A153367

/-- `A147748(n+1)+A081567(n)+A030191(n)` -/
def P15141494237349367932.Spec : Prop :=
  ∀ n, P15141494237349367932.a n = A153367 (n + 1)

end A153367

/-! ## A153367.P418550792889472838

`A020876(n+1)+A093129(n)-A260304(n)`
-/

namespace A153367.P418550792889472838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020876 (n + 1) + (A093129 n - A260304 n)

end

end A153367.P418550792889472838

namespace A153367

/-- `A020876(n+1)+A093129(n)-A260304(n)` -/
def P418550792889472838.Spec : Prop :=
  ∀ n, P418550792889472838.a n = A153367 (n + 1)

end A153367

/-!
# A153368: Number of zig-zag paths from top to bottom of a rectangle of width 11 with n rows.

The programs for A153368, the canonical program `A153368.P10746229264741133645` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153368 has offset 1).

The definition of A153368 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153369, A153370, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A153368.P10746229264741133645

`A153369(n+1)+A153370(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A153368

/-- `A153369(n+1)+A153370(n+1)` -/
def P10746229264741133645.Spec : Prop :=
  ∀ n, P10746229264741133645.a n = A153368 (n + 1)

theorem P10746229264741133645.correct : P10746229264741133645.Spec := by
  intro n
  simp only [A153368, Nat.add_sub_cancel]

end A153368

/-! ## A153368.P5902648938952644303

`A153369(n+1)+A153369(n+2)/2`
-/

namespace A153368.P5902648938952644303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153369 (n + 1) : ℚ) + (A153369 (n + 2) : ℚ) / 2

end

end A153368.P5902648938952644303

namespace A153368

/-- `A153369(n+1)+A153369(n+2)/2` -/
def P5902648938952644303.Spec : Prop :=
  ∀ n, P5902648938952644303.a n = (A153368 (n + 1) : ℚ)

end A153368

/-! ## A153368.P7874120750593041277

`A153369(n+1)+A216241(n+2)+Δ[A027383(n)]`
-/

namespace A153368.P7874120750593041277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153369 (n + 1) + (A216241 (n + 2) + (f1 (n + 1) - f1 n))

end

end A153368.P7874120750593041277

namespace A153368

/-- `A153369(n+1)+A216241(n+2)+Δ[A027383(n)]` -/
def P7874120750593041277.Spec : Prop :=
  ∀ n, P7874120750593041277.a n = A153368 (n + 1)

end A153368

/-! ## A153368.P11330157483361469550

`ogf((11+20x-28x^2-48x^3+9x^4+12x^5)/(1-6x^2+9x^4-2x^6))`
-/

namespace A153368.P11330157483361469550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, 20, -28, -48, 9, 12] [1, 0, -6, 0, 9, 0, -2] n

end

end A153368.P11330157483361469550

namespace A153368

/-- `ogf((11+20x-28x^2-48x^3+9x^4+12x^5)/(1-6x^2+9x^4-2x^6))` -/
def P11330157483361469550.Spec : Prop :=
  ∀ n, P11330157483361469550.a n = A153368 (n + 1)

end A153368

/-! ## A153368.P8885816933595371360

`A220062(eq[12, A193592(n)])`
-/

namespace A153368.P8885816933595371360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A153368.P8885816933595371360

namespace A153368

/-- `A220062(eq[12, A193592(n)])` -/
def P8885816933595371360.Spec : Prop :=
  ∀ n, P8885816933595371360.a n = A153368 (n + 1)

end A153368

/-! ## A153368.P16335193593048960687

`A220062(A000124(n+12)+n)`
-/

namespace A153368.P16335193593048960687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220062 (A000124 (n + 12) + (n : ℤ)).toNat

end

end A153368.P16335193593048960687

namespace A153368

/-- `A220062(A000124(n+12)+n)` -/
def P16335193593048960687.Spec : Prop :=
  ∀ n, P16335193593048960687.a n = A153368 (n + 1)

end A153368

/-!
# A153369: Number of zig-zag paths from top to bottom of a rectangle of width 11 with n rows whose color is that of the top right corner.

The programs for A153369, the canonical program `A153369.P10571265008529743106` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153369 has offset 1).

The definition of A153369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153369.P5420536256913452723

`A153368(n+1)-A153370(n+1)`
-/

namespace A153369.P5420536256913452723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153368 (n + 1) - A153370 (n + 1)

end

end A153369.P5420536256913452723

namespace A153369

/-- `A153368(n+1)-A153370(n+1)` -/
def P5420536256913452723.Spec : Prop :=
  ∀ n, P5420536256913452723.a n = A153369 (n + 1)

theorem P5420536256913452723.correct : P5420536256913452723.Spec := by
  intro n
  simp only [A153369, Nat.add_sub_cancel, A153369.P5420536256913452723.a, A153369.P10571265008529743106.f1, A153369.P10571265008529743106.f2, A153369.P10571265008529743106.a, A153368, A153368.P10746229264741133645.a, A153370, A153370.P1674643474410020339.f1, A153370.P1674643474410020339.a, A153371, A153371.P4443474790677712850.a, A153372, A153372.P3008337133283248084.f1, A153372.P3008337133283248084.a, A027383, A027383.P10469167402787846246.a, A087945, A087945.P2016420805091376533.a, A216241, A216241.P11630865342568682381.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153369

/-! ## A153369.P4336556502850207745

`A153372(A080513(n))/gcd(2, n+1)`
-/

namespace A153369.P4336556502850207745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153372 (A080513 n).toNat : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A153369.P4336556502850207745

namespace A153369

/-- `A153372(A080513(n))/gcd(2, n+1)` -/
def P4336556502850207745.Spec : Prop :=
  ∀ n, P4336556502850207745.a n = (A153369 (n + 1) : ℚ)

end A153369

/-! ## A153369.P10571265008529743106

`∪[A153371(n+1), A153372(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A153369

/-- `∪[A153371(n+1), A153372(n+1)]` -/
def P10571265008529743106.Spec : Prop :=
  ∀ n, (P10571265008529743106.a n : ℤ) = A153369 (n + 1)

theorem P10571265008529743106.correct : P10571265008529743106.Spec := by
  intro n
  simp only [A153369, Nat.add_sub_cancel]

end A153369

/-! ## A153369.P11338943193709854003

`∪[Δ[2*A087945(n)], A153371(n+1)]`
-/

namespace A153369.P11338943193709854003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087945 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A153369.P11338943193709854003

namespace A153369

/-- `∪[Δ[2*A087945(n)], A153371(n+1)]` -/
def P11338943193709854003.Spec : Prop :=
  ∀ n, (P11338943193709854003.a n : ℤ) = A153369 (n + 1)

end A153369

/-! ## A153369.P4699914819168574950

`2*∪[A153373(n+1), Δ[A087945(n)]]`
-/

namespace A153369.P4699914819168574950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153373 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A153369.P4699914819168574950

namespace A153369

/-- `2*∪[A153373(n+1), Δ[A087945(n)]]` -/
def P4699914819168574950.Spec : Prop :=
  ∀ n, (P4699914819168574950.a n : ℤ) = A153369 (n + 1)

end A153369

/-! ## A153369.P18258908965037906232

`∪[Δ[A087945(n+1)], A153372(n+1)]`
-/

namespace A153369.P18258908965037906232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087945 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A153369.P18258908965037906232

namespace A153369

/-- `∪[Δ[A087945(n+1)], A153372(n+1)]` -/
def P18258908965037906232.Spec : Prop :=
  ∀ n, (P18258908965037906232.a n : ℤ) = A153369 (n + 1)

end A153369

/-!
# A153370: Number of zig-zag paths from top to bottom of a rectangle of width 11 with n rows whose color is not that of the top right corner.

The programs for A153370, the canonical program `A153370.P1674643474410020339` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153370 has offset 1).

The definition of A153370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153370.P1674643474410020339

`A216241(n+2)+Δ[A027383(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153370

/-- `A216241(n+2)+Δ[A027383(n)]` -/
def P1674643474410020339.Spec : Prop :=
  ∀ n, P1674643474410020339.a n = A153370 (n + 1)

theorem P1674643474410020339.correct : P1674643474410020339.Spec := by
  intro n
  simp only [A153370, Nat.add_sub_cancel]

end A153370

/-! ## A153370.P6967902304651895830

`A216241(n+2)+A016116(n+1)`
-/

namespace A153370.P6967902304651895830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216241 (n + 2) + A016116 (n + 1)

end

end A153370.P6967902304651895830

namespace A153370

/-- `A216241(n+2)+A016116(n+1)` -/
def P6967902304651895830.Spec : Prop :=
  ∀ n, P6967902304651895830.a n = A153370 (n + 1)

end A153370

/-! ## A153370.P16581071212436094863

`A216241(n+2)+A131572(n+1)`
-/

namespace A153370.P16581071212436094863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216241 (n + 2) + A131572 (n + 1)

end

end A153370.P16581071212436094863

namespace A153370

/-- `A216241(n+2)+A131572(n+1)` -/
def P16581071212436094863.Spec : Prop :=
  ∀ n, P16581071212436094863.a n = A153370 (n + 1)

end A153370

/-! ## A153370.P3217721282618861711

`(n%2+1)*A153373(A008619(n))`
-/

namespace A153370.P3217721282618861711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A153373 (A008619 n).toNat

end

end A153370.P3217721282618861711

namespace A153370

/-- `(n%2+1)*A153373(A008619(n))` -/
def P3217721282618861711.Spec : Prop :=
  ∀ n, P3217721282618861711.a n = A153370 (n + 1)

end A153370

/-! ## A153370.P9242998899805167221

`A153369(n+2)/2`
-/

namespace A153370.P9242998899805167221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153369 (n + 2) : ℚ) / 2

end

end A153370.P9242998899805167221

namespace A153370

/-- `A153369(n+2)/2` -/
def P9242998899805167221.Spec : Prop :=
  ∀ n, P9242998899805167221.a n = (A153370 (n + 1) : ℚ)

end A153370

/-! ## A153370.P13051764007358850243

`A153368(n+1)-A153369(n+1)`
-/

namespace A153370.P13051764007358850243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153368 (n + 1) - A153369 (n + 1)

end

end A153370.P13051764007358850243

namespace A153370

/-- `A153368(n+1)-A153369(n+1)` -/
def P13051764007358850243.Spec : Prop :=
  ∀ n, P13051764007358850243.a n = A153370 (n + 1)

theorem P13051764007358850243.correct : P13051764007358850243.Spec := by
  intro n
  simp only [A153370, Nat.add_sub_cancel, A153370.P13051764007358850243.a, A153370.P1674643474410020339.f1, A153370.P1674643474410020339.a, A027383, A027383.P10469167402787846246.a, A153368, A153368.P10746229264741133645.a, A153369, A153369.P10571265008529743106.f1, A153369.P10571265008529743106.f2, A153369.P10571265008529743106.a, A216241, A216241.P11630865342568682381.a, A153371, A153371.P4443474790677712850.a, A153372, A153372.P3008337133283248084.f1, A153372.P3008337133283248084.a, A087945, A087945.P2016420805091376533.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153370

/-! ## A153370.P12036000476547133371

`∪[A153371(n+1), A153373(n+1)]`
-/

namespace A153370.P12036000476547133371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A153370.P12036000476547133371

namespace A153370

/-- `∪[A153371(n+1), A153373(n+1)]` -/
def P12036000476547133371.Spec : Prop :=
  ∀ n, (P12036000476547133371.a n : ℤ) = A153370 (n + 1)

end A153370

/-!
# A153371: Number of zig-zag paths from top to bottom of a rectangle of width 11 with 2n rows whose color is that of the top right corner.

The programs for A153371, the canonical program `A153371.P4443474790677712850` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153371 has offset 1).

The definition of A153371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153371.P6439512162870877673

`A153369(2*(n+1))`
-/

namespace A153371.P6439512162870877673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153369 (2 * (n + 1))

end

end A153371.P6439512162870877673

namespace A153371

/-- `A153369(2*(n+1))` -/
def P6439512162870877673.Spec : Prop :=
  ∀ n, P6439512162870877673.a n = A153371 (n + 1)

end A153371

/-! ## A153371.P4443474790677712850

`A153370(2*(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A153371

/-- `A153370(2*(n+1))` -/
def P4443474790677712850.Spec : Prop :=
  ∀ n, P4443474790677712850.a n = A153371 (n + 1)

theorem P4443474790677712850.correct : P4443474790677712850.Spec := by
  intro n
  simp only [A153371, Nat.add_sub_cancel]

end A153371

/-! ## A153371.P5481215882707382021

`2*A153373(n+1)`
-/

namespace A153371.P5481215882707382021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153373 (n + 1)

end

end A153371.P5481215882707382021

namespace A153371

/-- `2*A153373(n+1)` -/
def P5481215882707382021.Spec : Prop :=
  ∀ n, P5481215882707382021.a n = A153371 (n + 1)

end A153371

/-! ## A153371.P12638305635919240750

`2*A153370(Δ[n²])`
-/

namespace A153371.P12638305635919240750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153370 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A153371.P12638305635919240750

namespace A153371

/-- `2*A153370(Δ[n²])` -/
def P12638305635919240750.Spec : Prop :=
  ∀ n, P12638305635919240750.a n = A153371 (n + 1)

end A153371

/-! ## A153371.P10426635369798983789

`2*Δ[Δ[A087946(n)]]`
-/

namespace A153371.P10426635369798983789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087946 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A153371.P10426635369798983789

namespace A153371

/-- `2*Δ[Δ[A087946(n)]]` -/
def P10426635369798983789.Spec : Prop :=
  ∀ n, P10426635369798983789.a n = A153371 (n + 1)

end A153371

/-! ## A153371.P7399893706908035506

`2*(A087946(n)+A010905(n))`
-/

namespace A153371.P7399893706908035506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A087946 n + A010905 n)

end

end A153371.P7399893706908035506

namespace A153371

/-- `2*(A087946(n)+A010905(n))` -/
def P7399893706908035506.Spec : Prop :=
  ∀ n, P7399893706908035506.a n = A153371 (n + 1)

end A153371

/-! ## A153371.P844622920124260641

`2*(A195531(n+1)+A001045(n))`
-/

namespace A153371.P844622920124260641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A195531 (n + 1) + A001045 n)

end

end A153371.P844622920124260641

namespace A153371

/-- `2*(A195531(n+1)+A001045(n))` -/
def P844622920124260641.Spec : Prop :=
  ∀ n, P844622920124260641.a n = A153371 (n + 1)

end A153371

/-! ## A153371.P4793793855804317951

`2*(A153372(n+1)-A087944(n))`
-/

namespace A153371.P4793793855804317951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A153372 (n + 1) - A087944 n)

end

end A153371.P4793793855804317951

namespace A153371

/-- `2*(A153372(n+1)-A087944(n))` -/
def P4793793855804317951.Spec : Prop :=
  ∀ n, P4793793855804317951.a n = A153371 (n + 1)

end A153371

/-! ## A153371.P8700744865374626167

`∩[A153369(n+1), A153370(n+1)]`
-/

namespace A153371.P8700744865374626167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153371.P8700744865374626167

namespace A153371

/-- `∩[A153369(n+1), A153370(n+1)]` -/
def P8700744865374626167.Spec : Prop :=
  ∀ n, (P8700744865374626167.a n : ℤ) = A153371 (n + 1)

end A153371

/-! ## A153371.P10146035740923779650

`Δ[A087945(n+1)]`
-/

namespace A153371.P10146035740923779650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153371.P10146035740923779650

namespace A153371

/-- `Δ[A087945(n+1)]` -/
def P10146035740923779650.Spec : Prop :=
  ∀ n, P10146035740923779650.a n = A153371 (n + 1)

end A153371

/-! ## A153371.P8184417099899221546

`Δ[Δ[Δ[A099780(n)]]]`
-/

namespace A153371.P8184417099899221546
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099780 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153371.P8184417099899221546

namespace A153371

/-- `Δ[Δ[Δ[A099780(n)]]]` -/
def P8184417099899221546.Spec : Prop :=
  ∀ n, P8184417099899221546.a n = A153371 (n + 1)

end A153371

/-! ## A153371.P12104780219895068299

`A153372(n+2)/2`
-/

namespace A153371.P12104780219895068299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153372 (n + 2) : ℚ) / 2

end

end A153371.P12104780219895068299

namespace A153371

/-- `A153372(n+2)/2` -/
def P12104780219895068299.Spec : Prop :=
  ∀ n, P12104780219895068299.a n = (A153371 (n + 1) : ℚ)

end A153371

/-! ## A153371.P16249704795483550054

`Δ[Δ[A087944(n+1)]]`
-/

namespace A153371.P16249704795483550054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087944 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153371.P16249704795483550054

namespace A153371

/-- `Δ[Δ[A087944(n+1)]]` -/
def P16249704795483550054.Spec : Prop :=
  ∀ n, P16249704795483550054.a n = A153371 (n + 1)

end A153371

/-! ## A153371.P9484801070278948261

`A153368(2*(n+1))/2`
-/

namespace A153371.P9484801070278948261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153368 (2 * (n + 1)) : ℚ) / 2

end

end A153371.P9484801070278948261

namespace A153371

/-- `A153368(2*(n+1))/2` -/
def P9484801070278948261.Spec : Prop :=
  ∀ n, P9484801070278948261.a n = (A153371 (n + 1) : ℚ)

end A153371

/-! ## A153371.P11002415780483608916

`A153369(Δ[(n+1)²])/2`
-/

namespace A153371.P11002415780483608916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153369 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A153371.P11002415780483608916

namespace A153371

/-- `A153369(Δ[(n+1)²])/2` -/
def P11002415780483608916.Spec : Prop :=
  ∀ n, P11002415780483608916.a n = (A153371 (n + 1) : ℚ)

end A153371

/-! ## A153371.P1487403462492558658

`A087945(n+2)-A087945(n+1)`
-/

namespace A153371.P1487403462492558658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087945 (n + 2) - A087945 (n + 1)

end

end A153371.P1487403462492558658

namespace A153371

/-- `A087945(n+2)-A087945(n+1)` -/
def P1487403462492558658.Spec : Prop :=
  ∀ n, P1487403462492558658.a n = A153371 (n + 1)

end A153371

/-! ## A153371.P17413765521515006729

`A153372(n+2)-(A153373(n+1)+A153373(n+1))`
-/

namespace A153371.P17413765521515006729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153372 (n + 2) - (A153373 (n + 1) + A153373 (n + 1))

end

end A153371.P17413765521515006729

namespace A153371

/-- `A153372(n+2)-(A153373(n+1)+A153373(n+1))` -/
def P17413765521515006729.Spec : Prop :=
  ∀ n, P17413765521515006729.a n = A153371 (n + 1)

end A153371

/-!
# A153372: Number of zig-zag paths from top to bottom of a rectangle of width 11 with 2n-1 rows whose color is that of the top right corner.

The programs for A153372, the canonical program `A153372.P3008337133283248084` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153372 has offset 1).

The definition of A153372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153372.P11552425751435456786

`A153369(Δ[n²])`
-/

namespace A153372.P11552425751435456786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153369 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A153372.P11552425751435456786

namespace A153372

/-- `A153369(Δ[n²])` -/
def P11552425751435456786.Spec : Prop :=
  ∀ n, P11552425751435456786.a n = A153372 (n + 1)

end A153372

/-! ## A153372.P3008337133283248084

`Δ[2*A087945(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153372

/-- `Δ[2*A087945(n)]` -/
def P3008337133283248084.Spec : Prop :=
  ∀ n, P3008337133283248084.a n = A153372 (n + 1)

theorem P3008337133283248084.correct : P3008337133283248084.Spec := by
  intro n
  simp only [A153372, Nat.add_sub_cancel]

end A153372

/-! ## A153372.P3512824724462597911

`Δ[Δ[2*A087944(n)]]`
-/

namespace A153372.P3512824724462597911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087944 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153372.P3512824724462597911

namespace A153372

/-- `Δ[Δ[2*A087944(n)]]` -/
def P3512824724462597911.Spec : Prop :=
  ∀ n, P3512824724462597911.a n = A153372 (n + 1)

end A153372

/-! ## A153372.P1879758463046280429

`lcm(2, A153369(2*n+1))`
-/

namespace A153372.P1879758463046280429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A153369 (2 * n + 1))

end

end A153372.P1879758463046280429

namespace A153372

/-- `lcm(2, A153369(2*n+1))` -/
def P1879758463046280429.Spec : Prop :=
  ∀ n, (P1879758463046280429.a n : ℤ) = A153372 (n + 1)

end A153372

/-! ## A153372.P10066484972544900299

`Δ[Δ[2*A336678(2*n)]]`
-/

namespace A153372.P10066484972544900299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A336678 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153372.P10066484972544900299

namespace A153372

/-- `Δ[Δ[2*A336678(2*n)]]` -/
def P10066484972544900299.Spec : Prop :=
  ∀ n, P10066484972544900299.a n = A153372 (n + 1)

end A153372

/-! ## A153372.P12710362988136291866

`2*a(n-1)+2*A231896(n)` with `a(0)=6`
-/

namespace A153372.P12710362988136291866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  2 * a (n - 1) + 2 * A231896 n

end

end A153372.P12710362988136291866

namespace A153372

/-- `2*a(n-1)+2*A231896(n)` -/
def P12710362988136291866.Spec : Prop :=
  ∀ n, P12710362988136291866.a n = A153372 (n + 1)

end A153372

/-! ## A153372.P5647248236111652580

`2*(a(n-1)+2*A048788(2*n))` with `a(0)=6`
-/

namespace A153372.P5647248236111652580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  2 * (a (n - 1) + 2 * A048788 (2 * n))

end

end A153372.P5647248236111652580

namespace A153372

/-- `2*(a(n-1)+2*A048788(2*n))` -/
def P5647248236111652580.Spec : Prop :=
  ∀ n, P5647248236111652580.a n = A153372 (n + 1)

end A153372

/-! ## A153372.P1242713418481742619

`A153373(n+1)+A087944(n)`
-/

namespace A153372.P1242713418481742619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153373 (n + 1) + A087944 n

end

end A153372.P1242713418481742619

namespace A153372

/-- `A153373(n+1)+A087944(n)` -/
def P1242713418481742619.Spec : Prop :=
  ∀ n, P1242713418481742619.a n = A153372 (n + 1)

end A153372

/-! ## A153372.P12880653234656760782

`Δ[Δ[A099780(n)+A001835(n)]]`
-/

namespace A153372.P12880653234656760782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099780 n + A001835 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153372.P12880653234656760782

namespace A153372

/-- `Δ[Δ[A099780(n)+A001835(n)]]` -/
def P12880653234656760782.Spec : Prop :=
  ∀ n, P12880653234656760782.a n = A153372 (n + 1)

end A153372

/-! ## A153372.P2980805947911265068

`A144721(n+1)+A123020(n+1)`
-/

namespace A153372.P2980805947911265068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144721 (n + 1) + A123020 (n + 1)

end

end A153372.P2980805947911265068

namespace A153372

/-- `A144721(n+1)+A123020(n+1)` -/
def P2980805947911265068.Spec : Prop :=
  ∀ n, P2980805947911265068.a n = A153372 (n + 1)

end A153372

/-! ## A153372.P1679374340525348031

`A153368(2*n+1)-A153373(n+1)`
-/

namespace A153372.P1679374340525348031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153368 (2 * n + 1) - A153373 (n + 1)

end

end A153372.P1679374340525348031

namespace A153372

/-- `A153368(2*n+1)-A153373(n+1)` -/
def P1679374340525348031.Spec : Prop :=
  ∀ n, P1679374340525348031.a n = A153372 (n + 1)

end A153372

/-! ## A153372.P5010926478162028069

`A153368(2*n+1)-A153370(2*n+1)`
-/

namespace A153372.P5010926478162028069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153368 (2 * n + 1) - A153370 (2 * n + 1)

end

end A153372.P5010926478162028069

namespace A153372

/-- `A153368(2*n+1)-A153370(2*n+1)` -/
def P5010926478162028069.Spec : Prop :=
  ∀ n, P5010926478162028069.a n = A153372 (n + 1)

end A153372

/-! ## A153372.P5272744002477486654

`A001834(n+1)+A087944(n+1)-A001834(n)`
-/

namespace A153372.P5272744002477486654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001834 (n + 1) + (A087944 (n + 1) - A001834 n)

end

end A153372.P5272744002477486654

namespace A153372

/-- `A001834(n+1)+A087944(n+1)-A001834(n)` -/
def P5272744002477486654.Spec : Prop :=
  ∀ n, P5272744002477486654.a n = A153372 (n + 1)

end A153372

/-!
# A153373: Number of zig-zag paths from top to bottom of a rectangle of width 11 with 2n-1 rows whose color is not that of the top right corner.

The programs for A153373, the canonical program `A153373.P17670144922407826206` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153373 has offset 1).

The definition of A153373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153373.P16188920620479684349

`ogf((5-12x+3x^2)/(1-6x+9x^2-2x^3))`
-/

namespace A153373.P16188920620479684349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -12, 3] [1, -6, 9, -2] n

end

end A153373.P16188920620479684349

namespace A153373

/-- `ogf((5-12x+3x^2)/(1-6x+9x^2-2x^3))` -/
def P16188920620479684349.Spec : Prop :=
  ∀ n, P16188920620479684349.a n = A153373 (n + 1)

end A153373

/-! ## A153373.P6692246450395612774

`4*a(n-1)-a(n-2)-2^(n-2)` with `a(0)=5, a(1)=18`
-/

namespace A153373.P6692246450395612774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5, 18] fun n a =>
  4 * a (n - 1) - a (n - 2) - (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A153373.P6692246450395612774

namespace A153373

/-- `4*a(n-1)-a(n-2)-2^(n-2)` -/
def P6692246450395612774.Spec : Prop :=
  ∀ n, P6692246450395612774.a n = (A153373 (n + 1) : ℚ)

end A153373

/-! ## A153373.P17670144922407826206

`A153370(Δ[n²])`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A153373

/-- `A153370(Δ[n²])` -/
def P17670144922407826206.Spec : Prop :=
  ∀ n, P17670144922407826206.a n = A153373 (n + 1)

theorem P17670144922407826206.correct : P17670144922407826206.Spec := by
  intro n
  simp only [A153373, Nat.add_sub_cancel]

end A153373

/-! ## A153373.P924525031578014187

`Δ[Δ[A087946(n)]]`
-/

namespace A153373.P924525031578014187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087946 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153373.P924525031578014187

namespace A153373

/-- `Δ[Δ[A087946(n)]]` -/
def P924525031578014187.Spec : Prop :=
  ∀ n, P924525031578014187.a n = A153373 (n + 1)

end A153373

/-! ## A153373.P3522820721430695963

`A153371(n+1)/2`
-/

namespace A153373.P3522820721430695963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153371 (n + 1) : ℚ) / 2

end

end A153373.P3522820721430695963

namespace A153373

/-- `A153371(n+1)/2` -/
def P3522820721430695963.Spec : Prop :=
  ∀ n, P3522820721430695963.a n = (A153373 (n + 1) : ℚ)

end A153373

/-! ## A153373.P9474072975676207497

`Δ[Δ[A336678(Δ[n²])]]`
-/

namespace A153373.P9474072975676207497
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336678 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153373.P9474072975676207497

namespace A153373

/-- `Δ[Δ[A336678(Δ[n²])]]` -/
def P9474072975676207497.Spec : Prop :=
  ∀ n, P9474072975676207497.a n = A153373 (n + 1)

end A153373

/-! ## A153373.P14638774860472645900

`A153369(2*(n+1))/2`
-/

namespace A153373.P14638774860472645900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153369 (2 * (n + 1)) : ℚ) / 2

end

end A153373.P14638774860472645900

namespace A153373

/-- `A153369(2*(n+1))/2` -/
def P14638774860472645900.Spec : Prop :=
  ∀ n, P14638774860472645900.a n = (A153373 (n + 1) : ℚ)

end A153373

/-! ## A153373.P3858224154147695992

`A153370(2*(n+1))/2`
-/

namespace A153373.P3858224154147695992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153370 (2 * (n + 1)) : ℚ) / 2

end

end A153373.P3858224154147695992

namespace A153373

/-- `A153370(2*(n+1))/2` -/
def P3858224154147695992.Spec : Prop :=
  ∀ n, P3858224154147695992.a n = (A153373 (n + 1) : ℚ)

end A153373

/-! ## A153373.P10853207444179202588

`A087946(n)+A010905(n)`
-/

namespace A153373.P10853207444179202588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087946 n + A010905 n

end

end A153373.P10853207444179202588

namespace A153373

/-- `A087946(n)+A010905(n)` -/
def P10853207444179202588.Spec : Prop :=
  ∀ n, P10853207444179202588.a n = A153373 (n + 1)

end A153373

/-! ## A153373.P5724686751586929622

`A195531(n+1)+A001045(n)`
-/

namespace A153373.P5724686751586929622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195531 (n + 1) + A001045 n

end

end A153373.P5724686751586929622

namespace A153373

/-- `A195531(n+1)+A001045(n)` -/
def P5724686751586929622.Spec : Prop :=
  ∀ n, P5724686751586929622.a n = A153373 (n + 1)

end A153373

/-! ## A153373.P1516029448079265204

`A087946(n)+A001353(n+2)`
-/

namespace A153373.P1516029448079265204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087946 n + A001353 (n + 2)

end

end A153373.P1516029448079265204

namespace A153373

/-- `A087946(n)+A001353(n+2)` -/
def P1516029448079265204.Spec : Prop :=
  ∀ n, P1516029448079265204.a n = A153373 (n + 1)

end A153373

/-! ## A153373.P11227268024670892419

`A120893(n+2)+A001045(n)`
-/

namespace A153373.P11227268024670892419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120893 (n + 2) + A001045 n

end

end A153373.P11227268024670892419

namespace A153373

/-- `A120893(n+2)+A001045(n)` -/
def P11227268024670892419.Spec : Prop :=
  ∀ n, P11227268024670892419.a n = A153373 (n + 1)

end A153373

/-! ## A153373.P8758534863683714954

`A153372(n+1)-A087944(n)`
-/

namespace A153373.P8758534863683714954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153372 (n + 1) - A087944 n

end

end A153373.P8758534863683714954

namespace A153373

/-- `A153372(n+1)-A087944(n)` -/
def P8758534863683714954.Spec : Prop :=
  ∀ n, P8758534863683714954.a n = A153373 (n + 1)

end A153373

/-! ## A153373.P2642044441465446696

`Δ[Δ[A006253(n)+A001045(n)]]`
-/

namespace A153373.P2642044441465446696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 n + A001045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153373.P2642044441465446696

namespace A153373

/-- `Δ[Δ[A006253(n)+A001045(n)]]` -/
def P2642044441465446696.Spec : Prop :=
  ∀ n, P2642044441465446696.a n = A153373 (n + 1)

end A153373

/-! ## A153373.P505576227185624667

`A087944(n+2)-A011782(n+1)`
-/

namespace A153373.P505576227185624667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087944 (n + 2) - A011782 (n + 1)

end

end A153373.P505576227185624667

namespace A153373

/-- `A087944(n+2)-A011782(n+1)` -/
def P505576227185624667.Spec : Prop :=
  ∀ n, P505576227185624667.a n = A153373 (n + 1)

end A153373

/-! ## A153373.P7059380077365302804

`A087944(n+2)-A016116(2*n)`
-/

namespace A153373.P7059380077365302804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087944 (n + 2) - A016116 (2 * n)

end

end A153373.P7059380077365302804

namespace A153373

/-- `A087944(n+2)-A016116(2*n)` -/
def P7059380077365302804.Spec : Prop :=
  ∀ n, P7059380077365302804.a n = A153373 (n + 1)

end A153373

/-! ## A153373.P6082152342972611082

`A153368(2*n+1)-A153372(n+1)`
-/

namespace A153373.P6082152342972611082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153368 (2 * n + 1) - A153372 (n + 1)

end

end A153373.P6082152342972611082

namespace A153373

/-- `A153368(2*n+1)-A153372(n+1)` -/
def P6082152342972611082.Spec : Prop :=
  ∀ n, P6082152342972611082.a n = A153373 (n + 1)

end A153373

/-! ## A153373.P4769676844449534463

`A153371(n+1)-A153370(2*n+1)`
-/

namespace A153373.P4769676844449534463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153371 (n + 1) - A153370 (2 * n + 1)

end

end A153373.P4769676844449534463

namespace A153373

/-- `A153371(n+1)-A153370(2*n+1)` -/
def P4769676844449534463.Spec : Prop :=
  ∀ n, P4769676844449534463.a n = A153373 (n + 1)

end A153373

/-! ## A153373.P9727965179359233584

`∩[A153369(n+1), A153370(n+1)]/2`
-/

namespace A153373.P9727965179359233584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153370 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A153373.P9727965179359233584

namespace A153373

/-- `∩[A153369(n+1), A153370(n+1)]/2` -/
def P9727965179359233584.Spec : Prop :=
  ∀ n, P9727965179359233584.a n = (A153373 (n + 1) : ℚ)

end A153373

/-! ## A153373.P4858096781522710369

`A153368(2*n+1)-A153369(2*n+1)`
-/

namespace A153373.P4858096781522710369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153368 (2 * n + 1) - A153369 (2 * n + 1)

end

end A153373.P4858096781522710369

namespace A153373

/-- `A153368(2*n+1)-A153369(2*n+1)` -/
def P4858096781522710369.Spec : Prop :=
  ∀ n, P4858096781522710369.a n = A153373 (n + 1)

end A153373

/-!
# A153374: Smaller of two consecutive prime numbers p0, p1 such that p0+p1=average of twin prime pairs and p0*p1+7=average of twin prime pairs.

The programs for A153374, there is no canonical definition to state claims against.
-/

/-! ## A153374.P9187941948067569420

`A268674(or(1, A153375(n+1)))`
-/

namespace A153374.P9187941948067569420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (Int.lor 1 (A153375 (n + 1))).toNat

end

end A153374.P9187941948067569420

/-!
# A153375: Larger of two consecutive prime numbers such that p0+p1=average of twin prime pairs and p0*p1+7=average of twin prime pairs.

The programs for A153375, there is no canonical definition to state claims against.
-/

/-! ## A153375.P9069841045108929545

`A151800(A153374(n+1))`
-/

namespace A153375.P9069841045108929545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A153374 (n + 1)).toNat

end

end A153375.P9069841045108929545

/-! ## A153375.P13862654999433802602

`∑{d}[A153374(n+1), A340071(#)]`
-/

namespace A153375.P13862654999433802602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A340071 d

end

end A153375.P13862654999433802602

/-! ## A153375.P11967418871375619689

`∑{d}[A153374(n+1), A344587(#)]`
-/

namespace A153375.P11967418871375619689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A344587 d

end

end A153375.P11967418871375619689

/-!
# A153376: Smaller of two consecutive prime numbers such that p1*p2*d + d = average of twin prime pairs, d (delta) = p2 - p1.

The programs for A153376, there is no canonical definition to state claims against.
-/

/-! ## A153376.P12149596519439886935

`A000040(A061395(A153377(n+1))-1)`
-/

namespace A153376.P12149596519439886935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 (A153377 (n + 1)).toNat - 1).toNat

end

end A153376.P12149596519439886935

/-! ## A153376.P6666263021711875835

`A268674(A153377(n+1)%A244763(n+1))`
-/

namespace A153376.P6666263021711875835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (Int.tmod (A153377 (n + 1)) (A244763 (n + 1))).toNat

end

end A153376.P6666263021711875835

/-! ## A153376.P2926311824796055520

`A268674(A153377(n+1)+A010054(3*n+2))`
-/

namespace A153376.P2926311824796055520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (A153377 (n + 1) + A010054 (3 * n + 2)).toNat

end

end A153376.P2926311824796055520

/-! ## A153376.P13405195206611349976

`A079068(or(1, A153377(n+1)))`
-/

namespace A153376.P13405195206611349976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (Int.lor 1 (A153377 (n + 1))).toNat

end

end A153376.P13405195206611349976

/-! ## A153376.P84909759969199938

`A079068(A153377(n+1))%A140212(n+1)²`
-/

namespace A153376.P84909759969199938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079068 (A153377 (n + 1)).toNat) (A140212 (n + 1) ^ 2)

end

end A153376.P84909759969199938

/-! ## A153376.P9837173816879870109

`A174903(A079068(n+1))+A079068(A153377(n+1))`
-/

namespace A153376.P9837173816879870109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174903 (A079068 (n + 1)).toNat + A079068 (A153377 (n + 1)).toNat

end

end A153376.P9837173816879870109

/-! ## A153376.P17082302544317997859

`A064989(A153377(n+1))`
-/

namespace A153376.P17082302544317997859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A153377 (n + 1)).toNat

end

end A153376.P17082302544317997859

/-!
# A153377: Larger of two consecutive prime numbers such that p1*p2*d + d = average of twin prime pairs, d (delta) = p2 - p1.

The programs for A153377, there is no canonical definition to state claims against.
-/

/-! ## A153377.P10663230971444146289

`A151800(A153376(n+1))`
-/

namespace A153377.P10663230971444146289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A153376 (n + 1)).toNat

end

end A153377.P10663230971444146289

/-! ## A153377.P10099827444746392586

`∑{d}[A153376(n+1), A340071(#)]`
-/

namespace A153377.P10099827444746392586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A340071 d

end

end A153377.P10099827444746392586

/-! ## A153377.P2045486236299639698

`∑{d}[A153376(n+1), A344587(#)]`
-/

namespace A153377.P2045486236299639698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A344587 d

end

end A153377.P2045486236299639698

/-! ## A153377.P16218092864670272938

`A340071(A153376(n+1))+and(1, A001513(n))`
-/

namespace A153377.P16218092864670272938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340071 (A153376 (n + 1)).toNat + Int.land 1 (A001513 n)

end

end A153377.P16218092864670272938

/-! ## A153377.P8827006737586591041

`A340071(A153376(n+1))+A007318(C(5, n))`
-/

namespace A153377.P8827006737586591041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340071 (A153376 (n + 1)).toNat + A007318 (Nat.choose 5 n)

end

end A153377.P8827006737586591041

/-! ## A153377.P14182608518715360448

`A340071(A153376(n+1))+A014963(4*n+6)`
-/

namespace A153377.P14182608518715360448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340071 (A153376 (n + 1)).toNat + A014963 (4 * n + 6)

end

end A153377.P14182608518715360448

/-! ## A153377.P15393014798439487479

`A340071(A153376(n+1))+A000040(n+2)%2`
-/

namespace A153377.P15393014798439487479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340071 (A153376 (n + 1)).toNat + Int.tmod (A000040 (n + 2)) 2

end

end A153377.P15393014798439487479

/-! ## A153377.P7617058564525365548

`A340071(A153376(n+1))+A000108(C(2, n+2))`
-/

namespace A153377.P7617058564525365548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340071 (A153376 (n + 1)).toNat + A000108 (Nat.choose 2 (n + 2))

end

end A153377.P7617058564525365548

/-! ## A153377.P4043322503834783340

`A340071(A153376(n+1))+A000041(gcd(n, n+1))`
-/

namespace A153377.P4043322503834783340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340071 (A153376 (n + 1)).toNat + A000041 (Nat.gcd n (n + 1))

end

end A153377.P4043322503834783340

/-! ## A153377.P11359643031518813856

`A340071(A153376(n+1))+A000203(((-1)^n)²)`
-/

namespace A153377.P11359643031518813856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340071 (A153376 (n + 1)).toNat + A000203 (((-1) ^ n) ^ 2).toNat

end

end A153377.P11359643031518813856

/-! ## A153377.P12058505690894867868

`A340071(A153376(n+1))+A003415(A000040(n+1))`
-/

namespace A153377.P12058505690894867868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340071 (A153376 (n + 1)).toNat + A003415 (A000040 (n + 1)).toNat

end

end A153377.P12058505690894867868

/-! ## A153377.P9565232813907096338

`A340071(A153376(n+1))+A109035(A002654(n+1))`
-/

namespace A153377.P9565232813907096338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340071 (A153376 (n + 1)).toNat + A109035 (A002654 (n + 1)).toNat

end

end A153377.P9565232813907096338

/-! ## A153377.P15471585244220684396

`A340071(A153376(n+1))-A008683(A046704(n+1))`
-/

namespace A153377.P15471585244220684396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340071 (A153376 (n + 1)).toNat - A008683 (A046704 (n + 1)).toNat

end

end A153377.P15471585244220684396

/-! ## A153377.P7035035098229103869

`A340071(A153376(n+1))+A008683(A014963(n+1))²`
-/

namespace A153377.P7035035098229103869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340071 (A153376 (n + 1)).toNat + A008683 (A014963 (n + 1)).toNat ^ 2

end

end A153377.P7035035098229103869

/-! ## A153377.P8320665605384374817

`A340071(A153376(n+1))+A109035(A109035(n))`
-/

namespace A153377.P8320665605384374817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340071 (A153376 (n + 1)).toNat + A109035 (A109035 n).toNat

end

end A153377.P8320665605384374817

/-!
# A153379: Larger of two consecutive prime numbers, p1 and p2 = p1 + d, such that p1*p2*d - d is the average of twin primes.

The programs for A153379, there is no canonical definition to state claims against.
-/

/-! ## A153379.P16091086909367098909

`A151800(A153378(n+1))`
-/

namespace A153379.P16091086909367098909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A153378 (n + 1)).toNat

end

end A153379.P16091086909367098909

/-! ## A153379.P5877919920784469649

`∑{d}[A153378(n+1), A340071(#)]`
-/

namespace A153379.P5877919920784469649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A340071 d

end

end A153379.P5877919920784469649

/-! ## A153379.P13665246749033291827

`∑{d}[A153378(n+1), A344587(#)]`
-/

namespace A153379.P13665246749033291827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A344587 d

end

end A153379.P13665246749033291827

/-!
# A153380: Numbers k such that 10*k+9 is not prime.

The programs for A153380, the canonical program `A153380.P4322513371660982384` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153380 has offset 1).

The definition of A153380 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153380.P4322513371660982384

`comp[A102700(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A153380

/-- `comp[A102700(n+1)]` -/
def P4322513371660982384.Spec : Prop :=
  ∀ n, (P4322513371660982384.a n : ℤ) = A153380 (n + 1)

theorem P4322513371660982384.correct : P4322513371660982384.Spec := by
  intro n
  simp only [A153380, Nat.add_sub_cancel]

end A153380

/-! ## A153380.P17480257589584083356

`comp[A105042(n+1)-1]`
-/

namespace A153380.P17480257589584083356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153380.P17480257589584083356

namespace A153380

/-- `comp[A105042(n+1)-1]` -/
def P17480257589584083356.Spec : Prop :=
  ∀ n, (P17480257589584083356.a n : ℤ) = A153380 (n + 1)

end A153380

/-! ## A153380.P6467475178056635673

`eq[0, A101264(5*n+4)]`
-/

namespace A153380.P6467475178056635673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (5 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153380.P6467475178056635673

namespace A153380

/-- `eq[0, A101264(5*n+4)]` -/
def P6467475178056635673.Spec : Prop :=
  ∀ n, (P6467475178056635673.a n : ℤ) = A153380 (n + 1)

end A153380

/-! ## A153380.P3623526272509607153

`lt[1, A001222(10*n+9)]`
-/

namespace A153380.P3623526272509607153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153380.P3623526272509607153

namespace A153380

/-- `lt[1, A001222(10*n+9)]` -/
def P3623526272509607153.Spec : Prop :=
  ∀ n, (P3623526272509607153.a n : ℤ) = A153380 (n + 1)

end A153380

/-! ## A153380.P5364212962581894074

`lt[2, A000005(10*n+9)]`
-/

namespace A153380.P5364212962581894074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153380.P5364212962581894074

namespace A153380

/-- `lt[2, A000005(10*n+9)]` -/
def P5364212962581894074.Spec : Prop :=
  ∀ n, (P5364212962581894074.a n : ℤ) = A153380 (n + 1)

end A153380

/-! ## A153380.P11584946992180611414

`lt[2, ∑{e}[A008592(n)+9, #]+1]`
-/

namespace A153380.P11584946992180611414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n + 9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153380.P11584946992180611414

namespace A153380

/-- `lt[2, ∑{e}[A008592(n)+9, #]+1]` -/
def P11584946992180611414.Spec : Prop :=
  ∀ n, (P11584946992180611414.a n : ℤ) = A153380 (n + 1)

end A153380

/-! ## A153380.P8449616388164724538

`lt[A006530(10*n+9), 9*n+10]`
-/

namespace A153380.P8449616388164724538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (10 * n + 9)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153380.P8449616388164724538

namespace A153380

/-- `lt[A006530(10*n+9), 9*n+10]` -/
def P8449616388164724538.Spec : Prop :=
  ∀ n, (P8449616388164724538.a n : ℤ) = A153380 (n + 1)

end A153380

/-! ## A153380.P9352771150288482779

`lt[A020639(10*n+9), A016897(n+1)]`
-/

namespace A153380.P9352771150288482779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (10 * n + 9)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153380.P9352771150288482779

namespace A153380

/-- `lt[A020639(10*n+9), A016897(n+1)]` -/
def P9352771150288482779.Spec : Prop :=
  ∀ n, (P9352771150288482779.a n : ℤ) = A153380 (n + 1)

end A153380

/-! ## A153380.P17775147262499369459

`lt[A020639(10*n+9), A273669(n+2)]`
-/

namespace A153380.P17775147262499369459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (10 * n + 9)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273669 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153380.P17775147262499369459

namespace A153380

/-- `lt[A020639(10*n+9), A273669(n+2)]` -/
def P17775147262499369459.Spec : Prop :=
  ∀ n, (P17775147262499369459.a n : ℤ) = A153380 (n + 1)

end A153380

/-! ## A153380.P8417099161853892107

`lt[A020639(A017377(n)), A008590(n+1)]`
-/

namespace A153380.P8417099161853892107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017377 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153380.P8417099161853892107

namespace A153380

/-- `lt[A020639(A017377(n)), A008590(n+1)]` -/
def P8417099161853892107.Spec : Prop :=
  ∀ n, (P8417099161853892107.a n : ℤ) = A153380 (n + 1)

end A153380

/-! ## A153380.P12179696374084836358

`A059995(A053181(n+1))`
-/

namespace A153380.P12179696374084836358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A053181 (n + 1)).toNat

end

end A153380.P12179696374084836358

namespace A153380

/-- `A059995(A053181(n+1))` -/
def P12179696374084836358.Spec : Prop :=
  ∀ n, P12179696374084836358.a n = A153380 (n + 1)

end A153380

/-! ## A153380.P7070312038482255620

`eq[0, A131734(A105052(n))]`
-/

namespace A153380.P7070312038482255620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131734 (A105052 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153380.P7070312038482255620

namespace A153380

/-- `eq[0, A131734(A105052(n))]` -/
def P7070312038482255620.Spec : Prop :=
  ∀ n, (P7070312038482255620.a n : ℤ) = A153380 (n + 1)

end A153380

/-! ## A153380.P9079125921633587711

`lt[A049084(A017377(n)), 1]`
-/

namespace A153380.P9079125921633587711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A017377 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153380.P9079125921633587711

namespace A153380

/-- `lt[A049084(A017377(n)), 1]` -/
def P9079125921633587711.Spec : Prop :=
  ∀ n, (P9079125921633587711.a n : ℤ) = A153380 (n + 1)

end A153380

/-! ## A153380.P15425305800603238466

`lt[A055672(A017497(n)-n), 1]`
-/

namespace A153380.P15425305800603238466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A017497 n - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153380.P15425305800603238466

namespace A153380

/-- `lt[A055672(A017497(n)-n), 1]` -/
def P15425305800603238466.Spec : Prop :=
  ∀ n, (P15425305800603238466.a n : ℤ) = A153380 (n + 1)

end A153380

/-! ## A153380.P10676424004098710887

`lt[A014963(10*n+9), A016897(n)]`
-/

namespace A153380.P10676424004098710887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * n + 9)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153380.P10676424004098710887

namespace A153380

/-- `lt[A014963(10*n+9), A016897(n)]` -/
def P10676424004098710887.Spec : Prop :=
  ∀ n, (P10676424004098710887.a n : ℤ) = A153380 (n + 1)

end A153380

/-! ## A153380.P11501196293776572145

`lt[A014963(A017377(n)), A017329(n)]`
-/

namespace A153380.P11501196293776572145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A017377 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153380.P11501196293776572145

namespace A153380

/-- `lt[A014963(A017377(n)), A017329(n)]` -/
def P11501196293776572145.Spec : Prop :=
  ∀ n, (P11501196293776572145.a n : ℤ) = A153380 (n + 1)

end A153380

/-!
# A153381: Numbers k such that 11*k+5 is not prime.

The programs for A153381, the canonical program `A153381.P17942683048602701020` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153381 has offset 1).

The definition of A153381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153381.P17942683048602701020

`comp[A108233(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153381

/-- `comp[A108233(n+1)]` -/
def P17942683048602701020.Spec : Prop :=
  ∀ n, (P17942683048602701020.a n : ℤ) = A153381 (n + 1)

theorem P17942683048602701020.correct : P17942683048602701020.Spec := by
  intro n
  simp only [A153381, Nat.add_sub_cancel]

end A153381

/-! ## A153381.P16945940607992649764

`lt[2, ∑{e}[22*n+10, #]]`
-/

namespace A153381.P16945940607992649764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 * n + 10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153381.P16945940607992649764

namespace A153381

/-- `lt[2, ∑{e}[22*n+10, #]]` -/
def P16945940607992649764.Spec : Prop :=
  ∀ n, (P16945940607992649764.a n : ℤ) = A153381 (n + 1)

end A153381

/-! ## A153381.P9750614121994557070

`lt[1, A001222(11*n+5)]`
-/

namespace A153381.P9750614121994557070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (11 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153381.P9750614121994557070

namespace A153381

/-- `lt[1, A001222(11*n+5)]` -/
def P9750614121994557070.Spec : Prop :=
  ∀ n, (P9750614121994557070.a n : ℤ) = A153381 (n + 1)

end A153381

/-! ## A153381.P5644634299005413961

`lt[2, A000005(11*n+5)]`
-/

namespace A153381.P5644634299005413961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (11 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153381.P5644634299005413961

namespace A153381

/-- `lt[2, A000005(11*n+5)]` -/
def P5644634299005413961.Spec : Prop :=
  ∀ n, (P5644634299005413961.a n : ℤ) = A153381 (n + 1)

end A153381

/-! ## A153381.P15319328199479967462

`lt[A006530(11*n+5), 9*n]`
-/

namespace A153381.P15319328199479967462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (11 * n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153381.P15319328199479967462

namespace A153381

/-- `lt[A006530(11*n+5), 9*n]` -/
def P15319328199479967462.Spec : Prop :=
  ∀ n, (P15319328199479967462.a n : ℤ) = A153381 (n + 1)

end A153381

/-! ## A153381.P7497053890504106855

`lt[A020639(11*n+5), 2*n+1]`
-/

namespace A153381.P7497053890504106855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (11 * n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153381.P7497053890504106855

namespace A153381

/-- `lt[A020639(11*n+5), 2*n+1]` -/
def P7497053890504106855.Spec : Prop :=
  ∀ n, (P7497053890504106855.a n : ℤ) = A153381 (n + 1)

end A153381

/-! ## A153381.P415034993096839357

`eq[1, A006530(C(2, A000005(11*n+5))+1)]`
-/

namespace A153381.P415034993096839357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose 2 (A000005 (11 * n + 5)).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153381.P415034993096839357

namespace A153381

/-- `eq[1, A006530(C(2, A000005(11*n+5))+1)]` -/
def P415034993096839357.Spec : Prop :=
  ∀ n, (P415034993096839357.a n : ℤ) = A153381 (n + 1)

end A153381

/-! ## A153381.P16284508466162843393

`lt[A000010(A017449(n)), A008593(n)]`
-/

namespace A153381.P16284508466162843393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017449 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153381.P16284508466162843393

namespace A153381

/-- `lt[A000010(A017449(n)), A008593(n)]` -/
def P16284508466162843393.Spec : Prop :=
  ∀ n, (P16284508466162843393.a n : ℤ) = A153381 (n + 1)

end A153381

/-! ## A153381.P14742700739308695573

`lt[A000010(A017449(n)), A017401(n)]`
-/

namespace A153381.P14742700739308695573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017449 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153381.P14742700739308695573

namespace A153381

/-- `lt[A000010(A017449(n)), A017401(n)]` -/
def P14742700739308695573.Spec : Prop :=
  ∀ n, (P14742700739308695573.a n : ℤ) = A153381 (n + 1)

end A153381

/-! ## A153381.P16624697533989426374

`lt[A017461(n), A000203(A017437(n)+1)]`
-/

namespace A153381.P16624697533989426374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017437 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153381.P16624697533989426374

namespace A153381

/-- `lt[A017461(n), A000203(A017437(n)+1)]` -/
def P16624697533989426374.Spec : Prop :=
  ∀ n, (P16624697533989426374.a n : ℤ) = A153381 (n + 1)

end A153381

/-! ## A153381.P2103700684821747206

`lt[A017461(n), A000203(A017461(n)-1)]`
-/

namespace A153381.P2103700684821747206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017461 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153381.P2103700684821747206

namespace A153381

/-- `lt[A017461(n), A000203(A017461(n)-1)]` -/
def P2103700684821747206.Spec : Prop :=
  ∀ n, (P2103700684821747206.a n : ℤ) = A153381 (n + 1)

end A153381

/-! ## A153381.P17643043730827687169

`eq[1, A005171(A017581(n)-n)]`
-/

namespace A153381.P17643043730827687169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A017581 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153381.P17643043730827687169

namespace A153381

/-- `eq[1, A005171(A017581(n)-n)]` -/
def P17643043730827687169.Spec : Prop :=
  ∀ n, (P17643043730827687169.a n : ℤ) = A153381 (n + 1)

end A153381

/-! ## A153381.P6892651228579723540

`lt[A014963(11*n+5), 2*n+1]`
-/

namespace A153381.P6892651228579723540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (11 * n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153381.P6892651228579723540

namespace A153381

/-- `lt[A014963(11*n+5), 2*n+1]` -/
def P6892651228579723540.Spec : Prop :=
  ∀ n, (P6892651228579723540.a n : ℤ) = A153381 (n + 1)

end A153381

/-!
# A153382: a(n) = a(n-1) + 2*a(n-2) - a(n-3) - a(n-4), a(0)=0, a(1)=8, a(2)=10, a(3)=18.

The programs for A153382, the canonical program `A153382.P11114607905525718614` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153382 has offset 0).

The definition of A153382 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` (program `A153382.P11114607905525718614`, by `A153382.P11114607905525718614.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153382.P7409008370794369809

`ogf((8x+2x^2-8x^3)/(1-x-2x^2+x^3+x^4))`
-/

namespace A153382.P7409008370794369809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 2, -8] [1, -1, -2, 1, 1] n

end

end A153382.P7409008370794369809

namespace A153382

/-- `ogf((8x+2x^2-8x^3)/(1-x-2x^2+x^3+x^4))` -/
def P7409008370794369809.Spec : Prop :=
  ∀ n, P7409008370794369809.a n = A153382 n

end A153382

/-! ## A153382.P11114607905525718614

`a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=0, a(1)=8, a(2)=10, a(3)=18`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A153382

/-- `a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` -/
def P11114607905525718614.Spec : Prop :=
  ∀ n, P11114607905525718614.a n = A153382 n

theorem P11114607905525718614.correct : P11114607905525718614.Spec := by
  intro n
  simp only [A153382]

end A153382

/-! ## A153382.P18428816053600533624

`a(n-3)+2*(a(n-2)+1)` with `a(0)=0, a(1)=8, a(2)=10`
-/

namespace A153382.P18428816053600533624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 8, 10] fun n a =>
  a (n - 3) + 2 * (a (n - 2) + 1)

end

end A153382.P18428816053600533624

namespace A153382

/-- `a(n-3)+2*(a(n-2)+1)` -/
def P18428816053600533624.Spec : Prop :=
  ∀ n, (P18428816053600533624.a n : ℤ) = A153382 n

end A153382

/-! ## A153382.P1395547374767918996

`a(n-2)+2+a(n-2)+a(n-3)` with `a(0)=0, a(1)=8, a(2)=10`
-/

namespace A153382.P1395547374767918996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 8, 10] fun n a =>
  a (n - 2) + 2 + (a (n - 2) + a (n - 3))

end

end A153382.P1395547374767918996

namespace A153382

/-- `a(n-2)+2+a(n-2)+a(n-3)` -/
def P1395547374767918996.Spec : Prop :=
  ∀ n, (P1395547374767918996.a n : ℤ) = A153382 n

end A153382

/-! ## A153382.P7211359471889180721

`A372242(n)-1`
-/

namespace A153382.P7211359471889180721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372242 n - 1

end

end A153382.P7211359471889180721

namespace A153382

/-- `A372242(n)-1` -/
def P7211359471889180721.Spec : Prop :=
  ∀ n, P7211359471889180721.a n = A153382 n

end A153382

/-! ## A153382.P18024704418101075064

`A022093(n)-Δ[or(1, n)]`
-/

namespace A153382.P18024704418101075064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A153382.P18024704418101075064

namespace A153382

/-- `A022093(n)-Δ[or(1, n)]` -/
def P18024704418101075064.Spec : Prop :=
  ∀ n, P18024704418101075064.a n = A153382 n

end A153382

/-! ## A153382.P17035833324414831482

`10*A000045(n)-Δ[or(1, n)]`
-/

namespace A153382.P17035833324414831482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000045 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A153382.P17035833324414831482

namespace A153382

/-- `10*A000045(n)-Δ[or(1, n)]` -/
def P17035833324414831482.Spec : Prop :=
  ∀ n, P17035833324414831482.a n = A153382 n

end A153382

/-! ## A153382.P7211124233484944490

`A181716(n)+A022312(n)`
-/

namespace A153382.P7211124233484944490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181716 n + A022312 n

end

end A153382.P7211124233484944490

namespace A153382

/-- `A181716(n)+A022312(n)` -/
def P7211124233484944490.Spec : Prop :=
  ∀ n, P7211124233484944490.a n = A153382 n

end A153382

/-! ## A153382.P13424654104970419102

`A022093(n)-A010673(n)`
-/

namespace A153382.P13424654104970419102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 n - A010673 n

end

end A153382.P13424654104970419102

namespace A153382

/-- `A022093(n)-A010673(n)` -/
def P13424654104970419102.Spec : Prop :=
  ∀ n, P13424654104970419102.a n = A153382 n

end A153382

/-! ## A153382.P14429986781840341483

`A008346(n)+A022092(n)-1`
-/

namespace A153382.P14429986781840341483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 n + (A022092 n - 1)

end

end A153382.P14429986781840341483

namespace A153382

/-- `A008346(n)+A022092(n)-1` -/
def P14429986781840341483.Spec : Prop :=
  ∀ n, P14429986781840341483.a n = A153382 n

end A153382

/-! ## A153382.P1374844807423329633

`A022093(n)+A033999(n)-1`
-/

namespace A153382.P1374844807423329633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 n + (A033999 n - 1)

end

end A153382.P1374844807423329633

namespace A153382

/-- `A022093(n)+A033999(n)-1` -/
def P1374844807423329633.Spec : Prop :=
  ∀ n, P1374844807423329633.a n = A153382 n

end A153382

/-! ## A153382.P4505811461700544820

`A022323(n)-A066983(n+1)`
-/

namespace A153382.P4505811461700544820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022323 n - A066983 (n + 1)

end

end A153382.P4505811461700544820

namespace A153382

/-- `A022323(n)-A066983(n+1)` -/
def P4505811461700544820.Spec : Prop :=
  ∀ n, P4505811461700544820.a n = A153382 n

end A153382

/-! ## A153382.P10133451351792259270

`A022090(n)+A097133(n)-1`
-/

namespace A153382.P10133451351792259270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022090 n + (A097133 n - 1)

end

end A153382.P10133451351792259270

namespace A153382

/-- `A022090(n)+A097133(n)-1` -/
def P10133451351792259270.Spec : Prop :=
  ∀ n, P10133451351792259270.a n = A153382 n

end A153382

/-! ## A153382.P6697350630700778243

`A022098(n)+A181716(n)-1`
-/

namespace A153382.P6697350630700778243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n + (A181716 n - 1)

end

end A153382.P6697350630700778243

namespace A153382

/-- `A022098(n)+A181716(n)-1` -/
def P6697350630700778243.Spec : Prop :=
  ∀ n, P6697350630700778243.a n = A153382 n

end A153382

/-! ## A153382.P16422840094893848878

`A022088(n)+A371843(n)-1`
-/

namespace A153382.P16422840094893848878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 n + (A371843 n - 1)

end

end A153382.P16422840094893848878

namespace A153382

/-- `A022088(n)+A371843(n)-1` -/
def P16422840094893848878.Spec : Prop :=
  ∀ n, P16422840094893848878.a n = A153382 n

end A153382

/-! ## A153382.P9680400847415094674

`2*(A062114(n)+A022086(n))`
-/

namespace A153382.P9680400847415094674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A062114 n + A022086 n)

end

end A153382.P9680400847415094674

namespace A153382

/-- `2*(A062114(n)+A022086(n))` -/
def P9680400847415094674.Spec : Prop :=
  ∀ n, P9680400847415094674.a n = A153382 n

end A153382

/-! ## A153382.P13088993660253627758

`2*(A022088(n)-A000035(n))`
-/

namespace A153382.P13088993660253627758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A022088 n - A000035 n)

end

end A153382.P13088993660253627758

namespace A153382

/-- `2*(A022088(n)-A000035(n))` -/
def P13088993660253627758.Spec : Prop :=
  ∀ n, P13088993660253627758.a n = A153382 n

end A153382

/-! ## A153382.P16497702545696169247

`2*(A022319(n)-A014217(n))`
-/

namespace A153382.P16497702545696169247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A022319 n - A014217 n)

end

end A153382.P16497702545696169247

namespace A153382

/-- `2*(A022319(n)-A014217(n))` -/
def P16497702545696169247.Spec : Prop :=
  ∀ n, P16497702545696169247.a n = A153382 n

end A153382

/-! ## A153382.P4456109179749460789

`10*A000045(n)-Δ[A109613(n)]`
-/

namespace A153382.P4456109179749460789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000045 n - (f1 (n + 1) - f1 n)

end

end A153382.P4456109179749460789

namespace A153382

/-- `10*A000045(n)-Δ[A109613(n)]` -/
def P4456109179749460789.Spec : Prop :=
  ∀ n, P4456109179749460789.a n = A153382 n

end A153382

/-! ## A153382.P9405396475418886613

`A022367(n)-(A066983(n+1)+1)`
-/

namespace A153382.P9405396475418886613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 n - (A066983 (n + 1) + 1)

end

end A153382.P9405396475418886613

namespace A153382

/-- `A022367(n)-(A066983(n+1)+1)` -/
def P9405396475418886613.Spec : Prop :=
  ∀ n, P9405396475418886613.a n = A153382 n

end A153382

/-!
# A153383: Numbers k such that 12*k+1 is not prime.

The programs for A153383, the canonical program `A153383.P9115745439586942500` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153383 has offset 1).

The definition of A153383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153383.P9115745439586942500

`comp[A110801(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A153383

/-- `comp[A110801(n+1)]` -/
def P9115745439586942500.Spec : Prop :=
  ∀ n, (P9115745439586942500.a n : ℤ) = A153383 (n + 1)

theorem P9115745439586942500.correct : P9115745439586942500.Spec := by
  intro n
  simp only [A153383, Nat.add_sub_cancel]

end A153383

/-! ## A153383.P16884733384487607363

`eq[0, A101264(6*n)]`
-/

namespace A153383.P16884733384487607363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (6 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153383.P16884733384487607363

namespace A153383

/-- `eq[0, A101264(6*n)]` -/
def P16884733384487607363.Spec : Prop :=
  ∀ n, (P16884733384487607363.a n : ℤ) = A153383 (n + 1)

end A153383

/-! ## A153383.P16256294950067697241

`eq[0, A010051(12*n+1)]`
-/

namespace A153383.P16256294950067697241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (12 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153383.P16256294950067697241

namespace A153383

/-- `eq[0, A010051(12*n+1)]` -/
def P16256294950067697241.Spec : Prop :=
  ∀ n, (P16256294950067697241.a n : ℤ) = A153383 (n + 1)

end A153383

/-! ## A153383.P14150113202083004478

`lt[A020639(A017533(n)), (3*n+2)*gcd(2, n)]`
-/

namespace A153383.P14150113202083004478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 2) * Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153383.P14150113202083004478

namespace A153383

/-- `lt[A020639(A017533(n)), (3*n+2)*gcd(2, n)]` -/
def P14150113202083004478.Spec : Prop :=
  ∀ n, (P14150113202083004478.a n : ℤ) = A153383 (n + 1)

end A153383

/-! ## A153383.P15722259302316418546

`lt[A020639(A017533(n)), A016933(n)]`
-/

namespace A153383.P15722259302316418546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153383.P15722259302316418546

namespace A153383

/-- `lt[A020639(A017533(n)), A016933(n)]` -/
def P15722259302316418546.Spec : Prop :=
  ∀ n, (P15722259302316418546.a n : ℤ) = A153383 (n + 1)

end A153383

/-! ## A153383.P18024804077321430035

`lt[A020639(A017533(n)), A016945(n)]`
-/

namespace A153383.P18024804077321430035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153383.P18024804077321430035

namespace A153383

/-- `lt[A020639(A017533(n)), A016945(n)]` -/
def P18024804077321430035.Spec : Prop :=
  ∀ n, (P18024804077321430035.a n : ℤ) = A153383 (n + 1)

end A153383

/-! ## A153383.P509332996088361613

`lt[A020639(A017533(n)), A016957(n)]`
-/

namespace A153383.P509332996088361613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153383.P509332996088361613

namespace A153383

/-- `lt[A020639(A017533(n)), A016957(n)]` -/
def P509332996088361613.Spec : Prop :=
  ∀ n, (P509332996088361613.a n : ℤ) = A153383 (n + 1)

end A153383

/-! ## A153383.P17507761657866814311

`lt[A020639(A017533(n)), A017293(n)]`
-/

namespace A153383.P17507761657866814311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153383.P17507761657866814311

namespace A153383

/-- `lt[A020639(A017533(n)), A017293(n)]` -/
def P17507761657866814311.Spec : Prop :=
  ∀ n, (P17507761657866814311.a n : ℤ) = A153383 (n + 1)

end A153383

/-! ## A153383.P9220125152431232910

`lt[A020639(A017533(n)), A059029(n+1)]`
-/

namespace A153383.P9220125152431232910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153383.P9220125152431232910

namespace A153383

/-- `lt[A020639(A017533(n)), A059029(n+1)]` -/
def P9220125152431232910.Spec : Prop :=
  ∀ n, (P9220125152431232910.a n : ℤ) = A153383 (n + 1)

end A153383

/-! ## A153383.P15057755770591899497

`lt[A020639(A017533(n)), A092259(n+1)]`
-/

namespace A153383.P15057755770591899497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092259 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153383.P15057755770591899497

namespace A153383

/-- `lt[A020639(A017533(n)), A092259(n+1)]` -/
def P15057755770591899497.Spec : Prop :=
  ∀ n, (P15057755770591899497.a n : ℤ) = A153383 (n + 1)

end A153383

/-! ## A153383.P13380821184901317985

`lt[A020639(A017533(n)), A332513(n+1)]`
-/

namespace A153383.P13380821184901317985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332513 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153383.P13380821184901317985

namespace A153383

/-- `lt[A020639(A017533(n)), A332513(n+1)]` -/
def P13380821184901317985.Spec : Prop :=
  ∀ n, (P13380821184901317985.a n : ℤ) = A153383 (n + 1)

end A153383

/-! ## A153383.P15555509218131712743

`record[A078898(A046954(n+1))]`
-/

namespace A153383.P15555509218131712743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A046954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153383.P15555509218131712743

namespace A153383

/-- `record[A078898(A046954(n+1))]` -/
def P15555509218131712743.Spec : Prop :=
  ∀ n, P15555509218131712743.a n = A153383 (n + 1)

end A153383

/-! ## A153383.P3609592073440642261

`lt[A020639(A016921(2*n)), A016921(n+1)]`
-/

namespace A153383.P3609592073440642261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A016921 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153383.P3609592073440642261

namespace A153383

/-- `lt[A020639(A016921(2*n)), A016921(n+1)]` -/
def P3609592073440642261.Spec : Prop :=
  ∀ n, (P3609592073440642261.a n : ℤ) = A153383 (n + 1)

end A153383

/-! ## A153383.P14661593713532864983

`lt[A020639(A271114(2*n)), A271114(n+1)]`
-/

namespace A153383.P14661593713532864983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A271114 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153383.P14661593713532864983

namespace A153383

/-- `lt[A020639(A271114(2*n)), A271114(n+1)]` -/
def P14661593713532864983.Spec : Prop :=
  ∀ n, (P14661593713532864983.a n : ℤ) = A153383 (n + 1)

end A153383

/-! ## A153383.P190038554761458349

`lt[A020639(A017533(n)), A146307(2*n+3)]`
-/

namespace A153383.P190038554761458349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146307 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153383.P190038554761458349

namespace A153383

/-- `lt[A020639(A017533(n)), A146307(2*n+3)]` -/
def P190038554761458349.Spec : Prop :=
  ∀ n, (P190038554761458349.a n : ℤ) = A153383 (n + 1)

end A153383

/-! ## A153383.P6603234054767574643

`lt[A010051(12*n+1), A234957(2*n+5)]`
-/

namespace A153383.P6603234054767574643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (12 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234957 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153383.P6603234054767574643

namespace A153383

/-- `lt[A010051(12*n+1), A234957(2*n+5)]` -/
def P6603234054767574643.Spec : Prop :=
  ∀ n, (P6603234054767574643.a n : ℤ) = A153383 (n + 1)

end A153383

/-! ## A153383.P2671623101134223578

`lt[A166333(A008458(2*n)), A008458(n+1)]`
-/

namespace A153383.P2671623101134223578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A008458 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153383.P2671623101134223578

namespace A153383

/-- `lt[A166333(A008458(2*n)), A008458(n+1)]` -/
def P2671623101134223578.Spec : Prop :=
  ∀ n, (P2671623101134223578.a n : ℤ) = A153383 (n + 1)

end A153383

/-! ## A153383.P3082623349002282283

`eq[1, A110560(12*n)]`
-/

namespace A153383.P3082623349002282283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (12 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153383.P3082623349002282283

namespace A153383

/-- `eq[1, A110560(12*n)]` -/
def P3082623349002282283.Spec : Prop :=
  ∀ n, (P3082623349002282283.a n : ℤ) = A153383 (n + 1)

end A153383

/-! ## A153383.P4083676018441494058

`eq[0, A061397(12*n+1)]`
-/

namespace A153383.P4083676018441494058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (12 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153383.P4083676018441494058

namespace A153383

/-- `eq[0, A061397(12*n+1)]` -/
def P4083676018441494058.Spec : Prop :=
  ∀ n, (P4083676018441494058.a n : ℤ) = A153383 (n + 1)

end A153383

/-! ## A153383.P11197221216913596582

`eq[1, A089026(12*n+1)]`
-/

namespace A153383.P11197221216913596582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (12 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153383.P11197221216913596582

namespace A153383

/-- `eq[1, A089026(12*n+1)]` -/
def P11197221216913596582.Spec : Prop :=
  ∀ n, (P11197221216913596582.a n : ℤ) = A153383 (n + 1)

end A153383

/-!
# A153384: Numbers k such that 24*k+1 is not prime.

The programs for A153384, the canonical program `A153384.P2062558916155313946` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153384 has offset 1).

The definition of A153384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153384.P2062558916155313946

`comp[A111174(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153384

/-- `comp[A111174(n+1)]` -/
def P2062558916155313946.Spec : Prop :=
  ∀ n, (P2062558916155313946.a n : ℤ) = A153384 (n + 1)

theorem P2062558916155313946.correct : P2062558916155313946.Spec := by
  intro n
  simp only [A153384, Nat.add_sub_cancel]

end A153384

/-! ## A153384.P15923127589270311055

`∪[A202137(n+1), A001318(n)]`
-/

namespace A153384.P15923127589270311055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A153384.P15923127589270311055

namespace A153384

/-- `∪[A202137(n+1), A001318(n)]` -/
def P15923127589270311055.Spec : Prop :=
  ∀ n, (P15923127589270311055.a n : ℤ) = A153384 (n + 1)

end A153384

/-! ## A153384.P14916208917387319174

`eq[0, A010051(24*n+1)]`
-/

namespace A153384.P14916208917387319174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (24 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153384.P14916208917387319174

namespace A153384

/-- `eq[0, A010051(24*n+1)]` -/
def P14916208917387319174.Spec : Prop :=
  ∀ n, (P14916208917387319174.a n : ℤ) = A153384 (n + 1)

end A153384

/-! ## A153384.P843011044700430303

`lt[A020639(A103214(n)), A017305(n)]`
-/

namespace A153384.P843011044700430303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103214 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153384.P843011044700430303

namespace A153384

/-- `lt[A020639(A103214(n)), A017305(n)]` -/
def P843011044700430303.Spec : Prop :=
  ∀ n, (P843011044700430303.a n : ℤ) = A153384 (n + 1)

end A153384

/-! ## A153384.P7850523625723727473

`lt[A020639(A103214(n)), A017329(n)]`
-/

namespace A153384.P7850523625723727473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103214 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153384.P7850523625723727473

namespace A153384

/-- `lt[A020639(A103214(n)), A017329(n)]` -/
def P7850523625723727473.Spec : Prop :=
  ∀ n, (P7850523625723727473.a n : ℤ) = A153384 (n + 1)

end A153384

/-! ## A153384.P9858947459911696452

`lt[A020639(A103214(n)), A103208(n+1)]`
-/

namespace A153384.P9858947459911696452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103214 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103208 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153384.P9858947459911696452

namespace A153384

/-- `lt[A020639(A103214(n)), A103208(n+1)]` -/
def P9858947459911696452.Spec : Prop :=
  ∀ n, (P9858947459911696452.a n : ℤ) = A153384 (n + 1)

end A153384

/-! ## A153384.P6197385594045314797

`lt[A020639(A103214(n)), A103246(n+1)]`
-/

namespace A153384.P6197385594045314797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103214 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153384.P6197385594045314797

namespace A153384

/-- `lt[A020639(A103214(n)), A103246(n+1)]` -/
def P6197385594045314797.Spec : Prop :=
  ∀ n, (P6197385594045314797.a n : ℤ) = A153384 (n + 1)

end A153384

/-! ## A153384.P11293472989428416615

`lt[A020639(A103214(n)), A103215(n+3)]`
-/

namespace A153384.P11293472989428416615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103214 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103215 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153384.P11293472989428416615

namespace A153384

/-- `lt[A020639(A103214(n)), A103215(n+3)]` -/
def P11293472989428416615.Spec : Prop :=
  ∀ n, (P11293472989428416615.a n : ℤ) = A153384 (n + 1)

end A153384

/-! ## A153384.P1569326525325591910

`lt[A020639(A017533(2*n)), A016933(n)]`
-/

namespace A153384.P1569326525325591910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153384.P1569326525325591910

namespace A153384

/-- `lt[A020639(A017533(2*n)), A016933(n)]` -/
def P1569326525325591910.Spec : Prop :=
  ∀ n, (P1569326525325591910.a n : ℤ) = A153384 (n + 1)

end A153384

/-! ## A153384.P18381640352413615043

`lt[A020639(A017533(2*n)), A016945(n)]`
-/

namespace A153384.P18381640352413615043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153384.P18381640352413615043

namespace A153384

/-- `lt[A020639(A017533(2*n)), A016945(n)]` -/
def P18381640352413615043.Spec : Prop :=
  ∀ n, (P18381640352413615043.a n : ℤ) = A153384 (n + 1)

end A153384

/-! ## A153384.P11339173197151977702

`lt[A020639(A017533(2*n)), A016957(n)]`
-/

namespace A153384.P11339173197151977702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153384.P11339173197151977702

namespace A153384

/-- `lt[A020639(A017533(2*n)), A016957(n)]` -/
def P11339173197151977702.Spec : Prop :=
  ∀ n, (P11339173197151977702.a n : ℤ) = A153384 (n + 1)

end A153384

/-! ## A153384.P8382454440810241142

`lt[A020639(A017533(2*n)), A017293(n)]`
-/

namespace A153384.P8382454440810241142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153384.P8382454440810241142

namespace A153384

/-- `lt[A020639(A017533(2*n)), A017293(n)]` -/
def P8382454440810241142.Spec : Prop :=
  ∀ n, (P8382454440810241142.a n : ℤ) = A153384 (n + 1)

end A153384

/-! ## A153384.P11811101533697919165

`lt[A020639(A017533(2*n)), A017533(n+1)]`
-/

namespace A153384.P11811101533697919165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017533 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153384.P11811101533697919165

namespace A153384

/-- `lt[A020639(A017533(2*n)), A017533(n+1)]` -/
def P11811101533697919165.Spec : Prop :=
  ∀ n, (P11811101533697919165.a n : ℤ) = A153384 (n + 1)

end A153384

/-! ## A153384.P1150508992613327716

`lt[A277822(n), A264441(A103214(n))]`
-/

namespace A153384.P1150508992613327716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264441 (A103214 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153384.P1150508992613327716

namespace A153384

/-- `lt[A277822(n), A264441(A103214(n))]` -/
def P1150508992613327716.Spec : Prop :=
  ∀ n, (P1150508992613327716.a n : ℤ) = A153384 (n + 1)

end A153384

/-! ## A153384.P14422162104430365915

`eq[0, A283361(A017533(n))]`
-/

namespace A153384.P14422162104430365915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283361 (A017533 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153384.P14422162104430365915

namespace A153384

/-- `eq[0, A283361(A017533(n))]` -/
def P14422162104430365915.Spec : Prop :=
  ∀ n, (P14422162104430365915.a n : ℤ) = A153384 (n + 1)

end A153384

/-! ## A153384.P1647258360881219025

`eq[0, A061397(24*n+1)]`
-/

namespace A153384.P1647258360881219025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (24 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153384.P1647258360881219025

namespace A153384

/-- `eq[0, A061397(24*n+1)]` -/
def P1647258360881219025.Spec : Prop :=
  ∀ n, (P1647258360881219025.a n : ℤ) = A153384 (n + 1)

end A153384

/-! ## A153384.P12277049063562739785

`eq[1, A245511(24*n+2)]`
-/

namespace A153384.P12277049063562739785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245511 (24 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153384.P12277049063562739785

namespace A153384

/-- `eq[1, A245511(24*n+2)]` -/
def P12277049063562739785.Spec : Prop :=
  ∀ n, (P12277049063562739785.a n : ℤ) = A153384 (n + 1)

end A153384

/-! ## A153384.P1925756247007919331

`eq[1, A089026(8*A008486(n)+1)]`
-/

namespace A153384.P1925756247007919331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (8 * A008486 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153384.P1925756247007919331

namespace A153384

/-- `eq[1, A089026(8*A008486(n)+1)]` -/
def P1925756247007919331.Spec : Prop :=
  ∀ n, (P1925756247007919331.a n : ℤ) = A153384 (n + 1)

end A153384

/-!
# A153385: Number of primes <= Fibonacci(Fibonacci(n)) = pi(A007570(n)).

The programs for A153385, there is no canonical definition to state claims against.
-/

/-! ## A153385.P1931195808997421117

`A054782(A000045(n))`
-/

namespace A153385.P1931195808997421117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054782 (A000045 n).toNat

end

end A153385.P1931195808997421117

/-! ## A153385.P10033513599480386538

`A054782(Δ[a(n-1)+a(n-2)])` with `a(0)=1, a(1)=1`
-/

namespace A153385.P10033513599480386538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054782 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A153385.P10033513599480386538

/-! ## A153385.P6364594102074195106

`A054782(∑[a(n-1)-(1-a(n-2))]-n)` with `a(0)=0, a(1)=2`
-/

namespace A153385.P6364594102074195106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054782 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A153385.P6364594102074195106

/-! ## A153385.P424756589890134028

`A054782(A000044(n))`
-/

namespace A153385.P424756589890134028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054782 (A000044 n).toNat

end

end A153385.P424756589890134028

/-! ## A153385.P1664667344982468714

`A054782(A023441(n))`
-/

namespace A153385.P1664667344982468714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054782 (A023441 n).toNat

end

end A153385.P1664667344982468714

/-!
# A153388: Second bisection of A153382.

The programs for A153388, the canonical program `A153388.P14020568489704575440` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153388 has offset 0).

The definition of A153388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153388.P1721270426940869030

`ogf((8-14x+8x^2)/(1-4x+4x^2-x^3))`
-/

namespace A153388.P1721270426940869030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -14, 8] [1, -4, 4, -1] n

end

end A153388.P1721270426940869030

namespace A153388

/-- `ogf((8-14x+8x^2)/(1-4x+4x^2-x^3))` -/
def P1721270426940869030.Spec : Prop :=
  ∀ n, P1721270426940869030.a n = A153388 n

end A153388

/-! ## A153388.P14020568489704575440

`10*A001519(n+1)-2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153388

/-- `10*A001519(n+1)-2` -/
def P14020568489704575440.Spec : Prop :=
  ∀ n, P14020568489704575440.a n = A153388 n

theorem P14020568489704575440.correct : P14020568489704575440.Spec := by
  intro n
  simp only [A153388]

end A153388

/-! ## A153388.P1668552866578970766

`4*a(n-1)-4*a(n-2)+a(n-3)` with `a(0)=8, a(1)=18, a(2)=48`
-/

namespace A153388.P1668552866578970766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 18, 48] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2) + a (n - 3)

end

end A153388.P1668552866578970766

namespace A153388

/-- `4*a(n-1)-4*a(n-2)+a(n-3)` -/
def P1668552866578970766.Spec : Prop :=
  ∀ n, P1668552866578970766.a n = A153388 n

end A153388

/-! ## A153388.P9991662959409133289

`record[a(n-2)-a(n-1)]-2` with `a(0)=10, a(1)=0`
-/

namespace A153388.P9991662959409133289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10, 0] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2

end

end A153388.P9991662959409133289

namespace A153388

/-- `record[a(n-2)-a(n-1)]-2` -/
def P9991662959409133289.Spec : Prop :=
  ∀ n, P9991662959409133289.a n = A153388 n

end A153388

/-! ## A153388.P17776557504134813971

`A153382(Δ[n²])`
-/

namespace A153388.P17776557504134813971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153382 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A153388.P17776557504134813971

namespace A153388

/-- `A153382(Δ[n²])` -/
def P17776557504134813971.Spec : Prop :=
  ∀ n, P17776557504134813971.a n = A153388 n

end A153388

/-! ## A153388.P3979592882469130097

`2*(A106729(n)-1)`
-/

namespace A153388.P3979592882469130097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A106729 n - 1)

end

end A153388.P3979592882469130097

namespace A153388

/-- `2*(A106729(n)-1)` -/
def P3979592882469130097.Spec : Prop :=
  ∀ n, P3979592882469130097.a n = A153388 n

end A153388

/-! ## A153388.P6989639293441863572

`A232584(n+1)+6`
-/

namespace A153388.P6989639293441863572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232584 (n + 1) + 6

end

end A153388.P6989639293441863572

namespace A153388

/-- `A232584(n+1)+6` -/
def P6989639293441863572.Spec : Prop :=
  ∀ n, P6989639293441863572.a n = A153388 n

end A153388

/-! ## A153388.P2489568088130500739

`2*(A246639(n)-4)`
-/

namespace A153388.P2489568088130500739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A246639 n - 4)

end

end A153388.P2489568088130500739

namespace A153388

/-- `2*(A246639(n)-4)` -/
def P2489568088130500739.Spec : Prop :=
  ∀ n, P2489568088130500739.a n = A153388 n

end A153388

/-! ## A153388.P16925365377752480080

`5*A069403(n)+3`
-/

namespace A153388.P16925365377752480080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A069403 n + 3

end

end A153388.P16925365377752480080

namespace A153388

/-- `5*A069403(n)+3` -/
def P16925365377752480080.Spec : Prop :=
  ∀ n, P16925365377752480080.a n = A153388 n

end A153388

/-! ## A153388.P5929768949702225622

`A372242(Δ[n²])-1`
-/

namespace A153388.P5929768949702225622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372242 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A153388.P5929768949702225622

namespace A153388

/-- `A372242(Δ[n²])-1` -/
def P5929768949702225622.Spec : Prop :=
  ∀ n, P5929768949702225622.a n = A153388 n

end A153388

/-! ## A153388.P18232227243987470856

`A022093(Δ[n²])-2`
-/

namespace A153388.P18232227243987470856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A153388.P18232227243987470856

namespace A153388

/-- `A022093(Δ[n²])-2` -/
def P18232227243987470856.Spec : Prop :=
  ∀ n, P18232227243987470856.a n = A153388 n

end A153388

/-! ## A153388.P1880414032588613362

`2*A371843(Δ[n²])`
-/

namespace A153388.P1880414032588613362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A371843 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A153388.P1880414032588613362

namespace A153388

/-- `2*A371843(Δ[n²])` -/
def P1880414032588613362.Spec : Prop :=
  ∀ n, P1880414032588613362.a n = A153388 n

end A153388

/-! ## A153388.P4835449506231801466

`2*(A122678(n+1)+3)`
-/

namespace A153388.P4835449506231801466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A122678 (n + 1) + 3)

end

end A153388.P4835449506231801466

namespace A153388

/-- `2*(A122678(n+1)+3)` -/
def P4835449506231801466.Spec : Prop :=
  ∀ n, P4835449506231801466.a n = A153388 n

end A153388

/-! ## A153388.P6374299977520575063

`2*(A289107(2*n)+2)`
-/

namespace A153388.P6374299977520575063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A289107 (2 * n) + 2)

end

end A153388.P6374299977520575063

namespace A153388

/-- `2*(A289107(2*n)+2)` -/
def P6374299977520575063.Spec : Prop :=
  ∀ n, P6374299977520575063.a n = A153388 n

end A153388

/-! ## A153388.P18290577287618898135

`lcm(2, A153382(2*n+1))`
-/

namespace A153388.P18290577287618898135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A153382 (2 * n + 1))

end

end A153388.P18290577287618898135

namespace A153388

/-- `lcm(2, A153382(2*n+1))` -/
def P18290577287618898135.Spec : Prop :=
  ∀ n, (P18290577287618898135.a n : ℤ) = A153388 n

end A153388

/-! ## A153388.P4297529560165190312

`abs(2-10*Δ[A001906(n)])`
-/

namespace A153388.P4297529560165190312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - 10 * (f1 (n + 1) - f1 n)|

end

end A153388.P4297529560165190312

namespace A153388

/-- `abs(2-10*Δ[A001906(n)])` -/
def P4297529560165190312.Spec : Prop :=
  ∀ n, P4297529560165190312.a n = A153388 n

end A153388

/-! ## A153388.P15751259114352611924

`10*A000045(Δ[n²])-2`
-/

namespace A153388.P15751259114352611924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A153388.P15751259114352611924

namespace A153388

/-- `10*A000045(Δ[n²])-2` -/
def P15751259114352611924.Spec : Prop :=
  ∀ n, P15751259114352611924.a n = A153388 n

end A153388

/-! ## A153388.P207546338561294445

`2*(Δ[A201157(n+1)]-1)`
-/

namespace A153388.P207546338561294445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - 1)

end

end A153388.P207546338561294445

namespace A153388

/-- `2*(Δ[A201157(n+1)]-1)` -/
def P207546338561294445.Spec : Prop :=
  ∀ n, P207546338561294445.a n = A153388 n

end A153388

/-! ## A153388.P11826235690901498663

`10*Δ[A000045(2*n)]-2`
-/

namespace A153388.P11826235690901498663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (f1 (n + 1) - f1 n) - 2

end

end A153388.P11826235690901498663

namespace A153388

/-- `10*Δ[A000045(2*n)]-2` -/
def P11826235690901498663.Spec : Prop :=
  ∀ n, P11826235690901498663.a n = A153388 n

end A153388

/-! ## A153388.P6147027644740576265

`2*(A022088(2*n+1)-1)`
-/

namespace A153388.P6147027644740576265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A022088 (2 * n + 1) - 1)

end

end A153388.P6147027644740576265

namespace A153388

/-- `2*(A022088(2*n+1)-1)` -/
def P6147027644740576265.Spec : Prop :=
  ∀ n, P6147027644740576265.a n = A153388 n

end A153388

/-!
# A153389: a(n) is the coefficient of x^n in the (n+1)-th self-composition of g.f. A(x) for n>=1, with a(1)=1.

The programs for A153389, there is no canonical definition to state claims against.
-/

/-! ## A153389.P13540121375022522155

`∑[n]*A355506(a(n-1))` with `a(0)=1`
-/

namespace A153389.P13540121375022522155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A355506 (a (n - 1)).toNat

end

end A153389.P13540121375022522155

/-!
# A153390: G.f.: A(x) = F(x*G(x))^2 where F(x) = G(x*F(x)) = 1 + x*F(x)^3 is the g.f. of A001764 and G(x) = F(x/G(x)) = 1 + x*G(x)^2 is the g.f. of A000108 (Catalan).

The programs for A153390, there is no canonical definition to state claims against.
-/

/-! ## A153390.P5189220892062890157

`A004776(A118356(n+1))/2+1`
-/

namespace A153390.P5189220892062890157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004776 (A118356 (n + 1)).toNat : ℚ) / 2 + 1

end

end A153390.P5189220892062890157

/-! ## A153390.P17697259748933717727

`A008620(A081085(n)+A003463(n))`
-/

namespace A153390.P17697259748933717727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A081085 n + A003463 n).toNat

end

end A153390.P17697259748933717727

/-!
# A153391: G.f.: A(x) = F(x*G(x)^2) where F(x) = G(x*F(x)) = 1 + x*F(x)^3 is the g.f. of A001764 and G(x) = F(x/G(x)) = 1 + x*G(x)^2 is the g.f. of A000108 (Catalan).

The programs for A153391, there is no canonical definition to state claims against.
-/

/-! ## A153391.P13304675786748133649

`A190917(n)+A083856(A367868(n))`
-/

namespace A153391.P13304675786748133649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190917 n + A083856 (A367868 n).toNat

end

end A153391.P13304675786748133649

/-! ## A153391.P11909776524849163731

`A175891(n)-A102669(A056047(n))`
-/

namespace A153391.P11909776524849163731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175891 n - A102669 (A056047 n).toNat

end

end A153391.P11909776524849163731

/-!
# A153392: G.f.: A(x) = F(x*G(x)^3) where F(x) = G(x*F(x)) = 1 + x*F(x)^3 is the g.f. of A001764 and G(x) = F(x/G(x)) = 1 + x*G(x)^2 is the g.f. of A000108 (Catalan).

The programs for A153392, there is no canonical definition to state claims against.
-/

/-! ## A153392.P18320596464435468394

`A101279(∑[A278459(n)])`
-/

namespace A153392.P18320596464435468394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A153392.P18320596464435468394

/-!
# A153393: G.f.: A(x) = F(x*G(x)^2)^2 where F(x) = G(x*F(x)) = 1 + x*F(x)^3 is the g.f. of A001764 and G(x) = F(x/G(x)) = 1 + x*G(x)^2 is the g.f. of A000108 (Catalan).

The programs for A153393, there is no canonical definition to state claims against.
-/

/-! ## A153393.P10202146768511327474

`A272477(ceil(∑[5^n/3]))`
-/

namespace A153393.P10202146768511327474
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272477 ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉.toNat

end

end A153393.P10202146768511327474

/-!
# A153394: G.f.: A(x) = F(x*G(x)^2)^3 where F(x) = G(x*F(x)) = 1 + x*F(x)^3 is the g.f. of A001764 and G(x) = F(x/G(x)) = 1 + x*G(x)^2 is the g.f. of A000108 (Catalan).

The programs for A153394, there is no canonical definition to state claims against.
-/

/-! ## A153394.P4951273229320409028

`A244234(xor(3, 8*a(n-1)+2-n²%3)-a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A153394.P4951273229320409028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A244234 (Int.xor 3 (8 * a (n - 1) + (2 - ((n ^ 2 % 3 : ℕ) : ℤ))) - a (n - 1)).toNat

end

end A153394.P4951273229320409028

/-!
# A153395: G.f.: A(x) = F(x*G(x)) where F(x) = G(x/F(x)^2) = 1 + x*F(x)^2 is the g.f. of A000108 (Catalan) and G(x) = F(x*G(x)^2) = 1 + x*G(x)^4 is the g.f. of A002293.

The programs for A153395, there is no canonical definition to state claims against.
-/

/-! ## A153395.P18154239554756522867

`A004526(A365977(n)+A171802(n))`
-/

namespace A153395.P18154239554756522867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A365977 n + A171802 n).toNat

end

end A153395.P18154239554756522867

/-! ## A153395.P1587030199092029033

`∏{p}[A368708(n)², #]`
-/

namespace A153395.P1587030199092029033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368708 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A153395.P1587030199092029033

/-!
# A153396: G.f.: A(x) = F(x*G(x)^3) where F(x) = G(x/F(x)^2) = 1 + x*F(x)^2 is the g.f. of A000108 (Catalan) and G(x) = F(x*G(x)^2) = 1 + x*G(x)^4 is the g.f. of A002293.

The programs for A153396, there is no canonical definition to state claims against.
-/

/-! ## A153396.P18125890641516957276

`A005185(A247777(n)+A000108(n))`
-/

namespace A153396.P18125890641516957276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A247777 n + A000108 n).toNat

end

end A153396.P18125890641516957276

/-! ## A153396.P3745299060348162807

`A291786(A174700(n))+A199877(n)`
-/

namespace A153396.P3745299060348162807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291786 (A174700 n).toNat + A199877 n

end

end A153396.P3745299060348162807

/-!
# A153397: G.f.: A(x) = F(x*G(x)^4) = F(G(x)-1) where F(x) = G(x/F(x)^2) = 1 + x*F(x)^2 is the g.f. of A000108 (Catalan) and G(x) = F(x*G(x)^2) = 1 + x*G(x)^4 is the g.f. of A002293.

The programs for A153397, there is no canonical definition to state claims against.
-/

/-! ## A153397.P2371231336525411017

`A083382(9^n+3)`
-/

namespace A153397.P2371231336525411017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (9 ^ n + 3)

end

end A153397.P2371231336525411017

/-!
# A153398: G.f.: A(x) = F(x*G(x)^2) where F(x) = G(x/F(x)) = 1 + x*F(x)^3 is the g.f. of A001764 and G(x) = F(x*G(x)) = 1 + x*G(x)^4 is the g.f. of A002293.

The programs for A153398, there is no canonical definition to state claims against.
-/

/-! ## A153398.P3722114387327041088

`A028310(floor((6*(2*n-1)*a(n-1)-16*(n-2)*a(n-2))/(n+1)))` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A153398.P3722114387327041088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  A028310 ⌊(6 * (((2 * n : ℤ) - 1) * a (n - 1)) - 16 * (((n : ℤ) - 2) * a (n - 2)) : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A153398.P3722114387327041088

/-! ## A153398.P17915335667745236319

`A087156(floor((6*(2*n-1)*a(n-1)-16*(n-2)*a(n-2))/(n+1)))` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A153398.P17915335667745236319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  A087156 ⌊(6 * (((2 * n : ℤ) - 1) * a (n - 1)) - 16 * (((n : ℤ) - 2) * a (n - 2)) : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A153398.P17915335667745236319

/-!
# A153399: G.f.: A(x) = F(x*G(x)^3) where F(x) = G(x/F(x)) = 1 + x*F(x)^3 is the g.f. of A001764 and G(x) = F(x*G(x)) = 1 + x*G(x)^4 is the g.f. of A002293.

The programs for A153399, there is no canonical definition to state claims against.
-/

/-! ## A153399.P696401372873855760

`A004525(A039628(n+1)+A018913(n))`
-/

namespace A153399.P696401372873855760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A039628 (n + 1) + A018913 n).toNat

end

end A153399.P696401372873855760

/-! ## A153399.P8021228774785483958

`or(A055396(n+1), A276568(A019497(2*n)))`
-/

namespace A153399.P8021228774785483958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055396 (n + 1)) (A276568 (A019497 (2 * n)).toNat)

end

end A153399.P8021228774785483958

