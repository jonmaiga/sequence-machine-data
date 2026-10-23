import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C013
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
# A127901: Denominators of convergents to 6/Pi^2 based on 1/Zeta(s) = Sum_{k>=1} (mu(k)/k^s).

The programs for A127901, there is no canonical definition to state claims against.
-/

/-! ## A127901.P3112048808915567461

`lcm(A000290(A354418(n+1)), A055634(n))`
-/

namespace A127901.P3112048808915567461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000290 (A354418 (n + 1)).toNat) (A055634 n)

end

end A127901.P3112048808915567461

/-! ## A127901.P18230678734131171815

`A083346(A076786(n+1)!)*A354418(n+1)`
-/

namespace A127901.P18230678734131171815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (Nat.factorial (A076786 (n + 1)).toNat) * A354418 (n + 1)

end

end A127901.P18230678734131171815

/-!
# A127902: Series reversion of x/(1 + x + x^4).

The programs for A127902, there is no canonical definition to state claims against.
-/

/-! ## A127902.P5621293858329224093

`∑[A366646(n)]`
-/

namespace A127902.P5621293858329224093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127902.P5621293858329224093

/-! ## A127902.P15762056061666244913

`A380554(n+1)+A000007(A008859(n))`
-/

namespace A127902.P15762056061666244913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380554 (n + 1) + A000007 (A008859 n).toNat

end

end A127902.P15762056061666244913

/-! ## A127902.P11808744977039696655

`A380554(n+1)+A380534(A118173(n))`
-/

namespace A127902.P11808744977039696655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380554 (n + 1) + A380534 (A118173 n).toNat

end

end A127902.P11808744977039696655

/-! ## A127902.P6726184088103248694

`A380554(n+1)^A036039(A124773(n))`
-/

namespace A127902.P6726184088103248694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380554 (n + 1) : ℚ) ^ (A036039 (A124773 n).toNat : ℤ)

end

end A127902.P6726184088103248694

/-! ## A127902.P5117038674506456854

`A380554(n+1)^A205497(A000001(n))`
-/

namespace A127902.P5117038674506456854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380554 (n + 1) : ℚ) ^ (A205497 (A000001 n).toNat : ℤ)

end

end A127902.P5117038674506456854

/-!
# A127903: Primes arising in A093483.

The programs for A127903, there is no canonical definition to state claims against.
-/

/-! ## A127903.P15143395031035781924

`record[p?[A122317(n)-13]]`
-/

namespace A127903.P15143395031035781924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122317 n - 13

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127903.P15143395031035781924

/-! ## A127903.P7565177377876722776

`p?[A183544(n+1)-47]`
-/

namespace A127903.P7565177377876722776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183544 (n + 1) - 47

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127903.P7565177377876722776

/-! ## A127903.P13204126707233681323

`p?[lt[88, A113703(n+1)]]`
-/

namespace A127903.P13204126707233681323
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  88

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113703 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A127903.P13204126707233681323

/-! ## A127903.P8550368090640302107

`∩[A356944(2*(n+1))-3, A000040(n+4)]`
-/

namespace A127903.P8550368090640302107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356944 (2 * (n + 1)) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127903.P8550368090640302107

/-! ## A127903.P13014948726377005026

`eq[n+1, A106287(n+1)]+7`
-/

namespace A127903.P13014948726377005026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106287 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 7

end

end A127903.P13014948726377005026

/-!
# A127904: Smallest m such that A008687(m) = n.

The programs for A127904, the canonical program `A127904.P13798271488026204075` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127904 has offset 0).

The definition of A127904 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127904.P13798271488026204075

`2*a(n-1)-1` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127904

/-- `2*a(n-1)-1` -/
def P13798271488026204075.Spec : Prop :=
  ∀ n, P13798271488026204075.a n = A127904 n

theorem P13798271488026204075.correct : P13798271488026204075.Spec := by
  intro n
  simp only [A127904]

end A127904

/-! ## A127904.P8882842178797117238

`floor(atan(n)+2^(n-1))`
-/

namespace A127904.P8882842178797117238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌋

end

end A127904.P8882842178797117238

namespace A127904

/-- `floor(atan(n)+2^(n-1))` -/
def P8882842178797117238.Spec : Prop :=
  ∀ n, P8882842178797117238.a n = A127904 n

end A127904

/-! ## A127904.P14830567023119582697

`ogf((x-2x^3)/(1-3x+2x^2))`
-/

namespace A127904.P14830567023119582697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, -2] [1, -3, 2] n

end

end A127904.P14830567023119582697

namespace A127904

/-- `ogf((x-2x^3)/(1-3x+2x^2))` -/
def P14830567023119582697.Spec : Prop :=
  ∀ n, P14830567023119582697.a n = A127904 n

end A127904

/-! ## A127904.P13755879635500643386

`lcm(2, a(n-1))-1` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A127904.P13755879635500643386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  (Int.lcm 2 (a (n - 1)) : ℤ) - 1

end

end A127904.P13755879635500643386

namespace A127904

/-- `lcm(2, a(n-1))-1` -/
def P13755879635500643386.Spec : Prop :=
  ∀ n, P13755879635500643386.a n = A127904 n

end A127904

/-! ## A127904.P13784179743586298621

`a(n-1)+2^(n-2)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A127904.P13784179743586298621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A127904.P13784179743586298621

namespace A127904

/-- `a(n-1)+2^(n-2)` -/
def P13784179743586298621.Spec : Prop :=
  ∀ n, P13784179743586298621.a n = (A127904 n : ℚ)

end A127904

/-! ## A127904.P1644245276968844373

`∑[2^(n-gcd(2, a(n-1)))]` with `a(0)=0, a(1)=1`
-/

namespace A127904.P1644245276968844373
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (2 : ℚ) ^ ((n : ℤ) - (Int.gcd 2 (SequenceMachineLib.roundAway (f1 (n - 1))) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127904.P1644245276968844373

namespace A127904

/-- `∑[2^(n-gcd(2, a(n-1)))]` -/
def P1644245276968844373.Spec : Prop :=
  ∀ n, P1644245276968844373.a n = (A127904 n : ℚ)

end A127904

/-! ## A127904.P8789343571589053686

`ceil(2^(n-1)+(n-1)/(n+1))`
-/

namespace A127904.P8789343571589053686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + ((n : ℤ) - 1 : ℚ) / (n + 1 : ℚ)⌉

end

end A127904.P8789343571589053686

namespace A127904

/-- `ceil(2^(n-1)+(n-1)/(n+1))` -/
def P8789343571589053686.Spec : Prop :=
  ∀ n, P8789343571589053686.a n = A127904 n

end A127904

/-! ## A127904.P14999174158870936756

`floor(a(n-1)+a(n-1)-1)` with `a(0)=0, a(1)=1, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A127904.P14999174158870936756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 1) + (a (n - 1) - 1)

end

end A127904.P14999174158870936756

namespace A127904

/-- `floor(a(n-1)+a(n-1)-1)` -/
def P14999174158870936756.Spec : Prop :=
  ∀ n, P14999174158870936756.a n = A127904 n

theorem P14999174158870936756.correct : P14999174158870936756.Spec := by
  intro n
  simp only [A127904, Nat.add_sub_cancel, A127904.P14999174158870936756.a, A127904.P13798271488026204075.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A127904

/-! ## A127904.P6740736310997530351

`floor(a(n-1)-(1-a(n-1)))` with `a(0)=0, a(1)=1, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A127904.P6740736310997530351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 1) - (1 - a (n - 1))

end

end A127904.P6740736310997530351

namespace A127904

/-- `floor(a(n-1)-(1-a(n-1)))` -/
def P6740736310997530351.Spec : Prop :=
  ∀ n, P6740736310997530351.a n = A127904 n

theorem P6740736310997530351.correct : P6740736310997530351.Spec := by
  intro n
  simp only [A127904, Nat.add_sub_cancel, A127904.P6740736310997530351.a, A127904.P13798271488026204075.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A127904

/-! ## A127904.P12945421686210046940

`a(n-1)-2%n+a(n-1)+1` with `a(0)=0`
-/

namespace A127904.P12945421686210046940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ((2 % n : ℕ) : ℤ) + (a (n - 1) + 1)

end

end A127904.P12945421686210046940

namespace A127904

/-- `a(n-1)-2%n+a(n-1)+1` -/
def P12945421686210046940.Spec : Prop :=
  ∀ n, P12945421686210046940.a n = A127904 n

end A127904

/-! ## A127904.P14913263906083380567

`2-((3-a(n-1))%a(n-1)-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A127904.P14913263906083380567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 - (Int.tmod (3 - a (n - 1)) (a (n - 1)) - a (n - 1))

end

end A127904.P14913263906083380567

namespace A127904

/-- `2-((3-a(n-1))%a(n-1)-a(n-1))` -/
def P14913263906083380567.Spec : Prop :=
  ∀ n, P14913263906083380567.a n = A127904 n

end A127904

/-! ## A127904.P11028102341805797310

`record[A302787(n+1)]`
-/

namespace A127904.P11028102341805797310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127904.P11028102341805797310

namespace A127904

/-- `record[A302787(n+1)]` -/
def P11028102341805797310.Spec : Prop :=
  ∀ n, P11028102341805797310.a n = A127904 n

end A127904

/-! ## A127904.P9275167599385688334

`record[A322821(n+1)]`
-/

namespace A127904.P9275167599385688334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127904.P9275167599385688334

namespace A127904

/-- `record[A322821(n+1)]` -/
def P9275167599385688334.Spec : Prop :=
  ∀ n, P9275167599385688334.a n = A127904 n

end A127904

/-! ## A127904.P344855975750134013

`record[A322995(n+1)]`
-/

namespace A127904.P344855975750134013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127904.P344855975750134013

namespace A127904

/-- `record[A322995(n+1)]` -/
def P344855975750134013.Spec : Prop :=
  ∀ n, P344855975750134013.a n = A127904 n

end A127904

/-! ## A127904.P17318902220090266906

`record[xor(1, A077958(n))]`
-/

namespace A127904.P17318902220090266906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A077958 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127904.P17318902220090266906

namespace A127904

/-- `record[xor(1, A077958(n))]` -/
def P17318902220090266906.Spec : Prop :=
  ∀ n, P17318902220090266906.a n = A127904 n

end A127904

/-! ## A127904.P10142986478425699121

`∑[A166444(char[2]+n)]`
-/

namespace A127904.P10142986478425699121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127904.P10142986478425699121

namespace A127904

/-- `∑[A166444(char[2]+n)]` -/
def P10142986478425699121.Spec : Prop :=
  ∀ n, P10142986478425699121.a n = A127904 n

end A127904

/-! ## A127904.P15133983006491125219

`record[A078029(n+1)+1]`
-/

namespace A127904.P15133983006491125219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078029 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127904.P15133983006491125219

namespace A127904

/-- `record[A078029(n+1)+1]` -/
def P15133983006491125219.Spec : Prop :=
  ∀ n, P15133983006491125219.a n = A127904 n

end A127904

/-! ## A127904.P13846867809596092113

`record[A078030(n+1)+1]`
-/

namespace A127904.P13846867809596092113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078030 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127904.P13846867809596092113

namespace A127904

/-- `record[A078030(n+1)+1]` -/
def P13846867809596092113.Spec : Prop :=
  ∀ n, P13846867809596092113.a n = A127904 n

end A127904

/-! ## A127904.P15529494459422687463

`record[xor(1, A052552(n)-1)]`
-/

namespace A127904.P15529494459422687463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A052552 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127904.P15529494459422687463

namespace A127904

/-- `record[xor(1, A052552(n)-1)]` -/
def P15529494459422687463.Spec : Prop :=
  ∀ n, P15529494459422687463.a n = A127904 n

end A127904

/-! ## A127904.P12873767537147467921

`A297168(A001747(n+1))`
-/

namespace A127904.P12873767537147467921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297168 (A001747 (n + 1)).toNat

end

end A127904.P12873767537147467921

namespace A127904

/-- `A297168(A001747(n+1))` -/
def P12873767537147467921.Spec : Prop :=
  ∀ n, P12873767537147467921.a n = A127904 n

end A127904

/-!
# A127905: Construct triangle in which n-th row is obtained by expanding (1+x+x^3)^n and take the next-to-central column.

The programs for A127905, there is no canonical definition to state claims against.
-/

/-! ## A127905.P7329767561822442028

`n*A071879(abs(1-n))`
-/

namespace A127905.P7329767561822442028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A071879 |1 - (n : ℤ)|.toNat

end

end A127905.P7329767561822442028

/-! ## A127905.P13245528101766336189

`n*A256133(A214083(n))`
-/

namespace A127905.P13245528101766336189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A256133 (A214083 n).toNat

end

end A127905.P13245528101766336189

/-! ## A127905.P15410021507999974039

`n*A032562(A074392(n))`
-/

namespace A127905.P15410021507999974039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032562 (A074392 n).toNat

end

end A127905.P15410021507999974039

/-!
# A127906: a(n) = (n in base 10) * (n in base 2).

The programs for A127906, the canonical program `A127906.P12019539335536084683` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127906 has offset 0).

The definition of A127906 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A127906.P12019539335536084683

`n*A007088(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A127906

/-- `n*A007088(n)` -/
def P12019539335536084683.Spec : Prop :=
  ∀ n, P12019539335536084683.a n = A127906 n

theorem P12019539335536084683.correct : P12019539335536084683.Spec := by
  intro n
  simp only [A127906]

end A127906

/-! ## A127906.P9663706413871382278

`n*sqrt(A063009(n))`
-/

namespace A127906.P9663706413871382278
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A063009 n : ℝ)

end

end A127906.P9663706413871382278

namespace A127906

/-- `n*sqrt(A063009(n))` -/
def P9663706413871382278.Spec : Prop :=
  ∀ n, P9663706413871382278.a n = (A127906 n : ℝ)

end A127906

/-! ## A127906.P11653354676117659422

`n/8*A204095(n)`
-/

namespace A127906.P11653354676117659422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 8 * (A204095 n : ℚ)

end

end A127906.P11653354676117659422

namespace A127906

/-- `n/8*A204095(n)` -/
def P11653354676117659422.Spec : Prop :=
  ∀ n, P11653354676117659422.a n = (A127906 n : ℚ)

end A127906

/-! ## A127906.P5159208649723464382

`n/9*A097256(n)`
-/

namespace A127906.P5159208649723464382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 9 * (A097256 n : ℚ)

end

end A127906.P5159208649723464382

namespace A127906

/-- `n/9*A097256(n)` -/
def P5159208649723464382.Spec : Prop :=
  ∀ n, P5159208649723464382.a n = (A127906 n : ℚ)

end A127906

/-! ## A127906.P5502180751173704285

`n/10*A099820(n)`
-/

namespace A127906.P5502180751173704285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 10 * (A099820 n : ℚ)

end

end A127906.P5502180751173704285

namespace A127906

/-- `n/10*A099820(n)` -/
def P5502180751173704285.Spec : Prop :=
  ∀ n, P5502180751173704285.a n = (A127906 n : ℚ)

end A127906

/-! ## A127906.P11533113823686743822

`n*(A228071(n)+n)`
-/

namespace A127906.P11533113823686743822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A228071 n + (n : ℤ))

end

end A127906.P11533113823686743822

namespace A127906

/-- `n*(A228071(n)+n)` -/
def P11533113823686743822.Spec : Prop :=
  ∀ n, P11533113823686743822.a n = A127906 n

end A127906

/-! ## A127906.P1324602646169622373

`n*(A269130(n)-n)`
-/

namespace A127906.P1324602646169622373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A269130 n - (n : ℤ))

end

end A127906.P1324602646169622373

namespace A127906

/-- `n*(A269130(n)-n)` -/
def P1324602646169622373.Spec : Prop :=
  ∀ n, P1324602646169622373.a n = A127906 n

end A127906

/-! ## A127906.P15351474955809532694

`n/2*A169965(n+1)`
-/

namespace A127906.P15351474955809532694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A169965 (n + 1) : ℚ)

end

end A127906.P15351474955809532694

namespace A127906

/-- `n/2*A169965(n+1)` -/
def P15351474955809532694.Spec : Prop :=
  ∀ n, P15351474955809532694.a n = (A127906 n : ℚ)

end A127906

/-! ## A127906.P530177542120827370

`n/3*A169966(n+1)`
-/

namespace A127906.P530177542120827370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A169966 (n + 1) : ℚ)

end

end A127906.P530177542120827370

namespace A127906

/-- `n/3*A169966(n+1)` -/
def P530177542120827370.Spec : Prop :=
  ∀ n, P530177542120827370.a n = (A127906 n : ℚ)

end A127906

/-! ## A127906.P16491746454665458712

`n/4*A169967(n+1)`
-/

namespace A127906.P16491746454665458712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A169967 (n + 1) : ℚ)

end

end A127906.P16491746454665458712

namespace A127906

/-- `n/4*A169967(n+1)` -/
def P16491746454665458712.Spec : Prop :=
  ∀ n, P16491746454665458712.a n = (A127906 n : ℚ)

end A127906

/-! ## A127906.P4866834457719645719

`n/5*A169964(n+1)`
-/

namespace A127906.P4866834457719645719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 5 * (A169964 (n + 1) : ℚ)

end

end A127906.P4866834457719645719

namespace A127906

/-- `n/5*A169964(n+1)` -/
def P4866834457719645719.Spec : Prop :=
  ∀ n, P4866834457719645719.a n = (A127906 n : ℚ)

end A127906

/-! ## A127906.P1994779073720478462

`n*A303596(A372060(n))`
-/

namespace A127906.P1994779073720478462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A303596 (A372060 n).toNat

end

end A127906.P1994779073720478462

namespace A127906

/-- `n*A303596(A372060(n))` -/
def P1994779073720478462.Spec : Prop :=
  ∀ n, P1994779073720478462.a n = A127906 n

end A127906

/-! ## A127906.P1364666560612661356

`n*(A097256(n)-A204095(n))`
-/

namespace A127906.P1364666560612661356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A097256 n - A204095 n)

end

end A127906.P1364666560612661356

namespace A127906

/-- `n*(A097256(n)-A204095(n))` -/
def P1364666560612661356.Spec : Prop :=
  ∀ n, P1364666560612661356.a n = A127906 n

end A127906

/-! ## A127906.P16613477074202476677

`n*(A169964(n+1)-A169967(n+1))`
-/

namespace A127906.P16613477074202476677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A169964 (n + 1) - A169967 (n + 1))

end

end A127906.P16613477074202476677

namespace A127906

/-- `n*(A169964(n+1)-A169967(n+1))` -/
def P16613477074202476677.Spec : Prop :=
  ∀ n, P16613477074202476677.a n = A127906 n

end A127906

/-! ## A127906.P15792520835463155164

`n*(∑[A138342(n+1)]-A138342(n+1))`
-/

namespace A127906.P15792520835463155164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - A138342 (n + 1))

end

end A127906.P15792520835463155164

namespace A127906

/-- `n*(∑[A138342(n+1)]-A138342(n+1))` -/
def P15792520835463155164.Spec : Prop :=
  ∀ n, P15792520835463155164.a n = A127906 n

end A127906

/-! ## A127906.P5394585600609763735

`n*A304747(A303768(n))`
-/

namespace A127906.P5394585600609763735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A304747 (A303768 n).toNat

end

end A127906.P5394585600609763735

namespace A127906

/-- `n*A304747(A303768(n))` -/
def P5394585600609763735.Spec : Prop :=
  ∀ n, P5394585600609763735.a n = A127906 n

end A127906

/-! ## A127906.P1335811309087758966

`n*A265747(A197911(n))`
-/

namespace A127906.P1335811309087758966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A265747 (A197911 n).toNat

end

end A127906.P1335811309087758966

namespace A127906

/-- `n*A265747(A197911(n))` -/
def P1335811309087758966.Spec : Prop :=
  ∀ n, P1335811309087758966.a n = A127906 n

end A127906

/-! ## A127906.P2311577805683630386

`n*A014550(A006068(n))`
-/

namespace A127906.P2311577805683630386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014550 (A006068 n).toNat

end

end A127906.P2311577805683630386

namespace A127906

/-- `n*A014550(A006068(n))` -/
def P2311577805683630386.Spec : Prop :=
  ∀ n, P2311577805683630386.a n = A127906 n

end A127906

/-! ## A127906.P14181082637958132885

`n*A014550(A292600(2*n))`
-/

namespace A127906.P14181082637958132885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014550 (A292600 (2 * n)).toNat

end

end A127906.P14181082637958132885

namespace A127906

/-- `n*A014550(A292600(2*n))` -/
def P14181082637958132885.Spec : Prop :=
  ∀ n, P14181082637958132885.a n = A127906 n

end A127906

/-! ## A127906.P924226606198748777

`n*A169683(A005187(n))`
-/

namespace A127906.P924226606198748777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A169683 (A005187 n).toNat

end

end A127906.P924226606198748777

namespace A127906

/-- `n*A169683(A005187(n))` -/
def P924226606198748777.Spec : Prop :=
  ∀ n, P924226606198748777.a n = A127906 n

end A127906

/-!
# A127909: Number of different digraphs on n unlabeled nodes which are not graphs.

The programs for A127909, there is no canonical definition to state claims against.
-/

/-! ## A127909.P5713993807045462886

`A000273(n)-A000088(n)`
-/

namespace A127909.P5713993807045462886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000273 n - A000088 n

end

end A127909.P5713993807045462886

/-! ## A127909.P12165835094889262841

`A000273(n)-∑[A002494(n)]`
-/

namespace A127909.P12165835094889262841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000273 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127909.P12165835094889262841

/-! ## A127909.P12567290096951348972

`∑[A053598(n)]-A000088(n)`
-/

namespace A127909.P12567290096951348972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000088 n

end

end A127909.P12567290096951348972

/-! ## A127909.P11304050875983762957

`∑[A053598(n)-A002494(n)]`
-/

namespace A127909.P11304050875983762957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053598 n - A002494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127909.P11304050875983762957

/-! ## A127909.P2096165941555829269

`A000273(n)-(A001349(n)+A000719(n))`
-/

namespace A127909.P2096165941555829269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000273 n - (A001349 n + A000719 n)

end

end A127909.P2096165941555829269

/-!
# A127910: a(n) = A003085(n+1) - A116950(n).

The programs for A127910, there is no canonical definition to state claims against.
-/

/-! ## A127910.P14859975525698741516

`A003085(n+1)-A116950(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127910.P14859975525698741516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003085 (n + 1) - A116950 n

end

end A127910.P14859975525698741516

/-! ## A127910.P4996235038002032318

`A054590(n+1)+A054918(n+1)-A116950(n)`
-/

namespace A127910.P4996235038002032318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054590 (n + 1) + (A054918 (n + 1) - A116950 n)

end

end A127910.P4996235038002032318

/-! ## A127910.P1655218756229408482

`A054932(n+1)+A055969(n+1)-A116950(n)`
-/

namespace A127910.P1655218756229408482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054932 (n + 1) + (A055969 (n + 1) - A116950 n)

end

end A127910.P1655218756229408482

/-! ## A127910.P7997496657550841193

`A054918(n+1)+A054928(n+1)-A054932(n+1)-A116950(n)`
-/

namespace A127910.P7997496657550841193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054918 (n + 1) + (A054928 (n + 1) - A054932 (n + 1)) - A116950 n

end

end A127910.P7997496657550841193

/-! ## A127910.P6274699425915949289

`A054928(n+1)+A055969(n+1)-A054590(n+1)-A116950(n)`
-/

namespace A127910.P6274699425915949289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054928 (n + 1) + (A055969 (n + 1) - A054590 (n + 1)) - A116950 n

end

end A127910.P6274699425915949289

/-!
# A127911: Number of nonisomorphic partial functional graphs with n points which are not functional graphs.

The programs for A127911, there is no canonical definition to state claims against.
-/

/-! ## A127911.P2365074802712968977

`A126285(n)-A001372(n)`
-/

namespace A127911.P2365074802712968977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126285 n - A001372 n

end

end A127911.P2365074802712968977

/-! ## A127911.P13590787524807258243

`A126285(n)-∑[A381123(n)]`
-/

namespace A127911.P13590787524807258243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126285 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127911.P13590787524807258243

/-! ## A127911.P3746085342523147477

`A126285(n)-A254529(n)/n!`
-/

namespace A127911.P3746085342523147477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126285 n : ℚ) - (A254529 n : ℚ) / (Nat.factorial n : ℚ)

end

end A127911.P3746085342523147477

/-! ## A127911.P10265951541855891132

`A126285(n)-A254529(n)/A000142(n)`
-/

namespace A127911.P10265951541855891132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126285 n : ℚ) - (A254529 n : ℚ) / (A000142 n : ℚ)

end

end A127911.P10265951541855891132

/-! ## A127911.P14693348058950543087

`A126285(n)-A254529(n)/∏[A028310(n)]`
-/

namespace A127911.P14693348058950543087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126285 n : ℚ) - (A254529 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A127911.P14693348058950543087

/-!
# A127912: Number of nonisomorphic disconnected mappings (or mapping patterns) from n points to themselves; number of disconnected endofunctions.

The programs for A127912, there is no canonical definition to state claims against.
-/

/-! ## A127912.P2348800564969432510

`Δ[A125023(n)]-A002861(n+1)`
-/

namespace A127912.P2348800564969432510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002861 (n + 1)

end

end A127912.P2348800564969432510

/-! ## A127912.P7512432352790481103

`A001372(n+1)-A002861(n+1)`
-/

namespace A127912.P7512432352790481103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001372 (n + 1) - A002861 (n + 1)

end

end A127912.P7512432352790481103

/-! ## A127912.P1590022437575290687

`A001372(n+1)-(A002862(n+1)+∑[A174145(n)])`
-/

namespace A127912.P1590022437575290687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001372 (n + 1) - (A002862 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127912.P1590022437575290687

/-! ## A127912.P8369596482258580474

`Δ[A125023(n)]-(A002862(n+1)+A000081(n+1))`
-/

namespace A127912.P8369596482258580474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A002862 (n + 1) + A000081 (n + 1))

end

end A127912.P8369596482258580474

/-! ## A127912.P7583509504114460547

`Δ[A125023(n)]-(A124682(n+1)-A000081(n+1))`
-/

namespace A127912.P7583509504114460547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A124682 (n + 1) - A000081 (n + 1))

end

end A127912.P7583509504114460547

/-! ## A127912.P13309058395813529586

`A001372(n+1)-(A002862(n+1)+A000081(n+1))`
-/

namespace A127912.P13309058395813529586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001372 (n + 1) - (A002862 (n + 1) + A000081 (n + 1))

end

end A127912.P13309058395813529586

/-!
# A127913: Least k >= 0 such that A001597(n)+k is an even semiprime.

The programs for A127913, there is no canonical definition to state claims against.
-/

/-! ## A127913.P8254008807638707060

`A100802(∑[A076412(n)])`
-/

namespace A127913.P8254008807638707060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100802 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127913.P8254008807638707060

/-! ## A127913.P2510476372637704889

`A100802(A001597(n+1))`
-/

namespace A127913.P2510476372637704889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100802 (A001597 (n + 1)).toNat

end

end A127913.P2510476372637704889

/-! ## A127913.P5181737099509878269

`A100802(abs(A157985(n+1)))`
-/

namespace A127913.P5181737099509878269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100802 |A157985 (n + 1)|.toNat

end

end A127913.P5181737099509878269

/-! ## A127913.P11348632472957559042

`A100802(sqrt(A340588(n+1)))`
-/

namespace A127913.P11348632472957559042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100802 (SequenceMachineLib.roundAway (Real.sqrt (A340588 (n + 1) : ℝ))).toNat

end

end A127913.P11348632472957559042

/-! ## A127913.P7857803570655546944

`A100802(∑{d}[A157985(n+1), A000010(#)])`
-/

namespace A127913.P7857803570655546944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100802 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A127913.P7857803570655546944

/-!
# A127916: Number of n-digit palindromes in bases 2 and 10. Also difference of A120764(n).

The programs for A127916, there is no canonical definition to state claims against.
-/

/-! ## A127916.P9489170906288483701

`Δ[A120764(n)%Δ[n²]²]`
-/

namespace A127916.P9489170906288483701
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120764 n) (((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127916.P9489170906288483701

/-! ## A127916.P10271502471839519166

`A000038(n)+Δ[A120764(n)]`
-/

namespace A127916.P10271502471839519166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A127916.P10271502471839519166

/-! ## A127916.P15025951519303252547

`Δ[A158388(n)+A120764(n)]`
-/

namespace A127916.P15025951519303252547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A120764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127916.P15025951519303252547

/-! ## A127916.P5513752842152907000

`Δ[A057427(n)*A120764(n)]`
-/

namespace A127916.P5513752842152907000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A120764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127916.P5513752842152907000

/-! ## A127916.P3454324406255245069

`Δ[A120764(n)*A178334(n)]`
-/

namespace A127916.P3454324406255245069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120764 n * A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127916.P3454324406255245069

/-!
# A127917: Product of three numbers: n-th prime, previous number, and following number.

The programs for A127917, the canonical program `A127917.P4502626296132180412` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127917 has offset 1).

The definition of A127917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127917.P16817151408148708827

`2*A127918(n+1)`
-/

namespace A127917.P16817151408148708827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127918 (n + 1)

end

end A127917.P16817151408148708827

namespace A127917

/-- `2*A127918(n+1)` -/
def P16817151408148708827.Spec : Prop :=
  ∀ n, P16817151408148708827.a n = A127917 (n + 1)

end A127917

/-! ## A127917.P97131316171818307

`3*A127919(n+1)`
-/

namespace A127917.P97131316171818307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A127919 (n + 1)

end

end A127917.P97131316171818307

namespace A127917

/-- `3*A127919(n+1)` -/
def P97131316171818307.Spec : Prop :=
  ∀ n, P97131316171818307.a n = A127917 (n + 1)

end A127917

/-! ## A127917.P7591678557662064879

`6*A127920(n+1)`
-/

namespace A127917.P7591678557662064879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A127920 (n + 1)

end

end A127917.P7591678557662064879

namespace A127917

/-- `6*A127920(n+1)` -/
def P7591678557662064879.Spec : Prop :=
  ∀ n, P7591678557662064879.a n = A127917 (n + 1)

end A127917

/-! ## A127917.P4502626296132180412

`6*C(A000040(n+1)+1, 3)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A127917

/-- `6*C(A000040(n+1)+1, 3)` -/
def P4502626296132180412.Spec : Prop :=
  ∀ n, (P4502626296132180412.a n : ℤ) = A127917 (n + 1)

theorem P4502626296132180412.correct : P4502626296132180412.Spec := by
  intro n
  simp only [A127917, Nat.add_sub_cancel]

end A127917

/-! ## A127917.P11258231326540046164

`A030078(n+1)-Δ[A007504(n)]`
-/

namespace A127917.P11258231326540046164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) - (f1 (n + 1) - f1 n)

end

end A127917.P11258231326540046164

namespace A127917

/-- `A030078(n+1)-Δ[A007504(n)]` -/
def P11258231326540046164.Spec : Prop :=
  ∀ n, P11258231326540046164.a n = A127917 (n + 1)

end A127917

/-! ## A127917.P12304326941623119275

`Δ[A007504(n)]*A084920(n+1)`
-/

namespace A127917.P12304326941623119275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A084920 (n + 1)

end

end A127917.P12304326941623119275

namespace A127917

/-- `Δ[A007504(n)]*A084920(n+1)` -/
def P12304326941623119275.Spec : Prop :=
  ∀ n, P12304326941623119275.a n = A127917 (n + 1)

end A127917

/-! ## A127917.P12505058511248520383

`A135177(n+1)+A036689(n+1)`
-/

namespace A127917.P12505058511248520383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135177 (n + 1) + A036689 (n + 1)

end

end A127917.P12505058511248520383

namespace A127917

/-- `A135177(n+1)+A036689(n+1)` -/
def P12505058511248520383.Spec : Prop :=
  ∀ n, P12505058511248520383.a n = A127917 (n + 1)

end A127917

/-! ## A127917.P16533109947402854118

`A030078(n+1)-A000040(n+1)`
-/

namespace A127917.P16533109947402854118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) - A000040 (n + 1)

end

end A127917.P16533109947402854118

namespace A127917

/-- `A030078(n+1)-A000040(n+1)` -/
def P16533109947402854118.Spec : Prop :=
  ∀ n, P16533109947402854118.a n = A127917 (n + 1)

end A127917

/-! ## A127917.P7986651754924895389

`A135178(n+1)-A036690(n+1)`
-/

namespace A127917.P7986651754924895389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135178 (n + 1) - A036690 (n + 1)

end

end A127917.P7986651754924895389

namespace A127917

/-- `A135178(n+1)-A036690(n+1)` -/
def P7986651754924895389.Spec : Prop :=
  ∀ n, P7986651754924895389.a n = A127917 (n + 1)

end A127917

/-! ## A127917.P8657809443593782392

`A153481(n+1)-A040976(n+1)`
-/

namespace A127917.P8657809443593782392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153481 (n + 1) - A040976 (n + 1)

end

end A127917.P8657809443593782392

namespace A127917

/-- `A153481(n+1)-A040976(n+1)` -/
def P8657809443593782392.Spec : Prop :=
  ∀ n, P8657809443593782392.a n = A127917 (n + 1)

end A127917

/-! ## A127917.P4658263851947329998

`A181151(n+1)-A060800(n+1)`
-/

namespace A127917.P4658263851947329998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181151 (n + 1) - A060800 (n + 1)

end

end A127917.P4658263851947329998

namespace A127917

/-- `A181151(n+1)-A060800(n+1)` -/
def P4658263851947329998.Spec : Prop :=
  ∀ n, P4658263851947329998.a n = A127917 (n + 1)

end A127917

/-! ## A127917.P11561432894974580326

`A131991(n+1)-A110833(n+1)`
-/

namespace A127917.P11561432894974580326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131991 (n + 1) - A110833 (n + 1)

end

end A127917.P11561432894974580326

namespace A127917

/-- `A131991(n+1)-A110833(n+1)` -/
def P11561432894974580326.Spec : Prop :=
  ∀ n, P11561432894974580326.a n = A127917 (n + 1)

end A127917

/-! ## A127917.P9548140633068194716

`A181150(n+1)-A072055(n+1)`
-/

namespace A127917.P9548140633068194716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181150 (n + 1) - A072055 (n + 1)

end

end A127917.P9548140633068194716

namespace A127917

/-- `A181150(n+1)-A072055(n+1)` -/
def P9548140633068194716.Spec : Prop :=
  ∀ n, P9548140633068194716.a n = A127917 (n + 1)

end A127917

/-! ## A127917.P17278978537114019737

`A138401(n+1)-A138403(n+1)`
-/

namespace A127917.P17278978537114019737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138401 (n + 1) - A138403 (n + 1)

end

end A127917.P17278978537114019737

namespace A127917

/-- `A138401(n+1)-A138403(n+1)` -/
def P17278978537114019737.Spec : Prop :=
  ∀ n, P17278978537114019737.a n = A127917 (n + 1)

end A127917

/-! ## A127917.P1217007252608373577

`A138404(n+1)-A138406(n+1)`
-/

namespace A127917.P1217007252608373577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138404 (n + 1) - A138406 (n + 1)

end

end A127917.P1217007252608373577

namespace A127917

/-- `A138404(n+1)-A138406(n+1)` -/
def P1217007252608373577.Spec : Prop :=
  ∀ n, P1217007252608373577.a n = A127917 (n + 1)

end A127917

/-! ## A127917.P14891612589598090657

`A138408(n+1)-A138410(n+1)`
-/

namespace A127917.P14891612589598090657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138408 (n + 1) - A138410 (n + 1)

end

end A127917.P14891612589598090657

namespace A127917

/-- `A138408(n+1)-A138410(n+1)` -/
def P14891612589598090657.Spec : Prop :=
  ∀ n, P14891612589598090657.a n = A127917 (n + 1)

end A127917

/-! ## A127917.P13681311549344315250

`A006093(n+1)*A036690(n+1)`
-/

namespace A127917.P13681311549344315250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) * A036690 (n + 1)

end

end A127917.P13681311549344315250

namespace A127917

/-- `A006093(n+1)*A036690(n+1)` -/
def P13681311549344315250.Spec : Prop :=
  ∀ n, P13681311549344315250.a n = A127917 (n + 1)

end A127917

/-! ## A127917.P6626878264362332601

`A008864(n+1)*A036689(n+1)`
-/

namespace A127917.P6626878264362332601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) * A036689 (n + 1)

end

end A127917.P6626878264362332601

namespace A127917

/-- `A008864(n+1)*A036689(n+1)` -/
def P6626878264362332601.Spec : Prop :=
  ∀ n, P6626878264362332601.a n = A127917 (n + 1)

end A127917

/-!
# A127918: Half of product of three numbers: n-th prime, previous and following number.

The programs for A127918, the canonical program `A127918.P3266468254548979396` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127918 has offset 1).

The definition of A127918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127918.P12460985893669133171

`3*A127920(n+1)`
-/

namespace A127918.P12460985893669133171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A127920 (n + 1)

end

end A127918.P12460985893669133171

namespace A127918

/-- `3*A127920(n+1)` -/
def P12460985893669133171.Spec : Prop :=
  ∀ n, P12460985893669133171.a n = A127918 (n + 1)

end A127918

/-! ## A127918.P17525786474397157225

`A127917(n+1)/2`
-/

namespace A127918.P17525786474397157225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127917 (n + 1) : ℚ) / 2

end

end A127918.P17525786474397157225

namespace A127918

/-- `A127917(n+1)/2` -/
def P17525786474397157225.Spec : Prop :=
  ∀ n, P17525786474397157225.a n = (A127918 (n + 1) : ℚ)

end A127918

/-! ## A127918.P17270895293941319065

`3/2*A127919(n+1)`
-/

namespace A127918.P17270895293941319065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A127919 (n + 1) : ℚ)

end

end A127918.P17270895293941319065

namespace A127918

/-- `3/2*A127919(n+1)` -/
def P17270895293941319065.Spec : Prop :=
  ∀ n, P17270895293941319065.a n = (A127918 (n + 1) : ℚ)

end A127918

/-! ## A127918.P3266468254548979396

`3*C(A008864(n+1), 3)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A127918

/-- `3*C(A008864(n+1), 3)` -/
def P3266468254548979396.Spec : Prop :=
  ∀ n, (P3266468254548979396.a n : ℤ) = A127918 (n + 1)

theorem P3266468254548979396.correct : P3266468254548979396.Spec := by
  intro n
  simp only [A127918, Nat.add_sub_cancel]

end A127918

/-! ## A127918.P10416422380348084495

`3*C(A000040(n+1)+1, 3)`
-/

namespace A127918.P10416422380348084495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (A000040 (n + 1) + 1).toNat 3

end

end A127918.P10416422380348084495

namespace A127918

/-- `3*C(A000040(n+1)+1, 3)` -/
def P10416422380348084495.Spec : Prop :=
  ∀ n, (P10416422380348084495.a n : ℤ) = A127918 (n + 1)

end A127918

/-! ## A127918.P6648347339914464308

`3*C(A006093(n+1)+2, 3)`
-/

namespace A127918.P6648347339914464308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (A006093 (n + 1) + 2).toNat 3

end

end A127918.P6648347339914464308

namespace A127918

/-- `3*C(A006093(n+1)+2, 3)` -/
def P6648347339914464308.Spec : Prop :=
  ∀ n, (P6648347339914464308.a n : ℤ) = A127918 (n + 1)

end A127918

/-! ## A127918.P18344336246917780374

`3*C(A040976(n+1)+3, 3)`
-/

namespace A127918.P18344336246917780374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (A040976 (n + 1) + 3).toNat 3

end

end A127918.P18344336246917780374

namespace A127918

/-- `3*C(A040976(n+1)+3, 3)` -/
def P18344336246917780374.Spec : Prop :=
  ∀ n, (P18344336246917780374.a n : ℤ) = A127918 (n + 1)

end A127918

/-! ## A127918.P6151436171438577555

`A117762(n+1)/A054977(n)`
-/

namespace A127918.P6151436171438577555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117762 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A127918.P6151436171438577555

namespace A127918

/-- `A117762(n+1)/A054977(n)` -/
def P6151436171438577555.Spec : Prop :=
  ∀ n, P6151436171438577555.a n = (A127918 (n + 1) : ℚ)

end A127918

/-! ## A127918.P17920444744050344844

`A262354(n+1)/A040002(n)`
-/

namespace A127918.P17920444744050344844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262354 (n + 1) : ℚ) / (A040002 n : ℚ)

end

end A127918.P17920444744050344844

namespace A127918

/-- `A262354(n+1)/A040002(n)` -/
def P17920444744050344844.Spec : Prop :=
  ∀ n, P17920444744050344844.a n = (A127918 (n + 1) : ℚ)

end A127918

/-! ## A127918.P11239008023225469836

`A138416(n+1)+A008837(n+1)`
-/

namespace A127918.P11239008023225469836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138416 (n + 1) + A008837 (n + 1)

end

end A127918.P11239008023225469836

namespace A127918

/-- `A138416(n+1)+A008837(n+1)` -/
def P11239008023225469836.Spec : Prop :=
  ∀ n, P11239008023225469836.a n = A127918 (n + 1)

end A127918

/-! ## A127918.P4499395770293619774

`A127920(n+1)+A127919(n+1)`
-/

namespace A127918.P4499395770293619774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127920 (n + 1) + A127919 (n + 1)

end

end A127918.P4499395770293619774

namespace A127918

/-- `A127920(n+1)+A127919(n+1)` -/
def P4499395770293619774.Spec : Prop :=
  ∀ n, P4499395770293619774.a n = A127918 (n + 1)

end A127918

/-! ## A127918.P5235372805571925717

`A066886(n+1)-A000040(n+1)`
-/

namespace A127918.P5235372805571925717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066886 (n + 1) - A000040 (n + 1)

end

end A127918.P5235372805571925717

namespace A127918

/-- `A066886(n+1)-A000040(n+1)` -/
def P5235372805571925717.Spec : Prop :=
  ∀ n, P5235372805571925717.a n = A127918 (n + 1)

end A127918

/-! ## A127918.P3465339883065550597

`A030078(n+1)-A066886(n+1)`
-/

namespace A127918.P3465339883065550597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) - A066886 (n + 1)

end

end A127918.P3465339883065550597

namespace A127918

/-- `A030078(n+1)-A066886(n+1)` -/
def P3465339883065550597.Spec : Prop :=
  ∀ n, P3465339883065550597.a n = A127918 (n + 1)

end A127918

/-! ## A127918.P12524491071665300083

`A138417(n+1)-A138423(n+1)`
-/

namespace A127918.P12524491071665300083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138417 (n + 1) - A138423 (n + 1)

end

end A127918.P12524491071665300083

namespace A127918

/-- `A138417(n+1)-A138423(n+1)` -/
def P12524491071665300083.Spec : Prop :=
  ∀ n, P12524491071665300083.a n = A127918 (n + 1)

end A127918

/-! ## A127918.P2986722303572333941

`A138424(n+1)-A138432(n+1)`
-/

namespace A127918.P2986722303572333941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138424 (n + 1) - A138432 (n + 1)

end

end A127918.P2986722303572333941

namespace A127918

/-- `A138424(n+1)-A138432(n+1)` -/
def P2986722303572333941.Spec : Prop :=
  ∀ n, P2986722303572333941.a n = A127918 (n + 1)

end A127918

/-! ## A127918.P9648058679493030057

`A138440(n+1)-A138452(n+1)`
-/

namespace A127918.P9648058679493030057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138440 (n + 1) - A138452 (n + 1)

end

end A127918.P9648058679493030057

namespace A127918

/-- `A138440(n+1)-A138452(n+1)` -/
def P9648058679493030057.Spec : Prop :=
  ∀ n, P9648058679493030057.a n = A127918 (n + 1)

end A127918

/-! ## A127918.P6331106528739242457

`A138418(n+1)-A230325(n+1)`
-/

namespace A127918.P6331106528739242457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138418 (n + 1) - A230325 (n + 1)

end

end A127918.P6331106528739242457

namespace A127918

/-- `A138418(n+1)-A230325(n+1)` -/
def P6331106528739242457.Spec : Prop :=
  ∀ n, P6331106528739242457.a n = A127918 (n + 1)

end A127918

/-! ## A127918.P8500086340319334478

`A008837(n+1)*A008864(n+1)`
-/

namespace A127918.P8500086340319334478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) * A008864 (n + 1)

end

end A127918.P8500086340319334478

namespace A127918

/-- `A008837(n+1)*A008864(n+1)` -/
def P8500086340319334478.Spec : Prop :=
  ∀ n, P8500086340319334478.a n = A127918 (n + 1)

end A127918

/-! ## A127918.P1845316181011575773

`A006093(n+1)*A034953(n+1)`
-/

namespace A127918.P1845316181011575773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) * A034953 (n + 1)

end

end A127918.P1845316181011575773

namespace A127918

/-- `A006093(n+1)*A034953(n+1)` -/
def P1845316181011575773.Spec : Prop :=
  ∀ n, P1845316181011575773.a n = A127918 (n + 1)

end A127918

/-! ## A127918.P2133578967494433842

`A006005(n+1)*A084921(n+1)`
-/

namespace A127918.P2133578967494433842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) * A084921 (n + 1)

end

end A127918.P2133578967494433842

namespace A127918

/-- `A006005(n+1)*A084921(n+1)` -/
def P2133578967494433842.Spec : Prop :=
  ∀ n, P2133578967494433842.a n = A127918 (n + 1)

end A127918

/-!
# A127919: 1/3 of product of three numbers: the n-th prime, the previous number and the following number.

The programs for A127919, the canonical program `A127919.P18153344495320485019` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127919 has offset 1).

The definition of A127919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127919.P18048487600665216566

`2*A127920(n+1)`
-/

namespace A127919.P18048487600665216566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127920 (n + 1)

end

end A127919.P18048487600665216566

namespace A127919

/-- `2*A127920(n+1)` -/
def P18048487600665216566.Spec : Prop :=
  ∀ n, P18048487600665216566.a n = A127919 (n + 1)

end A127919

/-! ## A127919.P5859256193658890648

`A127917(n+1)/3`
-/

namespace A127919.P5859256193658890648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127917 (n + 1) : ℚ) / 3

end

end A127919.P5859256193658890648

namespace A127919

/-- `A127917(n+1)/3` -/
def P5859256193658890648.Spec : Prop :=
  ∀ n, P5859256193658890648.a n = (A127919 (n + 1) : ℚ)

end A127919

/-! ## A127919.P4617498390460826375

`2/3*A127918(n+1)`
-/

namespace A127919.P4617498390460826375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A127918 (n + 1) : ℚ)

end

end A127919.P4617498390460826375

namespace A127919

/-- `2/3*A127918(n+1)` -/
def P4617498390460826375.Spec : Prop :=
  ∀ n, P4617498390460826375.a n = (A127919 (n + 1) : ℚ)

end A127919

/-! ## A127919.P18153344495320485019

`2*C(A008864(n+1), 3)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A127919

/-- `2*C(A008864(n+1), 3)` -/
def P18153344495320485019.Spec : Prop :=
  ∀ n, (P18153344495320485019.a n : ℤ) = A127919 (n + 1)

theorem P18153344495320485019.correct : P18153344495320485019.Spec := by
  intro n
  simp only [A127919, Nat.add_sub_cancel]

end A127919

/-! ## A127919.P3739125650732223804

`2*C(A000040(n+1)+1, 3)`
-/

namespace A127919.P3739125650732223804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A000040 (n + 1) + 1).toNat 3

end

end A127919.P3739125650732223804

namespace A127919

/-- `2*C(A000040(n+1)+1, 3)` -/
def P3739125650732223804.Spec : Prop :=
  ∀ n, (P3739125650732223804.a n : ℤ) = A127919 (n + 1)

end A127919

/-! ## A127919.P17725372916499453744

`A262354(n+1)/A040006(n)`
-/

namespace A127919.P17725372916499453744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262354 (n + 1) : ℚ) / (A040006 n : ℚ)

end

end A127919.P17725372916499453744

namespace A127919

/-- `A262354(n+1)/A040006(n)` -/
def P17725372916499453744.Spec : Prop :=
  ∀ n, P17725372916499453744.a n = (A127919 (n + 1) : ℚ)

end A127919

/-! ## A127919.P14665350307985907864

`A127918(n+1)-A127920(n+1)`
-/

namespace A127919.P14665350307985907864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127918 (n + 1) - A127920 (n + 1)

end

end A127919.P14665350307985907864

namespace A127919

/-- `A127918(n+1)-A127920(n+1)` -/
def P14665350307985907864.Spec : Prop :=
  ∀ n, P14665350307985907864.a n = A127919 (n + 1)

end A127919

/-! ## A127919.P13949864685778400429

`A138425(n+1)-A138433(n+1)`
-/

namespace A127919.P13949864685778400429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138425 (n + 1) - A138433 (n + 1)

end

end A127919.P13949864685778400429

namespace A127919

/-- `A138425(n+1)-A138433(n+1)` -/
def P13949864685778400429.Spec : Prop :=
  ∀ n, P13949864685778400429.a n = A127919 (n + 1)

end A127919

/-! ## A127919.P4409173746500517321

`A262247(n+1)-A034953(n+1)`
-/

namespace A127919.P4409173746500517321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262247 (n + 1) - A034953 (n + 1)

end

end A127919.P4409173746500517321

namespace A127919

/-- `A262247(n+1)-A034953(n+1)` -/
def P4409173746500517321.Spec : Prop :=
  ∀ n, P4409173746500517321.a n = A127919 (n + 1)

end A127919

/-! ## A127919.P7525290635733867424

`A138419(n+1)/A000040(n+1)`
-/

namespace A127919.P7525290635733867424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138419 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A127919.P7525290635733867424

namespace A127919

/-- `A138419(n+1)/A000040(n+1)` -/
def P7525290635733867424.Spec : Prop :=
  ∀ n, P7525290635733867424.a n = (A127919 (n + 1) : ℚ)

end A127919

/-! ## A127919.P16870301532675136995

`A138433(n+1)/A001248(n+1)`
-/

namespace A127919.P16870301532675136995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138433 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ)

end

end A127919.P16870301532675136995

namespace A127919

/-- `A138433(n+1)/A001248(n+1)` -/
def P16870301532675136995.Spec : Prop :=
  ∀ n, P16870301532675136995.a n = (A127919 (n + 1) : ℚ)

end A127919

/-! ## A127919.P6405524358879419693

`A138402(n+1)/A001748(n+1)`
-/

namespace A127919.P6405524358879419693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138402 (n + 1) : ℚ) / (A001748 (n + 1) : ℚ)

end

end A127919.P6405524358879419693

namespace A127919

/-- `A138402(n+1)/A001748(n+1)` -/
def P6405524358879419693.Spec : Prop :=
  ∀ n, P6405524358879419693.a n = (A127919 (n + 1) : ℚ)

end A127919

/-! ## A127919.P7208567082395926646

`A138454(n+1)/A030078(n+1)`
-/

namespace A127919.P7208567082395926646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138454 (n + 1) : ℚ) / (A030078 (n + 1) : ℚ)

end

end A127919.P7208567082395926646

namespace A127919

/-- `A138454(n+1)/A030078(n+1)` -/
def P7208567082395926646.Spec : Prop :=
  ∀ n, P7208567082395926646.a n = (A127919 (n + 1) : ℚ)

end A127919

/-! ## A127919.P12960096429164215758

`A138425(n+1)/A066872(n+1)`
-/

namespace A127919.P12960096429164215758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138425 (n + 1) : ℚ) / (A066872 (n + 1) : ℚ)

end

end A127919.P12960096429164215758

namespace A127919

/-- `A138425(n+1)/A066872(n+1)` -/
def P12960096429164215758.Spec : Prop :=
  ∀ n, P12960096429164215758.a n = (A127919 (n + 1) : ℚ)

end A127919

/-! ## A127919.P2465764827784903166

`A138445(n+1)/A066886(n+1)`
-/

namespace A127919.P2465764827784903166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138445 (n + 1) : ℚ) / (A066886 (n + 1) : ℚ)

end

end A127919.P2465764827784903166

namespace A127919

/-- `A138445(n+1)/A066886(n+1)` -/
def P2465764827784903166.Spec : Prop :=
  ∀ n, P2465764827784903166.a n = (A127919 (n + 1) : ℚ)

end A127919

/-! ## A127919.P10445800235191746559

`A138406(n+1)/A079705(n+1)`
-/

namespace A127919.P10445800235191746559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) : ℚ) / (A079705 (n + 1) : ℚ)

end

end A127919.P10445800235191746559

namespace A127919

/-- `A138406(n+1)/A079705(n+1)` -/
def P10445800235191746559.Spec : Prop :=
  ∀ n, P10445800235191746559.a n = (A127919 (n + 1) : ℚ)

end A127919

/-! ## A127919.P16354442486417909430

`A262354(n+1)/(A123932(n)+2)`
-/

namespace A127919.P16354442486417909430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262354 (n + 1) : ℚ) / (A123932 n + 2 : ℚ)

end

end A127919.P16354442486417909430

namespace A127919

/-- `A262354(n+1)/(A123932(n)+2)` -/
def P16354442486417909430.Spec : Prop :=
  ∀ n, P16354442486417909430.a n = (A127919 (n + 1) : ℚ)

end A127919

/-! ## A127919.P636277774680403098

`2*A262354(n+1)/A040030(n)`
-/

namespace A127919.P636277774680403098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A262354 (n + 1) : ℚ) / (A040030 n : ℚ))

end

end A127919.P636277774680403098

namespace A127919

/-- `2*A262354(n+1)/A040030(n)` -/
def P636277774680403098.Spec : Prop :=
  ∀ n, P636277774680403098.a n = (A127919 (n + 1) : ℚ)

end A127919

/-! ## A127919.P6197677650683477234

`A138425(n+1)%A138419(n+1)`
-/

namespace A127919.P6197677650683477234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138425 (n + 1)) (A138419 (n + 1))

end

end A127919.P6197677650683477234

namespace A127919

/-- `A138425(n+1)%A138419(n+1)` -/
def P6197677650683477234.Spec : Prop :=
  ∀ n, P6197677650683477234.a n = A127919 (n + 1)

end A127919

/-! ## A127919.P7022484092252745385

`A138456(n+1)%A153481(n+1)`
-/

namespace A127919.P7022484092252745385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138456 (n + 1)) (A153481 (n + 1))

end

end A127919.P7022484092252745385

namespace A127919

/-- `A138456(n+1)%A153481(n+1)` -/
def P7022484092252745385.Spec : Prop :=
  ∀ n, P7022484092252745385.a n = A127919 (n + 1)

end A127919

/-!
# A127920: 1/6 of product of three numbers: n-th prime, previous and following number.

The programs for A127920, the canonical program `A127920.P1899935215268348754` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127920 has offset 1).

The definition of A127920 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127918, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A127920.P1899935215268348754

`A127918(n+1)/3`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A127920

/-- `A127918(n+1)/3` -/
def P1899935215268348754.Spec : Prop :=
  ∀ n, P1899935215268348754.a n = (A127920 (n + 1) : ℚ)

end A127920

/-! ## A127920.P2399778668670103880

`A127919(n+1)/2`
-/

namespace A127920.P2399778668670103880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127919 (n + 1) : ℚ) / 2

end

end A127920.P2399778668670103880

namespace A127920

/-- `A127919(n+1)/2` -/
def P2399778668670103880.Spec : Prop :=
  ∀ n, P2399778668670103880.a n = (A127920 (n + 1) : ℚ)

end A127920

/-! ## A127920.P15732093611662564328

`A127917(n+1)/6`
-/

namespace A127920.P15732093611662564328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127917 (n + 1) : ℚ) / 6

end

end A127920.P15732093611662564328

namespace A127920

/-- `A127917(n+1)/6` -/
def P15732093611662564328.Spec : Prop :=
  ∀ n, P15732093611662564328.a n = (A127920 (n + 1) : ℚ)

end A127920

/-! ## A127920.P3918874942524499123

`C(A008864(n+1), 3)`
-/

namespace A127920.P3918874942524499123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008864 (n + 1)).toNat 3

end

end A127920.P3918874942524499123

namespace A127920

/-- `C(A008864(n+1), 3)` -/
def P3918874942524499123.Spec : Prop :=
  ∀ n, (P3918874942524499123.a n : ℤ) = A127920 (n + 1)

end A127920

/-! ## A127920.P4504742337495972363

`C(A028815(n+1), 3)`
-/

namespace A127920.P4504742337495972363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028815 (n + 1)).toNat 3

end

end A127920.P4504742337495972363

namespace A127920

/-- `C(A028815(n+1), 3)` -/
def P4504742337495972363.Spec : Prop :=
  ∀ n, (P4504742337495972363.a n : ℤ) = A127920 (n + 1)

end A127920

/-! ## A127920.P2179446978011843667

`C(∑[A125266(n+1)], 3)`
-/

namespace A127920.P2179446978011843667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 3

end

end A127920.P2179446978011843667

namespace A127920

/-- `C(∑[A125266(n+1)], 3)` -/
def P2179446978011843667.Spec : Prop :=
  ∀ n, (P2179446978011843667.a n : ℤ) = A127920 (n + 1)

end A127920

/-! ## A127920.P1833307227236550690

`C(Δ[A007504(n)]+1, 3)`
-/

namespace A127920.P1833307227236550690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n + 1).toNat 3

end

end A127920.P1833307227236550690

namespace A127920

/-- `C(Δ[A007504(n)]+1, 3)` -/
def P1833307227236550690.Spec : Prop :=
  ∀ n, (P1833307227236550690.a n : ℤ) = A127920 (n + 1)

end A127920

/-! ## A127920.P14210682985460379923

`C(A000040(n+1)+1, 3)`
-/

namespace A127920.P14210682985460379923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 1) + 1).toNat 3

end

end A127920.P14210682985460379923

namespace A127920

/-- `C(A000040(n+1)+1, 3)` -/
def P14210682985460379923.Spec : Prop :=
  ∀ n, (P14210682985460379923.a n : ℤ) = A127920 (n + 1)

end A127920

/-! ## A127920.P1752440784717890149

`A262354(n+1)/A040030(n)`
-/

namespace A127920.P1752440784717890149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262354 (n + 1) : ℚ) / (A040030 n : ℚ)

end

end A127920.P1752440784717890149

namespace A127920

/-- `A262354(n+1)/A040030(n)` -/
def P1752440784717890149.Spec : Prop :=
  ∀ n, P1752440784717890149.a n = (A127920 (n + 1) : ℚ)

end A127920

/-! ## A127920.P3693696137558944463

`A127918(n+1)-A127919(n+1)`
-/

namespace A127920.P3693696137558944463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127918 (n + 1) - A127919 (n + 1)

end

end A127920.P3693696137558944463

namespace A127920

/-- `A127918(n+1)-A127919(n+1)` -/
def P3693696137558944463.Spec : Prop :=
  ∀ n, P3693696137558944463.a n = A127920 (n + 1)

end A127920

/-! ## A127920.P6590328603222822277

`A138427(n+1)-A138435(n+1)`
-/

namespace A127920.P6590328603222822277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138427 (n + 1) - A138435 (n + 1)

end

end A127920.P6590328603222822277

namespace A127920

/-- `A138427(n+1)-A138435(n+1)` -/
def P6590328603222822277.Spec : Prop :=
  ∀ n, P6590328603222822277.a n = A127920 (n + 1)

end A127920

/-! ## A127920.P17690673811664264045

`A271512(n+1)-A110833(n+1)`
-/

namespace A127920.P17690673811664264045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271512 (n + 1) - A110833 (n + 1)

end

end A127920.P17690673811664264045

namespace A127920

/-- `A271512(n+1)-A110833(n+1)` -/
def P17690673811664264045.Spec : Prop :=
  ∀ n, P17690673811664264045.a n = A127920 (n + 1)

end A127920

/-! ## A127920.P15373653856049263734

`A138445(n+1)-A253655(n+1)`
-/

namespace A127920.P15373653856049263734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138445 (n + 1) - A253655 (n + 1)

end

end A127920.P15373653856049263734

namespace A127920

/-- `A138445(n+1)-A253655(n+1)` -/
def P15373653856049263734.Spec : Prop :=
  ∀ n, P15373653856049263734.a n = A127920 (n + 1)

end A127920

/-! ## A127920.P1797152010131869511

`A138421(n+1)/A000040(n+1)`
-/

namespace A127920.P1797152010131869511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138421 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A127920.P1797152010131869511

namespace A127920

/-- `A138421(n+1)/A000040(n+1)` -/
def P1797152010131869511.Spec : Prop :=
  ∀ n, P1797152010131869511.a n = (A127920 (n + 1) : ℚ)

end A127920

/-! ## A127920.P16708651638409723453

`A138435(n+1)/A001248(n+1)`
-/

namespace A127920.P16708651638409723453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138435 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ)

end

end A127920.P16708651638409723453

namespace A127920

/-- `A138435(n+1)/A001248(n+1)` -/
def P16708651638409723453.Spec : Prop :=
  ∀ n, P16708651638409723453.a n = (A127920 (n + 1) : ℚ)

end A127920

/-! ## A127920.P13606511589051341098

`A138418(n+1)/A001748(n+1)`
-/

namespace A127920.P13606511589051341098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138418 (n + 1) : ℚ) / (A001748 (n + 1) : ℚ)

end

end A127920.P13606511589051341098

namespace A127920

/-- `A138418(n+1)/A001748(n+1)` -/
def P13606511589051341098.Spec : Prop :=
  ∀ n, P13606511589051341098.a n = (A127920 (n + 1) : ℚ)

end A127920

/-! ## A127920.P9447267336847450833

`A138456(n+1)/A030078(n+1)`
-/

namespace A127920.P9447267336847450833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138456 (n + 1) : ℚ) / (A030078 (n + 1) : ℚ)

end

end A127920.P9447267336847450833

namespace A127920

/-- `A138456(n+1)/A030078(n+1)` -/
def P9447267336847450833.Spec : Prop :=
  ∀ n, P9447267336847450833.a n = (A127920 (n + 1) : ℚ)

end A127920

/-! ## A127920.P16945157620838713657

`A138427(n+1)/A066872(n+1)`
-/

namespace A127920.P16945157620838713657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138427 (n + 1) : ℚ) / (A066872 (n + 1) : ℚ)

end

end A127920.P16945157620838713657

namespace A127920

/-- `A138427(n+1)/A066872(n+1)` -/
def P16945157620838713657.Spec : Prop :=
  ∀ n, P16945157620838713657.a n = (A127920 (n + 1) : ℚ)

end A127920

/-! ## A127920.P7196844074818739813

`A138447(n+1)/A066886(n+1)`
-/

namespace A127920.P7196844074818739813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138447 (n + 1) : ℚ) / (A066886 (n + 1) : ℚ)

end

end A127920.P7196844074818739813

namespace A127920

/-- `A138447(n+1)/A066886(n+1)` -/
def P7196844074818739813.Spec : Prop :=
  ∀ n, P7196844074818739813.a n = (A127920 (n + 1) : ℚ)

end A127920

/-! ## A127920.P2298404317049817612

`A138432(n+1)/A079705(n+1)`
-/

namespace A127920.P2298404317049817612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138432 (n + 1) : ℚ) / (A079705 (n + 1) : ℚ)

end

end A127920.P2298404317049817612

namespace A127920

/-- `A138432(n+1)/A079705(n+1)` -/
def P2298404317049817612.Spec : Prop :=
  ∀ n, P2298404317049817612.a n = (A127920 (n + 1) : ℚ)

end A127920

/-!
# A127921: 1/12 of product of three numbers: n-th prime, previous and following number.

The programs for A127921, the canonical program `A127921.P7066535292826904335` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127921 has offset 2).

The definition of A127921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127921.P15226367090748990157

`C(p?[2*n+1]+1, 3)/2`
-/

namespace A127921.P15226367090748990157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1) 3 : ℚ) / 2

end

end A127921.P15226367090748990157

namespace A127921

/-- `C(p?[2*n+1]+1, 3)/2` -/
def P15226367090748990157.Spec : Prop :=
  ∀ n, P15226367090748990157.a n = (A127921 (n + 2) : ℚ)

end A127921

/-! ## A127921.P14994107605832233585

`2*A127922(n+2)`
-/

namespace A127921.P14994107605832233585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127922 (n + 2)

end

end A127921.P14994107605832233585

namespace A127921

/-- `2*A127922(n+2)` -/
def P14994107605832233585.Spec : Prop :=
  ∀ n, P14994107605832233585.a n = A127921 (n + 2)

end A127921

/-! ## A127921.P7066535292826904335

`2*(A191590(n+2)+A074367(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A127921

/-- `2*(A191590(n+2)+A074367(n+1))` -/
def P7066535292826904335.Spec : Prop :=
  ∀ n, P7066535292826904335.a n = A127921 (n + 2)

theorem P7066535292826904335.correct : P7066535292826904335.Spec := by
  intro n
  simp only [A127921, Nat.add_sub_cancel]

end A127921

/-! ## A127921.P2486491734118582428

`A127920(n+2)/2`
-/

namespace A127921.P2486491734118582428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127920 (n + 2) : ℚ) / 2

end

end A127921.P2486491734118582428

namespace A127921

/-- `A127920(n+2)/2` -/
def P2486491734118582428.Spec : Prop :=
  ∀ n, P2486491734118582428.a n = (A127921 (n + 2) : ℚ)

end A127921

/-! ## A127921.P8337480397834115007

`A127919(n+2)/4`
-/

namespace A127921.P8337480397834115007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127919 (n + 2) : ℚ) / 4

end

end A127921.P8337480397834115007

namespace A127921

/-- `A127919(n+2)/4` -/
def P8337480397834115007.Spec : Prop :=
  ∀ n, P8337480397834115007.a n = (A127921 (n + 2) : ℚ)

end A127921

/-! ## A127921.P1137553946561922084

`A117762(n+2)/6`
-/

namespace A127921.P1137553946561922084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117762 (n + 2) : ℚ) / 6

end

end A127921.P1137553946561922084

namespace A127921

/-- `A117762(n+2)/6` -/
def P1137553946561922084.Spec : Prop :=
  ∀ n, P1137553946561922084.a n = (A127921 (n + 2) : ℚ)

end A127921

/-! ## A127921.P10851252171509736051

`A127918(n+2)/6`
-/

namespace A127921.P10851252171509736051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127918 (n + 2) : ℚ) / 6

end

end A127921.P10851252171509736051

namespace A127921

/-- `A127918(n+2)/6` -/
def P10851252171509736051.Spec : Prop :=
  ∀ n, P10851252171509736051.a n = (A127921 (n + 2) : ℚ)

end A127921

/-! ## A127921.P2439826332106299112

`C(A000040(n+2)+1, 3)/2`
-/

namespace A127921.P2439826332106299112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000040 (n + 2) + 1).toNat 3 : ℚ) / 2

end

end A127921.P2439826332106299112

namespace A127921

/-- `C(A000040(n+2)+1, 3)/2` -/
def P2439826332106299112.Spec : Prop :=
  ∀ n, P2439826332106299112.a n = (A127921 (n + 2) : ℚ)

end A127921

/-! ## A127921.P6579549418596791345

`2*C(A040976(n+2)+3, 3)/4`
-/

namespace A127921.P6579549418596791345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose (A040976 (n + 2) + 3).toNat 3 : ℚ) / 4)

end

end A127921.P6579549418596791345

namespace A127921

/-- `2*C(A040976(n+2)+3, 3)/4` -/
def P6579549418596791345.Spec : Prop :=
  ∀ n, P6579549418596791345.a n = (A127921 (n + 2) : ℚ)

end A127921

/-! ## A127921.P3715117659091146429

`A138422(n+2)/A000040(n+2)`
-/

namespace A127921.P3715117659091146429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138422 (n + 2) : ℚ) / (A000040 (n + 2) : ℚ)

end

end A127921.P3715117659091146429

namespace A127921

/-- `A138422(n+2)/A000040(n+2)` -/
def P3715117659091146429.Spec : Prop :=
  ∀ n, P3715117659091146429.a n = (A127921 (n + 2) : ℚ)

end A127921

/-! ## A127921.P11765231034500256197

`A138459(n+2)/A030078(n+2)`
-/

namespace A127921.P11765231034500256197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138459 (n + 2) : ℚ) / (A030078 (n + 2) : ℚ)

end

end A127921.P11765231034500256197

namespace A127921

/-- `A138459(n+2)/A030078(n+2)` -/
def P11765231034500256197.Spec : Prop :=
  ∀ n, P11765231034500256197.a n = (A127921 (n + 2) : ℚ)

end A127921

/-! ## A127921.P10544417068177074288

`A138421(n+2)/A100484(n+2)`
-/

namespace A127921.P10544417068177074288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138421 (n + 2) : ℚ) / (A100484 (n + 2) : ℚ)

end

end A127921.P10544417068177074288

namespace A127921

/-- `A138421(n+2)/A100484(n+2)` -/
def P10544417068177074288.Spec : Prop :=
  ∀ n, P10544417068177074288.a n = (A127921 (n + 2) : ℚ)

end A127921

/-! ## A127921.P2515572548166734683

`A138437(n+2)/A000040(n+2)²`
-/

namespace A127921.P2515572548166734683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138437 (n + 2) : ℚ) / (A000040 (n + 2) ^ 2 : ℚ)

end

end A127921.P2515572548166734683

namespace A127921

/-- `A138437(n+2)/A000040(n+2)²` -/
def P2515572548166734683.Spec : Prop :=
  ∀ n, P2515572548166734683.a n = (A127921 (n + 2) : ℚ)

end A127921

/-! ## A127921.P12407885312847895094

`A138433(n+2)/A100484(n+2)²`
-/

namespace A127921.P12407885312847895094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138433 (n + 2) : ℚ) / (A100484 (n + 2) ^ 2 : ℚ)

end

end A127921.P12407885312847895094

namespace A127921

/-- `A138433(n+2)/A100484(n+2)²` -/
def P12407885312847895094.Spec : Prop :=
  ∀ n, P12407885312847895094.a n = (A127921 (n + 2) : ℚ)

end A127921

/-! ## A127921.P5621544442956551043

`A138421(n+2)²/A138433(n+2)`
-/

namespace A127921.P5621544442956551043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138421 (n + 2) ^ 2 : ℚ) / (A138433 (n + 2) : ℚ)

end

end A127921.P5621544442956551043

namespace A127921

/-- `A138421(n+2)²/A138433(n+2)` -/
def P5621544442956551043.Spec : Prop :=
  ∀ n, P5621544442956551043.a n = (A127921 (n + 2) : ℚ)

end A127921

/-! ## A127921.P566759248622991584

`A138421(n+2)/(2*A000040(n+2))`
-/

namespace A127921.P566759248622991584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138421 (n + 2) : ℚ) / (2 * A000040 (n + 2) : ℚ)

end

end A127921.P566759248622991584

namespace A127921

/-- `A138421(n+2)/(2*A000040(n+2))` -/
def P566759248622991584.Spec : Prop :=
  ∀ n, P566759248622991584.a n = (A127921 (n + 2) : ℚ)

end A127921

/-! ## A127921.P16193840416600440610

`2/A100484(n+2)*A138422(n+2)`
-/

namespace A127921.P16193840416600440610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A100484 (n + 2) : ℚ) * (A138422 (n + 2) : ℚ)

end

end A127921.P16193840416600440610

namespace A127921

/-- `2/A100484(n+2)*A138422(n+2)` -/
def P16193840416600440610.Spec : Prop :=
  ∀ n, P16193840416600440610.a n = (A127921 (n + 2) : ℚ)

end A127921

/-! ## A127921.P1824366084067601064

`A127920(n+2)-A127922(n+2)-A127922(n+2)`
-/

namespace A127921.P1824366084067601064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127920 (n + 2) - A127922 (n + 2) - A127922 (n + 2)

end

end A127921.P1824366084067601064

namespace A127921

/-- `A127920(n+2)-A127922(n+2)-A127922(n+2)` -/
def P1824366084067601064.Spec : Prop :=
  ∀ n, P1824366084067601064.a n = A127921 (n + 2)

end A127921

/-! ## A127921.P312952611937472299

`A138459(n+2)/(A135177(n+2)+A001248(n+2))`
-/

namespace A127921.P312952611937472299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138459 (n + 2) : ℚ) / (A135177 (n + 2) + A001248 (n + 2) : ℚ)

end

end A127921.P312952611937472299

namespace A127921

/-- `A138459(n+2)/(A135177(n+2)+A001248(n+2))` -/
def P312952611937472299.Spec : Prop :=
  ∀ n, P312952611937472299.a n = (A127921 (n + 2) : ℚ)

end A127921

/-! ## A127921.P16425035829510418623

`A138421(n+2)/(A036690(n+2)-A036689(n+2))`
-/

namespace A127921.P16425035829510418623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138421 (n + 2) : ℚ) / (A036690 (n + 2) - A036689 (n + 2) : ℚ)

end

end A127921.P16425035829510418623

namespace A127921

/-- `A138421(n+2)/(A036690(n+2)-A036689(n+2))` -/
def P16425035829510418623.Spec : Prop :=
  ∀ n, P16425035829510418623.a n = (A127921 (n + 2) : ℚ)

end A127921

/-!
# A127922: 1/24 of product of three numbers: n-th prime, previous and following number.

The programs for A127922, the canonical program `A127922.P7742617181907590982` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127922 has offset 2).

The definition of A127922 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A127922.P7742617181907590982

`A000330((A000040(n+2)-1)/2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A127922

/-- `A000330((A000040(n+2)-1)/2)` -/
def P7742617181907590982.Spec : Prop :=
  ∀ n, P7742617181907590982.a n = A127922 (n + 2)

theorem P7742617181907590982.correct : P7742617181907590982.Spec := by
  intro n
  simp only [A127922, Nat.add_sub_cancel]

end A127922

/-! ## A127922.P10501767273590708573

`A011842(A000040(n+2)+1)`
-/

namespace A127922.P10501767273590708573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011842 (A000040 (n + 2) + 1).toNat

end

end A127922.P10501767273590708573

namespace A127922

/-- `A011842(A000040(n+2)+1)` -/
def P10501767273590708573.Spec : Prop :=
  ∀ n, P10501767273590708573.a n = A127922 (n + 2)

end A127922

/-! ## A127922.P7569205235926601018

`A127921(n+2)/2`
-/

namespace A127922.P7569205235926601018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127921 (n + 2) : ℚ) / 2

end

end A127922.P7569205235926601018

namespace A127922

/-- `A127921(n+2)/2` -/
def P7569205235926601018.Spec : Prop :=
  ∀ n, P7569205235926601018.a n = (A127922 (n + 2) : ℚ)

end A127922

/-! ## A127922.P15641784194260255245

`A191590(n+2)+A074367(n+1)`
-/

namespace A127922.P15641784194260255245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191590 (n + 2) + A074367 (n + 1)

end

end A127922.P15641784194260255245

namespace A127922

/-- `A191590(n+2)+A074367(n+1)` -/
def P15641784194260255245.Spec : Prop :=
  ∀ n, P15641784194260255245.a n = A127922 (n + 2)

end A127922

/-! ## A127922.P10225786226278299505

`A127920(n+2)/4`
-/

namespace A127922.P10225786226278299505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127920 (n + 2) : ℚ) / 4

end

end A127922.P10225786226278299505

namespace A127922

/-- `A127920(n+2)/4` -/
def P10225786226278299505.Spec : Prop :=
  ∀ n, P10225786226278299505.a n = (A127922 (n + 2) : ℚ)

end A127922

/-! ## A127922.P4512943999031111756

`A127919(n+2)/8`
-/

namespace A127922.P4512943999031111756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127919 (n + 2) : ℚ) / 8

end

end A127922.P4512943999031111756

namespace A127922

/-- `A127919(n+2)/8` -/
def P4512943999031111756.Spec : Prop :=
  ∀ n, P4512943999031111756.a n = (A127922 (n + 2) : ℚ)

end A127922

/-! ## A127922.P16519449307006321397

`A127918(n+2)/12`
-/

namespace A127922.P16519449307006321397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127918 (n + 2) : ℚ) / 12

end

end A127922.P16519449307006321397

namespace A127922

/-- `A127918(n+2)/12` -/
def P16519449307006321397.Spec : Prop :=
  ∀ n, P16519449307006321397.a n = (A127922 (n + 2) : ℚ)

end A127922

/-! ## A127922.P18251326768164794532

`A138458(n+2)/A030078(n+2)`
-/

namespace A127922.P18251326768164794532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138458 (n + 2) : ℚ) / (A030078 (n + 2) : ℚ)

end

end A127922.P18251326768164794532

namespace A127922

/-- `A138458(n+2)/A030078(n+2)` -/
def P18251326768164794532.Spec : Prop :=
  ∀ n, P18251326768164794532.a n = (A127922 (n + 2) : ℚ)

end A127922

/-! ## A127922.P17332186806885074134

`A138422(n+2)/A100484(n+2)`
-/

namespace A127922.P17332186806885074134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138422 (n + 2) : ℚ) / (A100484 (n + 2) : ℚ)

end

end A127922.P17332186806885074134

namespace A127922

/-- `A138422(n+2)/A100484(n+2)` -/
def P17332186806885074134.Spec : Prop :=
  ∀ n, P17332186806885074134.a n = (A127922 (n + 2) : ℚ)

end A127922

/-! ## A127922.P7808603491631192881

`A138438(n+2)/A000040(n+2)²`
-/

namespace A127922.P7808603491631192881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138438 (n + 2) : ℚ) / (A000040 (n + 2) ^ 2 : ℚ)

end

end A127922.P7808603491631192881

namespace A127922

/-- `A138438(n+2)/A000040(n+2)²` -/
def P7808603491631192881.Spec : Prop :=
  ∀ n, P7808603491631192881.a n = (A127922 (n + 2) : ℚ)

end A127922

/-! ## A127922.P8956905381166027067

`A138435(n+2)/A100484(n+2)²`
-/

namespace A127922.P8956905381166027067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138435 (n + 2) : ℚ) / (A100484 (n + 2) ^ 2 : ℚ)

end

end A127922.P8956905381166027067

namespace A127922

/-- `A138435(n+2)/A100484(n+2)²` -/
def P8956905381166027067.Spec : Prop :=
  ∀ n, P8956905381166027067.a n = (A127922 (n + 2) : ℚ)

end A127922

/-! ## A127922.P11197866907702786173

`A138422(n+2)²/A138435(n+2)`
-/

namespace A127922.P11197866907702786173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138422 (n + 2) ^ 2 : ℚ) / (A138435 (n + 2) : ℚ)

end

end A127922.P11197866907702786173

namespace A127922

/-- `A138422(n+2)²/A138435(n+2)` -/
def P11197866907702786173.Spec : Prop :=
  ∀ n, P11197866907702786173.a n = (A127922 (n + 2) : ℚ)

end A127922

/-! ## A127922.P465277655556343131

`A138422(n+2)/(2*A000040(n+2))`
-/

namespace A127922.P465277655556343131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138422 (n + 2) : ℚ) / (2 * A000040 (n + 2) : ℚ)

end

end A127922.P465277655556343131

namespace A127922

/-- `A138422(n+2)/(2*A000040(n+2))` -/
def P465277655556343131.Spec : Prop :=
  ∀ n, P465277655556343131.a n = (A127922 (n + 2) : ℚ)

end A127922

/-! ## A127922.P2124800506258673523

`2/A001749(n+2)*A138422(n+2)`
-/

namespace A127922.P2124800506258673523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A001749 (n + 2) : ℚ) * (A138422 (n + 2) : ℚ)

end

end A127922.P2124800506258673523

namespace A127922

/-- `2/A001749(n+2)*A138422(n+2)` -/
def P2124800506258673523.Spec : Prop :=
  ∀ n, P2124800506258673523.a n = (A127922 (n + 2) : ℚ)

end A127922

/-! ## A127922.P14711029556565437350

`A138459(n+2)/(2*A030078(n+2))`
-/

namespace A127922.P14711029556565437350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138459 (n + 2) : ℚ) / (2 * A030078 (n + 2) : ℚ)

end

end A127922.P14711029556565437350

namespace A127922

/-- `A138459(n+2)/(2*A030078(n+2))` -/
def P14711029556565437350.Spec : Prop :=
  ∀ n, P14711029556565437350.a n = (A127922 (n + 2) : ℚ)

end A127922

/-! ## A127922.P7269820523597471676

`A138421(n+2)/(2*A100484(n+2))`
-/

namespace A127922.P7269820523597471676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138421 (n + 2) : ℚ) / (2 * A100484 (n + 2) : ℚ)

end

end A127922.P7269820523597471676

namespace A127922

/-- `A138421(n+2)/(2*A100484(n+2))` -/
def P7269820523597471676.Spec : Prop :=
  ∀ n, P7269820523597471676.a n = (A127922 (n + 2) : ℚ)

end A127922

/-! ## A127922.P11297079891771408268

`A127917(n+2)/A127917(A020639(2*(n+1)))`
-/

namespace A127922.P11297079891771408268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127917 (n + 2) : ℚ) / (A127917 (A020639 (2 * (n + 1))).toNat : ℚ)

end

end A127922.P11297079891771408268

namespace A127922

/-- `A127917(n+2)/A127917(A020639(2*(n+1)))` -/
def P11297079891771408268.Spec : Prop :=
  ∀ n, P11297079891771408268.a n = (A127922 (n + 2) : ℚ)

end A127922

/-! ## A127922.P13602508733446850371

`A138416(n+2)/A138412(n+2)*A138459(n+2)`
-/

namespace A127922.P13602508733446850371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138416 (n + 2) : ℚ) / (A138412 (n + 2) : ℚ) * (A138459 (n + 2) : ℚ)

end

end A127922.P13602508733446850371

namespace A127922

/-- `A138416(n+2)/A138412(n+2)*A138459(n+2)` -/
def P13602508733446850371.Spec : Prop :=
  ∀ n, P13602508733446850371.a n = (A127922 (n + 2) : ℚ)

end A127922

/-! ## A127922.P13621543713524896221

`A138416(n+2)*A138438(n+2)/A138439(n+2)`
-/

namespace A127922.P13621543713524896221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138416 (n + 2) * A138438 (n + 2) : ℚ) / (A138439 (n + 2) : ℚ)

end

end A127922.P13621543713524896221

namespace A127922

/-- `A138416(n+2)*A138438(n+2)/A138439(n+2)` -/
def P13621543713524896221.Spec : Prop :=
  ∀ n, P13621543713524896221.a n = (A127922 (n + 2) : ℚ)

end A127922

/-! ## A127922.P13330602021872920414

`C(p?[Δ[n²]]+1, 3)/4`
-/

namespace A127922.P13330602021872920414
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat 3 : ℚ) / 4

end

end A127922.P13330602021872920414

namespace A127922

/-- `C(p?[Δ[n²]]+1, 3)/4` -/
def P13330602021872920414.Spec : Prop :=
  ∀ n, P13330602021872920414.a n = (A127922 (n + 2) : ℚ)

end A127922

/-!
# A127924: One-seventh of the difference of squares of legs of primitive Pythagorean triangles, neither of which is a multiple of 7.

The programs for A127924, there is no canonical definition to state claims against.
-/

/-! ## A127924.P9760876572242848057

`A341449(a(n-2))` with `a(0)=1, a(1)=17, a(2)=23`
-/

namespace A127924.P9760876572242848057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 17, 23] fun n a =>
  A341449 (a (n - 2)).toNat

end

end A127924.P9760876572242848057

/-!
# A127925: Primes p such that 2p < prime(k-i) + prime(k+i) for i=1..k-1, where p=prime(k).

The programs for A127925, there is no canonical definition to state claims against.
-/

/-! ## A127925.P1926290689890853145

`A385654(A223773(n+1))`
-/

namespace A127925.P1926290689890853145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385654 (A223773 (n + 1)).toNat

end

end A127925.P1926290689890853145

/-! ## A127925.P684823475724950776

`A385654(A266732(n+1))`
-/

namespace A127925.P684823475724950776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385654 (A266732 (n + 1)).toNat

end

end A127925.P684823475724950776

/-! ## A127925.P6357647507777901386

`record[A335046(A335058(n+3)+n)]`
-/

namespace A127925.P6357647507777901386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335046 (A335058 (n + 3) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127925.P6357647507777901386

/-! ## A127925.P10069346709945282745

`A105792(lt[A302415(n+1), A302696(n+1)])`
-/

namespace A127925.P10069346709945282745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105792 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A127925.P10069346709945282745

/-!
# A127926: G.f.: 1-q = Sum_{k>=0} a(k)*q^k*Faq(k+1,q), where Faq(n,q) is the q-factorial of n.

The programs for A127926, there is no canonical definition to state claims against.
-/

/-! ## A127926.P1235439233169626808

`A179750(∑[n]+1)`
-/

namespace A127926.P1235439233169626808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179750 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A127926.P1235439233169626808

/-! ## A127926.P467874141524924780

`A179750(A000124(n))%180`
-/

namespace A127926.P467874141524924780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179750 (A000124 n).toNat) 180

end

end A127926.P467874141524924780

/-! ## A127926.P10798989644912006209

`A179750(A000124(n))+A178798(n)`
-/

namespace A127926.P10798989644912006209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179750 (A000124 n).toNat + A178798 n

end

end A127926.P10798989644912006209

/-! ## A127926.P4370573108261043670

`A179750(A000124(n))*A333901(n)`
-/

namespace A127926.P4370573108261043670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179750 (A000124 n).toNat * A333901 n

end

end A127926.P4370573108261043670

/-! ## A127926.P17924342561670149514

`or(A018843(n), A179750(A000124(n)))`
-/

namespace A127926.P17924342561670149514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A018843 n) (A179750 (A000124 n).toNat)

end

end A127926.P17924342561670149514

/-!
# A127927: G.f. A(x) satisfies: [x^(2n)] A(x)/Catalan(x)^n = A001764(n) = C(3n,n)/(2n+1) and [x^(2n+1)] A(x)/Catalan(x)^n = A001764(n+1) for n>=0, where Catalan(x) is the g.f. of A000108.

The programs for A127927, there is no canonical definition to state claims against.
-/

/-! ## A127927.P13491782490495249038

`A062745(∑[2*n])`
-/

namespace A127927.P13491782490495249038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062745 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127927.P13491782490495249038

/-! ## A127927.P7745897207694737884

`or(A000007(n), A062745(n²+n))`
-/

namespace A127927.P7745897207694737884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A062745 (n ^ 2 + n))

end

end A127927.P7745897207694737884

/-! ## A127927.P18066210788148638459

`A066503(A007913(n+1))+A062745(n²+n)`
-/

namespace A127927.P18066210788148638459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066503 (A007913 (n + 1)).toNat + A062745 (n ^ 2 + n)

end

end A127927.P18066210788148638459

/-! ## A127927.P15978579112955062010

`A066503(A007947(n+1))+A062745(n²+n)`
-/

namespace A127927.P15978579112955062010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066503 (A007947 (n + 1)).toNat + A062745 (n ^ 2 + n)

end

end A127927.P15978579112955062010

/-! ## A127927.P6561301791825997836

`A066503(A015053(n+1))+A062745(n²+n)`
-/

namespace A127927.P6561301791825997836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066503 (A015053 (n + 1)).toNat + A062745 (n ^ 2 + n)

end

end A127927.P6561301791825997836

/-! ## A127927.P16117332221156829574

`A066503(A304292(n+1))+A062745(n²+n)`
-/

namespace A127927.P16117332221156829574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066503 (A304292 (n + 1)).toNat + A062745 (n ^ 2 + n)

end

end A127927.P16117332221156829574

/-! ## A127927.P6195100604716733410

`A124747(A001844(n+1))`
-/

namespace A127927.P6195100604716733410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124747 (A001844 (n + 1)).toNat

end

end A127927.P6195100604716733410

/-! ## A127927.P7493797800850951418

`A124747(A099776(n+1))`
-/

namespace A127927.P7493797800850951418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124747 (A099776 (n + 1)).toNat

end

end A127927.P7493797800850951418

/-!
# A127928: Pure hailstone primes.

The programs for A127928, there is no canonical definition to state claims against.
-/

/-! ## A127928.P12749944127023187424

`p?[A061641(n+1)]`
-/

namespace A127928.P12749944127023187424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127928.P12749944127023187424

/-! ## A127928.P8084983515800934336

`p?[A177729(n+3)]`
-/

namespace A127928.P8084983515800934336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177729 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127928.P8084983515800934336

/-! ## A127928.P7133330605754997987

`record[A006530(A061641(n+3))]`
-/

namespace A127928.P7133330605754997987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A061641 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127928.P7133330605754997987

/-! ## A127928.P9828975919616588324

`filter[A061641(n+2), A010051(#)]`
-/

namespace A127928.P9828975919616588324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A127928.P9828975919616588324

/-! ## A127928.P9933345200287958

`filter[A177729(n+3), A010051(#)]`
-/

namespace A127928.P9933345200287958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177729 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A127928.P9933345200287958

/-! ## A127928.P11936365330718403824

`∩[A000040(n+1), A061641(n+1)]`
-/

namespace A127928.P11936365330718403824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127928.P11936365330718403824

/-! ## A127928.P14864109715559431986

`∩[A004139(n+1), A061641(n+1)]`
-/

namespace A127928.P14864109715559431986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127928.P14864109715559431986

/-! ## A127928.P15864876480268231661

`∩[A007645(n+1), A061641(n+1)]`
-/

namespace A127928.P15864876480268231661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127928.P15864876480268231661

/-! ## A127928.P10389151668653999765

`∩[A040116(n+1), A061641(n+1)]`
-/

namespace A127928.P10389151668653999765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127928.P10389151668653999765

/-! ## A127928.P9404332573698280047

`∩[A045319(n+1), A061641(n+1)]`
-/

namespace A127928.P9404332573698280047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127928.P9404332573698280047

/-! ## A127928.P14566122783965825833

`∩[A045331(n+1), A061641(n+1)]`
-/

namespace A127928.P14566122783965825833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127928.P14566122783965825833

/-! ## A127928.P611534988907302211

`∩[A061641(n+1), A065091(n+1)]`
-/

namespace A127928.P611534988907302211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127928.P611534988907302211

/-! ## A127928.P16734513261979325704

`∩[A061641(n+1), A066542(n+1)]`
-/

namespace A127928.P16734513261979325704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127928.P16734513261979325704

/-! ## A127928.P13877771884220218299

`∩[A061641(n+1), A079131(n+1)]`
-/

namespace A127928.P13877771884220218299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127928.P13877771884220218299

/-! ## A127928.P11489616034566647690

`∩[A061641(n+1), A106118(n+1)]`
-/

namespace A127928.P11489616034566647690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127928.P11489616034566647690

/-! ## A127928.P14003107742708913360

`∩[A004139(n+1), A177729(n+1)]`
-/

namespace A127928.P14003107742708913360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127928.P14003107742708913360

/-! ## A127928.P4815240254416222014

`∩[A007645(n+1), A177729(n+1)]`
-/

namespace A127928.P4815240254416222014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127928.P4815240254416222014

/-! ## A127928.P7470884922870774600

`∩[A061641(n+1), A175787(n+1)]`
-/

namespace A127928.P7470884922870774600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127928.P7470884922870774600

/-! ## A127928.P9777174716627461078

`∩[A065091(n+1), A177729(n+1)]`
-/

namespace A127928.P9777174716627461078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127928.P9777174716627461078

/-! ## A127928.P1388549845592416559

`∩[A079131(n+1), A177729(n+1)]`
-/

namespace A127928.P1388549845592416559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127928.P1388549845592416559

/-!
# A127929: a(n) = A127928(n) mod 18.

The programs for A127929, there is no canonical definition to state claims against.
-/

/-! ## A127929.P10890459753981800308

`dr(A127928(n+1))`
-/

namespace A127929.P10890459753981800308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A127928 (n + 1))

end

end A127929.P10890459753981800308

/-! ## A127929.P3083423021878705802

`A127928(A000027(n+1))%9`
-/

namespace A127929.P3083423021878705802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127928 (A000027 (n + 1)).toNat) 9

end

end A127929.P3083423021878705802

/-! ## A127929.P5838350546944718080

`A127928(n+1)%A040072(n)`
-/

namespace A127929.P5838350546944718080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127928 (n + 1)) (A040072 n)

end

end A127929.P5838350546944718080

/-! ## A127929.P6080220364944079168

`dr(p?[A061641(n+1)])`
-/

namespace A127929.P6080220364944079168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A127929.P6080220364944079168

/-! ## A127929.P8112061913477877006

`dr(p?[A177729(n+3)])`
-/

namespace A127929.P8112061913477877006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177729 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A127929.P8112061913477877006

/-! ## A127929.P14161182943536585290

`A277547(p?[A061641(n+1)])`
-/

namespace A127929.P14161182943536585290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277547 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A127929.P14161182943536585290

/-!
# A127930: Terms of A127928 that are prime in A006577.

The programs for A127930, there is no canonical definition to state claims against.
-/

/-! ## A127930.P16386940301446486725

`∩[A127928(n+1), A176112(n+1)]`
-/

namespace A127930.P16386940301446486725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127930.P16386940301446486725

/-! ## A127930.P13667173601048525698

`∩[A066906(n+1), A127928(n+1)]`
-/

namespace A127930.P13667173601048525698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127930.P13667173601048525698

/-! ## A127930.P8800661822386573144

`∩[A061641(n+1), A176112(n+1)]`
-/

namespace A127930.P8800661822386573144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127930.P8800661822386573144

/-! ## A127930.P15554718311623680642

`∩[A176112(n+1), A177729(n+1)]`
-/

namespace A127930.P15554718311623680642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127930.P15554718311623680642

/-! ## A127930.P2184907745905341698

`p?[record[A070167(A066906(n+1))]]`
-/

namespace A127930.P2184907745905341698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (A066906 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127930.P2184907745905341698

/-!
# A127932: a(4*n) = 4*n+1, a(4*n+1) = a(4*n+2) = a(4*n+3) = 4*n+4.

The programs for A127932, the canonical program `A127932.P3893764818098041739` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127932 has offset 0).

The definition of A127932 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127932.P3893764818098041739

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=4, a(2)=4, a(3)=4, a(4)=5`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127932

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P3893764818098041739.Spec : Prop :=
  ∀ n, P3893764818098041739.a n = A127932 n

theorem P3893764818098041739.correct : P3893764818098041739.Spec := by
  intro n
  simp only [A127932]

end A127932

/-! ## A127932.P16655352069039020958

`(4*n+7-cos(n*π)-2*(cos(n*π/2)-2*sin(n*π/2)))/4`
-/

namespace A127932.P16655352069039020958
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 * n + 7 : ℝ) - Real.cos ((n : ℝ) * Real.pi) - 2 * (Real.cos ((n : ℝ) * Real.pi / 2) - 2 * Real.sin ((n : ℝ) * Real.pi / 2))) / 4

end

end A127932.P16655352069039020958

namespace A127932

/-- `(4*n+7-cos(n*π)-2*(cos(n*π/2)-2*sin(n*π/2)))/4` -/
def P16655352069039020958.Spec : Prop :=
  ∀ n, P16655352069039020958.a n = (A127932 n : ℝ)

end A127932

/-! ## A127932.P3561875115736603777

`∑[C(3, (n%4)²)]`
-/

namespace A127932.P3561875115736603777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 ((n % 4) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127932.P3561875115736603777

namespace A127932

/-- `∑[C(3, (n%4)²)]` -/
def P3561875115736603777.Spec : Prop :=
  ∀ n, (P3561875115736603777.a n : ℤ) = A127932 n

end A127932

/-! ## A127932.P8818650726198529654

`∑[C(3, and(3, n)²)]`
-/

namespace A127932.P8818650726198529654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (Nat.land 3 n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127932.P8818650726198529654

namespace A127932

/-- `∑[C(3, and(3, n)²)]` -/
def P8818650726198529654.Spec : Prop :=
  ∀ n, (P8818650726198529654.a n : ℤ) = A127932 n

end A127932

/-! ## A127932.P15815784846322676369

`∑[C((n+2)%4, 2)]`
-/

namespace A127932.P15815784846322676369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 2) % 4) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127932.P15815784846322676369

namespace A127932

/-- `∑[C((n+2)%4, 2)]` -/
def P15815784846322676369.Spec : Prop :=
  ∀ n, (P15815784846322676369.a n : ℤ) = A127932 n

end A127932

/-! ## A127932.P15880172766220915112

`∑[C(and(3, n+2), 2)]`
-/

namespace A127932.P15880172766220915112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land 3 (n + 2)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127932.P15880172766220915112

namespace A127932

/-- `∑[C(and(3, n+2), 2)]` -/
def P15880172766220915112.Spec : Prop :=
  ∀ n, (P15880172766220915112.a n : ℤ) = A127932 n

end A127932

/-! ## A127932.P14889529654569968373

`∑[C(3, (2*n)%8)]`
-/

namespace A127932.P14889529654569968373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (2 * n % 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127932.P14889529654569968373

namespace A127932

/-- `∑[C(3, (2*n)%8)]` -/
def P14889529654569968373.Spec : Prop :=
  ∀ n, (P14889529654569968373.a n : ℤ) = A127932 n

end A127932

/-! ## A127932.P9722904619786376418

`∑[C(3, 2*and(3, n))]`
-/

namespace A127932.P9722904619786376418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (2 * Nat.land 3 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127932.P9722904619786376418

namespace A127932

/-- `∑[C(3, 2*and(3, n))]` -/
def P9722904619786376418.Spec : Prop :=
  ∀ n, (P9722904619786376418.a n : ℤ) = A127932 n

end A127932

/-! ## A127932.P4770454800250743448

`∑[C(3, and(3, n)^3)]`
-/

namespace A127932.P4770454800250743448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (Nat.land 3 n ^ 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127932.P4770454800250743448

namespace A127932

/-- `∑[C(3, and(3, n)^3)]` -/
def P4770454800250743448.Spec : Prop :=
  ∀ n, (P4770454800250743448.a n : ℤ) = A127932 n

end A127932

/-! ## A127932.P12585591297750131284

`∑[and(3, ∑[∑[or(1, n)]])]`
-/

namespace A127932.P12585591297750131284
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127932.P12585591297750131284

namespace A127932

/-- `∑[and(3, ∑[∑[or(1, n)]])]` -/
def P12585591297750131284.Spec : Prop :=
  ∀ n, (P12585591297750131284.a n : ℤ) = A127932 n

end A127932

/-! ## A127932.P8364375779896621215

`∏{d}[and(3, -n), #]+n`
-/

namespace A127932.P8364375779896621215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d + n

end

end A127932.P8364375779896621215

namespace A127932

/-- `∏{d}[and(3, -n), #]+n` -/
def P8364375779896621215.Spec : Prop :=
  ∀ n, (P8364375779896621215.a n : ℤ) = A127932 n

end A127932

/-! ## A127932.P14093412016400850558

`∏{p}[and(3, -n), #]+n`
-/

namespace A127932.P14093412016400850558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p + n

end

end A127932.P14093412016400850558

namespace A127932

/-- `∏{p}[and(3, -n), #]+n` -/
def P14093412016400850558.Spec : Prop :=
  ∀ n, (P14093412016400850558.a n : ℤ) = A127932 n

end A127932

/-! ## A127932.P16978259685071791201

`∑[3%and(3, n+2)!]`
-/

namespace A127932.P16978259685071791201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 % Nat.factorial (Nat.land 3 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127932.P16978259685071791201

namespace A127932

/-- `∑[3%and(3, n+2)!]` -/
def P16978259685071791201.Spec : Prop :=
  ∀ n, (P16978259685071791201.a n : ℤ) = A127932 n

end A127932

/-! ## A127932.P17045275504118927262

`∑[∑[gcd(4, n+1)]%4]`
-/

namespace A127932.P17045275504118927262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127932.P17045275504118927262

namespace A127932

/-- `∑[∑[gcd(4, n+1)]%4]` -/
def P17045275504118927262.Spec : Prop :=
  ∀ n, (P17045275504118927262.a n : ℤ) = A127932 n

end A127932

/-! ## A127932.P2411079456215383061

`∑[∑[(n+1)%4]%6]`
-/

namespace A127932.P2411079456215383061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127932.P2411079456215383061

namespace A127932

/-- `∑[∑[(n+1)%4]%6]` -/
def P2411079456215383061.Spec : Prop :=
  ∀ n, (P2411079456215383061.a n : ℤ) = A127932 n

end A127932

/-! ## A127932.P898068035586759152

`a(n-4)+4` with `a(0)=1, a(1)=4, a(2)=4, a(3)=4`
-/

namespace A127932.P898068035586759152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 4, 4] fun n a =>
  a (n - 4) + 4

end

end A127932.P898068035586759152

namespace A127932

/-- `a(n-4)+4` -/
def P898068035586759152.Spec : Prop :=
  ∀ n, (P898068035586759152.a n : ℤ) = A127932 n

end A127932

/-! ## A127932.P3961913438645585539

`∑[abs(a(n-4))]` with `a(0)=1, a(1)=3, a(2)=0, a(3)=0`
-/

namespace A127932.P3961913438645585539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 0, 0] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127932.P3961913438645585539

namespace A127932

/-- `∑[abs(a(n-4))]` -/
def P3961913438645585539.Spec : Prop :=
  ∀ n, (P3961913438645585539.a n : ℤ) = A127932 n

end A127932

/-! ## A127932.P9053580111956028849

`∑[dr(a(n-4))]` with `a(0)=1, a(1)=3, a(2)=0, a(3)=0`
-/

namespace A127932.P9053580111956028849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 0, 0] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127932.P9053580111956028849

namespace A127932

/-- `∑[dr(a(n-4))]` -/
def P9053580111956028849.Spec : Prop :=
  ∀ n, (P9053580111956028849.a n : ℤ) = A127932 n

end A127932

/-! ## A127932.P18093080353226459467

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=3, a(2)=0, a(3)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A127932.P18093080353226459467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 0, 0] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127932.P18093080353226459467

namespace A127932

/-- `∑[floor(a(n-4))]` -/
def P18093080353226459467.Spec : Prop :=
  ∀ n, (P18093080353226459467.a n : ℤ) = A127932 n

end A127932

/-! ## A127932.P1601929121253758515

`∑[ceil(a(n-4))]` with `a(0)=1, a(1)=3, a(2)=0, a(3)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A127932.P1601929121253758515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 0, 0] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127932.P1601929121253758515

namespace A127932

/-- `∑[ceil(a(n-4))]` -/
def P1601929121253758515.Spec : Prop :=
  ∀ n, (P1601929121253758515.a n : ℤ) = A127932 n

end A127932

/-!
# A127933: Number of halving and tripling steps to reach 1 from the n-th pure hailstone number in the '3x+1' problem.

The programs for A127933, there is no canonical definition to state claims against.
-/

/-! ## A127933.P10779261380979542735

`A220263(n+1)-(char[1]+1)`
-/

namespace A127933.P10779261380979542735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220263 (n + 1) - (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ)

end

end A127933.P10779261380979542735

/-! ## A127933.P18000608447000156382

`A199969(A220263(n+1))`
-/

namespace A127933.P18000608447000156382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A220263 (n + 1)).toNat

end

end A127933.P18000608447000156382

/-! ## A127933.P14222207410979191440

`A006577(A177729(n+1)-char[1])`
-/

namespace A127933.P14222207410979191440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A177729 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A127933.P14222207410979191440

/-! ## A127933.P16957601588644820550

`A008908(A177729(1-char[1]+n))-1`
-/

namespace A127933.P16957601588644820550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (A177729 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat).toNat - 1

end

end A127933.P16957601588644820550

/-! ## A127933.P7568957173007449875

`A006577(gcd(A061641(n+1), A177729(n+1)))`
-/

namespace A127933.P7568957173007449875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (Int.gcd (A061641 (n + 1)) (A177729 (n + 1)))

end

end A127933.P7568957173007449875

/-! ## A127933.P14092980183905195717

`A006577(A061641(n+1)-and(1, A066903(n+2))+1)`
-/

namespace A127933.P14092980183905195717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A061641 (n + 1) - Int.land 1 (A066903 (n + 2)) + 1).toNat

end

end A127933.P14092980183905195717

/-! ## A127933.P7457713682641192479

`A006577(A177729(n+1))%A154384(A001399(n))`
-/

namespace A127933.P7457713682641192479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006577 (A177729 (n + 1)).toNat) (A154384 (A001399 n).toNat)

end

end A127933.P7457713682641192479

/-! ## A127933.P6197795292052067695

`A318613(n+1)-char[1]`
-/

namespace A127933.P6197795292052067695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318613 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A127933.P6197795292052067695

/-! ## A127933.P8472300580587951301

`A318613(A060576(n)+n)`
-/

namespace A127933.P8472300580587951301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318613 (A060576 n + (n : ℤ)).toNat

end

end A127933.P8472300580587951301

/-! ## A127933.P14609251437953810490

`A318613(A105812(n)²+n)`
-/

namespace A127933.P14609251437953810490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318613 (A105812 n ^ 2 + (n : ℤ)).toNat

end

end A127933.P14609251437953810490

/-!
# A127934: a(8n)=8n+1, a(8n+1)=a(8n+2)=a(8n+3)=8n+5, a(8n+4)=8n+6, a(8n+5)=a(8n+6)=a(8n+7)=8n+8.

The programs for A127934, the canonical program `A127934.P15254465264639428136` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127934 has offset 0).

The definition of A127934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127934.P15254465264639428136

`∑[a(n-4)²%7]` with `a(0)=1, a(1)=4, a(2)=0, a(3)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127934

/-- `∑[a(n-4)²%7]` -/
def P15254465264639428136.Spec : Prop :=
  ∀ n, (P15254465264639428136.a n : ℤ) = A127934 n

theorem P15254465264639428136.correct : P15254465264639428136.Spec := by
  intro n
  simp only [A127934]

end A127934

/-! ## A127934.P18281582725178895980

`A047585(∑[((n+1)%4)%3]+1)`
-/

namespace A127934.P18281582725178895980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 4 % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047585 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A127934.P18281582725178895980

namespace A127934

/-- `A047585(∑[((n+1)%4)%3]+1)` -/
def P18281582725178895980.Spec : Prop :=
  ∀ n, P18281582725178895980.a n = A127934 n

end A127934

/-! ## A127934.P3736115588683640827

`A047554(A004525(n)+2)-1`
-/

namespace A127934.P3736115588683640827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047554 (A004525 n + 2).toNat - 1

end

end A127934.P3736115588683640827

namespace A127934

/-- `A047554(A004525(n)+2)-1` -/
def P3736115588683640827.Spec : Prop :=
  ∀ n, P3736115588683640827.a n = A127934 n

end A127934

/-! ## A127934.P13682806235698629427

`A047439(∑[((A057077(n)+1)/2)²]+1)`
-/

namespace A127934.P13682806235698629427
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A057077 n + 1 : ℚ) / 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047439 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A127934.P13682806235698629427

namespace A127934

/-- `A047439(∑[((A057077(n)+1)/2)²]+1)` -/
def P13682806235698629427.Spec : Prop :=
  ∀ n, P13682806235698629427.a n = A127934 n

end A127934

/-! ## A127934.P2658343174854346034

`A047439(∑[C(A057077(n)+1, 2)²]+1)`
-/

namespace A127934.P2658343174854346034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057077 n + 1).toNat 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047439 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A127934.P2658343174854346034

namespace A127934

/-- `A047439(∑[C(A057077(n)+1, 2)²]+1)` -/
def P2658343174854346034.Spec : Prop :=
  ∀ n, P2658343174854346034.a n = A127934 n

end A127934

/-! ## A127934.P9602850356724640597

`A007310(1-A057353(n)+n)+A002265(n)`
-/

namespace A127934.P9602850356724640597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (1 - A057353 n + (n : ℤ)).toNat + A002265 n

end

end A127934.P9602850356724640597

namespace A127934

/-- `A007310(1-A057353(n)+n)+A002265(n)` -/
def P9602850356724640597.Spec : Prop :=
  ∀ n, P9602850356724640597.a n = A127934 n

end A127934

/-! ## A127934.P11321584567905589859

`∑[val(A256328(n+1)+n, 2)]`
-/

namespace A127934.P11321584567905589859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A256328 (n + 1) + (n : ℤ)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127934.P11321584567905589859

namespace A127934

/-- `∑[val(A256328(n+1)+n, 2)]` -/
def P11321584567905589859.Spec : Prop :=
  ∀ n, (P11321584567905589859.a n : ℤ) = A127934 n

end A127934

/-! ## A127934.P6228241327514412869

`A007310(A002265(n+7))+A002265(n)`
-/

namespace A127934.P6228241327514412869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A002265 (n + 7)).toNat + A002265 n

end

end A127934.P6228241327514412869

namespace A127934

/-- `A007310(A002265(n+7))+A002265(n)` -/
def P6228241327514412869.Spec : Prop :=
  ∀ n, P6228241327514412869.a n = A127934 n

end A127934

/-!
# A127935: Number of meaningful differential operations of the n-th order on the space R^(2+n).

The programs for A127935, there is no canonical definition to state claims against.
-/

/-! ## A127935.P9162299050645322142

`A125220(n+1)+A001414(A356884(n+2))`
-/

namespace A127935.P9162299050645322142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125220 (n + 1) + A001414 (A356884 (n + 2)).toNat

end

end A127935.P9162299050645322142

/-! ## A127935.P15088122565978952549

`A090848(A000009(2*n+1)*A016116(n))`
-/

namespace A127935.P15088122565978952549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090848 (A000009 (2 * n + 1) * A016116 n).toNat

end

end A127935.P15088122565978952549

/-!
# A127936: Numbers k such that 1 + Sum_{i=1..k} 2^(2*i-1) is prime.

The programs for A127936, there is no canonical definition to state claims against.
-/

/-! ## A127936.P12321592959842878007

`floor(A000978(n+1)/2)`
-/

namespace A127936.P12321592959842878007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000978 (n + 1) : ℚ) / 2⌋

end

end A127936.P12321592959842878007

/-! ## A127936.P5693622221598454844

`A127964(n+1)+1`
-/

namespace A127936.P5693622221598454844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127964 (n + 1) + 1

end

end A127936.P5693622221598454844

/-! ## A127936.P7048666069070537043

`A127963(n+1)-1`
-/

namespace A127936.P7048666069070537043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127963 (n + 1) - 1

end

end A127936.P7048666069070537043

/-! ## A127936.P4437255965639891672

`A127965(n+1)/2`
-/

namespace A127936.P4437255965639891672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127965 (n + 1) : ℚ) / 2

end

end A127936.P4437255965639891672

/-! ## A127936.P2312367644654856330

`xor(1, A000978(C(n+1, n)))/2`
-/

namespace A127936.P2312367644654856330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A000978 (Nat.choose (n + 1) n)) : ℚ) / 2

end

end A127936.P2312367644654856330

/-!
# A127937: Length of longest string of consecutive zeros in the base-7 expansion of 2^n.

The programs for A127937, there is no canonical definition to state claims against.
-/

/-! ## A127937.P3033189315315874711

`abs(Δ[A011765(A059217(n+1))])`
-/

namespace A127937.P3033189315315874711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011765 (A059217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A127937.P3033189315315874711

/-! ## A127937.P8484801714200686955

`Δ[A014017(A059217(n+1))]^A000005(n+1)`
-/

namespace A127937.P8484801714200686955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 (A059217 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A127937.P8484801714200686955

/-! ## A127937.P9405086186470052806

`Δ[A014017(A059217(n+1))]^A000010(n+1)`
-/

namespace A127937.P9405086186470052806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 (A059217 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A000010 (n + 1) : ℤ)

end

end A127937.P9405086186470052806

/-! ## A127937.P12620191148898177852

`Δ[A014017(A059217(n+1))]^A020639(2*(n+1))`
-/

namespace A127937.P12620191148898177852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 (A059217 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A127937.P12620191148898177852

/-! ## A127937.P10343199496135760544

`A000720(A370614(n))%A026513(2*n)`
-/

namespace A127937.P10343199496135760544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A370614 n).toNat) (A026513 (2 * n))

end

end A127937.P10343199496135760544

/-!
# A127938: Number of arithmetic progressions of 2 or more nonnegative integers, strictly increasing with sum n.

The programs for A127938, there is no canonical definition to state claims against.
-/

/-! ## A127938.P13149333495049887518

`A049982(n+1)+A007862(n+1)`
-/

namespace A127938.P13149333495049887518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049982 (n + 1) + A007862 (n + 1)

end

end A127938.P13149333495049887518

/-! ## A127938.P761247322783889584

`A007862(n+1)+A049980(n+1)-1`
-/

namespace A127938.P761247322783889584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (n + 1) + (A049980 (n + 1) - 1)

end

end A127938.P761247322783889584

/-! ## A127938.P16846541292059903980

`A049982(n+1)+A069470(n+1)-A069470(n)`
-/

namespace A127938.P16846541292059903980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049982 (n + 1) + (A069470 (n + 1) - A069470 n)

end

end A127938.P16846541292059903980

/-! ## A127938.P17760454168482607046

`A049982(n+1)+∑{d}[A004767(n)+1, A003982(#)]`
-/

namespace A127938.P17760454168482607046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049982 (n + 1) + ∑ d ∈ Nat.divisors (f1 n).natAbs, A003982 d

end

end A127938.P17760454168482607046

/-! ## A127938.P6328111584466137203

`A049982(n+1)+A004197(A337363(2*(n+1)))+1`
-/

namespace A127938.P6328111584466137203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049982 (n + 1) + (A004197 (A337363 (2 * (n + 1))).toNat + 1)

end

end A127938.P6328111584466137203

/-! ## A127938.P6292968925158734104

`A049982(n+1)+A004736(A337362(2*(n+1))+1)`
-/

namespace A127938.P6292968925158734104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049982 (n + 1) + A004736 (A337362 (2 * (n + 1)) + 1).toNat

end

end A127938.P6292968925158734104

/-! ## A127938.P2844444222309874198

`A007862(n+1)+A049988(n+1)-A000005(n+1)`
-/

namespace A127938.P2844444222309874198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (n + 1) + (A049988 (n + 1) - A000005 (n + 1))

end

end A127938.P2844444222309874198

/-! ## A127938.P14784239760819665963

`A007862(n+1)+A175342(n+1)-A049988(n+1)`
-/

namespace A127938.P14784239760819665963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (n + 1) + (A175342 (n + 1) - A049988 (n + 1))

end

end A127938.P14784239760819665963

/-! ## A127938.P11601214516866243870

`A049980(n+1)+A029730(A129308(2*(n+1)))`
-/

namespace A127938.P11601214516866243870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049980 (n + 1) + A029730 (A129308 (2 * (n + 1))).toNat

end

end A127938.P11601214516866243870

/-!
# A127942: a(n) = denominator of b(n), where b(1)=1, b(n) = Sum_{1<=k

The programs for A127942, there is no canonical definition to state claims against.
-/

/-! ## A127942.P10968668118447068894

`A107416(A298406(n))`
-/

namespace A127942.P10968668118447068894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107416 (A298406 n).toNat

end

end A127942.P10968668118447068894

/-! ## A127942.P5704346550249189330

`A049991(A068980(3*a(n-1)-a(n-3)))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=6`
-/

namespace A127942.P5704346550249189330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 6] fun n a =>
  A049991 (A068980 (3 * a (n - 1) - a (n - 3)).toNat).toNat

end

end A127942.P5704346550249189330

/-! ## A127942.P12544809481281493174

`C(A288772(A381515(n)), A218446(n))`
-/

namespace A127942.P12544809481281493174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A288772 (A381515 n).toNat).toNat (A218446 n).toNat

end

end A127942.P12544809481281493174

/-!
# A127943: a(n) = 2^binomial(n+1,2)/A046161(n).

The programs for A127943, the canonical program `A127943.P11415706920937421864` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127943 has offset 0).

The definition of A127943 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127943.P11415706920937421864

`2^A127944(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A127943

/-- `2^A127944(n)` -/
def P11415706920937421864.Spec : Prop :=
  ∀ n, P11415706920937421864.a n = (A127943 n : ℚ)

end A127943

/-! ## A127943.P2498687827503591589

`2^C(n+1, 2)/A046161(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127943.P2498687827503591589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose (n + 1) 2 : ℚ) / (A046161 n : ℚ)

end

end A127943.P2498687827503591589

namespace A127943

/-- `2^C(n+1, 2)/A046161(n)` -/
def P2498687827503591589.Spec : Prop :=
  ∀ n, P2498687827503591589.a n = (A127943 n : ℚ)

end A127943

/-! ## A127943.P14255444900434346249

`2^∑[n-∑{e}[xor(n, -n), #]]`
-/

namespace A127943.P14255444900434346249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A127943.P14255444900434346249

namespace A127943

/-- `2^∑[n-∑{e}[xor(n, -n), #]]` -/
def P14255444900434346249.Spec : Prop :=
  ∀ n, P14255444900434346249.a n = (A127943 n : ℚ)

end A127943

/-! ## A127943.P8150844256829407176

`∏[A320086(∑[n])]`
-/

namespace A127943.P8150844256829407176
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320086 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A127943.P8150844256829407176

namespace A127943

/-- `∏[A320086(∑[n])]` -/
def P8150844256829407176.Spec : Prop :=
  ∀ n, P8150844256829407176.a n = A127943 n

end A127943

/-! ## A127943.P7180546056087884833

`2^∑[A093049(n)]`
-/

namespace A127943.P7180546056087884833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093049 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A127943.P7180546056087884833

namespace A127943

/-- `2^∑[A093049(n)]` -/
def P7180546056087884833.Spec : Prop :=
  ∀ n, P7180546056087884833.a n = (A127943 n : ℚ)

end A127943

/-!
# A127944: Partial sums of A093049.

The programs for A127944, the canonical program `A127944.P14372493809634427534` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127944 has offset 0).

The definition of A127944 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127944.P14372493809634427534

`A000217(n)-A005187(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A127944

/-- `A000217(n)-A005187(n)` -/
def P14372493809634427534.Spec : Prop :=
  ∀ n, P14372493809634427534.a n = A127944 n

theorem P14372493809634427534.correct : P14372493809634427534.Spec := by
  intro n
  simp only [A127944]

end A127944

/-! ## A127944.P15918748492728608552

`log2(A127943(n))`
-/

namespace A127944.P15918748492728608552
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A127943 n : ℝ)

end

end A127944.P15918748492728608552

namespace A127944

/-- `log2(A127943(n))` -/
def P15918748492728608552.Spec : Prop :=
  ∀ n, P15918748492728608552.a n = (A127944 n : ℝ)

end A127944

/-! ## A127944.P7484260080216038894

`∑[n-∑{e}[xor(n, -n), #]]`
-/

namespace A127944.P7484260080216038894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127944.P7484260080216038894

namespace A127944

/-- `∑[n-∑{e}[xor(n, -n), #]]` -/
def P7484260080216038894.Spec : Prop :=
  ∀ n, P7484260080216038894.a n = A127944 n

end A127944

/-! ## A127944.P2132169144789412502

`∑[n-val(floor(2/acot(n)), 2)]`
-/

namespace A127944.P2132169144789412502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋.toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127944.P2132169144789412502

namespace A127944

/-- `∑[n-val(floor(2/acot(n)), 2)]` -/
def P2132169144789412502.Spec : Prop :=
  ∀ n, P2132169144789412502.a n = A127944 n

end A127944

/-! ## A127944.P3511176342808437111

`n-1+a(n-1)-val(n, 2)` with `a(0)=0`
-/

namespace A127944.P3511176342808437111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - 1 + (a (n - 1) - (SequenceMachineLib.valuation n 2 : ℤ))

end

end A127944.P3511176342808437111

namespace A127944

/-- `n-1+a(n-1)-val(n, 2)` -/
def P3511176342808437111.Spec : Prop :=
  ∀ n, P3511176342808437111.a n = A127944 n

end A127944

/-! ## A127944.P4070495953765654728

`n-1-(val(n, 2)-a(n-1))` with `a(0)=0`
-/

namespace A127944.P4070495953765654728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - 1 - ((SequenceMachineLib.valuation n 2 : ℤ) - a (n - 1))

end

end A127944.P4070495953765654728

namespace A127944

/-- `n-1-(val(n, 2)-a(n-1))` -/
def P4070495953765654728.Spec : Prop :=
  ∀ n, P4070495953765654728.a n = A127944 n

end A127944

/-! ## A127944.P761823316607654256

`∑[n]-∑[val(comp[2*(n+1)]+1, 2)]`
-/

namespace A127944.P761823316607654256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A127944.P761823316607654256

namespace A127944

/-- `∑[n]-∑[val(comp[2*(n+1)]+1, 2)]` -/
def P761823316607654256.Spec : Prop :=
  ∀ n, P761823316607654256.a n = A127944 n

end A127944

/-! ## A127944.P11094350219594290274

`∑[A093049(n)]`
-/

namespace A127944.P11094350219594290274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127944.P11094350219594290274

namespace A127944

/-- `∑[A093049(n)]` -/
def P11094350219594290274.Spec : Prop :=
  ∀ n, P11094350219594290274.a n = A127944 n

end A127944

/-! ## A127944.P9216423472103494824

`∑[A093048(n)]-n`
-/

namespace A127944.P9216423472103494824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A127944.P9216423472103494824

namespace A127944

/-- `∑[A093048(n)]-n` -/
def P9216423472103494824.Spec : Prop :=
  ∀ n, P9216423472103494824.a n = A127944 n

end A127944

/-! ## A127944.P9152393242869595343

`C(n, 2)-A011371(n)`
-/

namespace A127944.P9152393242869595343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - A011371 n

end

end A127944.P9152393242869595343

namespace A127944

/-- `C(n, 2)-A011371(n)` -/
def P9152393242869595343.Spec : Prop :=
  ∀ n, P9152393242869595343.a n = A127944 n

end A127944

/-! ## A127944.P8040870719064661542

`∑[n]+1-A101925(n)`
-/

namespace A127944.P8040870719064661542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - A101925 n)

end

end A127944.P8040870719064661542

namespace A127944

/-- `∑[n]+1-A101925(n)` -/
def P8040870719064661542.Spec : Prop :=
  ∀ n, P8040870719064661542.a n = A127944 n

end A127944

/-! ## A127944.P17569367593665491451

`∑[n-val(A004277(n), 2)]`
-/

namespace A127944.P17569367593665491451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (A004277 n).toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127944.P17569367593665491451

namespace A127944

/-- `∑[n-val(A004277(n), 2)]` -/
def P17569367593665491451.Spec : Prop :=
  ∀ n, P17569367593665491451.a n = A127944 n

end A127944

/-! ## A127944.P786575149358872888

`∑[n-val(A008458(n), 2)]`
-/

namespace A127944.P786575149358872888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (A008458 n).toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127944.P786575149358872888

namespace A127944

/-- `∑[n-val(A008458(n), 2)]` -/
def P786575149358872888.Spec : Prop :=
  ∀ n, P786575149358872888.a n = A127944 n

end A127944

/-! ## A127944.P4925473199476983974

`∑[n-val(A255177(n), 2)]`
-/

namespace A127944.P4925473199476983974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (A255177 n).toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127944.P4925473199476983974

namespace A127944

/-- `∑[n-val(A255177(n), 2)]` -/
def P4925473199476983974.Spec : Prop :=
  ∀ n, P4925473199476983974.a n = A127944 n

end A127944

/-! ## A127944.P751230918420500

`∑[n]+n-A004134(n)`
-/

namespace A127944.P751230918420500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - A004134 n)

end

end A127944.P751230918420500

namespace A127944

/-- `∑[n]+n-A004134(n)` -/
def P751230918420500.Spec : Prop :=
  ∀ n, P751230918420500.a n = A127944 n

end A127944

/-! ## A127944.P14797996712597915699

`∑[1-A089080(n+1)+n]`
-/

namespace A127944.P14797996712597915699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A089080 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127944.P14797996712597915699

namespace A127944

/-- `∑[1-A089080(n+1)+n]` -/
def P14797996712597915699.Spec : Prop :=
  ∀ n, P14797996712597915699.a n = A127944 n

end A127944

/-! ## A127944.P1334805599220284246

`∑[n+2]-A086343(n+1)`
-/

namespace A127944.P1334805599220284246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A086343 (n + 1)

end

end A127944.P1334805599220284246

namespace A127944

/-- `∑[n+2]-A086343(n+1)` -/
def P1334805599220284246.Spec : Prop :=
  ∀ n, P1334805599220284246.a n = A127944 n

end A127944

/-! ## A127944.P5075950404929804214

`A000120(n)+∑[n]-2*n`
-/

namespace A127944.P5075950404929804214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n : ℤ)

end

end A127944.P5075950404929804214

namespace A127944

/-- `A000120(n)+∑[n]-2*n` -/
def P5075950404929804214.Spec : Prop :=
  ∀ n, P5075950404929804214.a n = A127944 n

end A127944

/-! ## A127944.P7780451443714340914

`A000096(n)-A004134(n)`
-/

namespace A127944.P7780451443714340914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - A004134 n

end

end A127944.P7780451443714340914

namespace A127944

/-- `A000096(n)-A004134(n)` -/
def P7780451443714340914.Spec : Prop :=
  ∀ n, P7780451443714340914.a n = A127944 n

end A127944

/-!
# A127945: Hankel transform of central coefficients of (1+k*x-2x^2)^n, k arbitrary integer.

The programs for A127945, the canonical program `A127945.P7508205232149027088` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127945 has offset 0).

The definition of A127945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127945.P7508205232149027088

`2^n*(-2)^C(n+1, 2)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127945

/-- `2^n*(-2)^C(n+1, 2)` -/
def P7508205232149027088.Spec : Prop :=
  ∀ n, P7508205232149027088.a n = A127945 n

theorem P7508205232149027088.correct : P7508205232149027088.Spec := by
  intro n
  simp only [A127945]

end A127945

/-! ## A127945.P14339649435601278460

`2^n*(-2)^∑[n]`
-/

namespace A127945.P14339649435601278460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (-2) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127945.P14339649435601278460

namespace A127945

/-- `2^n*(-2)^∑[n]` -/
def P14339649435601278460.Spec : Prop :=
  ∀ n, P14339649435601278460.a n = A127945 n

end A127945

/-! ## A127945.P12522458801250008394

`∏[(-2)^n*ceil(cosh(sin(n)))]`
-/

namespace A127945.P12522458801250008394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * ⌈Real.cosh (Real.sin (n : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A127945.P12522458801250008394

namespace A127945

/-- `∏[(-2)^n*ceil(cosh(sin(n)))]` -/
def P12522458801250008394.Spec : Prop :=
  ∀ n, P12522458801250008394.a n = A127945 n

end A127945

/-! ## A127945.P17842136596026160244

`∏[-(2*a(n-1))]/2` with `a(0)=2`
-/

namespace A127945.P17842136596026160244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  -(2 * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A127945.P17842136596026160244

namespace A127945

/-- `∏[-(2*a(n-1))]/2` -/
def P17842136596026160244.Spec : Prop :=
  ∀ n, P17842136596026160244.a n = (A127945 n : ℚ)

end A127945

/-! ## A127945.P15815947890587052635

`∏[4*a(n-2)]/2` with `a(0)=2, a(1)=-4`
-/

namespace A127945.P15815947890587052635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -4] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A127945.P15815947890587052635

namespace A127945

/-- `∏[4*a(n-2)]/2` -/
def P15815947890587052635.Spec : Prop :=
  ∀ n, P15815947890587052635.a n = (A127945 n : ℚ)

end A127945

/-!
# A127946: Hankel transform of central coefficients of (1+k*x-3x^2)^n, k arbitrary integer.

The programs for A127946, the canonical program `A127946.P7448673096960601981` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127946 has offset 0).

The definition of A127946 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127946.P7448673096960601981

`2^n*(-3)^C(n+1, 2)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127946

/-- `2^n*(-3)^C(n+1, 2)` -/
def P7448673096960601981.Spec : Prop :=
  ∀ n, P7448673096960601981.a n = A127946 n

theorem P7448673096960601981.correct : P7448673096960601981.Spec := by
  intro n
  simp only [A127946]

end A127946

/-! ## A127946.P9087294441508614410

`2^n*(-3)^∑[n]`
-/

namespace A127946.P9087294441508614410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (-3) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127946.P9087294441508614410

namespace A127946

/-- `2^n*(-3)^∑[n]` -/
def P9087294441508614410.Spec : Prop :=
  ∀ n, P9087294441508614410.a n = A127946 n

end A127946

/-! ## A127946.P4958380644163504937

`∏[(-3)^n*ceil(cosh(sin(n)))]`
-/

namespace A127946.P4958380644163504937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n * ⌈Real.cosh (Real.sin (n : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A127946.P4958380644163504937

namespace A127946

/-- `∏[(-3)^n*ceil(cosh(sin(n)))]` -/
def P4958380644163504937.Spec : Prop :=
  ∀ n, P4958380644163504937.a n = A127946 n

end A127946

/-! ## A127946.P18381629870412859136

`∏[-(3*a(n-1))]/2` with `a(0)=2`
-/

namespace A127946.P18381629870412859136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  -(3 * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A127946.P18381629870412859136

namespace A127946

/-- `∏[-(3*a(n-1))]/2` -/
def P18381629870412859136.Spec : Prop :=
  ∀ n, P18381629870412859136.a n = (A127946 n : ℚ)

end A127946

/-! ## A127946.P7625026328047862916

`floor(2*a(n-1)*(-3)^n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A127946.P7625026328047862916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) * (-3) ^ n

end

end A127946.P7625026328047862916

namespace A127946

/-- `floor(2*a(n-1)*(-3)^n)` -/
def P7625026328047862916.Spec : Prop :=
  ∀ n, P7625026328047862916.a n = A127946 n

end A127946

/-!
# A127947: Hankel transform of central coefficients of (1+k*x+5x^2)^n, k arbitrary integer.

The programs for A127947, the canonical program `A127947.P4406434051528941207` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127947 has offset 0).

The definition of A127947 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127947.P4406434051528941207

`2^n*5^C(n+1, 2)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127947

/-- `2^n*5^C(n+1, 2)` -/
def P4406434051528941207.Spec : Prop :=
  ∀ n, (P4406434051528941207.a n : ℤ) = A127947 n

theorem P4406434051528941207.correct : P4406434051528941207.Spec := by
  intro n
  simp only [A127947]

end A127947

/-! ## A127947.P13888730812822425314

`2^n*5^∑[n]`
-/

namespace A127947.P13888730812822425314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * 5 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127947.P13888730812822425314

namespace A127947

/-- `2^n*5^∑[n]` -/
def P13888730812822425314.Spec : Prop :=
  ∀ n, (P13888730812822425314.a n : ℤ) = A127947 n

end A127947

/-! ## A127947.P2241003427657399324

`lcm(2^n, 5^∑[n])`
-/

namespace A127947.P2241003427657399324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ n) (5 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A127947.P2241003427657399324

namespace A127947

/-- `lcm(2^n, 5^∑[n])` -/
def P2241003427657399324.Spec : Prop :=
  ∀ n, (P2241003427657399324.a n : ℤ) = A127947 n

end A127947

/-! ## A127947.P10154493063370781803

`∏[5*a(n-1)]` with `a(0)=1, a(1)=10`
-/

namespace A127947.P10154493063370781803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A127947.P10154493063370781803

namespace A127947

/-- `∏[5*a(n-1)]` -/
def P10154493063370781803.Spec : Prop :=
  ∀ n, (P10154493063370781803.a n : ℤ) = A127947 n

end A127947

/-! ## A127947.P1646769771722194700

`∏[5^n*ceil(cosh(sin(n)))]`
-/

namespace A127947.P1646769771722194700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * ⌈Real.cosh (Real.sin (n : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A127947.P1646769771722194700

namespace A127947

/-- `∏[5^n*ceil(cosh(sin(n)))]` -/
def P1646769771722194700.Spec : Prop :=
  ∀ n, P1646769771722194700.a n = A127947 n

end A127947

/-!
# A127948: Triangle, A004736 * A127899.

The programs for A127948, the canonical program `A127948.P4785840701084851502` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127948 has offset 0).

The definition of A127948 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127948.P4785840701084851502

`2*A000027(n+1)-A002024(n+1)²`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A127948

/-- `2*A000027(n+1)-A002024(n+1)²` -/
def P4785840701084851502.Spec : Prop :=
  ∀ n, P4785840701084851502.a n = A127948 n

theorem P4785840701084851502.correct : P4785840701084851502.Spec := by
  intro n
  simp only [A127948]

end A127948

/-! ## A127948.P9484121253542995486

`∑[2-Δ[round(sqrt(2*n))²]]`
-/

namespace A127948.P9484121253542995486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127948.P9484121253542995486

namespace A127948

/-- `∑[2-Δ[round(sqrt(2*n))²]]` -/
def P9484121253542995486.Spec : Prop :=
  ∀ n, P9484121253542995486.a n = A127948 n

end A127948

/-! ## A127948.P13891895988929330344

`2*(n+1)-∑[char[C(n, 2)]]²`
-/

namespace A127948.P13891895988929330344
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A127948.P13891895988929330344

namespace A127948

/-- `2*(n+1)-∑[char[C(n, 2)]]²` -/
def P13891895988929330344.Spec : Prop :=
  ∀ n, P13891895988929330344.a n = A127948 n

end A127948

/-! ## A127948.P15859941404211226855

`2-(∑[char[C(n, 2)]]²-2*n)`
-/

namespace A127948.P15859941404211226855
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (2 * n : ℤ))

end

end A127948.P15859941404211226855

namespace A127948

/-- `2-(∑[char[C(n, 2)]]²-2*n)` -/
def P15859941404211226855.Spec : Prop :=
  ∀ n, P15859941404211226855.a n = A127948 n

end A127948

/-! ## A127948.P7903402819243985165

`xor(-char[∑[n]], a(n-1))+2` with `a(0)=1`
-/

namespace A127948.P7903402819243985165
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (-((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (a (n - 1)) + 2

end

end A127948.P7903402819243985165

namespace A127948

/-- `xor(-char[∑[n]], a(n-1))+2` -/
def P7903402819243985165.Spec : Prop :=
  ∀ n, P7903402819243985165.a n = A127948 n

end A127948

/-! ## A127948.P17805894789107235610

`2-∑[char[C(n, 2)]]²+n+n`
-/

namespace A127948.P17805894789107235610
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (n : ℤ) + (n : ℤ)

end

end A127948.P17805894789107235610

namespace A127948

/-- `2-∑[char[C(n, 2)]]²+n+n` -/
def P17805894789107235610.Spec : Prop :=
  ∀ n, P17805894789107235610.a n = A127948 n

end A127948

/-! ## A127948.P6249950285187236175

`1-∑[2*n]%comp[∑[n]]+n`
-/

namespace A127948.P6249950285187236175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ) + (n : ℤ)

end

end A127948.P6249950285187236175

namespace A127948

/-- `1-∑[2*n]%comp[∑[n]]+n` -/
def P6249950285187236175.Spec : Prop :=
  ∀ n, P6249950285187236175.a n = A127948 n

end A127948

/-! ## A127948.P7655652923700169085

`2*(n+1)-∑[char[C(n, 2)]]^2`
-/

namespace A127948.P7655652923700169085
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A127948.P7655652923700169085

namespace A127948

/-- `2*(n+1)-∑[char[C(n, 2)]]^2` -/
def P7655652923700169085.Spec : Prop :=
  ∀ n, P7655652923700169085.a n = A127948 n

end A127948

/-! ## A127948.P15256962464351035906

`2*(n+1)-round(sqrt(or(1, 2*n)))²`
-/

namespace A127948.P15256962464351035906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (Nat.lor 1 (2 * n) : ℝ)) ^ 2

end

end A127948.P15256962464351035906

namespace A127948

/-- `2*(n+1)-round(sqrt(or(1, 2*n)))²` -/
def P15256962464351035906.Spec : Prop :=
  ∀ n, P15256962464351035906.a n = A127948 n

end A127948

/-! ## A127948.P10495751284168457962

`2*(n+1)+∑[char[∑[n]]]²*or(n, -1)`
-/

namespace A127948.P10495751284168457962
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) * Int.lor (n : ℤ) (-1)

end

end A127948.P10495751284168457962

namespace A127948

/-- `2*(n+1)+∑[char[∑[n]]]²*or(n, -1)` -/
def P10495751284168457962.Spec : Prop :=
  ∀ n, P10495751284168457962.a n = A127948 n

end A127948

/-! ## A127948.P17381383893780416800

`1-A114327(n)`
-/

namespace A127948.P17381383893780416800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A114327 n

end

end A127948.P17381383893780416800

namespace A127948

/-- `1-A114327(n)` -/
def P17381383893780416800.Spec : Prop :=
  ∀ n, P17381383893780416800.a n = A127948 n

end A127948

/-! ## A127948.P7551257527490676343

`Δ[A144216(n+1)]`
-/

namespace A127948.P7551257527490676343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127948.P7551257527490676343

namespace A127948

/-- `Δ[A144216(n+1)]` -/
def P7551257527490676343.Spec : Prop :=
  ∀ n, P7551257527490676343.a n = A127948 n

end A127948

/-! ## A127948.P129701676882181994

`1-A061579(n)+n`
-/

namespace A127948.P129701676882181994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A061579 n + (n : ℤ)

end

end A127948.P129701676882181994

namespace A127948

/-- `1-A061579(n)+n` -/
def P129701676882181994.Spec : Prop :=
  ∀ n, P129701676882181994.a n = A127948 n

end A127948

/-! ## A127948.P2118667650472286687

`2-A038722(n+1)+n`
-/

namespace A127948.P2118667650472286687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A038722 (n + 1) + (n : ℤ)

end

end A127948.P2118667650472286687

namespace A127948

/-- `2-A038722(n+1)+n` -/
def P2118667650472286687.Spec : Prop :=
  ∀ n, P2118667650472286687.a n = A127948 n

end A127948

/-! ## A127948.P6909779203223569338

`2*(n+1)-A093995(n+1)`
-/

namespace A127948.P6909779203223569338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A093995 (n + 1)

end

end A127948.P6909779203223569338

namespace A127948

/-- `2*(n+1)-A093995(n+1)` -/
def P6909779203223569338.Spec : Prop :=
  ∀ n, P6909779203223569338.a n = A127948 n

end A127948

/-! ## A127948.P7747184327463427233

`4*(n+1)-A185870(n+1)`
-/

namespace A127948.P7747184327463427233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A185870 (n + 1)

end

end A127948.P7747184327463427233

namespace A127948

/-- `4*(n+1)-A185870(n+1)` -/
def P7747184327463427233.Spec : Prop :=
  ∀ n, P7747184327463427233.a n = A127948 n

end A127948

/-! ## A127948.P938069455647169291

`2*n+3-A265129(n+1)`
-/

namespace A127948.P938069455647169291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A265129 (n + 1)

end

end A127948.P938069455647169291

namespace A127948

/-- `2*n+3-A265129(n+1)` -/
def P938069455647169291.Spec : Prop :=
  ∀ n, P938069455647169291.a n = A127948 n

end A127948

/-! ## A127948.P3800398810055148473

`A002260(n+1)-A025581(n)`
-/

namespace A127948.P3800398810055148473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - A025581 n

end

end A127948.P3800398810055148473

namespace A127948

/-- `A002260(n+1)-A025581(n)` -/
def P3800398810055148473.Spec : Prop :=
  ∀ n, P3800398810055148473.a n = A127948 n

end A127948

/-! ## A127948.P15745196915624737191

`A158405(n+1)-A003056(n)`
-/

namespace A127948.P15745196915624737191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1) - A003056 n

end

end A127948.P15745196915624737191

namespace A127948

/-- `A158405(n+1)-A003056(n)` -/
def P15745196915624737191.Spec : Prop :=
  ∀ n, P15745196915624737191.a n = A127948 n

end A127948

/-! ## A127948.P6935593208675753121

`A004767(n)-A185869(n+1)`
-/

namespace A127948.P6935593208675753121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A185869 (n + 1)

end

end A127948.P6935593208675753121

namespace A127948

/-- `A004767(n)-A185869(n+1)` -/
def P6935593208675753121.Spec : Prop :=
  ∀ n, P6935593208675753121.a n = A127948 n

end A127948

/-!
# A127949: A000012 as an infinite lower triangular matrix with all 1's; A127899 = a simple transform; then A000012 * A127899. Given A051340, change all 1's to -1. Triangle read by rows, (n-1) -1's followed by "n".

The programs for A127949, there is no canonical definition to state claims against.
-/

/-! ## A127949.P10060281560147355760

`Δ[C(comp[∑[n]]-n, 2)]-1`
-/

namespace A127949.P10060281560147355760
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A127949.P10060281560147355760

/-! ## A127949.P7969211105321225735

`or(-char[comp[∑[n-1]]], ∑[char[∑[n]]])`
-/

namespace A127949.P7969211105321225735
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)

end

end A127949.P7969211105321225735

/-! ## A127949.P17346107860548080971

`(comp[∑[n]]-n)*char[∑[n-1]]-1`
-/

namespace A127949.P17346107860548080971
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1

end

end A127949.P17346107860548080971

/-! ## A127949.P15000940743547490762

`Δ[C(round(sqrt(2*n+1))+1, 2)%(n+1)]`
-/

namespace A127949.P15000940743547490762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) + 1).toNat 2 % (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A127949.P15000940743547490762

/-! ## A127949.P1217509209670099192

`Δ[A025581(n)]`
-/

namespace A127949.P1217509209670099192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127949.P1217509209670099192

/-! ## A127949.P15071445431547355815

`Δ[log2(A130321(n))]`
-/

namespace A127949.P15071445431547355815
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130321 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127949.P15071445431547355815

/-! ## A127949.P5295229342672675473

`Δ[ratio[A290518(n)]]`
-/

namespace A127949.P5295229342672675473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290518 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127949.P5295229342672675473

/-! ## A127949.P46657916011810941

`-A167407(n+1)`
-/

namespace A127949.P46657916011810941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A167407 (n + 1)

end

end A127949.P46657916011810941

/-! ## A127949.P14815389369110559991

`Δ[A004736(n+1)]`
-/

namespace A127949.P14815389369110559991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127949.P14815389369110559991

/-! ## A127949.P8301991743401430435

`Δ[A025660(n+1)]`
-/

namespace A127949.P8301991743401430435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127949.P8301991743401430435

/-!
# A127950: a(n) = A007376(8*n+2).

The programs for A127950, there is no canonical definition to state claims against.
-/

/-! ## A127950.P11654316244351661475

`A007376(8*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127950.P11654316244351661475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (8 * n + 2)

end

end A127950.P11654316244351661475

/-! ## A127950.P3360122320780602999

`A007376(A017089(n))%18`
-/

namespace A127950.P3360122320780602999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (A017089 n).toNat) 18

end

end A127950.P3360122320780602999

/-! ## A127950.P6264407678639934784

`dr(A007376(Δ[A002939(n)]))`
-/

namespace A127950.P6264407678639934784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (f1 (n + 1) - f1 n).toNat)

end

end A127950.P6264407678639934784

/-! ## A127950.P1080639141804904498

`dr(A007376(A016825(2*n)))`
-/

namespace A127950.P1080639141804904498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A016825 (2 * n)).toNat)

end

end A127950.P1080639141804904498

/-! ## A127950.P8290267220510766714

`dr(A007376(Δ[A054554(n+1)]))`
-/

namespace A127950.P8290267220510766714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054554 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (f1 (n + 1) - f1 n).toNat)

end

end A127950.P8290267220510766714

/-! ## A127950.P5804326585877156466

`A127508(2*n)`
-/

namespace A127950.P5804326585877156466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127508 (2 * n)

end

end A127950.P5804326585877156466

/-! ## A127950.P5925961611999727157

`A033307(8*n+1)`
-/

namespace A127950.P5925961611999727157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (8 * n + 1)

end

end A127950.P5925961611999727157

/-! ## A127950.P15501679371007155666

`A127353(3*n+n+1)`
-/

namespace A127950.P15501679371007155666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127353 (3 * n + (n + 1))

end

end A127950.P15501679371007155666

/-! ## A127950.P3477007174106504470

`dr(A033307(A016813(2*n)))`
-/

namespace A127950.P3477007174106504470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A033307 (A016813 (2 * n)).toNat)

end

end A127950.P3477007174106504470

/-! ## A127950.P15042476863354624804

`A108202(A119413(n+1))`
-/

namespace A127950.P15042476863354624804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (A119413 (n + 1)).toNat

end

end A127950.P15042476863354624804

/-! ## A127950.P11390030345262430188

`A108712(A158057(n)+2)`
-/

namespace A127950.P11390030345262430188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A158057 n + 2).toNat

end

end A127950.P11390030345262430188

/-! ## A127950.P11455696996276570347

`A108202(2*A017089(n))`
-/

namespace A127950.P11455696996276570347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (2 * A017089 n).toNat

end

end A127950.P11455696996276570347

/-! ## A127950.P16162402009724139703

`A108712(A017101(2*n))`
-/

namespace A127950.P16162402009724139703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A017101 (2 * n)).toNat

end

end A127950.P16162402009724139703

/-! ## A127950.P6303571746130385536

`A108202(A017137(2*n)-2)`
-/

namespace A127950.P6303571746130385536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (A017137 (2 * n) - 2).toNat

end

end A127950.P6303571746130385536

/-! ## A127950.P12296891956909808747

`A108202(2*A016825(2*n))`
-/

namespace A127950.P12296891956909808747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (2 * A016825 (2 * n)).toNat

end

end A127950.P12296891956909808747

/-! ## A127950.P9135830533847431001

`A108202(A113770(2*n+1)-1)`
-/

namespace A127950.P9135830533847431001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (A113770 (2 * n + 1) - 1).toNat

end

end A127950.P9135830533847431001

/-! ## A127950.P5102091799737887466

`8*n+3-A098732(8*n+3)`
-/

namespace A127950.P5102091799737887466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 3 : ℤ) - A098732 (8 * n + 3)

end

end A127950.P5102091799737887466

/-!
# A127951: Triangle, binomial transform of A126615.

The programs for A127951, there is no canonical definition to state claims against.
-/

/-! ## A127951.P1904844745790703032

`char[∑[n-1]]-Δ[A103406(n)]`
-/

namespace A127951.P1904844745790703032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (f3 (n + 1) - f3 n)

end

end A127951.P1904844745790703032

/-! ## A127951.P2154207495491869286

`A156644(n)+A141692(n)`
-/

namespace A127951.P2154207495491869286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156644 n + A141692 n

end

end A127951.P2154207495491869286

/-! ## A127951.P1708098493872722880

`Δ[A003056(n)-A103406(n)]`
-/

namespace A127951.P1708098493872722880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - A103406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127951.P1708098493872722880

/-! ## A127951.P1260793934348049492

`Δ[A117707(n)-A103406(n)]`
-/

namespace A127951.P1260793934348049492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 n - A103406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127951.P1260793934348049492

/-! ## A127951.P17363658676766932546

`Δ[A131923(n)-A128710(n)]`
-/

namespace A127951.P17363658676766932546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131923 n - A128710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127951.P17363658676766932546

/-! ## A127951.P4690819291754816895

`A128133(n+1)-A216973(n)`
-/

namespace A127951.P4690819291754816895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128133 (n + 1) - A216973 n

end

end A127951.P4690819291754816895

/-! ## A127951.P2804313118731450780

`Δ[A002024(n+1)-A103406(n)]`
-/

namespace A127951.P2804313118731450780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - A103406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127951.P2804313118731450780

/-! ## A127951.P1346326245877483300

`Δ[A133196(n+1)-A103406(n)]`
-/

namespace A127951.P1346326245877483300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133196 (n + 1) - A103406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127951.P1346326245877483300

/-! ## A127951.P7119971594522126652

`Δ[A003057(n+2)-A103406(n)]`
-/

namespace A127951.P7119971594522126652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - A103406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127951.P7119971594522126652

/-! ## A127951.P2074489900542315729

`A264751(n+1)-2*A216973(n)`
-/

namespace A127951.P2074489900542315729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264751 (n + 1) - 2 * A216973 n

end

end A127951.P2074489900542315729

/-!
# A127952: Triangle read by rows, T(n,k) = (n+1)*binomial(n-1,k-1).

The programs for A127952, the canonical program `A127952.P12742971010225177770` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127952 has offset 0).

The definition of A127952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127952.P2701734835930344953

`∑[char[∑[n]]]*A097805(n)`
-/

namespace A127952.P2701734835930344953
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A097805 n

end

end A127952.P2701734835930344953

namespace A127952

/-- `∑[char[∑[n]]]*A097805(n)` -/
def P2701734835930344953.Spec : Prop :=
  ∀ n, P2701734835930344953.a n = A127952 n

end A127952

/-! ## A127952.P12742971010225177770

`A003506(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A127952

/-- `A003506(n)-a(n-1)` -/
def P12742971010225177770.Spec : Prop :=
  ∀ n, P12742971010225177770.a n = A127952 n

theorem P12742971010225177770.correct : P12742971010225177770.Spec := by
  intro n
  simp only [A127952]

end A127952

/-! ## A127952.P13203190841108039591

`A128710(n)-A029653(n)`
-/

namespace A127952.P13203190841108039591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128710 n - A029653 n

end

end A127952.P13203190841108039591

namespace A127952

/-- `A128710(n)-A029653(n)` -/
def P13203190841108039591.Spec : Prop :=
  ∀ n, P13203190841108039591.a n = A127952 n

end A127952

/-! ## A127952.P17622866528565532310

`A103406(n)-A097805(n+1)`
-/

namespace A127952.P17622866528565532310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 n - A097805 (n + 1)

end

end A127952.P17622866528565532310

namespace A127952

/-- `A103406(n)-A097805(n+1)` -/
def P17622866528565532310.Spec : Prop :=
  ∀ n, P17622866528565532310.a n = A127952 n

end A127952

/-! ## A127952.P10770613006810340993

`A128134(n+1)-A216973(n)`
-/

namespace A127952.P10770613006810340993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128134 (n + 1) - A216973 n

end

end A127952.P10770613006810340993

namespace A127952

/-- `A128134(n+1)-A216973(n)` -/
def P10770613006810340993.Spec : Prop :=
  ∀ n, P10770613006810340993.a n = A127952 n

end A127952

/-! ## A127952.P7131574527703805470

`A097805(n)+A003056(n)*A097805(n)`
-/

namespace A127952.P7131574527703805470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + A003056 n * A097805 n

end

end A127952.P7131574527703805470

namespace A127952

/-- `A097805(n)+A003056(n)*A097805(n)` -/
def P7131574527703805470.Spec : Prop :=
  ∀ n, P7131574527703805470.a n = A127952 n

end A127952

/-! ## A127952.P7122236552697911245

`A002260(n+1)*A007318(n)-A097805(n+1)`
-/

namespace A127952.P7122236552697911245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A007318 n - A097805 (n + 1)

end

end A127952.P7122236552697911245

namespace A127952

/-- `A002260(n+1)*A007318(n)-A097805(n+1)` -/
def P7122236552697911245.Spec : Prop :=
  ∀ n, P7122236552697911245.a n = A127952 n

end A127952

/-! ## A127952.P8628897229732088436

`A097805(n)*A123578(n+1)`
-/

namespace A127952.P8628897229732088436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A123578 (n + 1)

end

end A127952.P8628897229732088436

namespace A127952

/-- `A097805(n)*A123578(n+1)` -/
def P8628897229732088436.Spec : Prop :=
  ∀ n, P8628897229732088436.a n = A127952 n

end A127952

/-! ## A127952.P8656490475242135439

`A097805(n)*A193739(A193739(n)+n)`
-/

namespace A127952.P8656490475242135439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A193739 (A193739 n + (n : ℤ)).toNat

end

end A127952.P8656490475242135439

namespace A127952

/-- `A097805(n)*A193739(A193739(n)+n)` -/
def P8656490475242135439.Spec : Prop :=
  ∀ n, P8656490475242135439.a n = A127952 n

end A127952

/-! ## A127952.P1875296349656042192

`A097805(n)+A002262(n)*A097805(A014132(n+1))`
-/

namespace A127952.P1875296349656042192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + A002262 n * A097805 (A014132 (n + 1)).toNat

end

end A127952.P1875296349656042192

namespace A127952

/-- `A097805(n)+A002262(n)*A097805(A014132(n+1))` -/
def P1875296349656042192.Spec : Prop :=
  ∀ n, P1875296349656042192.a n = A127952 n

end A127952

/-! ## A127952.P6930917778966255250

`A046205(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A127952.P6930917778966255250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A046205 (2 * n) - a (n - 1)

end

end A127952.P6930917778966255250

namespace A127952

/-- `A046205(2*n)-a(n-1)` -/
def P6930917778966255250.Spec : Prop :=
  ∀ n, P6930917778966255250.a n = A127952 n

end A127952

/-!
# A127953: Triangle, A097805 * A126615.

The programs for A127953, there is no canonical definition to state claims against.
-/

/-! ## A127953.P7551289471017880376

`Δ[-A127954(n+1)]`
-/

namespace A127953.P7551289471017880376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A127954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127953.P7551289471017880376

/-! ## A127953.P12065066420022824235

`A127954(n+1)-A127954(n+2)`
-/

namespace A127953.P12065066420022824235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127954 (n + 1) - A127954 (n + 2)

end

end A127953.P12065066420022824235

/-! ## A127953.P16959287117172743153

`Δ[-(A002260(n+1)*A097805(n))]`
-/

namespace A127953.P16959287117172743153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A002260 (n + 1) * A097805 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127953.P16959287117172743153

/-! ## A127953.P13455988674196643108

`Δ[-(A097805(n)*A131818(n+1))]`
-/

namespace A127953.P13455988674196643108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A097805 n * A131818 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127953.P13455988674196643108

/-! ## A127953.P14178710816163573537

`Δ[-(A097805(n)*A134868(n+1))]`
-/

namespace A127953.P14178710816163573537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A097805 n * A134868 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127953.P14178710816163573537

/-! ## A127953.P7758968461619409

`Δ[A332496(n+1)-A124847(n+1)]`
-/

namespace A127953.P7758968461619409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332496 (n + 1) - A124847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127953.P7758968461619409

/-! ## A127953.P6003275342390354298

`Δ[A001489(A002260(n+1)*A097805(n))]`
-/

namespace A127953.P6003275342390354298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A002260 (n + 1) * A097805 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127953.P6003275342390354298

/-! ## A127953.P16306268660435653717

`Δ[A024000(A002260(n+1)*A097805(n))]`
-/

namespace A127953.P16306268660435653717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A002260 (n + 1) * A097805 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127953.P16306268660435653717

/-! ## A127953.P18428412744759718478

`Δ[A000007(n+1)-A002260(n+1)*A097805(n)]`
-/

namespace A127953.P18428412744759718478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A002260 (n + 1) * A097805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127953.P18428412744759718478

/-!
# A127954: Triangle, A097805 * A127648.

The programs for A127954, the canonical program `A127954.P6894505022089069342` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127954 has offset 1).

The definition of A127954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127954.P5928721943670721454

`(1-C(∑[char[∑[n]]], 2)+n)*A097805(n)`
-/

namespace A127954.P5928721943670721454
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A097805 n

end

end A127954.P5928721943670721454

namespace A127954

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A097805(n)` -/
def P5928721943670721454.Spec : Prop :=
  ∀ n, P5928721943670721454.a n = A127954 (n + 1)

end A127954

/-! ## A127954.P6894505022089069342

`A002260(n+1)*A097805(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A127954

/-- `A002260(n+1)*A097805(n)` -/
def P6894505022089069342.Spec : Prop :=
  ∀ n, P6894505022089069342.a n = A127954 (n + 1)

theorem P6894505022089069342.correct : P6894505022089069342.Spec := by
  intro n
  simp only [A127954, Nat.add_sub_cancel]

end A127954

/-! ## A127954.P11089026445447588341

`(A002262(n)+1)*A097805(n)`
-/

namespace A127954.P11089026445447588341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A097805 n

end

end A127954.P11089026445447588341

namespace A127954

/-- `(A002262(n)+1)*A097805(n)` -/
def P11089026445447588341.Spec : Prop :=
  ∀ n, P11089026445447588341.a n = A127954 (n + 1)

end A127954

/-! ## A127954.P8545717399579173636

`A097805(n)*A131818(n+1)`
-/

namespace A127954.P8545717399579173636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A131818 (n + 1)

end

end A127954.P8545717399579173636

namespace A127954

/-- `A097805(n)*A131818(n+1)` -/
def P8545717399579173636.Spec : Prop :=
  ∀ n, P8545717399579173636.a n = A127954 (n + 1)

end A127954

/-! ## A127954.P14183044118171983769

`A097805(n)*A134868(n+1)`
-/

namespace A127954.P14183044118171983769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A134868 (n + 1)

end

end A127954.P14183044118171983769

namespace A127954

/-- `A097805(n)*A134868(n+1)` -/
def P14183044118171983769.Spec : Prop :=
  ∀ n, P14183044118171983769.a n = A127954 (n + 1)

end A127954

/-! ## A127954.P5650426373567200802

`A097805(n)*A135223(n+1)`
-/

namespace A127954.P5650426373567200802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A135223 (n + 1)

end

end A127954.P5650426373567200802

namespace A127954

/-- `A097805(n)*A135223(n+1)` -/
def P5650426373567200802.Spec : Prop :=
  ∀ n, P5650426373567200802.a n = A127954 (n + 1)

end A127954

/-! ## A127954.P11944602470853798184

`A097805(n)*A384660(n+1)`
-/

namespace A127954.P11944602470853798184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A384660 (n + 1)

end

end A127954.P11944602470853798184

namespace A127954

/-- `A097805(n)*A384660(n+1)` -/
def P11944602470853798184.Spec : Prop :=
  ∀ n, P11944602470853798184.a n = A127954 (n + 1)

end A127954

/-! ## A127954.P1753517434195631538

`(1-C(∑[char[∑[n]]], 2)+n)*A071919(∑[2*n]%comp[∑[n]])`
-/

namespace A127954.P1753517434195631538
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A071919 ((∑ j ∈ Finset.range (n + 1), f4 j) % SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n)

end

end A127954.P1753517434195631538

namespace A127954

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A071919(∑[2*n]%comp[∑[n]])` -/
def P1753517434195631538.Spec : Prop :=
  ∀ n, P1753517434195631538.a n = A127954 (n + 1)

end A127954

/-! ## A127954.P13466376709333191305

`A124847(n+1)-A332496(n+1)`
-/

namespace A127954.P13466376709333191305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124847 (n + 1) - A332496 (n + 1)

end

end A127954.P13466376709333191305

namespace A127954

/-- `A124847(n+1)-A332496(n+1)` -/
def P13466376709333191305.Spec : Prop :=
  ∀ n, P13466376709333191305.a n = A127954 (n + 1)

end A127954

/-! ## A127954.P9326659655784154015

`A000005(2^(n-C(∑[char[∑[n]]], 2)))*A097805(n)`
-/

namespace A127954.P9326659655784154015
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat * A097805 n

end

end A127954.P9326659655784154015

namespace A127954

/-- `A000005(2^(n-C(∑[char[∑[n]]], 2)))*A097805(n)` -/
def P9326659655784154015.Spec : Prop :=
  ∀ n, P9326659655784154015.a n = A127954 (n + 1)

end A127954

/-! ## A127954.P12553743456128065609

`A000005(A059268(n))*A097805(n)`
-/

namespace A127954.P12553743456128065609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A097805 n

end

end A127954.P12553743456128065609

namespace A127954

/-- `A000005(A059268(n))*A097805(n)` -/
def P12553743456128065609.Spec : Prop :=
  ∀ n, P12553743456128065609.a n = A127954 (n + 1)

end A127954

/-!
# A127955: Composite numbers of the form (2^p+1)/3 where p is a prime.

The programs for A127955, there is no canonical definition to state claims against.
-/

/-! ## A127955.P2465480007592317972

`A001045(A127956(n+1))`
-/

namespace A127955.P2465480007592317972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A127956 (n + 1)).toNat

end

end A127955.P2465480007592317972

/-! ## A127955.P13037187653190555454

`A126614(A127957(n+1))`
-/

namespace A127955.P13037187653190555454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126614 (A127957 (n + 1)).toNat

end

end A127955.P13037187653190555454

/-! ## A127955.P9392817512489762546

`A005578(p?[A127956(n+1)])`
-/

namespace A127955.P9392817512489762546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A127955.P9392817512489762546

/-! ## A127955.P6227737026983799786

`A152046(p?[A127956(n+1)])`
-/

namespace A127955.P6227737026983799786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A127955.P6227737026983799786

/-! ## A127955.P11165305623766795181

`A005578(or(1, A127956(n+1)))`
-/

namespace A127955.P11165305623766795181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (Int.lor 1 (A127956 (n + 1))).toNat

end

end A127955.P11165305623766795181

/-!
# A127956: Prime numbers p such that (2^p+1)/3 is composite.

The programs for A127956, there is no canonical definition to state claims against.
-/

/-! ## A127956.P12059339520114911961

`p?[2*A127958(n+1)+1]`
-/

namespace A127956.P12059339520114911961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127958 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127956.P12059339520114911961

/-! ## A127956.P16360497678232017493

`A000040(A127957(n+1))`
-/

namespace A127956.P16360497678232017493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A127957 (n + 1)).toNat

end

end A127956.P16360497678232017493

/-! ## A127956.P10109018958584375274

`p?[A005408(A127958(n+1))]`
-/

namespace A127956.P10109018958584375274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A127958 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127956.P10109018958584375274

/-! ## A127956.P231075741874779510

`p?[A001281(A143584(n+1))]`
-/

namespace A127956.P231075741874779510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A143584 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127956.P231075741874779510

/-! ## A127956.P11098276438719199719

`A008578(A127957(n+1)+1)`
-/

namespace A127956.P11098276438719199719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A127957 (n + 1) + 1).toNat

end

end A127956.P11098276438719199719

/-! ## A127956.P13709746248515392266

`p?[A004442(2*A127958(n+1))]`
-/

namespace A127956.P13709746248515392266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A127958 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127956.P13709746248515392266

/-! ## A127956.P15540695902827918754

`A000040(comp[A123176(n+1)-2]+2)`
-/

namespace A127956.P15540695902827918754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123176 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A127956.P15540695902827918754

/-! ## A127956.P15527258929210596293

`∩[2*A127958(n+1)+1, A000040(n+1)]`
-/

namespace A127956.P15527258929210596293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127958 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127956.P15527258929210596293

/-!
# A127957: Numbers k such that (2^prime(k) + 1)/3 is composite.

The programs for A127957, there is no canonical definition to state claims against.
-/

/-! ## A127957.P9402037133814797465

`comp[A123176(n+1)-2]+2`
-/

namespace A127957.P9402037133814797465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123176 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A127957.P9402037133814797465

/-! ## A127957.P13748144722245720943

`A000720(p?[2*A127958(n+1)+1])`
-/

namespace A127957.P13748144722245720943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127958 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A127957.P13748144722245720943

/-! ## A127957.P5020116290874491278

`A003963(p?[2*A127958(n+1)+1])`
-/

namespace A127957.P5020116290874491278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127958 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A127957.P5020116290874491278

/-! ## A127957.P8945591364447725774

`A049084(p?[2*A127958(n+1)+1])`
-/

namespace A127957.P8945591364447725774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127958 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A127957.P8945591364447725774

/-! ## A127957.P757301139566087547

`A036234(p?[2*A127958(n+1)+1]-1)`
-/

namespace A127957.P757301139566087547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127958 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A127957.P757301139566087547

/-! ## A127957.P2985548272348157530

`A318994(p?[2*A127958(n+1)+1])-1`
-/

namespace A127957.P2985548272348157530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127958 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318994 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A127957.P2985548272348157530

/-! ## A127957.P10479121486927420558

`lt[2, A085398(A001747(n+1))]`
-/

namespace A127957.P10479121486927420558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (A001747 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A127957.P10479121486927420558

/-! ## A127957.P10175350238596516107

`eq[or(1, A123627(n+1)), A123627(n+1)]+1`
-/

namespace A127957.P10175350238596516107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A123627 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123627 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A127957.P10175350238596516107

/-! ## A127957.P7845235584374536055

`lt[1, A086257(A008578(n+1))]`
-/

namespace A127957.P7845235584374536055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086257 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A127957.P7845235584374536055

/-! ## A127957.P7201915336603572676

`lt[2, A046799(A001747(n+1)/2)]`
-/

namespace A127957.P7201915336603572676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 (SequenceMachineLib.roundAway ((A001747 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A127957.P7201915336603572676

/-! ## A127957.P9702003454610756159

`lt[2, A046799(A161344(n+1)/2)]`
-/

namespace A127957.P9702003454610756159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 (SequenceMachineLib.roundAway ((A161344 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A127957.P9702003454610756159

/-!
# A127958: Numbers x such that 1 + Sum_{k=1..n} 2^(2k-1) is not prime for n=1,2,...,x.

The programs for A127958, there is no canonical definition to state claims against.
-/

/-! ## A127958.P2684447628657115782

`comp[A127964(n+1)]+1`
-/

namespace A127958.P2684447628657115782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A127958.P2684447628657115782

/-! ## A127958.P5985275426533150847

`comp[A127936(n+1)-1]+1`
-/

namespace A127958.P5985275426533150847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127936 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A127958.P5985275426533150847

/-! ## A127958.P3117771265511314435

`eq[char[A127936(n+1)], A000007(n)]`
-/

namespace A127958.P3117771265511314435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127936 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A127958.P3117771265511314435

/-! ## A127958.P12319773982237049390

`eq[char[A127936(n+1)], A130706(n)]`
-/

namespace A127958.P12319773982237049390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127936 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A127958.P12319773982237049390

/-! ## A127958.P2429672838792940388

`eq[char[A127936(n+1)], A010051(2*(n+1))]`
-/

namespace A127958.P2429672838792940388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127936 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A127958.P2429672838792940388

/-! ## A127958.P212457996869100402

`lt[2, A054992(2*n+1)]`
-/

namespace A127958.P212457996869100402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054992 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A127958.P212457996869100402

/-! ## A127958.P9814083137306923246

`lt[2, log2(A046798(2*n+1))]`
-/

namespace A127958.P9814083137306923246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A046798 (2 * n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A127958.P9814083137306923246

/-! ## A127958.P10171276259904752795

`lt[A046799(2*n+1)+2, A046798(2*n+1)]`
-/

namespace A127958.P10171276259904752795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046798 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A127958.P10171276259904752795

/-! ## A127958.P5590449137828828911

`lt[2, A001222(2*n+1)*A046799(2*n+1)]`
-/

namespace A127958.P5590449137828828911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1) * A046799 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A127958.P5590449137828828911

/-! ## A127958.P13768837811449691640

`lt[2, A342655(A001747(2*(n+1)))]`
-/

namespace A127958.P13768837811449691640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342655 (A001747 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A127958.P13768837811449691640

/-! ## A127958.P12592896452482941266

`lt[2, A342656(A073582(2*n+1))]`
-/

namespace A127958.P12592896452482941266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342656 (A073582 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A127958.P12592896452482941266

/-! ## A127958.P16901271253273082855

`lt[2, A342656(A074845(2*(n+1)))]`
-/

namespace A127958.P16901271253273082855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342656 (A074845 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A127958.P16901271253273082855

/-! ## A127958.P8798981304117849874

`lt[2, A342655(A161344(2*(n+1)))]`
-/

namespace A127958.P8798981304117849874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342655 (A161344 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A127958.P8798981304117849874

/-! ## A127958.P2361700158741062299

`lt[2, A277892(A073582(2*(n+1)))]`
-/

namespace A127958.P2361700158741062299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277892 (A073582 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A127958.P2361700158741062299

/-! ## A127958.P7779970626471468837

`lt[2, A342656(A001748(2*(n+1)))]`
-/

namespace A127958.P7779970626471468837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342656 (A001748 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A127958.P7779970626471468837

/-! ## A127958.P10297202907841757686

`eq[A014973(A046798(2*n+1))², A014973(2*(n+1))]`
-/

namespace A127958.P10297202907841757686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (A046798 (2 * n + 1)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127958.P10297202907841757686

/-!
# A127959: Nonprime numbers of the form 1 + Sum_{k=1..m} 2^(2*k - 1).

The programs for A127959, there is no canonical definition to state claims against.
-/

/-! ## A127959.P6492773298692226434

`A007583(A127958(n+1))`
-/

namespace A127959.P6492773298692226434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 (A127958 (n + 1)).toNat

end

end A127959.P6492773298692226434

/-! ## A127959.P15011917153183082078

`A077925(2*A127958(n+1))`
-/

namespace A127959.P15011917153183082078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 (2 * A127958 (n + 1)).toNat

end

end A127959.P15011917153183082078

/-! ## A127959.P18169582807825693313

`A166752(2*A127958(n+1))`
-/

namespace A127959.P18169582807825693313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166752 (2 * A127958 (n + 1)).toNat

end

end A127959.P18169582807825693313

/-! ## A127959.P664706158881544780

`A077886(6*A127958(n+1))`
-/

namespace A127959.P664706158881544780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077886 (6 * A127958 (n + 1)).toNat

end

end A127959.P664706158881544780

/-! ## A127959.P14893905197374805619

`A077925(A127958(n+1)+A127958(n+1))`
-/

namespace A127959.P14893905197374805619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 (A127958 (n + 1) + A127958 (n + 1)).toNat

end

end A127959.P14893905197374805619

/-!
# A127960: a(n) = n^2*3^n.

The programs for A127960, the canonical program `A127960.P1454755808448748578` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127960 has offset 0).

The definition of A127960 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*3^n` (program `A127960.P1454755808448748578`, by `A127960.P1454755808448748578.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127960.P1454755808448748578

`n²*3^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127960

/-- `n²*3^n` -/
def P1454755808448748578.Spec : Prop :=
  ∀ n, (P1454755808448748578.a n : ℤ) = A127960 n

theorem P1454755808448748578.correct : P1454755808448748578.Spec := by
  intro n
  simp only [A127960]

end A127960

/-! ## A127960.P11172973119920622618

`9*a(n-1)-27*a(n-2)+27*a(n-3)` with `a(0)=0, a(1)=3, a(2)=36`
-/

namespace A127960.P11172973119920622618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 36] fun n a =>
  9 * a (n - 1) - 27 * a (n - 2) + 27 * a (n - 3)

end

end A127960.P11172973119920622618

namespace A127960

/-- `9*a(n-1)-27*a(n-2)+27*a(n-3)` -/
def P11172973119920622618.Spec : Prop :=
  ∀ n, P11172973119920622618.a n = A127960 n

theorem P11172973119920622618.correct : P11172973119920622618.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A127960, Nat.add_sub_cancel, A127960.P11172973119920622618.a, A127960.P1454755808448748578.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A127960, Nat.add_sub_cancel, A127960.P11172973119920622618.a, A127960.P1454755808448748578.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A127960

/-! ## A127960.P7733534798847280423

`round(n²/acot(3^n))`
-/

namespace A127960.P7733534798847280423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℝ) / SequenceMachineLib.acot (3 ^ n : ℝ))

end

end A127960.P7733534798847280423

namespace A127960

/-- `round(n²/acot(3^n))` -/
def P7733534798847280423.Spec : Prop :=
  ∀ n, P7733534798847280423.a n = A127960 n

end A127960

/-! ## A127960.P1000071960588326865

`n²/tan(acot(3^n))`
-/

namespace A127960.P1000071960588326865
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℝ) / Real.tan (SequenceMachineLib.acot (3 ^ n : ℝ))

end

end A127960.P1000071960588326865

namespace A127960

/-- `n²/tan(acot(3^n))` -/
def P1000071960588326865.Spec : Prop :=
  ∀ n, P1000071960588326865.a n = (A127960 n : ℝ)

end A127960

/-! ## A127960.P16232687511074496124

`floor(n²*∑[3*a(n-1)])` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A127960.P16232687511074496124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127960.P16232687511074496124

namespace A127960

/-- `floor(n²*∑[3*a(n-1)])` -/
def P16232687511074496124.Spec : Prop :=
  ∀ n, (P16232687511074496124.a n : ℤ) = A127960 n

end A127960

/-! ## A127960.P14569899930660537089

`n²/3^(gcd(n, n+1)-(n+1))`
-/

namespace A127960.P14569899930660537089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (3 : ℚ) ^ ((Nat.gcd n (n + 1) : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A127960.P14569899930660537089

namespace A127960

/-- `n²/3^(gcd(n, n+1)-(n+1))` -/
def P14569899930660537089.Spec : Prop :=
  ∀ n, P14569899930660537089.a n = (A127960 n : ℚ)

theorem P14569899930660537089.correct : P14569899930660537089.Spec := by
  intro n
  simp only [A127960, Nat.add_sub_cancel, A127960.P14569899930660537089.a, A127960.P1454755808448748578.a, SequenceMachineLib.memo_apply]
  try simp

end A127960

/-! ## A127960.P606557239434932118

`3*a(n-1)+(2*n-1)*3^n` with `a(0)=0`
-/

namespace A127960.P606557239434932118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * a (n - 1) + ((2 * n : ℤ) - 1) * (3 ^ n : ℤ)

end

end A127960.P606557239434932118

namespace A127960

/-- `3*a(n-1)+(2*n-1)*3^n` -/
def P606557239434932118.Spec : Prop :=
  ∀ n, P606557239434932118.a n = A127960 n

theorem P606557239434932118.correct : P606557239434932118.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A127960, Nat.add_sub_cancel, A127960.P606557239434932118.a, A127960.P1454755808448748578.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A127960, Nat.add_sub_cancel, A127960.P606557239434932118.a, A127960.P1454755808448748578.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A127960

/-! ## A127960.P12079090982127284402

`A003486(n)-3^n`
-/

namespace A127960.P12079090982127284402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003486 n - (3 ^ n : ℤ)

end

end A127960.P12079090982127284402

namespace A127960

/-- `A003486(n)-3^n` -/
def P12079090982127284402.Spec : Prop :=
  ∀ n, P12079090982127284402.a n = A127960 n

end A127960

/-! ## A127960.P10668246574890392709

`n*A050914(n)-n`
-/

namespace A127960.P10668246574890392709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A050914 n - (n : ℤ)

end

end A127960.P10668246574890392709

namespace A127960

/-- `n*A050914(n)-n` -/
def P10668246574890392709.Spec : Prop :=
  ∀ n, P10668246574890392709.a n = A127960 n

end A127960

/-! ## A127960.P4617778501027792359

`abs(n²*A352779(n))`
-/

namespace A127960.P4617778501027792359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * A352779 n|

end

end A127960.P4617778501027792359

namespace A127960

/-- `abs(n²*A352779(n))` -/
def P4617778501027792359.Spec : Prop :=
  ∀ n, P4617778501027792359.a n = A127960 n

end A127960

/-! ## A127960.P15154520634527924292

`n²*A008776(n)/2`
-/

namespace A127960.P15154520634527924292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A008776 n : ℚ) / 2

end

end A127960.P15154520634527924292

namespace A127960

/-- `n²*A008776(n)/2` -/
def P15154520634527924292.Spec : Prop :=
  ∀ n, P15154520634527924292.a n = (A127960 n : ℚ)

end A127960

/-! ## A127960.P11561451209194843546

`n²*A099856(n)/2`
-/

namespace A127960.P11561451209194843546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A099856 n : ℚ) / 2

end

end A127960.P11561451209194843546

namespace A127960

/-- `n²*A099856(n)/2` -/
def P11561451209194843546.Spec : Prop :=
  ∀ n, P11561451209194843546.a n = (A127960 n : ℚ)

end A127960

/-! ## A127960.P16538320163479271265

`lcm(3, n²*A000244(n))`
-/

namespace A127960.P16538320163479271265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 ((n ^ 2 : ℤ) * A000244 n)

end

end A127960.P16538320163479271265

namespace A127960

/-- `lcm(3, n²*A000244(n))` -/
def P16538320163479271265.Spec : Prop :=
  ∀ n, (P16538320163479271265.a n : ℤ) = A127960 n

end A127960

/-! ## A127960.P8037287775855425791

`abs(n²*Δ[A014983(n)])`
-/

namespace A127960.P8037287775855425791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * (f1 (n + 1) - f1 n)|

end

end A127960.P8037287775855425791

namespace A127960

/-- `abs(n²*Δ[A014983(n)])` -/
def P8037287775855425791.Spec : Prop :=
  ∀ n, P8037287775855425791.a n = A127960 n

end A127960

/-! ## A127960.P1822049576230014119

`n²*A034472(n)-n²`
-/

namespace A127960.P1822049576230014119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A034472 n - (n ^ 2 : ℤ)

end

end A127960.P1822049576230014119

namespace A127960

/-- `n²*A034472(n)-n²` -/
def P1822049576230014119.Spec : Prop :=
  ∀ n, P1822049576230014119.a n = A127960 n

end A127960

/-! ## A127960.P13900132418368165870

`n²*A110593(n+1)/2`
-/

namespace A127960.P13900132418368165870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A110593 (n + 1) : ℚ) / 2

end

end A127960.P13900132418368165870

namespace A127960

/-- `n²*A110593(n+1)/2` -/
def P13900132418368165870.Spec : Prop :=
  ∀ n, P13900132418368165870.a n = (A127960 n : ℚ)

end A127960

/-! ## A127960.P10930798681590701760

`A128797(n)+A036290(n)`
-/

namespace A127960.P10930798681590701760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128797 n + A036290 n

end

end A127960.P10930798681590701760

namespace A127960

/-- `A128797(n)+A036290(n)` -/
def P10930798681590701760.Spec : Prop :=
  ∀ n, P10930798681590701760.a n = A127960 n

end A127960

/-! ## A127960.P8683750534991525864

`A116138(n)-A036290(n)`
-/

namespace A127960.P8683750534991525864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116138 n - A036290 n

end

end A127960.P8683750534991525864

namespace A127960

/-- `A116138(n)-A036290(n)` -/
def P8683750534991525864.Spec : Prop :=
  ∀ n, P8683750534991525864.a n = A127960 n

end A127960

/-! ## A127960.P1624535853732625712

`(A128797(n)+A116138(n))/2`
-/

namespace A127960.P1624535853732625712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128797 n + A116138 n : ℚ) / 2

end

end A127960.P1624535853732625712

namespace A127960

/-- `(A128797(n)+A116138(n))/2` -/
def P1624535853732625712.Spec : Prop :=
  ∀ n, P1624535853732625712.a n = (A127960 n : ℚ)

end A127960

/-! ## A127960.P15775157343430533166

`A153703(n+1)-(A027472(n+3)+A003462(n))`
-/

namespace A127960.P15775157343430533166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153703 (n + 1) - (A027472 (n + 3) + A003462 n)

end

end A127960.P15775157343430533166

namespace A127960

/-- `A153703(n+1)-(A027472(n+3)+A003462(n))` -/
def P15775157343430533166.Spec : Prop :=
  ∀ n, P15775157343430533166.a n = A127960 n

end A127960

/-!
# A127961: a(n) = A007583(n) written in binary.

The programs for A127961, the canonical program `A127961.P266665653637312799` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127961 has offset 0).

The definition of A127961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127961.P4993035683446623552

`101*a(n-1)-100*a(n-2)` with `a(0)=1, a(1)=11`
-/

namespace A127961.P4993035683446623552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  101 * a (n - 1) - 100 * a (n - 2)

end

end A127961.P4993035683446623552

namespace A127961

/-- `101*a(n-1)-100*a(n-2)` -/
def P4993035683446623552.Spec : Prop :=
  ∀ n, P4993035683446623552.a n = A127961 n

end A127961

/-! ## A127961.P266665653637312799

`(89+10^(1+2*n))/99`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127961

/-- `(89+10^(1+2*n))/99` -/
def P266665653637312799.Spec : Prop :=
  ∀ n, P266665653637312799.a n = (A127961 n : ℚ)

end A127961

/-! ## A127961.P3579595484865505199

`∑[10*10*a(n-1)]` with `a(0)=1, a(1)=10`
-/

namespace A127961.P3579595484865505199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  10 * (10 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127961.P3579595484865505199

namespace A127961

/-- `∑[10*10*a(n-1)]` -/
def P3579595484865505199.Spec : Prop :=
  ∀ n, (P3579595484865505199.a n : ℤ) = A127961 n

end A127961

/-! ## A127961.P4276600914546777626

`A277953(2*n)`
-/

namespace A127961.P4276600914546777626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277953 (2 * n)

end

end A127961.P4276600914546777626

namespace A127961

/-- `A277953(2*n)` -/
def P4276600914546777626.Spec : Prop :=
  ∀ n, P4276600914546777626.a n = A127961 n

end A127961

/-! ## A127961.P4420070780659546188

`A282122(2*n)`
-/

namespace A127961.P4420070780659546188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282122 (2 * n)

end

end A127961.P4420070780659546188

namespace A127961

/-- `A282122(2*n)` -/
def P4420070780659546188.Spec : Prop :=
  ∀ n, P4420070780659546188.a n = A127961 n

end A127961

/-! ## A127961.P5242345896728401026

`∑[record[A288698(n)]]`
-/

namespace A127961.P5242345896728401026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288698 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127961.P5242345896728401026

namespace A127961

/-- `∑[record[A288698(n)]]` -/
def P5242345896728401026.Spec : Prop :=
  ∀ n, P5242345896728401026.a n = A127961 n

end A127961

/-! ## A127961.P13261343944607614909

`A056830(2*n)+1`
-/

namespace A127961.P13261343944607614909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (2 * n) + 1

end

end A127961.P13261343944607614909

namespace A127961

/-- `A056830(2*n)+1` -/
def P13261343944607614909.Spec : Prop :=
  ∀ n, P13261343944607614909.a n = A127961 n

end A127961

/-! ## A127961.P10376471641464501987

`or(1, A284235(2*n))`
-/

namespace A127961.P10376471641464501987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A284235 (2 * n))

end

end A127961.P10376471641464501987

namespace A127961

/-- `or(1, A284235(2*n))` -/
def P10376471641464501987.Spec : Prop :=
  ∀ n, P10376471641464501987.a n = A127961 n

end A127961

/-! ## A127961.P13294055162371968799

`∑[A178501(2*n)]+1`
-/

namespace A127961.P13294055162371968799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A127961.P13294055162371968799

namespace A127961

/-- `∑[A178501(2*n)]+1` -/
def P13294055162371968799.Spec : Prop :=
  ∀ n, P13294055162371968799.a n = A127961 n

end A127961

/-!
# A127962: Binary expansion of A000979(n).

The programs for A127962, there is no canonical definition to state claims against.
-/

/-! ## A127962.P14953218615549239635

`A007088(A000979(n+1))`
-/

namespace A127962.P14953218615549239635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000979 (n + 1)).toNat

end

end A127962.P14953218615549239635

/-! ## A127962.P2254308214946816391

`A127961(A127936(n+1))`
-/

namespace A127962.P2254308214946816391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127961 (A127936 (n + 1)).toNat

end

end A127962.P2254308214946816391

/-! ## A127962.P17814035703536557930

`A127961(A127964(n+1)+1)`
-/

namespace A127962.P17814035703536557930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127961 (A127964 (n + 1) + 1).toNat

end

end A127962.P17814035703536557930

/-! ## A127962.P114366322826241617

`A127961(A127963(n+1)-1)`
-/

namespace A127962.P114366322826241617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127961 (A127963 (n + 1) - 1).toNat

end

end A127962.P114366322826241617

/-! ## A127962.P14786514393155550379

`A127961(A127965(n+1)/2)`
-/

namespace A127962.P14786514393155550379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127961 (SequenceMachineLib.roundAway ((A127965 (n + 1) : ℚ) / 2)).toNat

end

end A127962.P14786514393155550379

/-!
# A127963: Number of 1's in A127962(n).

The programs for A127963, there is no canonical definition to state claims against.
-/

/-! ## A127963.P641898755305542725

`A127936(n+1)+1`
-/

namespace A127963.P641898755305542725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127936 (n + 1) + 1

end

end A127963.P641898755305542725

/-! ## A127963.P14393525811707085451

`A127964(n+1)+2`
-/

namespace A127963.P14393525811707085451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127964 (n + 1) + 2

end

end A127963.P14393525811707085451

/-! ## A127963.P13238339742708841116

`ceil(A000978(n+1)/2)`
-/

namespace A127963.P13238339742708841116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000978 (n + 1) : ℚ) / 2⌉

end

end A127963.P13238339742708841116

/-! ## A127963.P1751584040255392001

`ceil(A107036(n+2)/2)`
-/

namespace A127963.P1751584040255392001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A107036 (n + 2) : ℚ) / 2⌉

end

end A127963.P1751584040255392001

/-! ## A127963.P8310456070797096441

`ceil(cosh(log(A127965(n+1))))`
-/

namespace A127963.P8310456070797096441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (A127965 (n + 1) : ℝ))⌉

end

end A127963.P8310456070797096441

/-!
# A127964: Number of 0's in the binary expansion of A127962(n).

The programs for A127964, there is no canonical definition to state claims against.
-/

/-! ## A127964.P10649113059909311153

`(A000978(n+1)-3)/2`
-/

namespace A127964.P10649113059909311153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000978 (n + 1) - 3 : ℚ) / 2

end

end A127964.P10649113059909311153

/-! ## A127964.P275319540228436529

`A127936(n+1)-1`
-/

namespace A127964.P275319540228436529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127936 (n + 1) - 1

end

end A127964.P275319540228436529

/-! ## A127964.P15461106828230952499

`A127963(n+1)-2`
-/

namespace A127964.P15461106828230952499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127963 (n + 1) - 2

end

end A127964.P15461106828230952499

/-! ## A127964.P11549414210497715073

`floor(sinh(log(A127965(n+1))))`
-/

namespace A127964.P11549414210497715073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A127965 (n + 1) : ℝ))⌋

end

end A127964.P11549414210497715073

/-! ## A127964.P4060349131270956408

`round(A000978(abs(xor(n, -1)))/2)-2`
-/

namespace A127964.P4060349131270956408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000978 |Int.xor (n : ℤ) (-1)|.toNat : ℚ) / 2) - 2

end

end A127964.P4060349131270956408

/-!
# A127965: Number of bits in A127962(n).

The programs for A127965, there is no canonical definition to state claims against.
-/

/-! ## A127965.P8097791372482641283

`A000978(n+1)-1`
-/

namespace A127965.P8097791372482641283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000978 (n + 1) - 1

end

end A127965.P8097791372482641283

/-! ## A127965.P15675338694684644840

`A127964(n+1)+A127963(n+1)`
-/

namespace A127965.P15675338694684644840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127964 (n + 1) + A127963 (n + 1)

end

end A127965.P15675338694684644840

/-! ## A127965.P11995337350287172281

`1+floor(log2(A000979(n+1)))`
-/

namespace A127965.P11995337350287172281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + Nat.log 2 (A000979 (n + 1)).toNat

end

end A127965.P11995337350287172281

/-! ## A127965.P8142311924074596236

`2*A127936(n+1)`
-/

namespace A127965.P8142311924074596236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127936 (n + 1)

end

end A127965.P8142311924074596236

/-! ## A127965.P17964249493364263093

`2*(A127964(n+1)+1)`
-/

namespace A127965.P17964249493364263093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A127964 (n + 1) + 1)

end

end A127965.P17964249493364263093

/-!
# A127967: A right-skewed Pascal triangle, with interspersed 1's on main diagonal.

The programs for A127967, there is no canonical definition to state claims against.
-/

/-! ## A127967.P5176172238458668725

`A162515(char[∑[n-1]]+n+1)`
-/

namespace A127967.P5176172238458668725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162515 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (n + 1))

end

end A127967.P5176172238458668725

/-! ## A127967.P1555186019477038526

`A065941(n)*A070909(n)`
-/

namespace A127967.P1555186019477038526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n * A070909 n

end

end A127967.P1555186019477038526

/-! ## A127967.P10012126480371328887

`A070909(n)*A072285(n)`
-/

namespace A127967.P10012126480371328887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070909 n * A072285 n

end

end A127967.P10012126480371328887

/-! ## A127967.P13792134600227185306

`A070909(n)*A194005(n)`
-/

namespace A127967.P13792134600227185306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070909 n * A194005 n

end

end A127967.P13792134600227185306

/-! ## A127967.P4155739263206770365

`gcd(A053119(n), A103452(n))`
-/

namespace A127967.P4155739263206770365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053119 n) (A103452 n)

end

end A127967.P4155739263206770365

/-! ## A127967.P17413789668034608846

`abs(A053119(A023531(n)+n))`
-/

namespace A127967.P17413789668034608846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053119 (A023531 n + (n : ℤ)).toNat|

end

end A127967.P17413789668034608846

/-! ## A127967.P8258614275841368279

`or(floor(1/A007318(n)), A162515(n+1))`
-/

namespace A127967.P8258614275841368279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊1 / (A007318 n : ℚ)⌋ (A162515 (n + 1))

end

end A127967.P8258614275841368279

/-! ## A127967.P3824035257233007731

`abs(or(A000005(8*n+9)%2, A053119(n)))`
-/

namespace A127967.P3824035257233007731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (Int.tmod (A000005 (8 * n + 9)) 2) (A053119 n)|

end

end A127967.P3824035257233007731

/-! ## A127967.P8576609600776566165

`abs(or(A000203(8*n+9)%2, A053119(n)))`
-/

namespace A127967.P8576609600776566165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (Int.tmod (A000203 (8 * n + 9)) 2) (A053119 n)|

end

end A127967.P8576609600776566165

/-! ## A127967.P6754268285091425184

`A162515(n+1)+A049310(n)*A168561(n+1)`
-/

namespace A127967.P6754268285091425184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162515 (n + 1) + A049310 n * A168561 (n + 1)

end

end A127967.P6754268285091425184

/-!
# A127968: a(n) = F(n+1) + (1-(-1)^n)/2, where F() = Fibonacci numbers A000045.

The programs for A127968, the canonical program `A127968.P16396371746639466905` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127968 has offset 0).

The definition of A127968 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127968.P16396371746639466905

`a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127968

/-- `a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` -/
def P16396371746639466905.Spec : Prop :=
  ∀ n, P16396371746639466905.a n = A127968 n

theorem P16396371746639466905.correct : P16396371746639466905.Spec := by
  intro n
  simp only [A127968]

end A127968

/-! ## A127968.P17773350506792146116

`ogf((1+x-2x^2-x^3)/(1-x-2x^2+x^3+x^4))`
-/

namespace A127968.P17773350506792146116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2, -1] [1, -1, -2, 1, 1] n

end

end A127968.P17773350506792146116

namespace A127968

/-- `ogf((1+x-2x^2-x^3)/(1-x-2x^2+x^3+x^4))` -/
def P17773350506792146116.Spec : Prop :=
  ∀ n, P17773350506792146116.a n = A127968 n

end A127968

/-! ## A127968.P2023984784506517155

`2*a(n-2)+a(n-3)-1` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A127968.P2023984784506517155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  2 * a (n - 2) + (a (n - 3) - 1)

end

end A127968.P2023984784506517155

namespace A127968

/-- `2*a(n-2)+a(n-3)-1` -/
def P2023984784506517155.Spec : Prop :=
  ∀ n, P2023984784506517155.a n = A127968 n

end A127968

/-! ## A127968.P14208704018566469531

`2*a(n-2)-(1-a(n-3))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A127968.P14208704018566469531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  2 * a (n - 2) - (1 - a (n - 3))

end

end A127968.P14208704018566469531

namespace A127968

/-- `2*a(n-2)-(1-a(n-3))` -/
def P14208704018566469531.Spec : Prop :=
  ∀ n, P14208704018566469531.a n = A127968 n

end A127968

/-! ## A127968.P16034455431775947649

`(1-n)%2+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A127968.P16034455431775947649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.tmod (1 - (n : ℤ)) 2 + (a (n - 1) + a (n - 2))

end

end A127968.P16034455431775947649

namespace A127968

/-- `(1-n)%2+a(n-1)+a(n-2)` -/
def P16034455431775947649.Spec : Prop :=
  ∀ n, P16034455431775947649.a n = A127968 n

end A127968

/-! ## A127968.P8613554768685988840

`1-gcd(2, n)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A127968.P8613554768685988840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - (Nat.gcd 2 n : ℤ) + (a (n - 1) + a (n - 2))

end

end A127968.P8613554768685988840

namespace A127968

/-- `1-gcd(2, n)+a(n-1)+a(n-2)` -/
def P8613554768685988840.Spec : Prop :=
  ∀ n, P8613554768685988840.a n = A127968 n

end A127968

/-! ## A127968.P10218827259469955240

`a(n-1)-((n-1)%2-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A127968.P10218827259469955240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (Int.tmod ((n : ℤ) - 1) 2 - a (n - 2))

end

end A127968.P10218827259469955240

namespace A127968

/-- `a(n-1)-((n-1)%2-a(n-2))` -/
def P10218827259469955240.Spec : Prop :=
  ∀ n, P10218827259469955240.a n = A127968 n

end A127968

/-! ## A127968.P17397298994743394084

`a(n-1)+a(n-2)-and(1, n+1)` with `a(0)=1, a(1)=2`
-/

namespace A127968.P17397298994743394084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 2) - (Nat.land 1 (n + 1) : ℤ))

end

end A127968.P17397298994743394084

namespace A127968

/-- `a(n-1)+a(n-2)-and(1, n+1)` -/
def P17397298994743394084.Spec : Prop :=
  ∀ n, P17397298994743394084.a n = A127968 n

end A127968

/-! ## A127968.P6540048890810338187

`a(n-2)-1+a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A127968.P6540048890810338187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 2) - 1 + (a (n - 2) + a (n - 3))

end

end A127968.P6540048890810338187

namespace A127968

/-- `a(n-2)-1+a(n-2)+a(n-3)` -/
def P6540048890810338187.Spec : Prop :=
  ∀ n, P6540048890810338187.a n = A127968 n

end A127968

/-! ## A127968.P8638480032178437019

`a(n-2)-(1-a(n-2)-a(n-3))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A127968.P8638480032178437019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 2) - (1 - a (n - 2) - a (n - 3))

end

end A127968.P8638480032178437019

namespace A127968

/-- `a(n-2)-(1-a(n-2)-a(n-3))` -/
def P8638480032178437019.Spec : Prop :=
  ∀ n, P8638480032178437019.a n = A127968 n

end A127968

/-! ## A127968.P8364162753250517502

`A074331(n)+1`
-/

namespace A127968.P8364162753250517502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074331 n + 1

end

end A127968.P8364162753250517502

namespace A127968

/-- `A074331(n)+1` -/
def P8364162753250517502.Spec : Prop :=
  ∀ n, P8364162753250517502.a n = A127968 n

end A127968

/-! ## A127968.P7141919823011532132

`∑[abs(A119282(n))]+1`
-/

namespace A127968.P7141919823011532132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A119282 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A127968.P7141919823011532132

namespace A127968

/-- `∑[abs(A119282(n))]+1` -/
def P7141919823011532132.Spec : Prop :=
  ∀ n, P7141919823011532132.a n = A127968 n

end A127968

/-! ## A127968.P13043887034590852800

`A000045(n+1)+n%2`
-/

namespace A127968.P13043887034590852800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + ((n % 2 : ℕ) : ℤ)

end

end A127968.P13043887034590852800

namespace A127968

/-- `A000045(n+1)+n%2` -/
def P13043887034590852800.Spec : Prop :=
  ∀ n, P13043887034590852800.a n = A127968 n

end A127968

/-! ## A127968.P8299335430906096207

`a(n-2)+A000045(n)` with `a(0)=1, a(1)=2`
-/

namespace A127968.P8299335430906096207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + A000045 n

end

end A127968.P8299335430906096207

namespace A127968

/-- `a(n-2)+A000045(n)` -/
def P8299335430906096207.Spec : Prop :=
  ∀ n, P8299335430906096207.a n = A127968 n

end A127968

/-! ## A127968.P15310131059803131289

`A000045(C(n+1, n))+and(1, n)`
-/

namespace A127968.P15310131059803131289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose (n + 1) n) + (Nat.land 1 n : ℤ)

end

end A127968.P15310131059803131289

namespace A127968

/-- `A000045(C(n+1, n))+and(1, n)` -/
def P15310131059803131289.Spec : Prop :=
  ∀ n, P15310131059803131289.a n = A127968 n

end A127968

/-! ## A127968.P2518296973123270661

`A000032(n-1)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`
-/

namespace A127968.P2518296973123270661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 4] fun n a =>
  A000032 (n - 1) + a (n - 4)

end

end A127968.P2518296973123270661

namespace A127968

/-- `A000032(n-1)+a(n-4)` -/
def P2518296973123270661.Spec : Prop :=
  ∀ n, P2518296973123270661.a n = A127968 n

end A127968

/-! ## A127968.P3061348396938985449

`∑[A000045(2*n-n)-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A127968.P3061348396938985449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A000045 (2 * n - n) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127968.P3061348396938985449

namespace A127968

/-- `∑[A000045(2*n-n)-a(n-1)]` -/
def P3061348396938985449.Spec : Prop :=
  ∀ n, P3061348396938985449.a n = A127968 n

end A127968

/-! ## A127968.P10287060536497567911

`A000045(∑[2*n+1]/(n+1))+and(1, n)`
-/

namespace A127968.P10287060536497567911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ))).toNat + (Nat.land 1 n : ℤ)

end

end A127968.P10287060536497567911

namespace A127968

/-- `A000045(∑[2*n+1]/(n+1))+and(1, n)` -/
def P10287060536497567911.Spec : Prop :=
  ∀ n, P10287060536497567911.a n = A127968 n

end A127968

/-! ## A127968.P15773903718242658103

`A247050(A007310(n+2))`
-/

namespace A127968.P15773903718242658103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247050 (A007310 (n + 2)).toNat

end

end A127968.P15773903718242658103

namespace A127968

/-- `A247050(A007310(n+2))` -/
def P15773903718242658103.Spec : Prop :=
  ∀ n, P15773903718242658103.a n = A127968 n

end A127968

/-! ## A127968.P10700954201234721594

`A247050(A047270(n+2))`
-/

namespace A127968.P10700954201234721594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247050 (A047270 (n + 2)).toNat

end

end A127968.P10700954201234721594

namespace A127968

/-- `A247050(A047270(n+2))` -/
def P10700954201234721594.Spec : Prop :=
  ∀ n, P10700954201234721594.a n = A127968 n

end A127968

/-!
# A127969: Inverse of number triangle A127967.

The programs for A127969, there is no canonical definition to state claims against.
-/

/-! ## A127969.P235938744756762642

`Δ[A025648(A056469(A205574(n)))]`
-/

namespace A127969.P235938744756762642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025648 (A056469 (A205574 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127969.P235938744756762642

/-!
# A127970: Number triangle A127967 modulo 2.

The programs for A127970, there is no canonical definition to state claims against.
-/

/-! ## A127970.P15787896442893557413

`A080416(n)%2`
-/

namespace A127970.P15787896442893557413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080416 n) 2

end

end A127970.P15787896442893557413

/-! ## A127970.P14459123142742942522

`A127967(n)%2`
-/

namespace A127970.P14459123142742942522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127967 n) 2

end

end A127970.P14459123142742942522

/-! ## A127970.P7620625274627109157

`A274310(n+1)%2`
-/

namespace A127970.P7620625274627109157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274310 (n + 1)) 2

end

end A127970.P7620625274627109157

/-! ## A127970.P5433180449411437608

`and(1, A136450(n+1))`
-/

namespace A127970.P5433180449411437608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A136450 (n + 1))

end

end A127970.P5433180449411437608

/-! ## A127970.P4631276441225820461

`char[A286108(n)-char[∑[n]]]`
-/

namespace A127970.P4631276441225820461
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286108 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A127970.P4631276441225820461

/-! ## A127970.P1738544834053422958

`and(1, A274310(C(n+1, n)))`
-/

namespace A127970.P1738544834053422958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A274310 (Nat.choose (n + 1) n))

end

end A127970.P1738544834053422958

/-! ## A127970.P4857767075704620457

`and(1, A202673(round(acot(n)+n)))`
-/

namespace A127970.P4857767075704620457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A202673 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat)

end

end A127970.P4857767075704620457

/-! ## A127970.P4353013949875048437

`and(1, A202677(round(acot(n)+n)))`
-/

namespace A127970.P4353013949875048437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A202677 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat)

end

end A127970.P4353013949875048437

/-! ## A127970.P17545886270298691385

`and(1, A203906(round(acot(n)+n)))`
-/

namespace A127970.P17545886270298691385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A203906 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat)

end

end A127970.P17545886270298691385

/-! ## A127970.P8713810695687351842

`and(1, A203954(round(acot(n)+n)))`
-/

namespace A127970.P8713810695687351842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A203954 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat)

end

end A127970.P8713810695687351842

/-!
# A127971: a(n) = fusc(n+1) + (1-(-1)^n)/2, fusc = A002487.

The programs for A127971, the canonical program `A127971.P6246049584962585344` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127971 has offset 0).

The definition of A127971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127971.P6246049584962585344

`Δ[A174868(n)]+n%2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A127971

/-- `Δ[A174868(n)]+n%2` -/
def P6246049584962585344.Spec : Prop :=
  ∀ n, P6246049584962585344.a n = A127971 n

theorem P6246049584962585344.correct : P6246049584962585344.Spec := by
  intro n
  simp only [A127971]

end A127971

/-! ## A127971.P11948204142977002528

`A002487(n+1)+and(1, n)`
-/

namespace A127971.P11948204142977002528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) + (Nat.land 1 n : ℤ)

end

end A127971.P11948204142977002528

namespace A127971

/-- `A002487(n+1)+and(1, n)` -/
def P11948204142977002528.Spec : Prop :=
  ∀ n, P11948204142977002528.a n = A127971 n

end A127971

/-! ## A127971.P782591678830223163

`A301977(n)+2-a(n-1)` with `a(0)=1`
-/

namespace A127971.P782591678830223163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301977 n + (2 - a (n - 1))

end

end A127971.P782591678830223163

namespace A127971

/-- `A301977(n)+2-a(n-1)` -/
def P782591678830223163.Spec : Prop :=
  ∀ n, P782591678830223163.a n = A127971 n

end A127971

/-! ## A127971.P2690392755529457656

`1-(a(n-1)-A007306(n+1))` with `a(0)=1`
-/

namespace A127971.P2690392755529457656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) - A007306 (n + 1))

end

end A127971.P2690392755529457656

namespace A127971

/-- `1-(a(n-1)-A007306(n+1))` -/
def P2690392755529457656.Spec : Prop :=
  ∀ n, P2690392755529457656.a n = A127971 n

end A127971

/-! ## A127971.P2605209919967396811

`A002487(n+1)+A000035(n)`
-/

namespace A127971.P2605209919967396811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) + A000035 n

end

end A127971.P2605209919967396811

namespace A127971

/-- `A002487(n+1)+A000035(n)` -/
def P2605209919967396811.Spec : Prop :=
  ∀ n, P2605209919967396811.a n = A127971 n

end A127971

/-! ## A127971.P4336486511672599840

`A002487(n+1)+Δ[A008619(n)]`
-/

namespace A127971.P4336486511672599840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) + (f1 (n + 1) - f1 n)

end

end A127971.P4336486511672599840

namespace A127971

/-- `A002487(n+1)+Δ[A008619(n)]` -/
def P4336486511672599840.Spec : Prop :=
  ∀ n, P4336486511672599840.a n = A127971 n

end A127971

/-! ## A127971.P17478538979987688687

`A002487(n+1)+A000034(n)-1`
-/

namespace A127971.P17478538979987688687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) + (A000034 n - 1)

end

end A127971.P17478538979987688687

namespace A127971

/-- `A002487(n+1)+A000034(n)-1` -/
def P17478538979987688687.Spec : Prop :=
  ∀ n, P17478538979987688687.a n = A127971 n

end A127971

/-! ## A127971.P3532804056164125759

`A002487(n+1)+n-A052928(n)`
-/

namespace A127971.P3532804056164125759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) + ((n : ℤ) - A052928 n)

end

end A127971.P3532804056164125759

namespace A127971

/-- `A002487(n+1)+n-A052928(n)` -/
def P3532804056164125759.Spec : Prop :=
  ∀ n, P3532804056164125759.a n = A127971 n

end A127971

/-! ## A127971.P16283408601129817717

`A002487(n+1)+A040001(n+1)-1`
-/

namespace A127971.P16283408601129817717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) + (A040001 (n + 1) - 1)

end

end A127971.P16283408601129817717

namespace A127971

/-- `A002487(n+1)+A040001(n+1)-1` -/
def P16283408601129817717.Spec : Prop :=
  ∀ n, P16283408601129817717.a n = A127971 n

end A127971

/-! ## A127971.P11168553841077252862

`A002487(n+1)+n-2*A004526(n)`
-/

namespace A127971.P11168553841077252862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) + ((n : ℤ) - 2 * A004526 n)

end

end A127971.P11168553841077252862

namespace A127971

/-- `A002487(n+1)+n-2*A004526(n)` -/
def P11168553841077252862.Spec : Prop :=
  ∀ n, P11168553841077252862.a n = A127971 n

end A127971

/-! ## A127971.P7153296852919680510

`A007306(A003602(n+1))+A000035(n)`
-/

namespace A127971.P7153296852919680510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A003602 (n + 1)).toNat + A000035 n

end

end A127971.P7153296852919680510

namespace A127971

/-- `A007306(A003602(n+1))+A000035(n)` -/
def P7153296852919680510.Spec : Prop :=
  ∀ n, P7153296852919680510.a n = A127971 n

end A127971

/-! ## A127971.P11544593221538046473

`A010060(A003188(n))+A002487(n+1)`
-/

namespace A127971.P11544593221538046473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A003188 n).toNat + A002487 (n + 1)

end

end A127971.P11544593221538046473

namespace A127971

/-- `A010060(A003188(n))+A002487(n+1)` -/
def P11544593221538046473.Spec : Prop :=
  ∀ n, P11544593221538046473.a n = A127971 n

end A127971

/-! ## A127971.P10583749129563040690

`A002487(n+1)+A008619(n+1)-A008619(n)`
-/

namespace A127971.P10583749129563040690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) + (A008619 (n + 1) - A008619 n)

end

end A127971.P10583749129563040690

namespace A127971

/-- `A002487(n+1)+A008619(n+1)-A008619(n)` -/
def P10583749129563040690.Spec : Prop :=
  ∀ n, P10583749129563040690.a n = A127971 n

end A127971

/-! ## A127971.P9966472707121025667

`or(1, n+1)-A284013(n+1)`
-/

namespace A127971.P9966472707121025667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n + 1) : ℤ) - A284013 (n + 1)

end

end A127971.P9966472707121025667

namespace A127971

/-- `or(1, n+1)-A284013(n+1)` -/
def P9966472707121025667.Spec : Prop :=
  ∀ n, P9966472707121025667.a n = A127971 n

end A127971

/-! ## A127971.P16500663251826411221

`A059841(n+1)+A002487(n+1)`
-/

namespace A127971.P16500663251826411221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) + A002487 (n + 1)

end

end A127971.P16500663251826411221

namespace A127971

/-- `A059841(n+1)+A002487(n+1)` -/
def P16500663251826411221.Spec : Prop :=
  ∀ n, P16500663251826411221.a n = A127971 n

end A127971

/-! ## A127971.P9079721767091692147

`A036987(A006519(n+2))+A002487(n+1)`
-/

namespace A127971.P9079721767091692147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A006519 (n + 2)).toNat + A002487 (n + 1)

end

end A127971.P9079721767091692147

namespace A127971

/-- `A036987(A006519(n+2))+A002487(n+1)` -/
def P9079721767091692147.Spec : Prop :=
  ∀ n, P9079721767091692147.a n = A127971 n

end A127971

/-! ## A127971.P15218419918783352845

`A069517(A037227(n+2))+A002487(n+1)`
-/

namespace A127971.P15218419918783352845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069517 (A037227 (n + 2)).toNat + A002487 (n + 1)

end

end A127971.P15218419918783352845

namespace A127971

/-- `A069517(A037227(n+2))+A002487(n+1)` -/
def P15218419918783352845.Spec : Prop :=
  ∀ n, P15218419918783352845.a n = A127971 n

end A127971

/-! ## A127971.P11896645610936899809

`A019590(A001511(n+2)²)+A002487(n+1)`
-/

namespace A127971.P11896645610936899809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A001511 (n + 2) ^ 2).toNat + A002487 (n + 1)

end

end A127971.P11896645610936899809

namespace A127971

/-- `A019590(A001511(n+2)²)+A002487(n+1)` -/
def P11896645610936899809.Spec : Prop :=
  ∀ n, P11896645610936899809.a n = A127971 n

end A127971

/-! ## A127971.P15584311396124443709

`A019590(A001511(n+2)+1)+A002487(n+1)`
-/

namespace A127971.P15584311396124443709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A001511 (n + 2) + 1).toNat + A002487 (n + 1)

end

end A127971.P15584311396124443709

namespace A127971

/-- `A019590(A001511(n+2)+1)+A002487(n+1)` -/
def P15584311396124443709.Spec : Prop :=
  ∀ n, P15584311396124443709.a n = A127971 n

end A127971

/-! ## A127971.P435922458399086425

`A002487(n+1)+A004526(n+1)-A004526(n)`
-/

namespace A127971.P435922458399086425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) + (A004526 (n + 1) - A004526 n)

end

end A127971.P435922458399086425

namespace A127971

/-- `A002487(n+1)+A004526(n+1)-A004526(n)` -/
def P435922458399086425.Spec : Prop :=
  ∀ n, P435922458399086425.a n = A127971 n

end A127971

/-!
# A127972: Number triangle A127969 modulo 2.

The programs for A127972, there is no canonical definition to state claims against.
-/

/-! ## A127972.P5824737216511100501

`and(1, A127969(n))`
-/

namespace A127972.P5824737216511100501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A127969 n)

end

end A127972.P5824737216511100501

/-! ## A127972.P7206725512702845970

`A127969(n%(n+1))²%2`
-/

namespace A127972.P7206725512702845970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127969 (n % (n + 1)) ^ 2) 2

end

end A127972.P7206725512702845970

/-! ## A127972.P12353532395702039758

`A000035(abs(A127969(n)))`
-/

namespace A127972.P12353532395702039758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 |A127969 n|.toNat

end

end A127972.P12353532395702039758

/-! ## A127972.P16729474388447008847

`A000035(lcm(3, A127969(n)))`
-/

namespace A127972.P16729474388447008847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.lcm 3 (A127969 n))

end

end A127972.P16729474388447008847

/-! ## A127972.P6964727290157608945

`abs(A134452(abs(A127969(n))))`
-/

namespace A127972.P6964727290157608945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A134452 |A127969 n|.toNat)|

end

end A127972.P6964727290157608945

/-! ## A127972.P13046717326175307223

`A010875(abs(A127969(n)))%2`
-/

namespace A127972.P13046717326175307223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010875 |A127969 n|.toNat) 2

end

end A127972.P13046717326175307223

/-! ## A127972.P4083676910183579445

`gcd(A000010(n+1), A127969(n))%2`
-/

namespace A127972.P4083676910183579445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A127969 n) % 2

end

end A127972.P4083676910183579445

/-! ## A127972.P13534400054865929745

`A001221(val(A127969(n)²+1, 2)+1)`
-/

namespace A127972.P13534400054865929745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.valuation (A127969 n ^ 2 + 1).toNat 2 + 1)

end

end A127972.P13534400054865929745

/-! ## A127972.P13154276700190245413

`(A127969(n)^2^A001221(n+1))%2`
-/

namespace A127972.P13154276700190245413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A127969 n : ℝ) ^ ((2 : ℚ) ^ (A001221 (n + 1) : ℤ) : ℝ))) 2

end

end A127972.P13154276700190245413

/-!
# A127973: a(2n)=A060632(n); a(2n+1)=A048896(n)/2.

The programs for A127973, there is no canonical definition to state claims against.
-/

/-! ## A127973.P8515494253366444294

`2*a(and(n+2, n-3))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A127973.P8515494253366444294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  2 * a (Int.land (n + 2 : ℤ) ((n : ℤ) - 3)).toNat

end

end A127973.P8515494253366444294

/-! ## A127973.P17410816031305687430

`A001316(∑[and(2, -n)])`
-/

namespace A127973.P17410816031305687430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127973.P17410816031305687430

/-! ## A127973.P14768796544464315278

`A048896(∑[and(2, -n)])`
-/

namespace A127973.P14768796544464315278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127973.P14768796544464315278

/-! ## A127973.P16234405354560427505

`A001316(∑[∑[n]%2])`
-/

namespace A127973.P16234405354560427505
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127973.P16234405354560427505

/-! ## A127973.P6616090245984460431

`A285741(∑[and(1, ∑[n])])`
-/

namespace A127973.P6616090245984460431
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285741 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127973.P6616090245984460431

/-! ## A127973.P10016173951715795300

`A001316(ceil(lcm(2, n)/4))`
-/

namespace A127973.P10016173951715795300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 ⌈(Nat.lcm 2 n : ℚ) / 4⌉.toNat

end

end A127973.P10016173951715795300

/-! ## A127973.P2294416632009293976

`A060632(∑[C(2, n%4)])`
-/

namespace A127973.P2294416632009293976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n % 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127973.P2294416632009293976

/-! ## A127973.P13858041944846547396

`A048896(and(2, n)!+n)`
-/

namespace A127973.P13858041944846547396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (Nat.factorial (Nat.land 2 n) + n)

end

end A127973.P13858041944846547396

/-! ## A127973.P16634669491091139650

`A060632(gcd(n, ∑[n])+1)`
-/

namespace A127973.P16634669491091139650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A127973.P16634669491091139650

/-! ## A127973.P18418673175479016466

`A001316(∑[1-a(n-2)])` with `a(0)=0, a(1)=1`
-/

namespace A127973.P18418673175479016466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  1 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127973.P18418673175479016466

/-!
# A127974: Numerators in expansion of (1-x)^(-2/3).

The programs for A127974, the canonical program `A127974.P14465316888713072293` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127974 has offset 0).

The definition of A127974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127974.P14465316888713072293

`(3-1/n)*lcm(n, a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127974

/-- `(3-1/n)*lcm(n, a(n-1))` -/
def P14465316888713072293.Spec : Prop :=
  ∀ n, P14465316888713072293.a n = (A127974 n : ℚ)

end A127974

/-! ## A127974.P15273912488873225031

`A004988(n)/3^(n-∑[val(abs(1-n)+1, 3)])`
-/

namespace A127974.P15273912488873225031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004988 n : ℚ) / (3 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ)

end

end A127974.P15273912488873225031

namespace A127974

/-- `A004988(n)/3^(n-∑[val(abs(1-n)+1, 3)])` -/
def P15273912488873225031.Spec : Prop :=
  ∀ n, P15273912488873225031.a n = (A127974 n : ℚ)

end A127974

/-! ## A127974.P3840626712206259474

`A004988(n)/A125824(n)`
-/

namespace A127974.P3840626712206259474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004988 n : ℚ) / (A125824 n : ℚ)

end

end A127974.P3840626712206259474

namespace A127974

/-- `A004988(n)/A125824(n)` -/
def P3840626712206259474.Spec : Prop :=
  ∀ n, P3840626712206259474.a n = (A127974 n : ℚ)

end A127974

/-! ## A127974.P12021947259816808385

`gcd(record[A004747(n+1)], A004988(n))`
-/

namespace A127974.P12021947259816808385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004747 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A004988 n)

end

end A127974.P12021947259816808385

namespace A127974

/-- `gcd(record[A004747(n+1)], A004988(n))` -/
def P12021947259816808385.Spec : Prop :=
  ∀ n, (P12021947259816808385.a n : ℤ) = A127974 n

end A127974

/-! ## A127974.P15151928250879280006

`A008544(n)/gcd(A000142(n), A007559(n))`
-/

namespace A127974.P15151928250879280006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008544 n : ℚ) / (Int.gcd (A000142 n) (A007559 n) : ℚ)

end

end A127974.P15151928250879280006

namespace A127974

/-- `A008544(n)/gcd(A000142(n), A007559(n))` -/
def P15151928250879280006.Spec : Prop :=
  ∀ n, P15151928250879280006.a n = (A127974 n : ℚ)

end A127974

/-! ## A127974.P15705204130401261669

`A008544(n)/gcd(A008544(n), A032031(n))`
-/

namespace A127974.P15705204130401261669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008544 n : ℚ) / (Int.gcd (A008544 n) (A032031 n) : ℚ)

end

end A127974.P15705204130401261669

namespace A127974

/-- `A008544(n)/gcd(A008544(n), A032031(n))` -/
def P15705204130401261669.Spec : Prop :=
  ∀ n, P15705204130401261669.a n = (A127974 n : ℚ)

end A127974

/-! ## A127974.P10896403874174964896

`A097186(A000096(n))/A125824(n)`
-/

namespace A127974.P10896403874174964896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097186 (A000096 n).toNat : ℚ) / (A125824 n : ℚ)

end

end A127974.P10896403874174964896

namespace A127974

/-- `A097186(A000096(n))/A125824(n)` -/
def P10896403874174964896.Spec : Prop :=
  ∀ n, P10896403874174964896.a n = (A127974 n : ℚ)

end A127974

/-!
# A127975: Repeat 3^n three times.

The programs for A127975, the canonical program `A127975.P15337257591459278286` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127975 has offset 0).

The definition of A127975 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127975.P15337257591459278286

`3^floor(n/3)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127975

/-- `3^floor(n/3)` -/
def P15337257591459278286.Spec : Prop :=
  ∀ n, P15337257591459278286.a n = (A127975 n : ℚ)

end A127975

/-! ## A127975.P16403140749225927801

`∏[gcd(3, ∏{p}[n, #])]`
-/

namespace A127975.P16403140749225927801
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A127975.P16403140749225927801

namespace A127975

/-- `∏[gcd(3, ∏{p}[n, #])]` -/
def P16403140749225927801.Spec : Prop :=
  ∀ n, (P16403140749225927801.a n : ℤ) = A127975 n

end A127975

/-! ## A127975.P18013168017198579683

`∏[floor(cosh((n-1)%3))]`
-/

namespace A127975.P18013168017198579683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Int.tmod ((n : ℤ) - 1) 3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A127975.P18013168017198579683

namespace A127975

/-- `∏[floor(cosh((n-1)%3))]` -/
def P18013168017198579683.Spec : Prop :=
  ∀ n, P18013168017198579683.a n = A127975 n

end A127975

/-! ## A127975.P2295777404993893473

`3*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A127975.P2295777404993893473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  3 * a (n - 3)

end

end A127975.P2295777404993893473

namespace A127975

/-- `3*a(n-3)` -/
def P2295777404993893473.Spec : Prop :=
  ∀ n, (P2295777404993893473.a n : ℤ) = A127975 n

end A127975

/-! ## A127975.P15412355167314057065

`∏[gcd(n², 3%(n+2))]`
-/

namespace A127975.P15412355167314057065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n ^ 2) (3 % (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A127975.P15412355167314057065

namespace A127975

/-- `∏[gcd(n², 3%(n+2))]` -/
def P15412355167314057065.Spec : Prop :=
  ∀ n, (P15412355167314057065.a n : ℤ) = A127975 n

end A127975

/-! ## A127975.P5488994215138890423

`or(1, 3^round((n-1)/3))`
-/

namespace A127975.P5488994215138890423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 3) : ℤ)))

end

end A127975.P5488994215138890423

namespace A127975

/-- `or(1, 3^round((n-1)/3))` -/
def P5488994215138890423.Spec : Prop :=
  ∀ n, P5488994215138890423.a n = A127975 n

end A127975

/-! ## A127975.P14557773078890648788

`a(n-3)/(1-2/3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A127975.P14557773078890648788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 3) / (1 - (2 : ℚ) / 3)

end

end A127975.P14557773078890648788

namespace A127975

/-- `a(n-3)/(1-2/3)` -/
def P14557773078890648788.Spec : Prop :=
  ∀ n, P14557773078890648788.a n = (A127975 n : ℚ)

end A127975

/-! ## A127975.P4353329279483137368

`floor(3^∑[a(n-3)²])` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A127975.P4353329279483137368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127975.P4353329279483137368

namespace A127975

/-- `floor(3^∑[a(n-3)²])` -/
def P4353329279483137368.Spec : Prop :=
  ∀ n, (P4353329279483137368.a n : ℤ) = A127975 n

end A127975

/-! ## A127975.P10166672415398270849

`floor(3^∑[floor(a(n-3))])` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A127975.P10166672415398270849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127975.P10166672415398270849

namespace A127975

/-- `floor(3^∑[floor(a(n-3))])` -/
def P10166672415398270849.Spec : Prop :=
  ∀ n, (P10166672415398270849.a n : ℤ) = A127975 n

end A127975

/-! ## A127975.P5226261827475556453

`a(n-3)+lcm(2, a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A127975.P5226261827475556453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 3) + Nat.lcm 2 (a (n - 3))

end

end A127975.P5226261827475556453

namespace A127975

/-- `a(n-3)+lcm(2, a(n-3))` -/
def P5226261827475556453.Spec : Prop :=
  ∀ n, (P5226261827475556453.a n : ℤ) = A127975 n

end A127975

/-! ## A127975.P617225938271247727

`a(n-3)+a(n-3)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A127975.P617225938271247727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 3) + (a (n - 3) + a (n - 3))

end

end A127975.P617225938271247727

namespace A127975

/-- `a(n-3)+a(n-3)+a(n-3)` -/
def P617225938271247727.Spec : Prop :=
  ∀ n, (P617225938271247727.a n : ℤ) = A127975 n

end A127975

/-! ## A127975.P2092828867492731342

`∏[gcd(3, A004277(n))]`
-/

namespace A127975.P2092828867492731342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A004277 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A127975.P2092828867492731342

namespace A127975

/-- `∏[gcd(3, A004277(n))]` -/
def P2092828867492731342.Spec : Prop :=
  ∀ n, (P2092828867492731342.a n : ℤ) = A127975 n

end A127975

/-! ## A127975.P4278410751757199288

`∏[2*A100063(n)-1]`
-/

namespace A127975.P4278410751757199288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100063 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A127975.P4278410751757199288

namespace A127975

/-- `∏[2*A100063(n)-1]` -/
def P4278410751757199288.Spec : Prop :=
  ∀ n, P4278410751757199288.a n = A127975 n

end A127975

/-! ## A127975.P822728629715707727

`∏[gcd(n, A267872(n+1))]`
-/

namespace A127975.P822728629715707727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A267872 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A127975.P822728629715707727

namespace A127975

/-- `∏[gcd(n, A267872(n+1))]` -/
def P822728629715707727.Spec : Prop :=
  ∀ n, (P822728629715707727.a n : ℤ) = A127975 n

end A127975

/-! ## A127975.P14996826344434028831

`a(n-1)*A109007(n)` with `a(0)=1`
-/

namespace A127975.P14996826344434028831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A109007 n

end

end A127975.P14996826344434028831

namespace A127975

/-- `a(n-1)*A109007(n)` -/
def P14996826344434028831.Spec : Prop :=
  ∀ n, P14996826344434028831.a n = A127975 n

end A127975

/-!
# A127976: a(n) = ((6*n + 10)/27)*2^(n-1) + ((-1)^(n-1))*(6*n + 5)/27.

The programs for A127976, the canonical program `A127976.P15055176546222383402` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127976 has offset 1).

The definition of A127976 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127976.P15055176546222383402

`(6*(n+1)+10)/27*2^n+(-1)^n*(6*(n+1)+5)/27`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127976

/-- `(6*(n+1)+10)/27*2^n+(-1)^n*(6*(n+1)+5)/27` -/
def P15055176546222383402.Spec : Prop :=
  ∀ n, P15055176546222383402.a n = (A127976 (n + 1) : ℚ)

end A127976

/-! ## A127976.P13375134906484679871

`∑[abs(A322039(n))]`
-/

namespace A127976.P13375134906484679871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A322039 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127976.P13375134906484679871

namespace A127976

/-- `∑[abs(A322039(n))]` -/
def P13375134906484679871.Spec : Prop :=
  ∀ n, P13375134906484679871.a n = A127976 (n + 1)

end A127976

/-! ## A127976.P10681220003809675472

`∑[A062157(n+1)*A322039(n)]`
-/

namespace A127976.P10681220003809675472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A322039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127976.P10681220003809675472

namespace A127976

/-- `∑[A062157(n+1)*A322039(n)]` -/
def P10681220003809675472.Spec : Prop :=
  ∀ n, P10681220003809675472.a n = A127976 (n + 1)

end A127976

/-! ## A127976.P6346579993331763245

`ogf((1-x)/(1-2x-3x^2+4x^3+4x^4))`
-/

namespace A127976.P6346579993331763245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, -3, 4, 4] n

end

end A127976.P6346579993331763245

namespace A127976

/-- `ogf((1-x)/(1-2x-3x^2+4x^3+4x^4))` -/
def P6346579993331763245.Spec : Prop :=
  ∀ n, P6346579993331763245.a n = A127976 (n + 1)

end A127976

/-! ## A127976.P2842759174008179522

`∑[abs(∑[A084219(n)])]`
-/

namespace A127976.P2842759174008179522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084219 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127976.P2842759174008179522

namespace A127976

/-- `∑[abs(∑[A084219(n)])]` -/
def P2842759174008179522.Spec : Prop :=
  ∀ n, P2842759174008179522.a n = A127976 (n + 1)

end A127976

/-! ## A127976.P15399121153346085622

`Δ[A127985(n)+A127985(n)-A073371(n)]`
-/

namespace A127976.P15399121153346085622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127985 n + (A127985 n - A073371 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127976.P15399121153346085622

namespace A127976

/-- `Δ[A127985(n)+A127985(n)-A073371(n)]` -/
def P15399121153346085622.Spec : Prop :=
  ∀ n, P15399121153346085622.a n = A127976 (n + 1)

end A127976

/-! ## A127976.P9113573471475051975

`A125690(∑[n+1]+1)`
-/

namespace A127976.P9113573471475051975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125690 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A127976.P9113573471475051975

namespace A127976

/-- `A125690(∑[n+1]+1)` -/
def P9113573471475051975.Spec : Prop :=
  ∀ n, P9113573471475051975.a n = A127976 (n + 1)

end A127976

/-! ## A127976.P6606112037189120803

`A208328(∑[n+2])`
-/

namespace A127976.P6606112037189120803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208328 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127976.P6606112037189120803

namespace A127976

/-- `A208328(∑[n+2])` -/
def P6606112037189120803.Spec : Prop :=
  ∀ n, P6606112037189120803.a n = A127976 (n + 1)

end A127976

/-!
# A127978: a(n) = ((15*n + 34)/54)*2^(n-1) - (-1)^(n-1)*(6*n + 5)/27.

The programs for A127978, the canonical program `A127978.P9018358776630483187` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127978 has offset 2).

The definition of A127978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127978.P9018358776630483187

`(15*(n+2)+34)/54*2^(n+1)-(-1)^(n+1)*(6*(n+2)+5)/27`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127978

/-- `(15*(n+2)+34)/54*2^(n+1)-(-1)^(n+1)*(6*(n+2)+5)/27` -/
def P9018358776630483187.Spec : Prop :=
  ∀ n, P9018358776630483187.a n = (A127978 (n + 2) : ℚ)

end A127978

/-! ## A127978.P14710439332186690971

`ogf((-3+x+4x^2+2x^3)/(-1+2x+3x^2-4x^3-4x^4))`
-/

namespace A127978.P14710439332186690971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1, -4, -2] [1, -2, -3, 4, 4] n

end

end A127978.P14710439332186690971

namespace A127978

/-- `ogf((-3+x+4x^2+2x^3)/(-1+2x+3x^2-4x^3-4x^4))` -/
def P14710439332186690971.Spec : Prop :=
  ∀ n, P14710439332186690971.a n = A127978 (n + 2)

end A127978

/-! ## A127978.P16141934332390864393

`Δ[A127979(n+1)]`
-/

namespace A127978.P16141934332390864393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127978.P16141934332390864393

namespace A127978

/-- `Δ[A127979(n+1)]` -/
def P16141934332390864393.Spec : Prop :=
  ∀ n, P16141934332390864393.a n = A127978 (n + 2)

end A127978

/-! ## A127978.P1990051249720532202

`Δ[A172285(n)+A102713(n+1)]`
-/

namespace A127978.P1990051249720532202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172285 n + A102713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127978.P1990051249720532202

namespace A127978

/-- `Δ[A172285(n)+A102713(n+1)]` -/
def P1990051249720532202.Spec : Prop :=
  ∀ n, P1990051249720532202.a n = A127978 (n + 2)

end A127978

/-! ## A127978.P15931133014661138386

`Δ[A073371(n+1)-A127984(n+1)]`
-/

namespace A127978.P15931133014661138386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073371 (n + 1) - A127984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127978.P15931133014661138386

namespace A127978

/-- `Δ[A073371(n+1)-A127984(n+1)]` -/
def P15931133014661138386.Spec : Prop :=
  ∀ n, P15931133014661138386.a n = A127978 (n + 2)

end A127978

/-! ## A127978.P15384792120901244125

`Δ[A102713(n+2)/2]`
-/

namespace A127978.P15384792120901244125
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102713 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127978.P15384792120901244125

namespace A127978

/-- `Δ[A102713(n+2)/2]` -/
def P15384792120901244125.Spec : Prop :=
  ∀ n, P15384792120901244125.a n = (A127978 (n + 2) : ℚ)

end A127978

/-!
# A127979: a(n) = (5*n/18 + 19/54)*2^n - (-1)^(n-1)*(3*n + 4)/27.

The programs for A127979, the canonical program `A127979.P10188426557856895118` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127979 has offset 1).

The definition of A127979 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127979.P10188426557856895118

`2*a(n-1)+3*a(n-2)-4*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=24`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127979

/-- `2*a(n-1)+3*a(n-2)-4*a(n-3)-4*a(n-4)` -/
def P10188426557856895118.Spec : Prop :=
  ∀ n, P10188426557856895118.a n = A127979 (n + 1)

theorem P10188426557856895118.correct : P10188426557856895118.Spec := by
  intro n
  simp only [A127979, Nat.add_sub_cancel]

end A127979

/-! ## A127979.P6682854955764113353

`ogf((1+2x-2x^2-2x^3)/(1-2x-3x^2+4x^3+4x^4))`
-/

namespace A127979.P6682854955764113353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -2, -2] [1, -2, -3, 4, 4] n

end

end A127979.P6682854955764113353

namespace A127979

/-- `ogf((1+2x-2x^2-2x^3)/(1-2x-3x^2+4x^3+4x^4))` -/
def P6682854955764113353.Spec : Prop :=
  ∀ n, P6682854955764113353.a n = A127979 (n + 1)

end A127979

/-! ## A127979.P8131110717610177763

`A127978(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A127979.P8131110717610177763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A127978 (n + 1) + a (n - 1)

end

end A127979.P8131110717610177763

namespace A127979

/-- `A127978(n+1)+a(n-1)` -/
def P8131110717610177763.Spec : Prop :=
  ∀ n, P8131110717610177763.a n = A127979 (n + 1)

end A127979

/-! ## A127979.P4589195351308162746

`A172285(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A127979.P4589195351308162746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A172285 n + 2 * a (n - 1)

end

end A127979.P4589195351308162746

namespace A127979

/-- `A172285(n)+2*a(n-1)` -/
def P4589195351308162746.Spec : Prop :=
  ∀ n, P4589195351308162746.a n = A127979 (n + 1)

end A127979

/-! ## A127979.P5050013128889242173

`A172285(n)+A102713(n+1)`
-/

namespace A127979.P5050013128889242173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172285 n + A102713 (n + 1)

end

end A127979.P5050013128889242173

namespace A127979

/-- `A172285(n)+A102713(n+1)` -/
def P5050013128889242173.Spec : Prop :=
  ∀ n, P5050013128889242173.a n = A127979 (n + 1)

end A127979

/-! ## A127979.P1920260844169486170

`A073371(n+1)-Δ[A127985(n)]`
-/

namespace A127979.P1920260844169486170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073371 (n + 1) - (f1 (n + 1) - f1 n)

end

end A127979.P1920260844169486170

namespace A127979

/-- `A073371(n+1)-Δ[A127985(n)]` -/
def P1920260844169486170.Spec : Prop :=
  ∀ n, P1920260844169486170.a n = A127979 (n + 1)

end A127979

/-! ## A127979.P18267093488302733585

`A073371(n+1)-A127984(n+1)`
-/

namespace A127979.P18267093488302733585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073371 (n + 1) - A127984 (n + 1)

end

end A127979.P18267093488302733585

namespace A127979

/-- `A073371(n+1)-A127984(n+1)` -/
def P18267093488302733585.Spec : Prop :=
  ∀ n, P18267093488302733585.a n = A127979 (n + 1)

end A127979

/-! ## A127979.P2232159131037979030

`A073371(n+1)-A059570(n+2)/2`
-/

namespace A127979.P2232159131037979030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073371 (n + 1) : ℚ) - (A059570 (n + 2) : ℚ) / 2

end

end A127979.P2232159131037979030

namespace A127979

/-- `A073371(n+1)-A059570(n+2)/2` -/
def P2232159131037979030.Spec : Prop :=
  ∀ n, P2232159131037979030.a n = (A127979 (n + 1) : ℚ)

end A127979

/-! ## A127979.P8284820184568680697

`A001792(n)+A001792(n)-A073371(n)`
-/

namespace A127979.P8284820184568680697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n + (A001792 n - A073371 n)

end

end A127979.P8284820184568680697

namespace A127979

/-- `A001792(n)+A001792(n)-A073371(n)` -/
def P8284820184568680697.Spec : Prop :=
  ∀ n, P8284820184568680697.a n = A127979 (n + 1)

end A127979

/-! ## A127979.P12180555036371258547

`A073371(n+1)-(A059570(n+1)+A001045(n))`
-/

namespace A127979.P12180555036371258547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073371 (n + 1) - (A059570 (n + 1) + A001045 n)

end

end A127979.P12180555036371258547

namespace A127979

/-- `A073371(n+1)-(A059570(n+1)+A001045(n))` -/
def P12180555036371258547.Spec : Prop :=
  ∀ n, P12180555036371258547.a n = A127979 (n + 1)

end A127979

/-! ## A127979.P12149060453245638281

`A073371(n+1)+A140960(n)-A045883(n+1)`
-/

namespace A127979.P12149060453245638281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073371 (n + 1) + (A140960 n - A045883 (n + 1))

end

end A127979.P12149060453245638281

namespace A127979

/-- `A073371(n+1)+A140960(n)-A045883(n+1)` -/
def P12149060453245638281.Spec : Prop :=
  ∀ n, P12149060453245638281.a n = A127979 (n + 1)

end A127979

/-! ## A127979.P11068161732746238607

`A073371(n+1)+A127985(n)-A127985(n+1)`
-/

namespace A127979.P11068161732746238607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073371 (n + 1) + (A127985 n - A127985 (n + 1))

end

end A127979.P11068161732746238607

namespace A127979

/-- `A073371(n+1)+A127985(n)-A127985(n+1)` -/
def P11068161732746238607.Spec : Prop :=
  ∀ n, P11068161732746238607.a n = A127979 (n + 1)

end A127979

/-! ## A127979.P13270070698434907922

`A091596(n+1)+A140960(n+1)-A140960(n)`
-/

namespace A127979.P13270070698434907922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091596 (n + 1) + (A140960 (n + 1) - A140960 n)

end

end A127979.P13270070698434907922

namespace A127979

/-- `A091596(n+1)+A140960(n+1)-A140960(n)` -/
def P13270070698434907922.Spec : Prop :=
  ∀ n, P13270070698434907922.a n = A127979 (n + 1)

end A127979

/-! ## A127979.P14118912180482975260

`A102713(n+2)/2`
-/

namespace A127979.P14118912180482975260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102713 (n + 2) : ℚ) / 2

end

end A127979.P14118912180482975260

namespace A127979

/-- `A102713(n+2)/2` -/
def P14118912180482975260.Spec : Prop :=
  ∀ n, P14118912180482975260.a n = (A127979 (n + 1) : ℚ)

end A127979

/-! ## A127979.P2781752054979594956

`2*A001792(n)-A073371(n)`
-/

namespace A127979.P2781752054979594956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001792 n - A073371 n

end

end A127979.P2781752054979594956

namespace A127979

/-- `2*A001792(n)-A073371(n)` -/
def P2781752054979594956.Spec : Prop :=
  ∀ n, P2781752054979594956.a n = A127979 (n + 1)

end A127979

/-! ## A127979.P2067642884160895369

`(A127976(n+2)+A045883(n+1))/2`
-/

namespace A127979.P2067642884160895369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127976 (n + 2) + A045883 (n + 1) : ℚ) / 2

end

end A127979.P2067642884160895369

namespace A127979

/-- `(A127976(n+2)+A045883(n+1))/2` -/
def P2067642884160895369.Spec : Prop :=
  ∀ n, P2067642884160895369.a n = (A127979 (n + 1) : ℚ)

end A127979

/-! ## A127979.P427255534682370006

`(A095977(n+2)-A059570(n+2))/2`
-/

namespace A127979.P427255534682370006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095977 (n + 2) - A059570 (n + 2) : ℚ) / 2

end

end A127979.P427255534682370006

namespace A127979

/-- `(A095977(n+2)-A059570(n+2))/2` -/
def P427255534682370006.Spec : Prop :=
  ∀ n, P427255534682370006.a n = (A127979 (n + 1) : ℚ)

end A127979

/-! ## A127979.P11160585218562459698

`(A127978(n+3)-A048573(n+1))/2`
-/

namespace A127979.P11160585218562459698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127978 (n + 3) - A048573 (n + 1) : ℚ) / 2

end

end A127979.P11160585218562459698

namespace A127979

/-- `(A127978(n+3)-A048573(n+1))/2` -/
def P11160585218562459698.Spec : Prop :=
  ∀ n, P11160585218562459698.a n = (A127979 (n + 1) : ℚ)

end A127979

/-! ## A127979.P9682018590512857418

`∑[A127978(n+2)]+1-A127978(n+2)`
-/

namespace A127979.P9682018590512857418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127978 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A127978 (n + 2))

end

end A127979.P9682018590512857418

namespace A127979

/-- `∑[A127978(n+2)]+1-A127978(n+2)` -/
def P9682018590512857418.Spec : Prop :=
  ∀ n, P9682018590512857418.a n = A127979 (n + 1)

end A127979

/-! ## A127979.P17187233503102537874

`A036289(n+1)-(A073371(n)+A036289(n))`
-/

namespace A127979.P17187233503102537874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 (n + 1) - (A073371 n + A036289 n)

end

end A127979.P17187233503102537874

namespace A127979

/-- `A036289(n+1)-(A073371(n)+A036289(n))` -/
def P17187233503102537874.Spec : Prop :=
  ∀ n, P17187233503102537874.a n = A127979 (n + 1)

end A127979

/-!
# A127980: a(n) = (n + 2/3)*2^(n-1) - 1/2 - (-1)^(n-1)*(1/6).

The programs for A127980, the canonical program `A127980.P9402083335203164215` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127980 has offset 1).

The definition of A127980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127980.P9402083335203164215

`floor((5/3+n)*2^n)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127980

/-- `floor((5/3+n)*2^n)` -/
def P9402083335203164215.Spec : Prop :=
  ∀ n, P9402083335203164215.a n = A127980 (n + 1)

theorem P9402083335203164215.correct : P9402083335203164215.Spec := by
  intro n
  simp only [A127980, Nat.add_sub_cancel]

end A127980

/-! ## A127980.P12856185779408033538

`∑[ogf((1+x-3x^2)/(1-3x+4x^3))]`
-/

namespace A127980.P12856185779408033538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -3] [1, -3, 0, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127980.P12856185779408033538

namespace A127980

/-- `∑[ogf((1+x-3x^2)/(1-3x+4x^3))]` -/
def P12856185779408033538.Spec : Prop :=
  ∀ n, P12856185779408033538.a n = A127980 (n + 1)

end A127980

/-! ## A127980.P10368274962870057977

`ogf((1+x-3x^2)/(1-4x+3x^2+4x^3-4x^4))`
-/

namespace A127980.P10368274962870057977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -3] [1, -4, 3, 4, -4] n

end

end A127980.P10368274962870057977

namespace A127980

/-- `ogf((1+x-3x^2)/(1-4x+3x^2+4x^3-4x^4))` -/
def P10368274962870057977.Spec : Prop :=
  ∀ n, P10368274962870057977.a n = A127980 (n + 1)

end A127980

/-! ## A127980.P8439100349402182480

`2^n+2*(a(n-1)+n)-comp[or(2, n)]` with `a(0)=1`
-/

namespace A127980.P8439100349402182480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℤ) + (2 * (a (n - 1) + (n : ℤ)) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ))

end

end A127980.P8439100349402182480

namespace A127980

/-- `2^n+2*(a(n-1)+n)-comp[or(2, n)]` -/
def P8439100349402182480.Spec : Prop :=
  ∀ n, P8439100349402182480.a n = A127980 (n + 1)

end A127980

/-! ## A127980.P1959386161466610674

`A000975(n)+(n+1)*2^n`
-/

namespace A127980.P1959386161466610674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n + ((n + 1) * 2 ^ n : ℤ)

end

end A127980.P1959386161466610674

namespace A127980

/-- `A000975(n)+(n+1)*2^n` -/
def P1959386161466610674.Spec : Prop :=
  ∀ n, P1959386161466610674.a n = A127980 (n + 1)

end A127980

/-! ## A127980.P11955905767363532044

`xor(∑[floor(2^(n-1))], A127981(n+1))`
-/

namespace A127980.P11955905767363532044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A127981 (n + 1))

end

end A127980.P11955905767363532044

namespace A127980

/-- `xor(∑[floor(2^(n-1))], A127981(n+1))` -/
def P11955905767363532044.Spec : Prop :=
  ∀ n, P11955905767363532044.a n = A127980 (n + 1)

end A127980

/-! ## A127980.P3584363513007595481

`A000079(n)+n%2+2*a(n-1)` with `a(0)=1`
-/

namespace A127980.P3584363513007595481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000079 n + (((n % 2 : ℕ) : ℤ) + 2 * a (n - 1))

end

end A127980.P3584363513007595481

namespace A127980

/-- `A000079(n)+n%2+2*a(n-1)` -/
def P3584363513007595481.Spec : Prop :=
  ∀ n, P3584363513007595481.a n = A127980 (n + 1)

end A127980

/-! ## A127980.P14535884587686634308

`∑[A001792(n)+A001045(n)]`
-/

namespace A127980.P14535884587686634308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n + A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127980.P14535884587686634308

namespace A127980

/-- `∑[A001792(n)+A001045(n)]` -/
def P14535884587686634308.Spec : Prop :=
  ∀ n, P14535884587686634308.a n = A127980 (n + 1)

end A127980

/-! ## A127980.P7994169008087925914

`∑[A175656(n)+A045883(n)]`
-/

namespace A127980.P7994169008087925914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175656 n + A045883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127980.P7994169008087925914

namespace A127980

/-- `∑[A175656(n)+A045883(n)]` -/
def P7994169008087925914.Spec : Prop :=
  ∀ n, P7994169008087925914.a n = A127980 (n + 1)

end A127980

/-! ## A127980.P12255007153432069187

`or(∑[A001792(n)], A000975(n))`
-/

namespace A127980.P12255007153432069187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000975 n)

end

end A127980.P12255007153432069187

namespace A127980

/-- `or(∑[A001792(n)], A000975(n))` -/
def P12255007153432069187.Spec : Prop :=
  ∀ n, P12255007153432069187.a n = A127980 (n + 1)

end A127980

/-! ## A127980.P15777123945809666015

`A001787(n+1)+A000975(n)`
-/

namespace A127980.P15777123945809666015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) + A000975 n

end

end A127980.P15777123945809666015

namespace A127980

/-- `A001787(n+1)+A000975(n)` -/
def P15777123945809666015.Spec : Prop :=
  ∀ n, P15777123945809666015.a n = A127980 (n + 1)

end A127980

/-! ## A127980.P18429796960771737696

`A087323(n)+A005578(n+1)`
-/

namespace A127980.P18429796960771737696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087323 n + A005578 (n + 1)

end

end A127980.P18429796960771737696

namespace A127980

/-- `A087323(n)+A005578(n+1)` -/
def P18429796960771737696.Spec : Prop :=
  ∀ n, P18429796960771737696.a n = A127980 (n + 1)

end A127980

/-! ## A127980.P15370959600672716099

`A081254(n+1)+A036289(n)`
-/

namespace A127980.P15370959600672716099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081254 (n + 1) + A036289 n

end

end A127980.P15370959600672716099

namespace A127980

/-- `A081254(n+1)+A036289(n)` -/
def P15370959600672716099.Spec : Prop :=
  ∀ n, P15370959600672716099.a n = A127980 (n + 1)

end A127980

/-! ## A127980.P9620121781813310702

`A127981(n+1)+A001045(n)`
-/

namespace A127980.P9620121781813310702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127981 (n + 1) + A001045 n

end

end A127980.P9620121781813310702

namespace A127980

/-- `A127981(n+1)+A001045(n)` -/
def P9620121781813310702.Spec : Prop :=
  ∀ n, P9620121781813310702.a n = A127980 (n + 1)

end A127980

/-! ## A127980.P18305295641064742217

`A127985(n+1)+A045883(n)`
-/

namespace A127980.P18305295641064742217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127985 (n + 1) + A045883 n

end

end A127980.P18305295641064742217

namespace A127980

/-- `A127985(n+1)+A045883(n)` -/
def P18305295641064742217.Spec : Prop :=
  ∀ n, P18305295641064742217.a n = A127980 (n + 1)

end A127980

/-! ## A127980.P4538863201290966994

`A328890(n+1)-A084639(n)`
-/

namespace A127980.P4538863201290966994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328890 (n + 1) - A084639 n

end

end A127980.P4538863201290966994

namespace A127980

/-- `A328890(n+1)-A084639(n)` -/
def P4538863201290966994.Spec : Prop :=
  ∀ n, P4538863201290966994.a n = A127980 (n + 1)

end A127980

/-! ## A127980.P16487032331215577760

`A001787(n+1)+∑[A001045(n)]`
-/

namespace A127980.P16487032331215577760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127980.P16487032331215577760

namespace A127980

/-- `A001787(n+1)+∑[A001045(n)]` -/
def P16487032331215577760.Spec : Prop :=
  ∀ n, P16487032331215577760.a n = A127980 (n + 1)

end A127980

/-! ## A127980.P10283066185315413735

`A045883(n)+∑[A127984(n+1)]`
-/

namespace A127980.P10283066185315413735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045883 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127980.P10283066185315413735

namespace A127980

/-- `A045883(n)+∑[A127984(n+1)]` -/
def P10283066185315413735.Spec : Prop :=
  ∀ n, P10283066185315413735.a n = A127980 (n + 1)

end A127980

/-! ## A127980.P1924205927201005968

`A053221(n+1)-A257198(n+1)`
-/

namespace A127980.P1924205927201005968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053221 (n + 1) - A257198 (n + 1)

end

end A127980.P1924205927201005968

namespace A127980

/-- `A053221(n+1)-A257198(n+1)` -/
def P1924205927201005968.Spec : Prop :=
  ∀ n, P1924205927201005968.a n = A127980 (n + 1)

end A127980

/-! ## A127980.P1813467767676953615

`A081254(n+1)+n*A000079(n)`
-/

namespace A127980.P1813467767676953615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081254 (n + 1) + (n : ℤ) * A000079 n

end

end A127980.P1813467767676953615

namespace A127980

/-- `A081254(n+1)+n*A000079(n)` -/
def P1813467767676953615.Spec : Prop :=
  ∀ n, P1813467767676953615.a n = A127980 (n + 1)

end A127980

/-!
# A127981: a(n) = (n + 1/3)*2^(n-1) - 1/2 + (-1)^(n-1)*(1/6).

The programs for A127981, the canonical program `A127981.P11374376140489980496` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127981 has offset 1).

The definition of A127981 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127981.P11374376140489980496

`(n+1+1/3)*2^n-1/2+(-1)^n*1/6`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127981

/-- `(n+1+1/3)*2^n-1/2+(-1)^n*1/6` -/
def P11374376140489980496.Spec : Prop :=
  ∀ n, P11374376140489980496.a n = (A127981 (n + 1) : ℚ)

end A127981

/-! ## A127981.P16615694855453294005

`ogf((1-2x^3)/(1-4x+3x^2+4x^3-4x^4))`
-/

namespace A127981.P16615694855453294005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -2] [1, -4, 3, 4, -4] n

end

end A127981.P16615694855453294005

namespace A127981

/-- `ogf((1-2x^3)/(1-4x+3x^2+4x^3-4x^4))` -/
def P16615694855453294005.Spec : Prop :=
  ∀ n, P16615694855453294005.a n = A127981 (n + 1)

end A127981

/-! ## A127981.P5677547129149030395

`xor(A000975(n), A099035(n+1))`
-/

namespace A127981.P5677547129149030395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000975 n) (A099035 (n + 1))

end

end A127981.P5677547129149030395

namespace A127981

/-- `xor(A000975(n), A099035(n+1))` -/
def P5677547129149030395.Spec : Prop :=
  ∀ n, P5677547129149030395.a n = A127981 (n + 1)

end A127981

/-! ## A127981.P9149922614848535399

`xor(A000225(n), A127980(n+1))`
-/

namespace A127981.P9149922614848535399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A127980 (n + 1))

end

end A127981.P9149922614848535399

namespace A127981

/-- `xor(A000225(n), A127980(n+1))` -/
def P9149922614848535399.Spec : Prop :=
  ∀ n, P9149922614848535399.a n = A127981 (n + 1)

end A127981

/-! ## A127981.P4119695831628383705

`(A191007(n)-1)/2`
-/

namespace A127981.P4119695831628383705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191007 n - 1 : ℚ) / 2

end

end A127981.P4119695831628383705

namespace A127981

/-- `(A191007(n)-1)/2` -/
def P4119695831628383705.Spec : Prop :=
  ∀ n, P4119695831628383705.a n = (A127981 (n + 1) : ℚ)

end A127981

/-!
# A127982: a(n) = (n - 1/3)*2^n - n/2 + 1/4 + (-1)^n/12.

The programs for A127982, the canonical program `A127982.P15653594524289181623` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127982 has offset 1).

The definition of A127982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127982.P15653594524289181623

`(n+1-1/3)*2^(n+1)-(n+1)/2+1/4+(-1)^(n+1)/12`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127982

/-- `(n+1-1/3)*2^(n+1)-(n+1)/2+1/4+(-1)^(n+1)/12` -/
def P15653594524289181623.Spec : Prop :=
  ∀ n, P15653594524289181623.a n = (A127982 (n + 1) : ℚ)

end A127982

/-! ## A127982.P17892091485869695872

`∑[A127980(n+1)]`
-/

namespace A127982.P17892091485869695872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127982.P17892091485869695872

namespace A127982

/-- `∑[A127980(n+1)]` -/
def P17892091485869695872.Spec : Prop :=
  ∀ n, P17892091485869695872.a n = A127982 (n + 1)

end A127982

/-! ## A127982.P14144173011267065892

`xor(A058922(n+1), A084172(n))`
-/

namespace A127982.P14144173011267065892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A058922 (n + 1)) (A084172 n)

end

end A127982.P14144173011267065892

namespace A127982

/-- `xor(A058922(n+1), A084172(n))` -/
def P14144173011267065892.Spec : Prop :=
  ∀ n, P14144173011267065892.a n = A127982 (n + 1)

end A127982

/-!
# A127983: a(n) = (n - 2/3)*2^n - n/2 + 3/4 - (-1)^n/12.

The programs for A127983, the canonical program `A127983.P818609364783678142` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127983 has offset 1).

The definition of A127983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127983.P818609364783678142

`∑[floor((4/3+n)*2^n)]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127983

/-- `∑[floor((4/3+n)*2^n)]` -/
def P818609364783678142.Spec : Prop :=
  ∀ n, P818609364783678142.a n = A127983 (n + 1)

theorem P818609364783678142.correct : P818609364783678142.Spec := by
  intro n
  simp only [A127983, Nat.add_sub_cancel]

end A127983

/-! ## A127983.P11787963982159615216

`2*∑[A127981(n+1)/2]`
-/

namespace A127983.P11787963982159615216
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127981 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127983.P11787963982159615216

namespace A127983

/-- `2*∑[A127981(n+1)/2]` -/
def P11787963982159615216.Spec : Prop :=
  ∀ n, P11787963982159615216.a n = (A127983 (n + 1) : ℚ)

end A127983

/-! ## A127983.P4365975457061769574

`A048477(n)-(a(n-1)+n)` with `a(0)=1`
-/

namespace A127983.P4365975457061769574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048477 n - (a (n - 1) + (n : ℤ))

end

end A127983.P4365975457061769574

namespace A127983

/-- `A048477(n)-(a(n-1)+n)` -/
def P4365975457061769574.Spec : Prop :=
  ∀ n, P4365975457061769574.a n = A127983 (n + 1)

end A127983

/-! ## A127983.P11109686446065612006

`A036799(n)+A011377(n)`
-/

namespace A127983.P11109686446065612006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036799 n + A011377 n

end

end A127983.P11109686446065612006

namespace A127983

/-- `A036799(n)+A011377(n)` -/
def P11109686446065612006.Spec : Prop :=
  ∀ n, P11109686446065612006.a n = A127983 (n + 1)

end A127983

/-! ## A127983.P18106075080641564982

`A086445(n)+A059672(n)`
-/

namespace A127983.P18106075080641564982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086445 n + A059672 n

end

end A127983.P18106075080641564982

namespace A127983

/-- `A086445(n)+A059672(n)` -/
def P18106075080641564982.Spec : Prop :=
  ∀ n, P18106075080641564982.a n = A127983 (n + 1)

end A127983

/-! ## A127983.P16708093565718184801

`A174836(n)+A173009(n+1)`
-/

namespace A127983.P16708093565718184801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174836 n + A173009 (n + 1)

end

end A127983.P16708093565718184801

namespace A127983

/-- `A174836(n)+A173009(n+1)` -/
def P16708093565718184801.Spec : Prop :=
  ∀ n, P16708093565718184801.a n = A127983 (n + 1)

end A127983

/-! ## A127983.P14764420509426551111

`A127982(n+1)-A000975(n)`
-/

namespace A127983.P14764420509426551111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127982 (n + 1) - A000975 n

end

end A127983.P14764420509426551111

namespace A127983

/-- `A127982(n+1)-A000975(n)` -/
def P14764420509426551111.Spec : Prop :=
  ∀ n, P14764420509426551111.a n = A127983 (n + 1)

end A127983

/-! ## A127983.P16828156138731243297

`A086445(n)+n*A126646(n)`
-/

namespace A127983.P16828156138731243297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086445 n + (n : ℤ) * A126646 n

end

end A127983.P16828156138731243297

namespace A127983

/-- `A086445(n)+n*A126646(n)` -/
def P16828156138731243297.Spec : Prop :=
  ∀ n, P16828156138731243297.a n = A127983 (n + 1)

end A127983

/-! ## A127983.P14486818047616100235

`A045883(n+1)+A127982(n+1)-A127985(n+1)`
-/

namespace A127983.P14486818047616100235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045883 (n + 1) + (A127982 (n + 1) - A127985 (n + 1))

end

end A127983.P14486818047616100235

namespace A127983

/-- `A045883(n+1)+A127982(n+1)-A127985(n+1)` -/
def P14486818047616100235.Spec : Prop :=
  ∀ n, P14486818047616100235.a n = A127983 (n + 1)

end A127983

/-! ## A127983.P1490604750210533220

`∑[A191007(n)-1]/2`
-/

namespace A127983.P1490604750210533220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191007 n - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A127983.P1490604750210533220

namespace A127983

/-- `∑[A191007(n)-1]/2` -/
def P1490604750210533220.Spec : Prop :=
  ∀ n, P1490604750210533220.a n = (A127983 (n + 1) : ℚ)

end A127983

/-!
# A127984: a(n) = (n/3 + 7/9)*2^(n - 1) + (-1)^n/9.

The programs for A127984, the canonical program `A127984.P12228402196950535759` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127984 has offset 1).

The definition of A127984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127984.P12228402196950535759

`((n+1)/3+7/9)*2^n+(-1)^(n+1)/9`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127984

/-- `((n+1)/3+7/9)*2^n+(-1)^(n+1)/9` -/
def P12228402196950535759.Spec : Prop :=
  ∀ n, P12228402196950535759.a n = (A127984 (n + 1) : ℚ)

end A127984

/-! ## A127984.P5394181719716461480

`ogf((1-2x^2)/(1-3x+4x^3))`
-/

namespace A127984.P5394181719716461480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, -3, 0, 4] n

end

end A127984.P5394181719716461480

namespace A127984

/-- `ogf((1-2x^2)/(1-3x+4x^3))` -/
def P5394181719716461480.Spec : Prop :=
  ∀ n, P5394181719716461480.a n = A127984 (n + 1)

end A127984

/-! ## A127984.P3810468756332298691

`abs(1-2*A084219(n))`
-/

namespace A127984.P3810468756332298691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A084219 n|

end

end A127984.P3810468756332298691

namespace A127984

/-- `abs(1-2*A084219(n))` -/
def P3810468756332298691.Spec : Prop :=
  ∀ n, P3810468756332298691.a n = A127984 (n + 1)

end A127984

/-! ## A127984.P14244444420125377430

`∑[ceil(∑[A172481(n)/2])]`
-/

namespace A127984.P14244444420125377430
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172481 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127984.P14244444420125377430

namespace A127984

/-- `∑[ceil(∑[A172481(n)/2])]` -/
def P14244444420125377430.Spec : Prop :=
  ∀ n, P14244444420125377430.a n = A127984 (n + 1)

end A127984

/-! ## A127984.P9947099140761978657

`∑[A175656(n)-floor(2^(n-1))]`
-/

namespace A127984.P9947099140761978657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175656 n - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127984.P9947099140761978657

namespace A127984

/-- `∑[A175656(n)-floor(2^(n-1))]` -/
def P9947099140761978657.Spec : Prop :=
  ∀ n, P9947099140761978657.a n = A127984 (n + 1)

end A127984

/-! ## A127984.P2997693037643451426

`Δ[A127985(n)]`
-/

namespace A127984.P2997693037643451426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127984.P2997693037643451426

namespace A127984

/-- `Δ[A127985(n)]` -/
def P2997693037643451426.Spec : Prop :=
  ∀ n, P2997693037643451426.a n = A127984 (n + 1)

end A127984

/-! ## A127984.P1632980526361895014

`A059570(n+2)/2`
-/

namespace A127984.P1632980526361895014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059570 (n + 2) : ℚ) / 2

end

end A127984.P1632980526361895014

namespace A127984

/-- `A059570(n+2)/2` -/
def P1632980526361895014.Spec : Prop :=
  ∀ n, P1632980526361895014.a n = (A127984 (n + 1) : ℚ)

end A127984

/-! ## A127984.P5820463767713445483

`Δ[A045883(n+1)/2]`
-/

namespace A127984.P5820463767713445483
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045883 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127984.P5820463767713445483

namespace A127984

/-- `Δ[A045883(n+1)/2]` -/
def P5820463767713445483.Spec : Prop :=
  ∀ n, P5820463767713445483.a n = (A127984 (n + 1) : ℚ)

end A127984

/-! ## A127984.P10540017186653969608

`A196410(n+5)%A348407(n)`
-/

namespace A127984.P10540017186653969608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196410 (n + 5)) (A348407 n)

end

end A127984.P10540017186653969608

namespace A127984

/-- `A196410(n+5)%A348407(n)` -/
def P10540017186653969608.Spec : Prop :=
  ∀ n, P10540017186653969608.a n = A127984 (n + 1)

end A127984

/-! ## A127984.P6843538912699428826

`Δ[A127981(n+1)/3]`
-/

namespace A127984.P6843538912699428826
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127981 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127984.P6843538912699428826

namespace A127984

/-- `Δ[A127981(n+1)/3]` -/
def P6843538912699428826.Spec : Prop :=
  ∀ n, P6843538912699428826.a n = (A127984 (n + 1) : ℚ)

end A127984

/-! ## A127984.P12450715284600213977

`A210555(∑[n+2])`
-/

namespace A127984.P12450715284600213977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210555 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127984.P12450715284600213977

namespace A127984

/-- `A210555(∑[n+2])` -/
def P12450715284600213977.Spec : Prop :=
  ∀ n, P12450715284600213977.a n = A127984 (n + 1)

end A127984

/-!
# A127985: a(n) = floor(2^n*(n/3 + 4/9)).

The programs for A127985, the canonical program `A127985.P5639273833977306010` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127985 has offset 0).

The definition of A127985 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2^n*(n/3+4/9))` (program `A127985.P5639273833977306010`, by `A127985.P5639273833977306010.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127985.P5639273833977306010

`floor(2^n*(n/3+4/9))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127985

/-- `floor(2^n*(n/3+4/9))` -/
def P5639273833977306010.Spec : Prop :=
  ∀ n, P5639273833977306010.a n = A127985 n

theorem P5639273833977306010.correct : P5639273833977306010.Spec := by
  intro n
  simp only [A127985]

end A127985

/-! ## A127985.P16878199777422081068

`4*a(n-1)-3*a(n-2)-4*a(n-3)+4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=11, a(4)=28`
-/

namespace A127985.P16878199777422081068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 11, 28] fun n a =>
  4 * a (n - 1) - 3 * a (n - 2) - 4 * a (n - 3) + 4 * a (n - 4)

end

end A127985.P16878199777422081068

namespace A127985

/-- `4*a(n-1)-3*a(n-2)-4*a(n-3)+4*a(n-4)` -/
def P16878199777422081068.Spec : Prop :=
  ∀ n, P16878199777422081068.a n = A127985 n

end A127985

/-! ## A127985.P2127232461196589146

`ogf((x-2x^3)/(1-4x+3x^2+4x^3-4x^4))`
-/

namespace A127985.P2127232461196589146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, -2] [1, -4, 3, 4, -4] n

end

end A127985.P2127232461196589146

namespace A127985

/-- `ogf((x-2x^3)/(1-4x+3x^2+4x^3-4x^4))` -/
def P2127232461196589146.Spec : Prop :=
  ∀ n, P2127232461196589146.a n = A127985 n

end A127985

/-! ## A127985.P3534314355197561783

`4*(a(n-1)-a(n-2))-n%2` with `a(0)=0, a(1)=1`
-/

namespace A127985.P3534314355197561783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * (a (n - 1) - a (n - 2)) - ((n % 2 : ℕ) : ℤ)

end

end A127985.P3534314355197561783

namespace A127985

/-- `4*(a(n-1)-a(n-2))-n%2` -/
def P3534314355197561783.Spec : Prop :=
  ∀ n, P3534314355197561783.a n = A127985 n

end A127985

/-! ## A127985.P2173092312107628446

`∑[A172481(n)]-2^n`
-/

namespace A127985.P2173092312107628446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 ^ n : ℤ)

end

end A127985.P2173092312107628446

namespace A127985

/-- `∑[A172481(n)]-2^n` -/
def P2173092312107628446.Spec : Prop :=
  ∀ n, P2173092312107628446.a n = A127985 n

end A127985

/-! ## A127985.P7300392276219430980

`A129953(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A127985.P7300392276219430980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A129953 n + a (n - 2)

end

end A127985.P7300392276219430980

namespace A127985

/-- `A129953(n)+a(n-2)` -/
def P7300392276219430980.Spec : Prop :=
  ∀ n, P7300392276219430980.a n = A127985 n

end A127985

/-! ## A127985.P7774035558132359780

`A078008(n)+n%2+2*a(n-1)` with `a(0)=0`
-/

namespace A127985.P7774035558132359780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A078008 n + (((n % 2 : ℕ) : ℤ) + 2 * a (n - 1))

end

end A127985.P7774035558132359780

namespace A127985

/-- `A078008(n)+n%2+2*a(n-1)` -/
def P7774035558132359780.Spec : Prop :=
  ∀ n, P7774035558132359780.a n = A127985 n

end A127985

/-! ## A127985.P4500657257941208808

`A167167(n)+char[2*n]+2*a(n-1)` with `a(0)=0`
-/

namespace A127985.P4500657257941208808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A167167 n + (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 2 * a (n - 1))

end

end A127985.P4500657257941208808

namespace A127985

/-- `A167167(n)+char[2*n]+2*a(n-1)` -/
def P4500657257941208808.Spec : Prop :=
  ∀ n, P4500657257941208808.a n = A127985 n

end A127985

/-! ## A127985.P15787133128914078329

`A140960(n)+A000975(n)`
-/

namespace A127985.P15787133128914078329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140960 n + A000975 n

end

end A127985.P15787133128914078329

namespace A127985

/-- `A140960(n)+A000975(n)` -/
def P15787133128914078329.Spec : Prop :=
  ∀ n, P15787133128914078329.a n = A127985 n

end A127985

/-! ## A127985.P15879468672548129920

`A153234(n)+A100335(n)`
-/

namespace A127985.P15879468672548129920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 n + A100335 n

end

end A127985.P15879468672548129920

namespace A127985

/-- `A153234(n)+A100335(n)` -/
def P15879468672548129920.Spec : Prop :=
  ∀ n, P15879468672548129920.a n = A127985 n

end A127985

/-! ## A127985.P1131428517999842378

`A140960(n)+∑[A001045(n)]`
-/

namespace A127985.P1131428517999842378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140960 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127985.P1131428517999842378

namespace A127985

/-- `A140960(n)+∑[A001045(n)]` -/
def P1131428517999842378.Spec : Prop :=
  ∀ n, P1131428517999842378.a n = A127985 n

end A127985

/-! ## A127985.P6055800078539165806

`∑[A172481(n)-A011782(n)]`
-/

namespace A127985.P6055800078539165806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 n - A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127985.P6055800078539165806

namespace A127985

/-- `∑[A172481(n)-A011782(n)]` -/
def P6055800078539165806.Spec : Prop :=
  ∀ n, P6055800078539165806.a n = A127985 n

end A127985

/-! ## A127985.P4173266792562084357

`A059570(n+1)-A005578(n)`
-/

namespace A127985.P4173266792562084357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059570 (n + 1) - A005578 n

end

end A127985.P4173266792562084357

namespace A127985

/-- `A059570(n+1)-A005578(n)` -/
def P4173266792562084357.Spec : Prop :=
  ∀ n, P4173266792562084357.a n = A127985 n

end A127985

/-! ## A127985.P2970432984528868250

`∑[2*A091596(n)]-A091596(n)`
-/

namespace A127985.P2970432984528868250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A091596 n

end

end A127985.P2970432984528868250

namespace A127985

/-- `∑[2*A091596(n)]-A091596(n)` -/
def P2970432984528868250.Spec : Prop :=
  ∀ n, P2970432984528868250.a n = A127985 n

end A127985

/-! ## A127985.P15747288844997644581

`A167167(n)+A109613(n)-(n-2*a(n-1))` with `a(0)=0`
-/

namespace A127985.P15747288844997644581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A167167 n + (A109613 n - ((n : ℤ) - 2 * a (n - 1)))

end

end A127985.P15747288844997644581

namespace A127985

/-- `A167167(n)+A109613(n)-(n-2*a(n-1))` -/
def P15747288844997644581.Spec : Prop :=
  ∀ n, P15747288844997644581.a n = A127985 n

end A127985

/-! ## A127985.P13321430547481361211

`A000225(n)+A045883(n)-A000975(n)`
-/

namespace A127985.P13321430547481361211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A045883 n - A000975 n)

end

end A127985.P13321430547481361211

namespace A127985

/-- `A000225(n)+A045883(n)-A000975(n)` -/
def P13321430547481361211.Spec : Prop :=
  ∀ n, P13321430547481361211.a n = A127985 n

end A127985

/-! ## A127985.P6796956415801323186

`A000975(n)+A045883(n)-A001045(n)`
-/

namespace A127985.P6796956415801323186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n + (A045883 n - A001045 n)

end

end A127985.P6796956415801323186

namespace A127985

/-- `A000975(n)+A045883(n)-A001045(n)` -/
def P6796956415801323186.Spec : Prop :=
  ∀ n, P6796956415801323186.a n = A127985 n

end A127985

/-! ## A127985.P17425015840345002097

`A059570(n+1)-(A078008(n)+A000035(n))`
-/

namespace A127985.P17425015840345002097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059570 (n + 1) - (A078008 n + A000035 n)

end

end A127985.P17425015840345002097

namespace A127985

/-- `A059570(n+1)-(A078008(n)+A000035(n))` -/
def P17425015840345002097.Spec : Prop :=
  ∀ n, P17425015840345002097.a n = A127985 n

end A127985

/-! ## A127985.P16968586849560567278

`A059570(n+1)-(A001045(n)+A000035(n+1))`
-/

namespace A127985.P16968586849560567278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059570 (n + 1) - (A001045 n + A000035 (n + 1))

end

end A127985.P16968586849560567278

namespace A127985

/-- `A059570(n+1)-(A001045(n)+A000035(n+1))` -/
def P16968586849560567278.Spec : Prop :=
  ∀ n, P16968586849560567278.a n = A127985 n

end A127985

/-! ## A127985.P6673562688980570309

`A059570(n+1)+A000225(n)-A000975(n+1)`
-/

namespace A127985.P6673562688980570309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059570 (n + 1) + (A000225 n - A000975 (n + 1))

end

end A127985.P6673562688980570309

namespace A127985

/-- `A059570(n+1)+A000225(n)-A000975(n+1)` -/
def P6673562688980570309.Spec : Prop :=
  ∀ n, P6673562688980570309.a n = A127985 n

end A127985

/-!
# A127986: a(n) = n! + 2^n - 1.

The programs for A127986, the canonical program `A127986.P5887206099314478940` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127986 has offset 0).

The definition of A127986 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!+2^n-1` (program `A127986.P5887206099314478940`, by `A127986.P5887206099314478940.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127986.P5887206099314478940

`n!+2^n-1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127986

/-- `n!+2^n-1` -/
def P5887206099314478940.Spec : Prop :=
  ∀ n, P5887206099314478940.a n = A127986 n

theorem P5887206099314478940.correct : P5887206099314478940.Spec := by
  intro n
  simp only [A127986]

end A127986

/-! ## A127986.P2548744520864988660

`A000142(n)+A000225(n)`
-/

namespace A127986.P2548744520864988660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + A000225 n

end

end A127986.P2548744520864988660

namespace A127986

/-- `A000142(n)+A000225(n)` -/
def P2548744520864988660.Spec : Prop :=
  ∀ n, P2548744520864988660.a n = A127986 n

end A127986

/-! ## A127986.P14199440213820503936

`2^n-(1-n!)`
-/

namespace A127986.P14199440213820503936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (1 - (Nat.factorial n : ℤ))

end

end A127986.P14199440213820503936

namespace A127986

/-- `2^n-(1-n!)` -/
def P14199440213820503936.Spec : Prop :=
  ∀ n, P14199440213820503936.a n = A127986 n

theorem P14199440213820503936.correct : P14199440213820503936.Spec := by
  intro n
  simp only [A127986, Nat.add_sub_cancel, A127986.P14199440213820503936.a, A127986.P5887206099314478940.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A127986

/-! ## A127986.P14988692908479313540

`floor(∑[2^n/2])+n!`
-/

namespace A127986.P14988692908479313540
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + (Nat.factorial n : ℤ)

end

end A127986.P14988692908479313540

namespace A127986

/-- `floor(∑[2^n/2])+n!` -/
def P14988692908479313540.Spec : Prop :=
  ∀ n, P14988692908479313540.a n = A127986 n

end A127986

/-! ## A127986.P15742759951821307689

`∏[round(1/acot(n))]+2^n-1`
-/

namespace A127986.P15742759951821307689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + ((2 ^ n : ℤ) - 1)

end

end A127986.P15742759951821307689

namespace A127986

/-- `∏[round(1/acot(n))]+2^n-1` -/
def P15742759951821307689.Spec : Prop :=
  ∀ n, P15742759951821307689.a n = A127986 n

end A127986

/-! ## A127986.P11363090619190437517

`2^n+∏[ceil(abs(γ-n))]-1`
-/

namespace A127986.P11363090619190437517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (∏ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A127986.P11363090619190437517

namespace A127986

/-- `2^n+∏[ceil(abs(γ-n))]-1` -/
def P11363090619190437517.Spec : Prop :=
  ∀ n, P11363090619190437517.a n = A127986 n

end A127986

/-! ## A127986.P11403940705149077692

`record[ratio[A152924(n)]]`
-/

namespace A127986.P11403940705149077692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152924 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127986.P11403940705149077692

namespace A127986

/-- `record[ratio[A152924(n)]]` -/
def P11403940705149077692.Spec : Prop :=
  ∀ n, P11403940705149077692.a n = (A127986 n : ℚ)

end A127986

/-! ## A127986.P18073491587096700737

`abs(1-A007611(n))`
-/

namespace A127986.P18073491587096700737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A007611 n|

end

end A127986.P18073491587096700737

namespace A127986

/-- `abs(1-A007611(n))` -/
def P18073491587096700737.Spec : Prop :=
  ∀ n, P18073491587096700737.a n = A127986 n

end A127986

/-! ## A127986.P7985009159683018684

`A152924(∑[n+1]+1)`
-/

namespace A127986.P7985009159683018684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152924 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A127986.P7985009159683018684

namespace A127986

/-- `A152924(∑[n+1]+1)` -/
def P7985009159683018684.Spec : Prop :=
  ∀ n, P7985009159683018684.a n = A127986 n

end A127986

/-! ## A127986.P6742778881008517795

`abs(A000079(n)+n!-1)`
-/

namespace A127986.P6742778881008517795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n + ((Nat.factorial n : ℤ) - 1)|

end

end A127986.P6742778881008517795

namespace A127986

/-- `abs(A000079(n)+n!-1)` -/
def P6742778881008517795.Spec : Prop :=
  ∀ n, P6742778881008517795.a n = A127986 n

end A127986

/-!
# A127987: Largest prime factor of n! + 2^n - 1.

The programs for A127987, the canonical program `A127987.P7183224258703358641` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127987 has offset 1).

The definition of A127987 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A127987.P7183224258703358641

`A006530(A127986(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A127987

/-- `A006530(A127986(n+1))` -/
def P7183224258703358641.Spec : Prop :=
  ∀ n, P7183224258703358641.a n = A127987 (n + 1)

theorem P7183224258703358641.correct : P7183224258703358641.Spec := by
  intro n
  simp only [A127987, Nat.add_sub_cancel]

end A127987

/-! ## A127987.P18365517501820265711

`A006530(∑[2^n]+(n+1)!)`
-/

namespace A127987.P18365517501820265711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.factorial (n + 1))

end

end A127987.P18365517501820265711

namespace A127987

/-- `A006530(∑[2^n]+(n+1)!)` -/
def P18365517501820265711.Spec : Prop :=
  ∀ n, P18365517501820265711.a n = A127987 (n + 1)

end A127987

/-! ## A127987.P2963224721980627398

`A006530(∏[n+1]+∑[2^n])`
-/

namespace A127987.P2963224721980627398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A127987.P2963224721980627398

namespace A127987

/-- `A006530(∏[n+1]+∑[2^n])` -/
def P2963224721980627398.Spec : Prop :=
  ∀ n, P2963224721980627398.a n = A127987 (n + 1)

end A127987

/-! ## A127987.P8390949036184123929

`p?[A330691(A127986(n))]`
-/

namespace A127987.P8390949036184123929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330691 (A127986 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127987.P8390949036184123929

namespace A127987

/-- `p?[A330691(A127986(n))]` -/
def P8390949036184123929.Spec : Prop :=
  ∀ n, P8390949036184123929.a n = A127987 (n + 1)

end A127987

/-!
# A127988: Sequence determining the parity of A025748.

The programs for A127988, the canonical program `A127988.P16825810271688874760` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127988 has offset 0).

The definition of A127988 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A127988.P16825810271688874760

`8*A000695(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A127988

/-- `8*A000695(n)` -/
def P16825810271688874760.Spec : Prop :=
  ∀ n, P16825810271688874760.a n = A127988 n

theorem P16825810271688874760.correct : P16825810271688874760.Spec := by
  intro n
  simp only [A127988]

end A127988

/-! ## A127988.P3212813454078483963

`4*∑[ceil(xor(n, -n)²/3)]`
-/

namespace A127988.P3212813454078483963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor (n : ℤ) (-(n : ℤ)) ^ 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127988.P3212813454078483963

namespace A127988

/-- `4*∑[ceil(xor(n, -n)²/3)]` -/
def P3212813454078483963.Spec : Prop :=
  ∀ n, P3212813454078483963.a n = A127988 n

end A127988

/-! ## A127988.P10022997934570127887

`(2*∑[and(n, -n)²]+n)*8/3`
-/

namespace A127988.P10022997934570127887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) : ℤ) : ℚ) * ((8 : ℚ) / 3)

end

end A127988.P10022997934570127887

namespace A127988

/-- `(2*∑[and(n, -n)²]+n)*8/3` -/
def P10022997934570127887.Spec : Prop :=
  ∀ n, P10022997934570127887.a n = (A127988 n : ℚ)

end A127988

/-! ## A127988.P15808689463395308694

`4*(a(floor(n/2))-(-1)^n+1)` with `a(0)=0`
-/

namespace A127988.P15808689463395308694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 * (a ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n + 1)

end

end A127988.P15808689463395308694

namespace A127988

/-- `4*(a(floor(n/2))-(-1)^n+1)` -/
def P15808689463395308694.Spec : Prop :=
  ∀ n, P15808689463395308694.a n = A127988 n

end A127988

/-! ## A127988.P14865459072175164696

`4*A062880(n)`
-/

namespace A127988.P14865459072175164696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A062880 n

end

end A127988.P14865459072175164696

namespace A127988

/-- `4*A062880(n)` -/
def P14865459072175164696.Spec : Prop :=
  ∀ n, P14865459072175164696.a n = A127988 n

end A127988

/-! ## A127988.P9862955365768475317

`A145849(n+1)-1`
-/

namespace A127988.P9862955365768475317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145849 (n + 1) - 1

end

end A127988.P9862955365768475317

namespace A127988

/-- `A145849(n+1)-1` -/
def P9862955365768475317.Spec : Prop :=
  ∀ n, P9862955365768475317.a n = A127988 n

end A127988

/-! ## A127988.P2457748271041269274

`8*(A098871(n)-1)`
-/

namespace A127988.P2457748271041269274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A098871 n - 1)

end

end A127988.P2457748271041269274

namespace A127988

/-- `8*(A098871(n)-1)` -/
def P2457748271041269274.Spec : Prop :=
  ∀ n, P2457748271041269274.a n = A127988 n

end A127988

/-! ## A127988.P17621620121124865160

`2*(A145818(n+1)-1)`
-/

namespace A127988.P17621620121124865160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A145818 (n + 1) - 1)

end

end A127988.P17621620121124865160

namespace A127988

/-- `2*(A145818(n+1)-1)` -/
def P17621620121124865160.Spec : Prop :=
  ∀ n, P17621620121124865160.a n = A127988 n

end A127988

/-! ## A127988.P10151316214995367860

`(A145850(n+1)-1)/2`
-/

namespace A127988.P10151316214995367860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145850 (n + 1) - 1 : ℚ) / 2

end

end A127988.P10151316214995367860

namespace A127988

/-- `(A145850(n+1)-1)/2` -/
def P10151316214995367860.Spec : Prop :=
  ∀ n, P10151316214995367860.a n = (A127988 n : ℚ)

end A127988

/-! ## A127988.P3814771994756568090

`A145850(n+1)%A145849(n+1)`
-/

namespace A127988.P3814771994756568090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145850 (n + 1)) (A145849 (n + 1))

end

end A127988.P3814771994756568090

namespace A127988

/-- `A145850(n+1)%A145849(n+1)` -/
def P3814771994756568090.Spec : Prop :=
  ∀ n, P3814771994756568090.a n = A127988 n

end A127988

/-! ## A127988.P16141930073317994147

`A062880(A005843(n))`
-/

namespace A127988.P16141930073317994147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062880 (A005843 n).toNat

end

end A127988.P16141930073317994147

namespace A127988

/-- `A062880(A005843(n))` -/
def P16141930073317994147.Spec : Prop :=
  ∀ n, P16141930073317994147.a n = A127988 n

end A127988

/-! ## A127988.P18250954306336636497

`A147568(2*n)-3`
-/

namespace A127988.P18250954306336636497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147568 (2 * n) - 3

end

end A127988.P18250954306336636497

namespace A127988

/-- `A147568(2*n)-3` -/
def P18250954306336636497.Spec : Prop :=
  ∀ n, P18250954306336636497.a n = A127988 n

end A127988

/-! ## A127988.P4204890517867321408

`A145812(Δ[n²])-1`
-/

namespace A127988.P4204890517867321408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145812 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A127988.P4204890517867321408

namespace A127988

/-- `A145812(Δ[n²])-1` -/
def P4204890517867321408.Spec : Prop :=
  ∀ n, P4204890517867321408.a n = A127988 n

end A127988

/-! ## A127988.P1556947875880028827

`A062880(Δ[n²])-2`
-/

namespace A127988.P1556947875880028827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062880 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A127988.P1556947875880028827

namespace A127988

/-- `A062880(Δ[n²])-2` -/
def P1556947875880028827.Spec : Prop :=
  ∀ n, P1556947875880028827.a n = A127988 n

end A127988

/-! ## A127988.P99764798057833152

`4*A212591(2*n+1)`
-/

namespace A127988.P99764798057833152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A212591 (2 * n + 1)

end

end A127988.P99764798057833152

namespace A127988

/-- `4*A212591(2*n+1)` -/
def P99764798057833152.Spec : Prop :=
  ∀ n, P99764798057833152.a n = A127988 n

end A127988

/-! ## A127988.P14138831103045671024

`xor(5, A147568(2*n+1))`
-/

namespace A127988.P14138831103045671024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A147568 (2 * n + 1))

end

end A127988.P14138831103045671024

namespace A127988

/-- `xor(5, A147568(2*n+1))` -/
def P14138831103045671024.Spec : Prop :=
  ∀ n, P14138831103045671024.a n = A127988 n

end A127988

/-! ## A127988.P15328643724621886346

`floor(A145818(2*n+1)/2)`
-/

namespace A127988.P15328643724621886346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A145818 (2 * n + 1) : ℚ) / 2⌋

end

end A127988.P15328643724621886346

namespace A127988

/-- `floor(A145818(2*n+1)/2)` -/
def P15328643724621886346.Spec : Prop :=
  ∀ n, P15328643724621886346.a n = A127988 n

end A127988

/-! ## A127988.P11942081209451268799

`2*xor(2, A098871(2*n+1))`
-/

namespace A127988.P11942081209451268799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor 2 (A098871 (2 * n + 1))

end

end A127988.P11942081209451268799

namespace A127988

/-- `2*xor(2, A098871(2*n+1))` -/
def P11942081209451268799.Spec : Prop :=
  ∀ n, P11942081209451268799.a n = A127988 n

end A127988

/-! ## A127988.P17944657118949121346

`2*A126684(A004761(2*(n+1)))`
-/

namespace A127988.P17944657118949121346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126684 (A004761 (2 * (n + 1))).toNat

end

end A127988.P17944657118949121346

namespace A127988

/-- `2*A126684(A004761(2*(n+1)))` -/
def P17944657118949121346.Spec : Prop :=
  ∀ n, P17944657118949121346.a n = A127988 n

end A127988

/-! ## A127988.P12275997054122008030

`A212591(A016813(n))`
-/

namespace A127988.P12275997054122008030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212591 (A016813 n).toNat

end

end A127988.P12275997054122008030

namespace A127988

/-- `A212591(A016813(n))` -/
def P12275997054122008030.Spec : Prop :=
  ∀ n, P12275997054122008030.a n = A127988 n

end A127988

/-!
# A127989: a(n) = 2*n^3 - 2*n + 9.

The programs for A127989, the canonical program `A127989.P12267523835273959452` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127989 has offset 1).

The definition of A127989 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)^3-2*(n+1)+9` (program `A127989.P12267523835273959452`, by `A127989.P12267523835273959452.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127989.P5729596932007486521

`2*n*(n+1)*(n+2)+9`
-/

namespace A127989.P5729596932007486521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * (n + 1) * (n + 2) + 9

end

end A127989.P5729596932007486521

namespace A127989

/-- `2*n*(n+1)*(n+2)+9` -/
def P5729596932007486521.Spec : Prop :=
  ∀ n, (P5729596932007486521.a n : ℤ) = A127989 (n + 1)

theorem P5729596932007486521.correct : P5729596932007486521.Spec := by
  intro n
  simp only [A127989, Nat.add_sub_cancel, A127989.P5729596932007486521.a, A127989.P12267523835273959452.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A127989

/-! ## A127989.P12267523835273959452

`2*(n+1)^3-2*(n+1)+9`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A127989

/-- `2*(n+1)^3-2*(n+1)+9` -/
def P12267523835273959452.Spec : Prop :=
  ∀ n, P12267523835273959452.a n = A127989 (n + 1)

theorem P12267523835273959452.correct : P12267523835273959452.Spec := by
  intro n
  simp only [A127989, Nat.add_sub_cancel]

end A127989

/-! ## A127989.P14868919222851796078

`3*(2*A007290(n+2)+3)`
-/

namespace A127989.P14868919222851796078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (2 * A007290 (n + 2) + 3)

end

end A127989.P14868919222851796078

namespace A127989

/-- `3*(2*A007290(n+2)+3)` -/
def P14868919222851796078.Spec : Prop :=
  ∀ n, P14868919222851796078.a n = A127989 (n + 1)

end A127989

/-! ## A127989.P9442921695451535285

`3*(4*C(n+2, 3)+3)`
-/

namespace A127989.P9442921695451535285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (4 * Nat.choose (n + 2) 3 + 3)

end

end A127989.P9442921695451535285

namespace A127989

/-- `3*(4*C(n+2, 3)+3)` -/
def P9442921695451535285.Spec : Prop :=
  ∀ n, (P9442921695451535285.a n : ℤ) = A127989 (n + 1)

end A127989

/-! ## A127989.P15550060024529403004

`3*(3-∑[∑[a(n-1)-4]])` with `a(0)=0`
-/

namespace A127989.P15550060024529403004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (3 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127989.P15550060024529403004

namespace A127989

/-- `3*(3-∑[∑[a(n-1)-4]])` -/
def P15550060024529403004.Spec : Prop :=
  ∀ n, P15550060024529403004.a n = A127989 (n + 1)

end A127989

/-! ## A127989.P4237616021588271221

`3*or(3, ∑[∑[ogf(4x/(1-2x+x^2))]])`
-/

namespace A127989.P4237616021588271221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.lor 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127989.P4237616021588271221

namespace A127989

/-- `3*or(3, ∑[∑[ogf(4x/(1-2x+x^2))]])` -/
def P4237616021588271221.Spec : Prop :=
  ∀ n, P4237616021588271221.a n = A127989 (n + 1)

end A127989

/-! ## A127989.P4747609175965621859

`3*xor(3, ∑[∑[ogf(4x/(1-2x+x^2))]])`
-/

namespace A127989.P4747609175965621859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.xor 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127989.P4747609175965621859

namespace A127989

/-- `3*xor(3, ∑[∑[ogf(4x/(1-2x+x^2))]])` -/
def P4747609175965621859.Spec : Prop :=
  ∀ n, P4747609175965621859.a n = A127989 (n + 1)

end A127989

/-! ## A127989.P4584968339745074522

`3*(A210440(n)+3)`
-/

namespace A127989.P4584968339745074522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A210440 n + 3)

end

end A127989.P4584968339745074522

namespace A127989

/-- `3*(A210440(n)+3)` -/
def P4584968339745074522.Spec : Prop :=
  ∀ n, P4584968339745074522.a n = A127989 (n + 1)

end A127989

/-! ## A127989.P7161543594806136408

`3*xor(3, ∑[A046092(n)])`
-/

namespace A127989.P7161543594806136408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.xor 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127989.P7161543594806136408

namespace A127989

/-- `3*xor(3, ∑[A046092(n)])` -/
def P7161543594806136408.Spec : Prop :=
  ∀ n, P7161543594806136408.a n = A127989 (n + 1)

end A127989

/-! ## A127989.P13640163039905336035

`3*(4*A000292(n)+3)`
-/

namespace A127989.P13640163039905336035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (4 * A000292 n + 3)

end

end A127989.P13640163039905336035

namespace A127989

/-- `3*(4*A000292(n)+3)` -/
def P13640163039905336035.Spec : Prop :=
  ∀ n, P13640163039905336035.a n = A127989 (n + 1)

end A127989

/-! ## A127989.P9410050100572317585

`3*(A179903(n+1)-n)`
-/

namespace A127989.P9410050100572317585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A179903 (n + 1) - (n : ℤ))

end

end A127989.P9410050100572317585

namespace A127989

/-- `3*(A179903(n+1)-n)` -/
def P9410050100572317585.Spec : Prop :=
  ∀ n, P9410050100572317585.a n = A127989 (n + 1)

end A127989

/-! ## A127989.P1936202546788456956

`3*(A005900(n+1)-(n-2))`
-/

namespace A127989.P1936202546788456956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A005900 (n + 1) - ((n : ℤ) - 2))

end

end A127989.P1936202546788456956

namespace A127989

/-- `3*(A005900(n+1)-(n-2))` -/
def P1936202546788456956.Spec : Prop :=
  ∀ n, P1936202546788456956.a n = A127989 (n + 1)

end A127989

/-!
# A127990: Largest prime factor of 2*n^3 - 2*n + 9.

The programs for A127990, the canonical program `A127990.P3314703042255939171` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127990 has offset 1).

The definition of A127990 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A127990.P3314703042255939171

`A006530(A127989(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A127990

/-- `A006530(A127989(n+1))` -/
def P3314703042255939171.Spec : Prop :=
  ∀ n, P3314703042255939171.a n = A127990 (n + 1)

theorem P3314703042255939171.correct : P3314703042255939171.Spec := by
  intro n
  simp only [A127990, Nat.add_sub_cancel]

end A127990

/-! ## A127990.P14762501464199865053

`(A210440(n)+3)/A127991(n+1)`
-/

namespace A127990.P14762501464199865053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210440 n + 3 : ℚ) / (A127991 (n + 1) : ℚ)

end

end A127990.P14762501464199865053

namespace A127990

/-- `(A210440(n)+3)/A127991(n+1)` -/
def P14762501464199865053.Spec : Prop :=
  ∀ n, P14762501464199865053.a n = (A127990 (n + 1) : ℚ)

end A127990

/-! ## A127990.P8204580306853583669

`A127989(n+1)/(3*A127991(n+1))`
-/

namespace A127990.P8204580306853583669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127989 (n + 1) : ℚ) / (3 * A127991 (n + 1) : ℚ)

end

end A127990.P8204580306853583669

namespace A127990

/-- `A127989(n+1)/(3*A127991(n+1))` -/
def P8204580306853583669.Spec : Prop :=
  ∀ n, P8204580306853583669.a n = (A127990 (n + 1) : ℚ)

end A127990

/-! ## A127990.P7521840823558814403

`A127989(n+1)/A008486(A127991(n+1))`
-/

namespace A127990.P7521840823558814403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127989 (n + 1) : ℚ) / (A008486 (A127991 (n + 1)).toNat : ℚ)

end

end A127990.P7521840823558814403

namespace A127990

/-- `A127989(n+1)/A008486(A127991(n+1))` -/
def P7521840823558814403.Spec : Prop :=
  ∀ n, P7521840823558814403.a n = (A127990 (n + 1) : ℚ)

end A127990

/-! ## A127990.P15219545065646755343

`3*(4*A000292(n)+3)/A008486(A127991(n+1))`
-/

namespace A127990.P15219545065646755343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * (4 * A000292 n + 3) : ℚ) / (A008486 (A127991 (n + 1)).toNat : ℚ)

end

end A127990.P15219545065646755343

namespace A127990

/-- `3*(4*A000292(n)+3)/A008486(A127991(n+1))` -/
def P15219545065646755343.Spec : Prop :=
  ∀ n, P15219545065646755343.a n = (A127990 (n + 1) : ℚ)

end A127990

/-! ## A127990.P17807977672714109386

`3*(A179903(n+1)-n)/A008486(A127991(n+1))`
-/

namespace A127990.P17807977672714109386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * (A179903 (n + 1) - (n : ℤ)) : ℚ) / (A008486 (A127991 (n + 1)).toNat : ℚ)

end

end A127990.P17807977672714109386

namespace A127990

/-- `3*(A179903(n+1)-n)/A008486(A127991(n+1))` -/
def P17807977672714109386.Spec : Prop :=
  ∀ n, P17807977672714109386.a n = (A127990 (n + 1) : ℚ)

end A127990

/-! ## A127990.P2797168919746289346

`A006530(∑[∑[4*n]]+3)`
-/

namespace A127990.P2797168919746289346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A127990.P2797168919746289346

namespace A127990

/-- `A006530(∑[∑[4*n]]+3)` -/
def P2797168919746289346.Spec : Prop :=
  ∀ n, P2797168919746289346.a n = A127990 (n + 1)

end A127990

/-! ## A127990.P15063733059881279923

`or(1, A006530(A210440(n)+3))`
-/

namespace A127990.P15063733059881279923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (A210440 n + 3).toNat)

end

end A127990.P15063733059881279923

namespace A127990

/-- `or(1, A006530(A210440(n)+3))` -/
def P15063733059881279923.Spec : Prop :=
  ∀ n, P15063733059881279923.a n = A127990 (n + 1)

end A127990

/-! ## A127990.P1795385943256599501

`A006530(A210440(n)+3)%A063417(n)`
-/

namespace A127990.P1795385943256599501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A210440 n + 3).toNat) (A063417 n)

end

end A127990.P1795385943256599501

namespace A127990

/-- `A006530(A210440(n)+3)%A063417(n)` -/
def P1795385943256599501.Spec : Prop :=
  ∀ n, P1795385943256599501.a n = A127990 (n + 1)

end A127990

/-!
# A127991: 2*n^3 - 2*n + 9 divided by 3*largest prime factor.

The programs for A127991, the canonical program `A127991.P1404809648545136444` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127991 has offset 1).

The definition of A127991 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A127991.P1404809648545136444

`A127989(n+1)/(3*A006530(A127989(n+1)))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A127991

/-- `A127989(n+1)/(3*A006530(A127989(n+1)))` -/
def P1404809648545136444.Spec : Prop :=
  ∀ n, P1404809648545136444.a n = (A127991 (n + 1) : ℚ)

end A127991

/-! ## A127991.P11300117568272674253

`ceil(2/A127990(n+1)*A064999(n))`
-/

namespace A127991.P11300117568272674253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A127990 (n + 1) : ℚ) * (A064999 n : ℚ)⌉

end

end A127991.P11300117568272674253

namespace A127991

/-- `ceil(2/A127990(n+1)*A064999(n))` -/
def P11300117568272674253.Spec : Prop :=
  ∀ n, P11300117568272674253.a n = A127991 (n + 1)

end A127991

/-! ## A127991.P4642689618516603088

`A127989(n+1)/(3*A127990(n+1))`
-/

namespace A127991.P4642689618516603088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127989 (n + 1) : ℚ) / (3 * A127990 (n + 1) : ℚ)

end

end A127991.P4642689618516603088

namespace A127991

/-- `A127989(n+1)/(3*A127990(n+1))` -/
def P4642689618516603088.Spec : Prop :=
  ∀ n, P4642689618516603088.a n = (A127991 (n + 1) : ℚ)

end A127991

/-! ## A127991.P3373937169780330350

`(A027688(n)+A006331(n))/A127990(n+1)`
-/

namespace A127991.P3373937169780330350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027688 n + A006331 n : ℚ) / (A127990 (n + 1) : ℚ)

end

end A127991.P3373937169780330350

namespace A127991

/-- `(A027688(n)+A006331(n))/A127990(n+1)` -/
def P3373937169780330350.Spec : Prop :=
  ∀ n, P3373937169780330350.a n = (A127991 (n + 1) : ℚ)

end A127991

/-! ## A127991.P5161838038381023890

`A005408(floor(A064999(n)/A127990(n+1)))`
-/

namespace A127991.P5161838038381023890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 ⌊(A064999 n : ℚ) / (A127990 (n + 1) : ℚ)⌋.toNat

end

end A127991.P5161838038381023890

namespace A127991

/-- `A005408(floor(A064999(n)/A127990(n+1)))` -/
def P5161838038381023890.Spec : Prop :=
  ∀ n, P5161838038381023890.a n = A127991 (n + 1)

end A127991

/-! ## A127991.P11122900808813731673

`A002264((∑[∑[12*n]]+9)/A127990(n+1))`
-/

namespace A127991.P11122900808813731673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 9 : ℕ) : ℚ) / (A127990 (n + 1) : ℚ))).toNat

end

end A127991.P11122900808813731673

namespace A127991

/-- `A002264((∑[∑[12*n]]+9)/A127990(n+1))` -/
def P11122900808813731673.Spec : Prop :=
  ∀ n, P11122900808813731673.a n = A127991 (n + 1)

end A127991

/-! ## A127991.P6967022426333946525

`A032742(A127989(n+1)/A127990(n+1))`
-/

namespace A127991.P6967022426333946525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.roundAway ((A127989 (n + 1) : ℚ) / (A127990 (n + 1) : ℚ))).toNat

end

end A127991.P6967022426333946525

namespace A127991

/-- `A032742(A127989(n+1)/A127990(n+1))` -/
def P6967022426333946525.Spec : Prop :=
  ∀ n, P6967022426333946525.a n = A127991 (n + 1)

end A127991

/-!
# A127992: Number of distinct prime factors of 2*n^3 - 2*n + 9.

The programs for A127992, the canonical program `A127992.P16603493204352914741` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127992 has offset 1).

The definition of A127992 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A127992.P16603493204352914741

`A001221(A127989(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A127992

/-- `A001221(A127989(n+1))` -/
def P16603493204352914741.Spec : Prop :=
  ∀ n, P16603493204352914741.a n = A127992 (n + 1)

theorem P16603493204352914741.correct : P16603493204352914741.Spec := by
  intro n
  simp only [A127992, Nat.add_sub_cancel]

end A127992

/-! ## A127992.P7584025796195944638

`∑{e}[∑[∑[12*n]]+9, gcd(#, n^3+1-n)]`
-/

namespace A127992.P7584025796195944638
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.gcd (Nat.factorization (f1 n) p : ℤ) ((n ^ 3 : ℤ) + (1 - (n : ℤ)))

end

end A127992.P7584025796195944638

namespace A127992

/-- `∑{e}[∑[∑[12*n]]+9, gcd(#, n^3+1-n)]` -/
def P7584025796195944638.Spec : Prop :=
  ∀ n, (P7584025796195944638.a n : ℤ) = A127992 (n + 1)

end A127992

/-! ## A127992.P18251841953349153880

`∑{e}[∑[∑[12*n]]+9, A000003(#)]`
-/

namespace A127992.P18251841953349153880
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000003 (Nat.factorization (f1 n) p)

end

end A127992.P18251841953349153880

namespace A127992

/-- `∑{e}[∑[∑[12*n]]+9, A000003(#)]` -/
def P18251841953349153880.Spec : Prop :=
  ∀ n, P18251841953349153880.a n = A127992 (n + 1)

end A127992

/-! ## A127992.P11977935013120113652

`∑{e}[∑[∑[12*n]]+9, A000164(#)]`
-/

namespace A127992.P11977935013120113652
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000164 (Nat.factorization (f1 n) p)

end

end A127992.P11977935013120113652

namespace A127992

/-- `∑{e}[∑[∑[12*n]]+9, A000164(#)]` -/
def P11977935013120113652.Spec : Prop :=
  ∀ n, P11977935013120113652.a n = A127992 (n + 1)

end A127992

/-! ## A127992.P6833177676066700429

`∑{e}[∑[∑[12*n]]+9, A001263(#)]`
-/

namespace A127992.P6833177676066700429
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001263 (Nat.factorization (f1 n) p)

end

end A127992.P6833177676066700429

namespace A127992

/-- `∑{e}[∑[∑[12*n]]+9, A001263(#)]` -/
def P6833177676066700429.Spec : Prop :=
  ∀ n, P6833177676066700429.a n = A127992 (n + 1)

end A127992

/-! ## A127992.P7433526678885356552

`∑{e}[∑[∑[12*n]]+9, A006723(#)]`
-/

namespace A127992.P7433526678885356552
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A006723 (Nat.factorization (f1 n) p)

end

end A127992.P7433526678885356552

namespace A127992

/-- `∑{e}[∑[∑[12*n]]+9, A006723(#)]` -/
def P7433526678885356552.Spec : Prop :=
  ∀ n, P7433526678885356552.a n = A127992 (n + 1)

end A127992

/-! ## A127992.P12808632694280372154

`∑{e}[∑[∑[12*n]]+9, A034851(#)]`
-/

namespace A127992.P12808632694280372154
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A034851 (Nat.factorization (f1 n) p)

end

end A127992.P12808632694280372154

namespace A127992

/-- `∑{e}[∑[∑[12*n]]+9, A034851(#)]` -/
def P12808632694280372154.Spec : Prop :=
  ∀ n, P12808632694280372154.a n = A127992 (n + 1)

end A127992

/-! ## A127992.P8486995055972241791

`∑{e}[A127989(n+1), A006721(#)]`
-/

namespace A127992.P8486995055972241791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A006721 (Nat.factorization (f1 n).natAbs p)

end

end A127992.P8486995055972241791

namespace A127992

/-- `∑{e}[A127989(n+1), A006721(#)]` -/
def P8486995055972241791.Spec : Prop :=
  ∀ n, P8486995055972241791.a n = A127992 (n + 1)

end A127992

/-! ## A127992.P3293298895455976641

`∑{e}[A127989(n+1), A007318(#-1)]`
-/

namespace A127992.P3293298895455976641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007318 (Nat.factorization (f1 n).natAbs p - 1)

end

end A127992.P3293298895455976641

namespace A127992

/-- `∑{e}[A127989(n+1), A007318(#-1)]` -/
def P3293298895455976641.Spec : Prop :=
  ∀ n, P3293298895455976641.a n = A127992 (n + 1)

end A127992

/-! ## A127992.P10655458789173098275

`∑{e}[A127989(n+1), A000010(A000010(#))]`
-/

namespace A127992.P10655458789173098275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 (A000010 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A127992.P10655458789173098275

namespace A127992

/-- `∑{e}[A127989(n+1), A000010(A000010(#))]` -/
def P10655458789173098275.Spec : Prop :=
  ∀ n, P10655458789173098275.a n = A127992 (n + 1)

end A127992

/-!
# A127993: Minimum bowling score for a game with n strikes.

The programs for A127993, there is no canonical definition to state claims against.
-/

/-! ## A127993.P5233579347554484617

`lt[A275735(2*n+1), A040591(n)]`
-/

namespace A127993.P5233579347554484617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275735 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A127993.P5233579347554484617

/-! ## A127993.P5027687092106480304

`A008592(∪[6*n, A007496(n+1)])`
-/

namespace A127993.P5027687092106480304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007496 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A127993.P5027687092106480304

/-! ## A127993.P10096414126719847378

`A008592(∪[6*n, A029804(n+1)])`
-/

namespace A127993.P10096414126719847378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029804 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A127993.P10096414126719847378

/-! ## A127993.P11621270410508175536

`A008592(∪[A029804(n+1), A313729(n)+n])`
-/

namespace A127993.P11621270410508175536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313729 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A127993.P11621270410508175536

/-!
# A127996: Numbers k such that (21^k - 1)/20 is prime.

The programs for A127996, there is no canonical definition to state claims against.
-/

/-! ## A127996.P3944891553134313027

`p?[comp[∑[n]]+xor(3, 2^n)-1]`
-/

namespace A127996.P3944891553134313027
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) + ((Nat.xor 3 (2 ^ n) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127996.P3944891553134313027

/-!
# A127997: Numbers n such that (22^n - 1)/21 is prime.

The programs for A127997, there is no canonical definition to state claims against.
-/

/-! ## A127997.P6956540325169810364

`p?[∑[A129978(A291934(n+1))]]`
-/

namespace A127997.P6956540325169810364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129978 (A291934 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127997.P6956540325169810364

/-!
# A127998: Numbers n such that (24^n - 1)/23 is prime.

The programs for A127998, there is no canonical definition to state claims against.
-/

/-! ## A127998.P13543574238423981954

`p?[∑[A240893(n+1)+A000523(n+1)]]`
-/

namespace A127998.P13543574238423981954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240893 (n + 1) + A000523 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127998.P13543574238423981954

