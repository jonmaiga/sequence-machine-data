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
import Seq.B000.C015
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A318000: E.g.f.: log( 2*cosh(x) / (1 + sqrt(1 - 2*sinh(2*x))) ).

The programs for A318000, there is no canonical definition to state claims against.
-/

/-! ## A318000.P3603833414782740878

`(n+1)*∏[record[A368109(n)]]`
-/

namespace A318000.P3603833414782740878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368109 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A318000.P3603833414782740878

/-!
# A318001: E.g.f. A(x) satisfies: cosh(A(x) - A(-x)) - sinh(A(x) + A(-x)) = 1.

The programs for A318001, there is no canonical definition to state claims against.
-/

/-! ## A318001.P6331124158794563476

`A360599(∑[n!])`
-/

namespace A318001.P6331124158794563476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360599 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A318001.P6331124158794563476

/-!
# A318002: E.g.f.: 2*cosh(x) / (1 + sqrt(1 - 2*sinh(2*x))).

The programs for A318002, there is no canonical definition to state claims against.
-/

/-! ## A318002.P1989555822236415534

`A327336(n)+A172270(A295257(n))`
-/

namespace A318002.P1989555822236415534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327336 n + A172270 (A295257 n).toNat

end

end A318002.P1989555822236415534

/-! ## A318002.P15334991002375463546

`A004277(A273954(n))-A025168(n)`
-/

namespace A318002.P15334991002375463546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A273954 n).toNat - A025168 n

end

end A318002.P15334991002375463546

/-!
# A318003: E.g.f. A(x) satisfies: A(x) = sinh(x) + cosh(x)*A(x)^2.

The programs for A318003, there is no canonical definition to state claims against.
-/

/-! ## A318003.P12689315834312134313

`∑[A049473(A052606(n))]`
-/

namespace A318003.P12689315834312134313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (A052606 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318003.P12689315834312134313

/-!
# A318004: E.g.f.: 2*cos(x) / (1 + sqrt(1 - 2*sin(2*x))).

The programs for A318004, there is no canonical definition to state claims against.
-/

/-! ## A318004.P12480956302776473680

`or(A057355(A319175(n)), A239144(n))`
-/

namespace A318004.P12480956302776473680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057355 (A319175 n).toNat) (A239144 n)

end

end A318004.P12480956302776473680

/-! ## A318004.P12541114210879795757

`or(A057355(A319175(n)), A293840(n))`
-/

namespace A318004.P12541114210879795757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057355 (A319175 n).toNat) (A293840 n)

end

end A318004.P12541114210879795757

/-!
# A318005: E.g.f.: A(x) satisfies: cos(A(x)) + sin(A(x)) = 1/(cos(x) - sin(x)).

The programs for A318005, there is no canonical definition to state claims against.
-/

/-! ## A318005.P5684451487798564850

`2^n*A200560(n+1)`
-/

namespace A318005.P5684451487798564850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A200560 (n + 1)

end

end A318005.P5684451487798564850

/-! ## A318005.P14318840502654055574

`A319145(∑[A065033(n)])`
-/

namespace A318005.P14318840502654055574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319145 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A318005.P14318840502654055574

/-! ## A318005.P17605980709759524464

`A319145(A033638(n+1))`
-/

namespace A318005.P17605980709759524464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319145 (A033638 (n + 1)).toNat

end

end A318005.P17605980709759524464

/-! ## A318005.P5714410682416283427

`A319145(A002620(n+1)+1)`
-/

namespace A318005.P5714410682416283427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319145 (A002620 (n + 1) + 1).toNat

end

end A318005.P5714410682416283427

/-! ## A318005.P15847396491051606195

`record[gcd(A055087(n), A319145(n+1))]`
-/

namespace A318005.P15847396491051606195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055087 n) (A319145 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318005.P15847396491051606195

/-!
# A318006: E.g.f. A(x) satisfies: cos(A(x)) + sin(A(x)) = 1/( cos(A(-x)) + sin(A(-x)) ).

The programs for A318006, there is no canonical definition to state claims against.
-/

/-! ## A318006.P9051540195877710208

`A372671(A282704(n)-n²)`
-/

namespace A318006.P9051540195877710208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372671 (A282704 n - (n ^ 2 : ℤ)).toNat

end

end A318006.P9051540195877710208

/-! ## A318006.P8326247393669198331

`A145394(A040976(floor(ϕ*ϕ²*a(n-1))))` with `a(0)=1`
-/

namespace A318006.P8326247393669198331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A145394 (A040976 ⌊Real.goldenRatio * (Real.goldenRatio ^ 2 * (a (n - 1) : ℝ))⌋.toNat).toNat

end

end A318006.P8326247393669198331

/-!
# A318007: E.g.f. A(x) satisfies: A(x) = sin(x) + cos(x)*A(x)^2 with A(0)=0.

The programs for A318007, there is no canonical definition to state claims against.
-/

/-! ## A318007.P7630408013814458581

`A064770(∑[10*a(n-1)-a(n-2)])` with `a(0)=2, a(1)=2`
-/

namespace A318007.P7630408013814458581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  10 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A318007.P7630408013814458581

/-!
# A318008: G.f. A(x) satisfies: A( A( x - x^2 ) ) = x + x^2.

The programs for A318008, there is no canonical definition to state claims against.
-/

/-! ## A318008.P5578326781154542266

`A091600(n+1)-A185238(A000041(n))`
-/

namespace A318008.P5578326781154542266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091600 (n + 1) - A185238 (A000041 n).toNat

end

end A318008.P5578326781154542266

/-! ## A318008.P17552163195277378005

`A024417(A357926(n+3)*A357926(n))`
-/

namespace A318008.P17552163195277378005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A357926 (n + 3) * A357926 n).toNat

end

end A318008.P17552163195277378005

/-! ## A318008.P16942791288581230433

`A199410(A250263(n))`
-/

namespace A318008.P16942791288581230433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199410 (A250263 n).toNat

end

end A318008.P16942791288581230433

/-! ## A318008.P9861207575532198793

`A325031(A239561(n))`
-/

namespace A318008.P9861207575532198793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325031 (A239561 n).toNat

end

end A318008.P9861207575532198793

/-! ## A318008.P3911814313513380169

`A091600(A032555(n+1))`
-/

namespace A318008.P3911814313513380169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091600 (A032555 (n + 1)).toNat

end

end A318008.P3911814313513380169

/-!
# A318009: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318009, there is no canonical definition to state claims against.
-/

/-! ## A318009.P4976565552349206744

`A318016(∑[4*n]+1)`
-/

namespace A318009.P4976565552349206744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318016 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A318009.P4976565552349206744

/-! ## A318009.P17331524172229781143

`record[gcd(A008482(n), A318016(n+1))]`
-/

namespace A318009.P17331524172229781143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A318016 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318009.P17331524172229781143

/-! ## A318009.P1059309286851545359

`A318016(A001844(n))+A034543(n+1)`
-/

namespace A318009.P1059309286851545359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318016 (A001844 n).toNat + A034543 (n + 1)

end

end A318009.P1059309286851545359

/-! ## A318009.P17156985729568661807

`A318016(A001844(n))+A008683(4*(n+1))`
-/

namespace A318009.P17156985729568661807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318016 (A001844 n).toNat + A008683 (4 * (n + 1))

end

end A318009.P17156985729568661807

/-! ## A318009.P7289710973059405495

`A014963(9*n+6)*A318016(A001844(n))`
-/

namespace A318009.P7289710973059405495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (9 * n + 6) * A318016 (A001844 n).toNat

end

end A318009.P7289710973059405495

/-!
# A318010: Number of nX2 0..1 arrays with every element unequal to 0, 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318010, the canonical program `A318010.P11700517544221402171` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318010 has offset 1).

The definition of A318010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318010.P4059924652652868121

`ogf((2-x^3)/(1-4x+2x^2-x^3+x^4))`
-/

namespace A318010.P4059924652652868121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 0, -1] [1, -4, 2, -1, 1] n

end

end A318010.P4059924652652868121

namespace A318010

/-- `ogf((2-x^3)/(1-4x+2x^2-x^3+x^4))` -/
def P4059924652652868121.Spec : Prop :=
  ∀ n, P4059924652652868121.a n = A318010 (n + 1)

end A318010

/-! ## A318010.P11700517544221402171

`4*a(n-1)-2*a(n-2)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=8, a(2)=28, a(3)=97`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A318010

/-- `4*a(n-1)-2*a(n-2)+a(n-3)-a(n-4)` -/
def P11700517544221402171.Spec : Prop :=
  ∀ n, P11700517544221402171.a n = A318010 (n + 1)

theorem P11700517544221402171.correct : P11700517544221402171.Spec := by
  intro n
  simp only [A318010, Nat.add_sub_cancel]

end A318010

/-! ## A318010.P1702856379411099935

`A049864(2*n+3)`
-/

namespace A318010.P1702856379411099935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 (2 * n + 3)

end

end A318010.P1702856379411099935

namespace A318010

/-- `A049864(2*n+3)` -/
def P1702856379411099935.Spec : Prop :=
  ∀ n, P1702856379411099935.a n = A318010 (n + 1)

end A318010

/-! ## A318010.P2231059850553885338

`Δ[A049856(2*n+3)]`
-/

namespace A318010.P2231059850553885338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A318010.P2231059850553885338

namespace A318010

/-- `Δ[A049856(2*n+3)]` -/
def P2231059850553885338.Spec : Prop :=
  ∀ n, P2231059850553885338.a n = A318010 (n + 1)

end A318010

/-! ## A318010.P12548329360430713815

`A049858(2*n)+Δ[A049858(2*n+1)]`
-/

namespace A318010.P12548329360430713815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 (2 * n) + (f1 (n + 1) - f1 n)

end

end A318010.P12548329360430713815

namespace A318010

/-- `A049858(2*n)+Δ[A049858(2*n+1)]` -/
def P12548329360430713815.Spec : Prop :=
  ∀ n, P12548329360430713815.a n = A318010 (n + 1)

end A318010

/-! ## A318010.P17275762601740616768

`A059633(2*n+5)-A049858(2*(n+1))`
-/

namespace A318010.P17275762601740616768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059633 (2 * n + 5) - A049858 (2 * (n + 1))

end

end A318010.P17275762601740616768

namespace A318010

/-- `A059633(2*n+5)-A049858(2*(n+1))` -/
def P17275762601740616768.Spec : Prop :=
  ∀ n, P17275762601740616768.a n = A318010 (n + 1)

end A318010

/-! ## A318010.P14783913309504544616

`Δ[A059633(2*(n+2))-A059633(2*n+3)]`
-/

namespace A318010.P14783913309504544616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059633 (2 * (n + 2)) - A059633 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A318010.P14783913309504544616

namespace A318010

/-- `Δ[A059633(2*(n+2))-A059633(2*n+3)]` -/
def P14783913309504544616.Spec : Prop :=
  ∀ n, P14783913309504544616.a n = A318010 (n + 1)

end A318010

/-! ## A318010.P17134078092921476065

`A049875(A005408(n+1))-A049868(A005408(n+1))`
-/

namespace A318010.P17134078092921476065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049875 (A005408 (n + 1)).toNat - A049868 (A005408 (n + 1)).toNat

end

end A318010.P17134078092921476065

namespace A318010

/-- `A049875(A005408(n+1))-A049868(A005408(n+1))` -/
def P17134078092921476065.Spec : Prop :=
  ∀ n, P17134078092921476065.a n = A318010 (n + 1)

end A318010

/-! ## A318010.P1021945844625591780

`sqrt(A189336(2*n+1))`
-/

namespace A318010.P1021945844625591780
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A189336 (2 * n + 1) : ℝ)

end

end A318010.P1021945844625591780

namespace A318010

/-- `sqrt(A189336(2*n+1))` -/
def P1021945844625591780.Spec : Prop :=
  ∀ n, P1021945844625591780.a n = (A318010 (n + 1) : ℝ)

end A318010

/-! ## A318010.P18176058214736165365

`A189337(2*n+1)/A189336(2*n+1)`
-/

namespace A318010.P18176058214736165365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189337 (2 * n + 1) : ℚ) / (A189336 (2 * n + 1) : ℚ)

end

end A318010.P18176058214736165365

namespace A318010

/-- `A189337(2*n+1)/A189336(2*n+1)` -/
def P18176058214736165365.Spec : Prop :=
  ∀ n, P18176058214736165365.a n = (A318010 (n + 1) : ℚ)

end A318010

/-!
# A318011: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318011, there is no canonical definition to state claims against.
-/

/-! ## A318011.P3665015047811257928

`A318016(∑[n+2]+4)`
-/

namespace A318011.P3665015047811257928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318016 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A318011.P3665015047811257928

/-! ## A318011.P2820030380955063158

`A280865(n)*A318016(A167614(n+1))`
-/

namespace A318011.P2820030380955063158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280865 n * A318016 (A167614 (n + 1)).toNat

end

end A318011.P2820030380955063158

/-! ## A318011.P15906786651941895689

`lcm(A065357(n), A318016(A167614(n+1)))`
-/

namespace A318011.P15906786651941895689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065357 n) (A318016 (A167614 (n + 1)).toNat)

end

end A318011.P15906786651941895689

/-! ## A318011.P8165163162939629994

`A318016(A167614(n+1))%A250937(n+1)`
-/

namespace A318011.P8165163162939629994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318016 (A167614 (n + 1)).toNat) (A250937 (n + 1))

end

end A318011.P8165163162939629994

/-! ## A318011.P14569518159810910352

`A318016(A052905(n)+3)%A318012(n+1)`
-/

namespace A318011.P14569518159810910352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318016 (A052905 n + 3).toNat) (A318012 (n + 1))

end

end A318011.P14569518159810910352

/-!
# A318012: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318012, there is no canonical definition to state claims against.
-/

/-! ## A318012.P10098570071849808776

`A318016(A374004(n+1))`
-/

namespace A318012.P10098570071849808776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318016 (A374004 (n + 1)).toNat

end

end A318012.P10098570071849808776

/-! ## A318012.P17983570690669335258

`A318016(A141214(n)+7)`
-/

namespace A318012.P17983570690669335258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318016 (A141214 n + 7).toNat

end

end A318012.P17983570690669335258

/-! ## A318012.P3542191343107005214

`A318016(A052905(n)+9)`
-/

namespace A318012.P3542191343107005214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318016 (A052905 n + 9).toNat

end

end A318012.P3542191343107005214

/-! ## A318012.P17037062984914691327

`A318016(A055999(n)+10)`
-/

namespace A318012.P17037062984914691327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318016 (A055999 n + 10).toNat

end

end A318012.P17037062984914691327

/-! ## A318012.P3061815184292546941

`A318016(A167614(n+2)+1)`
-/

namespace A318012.P3061815184292546941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318016 (A167614 (n + 2) + 1).toNat

end

end A318012.P3061815184292546941

/-!
# A318013: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318013, there is no canonical definition to state claims against.
-/

/-! ## A318013.P10556457001723744586

`A318016(A374005(n+1))`
-/

namespace A318013.P10556457001723744586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318016 (A374005 (n + 1)).toNat

end

end A318013.P10556457001723744586

/-! ## A318013.P13113050272007979030

`A318016(A167499(n+3))`
-/

namespace A318013.P13113050272007979030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318016 (A167499 (n + 3)).toNat

end

end A318013.P13113050272007979030

/-! ## A318013.P2563283610473976974

`A318016(A167614(n+3)+2)`
-/

namespace A318013.P2563283610473976974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318016 (A167614 (n + 3) + 2).toNat

end

end A318013.P2563283610473976974

/-! ## A318013.P18256209688336277328

`A318016(A000124(n+4)+4)`
-/

namespace A318013.P18256209688336277328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318016 (A000124 (n + 4) + 4).toNat

end

end A318013.P18256209688336277328

/-! ## A318013.P5044399945004699918

`A318016(A000096(n+3)+6)`
-/

namespace A318013.P5044399945004699918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318016 (A000096 (n + 3) + 6).toNat

end

end A318013.P5044399945004699918

/-!
# A318014: Number of n X 6 0..1 arrays with every element unequal to 0, 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318014, there is no canonical definition to state claims against.
-/

/-! ## A318014.P6849387994988667277

`A318016(A374007(n+1))`
-/

namespace A318014.P6849387994988667277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318016 (A374007 (n + 1)).toNat

end

end A318014.P6849387994988667277

/-! ## A318014.P15876108516263978513

`A318016(A133263(n+5)+4)`
-/

namespace A318014.P15876108516263978513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318016 (A133263 (n + 5) + 4).toNat

end

end A318014.P15876108516263978513

/-! ## A318014.P9153097726647535930

`A318016(eq[7, A131818(n+1)])`
-/

namespace A318014.P9153097726647535930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318014.P9153097726647535930

/-! ## A318014.P15754269673621690987

`A318016(A052905(n+3))`
-/

namespace A318014.P15754269673621690987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318016 (A052905 (n + 3)).toNat

end

end A318014.P15754269673621690987

/-! ## A318014.P15547970390227338936

`A318016(eq[3, A219347(n)])`
-/

namespace A318014.P15547970390227338936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318014.P15547970390227338936

/-!
# A318015: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318015, there is no canonical definition to state claims against.
-/

/-! ## A318015.P4270906616157389041

`A318016(A374008(n+1))`
-/

namespace A318015.P4270906616157389041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318016 (A374008 (n + 1)).toNat

end

end A318015.P4270906616157389041

/-! ## A318015.P9912149888030519377

`A318016(A167614(n+5)+4)`
-/

namespace A318015.P9912149888030519377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318016 (A167614 (n + 5) + 4).toNat

end

end A318015.P9912149888030519377

/-! ## A318015.P697529732051502168

`A318016(eq[8, A131818(n+1)])`
-/

namespace A318015.P697529732051502168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318015.P697529732051502168

/-! ## A318015.P5709855972285889231

`A318016(A055999(n+4))`
-/

namespace A318015.P5709855972285889231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318016 (A055999 (n + 4)).toNat

end

end A318015.P5709855972285889231

/-! ## A318015.P2805947440572136524

`A318016(eq[4, A219347(n)])`
-/

namespace A318015.P2805947440572136524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318016 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318015.P2805947440572136524

/-!
# A318016: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318016, there is no canonical definition to state claims against.
-/

/-! ## A318016.P5689160585324067583

`A320402(A084192(∑[n]))`
-/

namespace A318016.P5689160585324067583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A318016.P5689160585324067583

/-! ## A318016.P8106917515056394485

`A320402(A062003(n)+1)`
-/

namespace A318016.P8106917515056394485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (A062003 n + 1).toNat

end

end A318016.P8106917515056394485

/-! ## A318016.P8937183002039880245

`A118759(A320402(n+1))`
-/

namespace A318016.P8937183002039880245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A320402 (n + 1)).toNat

end

end A318016.P8937183002039880245

/-! ## A318016.P10387774735099203246

`A320402(A004885(n+2))`
-/

namespace A318016.P10387774735099203246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (A004885 (n + 2)).toNat

end

end A318016.P10387774735099203246

/-! ## A318016.P323281763751794390

`A320402(A004896(n+2))`
-/

namespace A318016.P323281763751794390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320402 (A004896 (n + 2)).toNat

end

end A318016.P323281763751794390

/-!
# A318017: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318017, there is no canonical definition to state claims against.
-/

/-! ## A318017.P17419778092694884067

`A318024(∑[4*n]+1)`
-/

namespace A318017.P17419778092694884067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A318017.P17419778092694884067

/-! ## A318017.P8487011785345070594

`record[A318024(Δ[A235355(n)])]`
-/

namespace A318017.P8487011785345070594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318017.P8487011785345070594

/-! ## A318017.P15952074073749552029

`record[A318024(A330613(n+1))]`
-/

namespace A318017.P15952074073749552029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318017.P15952074073749552029

/-! ## A318017.P4456215166165119862

`A318024(A001844(n))+char[10]`
-/

namespace A318017.P4456215166165119862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A318017.P4456215166165119862

/-! ## A318017.P14864890267995880136

`record[A003982(n)*A318024(n+1)]`
-/

namespace A318017.P14864890267995880136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A318024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318017.P14864890267995880136

/-!
# A318018: Number of nX2 0..1 arrays with every element unequal to 0, 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318018, there is no canonical definition to state claims against.
-/

/-! ## A318018.P16031503495304974121

`A318024(∑[n+1]+2)`
-/

namespace A318018.P16031503495304974121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A318018.P16031503495304974121

/-! ## A318018.P13377398580025075465

`record[A318024(A286235(n+1)+1)]`
-/

namespace A318018.P13377398580025075465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318018.P13377398580025075465

/-! ## A318018.P5572135739373096785

`A318024(A133263(n+1))+char[20]`
-/

namespace A318018.P5572135739373096785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A318018.P5572135739373096785

/-! ## A318018.P11521244944951462196

`record[A318024(n+3)/A038243(n)]`
-/

namespace A318018.P11521244944951462196
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318024 (n + 3) : ℚ) / (A038243 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318018.P11521244944951462196

/-! ## A318018.P14472925067971241577

`record[gcd(A213191(n), A318024(n+2))]`
-/

namespace A318018.P14472925067971241577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A213191 n) (A318024 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318018.P14472925067971241577

/-!
# A318019: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318019, there is no canonical definition to state claims against.
-/

/-! ## A318019.P16466704728612270264

`A318024(∑[n+2]+4)`
-/

namespace A318019.P16466704728612270264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A318019.P16466704728612270264

/-! ## A318019.P14063344438594318498

`A318024(A167614(n+1))+char[19]`
-/

namespace A318019.P14063344438594318498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A318019.P14063344438594318498

/-! ## A318019.P11319665432668956954

`A318024(A055998(n)+6)+char[41]`
-/

namespace A318019.P11319665432668956954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A318019.P11319665432668956954

/-! ## A318019.P10436594757043449133

`A318024(A167614(n+1))%A016962(n)`
-/

namespace A318019.P10436594757043449133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318024 (A167614 (n + 1)).toNat) (A016962 n)

end

end A318019.P10436594757043449133

/-! ## A318019.P1679730269314922847

`gcd(A185037(n), A318024(A167614(n+1)))`
-/

namespace A318019.P1679730269314922847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185037 n) (A318024 (A167614 (n + 1)).toNat)

end

end A318019.P1679730269314922847

/-!
# A318020: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318020, there is no canonical definition to state claims against.
-/

/-! ## A318020.P8135750639214655450

`A318024(∑[n+3]+7)`
-/

namespace A318020.P8135750639214655450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A318020.P8135750639214655450

/-! ## A318020.P9161009016019878684

`A318024(A167614(n+2)+1)+char[19]`
-/

namespace A318020.P9161009016019878684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A318020.P9161009016019878684

/-! ## A318020.P5351761973880239946

`A007318(C(2, n))*A318024(A167614(n+2)+1)`
-/

namespace A318020.P5351761973880239946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A318024 (A167614 (n + 2) + 1).toNat

end

end A318020.P5351761973880239946

/-! ## A318020.P2003894564544873364

`A318024(A167614(n+2)+1)%A000045(n+13)²`
-/

namespace A318020.P2003894564544873364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318024 (A167614 (n + 2) + 1).toNat) (A000045 (n + 13) ^ 2)

end

end A318020.P2003894564544873364

/-! ## A318020.P4099246607784067875

`A014963(10*(n+1))*A318024(A167614(n+2)+1)`
-/

namespace A318020.P4099246607784067875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A318024 (A167614 (n + 2) + 1).toNat

end

end A318020.P4099246607784067875

/-!
# A318021: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318021, there is no canonical definition to state claims against.
-/

/-! ## A318021.P12593622203487740919

`A318024(A374005(n+1))`
-/

namespace A318021.P12593622203487740919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (A374005 (n + 1)).toNat

end

end A318021.P12593622203487740919

/-! ## A318021.P2295554165176251484

`A318024(A167499(n+3))`
-/

namespace A318021.P2295554165176251484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (A167499 (n + 3)).toNat

end

end A318021.P2295554165176251484

/-! ## A318021.P16494125867584687621

`A318024(A155212(n)+13)`
-/

namespace A318021.P16494125867584687621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (A155212 n + 13).toNat

end

end A318021.P16494125867584687621

/-! ## A318021.P15131807874410801968

`A318024(A056000(n)+15)`
-/

namespace A318021.P15131807874410801968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (A056000 n + 15).toNat

end

end A318021.P15131807874410801968

/-! ## A318021.P1693389248924573175

`A318024(eq[7, A066657(n)])`
-/

namespace A318021.P1693389248924573175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318021.P1693389248924573175

/-!
# A318022: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318022, there is no canonical definition to state claims against.
-/

/-! ## A318022.P13384345547994114529

`A318024(A374007(n+1))`
-/

namespace A318022.P13384345547994114529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (A374007 (n + 1)).toNat

end

end A318022.P13384345547994114529

/-! ## A318022.P7419075798649000262

`A318024(A166136(n+4))`
-/

namespace A318022.P7419075798649000262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (A166136 (n + 4)).toNat

end

end A318022.P7419075798649000262

/-! ## A318022.P13131793182390875147

`A318024(A056115(n)+21)`
-/

namespace A318022.P13131793182390875147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (A056115 n + 21).toNat

end

end A318022.P13131793182390875147

/-! ## A318022.P15802931814026512186

`A318024(A167499(n+4)+1)`
-/

namespace A318022.P15802931814026512186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (A167499 (n + 4) + 1).toNat

end

end A318022.P15802931814026512186

/-! ## A318022.P12404579915663827792

`A318024(A000124(n+5)+5)`
-/

namespace A318022.P12404579915663827792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (A000124 (n + 5) + 5).toNat

end

end A318022.P12404579915663827792

/-!
# A318023: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318023, there is no canonical definition to state claims against.
-/

/-! ## A318023.P6370958071859022110

`A318024(A374008(n+1))`
-/

namespace A318023.P6370958071859022110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (A374008 (n + 1)).toNat

end

end A318023.P6370958071859022110

/-! ## A318023.P94941234396341546

`A318024(A056119(n)+28)`
-/

namespace A318023.P94941234396341546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (A056119 n + 28).toNat

end

end A318023.P94941234396341546

/-! ## A318023.P14736737852743261586

`A318024(eq[11, A066657(n)])`
-/

namespace A318023.P14736737852743261586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318023.P14736737852743261586

/-! ## A318023.P11726506796047804897

`A318024(A166136(n+5)+1)`
-/

namespace A318023.P11726506796047804897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (A166136 (n + 5) + 1).toNat

end

end A318023.P11726506796047804897

/-! ## A318023.P8177677860435880073

`A318024(A167614(n+5)+4)`
-/

namespace A318023.P8177677860435880073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (A167614 (n + 5) + 4).toNat

end

end A318023.P8177677860435880073

/-!
# A318024: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318024, there is no canonical definition to state claims against.
-/

/-! ## A318024.P10109301960930363338

`A320409(n+1)-A057498(A059922(n))`
-/

namespace A318024.P10109301960930363338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (n + 1) - A057498 (A059922 n).toNat

end

end A318024.P10109301960930363338

/-! ## A318024.P6082807324203990376

`A320409(n+1)-A185044(A047969(n))`
-/

namespace A318024.P6082807324203990376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (n + 1) - A185044 (A047969 n).toNat

end

end A318024.P6082807324203990376

/-! ## A318024.P9692154057529175086

`A320409(n+1)-A185044(A099608(n))`
-/

namespace A318024.P9692154057529175086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (n + 1) - A185044 (A099608 n).toNat

end

end A318024.P9692154057529175086

/-! ## A318024.P18096870315031399113

`A320409(n+1)-A174875(A157177(n))`
-/

namespace A318024.P18096870315031399113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (n + 1) - A174875 (A157177 n).toNat

end

end A318024.P18096870315031399113

/-! ## A318024.P9229093287635436879

`A289508(A132318(n))+A229402(n+1)`
-/

namespace A318024.P9229093287635436879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A132318 n).toNat + A229402 (n + 1)

end

end A318024.P9229093287635436879

/-!
# A318025: Expansion of Sum_{k>=1} (-1 + Product_{j>=1} 1/(1 - j*x^(k*j))).

The programs for A318025, there is no canonical definition to state claims against.
-/

/-! ## A318025.P17699018289927380092

`∑{d}[n+1, A006906(#)]`
-/

namespace A318025.P17699018289927380092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006906 d

end

end A318025.P17699018289927380092

/-! ## A318025.P518248656893038637

`∑{d}[n+1, A000005(#)*A300277((n+1)/#)]`
-/

namespace A318025.P518248656893038637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A300277 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318025.P518248656893038637

/-!
# A318026: Expansion of Product_{k>=1} 1/((1 - x^k)*(1 - x^(3*k))).

The programs for A318026, there is no canonical definition to state claims against.
-/

/-! ## A318026.P13552717627738386738

`A118759(A257655(n))`
-/

namespace A318026.P13552717627738386738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A257655 n).toNat

end

end A318026.P13552717627738386738

/-! ## A318026.P11330620950424183404

`A037213(A257655(n)²)`
-/

namespace A318026.P11330620950424183404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A257655 n ^ 2).toNat

end

end A318026.P11330620950424183404

/-! ## A318026.P17380059513542686096

`filter[A257655(n), A305387(#)]`
-/

namespace A318026.P17380059513542686096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305387 (f1 j).toNat = 1) n)

end

end A318026.P17380059513542686096

/-! ## A318026.P9890212886035237112

`A257655(n)%A067192(n+1)`
-/

namespace A318026.P9890212886035237112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257655 n) (A067192 (n + 1))

end

end A318026.P9890212886035237112

/-! ## A318026.P365522753415665887

`filter[A097196(2*n), A305387(#)]`
-/

namespace A318026.P365522753415665887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097196 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305387 (f1 j).toNat = 1) n)

end

end A318026.P365522753415665887

/-!
# A318029: Expansion of Sum_{k>=2} x^(k*(k+3)/2) / Product_{j=1..k} (1 - x^j).

The programs for A318029, there is no canonical definition to state claims against.
-/

/-! ## A318029.P18115105011126569998

`A025147(char[1]+n)-1`
-/

namespace A318029.P18115105011126569998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 ((if ∃ j, f1 j = n then 1 else 0) + n) - 1

end

end A318029.P18115105011126569998

/-! ## A318029.P11084155095372798583

`char[1]-(1-A025147(n))`
-/

namespace A318029.P11084155095372798583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (1 - A025147 n)

end

end A318029.P11084155095372798583

/-! ## A318029.P11870741914572771144

`A087897(n)+a(n-2)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A318029.P11870741914572771144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0] fun n a =>
  A087897 n + a (n - 2)

end

end A318029.P11870741914572771144

/-! ## A318029.P4059305894726256290

`A063524(n)+A025147(n)-1`
-/

namespace A318029.P4059305894726256290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + (A025147 n - 1)

end

end A318029.P4059305894726256290

/-! ## A318029.P17195820742977325266

`(A025147(n)-1)%A000041(n)`
-/

namespace A318029.P17195820742977325266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025147 n - 1) (A000041 n)

end

end A318029.P17195820742977325266

/-! ## A318029.P3188493298466199910

`A026835(A152948(n+1))-1`
-/

namespace A318029.P3188493298466199910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026835 (A152948 (n + 1)).toNat - 1

end

end A318029.P3188493298466199910

/-! ## A318029.P12077154994860213645

`A289207(A025147(n)+1)`
-/

namespace A318029.P12077154994860213645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A025147 n + 1).toNat

end

end A318029.P12077154994860213645

/-! ## A318029.P7949541372952414183

`A023443(A025147(char[1]+n))`
-/

namespace A318029.P7949541372952414183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A025147 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat

end

end A318029.P7949541372952414183

/-! ## A318029.P3397759163488188807

`A028310(A096765(n+1))-1`
-/

namespace A318029.P3397759163488188807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A096765 (n + 1)).toNat - 1

end

end A318029.P3397759163488188807

/-!
# A318030: Number of nXn 0..1 arrays with every element unequal to 0, 1, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318030, there is no canonical definition to state claims against.
-/

/-! ## A318030.P2890978564368505932

`A318037(∑[4*n]+1)`
-/

namespace A318030.P2890978564368505932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318037 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A318030.P2890978564368505932

/-! ## A318030.P11646007392607961471

`∑{digits}[n, A318037(A001844(#))]`
-/

namespace A318030.P11646007392607961471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A318037 (A001844 x).toNat).sum

end

end A318030.P11646007392607961471

/-! ## A318030.P7198709723351543928

`record[A318037(Δ[A235355(n)])]`
-/

namespace A318030.P7198709723351543928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318037 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318030.P7198709723351543928

/-! ## A318030.P9504302174599807595

`and(-1, A318037(A001844(n)))`
-/

namespace A318030.P9504302174599807595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A318037 (A001844 n).toNat)

end

end A318030.P9504302174599807595

/-! ## A318030.P11461901533264779886

`record[A003982(n)*A318037(n+1)]`
-/

namespace A318030.P11461901533264779886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A318037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318030.P11461901533264779886

/-!
# A318031: Number of nX2 0..1 arrays with every element unequal to 0, 1, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318031, the canonical program `A318031.P320335726501133931` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318031 has offset 1).

The definition of A318031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318031.P320335726501133931

`a(n-1)+4*a(n-3)+a(n-5)-a(n-6)` with `a(0)=2, a(1)=3, a(2)=6, a(3)=11, a(4)=22, a(5)=46`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A318031

/-- `a(n-1)+4*a(n-3)+a(n-5)-a(n-6)` -/
def P320335726501133931.Spec : Prop :=
  ∀ n, P320335726501133931.a n = A318031 (n + 1)

theorem P320335726501133931.correct : P320335726501133931.Spec := by
  intro n
  simp only [A318031, Nat.add_sub_cancel]

end A318031

/-! ## A318031.P4091180818994493291

`A318037(∑[n+1]+2)`
-/

namespace A318031.P4091180818994493291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318037 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A318031.P4091180818994493291

namespace A318031

/-- `A318037(∑[n+1]+2)` -/
def P4091180818994493291.Spec : Prop :=
  ∀ n, P4091180818994493291.a n = A318031 (n + 1)

end A318031

/-! ## A318031.P5660300852902932424

`or(2, A318037(A133263(n+1)))`
-/

namespace A318031.P5660300852902932424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A318037 (A133263 (n + 1)).toNat)

end

end A318031.P5660300852902932424

namespace A318031

/-- `or(2, A318037(A133263(n+1)))` -/
def P5660300852902932424.Spec : Prop :=
  ∀ n, P5660300852902932424.a n = A318031 (n + 1)

end A318031

/-! ## A318031.P352918067087650559

`or(2, A318037(A000096(n)+3))`
-/

namespace A318031.P352918067087650559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A318037 (A000096 n + 3).toNat)

end

end A318031.P352918067087650559

namespace A318031

/-- `or(2, A318037(A000096(n)+3))` -/
def P352918067087650559.Spec : Prop :=
  ∀ n, P352918067087650559.a n = A318031 (n + 1)

end A318031

/-! ## A318031.P2812453298740227006

`record[A318037(n+2)/A193722(n)]`
-/

namespace A318031.P2812453298740227006
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318037 (n + 2) : ℚ) / (A193722 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318031.P2812453298740227006

namespace A318031

/-- `record[A318037(n+2)/A193722(n)]` -/
def P2812453298740227006.Spec : Prop :=
  ∀ n, P2812453298740227006.a n = (A318031 (n + 1) : ℚ)

end A318031

/-!
# A318032: Number of nX3 0..1 arrays with every element unequal to 0, 1, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318032, there is no canonical definition to state claims against.
-/

/-! ## A318032.P107170139168337177

`A318037(∑[n+2]+4)`
-/

namespace A318032.P107170139168337177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318037 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A318032.P107170139168337177

/-! ## A318032.P14683193790110609156

`and(-1, A318037(A167614(n+1)))`
-/

namespace A318032.P14683193790110609156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A318037 (A167614 (n + 1)).toNat)

end

end A318032.P14683193790110609156

/-! ## A318032.P1152377717774222477

`A318037(A167614(n+1))+A025469(n)`
-/

namespace A318032.P1152377717774222477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318037 (A167614 (n + 1)).toNat + A025469 n

end

end A318032.P1152377717774222477

/-! ## A318032.P6002358970658927713

`A326683(n)+A318037(A167614(n+1))`
-/

namespace A318032.P6002358970658927713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326683 n + A318037 (A167614 (n + 1)).toNat

end

end A318032.P6002358970658927713

/-! ## A318032.P11183713799343039825

`A318037(A167614(n+1))%A141384(n)`
-/

namespace A318032.P11183713799343039825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318037 (A167614 (n + 1)).toNat) (A141384 n)

end

end A318032.P11183713799343039825

/-!
# A318033: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318033, there is no canonical definition to state claims against.
-/

/-! ## A318033.P2132938081315221984

`A318037(∑[n+3]+7)`
-/

namespace A318033.P2132938081315221984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318037 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A318033.P2132938081315221984

/-! ## A318033.P212077654191851654

`A318037(A052905(n)+9)+char[18]`
-/

namespace A318033.P212077654191851654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318037 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A318033.P212077654191851654

/-! ## A318033.P4248640229197346102

`A318037(Δ[A008778(n)]+6)+char[19]`
-/

namespace A318033.P4248640229197346102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318037 (f1 (n + 1) - f1 n + 6).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A318033.P4248640229197346102

/-! ## A318033.P17782518977155218423

`A318037(A052905(n)+9)%A000108(n+6)`
-/

namespace A318033.P17782518977155218423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318037 (A052905 n + 9).toNat) (A000108 (n + 6))

end

end A318033.P17782518977155218423

/-! ## A318033.P5659979808329634438

`A318037(A052905(n)+9)/A007318(C(n, 2))`
-/

namespace A318033.P5659979808329634438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318037 (A052905 n + 9).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A318033.P5659979808329634438

/-!
# A318034: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318034, there is no canonical definition to state claims against.
-/

/-! ## A318034.P12382545314048967565

`A318037(A374005(n+1))`
-/

namespace A318034.P12382545314048967565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318037 (A374005 (n + 1)).toNat

end

end A318034.P12382545314048967565

/-! ## A318034.P820549496621387278

`A318037(A155212(n)+13)`
-/

namespace A318034.P820549496621387278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318037 (A155212 n + 13).toNat

end

end A318034.P820549496621387278

/-! ## A318034.P14482564983282655055

`A318037(A056000(n)+15)`
-/

namespace A318034.P14482564983282655055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318037 (A056000 n + 15).toNat

end

end A318034.P14482564983282655055

/-! ## A318034.P6633775258025905934

`A318037(eq[7, A066657(n)])`
-/

namespace A318034.P6633775258025905934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318034.P6633775258025905934

/-! ## A318034.P10331817173594532928

`A318037(A167614(n+3)+2)`
-/

namespace A318034.P10331817173594532928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318037 (A167614 (n + 3) + 2).toNat

end

end A318034.P10331817173594532928

/-!
# A318035: Number of nX6 0..1 arrays with every element unequal to 0, 1, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318035, there is no canonical definition to state claims against.
-/

/-! ## A318035.P14601492222662510686

`A318037(A374007(n+1))`
-/

namespace A318035.P14601492222662510686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318037 (A374007 (n + 1)).toNat

end

end A318035.P14601492222662510686

/-! ## A318035.P14151880440392892774

`A318037(A056115(n)+21)`
-/

namespace A318035.P14151880440392892774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318037 (A056115 n + 21).toNat

end

end A318035.P14151880440392892774

/-! ## A318035.P6911029593033729309

`A318037(A167499(n+4)+1)`
-/

namespace A318035.P6911029593033729309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318037 (A167499 (n + 4) + 1).toNat

end

end A318035.P6911029593033729309

/-! ## A318035.P596196480957050779

`A318037(A167614(n+4)+3)`
-/

namespace A318035.P596196480957050779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318037 (A167614 (n + 4) + 3).toNat

end

end A318035.P596196480957050779

/-! ## A318035.P1748553433769071995

`A318037(A000124(n+5)+5)`
-/

namespace A318035.P1748553433769071995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318037 (A000124 (n + 5) + 5).toNat

end

end A318035.P1748553433769071995

/-!
# A318036: Number of nX7 0..1 arrays with every element unequal to 0, 1, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318036, there is no canonical definition to state claims against.
-/

/-! ## A318036.P5419233366213072501

`A318037(A374008(n+1))`
-/

namespace A318036.P5419233366213072501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318037 (A374008 (n + 1)).toNat

end

end A318036.P5419233366213072501

/-! ## A318036.P647912187000337609

`A318037(A056119(n)+28)`
-/

namespace A318036.P647912187000337609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318037 (A056119 n + 28).toNat

end

end A318036.P647912187000337609

/-! ## A318036.P16108356390052404634

`A318037(eq[11, A066657(n)])`
-/

namespace A318036.P16108356390052404634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318036.P16108356390052404634

/-! ## A318036.P7459380898608389805

`A318037(A167614(n+5)+4)`
-/

namespace A318036.P7459380898608389805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318037 (A167614 (n + 5) + 4).toNat

end

end A318036.P7459380898608389805

/-! ## A318036.P14856569764419733517

`A318037(A000124(n+6)+6)`
-/

namespace A318036.P14856569764419733517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318037 (A000124 (n + 6) + 6).toNat

end

end A318036.P14856569764419733517

/-!
# A318037: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318037, there is no canonical definition to state claims against.
-/

/-! ## A318037.P1508265512750169578

`A326165(n+1)-A309785(A331562(n))`
-/

namespace A318037.P1508265512750169578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326165 (n + 1) - A309785 (A331562 n).toNat

end

end A318037.P1508265512750169578

/-! ## A318037.P10156448997125024135

`A326165(n+1)%A057025(n)`
-/

namespace A318037.P10156448997125024135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326165 (n + 1)) (A057025 n)

end

end A318037.P10156448997125024135

/-! ## A318037.P7071318236929539012

`A033677(∏{d}[A326165(n+1), #])`
-/

namespace A318037.P7071318236929539012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A318037.P7071318236929539012

/-! ## A318037.P16578865946692605128

`A326165(n+1)+A000007(A022168(n))`
-/

namespace A318037.P16578865946692605128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326165 (n + 1) + A000007 (A022168 n).toNat

end

end A318037.P16578865946692605128

/-! ## A318037.P15945994143936132698

`gcd(A000122(A306319(n)), A326165(n+1))`
-/

namespace A318037.P15945994143936132698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000122 (A306319 n).toNat) (A326165 (n + 1))

end

end A318037.P15945994143936132698

/-!
# A318038: Number of nXn 0..1 arrays with every element unequal to 0, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318038, there is no canonical definition to state claims against.
-/

/-! ## A318038.P2759161993829399082

`A318045(∑[4*n]+1)`
-/

namespace A318038.P2759161993829399082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318045 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A318038.P2759161993829399082

/-! ## A318038.P13684479279724296409

`gcd(A000038(n), A318045(A001844(n)))`
-/

namespace A318038.P13684479279724296409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A318045 (A001844 n).toNat)

end

end A318038.P13684479279724296409

/-! ## A318038.P7914285212852150773

`lcm(A033999(n), A318045(A001844(n)))`
-/

namespace A318038.P7914285212852150773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A318045 (A001844 n).toNat)

end

end A318038.P7914285212852150773

/-! ## A318038.P12373897216809720455

`or(A000007(n), A318045(A001844(n)))`
-/

namespace A318038.P12373897216809720455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A318045 (A001844 n).toNat)

end

end A318038.P12373897216809720455

/-! ## A318038.P13207729518871948035

`A014963(C(n+5, 3))*A318045(A001844(n))`
-/

namespace A318038.P13207729518871948035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (n + 5) 3) * A318045 (A001844 n).toNat

end

end A318038.P13207729518871948035

/-!
# A318039: Number of nX2 0..1 arrays with every element unequal to 0, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318039, the canonical program `A318039.P7161067264386899341` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318039 has offset 1).

The definition of A318039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318039.P7161067264386899341

`A317890(n+1)+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A318039

/-- `A317890(n+1)+1` -/
def P7161067264386899341.Spec : Prop :=
  ∀ n, P7161067264386899341.a n = A318039 (n + 1)

theorem P7161067264386899341.correct : P7161067264386899341.Spec := by
  intro n
  simp only [A318039, Nat.add_sub_cancel]

end A318039

/-! ## A318039.P4625050593445812281

`A318222(∑[n+1]+2)+1`
-/

namespace A318039.P4625050593445812281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318222 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + 1

end

end A318039.P4625050593445812281

namespace A318039

/-- `A318222(∑[n+1]+2)+1` -/
def P4625050593445812281.Spec : Prop :=
  ∀ n, P4625050593445812281.a n = A318039 (n + 1)

end A318039

/-! ## A318039.P12645257050263584226

`A317896(A133263(n+1))+1`
-/

namespace A318039.P12645257050263584226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (A133263 (n + 1)).toNat + 1

end

end A318039.P12645257050263584226

namespace A318039

/-- `A317896(A133263(n+1))+1` -/
def P12645257050263584226.Spec : Prop :=
  ∀ n, P12645257050263584226.a n = A318039 (n + 1)

end A318039

/-! ## A318039.P7708890158260413211

`A317896(A167487(n)-5)+1`
-/

namespace A318039.P7708890158260413211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (A167487 n - 5).toNat + 1

end

end A318039.P7708890158260413211

namespace A318039

/-- `A317896(A167487(n)-5)+1` -/
def P7708890158260413211.Spec : Prop :=
  ∀ n, P7708890158260413211.a n = A318039 (n + 1)

end A318039

/-! ## A318039.P53181097748039736

`A317896(∑[n+2])+1`
-/

namespace A318039.P53181097748039736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317896 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A318039.P53181097748039736

namespace A318039

/-- `A317896(∑[n+2])+1` -/
def P53181097748039736.Spec : Prop :=
  ∀ n, P53181097748039736.a n = A318039 (n + 1)

end A318039

/-!
# A318040: Number of nX3 0..1 arrays with every element unequal to 0, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318040, there is no canonical definition to state claims against.
-/

/-! ## A318040.P14256710963030779217

`A318045(∑[n+2]+4)`
-/

namespace A318040.P14256710963030779217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318045 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A318040.P14256710963030779217

/-! ## A318040.P10954741265536235895

`A318045(A167614(n+1))%A001552(n)`
-/

namespace A318040.P10954741265536235895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318045 (A167614 (n + 1)).toNat) (A001552 n)

end

end A318040.P10954741265536235895

/-! ## A318040.P13652806166870597599

`gcd(A000038(n), A318045(A167614(n+1)))`
-/

namespace A318040.P13652806166870597599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A318045 (A167614 (n + 1)).toNat)

end

end A318040.P13652806166870597599

/-! ## A318040.P15209856108553100429

`lcm(A033999(n), A318045(A167614(n+1)))`
-/

namespace A318040.P15209856108553100429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A318045 (A167614 (n + 1)).toNat)

end

end A318040.P15209856108553100429

/-! ## A318040.P7889612323029539423

`or(A000007(n), A318045(A167614(n+1)))`
-/

namespace A318040.P7889612323029539423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A318045 (A167614 (n + 1)).toNat)

end

end A318040.P7889612323029539423

/-!
# A318041: Number of nX4 0..1 arrays with every element unequal to 0, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318041, there is no canonical definition to state claims against.
-/

/-! ## A318041.P12720945482926002454

`A318045(A141214(n)+7)`
-/

namespace A318041.P12720945482926002454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318045 (A141214 n + 7).toNat

end

end A318041.P12720945482926002454

/-! ## A318041.P5431564668371048569

`A318045(A052905(n)+9)`
-/

namespace A318041.P5431564668371048569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318045 (A052905 n + 9).toNat

end

end A318041.P5431564668371048569

/-! ## A318041.P4191182881686285847

`A318045(A055999(n)+10)`
-/

namespace A318041.P4191182881686285847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318045 (A055999 n + 10).toNat

end

end A318041.P4191182881686285847

/-! ## A318041.P18008579622113355869

`A318045(A167614(n+2)+1)`
-/

namespace A318041.P18008579622113355869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318045 (A167614 (n + 2) + 1).toNat

end

end A318041.P18008579622113355869

/-! ## A318041.P1101267762503995102

`A318045(Δ[A264443(n)-n²])`
-/

namespace A318041.P1101267762503995102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318045 (f1 (n + 1) - f1 n).toNat

end

end A318041.P1101267762503995102

/-!
# A318042: Number of nX5 0..1 arrays with every element unequal to 0, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318042, there is no canonical definition to state claims against.
-/

/-! ## A318042.P15916655790875433491

`A318045(A056000(n)+15)`
-/

namespace A318042.P15916655790875433491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318045 (A056000 n + 15).toNat

end

end A318042.P15916655790875433491

/-! ## A318042.P5534931508921642816

`A318045(eq[6, A131818(n+1)])`
-/

namespace A318042.P5534931508921642816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318042.P5534931508921642816

/-! ## A318042.P18223122475079792500

`A318045(Δ[A264443(n)])`
-/

namespace A318042.P18223122475079792500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318045 (f1 (n + 1) - f1 n).toNat

end

end A318042.P18223122475079792500

/-! ## A318042.P4418475818059664407

`A318045(A374005(n+1))`
-/

namespace A318042.P4418475818059664407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318045 (A374005 (n + 1)).toNat

end

end A318042.P4418475818059664407

/-! ## A318042.P5463255620468054307

`A318045(A056115(n)+11)`
-/

namespace A318042.P5463255620468054307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318045 (A056115 n + 11).toNat

end

end A318042.P5463255620468054307

/-!
# A318043: Number of nX6 0..1 arrays with every element unequal to 0, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318043, there is no canonical definition to state claims against.
-/

/-! ## A318043.P15681211656369617642

`A318045(eq[7, A131818(n+1)])`
-/

namespace A318043.P15681211656369617642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318043.P15681211656369617642

/-! ## A318043.P17824501251274897842

`A318045(Δ[A023545(n+1)]+10)`
-/

namespace A318043.P17824501251274897842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318045 (f1 (n + 1) - f1 n + 10).toNat

end

end A318043.P17824501251274897842

/-! ## A318043.P11237013481396516513

`A318045(A374007(n+1))`
-/

namespace A318043.P11237013481396516513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318045 (A374007 (n + 1)).toNat

end

end A318043.P11237013481396516513

/-! ## A318043.P1271214220917890518

`A318045(A052905(n+3))`
-/

namespace A318043.P1271214220917890518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318045 (A052905 (n + 3)).toNat

end

end A318043.P1271214220917890518

/-! ## A318043.P14190900526099802267

`A318045(eq[3, A219347(n)])`
-/

namespace A318043.P14190900526099802267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318043.P14190900526099802267

/-!
# A318044: Number of nX7 0..1 arrays with every element unequal to 0, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318044, there is no canonical definition to state claims against.
-/

/-! ## A318044.P15942725373385478588

`A318045(A056119(n)+28)`
-/

namespace A318044.P15942725373385478588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318045 (A056119 n + 28).toNat

end

end A318044.P15942725373385478588

/-! ## A318044.P13066574509854511691

`A318045(eq[8, A131818(n+1)])`
-/

namespace A318044.P13066574509854511691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318044.P13066574509854511691

/-! ## A318044.P1833752001301863826

`A318045(A374008(n+1))`
-/

namespace A318044.P1833752001301863826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318045 (A374008 (n + 1)).toNat

end

end A318044.P1833752001301863826

/-! ## A318044.P3290528189366835439

`A318045(eq[4, A219347(n)])`
-/

namespace A318044.P3290528189366835439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318044.P3290528189366835439

/-! ## A318044.P17404748431058645368

`A318045(eq[6, A193592(n)])`
-/

namespace A318044.P17404748431058645368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318044.P17404748431058645368

/-!
# A318045: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318045, there is no canonical definition to state claims against.
-/

/-! ## A318045.P10270195407881770880

`A358550(A384121(n))+A318222(n+1)`
-/

namespace A318045.P10270195407881770880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358550 (A384121 n).toNat + A318222 (n + 1)

end

end A318045.P10270195407881770880

/-! ## A318045.P12884545032622227567

`A250470(A100862(n)^∑[A151722(n)])`
-/

namespace A318045.P12884545032622227567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (SequenceMachineLib.roundAway ((A100862 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A318045.P12884545032622227567

/-! ## A318045.P2322034398708885592

`gcd(A151722(3*n), A250470(A100862(n)))`
-/

namespace A318045.P2322034398708885592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151722 (3 * n)) (A250470 (A100862 n).toNat)

end

end A318045.P2322034398708885592

/-! ## A318045.P3734597083061499118

`A250470(A100862(n))+A000007(A000043(n+1))`
-/

namespace A318045.P3734597083061499118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (A100862 n).toNat + A000007 (A000043 (n + 1)).toNat

end

end A318045.P3734597083061499118

/-! ## A318045.P4269306337344663728

`A128199(A034801(n))`
-/

namespace A318045.P4269306337344663728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128199 (A034801 n).toNat

end

end A318045.P4269306337344663728

/-!
# A318046: a(n) is the number of initial subtrees (subtrees emanating from the root) of the unlabeled rooted tree with Matula-Goebel number n.

The programs for A318046, there is no canonical definition to state claims against.
-/

/-! ## A318046.P8365089709655756503

`A184160(A198328(n+1))%(n+1)+1`
-/

namespace A318046.P8365089709655756503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184160 (A198328 (n + 1)).toNat) (n + 1 : ℤ) + 1

end

end A318046.P8365089709655756503

/-! ## A318046.P12156838155382097753

`A184160(A198328(n+1))+A057427(n)`
-/

namespace A318046.P12156838155382097753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184160 (A198328 (n + 1)).toNat + A057427 n

end

end A318046.P12156838155382097753

/-! ## A318046.P1227799917486739865

`A184160(A198328(n+1))+1-A000007(n)`
-/

namespace A318046.P1227799917486739865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184160 (A198328 (n + 1)).toNat + (1 - A000007 n)

end

end A318046.P1227799917486739865

/-! ## A318046.P7620365703987302036

`A184160(A198328(n+1))+A001221(A001316(n))`
-/

namespace A318046.P7620365703987302036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184160 (A198328 (n + 1)).toNat + A001221 (A001316 n).toNat

end

end A318046.P7620365703987302036

/-! ## A318046.P1934343261366298378

`A184160(A198328(n+1))+A002828(n²)`
-/

namespace A318046.P1934343261366298378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184160 (A198328 (n + 1)).toNat + A002828 (n ^ 2)

end

end A318046.P1934343261366298378

/-!
# A318047: a(n) = sum of values taken by all parking functions of length n.

The programs for A318047, there is no canonical definition to state claims against.
-/

/-! ## A318047.P1255867588558204786

`(n+1)*A328694(n+1)`
-/

namespace A318047.P1255867588558204786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A328694 (n + 1)

end

end A318047.P1255867588558204786

/-! ## A318047.P6162047045895034841

`A081131(n+2)-A057500(n+2)`
-/

namespace A318047.P6162047045895034841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081131 (n + 2) - A057500 (n + 2)

end

end A318047.P6162047045895034841

/-!
# A318049: Number of first/rest balanced rooted plane trees with n nodes.

The programs for A318049, there is no canonical definition to state claims against.
-/

/-! ## A318049.P15618308501581262211

`A329691(n+1)+A086016(A219727(3*n+2))`
-/

namespace A318049.P15618308501581262211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329691 (n + 1) + A086016 (A219727 (3 * n + 2)).toNat

end

end A318049.P15618308501581262211

/-!
# A318050: Triangle read by rows: T(n,k) is the number of prime knots with n crossings whose unknotting numbers are k.

The programs for A318050, there is no canonical definition to state claims against.
-/

/-! ## A318050.P1985494865853225843

`A102426(n)-A265246(A346052(n))`
-/

namespace A318050.P1985494865853225843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102426 n - A265246 (A346052 n).toNat

end

end A318050.P1985494865853225843

/-! ## A318050.P12189327489044658381

`A083896(or(A000051(n), A339714(n+1)))`
-/

namespace A318050.P12189327489044658381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083896 (Int.lor (A000051 n) (A339714 (n + 1))).toNat

end

end A318050.P12189327489044658381

/-! ## A318050.P4618778250435903623

`A103053(n+1)%A000203(A056538(n+1))`
-/

namespace A318050.P4618778250435903623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103053 (n + 1)) (A000203 (A056538 (n + 1)).toNat)

end

end A318050.P4618778250435903623

/-! ## A318050.P6555209137967214444

`A153010(A153033(n+1))%A153012(n+1)`
-/

namespace A318050.P6555209137967214444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153010 (A153033 (n + 1)).toNat) (A153012 (n + 1))

end

end A318050.P6555209137967214444

/-! ## A318050.P13923744190340973966

`A022838(A062544(n+1))%A029837(n+2)`
-/

namespace A318050.P13923744190340973966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022838 (A062544 (n + 1)).toNat) (A029837 (n + 2))

end

end A318050.P13923744190340973966

/-!
# A318051: Irregular triangle read by rows: T(n,k) is the number of prime knots with n crossings whose signatures are k in absolute value.

The programs for A318051, there is no canonical definition to state claims against.
-/

/-! ## A318051.P12239134146502564394

`A322340(n)%A051700(A022380(n))`
-/

namespace A318051.P12239134146502564394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322340 n) (A051700 (A022380 n).toNat)

end

end A318051.P12239134146502564394

/-! ## A318051.P5290434213027043008

`and(A032741(n), A178103(A301293(n)))`
-/

namespace A318051.P5290434213027043008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032741 n) (A178103 (A301293 n).toNat)

end

end A318051.P5290434213027043008

/-! ## A318051.P4226795811231037701

`A056966(A181018(n+1)+A000034(n))`
-/

namespace A318051.P4226795811231037701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056966 (A181018 (n + 1) + A000034 n).toNat

end

end A318051.P4226795811231037701

/-! ## A318051.P4715523075105626254

`A166127(n+1)%A051700(A022380(n))`
-/

namespace A318051.P4715523075105626254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166127 (n + 1)) (A051700 (A022380 n).toNat)

end

end A318051.P4715523075105626254

/-! ## A318051.P18333457193969174073

`A055273(n)%A157226(A076683(n+1))`
-/

namespace A318051.P18333457193969174073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055273 n) (A157226 (A076683 (n + 1)).toNat)

end

end A318051.P18333457193969174073

/-!
# A318052: Number of prime knots with n crossings whose unknotting numbers are given by their signatures.

The programs for A318052, there is no canonical definition to state claims against.
-/

/-! ## A318052.P11091335363535078460

`A002863(n+1)-A173466(n+1)`
-/

namespace A318052.P11091335363535078460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002863 (n + 1) - A173466 (n + 1)

end

end A318052.P11091335363535078460

/-! ## A318052.P1771713536530796742

`Δ[A116584(abs(1-n)+1)]-A173466(n+1)`
-/

namespace A318052.P1771713536530796742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116584 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A173466 (n + 1)

end

end A318052.P1771713536530796742

/-! ## A318052.P9792976446183297681

`A002864(n+1)+A051763(n+1)-A173466(n+1)`
-/

namespace A318052.P9792976446183297681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002864 (n + 1) + (A051763 (n + 1) - A173466 (n + 1))

end

end A318052.P9792976446183297681

/-! ## A318052.P11538896311718283856

`A052402(n+1)+A052403(n+1)-A173466(n+1)`
-/

namespace A318052.P11538896311718283856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052402 (n + 1) + (A052403 (n + 1) - A173466 (n + 1))

end

end A318052.P11538896311718283856

/-! ## A318052.P16811225669702302747

`A052407(n+1)+A052408(n+1)-A173466(n+1)`
-/

namespace A318052.P16811225669702302747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052407 (n + 1) + (A052408 (n + 1) - A173466 (n + 1))

end

end A318052.P16811225669702302747

/-!
# A318053: a(n) = ceiling(sqrt(2*a(n-1)*a(n-2))), a(1) = a(2) = 1.

The programs for A318053, the canonical program `A318053.P6733279276505114503` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318053 has offset 1).

The definition of A318053 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(sqrt(2*a(n-1)*a(n-2)))` (program `A318053.P6733279276505114503`, by `A318053.P6733279276505114503.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A318053.P6733279276505114503

`ceil(sqrt(2*a(n-1)*a(n-2)))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A318053

/-- `ceil(sqrt(2*a(n-1)*a(n-2)))` -/
def P6733279276505114503.Spec : Prop :=
  ∀ n, P6733279276505114503.a n = A318053 (n + 1)

theorem P6733279276505114503.correct : P6733279276505114503.Spec := by
  intro n
  simp only [A318053, Nat.add_sub_cancel]

end A318053

/-! ## A318053.P3179045737740806460

`A008620(∑[A000196(A017985(n))])`
-/

namespace A318053.P3179045737740806460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A017985 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A318053.P3179045737740806460

namespace A318053

/-- `A008620(∑[A000196(A017985(n))])` -/
def P3179045737740806460.Spec : Prop :=
  ∀ n, P3179045737740806460.a n = A318053 (n + 1)

end A318053

/-! ## A318053.P10610537152148515099

`A008620(∑[A000196(A017986(n))])`
-/

namespace A318053.P10610537152148515099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A017986 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A318053.P10610537152148515099

namespace A318053

/-- `A008620(∑[A000196(A017986(n))])` -/
def P10610537152148515099.Spec : Prop :=
  ∀ n, P10610537152148515099.a n = A318053 (n + 1)

end A318053

/-! ## A318053.P5185279074665837945

`A008620(∑[A000196(A017987(n))])`
-/

namespace A318053.P5185279074665837945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A017987 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A318053.P5185279074665837945

namespace A318053

/-- `A008620(∑[A000196(A017987(n))])` -/
def P5185279074665837945.Spec : Prop :=
  ∀ n, P5185279074665837945.a n = A318053 (n + 1)

end A318053

/-! ## A318053.P8110677440267310126

`A008620(∑[A118759(A017979(n))])`
-/

namespace A318053.P8110677440267310126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A017979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A318053.P8110677440267310126

namespace A318053

/-- `A008620(∑[A118759(A017979(n))])` -/
def P8110677440267310126.Spec : Prop :=
  ∀ n, P8110677440267310126.a n = A318053 (n + 1)

end A318053

/-!
# A318054: a(n) = n*(n + 1)*(n^2 + n + 22)/24.

The programs for A318054, the canonical program `A318054.P2618741877506832120` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318054 has offset 0).

The definition of A318054 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(n²+n+22)/24` (program `A318054.P11878374244078146378`, by `A318054.P11878374244078146378.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A318054.P11878374244078146378

`n*(n+1)*(n²+n+22)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318054.P11878374244078146378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (n ^ 2 + n + 22) : ℚ) / 24

end

end A318054.P11878374244078146378

namespace A318054

/-- `n*(n+1)*(n²+n+22)/24` -/
def P11878374244078146378.Spec : Prop :=
  ∀ n, P11878374244078146378.a n = (A318054 n : ℚ)

theorem P11878374244078146378.correct : P11878374244078146378.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A318054, Nat.add_sub_cancel, A318054.P11878374244078146378.a, A318054.P2618741877506832120.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A318054, Nat.add_sub_cancel, A318054.P11878374244078146378.a, A318054.P2618741877506832120.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A318054

/-! ## A318054.P2618741877506832120

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=7, a(3)=17, a(4)=35`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A318054

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P2618741877506832120.Spec : Prop :=
  ∀ n, P2618741877506832120.a n = A318054 n

theorem P2618741877506832120.correct : P2618741877506832120.Spec := by
  intro n
  simp only [A318054]

end A318054

/-! ## A318054.P8244806256361946186

`∑[∑[C(n, 2)+2]-2]`
-/

namespace A318054.P8244806256361946186
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318054.P8244806256361946186

namespace A318054

/-- `∑[∑[C(n, 2)+2]-2]` -/
def P8244806256361946186.Spec : Prop :=
  ∀ n, P8244806256361946186.a n = A318054 n

end A318054

/-! ## A318054.P3080627232514967996

`∑[∑[C(n, 2)]+2*n]`
-/

namespace A318054.P3080627232514967996
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318054.P3080627232514967996

namespace A318054

/-- `∑[∑[C(n, 2)]+2*n]` -/
def P3080627232514967996.Spec : Prop :=
  ∀ n, (P3080627232514967996.a n : ℤ) = A318054 n

end A318054

/-! ## A318054.P17868306353522589437

`∑[n²]+C(n, 4)+n`
-/

namespace A318054.P17868306353522589437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 4 + n

end

end A318054.P17868306353522589437

namespace A318054

/-- `∑[n²]+C(n, 4)+n` -/
def P17868306353522589437.Spec : Prop :=
  ∀ n, (P17868306353522589437.a n : ℤ) = A318054 n

end A318054

/-! ## A318054.P339698445087282748

`∑[∑[C(n, 2)]+n+n]`
-/

namespace A318054.P339698445087282748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318054.P339698445087282748

namespace A318054

/-- `∑[∑[C(n, 2)]+n+n]` -/
def P339698445087282748.Spec : Prop :=
  ∀ n, (P339698445087282748.a n : ℤ) = A318054 n

end A318054

/-! ## A318054.P10179001232853910637

`C(n+2, 4)+n²+n`
-/

namespace A318054.P10179001232853910637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 4 + (n ^ 2 + n)

end

end A318054.P10179001232853910637

namespace A318054

/-- `C(n+2, 4)+n²+n` -/
def P10179001232853910637.Spec : Prop :=
  ∀ n, (P10179001232853910637.a n : ℤ) = A318054 n

end A318054

/-! ## A318054.P13232288159558041665

`∑[∑[a(n-1)-1+n]]` with `a(0)=0, a(1)=2`
-/

namespace A318054.P13232288159558041665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  f2 (n - 1) - 1 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318054.P13232288159558041665

namespace A318054

/-- `∑[∑[a(n-1)-1+n]]` -/
def P13232288159558041665.Spec : Prop :=
  ∀ n, P13232288159558041665.a n = A318054 n

end A318054

/-! ## A318054.P17409509133537068378

`∑[∑[n-(1-a(n-1))]]` with `a(0)=0, a(1)=2`
-/

namespace A318054.P17409509133537068378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  (n : ℤ) - (1 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318054.P17409509133537068378

namespace A318054

/-- `∑[∑[n-(1-a(n-1))]]` -/
def P17409509133537068378.Spec : Prop :=
  ∀ n, P17409509133537068378.a n = A318054 n

end A318054

/-! ## A318054.P16907034803599105727

`Δ[C(n+2, 5)]+n*(n+1)`
-/

namespace A318054.P16907034803599105727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n * (n + 1) : ℤ)

end

end A318054.P16907034803599105727

namespace A318054

/-- `Δ[C(n+2, 5)]+n*(n+1)` -/
def P16907034803599105727.Spec : Prop :=
  ∀ n, P16907034803599105727.a n = A318054 n

end A318054

/-! ## A318054.P17471529292377738827

`A227161(n)-1`
-/

namespace A318054.P17471529292377738827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227161 n - 1

end

end A318054.P17471529292377738827

namespace A318054

/-- `A227161(n)-1` -/
def P17471529292377738827.Spec : Prop :=
  ∀ n, P17471529292377738827.a n = A318054 n

end A318054

/-! ## A318054.P15332710873519409559

`∑[A004006(n)+n]`
-/

namespace A318054.P15332710873519409559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318054.P15332710873519409559

namespace A318054

/-- `∑[A004006(n)+n]` -/
def P15332710873519409559.Spec : Prop :=
  ∀ n, P15332710873519409559.a n = A318054 n

end A318054

/-! ## A318054.P8585309246021519318

`∑[∑[A238531(n)]]-1`
-/

namespace A318054.P8585309246021519318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A318054.P8585309246021519318

namespace A318054

/-- `∑[∑[A238531(n)]]-1` -/
def P8585309246021519318.Spec : Prop :=
  ∀ n, P8585309246021519318.a n = A318054 n

end A318054

/-! ## A318054.P14025406288028590631

`A014626(n)+∑[n²]`
-/

namespace A318054.P14025406288028590631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014626 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A318054.P14025406288028590631

namespace A318054

/-- `A014626(n)+∑[n²]` -/
def P14025406288028590631.Spec : Prop :=
  ∀ n, P14025406288028590631.a n = A318054 n

end A318054

/-! ## A318054.P16381069459179901969

`∑[A050407(n)+n²]`
-/

namespace A318054.P16381069459179901969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318054.P16381069459179901969

namespace A318054

/-- `∑[A050407(n)+n²]` -/
def P16381069459179901969.Spec : Prop :=
  ∀ n, P16381069459179901969.a n = A318054 n

end A318054

/-! ## A318054.P4715162578395713004

`∑[A180415(n+1)-1]`
-/

namespace A318054.P4715162578395713004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180415 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318054.P4715162578395713004

namespace A318054

/-- `∑[A180415(n+1)-1]` -/
def P4715162578395713004.Spec : Prop :=
  ∀ n, P4715162578395713004.a n = A318054 n

end A318054

/-! ## A318054.P5510689338433454525

`n²+A101338(n)-1`
-/

namespace A318054.P5510689338433454525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A101338 n - 1)

end

end A318054.P5510689338433454525

namespace A318054

/-- `n²+A101338(n)-1` -/
def P5510689338433454525.Spec : Prop :=
  ∀ n, P5510689338433454525.a n = A318054 n

end A318054

/-! ## A318054.P7363154046557129827

`∑[A283551(n)+n+1]`
-/

namespace A318054.P7363154046557129827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283551 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318054.P7363154046557129827

namespace A318054

/-- `∑[A283551(n)+n+1]` -/
def P7363154046557129827.Spec : Prop :=
  ∀ n, P7363154046557129827.a n = A318054 n

end A318054

/-! ## A318054.P11863732769062463928

`A055795(n+1)+∑[∑[n]]`
-/

namespace A318054.P11863732769062463928
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055795 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A318054.P11863732769062463928

namespace A318054

/-- `A055795(n+1)+∑[∑[n]]` -/
def P11863732769062463928.Spec : Prop :=
  ∀ n, P11863732769062463928.a n = A318054 n

end A318054

/-! ## A318054.P6184670756489916018

`A108766(n)+A058923(n)`
-/

namespace A318054.P6184670756489916018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108766 n + A058923 n

end

end A318054.P6184670756489916018

namespace A318054

/-- `A108766(n)+A058923(n)` -/
def P6184670756489916018.Spec : Prop :=
  ∀ n, P6184670756489916018.a n = A318054 n

end A318054

/-!
# A318056: Let b(1) = b(2) = 1; for n >= 3, b(n) = n - b(t(n)) - b(n-t(n-1)) where t = A004001. a(n) = 2*b(n) - n.

The programs for A318056, there is no canonical definition to state claims against.
-/

/-! ## A318056.P11603237372913784469

`A088568(n+1)-A258764(A087232(A034338(n+1)))`
-/

namespace A318056.P11603237372913784469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088568 (n + 1) - A258764 (A087232 (A034338 (n + 1)).toNat).toNat

end

end A318056.P11603237372913784469

/-!
# A318058: a(n) is the number of decimal places to which the n-th convergent of the continued fraction expansion of the golden section matches the correct value.

The programs for A318058, there is no canonical definition to state claims against.
-/

/-! ## A318058.P11658419576299644015

`A369715(n+1)-1`
-/

namespace A318058.P11658419576299644015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369715 (n + 1) - 1

end

end A318058.P11658419576299644015

/-! ## A318058.P7336340553159231069

`A023443(A369715(n+1))`
-/

namespace A318058.P7336340553159231069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A369715 (n + 1)).toNat

end

end A318058.P7336340553159231069

/-! ## A318058.P14505803241649743169

`A378218(A050716(n+1))+A369715(n+1)`
-/

namespace A318058.P14505803241649743169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378218 (A050716 (n + 1)).toNat + A369715 (n + 1)

end

end A318058.P14505803241649743169

/-! ## A318058.P5882420244440718476

`A378218(A099389(n+1))+A369715(n+1)`
-/

namespace A318058.P5882420244440718476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378218 (A099389 (n + 1)).toNat + A369715 (n + 1)

end

end A318058.P5882420244440718476

/-! ## A318058.P1421182064348243690

`A378218(A004273(n+3))+A369715(n+1)`
-/

namespace A318058.P1421182064348243690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378218 (A004273 (n + 3)).toNat + A369715 (n + 1)

end

end A318058.P1421182064348243690

/-! ## A318058.P4527304244860380513

`A378218(A008578(n+3))+A369715(n+1)`
-/

namespace A318058.P4527304244860380513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378218 (A008578 (n + 3)).toNat + A369715 (n + 1)

end

end A318058.P4527304244860380513

/-! ## A318058.P6272070969808537284

`A378218(A080165(n+3))+A369715(n+1)`
-/

namespace A318058.P6272070969808537284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378218 (A080165 (n + 3)).toNat + A369715 (n + 1)

end

end A318058.P6272070969808537284

/-!
# A318059: a(n) is the numerator of sigma(sigma(n))/n.

The programs for A318059, the canonical program `A318059.P16582430127559491716` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318059 has offset 1).

The definition of A318059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318059.P16582430127559491716

`lcm(n+1, A051027(n+1))/(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A318059

/-- `lcm(n+1, A051027(n+1))/(n+1)` -/
def P16582430127559491716.Spec : Prop :=
  ∀ n, P16582430127559491716.a n = (A318059 (n + 1) : ℚ)

end A318059

/-! ## A318059.P18172561500494791593

`∑[A111408(n)]/A353751(n+1)`
-/

namespace A318059.P18172561500494791593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111408 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A353751 (n + 1) : ℚ)

end

end A318059.P18172561500494791593

namespace A318059

/-- `∑[A111408(n)]/A353751(n+1)` -/
def P18172561500494791593.Spec : Prop :=
  ∀ n, P18172561500494791593.a n = (A318059 (n + 1) : ℚ)

end A318059

/-! ## A318059.P8020531492002999375

`A051027(n+1)/A353751(n+1)`
-/

namespace A318059.P8020531492002999375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051027 (n + 1) : ℚ) / (A353751 (n + 1) : ℚ)

end

end A318059.P8020531492002999375

namespace A318059

/-- `A051027(n+1)/A353751(n+1)` -/
def P8020531492002999375.Spec : Prop :=
  ∀ n, P8020531492002999375.a n = (A318059 (n + 1) : ℚ)

end A318059

/-! ## A318059.P3964209345777659606

`A051027(n+1)/(n+1)*A318060(n+1)`
-/

namespace A318059.P3964209345777659606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051027 (n + 1) : ℚ) / (n + 1 : ℚ) * (A318060 (n + 1) : ℚ)

end

end A318059.P3964209345777659606

namespace A318059

/-- `A051027(n+1)/(n+1)*A318060(n+1)` -/
def P3964209345777659606.Spec : Prop :=
  ∀ n, P3964209345777659606.a n = (A318059 (n + 1) : ℚ)

end A318059

/-! ## A318059.P4125857775300070525

`A000203(A000203(n+1))/A353751(n+1)`
-/

namespace A318059.P4125857775300070525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A000203 (n + 1)).toNat : ℚ) / (A353751 (n + 1) : ℚ)

end

end A318059.P4125857775300070525

namespace A318059

/-- `A000203(A000203(n+1))/A353751(n+1)` -/
def P4125857775300070525.Spec : Prop :=
  ∀ n, P4125857775300070525.a n = (A318059 (n + 1) : ℚ)

end A318059

/-! ## A318059.P13605373995711927889

`A051027(n+1)/gcd(A051027(n+1), A131738(n))`
-/

namespace A318059.P13605373995711927889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051027 (n + 1) : ℚ) / (Int.gcd (A051027 (n + 1)) (A131738 n) : ℚ)

end

end A318059.P13605373995711927889

namespace A318059

/-- `A051027(n+1)/gcd(A051027(n+1), A131738(n))` -/
def P13605373995711927889.Spec : Prop :=
  ∀ n, P13605373995711927889.a n = (A318059 (n + 1) : ℚ)

end A318059

/-! ## A318059.P9636098524805646537

`A000203(A000203(n+1))/(n+1)*A318060(n+1)`
-/

namespace A318059.P9636098524805646537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A000203 (n + 1)).toNat : ℚ) / (n + 1 : ℚ) * (A318060 (n + 1) : ℚ)

end

end A318059.P9636098524805646537

namespace A318059

/-- `A000203(A000203(n+1))/(n+1)*A318060(n+1)` -/
def P9636098524805646537.Spec : Prop :=
  ∀ n, P9636098524805646537.a n = (A318059 (n + 1) : ℚ)

end A318059

/-!
# A318060: a(n) is the denominator of sigma(sigma(n))/n.

The programs for A318060, the canonical program `A318060.P6031681000613286800` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318060 has offset 1).

The definition of A318060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318060.P14756971310692432103

`(n+1)/A353751(n+1)`
-/

namespace A318060.P14756971310692432103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A353751 (n + 1) : ℚ)

end

end A318060.P14756971310692432103

namespace A318060

/-- `(n+1)/A353751(n+1)` -/
def P14756971310692432103.Spec : Prop :=
  ∀ n, P14756971310692432103.a n = (A318060 (n + 1) : ℚ)

end A318060

/-! ## A318060.P6031681000613286800

`(n+1)/gcd(n+1, ∑[A111408(n)])`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A318060

/-- `(n+1)/gcd(n+1, ∑[A111408(n)])` -/
def P6031681000613286800.Spec : Prop :=
  ∀ n, P6031681000613286800.a n = (A318060 (n + 1) : ℚ)

end A318060

/-! ## A318060.P15689091540984006294

`(n+1)/gcd(A051027(n+1), A131738(n))`
-/

namespace A318060.P15689091540984006294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A051027 (n + 1)) (A131738 n) : ℚ)

end

end A318060.P15689091540984006294

namespace A318060

/-- `(n+1)/gcd(A051027(n+1), A131738(n))` -/
def P15689091540984006294.Spec : Prop :=
  ∀ n, P15689091540984006294.a n = (A318060 (n + 1) : ℚ)

end A318060

/-! ## A318060.P14054192277605119602

`(n+1)/A051027(n+1)*A318059(n+1)`
-/

namespace A318060.P14054192277605119602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A051027 (n + 1) : ℚ) * (A318059 (n + 1) : ℚ)

end

end A318060.P14054192277605119602

namespace A318060

/-- `(n+1)/A051027(n+1)*A318059(n+1)` -/
def P14054192277605119602.Spec : Prop :=
  ∀ n, P14054192277605119602.a n = (A318060 (n + 1) : ℚ)

end A318060

/-! ## A318060.P1313712953693917832

`(n+1)/A000203(A000203(n+1))*A318059(n+1)`
-/

namespace A318060.P1313712953693917832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000203 (A000203 (n + 1)).toNat : ℚ) * (A318059 (n + 1) : ℚ)

end

end A318060.P1313712953693917832

namespace A318060

/-- `(n+1)/A000203(A000203(n+1))*A318059(n+1)` -/
def P1313712953693917832.Spec : Prop :=
  ∀ n, P1313712953693917832.a n = (A318060 (n + 1) : ℚ)

end A318060

/-!
# A318061: Number of nXn 0..1 arrays with every element unequal to 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318061, there is no canonical definition to state claims against.
-/

/-! ## A318061.P4061116774866443908

`A318068(∑[4*n]+1)`
-/

namespace A318061.P4061116774866443908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318068 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A318061.P4061116774866443908

/-! ## A318061.P4977682931271346271

`A318068(A001844(n))+A025437(n)`
-/

namespace A318061.P4977682931271346271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318068 (A001844 n).toNat + A025437 n

end

end A318061.P4977682931271346271

/-! ## A318061.P18116475476714930490

`A318068(A001844(n))+A185238(n)`
-/

namespace A318061.P18116475476714930490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318068 (A001844 n).toNat + A185238 n

end

end A318061.P18116475476714930490

/-! ## A318061.P10578169189082782442

`A318068(A001844(n))*A347621(n)`
-/

namespace A318061.P10578169189082782442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318068 (A001844 n).toNat * A347621 n

end

end A318061.P10578169189082782442

/-! ## A318061.P6374522421493391785

`lcm(A033999(n), A318068(A001844(n)))`
-/

namespace A318061.P6374522421493391785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A318068 (A001844 n).toNat)

end

end A318061.P6374522421493391785

/-!
# A318062: Number of nX2 0..1 arrays with every element unequal to 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318062, the canonical program `A318062.P5353415626621374821` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318062 has offset 1).

The definition of A318062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318062.P17337927740775466153

`ogf((1+2x-x^3)/(1-3x-3x^2+x^3+x^4))`
-/

namespace A318062.P17337927740775466153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 0, -1] [1, -3, -3, 1, 1] n

end

end A318062.P17337927740775466153

namespace A318062

/-- `ogf((1+2x-x^3)/(1-3x-3x^2+x^3+x^4))` -/
def P17337927740775466153.Spec : Prop :=
  ∀ n, P17337927740775466153.a n = A318062 (n + 1)

end A318062

/-! ## A318062.P5353415626621374821

`3*a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=18, a(3)=67`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A318062

/-- `3*a(n-1)+3*a(n-2)-a(n-3)-a(n-4)` -/
def P5353415626621374821.Spec : Prop :=
  ∀ n, P5353415626621374821.a n = A318062 (n + 1)

theorem P5353415626621374821.correct : P5353415626621374821.Spec := by
  intro n
  simp only [A318062, Nat.add_sub_cancel]

end A318062

/-! ## A318062.P2047862291800886273

`A251704(2*n+3)`
-/

namespace A318062.P2047862291800886273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251704 (2 * n + 3)

end

end A318062.P2047862291800886273

namespace A318062

/-- `A251704(2*n+3)` -/
def P2047862291800886273.Spec : Prop :=
  ∀ n, P2047862291800886273.a n = A318062 (n + 1)

end A318062

/-! ## A318062.P10833729714416679530

`A001630(2*n+3)-a(n-1)` with `a(0)=1`
-/

namespace A318062.P10833729714416679530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001630 (2 * n + 3) - a (n - 1)

end

end A318062.P10833729714416679530

namespace A318062

/-- `A001630(2*n+3)-a(n-1)` -/
def P10833729714416679530.Spec : Prop :=
  ∀ n, P10833729714416679530.a n = A318062 (n + 1)

end A318062

/-! ## A318062.P14476499605825540039

`A251655(2*n+3)-A001630(2*n)`
-/

namespace A318062.P14476499605825540039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251655 (2 * n + 3) - A001630 (2 * n)

end

end A318062.P14476499605825540039

namespace A318062

/-- `A251655(2*n+3)-A001630(2*n)` -/
def P14476499605825540039.Spec : Prop :=
  ∀ n, P14476499605825540039.a n = A318062 (n + 1)

end A318062

/-! ## A318062.P10100884690980868497

`A001630(2*n+1)+A001630(2*(n+1))`
-/

namespace A318062.P10100884690980868497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001630 (2 * n + 1) + A001630 (2 * (n + 1))

end

end A318062.P10100884690980868497

namespace A318062

/-- `A001630(2*n+1)+A001630(2*(n+1))` -/
def P10100884690980868497.Spec : Prop :=
  ∀ n, P10100884690980868497.a n = A318062 (n + 1)

end A318062

/-! ## A318062.P13640529926572273657

`A000288(2*n+3)-A001631(2*n+3)`
-/

namespace A318062.P13640529926572273657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 (2 * n + 3) - A001631 (2 * n + 3)

end

end A318062.P13640529926572273657

namespace A318062

/-- `A000288(2*n+3)-A001631(2*n+3)` -/
def P13640529926572273657.Spec : Prop :=
  ∀ n, P13640529926572273657.a n = A318062 (n + 1)

end A318062

/-! ## A318062.P1417538928741269036

`A000078(2*n+5)-Δ[A000078(2*(n+1))]`
-/

namespace A318062.P1417538928741269036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (2 * n + 5) - (f1 (n + 1) - f1 n)

end

end A318062.P1417538928741269036

namespace A318062

/-- `A000078(2*n+5)-Δ[A000078(2*(n+1))]` -/
def P1417538928741269036.Spec : Prop :=
  ∀ n, P1417538928741269036.a n = A318062 (n + 1)

end A318062

/-! ## A318062.P2179311369891333950

`A100532(2*(n+1))-2*A000288(2*n+1)`
-/

namespace A318062.P2179311369891333950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100532 (2 * (n + 1)) - 2 * A000288 (2 * n + 1)

end

end A318062.P2179311369891333950

namespace A318062

/-- `A100532(2*(n+1))-2*A000288(2*n+1)` -/
def P2179311369891333950.Spec : Prop :=
  ∀ n, P2179311369891333950.a n = A318062 (n + 1)

end A318062

/-!
# A318063: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318063, there is no canonical definition to state claims against.
-/

/-! ## A318063.P6082861594883516871

`A318068(∑[n+2]+4)`
-/

namespace A318063.P6082861594883516871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318068 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A318063.P6082861594883516871

/-! ## A318063.P17321684659871187125

`A318068(A167614(n+1))^A178334(n)`
-/

namespace A318063.P17321684659871187125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318068 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A318063.P17321684659871187125

/-! ## A318063.P11305400789571666413

`A318068(A167614(n+1))%A001554(n)`
-/

namespace A318063.P11305400789571666413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318068 (A167614 (n + 1)).toNat) (A001554 n)

end

end A318063.P11305400789571666413

/-! ## A318063.P4801250248320936007

`gcd(A000038(n), A318068(A167614(n+1)))`
-/

namespace A318063.P4801250248320936007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A318068 (A167614 (n + 1)).toNat)

end

end A318063.P4801250248320936007

/-! ## A318063.P5989437543909324232

`lcm(A033999(n), A318068(A167614(n+1)))`
-/

namespace A318063.P5989437543909324232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A318068 (A167614 (n + 1)).toNat)

end

end A318063.P5989437543909324232

/-!
# A318064: Number of nX4 0..1 arrays with every element unequal to 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318064, there is no canonical definition to state claims against.
-/

/-! ## A318064.P11065437331787204442

`A318068(A141214(n)+7)`
-/

namespace A318064.P11065437331787204442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318068 (A141214 n + 7).toNat

end

end A318064.P11065437331787204442

/-! ## A318064.P7463291524488014675

`A318068(A052905(n)+9)`
-/

namespace A318064.P7463291524488014675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318068 (A052905 n + 9).toNat

end

end A318064.P7463291524488014675

/-! ## A318064.P7276739057248602690

`A318068(A055999(n)+10)`
-/

namespace A318064.P7276739057248602690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318068 (A055999 n + 10).toNat

end

end A318064.P7276739057248602690

/-! ## A318064.P9846997073919866058

`A318068(A167614(n+2)+1)`
-/

namespace A318064.P9846997073919866058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318068 (A167614 (n + 2) + 1).toNat

end

end A318064.P9846997073919866058

/-! ## A318064.P2570735466411859588

`A318068(Δ[A264443(n)-n²])`
-/

namespace A318064.P2570735466411859588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318068 (f1 (n + 1) - f1 n).toNat

end

end A318064.P2570735466411859588

/-!
# A318065: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318065, there is no canonical definition to state claims against.
-/

/-! ## A318065.P10737946503269879318

`A318068(A167499(n+3))`
-/

namespace A318065.P10737946503269879318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318068 (A167499 (n + 3)).toNat

end

end A318065.P10737946503269879318

/-! ## A318065.P15061256489965115356

`A318068(eq[6, A131818(n+1)])`
-/

namespace A318065.P15061256489965115356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318068 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318065.P15061256489965115356

/-! ## A318065.P10187090310632746906

`A318068(Δ[A264443(n)])`
-/

namespace A318065.P10187090310632746906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318068 (f1 (n + 1) - f1 n).toNat

end

end A318065.P10187090310632746906

/-! ## A318065.P15239198435441496347

`A318068(A374005(n+1))`
-/

namespace A318065.P15239198435441496347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318068 (A374005 (n + 1)).toNat

end

end A318065.P15239198435441496347

/-! ## A318065.P9030063417630339223

`A318068(A046691(n+3))`
-/

namespace A318065.P9030063417630339223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318068 (A046691 (n + 3)).toNat

end

end A318065.P9030063417630339223

/-!
# A318066: Number of nX6 0..1 arrays with every element unequal to 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318066, there is no canonical definition to state claims against.
-/

/-! ## A318066.P5146105758788187673

`A318068(eq[7, A131818(n+1)])`
-/

namespace A318066.P5146105758788187673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318068 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318066.P5146105758788187673

/-! ## A318066.P16092466846323463445

`A318068(A374007(n+1))`
-/

namespace A318066.P16092466846323463445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318068 (A374007 (n + 1)).toNat

end

end A318066.P16092466846323463445

/-! ## A318066.P7759091629818892471

`A318068(eq[3, A219347(n)])`
-/

namespace A318066.P7759091629818892471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318068 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318066.P7759091629818892471

/-! ## A318066.P8377054831107450073

`A318068(eq[5, A193592(n)])`
-/

namespace A318066.P8377054831107450073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318068 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318066.P8377054831107450073

/-! ## A318066.P12518045645653046429

`A318068(eq[7, A049286(n+1)])`
-/

namespace A318066.P12518045645653046429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318068 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318066.P12518045645653046429

/-!
# A318067: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318067, there is no canonical definition to state claims against.
-/

/-! ## A318067.P2065590679852466381

`A318068(A000217(n+6)+7)`
-/

namespace A318067.P2065590679852466381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318068 (A000217 (n + 6) + 7).toNat

end

end A318067.P2065590679852466381

/-! ## A318067.P7605756628349185832

`A318068(A027379(n+4)+10)`
-/

namespace A318067.P7605756628349185832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318068 (A027379 (n + 4) + 10).toNat

end

end A318067.P7605756628349185832

/-! ## A318067.P4531609474266280631

`A318068(eq[8, A131818(n+1)])`
-/

namespace A318067.P4531609474266280631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318068 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318067.P4531609474266280631

/-! ## A318067.P1042574672724989211

`A318068(A374008(n+1))`
-/

namespace A318067.P1042574672724989211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318068 (A374008 (n + 1)).toNat

end

end A318067.P1042574672724989211

/-! ## A318067.P6388741635435855697

`A318068(A055999(n+4))`
-/

namespace A318067.P6388741635435855697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318068 (A055999 (n + 4)).toNat

end

end A318067.P6388741635435855697

/-!
# A318068: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318068, there is no canonical definition to state claims against.
-/

/-! ## A318068.P7988338029119402175

`or(A001221(A049614(n)), A298280(n+1))`
-/

namespace A318068.P7988338029119402175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A049614 n).toNat) (A298280 (n + 1))

end

end A318068.P7988338029119402175

/-! ## A318068.P17444524419175070007

`A348528(A298337(n+1))+A298337(n+1)`
-/

namespace A318068.P17444524419175070007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348528 (A298337 (n + 1)).toNat + A298337 (n + 1)

end

end A318068.P17444524419175070007

/-!
# A318069: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318069, there is no canonical definition to state claims against.
-/

/-! ## A318069.P2651518249556069130

`A318075(∑[4*n]+1)`
-/

namespace A318069.P2651518249556069130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A318069.P2651518249556069130

/-! ## A318069.P5805473295272656162

`record[gcd(A112467(n), A318075(n+1))]`
-/

namespace A318069.P5805473295272656162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112467 n) (A318075 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318069.P5805473295272656162

/-! ## A318069.P11702101440016128315

`record[and(A185917(n+1), A318075(n+1))]`
-/

namespace A318069.P11702101440016128315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A318075 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318069.P11702101440016128315

/-! ## A318069.P1237837836944038836

`A318075(A001844(n))+A011731(n)`
-/

namespace A318069.P1237837836944038836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (A001844 n).toNat + A011731 n

end

end A318069.P1237837836944038836

/-! ## A318069.P15668260868469409416

`A304042(n)*A318075(A001844(n))`
-/

namespace A318069.P15668260868469409416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 n * A318075 (A001844 n).toNat

end

end A318069.P15668260868469409416

/-!
# A318070: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318070, there is no canonical definition to state claims against.
-/

/-! ## A318070.P7382334165516232078

`A318075(∑[n+2]+4)`
-/

namespace A318070.P7382334165516232078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A318070.P7382334165516232078

/-! ## A318070.P3301588883186701379

`A318075(A167614(n+1))%A346817(n)`
-/

namespace A318070.P3301588883186701379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318075 (A167614 (n + 1)).toNat) (A346817 n)

end

end A318070.P3301588883186701379

/-! ## A318070.P15629851862565403310

`lcm(A057077(n), A318075(A167614(n+1)))`
-/

namespace A318070.P15629851862565403310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A318075 (A167614 (n + 1)).toNat)

end

end A318070.P15629851862565403310

/-! ## A318070.P11692992836908756856

`A318075(A034856(n+2))%A254364(n)`
-/

namespace A318070.P11692992836908756856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318075 (A034856 (n + 2)).toNat) (A254364 n)

end

end A318070.P11692992836908756856

/-! ## A318070.P5375987298927409624

`A064284(n+1)*A318075(A034856(n+2))`
-/

namespace A318070.P5375987298927409624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064284 (n + 1) * A318075 (A034856 (n + 2)).toNat

end

end A318070.P5375987298927409624

/-!
# A318071: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318071, there is no canonical definition to state claims against.
-/

/-! ## A318071.P3506951290670635608

`A318075(A374004(n+1))`
-/

namespace A318071.P3506951290670635608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (A374004 (n + 1)).toNat

end

end A318071.P3506951290670635608

/-! ## A318071.P7098079020244090044

`A318075(A167614(n+2)+1)`
-/

namespace A318071.P7098079020244090044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (A167614 (n + 2) + 1).toNat

end

end A318071.P7098079020244090044

/-! ## A318071.P2802059620871009949

`A318075(A167499(n+2)-1)`
-/

namespace A318071.P2802059620871009949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (A167499 (n + 2) - 1).toNat

end

end A318071.P2802059620871009949

/-! ## A318071.P16015402893676011276

`A318075(A027379(n+1)+7)`
-/

namespace A318071.P16015402893676011276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (A027379 (n + 1) + 7).toNat

end

end A318071.P16015402893676011276

/-! ## A318071.P3688560268789111057

`A318075(A046691(n+1)+8)`
-/

namespace A318071.P3688560268789111057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (A046691 (n + 1) + 8).toNat

end

end A318071.P3688560268789111057

/-!
# A318072: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318072, there is no canonical definition to state claims against.
-/

/-! ## A318072.P16012689301108249396

`A318075(A374005(n+1))`
-/

namespace A318072.P16012689301108249396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (A374005 (n + 1)).toNat

end

end A318072.P16012689301108249396

/-! ## A318072.P5196763667380664360

`A318075(A167499(n+3))`
-/

namespace A318072.P5196763667380664360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (A167499 (n + 3)).toNat

end

end A318072.P5196763667380664360

/-! ## A318072.P10761754553721082694

`A318075(A155212(n)+13)`
-/

namespace A318072.P10761754553721082694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (A155212 n + 13).toNat

end

end A318072.P10761754553721082694

/-! ## A318072.P6090607853318017510

`A318075(A056000(n)+15)`
-/

namespace A318072.P6090607853318017510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (A056000 n + 15).toNat

end

end A318072.P6090607853318017510

/-! ## A318072.P2712957387549002321

`A318075(A000124(n+4)+4)`
-/

namespace A318072.P2712957387549002321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (A000124 (n + 4) + 4).toNat

end

end A318072.P2712957387549002321

/-!
# A318073: Number of n X 6 0..1 arrays with every element unequal to 0, 1, 2 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318073, there is no canonical definition to state claims against.
-/

/-! ## A318073.P4983205634746662405

`A318075(A374007(n+1))`
-/

namespace A318073.P4983205634746662405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (A374007 (n + 1)).toNat

end

end A318073.P4983205634746662405

/-! ## A318073.P7210676391532591851

`A318075(A000217(n+5)+6)`
-/

namespace A318073.P7210676391532591851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (A000217 (n + 5) + 6).toNat

end

end A318073.P7210676391532591851

/-! ## A318073.P821036951713375217

`A318075(A161680(n+6)+6)`
-/

namespace A318073.P821036951713375217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (A161680 (n + 6) + 6).toNat

end

end A318073.P821036951713375217

/-! ## A318073.P5876461012825560715

`A318075(A167499(A020705(n))+1)`
-/

namespace A318073.P5876461012825560715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (A167499 (A020705 n).toNat + 1).toNat

end

end A318073.P5876461012825560715

/-! ## A318073.P15390994754212818504

`A318075(A000124(n+7)-7-A005408(n))`
-/

namespace A318073.P15390994754212818504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (A000124 (n + 7) - 7 - A005408 n).toNat

end

end A318073.P15390994754212818504

/-!
# A318074: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318074, there is no canonical definition to state claims against.
-/

/-! ## A318074.P446009254799342893

`A318075(A374008(n+1))`
-/

namespace A318074.P446009254799342893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (A374008 (n + 1)).toNat

end

end A318074.P446009254799342893

/-! ## A318074.P8007943571191892449

`A318075(A000096(n+5)+8)`
-/

namespace A318074.P8007943571191892449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (A000096 (n + 5) + 8).toNat

end

end A318074.P8007943571191892449

/-! ## A318074.P1826190509654318991

`A318075(A000217(n+6)+7)`
-/

namespace A318074.P1826190509654318991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (A000217 (n + 6) + 7).toNat

end

end A318074.P1826190509654318991

/-! ## A318074.P6093768484987491541

`A318075(A161680(n+7)+7)`
-/

namespace A318074.P6093768484987491541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (A161680 (n + 7) + 7).toNat

end

end A318074.P6093768484987491541

/-! ## A318074.P16213047142701404034

`A318075(A055999(n+4))`
-/

namespace A318074.P16213047142701404034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (A055999 (n + 4)).toNat

end

end A318074.P16213047142701404034

/-!
# A318075: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318075, there is no canonical definition to state claims against.
-/

/-! ## A318075.P6006873046987539961

`A317764(n+1)+A057498(A059922(n))`
-/

namespace A318075.P6006873046987539961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317764 (n + 1) + A057498 (A059922 n).toNat

end

end A318075.P6006873046987539961

/-! ## A318075.P12032278307244850247

`A317764(n+1)+A185044(A099608(n))`
-/

namespace A318075.P12032278307244850247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317764 (n + 1) + A185044 (A099608 n).toNat

end

end A318075.P12032278307244850247

/-! ## A318075.P14150711355429294690

`A317764(n+1)+A174875(A168288(n))`
-/

namespace A318075.P14150711355429294690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317764 (n + 1) + A174875 (A168288 n).toNat

end

end A318075.P14150711355429294690

/-! ## A318075.P13308617848639412481

`A317764(n+1)+A282530(A314617(n))`
-/

namespace A318075.P13308617848639412481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317764 (n + 1) + A282530 (A314617 n).toNat

end

end A318075.P13308617848639412481

/-! ## A318075.P3205565103621246049

`A318343(n+1)-A057498(A059922(n))`
-/

namespace A318075.P3205565103621246049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318343 (n + 1) - A057498 (A059922 n).toNat

end

end A318075.P3205565103621246049

/-!
# A318076: Number of nXn 0..1 arrays with every element unequal to 0, 1, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318076, there is no canonical definition to state claims against.
-/

/-! ## A318076.P5416285562289880261

`A318082(∑[4*n]+1)`
-/

namespace A318076.P5416285562289880261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A318076.P5416285562289880261

/-! ## A318076.P17486380053801475257

`record[A318082(Δ[A235355(n)])]`
-/

namespace A318076.P17486380053801475257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318076.P17486380053801475257

/-! ## A318076.P15435415332421505078

`A318082(A001844(n))+char[18]`
-/

namespace A318076.P15435415332421505078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A318076.P15435415332421505078

/-! ## A318076.P3744393208299874789

`record[A003982(n)*A318082(n+1)]`
-/

namespace A318076.P3744393208299874789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A318082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318076.P3744393208299874789

/-! ## A318076.P6068648062932888457

`record[A214505(n)*A318082(n+1)]`
-/

namespace A318076.P6068648062932888457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A318082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318076.P6068648062932888457

/-!
# A318077: Number of nX3 0..1 arrays with every element unequal to 0, 1, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318077, there is no canonical definition to state claims against.
-/

/-! ## A318077.P644067504159865178

`A318082(∑[n+2]+4)`
-/

namespace A318077.P644067504159865178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A318077.P644067504159865178

/-! ## A318077.P10607859258696949508

`and(-1, A318082(A167614(n+1)))`
-/

namespace A318077.P10607859258696949508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A318082 (A167614 (n + 1)).toNat)

end

end A318077.P10607859258696949508

/-! ## A318077.P13997330115393732224

`A318082(A167614(n+1))+A025439(n)`
-/

namespace A318077.P13997330115393732224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (A167614 (n + 1)).toNat + A025439 n

end

end A318077.P13997330115393732224

/-! ## A318077.P6076904412369206253

`A318082(A167614(n+1))+A061858(n)`
-/

namespace A318077.P6076904412369206253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (A167614 (n + 1)).toNat + A061858 n

end

end A318077.P6076904412369206253

/-! ## A318077.P11722533428811214040

`A063435(n)*A318082(A167614(n+1))`
-/

namespace A318077.P11722533428811214040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A318082 (A167614 (n + 1)).toNat

end

end A318077.P11722533428811214040

/-!
# A318078: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318078, there is no canonical definition to state claims against.
-/

/-! ## A318078.P11919842473185623414

`A318082(∑[n+3]+7)`
-/

namespace A318078.P11919842473185623414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A318078.P11919842473185623414

/-! ## A318078.P6512137648276203836

`A318082(A000217(n+3)+4)+char[23]`
-/

namespace A318078.P6512137648276203836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (A000217 (n + 3) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A318078.P6512137648276203836

/-! ## A318078.P5959397114615488939

`or(A318082(A145018(n+4)), A322308(n))`
-/

namespace A318078.P5959397114615488939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A318082 (A145018 (n + 4)).toNat) (A322308 n)

end

end A318078.P5959397114615488939

/-! ## A318078.P10965689035372212233

`A057427(3*n+2)*A318082(A055999(n)+10)`
-/

namespace A318078.P10965689035372212233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (3 * n + 2) * A318082 (A055999 n + 10).toNat

end

end A318078.P10965689035372212233

/-! ## A318078.P5580628097761096752

`A007318(C(2, n))*A318082(A000217(n+3)+4)`
-/

namespace A318078.P5580628097761096752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A318082 (A000217 (n + 3) + 4).toNat

end

end A318078.P5580628097761096752

/-!
# A318079: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318079, there is no canonical definition to state claims against.
-/

/-! ## A318079.P13610307324789768528

`A318082(A374005(n+1))`
-/

namespace A318079.P13610307324789768528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (A374005 (n + 1)).toNat

end

end A318079.P13610307324789768528

/-! ## A318079.P13918134012077080152

`A318082(A167499(n+3))`
-/

namespace A318079.P13918134012077080152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (A167499 (n + 3)).toNat

end

end A318079.P13918134012077080152

/-! ## A318079.P11992522091283114126

`A318082(A155212(n)+13)`
-/

namespace A318079.P11992522091283114126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (A155212 n + 13).toNat

end

end A318079.P11992522091283114126

/-! ## A318079.P2157085405573161655

`A318082(A056000(n)+15)`
-/

namespace A318079.P2157085405573161655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (A056000 n + 15).toNat

end

end A318079.P2157085405573161655

/-! ## A318079.P5459158233735243216

`A318082(A166136(n+3)-1)`
-/

namespace A318079.P5459158233735243216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (A166136 (n + 3) - 1).toNat

end

end A318079.P5459158233735243216

/-!
# A318080: Number of nX6 0..1 arrays with every element unequal to 0, 1, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318080, there is no canonical definition to state claims against.
-/

/-! ## A318080.P10420328170917929681

`A318082(A374007(n+1))`
-/

namespace A318080.P10420328170917929681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (A374007 (n + 1)).toNat

end

end A318080.P10420328170917929681

/-! ## A318080.P4805442266847732655

`A318082(A166136(n+4))`
-/

namespace A318080.P4805442266847732655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (A166136 (n + 4)).toNat

end

end A318080.P4805442266847732655

/-! ## A318080.P6875608721828172432

`A318082(A056115(n)+21)`
-/

namespace A318080.P6875608721828172432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (A056115 n + 21).toNat

end

end A318080.P6875608721828172432

/-! ## A318080.P10002319112768387176

`A318082(A167499(n+4)+1)`
-/

namespace A318080.P10002319112768387176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (A167499 (n + 4) + 1).toNat

end

end A318080.P10002319112768387176

/-! ## A318080.P16125930420175335207

`A318082(A167614(n+4)+3)`
-/

namespace A318080.P16125930420175335207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (A167614 (n + 4) + 3).toNat

end

end A318080.P16125930420175335207

/-!
# A318081: Number of nX7 0..1 arrays with every element unequal to 0, 1, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318081, there is no canonical definition to state claims against.
-/

/-! ## A318081.P8390904031587207720

`A318082(A374008(n+1))`
-/

namespace A318081.P8390904031587207720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (A374008 (n + 1)).toNat

end

end A318081.P8390904031587207720

/-! ## A318081.P6589553737726715243

`A318082(A167487(n+5))`
-/

namespace A318081.P6589553737726715243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (A167487 (n + 5)).toNat

end

end A318081.P6589553737726715243

/-! ## A318081.P12643474350714329244

`A318082(A056119(n)+28)`
-/

namespace A318081.P12643474350714329244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (A056119 n + 28).toNat

end

end A318081.P12643474350714329244

/-! ## A318081.P2281427759301864181

`A318082(A167499(n+5)+2)`
-/

namespace A318081.P2281427759301864181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (A167499 (n + 5) + 2).toNat

end

end A318081.P2281427759301864181

/-! ## A318081.P11585570790802895986

`A318082(A133263(n+6)+5)`
-/

namespace A318081.P11585570790802895986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318082 (A133263 (n + 6) + 5).toNat

end

end A318081.P11585570790802895986

/-!
# A318082: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318082, there is no canonical definition to state claims against.
-/

/-! ## A318082.P8809517723177582170

`A317773(n+1)+A184945(A265080(n))`
-/

namespace A318082.P8809517723177582170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (n + 1) + A184945 (A265080 n).toNat

end

end A318082.P8809517723177582170

/-! ## A318082.P12706389806085762099

`A317773(n+1)+A309785(A331562(n))`
-/

namespace A318082.P12706389806085762099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (n + 1) + A309785 (A331562 n).toNat

end

end A318082.P12706389806085762099

/-! ## A318082.P12624805855862133714

`or(A037909(A288972(n)), A317773(n+1))`
-/

namespace A318082.P12624805855862133714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037909 (A288972 n).toNat) (A317773 (n + 1))

end

end A318082.P12624805855862133714

/-! ## A318082.P10651766523073454989

`A317773(n+1)+A294068(A108914(n+1)+1)`
-/

namespace A318082.P10651766523073454989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317773 (n + 1) + A294068 (A108914 (n + 1) + 1).toNat

end

end A318082.P10651766523073454989

/-!
# A318083: Numbers m such that sigma(sigma(m))/sigma(m) <= sigma(m)/m.

The programs for A318083, there is no canonical definition to state claims against.
-/

/-! ## A318083.P2223213945579875105

`lt[A295306(n+1), A295304(A158491(n+1))]+1`
-/

namespace A318083.P2223213945579875105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295304 (A158491 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A318083.P2223213945579875105

/-! ## A318083.P7254224046632004569

`lt[A307013(A033428(n))+n, A062401(n+1)]+1`
-/

namespace A318083.P7254224046632004569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307013 (A033428 n).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A318083.P7254224046632004569

/-! ## A318083.P6894516387954123656

`∩[A346132(n+1), A380743(n+1)]`
-/

namespace A318083.P6894516387954123656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318083.P6894516387954123656

/-! ## A318083.P12216944098948764716

`lt[A295301(n+1), A333381(2*n+1)]+1`
-/

namespace A318083.P12216944098948764716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A318083.P12216944098948764716

/-! ## A318083.P4424257833658681816

`∩[A035063(n+1), A380743(n+1)]`
-/

namespace A318083.P4424257833658681816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318083.P4424257833658681816

/-!
# A318084: Numbers m such that sigma(sigma(m))/m is a square.

The programs for A318084, there is no canonical definition to state claims against.
-/

/-! ## A318084.P10012721180099183418

`A226859(A158776(n))`
-/

namespace A318084.P10012721180099183418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226859 (A158776 n).toNat

end

end A318084.P10012721180099183418

/-!
# A318085: Number of nXn 0..1 arrays with every element unequal to 0, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318085, there is no canonical definition to state claims against.
-/

/-! ## A318085.P12329395040071293264

`A318091(∑[4*n]+1)`
-/

namespace A318085.P12329395040071293264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318091 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A318085.P12329395040071293264

/-! ## A318085.P15446308475031658696

`A318091(A001844(n))+char[10]`
-/

namespace A318085.P15446308475031658696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318091 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A318085.P15446308475031658696

/-! ## A318085.P8338204743352952323

`A208183(n)*A318091(A001844(n))`
-/

namespace A318085.P8338204743352952323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 n * A318091 (A001844 n).toNat

end

end A318085.P8338204743352952323

/-! ## A318085.P12061995188554421232

`A111332(n)!*A318091(A001844(n))`
-/

namespace A318085.P12061995188554421232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A111332 n).toNat : ℤ) * A318091 (A001844 n).toNat

end

end A318085.P12061995188554421232

/-! ## A318085.P3178551291768794199

`A007318(∑[n])*A318091(A001844(n))`
-/

namespace A318085.P3178551291768794199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A318091 (A001844 n).toNat

end

end A318085.P3178551291768794199

/-!
# A318086: Number of nX3 0..1 arrays with every element unequal to 0, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318086, there is no canonical definition to state claims against.
-/

/-! ## A318086.P9222222621398120721

`A318091(∑[n+2]+4)`
-/

namespace A318086.P9222222621398120721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318091 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A318086.P9222222621398120721

/-! ## A318086.P2218331013444774026

`A318091(A167614(n+1))+char[20]`
-/

namespace A318086.P2218331013444774026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318091 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A318086.P2218331013444774026

/-! ## A318086.P4683946672791713503

`gcd(A000038(n), A318091(A167614(n+1)))`
-/

namespace A318086.P4683946672791713503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A318091 (A167614 (n + 1)).toNat)

end

end A318086.P4683946672791713503

/-! ## A318086.P9273634653586569809

`∑{d}[A318091(A167614(n+1)), A000010(#)]`
-/

namespace A318086.P9273634653586569809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318091 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A318086.P9273634653586569809

/-! ## A318086.P17694419900232586710

`A318091(A167614(n+1))%A000229(n+1)`
-/

namespace A318086.P17694419900232586710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318091 (A167614 (n + 1)).toNat) (A000229 (n + 1))

end

end A318086.P17694419900232586710

/-!
# A318087: Number of nX4 0..1 arrays with every element unequal to 0, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318087, there is no canonical definition to state claims against.
-/

/-! ## A318087.P5748462313449289810

`A318091(C(n+4, 2)+4)`
-/

namespace A318087.P5748462313449289810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318091 (Nat.choose (n + 4) 2 + 4)

end

end A318087.P5748462313449289810

/-! ## A318087.P14240319546212008125

`A318091(∑[n+2]+n+8)`
-/

namespace A318087.P14240319546212008125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318091 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 8))

end

end A318087.P14240319546212008125

/-! ## A318087.P5655646112142196406

`A318091(A000217(n+3)+4)+char[19]`
-/

namespace A318087.P5655646112142196406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318091 (A000217 (n + 3) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A318087.P5655646112142196406

/-! ## A318087.P830034414866487953

`A014963(4*n+6)*A318091(A000217(n+3)+4)`
-/

namespace A318087.P830034414866487953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A318091 (A000217 (n + 3) + 4).toNat

end

end A318087.P830034414866487953

/-! ## A318087.P5268973449812633730

`A000041(((-1)^n)²)*A318091(A000217(n+3)+4)`
-/

namespace A318087.P5268973449812633730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (((-1) ^ n) ^ 2).toNat * A318091 (A000217 (n + 3) + 4).toNat

end

end A318087.P5268973449812633730

/-!
# A318088: Number of nX5 0..1 arrays with every element unequal to 0, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318088, there is no canonical definition to state claims against.
-/

/-! ## A318088.P14738958977956065559

`A318091(A374005(n+1))`
-/

namespace A318088.P14738958977956065559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318091 (A374005 (n + 1)).toNat

end

end A318088.P14738958977956065559

/-! ## A318088.P15287235829517509640

`A318091(A167499(n+3))`
-/

namespace A318088.P15287235829517509640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318091 (A167499 (n + 3)).toNat

end

end A318088.P15287235829517509640

/-! ## A318088.P7242107019691766598

`A318091(A155212(n)+13)`
-/

namespace A318088.P7242107019691766598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318091 (A155212 n + 13).toNat

end

end A318088.P7242107019691766598

/-! ## A318088.P17679451971986816408

`A318091(A056000(n)+15)`
-/

namespace A318088.P17679451971986816408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318091 (A056000 n + 15).toNat

end

end A318088.P17679451971986816408

/-! ## A318088.P4492508833540707811

`A318091(eq[7, A066657(n)])`
-/

namespace A318088.P4492508833540707811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318088.P4492508833540707811

/-!
# A318089: Number of nX6 0..1 arrays with every element unequal to 0, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318089, there is no canonical definition to state claims against.
-/

/-! ## A318089.P18202448637435726419

`A318091(A374007(n+1))`
-/

namespace A318089.P18202448637435726419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318091 (A374007 (n + 1)).toNat

end

end A318089.P18202448637435726419

/-! ## A318089.P7373725268158370546

`A318091(A056115(n)+21)`
-/

namespace A318089.P7373725268158370546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318091 (A056115 n + 21).toNat

end

end A318089.P7373725268158370546

/-! ## A318089.P16787278666751817778

`A318091(Δ[A264443(n)]+10)`
-/

namespace A318089.P16787278666751817778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318091 (f1 (n + 1) - f1 n + 10).toNat

end

end A318089.P16787278666751817778

/-! ## A318089.P3625649253176405780

`A318091(A167499(n+4)+1)`
-/

namespace A318089.P3625649253176405780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318091 (A167499 (n + 4) + 1).toNat

end

end A318089.P3625649253176405780

/-! ## A318089.P12272296303222167338

`A318091(A167614(n+4)+3)`
-/

namespace A318089.P12272296303222167338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318091 (A167614 (n + 4) + 3).toNat

end

end A318089.P12272296303222167338

/-!
# A318090: Number of nX7 0..1 arrays with every element unequal to 0, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318090, there is no canonical definition to state claims against.
-/

/-! ## A318090.P14301424720077858533

`A318091(A374008(n+1))`
-/

namespace A318090.P14301424720077858533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318091 (A374008 (n + 1)).toNat

end

end A318090.P14301424720077858533

/-! ## A318090.P15549114846355201627

`A318091(A056119(n)+28)`
-/

namespace A318090.P15549114846355201627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318091 (A056119 n + 28).toNat

end

end A318090.P15549114846355201627

/-! ## A318090.P13493051172987369808

`A318091(eq[11, A066657(n)])`
-/

namespace A318090.P13493051172987369808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318090.P13493051172987369808

/-! ## A318090.P4783305073270578579

`A318091(A167499(n+5)+2)`
-/

namespace A318090.P4783305073270578579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318091 (A167499 (n + 5) + 2).toNat

end

end A318090.P4783305073270578579

/-! ## A318090.P5990517326752742100

`A318091(A000124(n+6)+6)`
-/

namespace A318090.P5990517326752742100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318091 (A000124 (n + 6) + 6).toNat

end

end A318090.P5990517326752742100

/-!
# A318091: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318091, there is no canonical definition to state claims against.
-/

/-! ## A318091.P7652229402094968591

`A090702(A301400(n+1)+5)`
-/

namespace A318091.P7652229402094968591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090702 (A301400 (n + 1) + 5).toNat

end

end A318091.P7652229402094968591

/-! ## A318091.P3699482331721679738

`A317871(∑[∑[A111332(n)]])+1`
-/

namespace A318091.P3699482331721679738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111332 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317871 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A318091.P3699482331721679738

/-! ## A318091.P17065927995735244655

`A317871(n+1)+A111332(n)!`
-/

namespace A318091.P17065927995735244655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317871 (n + 1) + (Nat.factorial (A111332 n).toNat : ℤ)

end

end A318091.P17065927995735244655

/-! ## A318091.P1897553420024051336

`A317871(abs(n-A111332(n))+1)+1`
-/

namespace A318091.P1897553420024051336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317871 (|(n : ℤ) - A111332 n| + 1).toNat + 1

end

end A318091.P1897553420024051336

/-! ## A318091.P9682482170840936735

`(A317871(n+1)+1)%A119231(n+1)`
-/

namespace A318091.P9682482170840936735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317871 (n + 1) + 1) (A119231 (n + 1))

end

end A318091.P9682482170840936735

/-!
# A318092: Number of nXn 0..1 arrays with every element unequal to 1, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318092, there is no canonical definition to state claims against.
-/

/-! ## A318092.P5123696091377771179

`A318098(∑[4*n]+1)`
-/

namespace A318092.P5123696091377771179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A318092.P5123696091377771179

/-! ## A318092.P17815048536657735842

`record[A203994(n+1)*A318098(n+1)]`
-/

namespace A318092.P17815048536657735842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A318098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318092.P17815048536657735842

/-! ## A318092.P15464005100547184719

`A318098(A001844(n))+A133010(n+1)`
-/

namespace A318092.P15464005100547184719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (A001844 n).toNat + A133010 (n + 1)

end

end A318092.P15464005100547184719

/-! ## A318092.P6651900542094313941

`or(A132292(n+1), A318098(A001844(n)))`
-/

namespace A318092.P6651900542094313941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A132292 (n + 1)) (A318098 (A001844 n).toNat)

end

end A318092.P6651900542094313941

/-!
# A318093: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318093, there is no canonical definition to state claims against.
-/

/-! ## A318093.P12648195746678621827

`A318098(∑[n+2]+4)`
-/

namespace A318093.P12648195746678621827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A318093.P12648195746678621827

/-! ## A318093.P15486523636511151563

`A318098(A167614(n+1))+A025443(n)`
-/

namespace A318093.P15486523636511151563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (A167614 (n + 1)).toNat + A025443 n

end

end A318093.P15486523636511151563

/-! ## A318093.P16167730863566806176

`A318098(A167614(n+1))%A017633(n)`
-/

namespace A318093.P16167730863566806176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318098 (A167614 (n + 1)).toNat) (A017633 n)

end

end A318093.P16167730863566806176

/-! ## A318093.P8754854447315103465

`gcd(A000038(n), A318098(A167614(n+1)))`
-/

namespace A318093.P8754854447315103465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A318098 (A167614 (n + 1)).toNat)

end

end A318093.P8754854447315103465

/-! ## A318093.P10708980397023931982

`or(A000007(n), A318098(A167614(n+1)))`
-/

namespace A318093.P10708980397023931982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A318098 (A167614 (n + 1)).toNat)

end

end A318093.P10708980397023931982

/-!
# A318094: Number of nX4 0..1 arrays with every element unequal to 1, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318094, there is no canonical definition to state claims against.
-/

/-! ## A318094.P6145011312370633175

`A318098(A141214(n)+7)`
-/

namespace A318094.P6145011312370633175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (A141214 n + 7).toNat

end

end A318094.P6145011312370633175

/-! ## A318094.P2697468415676047051

`A318098(A052905(n)+9)`
-/

namespace A318094.P2697468415676047051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (A052905 n + 9).toNat

end

end A318094.P2697468415676047051

/-! ## A318094.P15408724302740848869

`A318098(A055999(n)+10)`
-/

namespace A318094.P15408724302740848869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (A055999 n + 10).toNat

end

end A318094.P15408724302740848869

/-! ## A318094.P1417336134739871565

`A318098(Δ[A008778(n)]+6)`
-/

namespace A318094.P1417336134739871565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (f1 (n + 1) - f1 n + 6).toNat

end

end A318094.P1417336134739871565

/-! ## A318094.P5771867838607544171

`A318098(A167614(n+2)+1)`
-/

namespace A318094.P5771867838607544171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (A167614 (n + 2) + 1).toNat

end

end A318094.P5771867838607544171

/-!
# A318095: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318095, there is no canonical definition to state claims against.
-/

/-! ## A318095.P14595547918775020632

`A318098(A167499(n+3))`
-/

namespace A318095.P14595547918775020632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (A167499 (n + 3)).toNat

end

end A318095.P14595547918775020632

/-! ## A318095.P8743083635898793917

`A318098(A155212(n)+13)`
-/

namespace A318095.P8743083635898793917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (A155212 n + 13).toNat

end

end A318095.P8743083635898793917

/-! ## A318095.P8740154108293975841

`A318098(A056000(n)+15)`
-/

namespace A318095.P8740154108293975841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (A056000 n + 15).toNat

end

end A318095.P8740154108293975841

/-! ## A318095.P16148995142101788919

`A318098(A374005(n+1))`
-/

namespace A318095.P16148995142101788919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (A374005 (n + 1)).toNat

end

end A318095.P16148995142101788919

/-! ## A318095.P9404534780546003662

`A318098(A046691(n+3))`
-/

namespace A318095.P9404534780546003662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (A046691 (n + 3)).toNat

end

end A318095.P9404534780546003662

/-!
# A318096: Number of n X 6 0..1 arrays with every element unequal to 1, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318096, there is no canonical definition to state claims against.
-/

/-! ## A318096.P10564102556695188176

`A318098(A166136(n+4))`
-/

namespace A318096.P10564102556695188176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (A166136 (n + 4)).toNat

end

end A318096.P10564102556695188176

/-! ## A318096.P17125245588104704840

`A318098(A374007(n+1))`
-/

namespace A318096.P17125245588104704840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (A374007 (n + 1)).toNat

end

end A318096.P17125245588104704840

/-! ## A318096.P16173314212631810488

`A318098(A052905(n+3))`
-/

namespace A318096.P16173314212631810488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (A052905 (n + 3)).toNat

end

end A318096.P16173314212631810488

/-! ## A318096.P8785543620077377980

`A318098(eq[3, A219347(n)])`
-/

namespace A318096.P8785543620077377980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318096.P8785543620077377980

/-! ## A318096.P7811610750527668510

`A318098(eq[5, A193592(n)])`
-/

namespace A318096.P7811610750527668510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318096.P7811610750527668510

/-!
# A318097: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318097, there is no canonical definition to state claims against.
-/

/-! ## A318097.P15989633737277839991

`A318098(eq[8, A131818(n+1)])`
-/

namespace A318097.P15989633737277839991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318097.P15989633737277839991

/-! ## A318097.P11455568141628298137

`A318098(A000217(n+8)-8-2*n)`
-/

namespace A318097.P11455568141628298137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (A000217 (n + 8) - 8 - (2 * n : ℤ)).toNat

end

end A318097.P11455568141628298137

/-! ## A318097.P5414235023227669065

`A318098(A374008(n+1))`
-/

namespace A318097.P5414235023227669065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (A374008 (n + 1)).toNat

end

end A318097.P5414235023227669065

/-! ## A318097.P5837278580602007926

`A318098(eq[4, A219347(n)])`
-/

namespace A318097.P5837278580602007926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318097.P5837278580602007926

/-! ## A318097.P7801587830068876515

`A318098(eq[6, A193592(n)])`
-/

namespace A318097.P7801587830068876515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318097.P7801587830068876515

/-!
# A318098: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318098, there is no canonical definition to state claims against.
-/

/-! ## A318098.P5187634854257683740

`A317823(n+1)+A317012(A299905(n))`
-/

namespace A318098.P5187634854257683740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317823 (n + 1) + A317012 (A299905 n).toNat

end

end A318098.P5187634854257683740

/-! ## A318098.P5360993598131854834

`A000196(A123714(A317823(n+1)²))`
-/

namespace A318098.P5360993598131854834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A123714 (A317823 (n + 1) ^ 2).toNat).toNat

end

end A318098.P5360993598131854834

/-! ## A318098.P13404563529424599533

`xor(A185284(A271703(n)), A317823(n+1))`
-/

namespace A318098.P13404563529424599533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A271703 n).toNat) (A317823 (n + 1))

end

end A318098.P13404563529424599533

/-! ## A318098.P13888144921692681105

`xor(A185284(A282600(n+1)), A317823(n+1))`
-/

namespace A318098.P13888144921692681105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A282600 (n + 1)).toNat) (A317823 (n + 1))

end

end A318098.P13888144921692681105

/-! ## A318098.P14213385671032789348

`xor(A185284(3*n), A317823(n+1))`
-/

namespace A318098.P14213385671032789348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (3 * n)) (A317823 (n + 1))

end

end A318098.P14213385671032789348

/-!
# A318099: Number of non-isomorphic weight-n antichains of (not necessarily distinct) multisets whose dual is also an antichain of (not necessarily distinct) multisets.

The programs for A318099, there is no canonical definition to state claims against.
-/

/-! ## A318099.P9343707592303745226

`A341141(A066897(n+1))`
-/

namespace A318099.P9343707592303745226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341141 ((A066897 (n + 1)).toNat + 10)

end

end A318099.P9343707592303745226

/-! ## A318099.P11251942877853742570

`A341141(record[A206563(n+1)])`
-/

namespace A318099.P11251942877853742570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341141 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 10)

end

end A318099.P11251942877853742570

