import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C032
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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

/-!
# A270300: Numbers which are representable as a sum of thirteen but no fewer consecutive nonnegative integers.

The programs for A270300, there is no canonical definition to state claims against.
-/

/-! ## A270300.P1379813269400939973

`A008590(eq[13, A252358(n)])`
-/

namespace A270300.P1379813269400939973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270300.P1379813269400939973

/-! ## A270300.P17649922589677755827

`A022144(eq[13, A252358(n)])`
-/

namespace A270300.P17649922589677755827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270300.P17649922589677755827

/-! ## A270300.P14499979422791848425

`A234275(eq[13, A252358(n)])`
-/

namespace A270300.P14499979422791848425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270300.P14499979422791848425

/-! ## A270300.P16791939861913464996

`eq[13, A163169(n)]`
-/

namespace A270300.P16791939861913464996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163169 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270300.P16791939861913464996

/-! ## A270300.P4915103249690994943

`eq[13, A259111(A028310(n))]`
-/

namespace A270300.P4915103249690994943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259111 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270300.P4915103249690994943

/-!
# A270301: Numbers which are representable as a sum of sixteen but no fewer consecutive nonnegative integers.

The programs for A270301, the canonical program `A270301.P17533543848909741744` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270301 has offset 1).

The definition of A270301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270301.P17533543848909741744

`8*A008366(n+2)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A270301

/-- `8*A008366(n+2)` -/
def P17533543848909741744.Spec : Prop :=
  ∀ n, P17533543848909741744.a n = A270301 (n + 1)

theorem P17533543848909741744.correct : P17533543848909741744.Spec := by
  intro n
  simp only [A270301, Nat.add_sub_cancel]

end A270301

/-! ## A270301.P10849559090267935697

`lcm(8, A008366(A020725(n+1)))`
-/

namespace A270301.P10849559090267935697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (A008366 (A020725 (n + 1)).toNat)

end

end A270301.P10849559090267935697

namespace A270301

/-- `lcm(8, A008366(A020725(n+1)))` -/
def P10849559090267935697.Spec : Prop :=
  ∀ n, (P10849559090267935697.a n : ℤ) = A270301 (n + 1)

end A270301

/-! ## A270301.P17386984284050840884

`A008590(A008366(n+2))`
-/

namespace A270301.P17386984284050840884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A008366 (n + 2)).toNat

end

end A270301.P17386984284050840884

namespace A270301

/-- `A008590(A008366(n+2))` -/
def P17386984284050840884.Spec : Prop :=
  ∀ n, P17386984284050840884.a n = A270301 (n + 1)

end A270301

/-! ## A270301.P1920663394198209175

`A008574(A008366(n+2)+A008366(n+2))`
-/

namespace A270301.P1920663394198209175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A008366 (n + 2) + A008366 (n + 2)).toNat

end

end A270301.P1920663394198209175

namespace A270301

/-- `A008574(A008366(n+2)+A008366(n+2))` -/
def P1920663394198209175.Spec : Prop :=
  ∀ n, P1920663394198209175.a n = A270301 (n + 1)

end A270301

/-! ## A270301.P4718279342683777806

`A042948(lcm(4, A008366(n+2)))`
-/

namespace A270301.P4718279342683777806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (Int.lcm 4 (A008366 (n + 2)))

end

end A270301.P4718279342683777806

namespace A270301

/-- `A042948(lcm(4, A008366(n+2)))` -/
def P4718279342683777806.Spec : Prop :=
  ∀ n, P4718279342683777806.a n = A270301 (n + 1)

end A270301

/-! ## A270301.P13009294597009859321

`eq[A010153(n), A163169(n)]`
-/

namespace A270301.P13009294597009859321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163169 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270301.P13009294597009859321

namespace A270301

/-- `eq[A010153(n), A163169(n)]` -/
def P13009294597009859321.Spec : Prop :=
  ∀ n, (P13009294597009859321.a n : ℤ) = A270301 (n + 1)

end A270301

/-! ## A270301.P17907109505980713474

`A362739(A332799(n+2))`
-/

namespace A270301.P17907109505980713474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362739 (A332799 (n + 2)).toNat

end

end A270301.P17907109505980713474

namespace A270301

/-- `A362739(A332799(n+2))` -/
def P17907109505980713474.Spec : Prop :=
  ∀ n, P17907109505980713474.a n = A270301 (n + 1)

end A270301

/-!
# A270302: Numbers which are representable as a sum of seventeen but no fewer consecutive nonnegative integers.

The programs for A270302, there is no canonical definition to state claims against.
-/

/-! ## A270302.P13882835430946374792

`8*A018510(n+8)`
-/

namespace A270302.P13882835430946374792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A018510 (n + 8)

end

end A270302.P13882835430946374792

/-!
# A270303: Numbers which are representable as a sum of nineteen but no fewer consecutive nonnegative integers.

The programs for A270303, there is no canonical definition to state claims against.
-/

/-! ## A270303.P10164300150214702172

`filter[A110288(n), A144612(#)]`
-/

namespace A270303.P10164300150214702172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144612 (f1 j).toNat = 1) n)

end

end A270303.P10164300150214702172

/-!
# A270305: Magic sums of 3 X 3 magic squares composed of consecutive primes.

The programs for A270305, there is no canonical definition to state claims against.
-/

/-! ## A270305.P5630987949206711999

`3*A166113(n+1)`
-/

namespace A270305.P5630987949206711999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A166113 (n + 1)

end

end A270305.P5630987949206711999

/-! ## A270305.P11963997634668529446

`3*A256891(n+1)+9*A343194(n+1)+3*A343195(n+1)`
-/

namespace A270305.P11963997634668529446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A256891 (n + 1) + 9 * A343194 (n + 1) + 3 * A343195 (n + 1)

end

end A270305.P11963997634668529446

/-! ## A270305.P15760136332421737826

`lcm(3, A166113(A000027(n+1)))`
-/

namespace A270305.P15760136332421737826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A166113 (A000027 (n + 1)).toNat)

end

end A270305.P15760136332421737826

/-! ## A270305.P4355858710922355557

`lcm(A166113(n+1), A174971(n))`
-/

namespace A270305.P4355858710922355557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A166113 (n + 1)) (A174971 n)

end

end A270305.P4355858710922355557

/-! ## A270305.P14470581834415386771

`lcm(3, A166113(A077168(n)))`
-/

namespace A270305.P14470581834415386771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A166113 (A077168 n).toNat)

end

end A270305.P14470581834415386771

/-!
# A270307: Expansion of -(4*x^3+8*x^2+4*x+1)/(2*x^4+4*x^3+2*x^2-x-1).

The programs for A270307, the canonical program `A270307.P6454519374419731181` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270307 has offset 0).

The definition of A270307 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x+8x^2+4x^3)/(1+x-2x^2-4x^3-2x^4))` (program `A270307.P6454519374419731181`, by `A270307.P6454519374419731181.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A270307.P6454519374419731181

`ogf((1+4x+8x^2+4x^3)/(1+x-2x^2-4x^3-2x^4))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A270307

/-- `ogf((1+4x+8x^2+4x^3)/(1+x-2x^2-4x^3-2x^4))` -/
def P6454519374419731181.Spec : Prop :=
  ∀ n, P6454519374419731181.a n = A270307 n

theorem P6454519374419731181.correct : P6454519374419731181.Spec := by
  intro n
  simp only [A270307]

end A270307

/-! ## A270307.P12800223895494073135

`A191697(n+1)+A033999(n)`
-/

namespace A270307.P12800223895494073135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191697 (n + 1) + A033999 n

end

end A270307.P12800223895494073135

namespace A270307

/-- `A191697(n+1)+A033999(n)` -/
def P12800223895494073135.Spec : Prop :=
  ∀ n, P12800223895494073135.a n = A270307 n

end A270307

/-! ## A270307.P13888185684982814452

`A191697(n+1)-A105812(n+2)`
-/

namespace A270307.P13888185684982814452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191697 (n + 1) - A105812 (n + 2)

end

end A270307.P13888185684982814452

namespace A270307

/-- `A191697(n+1)-A105812(n+2)` -/
def P13888185684982814452.Spec : Prop :=
  ∀ n, P13888185684982814452.a n = A270307 n

end A270307

/-! ## A270307.P4641927791240334601

`A191697(n+1)-A049347(A113804(3*n+1))`
-/

namespace A270307.P4641927791240334601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191697 (n + 1) - A049347 (A113804 (3 * n + 1)).toNat

end

end A270307.P4641927791240334601

namespace A270307

/-- `A191697(n+1)-A049347(A113804(3*n+1))` -/
def P4641927791240334601.Spec : Prop :=
  ∀ n, P4641927791240334601.a n = A270307 n

end A270307

/-! ## A270307.P1339713595301529242

`A191697(n+1)+A010815(A000326(n))`
-/

namespace A270307.P1339713595301529242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191697 (n + 1) + A010815 (A000326 n).toNat

end

end A270307.P1339713595301529242

namespace A270307

/-- `A191697(n+1)+A010815(A000326(n))` -/
def P1339713595301529242.Spec : Prop :=
  ∀ n, P1339713595301529242.a n = A270307 n

end A270307

/-!
# A270308: Numbers which are less than the number of their ordered factorizations.

The programs for A270308, there is no canonical definition to state claims against.
-/

/-! ## A270308.P13593939474972424704

`lt[n, A074206(n)]`
-/

namespace A270308.P13593939474972424704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A270308.P13593939474972424704

/-! ## A270308.P12913245198770911963

`lt[n+1, A002033(n)]+1`
-/

namespace A270308.P12913245198770911963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A270308.P12913245198770911963

/-! ## A270308.P11459980760627187976

`A020725(lt[n+1, A002033(n)])`
-/

namespace A270308.P11459980760627187976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A270308.P11459980760627187976

/-! ## A270308.P4819896484709718212

`A065475(lt[n+1, A002033(n)])`
-/

namespace A270308.P4819896484709718212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A270308.P4819896484709718212

/-! ## A270308.P15953509840340381642

`A092486(lt[n+1, A002033(n)])`
-/

namespace A270308.P15953509840340381642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A270308.P15953509840340381642

/-! ## A270308.P12146099606246697259

`A020725(lt[1, A002033(n)-n])`
-/

namespace A270308.P12146099606246697259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A270308.P12146099606246697259

/-! ## A270308.P9034798675227070093

`A065475(lt[1, A002033(n)-n])`
-/

namespace A270308.P9034798675227070093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A270308.P9034798675227070093

/-! ## A270308.P4852591868121864953

`A092486(lt[1, A002033(n)-n])`
-/

namespace A270308.P4852591868121864953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A270308.P4852591868121864953

/-! ## A270308.P4289944346652266802

`lt[A160086(n)+n, A104725(n)]`
-/

namespace A270308.P4289944346652266802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A270308.P4289944346652266802

/-! ## A270308.P3986738418983107183

`lt[A008619(n), A174725(n+1)]+1`
-/

namespace A270308.P3986738418983107183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174725 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A270308.P3986738418983107183

/-! ## A270308.P15778956645679922043

`lt[A004277(n), A067824(A028310(n))]`
-/

namespace A270308.P15778956645679922043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067824 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A270308.P15778956645679922043

/-! ## A270308.P12130427797484357770

`lt[A008619(n), A174725(A028310(n))]`
-/

namespace A270308.P12130427797484357770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174725 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A270308.P12130427797484357770

/-! ## A270308.P1677931977509418164

`lt[n, A002033(n-A057427(n))*A057427(n)]`
-/

namespace A270308.P1677931977509418164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 ((n : ℤ) - A057427 n).toNat * A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A270308.P1677931977509418164

/-!
# A270309: Irregular triangle read by rows: T(n,k) = ((n-k)+1)^2 if odd-n and odd-k; T(n,k) = k^2 if odd-n and even-k; T(n,k) = (n/2-(k/2-1/2))^2 if even-n and odd-k; T(n,k) = (k/2+1)^2 if even-n and even-k; where n >= 1, k = 1..2*n.

The programs for A270309, there is no canonical definition to state claims against.
-/

/-! ## A270309.P12923380492425377616

`A026791(p?[A271647(n+1)])²`
-/

namespace A270309.P12923380492425377616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026791 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat ^ 2

end

end A270309.P12923380492425377616

/-! ## A270309.P11449290507554433003

`A026791(p?[A271647(n+1)])^(A000038(n)!+1)`
-/

namespace A270309.P11449290507554433003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026791 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat ^ (Nat.factorial (A000038 n).toNat + 1)

end

end A270309.P11449290507554433003

/-! ## A270309.P9762887886258816536

`A026791(p?[A271647(n+1)])^A020639(2*(n+1))`
-/

namespace A270309.P9762887886258816536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271647 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026791 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A270309.P9762887886258816536

/-! ## A270309.P4126928014220526541

`A026791(p?[A271647(n+1)])^(A014963(12*n+6)+1)`
-/

namespace A270309.P4126928014220526541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271647 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026791 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) ^ (A014963 (12 * n + 6) + 1 : ℤ)

end

end A270309.P4126928014220526541

/-!
# A270310: Primes ending with the same decimal digit as the previous or next prime.

The programs for A270310, the canonical program `A270310.P10742443358392983411` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270310 has offset 1).

The definition of A270310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2553 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270310.P10742443358392983411

`∪[A290450(n+1), A151800(A290450(n+1))]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A270310

/-- `∪[A290450(n+1), A151800(A290450(n+1))]` -/
def P10742443358392983411.Spec : Prop :=
  ∀ n, (P10742443358392983411.a n : ℤ) = A270310 (n + 1)

theorem P10742443358392983411.correct : P10742443358392983411.Spec := by
  intro n
  simp only [A270310, Nat.add_sub_cancel]

end A270310

/-! ## A270310.P14160042783460631255

`A000040(A270311(n+1))`
-/

namespace A270310.P14160042783460631255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A270311 (n + 1)).toNat

end

end A270310.P14160042783460631255

namespace A270310

/-- `A000040(A270311(n+1))` -/
def P14160042783460631255.Spec : Prop :=
  ∀ n, P14160042783460631255.a n = A270310 (n + 1)

end A270310

/-! ## A270310.P9144306333594726096

`A008578(A270311(n+1)+1)`
-/

namespace A270310.P9144306333594726096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A270311 (n + 1) + 1).toNat

end

end A270310.P9144306333594726096

namespace A270310

/-- `A008578(A270311(n+1)+1)` -/
def P9144306333594726096.Spec : Prop :=
  ∀ n, P9144306333594726096.a n = A270310 (n + 1)

end A270310

/-! ## A270310.P12860866932500207932

`A175787(A270311(n+1)+1)`
-/

namespace A270310.P12860866932500207932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A270311 (n + 1) + 1).toNat

end

end A270310.P12860866932500207932

namespace A270310

/-- `A175787(A270311(n+1)+1)` -/
def P12860866932500207932.Spec : Prop :=
  ∀ n, P12860866932500207932.a n = A270310 (n + 1)

end A270310

/-! ## A270310.P3384005819148123259

`A182986(A270311(n+1)+1)`
-/

namespace A270310.P3384005819148123259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A270311 (n + 1) + 1).toNat

end

end A270310.P3384005819148123259

namespace A270310

/-- `A182986(A270311(n+1)+1)` -/
def P3384005819148123259.Spec : Prop :=
  ∀ n, P3384005819148123259.a n = A270310 (n + 1)

end A270310

/-! ## A270310.P10116425719446010066

`A045319(A270311(n+1)-1)`
-/

namespace A270310.P10116425719446010066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A270311 (n + 1) - 1).toNat

end

end A270310.P10116425719446010066

namespace A270310

/-- `A045319(A270311(n+1)-1)` -/
def P10116425719446010066.Spec : Prop :=
  ∀ n, P10116425719446010066.a n = A270310 (n + 1)

end A270310

/-! ## A270310.P3070879787853666107

`A045344(A270311(n+1)-1)`
-/

namespace A270310.P3070879787853666107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A270311 (n + 1) - 1).toNat

end

end A270310.P3070879787853666107

namespace A270310

/-- `A045344(A270311(n+1)-1)` -/
def P3070879787853666107.Spec : Prop :=
  ∀ n, P3070879787853666107.a n = A270310 (n + 1)

end A270310

/-! ## A270310.P12572901724424138234

`A065091(A270311(n+1)-1)`
-/

namespace A270310.P12572901724424138234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A270311 (n + 1) - 1).toNat

end

end A270310.P12572901724424138234

namespace A270310

/-- `A065091(A270311(n+1)-1)` -/
def P12572901724424138234.Spec : Prop :=
  ∀ n, P12572901724424138234.a n = A270310 (n + 1)

end A270310

/-! ## A270310.P3885381058477834278

`A215848(A270311(n+1)-2)`
-/

namespace A270310.P3885381058477834278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (A270311 (n + 1) - 2).toNat

end

end A270310.P3885381058477834278

namespace A270310

/-- `A215848(A270311(n+1)-2)` -/
def P3885381058477834278.Spec : Prop :=
  ∀ n, P3885381058477834278.a n = A270310 (n + 1)

end A270310

/-! ## A270310.P588958827423135778

`A240960(A270311(n+1)+1)`
-/

namespace A270310.P588958827423135778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (A270311 (n + 1) + 1).toNat

end

end A270310.P588958827423135778

namespace A270310

/-- `A240960(A270311(n+1)+1)` -/
def P588958827423135778.Spec : Prop :=
  ∀ n, P588958827423135778.a n = A270310 (n + 1)

end A270310

/-!
# A270311: Indices of primes ending with the same decimal digit as the previous or next prime.

The programs for A270311, the canonical program `A270311.P4966833465686400972` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270311 has offset 1).

The definition of A270311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270311.P14655459976985034715

`A000720(A270310(n+1))`
-/

namespace A270311.P14655459976985034715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A270310 (n + 1)).toNat

end

end A270311.P14655459976985034715

namespace A270311

/-- `A000720(A270310(n+1))` -/
def P14655459976985034715.Spec : Prop :=
  ∀ n, P14655459976985034715.a n = A270311 (n + 1)

end A270311

/-! ## A270311.P4966833465686400972

`A061395(p?[A270310(n+1)])`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A270311

/-- `A061395(p?[A270310(n+1)])` -/
def P4966833465686400972.Spec : Prop :=
  ∀ n, P4966833465686400972.a n = A270311 (n + 1)

theorem P4966833465686400972.correct : P4966833465686400972.Spec := by
  intro n
  simp only [A270311, Nat.add_sub_cancel]

end A270311

/-! ## A270311.P5515179970350873774

`A061395(2*A270310(n+1))`
-/

namespace A270311.P5515179970350873774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A270310 (n + 1)).toNat

end

end A270311.P5515179970350873774

namespace A270311

/-- `A061395(2*A270310(n+1))` -/
def P5515179970350873774.Spec : Prop :=
  ∀ n, P5515179970350873774.a n = A270311 (n + 1)

end A270311

/-! ## A270311.P1116529931535209593

`A003963(p?[A270310(n+1)])`
-/

namespace A270311.P1116529931535209593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A270311.P1116529931535209593

namespace A270311

/-- `A003963(p?[A270310(n+1)])` -/
def P1116529931535209593.Spec : Prop :=
  ∀ n, P1116529931535209593.a n = A270311 (n + 1)

end A270311

/-! ## A270311.P16868944320281259547

`A026233(p?[A270310(n+1)])`
-/

namespace A270311.P16868944320281259547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A270311.P16868944320281259547

namespace A270311

/-- `A026233(p?[A270310(n+1)])` -/
def P16868944320281259547.Spec : Prop :=
  ∀ n, P16868944320281259547.a n = A270311 (n + 1)

end A270311

/-! ## A270311.P3980666565517042189

`A049084(p?[A270310(n+1)])`
-/

namespace A270311.P3980666565517042189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A270311.P3980666565517042189

namespace A270311

/-- `A049084(p?[A270310(n+1)])` -/
def P3980666565517042189.Spec : Prop :=
  ∀ n, P3980666565517042189.a n = A270311 (n + 1)

end A270311

/-! ## A270311.P15322699870172555782

`A055396(p?[A270310(n+1)])`
-/

namespace A270311.P15322699870172555782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A270311.P15322699870172555782

namespace A270311

/-- `A055396(p?[A270310(n+1)])` -/
def P15322699870172555782.Spec : Prop :=
  ∀ n, P15322699870172555782.a n = A270311 (n + 1)

end A270311

/-! ## A270311.P16904824423560161236

`A082058(p?[A270310(n+1)])`
-/

namespace A270311.P16904824423560161236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082058 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A270311.P16904824423560161236

namespace A270311

/-- `A082058(p?[A270310(n+1)])` -/
def P16904824423560161236.Spec : Prop :=
  ∀ n, P16904824423560161236.a n = A270311 (n + 1)

end A270311

/-! ## A270311.P8141444110768625477

`A156061(p?[A270310(n+1)])`
-/

namespace A270311.P8141444110768625477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A270311.P8141444110768625477

namespace A270311

/-- `A156061(p?[A270310(n+1)])` -/
def P8141444110768625477.Spec : Prop :=
  ∀ n, P8141444110768625477.a n = A270311 (n + 1)

end A270311

/-! ## A270311.P3054430319337886728

`A230980(p?[A270310(n+1)])`
-/

namespace A270311.P3054430319337886728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A270311.P3054430319337886728

namespace A270311

/-- `A230980(p?[A270310(n+1)])` -/
def P3054430319337886728.Spec : Prop :=
  ∀ n, P3054430319337886728.a n = A270311 (n + 1)

end A270311

/-! ## A270311.P4823040306650479070

`A252464(p?[A270310(n+1)])`
-/

namespace A270311.P4823040306650479070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A270311.P4823040306650479070

namespace A270311

/-- `A252464(p?[A270310(n+1)])` -/
def P4823040306650479070.Spec : Prop :=
  ∀ n, P4823040306650479070.a n = A270311 (n + 1)

end A270311

/-! ## A270311.P12343087527453079930

`A230980(A270310(n+1)+1)`
-/

namespace A270311.P12343087527453079930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A270310 (n + 1) + 1).toNat

end

end A270311.P12343087527453079930

namespace A270311

/-- `A230980(A270310(n+1)+1)` -/
def P12343087527453079930.Spec : Prop :=
  ∀ n, P12343087527453079930.a n = A270311 (n + 1)

end A270311

/-! ## A270311.P5196313922197361616

`A156061(2*A270310(n+1))`
-/

namespace A270311.P5196313922197361616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (2 * A270310 (n + 1)).toNat

end

end A270311.P5196313922197361616

namespace A270311

/-- `A156061(2*A270310(n+1))` -/
def P5196313922197361616.Spec : Prop :=
  ∀ n, P5196313922197361616.a n = A270311 (n + 1)

end A270311

/-!
# A270312: Numerator of Fibonacci(n)/n.

The programs for A270312, the canonical program `A270312.P1147650262403678755` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270312 has offset 1).

The definition of A270312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270312.P7343863488407256395

`∑[A212804(n)]/A104714(n+1)`
-/

namespace A270312.P7343863488407256395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A104714 (n + 1) : ℚ)

end

end A270312.P7343863488407256395

namespace A270312

/-- `∑[A212804(n)]/A104714(n+1)` -/
def P7343863488407256395.Spec : Prop :=
  ∀ n, P7343863488407256395.a n = (A270312 (n + 1) : ℚ)

end A270312

/-! ## A270312.P12201517198747082074

`A000045(n+1)/A104714(n+1)`
-/

namespace A270312.P12201517198747082074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (A104714 (n + 1) : ℚ)

end

end A270312.P12201517198747082074

namespace A270312

/-- `A000045(n+1)/A104714(n+1)` -/
def P12201517198747082074.Spec : Prop :=
  ∀ n, P12201517198747082074.a n = (A270312 (n + 1) : ℚ)

end A270312

/-! ## A270312.P1147650262403678755

`A000045(n+1)/gcd(A000045(n+1), A131738(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A270312

/-- `A000045(n+1)/gcd(A000045(n+1), A131738(n))` -/
def P1147650262403678755.Spec : Prop :=
  ∀ n, P1147650262403678755.a n = (A270312 (n + 1) : ℚ)

end A270312

/-! ## A270312.P11782416855914698391

`A000045(n+1)/gcd(n+1, A010049(n))`
-/

namespace A270312.P11782416855914698391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A010049 n) : ℚ)

end

end A270312.P11782416855914698391

namespace A270312

/-- `A000045(n+1)/gcd(n+1, A010049(n))` -/
def P11782416855914698391.Spec : Prop :=
  ∀ n, P11782416855914698391.a n = (A270312 (n + 1) : ℚ)

end A270312

/-! ## A270312.P535317929887200318

`A014965(n+1)/(n+1)`
-/

namespace A270312.P535317929887200318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014965 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A270312.P535317929887200318

namespace A270312

/-- `A014965(n+1)/(n+1)` -/
def P535317929887200318.Spec : Prop :=
  ∀ n, P535317929887200318.a n = (A270312 (n + 1) : ℚ)

end A270312

/-!
# A270313: Denominator of Fibonacci(n)/n.

The programs for A270313, there is no canonical definition to state claims against.
-/

/-! ## A270313.P12699358592740471625

`(n+1)/A104714(n+1)`
-/

namespace A270313.P12699358592740471625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A104714 (n + 1) : ℚ)

end

end A270313.P12699358592740471625

/-! ## A270313.P168346629998292480

`(n+1)/gcd(n+1, A247193(n+1))`
-/

namespace A270313.P168346629998292480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A247193 (n + 1)) : ℚ)

end

end A270313.P168346629998292480

/-! ## A270313.P13879324987163983160

`A028310(n+1)/gcd(A000045(n+1), A028310(n+1))`
-/

namespace A270313.P13879324987163983160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (n + 1) : ℚ) / (Int.gcd (A000045 (n + 1)) (A028310 (n + 1)) : ℚ)

end

end A270313.P13879324987163983160

/-! ## A270313.P6230412932055366504

`A014965(n+1)/A000045(n+1)`
-/

namespace A270313.P6230412932055366504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014965 (n + 1) : ℚ) / (A000045 (n + 1) : ℚ)

end

end A270313.P6230412932055366504

/-! ## A270313.P3198473188649185136

`A014965(n+1)/(A007502(n+1)-A045925(n))`
-/

namespace A270313.P3198473188649185136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014965 (n + 1) : ℚ) / (A007502 (n + 1) - A045925 n : ℚ)

end

end A270313.P3198473188649185136

/-! ## A270313.P15752877006856732200

`A014965(n+1)/(A045925(n+1)-A023607(n))`
-/

namespace A270313.P15752877006856732200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014965 (n + 1) : ℚ) / (A045925 (n + 1) - A023607 n : ℚ)

end

end A270313.P15752877006856732200

/-! ## A270313.P770284244933741949

`A014965(n+1)/(A099920(n+1)-A045925(n+1))`
-/

namespace A270313.P770284244933741949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014965 (n + 1) : ℚ) / (A099920 (n + 1) - A045925 (n + 1) : ℚ)

end

end A270313.P770284244933741949

/-! ## A270313.P5027048056602301972

`(n+1)/gcd(Δ[A099924(n+1)], A099924(n))`
-/

namespace A270313.P5027048056602301972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099924 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (f1 (n + 1) - f1 n) (A099924 n) : ℚ)

end

end A270313.P5027048056602301972

/-! ## A270313.P15444919753533641741

`A008619(2*n)/gcd(A006498(2*n), A008619(2*n))`
-/

namespace A270313.P15444919753533641741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (Int.gcd (A006498 (2 * n)) (A008619 (2 * n)) : ℚ)

end

end A270313.P15444919753533641741

/-! ## A270313.P7860684452982503503

`A065033(2*n+1)/gcd(A065033(2*n+1), A074677(2*n+1))`
-/

namespace A270313.P7860684452982503503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065033 (2 * n + 1) : ℚ) / (Int.gcd (A065033 (2 * n + 1)) (A074677 (2 * n + 1)) : ℚ)

end

end A270313.P7860684452982503503

/-!
# A270317: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 149", based on the 5-celled von Neumann neighborhood.

The programs for A270317, there is no canonical definition to state claims against.
-/

/-! ## A270317.P15194995115441540140

`A270320(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270317.P15194995115441540140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270320 (n - 1) + a (n - 1)

end

end A270317.P15194995115441540140

/-! ## A270317.P12573331807646262024

`Δ[A270319(n)]-A270320(n)`
-/

namespace A270317.P12573331807646262024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270320 n

end

end A270317.P12573331807646262024

/-! ## A270317.P8255347731147772712

`∑[A270320(n-a(A000038(n)))]` with `a(0)=1`
-/

namespace A270317.P8255347731147772712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270320 ((n : ℤ) - f1 (A000038 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270317.P8255347731147772712

/-! ## A270317.P1237165271588561130

`A270319(n+1)-(A270320(n)+A270319(n))`
-/

namespace A270317.P1237165271588561130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270319 (n + 1) - (A270320 n + A270319 n)

end

end A270317.P1237165271588561130

/-!
# A270318: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 149", based on the 5-celled von Neumann neighborhood.

The programs for A270318, there is no canonical definition to state claims against.
-/

/-! ## A270318.P8251962491499913667

`A270317(2^n-1)`
-/

namespace A270318.P8251962491499913667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270317 (2 ^ n - 1)

end

end A270318.P8251962491499913667

/-! ## A270318.P14025803754009533426

`record[A270317(A173787(n))]`
-/

namespace A270318.P14025803754009533426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270317 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270318.P14025803754009533426

/-! ## A270318.P6645160626403730120

`record[A270317(A255067(n))]`
-/

namespace A270318.P6645160626403730120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270317 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270318.P6645160626403730120

/-! ## A270318.P5732373010485988824

`record[A270317(A257250(n))]`
-/

namespace A270318.P5732373010485988824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270317 (A257250 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270318.P5732373010485988824

/-! ## A270318.P13717421498040042158

`record[A270317(A258209(n))]`
-/

namespace A270318.P13717421498040042158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270317 (A258209 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270318.P13717421498040042158

/-!
# A270319: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 149", based on the 5-celled von Neumann neighborhood.

The programs for A270319, there is no canonical definition to state claims against.
-/

/-! ## A270319.P7765107596338685047

`∑[∑[A270320(n)]+1-A270320(n)]`
-/

namespace A270319.P7765107596338685047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270320 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270320 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270319.P7765107596338685047

/-! ## A270319.P9647080248086647140

`∑[A270317(n)]`
-/

namespace A270319.P9647080248086647140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270319.P9647080248086647140

/-! ## A270319.P10996735128053164752

`A270317(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270319.P10996735128053164752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270317 n + a (A023443 n).toNat

end

end A270319.P10996735128053164752

/-! ## A270319.P11100922485411076063

`a(n-1)+A054977(n)*A270317(n)` with `a(0)=1`
-/

namespace A270319.P11100922485411076063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A054977 n * A270317 n

end

end A270319.P11100922485411076063

/-! ## A270319.P10940440489498888067

`a(n-1)+A270317(n)%A014008(n)` with `a(0)=1`
-/

namespace A270319.P10940440489498888067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A270317 n) (A014008 n)

end

end A270319.P10940440489498888067

/-!
# A270320: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 149", based on the 5-celled von Neumann neighborhood.

The programs for A270320, there is no canonical definition to state claims against.
-/

/-! ## A270320.P13067591573570231342

`Δ[A270317(n)]`
-/

namespace A270320.P13067591573570231342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270320.P13067591573570231342

/-! ## A270320.P16005808862884329880

`A270317(n+1)-A270317(n)`
-/

namespace A270320.P16005808862884329880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270317 (n + 1) - A270317 n

end

end A270320.P16005808862884329880

/-! ## A270320.P11919885803469959018

`A270317(n+1)+A024000(A270317(n)+1)`
-/

namespace A270320.P11919885803469959018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270317 (n + 1) + A024000 (A270317 n + 1).toNat

end

end A270320.P11919885803469959018

/-! ## A270320.P5697387961975192536

`A270332(n)-A324067(A324092(n+1))`
-/

namespace A270320.P5697387961975192536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270332 n - A324067 (A324092 (n + 1)).toNat

end

end A270320.P5697387961975192536

/-! ## A270320.P7065209974503582059

`Δ[A270329(n)]-A324067(A324092(n+1))`
-/

namespace A270320.P7065209974503582059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A324067 (A324092 (n + 1)).toNat

end

end A270320.P7065209974503582059

/-!
# A270321: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 150", based on the 5-celled von Neumann neighborhood.

The programs for A270321, there is no canonical definition to state claims against.
-/

/-! ## A270321.P8214089969984387529

`A270324(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270321.P8214089969984387529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270324 (n - 1) + a (n - 1)

end

end A270321.P8214089969984387529

/-! ## A270321.P1892521072850571392

`a(n-1)-(A000007(n)-A270324(n-1))` with `a(0)=1`
-/

namespace A270321.P1892521072850571392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A000007 n - A270324 (n - 1))

end

end A270321.P1892521072850571392

/-! ## A270321.P4766949784079091942

`a(n-1)-(and(1, A219653(n))-A270324(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A270321.P4766949784079091942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) - (Int.land 1 (A219653 n) - A270324 (n - 1))

end

end A270321.P4766949784079091942

/-! ## A270321.P13777508936550642664

`Δ[A270323(n)]-A270324(n)`
-/

namespace A270321.P13777508936550642664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270324 n

end

end A270321.P13777508936550642664

/-! ## A270321.P10985184291717315942

`A270323(n+1)-(A270324(n)+A270323(n))`
-/

namespace A270321.P10985184291717315942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270323 (n + 1) - (A270324 n + A270323 n)

end

end A270321.P10985184291717315942

/-!
# A270322: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 150", based on the 5-celled von Neumann neighborhood.

The programs for A270322, there is no canonical definition to state claims against.
-/

/-! ## A270322.P11830722809564405711

`A270321(2^n-1)`
-/

namespace A270322.P11830722809564405711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270321 (2 ^ n - 1)

end

end A270322.P11830722809564405711

/-! ## A270322.P7145009284712109455

`record[A270321(A218616(n))]`
-/

namespace A270322.P7145009284712109455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270321 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270322.P7145009284712109455

/-! ## A270322.P14179442911359098456

`record[A270321(A233276(n))]`
-/

namespace A270322.P14179442911359098456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270321 (A233276 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270322.P14179442911359098456

/-! ## A270322.P3443664290552118088

`record[A270321(A303765(n))]`
-/

namespace A270322.P3443664290552118088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270321 (A303765 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270322.P3443664290552118088

/-! ## A270322.P161266741492728494

`and(-1, A270321(A000225(n)))`
-/

namespace A270322.P161266741492728494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A270321 (A000225 n).toNat)

end

end A270322.P161266741492728494

/-!
# A270323: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 150", based on the 5-celled von Neumann neighborhood.

The programs for A270323, there is no canonical definition to state claims against.
-/

/-! ## A270323.P3119607003313392410

`∑[A270321(n)]`
-/

namespace A270323.P3119607003313392410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270323.P3119607003313392410

/-! ## A270323.P5281417439133189094

`A270321(A004526(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A270323.P5281417439133189094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270321 (A004526 (2 * n)).toNat + a (n - 1)

end

end A270323.P5281417439133189094

/-! ## A270323.P13148996313101412978

`A270321(n%A079848(n))+a(n-1)` with `a(0)=1`
-/

namespace A270323.P13148996313101412978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270321 (Int.tmod (n : ℤ) (A079848 n)).toNat + a (n - 1)

end

end A270323.P13148996313101412978

/-! ## A270323.P14947267489577520952

`∑[A270324(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270323.P14947267489577520952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270324 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270323.P14947267489577520952

/-! ## A270323.P15790246166199148968

`∑[∑[A270324(n)]+1-A270324(n)]`
-/

namespace A270323.P15790246166199148968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270324 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270324 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270323.P15790246166199148968

/-!
# A270324: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 150", based on the 5-celled von Neumann neighborhood.

The programs for A270324, there is no canonical definition to state claims against.
-/

/-! ## A270324.P6823231753972713513

`Δ[A270321(n)]`
-/

namespace A270324.P6823231753972713513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270324.P6823231753972713513

/-! ## A270324.P16058572326515544172

`A270321(n+1)-A270321(n)`
-/

namespace A270324.P16058572326515544172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270321 (n + 1) - A270321 n

end

end A270324.P16058572326515544172

/-!
# A270325: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 155", based on the 5-celled von Neumann neighborhood.

The programs for A270325, there is no canonical definition to state claims against.
-/

/-! ## A270325.P11493392311233531227

`∑[A270328(abs(1-n))]+1`
-/

namespace A270325.P11493392311233531227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270328 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A270325.P11493392311233531227

/-! ## A270325.P3185974378212129826

`A270328(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270325.P3185974378212129826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270328 (n - 1) + a (n - 1)

end

end A270325.P3185974378212129826

/-! ## A270325.P12902330440668023321

`Δ[A270327(n)]-A270328(n)`
-/

namespace A270325.P12902330440668023321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270328 n

end

end A270325.P12902330440668023321

/-! ## A270325.P4661959682721582041

`∑[A270328((n-1)*a(A000038(n)))]` with `a(0)=1`
-/

namespace A270325.P4661959682721582041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270328 (((n : ℤ) - 1) * f1 (A000038 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270325.P4661959682721582041

/-! ## A270325.P5564675550033910350

`A270327(n+1)-(A270328(n)+A270327(n))`
-/

namespace A270325.P5564675550033910350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270327 (n + 1) - (A270328 n + A270327 n)

end

end A270325.P5564675550033910350

/-!
# A270326: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 155", based on the 5-celled von Neumann neighborhood.

The programs for A270326, there is no canonical definition to state claims against.
-/

/-! ## A270326.P14253396091614263949

`A270325(2^n-1)`
-/

namespace A270326.P14253396091614263949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270325 (2 ^ n - 1)

end

end A270326.P14253396091614263949

/-! ## A270326.P11667771420280271870

`record[A270325(A173787(n))]`
-/

namespace A270326.P11667771420280271870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270325 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270326.P11667771420280271870

/-! ## A270326.P1166238592804401448

`or(1, A270325(A000225(n)))`
-/

namespace A270326.P1166238592804401448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A270325 (A000225 n).toNat)

end

end A270326.P1166238592804401448

/-! ## A270326.P14596860904894659316

`record[A270325(A302029(n+1))]`
-/

namespace A270326.P14596860904894659316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270325 (A302029 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270326.P14596860904894659316

/-! ## A270326.P14649525278074120971

`record[gcd(A025480(n), A270325(n))]`
-/

namespace A270326.P14649525278074120971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025480 n) (A270325 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270326.P14649525278074120971

/-!
# A270327: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 155", based on the 5-celled von Neumann neighborhood.

The programs for A270327, there is no canonical definition to state claims against.
-/

/-! ## A270327.P12411801212203275862

`∑[∑[A270328(n)]+1-A270328(n)]`
-/

namespace A270327.P12411801212203275862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270328 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270328 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270327.P12411801212203275862

/-! ## A270327.P642693272160964835

`∑[A270325(n)]`
-/

namespace A270327.P642693272160964835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270327.P642693272160964835

/-! ## A270327.P3380195674716350912

`A270325(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270327.P3380195674716350912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270325 n + a (A023443 n).toNat

end

end A270327.P3380195674716350912

/-! ## A270327.P11532269365046380303

`A270325(A000038(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A270327.P11532269365046380303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270325 (A000038 n + (n : ℤ)).toNat + a (n - 1)

end

end A270327.P11532269365046380303

/-! ## A270327.P5363791043140913739

`A270325(n)+abs(A033999(n))*a(n-1)` with `a(0)=1`
-/

namespace A270327.P5363791043140913739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270325 n + |A033999 n| * a (n - 1)

end

end A270327.P5363791043140913739

/-!
# A270328: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 155", based on the 5-celled von Neumann neighborhood.

The programs for A270328, there is no canonical definition to state claims against.
-/

/-! ## A270328.P5772118155154805833

`Δ[A270325(n)]`
-/

namespace A270328.P5772118155154805833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270328.P5772118155154805833

/-! ## A270328.P981221326216304671

`A270325(n+1)-A270325(n)`
-/

namespace A270328.P981221326216304671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270325 (n + 1) - A270325 n

end

end A270328.P981221326216304671

/-! ## A270328.P7860780569897170852

`Δ[A270327(n)]-A115060(A270930(n))`
-/

namespace A270328.P7860780569897170852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A115060 (A270930 n).toNat

end

end A270328.P7860780569897170852

/-! ## A270328.P7462100611878873659

`Δ[A115060(A270930(n))]`
-/

namespace A270328.P7462100611878873659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A270930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270328.P7462100611878873659

/-!
# A270329: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 157", based on the 5-celled von Neumann neighborhood.

The programs for A270329, there is no canonical definition to state claims against.
-/

/-! ## A270329.P3899622236251124532

`A270332(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270329.P3899622236251124532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270332 (n - 1) + a (n - 1)

end

end A270329.P3899622236251124532

/-! ## A270329.P6867003705981542412

`Δ[A270331(n)]-A270332(n)`
-/

namespace A270329.P6867003705981542412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270332 n

end

end A270329.P6867003705981542412

/-! ## A270329.P2322120692343265774

`A270332(n-1)-(n*A000038(n)-a(n-1))` with `a(0)=1`
-/

namespace A270329.P2322120692343265774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270332 (n - 1) - ((n : ℤ) * A000038 n - a (n - 1))

end

end A270329.P2322120692343265774

/-! ## A270329.P9436704782983955477

`A270331(n+1)-(A270332(n)+A270331(n))`
-/

namespace A270329.P9436704782983955477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270331 (n + 1) - (A270332 n + A270331 n)

end

end A270329.P9436704782983955477

/-!
# A270330: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 157", based on the 5-celled von Neumann neighborhood.

The programs for A270330, there is no canonical definition to state claims against.
-/

/-! ## A270330.P8483275590300841828

`A270329(2^n-1)`
-/

namespace A270330.P8483275590300841828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270329 (2 ^ n - 1)

end

end A270330.P8483275590300841828

/-! ## A270330.P8496626635828339116

`record[A270329(A154438(n))]`
-/

namespace A270330.P8496626635828339116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270329 (A154438 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270330.P8496626635828339116

/-! ## A270330.P6508182584460166753

`record[A270329(A173787(n))]`
-/

namespace A270330.P6508182584460166753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270329 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270330.P6508182584460166753

/-! ## A270330.P13214712418050894537

`record[A270329(A255067(n))]`
-/

namespace A270330.P13214712418050894537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270329 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270330.P13214712418050894537

/-! ## A270330.P1839343700360512575

`record[A270329(A257250(n))]`
-/

namespace A270330.P1839343700360512575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270329 (A257250 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270330.P1839343700360512575

/-!
# A270331: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 157", based on the 5-celled von Neumann neighborhood.

The programs for A270331, there is no canonical definition to state claims against.
-/

/-! ## A270331.P12458009356891068671

`∑[∑[A270332(n)]+1-A270332(n)]`
-/

namespace A270331.P12458009356891068671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270332 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270332 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270331.P12458009356891068671

/-! ## A270331.P8278839426111232436

`∑[A270329(n)]`
-/

namespace A270331.P8278839426111232436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270331.P8278839426111232436

/-! ## A270331.P18375769264088826344

`a(n-1)+A270329(n)+A000038(n)` with `a(0)=1`
-/

namespace A270331.P18375769264088826344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270329 n + A000038 n)

end

end A270331.P18375769264088826344

/-! ## A270331.P10356189744977213099

`a(n-1)+A057427(n)*A270329(n)` with `a(0)=1`
-/

namespace A270331.P10356189744977213099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A270329 n

end

end A270331.P10356189744977213099

/-! ## A270331.P1398243237835947066

`A270329(n%A270329(n))+a(n-1)` with `a(0)=1`
-/

namespace A270331.P1398243237835947066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270329 (Int.tmod (n : ℤ) (A270329 n)).toNat + a (n - 1)

end

end A270331.P1398243237835947066

/-! ## A270331.P710009602183164151

`A270329(n)+a(A259361(n²))` with `a(0)=1`
-/

namespace A270331.P710009602183164151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270329 n + a (A259361 (n ^ 2)).toNat

end

end A270331.P710009602183164151

/-!
# A270332: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 157", based on the 5-celled von Neumann neighborhood.

The programs for A270332, there is no canonical definition to state claims against.
-/

/-! ## A270332.P455816588808722831

`Δ[A270329(n)]`
-/

namespace A270332.P455816588808722831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270332.P455816588808722831

/-! ## A270332.P16555558554574258735

`A270329(n+1)-A270329(n)`
-/

namespace A270332.P16555558554574258735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270329 (n + 1) - A270329 n

end

end A270332.P16555558554574258735

/-! ## A270332.P6828411799090950908

`A324067(A324092(n+1))+A270320(n)`
-/

namespace A270332.P6828411799090950908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324067 (A324092 (n + 1)).toNat + A270320 n

end

end A270332.P6828411799090950908

/-! ## A270332.P9812843036774222817

`A324067(A324092(n+1))+Δ[A270317(n)]`
-/

namespace A270332.P9812843036774222817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324067 (A324092 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A270332.P9812843036774222817

/-!
# A270333: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 158", based on the 5-celled von Neumann neighborhood.

The programs for A270333, there is no canonical definition to state claims against.
-/

/-! ## A270333.P1102193673694672298

`A270336(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270333.P1102193673694672298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270336 (n - 1) + a (n - 1)

end

end A270333.P1102193673694672298

/-! ## A270333.P3198798618977828052

`Δ[A270335(n)]-A270336(n)`
-/

namespace A270333.P3198798618977828052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270336 n

end

end A270333.P3198798618977828052

/-! ## A270333.P17793118308296767563

`A270335(n+1)-(A270336(n)+A270335(n))`
-/

namespace A270333.P17793118308296767563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270335 (n + 1) - (A270336 n + A270335 n)

end

end A270333.P17793118308296767563

/-! ## A270333.P11319874633975343993

`A270335(A000027(n+1))%(A270336(n)+A270335(n))`
-/

namespace A270333.P11319874633975343993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270335 (A000027 (n + 1)).toNat) (A270336 n + A270335 n)

end

end A270333.P11319874633975343993

/-!
# A270334: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 158", based on the 5-celled von Neumann neighborhood.

The programs for A270334, there is no canonical definition to state claims against.
-/

/-! ## A270334.P13309663790751117978

`A270333(2^n-1)`
-/

namespace A270334.P13309663790751117978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270333 (2 ^ n - 1)

end

end A270334.P13309663790751117978

/-! ## A270334.P14898224253521312663

`and(-1, A270333(A000225(n)))`
-/

namespace A270334.P14898224253521312663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A270333 (A000225 n).toNat)

end

end A270334.P14898224253521312663

/-! ## A270334.P15491683711207013010

`record[A270333(A122111(n+1)-1)]`
-/

namespace A270334.P15491683711207013010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270333 (A122111 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270334.P15491683711207013010

/-! ## A270334.P2939035753961621361

`record[gcd(A270333(n), A335904(n+1))]`
-/

namespace A270334.P2939035753961621361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A270333 n) (A335904 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270334.P2939035753961621361

/-! ## A270334.P6848059676799832031

`A007318(∑[n])*A270333(A000225(n))`
-/

namespace A270334.P6848059676799832031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A270333 (A000225 n).toNat

end

end A270334.P6848059676799832031

/-!
# A270335: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 158", based on the 5-celled von Neumann neighborhood.

The programs for A270335, there is no canonical definition to state claims against.
-/

/-! ## A270335.P7563356751575563489

`∑[A270333(n)]`
-/

namespace A270335.P7563356751575563489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270335.P7563356751575563489

/-! ## A270335.P3516389732547968677

`A270333(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A270335.P3516389732547968677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270333 n + a (A023443 n).toNat

end

end A270335.P3516389732547968677

/-! ## A270335.P2190441299943140591

`A270333(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A270335.P2190441299943140591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270333 n + a (A004273 n - (n : ℤ)).toNat

end

end A270335.P2190441299943140591

/-! ## A270335.P8015378372386703308

`a(n-1)+A270333(n)+A000007(n)` with `a(0)=1`
-/

namespace A270335.P8015378372386703308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270333 n + A000007 n)

end

end A270335.P8015378372386703308

/-! ## A270335.P16583716931265896701

`∑[∑[A270336(n)]+1-A270336(n)]`
-/

namespace A270335.P16583716931265896701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270336 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270336 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270335.P16583716931265896701

/-!
# A270336: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 158", based on the 5-celled von Neumann neighborhood.

The programs for A270336, there is no canonical definition to state claims against.
-/

/-! ## A270336.P3651889945561551610

`Δ[A270333(n)]`
-/

namespace A270336.P3651889945561551610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270336.P3651889945561551610

/-! ## A270336.P14497784801028797489

`A270333(n+1)-A270333(n)`
-/

namespace A270336.P14497784801028797489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270333 (n + 1) - A270333 n

end

end A270336.P14497784801028797489

/-!
# A270337: Composite numbers equal to the number of divisors of one of their powers.

The programs for A270337, there is no canonical definition to state claims against.
-/

/-! ## A270337.P9093364195436400515

`filter[A180934(n+1), A066247(#)]`
-/

namespace A270337.P9093364195436400515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A270337.P9093364195436400515

/-! ## A270337.P1976108471046109407

`filter[A180934(n+1), A107078(#)]`
-/

namespace A270337.P1976108471046109407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A270337.P1976108471046109407

/-! ## A270337.P5214354485830201757

`filter[A180934(n+1), A202238(#)]`
-/

namespace A270337.P5214354485830201757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A270337.P5214354485830201757

/-! ## A270337.P14126769588257347240

`filter[A180934(n+1), A323162(#)]`
-/

namespace A270337.P14126769588257347240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A270337.P14126769588257347240

/-! ## A270337.P5208760579367891377

`filter[A180934(n+1), A364693(#)]`
-/

namespace A270337.P5208760579367891377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A270337.P5208760579367891377

/-! ## A270337.P1091904405214890839

`filter[A180934(n+2), A005171(#)]`
-/

namespace A270337.P1091904405214890839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180934 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A270337.P1091904405214890839

/-! ## A270337.P10545059029314467339

`filter[A180934(n+2), A087049(#)]`
-/

namespace A270337.P10545059029314467339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180934 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A270337.P10545059029314467339

/-! ## A270337.P11102623849560583648

`filter[A180934(n+2), A292438(#)]`
-/

namespace A270337.P11102623849560583648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180934 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A270337.P11102623849560583648

/-! ## A270337.P15952513730939661709

`∩[A002808(n+1), A180934(n+1)]`
-/

namespace A270337.P15952513730939661709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270337.P15952513730939661709

/-! ## A270337.P395191412751281936

`∩[A005381(n+1), A180934(n+1)]`
-/

namespace A270337.P395191412751281936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270337.P395191412751281936

/-!
# A270338: Primes whose decimal expansion contains only 3's and 4's, in which every 4 is preceded and followed by a 3.

The programs for A270338, there is no canonical definition to state claims against.
-/

/-! ## A270338.P16304919398092777411

`p?[A032834(A196032(n+1))]`
-/

namespace A270338.P16304919398092777411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (A196032 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A270338.P16304919398092777411

/-! ## A270338.P4310690331955754941

`p?[A032834(A297278(n+1))]`
-/

namespace A270338.P4310690331955754941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (A297278 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A270338.P4310690331955754941

/-! ## A270338.P6968134629265511589

`p?[A032834(A080944(2*(n+1)))]`
-/

namespace A270338.P6968134629265511589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (A080944 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A270338.P6968134629265511589

/-!
# A270340: Numbers that equal the sum of the squares of the digits of their own square in base 13.

The programs for A270340, there is no canonical definition to state claims against.
-/

/-! ## A270340.P15460985612248455169

`(A307973(A092944(2*(n+1)))+A000079(n+2))%A214766(2*n)`
-/

namespace A270340.P15460985612248455169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307973 (A092944 (2 * (n + 1))).toNat + A000079 (n + 2)) (A214766 (2 * n))

end

end A270340.P15460985612248455169

/-!
# A270342: Positive integers n such that the sum of the Pell numbers A000129(0) + ... + A000129(n-1) is divisible by n.

The programs for A270342, the canonical program `A270342.P12478377227330995864` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270342 has offset 1).

The definition of A270342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270342.P12478377227330995864

`eq[0, A270388(n+2)]+2`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A270342

/-- `eq[0, A270388(n+2)]+2` -/
def P12478377227330995864.Spec : Prop :=
  ∀ n, (P12478377227330995864.a n : ℤ) = A270342 (n + 1)

theorem P12478377227330995864.correct : P12478377227330995864.Spec := by
  intro n
  simp only [A270342, Nat.add_sub_cancel]

end A270342

/-! ## A270342.P8446886356428276306

`lt[A270388(A028310(n)+1), 1]+1`
-/

namespace A270342.P8446886356428276306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270388 (A028310 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A270342.P8446886356428276306

namespace A270342

/-- `lt[A270388(A028310(n)+1), 1]+1` -/
def P8446886356428276306.Spec : Prop :=
  ∀ n, (P8446886356428276306.a n : ℤ) = A270342 (n + 1)

end A270342

/-! ## A270342.P16730249519294576777

`lt[A270388(n+2), A000034(n)]+2`
-/

namespace A270342.P16730249519294576777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270388 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A270342.P16730249519294576777

namespace A270342

/-- `lt[A270388(n+2), A000034(n)]+2` -/
def P16730249519294576777.Spec : Prop :=
  ∀ n, (P16730249519294576777.a n : ℤ) = A270342 (n + 1)

end A270342

/-! ## A270342.P13125791131539288022

`lt[lcm(A270388(n+2), A290095(n)), 1]+2`
-/

namespace A270342.P13125791131539288022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A270388 (n + 2)) (A290095 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A270342.P13125791131539288022

namespace A270342

/-- `lt[lcm(A270388(n+2), A290095(n)), 1]+2` -/
def P13125791131539288022.Spec : Prop :=
  ∀ n, (P13125791131539288022.a n : ℤ) = A270342 (n + 1)

end A270342

/-! ## A270342.P16316836871294987983

`lt[A270388(A278222(n)%2+n+1), 1]+1`
-/

namespace A270342.P16316836871294987983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270388 (Int.tmod (A278222 n) 2 + (n + 1 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A270342.P16316836871294987983

namespace A270342

/-- `lt[A270388(A278222(n)%2+n+1), 1]+1` -/
def P16316836871294987983.Spec : Prop :=
  ∀ n, (P16316836871294987983.a n : ℤ) = A270342 (n + 1)

end A270342

/-! ## A270342.P4161820433090273315

`lt[A270388(a(A008683(n)²)+n), 1]+1` with `a(0)=1, a(1)=1`
-/

namespace A270342.P4161820433090273315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A270388 (f1 (A008683 n ^ 2).toNat + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A270342.P4161820433090273315

namespace A270342

/-- `lt[A270388(a(A008683(n)²)+n), 1]+1` -/
def P4161820433090273315.Spec : Prop :=
  ∀ n, (P4161820433090273315.a n : ℤ) = A270342 (n + 1)

end A270342

/-! ## A270342.P13801457816231693743

`∪[A065091(n+1), A270345(n+1)]`
-/

namespace A270342.P13801457816231693743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A270342.P13801457816231693743

namespace A270342

/-- `∪[A065091(n+1), A270345(n+1)]` -/
def P13801457816231693743.Spec : Prop :=
  ∀ n, (P13801457816231693743.a n : ℤ) = A270342 (n + 1)

end A270342

/-! ## A270342.P11999365427730243816

`∪[A066542(n+1), A270345(n+1)]`
-/

namespace A270342.P11999365427730243816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A270342.P11999365427730243816

namespace A270342

/-- `∪[A066542(n+1), A270345(n+1)]` -/
def P11999365427730243816.Spec : Prop :=
  ∀ n, (P11999365427730243816.a n : ℤ) = A270342 (n + 1)

end A270342

/-! ## A270342.P12793716115032584444

`eq[0, A270388(A233583(n+1))]`
-/

namespace A270342.P12793716115032584444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270388 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270342.P12793716115032584444

namespace A270342

/-- `eq[0, A270388(A233583(n+1))]` -/
def P12793716115032584444.Spec : Prop :=
  ∀ n, (P12793716115032584444.a n : ℤ) = A270342 (n + 1)

end A270342

/-! ## A270342.P17342120120585518019

`lt[A270388(A233583(n+2)), 1]+1`
-/

namespace A270342.P17342120120585518019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270388 (A233583 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A270342.P17342120120585518019

namespace A270342

/-- `lt[A270388(A233583(n+2)), 1]+1` -/
def P17342120120585518019.Spec : Prop :=
  ∀ n, (P17342120120585518019.a n : ℤ) = A270342 (n + 1)

end A270342

/-!
# A270344: Least squarefree number that has runs of exactly n nonsquarefree numbers directly preceding and succeeding it.

The programs for A270344, there is no canonical definition to state claims against.
-/

/-! ## A270344.P15802386640086934790

`A214069(30^∑{e}[n+1, #])*A268330(n)`
-/

namespace A270344.P15802386640086934790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214069 (30 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) * A268330 n

end

end A270344.P15802386640086934790

/-! ## A270344.P12777006693133870932

`A268330(n)+A010057(A000522(n))`
-/

namespace A270344.P12777006693133870932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268330 n + A010057 (A000522 n).toNat

end

end A270344.P12777006693133870932

/-! ## A270344.P189104594048593610

`A268330(n)+A019590(A010842(n))`
-/

namespace A270344.P189104594048593610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268330 n + A019590 (A010842 n).toNat

end

end A270344.P189104594048593610

/-!
# A270345: Composite integers n such that the sum of the Pell numbers A000129(0) + ... + A000129(n-1) is divisible by n.

The programs for A270345, there is no canonical definition to state claims against.
-/

/-! ## A270345.P11623142098961114349

`filter[A270342(n+1), A005171(#)]`
-/

namespace A270345.P11623142098961114349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A270345.P11623142098961114349

/-! ## A270345.P8702283369503933811

`filter[A270342(n+1), A066247(#)]`
-/

namespace A270345.P8702283369503933811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A270345.P8702283369503933811

/-! ## A270345.P11682631397077143856

`∩[A002808(n+1), A270342(n+1)]`
-/

namespace A270345.P11682631397077143856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270345.P11682631397077143856

/-! ## A270345.P18108201758625130519

`∩[A018252(n+1), A270342(n+1)]`
-/

namespace A270345.P18108201758625130519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270345.P18108201758625130519

/-! ## A270345.P5011061907624550744

`∩[A065090(n+1), A270342(n+1)]`
-/

namespace A270345.P5011061907624550744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270345.P5011061907624550744

/-! ## A270345.P15097007703452827791

`∩[A091212(n+1), A270342(n+1)]`
-/

namespace A270345.P15097007703452827791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270345.P15097007703452827791

/-! ## A270345.P4386742859067546649

`∩[A141468(n+1), A270342(n+1)]`
-/

namespace A270345.P4386742859067546649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270345.P4386742859067546649

/-! ## A270345.P8372189690066703459

`∩[A145190(n+1), A270342(n+1)]`
-/

namespace A270345.P8372189690066703459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270345.P8372189690066703459

/-! ## A270345.P6484050679649499472

`∩[A179891(n+1), A270342(n+1)]`
-/

namespace A270345.P6484050679649499472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270345.P6484050679649499472

/-! ## A270345.P9462902576955686702

`∩[A257586(n+1), A270342(n+1)]`
-/

namespace A270345.P9462902576955686702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270345.P9462902576955686702

/-!
# A270347: Denominators of r-Egyptian fraction expansion for sqrt(1/2), where r = (1,1/2,1/4,1/8,...)

The programs for A270347, there is no canonical definition to state claims against.
-/

/-! ## A270347.P4263088863069463813

`A270349(A028310(n))-A000007(n)`
-/

namespace A270347.P4263088863069463813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270349 (A028310 n).toNat - A000007 n

end

end A270347.P4263088863069463813

/-! ## A270347.P17708747634642842136

`A270349(A028310(n))-A058343(n)`
-/

namespace A270347.P17708747634642842136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270349 (A028310 n).toNat - A058343 n

end

end A270347.P17708747634642842136

/-! ## A270347.P4462154119355534331

`A270349(A028310(n))-A109151(n)`
-/

namespace A270347.P4462154119355534331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270349 (A028310 n).toNat - A109151 n

end

end A270347.P4462154119355534331

/-! ## A270347.P10989497471014668483

`A270349(A000007(n)+n)-A000007(n)`
-/

namespace A270347.P10989497471014668483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270349 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A270347.P10989497471014668483

/-! ## A270347.P10362392721763570482

`A270349(A058343(n)+n)-A058343(n)`
-/

namespace A270347.P10362392721763570482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270349 (A058343 n + (n : ℤ)).toNat - A058343 n

end

end A270347.P10362392721763570482

/-!
# A270349: Denominators of r-Egyptian fraction expansion for sqrt(2) - 1, where r = (1,1/2,1/4,1/8,...)

The programs for A270349, there is no canonical definition to state claims against.
-/

/-! ## A270349.P14845899230465593550

`A270347(n+2)`
-/

namespace A270349.P14845899230465593550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270347 (n + 2)

end

end A270349.P14845899230465593550

/-!
# A270350: Denominators of r-Egyptian fraction expansion for sqrt(3) - 1, where r = (1, 1/2, 1/4, 1/8, ...)

The programs for A270350, there is no canonical definition to state claims against.
-/

/-! ## A270350.P5358584068329301890

`A381083(A316415(n+1))`
-/

namespace A270350.P5358584068329301890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381083 (A316415 (n + 1)).toNat

end

end A270350.P5358584068329301890

/-!
# A270355: Denominators of r-Egyptian fraction expansion for e - 2, where r = (1, 1/2, 1/4, 1/8, ...)

The programs for A270355, there is no canonical definition to state claims against.
-/

/-! ## A270355.P4007606979048473768

`A146163(n)+A033950(A061300(n))`
-/

namespace A270355.P4007606979048473768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146163 n + A033950 (A061300 n).toNat

end

end A270355.P4007606979048473768

/-!
# A270356: Denominators of r-Egyptian fraction expansion for log(2), where r = (1, 1/2, 1/4, 1/8, ...)

The programs for A270356, there is no canonical definition to state claims against.
-/

/-! ## A270356.P7686305155055101810

`A104552(A001187(n))+A006040(n)`
-/

namespace A270356.P7686305155055101810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104552 (A001187 n).toNat + A006040 n

end

end A270356.P7686305155055101810

/-!
# A270358: Denominators of r-Egyptian fraction expansion for (1/2)^(1/3), where r = (1, 1/2, 1/4, 1/8, ...).

The programs for A270358, there is no canonical definition to state claims against.
-/

/-! ## A270358.P10054418998134610985

`A102750(A326217(n)+1)`
-/

namespace A270358.P10054418998134610985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102750 (A326217 n + 1).toNat

end

end A270358.P10054418998134610985

/-!
# A270359: Positive integer averages of first n Pell numbers; Sum{k=0..n-1} A000129(k) / n where n is in A270342.

The programs for A270359, there is no canonical definition to state claims against.
-/

/-! ## A270359.P3377108483712554260

`floor(A171842(A270342(n+1))/A270342(n+1))`
-/

namespace A270359.P3377108483712554260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A171842 (A270342 (n + 1)).toNat : ℚ) / (A270342 (n + 1) : ℚ)⌋

end

end A270359.P3377108483712554260

/-! ## A270359.P12879437584377782068

`A039088(A003182(n))-A351891(n)`
-/

namespace A270359.P12879437584377782068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039088 (A003182 n).toNat - A351891 n

end

end A270359.P12879437584377782068

/-!
# A270361: Odd primes p for which there exists an odd prime q < p such that p*q - 1 is a square.

The programs for A270361, there is no canonical definition to state claims against.
-/

/-! ## A270361.P16699296235859335080

`A002144(eq[4, A193432(A209874(n))])`
-/

namespace A270361.P16699296235859335080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 (A209874 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270361.P16699296235859335080

/-! ## A270361.P3253979566187982865

`A118751(4*A247419(n+1))`
-/

namespace A270361.P3253979566187982865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118751 (4 * A247419 (n + 1)).toNat

end

end A270361.P3253979566187982865

/-! ## A270361.P10706439384436741786

`∩[A132777(n+1), A171747(n+1)]`
-/

namespace A270361.P10706439384436741786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270361.P10706439384436741786

/-! ## A270361.P2579901547094562953

`∩[A171747(n+1), A304436(n+1)]`
-/

namespace A270361.P2579901547094562953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270361.P2579901547094562953

/-! ## A270361.P295618130350259771

`∩[A171747(n+1), A308416(n+1)]`
-/

namespace A270361.P295618130350259771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270361.P295618130350259771

/-!
# A270362: Running maxima of Stern's diatomic sequence.

The programs for A270362, there is no canonical definition to state claims against.
-/

/-! ## A270362.P8917349750465505439

`A212289(∑[char[A212288(n+1)]]+1)`
-/

namespace A270362.P8917349750465505439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212288 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212289 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A270362.P8917349750465505439

/-!
# A270363: a(n) = (n+1)*Sum_{k=0..(n-1)/2}((binomial(2*n-3*k-2,n-k-1))/(n-k)).

The programs for A270363, there is no canonical definition to state claims against.
-/

/-! ## A270363.P14199880155661419283

`A189177(n)+Δ[A132364(n)]`
-/

namespace A270363.P14199880155661419283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189177 n + (f1 (n + 1) - f1 n)

end

end A270363.P14199880155661419283

/-! ## A270363.P10930440369525166415

`A097882(A149386(n+1))`
-/

namespace A270363.P10930440369525166415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097882 (A149386 (n + 1)).toNat

end

end A270363.P10930440369525166415

/-! ## A270363.P5085897438746262005

`A105518(A095128(n+2))`
-/

namespace A270363.P5085897438746262005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105518 (A095128 (n + 2)).toNat

end

end A270363.P5085897438746262005

/-!
# A270364: Numbers that do not appear in A270362.

The programs for A270364, there is no canonical definition to state claims against.
-/

/-! ## A270364.P2010280542401049525

`comp[A270362(n)]`
-/

namespace A270364.P2010280542401049525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270362 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A270364.P2010280542401049525

/-! ## A270364.P14438949956096256417

`eq[0, A270366(n)]`
-/

namespace A270364.P14438949956096256417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270366 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270364.P14438949956096256417

/-! ## A270364.P17204460657735072067

`comp[record[A002487(n)]]`
-/

namespace A270364.P17204460657735072067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A270364.P17204460657735072067

/-! ## A270364.P13821752461737841978

`comp[record[A007305(n)]]`
-/

namespace A270364.P13821752461737841978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A270364.P13821752461737841978

/-! ## A270364.P8779553295600031254

`comp[A212289(n+1)]`
-/

namespace A270364.P8779553295600031254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A270364.P8779553295600031254

/-! ## A270364.P6212888912446694497

`comp[record[A049455(n+1)]]`
-/

namespace A270364.P6212888912446694497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049455 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A270364.P6212888912446694497

/-! ## A270364.P15680672295480781950

`comp[record[A295087(n+1)]]`
-/

namespace A270364.P15680672295480781950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295087 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A270364.P15680672295480781950

/-! ## A270364.P3492814125494005765

`comp[record[A007306(n)-1]]+1`
-/

namespace A270364.P3492814125494005765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A270364.P3492814125494005765

/-! ## A270364.P17484445999880354873

`comp[record[A007306(n)%A000124(n)]]`
-/

namespace A270364.P17484445999880354873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007306 n) (A000124 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A270364.P17484445999880354873

/-! ## A270364.P16535990938254871708

`eq[char[A212289(n+1)], A000038(n)]`
-/

namespace A270364.P16535990938254871708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212289 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A270364.P16535990938254871708

/-!
# A270365: Successive run lengths in A270362.

The programs for A270365, there is no canonical definition to state claims against.
-/

/-! ## A270365.P18134665931336216979

`Δ[A020946(A212289(n+1))]`
-/

namespace A270365.P18134665931336216979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020946 (A212289 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270365.P18134665931336216979

/-! ## A270365.P9773854898259186097

`Δ[A020946(record[A295087(n+1)])]`
-/

namespace A270365.P9773854898259186097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295087 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020946 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270365.P9773854898259186097

/-! ## A270365.P251015065176936065

`A212288(n+1)-A020946(A212289(n+1))`
-/

namespace A270365.P251015065176936065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212288 (n + 1) - A020946 (A212289 (n + 1)).toNat

end

end A270365.P251015065176936065

/-! ## A270365.P9636889990937008727

`A212288(n+1)-A020946(record[A295087(n+1)])`
-/

namespace A270365.P9636889990937008727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212288 (n + 1) - A020946 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A270365.P9636889990937008727

/-! ## A270365.P14993522433664119310

`A020946(A212289(n+2))-A020946(A212289(n+1))`
-/

namespace A270365.P14993522433664119310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020946 (A212289 (n + 2)).toNat - A020946 (A212289 (n + 1)).toNat

end

end A270365.P14993522433664119310

/-! ## A270365.P12920999866320480811

`Δ[A020946(record[A002487(n)])]`
-/

namespace A270365.P12920999866320480811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020946 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270365.P12920999866320480811

/-!
# A270367: a(n) = (n+1)!*Sum_{k=0..(n-1)/2}((k)!*stirling2(n-k,k+1)/(n-k)!/(k+1)).

The programs for A270367, there is no canonical definition to state claims against.
-/

/-! ## A270367.P2252877042907632171

`A037203(A062119(n+1))+n`
-/

namespace A270367.P2252877042907632171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037203 (A062119 (n + 1)).toNat + (n : ℤ)

end

end A270367.P2252877042907632171

/-! ## A270367.P9356128830876608867

`A003161(n)-A054354(A105492(n+6))`
-/

namespace A270367.P9356128830876608867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003161 n - A054354 (A105492 (n + 6)).toNat

end

end A270367.P9356128830876608867

/-!
# A270368: a(n) = order of the n-th Zassenhaus nearfield.

The programs for A270368, there is no canonical definition to state claims against.
-/

/-! ## A270368.P7807459739248472476

`A001248(A103451(n)+A053211(n+1))`
-/

namespace A270368.P7807459739248472476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (A103451 n + A053211 (n + 1)).toNat

end

end A270368.P7807459739248472476

/-! ## A270368.P7219820943652951748

`A001248(A335454(3*n+4)+A032020(n))`
-/

namespace A270368.P7219820943652951748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (A335454 (3 * n + 4) + A032020 n).toNat

end

end A270368.P7219820943652951748

/-!
# A270369: Expansion of g.f. (1-7*x)/(1-9*x).

The programs for A270369, the canonical program `A270369.P13136369714176242248` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270369 has offset 0).

The definition of A270369 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-7x)/(1-9x))` (program `A270369.P13136369714176242248`, by `A270369.P13136369714176242248.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A270369.P13136369714176242248

`ogf((1-7x)/(1-9x))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A270369

/-- `ogf((1-7x)/(1-9x))` -/
def P13136369714176242248.Spec : Prop :=
  ∀ n, P13136369714176242248.a n = A270369 n

theorem P13136369714176242248.correct : P13136369714176242248.Spec := by
  intro n
  simp only [A270369]

end A270369

/-! ## A270369.P11256971284630476900

`9*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A270369.P11256971284630476900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  9 * a (n - 1)

end

end A270369.P11256971284630476900

namespace A270369

/-- `9*a(n-1)` -/
def P11256971284630476900.Spec : Prop :=
  ∀ n, (P11256971284630476900.a n : ℤ) = A270369 n

end A270369

/-! ## A270369.P17537995111882472066

`ceil(2*9^(n-1))`
-/

namespace A270369.P17537995111882472066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * (9 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A270369.P17537995111882472066

namespace A270369

/-- `ceil(2*9^(n-1))` -/
def P17537995111882472066.Spec : Prop :=
  ∀ n, P17537995111882472066.a n = A270369 n

end A270369

/-! ## A270369.P6116716536454313630

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=2, a(2)=9`
-/

namespace A270369.P6116716536454313630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 9] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A270369.P6116716536454313630

namespace A270369

/-- `abs(∏[-a(n-1)])` -/
def P6116716536454313630.Spec : Prop :=
  ∀ n, P6116716536454313630.a n = A270369 n

end A270369

/-! ## A270369.P3385033199796041280

`a(n-1)/(1/3)²` with `a(0)=1, a(1)=2`
-/

namespace A270369.P3385033199796041280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2

end

end A270369.P3385033199796041280

namespace A270369

/-- `a(n-1)/(1/3)²` -/
def P3385033199796041280.Spec : Prop :=
  ∀ n, P3385033199796041280.a n = (A270369 n : ℚ)

end A270369

/-! ## A270369.P11774935459602695148

`lcm(9^(n-1), a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A270369.P11774935459602695148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((9 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A270369.P11774935459602695148

namespace A270369

/-- `lcm(9^(n-1), a(n-1))` -/
def P11774935459602695148.Spec : Prop :=
  ∀ n, (P11774935459602695148.a n : ℤ) = A270369 n

end A270369

/-! ## A270369.P4167580957795686912

`record[-(a(n-1)/cot(atan(3)))]` with `a(0)=1, a(1)=2`
-/

namespace A270369.P4167580957795686912
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  -(f1 (n - 1) / Real.cot (Real.arctan (3 : ℝ)))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270369.P4167580957795686912

namespace A270369

/-- `record[-(a(n-1)/cot(atan(3)))]` -/
def P4167580957795686912.Spec : Prop :=
  ∀ n, P4167580957795686912.a n = (A270369 n : ℝ)

end A270369

/-! ## A270369.P9980097053451067014

`sqrt(3)^record[lcm(2, n)]-floor(3^(n-1))²`
-/

namespace A270369.P9980097053451067014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (3 : ℝ) ^ f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ ^ 2 : ℝ)

end

end A270369.P9980097053451067014

namespace A270369

/-- `sqrt(3)^record[lcm(2, n)]-floor(3^(n-1))²` -/
def P9980097053451067014.Spec : Prop :=
  ∀ n, P9980097053451067014.a n = (A270369 n : ℝ)

end A270369

/-! ## A270369.P3742522300794866554

`lcm(ceil(3^(n-1))², Δ[floor(3^(n-1))])`
-/

namespace A270369.P3742522300794866554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ ^ 2) (f1 (n + 1) - f1 n)

end

end A270369.P3742522300794866554

namespace A270369

/-- `lcm(ceil(3^(n-1))², Δ[floor(3^(n-1))])` -/
def P3742522300794866554.Spec : Prop :=
  ∀ n, (P3742522300794866554.a n : ℤ) = A270369 n

end A270369

/-! ## A270369.P9533760295099259669

`∑[A052156(n)²]`
-/

namespace A270369.P9533760295099259669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270369.P9533760295099259669

namespace A270369

/-- `∑[A052156(n)²]` -/
def P9533760295099259669.Spec : Prop :=
  ∀ n, P9533760295099259669.a n = A270369 n

end A270369

/-! ## A270369.P18424352104625120013

`∑[∑[A118264(n)]²]`
-/

namespace A270369.P18424352104625120013
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118264 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270369.P18424352104625120013

namespace A270369

/-- `∑[∑[A118264(n)]²]` -/
def P18424352104625120013.Spec : Prop :=
  ∀ n, P18424352104625120013.a n = A270369 n

end A270369

/-! ## A270369.P4356072942354718219

`A154992(2*n)+1`
-/

namespace A270369.P4356072942354718219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154992 (2 * n) + 1

end

end A270369.P4356072942354718219

namespace A270369

/-- `A154992(2*n)+1` -/
def P4356072942354718219.Spec : Prop :=
  ∀ n, P4356072942354718219.a n = A270369 n

end A270369

/-! ## A270369.P13769736070992457555

`round(A025192(n)²/2)`
-/

namespace A270369.P13769736070992457555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A025192 n ^ 2 : ℚ) / 2)

end

end A270369.P13769736070992457555

namespace A270369

/-- `round(A025192(n)²/2)` -/
def P13769736070992457555.Spec : Prop :=
  ∀ n, P13769736070992457555.a n = A270369 n

end A270369

/-! ## A270369.P16699916200709265382

`round(Δ[A140429(n)]²/2)`
-/

namespace A270369.P16699916200709265382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((f1 (n + 1) - f1 n) ^ 2 : ℚ) / 2)

end

end A270369.P16699916200709265382

namespace A270369

/-- `round(Δ[A140429(n)]²/2)` -/
def P16699916200709265382.Spec : Prop :=
  ∀ n, P16699916200709265382.a n = A270369 n

end A270369

/-! ## A270369.P16136652494993854187

`lcm(2, A052156(2*n))/2`
-/

namespace A270369.P16136652494993854187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A052156 (2 * n)) : ℚ) / 2

end

end A270369.P16136652494993854187

namespace A270369

/-- `lcm(2, A052156(2*n))/2` -/
def P16136652494993854187.Spec : Prop :=
  ∀ n, P16136652494993854187.a n = (A270369 n : ℚ)

end A270369

/-! ## A270369.P13091816182075494817

`∑[A326339(n+1)²]+1`
-/

namespace A270369.P13091816182075494817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326339 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A270369.P13091816182075494817

namespace A270369

/-- `∑[A326339(n+1)²]+1` -/
def P13091816182075494817.Spec : Prop :=
  ∀ n, P13091816182075494817.a n = A270369 n

end A270369

/-! ## A270369.P2003017606659941505

`record[A025192(C(n, a(n-1)))]` with `a(0)=1`
-/

namespace A270369.P2003017606659941505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A025192 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270369.P2003017606659941505

namespace A270369

/-- `record[A025192(C(n, a(n-1)))]` -/
def P2003017606659941505.Spec : Prop :=
  ∀ n, P2003017606659941505.a n = A270369 n

end A270369

/-! ## A270369.P5021694008741744109

`a(n-1)+A003946(n-1)²` with `a(0)=1`
-/

namespace A270369.P5021694008741744109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A003946 (n - 1) ^ 2

end

end A270369.P5021694008741744109

namespace A270369

/-- `a(n-1)+A003946(n-1)²` -/
def P5021694008741744109.Spec : Prop :=
  ∀ n, P5021694008741744109.a n = A270369 n

end A270369

/-! ## A270369.P12913106859519460497

`A025192(A004273(n))`
-/

namespace A270369.P12913106859519460497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 (A004273 n).toNat

end

end A270369.P12913106859519460497

namespace A270369

/-- `A025192(A004273(n))` -/
def P12913106859519460497.Spec : Prop :=
  ∀ n, P12913106859519460497.a n = A270369 n

end A270369

/-! ## A270369.P15975548854086800525

`A182522(A130824(n))`
-/

namespace A270369.P15975548854086800525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (A130824 n).toNat

end

end A270369.P15975548854086800525

namespace A270369

/-- `A182522(A130824(n))` -/
def P15975548854086800525.Spec : Prop :=
  ∀ n, P15975548854086800525.a n = A270369 n

end A270369

/-!
# A270370: a(n) = Sum_{k=0..n} (-1)^k*floor(k^(1/3)).

The programs for A270370, the canonical program `A270370.P10737048825820246784` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270370 has offset 0).

The definition of A270370 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270370.P10737048825820246784

`floor(n^(1/3))*(-1)^n/2-((-1)^(floor(n^(1/3))+1)+1)/4`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A270370

/-- `floor(n^(1/3))*(-1)^n/2-((-1)^(floor(n^(1/3))+1)+1)/4` -/
def P10737048825820246784.Spec : Prop :=
  ∀ n, P10737048825820246784.a n = (A270370 n : ℚ)

end A270370

/-! ## A270370.P16781783007930802579

`floor(∑[A048766(n)/(-1)^n])`
-/

namespace A270370.P16781783007930802579
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048766 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A270370.P16781783007930802579

namespace A270370

/-- `floor(∑[A048766(n)/(-1)^n])` -/
def P16781783007930802579.Spec : Prop :=
  ∀ n, P16781783007930802579.a n = A270370 n

end A270370

/-! ## A270370.P15426542498939405863

`floor(A048766(n)/A280560(n))`
-/

namespace A270370.P15426542498939405863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048766 n : ℚ) / (A280560 n : ℚ)⌋

end

end A270370.P15426542498939405863

namespace A270370

/-- `floor(A048766(n)/A280560(n))` -/
def P15426542498939405863.Spec : Prop :=
  ∀ n, P15426542498939405863.a n = A270370 n

end A270370

/-! ## A270370.P12663687660955478619

`ceil(∑[A048766(n)/A033999(n)])`
-/

namespace A270370.P12663687660955478619
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048766 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A270370.P12663687660955478619

namespace A270370

/-- `ceil(∑[A048766(n)/A033999(n)])` -/
def P12663687660955478619.Spec : Prop :=
  ∀ n, P12663687660955478619.a n = A270370 n

end A270370

/-! ## A270370.P11127249929379709325

`floor(A048766(n)/A109265(3*n))`
-/

namespace A270370.P11127249929379709325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048766 n : ℚ) / (A109265 (3 * n) : ℚ)⌋

end

end A270370.P11127249929379709325

namespace A270370

/-- `floor(A048766(n)/A109265(3*n))` -/
def P11127249929379709325.Spec : Prop :=
  ∀ n, P11127249929379709325.a n = A270370 n

end A270370

/-! ## A270370.P3096104725630217634

`A262352(A133555(n+2)+1)`
-/

namespace A270370.P3096104725630217634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262352 (A133555 (n + 2) + 1).toNat

end

end A270370.P3096104725630217634

namespace A270370

/-- `A262352(A133555(n+2)+1)` -/
def P3096104725630217634.Spec : Prop :=
  ∀ n, P3096104725630217634.a n = A270370 n

end A270370

/-! ## A270370.P1003123533541722449

`A262352(A199502(n+2))`
-/

namespace A270370.P1003123533541722449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262352 (A199502 (n + 2)).toNat

end

end A270370.P1003123533541722449

namespace A270370

/-- `A262352(A199502(n+2))` -/
def P1003123533541722449.Spec : Prop :=
  ∀ n, P1003123533541722449.a n = A270370 n

end A270370

/-! ## A270370.P11464436849380488621

`A262352(A133555(n+3))`
-/

namespace A270370.P11464436849380488621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262352 (A133555 (n + 3)).toNat

end

end A270370.P11464436849380488621

namespace A270370

/-- `A262352(A133555(n+3))` -/
def P11464436849380488621.Spec : Prop :=
  ∀ n, P11464436849380488621.a n = A270370 n

end A270370

/-!
# A270371: Denominators of r-Egyptian fraction expansion for sqrt(1/2), where r = (1,1/4,1/9,1/16,...).

The programs for A270371, there is no canonical definition to state claims against.
-/

/-! ## A270371.P339328800515572951

`or(2, A269303(A003266(n)))`
-/

namespace A270371.P339328800515572951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A269303 (A003266 n).toNat)

end

end A270371.P339328800515572951

/-! ## A270371.P9362388561672370063

`A347971(A000110(n))+A001349(n)`
-/

namespace A270371.P9362388561672370063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347971 (A000110 n).toNat + A001349 n

end

end A270371.P9362388561672370063

/-!
# A270372: Denominators of r-Egyptian fraction expansion for sqrt(1/3), where r = (1, 1/4, 1/9, 1/16, ...).

The programs for A270372, there is no canonical definition to state claims against.
-/

/-! ## A270372.P2866285219959432146

`A179988(floor(5*2^n/3)+gcd(2, ∏{p}[n, #]))`
-/

namespace A270372.P2866285219959432146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179988 (⌊5 * ((2 ^ n : ℚ) / 3)⌋ + (Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ)).toNat

end

end A270372.P2866285219959432146

/-!
# A270373: Denominators of r-Egyptian fraction expansion for sqrt(2) - 1, where r = (1, 1/4, 1/9, 1/16, ...).

The programs for A270373, there is no canonical definition to state claims against.
-/

/-! ## A270373.P12273784623483955596

`A240893(3*n+1)+A072847(A000110(n))`
-/

namespace A270373.P12273784623483955596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (3 * n + 1) + A072847 (A000110 n).toNat

end

end A270373.P12273784623483955596

/-!
# A270375: Denominators of r-Egyptian fraction expansion for golden ratio - 1, where r = (1,1/4,1/9,1/16,...).

The programs for A270375, there is no canonical definition to state claims against.
-/

/-! ## A270375.P2526652777238185349

`(n+2)*A067247(A120588(n))`
-/

namespace A270375.P2526652777238185349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A067247 (A120588 n).toNat

end

end A270375.P2526652777238185349

/-! ## A270375.P5807430858015109418

`A004086(n+2)*A058360(A350434(n+1))`
-/

namespace A270375.P5807430858015109418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 2) * A058360 (A350434 (n + 1)).toNat

end

end A270375.P5807430858015109418

/-!
# A270379: Denominators of r-Egyptian fraction expansion for e - 2, where r = (1,1/4,1/9,1/16,...).

The programs for A270379, there is no canonical definition to state claims against.
-/

/-! ## A270379.P14542794976062814810

`A282952(n)+A081164(A057507(n))`
-/

namespace A270379.P14542794976062814810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282952 n + A081164 (A057507 n).toNat

end

end A270379.P14542794976062814810

/-!
# A270380: Denominators of r-Egyptian fraction expansion for log(2), where r = (1,1/4,1/9,1/16,...).

The programs for A270380, there is no canonical definition to state claims against.
-/

/-! ## A270380.P12844028751739351985

`round(3^or(n-2, a(n-1))/5)` with `a(0)=2, a(1)=2`
-/

namespace A270380.P12844028751739351985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  SequenceMachineLib.roundAway ((3 : ℚ) ^ (Int.lor ((n : ℤ) - 2) (a (n - 1)) : ℤ) / 5)

end

end A270380.P12844028751739351985

/-!
# A270381: Denominators of r-Egyptian fraction expansion for the Euler-Mascheroni constant (EulerGamma), where r = (1, 1/4, 1/9, 1/16, ...).

The programs for A270381, there is no canonical definition to state claims against.
-/

/-! ## A270381.P7043941140233393393

`A337194(∏[record[A065600(n)]])`
-/

namespace A270381.P7043941140233393393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337194 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A270381.P7043941140233393393

/-!
# A270383: Number of ordered pairs (i,j) with i >= j, |i|, |j| <= n, and |i * j| <= n.

The programs for A270383, the canonical program `A270383.P3503871390573539058` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270383 has offset 0).

The definition of A270383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270383.P15434895077518418523

`A067274(n)+lcm(2, n^C(2, a(n-1)))` with `a(0)=1`
-/

namespace A270383.P15434895077518418523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A067274 n + (Nat.lcm 2 (n ^ Nat.choose 2 (a (n - 1)).toNat) : ℤ)

end

end A270383.P15434895077518418523

namespace A270383

/-- `A067274(n)+lcm(2, n^C(2, a(n-1)))` -/
def P15434895077518418523.Spec : Prop :=
  ∀ n, P15434895077518418523.a n = A270383 n

end A270383

/-! ## A270383.P12499860549601105984

`A067274(n)+2%A067274(n)`
-/

namespace A270383.P12499860549601105984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067274 n + Int.tmod 2 (A067274 n)

end

end A270383.P12499860549601105984

namespace A270383

/-- `A067274(n)+2%A067274(n)` -/
def P12499860549601105984.Spec : Prop :=
  ∀ n, P12499860549601105984.a n = A270383 n

end A270383

/-! ## A270383.P12045767134847474645

`2*A006590(n+1)+A000196(n)-1`
-/

namespace A270383.P12045767134847474645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006590 (n + 1) + (A000196 n - 1)

end

end A270383.P12045767134847474645

namespace A270383

/-- `2*A006590(n+1)+A000196(n)-1` -/
def P12045767134847474645.Spec : Prop :=
  ∀ n, P12045767134847474645.a n = A270383 n

end A270383

/-! ## A270383.P16630154044447399801

`a(n-1)+2*(A000005(n)+1)+A010052(n)` with `a(0)=1`
-/

namespace A270383.P16630154044447399801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * (A000005 n + 1) + A010052 n

end

end A270383.P16630154044447399801

namespace A270383

/-- `a(n-1)+2*(A000005(n)+1)+A010052(n)` -/
def P16630154044447399801.Spec : Prop :=
  ∀ n, P16630154044447399801.a n = A270383 n

end A270383

/-! ## A270383.P3503871390573539058

`A016861(n)+∑[A042948(A032741(n))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A270383

/-- `A016861(n)+∑[A042948(A032741(n))]` -/
def P3503871390573539058.Spec : Prop :=
  ∀ n, P3503871390573539058.a n = A270383 n

theorem P3503871390573539058.correct : P3503871390573539058.Spec := by
  intro n
  simp only [A270383]

end A270383

/-! ## A270383.P2942292738435072022

`A067274(n)+2*A107286(A107286(n))`
-/

namespace A270383.P2942292738435072022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067274 n + 2 * A107286 (A107286 n).toNat

end

end A270383.P2942292738435072022

namespace A270383

/-- `A067274(n)+2*A107286(A107286(n))` -/
def P2942292738435072022.Spec : Prop :=
  ∀ n, P2942292738435072022.a n = A270383 n

end A270383

/-! ## A270383.P5996770294274408910

`A000196(n)+A106633(n)+A006218(n)`
-/

namespace A270383.P5996770294274408910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n + (A106633 n + A006218 n)

end

end A270383.P5996770294274408910

namespace A270383

/-- `A000196(n)+A106633(n)+A006218(n)` -/
def P5996770294274408910.Spec : Prop :=
  ∀ n, P5996770294274408910.a n = A270383 n

end A270383

/-! ## A270383.P17334819002658322074

`A006590(n+1)+A028392(n)+A006218(n)`
-/

namespace A270383.P17334819002658322074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006590 (n + 1) + (A028392 n + A006218 n)

end

end A270383.P17334819002658322074

namespace A270383

/-- `A006590(n+1)+A028392(n)+A006218(n)` -/
def P17334819002658322074.Spec : Prop :=
  ∀ n, P17334819002658322074.a n = A270383 n

end A270383

/-! ## A270383.P8336092981785684797

`A107286(A047407(n+1))+A067274(n)`
-/

namespace A270383.P8336092981785684797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A047407 (n + 1)).toNat + A067274 n

end

end A270383.P8336092981785684797

namespace A270383

/-- `A107286(A047407(n+1))+A067274(n)` -/
def P8336092981785684797.Spec : Prop :=
  ∀ n, P8336092981785684797.a n = A270383 n

end A270383

/-! ## A270383.P14386776663981795298

`A107286(4*n)+A067274(n)`
-/

namespace A270383.P14386776663981795298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (4 * n) + A067274 n

end

end A270383.P14386776663981795298

namespace A270383

/-- `A107286(4*n)+A067274(n)` -/
def P14386776663981795298.Spec : Prop :=
  ∀ n, P14386776663981795298.a n = A270383 n

end A270383

/-! ## A270383.P10418986822513739345

`A057544(A067274(n))`
-/

namespace A270383.P10418986822513739345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057544 (A067274 n).toNat

end

end A270383.P10418986822513739345

namespace A270383

/-- `A057544(A067274(n))` -/
def P10418986822513739345.Spec : Prop :=
  ∀ n, P10418986822513739345.a n = A270383 n

end A270383

/-! ## A270383.P10359492816320626627

`A067274(n)+and(2, A000122(n²))`
-/

namespace A270383.P10359492816320626627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067274 n + Int.land 2 (A000122 (n ^ 2))

end

end A270383.P10359492816320626627

namespace A270383

/-- `A067274(n)+and(2, A000122(n²))` -/
def P10359492816320626627.Spec : Prop :=
  ∀ n, P10359492816320626627.a n = A270383 n

end A270383

/-!
# A270384: Primes p such that (3/4)(p + 1) - 1 is also prime.

The programs for A270384, the canonical program `A270384.P1537396231614344993` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270384 has offset 1).

The definition of A270384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270384.P1537396231614344993

`p?[ceil(A001749(n+1)/3)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A270384

/-- `p?[ceil(A001749(n+1)/3)]` -/
def P1537396231614344993.Spec : Prop :=
  ∀ n, P1537396231614344993.a n = A270384 (n + 1)

theorem P1537396231614344993.correct : P1537396231614344993.Spec := by
  intro n
  simp only [A270384, Nat.add_sub_cancel]

end A270384

/-! ## A270384.P13058283047241877996

`p?[2*A034934(n+1)+1]`
-/

namespace A270384.P13058283047241877996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034934 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A270384.P13058283047241877996

namespace A270384

/-- `p?[2*A034934(n+1)+1]` -/
def P13058283047241877996.Spec : Prop :=
  ∀ n, P13058283047241877996.a n = A270384 (n + 1)

end A270384

/-! ## A270384.P7314443199379223510

`p?[4*A087370(n+1)-1]`
-/

namespace A270384.P7314443199379223510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A087370 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A270384.P7314443199379223510

namespace A270384

/-- `p?[4*A087370(n+1)-1]` -/
def P7314443199379223510.Spec : Prop :=
  ∀ n, P7314443199379223510.a n = A270384 (n + 1)

end A270384

/-! ## A270384.P5540289955770542990

`p?[A087370(n+1)+A003627(n+1)]`
-/

namespace A270384.P5540289955770542990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1) + A003627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A270384.P5540289955770542990

namespace A270384

/-- `p?[A087370(n+1)+A003627(n+1)]` -/
def P5540289955770542990.Spec : Prop :=
  ∀ n, P5540289955770542990.a n = A270384 (n + 1)

end A270384

/-! ## A270384.P17665928639398433844

`p?[A003627(n+1)+A024893(n+1)+1]`
-/

namespace A270384.P17665928639398433844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1) + (A024893 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A270384.P17665928639398433844

namespace A270384

/-- `p?[A003627(n+1)+A024893(n+1)+1]` -/
def P17665928639398433844.Spec : Prop :=
  ∀ n, P17665928639398433844.a n = A270384 (n + 1)

end A270384

/-! ## A270384.P16413679637765642771

`p?[ceil(4/3*A000040(n+1))]`
-/

namespace A270384.P16413679637765642771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 : ℚ) / 3 * (A000040 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A270384.P16413679637765642771

namespace A270384

/-- `p?[ceil(4/3*A000040(n+1))]` -/
def P16413679637765642771.Spec : Prop :=
  ∀ n, P16413679637765642771.a n = A270384 (n + 1)

end A270384

/-! ## A270384.P14838229776880998801

`p?[A087370(n+1)+A000040(A091177(n+1))]`
-/

namespace A270384.P14838229776880998801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1) + A000040 (A091177 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A270384.P14838229776880998801

namespace A270384

/-- `p?[A087370(n+1)+A000040(A091177(n+1))]` -/
def P14838229776880998801.Spec : Prop :=
  ∀ n, P14838229776880998801.a n = A270384 (n + 1)

end A270384

/-! ## A270384.P14407355633444926430

`record[p?[A006530(3*n+2)+n+1]]`
-/

namespace A270384.P14407355633444926430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * n + 2) + (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270384.P14407355633444926430

namespace A270384

/-- `record[p?[A006530(3*n+2)+n+1]]` -/
def P14407355633444926430.Spec : Prop :=
  ∀ n, P14407355633444926430.a n = A270384 (n + 1)

end A270384

/-! ## A270384.P8912089465333645256

`record[A020639(A020639(3*n+2)+1+n)]`
-/

namespace A270384.P8912089465333645256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020639 (3 * n + 2) + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270384.P8912089465333645256

namespace A270384

/-- `record[A020639(A020639(3*n+2)+1+n)]` -/
def P8912089465333645256.Spec : Prop :=
  ∀ n, P8912089465333645256.a n = A270384 (n + 1)

end A270384

/-! ## A270384.P4095645176334410520

`filter[A114441(n+1), A359152(#)]`
-/

namespace A270384.P4095645176334410520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A270384.P4095645176334410520

namespace A270384

/-- `filter[A114441(n+1), A359152(#)]` -/
def P4095645176334410520.Spec : Prop :=
  ∀ n, P4095645176334410520.a n = A270384 (n + 1)

end A270384

/-! ## A270384.P18429295896192526017

`∩[A002145(n+1), A114441(n+1)]`
-/

namespace A270384.P18429295896192526017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270384.P18429295896192526017

namespace A270384

/-- `∩[A002145(n+1), A114441(n+1)]` -/
def P18429295896192526017.Spec : Prop :=
  ∀ n, (P18429295896192526017.a n : ℤ) = A270384 (n + 1)

end A270384

/-! ## A270384.P9032839299563184234

`∩[A045326(n+1), A114441(n+1)]`
-/

namespace A270384.P9032839299563184234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270384.P9032839299563184234

namespace A270384

/-- `∩[A045326(n+1), A114441(n+1)]` -/
def P9032839299563184234.Spec : Prop :=
  ∀ n, (P9032839299563184234.a n : ℤ) = A270384 (n + 1)

end A270384

/-! ## A270384.P4412902724495201327

`∩[A085760(n+1), A114441(n+1)]`
-/

namespace A270384.P4412902724495201327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270384.P4412902724495201327

namespace A270384

/-- `∩[A085760(n+1), A114441(n+1)]` -/
def P4412902724495201327.Spec : Prop :=
  ∀ n, (P4412902724495201327.a n : ℤ) = A270384 (n + 1)

end A270384

/-! ## A270384.P2922811649446212363

`∩[A094179(n+1), A114441(n+1)]`
-/

namespace A270384.P2922811649446212363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270384.P2922811649446212363

namespace A270384

/-- `∩[A094179(n+1), A114441(n+1)]` -/
def P2922811649446212363.Spec : Prop :=
  ∀ n, (P2922811649446212363.a n : ℤ) = A270384 (n + 1)

end A270384

/-! ## A270384.P3153609741721462554

`∩[A114441(n+1), A380787(n+1)]`
-/

namespace A270384.P3153609741721462554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270384.P3153609741721462554

namespace A270384

/-- `∩[A114441(n+1), A380787(n+1)]` -/
def P3153609741721462554.Spec : Prop :=
  ∀ n, (P3153609741721462554.a n : ℤ) = A270384 (n + 1)

end A270384

/-! ## A270384.P4991037035303478251

`∩[A114441(n+1), A359153(n+1)]`
-/

namespace A270384.P4991037035303478251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270384.P4991037035303478251

namespace A270384

/-- `∩[A114441(n+1), A359153(n+1)]` -/
def P4991037035303478251.Spec : Prop :=
  ∀ n, (P4991037035303478251.a n : ℤ) = A270384 (n + 1)

end A270384

/-! ## A270384.P10337387897765279790

`filter[A114441(n+1), A354028(#)]`
-/

namespace A270384.P10337387897765279790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354028 (f1 j).toNat = 1) n)

end

end A270384.P10337387897765279790

namespace A270384

/-- `filter[A114441(n+1), A354028(#)]` -/
def P10337387897765279790.Spec : Prop :=
  ∀ n, P10337387897765279790.a n = A270384 (n + 1)

end A270384

/-! ## A270384.P15941491168043595049

`∩[A039957(n+1), A114441(n+1)]`
-/

namespace A270384.P15941491168043595049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270384.P15941491168043595049

namespace A270384

/-- `∩[A039957(n+1), A114441(n+1)]` -/
def P15941491168043595049.Spec : Prop :=
  ∀ n, (P15941491168043595049.a n : ℤ) = A270384 (n + 1)

end A270384

/-! ## A270384.P7722178155521985100

`p?[A318839(A072055(n+1))]`
-/

namespace A270384.P7722178155521985100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318839 (A072055 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A270384.P7722178155521985100

namespace A270384

/-- `p?[A318839(A072055(n+1))]` -/
def P7722178155521985100.Spec : Prop :=
  ∀ n, P7722178155521985100.a n = A270384 (n + 1)

end A270384

/-! ## A270384.P7242977019234734382

`p?[A318839(A100484(n+1)+1)]`
-/

namespace A270384.P7242977019234734382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318839 (A100484 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A270384.P7242977019234734382

namespace A270384

/-- `p?[A318839(A100484(n+1)+1)]` -/
def P7242977019234734382.Spec : Prop :=
  ∀ n, P7242977019234734382.a n = A270384 (n + 1)

end A270384

/-!
# A270385: Numbers n such that n^2 is a term of A007692 while n is not.

The programs for A270385, there is no canonical definition to state claims against.
-/

/-! ## A270385.P16861298455184550824

`record[gcd(A084646(n+1), A241513(n))]`
-/

namespace A270385.P16861298455184550824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084646 (n + 1)) (A241513 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270385.P16861298455184550824

/-!
# A270386: Expansion of (4/(3*x/(1-x))) * sin((1/3)*arcsin(sqrt(27*x/4/(1-x))))^2.

The programs for A270386, there is no canonical definition to state claims against.
-/

/-! ## A270386.P3192274237457170876

`A004526(A270339(n+1)+A005809(n))`
-/

namespace A270386.P3192274237457170876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A270339 (n + 1) + A005809 n).toNat

end

end A270386.P3192274237457170876

/-! ## A270386.P9809394734739551720

`A007599(A362271(n+1)+A005809(n))`
-/

namespace A270386.P9809394734739551720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 (A362271 (n + 1) + A005809 n).toNat

end

end A270386.P9809394734739551720

/-!
# A270387: Primes p such that A000129(p) is not a prime number.

The programs for A270387, there is no canonical definition to state claims against.
-/

/-! ## A270387.P14276299296048943350

`p?[record[A317205(A004487(2*n+1))]]`
-/

namespace A270387.P14276299296048943350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317205 (A004487 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A270387.P14276299296048943350

/-!
# A270388: a(n) = A048739(n-2) mod n.

The programs for A270388, the canonical program `A270388.P15396497455566567402` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270388 has offset 2).

The definition of A270388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270388.P15396497455566567402

`A048739(n)%(n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A270388

/-- `A048739(n)%(n+2)` -/
def P15396497455566567402.Spec : Prop :=
  ∀ n, P15396497455566567402.a n = A270388 (n + 2)

theorem P15396497455566567402.correct : P15396497455566567402.Spec := by
  intro n
  simp only [A270388, Nat.add_sub_cancel]

end A270388

/-! ## A270388.P17828745941555899658

`A181658(2*n)%(n+2)`
-/

namespace A270388.P17828745941555899658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181658 (2 * n)) (n + 2 : ℤ)

end

end A270388.P17828745941555899658

namespace A270388

/-- `A181658(2*n)%(n+2)` -/
def P17828745941555899658.Spec : Prop :=
  ∀ n, P17828745941555899658.a n = A270388 (n + 2)

end A270388

/-! ## A270388.P359717987169482022

`∑[∑[A001333(n)]]%(n+2)`
-/

namespace A270388.P359717987169482022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)

end

end A270388.P359717987169482022

namespace A270388

/-- `∑[∑[A001333(n)]]%(n+2)` -/
def P359717987169482022.Spec : Prop :=
  ∀ n, P359717987169482022.a n = A270388 (n + 2)

end A270388

/-! ## A270388.P11897217796690117910

`∑[A000129(n+1)]%(n+2)`
-/

namespace A270388.P11897217796690117910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)

end

end A270388.P11897217796690117910

namespace A270388

/-- `∑[A000129(n+1)]%(n+2)` -/
def P11897217796690117910.Spec : Prop :=
  ∀ n, P11897217796690117910.a n = A270388 (n + 2)

end A270388

/-! ## A270388.P6801445838799953308

`∑[A215928(n+1)]%(n+2)`
-/

namespace A270388.P6801445838799953308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)

end

end A270388.P6801445838799953308

namespace A270388

/-- `∑[A215928(n+1)]%(n+2)` -/
def P6801445838799953308.Spec : Prop :=
  ∀ n, P6801445838799953308.a n = A270388 (n + 2)

end A270388

/-! ## A270388.P2432414931554074084

`(A024537(n+1)-1)%(n+2)`
-/

namespace A270388.P2432414931554074084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024537 (n + 1) - 1) (n + 2 : ℤ)

end

end A270388.P2432414931554074084

namespace A270388

/-- `(A024537(n+1)-1)%(n+2)` -/
def P2432414931554074084.Spec : Prop :=
  ∀ n, P2432414931554074084.a n = A270388 (n + 2)

end A270388

/-!
# A270389: Numbers that are equal to the sum of the number of divisors of their k first powers, for some k.

The programs for A270389, there is no canonical definition to state claims against.
-/

/-! ## A270389.P9086299061009147378

`∑[A324288(∑[n]²²)]`
-/

namespace A270389.P9086299061009147378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324288 (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270389.P9086299061009147378

/-!
# A270390: Greatest common divisor of 2^n-1 and 5^n-1.

The programs for A270390, the canonical program `A270390.P9819227380121629144` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270390 has offset 1).

The definition of A270390 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270390.P9819227380121629144

`gcd(2^(n+1)-1, 5^(n+1)-1)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A270390

/-- `gcd(2^(n+1)-1, 5^(n+1)-1)` -/
def P9819227380121629144.Spec : Prop :=
  ∀ n, (P9819227380121629144.a n : ℤ) = A270390 (n + 1)

theorem P9819227380121629144.correct : P9819227380121629144.Spec := by
  intro n
  simp only [A270390, Nat.add_sub_cancel]

end A270390

/-! ## A270390.P11338326331926326055

`A000265(gcd(∑[5^n], A126646(n)))`
-/

namespace A270390.P11338326331926326055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A126646 n))

end

end A270390.P11338326331926326055

namespace A270390

/-- `A000265(gcd(∑[5^n], A126646(n)))` -/
def P11338326331926326055.Spec : Prop :=
  ∀ n, P11338326331926326055.a n = A270390 (n + 1)

end A270390

/-! ## A270390.P10349062544056748029

`A000027(gcd(A016134(n), A016137(n)))`
-/

namespace A270390.P10349062544056748029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.gcd (A016134 n) (A016137 n))

end

end A270390.P10349062544056748029

namespace A270390

/-- `A000027(gcd(A016134(n), A016137(n)))` -/
def P10349062544056748029.Spec : Prop :=
  ∀ n, P10349062544056748029.a n = A270390 (n + 1)

end A270390

/-! ## A270390.P15088049414697613861

`A000027(gcd(A092794(n+1), A159741(n+1)))`
-/

namespace A270390.P15088049414697613861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.gcd (A092794 (n + 1)) (A159741 (n + 1)))

end

end A270390.P15088049414697613861

namespace A270390

/-- `A000027(gcd(A092794(n+1), A159741(n+1)))` -/
def P15088049414697613861.Spec : Prop :=
  ∀ n, P15088049414697613861.a n = A270390 (n + 1)

end A270390

/-! ## A270390.P3298558528432779404

`A065033(gcd(A016186(n), A134067(n)))`
-/

namespace A270390.P3298558528432779404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.gcd (A016186 n) (A134067 n))

end

end A270390.P3298558528432779404

namespace A270390

/-- `A065033(gcd(A016186(n), A134067(n)))` -/
def P3298558528432779404.Spec : Prop :=
  ∀ n, P3298558528432779404.a n = A270390 (n + 1)

end A270390

/-!
# A270392: The sum of the digits in the periodic part of the decimal expansion of 1/n.

The programs for A270392, there is no canonical definition to state claims against.
-/

/-! ## A270392.P14166287726521392897

`∑{digits}[A036275(n+1), #]`
-/

namespace A270392.P14166287726521392897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036275 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A270392.P14166287726521392897

/-! ## A270392.P16360904479456687378

`∑{digits}[A060284(n+1), #]`
-/

namespace A270392.P16360904479456687378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060284 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A270392.P16360904479456687378

/-! ## A270392.P17193865559474772032

`log2(∏{digits}[A036275(n+1), A329562(#)])`
-/

namespace A270392.P17193865559474772032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036275 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A329562 x).prod : ℤ) : ℝ)

end

end A270392.P17193865559474772032

/-! ## A270392.P3150578689934217545

`log2(∏{digits}[A060284(n+1), A329562(#)])`
-/

namespace A270392.P3150578689934217545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060284 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A329562 x).prod : ℤ) : ℝ)

end

end A270392.P3150578689934217545

/-! ## A270392.P230462288798559202

`A060284(n+1)%A350799(A027383(n))`
-/

namespace A270392.P230462288798559202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060284 (n + 1)) (A350799 (A027383 n).toNat)

end

end A270392.P230462288798559202

/-!
# A270393: Another variant of narcissistic numbers: integers n equal the product of squared digits of n divided by the sum of digits of n, i.e., n = A007954(n)^2/A007953(n).

The programs for A270393, there is no canonical definition to state claims against.
-/

/-! ## A270393.P13812459385866258475

`A257554(∑[4^(∑{digits}[n, #]-∏{digits}[n, #])])`
-/

namespace A270393.P13812459385866258475
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257554 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A270393.P13812459385866258475

/-! ## A270393.P2544528660786107636

`A343050(∑[6^(∑{digits}[n, #]-∏{digits}[n, #])])`
-/

namespace A270393.P2544528660786107636
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343050 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A270393.P2544528660786107636

/-! ## A270393.P386551860452690996

`∪[(∑[50*n]+6)², A257275(n+1)]`
-/

namespace A270393.P386551860452690996
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  50 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 6) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A270393.P386551860452690996

/-! ## A270393.P56374637634834272

`A257554(∑[(2^∑{digits}[n, #%C(n, #)])²])`
-/

namespace A270393.P56374637634834272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x % Nat.choose n x).sum) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257554 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270393.P56374637634834272

/-! ## A270393.P13179358857725636556

`record[A343050(A227355(n))]`
-/

namespace A270393.P13179358857725636556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343050 (A227355 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270393.P13179358857725636556

/-!
# A270397: Denominators of r-Egyptian fraction expansion for sqrt(3) - 1, where r(k) = 1/Fibonacci(k+1).

The programs for A270397, there is no canonical definition to state claims against.
-/

/-! ## A270397.P16575781581004154851

`record[round(tan(A231070(n+1)))]`
-/

namespace A270397.P16575781581004154851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (A231070 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270397.P16575781581004154851

