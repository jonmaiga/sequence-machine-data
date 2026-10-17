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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

/-!
# A295800: Numbers that have exactly three representations as a sum of seven positive squares.

The programs for A295800, there is no canonical definition to state claims against.
-/

/-! ## A295800.P14345551025898601988

`eq[3, A025431(n)]`
-/

namespace A295800.P14345551025898601988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025431 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295800.P14345551025898601988

/-! ## A295800.P7683846972719855792

`eq[3, A243148(A133263(n)+5)]`
-/

namespace A295800.P7683846972719855792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A133263 n + 5).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295800.P7683846972719855792

/-! ## A295800.P17190932240357976259

`A335224(n+4)+A214127(n)`
-/

namespace A295800.P17190932240357976259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335224 (n + 4) + A214127 n

end

end A295800.P17190932240357976259

/-! ## A295800.P14084003100176757887

`eq[A000177(n)+3, A025422(n)]`
-/

namespace A295800.P14084003100176757887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000177 n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025422 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295800.P14084003100176757887

/-! ## A295800.P15156066216941479455

`lt[(A174146(A025431(n)+1)+2)%5, 1]`
-/

namespace A295800.P15156066216941479455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174146 (A025431 n + 1).toNat + 2) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A295800.P15156066216941479455

/-!
# A295801: Numbers that have exactly four representations as a sum of seven positive squares.

The programs for A295801, there is no canonical definition to state claims against.
-/

/-! ## A295801.P17976985070894548892

`eq[4, A025431(n)]`
-/

namespace A295801.P17976985070894548892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025431 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295801.P17976985070894548892

/-! ## A295801.P139024846106234427

`eq[4, A243148(A133263(n)+5)]`
-/

namespace A295801.P139024846106234427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A133263 n + 5).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295801.P139024846106234427

/-! ## A295801.P6254353163273983688

`eq[A000177(n)+4, A025422(n)]`
-/

namespace A295801.P6254353163273983688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000177 n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025422 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295801.P6254353163273983688

/-! ## A295801.P3551635516300300068

`lt[A257656(A025431(n)+1), -1]`
-/

namespace A295801.P3551635516300300068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257656 (A025431 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A295801.P3551635516300300068

/-! ## A295801.P16397408026886937623

`eq[A020705(A000177(n)), A025422(n)]`
-/

namespace A295801.P16397408026886937623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A000177 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025422 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295801.P16397408026886937623

/-!
# A295805: Numbers that have exactly eight representations as a sum of seven positive squares.

The programs for A295805, there is no canonical definition to state claims against.
-/

/-! ## A295805.P16974952949421618954

`eq[8, A025431(n)]`
-/

namespace A295805.P16974952949421618954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025431 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295805.P16974952949421618954

/-! ## A295805.P13188626017565411723

`eq[A000177(n)+8, A025422(n)]`
-/

namespace A295805.P13188626017565411723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000177 n + 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025422 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295805.P13188626017565411723

/-! ## A295805.P1080042859982266156

`lt[A014025(A025431(n)), A000007(n)]`
-/

namespace A295805.P1080042859982266156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014025 (A025431 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A295805.P1080042859982266156

/-! ## A295805.P16012740233679459863

`lt[A014025(A025431(n)), A014108(n)]`
-/

namespace A295805.P16012740233679459863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014025 (A025431 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014108 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A295805.P16012740233679459863

/-! ## A295805.P1673566990933990925

`lt[A014025(A025431(n)), A178333(n)]`
-/

namespace A295805.P1673566990933990925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014025 (A025431 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A295805.P1673566990933990925

/-!
# A295808: G.f. A(x) satisfies: A(x)^3 = 1+x + x*(A(x)^4 + A(x)^8).

The programs for A295808, there is no canonical definition to state claims against.
-/

/-! ## A295808.P3182466949705068451

`A306229(C(2*n, n+2)+(n+1)*a(n-1))` with `a(0)=1`
-/

namespace A295808.P3182466949705068451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A306229 ((Nat.choose (2 * n) (n + 2) : ℤ) + (n + 1 : ℤ) * a (n - 1)).toNat

end

end A295808.P3182466949705068451

/-! ## A295808.P8900875438956122179

`A132278(∑[ceil(3^(n-1))]+2^n-ceil(2^(n-1)+3^(n-1)))`
-/

namespace A295808.P8900875438956122179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132278 (∑ j ∈ Finset.range (n + 1), f1 j + (2 ^ n : ℤ) - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A295808.P8900875438956122179

/-!
# A295809: G.f. A(x) satisfies: A(x)^3 = 1+x + x*(A(x)^2 + A(x)^7).

The programs for A295809, there is no canonical definition to state claims against.
-/

/-! ## A295809.P934440246923340098

`A210736(n)+A002265(A162475(n))`
-/

namespace A295809.P934440246923340098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 n + A002265 (A162475 n).toNat

end

end A295809.P934440246923340098

/-! ## A295809.P6726348655382742313

`A036726(n)-A105518(A330663(n))`
-/

namespace A295809.P6726348655382742313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036726 n - A105518 (A330663 n).toNat

end

end A295809.P6726348655382742313

/-!
# A295810: G.f. A(x) satisfies: A(x)^3 = 1+x + x*(A(x)^5 + A(x)^7).

The programs for A295810, there is no canonical definition to state claims against.
-/

/-! ## A295810.P5071340156830732108

`A289494(4*A064063(n))`
-/

namespace A295810.P5071340156830732108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (4 * A064063 n).toNat

end

end A295810.P5071340156830732108

/-! ## A295810.P10086090625211483043

`A002266(6*A077054(n))`
-/

namespace A295810.P10086090625211483043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (6 * A077054 n).toNat

end

end A295810.P10086090625211483043

/-!
# A295811: G.f. A(x) satisfies: [x^(n-1)] A(x)^(n^2) = 2*n * [x^(n-2)] A(x)^(n^2) for n>=2, with A(0) = 1.

The programs for A295811, there is no canonical definition to state claims against.
-/

/-! ## A295811.P8228428432105216850

`A089349(n!)`
-/

namespace A295811.P8228428432105216850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089349 (Nat.factorial n)

end

end A295811.P8228428432105216850

/-!
# A295812: G.f. A(x) satisfies: G(A(x)) = exp(x), where G(x) equals the e.g.f. of A296170.

The programs for A295812, there is no canonical definition to state claims against.
-/

/-! ## A295812.P14648884752822852506

`A113960(n!)`
-/

namespace A295812.P14648884752822852506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113960 (Nat.factorial n)

end

end A295812.P14648884752822852506

/-!
# A295819: Number of nonnegative solutions to (x,y) = 1 and x^2 + y^2 = n.

The programs for A295819, the canonical program `A295819.P15157228234053089622` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295819 has offset 0).

The definition of A295819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295819.P15157228234053089622

`A000089(A048298(8*(n+1))+n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A295819

/-- `A000089(A048298(8*(n+1))+n)` -/
def P15157228234053089622.Spec : Prop :=
  ∀ n, P15157228234053089622.a n = A295819 n

theorem P15157228234053089622.correct : P15157228234053089622.Spec := by
  intro n
  simp only [A295819]

end A295819

/-! ## A295819.P6949184305575968307

`Δ[A295820(floor(n-n/(n+1)))]`
-/

namespace A295819.P6949184305575968307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295820 ⌊(n : ℚ) - (n : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295819.P6949184305575968307

namespace A295819

/-- `Δ[A295820(floor(n-n/(n+1)))]` -/
def P6949184305575968307.Spec : Prop :=
  ∀ n, P6949184305575968307.a n = A295819 n

end A295819

/-! ## A295819.P7535309045647386498

`A295820(n)-A295820(A057428(n)+n)`
-/

namespace A295819.P7535309045647386498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295820 n - A295820 (A057428 n + (n : ℤ)).toNat

end

end A295819.P7535309045647386498

namespace A295819

/-- `A295820(n)-A295820(A057428(n)+n)` -/
def P7535309045647386498.Spec : Prop :=
  ∀ n, P7535309045647386498.a n = A295819 n

end A295819

/-! ## A295819.P14611489904452208567

`A295820(n)-A295820(n-A057427(n))`
-/

namespace A295819.P14611489904452208567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295820 n - A295820 ((n : ℤ) - A057427 n).toNat

end

end A295819.P14611489904452208567

namespace A295819

/-- `A295820(n)-A295820(n-A057427(n))` -/
def P14611489904452208567.Spec : Prop :=
  ∀ n, P14611489904452208567.a n = A295819 n

end A295819

/-! ## A295819.P4990148538701245036

`A000089(C(4, A286507(n))+n)`
-/

namespace A295819.P4990148538701245036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (Nat.choose 4 (A286507 n).toNat + n)

end

end A295819.P4990148538701245036

namespace A295819

/-- `A000089(C(4, A286507(n))+n)` -/
def P4990148538701245036.Spec : Prop :=
  ∀ n, P4990148538701245036.a n = A295819 n

end A295819

/-! ## A295819.P3787457760038752112

`A000089(C(A134964(n+3), A000045(3*(n+1)))+n)`
-/

namespace A295819.P3787457760038752112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (Nat.choose (A134964 (n + 3)).toNat (A000045 (3 * (n + 1))).toNat + n)

end

end A295819.P3787457760038752112

namespace A295819

/-- `A000089(C(A134964(n+3), A000045(3*(n+1)))+n)` -/
def P3787457760038752112.Spec : Prop :=
  ∀ n, P3787457760038752112.a n = A295819 n

end A295819

/-!
# A295820: Number of nonnegative solutions to (x,y) = 1 and x^2 + y^2 <= n.

The programs for A295820, the canonical program `A295820.P16692635017392490781` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295820 has offset 0).

The definition of A295820 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295819, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A295820.P16692635017392490781

`a(n-1)+A295819(n)` with `a(0)=0`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A295820

/-- `a(n-1)+A295819(n)` -/
def P16692635017392490781.Spec : Prop :=
  ∀ n, P16692635017392490781.a n = A295820 n

theorem P16692635017392490781.correct : P16692635017392490781.Spec := by
  intro n
  simp only [A295820]

end A295820

/-! ## A295820.P3616193019844191570

`∑[A295819(n)]`
-/

namespace A295820.P3616193019844191570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295820.P3616193019844191570

namespace A295820

/-- `∑[A295819(n)]` -/
def P3616193019844191570.Spec : Prop :=
  ∀ n, P3616193019844191570.a n = A295820 n

end A295820

/-! ## A295820.P6122485354194964769

`ceil(A305117(n)+sin(n)²)`
-/

namespace A295820.P6122485354194964769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A305117 n : ℝ) + Real.sin (n : ℝ) ^ 2⌉

end

end A295820.P6122485354194964769

namespace A295820

/-- `ceil(A305117(n)+sin(n)²)` -/
def P6122485354194964769.Spec : Prop :=
  ∀ n, P6122485354194964769.a n = A295820 n

end A295820

/-! ## A295820.P2015091487467427144

`A000089(n)+a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A295820.P2015091487467427144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A000089 n + a (n - 1)

end

end A295820.P2015091487467427144

namespace A295820

/-- `A000089(n)+a(n-1)` -/
def P2015091487467427144.Spec : Prop :=
  ∀ n, P2015091487467427144.a n = A295820 n

end A295820

/-! ## A295820.P3278412496561842037

`A305117(n)+A057427(n)`
-/

namespace A295820.P3278412496561842037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 n + A057427 n

end

end A295820.P3278412496561842037

namespace A295820

/-- `A305117(n)+A057427(n)` -/
def P3278412496561842037.Spec : Prop :=
  ∀ n, P3278412496561842037.a n = A295820 n

end A295820

/-! ## A295820.P17959452540217196741

`A305117(n)-A057428(n)`
-/

namespace A295820.P17959452540217196741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 n - A057428 n

end

end A295820.P17959452540217196741

namespace A295820

/-- `A305117(n)-A057428(n)` -/
def P17959452540217196741.Spec : Prop :=
  ∀ n, P17959452540217196741.a n = A295820 n

end A295820

/-! ## A295820.P8684990116924302272

`A305117(n)+n/A028310(n)`
-/

namespace A295820.P8684990116924302272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305117 n : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A295820.P8684990116924302272

namespace A295820

/-- `A305117(n)+n/A028310(n)` -/
def P8684990116924302272.Spec : Prop :=
  ∀ n, P8684990116924302272.a n = (A295820 n : ℚ)

end A295820

/-! ## A295820.P16492858088268473798

`A305117(n)+A000040(n+1)%2`
-/

namespace A295820.P16492858088268473798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 n + Int.tmod (A000040 (n + 1)) 2

end

end A295820.P16492858088268473798

namespace A295820

/-- `A305117(n)+A000040(n+1)%2` -/
def P16492858088268473798.Spec : Prop :=
  ∀ n, P16492858088268473798.a n = A295820 n

end A295820

/-! ## A295820.P11346204188916858768

`A305117(n)+A001248(n+1)%2`
-/

namespace A295820.P11346204188916858768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 n + Int.tmod (A001248 (n + 1)) 2

end

end A295820.P11346204188916858768

namespace A295820

/-- `A305117(n)+A001248(n+1)%2` -/
def P11346204188916858768.Spec : Prop :=
  ∀ n, P11346204188916858768.a n = A295820 n

end A295820

/-! ## A295820.P16865729336209053634

`ceil(A305117(n)+n/A124255(n+2))`
-/

namespace A295820.P16865729336209053634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A305117 n : ℚ) + (n : ℚ) / (A124255 (n + 2) : ℚ)⌉

end

end A295820.P16865729336209053634

namespace A295820

/-- `ceil(A305117(n)+n/A124255(n+2))` -/
def P16865729336209053634.Spec : Prop :=
  ∀ n, P16865729336209053634.a n = A295820 n

end A295820

/-! ## A295820.P18053656615655659114

`A305117(n)+A178334(A178334(n))`
-/

namespace A295820.P18053656615655659114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 n + A178334 (A178334 n).toNat

end

end A295820.P18053656615655659114

namespace A295820

/-- `A305117(n)+A178334(A178334(n))` -/
def P18053656615655659114.Spec : Prop :=
  ∀ n, P18053656615655659114.a n = A295820 n

end A295820

/-! ## A295820.P12339800203981379759

`A305117(n)+A057979(A305117(n+1))`
-/

namespace A295820.P12339800203981379759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 n + A057979 (A305117 (n + 1)).toNat

end

end A295820.P12339800203981379759

namespace A295820

/-- `A305117(n)+A057979(A305117(n+1))` -/
def P12339800203981379759.Spec : Prop :=
  ∀ n, P12339800203981379759.a n = A295820 n

end A295820

/-! ## A295820.P14971614021664956464

`A305117(n)+A226874(Δ[A305117(n+1)])`
-/

namespace A295820.P14971614021664956464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 n + A226874 (f1 (n + 1) - f1 n).toNat

end

end A295820.P14971614021664956464

namespace A295820

/-- `A305117(n)+A226874(Δ[A305117(n+1)])` -/
def P14971614021664956464.Spec : Prop :=
  ∀ n, P14971614021664956464.a n = A295820 n

end A295820

/-! ## A295820.P11876705494955867334

`A001615(A020639(n+1))+A305117(n)-A020639(n+1)`
-/

namespace A295820.P11876705494955867334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A020639 (n + 1)).toNat + (A305117 n - A020639 (n + 1))

end

end A295820.P11876705494955867334

namespace A295820

/-- `A001615(A020639(n+1))+A305117(n)-A020639(n+1)` -/
def P11876705494955867334.Spec : Prop :=
  ∀ n, P11876705494955867334.a n = A295820 n

end A295820

/-! ## A295820.P17334184608779533180

`A182659(A305117(n))`
-/

namespace A295820.P17334184608779533180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182659 (A305117 n).toNat

end

end A295820.P17334184608779533180

namespace A295820

/-- `A182659(A305117(n))` -/
def P17334184608779533180.Spec : Prop :=
  ∀ n, P17334184608779533180.a n = A295820 n

end A295820

/-!
# A295821: Number of coprime pairs (a,b) with -n <= a <= n, -2 <= b <= 2.

The programs for A295821, the canonical program `A295821.P14184592308498567070` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295821 has offset 0).

The definition of A295821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295821.P14184592308498567070

`a(n-2)+12` with `a(0)=2, a(1)=12, a(2)=16`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295821

/-- `a(n-2)+12` -/
def P14184592308498567070.Spec : Prop :=
  ∀ n, (P14184592308498567070.a n : ℤ) = A295821 n

theorem P14184592308498567070.correct : P14184592308498567070.Spec := by
  intro n
  simp only [A295821]

end A295821

/-! ## A295821.P660520049388891374

`∑[abs(a(n-2))]` with `a(0)=2, a(1)=10, a(2)=4, a(3)=8`
-/

namespace A295821.P660520049388891374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 10, 4, 8] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295821.P660520049388891374

namespace A295821

/-- `∑[abs(a(n-2))]` -/
def P660520049388891374.Spec : Prop :=
  ∀ n, (P660520049388891374.a n : ℤ) = A295821 n

end A295821

/-! ## A295821.P15008889504120788164

`∑[12-a(n-1)]` with `a(0)=2, a(1)=10, a(2)=4`
-/

namespace A295821.P15008889504120788164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 10, 4] fun n f1 =>
  12 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295821.P15008889504120788164

namespace A295821

/-- `∑[12-a(n-1)]` -/
def P15008889504120788164.Spec : Prop :=
  ∀ n, P15008889504120788164.a n = A295821 n

end A295821

/-! ## A295821.P8177473957011339472

`record[lcm(3, n+3)-1+n]`
-/

namespace A295821.P8177473957011339472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (n + 3) : ℤ) - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295821.P8177473957011339472

namespace A295821

/-- `record[lcm(3, n+3)-1+n]` -/
def P8177473957011339472.Spec : Prop :=
  ∀ n, P8177473957011339472.a n = A295821 n

end A295821

/-! ## A295821.P3744552203205473535

`∑[8/gcd(2, n)]/ceil(acot(n))`
-/

namespace A295821.P3744552203205473535
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ)

end

end A295821.P3744552203205473535

namespace A295821

/-- `∑[8/gcd(2, n)]/ceil(acot(n))` -/
def P3744552203205473535.Spec : Prop :=
  ∀ n, P3744552203205473535.a n = (A295821 n : ℚ)

end A295821

/-! ## A295821.P4626322076696309642

`∑[2*a(2*and(1, n))]` with `a(0)=2, a(1)=10`
-/

namespace A295821.P4626322076696309642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 10] fun n f1 =>
  2 * f1 (2 * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295821.P4626322076696309642

namespace A295821

/-- `∑[2*a(2*and(1, n))]` -/
def P4626322076696309642.Spec : Prop :=
  ∀ n, (P4626322076696309642.a n : ℤ) = A295821 n

end A295821

/-! ## A295821.P10173160967982251381

`record[(n+2)*4^(n²%3)]`
-/

namespace A295821.P10173160967982251381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * 4 ^ (n ^ 2 % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295821.P10173160967982251381

namespace A295821

/-- `record[(n+2)*4^(n²%3)]` -/
def P10173160967982251381.Spec : Prop :=
  ∀ n, (P10173160967982251381.a n : ℤ) = A295821 n

end A295821

/-! ## A295821.P9780060723577485589

`and(ceil(sin(n)²)-5, 6*(n+1))`
-/

namespace A295821.P9780060723577485589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (⌈Real.sin (n : ℝ) ^ 2⌉ - 5) (6 * (n + 1) : ℤ)

end

end A295821.P9780060723577485589

namespace A295821

/-- `and(ceil(sin(n)²)-5, 6*(n+1))` -/
def P9780060723577485589.Spec : Prop :=
  ∀ n, P9780060723577485589.a n = A295821 n

end A295821

/-! ## A295821.P16227648955537991001

`A291092(n+1)+A092899(n)`
-/

namespace A295821.P16227648955537991001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291092 (n + 1) + A092899 n

end

end A295821.P16227648955537991001

namespace A295821

/-- `A291092(n+1)+A092899(n)` -/
def P16227648955537991001.Spec : Prop :=
  ∀ n, P16227648955537991001.a n = A295821 n

end A295821

/-! ## A295821.P12033011081924501246

`A153284(n+1)+A091998(n+1)`
-/

namespace A295821.P12033011081924501246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153284 (n + 1) + A091998 (n + 1)

end

end A295821.P12033011081924501246

namespace A295821

/-- `A153284(n+1)+A091998(n+1)` -/
def P12033011081924501246.Spec : Prop :=
  ∀ n, P12033011081924501246.a n = A295821 n

end A295821

/-! ## A295821.P2081132583753781472

`A273669(n+1)+A114637(n+1)`
-/

namespace A295821.P2081132583753781472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273669 (n + 1) + A114637 (n + 1)

end

end A295821.P2081132583753781472

namespace A295821

/-- `A273669(n+1)+A114637(n+1)` -/
def P2081132583753781472.Spec : Prop :=
  ∀ n, P2081132583753781472.a n = A295821 n

end A295821

/-! ## A295821.P5738834797517147894

`A306277(n+1)+A171463(n+1)`
-/

namespace A295821.P5738834797517147894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306277 (n + 1) + A171463 (n + 1)

end

end A295821.P5738834797517147894

namespace A295821

/-- `A306277(n+1)+A171463(n+1)` -/
def P5738834797517147894.Spec : Prop :=
  ∀ n, P5738834797517147894.a n = A295821 n

end A295821

/-! ## A295821.P1392645895994929980

`(A004277(n+1)-A004277(n))*A047238(n+2)`
-/

namespace A295821.P1392645895994929980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 (n + 1) - A004277 n) * A047238 (n + 2)

end

end A295821.P1392645895994929980

namespace A295821

/-- `(A004277(n+1)-A004277(n))*A047238(n+2)` -/
def P1392645895994929980.Spec : Prop :=
  ∀ n, P1392645895994929980.a n = A295821 n

end A295821

/-! ## A295821.P3618136642562868730

`2*A103517(A007494(n))`
-/

namespace A295821.P3618136642562868730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103517 (A007494 n).toNat

end

end A295821.P3618136642562868730

namespace A295821

/-- `2*A103517(A007494(n))` -/
def P3618136642562868730.Spec : Prop :=
  ∀ n, P3618136642562868730.a n = A295821 n

end A295821

/-! ## A295821.P12335371754017421917

`A118286(A103517(n))`
-/

namespace A295821.P12335371754017421917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118286 (A103517 n).toNat

end

end A295821.P12335371754017421917

namespace A295821

/-- `A118286(A103517(n))` -/
def P12335371754017421917.Spec : Prop :=
  ∀ n, P12335371754017421917.a n = A295821 n

end A295821

/-! ## A295821.P2645521518590766555

`A103517(2*n)+A103517(A052928(n+1))`
-/

namespace A295821.P2645521518590766555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (2 * n) + A103517 (A052928 (n + 1)).toNat

end

end A295821.P2645521518590766555

namespace A295821

/-- `A103517(2*n)+A103517(A052928(n+1))` -/
def P2645521518590766555.Spec : Prop :=
  ∀ n, P2645521518590766555.a n = A295821 n

end A295821

/-! ## A295821.P8670341691335246340

`2*A265283(3*n)`
-/

namespace A295821.P8670341691335246340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265283 (3 * n)

end

end A295821.P8670341691335246340

namespace A295821

/-- `2*A265283(3*n)` -/
def P8670341691335246340.Spec : Prop :=
  ∀ n, P8670341691335246340.a n = A295821 n

end A295821

/-! ## A295821.P5450969503074911520

`A059030(A038179(n+2))`
-/

namespace A295821.P5450969503074911520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059030 (A038179 (n + 2)).toNat

end

end A295821.P5450969503074911520

namespace A295821

/-- `A059030(A038179(n+2))` -/
def P5450969503074911520.Spec : Prop :=
  ∀ n, P5450969503074911520.a n = A295821 n

end A295821

/-! ## A295821.P6158038983583541277

`A057543(A047238(n+2))`
-/

namespace A295821.P6158038983583541277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057543 (A047238 (n + 2)).toNat

end

end A295821.P6158038983583541277

namespace A295821

/-- `A057543(A047238(n+2))` -/
def P6158038983583541277.Spec : Prop :=
  ∀ n, P6158038983583541277.a n = A295821 n

end A295821

/-!
# A295822: Number of coprime pairs (a,b) with -n <= a <= n, -3 <= b <= 3.

The programs for A295822, there is no canonical definition to state claims against.
-/

/-! ## A295822.P1245173407101774864

`(n+3-abs(1-n))*A090169(n+1)`
-/

namespace A295822.P1245173407101774864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) - |1 - (n : ℤ)|) * A090169 (n + 1)

end

end A295822.P1245173407101774864

/-! ## A295822.P5704095853800747780

`A019442(A049637(n))`
-/

namespace A295822.P5704095853800747780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019442 (A049637 n).toNat

end

end A295822.P5704095853800747780

/-! ## A295822.P3437639366116460665

`Δ[A130824(∑[A090169(n)])]`
-/

namespace A295822.P3437639366116460665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090169 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295822.P3437639366116460665

/-! ## A295822.P12297678097623246721

`2*A049702(A046691(n+2))`
-/

namespace A295822.P12297678097623246721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049702 (A046691 (n + 2)).toNat

end

end A295822.P12297678097623246721

/-! ## A295822.P2532462151614151685

`2*A049702(A167614(n+2))`
-/

namespace A295822.P2532462151614151685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049702 (A167614 (n + 2)).toNat

end

end A295822.P2532462151614151685

/-! ## A295822.P6447655988761237319

`A310556(2*n+1)-2*A004525(2*n+1)`
-/

namespace A295822.P6447655988761237319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310556 (2 * n + 1) - 2 * A004525 (2 * n + 1)

end

end A295822.P6447655988761237319

/-! ## A295822.P5187037836575819917

`A008620(A212160(n))*A040002(n)`
-/

namespace A295822.P5187037836575819917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A212160 n).toNat * A040002 n

end

end A295822.P5187037836575819917

/-! ## A295822.P15985585543574136902

`2*A090169(n+1)*A020639(A008458(n))`
-/

namespace A295822.P15985585543574136902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090169 (n + 1) * A020639 (A008458 n).toNat

end

end A295822.P15985585543574136902

/-!
# A295824: Numbers k such that (44*10^k - 161)/9 is prime.

The programs for A295824, there is no canonical definition to state claims against.
-/

/-! ## A295824.P10853902779667290551

`A119803(A145156(n+1))`
-/

namespace A295824.P10853902779667290551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119803 (A145156 (n + 1)).toNat

end

end A295824.P10853902779667290551

/-! ## A295824.P17072801703863863364

`A362851(A041593(n+1))`
-/

namespace A295824.P17072801703863863364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362851 (A041593 (n + 1)).toNat

end

end A295824.P17072801703863863364

/-!
# A295828: Expansion of Product_{k>=1} 1/(1 - x^k)^(2*k*(2*k-1)).

The programs for A295828, there is no canonical definition to state claims against.
-/

/-! ## A295828.P5619325474709969082

`A076436(A052965(n))`
-/

namespace A295828.P5619325474709969082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076436 (A052965 n).toNat

end

end A295828.P5619325474709969082

/-!
# A295829: Unitary pseudoperfect numbers that equal to the sum of a subset of their aliquot unitary divisors in a single way.

The programs for A295829, there is no canonical definition to state claims against.
-/

/-! ## A295829.P3288350311637366937

`eq[2, A349542(n)]`
-/

namespace A295829.P3288350311637366937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349542 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295829.P3288350311637366937

/-! ## A295829.P29507367709668671

`lt[A010885(n), A329684(A349542(n))]`
-/

namespace A295829.P29507367709668671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010885 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 (A349542 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A295829.P29507367709668671

/-! ## A295829.P17994705740215688714

`lt[A329684(n), A329684(A349542(n))]`
-/

namespace A295829.P17994705740215688714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 (A349542 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A295829.P17994705740215688714

/-! ## A295829.P8158115630199975438

`lt[A000700(A349542(n)), A349542(2*n+1)]`
-/

namespace A295829.P8158115630199975438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A349542 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349542 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A295829.P8158115630199975438

/-! ## A295829.P13012734247120310912

`∩[A295830(n+1), A360681(n+1)]`
-/

namespace A295829.P13012734247120310912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295829.P13012734247120310912

/-!
# A295831: Expansion of Product_{k>=1} ((1 + x^(2*k))/(1 - x^(2*k-1)))^k.

The programs for A295831, there is no canonical definition to state claims against.
-/

/-! ## A295831.P117896254356152152

`A276571(A000009(n)*A266108(n))`
-/

namespace A295831.P117896254356152152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A000009 n * A266108 n).toNat

end

end A295831.P117896254356152152

/-! ## A295831.P7823826635047679733

`A342528(n)-A175402(A270339(n+1))`
-/

namespace A295831.P7823826635047679733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342528 n - A175402 (A270339 (n + 1)).toNat

end

end A295831.P7823826635047679733

/-! ## A295831.P16277556164501493584

`A328335(A107742(n))`
-/

namespace A295831.P16277556164501493584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328335 (A107742 n).toNat

end

end A295831.P16277556164501493584

/-! ## A295831.P97366052767303967

`A158037(A158510(n+1))`
-/

namespace A295831.P97366052767303967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158037 (A158510 (n + 1)).toNat

end

end A295831.P97366052767303967

/-! ## A295831.P12420372854776213565

`A306202(Δ[A002865(2*n+1)])`
-/

namespace A295831.P12420372854776213565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306202 (f1 (n + 1) - f1 n).toNat

end

end A295831.P12420372854776213565

/-!
# A295832: Expansion of Product_{k>=1} ((1 + x^(2*k-1))/(1 - x^(2*k)))^k.

The programs for A295832, there is no canonical definition to state claims against.
-/

/-! ## A295832.P5457609804375134060

`A090035(n)-record[A166865(n+1)]`
-/

namespace A295832.P5457609804375134060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090035 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295832.P5457609804375134060

/-! ## A295832.P16034814777947459909

`A048881(A153438(n))+A028247(n+1)`
-/

namespace A295832.P16034814777947459909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A153438 n).toNat + A028247 (n + 1)

end

end A295832.P16034814777947459909

/-! ## A295832.P8515597091362236167

`A097873(A024501(n))`
-/

namespace A295832.P8515597091362236167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097873 (A024501 n).toNat

end

end A295832.P8515597091362236167

/-! ## A295832.P17834108739130443780

`A247973(A023613(n))`
-/

namespace A295832.P17834108739130443780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247973 (A023613 n).toNat

end

end A295832.P17834108739130443780

/-! ## A295832.P5154557374380246693

`A056556(A246975(n))`
-/

namespace A295832.P5154557374380246693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A246975 n).toNat

end

end A295832.P5154557374380246693

/-!
# A295835: Numbers k == 3 (mod 4) such that 2^((k-1)/2), 3^((k-1)/2) and 5^((k-1)/2) are congruent to 1 (mod k).

The programs for A295835, the canonical program `A295835.P12833890992126827010` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295835 has offset 1).

The definition of A295835 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4932 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295835.P12833890992126827010

`p?[20*(n+1)-n²%12]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295835

/-- `p?[20*(n+1)-n²%12]` -/
def P12833890992126827010.Spec : Prop :=
  ∀ n, P12833890992126827010.a n = A295835 (n + 1)

theorem P12833890992126827010.correct : P12833890992126827010.Spec := by
  intro n
  simp only [A295835, Nat.add_sub_cancel]

end A295835

/-! ## A295835.P11463229724053423470

`∩[A134517(n+1), A141180(n+1)]`
-/

namespace A295835.P11463229724053423470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295835.P11463229724053423470

namespace A295835

/-- `∩[A134517(n+1), A141180(n+1)]` -/
def P11463229724053423470.Spec : Prop :=
  ∀ n, (P11463229724053423470.a n : ℤ) = A295835 (n + 1)

end A295835

/-! ## A295835.P6405415152536300830

`∩[A007522(n+1), A141302(n+1)]`
-/

namespace A295835.P6405415152536300830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295835.P6405415152536300830

namespace A295835

/-- `∩[A007522(n+1), A141302(n+1)]` -/
def P6405415152536300830.Spec : Prop :=
  ∀ n, (P6405415152536300830.a n : ℤ) = A295835 (n + 1)

end A295835

/-! ## A295835.P3633478609326813761

`∩[A045382(n+1), A141302(n+1)]`
-/

namespace A295835.P3633478609326813761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295835.P3633478609326813761

namespace A295835

/-- `∩[A045382(n+1), A141302(n+1)]` -/
def P3633478609326813761.Spec : Prop :=
  ∀ n, (P3633478609326813761.a n : ℤ) = A295835 (n + 1)

end A295835

/-! ## A295835.P5111585045324911853

`∩[A068231(n+1), A141180(n+1)]`
-/

namespace A295835.P5111585045324911853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295835.P5111585045324911853

namespace A295835

/-- `∩[A068231(n+1), A141180(n+1)]` -/
def P5111585045324911853.Spec : Prop :=
  ∀ n, (P5111585045324911853.a n : ℤ) = A295835 (n + 1)

end A295835

/-! ## A295835.P17935175524438642030

`∩[A141123(n+1), A141180(n+1)]`
-/

namespace A295835.P17935175524438642030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295835.P17935175524438642030

namespace A295835

/-- `∩[A141123(n+1), A141180(n+1)]` -/
def P17935175524438642030.Spec : Prop :=
  ∀ n, (P17935175524438642030.a n : ℤ) = A295835 (n + 1)

end A295835

/-! ## A295835.P6295788724171772077

`∩[A141171(n+1), A141180(n+1)]`
-/

namespace A295835.P6295788724171772077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295835.P6295788724171772077

namespace A295835

/-- `∩[A141171(n+1), A141180(n+1)]` -/
def P6295788724171772077.Spec : Prop :=
  ∀ n, (P6295788724171772077.a n : ℤ) = A295835 (n + 1)

end A295835

/-! ## A295835.P14878613663772577545

`∩[A141180(n+1), A141187(n+1)]`
-/

namespace A295835.P14878613663772577545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295835.P14878613663772577545

namespace A295835

/-- `∩[A141180(n+1), A141187(n+1)]` -/
def P14878613663772577545.Spec : Prop :=
  ∀ n, (P14878613663772577545.a n : ℤ) = A295835 (n + 1)

end A295835

/-! ## A295835.P9834719439327647047

`∩[A007522(n+1), A141785(n+1)]`
-/

namespace A295835.P9834719439327647047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295835.P9834719439327647047

namespace A295835

/-- `∩[A007522(n+1), A141785(n+1)]` -/
def P9834719439327647047.Spec : Prop :=
  ∀ n, (P9834719439327647047.a n : ℤ) = A295835 (n + 1)

end A295835

/-! ## A295835.P14469880369927932458

`∩[A045382(n+1), A141785(n+1)]`
-/

namespace A295835.P14469880369927932458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295835.P14469880369927932458

namespace A295835

/-- `∩[A045382(n+1), A141785(n+1)]` -/
def P14469880369927932458.Spec : Prop :=
  ∀ n, (P14469880369927932458.a n : ℤ) = A295835 (n + 1)

end A295835

/-! ## A295835.P13306560543995152376

`∩[A130063(n+1), A141785(n+1)]`
-/

namespace A295835.P13306560543995152376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295835.P13306560543995152376

namespace A295835

/-- `∩[A130063(n+1), A141785(n+1)]` -/
def P13306560543995152376.Spec : Prop :=
  ∀ n, (P13306560543995152376.a n : ℤ) = A295835 (n + 1)

end A295835

/-! ## A295835.P17010680929982064440

`∩[A134517(n+1), A141785(n+1)]`
-/

namespace A295835.P17010680929982064440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295835.P17010680929982064440

namespace A295835

/-- `∩[A134517(n+1), A141785(n+1)]` -/
def P17010680929982064440.Spec : Prop :=
  ∀ n, (P17010680929982064440.a n : ℤ) = A295835 (n + 1)

end A295835

/-! ## A295835.P15203474915506573819

`∩[A014663(n+1), A141302(n+1)]`
-/

namespace A295835.P15203474915506573819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295835.P15203474915506573819

namespace A295835

/-- `∩[A014663(n+1), A141302(n+1)]` -/
def P15203474915506573819.Spec : Prop :=
  ∀ n, (P15203474915506573819.a n : ℤ) = A295835 (n + 1)

end A295835

/-! ## A295835.P3441758524854853648

`∩[A053032(n+1), A134517(n+1)]`
-/

namespace A295835.P3441758524854853648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295835.P3441758524854853648

namespace A295835

/-- `∩[A053032(n+1), A134517(n+1)]` -/
def P3441758524854853648.Spec : Prop :=
  ∀ n, (P3441758524854853648.a n : ℤ) = A295835 (n + 1)

end A295835

/-! ## A295835.P10022403062799158474

`∩[A112860(n+1), A134517(n+1)]`
-/

namespace A295835.P10022403062799158474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295835.P10022403062799158474

namespace A295835

/-- `∩[A112860(n+1), A134517(n+1)]` -/
def P10022403062799158474.Spec : Prop :=
  ∀ n, (P10022403062799158474.a n : ℤ) = A295835 (n + 1)

end A295835

/-! ## A295835.P16745285582551195901

`∩[A134517(n+1), A385192(n+1)]`
-/

namespace A295835.P16745285582551195901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295835.P16745285582551195901

namespace A295835

/-- `∩[A134517(n+1), A385192(n+1)]` -/
def P16745285582551195901.Spec : Prop :=
  ∀ n, (P16745285582551195901.a n : ℤ) = A295835 (n + 1)

end A295835

/-! ## A295835.P18231286601673315522

`∩[A040098(n+1), A141302(n+1)]`
-/

namespace A295835.P18231286601673315522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295835.P18231286601673315522

namespace A295835

/-- `∩[A040098(n+1), A141302(n+1)]` -/
def P18231286601673315522.Spec : Prop :=
  ∀ n, (P18231286601673315522.a n : ℤ) = A295835 (n + 1)

end A295835

/-! ## A295835.P6668220835631419626

`∩[A040107(n+1), A141302(n+1)]`
-/

namespace A295835.P6668220835631419626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295835.P6668220835631419626

namespace A295835

/-- `∩[A040107(n+1), A141302(n+1)]` -/
def P6668220835631419626.Spec : Prop :=
  ∀ n, (P6668220835631419626.a n : ℤ) = A295835 (n + 1)

end A295835

/-! ## A295835.P5552506541275717393

`∩[A141180(n+1), A332516(n+1)]`
-/

namespace A295835.P5552506541275717393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295835.P5552506541275717393

namespace A295835

/-- `∩[A141180(n+1), A332516(n+1)]` -/
def P5552506541275717393.Spec : Prop :=
  ∀ n, (P5552506541275717393.a n : ℤ) = A295835 (n + 1)

end A295835

/-!
# A295836: Expansion of e.g.f. 1/(1 - x - x/((1 - x^2)^(1/2) - x/((1 - x^3)^(1/3) - x/((1 - x^4)^(1/4) - ...)))), a continued fraction.

The programs for A295836, there is no canonical definition to state claims against.
-/

/-! ## A295836.P4816112785647693430

`∑[A088804(A195350(n))]`
-/

namespace A295836.P4816112785647693430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088804 (A195350 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295836.P4816112785647693430

/-!
# A295838: Largest value corresponding to a string of n printable ASCII characters.

The programs for A295838, the canonical program `A295838.P6490368146394209147` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295838 has offset 0).

The definition of A295838 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295838.P12318254879440333903

`42/85*(256^n-1)`
-/

namespace A295838.P12318254879440333903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (42 : ℚ) / 85 * ((256 ^ n : ℤ) - 1 : ℚ)

end

end A295838.P12318254879440333903

namespace A295838

/-- `42/85*(256^n-1)` -/
def P12318254879440333903.Spec : Prop :=
  ∀ n, P12318254879440333903.a n = (A295838 n : ℚ)

end A295838

/-! ## A295838.P6490368146394209147

`256*a(n-1)+126` with `a(0)=0`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295838

/-- `256*a(n-1)+126` -/
def P6490368146394209147.Spec : Prop :=
  ∀ n, (P6490368146394209147.a n : ℤ) = A295838 n

theorem P6490368146394209147.correct : P6490368146394209147.Spec := by
  intro n
  simp only [A295838]

end A295838

/-! ## A295838.P3544546767691881760

`record[∑[A077959(A008576(n))]]`
-/

namespace A295838.P3544546767691881760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077959 (A008576 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295838.P3544546767691881760

namespace A295838

/-- `record[∑[A077959(A008576(n))]]` -/
def P3544546767691881760.Spec : Prop :=
  ∀ n, P3544546767691881760.a n = A295838 n

end A295838

/-!
# A295839: a(n) is the number of ways of inserting parentheses into the expression i^i^i^...^i with n i's such that the result is a real value.

The programs for A295839, there is no canonical definition to state claims against.
-/

/-! ## A295839.P10864495179243527206

`and(A007598(n), A052938(A124532(n)))`
-/

namespace A295839.P10864495179243527206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007598 n) (A052938 (A124532 n).toNat)

end

end A295839.P10864495179243527206

/-! ## A295839.P15699765873504328312

`and(A007598(n), A317533(A000108(n)))`
-/

namespace A295839.P15699765873504328312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007598 n) (A317533 (A000108 n).toNat)

end

end A295839.P15699765873504328312

/-! ## A295839.P12633868243224801447

`and(A003325(A374389(n+2)), A007598(n))`
-/

namespace A295839.P12633868243224801447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003325 (A374389 (n + 2)).toNat) (A007598 n)

end

end A295839.P12633868243224801447

/-! ## A295839.P10753915631600567358

`A030433(A326293(n))%A113340(2*(n+1))`
-/

namespace A295839.P10753915631600567358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030433 (A326293 n).toNat) (A113340 (2 * (n + 1)))

end

end A295839.P10753915631600567358

/-!
# A295840: Number of n X n 0..1 arrays with each 1 adjacent to 1 or 2 king-move neighboring 1's.

The programs for A295840, there is no canonical definition to state claims against.
-/

/-! ## A295840.P10625857457118107609

`A295847(∑[4*n]+1)`
-/

namespace A295840.P10625857457118107609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A295840.P10625857457118107609

/-! ## A295840.P10714100518707263307

`record[A003982(n)*A295847(n+1)]`
-/

namespace A295840.P10714100518707263307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A295847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295840.P10714100518707263307

/-! ## A295840.P3385659060697525744

`record[A077606(n+1)*A295847(n+1)]`
-/

namespace A295840.P3385659060697525744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A295847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295840.P3385659060697525744

/-! ## A295840.P12741111283619598449

`A007318(∑[n])*A295847(A001844(n))`
-/

namespace A295840.P12741111283619598449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A295847 (A001844 n).toNat

end

end A295840.P12741111283619598449

/-! ## A295840.P16922364794519225597

`A295847(A001844(n))+A008683(4*(n+1))`
-/

namespace A295840.P16922364794519225597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (A001844 n).toNat + A008683 (4 * (n + 1))

end

end A295840.P16922364794519225597

/-!
# A295841: Number of n X 2 0..1 arrays with each 1 adjacent to 1 or 2 king-move neighboring 1s.

The programs for A295841, the canonical program `A295841.P2228889654049131557` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295841 has offset 1).

The definition of A295841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295841.P2228889654049131557

`3*a(n-1)-a(n-2)+6*a(n-3)-8*a(n-4)` with `a(0)=2, a(1)=11, a(2)=29, a(3)=80`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295841

/-- `3*a(n-1)-a(n-2)+6*a(n-3)-8*a(n-4)` -/
def P2228889654049131557.Spec : Prop :=
  ∀ n, P2228889654049131557.a n = A295841 (n + 1)

theorem P2228889654049131557.correct : P2228889654049131557.Spec := by
  intro n
  simp only [A295841, Nat.add_sub_cancel]

end A295841

/-! ## A295841.P469856462482617370

`A295847(∑[n+1]+2)`
-/

namespace A295841.P469856462482617370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A295841.P469856462482617370

namespace A295841

/-- `A295847(∑[n+1]+2)` -/
def P469856462482617370.Spec : Prop :=
  ∀ n, P469856462482617370.a n = A295841 (n + 1)

end A295841

/-! ## A295841.P5028081703008458419

`record[A295847(A133263(A007599(n)))]`
-/

namespace A295841.P5028081703008458419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (A133263 (A007599 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295841.P5028081703008458419

namespace A295841

/-- `record[A295847(A133263(A007599(n)))]` -/
def P5028081703008458419.Spec : Prop :=
  ∀ n, P5028081703008458419.a n = A295841 (n + 1)

end A295841

/-! ## A295841.P3739195970971869793

`record[A295847(A133263(A008611(n)))]`
-/

namespace A295841.P3739195970971869793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (A133263 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295841.P3739195970971869793

namespace A295841

/-- `record[A295847(A133263(A008611(n)))]` -/
def P3739195970971869793.Spec : Prop :=
  ∀ n, P3739195970971869793.a n = A295841 (n + 1)

end A295841

/-! ## A295841.P14842746694208714015

`lcm(A033999(n), A295847(A000096(n)+3))`
-/

namespace A295841.P14842746694208714015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A295847 (A000096 n + 3).toNat)

end

end A295841.P14842746694208714015

namespace A295841

/-- `lcm(A033999(n), A295847(A000096(n)+3))` -/
def P14842746694208714015.Spec : Prop :=
  ∀ n, (P14842746694208714015.a n : ℤ) = A295841 (n + 1)

end A295841

/-!
# A295842: Number of n X 3 0..1 arrays with each 1 adjacent to 1 or 2 king-move neighboring 1s.

The programs for A295842, there is no canonical definition to state claims against.
-/

/-! ## A295842.P11841952310004499894

`A295847(∑[n+2]+4)`
-/

namespace A295842.P11841952310004499894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A295842.P11841952310004499894

/-! ## A295842.P18237450301012564438

`A015970(n)*A295847(A167614(n+1))`
-/

namespace A295842.P18237450301012564438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 n * A295847 (A167614 (n + 1)).toNat

end

end A295842.P18237450301012564438

/-! ## A295842.P1943307240683165977

`lcm(A033999(n), A295847(A167614(n+1)))`
-/

namespace A295842.P1943307240683165977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A295847 (A167614 (n + 1)).toNat)

end

end A295842.P1943307240683165977

/-! ## A295842.P13247476973020905443

`A295847(A167614(n+1))+A000007(n+1)`
-/

namespace A295842.P13247476973020905443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A295842.P13247476973020905443

/-! ## A295842.P8224353354358708613

`A295847(A167614(n+1))+A034566(n+1)`
-/

namespace A295842.P8224353354358708613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (A167614 (n + 1)).toNat + A034566 (n + 1)

end

end A295842.P8224353354358708613

/-!
# A295843: Number of nX4 0..1 arrays with each 1 adjacent to 1 or 2 king-move neighboring 1s.

The programs for A295843, there is no canonical definition to state claims against.
-/

/-! ## A295843.P11141431917304205997

`A295847(A374004(n+1))`
-/

namespace A295843.P11141431917304205997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (A374004 (n + 1)).toNat

end

end A295843.P11141431917304205997

/-! ## A295843.P10414634786147146201

`A295847(A141214(n)+7)`
-/

namespace A295843.P10414634786147146201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (A141214 n + 7).toNat

end

end A295843.P10414634786147146201

/-! ## A295843.P11380005029547177062

`A295847(A052905(n)+9)`
-/

namespace A295843.P11380005029547177062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (A052905 n + 9).toNat

end

end A295843.P11380005029547177062

/-! ## A295843.P15301333239287215616

`A295847(A167614(n+2)+1)`
-/

namespace A295843.P15301333239287215616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (A167614 (n + 2) + 1).toNat

end

end A295843.P15301333239287215616

/-! ## A295843.P7076638008304148624

`A295847(A046691(n+1)+8)`
-/

namespace A295843.P7076638008304148624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (A046691 (n + 1) + 8).toNat

end

end A295843.P7076638008304148624

/-!
# A295844: Number of nX5 0..1 arrays with each 1 adjacent to 1 or 2 king-move neighboring 1s.

The programs for A295844, there is no canonical definition to state claims against.
-/

/-! ## A295844.P7542112961585735966

`A295847(A374005(n+1))`
-/

namespace A295844.P7542112961585735966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (A374005 (n + 1)).toNat

end

end A295844.P7542112961585735966

/-! ## A295844.P12356500611762661576

`A295847(A155212(n)+13)`
-/

namespace A295844.P12356500611762661576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (A155212 n + 13).toNat

end

end A295844.P12356500611762661576

/-! ## A295844.P5447831555617696159

`A295847(A056000(n)+15)`
-/

namespace A295844.P5447831555617696159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (A056000 n + 15).toNat

end

end A295844.P5447831555617696159

/-! ## A295844.P6990106376105425823

`A295847(A046691(n+2)+9)`
-/

namespace A295844.P6990106376105425823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (A046691 (n + 2) + 9).toNat

end

end A295844.P6990106376105425823

/-! ## A295844.P3325986811906058778

`A295847(A038722(Δ[A023545(n+1)]))`
-/

namespace A295844.P3325986811906058778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A295844.P3325986811906058778

/-!
# A295845: Number of n X 6 0..1 arrays with each 1 adjacent to 1 or 2 king-move neighboring 1's.

The programs for A295845, there is no canonical definition to state claims against.
-/

/-! ## A295845.P11822294735821304985

`A295847(A374007(n+1))`
-/

namespace A295845.P11822294735821304985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (A374007 (n + 1)).toNat

end

end A295845.P11822294735821304985

/-! ## A295845.P3743525472939859560

`A295847(A056115(n)+21)`
-/

namespace A295845.P3743525472939859560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (A056115 n + 21).toNat

end

end A295845.P3743525472939859560

/-! ## A295845.P7860424398520265413

`A295847(eq[7, A131818(n+1)])`
-/

namespace A295845.P7860424398520265413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295845.P7860424398520265413

/-! ## A295845.P10170356281207942939

`A295847(eq[3, A219347(n)])`
-/

namespace A295845.P10170356281207942939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295845.P10170356281207942939

/-! ## A295845.P7242797122404693961

`A295847(eq[5, A193592(n)])`
-/

namespace A295845.P7242797122404693961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295845.P7242797122404693961

/-!
# A295846: Number of nX7 0..1 arrays with each 1 adjacent to 1 or 2 king-move neighboring 1s.

The programs for A295846, there is no canonical definition to state claims against.
-/

/-! ## A295846.P9744448625415222783

`A295847(A374008(n+1))`
-/

namespace A295846.P9744448625415222783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (A374008 (n + 1)).toNat

end

end A295846.P9744448625415222783

/-! ## A295846.P7050454379036664484

`A295847(eq[8, A131818(n+1)])`
-/

namespace A295846.P7050454379036664484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295846.P7050454379036664484

/-! ## A295846.P15341578547859782149

`A295847(eq[4, A219347(n)])`
-/

namespace A295846.P15341578547859782149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295846.P15341578547859782149

/-! ## A295846.P17720765113830370924

`A295847(eq[6, A193592(n)])`
-/

namespace A295846.P17720765113830370924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295846.P17720765113830370924

/-! ## A295846.P528190902712829563

`A295847(A046691(n+5)-2)`
-/

namespace A295846.P528190902712829563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295847 (A046691 (n + 5) - 2).toNat

end

end A295846.P528190902712829563

/-!
# A295847: T(n,k)=Number of nXk 0..1 arrays with each 1 adjacent to 1 or 2 king-move neighboring 1s.

The programs for A295847, there is no canonical definition to state claims against.
-/

/-! ## A295847.P2769848661522784037

`A334966(A218765(n+1))+A081579(n)`
-/

namespace A295847.P2769848661522784037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334966 (A218765 (n + 1)).toNat + A081579 n

end

end A295847.P2769848661522784037

/-!
# A295848: Number of nonnegative solutions to (x,y,z) = 1 and x^2 + y^2 + z^2 = n.

The programs for A295848, there is no canonical definition to state claims against.
-/

/-! ## A295848.P7823508109633118583

`Δ[A295849(A004273(n)-n)]`
-/

namespace A295848.P7823508109633118583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295849 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295848.P7823508109633118583

/-! ## A295848.P417667016897775195

`A295849(n)-A295849(A057428(n)+n)`
-/

namespace A295848.P417667016897775195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295849 n - A295849 (A057428 n + (n : ℤ)).toNat

end

end A295848.P417667016897775195

/-! ## A295848.P9382750600100184541

`A295849(n)-A295849(A004273(n)-n)`
-/

namespace A295848.P9382750600100184541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295849 n - A295849 (A004273 n - (n : ℤ)).toNat

end

end A295848.P9382750600100184541

/-! ## A295848.P12596785856716233523

`Δ[A295849(A008486(n)-(A005843(n)+1))]`
-/

namespace A295848.P12596785856716233523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295849 (A008486 n - (A005843 n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295848.P12596785856716233523

/-! ## A295848.P17999922583539826349

`Δ[A295849(A057428(n)+n)]`
-/

namespace A295848.P17999922583539826349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295849 (A057428 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295848.P17999922583539826349

/-! ## A295848.P2843282432012644733

`Δ[A295849(n-A057428(n)²)]`
-/

namespace A295848.P2843282432012644733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295849 ((n : ℤ) - A057428 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295848.P2843282432012644733

/-! ## A295848.P135140056785513131

`Δ[A295849(A004526(A004273(n)))]`
-/

namespace A295848.P135140056785513131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295849 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295848.P135140056785513131

/-! ## A295848.P13939778255151836663

`A295849(n)-A295849(log2(A011782(n)))`
-/

namespace A295848.P13939778255151836663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295849 n - A295849 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A295848.P13939778255151836663

/-! ## A295848.P14038403255602229520

`A295849(n)-A295849(val(A011782(n), 2))`
-/

namespace A295848.P14038403255602229520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295849 n - A295849 (SequenceMachineLib.valuation (A011782 n).toNat 2)

end

end A295848.P14038403255602229520

/-! ## A295848.P15840878930139684274

`Δ[A295849(log2(A011782(n)))]`
-/

namespace A295848.P15840878930139684274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295849 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295848.P15840878930139684274

/-! ## A295848.P1085616152851951352

`Δ[A295849(val(A011782(n), 2))]`
-/

namespace A295848.P1085616152851951352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295849 (SequenceMachineLib.valuation (A011782 n).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295848.P1085616152851951352

/-! ## A295848.P14780054379021509046

`Δ[A295849(A051162(C(n, 2)))]`
-/

namespace A295848.P14780054379021509046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295849 (A051162 (Nat.choose n 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295848.P14780054379021509046

/-!
# A295849: Number of nonnegative solutions to gcd(x,y,z) = 1 and x^2 + y^2 + z^2 <= n.

The programs for A295849, there is no canonical definition to state claims against.
-/

/-! ## A295849.P14780596965247599690

`a(n-1)+A295848(n)` with `a(0)=0`
-/

namespace A295849.P14780596965247599690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A295848 n

end

end A295849.P14780596965247599690

/-! ## A295849.P10609828846655742724

`∑[A295848(n)]`
-/

namespace A295849.P10609828846655742724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295849.P10609828846655742724

/-! ## A295849.P1557887626347280774

`A295848(n)-(A000007(n)-a(n-1))` with `a(0)=0`
-/

namespace A295849.P1557887626347280774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A295848 n - (A000007 n - a (n - 1))

end

end A295849.P1557887626347280774

/-!
# A295850: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = 0, a(1) = 0, a(2) = 2, a(3) = 1.

The programs for A295850, the canonical program `A295850.P6142610044031938681` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295850 has offset 0).

The definition of A295850 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295850.P6142610044031938681`, by `A295850.P6142610044031938681.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295850.P6142610044031938681

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295850

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P6142610044031938681.Spec : Prop :=
  ∀ n, P6142610044031938681.a n = A295850 n

theorem P6142610044031938681.correct : P6142610044031938681.Spec := by
  intro n
  simp only [A295850]

end A295850

/-! ## A295850.P16081100022841238858

`A000032(n-2)+2*a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A295850.P16081100022841238858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A000032 (n - 2) + 2 * a (n - 2)

end

end A295850.P16081100022841238858

namespace A295850

/-- `A000032(n-2)+2*a(n-2)` -/
def P16081100022841238858.Spec : Prop :=
  ∀ n, P16081100022841238858.a n = A295850 n

end A295850

/-! ## A295850.P13265491966914008591

`A295730(n)+A077957(n)`
-/

namespace A295850.P13265491966914008591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 n + A077957 n

end

end A295850.P13265491966914008591

namespace A295850

/-- `A295730(n)+A077957(n)` -/
def P13265491966914008591.Spec : Prop :=
  ∀ n, P13265491966914008591.a n = A295850 n

end A295850

/-! ## A295850.P6436333515509388596

`A295724(n)-A295725(n)`
-/

namespace A295850.P6436333515509388596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 n - A295725 n

end

end A295850.P6436333515509388596

namespace A295850

/-- `A295724(n)-A295725(n)` -/
def P6436333515509388596.Spec : Prop :=
  ∀ n, P6436333515509388596.a n = A295850 n

end A295850

/-! ## A295850.P15077163460555188866

`A295727(n+2)-A016116(n)`
-/

namespace A295850.P15077163460555188866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295727 (n + 2) - A016116 n

end

end A295850.P15077163460555188866

namespace A295850

/-- `A295727(n+2)-A016116(n)` -/
def P15077163460555188866.Spec : Prop :=
  ∀ n, P15077163460555188866.a n = A295850 n

end A295850

/-! ## A295850.P12725480362552057858

`A005672(n+1)+Δ[A005672(n)]`
-/

namespace A295850.P12725480362552057858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (f1 (n + 1) - f1 n)

end

end A295850.P12725480362552057858

namespace A295850

/-- `A005672(n+1)+Δ[A005672(n)]` -/
def P12725480362552057858.Spec : Prop :=
  ∀ n, P12725480362552057858.a n = A295850 n

end A295850

/-! ## A295850.P14425090776950533616

`A000032(n+1)-A164073(n+1)`
-/

namespace A295850.P14425090776950533616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - A164073 (n + 1)

end

end A295850.P14425090776950533616

namespace A295850

/-- `A000032(n+1)-A164073(n+1)` -/
def P14425090776950533616.Spec : Prop :=
  ∀ n, P14425090776950533616.a n = A295850 n

end A295850

/-! ## A295850.P16547017697761875962

`A000204(n+1)-A164073(n+1)`
-/

namespace A295850.P16547017697761875962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - A164073 (n + 1)

end

end A295850.P16547017697761875962

namespace A295850

/-- `A000204(n+1)-A164073(n+1)` -/
def P16547017697761875962.Spec : Prop :=
  ∀ n, P16547017697761875962.a n = A295850 n

end A295850

/-! ## A295850.P8179641609423371259

`A000032(n+1)-A072946(n+1)/2`
-/

namespace A295850.P8179641609423371259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (n + 1) : ℚ) - (A072946 (n + 1) : ℚ) / 2

end

end A295850.P8179641609423371259

namespace A295850

/-- `A000032(n+1)-A072946(n+1)/2` -/
def P8179641609423371259.Spec : Prop :=
  ∀ n, P8179641609423371259.a n = (A295850 n : ℚ)

end A295850

/-! ## A295850.P1433392354807868979

`A295727(n)+A295728(n)-A005672(n)`
-/

namespace A295850.P1433392354807868979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295727 n + (A295728 n - A005672 n)

end

end A295850.P1433392354807868979

namespace A295850

/-- `A295727(n)+A295728(n)-A005672(n)` -/
def P1433392354807868979.Spec : Prop :=
  ∀ n, P1433392354807868979.a n = A295850 n

end A295850

/-! ## A295850.P9989186845989366664

`A295728(n)+A295730(n)-A295733(n)`
-/

namespace A295850.P9989186845989366664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295728 n + (A295730 n - A295733 n)

end

end A295850.P9989186845989366664

namespace A295850

/-- `A295728(n)+A295730(n)-A295733(n)` -/
def P9989186845989366664.Spec : Prop :=
  ∀ n, P9989186845989366664.a n = A295850 n

end A295850

/-! ## A295850.P9552115730818164767

`A295725(n+1)+A005672(n)+A000045(n)`
-/

namespace A295850.P9552115730818164767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295725 (n + 1) + (A005672 n + A000045 n)

end

end A295850.P9552115730818164767

namespace A295850

/-- `A295725(n+1)+A005672(n)+A000045(n)` -/
def P9552115730818164767.Spec : Prop :=
  ∀ n, P9552115730818164767.a n = A295850 n

end A295850

/-! ## A295850.P3856549046523590806

`A005672(n+1)+A005672(n)-A295725(n)`
-/

namespace A295850.P3856549046523590806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A005672 n - A295725 n)

end

end A295850.P3856549046523590806

namespace A295850

/-- `A005672(n+1)+A005672(n)-A295725(n)` -/
def P3856549046523590806.Spec : Prop :=
  ∀ n, P3856549046523590806.a n = A295850 n

end A295850

/-! ## A295850.P7064069897570330615

`A295729(n)-A028892(n)`
-/

namespace A295850.P7064069897570330615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295729 n - A028892 n

end

end A295850.P7064069897570330615

namespace A295850

/-- `A295729(n)-A028892(n)` -/
def P7064069897570330615.Spec : Prop :=
  ∀ n, P7064069897570330615.a n = A295850 n

end A295850

/-! ## A295850.P10885186126779282679

`A295858(n)-2*A028892(n)`
-/

namespace A295850.P10885186126779282679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295858 n - 2 * A028892 n

end

end A295850.P10885186126779282679

namespace A295850

/-- `A295858(n)-2*A028892(n)` -/
def P10885186126779282679.Spec : Prop :=
  ∀ n, P10885186126779282679.a n = A295850 n

end A295850

/-! ## A295850.P6508971265781477130

`(A295737(n+1)+A000045(n+1))/2`
-/

namespace A295850.P6508971265781477130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295737 (n + 1) + A000045 (n + 1) : ℚ) / 2

end

end A295850.P6508971265781477130

namespace A295850

/-- `(A295737(n+1)+A000045(n+1))/2` -/
def P6508971265781477130.Spec : Prop :=
  ∀ n, P6508971265781477130.a n = (A295850 n : ℚ)

end A295850

/-! ## A295850.P15072734571000266137

`A295729(n)+A295729(n)-A295858(n)`
-/

namespace A295850.P15072734571000266137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295729 n + (A295729 n - A295858 n)

end

end A295850.P15072734571000266137

namespace A295850

/-- `A295729(n)+A295729(n)-A295858(n)` -/
def P15072734571000266137.Spec : Prop :=
  ∀ n, P15072734571000266137.a n = A295850 n

end A295850

/-! ## A295850.P314143732185648004

`A000032(n)+A295721(n)-A000032(n+1)`
-/

namespace A295850.P314143732185648004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A295721 n - A000032 (n + 1))

end

end A295850.P314143732185648004

namespace A295850

/-- `A000032(n)+A295721(n)-A000032(n+1)` -/
def P314143732185648004.Spec : Prop :=
  ∀ n, P314143732185648004.a n = A295850 n

end A295850

/-! ## A295850.P6115455034375642334

`A295733(n+1)+A000045(n)-A295730(n)`
-/

namespace A295850.P6115455034375642334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295733 (n + 1) + (A000045 n - A295730 n)

end

end A295850.P6115455034375642334

namespace A295850

/-- `A295733(n+1)+A000045(n)-A295730(n)` -/
def P6115455034375642334.Spec : Prop :=
  ∀ n, P6115455034375642334.a n = A295850 n

end A295850

/-!
# A295851: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = 0, a(1) = -1, a(2) = 2, a(3) = 1.

The programs for A295851, the canonical program `A295851.P15027967394644258020` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295851 has offset 0).

The definition of A295851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295851.P15027967394644258020`, by `A295851.P15027967394644258020.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295851.P15027967394644258020

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=-1, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295851

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P15027967394644258020.Spec : Prop :=
  ∀ n, P15027967394644258020.a n = A295851 n

theorem P15027967394644258020.correct : P15027967394644258020.Spec := by
  intro n
  simp only [A295851]

end A295851

/-! ## A295851.P15509012498721727191

`A295731(n)+A077957(n)`
-/

namespace A295851.P15509012498721727191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295731 n + A077957 n

end

end A295851.P15509012498721727191

namespace A295851

/-- `A295731(n)+A077957(n)` -/
def P15509012498721727191.Spec : Prop :=
  ∀ n, P15509012498721727191.a n = A295851 n

end A295851

/-! ## A295851.P12714989301645272660

`A295733(n+1)+Δ[A000045(n)]`
-/

namespace A295851.P12714989301645272660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295733 (n + 1) + (f1 (n + 1) - f1 n)

end

end A295851.P12714989301645272660

namespace A295851

/-- `A295733(n+1)+Δ[A000045(n)]` -/
def P12714989301645272660.Spec : Prop :=
  ∀ n, P12714989301645272660.a n = A295851 n

end A295851

/-! ## A295851.P14483960476189116642

`A295730(n+1)+A295725(n+1)`
-/

namespace A295851.P14483960476189116642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 (n + 1) + A295725 (n + 1)

end

end A295851.P14483960476189116642

namespace A295851

/-- `A295730(n+1)+A295725(n+1)` -/
def P14483960476189116642.Spec : Prop :=
  ∀ n, P14483960476189116642.a n = A295851 n

end A295851

/-! ## A295851.P3033038361675137185

`A391682(n+1)-A164073(n+1)`
-/

namespace A295851.P3033038361675137185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391682 (n + 1) - A164073 (n + 1)

end

end A295851.P3033038361675137185

namespace A295851

/-- `A391682(n+1)-A164073(n+1)` -/
def P3033038361675137185.Spec : Prop :=
  ∀ n, P3033038361675137185.a n = A295851 n

end A295851

/-! ## A295851.P1724237045878299815

`A079289(n+2)-A016116(n+3)`
-/

namespace A295851.P1724237045878299815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079289 (n + 2) - A016116 (n + 3)

end

end A295851.P1724237045878299815

namespace A295851

/-- `A079289(n+2)-A016116(n+3)` -/
def P1724237045878299815.Spec : Prop :=
  ∀ n, P1724237045878299815.a n = A295851 n

end A295851

/-! ## A295851.P17530920275169824868

`A020701(n)-3*A016116(n+1)`
-/

namespace A295851.P17530920275169824868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n - 3 * A016116 (n + 1)

end

end A295851.P17530920275169824868

namespace A295851

/-- `A020701(n)-3*A016116(n+1)` -/
def P17530920275169824868.Spec : Prop :=
  ∀ n, P17530920275169824868.a n = A295851 n

end A295851

/-! ## A295851.P11712199716095252638

`A295728(n)+A295729(n)-A005672(n)`
-/

namespace A295851.P11712199716095252638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295728 n + (A295729 n - A005672 n)

end

end A295851.P11712199716095252638

namespace A295851

/-- `A295728(n)+A295729(n)-A005672(n)` -/
def P11712199716095252638.Spec : Prop :=
  ∀ n, P11712199716095252638.a n = A295851 n

end A295851

/-! ## A295851.P4705455485218581857

`A295728(n)+A295730(n)-A295725(n)`
-/

namespace A295851.P4705455485218581857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295728 n + (A295730 n - A295725 n)

end

end A295851.P4705455485218581857

namespace A295851

/-- `A295728(n)+A295730(n)-A295725(n)` -/
def P4705455485218581857.Spec : Prop :=
  ∀ n, P4705455485218581857.a n = A295851 n

end A295851

/-! ## A295851.P6542432733719096812

`A005672(n+1)+A295726(n)-A005672(n)`
-/

namespace A295851.P6542432733719096812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295726 n - A005672 n)

end

end A295851.P6542432733719096812

namespace A295851

/-- `A005672(n+1)+A295726(n)-A005672(n)` -/
def P6542432733719096812.Spec : Prop :=
  ∀ n, P6542432733719096812.a n = A295851 n

end A295851

/-! ## A295851.P5473321356856520764

`A000045(n+1)+A295733(n+1)-A000045(n)`
-/

namespace A295851.P5473321356856520764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A295733 (n + 1) - A000045 n)

end

end A295851.P5473321356856520764

namespace A295851

/-- `A000045(n+1)+A295733(n+1)-A000045(n)` -/
def P5473321356856520764.Spec : Prop :=
  ∀ n, P5473321356856520764.a n = A295851 n

end A295851

/-! ## A295851.P16127973341150444944

`A295727(n+1)+A295737(n+1)-A000045(n)`
-/

namespace A295851.P16127973341150444944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295727 (n + 1) + (A295737 (n + 1) - A000045 n)

end

end A295851.P16127973341150444944

namespace A295851

/-- `A295727(n+1)+A295737(n+1)-A000045(n)` -/
def P16127973341150444944.Spec : Prop :=
  ∀ n, P16127973341150444944.a n = A295851 n

end A295851

/-! ## A295851.P16977766181466134105

`A295718(n+1)+A295736(n+1)-A295718(n)`
-/

namespace A295851.P16977766181466134105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295718 (n + 1) + (A295736 (n + 1) - A295718 n)

end

end A295851.P16977766181466134105

namespace A295851

/-- `A295718(n+1)+A295736(n+1)-A295718(n)` -/
def P16977766181466134105.Spec : Prop :=
  ∀ n, P16977766181466134105.a n = A295851 n

end A295851

/-! ## A295851.P14127756839522143160

`A295730(n+1)+A295737(n+1)-A295729(n)`
-/

namespace A295851.P14127756839522143160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 (n + 1) + (A295737 (n + 1) - A295729 n)

end

end A295851.P14127756839522143160

namespace A295851

/-- `A295730(n+1)+A295737(n+1)-A295729(n)` -/
def P14127756839522143160.Spec : Prop :=
  ∀ n, P14127756839522143160.a n = A295851 n

end A295851

/-! ## A295851.P1525656639121512162

`A295735(n+1)-Δ[A028892(n+1)]`
-/

namespace A295851.P1525656639121512162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295735 (n + 1) - (f1 (n + 1) - f1 n)

end

end A295851.P1525656639121512162

namespace A295851

/-- `A295735(n+1)-Δ[A028892(n+1)]` -/
def P1525656639121512162.Spec : Prop :=
  ∀ n, P1525656639121512162.a n = A295851 n

end A295851

/-! ## A295851.P15777634395249316815

`A295729(n+1)+A295737(n+1)-A295728(n+1)`
-/

namespace A295851.P15777634395249316815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295729 (n + 1) + (A295737 (n + 1) - A295728 (n + 1))

end

end A295851.P15777634395249316815

namespace A295851

/-- `A295729(n+1)+A295737(n+1)-A295728(n+1)` -/
def P15777634395249316815.Spec : Prop :=
  ∀ n, P15777634395249316815.a n = A295851 n

end A295851

/-! ## A295851.P18120045746814939745

`A295722(n)-(A295730(n)+A005672(n))`
-/

namespace A295851.P18120045746814939745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295722 n - (A295730 n + A005672 n)

end

end A295851.P18120045746814939745

namespace A295851

/-- `A295722(n)-(A295730(n)+A005672(n))` -/
def P18120045746814939745.Spec : Prop :=
  ∀ n, P18120045746814939745.a n = A295851 n

end A295851

/-!
# A295852: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = -1, a(1) = -1, a(2) = 2, a(3) = 1.

The programs for A295852, the canonical program `A295852.P3131694768448593333` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295852 has offset 0).

The definition of A295852 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295852.P3131694768448593333`, by `A295852.P3131694768448593333.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295852.P3131694768448593333

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=-1, a(1)=-1, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295852

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P3131694768448593333.Spec : Prop :=
  ∀ n, P3131694768448593333.a n = A295852 n

theorem P3131694768448593333.correct : P3131694768448593333.Spec := by
  intro n
  simp only [A295852]

end A295852

/-! ## A295852.P15286923515884952761

`A295861(n)+A077957(n)`
-/

namespace A295852.P15286923515884952761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295861 n + A077957 n

end

end A295852.P15286923515884952761

namespace A295852

/-- `A295861(n)+A077957(n)` -/
def P15286923515884952761.Spec : Prop :=
  ∀ n, P15286923515884952761.a n = A295852 n

end A295852

/-! ## A295852.P17033200943580935465

`A295861(n)+abs(A077966(n))`
-/

namespace A295852.P17033200943580935465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295861 n + |A077966 n|

end

end A295852.P17033200943580935465

namespace A295852

/-- `A295861(n)+abs(A077966(n))` -/
def P17033200943580935465.Spec : Prop :=
  ∀ n, P17033200943580935465.a n = A295852 n

end A295852

/-! ## A295852.P11953615585040185149

`A295861(n)+Δ[A060546(n)]`
-/

namespace A295852.P11953615585040185149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295861 n + (f1 (n + 1) - f1 n)

end

end A295852.P11953615585040185149

namespace A295852

/-- `A295861(n)+Δ[A060546(n)]` -/
def P11953615585040185149.Spec : Prop :=
  ∀ n, P11953615585040185149.a n = A295852 n

end A295852

/-! ## A295852.P15685316535995035795

`A295732(n+1)-A295725(n)`
-/

namespace A295852.P15685316535995035795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295732 (n + 1) - A295725 n

end

end A295852.P15685316535995035795

namespace A295852

/-- `A295732(n+1)-A295725(n)` -/
def P15685316535995035795.Spec : Prop :=
  ∀ n, P15685316535995035795.a n = A295852 n

end A295852

/-! ## A295852.P4924320609253428467

`A152163(n)+2*A295729(n)`
-/

namespace A295852.P4924320609253428467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + 2 * A295729 n

end

end A295852.P4924320609253428467

namespace A295852

/-- `A152163(n)+2*A295729(n)` -/
def P4924320609253428467.Spec : Prop :=
  ∀ n, P4924320609253428467.a n = A295852 n

end A295852

/-! ## A295852.P9301468471476554876

`A028892(n+5)-A000032(n)`
-/

namespace A295852.P9301468471476554876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028892 (n + 5) - A000032 n

end

end A295852.P9301468471476554876

namespace A295852

/-- `A028892(n+5)-A000032(n)` -/
def P9301468471476554876.Spec : Prop :=
  ∀ n, P9301468471476554876.a n = A295852 n

end A295852

/-! ## A295852.P902164973227209633

`A295733(n+1)+A005672(n+1)`
-/

namespace A295852.P902164973227209633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295733 (n + 1) + A005672 (n + 1)

end

end A295852.P902164973227209633

namespace A295852

/-- `A295733(n+1)+A005672(n+1)` -/
def P902164973227209633.Spec : Prop :=
  ∀ n, P902164973227209633.a n = A295852 n

end A295852

/-! ## A295852.P8942299886749636775

`A295735(n+1)+A295725(n+1)`
-/

namespace A295852.P8942299886749636775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295735 (n + 1) + A295725 (n + 1)

end

end A295852.P8942299886749636775

namespace A295852

/-- `A295735(n+1)+A295725(n+1)` -/
def P8942299886749636775.Spec : Prop :=
  ∀ n, P8942299886749636775.a n = A295852 n

end A295852

/-! ## A295852.P3672137629878299621

`A295736(n+1)+A295727(n+1)`
-/

namespace A295852.P3672137629878299621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295736 (n + 1) + A295727 (n + 1)

end

end A295852.P3672137629878299621

namespace A295852

/-- `A295736(n+1)+A295727(n+1)` -/
def P3672137629878299621.Spec : Prop :=
  ∀ n, P3672137629878299621.a n = A295852 n

end A295852

/-! ## A295852.P8909147762446725301

`A295723(n+2)-A295718(n+1)`
-/

namespace A295852.P8909147762446725301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295723 (n + 2) - A295718 (n + 1)

end

end A295852.P8909147762446725301

namespace A295852

/-- `A295723(n+2)-A295718(n+1)` -/
def P8909147762446725301.Spec : Prop :=
  ∀ n, P8909147762446725301.a n = A295852 n

end A295852

/-! ## A295852.P11018850444371164758

`A295737(n+1)+2*A005672(n)`
-/

namespace A295852.P11018850444371164758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295737 (n + 1) + 2 * A005672 n

end

end A295852.P11018850444371164758

namespace A295852

/-- `A295737(n+1)+2*A005672(n)` -/
def P11018850444371164758.Spec : Prop :=
  ∀ n, P11018850444371164758.a n = A295852 n

end A295852

/-! ## A295852.P4743269661441045784

`A295730(n+1)+A295737(n+1)-A005672(n+1)`
-/

namespace A295852.P4743269661441045784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 (n + 1) + (A295737 (n + 1) - A005672 (n + 1))

end

end A295852.P4743269661441045784

namespace A295852

/-- `A295730(n+1)+A295737(n+1)-A005672(n+1)` -/
def P4743269661441045784.Spec : Prop :=
  ∀ n, P4743269661441045784.a n = A295852 n

end A295852

/-! ## A295852.P12508413736988073658

`A295726(n+1)+A295737(n+1)-A295728(n+1)`
-/

namespace A295852.P12508413736988073658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295726 (n + 1) + (A295737 (n + 1) - A295728 (n + 1))

end

end A295852.P12508413736988073658

namespace A295852

/-- `A295726(n+1)+A295737(n+1)-A295728(n+1)` -/
def P12508413736988073658.Spec : Prop :=
  ∀ n, P12508413736988073658.a n = A295852 n

end A295852

/-! ## A295852.P3587827807843716210

`A295722(n)-2*A005672(n)`
-/

namespace A295852.P3587827807843716210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295722 n - 2 * A005672 n

end

end A295852.P3587827807843716210

namespace A295852

/-- `A295722(n)-2*A005672(n)` -/
def P3587827807843716210.Spec : Prop :=
  ∀ n, P3587827807843716210.a n = A295852 n

end A295852

/-! ## A295852.P9218052511649991171

`(A295853(n)+A295851(n))/2`
-/

namespace A295852.P9218052511649991171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295853 n + A295851 n : ℚ) / 2

end

end A295852.P9218052511649991171

namespace A295852

/-- `(A295853(n)+A295851(n))/2` -/
def P9218052511649991171.Spec : Prop :=
  ∀ n, P9218052511649991171.a n = (A295852 n : ℚ)

end A295852

/-!
# A295853: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = -2, a(1) = -1, a(2) = 2, a(3) = 1.

The programs for A295853, the canonical program `A295853.P14331219239172909358` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295853 has offset 0).

The definition of A295853 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295853.P14331219239172909358`, by `A295853.P14331219239172909358.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295853.P14331219239172909358

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=-2, a(1)=-1, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295853

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P14331219239172909358.Spec : Prop :=
  ∀ n, P14331219239172909358.a n = A295853 n

theorem P14331219239172909358.correct : P14331219239172909358.Spec := by
  intro n
  simp only [A295853]

end A295853

/-! ## A295853.P3399016251487204398

`A295856(n)+∑[A295860(n)]`
-/

namespace A295853.P3399016251487204398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295856 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295853.P3399016251487204398

namespace A295853

/-- `A295856(n)+∑[A295860(n)]` -/
def P3399016251487204398.Spec : Prop :=
  ∀ n, P3399016251487204398.a n = A295853 n

end A295853

/-! ## A295853.P9072135909710065676

`A295733(n+1)+A295729(n)`
-/

namespace A295853.P9072135909710065676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295733 (n + 1) + A295729 n

end

end A295853.P9072135909710065676

namespace A295853

/-- `A295733(n+1)+A295729(n)` -/
def P9072135909710065676.Spec : Prop :=
  ∀ n, P9072135909710065676.a n = A295853 n

end A295853

/-! ## A295853.P16789173005033167418

`A295736(n+1)+A005672(n+2)`
-/

namespace A295853.P16789173005033167418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295736 (n + 1) + A005672 (n + 2)

end

end A295853.P16789173005033167418

namespace A295853

/-- `A295736(n+1)+A005672(n+2)` -/
def P16789173005033167418.Spec : Prop :=
  ∀ n, P16789173005033167418.a n = A295853 n

end A295853

/-! ## A295853.P7537311384124612706

`A295731(n)+A295856(n)-A212804(n)`
-/

namespace A295853.P7537311384124612706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295731 n + (A295856 n - A212804 n)

end

end A295853.P7537311384124612706

namespace A295853

/-- `A295731(n)+A295856(n)-A212804(n)` -/
def P7537311384124612706.Spec : Prop :=
  ∀ n, P7537311384124612706.a n = A295853 n

end A295853

/-! ## A295853.P3602756606632734061

`A295729(n)+A295731(n)-A295725(n)`
-/

namespace A295853.P3602756606632734061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295729 n + (A295731 n - A295725 n)

end

end A295853.P3602756606632734061

namespace A295853

/-- `A295729(n)+A295731(n)-A295725(n)` -/
def P3602756606632734061.Spec : Prop :=
  ∀ n, P3602756606632734061.a n = A295853 n

end A295853

/-! ## A295853.P753053276398794681

`A295859(n)+A295859(n)-A295860(n)`
-/

namespace A295853.P753053276398794681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295859 n + (A295859 n - A295860 n)

end

end A295853.P753053276398794681

namespace A295853

/-- `A295859(n)+A295859(n)-A295860(n)` -/
def P753053276398794681.Spec : Prop :=
  ∀ n, P753053276398794681.a n = A295853 n

end A295853

/-! ## A295853.P16970266015709660045

`A295737(n+1)+A295730(n)+A005672(n)`
-/

namespace A295853.P16970266015709660045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295737 (n + 1) + (A295730 n + A005672 n)

end

end A295853.P16970266015709660045

namespace A295853

/-- `A295737(n+1)+A295730(n)+A005672(n)` -/
def P16970266015709660045.Spec : Prop :=
  ∀ n, P16970266015709660045.a n = A295853 n

end A295853

/-! ## A295853.P8973928428017125960

`A295728(n+1)+A295737(n+1)-A000045(n)`
-/

namespace A295853.P8973928428017125960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295728 (n + 1) + (A295737 (n + 1) - A000045 n)

end

end A295853.P8973928428017125960

namespace A295853

/-- `A295728(n+1)+A295737(n+1)-A000045(n)` -/
def P8973928428017125960.Spec : Prop :=
  ∀ n, P8973928428017125960.a n = A295853 n

end A295853

/-! ## A295853.P6840521981293103387

`A295724(n+1)+A295737(n+1)-A000045(n+1)`
-/

namespace A295853.P6840521981293103387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 (n + 1) + (A295737 (n + 1) - A000045 (n + 1))

end

end A295853.P6840521981293103387

namespace A295853

/-- `A295724(n+1)+A295737(n+1)-A000045(n+1)` -/
def P6840521981293103387.Spec : Prop :=
  ∀ n, P6840521981293103387.a n = A295853 n

end A295853

/-! ## A295853.P18033105018032203802

`A295735(n+1)+A295737(n+1)-A005672(n+1)`
-/

namespace A295853.P18033105018032203802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295735 (n + 1) + (A295737 (n + 1) - A005672 (n + 1))

end

end A295853.P18033105018032203802

namespace A295853

/-- `A295735(n+1)+A295737(n+1)-A005672(n+1)` -/
def P18033105018032203802.Spec : Prop :=
  ∀ n, P18033105018032203802.a n = A295853 n

end A295853

/-! ## A295853.P13832701855078628439

`A295731(n+1)+A295737(n+1)-A295730(n+1)`
-/

namespace A295853.P13832701855078628439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295731 (n + 1) + (A295737 (n + 1) - A295730 (n + 1))

end

end A295853.P13832701855078628439

namespace A295853

/-- `A295731(n+1)+A295737(n+1)-A295730(n+1)` -/
def P13832701855078628439.Spec : Prop :=
  ∀ n, P13832701855078628439.a n = A295853 n

end A295853

/-! ## A295853.P13082123932918752479

`2*A295859(n)-A295860(n)`
-/

namespace A295853.P13082123932918752479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295859 n - A295860 n

end

end A295853.P13082123932918752479

namespace A295853

/-- `2*A295859(n)-A295860(n)` -/
def P13082123932918752479.Spec : Prop :=
  ∀ n, P13082123932918752479.a n = A295853 n

end A295853

/-!
# A295854: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = -2, a(1) = -2, a(2) = 2, a(3) = 1.

The programs for A295854, the canonical program `A295854.P13142592100955173430` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295854 has offset 0).

The definition of A295854 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295854.P13142592100955173430`, by `A295854.P13142592100955173430.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295854.P13142592100955173430

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=-2, a(1)=-2, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295854

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P13142592100955173430.Spec : Prop :=
  ∀ n, P13142592100955173430.a n = A295854 n

theorem P13142592100955173430.correct : P13142592100955173430.Spec := by
  intro n
  simp only [A295854]

end A295854

/-! ## A295854.P4591184819856304257

`2*A295852(n)-A295850(n)`
-/

namespace A295854.P4591184819856304257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295852 n - A295850 n

end

end A295854.P4591184819856304257

namespace A295854

/-- `2*A295852(n)-A295850(n)` -/
def P4591184819856304257.Spec : Prop :=
  ∀ n, P4591184819856304257.a n = A295854 n

end A295854

/-! ## A295854.P18389592907558682363

`A295853(n)+A295857(n)-A295723(n)`
-/

namespace A295854.P18389592907558682363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295853 n + (A295857 n - A295723 n)

end

end A295854.P18389592907558682363

namespace A295854

/-- `A295853(n)+A295857(n)-A295723(n)` -/
def P18389592907558682363.Spec : Prop :=
  ∀ n, P18389592907558682363.a n = A295854 n

end A295854

/-! ## A295854.P8511011067621902988

`A295851(n)+A295853(n)-A295850(n)`
-/

namespace A295854.P8511011067621902988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295851 n + (A295853 n - A295850 n)

end

end A295854.P8511011067621902988

namespace A295854

/-- `A295851(n)+A295853(n)-A295850(n)` -/
def P8511011067621902988.Spec : Prop :=
  ∀ n, P8511011067621902988.a n = A295854 n

end A295854

/-! ## A295854.P14906032450702049645

`A295853(n)+A295858(n)-A295860(n)`
-/

namespace A295854.P14906032450702049645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295853 n + (A295858 n - A295860 n)

end

end A295854.P14906032450702049645

namespace A295854

/-- `A295853(n)+A295858(n)-A295860(n)` -/
def P14906032450702049645.Spec : Prop :=
  ∀ n, P14906032450702049645.a n = A295854 n

end A295854

/-! ## A295854.P5288042572281872663

`A295853(n)+A295861(n)-A295858(n)`
-/

namespace A295854.P5288042572281872663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295853 n + (A295861 n - A295858 n)

end

end A295854.P5288042572281872663

namespace A295854

/-- `A295853(n)+A295861(n)-A295858(n)` -/
def P5288042572281872663.Spec : Prop :=
  ∀ n, P5288042572281872663.a n = A295854 n

end A295854

/-! ## A295854.P14844087230236900569

`A295737(n+1)+A295731(n)+A005672(n)`
-/

namespace A295854.P14844087230236900569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295737 (n + 1) + (A295731 n + A005672 n)

end

end A295854.P14844087230236900569

namespace A295854

/-- `A295737(n+1)+A295731(n)+A005672(n)` -/
def P14844087230236900569.Spec : Prop :=
  ∀ n, P14844087230236900569.a n = A295854 n

end A295854

/-! ## A295854.P11633928632086741166

`A295737(n+1)+A295735(n)+A295730(n)`
-/

namespace A295854.P11633928632086741166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295737 (n + 1) + (A295735 n + A295730 n)

end

end A295854.P11633928632086741166

namespace A295854

/-- `A295737(n+1)+A295735(n)+A295730(n)` -/
def P11633928632086741166.Spec : Prop :=
  ∀ n, P11633928632086741166.a n = A295854 n

end A295854

/-! ## A295854.P10466072250770642480

`A005672(n+1)+A295737(n+1)+A295732(n)`
-/

namespace A295854.P10466072250770642480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295737 (n + 1) + A295732 n)

end

end A295854.P10466072250770642480

namespace A295854

/-- `A005672(n+1)+A295737(n+1)+A295732(n)` -/
def P10466072250770642480.Spec : Prop :=
  ∀ n, P10466072250770642480.a n = A295854 n

end A295854

/-! ## A295854.P62551033256902016

`A295730(n+1)+A295736(n+1)+A005672(n)`
-/

namespace A295854.P62551033256902016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 (n + 1) + (A295736 (n + 1) + A005672 n)

end

end A295854.P62551033256902016

namespace A295854

/-- `A295730(n+1)+A295736(n+1)+A005672(n)` -/
def P62551033256902016.Spec : Prop :=
  ∀ n, P62551033256902016.a n = A295854 n

end A295854

/-! ## A295854.P12548397497008254213

`A295733(n+1)+A295733(n+1)+A005672(n)`
-/

namespace A295854.P12548397497008254213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295733 (n + 1) + (A295733 (n + 1) + A005672 n)

end

end A295854.P12548397497008254213

namespace A295854

/-- `A295733(n+1)+A295733(n+1)+A005672(n)` -/
def P12548397497008254213.Spec : Prop :=
  ∀ n, P12548397497008254213.a n = A295854 n

end A295854

/-!
# A295855: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = 1, a(1) = -2, a(2) = 2, a(3) = 1.

The programs for A295855, the canonical program `A295855.P17380542629378723310` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295855 has offset 0).

The definition of A295855 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295855.P17380542629378723310`, by `A295855.P17380542629378723310.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295855.P17380542629378723310

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=-2, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295855

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P17380542629378723310.Spec : Prop :=
  ∀ n, P17380542629378723310.a n = A295855 n

theorem P17380542629378723310.correct : P17380542629378723310.Spec := by
  intro n
  simp only [A295855]

end A295855

/-! ## A295855.P13578261044614144150

`2*A295726(n)-A295730(n)`
-/

namespace A295855.P13578261044614144150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295726 n - A295730 n

end

end A295855.P13578261044614144150

namespace A295855

/-- `2*A295726(n)-A295730(n)` -/
def P13578261044614144150.Spec : Prop :=
  ∀ n, P13578261044614144150.a n = A295855 n

end A295855

/-! ## A295855.P7552635209322036418

`A152163(n)+A295729(n)+A295728(n)`
-/

namespace A295855.P7552635209322036418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + (A295729 n + A295728 n)

end

end A295855.P7552635209322036418

namespace A295855

/-- `A152163(n)+A295729(n)+A295728(n)` -/
def P7552635209322036418.Spec : Prop :=
  ∀ n, P7552635209322036418.a n = A295855 n

end A295855

/-! ## A295855.P10005177018700505131

`A152163(n)+A295850(n)+A295735(n)`
-/

namespace A295855.P10005177018700505131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + (A295850 n + A295735 n)

end

end A295855.P10005177018700505131

namespace A295855

/-- `A152163(n)+A295850(n)+A295735(n)` -/
def P10005177018700505131.Spec : Prop :=
  ∀ n, P10005177018700505131.a n = A295855 n

end A295855

/-! ## A295855.P10943125493591695660

`A118658(n)+A295851(n)-A016116(n)`
-/

namespace A295855.P10943125493591695660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + (A295851 n - A016116 n)

end

end A295855.P10943125493591695660

namespace A295855

/-- `A118658(n)+A295851(n)-A016116(n)` -/
def P10943125493591695660.Spec : Prop :=
  ∀ n, P10943125493591695660.a n = A295855 n

end A295855

/-! ## A295855.P2391998892925810033

`A295726(n)+A295728(n)-A005672(n)`
-/

namespace A295855.P2391998892925810033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295726 n + (A295728 n - A005672 n)

end

end A295855.P2391998892925810033

namespace A295855

/-- `A295726(n)+A295728(n)-A005672(n)` -/
def P2391998892925810033.Spec : Prop :=
  ∀ n, P2391998892925810033.a n = A295855 n

end A295855

/-! ## A295855.P13536994102072500462

`A295728(n)+A295735(n)-A295725(n)`
-/

namespace A295855.P13536994102072500462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295728 n + (A295735 n - A295725 n)

end

end A295855.P13536994102072500462

namespace A295855

/-- `A295728(n)+A295735(n)-A295725(n)` -/
def P13536994102072500462.Spec : Prop :=
  ∀ n, P13536994102072500462.a n = A295855 n

end A295855

/-! ## A295855.P14185814520309953892

`A295735(n)+A295856(n)-A295727(n)`
-/

namespace A295855.P14185814520309953892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295735 n + (A295856 n - A295727 n)

end

end A295855.P14185814520309953892

namespace A295855

/-- `A295735(n)+A295856(n)-A295727(n)` -/
def P14185814520309953892.Spec : Prop :=
  ∀ n, P14185814520309953892.a n = A295855 n

end A295855

/-!
# A295856: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = 0, a(1) = 0, a(2) = 3, a(3) = 1.

The programs for A295856, the canonical program `A295856.P16363189496221070720` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295856 has offset 0).

The definition of A295856 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295856.P16363189496221070720`, by `A295856.P16363189496221070720.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295856.P16363189496221070720

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295856

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P16363189496221070720.Spec : Prop :=
  ∀ n, P16363189496221070720.a n = A295856 n

theorem P16363189496221070720.correct : P16363189496221070720.Spec := by
  intro n
  simp only [A295856]

end A295856

/-! ## A295856.P2887721505399034943

`A295729(n)+A077957(n)`
-/

namespace A295856.P2887721505399034943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295729 n + A077957 n

end

end A295856.P2887721505399034943

namespace A295856

/-- `A295729(n)+A077957(n)` -/
def P2887721505399034943.Spec : Prop :=
  ∀ n, P2887721505399034943.a n = A295856 n

end A295856

/-! ## A295856.P13660510054185599132

`A000285(n)-A143095(n)`
-/

namespace A295856.P13660510054185599132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n - A143095 n

end

end A295856.P13660510054185599132

namespace A295856

/-- `A000285(n)-A143095(n)` -/
def P13660510054185599132.Spec : Prop :=
  ∀ n, P13660510054185599132.a n = A295856 n

end A295856

/-! ## A295856.P471102246813768214

`A295857(n)-A295734(n)`
-/

namespace A295856.P471102246813768214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295857 n - A295734 n

end

end A295856.P471102246813768214

namespace A295856

/-- `A295857(n)-A295734(n)` -/
def P471102246813768214.Spec : Prop :=
  ∀ n, P471102246813768214.a n = A295856 n

end A295856

/-! ## A295856.P17532306151896446679

`A295734(n+1)+A000045(n)`
-/

namespace A295856.P17532306151896446679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295734 (n + 1) + A000045 n

end

end A295856.P17532306151896446679

namespace A295856

/-- `A295734(n+1)+A000045(n)` -/
def P17532306151896446679.Spec : Prop :=
  ∀ n, P17532306151896446679.a n = A295856 n

end A295856

/-! ## A295856.P14537089905708583978

`A295725(n+1)+A295723(n)`
-/

namespace A295856.P14537089905708583978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295725 (n + 1) + A295723 n

end

end A295856.P14537089905708583978

namespace A295856

/-- `A295725(n+1)+A295723(n)` -/
def P14537089905708583978.Spec : Prop :=
  ∀ n, P14537089905708583978.a n = A295856 n

end A295856

/-! ## A295856.P10054023273060847677

`A000285(n)-A135530(n+1)`
-/

namespace A295856.P10054023273060847677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n - A135530 (n + 1)

end

end A295856.P10054023273060847677

namespace A295856

/-- `A000285(n)-A135530(n+1)` -/
def P10054023273060847677.Spec : Prop :=
  ∀ n, P10054023273060847677.a n = A295856 n

end A295856

/-! ## A295856.P10092098217405757137

`A295717(n)-A164073(n+1)`
-/

namespace A295856.P10092098217405757137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295717 n - A164073 (n + 1)

end

end A295856.P10092098217405757137

namespace A295856

/-- `A295717(n)-A164073(n+1)` -/
def P10092098217405757137.Spec : Prop :=
  ∀ n, P10092098217405757137.a n = A295856 n

end A295856

/-! ## A295856.P12312801411458066703

`A295728(n+1)-A295725(n+2)`
-/

namespace A295856.P12312801411458066703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295728 (n + 1) - A295725 (n + 2)

end

end A295856.P12312801411458066703

namespace A295856

/-- `A295728(n+1)-A295725(n+2)` -/
def P12312801411458066703.Spec : Prop :=
  ∀ n, P12312801411458066703.a n = A295856 n

end A295856

/-! ## A295856.P17767636048987853778

`A005672(n+3)-A295727(n+1)`
-/

namespace A295856.P17767636048987853778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 3) - A295727 (n + 1)

end

end A295856.P17767636048987853778

namespace A295856

/-- `A005672(n+3)-A295727(n+1)` -/
def P17767636048987853778.Spec : Prop :=
  ∀ n, P17767636048987853778.a n = A295856 n

end A295856

/-! ## A295856.P16044851352622967256

`A295730(n+1)-2*A295725(n)`
-/

namespace A295856.P16044851352622967256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 (n + 1) - 2 * A295725 n

end

end A295856.P16044851352622967256

namespace A295856

/-- `A295730(n+1)-2*A295725(n)` -/
def P16044851352622967256.Spec : Prop :=
  ∀ n, P16044851352622967256.a n = A295856 n

end A295856

/-! ## A295856.P7109734183395840416

`A295724(n)+A295728(n)-A295737(n)`
-/

namespace A295856.P7109734183395840416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 n + (A295728 n - A295737 n)

end

end A295856.P7109734183395840416

namespace A295856

/-- `A295724(n)+A295728(n)-A295737(n)` -/
def P7109734183395840416.Spec : Prop :=
  ∀ n, P7109734183395840416.a n = A295856 n

end A295856

/-! ## A295856.P5565677479715293912

`A005672(n+1)+A295725(n+1)+A000045(n)`
-/

namespace A295856.P5565677479715293912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295725 (n + 1) + A000045 n)

end

end A295856.P5565677479715293912

namespace A295856

/-- `A005672(n+1)+A295725(n+1)+A000045(n)` -/
def P5565677479715293912.Spec : Prop :=
  ∀ n, P5565677479715293912.a n = A295856 n

end A295856

/-! ## A295856.P9774501563783491535

`A005672(n+1)+A005672(n+1)-A295725(n)`
-/

namespace A295856.P9774501563783491535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A005672 (n + 1) - A295725 n)

end

end A295856.P9774501563783491535

namespace A295856

/-- `A005672(n+1)+A005672(n+1)-A295725(n)` -/
def P9774501563783491535.Spec : Prop :=
  ∀ n, P9774501563783491535.a n = A295856 n

end A295856

/-! ## A295856.P5633688824899677205

`A295730(n+1)+A295737(n+1)-A295731(n)`
-/

namespace A295856.P5633688824899677205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 (n + 1) + (A295737 (n + 1) - A295731 n)

end

end A295856.P5633688824899677205

namespace A295856

/-- `A295730(n+1)+A295737(n+1)-A295731(n)` -/
def P5633688824899677205.Spec : Prop :=
  ∀ n, P5633688824899677205.a n = A295856 n

end A295856

/-! ## A295856.P8288868353642236999

`A000045(n+1)+A295737(n+1)-A005672(n+1)`
-/

namespace A295856.P8288868353642236999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A295737 (n + 1) - A005672 (n + 1))

end

end A295856.P8288868353642236999

namespace A295856

/-- `A000045(n+1)+A295737(n+1)-A005672(n+1)` -/
def P8288868353642236999.Spec : Prop :=
  ∀ n, P8288868353642236999.a n = A295856 n

end A295856

/-! ## A295856.P8465921079270678570

`A295723(n+1)+A295737(n+1)-A295724(n+1)`
-/

namespace A295856.P8465921079270678570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295723 (n + 1) + (A295737 (n + 1) - A295724 (n + 1))

end

end A295856.P8465921079270678570

namespace A295856

/-- `A295723(n+1)+A295737(n+1)-A295724(n+1)` -/
def P8465921079270678570.Spec : Prop :=
  ∀ n, P8465921079270678570.a n = A295856 n

end A295856

/-! ## A295856.P2670924218827910071

`A295737(n+1)+A295737(n+1)-A295736(n+1)`
-/

namespace A295856.P2670924218827910071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295737 (n + 1) + (A295737 (n + 1) - A295736 (n + 1))

end

end A295856.P2670924218827910071

namespace A295856

/-- `A295737(n+1)+A295737(n+1)-A295736(n+1)` -/
def P2670924218827910071.Spec : Prop :=
  ∀ n, P2670924218827910071.a n = A295856 n

end A295856

/-! ## A295856.P4472072973204641294

`A295734(n+1)+A000071(n+2)-A000071(n+1)`
-/

namespace A295856.P4472072973204641294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295734 (n + 1) + (A000071 (n + 2) - A000071 (n + 1))

end

end A295856.P4472072973204641294

namespace A295856

/-- `A295734(n+1)+A000071(n+2)-A000071(n+1)` -/
def P4472072973204641294.Spec : Prop :=
  ∀ n, P4472072973204641294.a n = A295856 n

end A295856

/-!
# A295857: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = 0, a(1) = 0, a(2) = 2, a(3) = 3.

The programs for A295857, the canonical program `A295857.P1054551064563261168` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295857 has offset 0).

The definition of A295857 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295857.P1054551064563261168`, by `A295857.P1054551064563261168.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295857.P1054551064563261168

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295857

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P1054551064563261168.Spec : Prop :=
  ∀ n, P1054551064563261168.a n = A295857 n

theorem P1054551064563261168.correct : P1054551064563261168.Spec := by
  intro n
  simp only [A295857]

end A295857

/-! ## A295857.P10804799310070657001

`A000045(n+1)+2*a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A295857.P10804799310070657001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A000045 (n + 1) + 2 * a (n - 2)

end

end A295857.P10804799310070657001

namespace A295857

/-- `A000045(n+1)+2*a(n-2)` -/
def P10804799310070657001.Spec : Prop :=
  ∀ n, P10804799310070657001.a n = A295857 n

end A295857

/-! ## A295857.P10721783110969472766

`A295726(n)+A000045(n)`
-/

namespace A295857.P10721783110969472766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295726 n + A000045 n

end

end A295857.P10721783110969472766

namespace A295857

/-- `A295726(n)+A000045(n)` -/
def P10721783110969472766.Spec : Prop :=
  ∀ n, P10721783110969472766.a n = A295857 n

end A295857

/-! ## A295857.P10824362891451534246

`A295731(n)+A016116(n)`
-/

namespace A295857.P10824362891451534246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295731 n + A016116 n

end

end A295857.P10824362891451534246

namespace A295857

/-- `A295731(n)+A016116(n)` -/
def P10824362891451534246.Spec : Prop :=
  ∀ n, P10824362891451534246.a n = A295857 n

end A295857

/-! ## A295857.P5763602689385767939

`A295858(n)+A118658(n)`
-/

namespace A295857.P5763602689385767939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295858 n + A118658 n

end

end A295857.P5763602689385767939

namespace A295857

/-- `A295858(n)+A118658(n)` -/
def P5763602689385767939.Spec : Prop :=
  ∀ n, P5763602689385767939.a n = A295857 n

end A295857

/-! ## A295857.P11842097891776531909

`A295856(n)+A295734(n)`
-/

namespace A295857.P11842097891776531909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295856 n + A295734 n

end

end A295857.P11842097891776531909

namespace A295857

/-- `A295856(n)+A295734(n)` -/
def P11842097891776531909.Spec : Prop :=
  ∀ n, P11842097891776531909.a n = A295857 n

end A295857

/-! ## A295857.P9790103463724125236

`A295724(n)+A005672(n+1)`
-/

namespace A295857.P9790103463724125236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 n + A005672 (n + 1)

end

end A295857.P9790103463724125236

namespace A295857

/-- `A295724(n)+A005672(n+1)` -/
def P9790103463724125236.Spec : Prop :=
  ∀ n, P9790103463724125236.a n = A295857 n

end A295857

/-! ## A295857.P6483151661414232289

`A391682(n+1)-A060546(n)`
-/

namespace A295857.P6483151661414232289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391682 (n + 1) - A060546 n

end

end A295857.P6483151661414232289

namespace A295857

/-- `A391682(n+1)-A060546(n)` -/
def P6483151661414232289.Spec : Prop :=
  ∀ n, P6483151661414232289.a n = A295857 n

end A295857

/-! ## A295857.P16536103987987926042

`A005672(n)+A295728(n)+A295727(n)`
-/

namespace A295857.P16536103987987926042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 n + (A295728 n + A295727 n)

end

end A295857.P16536103987987926042

namespace A295857

/-- `A005672(n)+A295728(n)+A295727(n)` -/
def P16536103987987926042.Spec : Prop :=
  ∀ n, P16536103987987926042.a n = A295857 n

end A295857

/-! ## A295857.P12386662558240442606

`A000032(n)+A295858(n)-A000045(n)`
-/

namespace A295857.P12386662558240442606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A295858 n - A000045 n)

end

end A295857.P12386662558240442606

namespace A295857

/-- `A000032(n)+A295858(n)-A000045(n)` -/
def P12386662558240442606.Spec : Prop :=
  ∀ n, P12386662558240442606.a n = A295857 n

end A295857

/-! ## A295857.P3446314212695967569

`A295724(n)-(A005672(n)-A295724(n))`
-/

namespace A295857.P3446314212695967569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 n - (A005672 n - A295724 n)

end

end A295857.P3446314212695967569

namespace A295857

/-- `A295724(n)-(A005672(n)-A295724(n))` -/
def P3446314212695967569.Spec : Prop :=
  ∀ n, P3446314212695967569.a n = A295857 n

end A295857

/-! ## A295857.P740887463477514118

`A295734(n+1)+A295734(n)+A000045(n)`
-/

namespace A295857.P740887463477514118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295734 (n + 1) + (A295734 n + A000045 n)

end

end A295857.P740887463477514118

namespace A295857

/-- `A295734(n+1)+A295734(n)+A000045(n)` -/
def P740887463477514118.Spec : Prop :=
  ∀ n, P740887463477514118.a n = A295857 n

end A295857

/-! ## A295857.P7042903040462380827

`A000045(n+1)+A295731(n)-A005672(n)`
-/

namespace A295857.P7042903040462380827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A295731 n - A005672 n)

end

end A295857.P7042903040462380827

namespace A295857

/-- `A000045(n+1)+A295731(n)-A005672(n)` -/
def P7042903040462380827.Spec : Prop :=
  ∀ n, P7042903040462380827.a n = A295857 n

end A295857

/-! ## A295857.P4121168682871180906

`A005672(n+1)+A295717(n)-A295718(n)`
-/

namespace A295857.P4121168682871180906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295717 n - A295718 n)

end

end A295857.P4121168682871180906

namespace A295857

/-- `A005672(n+1)+A295717(n)-A295718(n)` -/
def P4121168682871180906.Spec : Prop :=
  ∀ n, P4121168682871180906.a n = A295857 n

end A295857

/-! ## A295857.P16133006547229488123

`A295730(n+1)+A005672(n)-A295725(n)`
-/

namespace A295857.P16133006547229488123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 (n + 1) + (A005672 n - A295725 n)

end

end A295857.P16133006547229488123

namespace A295857

/-- `A295730(n+1)+A005672(n)-A295725(n)` -/
def P16133006547229488123.Spec : Prop :=
  ∀ n, P16133006547229488123.a n = A295857 n

end A295857

/-! ## A295857.P10402424935530249690

`A295730(n+1)+A295729(n)-A295730(n)`
-/

namespace A295857.P10402424935530249690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 (n + 1) + (A295729 n - A295730 n)

end

end A295857.P10402424935530249690

namespace A295857

/-- `A295730(n+1)+A295729(n)-A295730(n)` -/
def P10402424935530249690.Spec : Prop :=
  ∀ n, P10402424935530249690.a n = A295857 n

end A295857

/-! ## A295857.P16359545914936215607

`A295724(n+1)-Δ[A131577(A110654(n+1))]`
-/

namespace A295857.P16359545914936215607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A110654 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 (n + 1) - (f1 (n + 1) - f1 n)

end

end A295857.P16359545914936215607

namespace A295857

/-- `A295724(n+1)-Δ[A131577(A110654(n+1))]` -/
def P16359545914936215607.Spec : Prop :=
  ∀ n, P16359545914936215607.a n = A295857 n

end A295857

/-! ## A295857.P3300451805227807163

`A005672(n+1)+A005672(n+1)+A005672(n)`
-/

namespace A295857.P3300451805227807163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A005672 (n + 1) + A005672 n)

end

end A295857.P3300451805227807163

namespace A295857

/-- `A005672(n+1)+A005672(n+1)+A005672(n)` -/
def P3300451805227807163.Spec : Prop :=
  ∀ n, P3300451805227807163.a n = A295857 n

end A295857

/-! ## A295857.P8187720390999202405

`A000071(n+2)+A295726(n)-A000071(n+1)`
-/

namespace A295857.P8187720390999202405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) + (A295726 n - A000071 (n + 1))

end

end A295857.P8187720390999202405

namespace A295857

/-- `A000071(n+2)+A295726(n)-A000071(n+1)` -/
def P8187720390999202405.Spec : Prop :=
  ∀ n, P8187720390999202405.a n = A295857 n

end A295857

/-!
# A295858: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = -2, a(1) = 0, a(2) = 0, a(3) = 1.

The programs for A295858, the canonical program `A295858.P17207784706792691384` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295858 has offset 0).

The definition of A295858 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295858.P17207784706792691384`, by `A295858.P17207784706792691384.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295858.P17207784706792691384

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=-2, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295858

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P17207784706792691384.Spec : Prop :=
  ∀ n, P17207784706792691384.a n = A295858 n

theorem P17207784706792691384.correct : P17207784706792691384.Spec := by
  intro n
  simp only [A295858]

end A295858

/-! ## A295858.P6800206225287029591

`A295729(n)+A028892(n)`
-/

namespace A295858.P6800206225287029591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295729 n + A028892 n

end

end A295858.P6800206225287029591

namespace A295858

/-- `A295729(n)+A028892(n)` -/
def P6800206225287029591.Spec : Prop :=
  ∀ n, P6800206225287029591.a n = A295858 n

end A295858

/-! ## A295858.P664408031612010023

`A295857(n)-A118658(n)`
-/

namespace A295858.P664408031612010023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295857 n - A118658 n

end

end A295858.P664408031612010023

namespace A295858

/-- `A295857(n)-A118658(n)` -/
def P664408031612010023.Spec : Prop :=
  ∀ n, P664408031612010023.a n = A295858 n

end A295858

/-! ## A295858.P12746628209715257031

`A295850(n)+2*A028892(n)`
-/

namespace A295858.P12746628209715257031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295850 n + 2 * A028892 n

end

end A295858.P12746628209715257031

namespace A295858

/-- `A295850(n)+2*A028892(n)` -/
def P12746628209715257031.Spec : Prop :=
  ∀ n, P12746628209715257031.a n = A295858 n

end A295858

/-! ## A295858.P14342635723181113011

`2*A295730(n)-A005672(n)`
-/

namespace A295858.P14342635723181113011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295730 n - A005672 n

end

end A295858.P14342635723181113011

namespace A295858

/-- `2*A295730(n)-A005672(n)` -/
def P14342635723181113011.Spec : Prop :=
  ∀ n, P14342635723181113011.a n = A295858 n

end A295858

/-! ## A295858.P1344814429700823030

`A000045(n)+A295857(n)-A000032(n)`
-/

namespace A295858.P1344814429700823030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A295857 n - A000032 n)

end

end A295858.P1344814429700823030

namespace A295858

/-- `A000045(n)+A295857(n)-A000032(n)` -/
def P1344814429700823030.Spec : Prop :=
  ∀ n, P1344814429700823030.a n = A295858 n

end A295858

/-! ## A295858.P5646530465924669224

`A000045(n)+A295721(n)-A295718(n)`
-/

namespace A295858.P5646530465924669224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A295721 n - A295718 n)

end

end A295858.P5646530465924669224

namespace A295858

/-- `A000045(n)+A295721(n)-A295718(n)` -/
def P5646530465924669224.Spec : Prop :=
  ∀ n, P5646530465924669224.a n = A295858 n

end A295858

/-! ## A295858.P9735596616367169497

`A295726(n)+A295730(n)-A295728(n)`
-/

namespace A295858.P9735596616367169497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295726 n + (A295730 n - A295728 n)

end

end A295858.P9735596616367169497

namespace A295858

/-- `A295726(n)+A295730(n)-A295728(n)` -/
def P9735596616367169497.Spec : Prop :=
  ∀ n, P9735596616367169497.a n = A295858 n

end A295858

/-! ## A295858.P2951287743256733062

`A295729(n)+A295729(n)-A295850(n)`
-/

namespace A295858.P2951287743256733062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295729 n + (A295729 n - A295850 n)

end

end A295858.P2951287743256733062

namespace A295858

/-- `A295729(n)+A295729(n)-A295850(n)` -/
def P2951287743256733062.Spec : Prop :=
  ∀ n, P2951287743256733062.a n = A295858 n

end A295858

/-! ## A295858.P16707251087725779499

`A295723(n)+A295730(n)-A000045(n+1)`
-/

namespace A295858.P16707251087725779499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295723 n + (A295730 n - A000045 (n + 1))

end

end A295858.P16707251087725779499

namespace A295858

/-- `A295723(n)+A295730(n)-A000045(n+1)` -/
def P16707251087725779499.Spec : Prop :=
  ∀ n, P16707251087725779499.a n = A295858 n

end A295858

/-! ## A295858.P2557399394757738524

`A005672(n+1)+A295731(n)-A295728(n)`
-/

namespace A295858.P2557399394757738524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295731 n - A295728 n)

end

end A295858.P2557399394757738524

namespace A295858

/-- `A005672(n+1)+A295731(n)-A295728(n)` -/
def P2557399394757738524.Spec : Prop :=
  ∀ n, P2557399394757738524.a n = A295858 n

end A295858

/-! ## A295858.P1905146477895057797

`A295730(n+1)+A295727(n)-A000045(n+1)`
-/

namespace A295858.P1905146477895057797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 (n + 1) + (A295727 n - A000045 (n + 1))

end

end A295858.P1905146477895057797

namespace A295858

/-- `A295730(n+1)+A295727(n)-A000045(n+1)` -/
def P1905146477895057797.Spec : Prop :=
  ∀ n, P1905146477895057797.a n = A295858 n

end A295858

/-! ## A295858.P17112937607060068325

`A295728(n+1)+A005672(n)-A295727(n+1)`
-/

namespace A295858.P17112937607060068325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295728 (n + 1) + (A005672 n - A295727 (n + 1))

end

end A295858.P17112937607060068325

namespace A295858

/-- `A295728(n+1)+A005672(n)-A295727(n+1)` -/
def P17112937607060068325.Spec : Prop :=
  ∀ n, P17112937607060068325.a n = A295858 n

end A295858

/-! ## A295858.P3512275435110604066

`A295732(n+1)-A295728(n)`
-/

namespace A295858.P3512275435110604066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295732 (n + 1) - A295728 n

end

end A295858.P3512275435110604066

namespace A295858

/-- `A295732(n+1)-A295728(n)` -/
def P3512275435110604066.Spec : Prop :=
  ∀ n, P3512275435110604066.a n = A295858 n

end A295858

/-! ## A295858.P81002047058627615

`2*A295729(n)-A295850(n)`
-/

namespace A295858.P81002047058627615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295729 n - A295850 n

end

end A295858.P81002047058627615

namespace A295858

/-- `2*A295729(n)-A295850(n)` -/
def P81002047058627615.Spec : Prop :=
  ∀ n, P81002047058627615.a n = A295858 n

end A295858

/-! ## A295858.P6254714136488427368

`(A295861(n)+A295860(n))/2`
-/

namespace A295858.P6254714136488427368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295861 n + A295860 n : ℚ) / 2

end

end A295858.P6254714136488427368

namespace A295858

/-- `(A295861(n)+A295860(n))/2` -/
def P6254714136488427368.Spec : Prop :=
  ∀ n, P6254714136488427368.a n = (A295858 n : ℚ)

end A295858

/-! ## A295858.P2649757473384401780

`A295719(n)-3*A000045(n+1)`
-/

namespace A295858.P2649757473384401780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295719 n - 3 * A000045 (n + 1)

end

end A295858.P2649757473384401780

namespace A295858

/-- `A295719(n)-3*A000045(n+1)` -/
def P2649757473384401780.Spec : Prop :=
  ∀ n, P2649757473384401780.a n = A295858 n

end A295858

/-! ## A295858.P10982325931637820654

`A000045(n)+A295719(n)-A000204(n+2)`
-/

namespace A295858.P10982325931637820654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A295719 n - A000204 (n + 2))

end

end A295858.P10982325931637820654

namespace A295858

/-- `A000045(n)+A295719(n)-A000204(n+2)` -/
def P10982325931637820654.Spec : Prop :=
  ∀ n, P10982325931637820654.a n = A295858 n

end A295858

/-! ## A295858.P15068890837825705993

`A295721(n+1)+A295721(n)-A295717(n+1)`
-/

namespace A295858.P15068890837825705993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295721 (n + 1) + (A295721 n - A295717 (n + 1))

end

end A295858.P15068890837825705993

namespace A295858

/-- `A295721(n+1)+A295721(n)-A295717(n+1)` -/
def P15068890837825705993.Spec : Prop :=
  ∀ n, P15068890837825705993.a n = A295858 n

end A295858

/-! ## A295858.P5929323255548484790

`A295735(n+1)+A295730(n)-A295730(n+1)`
-/

namespace A295858.P5929323255548484790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295735 (n + 1) + (A295730 n - A295730 (n + 1))

end

end A295858.P5929323255548484790

namespace A295858

/-- `A295735(n+1)+A295730(n)-A295730(n+1)` -/
def P5929323255548484790.Spec : Prop :=
  ∀ n, P5929323255548484790.a n = A295858 n

end A295858

/-!
# A295859: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = -2, a(1) = 0, a(2) = 1, a(3) = 1.

The programs for A295859, the canonical program `A295859.P6355076545925341904` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295859 has offset 0).

The definition of A295859 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295859.P6355076545925341904`, by `A295859.P6355076545925341904.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295859.P6355076545925341904

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=-2, a(1)=0, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295859

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P6355076545925341904.Spec : Prop :=
  ∀ n, P6355076545925341904.a n = A295859 n

theorem P6355076545925341904.correct : P6355076545925341904.Spec := by
  intro n
  simp only [A295859]

end A295859

/-! ## A295859.P5610763491547186684

`A295851(n)+Δ[A152163(n)]`
-/

namespace A295859.P5610763491547186684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295851 n + (f1 (n + 1) - f1 n)

end

end A295859.P5610763491547186684

namespace A295859

/-- `A295851(n)+Δ[A152163(n)]` -/
def P5610763491547186684.Spec : Prop :=
  ∀ n, P5610763491547186684.a n = A295859 n

end A295859

/-! ## A295859.P14930692957516177845

`2*A295730(n)-A295725(n)`
-/

namespace A295859.P14930692957516177845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295730 n - A295725 n

end

end A295859.P14930692957516177845

namespace A295859

/-- `2*A295730(n)-A295725(n)` -/
def P14930692957516177845.Spec : Prop :=
  ∀ n, P14930692957516177845.a n = A295859 n

end A295859

/-! ## A295859.P14830221891413996487

`A295733(n+1)+Δ[Δ[A000045(n)]]`
-/

namespace A295859.P14830221891413996487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295733 (n + 1) + (f1 (n + 1) - f1 n)

end

end A295859.P14830221891413996487

namespace A295859

/-- `A295733(n+1)+Δ[Δ[A000045(n)]]` -/
def P14830221891413996487.Spec : Prop :=
  ∀ n, P14830221891413996487.a n = A295859 n

end A295859

/-! ## A295859.P14044717825547733884

`A022310(n)-A153893(A110654(n))`
-/

namespace A295859.P14044717825547733884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022310 n - A153893 (A110654 n).toNat

end

end A295859.P14044717825547733884

namespace A295859

/-- `A022310(n)-A153893(A110654(n))` -/
def P14044717825547733884.Spec : Prop :=
  ∀ n, P14044717825547733884.a n = A295859 n

end A295859

/-! ## A295859.P950929875088098070

`A295729(n)+A295730(n)-A005672(n)`
-/

namespace A295859.P950929875088098070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295729 n + (A295730 n - A005672 n)

end

end A295859.P950929875088098070

namespace A295859

/-- `A295729(n)+A295730(n)-A005672(n)` -/
def P950929875088098070.Spec : Prop :=
  ∀ n, P950929875088098070.a n = A295859 n

end A295859

/-! ## A295859.P8981004923269134843

`A295729(n)+A295729(n)-A005672(n+1)`
-/

namespace A295859.P8981004923269134843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295729 n + (A295729 n - A005672 (n + 1))

end

end A295859.P8981004923269134843

namespace A295859

/-- `A295729(n)+A295729(n)-A005672(n+1)` -/
def P8981004923269134843.Spec : Prop :=
  ∀ n, P8981004923269134843.a n = A295859 n

end A295859

/-! ## A295859.P10157330525718489933

`A295724(n+1)+A295718(n)-A295718(n+1)`
-/

namespace A295859.P10157330525718489933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 (n + 1) + (A295718 n - A295718 (n + 1))

end

end A295859.P10157330525718489933

namespace A295859

/-- `A295724(n+1)+A295718(n)-A295718(n+1)` -/
def P10157330525718489933.Spec : Prop :=
  ∀ n, P10157330525718489933.a n = A295859 n

end A295859

/-! ## A295859.P13325964598671947389

`A005672(n+1)+A295728(n+1)-A295727(n+1)`
-/

namespace A295859.P13325964598671947389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295728 (n + 1) - A295727 (n + 1))

end

end A295859.P13325964598671947389

namespace A295859

/-- `A005672(n+1)+A295728(n+1)-A295727(n+1)` -/
def P13325964598671947389.Spec : Prop :=
  ∀ n, P13325964598671947389.a n = A295859 n

end A295859

/-! ## A295859.P16438553955845193663

`A295728(n+1)+A295733(n+1)-A295730(n+1)`
-/

namespace A295859.P16438553955845193663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295728 (n + 1) + (A295733 (n + 1) - A295730 (n + 1))

end

end A295859.P16438553955845193663

namespace A295859

/-- `A295728(n+1)+A295733(n+1)-A295730(n+1)` -/
def P16438553955845193663.Spec : Prop :=
  ∀ n, P16438553955845193663.a n = A295859 n

end A295859

/-! ## A295859.P12658676833746135801

`A295728(n+1)+A295728(n+1)-A295850(n+1)`
-/

namespace A295859.P12658676833746135801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295728 (n + 1) + (A295728 (n + 1) - A295850 (n + 1))

end

end A295859.P12658676833746135801

namespace A295859

/-- `A295728(n+1)+A295728(n+1)-A295850(n+1)` -/
def P12658676833746135801.Spec : Prop :=
  ∀ n, P12658676833746135801.a n = A295859 n

end A295859

/-! ## A295859.P8715374514593246701

`A295731(n+1)-(A295737(n)+A000045(n))`
-/

namespace A295859.P8715374514593246701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295731 (n + 1) - (A295737 n + A000045 n)

end

end A295859.P8715374514593246701

namespace A295859

/-- `A295731(n+1)-(A295737(n)+A000045(n))` -/
def P8715374514593246701.Spec : Prop :=
  ∀ n, P8715374514593246701.a n = A295859 n

end A295859

/-! ## A295859.P10801661945417964339

`A000045(n+1)+A295861(n)-A295860(n+1)`
-/

namespace A295859.P10801661945417964339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A295861 n - A295860 (n + 1))

end

end A295859.P10801661945417964339

namespace A295859

/-- `A000045(n+1)+A295861(n)-A295860(n+1)` -/
def P10801661945417964339.Spec : Prop :=
  ∀ n, P10801661945417964339.a n = A295859 n

end A295859

/-! ## A295859.P1319300729365993436

`(A295860(n)+A295853(n))/2`
-/

namespace A295859.P1319300729365993436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295860 n + A295853 n : ℚ) / 2

end

end A295859.P1319300729365993436

namespace A295859

/-- `(A295860(n)+A295853(n))/2` -/
def P1319300729365993436.Spec : Prop :=
  ∀ n, P1319300729365993436.a n = (A295859 n : ℚ)

end A295859

/-! ## A295859.P16548899302173277231

`2*A295728(n+1)-A295850(n+1)`
-/

namespace A295859.P16548899302173277231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295728 (n + 1) - A295850 (n + 1)

end

end A295859.P16548899302173277231

namespace A295859

/-- `2*A295728(n+1)-A295850(n+1)` -/
def P16548899302173277231.Spec : Prop :=
  ∀ n, P16548899302173277231.a n = A295859 n

end A295859

/-! ## A295859.P9400049619400635971

`A295722(n)-(A295728(n)+A005672(n))`
-/

namespace A295859.P9400049619400635971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295722 n - (A295728 n + A005672 n)

end

end A295859.P9400049619400635971

namespace A295859

/-- `A295722(n)-(A295728(n)+A005672(n))` -/
def P9400049619400635971.Spec : Prop :=
  ∀ n, P9400049619400635971.a n = A295859 n

end A295859

/-!
# A295860: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = -2, a(1) = 1, a(2) = 0, a(3) = 1.

The programs for A295860, the canonical program `A295860.P3988941888924118526` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295860 has offset 0).

The definition of A295860 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295860.P3988941888924118526`, by `A295860.P3988941888924118526.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295860.P3988941888924118526

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=-2, a(1)=1, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295860

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P3988941888924118526.Spec : Prop :=
  ∀ n, P3988941888924118526.a n = A295860 n

theorem P3988941888924118526.correct : P3988941888924118526.Spec := by
  intro n
  simp only [A295860]

end A295860

/-! ## A295860.P14067159320032737425

`A295727(n)+A028892(n)`
-/

namespace A295860.P14067159320032737425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295727 n + A028892 n

end

end A295860.P14067159320032737425

namespace A295860

/-- `A295727(n)+A028892(n)` -/
def P14067159320032737425.Spec : Prop :=
  ∀ n, P14067159320032737425.a n = A295860 n

end A295860

/-! ## A295860.P12407810720313671139

`A187890(n+1)-A051032(n+1)`
-/

namespace A295860.P12407810720313671139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187890 (n + 1) - A051032 (n + 1)

end

end A295860.P12407810720313671139

namespace A295860

/-- `A187890(n+1)-A051032(n+1)` -/
def P12407810720313671139.Spec : Prop :=
  ∀ n, P12407810720313671139.a n = A295860 n

end A295860

/-! ## A295860.P13287437639002445164

`A295723(n)-A118658(n)`
-/

namespace A295860.P13287437639002445164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295723 n - A118658 n

end

end A295860.P13287437639002445164

namespace A295860

/-- `A295723(n)-A118658(n)` -/
def P13287437639002445164.Spec : Prop :=
  ∀ n, P13287437639002445164.a n = A295860 n

end A295860

/-! ## A295860.P3162010986601268361

`A295723(n)-2*A212804(n)`
-/

namespace A295860.P3162010986601268361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295723 n - 2 * A212804 n

end

end A295860.P3162010986601268361

namespace A295860

/-- `A295723(n)-2*A212804(n)` -/
def P3162010986601268361.Spec : Prop :=
  ∀ n, P3162010986601268361.a n = A295860 n

end A295860

/-! ## A295860.P3433838961205421429

`A295723(n)-Δ[2*A000045(n)]`
-/

namespace A295860.P3433838961205421429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295723 n - (f1 (n + 1) - f1 n)

end

end A295860.P3433838961205421429

namespace A295860

/-- `A295723(n)-Δ[2*A000045(n)]` -/
def P3433838961205421429.Spec : Prop :=
  ∀ n, P3433838961205421429.a n = A295860 n

end A295860

/-! ## A295860.P13335179642421010106

`A000045(n)+A295723(n)-A000032(n)`
-/

namespace A295860.P13335179642421010106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A295723 n - A000032 n)

end

end A295860.P13335179642421010106

namespace A295860

/-- `A000045(n)+A295723(n)-A000032(n)` -/
def P13335179642421010106.Spec : Prop :=
  ∀ n, P13335179642421010106.a n = A295860 n

end A295860

/-! ## A295860.P13583615893946567930

`A005672(n+1)+A295730(n)-A295728(n)`
-/

namespace A295860.P13583615893946567930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295730 n - A295728 n)

end

end A295860.P13583615893946567930

namespace A295860

/-- `A005672(n+1)+A295730(n)-A295728(n)` -/
def P13583615893946567930.Spec : Prop :=
  ∀ n, P13583615893946567930.a n = A295860 n

end A295860

/-! ## A295860.P14037500514754798187

`A295727(n)+A295730(n)-A005672(n+1)`
-/

namespace A295860.P14037500514754798187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295727 n + (A295730 n - A005672 (n + 1))

end

end A295860.P14037500514754798187

namespace A295860

/-- `A295727(n)+A295730(n)-A005672(n+1)` -/
def P14037500514754798187.Spec : Prop :=
  ∀ n, P14037500514754798187.a n = A295860 n

end A295860

/-! ## A295860.P6081200610933376288

`2*A295730(n)-A295735(n)`
-/

namespace A295860.P6081200610933376288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295730 n - A295735 n

end

end A295860.P6081200610933376288

namespace A295860

/-- `2*A295730(n)-A295735(n)` -/
def P6081200610933376288.Spec : Prop :=
  ∀ n, P6081200610933376288.a n = A295860 n

end A295860

/-! ## A295860.P15911647875013983906

`A005672(n)+A295729(n)-A295728(n)`
-/

namespace A295860.P15911647875013983906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 n + (A295729 n - A295728 n)

end

end A295860.P15911647875013983906

namespace A295860

/-- `A005672(n)+A295729(n)-A295728(n)` -/
def P15911647875013983906.Spec : Prop :=
  ∀ n, P15911647875013983906.a n = A295860 n

end A295860

/-! ## A295860.P15374275551689734470

`2*A295858(n)-A295861(n)`
-/

namespace A295860.P15374275551689734470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295858 n - A295861 n

end

end A295860.P15374275551689734470

namespace A295860

/-- `2*A295858(n)-A295861(n)` -/
def P15374275551689734470.Spec : Prop :=
  ∀ n, P15374275551689734470.a n = A295860 n

end A295860

/-! ## A295860.P6034795087354003580

`A295735(n+1)-(A295728(n)+A005672(n))`
-/

namespace A295860.P6034795087354003580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295735 (n + 1) - (A295728 n + A005672 n)

end

end A295860.P6034795087354003580

namespace A295860

/-- `A295735(n+1)-(A295728(n)+A005672(n))` -/
def P6034795087354003580.Spec : Prop :=
  ∀ n, P6034795087354003580.a n = A295860 n

end A295860

/-! ## A295860.P10301632377625315982

`A295729(n+1)-(A295737(n)+A000045(n+1))`
-/

namespace A295860.P10301632377625315982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295729 (n + 1) - (A295737 n + A000045 (n + 1))

end

end A295860.P10301632377625315982

namespace A295860

/-- `A295729(n+1)-(A295737(n)+A000045(n+1))` -/
def P10301632377625315982.Spec : Prop :=
  ∀ n, P10301632377625315982.a n = A295860 n

end A295860

/-!
# A295861: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = -2, a(1) = -1, a(2) = 0, a(3) = 1.

The programs for A295861, the canonical program `A295861.P7273878213640617369` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295861 has offset 0).

The definition of A295861 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295861.P7273878213640617369`, by `A295861.P7273878213640617369.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295861.P7273878213640617369

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=-2, a(1)=-1, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295861

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P7273878213640617369.Spec : Prop :=
  ∀ n, P7273878213640617369.a n = A295861 n

theorem P7273878213640617369.correct : P7273878213640617369.Spec := by
  intro n
  simp only [A295861]

end A295861

/-! ## A295861.P9352491515078710507

`A295852(n)-A077957(n)`
-/

namespace A295861.P9352491515078710507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295852 n - A077957 n

end

end A295861.P9352491515078710507

namespace A295861

/-- `A295852(n)-A077957(n)` -/
def P9352491515078710507.Spec : Prop :=
  ∀ n, P9352491515078710507.a n = A295861 n

end A295861

/-! ## A295861.P5382126157768459400

`A022120(n)-A164682(n+1)`
-/

namespace A295861.P5382126157768459400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 n - A164682 (n + 1)

end

end A295861.P5382126157768459400

namespace A295861

/-- `A022120(n)-A164682(n+1)` -/
def P5382126157768459400.Spec : Prop :=
  ∀ n, P5382126157768459400.a n = A295861 n

end A295861

/-! ## A295861.P3363983520811638920

`A295732(n+1)-A212804(n)`
-/

namespace A295861.P3363983520811638920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295732 (n + 1) - A212804 n

end

end A295861.P3363983520811638920

namespace A295861

/-- `A295732(n+1)-A212804(n)` -/
def P3363983520811638920.Spec : Prop :=
  ∀ n, P3363983520811638920.a n = A295861 n

end A295861

/-! ## A295861.P3583983916994377903

`2*A295858(n)-A295860(n)`
-/

namespace A295861.P3583983916994377903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295858 n - A295860 n

end

end A295861.P3583983916994377903

namespace A295861

/-- `2*A295858(n)-A295860(n)` -/
def P3583983916994377903.Spec : Prop :=
  ∀ n, P3583983916994377903.a n = A295861 n

end A295861

/-! ## A295861.P3863425611836297577

`A295732(n+1)-Δ[A000045(n)]`
-/

namespace A295861.P3863425611836297577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295732 (n + 1) - (f1 (n + 1) - f1 n)

end

end A295861.P3863425611836297577

namespace A295861

/-- `A295732(n+1)-Δ[A000045(n)]` -/
def P3863425611836297577.Spec : Prop :=
  ∀ n, P3863425611836297577.a n = A295861 n

end A295861

/-! ## A295861.P16230501811625163799

`A295731(n+1)-A295727(n+1)`
-/

namespace A295861.P16230501811625163799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295731 (n + 1) - A295727 (n + 1)

end

end A295861.P16230501811625163799

namespace A295861

/-- `A295731(n+1)-A295727(n+1)` -/
def P16230501811625163799.Spec : Prop :=
  ∀ n, P16230501811625163799.a n = A295861 n

end A295861

/-! ## A295861.P9664860372585208716

`A295730(n)+A295731(n)-A005672(n)`
-/

namespace A295861.P9664860372585208716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 n + (A295731 n - A005672 n)

end

end A295861.P9664860372585208716

namespace A295861

/-- `A295730(n)+A295731(n)-A005672(n)` -/
def P9664860372585208716.Spec : Prop :=
  ∀ n, P9664860372585208716.a n = A295861 n

end A295861

/-! ## A295861.P6902147146274636224

`A295732(n+1)+A000045(n)-A000045(n+1)`
-/

namespace A295861.P6902147146274636224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295732 (n + 1) + (A000045 n - A000045 (n + 1))

end

end A295861.P6902147146274636224

namespace A295861

/-- `A295732(n+1)+A000045(n)-A000045(n+1)` -/
def P6902147146274636224.Spec : Prop :=
  ∀ n, P6902147146274636224.a n = A295861 n

end A295861

/-! ## A295861.P16152066685339245502

`A295730(n+1)+A295729(n)-A000045(n+1)`
-/

namespace A295861.P16152066685339245502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 (n + 1) + (A295729 n - A000045 (n + 1))

end

end A295861.P16152066685339245502

namespace A295861

/-- `A295730(n+1)+A295729(n)-A000045(n+1)` -/
def P16152066685339245502.Spec : Prop :=
  ∀ n, P16152066685339245502.a n = A295861 n

end A295861

/-! ## A295861.P873156483392930265

`A295860(n+1)+A295859(n)-A000045(n+1)`
-/

namespace A295861.P873156483392930265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295860 (n + 1) + (A295859 n - A000045 (n + 1))

end

end A295861.P873156483392930265

namespace A295861

/-- `A295860(n+1)+A295859(n)-A000045(n+1)` -/
def P873156483392930265.Spec : Prop :=
  ∀ n, P873156483392930265.a n = A295861 n

end A295861

/-! ## A295861.P15703776235085611826

`A295723(n+1)+A295723(n)-A295718(n+1)`
-/

namespace A295861.P15703776235085611826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295723 (n + 1) + (A295723 n - A295718 (n + 1))

end

end A295861.P15703776235085611826

namespace A295861

/-- `A295723(n+1)+A295723(n)-A295718(n+1)` -/
def P15703776235085611826.Spec : Prop :=
  ∀ n, P15703776235085611826.a n = A295861 n

end A295861

/-! ## A295861.P18371409662789881215

`A005672(n+1)+A295735(n+1)-A000045(n+1)`
-/

namespace A295861.P18371409662789881215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295735 (n + 1) - A000045 (n + 1))

end

end A295861.P18371409662789881215

namespace A295861

/-- `A005672(n+1)+A295735(n+1)-A000045(n+1)` -/
def P18371409662789881215.Spec : Prop :=
  ∀ n, P18371409662789881215.a n = A295861 n

end A295861

/-! ## A295861.P5284938484329806365

`A005672(n+1)+A079284(n+1)-A295718(n+1)`
-/

namespace A295861.P5284938484329806365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A079284 (n + 1) - A295718 (n + 1))

end

end A295861.P5284938484329806365

namespace A295861

/-- `A005672(n+1)+A079284(n+1)-A295718(n+1)` -/
def P5284938484329806365.Spec : Prop :=
  ∀ n, P5284938484329806365.a n = A295861 n

end A295861

/-! ## A295861.P1215929237473224071

`A295728(n+3)-A295717(n+1)`
-/

namespace A295861.P1215929237473224071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295728 (n + 3) - A295717 (n + 1)

end

end A295861.P1215929237473224071

namespace A295861

/-- `A295728(n+3)-A295717(n+1)` -/
def P1215929237473224071.Spec : Prop :=
  ∀ n, P1215929237473224071.a n = A295861 n

end A295861

/-!
# A295862: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n), where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295862, there is no canonical definition to state claims against.
-/

/-! ## A295862.P1839935840359260982

`(A295964(n)+A295956(n))/A000034(A289094(n))`
-/

namespace A295862.P1839935840359260982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295964 n + A295956 n : ℚ) / (A000034 (A289094 n).toNat : ℚ)

end

end A295862.P1839935840359260982

/-! ## A295862.P16471177767228031578

`A000027(A294548(n)-A065220(n+1))`
-/

namespace A295862.P16471177767228031578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A294548 n - A065220 (n + 1)).toNat

end

end A295862.P16471177767228031578

/-! ## A295862.P14203334670113546559

`A295964(n)+A023443(A212804(n))`
-/

namespace A295862.P14203334670113546559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295964 n + A023443 (A212804 n).toNat

end

end A295862.P14203334670113546559

/-! ## A295862.P10938489719308669019

`A295956(n)+A024000(A212804(n))`
-/

namespace A295862.P10938489719308669019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295956 n + A024000 (A212804 n).toNat

end

end A295862.P10938489719308669019

/-! ## A295862.P12670340371556833753

`(A295964(n)+A295956(n))/A020639(A259037(n+1))`
-/

namespace A295862.P12670340371556833753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295964 n + A295956 n : ℚ) / (A020639 (A259037 (n + 1)).toNat : ℚ)

end

end A295862.P12670340371556833753

/-!
# A295863: Number of ordered pairs of length-n mutually overlapping binary strings.

The programs for A295863, there is no canonical definition to state claims against.
-/

/-! ## A295863.P6604698518741844624

`A108248(A169797(n+1))`
-/

namespace A295863.P6604698518741844624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108248 (A169797 (n + 1)).toNat

end

end A295863.P6604698518741844624

/-!
# A295864: a(n) = hypergeom([-n, -n], [1], 1) * n! / (floor(n/2)!)^2.

The programs for A295864, the canonical program `A295864.P828657620155617513` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295864 has offset 0).

The definition of A295864 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295864.P828657620155617513

`A000984(n)*A056040(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A295864

/-- `A000984(n)*A056040(n)` -/
def P828657620155617513.Spec : Prop :=
  ∀ n, P828657620155617513.a n = A295864 n

theorem P828657620155617513.correct : P828657620155617513.Spec := by
  intro n
  simp only [A295864]

end A295864

/-! ## A295864.P6370942788085702552

`record[A081668(n)]*A056040(n)`
-/

namespace A295864.P6370942788085702552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A056040 n

end

end A295864.P6370942788085702552

namespace A295864

/-- `record[A081668(n)]*A056040(n)` -/
def P6370942788085702552.Spec : Prop :=
  ∀ n, P6370942788085702552.a n = A295864 n

end A295864

/-! ## A295864.P10406532159781076912

`record[A126869(n)]*A056040(n)`
-/

namespace A295864.P10406532159781076912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A056040 n

end

end A295864.P10406532159781076912

namespace A295864

/-- `record[A126869(n)]*A056040(n)` -/
def P10406532159781076912.Spec : Prop :=
  ∀ n, P10406532159781076912.a n = A295864 n

end A295864

/-! ## A295864.P17429981968880176286

`record[A126930(n)]*A056040(n)`
-/

namespace A295864.P17429981968880176286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A056040 n

end

end A295864.P17429981968880176286

namespace A295864

/-- `record[A126930(n)]*A056040(n)` -/
def P17429981968880176286.Spec : Prop :=
  ∀ n, P17429981968880176286.a n = A295864 n

end A295864

/-! ## A295864.P16088496718728862314

`A001405(2*n)*A056040(n)`
-/

namespace A295864.P16088496718728862314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * A056040 n

end

end A295864.P16088496718728862314

namespace A295864

/-- `A001405(2*n)*A056040(n)` -/
def P16088496718728862314.Spec : Prop :=
  ∀ n, P16088496718728862314.a n = A295864 n

end A295864

/-! ## A295864.P10715615222154657836

`A056040(2*n)*A056040(n)`
-/

namespace A295864.P10715615222154657836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (2 * n) * A056040 n

end

end A295864.P10715615222154657836

namespace A295864

/-- `A056040(2*n)*A056040(n)` -/
def P10715615222154657836.Spec : Prop :=
  ∀ n, P10715615222154657836.a n = A295864 n

end A295864

/-! ## A295864.P7800014465050034270

`(A275329(n)-A057977(n))*A000984(n)`
-/

namespace A295864.P7800014465050034270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A275329 n - A057977 n) * A000984 n

end

end A295864.P7800014465050034270

namespace A295864

/-- `(A275329(n)-A057977(n))*A000984(n)` -/
def P7800014465050034270.Spec : Prop :=
  ∀ n, P7800014465050034270.a n = A295864 n

end A295864

/-! ## A295864.P14496424930411392117

`A000984(n)*A008619(n)*A057977(n)`
-/

namespace A295864.P14496424930411392117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A008619 n * A057977 n

end

end A295864.P14496424930411392117

namespace A295864

/-- `A000984(n)*A008619(n)*A057977(n)` -/
def P14496424930411392117.Spec : Prop :=
  ∀ n, P14496424930411392117.a n = A295864 n

end A295864

/-! ## A295864.P9981508633212049723

`A000984(n)/A180000(n)*A003418(n)`
-/

namespace A295864.P9981508633212049723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (A180000 n : ℚ) * (A003418 n : ℚ)

end

end A295864.P9981508633212049723

namespace A295864

/-- `A000984(n)/A180000(n)*A003418(n)` -/
def P9981508633212049723.Spec : Prop :=
  ∀ n, P9981508633212049723.a n = (A295864 n : ℚ)

end A295864

/-! ## A295864.P16953314696176939102

`A001813(n)/A081123(n)²`
-/

namespace A295864.P16953314696176939102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001813 n : ℚ) / (A081123 n ^ 2 : ℚ)

end

end A295864.P16953314696176939102

namespace A295864

/-- `A001813(n)/A081123(n)²` -/
def P16953314696176939102.Spec : Prop :=
  ∀ n, P16953314696176939102.a n = (A295864 n : ℚ)

end A295864

/-!
# A295865: Numbers k, the smallest of at least 4 consecutive numbers x, for which phi(x) <= phi(x+1).

The programs for A295865, there is no canonical definition to state claims against.
-/

/-! ## A295865.P14667985689832599252

`eq[A109606(2*(n+1)), A136548(A008619(n))]`
-/

namespace A295865.P14667985689832599252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A008619 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295865.P14667985689832599252

/-!
# A295866: Number of decimal digits in the number of partitions of n.

The programs for A295866, there is no canonical definition to state claims against.
-/

/-! ## A295866.P926271110573403317

`A055642(A000041(n))`
-/

namespace A295866.P926271110573403317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A000041 n).toNat

end

end A295866.P926271110573403317

/-! ## A295866.P17150199811382434689

`∑{digits}[A000041(n), A000041(A036640(#))]`
-/

namespace A295866.P17150199811382434689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000041 (A036640 x).toNat).sum

end

end A295866.P17150199811382434689

/-! ## A295866.P11986564791706104974

`∑{digits}[A000041(n), A000041(A057814(#))]`
-/

namespace A295866.P11986564791706104974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000041 (A057814 x).toNat).sum

end

end A295866.P11986564791706104974

/-! ## A295866.P8719662529808280517

`∑{digits}[A000041(n), A000041(A129175(#))]`
-/

namespace A295866.P8719662529808280517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000041 (A129175 x).toNat).sum

end

end A295866.P8719662529808280517

/-! ## A295866.P5221928819585696717

`∑{digits}[A000041(n), A000041(A247049(#))]`
-/

namespace A295866.P5221928819585696717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000041 (A247049 x).toNat).sum

end

end A295866.P5221928819585696717

/-! ## A295866.P10265020052757040718

`A366721(A096920(n))`
-/

namespace A295866.P10265020052757040718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366721 (A096920 n).toNat

end

end A295866.P10265020052757040718

/-! ## A295866.P794231390391659415

`A135660(A350396(n+2))`
-/

namespace A295866.P794231390391659415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A350396 (n + 2)).toNat

end

end A295866.P794231390391659415

/-! ## A295866.P268796122320515651

`A110591(A298603(n))`
-/

namespace A295866.P268796122320515651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A298603 n).toNat

end

end A295866.P268796122320515651

/-! ## A295866.P17646929087135539953

`A110591(A178932(n+1))`
-/

namespace A295866.P17646929087135539953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A178932 (n + 1)).toNat

end

end A295866.P17646929087135539953

/-! ## A295866.P5094963830501178451

`A000196(A265436(n+1)+1)`
-/

namespace A295866.P5094963830501178451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A265436 (n + 1) + 1).toNat

end

end A295866.P5094963830501178451

/-!
# A295867: Numbers of the form A000217(n)*A007494(n) that are divisible by 3.

The programs for A295867, the canonical program `A295867.P8913751111726183930` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295867 has offset 0).

The definition of A295867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295867.P8913751111726183930

`A000217(A047248(n+1))*A007494(A047248(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A295867

/-- `A000217(A047248(n+1))*A007494(A047248(n+1))` -/
def P8913751111726183930.Spec : Prop :=
  ∀ n, P8913751111726183930.a n = A295867 n

theorem P8913751111726183930.correct : P8913751111726183930.Spec := by
  intro n
  simp only [A295867]

end A295867

/-! ## A295867.P3878750547130740649

`∩[3*n, ∑[n]*A007494(n)]`
-/

namespace A295867.P3878750547130740649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) * A007494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295867.P3878750547130740649

namespace A295867

/-- `∩[3*n, ∑[n]*A007494(n)]` -/
def P3878750547130740649.Spec : Prop :=
  ∀ n, (P3878750547130740649.a n : ℤ) = A295867 n

end A295867

/-!
# A295868: Initial digit of the number of partitions of n.

The programs for A295868, there is no canonical definition to state claims against.
-/

/-! ## A295868.P4057582399285680463

`A000030(A000041(n))`
-/

namespace A295868.P4057582399285680463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A000041 n).toNat

end

end A295868.P4057582399285680463

/-! ## A295868.P4862362251578290303

`A004089(n)%10`
-/

namespace A295868.P4862362251578290303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004089 n) 10

end

end A295868.P4862362251578290303

/-! ## A295868.P12721009345523246028

`A004086(A092885(n))%10`
-/

namespace A295868.P12721009345523246028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A092885 n).toNat) 10

end

end A295868.P12721009345523246028

/-! ## A295868.P4683376736195774013

`A004086(A213598(n))%10`
-/

namespace A295868.P4683376736195774013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A213598 n).toNat) 10

end

end A295868.P4683376736195774013

/-! ## A295868.P4004191507653940359

`A004086(A330643(n))%10`
-/

namespace A295868.P4004191507653940359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A330643 n).toNat) 10

end

end A295868.P4004191507653940359

/-!
# A295869: Numbers not divisible by 2, 3 or 5 (A007775) with digital root 8.

The programs for A295869, the canonical program `A295869.P6397127444826271320` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295869 has offset 1).

The definition of A295869 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295869.P6397127444826271320

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=17, a(1)=53, a(2)=71, a(3)=89, a(4)=107`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295869

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P6397127444826271320.Spec : Prop :=
  ∀ n, P6397127444826271320.a n = A295869 (n + 1)

theorem P6397127444826271320.correct : P6397127444826271320.Spec := by
  intro n
  simp only [A295869, Nat.add_sub_cancel]

end A295869

/-! ## A295869.P4531258610817399082

`A301628(n+1)+10`
-/

namespace A295869.P4531258610817399082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1) + 10

end

end A295869.P4531258610817399082

namespace A295869

/-- `A301628(n+1)+10` -/
def P4531258610817399082.Spec : Prop :=
  ∀ n, P4531258610817399082.a n = A295869 (n + 1)

end A295869

/-! ## A295869.P12600613106495773025

`18*(A110655(n)+n+1)-1`
-/

namespace A295869.P12600613106495773025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * (A110655 n + (n + 1 : ℤ)) - 1

end

end A295869.P12600613106495773025

namespace A295869

/-- `18*(A110655(n)+n+1)-1` -/
def P12600613106495773025.Spec : Prop :=
  ∀ n, P12600613106495773025.a n = A295869 (n + 1)

end A295869

/-! ## A295869.P4138124267260056017

`3*6*A047207(n+2)-1`
-/

namespace A295869.P4138124267260056017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (6 * A047207 (n + 2)) - 1

end

end A295869.P4138124267260056017

namespace A295869

/-- `3*6*A047207(n+2)-1` -/
def P4138124267260056017.Spec : Prop :=
  ∀ n, P4138124267260056017.a n = A295869 (n + 1)

end A295869

/-! ## A295869.P9057529674713712594

`3*3*A045572(n+2)-10`
-/

namespace A295869.P9057529674713712594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (3 * A045572 (n + 2)) - 10

end

end A295869.P9057529674713712594

namespace A295869

/-- `3*3*A045572(n+2)-10` -/
def P9057529674713712594.Spec : Prop :=
  ∀ n, P9057529674713712594.a n = A295869 (n + 1)

end A295869

/-! ## A295869.P8339980835411547653

`A239129(A047207(n+2))`
-/

namespace A295869.P8339980835411547653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (A047207 (n + 2)).toNat

end

end A295869.P8339980835411547653

namespace A295869

/-- `A239129(A047207(n+2))` -/
def P8339980835411547653.Spec : Prop :=
  ∀ n, P8339980835411547653.a n = A295869 (n + 1)

end A295869

/-! ## A295869.P17405993903337664421

`A017257(A045572(n+2)-2)`
-/

namespace A295869.P17405993903337664421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 (A045572 (n + 2) - 2).toNat

end

end A295869.P17405993903337664421

namespace A295869

/-- `A017257(A045572(n+2)-2)` -/
def P17405993903337664421.Spec : Prop :=
  ∀ n, P17405993903337664421.a n = A295869 (n + 1)

end A295869

/-! ## A295869.P1295717885486181449

`filter[A017257(n), A162289(#)]`
-/

namespace A295869.P1295717885486181449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A295869.P1295717885486181449

namespace A295869

/-- `filter[A017257(n), A162289(#)]` -/
def P1295717885486181449.Spec : Prop :=
  ∀ n, P1295717885486181449.a n = A295869 (n + 1)

end A295869

/-! ## A295869.P18058902819378078453

`filter[A239129(n+1), A011558(#)]`
-/

namespace A295869.P18058902819378078453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A295869.P18058902819378078453

namespace A295869

/-- `filter[A239129(n+1), A011558(#)]` -/
def P18058902819378078453.Spec : Prop :=
  ∀ n, P18058902819378078453.a n = A295869 (n + 1)

end A295869

/-! ## A295869.P16819354322370971220

`filter[A239129(n+1), A162289(#)]`
-/

namespace A295869.P16819354322370971220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A295869.P16819354322370971220

namespace A295869

/-- `filter[A239129(n+1), A162289(#)]` -/
def P16819354322370971220.Spec : Prop :=
  ∀ n, P16819354322370971220.a n = A295869 (n + 1)

end A295869

/-! ## A295869.P8296303244618531618

`filter[A017257(2*n+1), A011558(#)]`
-/

namespace A295869.P8296303244618531618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A295869.P8296303244618531618

namespace A295869

/-- `filter[A017257(2*n+1), A011558(#)]` -/
def P8296303244618531618.Spec : Prop :=
  ∀ n, P8296303244618531618.a n = A295869 (n + 1)

end A295869

/-! ## A295869.P17803438848987891528

`filter[A373864(2*n+1), A011558(#)]`
-/

namespace A295869.P17803438848987891528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373864 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A295869.P17803438848987891528

namespace A295869

/-- `filter[A373864(2*n+1), A011558(#)]` -/
def P17803438848987891528.Spec : Prop :=
  ∀ n, P17803438848987891528.a n = A295869 (n + 1)

end A295869

/-! ## A295869.P6305935264820760871

`filter[A373864(2*n+1), A162289(#)]`
-/

namespace A295869.P6305935264820760871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373864 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A295869.P6305935264820760871

namespace A295869

/-- `filter[A373864(2*n+1), A162289(#)]` -/
def P6305935264820760871.Spec : Prop :=
  ∀ n, P6305935264820760871.a n = A295869 (n + 1)

end A295869

/-! ## A295869.P6244105036744396140

`filter[A274406(n+2), A162289(#)]`
-/

namespace A295869.P6244105036744396140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A295869.P6244105036744396140

namespace A295869

/-- `filter[A274406(n+2), A162289(#)]` -/
def P6244105036744396140.Spec : Prop :=
  ∀ n, P6244105036744396140.a n = A295869 (n + 1)

end A295869

/-! ## A295869.P16190229905979567476

`filter[A056020(2*(n+1)), A162289(#)]`
-/

namespace A295869.P16190229905979567476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A295869.P16190229905979567476

namespace A295869

/-- `filter[A056020(2*(n+1)), A162289(#)]` -/
def P16190229905979567476.Spec : Prop :=
  ∀ n, P16190229905979567476.a n = A295869 (n + 1)

end A295869

/-! ## A295869.P10105538318771214462

`filter[A166524(2*(n+1)), A162289(#)]`
-/

namespace A295869.P10105538318771214462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166524 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A295869.P10105538318771214462

namespace A295869

/-- `filter[A166524(2*(n+1)), A162289(#)]` -/
def P10105538318771214462.Spec : Prop :=
  ∀ n, P10105538318771214462.a n = A295869 (n + 1)

end A295869

/-! ## A295869.P14002907571952983110

`filter[A168409(2*n+1), A162289(#)]`
-/

namespace A295869.P14002907571952983110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168409 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A295869.P14002907571952983110

namespace A295869

/-- `filter[A168409(2*n+1), A162289(#)]` -/
def P14002907571952983110.Spec : Prop :=
  ∀ n, P14002907571952983110.a n = A295869 (n + 1)

end A295869

/-! ## A295869.P15985139619870323264

`filter[A253195(2*(n+1)), A162289(#)]`
-/

namespace A295869.P15985139619870323264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253195 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A295869.P15985139619870323264

namespace A295869

/-- `filter[A253195(2*(n+1)), A162289(#)]` -/
def P15985139619870323264.Spec : Prop :=
  ∀ n, P15985139619870323264.a n = A295869 (n + 1)

end A295869

/-! ## A295869.P1512786913251770371

`∩[A017257(n), A070884(n)]`
-/

namespace A295869.P1512786913251770371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295869.P1512786913251770371

namespace A295869

/-- `∩[A017257(n), A070884(n)]` -/
def P1512786913251770371.Spec : Prop :=
  ∀ n, (P1512786913251770371.a n : ℤ) = A295869 (n + 1)

end A295869

/-! ## A295869.P8216342667797837504

`∩[A007775(n+1), A017257(n)]`
-/

namespace A295869.P8216342667797837504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295869.P8216342667797837504

namespace A295869

/-- `∩[A007775(n+1), A017257(n)]` -/
def P8216342667797837504.Spec : Prop :=
  ∀ n, (P8216342667797837504.a n : ℤ) = A295869 (n + 1)

end A295869

/-!
# A295870: a(n) = binomial(3n,n)*CQC(n), where CQC(n) = A005721(n) = A005190(2n) is a central quadrinomial coefficient.

The programs for A295870, there is no canonical definition to state claims against.
-/

/-! ## A295870.P251264712576434082

`A005809(n)*A005721(n)`
-/

namespace A295870.P251264712576434082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n * A005721 n

end

end A295870.P251264712576434082

/-! ## A295870.P8362186116372073398

`A005190(2*n)*A005809(n)`
-/

namespace A295870.P8362186116372073398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005190 (2 * n) * A005809 n

end

end A295870.P8362186116372073398

/-! ## A295870.P7495051907550365567

`A005809(n)*A008287(A033580(n))`
-/

namespace A295870.P7495051907550365567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n * A008287 (A033580 n).toNat

end

end A295870.P7495051907550365567

/-! ## A295870.P16616757855898477180

`A005809(n)*A163269(A167614(n+1)+1)`
-/

namespace A295870.P16616757855898477180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n * A163269 (A167614 (n + 1) + 1).toNat

end

end A295870.P16616757855898477180

/-! ## A295870.P4310158961214467558

`A005809(n)*A008287(2*n*A016777(n))`
-/

namespace A295870.P4310158961214467558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n * A008287 (2 * ((n : ℤ) * A016777 n)).toNat

end

end A295870.P4310158961214467558

/-!
# A295871: a(n) = numerator(hypergeom([-n, 1/2], [1], 1)*hypergeom([-floor(n/2), (-1)^n/2], [1], 1)).

The programs for A295871, there is no canonical definition to state claims against.
-/

/-! ## A295871.P8071211987208659621

`∏[abs(1-2*n)]/A095987(n)²`
-/

namespace A295871.P8071211987208659621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A095987 n ^ 2 : ℚ)

end

end A295871.P8071211987208659621

/-! ## A295871.P6693037452042308026

`A001790(n)*A163590(n)`
-/

namespace A295871.P6693037452042308026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n * A163590 n

end

end A295871.P6693037452042308026

/-! ## A295871.P7393691678744329344

`sqrt(A038534(n))*A163590(n)`
-/

namespace A295871.P7393691678744329344
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038534 n : ℝ) * (A163590 n : ℝ)

end

end A295871.P7393691678744329344

/-! ## A295871.P6091311208675349781

`A163590(2*n)*A163590(n)`
-/

namespace A295871.P6091311208675349781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 (2 * n) * A163590 n

end

end A295871.P6091311208675349781

/-! ## A295871.P4619414283537545549

`A004730(A004273(n))*A163590(n)`
-/

namespace A295871.P4619414283537545549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 (A004273 n).toNat * A163590 n

end

end A295871.P4619414283537545549

/-!
# A295873: Number of permutations of length n which avoid the patterns 1342, 2413, 3124 and 3142.

The programs for A295873, the canonical program `A295873.P12902730147949224050` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295873 has offset 0).

The definition of A295873 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295873.P12902730147949224050

`7*a(n-1)-16*a(n-2)+14*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6, a(4)=20`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295873

/-- `7*a(n-1)-16*a(n-2)+14*a(n-3)-5*a(n-4)+a(n-5)` -/
def P12902730147949224050.Spec : Prop :=
  ∀ n, P12902730147949224050.a n = A295873 n

theorem P12902730147949224050.correct : P12902730147949224050.Spec := by
  intro n
  simp only [A295873]

end A295873

/-! ## A295873.P3888968027903221990

`A060384(∑[2*A113300(n)])`
-/

namespace A295873.P3888968027903221990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A295873.P3888968027903221990

namespace A295873

/-- `A060384(∑[2*A113300(n)])` -/
def P3888968027903221990.Spec : Prop :=
  ∀ n, P3888968027903221990.a n = A295873 n

end A295873

/-! ## A295873.P4129756065823333964

`A008621(A000073(2*(n+1))-A000073(n))`
-/

namespace A295873.P4129756065823333964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A000073 (2 * (n + 1)) - A000073 n).toNat

end

end A295873.P4129756065823333964

namespace A295873

/-- `A008621(A000073(2*(n+1))-A000073(n))` -/
def P4129756065823333964.Spec : Prop :=
  ∀ n, P4129756065823333964.a n = A295873 n

end A295873

/-! ## A295873.P12925039917910318649

`A110655(A000073(2*(n+1))-A339291(n+1))`
-/

namespace A295873.P12925039917910318649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A000073 (2 * (n + 1)) - A339291 (n + 1)).toNat

end

end A295873.P12925039917910318649

namespace A295873

/-- `A110655(A000073(2*(n+1))-A339291(n+1))` -/
def P12925039917910318649.Spec : Prop :=
  ∀ n, P12925039917910318649.a n = A295873 n

end A295873

/-!
# A295875: Let p = A295895(n) = parity of the binary weight of A005940(1+n). If A005940(1+n) is a square or twice a square (in A028982) then a(n) = 1 - p, otherwise a(n) = p.

The programs for A295875, the canonical program `A295875.P17529281261708969201` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295875 has offset 0).

The definition of A295875 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A295297, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A295875.P17529281261708969201

`A295297(A005940(1+n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A295875

/-- `A295297(A005940(1+n))` -/
def P17529281261708969201.Spec : Prop :=
  ∀ n, P17529281261708969201.a n = A295875 n

theorem P17529281261708969201.correct : P17529281261708969201.Spec := by
  intro n
  simp only [A295875]

end A295875

/-! ## A295875.P14317628116761079368

`and(1, A324348(n))`
-/

namespace A295875.P14317628116761079368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A324348 n)

end

end A295875.P14317628116761079368

namespace A295875

/-- `and(1, A324348(n))` -/
def P14317628116761079368.Spec : Prop :=
  ∀ n, P14317628116761079368.a n = A295875 n

end A295875

/-! ## A295875.P10987891741541148

`xor(A295895(n), A295896(n))`
-/

namespace A295875.P10987891741541148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A295895 n) (A295896 n)

end

end A295875.P10987891741541148

namespace A295875

/-- `xor(A295895(n), A295896(n))` -/
def P10987891741541148.Spec : Prop :=
  ∀ n, P10987891741541148.a n = A295875 n

end A295875

/-! ## A295875.P13206874105712699046

`and(1, A324055(n)+A295894(n))`
-/

namespace A295875.P13206874105712699046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A324055 n + A295894 n)

end

end A295875.P13206874105712699046

namespace A295875

/-- `and(1, A324055(n)+A295894(n))` -/
def P13206874105712699046.Spec : Prop :=
  ∀ n, P13206874105712699046.a n = A295875 n

end A295875

/-! ## A295875.P6129055542113091772

`A000035(A295896(n)+A295894(n))`
-/

namespace A295875.P6129055542113091772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A295896 n + A295894 n).toNat

end

end A295875.P6129055542113091772

namespace A295875

/-- `A000035(A295896(n)+A295894(n))` -/
def P6129055542113091772.Spec : Prop :=
  ∀ n, P6129055542113091772.a n = A295875 n

end A295875

/-! ## A295875.P8550509508164988055

`A000035(A295894(n)-A295896(n))`
-/

namespace A295875.P8550509508164988055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A295894 n - A295896 n).toNat

end

end A295875.P8550509508164988055

namespace A295875

/-- `A000035(A295894(n)-A295896(n))` -/
def P8550509508164988055.Spec : Prop :=
  ∀ n, P8550509508164988055.a n = A295875 n

end A295875

/-!
# A295876: Restricted growth sequence transform of A023900, Product_{p|n} (1-p).

The programs for A295876, there is no canonical definition to state claims against.
-/

/-! ## A295876.P2929870514317402239

`A336147(∏{p}[n+1, #]^ceil(n/8))`
-/

namespace A295876.P2929870514317402239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336147 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) ^ (⌈(n : ℚ) / 8⌉ : ℤ))).toNat

end

end A295876.P2929870514317402239

/-! ## A295876.P13240766633218683537

`A322590(n+1)%Δ[p?[5*n²+1]]`
-/

namespace A295876.P13240766633218683537
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n ^ 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322590 (n + 1)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A295876.P13240766633218683537

/-! ## A295876.P10678843239993863343

`A322590((lcm(6, (n+1)²)/6)^∑{p}[n+1, gcd(n, #)])`
-/

namespace A295876.P10678843239993863343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322590 (SequenceMachineLib.roundAway (((Nat.lcm 6 ((n + 1) ^ 2) : ℚ) / 6) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p))).toNat

end

end A295876.P10678843239993863343

/-! ## A295876.P16538612882777070278

`A336147((n+1)/2^val(n+1, 2)*2^(∑[n]%(n+1)))`
-/

namespace A295876.P16538612882777070278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336147 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) * (2 ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)) : ℚ))).toNat

end

end A295876.P16538612882777070278

/-! ## A295876.P3141408867352856953

`A001222(2^A322590(n+1))`
-/

namespace A295876.P3141408867352856953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A322590 (n + 1) : ℤ))).toNat

end

end A295876.P3141408867352856953

/-!
# A295877: Restricted growth sequence transform of A173557, Product_{p|n} (p-1).

The programs for A295877, there is no canonical definition to state claims against.
-/

/-! ## A295877.P4846612839501858522

`A286610(A007947(n+1))%A000053(n+2)`
-/

namespace A295877.P4846612839501858522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286610 (A007947 (n + 1)).toNat) (A000053 (n + 2))

end

end A295877.P4846612839501858522

/-! ## A295877.P1338071044495317116

`A286610(A007947(n+1)%A126269(n+3))`
-/

namespace A295877.P1338071044495317116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286610 (Int.tmod (A007947 (n + 1)) (A126269 (n + 3))).toNat

end

end A295877.P1338071044495317116

/-! ## A295877.P8145673609909200580

`A286610(A204455(n+1)%A239424(3*n+1))`
-/

namespace A295877.P8145673609909200580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286610 (Int.tmod (A204455 (n + 1)) (A239424 (3 * n + 1))).toNat

end

end A295877.P8145673609909200580

/-! ## A295877.P5872635799773126444

`A286610(A007947(n+1))^A014963(A025747(n))`
-/

namespace A295877.P5872635799773126444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286610 (A007947 (n + 1)).toNat : ℚ) ^ (A014963 (A025747 n).toNat : ℤ)

end

end A295877.P5872635799773126444

/-! ## A295877.P2447884477983160422

`A286610(∏{p}[A212714(2*(n+1)), #])`
-/

namespace A295877.P2447884477983160422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212714 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286610 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A295877.P2447884477983160422

/-!
# A295878: Multiplicative with a(p^(2e)) = 1, a(p^(2e-1)) = prime(e).

The programs for A295878, the canonical program `A295878.P12559335493611426634` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295878 has offset 1).

The definition of A295878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295878.P11242360992485224168

`A181819(A071975(n+1))`
-/

namespace A295878.P11242360992485224168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A071975 (n + 1)).toNat

end

end A295878.P11242360992485224168

namespace A295878

/-- `A181819(A071975(n+1))` -/
def P11242360992485224168.Spec : Prop :=
  ∀ n, P11242360992485224168.a n = A295878 (n + 1)

end A295878

/-! ## A295878.P13828061959078970726

`A319521(A181819(n+1))`
-/

namespace A295878.P13828061959078970726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319521 (A181819 (n + 1)).toNat

end

end A295878.P13828061959078970726

namespace A295878

/-- `A319521(A181819(n+1))` -/
def P13828061959078970726.Spec : Prop :=
  ∀ n, P13828061959078970726.a n = A295878 (n + 1)

end A295878

/-! ## A295878.P12559335493611426634

`∏{e}[A071975(n+1), A000040(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A295878

/-- `∏{e}[A071975(n+1), A000040(#)]` -/
def P12559335493611426634.Spec : Prop :=
  ∀ n, P12559335493611426634.a n = A295878 (n + 1)

theorem P12559335493611426634.correct : P12559335493611426634.Spec := by
  intro n
  simp only [A295878, Nat.add_sub_cancel]

end A295878

/-! ## A295878.P16385122391834225439

`∏{e}[A071975(n+1), A002200(#)]`
-/

namespace A295878.P16385122391834225439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002200 (Nat.factorization (f1 n).natAbs p)

end

end A295878.P16385122391834225439

namespace A295878

/-- `∏{e}[A071975(n+1), A002200(#)]` -/
def P16385122391834225439.Spec : Prop :=
  ∀ n, P16385122391834225439.a n = A295878 (n + 1)

end A295878

/-! ## A295878.P6135379579968677471

`∏{e}[A071975(n+1), A329147(#)]`
-/

namespace A295878.P6135379579968677471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A329147 (Nat.factorization (f1 n).natAbs p)

end

end A295878.P6135379579968677471

namespace A295878

/-- `∏{e}[A071975(n+1), A329147(#)]` -/
def P6135379579968677471.Spec : Prop :=
  ∀ n, P6135379579968677471.a n = A295878 (n + 1)

end A295878

/-! ## A295878.P13294776281263968695

`∏{e}[n+1, A323091(#*(#+6)+1)]`
-/

namespace A295878.P13294776281263968695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A323091 (Nat.factorization (f1 n) p * (Nat.factorization (f1 n) p + 6) + 1)

end

end A295878.P13294776281263968695

namespace A295878

/-- `∏{e}[n+1, A323091(#*(#+6)+1)]` -/
def P13294776281263968695.Spec : Prop :=
  ∀ n, P13294776281263968695.a n = A295878 (n + 1)

end A295878

/-! ## A295878.P9284994092808799632

`∏{e}[n+1, A118382(A266206(#)-2)]`
-/

namespace A295878.P9284994092808799632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A118382 (A266206 (Nat.factorization (f1 n) p) - 2).toNat

end

end A295878.P9284994092808799632

namespace A295878

/-- `∏{e}[n+1, A118382(A266206(#)-2)]` -/
def P9284994092808799632.Spec : Prop :=
  ∀ n, P9284994092808799632.a n = A295878 (n + 1)

end A295878

/-! ## A295878.P15450836461798987369

`∏{e}[n+1, A000120(A019427(#²)²)]`
-/

namespace A295878.P15450836461798987369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000120 (A019427 (Nat.factorization (f1 n) p ^ 2) ^ 2).toNat

end

end A295878.P15450836461798987369

namespace A295878

/-- `∏{e}[n+1, A000120(A019427(#²)²)]` -/
def P15450836461798987369.Spec : Prop :=
  ∀ n, P15450836461798987369.a n = A295878 (n + 1)

end A295878

/-! ## A295878.P11800013256265589821

`(∏{e}[n+1, ceil(2/#)]*∏{e}[n+1, #^(#%2)])%A206734(n+1)²`
-/

namespace A295878.P11800013256265589821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), ⌈2 / (Nat.factorization (f1 n) p : ℚ)⌉) * ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p ^ (Nat.factorization (f2 n) p % 2) : ℕ) : ℤ)) (A206734 (n + 1) ^ 2)

end

end A295878.P11800013256265589821

namespace A295878

/-- `(∏{e}[n+1, ceil(2/#)]*∏{e}[n+1, #^(#%2)])%A206734(n+1)²` -/
def P11800013256265589821.Spec : Prop :=
  ∀ n, P11800013256265589821.a n = A295878 (n + 1)

end A295878

/-! ## A295878.P3972193472420909264

`A061389(A350389(n+1)²)`
-/

namespace A295878.P3972193472420909264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061389 (A350389 (n + 1) ^ 2).toNat

end

end A295878.P3972193472420909264

namespace A295878

/-- `A061389(A350389(n+1)²)` -/
def P3972193472420909264.Spec : Prop :=
  ∀ n, P3972193472420909264.a n = A295878 (n + 1)

end A295878

/-!
# A295879: Multiplicative with a(p) = 1, a(p^e) = prime(e-1) if e > 1.

The programs for A295879, the canonical program `A295879.P12641130573036917857` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295879 has offset 1).

The definition of A295879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295879.P1704415136764482399

`∏{e}[n+1, A005180(#)]`
-/

namespace A295879.P1704415136764482399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A005180 (Nat.factorization (f1 n) p)

end

end A295879.P1704415136764482399

namespace A295879

/-- `∏{e}[n+1, A005180(#)]` -/
def P1704415136764482399.Spec : Prop :=
  ∀ n, P1704415136764482399.a n = A295879 (n + 1)

end A295879

/-! ## A295879.P17946496273503071517

`∏{e}[n+1, A008578(#)]`
-/

namespace A295879.P17946496273503071517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008578 (Nat.factorization (f1 n) p)

end

end A295879.P17946496273503071517

namespace A295879

/-- `∏{e}[n+1, A008578(#)]` -/
def P17946496273503071517.Spec : Prop :=
  ∀ n, P17946496273503071517.a n = A295879 (n + 1)

end A295879

/-! ## A295879.P11207405089914505051

`∏{e}[n+1, A015919(#)]`
-/

namespace A295879.P11207405089914505051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A015919 (Nat.factorization (f1 n) p)

end

end A295879.P11207405089914505051

namespace A295879

/-- `∏{e}[n+1, A015919(#)]` -/
def P11207405089914505051.Spec : Prop :=
  ∀ n, P11207405089914505051.a n = A295879 (n + 1)

end A295879

/-! ## A295879.P13946775233500596778

`∏{e}[n+1, A064555(#)]`
-/

namespace A295879.P13946775233500596778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A064555 (Nat.factorization (f1 n) p)

end

end A295879.P13946775233500596778

namespace A295879

/-- `∏{e}[n+1, A064555(#)]` -/
def P13946775233500596778.Spec : Prop :=
  ∀ n, P13946775233500596778.a n = A295879 (n + 1)

end A295879

/-! ## A295879.P12641130573036917857

`∏{e}[n+1, A158611(#+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A295879

/-- `∏{e}[n+1, A158611(#+1)]` -/
def P12641130573036917857.Spec : Prop :=
  ∀ n, P12641130573036917857.a n = A295879 (n + 1)

theorem P12641130573036917857.correct : P12641130573036917857.Spec := by
  intro n
  simp only [A295879, Nat.add_sub_cancel]

end A295879

/-! ## A295879.P2428859057809124454

`A181819(A003557(n+1))`
-/

namespace A295879.P2428859057809124454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A003557 (n + 1)).toNat

end

end A295879.P2428859057809124454

namespace A295879

/-- `A181819(A003557(n+1))` -/
def P2428859057809124454.Spec : Prop :=
  ∀ n, P2428859057809124454.a n = A295879 (n + 1)

end A295879

/-! ## A295879.P3457424030153011366

`A064989(A181819(n+1))`
-/

namespace A295879.P3457424030153011366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A181819 (n + 1)).toNat

end

end A295879.P3457424030153011366

namespace A295879

/-- `A064989(A181819(n+1))` -/
def P3457424030153011366.Spec : Prop :=
  ∀ n, P3457424030153011366.a n = A295879 (n + 1)

end A295879

/-! ## A295879.P17117600395632353870

`∏{e}[A003557(n+1), A000040(#)]`
-/

namespace A295879.P17117600395632353870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A295879.P17117600395632353870

namespace A295879

/-- `∏{e}[A003557(n+1), A000040(#)]` -/
def P17117600395632353870.Spec : Prop :=
  ∀ n, P17117600395632353870.a n = A295879 (n + 1)

end A295879

/-! ## A295879.P17921263816508908770

`A181819((n+1)/A007947(n+1))`
-/

namespace A295879.P17921263816508908770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A295879.P17921263816508908770

namespace A295879

/-- `A181819((n+1)/A007947(n+1))` -/
def P17921263816508908770.Spec : Prop :=
  ∀ n, P17921263816508908770.a n = A295879 (n + 1)

end A295879

/-! ## A295879.P13480182676904734016

`A181819(A295658((n+1)²))`
-/

namespace A295879.P13480182676904734016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A295658 ((n + 1) ^ 2)).toNat

end

end A295879.P13480182676904734016

namespace A295879

/-- `A181819(A295658((n+1)²))` -/
def P13480182676904734016.Spec : Prop :=
  ∀ n, P13480182676904734016.a n = A295879 (n + 1)

end A295879

/-!
# A295881: Reversing binary representation of the deficiency of n, A033879(n).

The programs for A295881, the canonical program `A295881.P4822389694980892212` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295881 has offset 1).

The definition of A295881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295881.P4822389694980892212

`xor(2*A033880(n+1), A033880(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A295881

/-- `xor(2*A033880(n+1), A033880(n+1))` -/
def P4822389694980892212.Spec : Prop :=
  ∀ n, P4822389694980892212.a n = A295881 (n + 1)

theorem P4822389694980892212.correct : P4822389694980892212.Spec := by
  intro n
  simp only [A295881, Nat.add_sub_cancel]

end A295881

/-! ## A295881.P11507102548632677568

`xor(2*A235796(n+1)+1, A235796(n+1))`
-/

namespace A295881.P11507102548632677568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A235796 (n + 1) + 1) (A235796 (n + 1))

end

end A295881.P11507102548632677568

namespace A295881

/-- `xor(2*A235796(n+1)+1, A235796(n+1))` -/
def P11507102548632677568.Spec : Prop :=
  ∀ n, P11507102548632677568.a n = A295881 (n + 1)

end A295881

/-! ## A295881.P2492793078378594315

`xor(A235796(n+1)+A033879(n+1), A235796(n+1))`
-/

namespace A295881.P2492793078378594315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A235796 (n + 1) + A033879 (n + 1)) (A235796 (n + 1))

end

end A295881.P2492793078378594315

namespace A295881

/-- `xor(A235796(n+1)+A033879(n+1), A235796(n+1))` -/
def P2492793078378594315.Spec : Prop :=
  ∀ n, P2492793078378594315.a n = A295881 (n + 1)

end A295881

/-! ## A295881.P14917860270944828235

`xor(A033880(n+1)-A033879(n+1), A033880(n+1))`
-/

namespace A295881.P14917860270944828235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033880 (n + 1) - A033879 (n + 1)) (A033880 (n + 1))

end

end A295881.P14917860270944828235

namespace A295881

/-- `xor(A033880(n+1)-A033879(n+1), A033880(n+1))` -/
def P14917860270944828235.Spec : Prop :=
  ∀ n, P14917860270944828235.a n = A295881 (n + 1)

end A295881

/-! ## A295881.P3815135660681422383

`xor(A235796(n+1)-A033880(n+1), A235796(n+1))`
-/

namespace A295881.P3815135660681422383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A235796 (n + 1) - A033880 (n + 1)) (A235796 (n + 1))

end

end A295881.P3815135660681422383

namespace A295881

/-- `xor(A235796(n+1)-A033880(n+1), A235796(n+1))` -/
def P3815135660681422383.Spec : Prop :=
  ∀ n, P3815135660681422383.a n = A295881 (n + 1)

end A295881

/-!
# A295883: Number of exponents that are 3 in the prime factorization of n.

The programs for A295883, the canonical program `A295883.P14195698401938715944` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295883 has offset 1).

The definition of A295883 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295883.P17471904832755178086

`A295659(n+1)-A295884(n+1)`
-/

namespace A295883.P17471904832755178086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295659 (n + 1) - A295884 (n + 1)

end

end A295883.P17471904832755178086

namespace A295883

/-- `A295659(n+1)-A295884(n+1)` -/
def P17471904832755178086.Spec : Prop :=
  ∀ n, P17471904832755178086.a n = A295883 (n + 1)

end A295883

/-! ## A295883.P14195698401938715944

`∑{e}[n+1, C(3, #)%3]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A295883

/-- `∑{e}[n+1, C(3, #)%3]` -/
def P14195698401938715944.Spec : Prop :=
  ∀ n, (P14195698401938715944.a n : ℤ) = A295883 (n + 1)

theorem P14195698401938715944.correct : P14195698401938715944.Spec := by
  intro n
  simp only [A295883, Nat.add_sub_cancel]

end A295883

/-! ## A295883.P15968998734926727060

`∑{e}[n+1, and(4, #!)/4]`
-/

namespace A295883.P15968998734926727060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (Nat.land 4 (Nat.factorial (Nat.factorization (f1 n) p)) : ℚ) / 4

end

end A295883.P15968998734926727060

namespace A295883

/-- `∑{e}[n+1, and(4, #!)/4]` -/
def P15968998734926727060.Spec : Prop :=
  ∀ n, P15968998734926727060.a n = (A295883 (n + 1) : ℚ)

end A295883

/-! ## A295883.P6662460795129803776

`val(A295878(n+1), 3)`
-/

namespace A295883.P6662460795129803776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A295878 (n + 1)).toNat 3

end

end A295883.P6662460795129803776

namespace A295883

/-- `val(A295878(n+1), 3)` -/
def P6662460795129803776.Spec : Prop :=
  ∀ n, (P6662460795129803776.a n : ℤ) = A295883 (n + 1)

end A295883

/-! ## A295883.P6859548360672460544

`val(A295879(n+1), 3)`
-/

namespace A295883.P6859548360672460544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A295879 (n + 1)).toNat 3

end

end A295883.P6859548360672460544

namespace A295883

/-- `val(A295879(n+1), 3)` -/
def P6859548360672460544.Spec : Prop :=
  ∀ n, (P6859548360672460544.a n : ℤ) = A295883 (n + 1)

end A295883

/-! ## A295883.P3666672474065450812

`val(A181819(n+1), 5)`
-/

namespace A295883.P3666672474065450812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A181819 (n + 1)).toNat 5

end

end A295883.P3666672474065450812

namespace A295883

/-- `val(A181819(n+1), 5)` -/
def P3666672474065450812.Spec : Prop :=
  ∀ n, (P3666672474065450812.a n : ℤ) = A295883 (n + 1)

end A295883

/-! ## A295883.P11186025944577246055

`val(∏{e}[n+1, A000040(#)], 5)`
-/

namespace A295883.P11186025944577246055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat 5

end

end A295883.P11186025944577246055

namespace A295883

/-- `val(∏{e}[n+1, A000040(#)], 5)` -/
def P11186025944577246055.Spec : Prop :=
  ∀ n, (P11186025944577246055.a n : ℤ) = A295883 (n + 1)

end A295883

/-! ## A295883.P12049280093594845612

`A007949(A295878(n+1))`
-/

namespace A295883.P12049280093594845612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A295878 (n + 1)).toNat

end

end A295883.P12049280093594845612

namespace A295883

/-- `A007949(A295878(n+1))` -/
def P12049280093594845612.Spec : Prop :=
  ∀ n, P12049280093594845612.a n = A295883 (n + 1)

end A295883

/-! ## A295883.P4607638568487794769

`A007949(A295879(n+1))`
-/

namespace A295883.P4607638568487794769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A295879 (n + 1)).toNat

end

end A295883.P4607638568487794769

namespace A295883

/-- `A007949(A295879(n+1))` -/
def P4607638568487794769.Spec : Prop :=
  ∀ n, P4607638568487794769.a n = A295883 (n + 1)

end A295883

/-! ## A295883.P8838150833734844312

`A286852(A062378(n+1))`
-/

namespace A295883.P8838150833734844312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 (A062378 (n + 1)).toNat

end

end A295883.P8838150833734844312

namespace A295883

/-- `A286852(A062378(n+1))` -/
def P8838150833734844312.Spec : Prop :=
  ∀ n, P8838150833734844312.a n = A295883 (n + 1)

end A295883

/-! ## A295883.P16369411043508224485

`A366124(A385007(n+1))`
-/

namespace A295883.P16369411043508224485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366124 (A385007 (n + 1)).toNat

end

end A295883.P16369411043508224485

namespace A295883

/-- `A366124(A385007(n+1))` -/
def P16369411043508224485.Spec : Prop :=
  ∀ n, P16369411043508224485.a n = A295883 (n + 1)

end A295883

/-! ## A295883.P10422645028812197826

`A295884(A380396(n+1)²)`
-/

namespace A295883.P10422645028812197826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295884 (A380396 (n + 1) ^ 2).toNat

end

end A295883.P10422645028812197826

namespace A295883

/-- `A295884(A380396(n+1)²)` -/
def P10422645028812197826.Spec : Prop :=
  ∀ n, P10422645028812197826.a n = A295883 (n + 1)

end A295883

/-! ## A295883.P14518188187211638456

`val(A000005((n+1)²), 7)`
-/

namespace A295883.P14518188187211638456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000005 ((n + 1) ^ 2)).toNat 7

end

end A295883.P14518188187211638456

namespace A295883

/-- `val(A000005((n+1)²), 7)` -/
def P14518188187211638456.Spec : Prop :=
  ∀ n, (P14518188187211638456.a n : ℤ) = A295883 (n + 1)

end A295883

/-! ## A295883.P13228365895502958715

`A214411(A000005((n+1)²))`
-/

namespace A295883.P13228365895502958715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214411 (A000005 ((n + 1) ^ 2)).toNat

end

end A295883.P13228365895502958715

namespace A295883

/-- `A214411(A000005((n+1)²))` -/
def P13228365895502958715.Spec : Prop :=
  ∀ n, P13228365895502958715.a n = A295883 (n + 1)

end A295883

/-! ## A295883.P13403932944257968359

`and(A042827(n), A318673(n+1))`
-/

namespace A295883.P13403932944257968359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A042827 n) (A318673 (n + 1))

end

end A295883.P13403932944257968359

namespace A295883

/-- `and(A042827(n), A318673(n+1))` -/
def P13403932944257968359.Spec : Prop :=
  ∀ n, P13403932944257968359.a n = A295883 (n + 1)

end A295883

/-! ## A295883.P17450054337545538475

`A094388(n)%A115568(n+1)`
-/

namespace A295883.P17450054337545538475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094388 n) (A115568 (n + 1))

end

end A295883.P17450054337545538475

namespace A295883

/-- `A094388(n)%A115568(n+1)` -/
def P17450054337545538475.Spec : Prop :=
  ∀ n, P17450054337545538475.a n = A295883 (n + 1)

end A295883

/-! ## A295883.P1954835745546113846

`A307456(A307408(n+1))%A307427(n+1)`
-/

namespace A295883.P1954835745546113846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307456 (A307408 (n + 1)).toNat) (A307427 (n + 1))

end

end A295883.P1954835745546113846

namespace A295883

/-- `A307456(A307408(n+1))%A307427(n+1)` -/
def P1954835745546113846.Spec : Prop :=
  ∀ n, P1954835745546113846.a n = A295883 (n + 1)

end A295883

/-! ## A295883.P7345411977218239483

`A214411(A355583((n+1)²))`
-/

namespace A295883.P7345411977218239483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214411 (A355583 ((n + 1) ^ 2)).toNat

end

end A295883.P7345411977218239483

namespace A295883

/-- `A214411(A355583((n+1)²))` -/
def P7345411977218239483.Spec : Prop :=
  ∀ n, P7345411977218239483.a n = A295883 (n + 1)

end A295883

/-!
# A295884: Number of exponents larger than 3 in the prime factorization of n.

The programs for A295884, the canonical program `A295884.P13042322752059309617` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295884 has offset 1).

The definition of A295884 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295659, A295883, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A295884.P13042322752059309617

`A295659(n+1)-A295883(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A295884

/-- `A295659(n+1)-A295883(n+1)` -/
def P13042322752059309617.Spec : Prop :=
  ∀ n, P13042322752059309617.a n = A295884 (n + 1)

theorem P13042322752059309617.correct : P13042322752059309617.Spec := by
  intro n
  simp only [A295884, Nat.add_sub_cancel]

end A295884

/-! ## A295884.P6263718395115402167

`∑{e}[n+1, floor(log2(sqrt(#)))]`
-/

namespace A295884.P6263718395115402167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌊Real.logb 2 (Real.sqrt (Nat.factorization (f1 n) p : ℝ))⌋

end

end A295884.P6263718395115402167

namespace A295884

/-- `∑{e}[n+1, floor(log2(sqrt(#)))]` -/
def P6263718395115402167.Spec : Prop :=
  ∀ n, P6263718395115402167.a n = A295884 (n + 1)

end A295884

/-! ## A295884.P2914488224528354596

`val(A253139(n+1), 5)`
-/

namespace A295884.P2914488224528354596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A253139 (n + 1)).toNat 5

end

end A295884.P2914488224528354596

namespace A295884

/-- `val(A253139(n+1), 5)` -/
def P2914488224528354596.Spec : Prop :=
  ∀ n, (P2914488224528354596.a n : ℤ) = A295884 (n + 1)

end A295884

/-! ## A295884.P6094569862135539427

`A001222(∏{e}[n+1, floor(sqrt(#))])`
-/

namespace A295884.P6094569862135539427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), Nat.sqrt (Nat.factorization (f1 n) p))

end

end A295884.P6094569862135539427

namespace A295884

/-- `A001222(∏{e}[n+1, floor(sqrt(#))])` -/
def P6094569862135539427.Spec : Prop :=
  ∀ n, P6094569862135539427.a n = A295884 (n + 1)

end A295884

/-! ## A295884.P6881617851064324842

`A001221(A008835(n+1))`
-/

namespace A295884.P6881617851064324842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008835 (n + 1)).toNat

end

end A295884.P6881617851064324842

namespace A295884

/-- `A001221(A008835(n+1))` -/
def P6881617851064324842.Spec : Prop :=
  ∀ n, P6881617851064324842.a n = A295884 (n + 1)

end A295884

/-! ## A295884.P4885651519382071361

`A056170(A000188(n+1))`
-/

namespace A295884.P4885651519382071361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A000188 (n + 1)).toNat

end

end A295884.P4885651519382071361

namespace A295884

/-- `A056170(A000188(n+1))` -/
def P4885651519382071361.Spec : Prop :=
  ∀ n, P4885651519382071361.a n = A295884 (n + 1)

end A295884

/-! ## A295884.P5953786868987589474

`A056170(A062378(n+1))`
-/

namespace A295884.P5953786868987589474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A062378 (n + 1)).toNat

end

end A295884.P5953786868987589474

namespace A295884

/-- `A056170(A062378(n+1))` -/
def P5953786868987589474.Spec : Prop :=
  ∀ n, P5953786868987589474.a n = A295884 (n + 1)

end A295884

/-! ## A295884.P14742885190434750762

`A295659(A003557(n+1))`
-/

namespace A295884.P14742885190434750762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295659 (A003557 (n + 1)).toNat

end

end A295884.P14742885190434750762

namespace A295884

/-- `A295659(A003557(n+1))` -/
def P14742885190434750762.Spec : Prop :=
  ∀ n, P14742885190434750762.a n = A295884 (n + 1)

end A295884

/-! ## A295884.P3493094750075441297

`A295659(A008833(n+1))`
-/

namespace A295884.P3493094750075441297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295659 (A008833 (n + 1)).toNat

end

end A295884.P3493094750075441297

namespace A295884

/-- `A295659(A008833(n+1))` -/
def P3493094750075441297.Spec : Prop :=
  ∀ n, P3493094750075441297.a n = A295884 (n + 1)

end A295884

/-! ## A295884.P11231333342671192993

`A056239(∑{e}[n+1, round(A056239(#+1)/5)]+1)`
-/

namespace A295884.P11231333342671192993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway ((A056239 (Nat.factorization (f1 n) p + 1) : ℚ) / 5) + 1).toNat

end

end A295884.P11231333342671192993

namespace A295884

/-- `A056239(∑{e}[n+1, round(A056239(#+1)/5)]+1)` -/
def P11231333342671192993.Spec : Prop :=
  ∀ n, P11231333342671192993.a n = A295884 (n + 1)

end A295884

/-! ## A295884.P17866296342739209935

`xor(A307410(A307433(n)), A307430(n+1))`
-/

namespace A295884.P17866296342739209935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A307410 (A307433 n).toNat) (A307430 (n + 1))

end

end A295884.P17866296342739209935

namespace A295884

/-- `xor(A307410(A307433(n)), A307430(n+1))` -/
def P17866296342739209935.Spec : Prop :=
  ∀ n, P17866296342739209935.a n = A295884 (n + 1)

end A295884

/-! ## A295884.P9447786663552357751

`A048493(n)%A008835(n+1)`
-/

namespace A295884.P9447786663552357751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048493 n) (A008835 (n + 1))

end

end A295884.P9447786663552357751

namespace A295884

/-- `A048493(n)%A008835(n+1)` -/
def P9447786663552357751.Spec : Prop :=
  ∀ n, P9447786663552357751.a n = A295884 (n + 1)

end A295884

/-! ## A295884.P8985596011699745602

`A048482(n)%A008835(n+1)`
-/

namespace A295884.P8985596011699745602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048482 n) (A008835 (n + 1))

end

end A295884.P8985596011699745602

namespace A295884

/-- `A048482(n)%A008835(n+1)` -/
def P8985596011699745602.Spec : Prop :=
  ∀ n, P8985596011699745602.a n = A295884 (n + 1)

end A295884

/-! ## A295884.P10211006430487254573

`gcd(A032441(n), A061200(n+1))-1`
-/

namespace A295884.P10211006430487254573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A032441 n) (A061200 (n + 1)) : ℤ) - 1

end

end A295884.P10211006430487254573

namespace A295884

/-- `gcd(A032441(n), A061200(n+1))-1` -/
def P10211006430487254573.Spec : Prop :=
  ∀ n, P10211006430487254573.a n = A295884 (n + 1)

end A295884

/-! ## A295884.P2552864327577328081

`A014963(∏{p}[n-∑[n], #])%A318497(n+1)`
-/

namespace A295884.P2552864327577328081
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)) (A318497 (n + 1))

end

end A295884.P2552864327577328081

namespace A295884

/-- `A014963(∏{p}[n-∑[n], #])%A318497(n+1)` -/
def P2552864327577328081.Spec : Prop :=
  ∀ n, P2552864327577328081.a n = A295884 (n + 1)

end A295884

/-! ## A295884.P8806736906906777702

`A380397(n+1)^3^n`
-/

namespace A295884.P8806736906906777702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380397 (n + 1) ^ 3 ^ n

end

end A295884.P8806736906906777702

namespace A295884

/-- `A380397(n+1)^3^n` -/
def P8806736906906777702.Spec : Prop :=
  ∀ n, P8806736906906777702.a n = A295884 (n + 1)

end A295884

/-! ## A295884.P8506379454196880831

`∑{d}[n+1, A073699(#)*A380397((n+1)/#)]`
-/

namespace A295884.P8506379454196880831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073699 d * A380397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A295884.P8506379454196880831

namespace A295884

/-- `∑{d}[n+1, A073699(#)*A380397((n+1)/#)]` -/
def P8506379454196880831.Spec : Prop :=
  ∀ n, P8506379454196880831.a n = A295884 (n + 1)

end A295884

/-!
# A295885: Filter combining sum of proper divisors (A001065) and cototient (A051953) of n.

The programs for A295885, there is no canonical definition to state claims against.
-/

/-! ## A295885.P7954556468394554662

`A300235(n+1)+A057428(n²)`
-/

namespace A295885.P7954556468394554662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300235 (n + 1) + A057428 (n ^ 2)

end

end A295885.P7954556468394554662

/-!
# A295886: Filter-sequence combining A003557(n) and A023900(n).

The programs for A295886, there is no canonical definition to state claims against.
-/

/-! ## A295886.P9418793957956421541

`A318893(n+1)%A120764(n)`
-/

namespace A295886.P9418793957956421541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318893 (n + 1)) (A120764 n)

end

end A295886.P9418793957956421541

/-! ## A295886.P12650039095005770864

`A318893(n+1)+A000007(A347446(n))`
-/

namespace A295886.P12650039095005770864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318893 (n + 1) + A000007 (A347446 n).toNat

end

end A295886.P12650039095005770864

/-! ## A295886.P10407541112628572941

`A318893(n+1)+A121262(A152472(n+1))`
-/

namespace A295886.P10407541112628572941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318893 (n + 1) + A121262 (A152472 (n + 1)).toNat

end

end A295886.P10407541112628572941

/-! ## A295886.P10332199617591849267

`A318893(n+1)+A000007(A329341(n+1))`
-/

namespace A295886.P10332199617591849267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318893 (n + 1) + A000007 (A329341 (n + 1)).toNat

end

end A295886.P10332199617591849267

/-! ## A295886.P2022603294653752473

`A318893(n+1)+A008683(A335778(n+1))`
-/

namespace A295886.P2022603294653752473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318893 (n + 1) + A008683 (A335778 (n + 1)).toNat

end

end A295886.P2022603294653752473

/-!
# A295887: Filter sequence combining A003557(n) and A173557(n); the restricted growth sequence transform of A291756.

The programs for A295887, there is no canonical definition to state claims against.
-/

/-! ## A295887.P17054812157513073228

`A006368(A026741(n+1)%A323065(n+1))`
-/

namespace A295887.P17054812157513073228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (Int.tmod (A026741 (n + 1)) (A323065 (n + 1))).toNat

end

end A295887.P17054812157513073228

/-! ## A295887.P18281191247992087893

`A318839(n+1)+A289057(A320246(2*n))`
-/

namespace A295887.P18281191247992087893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318839 (n + 1) + A289057 (A320246 (2 * n)).toNat

end

end A295887.P18281191247992087893

/-! ## A295887.P16167499456953380339

`A001511(∪[A280088(2*n+1), A167104(n)])`
-/

namespace A295887.P16167499456953380339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280088 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167104 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A295887.P16167499456953380339

/-! ## A295887.P13089114397473616205

`A006368(A187829(n+1)/A000034(n))`
-/

namespace A295887.P13089114397473616205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (SequenceMachineLib.roundAway ((A187829 (n + 1) : ℚ) / (A000034 n : ℚ))).toNat

end

end A295887.P13089114397473616205

/-! ## A295887.P3683924203986169009

`A106466(A187829(n+1)+A004524(n)-1)`
-/

namespace A295887.P3683924203986169009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (A187829 (n + 1) + (A004524 n - 1)).toNat

end

end A295887.P3683924203986169009

/-!
# A295888: Filter combining prime signature of n (A101296) with Dedekind's psi (A001615).

The programs for A295888, there is no canonical definition to state claims against.
-/

/-! ## A295888.P9468758841180554976

`A323372(A291769(n)%A248753(n+1))`
-/

namespace A295888.P9468758841180554976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323372 (Int.tmod (A291769 n) (A248753 (n + 1))).toNat

end

end A295888.P9468758841180554976

/-! ## A295888.P4485885186465867908

`A323372(A291769(n))+A000035(A033547(n))`
-/

namespace A295888.P4485885186465867908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323372 (A291769 n).toNat + A000035 (A033547 n).toNat

end

end A295888.P4485885186465867908

/-! ## A295888.P18325115673296594509

`A008833(A088050(n+1))*A323372(A291769(n))`
-/

namespace A295888.P18325115673296594509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A088050 (n + 1)).toNat * A323372 (A291769 n).toNat

end

end A295888.P18325115673296594509

/-! ## A295888.P2473202541841677201

`A291769(A323372(n+1))-A008833(A088050(n+1))`
-/

namespace A295888.P2473202541841677201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 (A323372 (n + 1)).toNat - A008833 (A088050 (n + 1)).toNat

end

end A295888.P2473202541841677201

/-!
# A295889: a(n) = 1 if binary weights of n and 3n have the same parity, 0 otherwise.

The programs for A295889, the canonical program `A295889.P9945374899946900535` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295889 has offset 0).

The definition of A295889 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295889.P16800113806041609450

`1-A295890(n)`
-/

namespace A295889.P16800113806041609450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A295890 n

end

end A295889.P16800113806041609450

namespace A295889

/-- `1-A295890(n)` -/
def P16800113806041609450.Spec : Prop :=
  ∀ n, P16800113806041609450.a n = A295889 n

end A295889

/-! ## A295889.P9945374899946900535

`A000035(1+A000120(n)+A000120(3*n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A295889

/-- `A000035(1+A000120(n)+A000120(3*n))` -/
def P9945374899946900535.Spec : Prop :=
  ∀ n, P9945374899946900535.a n = A295889 n

theorem P9945374899946900535.correct : P9945374899946900535.Spec := by
  intro n
  simp only [A295889]

end A295889

/-! ## A295889.P520040458375247109

`log2(gcd(2, A007302(n)))`
-/

namespace A295889.P520040458375247109
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A007302 n) : ℝ)

end

end A295889.P520040458375247109

namespace A295889

/-- `log2(gcd(2, A007302(n)))` -/
def P520040458375247109.Spec : Prop :=
  ∀ n, P520040458375247109.a n = (A295889 n : ℝ)

end A295889

/-! ## A295889.P4635304722501926971

`and(1, A240388(n)+1)`
-/

namespace A295889.P4635304722501926971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A240388 n + 1)

end

end A295889.P4635304722501926971

namespace A295889

/-- `and(1, A240388(n)+1)` -/
def P4635304722501926971.Spec : Prop :=
  ∀ n, P4635304722501926971.a n = A295889 n

end A295889

/-! ## A295889.P2428006374411517154

`xor(1, A295890(2*n))`
-/

namespace A295889.P2428006374411517154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A295890 (2 * n))

end

end A295889.P2428006374411517154

namespace A295889

/-- `xor(1, A295890(2*n))` -/
def P2428006374411517154.Spec : Prop :=
  ∀ n, P2428006374411517154.a n = A295889 n

end A295889

/-! ## A295889.P2289411978641147269

`1-a(A053646(n))` with `a(0)=1`
-/

namespace A295889.P2289411978641147269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (A053646 n).toNat

end

end A295889.P2289411978641147269

namespace A295889

/-- `1-a(A053646(n))` -/
def P2289411978641147269.Spec : Prop :=
  ∀ n, P2289411978641147269.a n = A295889 n

end A295889

/-! ## A295889.P1366686987050742819

`A295890(3*n+n+1)`
-/

namespace A295889.P1366686987050742819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295890 (3 * n + (n + 1))

end

end A295889.P1366686987050742819

namespace A295889

/-- `A295890(3*n+n+1)` -/
def P1366686987050742819.Spec : Prop :=
  ∀ n, P1366686987050742819.a n = A295889 n

end A295889

/-! ## A295889.P11977138173427899332

`A002324(A380122(n))`
-/

namespace A295889.P11977138173427899332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (A380122 n).toNat

end

end A295889.P11977138173427899332

namespace A295889

/-- `A002324(A380122(n))` -/
def P11977138173427899332.Spec : Prop :=
  ∀ n, P11977138173427899332.a n = A295889 n

end A295889

/-! ## A295889.P9993462941301254527

`A059841(A324466(n))`
-/

namespace A295889.P9993462941301254527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A324466 n).toNat

end

end A295889.P9993462941301254527

namespace A295889

/-- `A059841(A324466(n))` -/
def P9993462941301254527.Spec : Prop :=
  ∀ n, P9993462941301254527.a n = A295889 n

end A295889

/-! ## A295889.P13747268632502237522

`A000035(A240388(n)+1)`
-/

namespace A295889.P13747268632502237522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A240388 n + 1).toNat

end

end A295889.P13747268632502237522

namespace A295889

/-- `A000035(A240388(n)+1)` -/
def P13747268632502237522.Spec : Prop :=
  ∀ n, P13747268632502237522.a n = A295889 n

end A295889

/-! ## A295889.P11588954427086557912

`A000035(A324466(n)+1)`
-/

namespace A295889.P11588954427086557912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A324466 n + 1).toNat

end

end A295889.P11588954427086557912

namespace A295889

/-- `A000035(A324466(n)+1)` -/
def P11588954427086557912.Spec : Prop :=
  ∀ n, P11588954427086557912.a n = A295889 n

end A295889

/-! ## A295889.P16375055341231513865

`1-A010060(A184617(n))`
-/

namespace A295889.P16375055341231513865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010060 (A184617 n).toNat

end

end A295889.P16375055341231513865

namespace A295889

/-- `1-A010060(A184617(n))` -/
def P16375055341231513865.Spec : Prop :=
  ∀ n, P16375055341231513865.a n = A295889 n

end A295889

/-! ## A295889.P8574445266548728382

`A010059(xor(n, A293162(n)))`
-/

namespace A295889.P8574445266548728382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (Int.xor (n : ℤ) (A293162 n)).toNat

end

end A295889.P8574445266548728382

namespace A295889

/-- `A010059(xor(n, A293162(n)))` -/
def P8574445266548728382.Spec : Prop :=
  ∀ n, P8574445266548728382.a n = A295889 n

end A295889

/-! ## A295889.P3200588204429903147

`A000035((1-A324466(n))²)`
-/

namespace A295889.P3200588204429903147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((1 - A324466 n) ^ 2).toNat

end

end A295889.P3200588204429903147

namespace A295889

/-- `A000035((1-A324466(n))²)` -/
def P3200588204429903147.Spec : Prop :=
  ∀ n, P3200588204429903147.a n = A295889 n

end A295889

/-! ## A295889.P14893643576960528119

`and(1, A007302(n)+A001535(n))`
-/

namespace A295889.P14893643576960528119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A007302 n + A001535 n)

end

end A295889.P14893643576960528119

namespace A295889

/-- `and(1, A007302(n)+A001535(n))` -/
def P14893643576960528119.Spec : Prop :=
  ∀ n, P14893643576960528119.a n = A295889 n

end A295889

/-! ## A295889.P13911518851924337530

`and(1, A016760(n)+A007302(n))`
-/

namespace A295889.P13911518851924337530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A016760 n + A007302 n)

end

end A295889.P13911518851924337530

namespace A295889

/-- `and(1, A016760(n)+A007302(n))` -/
def P13911518851924337530.Spec : Prop :=
  ∀ n, P13911518851924337530.a n = A295889 n

end A295889

/-! ## A295889.P13302877528241816683

`and(1, A017286(n)+A007302(n))`
-/

namespace A295889.P13302877528241816683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A017286 n + A007302 n)

end

end A295889.P13302877528241816683

namespace A295889

/-- `and(1, A017286(n)+A007302(n))` -/
def P13302877528241816683.Spec : Prop :=
  ∀ n, P13302877528241816683.a n = A295889 n

end A295889

/-! ## A295889.P18054483102105209015

`and(1, A017310(n)+A007302(n))`
-/

namespace A295889.P18054483102105209015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A017310 n + A007302 n)

end

end A295889.P18054483102105209015

namespace A295889

/-- `and(1, A017310(n)+A007302(n))` -/
def P18054483102105209015.Spec : Prop :=
  ∀ n, P18054483102105209015.a n = A295889 n

end A295889

/-! ## A295889.P301174323824546516

`and(1, A017334(n)+A007302(n))`
-/

namespace A295889.P301174323824546516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A017334 n + A007302 n)

end

end A295889.P301174323824546516

namespace A295889

/-- `and(1, A017334(n)+A007302(n))` -/
def P301174323824546516.Spec : Prop :=
  ∀ n, P301174323824546516.a n = A295889 n

end A295889

/-! ## A295889.P488003111710983060

`and(1, A017358(n)+A007302(n))`
-/

namespace A295889.P488003111710983060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A017358 n + A007302 n)

end

end A295889.P488003111710983060

namespace A295889

/-- `and(1, A017358(n)+A007302(n))` -/
def P488003111710983060.Spec : Prop :=
  ∀ n, P488003111710983060.a n = A295889 n

end A295889

/-!
# A295890: a(n) = 1 if binary weights of n and 3n have different parity, 0 otherwise; a(n) = A010060(n) XOR A010060(3n).

The programs for A295890, the canonical program `A295890.P8084053589707736800` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295890 has offset 0).

The definition of A295890 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295890.P8084053589707736800

`1-A295889(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A295890

/-- `1-A295889(n)` -/
def P8084053589707736800.Spec : Prop :=
  ∀ n, P8084053589707736800.a n = A295890 n

theorem P8084053589707736800.correct : P8084053589707736800.Spec := by
  intro n
  simp only [A295890]

end A295890

/-! ## A295890.P15865839820538689650

`A007302(n)%2`
-/

namespace A295890.P15865839820538689650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007302 n) 2

end

end A295890.P15865839820538689650

namespace A295890

/-- `A007302(n)%2` -/
def P15865839820538689650.Spec : Prop :=
  ∀ n, P15865839820538689650.a n = A295890 n

end A295890

/-! ## A295890.P9708695700478694305

`A240388(n)%2`
-/

namespace A295890.P9708695700478694305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240388 n) 2

end

end A295890.P9708695700478694305

namespace A295890

/-- `A240388(n)%2` -/
def P9708695700478694305.Spec : Prop :=
  ∀ n, P9708695700478694305.a n = A295890 n

end A295890

/-! ## A295890.P562937802720860660

`A324466(n)%2`
-/

namespace A295890.P562937802720860660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324466 n) 2

end

end A295890.P562937802720860660

namespace A295890

/-- `A324466(n)%2` -/
def P562937802720860660.Spec : Prop :=
  ∀ n, P562937802720860660.a n = A295890 n

end A295890

/-! ## A295890.P6605475817856086822

`A379658(n)%2`
-/

namespace A295890.P6605475817856086822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379658 n) 2

end

end A295890.P6605475817856086822

namespace A295890

/-- `A379658(n)%2` -/
def P6605475817856086822.Spec : Prop :=
  ∀ n, P6605475817856086822.a n = A295890 n

end A295890

/-! ## A295890.P13376384391688972628

`and(1, A334913(n))`
-/

namespace A295890.P13376384391688972628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A334913 n)

end

end A295890.P13376384391688972628

namespace A295890

/-- `and(1, A334913(n))` -/
def P13376384391688972628.Spec : Prop :=
  ∀ n, P13376384391688972628.a n = A295890 n

end A295890

/-! ## A295890.P13322534918225592938

`1-a(A053646(n))` with `a(0)=0`
-/

namespace A295890.P13322534918225592938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (A053646 n).toNat

end

end A295890.P13322534918225592938

namespace A295890

/-- `1-a(A053646(n))` -/
def P13322534918225592938.Spec : Prop :=
  ∀ n, P13322534918225592938.a n = A295890 n

end A295890

/-! ## A295890.P10902615442996342236

`A010060(A184617(n))`
-/

namespace A295890.P10902615442996342236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A184617 n).toNat

end

end A295890.P10902615442996342236

namespace A295890

/-- `A010060(A184617(n))` -/
def P10902615442996342236.Spec : Prop :=
  ∀ n, P10902615442996342236.a n = A295890 n

end A295890

/-! ## A295890.P14499127336685158996

`A000035(A240388(n))`
-/

namespace A295890.P14499127336685158996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A240388 n).toNat

end

end A295890.P14499127336685158996

namespace A295890

/-- `A000035(A240388(n))` -/
def P14499127336685158996.Spec : Prop :=
  ∀ n, P14499127336685158996.a n = A295890 n

end A295890

/-! ## A295890.P9923973836034983167

`A000035(A324466(n))`
-/

namespace A295890.P9923973836034983167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A324466 n).toNat

end

end A295890.P9923973836034983167

namespace A295890

/-- `A000035(A324466(n))` -/
def P9923973836034983167.Spec : Prop :=
  ∀ n, P9923973836034983167.a n = A295890 n

end A295890

/-! ## A295890.P3366865163969276679

`A059841(A324466(n)+1)`
-/

namespace A295890.P3366865163969276679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A324466 n + 1).toNat

end

end A295890.P3366865163969276679

namespace A295890

/-- `A059841(A324466(n)+1)` -/
def P3366865163969276679.Spec : Prop :=
  ∀ n, P3366865163969276679.a n = A295890 n

end A295890

/-! ## A295890.P13425571814160325403

`and(A001535(n), A007302(n))`
-/

namespace A295890.P13425571814160325403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001535 n) (A007302 n)

end

end A295890.P13425571814160325403

namespace A295890

/-- `and(A001535(n), A007302(n))` -/
def P13425571814160325403.Spec : Prop :=
  ∀ n, P13425571814160325403.a n = A295890 n

end A295890

/-! ## A295890.P11726788590283189603

`and(A001546(n), A007302(n))`
-/

namespace A295890.P11726788590283189603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001546 n) (A007302 n)

end

end A295890.P11726788590283189603

namespace A295890

/-- `and(A001546(n), A007302(n))` -/
def P11726788590283189603.Spec : Prop :=
  ∀ n, P11726788590283189603.a n = A295890 n

end A295890

/-! ## A295890.P5481748257954903995

`and(A001846(n), A007302(n))`
-/

namespace A295890.P5481748257954903995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001846 n) (A007302 n)

end

end A295890.P5481748257954903995

namespace A295890

/-- `and(A001846(n), A007302(n))` -/
def P5481748257954903995.Spec : Prop :=
  ∀ n, P5481748257954903995.a n = A295890 n

end A295890

/-! ## A295890.P11301442887630227196

`and(A004768(n), A007302(n))`
-/

namespace A295890.P11301442887630227196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004768 n) (A007302 n)

end

end A295890.P11301442887630227196

namespace A295890

/-- `and(A004768(n), A007302(n))` -/
def P11301442887630227196.Spec : Prop :=
  ∀ n, P11301442887630227196.a n = A295890 n

end A295890

/-! ## A295890.P14868663019767236330

`and(A007204(n), A007302(n))`
-/

namespace A295890.P14868663019767236330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007204 n) (A007302 n)

end

end A295890.P14868663019767236330

namespace A295890

/-- `and(A007204(n), A007302(n))` -/
def P14868663019767236330.Spec : Prop :=
  ∀ n, P14868663019767236330.a n = A295890 n

end A295890

/-! ## A295890.P15208990006268389196

`and(A007302(n), A007664(n))`
-/

namespace A295890.P15208990006268389196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007302 n) (A007664 n)

end

end A295890.P15208990006268389196

namespace A295890

/-- `and(A007302(n), A007664(n))` -/
def P15208990006268389196.Spec : Prop :=
  ∀ n, P15208990006268389196.a n = A295890 n

end A295890

/-! ## A295890.P14714074967774855814

`and(A007302(n), A008349(n))`
-/

namespace A295890.P14714074967774855814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007302 n) (A008349 n)

end

end A295890.P14714074967774855814

namespace A295890

/-- `and(A007302(n), A008349(n))` -/
def P14714074967774855814.Spec : Prop :=
  ∀ n, P14714074967774855814.a n = A295890 n

end A295890

/-! ## A295890.P3834482232748787558

`and(A007302(n), A008362(n))`
-/

namespace A295890.P3834482232748787558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007302 n) (A008362 n)

end

end A295890.P3834482232748787558

namespace A295890

/-- `and(A007302(n), A008362(n))` -/
def P3834482232748787558.Spec : Prop :=
  ∀ n, P3834482232748787558.a n = A295890 n

end A295890

/-! ## A295890.P10143196504899668692

`and(A007302(n), A008417(n))`
-/

namespace A295890.P10143196504899668692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007302 n) (A008417 n)

end

end A295890.P10143196504899668692

namespace A295890

/-- `and(A007302(n), A008417(n))` -/
def P10143196504899668692.Spec : Prop :=
  ∀ n, P10143196504899668692.a n = A295890 n

end A295890

/-!
# A295891: a(n) = 1 if binary weights of n and A003961(n) are of the different parity, 0 otherwise; a(n) = A010060(n) XOR A010060(A003961(n)).

The programs for A295891, there is no canonical definition to state claims against.
-/

/-! ## A295891.P5603642694867004673

`1-A295892(n+1)`
-/

namespace A295891.P5603642694867004673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A295892 (n + 1)

end

end A295891.P5603642694867004673

/-! ## A295891.P11766566217288815039

`A127253(and(Δ[n²], A295892(n+1)))`
-/

namespace A295891.P11766566217288815039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127253 (Int.land ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A295892 (n + 1))).toNat

end

end A295891.P11766566217288815039

/-! ## A295891.P16392917281064750717

`A255001(and(Δ[n²], A295892(n+1)))`
-/

namespace A295891.P16392917281064750717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255001 (Int.land ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A295892 (n + 1))).toNat

end

end A295891.P16392917281064750717

/-! ## A295891.P6300239165752891727

`A293109(ceil(A295892(n+1)/(n+1)))`
-/

namespace A295891.P6300239165752891727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 ⌈(A295892 (n + 1) : ℚ) / (n + 1 : ℚ)⌉.toNat

end

end A295891.P6300239165752891727

/-! ## A295891.P6003779781534632367

`and(1, A295892(n+1)+A157661(n+1))`
-/

namespace A295891.P6003779781534632367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A295892 (n + 1) + A157661 (n + 1))

end

end A295891.P6003779781534632367

/-! ## A295891.P584794460747172410

`A037123((A295892(n+1)+n)²%(n+1))`
-/

namespace A295891.P584794460747172410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (Int.tmod ((A295892 (n + 1) + (n : ℤ)) ^ 2) (n + 1 : ℤ)).toNat

end

end A295891.P584794460747172410

/-! ## A295891.P16718136446867499959

`val(A106059(n+1)*A295892(n+1)+2, 2)`
-/

namespace A295891.P16718136446867499959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A106059 (n + 1) * A295892 (n + 1) + 2).toNat 2

end

end A295891.P16718136446867499959

/-! ## A295891.P16065504315354521545

`val(A106061(n+1)*A295892(n+1)+2, 2)`
-/

namespace A295891.P16065504315354521545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A106061 (n + 1) * A295892 (n + 1) + 2).toNat 2

end

end A295891.P16065504315354521545

/-! ## A295891.P184928724012972580

`val(A157677(n+1)*A295892(n+1)+2, 2)`
-/

namespace A295891.P184928724012972580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A157677 (n + 1) * A295892 (n + 1) + 2).toNat 2

end

end A295891.P184928724012972580

/-! ## A295891.P15444964910695213645

`(A000027(A295892(n+1)+n+1)+n)%2`
-/

namespace A295891.P15444964910695213645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A295892 (n + 1) + (n + 1 : ℤ)).toNat + (n : ℤ)) 2

end

end A295891.P15444964910695213645

/-! ## A295891.P4489731926280848379

`A182492(A135732(n+1)*A295892(n+1)+3)`
-/

namespace A295891.P4489731926280848379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (A135732 (n + 1) * A295892 (n + 1) + 3).toNat

end

end A295891.P4489731926280848379

/-! ## A295891.P17673626931738607142

`val(A157666(n+1), A295892(n+1)+A157666(n+1))`
-/

namespace A295891.P17673626931738607142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A157666 (n + 1)).toNat (A295892 (n + 1) + A157666 (n + 1)).toNat

end

end A295891.P17673626931738607142

/-! ## A295891.P15492794896036979217

`A285476((n+2)*A295892(n+1))`
-/

namespace A295891.P15492794896036979217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 ((n + 2 : ℤ) * A295892 (n + 1)).toNat

end

end A295891.P15492794896036979217

/-! ## A295891.P7165333530030159420

`A000035(A295892(n+1)+2*n+1)`
-/

namespace A295891.P7165333530030159420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A295892 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A295891.P7165333530030159420

/-! ## A295891.P11303607745574421348

`A295892(A014963(3*(n+1))*A295892(n+1)+1)`
-/

namespace A295891.P11303607745574421348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295892 (A014963 (3 * (n + 1)) * A295892 (n + 1) + 1).toNat

end

end A295891.P11303607745574421348

/-! ## A295891.P8303890792343772066

`A010060(A003961(n+1)-A010060(n+1))`
-/

namespace A295891.P8303890792343772066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A003961 (n + 1) - A010060 (n + 1)).toNat

end

end A295891.P8303890792343772066

/-! ## A295891.P4823253969053615627

`A010059(A003961(n+1)-A010059(n+1))`
-/

namespace A295891.P4823253969053615627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A003961 (n + 1) - A010059 (n + 1)).toNat

end

end A295891.P4823253969053615627

/-!
# A295892: a(n) = 1 if binary weights of n and A003961(n) are of the same parity, 0 otherwise.

The programs for A295892, there is no canonical definition to state claims against.
-/

/-! ## A295892.P2205499078369335971

`1-A295891(n+1)`
-/

namespace A295892.P2205499078369335971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A295891 (n + 1)

end

end A295892.P2205499078369335971

/-! ## A295892.P5879151141947209049

`xor(1, A295891(xor(1, xor(1, n+1))))`
-/

namespace A295892.P5879151141947209049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A295891 (Nat.xor 1 (Nat.xor 1 (n + 1))))

end

end A295892.P5879151141947209049

/-! ## A295892.P7932924104256542383

`(A295891(n+1)+A003215(n))%2`
-/

namespace A295892.P7932924104256542383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295891 (n + 1) + A003215 n) 2

end

end A295892.P7932924104256542383

/-! ## A295892.P5998633733611567137

`C(2, A004767(n)*A295891(n+1))`
-/

namespace A295892.P5998633733611567137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A004767 n * A295891 (n + 1)).toNat

end

end A295892.P5998633733611567137

/-! ## A295892.P11744016478736199357

`A151692(ceil(A295891(n+1)/(n+1)))`
-/

namespace A295892.P11744016478736199357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151692 ⌈(A295891 (n + 1) : ℚ) / (n + 1 : ℚ)⌉.toNat

end

end A295892.P11744016478736199357

/-! ## A295892.P2863768904711554497

`C(A040976(n+1), A295891(n+1)+A040976(n+1))`
-/

namespace A295892.P2863768904711554497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A040976 (n + 1)).toNat (A295891 (n + 1) + A040976 (n + 1)).toNat

end

end A295892.P2863768904711554497

/-! ## A295892.P2266645470659987288

`C(A004767(n), A004767(A295891(n+1)+n))`
-/

namespace A295892.P2266645470659987288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004767 n).toNat (A004767 (A295891 (n + 1) + (n : ℤ)).toNat).toNat

end

end A295892.P2266645470659987288

/-! ## A295892.P16015769787723819176

`(A295891(n+1)+A000040(n+3))%2`
-/

namespace A295892.P16015769787723819176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295891 (n + 1) + A000040 (n + 3)) 2

end

end A295892.P16015769787723819176

/-! ## A295892.P16418043523989249591

`A010051(A295891(n+1)+A000040(n+1))`
-/

namespace A295892.P16418043523989249591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A295891 (n + 1) + A000040 (n + 1)).toNat

end

end A295892.P16418043523989249591

/-! ## A295892.P9838690717279689298

`A000035(A295891(n+1)+2*n+1)`
-/

namespace A295892.P9838690717279689298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A295891 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A295892.P9838690717279689298

/-! ## A295892.P15703282597643107835

`A010060(A295891(n+1)+2*A000069(n+1))`
-/

namespace A295892.P15703282597643107835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A295891 (n + 1) + 2 * A000069 (n + 1)).toNat

end

end A295892.P15703282597643107835

/-! ## A295892.P7924198240988470119

`A010060(A000069(n+1)+A295891(n+1)+A000069(n+1))`
-/

namespace A295892.P7924198240988470119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A000069 (n + 1) + (A295891 (n + 1) + A000069 (n + 1))).toNat

end

end A295892.P7924198240988470119

/-! ## A295892.P4686402617524183623

`A014019(A016897(n)*A295891(n+1))`
-/

namespace A295892.P4686402617524183623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 (A016897 n * A295891 (n + 1)).toNat

end

end A295892.P4686402617524183623

/-! ## A295892.P138193254311745364

`A010060(A253885(n)+A010060(n+1))`
-/

namespace A295892.P138193254311745364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A253885 n + A010060 (n + 1)).toNat

end

end A295892.P138193254311745364

/-! ## A295892.P11482291293087818109

`1-A010060(A003961(n+1)-A010060(n+1))`
-/

namespace A295892.P11482291293087818109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010060 (A003961 (n + 1) - A010060 (n + 1)).toNat

end

end A295892.P11482291293087818109

/-! ## A295892.P7531104506818661520

`(A295891(n+1)+A000244(n))%2`
-/

namespace A295892.P7531104506818661520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295891 (n + 1) + A000244 n) 2

end

end A295892.P7531104506818661520

/-!
# A295893: a(n) = 1 if in Doudna-tree (A005940) the contents of the node n and its left-hand child have binary weights with different parity, 0 otherwise.

The programs for A295893, the canonical program `A295893.P2774007442497314762` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295893 has offset 0).

The definition of A295893 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295894, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A295893.P2774007442497314762

`A000035(A295894(n)+A295894(2*n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A295893

/-- `A000035(A295894(n)+A295894(2*n))` -/
def P2774007442497314762.Spec : Prop :=
  ∀ n, P2774007442497314762.a n = A295893 n

theorem P2774007442497314762.correct : P2774007442497314762.Spec := by
  intro n
  simp only [A295893]

end A295893

/-! ## A295893.P2376300399658441669

`A295891(A005940(1+n))`
-/

namespace A295893.P2376300399658441669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295891 (A005940 (1 + n)).toNat

end

end A295893.P2376300399658441669

namespace A295893

/-- `A295891(A005940(1+n))` -/
def P2376300399658441669.Spec : Prop :=
  ∀ n, P2376300399658441669.a n = A295893 n

end A295893

/-! ## A295893.P9304755594069286819

`xor(A295895(2*n), A295895(n))`
-/

namespace A295893.P9304755594069286819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A295895 (2 * n)) (A295895 n)

end

end A295893.P9304755594069286819

namespace A295893

/-- `xor(A295895(2*n), A295895(n))` -/
def P9304755594069286819.Spec : Prop :=
  ∀ n, P9304755594069286819.a n = A295893 n

end A295893

/-! ## A295893.P14237143996236749633

`(A295895(n+n)-A295895(n))²`
-/

namespace A295893.P14237143996236749633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A295895 (n + n) - A295895 n) ^ 2

end

end A295893.P14237143996236749633

namespace A295893

/-- `(A295895(n+n)-A295895(n))²` -/
def P14237143996236749633.Spec : Prop :=
  ∀ n, P14237143996236749633.a n = A295893 n

end A295893

/-! ## A295893.P1530138901192288180

`and(1, A295895(2*n+1)+A295895(2*n))`
-/

namespace A295893.P1530138901192288180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A295895 (2 * n + 1) + A295895 (2 * n))

end

end A295893.P1530138901192288180

namespace A295893

/-- `and(1, A295895(2*n+1)+A295895(2*n))` -/
def P1530138901192288180.Spec : Prop :=
  ∀ n, P1530138901192288180.a n = A295893 n

end A295893

/-! ## A295893.P3471317787244165763

`(A295895(A016813(n))-A295895(n))²²`
-/

namespace A295893.P3471317787244165763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A295895 (A016813 n).toNat - A295895 n) ^ 2) ^ 2

end

end A295893.P3471317787244165763

namespace A295893

/-- `(A295895(A016813(n))-A295895(n))²²` -/
def P3471317787244165763.Spec : Prop :=
  ∀ n, P3471317787244165763.a n = A295893 n

end A295893

/-! ## A295893.P4600956652662906955

`A010060(A295895(2*n)+A005940(2*(n+1)))`
-/

namespace A295893.P4600956652662906955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A295895 (2 * n) + A005940 (2 * (n + 1))).toNat

end

end A295893.P4600956652662906955

namespace A295893

/-- `A010060(A295895(2*n)+A005940(2*(n+1)))` -/
def P4600956652662906955.Spec : Prop :=
  ∀ n, P4600956652662906955.a n = A295893 n

end A295893

/-! ## A295893.P10806755939662840102

`A010060(A005940(2*n+1)-A295895(n))`
-/

namespace A295893.P10806755939662840102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A005940 (2 * n + 1) - A295895 n).toNat

end

end A295893.P10806755939662840102

namespace A295893

/-- `A010060(A005940(2*n+1)-A295895(n))` -/
def P10806755939662840102.Spec : Prop :=
  ∀ n, P10806755939662840102.a n = A295893 n

end A295893

/-! ## A295893.P5706155586286087191

`A010060(xor(A005940(2*n+1), A005940(2*(n+1))))`
-/

namespace A295893.P5706155586286087191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.xor (A005940 (2 * n + 1)) (A005940 (2 * (n + 1)))).toNat

end

end A295893.P5706155586286087191

namespace A295893

/-- `A010060(xor(A005940(2*n+1), A005940(2*(n+1))))` -/
def P5706155586286087191.Spec : Prop :=
  ∀ n, P5706155586286087191.a n = A295893 n

end A295893

/-!
# A295894: Binary weight of the contents of node n in Doudna-tree (A005940).

The programs for A295894, the canonical program `A295894.P3426569779041832203` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295894 has offset 0).

The definition of A295894 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A295894.P3426569779041832203

`A000120(A005940(1+n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A295894

/-- `A000120(A005940(1+n))` -/
def P3426569779041832203.Spec : Prop :=
  ∀ n, P3426569779041832203.a n = A295894 n

theorem P3426569779041832203.correct : P3426569779041832203.Spec := by
  intro n
  simp only [A295894]

end A295894

/-! ## A295894.P3435123756867537286

`A335420(A122155(n+1))`
-/

namespace A295894.P3435123756867537286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335420 (A122155 (n + 1)).toNat

end

end A295894.P3435123756867537286

namespace A295894

/-- `A335420(A122155(n+1))` -/
def P3435123756867537286.Spec : Prop :=
  ∀ n, P3435123756867537286.a n = A295894 n

end A295894

/-! ## A295894.P17393731060410358403

`A324055(n)-A324348(n)`
-/

namespace A295894.P17393731060410358403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324055 n - A324348 n

end

end A295894.P17393731060410358403

namespace A295894

/-- `A324055(n)-A324348(n)` -/
def P17393731060410358403.Spec : Prop :=
  ∀ n, P17393731060410358403.a n = A295894 n

end A295894

/-! ## A295894.P15491672789803927458

`A335420(A054429(n+1)+1)`
-/

namespace A295894.P15491672789803927458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335420 (A054429 (n + 1) + 1).toNat

end

end A295894.P15491672789803927458

namespace A295894

/-- `A335420(A054429(n+1)+1)` -/
def P15491672789803927458.Spec : Prop :=
  ∀ n, P15491672789803927458.a n = A295894 n

end A295894

/-! ## A295894.P8197062457090003869

`A335420(A337909(n+1)-1)`
-/

namespace A295894.P8197062457090003869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335420 (A337909 (n + 1) - 1).toNat

end

end A295894.P8197062457090003869

namespace A295894

/-- `A335420(A337909(n+1)-1)` -/
def P8197062457090003869.Spec : Prop :=
  ∀ n, P8197062457090003869.a n = A295894 n

end A295894

/-! ## A295894.P13971628727788123362

`A335420(A337909(n+2))`
-/

namespace A295894.P13971628727788123362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335420 (A337909 (n + 2)).toNat

end

end A295894.P13971628727788123362

namespace A295894

/-- `A335420(A337909(n+2))` -/
def P13971628727788123362.Spec : Prop :=
  ∀ n, P13971628727788123362.a n = A295894 n

end A295894

/-! ## A295894.P13113454703234343792

`∑{e}[A278222(A005940(n+1)), #]`
-/

namespace A295894.P13113454703234343792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A005940 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A295894.P13113454703234343792

namespace A295894

/-- `∑{e}[A278222(A005940(n+1)), #]` -/
def P13113454703234343792.Spec : Prop :=
  ∀ n, (P13113454703234343792.a n : ℤ) = A295894 n

end A295894

/-! ## A295894.P4646021429478599259

`A000523(A001316(A005940(n+1)))`
-/

namespace A295894.P4646021429478599259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A001316 (A005940 (n + 1)).toNat).toNat

end

end A295894.P4646021429478599259

namespace A295894

/-- `A000523(A001316(A005940(n+1)))` -/
def P4646021429478599259.Spec : Prop :=
  ∀ n, P4646021429478599259.a n = A295894 n

end A295894

/-! ## A295894.P17402327831392180773

`∏{e}[A001316(A005940(2*(n+1))), #]`
-/

namespace A295894.P17402327831392180773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A005940 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A295894.P17402327831392180773

namespace A295894

/-- `∏{e}[A001316(A005940(2*(n+1))), #]` -/
def P17402327831392180773.Spec : Prop :=
  ∀ n, (P17402327831392180773.a n : ℤ) = A295894 n

end A295894

/-! ## A295894.P1905607733617118475

`A033879(A005940(n+1))-A324348(n)`
-/

namespace A295894.P1905607733617118475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A005940 (n + 1)).toNat - A324348 n

end

end A295894.P1905607733617118475

namespace A295894

/-- `A033879(A005940(n+1))-A324348(n)` -/
def P1905607733617118475.Spec : Prop :=
  ∀ n, P1905607733617118475.a n = A295894 n

end A295894

/-! ## A295894.P940042656749718296

`A322867(A253563(n))`
-/

namespace A295894.P940042656749718296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322867 (A253563 n).toNat

end

end A295894.P940042656749718296

namespace A295894

/-- `A322867(A253563(n))` -/
def P940042656749718296.Spec : Prop :=
  ∀ n, P940042656749718296.a n = A295894 n

end A295894

/-! ## A295894.P1241930049466251183

`A001222(A278222(A005940(2*(n+1))))`
-/

namespace A295894.P1241930049466251183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 (A005940 (2 * (n + 1))).toNat).toNat

end

end A295894.P1241930049466251183

namespace A295894

/-- `A001222(A278222(A005940(2*(n+1))))` -/
def P1241930049466251183.Spec : Prop :=
  ∀ n, P1241930049466251183.a n = A295894 n

end A295894

/-! ## A295894.P11925356993516119376

`A324055(n)-A294898(A005940(n+1))`
-/

namespace A295894.P11925356993516119376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324055 n - A294898 (A005940 (n + 1)).toNat

end

end A295894.P11925356993516119376

namespace A295894

/-- `A324055(n)-A294898(A005940(n+1))` -/
def P11925356993516119376.Spec : Prop :=
  ∀ n, P11925356993516119376.a n = A295894 n

end A295894

/-! ## A295894.P8585560758886831604

`A000120(A243353(A006068(n)))`
-/

namespace A295894.P8585560758886831604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A243353 (A006068 n).toNat).toNat

end

end A295894.P8585560758886831604

namespace A295894

/-- `A000120(A243353(A006068(n)))` -/
def P8585560758886831604.Spec : Prop :=
  ∀ n, P8585560758886831604.a n = A295894 n

end A295894

/-! ## A295894.P6914492448570470179

`A000120(A366263(A193231(n)))`
-/

namespace A295894.P6914492448570470179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A366263 (A193231 n).toNat).toNat

end

end A295894.P6914492448570470179

namespace A295894

/-- `A000120(A366263(A193231(n)))` -/
def P6914492448570470179.Spec : Prop :=
  ∀ n, P6914492448570470179.a n = A295894 n

end A295894

/-! ## A295894.P1121826418850542949

`A000120(A332808(A332815(n)))`
-/

namespace A295894.P1121826418850542949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A332808 (A332815 n).toNat).toNat

end

end A295894.P1121826418850542949

namespace A295894

/-- `A000120(A332808(A332815(n)))` -/
def P1121826418850542949.Spec : Prop :=
  ∀ n, P1121826418850542949.a n = A295894 n

end A295894

/-! ## A295894.P4259562817199759591

`A000120(A337375(n)*A337376(n))`
-/

namespace A295894.P4259562817199759591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A337375 n * A337376 n).toNat

end

end A295894.P4259562817199759591

namespace A295894

/-- `A000120(A337375(n)*A337376(n))` -/
def P4259562817199759591.Spec : Prop :=
  ∀ n, P4259562817199759591.a n = A295894 n

end A295894

/-! ## A295894.P4122632215467605428

`A000120(A324641(n+1)-A324640(n+1))`
-/

namespace A295894.P4122632215467605428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A324641 (n + 1) - A324640 (n + 1)).toNat

end

end A295894.P4122632215467605428

namespace A295894

/-- `A000120(A324641(n+1)-A324640(n+1))` -/
def P4122632215467605428.Spec : Prop :=
  ∀ n, P4122632215467605428.a n = A295894 n

end A295894

/-! ## A295894.P13992460303071289954

`A000120(A340364(n+1)*A340365(n+1))`
-/

namespace A295894.P13992460303071289954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A340364 (n + 1) * A340365 (n + 1)).toNat

end

end A295894.P13992460303071289954

namespace A295894

/-- `A000120(A340364(n+1)*A340365(n+1))` -/
def P13992460303071289954.Spec : Prop :=
  ∀ n, P13992460303071289954.a n = A295894 n

end A295894

/-! ## A295894.P17105348661911165165

`A302037(A269387(A302026(A269387(n))))`
-/

namespace A295894.P17105348661911165165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (A269387 (A302026 (A269387 n).toNat).toNat).toNat

end

end A295894.P17105348661911165165

namespace A295894

/-- `A302037(A269387(A302026(A269387(n))))` -/
def P17105348661911165165.Spec : Prop :=
  ∀ n, P17105348661911165165.a n = A295894 n

end A295894

/-!
# A295895: Parity of the binary weight of the contents of node n in Doudna-tree (A005940).

The programs for A295895, the canonical program `A295895.P16373896587667801485` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295895 has offset 0).

The definition of A295895 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295894, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A295895.P16373896587667801485

`A000035(A295894(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A295895

/-- `A000035(A295894(n))` -/
def P16373896587667801485.Spec : Prop :=
  ∀ n, P16373896587667801485.a n = A295895 n

theorem P16373896587667801485.correct : P16373896587667801485.Spec := by
  intro n
  simp only [A295895]

end A295895

/-! ## A295895.P11079963303847887764

`A010060(A005940(1+n))`
-/

namespace A295895.P11079963303847887764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A005940 (1 + n)).toNat

end

end A295895.P11079963303847887764

namespace A295895

/-- `A010060(A005940(1+n))` -/
def P11079963303847887764.Spec : Prop :=
  ∀ n, P11079963303847887764.a n = A295895 n

end A295895

/-! ## A295895.P16257657604171517631

`and(A016760(n), A295894(n))`
-/

namespace A295895.P16257657604171517631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A295894 n)

end

end A295895.P16257657604171517631

namespace A295895

/-- `and(A016760(n), A295894(n))` -/
def P16257657604171517631.Spec : Prop :=
  ∀ n, P16257657604171517631.a n = A295895 n

end A295895

/-! ## A295895.P17694660327679763767

`and(A016820(n), A295894(n))`
-/

namespace A295895.P17694660327679763767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016820 n) (A295894 n)

end

end A295895.P17694660327679763767

namespace A295895

/-- `and(A016820(n), A295894(n))` -/
def P17694660327679763767.Spec : Prop :=
  ∀ n, P17694660327679763767.a n = A295895 n

end A295895

/-! ## A295895.P8050672943065280250

`(A295875(n)-A295896(n))²`
-/

namespace A295895.P8050672943065280250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A295875 n - A295896 n) ^ 2

end

end A295895.P8050672943065280250

namespace A295895

/-- `(A295875(n)-A295896(n))²` -/
def P8050672943065280250.Spec : Prop :=
  ∀ n, P8050672943065280250.a n = A295895 n

end A295895

/-! ## A295895.P2911963302013479429

`and(A016756(n)², A295894(n))`
-/

namespace A295895.P2911963302013479429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016756 n ^ 2) (A295894 n)

end

end A295895.P2911963302013479429

namespace A295895

/-- `and(A016756(n)², A295894(n))` -/
def P2911963302013479429.Spec : Prop :=
  ∀ n, P2911963302013479429.a n = A295895 n

end A295895

/-! ## A295895.P13030847324381237061

`(A324055(n)-A324348(n))%2`
-/

namespace A295895.P13030847324381237061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324055 n - A324348 n) 2

end

end A295895.P13030847324381237061

namespace A295895

/-- `(A324055(n)-A324348(n))%2` -/
def P13030847324381237061.Spec : Prop :=
  ∀ n, P13030847324381237061.a n = A295895 n

end A295895

/-! ## A295895.P16468104314444963805

`and(A016754(n)²², A295894(n))`
-/

namespace A295895.P16468104314444963805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((A016754 n ^ 2) ^ 2) (A295894 n)

end

end A295895.P16468104314444963805

namespace A295895

/-- `and(A016754(n)²², A295894(n))` -/
def P16468104314444963805.Spec : Prop :=
  ∀ n, P16468104314444963805.a n = A295895 n

end A295895

/-! ## A295895.P15341950861415432285

`and(1, (A007204(n)*A295894(n))²)`
-/

namespace A295895.P15341950861415432285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A007204 n * A295894 n) ^ 2)

end

end A295895.P15341950861415432285

namespace A295895

/-- `and(1, (A007204(n)*A295894(n))²)` -/
def P15341950861415432285.Spec : Prop :=
  ∀ n, P15341950861415432285.a n = A295895 n

end A295895

/-! ## A295895.P13959695908547762220

`and(1, (A014736(n)*A295894(n))²)`
-/

namespace A295895.P13959695908547762220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A014736 n * A295894 n) ^ 2)

end

end A295895.P13959695908547762220

namespace A295895

/-- `and(1, (A014736(n)*A295894(n))²)` -/
def P13959695908547762220.Spec : Prop :=
  ∀ n, P13959695908547762220.a n = A295895 n

end A295895

/-! ## A295895.P8079863783010062908

`and(1, (A014769(n)*A295894(n))²)`
-/

namespace A295895.P8079863783010062908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A014769 n * A295894 n) ^ 2)

end

end A295895.P8079863783010062908

namespace A295895

/-- `and(1, (A014769(n)*A295894(n))²)` -/
def P8079863783010062908.Spec : Prop :=
  ∀ n, P8079863783010062908.a n = A295895 n

end A295895

/-! ## A295895.P8588592103170858572

`and(1, (A014793(n)*A295894(n))²)`
-/

namespace A295895.P8588592103170858572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A014793 n * A295894 n) ^ 2)

end

end A295895.P8588592103170858572

namespace A295895

/-- `and(1, (A014793(n)*A295894(n))²)` -/
def P8588592103170858572.Spec : Prop :=
  ∀ n, P8588592103170858572.a n = A295895 n

end A295895

/-! ## A295895.P3123467411069597974

`A292603(A156552(A295894(n)²))`
-/

namespace A295895.P3123467411069597974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292603 (A156552 (A295894 n ^ 2).toNat).toNat

end

end A295895.P3123467411069597974

namespace A295895

/-- `A292603(A156552(A295894(n)²))` -/
def P3123467411069597974.Spec : Prop :=
  ∀ n, P3123467411069597974.a n = A295895 n

end A295895

/-! ## A295895.P5219465723459356140

`A132440(gcd(A295894(n)+2, A295894(n)))`
-/

namespace A295895.P5219465723459356140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132440 (Int.gcd (A295894 n + 2) (A295894 n))

end

end A295895.P5219465723459356140

namespace A295895

/-- `A132440(gcd(A295894(n)+2, A295894(n)))` -/
def P5219465723459356140.Spec : Prop :=
  ∀ n, P5219465723459356140.a n = A295895 n

end A295895

/-! ## A295895.P6143135303617225030

`and(A008417(A295894(n)²)², A295894(n))`
-/

namespace A295895.P6143135303617225030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008417 (A295894 n ^ 2).toNat ^ 2) (A295894 n)

end

end A295895.P6143135303617225030

namespace A295895

/-- `and(A008417(A295894(n)²)², A295894(n))` -/
def P6143135303617225030.Spec : Prop :=
  ∀ n, P6143135303617225030.a n = A295895 n

end A295895

/-! ## A295895.P2703578745474036140

`2-gcd(2, A295894(2*n+1))`
-/

namespace A295895.P2703578745474036140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd 2 (A295894 (2 * n + 1)) : ℤ)

end

end A295895.P2703578745474036140

namespace A295895

/-- `2-gcd(2, A295894(2*n+1))` -/
def P2703578745474036140.Spec : Prop :=
  ∀ n, P2703578745474036140.a n = A295895 n

end A295895

/-! ## A295895.P11053443197863985430

`and(A008514(2*n)², A295894(n))`
-/

namespace A295895.P11053443197863985430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008514 (2 * n) ^ 2) (A295894 n)

end

end A295895.P11053443197863985430

namespace A295895

/-- `and(A008514(2*n)², A295894(n))` -/
def P11053443197863985430.Spec : Prop :=
  ∀ n, P11053443197863985430.a n = A295895 n

end A295895

/-! ## A295895.P14834816510997930606

`and(1, A008349(2*n)*A295894(n))`
-/

namespace A295895.P14834816510997930606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A008349 (2 * n) * A295894 n)

end

end A295895.P14834816510997930606

namespace A295895

/-- `and(1, A008349(2*n)*A295894(n))` -/
def P14834816510997930606.Spec : Prop :=
  ∀ n, P14834816510997930606.a n = A295895 n

end A295895

/-! ## A295895.P12956331627841213133

`and(1, A008362(2*n)*A295894(n))`
-/

namespace A295895.P12956331627841213133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A008362 (2 * n) * A295894 n)

end

end A295895.P12956331627841213133

namespace A295895

/-- `and(1, A008362(2*n)*A295894(n))` -/
def P12956331627841213133.Spec : Prop :=
  ∀ n, P12956331627841213133.a n = A295895 n

end A295895

/-! ## A295895.P13791063060566134700

`and(A195744(n), A295894(n))`
-/

namespace A295895.P13791063060566134700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A295894 n)

end

end A295895.P13791063060566134700

namespace A295895

/-- `and(A195744(n), A295894(n))` -/
def P13791063060566134700.Spec : Prop :=
  ∀ n, P13791063060566134700.a n = A295895 n

end A295895

/-!
# A295896: a(n) = 1 if there are no odd runs of 1's in the binary expansion of n followed by a 0 to their right, 0 otherwise.

The programs for A295896, the canonical program `A295896.P11963859378553721760` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295896 has offset 0).

The definition of A295896 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A053866, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A295896.P11963859378553721760

`A053866(A005940(1+n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A295896

/-- `A053866(A005940(1+n))` -/
def P11963859378553721760.Spec : Prop :=
  ∀ n, P11963859378553721760.a n = A295896 n

theorem P11963859378553721760.correct : P11963859378553721760.Spec := by
  intro n
  simp only [A295896]

end A295896

/-! ## A295896.P14660460245095819880

`char[record[or(n, floor(n/2))]]`
-/

namespace A295896.P14660460245095819880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A295896.P14660460245095819880

namespace A295896

/-- `char[record[or(n, floor(n/2))]]` -/
def P14660460245095819880.Spec : Prop :=
  ∀ n, (P14660460245095819880.a n : ℤ) = A295896 n

end A295896

/-! ## A295896.P7459739325859677918

`char[record[xor(n, floor(n/2))]]`
-/

namespace A295896.P7459739325859677918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A295896.P7459739325859677918

namespace A295896

/-- `char[record[xor(n, floor(n/2))]]` -/
def P7459739325859677918.Spec : Prop :=
  ∀ n, (P7459739325859677918.a n : ℤ) = A295896 n

end A295896

/-! ## A295896.P5297814660263192541

`(n+1)²%3*a(floor(n/2))` with `a(0)=1`
-/

namespace A295896.P5297814660263192541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) ^ 2 % 3 * a ⌊(n : ℚ) / 2⌋.toNat

end

end A295896.P5297814660263192541

namespace A295896

/-- `(n+1)²%3*a(floor(n/2))` -/
def P5297814660263192541.Spec : Prop :=
  ∀ n, (P5297814660263192541.a n : ℤ) = A295896 n

end A295896

/-! ## A295896.P16553865502616775381

`char[or(n, floor(n/2))-and(n, 2*n)]`
-/

namespace A295896.P16553865502616775381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋ - (Nat.land n (2 * n) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A295896.P16553865502616775381

namespace A295896

/-- `char[or(n, floor(n/2))-and(n, 2*n)]` -/
def P16553865502616775381.Spec : Prop :=
  ∀ n, (P16553865502616775381.a n : ℤ) = A295896 n

end A295896

/-! ## A295896.P12301244985049024803

`A324054(n)%2`
-/

namespace A295896.P12301244985049024803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324054 n) 2

end

end A295896.P12301244985049024803

namespace A295896

/-- `A324054(n)%2` -/
def P12301244985049024803.Spec : Prop :=
  ∀ n, P12301244985049024803.a n = A295896 n

end A295896

/-! ## A295896.P8175058268195299410

`A324056(n)%2`
-/

namespace A295896.P8175058268195299410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324056 n) 2

end

end A295896.P8175058268195299410

namespace A295896

/-- `A324056(n)%2` -/
def P8175058268195299410.Spec : Prop :=
  ∀ n, P8175058268195299410.a n = A295896 n

end A295896

/-! ## A295896.P16693685641896855532

`A324058(n)%2`
-/

namespace A295896.P16693685641896855532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324058 n) 2

end

end A295896.P16693685641896855532

namespace A295896

/-- `A324058(n)%2` -/
def P16693685641896855532.Spec : Prop :=
  ∀ n, P16693685641896855532.a n = A295896 n

end A295896

/-! ## A295896.P13924129035452523678

`A341392(n)%2`
-/

namespace A295896.P13924129035452523678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341392 n) 2

end

end A295896.P13924129035452523678

namespace A295896

/-- `A341392(n)%2` -/
def P13924129035452523678.Spec : Prop :=
  ∀ n, P13924129035452523678.a n = A295896 n

end A295896

/-! ## A295896.P3108415956357918811

`A366795(n)%2`
-/

namespace A295896.P3108415956357918811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366795 n) 2

end

end A295896.P3108415956357918811

namespace A295896

/-- `A366795(n)%2` -/
def P3108415956357918811.Spec : Prop :=
  ∀ n, P3108415956357918811.a n = A295896 n

end A295896

/-! ## A295896.P4338438856787183005

`and(1, A324055(n))`
-/

namespace A295896.P4338438856787183005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A324055 n)

end

end A295896.P4338438856787183005

namespace A295896

/-- `and(1, A324055(n))` -/
def P4338438856787183005.Spec : Prop :=
  ∀ n, P4338438856787183005.a n = A295896 n

end A295896

/-! ## A295896.P16093086577644471253

`char[record[A003188(n)]]`
-/

namespace A295896.P16093086577644471253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A295896.P16093086577644471253

namespace A295896

/-- `char[record[A003188(n)]]` -/
def P16093086577644471253.Spec : Prop :=
  ∀ n, (P16093086577644471253.a n : ℤ) = A295896 n

end A295896

/-! ## A295896.P8336990535231277164

`char[record[A269170(n)]]`
-/

namespace A295896.P8336990535231277164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269170 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A295896.P8336990535231277164

namespace A295896

/-- `char[record[A269170(n)]]` -/
def P8336990535231277164.Spec : Prop :=
  ∀ n, (P8336990535231277164.a n : ℤ) = A295896 n

end A295896

/-! ## A295896.P6444287250591659964

`char[record[A377355(n)]]`
-/

namespace A295896.P6444287250591659964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A295896.P6444287250591659964

namespace A295896

/-- `char[record[A377355(n)]]` -/
def P6444287250591659964.Spec : Prop :=
  ∀ n, (P6444287250591659964.a n : ℤ) = A295896 n

end A295896

/-! ## A295896.P3610628597390048324

`char[record[A377440(n)]]`
-/

namespace A295896.P3610628597390048324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377440 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A295896.P3610628597390048324

namespace A295896

/-- `char[record[A377440(n)]]` -/
def P3610628597390048324.Spec : Prop :=
  ∀ n, (P3610628597390048324.a n : ℤ) = A295896 n

end A295896

/-! ## A295896.P12931586625527408873

`char[A295897(n+1)]`
-/

namespace A295896.P12931586625527408873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A295896.P12931586625527408873

namespace A295896

/-- `char[A295897(n+1)]` -/
def P12931586625527408873.Spec : Prop :=
  ∀ n, (P12931586625527408873.a n : ℤ) = A295896 n

end A295896

/-! ## A295896.P17318240217345491587

`C(n, ∑[A268726(n)])`
-/

namespace A295896.P17318240217345491587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268726 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A295896.P17318240217345491587

namespace A295896

/-- `C(n, ∑[A268726(n)])` -/
def P17318240217345491587.Spec : Prop :=
  ∀ n, (P17318240217345491587.a n : ℤ) = A295896 n

end A295896

/-! ## A295896.P6724705335508017297

`A085405(A009947(n))`
-/

namespace A295896.P6724705335508017297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085405 (A009947 n).toNat

end

end A295896.P6724705335508017297

namespace A295896

/-- `A085405(A009947(n))` -/
def P6724705335508017297.Spec : Prop :=
  ∀ n, P6724705335508017297.a n = A295896 n

end A295896

/-! ## A295896.P10002380010301497549

`A085405(A096386(n))`
-/

namespace A295896.P10002380010301497549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085405 (A096386 n).toNat

end

end A295896.P10002380010301497549

namespace A295896

/-- `A085405(A096386(n))` -/
def P10002380010301497549.Spec : Prop :=
  ∀ n, P10002380010301497549.a n = A295896 n

end A295896

/-!
# A295897: Numbers in whose binary expansion there are no 1-runs of odd length followed by a 0 to their right.

The programs for A295897, the canonical program `A295897.P10527860566330288964` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295897 has offset 1).

The definition of A295897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295897.P10527860566330288964

`floor(A277335(n)/2)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A295897

/-- `floor(A277335(n)/2)` -/
def P10527860566330288964.Spec : Prop :=
  ∀ n, P10527860566330288964.a n = A295897 (n + 1)

theorem P10527860566330288964.correct : P10527860566330288964.Spec := by
  intro n
  simp only [A295897, Nat.add_sub_cancel]

end A295897

/-! ## A295897.P1318826717038762762

`floor((A048297(n)-1)/2)`
-/

namespace A295897.P1318826717038762762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048297 n - 1 : ℚ) / 2⌋

end

end A295897.P1318826717038762762

namespace A295897

/-- `floor((A048297(n)-1)/2)` -/
def P1318826717038762762.Spec : Prop :=
  ∀ n, P1318826717038762762.a n = A295897 (n + 1)

end A295897

/-! ## A295897.P7660746606377912118

`floor(3*A003714(n)/2)`
-/

namespace A295897.P7660746606377912118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * A003714 n : ℚ) / 2⌋

end

end A295897.P7660746606377912118

namespace A295897

/-- `floor(3*A003714(n)/2)` -/
def P7660746606377912118.Spec : Prop :=
  ∀ n, P7660746606377912118.a n = A295897 (n + 1)

end A295897

/-! ## A295897.P2878165928434631665

`(A277335(n)-A003849(n))/2`
-/

namespace A295897.P2878165928434631665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277335 n - A003849 n : ℚ) / 2

end

end A295897.P2878165928434631665

namespace A295897

/-- `(A277335(n)-A003849(n))/2` -/
def P2878165928434631665.Spec : Prop :=
  ∀ n, P2878165928434631665.a n = (A295897 (n + 1) : ℚ)

end A295897

/-! ## A295897.P10956546376777776363

`A003714(n)+A003714(A319433(n))`
-/

namespace A295897.P10956546376777776363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n + A003714 (A319433 n).toNat

end

end A295897.P10956546376777776363

namespace A295897

/-- `A003714(n)+A003714(A319433(n))` -/
def P10956546376777776363.Spec : Prop :=
  ∀ n, P10956546376777776363.a n = A295897 (n + 1)

end A295897

/-! ## A295897.P8390371272041152138

`record[or(n, floor(n/2))]`
-/

namespace A295897.P8390371272041152138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295897.P8390371272041152138

namespace A295897

/-- `record[or(n, floor(n/2))]` -/
def P8390371272041152138.Spec : Prop :=
  ∀ n, P8390371272041152138.a n = A295897 (n + 1)

end A295897

/-! ## A295897.P3055532971999365549

`record[xor(n, floor(n/2))]`
-/

namespace A295897.P3055532971999365549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295897.P3055532971999365549

namespace A295897

/-- `record[xor(n, floor(n/2))]` -/
def P3055532971999365549.Spec : Prop :=
  ∀ n, P3055532971999365549.a n = A295897 (n + 1)

end A295897

/-! ## A295897.P7475588294655815191

`record[(or(n, 2*n+1)-1)/2]`
-/

namespace A295897.P7475588294655815191
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor n (2 * n + 1) : ℤ) - 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295897.P7475588294655815191

namespace A295897

/-- `record[(or(n, 2*n+1)-1)/2]` -/
def P7475588294655815191.Spec : Prop :=
  ∀ n, P7475588294655815191.a n = (A295897 (n + 1) : ℚ)

end A295897

/-! ## A295897.P17233428959371764908

`lt[0, A295896(n)]`
-/

namespace A295897.P17233428959371764908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295896 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295897.P17233428959371764908

namespace A295897

/-- `lt[0, A295896(n)]` -/
def P17233428959371764908.Spec : Prop :=
  ∀ n, (P17233428959371764908.a n : ℤ) = A295897 (n + 1)

end A295897

/-! ## A295897.P15676415023641064830

`eq[A107751(n), A295896(n)]`
-/

namespace A295897.P15676415023641064830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107751 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295896 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295897.P15676415023641064830

namespace A295897

/-- `eq[A107751(n), A295896(n)]` -/
def P15676415023641064830.Spec : Prop :=
  ∀ n, (P15676415023641064830.a n : ℤ) = A295897 (n + 1)

end A295897

/-! ## A295897.P3624792361039819468

`record[A003188(n)]`
-/

namespace A295897.P3624792361039819468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295897.P3624792361039819468

namespace A295897

/-- `record[A003188(n)]` -/
def P3624792361039819468.Spec : Prop :=
  ∀ n, P3624792361039819468.a n = A295897 (n + 1)

end A295897

/-! ## A295897.P2424712552265831869

`A003188(A003714(n))`
-/

namespace A295897.P2424712552265831869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A003714 n).toNat

end

end A295897.P2424712552265831869

namespace A295897

/-- `A003188(A003714(n))` -/
def P2424712552265831869.Spec : Prop :=
  ∀ n, P2424712552265831869.a n = A295897 (n + 1)

end A295897

/-! ## A295897.P12850760735083757895

`A003188(A022340(n)/2)`
-/

namespace A295897.P12850760735083757895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (SequenceMachineLib.roundAway ((A022340 n : ℚ) / 2)).toNat

end

end A295897.P12850760735083757895

namespace A295897

/-- `A003188(A022340(n)/2)` -/
def P12850760735083757895.Spec : Prop :=
  ∀ n, P12850760735083757895.a n = A295897 (n + 1)

end A295897

/-! ## A295897.P11061865906671585796

`A003188((A118113(n)-1)/2)`
-/

namespace A295897.P11061865906671585796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (SequenceMachineLib.roundAway ((A118113 n - 1 : ℚ) / 2)).toNat

end

end A295897.P11061865906671585796

namespace A295897

/-- `A003188((A118113(n)-1)/2)` -/
def P11061865906671585796.Spec : Prop :=
  ∀ n, P11061865906671585796.a n = A295897 (n + 1)

end A295897

/-! ## A295897.P7089226645840877355

`filter[A004746(n+1), A295896(#)]`
-/

namespace A295897.P7089226645840877355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295896 (f1 j).toNat = 1) n)

end

end A295897.P7089226645840877355

namespace A295897

/-- `filter[A004746(n+1), A295896(#)]` -/
def P7089226645840877355.Spec : Prop :=
  ∀ n, P7089226645840877355.a n = A295897 (n + 1)

end A295897

/-! ## A295897.P13957104061094911743

`A003188(eq[n, and(n, A003188(n))])`
-/

namespace A295897.P13957104061094911743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A003188 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295897.P13957104061094911743

namespace A295897

/-- `A003188(eq[n, and(n, A003188(n))])` -/
def P13957104061094911743.Spec : Prop :=
  ∀ n, P13957104061094911743.a n = A295897 (n + 1)

end A295897

/-! ## A295897.P17987061184072700711

`filter[A004760(n+1), A295896(#)]`
-/

namespace A295897.P17987061184072700711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295896 (f1 j).toNat = 1) n)

end

end A295897.P17987061184072700711

namespace A295897

/-- `filter[A004760(n+1), A295896(#)]` -/
def P17987061184072700711.Spec : Prop :=
  ∀ n, P17987061184072700711.a n = A295897 (n + 1)

end A295897

/-! ## A295897.P6378383066731910492

`record[A286548(n)+n]`
-/

namespace A295897.P6378383066731910492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286548 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295897.P6378383066731910492

namespace A295897

/-- `record[A286548(n)+n]` -/
def P6378383066731910492.Spec : Prop :=
  ∀ n, P6378383066731910492.a n = A295897 (n + 1)

end A295897

/-! ## A295897.P4923501808870721116

`A057300(record[A300838(n)])`
-/

namespace A295897.P4923501808870721116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A295897.P4923501808870721116

namespace A295897

/-- `A057300(record[A300838(n)])` -/
def P4923501808870721116.Spec : Prop :=
  ∀ n, P4923501808870721116.a n = A295897 (n + 1)

end A295897

/-! ## A295897.P6516236330725263881

`record[A302844(A163355(n))]`
-/

namespace A295897.P6516236330725263881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302844 (A163355 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295897.P6516236330725263881

namespace A295897

/-- `record[A302844(A163355(n))]` -/
def P6516236330725263881.Spec : Prop :=
  ∀ n, P6516236330725263881.a n = A295897 (n + 1)

end A295897

/-!
# A295899: Number of minimal dominating sets in the n X n bishop graph.

The programs for A295899, there is no canonical definition to state claims against.
-/

/-! ## A295899.P16879418456062184774

`A291060(n+1)-A092454(A187239(n+1))`
-/

namespace A295899.P16879418456062184774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291060 (n + 1) - A092454 (A187239 (n + 1)).toNat

end

end A295899.P16879418456062184774

