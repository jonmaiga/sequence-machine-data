import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C050
import Seq.B000.C052
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
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
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import SequenceMachineLib.Triangle

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

/-! ## A318002.P10331797087273167125

`row(A077591(∑[A379878(n)]))`
-/

namespace A318002.P10331797087273167125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A077591 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A318002.P10331797087273167125

/-! ## A318002.P1989555822236415534

`A327336(n)+A172270(A295257(n))`
-/

namespace A318002.P1989555822236415534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327336 n + A172270 (A295257 n).toNat

end

end A318002.P1989555822236415534

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

/-! ## A318008.P18159664055457665148

`A008676(A227413(n+1)+A088518(2*n+3))`
-/

namespace A318008.P18159664055457665148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A227413 (n + 1) + A088518 (2 * n + 3)).toNat

end

end A318008.P18159664055457665148

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

/-!
# A318010: Number of nX2 0..1 arrays with every element unequal to 0, 1, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318010, the canonical program `A318010.P11700517544221402171` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318010 has offset 1).

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

The canonical program, it is in `Seq.B000.C046`.
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

/-! ## A318012.P1199335936447643961

`A318016(A141214(n+1))`
-/

namespace A318012.P1199335936447643961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318016 (A141214 (n + 1)).toNat

end

end A318012.P1199335936447643961

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

/-! ## A318018.P1633904060992376710

`A318024(2+∑[n+1])`
-/

namespace A318018.P1633904060992376710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318024 (2 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A318018.P1633904060992376710

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

/-! ## A318018.P17739699883324662274

`A320409(∑[n+1]+2)`
-/

namespace A318018.P17739699883324662274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320409 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A318018.P17739699883324662274

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

/-! ## A318025.P3103696061246369064

`∑{d}[n+1, A179942(#)*A300277((n+1)/#)]`
-/

namespace A318025.P3103696061246369064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A179942 d * A300277 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318025.P3103696061246369064

/-!
# A318026: Expansion of Product_{k>=1} 1/((1 - x^k)*(1 - x^(3*k))).

The programs for A318026, there is no canonical definition to state claims against.
-/

/-! ## A318026.P98663068815901786

`A353866(A385012(n))`
-/

namespace A318026.P98663068815901786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353866 (A385012 n).toNat

end

end A318026.P98663068815901786

/-! ## A318026.P13073449147181218634

`A353847(A173241(n))`
-/

namespace A318026.P13073449147181218634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353847 (A173241 n).toNat

end

end A318026.P13073449147181218634

/-!
# A318029: Expansion of Sum_{k>=2} x^(k*(k+3)/2) / Product_{j=1..k} (1 - x^j).

The programs for A318029, there is no canonical definition to state claims against.
-/

/-! ## A318029.P2629858764476691587

`char[1]-1+A025147(n)`
-/

namespace A318029.P2629858764476691587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 1 + A025147 n

end

end A318029.P2629858764476691587

/-! ## A318029.P11870741914572771144

`A087897(n)+a(n-2)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A318029.P11870741914572771144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0] fun n a =>
  A087897 n + a (n - 2)

end

end A318029.P11870741914572771144

/-! ## A318029.P18405981193519731412

`A000009(n)-(2+a(n-1))` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A318029.P18405981193519731412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A000009 n - (2 + a (n - 1))

end

end A318029.P18405981193519731412

/-! ## A318029.P5463547607580847508

`A025147(n)-A060576(n)`
-/

namespace A318029.P5463547607580847508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 n - A060576 n

end

end A318029.P5463547607580847508

/-! ## A318029.P4059305894726256290

`A063524(n)+A025147(n)-1`
-/

namespace A318029.P4059305894726256290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + (A025147 n - 1)

end

end A318029.P4059305894726256290

/-! ## A318029.P15051335776119344487

`A096765(n+1)-(1-char[1])`
-/

namespace A318029.P15051335776119344487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (n + 1) - (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A318029.P15051335776119344487

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

The programs for A318031, the canonical program `A318031.P320335726501133931` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318031 has offset 1).

The definition of A318031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318031.P320335726501133931

`a(n-1)+4*a(n-3)+a(n-5)-a(n-6)` with `a(0)=2, a(1)=3, a(2)=6, a(3)=11, a(4)=22, a(5)=46`

The canonical program, it is in `Seq.B000.C046`.
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

/-! ## A318031.P11211174082044073992

`record[A318037(A286235(n+1)+1)]`
-/

namespace A318031.P11211174082044073992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318037 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318031.P11211174082044073992

namespace A318031

/-- `record[A318037(A286235(n+1)+1)]` -/
def P11211174082044073992.Spec : Prop :=
  ∀ n, P11211174082044073992.a n = A318031 (n + 1)

end A318031

/-! ## A318031.P15165895683547860899

`A326165(∑[n+1]+2)`
-/

namespace A318031.P15165895683547860899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326165 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A318031.P15165895683547860899

namespace A318031

/-- `A326165(∑[n+1]+2)` -/
def P15165895683547860899.Spec : Prop :=
  ∀ n, P15165895683547860899.a n = A318031 (n + 1)

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

/-! ## A318038.P15435390718786792239

`record[A003982(n)*A318045(n+1)]`
-/

namespace A318038.P15435390718786792239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A318045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318038.P15435390718786792239

/-!
# A318039: Number of nX2 0..1 arrays with every element unequal to 0, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318039, the canonical program `A318039.P6590600789909535685` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318039 has offset 1).

The definition of A318039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318039.P6590600789909535685

`A317890(1+n)+1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A318039

/-- `A317890(1+n)+1` -/
def P6590600789909535685.Spec : Prop :=
  ∀ n, P6590600789909535685.a n = A318039 (n + 1)

theorem P6590600789909535685.correct : P6590600789909535685.Spec := by
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

/-! ## A318041.P1516583862387355878

`A318045(A141214(n+1))`
-/

namespace A318041.P1516583862387355878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318045 (A141214 (n + 1)).toNat

end

end A318041.P1516583862387355878

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

/-! ## A318043.P11237013481396516513

`A318045(A374007(n+1))`
-/

namespace A318043.P11237013481396516513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318045 (A374007 (n + 1)).toNat

end

end A318043.P11237013481396516513

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

/-! ## A318044.P1833752001301863826

`A318045(A374008(n+1))`
-/

namespace A318044.P1833752001301863826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318045 (A374008 (n + 1)).toNat

end

end A318044.P1833752001301863826

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

/-! ## A318045.P4269306337344663728

`A128199(A034801(n))`
-/

namespace A318045.P4269306337344663728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128199 (A034801 n).toNat

end

end A318045.P4269306337344663728

/-! ## A318045.P9056166403257043489

`A110874(A091378(n))`
-/

namespace A318045.P9056166403257043489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110874 (A091378 n).toNat

end

end A318045.P9056166403257043489

/-! ## A318045.P11177018098125364583

`A105970(A126770(n))`
-/

namespace A318045.P11177018098125364583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105970 (A126770 n).toNat

end

end A318045.P11177018098125364583

/-!
# A318046: a(n) is the number of initial subtrees (subtrees emanating from the root) of the unlabeled rooted tree with Matula-Goebel number n.

The programs for A318046, there is no canonical definition to state claims against.
-/

/-! ## A318046.P13864040751372284887

`A184160(A198328(1+n))%(n+1)+1`
-/

namespace A318046.P13864040751372284887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184160 (A198328 (1 + n)).toNat) (n + 1 : ℤ) + 1

end

end A318046.P13864040751372284887

/-! ## A318046.P6422425020312223196

`Δ[A184160(A198328(n))+a(n-1)]+1` with `a(0)=2, a(1)=2`
-/

namespace A318046.P6422425020312223196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  A184160 (A198328 n).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A318046.P6422425020312223196

/-! ## A318046.P8014676146586537102

`A184160(A198328(1+n))+A057427(n)`
-/

namespace A318046.P8014676146586537102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184160 (A198328 (1 + n)).toNat + A057427 n

end

end A318046.P8014676146586537102

/-! ## A318046.P15476779781050121242

`A184160(A198328(n+1))-A057428(n)`
-/

namespace A318046.P15476779781050121242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184160 (A198328 (n + 1)).toNat - A057428 n

end

end A318046.P15476779781050121242

/-! ## A318046.P6792116583414064056

`A184160(A198328(1+n))+1-A000007(n)`
-/

namespace A318046.P6792116583414064056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184160 (A198328 (1 + n)).toNat + (1 - A000007 n)

end

end A318046.P6792116583414064056

/-! ## A318046.P7620365703987302036

`A184160(A198328(n+1))+A001221(A001316(n))`
-/

namespace A318046.P7620365703987302036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184160 (A198328 (n + 1)).toNat + A001221 (A001316 n).toNat

end

end A318046.P7620365703987302036

/-! ## A318046.P12175519730074901716

`A184160(A198328(n+1))+val(A386369(n+2), 2)`
-/

namespace A318046.P12175519730074901716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184160 (A198328 (n + 1)).toNat + (SequenceMachineLib.valuation (A386369 (n + 2)).toNat 2 : ℤ)

end

end A318046.P12175519730074901716

/-! ## A318046.P2812807580775355312

`A184160(A198328(n+1))+char[A085790(n+1)]`
-/

namespace A318046.P2812807580775355312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085790 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184160 (A198328 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A318046.P2812807580775355312

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

/-! ## A318047.P14189298793855538744

`∑{#}[n, (#+1)*A298593(C(n+1, 2)+#+1)]`
-/

namespace A318047.P14189298793855538744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℤ) * A298593 (Nat.choose (n + 1) 2 + (k + 1))

end

end A318047.P14189298793855538744

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

/-! ## A318050.P12137684591200970928

`A084799(gcd(n!, 2^n))%A274640(n)`
-/

namespace A318050.P12137684591200970928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084799 (Nat.gcd (Nat.factorial n) (2 ^ n))) (A274640 n)

end

end A318050.P12137684591200970928

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

The programs for A318053, the canonical program `A318053.P6733279276505114503` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318053 has offset 1).

The definition of A318053 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(sqrt(2*a(n-1)*a(n-2)))` (program `A318053.P6733279276505114503`, by `A318053.P6733279276505114503.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A318053.P6733279276505114503

`ceil(sqrt(2*a(n-1)*a(n-2)))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C046`.
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

/-! ## A318053.P5074539649008341744

`A135664(A265070(n+1))`
-/

namespace A318053.P5074539649008341744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A265070 (n + 1)).toNat

end

end A318053.P5074539649008341744

namespace A318053

/-- `A135664(A265070(n+1))` -/
def P5074539649008341744.Spec : Prop :=
  ∀ n, P5074539649008341744.a n = A318053 (n + 1)

end A318053

/-! ## A318053.P10917205105998905818

`A259361(A067247(n+2))`
-/

namespace A318053.P10917205105998905818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A067247 (n + 2)).toNat

end

end A318053.P10917205105998905818

namespace A318053

/-- `A259361(A067247(n+2))` -/
def P10917205105998905818.Spec : Prop :=
  ∀ n, P10917205105998905818.a n = A318053 (n + 1)

end A318053

/-! ## A318053.P3003871244425956811

`A391618(A192969(n+1))`
-/

namespace A318053.P3003871244425956811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391618 (A192969 (n + 1)).toNat

end

end A318053.P3003871244425956811

namespace A318053

/-- `A391618(A192969(n+1))` -/
def P3003871244425956811.Spec : Prop :=
  ∀ n, P3003871244425956811.a n = A318053 (n + 1)

end A318053

/-!
# A318054: a(n) = n*(n + 1)*(n^2 + n + 22)/24.

The programs for A318054, the canonical program `A318054.P2618741877506832120` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318054 has offset 0).

The definition of A318054 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(n²+n+22)/24` (program `A318054.P11878374244078146378`, by `A318054.P11878374244078146378.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A318054.P5108826536449027481

`ogf((2x-3x^2+2x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A318054.P5108826536449027481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -3, 2] [1, -5, 10, -10, 5, -1] n

end

end A318054.P5108826536449027481

namespace A318054

/-- `ogf((2x-3x^2+2x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P5108826536449027481.Spec : Prop :=
  ∀ n, P5108826536449027481.a n = A318054 n

end A318054

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
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A318054

/-! ## A318054.P2618741877506832120

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=7, a(3)=17, a(4)=35`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A318054

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P2618741877506832120.Spec : Prop :=
  ∀ n, P2618741877506832120.a n = A318054 n

theorem P2618741877506832120.correct : P2618741877506832120.Spec := by
  intro n
  simp only [A318054]

end A318054

/-! ## A318054.P15195164691898653357

`∑[∑[2+C(n, 2)]-2]`
-/

namespace A318054.P15195164691898653357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + Nat.choose n 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318054.P15195164691898653357

namespace A318054

/-- `∑[∑[2+C(n, 2)]-2]` -/
def P15195164691898653357.Spec : Prop :=
  ∀ n, P15195164691898653357.a n = A318054 n

end A318054

/-! ## A318054.P11642639280586447109

`∑[2*n+∑[C(n, 2)]]`
-/

namespace A318054.P11642639280586447109
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318054.P11642639280586447109

namespace A318054

/-- `∑[2*n+∑[C(n, 2)]]` -/
def P11642639280586447109.Spec : Prop :=
  ∀ n, (P11642639280586447109.a n : ℤ) = A318054 n

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

/-! ## A318058.P17217388515504798283

`A369715(1+n)-1`
-/

namespace A318058.P17217388515504798283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369715 (1 + n) - 1

end

end A318058.P17217388515504798283

/-! ## A318058.P4954404863253706948

`A023443(A369715(1+n))`
-/

namespace A318058.P4954404863253706948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A369715 (1 + n)).toNat

end

end A318058.P4954404863253706948

/-!
# A318059: a(n) is the numerator of sigma(sigma(n))/n.

The programs for A318059, the canonical program `A318059.P16582430127559491716` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318059 has offset 1).

The definition of A318059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318059.P16582430127559491716

`lcm(n+1, A051027(n+1))/(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A318059

/-- `lcm(n+1, A051027(n+1))/(n+1)` -/
def P16582430127559491716.Spec : Prop :=
  ∀ n, P16582430127559491716.a n = (A318059 (n + 1) : ℚ)

end A318059

/-! ## A318059.P11519232485920160186

`∑{d}[∑{d}[1+n, #], #]/A353751(n+1)`
-/

namespace A318059.P11519232485920160186
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A353751 (n + 1) : ℚ)

end

end A318059.P11519232485920160186

namespace A318059

/-- `∑{d}[∑{d}[1+n, #], #]/A353751(n+1)` -/
def P11519232485920160186.Spec : Prop :=
  ∀ n, P11519232485920160186.a n = (A318059 (n + 1) : ℚ)

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

/-! ## A318059.P16976465687608109022

`A051027(1+n)/A353751(n+1)`
-/

namespace A318059.P16976465687608109022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051027 (1 + n) : ℚ) / (A353751 (n + 1) : ℚ)

end

end A318059.P16976465687608109022

namespace A318059

/-- `A051027(1+n)/A353751(n+1)` -/
def P16976465687608109022.Spec : Prop :=
  ∀ n, P16976465687608109022.a n = (A318059 (n + 1) : ℚ)

end A318059

/-! ## A318059.P10969886109983333295

`A000203(∑{d}[n+1, #])/A353751(n+1)`
-/

namespace A318059.P10969886109983333295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (∑ d ∈ Nat.divisors (f1 n), d) : ℚ) / (A353751 (n + 1) : ℚ)

end

end A318059.P10969886109983333295

namespace A318059

/-- `A000203(∑{d}[n+1, #])/A353751(n+1)` -/
def P10969886109983333295.Spec : Prop :=
  ∀ n, P10969886109983333295.a n = (A318059 (n + 1) : ℚ)

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

The programs for A318060, the canonical program `A318060.P6031681000613286800` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318060 has offset 1).

The definition of A318060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318060.P7626330108816412354

`(1+n)/A353751(n+1)`
-/

namespace A318060.P7626330108816412354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + n : ℚ) / (A353751 (n + 1) : ℚ)

end

end A318060.P7626330108816412354

namespace A318060

/-- `(1+n)/A353751(n+1)` -/
def P7626330108816412354.Spec : Prop :=
  ∀ n, P7626330108816412354.a n = (A318060 (n + 1) : ℚ)

end A318060

/-! ## A318060.P6031681000613286800

`(n+1)/gcd(n+1, ∑[A111408(n)])`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A318060

/-- `(n+1)/gcd(n+1, ∑[A111408(n)])` -/
def P6031681000613286800.Spec : Prop :=
  ∀ n, P6031681000613286800.a n = (A318060 (n + 1) : ℚ)

end A318060

/-! ## A318060.P13748808836344531809

`(1+n)/gcd(A051027(1+n), A131738(n))`
-/

namespace A318060.P13748808836344531809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + n : ℚ) / (Int.gcd (A051027 (1 + n)) (A131738 n) : ℚ)

end

end A318060.P13748808836344531809

namespace A318060

/-- `(1+n)/gcd(A051027(1+n), A131738(n))` -/
def P13748808836344531809.Spec : Prop :=
  ∀ n, P13748808836344531809.a n = (A318060 (n + 1) : ℚ)

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

/-! ## A318061.P9166386281745287752

`record[A010052(2*n+1)*A318068(n+1)]`
-/

namespace A318061.P9166386281745287752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n + 1) * A318068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318061.P9166386281745287752

/-!
# A318062: Number of nX2 0..1 arrays with every element unequal to 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318062, the canonical program `A318062.P5353415626621374821` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318062 has offset 1).

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

The canonical program, it is in `Seq.B000.C046`.
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

/-! ## A318062.P14732294355069894688

`record[A251704(n)/A027642(n)]`
-/

namespace A318062.P14732294355069894688
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251704 n : ℚ) / (A027642 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318062.P14732294355069894688

namespace A318062

/-- `record[A251704(n)/A027642(n)]` -/
def P14732294355069894688.Spec : Prop :=
  ∀ n, P14732294355069894688.a n = (A318062 (n + 1) : ℚ)

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

/-! ## A318064.P13636502692167310477

`A318068(A141214(n+1))`
-/

namespace A318064.P13636502692167310477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318068 (A141214 (n + 1)).toNat

end

end A318064.P13636502692167310477

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

/-!
# A318067: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318067, there is no canonical definition to state claims against.
-/

/-! ## A318067.P15428817671246727485

`A318068(A167614(n+5)+4)`
-/

namespace A318067.P15428817671246727485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318068 (A167614 (n + 5) + 4).toNat

end

end A318067.P15428817671246727485

/-! ## A318067.P1042574672724989211

`A318068(A374008(n+1))`
-/

namespace A318067.P1042574672724989211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318068 (A374008 (n + 1)).toNat

end

end A318067.P1042574672724989211

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

/-! ## A318068.P7092491823790745820

`A299373(n+1)+A081603(A299373(n+1)²)`
-/

namespace A318068.P7092491823790745820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (n + 1) + A081603 (A299373 (n + 1) ^ 2).toNat

end

end A318068.P7092491823790745820

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

/-! ## A318069.P16040906249197623816

`record[A003982(n)*A318075(n+1)]`
-/

namespace A318069.P16040906249197623816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A318075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318069.P16040906249197623816

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

/-! ## A318071.P3420569019721794665

`A318075(A141214(n+1))`
-/

namespace A318071.P3420569019721794665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (A141214 (n + 1)).toNat

end

end A318071.P3420569019721794665

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

/-! ## A318083.P865901230712391830

`lt[A295303(n+1)*A338916(n), 1]+1`
-/

namespace A318083.P865901230712391830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295303 (n + 1) * A338916 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A318083.P865901230712391830

/-! ## A318083.P15307799585152633634

`lt[A295301(n+1), A001227(A066447(n))]+1`
-/

namespace A318083.P15307799585152633634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A066447 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A318083.P15307799585152633634

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

/-! ## A318083.P14163151882134724018

`∪[A028982(n+1), A327535(A007434(3*n+4))]`
-/

namespace A318083.P14163151882134724018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327535 (A007434 (3 * n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A318083.P14163151882134724018

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

/-!
# A318089: Number of nX6 0..1 arrays with every element unequal to 0, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318089, there is no canonical definition to state claims against.
-/

/-! ## A318089.P5594220828441601475

`A318091(A374007(1+n))`
-/

namespace A318089.P5594220828441601475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318091 (A374007 (1 + n)).toNat

end

end A318089.P5594220828441601475

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

/-! ## A318091.P11398063568750919301

`A044943(A156233(n))`
-/

namespace A318091.P11398063568750919301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044943 (A156233 n).toNat

end

end A318091.P11398063568750919301

/-! ## A318091.P13422104002140555551

`A105255(A156045(n))`
-/

namespace A318091.P13422104002140555551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105255 (A156045 n).toNat

end

end A318091.P13422104002140555551

/-! ## A318091.P7928321411919138913

`A090003(A176794(n))`
-/

namespace A318091.P7928321411919138913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090003 (A176794 n).toNat

end

end A318091.P7928321411919138913

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

/-! ## A318094.P9680102508623716769

`A318098(A141214(n+1))`
-/

namespace A318094.P9680102508623716769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (A141214 (n + 1)).toNat

end

end A318094.P9680102508623716769

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

/-! ## A318095.P16148995142101788919

`A318098(A374005(n+1))`
-/

namespace A318095.P16148995142101788919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (A374005 (n + 1)).toNat

end

end A318095.P16148995142101788919

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

/-!
# A318097: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318097, there is no canonical definition to state claims against.
-/

/-! ## A318097.P10590547872396274221

`A318098(A056119(n)+28)`
-/

namespace A318097.P10590547872396274221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (A056119 n + 28).toNat

end

end A318097.P10590547872396274221

/-! ## A318097.P5414235023227669065

`A318098(A374008(n+1))`
-/

namespace A318097.P5414235023227669065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318098 (A374008 (n + 1)).toNat

end

end A318097.P5414235023227669065

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

