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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A118200: Start with 1 and repeatedly reverse the digits and add 66 to get the next term.

The programs for A118200, there is no canonical definition to state claims against.
-/

/-! ## A118200.P11310124402418109349

`A004086(a(n-1))+66` with `a(0)=1`
-/

namespace A118200.P11310124402418109349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 66

end

end A118200.P11310124402418109349

/-!
# A118201: Smallest difference such that both difference and number do not occur previously.

The programs for A118201, there is no canonical definition to state claims against.
-/

/-! ## A118201.P10842819099013376393

`A350578(or(n, A217155(n+1)))`
-/

namespace A118201.P10842819099013376393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350578 (Int.lor (n : ℤ) (A217155 (n + 1))).toNat

end

end A118201.P10842819099013376393

/-! ## A118201.P4436417402444114543

`A185215(A185203(n))+A005132(n)`
-/

namespace A118201.P4436417402444114543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185215 (A185203 n).toNat + A005132 n

end

end A118201.P4436417402444114543

/-! ## A118201.P17050244548785257017

`A064388(A028310(n))%A127498(n)`
-/

namespace A118201.P17050244548785257017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064388 (A028310 n).toNat) (A127498 n)

end

end A118201.P17050244548785257017

/-!
# A118202: Inverse of A118201, or -1 if n does not occur in A118201.

The programs for A118202, there is no canonical definition to state claims against.
-/

/-! ## A118202.P1437371495671666158

`A282782(A029600(n²))`
-/

namespace A118202.P1437371495671666158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282782 (A029600 (n ^ 2)).toNat

end

end A118202.P1437371495671666158

/-!
# A118203: Numerators of convergents to Magata's constant.

The programs for A118203, there is no canonical definition to state claims against.
-/

/-! ## A118203.P3041601147514977146

`A271518(A072856(n+3))+n+1`
-/

namespace A118203.P3041601147514977146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271518 (A072856 (n + 3)).toNat + (n + 1 : ℤ)

end

end A118203.P3041601147514977146

/-! ## A118203.P14496176446358742518

`A220658(A274903(n)+A080795(n))`
-/

namespace A118203.P14496176446358742518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A274903 n + A080795 n).toNat

end

end A118203.P14496176446358742518

/-!
# A118204: Denominators of convergents to Magata's constant.

The programs for A118204, there is no canonical definition to state claims against.
-/

/-! ## A118204.P409930311504781725

`A061355(n)/A335521(A002845(n+1))`
-/

namespace A118204.P409930311504781725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061355 n : ℚ) / (A335521 (A002845 (n + 1)).toNat : ℚ)

end

end A118204.P409930311504781725

/-!
# A118209: Expansion of Sum_{k>=1} lambda(k) * k * x^k/(1 + x^k) where lambda(k) is the Liouville function, A008836.

The programs for A118209, the canonical program `A118209.P15260628061071340164` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118209 has offset 1).

The definition of A118209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118209.P17412473254840799116

`A318677(2*(n+1))-A318676(2*(n+1))`
-/

namespace A118209.P17412473254840799116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318677 (2 * (n + 1)) - A318676 (2 * (n + 1))

end

end A118209.P17412473254840799116

namespace A118209

/-- `A318677(2*(n+1))-A318676(2*(n+1))` -/
def P17412473254840799116.Spec : Prop :=
  ∀ n, P17412473254840799116.a n = A118209 (n + 1)

end A118209

/-! ## A118209.P17146435346620369590

`∑{d}[n+1, A048272(#)*A158523((n+1)/#)]`
-/

namespace A118209.P17146435346620369590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A158523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A118209.P17146435346620369590

namespace A118209

/-- `∑{d}[n+1, A048272(#)*A158523((n+1)/#)]` -/
def P17146435346620369590.Spec : Prop :=
  ∀ n, P17146435346620369590.a n = A118209 (n + 1)

end A118209

/-! ## A118209.P4768141891552202995

`∑{d}[n+1, A000593(#)*A298473((n+1)/#)]`
-/

namespace A118209.P4768141891552202995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000593 d * A298473 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A118209.P4768141891552202995

namespace A118209

/-- `∑{d}[n+1, A000593(#)*A298473((n+1)/#)]` -/
def P4768141891552202995.Spec : Prop :=
  ∀ n, P4768141891552202995.a n = A118209 (n + 1)

end A118209

/-! ## A118209.P1234099898821233318

`∑{d}[n+1, A055615(#)*A300853((n+1)/#)]`
-/

namespace A118209.P1234099898821233318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A300853 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A118209.P1234099898821233318

namespace A118209

/-- `∑{d}[n+1, A055615(#)*A300853((n+1)/#)]` -/
def P1234099898821233318.Spec : Prop :=
  ∀ n, P1234099898821233318.a n = A118209 (n + 1)

end A118209

/-! ## A118209.P1553499377368081849

`2*A318677(2*(n+1))-A000203(2*(n+1))`
-/

namespace A118209.P1553499377368081849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318677 (2 * (n + 1)) - A000203 (2 * (n + 1))

end

end A118209.P1553499377368081849

namespace A118209

/-- `2*A318677(2*(n+1))-A000203(2*(n+1))` -/
def P1553499377368081849.Spec : Prop :=
  ∀ n, P1553499377368081849.a n = A118209 (n + 1)

end A118209

/-! ## A118209.P9212843484556873092

`A000203(2*(n+1))-2*A318676(2*(n+1))`
-/

namespace A118209.P9212843484556873092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * (n + 1)) - 2 * A318676 (2 * (n + 1))

end

end A118209.P9212843484556873092

namespace A118209

/-- `A000203(2*(n+1))-2*A318676(2*(n+1))` -/
def P9212843484556873092.Spec : Prop :=
  ∀ n, P9212843484556873092.a n = A118209 (n + 1)

end A118209

/-! ## A118209.P15260628061071340164

`∑{d}[n+1, A033999(#-1)*A061019((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A118209

/-- `∑{d}[n+1, A033999(#-1)*A061019((n+1)/#)]` -/
def P15260628061071340164.Spec : Prop :=
  ∀ n, P15260628061071340164.a n = A118209 (n + 1)

theorem P15260628061071340164.correct : P15260628061071340164.Spec := by
  intro n
  simp only [A118209, Nat.add_sub_cancel]

end A118209

/-! ## A118209.P9577799216561779617

`2*(n+1)-A344440(2*(n+1))`
-/

namespace A118209.P9577799216561779617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A344440 (2 * (n + 1))

end

end A118209.P9577799216561779617

namespace A118209

/-- `2*(n+1)-A344440(2*(n+1))` -/
def P9577799216561779617.Spec : Prop :=
  ∀ n, P9577799216561779617.a n = A118209 (n + 1)

end A118209

/-! ## A118209.P15560864978574193603

`-A061020(2*(n+1))`
-/

namespace A118209.P15560864978574193603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A061020 (2 * (n + 1))

end

end A118209.P15560864978574193603

namespace A118209

/-- `-A061020(2*(n+1))` -/
def P15560864978574193603.Spec : Prop :=
  ∀ n, P15560864978574193603.a n = A118209 (n + 1)

end A118209

/-! ## A118209.P11295589922225859132

`Δ[a(n-1)-A061020(2*n)]` with `a(0)=0`
-/

namespace A118209.P11295589922225859132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - A061020 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118209.P11295589922225859132

namespace A118209

/-- `Δ[a(n-1)-A061020(2*n)]` -/
def P11295589922225859132.Spec : Prop :=
  ∀ n, P11295589922225859132.a n = A118209 (n + 1)

end A118209

/-! ## A118209.P15667825448022964913

`∑{d}[2*(n+1), -#*A008836(#)]`
-/

namespace A118209.P15667825448022964913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-((d : ℤ) * A008836 d))

end

end A118209.P15667825448022964913

namespace A118209

/-- `∑{d}[2*(n+1), -#*A008836(#)]` -/
def P15667825448022964913.Spec : Prop :=
  ∀ n, P15667825448022964913.a n = A118209 (n + 1)

end A118209

/-! ## A118209.P1198915954453400803

`A000038(n+1)-A061020(2*n+2)`
-/

namespace A118209.P1198915954453400803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A061020 (2 * n + 2)

end

end A118209.P1198915954453400803

namespace A118209

/-- `A000038(n+1)-A061020(2*n+2)` -/
def P1198915954453400803.Spec : Prop :=
  ∀ n, P1198915954453400803.a n = A118209 (n + 1)

end A118209

/-! ## A118209.P8044113992553600483

`A008836(n+1)*A206369(2*(n+1))`
-/

namespace A118209.P8044113992553600483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A206369 (2 * (n + 1))

end

end A118209.P8044113992553600483

namespace A118209

/-- `A008836(n+1)*A206369(2*(n+1))` -/
def P8044113992553600483.Spec : Prop :=
  ∀ n, P8044113992553600483.a n = A118209 (n + 1)

end A118209

/-! ## A118209.P418833137603293597

`A193356(2*(n+1))-A061020(2*(n+1))`
-/

namespace A118209.P418833137603293597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (2 * (n + 1)) - A061020 (2 * (n + 1))

end

end A118209.P418833137603293597

namespace A118209

/-- `A193356(2*(n+1))-A061020(2*(n+1))` -/
def P418833137603293597.Spec : Prop :=
  ∀ n, P418833137603293597.a n = A118209 (n + 1)

end A118209

/-! ## A118209.P15655778543757940599

`A206369(2*(n+1))-A344441(2*(n+1))`
-/

namespace A118209.P15655778543757940599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206369 (2 * (n + 1)) - A344441 (2 * (n + 1))

end

end A118209.P15655778543757940599

namespace A118209

/-- `A206369(2*(n+1))-A344441(2*(n+1))` -/
def P15655778543757940599.Spec : Prop :=
  ∀ n, P15655778543757940599.a n = A118209 (n + 1)

end A118209

/-! ## A118209.P6095656872705315334

`C(2, A000203(n+2))-A061020(2*(n+1))`
-/

namespace A118209.P6095656872705315334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ) - A061020 (2 * (n + 1))

end

end A118209.P6095656872705315334

namespace A118209

/-- `C(2, A000203(n+2))-A061020(2*(n+1))` -/
def P6095656872705315334.Spec : Prop :=
  ∀ n, P6095656872705315334.a n = A118209 (n + 1)

end A118209

/-! ## A118209.P14719181518129769694

`A008683(23*23*(n+1))-A061020(2*(n+1))`
-/

namespace A118209.P14719181518129769694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (23 * (23 * (n + 1))) - A061020 (2 * (n + 1))

end

end A118209.P14719181518129769694

namespace A118209

/-- `A008683(23*23*(n+1))-A061020(2*(n+1))` -/
def P14719181518129769694.Spec : Prop :=
  ∀ n, P14719181518129769694.a n = A118209 (n + 1)

end A118209

/-!
# A118211: Denominator of the coefficients of (x-1)(x-2)... in the interpolating polynomial through the first n primes.

The programs for A118211, there is no canonical definition to state claims against.
-/

/-! ## A118211.P10261428362618111693

`A000142(n)/A171172(A019538(n+1))`
-/

namespace A118211.P10261428362618111693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A171172 (A019538 (n + 1)).toNat : ℚ)

end

end A118211.P10261428362618111693

/-! ## A118211.P11011599942556661851

`A002998(n)!/A030101(A092982(n+1))`
-/

namespace A118211.P11011599942556661851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002998 n).toNat : ℚ) / (A030101 (A092982 (n + 1)).toNat : ℚ)

end

end A118211.P11011599942556661851

/-! ## A118211.P17758213721799249884

`gcd(n!, A008574(A107991(n+1)))`
-/

namespace A118211.P17758213721799249884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial n : ℤ) (A008574 (A107991 (n + 1)).toNat)

end

end A118211.P17758213721799249884

/-! ## A118211.P1977873102584357871

`gcd(A000142(n), A234275(A107991(n+1)))`
-/

namespace A118211.P1977873102584357871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 n) (A234275 (A107991 (n + 1)).toNat)

end

end A118211.P1977873102584357871

/-! ## A118211.P2552160198586662643

`A301274(A000142(n)/A327482(2*(n+1)))`
-/

namespace A118211.P2552160198586662643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301274 (SequenceMachineLib.roundAway ((A000142 n : ℚ) / (A327482 (2 * (n + 1)) : ℚ))).toNat

end

end A118211.P2552160198586662643

/-!
# A118214: Start with 1 and repeatedly reverse the digits and add 67 to get the next term.

The programs for A118214, there is no canonical definition to state claims against.
-/

/-! ## A118214.P11968258864038235893

`A004086(a(n-1))+67` with `a(0)=1`
-/

namespace A118214.P11968258864038235893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 67

end

end A118214.P11968258864038235893

/-!
# A118215: Start with 1 and repeatedly reverse the digits and add 68 to get the next term.

The programs for A118215, there is no canonical definition to state claims against.
-/

/-! ## A118215.P15860304692057581682

`A004086(a(n-1))+68` with `a(0)=1`
-/

namespace A118215.P15860304692057581682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 68

end

end A118215.P15860304692057581682

/-!
# A118216: Start with 1 and repeatedly reverse the digits and add 69 to get the next term.

The programs for A118216, there is no canonical definition to state claims against.
-/

/-! ## A118216.P11230388920948013411

`A004086(a(n-1))+69` with `a(0)=1`
-/

namespace A118216.P11230388920948013411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 69

end

end A118216.P11230388920948013411

/-!
# A118217: Start with 1 and repeatedly reverse the digits and add 70 to get the next term.

The programs for A118217, there is no canonical definition to state claims against.
-/

/-! ## A118217.P17922917355066151467

`A004086(a(n-1))+70` with `a(0)=1`
-/

namespace A118217.P17922917355066151467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 70

end

end A118217.P17922917355066151467

/-!
# A118218: Start with 1 and repeatedly reverse the digits and add 71 to get the next term.

The programs for A118218, there is no canonical definition to state claims against.
-/

/-! ## A118218.P16778855048216944795

`A004086(a(n-1))+71` with `a(0)=1`
-/

namespace A118218.P16778855048216944795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 71

end

end A118218.P16778855048216944795

/-!
# A118220: Start with 1 and repeatedly reverse the digits and add 72 to get the next term.

The programs for A118220, there is no canonical definition to state claims against.
-/

/-! ## A118220.P5095162838898327263

`A004086(a(n-1))+72` with `a(0)=1`
-/

namespace A118220.P5095162838898327263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 72

end

end A118220.P5095162838898327263

/-!
# A118221: Start with 1 and repeatedly reverse the digits and add 73 to get the next term.

The programs for A118221, there is no canonical definition to state claims against.
-/

/-! ## A118221.P3742820767277481649

`A004086(a(n-1))+73` with `a(0)=1`
-/

namespace A118221.P3742820767277481649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 73

end

end A118221.P3742820767277481649

/-!
# A118222: Numbers k such that k! * prime(k)# + 1 is prime.

The programs for A118222, there is no canonical definition to state claims against.
-/

/-! ## A118222.P12618499238904613919

`∪[A001096(n), A276871(A056109(n))]`
-/

namespace A118222.P12618499238904613919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001096 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276871 (A056109 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A118222.P12618499238904613919

/-! ## A118222.P11339822511722144236

`∪[A002113(n+1), A276871(A056109(n))]`
-/

namespace A118222.P11339822511722144236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276871 (A056109 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A118222.P11339822511722144236

/-!
# A118224: Smallest number having at least 2*n divisors.

The programs for A118224, there is no canonical definition to state claims against.
-/

/-! ## A118224.P17775384326215388506

`lcm(A061799(2*(n+1)), A165070(A000040(3*n+4)))`
-/

namespace A118224.P17775384326215388506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A061799 (2 * (n + 1))) (A165070 (A000040 (3 * n + 4)).toNat)

end

end A118224.P17775384326215388506

/-! ## A118224.P15443548558639675352

`lcm(A008683(A235394(n+1)), A061799(2*n+2))`
-/

namespace A118224.P15443548558639675352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A235394 (n + 1)).toNat) (A061799 (2 * n + 2))

end

end A118224.P15443548558639675352

/-! ## A118224.P2912075367961265089

`lcm(A014709(A043089(n)), A061799(2*(n+1)))`
-/

namespace A118224.P2912075367961265089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014709 (A043089 n).toNat) (A061799 (2 * (n + 1)))

end

end A118224.P2912075367961265089

/-! ## A118224.P9968807604294486945

`A061799(2*(n+1))%A066150(2*n+1)`
-/

namespace A118224.P9968807604294486945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061799 (2 * (n + 1))) (A066150 (2 * n + 1))

end

end A118224.P9968807604294486945

/-! ## A118224.P9202201939619705492

`gcd(A061799(2*(n+1))*A182492(2*n+1), A061799(2*(n+1)))`
-/

namespace A118224.P9202201939619705492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061799 (2 * (n + 1)) * A182492 (2 * n + 1)) (A061799 (2 * (n + 1)))

end

end A118224.P9202201939619705492

/-! ## A118224.P15425462238231312945

`A061799(A261104(A262502(n+1))+n+1)`
-/

namespace A118224.P15425462238231312945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A261104 (A262502 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A118224.P15425462238231312945

/-! ## A118224.P8956721403624609223

`A061799(A350786(2*(n+1)))`
-/

namespace A118224.P8956721403624609223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A350786 (2 * (n + 1))).toNat

end

end A118224.P8956721403624609223

/-! ## A118224.P12263472585402028559

`A005179(A350786(2*n+2))`
-/

namespace A118224.P12263472585402028559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A350786 (2 * n + 2)).toNat

end

end A118224.P12263472585402028559

/-! ## A118224.P13155241964235318438

`A061799(2*(n+1))^A279928(A000217(n))`
-/

namespace A118224.P13155241964235318438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061799 (2 * (n + 1)) : ℚ) ^ (A279928 (A000217 n).toNat : ℤ)

end

end A118224.P13155241964235318438

/-! ## A118224.P7395765869931600390

`gcd(A061799(2*(n+1))*A130279(n+2), A061799(2*(n+1)))`
-/

namespace A118224.P7395765869931600390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061799 (2 * (n + 1)) * A130279 (n + 2)) (A061799 (2 * (n + 1)))

end

end A118224.P7395765869931600390

/-! ## A118224.P12399232572268287976

`A000027(A061799(Δ[n²+4+n]))`
-/

namespace A118224.P12399232572268287976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 4 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A061799 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A118224.P12399232572268287976

/-!
# A118225: Start with 1 and repeatedly reverse the digits and add 74 to get the next term.

The programs for A118225, there is no canonical definition to state claims against.
-/

/-! ## A118225.P11738729956557843920

`A004086(a(n-1))+74` with `a(0)=1`
-/

namespace A118225.P11738729956557843920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 74

end

end A118225.P11738729956557843920

/-!
# A118226: Start with 1 and repeatedly reverse the digits and add 76 to get the next term.

The programs for A118226, there is no canonical definition to state claims against.
-/

/-! ## A118226.P4408121958505354048

`A004086(a(n-1))+76` with `a(0)=1`
-/

namespace A118226.P4408121958505354048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 76

end

end A118226.P4408121958505354048

/-!
# A118229: Triangle, read by rows, equal to the matrix inverse of triangle A054431; the inverse transformation that obtains {a(n)} from b(n) = Sum_{1<=k<=n, gcd(k,n)=1} a(k).

The programs for A118229, there is no canonical definition to state claims against.
-/

/-! ## A118229.P4383239812052244488

`A166282(n)+Δ[A124761(A145903(n))]`
-/

namespace A118229.P4383239812052244488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A145903 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166282 n + (f1 (n + 1) - f1 n)

end

end A118229.P4383239812052244488

/-! ## A118229.P15855565739462100053

`A166282(A326291(A311176(n))+n)`
-/

namespace A118229.P15855565739462100053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166282 (A326291 (A311176 n).toNat + (n : ℤ)).toNat

end

end A118229.P15855565739462100053

/-! ## A118229.P10139787236797793264

`A166282(or(n, A185036(n)²))`
-/

namespace A118229.P10139787236797793264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166282 (Int.lor (n : ℤ) (A185036 n ^ 2)).toNat

end

end A118229.P10139787236797793264

/-! ## A118229.P11619580230622136151

`A166282(xor(n, A185036(n)²))`
-/

namespace A118229.P11619580230622136151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166282 (Int.xor (n : ℤ) (A185036 n ^ 2)).toNat

end

end A118229.P11619580230622136151

/-! ## A118229.P2855440643277823331

`A103452(A008292(n+1)*A301951(n+1))`
-/

namespace A118229.P2855440643277823331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 (A008292 (n + 1) * A301951 (n + 1)).toNat

end

end A118229.P2855440643277823331

/-!
# A118230: Column 3 of triangle A118229, starting with row 1 to include leading zeros.

The programs for A118230, there is no canonical definition to state claims against.
-/

/-! ## A118230.P3868321339015250978

`A211992(A331986(n+1))-A353426(n+3)`
-/

namespace A118230.P3868321339015250978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211992 (A331986 (n + 1)).toNat - A353426 (n + 3)

end

end A118230.P3868321339015250978

/-! ## A118230.P15266668070468491638

`Δ[A349903(A322770(n))]`
-/

namespace A118230.P15266668070468491638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349903 (A322770 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118230.P15266668070468491638

/-! ## A118230.P13434963504369523737

`A353421(A018027(n)+51)`
-/

namespace A118230.P13434963504369523737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353421 (A018027 n + 51).toNat

end

end A118230.P13434963504369523737

/-! ## A118230.P2287864754903777331

`Δ[Δ[A055640(A019299(n))]]`
-/

namespace A118230.P2287864754903777331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A019299 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118230.P2287864754903777331

/-!
# A118231: Triangle, read by rows, equal to the matrix square of triangle A118229.

The programs for A118231, there is no canonical definition to state claims against.
-/

/-! ## A118231.P4062554878930755178

`A166282(n)*A187038(A102222(n))`
-/

namespace A118231.P4062554878930755178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166282 n * A187038 (A102222 n).toNat

end

end A118231.P4062554878930755178

/-! ## A118231.P1155936643381266647

`xor(2, A181838(A140303(n))+A166453(n))-2`
-/

namespace A118231.P1155936643381266647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A181838 (A140303 n).toNat + A166453 n) - 2

end

end A118231.P1155936643381266647

/-! ## A118231.P2386834727420653312

`A001222(A000040(n+1)^A166453(n))*A166282(n)`
-/

namespace A118231.P2386834727420653312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) ^ (A166453 n : ℤ))).toNat * A166282 n

end

end A118231.P2386834727420653312

/-! ## A118231.P6093717203991323867

`xor(2, A166453(n)+A000007(A100984(n+4)))-2`
-/

namespace A118231.P6093717203991323867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A166453 n + A000007 (A100984 (n + 4)).toNat) - 2

end

end A118231.P6093717203991323867

/-!
# A118232: Column 1 of triangle A118231.

The programs for A118232, there is no canonical definition to state claims against.
-/

/-! ## A118232.P17265581287608609652

`A118231(∑[n]+1)`
-/

namespace A118232.P17265581287608609652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118231 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A118232.P17265581287608609652

/-! ## A118232.P13309708902457186543

`A118231(A000124(n))%15`
-/

namespace A118232.P13309708902457186543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118231 (A000124 n).toNat) 15

end

end A118232.P13309708902457186543

/-! ## A118232.P10565959385066796528

`A181838(n)+A118231(A000124(n))`
-/

namespace A118232.P10565959385066796528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181838 n + A118231 (A000124 n).toNat

end

end A118232.P10565959385066796528

/-! ## A118232.P11193967968355895513

`A007318(∑[n])*A118231(A000124(n))`
-/

namespace A118232.P11193967968355895513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A118231 (A000124 n).toNat

end

end A118232.P11193967968355895513

/-! ## A118232.P13333937369589183161

`A118231(A000124(n))+A000007(n+1)`
-/

namespace A118232.P13333937369589183161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118231 (A000124 n).toNat + A000007 (n + 1)

end

end A118232.P13333937369589183161

/-!
# A118233: Triangle, read by rows, equal to the matrix square of triangle A054431.

The programs for A118233, there is no canonical definition to state claims against.
-/

/-! ## A118233.P7521919373981526160

`A000120(A117780(A110813(n)))`
-/

namespace A118233.P7521919373981526160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A117780 (A110813 n).toNat).toNat

end

end A118233.P7521919373981526160

/-! ## A118233.P12423279992127887374

`lcm(A118231(n+1), A145903(A197457(n+1)))`
-/

namespace A118233.P12423279992127887374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A118231 (n + 1)) (A145903 (A197457 (n + 1)).toNat)

end

end A118233.P12423279992127887374

/-! ## A118233.P8362467384756754328

`and(A000005(A359576(n+1)), A357234(n+1))`
-/

namespace A118233.P8362467384756754328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (A359576 (n + 1)).toNat) (A357234 (n + 1))

end

end A118233.P8362467384756754328

/-! ## A118233.P4189790161807752923

`A187038(A102222(n))`
-/

namespace A118233.P4189790161807752923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187038 (A102222 n).toNat

end

end A118233.P4189790161807752923

/-! ## A118233.P6796019170526613633

`A166453(n)^A131242(n)!`
-/

namespace A118233.P6796019170526613633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166453 n ^ Nat.factorial (A131242 n).toNat

end

end A118233.P6796019170526613633

/-!
# A118234: Column 3 of triangle A118233, starting at row 1 to include leading zeros.

The programs for A118234, there is no canonical definition to state claims against.
-/

/-! ## A118234.P187451355315950307

`A302242(A113040(n+1)+char[∑[n+1]])`
-/

namespace A118234.P187451355315950307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A113040 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A118234.P187451355315950307

/-! ## A118234.P12628762269184995779

`A302242(A350404(2*(n+1))+char[∑[n+1]])`
-/

namespace A118234.P12628762269184995779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A350404 (2 * (n + 1)) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A118234.P12628762269184995779

/-! ## A118234.P17111321666210039859

`A022447(n+1)-A035199(A001333(n))`
-/

namespace A118234.P17111321666210039859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022447 (n + 1) - A035199 (A001333 n).toNat

end

end A118234.P17111321666210039859

/-!
# A118235: Smallest positive number starting an interval of consecutive integers with element sum n.

The programs for A118235, there is no canonical definition to state claims against.
-/

/-! ## A118235.P9029574319851838972

`A104512(n+1)+A099894(n)`
-/

namespace A118235.P9029574319851838972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104512 (n + 1) + A099894 n

end

end A118235.P9029574319851838972

/-! ## A118235.P13164525130329223540

`A104512(n+1)+Δ[A003817(n)]`
-/

namespace A118235.P13164525130329223540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104512 (n + 1) + (f1 (n + 1) - f1 n)

end

end A118235.P13164525130329223540

/-! ## A118235.P15756249247887736030

`A212652(n+1)+1-A109814(n+1)`
-/

namespace A118235.P15756249247887736030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212652 (n + 1) + (1 - A109814 (n + 1))

end

end A118235.P15756249247887736030

/-! ## A118235.P7365791673553206235

`A104512(n+1)+(n+1)*A036987(n)`
-/

namespace A118235.P7365791673553206235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104512 (n + 1) + (n + 1 : ℤ) * A036987 n

end

end A118235.P7365791673553206235

/-! ## A118235.P1840927679339756491

`A212652(n+1)-A023443(A109814(n+1))`
-/

namespace A118235.P1840927679339756491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212652 (n + 1) - A023443 (A109814 (n + 1)).toNat

end

end A118235.P1840927679339756491

/-! ## A118235.P7860415002839907840

`A211343(A109814(n+1)+∑[A003056(n)])`
-/

namespace A118235.P7860415002839907840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211343 (A109814 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A118235.P7860415002839907840

/-! ## A118235.P2606939232624850234

`A205379(8*(n+1))`
-/

namespace A118235.P2606939232624850234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205379 (8 * (n + 1))

end

end A118235.P2606939232624850234

/-! ## A118235.P14882684717231045682

`A002024(A000217(A212652(n+1))-n)`
-/

namespace A118235.P14882684717231045682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A000217 (A212652 (n + 1)).toNat - (n : ℤ)).toNat

end

end A118235.P14882684717231045682

/-! ## A118235.P9207270220326667534

`A004736(A000217(A212652(n+1))-n)`
-/

namespace A118235.P9207270220326667534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A000217 (A212652 (n + 1)).toNat - (n : ℤ)).toNat

end

end A118235.P9207270220326667534

/-! ## A118235.P2718109753193026343

`A057059(A000217(A212652(n+1))-n)`
-/

namespace A118235.P2718109753193026343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057059 (A000217 (A212652 (n + 1)).toNat - (n : ℤ)).toNat

end

end A118235.P2718109753193026343

/-! ## A118235.P819753876991367805

`A141419(A000217(A212652(n+1))-n)`
-/

namespace A118235.P819753876991367805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (A000217 (A212652 (n + 1)).toNat - (n : ℤ)).toNat

end

end A118235.P819753876991367805

/-! ## A118235.P14201990549728337292

`A235791(A109814(n+1)+∑[A003056(n)])`
-/

namespace A118235.P14201990549728337292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235791 (A109814 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A118235.P14201990549728337292

/-! ## A118235.P3761930375983015852

`A104512(A000096(n+1)+(n+1)*A212652(n+1))`
-/

namespace A118235.P3761930375983015852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104512 (A000096 (n + 1) + (n + 1 : ℤ) * A212652 (n + 1)).toNat

end

end A118235.P3761930375983015852

/-!
# A118237: Start with 14 and repeatedly reverse the digits and add 1 to get the next term.

The programs for A118237, there is no canonical definition to state claims against.
-/

/-! ## A118237.P11226413753679506488

`A004086(a(n-1))+1` with `a(0)=14`
-/

namespace A118237.P11226413753679506488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  A004086 (a (n - 1)).toNat + 1

end

end A118237.P11226413753679506488

/-!
# A118238: Start with 15 and repeatedly reverse the digits and add 1 to get the next term.

The programs for A118238, there is no canonical definition to state claims against.
-/

/-! ## A118238.P1116138274480586571

`A004086(a(n-1))+1` with `a(0)=15`
-/

namespace A118238.P1116138274480586571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15] fun n a =>
  A004086 (a (n - 1)).toNat + 1

end

end A118238.P1116138274480586571

/-!
# A118239: Engel expansion of cosh(1).

The programs for A118239, the canonical program `A118239.P11152262223240854010` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118239 has offset 1).

The definition of A118239 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118239.P11152262223240854010

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=12, a(3)=30`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A118239

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P11152262223240854010.Spec : Prop :=
  ∀ n, P11152262223240854010.a n = A118239 (n + 1)

theorem P11152262223240854010.correct : P11152262223240854010.Spec := by
  intro n
  simp only [A118239, Nat.add_sub_cancel]

end A118239

/-! ## A118239.P6937974590270563248

`record[(n²+n)^(n%2)]`
-/

namespace A118239.P6937974590270563248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n) ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118239.P6937974590270563248

namespace A118239

/-- `record[(n²+n)^(n%2)]` -/
def P6937974590270563248.Spec : Prop :=
  ∀ n, (P6937974590270563248.a n : ℤ) = A118239 (n + 1)

end A118239

/-! ## A118239.P16414515028245951995

`record[(n²+n)^and(1, n)]`
-/

namespace A118239.P16414515028245951995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n) ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118239.P16414515028245951995

namespace A118239

/-- `record[(n²+n)^and(1, n)]` -/
def P16414515028245951995.Spec : Prop :=
  ∀ n, (P16414515028245951995.a n : ℤ) = A118239 (n + 1)

end A118239

/-! ## A118239.P17090414267163653492

`record[C(n²+n, and(1, n))]`
-/

namespace A118239.P17090414267163653492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2 + n) (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118239.P17090414267163653492

namespace A118239

/-- `record[C(n²+n, and(1, n))]` -/
def P17090414267163653492.Spec : Prop :=
  ∀ n, (P17090414267163653492.a n : ℤ) = A118239 (n + 1)

end A118239

/-! ## A118239.P6867862218586100864

`∑[a(n-1)+8]` with `a(0)=1, a(1)=1, a(2)=10`
-/

namespace A118239.P6867862218586100864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 10] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118239.P6867862218586100864

namespace A118239

/-- `∑[a(n-1)+8]` -/
def P6867862218586100864.Spec : Prop :=
  ∀ n, (P6867862218586100864.a n : ℤ) = A118239 (n + 1)

end A118239

/-! ## A118239.P5581117180686795214

`record[xor(1, -n)²]-2*n`
-/

namespace A118239.P5581117180686795214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (2 * n : ℤ)

end

end A118239.P5581117180686795214

namespace A118239

/-- `record[xor(1, -n)²]-2*n` -/
def P5581117180686795214.Spec : Prop :=
  ∀ n, P5581117180686795214.a n = A118239 (n + 1)

end A118239

/-! ## A118239.P850307236721542515

`floor(acot(n))+2*C(2*n, 2)`
-/

namespace A118239.P850307236721542515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (2 * Nat.choose (2 * n) 2 : ℤ)

end

end A118239.P850307236721542515

namespace A118239

/-- `floor(acot(n))+2*C(2*n, 2)` -/
def P850307236721542515.Spec : Prop :=
  ∀ n, P850307236721542515.a n = A118239 (n + 1)

end A118239

/-! ## A118239.P6561962229724490429

`record[and(n, n-1)²+1-n]`
-/

namespace A118239.P6561962229724490429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) ^ 2 + 1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118239.P6561962229724490429

namespace A118239

/-- `record[and(n, n-1)²+1-n]` -/
def P6561962229724490429.Spec : Prop :=
  ∀ n, P6561962229724490429.a n = A118239 (n + 1)

end A118239

/-! ## A118239.P11548002095293184729

`record[and(n, n-1)²-(n-1)]`
-/

namespace A118239.P11548002095293184729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) ^ 2 - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118239.P11548002095293184729

namespace A118239

/-- `record[and(n, n-1)²-(n-1)]` -/
def P11548002095293184729.Spec : Prop :=
  ∀ n, P11548002095293184729.a n = A118239 (n + 1)

end A118239

/-! ## A118239.P616398059860046614

`round((sqrt(n²+n)+n-1)²)`
-/

namespace A118239.P616398059860046614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sqrt (n ^ 2 + n : ℝ) + ((n : ℤ) - 1 : ℝ)) ^ 2)

end

end A118239.P616398059860046614

namespace A118239

/-- `round((sqrt(n²+n)+n-1)²)` -/
def P616398059860046614.Spec : Prop :=
  ∀ n, P616398059860046614.a n = A118239 (n + 1)

end A118239

/-! ## A118239.P16076350769101185319

`8*n+a(n-1)-6` with `a(0)=1, a(1)=2`
-/

namespace A118239.P16076350769101185319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (8 * n : ℤ) + (a (n - 1) - 6)

end

end A118239.P16076350769101185319

namespace A118239

/-- `8*n+a(n-1)-6` -/
def P16076350769101185319.Spec : Prop :=
  ∀ n, P16076350769101185319.a n = A118239 (n + 1)

end A118239

/-! ## A118239.P5965375896645490972

`8*n-(6-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A118239.P5965375896645490972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (8 * n : ℤ) - (6 - a (n - 1))

end

end A118239.P5965375896645490972

namespace A118239

/-- `8*n-(6-a(n-1))` -/
def P5965375896645490972.Spec : Prop :=
  ∀ n, P5965375896645490972.a n = A118239 (n + 1)

end A118239

/-! ## A118239.P10262596644548010092

`floor(sqrt((2*C(2*n, 2))²+2))`
-/

namespace A118239.P10262596644548010092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt ((2 * Nat.choose (2 * n) 2) ^ 2 + 2)

end

end A118239.P10262596644548010092

namespace A118239

/-- `floor(sqrt((2*C(2*n, 2))²+2))` -/
def P10262596644548010092.Spec : Prop :=
  ∀ n, (P10262596644548010092.a n : ℤ) = A118239 (n + 1)

end A118239

/-! ## A118239.P13399861757566815218

`C(2, n+2)+2*C(2*n, 2)`
-/

namespace A118239.P13399861757566815218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + 2 * Nat.choose (2 * n) 2

end

end A118239.P13399861757566815218

namespace A118239

/-- `C(2, n+2)+2*C(2*n, 2)` -/
def P13399861757566815218.Spec : Prop :=
  ∀ n, (P13399861757566815218.a n : ℤ) = A118239 (n + 1)

end A118239

/-! ## A118239.P8908654304546282674

`(2*n)^(2%(n+2))-2*n`
-/

namespace A118239.P8908654304546282674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ (2 % (n + 2)) : ℤ) - (2 * n : ℤ)

end

end A118239.P8908654304546282674

namespace A118239

/-- `(2*n)^(2%(n+2))-2*n` -/
def P8908654304546282674.Spec : Prop :=
  ∀ n, P8908654304546282674.a n = A118239 (n + 1)

end A118239

/-! ## A118239.P16062232300576436111

`gcd(2*C(2*n, 2), C(n, 2*n))`
-/

namespace A118239.P16062232300576436111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * Nat.choose (2 * n) 2) (Nat.choose n (2 * n))

end

end A118239.P16062232300576436111

namespace A118239

/-- `gcd(2*C(2*n, 2), C(n, 2*n))` -/
def P16062232300576436111.Spec : Prop :=
  ∀ n, (P16062232300576436111.a n : ℤ) = A118239 (n + 1)

end A118239

/-! ## A118239.P17444614943911800745

`(2*n)^ceil(atan(2*n))-2*n`
-/

namespace A118239.P17444614943911800745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) ^ (⌈Real.arctan (2 * n : ℝ)⌉ : ℤ) - (2 * n : ℚ)

end

end A118239.P17444614943911800745

namespace A118239

/-- `(2*n)^ceil(atan(2*n))-2*n` -/
def P17444614943911800745.Spec : Prop :=
  ∀ n, P17444614943911800745.a n = (A118239 (n + 1) : ℚ)

end A118239

/-! ## A118239.P4808866204211709810

`xor(1, ceil((2*n)^3/(2*n+1)))`
-/

namespace A118239.P4808866204211709810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌈((2 * n) ^ 3 : ℚ) / (2 * n + 1 : ℚ)⌉

end

end A118239.P4808866204211709810

namespace A118239

/-- `xor(1, ceil((2*n)^3/(2*n+1)))` -/
def P4808866204211709810.Spec : Prop :=
  ∀ n, P4808866204211709810.a n = A118239 (n + 1)

end A118239

/-! ## A118239.P18266267385117466184

`(n-1)*record[xor(3, n+1)]-(n-3)`
-/

namespace A118239.P18266267385117466184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - ((n : ℤ) - 3)

end

end A118239.P18266267385117466184

namespace A118239

/-- `(n-1)*record[xor(3, n+1)]-(n-3)` -/
def P18266267385117466184.Spec : Prop :=
  ∀ n, P18266267385117466184.a n = A118239 (n + 1)

end A118239

/-! ## A118239.P10413579979078034614

`record[(n-1)^(2*and(1, n))]-2*n`
-/

namespace A118239.P10413579979078034614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ (2 * Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (2 * n : ℤ)

end

end A118239.P10413579979078034614

namespace A118239

/-- `record[(n-1)^(2*and(1, n))]-2*n` -/
def P10413579979078034614.Spec : Prop :=
  ∀ n, P10413579979078034614.a n = A118239 (n + 1)

end A118239

/-!
# A118240: The part of n in base phi left of the decimal using a least-greedy algorithm representation.

The programs for A118240, there is no canonical definition to state claims against.
-/

/-! ## A118240.P8997619373407260690

`A103181(A004151(n+5)+A000142(n))`
-/

namespace A118240.P8997619373407260690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 (A004151 (n + 5) + A000142 n).toNat

end

end A118240.P8997619373407260690

/-! ## A118240.P5706229003078863017

`A007088(A038083(n+1)%A098009(n+1))`
-/

namespace A118240.P5706229003078863017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A038083 (n + 1)) (A098009 (n + 1))).toNat

end

end A118240.P5706229003078863017

/-! ## A118240.P16384735179411539669

`A007088(A000701(n+1)%A222199(n+3))`
-/

namespace A118240.P16384735179411539669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A000701 (n + 1)) (A222199 (n + 3))).toNat

end

end A118240.P16384735179411539669

/-!
# A118242: Pierce expansion of 1/phi.

The programs for A118242, there is no canonical definition to state claims against.
-/

/-! ## A118242.P16890626642008628983

`A061446(Δ[A087503(n)])`
-/

namespace A118242.P16890626642008628983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061446 (f1 (n + 1) - f1 n).toNat

end

end A118242.P16890626642008628983

/-! ## A118242.P4112092778810479257

`A061446(A038754(n+1))`
-/

namespace A118242.P4112092778810479257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061446 (A038754 (n + 1)).toNat

end

end A118242.P4112092778810479257

/-! ## A118242.P7329549894694636329

`A061446(A182751(n+1))`
-/

namespace A118242.P7329549894694636329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061446 (A182751 (n + 1)).toNat

end

end A118242.P7329549894694636329

/-! ## A118242.P6438481658106952587

`A061446(A062318(n+2)+1)`
-/

namespace A118242.P6438481658106952587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061446 (A062318 (n + 2) + 1).toNat

end

end A118242.P6438481658106952587

/-! ## A118242.P639090707878313325

`record[root(A061446(n+1), A007734(n+1))]`
-/

namespace A118242.P639090707878313325
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A061446 (n + 1) : ℝ) ^ (1 / (A007734 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118242.P639090707878313325

/-!
# A118243: Triangle generated from Pell polynomials.

The programs for A118243, there is no canonical definition to state claims against.
-/

/-! ## A118243.P16742742047446641908

`A073133(comp[∑[n]])`
-/

namespace A118243.P16742742047446641908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073133 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A118243.P16742742047446641908

/-! ## A118243.P15197706750702485884

`A172236(lt[1, A002262(n)])`
-/

namespace A118243.P15197706750702485884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A118243.P15197706750702485884

/-! ## A118243.P12955543330113208293

`A172236(lt[1, A034261(n)])`
-/

namespace A118243.P12955543330113208293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A118243.P12955543330113208293

/-! ## A118243.P2693074287184843355

`A172236(lt[1, A049600(n)])`
-/

namespace A118243.P2693074287184843355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A118243.P2693074287184843355

/-! ## A118243.P16020029034760595209

`A172236(lt[1, A083861(n)])`
-/

namespace A118243.P16020029034760595209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A118243.P16020029034760595209

/-! ## A118243.P18308641295480216645

`A172236(lt[1, A085838(n)])`
-/

namespace A118243.P18308641295480216645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A118243.P18308641295480216645

/-! ## A118243.P12693758979487959640

`A172236(lt[1, A213191(n)])`
-/

namespace A118243.P12693758979487959640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A118243.P12693758979487959640

/-! ## A118243.P17274893127594013142

`A172236(lt[1, A233543(n)])`
-/

namespace A118243.P17274893127594013142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A118243.P17274893127594013142

/-! ## A118243.P5677296130586935124

`A172236(lt[2, A059268(n)])`
-/

namespace A118243.P5677296130586935124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A118243.P5677296130586935124

/-! ## A118243.P17395250393435137627

`A172236(lt[1, A007318(n)]+1)`
-/

namespace A118243.P17395250393435137627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A118243.P17395250393435137627

/-!
# A118245: Triangle generated from A001263 considered as a transform.

The programs for A118245, there is no canonical definition to state claims against.
-/

/-! ## A118245.P5592827808265712812

`or(A113582(n+1), A180649(A304848(n+1)))`
-/

namespace A118245.P5592827808265712812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A113582 (n + 1)) (A180649 (A304848 (n + 1)).toNat)

end

end A118245.P5592827808265712812

/-!
# A118246: Number of partitions of n such that even parts occur at most once and odd parts occur at most twice.

The programs for A118246, there is no canonical definition to state claims against.
-/

/-! ## A118246.P13216341364100956023

`A122135(n)+A096159(A294082(n+1))`
-/

namespace A118246.P13216341364100956023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122135 n + A096159 (A294082 (n + 1)).toNat

end

end A118246.P13216341364100956023

/-! ## A118246.P7262464790938094937

`A024936(A068922(n+2)-A154363(n+1))`
-/

namespace A118246.P7262464790938094937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024936 (A068922 (n + 2) - A154363 (n + 1)).toNat

end

end A118246.P7262464790938094937

/-! ## A118246.P14182234480532678813

`A240467(A047011(n))+A066447(n)`
-/

namespace A118246.P14182234480532678813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (A047011 n).toNat + A066447 n

end

end A118246.P14182234480532678813

/-! ## A118246.P6814959822219915327

`A197870(A201207(n))+A066447(n)`
-/

namespace A118246.P6814959822219915327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197870 (A201207 n).toNat + A066447 n

end

end A118246.P6814959822219915327

/-! ## A118246.P7030639687528713960

`A066447(n)-A151755(A362609(n))`
-/

namespace A118246.P7030639687528713960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066447 n - A151755 (A362609 n).toNat

end

end A118246.P7030639687528713960

/-!
# A118247: a(0)=0. Concatenate onto the end of the sequence (from left to right) the integer m_n converted into binary (with the most significant digit on the left), where m_n is the smallest integer > A118248(n-1) and whose binary representation does not occur anywhere earlier in the sequence (when the concatenated sequence is read from left to right). A118248(n) then equals m_n when written in decimal.

The programs for A118247, there is no canonical definition to state claims against.
-/

/-! ## A118247.P6856066197803134033

`A327974(∑[A079398(n+1)²])`
-/

namespace A118247.P6856066197803134033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079398 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327974 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A118247.P6856066197803134033

/-! ## A118247.P3095752172697421225

`A285501(xor(A023896(n+1), A302784(n+3)))`
-/

namespace A118247.P3095752172697421225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285501 (Int.xor (A023896 (n + 1)) (A302784 (n + 3))).toNat

end

end A118247.P3095752172697421225

/-! ## A118247.P7963225053950770422

`A091862(A357626(2*(n+2))+A000122(3*n+1))`
-/

namespace A118247.P7963225053950770422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091862 (A357626 (2 * (n + 2)) + A000122 (3 * n + 1)).toNat

end

end A118247.P7963225053950770422

/-! ## A118247.P15949493823175358645

`A011690(A310283(n)²)`
-/

namespace A118247.P15949493823175358645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011690 (A310283 n ^ 2).toNat

end

end A118247.P15949493823175358645

/-! ## A118247.P1988979587893580552

`A273129(∑[∑[A103517(n)]+n]+n)`
-/

namespace A118247.P1988979587893580552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273129 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A118247.P1988979587893580552

/-!
# A118248: Least nonnegative integer whose binary representation does not occur in the concatenation of the binary representations of all earlier terms.

The programs for A118248, there is no canonical definition to state claims against.
-/

/-! ## A118248.P11582915216550366192

`comp[A128291(n)]%A354361(2*(n+2))`
-/

namespace A118248.P11582915216550366192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128291 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A354361 (2 * (n + 2)))

end

end A118248.P11582915216550366192

/-! ## A118248.P5551325450131401618

`A118759(comp[A128291(n)])`
-/

namespace A118248.P5551325450131401618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128291 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A118248.P5551325450131401618

/-! ## A118248.P17678466323957790158

`A037213(comp[A128291(n)]²)`
-/

namespace A118248.P17678466323957790158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128291 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2)

end

end A118248.P17678466323957790158

/-! ## A118248.P16484432189704806296

`comp[A128291(n)]%A257951(n+1)`
-/

namespace A118248.P16484432189704806296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128291 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A257951 (n + 1))

end

end A118248.P16484432189704806296

/-!
# A118249: a(0)=0. Concatenate onto the end of the sequence (from left to right) the integer m_n converted into binary and reversed (with the most significant digit on the right), where m_n is the smallest integer > A118250(n-1) and whose reversed binary representation does not occur anywhere earlier in the sequence (when the concatenated sequence is read from left to right). A118250(n) then equals m_n when written in decimal.

The programs for A118249, there is no canonical definition to state claims against.
-/

/-! ## A118249.P8732940842284103393

`A212412(A270929(n+1)+A066711(2*n+5))`
-/

namespace A118249.P8732940842284103393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212412 (A270929 (n + 1) + A066711 (2 * n + 5)).toNat

end

end A118249.P8732940842284103393

/-! ## A118249.P1234561936636526175

`A091446(A054770(n+2))`
-/

namespace A118249.P1234561936636526175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091446 (A054770 (n + 2)).toNat

end

end A118249.P1234561936636526175

/-! ## A118249.P1204249086783304440

`A071906(A239567(n+1)+1)`
-/

namespace A118249.P1204249086783304440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071906 (A239567 (n + 1) + 1).toNat

end

end A118249.P1204249086783304440

/-! ## A118249.P2171063288213378305

`A091446(A000201(A000201(n+2)+1)+n)`
-/

namespace A118249.P2171063288213378305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091446 (A000201 (A000201 (n + 2) + 1).toNat + (n : ℤ)).toNat

end

end A118249.P2171063288213378305

/-! ## A118249.P17114290439476886448

`A352246(A219638(n+3))%2`
-/

namespace A118249.P17114290439476886448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352246 (A219638 (n + 3)).toNat) 2

end

end A118249.P17114290439476886448

/-!
# A118250: The least nonnegative integer whose reversed binary representation does not occur in the concatenation of the reversed binary representations of all preceding terms.

The programs for A118250, there is no canonical definition to state claims against.
-/

/-! ## A118250.P2891884215932686486

`comp[A190784(n+1)]%A133652(n+1)`
-/

namespace A118250.P2891884215932686486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190784 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A133652 (n + 1))

end

end A118250.P2891884215932686486

/-! ## A118250.P8999757530865731559

`comp[A190784(n+1)]%A251181(n)`
-/

namespace A118250.P8999757530865731559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190784 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A251181 n)

end

end A118250.P8999757530865731559

/-! ## A118250.P17071250860308045185

`comp[A190784(n+1)]^A322094(A048992(2*(n+2)))`
-/

namespace A118250.P17071250860308045185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190784 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) ^ (A322094 (A048992 (2 * (n + 2))).toNat : ℤ)

end

end A118250.P17071250860308045185

/-! ## A118250.P8924197764056903300

`eq[A238344(A249093(n+3)), A329585(2*n+5)]`
-/

namespace A118250.P8924197764056903300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238344 (A249093 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329585 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118250.P8924197764056903300

/-! ## A118250.P7038595453001145888

`lt[A000203(A050070(n+1)), A039678(n+3)]`
-/

namespace A118250.P7038595453001145888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A050070 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039678 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A118250.P7038595453001145888

/-!
# A118251: a(1)=1. Concatenate onto the end of the sequence (from left to right) the integer m_n converted into binary and reversed (with the most significant digit on the right), where m_n is the smallest integer > A118252(n-1) and whose reversed binary representation does not occur anywhere earlier in the sequence (when the concatenated sequence is read from left to right). A118252(n) then equals m_n when written in decimal.

The programs for A118251, there is no canonical definition to state claims against.
-/

/-! ## A118251.P11690244544837646244

`A033873(n)%A132157(A127797(n))`
-/

namespace A118251.P11690244544837646244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033873 n) (A132157 (A127797 n).toNat)

end

end A118251.P11690244544837646244

/-! ## A118251.P3375721930018227428

`A014707(A195082(3*n+1)+A009953(n))`
-/

namespace A118251.P3375721930018227428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A195082 (3 * n + 1) + A009953 n).toNat

end

end A118251.P3375721930018227428

/-! ## A118251.P5670063625007808448

`A133872((n+1)*A346875(A228147(n)+2+n))`
-/

namespace A118251.P5670063625007808448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 ((n + 1 : ℤ) * A346875 (A228147 n + 2 + (n : ℤ)).toNat).toNat

end

end A118251.P5670063625007808448

/-! ## A118251.P4270446204269153654

`A010060(A347887(2*(n+3))+A024640(2*n+1))`
-/

namespace A118251.P4270446204269153654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A347887 (2 * (n + 3)) + A024640 (2 * n + 1)).toNat

end

end A118251.P4270446204269153654

/-! ## A118251.P2991317986902154049

`A001222(A239624(2*n+3))%2`
-/

namespace A118251.P2991317986902154049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A239624 (2 * n + 3)).toNat) 2

end

end A118251.P2991317986902154049

/-!
# A118254: Start with 16 and repeatedly reverse the digits and add 1 to get the next term.

The programs for A118254, there is no canonical definition to state claims against.
-/

/-! ## A118254.P8247859205755455233

`A004086(a(n-1))+1` with `a(0)=16`
-/

namespace A118254.P8247859205755455233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  A004086 (a (n - 1)).toNat + 1

end

end A118254.P8247859205755455233

/-!
# A118255: a(1)=1, then a(n)=2*a(n-1) if n is prime, a(n)=2*a(n-1)+1 if n not prime.

The programs for A118255, the canonical program `A118255.P6599881384483095827` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118255 has offset 1).

The definition of A118255 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072762, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A118255.P6599881384483095827

`A000225(n+1)-A072762(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A118255

/-- `A000225(n+1)-A072762(n+1)` -/
def P6599881384483095827.Spec : Prop :=
  ∀ n, P6599881384483095827.a n = A118255 (n + 1)

theorem P6599881384483095827.correct : P6599881384483095827.Spec := by
  intro n
  simp only [A118255, Nat.add_sub_cancel]

end A118255

/-! ## A118255.P6208012896221357999

`2*a(n-1)+1-char[p?[xor(3, n)]-1]` with `a(0)=1`
-/

namespace A118255.P6208012896221357999
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + 1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A118255.P6208012896221357999

namespace A118255

/-- `2*a(n-1)+1-char[p?[xor(3, n)]-1]` -/
def P6208012896221357999.Spec : Prop :=
  ∀ n, P6208012896221357999.a n = A118255 (n + 1)

end A118255

/-! ## A118255.P17093163630170804949

`2*a(n-1)+1-char[p?[∏{p}[n, #]]-1]` with `a(0)=1`
-/

namespace A118255.P17093163630170804949
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + 1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A118255.P17093163630170804949

namespace A118255

/-- `2*a(n-1)+1-char[p?[∏{p}[n, #]]-1]` -/
def P17093163630170804949.Spec : Prop :=
  ∀ n, P17093163630170804949.a n = A118255 (n + 1)

end A118255

/-! ## A118255.P14663650148785136858

`A005171(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A118255.P14663650148785136858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005171 (n + 1) + 2 * a (n - 1)

end

end A118255.P14663650148785136858

namespace A118255

/-- `A005171(n+1)+2*a(n-1)` -/
def P14663650148785136858.Spec : Prop :=
  ∀ n, P14663650148785136858.a n = A118255 (n + 1)

end A118255

/-! ## A118255.P2556998426797557320

`A066247(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A118255.P2556998426797557320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066247 (n + 1) + 2 * a (n - 1)

end

end A118255.P2556998426797557320

namespace A118255

/-- `A066247(n+1)+2*a(n-1)` -/
def P2556998426797557320.Spec : Prop :=
  ∀ n, P2556998426797557320.a n = A118255 (n + 1)

end A118255

/-! ## A118255.P13302328082634249937

`Δ[A086936(n+1)]+2*a(n-1)` with `a(0)=1`
-/

namespace A118255.P13302328082634249937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 2 * a (n - 1)

end

end A118255.P13302328082634249937

namespace A118255

/-- `Δ[A086936(n+1)]+2*a(n-1)` -/
def P13302328082634249937.Spec : Prop :=
  ∀ n, P13302328082634249937.a n = A118255 (n + 1)

end A118255

/-! ## A118255.P7498380338448115962

`2*a(n-1)+1-A010051(n+1)` with `a(0)=1`
-/

namespace A118255.P7498380338448115962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (1 - A010051 (n + 1))

end

end A118255.P7498380338448115962

namespace A118255

/-- `2*a(n-1)+1-A010051(n+1)` -/
def P7498380338448115962.Spec : Prop :=
  ∀ n, P7498380338448115962.a n = A118255 (n + 1)

end A118255

/-! ## A118255.P15746831617099585281

`char[A018252(n+2)-1]+2*a(n-1)` with `a(0)=1`
-/

namespace A118255.P15746831617099585281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2 * a (n - 1)

end

end A118255.P15746831617099585281

namespace A118255

/-- `char[A018252(n+2)-1]+2*a(n-1)` -/
def P15746831617099585281.Spec : Prop :=
  ∀ n, (P15746831617099585281.a n : ℤ) = A118255 (n + 1)

end A118255

/-! ## A118255.P16390509821037761935

`A126646(n)-A072762(n+1)`
-/

namespace A118255.P16390509821037761935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A072762 (n + 1)

end

end A118255.P16390509821037761935

namespace A118255

/-- `A126646(n)-A072762(n+1)` -/
def P16390509821037761935.Spec : Prop :=
  ∀ n, P16390509821037761935.a n = A118255 (n + 1)

end A118255

/-! ## A118255.P4772286494909942845

`A347441(A347050(n+1))+2*a(n-1)` with `a(0)=1`
-/

namespace A118255.P4772286494909942845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A347441 (A347050 (n + 1)).toNat + 2 * a (n - 1)

end

end A118255.P4772286494909942845

namespace A118255

/-- `A347441(A347050(n+1))+2*a(n-1)` -/
def P4772286494909942845.Spec : Prop :=
  ∀ n, P4772286494909942845.a n = A118255 (n + 1)

end A118255

/-!
# A118256: Concatenation for i=1 to n of A005171(i); also A118255 in base 2.

The programs for A118256, the canonical program `A118256.P3763547980877692601` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118256 has offset 1).

The definition of A118256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118256.P12532700047256084305

`floor(atan(∑{e}[n+1, #]))+10*a(n-1)` with `a(0)=1`
-/

namespace A118256.P12532700047256084305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.arctan ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)⌋ + 10 * a (n - 1)

end

end A118256.P12532700047256084305

namespace A118256

/-- `floor(atan(∑{e}[n+1, #]))+10*a(n-1)` -/
def P12532700047256084305.Spec : Prop :=
  ∀ n, P12532700047256084305.a n = A118256 (n + 1)

end A118256

/-! ## A118256.P10991721383401523860

`A005171(n+1)+10*a(n-1)` with `a(0)=1`
-/

namespace A118256.P10991721383401523860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005171 (n + 1) + 10 * a (n - 1)

end

end A118256.P10991721383401523860

namespace A118256

/-- `A005171(n+1)+10*a(n-1)` -/
def P10991721383401523860.Spec : Prop :=
  ∀ n, P10991721383401523860.a n = A118256 (n + 1)

end A118256

/-! ## A118256.P3763547980877692601

`xor(10*a(n-1), A066247(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A118256

/-- `xor(10*a(n-1), A066247(n+1))` -/
def P3763547980877692601.Spec : Prop :=
  ∀ n, P3763547980877692601.a n = A118256 (n + 1)

theorem P3763547980877692601.correct : P3763547980877692601.Spec := by
  intro n
  simp only [A118256, Nat.add_sub_cancel]

end A118256

/-! ## A118256.P11760840461645663204

`10*a(n-1)+1-A010051(n+1)` with `a(0)=1`
-/

namespace A118256.P11760840461645663204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + 1 - A010051 (n + 1)

end

end A118256.P11760840461645663204

namespace A118256

/-- `10*a(n-1)+1-A010051(n+1)` -/
def P11760840461645663204.Spec : Prop :=
  ∀ n, P11760840461645663204.a n = A118256 (n + 1)

end A118256

/-! ## A118256.P9353789785412171118

`or(10*a(n-1), A005171(-xor(n, -1)))` with `a(0)=1`
-/

namespace A118256.P9353789785412171118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A005171 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A118256.P9353789785412171118

namespace A118256

/-- `or(10*a(n-1), A005171(-xor(n, -1)))` -/
def P9353789785412171118.Spec : Prop :=
  ∀ n, P9353789785412171118.a n = A118256 (n + 1)

end A118256

/-! ## A118256.P3894038133811924876

`10*a(n-1)+1-char[A020639(n+1)-1]` with `a(0)=1`
-/

namespace A118256.P3894038133811924876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A118256.P3894038133811924876

namespace A118256

/-- `10*a(n-1)+1-char[A020639(n+1)-1]` -/
def P3894038133811924876.Spec : Prop :=
  ∀ n, P3894038133811924876.a n = A118256 (n + 1)

end A118256

/-! ## A118256.P16734412153623482154

`or(10*a(n-1), A178334(A072670(n)))` with `a(0)=1`
-/

namespace A118256.P16734412153623482154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A178334 (A072670 n).toNat)

end

end A118256.P16734412153623482154

namespace A118256

/-- `or(10*a(n-1), A178334(A072670(n)))` -/
def P16734412153623482154.Spec : Prop :=
  ∀ n, P16734412153623482154.a n = A118256 (n + 1)

end A118256

/-! ## A118256.P346579079583915930

`xor(10*a(n-1), A347708(A038548(n+1)))` with `a(0)=1, a(1)=10`
-/

namespace A118256.P346579079583915930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  Int.xor (10 * a (n - 1)) (A347708 (A038548 (n + 1)).toNat)

end

end A118256.P346579079583915930

namespace A118256

/-- `xor(10*a(n-1), A347708(A038548(n+1)))` -/
def P346579079583915930.Spec : Prop :=
  ∀ n, P346579079583915930.a n = A118256 (n + 1)

end A118256

/-! ## A118256.P10946796061982193072

`xor(10*a(n-1), A156078(A001222(n+1)+1))` with `a(0)=1`
-/

namespace A118256.P10946796061982193072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (10 * a (n - 1)) (A156078 (A001222 (n + 1) + 1).toNat)

end

end A118256.P10946796061982193072

namespace A118256

/-- `xor(10*a(n-1), A156078(A001222(n+1)+1))` -/
def P10946796061982193072.Spec : Prop :=
  ∀ n, P10946796061982193072.a n = A118256 (n + 1)

end A118256

/-! ## A118256.P2773531724613794249

`xor(10*a(n-1), A057427((A000010(n+1)-n)²))` with `a(0)=1`
-/

namespace A118256.P2773531724613794249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (10 * a (n - 1)) (A057427 ((A000010 (n + 1) - (n : ℤ)) ^ 2).toNat)

end

end A118256.P2773531724613794249

namespace A118256

/-- `xor(10*a(n-1), A057427((A000010(n+1)-n)²))` -/
def P2773531724613794249.Spec : Prop :=
  ∀ n, P2773531724613794249.a n = A118256 (n + 1)

end A118256

/-!
# A118257: Numbers k such that A118255(k) is prime.

The programs for A118257, there is no canonical definition to state claims against.
-/

/-! ## A118257.P1585432278747348183

`floor(log2(A139119(n+1)))+1`
-/

namespace A118257.P1585432278747348183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A139119 (n + 1)).toNat + 1

end

end A118257.P1585432278747348183

/-!
# A118258: Numbers of carefree couples (a,b) with a,b<=n.

The programs for A118258, there is no canonical definition to state claims against.
-/

/-! ## A118258.P17716311446041582948

`(A118259(n+1)+A118260(n+1))/2`
-/

namespace A118258.P17716311446041582948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118259 (n + 1) + A118260 (n + 1) : ℚ) / 2

end

end A118258.P17716311446041582948

/-! ## A118258.P904491827417758473

`A070072(n+1)+A004526(A118260(n+1))`
-/

namespace A118258.P904491827417758473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070072 (n + 1) + A004526 (A118260 (n + 1)).toNat

end

end A118258.P904491827417758473

/-! ## A118258.P18351383291898538703

`A004525(A118260(n+1)+A118259(n+1))`
-/

namespace A118258.P18351383291898538703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A118260 (n + 1) + A118259 (n + 1)).toNat

end

end A118258.P18351383291898538703

/-! ## A118258.P14508663104159328455

`A004526(A118260(n+1)+A118259(n+1))`
-/

namespace A118258.P14508663104159328455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A118260 (n + 1) + A118259 (n + 1)).toNat

end

end A118258.P14508663104159328455

/-! ## A118258.P9434116272700831829

`A006370(A118260(n+1)+A118259(n+1))`
-/

namespace A118258.P9434116272700831829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A118260 (n + 1) + A118259 (n + 1)).toNat

end

end A118258.P9434116272700831829

/-! ## A118258.P6046397776715499999

`A014682(A118260(n+1)+A118259(n+1))`
-/

namespace A118258.P6046397776715499999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A118260 (n + 1) + A118259 (n + 1)).toNat

end

end A118258.P6046397776715499999

/-! ## A118258.P11886483291261913667

`A026741(A118260(n+1)+A118259(n+1))`
-/

namespace A118258.P11886483291261913667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A118260 (n + 1) + A118259 (n + 1)).toNat

end

end A118258.P11886483291261913667

/-! ## A118258.P1481783028308397758

`A065033(A118260(n+1)+A118259(n+1))`
-/

namespace A118258.P1481783028308397758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A118260 (n + 1) + A118259 (n + 1)).toNat

end

end A118258.P1481783028308397758

/-! ## A118258.P2901297573015775602

`A110654(A118260(n+1)+A118259(n+1))`
-/

namespace A118258.P2901297573015775602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A118260 (n + 1) + A118259 (n + 1)).toNat

end

end A118258.P2901297573015775602

/-! ## A118258.P10490478490987614179

`A273943(A118260(n+1)+A118259(n+1))`
-/

namespace A118258.P10490478490987614179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A118260 (n + 1) + A118259 (n + 1)).toNat

end

end A118258.P10490478490987614179

/-!
# A118259: Numbers of strongly carefree couples (a,b) with a,b <= n.

The programs for A118259, there is no canonical definition to state claims against.
-/

/-! ## A118259.P2979637059198198964

`2*A118258(n+1)-A118260(n+1)`
-/

namespace A118259.P2979637059198198964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118258 (n + 1) - A118260 (n + 1)

end

end A118259.P2979637059198198964

/-! ## A118259.P7298112224660348398

`2*A070072(n+1)-1`
-/

namespace A118259.P7298112224660348398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A070072 (n + 1) - 1

end

end A118259.P7298112224660348398

/-! ## A118259.P6368272588928016451

`∑[2*A169646(n+1)]-1`
-/

namespace A118259.P6368272588928016451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A118259.P6368272588928016451

/-! ## A118259.P7347369507874895114

`∑[A000032(C(2, n+2))*A169646(n+1)]`
-/

namespace A118259.P7347369507874895114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A169646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118259.P7347369507874895114

/-! ## A118259.P8028001703192482389

`∑[A006530(A000005(n+1))*A169646(n+1)]`
-/

namespace A118259.P8028001703192482389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000005 (n + 1)).toNat * A169646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118259.P8028001703192482389

/-! ## A118259.P6494865509961110739

`A004273(A070072(n+1))`
-/

namespace A118259.P6494865509961110739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A070072 (n + 1)).toNat

end

end A118259.P6494865509961110739

/-! ## A118259.P5538775285929423105

`A004273(∑[A169646(n+1)])`
-/

namespace A118259.P5538775285929423105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A118259.P5538775285929423105

/-! ## A118259.P5991086549822425536

`A005408(A070072(n+1)-1)`
-/

namespace A118259.P5991086549822425536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A070072 (n + 1) - 1).toNat

end

end A118259.P5991086549822425536

/-! ## A118259.P2981767526900856376

`A004277(∑[A169646(n+1)])-1`
-/

namespace A118259.P2981767526900856376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A118259.P2981767526900856376

/-! ## A118259.P14949502183107894015

`A014681(2*A070072(n+1))`
-/

namespace A118259.P14949502183107894015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A070072 (n + 1)).toNat

end

end A118259.P14949502183107894015

/-! ## A118259.P152572235354242329

`∑[A020639(A000010((3*n+1)²))*A169646(n+1)]`
-/

namespace A118259.P152572235354242329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 ((3 * n + 1) ^ 2)).toNat * A169646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118259.P152572235354242329

/-!
# A118260: Number of weakly carefree couples (a,b) with a,b<=n.

The programs for A118260, there is no canonical definition to state claims against.
-/

/-! ## A118260.P16495764052239279583

`2*A118258(n+1)-A118259(n+1)`
-/

namespace A118260.P16495764052239279583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118258 (n + 1) - A118259 (n + 1)

end

end A118260.P16495764052239279583

/-! ## A118260.P6839796566644541834

`2*(A118258(n+1)-A070072(n+1))+1`
-/

namespace A118260.P6839796566644541834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A118258 (n + 1) - A070072 (n + 1)) + 1

end

end A118260.P6839796566644541834

/-! ## A118260.P4418919777011829879

`A005408(A118258(n+1)-A070072(n+1))`
-/

namespace A118260.P4418919777011829879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A118258 (n + 1) - A070072 (n + 1)).toNat

end

end A118260.P4418919777011829879

/-! ## A118260.P14340786510974124065

`A004277(A118258(n+1))-A118259(n+1)`
-/

namespace A118260.P14340786510974124065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A118258 (n + 1)).toNat - A118259 (n + 1)

end

end A118260.P14340786510974124065

/-! ## A118260.P8056455130684131224

`A004277(A118258(n+1))-(∑[2*A169646(n+1)]-1)`
-/

namespace A118260.P8056455130684131224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A118258 (n + 1)).toNat - (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A118260.P8056455130684131224

/-!
# A118263: a(3n) = 2^n, a(3n+1) = 3^n, a(3n+2) = 4^n.

The programs for A118263, the canonical program `A118263.P14330498955917117484` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118263 has offset 0).

The definition of A118263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118263.P14330498955917117484

`9*a(n-3)-26*a(n-6)+24*a(n-9)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=4, a(6)=4, a(7)=9, a(8)=16`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A118263

/-- `9*a(n-3)-26*a(n-6)+24*a(n-9)` -/
def P14330498955917117484.Spec : Prop :=
  ∀ n, P14330498955917117484.a n = A118263 n

theorem P14330498955917117484.correct : P14330498955917117484.Spec := by
  intro n
  simp only [A118263]

end A118263

/-! ## A118263.P802492604275766006

`(n%3+2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A118263.P802492604275766006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (n % 3 + 2) * a (n - 3)

end

end A118263.P802492604275766006

namespace A118263

/-- `(n%3+2)*a(n-3)` -/
def P802492604275766006.Spec : Prop :=
  ∀ n, (P802492604275766006.a n : ℤ) = A118263 n

end A118263

/-! ## A118263.P4126644369299245324

`(n%3+2)^A002264(n)`
-/

namespace A118263.P4126644369299245324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 3 + 2 : ℕ) : ℚ) ^ (A002264 n : ℤ)

end

end A118263.P4126644369299245324

namespace A118263

/-- `(n%3+2)^A002264(n)` -/
def P4126644369299245324.Spec : Prop :=
  ∀ n, P4126644369299245324.a n = (A118263 n : ℚ)

end A118263

/-! ## A118263.P2209234220367068617

`(A010882(n)+1)^A002264(n)`
-/

namespace A118263.P2209234220367068617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010882 n + 1 : ℚ) ^ (A002264 n : ℤ)

end

end A118263.P2209234220367068617

namespace A118263

/-- `(A010882(n)+1)^A002264(n)` -/
def P2209234220367068617.Spec : Prop :=
  ∀ n, P2209234220367068617.a n = (A118263 n : ℚ)

end A118263

/-! ## A118263.P9668394506902404107

`(A010872(n)+2)^A002264(n)`
-/

namespace A118263.P9668394506902404107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010872 n + 2 : ℚ) ^ (A002264 n : ℤ)

end

end A118263.P9668394506902404107

namespace A118263

/-- `(A010872(n)+2)^A002264(n)` -/
def P9668394506902404107.Spec : Prop :=
  ∀ n, P9668394506902404107.a n = (A118263 n : ℚ)

end A118263

/-! ## A118263.P15368162298787279597

`(3-A057078(n))^A002264(n)`
-/

namespace A118263.P15368162298787279597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - A057078 n : ℚ) ^ (A002264 n : ℤ)

end

end A118263.P15368162298787279597

namespace A118263

/-- `(3-A057078(n))^A002264(n)` -/
def P15368162298787279597.Spec : Prop :=
  ∀ n, P15368162298787279597.a n = (A118263 n : ℚ)

end A118263

/-! ## A118263.P12956596527210597500

`A010875(A047228(n+1))^A002264(n)`
-/

namespace A118263.P12956596527210597500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010875 (A047228 (n + 1)).toNat : ℚ) ^ (A002264 n : ℤ)

end

end A118263.P12956596527210597500

namespace A118263

/-- `A010875(A047228(n+1))^A002264(n)` -/
def P12956596527210597500.Spec : Prop :=
  ∀ n, P12956596527210597500.a n = (A118263 n : ℚ)

end A118263

/-! ## A118263.P2816262415797218370

`(A047292(n+1)-A047354(n+1))^A002264(n)`
-/

namespace A118263.P2816262415797218370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047292 (n + 1) - A047354 (n + 1) : ℚ) ^ (A002264 n : ℤ)

end

end A118263.P2816262415797218370

namespace A118263

/-- `(A047292(n+1)-A047354(n+1))^A002264(n)` -/
def P2816262415797218370.Spec : Prop :=
  ∀ n, P2816262415797218370.a n = (A118263 n : ℚ)

end A118263

/-!
# A118264: Coefficient of q^n in (1-q)^3/(1-3q); dimensions of the enveloping algebra of the derived free Lie algebra on 3 letters.

The programs for A118264, the canonical program `A118264.P9931489737300910684` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118264 has offset 0).

The definition of A118264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118264.P4927977373648560449

`ogf((1-3x+3x^2-x^3)/(1-3x))`
-/

namespace A118264.P4927977373648560449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3, -1] [1, -3] n

end

end A118264.P4927977373648560449

namespace A118264

/-- `ogf((1-3x+3x^2-x^3)/(1-3x))` -/
def P4927977373648560449.Spec : Prop :=
  ∀ n, P4927977373648560449.a n = A118264 n

end A118264

/-! ## A118264.P9931489737300910684

`3*a(n-1)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=8`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A118264

/-- `3*a(n-1)` -/
def P9931489737300910684.Spec : Prop :=
  ∀ n, (P9931489737300910684.a n : ℤ) = A118264 n

theorem P9931489737300910684.correct : P9931489737300910684.Spec := by
  intro n
  simp only [A118264]

end A118264

/-! ## A118264.P8062453258878898582

`a(n-1)/sqrt(1/9)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=8`
-/

namespace A118264.P8062453258878898582
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 0, 3, 8] fun n a =>
  a (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

end

end A118264.P8062453258878898582

namespace A118264

/-- `a(n-1)/sqrt(1/9)` -/
def P8062453258878898582.Spec : Prop :=
  ∀ n, P8062453258878898582.a n = (A118264 n : ℝ)

end A118264

/-! ## A118264.P8240552525435767370

`a(n-1)+a(n-1)+a(n-1)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=8`
-/

namespace A118264.P8240552525435767370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3, 8] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 1))

end

end A118264.P8240552525435767370

namespace A118264

/-- `a(n-1)+a(n-1)+a(n-1)` -/
def P8240552525435767370.Spec : Prop :=
  ∀ n, (P8240552525435767370.a n : ℤ) = A118264 n

theorem P8240552525435767370.correct : P8240552525435767370.Spec := by
  intro n
  simp only [A118264, Nat.add_sub_cancel, A118264.P8240552525435767370.a, A118264.P9931489737300910684.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A118264

/-! ## A118264.P5691167686260771150

`lcm(Δ[A326339(n)], A326339(n))`
-/

namespace A118264.P5691167686260771150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326339 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A326339 n)

end

end A118264.P5691167686260771150

namespace A118264

/-- `lcm(Δ[A326339(n)], A326339(n))` -/
def P5691167686260771150.Spec : Prop :=
  ∀ n, (P5691167686260771150.a n : ℤ) = A118264 n

end A118264

/-! ## A118264.P8772308195053248667

`A052156(n)+A052156(n)-A257970(n+1)`
-/

namespace A118264.P8772308195053248667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 n + (A052156 n - A257970 (n + 1))

end

end A118264.P8772308195053248667

namespace A118264

/-- `A052156(n)+A052156(n)-A257970(n+1)` -/
def P8772308195053248667.Spec : Prop :=
  ∀ n, P8772308195053248667.a n = A118264 n

end A118264

/-! ## A118264.P11692536371840562771

`Δ[Δ[Δ[floor(3^(n-3))]]]`
-/

namespace A118264.P11692536371840562771
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118264.P11692536371840562771

namespace A118264

/-- `Δ[Δ[Δ[floor(3^(n-3))]]]` -/
def P11692536371840562771.Spec : Prop :=
  ∀ n, P11692536371840562771.a n = A118264 n

end A118264

/-! ## A118264.P14585944745171367842

`2*A052156(n)-A257970(n+1)`
-/

namespace A118264.P14585944745171367842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052156 n - A257970 (n + 1)

end

end A118264.P14585944745171367842

namespace A118264

/-- `2*A052156(n)-A257970(n+1)` -/
def P14585944745171367842.Spec : Prop :=
  ∀ n, P14585944745171367842.a n = A118264 n

end A118264

/-!
# A118265: Coefficient of q^n in (1-q)^4/(1-4q); dimensions of the enveloping algebra of the derived free Lie algebra on 4 letters.

The programs for A118265, the canonical program `A118265.P9438312334101439051` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118265 has offset 0).

The definition of A118265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118265.P14735302417348294157

`ogf((1-4x+6x^2-4x^3+x^4)/(1-4x))`
-/

namespace A118265.P14735302417348294157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 6, -4, 1] [1, -4] n

end

end A118265.P14735302417348294157

namespace A118265

/-- `ogf((1-4x+6x^2-4x^3+x^4)/(1-4x))` -/
def P14735302417348294157.Spec : Prop :=
  ∀ n, P14735302417348294157.a n = A118265 n

end A118265

/-! ## A118265.P9438312334101439051

`4*a(n-1)` with `a(0)=1, a(1)=0, a(2)=6, a(3)=20, a(4)=81`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A118265

/-- `4*a(n-1)` -/
def P9438312334101439051.Spec : Prop :=
  ∀ n, (P9438312334101439051.a n : ℤ) = A118265 n

theorem P9438312334101439051.correct : P9438312334101439051.Spec := by
  intro n
  simp only [A118265]

end A118265

/-! ## A118265.P5590555074388960320

`Δ[A077043(Δ[A098011(n+1)])]`
-/

namespace A118265.P5590555074388960320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118265.P5590555074388960320

namespace A118265

/-- `Δ[A077043(Δ[A098011(n+1)])]` -/
def P5590555074388960320.Spec : Prop :=
  ∀ n, P5590555074388960320.a n = A118265 n

end A118265

/-! ## A118265.P5067853880643059987

`Δ[A084684(Δ[A098011(n+1)])]`
-/

namespace A118265.P5067853880643059987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084684 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118265.P5067853880643059987

namespace A118265

/-- `Δ[A084684(Δ[A098011(n+1)])]` -/
def P5067853880643059987.Spec : Prop :=
  ∀ n, P5067853880643059987.a n = A118265 n

end A118265

/-! ## A118265.P18334922116938250747

`Δ[A331952(Δ[A098011(n+1)])]`
-/

namespace A118265.P18334922116938250747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331952 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118265.P18334922116938250747

namespace A118265

/-- `Δ[A331952(Δ[A098011(n+1)])]` -/
def P18334922116938250747.Spec : Prop :=
  ∀ n, P18334922116938250747.a n = A118265 n

end A118265

/-!
# A118266: Coefficient of q^n in (1-q)^5/(1-5q); dimensions of the enveloping algebra of the derived free Lie algebra on 5 letters.

The programs for A118266, there is no canonical definition to state claims against.
-/

/-! ## A118266.P15446216663580461183

`A046927(98*a(n-1)-a(n-2))+2` with `a(0)=1, a(1)=0, a(2)=10`
-/

namespace A118266.P15446216663580461183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 10] fun n a =>
  A046927 (98 * a (n - 1) - a (n - 2)).toNat + 2

end

end A118266.P15446216663580461183

/-!
# A118267: Number of partitions of n such that if the smallest part is k, then both k and k+1 occur exactly once.

The programs for A118267, there is no canonical definition to state claims against.
-/

/-! ## A118267.P2415802265832585133

`A008483(n+4)-A008484(n+5)`
-/

namespace A118267.P2415802265832585133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (n + 4) - A008484 (n + 5)

end

end A118267.P2415802265832585133

/-! ## A118267.P3158029118277176030

`Δ[abs(A195054(n+4))]`
-/

namespace A118267.P3158029118277176030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A195054 (n + 4)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118267.P3158029118277176030

/-! ## A118267.P415189746929699090

`Δ[A020639(2*(n+1))-A195054(n+4)]`
-/

namespace A118267.P415189746929699090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) - A195054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118267.P415189746929699090

/-! ## A118267.P552101265861925649

`Δ[A008683(4*(n+1))-A195054(n+4)]`
-/

namespace A118267.P552101265861925649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) - A195054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118267.P552101265861925649

/-! ## A118267.P16594670811514818974

`Δ[A027337(n+2)-A232697(n+4)]`
-/

namespace A118267.P16594670811514818974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 (n + 2) - A232697 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118267.P16594670811514818974

/-! ## A118267.P13437584466552715856

`A096373(n+2)-A002865(n)`
-/

namespace A118267.P13437584466552715856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096373 (n + 2) - A002865 n

end

end A118267.P13437584466552715856

/-! ## A118267.P11486912704440229309

`A096373(n+2)-A085811(n+3)`
-/

namespace A118267.P11486912704440229309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096373 (n + 2) - A085811 (n + 3)

end

end A118267.P11486912704440229309

/-! ## A118267.P3161564774829066077

`Δ[A007318(C(n, 2))-A195054(n+4)]`
-/

namespace A118267.P3161564774829066077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) - A195054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118267.P3161564774829066077

/-!
# A118268: a(0)= A118269(0) = 1. Place A118269(n) written in binary to end of sequence A118268 (with each binary digit entered separately and where '0' is appended to sequence if A118269(n) = 0). A118269(n) is number of times n written in binary occurs among the earlier terms (before A118269(n) in binary is added) of this sequence concatenated.

The programs for A118268, there is no canonical definition to state claims against.
-/

/-! ## A118268.P6521749220747400541

`A030308(A196218(n+1)*A326130(n+1))`
-/

namespace A118268.P6521749220747400541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A196218 (n + 1) * A326130 (n + 1)).toNat

end

end A118268.P6521749220747400541

/-! ## A118268.P9116665716334776068

`A010060(n*∑[A347737(n)]+n+1)`
-/

namespace A118268.P9116665716334776068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)).toNat

end

end A118268.P9116665716334776068

/-! ## A118268.P17488266690174919698

`A143220(eq[0, A011736(n)]%A316680(n+1))`
-/

namespace A118268.P17488266690174919698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143220 (Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A316680 (n + 1))).toNat

end

end A118268.P17488266690174919698

/-! ## A118268.P1508619279483065830

`A000041(A347740(3*n))%2`
-/

namespace A118268.P1508619279483065830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A347740 (3 * n)).toNat) 2

end

end A118268.P1508619279483065830

/-! ## A118268.P16277361298789914297

`A286990(A252656(n+1)-A320847(n))`
-/

namespace A118268.P16277361298789914297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286990 (A252656 (n + 1) - A320847 n).toNat

end

end A118268.P16277361298789914297

/-!
# A118269: See sequence A118268 for description.

The programs for A118269, there is no canonical definition to state claims against.
-/

/-! ## A118269.P10489830774905671983

`A210455(A270948(n))+char[∑[n]]`
-/

namespace A118269.P10489830774905671983
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210455 (A270948 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A118269.P10489830774905671983

/-! ## A118269.P436676333884347334

`A035214(n)-A011655(A033677(A104978(n)))`
-/

namespace A118269.P436676333884347334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n - A011655 (A033677 (A104978 n).toNat).toNat

end

end A118269.P436676333884347334

/-! ## A118269.P962119452234067

`A052409(A203330(n+1))*A143220(n)`
-/

namespace A118269.P962119452234067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A203330 (n + 1)).toNat * A143220 n

end

end A118269.P962119452234067

/-! ## A118269.P16180854145143508009

`A143220(n)*A272901(A053176(n+1))`
-/

namespace A118269.P16180854145143508009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143220 n * A272901 (A053176 (n + 1)).toNat

end

end A118269.P16180854145143508009

/-! ## A118269.P9284571968031846000

`A118268(n)*A152798(A089944(n))`
-/

namespace A118269.P9284571968031846000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118268 n * A152798 (A089944 n).toNat

end

end A118269.P9284571968031846000

/-!
# A118271: Expansion of (9 * theta_4(q^3)^4 - theta_4(q)^4) / 8 in powers of q.

The programs for A118271, there is no canonical definition to state claims against.
-/

/-! ## A118271.P7869379887542329620

`(-1)^n*A214456(n)`
-/

namespace A118271.P7869379887542329620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A214456 n

end

end A118271.P7869379887542329620

/-! ## A118271.P15811658077247924356

`A226139(n)/A010684(n)`
-/

namespace A118271.P15811658077247924356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226139 n : ℚ) / (A010684 n : ℚ)

end

end A118271.P15811658077247924356

/-! ## A118271.P833035561658459049

`A226139(n)/Δ[A042948(n)]`
-/

namespace A118271.P833035561658459049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226139 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A118271.P833035561658459049

/-! ## A118271.P13876123978529211355

`2*A214456(n)-A131943(n)`
-/

namespace A118271.P13876123978529211355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214456 n - A131943 n

end

end A118271.P13876123978529211355

/-! ## A118271.P11680011315105030729

`(A226139(n)+A214456(n))/2`
-/

namespace A118271.P11680011315105030729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226139 n + A214456 n : ℚ) / 2

end

end A118271.P11680011315105030729

/-! ## A118271.P14098861250412671218

`A226139(n)/(2-A033999(n))`
-/

namespace A118271.P14098861250412671218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226139 n : ℚ) / (2 - A033999 n : ℚ)

end

end A118271.P14098861250412671218

/-! ## A118271.P3907695834722784540

`A131943(n)-(A214456(n)-A226139(n))`
-/

namespace A118271.P3907695834722784540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131943 n - (A214456 n - A226139 n)

end

end A118271.P3907695834722784540

/-! ## A118271.P11407872693061711667

`A121443(n+1)/A124449(n+1)*A131943(n)`
-/

namespace A118271.P11407872693061711667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121443 (n + 1) : ℚ) / (A124449 (n + 1) : ℚ) * (A131943 n : ℚ)

end

end A118271.P11407872693061711667

/-! ## A118271.P13322252949634579982

`A226132(n+1)/A214361(n+1)*A131943(n)`
-/

namespace A118271.P13322252949634579982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226132 (n + 1) : ℚ) / (A214361 (n + 1) : ℚ) * (A131943 n : ℚ)

end

end A118271.P13322252949634579982

/-! ## A118271.P15667360513198469418

`2*A224225(n)-A224225(A005843(n))`
-/

namespace A118271.P15667360513198469418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A224225 n - A224225 (A005843 n).toNat

end

end A118271.P15667360513198469418

/-! ## A118271.P2085961112093589887

`A005843(A224225(n))-A224225(A005843(n))`
-/

namespace A118271.P2085961112093589887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A224225 n).toNat - A224225 (A005843 n).toNat

end

end A118271.P2085961112093589887

/-! ## A118271.P18350310591206513662

`A226139(n)/(3-A114525(∑[n]))`
-/

namespace A118271.P18350310591206513662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226139 n : ℚ) / (3 - A114525 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A118271.P18350310591206513662

/-! ## A118271.P17981136249495888370

`A226139(n)/(A114525(∑[n+1])+1)`
-/

namespace A118271.P17981136249495888370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226139 n : ℚ) / (A114525 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℚ)

end

end A118271.P17981136249495888370

/-! ## A118271.P4846299444242554180

`A214456(n)/A033999(n²)`
-/

namespace A118271.P4846299444242554180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214456 n : ℚ) / (A033999 (n ^ 2) : ℚ)

end

end A118271.P4846299444242554180

/-!
# A118272: Expansion of q^(-2/3) * (eta(q) * eta(q^3) * eta(q^6) / eta(q^2))^2 in powers of q.

The programs for A118272, there is no canonical definition to state claims against.
-/

/-! ## A118272.P2061377441148037761

`A096727(Δ[A005449(n)])/24`
-/

namespace A118272.P2061377441148037761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096727 (f1 (n + 1) - f1 n).toNat : ℚ) / 24

end

end A118272.P2061377441148037761

/-! ## A118272.P10563392375505553245

`A208435(4*n+2)`
-/

namespace A118272.P10563392375505553245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208435 (4 * n + 2)

end

end A118272.P10563392375505553245

/-! ## A118272.P1430764465622502969

`-A208457(4*n+2)`
-/

namespace A118272.P1430764465622502969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A208457 (4 * n + 2)

end

end A118272.P1430764465622502969

/-! ## A118272.P2255267472322049679

`A208435(A016825(n))%A016825(n)`
-/

namespace A118272.P2255267472322049679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208435 (A016825 n).toNat) (A016825 n)

end

end A118272.P2255267472322049679

/-! ## A118272.P11305964284679767636

`A057428(n+1)*A208457(Δ[A001105(n)])`
-/

namespace A118272.P11305964284679767636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) * A208457 (f1 (n + 1) - f1 n).toNat

end

end A118272.P11305964284679767636

/-! ## A118272.P13652175399434279644

`A008683(A151800(n))*A208457(A016825(n))`
-/

namespace A118272.P13652175399434279644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A151800 n).toNat * A208457 (A016825 n).toNat

end

end A118272.P13652175399434279644

/-! ## A118272.P8190018522626431167

`A249122(A176289(2*n+1))-A208457(4*n+2)`
-/

namespace A118272.P8190018522626431167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A176289 (2 * n + 1)).toNat - A208457 (4 * n + 2)

end

end A118272.P8190018522626431167

/-!
# A118274: Concatenate the terms of sequence A118275 written in binary. Each binary digit of the concatenated string is a separate term of sequence A118274.

The programs for A118274, there is no canonical definition to state claims against.
-/

/-! ## A118274.P4886631935252894812

`A260456(A154441(n)+A000009(2*n+1))`
-/

namespace A118274.P4886631935252894812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260456 (A154441 n + A000009 (2 * n + 1)).toNat

end

end A118274.P4886631935252894812

/-! ## A118274.P15152830541380019573

`A254113(A097248(A016116(n))*A241472(n+1))`
-/

namespace A118274.P15152830541380019573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254113 (A097248 (A016116 n).toNat * A241472 (n + 1)).toNat

end

end A118274.P15152830541380019573

/-! ## A118274.P18284657860947496682

`A011558(A136946(n+1)-A156707(n+1))`
-/

namespace A118274.P18284657860947496682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A136946 (n + 1) - A156707 (n + 1)).toNat

end

end A118274.P18284657860947496682

/-! ## A118274.P783420267018257372

`A070886(or(A003415(2*n+3), A260218(n+5)))`
-/

namespace A118274.P783420267018257372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070886 (Int.lor (A003415 (2 * n + 3)) (A260218 (n + 5))).toNat

end

end A118274.P783420267018257372

/-!
# A118276: Signature sequence of Phi^2 = 2.618033989... (A104457), where Phi is the golden ratio A001622.

The programs for A118276, there is no canonical definition to state claims against.
-/

/-! ## A118276.P2520760320287738810

`A023119(n+1)%A183133(n+3)`
-/

namespace A118276.P2520760320287738810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023119 (n + 1)) (A183133 (n + 3))

end

end A118276.P2520760320287738810

/-! ## A118276.P516654222659180240

`A060775(A000040(n+1)*A023119(n+1))`
-/

namespace A118276.P516654222659180240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (A000040 (n + 1) * A023119 (n + 1)).toNat

end

end A118276.P516654222659180240

/-! ## A118276.P12040050868991076056

`A025446(A371352(3*n+2))+A023119(n+1)`
-/

namespace A118276.P12040050868991076056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025446 (A371352 (3 * n + 2)).toNat + A023119 (n + 1)

end

end A118276.P12040050868991076056

/-! ## A118276.P15354453861673014838

`A023119(n+1)*A167851(A182983(n+1))`
-/

namespace A118276.P15354453861673014838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023119 (n + 1) * A167851 (A182983 (n + 1)).toNat

end

end A118276.P15354453861673014838

/-! ## A118276.P18382440347887724010

`A070138(A008288(n))+A023119(n+1)`
-/

namespace A118276.P18382440347887724010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070138 (A008288 n).toNat + A023119 (n + 1)

end

end A118276.P18382440347887724010

/-! ## A118276.P2926830322252502046

`A023119(n+1)+A000007(A238279(n))`
-/

namespace A118276.P2926830322252502046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023119 (n + 1) + A000007 (A238279 n).toNat

end

end A118276.P2926830322252502046

/-! ## A118276.P1066079373616026300

`A023119(n+1)*A167964(A074676(n+1))`
-/

namespace A118276.P1066079373616026300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023119 (n + 1) * A167964 (A074676 (n + 1)).toNat

end

end A118276.P1066079373616026300

/-! ## A118276.P582300602386864116

`A111859(A167287(n+1))+A023119(n+1)`
-/

namespace A118276.P582300602386864116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111859 (A167287 (n + 1)).toNat + A023119 (n + 1)

end

end A118276.P582300602386864116

/-! ## A118276.P17322236768536508453

`A023119(n+1)*A167964(A167286(n+1))`
-/

namespace A118276.P17322236768536508453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023119 (n + 1) * A167964 (A167286 (n + 1)).toNat

end

end A118276.P17322236768536508453

/-! ## A118276.P5565416967913257980

`and(A023119(n+1), A058000(n+1))`
-/

namespace A118276.P5565416967913257980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023119 (n + 1)) (A058000 (n + 1))

end

end A118276.P5565416967913257980

/-!
# A118277: Generalized 9-gonal (or enneagonal) numbers: m*(7*m - 5)/2 with m = 0, 1, -1, 2, -2, 3, -3, ...

The programs for A118277, the canonical program `A118277.P8525974266286933931` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118277 has offset 0).

The definition of A118277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118277.P70346340233056183

`∑[n*(3-ratio[gcd(2, n)])]`
-/

namespace A118277.P70346340233056183
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (3 - (f2 (n + 1) : ℚ) / (f2 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118277.P70346340233056183

namespace A118277

/-- `∑[n*(3-ratio[gcd(2, n)])]` -/
def P70346340233056183.Spec : Prop :=
  ∀ n, P70346340233056183.a n = (A118277 n : ℚ)

end A118277

/-! ## A118277.P6473309479629069700

`floor((comp[3*n]²-∑[n])/2)`
-/

namespace A118277.P6473309479629069700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℚ) / 2⌋

end

end A118277.P6473309479629069700

namespace A118277

/-- `floor((comp[3*n]²-∑[n])/2)` -/
def P6473309479629069700.Spec : Prop :=
  ∀ n, P6473309479629069700.a n = A118277 n

end A118277

/-! ## A118277.P8525974266286933931

`floor(7*(n/2)²)-a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A118277

/-- `floor(7*(n/2)²)-a(n-1)` -/
def P8525974266286933931.Spec : Prop :=
  ∀ n, P8525974266286933931.a n = A118277 n

theorem P8525974266286933931.correct : P8525974266286933931.Spec := by
  intro n
  simp only [A118277]

end A118277

/-! ## A118277.P6973859896939143283

`∑[2*a(n-2)-a(n-4)]` with `a(0)=0, a(1)=1, a(2)=5, a(3)=3`
-/

namespace A118277.P6973859896939143283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 3] fun n f1 =>
  2 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118277.P6973859896939143283

namespace A118277

/-- `∑[2*a(n-2)-a(n-4)]` -/
def P6973859896939143283.Spec : Prop :=
  ∀ n, P6973859896939143283.a n = A118277 n

end A118277

/-! ## A118277.P4882432767947267985

`∑[a(n-2)-(a(n-4)-a(n-2))]` with `a(0)=0, a(1)=1, a(2)=5, a(3)=3`
-/

namespace A118277.P4882432767947267985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 3] fun n f1 =>
  f1 (n - 2) - (f1 (n - 4) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118277.P4882432767947267985

namespace A118277

/-- `∑[a(n-2)-(a(n-4)-a(n-2))]` -/
def P4882432767947267985.Spec : Prop :=
  ∀ n, P4882432767947267985.a n = A118277 n

end A118277

/-! ## A118277.P17829541184392933675

`∑[A195140(n)]`
-/

namespace A118277.P17829541184392933675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118277.P17829541184392933675

namespace A118277

/-- `∑[A195140(n)]` -/
def P17829541184392933675.Spec : Prop :=
  ∀ n, P17829541184392933675.a n = A118277 n

end A118277

/-! ## A118277.P8959362144824752669

`(A195162(n)+∑[n])/2`
-/

namespace A118277.P8959362144824752669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195162 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2

end

end A118277.P8959362144824752669

namespace A118277

/-- `(A195162(n)+∑[n])/2` -/
def P8959362144824752669.Spec : Prop :=
  ∀ n, P8959362144824752669.a n = (A118277 n : ℚ)

end A118277

/-! ## A118277.P9216118477196304349

`(A057780(n+1)-∑[n])/2`
-/

namespace A118277.P9216118477196304349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057780 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2

end

end A118277.P9216118477196304349

namespace A118277

/-- `(A057780(n+1)-∑[n])/2` -/
def P9216118477196304349.Spec : Prop :=
  ∀ n, P9216118477196304349.a n = (A118277 n : ℚ)

end A118277

/-! ## A118277.P10387961794884526105

`A110660(n)+A085787(n)`
-/

namespace A118277.P10387961794884526105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n + A085787 n

end

end A118277.P10387961794884526105

namespace A118277

/-- `A110660(n)+A085787(n)` -/
def P10387961794884526105.Spec : Prop :=
  ∀ n, P10387961794884526105.a n = A118277 n

end A118277

/-! ## A118277.P9459858200124259775

`A165157(n)+A032438(n)`
-/

namespace A118277.P9459858200124259775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165157 n + A032438 n

end

end A118277.P9459858200124259775

namespace A118277

/-- `A165157(n)+A032438(n)` -/
def P9459858200124259775.Spec : Prop :=
  ∀ n, P9459858200124259775.a n = A118277 n

end A118277

/-! ## A118277.P11839645446895231840

`A195014(n)+A131805(n)`
-/

namespace A118277.P11839645446895231840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195014 n + A131805 n

end

end A118277.P11839645446895231840

namespace A118277

/-- `A195014(n)+A131805(n)` -/
def P11839645446895231840.Spec : Prop :=
  ∀ n, P11839645446895231840.a n = A118277 n

end A118277

/-! ## A118277.P8117134413672727287

`A210978(n)+A142150(n)`
-/

namespace A118277.P8117134413672727287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210978 n + A142150 n

end

end A118277.P8117134413672727287

namespace A118277

/-- `A210978(n)+A142150(n)` -/
def P8117134413672727287.Spec : Prop :=
  ∀ n, P8117134413672727287.a n = A118277 n

end A118277

/-! ## A118277.P7586161052077470937

`A210981(n)-A002620(n)`
-/

namespace A118277.P7586161052077470937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210981 n - A002620 n

end

end A118277.P7586161052077470937

namespace A118277

/-- `A210981(n)-A002620(n)` -/
def P7586161052077470937.Spec : Prop :=
  ∀ n, P7586161052077470937.a n = A118277 n

end A118277

/-! ## A118277.P17917843718416760199

`A195160(n)-A110660(n)`
-/

namespace A118277.P17917843718416760199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195160 n - A110660 n

end

end A118277.P17917843718416760199

namespace A118277

/-- `A195160(n)-A110660(n)` -/
def P17917843718416760199.Spec : Prop :=
  ∀ n, P17917843718416760199.a n = A118277 n

end A118277

/-! ## A118277.P16639753115897568268

`A032528(n)-A338544(n)`
-/

namespace A118277.P16639753115897568268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n - A338544 n

end

end A118277.P16639753115897568268

namespace A118277

/-- `A032528(n)-A338544(n)` -/
def P16639753115897568268.Spec : Prop :=
  ∀ n, P16639753115897568268.a n = A118277 n

end A118277

/-! ## A118277.P794012948595714928

`A210982(n)-A211539(n)`
-/

namespace A118277.P794012948595714928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210982 n - A211539 n

end

end A118277.P794012948595714928

namespace A118277

/-- `A210982(n)-A211539(n)` -/
def P794012948595714928.Spec : Prop :=
  ∀ n, P794012948595714928.a n = A118277 n

end A118277

/-! ## A118277.P11162744263232580199

`A152749(n)-A317301(n)`
-/

namespace A118277.P11162744263232580199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152749 n - A317301 n

end

end A118277.P11162744263232580199

namespace A118277

/-- `A152749(n)-A317301(n)` -/
def P11162744263232580199.Spec : Prop :=
  ∀ n, P11162744263232580199.a n = A118277 n

end A118277

/-! ## A118277.P10013301413188121285

`A247643(n)-A319390(n)`
-/

namespace A118277.P10013301413188121285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247643 n - A319390 n

end

end A118277.P10013301413188121285

namespace A118277

/-- `A247643(n)-A319390(n)` -/
def P10013301413188121285.Spec : Prop :=
  ∀ n, P10013301413188121285.a n = A118277 n

end A118277

/-! ## A118277.P8736426645240688945

`∪[A001106(n), A179986(n)]`
-/

namespace A118277.P8736426645240688945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179986 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A118277.P8736426645240688945

namespace A118277

/-- `∪[A001106(n), A179986(n)]` -/
def P8736426645240688945.Spec : Prop :=
  ∀ n, (P8736426645240688945.a n : ℤ) = A118277 n

end A118277

/-! ## A118277.P4729717425914858971

`A274830(n+1)+A130472(n)`
-/

namespace A118277.P4729717425914858971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274830 (n + 1) + A130472 n

end

end A118277.P4729717425914858971

namespace A118277

/-- `A274830(n+1)+A130472(n)` -/
def P4729717425914858971.Spec : Prop :=
  ∀ n, P4729717425914858971.a n = A118277 n

end A118277

/-!
# A118280: Conjectured largest number that is not the sum of three (2n+1)-gonal numbers; bisection of A118278.

The programs for A118280, there is no canonical definition to state claims against.
-/

/-! ## A118280.P9294864351088068203

`A118278(2*n+3)`
-/

namespace A118280.P9294864351088068203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118278 (2 * n + 3)

end

end A118280.P9294864351088068203

/-! ## A118280.P17499244723937960887

`abs(A118278(Δ[(n+1)²]))`
-/

namespace A118280.P17499244723937960887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118278 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A118280.P17499244723937960887

/-! ## A118280.P6760549521045787065

`record[A118278(n+3)^(-1)^n]`
-/

namespace A118280.P6760549521045787065
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118278 (n + 3) : ℚ) ^ ((-1) ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118280.P6760549521045787065

/-! ## A118280.P12126709437662297795

`record[A118278(A133265(n)+1)]`
-/

namespace A118280.P12126709437662297795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118278 (A133265 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118280.P12126709437662297795

/-! ## A118280.P12871824941315304985

`record[A118278(A341729(n+3))]`
-/

namespace A118280.P12871824941315304985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118278 (A341729 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118280.P12871824941315304985

/-!
# A118281: Conjectured number of numbers that are not the sum of three (2n+1)-gonal numbers; bisection of A118279.

The programs for A118281, there is no canonical definition to state claims against.
-/

/-! ## A118281.P16485190656119206382

`A118279(2*n+3)`
-/

namespace A118281.P16485190656119206382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118279 (2 * n + 3)

end

end A118281.P16485190656119206382

/-! ## A118281.P17848533671598972035

`abs(A118279(Δ[(n+1)²]))`
-/

namespace A118281.P17848533671598972035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118279 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A118281.P17848533671598972035

/-! ## A118281.P10264666268911971815

`record[lcm(and(1, n), A118279(n+4))]`
-/

namespace A118281.P10264666268911971815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.land 1 n : ℤ) (A118279 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118281.P10264666268911971815

/-! ## A118281.P18280578013777138885

`record[A118279(n+3)^(-1)^n]`
-/

namespace A118281.P18280578013777138885
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118279 (n + 3) : ℚ) ^ ((-1) ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118281.P18280578013777138885

/-! ## A118281.P15739620065601161731

`record[A118279(comp[or(n, n+3)]+3)]`
-/

namespace A118281.P15739620065601161731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 3)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118279 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118281.P15739620065601161731

/-!
# A118282: Conjectured largest number that is not the sum of three generalized n-gonal numbers, or -1 if there is no largest number.

The programs for A118282, there is no canonical definition to state claims against.
-/

/-! ## A118282.P5031915477869857868

`A035327(abs(C(n, 2)!-(n+1)))-1`
-/

namespace A118282.P5031915477869857868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 |(Nat.factorial (Nat.choose n 2) : ℤ) - (n + 1 : ℤ)|.toNat - 1

end

end A118282.P5031915477869857868

/-!
# A118284: Conjectured largest number that is not the sum of three generalized (2n+1)-gonal numbers; bisection of A118282.

The programs for A118284, there is no canonical definition to state claims against.
-/

/-! ## A118284.P549893701349808051

`A118282(2*n+3)`
-/

namespace A118284.P549893701349808051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118282 (2 * n + 3)

end

end A118284.P549893701349808051

/-! ## A118284.P4624664785660263155

`abs(A118282(Δ[(n+1)²]))`
-/

namespace A118284.P4624664785660263155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118282 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A118284.P4624664785660263155

/-! ## A118284.P603277506705707670

`A324731(n+1)+A118282(A004273(n+2))`
-/

namespace A118284.P603277506705707670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324731 (n + 1) + A118282 (A004273 (n + 2)).toNat

end

end A118284.P603277506705707670

/-!
# A118285: Conjectured number of numbers that are not the sum of three generalized (2n+1)-gonal numbers; bisection of A118283.

The programs for A118285, there is no canonical definition to state claims against.
-/

/-! ## A118285.P1368432486968443328

`A118283(2*n+3)`
-/

namespace A118285.P1368432486968443328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118283 (2 * n + 3)

end

end A118285.P1368432486968443328

/-! ## A118285.P14985772588205836202

`abs(A118283(Δ[(n+1)²]))`
-/

namespace A118285.P14985772588205836202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118283 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A118285.P14985772588205836202

/-! ## A118285.P9345649448055579340

`A118283(A004273(n+2))%A014787(n)`
-/

namespace A118285.P9345649448055579340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118283 (A004273 (n + 2)).toNat) (A014787 n)

end

end A118285.P9345649448055579340

/-! ## A118285.P10745131957562249972

`lcm(A118283(A004273(n+2)), A260196(n))`
-/

namespace A118285.P10745131957562249972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A118283 (A004273 (n + 2)).toNat) (A260196 n)

end

end A118285.P10745131957562249972

/-!
# A118286: Numbers n such that n == 0 (mod 4) or n == 2 (mod 12).

The programs for A118286, the canonical program `A118286.P12890573738190486029` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118286 has offset 1).

The definition of A118286 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118286.P12890573738190486029

`2*A047237(n+2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A118286

/-- `2*A047237(n+2)` -/
def P12890573738190486029.Spec : Prop :=
  ∀ n, P12890573738190486029.a n = A118286 (n + 1)

theorem P12890573738190486029.correct : P12890573738190486029.Spec := by
  intro n
  simp only [A118286, Nat.add_sub_cancel]

end A118286

/-! ## A118286.P12387923353017464502

`∑[and(2, n)+2]`
-/

namespace A118286.P12387923353017464502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118286.P12387923353017464502

namespace A118286

/-- `∑[and(2, n)+2]` -/
def P12387923353017464502.Spec : Prop :=
  ∀ n, (P12387923353017464502.a n : ℤ) = A118286 (n + 1)

end A118286

/-! ## A118286.P10878072691343832176

`∑[or(n, -3)+5]`
-/

namespace A118286.P10878072691343832176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-3) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118286.P10878072691343832176

namespace A118286

/-- `∑[or(n, -3)+5]` -/
def P10878072691343832176.Spec : Prop :=
  ∀ n, P10878072691343832176.a n = A118286 (n + 1)

end A118286

/-! ## A118286.P12590895786964961033

`∑[2*and(2, n)!]`
-/

namespace A118286.P12590895786964961033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial (Nat.land 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118286.P12590895786964961033

namespace A118286

/-- `∑[2*and(2, n)!]` -/
def P12590895786964961033.Spec : Prop :=
  ∀ n, (P12590895786964961033.a n : ℤ) = A118286 (n + 1)

end A118286

/-! ## A118286.P3458725074775024209

`∑[2^and(2, n)!]`
-/

namespace A118286.P3458725074775024209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.factorial (Nat.land 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118286.P3458725074775024209

namespace A118286

/-- `∑[2^and(2, n)!]` -/
def P3458725074775024209.Spec : Prop :=
  ∀ n, (P3458725074775024209.a n : ℤ) = A118286 (n + 1)

end A118286

/-! ## A118286.P11358249801394204201

`∑[4-and(2, n-2)]`
-/

namespace A118286.P11358249801394204201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - Int.land 2 ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118286.P11358249801394204201

namespace A118286

/-- `∑[4-and(2, n-2)]` -/
def P11358249801394204201.Spec : Prop :=
  ∀ n, P11358249801394204201.a n = A118286 (n + 1)

end A118286

/-! ## A118286.P443812391294865885

`∑[xor(2, 3*and(2, n))]`
-/

namespace A118286.P443812391294865885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (3 * Nat.land 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118286.P443812391294865885

namespace A118286

/-- `∑[xor(2, 3*and(2, n))]` -/
def P443812391294865885.Spec : Prop :=
  ∀ n, (P443812391294865885.a n : ℤ) = A118286 (n + 1)

end A118286

/-! ## A118286.P632262013650337594

`∑[4-or(2, n)+n]`
-/

namespace A118286.P632262013650337594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (Nat.lor 2 n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118286.P632262013650337594

namespace A118286

/-- `∑[4-or(2, n)+n]` -/
def P632262013650337594.Spec : Prop :=
  ∀ n, P632262013650337594.a n = A118286 (n + 1)

end A118286

/-! ## A118286.P8559247958295984448

`∑[4-(or(2, n)-n)]`
-/

namespace A118286.P8559247958295984448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ((Nat.lor 2 n : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118286.P8559247958295984448

namespace A118286

/-- `∑[4-(or(2, n)-n)]` -/
def P8559247958295984448.Spec : Prop :=
  ∀ n, P8559247958295984448.a n = A118286 (n + 1)

end A118286

/-! ## A118286.P17767502465220410392

`∑[gcd(2, n)+n%4]`
-/

namespace A118286.P17767502465220410392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + n % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118286.P17767502465220410392

namespace A118286

/-- `∑[gcd(2, n)+n%4]` -/
def P17767502465220410392.Spec : Prop :=
  ∀ n, (P17767502465220410392.a n : ℤ) = A118286 (n + 1)

end A118286

/-! ## A118286.P1163983906769075197

`∑[6-a(n-2)]` with `a(0)=2, a(1)=2`
-/

namespace A118286.P1163983906769075197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  6 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118286.P1163983906769075197

namespace A118286

/-- `∑[6-a(n-2)]` -/
def P1163983906769075197.Spec : Prop :=
  ∀ n, P1163983906769075197.a n = A118286 (n + 1)

end A118286

/-! ## A118286.P12293171149845695935

`∑[gcd(4, ∑[2*(1-n)])]`
-/

namespace A118286.P12293171149845695935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 - (n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118286.P12293171149845695935

namespace A118286

/-- `∑[gcd(4, ∑[2*(1-n)])]` -/
def P12293171149845695935.Spec : Prop :=
  ∀ n, (P12293171149845695935.a n : ℤ) = A118286 (n + 1)

end A118286

/-! ## A118286.P2411914886463807833

`∑[(n²-n)%4+2]`
-/

namespace A118286.P2411914886463807833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - (n : ℤ)) 4 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118286.P2411914886463807833

namespace A118286

/-- `∑[(n²-n)%4+2]` -/
def P2411914886463807833.Spec : Prop :=
  ∀ n, P2411914886463807833.a n = A118286 (n + 1)

end A118286

/-! ## A118286.P7965130446126618484

`∑[2-(n-n²)%4]`
-/

namespace A118286.P7965130446126618484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod ((n : ℤ) - (n ^ 2 : ℤ)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118286.P7965130446126618484

namespace A118286

/-- `∑[2-(n-n²)%4]` -/
def P7965130446126618484.Spec : Prop :=
  ∀ n, P7965130446126618484.a n = A118286 (n + 1)

end A118286

/-! ## A118286.P18167106723084746963

`∑[3-(-1)^floor(n/2)]`
-/

namespace A118286.P18167106723084746963
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 - (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118286.P18167106723084746963

namespace A118286

/-- `∑[3-(-1)^floor(n/2)]` -/
def P18167106723084746963.Spec : Prop :=
  ∀ n, P18167106723084746963.a n = (A118286 (n + 1) : ℚ)

end A118286

/-! ## A118286.P8607193882988871513

`a(n-4)+12` with `a(0)=2, a(1)=4, a(2)=8, a(3)=12`
-/

namespace A118286.P8607193882988871513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 8, 12] fun n a =>
  a (n - 4) + 12

end

end A118286.P8607193882988871513

namespace A118286

/-- `a(n-4)+12` -/
def P8607193882988871513.Spec : Prop :=
  ∀ n, (P8607193882988871513.a n : ℤ) = A118286 (n + 1)

end A118286

/-! ## A118286.P3288437183998895065

`ogf((2+4x^2)/(1-2x+2x^2-2x^3+x^4))`
-/

namespace A118286.P3288437183998895065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 4] [1, -2, 2, -2, 1] n

end

end A118286.P3288437183998895065

namespace A118286

/-- `ogf((2+4x^2)/(1-2x+2x^2-2x^3+x^4))` -/
def P3288437183998895065.Spec : Prop :=
  ∀ n, P3288437183998895065.a n = A118286 (n + 1)

end A118286

/-! ## A118286.P5814926235409196600

`6*n-2-a(n-2)` with `a(0)=2, a(1)=4`
-/

namespace A118286.P5814926235409196600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  (6 * n : ℤ) - 2 - a (n - 2)

end

end A118286.P5814926235409196600

namespace A118286

/-- `6*n-2-a(n-2)` -/
def P5814926235409196600.Spec : Prop :=
  ∀ n, P5814926235409196600.a n = A118286 (n + 1)

end A118286

/-! ## A118286.P14233660779591999555

`eq[n-2, lcm(n-2, (n+1)%4)]`
-/

namespace A118286.P14233660779591999555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 2) (((n + 1) % 4 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A118286.P14233660779591999555

namespace A118286

/-- `eq[n-2, lcm(n-2, (n+1)%4)]` -/
def P14233660779591999555.Spec : Prop :=
  ∀ n, (P14233660779591999555.a n : ℤ) = A118286 (n + 1)

end A118286

/-! ## A118286.P1624096207053143621

`and(2*n+1, or(n, -4))+n+2`
-/

namespace A118286.P1624096207053143621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) (Int.lor (n : ℤ) (-4)) + (n + 2 : ℤ)

end

end A118286.P1624096207053143621

namespace A118286

/-- `and(2*n+1, or(n, -4))+n+2` -/
def P1624096207053143621.Spec : Prop :=
  ∀ n, P1624096207053143621.a n = A118286 (n + 1)

end A118286

/-!
# A118290: a(1) = 1. a(n) = number of terms among the sequence's first (n-1) terms which are divisible by the smallest prime dividing a(n-1), or which are divisible by 1 if a(n-1)= 1.

The programs for A118290, there is no canonical definition to state claims against.
-/

/-! ## A118290.P13338576650572913524

`A257992(A117189(A247504(n)))+A118291(n+1)`
-/

namespace A118290.P13338576650572913524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A117189 (A247504 n).toNat).toNat + A118291 (n + 1)

end

end A118290.P13338576650572913524

/-! ## A118290.P18202201669230964810

`A002024(A351241(n+1))*A118291(n+1)`
-/

namespace A118290.P18202201669230964810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A351241 (n + 1)).toNat * A118291 (n + 1)

end

end A118290.P18202201669230964810

/-! ## A118290.P2437046067507234943

`A118291(n+1)*A341392(A185213(n))`
-/

namespace A118290.P2437046067507234943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118291 (n + 1) * A341392 (A185213 n).toNat

end

end A118290.P2437046067507234943

/-! ## A118290.P16119745844325763136

`A118291(A043318(n+1))`
-/

namespace A118290.P16119745844325763136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118291 (A043318 (n + 1)).toNat

end

end A118290.P16119745844325763136

/-!
# A118291: a(1) = 1. a(n) = number of terms among the sequence's first (n-1) terms which are divisible by the largest prime dividing a(n-1), or which are divisible by 1 if a(n-1)= 1.

The programs for A118291, there is no canonical definition to state claims against.
-/

/-! ## A118291.P1475531832167569055

`gcd(A112316(A006518(n)), A118290(n+1))`
-/

namespace A118291.P1475531832167569055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112316 (A006518 n).toNat) (A118290 (n + 1))

end

end A118291.P1475531832167569055

/-! ## A118291.P7759165784214584584

`and(A118290(n+1), A233583(A337386(n+1)))`
-/

namespace A118291.P7759165784214584584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118290 (n + 1)) (A233583 (A337386 (n + 1)).toNat)

end

end A118291.P7759165784214584584

/-! ## A118291.P356674385334884664

`gcd(4*n, A118290(A187829(n+1)))`
-/

namespace A118291.P356674385334884664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 * n : ℤ) (A118290 (A187829 (n + 1)).toNat)

end

end A118291.P356674385334884664

/-! ## A118291.P3053011353499170720

`A118290(n+1)/A341392(A185213(n))`
-/

namespace A118291.P3053011353499170720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118290 (n + 1) : ℚ) / (A341392 (A185213 n).toNat : ℚ)

end

end A118291.P3053011353499170720

/-!
# A118293: Start with 18 and repeatedly reverse the digits and add 1 to get the next term.

The programs for A118293, there is no canonical definition to state claims against.
-/

/-! ## A118293.P3613391023130357026

`A004086(a(n-1))+1` with `a(0)=18`
-/

namespace A118293.P3613391023130357026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [18] fun n a =>
  A004086 (a (n - 1)).toNat + 1

end

end A118293.P3613391023130357026

/-!
# A118294: Start with 19 and repeatedly reverse the digits and add 1 to get the next term.

The programs for A118294, there is no canonical definition to state claims against.
-/

/-! ## A118294.P3448580321772000458

`A004086(a(n-1))+1` with `a(0)=19`
-/

namespace A118294.P3448580321772000458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [19] fun n a =>
  A004086 (a (n - 1)).toNat + 1

end

end A118294.P3448580321772000458

/-!
# A118295: Start with 20 and repeatedly reverse the digits and add 1 to get the next term.

The programs for A118295, the canonical program `A118295.P17410457497328109947` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118295 has offset 1).

The definition of A118295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118295.P17410457497328109947

`dr(a(n-1))+1` with `a(0)=20`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A118295

/-- `dr(a(n-1))+1` -/
def P17410457497328109947.Spec : Prop :=
  ∀ n, (P17410457497328109947.a n : ℤ) = A118295 (n + 1)

theorem P17410457497328109947.correct : P17410457497328109947.Spec := by
  intro n
  simp only [A118295, Nat.add_sub_cancel]

end A118295

/-!
# A118296: Start with 21 and repeatedly reverse the digits and add 1 to get the next term.

The programs for A118296, there is no canonical definition to state claims against.
-/

/-! ## A118296.P1294414467119766348

`A004086(a(n-1))+1` with `a(0)=21`
-/

namespace A118296.P1294414467119766348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [21] fun n a =>
  A004086 (a (n - 1)).toNat + 1

end

end A118296.P1294414467119766348

/-!
# A118297: Start with 22 and repeatedly reverse the digits and add 1 to get the next term.

The programs for A118297, there is no canonical definition to state claims against.
-/

/-! ## A118297.P16946736384440783566

`A004086(a(n-1))+1` with `a(0)=22`
-/

namespace A118297.P16946736384440783566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [22] fun n a =>
  A004086 (a (n - 1)).toNat + 1

end

end A118297.P16946736384440783566

/-!
# A118298: Start with 23 and repeatedly reverse the digits and add 1 to get the next term.

The programs for A118298, there is no canonical definition to state claims against.
-/

/-! ## A118298.P13108293691814456298

`A118297(n+2)`
-/

namespace A118298.P13108293691814456298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118297 (n + 2)

end

end A118298.P13108293691814456298

/-!
# A118299: Start with 24 and repeatedly reverse the digits and add 1 to get the next term.

The programs for A118299, there is no canonical definition to state claims against.
-/

/-! ## A118299.P6228251025015652382

`A004086(a(n-1))+1` with `a(0)=24`
-/

namespace A118299.P6228251025015652382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [24] fun n a =>
  A004086 (a (n - 1)).toNat + 1

end

end A118299.P6228251025015652382

